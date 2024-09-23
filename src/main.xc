// Copyright 2012-2024 XMOS LIMITED.
// This Software is subject to the terms of the XMOS Public Licence: Version 1.

#include "xua.h"                          /* Device specific defines */

/**
 * @file    main.xc
 * @brief   Top level for XMOS USB 2.0 Audio 2.0 Reference Designs.
 * @author  Ross Owen, XMOS Semiconductor Ltd
 */
#include <syscall.h>
#include <platform.h>
#include <xs1.h>
#include <xclib.h>
#include <print.h>
#ifdef XSCOPE
#include <xscope.h>
#endif

#if XUA_USB_EN
#include "xud_device.h"                 /* XMOS USB Device Layer defines and functions */
#include "xua_endpoint0.h"
#endif

#include "uac_hwresources.h"

#ifdef IAP
#include "i2c_shared.h"
#include "iap.h"
#endif

#if (XUA_ADAT_RX_EN)
#include "adat_rx.h"
#endif

#if (XUA_DFU_EN == 1)
[[distributable]]
void DFUHandler(server interface i_dfu i, chanend ?c_user_cmd);
#endif

/* Audio I/O - Port declarations */
#if I2S_WIRES_DAC > 0
on tile[AUDIO_IO_TILE] : buffered out port:32 p_i2s_dac[I2S_WIRES_DAC] =
                {PORT_I2S_DAC0,
#endif
#if I2S_WIRES_DAC > 1
                PORT_I2S_DAC1,
#endif
#if I2S_WIRES_DAC > 2
                PORT_I2S_DAC2,
#endif
#if I2S_WIRES_DAC > 3
                PORT_I2S_DAC3,
#endif
#if I2S_WIRES_DAC > 4
                PORT_I2S_DAC4,
#endif
#if I2S_WIRES_DAC > 5
                PORT_I2S_DAC5,
#endif
#if I2S_WIRES_DAC > 6
                PORT_I2S_DAC6,
#endif
#if I2S_WIRES_DAC > 7
#error I2S_WIRES_DAC value is too large!
#endif
#if I2S_WIRES_DAC > 0
                };
#else
    #define p_i2s_dac null
#endif

#if I2S_WIRES_ADC > 0
on tile[AUDIO_IO_TILE] : buffered in port:32 p_i2s_adc[I2S_WIRES_ADC] =
                {PORT_I2S_ADC0,
#endif
#if I2S_WIRES_ADC > 1
                PORT_I2S_ADC1,
#endif
#if I2S_WIRES_ADC > 2
                PORT_I2S_ADC2,
#endif
#if I2S_WIRES_ADC > 3
                PORT_I2S_ADC3,
#endif
#if I2S_WIRES_ADC > 4
                PORT_I2S_ADC4,
#endif
#if I2S_WIRES_ADC > 5
                PORT_I2S_ADC5,
#endif
#if I2S_WIRES_ADC > 6
                PORT_I2S_ADC6,
#endif
#if I2S_WIRES_ADC > 7
#error I2S_WIRES_ADC value is too large!
#endif
#if I2S_WIRES_ADC > 0
                };
#else
    #define p_i2s_adc null
#endif


on tile[AUDIO_IO_TILE] : buffered out port:32 p_lrclk       = PORT_I2S_LRCLK;
on tile[AUDIO_IO_TILE] : buffered out port:32 p_bclk        = PORT_I2S_BCLK;

#if(!ClockMaster)
    on tile[AUDIO_IO_TILE] :  in port p_mclk_in                 = PORT_MCLK_IN;
#else
    on tile[AUDIO_IO_TILE] :  out port p_mclk_in                 = PORT_MCLK_IN;
#endif

#if XUA_USB_EN
on tile[XUD_TILE] : in port p_for_mclk_count                = PORT_MCLK_COUNT;
#endif

#if (XUA_ADAT_TX_EN)
on stdcore[AUDIO_IO_TILE] : buffered out port:32 p_adat_tx  = PORT_ADAT_OUT;
#endif

#if (XUA_ADAT_RX_EN)
on stdcore[XUD_TILE] : buffered in port:32 p_adat_rx        = PORT_ADAT_IN;
#endif

#if (XUA_SPDIF_RX_EN) || (XUA_ADAT_RX_EN) || (XUA_SYNCMODE == XUA_SYNCMODE_SYNC)
/* Reference to external clock multiplier */
on tile[PLL_REF_TILE] : out port p_pll_ref                  = PORT_PLL_REF;
#ifdef __XS3A__
on tile[AUDIO_IO_TILE] : port p_for_mclk_count_audio        = PORT_MCLK_COUNT_2;
#else /* __XS3A__ */
#define p_for_mclk_count_audio                              null
#endif /* __XS3A__ */
#endif


