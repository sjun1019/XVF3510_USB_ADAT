// Copyright 2017-2022 XMOS LIMITED.
// This Software is subject to the terms of the XMOS Public Licence: Version 1.

#ifndef _XUA_CONF_H_
#define _XUA_CONF_H_


#define OUTPUT_VOLUME_CONTROL       (0)
#define INPUT_VOLUME_CONTROL        (0)

#define XUA_QUAD_SPI_FLASH          (1)

/*
 * Device configuration option defines to override default defines found in lib_xua/api/xua_conf_default.h
 *
 * Build can be customised but changing and adding defines here
 *
 * Note, we check if they are already defined in Makefile
 */


/* Enable/Disable S/PDIF input - Default is S/PDIF off */
#ifndef XUA_SPDIF_RX_EN
#define XUA_SPDIF_RX_EN    (0)
#endif

/* Enable/Disable ADAT output - Default is ADAT off */
#ifndef XUA_ADAT_TX_EN
#define XUA_ADAT_TX_EN     (1)
#endif

/* Enable/Disable ADAT input - Default is ADAT off */
#ifndef XUA_ADAT_RX_EN
#define XUA_ADAT_RX_EN     (1)
#endif

/* Audio Class version - Default is 2.0 */
#ifndef AUDIO_CLASS
#define AUDIO_CLASS        (2)
#endif

/*** Defines relating to channel counts ***/
/* Number of I2S channels to DACs*/
#ifndef I2S_CHANS_DAC
#define I2S_CHANS_DAC      (2)
#endif

/* Number of I2S channels from ADCs */
#ifndef I2S_CHANS_ADC
#define I2S_CHANS_ADC      (2)
#endif

/* Number of USB streaming channels - by default calculate by counting audio interfaces */
#ifndef NUM_USB_CHAN_IN
#define NUM_USB_CHAN_IN    (I2S_CHANS_ADC + 2*XUA_SPDIF_RX_EN + 8*XUA_ADAT_RX_EN)  /* Device to Host */
#endif

#ifndef NUM_USB_CHAN_OUT
#define NUM_USB_CHAN_OUT   (I2S_CHANS_DAC + 2*XUA_SPDIF_TX_EN + 8*XUA_ADAT_TX_EN)  /* Host to Device */
#endif

/*** Defines relating to channel arrangement/indices ***/
/* Channel index of S/PDIF Tx channels: separate channels after analogue channels (if they fit) */

/* Channel index of ADAT Tx channels: separate channels after S/PDIF channels (if they fit) */
#ifndef ADAT_TX_INDEX
    #define ADAT_TX_INDEX    (I2S_CHANS_DAC + 2*XUA_SPDIF_TX_EN)
#endif

/* Channel index of ADAT Rx channels: separate channels after S/PDIF channels */
#ifndef ADAT_RX_INDEX
#define ADAT_RX_INDEX      (I2S_CHANS_ADC + 2*XUA_SPDIF_RX_EN)
#endif

/*** Defines relating to audio frequencies ***/
/* Master clock defines (in Hz) */
#ifndef MCLK_441
#define MCLK_441           (512*44100)   /* 44.1, 88.2 etc */
#endif

#ifndef MCLK_48
#define MCLK_48            (512*48000)   /* 48, 96 etc */
#endif

/* Maximum frequency device runs at */
#ifndef MAX_FREQ
#define MAX_FREQ           (96000)
#endif

/*** Defines relating to feature placement regarding tiles ***/
#define AUDIO_IO_TILE      (0)
#define PLL_REF_TILE       (0)

#define XUD_TILE           (1)

/*** Defines relating to USB descriptor strings and ID's ***/
#define VENDOR_ID          (0x20B1) /* XMOS VID */
#define PID_AUDIO_2        (0x000E) 
#define PID_AUDIO_1        (0x000F) 
#define PRODUCT_STR_A2     "XVF3510 DDC ADAT/USB - I2S (UAC2.0)"
#define PRODUCT_STR_A1     "XVF3510 DDC ADAT/USB - I2S (UAC1.0)"

/* Board power source - Default is self-powered */
#ifndef XUA_POWERMODE
#define XUA_POWERMODE      XUA_POWERMODE_SELF
#endif

#endif