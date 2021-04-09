// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fixed_point_mul (
        ap_clk,
        ap_rst,
        a,
        b,
        ap_return,
        ap_ce
);

parameter    ap_const_lv32_1F = 32'b11111;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_A = 32'b1010;
parameter    ap_const_lv23_0 = 23'b00000000000000000000000;

input   ap_clk;
input   ap_rst;
input  [31:0] a;
input  [31:0] b;
output  [22:0] ap_return;
input   ap_ce;

reg   [31:0] b_read_reg_117;
reg   [31:0] ap_pipeline_reg_pp0_iter1_b_read_reg_117;
reg   [31:0] ap_pipeline_reg_pp0_iter2_b_read_reg_117;
reg   [31:0] ap_pipeline_reg_pp0_iter3_b_read_reg_117;
reg   [31:0] ap_pipeline_reg_pp0_iter4_b_read_reg_117;
reg   [31:0] ap_pipeline_reg_pp0_iter5_b_read_reg_117;
reg   [31:0] ap_pipeline_reg_pp0_iter6_b_read_reg_117;
reg   [31:0] a_read_reg_122;
reg   [31:0] ap_pipeline_reg_pp0_iter1_a_read_reg_122;
reg   [31:0] ap_pipeline_reg_pp0_iter2_a_read_reg_122;
reg   [31:0] ap_pipeline_reg_pp0_iter3_a_read_reg_122;
reg   [31:0] ap_pipeline_reg_pp0_iter4_a_read_reg_122;
reg   [31:0] ap_pipeline_reg_pp0_iter5_a_read_reg_122;
reg   [31:0] ap_pipeline_reg_pp0_iter6_a_read_reg_122;
wire  signed [31:0] a_assign_fu_44_p3;
reg  signed [31:0] a_assign_reg_127;
wire  signed [31:0] b_assign_fu_66_p3;
reg  signed [31:0] b_assign_reg_132;
reg   [21:0] tmp_1_reg_137;
wire   [0:0] tmp_2_fu_30_p3;
wire   [31:0] tmp_3_fu_38_p2;
wire   [0:0] tmp_4_fu_52_p3;
wire   [31:0] tmp_5_fu_60_p2;
wire   [31:0] grp_fu_74_p2;
wire   [31:0] tmp_fu_88_p2;
wire   [22:0] result_cast_fu_92_p1;
wire   [0:0] tmp_7_fu_95_p3;
wire   [22:0] tmp_8_fu_103_p2;
reg    grp_fu_74_ce;

cnn_conv_d22x22_kbkb #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
cnn_conv_d22x22_kbkb_U0(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(b_assign_reg_132),
    .din1(a_assign_reg_127),
    .ce(grp_fu_74_ce),
    .dout(grp_fu_74_p2)
);

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        a_assign_reg_127 <= a_assign_fu_44_p3;
        a_read_reg_122 <= a;
        ap_pipeline_reg_pp0_iter1_a_read_reg_122 <= a_read_reg_122;
        ap_pipeline_reg_pp0_iter1_b_read_reg_117 <= b_read_reg_117;
        ap_pipeline_reg_pp0_iter2_a_read_reg_122 <= ap_pipeline_reg_pp0_iter1_a_read_reg_122;
        ap_pipeline_reg_pp0_iter2_b_read_reg_117 <= ap_pipeline_reg_pp0_iter1_b_read_reg_117;
        ap_pipeline_reg_pp0_iter3_a_read_reg_122 <= ap_pipeline_reg_pp0_iter2_a_read_reg_122;
        ap_pipeline_reg_pp0_iter3_b_read_reg_117 <= ap_pipeline_reg_pp0_iter2_b_read_reg_117;
        ap_pipeline_reg_pp0_iter4_a_read_reg_122 <= ap_pipeline_reg_pp0_iter3_a_read_reg_122;
        ap_pipeline_reg_pp0_iter4_b_read_reg_117 <= ap_pipeline_reg_pp0_iter3_b_read_reg_117;
        ap_pipeline_reg_pp0_iter5_a_read_reg_122 <= ap_pipeline_reg_pp0_iter4_a_read_reg_122;
        ap_pipeline_reg_pp0_iter5_b_read_reg_117 <= ap_pipeline_reg_pp0_iter4_b_read_reg_117;
        ap_pipeline_reg_pp0_iter6_a_read_reg_122 <= ap_pipeline_reg_pp0_iter5_a_read_reg_122;
        ap_pipeline_reg_pp0_iter6_b_read_reg_117 <= ap_pipeline_reg_pp0_iter5_b_read_reg_117;
        b_assign_reg_132 <= b_assign_fu_66_p3;
        b_read_reg_117 <= b;
        tmp_1_reg_137 <= {{grp_fu_74_p2[ap_const_lv32_1F : ap_const_lv32_A]}};
    end
end

always @ (*) begin
    if (~(1'b1 == ap_ce)) begin
        grp_fu_74_ce = 1'b0;
    end else begin
        grp_fu_74_ce = 1'b1;
    end
end

assign a_assign_fu_44_p3 = ((tmp_2_fu_30_p3[0:0] === 1'b1) ? tmp_3_fu_38_p2 : a);

assign ap_return = ((tmp_7_fu_95_p3[0:0] === 1'b1) ? tmp_8_fu_103_p2 : result_cast_fu_92_p1);

assign b_assign_fu_66_p3 = ((tmp_4_fu_52_p3[0:0] === 1'b1) ? tmp_5_fu_60_p2 : b);

assign result_cast_fu_92_p1 = tmp_1_reg_137;

assign tmp_2_fu_30_p3 = a[ap_const_lv32_1F];

assign tmp_3_fu_38_p2 = (ap_const_lv32_0 - a);

assign tmp_4_fu_52_p3 = b[ap_const_lv32_1F];

assign tmp_5_fu_60_p2 = (ap_const_lv32_0 - b);

assign tmp_7_fu_95_p3 = tmp_fu_88_p2[ap_const_lv32_1F];

assign tmp_8_fu_103_p2 = (ap_const_lv23_0 - result_cast_fu_92_p1);

assign tmp_fu_88_p2 = (ap_pipeline_reg_pp0_iter6_b_read_reg_117 ^ ap_pipeline_reg_pp0_iter6_a_read_reg_122);

endmodule //fixed_point_mul
