// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Sat Mar 20 18:48:30 2021
// Host        : Chaim running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/School/Project/new_repo/Vivado/cnn_test_0/cnn_test_0.srcs/sources_1/bd/design_1/ip/design_1_cnn_conv_d94x94_k3x3_0_0/design_1_cnn_conv_d94x94_k3x3_0_0_stub.v
// Design      : design_1_cnn_conv_d94x94_k3x3_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "cnn_conv_d94x94_k3x3,Vivado 2016.4" *)
module design_1_cnn_conv_d94x94_k3x3_0_0(s_axi_CTRL_AWADDR, s_axi_CTRL_AWVALID, 
  s_axi_CTRL_AWREADY, s_axi_CTRL_WDATA, s_axi_CTRL_WSTRB, s_axi_CTRL_WVALID, 
  s_axi_CTRL_WREADY, s_axi_CTRL_BRESP, s_axi_CTRL_BVALID, s_axi_CTRL_BREADY, 
  s_axi_CTRL_ARADDR, s_axi_CTRL_ARVALID, s_axi_CTRL_ARREADY, s_axi_CTRL_RDATA, 
  s_axi_CTRL_RRESP, s_axi_CTRL_RVALID, s_axi_CTRL_RREADY, ap_clk, ap_rst_n, interrupt, 
  inStream_TVALID, inStream_TREADY, inStream_TDATA, inStream_TDEST, inStream_TKEEP, 
  inStream_TSTRB, inStream_TUSER, inStream_TLAST, inStream_TID, outStream_TVALID, 
  outStream_TREADY, outStream_TDATA, outStream_TDEST, outStream_TKEEP, outStream_TSTRB, 
  outStream_TUSER, outStream_TLAST, outStream_TID)
/* synthesis syn_black_box black_box_pad_pin="s_axi_CTRL_AWADDR[6:0],s_axi_CTRL_AWVALID,s_axi_CTRL_AWREADY,s_axi_CTRL_WDATA[31:0],s_axi_CTRL_WSTRB[3:0],s_axi_CTRL_WVALID,s_axi_CTRL_WREADY,s_axi_CTRL_BRESP[1:0],s_axi_CTRL_BVALID,s_axi_CTRL_BREADY,s_axi_CTRL_ARADDR[6:0],s_axi_CTRL_ARVALID,s_axi_CTRL_ARREADY,s_axi_CTRL_RDATA[31:0],s_axi_CTRL_RRESP[1:0],s_axi_CTRL_RVALID,s_axi_CTRL_RREADY,ap_clk,ap_rst_n,interrupt,inStream_TVALID,inStream_TREADY,inStream_TDATA[31:0],inStream_TDEST[5:0],inStream_TKEEP[3:0],inStream_TSTRB[3:0],inStream_TUSER[1:0],inStream_TLAST[0:0],inStream_TID[4:0],outStream_TVALID,outStream_TREADY,outStream_TDATA[31:0],outStream_TDEST[5:0],outStream_TKEEP[3:0],outStream_TSTRB[3:0],outStream_TUSER[1:0],outStream_TLAST[0:0],outStream_TID[4:0]" */;
  input [6:0]s_axi_CTRL_AWADDR;
  input s_axi_CTRL_AWVALID;
  output s_axi_CTRL_AWREADY;
  input [31:0]s_axi_CTRL_WDATA;
  input [3:0]s_axi_CTRL_WSTRB;
  input s_axi_CTRL_WVALID;
  output s_axi_CTRL_WREADY;
  output [1:0]s_axi_CTRL_BRESP;
  output s_axi_CTRL_BVALID;
  input s_axi_CTRL_BREADY;
  input [6:0]s_axi_CTRL_ARADDR;
  input s_axi_CTRL_ARVALID;
  output s_axi_CTRL_ARREADY;
  output [31:0]s_axi_CTRL_RDATA;
  output [1:0]s_axi_CTRL_RRESP;
  output s_axi_CTRL_RVALID;
  input s_axi_CTRL_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input inStream_TVALID;
  output inStream_TREADY;
  input [31:0]inStream_TDATA;
  input [5:0]inStream_TDEST;
  input [3:0]inStream_TKEEP;
  input [3:0]inStream_TSTRB;
  input [1:0]inStream_TUSER;
  input [0:0]inStream_TLAST;
  input [4:0]inStream_TID;
  output outStream_TVALID;
  input outStream_TREADY;
  output [31:0]outStream_TDATA;
  output [5:0]outStream_TDEST;
  output [3:0]outStream_TKEEP;
  output [3:0]outStream_TSTRB;
  output [1:0]outStream_TUSER;
  output [0:0]outStream_TLAST;
  output [4:0]outStream_TID;
endmodule
