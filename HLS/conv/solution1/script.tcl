############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project conv
set_top conv
add_files conv/sliding_window.cpp
add_files conv/sliding_window.h
add_files -tb conv/cnn.c
add_files -tb conv/cnn.h
add_files -tb conv/main.c
add_files -tb conv/main.h
add_files -tb conv/matrix.c
add_files -tb conv/matrix.h
add_files -tb conv/sliding_window_tb.cpp
add_files -tb conv/tasks.c
add_files -tb conv/tasks.h
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./conv/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
