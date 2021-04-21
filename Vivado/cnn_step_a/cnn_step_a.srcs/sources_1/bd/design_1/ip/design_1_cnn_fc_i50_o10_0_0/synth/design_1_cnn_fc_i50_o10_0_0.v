// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:cnn_fc_i50_o10:1.0
// IP Revision: 2104211611

(* X_CORE_INFO = "cnn_fc_i50_o10,Vivado 2016.4" *)
(* CHECK_LICENSE_TYPE = "design_1_cnn_fc_i50_o10_0_0,cnn_fc_i50_o10,{}" *)
(* CORE_GENERATION_INFO = "design_1_cnn_fc_i50_o10_0_0,cnn_fc_i50_o10,{x_ipProduct=Vivado 2016.4,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=cnn_fc_i50_o10,x_ipVersion=1.0,x_ipCoreRevision=2104211611,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_CTRL_ADDR_WIDTH=12,C_S_AXI_CTRL_DATA_WIDTH=32}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_cnn_fc_i50_o10_0_0 (
  s_axi_CTRL_AWADDR,
  s_axi_CTRL_AWVALID,
  s_axi_CTRL_AWREADY,
  s_axi_CTRL_WDATA,
  s_axi_CTRL_WSTRB,
  s_axi_CTRL_WVALID,
  s_axi_CTRL_WREADY,
  s_axi_CTRL_BRESP,
  s_axi_CTRL_BVALID,
  s_axi_CTRL_BREADY,
  s_axi_CTRL_ARADDR,
  s_axi_CTRL_ARVALID,
  s_axi_CTRL_ARREADY,
  s_axi_CTRL_RDATA,
  s_axi_CTRL_RRESP,
  s_axi_CTRL_RVALID,
  s_axi_CTRL_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  inStream_TVALID,
  inStream_TREADY,
  inStream_TDATA,
  inStream_TDEST,
  inStream_TKEEP,
  inStream_TSTRB,
  inStream_TUSER,
  inStream_TLAST,
  inStream_TID,
  outStream_TVALID,
  outStream_TREADY,
  outStream_TDATA,
  outStream_TDEST,
  outStream_TKEEP,
  outStream_TSTRB,
  outStream_TUSER,
  outStream_TLAST,
  outStream_TID
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWADDR" *)
input wire [11 : 0] s_axi_CTRL_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWVALID" *)
input wire s_axi_CTRL_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWREADY" *)
output wire s_axi_CTRL_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WDATA" *)
input wire [31 : 0] s_axi_CTRL_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WSTRB" *)
input wire [3 : 0] s_axi_CTRL_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WVALID" *)
input wire s_axi_CTRL_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WREADY" *)
output wire s_axi_CTRL_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BRESP" *)
output wire [1 : 0] s_axi_CTRL_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BVALID" *)
output wire s_axi_CTRL_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BREADY" *)
input wire s_axi_CTRL_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARADDR" *)
input wire [11 : 0] s_axi_CTRL_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARVALID" *)
input wire s_axi_CTRL_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARREADY" *)
output wire s_axi_CTRL_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RDATA" *)
output wire [31 : 0] s_axi_CTRL_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RRESP" *)
output wire [1 : 0] s_axi_CTRL_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RVALID" *)
output wire s_axi_CTRL_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RREADY" *)
input wire s_axi_CTRL_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TVALID" *)
input wire inStream_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TREADY" *)
output wire inStream_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TDATA" *)
input wire [31 : 0] inStream_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TDEST" *)
input wire [5 : 0] inStream_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TKEEP" *)
input wire [3 : 0] inStream_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TSTRB" *)
input wire [3 : 0] inStream_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TUSER" *)
input wire [1 : 0] inStream_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TLAST" *)
input wire [0 : 0] inStream_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TID" *)
input wire [4 : 0] inStream_TID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TVALID" *)
output wire outStream_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TREADY" *)
input wire outStream_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TDATA" *)
output wire [31 : 0] outStream_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TDEST" *)
output wire [5 : 0] outStream_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TKEEP" *)
output wire [3 : 0] outStream_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TSTRB" *)
output wire [3 : 0] outStream_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TUSER" *)
output wire [1 : 0] outStream_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TLAST" *)
output wire [0 : 0] outStream_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TID" *)
output wire [4 : 0] outStream_TID;

  cnn_fc_i50_o10 #(
    .C_S_AXI_CTRL_ADDR_WIDTH(12),
    .C_S_AXI_CTRL_DATA_WIDTH(32)
  ) inst (
    .s_axi_CTRL_AWADDR(s_axi_CTRL_AWADDR),
    .s_axi_CTRL_AWVALID(s_axi_CTRL_AWVALID),
    .s_axi_CTRL_AWREADY(s_axi_CTRL_AWREADY),
    .s_axi_CTRL_WDATA(s_axi_CTRL_WDATA),
    .s_axi_CTRL_WSTRB(s_axi_CTRL_WSTRB),
    .s_axi_CTRL_WVALID(s_axi_CTRL_WVALID),
    .s_axi_CTRL_WREADY(s_axi_CTRL_WREADY),
    .s_axi_CTRL_BRESP(s_axi_CTRL_BRESP),
    .s_axi_CTRL_BVALID(s_axi_CTRL_BVALID),
    .s_axi_CTRL_BREADY(s_axi_CTRL_BREADY),
    .s_axi_CTRL_ARADDR(s_axi_CTRL_ARADDR),
    .s_axi_CTRL_ARVALID(s_axi_CTRL_ARVALID),
    .s_axi_CTRL_ARREADY(s_axi_CTRL_ARREADY),
    .s_axi_CTRL_RDATA(s_axi_CTRL_RDATA),
    .s_axi_CTRL_RRESP(s_axi_CTRL_RRESP),
    .s_axi_CTRL_RVALID(s_axi_CTRL_RVALID),
    .s_axi_CTRL_RREADY(s_axi_CTRL_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .inStream_TVALID(inStream_TVALID),
    .inStream_TREADY(inStream_TREADY),
    .inStream_TDATA(inStream_TDATA),
    .inStream_TDEST(inStream_TDEST),
    .inStream_TKEEP(inStream_TKEEP),
    .inStream_TSTRB(inStream_TSTRB),
    .inStream_TUSER(inStream_TUSER),
    .inStream_TLAST(inStream_TLAST),
    .inStream_TID(inStream_TID),
    .outStream_TVALID(outStream_TVALID),
    .outStream_TREADY(outStream_TREADY),
    .outStream_TDATA(outStream_TDATA),
    .outStream_TDEST(outStream_TDEST),
    .outStream_TKEEP(outStream_TKEEP),
    .outStream_TSTRB(outStream_TSTRB),
    .outStream_TUSER(outStream_TUSER),
    .outStream_TLAST(outStream_TLAST),
    .outStream_TID(outStream_TID)
  );
endmodule
