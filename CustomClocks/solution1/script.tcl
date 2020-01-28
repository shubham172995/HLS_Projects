############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project CustomClocks
set_top top
add_files CustomClocks/.settings/custom.cpp
add_files -tb CustomClocks/.settings/test.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xczu9eg-ffvb1156-2-e} -tool vivado
create_clock -period 10 -name default
#source "./CustomClocks/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
