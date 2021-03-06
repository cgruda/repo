
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set out_stream_group [add_wave_group out_stream(axis) -into $coutputgroup]
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/out_stream_TDEST -into $out_stream_group -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/out_stream_TID -into $out_stream_group -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/out_stream_TLAST -into $out_stream_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/out_stream_TUSER -into $out_stream_group -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/out_stream_TSTRB -into $out_stream_group -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/out_stream_TKEEP -into $out_stream_group -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/out_stream_TREADY -into $out_stream_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/out_stream_TVALID -into $out_stream_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/out_stream_TDATA -into $out_stream_group -radix hex
set return_group [add_wave_group return(axi_slave) -into $coutputgroup]
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/interrupt -into $return_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_CTRL_BRESP -into $return_group -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_CTRL_BREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_CTRL_BVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_CTRL_RRESP -into $return_group -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_CTRL_RDATA -into $return_group -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_CTRL_RREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_CTRL_RVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_CTRL_ARREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_CTRL_ARVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_CTRL_ARADDR -into $return_group -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_CTRL_WSTRB -into $return_group -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_CTRL_WDATA -into $return_group -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_CTRL_WREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_CTRL_WVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_CTRL_AWREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_CTRL_AWVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_CTRL_AWADDR -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set in_stream_group [add_wave_group in_stream(axis) -into $cinputgroup]
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/in_stream_TDEST -into $in_stream_group -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/in_stream_TID -into $in_stream_group -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/in_stream_TLAST -into $in_stream_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/in_stream_TUSER -into $in_stream_group -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/in_stream_TSTRB -into $in_stream_group -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/in_stream_TKEEP -into $in_stream_group -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/in_stream_TREADY -into $in_stream_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/in_stream_TVALID -into $in_stream_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/in_stream_TDATA -into $in_stream_group -radix hex
set kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group [add_wave_group kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel(axi_slave) -into $cinputgroup]
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_KERNEL_BUS_BRESP -into $kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_KERNEL_BUS_BREADY -into $kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_KERNEL_BUS_BVALID -into $kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_KERNEL_BUS_RRESP -into $kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_KERNEL_BUS_RDATA -into $kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_KERNEL_BUS_RREADY -into $kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_KERNEL_BUS_RVALID -into $kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_KERNEL_BUS_ARREADY -into $kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_KERNEL_BUS_ARVALID -into $kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_KERNEL_BUS_ARADDR -into $kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_KERNEL_BUS_WSTRB -into $kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_KERNEL_BUS_WDATA -into $kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_KERNEL_BUS_WREADY -into $kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_KERNEL_BUS_WVALID -into $kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_KERNEL_BUS_AWREADY -into $kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_KERNEL_BUS_AWVALID -into $kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/s_axi_KERNEL_BUS_AWADDR -into $kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake(internal)" -into $designtopgroup]
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/ap_done -into $blocksiggroup
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/ap_idle -into $blocksiggroup
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/ap_ready -into $blocksiggroup
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/ap_start -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_my_filter_buffer_top/AESL_inst_my_filter_buffer/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_my_filter_buffer_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_my_filter_buffer_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_my_filter_buffer_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_my_filter_buffer_top/LENGTH_in_stream_V_data_V -into $tb_portdepth_group -radix hex
add_wave /apatb_my_filter_buffer_top/LENGTH_in_stream_V_keep_V -into $tb_portdepth_group -radix hex
add_wave /apatb_my_filter_buffer_top/LENGTH_in_stream_V_strb_V -into $tb_portdepth_group -radix hex
add_wave /apatb_my_filter_buffer_top/LENGTH_in_stream_V_user_V -into $tb_portdepth_group -radix hex
add_wave /apatb_my_filter_buffer_top/LENGTH_in_stream_V_last_V -into $tb_portdepth_group -radix hex
add_wave /apatb_my_filter_buffer_top/LENGTH_in_stream_V_id_V -into $tb_portdepth_group -radix hex
add_wave /apatb_my_filter_buffer_top/LENGTH_in_stream_V_dest_V -into $tb_portdepth_group -radix hex
add_wave /apatb_my_filter_buffer_top/LENGTH_out_stream_V_data_V -into $tb_portdepth_group -radix hex
add_wave /apatb_my_filter_buffer_top/LENGTH_out_stream_V_keep_V -into $tb_portdepth_group -radix hex
add_wave /apatb_my_filter_buffer_top/LENGTH_out_stream_V_strb_V -into $tb_portdepth_group -radix hex
add_wave /apatb_my_filter_buffer_top/LENGTH_out_stream_V_user_V -into $tb_portdepth_group -radix hex
add_wave /apatb_my_filter_buffer_top/LENGTH_out_stream_V_last_V -into $tb_portdepth_group -radix hex
add_wave /apatb_my_filter_buffer_top/LENGTH_out_stream_V_id_V -into $tb_portdepth_group -radix hex
add_wave /apatb_my_filter_buffer_top/LENGTH_out_stream_V_dest_V -into $tb_portdepth_group -radix hex
add_wave /apatb_my_filter_buffer_top/LENGTH_kernel_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_my_filter_buffer_top/LENGTH_kernel_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_my_filter_buffer_top/LENGTH_kernel_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_my_filter_buffer_top/LENGTH_kernel_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_my_filter_buffer_top/LENGTH_kernel_4 -into $tb_portdepth_group -radix hex
add_wave /apatb_my_filter_buffer_top/LENGTH_kernel_5 -into $tb_portdepth_group -radix hex
add_wave /apatb_my_filter_buffer_top/LENGTH_kernel_6 -into $tb_portdepth_group -radix hex
add_wave /apatb_my_filter_buffer_top/LENGTH_kernel_7 -into $tb_portdepth_group -radix hex
add_wave /apatb_my_filter_buffer_top/LENGTH_kernel_8 -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_out_stream_group [add_wave_group out_stream(axis) -into $tbcoutputgroup]
add_wave /apatb_my_filter_buffer_top/out_stream_TDEST -into $tb_out_stream_group -radix hex
add_wave /apatb_my_filter_buffer_top/out_stream_TID -into $tb_out_stream_group -radix hex
add_wave /apatb_my_filter_buffer_top/out_stream_TLAST -into $tb_out_stream_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/out_stream_TUSER -into $tb_out_stream_group -radix hex
add_wave /apatb_my_filter_buffer_top/out_stream_TSTRB -into $tb_out_stream_group -radix hex
add_wave /apatb_my_filter_buffer_top/out_stream_TKEEP -into $tb_out_stream_group -radix hex
add_wave /apatb_my_filter_buffer_top/out_stream_TREADY -into $tb_out_stream_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/out_stream_TVALID -into $tb_out_stream_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/out_stream_TDATA -into $tb_out_stream_group -radix hex
set tb_return_group [add_wave_group return(axi_slave) -into $tbcoutputgroup]
add_wave /apatb_my_filter_buffer_top/CTRL_INTERRUPT -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/CTRL_BRESP -into $tb_return_group -radix hex
add_wave /apatb_my_filter_buffer_top/CTRL_BREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/CTRL_BVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/CTRL_RRESP -into $tb_return_group -radix hex
add_wave /apatb_my_filter_buffer_top/CTRL_RDATA -into $tb_return_group -radix hex
add_wave /apatb_my_filter_buffer_top/CTRL_RREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/CTRL_RVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/CTRL_ARREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/CTRL_ARVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/CTRL_ARADDR -into $tb_return_group -radix hex
add_wave /apatb_my_filter_buffer_top/CTRL_WSTRB -into $tb_return_group -radix hex
add_wave /apatb_my_filter_buffer_top/CTRL_WDATA -into $tb_return_group -radix hex
add_wave /apatb_my_filter_buffer_top/CTRL_WREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/CTRL_WVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/CTRL_AWREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/CTRL_AWVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/CTRL_AWADDR -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_in_stream_group [add_wave_group in_stream(axis) -into $tbcinputgroup]
add_wave /apatb_my_filter_buffer_top/in_stream_TDEST -into $tb_in_stream_group -radix hex
add_wave /apatb_my_filter_buffer_top/in_stream_TID -into $tb_in_stream_group -radix hex
add_wave /apatb_my_filter_buffer_top/in_stream_TLAST -into $tb_in_stream_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/in_stream_TUSER -into $tb_in_stream_group -radix hex
add_wave /apatb_my_filter_buffer_top/in_stream_TSTRB -into $tb_in_stream_group -radix hex
add_wave /apatb_my_filter_buffer_top/in_stream_TKEEP -into $tb_in_stream_group -radix hex
add_wave /apatb_my_filter_buffer_top/in_stream_TREADY -into $tb_in_stream_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/in_stream_TVALID -into $tb_in_stream_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/in_stream_TDATA -into $tb_in_stream_group -radix hex
set tb_kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group [add_wave_group kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel(axi_slave) -into $tbcinputgroup]
add_wave /apatb_my_filter_buffer_top/KERNEL_BUS_BRESP -into $tb_kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -radix hex
add_wave /apatb_my_filter_buffer_top/KERNEL_BUS_BREADY -into $tb_kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/KERNEL_BUS_BVALID -into $tb_kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/KERNEL_BUS_RRESP -into $tb_kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -radix hex
add_wave /apatb_my_filter_buffer_top/KERNEL_BUS_RDATA -into $tb_kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -radix hex
add_wave /apatb_my_filter_buffer_top/KERNEL_BUS_RREADY -into $tb_kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/KERNEL_BUS_RVALID -into $tb_kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/KERNEL_BUS_ARREADY -into $tb_kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/KERNEL_BUS_ARVALID -into $tb_kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/KERNEL_BUS_ARADDR -into $tb_kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -radix hex
add_wave /apatb_my_filter_buffer_top/KERNEL_BUS_WSTRB -into $tb_kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -radix hex
add_wave /apatb_my_filter_buffer_top/KERNEL_BUS_WDATA -into $tb_kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -radix hex
add_wave /apatb_my_filter_buffer_top/KERNEL_BUS_WREADY -into $tb_kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/KERNEL_BUS_WVALID -into $tb_kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/KERNEL_BUS_AWREADY -into $tb_kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/KERNEL_BUS_AWVALID -into $tb_kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -color #ffff00 -radix hex
add_wave /apatb_my_filter_buffer_top/KERNEL_BUS_AWADDR -into $tb_kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel__kernel_group -radix hex
save_wave_config my_filter_buffer.wcfg
run all
quit

