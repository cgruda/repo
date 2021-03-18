// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1ns/1ps
module cnn_2d_conv_d8x8_k5x5_CTRL_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 8,
    C_S_AXI_DATA_WIDTH = 32
)(
    // axi4 lite slave signals
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    // user signals
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle,
    output wire [31:0]                   ctrl,
    output wire [31:0]                   kernelData_0,
    output wire [31:0]                   kernelData_1,
    output wire [31:0]                   kernelData_2,
    output wire [31:0]                   kernelData_3,
    output wire [31:0]                   kernelData_4,
    output wire [31:0]                   kernelData_5,
    output wire [31:0]                   kernelData_6,
    output wire [31:0]                   kernelData_7,
    output wire [31:0]                   kernelData_8,
    output wire [31:0]                   kernelData_9,
    output wire [31:0]                   kernelData_10,
    output wire [31:0]                   kernelData_11,
    output wire [31:0]                   kernelData_12,
    output wire [31:0]                   kernelData_13,
    output wire [31:0]                   kernelData_14,
    output wire [31:0]                   kernelData_15,
    output wire [31:0]                   kernelData_16,
    output wire [31:0]                   kernelData_17,
    output wire [31:0]                   kernelData_18,
    output wire [31:0]                   kernelData_19,
    output wire [31:0]                   kernelData_20,
    output wire [31:0]                   kernelData_21,
    output wire [31:0]                   kernelData_22,
    output wire [31:0]                   kernelData_23,
    output wire [31:0]                   kernelData_24
);
//------------------------Address Info-------------------
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of ctrl
//        bit 31~0 - ctrl[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of kernelData_0
//        bit 31~0 - kernelData_0[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of kernelData_1
//        bit 31~0 - kernelData_1[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of kernelData_2
//        bit 31~0 - kernelData_2[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of kernelData_3
//        bit 31~0 - kernelData_3[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of kernelData_4
//        bit 31~0 - kernelData_4[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of kernelData_5
//        bit 31~0 - kernelData_5[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of kernelData_6
//        bit 31~0 - kernelData_6[31:0] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of kernelData_7
//        bit 31~0 - kernelData_7[31:0] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of kernelData_8
//        bit 31~0 - kernelData_8[31:0] (Read/Write)
// 0x5c : reserved
// 0x60 : Data signal of kernelData_9
//        bit 31~0 - kernelData_9[31:0] (Read/Write)
// 0x64 : reserved
// 0x68 : Data signal of kernelData_10
//        bit 31~0 - kernelData_10[31:0] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of kernelData_11
//        bit 31~0 - kernelData_11[31:0] (Read/Write)
// 0x74 : reserved
// 0x78 : Data signal of kernelData_12
//        bit 31~0 - kernelData_12[31:0] (Read/Write)
// 0x7c : reserved
// 0x80 : Data signal of kernelData_13
//        bit 31~0 - kernelData_13[31:0] (Read/Write)
// 0x84 : reserved
// 0x88 : Data signal of kernelData_14
//        bit 31~0 - kernelData_14[31:0] (Read/Write)
// 0x8c : reserved
// 0x90 : Data signal of kernelData_15
//        bit 31~0 - kernelData_15[31:0] (Read/Write)
// 0x94 : reserved
// 0x98 : Data signal of kernelData_16
//        bit 31~0 - kernelData_16[31:0] (Read/Write)
// 0x9c : reserved
// 0xa0 : Data signal of kernelData_17
//        bit 31~0 - kernelData_17[31:0] (Read/Write)
// 0xa4 : reserved
// 0xa8 : Data signal of kernelData_18
//        bit 31~0 - kernelData_18[31:0] (Read/Write)
// 0xac : reserved
// 0xb0 : Data signal of kernelData_19
//        bit 31~0 - kernelData_19[31:0] (Read/Write)
// 0xb4 : reserved
// 0xb8 : Data signal of kernelData_20
//        bit 31~0 - kernelData_20[31:0] (Read/Write)
// 0xbc : reserved
// 0xc0 : Data signal of kernelData_21
//        bit 31~0 - kernelData_21[31:0] (Read/Write)
// 0xc4 : reserved
// 0xc8 : Data signal of kernelData_22
//        bit 31~0 - kernelData_22[31:0] (Read/Write)
// 0xcc : reserved
// 0xd0 : Data signal of kernelData_23
//        bit 31~0 - kernelData_23[31:0] (Read/Write)
// 0xd4 : reserved
// 0xd8 : Data signal of kernelData_24
//        bit 31~0 - kernelData_24[31:0] (Read/Write)
// 0xdc : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL              = 8'h00,
    ADDR_GIE                  = 8'h04,
    ADDR_IER                  = 8'h08,
    ADDR_ISR                  = 8'h0c,
    ADDR_CTRL_DATA_0          = 8'h10,
    ADDR_CTRL_CTRL            = 8'h14,
    ADDR_KERNELDATA_0_DATA_0  = 8'h18,
    ADDR_KERNELDATA_0_CTRL    = 8'h1c,
    ADDR_KERNELDATA_1_DATA_0  = 8'h20,
    ADDR_KERNELDATA_1_CTRL    = 8'h24,
    ADDR_KERNELDATA_2_DATA_0  = 8'h28,
    ADDR_KERNELDATA_2_CTRL    = 8'h2c,
    ADDR_KERNELDATA_3_DATA_0  = 8'h30,
    ADDR_KERNELDATA_3_CTRL    = 8'h34,
    ADDR_KERNELDATA_4_DATA_0  = 8'h38,
    ADDR_KERNELDATA_4_CTRL    = 8'h3c,
    ADDR_KERNELDATA_5_DATA_0  = 8'h40,
    ADDR_KERNELDATA_5_CTRL    = 8'h44,
    ADDR_KERNELDATA_6_DATA_0  = 8'h48,
    ADDR_KERNELDATA_6_CTRL    = 8'h4c,
    ADDR_KERNELDATA_7_DATA_0  = 8'h50,
    ADDR_KERNELDATA_7_CTRL    = 8'h54,
    ADDR_KERNELDATA_8_DATA_0  = 8'h58,
    ADDR_KERNELDATA_8_CTRL    = 8'h5c,
    ADDR_KERNELDATA_9_DATA_0  = 8'h60,
    ADDR_KERNELDATA_9_CTRL    = 8'h64,
    ADDR_KERNELDATA_10_DATA_0 = 8'h68,
    ADDR_KERNELDATA_10_CTRL   = 8'h6c,
    ADDR_KERNELDATA_11_DATA_0 = 8'h70,
    ADDR_KERNELDATA_11_CTRL   = 8'h74,
    ADDR_KERNELDATA_12_DATA_0 = 8'h78,
    ADDR_KERNELDATA_12_CTRL   = 8'h7c,
    ADDR_KERNELDATA_13_DATA_0 = 8'h80,
    ADDR_KERNELDATA_13_CTRL   = 8'h84,
    ADDR_KERNELDATA_14_DATA_0 = 8'h88,
    ADDR_KERNELDATA_14_CTRL   = 8'h8c,
    ADDR_KERNELDATA_15_DATA_0 = 8'h90,
    ADDR_KERNELDATA_15_CTRL   = 8'h94,
    ADDR_KERNELDATA_16_DATA_0 = 8'h98,
    ADDR_KERNELDATA_16_CTRL   = 8'h9c,
    ADDR_KERNELDATA_17_DATA_0 = 8'ha0,
    ADDR_KERNELDATA_17_CTRL   = 8'ha4,
    ADDR_KERNELDATA_18_DATA_0 = 8'ha8,
    ADDR_KERNELDATA_18_CTRL   = 8'hac,
    ADDR_KERNELDATA_19_DATA_0 = 8'hb0,
    ADDR_KERNELDATA_19_CTRL   = 8'hb4,
    ADDR_KERNELDATA_20_DATA_0 = 8'hb8,
    ADDR_KERNELDATA_20_CTRL   = 8'hbc,
    ADDR_KERNELDATA_21_DATA_0 = 8'hc0,
    ADDR_KERNELDATA_21_CTRL   = 8'hc4,
    ADDR_KERNELDATA_22_DATA_0 = 8'hc8,
    ADDR_KERNELDATA_22_CTRL   = 8'hcc,
    ADDR_KERNELDATA_23_DATA_0 = 8'hd0,
    ADDR_KERNELDATA_23_CTRL   = 8'hd4,
    ADDR_KERNELDATA_24_DATA_0 = 8'hd8,
    ADDR_KERNELDATA_24_CTRL   = 8'hdc,
    WRIDLE                    = 2'd0,
    WRDATA                    = 2'd1,
    WRRESP                    = 2'd2,
    RDIDLE                    = 2'd0,
    RDDATA                    = 2'd1,
    ADDR_BITS         = 8;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [31:0]                   wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate;
    reg  [1:0]                    rnext;
    reg  [31:0]                   rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    wire                          int_ap_idle;
    wire                          int_ap_ready;
    reg                           int_ap_done;
    reg                           int_ap_start;
    reg                           int_auto_restart;
    reg                           int_gie;
    reg  [1:0]                    int_ier;
    reg  [1:0]                    int_isr;
    reg  [31:0]                   int_ctrl;
    reg  [31:0]                   int_kernelData_0;
    reg  [31:0]                   int_kernelData_1;
    reg  [31:0]                   int_kernelData_2;
    reg  [31:0]                   int_kernelData_3;
    reg  [31:0]                   int_kernelData_4;
    reg  [31:0]                   int_kernelData_5;
    reg  [31:0]                   int_kernelData_6;
    reg  [31:0]                   int_kernelData_7;
    reg  [31:0]                   int_kernelData_8;
    reg  [31:0]                   int_kernelData_9;
    reg  [31:0]                   int_kernelData_10;
    reg  [31:0]                   int_kernelData_11;
    reg  [31:0]                   int_kernelData_12;
    reg  [31:0]                   int_kernelData_13;
    reg  [31:0]                   int_kernelData_14;
    reg  [31:0]                   int_kernelData_15;
    reg  [31:0]                   int_kernelData_16;
    reg  [31:0]                   int_kernelData_17;
    reg  [31:0]                   int_kernelData_18;
    reg  [31:0]                   int_kernelData_19;
    reg  [31:0]                   int_kernelData_20;
    reg  [31:0]                   int_kernelData_21;
    reg  [31:0]                   int_kernelData_22;
    reg  [31:0]                   int_kernelData_23;
    reg  [31:0]                   int_kernelData_24;

