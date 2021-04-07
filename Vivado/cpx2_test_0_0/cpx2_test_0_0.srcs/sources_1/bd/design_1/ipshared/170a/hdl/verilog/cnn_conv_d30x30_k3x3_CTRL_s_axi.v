// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1ns/1ps
module cnn_conv_d30x30_k3x3_CTRL_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 7,
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
    output wire [31:0]                   kernel_0,
    output wire [31:0]                   kernel_1,
    output wire [31:0]                   kernel_2,
    output wire [31:0]                   kernel_3,
    output wire [31:0]                   kernel_4,
    output wire [31:0]                   kernel_5,
    output wire [31:0]                   kernel_6,
    output wire [31:0]                   kernel_7,
    output wire [31:0]                   kernel_8
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
// 0x18 : Data signal of kernel_0
//        bit 31~0 - kernel_0[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of kernel_1
//        bit 31~0 - kernel_1[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of kernel_2
//        bit 31~0 - kernel_2[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of kernel_3
//        bit 31~0 - kernel_3[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of kernel_4
//        bit 31~0 - kernel_4[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of kernel_5
//        bit 31~0 - kernel_5[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of kernel_6
//        bit 31~0 - kernel_6[31:0] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of kernel_7
//        bit 31~0 - kernel_7[31:0] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of kernel_8
//        bit 31~0 - kernel_8[31:0] (Read/Write)
// 0x5c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL         = 7'h00,
    ADDR_GIE             = 7'h04,
    ADDR_IER             = 7'h08,
    ADDR_ISR             = 7'h0c,
    ADDR_CTRL_DATA_0     = 7'h10,
    ADDR_CTRL_CTRL       = 7'h14,
    ADDR_KERNEL_0_DATA_0 = 7'h18,
    ADDR_KERNEL_0_CTRL   = 7'h1c,
    ADDR_KERNEL_1_DATA_0 = 7'h20,
    ADDR_KERNEL_1_CTRL   = 7'h24,
    ADDR_KERNEL_2_DATA_0 = 7'h28,
    ADDR_KERNEL_2_CTRL   = 7'h2c,
    ADDR_KERNEL_3_DATA_0 = 7'h30,
    ADDR_KERNEL_3_CTRL   = 7'h34,
    ADDR_KERNEL_4_DATA_0 = 7'h38,
    ADDR_KERNEL_4_CTRL   = 7'h3c,
    ADDR_KERNEL_5_DATA_0 = 7'h40,
    ADDR_KERNEL_5_CTRL   = 7'h44,
    ADDR_KERNEL_6_DATA_0 = 7'h48,
    ADDR_KERNEL_6_CTRL   = 7'h4c,
    ADDR_KERNEL_7_DATA_0 = 7'h50,
    ADDR_KERNEL_7_CTRL   = 7'h54,
    ADDR_KERNEL_8_DATA_0 = 7'h58,
    ADDR_KERNEL_8_CTRL   = 7'h5c,
    WRIDLE               = 2'd0,
    WRDATA               = 2'd1,
    WRRESP               = 2'd2,
    RDIDLE               = 2'd0,
    RDDATA               = 2'd1,
    ADDR_BITS         = 7;

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
    reg  [31:0]                   int_kernel_0;
    reg  [31:0]                   int_kernel_1;
    reg  [31:0]                   int_kernel_2;
    reg  [31:0]                   int_kernel_3;
    reg  [31:0]                   int_kernel_4;
    reg  [31:0]                   int_kernel_5;
    reg  [31:0]                   int_kernel_6;
    reg  [31:0]                   int_kernel_7;
    reg  [31:0]                   int_kernel_8;

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
                ADDR_KERNEL_0_DATA_0: begin
                    rdata <= int_kernel_0[31:0];
                end
                ADDR_KERNEL_1_DATA_0: begin
                    rdata <= int_kernel_1[31:0];
                end
                ADDR_KERNEL_2_DATA_0: begin
                    rdata <= int_kernel_2[31:0];
                end
                ADDR_KERNEL_3_DATA_0: begin
                    rdata <= int_kernel_3[31:0];
                end
                ADDR_KERNEL_4_DATA_0: begin
                    rdata <= int_kernel_4[31:0];
                end
                ADDR_KERNEL_5_DATA_0: begin
                    rdata <= int_kernel_5[31:0];
                end
                ADDR_KERNEL_6_DATA_0: begin
                    rdata <= int_kernel_6[31:0];
                end
                ADDR_KERNEL_7_DATA_0: begin
                    rdata <= int_kernel_7[31:0];
                end
                ADDR_KERNEL_8_DATA_0: begin
                    rdata <= int_kernel_8[31:0];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt    = int_gie & (|int_isr);
assign ap_start     = int_ap_start;
assign int_ap_idle  = ap_idle;
assign int_ap_ready = ap_ready;
assign ctrl         = int_ctrl;
assign kernel_0     = int_kernel_0;
assign kernel_1     = int_kernel_1;
assign kernel_2     = int_kernel_2;
assign kernel_3     = int_kernel_3;
assign kernel_4     = int_kernel_4;
assign kernel_5     = int_kernel_5;
assign kernel_6     = int_kernel_6;
assign kernel_7     = int_kernel_7;
assign kernel_8     = int_kernel_8;
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

// int_kernel_0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernel_0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNEL_0_DATA_0)
            int_kernel_0[31:0] <= (WDATA[31:0] & wmask) | (int_kernel_0[31:0] & ~wmask);
    end
end

// int_kernel_1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernel_1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNEL_1_DATA_0)
            int_kernel_1[31:0] <= (WDATA[31:0] & wmask) | (int_kernel_1[31:0] & ~wmask);
    end
end

// int_kernel_2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernel_2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNEL_2_DATA_0)
            int_kernel_2[31:0] <= (WDATA[31:0] & wmask) | (int_kernel_2[31:0] & ~wmask);
    end
end

// int_kernel_3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernel_3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNEL_3_DATA_0)
            int_kernel_3[31:0] <= (WDATA[31:0] & wmask) | (int_kernel_3[31:0] & ~wmask);
    end
end

// int_kernel_4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernel_4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNEL_4_DATA_0)
            int_kernel_4[31:0] <= (WDATA[31:0] & wmask) | (int_kernel_4[31:0] & ~wmask);
    end
end

// int_kernel_5[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernel_5[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNEL_5_DATA_0)
            int_kernel_5[31:0] <= (WDATA[31:0] & wmask) | (int_kernel_5[31:0] & ~wmask);
    end
end

// int_kernel_6[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernel_6[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNEL_6_DATA_0)
            int_kernel_6[31:0] <= (WDATA[31:0] & wmask) | (int_kernel_6[31:0] & ~wmask);
    end
end

// int_kernel_7[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernel_7[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNEL_7_DATA_0)
            int_kernel_7[31:0] <= (WDATA[31:0] & wmask) | (int_kernel_7[31:0] & ~wmask);
    end
end

// int_kernel_8[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernel_8[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNEL_8_DATA_0)
            int_kernel_8[31:0] <= (WDATA[31:0] & wmask) | (int_kernel_8[31:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------

endmodule
