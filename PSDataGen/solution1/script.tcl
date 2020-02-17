############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project PSDataGen
set_top PSDataGen
add_files PSDataGen/.settings/PSDataGen.cpp
open_solution "solution1"
set_part {xczu9eg-ffvb1156-2-e} -tool vivado
create_clock -period 10 -name default
#source "./PSDataGen/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