//------------------------Instantiation------------------

//------------------------AXI write fsm------------------
assign AWREADY = (~ARESET) & (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRIDLE;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (~ARESET) && (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDIDLE;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 1'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_CTRL_DATA_0: begin
                    rdata <= int_ctrl[31:0];
                end
                ADDR_KERNELDATA_0_DATA_0: begin
                    rdata <= int_kernelData_0[31:0];
                end
                ADDR_KERNELDATA_1_DATA_0: begin
                    rdata <= int_kernelData_1[31:0];
                end
                ADDR_KERNELDATA_2_DATA_0: begin
                    rdata <= int_kernelData_2[31:0];
                end
                ADDR_KERNELDATA_3_DATA_0: begin
                    rdata <= int_kernelData_3[31:0];
                end
                ADDR_KERNELDATA_4_DATA_0: begin
                    rdata <= int_kernelData_4[31:0];
                end
                ADDR_KERNELDATA_5_DATA_0: begin
                    rdata <= int_kernelData_5[31:0];
                end
                ADDR_KERNELDATA_6_DATA_0: begin
                    rdata <= int_kernelData_6[31:0];
                end
                ADDR_KERNELDATA_7_DATA_0: begin
                    rdata <= int_kernelData_7[31:0];
                end
                ADDR_KERNELDATA_8_DATA_0: begin
                    rdata <= int_kernelData_8[31:0];
                end
                ADDR_KERNELDATA_9_DATA_0: begin
                    rdata <= int_kernelData_9[31:0];
                end
                ADDR_KERNELDATA_10_DATA_0: begin
                    rdata <= int_kernelData_10[31:0];
                end
                ADDR_KERNELDATA_11_DATA_0: begin
                    rdata <= int_kernelData_11[31:0];
                end
                ADDR_KERNELDATA_12_DATA_0: begin
                    rdata <= int_kernelData_12[31:0];
                end
                ADDR_KERNELDATA_13_DATA_0: begin
                    rdata <= int_kernelData_13[31:0];
                end
                ADDR_KERNELDATA_14_DATA_0: begin
                    rdata <= int_kernelData_14[31:0];
                end
                ADDR_KERNELDATA_15_DATA_0: begin
                    rdata <= int_kernelData_15[31:0];
                end
                ADDR_KERNELDATA_16_DATA_0: begin
                    rdata <= int_kernelData_16[31:0];
                end
                ADDR_KERNELDATA_17_DATA_0: begin
                    rdata <= int_kernelData_17[31:0];
                end
                ADDR_KERNELDATA_18_DATA_0: begin
                    rdata <= int_kernelData_18[31:0];
                end
                ADDR_KERNELDATA_19_DATA_0: begin
                    rdata <= int_kernelData_19[31:0];
                end
                ADDR_KERNELDATA_20_DATA_0: begin
                    rdata <= int_kernelData_20[31:0];
                end
                ADDR_KERNELDATA_21_DATA_0: begin
                    rdata <= int_kernelData_21[31:0];
                end
                ADDR_KERNELDATA_22_DATA_0: begin
                    rdata <= int_kernelData_22[31:0];
                end
                ADDR_KERNELDATA_23_DATA_0: begin
                    rdata <= int_kernelData_23[31:0];
                end
                ADDR_KERNELDATA_24_DATA_0: begin
                    rdata <= int_kernelData_24[31:0];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt     = int_gie & (|int_isr);
assign ap_start      = int_ap_start;
assign int_ap_idle   = ap_idle;
assign int_ap_ready  = ap_ready;
assign ctrl          = int_ctrl;
assign kernelData_0  = int_kernelData_0;
assign kernelData_1  = int_kernelData_1;
assign kernelData_2  = int_kernelData_2;
assign kernelData_3  = int_kernelData_3;
assign kernelData_4  = int_kernelData_4;
assign kernelData_5  = int_kernelData_5;
assign kernelData_6  = int_kernelData_6;
assign kernelData_7  = int_kernelData_7;
assign kernelData_8  = int_kernelData_8;
assign kernelData_9  = int_kernelData_9;
assign kernelData_10 = int_kernelData_10;
assign kernelData_11 = int_kernelData_11;
assign kernelData_12 = int_kernelData_12;
assign kernelData_13 = int_kernelData_13;
assign kernelData_14 = int_kernelData_14;
assign kernelData_15 = int_kernelData_15;
assign kernelData_16 = int_kernelData_16;
assign kernelData_17 = int_kernelData_17;
assign kernelData_18 = int_kernelData_18;
assign kernelData_19 = int_kernelData_19;
assign kernelData_20 = int_kernelData_20;
assign kernelData_21 = int_kernelData_21;
assign kernelData_22 = int_kernelData_22;
assign kernelData_23 = int_kernelData_23;
assign kernelData_24 = int_kernelData_24;
// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (int_ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (ap_done)
            int_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_done <= 1'b0; // clear on read
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_ctrl[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_ctrl[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CTRL_DATA_0)
            int_ctrl[31:0] <= (WDATA[31:0] & wmask) | (int_ctrl[31:0] & ~wmask);
    end
end

// int_kernelData_0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernelData_0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNELDATA_0_DATA_0)
            int_kernelData_0[31:0] <= (WDATA[31:0] & wmask) | (int_kernelData_0[31:0] & ~wmask);
    end
end

// int_kernelData_1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernelData_1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNELDATA_1_DATA_0)
            int_kernelData_1[31:0] <= (WDATA[31:0] & wmask) | (int_kernelData_1[31:0] & ~wmask);
    end
end

// int_kernelData_2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernelData_2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNELDATA_2_DATA_0)
            int_kernelData_2[31:0] <= (WDATA[31:0] & wmask) | (int_kernelData_2[31:0] & ~wmask);
    end
end

// int_kernelData_3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernelData_3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNELDATA_3_DATA_0)
            int_kernelData_3[31:0] <= (WDATA[31:0] & wmask) | (int_kernelData_3[31:0] & ~wmask);
    end
end

// int_kernelData_4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernelData_4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNELDATA_4_DATA_0)
            int_kernelData_4[31:0] <= (WDATA[31:0] & wmask) | (int_kernelData_4[31:0] & ~wmask);
    end
end

// int_kernelData_5[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernelData_5[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNELDATA_5_DATA_0)
            int_kernelData_5[31:0] <= (WDATA[31:0] & wmask) | (int_kernelData_5[31:0] & ~wmask);
    end
end

// int_kernelData_6[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernelData_6[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNELDATA_6_DATA_0)
            int_kernelData_6[31:0] <= (WDATA[31:0] & wmask) | (int_kernelData_6[31:0] & ~wmask);
    end
end

// int_kernelData_7[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernelData_7[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNELDATA_7_DATA_0)
            int_kernelData_7[31:0] <= (WDATA[31:0] & wmask) | (int_kernelData_7[31:0] & ~wmask);
    end
end

// int_kernelData_8[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernelData_8[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNELDATA_8_DATA_0)
            int_kernelData_8[31:0] <= (WDATA[31:0] & wmask) | (int_kernelData_8[31:0] & ~wmask);
    end
end

// int_kernelData_9[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernelData_9[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNELDATA_9_DATA_0)
            int_kernelData_9[31:0] <= (WDATA[31:0] & wmask) | (int_kernelData_9[31:0] & ~wmask);
    end
end

// int_kernelData_10[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernelData_10[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNELDATA_10_DATA_0)
            int_kernelData_10[31:0] <= (WDATA[31:0] & wmask) | (int_kernelData_10[31:0] & ~wmask);
    end
end

// int_kernelData_11[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernelData_11[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNELDATA_11_DATA_0)
            int_kernelData_11[31:0] <= (WDATA[31:0] & wmask) | (int_kernelData_11[31:0] & ~wmask);
    end
end

// int_kernelData_12[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernelData_12[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNELDATA_12_DATA_0)
            int_kernelData_12[31:0] <= (WDATA[31:0] & wmask) | (int_kernelData_12[31:0] & ~wmask);
    end
end

// int_kernelData_13[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernelData_13[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNELDATA_13_DATA_0)
            int_kernelData_13[31:0] <= (WDATA[31:0] & wmask) | (int_kernelData_13[31:0] & ~wmask);
    end
end

// int_kernelData_14[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernelData_14[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNELDATA_14_DATA_0)
            int_kernelData_14[31:0] <= (WDATA[31:0] & wmask) | (int_kernelData_14[31:0] & ~wmask);
    end
end

// int_kernelData_15[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernelData_15[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNELDATA_15_DATA_0)
            int_kernelData_15[31:0] <= (WDATA[31:0] & wmask) | (int_kernelData_15[31:0] & ~wmask);
    end
end

// int_kernelData_16[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernelData_16[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNELDATA_16_DATA_0)
            int_kernelData_16[31:0] <= (WDATA[31:0] & wmask) | (int_kernelData_16[31:0] & ~wmask);
    end
end

// int_kernelData_17[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernelData_17[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNELDATA_17_DATA_0)
            int_kernelData_17[31:0] <= (WDATA[31:0] & wmask) | (int_kernelData_17[31:0] & ~wmask);
    end
end

// int_kernelData_18[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernelData_18[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNELDATA_18_DATA_0)
            int_kernelData_18[31:0] <= (WDATA[31:0] & wmask) | (int_kernelData_18[31:0] & ~wmask);
    end
end

// int_kernelData_19[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernelData_19[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNELDATA_19_DATA_0)
            int_kernelData_19[31:0] <= (WDATA[31:0] & wmask) | (int_kernelData_19[31:0] & ~wmask);
    end
end

// int_kernelData_20[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernelData_20[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNELDATA_20_DATA_0)
            int_kernelData_20[31:0] <= (WDATA[31:0] & wmask) | (int_kernelData_20[31:0] & ~wmask);
    end
end

// int_kernelData_21[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernelData_21[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNELDATA_21_DATA_0)
            int_kernelData_21[31:0] <= (WDATA[31:0] & wmask) | (int_kernelData_21[31:0] & ~wmask);
    end
end

// int_kernelData_22[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernelData_22[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNELDATA_22_DATA_0)
            int_kernelData_22[31:0] <= (WDATA[31:0] & wmask) | (int_kernelData_22[31:0] & ~wmask);
    end
end

// int_kernelData_23[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernelData_23[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNELDATA_23_DATA_0)
            int_kernelData_23[31:0] <= (WDATA[31:0] & wmask) | (int_kernelData_23[31:0] & ~wmask);
    end
end

// int_kernelData_24[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernelData_24[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNELDATA_24_DATA_0)
            int_kernelData_24[31:0] <= (WDATA[31:0] & wmask) | (int_kernelData_24[31:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------

endmodule
