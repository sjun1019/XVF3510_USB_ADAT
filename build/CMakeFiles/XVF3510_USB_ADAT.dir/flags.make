# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# compile ASM with /Users/lsj/XMOS_XTC_15.3.0/bin/xcc
# compile C with /Users/lsj/XMOS_XTC_15.3.0/bin/xcc
ASM_DEFINES = 

ASM_INCLUDES = -I/Users/lsj/XMOS_XTC_15.3.0/lib_adat/lib_adat/api -I/Users/lsj/XMOS_XTC_15.3.0/lib_locks/lib_locks/api -I/Users/lsj/XMOS_XTC_15.3.0/lib_logging/lib_logging/api -I/Users/lsj/XMOS_XTC_15.3.0/lib_xassert/lib_xassert/api -I/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/api -I/Users/lsj/XMOS_XTC_15.3.0/lib_mic_array/lib_mic_array/api -I/Users/lsj/XMOS_XTC_15.3.0/lib_mic_array/lib_mic_array/src/fir -I/Users/lsj/XMOS_XTC_15.3.0/lib_spdif/lib_spdif/api -I/Users/lsj/XMOS_XTC_15.3.0/lib_sw_pll/lib_sw_pll/api -I/Users/lsj/XMOS_XTC_15.3.0/lib_sw_pll/lib_sw_pll/src -I/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/api -I/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/src/user -I/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/api/legacy -I/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/src/core -I/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/src/user/class -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/api -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/audiohub -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/buffer/ep -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/endpoint0 -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/dfu -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/buffer/decouple -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/clocking -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/mixer -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/pdm_mics -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/ports -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/support -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/user -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/user/audiostream -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/user/audiohw -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/user/hid -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/user/hostactive -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/hid -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/midi

ASM_FLAGS = -O -report -lquadflash -DADAT_TX_USE_SHARED_BUFF=1 -Wno-unused-function -DXUD_CORE_CLOCK=500 -DUSB_TILE=tile[1] -DREF_CLK_FREQ=100 -target=XVF3510_DDC /Users/lsj/XMOS_XTC_15.3.0/project/XVF3510_USB_ADAT/bin/xscope.xscope -D__xua_conf_h_exists__ -D__mic_array_conf_h_exists__

C_DEFINES = 

C_INCLUDES = -I/Users/lsj/XMOS_XTC_15.3.0/lib_adat/lib_adat/api -I/Users/lsj/XMOS_XTC_15.3.0/lib_locks/lib_locks/api -I/Users/lsj/XMOS_XTC_15.3.0/lib_logging/lib_logging/api -I/Users/lsj/XMOS_XTC_15.3.0/lib_xassert/lib_xassert/api -I/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/api -I/Users/lsj/XMOS_XTC_15.3.0/lib_mic_array/lib_mic_array/api -I/Users/lsj/XMOS_XTC_15.3.0/lib_mic_array/lib_mic_array/src/fir -I/Users/lsj/XMOS_XTC_15.3.0/lib_spdif/lib_spdif/api -I/Users/lsj/XMOS_XTC_15.3.0/lib_sw_pll/lib_sw_pll/api -I/Users/lsj/XMOS_XTC_15.3.0/lib_sw_pll/lib_sw_pll/src -I/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/api -I/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/src/user -I/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/api/legacy -I/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/src/core -I/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/src/user/class -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/api -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/audiohub -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/buffer/ep -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/endpoint0 -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/dfu -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/buffer/decouple -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/clocking -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/mixer -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/pdm_mics -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/ports -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/support -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/user -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/user/audiostream -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/user/audiohw -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/user/hid -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/user/hostactive -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/hid -I/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/midi

