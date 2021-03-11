// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Thu Mar 11 21:15:53 2021
// Host        : Chaim running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_my_filter_buffer_0_0_stub.v
// Design      : design_1_my_filter_buffer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "my_filter_buffer,Vivado 2016.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_CTRL_AWADDR, s_axi_CTRL_AWVALID, 
  s_axi_CTRL_AWREADY, s_axi_CTRL_WDATA, s_axi_CTRL_WSTRB, s_axi_CTRL_WVALID, 
  s_axi_CTRL_WREADY, s_axi_CTRL_BRESP, s_axi_CTRL_BVALID, s_axi_CTRL_BREADY, 
  s_axi_CTRL_ARADDR, s_axi_CTRL_ARVALID, s_axi_CTRL_ARREADY, s_axi_CTRL_RDATA, 
  s_axi_CTRL_RRESP, s_axi_CTRL_RVALID, s_axi_CTRL_RREADY, s_axi_KERNEL_BUS_AWADDR, 
  s_axi_KERNEL_BUS_AWVALID, s_axi_KERNEL_BUS_AWREADY, s_axi_KERNEL_BUS_WDATA, 
  s_axi_KERNEL_BUS_WSTRB, s_axi_KERNEL_BUS_WVALID, s_axi_KERNEL_BUS_WREADY, 
  s_axi_KERNEL_BUS_BRESP, s_axi_KERNEL_BUS_BVALID, s_axi_KERNEL_BUS_BREADY, 
  s_axi_KERNEL_BUS_ARADDR, s_axi_KERNEL_BUS_ARVALID, s_axi_KERNEL_BUS_ARREADY, 
  s_axi_KERNEL_BUS_RDATA, s_axi_KERNEL_BUS_RRESP, s_axi_KERNEL_BUS_RVALID, 
  s_axi_KERNEL_BUS_RREADY, ap_clk, ap_rst_n, interrupt, in_stream_TVALID, in_stream_TREADY, 
  in_stream_TDATA, in_stream_TDEST, in_stream_TKEEP, in_stream_TSTRB, in_stream_TUSER, 
  in_stream_TLAST, in_stream_TID, out_stream_TVALID, out_stream_TREADY, out_stream_TDATA, 
  out_stream_TDEST, out_stream_TKEEP, out_stream_TSTRB, out_stream_TUSER, out_stream_TLAST, 
  out_stream_TID)
/* synthesis syn_black_box black_box_pad_pin="s_axi_CTRL_AWADDR[4:0],s_axi_CTRL_AWVALID,s_axi_CTRL_AWREADY,s_axi_CTRL_WDATA[31:0],s_axi_CTRL_WSTRB[3:0],s_axi_CTRL_WVALID,s_axi_CTRL_WREADY,s_axi_CTRL_BRESP[1:0],s_axi_CTRL_BVALID,s_axi_CTRL_BREADY,s_axi_CTRL_ARADDR[4:0],s_axi_CTRL_ARVALID,s_axi_CTRL_ARREADY,s_axi_CTRL_RDATA[31:0],s_axi_CTRL_RRESP[1:0],s_axi_CTRL_RVALID,s_axi_CTRL_RREADY,s_axi_KERNEL_BUS_AWADDR[7:0],s_axi_KERNEL_BUS_AWVALID,s_axi_KERNEL_BUS_AWREADY,s_axi_KERNEL_BUS_WDATA[31:0],s_axi_KERNEL_BUS_WSTRB[3:0],s_axi_KERNEL_BUS_WVALID,s_axi_KERNEL_BUS_WREADY,s_axi_KERNEL_BUS_BRESP[1:0],s_axi_KERNEL_BUS_BVALID,s_axi_KERNEL_BUS_BREADY,s_axi_KERNEL_BUS_ARADDR[7:0],s_axi_KERNEL_BUS_ARVALID,s_axi_KERNEL_BUS_ARREADY,s_axi_KERNEL_BUS_RDATA[31:0],s_axi_KERNEL_BUS_RRESP[1:0],s_axi_KERNEL_BUS_RVALID,s_axi_KERNEL_BUS_RREADY,ap_clk,ap_rst_n,interrupt,in_stream_TVALID,in_stream_TREADY,in_stream_TDATA[31:0],in_stream_TDEST[5:0],in_stream_TKEEP[3:0],in_stream_TSTRB[3:0],in_stream_TUSER[1:0],in_stream_TLAST[0:0],in_stream_TID[4:0],out_stream_TVALID,out_stream_TREADY,out_stream_TDATA[31:0],out_stream_TDEST[5:0],out_stream_TKEEP[3:0],out_stream_TSTRB[3:0],out_stream_TUSER[1:0],out_stream_TLAST[0:0],out_stream_TID[4:0]" */;
  input [4:0]s_axi_CTRL_AWADDR;
  input s_axi_CTRL_AWVALID;
  output s_axi_CTRL_AWREADY;
  input [31:0]s_axi_CTRL_WDATA;
  input [3:0]s_axi_CTRL_WSTRB;
  input s_axi_CTRL_WVALID;
  output s_axi_CTRL_WREADY;
  output [1:0]s_axi_CTRL_BRESP;
  output s_axi_CTRL_BVALID;
  input s_axi_CTRL_BREADY;
  input [4:0]s_axi_CTRL_ARADDR;
  input s_axi_CTRL_ARVALID;
  output s_axi_CTRL_ARREADY;
  output [31:0]s_axi_CTRL_RDATA;
  output [1:0]s_axi_CTRL_RRESP;
  output s_axi_CTRL_RVALID;
  input s_axi_CTRL_RREADY;
  input [7:0]s_axi_KERNEL_BUS_AWADDR;
  input s_axi_KERNEL_BUS_AWVALID;
  output s_axi_KERNEL_BUS_AWREADY;
  input [31:0]s_axi_KERNEL_BUS_WDATA;
  input [3:0]s_axi_KERNEL_BUS_WSTRB;
  input s_axi_KERNEL_BUS_WVALID;
  output s_axi_KERNEL_BUS_WREADY;
  output [1:0]s_axi_KERNEL_BUS_BRESP;
  output s_axi_KERNEL_BUS_BVALID;
  input s_axi_KERNEL_BUS_BREADY;
  input [7:0]s_axi_KERNEL_BUS_ARADDR;
  input s_axi_KERNEL_BUS_ARVALID;
  output s_axi_KERNEL_BUS_ARREADY;
  output [31:0]s_axi_KERNEL_BUS_RDATA;
  output [1:0]s_axi_KERNEL_BUS_RRESP;
  output s_axi_KERNEL_BUS_RVALID;
  input s_axi_KERNEL_BUS_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input in_stream_TVALID;
  output in_stream_TREADY;
  input [31:0]in_stream_TDATA;
  input [5:0]in_stream_TDEST;
  input [3:0]in_stream_TKEEP;
  input [3:0]in_stream_TSTRB;
  input [1:0]in_stream_TUSER;
  input [0:0]in_stream_TLAST;
  input [4:0]in_stream_TID;
  output out_stream_TVALID;
  input out_stream_TREADY;
  output [31:0]out_stream_TDATA;
  output [5:0]out_stream_TDEST;
  output [3:0]out_stream_TKEEP;
  output [3:0]out_stream_TSTRB;
  output [1:0]out_stream_TUSER;
  output [0:0]out_stream_TLAST;
  output [4:0]out_stream_TID;
endmodule
