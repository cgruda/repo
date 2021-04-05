// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Mon Apr 05 15:59:40 2021
// Host        : Chaim running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_cnn_pool_d92x92_p2x2_0_0_sim_netlist.v
// Design      : design_1_cnn_pool_d92x92_p2x2_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_S_AXI_CTRL_ADDR_WIDTH = "5" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* C_S_AXI_CTRL_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ap_ST_fsm_pp0_stage0 = "9'b000000010" *) 
(* ap_ST_fsm_pp1_stage0 = "9'b000001000" *) (* ap_ST_fsm_pp2_stage0 = "9'b000100000" *) (* ap_ST_fsm_pp3_stage0 = "9'b010000000" *) 
(* ap_ST_fsm_state1 = "9'b000000001" *) (* ap_ST_fsm_state10 = "9'b001000000" *) (* ap_ST_fsm_state15 = "9'b100000000" *) 
(* ap_ST_fsm_state4 = "9'b000000100" *) (* ap_ST_fsm_state7 = "9'b000010000" *) (* ap_const_int64_8 = "8" *) 
(* ap_const_lv14_0 = "14'b00000000000000" *) (* ap_const_lv14_1 = "14'b00000000000001" *) (* ap_const_lv14_2110 = "14'b10000100010000" *) 
(* ap_const_lv21_0 = "21'b000000000000000000000" *) (* ap_const_lv2_0 = "2'b00" *) (* ap_const_lv2_1 = "2'b01" *) 
(* ap_const_lv2_2 = "2'b10" *) (* ap_const_lv2_3 = "2'b11" *) (* ap_const_lv32_0 = "0" *) 
(* ap_const_lv32_1 = "1" *) (* ap_const_lv32_15 = "21" *) (* ap_const_lv32_1F = "31" *) 
(* ap_const_lv32_2 = "2" *) (* ap_const_lv32_2110 = "8464" *) (* ap_const_lv32_3 = "3" *) 
(* ap_const_lv32_4 = "4" *) (* ap_const_lv32_5 = "5" *) (* ap_const_lv32_5E = "94" *) 
(* ap_const_lv32_6 = "6" *) (* ap_const_lv32_7 = "7" *) (* ap_const_lv32_8 = "8" *) 
(* ap_const_lv32_844 = "2116" *) (* ap_const_lv3_0 = "3'b000" *) (* ap_const_lv3_1 = "3'b001" *) 
(* ap_const_lv3_4 = "3'b100" *) (* ap_const_lv4_0 = "4'b0000" *) (* ap_const_lv4_F = "4'b1111" *) 
(* ap_const_lv5_0 = "5'b00000" *) (* ap_const_lv6_0 = "6'b000000" *) (* ap_const_lv7_0 = "7'b0000000" *) 
(* ap_const_lv7_1 = "7'b0000001" *) (* ap_const_lv7_5A = "7'b1011010" *) (* ap_const_lv7_5B = "7'b1011011" *) 
(* ap_const_lv7_5C = "7'b1011100" *) (* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d92x92_p2x2
   (ap_clk,
    ap_rst_n,
    inStream_TDATA,
    inStream_TVALID,
    inStream_TREADY,
    inStream_TKEEP,
    inStream_TSTRB,
    inStream_TUSER,
    inStream_TLAST,
    inStream_TID,
    inStream_TDEST,
    outStream_TDATA,
    outStream_TVALID,
    outStream_TREADY,
    outStream_TKEEP,
    outStream_TSTRB,
    outStream_TUSER,
    outStream_TLAST,
    outStream_TID,
    outStream_TDEST,
    s_axi_CTRL_AWVALID,
    s_axi_CTRL_AWREADY,
    s_axi_CTRL_AWADDR,
    s_axi_CTRL_WVALID,
    s_axi_CTRL_WREADY,
    s_axi_CTRL_WDATA,
    s_axi_CTRL_WSTRB,
    s_axi_CTRL_ARVALID,
    s_axi_CTRL_ARREADY,
    s_axi_CTRL_ARADDR,
    s_axi_CTRL_RVALID,
    s_axi_CTRL_RREADY,
    s_axi_CTRL_RDATA,
    s_axi_CTRL_RRESP,
    s_axi_CTRL_BVALID,
    s_axi_CTRL_BREADY,
    s_axi_CTRL_BRESP,
    interrupt);
  input ap_clk;
  input ap_rst_n;
  input [31:0]inStream_TDATA;
  input inStream_TVALID;
  output inStream_TREADY;
  input [3:0]inStream_TKEEP;
  input [3:0]inStream_TSTRB;
  input [1:0]inStream_TUSER;
  input [0:0]inStream_TLAST;
  input [4:0]inStream_TID;
  input [5:0]inStream_TDEST;
  output [31:0]outStream_TDATA;
  output outStream_TVALID;
  input outStream_TREADY;
  output [3:0]outStream_TKEEP;
  output [3:0]outStream_TSTRB;
  output [1:0]outStream_TUSER;
  output [0:0]outStream_TLAST;
  output [4:0]outStream_TID;
  output [5:0]outStream_TDEST;
  input s_axi_CTRL_AWVALID;
  output s_axi_CTRL_AWREADY;
  input [4:0]s_axi_CTRL_AWADDR;
  input s_axi_CTRL_WVALID;
  output s_axi_CTRL_WREADY;
  input [31:0]s_axi_CTRL_WDATA;
  input [3:0]s_axi_CTRL_WSTRB;
  input s_axi_CTRL_ARVALID;
  output s_axi_CTRL_ARREADY;
  input [4:0]s_axi_CTRL_ARADDR;
  output s_axi_CTRL_RVALID;
  input s_axi_CTRL_RREADY;
  output [31:0]s_axi_CTRL_RDATA;
  output [1:0]s_axi_CTRL_RRESP;
  output s_axi_CTRL_BVALID;
  input s_axi_CTRL_BREADY;
  output [1:0]s_axi_CTRL_BRESP;
  output interrupt;

  wire \<const0> ;
  wire \<const1> ;
  wire \ap_CS_fsm[1]_i_3_n_0 ;
  wire \ap_CS_fsm[2]_i_3_n_0 ;
  wire \ap_CS_fsm[2]_i_4_n_0 ;
  wire \ap_CS_fsm[2]_i_5_n_0 ;
  wire \ap_CS_fsm[2]_i_6_n_0 ;
  wire \ap_CS_fsm[2]_i_7_n_0 ;
  wire \ap_CS_fsm[3]_i_2_n_0 ;
  wire \ap_CS_fsm[4]_i_1_n_0 ;
  wire \ap_CS_fsm[4]_i_3_n_0 ;
  wire \ap_CS_fsm[4]_i_4_n_0 ;
  wire \ap_CS_fsm[4]_i_5_n_0 ;
  wire \ap_CS_fsm[4]_i_6_n_0 ;
  wire \ap_CS_fsm[4]_i_7_n_0 ;
  wire \ap_CS_fsm[6]_i_1_n_0 ;
  wire \ap_CS_fsm[8]_i_2_n_0 ;
  wire \ap_CS_fsm[8]_i_3_n_0 ;
  wire ap_CS_fsm_pp0_stage0;
  wire ap_CS_fsm_pp1_stage0;
  wire ap_CS_fsm_pp2_stage0;
  wire ap_CS_fsm_pp3_stage0;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state10;
  wire ap_CS_fsm_state15;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state7;
  wire [8:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp1_iter0;
  wire ap_enable_reg_pp1_iter0_i_1_n_0;
  wire ap_enable_reg_pp1_iter1;
  wire ap_enable_reg_pp1_iter1_i_1_n_0;
  wire ap_enable_reg_pp2_iter0;
  wire ap_enable_reg_pp2_iter0_i_1_n_0;
  wire ap_enable_reg_pp2_iter0_i_2_n_0;
  wire ap_enable_reg_pp2_iter1;
  wire ap_enable_reg_pp2_iter10;
  wire ap_enable_reg_pp2_iter1_i_1_n_0;
  wire ap_enable_reg_pp3_iter0;
  wire ap_enable_reg_pp3_iter0_i_1_n_0;
  wire ap_enable_reg_pp3_iter1_i_1_n_0;
  wire ap_enable_reg_pp3_iter1_reg_n_0;
  wire ap_enable_reg_pp3_iter2;
  wire ap_enable_reg_pp3_iter2_i_1_n_0;
  wire ap_enable_reg_pp3_iter3_i_1_n_0;
  wire ap_enable_reg_pp3_iter3_reg_n_0;
  wire \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ;
  wire [6:0]ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1032;
  wire ap_pipeline_reg_pp3_iter1_tmp_reg_1022;
  wire ap_pipeline_reg_pp3_iter2_tmp_reg_1022;
  wire \ap_pipeline_reg_pp3_iter2_tmp_reg_1022[0]_i_1_n_0 ;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire cnn_pool_d92x92_p2x2_CTRL_s_axi_U_n_11;
  wire cnn_pool_d92x92_p2x2_CTRL_s_axi_U_n_12;
  wire cnn_pool_d92x92_p2x2_CTRL_s_axi_U_n_13;
  wire cnn_pool_d92x92_p2x2_CTRL_s_axi_U_n_7;
  wire \cond1_reg_938[0]_i_1_n_0 ;
  wire \cond1_reg_938_reg_n_0_[0] ;
  wire \cond_mid2_reg_922[0]_i_1_n_0 ;
  wire \cond_mid2_reg_922[0]_i_2_n_0 ;
  wire \cond_mid2_reg_922[0]_i_4_n_0 ;
  wire \cond_mid2_reg_922_reg_n_0_[0] ;
  wire ctrl_read_reg_880;
  wire exitcond1_fu_430_p2;
  wire \exitcond1_reg_885[0]_i_1_n_0 ;
  wire \exitcond1_reg_885_reg_n_0_[0] ;
  wire exitcond4_fu_447_p2;
  wire \exitcond4_reg_894[0]_i_1_n_0 ;
  wire \exitcond4_reg_894_reg_n_0_[0] ;
  wire exitcond_flatten8_fu_604_p2;
  wire \exitcond_flatten8_reg_1008[0]_i_3_n_0 ;
  wire \exitcond_flatten8_reg_1008[0]_i_4_n_0 ;
  wire \exitcond_flatten8_reg_1008_reg_n_0_[0] ;
  wire exitcond_flatten_reg_903;
  wire \exitcond_flatten_reg_903[0]_i_1_n_0 ;
  wire [31:0]inStream_TDATA;
  wire inStream_TREADY;
  wire inStream_TVALID;
  wire inStream_V_data_V_0_ack_in;
  wire [31:0]inStream_V_data_V_0_data_out;
  wire inStream_V_data_V_0_load_A;
  wire inStream_V_data_V_0_load_B;
  wire [31:0]inStream_V_data_V_0_payload_A;
  wire [31:0]inStream_V_data_V_0_payload_B;
  wire inStream_V_data_V_0_sel;
  wire inStream_V_data_V_0_sel0;
  wire inStream_V_data_V_0_sel2;
  wire inStream_V_data_V_0_sel_rd_i_1_n_0;
  wire inStream_V_data_V_0_sel_wr;
  wire inStream_V_data_V_0_sel_wr_i_1_n_0;
  wire [1:1]inStream_V_data_V_0_state;
  wire \inStream_V_data_V_0_state[0]_i_1_n_0 ;
  wire \inStream_V_data_V_0_state[0]_i_2_n_0 ;
  wire \inStream_V_data_V_0_state_reg_n_0_[0] ;
  wire [1:1]inStream_V_dest_V_0_state;
  wire \inStream_V_dest_V_0_state[0]_i_1_n_0 ;
  wire \inStream_V_dest_V_0_state_reg_n_0_[0] ;
  wire indvar_flatten6_reg_368;
  wire \indvar_flatten6_reg_368[0]_i_2_n_0 ;
  wire \indvar_flatten6_reg_368[0]_i_3_n_0 ;
  wire \indvar_flatten6_reg_368[0]_i_4_n_0 ;
  wire \indvar_flatten6_reg_368[0]_i_5_n_0 ;
  wire \indvar_flatten6_reg_368[12]_i_2_n_0 ;
  wire \indvar_flatten6_reg_368[12]_i_3_n_0 ;
  wire \indvar_flatten6_reg_368[4]_i_2_n_0 ;
  wire \indvar_flatten6_reg_368[4]_i_3_n_0 ;
  wire \indvar_flatten6_reg_368[4]_i_4_n_0 ;
  wire \indvar_flatten6_reg_368[4]_i_5_n_0 ;
  wire \indvar_flatten6_reg_368[8]_i_2_n_0 ;
  wire \indvar_flatten6_reg_368[8]_i_3_n_0 ;
  wire \indvar_flatten6_reg_368[8]_i_4_n_0 ;
  wire \indvar_flatten6_reg_368[8]_i_5_n_0 ;
  wire [13:0]indvar_flatten6_reg_368_reg;
  wire \indvar_flatten6_reg_368_reg[0]_i_1_n_0 ;
  wire \indvar_flatten6_reg_368_reg[0]_i_1_n_1 ;
  wire \indvar_flatten6_reg_368_reg[0]_i_1_n_2 ;
  wire \indvar_flatten6_reg_368_reg[0]_i_1_n_3 ;
  wire \indvar_flatten6_reg_368_reg[0]_i_1_n_4 ;
  wire \indvar_flatten6_reg_368_reg[0]_i_1_n_5 ;
  wire \indvar_flatten6_reg_368_reg[0]_i_1_n_6 ;
  wire \indvar_flatten6_reg_368_reg[0]_i_1_n_7 ;
  wire \indvar_flatten6_reg_368_reg[12]_i_1_n_3 ;
  wire \indvar_flatten6_reg_368_reg[12]_i_1_n_6 ;
  wire \indvar_flatten6_reg_368_reg[12]_i_1_n_7 ;
  wire \indvar_flatten6_reg_368_reg[4]_i_1_n_0 ;
  wire \indvar_flatten6_reg_368_reg[4]_i_1_n_1 ;
  wire \indvar_flatten6_reg_368_reg[4]_i_1_n_2 ;
  wire \indvar_flatten6_reg_368_reg[4]_i_1_n_3 ;
  wire \indvar_flatten6_reg_368_reg[4]_i_1_n_4 ;
  wire \indvar_flatten6_reg_368_reg[4]_i_1_n_5 ;
  wire \indvar_flatten6_reg_368_reg[4]_i_1_n_6 ;
  wire \indvar_flatten6_reg_368_reg[4]_i_1_n_7 ;
  wire \indvar_flatten6_reg_368_reg[8]_i_1_n_0 ;
  wire \indvar_flatten6_reg_368_reg[8]_i_1_n_1 ;
  wire \indvar_flatten6_reg_368_reg[8]_i_1_n_2 ;
  wire \indvar_flatten6_reg_368_reg[8]_i_1_n_3 ;
  wire \indvar_flatten6_reg_368_reg[8]_i_1_n_4 ;
  wire \indvar_flatten6_reg_368_reg[8]_i_1_n_5 ;
  wire \indvar_flatten6_reg_368_reg[8]_i_1_n_6 ;
  wire \indvar_flatten6_reg_368_reg[8]_i_1_n_7 ;
  wire [2:0]indvar_flatten_next_fu_470_p2;
  wire [2:0]indvar_flatten_reg_311;
  wire indvar_flatten_reg_3110;
  wire interrupt;
  wire lineBuffer_0_addr_2_reg_10260;
  wire \lineBuffer_0_addr_2_reg_1026[2]_i_1_n_0 ;
  wire \lineBuffer_0_addr_2_reg_1026[3]_i_1_n_0 ;
  wire \lineBuffer_0_addr_2_reg_1026[4]_i_1_n_0 ;
  wire [31:0]lineBuffer_0_q0;
  wire lineBuffer_0_we0;
  wire lineBuffer_0_we1;
  wire lineBuffer_1_U_n_65;
  wire lineBuffer_1_U_n_66;
  wire lineBuffer_1_U_n_68;
  wire lineBuffer_1_U_n_69;
  wire lineBuffer_1_U_n_70;
  wire lineBuffer_1_U_n_71;
  wire [6:0]lineBuffer_1_addr_2_reg_1032;
  wire [31:0]lineBuffer_1_q0;
  wire lineBuffer_1_we0;
  wire [31:0]maxValue_17_0_maxVal_fu_737_p3;
  wire [31:0]maxValue_17_0_maxVal_reg_1047;
  wire maxValue_17_0_maxVal_reg_10470;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_100_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_101_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_102_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_103_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_104_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_105_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_106_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_10_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_11_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_12_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_13_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_15_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_16_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_17_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_18_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_19_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_20_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_21_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_22_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_24_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_25_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_26_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_27_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_28_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_29_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_30_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_31_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_32_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_33_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_34_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_35_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_36_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_37_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_38_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_39_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_41_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_42_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_43_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_44_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_45_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_46_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_47_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_48_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_50_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_51_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_52_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_53_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_54_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_55_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_56_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_57_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_58_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_59_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_60_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_61_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_62_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_63_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_64_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_65_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_67_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_68_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_69_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_6_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_70_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_71_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_72_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_73_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_74_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_75_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_76_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_77_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_78_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_79_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_7_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_80_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_81_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_82_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_83_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_84_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_85_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_86_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_87_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_88_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_89_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_8_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_90_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_91_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_92_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_93_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_94_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_95_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_96_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_97_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_98_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_99_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047[31]_i_9_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_14_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_14_n_1 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_14_n_2 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_14_n_3 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_23_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_23_n_1 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_23_n_2 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_23_n_3 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_1 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_2 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_3 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_40_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_40_n_1 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_40_n_2 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_40_n_3 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_49_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_49_n_1 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_49_n_2 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_49_n_3 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_1 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_2 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_3 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_5_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_5_n_1 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_5_n_2 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_5_n_3 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_66_n_0 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_66_n_1 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_66_n_2 ;
  wire \maxValue_17_0_maxVal_reg_1047_reg[31]_i_66_n_3 ;
  wire [31:0]outStream_TDATA;
  wire [0:0]outStream_TLAST;
  wire outStream_TREADY;
  wire outStream_TVALID;
  wire outStream_V_data_V_1_ack_in;
  wire outStream_V_data_V_1_load_A;
  wire outStream_V_data_V_1_load_B;
  wire [31:0]outStream_V_data_V_1_payload_A;
  wire \outStream_V_data_V_1_payload_A[10]_i_2_n_0 ;
  wire \outStream_V_data_V_1_payload_A[11]_i_2_n_0 ;
  wire \outStream_V_data_V_1_payload_A[12]_i_3_n_0 ;
  wire \outStream_V_data_V_1_payload_A[12]_i_4_n_0 ;
  wire \outStream_V_data_V_1_payload_A[12]_i_5_n_0 ;
  wire \outStream_V_data_V_1_payload_A[12]_i_6_n_0 ;
  wire \outStream_V_data_V_1_payload_A[12]_i_7_n_0 ;
  wire \outStream_V_data_V_1_payload_A[13]_i_2_n_0 ;
  wire \outStream_V_data_V_1_payload_A[14]_i_2_n_0 ;
  wire \outStream_V_data_V_1_payload_A[15]_i_2_n_0 ;
  wire \outStream_V_data_V_1_payload_A[16]_i_3_n_0 ;
  wire \outStream_V_data_V_1_payload_A[16]_i_4_n_0 ;
  wire \outStream_V_data_V_1_payload_A[16]_i_5_n_0 ;
  wire \outStream_V_data_V_1_payload_A[16]_i_6_n_0 ;
  wire \outStream_V_data_V_1_payload_A[16]_i_7_n_0 ;
  wire \outStream_V_data_V_1_payload_A[17]_i_2_n_0 ;
  wire \outStream_V_data_V_1_payload_A[18]_i_2_n_0 ;
  wire \outStream_V_data_V_1_payload_A[19]_i_2_n_0 ;
  wire \outStream_V_data_V_1_payload_A[1]_i_2_n_0 ;
  wire \outStream_V_data_V_1_payload_A[2]_i_2_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_10_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_11_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_12_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_13_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_14_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_15_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_16_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_18_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_19_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_20_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_21_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_22_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_23_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_24_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_25_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_27_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_28_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_29_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_30_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_31_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_32_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_33_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_34_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_35_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_36_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_37_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_38_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_39_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_40_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_41_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_42_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_5_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_6_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_7_n_0 ;
  wire \outStream_V_data_V_1_payload_A[31]_i_9_n_0 ;
  wire \outStream_V_data_V_1_payload_A[3]_i_2_n_0 ;
  wire \outStream_V_data_V_1_payload_A[4]_i_3_n_0 ;
  wire \outStream_V_data_V_1_payload_A[4]_i_4_n_0 ;
  wire \outStream_V_data_V_1_payload_A[4]_i_5_n_0 ;
  wire \outStream_V_data_V_1_payload_A[4]_i_6_n_0 ;
  wire \outStream_V_data_V_1_payload_A[4]_i_7_n_0 ;
  wire \outStream_V_data_V_1_payload_A[4]_i_8_n_0 ;
  wire \outStream_V_data_V_1_payload_A[5]_i_2_n_0 ;
  wire \outStream_V_data_V_1_payload_A[6]_i_2_n_0 ;
  wire \outStream_V_data_V_1_payload_A[7]_i_2_n_0 ;
  wire \outStream_V_data_V_1_payload_A[8]_i_3_n_0 ;
  wire \outStream_V_data_V_1_payload_A[8]_i_4_n_0 ;
  wire \outStream_V_data_V_1_payload_A[8]_i_5_n_0 ;
  wire \outStream_V_data_V_1_payload_A[8]_i_6_n_0 ;
  wire \outStream_V_data_V_1_payload_A[8]_i_7_n_0 ;
  wire \outStream_V_data_V_1_payload_A[9]_i_2_n_0 ;
  wire \outStream_V_data_V_1_payload_A_reg[12]_i_2_n_0 ;
  wire \outStream_V_data_V_1_payload_A_reg[12]_i_2_n_1 ;
  wire \outStream_V_data_V_1_payload_A_reg[12]_i_2_n_2 ;
  wire \outStream_V_data_V_1_payload_A_reg[12]_i_2_n_3 ;
  wire \outStream_V_data_V_1_payload_A_reg[16]_i_2_n_0 ;
  wire \outStream_V_data_V_1_payload_A_reg[16]_i_2_n_1 ;
  wire \outStream_V_data_V_1_payload_A_reg[16]_i_2_n_2 ;
  wire \outStream_V_data_V_1_payload_A_reg[16]_i_2_n_3 ;
  wire \outStream_V_data_V_1_payload_A_reg[31]_i_17_n_0 ;
  wire \outStream_V_data_V_1_payload_A_reg[31]_i_17_n_1 ;
  wire \outStream_V_data_V_1_payload_A_reg[31]_i_17_n_2 ;
  wire \outStream_V_data_V_1_payload_A_reg[31]_i_17_n_3 ;
  wire \outStream_V_data_V_1_payload_A_reg[31]_i_26_n_0 ;
  wire \outStream_V_data_V_1_payload_A_reg[31]_i_26_n_1 ;
  wire \outStream_V_data_V_1_payload_A_reg[31]_i_26_n_2 ;
  wire \outStream_V_data_V_1_payload_A_reg[31]_i_26_n_3 ;
  wire \outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0 ;
  wire \outStream_V_data_V_1_payload_A_reg[31]_i_3_n_2 ;
  wire \outStream_V_data_V_1_payload_A_reg[31]_i_3_n_3 ;
  wire \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ;
  wire \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_1 ;
  wire \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_2 ;
  wire \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_3 ;
  wire \outStream_V_data_V_1_payload_A_reg[31]_i_8_n_0 ;
  wire \outStream_V_data_V_1_payload_A_reg[31]_i_8_n_1 ;
  wire \outStream_V_data_V_1_payload_A_reg[31]_i_8_n_2 ;
  wire \outStream_V_data_V_1_payload_A_reg[31]_i_8_n_3 ;
  wire \outStream_V_data_V_1_payload_A_reg[4]_i_2_n_0 ;
  wire \outStream_V_data_V_1_payload_A_reg[4]_i_2_n_1 ;
  wire \outStream_V_data_V_1_payload_A_reg[4]_i_2_n_2 ;
  wire \outStream_V_data_V_1_payload_A_reg[4]_i_2_n_3 ;
  wire \outStream_V_data_V_1_payload_A_reg[8]_i_2_n_0 ;
  wire \outStream_V_data_V_1_payload_A_reg[8]_i_2_n_1 ;
  wire \outStream_V_data_V_1_payload_A_reg[8]_i_2_n_2 ;
  wire \outStream_V_data_V_1_payload_A_reg[8]_i_2_n_3 ;
  wire [31:0]outStream_V_data_V_1_payload_B;
  wire outStream_V_data_V_1_sel;
  wire outStream_V_data_V_1_sel_rd_i_1_n_0;
  wire outStream_V_data_V_1_sel_wr;
  wire outStream_V_data_V_1_sel_wr052_out;
  wire outStream_V_data_V_1_sel_wr_i_1_n_0;
  wire \outStream_V_data_V_1_state[0]_i_1_n_0 ;
  wire \outStream_V_data_V_1_state[1]_i_1_n_0 ;
  wire \outStream_V_data_V_1_state_reg_n_0_[0] ;
  wire outStream_V_dest_V_1_ack_in;
  wire \outStream_V_dest_V_1_state[0]_i_1_n_0 ;
  wire \outStream_V_dest_V_1_state[1]_i_1_n_0 ;
  wire outStream_V_id_V_1_ack_in;
  wire \outStream_V_id_V_1_state[0]_i_1_n_0 ;
  wire \outStream_V_id_V_1_state[1]_i_1_n_0 ;
  wire \outStream_V_id_V_1_state_reg_n_0_[0] ;
  wire outStream_V_keep_V_1_ack_in;
  wire \outStream_V_keep_V_1_state[0]_i_1_n_0 ;
  wire \outStream_V_keep_V_1_state[1]_i_1_n_0 ;
  wire \outStream_V_keep_V_1_state_reg_n_0_[0] ;
  wire outStream_V_last_V_1_ack_in;
  wire outStream_V_last_V_1_load_A;
  wire outStream_V_last_V_1_load_B;
  wire outStream_V_last_V_1_payload_A;
  wire \outStream_V_last_V_1_payload_A[0]_i_11_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_14_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_17_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_18_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_19_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_1_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_20_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_21_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_22_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_23_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_24_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_25_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_26_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_27_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_28_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_29_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_2_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_30_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_31_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_32_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_33_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_34_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_35_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_36_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_37_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_38_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_39_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_3_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_40_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_41_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_42_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_43_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_44_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_45_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_46_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_47_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_48_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_49_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_4_n_0 ;
  wire \outStream_V_last_V_1_payload_A[0]_i_5_n_0 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_10_n_0 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_10_n_1 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_10_n_2 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_10_n_3 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_12_n_2 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_12_n_3 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_13_n_0 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_13_n_1 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_13_n_2 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_13_n_3 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_15_n_0 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_15_n_1 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_15_n_2 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_15_n_3 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_16_n_0 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_16_n_1 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_16_n_2 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_16_n_3 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_7_n_0 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_7_n_1 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_7_n_2 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_7_n_3 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_8_n_0 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_8_n_1 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_8_n_2 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_8_n_3 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_9_n_0 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_9_n_1 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_9_n_2 ;
  wire \outStream_V_last_V_1_payload_A_reg[0]_i_9_n_3 ;
  wire outStream_V_last_V_1_payload_B;
  wire \outStream_V_last_V_1_payload_B[0]_i_1_n_0 ;
  wire outStream_V_last_V_1_sel;
  wire outStream_V_last_V_1_sel_rd_i_1_n_0;
  wire outStream_V_last_V_1_sel_wr;
  wire outStream_V_last_V_1_sel_wr_i_1_n_0;
  wire \outStream_V_last_V_1_state[0]_i_1_n_0 ;
  wire \outStream_V_last_V_1_state[1]_i_1_n_0 ;
  wire \outStream_V_last_V_1_state_reg_n_0_[0] ;
  wire outStream_V_strb_V_1_ack_in;
  wire \outStream_V_strb_V_1_state[0]_i_1_n_0 ;
  wire \outStream_V_strb_V_1_state[1]_i_1_n_0 ;
  wire \outStream_V_strb_V_1_state_reg_n_0_[0] ;
  wire outStream_V_user_V_1_ack_in;
  wire \outStream_V_user_V_1_state[0]_i_1_n_0 ;
  wire \outStream_V_user_V_1_state[1]_i_1_n_0 ;
  wire \outStream_V_user_V_1_state_reg_n_0_[0] ;
  wire p_0_in;
  wire p_69_in;
  wire p_72_in;
  wire p_76_in;
  wire p_81_in;
  wire readCount_1_fu_168;
  wire readCount_1_fu_1680;
  wire \readCount_1_fu_168[0]_i_4_n_0 ;
  wire \readCount_1_fu_168[0]_i_5_n_0 ;
  wire \readCount_1_fu_168[0]_i_6_n_0 ;
  wire \readCount_1_fu_168[0]_i_7_n_0 ;
  wire \readCount_1_fu_168[12]_i_2_n_0 ;
  wire \readCount_1_fu_168[12]_i_3_n_0 ;
  wire \readCount_1_fu_168[12]_i_4_n_0 ;
  wire \readCount_1_fu_168[12]_i_5_n_0 ;
  wire \readCount_1_fu_168[16]_i_2_n_0 ;
  wire \readCount_1_fu_168[16]_i_3_n_0 ;
  wire \readCount_1_fu_168[16]_i_4_n_0 ;
  wire \readCount_1_fu_168[16]_i_5_n_0 ;
  wire \readCount_1_fu_168[20]_i_2_n_0 ;
  wire \readCount_1_fu_168[20]_i_3_n_0 ;
  wire \readCount_1_fu_168[20]_i_4_n_0 ;
  wire \readCount_1_fu_168[20]_i_5_n_0 ;
  wire \readCount_1_fu_168[24]_i_2_n_0 ;
  wire \readCount_1_fu_168[24]_i_3_n_0 ;
  wire \readCount_1_fu_168[24]_i_4_n_0 ;
  wire \readCount_1_fu_168[24]_i_5_n_0 ;
  wire \readCount_1_fu_168[28]_i_2_n_0 ;
  wire \readCount_1_fu_168[28]_i_3_n_0 ;
  wire \readCount_1_fu_168[28]_i_4_n_0 ;
  wire \readCount_1_fu_168[28]_i_5_n_0 ;
  wire \readCount_1_fu_168[4]_i_2_n_0 ;
  wire \readCount_1_fu_168[4]_i_3_n_0 ;
  wire \readCount_1_fu_168[4]_i_4_n_0 ;
  wire \readCount_1_fu_168[4]_i_5_n_0 ;
  wire \readCount_1_fu_168[8]_i_2_n_0 ;
  wire \readCount_1_fu_168[8]_i_3_n_0 ;
  wire \readCount_1_fu_168[8]_i_4_n_0 ;
  wire \readCount_1_fu_168[8]_i_5_n_0 ;
  wire [31:4]readCount_1_fu_168_reg;
  wire \readCount_1_fu_168_reg[0]_i_3_n_0 ;
  wire \readCount_1_fu_168_reg[0]_i_3_n_1 ;
  wire \readCount_1_fu_168_reg[0]_i_3_n_2 ;
  wire \readCount_1_fu_168_reg[0]_i_3_n_3 ;
  wire \readCount_1_fu_168_reg[0]_i_3_n_4 ;
  wire \readCount_1_fu_168_reg[0]_i_3_n_5 ;
  wire \readCount_1_fu_168_reg[0]_i_3_n_6 ;
  wire \readCount_1_fu_168_reg[0]_i_3_n_7 ;
  wire \readCount_1_fu_168_reg[12]_i_1_n_0 ;
  wire \readCount_1_fu_168_reg[12]_i_1_n_1 ;
  wire \readCount_1_fu_168_reg[12]_i_1_n_2 ;
  wire \readCount_1_fu_168_reg[12]_i_1_n_3 ;
  wire \readCount_1_fu_168_reg[12]_i_1_n_4 ;
  wire \readCount_1_fu_168_reg[12]_i_1_n_5 ;
  wire \readCount_1_fu_168_reg[12]_i_1_n_6 ;
  wire \readCount_1_fu_168_reg[12]_i_1_n_7 ;
  wire \readCount_1_fu_168_reg[16]_i_1_n_0 ;
  wire \readCount_1_fu_168_reg[16]_i_1_n_1 ;
  wire \readCount_1_fu_168_reg[16]_i_1_n_2 ;
  wire \readCount_1_fu_168_reg[16]_i_1_n_3 ;
  wire \readCount_1_fu_168_reg[16]_i_1_n_4 ;
  wire \readCount_1_fu_168_reg[16]_i_1_n_5 ;
  wire \readCount_1_fu_168_reg[16]_i_1_n_6 ;
  wire \readCount_1_fu_168_reg[16]_i_1_n_7 ;
  wire \readCount_1_fu_168_reg[20]_i_1_n_0 ;
  wire \readCount_1_fu_168_reg[20]_i_1_n_1 ;
  wire \readCount_1_fu_168_reg[20]_i_1_n_2 ;
  wire \readCount_1_fu_168_reg[20]_i_1_n_3 ;
  wire \readCount_1_fu_168_reg[20]_i_1_n_4 ;
  wire \readCount_1_fu_168_reg[20]_i_1_n_5 ;
  wire \readCount_1_fu_168_reg[20]_i_1_n_6 ;
  wire \readCount_1_fu_168_reg[20]_i_1_n_7 ;
  wire \readCount_1_fu_168_reg[24]_i_1_n_0 ;
  wire \readCount_1_fu_168_reg[24]_i_1_n_1 ;
  wire \readCount_1_fu_168_reg[24]_i_1_n_2 ;
  wire \readCount_1_fu_168_reg[24]_i_1_n_3 ;
  wire \readCount_1_fu_168_reg[24]_i_1_n_4 ;
  wire \readCount_1_fu_168_reg[24]_i_1_n_5 ;
  wire \readCount_1_fu_168_reg[24]_i_1_n_6 ;
  wire \readCount_1_fu_168_reg[24]_i_1_n_7 ;
  wire \readCount_1_fu_168_reg[28]_i_1_n_1 ;
  wire \readCount_1_fu_168_reg[28]_i_1_n_2 ;
  wire \readCount_1_fu_168_reg[28]_i_1_n_3 ;
  wire \readCount_1_fu_168_reg[28]_i_1_n_4 ;
  wire \readCount_1_fu_168_reg[28]_i_1_n_5 ;
  wire \readCount_1_fu_168_reg[28]_i_1_n_6 ;
  wire \readCount_1_fu_168_reg[28]_i_1_n_7 ;
  wire \readCount_1_fu_168_reg[4]_i_1_n_0 ;
  wire \readCount_1_fu_168_reg[4]_i_1_n_1 ;
  wire \readCount_1_fu_168_reg[4]_i_1_n_2 ;
  wire \readCount_1_fu_168_reg[4]_i_1_n_3 ;
  wire \readCount_1_fu_168_reg[4]_i_1_n_4 ;
  wire \readCount_1_fu_168_reg[4]_i_1_n_5 ;
  wire \readCount_1_fu_168_reg[4]_i_1_n_6 ;
  wire \readCount_1_fu_168_reg[4]_i_1_n_7 ;
  wire \readCount_1_fu_168_reg[8]_i_1_n_0 ;
  wire \readCount_1_fu_168_reg[8]_i_1_n_1 ;
  wire \readCount_1_fu_168_reg[8]_i_1_n_2 ;
  wire \readCount_1_fu_168_reg[8]_i_1_n_3 ;
  wire \readCount_1_fu_168_reg[8]_i_1_n_4 ;
  wire \readCount_1_fu_168_reg[8]_i_1_n_5 ;
  wire \readCount_1_fu_168_reg[8]_i_1_n_6 ;
  wire \readCount_1_fu_168_reg[8]_i_1_n_7 ;
  wire \readCount_1_fu_168_reg_n_0_[0] ;
  wire \readCount_1_fu_168_reg_n_0_[1] ;
  wire \readCount_1_fu_168_reg_n_0_[2] ;
  wire \readCount_1_fu_168_reg_n_0_[3] ;
  wire [19:0]result_fu_797_p3;
  wire [19:0]result_reg_1058;
  wire result_reg_10580;
  wire \result_reg_1058[13]_i_10_n_0 ;
  wire \result_reg_1058[13]_i_11_n_0 ;
  wire \result_reg_1058[13]_i_12_n_0 ;
  wire \result_reg_1058[13]_i_13_n_0 ;
  wire \result_reg_1058[13]_i_14_n_0 ;
  wire \result_reg_1058[13]_i_15_n_0 ;
  wire \result_reg_1058[13]_i_16_n_0 ;
  wire \result_reg_1058[13]_i_17_n_0 ;
  wire \result_reg_1058[13]_i_18_n_0 ;
  wire \result_reg_1058[13]_i_19_n_0 ;
  wire \result_reg_1058[13]_i_4_n_0 ;
  wire \result_reg_1058[13]_i_5_n_0 ;
  wire \result_reg_1058[13]_i_6_n_0 ;
  wire \result_reg_1058[13]_i_7_n_0 ;
  wire \result_reg_1058[13]_i_8_n_0 ;
  wire \result_reg_1058[13]_i_9_n_0 ;
  wire \result_reg_1058[17]_i_10_n_0 ;
  wire \result_reg_1058[17]_i_11_n_0 ;
  wire \result_reg_1058[17]_i_12_n_0 ;
  wire \result_reg_1058[17]_i_13_n_0 ;
  wire \result_reg_1058[17]_i_14_n_0 ;
  wire \result_reg_1058[17]_i_15_n_0 ;
  wire \result_reg_1058[17]_i_16_n_0 ;
  wire \result_reg_1058[17]_i_17_n_0 ;
  wire \result_reg_1058[17]_i_18_n_0 ;
  wire \result_reg_1058[17]_i_19_n_0 ;
  wire \result_reg_1058[17]_i_4_n_0 ;
  wire \result_reg_1058[17]_i_5_n_0 ;
  wire \result_reg_1058[17]_i_6_n_0 ;
  wire \result_reg_1058[17]_i_7_n_0 ;
  wire \result_reg_1058[17]_i_8_n_0 ;
  wire \result_reg_1058[17]_i_9_n_0 ;
  wire \result_reg_1058[19]_i_10_n_0 ;
  wire \result_reg_1058[19]_i_11_n_0 ;
  wire \result_reg_1058[19]_i_12_n_0 ;
  wire \result_reg_1058[19]_i_13_n_0 ;
  wire \result_reg_1058[19]_i_14_n_0 ;
  wire \result_reg_1058[19]_i_15_n_0 ;
  wire \result_reg_1058[19]_i_16_n_0 ;
  wire \result_reg_1058[19]_i_17_n_0 ;
  wire \result_reg_1058[19]_i_4_n_0 ;
  wire \result_reg_1058[19]_i_5_n_0 ;
  wire \result_reg_1058[19]_i_6_n_0 ;
  wire \result_reg_1058[19]_i_7_n_0 ;
  wire \result_reg_1058[19]_i_8_n_0 ;
  wire \result_reg_1058[19]_i_9_n_0 ;
  wire \result_reg_1058[1]_i_10_n_0 ;
  wire \result_reg_1058[1]_i_11_n_0 ;
  wire \result_reg_1058[1]_i_12_n_0 ;
  wire \result_reg_1058[1]_i_13_n_0 ;
  wire \result_reg_1058[1]_i_14_n_0 ;
  wire \result_reg_1058[1]_i_15_n_0 ;
  wire \result_reg_1058[1]_i_4_n_0 ;
  wire \result_reg_1058[1]_i_5_n_0 ;
  wire \result_reg_1058[1]_i_6_n_0 ;
  wire \result_reg_1058[1]_i_7_n_0 ;
  wire \result_reg_1058[1]_i_8_n_0 ;
  wire \result_reg_1058[1]_i_9_n_0 ;
  wire \result_reg_1058[5]_i_10_n_0 ;
  wire \result_reg_1058[5]_i_11_n_0 ;
  wire \result_reg_1058[5]_i_12_n_0 ;
  wire \result_reg_1058[5]_i_13_n_0 ;
  wire \result_reg_1058[5]_i_14_n_0 ;
  wire \result_reg_1058[5]_i_15_n_0 ;
  wire \result_reg_1058[5]_i_16_n_0 ;
  wire \result_reg_1058[5]_i_17_n_0 ;
  wire \result_reg_1058[5]_i_18_n_0 ;
  wire \result_reg_1058[5]_i_19_n_0 ;
  wire \result_reg_1058[5]_i_4_n_0 ;
  wire \result_reg_1058[5]_i_5_n_0 ;
  wire \result_reg_1058[5]_i_6_n_0 ;
  wire \result_reg_1058[5]_i_7_n_0 ;
  wire \result_reg_1058[5]_i_8_n_0 ;
  wire \result_reg_1058[5]_i_9_n_0 ;
  wire \result_reg_1058[9]_i_10_n_0 ;
  wire \result_reg_1058[9]_i_11_n_0 ;
  wire \result_reg_1058[9]_i_12_n_0 ;
  wire \result_reg_1058[9]_i_13_n_0 ;
  wire \result_reg_1058[9]_i_14_n_0 ;
  wire \result_reg_1058[9]_i_15_n_0 ;
  wire \result_reg_1058[9]_i_16_n_0 ;
  wire \result_reg_1058[9]_i_17_n_0 ;
  wire \result_reg_1058[9]_i_18_n_0 ;
  wire \result_reg_1058[9]_i_19_n_0 ;
  wire \result_reg_1058[9]_i_4_n_0 ;
  wire \result_reg_1058[9]_i_5_n_0 ;
  wire \result_reg_1058[9]_i_6_n_0 ;
  wire \result_reg_1058[9]_i_7_n_0 ;
  wire \result_reg_1058[9]_i_8_n_0 ;
  wire \result_reg_1058[9]_i_9_n_0 ;
  wire \result_reg_1058_reg[13]_i_2_n_0 ;
  wire \result_reg_1058_reg[13]_i_2_n_1 ;
  wire \result_reg_1058_reg[13]_i_2_n_2 ;
  wire \result_reg_1058_reg[13]_i_2_n_3 ;
  wire \result_reg_1058_reg[13]_i_3_n_0 ;
  wire \result_reg_1058_reg[13]_i_3_n_1 ;
  wire \result_reg_1058_reg[13]_i_3_n_2 ;
  wire \result_reg_1058_reg[13]_i_3_n_3 ;
  wire \result_reg_1058_reg[13]_i_3_n_4 ;
  wire \result_reg_1058_reg[13]_i_3_n_5 ;
  wire \result_reg_1058_reg[13]_i_3_n_6 ;
  wire \result_reg_1058_reg[13]_i_3_n_7 ;
  wire \result_reg_1058_reg[17]_i_2_n_0 ;
  wire \result_reg_1058_reg[17]_i_2_n_1 ;
  wire \result_reg_1058_reg[17]_i_2_n_2 ;
  wire \result_reg_1058_reg[17]_i_2_n_3 ;
  wire \result_reg_1058_reg[17]_i_3_n_0 ;
  wire \result_reg_1058_reg[17]_i_3_n_1 ;
  wire \result_reg_1058_reg[17]_i_3_n_2 ;
  wire \result_reg_1058_reg[17]_i_3_n_3 ;
  wire \result_reg_1058_reg[17]_i_3_n_4 ;
  wire \result_reg_1058_reg[17]_i_3_n_5 ;
  wire \result_reg_1058_reg[17]_i_3_n_6 ;
  wire \result_reg_1058_reg[17]_i_3_n_7 ;
  wire \result_reg_1058_reg[19]_i_2_n_3 ;
  wire \result_reg_1058_reg[19]_i_3_n_0 ;
  wire \result_reg_1058_reg[19]_i_3_n_1 ;
  wire \result_reg_1058_reg[19]_i_3_n_2 ;
  wire \result_reg_1058_reg[19]_i_3_n_3 ;
  wire \result_reg_1058_reg[19]_i_3_n_6 ;
  wire \result_reg_1058_reg[19]_i_3_n_7 ;
  wire \result_reg_1058_reg[1]_i_2_n_0 ;
  wire \result_reg_1058_reg[1]_i_2_n_1 ;
  wire \result_reg_1058_reg[1]_i_2_n_2 ;
  wire \result_reg_1058_reg[1]_i_2_n_3 ;
  wire \result_reg_1058_reg[1]_i_3_n_0 ;
  wire \result_reg_1058_reg[1]_i_3_n_1 ;
  wire \result_reg_1058_reg[1]_i_3_n_2 ;
  wire \result_reg_1058_reg[1]_i_3_n_3 ;
  wire \result_reg_1058_reg[1]_i_3_n_4 ;
  wire \result_reg_1058_reg[1]_i_3_n_5 ;
  wire \result_reg_1058_reg[1]_i_3_n_6 ;
  wire \result_reg_1058_reg[1]_i_3_n_7 ;
  wire \result_reg_1058_reg[5]_i_2_n_0 ;
  wire \result_reg_1058_reg[5]_i_2_n_1 ;
  wire \result_reg_1058_reg[5]_i_2_n_2 ;
  wire \result_reg_1058_reg[5]_i_2_n_3 ;
  wire \result_reg_1058_reg[5]_i_3_n_0 ;
  wire \result_reg_1058_reg[5]_i_3_n_1 ;
  wire \result_reg_1058_reg[5]_i_3_n_2 ;
  wire \result_reg_1058_reg[5]_i_3_n_3 ;
  wire \result_reg_1058_reg[5]_i_3_n_4 ;
  wire \result_reg_1058_reg[5]_i_3_n_5 ;
  wire \result_reg_1058_reg[5]_i_3_n_6 ;
  wire \result_reg_1058_reg[5]_i_3_n_7 ;
  wire \result_reg_1058_reg[9]_i_2_n_0 ;
  wire \result_reg_1058_reg[9]_i_2_n_1 ;
  wire \result_reg_1058_reg[9]_i_2_n_2 ;
  wire \result_reg_1058_reg[9]_i_2_n_3 ;
  wire \result_reg_1058_reg[9]_i_3_n_0 ;
  wire \result_reg_1058_reg[9]_i_3_n_1 ;
  wire \result_reg_1058_reg[9]_i_3_n_2 ;
  wire \result_reg_1058_reg[9]_i_3_n_3 ;
  wire \result_reg_1058_reg[9]_i_3_n_4 ;
  wire \result_reg_1058_reg[9]_i_3_n_5 ;
  wire \result_reg_1058_reg[9]_i_3_n_6 ;
  wire \result_reg_1058_reg[9]_i_3_n_7 ;
  wire [4:0]s_axi_CTRL_ARADDR;
  wire s_axi_CTRL_ARREADY;
  wire s_axi_CTRL_ARVALID;
  wire [4:0]s_axi_CTRL_AWADDR;
  wire s_axi_CTRL_AWREADY;
  wire s_axi_CTRL_AWVALID;
  wire s_axi_CTRL_BREADY;
  wire s_axi_CTRL_BVALID;
  wire [31:0]s_axi_CTRL_RDATA;
  wire s_axi_CTRL_RREADY;
  wire s_axi_CTRL_RVALID;
  wire [31:0]s_axi_CTRL_WDATA;
  wire s_axi_CTRL_WREADY;
  wire [3:0]s_axi_CTRL_WSTRB;
  wire s_axi_CTRL_WVALID;
  wire tmp_10_reg_917;
  wire \tmp_10_reg_917[0]_i_1_n_0 ;
  wire tmp_13_reg_1053;
  wire \tmp_13_reg_1053[0]_i_10_n_0 ;
  wire \tmp_13_reg_1053[0]_i_11_n_0 ;
  wire \tmp_13_reg_1053[0]_i_12_n_0 ;
  wire \tmp_13_reg_1053[0]_i_13_n_0 ;
  wire \tmp_13_reg_1053[0]_i_14_n_0 ;
  wire \tmp_13_reg_1053[0]_i_15_n_0 ;
  wire \tmp_13_reg_1053[0]_i_16_n_0 ;
  wire \tmp_13_reg_1053[0]_i_17_n_0 ;
  wire \tmp_13_reg_1053[0]_i_18_n_0 ;
  wire \tmp_13_reg_1053[0]_i_19_n_0 ;
  wire \tmp_13_reg_1053[0]_i_20_n_0 ;
  wire \tmp_13_reg_1053[0]_i_21_n_0 ;
  wire \tmp_13_reg_1053[0]_i_22_n_0 ;
  wire \tmp_13_reg_1053[0]_i_23_n_0 ;
  wire \tmp_13_reg_1053[0]_i_24_n_0 ;
  wire \tmp_13_reg_1053[0]_i_25_n_0 ;
  wire \tmp_13_reg_1053[0]_i_26_n_0 ;
  wire \tmp_13_reg_1053[0]_i_27_n_0 ;
  wire \tmp_13_reg_1053[0]_i_28_n_0 ;
  wire \tmp_13_reg_1053[0]_i_29_n_0 ;
  wire \tmp_13_reg_1053[0]_i_4_n_0 ;
  wire \tmp_13_reg_1053[0]_i_5_n_0 ;
  wire \tmp_13_reg_1053[0]_i_6_n_0 ;
  wire \tmp_13_reg_1053[0]_i_7_n_0 ;
  wire \tmp_13_reg_1053[0]_i_8_n_0 ;
  wire \tmp_13_reg_1053[0]_i_9_n_0 ;
  wire \tmp_13_reg_1053_reg[0]_i_2_n_1 ;
  wire \tmp_13_reg_1053_reg[0]_i_2_n_2 ;
  wire \tmp_13_reg_1053_reg[0]_i_2_n_3 ;
  wire \tmp_13_reg_1053_reg[0]_i_3_n_0 ;
  wire \tmp_13_reg_1053_reg[0]_i_3_n_1 ;
  wire \tmp_13_reg_1053_reg[0]_i_3_n_2 ;
  wire \tmp_13_reg_1053_reg[0]_i_3_n_3 ;
  wire [21:2]tmp_1_i_i_fu_771_p2;
  wire [1:0]tmp_3_mid2_v_reg_912;
  wire \tmp_3_mid2_v_reg_912[0]_i_1_n_0 ;
  wire \tmp_3_mid2_v_reg_912[1]_i_1_n_0 ;
  wire \tmp_3_mid2_v_reg_912[1]_i_2_n_0 ;
  wire \tmp_3_mid2_v_reg_912[1]_i_3_n_0 ;
  wire [19:1]tmp_4_i_i_fu_839_p2;
  wire [0:0]tmp_5_fu_532_p2;
  wire tmp_7_fu_667_p2;
  wire tmp_7_reg_1038;
  wire \tmp_7_reg_1038[0]_i_11_n_0 ;
  wire \tmp_7_reg_1038[0]_i_12_n_0 ;
  wire \tmp_7_reg_1038[0]_i_13_n_0 ;
  wire \tmp_7_reg_1038[0]_i_14_n_0 ;
  wire \tmp_7_reg_1038[0]_i_15_n_0 ;
  wire \tmp_7_reg_1038[0]_i_16_n_0 ;
  wire \tmp_7_reg_1038[0]_i_17_n_0 ;
  wire \tmp_7_reg_1038[0]_i_18_n_0 ;
  wire \tmp_7_reg_1038[0]_i_19_n_0 ;
  wire \tmp_7_reg_1038[0]_i_20_n_0 ;
  wire \tmp_7_reg_1038[0]_i_21_n_0 ;
  wire \tmp_7_reg_1038[0]_i_3_n_0 ;
  wire \tmp_7_reg_1038[0]_i_4_n_0 ;
  wire \tmp_7_reg_1038[0]_i_6_n_0 ;
  wire \tmp_7_reg_1038[0]_i_7_n_0 ;
  wire \tmp_7_reg_1038[0]_i_8_n_0 ;
  wire \tmp_7_reg_1038[0]_i_9_n_0 ;
  wire \tmp_7_reg_1038_reg[0]_i_10_n_0 ;
  wire \tmp_7_reg_1038_reg[0]_i_10_n_1 ;
  wire \tmp_7_reg_1038_reg[0]_i_10_n_2 ;
  wire \tmp_7_reg_1038_reg[0]_i_10_n_3 ;
  wire \tmp_7_reg_1038_reg[0]_i_1_n_3 ;
  wire \tmp_7_reg_1038_reg[0]_i_2_n_0 ;
  wire \tmp_7_reg_1038_reg[0]_i_2_n_1 ;
  wire \tmp_7_reg_1038_reg[0]_i_2_n_2 ;
  wire \tmp_7_reg_1038_reg[0]_i_2_n_3 ;
  wire \tmp_7_reg_1038_reg[0]_i_5_n_0 ;
  wire \tmp_7_reg_1038_reg[0]_i_5_n_1 ;
  wire \tmp_7_reg_1038_reg[0]_i_5_n_2 ;
  wire \tmp_7_reg_1038_reg[0]_i_5_n_3 ;
  wire tmp_9_reg_1003;
  wire \tmp_9_reg_1003[0]_i_1_n_0 ;
  wire [31:0]tmp_data_V_2_fu_856_p3;
  wire tmp_reg_1022;
  wire \tmp_reg_1022[0]_i_2_n_0 ;
  wire \tmp_reg_1022[0]_i_3_n_0 ;
  wire [31:0]windowRightCol_1_reg_1063;
  wire [31:0]window_0_0_fu_152;
  wire [31:0]window_0_0_read_as_fu_148;
  wire [31:0]window_0_1_fu_156;
  wire [31:0]window_1_0_phi_fu_415_p4;
  wire [31:0]window_1_0_read_as_fu_160;
  wire [31:0]window_1_0_reg_412;
  wire \window_1_0_reg_412[0]_i_1_n_0 ;
  wire \window_1_0_reg_412[10]_i_1_n_0 ;
  wire \window_1_0_reg_412[11]_i_1_n_0 ;
  wire \window_1_0_reg_412[12]_i_1_n_0 ;
  wire \window_1_0_reg_412[13]_i_1_n_0 ;
  wire \window_1_0_reg_412[14]_i_1_n_0 ;
  wire \window_1_0_reg_412[15]_i_1_n_0 ;
  wire \window_1_0_reg_412[16]_i_1_n_0 ;
  wire \window_1_0_reg_412[17]_i_1_n_0 ;
  wire \window_1_0_reg_412[18]_i_1_n_0 ;
  wire \window_1_0_reg_412[19]_i_1_n_0 ;
  wire \window_1_0_reg_412[1]_i_1_n_0 ;
  wire \window_1_0_reg_412[20]_i_1_n_0 ;
  wire \window_1_0_reg_412[21]_i_1_n_0 ;
  wire \window_1_0_reg_412[22]_i_1_n_0 ;
  wire \window_1_0_reg_412[23]_i_1_n_0 ;
  wire \window_1_0_reg_412[24]_i_1_n_0 ;
  wire \window_1_0_reg_412[25]_i_1_n_0 ;
  wire \window_1_0_reg_412[26]_i_1_n_0 ;
  wire \window_1_0_reg_412[27]_i_1_n_0 ;
  wire \window_1_0_reg_412[28]_i_1_n_0 ;
  wire \window_1_0_reg_412[29]_i_1_n_0 ;
  wire \window_1_0_reg_412[2]_i_1_n_0 ;
  wire \window_1_0_reg_412[30]_i_1_n_0 ;
  wire \window_1_0_reg_412[31]_i_1_n_0 ;
  wire \window_1_0_reg_412[3]_i_1_n_0 ;
  wire \window_1_0_reg_412[4]_i_1_n_0 ;
  wire \window_1_0_reg_412[5]_i_1_n_0 ;
  wire \window_1_0_reg_412[6]_i_1_n_0 ;
  wire \window_1_0_reg_412[7]_i_1_n_0 ;
  wire \window_1_0_reg_412[8]_i_1_n_0 ;
  wire \window_1_0_reg_412[9]_i_1_n_0 ;
  wire window_1_1_1_reg_345;
  wire \window_1_1_1_reg_345_reg_n_0_[0] ;
  wire \window_1_1_1_reg_345_reg_n_0_[10] ;
  wire \window_1_1_1_reg_345_reg_n_0_[11] ;
  wire \window_1_1_1_reg_345_reg_n_0_[12] ;
  wire \window_1_1_1_reg_345_reg_n_0_[13] ;
  wire \window_1_1_1_reg_345_reg_n_0_[14] ;
  wire \window_1_1_1_reg_345_reg_n_0_[15] ;
  wire \window_1_1_1_reg_345_reg_n_0_[16] ;
  wire \window_1_1_1_reg_345_reg_n_0_[17] ;
  wire \window_1_1_1_reg_345_reg_n_0_[18] ;
  wire \window_1_1_1_reg_345_reg_n_0_[19] ;
  wire \window_1_1_1_reg_345_reg_n_0_[1] ;
  wire \window_1_1_1_reg_345_reg_n_0_[20] ;
  wire \window_1_1_1_reg_345_reg_n_0_[21] ;
  wire \window_1_1_1_reg_345_reg_n_0_[22] ;
  wire \window_1_1_1_reg_345_reg_n_0_[23] ;
  wire \window_1_1_1_reg_345_reg_n_0_[24] ;
  wire \window_1_1_1_reg_345_reg_n_0_[25] ;
  wire \window_1_1_1_reg_345_reg_n_0_[26] ;
  wire \window_1_1_1_reg_345_reg_n_0_[27] ;
  wire \window_1_1_1_reg_345_reg_n_0_[28] ;
  wire \window_1_1_1_reg_345_reg_n_0_[29] ;
  wire \window_1_1_1_reg_345_reg_n_0_[2] ;
  wire \window_1_1_1_reg_345_reg_n_0_[30] ;
  wire \window_1_1_1_reg_345_reg_n_0_[31] ;
  wire \window_1_1_1_reg_345_reg_n_0_[3] ;
  wire \window_1_1_1_reg_345_reg_n_0_[4] ;
  wire \window_1_1_1_reg_345_reg_n_0_[5] ;
  wire \window_1_1_1_reg_345_reg_n_0_[6] ;
  wire \window_1_1_1_reg_345_reg_n_0_[7] ;
  wire \window_1_1_1_reg_345_reg_n_0_[8] ;
  wire \window_1_1_1_reg_345_reg_n_0_[9] ;
  wire window_1_1_reg_401;
  wire \window_1_1_reg_401[0]_i_1_n_0 ;
  wire \window_1_1_reg_401[10]_i_1_n_0 ;
  wire \window_1_1_reg_401[11]_i_1_n_0 ;
  wire \window_1_1_reg_401[12]_i_1_n_0 ;
  wire \window_1_1_reg_401[13]_i_1_n_0 ;
  wire \window_1_1_reg_401[14]_i_1_n_0 ;
  wire \window_1_1_reg_401[15]_i_1_n_0 ;
  wire \window_1_1_reg_401[16]_i_1_n_0 ;
  wire \window_1_1_reg_401[17]_i_1_n_0 ;
  wire \window_1_1_reg_401[18]_i_1_n_0 ;
  wire \window_1_1_reg_401[19]_i_1_n_0 ;
  wire \window_1_1_reg_401[1]_i_1_n_0 ;
  wire \window_1_1_reg_401[20]_i_1_n_0 ;
  wire \window_1_1_reg_401[21]_i_1_n_0 ;
  wire \window_1_1_reg_401[22]_i_1_n_0 ;
  wire \window_1_1_reg_401[23]_i_1_n_0 ;
  wire \window_1_1_reg_401[24]_i_1_n_0 ;
  wire \window_1_1_reg_401[25]_i_1_n_0 ;
  wire \window_1_1_reg_401[26]_i_1_n_0 ;
  wire \window_1_1_reg_401[27]_i_1_n_0 ;
  wire \window_1_1_reg_401[28]_i_1_n_0 ;
  wire \window_1_1_reg_401[29]_i_1_n_0 ;
  wire \window_1_1_reg_401[2]_i_1_n_0 ;
  wire \window_1_1_reg_401[30]_i_1_n_0 ;
  wire \window_1_1_reg_401[31]_i_2_n_0 ;
  wire \window_1_1_reg_401[3]_i_1_n_0 ;
  wire \window_1_1_reg_401[4]_i_1_n_0 ;
  wire \window_1_1_reg_401[5]_i_1_n_0 ;
  wire \window_1_1_reg_401[6]_i_1_n_0 ;
  wire \window_1_1_reg_401[7]_i_1_n_0 ;
  wire \window_1_1_reg_401[8]_i_1_n_0 ;
  wire \window_1_1_reg_401[9]_i_1_n_0 ;
  wire \window_1_1_reg_401_reg_n_0_[0] ;
  wire \window_1_1_reg_401_reg_n_0_[10] ;
  wire \window_1_1_reg_401_reg_n_0_[11] ;
  wire \window_1_1_reg_401_reg_n_0_[12] ;
  wire \window_1_1_reg_401_reg_n_0_[13] ;
  wire \window_1_1_reg_401_reg_n_0_[14] ;
  wire \window_1_1_reg_401_reg_n_0_[15] ;
  wire \window_1_1_reg_401_reg_n_0_[16] ;
  wire \window_1_1_reg_401_reg_n_0_[17] ;
  wire \window_1_1_reg_401_reg_n_0_[18] ;
  wire \window_1_1_reg_401_reg_n_0_[19] ;
  wire \window_1_1_reg_401_reg_n_0_[1] ;
  wire \window_1_1_reg_401_reg_n_0_[20] ;
  wire \window_1_1_reg_401_reg_n_0_[21] ;
  wire \window_1_1_reg_401_reg_n_0_[22] ;
  wire \window_1_1_reg_401_reg_n_0_[23] ;
  wire \window_1_1_reg_401_reg_n_0_[24] ;
  wire \window_1_1_reg_401_reg_n_0_[25] ;
  wire \window_1_1_reg_401_reg_n_0_[26] ;
  wire \window_1_1_reg_401_reg_n_0_[27] ;
  wire \window_1_1_reg_401_reg_n_0_[28] ;
  wire \window_1_1_reg_401_reg_n_0_[29] ;
  wire \window_1_1_reg_401_reg_n_0_[2] ;
  wire \window_1_1_reg_401_reg_n_0_[30] ;
  wire \window_1_1_reg_401_reg_n_0_[31] ;
  wire \window_1_1_reg_401_reg_n_0_[3] ;
  wire \window_1_1_reg_401_reg_n_0_[4] ;
  wire \window_1_1_reg_401_reg_n_0_[5] ;
  wire \window_1_1_reg_401_reg_n_0_[6] ;
  wire \window_1_1_reg_401_reg_n_0_[7] ;
  wire \window_1_1_reg_401_reg_n_0_[8] ;
  wire \window_1_1_reg_401_reg_n_0_[9] ;
  wire window_1_2_1_reg_333;
  wire \window_1_2_1_reg_333_reg_n_0_[0] ;
  wire \window_1_2_1_reg_333_reg_n_0_[10] ;
  wire \window_1_2_1_reg_333_reg_n_0_[11] ;
  wire \window_1_2_1_reg_333_reg_n_0_[12] ;
  wire \window_1_2_1_reg_333_reg_n_0_[13] ;
  wire \window_1_2_1_reg_333_reg_n_0_[14] ;
  wire \window_1_2_1_reg_333_reg_n_0_[15] ;
  wire \window_1_2_1_reg_333_reg_n_0_[16] ;
  wire \window_1_2_1_reg_333_reg_n_0_[17] ;
  wire \window_1_2_1_reg_333_reg_n_0_[18] ;
  wire \window_1_2_1_reg_333_reg_n_0_[19] ;
  wire \window_1_2_1_reg_333_reg_n_0_[1] ;
  wire \window_1_2_1_reg_333_reg_n_0_[20] ;
  wire \window_1_2_1_reg_333_reg_n_0_[21] ;
  wire \window_1_2_1_reg_333_reg_n_0_[22] ;
  wire \window_1_2_1_reg_333_reg_n_0_[23] ;
  wire \window_1_2_1_reg_333_reg_n_0_[24] ;
  wire \window_1_2_1_reg_333_reg_n_0_[25] ;
  wire \window_1_2_1_reg_333_reg_n_0_[26] ;
  wire \window_1_2_1_reg_333_reg_n_0_[27] ;
  wire \window_1_2_1_reg_333_reg_n_0_[28] ;
  wire \window_1_2_1_reg_333_reg_n_0_[29] ;
  wire \window_1_2_1_reg_333_reg_n_0_[2] ;
  wire \window_1_2_1_reg_333_reg_n_0_[30] ;
  wire \window_1_2_1_reg_333_reg_n_0_[31] ;
  wire \window_1_2_1_reg_333_reg_n_0_[3] ;
  wire \window_1_2_1_reg_333_reg_n_0_[4] ;
  wire \window_1_2_1_reg_333_reg_n_0_[5] ;
  wire \window_1_2_1_reg_333_reg_n_0_[6] ;
  wire \window_1_2_1_reg_333_reg_n_0_[7] ;
  wire \window_1_2_1_reg_333_reg_n_0_[8] ;
  wire \window_1_2_1_reg_333_reg_n_0_[9] ;
  wire [31:0]window_2_2_2_fu_172;
  wire [31:0]window_2_2_7_fu_556_p3;
  wire writeCount_1_fu_164;
  wire \writeCount_1_fu_164[0]_i_4_n_0 ;
  wire \writeCount_1_fu_164[0]_i_5_n_0 ;
  wire \writeCount_1_fu_164[0]_i_6_n_0 ;
  wire \writeCount_1_fu_164[0]_i_7_n_0 ;
  wire \writeCount_1_fu_164[12]_i_2_n_0 ;
  wire \writeCount_1_fu_164[12]_i_3_n_0 ;
  wire \writeCount_1_fu_164[12]_i_4_n_0 ;
  wire \writeCount_1_fu_164[12]_i_5_n_0 ;
  wire \writeCount_1_fu_164[16]_i_2_n_0 ;
  wire \writeCount_1_fu_164[16]_i_3_n_0 ;
  wire \writeCount_1_fu_164[16]_i_4_n_0 ;
  wire \writeCount_1_fu_164[16]_i_5_n_0 ;
  wire \writeCount_1_fu_164[20]_i_2_n_0 ;
  wire \writeCount_1_fu_164[20]_i_3_n_0 ;
  wire \writeCount_1_fu_164[20]_i_4_n_0 ;
  wire \writeCount_1_fu_164[20]_i_5_n_0 ;
  wire \writeCount_1_fu_164[24]_i_2_n_0 ;
  wire \writeCount_1_fu_164[24]_i_3_n_0 ;
  wire \writeCount_1_fu_164[24]_i_4_n_0 ;
  wire \writeCount_1_fu_164[24]_i_5_n_0 ;
  wire \writeCount_1_fu_164[28]_i_2_n_0 ;
  wire \writeCount_1_fu_164[28]_i_3_n_0 ;
  wire \writeCount_1_fu_164[28]_i_4_n_0 ;
  wire \writeCount_1_fu_164[28]_i_5_n_0 ;
  wire \writeCount_1_fu_164[4]_i_2_n_0 ;
  wire \writeCount_1_fu_164[4]_i_3_n_0 ;
  wire \writeCount_1_fu_164[4]_i_4_n_0 ;
  wire \writeCount_1_fu_164[4]_i_5_n_0 ;
  wire \writeCount_1_fu_164[8]_i_2_n_0 ;
  wire \writeCount_1_fu_164[8]_i_3_n_0 ;
  wire \writeCount_1_fu_164[8]_i_4_n_0 ;
  wire \writeCount_1_fu_164[8]_i_5_n_0 ;
  wire [31:0]writeCount_1_fu_164_reg;
  wire \writeCount_1_fu_164_reg[0]_i_3_n_0 ;
  wire \writeCount_1_fu_164_reg[0]_i_3_n_1 ;
  wire \writeCount_1_fu_164_reg[0]_i_3_n_2 ;
  wire \writeCount_1_fu_164_reg[0]_i_3_n_3 ;
  wire \writeCount_1_fu_164_reg[0]_i_3_n_4 ;
  wire \writeCount_1_fu_164_reg[0]_i_3_n_5 ;
  wire \writeCount_1_fu_164_reg[0]_i_3_n_6 ;
  wire \writeCount_1_fu_164_reg[0]_i_3_n_7 ;
  wire \writeCount_1_fu_164_reg[12]_i_1_n_0 ;
  wire \writeCount_1_fu_164_reg[12]_i_1_n_1 ;
  wire \writeCount_1_fu_164_reg[12]_i_1_n_2 ;
  wire \writeCount_1_fu_164_reg[12]_i_1_n_3 ;
  wire \writeCount_1_fu_164_reg[12]_i_1_n_4 ;
  wire \writeCount_1_fu_164_reg[12]_i_1_n_5 ;
  wire \writeCount_1_fu_164_reg[12]_i_1_n_6 ;
  wire \writeCount_1_fu_164_reg[12]_i_1_n_7 ;
  wire \writeCount_1_fu_164_reg[16]_i_1_n_0 ;
  wire \writeCount_1_fu_164_reg[16]_i_1_n_1 ;
  wire \writeCount_1_fu_164_reg[16]_i_1_n_2 ;
  wire \writeCount_1_fu_164_reg[16]_i_1_n_3 ;
  wire \writeCount_1_fu_164_reg[16]_i_1_n_4 ;
  wire \writeCount_1_fu_164_reg[16]_i_1_n_5 ;
  wire \writeCount_1_fu_164_reg[16]_i_1_n_6 ;
  wire \writeCount_1_fu_164_reg[16]_i_1_n_7 ;
  wire \writeCount_1_fu_164_reg[20]_i_1_n_0 ;
  wire \writeCount_1_fu_164_reg[20]_i_1_n_1 ;
  wire \writeCount_1_fu_164_reg[20]_i_1_n_2 ;
  wire \writeCount_1_fu_164_reg[20]_i_1_n_3 ;
  wire \writeCount_1_fu_164_reg[20]_i_1_n_4 ;
  wire \writeCount_1_fu_164_reg[20]_i_1_n_5 ;
  wire \writeCount_1_fu_164_reg[20]_i_1_n_6 ;
  wire \writeCount_1_fu_164_reg[20]_i_1_n_7 ;
  wire \writeCount_1_fu_164_reg[24]_i_1_n_0 ;
  wire \writeCount_1_fu_164_reg[24]_i_1_n_1 ;
  wire \writeCount_1_fu_164_reg[24]_i_1_n_2 ;
  wire \writeCount_1_fu_164_reg[24]_i_1_n_3 ;
  wire \writeCount_1_fu_164_reg[24]_i_1_n_4 ;
  wire \writeCount_1_fu_164_reg[24]_i_1_n_5 ;
  wire \writeCount_1_fu_164_reg[24]_i_1_n_6 ;
  wire \writeCount_1_fu_164_reg[24]_i_1_n_7 ;
  wire \writeCount_1_fu_164_reg[28]_i_1_n_1 ;
  wire \writeCount_1_fu_164_reg[28]_i_1_n_2 ;
  wire \writeCount_1_fu_164_reg[28]_i_1_n_3 ;
  wire \writeCount_1_fu_164_reg[28]_i_1_n_4 ;
  wire \writeCount_1_fu_164_reg[28]_i_1_n_5 ;
  wire \writeCount_1_fu_164_reg[28]_i_1_n_6 ;
  wire \writeCount_1_fu_164_reg[28]_i_1_n_7 ;
  wire \writeCount_1_fu_164_reg[4]_i_1_n_0 ;
  wire \writeCount_1_fu_164_reg[4]_i_1_n_1 ;
  wire \writeCount_1_fu_164_reg[4]_i_1_n_2 ;
  wire \writeCount_1_fu_164_reg[4]_i_1_n_3 ;
  wire \writeCount_1_fu_164_reg[4]_i_1_n_4 ;
  wire \writeCount_1_fu_164_reg[4]_i_1_n_5 ;
  wire \writeCount_1_fu_164_reg[4]_i_1_n_6 ;
  wire \writeCount_1_fu_164_reg[4]_i_1_n_7 ;
  wire \writeCount_1_fu_164_reg[8]_i_1_n_0 ;
  wire \writeCount_1_fu_164_reg[8]_i_1_n_1 ;
  wire \writeCount_1_fu_164_reg[8]_i_1_n_2 ;
  wire \writeCount_1_fu_164_reg[8]_i_1_n_3 ;
  wire \writeCount_1_fu_164_reg[8]_i_1_n_4 ;
  wire \writeCount_1_fu_164_reg[8]_i_1_n_5 ;
  wire \writeCount_1_fu_164_reg[8]_i_1_n_6 ;
  wire \writeCount_1_fu_164_reg[8]_i_1_n_7 ;
  wire [31:1]writeCount_fu_818_p2;
  wire [6:0]x1_reg_299;
  wire [1:0]x4_reg_357;
  wire [6:1]x_1_fu_436_p2;
  wire x_1_reg_8890;
  wire \x_1_reg_889[0]_i_1_n_0 ;
  wire \x_1_reg_889[2]_i_2_n_0 ;
  wire \x_1_reg_889[3]_i_2_n_0 ;
  wire \x_1_reg_889[4]_i_2_n_0 ;
  wire \x_1_reg_889[6]_i_3_n_0 ;
  wire \x_1_reg_889[6]_i_4_n_0 ;
  wire [6:0]x_1_reg_889_reg__0;
  wire [6:1]x_2_fu_453_p2;
  wire x_2_reg_8980;
  wire \x_2_reg_898[0]_i_1_n_0 ;
  wire \x_2_reg_898[3]_i_1_n_0 ;
  wire \x_2_reg_898[4]_i_2_n_0 ;
  wire \x_2_reg_898[6]_i_3_n_0 ;
  wire \x_2_reg_898[6]_i_4_n_0 ;
  wire [6:0]x_2_reg_898_reg__0;
  wire [1:1]x_3_fu_550_p2;
  wire [6:0]x_4_fu_684_p2;
  wire [6:0]x_assign_reg_390;
  wire \x_assign_reg_390[2]_i_1_n_0 ;
  wire \x_assign_reg_390[6]_i_2_n_0 ;
  wire \x_assign_reg_390[6]_i_4_n_0 ;
  wire \x_assign_reg_390[6]_i_5_n_0 ;
  wire \x_assign_reg_390[6]_i_6_n_0 ;
  wire \x_assign_reg_390[6]_i_7_n_0 ;
  wire x_reg_287;
  wire \x_reg_287_reg_n_0_[0] ;
  wire \x_reg_287_reg_n_0_[1] ;
  wire \x_reg_287_reg_n_0_[2] ;
  wire \x_reg_287_reg_n_0_[3] ;
  wire \x_reg_287_reg_n_0_[4] ;
  wire \x_reg_287_reg_n_0_[5] ;
  wire \x_reg_287_reg_n_0_[6] ;
  wire [0:0]y3_phi_fu_326_p4;
  wire [1:0]y3_reg_322;
  wire \y3_reg_322[0]_i_1_n_0 ;
  wire \y3_reg_322[1]_i_1_n_0 ;
  wire \y_assign_cast7_mid2_s_reg_1017[0]_i_1_n_0 ;
  wire [0:0]y_assign_cast7_mid2_s_reg_1017_reg;
  wire \y_assign_reg_379[0]_i_1_n_0 ;
  wire \y_assign_reg_379[0]_i_2_n_0 ;
  wire \y_assign_reg_379_reg_n_0_[0] ;
  wire [3:1]\NLW_indvar_flatten6_reg_368_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_indvar_flatten6_reg_368_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_maxValue_17_0_maxVal_reg_1047_reg[31]_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_maxValue_17_0_maxVal_reg_1047_reg[31]_i_23_O_UNCONNECTED ;
  wire [3:0]\NLW_maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_maxValue_17_0_maxVal_reg_1047_reg[31]_i_40_O_UNCONNECTED ;
  wire [3:0]\NLW_maxValue_17_0_maxVal_reg_1047_reg[31]_i_49_O_UNCONNECTED ;
  wire [3:0]\NLW_maxValue_17_0_maxVal_reg_1047_reg[31]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_maxValue_17_0_maxVal_reg_1047_reg[31]_i_66_O_UNCONNECTED ;
  wire [3:0]\NLW_outStream_V_data_V_1_payload_A_reg[31]_i_17_O_UNCONNECTED ;
  wire [3:0]\NLW_outStream_V_data_V_1_payload_A_reg[31]_i_26_O_UNCONNECTED ;
  wire [2:2]\NLW_outStream_V_data_V_1_payload_A_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_outStream_V_data_V_1_payload_A_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_outStream_V_data_V_1_payload_A_reg[31]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_outStream_V_data_V_1_payload_A_reg[31]_i_8_O_UNCONNECTED ;
  wire [3:2]\NLW_outStream_V_last_V_1_payload_A_reg[0]_i_12_CO_UNCONNECTED ;
  wire [3:3]\NLW_outStream_V_last_V_1_payload_A_reg[0]_i_12_O_UNCONNECTED ;
  wire [3:3]\NLW_readCount_1_fu_168_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_result_reg_1058_reg[19]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_result_reg_1058_reg[19]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_result_reg_1058_reg[19]_i_3_O_UNCONNECTED ;
  wire [1:0]\NLW_result_reg_1058_reg[1]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_tmp_13_reg_1053_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_13_reg_1053_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_13_reg_1053_reg[0]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_tmp_7_reg_1038_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmp_7_reg_1038_reg[0]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_7_reg_1038_reg[0]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_7_reg_1038_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_7_reg_1038_reg[0]_i_5_O_UNCONNECTED ;
  wire [3:3]\NLW_writeCount_1_fu_164_reg[28]_i_1_CO_UNCONNECTED ;

  assign outStream_TDEST[5] = \<const0> ;
  assign outStream_TDEST[4] = \<const0> ;
  assign outStream_TDEST[3] = \<const0> ;
  assign outStream_TDEST[2] = \<const0> ;
  assign outStream_TDEST[1] = \<const0> ;
  assign outStream_TDEST[0] = \<const0> ;
  assign outStream_TID[4] = \<const0> ;
  assign outStream_TID[3] = \<const0> ;
  assign outStream_TID[2] = \<const0> ;
  assign outStream_TID[1] = \<const0> ;
  assign outStream_TID[0] = \<const0> ;
  assign outStream_TKEEP[3] = \<const1> ;
  assign outStream_TKEEP[2] = \<const1> ;
  assign outStream_TKEEP[1] = \<const1> ;
  assign outStream_TKEEP[0] = \<const1> ;
  assign outStream_TSTRB[3] = \<const0> ;
  assign outStream_TSTRB[2] = \<const0> ;
  assign outStream_TSTRB[1] = \<const0> ;
  assign outStream_TSTRB[0] = \<const0> ;
  assign outStream_TUSER[1] = \<const0> ;
  assign outStream_TUSER[0] = \<const0> ;
  assign s_axi_CTRL_BRESP[1] = \<const0> ;
  assign s_axi_CTRL_BRESP[0] = \<const0> ;
  assign s_axi_CTRL_RRESP[1] = \<const0> ;
  assign s_axi_CTRL_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h7)) 
    \ap_CS_fsm[1]_i_3 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(exitcond1_fu_430_p2),
        .O(\ap_CS_fsm[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFB00000000000000)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\inStream_V_data_V_0_state_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(\exitcond1_reg_885_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(exitcond1_fu_430_p2),
        .I5(ap_enable_reg_pp0_iter0),
        .O(ap_NS_fsm[2]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(\ap_CS_fsm[2]_i_3_n_0 ),
        .I1(\ap_CS_fsm[2]_i_4_n_0 ),
        .I2(\ap_CS_fsm[2]_i_5_n_0 ),
        .I3(\ap_CS_fsm[2]_i_6_n_0 ),
        .I4(\x_1_reg_889[2]_i_2_n_0 ),
        .O(exitcond1_fu_430_p2));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \ap_CS_fsm[2]_i_3 
       (.I0(x_1_reg_889_reg__0[3]),
        .I1(\x_reg_287_reg_n_0_[3] ),
        .I2(\x_reg_287_reg_n_0_[4] ),
        .I3(\x_1_reg_889[6]_i_4_n_0 ),
        .I4(x_1_reg_889_reg__0[4]),
        .I5(\ap_CS_fsm[2]_i_7_n_0 ),
        .O(\ap_CS_fsm[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \ap_CS_fsm[2]_i_4 
       (.I0(\x_reg_287_reg_n_0_[5] ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(\exitcond1_reg_885_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(x_1_reg_889_reg__0[5]),
        .O(\ap_CS_fsm[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h51555D55)) 
    \ap_CS_fsm[2]_i_5 
       (.I0(\x_reg_287_reg_n_0_[6] ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(\exitcond1_reg_885_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(x_1_reg_889_reg__0[6]),
        .O(\ap_CS_fsm[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \ap_CS_fsm[2]_i_6 
       (.I0(\x_reg_287_reg_n_0_[1] ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(\exitcond1_reg_885_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(x_1_reg_889_reg__0[1]),
        .O(\ap_CS_fsm[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h51555D55)) 
    \ap_CS_fsm[2]_i_7 
       (.I0(\x_reg_287_reg_n_0_[2] ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(\exitcond1_reg_885_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(x_1_reg_889_reg__0[2]),
        .O(\ap_CS_fsm[2]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(ap_CS_fsm_state4),
        .I1(\ap_CS_fsm[3]_i_2_n_0 ),
        .I2(ap_CS_fsm_pp1_stage0),
        .O(ap_NS_fsm[3]));
  LUT5 #(
    .INIT(32'h88888088)) 
    \ap_CS_fsm[3]_i_2 
       (.I0(exitcond4_fu_447_p2),
        .I1(ap_enable_reg_pp1_iter0),
        .I2(\inStream_V_data_V_0_state_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp1_iter1),
        .I4(\exitcond4_reg_894_reg_n_0_[0] ),
        .O(\ap_CS_fsm[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFB00000000000000)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(\exitcond4_reg_894_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp1_iter1),
        .I2(\inStream_V_data_V_0_state_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp1_iter0),
        .I4(exitcond4_fu_447_p2),
        .I5(ap_CS_fsm_pp1_stage0),
        .O(\ap_CS_fsm[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \ap_CS_fsm[4]_i_2 
       (.I0(\ap_CS_fsm[4]_i_3_n_0 ),
        .I1(\ap_CS_fsm[4]_i_4_n_0 ),
        .I2(\ap_CS_fsm[4]_i_5_n_0 ),
        .I3(\ap_CS_fsm[4]_i_6_n_0 ),
        .I4(\ap_CS_fsm[4]_i_7_n_0 ),
        .I5(\x_2_reg_898[0]_i_1_n_0 ),
        .O(exitcond4_fu_447_p2));
  LUT5 #(
    .INIT(32'h51555D55)) 
    \ap_CS_fsm[4]_i_3 
       (.I0(x1_reg_299[2]),
        .I1(ap_enable_reg_pp1_iter1),
        .I2(\exitcond4_reg_894_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp1_stage0),
        .I4(x_2_reg_898_reg__0[2]),
        .O(\ap_CS_fsm[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \ap_CS_fsm[4]_i_4 
       (.I0(x1_reg_299[6]),
        .I1(ap_enable_reg_pp1_iter1),
        .I2(\exitcond4_reg_894_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp1_stage0),
        .I4(x_2_reg_898_reg__0[6]),
        .O(\ap_CS_fsm[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \ap_CS_fsm[4]_i_5 
       (.I0(x1_reg_299[5]),
        .I1(ap_enable_reg_pp1_iter1),
        .I2(\exitcond4_reg_894_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp1_stage0),
        .I4(x_2_reg_898_reg__0[5]),
        .O(\ap_CS_fsm[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h335FFF5F)) 
    \ap_CS_fsm[4]_i_6 
       (.I0(x_2_reg_898_reg__0[3]),
        .I1(x1_reg_299[3]),
        .I2(x_2_reg_898_reg__0[4]),
        .I3(\x_2_reg_898[6]_i_4_n_0 ),
        .I4(x1_reg_299[4]),
        .O(\ap_CS_fsm[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h51555D55)) 
    \ap_CS_fsm[4]_i_7 
       (.I0(x1_reg_299[1]),
        .I1(ap_enable_reg_pp1_iter1),
        .I2(\exitcond4_reg_894_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp1_stage0),
        .I4(x_2_reg_898_reg__0[1]),
        .O(\ap_CS_fsm[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEECEEE)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(ap_CS_fsm_pp2_stage0),
        .I1(ap_CS_fsm_state7),
        .I2(ap_enable_reg_pp2_iter0),
        .I3(indvar_flatten_reg_311[2]),
        .I4(indvar_flatten_reg_311[0]),
        .I5(indvar_flatten_reg_311[1]),
        .O(ap_NS_fsm[5]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \ap_CS_fsm[6]_i_1 
       (.I0(indvar_flatten_reg_311[1]),
        .I1(indvar_flatten_reg_311[0]),
        .I2(indvar_flatten_reg_311[2]),
        .I3(ap_enable_reg_pp2_iter0),
        .I4(ap_CS_fsm_pp2_stage0),
        .O(\ap_CS_fsm[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \ap_CS_fsm[7]_i_1 
       (.I0(ap_CS_fsm_state10),
        .I1(\ap_CS_fsm[8]_i_3_n_0 ),
        .I2(ap_CS_fsm_pp3_stage0),
        .O(ap_NS_fsm[7]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \ap_CS_fsm[8]_i_1 
       (.I0(\ap_CS_fsm[8]_i_2_n_0 ),
        .I1(ap_CS_fsm_state15),
        .I2(\ap_CS_fsm[8]_i_3_n_0 ),
        .I3(ap_CS_fsm_pp3_stage0),
        .O(ap_NS_fsm[8]));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \ap_CS_fsm[8]_i_2 
       (.I0(outStream_V_user_V_1_ack_in),
        .I1(outStream_V_strb_V_1_ack_in),
        .I2(outStream_V_dest_V_1_ack_in),
        .I3(cnn_pool_d92x92_p2x2_CTRL_s_axi_U_n_7),
        .O(\ap_CS_fsm[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055550040)) 
    \ap_CS_fsm[8]_i_3 
       (.I0(lineBuffer_1_U_n_65),
        .I1(ap_CS_fsm_pp3_stage0),
        .I2(ap_enable_reg_pp3_iter1_reg_n_0),
        .I3(ap_enable_reg_pp3_iter0),
        .I4(ap_enable_reg_pp3_iter3_reg_n_0),
        .I5(ap_enable_reg_pp3_iter2),
        .O(\ap_CS_fsm[8]_i_3_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_pp1_stage0),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[4]_i_1_n_0 ),
        .Q(ap_CS_fsm_state7),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(ap_CS_fsm_pp2_stage0),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[6]_i_1_n_0 ),
        .Q(ap_CS_fsm_state10),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[7]),
        .Q(ap_CS_fsm_pp3_stage0),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[8]),
        .Q(ap_CS_fsm_state15),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(cnn_pool_d92x92_p2x2_CTRL_s_axi_U_n_12),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(cnn_pool_d92x92_p2x2_CTRL_s_axi_U_n_11),
        .Q(ap_enable_reg_pp0_iter1),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h00E0E0E0)) 
    ap_enable_reg_pp1_iter0_i_1
       (.I0(ap_enable_reg_pp1_iter0),
        .I1(ap_CS_fsm_state4),
        .I2(ap_rst_n),
        .I3(p_72_in),
        .I4(exitcond4_fu_447_p2),
        .O(ap_enable_reg_pp1_iter0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp1_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp1_iter0_i_1_n_0),
        .Q(ap_enable_reg_pp1_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5555535533003300)) 
    ap_enable_reg_pp1_iter1_i_1
       (.I0(exitcond4_fu_447_p2),
        .I1(ap_CS_fsm_state4),
        .I2(\inStream_V_data_V_0_state_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp1_iter1),
        .I4(\exitcond4_reg_894_reg_n_0_[0] ),
        .I5(ap_CS_fsm_pp1_stage0),
        .O(ap_enable_reg_pp1_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp1_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp1_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp1_iter1),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h00E0E0E0)) 
    ap_enable_reg_pp2_iter0_i_1
       (.I0(ap_enable_reg_pp2_iter0),
        .I1(ap_CS_fsm_state7),
        .I2(ap_rst_n),
        .I3(ap_CS_fsm_pp2_stage0),
        .I4(ap_enable_reg_pp2_iter0_i_2_n_0),
        .O(ap_enable_reg_pp2_iter0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h02)) 
    ap_enable_reg_pp2_iter0_i_2
       (.I0(indvar_flatten_reg_311[2]),
        .I1(indvar_flatten_reg_311[0]),
        .I2(indvar_flatten_reg_311[1]),
        .O(ap_enable_reg_pp2_iter0_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp2_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp2_iter0_i_1_n_0),
        .Q(ap_enable_reg_pp2_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEF00EFFFEF00EF00)) 
    ap_enable_reg_pp2_iter1_i_1
       (.I0(indvar_flatten_reg_311[1]),
        .I1(indvar_flatten_reg_311[0]),
        .I2(indvar_flatten_reg_311[2]),
        .I3(ap_CS_fsm_pp2_stage0),
        .I4(ap_CS_fsm_state7),
        .I5(ap_enable_reg_pp2_iter1),
        .O(ap_enable_reg_pp2_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp2_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp2_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp2_iter1),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hDDD00000FFF00000)) 
    ap_enable_reg_pp3_iter0_i_1
       (.I0(ap_CS_fsm_pp3_stage0),
        .I1(lineBuffer_1_U_n_65),
        .I2(ap_enable_reg_pp3_iter0),
        .I3(ap_CS_fsm_state10),
        .I4(ap_rst_n),
        .I5(\x_assign_reg_390[6]_i_4_n_0 ),
        .O(ap_enable_reg_pp3_iter0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp3_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp3_iter0_i_1_n_0),
        .Q(ap_enable_reg_pp3_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h22000000F2D00000)) 
    ap_enable_reg_pp3_iter1_i_1
       (.I0(ap_CS_fsm_pp3_stage0),
        .I1(lineBuffer_1_U_n_65),
        .I2(ap_enable_reg_pp3_iter1_reg_n_0),
        .I3(ap_enable_reg_pp3_iter0),
        .I4(ap_rst_n),
        .I5(ap_CS_fsm_state10),
        .O(ap_enable_reg_pp3_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp3_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp3_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp3_iter1_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hC0C0A000)) 
    ap_enable_reg_pp3_iter2_i_1
       (.I0(ap_enable_reg_pp3_iter1_reg_n_0),
        .I1(ap_enable_reg_pp3_iter2),
        .I2(ap_rst_n),
        .I3(ap_enable_reg_pp3_iter0),
        .I4(lineBuffer_1_U_n_65),
        .O(ap_enable_reg_pp3_iter2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp3_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp3_iter2_i_1_n_0),
        .Q(ap_enable_reg_pp3_iter2),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00C0A0A0)) 
    ap_enable_reg_pp3_iter3_i_1
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(ap_enable_reg_pp3_iter3_reg_n_0),
        .I2(ap_rst_n),
        .I3(ap_CS_fsm_state10),
        .I4(lineBuffer_1_U_n_65),
        .O(ap_enable_reg_pp3_iter3_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp3_iter3_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp3_iter3_i_1_n_0),
        .Q(ap_enable_reg_pp3_iter3_reg_n_0),
        .R(1'b0));
  FDRE \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg[0] 
       (.C(ap_clk),
        .CE(p_69_in),
        .D(\exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .Q(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1032_reg[0] 
       (.C(ap_clk),
        .CE(p_69_in),
        .D(lineBuffer_1_addr_2_reg_1032[0]),
        .Q(ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1032[0]),
        .R(1'b0));
  FDRE \ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1032_reg[1] 
       (.C(ap_clk),
        .CE(p_69_in),
        .D(lineBuffer_1_addr_2_reg_1032[1]),
        .Q(ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1032[1]),
        .R(1'b0));
  FDRE \ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1032_reg[2] 
       (.C(ap_clk),
        .CE(p_69_in),
        .D(lineBuffer_1_addr_2_reg_1032[2]),
        .Q(ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1032[2]),
        .R(1'b0));
  FDRE \ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1032_reg[3] 
       (.C(ap_clk),
        .CE(p_69_in),
        .D(lineBuffer_1_addr_2_reg_1032[3]),
        .Q(ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1032[3]),
        .R(1'b0));
  FDRE \ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1032_reg[4] 
       (.C(ap_clk),
        .CE(p_69_in),
        .D(lineBuffer_1_addr_2_reg_1032[4]),
        .Q(ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1032[4]),
        .R(1'b0));
  FDRE \ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1032_reg[5] 
       (.C(ap_clk),
        .CE(p_69_in),
        .D(lineBuffer_1_addr_2_reg_1032[5]),
        .Q(ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1032[5]),
        .R(1'b0));
  FDRE \ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1032_reg[6] 
       (.C(ap_clk),
        .CE(p_69_in),
        .D(lineBuffer_1_addr_2_reg_1032[6]),
        .Q(ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1032[6]),
        .R(1'b0));
  FDRE \ap_pipeline_reg_pp3_iter1_tmp_reg_1022_reg[0] 
       (.C(ap_clk),
        .CE(p_69_in),
        .D(tmp_reg_1022),
        .Q(ap_pipeline_reg_pp3_iter1_tmp_reg_1022),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hE2)) 
    \ap_pipeline_reg_pp3_iter2_tmp_reg_1022[0]_i_1 
       (.I0(ap_pipeline_reg_pp3_iter1_tmp_reg_1022),
        .I1(lineBuffer_1_U_n_65),
        .I2(ap_pipeline_reg_pp3_iter2_tmp_reg_1022),
        .O(\ap_pipeline_reg_pp3_iter2_tmp_reg_1022[0]_i_1_n_0 ));
  FDRE \ap_pipeline_reg_pp3_iter2_tmp_reg_1022_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_pipeline_reg_pp3_iter2_tmp_reg_1022[0]_i_1_n_0 ),
        .Q(ap_pipeline_reg_pp3_iter2_tmp_reg_1022),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d92x92_p2x2_CTRL_s_axi cnn_pool_d92x92_p2x2_CTRL_s_axi_U
       (.D(ap_NS_fsm[1:0]),
        .Q({ap_CS_fsm_state15,ap_CS_fsm_pp0_stage0,\ap_CS_fsm_reg_n_0_[0] }),
        .SR(ap_rst_n_inv),
        .\ap_CS_fsm_reg[0] (cnn_pool_d92x92_p2x2_CTRL_s_axi_U_n_7),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter0_reg(cnn_pool_d92x92_p2x2_CTRL_s_axi_U_n_12),
        .ap_enable_reg_pp0_iter0_reg_0(\ap_CS_fsm[1]_i_3_n_0 ),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter1_reg(cnn_pool_d92x92_p2x2_CTRL_s_axi_U_n_11),
        .ap_rst_n(ap_rst_n),
        .ctrl_read_reg_880(ctrl_read_reg_880),
        .\ctrl_read_reg_880_reg[0] (cnn_pool_d92x92_p2x2_CTRL_s_axi_U_n_13),
        .exitcond1_fu_430_p2(exitcond1_fu_430_p2),
        .\exitcond1_reg_885_reg[0] (\exitcond1_reg_885_reg_n_0_[0] ),
        .\inStream_V_data_V_0_state_reg[0] (\inStream_V_data_V_0_state_reg_n_0_[0] ),
        .interrupt(interrupt),
        .\outStream_V_data_V_1_state_reg[1] (outStream_V_data_V_1_ack_in),
        .\outStream_V_dest_V_1_state_reg[1] (outStream_V_dest_V_1_ack_in),
        .\outStream_V_id_V_1_state_reg[1] (outStream_V_id_V_1_ack_in),
        .\outStream_V_keep_V_1_state_reg[1] (outStream_V_keep_V_1_ack_in),
        .\outStream_V_last_V_1_state_reg[1] (outStream_V_last_V_1_ack_in),
        .\outStream_V_strb_V_1_state_reg[1] (outStream_V_strb_V_1_ack_in),
        .\outStream_V_user_V_1_state_reg[1] (outStream_V_user_V_1_ack_in),
        .p_76_in(p_76_in),
        .s_axi_CTRL_ARADDR(s_axi_CTRL_ARADDR),
        .s_axi_CTRL_ARREADY(s_axi_CTRL_ARREADY),
        .s_axi_CTRL_ARVALID(s_axi_CTRL_ARVALID),
        .s_axi_CTRL_AWADDR(s_axi_CTRL_AWADDR),
        .s_axi_CTRL_AWREADY(s_axi_CTRL_AWREADY),
        .s_axi_CTRL_AWVALID(s_axi_CTRL_AWVALID),
        .s_axi_CTRL_BREADY(s_axi_CTRL_BREADY),
        .s_axi_CTRL_BVALID(s_axi_CTRL_BVALID),
        .s_axi_CTRL_RDATA(s_axi_CTRL_RDATA),
        .s_axi_CTRL_RREADY(s_axi_CTRL_RREADY),
        .s_axi_CTRL_RVALID(s_axi_CTRL_RVALID),
        .s_axi_CTRL_WDATA(s_axi_CTRL_WDATA),
        .s_axi_CTRL_WREADY(s_axi_CTRL_WREADY),
        .s_axi_CTRL_WSTRB(s_axi_CTRL_WSTRB),
        .s_axi_CTRL_WVALID(s_axi_CTRL_WVALID),
        .\x_reg_287_reg[0] (x_reg_287));
  LUT6 #(
    .INIT(64'hCACACAAACACACACA)) 
    \cond1_reg_938[0]_i_1 
       (.I0(\cond1_reg_938_reg_n_0_[0] ),
        .I1(x4_reg_357[0]),
        .I2(ap_CS_fsm_pp2_stage0),
        .I3(indvar_flatten_reg_311[1]),
        .I4(indvar_flatten_reg_311[0]),
        .I5(indvar_flatten_reg_311[2]),
        .O(\cond1_reg_938[0]_i_1_n_0 ));
  FDRE \cond1_reg_938_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\cond1_reg_938[0]_i_1_n_0 ),
        .Q(\cond1_reg_938_reg_n_0_[0] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFA3A3A3A0A3A3A3A)) 
    \cond_mid2_reg_922[0]_i_1 
       (.I0(\cond_mid2_reg_922_reg_n_0_[0] ),
        .I1(\cond_mid2_reg_922[0]_i_2_n_0 ),
        .I2(ap_enable_reg_pp2_iter10),
        .I3(x4_reg_357[1]),
        .I4(x4_reg_357[0]),
        .I5(\cond_mid2_reg_922[0]_i_4_n_0 ),
        .O(\cond_mid2_reg_922[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'hBFB0BFBF)) 
    \cond_mid2_reg_922[0]_i_2 
       (.I0(tmp_3_mid2_v_reg_912[1]),
        .I1(tmp_3_mid2_v_reg_912[0]),
        .I2(\tmp_3_mid2_v_reg_912[1]_i_2_n_0 ),
        .I3(y3_reg_322[1]),
        .I4(y3_reg_322[0]),
        .O(\cond_mid2_reg_922[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cond_mid2_reg_922[0]_i_3 
       (.I0(ap_CS_fsm_pp2_stage0),
        .I1(indvar_flatten_reg_311[1]),
        .I2(indvar_flatten_reg_311[0]),
        .I3(indvar_flatten_reg_311[2]),
        .O(ap_enable_reg_pp2_iter10));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h1010101F)) 
    \cond_mid2_reg_922[0]_i_4 
       (.I0(tmp_3_mid2_v_reg_912[1]),
        .I1(tmp_3_mid2_v_reg_912[0]),
        .I2(\tmp_3_mid2_v_reg_912[1]_i_2_n_0 ),
        .I3(y3_reg_322[1]),
        .I4(y3_reg_322[0]),
        .O(\cond_mid2_reg_922[0]_i_4_n_0 ));
  FDRE \cond_mid2_reg_922_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\cond_mid2_reg_922[0]_i_1_n_0 ),
        .Q(\cond_mid2_reg_922_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \ctrl_read_reg_880_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(cnn_pool_d92x92_p2x2_CTRL_s_axi_U_n_13),
        .Q(ctrl_read_reg_880),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8B8B0B8)) 
    \exitcond1_reg_885[0]_i_1 
       (.I0(exitcond1_fu_430_p2),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(\exitcond1_reg_885_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\inStream_V_data_V_0_state_reg_n_0_[0] ),
        .O(\exitcond1_reg_885[0]_i_1_n_0 ));
  FDRE \exitcond1_reg_885_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond1_reg_885[0]_i_1_n_0 ),
        .Q(\exitcond1_reg_885_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8B8B0B8)) 
    \exitcond4_reg_894[0]_i_1 
       (.I0(exitcond4_fu_447_p2),
        .I1(ap_CS_fsm_pp1_stage0),
        .I2(\exitcond4_reg_894_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp1_iter1),
        .I4(\inStream_V_data_V_0_state_reg_n_0_[0] ),
        .O(\exitcond4_reg_894[0]_i_1_n_0 ));
  FDRE \exitcond4_reg_894_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond4_reg_894[0]_i_1_n_0 ),
        .Q(\exitcond4_reg_894_reg_n_0_[0] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \exitcond_flatten8_reg_1008[0]_i_1 
       (.I0(ap_CS_fsm_pp3_stage0),
        .I1(lineBuffer_1_U_n_65),
        .O(p_69_in));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \exitcond_flatten8_reg_1008[0]_i_2 
       (.I0(\exitcond_flatten8_reg_1008[0]_i_3_n_0 ),
        .I1(\exitcond_flatten8_reg_1008[0]_i_4_n_0 ),
        .I2(indvar_flatten6_reg_368_reg[8]),
        .I3(indvar_flatten6_reg_368_reg[9]),
        .I4(indvar_flatten6_reg_368_reg[1]),
        .I5(indvar_flatten6_reg_368_reg[0]),
        .O(exitcond_flatten8_fu_604_p2));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \exitcond_flatten8_reg_1008[0]_i_3 
       (.I0(indvar_flatten6_reg_368_reg[5]),
        .I1(indvar_flatten6_reg_368_reg[6]),
        .I2(indvar_flatten6_reg_368_reg[12]),
        .I3(indvar_flatten6_reg_368_reg[2]),
        .I4(indvar_flatten6_reg_368_reg[10]),
        .I5(indvar_flatten6_reg_368_reg[3]),
        .O(\exitcond_flatten8_reg_1008[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \exitcond_flatten8_reg_1008[0]_i_4 
       (.I0(indvar_flatten6_reg_368_reg[4]),
        .I1(indvar_flatten6_reg_368_reg[7]),
        .I2(indvar_flatten6_reg_368_reg[13]),
        .I3(indvar_flatten6_reg_368_reg[11]),
        .O(\exitcond_flatten8_reg_1008[0]_i_4_n_0 ));
  FDRE \exitcond_flatten8_reg_1008_reg[0] 
       (.C(ap_clk),
        .CE(p_69_in),
        .D(exitcond_flatten8_fu_604_p2),
        .Q(\exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \exitcond_flatten_reg_903[0]_i_1 
       (.I0(indvar_flatten_reg_311[2]),
        .I1(indvar_flatten_reg_311[0]),
        .I2(indvar_flatten_reg_311[1]),
        .I3(ap_CS_fsm_pp2_stage0),
        .I4(exitcond_flatten_reg_903),
        .O(\exitcond_flatten_reg_903[0]_i_1_n_0 ));
  FDRE \exitcond_flatten_reg_903_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond_flatten_reg_903[0]_i_1_n_0 ),
        .Q(exitcond_flatten_reg_903),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h45)) 
    \inStream_V_data_V_0_payload_A[31]_i_1 
       (.I0(inStream_V_data_V_0_sel_wr),
        .I1(inStream_V_data_V_0_ack_in),
        .I2(\inStream_V_data_V_0_state_reg_n_0_[0] ),
        .O(inStream_V_data_V_0_load_A));
  FDRE \inStream_V_data_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[0]),
        .Q(inStream_V_data_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[10]),
        .Q(inStream_V_data_V_0_payload_A[10]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[11]),
        .Q(inStream_V_data_V_0_payload_A[11]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[12]),
        .Q(inStream_V_data_V_0_payload_A[12]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[13]),
        .Q(inStream_V_data_V_0_payload_A[13]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[14]),
        .Q(inStream_V_data_V_0_payload_A[14]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[15]),
        .Q(inStream_V_data_V_0_payload_A[15]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[16]),
        .Q(inStream_V_data_V_0_payload_A[16]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[17]),
        .Q(inStream_V_data_V_0_payload_A[17]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[18]),
        .Q(inStream_V_data_V_0_payload_A[18]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[19]),
        .Q(inStream_V_data_V_0_payload_A[19]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[1]),
        .Q(inStream_V_data_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[20]),
        .Q(inStream_V_data_V_0_payload_A[20]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[21]),
        .Q(inStream_V_data_V_0_payload_A[21]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[22]),
        .Q(inStream_V_data_V_0_payload_A[22]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[23]),
        .Q(inStream_V_data_V_0_payload_A[23]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[24]),
        .Q(inStream_V_data_V_0_payload_A[24]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[25]),
        .Q(inStream_V_data_V_0_payload_A[25]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[26]),
        .Q(inStream_V_data_V_0_payload_A[26]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[27]),
        .Q(inStream_V_data_V_0_payload_A[27]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[28]),
        .Q(inStream_V_data_V_0_payload_A[28]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[29]),
        .Q(inStream_V_data_V_0_payload_A[29]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[2]),
        .Q(inStream_V_data_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[30]),
        .Q(inStream_V_data_V_0_payload_A[30]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[31]),
        .Q(inStream_V_data_V_0_payload_A[31]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[3]),
        .Q(inStream_V_data_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[4]),
        .Q(inStream_V_data_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[5]),
        .Q(inStream_V_data_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[6]),
        .Q(inStream_V_data_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[7]),
        .Q(inStream_V_data_V_0_payload_A[7]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[8]),
        .Q(inStream_V_data_V_0_payload_A[8]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[9]),
        .Q(inStream_V_data_V_0_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \inStream_V_data_V_0_payload_B[31]_i_1 
       (.I0(inStream_V_data_V_0_sel_wr),
        .I1(inStream_V_data_V_0_ack_in),
        .I2(\inStream_V_data_V_0_state_reg_n_0_[0] ),
        .O(inStream_V_data_V_0_load_B));
  FDRE \inStream_V_data_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[0]),
        .Q(inStream_V_data_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[10]),
        .Q(inStream_V_data_V_0_payload_B[10]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[11]),
        .Q(inStream_V_data_V_0_payload_B[11]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[12]),
        .Q(inStream_V_data_V_0_payload_B[12]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[13]),
        .Q(inStream_V_data_V_0_payload_B[13]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[14]),
        .Q(inStream_V_data_V_0_payload_B[14]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[15]),
        .Q(inStream_V_data_V_0_payload_B[15]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[16]),
        .Q(inStream_V_data_V_0_payload_B[16]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[17]),
        .Q(inStream_V_data_V_0_payload_B[17]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[18]),
        .Q(inStream_V_data_V_0_payload_B[18]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[19]),
        .Q(inStream_V_data_V_0_payload_B[19]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[1]),
        .Q(inStream_V_data_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[20]),
        .Q(inStream_V_data_V_0_payload_B[20]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[21]),
        .Q(inStream_V_data_V_0_payload_B[21]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[22]),
        .Q(inStream_V_data_V_0_payload_B[22]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[23]),
        .Q(inStream_V_data_V_0_payload_B[23]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[24]),
        .Q(inStream_V_data_V_0_payload_B[24]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[25]),
        .Q(inStream_V_data_V_0_payload_B[25]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[26]),
        .Q(inStream_V_data_V_0_payload_B[26]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[27]),
        .Q(inStream_V_data_V_0_payload_B[27]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[28]),
        .Q(inStream_V_data_V_0_payload_B[28]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[29]),
        .Q(inStream_V_data_V_0_payload_B[29]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[2]),
        .Q(inStream_V_data_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[30]),
        .Q(inStream_V_data_V_0_payload_B[30]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[31]),
        .Q(inStream_V_data_V_0_payload_B[31]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[3]),
        .Q(inStream_V_data_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[4]),
        .Q(inStream_V_data_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[5]),
        .Q(inStream_V_data_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[6]),
        .Q(inStream_V_data_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[7]),
        .Q(inStream_V_data_V_0_payload_B[7]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[8]),
        .Q(inStream_V_data_V_0_payload_B[8]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[9]),
        .Q(inStream_V_data_V_0_payload_B[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h01FE)) 
    inStream_V_data_V_0_sel_rd_i_1
       (.I0(lineBuffer_0_we0),
        .I1(lineBuffer_1_we0),
        .I2(inStream_V_data_V_0_sel2),
        .I3(inStream_V_data_V_0_sel),
        .O(inStream_V_data_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_V_data_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_V_data_V_0_sel_rd_i_1_n_0),
        .Q(inStream_V_data_V_0_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    inStream_V_data_V_0_sel_wr_i_1
       (.I0(inStream_V_data_V_0_ack_in),
        .I1(inStream_TVALID),
        .I2(inStream_V_data_V_0_sel_wr),
        .O(inStream_V_data_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_V_data_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_V_data_V_0_sel_wr_i_1_n_0),
        .Q(inStream_V_data_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hCC0C8C8C)) 
    \inStream_V_data_V_0_state[0]_i_1 
       (.I0(\inStream_V_data_V_0_state_reg_n_0_[0] ),
        .I1(ap_rst_n),
        .I2(\inStream_V_data_V_0_state[0]_i_2_n_0 ),
        .I3(inStream_TVALID),
        .I4(inStream_V_data_V_0_ack_in),
        .O(\inStream_V_data_V_0_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEAAFFFFFFFF)) 
    \inStream_V_data_V_0_state[0]_i_2 
       (.I0(lineBuffer_0_we0),
        .I1(ap_enable_reg_pp1_iter1),
        .I2(\exitcond4_reg_894_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp1_stage0),
        .I4(inStream_V_data_V_0_sel2),
        .I5(\inStream_V_data_V_0_state_reg_n_0_[0] ),
        .O(\inStream_V_data_V_0_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFDFFFD)) 
    \inStream_V_data_V_0_state[1]_i_1 
       (.I0(\inStream_V_data_V_0_state_reg_n_0_[0] ),
        .I1(inStream_V_data_V_0_sel2),
        .I2(lineBuffer_1_we0),
        .I3(lineBuffer_0_we0),
        .I4(inStream_TVALID),
        .I5(inStream_V_data_V_0_ack_in),
        .O(inStream_V_data_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_V_data_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inStream_V_data_V_0_state[0]_i_1_n_0 ),
        .Q(\inStream_V_data_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_V_data_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_V_data_V_0_state),
        .Q(inStream_V_data_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hD8F80000)) 
    \inStream_V_dest_V_0_state[0]_i_1 
       (.I0(inStream_TREADY),
        .I1(inStream_TVALID),
        .I2(\inStream_V_dest_V_0_state_reg_n_0_[0] ),
        .I3(inStream_V_data_V_0_sel0),
        .I4(ap_rst_n),
        .O(\inStream_V_dest_V_0_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAEAAAAA)) 
    \inStream_V_dest_V_0_state[0]_i_2 
       (.I0(inStream_V_data_V_0_sel2),
        .I1(\inStream_V_data_V_0_state_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp1_stage0),
        .I3(\exitcond4_reg_894_reg_n_0_[0] ),
        .I4(ap_enable_reg_pp1_iter1),
        .I5(lineBuffer_0_we0),
        .O(inStream_V_data_V_0_sel0));
  LUT6 #(
    .INIT(64'hFFFDFFFDFFFFFFFD)) 
    \inStream_V_dest_V_0_state[1]_i_2 
       (.I0(\inStream_V_dest_V_0_state_reg_n_0_[0] ),
        .I1(inStream_V_data_V_0_sel2),
        .I2(lineBuffer_1_we0),
        .I3(lineBuffer_0_we0),
        .I4(inStream_TREADY),
        .I5(inStream_TVALID),
        .O(inStream_V_dest_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_V_dest_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inStream_V_dest_V_0_state[0]_i_1_n_0 ),
        .Q(\inStream_V_dest_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_V_dest_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_V_dest_V_0_state),
        .Q(inStream_TREADY),
        .R(ap_rst_n_inv));
  LUT1 #(
    .INIT(2'h2)) 
    \indvar_flatten6_reg_368[0]_i_2 
       (.I0(indvar_flatten6_reg_368_reg[3]),
        .O(\indvar_flatten6_reg_368[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \indvar_flatten6_reg_368[0]_i_3 
       (.I0(indvar_flatten6_reg_368_reg[2]),
        .O(\indvar_flatten6_reg_368[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \indvar_flatten6_reg_368[0]_i_4 
       (.I0(indvar_flatten6_reg_368_reg[1]),
        .O(\indvar_flatten6_reg_368[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \indvar_flatten6_reg_368[0]_i_5 
       (.I0(indvar_flatten6_reg_368_reg[0]),
        .O(\indvar_flatten6_reg_368[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \indvar_flatten6_reg_368[12]_i_2 
       (.I0(indvar_flatten6_reg_368_reg[13]),
        .O(\indvar_flatten6_reg_368[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \indvar_flatten6_reg_368[12]_i_3 
       (.I0(indvar_flatten6_reg_368_reg[12]),
        .O(\indvar_flatten6_reg_368[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \indvar_flatten6_reg_368[4]_i_2 
       (.I0(indvar_flatten6_reg_368_reg[7]),
        .O(\indvar_flatten6_reg_368[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \indvar_flatten6_reg_368[4]_i_3 
       (.I0(indvar_flatten6_reg_368_reg[6]),
        .O(\indvar_flatten6_reg_368[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \indvar_flatten6_reg_368[4]_i_4 
       (.I0(indvar_flatten6_reg_368_reg[5]),
        .O(\indvar_flatten6_reg_368[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \indvar_flatten6_reg_368[4]_i_5 
       (.I0(indvar_flatten6_reg_368_reg[4]),
        .O(\indvar_flatten6_reg_368[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \indvar_flatten6_reg_368[8]_i_2 
       (.I0(indvar_flatten6_reg_368_reg[11]),
        .O(\indvar_flatten6_reg_368[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \indvar_flatten6_reg_368[8]_i_3 
       (.I0(indvar_flatten6_reg_368_reg[10]),
        .O(\indvar_flatten6_reg_368[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \indvar_flatten6_reg_368[8]_i_4 
       (.I0(indvar_flatten6_reg_368_reg[9]),
        .O(\indvar_flatten6_reg_368[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \indvar_flatten6_reg_368[8]_i_5 
       (.I0(indvar_flatten6_reg_368_reg[8]),
        .O(\indvar_flatten6_reg_368[8]_i_5_n_0 ));
  FDRE \indvar_flatten6_reg_368_reg[0] 
       (.C(ap_clk),
        .CE(\x_assign_reg_390[6]_i_2_n_0 ),
        .D(\indvar_flatten6_reg_368_reg[0]_i_1_n_7 ),
        .Q(indvar_flatten6_reg_368_reg[0]),
        .R(indvar_flatten6_reg_368));
  CARRY4 \indvar_flatten6_reg_368_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\indvar_flatten6_reg_368_reg[0]_i_1_n_0 ,\indvar_flatten6_reg_368_reg[0]_i_1_n_1 ,\indvar_flatten6_reg_368_reg[0]_i_1_n_2 ,\indvar_flatten6_reg_368_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\indvar_flatten6_reg_368_reg[0]_i_1_n_4 ,\indvar_flatten6_reg_368_reg[0]_i_1_n_5 ,\indvar_flatten6_reg_368_reg[0]_i_1_n_6 ,\indvar_flatten6_reg_368_reg[0]_i_1_n_7 }),
        .S({\indvar_flatten6_reg_368[0]_i_2_n_0 ,\indvar_flatten6_reg_368[0]_i_3_n_0 ,\indvar_flatten6_reg_368[0]_i_4_n_0 ,\indvar_flatten6_reg_368[0]_i_5_n_0 }));
  FDRE \indvar_flatten6_reg_368_reg[10] 
       (.C(ap_clk),
        .CE(\x_assign_reg_390[6]_i_2_n_0 ),
        .D(\indvar_flatten6_reg_368_reg[8]_i_1_n_5 ),
        .Q(indvar_flatten6_reg_368_reg[10]),
        .R(indvar_flatten6_reg_368));
  FDRE \indvar_flatten6_reg_368_reg[11] 
       (.C(ap_clk),
        .CE(\x_assign_reg_390[6]_i_2_n_0 ),
        .D(\indvar_flatten6_reg_368_reg[8]_i_1_n_4 ),
        .Q(indvar_flatten6_reg_368_reg[11]),
        .R(indvar_flatten6_reg_368));
  FDRE \indvar_flatten6_reg_368_reg[12] 
       (.C(ap_clk),
        .CE(\x_assign_reg_390[6]_i_2_n_0 ),
        .D(\indvar_flatten6_reg_368_reg[12]_i_1_n_7 ),
        .Q(indvar_flatten6_reg_368_reg[12]),
        .R(indvar_flatten6_reg_368));
  CARRY4 \indvar_flatten6_reg_368_reg[12]_i_1 
       (.CI(\indvar_flatten6_reg_368_reg[8]_i_1_n_0 ),
        .CO({\NLW_indvar_flatten6_reg_368_reg[12]_i_1_CO_UNCONNECTED [3:1],\indvar_flatten6_reg_368_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_indvar_flatten6_reg_368_reg[12]_i_1_O_UNCONNECTED [3:2],\indvar_flatten6_reg_368_reg[12]_i_1_n_6 ,\indvar_flatten6_reg_368_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,\indvar_flatten6_reg_368[12]_i_2_n_0 ,\indvar_flatten6_reg_368[12]_i_3_n_0 }));
  FDRE \indvar_flatten6_reg_368_reg[13] 
       (.C(ap_clk),
        .CE(\x_assign_reg_390[6]_i_2_n_0 ),
        .D(\indvar_flatten6_reg_368_reg[12]_i_1_n_6 ),
        .Q(indvar_flatten6_reg_368_reg[13]),
        .R(indvar_flatten6_reg_368));
  FDRE \indvar_flatten6_reg_368_reg[1] 
       (.C(ap_clk),
        .CE(\x_assign_reg_390[6]_i_2_n_0 ),
        .D(\indvar_flatten6_reg_368_reg[0]_i_1_n_6 ),
        .Q(indvar_flatten6_reg_368_reg[1]),
        .R(indvar_flatten6_reg_368));
  FDRE \indvar_flatten6_reg_368_reg[2] 
       (.C(ap_clk),
        .CE(\x_assign_reg_390[6]_i_2_n_0 ),
        .D(\indvar_flatten6_reg_368_reg[0]_i_1_n_5 ),
        .Q(indvar_flatten6_reg_368_reg[2]),
        .R(indvar_flatten6_reg_368));
  FDRE \indvar_flatten6_reg_368_reg[3] 
       (.C(ap_clk),
        .CE(\x_assign_reg_390[6]_i_2_n_0 ),
        .D(\indvar_flatten6_reg_368_reg[0]_i_1_n_4 ),
        .Q(indvar_flatten6_reg_368_reg[3]),
        .R(indvar_flatten6_reg_368));
  FDRE \indvar_flatten6_reg_368_reg[4] 
       (.C(ap_clk),
        .CE(\x_assign_reg_390[6]_i_2_n_0 ),
        .D(\indvar_flatten6_reg_368_reg[4]_i_1_n_7 ),
        .Q(indvar_flatten6_reg_368_reg[4]),
        .R(indvar_flatten6_reg_368));
  CARRY4 \indvar_flatten6_reg_368_reg[4]_i_1 
       (.CI(\indvar_flatten6_reg_368_reg[0]_i_1_n_0 ),
        .CO({\indvar_flatten6_reg_368_reg[4]_i_1_n_0 ,\indvar_flatten6_reg_368_reg[4]_i_1_n_1 ,\indvar_flatten6_reg_368_reg[4]_i_1_n_2 ,\indvar_flatten6_reg_368_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten6_reg_368_reg[4]_i_1_n_4 ,\indvar_flatten6_reg_368_reg[4]_i_1_n_5 ,\indvar_flatten6_reg_368_reg[4]_i_1_n_6 ,\indvar_flatten6_reg_368_reg[4]_i_1_n_7 }),
        .S({\indvar_flatten6_reg_368[4]_i_2_n_0 ,\indvar_flatten6_reg_368[4]_i_3_n_0 ,\indvar_flatten6_reg_368[4]_i_4_n_0 ,\indvar_flatten6_reg_368[4]_i_5_n_0 }));
  FDRE \indvar_flatten6_reg_368_reg[5] 
       (.C(ap_clk),
        .CE(\x_assign_reg_390[6]_i_2_n_0 ),
        .D(\indvar_flatten6_reg_368_reg[4]_i_1_n_6 ),
        .Q(indvar_flatten6_reg_368_reg[5]),
        .R(indvar_flatten6_reg_368));
  FDRE \indvar_flatten6_reg_368_reg[6] 
       (.C(ap_clk),
        .CE(\x_assign_reg_390[6]_i_2_n_0 ),
        .D(\indvar_flatten6_reg_368_reg[4]_i_1_n_5 ),
        .Q(indvar_flatten6_reg_368_reg[6]),
        .R(indvar_flatten6_reg_368));
  FDRE \indvar_flatten6_reg_368_reg[7] 
       (.C(ap_clk),
        .CE(\x_assign_reg_390[6]_i_2_n_0 ),
        .D(\indvar_flatten6_reg_368_reg[4]_i_1_n_4 ),
        .Q(indvar_flatten6_reg_368_reg[7]),
        .R(indvar_flatten6_reg_368));
  FDRE \indvar_flatten6_reg_368_reg[8] 
       (.C(ap_clk),
        .CE(\x_assign_reg_390[6]_i_2_n_0 ),
        .D(\indvar_flatten6_reg_368_reg[8]_i_1_n_7 ),
        .Q(indvar_flatten6_reg_368_reg[8]),
        .R(indvar_flatten6_reg_368));
  CARRY4 \indvar_flatten6_reg_368_reg[8]_i_1 
       (.CI(\indvar_flatten6_reg_368_reg[4]_i_1_n_0 ),
        .CO({\indvar_flatten6_reg_368_reg[8]_i_1_n_0 ,\indvar_flatten6_reg_368_reg[8]_i_1_n_1 ,\indvar_flatten6_reg_368_reg[8]_i_1_n_2 ,\indvar_flatten6_reg_368_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten6_reg_368_reg[8]_i_1_n_4 ,\indvar_flatten6_reg_368_reg[8]_i_1_n_5 ,\indvar_flatten6_reg_368_reg[8]_i_1_n_6 ,\indvar_flatten6_reg_368_reg[8]_i_1_n_7 }),
        .S({\indvar_flatten6_reg_368[8]_i_2_n_0 ,\indvar_flatten6_reg_368[8]_i_3_n_0 ,\indvar_flatten6_reg_368[8]_i_4_n_0 ,\indvar_flatten6_reg_368[8]_i_5_n_0 }));
  FDRE \indvar_flatten6_reg_368_reg[9] 
       (.C(ap_clk),
        .CE(\x_assign_reg_390[6]_i_2_n_0 ),
        .D(\indvar_flatten6_reg_368_reg[8]_i_1_n_6 ),
        .Q(indvar_flatten6_reg_368_reg[9]),
        .R(indvar_flatten6_reg_368));
  LUT1 #(
    .INIT(2'h1)) 
    \indvar_flatten_reg_311[0]_i_1 
       (.I0(indvar_flatten_reg_311[0]),
        .O(indvar_flatten_next_fu_470_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \indvar_flatten_reg_311[1]_i_1 
       (.I0(indvar_flatten_reg_311[1]),
        .I1(indvar_flatten_reg_311[0]),
        .O(indvar_flatten_next_fu_470_p2[1]));
  LUT5 #(
    .INIT(32'h88808888)) 
    \indvar_flatten_reg_311[2]_i_1 
       (.I0(ap_enable_reg_pp2_iter0),
        .I1(ap_CS_fsm_pp2_stage0),
        .I2(indvar_flatten_reg_311[1]),
        .I3(indvar_flatten_reg_311[0]),
        .I4(indvar_flatten_reg_311[2]),
        .O(indvar_flatten_reg_3110));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \indvar_flatten_reg_311[2]_i_2 
       (.I0(indvar_flatten_reg_311[2]),
        .I1(indvar_flatten_reg_311[0]),
        .I2(indvar_flatten_reg_311[1]),
        .O(indvar_flatten_next_fu_470_p2[2]));
  FDRE \indvar_flatten_reg_311_reg[0] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_3110),
        .D(indvar_flatten_next_fu_470_p2[0]),
        .Q(indvar_flatten_reg_311[0]),
        .R(ap_CS_fsm_state7));
  FDRE \indvar_flatten_reg_311_reg[1] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_3110),
        .D(indvar_flatten_next_fu_470_p2[1]),
        .Q(indvar_flatten_reg_311[1]),
        .R(ap_CS_fsm_state7));
  FDRE \indvar_flatten_reg_311_reg[2] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_3110),
        .D(indvar_flatten_next_fu_470_p2[2]),
        .Q(indvar_flatten_reg_311[2]),
        .R(ap_CS_fsm_state7));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d92x92_pbkb lineBuffer_0_U
       (.D(lineBuffer_0_q0),
        .E(lineBuffer_0_we1),
        .Q(lineBuffer_1_addr_2_reg_1032),
        .WEBWE(p_81_in),
        .\ap_CS_fsm_reg[5] (lineBuffer_1_U_n_66),
        .\ap_CS_fsm_reg[7] ({ap_CS_fsm_pp3_stage0,ap_CS_fsm_pp2_stage0,ap_CS_fsm_pp0_stage0}),
        .\ap_CS_fsm_reg[7]_0 (lineBuffer_1_U_n_68),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp2_iter0(ap_enable_reg_pp2_iter0),
        .ap_enable_reg_pp3_iter0(ap_enable_reg_pp3_iter0),
        .ap_enable_reg_pp3_iter1_reg(ap_enable_reg_pp3_iter1_reg_n_0),
        .\exitcond1_reg_885_reg[0] (\exitcond1_reg_885_reg_n_0_[0] ),
        .\exitcond_flatten8_reg_1008_reg[0] (\exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .\inStream_V_data_V_0_payload_B_reg[31] (inStream_V_data_V_0_data_out),
        .\inStream_V_data_V_0_state_reg[0] (lineBuffer_1_U_n_65),
        .\inStream_V_data_V_0_state_reg[0]_0 (\inStream_V_data_V_0_state_reg_n_0_[0] ),
        .lineBuffer_0_we0(lineBuffer_0_we0),
        .p_76_in(p_76_in),
        .ram_reg(lineBuffer_1_q0),
        .tmp_10_reg_917(tmp_10_reg_917),
        .\window_1_2_1_reg_333_reg[31] (window_2_2_7_fu_556_p3),
        .\x4_reg_357_reg[1] (x4_reg_357),
        .\x_assign_reg_390_reg[2] (lineBuffer_1_U_n_69),
        .\x_assign_reg_390_reg[5] ({x_assign_reg_390[5:3],x_assign_reg_390[1:0]}),
        .\x_assign_reg_390_reg[5]_0 (lineBuffer_1_U_n_70),
        .\x_assign_reg_390_reg[6] (lineBuffer_1_U_n_71),
        .\x_reg_287_reg[6] ({\x_reg_287_reg_n_0_[6] ,\x_reg_287_reg_n_0_[5] ,\x_reg_287_reg_n_0_[4] ,\x_reg_287_reg_n_0_[3] ,\x_reg_287_reg_n_0_[2] ,\x_reg_287_reg_n_0_[1] ,\x_reg_287_reg_n_0_[0] }));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lineBuffer_0_addr_2_reg_1026[2]_i_1 
       (.I0(x_assign_reg_390[2]),
        .I1(lineBuffer_1_U_n_70),
        .O(\lineBuffer_0_addr_2_reg_1026[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lineBuffer_0_addr_2_reg_1026[3]_i_1 
       (.I0(x_assign_reg_390[3]),
        .I1(lineBuffer_1_U_n_70),
        .O(\lineBuffer_0_addr_2_reg_1026[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \lineBuffer_0_addr_2_reg_1026[4]_i_1 
       (.I0(x_assign_reg_390[4]),
        .I1(lineBuffer_1_U_n_70),
        .O(\lineBuffer_0_addr_2_reg_1026[4]_i_1_n_0 ));
  FDRE \lineBuffer_0_addr_2_reg_1026_reg[0] 
       (.C(ap_clk),
        .CE(lineBuffer_0_addr_2_reg_10260),
        .D(x_assign_reg_390[0]),
        .Q(lineBuffer_1_addr_2_reg_1032[0]),
        .R(1'b0));
  FDRE \lineBuffer_0_addr_2_reg_1026_reg[1] 
       (.C(ap_clk),
        .CE(lineBuffer_0_addr_2_reg_10260),
        .D(x_assign_reg_390[1]),
        .Q(lineBuffer_1_addr_2_reg_1032[1]),
        .R(1'b0));
  FDRE \lineBuffer_0_addr_2_reg_1026_reg[2] 
       (.C(ap_clk),
        .CE(lineBuffer_0_addr_2_reg_10260),
        .D(\lineBuffer_0_addr_2_reg_1026[2]_i_1_n_0 ),
        .Q(lineBuffer_1_addr_2_reg_1032[2]),
        .R(1'b0));
  FDRE \lineBuffer_0_addr_2_reg_1026_reg[3] 
       (.C(ap_clk),
        .CE(lineBuffer_0_addr_2_reg_10260),
        .D(\lineBuffer_0_addr_2_reg_1026[3]_i_1_n_0 ),
        .Q(lineBuffer_1_addr_2_reg_1032[3]),
        .R(1'b0));
  FDRE \lineBuffer_0_addr_2_reg_1026_reg[4] 
       (.C(ap_clk),
        .CE(lineBuffer_0_addr_2_reg_10260),
        .D(\lineBuffer_0_addr_2_reg_1026[4]_i_1_n_0 ),
        .Q(lineBuffer_1_addr_2_reg_1032[4]),
        .R(1'b0));
  FDRE \lineBuffer_0_addr_2_reg_1026_reg[5] 
       (.C(ap_clk),
        .CE(lineBuffer_0_addr_2_reg_10260),
        .D(x_assign_reg_390[5]),
        .Q(lineBuffer_1_addr_2_reg_1032[5]),
        .R(1'b0));
  FDRE \lineBuffer_0_addr_2_reg_1026_reg[6] 
       (.C(ap_clk),
        .CE(lineBuffer_0_addr_2_reg_10260),
        .D(lineBuffer_1_U_n_71),
        .Q(lineBuffer_1_addr_2_reg_1032[6]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d92x92_pbkb_0 lineBuffer_1_U
       (.D(lineBuffer_1_q0),
        .Q(ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1032),
        .\ap_CS_fsm_reg[7] ({ap_CS_fsm_pp3_stage0,ap_CS_fsm_pp2_stage0,ap_CS_fsm_pp1_stage0}),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp1_iter1(ap_enable_reg_pp1_iter1),
        .ap_enable_reg_pp2_iter0(ap_enable_reg_pp2_iter0),
        .ap_enable_reg_pp3_iter0(ap_enable_reg_pp3_iter0),
        .ap_enable_reg_pp3_iter1_reg(ap_enable_reg_pp3_iter1_reg_n_0),
        .ap_enable_reg_pp3_iter2(ap_enable_reg_pp3_iter2),
        .ap_enable_reg_pp3_iter3_reg(ap_enable_reg_pp3_iter3_reg_n_0),
        .\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg[0] (\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .ap_pipeline_reg_pp3_iter1_tmp_reg_1022(ap_pipeline_reg_pp3_iter1_tmp_reg_1022),
        .ap_pipeline_reg_pp3_iter2_tmp_reg_1022(ap_pipeline_reg_pp3_iter2_tmp_reg_1022),
        .\exitcond4_reg_894_reg[0] (\exitcond4_reg_894_reg_n_0_[0] ),
        .\exitcond_flatten8_reg_1008_reg[0] (\exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .\inStream_V_data_V_0_payload_A_reg[31] (inStream_V_data_V_0_payload_A),
        .\inStream_V_data_V_0_payload_B_reg[31] (inStream_V_data_V_0_payload_B),
        .inStream_V_data_V_0_sel(inStream_V_data_V_0_sel),
        .\inStream_V_data_V_0_state_reg[0] (\inStream_V_data_V_0_state_reg_n_0_[0] ),
        .\lineBuffer_0_addr_2_reg_1026_reg[6] (lineBuffer_1_U_n_70),
        .\lineBuffer_0_addr_2_reg_1026_reg[6]_0 (lineBuffer_1_U_n_71),
        .lineBuffer_1_we0(lineBuffer_1_we0),
        .\outStream_V_data_V_1_state_reg[1] (outStream_V_data_V_1_ack_in),
        .p_72_in(p_72_in),
        .ram_reg(inStream_V_data_V_0_data_out),
        .ram_reg_0(lineBuffer_1_U_n_65),
        .ram_reg_1(lineBuffer_1_U_n_66),
        .ram_reg_2(lineBuffer_1_U_n_68),
        .ram_reg_3(lineBuffer_1_U_n_69),
        .tmp_7_reg_1038(tmp_7_reg_1038),
        .\window_2_2_2_fu_172_reg[31] (window_2_2_2_fu_172),
        .\x1_reg_299_reg[6] (x1_reg_299),
        .\x4_reg_357_reg[1] (x4_reg_357),
        .\x_assign_reg_390_reg[6] (x_assign_reg_390));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[0]_i_1 
       (.I0(window_1_0_read_as_fu_160[0]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[0]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[0]),
        .O(maxValue_17_0_maxVal_fu_737_p3[0]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[10]_i_1 
       (.I0(window_1_0_read_as_fu_160[10]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[10]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[10]),
        .O(maxValue_17_0_maxVal_fu_737_p3[10]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[11]_i_1 
       (.I0(window_1_0_read_as_fu_160[11]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[11]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[11]),
        .O(maxValue_17_0_maxVal_fu_737_p3[11]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[12]_i_1 
       (.I0(window_1_0_read_as_fu_160[12]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[12]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[12]),
        .O(maxValue_17_0_maxVal_fu_737_p3[12]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[13]_i_1 
       (.I0(window_1_0_read_as_fu_160[13]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[13]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[13]),
        .O(maxValue_17_0_maxVal_fu_737_p3[13]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[14]_i_1 
       (.I0(window_1_0_read_as_fu_160[14]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[14]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[14]),
        .O(maxValue_17_0_maxVal_fu_737_p3[14]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[15]_i_1 
       (.I0(window_1_0_read_as_fu_160[15]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[15]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[15]),
        .O(maxValue_17_0_maxVal_fu_737_p3[15]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[16]_i_1 
       (.I0(window_1_0_read_as_fu_160[16]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[16]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[16]),
        .O(maxValue_17_0_maxVal_fu_737_p3[16]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[17]_i_1 
       (.I0(window_1_0_read_as_fu_160[17]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[17]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[17]),
        .O(maxValue_17_0_maxVal_fu_737_p3[17]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[18]_i_1 
       (.I0(window_1_0_read_as_fu_160[18]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[18]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[18]),
        .O(maxValue_17_0_maxVal_fu_737_p3[18]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[19]_i_1 
       (.I0(window_1_0_read_as_fu_160[19]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[19]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[19]),
        .O(maxValue_17_0_maxVal_fu_737_p3[19]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[1]_i_1 
       (.I0(window_1_0_read_as_fu_160[1]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[1]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[1]),
        .O(maxValue_17_0_maxVal_fu_737_p3[1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[20]_i_1 
       (.I0(window_1_0_read_as_fu_160[20]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[20]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[20]),
        .O(maxValue_17_0_maxVal_fu_737_p3[20]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[21]_i_1 
       (.I0(window_1_0_read_as_fu_160[21]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[21]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[21]),
        .O(maxValue_17_0_maxVal_fu_737_p3[21]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[22]_i_1 
       (.I0(window_1_0_read_as_fu_160[22]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[22]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[22]),
        .O(maxValue_17_0_maxVal_fu_737_p3[22]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[23]_i_1 
       (.I0(window_1_0_read_as_fu_160[23]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[23]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[23]),
        .O(maxValue_17_0_maxVal_fu_737_p3[23]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[24]_i_1 
       (.I0(window_1_0_read_as_fu_160[24]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[24]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[24]),
        .O(maxValue_17_0_maxVal_fu_737_p3[24]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[25]_i_1 
       (.I0(window_1_0_read_as_fu_160[25]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[25]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[25]),
        .O(maxValue_17_0_maxVal_fu_737_p3[25]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[26]_i_1 
       (.I0(window_1_0_read_as_fu_160[26]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[26]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[26]),
        .O(maxValue_17_0_maxVal_fu_737_p3[26]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[27]_i_1 
       (.I0(window_1_0_read_as_fu_160[27]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[27]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[27]),
        .O(maxValue_17_0_maxVal_fu_737_p3[27]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[28]_i_1 
       (.I0(window_1_0_read_as_fu_160[28]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[28]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[28]),
        .O(maxValue_17_0_maxVal_fu_737_p3[28]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[29]_i_1 
       (.I0(window_1_0_read_as_fu_160[29]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[29]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[29]),
        .O(maxValue_17_0_maxVal_fu_737_p3[29]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[2]_i_1 
       (.I0(window_1_0_read_as_fu_160[2]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[2]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[2]),
        .O(maxValue_17_0_maxVal_fu_737_p3[2]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[30]_i_1 
       (.I0(window_1_0_read_as_fu_160[30]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[30]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[30]),
        .O(maxValue_17_0_maxVal_fu_737_p3[30]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_1 
       (.I0(ap_CS_fsm_pp3_stage0),
        .I1(lineBuffer_1_U_n_65),
        .I2(tmp_9_reg_1003),
        .I3(tmp_reg_1022),
        .I4(\exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .O(maxValue_17_0_maxVal_reg_10470));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_10 
       (.I0(window_0_0_fu_152[31]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[31]),
        .I3(window_1_0_read_as_fu_160[31]),
        .I4(\maxValue_17_0_maxVal_reg_1047[31]_i_36_n_0 ),
        .I5(window_1_0_read_as_fu_160[30]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_100 
       (.I0(window_0_0_fu_152[5]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[5]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_100_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_101 
       (.I0(window_0_0_fu_152[3]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[3]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_101_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_102 
       (.I0(window_0_0_fu_152[1]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[1]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_102_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_103 
       (.I0(window_0_0_fu_152[6]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[6]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_103_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_104 
       (.I0(window_0_0_fu_152[4]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[4]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_104_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_105 
       (.I0(window_0_0_fu_152[2]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[2]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_105_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_106 
       (.I0(window_0_0_fu_152[0]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[0]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_106_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_11 
       (.I0(window_0_0_fu_152[29]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[29]),
        .I3(window_1_0_read_as_fu_160[29]),
        .I4(\maxValue_17_0_maxVal_reg_1047[31]_i_37_n_0 ),
        .I5(window_1_0_read_as_fu_160[28]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_12 
       (.I0(window_0_0_fu_152[27]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[27]),
        .I3(window_1_0_read_as_fu_160[27]),
        .I4(\maxValue_17_0_maxVal_reg_1047[31]_i_38_n_0 ),
        .I5(window_1_0_read_as_fu_160[26]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_13 
       (.I0(window_0_0_fu_152[25]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[25]),
        .I3(window_1_0_read_as_fu_160[25]),
        .I4(\maxValue_17_0_maxVal_reg_1047[31]_i_39_n_0 ),
        .I5(window_1_0_read_as_fu_160[24]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_15 
       (.I0(window_0_0_read_as_fu_148[31]),
        .I1(window_0_0_fu_152[31]),
        .I2(window_0_0_fu_152[30]),
        .I3(window_0_0_read_as_fu_148[30]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_16 
       (.I0(window_0_0_read_as_fu_148[29]),
        .I1(window_0_0_fu_152[29]),
        .I2(window_0_0_fu_152[28]),
        .I3(window_0_0_read_as_fu_148[28]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_17 
       (.I0(window_0_0_read_as_fu_148[27]),
        .I1(window_0_0_fu_152[27]),
        .I2(window_0_0_fu_152[26]),
        .I3(window_0_0_read_as_fu_148[26]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_18 
       (.I0(window_0_0_read_as_fu_148[25]),
        .I1(window_0_0_fu_152[25]),
        .I2(window_0_0_fu_152[24]),
        .I3(window_0_0_read_as_fu_148[24]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_19 
       (.I0(window_0_0_fu_152[31]),
        .I1(window_0_0_read_as_fu_148[31]),
        .I2(window_0_0_fu_152[30]),
        .I3(window_0_0_read_as_fu_148[30]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_2 
       (.I0(window_1_0_read_as_fu_160[31]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[31]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[31]),
        .O(maxValue_17_0_maxVal_fu_737_p3[31]));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_20 
       (.I0(window_0_0_fu_152[29]),
        .I1(window_0_0_read_as_fu_148[29]),
        .I2(window_0_0_fu_152[28]),
        .I3(window_0_0_read_as_fu_148[28]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_21 
       (.I0(window_0_0_fu_152[27]),
        .I1(window_0_0_read_as_fu_148[27]),
        .I2(window_0_0_fu_152[26]),
        .I3(window_0_0_read_as_fu_148[26]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_22 
       (.I0(window_0_0_fu_152[25]),
        .I1(window_0_0_read_as_fu_148[25]),
        .I2(window_0_0_fu_152[24]),
        .I3(window_0_0_read_as_fu_148[24]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h222222B2B2B222B2)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_24 
       (.I0(window_1_0_read_as_fu_160[23]),
        .I1(\maxValue_17_0_maxVal_reg_1047[31]_i_58_n_0 ),
        .I2(window_1_0_read_as_fu_160[22]),
        .I3(window_0_0_read_as_fu_148[22]),
        .I4(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I5(window_0_0_fu_152[22]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h222222B2B2B222B2)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_25 
       (.I0(window_1_0_read_as_fu_160[21]),
        .I1(\maxValue_17_0_maxVal_reg_1047[31]_i_59_n_0 ),
        .I2(window_1_0_read_as_fu_160[20]),
        .I3(window_0_0_read_as_fu_148[20]),
        .I4(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I5(window_0_0_fu_152[20]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h222222B2B2B222B2)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_26 
       (.I0(window_1_0_read_as_fu_160[19]),
        .I1(\maxValue_17_0_maxVal_reg_1047[31]_i_60_n_0 ),
        .I2(window_1_0_read_as_fu_160[18]),
        .I3(window_0_0_read_as_fu_148[18]),
        .I4(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I5(window_0_0_fu_152[18]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h222222B2B2B222B2)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_27 
       (.I0(window_1_0_read_as_fu_160[17]),
        .I1(\maxValue_17_0_maxVal_reg_1047[31]_i_61_n_0 ),
        .I2(window_1_0_read_as_fu_160[16]),
        .I3(window_0_0_read_as_fu_148[16]),
        .I4(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I5(window_0_0_fu_152[16]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_28 
       (.I0(window_0_0_fu_152[23]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[23]),
        .I3(window_1_0_read_as_fu_160[23]),
        .I4(\maxValue_17_0_maxVal_reg_1047[31]_i_62_n_0 ),
        .I5(window_1_0_read_as_fu_160[22]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_29 
       (.I0(window_0_0_fu_152[21]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[21]),
        .I3(window_1_0_read_as_fu_160[21]),
        .I4(\maxValue_17_0_maxVal_reg_1047[31]_i_63_n_0 ),
        .I5(window_1_0_read_as_fu_160[20]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_30 
       (.I0(window_0_0_fu_152[19]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[19]),
        .I3(window_1_0_read_as_fu_160[19]),
        .I4(\maxValue_17_0_maxVal_reg_1047[31]_i_64_n_0 ),
        .I5(window_1_0_read_as_fu_160[18]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_31 
       (.I0(window_0_0_fu_152[17]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[17]),
        .I3(window_1_0_read_as_fu_160[17]),
        .I4(\maxValue_17_0_maxVal_reg_1047[31]_i_65_n_0 ),
        .I5(window_1_0_read_as_fu_160[16]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_32 
       (.I0(window_0_0_fu_152[31]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[31]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_33 
       (.I0(window_0_0_fu_152[29]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[29]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_34 
       (.I0(window_0_0_fu_152[27]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[27]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_35 
       (.I0(window_0_0_fu_152[25]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[25]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_36 
       (.I0(window_0_0_fu_152[30]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[30]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_37 
       (.I0(window_0_0_fu_152[28]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[28]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_38 
       (.I0(window_0_0_fu_152[26]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[26]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_39 
       (.I0(window_0_0_fu_152[24]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[24]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_39_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_41 
       (.I0(window_0_0_read_as_fu_148[23]),
        .I1(window_0_0_fu_152[23]),
        .I2(window_0_0_fu_152[22]),
        .I3(window_0_0_read_as_fu_148[22]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_42 
       (.I0(window_0_0_read_as_fu_148[21]),
        .I1(window_0_0_fu_152[21]),
        .I2(window_0_0_fu_152[20]),
        .I3(window_0_0_read_as_fu_148[20]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_43 
       (.I0(window_0_0_read_as_fu_148[19]),
        .I1(window_0_0_fu_152[19]),
        .I2(window_0_0_fu_152[18]),
        .I3(window_0_0_read_as_fu_148[18]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_44 
       (.I0(window_0_0_read_as_fu_148[17]),
        .I1(window_0_0_fu_152[17]),
        .I2(window_0_0_fu_152[16]),
        .I3(window_0_0_read_as_fu_148[16]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_45 
       (.I0(window_0_0_fu_152[23]),
        .I1(window_0_0_read_as_fu_148[23]),
        .I2(window_0_0_fu_152[22]),
        .I3(window_0_0_read_as_fu_148[22]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_46 
       (.I0(window_0_0_fu_152[21]),
        .I1(window_0_0_read_as_fu_148[21]),
        .I2(window_0_0_fu_152[20]),
        .I3(window_0_0_read_as_fu_148[20]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_47 
       (.I0(window_0_0_fu_152[19]),
        .I1(window_0_0_read_as_fu_148[19]),
        .I2(window_0_0_fu_152[18]),
        .I3(window_0_0_read_as_fu_148[18]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_48 
       (.I0(window_0_0_fu_152[17]),
        .I1(window_0_0_read_as_fu_148[17]),
        .I2(window_0_0_fu_152[16]),
        .I3(window_0_0_read_as_fu_148[16]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h222222B2B2B222B2)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_50 
       (.I0(window_1_0_read_as_fu_160[15]),
        .I1(\maxValue_17_0_maxVal_reg_1047[31]_i_83_n_0 ),
        .I2(window_1_0_read_as_fu_160[14]),
        .I3(window_0_0_read_as_fu_148[14]),
        .I4(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I5(window_0_0_fu_152[14]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h222222B2B2B222B2)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_51 
       (.I0(window_1_0_read_as_fu_160[13]),
        .I1(\maxValue_17_0_maxVal_reg_1047[31]_i_84_n_0 ),
        .I2(window_1_0_read_as_fu_160[12]),
        .I3(window_0_0_read_as_fu_148[12]),
        .I4(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I5(window_0_0_fu_152[12]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h222222B2B2B222B2)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_52 
       (.I0(window_1_0_read_as_fu_160[11]),
        .I1(\maxValue_17_0_maxVal_reg_1047[31]_i_85_n_0 ),
        .I2(window_1_0_read_as_fu_160[10]),
        .I3(window_0_0_read_as_fu_148[10]),
        .I4(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I5(window_0_0_fu_152[10]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h222222B2B2B222B2)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_53 
       (.I0(window_1_0_read_as_fu_160[9]),
        .I1(\maxValue_17_0_maxVal_reg_1047[31]_i_86_n_0 ),
        .I2(window_1_0_read_as_fu_160[8]),
        .I3(window_0_0_read_as_fu_148[8]),
        .I4(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I5(window_0_0_fu_152[8]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_54 
       (.I0(window_0_0_fu_152[15]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[15]),
        .I3(window_1_0_read_as_fu_160[15]),
        .I4(\maxValue_17_0_maxVal_reg_1047[31]_i_87_n_0 ),
        .I5(window_1_0_read_as_fu_160[14]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_55 
       (.I0(window_0_0_fu_152[13]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[13]),
        .I3(window_1_0_read_as_fu_160[13]),
        .I4(\maxValue_17_0_maxVal_reg_1047[31]_i_88_n_0 ),
        .I5(window_1_0_read_as_fu_160[12]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_56 
       (.I0(window_0_0_fu_152[11]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[11]),
        .I3(window_1_0_read_as_fu_160[11]),
        .I4(\maxValue_17_0_maxVal_reg_1047[31]_i_89_n_0 ),
        .I5(window_1_0_read_as_fu_160[10]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_57 
       (.I0(window_0_0_fu_152[9]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[9]),
        .I3(window_1_0_read_as_fu_160[9]),
        .I4(\maxValue_17_0_maxVal_reg_1047[31]_i_90_n_0 ),
        .I5(window_1_0_read_as_fu_160[8]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_57_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_58 
       (.I0(window_0_0_fu_152[23]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[23]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_58_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_59 
       (.I0(window_0_0_fu_152[21]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[21]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h222222B2B2B222B2)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_6 
       (.I0(window_1_0_read_as_fu_160[31]),
        .I1(\maxValue_17_0_maxVal_reg_1047[31]_i_32_n_0 ),
        .I2(window_1_0_read_as_fu_160[30]),
        .I3(window_0_0_read_as_fu_148[30]),
        .I4(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I5(window_0_0_fu_152[30]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_60 
       (.I0(window_0_0_fu_152[19]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[19]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_60_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_61 
       (.I0(window_0_0_fu_152[17]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[17]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_61_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_62 
       (.I0(window_0_0_fu_152[22]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[22]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_63 
       (.I0(window_0_0_fu_152[20]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[20]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_63_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_64 
       (.I0(window_0_0_fu_152[18]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[18]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_64_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_65 
       (.I0(window_0_0_fu_152[16]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[16]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_65_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_67 
       (.I0(window_0_0_read_as_fu_148[15]),
        .I1(window_0_0_fu_152[15]),
        .I2(window_0_0_fu_152[14]),
        .I3(window_0_0_read_as_fu_148[14]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_67_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_68 
       (.I0(window_0_0_read_as_fu_148[13]),
        .I1(window_0_0_fu_152[13]),
        .I2(window_0_0_fu_152[12]),
        .I3(window_0_0_read_as_fu_148[12]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_68_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_69 
       (.I0(window_0_0_read_as_fu_148[11]),
        .I1(window_0_0_fu_152[11]),
        .I2(window_0_0_fu_152[10]),
        .I3(window_0_0_read_as_fu_148[10]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h222222B2B2B222B2)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_7 
       (.I0(window_1_0_read_as_fu_160[29]),
        .I1(\maxValue_17_0_maxVal_reg_1047[31]_i_33_n_0 ),
        .I2(window_1_0_read_as_fu_160[28]),
        .I3(window_0_0_read_as_fu_148[28]),
        .I4(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I5(window_0_0_fu_152[28]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_70 
       (.I0(window_0_0_read_as_fu_148[9]),
        .I1(window_0_0_fu_152[9]),
        .I2(window_0_0_fu_152[8]),
        .I3(window_0_0_read_as_fu_148[8]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_70_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_71 
       (.I0(window_0_0_fu_152[15]),
        .I1(window_0_0_read_as_fu_148[15]),
        .I2(window_0_0_fu_152[14]),
        .I3(window_0_0_read_as_fu_148[14]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_71_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_72 
       (.I0(window_0_0_fu_152[13]),
        .I1(window_0_0_read_as_fu_148[13]),
        .I2(window_0_0_fu_152[12]),
        .I3(window_0_0_read_as_fu_148[12]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_72_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_73 
       (.I0(window_0_0_fu_152[11]),
        .I1(window_0_0_read_as_fu_148[11]),
        .I2(window_0_0_fu_152[10]),
        .I3(window_0_0_read_as_fu_148[10]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_73_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_74 
       (.I0(window_0_0_fu_152[9]),
        .I1(window_0_0_read_as_fu_148[9]),
        .I2(window_0_0_fu_152[8]),
        .I3(window_0_0_read_as_fu_148[8]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h222222B2B2B222B2)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_75 
       (.I0(window_1_0_read_as_fu_160[7]),
        .I1(\maxValue_17_0_maxVal_reg_1047[31]_i_99_n_0 ),
        .I2(window_1_0_read_as_fu_160[6]),
        .I3(window_0_0_read_as_fu_148[6]),
        .I4(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I5(window_0_0_fu_152[6]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h222222B2B2B222B2)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_76 
       (.I0(window_1_0_read_as_fu_160[5]),
        .I1(\maxValue_17_0_maxVal_reg_1047[31]_i_100_n_0 ),
        .I2(window_1_0_read_as_fu_160[4]),
        .I3(window_0_0_read_as_fu_148[4]),
        .I4(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I5(window_0_0_fu_152[4]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'h222222B2B2B222B2)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_77 
       (.I0(window_1_0_read_as_fu_160[3]),
        .I1(\maxValue_17_0_maxVal_reg_1047[31]_i_101_n_0 ),
        .I2(window_1_0_read_as_fu_160[2]),
        .I3(window_0_0_read_as_fu_148[2]),
        .I4(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I5(window_0_0_fu_152[2]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_77_n_0 ));
  LUT6 #(
    .INIT(64'h222222B2B2B222B2)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_78 
       (.I0(window_1_0_read_as_fu_160[1]),
        .I1(\maxValue_17_0_maxVal_reg_1047[31]_i_102_n_0 ),
        .I2(window_1_0_read_as_fu_160[0]),
        .I3(window_0_0_read_as_fu_148[0]),
        .I4(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I5(window_0_0_fu_152[0]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_79 
       (.I0(window_0_0_fu_152[7]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[7]),
        .I3(window_1_0_read_as_fu_160[7]),
        .I4(\maxValue_17_0_maxVal_reg_1047[31]_i_103_n_0 ),
        .I5(window_1_0_read_as_fu_160[6]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'h222222B2B2B222B2)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_8 
       (.I0(window_1_0_read_as_fu_160[27]),
        .I1(\maxValue_17_0_maxVal_reg_1047[31]_i_34_n_0 ),
        .I2(window_1_0_read_as_fu_160[26]),
        .I3(window_0_0_read_as_fu_148[26]),
        .I4(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I5(window_0_0_fu_152[26]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_80 
       (.I0(window_0_0_fu_152[5]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[5]),
        .I3(window_1_0_read_as_fu_160[5]),
        .I4(\maxValue_17_0_maxVal_reg_1047[31]_i_104_n_0 ),
        .I5(window_1_0_read_as_fu_160[4]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_81 
       (.I0(window_0_0_fu_152[3]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[3]),
        .I3(window_1_0_read_as_fu_160[3]),
        .I4(\maxValue_17_0_maxVal_reg_1047[31]_i_105_n_0 ),
        .I5(window_1_0_read_as_fu_160[2]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_82 
       (.I0(window_0_0_fu_152[1]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[1]),
        .I3(window_1_0_read_as_fu_160[1]),
        .I4(\maxValue_17_0_maxVal_reg_1047[31]_i_106_n_0 ),
        .I5(window_1_0_read_as_fu_160[0]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_82_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_83 
       (.I0(window_0_0_fu_152[15]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[15]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_83_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_84 
       (.I0(window_0_0_fu_152[13]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[13]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_84_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_85 
       (.I0(window_0_0_fu_152[11]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[11]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_85_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_86 
       (.I0(window_0_0_fu_152[9]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[9]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_86_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_87 
       (.I0(window_0_0_fu_152[14]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[14]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_87_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_88 
       (.I0(window_0_0_fu_152[12]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[12]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_88_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_89 
       (.I0(window_0_0_fu_152[10]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[10]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_89_n_0 ));
  LUT6 #(
    .INIT(64'h222222B2B2B222B2)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_9 
       (.I0(window_1_0_read_as_fu_160[25]),
        .I1(\maxValue_17_0_maxVal_reg_1047[31]_i_35_n_0 ),
        .I2(window_1_0_read_as_fu_160[24]),
        .I3(window_0_0_read_as_fu_148[24]),
        .I4(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I5(window_0_0_fu_152[24]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_90 
       (.I0(window_0_0_fu_152[8]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[8]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_90_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_91 
       (.I0(window_0_0_read_as_fu_148[7]),
        .I1(window_0_0_fu_152[7]),
        .I2(window_0_0_fu_152[6]),
        .I3(window_0_0_read_as_fu_148[6]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_91_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_92 
       (.I0(window_0_0_read_as_fu_148[5]),
        .I1(window_0_0_fu_152[5]),
        .I2(window_0_0_fu_152[4]),
        .I3(window_0_0_read_as_fu_148[4]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_92_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_93 
       (.I0(window_0_0_read_as_fu_148[3]),
        .I1(window_0_0_fu_152[3]),
        .I2(window_0_0_fu_152[2]),
        .I3(window_0_0_read_as_fu_148[2]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_93_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_94 
       (.I0(window_0_0_read_as_fu_148[1]),
        .I1(window_0_0_fu_152[1]),
        .I2(window_0_0_fu_152[0]),
        .I3(window_0_0_read_as_fu_148[0]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_94_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_95 
       (.I0(window_0_0_fu_152[7]),
        .I1(window_0_0_read_as_fu_148[7]),
        .I2(window_0_0_fu_152[6]),
        .I3(window_0_0_read_as_fu_148[6]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_95_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_96 
       (.I0(window_0_0_fu_152[5]),
        .I1(window_0_0_read_as_fu_148[5]),
        .I2(window_0_0_fu_152[4]),
        .I3(window_0_0_read_as_fu_148[4]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_96_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_97 
       (.I0(window_0_0_fu_152[3]),
        .I1(window_0_0_read_as_fu_148[3]),
        .I2(window_0_0_fu_152[2]),
        .I3(window_0_0_read_as_fu_148[2]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_97_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_98 
       (.I0(window_0_0_fu_152[1]),
        .I1(window_0_0_read_as_fu_148[1]),
        .I2(window_0_0_fu_152[0]),
        .I3(window_0_0_read_as_fu_148[0]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_98_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \maxValue_17_0_maxVal_reg_1047[31]_i_99 
       (.I0(window_0_0_fu_152[7]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I2(window_0_0_read_as_fu_148[7]),
        .O(\maxValue_17_0_maxVal_reg_1047[31]_i_99_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[3]_i_1 
       (.I0(window_1_0_read_as_fu_160[3]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[3]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[3]),
        .O(maxValue_17_0_maxVal_fu_737_p3[3]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[4]_i_1 
       (.I0(window_1_0_read_as_fu_160[4]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[4]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[4]),
        .O(maxValue_17_0_maxVal_fu_737_p3[4]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[5]_i_1 
       (.I0(window_1_0_read_as_fu_160[5]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[5]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[5]),
        .O(maxValue_17_0_maxVal_fu_737_p3[5]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[6]_i_1 
       (.I0(window_1_0_read_as_fu_160[6]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[6]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[6]),
        .O(maxValue_17_0_maxVal_fu_737_p3[6]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[7]_i_1 
       (.I0(window_1_0_read_as_fu_160[7]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[7]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[7]),
        .O(maxValue_17_0_maxVal_fu_737_p3[7]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[8]_i_1 
       (.I0(window_1_0_read_as_fu_160[8]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[8]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[8]),
        .O(maxValue_17_0_maxVal_fu_737_p3[8]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxValue_17_0_maxVal_reg_1047[9]_i_1 
       (.I0(window_1_0_read_as_fu_160[9]),
        .I1(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ),
        .I2(window_0_0_fu_152[9]),
        .I3(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ),
        .I4(window_0_0_read_as_fu_148[9]),
        .O(maxValue_17_0_maxVal_fu_737_p3[9]));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[0] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[0]),
        .Q(maxValue_17_0_maxVal_reg_1047[0]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[10] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[10]),
        .Q(maxValue_17_0_maxVal_reg_1047[10]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[11] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[11]),
        .Q(maxValue_17_0_maxVal_reg_1047[11]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[12] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[12]),
        .Q(maxValue_17_0_maxVal_reg_1047[12]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[13] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[13]),
        .Q(maxValue_17_0_maxVal_reg_1047[13]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[14] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[14]),
        .Q(maxValue_17_0_maxVal_reg_1047[14]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[15] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[15]),
        .Q(maxValue_17_0_maxVal_reg_1047[15]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[16] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[16]),
        .Q(maxValue_17_0_maxVal_reg_1047[16]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[17] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[17]),
        .Q(maxValue_17_0_maxVal_reg_1047[17]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[18] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[18]),
        .Q(maxValue_17_0_maxVal_reg_1047[18]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[19] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[19]),
        .Q(maxValue_17_0_maxVal_reg_1047[19]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[1] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[1]),
        .Q(maxValue_17_0_maxVal_reg_1047[1]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[20] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[20]),
        .Q(maxValue_17_0_maxVal_reg_1047[20]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[21] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[21]),
        .Q(maxValue_17_0_maxVal_reg_1047[21]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[22] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[22]),
        .Q(maxValue_17_0_maxVal_reg_1047[22]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[23] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[23]),
        .Q(maxValue_17_0_maxVal_reg_1047[23]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[24] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[24]),
        .Q(maxValue_17_0_maxVal_reg_1047[24]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[25] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[25]),
        .Q(maxValue_17_0_maxVal_reg_1047[25]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[26] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[26]),
        .Q(maxValue_17_0_maxVal_reg_1047[26]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[27] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[27]),
        .Q(maxValue_17_0_maxVal_reg_1047[27]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[28] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[28]),
        .Q(maxValue_17_0_maxVal_reg_1047[28]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[29] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[29]),
        .Q(maxValue_17_0_maxVal_reg_1047[29]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[2] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[2]),
        .Q(maxValue_17_0_maxVal_reg_1047[2]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[30] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[30]),
        .Q(maxValue_17_0_maxVal_reg_1047[30]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[31] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[31]),
        .Q(maxValue_17_0_maxVal_reg_1047[31]),
        .R(1'b0));
  CARRY4 \maxValue_17_0_maxVal_reg_1047_reg[31]_i_14 
       (.CI(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_40_n_0 ),
        .CO({\maxValue_17_0_maxVal_reg_1047_reg[31]_i_14_n_0 ,\maxValue_17_0_maxVal_reg_1047_reg[31]_i_14_n_1 ,\maxValue_17_0_maxVal_reg_1047_reg[31]_i_14_n_2 ,\maxValue_17_0_maxVal_reg_1047_reg[31]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({\maxValue_17_0_maxVal_reg_1047[31]_i_41_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_42_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_43_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_44_n_0 }),
        .O(\NLW_maxValue_17_0_maxVal_reg_1047_reg[31]_i_14_O_UNCONNECTED [3:0]),
        .S({\maxValue_17_0_maxVal_reg_1047[31]_i_45_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_46_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_47_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_48_n_0 }));
  CARRY4 \maxValue_17_0_maxVal_reg_1047_reg[31]_i_23 
       (.CI(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_49_n_0 ),
        .CO({\maxValue_17_0_maxVal_reg_1047_reg[31]_i_23_n_0 ,\maxValue_17_0_maxVal_reg_1047_reg[31]_i_23_n_1 ,\maxValue_17_0_maxVal_reg_1047_reg[31]_i_23_n_2 ,\maxValue_17_0_maxVal_reg_1047_reg[31]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({\maxValue_17_0_maxVal_reg_1047[31]_i_50_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_51_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_52_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_53_n_0 }),
        .O(\NLW_maxValue_17_0_maxVal_reg_1047_reg[31]_i_23_O_UNCONNECTED [3:0]),
        .S({\maxValue_17_0_maxVal_reg_1047[31]_i_54_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_55_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_56_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_57_n_0 }));
  CARRY4 \maxValue_17_0_maxVal_reg_1047_reg[31]_i_3 
       (.CI(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_5_n_0 ),
        .CO({\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_0 ,\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_1 ,\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_2 ,\maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\maxValue_17_0_maxVal_reg_1047[31]_i_6_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_7_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_8_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_9_n_0 }),
        .O(\NLW_maxValue_17_0_maxVal_reg_1047_reg[31]_i_3_O_UNCONNECTED [3:0]),
        .S({\maxValue_17_0_maxVal_reg_1047[31]_i_10_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_11_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_12_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_13_n_0 }));
  CARRY4 \maxValue_17_0_maxVal_reg_1047_reg[31]_i_4 
       (.CI(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_14_n_0 ),
        .CO({\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_0 ,\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_1 ,\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_2 ,\maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\maxValue_17_0_maxVal_reg_1047[31]_i_15_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_16_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_17_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_18_n_0 }),
        .O(\NLW_maxValue_17_0_maxVal_reg_1047_reg[31]_i_4_O_UNCONNECTED [3:0]),
        .S({\maxValue_17_0_maxVal_reg_1047[31]_i_19_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_20_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_21_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_22_n_0 }));
  CARRY4 \maxValue_17_0_maxVal_reg_1047_reg[31]_i_40 
       (.CI(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_66_n_0 ),
        .CO({\maxValue_17_0_maxVal_reg_1047_reg[31]_i_40_n_0 ,\maxValue_17_0_maxVal_reg_1047_reg[31]_i_40_n_1 ,\maxValue_17_0_maxVal_reg_1047_reg[31]_i_40_n_2 ,\maxValue_17_0_maxVal_reg_1047_reg[31]_i_40_n_3 }),
        .CYINIT(1'b0),
        .DI({\maxValue_17_0_maxVal_reg_1047[31]_i_67_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_68_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_69_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_70_n_0 }),
        .O(\NLW_maxValue_17_0_maxVal_reg_1047_reg[31]_i_40_O_UNCONNECTED [3:0]),
        .S({\maxValue_17_0_maxVal_reg_1047[31]_i_71_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_72_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_73_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_74_n_0 }));
  CARRY4 \maxValue_17_0_maxVal_reg_1047_reg[31]_i_49 
       (.CI(1'b0),
        .CO({\maxValue_17_0_maxVal_reg_1047_reg[31]_i_49_n_0 ,\maxValue_17_0_maxVal_reg_1047_reg[31]_i_49_n_1 ,\maxValue_17_0_maxVal_reg_1047_reg[31]_i_49_n_2 ,\maxValue_17_0_maxVal_reg_1047_reg[31]_i_49_n_3 }),
        .CYINIT(1'b0),
        .DI({\maxValue_17_0_maxVal_reg_1047[31]_i_75_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_76_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_77_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_78_n_0 }),
        .O(\NLW_maxValue_17_0_maxVal_reg_1047_reg[31]_i_49_O_UNCONNECTED [3:0]),
        .S({\maxValue_17_0_maxVal_reg_1047[31]_i_79_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_80_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_81_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_82_n_0 }));
  CARRY4 \maxValue_17_0_maxVal_reg_1047_reg[31]_i_5 
       (.CI(\maxValue_17_0_maxVal_reg_1047_reg[31]_i_23_n_0 ),
        .CO({\maxValue_17_0_maxVal_reg_1047_reg[31]_i_5_n_0 ,\maxValue_17_0_maxVal_reg_1047_reg[31]_i_5_n_1 ,\maxValue_17_0_maxVal_reg_1047_reg[31]_i_5_n_2 ,\maxValue_17_0_maxVal_reg_1047_reg[31]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({\maxValue_17_0_maxVal_reg_1047[31]_i_24_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_25_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_26_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_27_n_0 }),
        .O(\NLW_maxValue_17_0_maxVal_reg_1047_reg[31]_i_5_O_UNCONNECTED [3:0]),
        .S({\maxValue_17_0_maxVal_reg_1047[31]_i_28_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_29_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_30_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_31_n_0 }));
  CARRY4 \maxValue_17_0_maxVal_reg_1047_reg[31]_i_66 
       (.CI(1'b0),
        .CO({\maxValue_17_0_maxVal_reg_1047_reg[31]_i_66_n_0 ,\maxValue_17_0_maxVal_reg_1047_reg[31]_i_66_n_1 ,\maxValue_17_0_maxVal_reg_1047_reg[31]_i_66_n_2 ,\maxValue_17_0_maxVal_reg_1047_reg[31]_i_66_n_3 }),
        .CYINIT(1'b0),
        .DI({\maxValue_17_0_maxVal_reg_1047[31]_i_91_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_92_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_93_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_94_n_0 }),
        .O(\NLW_maxValue_17_0_maxVal_reg_1047_reg[31]_i_66_O_UNCONNECTED [3:0]),
        .S({\maxValue_17_0_maxVal_reg_1047[31]_i_95_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_96_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_97_n_0 ,\maxValue_17_0_maxVal_reg_1047[31]_i_98_n_0 }));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[3] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[3]),
        .Q(maxValue_17_0_maxVal_reg_1047[3]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[4] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[4]),
        .Q(maxValue_17_0_maxVal_reg_1047[4]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[5] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[5]),
        .Q(maxValue_17_0_maxVal_reg_1047[5]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[6] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[6]),
        .Q(maxValue_17_0_maxVal_reg_1047[6]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[7] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[7]),
        .Q(maxValue_17_0_maxVal_reg_1047[7]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[8] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[8]),
        .Q(maxValue_17_0_maxVal_reg_1047[8]),
        .R(1'b0));
  FDRE \maxValue_17_0_maxVal_reg_1047_reg[9] 
       (.C(ap_clk),
        .CE(maxValue_17_0_maxVal_reg_10470),
        .D(maxValue_17_0_maxVal_fu_737_p3[9]),
        .Q(maxValue_17_0_maxVal_reg_1047[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[0]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[0]),
        .I1(outStream_V_data_V_1_payload_A[0]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[10]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[10]),
        .I1(outStream_V_data_V_1_payload_A[10]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[11]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[11]),
        .I1(outStream_V_data_V_1_payload_A[11]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[12]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[12]),
        .I1(outStream_V_data_V_1_payload_A[12]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[13]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[13]),
        .I1(outStream_V_data_V_1_payload_A[13]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[14]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[14]),
        .I1(outStream_V_data_V_1_payload_A[14]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[15]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[15]),
        .I1(outStream_V_data_V_1_payload_A[15]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[16]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[16]),
        .I1(outStream_V_data_V_1_payload_A[16]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[16]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[17]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[17]),
        .I1(outStream_V_data_V_1_payload_A[17]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[17]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[18]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[18]),
        .I1(outStream_V_data_V_1_payload_A[18]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[18]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[19]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[19]),
        .I1(outStream_V_data_V_1_payload_A[19]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[19]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[1]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[1]),
        .I1(outStream_V_data_V_1_payload_A[1]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[20]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[20]),
        .I1(outStream_V_data_V_1_payload_A[20]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[20]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[21]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[21]),
        .I1(outStream_V_data_V_1_payload_A[21]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[21]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[22]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[22]),
        .I1(outStream_V_data_V_1_payload_A[22]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[22]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[23]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[23]),
        .I1(outStream_V_data_V_1_payload_A[23]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[23]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[24]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[24]),
        .I1(outStream_V_data_V_1_payload_A[24]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[24]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[25]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[25]),
        .I1(outStream_V_data_V_1_payload_A[25]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[25]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[26]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[26]),
        .I1(outStream_V_data_V_1_payload_A[26]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[26]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[27]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[27]),
        .I1(outStream_V_data_V_1_payload_A[27]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[27]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[28]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[28]),
        .I1(outStream_V_data_V_1_payload_A[28]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[28]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[29]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[29]),
        .I1(outStream_V_data_V_1_payload_A[29]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[29]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[2]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[2]),
        .I1(outStream_V_data_V_1_payload_A[2]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[30]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[30]),
        .I1(outStream_V_data_V_1_payload_A[30]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[30]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[31]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[31]),
        .I1(outStream_V_data_V_1_payload_A[31]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[31]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[3]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[3]),
        .I1(outStream_V_data_V_1_payload_A[3]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[4]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[4]),
        .I1(outStream_V_data_V_1_payload_A[4]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[5]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[5]),
        .I1(outStream_V_data_V_1_payload_A[5]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[6]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[6]),
        .I1(outStream_V_data_V_1_payload_A[6]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[7]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[7]),
        .I1(outStream_V_data_V_1_payload_A[7]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[8]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[8]),
        .I1(outStream_V_data_V_1_payload_A[8]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[9]_INST_0 
       (.I0(outStream_V_data_V_1_payload_B[9]),
        .I1(outStream_V_data_V_1_payload_A[9]),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_TDATA[9]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TLAST[0]_INST_0 
       (.I0(outStream_V_last_V_1_payload_B),
        .I1(outStream_V_last_V_1_sel),
        .I2(outStream_V_last_V_1_payload_A),
        .O(outStream_TLAST));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \outStream_V_data_V_1_payload_A[0]_i_1 
       (.I0(result_reg_1058[0]),
        .I1(tmp_9_reg_1003),
        .I2(window_1_0_reg_412[0]),
        .I3(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I4(maxValue_17_0_maxVal_reg_1047[0]),
        .O(tmp_data_V_2_fu_856_p3[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_V_1_payload_A[10]_i_1 
       (.I0(tmp_4_i_i_fu_839_p2[10]),
        .I1(tmp_13_reg_1053),
        .I2(result_reg_1058[10]),
        .I3(tmp_9_reg_1003),
        .I4(\outStream_V_data_V_1_payload_A[10]_i_2_n_0 ),
        .O(tmp_data_V_2_fu_856_p3[10]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_V_data_V_1_payload_A[10]_i_2 
       (.I0(window_1_0_reg_412[10]),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I2(maxValue_17_0_maxVal_reg_1047[10]),
        .O(\outStream_V_data_V_1_payload_A[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_V_1_payload_A[11]_i_1 
       (.I0(tmp_4_i_i_fu_839_p2[11]),
        .I1(tmp_13_reg_1053),
        .I2(result_reg_1058[11]),
        .I3(tmp_9_reg_1003),
        .I4(\outStream_V_data_V_1_payload_A[11]_i_2_n_0 ),
        .O(tmp_data_V_2_fu_856_p3[11]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_V_data_V_1_payload_A[11]_i_2 
       (.I0(window_1_0_reg_412[11]),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I2(maxValue_17_0_maxVal_reg_1047[11]),
        .O(\outStream_V_data_V_1_payload_A[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_V_1_payload_A[12]_i_1 
       (.I0(tmp_4_i_i_fu_839_p2[12]),
        .I1(tmp_13_reg_1053),
        .I2(result_reg_1058[12]),
        .I3(tmp_9_reg_1003),
        .I4(\outStream_V_data_V_1_payload_A[12]_i_3_n_0 ),
        .O(tmp_data_V_2_fu_856_p3[12]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_V_data_V_1_payload_A[12]_i_3 
       (.I0(window_1_0_reg_412[12]),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I2(maxValue_17_0_maxVal_reg_1047[12]),
        .O(\outStream_V_data_V_1_payload_A[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outStream_V_data_V_1_payload_A[12]_i_4 
       (.I0(result_reg_1058[12]),
        .O(\outStream_V_data_V_1_payload_A[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outStream_V_data_V_1_payload_A[12]_i_5 
       (.I0(result_reg_1058[11]),
        .O(\outStream_V_data_V_1_payload_A[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outStream_V_data_V_1_payload_A[12]_i_6 
       (.I0(result_reg_1058[10]),
        .O(\outStream_V_data_V_1_payload_A[12]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outStream_V_data_V_1_payload_A[12]_i_7 
       (.I0(result_reg_1058[9]),
        .O(\outStream_V_data_V_1_payload_A[12]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_V_1_payload_A[13]_i_1 
       (.I0(tmp_4_i_i_fu_839_p2[13]),
        .I1(tmp_13_reg_1053),
        .I2(result_reg_1058[13]),
        .I3(tmp_9_reg_1003),
        .I4(\outStream_V_data_V_1_payload_A[13]_i_2_n_0 ),
        .O(tmp_data_V_2_fu_856_p3[13]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_V_data_V_1_payload_A[13]_i_2 
       (.I0(window_1_0_reg_412[13]),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I2(maxValue_17_0_maxVal_reg_1047[13]),
        .O(\outStream_V_data_V_1_payload_A[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_V_1_payload_A[14]_i_1 
       (.I0(tmp_4_i_i_fu_839_p2[14]),
        .I1(tmp_13_reg_1053),
        .I2(result_reg_1058[14]),
        .I3(tmp_9_reg_1003),
        .I4(\outStream_V_data_V_1_payload_A[14]_i_2_n_0 ),
        .O(tmp_data_V_2_fu_856_p3[14]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_V_data_V_1_payload_A[14]_i_2 
       (.I0(window_1_0_reg_412[14]),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I2(maxValue_17_0_maxVal_reg_1047[14]),
        .O(\outStream_V_data_V_1_payload_A[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_V_1_payload_A[15]_i_1 
       (.I0(tmp_4_i_i_fu_839_p2[15]),
        .I1(tmp_13_reg_1053),
        .I2(result_reg_1058[15]),
        .I3(tmp_9_reg_1003),
        .I4(\outStream_V_data_V_1_payload_A[15]_i_2_n_0 ),
        .O(tmp_data_V_2_fu_856_p3[15]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_V_data_V_1_payload_A[15]_i_2 
       (.I0(window_1_0_reg_412[15]),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I2(maxValue_17_0_maxVal_reg_1047[15]),
        .O(\outStream_V_data_V_1_payload_A[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_V_1_payload_A[16]_i_1 
       (.I0(tmp_4_i_i_fu_839_p2[16]),
        .I1(tmp_13_reg_1053),
        .I2(result_reg_1058[16]),
        .I3(tmp_9_reg_1003),
        .I4(\outStream_V_data_V_1_payload_A[16]_i_3_n_0 ),
        .O(tmp_data_V_2_fu_856_p3[16]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_V_data_V_1_payload_A[16]_i_3 
       (.I0(window_1_0_reg_412[16]),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I2(maxValue_17_0_maxVal_reg_1047[16]),
        .O(\outStream_V_data_V_1_payload_A[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outStream_V_data_V_1_payload_A[16]_i_4 
       (.I0(result_reg_1058[16]),
        .O(\outStream_V_data_V_1_payload_A[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outStream_V_data_V_1_payload_A[16]_i_5 
       (.I0(result_reg_1058[15]),
        .O(\outStream_V_data_V_1_payload_A[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outStream_V_data_V_1_payload_A[16]_i_6 
       (.I0(result_reg_1058[14]),
        .O(\outStream_V_data_V_1_payload_A[16]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outStream_V_data_V_1_payload_A[16]_i_7 
       (.I0(result_reg_1058[13]),
        .O(\outStream_V_data_V_1_payload_A[16]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_V_1_payload_A[17]_i_1 
       (.I0(tmp_4_i_i_fu_839_p2[17]),
        .I1(tmp_13_reg_1053),
        .I2(result_reg_1058[17]),
        .I3(tmp_9_reg_1003),
        .I4(\outStream_V_data_V_1_payload_A[17]_i_2_n_0 ),
        .O(tmp_data_V_2_fu_856_p3[17]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_V_data_V_1_payload_A[17]_i_2 
       (.I0(window_1_0_reg_412[17]),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I2(maxValue_17_0_maxVal_reg_1047[17]),
        .O(\outStream_V_data_V_1_payload_A[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_V_1_payload_A[18]_i_1 
       (.I0(tmp_4_i_i_fu_839_p2[18]),
        .I1(tmp_13_reg_1053),
        .I2(result_reg_1058[18]),
        .I3(tmp_9_reg_1003),
        .I4(\outStream_V_data_V_1_payload_A[18]_i_2_n_0 ),
        .O(tmp_data_V_2_fu_856_p3[18]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_V_data_V_1_payload_A[18]_i_2 
       (.I0(window_1_0_reg_412[18]),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I2(maxValue_17_0_maxVal_reg_1047[18]),
        .O(\outStream_V_data_V_1_payload_A[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_V_1_payload_A[19]_i_1 
       (.I0(tmp_4_i_i_fu_839_p2[19]),
        .I1(tmp_13_reg_1053),
        .I2(result_reg_1058[19]),
        .I3(tmp_9_reg_1003),
        .I4(\outStream_V_data_V_1_payload_A[19]_i_2_n_0 ),
        .O(tmp_data_V_2_fu_856_p3[19]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_V_data_V_1_payload_A[19]_i_2 
       (.I0(window_1_0_reg_412[19]),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I2(maxValue_17_0_maxVal_reg_1047[19]),
        .O(\outStream_V_data_V_1_payload_A[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_V_1_payload_A[1]_i_1 
       (.I0(tmp_4_i_i_fu_839_p2[1]),
        .I1(tmp_13_reg_1053),
        .I2(result_reg_1058[1]),
        .I3(tmp_9_reg_1003),
        .I4(\outStream_V_data_V_1_payload_A[1]_i_2_n_0 ),
        .O(tmp_data_V_2_fu_856_p3[1]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_V_data_V_1_payload_A[1]_i_2 
       (.I0(window_1_0_reg_412[1]),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I2(maxValue_17_0_maxVal_reg_1047[1]),
        .O(\outStream_V_data_V_1_payload_A[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \outStream_V_data_V_1_payload_A[20]_i_1 
       (.I0(tmp_13_reg_1053),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0 ),
        .I2(tmp_9_reg_1003),
        .I3(window_1_0_reg_412[20]),
        .I4(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I5(maxValue_17_0_maxVal_reg_1047[20]),
        .O(tmp_data_V_2_fu_856_p3[20]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \outStream_V_data_V_1_payload_A[21]_i_1 
       (.I0(tmp_13_reg_1053),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0 ),
        .I2(tmp_9_reg_1003),
        .I3(window_1_0_reg_412[21]),
        .I4(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I5(maxValue_17_0_maxVal_reg_1047[21]),
        .O(tmp_data_V_2_fu_856_p3[21]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \outStream_V_data_V_1_payload_A[22]_i_1 
       (.I0(tmp_13_reg_1053),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0 ),
        .I2(tmp_9_reg_1003),
        .I3(window_1_0_reg_412[22]),
        .I4(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I5(maxValue_17_0_maxVal_reg_1047[22]),
        .O(tmp_data_V_2_fu_856_p3[22]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \outStream_V_data_V_1_payload_A[23]_i_1 
       (.I0(tmp_13_reg_1053),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0 ),
        .I2(tmp_9_reg_1003),
        .I3(window_1_0_reg_412[23]),
        .I4(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I5(maxValue_17_0_maxVal_reg_1047[23]),
        .O(tmp_data_V_2_fu_856_p3[23]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \outStream_V_data_V_1_payload_A[24]_i_1 
       (.I0(tmp_13_reg_1053),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0 ),
        .I2(tmp_9_reg_1003),
        .I3(window_1_0_reg_412[24]),
        .I4(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I5(maxValue_17_0_maxVal_reg_1047[24]),
        .O(tmp_data_V_2_fu_856_p3[24]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \outStream_V_data_V_1_payload_A[25]_i_1 
       (.I0(tmp_13_reg_1053),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0 ),
        .I2(tmp_9_reg_1003),
        .I3(window_1_0_reg_412[25]),
        .I4(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I5(maxValue_17_0_maxVal_reg_1047[25]),
        .O(tmp_data_V_2_fu_856_p3[25]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \outStream_V_data_V_1_payload_A[26]_i_1 
       (.I0(tmp_13_reg_1053),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0 ),
        .I2(tmp_9_reg_1003),
        .I3(window_1_0_reg_412[26]),
        .I4(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I5(maxValue_17_0_maxVal_reg_1047[26]),
        .O(tmp_data_V_2_fu_856_p3[26]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \outStream_V_data_V_1_payload_A[27]_i_1 
       (.I0(tmp_13_reg_1053),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0 ),
        .I2(tmp_9_reg_1003),
        .I3(window_1_0_reg_412[27]),
        .I4(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I5(maxValue_17_0_maxVal_reg_1047[27]),
        .O(tmp_data_V_2_fu_856_p3[27]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \outStream_V_data_V_1_payload_A[28]_i_1 
       (.I0(tmp_13_reg_1053),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0 ),
        .I2(tmp_9_reg_1003),
        .I3(window_1_0_reg_412[28]),
        .I4(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I5(maxValue_17_0_maxVal_reg_1047[28]),
        .O(tmp_data_V_2_fu_856_p3[28]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \outStream_V_data_V_1_payload_A[29]_i_1 
       (.I0(tmp_13_reg_1053),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0 ),
        .I2(tmp_9_reg_1003),
        .I3(window_1_0_reg_412[29]),
        .I4(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I5(maxValue_17_0_maxVal_reg_1047[29]),
        .O(tmp_data_V_2_fu_856_p3[29]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_V_1_payload_A[2]_i_1 
       (.I0(tmp_4_i_i_fu_839_p2[2]),
        .I1(tmp_13_reg_1053),
        .I2(result_reg_1058[2]),
        .I3(tmp_9_reg_1003),
        .I4(\outStream_V_data_V_1_payload_A[2]_i_2_n_0 ),
        .O(tmp_data_V_2_fu_856_p3[2]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_V_data_V_1_payload_A[2]_i_2 
       (.I0(window_1_0_reg_412[2]),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I2(maxValue_17_0_maxVal_reg_1047[2]),
        .O(\outStream_V_data_V_1_payload_A[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \outStream_V_data_V_1_payload_A[30]_i_1 
       (.I0(tmp_13_reg_1053),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0 ),
        .I2(tmp_9_reg_1003),
        .I3(window_1_0_reg_412[30]),
        .I4(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I5(maxValue_17_0_maxVal_reg_1047[30]),
        .O(tmp_data_V_2_fu_856_p3[30]));
  LUT3 #(
    .INIT(8'h45)) 
    \outStream_V_data_V_1_payload_A[31]_i_1 
       (.I0(outStream_V_data_V_1_sel_wr),
        .I1(outStream_V_data_V_1_ack_in),
        .I2(\outStream_V_data_V_1_state_reg_n_0_[0] ),
        .O(outStream_V_data_V_1_load_A));
  LUT4 #(
    .INIT(16'h44D4)) 
    \outStream_V_data_V_1_payload_A[31]_i_10 
       (.I0(maxValue_17_0_maxVal_reg_1047[29]),
        .I1(window_1_0_reg_412[29]),
        .I2(window_1_0_reg_412[28]),
        .I3(maxValue_17_0_maxVal_reg_1047[28]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \outStream_V_data_V_1_payload_A[31]_i_11 
       (.I0(maxValue_17_0_maxVal_reg_1047[27]),
        .I1(window_1_0_reg_412[27]),
        .I2(window_1_0_reg_412[26]),
        .I3(maxValue_17_0_maxVal_reg_1047[26]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \outStream_V_data_V_1_payload_A[31]_i_12 
       (.I0(maxValue_17_0_maxVal_reg_1047[25]),
        .I1(window_1_0_reg_412[25]),
        .I2(window_1_0_reg_412[24]),
        .I3(maxValue_17_0_maxVal_reg_1047[24]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \outStream_V_data_V_1_payload_A[31]_i_13 
       (.I0(window_1_0_reg_412[31]),
        .I1(maxValue_17_0_maxVal_reg_1047[31]),
        .I2(window_1_0_reg_412[30]),
        .I3(maxValue_17_0_maxVal_reg_1047[30]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \outStream_V_data_V_1_payload_A[31]_i_14 
       (.I0(window_1_0_reg_412[29]),
        .I1(maxValue_17_0_maxVal_reg_1047[29]),
        .I2(window_1_0_reg_412[28]),
        .I3(maxValue_17_0_maxVal_reg_1047[28]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \outStream_V_data_V_1_payload_A[31]_i_15 
       (.I0(window_1_0_reg_412[27]),
        .I1(maxValue_17_0_maxVal_reg_1047[27]),
        .I2(window_1_0_reg_412[26]),
        .I3(maxValue_17_0_maxVal_reg_1047[26]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \outStream_V_data_V_1_payload_A[31]_i_16 
       (.I0(window_1_0_reg_412[25]),
        .I1(maxValue_17_0_maxVal_reg_1047[25]),
        .I2(window_1_0_reg_412[24]),
        .I3(maxValue_17_0_maxVal_reg_1047[24]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \outStream_V_data_V_1_payload_A[31]_i_18 
       (.I0(maxValue_17_0_maxVal_reg_1047[23]),
        .I1(window_1_0_reg_412[23]),
        .I2(window_1_0_reg_412[22]),
        .I3(maxValue_17_0_maxVal_reg_1047[22]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \outStream_V_data_V_1_payload_A[31]_i_19 
       (.I0(maxValue_17_0_maxVal_reg_1047[21]),
        .I1(window_1_0_reg_412[21]),
        .I2(window_1_0_reg_412[20]),
        .I3(maxValue_17_0_maxVal_reg_1047[20]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \outStream_V_data_V_1_payload_A[31]_i_2 
       (.I0(tmp_13_reg_1053),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0 ),
        .I2(tmp_9_reg_1003),
        .I3(window_1_0_reg_412[31]),
        .I4(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I5(maxValue_17_0_maxVal_reg_1047[31]),
        .O(tmp_data_V_2_fu_856_p3[31]));
  LUT4 #(
    .INIT(16'h44D4)) 
    \outStream_V_data_V_1_payload_A[31]_i_20 
       (.I0(maxValue_17_0_maxVal_reg_1047[19]),
        .I1(window_1_0_reg_412[19]),
        .I2(window_1_0_reg_412[18]),
        .I3(maxValue_17_0_maxVal_reg_1047[18]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \outStream_V_data_V_1_payload_A[31]_i_21 
       (.I0(maxValue_17_0_maxVal_reg_1047[17]),
        .I1(window_1_0_reg_412[17]),
        .I2(window_1_0_reg_412[16]),
        .I3(maxValue_17_0_maxVal_reg_1047[16]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \outStream_V_data_V_1_payload_A[31]_i_22 
       (.I0(window_1_0_reg_412[23]),
        .I1(maxValue_17_0_maxVal_reg_1047[23]),
        .I2(window_1_0_reg_412[22]),
        .I3(maxValue_17_0_maxVal_reg_1047[22]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \outStream_V_data_V_1_payload_A[31]_i_23 
       (.I0(window_1_0_reg_412[21]),
        .I1(maxValue_17_0_maxVal_reg_1047[21]),
        .I2(window_1_0_reg_412[20]),
        .I3(maxValue_17_0_maxVal_reg_1047[20]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \outStream_V_data_V_1_payload_A[31]_i_24 
       (.I0(window_1_0_reg_412[19]),
        .I1(maxValue_17_0_maxVal_reg_1047[19]),
        .I2(window_1_0_reg_412[18]),
        .I3(maxValue_17_0_maxVal_reg_1047[18]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \outStream_V_data_V_1_payload_A[31]_i_25 
       (.I0(window_1_0_reg_412[17]),
        .I1(maxValue_17_0_maxVal_reg_1047[17]),
        .I2(window_1_0_reg_412[16]),
        .I3(maxValue_17_0_maxVal_reg_1047[16]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \outStream_V_data_V_1_payload_A[31]_i_27 
       (.I0(maxValue_17_0_maxVal_reg_1047[15]),
        .I1(window_1_0_reg_412[15]),
        .I2(window_1_0_reg_412[14]),
        .I3(maxValue_17_0_maxVal_reg_1047[14]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \outStream_V_data_V_1_payload_A[31]_i_28 
       (.I0(maxValue_17_0_maxVal_reg_1047[13]),
        .I1(window_1_0_reg_412[13]),
        .I2(window_1_0_reg_412[12]),
        .I3(maxValue_17_0_maxVal_reg_1047[12]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \outStream_V_data_V_1_payload_A[31]_i_29 
       (.I0(maxValue_17_0_maxVal_reg_1047[11]),
        .I1(window_1_0_reg_412[11]),
        .I2(window_1_0_reg_412[10]),
        .I3(maxValue_17_0_maxVal_reg_1047[10]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \outStream_V_data_V_1_payload_A[31]_i_30 
       (.I0(maxValue_17_0_maxVal_reg_1047[9]),
        .I1(window_1_0_reg_412[9]),
        .I2(window_1_0_reg_412[8]),
        .I3(maxValue_17_0_maxVal_reg_1047[8]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \outStream_V_data_V_1_payload_A[31]_i_31 
       (.I0(window_1_0_reg_412[15]),
        .I1(maxValue_17_0_maxVal_reg_1047[15]),
        .I2(window_1_0_reg_412[14]),
        .I3(maxValue_17_0_maxVal_reg_1047[14]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \outStream_V_data_V_1_payload_A[31]_i_32 
       (.I0(window_1_0_reg_412[13]),
        .I1(maxValue_17_0_maxVal_reg_1047[13]),
        .I2(window_1_0_reg_412[12]),
        .I3(maxValue_17_0_maxVal_reg_1047[12]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \outStream_V_data_V_1_payload_A[31]_i_33 
       (.I0(window_1_0_reg_412[11]),
        .I1(maxValue_17_0_maxVal_reg_1047[11]),
        .I2(window_1_0_reg_412[10]),
        .I3(maxValue_17_0_maxVal_reg_1047[10]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \outStream_V_data_V_1_payload_A[31]_i_34 
       (.I0(window_1_0_reg_412[9]),
        .I1(maxValue_17_0_maxVal_reg_1047[9]),
        .I2(window_1_0_reg_412[8]),
        .I3(maxValue_17_0_maxVal_reg_1047[8]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \outStream_V_data_V_1_payload_A[31]_i_35 
       (.I0(maxValue_17_0_maxVal_reg_1047[7]),
        .I1(window_1_0_reg_412[7]),
        .I2(window_1_0_reg_412[6]),
        .I3(maxValue_17_0_maxVal_reg_1047[6]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \outStream_V_data_V_1_payload_A[31]_i_36 
       (.I0(maxValue_17_0_maxVal_reg_1047[5]),
        .I1(window_1_0_reg_412[5]),
        .I2(window_1_0_reg_412[4]),
        .I3(maxValue_17_0_maxVal_reg_1047[4]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \outStream_V_data_V_1_payload_A[31]_i_37 
       (.I0(maxValue_17_0_maxVal_reg_1047[3]),
        .I1(window_1_0_reg_412[3]),
        .I2(window_1_0_reg_412[2]),
        .I3(maxValue_17_0_maxVal_reg_1047[2]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \outStream_V_data_V_1_payload_A[31]_i_38 
       (.I0(maxValue_17_0_maxVal_reg_1047[1]),
        .I1(window_1_0_reg_412[1]),
        .I2(window_1_0_reg_412[0]),
        .I3(maxValue_17_0_maxVal_reg_1047[0]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \outStream_V_data_V_1_payload_A[31]_i_39 
       (.I0(window_1_0_reg_412[7]),
        .I1(maxValue_17_0_maxVal_reg_1047[7]),
        .I2(window_1_0_reg_412[6]),
        .I3(maxValue_17_0_maxVal_reg_1047[6]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_39_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \outStream_V_data_V_1_payload_A[31]_i_40 
       (.I0(window_1_0_reg_412[5]),
        .I1(maxValue_17_0_maxVal_reg_1047[5]),
        .I2(window_1_0_reg_412[4]),
        .I3(maxValue_17_0_maxVal_reg_1047[4]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \outStream_V_data_V_1_payload_A[31]_i_41 
       (.I0(window_1_0_reg_412[3]),
        .I1(maxValue_17_0_maxVal_reg_1047[3]),
        .I2(window_1_0_reg_412[2]),
        .I3(maxValue_17_0_maxVal_reg_1047[2]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \outStream_V_data_V_1_payload_A[31]_i_42 
       (.I0(window_1_0_reg_412[1]),
        .I1(maxValue_17_0_maxVal_reg_1047[1]),
        .I2(window_1_0_reg_412[0]),
        .I3(maxValue_17_0_maxVal_reg_1047[0]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_42_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outStream_V_data_V_1_payload_A[31]_i_5 
       (.I0(result_reg_1058[19]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outStream_V_data_V_1_payload_A[31]_i_6 
       (.I0(result_reg_1058[18]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outStream_V_data_V_1_payload_A[31]_i_7 
       (.I0(result_reg_1058[17]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \outStream_V_data_V_1_payload_A[31]_i_9 
       (.I0(maxValue_17_0_maxVal_reg_1047[31]),
        .I1(window_1_0_reg_412[31]),
        .I2(window_1_0_reg_412[30]),
        .I3(maxValue_17_0_maxVal_reg_1047[30]),
        .O(\outStream_V_data_V_1_payload_A[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_V_1_payload_A[3]_i_1 
       (.I0(tmp_4_i_i_fu_839_p2[3]),
        .I1(tmp_13_reg_1053),
        .I2(result_reg_1058[3]),
        .I3(tmp_9_reg_1003),
        .I4(\outStream_V_data_V_1_payload_A[3]_i_2_n_0 ),
        .O(tmp_data_V_2_fu_856_p3[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_V_data_V_1_payload_A[3]_i_2 
       (.I0(window_1_0_reg_412[3]),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I2(maxValue_17_0_maxVal_reg_1047[3]),
        .O(\outStream_V_data_V_1_payload_A[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_V_1_payload_A[4]_i_1 
       (.I0(tmp_4_i_i_fu_839_p2[4]),
        .I1(tmp_13_reg_1053),
        .I2(result_reg_1058[4]),
        .I3(tmp_9_reg_1003),
        .I4(\outStream_V_data_V_1_payload_A[4]_i_3_n_0 ),
        .O(tmp_data_V_2_fu_856_p3[4]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_V_data_V_1_payload_A[4]_i_3 
       (.I0(window_1_0_reg_412[4]),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I2(maxValue_17_0_maxVal_reg_1047[4]),
        .O(\outStream_V_data_V_1_payload_A[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outStream_V_data_V_1_payload_A[4]_i_4 
       (.I0(result_reg_1058[0]),
        .O(\outStream_V_data_V_1_payload_A[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outStream_V_data_V_1_payload_A[4]_i_5 
       (.I0(result_reg_1058[4]),
        .O(\outStream_V_data_V_1_payload_A[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outStream_V_data_V_1_payload_A[4]_i_6 
       (.I0(result_reg_1058[3]),
        .O(\outStream_V_data_V_1_payload_A[4]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outStream_V_data_V_1_payload_A[4]_i_7 
       (.I0(result_reg_1058[2]),
        .O(\outStream_V_data_V_1_payload_A[4]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outStream_V_data_V_1_payload_A[4]_i_8 
       (.I0(result_reg_1058[1]),
        .O(\outStream_V_data_V_1_payload_A[4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_V_1_payload_A[5]_i_1 
       (.I0(tmp_4_i_i_fu_839_p2[5]),
        .I1(tmp_13_reg_1053),
        .I2(result_reg_1058[5]),
        .I3(tmp_9_reg_1003),
        .I4(\outStream_V_data_V_1_payload_A[5]_i_2_n_0 ),
        .O(tmp_data_V_2_fu_856_p3[5]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_V_data_V_1_payload_A[5]_i_2 
       (.I0(window_1_0_reg_412[5]),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I2(maxValue_17_0_maxVal_reg_1047[5]),
        .O(\outStream_V_data_V_1_payload_A[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_V_1_payload_A[6]_i_1 
       (.I0(tmp_4_i_i_fu_839_p2[6]),
        .I1(tmp_13_reg_1053),
        .I2(result_reg_1058[6]),
        .I3(tmp_9_reg_1003),
        .I4(\outStream_V_data_V_1_payload_A[6]_i_2_n_0 ),
        .O(tmp_data_V_2_fu_856_p3[6]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_V_data_V_1_payload_A[6]_i_2 
       (.I0(window_1_0_reg_412[6]),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I2(maxValue_17_0_maxVal_reg_1047[6]),
        .O(\outStream_V_data_V_1_payload_A[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_V_1_payload_A[7]_i_1 
       (.I0(tmp_4_i_i_fu_839_p2[7]),
        .I1(tmp_13_reg_1053),
        .I2(result_reg_1058[7]),
        .I3(tmp_9_reg_1003),
        .I4(\outStream_V_data_V_1_payload_A[7]_i_2_n_0 ),
        .O(tmp_data_V_2_fu_856_p3[7]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_V_data_V_1_payload_A[7]_i_2 
       (.I0(window_1_0_reg_412[7]),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I2(maxValue_17_0_maxVal_reg_1047[7]),
        .O(\outStream_V_data_V_1_payload_A[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_V_1_payload_A[8]_i_1 
       (.I0(tmp_4_i_i_fu_839_p2[8]),
        .I1(tmp_13_reg_1053),
        .I2(result_reg_1058[8]),
        .I3(tmp_9_reg_1003),
        .I4(\outStream_V_data_V_1_payload_A[8]_i_3_n_0 ),
        .O(tmp_data_V_2_fu_856_p3[8]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_V_data_V_1_payload_A[8]_i_3 
       (.I0(window_1_0_reg_412[8]),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I2(maxValue_17_0_maxVal_reg_1047[8]),
        .O(\outStream_V_data_V_1_payload_A[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outStream_V_data_V_1_payload_A[8]_i_4 
       (.I0(result_reg_1058[8]),
        .O(\outStream_V_data_V_1_payload_A[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outStream_V_data_V_1_payload_A[8]_i_5 
       (.I0(result_reg_1058[7]),
        .O(\outStream_V_data_V_1_payload_A[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outStream_V_data_V_1_payload_A[8]_i_6 
       (.I0(result_reg_1058[6]),
        .O(\outStream_V_data_V_1_payload_A[8]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outStream_V_data_V_1_payload_A[8]_i_7 
       (.I0(result_reg_1058[5]),
        .O(\outStream_V_data_V_1_payload_A[8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_V_1_payload_A[9]_i_1 
       (.I0(tmp_4_i_i_fu_839_p2[9]),
        .I1(tmp_13_reg_1053),
        .I2(result_reg_1058[9]),
        .I3(tmp_9_reg_1003),
        .I4(\outStream_V_data_V_1_payload_A[9]_i_2_n_0 ),
        .O(tmp_data_V_2_fu_856_p3[9]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_V_data_V_1_payload_A[9]_i_2 
       (.I0(window_1_0_reg_412[9]),
        .I1(\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ),
        .I2(maxValue_17_0_maxVal_reg_1047[9]),
        .O(\outStream_V_data_V_1_payload_A[9]_i_2_n_0 ));
  FDRE \outStream_V_data_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[0]),
        .Q(outStream_V_data_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[10]),
        .Q(outStream_V_data_V_1_payload_A[10]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[11]),
        .Q(outStream_V_data_V_1_payload_A[11]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[12]),
        .Q(outStream_V_data_V_1_payload_A[12]),
        .R(1'b0));
  CARRY4 \outStream_V_data_V_1_payload_A_reg[12]_i_2 
       (.CI(\outStream_V_data_V_1_payload_A_reg[8]_i_2_n_0 ),
        .CO({\outStream_V_data_V_1_payload_A_reg[12]_i_2_n_0 ,\outStream_V_data_V_1_payload_A_reg[12]_i_2_n_1 ,\outStream_V_data_V_1_payload_A_reg[12]_i_2_n_2 ,\outStream_V_data_V_1_payload_A_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_4_i_i_fu_839_p2[12:9]),
        .S({\outStream_V_data_V_1_payload_A[12]_i_4_n_0 ,\outStream_V_data_V_1_payload_A[12]_i_5_n_0 ,\outStream_V_data_V_1_payload_A[12]_i_6_n_0 ,\outStream_V_data_V_1_payload_A[12]_i_7_n_0 }));
  FDRE \outStream_V_data_V_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[13]),
        .Q(outStream_V_data_V_1_payload_A[13]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[14]),
        .Q(outStream_V_data_V_1_payload_A[14]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[15]),
        .Q(outStream_V_data_V_1_payload_A[15]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[16]),
        .Q(outStream_V_data_V_1_payload_A[16]),
        .R(1'b0));
  CARRY4 \outStream_V_data_V_1_payload_A_reg[16]_i_2 
       (.CI(\outStream_V_data_V_1_payload_A_reg[12]_i_2_n_0 ),
        .CO({\outStream_V_data_V_1_payload_A_reg[16]_i_2_n_0 ,\outStream_V_data_V_1_payload_A_reg[16]_i_2_n_1 ,\outStream_V_data_V_1_payload_A_reg[16]_i_2_n_2 ,\outStream_V_data_V_1_payload_A_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_4_i_i_fu_839_p2[16:13]),
        .S({\outStream_V_data_V_1_payload_A[16]_i_4_n_0 ,\outStream_V_data_V_1_payload_A[16]_i_5_n_0 ,\outStream_V_data_V_1_payload_A[16]_i_6_n_0 ,\outStream_V_data_V_1_payload_A[16]_i_7_n_0 }));
  FDRE \outStream_V_data_V_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[17]),
        .Q(outStream_V_data_V_1_payload_A[17]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[18]),
        .Q(outStream_V_data_V_1_payload_A[18]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[19]),
        .Q(outStream_V_data_V_1_payload_A[19]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[1]),
        .Q(outStream_V_data_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[20]),
        .Q(outStream_V_data_V_1_payload_A[20]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[21]),
        .Q(outStream_V_data_V_1_payload_A[21]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[22]),
        .Q(outStream_V_data_V_1_payload_A[22]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[23]),
        .Q(outStream_V_data_V_1_payload_A[23]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[24]),
        .Q(outStream_V_data_V_1_payload_A[24]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[25]),
        .Q(outStream_V_data_V_1_payload_A[25]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[26]),
        .Q(outStream_V_data_V_1_payload_A[26]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[27]),
        .Q(outStream_V_data_V_1_payload_A[27]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[28]),
        .Q(outStream_V_data_V_1_payload_A[28]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[29]),
        .Q(outStream_V_data_V_1_payload_A[29]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[2]),
        .Q(outStream_V_data_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[30]),
        .Q(outStream_V_data_V_1_payload_A[30]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[31]),
        .Q(outStream_V_data_V_1_payload_A[31]),
        .R(1'b0));
  CARRY4 \outStream_V_data_V_1_payload_A_reg[31]_i_17 
       (.CI(\outStream_V_data_V_1_payload_A_reg[31]_i_26_n_0 ),
        .CO({\outStream_V_data_V_1_payload_A_reg[31]_i_17_n_0 ,\outStream_V_data_V_1_payload_A_reg[31]_i_17_n_1 ,\outStream_V_data_V_1_payload_A_reg[31]_i_17_n_2 ,\outStream_V_data_V_1_payload_A_reg[31]_i_17_n_3 }),
        .CYINIT(1'b0),
        .DI({\outStream_V_data_V_1_payload_A[31]_i_27_n_0 ,\outStream_V_data_V_1_payload_A[31]_i_28_n_0 ,\outStream_V_data_V_1_payload_A[31]_i_29_n_0 ,\outStream_V_data_V_1_payload_A[31]_i_30_n_0 }),
        .O(\NLW_outStream_V_data_V_1_payload_A_reg[31]_i_17_O_UNCONNECTED [3:0]),
        .S({\outStream_V_data_V_1_payload_A[31]_i_31_n_0 ,\outStream_V_data_V_1_payload_A[31]_i_32_n_0 ,\outStream_V_data_V_1_payload_A[31]_i_33_n_0 ,\outStream_V_data_V_1_payload_A[31]_i_34_n_0 }));
  CARRY4 \outStream_V_data_V_1_payload_A_reg[31]_i_26 
       (.CI(1'b0),
        .CO({\outStream_V_data_V_1_payload_A_reg[31]_i_26_n_0 ,\outStream_V_data_V_1_payload_A_reg[31]_i_26_n_1 ,\outStream_V_data_V_1_payload_A_reg[31]_i_26_n_2 ,\outStream_V_data_V_1_payload_A_reg[31]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\outStream_V_data_V_1_payload_A[31]_i_35_n_0 ,\outStream_V_data_V_1_payload_A[31]_i_36_n_0 ,\outStream_V_data_V_1_payload_A[31]_i_37_n_0 ,\outStream_V_data_V_1_payload_A[31]_i_38_n_0 }),
        .O(\NLW_outStream_V_data_V_1_payload_A_reg[31]_i_26_O_UNCONNECTED [3:0]),
        .S({\outStream_V_data_V_1_payload_A[31]_i_39_n_0 ,\outStream_V_data_V_1_payload_A[31]_i_40_n_0 ,\outStream_V_data_V_1_payload_A[31]_i_41_n_0 ,\outStream_V_data_V_1_payload_A[31]_i_42_n_0 }));
  CARRY4 \outStream_V_data_V_1_payload_A_reg[31]_i_3 
       (.CI(\outStream_V_data_V_1_payload_A_reg[16]_i_2_n_0 ),
        .CO({\outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0 ,\NLW_outStream_V_data_V_1_payload_A_reg[31]_i_3_CO_UNCONNECTED [2],\outStream_V_data_V_1_payload_A_reg[31]_i_3_n_2 ,\outStream_V_data_V_1_payload_A_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_outStream_V_data_V_1_payload_A_reg[31]_i_3_O_UNCONNECTED [3],tmp_4_i_i_fu_839_p2[19:17]}),
        .S({1'b1,\outStream_V_data_V_1_payload_A[31]_i_5_n_0 ,\outStream_V_data_V_1_payload_A[31]_i_6_n_0 ,\outStream_V_data_V_1_payload_A[31]_i_7_n_0 }));
  CARRY4 \outStream_V_data_V_1_payload_A_reg[31]_i_4 
       (.CI(\outStream_V_data_V_1_payload_A_reg[31]_i_8_n_0 ),
        .CO({\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0 ,\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_1 ,\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_2 ,\outStream_V_data_V_1_payload_A_reg[31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\outStream_V_data_V_1_payload_A[31]_i_9_n_0 ,\outStream_V_data_V_1_payload_A[31]_i_10_n_0 ,\outStream_V_data_V_1_payload_A[31]_i_11_n_0 ,\outStream_V_data_V_1_payload_A[31]_i_12_n_0 }),
        .O(\NLW_outStream_V_data_V_1_payload_A_reg[31]_i_4_O_UNCONNECTED [3:0]),
        .S({\outStream_V_data_V_1_payload_A[31]_i_13_n_0 ,\outStream_V_data_V_1_payload_A[31]_i_14_n_0 ,\outStream_V_data_V_1_payload_A[31]_i_15_n_0 ,\outStream_V_data_V_1_payload_A[31]_i_16_n_0 }));
  CARRY4 \outStream_V_data_V_1_payload_A_reg[31]_i_8 
       (.CI(\outStream_V_data_V_1_payload_A_reg[31]_i_17_n_0 ),
        .CO({\outStream_V_data_V_1_payload_A_reg[31]_i_8_n_0 ,\outStream_V_data_V_1_payload_A_reg[31]_i_8_n_1 ,\outStream_V_data_V_1_payload_A_reg[31]_i_8_n_2 ,\outStream_V_data_V_1_payload_A_reg[31]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\outStream_V_data_V_1_payload_A[31]_i_18_n_0 ,\outStream_V_data_V_1_payload_A[31]_i_19_n_0 ,\outStream_V_data_V_1_payload_A[31]_i_20_n_0 ,\outStream_V_data_V_1_payload_A[31]_i_21_n_0 }),
        .O(\NLW_outStream_V_data_V_1_payload_A_reg[31]_i_8_O_UNCONNECTED [3:0]),
        .S({\outStream_V_data_V_1_payload_A[31]_i_22_n_0 ,\outStream_V_data_V_1_payload_A[31]_i_23_n_0 ,\outStream_V_data_V_1_payload_A[31]_i_24_n_0 ,\outStream_V_data_V_1_payload_A[31]_i_25_n_0 }));
  FDRE \outStream_V_data_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[3]),
        .Q(outStream_V_data_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[4]),
        .Q(outStream_V_data_V_1_payload_A[4]),
        .R(1'b0));
  CARRY4 \outStream_V_data_V_1_payload_A_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\outStream_V_data_V_1_payload_A_reg[4]_i_2_n_0 ,\outStream_V_data_V_1_payload_A_reg[4]_i_2_n_1 ,\outStream_V_data_V_1_payload_A_reg[4]_i_2_n_2 ,\outStream_V_data_V_1_payload_A_reg[4]_i_2_n_3 }),
        .CYINIT(\outStream_V_data_V_1_payload_A[4]_i_4_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_4_i_i_fu_839_p2[4:1]),
        .S({\outStream_V_data_V_1_payload_A[4]_i_5_n_0 ,\outStream_V_data_V_1_payload_A[4]_i_6_n_0 ,\outStream_V_data_V_1_payload_A[4]_i_7_n_0 ,\outStream_V_data_V_1_payload_A[4]_i_8_n_0 }));
  FDRE \outStream_V_data_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[5]),
        .Q(outStream_V_data_V_1_payload_A[5]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[6]),
        .Q(outStream_V_data_V_1_payload_A[6]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[7]),
        .Q(outStream_V_data_V_1_payload_A[7]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[8]),
        .Q(outStream_V_data_V_1_payload_A[8]),
        .R(1'b0));
  CARRY4 \outStream_V_data_V_1_payload_A_reg[8]_i_2 
       (.CI(\outStream_V_data_V_1_payload_A_reg[4]_i_2_n_0 ),
        .CO({\outStream_V_data_V_1_payload_A_reg[8]_i_2_n_0 ,\outStream_V_data_V_1_payload_A_reg[8]_i_2_n_1 ,\outStream_V_data_V_1_payload_A_reg[8]_i_2_n_2 ,\outStream_V_data_V_1_payload_A_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_4_i_i_fu_839_p2[8:5]),
        .S({\outStream_V_data_V_1_payload_A[8]_i_4_n_0 ,\outStream_V_data_V_1_payload_A[8]_i_5_n_0 ,\outStream_V_data_V_1_payload_A[8]_i_6_n_0 ,\outStream_V_data_V_1_payload_A[8]_i_7_n_0 }));
  FDRE \outStream_V_data_V_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_A),
        .D(tmp_data_V_2_fu_856_p3[9]),
        .Q(outStream_V_data_V_1_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \outStream_V_data_V_1_payload_B[31]_i_1 
       (.I0(outStream_V_data_V_1_sel_wr),
        .I1(outStream_V_data_V_1_ack_in),
        .I2(\outStream_V_data_V_1_state_reg_n_0_[0] ),
        .O(outStream_V_data_V_1_load_B));
  FDRE \outStream_V_data_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[0]),
        .Q(outStream_V_data_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[10]),
        .Q(outStream_V_data_V_1_payload_B[10]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[11]),
        .Q(outStream_V_data_V_1_payload_B[11]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[12]),
        .Q(outStream_V_data_V_1_payload_B[12]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[13]),
        .Q(outStream_V_data_V_1_payload_B[13]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[14]),
        .Q(outStream_V_data_V_1_payload_B[14]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[15]),
        .Q(outStream_V_data_V_1_payload_B[15]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[16]),
        .Q(outStream_V_data_V_1_payload_B[16]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[17]),
        .Q(outStream_V_data_V_1_payload_B[17]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[18]),
        .Q(outStream_V_data_V_1_payload_B[18]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[19]),
        .Q(outStream_V_data_V_1_payload_B[19]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[1]),
        .Q(outStream_V_data_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[20]),
        .Q(outStream_V_data_V_1_payload_B[20]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[21]),
        .Q(outStream_V_data_V_1_payload_B[21]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[22]),
        .Q(outStream_V_data_V_1_payload_B[22]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[23]),
        .Q(outStream_V_data_V_1_payload_B[23]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[24]),
        .Q(outStream_V_data_V_1_payload_B[24]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[25]),
        .Q(outStream_V_data_V_1_payload_B[25]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[26]),
        .Q(outStream_V_data_V_1_payload_B[26]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[27]),
        .Q(outStream_V_data_V_1_payload_B[27]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[28]),
        .Q(outStream_V_data_V_1_payload_B[28]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[29]),
        .Q(outStream_V_data_V_1_payload_B[29]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[2]),
        .Q(outStream_V_data_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[30]),
        .Q(outStream_V_data_V_1_payload_B[30]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[31]),
        .Q(outStream_V_data_V_1_payload_B[31]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[3]),
        .Q(outStream_V_data_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[4]),
        .Q(outStream_V_data_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[5]),
        .Q(outStream_V_data_V_1_payload_B[5]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[6]),
        .Q(outStream_V_data_V_1_payload_B[6]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[7]),
        .Q(outStream_V_data_V_1_payload_B[7]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[8]),
        .Q(outStream_V_data_V_1_payload_B[8]),
        .R(1'b0));
  FDRE \outStream_V_data_V_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_load_B),
        .D(tmp_data_V_2_fu_856_p3[9]),
        .Q(outStream_V_data_V_1_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h78)) 
    outStream_V_data_V_1_sel_rd_i_1
       (.I0(\outStream_V_data_V_1_state_reg_n_0_[0] ),
        .I1(outStream_TREADY),
        .I2(outStream_V_data_V_1_sel),
        .O(outStream_V_data_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    outStream_V_data_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(outStream_V_data_V_1_sel_rd_i_1_n_0),
        .Q(outStream_V_data_V_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h6)) 
    outStream_V_data_V_1_sel_wr_i_1
       (.I0(outStream_V_data_V_1_sel_wr052_out),
        .I1(outStream_V_data_V_1_sel_wr),
        .O(outStream_V_data_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    outStream_V_data_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(outStream_V_data_V_1_sel_wr_i_1_n_0),
        .Q(outStream_V_data_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h8AAA8888)) 
    \outStream_V_data_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(outStream_V_data_V_1_sel_wr052_out),
        .I2(outStream_V_data_V_1_ack_in),
        .I3(outStream_TREADY),
        .I4(\outStream_V_data_V_1_state_reg_n_0_[0] ),
        .O(\outStream_V_data_V_1_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'hF4FF)) 
    \outStream_V_data_V_1_state[1]_i_1 
       (.I0(outStream_V_data_V_1_sel_wr052_out),
        .I1(outStream_V_data_V_1_ack_in),
        .I2(outStream_TREADY),
        .I3(\outStream_V_data_V_1_state_reg_n_0_[0] ),
        .O(\outStream_V_data_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_data_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_data_V_1_state[0]_i_1_n_0 ),
        .Q(\outStream_V_data_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_data_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_data_V_1_state[1]_i_1_n_0 ),
        .Q(outStream_V_data_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF4CC0000)) 
    \outStream_V_dest_V_1_state[0]_i_1 
       (.I0(outStream_TREADY),
        .I1(outStream_TVALID),
        .I2(outStream_V_data_V_1_sel_wr052_out),
        .I3(outStream_V_dest_V_1_ack_in),
        .I4(ap_rst_n),
        .O(\outStream_V_dest_V_1_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF4FF)) 
    \outStream_V_dest_V_1_state[1]_i_1 
       (.I0(outStream_V_data_V_1_sel_wr052_out),
        .I1(outStream_V_dest_V_1_ack_in),
        .I2(outStream_TREADY),
        .I3(outStream_TVALID),
        .O(\outStream_V_dest_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_dest_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_dest_V_1_state[0]_i_1_n_0 ),
        .Q(outStream_TVALID),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_dest_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_dest_V_1_state[1]_i_1_n_0 ),
        .Q(outStream_V_dest_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF4CC0000)) 
    \outStream_V_id_V_1_state[0]_i_1 
       (.I0(outStream_TREADY),
        .I1(\outStream_V_id_V_1_state_reg_n_0_[0] ),
        .I2(outStream_V_data_V_1_sel_wr052_out),
        .I3(outStream_V_id_V_1_ack_in),
        .I4(ap_rst_n),
        .O(\outStream_V_id_V_1_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hF4FF)) 
    \outStream_V_id_V_1_state[1]_i_1 
       (.I0(outStream_V_data_V_1_sel_wr052_out),
        .I1(outStream_V_id_V_1_ack_in),
        .I2(outStream_TREADY),
        .I3(\outStream_V_id_V_1_state_reg_n_0_[0] ),
        .O(\outStream_V_id_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_id_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_id_V_1_state[0]_i_1_n_0 ),
        .Q(\outStream_V_id_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_id_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_id_V_1_state[1]_i_1_n_0 ),
        .Q(outStream_V_id_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF4CC0000)) 
    \outStream_V_keep_V_1_state[0]_i_1 
       (.I0(outStream_TREADY),
        .I1(\outStream_V_keep_V_1_state_reg_n_0_[0] ),
        .I2(outStream_V_data_V_1_sel_wr052_out),
        .I3(outStream_V_keep_V_1_ack_in),
        .I4(ap_rst_n),
        .O(\outStream_V_keep_V_1_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF4FF)) 
    \outStream_V_keep_V_1_state[1]_i_1 
       (.I0(outStream_V_data_V_1_sel_wr052_out),
        .I1(outStream_V_keep_V_1_ack_in),
        .I2(outStream_TREADY),
        .I3(\outStream_V_keep_V_1_state_reg_n_0_[0] ),
        .O(\outStream_V_keep_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_keep_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_keep_V_1_state[0]_i_1_n_0 ),
        .Q(\outStream_V_keep_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_keep_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_keep_V_1_state[1]_i_1_n_0 ),
        .Q(outStream_V_keep_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \outStream_V_last_V_1_payload_A[0]_i_1 
       (.I0(\outStream_V_last_V_1_payload_A[0]_i_2_n_0 ),
        .I1(\outStream_V_last_V_1_payload_A[0]_i_3_n_0 ),
        .I2(\outStream_V_last_V_1_payload_A[0]_i_4_n_0 ),
        .I3(\outStream_V_last_V_1_payload_A[0]_i_5_n_0 ),
        .I4(outStream_V_last_V_1_load_A),
        .I5(outStream_V_last_V_1_payload_A),
        .O(\outStream_V_last_V_1_payload_A[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \outStream_V_last_V_1_payload_A[0]_i_11 
       (.I0(writeCount_fu_818_p2[7]),
        .I1(writeCount_fu_818_p2[14]),
        .I2(writeCount_fu_818_p2[18]),
        .I3(writeCount_fu_818_p2[19]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \outStream_V_last_V_1_payload_A[0]_i_14 
       (.I0(writeCount_fu_818_p2[26]),
        .I1(writeCount_fu_818_p2[29]),
        .I2(writeCount_fu_818_p2[4]),
        .I3(writeCount_fu_818_p2[21]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \outStream_V_last_V_1_payload_A[0]_i_17 
       (.I0(writeCount_fu_818_p2[2]),
        .I1(writeCount_fu_818_p2[28]),
        .I2(writeCount_fu_818_p2[11]),
        .I3(writeCount_fu_818_p2[20]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \outStream_V_last_V_1_payload_A[0]_i_18 
       (.I0(writeCount_1_fu_164_reg[0]),
        .I1(writeCount_fu_818_p2[15]),
        .I2(writeCount_fu_818_p2[13]),
        .I3(writeCount_fu_818_p2[31]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_18_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_19 
       (.I0(writeCount_1_fu_164_reg[12]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \outStream_V_last_V_1_payload_A[0]_i_2 
       (.I0(writeCount_fu_818_p2[12]),
        .I1(writeCount_fu_818_p2[1]),
        .I2(writeCount_fu_818_p2[17]),
        .I3(writeCount_fu_818_p2[8]),
        .I4(\outStream_V_last_V_1_payload_A[0]_i_11_n_0 ),
        .O(\outStream_V_last_V_1_payload_A[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_20 
       (.I0(writeCount_1_fu_164_reg[11]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_21 
       (.I0(writeCount_1_fu_164_reg[10]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_22 
       (.I0(writeCount_1_fu_164_reg[9]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_23 
       (.I0(writeCount_1_fu_164_reg[4]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_24 
       (.I0(writeCount_1_fu_164_reg[3]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_25 
       (.I0(writeCount_1_fu_164_reg[2]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_26 
       (.I0(writeCount_1_fu_164_reg[1]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_27 
       (.I0(writeCount_1_fu_164_reg[20]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_28 
       (.I0(writeCount_1_fu_164_reg[19]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_28_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_29 
       (.I0(writeCount_1_fu_164_reg[18]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \outStream_V_last_V_1_payload_A[0]_i_3 
       (.I0(writeCount_fu_818_p2[9]),
        .I1(writeCount_fu_818_p2[6]),
        .I2(writeCount_fu_818_p2[30]),
        .I3(writeCount_fu_818_p2[24]),
        .I4(\outStream_V_last_V_1_payload_A[0]_i_14_n_0 ),
        .O(\outStream_V_last_V_1_payload_A[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_30 
       (.I0(writeCount_1_fu_164_reg[17]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_30_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_31 
       (.I0(writeCount_1_fu_164_reg[8]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_31_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_32 
       (.I0(writeCount_1_fu_164_reg[7]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_32_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_33 
       (.I0(writeCount_1_fu_164_reg[6]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_33_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_34 
       (.I0(writeCount_1_fu_164_reg[5]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_34_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_35 
       (.I0(writeCount_1_fu_164_reg[31]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_35_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_36 
       (.I0(writeCount_1_fu_164_reg[30]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_36_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_37 
       (.I0(writeCount_1_fu_164_reg[29]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_37_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_38 
       (.I0(writeCount_1_fu_164_reg[24]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_38_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_39 
       (.I0(writeCount_1_fu_164_reg[23]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \outStream_V_last_V_1_payload_A[0]_i_4 
       (.I0(writeCount_fu_818_p2[27]),
        .I1(writeCount_fu_818_p2[10]),
        .I2(writeCount_fu_818_p2[23]),
        .I3(writeCount_fu_818_p2[16]),
        .I4(\outStream_V_last_V_1_payload_A[0]_i_17_n_0 ),
        .O(\outStream_V_last_V_1_payload_A[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_40 
       (.I0(writeCount_1_fu_164_reg[22]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_40_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_41 
       (.I0(writeCount_1_fu_164_reg[21]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_41_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_42 
       (.I0(writeCount_1_fu_164_reg[28]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_42_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_43 
       (.I0(writeCount_1_fu_164_reg[27]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_43_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_44 
       (.I0(writeCount_1_fu_164_reg[26]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_44_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_45 
       (.I0(writeCount_1_fu_164_reg[25]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_45_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_46 
       (.I0(writeCount_1_fu_164_reg[16]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_46_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_47 
       (.I0(writeCount_1_fu_164_reg[15]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_47_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_48 
       (.I0(writeCount_1_fu_164_reg[14]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_48_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \outStream_V_last_V_1_payload_A[0]_i_49 
       (.I0(writeCount_1_fu_164_reg[13]),
        .O(\outStream_V_last_V_1_payload_A[0]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \outStream_V_last_V_1_payload_A[0]_i_5 
       (.I0(writeCount_fu_818_p2[5]),
        .I1(writeCount_fu_818_p2[22]),
        .I2(writeCount_fu_818_p2[25]),
        .I3(writeCount_fu_818_p2[3]),
        .I4(\outStream_V_last_V_1_payload_A[0]_i_18_n_0 ),
        .O(\outStream_V_last_V_1_payload_A[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \outStream_V_last_V_1_payload_A[0]_i_6 
       (.I0(outStream_V_last_V_1_sel_wr),
        .I1(outStream_V_last_V_1_ack_in),
        .I2(\outStream_V_last_V_1_state_reg_n_0_[0] ),
        .O(outStream_V_last_V_1_load_A));
  FDRE \outStream_V_last_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_last_V_1_payload_A[0]_i_1_n_0 ),
        .Q(outStream_V_last_V_1_payload_A),
        .R(1'b0));
  CARRY4 \outStream_V_last_V_1_payload_A_reg[0]_i_10 
       (.CI(\outStream_V_last_V_1_payload_A_reg[0]_i_8_n_0 ),
        .CO({\outStream_V_last_V_1_payload_A_reg[0]_i_10_n_0 ,\outStream_V_last_V_1_payload_A_reg[0]_i_10_n_1 ,\outStream_V_last_V_1_payload_A_reg[0]_i_10_n_2 ,\outStream_V_last_V_1_payload_A_reg[0]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(writeCount_fu_818_p2[8:5]),
        .S({\outStream_V_last_V_1_payload_A[0]_i_31_n_0 ,\outStream_V_last_V_1_payload_A[0]_i_32_n_0 ,\outStream_V_last_V_1_payload_A[0]_i_33_n_0 ,\outStream_V_last_V_1_payload_A[0]_i_34_n_0 }));
  CARRY4 \outStream_V_last_V_1_payload_A_reg[0]_i_12 
       (.CI(\outStream_V_last_V_1_payload_A_reg[0]_i_15_n_0 ),
        .CO({\NLW_outStream_V_last_V_1_payload_A_reg[0]_i_12_CO_UNCONNECTED [3:2],\outStream_V_last_V_1_payload_A_reg[0]_i_12_n_2 ,\outStream_V_last_V_1_payload_A_reg[0]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_outStream_V_last_V_1_payload_A_reg[0]_i_12_O_UNCONNECTED [3],writeCount_fu_818_p2[31:29]}),
        .S({1'b0,\outStream_V_last_V_1_payload_A[0]_i_35_n_0 ,\outStream_V_last_V_1_payload_A[0]_i_36_n_0 ,\outStream_V_last_V_1_payload_A[0]_i_37_n_0 }));
  CARRY4 \outStream_V_last_V_1_payload_A_reg[0]_i_13 
       (.CI(\outStream_V_last_V_1_payload_A_reg[0]_i_9_n_0 ),
        .CO({\outStream_V_last_V_1_payload_A_reg[0]_i_13_n_0 ,\outStream_V_last_V_1_payload_A_reg[0]_i_13_n_1 ,\outStream_V_last_V_1_payload_A_reg[0]_i_13_n_2 ,\outStream_V_last_V_1_payload_A_reg[0]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(writeCount_fu_818_p2[24:21]),
        .S({\outStream_V_last_V_1_payload_A[0]_i_38_n_0 ,\outStream_V_last_V_1_payload_A[0]_i_39_n_0 ,\outStream_V_last_V_1_payload_A[0]_i_40_n_0 ,\outStream_V_last_V_1_payload_A[0]_i_41_n_0 }));
  CARRY4 \outStream_V_last_V_1_payload_A_reg[0]_i_15 
       (.CI(\outStream_V_last_V_1_payload_A_reg[0]_i_13_n_0 ),
        .CO({\outStream_V_last_V_1_payload_A_reg[0]_i_15_n_0 ,\outStream_V_last_V_1_payload_A_reg[0]_i_15_n_1 ,\outStream_V_last_V_1_payload_A_reg[0]_i_15_n_2 ,\outStream_V_last_V_1_payload_A_reg[0]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(writeCount_fu_818_p2[28:25]),
        .S({\outStream_V_last_V_1_payload_A[0]_i_42_n_0 ,\outStream_V_last_V_1_payload_A[0]_i_43_n_0 ,\outStream_V_last_V_1_payload_A[0]_i_44_n_0 ,\outStream_V_last_V_1_payload_A[0]_i_45_n_0 }));
  CARRY4 \outStream_V_last_V_1_payload_A_reg[0]_i_16 
       (.CI(\outStream_V_last_V_1_payload_A_reg[0]_i_7_n_0 ),
        .CO({\outStream_V_last_V_1_payload_A_reg[0]_i_16_n_0 ,\outStream_V_last_V_1_payload_A_reg[0]_i_16_n_1 ,\outStream_V_last_V_1_payload_A_reg[0]_i_16_n_2 ,\outStream_V_last_V_1_payload_A_reg[0]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(writeCount_fu_818_p2[16:13]),
        .S({\outStream_V_last_V_1_payload_A[0]_i_46_n_0 ,\outStream_V_last_V_1_payload_A[0]_i_47_n_0 ,\outStream_V_last_V_1_payload_A[0]_i_48_n_0 ,\outStream_V_last_V_1_payload_A[0]_i_49_n_0 }));
  CARRY4 \outStream_V_last_V_1_payload_A_reg[0]_i_7 
       (.CI(\outStream_V_last_V_1_payload_A_reg[0]_i_10_n_0 ),
        .CO({\outStream_V_last_V_1_payload_A_reg[0]_i_7_n_0 ,\outStream_V_last_V_1_payload_A_reg[0]_i_7_n_1 ,\outStream_V_last_V_1_payload_A_reg[0]_i_7_n_2 ,\outStream_V_last_V_1_payload_A_reg[0]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(writeCount_fu_818_p2[12:9]),
        .S({\outStream_V_last_V_1_payload_A[0]_i_19_n_0 ,\outStream_V_last_V_1_payload_A[0]_i_20_n_0 ,\outStream_V_last_V_1_payload_A[0]_i_21_n_0 ,\outStream_V_last_V_1_payload_A[0]_i_22_n_0 }));
  CARRY4 \outStream_V_last_V_1_payload_A_reg[0]_i_8 
       (.CI(1'b0),
        .CO({\outStream_V_last_V_1_payload_A_reg[0]_i_8_n_0 ,\outStream_V_last_V_1_payload_A_reg[0]_i_8_n_1 ,\outStream_V_last_V_1_payload_A_reg[0]_i_8_n_2 ,\outStream_V_last_V_1_payload_A_reg[0]_i_8_n_3 }),
        .CYINIT(writeCount_1_fu_164_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(writeCount_fu_818_p2[4:1]),
        .S({\outStream_V_last_V_1_payload_A[0]_i_23_n_0 ,\outStream_V_last_V_1_payload_A[0]_i_24_n_0 ,\outStream_V_last_V_1_payload_A[0]_i_25_n_0 ,\outStream_V_last_V_1_payload_A[0]_i_26_n_0 }));
  CARRY4 \outStream_V_last_V_1_payload_A_reg[0]_i_9 
       (.CI(\outStream_V_last_V_1_payload_A_reg[0]_i_16_n_0 ),
        .CO({\outStream_V_last_V_1_payload_A_reg[0]_i_9_n_0 ,\outStream_V_last_V_1_payload_A_reg[0]_i_9_n_1 ,\outStream_V_last_V_1_payload_A_reg[0]_i_9_n_2 ,\outStream_V_last_V_1_payload_A_reg[0]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(writeCount_fu_818_p2[20:17]),
        .S({\outStream_V_last_V_1_payload_A[0]_i_27_n_0 ,\outStream_V_last_V_1_payload_A[0]_i_28_n_0 ,\outStream_V_last_V_1_payload_A[0]_i_29_n_0 ,\outStream_V_last_V_1_payload_A[0]_i_30_n_0 }));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \outStream_V_last_V_1_payload_B[0]_i_1 
       (.I0(\outStream_V_last_V_1_payload_A[0]_i_2_n_0 ),
        .I1(\outStream_V_last_V_1_payload_A[0]_i_3_n_0 ),
        .I2(\outStream_V_last_V_1_payload_A[0]_i_4_n_0 ),
        .I3(\outStream_V_last_V_1_payload_A[0]_i_5_n_0 ),
        .I4(outStream_V_last_V_1_load_B),
        .I5(outStream_V_last_V_1_payload_B),
        .O(\outStream_V_last_V_1_payload_B[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \outStream_V_last_V_1_payload_B[0]_i_2 
       (.I0(outStream_V_last_V_1_sel_wr),
        .I1(outStream_V_last_V_1_ack_in),
        .I2(\outStream_V_last_V_1_state_reg_n_0_[0] ),
        .O(outStream_V_last_V_1_load_B));
  FDRE \outStream_V_last_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_last_V_1_payload_B[0]_i_1_n_0 ),
        .Q(outStream_V_last_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'h78)) 
    outStream_V_last_V_1_sel_rd_i_1
       (.I0(\outStream_V_last_V_1_state_reg_n_0_[0] ),
        .I1(outStream_TREADY),
        .I2(outStream_V_last_V_1_sel),
        .O(outStream_V_last_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    outStream_V_last_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(outStream_V_last_V_1_sel_rd_i_1_n_0),
        .Q(outStream_V_last_V_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h78)) 
    outStream_V_last_V_1_sel_wr_i_1
       (.I0(outStream_V_data_V_1_sel_wr052_out),
        .I1(outStream_V_last_V_1_ack_in),
        .I2(outStream_V_last_V_1_sel_wr),
        .O(outStream_V_last_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    outStream_V_last_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(outStream_V_last_V_1_sel_wr_i_1_n_0),
        .Q(outStream_V_last_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h8AAA8080)) 
    \outStream_V_last_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(outStream_V_data_V_1_sel_wr052_out),
        .I2(outStream_V_last_V_1_ack_in),
        .I3(outStream_TREADY),
        .I4(\outStream_V_last_V_1_state_reg_n_0_[0] ),
        .O(\outStream_V_last_V_1_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hF4FF)) 
    \outStream_V_last_V_1_state[1]_i_1 
       (.I0(outStream_V_data_V_1_sel_wr052_out),
        .I1(outStream_V_last_V_1_ack_in),
        .I2(outStream_TREADY),
        .I3(\outStream_V_last_V_1_state_reg_n_0_[0] ),
        .O(\outStream_V_last_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_last_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_last_V_1_state[0]_i_1_n_0 ),
        .Q(\outStream_V_last_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_last_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_last_V_1_state[1]_i_1_n_0 ),
        .Q(outStream_V_last_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF4CC0000)) 
    \outStream_V_strb_V_1_state[0]_i_1 
       (.I0(outStream_TREADY),
        .I1(\outStream_V_strb_V_1_state_reg_n_0_[0] ),
        .I2(outStream_V_data_V_1_sel_wr052_out),
        .I3(outStream_V_strb_V_1_ack_in),
        .I4(ap_rst_n),
        .O(\outStream_V_strb_V_1_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF4FF)) 
    \outStream_V_strb_V_1_state[1]_i_1 
       (.I0(outStream_V_data_V_1_sel_wr052_out),
        .I1(outStream_V_strb_V_1_ack_in),
        .I2(outStream_TREADY),
        .I3(\outStream_V_strb_V_1_state_reg_n_0_[0] ),
        .O(\outStream_V_strb_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_strb_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_strb_V_1_state[0]_i_1_n_0 ),
        .Q(\outStream_V_strb_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_strb_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_strb_V_1_state[1]_i_1_n_0 ),
        .Q(outStream_V_strb_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF4CC0000)) 
    \outStream_V_user_V_1_state[0]_i_1 
       (.I0(outStream_TREADY),
        .I1(\outStream_V_user_V_1_state_reg_n_0_[0] ),
        .I2(outStream_V_data_V_1_sel_wr052_out),
        .I3(outStream_V_user_V_1_ack_in),
        .I4(ap_rst_n),
        .O(\outStream_V_user_V_1_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF4FF)) 
    \outStream_V_user_V_1_state[1]_i_1 
       (.I0(outStream_V_data_V_1_sel_wr052_out),
        .I1(outStream_V_user_V_1_ack_in),
        .I2(outStream_TREADY),
        .I3(\outStream_V_user_V_1_state_reg_n_0_[0] ),
        .O(\outStream_V_user_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_user_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_user_V_1_state[0]_i_1_n_0 ),
        .Q(\outStream_V_user_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_user_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_user_V_1_state[1]_i_1_n_0 ),
        .Q(outStream_V_user_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFBFFFFF00000000)) 
    \readCount_1_fu_168[0]_i_1 
       (.I0(\x_assign_reg_390[6]_i_4_n_0 ),
        .I1(ap_CS_fsm_pp3_stage0),
        .I2(ap_enable_reg_pp3_iter0),
        .I3(lineBuffer_1_U_n_65),
        .I4(tmp_7_fu_667_p2),
        .I5(ap_CS_fsm_state10),
        .O(readCount_1_fu_168));
  LUT5 #(
    .INIT(32'h00400000)) 
    \readCount_1_fu_168[0]_i_2 
       (.I0(\x_assign_reg_390[6]_i_4_n_0 ),
        .I1(ap_CS_fsm_pp3_stage0),
        .I2(ap_enable_reg_pp3_iter0),
        .I3(lineBuffer_1_U_n_65),
        .I4(tmp_7_fu_667_p2),
        .O(readCount_1_fu_1680));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[0]_i_4 
       (.I0(\readCount_1_fu_168_reg_n_0_[3] ),
        .O(\readCount_1_fu_168[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[0]_i_5 
       (.I0(\readCount_1_fu_168_reg_n_0_[2] ),
        .O(\readCount_1_fu_168[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[0]_i_6 
       (.I0(\readCount_1_fu_168_reg_n_0_[1] ),
        .O(\readCount_1_fu_168[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \readCount_1_fu_168[0]_i_7 
       (.I0(\readCount_1_fu_168_reg_n_0_[0] ),
        .O(\readCount_1_fu_168[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[12]_i_2 
       (.I0(readCount_1_fu_168_reg[15]),
        .O(\readCount_1_fu_168[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[12]_i_3 
       (.I0(readCount_1_fu_168_reg[14]),
        .O(\readCount_1_fu_168[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[12]_i_4 
       (.I0(readCount_1_fu_168_reg[13]),
        .O(\readCount_1_fu_168[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[12]_i_5 
       (.I0(readCount_1_fu_168_reg[12]),
        .O(\readCount_1_fu_168[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[16]_i_2 
       (.I0(readCount_1_fu_168_reg[19]),
        .O(\readCount_1_fu_168[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[16]_i_3 
       (.I0(readCount_1_fu_168_reg[18]),
        .O(\readCount_1_fu_168[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[16]_i_4 
       (.I0(readCount_1_fu_168_reg[17]),
        .O(\readCount_1_fu_168[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[16]_i_5 
       (.I0(readCount_1_fu_168_reg[16]),
        .O(\readCount_1_fu_168[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[20]_i_2 
       (.I0(readCount_1_fu_168_reg[23]),
        .O(\readCount_1_fu_168[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[20]_i_3 
       (.I0(readCount_1_fu_168_reg[22]),
        .O(\readCount_1_fu_168[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[20]_i_4 
       (.I0(readCount_1_fu_168_reg[21]),
        .O(\readCount_1_fu_168[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[20]_i_5 
       (.I0(readCount_1_fu_168_reg[20]),
        .O(\readCount_1_fu_168[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[24]_i_2 
       (.I0(readCount_1_fu_168_reg[27]),
        .O(\readCount_1_fu_168[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[24]_i_3 
       (.I0(readCount_1_fu_168_reg[26]),
        .O(\readCount_1_fu_168[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[24]_i_4 
       (.I0(readCount_1_fu_168_reg[25]),
        .O(\readCount_1_fu_168[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[24]_i_5 
       (.I0(readCount_1_fu_168_reg[24]),
        .O(\readCount_1_fu_168[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[28]_i_2 
       (.I0(readCount_1_fu_168_reg[31]),
        .O(\readCount_1_fu_168[28]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[28]_i_3 
       (.I0(readCount_1_fu_168_reg[30]),
        .O(\readCount_1_fu_168[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[28]_i_4 
       (.I0(readCount_1_fu_168_reg[29]),
        .O(\readCount_1_fu_168[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[28]_i_5 
       (.I0(readCount_1_fu_168_reg[28]),
        .O(\readCount_1_fu_168[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[4]_i_2 
       (.I0(readCount_1_fu_168_reg[7]),
        .O(\readCount_1_fu_168[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[4]_i_3 
       (.I0(readCount_1_fu_168_reg[6]),
        .O(\readCount_1_fu_168[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[4]_i_4 
       (.I0(readCount_1_fu_168_reg[5]),
        .O(\readCount_1_fu_168[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[4]_i_5 
       (.I0(readCount_1_fu_168_reg[4]),
        .O(\readCount_1_fu_168[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[8]_i_2 
       (.I0(readCount_1_fu_168_reg[11]),
        .O(\readCount_1_fu_168[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[8]_i_3 
       (.I0(readCount_1_fu_168_reg[10]),
        .O(\readCount_1_fu_168[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[8]_i_4 
       (.I0(readCount_1_fu_168_reg[9]),
        .O(\readCount_1_fu_168[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \readCount_1_fu_168[8]_i_5 
       (.I0(readCount_1_fu_168_reg[8]),
        .O(\readCount_1_fu_168[8]_i_5_n_0 ));
  FDRE \readCount_1_fu_168_reg[0] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[0]_i_3_n_7 ),
        .Q(\readCount_1_fu_168_reg_n_0_[0] ),
        .R(readCount_1_fu_168));
  CARRY4 \readCount_1_fu_168_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\readCount_1_fu_168_reg[0]_i_3_n_0 ,\readCount_1_fu_168_reg[0]_i_3_n_1 ,\readCount_1_fu_168_reg[0]_i_3_n_2 ,\readCount_1_fu_168_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\readCount_1_fu_168_reg[0]_i_3_n_4 ,\readCount_1_fu_168_reg[0]_i_3_n_5 ,\readCount_1_fu_168_reg[0]_i_3_n_6 ,\readCount_1_fu_168_reg[0]_i_3_n_7 }),
        .S({\readCount_1_fu_168[0]_i_4_n_0 ,\readCount_1_fu_168[0]_i_5_n_0 ,\readCount_1_fu_168[0]_i_6_n_0 ,\readCount_1_fu_168[0]_i_7_n_0 }));
  FDRE \readCount_1_fu_168_reg[10] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[8]_i_1_n_5 ),
        .Q(readCount_1_fu_168_reg[10]),
        .R(readCount_1_fu_168));
  FDRE \readCount_1_fu_168_reg[11] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[8]_i_1_n_4 ),
        .Q(readCount_1_fu_168_reg[11]),
        .R(readCount_1_fu_168));
  FDRE \readCount_1_fu_168_reg[12] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[12]_i_1_n_7 ),
        .Q(readCount_1_fu_168_reg[12]),
        .R(readCount_1_fu_168));
  CARRY4 \readCount_1_fu_168_reg[12]_i_1 
       (.CI(\readCount_1_fu_168_reg[8]_i_1_n_0 ),
        .CO({\readCount_1_fu_168_reg[12]_i_1_n_0 ,\readCount_1_fu_168_reg[12]_i_1_n_1 ,\readCount_1_fu_168_reg[12]_i_1_n_2 ,\readCount_1_fu_168_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\readCount_1_fu_168_reg[12]_i_1_n_4 ,\readCount_1_fu_168_reg[12]_i_1_n_5 ,\readCount_1_fu_168_reg[12]_i_1_n_6 ,\readCount_1_fu_168_reg[12]_i_1_n_7 }),
        .S({\readCount_1_fu_168[12]_i_2_n_0 ,\readCount_1_fu_168[12]_i_3_n_0 ,\readCount_1_fu_168[12]_i_4_n_0 ,\readCount_1_fu_168[12]_i_5_n_0 }));
  FDRE \readCount_1_fu_168_reg[13] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[12]_i_1_n_6 ),
        .Q(readCount_1_fu_168_reg[13]),
        .R(readCount_1_fu_168));
  FDRE \readCount_1_fu_168_reg[14] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[12]_i_1_n_5 ),
        .Q(readCount_1_fu_168_reg[14]),
        .R(readCount_1_fu_168));
  FDRE \readCount_1_fu_168_reg[15] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[12]_i_1_n_4 ),
        .Q(readCount_1_fu_168_reg[15]),
        .R(readCount_1_fu_168));
  FDRE \readCount_1_fu_168_reg[16] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[16]_i_1_n_7 ),
        .Q(readCount_1_fu_168_reg[16]),
        .R(readCount_1_fu_168));
  CARRY4 \readCount_1_fu_168_reg[16]_i_1 
       (.CI(\readCount_1_fu_168_reg[12]_i_1_n_0 ),
        .CO({\readCount_1_fu_168_reg[16]_i_1_n_0 ,\readCount_1_fu_168_reg[16]_i_1_n_1 ,\readCount_1_fu_168_reg[16]_i_1_n_2 ,\readCount_1_fu_168_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\readCount_1_fu_168_reg[16]_i_1_n_4 ,\readCount_1_fu_168_reg[16]_i_1_n_5 ,\readCount_1_fu_168_reg[16]_i_1_n_6 ,\readCount_1_fu_168_reg[16]_i_1_n_7 }),
        .S({\readCount_1_fu_168[16]_i_2_n_0 ,\readCount_1_fu_168[16]_i_3_n_0 ,\readCount_1_fu_168[16]_i_4_n_0 ,\readCount_1_fu_168[16]_i_5_n_0 }));
  FDRE \readCount_1_fu_168_reg[17] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[16]_i_1_n_6 ),
        .Q(readCount_1_fu_168_reg[17]),
        .R(readCount_1_fu_168));
  FDRE \readCount_1_fu_168_reg[18] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[16]_i_1_n_5 ),
        .Q(readCount_1_fu_168_reg[18]),
        .R(readCount_1_fu_168));
  FDRE \readCount_1_fu_168_reg[19] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[16]_i_1_n_4 ),
        .Q(readCount_1_fu_168_reg[19]),
        .R(readCount_1_fu_168));
  FDSE \readCount_1_fu_168_reg[1] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[0]_i_3_n_6 ),
        .Q(\readCount_1_fu_168_reg_n_0_[1] ),
        .S(readCount_1_fu_168));
  FDRE \readCount_1_fu_168_reg[20] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[20]_i_1_n_7 ),
        .Q(readCount_1_fu_168_reg[20]),
        .R(readCount_1_fu_168));
  CARRY4 \readCount_1_fu_168_reg[20]_i_1 
       (.CI(\readCount_1_fu_168_reg[16]_i_1_n_0 ),
        .CO({\readCount_1_fu_168_reg[20]_i_1_n_0 ,\readCount_1_fu_168_reg[20]_i_1_n_1 ,\readCount_1_fu_168_reg[20]_i_1_n_2 ,\readCount_1_fu_168_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\readCount_1_fu_168_reg[20]_i_1_n_4 ,\readCount_1_fu_168_reg[20]_i_1_n_5 ,\readCount_1_fu_168_reg[20]_i_1_n_6 ,\readCount_1_fu_168_reg[20]_i_1_n_7 }),
        .S({\readCount_1_fu_168[20]_i_2_n_0 ,\readCount_1_fu_168[20]_i_3_n_0 ,\readCount_1_fu_168[20]_i_4_n_0 ,\readCount_1_fu_168[20]_i_5_n_0 }));
  FDRE \readCount_1_fu_168_reg[21] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[20]_i_1_n_6 ),
        .Q(readCount_1_fu_168_reg[21]),
        .R(readCount_1_fu_168));
  FDRE \readCount_1_fu_168_reg[22] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[20]_i_1_n_5 ),
        .Q(readCount_1_fu_168_reg[22]),
        .R(readCount_1_fu_168));
  FDRE \readCount_1_fu_168_reg[23] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[20]_i_1_n_4 ),
        .Q(readCount_1_fu_168_reg[23]),
        .R(readCount_1_fu_168));
  FDRE \readCount_1_fu_168_reg[24] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[24]_i_1_n_7 ),
        .Q(readCount_1_fu_168_reg[24]),
        .R(readCount_1_fu_168));
  CARRY4 \readCount_1_fu_168_reg[24]_i_1 
       (.CI(\readCount_1_fu_168_reg[20]_i_1_n_0 ),
        .CO({\readCount_1_fu_168_reg[24]_i_1_n_0 ,\readCount_1_fu_168_reg[24]_i_1_n_1 ,\readCount_1_fu_168_reg[24]_i_1_n_2 ,\readCount_1_fu_168_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\readCount_1_fu_168_reg[24]_i_1_n_4 ,\readCount_1_fu_168_reg[24]_i_1_n_5 ,\readCount_1_fu_168_reg[24]_i_1_n_6 ,\readCount_1_fu_168_reg[24]_i_1_n_7 }),
        .S({\readCount_1_fu_168[24]_i_2_n_0 ,\readCount_1_fu_168[24]_i_3_n_0 ,\readCount_1_fu_168[24]_i_4_n_0 ,\readCount_1_fu_168[24]_i_5_n_0 }));
  FDRE \readCount_1_fu_168_reg[25] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[24]_i_1_n_6 ),
        .Q(readCount_1_fu_168_reg[25]),
        .R(readCount_1_fu_168));
  FDRE \readCount_1_fu_168_reg[26] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[24]_i_1_n_5 ),
        .Q(readCount_1_fu_168_reg[26]),
        .R(readCount_1_fu_168));
  FDRE \readCount_1_fu_168_reg[27] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[24]_i_1_n_4 ),
        .Q(readCount_1_fu_168_reg[27]),
        .R(readCount_1_fu_168));
  FDRE \readCount_1_fu_168_reg[28] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[28]_i_1_n_7 ),
        .Q(readCount_1_fu_168_reg[28]),
        .R(readCount_1_fu_168));
  CARRY4 \readCount_1_fu_168_reg[28]_i_1 
       (.CI(\readCount_1_fu_168_reg[24]_i_1_n_0 ),
        .CO({\NLW_readCount_1_fu_168_reg[28]_i_1_CO_UNCONNECTED [3],\readCount_1_fu_168_reg[28]_i_1_n_1 ,\readCount_1_fu_168_reg[28]_i_1_n_2 ,\readCount_1_fu_168_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\readCount_1_fu_168_reg[28]_i_1_n_4 ,\readCount_1_fu_168_reg[28]_i_1_n_5 ,\readCount_1_fu_168_reg[28]_i_1_n_6 ,\readCount_1_fu_168_reg[28]_i_1_n_7 }),
        .S({\readCount_1_fu_168[28]_i_2_n_0 ,\readCount_1_fu_168[28]_i_3_n_0 ,\readCount_1_fu_168[28]_i_4_n_0 ,\readCount_1_fu_168[28]_i_5_n_0 }));
  FDRE \readCount_1_fu_168_reg[29] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[28]_i_1_n_6 ),
        .Q(readCount_1_fu_168_reg[29]),
        .R(readCount_1_fu_168));
  FDSE \readCount_1_fu_168_reg[2] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[0]_i_3_n_5 ),
        .Q(\readCount_1_fu_168_reg_n_0_[2] ),
        .S(readCount_1_fu_168));
  FDRE \readCount_1_fu_168_reg[30] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[28]_i_1_n_5 ),
        .Q(readCount_1_fu_168_reg[30]),
        .R(readCount_1_fu_168));
  FDRE \readCount_1_fu_168_reg[31] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[28]_i_1_n_4 ),
        .Q(readCount_1_fu_168_reg[31]),
        .R(readCount_1_fu_168));
  FDSE \readCount_1_fu_168_reg[3] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[0]_i_3_n_4 ),
        .Q(\readCount_1_fu_168_reg_n_0_[3] ),
        .S(readCount_1_fu_168));
  FDSE \readCount_1_fu_168_reg[4] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[4]_i_1_n_7 ),
        .Q(readCount_1_fu_168_reg[4]),
        .S(readCount_1_fu_168));
  CARRY4 \readCount_1_fu_168_reg[4]_i_1 
       (.CI(\readCount_1_fu_168_reg[0]_i_3_n_0 ),
        .CO({\readCount_1_fu_168_reg[4]_i_1_n_0 ,\readCount_1_fu_168_reg[4]_i_1_n_1 ,\readCount_1_fu_168_reg[4]_i_1_n_2 ,\readCount_1_fu_168_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\readCount_1_fu_168_reg[4]_i_1_n_4 ,\readCount_1_fu_168_reg[4]_i_1_n_5 ,\readCount_1_fu_168_reg[4]_i_1_n_6 ,\readCount_1_fu_168_reg[4]_i_1_n_7 }),
        .S({\readCount_1_fu_168[4]_i_2_n_0 ,\readCount_1_fu_168[4]_i_3_n_0 ,\readCount_1_fu_168[4]_i_4_n_0 ,\readCount_1_fu_168[4]_i_5_n_0 }));
  FDRE \readCount_1_fu_168_reg[5] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[4]_i_1_n_6 ),
        .Q(readCount_1_fu_168_reg[5]),
        .R(readCount_1_fu_168));
  FDSE \readCount_1_fu_168_reg[6] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[4]_i_1_n_5 ),
        .Q(readCount_1_fu_168_reg[6]),
        .S(readCount_1_fu_168));
  FDRE \readCount_1_fu_168_reg[7] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[4]_i_1_n_4 ),
        .Q(readCount_1_fu_168_reg[7]),
        .R(readCount_1_fu_168));
  FDRE \readCount_1_fu_168_reg[8] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[8]_i_1_n_7 ),
        .Q(readCount_1_fu_168_reg[8]),
        .R(readCount_1_fu_168));
  CARRY4 \readCount_1_fu_168_reg[8]_i_1 
       (.CI(\readCount_1_fu_168_reg[4]_i_1_n_0 ),
        .CO({\readCount_1_fu_168_reg[8]_i_1_n_0 ,\readCount_1_fu_168_reg[8]_i_1_n_1 ,\readCount_1_fu_168_reg[8]_i_1_n_2 ,\readCount_1_fu_168_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\readCount_1_fu_168_reg[8]_i_1_n_4 ,\readCount_1_fu_168_reg[8]_i_1_n_5 ,\readCount_1_fu_168_reg[8]_i_1_n_6 ,\readCount_1_fu_168_reg[8]_i_1_n_7 }),
        .S({\readCount_1_fu_168[8]_i_2_n_0 ,\readCount_1_fu_168[8]_i_3_n_0 ,\readCount_1_fu_168[8]_i_4_n_0 ,\readCount_1_fu_168[8]_i_5_n_0 }));
  FDRE \readCount_1_fu_168_reg[9] 
       (.C(ap_clk),
        .CE(readCount_1_fu_1680),
        .D(\readCount_1_fu_168_reg[8]_i_1_n_6 ),
        .Q(readCount_1_fu_168_reg[9]),
        .R(readCount_1_fu_168));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_reg_1058[0]_i_1 
       (.I0(tmp_1_i_i_fu_771_p2[2]),
        .I1(p_0_in),
        .I2(\result_reg_1058_reg[1]_i_3_n_5 ),
        .O(result_fu_797_p3[0]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_reg_1058[10]_i_1 
       (.I0(tmp_1_i_i_fu_771_p2[12]),
        .I1(p_0_in),
        .I2(\result_reg_1058_reg[13]_i_3_n_7 ),
        .O(result_fu_797_p3[10]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_reg_1058[11]_i_1 
       (.I0(tmp_1_i_i_fu_771_p2[13]),
        .I1(p_0_in),
        .I2(\result_reg_1058_reg[13]_i_3_n_6 ),
        .O(result_fu_797_p3[11]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_reg_1058[12]_i_1 
       (.I0(tmp_1_i_i_fu_771_p2[14]),
        .I1(p_0_in),
        .I2(\result_reg_1058_reg[13]_i_3_n_5 ),
        .O(result_fu_797_p3[12]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_reg_1058[13]_i_1 
       (.I0(tmp_1_i_i_fu_771_p2[15]),
        .I1(p_0_in),
        .I2(\result_reg_1058_reg[13]_i_3_n_4 ),
        .O(result_fu_797_p3[13]));
  LUT5 #(
    .INIT(32'hE8FF00E8)) 
    \result_reg_1058[13]_i_10 
       (.I0(window_1_0_read_as_fu_160[11]),
        .I1(window_1_0_phi_fu_415_p4[11]),
        .I2(window_0_0_read_as_fu_148[11]),
        .I3(\result_reg_1058[13]_i_18_n_0 ),
        .I4(window_0_0_fu_152[12]),
        .O(\result_reg_1058[13]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hE8FF00E8)) 
    \result_reg_1058[13]_i_11 
       (.I0(window_1_0_phi_fu_415_p4[10]),
        .I1(window_1_0_read_as_fu_160[10]),
        .I2(window_0_0_read_as_fu_148[10]),
        .I3(\result_reg_1058[13]_i_19_n_0 ),
        .I4(window_0_0_fu_152[11]),
        .O(\result_reg_1058[13]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \result_reg_1058[13]_i_12 
       (.I0(\result_reg_1058[13]_i_8_n_0 ),
        .I1(window_1_0_phi_fu_415_p4[14]),
        .I2(window_1_0_read_as_fu_160[14]),
        .I3(window_0_0_read_as_fu_148[14]),
        .I4(window_0_0_fu_152[15]),
        .I5(\result_reg_1058[17]_i_19_n_0 ),
        .O(\result_reg_1058[13]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \result_reg_1058[13]_i_13 
       (.I0(\result_reg_1058[13]_i_9_n_0 ),
        .I1(window_1_0_read_as_fu_160[13]),
        .I2(window_1_0_phi_fu_415_p4[13]),
        .I3(window_0_0_read_as_fu_148[13]),
        .I4(window_0_0_fu_152[14]),
        .I5(\result_reg_1058[13]_i_16_n_0 ),
        .O(\result_reg_1058[13]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \result_reg_1058[13]_i_14 
       (.I0(\result_reg_1058[13]_i_10_n_0 ),
        .I1(window_1_0_phi_fu_415_p4[12]),
        .I2(window_1_0_read_as_fu_160[12]),
        .I3(window_0_0_read_as_fu_148[12]),
        .I4(window_0_0_fu_152[13]),
        .I5(\result_reg_1058[13]_i_17_n_0 ),
        .O(\result_reg_1058[13]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \result_reg_1058[13]_i_15 
       (.I0(\result_reg_1058[13]_i_11_n_0 ),
        .I1(window_1_0_read_as_fu_160[11]),
        .I2(window_1_0_phi_fu_415_p4[11]),
        .I3(window_0_0_read_as_fu_148[11]),
        .I4(window_0_0_fu_152[12]),
        .I5(\result_reg_1058[13]_i_18_n_0 ),
        .O(\result_reg_1058[13]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \result_reg_1058[13]_i_16 
       (.I0(window_0_0_read_as_fu_148[14]),
        .I1(window_1_0_reg_412[14]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[14] ),
        .I5(window_1_0_read_as_fu_160[14]),
        .O(\result_reg_1058[13]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \result_reg_1058[13]_i_17 
       (.I0(window_0_0_read_as_fu_148[13]),
        .I1(window_1_0_reg_412[13]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[13] ),
        .I5(window_1_0_read_as_fu_160[13]),
        .O(\result_reg_1058[13]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \result_reg_1058[13]_i_18 
       (.I0(window_0_0_read_as_fu_148[12]),
        .I1(window_1_0_reg_412[12]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[12] ),
        .I5(window_1_0_read_as_fu_160[12]),
        .O(\result_reg_1058[13]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \result_reg_1058[13]_i_19 
       (.I0(window_0_0_read_as_fu_148[11]),
        .I1(window_1_0_reg_412[11]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[11] ),
        .I5(window_1_0_read_as_fu_160[11]),
        .O(\result_reg_1058[13]_i_19_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_reg_1058[13]_i_4 
       (.I0(\result_reg_1058_reg[13]_i_3_n_4 ),
        .O(\result_reg_1058[13]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_reg_1058[13]_i_5 
       (.I0(\result_reg_1058_reg[13]_i_3_n_5 ),
        .O(\result_reg_1058[13]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_reg_1058[13]_i_6 
       (.I0(\result_reg_1058_reg[13]_i_3_n_6 ),
        .O(\result_reg_1058[13]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_reg_1058[13]_i_7 
       (.I0(\result_reg_1058_reg[13]_i_3_n_7 ),
        .O(\result_reg_1058[13]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hE800FFE8)) 
    \result_reg_1058[13]_i_8 
       (.I0(window_1_0_read_as_fu_160[13]),
        .I1(window_1_0_phi_fu_415_p4[13]),
        .I2(window_0_0_read_as_fu_148[13]),
        .I3(window_0_0_fu_152[14]),
        .I4(\result_reg_1058[13]_i_16_n_0 ),
        .O(\result_reg_1058[13]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hE8FF00E8)) 
    \result_reg_1058[13]_i_9 
       (.I0(window_1_0_phi_fu_415_p4[12]),
        .I1(window_1_0_read_as_fu_160[12]),
        .I2(window_0_0_read_as_fu_148[12]),
        .I3(\result_reg_1058[13]_i_17_n_0 ),
        .I4(window_0_0_fu_152[13]),
        .O(\result_reg_1058[13]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_reg_1058[14]_i_1 
       (.I0(tmp_1_i_i_fu_771_p2[16]),
        .I1(p_0_in),
        .I2(\result_reg_1058_reg[17]_i_3_n_7 ),
        .O(result_fu_797_p3[14]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_reg_1058[15]_i_1 
       (.I0(tmp_1_i_i_fu_771_p2[17]),
        .I1(p_0_in),
        .I2(\result_reg_1058_reg[17]_i_3_n_6 ),
        .O(result_fu_797_p3[15]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_reg_1058[16]_i_1 
       (.I0(tmp_1_i_i_fu_771_p2[18]),
        .I1(p_0_in),
        .I2(\result_reg_1058_reg[17]_i_3_n_5 ),
        .O(result_fu_797_p3[16]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_reg_1058[17]_i_1 
       (.I0(tmp_1_i_i_fu_771_p2[19]),
        .I1(p_0_in),
        .I2(\result_reg_1058_reg[17]_i_3_n_4 ),
        .O(result_fu_797_p3[17]));
  LUT5 #(
    .INIT(32'hE800FFE8)) 
    \result_reg_1058[17]_i_10 
       (.I0(window_1_0_read_as_fu_160[15]),
        .I1(window_1_0_phi_fu_415_p4[15]),
        .I2(window_0_0_read_as_fu_148[15]),
        .I3(window_0_0_fu_152[16]),
        .I4(\result_reg_1058[17]_i_18_n_0 ),
        .O(\result_reg_1058[17]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hE8FF00E8)) 
    \result_reg_1058[17]_i_11 
       (.I0(window_1_0_phi_fu_415_p4[14]),
        .I1(window_1_0_read_as_fu_160[14]),
        .I2(window_0_0_read_as_fu_148[14]),
        .I3(\result_reg_1058[17]_i_19_n_0 ),
        .I4(window_0_0_fu_152[15]),
        .O(\result_reg_1058[17]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \result_reg_1058[17]_i_12 
       (.I0(\result_reg_1058[17]_i_8_n_0 ),
        .I1(window_1_0_phi_fu_415_p4[18]),
        .I2(window_1_0_read_as_fu_160[18]),
        .I3(window_0_0_read_as_fu_148[18]),
        .I4(window_0_0_fu_152[19]),
        .I5(\result_reg_1058[19]_i_17_n_0 ),
        .O(\result_reg_1058[17]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \result_reg_1058[17]_i_13 
       (.I0(\result_reg_1058[17]_i_9_n_0 ),
        .I1(window_1_0_read_as_fu_160[17]),
        .I2(window_1_0_phi_fu_415_p4[17]),
        .I3(window_0_0_read_as_fu_148[17]),
        .I4(window_0_0_fu_152[18]),
        .I5(\result_reg_1058[17]_i_16_n_0 ),
        .O(\result_reg_1058[17]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \result_reg_1058[17]_i_14 
       (.I0(\result_reg_1058[17]_i_10_n_0 ),
        .I1(window_1_0_phi_fu_415_p4[16]),
        .I2(window_1_0_read_as_fu_160[16]),
        .I3(window_0_0_read_as_fu_148[16]),
        .I4(window_0_0_fu_152[17]),
        .I5(\result_reg_1058[17]_i_17_n_0 ),
        .O(\result_reg_1058[17]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \result_reg_1058[17]_i_15 
       (.I0(\result_reg_1058[17]_i_11_n_0 ),
        .I1(window_1_0_read_as_fu_160[15]),
        .I2(window_1_0_phi_fu_415_p4[15]),
        .I3(window_0_0_read_as_fu_148[15]),
        .I4(window_0_0_fu_152[16]),
        .I5(\result_reg_1058[17]_i_18_n_0 ),
        .O(\result_reg_1058[17]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \result_reg_1058[17]_i_16 
       (.I0(window_0_0_read_as_fu_148[18]),
        .I1(window_1_0_reg_412[18]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[18] ),
        .I5(window_1_0_read_as_fu_160[18]),
        .O(\result_reg_1058[17]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \result_reg_1058[17]_i_17 
       (.I0(window_0_0_read_as_fu_148[17]),
        .I1(window_1_0_reg_412[17]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[17] ),
        .I5(window_1_0_read_as_fu_160[17]),
        .O(\result_reg_1058[17]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \result_reg_1058[17]_i_18 
       (.I0(window_0_0_read_as_fu_148[16]),
        .I1(window_1_0_reg_412[16]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[16] ),
        .I5(window_1_0_read_as_fu_160[16]),
        .O(\result_reg_1058[17]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \result_reg_1058[17]_i_19 
       (.I0(window_0_0_read_as_fu_148[15]),
        .I1(window_1_0_reg_412[15]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[15] ),
        .I5(window_1_0_read_as_fu_160[15]),
        .O(\result_reg_1058[17]_i_19_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_reg_1058[17]_i_4 
       (.I0(\result_reg_1058_reg[17]_i_3_n_4 ),
        .O(\result_reg_1058[17]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_reg_1058[17]_i_5 
       (.I0(\result_reg_1058_reg[17]_i_3_n_5 ),
        .O(\result_reg_1058[17]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_reg_1058[17]_i_6 
       (.I0(\result_reg_1058_reg[17]_i_3_n_6 ),
        .O(\result_reg_1058[17]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_reg_1058[17]_i_7 
       (.I0(\result_reg_1058_reg[17]_i_3_n_7 ),
        .O(\result_reg_1058[17]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hE800FFE8)) 
    \result_reg_1058[17]_i_8 
       (.I0(window_1_0_read_as_fu_160[17]),
        .I1(window_1_0_phi_fu_415_p4[17]),
        .I2(window_0_0_read_as_fu_148[17]),
        .I3(window_0_0_fu_152[18]),
        .I4(\result_reg_1058[17]_i_16_n_0 ),
        .O(\result_reg_1058[17]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hE8FF00E8)) 
    \result_reg_1058[17]_i_9 
       (.I0(window_1_0_phi_fu_415_p4[16]),
        .I1(window_1_0_read_as_fu_160[16]),
        .I2(window_0_0_read_as_fu_148[16]),
        .I3(\result_reg_1058[17]_i_17_n_0 ),
        .I4(window_0_0_fu_152[17]),
        .O(\result_reg_1058[17]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_reg_1058[18]_i_1 
       (.I0(tmp_1_i_i_fu_771_p2[20]),
        .I1(p_0_in),
        .I2(\result_reg_1058_reg[19]_i_3_n_7 ),
        .O(result_fu_797_p3[18]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_reg_1058[19]_i_1 
       (.I0(tmp_1_i_i_fu_771_p2[21]),
        .I1(p_0_in),
        .I2(\result_reg_1058_reg[19]_i_3_n_6 ),
        .O(result_fu_797_p3[19]));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \result_reg_1058[19]_i_10 
       (.I0(\result_reg_1058[19]_i_6_n_0 ),
        .I1(window_1_0_phi_fu_415_p4[22]),
        .I2(window_1_0_read_as_fu_160[22]),
        .I3(window_0_0_read_as_fu_148[22]),
        .I4(window_0_0_fu_152[23]),
        .I5(\tmp_13_reg_1053[0]_i_28_n_0 ),
        .O(\result_reg_1058[19]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \result_reg_1058[19]_i_11 
       (.I0(\result_reg_1058[19]_i_7_n_0 ),
        .I1(window_1_0_read_as_fu_160[21]),
        .I2(window_1_0_phi_fu_415_p4[21]),
        .I3(window_0_0_read_as_fu_148[21]),
        .I4(window_0_0_fu_152[22]),
        .I5(\result_reg_1058[19]_i_14_n_0 ),
        .O(\result_reg_1058[19]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \result_reg_1058[19]_i_12 
       (.I0(\result_reg_1058[19]_i_8_n_0 ),
        .I1(window_1_0_phi_fu_415_p4[20]),
        .I2(window_1_0_read_as_fu_160[20]),
        .I3(window_0_0_read_as_fu_148[20]),
        .I4(window_0_0_fu_152[21]),
        .I5(\result_reg_1058[19]_i_15_n_0 ),
        .O(\result_reg_1058[19]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \result_reg_1058[19]_i_13 
       (.I0(\result_reg_1058[19]_i_9_n_0 ),
        .I1(window_1_0_read_as_fu_160[19]),
        .I2(window_1_0_phi_fu_415_p4[19]),
        .I3(window_0_0_read_as_fu_148[19]),
        .I4(window_0_0_fu_152[20]),
        .I5(\result_reg_1058[19]_i_16_n_0 ),
        .O(\result_reg_1058[19]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \result_reg_1058[19]_i_14 
       (.I0(window_0_0_read_as_fu_148[22]),
        .I1(window_1_0_reg_412[22]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[22] ),
        .I5(window_1_0_read_as_fu_160[22]),
        .O(\result_reg_1058[19]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \result_reg_1058[19]_i_15 
       (.I0(window_0_0_read_as_fu_148[21]),
        .I1(window_1_0_reg_412[21]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[21] ),
        .I5(window_1_0_read_as_fu_160[21]),
        .O(\result_reg_1058[19]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \result_reg_1058[19]_i_16 
       (.I0(window_0_0_read_as_fu_148[20]),
        .I1(window_1_0_reg_412[20]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[20] ),
        .I5(window_1_0_read_as_fu_160[20]),
        .O(\result_reg_1058[19]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \result_reg_1058[19]_i_17 
       (.I0(window_0_0_read_as_fu_148[19]),
        .I1(window_1_0_reg_412[19]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[19] ),
        .I5(window_1_0_read_as_fu_160[19]),
        .O(\result_reg_1058[19]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_reg_1058[19]_i_4 
       (.I0(\result_reg_1058_reg[19]_i_3_n_6 ),
        .O(\result_reg_1058[19]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_reg_1058[19]_i_5 
       (.I0(\result_reg_1058_reg[19]_i_3_n_7 ),
        .O(\result_reg_1058[19]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hE8FF00E8)) 
    \result_reg_1058[19]_i_6 
       (.I0(window_1_0_read_as_fu_160[21]),
        .I1(window_1_0_phi_fu_415_p4[21]),
        .I2(window_0_0_read_as_fu_148[21]),
        .I3(\result_reg_1058[19]_i_14_n_0 ),
        .I4(window_0_0_fu_152[22]),
        .O(\result_reg_1058[19]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hE8FF00E8)) 
    \result_reg_1058[19]_i_7 
       (.I0(window_1_0_phi_fu_415_p4[20]),
        .I1(window_1_0_read_as_fu_160[20]),
        .I2(window_0_0_read_as_fu_148[20]),
        .I3(\result_reg_1058[19]_i_15_n_0 ),
        .I4(window_0_0_fu_152[21]),
        .O(\result_reg_1058[19]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hE800FFE8)) 
    \result_reg_1058[19]_i_8 
       (.I0(window_1_0_read_as_fu_160[19]),
        .I1(window_1_0_phi_fu_415_p4[19]),
        .I2(window_0_0_read_as_fu_148[19]),
        .I3(window_0_0_fu_152[20]),
        .I4(\result_reg_1058[19]_i_16_n_0 ),
        .O(\result_reg_1058[19]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hE8FF00E8)) 
    \result_reg_1058[19]_i_9 
       (.I0(window_1_0_phi_fu_415_p4[18]),
        .I1(window_1_0_read_as_fu_160[18]),
        .I2(window_0_0_read_as_fu_148[18]),
        .I3(\result_reg_1058[19]_i_17_n_0 ),
        .I4(window_0_0_fu_152[19]),
        .O(\result_reg_1058[19]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_reg_1058[1]_i_1 
       (.I0(tmp_1_i_i_fu_771_p2[3]),
        .I1(p_0_in),
        .I2(\result_reg_1058_reg[1]_i_3_n_4 ),
        .O(result_fu_797_p3[1]));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \result_reg_1058[1]_i_10 
       (.I0(window_1_0_read_as_fu_160[1]),
        .I1(\window_1_1_reg_401_reg_n_0_[1] ),
        .I2(\tmp_13_reg_1053[0]_i_29_n_0 ),
        .I3(window_1_0_reg_412[1]),
        .I4(window_0_0_read_as_fu_148[1]),
        .I5(window_0_0_fu_152[1]),
        .O(\result_reg_1058[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \result_reg_1058[1]_i_11 
       (.I0(\result_reg_1058[1]_i_8_n_0 ),
        .I1(window_1_0_phi_fu_415_p4[2]),
        .I2(window_1_0_read_as_fu_160[2]),
        .I3(window_0_0_read_as_fu_148[2]),
        .I4(window_0_0_fu_152[3]),
        .I5(\result_reg_1058[5]_i_19_n_0 ),
        .O(\result_reg_1058[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9666666966696999)) 
    \result_reg_1058[1]_i_12 
       (.I0(window_0_0_fu_152[2]),
        .I1(\result_reg_1058[1]_i_15_n_0 ),
        .I2(window_0_0_read_as_fu_148[1]),
        .I3(window_1_0_phi_fu_415_p4[1]),
        .I4(window_1_0_read_as_fu_160[1]),
        .I5(window_0_0_fu_152[1]),
        .O(\result_reg_1058[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h5555656A656AAAAA)) 
    \result_reg_1058[1]_i_13 
       (.I0(\result_reg_1058[1]_i_10_n_0 ),
        .I1(window_1_0_reg_412[0]),
        .I2(\tmp_13_reg_1053[0]_i_29_n_0 ),
        .I3(\window_1_1_reg_401_reg_n_0_[0] ),
        .I4(window_1_0_read_as_fu_160[0]),
        .I5(window_0_0_read_as_fu_148[0]),
        .O(\result_reg_1058[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \result_reg_1058[1]_i_14 
       (.I0(window_1_0_read_as_fu_160[0]),
        .I1(\window_1_1_reg_401_reg_n_0_[0] ),
        .I2(\tmp_13_reg_1053[0]_i_29_n_0 ),
        .I3(window_1_0_reg_412[0]),
        .I4(window_0_0_read_as_fu_148[0]),
        .I5(window_0_0_fu_152[0]),
        .O(\result_reg_1058[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \result_reg_1058[1]_i_15 
       (.I0(window_0_0_read_as_fu_148[2]),
        .I1(window_1_0_reg_412[2]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[2] ),
        .I5(window_1_0_read_as_fu_160[2]),
        .O(\result_reg_1058[1]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_reg_1058[1]_i_4 
       (.I0(\result_reg_1058_reg[1]_i_3_n_4 ),
        .O(\result_reg_1058[1]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_reg_1058[1]_i_5 
       (.I0(\result_reg_1058_reg[1]_i_3_n_5 ),
        .O(\result_reg_1058[1]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_reg_1058[1]_i_6 
       (.I0(\result_reg_1058_reg[1]_i_3_n_6 ),
        .O(\result_reg_1058[1]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \result_reg_1058[1]_i_7 
       (.I0(\result_reg_1058_reg[1]_i_3_n_7 ),
        .O(\result_reg_1058[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hBBB2B222)) 
    \result_reg_1058[1]_i_8 
       (.I0(window_0_0_fu_152[2]),
        .I1(\result_reg_1058[1]_i_15_n_0 ),
        .I2(window_1_0_read_as_fu_160[1]),
        .I3(window_1_0_phi_fu_415_p4[1]),
        .I4(window_0_0_read_as_fu_148[1]),
        .O(\result_reg_1058[1]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h17E8E817)) 
    \result_reg_1058[1]_i_9 
       (.I0(window_0_0_read_as_fu_148[1]),
        .I1(window_1_0_phi_fu_415_p4[1]),
        .I2(window_1_0_read_as_fu_160[1]),
        .I3(\result_reg_1058[1]_i_15_n_0 ),
        .I4(window_0_0_fu_152[2]),
        .O(\result_reg_1058[1]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_reg_1058[2]_i_1 
       (.I0(tmp_1_i_i_fu_771_p2[4]),
        .I1(p_0_in),
        .I2(\result_reg_1058_reg[5]_i_3_n_7 ),
        .O(result_fu_797_p3[2]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_reg_1058[3]_i_1 
       (.I0(tmp_1_i_i_fu_771_p2[5]),
        .I1(p_0_in),
        .I2(\result_reg_1058_reg[5]_i_3_n_6 ),
        .O(result_fu_797_p3[3]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_reg_1058[4]_i_1 
       (.I0(tmp_1_i_i_fu_771_p2[6]),
        .I1(p_0_in),
        .I2(\result_reg_1058_reg[5]_i_3_n_5 ),
        .O(result_fu_797_p3[4]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_reg_1058[5]_i_1 
       (.I0(tmp_1_i_i_fu_771_p2[7]),
        .I1(p_0_in),
        .I2(\result_reg_1058_reg[5]_i_3_n_4 ),
        .O(result_fu_797_p3[5]));
  LUT5 #(
    .INIT(32'hE800FFE8)) 
    \result_reg_1058[5]_i_10 
       (.I0(window_1_0_read_as_fu_160[3]),
        .I1(window_1_0_phi_fu_415_p4[3]),
        .I2(window_0_0_read_as_fu_148[3]),
        .I3(window_0_0_fu_152[4]),
        .I4(\result_reg_1058[5]_i_18_n_0 ),
        .O(\result_reg_1058[5]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hE8FF00E8)) 
    \result_reg_1058[5]_i_11 
       (.I0(window_1_0_phi_fu_415_p4[2]),
        .I1(window_1_0_read_as_fu_160[2]),
        .I2(window_0_0_read_as_fu_148[2]),
        .I3(\result_reg_1058[5]_i_19_n_0 ),
        .I4(window_0_0_fu_152[3]),
        .O(\result_reg_1058[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \result_reg_1058[5]_i_12 
       (.I0(\result_reg_1058[5]_i_8_n_0 ),
        .I1(window_1_0_phi_fu_415_p4[6]),
        .I2(window_1_0_read_as_fu_160[6]),
        .I3(window_0_0_read_as_fu_148[6]),
        .I4(window_0_0_fu_152[7]),
        .I5(\result_reg_1058[9]_i_19_n_0 ),
        .O(\result_reg_1058[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \result_reg_1058[5]_i_13 
       (.I0(\result_reg_1058[5]_i_9_n_0 ),
        .I1(window_1_0_read_as_fu_160[5]),
        .I2(window_1_0_phi_fu_415_p4[5]),
        .I3(window_0_0_read_as_fu_148[5]),
        .I4(window_0_0_fu_152[6]),
        .I5(\result_reg_1058[5]_i_16_n_0 ),
        .O(\result_reg_1058[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \result_reg_1058[5]_i_14 
       (.I0(\result_reg_1058[5]_i_10_n_0 ),
        .I1(window_1_0_phi_fu_415_p4[4]),
        .I2(window_1_0_read_as_fu_160[4]),
        .I3(window_0_0_read_as_fu_148[4]),
        .I4(window_0_0_fu_152[5]),
        .I5(\result_reg_1058[5]_i_17_n_0 ),
        .O(\result_reg_1058[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \result_reg_1058[5]_i_15 
       (.I0(\result_reg_1058[5]_i_11_n_0 ),
        .I1(window_1_0_read_as_fu_160[3]),
        .I2(window_1_0_phi_fu_415_p4[3]),
        .I3(window_0_0_read_as_fu_148[3]),
        .I4(window_0_0_fu_152[4]),
        .I5(\result_reg_1058[5]_i_18_n_0 ),
        .O(\result_reg_1058[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \result_reg_1058[5]_i_16 
       (.I0(window_0_0_read_as_fu_148[6]),
        .I1(window_1_0_reg_412[6]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[6] ),
        .I5(window_1_0_read_as_fu_160[6]),
        .O(\result_reg_1058[5]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \result_reg_1058[5]_i_17 
       (.I0(window_0_0_read_as_fu_148[5]),
        .I1(window_1_0_reg_412[5]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[5] ),
        .I5(window_1_0_read_as_fu_160[5]),
        .O(\result_reg_1058[5]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \result_reg_1058[5]_i_18 
       (.I0(window_0_0_read_as_fu_148[4]),
        .I1(window_1_0_reg_412[4]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[4] ),
        .I5(window_1_0_read_as_fu_160[4]),
        .O(\result_reg_1058[5]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \result_reg_1058[5]_i_19 
       (.I0(window_0_0_read_as_fu_148[3]),
        .I1(window_1_0_reg_412[3]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[3] ),
        .I5(window_1_0_read_as_fu_160[3]),
        .O(\result_reg_1058[5]_i_19_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_reg_1058[5]_i_4 
       (.I0(\result_reg_1058_reg[5]_i_3_n_4 ),
        .O(\result_reg_1058[5]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_reg_1058[5]_i_5 
       (.I0(\result_reg_1058_reg[5]_i_3_n_5 ),
        .O(\result_reg_1058[5]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_reg_1058[5]_i_6 
       (.I0(\result_reg_1058_reg[5]_i_3_n_6 ),
        .O(\result_reg_1058[5]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_reg_1058[5]_i_7 
       (.I0(\result_reg_1058_reg[5]_i_3_n_7 ),
        .O(\result_reg_1058[5]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hE800FFE8)) 
    \result_reg_1058[5]_i_8 
       (.I0(window_1_0_read_as_fu_160[5]),
        .I1(window_1_0_phi_fu_415_p4[5]),
        .I2(window_0_0_read_as_fu_148[5]),
        .I3(window_0_0_fu_152[6]),
        .I4(\result_reg_1058[5]_i_16_n_0 ),
        .O(\result_reg_1058[5]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hE8FF00E8)) 
    \result_reg_1058[5]_i_9 
       (.I0(window_1_0_phi_fu_415_p4[4]),
        .I1(window_1_0_read_as_fu_160[4]),
        .I2(window_0_0_read_as_fu_148[4]),
        .I3(\result_reg_1058[5]_i_17_n_0 ),
        .I4(window_0_0_fu_152[5]),
        .O(\result_reg_1058[5]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_reg_1058[6]_i_1 
       (.I0(tmp_1_i_i_fu_771_p2[8]),
        .I1(p_0_in),
        .I2(\result_reg_1058_reg[9]_i_3_n_7 ),
        .O(result_fu_797_p3[6]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_reg_1058[7]_i_1 
       (.I0(tmp_1_i_i_fu_771_p2[9]),
        .I1(p_0_in),
        .I2(\result_reg_1058_reg[9]_i_3_n_6 ),
        .O(result_fu_797_p3[7]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_reg_1058[8]_i_1 
       (.I0(tmp_1_i_i_fu_771_p2[10]),
        .I1(p_0_in),
        .I2(\result_reg_1058_reg[9]_i_3_n_5 ),
        .O(result_fu_797_p3[8]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_reg_1058[9]_i_1 
       (.I0(tmp_1_i_i_fu_771_p2[11]),
        .I1(p_0_in),
        .I2(\result_reg_1058_reg[9]_i_3_n_4 ),
        .O(result_fu_797_p3[9]));
  LUT5 #(
    .INIT(32'hE800FFE8)) 
    \result_reg_1058[9]_i_10 
       (.I0(window_1_0_read_as_fu_160[7]),
        .I1(window_1_0_phi_fu_415_p4[7]),
        .I2(window_0_0_read_as_fu_148[7]),
        .I3(window_0_0_fu_152[8]),
        .I4(\result_reg_1058[9]_i_18_n_0 ),
        .O(\result_reg_1058[9]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hE8FF00E8)) 
    \result_reg_1058[9]_i_11 
       (.I0(window_1_0_phi_fu_415_p4[6]),
        .I1(window_1_0_read_as_fu_160[6]),
        .I2(window_0_0_read_as_fu_148[6]),
        .I3(\result_reg_1058[9]_i_19_n_0 ),
        .I4(window_0_0_fu_152[7]),
        .O(\result_reg_1058[9]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \result_reg_1058[9]_i_12 
       (.I0(\result_reg_1058[9]_i_8_n_0 ),
        .I1(window_1_0_phi_fu_415_p4[10]),
        .I2(window_1_0_read_as_fu_160[10]),
        .I3(window_0_0_read_as_fu_148[10]),
        .I4(window_0_0_fu_152[11]),
        .I5(\result_reg_1058[13]_i_19_n_0 ),
        .O(\result_reg_1058[9]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \result_reg_1058[9]_i_13 
       (.I0(\result_reg_1058[9]_i_9_n_0 ),
        .I1(window_1_0_read_as_fu_160[9]),
        .I2(window_1_0_phi_fu_415_p4[9]),
        .I3(window_0_0_read_as_fu_148[9]),
        .I4(window_0_0_fu_152[10]),
        .I5(\result_reg_1058[9]_i_16_n_0 ),
        .O(\result_reg_1058[9]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \result_reg_1058[9]_i_14 
       (.I0(\result_reg_1058[9]_i_10_n_0 ),
        .I1(window_1_0_phi_fu_415_p4[8]),
        .I2(window_1_0_read_as_fu_160[8]),
        .I3(window_0_0_read_as_fu_148[8]),
        .I4(window_0_0_fu_152[9]),
        .I5(\result_reg_1058[9]_i_17_n_0 ),
        .O(\result_reg_1058[9]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \result_reg_1058[9]_i_15 
       (.I0(\result_reg_1058[9]_i_11_n_0 ),
        .I1(window_1_0_read_as_fu_160[7]),
        .I2(window_1_0_phi_fu_415_p4[7]),
        .I3(window_0_0_read_as_fu_148[7]),
        .I4(window_0_0_fu_152[8]),
        .I5(\result_reg_1058[9]_i_18_n_0 ),
        .O(\result_reg_1058[9]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \result_reg_1058[9]_i_16 
       (.I0(window_0_0_read_as_fu_148[10]),
        .I1(window_1_0_reg_412[10]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[10] ),
        .I5(window_1_0_read_as_fu_160[10]),
        .O(\result_reg_1058[9]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \result_reg_1058[9]_i_17 
       (.I0(window_0_0_read_as_fu_148[9]),
        .I1(window_1_0_reg_412[9]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[9] ),
        .I5(window_1_0_read_as_fu_160[9]),
        .O(\result_reg_1058[9]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \result_reg_1058[9]_i_18 
       (.I0(window_0_0_read_as_fu_148[8]),
        .I1(window_1_0_reg_412[8]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[8] ),
        .I5(window_1_0_read_as_fu_160[8]),
        .O(\result_reg_1058[9]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \result_reg_1058[9]_i_19 
       (.I0(window_0_0_read_as_fu_148[7]),
        .I1(window_1_0_reg_412[7]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[7] ),
        .I5(window_1_0_read_as_fu_160[7]),
        .O(\result_reg_1058[9]_i_19_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_reg_1058[9]_i_4 
       (.I0(\result_reg_1058_reg[9]_i_3_n_4 ),
        .O(\result_reg_1058[9]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_reg_1058[9]_i_5 
       (.I0(\result_reg_1058_reg[9]_i_3_n_5 ),
        .O(\result_reg_1058[9]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_reg_1058[9]_i_6 
       (.I0(\result_reg_1058_reg[9]_i_3_n_6 ),
        .O(\result_reg_1058[9]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_reg_1058[9]_i_7 
       (.I0(\result_reg_1058_reg[9]_i_3_n_7 ),
        .O(\result_reg_1058[9]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hE800FFE8)) 
    \result_reg_1058[9]_i_8 
       (.I0(window_1_0_read_as_fu_160[9]),
        .I1(window_1_0_phi_fu_415_p4[9]),
        .I2(window_0_0_read_as_fu_148[9]),
        .I3(window_0_0_fu_152[10]),
        .I4(\result_reg_1058[9]_i_16_n_0 ),
        .O(\result_reg_1058[9]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hE8FF00E8)) 
    \result_reg_1058[9]_i_9 
       (.I0(window_1_0_phi_fu_415_p4[8]),
        .I1(window_1_0_read_as_fu_160[8]),
        .I2(window_0_0_read_as_fu_148[8]),
        .I3(\result_reg_1058[9]_i_17_n_0 ),
        .I4(window_0_0_fu_152[9]),
        .O(\result_reg_1058[9]_i_9_n_0 ));
  FDRE \result_reg_1058_reg[0] 
       (.C(ap_clk),
        .CE(result_reg_10580),
        .D(result_fu_797_p3[0]),
        .Q(result_reg_1058[0]),
        .R(1'b0));
  FDRE \result_reg_1058_reg[10] 
       (.C(ap_clk),
        .CE(result_reg_10580),
        .D(result_fu_797_p3[10]),
        .Q(result_reg_1058[10]),
        .R(1'b0));
  FDRE \result_reg_1058_reg[11] 
       (.C(ap_clk),
        .CE(result_reg_10580),
        .D(result_fu_797_p3[11]),
        .Q(result_reg_1058[11]),
        .R(1'b0));
  FDRE \result_reg_1058_reg[12] 
       (.C(ap_clk),
        .CE(result_reg_10580),
        .D(result_fu_797_p3[12]),
        .Q(result_reg_1058[12]),
        .R(1'b0));
  FDRE \result_reg_1058_reg[13] 
       (.C(ap_clk),
        .CE(result_reg_10580),
        .D(result_fu_797_p3[13]),
        .Q(result_reg_1058[13]),
        .R(1'b0));
  CARRY4 \result_reg_1058_reg[13]_i_2 
       (.CI(\result_reg_1058_reg[9]_i_2_n_0 ),
        .CO({\result_reg_1058_reg[13]_i_2_n_0 ,\result_reg_1058_reg[13]_i_2_n_1 ,\result_reg_1058_reg[13]_i_2_n_2 ,\result_reg_1058_reg[13]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_1_i_i_fu_771_p2[15:12]),
        .S({\result_reg_1058[13]_i_4_n_0 ,\result_reg_1058[13]_i_5_n_0 ,\result_reg_1058[13]_i_6_n_0 ,\result_reg_1058[13]_i_7_n_0 }));
  CARRY4 \result_reg_1058_reg[13]_i_3 
       (.CI(\result_reg_1058_reg[9]_i_3_n_0 ),
        .CO({\result_reg_1058_reg[13]_i_3_n_0 ,\result_reg_1058_reg[13]_i_3_n_1 ,\result_reg_1058_reg[13]_i_3_n_2 ,\result_reg_1058_reg[13]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\result_reg_1058[13]_i_8_n_0 ,\result_reg_1058[13]_i_9_n_0 ,\result_reg_1058[13]_i_10_n_0 ,\result_reg_1058[13]_i_11_n_0 }),
        .O({\result_reg_1058_reg[13]_i_3_n_4 ,\result_reg_1058_reg[13]_i_3_n_5 ,\result_reg_1058_reg[13]_i_3_n_6 ,\result_reg_1058_reg[13]_i_3_n_7 }),
        .S({\result_reg_1058[13]_i_12_n_0 ,\result_reg_1058[13]_i_13_n_0 ,\result_reg_1058[13]_i_14_n_0 ,\result_reg_1058[13]_i_15_n_0 }));
  FDRE \result_reg_1058_reg[14] 
       (.C(ap_clk),
        .CE(result_reg_10580),
        .D(result_fu_797_p3[14]),
        .Q(result_reg_1058[14]),
        .R(1'b0));
  FDRE \result_reg_1058_reg[15] 
       (.C(ap_clk),
        .CE(result_reg_10580),
        .D(result_fu_797_p3[15]),
        .Q(result_reg_1058[15]),
        .R(1'b0));
  FDRE \result_reg_1058_reg[16] 
       (.C(ap_clk),
        .CE(result_reg_10580),
        .D(result_fu_797_p3[16]),
        .Q(result_reg_1058[16]),
        .R(1'b0));
  FDRE \result_reg_1058_reg[17] 
       (.C(ap_clk),
        .CE(result_reg_10580),
        .D(result_fu_797_p3[17]),
        .Q(result_reg_1058[17]),
        .R(1'b0));
  CARRY4 \result_reg_1058_reg[17]_i_2 
       (.CI(\result_reg_1058_reg[13]_i_2_n_0 ),
        .CO({\result_reg_1058_reg[17]_i_2_n_0 ,\result_reg_1058_reg[17]_i_2_n_1 ,\result_reg_1058_reg[17]_i_2_n_2 ,\result_reg_1058_reg[17]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_1_i_i_fu_771_p2[19:16]),
        .S({\result_reg_1058[17]_i_4_n_0 ,\result_reg_1058[17]_i_5_n_0 ,\result_reg_1058[17]_i_6_n_0 ,\result_reg_1058[17]_i_7_n_0 }));
  CARRY4 \result_reg_1058_reg[17]_i_3 
       (.CI(\result_reg_1058_reg[13]_i_3_n_0 ),
        .CO({\result_reg_1058_reg[17]_i_3_n_0 ,\result_reg_1058_reg[17]_i_3_n_1 ,\result_reg_1058_reg[17]_i_3_n_2 ,\result_reg_1058_reg[17]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\result_reg_1058[17]_i_8_n_0 ,\result_reg_1058[17]_i_9_n_0 ,\result_reg_1058[17]_i_10_n_0 ,\result_reg_1058[17]_i_11_n_0 }),
        .O({\result_reg_1058_reg[17]_i_3_n_4 ,\result_reg_1058_reg[17]_i_3_n_5 ,\result_reg_1058_reg[17]_i_3_n_6 ,\result_reg_1058_reg[17]_i_3_n_7 }),
        .S({\result_reg_1058[17]_i_12_n_0 ,\result_reg_1058[17]_i_13_n_0 ,\result_reg_1058[17]_i_14_n_0 ,\result_reg_1058[17]_i_15_n_0 }));
  FDRE \result_reg_1058_reg[18] 
       (.C(ap_clk),
        .CE(result_reg_10580),
        .D(result_fu_797_p3[18]),
        .Q(result_reg_1058[18]),
        .R(1'b0));
  FDRE \result_reg_1058_reg[19] 
       (.C(ap_clk),
        .CE(result_reg_10580),
        .D(result_fu_797_p3[19]),
        .Q(result_reg_1058[19]),
        .R(1'b0));
  CARRY4 \result_reg_1058_reg[19]_i_2 
       (.CI(\result_reg_1058_reg[17]_i_2_n_0 ),
        .CO({\NLW_result_reg_1058_reg[19]_i_2_CO_UNCONNECTED [3:1],\result_reg_1058_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_result_reg_1058_reg[19]_i_2_O_UNCONNECTED [3:2],tmp_1_i_i_fu_771_p2[21:20]}),
        .S({1'b0,1'b0,\result_reg_1058[19]_i_4_n_0 ,\result_reg_1058[19]_i_5_n_0 }));
  CARRY4 \result_reg_1058_reg[19]_i_3 
       (.CI(\result_reg_1058_reg[17]_i_3_n_0 ),
        .CO({\result_reg_1058_reg[19]_i_3_n_0 ,\result_reg_1058_reg[19]_i_3_n_1 ,\result_reg_1058_reg[19]_i_3_n_2 ,\result_reg_1058_reg[19]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\result_reg_1058[19]_i_6_n_0 ,\result_reg_1058[19]_i_7_n_0 ,\result_reg_1058[19]_i_8_n_0 ,\result_reg_1058[19]_i_9_n_0 }),
        .O({\NLW_result_reg_1058_reg[19]_i_3_O_UNCONNECTED [3:2],\result_reg_1058_reg[19]_i_3_n_6 ,\result_reg_1058_reg[19]_i_3_n_7 }),
        .S({\result_reg_1058[19]_i_10_n_0 ,\result_reg_1058[19]_i_11_n_0 ,\result_reg_1058[19]_i_12_n_0 ,\result_reg_1058[19]_i_13_n_0 }));
  FDRE \result_reg_1058_reg[1] 
       (.C(ap_clk),
        .CE(result_reg_10580),
        .D(result_fu_797_p3[1]),
        .Q(result_reg_1058[1]),
        .R(1'b0));
  CARRY4 \result_reg_1058_reg[1]_i_2 
       (.CI(1'b0),
        .CO({\result_reg_1058_reg[1]_i_2_n_0 ,\result_reg_1058_reg[1]_i_2_n_1 ,\result_reg_1058_reg[1]_i_2_n_2 ,\result_reg_1058_reg[1]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({tmp_1_i_i_fu_771_p2[3:2],\NLW_result_reg_1058_reg[1]_i_2_O_UNCONNECTED [1:0]}),
        .S({\result_reg_1058[1]_i_4_n_0 ,\result_reg_1058[1]_i_5_n_0 ,\result_reg_1058[1]_i_6_n_0 ,\result_reg_1058[1]_i_7_n_0 }));
  CARRY4 \result_reg_1058_reg[1]_i_3 
       (.CI(1'b0),
        .CO({\result_reg_1058_reg[1]_i_3_n_0 ,\result_reg_1058_reg[1]_i_3_n_1 ,\result_reg_1058_reg[1]_i_3_n_2 ,\result_reg_1058_reg[1]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\result_reg_1058[1]_i_8_n_0 ,\result_reg_1058[1]_i_9_n_0 ,\result_reg_1058[1]_i_10_n_0 ,window_0_0_fu_152[0]}),
        .O({\result_reg_1058_reg[1]_i_3_n_4 ,\result_reg_1058_reg[1]_i_3_n_5 ,\result_reg_1058_reg[1]_i_3_n_6 ,\result_reg_1058_reg[1]_i_3_n_7 }),
        .S({\result_reg_1058[1]_i_11_n_0 ,\result_reg_1058[1]_i_12_n_0 ,\result_reg_1058[1]_i_13_n_0 ,\result_reg_1058[1]_i_14_n_0 }));
  FDRE \result_reg_1058_reg[2] 
       (.C(ap_clk),
        .CE(result_reg_10580),
        .D(result_fu_797_p3[2]),
        .Q(result_reg_1058[2]),
        .R(1'b0));
  FDRE \result_reg_1058_reg[3] 
       (.C(ap_clk),
        .CE(result_reg_10580),
        .D(result_fu_797_p3[3]),
        .Q(result_reg_1058[3]),
        .R(1'b0));
  FDRE \result_reg_1058_reg[4] 
       (.C(ap_clk),
        .CE(result_reg_10580),
        .D(result_fu_797_p3[4]),
        .Q(result_reg_1058[4]),
        .R(1'b0));
  FDRE \result_reg_1058_reg[5] 
       (.C(ap_clk),
        .CE(result_reg_10580),
        .D(result_fu_797_p3[5]),
        .Q(result_reg_1058[5]),
        .R(1'b0));
  CARRY4 \result_reg_1058_reg[5]_i_2 
       (.CI(\result_reg_1058_reg[1]_i_2_n_0 ),
        .CO({\result_reg_1058_reg[5]_i_2_n_0 ,\result_reg_1058_reg[5]_i_2_n_1 ,\result_reg_1058_reg[5]_i_2_n_2 ,\result_reg_1058_reg[5]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_1_i_i_fu_771_p2[7:4]),
        .S({\result_reg_1058[5]_i_4_n_0 ,\result_reg_1058[5]_i_5_n_0 ,\result_reg_1058[5]_i_6_n_0 ,\result_reg_1058[5]_i_7_n_0 }));
  CARRY4 \result_reg_1058_reg[5]_i_3 
       (.CI(\result_reg_1058_reg[1]_i_3_n_0 ),
        .CO({\result_reg_1058_reg[5]_i_3_n_0 ,\result_reg_1058_reg[5]_i_3_n_1 ,\result_reg_1058_reg[5]_i_3_n_2 ,\result_reg_1058_reg[5]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\result_reg_1058[5]_i_8_n_0 ,\result_reg_1058[5]_i_9_n_0 ,\result_reg_1058[5]_i_10_n_0 ,\result_reg_1058[5]_i_11_n_0 }),
        .O({\result_reg_1058_reg[5]_i_3_n_4 ,\result_reg_1058_reg[5]_i_3_n_5 ,\result_reg_1058_reg[5]_i_3_n_6 ,\result_reg_1058_reg[5]_i_3_n_7 }),
        .S({\result_reg_1058[5]_i_12_n_0 ,\result_reg_1058[5]_i_13_n_0 ,\result_reg_1058[5]_i_14_n_0 ,\result_reg_1058[5]_i_15_n_0 }));
  FDRE \result_reg_1058_reg[6] 
       (.C(ap_clk),
        .CE(result_reg_10580),
        .D(result_fu_797_p3[6]),
        .Q(result_reg_1058[6]),
        .R(1'b0));
  FDRE \result_reg_1058_reg[7] 
       (.C(ap_clk),
        .CE(result_reg_10580),
        .D(result_fu_797_p3[7]),
        .Q(result_reg_1058[7]),
        .R(1'b0));
  FDRE \result_reg_1058_reg[8] 
       (.C(ap_clk),
        .CE(result_reg_10580),
        .D(result_fu_797_p3[8]),
        .Q(result_reg_1058[8]),
        .R(1'b0));
  FDRE \result_reg_1058_reg[9] 
       (.C(ap_clk),
        .CE(result_reg_10580),
        .D(result_fu_797_p3[9]),
        .Q(result_reg_1058[9]),
        .R(1'b0));
  CARRY4 \result_reg_1058_reg[9]_i_2 
       (.CI(\result_reg_1058_reg[5]_i_2_n_0 ),
        .CO({\result_reg_1058_reg[9]_i_2_n_0 ,\result_reg_1058_reg[9]_i_2_n_1 ,\result_reg_1058_reg[9]_i_2_n_2 ,\result_reg_1058_reg[9]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_1_i_i_fu_771_p2[11:8]),
        .S({\result_reg_1058[9]_i_4_n_0 ,\result_reg_1058[9]_i_5_n_0 ,\result_reg_1058[9]_i_6_n_0 ,\result_reg_1058[9]_i_7_n_0 }));
  CARRY4 \result_reg_1058_reg[9]_i_3 
       (.CI(\result_reg_1058_reg[5]_i_3_n_0 ),
        .CO({\result_reg_1058_reg[9]_i_3_n_0 ,\result_reg_1058_reg[9]_i_3_n_1 ,\result_reg_1058_reg[9]_i_3_n_2 ,\result_reg_1058_reg[9]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\result_reg_1058[9]_i_8_n_0 ,\result_reg_1058[9]_i_9_n_0 ,\result_reg_1058[9]_i_10_n_0 ,\result_reg_1058[9]_i_11_n_0 }),
        .O({\result_reg_1058_reg[9]_i_3_n_4 ,\result_reg_1058_reg[9]_i_3_n_5 ,\result_reg_1058_reg[9]_i_3_n_6 ,\result_reg_1058_reg[9]_i_3_n_7 }),
        .S({\result_reg_1058[9]_i_12_n_0 ,\result_reg_1058[9]_i_13_n_0 ,\result_reg_1058[9]_i_14_n_0 ,\result_reg_1058[9]_i_15_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h6AFF6A00)) 
    \tmp_10_reg_917[0]_i_1 
       (.I0(y3_phi_fu_326_p4),
        .I1(x4_reg_357[1]),
        .I2(x4_reg_357[0]),
        .I3(ap_enable_reg_pp2_iter10),
        .I4(tmp_10_reg_917),
        .O(\tmp_10_reg_917[0]_i_1_n_0 ));
  FDRE \tmp_10_reg_917_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_10_reg_917[0]_i_1_n_0 ),
        .Q(tmp_10_reg_917),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00002000)) 
    \tmp_13_reg_1053[0]_i_1 
       (.I0(ap_CS_fsm_pp3_stage0),
        .I1(lineBuffer_1_U_n_65),
        .I2(tmp_9_reg_1003),
        .I3(tmp_reg_1022),
        .I4(\exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .O(result_reg_10580));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \tmp_13_reg_1053[0]_i_10 
       (.I0(\tmp_13_reg_1053[0]_i_6_n_0 ),
        .I1(window_1_0_read_as_fu_160[27]),
        .I2(window_1_0_phi_fu_415_p4[27]),
        .I3(window_0_0_read_as_fu_148[27]),
        .I4(window_0_0_fu_152[28]),
        .I5(\tmp_13_reg_1053[0]_i_20_n_0 ),
        .O(\tmp_13_reg_1053[0]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hE800FFE8)) 
    \tmp_13_reg_1053[0]_i_11 
       (.I0(window_1_0_read_as_fu_160[25]),
        .I1(window_1_0_phi_fu_415_p4[25]),
        .I2(window_0_0_read_as_fu_148[25]),
        .I3(window_0_0_fu_152[26]),
        .I4(\tmp_13_reg_1053[0]_i_25_n_0 ),
        .O(\tmp_13_reg_1053[0]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hE8FF00E8)) 
    \tmp_13_reg_1053[0]_i_12 
       (.I0(window_1_0_phi_fu_415_p4[24]),
        .I1(window_1_0_read_as_fu_160[24]),
        .I2(window_0_0_read_as_fu_148[24]),
        .I3(\tmp_13_reg_1053[0]_i_26_n_0 ),
        .I4(window_0_0_fu_152[25]),
        .O(\tmp_13_reg_1053[0]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hE8FF00E8)) 
    \tmp_13_reg_1053[0]_i_13 
       (.I0(window_1_0_read_as_fu_160[23]),
        .I1(window_1_0_phi_fu_415_p4[23]),
        .I2(window_0_0_read_as_fu_148[23]),
        .I3(\tmp_13_reg_1053[0]_i_27_n_0 ),
        .I4(window_0_0_fu_152[24]),
        .O(\tmp_13_reg_1053[0]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hE8FF00E8)) 
    \tmp_13_reg_1053[0]_i_14 
       (.I0(window_1_0_phi_fu_415_p4[22]),
        .I1(window_1_0_read_as_fu_160[22]),
        .I2(window_0_0_read_as_fu_148[22]),
        .I3(\tmp_13_reg_1053[0]_i_28_n_0 ),
        .I4(window_0_0_fu_152[23]),
        .O(\tmp_13_reg_1053[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \tmp_13_reg_1053[0]_i_15 
       (.I0(\tmp_13_reg_1053[0]_i_11_n_0 ),
        .I1(window_1_0_phi_fu_415_p4[26]),
        .I2(window_1_0_read_as_fu_160[26]),
        .I3(window_0_0_read_as_fu_148[26]),
        .I4(window_0_0_fu_152[27]),
        .I5(\tmp_13_reg_1053[0]_i_21_n_0 ),
        .O(\tmp_13_reg_1053[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \tmp_13_reg_1053[0]_i_16 
       (.I0(\tmp_13_reg_1053[0]_i_12_n_0 ),
        .I1(window_1_0_read_as_fu_160[25]),
        .I2(window_1_0_phi_fu_415_p4[25]),
        .I3(window_0_0_read_as_fu_148[25]),
        .I4(window_0_0_fu_152[26]),
        .I5(\tmp_13_reg_1053[0]_i_25_n_0 ),
        .O(\tmp_13_reg_1053[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \tmp_13_reg_1053[0]_i_17 
       (.I0(\tmp_13_reg_1053[0]_i_13_n_0 ),
        .I1(window_1_0_phi_fu_415_p4[24]),
        .I2(window_1_0_read_as_fu_160[24]),
        .I3(window_0_0_read_as_fu_148[24]),
        .I4(window_0_0_fu_152[25]),
        .I5(\tmp_13_reg_1053[0]_i_26_n_0 ),
        .O(\tmp_13_reg_1053[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \tmp_13_reg_1053[0]_i_18 
       (.I0(\tmp_13_reg_1053[0]_i_14_n_0 ),
        .I1(window_1_0_read_as_fu_160[23]),
        .I2(window_1_0_phi_fu_415_p4[23]),
        .I3(window_0_0_read_as_fu_148[23]),
        .I4(window_0_0_fu_152[24]),
        .I5(\tmp_13_reg_1053[0]_i_27_n_0 ),
        .O(\tmp_13_reg_1053[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \tmp_13_reg_1053[0]_i_19 
       (.I0(window_0_0_read_as_fu_148[29]),
        .I1(window_1_0_reg_412[29]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[29] ),
        .I5(window_1_0_read_as_fu_160[29]),
        .O(\tmp_13_reg_1053[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \tmp_13_reg_1053[0]_i_20 
       (.I0(window_0_0_read_as_fu_148[28]),
        .I1(window_1_0_reg_412[28]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[28] ),
        .I5(window_1_0_read_as_fu_160[28]),
        .O(\tmp_13_reg_1053[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \tmp_13_reg_1053[0]_i_21 
       (.I0(window_0_0_read_as_fu_148[27]),
        .I1(window_1_0_reg_412[27]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[27] ),
        .I5(window_1_0_read_as_fu_160[27]),
        .O(\tmp_13_reg_1053[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hE21D1DE21DE2E21D)) 
    \tmp_13_reg_1053[0]_i_22 
       (.I0(\window_1_1_reg_401_reg_n_0_[31] ),
        .I1(\tmp_13_reg_1053[0]_i_29_n_0 ),
        .I2(window_1_0_reg_412[31]),
        .I3(window_0_0_read_as_fu_148[31]),
        .I4(window_0_0_fu_152[31]),
        .I5(window_1_0_read_as_fu_160[31]),
        .O(\tmp_13_reg_1053[0]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h4575)) 
    \tmp_13_reg_1053[0]_i_23 
       (.I0(window_1_0_reg_412[30]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[30] ),
        .O(\tmp_13_reg_1053[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFAAEAAA8A0080)) 
    \tmp_13_reg_1053[0]_i_24 
       (.I0(window_1_0_read_as_fu_160[29]),
        .I1(\window_1_1_reg_401_reg_n_0_[29] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I4(window_1_0_reg_412[29]),
        .I5(window_0_0_read_as_fu_148[29]),
        .O(\tmp_13_reg_1053[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \tmp_13_reg_1053[0]_i_25 
       (.I0(window_0_0_read_as_fu_148[26]),
        .I1(window_1_0_reg_412[26]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[26] ),
        .I5(window_1_0_read_as_fu_160[26]),
        .O(\tmp_13_reg_1053[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \tmp_13_reg_1053[0]_i_26 
       (.I0(window_0_0_read_as_fu_148[25]),
        .I1(window_1_0_reg_412[25]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[25] ),
        .I5(window_1_0_read_as_fu_160[25]),
        .O(\tmp_13_reg_1053[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \tmp_13_reg_1053[0]_i_27 
       (.I0(window_0_0_read_as_fu_148[24]),
        .I1(window_1_0_reg_412[24]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[24] ),
        .I5(window_1_0_read_as_fu_160[24]),
        .O(\tmp_13_reg_1053[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h65666A669A999599)) 
    \tmp_13_reg_1053[0]_i_28 
       (.I0(window_0_0_read_as_fu_148[23]),
        .I1(window_1_0_reg_412[23]),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\window_1_1_reg_401_reg_n_0_[23] ),
        .I5(window_1_0_read_as_fu_160[23]),
        .O(\tmp_13_reg_1053[0]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \tmp_13_reg_1053[0]_i_29 
       (.I0(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp3_iter2),
        .O(\tmp_13_reg_1053[0]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hE8FF00E8)) 
    \tmp_13_reg_1053[0]_i_4 
       (.I0(window_1_0_phi_fu_415_p4[28]),
        .I1(window_1_0_read_as_fu_160[28]),
        .I2(window_0_0_read_as_fu_148[28]),
        .I3(\tmp_13_reg_1053[0]_i_19_n_0 ),
        .I4(window_0_0_fu_152[29]),
        .O(\tmp_13_reg_1053[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hE800FFE8)) 
    \tmp_13_reg_1053[0]_i_5 
       (.I0(window_1_0_read_as_fu_160[27]),
        .I1(window_1_0_phi_fu_415_p4[27]),
        .I2(window_0_0_read_as_fu_148[27]),
        .I3(window_0_0_fu_152[28]),
        .I4(\tmp_13_reg_1053[0]_i_20_n_0 ),
        .O(\tmp_13_reg_1053[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hE8FF00E8)) 
    \tmp_13_reg_1053[0]_i_6 
       (.I0(window_1_0_phi_fu_415_p4[26]),
        .I1(window_1_0_read_as_fu_160[26]),
        .I2(window_0_0_read_as_fu_148[26]),
        .I3(\tmp_13_reg_1053[0]_i_21_n_0 ),
        .I4(window_0_0_fu_152[27]),
        .O(\tmp_13_reg_1053[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6A56A96AA96A95A9)) 
    \tmp_13_reg_1053[0]_i_7 
       (.I0(\tmp_13_reg_1053[0]_i_22_n_0 ),
        .I1(window_0_0_fu_152[30]),
        .I2(window_0_0_read_as_fu_148[30]),
        .I3(\tmp_13_reg_1053[0]_i_23_n_0 ),
        .I4(window_1_0_read_as_fu_160[30]),
        .I5(\tmp_13_reg_1053[0]_i_24_n_0 ),
        .O(\tmp_13_reg_1053[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \tmp_13_reg_1053[0]_i_8 
       (.I0(\tmp_13_reg_1053[0]_i_4_n_0 ),
        .I1(\tmp_13_reg_1053[0]_i_24_n_0 ),
        .I2(window_0_0_fu_152[30]),
        .I3(window_0_0_read_as_fu_148[30]),
        .I4(\tmp_13_reg_1053[0]_i_23_n_0 ),
        .I5(window_1_0_read_as_fu_160[30]),
        .O(\tmp_13_reg_1053[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \tmp_13_reg_1053[0]_i_9 
       (.I0(\tmp_13_reg_1053[0]_i_5_n_0 ),
        .I1(window_1_0_phi_fu_415_p4[28]),
        .I2(window_1_0_read_as_fu_160[28]),
        .I3(window_0_0_read_as_fu_148[28]),
        .I4(window_0_0_fu_152[29]),
        .I5(\tmp_13_reg_1053[0]_i_19_n_0 ),
        .O(\tmp_13_reg_1053[0]_i_9_n_0 ));
  FDRE \tmp_13_reg_1053_reg[0] 
       (.C(ap_clk),
        .CE(result_reg_10580),
        .D(p_0_in),
        .Q(tmp_13_reg_1053),
        .R(1'b0));
  CARRY4 \tmp_13_reg_1053_reg[0]_i_2 
       (.CI(\tmp_13_reg_1053_reg[0]_i_3_n_0 ),
        .CO({\NLW_tmp_13_reg_1053_reg[0]_i_2_CO_UNCONNECTED [3],\tmp_13_reg_1053_reg[0]_i_2_n_1 ,\tmp_13_reg_1053_reg[0]_i_2_n_2 ,\tmp_13_reg_1053_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\tmp_13_reg_1053[0]_i_4_n_0 ,\tmp_13_reg_1053[0]_i_5_n_0 ,\tmp_13_reg_1053[0]_i_6_n_0 }),
        .O({p_0_in,\NLW_tmp_13_reg_1053_reg[0]_i_2_O_UNCONNECTED [2:0]}),
        .S({\tmp_13_reg_1053[0]_i_7_n_0 ,\tmp_13_reg_1053[0]_i_8_n_0 ,\tmp_13_reg_1053[0]_i_9_n_0 ,\tmp_13_reg_1053[0]_i_10_n_0 }));
  CARRY4 \tmp_13_reg_1053_reg[0]_i_3 
       (.CI(\result_reg_1058_reg[19]_i_3_n_0 ),
        .CO({\tmp_13_reg_1053_reg[0]_i_3_n_0 ,\tmp_13_reg_1053_reg[0]_i_3_n_1 ,\tmp_13_reg_1053_reg[0]_i_3_n_2 ,\tmp_13_reg_1053_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\tmp_13_reg_1053[0]_i_11_n_0 ,\tmp_13_reg_1053[0]_i_12_n_0 ,\tmp_13_reg_1053[0]_i_13_n_0 ,\tmp_13_reg_1053[0]_i_14_n_0 }),
        .O(\NLW_tmp_13_reg_1053_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({\tmp_13_reg_1053[0]_i_15_n_0 ,\tmp_13_reg_1053[0]_i_16_n_0 ,\tmp_13_reg_1053[0]_i_17_n_0 ,\tmp_13_reg_1053[0]_i_18_n_0 }));
  LUT6 #(
    .INIT(64'h1EEEFFFFD2220000)) 
    \tmp_3_mid2_v_reg_912[0]_i_1 
       (.I0(y3_reg_322[0]),
        .I1(\tmp_3_mid2_v_reg_912[1]_i_2_n_0 ),
        .I2(x4_reg_357[1]),
        .I3(x4_reg_357[0]),
        .I4(indvar_flatten_reg_3110),
        .I5(tmp_3_mid2_v_reg_912[0]),
        .O(\tmp_3_mid2_v_reg_912[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1EEEFFFFD2220000)) 
    \tmp_3_mid2_v_reg_912[1]_i_1 
       (.I0(y3_reg_322[1]),
        .I1(\tmp_3_mid2_v_reg_912[1]_i_2_n_0 ),
        .I2(\tmp_3_mid2_v_reg_912[1]_i_3_n_0 ),
        .I3(y3_phi_fu_326_p4),
        .I4(indvar_flatten_reg_3110),
        .I5(tmp_3_mid2_v_reg_912[1]),
        .O(\tmp_3_mid2_v_reg_912[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \tmp_3_mid2_v_reg_912[1]_i_2 
       (.I0(exitcond_flatten_reg_903),
        .I1(ap_enable_reg_pp2_iter1),
        .I2(ap_CS_fsm_pp2_stage0),
        .O(\tmp_3_mid2_v_reg_912[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_3_mid2_v_reg_912[1]_i_3 
       (.I0(x4_reg_357[0]),
        .I1(x4_reg_357[1]),
        .O(\tmp_3_mid2_v_reg_912[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \tmp_3_mid2_v_reg_912[1]_i_4 
       (.I0(tmp_3_mid2_v_reg_912[0]),
        .I1(exitcond_flatten_reg_903),
        .I2(ap_enable_reg_pp2_iter1),
        .I3(ap_CS_fsm_pp2_stage0),
        .I4(y3_reg_322[0]),
        .O(y3_phi_fu_326_p4));
  FDRE \tmp_3_mid2_v_reg_912_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_3_mid2_v_reg_912[0]_i_1_n_0 ),
        .Q(tmp_3_mid2_v_reg_912[0]),
        .R(1'b0));
  FDRE \tmp_3_mid2_v_reg_912_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_3_mid2_v_reg_912[1]_i_1_n_0 ),
        .Q(tmp_3_mid2_v_reg_912[1]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_7_reg_1038[0]_i_11 
       (.I0(readCount_1_fu_168_reg[13]),
        .O(\tmp_7_reg_1038[0]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_7_reg_1038[0]_i_12 
       (.I0(readCount_1_fu_168_reg[18]),
        .I1(readCount_1_fu_168_reg[19]),
        .O(\tmp_7_reg_1038[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_7_reg_1038[0]_i_13 
       (.I0(readCount_1_fu_168_reg[16]),
        .I1(readCount_1_fu_168_reg[17]),
        .O(\tmp_7_reg_1038[0]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_7_reg_1038[0]_i_14 
       (.I0(readCount_1_fu_168_reg[14]),
        .I1(readCount_1_fu_168_reg[15]),
        .O(\tmp_7_reg_1038[0]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tmp_7_reg_1038[0]_i_15 
       (.I0(readCount_1_fu_168_reg[13]),
        .I1(readCount_1_fu_168_reg[12]),
        .O(\tmp_7_reg_1038[0]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_7_reg_1038[0]_i_16 
       (.I0(readCount_1_fu_168_reg[9]),
        .I1(readCount_1_fu_168_reg[8]),
        .O(\tmp_7_reg_1038[0]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_7_reg_1038[0]_i_17 
       (.I0(readCount_1_fu_168_reg[5]),
        .I1(readCount_1_fu_168_reg[4]),
        .O(\tmp_7_reg_1038[0]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_7_reg_1038[0]_i_18 
       (.I0(readCount_1_fu_168_reg[10]),
        .I1(readCount_1_fu_168_reg[11]),
        .O(\tmp_7_reg_1038[0]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tmp_7_reg_1038[0]_i_19 
       (.I0(readCount_1_fu_168_reg[8]),
        .I1(readCount_1_fu_168_reg[9]),
        .O(\tmp_7_reg_1038[0]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_7_reg_1038[0]_i_20 
       (.I0(readCount_1_fu_168_reg[6]),
        .I1(readCount_1_fu_168_reg[7]),
        .O(\tmp_7_reg_1038[0]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tmp_7_reg_1038[0]_i_21 
       (.I0(readCount_1_fu_168_reg[4]),
        .I1(readCount_1_fu_168_reg[5]),
        .O(\tmp_7_reg_1038[0]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_7_reg_1038[0]_i_3 
       (.I0(readCount_1_fu_168_reg[30]),
        .I1(readCount_1_fu_168_reg[31]),
        .O(\tmp_7_reg_1038[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_7_reg_1038[0]_i_4 
       (.I0(readCount_1_fu_168_reg[28]),
        .I1(readCount_1_fu_168_reg[29]),
        .O(\tmp_7_reg_1038[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_7_reg_1038[0]_i_6 
       (.I0(readCount_1_fu_168_reg[26]),
        .I1(readCount_1_fu_168_reg[27]),
        .O(\tmp_7_reg_1038[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_7_reg_1038[0]_i_7 
       (.I0(readCount_1_fu_168_reg[24]),
        .I1(readCount_1_fu_168_reg[25]),
        .O(\tmp_7_reg_1038[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_7_reg_1038[0]_i_8 
       (.I0(readCount_1_fu_168_reg[22]),
        .I1(readCount_1_fu_168_reg[23]),
        .O(\tmp_7_reg_1038[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_7_reg_1038[0]_i_9 
       (.I0(readCount_1_fu_168_reg[20]),
        .I1(readCount_1_fu_168_reg[21]),
        .O(\tmp_7_reg_1038[0]_i_9_n_0 ));
  FDRE \tmp_7_reg_1038_reg[0] 
       (.C(ap_clk),
        .CE(lineBuffer_0_addr_2_reg_10260),
        .D(tmp_7_fu_667_p2),
        .Q(tmp_7_reg_1038),
        .R(1'b0));
  CARRY4 \tmp_7_reg_1038_reg[0]_i_1 
       (.CI(\tmp_7_reg_1038_reg[0]_i_2_n_0 ),
        .CO({\NLW_tmp_7_reg_1038_reg[0]_i_1_CO_UNCONNECTED [3:2],tmp_7_fu_667_p2,\tmp_7_reg_1038_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,readCount_1_fu_168_reg[31],1'b0}),
        .O(\NLW_tmp_7_reg_1038_reg[0]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\tmp_7_reg_1038[0]_i_3_n_0 ,\tmp_7_reg_1038[0]_i_4_n_0 }));
  CARRY4 \tmp_7_reg_1038_reg[0]_i_10 
       (.CI(1'b0),
        .CO({\tmp_7_reg_1038_reg[0]_i_10_n_0 ,\tmp_7_reg_1038_reg[0]_i_10_n_1 ,\tmp_7_reg_1038_reg[0]_i_10_n_2 ,\tmp_7_reg_1038_reg[0]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\tmp_7_reg_1038[0]_i_16_n_0 ,1'b0,\tmp_7_reg_1038[0]_i_17_n_0 }),
        .O(\NLW_tmp_7_reg_1038_reg[0]_i_10_O_UNCONNECTED [3:0]),
        .S({\tmp_7_reg_1038[0]_i_18_n_0 ,\tmp_7_reg_1038[0]_i_19_n_0 ,\tmp_7_reg_1038[0]_i_20_n_0 ,\tmp_7_reg_1038[0]_i_21_n_0 }));
  CARRY4 \tmp_7_reg_1038_reg[0]_i_2 
       (.CI(\tmp_7_reg_1038_reg[0]_i_5_n_0 ),
        .CO({\tmp_7_reg_1038_reg[0]_i_2_n_0 ,\tmp_7_reg_1038_reg[0]_i_2_n_1 ,\tmp_7_reg_1038_reg[0]_i_2_n_2 ,\tmp_7_reg_1038_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_tmp_7_reg_1038_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({\tmp_7_reg_1038[0]_i_6_n_0 ,\tmp_7_reg_1038[0]_i_7_n_0 ,\tmp_7_reg_1038[0]_i_8_n_0 ,\tmp_7_reg_1038[0]_i_9_n_0 }));
  CARRY4 \tmp_7_reg_1038_reg[0]_i_5 
       (.CI(\tmp_7_reg_1038_reg[0]_i_10_n_0 ),
        .CO({\tmp_7_reg_1038_reg[0]_i_5_n_0 ,\tmp_7_reg_1038_reg[0]_i_5_n_1 ,\tmp_7_reg_1038_reg[0]_i_5_n_2 ,\tmp_7_reg_1038_reg[0]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\tmp_7_reg_1038[0]_i_11_n_0 }),
        .O(\NLW_tmp_7_reg_1038_reg[0]_i_5_O_UNCONNECTED [3:0]),
        .S({\tmp_7_reg_1038[0]_i_12_n_0 ,\tmp_7_reg_1038[0]_i_13_n_0 ,\tmp_7_reg_1038[0]_i_14_n_0 ,\tmp_7_reg_1038[0]_i_15_n_0 }));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_9_reg_1003[0]_i_1 
       (.I0(ctrl_read_reg_880),
        .I1(ap_CS_fsm_state10),
        .I2(tmp_9_reg_1003),
        .O(\tmp_9_reg_1003[0]_i_1_n_0 ));
  FDRE \tmp_9_reg_1003_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_9_reg_1003[0]_i_1_n_0 ),
        .Q(tmp_9_reg_1003),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h02)) 
    \tmp_reg_1022[0]_i_1 
       (.I0(ap_CS_fsm_pp3_stage0),
        .I1(lineBuffer_1_U_n_65),
        .I2(\x_assign_reg_390[6]_i_4_n_0 ),
        .O(lineBuffer_0_addr_2_reg_10260));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg_1022[0]_i_2 
       (.I0(\tmp_reg_1022[0]_i_3_n_0 ),
        .I1(x_assign_reg_390[0]),
        .O(\tmp_reg_1022[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55556555AAAA6AAA)) 
    \tmp_reg_1022[0]_i_3 
       (.I0(lineBuffer_1_U_n_70),
        .I1(y_assign_cast7_mid2_s_reg_1017_reg),
        .I2(ap_CS_fsm_pp3_stage0),
        .I3(ap_enable_reg_pp3_iter1_reg_n_0),
        .I4(\exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I5(\y_assign_reg_379_reg_n_0_[0] ),
        .O(\tmp_reg_1022[0]_i_3_n_0 ));
  FDRE \tmp_reg_1022_reg[0] 
       (.C(ap_clk),
        .CE(lineBuffer_0_addr_2_reg_10260),
        .D(\tmp_reg_1022[0]_i_2_n_0 ),
        .Q(tmp_reg_1022),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[0] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[0]),
        .Q(windowRightCol_1_reg_1063[0]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[10] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[10]),
        .Q(windowRightCol_1_reg_1063[10]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[11] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[11]),
        .Q(windowRightCol_1_reg_1063[11]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[12] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[12]),
        .Q(windowRightCol_1_reg_1063[12]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[13] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[13]),
        .Q(windowRightCol_1_reg_1063[13]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[14] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[14]),
        .Q(windowRightCol_1_reg_1063[14]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[15] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[15]),
        .Q(windowRightCol_1_reg_1063[15]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[16] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[16]),
        .Q(windowRightCol_1_reg_1063[16]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[17] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[17]),
        .Q(windowRightCol_1_reg_1063[17]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[18] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[18]),
        .Q(windowRightCol_1_reg_1063[18]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[19] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[19]),
        .Q(windowRightCol_1_reg_1063[19]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[1] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[1]),
        .Q(windowRightCol_1_reg_1063[1]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[20] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[20]),
        .Q(windowRightCol_1_reg_1063[20]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[21] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[21]),
        .Q(windowRightCol_1_reg_1063[21]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[22] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[22]),
        .Q(windowRightCol_1_reg_1063[22]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[23] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[23]),
        .Q(windowRightCol_1_reg_1063[23]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[24] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[24]),
        .Q(windowRightCol_1_reg_1063[24]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[25] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[25]),
        .Q(windowRightCol_1_reg_1063[25]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[26] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[26]),
        .Q(windowRightCol_1_reg_1063[26]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[27] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[27]),
        .Q(windowRightCol_1_reg_1063[27]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[28] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[28]),
        .Q(windowRightCol_1_reg_1063[28]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[29] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[29]),
        .Q(windowRightCol_1_reg_1063[29]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[2] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[2]),
        .Q(windowRightCol_1_reg_1063[2]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[30] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[30]),
        .Q(windowRightCol_1_reg_1063[30]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[31] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[31]),
        .Q(windowRightCol_1_reg_1063[31]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[3] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[3]),
        .Q(windowRightCol_1_reg_1063[3]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[4] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[4]),
        .Q(windowRightCol_1_reg_1063[4]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[5] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[5]),
        .Q(windowRightCol_1_reg_1063[5]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[6] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[6]),
        .Q(windowRightCol_1_reg_1063[6]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[7] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[7]),
        .Q(windowRightCol_1_reg_1063[7]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[8] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[8]),
        .Q(windowRightCol_1_reg_1063[8]),
        .R(1'b0));
  FDRE \windowRightCol_1_reg_1063_reg[9] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_1_q0[9]),
        .Q(windowRightCol_1_reg_1063[9]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[0] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[0]),
        .Q(window_0_0_fu_152[0]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[10] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[10]),
        .Q(window_0_0_fu_152[10]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[11] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[11]),
        .Q(window_0_0_fu_152[11]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[12] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[12]),
        .Q(window_0_0_fu_152[12]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[13] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[13]),
        .Q(window_0_0_fu_152[13]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[14] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[14]),
        .Q(window_0_0_fu_152[14]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[15] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[15]),
        .Q(window_0_0_fu_152[15]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[16] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[16]),
        .Q(window_0_0_fu_152[16]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[17] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[17]),
        .Q(window_0_0_fu_152[17]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[18] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[18]),
        .Q(window_0_0_fu_152[18]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[19] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[19]),
        .Q(window_0_0_fu_152[19]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[1] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[1]),
        .Q(window_0_0_fu_152[1]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[20] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[20]),
        .Q(window_0_0_fu_152[20]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[21] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[21]),
        .Q(window_0_0_fu_152[21]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[22] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[22]),
        .Q(window_0_0_fu_152[22]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[23] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[23]),
        .Q(window_0_0_fu_152[23]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[24] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[24]),
        .Q(window_0_0_fu_152[24]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[25] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[25]),
        .Q(window_0_0_fu_152[25]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[26] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[26]),
        .Q(window_0_0_fu_152[26]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[27] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[27]),
        .Q(window_0_0_fu_152[27]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[28] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[28]),
        .Q(window_0_0_fu_152[28]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[29] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[29]),
        .Q(window_0_0_fu_152[29]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[2] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[2]),
        .Q(window_0_0_fu_152[2]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[30] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[30]),
        .Q(window_0_0_fu_152[30]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[31] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[31]),
        .Q(window_0_0_fu_152[31]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[3] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[3]),
        .Q(window_0_0_fu_152[3]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[4] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[4]),
        .Q(window_0_0_fu_152[4]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[5] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[5]),
        .Q(window_0_0_fu_152[5]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[6] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[6]),
        .Q(window_0_0_fu_152[6]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[7] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[7]),
        .Q(window_0_0_fu_152[7]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[8] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[8]),
        .Q(window_0_0_fu_152[8]),
        .R(1'b0));
  FDRE \window_0_0_fu_152_reg[9] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_1_fu_156[9]),
        .Q(window_0_0_fu_152[9]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[0] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[0]),
        .Q(window_0_0_read_as_fu_148[0]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[10] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[10]),
        .Q(window_0_0_read_as_fu_148[10]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[11] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[11]),
        .Q(window_0_0_read_as_fu_148[11]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[12] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[12]),
        .Q(window_0_0_read_as_fu_148[12]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[13] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[13]),
        .Q(window_0_0_read_as_fu_148[13]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[14] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[14]),
        .Q(window_0_0_read_as_fu_148[14]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[15] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[15]),
        .Q(window_0_0_read_as_fu_148[15]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[16] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[16]),
        .Q(window_0_0_read_as_fu_148[16]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[17] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[17]),
        .Q(window_0_0_read_as_fu_148[17]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[18] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[18]),
        .Q(window_0_0_read_as_fu_148[18]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[19] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[19]),
        .Q(window_0_0_read_as_fu_148[19]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[1] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[1]),
        .Q(window_0_0_read_as_fu_148[1]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[20] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[20]),
        .Q(window_0_0_read_as_fu_148[20]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[21] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[21]),
        .Q(window_0_0_read_as_fu_148[21]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[22] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[22]),
        .Q(window_0_0_read_as_fu_148[22]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[23] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[23]),
        .Q(window_0_0_read_as_fu_148[23]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[24] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[24]),
        .Q(window_0_0_read_as_fu_148[24]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[25] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[25]),
        .Q(window_0_0_read_as_fu_148[25]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[26] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[26]),
        .Q(window_0_0_read_as_fu_148[26]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[27] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[27]),
        .Q(window_0_0_read_as_fu_148[27]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[28] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[28]),
        .Q(window_0_0_read_as_fu_148[28]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[29] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[29]),
        .Q(window_0_0_read_as_fu_148[29]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[2] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[2]),
        .Q(window_0_0_read_as_fu_148[2]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[30] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[30]),
        .Q(window_0_0_read_as_fu_148[30]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[31] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[31]),
        .Q(window_0_0_read_as_fu_148[31]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[3] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[3]),
        .Q(window_0_0_read_as_fu_148[3]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[4] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[4]),
        .Q(window_0_0_read_as_fu_148[4]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[5] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[5]),
        .Q(window_0_0_read_as_fu_148[5]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[6] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[6]),
        .Q(window_0_0_read_as_fu_148[6]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[7] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[7]),
        .Q(window_0_0_read_as_fu_148[7]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[8] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[8]),
        .Q(window_0_0_read_as_fu_148[8]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_148_reg[9] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_0_0_fu_152[9]),
        .Q(window_0_0_read_as_fu_148[9]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[0] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[0]),
        .Q(window_0_1_fu_156[0]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[10] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[10]),
        .Q(window_0_1_fu_156[10]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[11] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[11]),
        .Q(window_0_1_fu_156[11]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[12] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[12]),
        .Q(window_0_1_fu_156[12]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[13] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[13]),
        .Q(window_0_1_fu_156[13]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[14] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[14]),
        .Q(window_0_1_fu_156[14]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[15] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[15]),
        .Q(window_0_1_fu_156[15]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[16] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[16]),
        .Q(window_0_1_fu_156[16]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[17] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[17]),
        .Q(window_0_1_fu_156[17]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[18] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[18]),
        .Q(window_0_1_fu_156[18]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[19] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[19]),
        .Q(window_0_1_fu_156[19]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[1] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[1]),
        .Q(window_0_1_fu_156[1]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[20] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[20]),
        .Q(window_0_1_fu_156[20]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[21] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[21]),
        .Q(window_0_1_fu_156[21]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[22] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[22]),
        .Q(window_0_1_fu_156[22]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[23] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[23]),
        .Q(window_0_1_fu_156[23]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[24] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[24]),
        .Q(window_0_1_fu_156[24]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[25] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[25]),
        .Q(window_0_1_fu_156[25]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[26] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[26]),
        .Q(window_0_1_fu_156[26]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[27] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[27]),
        .Q(window_0_1_fu_156[27]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[28] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[28]),
        .Q(window_0_1_fu_156[28]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[29] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[29]),
        .Q(window_0_1_fu_156[29]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[2] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[2]),
        .Q(window_0_1_fu_156[2]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[30] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[30]),
        .Q(window_0_1_fu_156[30]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[31] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[31]),
        .Q(window_0_1_fu_156[31]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[3] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[3]),
        .Q(window_0_1_fu_156[3]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[4] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[4]),
        .Q(window_0_1_fu_156[4]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[5] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[5]),
        .Q(window_0_1_fu_156[5]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[6] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[6]),
        .Q(window_0_1_fu_156[6]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[7] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[7]),
        .Q(window_0_1_fu_156[7]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[8] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[8]),
        .Q(window_0_1_fu_156[8]),
        .R(1'b0));
  FDRE \window_0_1_fu_156_reg[9] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we1),
        .D(lineBuffer_0_q0[9]),
        .Q(window_0_1_fu_156[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[0]_i_1 
       (.I0(window_1_0_reg_412[0]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[0] ),
        .O(window_1_0_phi_fu_415_p4[0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[10]_i_1 
       (.I0(window_1_0_reg_412[10]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[10] ),
        .O(window_1_0_phi_fu_415_p4[10]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[11]_i_1 
       (.I0(window_1_0_reg_412[11]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[11] ),
        .O(window_1_0_phi_fu_415_p4[11]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[12]_i_1 
       (.I0(window_1_0_reg_412[12]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[12] ),
        .O(window_1_0_phi_fu_415_p4[12]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[13]_i_1 
       (.I0(window_1_0_reg_412[13]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[13] ),
        .O(window_1_0_phi_fu_415_p4[13]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[14]_i_1 
       (.I0(window_1_0_reg_412[14]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[14] ),
        .O(window_1_0_phi_fu_415_p4[14]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[15]_i_1 
       (.I0(window_1_0_reg_412[15]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[15] ),
        .O(window_1_0_phi_fu_415_p4[15]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[16]_i_1 
       (.I0(window_1_0_reg_412[16]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[16] ),
        .O(window_1_0_phi_fu_415_p4[16]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[17]_i_1 
       (.I0(window_1_0_reg_412[17]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[17] ),
        .O(window_1_0_phi_fu_415_p4[17]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[18]_i_1 
       (.I0(window_1_0_reg_412[18]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[18] ),
        .O(window_1_0_phi_fu_415_p4[18]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[19]_i_1 
       (.I0(window_1_0_reg_412[19]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[19] ),
        .O(window_1_0_phi_fu_415_p4[19]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[1]_i_1 
       (.I0(window_1_0_reg_412[1]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[1] ),
        .O(window_1_0_phi_fu_415_p4[1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[20]_i_1 
       (.I0(window_1_0_reg_412[20]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[20] ),
        .O(window_1_0_phi_fu_415_p4[20]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[21]_i_1 
       (.I0(window_1_0_reg_412[21]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[21] ),
        .O(window_1_0_phi_fu_415_p4[21]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[22]_i_1 
       (.I0(window_1_0_reg_412[22]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[22] ),
        .O(window_1_0_phi_fu_415_p4[22]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[23]_i_1 
       (.I0(window_1_0_reg_412[23]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[23] ),
        .O(window_1_0_phi_fu_415_p4[23]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[24]_i_1 
       (.I0(window_1_0_reg_412[24]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[24] ),
        .O(window_1_0_phi_fu_415_p4[24]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[25]_i_1 
       (.I0(window_1_0_reg_412[25]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[25] ),
        .O(window_1_0_phi_fu_415_p4[25]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[26]_i_1 
       (.I0(window_1_0_reg_412[26]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[26] ),
        .O(window_1_0_phi_fu_415_p4[26]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[27]_i_1 
       (.I0(window_1_0_reg_412[27]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[27] ),
        .O(window_1_0_phi_fu_415_p4[27]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[28]_i_1 
       (.I0(window_1_0_reg_412[28]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[28] ),
        .O(window_1_0_phi_fu_415_p4[28]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[29]_i_1 
       (.I0(window_1_0_reg_412[29]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[29] ),
        .O(window_1_0_phi_fu_415_p4[29]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[2]_i_1 
       (.I0(window_1_0_reg_412[2]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[2] ),
        .O(window_1_0_phi_fu_415_p4[2]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_160[30]_i_1 
       (.I0(\window_1_1_reg_401_reg_n_0_[30] ),
        .I1(ap_enable_reg_pp3_iter2),
        .I2(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I3(window_1_0_reg_412[30]),
        .O(window_1_0_phi_fu_415_p4[30]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[31]_i_1 
       (.I0(window_1_0_reg_412[31]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[31] ),
        .O(window_1_0_phi_fu_415_p4[31]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[3]_i_1 
       (.I0(window_1_0_reg_412[3]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[3] ),
        .O(window_1_0_phi_fu_415_p4[3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[4]_i_1 
       (.I0(window_1_0_reg_412[4]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[4] ),
        .O(window_1_0_phi_fu_415_p4[4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[5]_i_1 
       (.I0(window_1_0_reg_412[5]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[5] ),
        .O(window_1_0_phi_fu_415_p4[5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[6]_i_1 
       (.I0(window_1_0_reg_412[6]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[6] ),
        .O(window_1_0_phi_fu_415_p4[6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[7]_i_1 
       (.I0(window_1_0_reg_412[7]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[7] ),
        .O(window_1_0_phi_fu_415_p4[7]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[8]_i_1 
       (.I0(window_1_0_reg_412[8]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[8] ),
        .O(window_1_0_phi_fu_415_p4[8]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_160[9]_i_1 
       (.I0(window_1_0_reg_412[9]),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter2),
        .I3(\window_1_1_reg_401_reg_n_0_[9] ),
        .O(window_1_0_phi_fu_415_p4[9]));
  FDRE \window_1_0_read_as_fu_160_reg[0] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[0]),
        .Q(window_1_0_read_as_fu_160[0]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[10] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[10]),
        .Q(window_1_0_read_as_fu_160[10]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[11] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[11]),
        .Q(window_1_0_read_as_fu_160[11]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[12] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[12]),
        .Q(window_1_0_read_as_fu_160[12]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[13] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[13]),
        .Q(window_1_0_read_as_fu_160[13]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[14] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[14]),
        .Q(window_1_0_read_as_fu_160[14]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[15] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[15]),
        .Q(window_1_0_read_as_fu_160[15]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[16] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[16]),
        .Q(window_1_0_read_as_fu_160[16]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[17] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[17]),
        .Q(window_1_0_read_as_fu_160[17]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[18] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[18]),
        .Q(window_1_0_read_as_fu_160[18]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[19] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[19]),
        .Q(window_1_0_read_as_fu_160[19]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[1] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[1]),
        .Q(window_1_0_read_as_fu_160[1]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[20] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[20]),
        .Q(window_1_0_read_as_fu_160[20]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[21] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[21]),
        .Q(window_1_0_read_as_fu_160[21]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[22] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[22]),
        .Q(window_1_0_read_as_fu_160[22]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[23] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[23]),
        .Q(window_1_0_read_as_fu_160[23]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[24] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[24]),
        .Q(window_1_0_read_as_fu_160[24]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[25] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[25]),
        .Q(window_1_0_read_as_fu_160[25]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[26] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[26]),
        .Q(window_1_0_read_as_fu_160[26]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[27] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[27]),
        .Q(window_1_0_read_as_fu_160[27]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[28] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[28]),
        .Q(window_1_0_read_as_fu_160[28]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[29] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[29]),
        .Q(window_1_0_read_as_fu_160[29]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[2] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[2]),
        .Q(window_1_0_read_as_fu_160[2]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[30] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[30]),
        .Q(window_1_0_read_as_fu_160[30]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[31] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[31]),
        .Q(window_1_0_read_as_fu_160[31]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[3] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[3]),
        .Q(window_1_0_read_as_fu_160[3]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[4] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[4]),
        .Q(window_1_0_read_as_fu_160[4]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[5] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[5]),
        .Q(window_1_0_read_as_fu_160[5]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[6] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[6]),
        .Q(window_1_0_read_as_fu_160[6]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[7] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[7]),
        .Q(window_1_0_read_as_fu_160[7]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[8] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[8]),
        .Q(window_1_0_read_as_fu_160[8]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_160_reg[9] 
       (.C(ap_clk),
        .CE(p_81_in),
        .D(window_1_0_phi_fu_415_p4[9]),
        .Q(window_1_0_read_as_fu_160[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[0]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[0] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[0] ),
        .O(\window_1_0_reg_412[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[10]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[10] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[10] ),
        .O(\window_1_0_reg_412[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[11]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[11] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[11] ),
        .O(\window_1_0_reg_412[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[12]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[12] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[12] ),
        .O(\window_1_0_reg_412[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[13]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[13] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[13] ),
        .O(\window_1_0_reg_412[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[14]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[14] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[14] ),
        .O(\window_1_0_reg_412[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[15]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[15] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[15] ),
        .O(\window_1_0_reg_412[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[16]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[16] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[16] ),
        .O(\window_1_0_reg_412[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[17]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[17] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[17] ),
        .O(\window_1_0_reg_412[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[18]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[18] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[18] ),
        .O(\window_1_0_reg_412[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[19]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[19] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[19] ),
        .O(\window_1_0_reg_412[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[1]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[1] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[1] ),
        .O(\window_1_0_reg_412[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[20]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[20] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[20] ),
        .O(\window_1_0_reg_412[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[21]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[21] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[21] ),
        .O(\window_1_0_reg_412[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[22]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[22] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[22] ),
        .O(\window_1_0_reg_412[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[23]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[23] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[23] ),
        .O(\window_1_0_reg_412[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[24]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[24] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[24] ),
        .O(\window_1_0_reg_412[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[25]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[25] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[25] ),
        .O(\window_1_0_reg_412[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[26]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[26] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[26] ),
        .O(\window_1_0_reg_412[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[27]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[27] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[27] ),
        .O(\window_1_0_reg_412[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[28]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[28] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[28] ),
        .O(\window_1_0_reg_412[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[29]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[29] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[29] ),
        .O(\window_1_0_reg_412[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[2]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[2] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[2] ),
        .O(\window_1_0_reg_412[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[30]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[30] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[30] ),
        .O(\window_1_0_reg_412[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[31]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[31] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[31] ),
        .O(\window_1_0_reg_412[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[3]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[3] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[3] ),
        .O(\window_1_0_reg_412[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[4]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[4] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[4] ),
        .O(\window_1_0_reg_412[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[5]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[5] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[5] ),
        .O(\window_1_0_reg_412[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[6]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[6] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[6] ),
        .O(\window_1_0_reg_412[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[7]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[7] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[7] ),
        .O(\window_1_0_reg_412[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[8]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[8] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[8] ),
        .O(\window_1_0_reg_412[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_0_reg_412[9]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(\window_1_1_reg_401_reg_n_0_[9] ),
        .I4(\window_1_1_1_reg_345_reg_n_0_[9] ),
        .O(\window_1_0_reg_412[9]_i_1_n_0 ));
  FDRE \window_1_0_reg_412_reg[0] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[0]_i_1_n_0 ),
        .Q(window_1_0_reg_412[0]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[10] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[10]_i_1_n_0 ),
        .Q(window_1_0_reg_412[10]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[11] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[11]_i_1_n_0 ),
        .Q(window_1_0_reg_412[11]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[12] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[12]_i_1_n_0 ),
        .Q(window_1_0_reg_412[12]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[13] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[13]_i_1_n_0 ),
        .Q(window_1_0_reg_412[13]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[14] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[14]_i_1_n_0 ),
        .Q(window_1_0_reg_412[14]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[15] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[15]_i_1_n_0 ),
        .Q(window_1_0_reg_412[15]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[16] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[16]_i_1_n_0 ),
        .Q(window_1_0_reg_412[16]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[17] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[17]_i_1_n_0 ),
        .Q(window_1_0_reg_412[17]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[18] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[18]_i_1_n_0 ),
        .Q(window_1_0_reg_412[18]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[19] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[19]_i_1_n_0 ),
        .Q(window_1_0_reg_412[19]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[1] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[1]_i_1_n_0 ),
        .Q(window_1_0_reg_412[1]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[20] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[20]_i_1_n_0 ),
        .Q(window_1_0_reg_412[20]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[21] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[21]_i_1_n_0 ),
        .Q(window_1_0_reg_412[21]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[22] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[22]_i_1_n_0 ),
        .Q(window_1_0_reg_412[22]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[23] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[23]_i_1_n_0 ),
        .Q(window_1_0_reg_412[23]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[24] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[24]_i_1_n_0 ),
        .Q(window_1_0_reg_412[24]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[25] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[25]_i_1_n_0 ),
        .Q(window_1_0_reg_412[25]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[26] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[26]_i_1_n_0 ),
        .Q(window_1_0_reg_412[26]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[27] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[27]_i_1_n_0 ),
        .Q(window_1_0_reg_412[27]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[28] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[28]_i_1_n_0 ),
        .Q(window_1_0_reg_412[28]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[29] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[29]_i_1_n_0 ),
        .Q(window_1_0_reg_412[29]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[2] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[2]_i_1_n_0 ),
        .Q(window_1_0_reg_412[2]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[30] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[30]_i_1_n_0 ),
        .Q(window_1_0_reg_412[30]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[31] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[31]_i_1_n_0 ),
        .Q(window_1_0_reg_412[31]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[3] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[3]_i_1_n_0 ),
        .Q(window_1_0_reg_412[3]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[4] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[4]_i_1_n_0 ),
        .Q(window_1_0_reg_412[4]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[5] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[5]_i_1_n_0 ),
        .Q(window_1_0_reg_412[5]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[6] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[6]_i_1_n_0 ),
        .Q(window_1_0_reg_412[6]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[7] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[7]_i_1_n_0 ),
        .Q(window_1_0_reg_412[7]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[8] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[8]_i_1_n_0 ),
        .Q(window_1_0_reg_412[8]),
        .R(1'b0));
  FDRE \window_1_0_reg_412_reg[9] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_0_reg_412[9]_i_1_n_0 ),
        .Q(window_1_0_reg_412[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h20000000)) 
    \window_1_1_1_reg_345[31]_i_1 
       (.I0(\cond1_reg_938_reg_n_0_[0] ),
        .I1(exitcond_flatten_reg_903),
        .I2(ap_enable_reg_pp2_iter1),
        .I3(ap_CS_fsm_pp2_stage0),
        .I4(\cond_mid2_reg_922_reg_n_0_[0] ),
        .O(window_1_1_1_reg_345));
  FDRE \window_1_1_1_reg_345_reg[0] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[0]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[10] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[10]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[11] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[11]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[12] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[12]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[13] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[13]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[14] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[14]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[15] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[15]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[16] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[16]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[17] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[17]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[18] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[18]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[19] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[19]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[1] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[1]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[20] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[20]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[21] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[21]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[22] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[22]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[23] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[23]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[24] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[24]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[25] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[25]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[26] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[26]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[27] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[27]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[28] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[28]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[29] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[29]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[2] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[2]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[30] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[30]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[31] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[31]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[3] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[3]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[4] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[4]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[5] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[5]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[6] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[6]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[7] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[7]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[8] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[8]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_345_reg[9] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_345),
        .D(window_2_2_7_fu_556_p3[9]),
        .Q(\window_1_1_1_reg_345_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[0]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[0]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[0] ),
        .O(\window_1_1_reg_401[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[10]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[10]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[10] ),
        .O(\window_1_1_reg_401[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[11]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[11]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[11] ),
        .O(\window_1_1_reg_401[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[12]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[12]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[12] ),
        .O(\window_1_1_reg_401[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[13]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[13]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[13] ),
        .O(\window_1_1_reg_401[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[14]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[14]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[14] ),
        .O(\window_1_1_reg_401[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[15]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[15]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[15] ),
        .O(\window_1_1_reg_401[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[16]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[16]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[16] ),
        .O(\window_1_1_reg_401[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[17]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[17]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[17] ),
        .O(\window_1_1_reg_401[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[18]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[18]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[18] ),
        .O(\window_1_1_reg_401[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[19]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[19]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[19] ),
        .O(\window_1_1_reg_401[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[1]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[1]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[1] ),
        .O(\window_1_1_reg_401[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[20]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[20]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[20] ),
        .O(\window_1_1_reg_401[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[21]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[21]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[21] ),
        .O(\window_1_1_reg_401[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[22]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[22]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[22] ),
        .O(\window_1_1_reg_401[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[23]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[23]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[23] ),
        .O(\window_1_1_reg_401[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[24]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[24]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[24] ),
        .O(\window_1_1_reg_401[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[25]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[25]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[25] ),
        .O(\window_1_1_reg_401[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[26]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[26]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[26] ),
        .O(\window_1_1_reg_401[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[27]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[27]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[27] ),
        .O(\window_1_1_reg_401[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[28]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[28]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[28] ),
        .O(\window_1_1_reg_401[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[29]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[29]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[29] ),
        .O(\window_1_1_reg_401[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[2]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[2]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[2] ),
        .O(\window_1_1_reg_401[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[30]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[30]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[30] ),
        .O(\window_1_1_reg_401[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF02)) 
    \window_1_1_reg_401[31]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(ap_CS_fsm_state10),
        .O(window_1_1_reg_401));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[31]_i_2 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[31]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[31] ),
        .O(\window_1_1_reg_401[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[3]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[3]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[3] ),
        .O(\window_1_1_reg_401[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[4]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[4]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[4] ),
        .O(\window_1_1_reg_401[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[5]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[5]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[5] ),
        .O(\window_1_1_reg_401[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[6]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[6]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[6] ),
        .O(\window_1_1_reg_401[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[7]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[7]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[7] ),
        .O(\window_1_1_reg_401[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[8]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[8]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[8] ),
        .O(\window_1_1_reg_401[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \window_1_1_reg_401[9]_i_1 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(lineBuffer_1_U_n_65),
        .I3(windowRightCol_1_reg_1063[9]),
        .I4(\window_1_2_1_reg_333_reg_n_0_[9] ),
        .O(\window_1_1_reg_401[9]_i_1_n_0 ));
  FDRE \window_1_1_reg_401_reg[0] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[0]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[10] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[10]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[11] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[11]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[12] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[12]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[13] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[13]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[14] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[14]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[15] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[15]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[16] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[16]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[17] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[17]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[18] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[18]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[19] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[19]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[1] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[1]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[20] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[20]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[21] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[21]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[22] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[22]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[23] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[23]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[24] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[24]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[25] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[25]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[26] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[26]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[27] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[27]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[28] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[28]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[29] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[29]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[2] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[2]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[30] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[30]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[31] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[31]_i_2_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[3] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[3]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[4] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[4]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[5] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[5]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[6] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[6]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[7] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[7]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[8] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[8]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \window_1_1_reg_401_reg[9] 
       (.C(ap_clk),
        .CE(window_1_1_reg_401),
        .D(\window_1_1_reg_401[9]_i_1_n_0 ),
        .Q(\window_1_1_reg_401_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h10000000)) 
    \window_1_2_1_reg_333[31]_i_1 
       (.I0(\cond1_reg_938_reg_n_0_[0] ),
        .I1(exitcond_flatten_reg_903),
        .I2(ap_enable_reg_pp2_iter1),
        .I3(ap_CS_fsm_pp2_stage0),
        .I4(\cond_mid2_reg_922_reg_n_0_[0] ),
        .O(window_1_2_1_reg_333));
  FDRE \window_1_2_1_reg_333_reg[0] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[0]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[10] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[10]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[11] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[11]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[12] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[12]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[13] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[13]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[14] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[14]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[15] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[15]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[16] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[16]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[17] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[17]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[18] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[18]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[19] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[19]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[1] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[1]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[20] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[20]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[21] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[21]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[22] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[22]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[23] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[23]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[24] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[24]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[25] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[25]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[26] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[26]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[27] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[27]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[28] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[28]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[29] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[29]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[2] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[2]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[30] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[30]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[31] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[31]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[3] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[3]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[4] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[4]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[5] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[5]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[6] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[6]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[7] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[7]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[8] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[8]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_333_reg[9] 
       (.C(ap_clk),
        .CE(window_1_2_1_reg_333),
        .D(window_2_2_7_fu_556_p3[9]),
        .Q(\window_1_2_1_reg_333_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00002000)) 
    \window_2_2_2_fu_172[31]_i_1 
       (.I0(tmp_7_reg_1038),
        .I1(\exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter1_reg_n_0),
        .I3(ap_CS_fsm_pp3_stage0),
        .I4(lineBuffer_1_U_n_65),
        .O(inStream_V_data_V_0_sel2));
  FDRE \window_2_2_2_fu_172_reg[0] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[0]),
        .Q(window_2_2_2_fu_172[0]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[10] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[10]),
        .Q(window_2_2_2_fu_172[10]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[11] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[11]),
        .Q(window_2_2_2_fu_172[11]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[12] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[12]),
        .Q(window_2_2_2_fu_172[12]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[13] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[13]),
        .Q(window_2_2_2_fu_172[13]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[14] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[14]),
        .Q(window_2_2_2_fu_172[14]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[15] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[15]),
        .Q(window_2_2_2_fu_172[15]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[16] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[16]),
        .Q(window_2_2_2_fu_172[16]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[17] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[17]),
        .Q(window_2_2_2_fu_172[17]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[18] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[18]),
        .Q(window_2_2_2_fu_172[18]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[19] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[19]),
        .Q(window_2_2_2_fu_172[19]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[1] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[1]),
        .Q(window_2_2_2_fu_172[1]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[20] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[20]),
        .Q(window_2_2_2_fu_172[20]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[21] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[21]),
        .Q(window_2_2_2_fu_172[21]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[22] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[22]),
        .Q(window_2_2_2_fu_172[22]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[23] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[23]),
        .Q(window_2_2_2_fu_172[23]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[24] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[24]),
        .Q(window_2_2_2_fu_172[24]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[25] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[25]),
        .Q(window_2_2_2_fu_172[25]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[26] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[26]),
        .Q(window_2_2_2_fu_172[26]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[27] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[27]),
        .Q(window_2_2_2_fu_172[27]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[28] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[28]),
        .Q(window_2_2_2_fu_172[28]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[29] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[29]),
        .Q(window_2_2_2_fu_172[29]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[2] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[2]),
        .Q(window_2_2_2_fu_172[2]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[30] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[30]),
        .Q(window_2_2_2_fu_172[30]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[31] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[31]),
        .Q(window_2_2_2_fu_172[31]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[3] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[3]),
        .Q(window_2_2_2_fu_172[3]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[4] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[4]),
        .Q(window_2_2_2_fu_172[4]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[5] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[5]),
        .Q(window_2_2_2_fu_172[5]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[6] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[6]),
        .Q(window_2_2_2_fu_172[6]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[7] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[7]),
        .Q(window_2_2_2_fu_172[7]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[8] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[8]),
        .Q(window_2_2_2_fu_172[8]),
        .R(1'b0));
  FDRE \window_2_2_2_fu_172_reg[9] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_sel2),
        .D(inStream_V_data_V_0_data_out[9]),
        .Q(window_2_2_2_fu_172[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \writeCount_1_fu_164[0]_i_1 
       (.I0(ap_CS_fsm_state10),
        .I1(outStream_V_data_V_1_sel_wr052_out),
        .O(writeCount_1_fu_164));
  LUT3 #(
    .INIT(8'h08)) 
    \writeCount_1_fu_164[0]_i_2 
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(ap_pipeline_reg_pp3_iter1_tmp_reg_1022),
        .I2(lineBuffer_1_U_n_65),
        .O(outStream_V_data_V_1_sel_wr052_out));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[0]_i_4 
       (.I0(writeCount_1_fu_164_reg[3]),
        .O(\writeCount_1_fu_164[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[0]_i_5 
       (.I0(writeCount_1_fu_164_reg[2]),
        .O(\writeCount_1_fu_164[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[0]_i_6 
       (.I0(writeCount_1_fu_164_reg[1]),
        .O(\writeCount_1_fu_164[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \writeCount_1_fu_164[0]_i_7 
       (.I0(writeCount_1_fu_164_reg[0]),
        .O(\writeCount_1_fu_164[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[12]_i_2 
       (.I0(writeCount_1_fu_164_reg[15]),
        .O(\writeCount_1_fu_164[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[12]_i_3 
       (.I0(writeCount_1_fu_164_reg[14]),
        .O(\writeCount_1_fu_164[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[12]_i_4 
       (.I0(writeCount_1_fu_164_reg[13]),
        .O(\writeCount_1_fu_164[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[12]_i_5 
       (.I0(writeCount_1_fu_164_reg[12]),
        .O(\writeCount_1_fu_164[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[16]_i_2 
       (.I0(writeCount_1_fu_164_reg[19]),
        .O(\writeCount_1_fu_164[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[16]_i_3 
       (.I0(writeCount_1_fu_164_reg[18]),
        .O(\writeCount_1_fu_164[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[16]_i_4 
       (.I0(writeCount_1_fu_164_reg[17]),
        .O(\writeCount_1_fu_164[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[16]_i_5 
       (.I0(writeCount_1_fu_164_reg[16]),
        .O(\writeCount_1_fu_164[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[20]_i_2 
       (.I0(writeCount_1_fu_164_reg[23]),
        .O(\writeCount_1_fu_164[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[20]_i_3 
       (.I0(writeCount_1_fu_164_reg[22]),
        .O(\writeCount_1_fu_164[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[20]_i_4 
       (.I0(writeCount_1_fu_164_reg[21]),
        .O(\writeCount_1_fu_164[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[20]_i_5 
       (.I0(writeCount_1_fu_164_reg[20]),
        .O(\writeCount_1_fu_164[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[24]_i_2 
       (.I0(writeCount_1_fu_164_reg[27]),
        .O(\writeCount_1_fu_164[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[24]_i_3 
       (.I0(writeCount_1_fu_164_reg[26]),
        .O(\writeCount_1_fu_164[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[24]_i_4 
       (.I0(writeCount_1_fu_164_reg[25]),
        .O(\writeCount_1_fu_164[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[24]_i_5 
       (.I0(writeCount_1_fu_164_reg[24]),
        .O(\writeCount_1_fu_164[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[28]_i_2 
       (.I0(writeCount_1_fu_164_reg[31]),
        .O(\writeCount_1_fu_164[28]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[28]_i_3 
       (.I0(writeCount_1_fu_164_reg[30]),
        .O(\writeCount_1_fu_164[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[28]_i_4 
       (.I0(writeCount_1_fu_164_reg[29]),
        .O(\writeCount_1_fu_164[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[28]_i_5 
       (.I0(writeCount_1_fu_164_reg[28]),
        .O(\writeCount_1_fu_164[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[4]_i_2 
       (.I0(writeCount_1_fu_164_reg[7]),
        .O(\writeCount_1_fu_164[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[4]_i_3 
       (.I0(writeCount_1_fu_164_reg[6]),
        .O(\writeCount_1_fu_164[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[4]_i_4 
       (.I0(writeCount_1_fu_164_reg[5]),
        .O(\writeCount_1_fu_164[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[4]_i_5 
       (.I0(writeCount_1_fu_164_reg[4]),
        .O(\writeCount_1_fu_164[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[8]_i_2 
       (.I0(writeCount_1_fu_164_reg[11]),
        .O(\writeCount_1_fu_164[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[8]_i_3 
       (.I0(writeCount_1_fu_164_reg[10]),
        .O(\writeCount_1_fu_164[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[8]_i_4 
       (.I0(writeCount_1_fu_164_reg[9]),
        .O(\writeCount_1_fu_164[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \writeCount_1_fu_164[8]_i_5 
       (.I0(writeCount_1_fu_164_reg[8]),
        .O(\writeCount_1_fu_164[8]_i_5_n_0 ));
  FDRE \writeCount_1_fu_164_reg[0] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[0]_i_3_n_7 ),
        .Q(writeCount_1_fu_164_reg[0]),
        .R(writeCount_1_fu_164));
  CARRY4 \writeCount_1_fu_164_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\writeCount_1_fu_164_reg[0]_i_3_n_0 ,\writeCount_1_fu_164_reg[0]_i_3_n_1 ,\writeCount_1_fu_164_reg[0]_i_3_n_2 ,\writeCount_1_fu_164_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\writeCount_1_fu_164_reg[0]_i_3_n_4 ,\writeCount_1_fu_164_reg[0]_i_3_n_5 ,\writeCount_1_fu_164_reg[0]_i_3_n_6 ,\writeCount_1_fu_164_reg[0]_i_3_n_7 }),
        .S({\writeCount_1_fu_164[0]_i_4_n_0 ,\writeCount_1_fu_164[0]_i_5_n_0 ,\writeCount_1_fu_164[0]_i_6_n_0 ,\writeCount_1_fu_164[0]_i_7_n_0 }));
  FDRE \writeCount_1_fu_164_reg[10] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[8]_i_1_n_5 ),
        .Q(writeCount_1_fu_164_reg[10]),
        .R(writeCount_1_fu_164));
  FDRE \writeCount_1_fu_164_reg[11] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[8]_i_1_n_4 ),
        .Q(writeCount_1_fu_164_reg[11]),
        .R(writeCount_1_fu_164));
  FDRE \writeCount_1_fu_164_reg[12] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[12]_i_1_n_7 ),
        .Q(writeCount_1_fu_164_reg[12]),
        .R(writeCount_1_fu_164));
  CARRY4 \writeCount_1_fu_164_reg[12]_i_1 
       (.CI(\writeCount_1_fu_164_reg[8]_i_1_n_0 ),
        .CO({\writeCount_1_fu_164_reg[12]_i_1_n_0 ,\writeCount_1_fu_164_reg[12]_i_1_n_1 ,\writeCount_1_fu_164_reg[12]_i_1_n_2 ,\writeCount_1_fu_164_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\writeCount_1_fu_164_reg[12]_i_1_n_4 ,\writeCount_1_fu_164_reg[12]_i_1_n_5 ,\writeCount_1_fu_164_reg[12]_i_1_n_6 ,\writeCount_1_fu_164_reg[12]_i_1_n_7 }),
        .S({\writeCount_1_fu_164[12]_i_2_n_0 ,\writeCount_1_fu_164[12]_i_3_n_0 ,\writeCount_1_fu_164[12]_i_4_n_0 ,\writeCount_1_fu_164[12]_i_5_n_0 }));
  FDRE \writeCount_1_fu_164_reg[13] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[12]_i_1_n_6 ),
        .Q(writeCount_1_fu_164_reg[13]),
        .R(writeCount_1_fu_164));
  FDRE \writeCount_1_fu_164_reg[14] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[12]_i_1_n_5 ),
        .Q(writeCount_1_fu_164_reg[14]),
        .R(writeCount_1_fu_164));
  FDRE \writeCount_1_fu_164_reg[15] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[12]_i_1_n_4 ),
        .Q(writeCount_1_fu_164_reg[15]),
        .R(writeCount_1_fu_164));
  FDRE \writeCount_1_fu_164_reg[16] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[16]_i_1_n_7 ),
        .Q(writeCount_1_fu_164_reg[16]),
        .R(writeCount_1_fu_164));
  CARRY4 \writeCount_1_fu_164_reg[16]_i_1 
       (.CI(\writeCount_1_fu_164_reg[12]_i_1_n_0 ),
        .CO({\writeCount_1_fu_164_reg[16]_i_1_n_0 ,\writeCount_1_fu_164_reg[16]_i_1_n_1 ,\writeCount_1_fu_164_reg[16]_i_1_n_2 ,\writeCount_1_fu_164_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\writeCount_1_fu_164_reg[16]_i_1_n_4 ,\writeCount_1_fu_164_reg[16]_i_1_n_5 ,\writeCount_1_fu_164_reg[16]_i_1_n_6 ,\writeCount_1_fu_164_reg[16]_i_1_n_7 }),
        .S({\writeCount_1_fu_164[16]_i_2_n_0 ,\writeCount_1_fu_164[16]_i_3_n_0 ,\writeCount_1_fu_164[16]_i_4_n_0 ,\writeCount_1_fu_164[16]_i_5_n_0 }));
  FDRE \writeCount_1_fu_164_reg[17] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[16]_i_1_n_6 ),
        .Q(writeCount_1_fu_164_reg[17]),
        .R(writeCount_1_fu_164));
  FDRE \writeCount_1_fu_164_reg[18] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[16]_i_1_n_5 ),
        .Q(writeCount_1_fu_164_reg[18]),
        .R(writeCount_1_fu_164));
  FDRE \writeCount_1_fu_164_reg[19] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[16]_i_1_n_4 ),
        .Q(writeCount_1_fu_164_reg[19]),
        .R(writeCount_1_fu_164));
  FDRE \writeCount_1_fu_164_reg[1] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[0]_i_3_n_6 ),
        .Q(writeCount_1_fu_164_reg[1]),
        .R(writeCount_1_fu_164));
  FDRE \writeCount_1_fu_164_reg[20] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[20]_i_1_n_7 ),
        .Q(writeCount_1_fu_164_reg[20]),
        .R(writeCount_1_fu_164));
  CARRY4 \writeCount_1_fu_164_reg[20]_i_1 
       (.CI(\writeCount_1_fu_164_reg[16]_i_1_n_0 ),
        .CO({\writeCount_1_fu_164_reg[20]_i_1_n_0 ,\writeCount_1_fu_164_reg[20]_i_1_n_1 ,\writeCount_1_fu_164_reg[20]_i_1_n_2 ,\writeCount_1_fu_164_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\writeCount_1_fu_164_reg[20]_i_1_n_4 ,\writeCount_1_fu_164_reg[20]_i_1_n_5 ,\writeCount_1_fu_164_reg[20]_i_1_n_6 ,\writeCount_1_fu_164_reg[20]_i_1_n_7 }),
        .S({\writeCount_1_fu_164[20]_i_2_n_0 ,\writeCount_1_fu_164[20]_i_3_n_0 ,\writeCount_1_fu_164[20]_i_4_n_0 ,\writeCount_1_fu_164[20]_i_5_n_0 }));
  FDRE \writeCount_1_fu_164_reg[21] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[20]_i_1_n_6 ),
        .Q(writeCount_1_fu_164_reg[21]),
        .R(writeCount_1_fu_164));
  FDRE \writeCount_1_fu_164_reg[22] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[20]_i_1_n_5 ),
        .Q(writeCount_1_fu_164_reg[22]),
        .R(writeCount_1_fu_164));
  FDRE \writeCount_1_fu_164_reg[23] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[20]_i_1_n_4 ),
        .Q(writeCount_1_fu_164_reg[23]),
        .R(writeCount_1_fu_164));
  FDRE \writeCount_1_fu_164_reg[24] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[24]_i_1_n_7 ),
        .Q(writeCount_1_fu_164_reg[24]),
        .R(writeCount_1_fu_164));
  CARRY4 \writeCount_1_fu_164_reg[24]_i_1 
       (.CI(\writeCount_1_fu_164_reg[20]_i_1_n_0 ),
        .CO({\writeCount_1_fu_164_reg[24]_i_1_n_0 ,\writeCount_1_fu_164_reg[24]_i_1_n_1 ,\writeCount_1_fu_164_reg[24]_i_1_n_2 ,\writeCount_1_fu_164_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\writeCount_1_fu_164_reg[24]_i_1_n_4 ,\writeCount_1_fu_164_reg[24]_i_1_n_5 ,\writeCount_1_fu_164_reg[24]_i_1_n_6 ,\writeCount_1_fu_164_reg[24]_i_1_n_7 }),
        .S({\writeCount_1_fu_164[24]_i_2_n_0 ,\writeCount_1_fu_164[24]_i_3_n_0 ,\writeCount_1_fu_164[24]_i_4_n_0 ,\writeCount_1_fu_164[24]_i_5_n_0 }));
  FDRE \writeCount_1_fu_164_reg[25] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[24]_i_1_n_6 ),
        .Q(writeCount_1_fu_164_reg[25]),
        .R(writeCount_1_fu_164));
  FDRE \writeCount_1_fu_164_reg[26] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[24]_i_1_n_5 ),
        .Q(writeCount_1_fu_164_reg[26]),
        .R(writeCount_1_fu_164));
  FDRE \writeCount_1_fu_164_reg[27] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[24]_i_1_n_4 ),
        .Q(writeCount_1_fu_164_reg[27]),
        .R(writeCount_1_fu_164));
  FDRE \writeCount_1_fu_164_reg[28] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[28]_i_1_n_7 ),
        .Q(writeCount_1_fu_164_reg[28]),
        .R(writeCount_1_fu_164));
  CARRY4 \writeCount_1_fu_164_reg[28]_i_1 
       (.CI(\writeCount_1_fu_164_reg[24]_i_1_n_0 ),
        .CO({\NLW_writeCount_1_fu_164_reg[28]_i_1_CO_UNCONNECTED [3],\writeCount_1_fu_164_reg[28]_i_1_n_1 ,\writeCount_1_fu_164_reg[28]_i_1_n_2 ,\writeCount_1_fu_164_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\writeCount_1_fu_164_reg[28]_i_1_n_4 ,\writeCount_1_fu_164_reg[28]_i_1_n_5 ,\writeCount_1_fu_164_reg[28]_i_1_n_6 ,\writeCount_1_fu_164_reg[28]_i_1_n_7 }),
        .S({\writeCount_1_fu_164[28]_i_2_n_0 ,\writeCount_1_fu_164[28]_i_3_n_0 ,\writeCount_1_fu_164[28]_i_4_n_0 ,\writeCount_1_fu_164[28]_i_5_n_0 }));
  FDRE \writeCount_1_fu_164_reg[29] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[28]_i_1_n_6 ),
        .Q(writeCount_1_fu_164_reg[29]),
        .R(writeCount_1_fu_164));
  FDRE \writeCount_1_fu_164_reg[2] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[0]_i_3_n_5 ),
        .Q(writeCount_1_fu_164_reg[2]),
        .R(writeCount_1_fu_164));
  FDRE \writeCount_1_fu_164_reg[30] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[28]_i_1_n_5 ),
        .Q(writeCount_1_fu_164_reg[30]),
        .R(writeCount_1_fu_164));
  FDRE \writeCount_1_fu_164_reg[31] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[28]_i_1_n_4 ),
        .Q(writeCount_1_fu_164_reg[31]),
        .R(writeCount_1_fu_164));
  FDRE \writeCount_1_fu_164_reg[3] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[0]_i_3_n_4 ),
        .Q(writeCount_1_fu_164_reg[3]),
        .R(writeCount_1_fu_164));
  FDRE \writeCount_1_fu_164_reg[4] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[4]_i_1_n_7 ),
        .Q(writeCount_1_fu_164_reg[4]),
        .R(writeCount_1_fu_164));
  CARRY4 \writeCount_1_fu_164_reg[4]_i_1 
       (.CI(\writeCount_1_fu_164_reg[0]_i_3_n_0 ),
        .CO({\writeCount_1_fu_164_reg[4]_i_1_n_0 ,\writeCount_1_fu_164_reg[4]_i_1_n_1 ,\writeCount_1_fu_164_reg[4]_i_1_n_2 ,\writeCount_1_fu_164_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\writeCount_1_fu_164_reg[4]_i_1_n_4 ,\writeCount_1_fu_164_reg[4]_i_1_n_5 ,\writeCount_1_fu_164_reg[4]_i_1_n_6 ,\writeCount_1_fu_164_reg[4]_i_1_n_7 }),
        .S({\writeCount_1_fu_164[4]_i_2_n_0 ,\writeCount_1_fu_164[4]_i_3_n_0 ,\writeCount_1_fu_164[4]_i_4_n_0 ,\writeCount_1_fu_164[4]_i_5_n_0 }));
  FDRE \writeCount_1_fu_164_reg[5] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[4]_i_1_n_6 ),
        .Q(writeCount_1_fu_164_reg[5]),
        .R(writeCount_1_fu_164));
  FDRE \writeCount_1_fu_164_reg[6] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[4]_i_1_n_5 ),
        .Q(writeCount_1_fu_164_reg[6]),
        .R(writeCount_1_fu_164));
  FDRE \writeCount_1_fu_164_reg[7] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[4]_i_1_n_4 ),
        .Q(writeCount_1_fu_164_reg[7]),
        .R(writeCount_1_fu_164));
  FDRE \writeCount_1_fu_164_reg[8] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[8]_i_1_n_7 ),
        .Q(writeCount_1_fu_164_reg[8]),
        .R(writeCount_1_fu_164));
  CARRY4 \writeCount_1_fu_164_reg[8]_i_1 
       (.CI(\writeCount_1_fu_164_reg[4]_i_1_n_0 ),
        .CO({\writeCount_1_fu_164_reg[8]_i_1_n_0 ,\writeCount_1_fu_164_reg[8]_i_1_n_1 ,\writeCount_1_fu_164_reg[8]_i_1_n_2 ,\writeCount_1_fu_164_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\writeCount_1_fu_164_reg[8]_i_1_n_4 ,\writeCount_1_fu_164_reg[8]_i_1_n_5 ,\writeCount_1_fu_164_reg[8]_i_1_n_6 ,\writeCount_1_fu_164_reg[8]_i_1_n_7 }),
        .S({\writeCount_1_fu_164[8]_i_2_n_0 ,\writeCount_1_fu_164[8]_i_3_n_0 ,\writeCount_1_fu_164[8]_i_4_n_0 ,\writeCount_1_fu_164[8]_i_5_n_0 }));
  FDRE \writeCount_1_fu_164_reg[9] 
       (.C(ap_clk),
        .CE(outStream_V_data_V_1_sel_wr052_out),
        .D(\writeCount_1_fu_164_reg[8]_i_1_n_6 ),
        .Q(writeCount_1_fu_164_reg[9]),
        .R(writeCount_1_fu_164));
  FDRE \x1_reg_299_reg[0] 
       (.C(ap_clk),
        .CE(lineBuffer_1_we0),
        .D(x_2_reg_898_reg__0[0]),
        .Q(x1_reg_299[0]),
        .R(ap_CS_fsm_state4));
  FDRE \x1_reg_299_reg[1] 
       (.C(ap_clk),
        .CE(lineBuffer_1_we0),
        .D(x_2_reg_898_reg__0[1]),
        .Q(x1_reg_299[1]),
        .R(ap_CS_fsm_state4));
  FDRE \x1_reg_299_reg[2] 
       (.C(ap_clk),
        .CE(lineBuffer_1_we0),
        .D(x_2_reg_898_reg__0[2]),
        .Q(x1_reg_299[2]),
        .R(ap_CS_fsm_state4));
  FDRE \x1_reg_299_reg[3] 
       (.C(ap_clk),
        .CE(lineBuffer_1_we0),
        .D(x_2_reg_898_reg__0[3]),
        .Q(x1_reg_299[3]),
        .R(ap_CS_fsm_state4));
  FDRE \x1_reg_299_reg[4] 
       (.C(ap_clk),
        .CE(lineBuffer_1_we0),
        .D(x_2_reg_898_reg__0[4]),
        .Q(x1_reg_299[4]),
        .R(ap_CS_fsm_state4));
  FDRE \x1_reg_299_reg[5] 
       (.C(ap_clk),
        .CE(lineBuffer_1_we0),
        .D(x_2_reg_898_reg__0[5]),
        .Q(x1_reg_299[5]),
        .R(ap_CS_fsm_state4));
  FDRE \x1_reg_299_reg[6] 
       (.C(ap_clk),
        .CE(lineBuffer_1_we0),
        .D(x_2_reg_898_reg__0[6]),
        .Q(x1_reg_299[6]),
        .R(ap_CS_fsm_state4));
  LUT1 #(
    .INIT(2'h1)) 
    \x4_reg_357[0]_i_1 
       (.I0(x4_reg_357[0]),
        .O(tmp_5_fu_532_p2));
  LUT2 #(
    .INIT(4'hE)) 
    \x4_reg_357[1]_i_1 
       (.I0(x4_reg_357[0]),
        .I1(x4_reg_357[1]),
        .O(x_3_fu_550_p2));
  FDSE \x4_reg_357_reg[0] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_3110),
        .D(tmp_5_fu_532_p2),
        .Q(x4_reg_357[0]),
        .S(ap_CS_fsm_state7));
  FDRE \x4_reg_357_reg[1] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_3110),
        .D(x_3_fu_550_p2),
        .Q(x4_reg_357[1]),
        .R(ap_CS_fsm_state7));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h0400F7FF)) 
    \x_1_reg_889[0]_i_1 
       (.I0(x_1_reg_889_reg__0[0]),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(\exitcond1_reg_885_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\x_reg_287_reg_n_0_[0] ),
        .O(\x_1_reg_889[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \x_1_reg_889[1]_i_1 
       (.I0(x_1_reg_889_reg__0[1]),
        .I1(\x_reg_287_reg_n_0_[1] ),
        .I2(x_1_reg_889_reg__0[0]),
        .I3(\x_1_reg_889[6]_i_4_n_0 ),
        .I4(\x_reg_287_reg_n_0_[0] ),
        .O(x_1_fu_436_p2[1]));
  LUT6 #(
    .INIT(64'h3CCC5A5A3CCCAAAA)) 
    \x_1_reg_889[2]_i_1 
       (.I0(x_1_reg_889_reg__0[2]),
        .I1(\x_reg_287_reg_n_0_[2] ),
        .I2(\x_1_reg_889[2]_i_2_n_0 ),
        .I3(\x_reg_287_reg_n_0_[1] ),
        .I4(\x_1_reg_889[6]_i_4_n_0 ),
        .I5(x_1_reg_889_reg__0[1]),
        .O(x_1_fu_436_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \x_1_reg_889[2]_i_2 
       (.I0(\x_reg_287_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(\exitcond1_reg_885_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(x_1_reg_889_reg__0[0]),
        .O(\x_1_reg_889[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC3CCA5A5C3CCAAAA)) 
    \x_1_reg_889[3]_i_1 
       (.I0(x_1_reg_889_reg__0[3]),
        .I1(\x_reg_287_reg_n_0_[3] ),
        .I2(\x_1_reg_889[3]_i_2_n_0 ),
        .I3(\x_reg_287_reg_n_0_[2] ),
        .I4(\x_1_reg_889[6]_i_4_n_0 ),
        .I5(x_1_reg_889_reg__0[2]),
        .O(x_1_fu_436_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h335FFF5F)) 
    \x_1_reg_889[3]_i_2 
       (.I0(x_1_reg_889_reg__0[1]),
        .I1(\x_reg_287_reg_n_0_[1] ),
        .I2(x_1_reg_889_reg__0[0]),
        .I3(\x_1_reg_889[6]_i_4_n_0 ),
        .I4(\x_reg_287_reg_n_0_[0] ),
        .O(\x_1_reg_889[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3CCC5A5A3CCCAAAA)) 
    \x_1_reg_889[4]_i_1 
       (.I0(x_1_reg_889_reg__0[4]),
        .I1(\x_reg_287_reg_n_0_[4] ),
        .I2(\x_1_reg_889[4]_i_2_n_0 ),
        .I3(\x_reg_287_reg_n_0_[3] ),
        .I4(\x_1_reg_889[6]_i_4_n_0 ),
        .I5(x_1_reg_889_reg__0[3]),
        .O(x_1_fu_436_p2[4]));
  LUT6 #(
    .INIT(64'hC000A0A0C0000000)) 
    \x_1_reg_889[4]_i_2 
       (.I0(x_1_reg_889_reg__0[2]),
        .I1(\x_reg_287_reg_n_0_[2] ),
        .I2(\x_1_reg_889[2]_i_2_n_0 ),
        .I3(\x_reg_287_reg_n_0_[1] ),
        .I4(\x_1_reg_889[6]_i_4_n_0 ),
        .I5(x_1_reg_889_reg__0[1]),
        .O(\x_1_reg_889[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0400F7FFFBFF0800)) 
    \x_1_reg_889[5]_i_1 
       (.I0(x_1_reg_889_reg__0[5]),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(\exitcond1_reg_885_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\x_reg_287_reg_n_0_[5] ),
        .I5(\x_1_reg_889[6]_i_3_n_0 ),
        .O(x_1_fu_436_p2[5]));
  LUT6 #(
    .INIT(64'h2020202020002020)) 
    \x_1_reg_889[6]_i_1 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(exitcond1_fu_430_p2),
        .I2(ap_CS_fsm_pp0_stage0),
        .I3(\exitcond1_reg_885_reg_n_0_[0] ),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(\inStream_V_data_V_0_state_reg_n_0_[0] ),
        .O(x_1_reg_8890));
  LUT6 #(
    .INIT(64'h3CCC5A5A3CCCAAAA)) 
    \x_1_reg_889[6]_i_2 
       (.I0(x_1_reg_889_reg__0[6]),
        .I1(\x_reg_287_reg_n_0_[6] ),
        .I2(\x_1_reg_889[6]_i_3_n_0 ),
        .I3(\x_reg_287_reg_n_0_[5] ),
        .I4(\x_1_reg_889[6]_i_4_n_0 ),
        .I5(x_1_reg_889_reg__0[5]),
        .O(x_1_fu_436_p2[6]));
  LUT6 #(
    .INIT(64'h8A800A0080800000)) 
    \x_1_reg_889[6]_i_3 
       (.I0(\ap_CS_fsm[2]_i_3_n_0 ),
        .I1(\x_reg_287_reg_n_0_[0] ),
        .I2(\x_1_reg_889[6]_i_4_n_0 ),
        .I3(x_1_reg_889_reg__0[0]),
        .I4(\x_reg_287_reg_n_0_[1] ),
        .I5(x_1_reg_889_reg__0[1]),
        .O(\x_1_reg_889[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \x_1_reg_889[6]_i_4 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(\exitcond1_reg_885_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage0),
        .O(\x_1_reg_889[6]_i_4_n_0 ));
  FDRE \x_1_reg_889_reg[0] 
       (.C(ap_clk),
        .CE(x_1_reg_8890),
        .D(\x_1_reg_889[0]_i_1_n_0 ),
        .Q(x_1_reg_889_reg__0[0]),
        .R(1'b0));
  FDRE \x_1_reg_889_reg[1] 
       (.C(ap_clk),
        .CE(x_1_reg_8890),
        .D(x_1_fu_436_p2[1]),
        .Q(x_1_reg_889_reg__0[1]),
        .R(1'b0));
  FDRE \x_1_reg_889_reg[2] 
       (.C(ap_clk),
        .CE(x_1_reg_8890),
        .D(x_1_fu_436_p2[2]),
        .Q(x_1_reg_889_reg__0[2]),
        .R(1'b0));
  FDRE \x_1_reg_889_reg[3] 
       (.C(ap_clk),
        .CE(x_1_reg_8890),
        .D(x_1_fu_436_p2[3]),
        .Q(x_1_reg_889_reg__0[3]),
        .R(1'b0));
  FDRE \x_1_reg_889_reg[4] 
       (.C(ap_clk),
        .CE(x_1_reg_8890),
        .D(x_1_fu_436_p2[4]),
        .Q(x_1_reg_889_reg__0[4]),
        .R(1'b0));
  FDRE \x_1_reg_889_reg[5] 
       (.C(ap_clk),
        .CE(x_1_reg_8890),
        .D(x_1_fu_436_p2[5]),
        .Q(x_1_reg_889_reg__0[5]),
        .R(1'b0));
  FDRE \x_1_reg_889_reg[6] 
       (.C(ap_clk),
        .CE(x_1_reg_8890),
        .D(x_1_fu_436_p2[6]),
        .Q(x_1_reg_889_reg__0[6]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h51555D55)) 
    \x_2_reg_898[0]_i_1 
       (.I0(x1_reg_299[0]),
        .I1(ap_enable_reg_pp1_iter1),
        .I2(\exitcond4_reg_894_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp1_stage0),
        .I4(x_2_reg_898_reg__0[0]),
        .O(\x_2_reg_898[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \x_2_reg_898[1]_i_1 
       (.I0(x_2_reg_898_reg__0[1]),
        .I1(x1_reg_299[1]),
        .I2(x_2_reg_898_reg__0[0]),
        .I3(\x_2_reg_898[6]_i_4_n_0 ),
        .I4(x1_reg_299[0]),
        .O(x_2_fu_453_p2[1]));
  LUT6 #(
    .INIT(64'hC3CCA5A5C3CCAAAA)) 
    \x_2_reg_898[2]_i_1 
       (.I0(x_2_reg_898_reg__0[2]),
        .I1(x1_reg_299[2]),
        .I2(\x_2_reg_898[0]_i_1_n_0 ),
        .I3(x1_reg_299[1]),
        .I4(\x_2_reg_898[6]_i_4_n_0 ),
        .I5(x_2_reg_898_reg__0[1]),
        .O(x_2_fu_453_p2[2]));
  LUT6 #(
    .INIT(64'h0400F7FFFBFF0800)) 
    \x_2_reg_898[3]_i_1 
       (.I0(x_2_reg_898_reg__0[3]),
        .I1(ap_CS_fsm_pp1_stage0),
        .I2(\exitcond4_reg_894_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp1_iter1),
        .I4(x1_reg_299[3]),
        .I5(\x_2_reg_898[4]_i_2_n_0 ),
        .O(\x_2_reg_898[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3C553CAACCAACCAA)) 
    \x_2_reg_898[4]_i_1 
       (.I0(x_2_reg_898_reg__0[4]),
        .I1(x1_reg_299[4]),
        .I2(x1_reg_299[3]),
        .I3(\x_2_reg_898[6]_i_4_n_0 ),
        .I4(x_2_reg_898_reg__0[3]),
        .I5(\x_2_reg_898[4]_i_2_n_0 ),
        .O(x_2_fu_453_p2[4]));
  LUT6 #(
    .INIT(64'h0C000A0A0C000000)) 
    \x_2_reg_898[4]_i_2 
       (.I0(x_2_reg_898_reg__0[2]),
        .I1(x1_reg_299[2]),
        .I2(\x_2_reg_898[0]_i_1_n_0 ),
        .I3(x1_reg_299[1]),
        .I4(\x_2_reg_898[6]_i_4_n_0 ),
        .I5(x_2_reg_898_reg__0[1]),
        .O(\x_2_reg_898[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0400F7FFFBFF0800)) 
    \x_2_reg_898[5]_i_1 
       (.I0(x_2_reg_898_reg__0[5]),
        .I1(ap_CS_fsm_pp1_stage0),
        .I2(\exitcond4_reg_894_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp1_iter1),
        .I4(x1_reg_299[5]),
        .I5(\x_2_reg_898[6]_i_3_n_0 ),
        .O(x_2_fu_453_p2[5]));
  LUT5 #(
    .INIT(32'h88888088)) 
    \x_2_reg_898[6]_i_1 
       (.I0(ap_CS_fsm_pp1_stage0),
        .I1(ap_enable_reg_pp1_iter0),
        .I2(\inStream_V_data_V_0_state_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp1_iter1),
        .I4(\exitcond4_reg_894_reg_n_0_[0] ),
        .O(x_2_reg_8980));
  LUT6 #(
    .INIT(64'h3CCC5A5A3CCCAAAA)) 
    \x_2_reg_898[6]_i_2 
       (.I0(x_2_reg_898_reg__0[6]),
        .I1(x1_reg_299[6]),
        .I2(\x_2_reg_898[6]_i_3_n_0 ),
        .I3(x1_reg_299[5]),
        .I4(\x_2_reg_898[6]_i_4_n_0 ),
        .I5(x_2_reg_898_reg__0[5]),
        .O(x_2_fu_453_p2[6]));
  LUT6 #(
    .INIT(64'h8A800A0080800000)) 
    \x_2_reg_898[6]_i_3 
       (.I0(\x_2_reg_898[4]_i_2_n_0 ),
        .I1(x1_reg_299[4]),
        .I2(\x_2_reg_898[6]_i_4_n_0 ),
        .I3(x_2_reg_898_reg__0[4]),
        .I4(x1_reg_299[3]),
        .I5(x_2_reg_898_reg__0[3]),
        .O(\x_2_reg_898[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \x_2_reg_898[6]_i_4 
       (.I0(ap_enable_reg_pp1_iter1),
        .I1(\exitcond4_reg_894_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp1_stage0),
        .O(\x_2_reg_898[6]_i_4_n_0 ));
  FDRE \x_2_reg_898_reg[0] 
       (.C(ap_clk),
        .CE(x_2_reg_8980),
        .D(\x_2_reg_898[0]_i_1_n_0 ),
        .Q(x_2_reg_898_reg__0[0]),
        .R(1'b0));
  FDRE \x_2_reg_898_reg[1] 
       (.C(ap_clk),
        .CE(x_2_reg_8980),
        .D(x_2_fu_453_p2[1]),
        .Q(x_2_reg_898_reg__0[1]),
        .R(1'b0));
  FDRE \x_2_reg_898_reg[2] 
       (.C(ap_clk),
        .CE(x_2_reg_8980),
        .D(x_2_fu_453_p2[2]),
        .Q(x_2_reg_898_reg__0[2]),
        .R(1'b0));
  FDRE \x_2_reg_898_reg[3] 
       (.C(ap_clk),
        .CE(x_2_reg_8980),
        .D(\x_2_reg_898[3]_i_1_n_0 ),
        .Q(x_2_reg_898_reg__0[3]),
        .R(1'b0));
  FDRE \x_2_reg_898_reg[4] 
       (.C(ap_clk),
        .CE(x_2_reg_8980),
        .D(x_2_fu_453_p2[4]),
        .Q(x_2_reg_898_reg__0[4]),
        .R(1'b0));
  FDRE \x_2_reg_898_reg[5] 
       (.C(ap_clk),
        .CE(x_2_reg_8980),
        .D(x_2_fu_453_p2[5]),
        .Q(x_2_reg_898_reg__0[5]),
        .R(1'b0));
  FDRE \x_2_reg_898_reg[6] 
       (.C(ap_clk),
        .CE(x_2_reg_8980),
        .D(x_2_fu_453_p2[6]),
        .Q(x_2_reg_898_reg__0[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \x_assign_reg_390[0]_i_1 
       (.I0(x_assign_reg_390[0]),
        .O(x_4_fu_684_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x_assign_reg_390[1]_i_1 
       (.I0(x_assign_reg_390[0]),
        .I1(x_assign_reg_390[1]),
        .O(x_4_fu_684_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hD222)) 
    \x_assign_reg_390[2]_i_1 
       (.I0(x_assign_reg_390[2]),
        .I1(lineBuffer_1_U_n_70),
        .I2(x_assign_reg_390[1]),
        .I3(x_assign_reg_390[0]),
        .O(\x_assign_reg_390[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h006A00AA)) 
    \x_assign_reg_390[3]_i_1 
       (.I0(x_assign_reg_390[3]),
        .I1(x_assign_reg_390[0]),
        .I2(x_assign_reg_390[1]),
        .I3(lineBuffer_1_U_n_70),
        .I4(x_assign_reg_390[2]),
        .O(x_4_fu_684_p2[3]));
  LUT6 #(
    .INIT(64'h006A00AA00AA00AA)) 
    \x_assign_reg_390[4]_i_1 
       (.I0(x_assign_reg_390[4]),
        .I1(x_assign_reg_390[3]),
        .I2(x_assign_reg_390[2]),
        .I3(lineBuffer_1_U_n_70),
        .I4(x_assign_reg_390[1]),
        .I5(x_assign_reg_390[0]),
        .O(x_4_fu_684_p2[4]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x_assign_reg_390[5]_i_1 
       (.I0(x_assign_reg_390[5]),
        .I1(\x_assign_reg_390[6]_i_5_n_0 ),
        .O(x_4_fu_684_p2[5]));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \x_assign_reg_390[6]_i_1 
       (.I0(\x_assign_reg_390[6]_i_4_n_0 ),
        .I1(ap_CS_fsm_pp3_stage0),
        .I2(ap_enable_reg_pp3_iter0),
        .I3(lineBuffer_1_U_n_65),
        .I4(ap_CS_fsm_state10),
        .O(indvar_flatten6_reg_368));
  LUT4 #(
    .INIT(16'h0040)) 
    \x_assign_reg_390[6]_i_2 
       (.I0(\x_assign_reg_390[6]_i_4_n_0 ),
        .I1(ap_CS_fsm_pp3_stage0),
        .I2(ap_enable_reg_pp3_iter0),
        .I3(lineBuffer_1_U_n_65),
        .O(\x_assign_reg_390[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \x_assign_reg_390[6]_i_3 
       (.I0(lineBuffer_1_U_n_71),
        .I1(\x_assign_reg_390[6]_i_5_n_0 ),
        .I2(x_assign_reg_390[5]),
        .O(x_4_fu_684_p2[6]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \x_assign_reg_390[6]_i_4 
       (.I0(\x_assign_reg_390[6]_i_6_n_0 ),
        .I1(\x_assign_reg_390[6]_i_7_n_0 ),
        .I2(indvar_flatten6_reg_368_reg[6]),
        .I3(indvar_flatten6_reg_368_reg[7]),
        .I4(indvar_flatten6_reg_368_reg[1]),
        .I5(indvar_flatten6_reg_368_reg[5]),
        .O(\x_assign_reg_390[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \x_assign_reg_390[6]_i_5 
       (.I0(x_assign_reg_390[4]),
        .I1(x_assign_reg_390[3]),
        .I2(x_assign_reg_390[2]),
        .I3(lineBuffer_1_U_n_70),
        .I4(x_assign_reg_390[1]),
        .I5(x_assign_reg_390[0]),
        .O(\x_assign_reg_390[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \x_assign_reg_390[6]_i_6 
       (.I0(indvar_flatten6_reg_368_reg[2]),
        .I1(indvar_flatten6_reg_368_reg[12]),
        .I2(indvar_flatten6_reg_368_reg[11]),
        .I3(indvar_flatten6_reg_368_reg[10]),
        .I4(indvar_flatten6_reg_368_reg[9]),
        .I5(indvar_flatten6_reg_368_reg[0]),
        .O(\x_assign_reg_390[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \x_assign_reg_390[6]_i_7 
       (.I0(indvar_flatten6_reg_368_reg[13]),
        .I1(indvar_flatten6_reg_368_reg[3]),
        .I2(indvar_flatten6_reg_368_reg[4]),
        .I3(indvar_flatten6_reg_368_reg[8]),
        .O(\x_assign_reg_390[6]_i_7_n_0 ));
  FDRE \x_assign_reg_390_reg[0] 
       (.C(ap_clk),
        .CE(\x_assign_reg_390[6]_i_2_n_0 ),
        .D(x_4_fu_684_p2[0]),
        .Q(x_assign_reg_390[0]),
        .R(indvar_flatten6_reg_368));
  FDRE \x_assign_reg_390_reg[1] 
       (.C(ap_clk),
        .CE(\x_assign_reg_390[6]_i_2_n_0 ),
        .D(x_4_fu_684_p2[1]),
        .Q(x_assign_reg_390[1]),
        .R(indvar_flatten6_reg_368));
  FDRE \x_assign_reg_390_reg[2] 
       (.C(ap_clk),
        .CE(\x_assign_reg_390[6]_i_2_n_0 ),
        .D(\x_assign_reg_390[2]_i_1_n_0 ),
        .Q(x_assign_reg_390[2]),
        .R(indvar_flatten6_reg_368));
  FDRE \x_assign_reg_390_reg[3] 
       (.C(ap_clk),
        .CE(\x_assign_reg_390[6]_i_2_n_0 ),
        .D(x_4_fu_684_p2[3]),
        .Q(x_assign_reg_390[3]),
        .R(indvar_flatten6_reg_368));
  FDRE \x_assign_reg_390_reg[4] 
       (.C(ap_clk),
        .CE(\x_assign_reg_390[6]_i_2_n_0 ),
        .D(x_4_fu_684_p2[4]),
        .Q(x_assign_reg_390[4]),
        .R(indvar_flatten6_reg_368));
  FDRE \x_assign_reg_390_reg[5] 
       (.C(ap_clk),
        .CE(\x_assign_reg_390[6]_i_2_n_0 ),
        .D(x_4_fu_684_p2[5]),
        .Q(x_assign_reg_390[5]),
        .R(indvar_flatten6_reg_368));
  FDRE \x_assign_reg_390_reg[6] 
       (.C(ap_clk),
        .CE(\x_assign_reg_390[6]_i_2_n_0 ),
        .D(x_4_fu_684_p2[6]),
        .Q(x_assign_reg_390[6]),
        .R(indvar_flatten6_reg_368));
  FDRE \x_reg_287_reg[0] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we0),
        .D(x_1_reg_889_reg__0[0]),
        .Q(\x_reg_287_reg_n_0_[0] ),
        .R(x_reg_287));
  FDSE \x_reg_287_reg[1] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we0),
        .D(x_1_reg_889_reg__0[1]),
        .Q(\x_reg_287_reg_n_0_[1] ),
        .S(x_reg_287));
  FDRE \x_reg_287_reg[2] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we0),
        .D(x_1_reg_889_reg__0[2]),
        .Q(\x_reg_287_reg_n_0_[2] ),
        .R(x_reg_287));
  FDSE \x_reg_287_reg[3] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we0),
        .D(x_1_reg_889_reg__0[3]),
        .Q(\x_reg_287_reg_n_0_[3] ),
        .S(x_reg_287));
  FDSE \x_reg_287_reg[4] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we0),
        .D(x_1_reg_889_reg__0[4]),
        .Q(\x_reg_287_reg_n_0_[4] ),
        .S(x_reg_287));
  FDRE \x_reg_287_reg[5] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we0),
        .D(x_1_reg_889_reg__0[5]),
        .Q(\x_reg_287_reg_n_0_[5] ),
        .R(x_reg_287));
  FDSE \x_reg_287_reg[6] 
       (.C(ap_clk),
        .CE(lineBuffer_0_we0),
        .D(x_1_reg_889_reg__0[6]),
        .Q(\x_reg_287_reg_n_0_[6] ),
        .S(x_reg_287));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAEAAA2A)) 
    \y3_reg_322[0]_i_1 
       (.I0(y3_reg_322[0]),
        .I1(ap_CS_fsm_pp2_stage0),
        .I2(ap_enable_reg_pp2_iter1),
        .I3(exitcond_flatten_reg_903),
        .I4(tmp_3_mid2_v_reg_912[0]),
        .I5(ap_CS_fsm_state7),
        .O(\y3_reg_322[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAEAAA2A)) 
    \y3_reg_322[1]_i_1 
       (.I0(y3_reg_322[1]),
        .I1(ap_CS_fsm_pp2_stage0),
        .I2(ap_enable_reg_pp2_iter1),
        .I3(exitcond_flatten_reg_903),
        .I4(tmp_3_mid2_v_reg_912[1]),
        .I5(ap_CS_fsm_state7),
        .O(\y3_reg_322[1]_i_1_n_0 ));
  FDRE \y3_reg_322_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\y3_reg_322[0]_i_1_n_0 ),
        .Q(y3_reg_322[0]),
        .R(1'b0));
  FDRE \y3_reg_322_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\y3_reg_322[1]_i_1_n_0 ),
        .Q(y3_reg_322[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFBF00400000)) 
    \y_assign_cast7_mid2_s_reg_1017[0]_i_1 
       (.I0(\x_assign_reg_390[6]_i_4_n_0 ),
        .I1(ap_CS_fsm_pp3_stage0),
        .I2(ap_enable_reg_pp3_iter0),
        .I3(lineBuffer_1_U_n_65),
        .I4(\tmp_reg_1022[0]_i_3_n_0 ),
        .I5(y_assign_cast7_mid2_s_reg_1017_reg),
        .O(\y_assign_cast7_mid2_s_reg_1017[0]_i_1_n_0 ));
  FDRE \y_assign_cast7_mid2_s_reg_1017_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\y_assign_cast7_mid2_s_reg_1017[0]_i_1_n_0 ),
        .Q(y_assign_cast7_mid2_s_reg_1017_reg),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_assign_reg_379[0]_i_1 
       (.I0(y_assign_cast7_mid2_s_reg_1017_reg),
        .I1(\y_assign_reg_379_reg_n_0_[0] ),
        .I2(\y_assign_reg_379[0]_i_2_n_0 ),
        .I3(ap_CS_fsm_state10),
        .O(\y_assign_reg_379[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFBF)) 
    \y_assign_reg_379[0]_i_2 
       (.I0(lineBuffer_1_U_n_65),
        .I1(ap_CS_fsm_pp3_stage0),
        .I2(ap_enable_reg_pp3_iter1_reg_n_0),
        .I3(\exitcond_flatten8_reg_1008_reg_n_0_[0] ),
        .O(\y_assign_reg_379[0]_i_2_n_0 ));
  FDRE \y_assign_reg_379_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\y_assign_reg_379[0]_i_1_n_0 ),
        .Q(\y_assign_reg_379_reg_n_0_[0] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d92x92_p2x2_CTRL_s_axi
   (s_axi_CTRL_RVALID,
    SR,
    s_axi_CTRL_ARREADY,
    s_axi_CTRL_AWREADY,
    s_axi_CTRL_WREADY,
    D,
    \ap_CS_fsm_reg[0] ,
    interrupt,
    \x_reg_287_reg[0] ,
    s_axi_CTRL_BVALID,
    ap_enable_reg_pp0_iter1_reg,
    ap_enable_reg_pp0_iter0_reg,
    \ctrl_read_reg_880_reg[0] ,
    s_axi_CTRL_RDATA,
    ap_clk,
    s_axi_CTRL_ARVALID,
    s_axi_CTRL_RREADY,
    ap_rst_n,
    s_axi_CTRL_AWVALID,
    s_axi_CTRL_WVALID,
    s_axi_CTRL_BREADY,
    s_axi_CTRL_WDATA,
    s_axi_CTRL_WSTRB,
    Q,
    s_axi_CTRL_ARADDR,
    \outStream_V_dest_V_1_state_reg[1] ,
    \outStream_V_strb_V_1_state_reg[1] ,
    \outStream_V_user_V_1_state_reg[1] ,
    \outStream_V_data_V_1_state_reg[1] ,
    \outStream_V_last_V_1_state_reg[1] ,
    \outStream_V_keep_V_1_state_reg[1] ,
    \outStream_V_id_V_1_state_reg[1] ,
    \exitcond1_reg_885_reg[0] ,
    ap_enable_reg_pp0_iter1,
    \inStream_V_data_V_0_state_reg[0] ,
    ap_enable_reg_pp0_iter0_reg_0,
    exitcond1_fu_430_p2,
    p_76_in,
    ap_enable_reg_pp0_iter0,
    ctrl_read_reg_880,
    s_axi_CTRL_AWADDR);
  output s_axi_CTRL_RVALID;
  output [0:0]SR;
  output s_axi_CTRL_ARREADY;
  output s_axi_CTRL_AWREADY;
  output s_axi_CTRL_WREADY;
  output [1:0]D;
  output \ap_CS_fsm_reg[0] ;
  output interrupt;
  output [0:0]\x_reg_287_reg[0] ;
  output s_axi_CTRL_BVALID;
  output ap_enable_reg_pp0_iter1_reg;
  output ap_enable_reg_pp0_iter0_reg;
  output \ctrl_read_reg_880_reg[0] ;
  output [31:0]s_axi_CTRL_RDATA;
  input ap_clk;
  input s_axi_CTRL_ARVALID;
  input s_axi_CTRL_RREADY;
  input ap_rst_n;
  input s_axi_CTRL_AWVALID;
  input s_axi_CTRL_WVALID;
  input s_axi_CTRL_BREADY;
  input [31:0]s_axi_CTRL_WDATA;
  input [3:0]s_axi_CTRL_WSTRB;
  input [2:0]Q;
  input [4:0]s_axi_CTRL_ARADDR;
  input [0:0]\outStream_V_dest_V_1_state_reg[1] ;
  input [0:0]\outStream_V_strb_V_1_state_reg[1] ;
  input [0:0]\outStream_V_user_V_1_state_reg[1] ;
  input [0:0]\outStream_V_data_V_1_state_reg[1] ;
  input [0:0]\outStream_V_last_V_1_state_reg[1] ;
  input [0:0]\outStream_V_keep_V_1_state_reg[1] ;
  input [0:0]\outStream_V_id_V_1_state_reg[1] ;
  input \exitcond1_reg_885_reg[0] ;
  input ap_enable_reg_pp0_iter1;
  input \inStream_V_data_V_0_state_reg[0] ;
  input ap_enable_reg_pp0_iter0_reg_0;
  input exitcond1_fu_430_p2;
  input p_76_in;
  input ap_enable_reg_pp0_iter0;
  input ctrl_read_reg_880;
  input [4:0]s_axi_CTRL_AWADDR;

  wire [1:0]D;
  wire [2:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm_reg[0] ;
  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter00;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter0_reg_0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_rst_n;
  wire ap_start;
  wire ar_hs;
  wire [0:0]ctrl;
  wire ctrl_read_reg_880;
  wire \ctrl_read_reg_880_reg[0] ;
  wire exitcond1_fu_430_p2;
  wire \exitcond1_reg_885_reg[0] ;
  wire \inStream_V_data_V_0_state_reg[0] ;
  wire int_ap_done;
  wire int_ap_done_i_1_n_0;
  wire int_ap_start3_out;
  wire int_ap_start_i_1_n_0;
  wire int_auto_restart;
  wire int_auto_restart_i_1_n_0;
  wire \int_ctrl[0]_i_1_n_0 ;
  wire \int_ctrl[10]_i_1_n_0 ;
  wire \int_ctrl[11]_i_1_n_0 ;
  wire \int_ctrl[12]_i_1_n_0 ;
  wire \int_ctrl[13]_i_1_n_0 ;
  wire \int_ctrl[14]_i_1_n_0 ;
  wire \int_ctrl[15]_i_1_n_0 ;
  wire \int_ctrl[16]_i_1_n_0 ;
  wire \int_ctrl[17]_i_1_n_0 ;
  wire \int_ctrl[18]_i_1_n_0 ;
  wire \int_ctrl[19]_i_1_n_0 ;
  wire \int_ctrl[1]_i_1_n_0 ;
  wire \int_ctrl[20]_i_1_n_0 ;
  wire \int_ctrl[21]_i_1_n_0 ;
  wire \int_ctrl[22]_i_1_n_0 ;
  wire \int_ctrl[23]_i_1_n_0 ;
  wire \int_ctrl[24]_i_1_n_0 ;
  wire \int_ctrl[25]_i_1_n_0 ;
  wire \int_ctrl[26]_i_1_n_0 ;
  wire \int_ctrl[27]_i_1_n_0 ;
  wire \int_ctrl[28]_i_1_n_0 ;
  wire \int_ctrl[29]_i_1_n_0 ;
  wire \int_ctrl[2]_i_1_n_0 ;
  wire \int_ctrl[30]_i_1_n_0 ;
  wire \int_ctrl[31]_i_1_n_0 ;
  wire \int_ctrl[31]_i_2_n_0 ;
  wire \int_ctrl[31]_i_3_n_0 ;
  wire \int_ctrl[3]_i_1_n_0 ;
  wire \int_ctrl[4]_i_1_n_0 ;
  wire \int_ctrl[5]_i_1_n_0 ;
  wire \int_ctrl[6]_i_1_n_0 ;
  wire \int_ctrl[7]_i_1_n_0 ;
  wire \int_ctrl[8]_i_1_n_0 ;
  wire \int_ctrl[9]_i_1_n_0 ;
  wire \int_ctrl_reg_n_0_[10] ;
  wire \int_ctrl_reg_n_0_[11] ;
  wire \int_ctrl_reg_n_0_[12] ;
  wire \int_ctrl_reg_n_0_[13] ;
  wire \int_ctrl_reg_n_0_[14] ;
  wire \int_ctrl_reg_n_0_[15] ;
  wire \int_ctrl_reg_n_0_[16] ;
  wire \int_ctrl_reg_n_0_[17] ;
  wire \int_ctrl_reg_n_0_[18] ;
  wire \int_ctrl_reg_n_0_[19] ;
  wire \int_ctrl_reg_n_0_[1] ;
  wire \int_ctrl_reg_n_0_[20] ;
  wire \int_ctrl_reg_n_0_[21] ;
  wire \int_ctrl_reg_n_0_[22] ;
  wire \int_ctrl_reg_n_0_[23] ;
  wire \int_ctrl_reg_n_0_[24] ;
  wire \int_ctrl_reg_n_0_[25] ;
  wire \int_ctrl_reg_n_0_[26] ;
  wire \int_ctrl_reg_n_0_[27] ;
  wire \int_ctrl_reg_n_0_[28] ;
  wire \int_ctrl_reg_n_0_[29] ;
  wire \int_ctrl_reg_n_0_[2] ;
  wire \int_ctrl_reg_n_0_[30] ;
  wire \int_ctrl_reg_n_0_[31] ;
  wire \int_ctrl_reg_n_0_[3] ;
  wire \int_ctrl_reg_n_0_[4] ;
  wire \int_ctrl_reg_n_0_[5] ;
  wire \int_ctrl_reg_n_0_[6] ;
  wire \int_ctrl_reg_n_0_[7] ;
  wire \int_ctrl_reg_n_0_[8] ;
  wire \int_ctrl_reg_n_0_[9] ;
  wire int_gie_i_1_n_0;
  wire int_gie_reg_n_0;
  wire \int_ier[0]_i_1_n_0 ;
  wire \int_ier[1]_i_1_n_0 ;
  wire \int_ier[1]_i_2_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire int_isr6_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire interrupt;
  wire [0:0]\outStream_V_data_V_1_state_reg[1] ;
  wire [0:0]\outStream_V_dest_V_1_state_reg[1] ;
  wire [0:0]\outStream_V_id_V_1_state_reg[1] ;
  wire [0:0]\outStream_V_keep_V_1_state_reg[1] ;
  wire [0:0]\outStream_V_last_V_1_state_reg[1] ;
  wire [0:0]\outStream_V_strb_V_1_state_reg[1] ;
  wire [0:0]\outStream_V_user_V_1_state_reg[1] ;
  wire p_0_in;
  wire p_1_in;
  wire p_76_in;
  wire [7:0]rdata;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[0]_i_3_n_0 ;
  wire \rdata[0]_i_4_n_0 ;
  wire \rdata[0]_i_5_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[1]_i_3_n_0 ;
  wire \rdata[31]_i_1_n_0 ;
  wire \rdata[7]_i_2_n_0 ;
  wire \rdata[7]_i_3_n_0 ;
  wire \rstate[0]_i_1_n_0 ;
  wire [4:0]s_axi_CTRL_ARADDR;
  wire s_axi_CTRL_ARREADY;
  wire s_axi_CTRL_ARVALID;
  wire [4:0]s_axi_CTRL_AWADDR;
  wire s_axi_CTRL_AWREADY;
  wire s_axi_CTRL_AWVALID;
  wire s_axi_CTRL_BREADY;
  wire s_axi_CTRL_BVALID;
  wire [31:0]s_axi_CTRL_RDATA;
  wire s_axi_CTRL_RREADY;
  wire s_axi_CTRL_RVALID;
  wire [31:0]s_axi_CTRL_WDATA;
  wire s_axi_CTRL_WREADY;
  wire [3:0]s_axi_CTRL_WSTRB;
  wire s_axi_CTRL_WVALID;
  wire waddr;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire [1:0]wstate;
  wire \wstate[0]_i_1_n_0 ;
  wire \wstate[1]_i_1_n_0 ;
  wire [0:0]\x_reg_287_reg[0] ;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_done),
        .I1(ap_start),
        .I2(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFAABAAAAAAAAA)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_enable_reg_pp0_iter00),
        .I1(\exitcond1_reg_885_reg[0] ),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(\inStream_V_data_V_0_state_reg[0] ),
        .I4(ap_enable_reg_pp0_iter0_reg_0),
        .I5(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(Q[0]),
        .I1(ap_start),
        .O(ap_enable_reg_pp0_iter00));
  LUT6 #(
    .INIT(64'h0000EA00EA00EA00)) 
    ap_enable_reg_pp0_iter0_i_1
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(Q[0]),
        .I2(ap_start),
        .I3(ap_rst_n),
        .I4(p_76_in),
        .I5(exitcond1_fu_430_p2),
        .O(ap_enable_reg_pp0_iter0_reg));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h47774444)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(exitcond1_fu_430_p2),
        .I1(p_76_in),
        .I2(ap_start),
        .I3(Q[0]),
        .I4(ap_enable_reg_pp0_iter1),
        .O(ap_enable_reg_pp0_iter1_reg));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ctrl_read_reg_880[0]_i_1 
       (.I0(ctrl),
        .I1(Q[0]),
        .I2(ap_start),
        .I3(ctrl_read_reg_880),
        .O(\ctrl_read_reg_880_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \inStream_V_dest_V_0_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(SR));
  LUT6 #(
    .INIT(64'hFFBFFFFFAAAAAAAA)) 
    int_ap_done_i_1
       (.I0(ap_done),
        .I1(\rdata[7]_i_3_n_0 ),
        .I2(s_axi_CTRL_ARVALID),
        .I3(s_axi_CTRL_RVALID),
        .I4(ap_rst_n),
        .I5(int_ap_done),
        .O(int_ap_done_i_1_n_0));
  FDRE int_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_done_i_1_n_0),
        .Q(int_ap_done),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFBF8)) 
    int_ap_start_i_1
       (.I0(int_auto_restart),
        .I1(ap_done),
        .I2(int_ap_start3_out),
        .I3(ap_start),
        .O(int_ap_start_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    int_ap_start_i_2
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\int_ier[1]_i_2_n_0 ),
        .I3(\waddr_reg_n_0_[2] ),
        .I4(s_axi_CTRL_WSTRB[0]),
        .O(int_ap_start3_out));
  FDRE int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    int_auto_restart_i_1
       (.I0(int_auto_restart),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(\waddr_reg_n_0_[3] ),
        .I5(s_axi_CTRL_WDATA[7]),
        .O(int_auto_restart_i_1_n_0));
  FDRE int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(int_auto_restart),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[0]_i_1 
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(ctrl),
        .O(\int_ctrl[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[10]_i_1 
       (.I0(s_axi_CTRL_WDATA[10]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(\int_ctrl_reg_n_0_[10] ),
        .O(\int_ctrl[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[11]_i_1 
       (.I0(s_axi_CTRL_WDATA[11]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(\int_ctrl_reg_n_0_[11] ),
        .O(\int_ctrl[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[12]_i_1 
       (.I0(s_axi_CTRL_WDATA[12]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(\int_ctrl_reg_n_0_[12] ),
        .O(\int_ctrl[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[13]_i_1 
       (.I0(s_axi_CTRL_WDATA[13]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(\int_ctrl_reg_n_0_[13] ),
        .O(\int_ctrl[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[14]_i_1 
       (.I0(s_axi_CTRL_WDATA[14]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(\int_ctrl_reg_n_0_[14] ),
        .O(\int_ctrl[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[15]_i_1 
       (.I0(s_axi_CTRL_WDATA[15]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(\int_ctrl_reg_n_0_[15] ),
        .O(\int_ctrl[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[16]_i_1 
       (.I0(s_axi_CTRL_WDATA[16]),
        .I1(s_axi_CTRL_WSTRB[2]),
        .I2(\int_ctrl_reg_n_0_[16] ),
        .O(\int_ctrl[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[17]_i_1 
       (.I0(s_axi_CTRL_WDATA[17]),
        .I1(s_axi_CTRL_WSTRB[2]),
        .I2(\int_ctrl_reg_n_0_[17] ),
        .O(\int_ctrl[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[18]_i_1 
       (.I0(s_axi_CTRL_WDATA[18]),
        .I1(s_axi_CTRL_WSTRB[2]),
        .I2(\int_ctrl_reg_n_0_[18] ),
        .O(\int_ctrl[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[19]_i_1 
       (.I0(s_axi_CTRL_WDATA[19]),
        .I1(s_axi_CTRL_WSTRB[2]),
        .I2(\int_ctrl_reg_n_0_[19] ),
        .O(\int_ctrl[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[1]_i_1 
       (.I0(s_axi_CTRL_WDATA[1]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(\int_ctrl_reg_n_0_[1] ),
        .O(\int_ctrl[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[20]_i_1 
       (.I0(s_axi_CTRL_WDATA[20]),
        .I1(s_axi_CTRL_WSTRB[2]),
        .I2(\int_ctrl_reg_n_0_[20] ),
        .O(\int_ctrl[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[21]_i_1 
       (.I0(s_axi_CTRL_WDATA[21]),
        .I1(s_axi_CTRL_WSTRB[2]),
        .I2(\int_ctrl_reg_n_0_[21] ),
        .O(\int_ctrl[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[22]_i_1 
       (.I0(s_axi_CTRL_WDATA[22]),
        .I1(s_axi_CTRL_WSTRB[2]),
        .I2(\int_ctrl_reg_n_0_[22] ),
        .O(\int_ctrl[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[23]_i_1 
       (.I0(s_axi_CTRL_WDATA[23]),
        .I1(s_axi_CTRL_WSTRB[2]),
        .I2(\int_ctrl_reg_n_0_[23] ),
        .O(\int_ctrl[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[24]_i_1 
       (.I0(s_axi_CTRL_WDATA[24]),
        .I1(s_axi_CTRL_WSTRB[3]),
        .I2(\int_ctrl_reg_n_0_[24] ),
        .O(\int_ctrl[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[25]_i_1 
       (.I0(s_axi_CTRL_WDATA[25]),
        .I1(s_axi_CTRL_WSTRB[3]),
        .I2(\int_ctrl_reg_n_0_[25] ),
        .O(\int_ctrl[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[26]_i_1 
       (.I0(s_axi_CTRL_WDATA[26]),
        .I1(s_axi_CTRL_WSTRB[3]),
        .I2(\int_ctrl_reg_n_0_[26] ),
        .O(\int_ctrl[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[27]_i_1 
       (.I0(s_axi_CTRL_WDATA[27]),
        .I1(s_axi_CTRL_WSTRB[3]),
        .I2(\int_ctrl_reg_n_0_[27] ),
        .O(\int_ctrl[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[28]_i_1 
       (.I0(s_axi_CTRL_WDATA[28]),
        .I1(s_axi_CTRL_WSTRB[3]),
        .I2(\int_ctrl_reg_n_0_[28] ),
        .O(\int_ctrl[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[29]_i_1 
       (.I0(s_axi_CTRL_WDATA[29]),
        .I1(s_axi_CTRL_WSTRB[3]),
        .I2(\int_ctrl_reg_n_0_[29] ),
        .O(\int_ctrl[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[2]_i_1 
       (.I0(s_axi_CTRL_WDATA[2]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(\int_ctrl_reg_n_0_[2] ),
        .O(\int_ctrl[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[30]_i_1 
       (.I0(s_axi_CTRL_WDATA[30]),
        .I1(s_axi_CTRL_WSTRB[3]),
        .I2(\int_ctrl_reg_n_0_[30] ),
        .O(\int_ctrl[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \int_ctrl[31]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\int_ctrl[31]_i_3_n_0 ),
        .O(\int_ctrl[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[31]_i_2 
       (.I0(s_axi_CTRL_WDATA[31]),
        .I1(s_axi_CTRL_WSTRB[3]),
        .I2(\int_ctrl_reg_n_0_[31] ),
        .O(\int_ctrl[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \int_ctrl[31]_i_3 
       (.I0(\waddr_reg_n_0_[0] ),
        .I1(\waddr_reg_n_0_[1] ),
        .I2(wstate[1]),
        .I3(wstate[0]),
        .I4(s_axi_CTRL_WVALID),
        .O(\int_ctrl[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[3]_i_1 
       (.I0(s_axi_CTRL_WDATA[3]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(\int_ctrl_reg_n_0_[3] ),
        .O(\int_ctrl[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[4]_i_1 
       (.I0(s_axi_CTRL_WDATA[4]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(\int_ctrl_reg_n_0_[4] ),
        .O(\int_ctrl[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[5]_i_1 
       (.I0(s_axi_CTRL_WDATA[5]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(\int_ctrl_reg_n_0_[5] ),
        .O(\int_ctrl[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[6]_i_1 
       (.I0(s_axi_CTRL_WDATA[6]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(\int_ctrl_reg_n_0_[6] ),
        .O(\int_ctrl[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[7]_i_1 
       (.I0(s_axi_CTRL_WDATA[7]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(\int_ctrl_reg_n_0_[7] ),
        .O(\int_ctrl[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[8]_i_1 
       (.I0(s_axi_CTRL_WDATA[8]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(\int_ctrl_reg_n_0_[8] ),
        .O(\int_ctrl[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ctrl[9]_i_1 
       (.I0(s_axi_CTRL_WDATA[9]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(\int_ctrl_reg_n_0_[9] ),
        .O(\int_ctrl[9]_i_1_n_0 ));
  FDRE \int_ctrl_reg[0] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[0]_i_1_n_0 ),
        .Q(ctrl),
        .R(SR));
  FDRE \int_ctrl_reg[10] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[10]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[10] ),
        .R(SR));
  FDRE \int_ctrl_reg[11] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[11]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[11] ),
        .R(SR));
  FDRE \int_ctrl_reg[12] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[12]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[12] ),
        .R(SR));
  FDRE \int_ctrl_reg[13] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[13]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[13] ),
        .R(SR));
  FDRE \int_ctrl_reg[14] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[14]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[14] ),
        .R(SR));
  FDRE \int_ctrl_reg[15] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[15]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[15] ),
        .R(SR));
  FDRE \int_ctrl_reg[16] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[16]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[16] ),
        .R(SR));
  FDRE \int_ctrl_reg[17] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[17]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[17] ),
        .R(SR));
  FDRE \int_ctrl_reg[18] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[18]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[18] ),
        .R(SR));
  FDRE \int_ctrl_reg[19] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[19]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[19] ),
        .R(SR));
  FDRE \int_ctrl_reg[1] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[1]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[1] ),
        .R(SR));
  FDRE \int_ctrl_reg[20] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[20]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[20] ),
        .R(SR));
  FDRE \int_ctrl_reg[21] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[21]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[21] ),
        .R(SR));
  FDRE \int_ctrl_reg[22] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[22]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[22] ),
        .R(SR));
  FDRE \int_ctrl_reg[23] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[23]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[23] ),
        .R(SR));
  FDRE \int_ctrl_reg[24] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[24]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[24] ),
        .R(SR));
  FDRE \int_ctrl_reg[25] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[25]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[25] ),
        .R(SR));
  FDRE \int_ctrl_reg[26] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[26]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[26] ),
        .R(SR));
  FDRE \int_ctrl_reg[27] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[27]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[27] ),
        .R(SR));
  FDRE \int_ctrl_reg[28] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[28]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[28] ),
        .R(SR));
  FDRE \int_ctrl_reg[29] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[29]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[29] ),
        .R(SR));
  FDRE \int_ctrl_reg[2] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[2]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[2] ),
        .R(SR));
  FDRE \int_ctrl_reg[30] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[30]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[30] ),
        .R(SR));
  FDRE \int_ctrl_reg[31] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[31]_i_2_n_0 ),
        .Q(\int_ctrl_reg_n_0_[31] ),
        .R(SR));
  FDRE \int_ctrl_reg[3] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[3]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[3] ),
        .R(SR));
  FDRE \int_ctrl_reg[4] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[4]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[4] ),
        .R(SR));
  FDRE \int_ctrl_reg[5] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[5]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[5] ),
        .R(SR));
  FDRE \int_ctrl_reg[6] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[6]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[6] ),
        .R(SR));
  FDRE \int_ctrl_reg[7] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[7]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[7] ),
        .R(SR));
  FDRE \int_ctrl_reg[8] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[8]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[8] ),
        .R(SR));
  FDRE \int_ctrl_reg[9] 
       (.C(ap_clk),
        .CE(\int_ctrl[31]_i_1_n_0 ),
        .D(\int_ctrl[9]_i_1_n_0 ),
        .Q(\int_ctrl_reg_n_0_[9] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    int_gie_i_1
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(\int_ier[1]_i_2_n_0 ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(s_axi_CTRL_WSTRB[0]),
        .I4(\waddr_reg_n_0_[2] ),
        .I5(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  FDRE int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \int_ier[0]_i_1 
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(\int_ier[1]_i_2_n_0 ),
        .I5(\int_ier_reg_n_0_[0] ),
        .O(\int_ier[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \int_ier[1]_i_1 
       (.I0(s_axi_CTRL_WDATA[1]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(\int_ier[1]_i_2_n_0 ),
        .I5(p_0_in),
        .O(\int_ier[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    \int_ier[1]_i_2 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(s_axi_CTRL_WVALID),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .I4(\waddr_reg_n_0_[1] ),
        .I5(\waddr_reg_n_0_[0] ),
        .O(\int_ier[1]_i_2_n_0 ));
  FDRE \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[0]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(SR));
  FDRE \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[1]_i_1_n_0 ),
        .Q(p_0_in),
        .R(SR));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(int_isr6_out),
        .I2(ap_done),
        .I3(\int_ier_reg_n_0_[0] ),
        .I4(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \int_isr[0]_i_2 
       (.I0(s_axi_CTRL_WSTRB[0]),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .O(int_isr6_out));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_CTRL_WDATA[1]),
        .I1(int_isr6_out),
        .I2(ap_done),
        .I3(p_0_in),
        .I4(p_1_in),
        .O(\int_isr[1]_i_1_n_0 ));
  FDRE \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(SR));
  FDRE \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(p_1_in),
        .R(SR));
  LUT3 #(
    .INIT(8'hA8)) 
    interrupt_INST_0
       (.I0(int_gie_reg_n_0),
        .I1(p_1_in),
        .I2(\int_isr_reg_n_0_[0] ),
        .O(interrupt));
  LUT6 #(
    .INIT(64'h8F0F8F0F880F8800)) 
    \rdata[0]_i_1 
       (.I0(s_axi_CTRL_ARADDR[4]),
        .I1(ctrl),
        .I2(\rdata[0]_i_2_n_0 ),
        .I3(\rdata[0]_i_3_n_0 ),
        .I4(\int_isr_reg_n_0_[0] ),
        .I5(\rdata[0]_i_4_n_0 ),
        .O(rdata[0]));
  LUT6 #(
    .INIT(64'hFFFFF0F1FFFFF4F5)) 
    \rdata[0]_i_2 
       (.I0(s_axi_CTRL_ARADDR[3]),
        .I1(s_axi_CTRL_ARADDR[2]),
        .I2(\rdata[0]_i_5_n_0 ),
        .I3(ap_start),
        .I4(s_axi_CTRL_ARADDR[4]),
        .I5(int_gie_reg_n_0),
        .O(\rdata[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00010101)) 
    \rdata[0]_i_3 
       (.I0(s_axi_CTRL_ARADDR[1]),
        .I1(s_axi_CTRL_ARADDR[0]),
        .I2(s_axi_CTRL_ARADDR[2]),
        .I3(s_axi_CTRL_ARADDR[4]),
        .I4(s_axi_CTRL_ARADDR[3]),
        .O(\rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFEEFFFF)) 
    \rdata[0]_i_4 
       (.I0(s_axi_CTRL_ARADDR[1]),
        .I1(s_axi_CTRL_ARADDR[0]),
        .I2(s_axi_CTRL_ARADDR[2]),
        .I3(s_axi_CTRL_ARADDR[4]),
        .I4(s_axi_CTRL_ARADDR[3]),
        .I5(\int_ier_reg_n_0_[0] ),
        .O(\rdata[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rdata[0]_i_5 
       (.I0(s_axi_CTRL_ARADDR[1]),
        .I1(s_axi_CTRL_ARADDR[0]),
        .O(\rdata[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[1]_i_1 
       (.I0(\rdata[1]_i_2_n_0 ),
        .I1(\rdata[7]_i_2_n_0 ),
        .I2(\int_ctrl_reg_n_0_[1] ),
        .O(rdata[1]));
  LUT6 #(
    .INIT(64'hBA8A3030BA8A0000)) 
    \rdata[1]_i_2 
       (.I0(int_ap_done),
        .I1(\rdata[1]_i_3_n_0 ),
        .I2(s_axi_CTRL_ARADDR[3]),
        .I3(p_0_in),
        .I4(\rdata[0]_i_3_n_0 ),
        .I5(p_1_in),
        .O(\rdata[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rdata[1]_i_3 
       (.I0(s_axi_CTRL_ARADDR[4]),
        .I1(s_axi_CTRL_ARADDR[0]),
        .I2(s_axi_CTRL_ARADDR[1]),
        .O(\rdata[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h44F44444)) 
    \rdata[2]_i_1 
       (.I0(\rdata[7]_i_2_n_0 ),
        .I1(\int_ctrl_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(ap_start),
        .I4(\rdata[7]_i_3_n_0 ),
        .O(rdata[2]));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000000)) 
    \rdata[31]_i_1 
       (.I0(s_axi_CTRL_ARADDR[1]),
        .I1(s_axi_CTRL_ARADDR[0]),
        .I2(s_axi_CTRL_ARADDR[2]),
        .I3(s_axi_CTRL_ARADDR[4]),
        .I4(s_axi_CTRL_ARADDR[3]),
        .I5(ar_hs),
        .O(\rdata[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \rdata[31]_i_2 
       (.I0(s_axi_CTRL_ARVALID),
        .I1(s_axi_CTRL_RVALID),
        .I2(ap_rst_n),
        .O(ar_hs));
  LUT4 #(
    .INIT(16'h8F88)) 
    \rdata[3]_i_1 
       (.I0(\rdata[7]_i_3_n_0 ),
        .I1(ap_done),
        .I2(\rdata[7]_i_2_n_0 ),
        .I3(\int_ctrl_reg_n_0_[3] ),
        .O(rdata[3]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \rdata[3]_i_2 
       (.I0(Q[2]),
        .I1(\ap_CS_fsm_reg[0] ),
        .I2(\outStream_V_dest_V_1_state_reg[1] ),
        .I3(\outStream_V_strb_V_1_state_reg[1] ),
        .I4(\outStream_V_user_V_1_state_reg[1] ),
        .O(ap_done));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rdata[3]_i_3 
       (.I0(\outStream_V_data_V_1_state_reg[1] ),
        .I1(\outStream_V_last_V_1_state_reg[1] ),
        .I2(\outStream_V_keep_V_1_state_reg[1] ),
        .I3(\outStream_V_id_V_1_state_reg[1] ),
        .O(\ap_CS_fsm_reg[0] ));
  LUT4 #(
    .INIT(16'hF444)) 
    \rdata[7]_i_1 
       (.I0(\rdata[7]_i_2_n_0 ),
        .I1(\int_ctrl_reg_n_0_[7] ),
        .I2(\rdata[7]_i_3_n_0 ),
        .I3(int_auto_restart),
        .O(rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \rdata[7]_i_2 
       (.I0(s_axi_CTRL_ARADDR[3]),
        .I1(s_axi_CTRL_ARADDR[4]),
        .I2(s_axi_CTRL_ARADDR[2]),
        .I3(s_axi_CTRL_ARADDR[0]),
        .I4(s_axi_CTRL_ARADDR[1]),
        .O(\rdata[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \rdata[7]_i_3 
       (.I0(s_axi_CTRL_ARADDR[1]),
        .I1(s_axi_CTRL_ARADDR[0]),
        .I2(s_axi_CTRL_ARADDR[4]),
        .I3(s_axi_CTRL_ARADDR[2]),
        .I4(s_axi_CTRL_ARADDR[3]),
        .O(\rdata[7]_i_3_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[0]),
        .Q(s_axi_CTRL_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_ctrl_reg_n_0_[10] ),
        .Q(s_axi_CTRL_RDATA[10]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_ctrl_reg_n_0_[11] ),
        .Q(s_axi_CTRL_RDATA[11]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_ctrl_reg_n_0_[12] ),
        .Q(s_axi_CTRL_RDATA[12]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_ctrl_reg_n_0_[13] ),
        .Q(s_axi_CTRL_RDATA[13]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_ctrl_reg_n_0_[14] ),
        .Q(s_axi_CTRL_RDATA[14]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_ctrl_reg_n_0_[15] ),
        .Q(s_axi_CTRL_RDATA[15]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_ctrl_reg_n_0_[16] ),
        .Q(s_axi_CTRL_RDATA[16]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_ctrl_reg_n_0_[17] ),
        .Q(s_axi_CTRL_RDATA[17]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_ctrl_reg_n_0_[18] ),
        .Q(s_axi_CTRL_RDATA[18]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_ctrl_reg_n_0_[19] ),
        .Q(s_axi_CTRL_RDATA[19]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[1]),
        .Q(s_axi_CTRL_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_ctrl_reg_n_0_[20] ),
        .Q(s_axi_CTRL_RDATA[20]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_ctrl_reg_n_0_[21] ),
        .Q(s_axi_CTRL_RDATA[21]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_ctrl_reg_n_0_[22] ),
        .Q(s_axi_CTRL_RDATA[22]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_ctrl_reg_n_0_[23] ),
        .Q(s_axi_CTRL_RDATA[23]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_ctrl_reg_n_0_[24] ),
        .Q(s_axi_CTRL_RDATA[24]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[25] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_ctrl_reg_n_0_[25] ),
        .Q(s_axi_CTRL_RDATA[25]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[26] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_ctrl_reg_n_0_[26] ),
        .Q(s_axi_CTRL_RDATA[26]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_ctrl_reg_n_0_[27] ),
        .Q(s_axi_CTRL_RDATA[27]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[28] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_ctrl_reg_n_0_[28] ),
        .Q(s_axi_CTRL_RDATA[28]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[29] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_ctrl_reg_n_0_[29] ),
        .Q(s_axi_CTRL_RDATA[29]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[2]),
        .Q(s_axi_CTRL_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[30] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_ctrl_reg_n_0_[30] ),
        .Q(s_axi_CTRL_RDATA[30]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_ctrl_reg_n_0_[31] ),
        .Q(s_axi_CTRL_RDATA[31]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[3]),
        .Q(s_axi_CTRL_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_ctrl_reg_n_0_[4] ),
        .Q(s_axi_CTRL_RDATA[4]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_ctrl_reg_n_0_[5] ),
        .Q(s_axi_CTRL_RDATA[5]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_ctrl_reg_n_0_[6] ),
        .Q(s_axi_CTRL_RDATA[6]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[7]),
        .Q(s_axi_CTRL_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_ctrl_reg_n_0_[8] ),
        .Q(s_axi_CTRL_RDATA[8]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\int_ctrl_reg_n_0_[9] ),
        .Q(s_axi_CTRL_RDATA[9]),
        .R(\rdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    \rstate[0]_i_1 
       (.I0(s_axi_CTRL_ARVALID),
        .I1(s_axi_CTRL_RREADY),
        .I2(s_axi_CTRL_RVALID),
        .O(\rstate[0]_i_1_n_0 ));
  FDRE \rstate_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\rstate[0]_i_1_n_0 ),
        .Q(s_axi_CTRL_RVALID),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_CTRL_ARREADY_INST_0
       (.I0(ap_rst_n),
        .I1(s_axi_CTRL_RVALID),
        .O(s_axi_CTRL_ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h04)) 
    s_axi_CTRL_AWREADY_INST_0
       (.I0(wstate[1]),
        .I1(ap_rst_n),
        .I2(wstate[0]),
        .O(s_axi_CTRL_AWREADY));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_CTRL_BVALID_INST_0
       (.I0(wstate[1]),
        .I1(wstate[0]),
        .O(s_axi_CTRL_BVALID));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_CTRL_WREADY_INST_0
       (.I0(wstate[0]),
        .I1(wstate[1]),
        .O(s_axi_CTRL_WREADY));
  LUT4 #(
    .INIT(16'h0020)) 
    \waddr[4]_i_1 
       (.I0(s_axi_CTRL_AWVALID),
        .I1(wstate[0]),
        .I2(ap_rst_n),
        .I3(wstate[1]),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_AWADDR[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_AWADDR[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_AWADDR[4]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0074)) 
    \wstate[0]_i_1 
       (.I0(s_axi_CTRL_WVALID),
        .I1(wstate[0]),
        .I2(s_axi_CTRL_AWVALID),
        .I3(wstate[1]),
        .O(\wstate[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0A30)) 
    \wstate[1]_i_1 
       (.I0(s_axi_CTRL_WVALID),
        .I1(s_axi_CTRL_BREADY),
        .I2(wstate[1]),
        .I3(wstate[0]),
        .O(\wstate[1]_i_1_n_0 ));
  FDRE \wstate_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\wstate[0]_i_1_n_0 ),
        .Q(wstate[0]),
        .R(SR));
  FDRE \wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\wstate[1]_i_1_n_0 ),
        .Q(wstate[1]),
        .R(SR));
  LUT6 #(
    .INIT(64'h8808888888888888)) 
    \x_reg_287[6]_i_1 
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(\exitcond1_reg_885_reg[0] ),
        .I4(Q[1]),
        .I5(\inStream_V_data_V_0_state_reg[0] ),
        .O(\x_reg_287_reg[0] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d92x92_pbkb
   (D,
    E,
    lineBuffer_0_we0,
    WEBWE,
    p_76_in,
    \window_1_2_1_reg_333_reg[31] ,
    ap_clk,
    Q,
    \inStream_V_data_V_0_payload_B_reg[31] ,
    ram_reg,
    \inStream_V_data_V_0_state_reg[0] ,
    ap_enable_reg_pp3_iter0,
    \ap_CS_fsm_reg[7] ,
    \ap_CS_fsm_reg[5] ,
    ap_enable_reg_pp0_iter1,
    \exitcond1_reg_885_reg[0] ,
    \inStream_V_data_V_0_state_reg[0]_0 ,
    ap_enable_reg_pp3_iter1_reg,
    \exitcond_flatten8_reg_1008_reg[0] ,
    \x_assign_reg_390_reg[5] ,
    \x4_reg_357_reg[1] ,
    \x_reg_287_reg[6] ,
    \ap_CS_fsm_reg[7]_0 ,
    \x_assign_reg_390_reg[2] ,
    \x_assign_reg_390_reg[5]_0 ,
    ap_enable_reg_pp2_iter0,
    \x_assign_reg_390_reg[6] ,
    tmp_10_reg_917);
  output [31:0]D;
  output [0:0]E;
  output lineBuffer_0_we0;
  output [0:0]WEBWE;
  output p_76_in;
  output [31:0]\window_1_2_1_reg_333_reg[31] ;
  input ap_clk;
  input [6:0]Q;
  input [31:0]\inStream_V_data_V_0_payload_B_reg[31] ;
  input [31:0]ram_reg;
  input \inStream_V_data_V_0_state_reg[0] ;
  input ap_enable_reg_pp3_iter0;
  input [2:0]\ap_CS_fsm_reg[7] ;
  input \ap_CS_fsm_reg[5] ;
  input ap_enable_reg_pp0_iter1;
  input \exitcond1_reg_885_reg[0] ;
  input \inStream_V_data_V_0_state_reg[0]_0 ;
  input ap_enable_reg_pp3_iter1_reg;
  input \exitcond_flatten8_reg_1008_reg[0] ;
  input [4:0]\x_assign_reg_390_reg[5] ;
  input [1:0]\x4_reg_357_reg[1] ;
  input [6:0]\x_reg_287_reg[6] ;
  input \ap_CS_fsm_reg[7]_0 ;
  input \x_assign_reg_390_reg[2] ;
  input \x_assign_reg_390_reg[5]_0 ;
  input ap_enable_reg_pp2_iter0;
  input \x_assign_reg_390_reg[6] ;
  input tmp_10_reg_917;

  wire [31:0]D;
  wire [0:0]E;
  wire [6:0]Q;
  wire [0:0]WEBWE;
  wire \ap_CS_fsm_reg[5] ;
  wire [2:0]\ap_CS_fsm_reg[7] ;
  wire \ap_CS_fsm_reg[7]_0 ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp2_iter0;
  wire ap_enable_reg_pp3_iter0;
  wire ap_enable_reg_pp3_iter1_reg;
  wire \exitcond1_reg_885_reg[0] ;
  wire \exitcond_flatten8_reg_1008_reg[0] ;
  wire [31:0]\inStream_V_data_V_0_payload_B_reg[31] ;
  wire \inStream_V_data_V_0_state_reg[0] ;
  wire \inStream_V_data_V_0_state_reg[0]_0 ;
  wire lineBuffer_0_we0;
  wire p_76_in;
  wire [31:0]ram_reg;
  wire tmp_10_reg_917;
  wire [31:0]\window_1_2_1_reg_333_reg[31] ;
  wire [1:0]\x4_reg_357_reg[1] ;
  wire \x_assign_reg_390_reg[2] ;
  wire [4:0]\x_assign_reg_390_reg[5] ;
  wire \x_assign_reg_390_reg[5]_0 ;
  wire \x_assign_reg_390_reg[6] ;
  wire [6:0]\x_reg_287_reg[6] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d92x92_pbkb_ram_1 cnn_pool_d92x92_pbkb_ram_U
       (.D(D),
        .E(E),
        .Q(Q),
        .WEA(lineBuffer_0_we0),
        .WEBWE(WEBWE),
        .\ap_CS_fsm_reg[5] (\ap_CS_fsm_reg[5] ),
        .\ap_CS_fsm_reg[7] (\ap_CS_fsm_reg[7] ),
        .\ap_CS_fsm_reg[7]_0 (\ap_CS_fsm_reg[7]_0 ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp2_iter0(ap_enable_reg_pp2_iter0),
        .ap_enable_reg_pp3_iter0(ap_enable_reg_pp3_iter0),
        .ap_enable_reg_pp3_iter1_reg(ap_enable_reg_pp3_iter1_reg),
        .\exitcond1_reg_885_reg[0] (\exitcond1_reg_885_reg[0] ),
        .\exitcond_flatten8_reg_1008_reg[0] (\exitcond_flatten8_reg_1008_reg[0] ),
        .\inStream_V_data_V_0_payload_B_reg[31] (\inStream_V_data_V_0_payload_B_reg[31] ),
        .\inStream_V_data_V_0_state_reg[0] (\inStream_V_data_V_0_state_reg[0] ),
        .\inStream_V_data_V_0_state_reg[0]_0 (\inStream_V_data_V_0_state_reg[0]_0 ),
        .p_76_in(p_76_in),
        .ram_reg_0(ram_reg),
        .tmp_10_reg_917(tmp_10_reg_917),
        .\window_1_2_1_reg_333_reg[31] (\window_1_2_1_reg_333_reg[31] ),
        .\x4_reg_357_reg[1] (\x4_reg_357_reg[1] ),
        .\x_assign_reg_390_reg[2] (\x_assign_reg_390_reg[2] ),
        .\x_assign_reg_390_reg[5] (\x_assign_reg_390_reg[5] ),
        .\x_assign_reg_390_reg[5]_0 (\x_assign_reg_390_reg[5]_0 ),
        .\x_assign_reg_390_reg[6] (\x_assign_reg_390_reg[6] ),
        .\x_reg_287_reg[6] (\x_reg_287_reg[6] ));
endmodule

(* ORIG_REF_NAME = "cnn_pool_d92x92_pbkb" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d92x92_pbkb_0
   (D,
    ram_reg,
    lineBuffer_1_we0,
    ram_reg_0,
    ram_reg_1,
    p_72_in,
    ram_reg_2,
    ram_reg_3,
    \lineBuffer_0_addr_2_reg_1026_reg[6] ,
    \lineBuffer_0_addr_2_reg_1026_reg[6]_0 ,
    ap_clk,
    Q,
    \window_2_2_2_fu_172_reg[31] ,
    ap_enable_reg_pp3_iter2,
    \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg[0] ,
    \inStream_V_data_V_0_state_reg[0] ,
    \ap_CS_fsm_reg[7] ,
    \exitcond4_reg_894_reg[0] ,
    ap_enable_reg_pp1_iter1,
    ap_enable_reg_pp3_iter0,
    tmp_7_reg_1038,
    ap_enable_reg_pp3_iter1_reg,
    \exitcond_flatten8_reg_1008_reg[0] ,
    ap_pipeline_reg_pp3_iter2_tmp_reg_1022,
    ap_enable_reg_pp3_iter3_reg,
    ap_pipeline_reg_pp3_iter1_tmp_reg_1022,
    \outStream_V_data_V_1_state_reg[1] ,
    \x_assign_reg_390_reg[6] ,
    \x4_reg_357_reg[1] ,
    \x1_reg_299_reg[6] ,
    ap_enable_reg_pp2_iter0,
    \inStream_V_data_V_0_payload_B_reg[31] ,
    \inStream_V_data_V_0_payload_A_reg[31] ,
    inStream_V_data_V_0_sel);
  output [31:0]D;
  output [31:0]ram_reg;
  output lineBuffer_1_we0;
  output ram_reg_0;
  output ram_reg_1;
  output p_72_in;
  output ram_reg_2;
  output ram_reg_3;
  output \lineBuffer_0_addr_2_reg_1026_reg[6] ;
  output \lineBuffer_0_addr_2_reg_1026_reg[6]_0 ;
  input ap_clk;
  input [6:0]Q;
  input [31:0]\window_2_2_2_fu_172_reg[31] ;
  input ap_enable_reg_pp3_iter2;
  input \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg[0] ;
  input \inStream_V_data_V_0_state_reg[0] ;
  input [2:0]\ap_CS_fsm_reg[7] ;
  input \exitcond4_reg_894_reg[0] ;
  input ap_enable_reg_pp1_iter1;
  input ap_enable_reg_pp3_iter0;
  input tmp_7_reg_1038;
  input ap_enable_reg_pp3_iter1_reg;
  input \exitcond_flatten8_reg_1008_reg[0] ;
  input ap_pipeline_reg_pp3_iter2_tmp_reg_1022;
  input ap_enable_reg_pp3_iter3_reg;
  input ap_pipeline_reg_pp3_iter1_tmp_reg_1022;
  input [0:0]\outStream_V_data_V_1_state_reg[1] ;
  input [6:0]\x_assign_reg_390_reg[6] ;
  input [1:0]\x4_reg_357_reg[1] ;
  input [6:0]\x1_reg_299_reg[6] ;
  input ap_enable_reg_pp2_iter0;
  input [31:0]\inStream_V_data_V_0_payload_B_reg[31] ;
  input [31:0]\inStream_V_data_V_0_payload_A_reg[31] ;
  input inStream_V_data_V_0_sel;

  wire [31:0]D;
  wire [6:0]Q;
  wire [2:0]\ap_CS_fsm_reg[7] ;
  wire ap_clk;
  wire ap_enable_reg_pp1_iter1;
  wire ap_enable_reg_pp2_iter0;
  wire ap_enable_reg_pp3_iter0;
  wire ap_enable_reg_pp3_iter1_reg;
  wire ap_enable_reg_pp3_iter2;
  wire ap_enable_reg_pp3_iter3_reg;
  wire \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg[0] ;
  wire ap_pipeline_reg_pp3_iter1_tmp_reg_1022;
  wire ap_pipeline_reg_pp3_iter2_tmp_reg_1022;
  wire \exitcond4_reg_894_reg[0] ;
  wire \exitcond_flatten8_reg_1008_reg[0] ;
  wire [31:0]\inStream_V_data_V_0_payload_A_reg[31] ;
  wire [31:0]\inStream_V_data_V_0_payload_B_reg[31] ;
  wire inStream_V_data_V_0_sel;
  wire \inStream_V_data_V_0_state_reg[0] ;
  wire \lineBuffer_0_addr_2_reg_1026_reg[6] ;
  wire \lineBuffer_0_addr_2_reg_1026_reg[6]_0 ;
  wire lineBuffer_1_we0;
  wire [0:0]\outStream_V_data_V_1_state_reg[1] ;
  wire p_72_in;
  wire [31:0]ram_reg;
  wire ram_reg_0;
  wire ram_reg_1;
  wire ram_reg_2;
  wire ram_reg_3;
  wire tmp_7_reg_1038;
  wire [31:0]\window_2_2_2_fu_172_reg[31] ;
  wire [6:0]\x1_reg_299_reg[6] ;
  wire [1:0]\x4_reg_357_reg[1] ;
  wire [6:0]\x_assign_reg_390_reg[6] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d92x92_pbkb_ram cnn_pool_d92x92_pbkb_ram_U
       (.D(D),
        .Q(Q),
        .WEA(lineBuffer_1_we0),
        .\ap_CS_fsm_reg[7] (\ap_CS_fsm_reg[7] ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp1_iter1(ap_enable_reg_pp1_iter1),
        .ap_enable_reg_pp2_iter0(ap_enable_reg_pp2_iter0),
        .ap_enable_reg_pp3_iter0(ap_enable_reg_pp3_iter0),
        .ap_enable_reg_pp3_iter1_reg(ap_enable_reg_pp3_iter1_reg),
        .ap_enable_reg_pp3_iter2(ap_enable_reg_pp3_iter2),
        .ap_enable_reg_pp3_iter3_reg(ap_enable_reg_pp3_iter3_reg),
        .\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg[0] (\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg[0] ),
        .ap_pipeline_reg_pp3_iter1_tmp_reg_1022(ap_pipeline_reg_pp3_iter1_tmp_reg_1022),
        .ap_pipeline_reg_pp3_iter2_tmp_reg_1022(ap_pipeline_reg_pp3_iter2_tmp_reg_1022),
        .\exitcond4_reg_894_reg[0] (\exitcond4_reg_894_reg[0] ),
        .\exitcond_flatten8_reg_1008_reg[0] (\exitcond_flatten8_reg_1008_reg[0] ),
        .\inStream_V_data_V_0_payload_A_reg[31] (\inStream_V_data_V_0_payload_A_reg[31] ),
        .\inStream_V_data_V_0_payload_B_reg[31] (\inStream_V_data_V_0_payload_B_reg[31] ),
        .inStream_V_data_V_0_sel(inStream_V_data_V_0_sel),
        .\inStream_V_data_V_0_state_reg[0] (\inStream_V_data_V_0_state_reg[0] ),
        .\lineBuffer_0_addr_2_reg_1026_reg[6] (\lineBuffer_0_addr_2_reg_1026_reg[6] ),
        .\lineBuffer_0_addr_2_reg_1026_reg[6]_0 (\lineBuffer_0_addr_2_reg_1026_reg[6]_0 ),
        .\outStream_V_data_V_1_state_reg[1] (\outStream_V_data_V_1_state_reg[1] ),
        .p_72_in(p_72_in),
        .ram_reg_0(ram_reg),
        .ram_reg_1(ram_reg_0),
        .ram_reg_2(ram_reg_1),
        .ram_reg_3(ram_reg_2),
        .ram_reg_4(ram_reg_3),
        .tmp_7_reg_1038(tmp_7_reg_1038),
        .\window_2_2_2_fu_172_reg[31] (\window_2_2_2_fu_172_reg[31] ),
        .\x1_reg_299_reg[6] (\x1_reg_299_reg[6] ),
        .\x4_reg_357_reg[1] (\x4_reg_357_reg[1] ),
        .\x_assign_reg_390_reg[6] (\x_assign_reg_390_reg[6] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d92x92_pbkb_ram
   (D,
    ram_reg_0,
    WEA,
    ram_reg_1,
    ram_reg_2,
    p_72_in,
    ram_reg_3,
    ram_reg_4,
    \lineBuffer_0_addr_2_reg_1026_reg[6] ,
    \lineBuffer_0_addr_2_reg_1026_reg[6]_0 ,
    ap_clk,
    Q,
    \window_2_2_2_fu_172_reg[31] ,
    ap_enable_reg_pp3_iter2,
    \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg[0] ,
    \inStream_V_data_V_0_state_reg[0] ,
    \ap_CS_fsm_reg[7] ,
    \exitcond4_reg_894_reg[0] ,
    ap_enable_reg_pp1_iter1,
    ap_enable_reg_pp3_iter0,
    tmp_7_reg_1038,
    ap_enable_reg_pp3_iter1_reg,
    \exitcond_flatten8_reg_1008_reg[0] ,
    ap_pipeline_reg_pp3_iter2_tmp_reg_1022,
    ap_enable_reg_pp3_iter3_reg,
    ap_pipeline_reg_pp3_iter1_tmp_reg_1022,
    \outStream_V_data_V_1_state_reg[1] ,
    \x_assign_reg_390_reg[6] ,
    \x4_reg_357_reg[1] ,
    \x1_reg_299_reg[6] ,
    ap_enable_reg_pp2_iter0,
    \inStream_V_data_V_0_payload_B_reg[31] ,
    \inStream_V_data_V_0_payload_A_reg[31] ,
    inStream_V_data_V_0_sel);
  output [31:0]D;
  output [31:0]ram_reg_0;
  output [0:0]WEA;
  output ram_reg_1;
  output ram_reg_2;
  output p_72_in;
  output ram_reg_3;
  output ram_reg_4;
  output \lineBuffer_0_addr_2_reg_1026_reg[6] ;
  output \lineBuffer_0_addr_2_reg_1026_reg[6]_0 ;
  input ap_clk;
  input [6:0]Q;
  input [31:0]\window_2_2_2_fu_172_reg[31] ;
  input ap_enable_reg_pp3_iter2;
  input \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg[0] ;
  input \inStream_V_data_V_0_state_reg[0] ;
  input [2:0]\ap_CS_fsm_reg[7] ;
  input \exitcond4_reg_894_reg[0] ;
  input ap_enable_reg_pp1_iter1;
  input ap_enable_reg_pp3_iter0;
  input tmp_7_reg_1038;
  input ap_enable_reg_pp3_iter1_reg;
  input \exitcond_flatten8_reg_1008_reg[0] ;
  input ap_pipeline_reg_pp3_iter2_tmp_reg_1022;
  input ap_enable_reg_pp3_iter3_reg;
  input ap_pipeline_reg_pp3_iter1_tmp_reg_1022;
  input [0:0]\outStream_V_data_V_1_state_reg[1] ;
  input [6:0]\x_assign_reg_390_reg[6] ;
  input [1:0]\x4_reg_357_reg[1] ;
  input [6:0]\x1_reg_299_reg[6] ;
  input ap_enable_reg_pp2_iter0;
  input [31:0]\inStream_V_data_V_0_payload_B_reg[31] ;
  input [31:0]\inStream_V_data_V_0_payload_A_reg[31] ;
  input inStream_V_data_V_0_sel;

  wire [31:0]D;
  wire [6:0]Q;
  wire [0:0]WEA;
  wire [2:0]\ap_CS_fsm_reg[7] ;
  wire ap_clk;
  wire ap_enable_reg_pp1_iter1;
  wire ap_enable_reg_pp2_iter0;
  wire ap_enable_reg_pp3_iter0;
  wire ap_enable_reg_pp3_iter1_reg;
  wire ap_enable_reg_pp3_iter2;
  wire ap_enable_reg_pp3_iter3_reg;
  wire \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg[0] ;
  wire ap_pipeline_reg_pp3_iter1_tmp_reg_1022;
  wire ap_pipeline_reg_pp3_iter2_tmp_reg_1022;
  wire \exitcond4_reg_894_reg[0] ;
  wire \exitcond_flatten8_reg_1008_reg[0] ;
  wire [31:0]\inStream_V_data_V_0_payload_A_reg[31] ;
  wire [31:0]\inStream_V_data_V_0_payload_B_reg[31] ;
  wire inStream_V_data_V_0_sel;
  wire \inStream_V_data_V_0_state_reg[0] ;
  wire \lineBuffer_0_addr_2_reg_1026_reg[6] ;
  wire \lineBuffer_0_addr_2_reg_1026_reg[6]_0 ;
  wire [6:0]lineBuffer_1_address0;
  wire lineBuffer_1_ce0;
  wire lineBuffer_1_we1;
  wire [0:0]\outStream_V_data_V_1_state_reg[1] ;
  wire p_72_in;
  wire [31:0]ram_reg_0;
  wire ram_reg_1;
  wire ram_reg_2;
  wire ram_reg_3;
  wire ram_reg_4;
  wire ram_reg_i_11__0_n_0;
  wire ram_reg_i_50_n_0;
  wire ram_reg_i_51_n_0;
  wire tmp_7_reg_1038;
  wire [31:0]\window_2_2_2_fu_172_reg[31] ;
  wire [6:0]\x1_reg_299_reg[6] ;
  wire [1:0]\x4_reg_357_reg[1] ;
  wire [6:0]\x_assign_reg_390_reg[6] ;
  wire NLW_ram_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_RDADDRECC_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lineBuffer_0_addr_2_reg_1026[6]_i_1 
       (.I0(\x_assign_reg_390_reg[6] [6]),
        .I1(\lineBuffer_0_addr_2_reg_1026_reg[6] ),
        .O(\lineBuffer_0_addr_2_reg_1026_reg[6]_0 ));
  (* CLOCK_DOMAINS = "COMMON" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2944" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    ram_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,lineBuffer_1_address0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,Q,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_ram_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_ram_reg_DBITERR_UNCONNECTED),
        .DIADI(ram_reg_0),
        .DIBDI(\window_2_2_2_fu_172_reg[31] ),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(D),
        .DOBDO(NLW_ram_reg_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(lineBuffer_1_ce0),
        .ENBWREN(lineBuffer_1_we1),
        .INJECTDBITERR(NLW_ram_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_SBITERR_UNCONNECTED),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_reg_i_11__0_n_0,ram_reg_i_11__0_n_0,ram_reg_i_11__0_n_0,ram_reg_i_11__0_n_0}));
  LUT4 #(
    .INIT(16'h0800)) 
    ram_reg_i_10
       (.I0(\inStream_V_data_V_0_state_reg[0] ),
        .I1(\ap_CS_fsm_reg[7] [0]),
        .I2(\exitcond4_reg_894_reg[0] ),
        .I3(ap_enable_reg_pp1_iter1),
        .O(WEA));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_10__0
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [31]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [31]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[31]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_11
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [30]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [30]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[30]));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_i_11__0
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(ram_reg_1),
        .O(ram_reg_i_11__0_n_0));
  LUT4 #(
    .INIT(16'hAA8A)) 
    ram_reg_i_12
       (.I0(\ap_CS_fsm_reg[7] [0]),
        .I1(\exitcond4_reg_894_reg[0] ),
        .I2(ap_enable_reg_pp1_iter1),
        .I3(\inStream_V_data_V_0_state_reg[0] ),
        .O(p_72_in));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_12__0
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [29]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [29]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[29]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_13
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [28]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [28]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[28]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_14
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [27]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [27]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[27]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_15
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [26]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [26]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[26]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_16
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [25]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [25]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[25]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_17
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [24]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [24]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[24]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_18
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [23]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [23]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[23]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_19
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [22]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [22]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[22]));
  LUT6 #(
    .INIT(64'hFFFFFF40FF40FF40)) 
    ram_reg_i_1__0
       (.I0(ram_reg_1),
        .I1(ap_enable_reg_pp3_iter0),
        .I2(\ap_CS_fsm_reg[7] [2]),
        .I3(ram_reg_2),
        .I4(p_72_in),
        .I5(ap_enable_reg_pp1_iter1),
        .O(lineBuffer_1_ce0));
  LUT3 #(
    .INIT(8'h02)) 
    ram_reg_i_2
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1008_reg[0] ),
        .I2(ram_reg_1),
        .O(lineBuffer_1_we1));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_20
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [21]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [21]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[21]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_21
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [20]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [20]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[20]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_22
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [19]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [19]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[19]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_23
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [18]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [18]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[18]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_24
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [17]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [17]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[17]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_25
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [16]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [16]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[16]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_26
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [15]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [15]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_27
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [14]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [14]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_28
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [13]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [13]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_29
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [12]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [12]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_30
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [11]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [11]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_31
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [10]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [10]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_32
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [9]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [9]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[9]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_33
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [8]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [8]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_34
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [7]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [7]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_35
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [6]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [6]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_36
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [5]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [5]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_37
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [4]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [4]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_38
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [3]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [3]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_39
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [2]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [2]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[2]));
  LUT6 #(
    .INIT(64'hBFBFBF80BF80BF80)) 
    ram_reg_i_3__0
       (.I0(\lineBuffer_0_addr_2_reg_1026_reg[6]_0 ),
        .I1(\ap_CS_fsm_reg[7] [2]),
        .I2(ap_enable_reg_pp3_iter0),
        .I3(\x1_reg_299_reg[6] [6]),
        .I4(ap_enable_reg_pp2_iter0),
        .I5(\ap_CS_fsm_reg[7] [1]),
        .O(lineBuffer_1_address0[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_40
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [1]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [1]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_41
       (.I0(\inStream_V_data_V_0_payload_B_reg[31] [0]),
        .I1(\inStream_V_data_V_0_payload_A_reg[31] [0]),
        .I2(inStream_V_data_V_0_sel),
        .O(ram_reg_0[0]));
  LUT5 #(
    .INIT(32'hAAAABAAA)) 
    ram_reg_i_44
       (.I0(ram_reg_i_50_n_0),
        .I1(\inStream_V_data_V_0_state_reg[0] ),
        .I2(tmp_7_reg_1038),
        .I3(ap_enable_reg_pp3_iter1_reg),
        .I4(\exitcond_flatten8_reg_1008_reg[0] ),
        .O(ram_reg_1));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_45
       (.I0(\ap_CS_fsm_reg[7] [1]),
        .I1(ap_enable_reg_pp2_iter0),
        .O(ram_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    ram_reg_i_47
       (.I0(\x_assign_reg_390_reg[6] [5]),
        .I1(\x_assign_reg_390_reg[6] [6]),
        .I2(\x_assign_reg_390_reg[6] [4]),
        .I3(ram_reg_i_51_n_0),
        .O(\lineBuffer_0_addr_2_reg_1026_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'hB)) 
    ram_reg_i_48
       (.I0(\lineBuffer_0_addr_2_reg_1026_reg[6] ),
        .I1(\x_assign_reg_390_reg[6] [2]),
        .O(ram_reg_4));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_49
       (.I0(\ap_CS_fsm_reg[7] [2]),
        .I1(ap_enable_reg_pp3_iter0),
        .O(ram_reg_3));
  LUT6 #(
    .INIT(64'h8080BF80BF80BF80)) 
    ram_reg_i_4__0
       (.I0(\x_assign_reg_390_reg[6] [5]),
        .I1(\ap_CS_fsm_reg[7] [2]),
        .I2(ap_enable_reg_pp3_iter0),
        .I3(\x1_reg_299_reg[6] [5]),
        .I4(ap_enable_reg_pp2_iter0),
        .I5(\ap_CS_fsm_reg[7] [1]),
        .O(lineBuffer_1_address0[5]));
  LUT5 #(
    .INIT(32'h0000F888)) 
    ram_reg_i_50
       (.I0(ap_pipeline_reg_pp3_iter2_tmp_reg_1022),
        .I1(ap_enable_reg_pp3_iter3_reg),
        .I2(ap_pipeline_reg_pp3_iter1_tmp_reg_1022),
        .I3(ap_enable_reg_pp3_iter2),
        .I4(\outStream_V_data_V_1_state_reg[1] ),
        .O(ram_reg_i_50_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    ram_reg_i_51
       (.I0(\x_assign_reg_390_reg[6] [1]),
        .I1(\x_assign_reg_390_reg[6] [0]),
        .I2(\x_assign_reg_390_reg[6] [3]),
        .I3(\x_assign_reg_390_reg[6] [2]),
        .O(ram_reg_i_51_n_0));
  LUT6 #(
    .INIT(64'h2FFF2FFF2FFF2000)) 
    ram_reg_i_5__0
       (.I0(\x_assign_reg_390_reg[6] [4]),
        .I1(\lineBuffer_0_addr_2_reg_1026_reg[6] ),
        .I2(\ap_CS_fsm_reg[7] [2]),
        .I3(ap_enable_reg_pp3_iter0),
        .I4(\x1_reg_299_reg[6] [4]),
        .I5(ram_reg_2),
        .O(lineBuffer_1_address0[4]));
  LUT6 #(
    .INIT(64'h2FFF2FFF2FFF2000)) 
    ram_reg_i_6__0
       (.I0(\x_assign_reg_390_reg[6] [3]),
        .I1(\lineBuffer_0_addr_2_reg_1026_reg[6] ),
        .I2(\ap_CS_fsm_reg[7] [2]),
        .I3(ap_enable_reg_pp3_iter0),
        .I4(\x1_reg_299_reg[6] [3]),
        .I5(ram_reg_2),
        .O(lineBuffer_1_address0[3]));
  LUT6 #(
    .INIT(64'h7774777777744444)) 
    ram_reg_i_7__0
       (.I0(ram_reg_4),
        .I1(ram_reg_3),
        .I2(\x4_reg_357_reg[1] [0]),
        .I3(\x4_reg_357_reg[1] [1]),
        .I4(ram_reg_2),
        .I5(\x1_reg_299_reg[6] [2]),
        .O(lineBuffer_1_address0[2]));
  LUT6 #(
    .INIT(64'h888BBBBB888B8888)) 
    ram_reg_i_8__0
       (.I0(\x_assign_reg_390_reg[6] [1]),
        .I1(ram_reg_3),
        .I2(\x4_reg_357_reg[1] [0]),
        .I3(\x4_reg_357_reg[1] [1]),
        .I4(ram_reg_2),
        .I5(\x1_reg_299_reg[6] [1]),
        .O(lineBuffer_1_address0[1]));
  LUT6 #(
    .INIT(64'h80BFBFBF80BF8080)) 
    ram_reg_i_9__0
       (.I0(\x_assign_reg_390_reg[6] [0]),
        .I1(\ap_CS_fsm_reg[7] [2]),
        .I2(ap_enable_reg_pp3_iter0),
        .I3(\x4_reg_357_reg[1] [0]),
        .I4(ram_reg_2),
        .I5(\x1_reg_299_reg[6] [0]),
        .O(lineBuffer_1_address0[0]));
endmodule

(* ORIG_REF_NAME = "cnn_pool_d92x92_pbkb_ram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d92x92_pbkb_ram_1
   (D,
    E,
    WEA,
    WEBWE,
    p_76_in,
    \window_1_2_1_reg_333_reg[31] ,
    ap_clk,
    Q,
    \inStream_V_data_V_0_payload_B_reg[31] ,
    ram_reg_0,
    \inStream_V_data_V_0_state_reg[0] ,
    ap_enable_reg_pp3_iter0,
    \ap_CS_fsm_reg[7] ,
    \ap_CS_fsm_reg[5] ,
    ap_enable_reg_pp0_iter1,
    \exitcond1_reg_885_reg[0] ,
    \inStream_V_data_V_0_state_reg[0]_0 ,
    ap_enable_reg_pp3_iter1_reg,
    \exitcond_flatten8_reg_1008_reg[0] ,
    \x_assign_reg_390_reg[5] ,
    \x4_reg_357_reg[1] ,
    \x_reg_287_reg[6] ,
    \ap_CS_fsm_reg[7]_0 ,
    \x_assign_reg_390_reg[2] ,
    \x_assign_reg_390_reg[5]_0 ,
    ap_enable_reg_pp2_iter0,
    \x_assign_reg_390_reg[6] ,
    tmp_10_reg_917);
  output [31:0]D;
  output [0:0]E;
  output [0:0]WEA;
  output [0:0]WEBWE;
  output p_76_in;
  output [31:0]\window_1_2_1_reg_333_reg[31] ;
  input ap_clk;
  input [6:0]Q;
  input [31:0]\inStream_V_data_V_0_payload_B_reg[31] ;
  input [31:0]ram_reg_0;
  input \inStream_V_data_V_0_state_reg[0] ;
  input ap_enable_reg_pp3_iter0;
  input [2:0]\ap_CS_fsm_reg[7] ;
  input \ap_CS_fsm_reg[5] ;
  input ap_enable_reg_pp0_iter1;
  input \exitcond1_reg_885_reg[0] ;
  input \inStream_V_data_V_0_state_reg[0]_0 ;
  input ap_enable_reg_pp3_iter1_reg;
  input \exitcond_flatten8_reg_1008_reg[0] ;
  input [4:0]\x_assign_reg_390_reg[5] ;
  input [1:0]\x4_reg_357_reg[1] ;
  input [6:0]\x_reg_287_reg[6] ;
  input \ap_CS_fsm_reg[7]_0 ;
  input \x_assign_reg_390_reg[2] ;
  input \x_assign_reg_390_reg[5]_0 ;
  input ap_enable_reg_pp2_iter0;
  input \x_assign_reg_390_reg[6] ;
  input tmp_10_reg_917;

  wire [31:0]D;
  wire [0:0]E;
  wire [6:0]Q;
  wire [0:0]WEA;
  wire [0:0]WEBWE;
  wire \ap_CS_fsm_reg[5] ;
  wire [2:0]\ap_CS_fsm_reg[7] ;
  wire \ap_CS_fsm_reg[7]_0 ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp2_iter0;
  wire ap_enable_reg_pp3_iter0;
  wire ap_enable_reg_pp3_iter1_reg;
  wire \exitcond1_reg_885_reg[0] ;
  wire \exitcond_flatten8_reg_1008_reg[0] ;
  wire [31:0]\inStream_V_data_V_0_payload_B_reg[31] ;
  wire \inStream_V_data_V_0_state_reg[0] ;
  wire \inStream_V_data_V_0_state_reg[0]_0 ;
  wire [6:0]lineBuffer_0_address0;
  wire lineBuffer_0_ce0;
  wire p_76_in;
  wire [31:0]ram_reg_0;
  wire tmp_10_reg_917;
  wire [31:0]\window_1_2_1_reg_333_reg[31] ;
  wire [1:0]\x4_reg_357_reg[1] ;
  wire \x_assign_reg_390_reg[2] ;
  wire [4:0]\x_assign_reg_390_reg[5] ;
  wire \x_assign_reg_390_reg[5]_0 ;
  wire \x_assign_reg_390_reg[6] ;
  wire [6:0]\x_reg_287_reg[6] ;
  wire NLW_ram_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_RDADDRECC_UNCONNECTED;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2944" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    ram_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,lineBuffer_0_address0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,Q,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_ram_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_ram_reg_DBITERR_UNCONNECTED),
        .DIADI(\inStream_V_data_V_0_payload_B_reg[31] ),
        .DIBDI(ram_reg_0),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(D),
        .DOBDO(NLW_ram_reg_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(lineBuffer_0_ce0),
        .ENBWREN(E),
        .INJECTDBITERR(NLW_ram_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_SBITERR_UNCONNECTED),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,WEBWE,WEBWE,WEBWE,WEBWE}));
  LUT6 #(
    .INIT(64'hFFFFFF40FF40FF40)) 
    ram_reg_i_1
       (.I0(\inStream_V_data_V_0_state_reg[0] ),
        .I1(ap_enable_reg_pp3_iter0),
        .I2(\ap_CS_fsm_reg[7] [2]),
        .I3(\ap_CS_fsm_reg[5] ),
        .I4(p_76_in),
        .I5(ap_enable_reg_pp0_iter1),
        .O(lineBuffer_0_ce0));
  LUT4 #(
    .INIT(16'h0040)) 
    ram_reg_i_2__0
       (.I0(\exitcond_flatten8_reg_1008_reg[0] ),
        .I1(ap_enable_reg_pp3_iter1_reg),
        .I2(\ap_CS_fsm_reg[7] [2]),
        .I3(\inStream_V_data_V_0_state_reg[0] ),
        .O(E));
  LUT6 #(
    .INIT(64'hBFBFBF80BF80BF80)) 
    ram_reg_i_3
       (.I0(\x_assign_reg_390_reg[6] ),
        .I1(\ap_CS_fsm_reg[7] [2]),
        .I2(ap_enable_reg_pp3_iter0),
        .I3(\x_reg_287_reg[6] [6]),
        .I4(ap_enable_reg_pp2_iter0),
        .I5(\ap_CS_fsm_reg[7] [1]),
        .O(lineBuffer_0_address0[6]));
  LUT6 #(
    .INIT(64'h8080BF80BF80BF80)) 
    ram_reg_i_4
       (.I0(\x_assign_reg_390_reg[5] [4]),
        .I1(\ap_CS_fsm_reg[7] [2]),
        .I2(ap_enable_reg_pp3_iter0),
        .I3(\x_reg_287_reg[6] [5]),
        .I4(ap_enable_reg_pp2_iter0),
        .I5(\ap_CS_fsm_reg[7] [1]),
        .O(lineBuffer_0_address0[5]));
  LUT4 #(
    .INIT(16'h0800)) 
    ram_reg_i_42
       (.I0(\inStream_V_data_V_0_state_reg[0]_0 ),
        .I1(\ap_CS_fsm_reg[7] [0]),
        .I2(\exitcond1_reg_885_reg[0] ),
        .I3(ap_enable_reg_pp0_iter1),
        .O(WEA));
  LUT3 #(
    .INIT(8'h40)) 
    ram_reg_i_43
       (.I0(\inStream_V_data_V_0_state_reg[0] ),
        .I1(ap_enable_reg_pp3_iter1_reg),
        .I2(\ap_CS_fsm_reg[7] [2]),
        .O(WEBWE));
  LUT4 #(
    .INIT(16'hAA8A)) 
    ram_reg_i_46
       (.I0(\ap_CS_fsm_reg[7] [0]),
        .I1(\exitcond1_reg_885_reg[0] ),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(\inStream_V_data_V_0_state_reg[0]_0 ),
        .O(p_76_in));
  LUT6 #(
    .INIT(64'h2FFF2FFF2FFF2000)) 
    ram_reg_i_5
       (.I0(\x_assign_reg_390_reg[5] [3]),
        .I1(\x_assign_reg_390_reg[5]_0 ),
        .I2(\ap_CS_fsm_reg[7] [2]),
        .I3(ap_enable_reg_pp3_iter0),
        .I4(\x_reg_287_reg[6] [4]),
        .I5(\ap_CS_fsm_reg[5] ),
        .O(lineBuffer_0_address0[4]));
  LUT6 #(
    .INIT(64'h2FFF2FFF2FFF2000)) 
    ram_reg_i_6
       (.I0(\x_assign_reg_390_reg[5] [2]),
        .I1(\x_assign_reg_390_reg[5]_0 ),
        .I2(\ap_CS_fsm_reg[7] [2]),
        .I3(ap_enable_reg_pp3_iter0),
        .I4(\x_reg_287_reg[6] [3]),
        .I5(\ap_CS_fsm_reg[5] ),
        .O(lineBuffer_0_address0[3]));
  LUT6 #(
    .INIT(64'h7774777777744444)) 
    ram_reg_i_7
       (.I0(\x_assign_reg_390_reg[2] ),
        .I1(\ap_CS_fsm_reg[7]_0 ),
        .I2(\x4_reg_357_reg[1] [0]),
        .I3(\x4_reg_357_reg[1] [1]),
        .I4(\ap_CS_fsm_reg[5] ),
        .I5(\x_reg_287_reg[6] [2]),
        .O(lineBuffer_0_address0[2]));
  LUT6 #(
    .INIT(64'h888BBBBB888B8888)) 
    ram_reg_i_8
       (.I0(\x_assign_reg_390_reg[5] [1]),
        .I1(\ap_CS_fsm_reg[7]_0 ),
        .I2(\x4_reg_357_reg[1] [0]),
        .I3(\x4_reg_357_reg[1] [1]),
        .I4(\ap_CS_fsm_reg[5] ),
        .I5(\x_reg_287_reg[6] [1]),
        .O(lineBuffer_0_address0[1]));
  LUT6 #(
    .INIT(64'h80BFBFBF80BF8080)) 
    ram_reg_i_9
       (.I0(\x_assign_reg_390_reg[5] [0]),
        .I1(\ap_CS_fsm_reg[7] [2]),
        .I2(ap_enable_reg_pp3_iter0),
        .I3(\x4_reg_357_reg[1] [0]),
        .I4(\ap_CS_fsm_reg[5] ),
        .I5(\x_reg_287_reg[6] [0]),
        .O(lineBuffer_0_address0[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[0]_i_1 
       (.I0(D[0]),
        .I1(ram_reg_0[0]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[10]_i_1 
       (.I0(D[10]),
        .I1(ram_reg_0[10]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [10]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[11]_i_1 
       (.I0(D[11]),
        .I1(ram_reg_0[11]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [11]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[12]_i_1 
       (.I0(D[12]),
        .I1(ram_reg_0[12]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [12]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[13]_i_1 
       (.I0(D[13]),
        .I1(ram_reg_0[13]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [13]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[14]_i_1 
       (.I0(D[14]),
        .I1(ram_reg_0[14]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [14]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[15]_i_1 
       (.I0(D[15]),
        .I1(ram_reg_0[15]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [15]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[16]_i_1 
       (.I0(D[16]),
        .I1(ram_reg_0[16]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [16]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[17]_i_1 
       (.I0(D[17]),
        .I1(ram_reg_0[17]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [17]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[18]_i_1 
       (.I0(D[18]),
        .I1(ram_reg_0[18]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [18]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[19]_i_1 
       (.I0(D[19]),
        .I1(ram_reg_0[19]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [19]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[1]_i_1 
       (.I0(D[1]),
        .I1(ram_reg_0[1]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[20]_i_1 
       (.I0(D[20]),
        .I1(ram_reg_0[20]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [20]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[21]_i_1 
       (.I0(D[21]),
        .I1(ram_reg_0[21]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [21]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[22]_i_1 
       (.I0(D[22]),
        .I1(ram_reg_0[22]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [22]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[23]_i_1 
       (.I0(D[23]),
        .I1(ram_reg_0[23]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [23]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[24]_i_1 
       (.I0(D[24]),
        .I1(ram_reg_0[24]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [24]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[25]_i_1 
       (.I0(D[25]),
        .I1(ram_reg_0[25]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [25]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[26]_i_1 
       (.I0(D[26]),
        .I1(ram_reg_0[26]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [26]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[27]_i_1 
       (.I0(D[27]),
        .I1(ram_reg_0[27]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [27]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[28]_i_1 
       (.I0(D[28]),
        .I1(ram_reg_0[28]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [28]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[29]_i_1 
       (.I0(D[29]),
        .I1(ram_reg_0[29]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [29]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[2]_i_1 
       (.I0(D[2]),
        .I1(ram_reg_0[2]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [2]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[30]_i_1 
       (.I0(D[30]),
        .I1(ram_reg_0[30]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [30]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[31]_i_2 
       (.I0(D[31]),
        .I1(ram_reg_0[31]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [31]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[3]_i_1 
       (.I0(D[3]),
        .I1(ram_reg_0[3]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[4]_i_1 
       (.I0(D[4]),
        .I1(ram_reg_0[4]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[5]_i_1 
       (.I0(D[5]),
        .I1(ram_reg_0[5]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[6]_i_1 
       (.I0(D[6]),
        .I1(ram_reg_0[6]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[7]_i_1 
       (.I0(D[7]),
        .I1(ram_reg_0[7]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [7]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[8]_i_1 
       (.I0(D[8]),
        .I1(ram_reg_0[8]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [8]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_1_1_1_reg_345[9]_i_1 
       (.I0(D[9]),
        .I1(ram_reg_0[9]),
        .I2(tmp_10_reg_917),
        .O(\window_1_2_1_reg_333_reg[31] [9]));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_cnn_pool_d92x92_p2x2_0_0,cnn_pool_d92x92_p2x2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "cnn_pool_d92x92_p2x2,Vivado 2016.4" *) 
(* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_CTRL_AWADDR,
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
    outStream_TID);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWADDR" *) input [4:0]s_axi_CTRL_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWVALID" *) input s_axi_CTRL_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWREADY" *) output s_axi_CTRL_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WDATA" *) input [31:0]s_axi_CTRL_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WSTRB" *) input [3:0]s_axi_CTRL_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WVALID" *) input s_axi_CTRL_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WREADY" *) output s_axi_CTRL_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BRESP" *) output [1:0]s_axi_CTRL_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BVALID" *) output s_axi_CTRL_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BREADY" *) input s_axi_CTRL_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARADDR" *) input [4:0]s_axi_CTRL_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARVALID" *) input s_axi_CTRL_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARREADY" *) output s_axi_CTRL_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RDATA" *) output [31:0]s_axi_CTRL_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RRESP" *) output [1:0]s_axi_CTRL_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RVALID" *) output s_axi_CTRL_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RREADY" *) input s_axi_CTRL_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TVALID" *) input inStream_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TREADY" *) output inStream_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TDATA" *) input [31:0]inStream_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TDEST" *) input [5:0]inStream_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TKEEP" *) input [3:0]inStream_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TSTRB" *) input [3:0]inStream_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TUSER" *) input [1:0]inStream_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TLAST" *) input [0:0]inStream_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TID" *) input [4:0]inStream_TID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TVALID" *) output outStream_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TREADY" *) input outStream_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TDATA" *) output [31:0]outStream_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TDEST" *) output [5:0]outStream_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TKEEP" *) output [3:0]outStream_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TSTRB" *) output [3:0]outStream_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TUSER" *) output [1:0]outStream_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TLAST" *) output [0:0]outStream_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TID" *) output [4:0]outStream_TID;

  wire ap_clk;
  wire ap_rst_n;
  wire [31:0]inStream_TDATA;
  wire [5:0]inStream_TDEST;
  wire [4:0]inStream_TID;
  wire [3:0]inStream_TKEEP;
  wire [0:0]inStream_TLAST;
  wire inStream_TREADY;
  wire [3:0]inStream_TSTRB;
  wire [1:0]inStream_TUSER;
  wire inStream_TVALID;
  wire interrupt;
  wire [31:0]outStream_TDATA;
  wire [5:0]outStream_TDEST;
  wire [4:0]outStream_TID;
  wire [3:0]outStream_TKEEP;
  wire [0:0]outStream_TLAST;
  wire outStream_TREADY;
  wire [3:0]outStream_TSTRB;
  wire [1:0]outStream_TUSER;
  wire outStream_TVALID;
  wire [4:0]s_axi_CTRL_ARADDR;
  wire s_axi_CTRL_ARREADY;
  wire s_axi_CTRL_ARVALID;
  wire [4:0]s_axi_CTRL_AWADDR;
  wire s_axi_CTRL_AWREADY;
  wire s_axi_CTRL_AWVALID;
  wire s_axi_CTRL_BREADY;
  wire [1:0]s_axi_CTRL_BRESP;
  wire s_axi_CTRL_BVALID;
  wire [31:0]s_axi_CTRL_RDATA;
  wire s_axi_CTRL_RREADY;
  wire [1:0]s_axi_CTRL_RRESP;
  wire s_axi_CTRL_RVALID;
  wire [31:0]s_axi_CTRL_WDATA;
  wire s_axi_CTRL_WREADY;
  wire [3:0]s_axi_CTRL_WSTRB;
  wire s_axi_CTRL_WVALID;

  (* C_S_AXI_CTRL_ADDR_WIDTH = "5" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* ap_ST_fsm_pp0_stage0 = "9'b000000010" *) 
  (* ap_ST_fsm_pp1_stage0 = "9'b000001000" *) 
  (* ap_ST_fsm_pp2_stage0 = "9'b000100000" *) 
  (* ap_ST_fsm_pp3_stage0 = "9'b010000000" *) 
  (* ap_ST_fsm_state1 = "9'b000000001" *) 
  (* ap_ST_fsm_state10 = "9'b001000000" *) 
  (* ap_ST_fsm_state15 = "9'b100000000" *) 
  (* ap_ST_fsm_state4 = "9'b000000100" *) 
  (* ap_ST_fsm_state7 = "9'b000010000" *) 
  (* ap_const_int64_8 = "8" *) 
  (* ap_const_lv14_0 = "14'b00000000000000" *) 
  (* ap_const_lv14_1 = "14'b00000000000001" *) 
  (* ap_const_lv14_2110 = "14'b10000100010000" *) 
  (* ap_const_lv21_0 = "21'b000000000000000000000" *) 
  (* ap_const_lv2_0 = "2'b00" *) 
  (* ap_const_lv2_1 = "2'b01" *) 
  (* ap_const_lv2_2 = "2'b10" *) 
  (* ap_const_lv2_3 = "2'b11" *) 
  (* ap_const_lv32_0 = "0" *) 
  (* ap_const_lv32_1 = "1" *) 
  (* ap_const_lv32_15 = "21" *) 
  (* ap_const_lv32_1F = "31" *) 
  (* ap_const_lv32_2 = "2" *) 
  (* ap_const_lv32_2110 = "8464" *) 
  (* ap_const_lv32_3 = "3" *) 
  (* ap_const_lv32_4 = "4" *) 
  (* ap_const_lv32_5 = "5" *) 
  (* ap_const_lv32_5E = "94" *) 
  (* ap_const_lv32_6 = "6" *) 
  (* ap_const_lv32_7 = "7" *) 
  (* ap_const_lv32_8 = "8" *) 
  (* ap_const_lv32_844 = "2116" *) 
  (* ap_const_lv3_0 = "3'b000" *) 
  (* ap_const_lv3_1 = "3'b001" *) 
  (* ap_const_lv3_4 = "3'b100" *) 
  (* ap_const_lv4_0 = "4'b0000" *) 
  (* ap_const_lv4_F = "4'b1111" *) 
  (* ap_const_lv5_0 = "5'b00000" *) 
  (* ap_const_lv6_0 = "6'b000000" *) 
  (* ap_const_lv7_0 = "7'b0000000" *) 
  (* ap_const_lv7_1 = "7'b0000001" *) 
  (* ap_const_lv7_5A = "7'b1011010" *) 
  (* ap_const_lv7_5B = "7'b1011011" *) 
  (* ap_const_lv7_5C = "7'b1011100" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d92x92_p2x2 inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .inStream_TDATA(inStream_TDATA),
        .inStream_TDEST(inStream_TDEST),
        .inStream_TID(inStream_TID),
        .inStream_TKEEP(inStream_TKEEP),
        .inStream_TLAST(inStream_TLAST),
        .inStream_TREADY(inStream_TREADY),
        .inStream_TSTRB(inStream_TSTRB),
        .inStream_TUSER(inStream_TUSER),
        .inStream_TVALID(inStream_TVALID),
        .interrupt(interrupt),
        .outStream_TDATA(outStream_TDATA),
        .outStream_TDEST(outStream_TDEST),
        .outStream_TID(outStream_TID),
        .outStream_TKEEP(outStream_TKEEP),
        .outStream_TLAST(outStream_TLAST),
        .outStream_TREADY(outStream_TREADY),
        .outStream_TSTRB(outStream_TSTRB),
        .outStream_TUSER(outStream_TUSER),
        .outStream_TVALID(outStream_TVALID),
        .s_axi_CTRL_ARADDR(s_axi_CTRL_ARADDR),
        .s_axi_CTRL_ARREADY(s_axi_CTRL_ARREADY),
        .s_axi_CTRL_ARVALID(s_axi_CTRL_ARVALID),
        .s_axi_CTRL_AWADDR(s_axi_CTRL_AWADDR),
        .s_axi_CTRL_AWREADY(s_axi_CTRL_AWREADY),
        .s_axi_CTRL_AWVALID(s_axi_CTRL_AWVALID),
        .s_axi_CTRL_BREADY(s_axi_CTRL_BREADY),
        .s_axi_CTRL_BRESP(s_axi_CTRL_BRESP),
        .s_axi_CTRL_BVALID(s_axi_CTRL_BVALID),
        .s_axi_CTRL_RDATA(s_axi_CTRL_RDATA),
        .s_axi_CTRL_RREADY(s_axi_CTRL_RREADY),
        .s_axi_CTRL_RRESP(s_axi_CTRL_RRESP),
        .s_axi_CTRL_RVALID(s_axi_CTRL_RVALID),
        .s_axi_CTRL_WDATA(s_axi_CTRL_WDATA),
        .s_axi_CTRL_WREADY(s_axi_CTRL_WREADY),
        .s_axi_CTRL_WSTRB(s_axi_CTRL_WSTRB),
        .s_axi_CTRL_WVALID(s_axi_CTRL_WVALID));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