/*** Clock blocks ***/
#if (XUA_SPDIF_TX_EN || XUA_ADAT_TX_EN)
on tile[SPDIF_TX_TILE] : clock    clk_mst_spd               = CLKBLK_SPDIF_TX;
#endif

#if (XUA_SPDIF_RX_EN)
on tile[XUD_TILE] : clock    clk_spd_rx                     = CLKBLK_SPDIF_RX;
#endif

on tile[AUDIO_IO_TILE] : clock clk_audio_mclk               = CLKBLK_MCLK;       /* Master clock */

#if(AUDIO_IO_TILE != XUD_TILE) && XUA_USB_EN
/* Separate clock/port for USB feedback calculation */
on tile[XUD_TILE] : clock clk_audio_mclk_usb                = CLKBLK_MCLK;       /* Master clock */
on tile[XUD_TILE] : in port p_mclk_in_usb                   = PORT_MCLK_IN_USB;
#endif
// 
on tile[AUDIO_IO_TILE] : clock clk_audio_bclk               = CLKBLK_I2S_BIT;    /* Bit clock */


#if XUA_USB_EN
/* Endpoint type tables for XUD */
XUD_EpType epTypeTableOut[ENDPOINT_COUNT_OUT] = { XUD_EPTYPE_CTL | XUD_STATUS_ENABLE,
                                            XUD_EPTYPE_ISO,    /* Audio */
#ifdef MIDI
                                            XUD_EPTYPE_BUL,    /* MIDI */
#endif
#if HID_OUT_REQUIRED
                                            XUD_EPTYPE_INT,
#endif
#ifdef IAP
                                            XUD_EPTYPE_BUL,    /* iAP */
#ifdef IAP_EA_NATIVE_TRANS
                                            XUD_EPTYPE_BUL,    /* EA Native Transport */
#endif
#endif
                                        };

XUD_EpType epTypeTableIn[ENDPOINT_COUNT_IN] = { XUD_EPTYPE_CTL | XUD_STATUS_ENABLE,
                                            XUD_EPTYPE_ISO,

#if (NUM_USB_CHAN_IN == 0) || defined(UAC_FORCE_FEEDBACK_EP)
                                            XUD_EPTYPE_ISO,    /* Async feedback endpoint */
#endif
#if (XUA_SPDIF_RX_EN || XUA_ADAT_RX_EN)
                                            XUD_EPTYPE_INT,
#endif
#ifdef MIDI
                                            XUD_EPTYPE_BUL,
#endif
#if XUA_OR_STATIC_HID_ENABLED
                                            XUD_EPTYPE_INT,
#endif
#ifdef IAP
                                            XUD_EPTYPE_BUL | XUD_STATUS_ENABLE,
#ifdef IAP_INT_EP
                                            XUD_EPTYPE_BUL | XUD_STATUS_ENABLE,
#endif
#ifdef IAP_EA_NATIVE_TRANS
                                            XUD_EPTYPE_BUL | XUD_STATUS_ENABLE,
#endif
#endif
                                        };
#endif /* XUA_USB_EN */

void thread_speed()
{
#ifdef FAST_MODE
#warning Building with fast mode enabled
    set_thread_fast_mode_on();
#else
    set_thread_fast_mode_off();
#endif
}

#ifdef XSCOPE
void xscope_user_init()
{
    xscope_register(0, 0, "", 0, "");

    xscope_config_io(XSCOPE_IO_BASIC);
}
#endif

#if (XUA_SPDIF_TX_EN) && (SPDIF_TX_TILE != AUDIO_IO_TILE)
void SpdifTxWrapper(chanend c_spdif_tx)
{
    unsigned portId;
    //configure_clock_src(clk, p_mclk);

    // TODO could share clock block here..
    // NOTE, Assuming SPDIF tile == USB tile here..
    asm("ldw %0, dp[p_mclk_in_usb]":"=r"(portId));
    asm("setclk res[%0], %1"::"r"(clk_mst_spd), "r"(portId));
    configure_out_port_no_ready(p_spdif_tx, clk_mst_spd, 0);
    set_clock_fall_delay(clk_mst_spd, 7);
    start_clock(clk_mst_spd);

    while(1)
    {
        spdif_tx(p_spdif_tx, c_spdif_tx);
    }
}
#endif

