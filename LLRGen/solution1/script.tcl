############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project LLRGen
set_top llr
add_files LLRGen/.settings/llrgen.cpp
open_solution "solution1"
set_part {xczu9eg-ffvb1156-2-i} -tool vivado
create_clock -period 10 -name default
#source "./LLRGen/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
