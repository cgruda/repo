# Project 20-1-1-2187
# CNN accelerator
# 
# Chaim Gruda
# Shay Tsabar

#========================================================================================
#                                        README
#========================================================================================
# 
# This script automates the creation of Vivado projects and designs.
# in order to use it you must first add the following to system PATH
# 
#	C:\Xilinx\Vivado\2016.4\bin (assuming this is the install dir)
# 
# how to add to path: https://www.architectryan.com/2018/03/17/add-to-the-path-on-windows-10/
# 
# repo_path      - make sure its set to repo checked out from git
# gen_bitstream  - if set to 1 will generate bitstream (takes a while to complete)
# lun_sdk        - if set to 1 will launch SDK at end of run
# ip_count       - from 1 to 6
# 
# ipX            - make sure the IP exists in HLS folder
# ipX_name       - i suggest to make it "ipX_0"
# ipX_ver        - usually will be 1.0 (unless you know better)
# 

#========================================================================================
#                                      script vars
#========================================================================================

# execution vars
set gen_bitstream 1
set lun_sdk 1

# specific project vars
set project_name autotest11

# repos path vars
set repo_path D:/School/Project/new_repo
set vivado_path $repo_path/Vivado
set hls_path $repo_path/HLS
set project_path $vivado_path/$project_name

# board vars (ZedBoard)
set project_part xc7z020clg484-1
set project_board digilentinc.com:zedboard:part0:1.0

#========================================================================================
#                                IP configuration
#========================================================================================

# support up to 6 ips
set ip_count 1

# IP0
set ip0 cnn_pool_d92x92_p2x2
set ip0_name cnn_pool_d92x92_p2x2_0
set ip0_ver 1.0

# IP1
set ip1 cnn_pool_d92x92_p2x2
set ip1_name cnn_pool_d92x92_p2x2_0
set ip0_ver 1.0

# IP2
set ip2 cnn_pool_d92x92_p2x2
set ip2_name cnn_pool_d92x92_p2x2_0
set ip2_ver 1.0

# IP3
set ip3 cnn_pool_d92x92_p2x2
set ip3_name cnn_pool_d92x92_p2x2_0
set ip3_ver 1.0

# IP4
set ip4 cnn_pool_d92x92_p2x2
set ip4_name cnn_pool_d92x92_p2x2_0
set ip4_ver 1.0

# IP5
set ip5 cnn_pool_d92x92_p2x2
set ip5_name cnn_pool_d92x92_p2x2_0
set ip5_ver 1.0

#========================================================================================
#                                main code starts here
#========================================================================================

### create project ###
create_project $project_name $project_path -part $project_part
set_property board_part $project_board [current_project]

### create desgin with ps ###
create_bd_design "design_1"
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0
endgroup
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {make_external "FIXED_IO, DDR" apply_board_preset "1" Master "Disable" Slave "Disable" }  [get_bd_cells processing_system7_0]
startgroup
set_property -dict [list CONFIG.PCW_USE_S_AXI_HP0 {1} CONFIG.PCW_USE_FABRIC_INTERRUPT {1} CONFIG.PCW_IRQ_F2P_INTR {1}] [get_bd_cells processing_system7_0]
endgroup

# add specified ips
set_property ip_repo_paths $hls_path [current_project]
update_ip_catalog

if {$ip_count == 1} {
	startgroup
	create_bd_cell -type ip -vlnv xilinx.com:hls:$ip0:$ip0_ver $ip0_name
	endgroup
	apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "Auto" }  [get_bd_intf_pins $ip0_name/s_axi_CTRL]
}

if {$ip_count == 2} {
	startgroup
	create_bd_cell -type ip -vlnv xilinx.com:hls:$ip0:$ip0_ver $ip0_name
	endgroup
	apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "Auto" }  [get_bd_intf_pins $ip0_name/s_axi_CTRL]
	startgroup
	create_bd_cell -type ip -vlnv xilinx.com:hls:$ip1:$ip1_ver $ip1_name
	endgroup
	apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "Auto" }  [get_bd_intf_pins $ip1_name/s_axi_CTRL]
}

if {$ip_count == 3} {
	startgroup
	create_bd_cell -type ip -vlnv xilinx.com:hls:$ip0:$ip0_ver $ip0_name
	endgroup
	apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "Auto" }  [get_bd_intf_pins $ip0_name/s_axi_CTRL]
	startgroup
	create_bd_cell -type ip -vlnv xilinx.com:hls:$ip1:$ip1_ver $ip1_name
	endgroup
	apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "Auto" }  [get_bd_intf_pins $ip1_name/s_axi_CTRL]
	startgroup
	create_bd_cell -type ip -vlnv xilinx.com:hls:$ip2:$ip2_ver $ip2_name
	endgroup
	apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "Auto" }  [get_bd_intf_pins $ip2_name/s_axi_CTRL]
}

