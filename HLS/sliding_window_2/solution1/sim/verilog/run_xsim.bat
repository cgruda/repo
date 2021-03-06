
call C:/Xilinx/Vivado/2016.4/bin/xelab xil_defaultlib.apatb_my_filter_buffer_top -prj my_filter_buffer.prj --initfile "C:/Xilinx/Vivado/2016.4/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s my_filter_buffer -debug wave
call C:/Xilinx/Vivado/2016.4/bin/xsim --noieeewarnings my_filter_buffer -tclbatch my_filter_buffer.tcl

