cmake_minimum_required(VERSION 3.21)
include($ENV{XMOS_CMAKE_PATH}/xcommon.cmake)
project(XVF3510_USB_ADAT)

set(APP_HW_TARGET XVF3510_DDC)
set(XMOS_SANDBOX_DIR ${CMAKE_CURRENT_LIST_DIR}/../..)

include(${CMAKE_CURRENT_LIST_DIR}/deps.cmake)

set(APP_COMPILER_FLAGS ${EXTRA_BUILD_FLAGS} -O
                                            -report
                                            -lquadflash
                                            -DADAT_TX_USE_SHARED_BUFF=1
                                            -Wno-unused-function
                                            -DXUD_CORE_CLOCK=500
                                            -DUSB_TILE=tile[1]
                                            -DREF_CLK_FREQ=100)

XMOS_REGISTER_APP()