void usb_audio_io(chanend ?c_aud_in,
#if (XUA_SPDIF_TX_EN) && (SPDIF_TX_TILE != AUDIO_IO_TILE)
    chanend c_spdif_tx,
#endif
#if (MIXER)
    chanend c_mix_ctl,
#endif
    streaming chanend ?c_spdif_rx,
    chanend ?c_adat_rx,
    chanend ?c_clk_ctl,
    chanend ?c_clk_int
#if (XUD_TILE != 0)  && (AUDIO_IO_TILE == 0) && (XUA_DFU_EN == 1)
    , server interface i_dfu ?dfuInterface
#endif
#if (XUA_NUM_PDM_MICS > 0)
#if (PDM_TILE == AUDIO_IO_TILE)
    , streaming chanend c_ds_output[2]
#endif
    , chanend c_pdm_pcm
#endif
#if (XUA_SPDIF_RX_EN || XUA_ADAT_RX_EN)
    , client interface pll_ref_if i_pll_ref
#endif
#if (XUA_SYNCMODE == XUA_SYNCMODE_SYNC)
    , chanend c_audio_rate_change
#endif
#if ((XUA_SPDIF_RX_EN || XUA_ADAT_RX_EN) && XUA_USE_SW_PLL)
    , port p_for_mclk_count_aud
    , chanend c_sw_pll
#endif
)
{
#if (XUA_SPDIF_RX_EN || XUA_ADAT_RX_EN)
    chan c_dig_rx;
    chan c_audio_rate_change; /* Notification of new mclk freq to clockgen and synch */
#if XUA_USE_SW_PLL
    /* Connect p_for_mclk_count_aud to clk_audio_mclk so we can count mclks/timestamp in digital rx*/
    unsigned x = 0;
    asm("ldw %0, dp[clk_audio_mclk]":"=r"(x));
    asm("setclk res[%0], %1"::"r"(p_for_mclk_count_aud), "r"(x));
#endif /* XUA_USE_SW_PLL */
#endif /* (XUA_SPDIF_RX_EN || XUA_ADAT_RX_EN) */

    par
    {
        #if (XUA_SPDIF_TX_EN) && (SPDIF_TX_TILE == AUDIO_IO_TILE)
        while(1)
        {
            spdif_tx(p_spdif_tx, c_spdif_tx);
        }
    #endif

        /* Audio I/O core (pars additional S/PDIF TX Core) */
        {
            thread_speed();
#define AUDIO_CHANNEL c_aud_in

            XUA_AudioHub(AUDIO_CHANNEL, clk_audio_mclk, clk_audio_bclk, p_mclk_in, p_lrclk, p_bclk, p_i2s_dac, p_i2s_adc
#if (XUA_SPDIF_TX_EN) //&& (SPDIF_TX_TILE != AUDIO_IO_TILE)
                , c_spdif_tx
#endif
#if (XUA_SPDIF_RX_EN || XUA_ADAT_RX_EN)
                , c_dig_rx
#endif
#if (XUA_SYNCMODE == XUA_SYNCMODE_SYNC || XUA_SPDIF_RX_EN || XUA_ADAT_RX_EN)
                , c_audio_rate_change
#endif
#if (XUD_TILE != 0) && (AUDIO_IO_TILE == 0) && (XUA_DFU_EN == 1)
                , dfuInterface
#endif
#if (XUA_NUM_PDM_MICS > 0)
                , c_pdm_pcm
#endif
            );
        }

#if (XUA_SPDIF_RX_EN || XUA_ADAT_RX_EN)
        {
            /* ClockGen must currently run on same tile as AudioHub due to shared memory buffer
             * However, due to the use of an interface the pll reference signal port can be on another tile
             */
            thread_speed();
            clockGen(   c_spdif_rx,
                        c_adat_rx,
                        i_pll_ref,
                        c_dig_rx,
                        c_clk_ctl,
                        c_clk_int,
                        c_audio_rate_change
#if XUA_USE_SW_PLL
                        , p_for_mclk_count_aud
                        , c_sw_pll
#endif
                        );
        }
#endif

    } // par
}

#ifndef USER_MAIN_DECLARATIONS
#define USER_MAIN_DECLARATIONS
#endif

#ifndef USER_MAIN_CORES
#define USER_MAIN_CORES
#endif



