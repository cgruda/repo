############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project cnn_2d_conv_d8x8_k5x5
set_top cnn_2d_conv_d8x8_k5x5
add_files cnn_2d_conv_d8x8_k5x5/core.cpp
add_files cnn_2d_conv_d8x8_k5x5/core.h
add_files -tb cnn_2d_conv_d8x8_k5x5/core_tb.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./cnn_2d_conv_d8x8_k5x5/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -display_name "cnn_2d_conv_d8x8_k5x5"
