############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project cnn_pool_d52x52_p2x2
set_top cnn_pool_d52x52_p2x2
add_files cnn_pool_d52x52_p2x2/fixed_point.h
add_files cnn_pool_d52x52_p2x2/core.h
add_files cnn_pool_d52x52_p2x2/core.cpp
add_files -tb cnn_pool_d52x52_p2x2/core_tb.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./cnn_pool_d52x52_p2x2/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog -display_name "cnn_pool_d52x52_p2x2"
