############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sliding_window_block
set_top cnn_sw_3x3
add_files sliding_window_block/cnn_sw_3x3.cpp
add_files sliding_window_block/cnn_sw_3x3.h
add_files -tb sliding_window_block/cnn_sw_3x3_tb.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./sliding_window_block/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
