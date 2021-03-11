-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Thu Mar 11 21:15:57 2021
-- Host        : Chaim running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/School/Project/new_repo/Vivado/conv_0/conv_0.srcs/sources_1/bd/design_1/ip/design_1_my_filter_buffer_0_0/design_1_my_filter_buffer_0_0_stub.vhdl
-- Design      : design_1_my_filter_buffer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_my_filter_buffer_0_0 is
  Port ( 
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_WREADY : out STD_LOGIC;
    s_axi_CTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_RVALID : out STD_LOGIC;
    s_axi_CTRL_RREADY : in STD_LOGIC;
    s_axi_KERNEL_BUS_AWADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_KERNEL_BUS_AWVALID : in STD_LOGIC;
    s_axi_KERNEL_BUS_AWREADY : out STD_LOGIC;
    s_axi_KERNEL_BUS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_KERNEL_BUS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_KERNEL_BUS_WVALID : in STD_LOGIC;
    s_axi_KERNEL_BUS_WREADY : out STD_LOGIC;
    s_axi_KERNEL_BUS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_KERNEL_BUS_BVALID : out STD_LOGIC;
    s_axi_KERNEL_BUS_BREADY : in STD_LOGIC;
    s_axi_KERNEL_BUS_ARADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_KERNEL_BUS_ARVALID : in STD_LOGIC;
    s_axi_KERNEL_BUS_ARREADY : out STD_LOGIC;
    s_axi_KERNEL_BUS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_KERNEL_BUS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_KERNEL_BUS_RVALID : out STD_LOGIC;
    s_axi_KERNEL_BUS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    in_stream_TVALID : in STD_LOGIC;
    in_stream_TREADY : out STD_LOGIC;
    in_stream_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_stream_TDEST : in STD_LOGIC_VECTOR ( 5 downto 0 );
    in_stream_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_stream_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_stream_TUSER : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_stream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    in_stream_TID : in STD_LOGIC_VECTOR ( 4 downto 0 );
    out_stream_TVALID : out STD_LOGIC;
    out_stream_TREADY : in STD_LOGIC;
    out_stream_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    out_stream_TDEST : out STD_LOGIC_VECTOR ( 5 downto 0 );
    out_stream_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    out_stream_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    out_stream_TUSER : out STD_LOGIC_VECTOR ( 1 downto 0 );
    out_stream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_stream_TID : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );

end design_1_my_filter_buffer_0_0;

architecture stub of design_1_my_filter_buffer_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_CTRL_AWADDR[4:0],s_axi_CTRL_AWVALID,s_axi_CTRL_AWREADY,s_axi_CTRL_WDATA[31:0],s_axi_CTRL_WSTRB[3:0],s_axi_CTRL_WVALID,s_axi_CTRL_WREADY,s_axi_CTRL_BRESP[1:0],s_axi_CTRL_BVALID,s_axi_CTRL_BREADY,s_axi_CTRL_ARADDR[4:0],s_axi_CTRL_ARVALID,s_axi_CTRL_ARREADY,s_axi_CTRL_RDATA[31:0],s_axi_CTRL_RRESP[1:0],s_axi_CTRL_RVALID,s_axi_CTRL_RREADY,s_axi_KERNEL_BUS_AWADDR[7:0],s_axi_KERNEL_BUS_AWVALID,s_axi_KERNEL_BUS_AWREADY,s_axi_KERNEL_BUS_WDATA[31:0],s_axi_KERNEL_BUS_WSTRB[3:0],s_axi_KERNEL_BUS_WVALID,s_axi_KERNEL_BUS_WREADY,s_axi_KERNEL_BUS_BRESP[1:0],s_axi_KERNEL_BUS_BVALID,s_axi_KERNEL_BUS_BREADY,s_axi_KERNEL_BUS_ARADDR[7:0],s_axi_KERNEL_BUS_ARVALID,s_axi_KERNEL_BUS_ARREADY,s_axi_KERNEL_BUS_RDATA[31:0],s_axi_KERNEL_BUS_RRESP[1:0],s_axi_KERNEL_BUS_RVALID,s_axi_KERNEL_BUS_RREADY,ap_clk,ap_rst_n,interrupt,in_stream_TVALID,in_stream_TREADY,in_stream_TDATA[31:0],in_stream_TDEST[5:0],in_stream_TKEEP[3:0],in_stream_TSTRB[3:0],in_stream_TUSER[1:0],in_stream_TLAST[0:0],in_stream_TID[4:0],out_stream_TVALID,out_stream_TREADY,out_stream_TDATA[31:0],out_stream_TDEST[5:0],out_stream_TKEEP[3:0],out_stream_TSTRB[3:0],out_stream_TUSER[1:0],out_stream_TLAST[0:0],out_stream_TID[4:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "my_filter_buffer,Vivado 2016.4";
begin
end;
