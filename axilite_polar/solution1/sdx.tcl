# ==============================================================
# File generated on Tue Jan 21 18:20:20 IST 2020
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../test_core.cpp -cflags { -Wno-unknown-pragmas}
add_files axilite_polar/.settings/axilitepolar.cpp
set_part xczu9eg-ffvb1156-2-e
create_clock -name default -period 10
