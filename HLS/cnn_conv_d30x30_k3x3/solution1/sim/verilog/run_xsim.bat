
call C:/Xilinx/Vivado/2016.4/bin/xelab xil_defaultlib.apatb_cnn_conv_d30x30_k3x3_top -prj cnn_conv_d30x30_k3x3.prj --initfile "C:/Xilinx/Vivado/2016.4/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s cnn_conv_d30x30_k3x3 
call C:/Xilinx/Vivado/2016.4/bin/xsim --noieeewarnings cnn_conv_d30x30_k3x3 -tclbatch cnn_conv_d30x30_k3x3.tcl