/* Main for USB Audio Applications */
int main()
{
#if !XUA_USB_EN
    #define c_mix_out null
#else
    chan c_mix_out;
#endif

#ifdef MIDI
    chan c_midi;
#endif
#ifdef IAP
    chan c_iap;
#ifdef IAP_EA_NATIVE_TRANS
    chan c_ea_data;
#endif
#endif

#if (MIXER)
    chan c_mix_ctl;
#endif

#if (XUA_SPDIF_RX_EN)
    streaming chan c_spdif_rx;
#else
#define c_spdif_rx null
#endif

#if (XUA_ADAT_RX_EN)
    chan c_adat_rx;
#else
#define c_adat_rx null
#endif

#if (XUA_SPDIF_TX_EN) && (SPDIF_TX_TILE != AUDIO_IO_TILE)
    chan c_spdif_tx;
#endif

#if (XUA_SPDIF_RX_EN || XUA_ADAT_RX_EN)
    chan c_clk_ctl;
    chan c_clk_int;
#else
#define c_clk_int null
#define c_clk_ctl null
#endif

#if (XUA_DFU_EN == 1)
    interface i_dfu dfuInterface;
#else
    #define dfuInterface null
#endif

#if (XUA_NUM_PDM_MICS > 0)
    chan c_pdm_pcm;
    streaming chan c_ds_output[2];
#ifdef MIC_PROCESSING_USE_INTERFACE
    interface mic_process_if i_mic_process;
#endif
#endif

#if (((XUA_SYNCMODE == XUA_SYNCMODE_SYNC && !XUA_USE_SW_PLL) || XUA_SPDIF_RX_EN || XUA_ADAT_RX_EN) )
    interface pll_ref_if i_pll_ref;
#endif

#if ((XUA_SYNCMODE == XUA_SYNCMODE_SYNC || XUA_SPDIF_RX_EN || XUA_ADAT_RX_EN) && XUA_USE_SW_PLL)
    chan c_sw_pll;
#endif
#if (XUA_SYNCMODE == XUA_SYNCMODE_SYNC)
    chan c_audio_rate_change; /* Notification of new mclk freq to ep_buffer */
#endif
    chan c_sof;
    chan c_xud_out[ENDPOINT_COUNT_OUT];              /* Endpoint channels for XUD */
    chan c_xud_in[ENDPOINT_COUNT_IN];
    chan c_aud_ctl;

#if (!MIXER)
#define c_mix_ctl null
#endif

#ifdef IAP_EA_NATIVE_TRANS
    chan c_EANativeTransport_ctrl;
#else
#define c_EANativeTransport_ctrl null
#endif

    USER_MAIN_DECLARATIONS

    par
    {
        USER_MAIN_CORES

#if (((XUA_SYNCMODE == XUA_SYNCMODE_SYNC  && !XUA_USE_SW_PLL) || XUA_SPDIF_RX_EN || XUA_ADAT_RX_EN))
        on tile[PLL_REF_TILE]: PllRefPinTask(i_pll_ref, p_pll_ref);
#endif
        on tile[XUD_TILE]:
        par
        {
#if XUA_USB_EN
#if ((XUD_TILE == 0) && (XUA_DFU_EN == 1))
            /* Check if USB is on the flash tile (tile 0) */
            [[distribute]]
            DFUHandler(dfuInterface, null);
#endif

            /* Core USB task, buffering, USB etc */
            {
#ifdef XUD_PRIORITY_HIGH
                set_core_high_priority_on();
#endif

                /* Run UAC2.0 at high-speed, UAC1.0 at full-speed */
                unsigned usbSpeed = (AUDIO_CLASS == 2) ? XUD_SPEED_HS : XUD_SPEED_FS;

                unsigned xudPwrCfg = (XUA_POWERMODE == XUA_POWERMODE_SELF) ? XUD_PWR_SELF : XUD_PWR_BUS;

                /* USB interface core */
                XUD_Main(c_xud_out, ENDPOINT_COUNT_OUT, c_xud_in, ENDPOINT_COUNT_IN,
                         c_sof, epTypeTableOut, epTypeTableIn, usbSpeed, xudPwrCfg);
            }

            /* Core USB audio task, buffering, USB etc */
            {
                unsigned x;
                thread_speed();

                /* Attach mclk count port to mclk clock-block (for feedback) */
                //set_port_clock(p_for_mclk_count, clk_audio_mclk);
#if(AUDIO_IO_TILE != XUD_TILE)
                set_clock_src(clk_audio_mclk_usb, p_mclk_in_usb);
                set_port_clock(p_for_mclk_count, clk_audio_mclk_usb);
                start_clock(clk_audio_mclk_usb);
#else
                /* Clock port from same clock-block as I2S */
                /* TODO remove asm() */
                // asm("ldw %0, dp[clk_audio_mclk]":"=r"(x));
                // asm("setclk res[%0], %1"::"r"(p_for_mclk_count), "r"(x));
#endif
                /* Endpoint & audio buffering cores */
                XUA_Buffer(c_xud_out[ENDPOINT_NUMBER_OUT_AUDIO],/* Audio Out*/
#if (NUM_USB_CHAN_IN > 0)

                           c_xud_in[ENDPOINT_NUMBER_IN_AUDIO],         /* Audio In */
#endif
#if (NUM_USB_CHAN_IN == 0) || defined(UAC_FORCE_FEEDBACK_EP)
                           c_xud_in[ENDPOINT_NUMBER_IN_FEEDBACK],      /* Audio FB */
#endif
#ifdef MIDI
                           c_xud_out[ENDPOINT_NUMBER_OUT_MIDI],        /* MIDI Out */ // 2
                           c_xud_in[ENDPOINT_NUMBER_IN_MIDI],          /* MIDI In */  // 4
                           c_midi,
#endif
#if (XUA_SPDIF_RX_EN || XUA_ADAT_RX_EN)
                           /* Audio Interrupt - only used for interrupts on external clock change */
                           c_xud_in[ENDPOINT_NUMBER_IN_INTERRUPT],
                           c_clk_int,
#endif
                           c_sof, c_aud_ctl, p_for_mclk_count
#if (XUA_HID_ENABLED)
                           , c_xud_in[ENDPOINT_NUMBER_IN_HID]
#endif
                           , c_mix_out
#if (XUA_SYNCMODE == XUA_SYNCMODE_SYNC)
                           , c_audio_rate_change
    #if (!XUA_USE_SW_PLL)
                           , i_pll_ref
    #else
                           , c_sw_pll
    #endif
#endif
                    );
                //:
            }

            /* Endpoint 0 Core */
            {
                thread_speed();
                XUA_Endpoint0( c_xud_out[0], c_xud_in[0], c_aud_ctl, c_mix_ctl, c_clk_ctl, c_EANativeTransport_ctrl, dfuInterface VENDOR_REQUESTS_PARAMS_);
            }
#endif /* XUA_USB_EN */
        }

#if ((XUA_SYNCMODE == XUA_SYNCMODE_SYNC || XUA_SPDIF_RX_EN || XUA_ADAT_RX_EN) && XUA_USE_SW_PLL)
        on tile[AUDIO_IO_TILE]: sw_pll_task(c_sw_pll);
#endif

        on tile[AUDIO_IO_TILE]:
        {

            /* Audio I/O task, includes mixing etc */
            usb_audio_io(c_mix_out
#if (XUA_SPDIF_TX_EN) && (SPDIF_TX_TILE != AUDIO_IO_TILE)
                , c_spdif_tx
#endif
                , c_spdif_rx, c_adat_rx, c_clk_ctl, c_clk_int
#if (XUD_TILE != 0) && (AUDIO_IO_TILE == 0) && (XUA_DFU_EN == 1)
                , dfuInterface
#endif

#if (XUA_SPDIF_RX_EN || XUA_ADAT_RX_EN)
                , i_pll_ref
#endif
#if (XUA_SYNCMODE == XUA_SYNCMODE_SYNC)
                , c_audio_rate_change
#endif
#if ((XUA_SPDIF_RX_EN || XUA_ADAT_RX_EN) && XUA_USE_SW_PLL)
                , p_for_mclk_count_audio
                , c_sw_pll
#endif
            );
        }
        //:
#if (XUA_SPDIF_TX_EN) && (SPDIF_TX_TILE != AUDIO_IO_TILE)
        on tile[SPDIF_TX_TILE]:
        {
            thread_speed();
            SpdifTxWrapper(c_spdif_tx);
        }
#endif

#if (XUA_ADAT_RX_EN)
        on stdcore[XUD_TILE] :
        {
            set_thread_fast_mode_on();

            while (1)
            {
				adatReceiver48000(p_adat_rx, c_adat_rx);
				adatReceiver44100(p_adat_rx, c_adat_rx);
			}
        }
#endif


#if XUA_USB_EN
#if (XUD_TILE != 0 ) && (AUDIO_IO_TILE != 0) && (XUA_DFU_EN == 1)
        /* Run flash code on its own - hope it gets combined */
        //#warning Running DFU flash code on its own
        on stdcore[0]: DFUHandler(dfuInterface, null);
        on stdcore[1]: DFUHandler(dfuInterface, null);
#endif
#endif

    }

    return 0;
}