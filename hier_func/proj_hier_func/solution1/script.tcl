############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj_hier_func
set_top hier_func
add_files hier_func.c
add_files -tb tb_data
add_files -tb hier_func_test.c
open_solution "solution1"
set_part {xc7k160tfbg484-1}
create_clock -period 4 -name default
#source "./proj_hier_func/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