if {$ip_count == 4} {
	startgroup
	create_bd_cell -type ip -vlnv xilinx.com:hls:$ip0:$ip0_ver $ip0_name
	endgroup
	apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "Auto" }  [get_bd_intf_pins $ip0_name/s_axi_CTRL]
	startgroup
	create_bd_cell -type ip -vlnv xilinx.com:hls:$ip1:$ip1_ver $ip1_name
	endgroup
	apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "Auto" }  [get_bd_intf_pins $ip1_name/s_axi_CTRL]
	startgroup
	create_bd_cell -type ip -vlnv xilinx.com:hls:$ip2:$ip2_ver $ip2_name
	endgroup
	apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "Auto" }  [get_bd_intf_pins $ip2_name/s_axi_CTRL]
	startgroup
	create_bd_cell -type ip -vlnv xilinx.com:hls:$ip3:$ip3_ver $ip3_name
	endgroup
	apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "Auto" }  [get_bd_intf_pins $ip3_name/s_axi_CTRL]
}

if {$ip_count == 5} {
	startgroup
	create_bd_cell -type ip -vlnv xilinx.com:hls:$ip0:$ip0_ver $ip0_name
	endgroup
	apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "Auto" }  [get_bd_intf_pins $ip0_name/s_axi_CTRL]
	startgroup
	create_bd_cell -type ip -vlnv xilinx.com:hls:$ip1:$ip1_ver $ip1_name
	endgroup
	apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "Auto" }  [get_bd_intf_pins $ip1_name/s_axi_CTRL]
	startgroup
	create_bd_cell -type ip -vlnv xilinx.com:hls:$ip2:$ip2_ver $ip2_name
	endgroup
	apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "Auto" }  [get_bd_intf_pins $ip2_name/s_axi_CTRL]
	startgroup
	create_bd_cell -type ip -vlnv xilinx.com:hls:$ip3:$ip3_ver $ip3_name
	endgroup
	apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "Auto" }  [get_bd_intf_pins $ip3_name/s_axi_CTRL]
	startgroup
	create_bd_cell -type ip -vlnv xilinx.com:hls:$ip4:$ip4_ver $ip4_name
	endgroup
	apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "Auto" }  [get_bd_intf_pins $ip4_name/s_axi_CTRL]
}

if {$ip_count == 6} {
	startgroup
	create_bd_cell -type ip -vlnv xilinx.com:hls:$ip0:$ip0_ver $ip0_name
	endgroup
	apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "Auto" }  [get_bd_intf_pins $ip0_name/s_axi_CTRL]
	startgroup
	create_bd_cell -type ip -vlnv xilinx.com:hls:$ip1:$ip1_ver $ip1_name
	endgroup
	apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "Auto" }  [get_bd_intf_pins $ip1_name/s_axi_CTRL]
	startgroup
	create_bd_cell -type ip -vlnv xilinx.com:hls:$ip2:$ip2_ver $ip2_name
	endgroup
	apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "Auto" }  [get_bd_intf_pins $ip2_name/s_axi_CTRL]
	startgroup
	create_bd_cell -type ip -vlnv xilinx.com:hls:$ip3:$ip3_ver $ip3_name
	endgroup
	apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "Auto" }  [get_bd_intf_pins $ip3_name/s_axi_CTRL]
	startgroup
	create_bd_cell -type ip -vlnv xilinx.com:hls:$ip4:$ip4_ver $ip4_name
	endgroup
	apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "Auto" }  [get_bd_intf_pins $ip4_name/s_axi_CTRL]
	startgroup
	create_bd_cell -type ip -vlnv xilinx.com:hls:$ip5:$ip5_ver $ip5_name
	endgroup
	apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "Auto" }  [get_bd_intf_pins $ip5_name/s_axi_CTRL]
}

# add dma
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0
endgroup
startgroup
set_property -dict [list CONFIG.c_include_sg {0} CONFIG.c_sg_length_width {23} CONFIG.c_include_mm2s {1} CONFIG.c_include_mm2s_dre {1} CONFIG.c_include_s2mm_dre {1} CONFIG.c_sg_include_stscntrl_strm {0}] [get_bd_cells axi_dma_0]
endgroup
startgroup
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/axi_dma_0/M_AXI_MM2S" Clk "Auto" }  [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "Auto" }  [get_bd_intf_pins axi_dma_0/S_AXI_LITE]
endgroup
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Slave "/processing_system7_0/S_AXI_HP0" Clk "Auto" }  [get_bd_intf_pins axi_dma_0/M_AXI_S2MM]

