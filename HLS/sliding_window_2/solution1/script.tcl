############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sliding_window_2
set_top my_filter_buffer
add_files sliding_window_2/sliding_window.cpp
add_files sliding_window_2/sliding_window.h
add_files -tb sliding_window_2/cnn.c
add_files -tb sliding_window_2/cnn.h
add_files -tb sliding_window_2/main.c
add_files -tb sliding_window_2/main.h
add_files -tb sliding_window_2/sliding_window_tb.cpp
add_files -tb sliding_window_2/tasks.c
add_files -tb sliding_window_2/tasks.h
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./sliding_window_2/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all -tool xsim
export_design -format ip_catalog
