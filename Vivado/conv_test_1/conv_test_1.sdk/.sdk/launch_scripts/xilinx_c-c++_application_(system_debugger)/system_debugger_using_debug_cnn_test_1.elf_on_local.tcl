connect -url tcp:127.0.0.1:3121
source D:/School/Project/new_repo/Vivado/conv_test_1/conv_test_1.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248493138"} -index 0
loadhw D:/School/Project/new_repo/Vivado/conv_test_1/conv_test_1.sdk/design_1_wrapper_hw_platform_0/system.hdf
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248493138"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248493138"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248493138"} -index 0
dow D:/School/Project/new_repo/Vivado/conv_test_1/conv_test_1.sdk/cnn_test_1/Debug/cnn_test_1.elf
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248493138"} -index 0
con