# connect ips and dma
if {$ip_count == 1} {
	connect_bd_intf_net [get_bd_intf_pins $ip0_name/inStream] [get_bd_intf_pins axi_dma_0/M_AXIS_MM2S]
	connect_bd_intf_net [get_bd_intf_pins $ip0_name/outStream] [get_bd_intf_pins axi_dma_0/S_AXIS_S2MM]
}

if {$ip_count == 2} {
	connect_bd_intf_net [get_bd_intf_pins $ip0_name/inStream] [get_bd_intf_pins axi_dma_0/M_AXIS_MM2S]
	connect_bd_intf_net [get_bd_intf_pins $ip1_name/inStream] [get_bd_intf_pins $ip0_name/outStream]
	connect_bd_intf_net [get_bd_intf_pins $ip1_name/outStream] [get_bd_intf_pins axi_dma_0/S_AXIS_S2MM]
}

if {$ip_count == 3} {
	connect_bd_intf_net [get_bd_intf_pins $ip0_name/inStream] [get_bd_intf_pins axi_dma_0/M_AXIS_MM2S]
	connect_bd_intf_net [get_bd_intf_pins $ip1_name/inStream] [get_bd_intf_pins $ip0_name/outStream]
	connect_bd_intf_net [get_bd_intf_pins $ip2_name/inStream] [get_bd_intf_pins $ip1_name/outStream]
	connect_bd_intf_net [get_bd_intf_pins $ip2_name/outStream] [get_bd_intf_pins axi_dma_0/S_AXIS_S2MM]
}

if {$ip_count == 4} {
	connect_bd_intf_net [get_bd_intf_pins $ip0_name/inStream] [get_bd_intf_pins axi_dma_0/M_AXIS_MM2S]
	connect_bd_intf_net [get_bd_intf_pins $ip1_name/inStream] [get_bd_intf_pins $ip0_name/outStream]
	connect_bd_intf_net [get_bd_intf_pins $ip2_name/inStream] [get_bd_intf_pins $ip1_name/outStream]
	connect_bd_intf_net [get_bd_intf_pins $ip3_name/inStream] [get_bd_intf_pins $ip2_name/outStream]
	connect_bd_intf_net [get_bd_intf_pins $ip3_name/outStream] [get_bd_intf_pins axi_dma_0/S_AXIS_S2MM]
}

if {$ip_count == 5} {
	connect_bd_intf_net [get_bd_intf_pins $ip0_name/inStream] [get_bd_intf_pins axi_dma_0/M_AXIS_MM2S]
	connect_bd_intf_net [get_bd_intf_pins $ip1_name/inStream] [get_bd_intf_pins $ip0_name/outStream]
	connect_bd_intf_net [get_bd_intf_pins $ip2_name/inStream] [get_bd_intf_pins $ip1_name/outStream]
	connect_bd_intf_net [get_bd_intf_pins $ip3_name/inStream] [get_bd_intf_pins $ip2_name/outStream]
	connect_bd_intf_net [get_bd_intf_pins $ip4_name/inStream] [get_bd_intf_pins $ip3_name/outStream]
	connect_bd_intf_net [get_bd_intf_pins $ip4_name/outStream] [get_bd_intf_pins axi_dma_0/S_AXIS_S2MM]
}

if {$ip_count == 6} {
	connect_bd_intf_net [get_bd_intf_pins $ip0_name/inStream] [get_bd_intf_pins axi_dma_0/M_AXIS_MM2S]
	connect_bd_intf_net [get_bd_intf_pins $ip1_name/inStream] [get_bd_intf_pins $ip0_name/outStream]
	connect_bd_intf_net [get_bd_intf_pins $ip2_name/inStream] [get_bd_intf_pins $ip1_name/outStream]
	connect_bd_intf_net [get_bd_intf_pins $ip3_name/inStream] [get_bd_intf_pins $ip2_name/outStream]
	connect_bd_intf_net [get_bd_intf_pins $ip5_name/inStream] [get_bd_intf_pins $ip4_name/outStream]
	connect_bd_intf_net [get_bd_intf_pins $ip5_name/outStream] [get_bd_intf_pins axi_dma_0/S_AXIS_S2MM]
}

# finalize
regenerate_bd_layout
validate_bd_design
save_bd_design

make_wrapper -files [get_files $project_path/$project_name.srcs/sources_1/bd/design_1/design_1.bd] -top
add_files -norecurse $project_path/$project_name.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

save_bd_design

if {$gen_bitstream == 1} {
	launch_runs impl_1 -to_step write_bitstream -jobs 2
	wait_on_run impl_1
	file mkdir $project_path/$project_name.sdk
	file copy -force $project_path/$project_name.runs/impl_1/design_1_wrapper.sysdef $project_path/$project_name.sdk/design_1_wrapper.hdf

	if {$lun_sdk == 1} {
		launch_sdk -workspace $project_path/$project_name.sdk -hwspec $project_path/$project_name.sdk/design_1_wrapper.hdf
	}
}




