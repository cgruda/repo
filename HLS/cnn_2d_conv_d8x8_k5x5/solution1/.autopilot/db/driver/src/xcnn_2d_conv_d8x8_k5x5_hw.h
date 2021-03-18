// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

// CTRL
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

#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_AP_CTRL            0x00
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_GIE                0x04
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_IER                0x08
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_ISR                0x0c
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_CTRL_DATA          0x10
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_BITS_CTRL_DATA          32
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_KERNELDATA_0_DATA  0x18
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_BITS_KERNELDATA_0_DATA  32
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_KERNELDATA_1_DATA  0x20
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_BITS_KERNELDATA_1_DATA  32
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_KERNELDATA_2_DATA  0x28
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_BITS_KERNELDATA_2_DATA  32
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_KERNELDATA_3_DATA  0x30
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_BITS_KERNELDATA_3_DATA  32
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_KERNELDATA_4_DATA  0x38
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_BITS_KERNELDATA_4_DATA  32
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_KERNELDATA_5_DATA  0x40
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_BITS_KERNELDATA_5_DATA  32
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_KERNELDATA_6_DATA  0x48
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_BITS_KERNELDATA_6_DATA  32
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_KERNELDATA_7_DATA  0x50
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_BITS_KERNELDATA_7_DATA  32
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_KERNELDATA_8_DATA  0x58
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_BITS_KERNELDATA_8_DATA  32
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_KERNELDATA_9_DATA  0x60
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_BITS_KERNELDATA_9_DATA  32
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_KERNELDATA_10_DATA 0x68
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_BITS_KERNELDATA_10_DATA 32
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_KERNELDATA_11_DATA 0x70
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_BITS_KERNELDATA_11_DATA 32
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_KERNELDATA_12_DATA 0x78
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_BITS_KERNELDATA_12_DATA 32
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_KERNELDATA_13_DATA 0x80
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_BITS_KERNELDATA_13_DATA 32
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_KERNELDATA_14_DATA 0x88
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_BITS_KERNELDATA_14_DATA 32
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_KERNELDATA_15_DATA 0x90
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_BITS_KERNELDATA_15_DATA 32
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_KERNELDATA_16_DATA 0x98
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_BITS_KERNELDATA_16_DATA 32
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_KERNELDATA_17_DATA 0xa0
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_BITS_KERNELDATA_17_DATA 32
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_KERNELDATA_18_DATA 0xa8
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_BITS_KERNELDATA_18_DATA 32
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_KERNELDATA_19_DATA 0xb0
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_BITS_KERNELDATA_19_DATA 32
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_KERNELDATA_20_DATA 0xb8
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_BITS_KERNELDATA_20_DATA 32
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_KERNELDATA_21_DATA 0xc0
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_BITS_KERNELDATA_21_DATA 32
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_KERNELDATA_22_DATA 0xc8
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_BITS_KERNELDATA_22_DATA 32
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_KERNELDATA_23_DATA 0xd0
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_BITS_KERNELDATA_23_DATA 32
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_ADDR_KERNELDATA_24_DATA 0xd8
#define XCNN_2D_CONV_D8X8_K5X5_CTRL_BITS_KERNELDATA_24_DATA 32

