
call C:/Xilinx/Vivado/2016.4/bin/xelab xil_defaultlib.apatb_cnn_pool_d44x44_p2x2_top -prj cnn_pool_d44x44_p2x2.prj --initfile "C:/Xilinx/Vivado/2016.4/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s cnn_pool_d44x44_p2x2 
call C:/Xilinx/Vivado/2016.4/bin/xsim --noieeewarnings cnn_pool_d44x44_p2x2 -tclbatch cnn_pool_d44x44_p2x2.tcl

