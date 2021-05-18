############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project cnn_fc_i50_o10
set_top cnn_fc_i50_o10
add_files cnn_fc_i50_o10/core.cpp
add_files cnn_fc_i50_o10/core.h
add_files cnn_fc_i50_o10/fixed_point.h
add_files -tb cnn_fc_i50_o10/core_tb.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./cnn_fc_i50_o10/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -display_name "cnn_fc_i50_o10"
