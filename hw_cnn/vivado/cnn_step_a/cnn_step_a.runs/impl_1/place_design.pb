
?
?No debug cores found in the current design.
Before running the implement_debug_core command, either use the Set Up Debug wizard (GUI mode)
or use the create_debug_core and connect_debug_core Tcl commands to insert debug cores into the design.
154*	chipscopeZ16-241h px? 
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
Rule violation (%s) %s - %s
20*drc2
CHECK-32default:default2-
Report rule limit reached2default:default2P
<REQP-1839 rule limit reached: 20 violations have been found.2default:defaultZ23-20h px? 
?	
Rule violation (%s) %s - %s
20*drc2
	REQP-18392default:default2.
RAMB36 async control check2default:default2?
?The RAMB36E1 design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg has an input control pin design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg/WEBWE[0] (net: design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg_i_10_n_3) which is driven by a register (design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.2default:defaultZ23-20h px? 
?	
Rule violation (%s) %s - %s
20*drc2
	REQP-18392default:default2.
RAMB36 async control check2default:default2?
?The RAMB36E1 design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg has an input control pin design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg/WEBWE[0] (net: design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg_i_10_n_3) which is driven by a register (design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.2default:defaultZ23-20h px? 
?	
Rule violation (%s) %s - %s
20*drc2
	REQP-18392default:default2.
RAMB36 async control check2default:default2?
?The RAMB36E1 design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg has an input control pin design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg/WEBWE[0] (net: design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg_i_10_n_3) which is driven by a register (design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
	REQP-18392default:default2.
RAMB36 async control check2default:default2?
?The RAMB36E1 design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg has an input control pin design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg/WEBWE[0] (net: design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg_i_10_n_3) which is driven by a register (design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
	REQP-18392default:default2.
RAMB36 async control check2default:default2?
?The RAMB36E1 design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg has an input control pin design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg/WEBWE[0] (net: design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg_i_10_n_3) which is driven by a register (design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.2default:defaultZ23-20h px? 
?	
Rule violation (%s) %s - %s
20*drc2
	REQP-18392default:default2.
RAMB36 async control check2default:default2?
?The RAMB36E1 design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg has an input control pin design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg/WEBWE[1] (net: design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg_i_9_n_3) which is driven by a register (design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.2default:defaultZ23-20h px? 
?	
Rule violation (%s) %s - %s
20*drc2
	REQP-18392default:default2.
RAMB36 async control check2default:default2?
?The RAMB36E1 design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg has an input control pin design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg/WEBWE[1] (net: design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg_i_9_n_3) which is driven by a register (design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.2default:defaultZ23-20h px? 
?	
Rule violation (%s) %s - %s
20*drc2
	REQP-18392default:default2.
RAMB36 async control check2default:default2?
?The RAMB36E1 design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg has an input control pin design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg/WEBWE[1] (net: design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg_i_9_n_3) which is driven by a register (design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
	REQP-18392default:default2.
RAMB36 async control check2default:default2?
?The RAMB36E1 design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg has an input control pin design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg/WEBWE[1] (net: design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg_i_9_n_3) which is driven by a register (design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
	REQP-18392default:default2.
RAMB36 async control check2default:default2?
?The RAMB36E1 design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg has an input control pin design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg/WEBWE[1] (net: design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg_i_9_n_3) which is driven by a register (design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.2default:defaultZ23-20h px? 
?	
Rule violation (%s) %s - %s
20*drc2
	REQP-18392default:default2.
RAMB36 async control check2default:default2?
?The RAMB36E1 design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg has an input control pin design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg/WEBWE[2] (net: design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg_i_8__0_n_3) which is driven by a register (design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.2default:defaultZ23-20h px? 
?	
Rule violation (%s) %s - %s
20*drc2
	REQP-18392default:default2.
RAMB36 async control check2default:default2?
?The RAMB36E1 design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg has an input control pin design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg/WEBWE[2] (net: design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg_i_8__0_n_3) which is driven by a register (design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.2default:defaultZ23-20h px? 
?	
Rule violation (%s) %s - %s
20*drc2
	REQP-18392default:default2.
RAMB36 async control check2default:default2?
?The RAMB36E1 design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg has an input control pin design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg/WEBWE[2] (net: design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg_i_8__0_n_3) which is driven by a register (design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
	REQP-18392default:default2.
RAMB36 async control check2default:default2?
?The RAMB36E1 design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg has an input control pin design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg/WEBWE[2] (net: design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg_i_8__0_n_3) which is driven by a register (design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.2default:defaultZ23-20h px? 
?	
Rule violation (%s) %s - %s
20*drc2
	REQP-18392default:default2.
RAMB36 async control check2default:default2?
?The RAMB36E1 design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg has an input control pin design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg/WEBWE[2] (net: design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg_i_8__0_n_3) which is driven by a register (design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.2default:defaultZ23-20h px? 
?	
Rule violation (%s) %s - %s
20*drc2
	REQP-18392default:default2.
RAMB36 async control check2default:default2?
?The RAMB36E1 design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg has an input control pin design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg/WEBWE[3] (net: design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg_i_7__0_n_3) which is driven by a register (design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.2default:defaultZ23-20h px? 
?	
Rule violation (%s) %s - %s
20*drc2
	REQP-18392default:default2.
RAMB36 async control check2default:default2?
?The RAMB36E1 design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg has an input control pin design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg/WEBWE[3] (net: design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg_i_7__0_n_3) which is driven by a register (design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.2default:defaultZ23-20h px? 
?	
Rule violation (%s) %s - %s
20*drc2
	REQP-18392default:default2.
RAMB36 async control check2default:default2?
?The RAMB36E1 design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg has an input control pin design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg/WEBWE[3] (net: design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg_i_7__0_n_3) which is driven by a register (design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
	REQP-18392default:default2.
RAMB36 async control check2default:default2?
?The RAMB36E1 design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg has an input control pin design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg/WEBWE[3] (net: design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg_i_7__0_n_3) which is driven by a register (design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.2default:defaultZ23-20h px? 
?	
Rule violation (%s) %s - %s
20*drc2
	REQP-18392default:default2.
RAMB36 async control check2default:default2?
?The RAMB36E1 design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg has an input control pin design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg/WEBWE[3] (net: design_1_i/cnn_fc_i144_o50_0/inst/cnn_fc_i144_o50_CTRL_s_axi_U/int_bias/gen_write[1].mem_reg_i_7__0_n_3) which is driven by a register (design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.2default:defaultZ23-20h px? 
c
DRC finished with %s
79*	vivadotcl2)
0 Errors, 21 Warnings2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.2052default:default2
1677.5942default:default2
0.0002default:defaultZ17-268h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0762default:default2
1677.5942default:default2
0.0002default:defaultZ17-268h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
g
RPhase 1.1 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 49dd31e8
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:22 ; elapsed = 00:00:20 . Memory (MB): peak = 1677.594 ; gain = 0.0002default:defaulth px? 
}

Phase %s%s
101*constraints2
1.2 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
O
:Phase 1.2 Build Placer Netlist Model | Checksum: ff846813
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:41 ; elapsed = 00:00:34 . Memory (MB): peak = 1677.594 ; gain = 0.0002default:defaulth px? 
z

Phase %s%s
101*constraints2
1.3 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
L
7Phase 1.3 Constrain Clocks/Macros | Checksum: ff846813
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:41 ; elapsed = 00:00:34 . Memory (MB): peak = 1677.594 ; gain = 0.0002default:defaulth px? 
H
3Phase 1 Placer Initialization | Checksum: ff846813
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:42 ; elapsed = 00:00:35 . Memory (MB): peak = 1677.594 ; gain = 0.0002default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
D
/Phase 2 Global Placement | Checksum: 16c93ffb2
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:59 ; elapsed = 00:01:19 . Memory (MB): peak = 1677.594 ; gain = 0.0002default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 16c93ffb2
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:00 ; elapsed = 00:01:20 . Memory (MB): peak = 1677.594 ; gain = 0.0002default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
Q
<Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: e888d85f
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:18 ; elapsed = 00:01:32 . Memory (MB): peak = 1677.594 ; gain = 0.0002default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
K
6Phase 3.3 Area Swap Optimization | Checksum: a2e0f73e
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:19 ; elapsed = 00:01:33 . Memory (MB): peak = 1677.594 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 14a39f049
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:19 ; elapsed = 00:01:33 . Memory (MB): peak = 1677.594 ; gain = 0.0002default:defaulth px? 
x

Phase %s%s
101*constraints2
3.5 2default:default2)
Timing Path Optimizer2default:defaultZ18-101h px? 
K
6Phase 3.5 Timing Path Optimizer | Checksum: 11b4f005e
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:26 ; elapsed = 00:01:37 . Memory (MB): peak = 1677.594 ; gain = 0.0002default:defaulth px? 


Phase %s%s
101*constraints2
3.6 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
Q
<Phase 3.6 Small Shape Detail Placement | Checksum: 9efcd189
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:46 ; elapsed = 00:01:56 . Memory (MB): peak = 1677.594 ; gain = 0.0002default:defaulth px? 
u

Phase %s%s
101*constraints2
3.7 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
G
2Phase 3.7 Re-assign LUT pins | Checksum: 5c0c1f07
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:48 ; elapsed = 00:01:58 . Memory (MB): peak = 1677.594 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
3.8 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.8 Pipeline Register Optimization | Checksum: 2239821b0
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:49 ; elapsed = 00:01:59 . Memory (MB): peak = 1677.594 ; gain = 0.0002default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 2239821b0
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:50 ; elapsed = 00:02:00 . Memory (MB): peak = 1677.594 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
0.7542default:defaultZ30-746h px? 
S
>Phase 4.1.1 Post Placement Optimization | Checksum: 1b5f10e5c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:03:10 ; elapsed = 00:02:13 . Memory (MB): peak = 1677.594 ; gain = 0.0002default:defaulth px? 
N
9Phase 4.1 Post Commit Optimization | Checksum: 1b5f10e5c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:03:10 ; elapsed = 00:02:13 . Memory (MB): peak = 1677.594 ; gain = 0.0002default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 1b5f10e5c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:03:11 ; elapsed = 00:02:14 . Memory (MB): peak = 1677.594 ; gain = 0.0002default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 
F
1Phase 4.3 Placer Reporting | Checksum: 1b5f10e5c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:03:12 ; elapsed = 00:02:14 . Memory (MB): peak = 1677.594 ; gain = 0.0002default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 23b6caf12
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:03:12 ; elapsed = 00:02:15 . Memory (MB): peak = 1677.594 ; gain = 0.0002default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 23b6caf12
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:03:12 ; elapsed = 00:02:16 . Memory (MB): peak = 1677.594 ; gain = 0.0002default:defaulth px? 
>
)Ending Placer Task | Checksum: 18f3a4126
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:03:12 ; elapsed = 00:02:16 . Memory (MB): peak = 1677.594 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
752default:default2
212default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
place_design: 2default:default2
00:03:242default:default2
00:02:222default:default2
1677.5942default:default2
0.0002default:defaultZ17-268h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:182default:default2
00:00:062default:default2
1677.5942default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2s
_D:/School/Project/new_repo/Vivado/cnn_step_a/cnn_step_a.runs/impl_1/design_1_wrapper_placed.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:212default:default2
00:00:092default:default2
1677.5942default:default2
0.0002default:defaultZ17-268h px? 
?
kreport_io: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.065 . Memory (MB): peak = 1677.594 ; gain = 0.000
*commonh px? 
?
treport_utilization: Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.457 . Memory (MB): peak = 1677.594 ; gain = 0.000
*commonh px? 
?
ureport_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.129 . Memory (MB): peak = 1677.594 ; gain = 0.000
*commonh px? 


End Record