C_FLAGS = -g -O -report -lquadflash -DADAT_TX_USE_SHARED_BUFF=1 -Wno-unused-function -DXUD_CORE_CLOCK=500 -DUSB_TILE=tile[1] -DREF_CLK_FREQ=100 -target=XVF3510_DDC /Users/lsj/XMOS_XTC_15.3.0/project/XVF3510_USB_ADAT/bin/xscope.xscope -D__xua_conf_h_exists__ -D__mic_array_conf_h_exists__

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_adat/lib_adat/src/adat_lookups.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_adat/lib_adat/src/adat_rx.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_adat/lib_adat/src/adat_tx.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_adat/lib_adat/src/adat_tx_port.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_locks/lib_locks/src/swlock_asm.S.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_locks/lib_locks/src/hwlock.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_locks/lib_locks/src/swlock.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_logging/lib_logging/src/debug_printf.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xassert/lib_xassert/src/xassert.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/dsp_complex.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/dsp_dct.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/dsp_fast_float.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/dsp_idct.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/dsp_math_int.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/dsp_sqrt.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/fft/dsp_fft.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/fft/dsp_fft_real.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/float/floating_fft.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/testing/crc32_c.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/bfp/dsp_bfp_bit_reverse_shl.S.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/bfp/dsp_bfp_cls.S.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/bfp/dsp_bfp_shl.S.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/dsp_biquad.S.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/dsp_complex_add_vector.S.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/dsp_complex_fir.S.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/dsp_complex_hann.S.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/dsp_complex_mul_vector.S.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/dsp_fast_atan.S.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/dsp_logistics.S.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/dsp_min_vector.S.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/dsp_poly_eval.S.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/dsp_sqrt_xs2.S.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/fft/dsp_fft_bit_reverse.S.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/fft/dsp_fft_forward.S.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/fft/dsp_fft_gc.S.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/fft/dsp_fft_inverse.S.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/fft/dsp_fft_inverse_DIF.S.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/fft/dsp_fft_merge_spectra.S.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/fft/dsp_fft_real_fix.S.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/fft/dsp_fft_split_spectrum.S.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/fft/dsp_fft_zero_reverse_forward.S.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/fft/dsp_long_short_conversion.S.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/bfp/dsp_bfp.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/bfp/dsp_bfp_vector.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/dsp_adaptive.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/dsp_design.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/dsp_filters.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/dsp_math.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/dsp_matrix.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/dsp_statistics.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/dsp_tables.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/dsp_vector.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/float/dsp_filters_fp.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/float/dsp_fp_vector.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/float/dsp_poly_eval_fp.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/poly_eval.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/testing/dsp_testing_conv.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/testing/dsp_testing_diff.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/testing/dsp_testing_print.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_dsp/lib_dsp/src/testing/dsp_testing_rand.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_mic_array/lib_mic_array/src/decimator_interface.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_mic_array/lib_mic_array/src/fir/fir_coefs.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_mic_array/lib_mic_array/src/fir/fir_coefs_dual.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_mic_array/lib_mic_array/src/hires_delay.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_mic_array/lib_mic_array/src/mic_array_dual.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_mic_array/lib_mic_array/src/pdm.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_mic_array/lib_mic_array/src/decimate_to_pcm_4ch.S.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_mic_array/lib_mic_array/src/pdm_rx.S.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_spdif/lib_spdif/src/SpdifReceive.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_spdif/lib_spdif/src/SpdifTransmit.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_spdif/lib_spdif/src/spdif_rx.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_sw_pll/lib_sw_pll/src/sw_pll_common.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_sw_pll/lib_sw_pll/src/sw_pll_lut.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_sw_pll/lib_sw_pll/src/sw_pll_pfd.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_sw_pll/lib_sw_pll/src/sw_pll_sdm.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/src/core/XUD_DeviceAttach.xc.obj_OPTIONS = -fasm-linenum;-fcomment-asm;-DXUD_FULL_PIDTABLE=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/src/core/XUD_HAL.xc.obj_OPTIONS = -fasm-linenum;-fcomment-asm;-DXUD_FULL_PIDTABLE=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/src/core/XUD_Main.xc.obj_OPTIONS = -fasm-linenum;-fcomment-asm;-DXUD_FULL_PIDTABLE=1;-mno-dual-issue

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/src/core/XUD_Signalling.xc.obj_OPTIONS = -fasm-linenum;-fcomment-asm;-DXUD_FULL_PIDTABLE=1;-mno-dual-issue;-Wno-return-type

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/src/core/XUD_Support.xc.obj_OPTIONS = -fasm-linenum;-fcomment-asm;-DXUD_FULL_PIDTABLE=1;-mno-dual-issue

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/src/core/XUD_TestMode.xc.obj_OPTIONS = -fasm-linenum;-fcomment-asm;-DXUD_FULL_PIDTABLE=1;-mno-dual-issue

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/src/core/XUD_USBTile_Support.xc.obj_OPTIONS = -fasm-linenum;-fcomment-asm;-DXUD_FULL_PIDTABLE=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/src/user/client/XUD_EpFunctions.xc.obj_OPTIONS = -fasm-linenum;-fcomment-asm;-DXUD_FULL_PIDTABLE=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/src/user/control/xud_device.xc.obj_OPTIONS = -fasm-linenum;-fcomment-asm;-DXUD_FULL_PIDTABLE=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/src/user/control/xud_std_requests.xc.obj_OPTIONS = -fasm-linenum;-fcomment-asm;-DXUD_FULL_PIDTABLE=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/src/core/XUD_IoLoop.S.obj_OPTIONS = -fasm-linenum;-fcomment-asm;-DXUD_FULL_PIDTABLE=1;-fschedule

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/src/core/XUD_TestMode.S.obj_OPTIONS = -fasm-linenum;-fcomment-asm;-DXUD_FULL_PIDTABLE=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/src/core/XUD_CRC5_Table.S.obj_OPTIONS = -fasm-linenum;-fcomment-asm;-DXUD_FULL_PIDTABLE=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/src/core/XUD_USBTile_Support.S.obj_OPTIONS = -fasm-linenum;-fcomment-asm;-DXUD_FULL_PIDTABLE=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/src/core/XUD_CRC5_Table_Addr.S.obj_OPTIONS = -fasm-linenum;-fcomment-asm;-DXUD_FULL_PIDTABLE=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/src/user/client/XUD_EpFuncs.S.obj_OPTIONS = -fasm-linenum;-fcomment-asm;-DXUD_FULL_PIDTABLE=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/src/core/XUD_HAL.c.obj_OPTIONS = -fasm-linenum;-fcomment-asm;-DXUD_FULL_PIDTABLE=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/src/core/XUD_SetCrcTableAddr.c.obj_OPTIONS = -fasm-linenum;-fcomment-asm;-DXUD_FULL_PIDTABLE=1;-mno-dual-issue

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/src/core/XUD_User.c.obj_OPTIONS = -fasm-linenum;-fcomment-asm;-DXUD_FULL_PIDTABLE=1;-mno-dual-issue

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xud/lib_xud/src/user/client/XUD_EpFunctions.c.obj_OPTIONS = -fasm-linenum;-fcomment-asm;-DXUD_FULL_PIDTABLE=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/audiohub/audiohub_initport.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/audiohub/xua_audiohub.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/buffer/decouple/decouple.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/buffer/ep/ep_buffer.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/buffer/ep/testct_byref.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/clocking/clockgen.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/clocking/sw_pll_wrapper.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/endpoint0/dbcalc.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1;-mno-dual-issue

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/endpoint0/xua_ep0_uacreqs.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1;-mno-dual-issue

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/mixer/mixer.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/pdm_mics/pdm_mic.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/ports/audioports.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1;-mno-dual-issue

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/support/reboot.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/support/xc_ptr.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/warnings.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/dfu/dfu.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1;-mno-dual-issue

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/hid/hid.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/midi/midiinparse.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/midi/midioutparse.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/midi/queue.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/midi/usb_midi.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/midi/usb_midi_support.xc.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/mixer/fastmix.S.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/audiohub/xua_buffman_default.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/buffer/decouple/decouple_interrupt.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/buffer/decouple/get_adc_counts.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/endpoint0/vendorrequests.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/endpoint0/xua_endpoint0.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1;-mno-dual-issue

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/pdm_mics/pdm_mic_user.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/ports/audioports.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1;-mno-dual-issue

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/user/audiohw/audiohw.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/user/audiostream/audiostream.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/user/hostactive/hostactive.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/core/xuduser/xuduser.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/dfu/flash_interface.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1;-mno-dual-issue

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/dfu/flashlib_user.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1;-mno-dual-issue

# Custom options: CMakeFiles/XVF3510_USB_ADAT.dir/Users/lsj/XMOS_XTC_15.3.0/lib_xua/lib_xua/src/hid/hid_report.c.obj_OPTIONS = -DREF_CLK_FREQ=100;-DXASSERT_ENABLE_ASSERTIONS=1;-DXASSERT_ENABLE_DEBUG=1;-DXASSERT_ENBALE_LINE_NUMBERS=1

