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

#define XCNN_CONV_D30X30_K3X3_CTRL_ADDR_AP_CTRL       0x00
#define XCNN_CONV_D30X30_K3X3_CTRL_ADDR_GIE           0x04
#define XCNN_CONV_D30X30_K3X3_CTRL_ADDR_IER           0x08
#define XCNN_CONV_D30X30_K3X3_CTRL_ADDR_ISR           0x0c
#define XCNN_CONV_D30X30_K3X3_CTRL_ADDR_CTRL_DATA     0x10
#define XCNN_CONV_D30X30_K3X3_CTRL_BITS_CTRL_DATA     32
#define XCNN_CONV_D30X30_K3X3_CTRL_ADDR_KERNEL_0_DATA 0x18
#define XCNN_CONV_D30X30_K3X3_CTRL_BITS_KERNEL_0_DATA 32
#define XCNN_CONV_D30X30_K3X3_CTRL_ADDR_KERNEL_1_DATA 0x20
#define XCNN_CONV_D30X30_K3X3_CTRL_BITS_KERNEL_1_DATA 32
#define XCNN_CONV_D30X30_K3X3_CTRL_ADDR_KERNEL_2_DATA 0x28
#define XCNN_CONV_D30X30_K3X3_CTRL_BITS_KERNEL_2_DATA 32
#define XCNN_CONV_D30X30_K3X3_CTRL_ADDR_KERNEL_3_DATA 0x30
#define XCNN_CONV_D30X30_K3X3_CTRL_BITS_KERNEL_3_DATA 32
#define XCNN_CONV_D30X30_K3X3_CTRL_ADDR_KERNEL_4_DATA 0x38
#define XCNN_CONV_D30X30_K3X3_CTRL_BITS_KERNEL_4_DATA 32
#define XCNN_CONV_D30X30_K3X3_CTRL_ADDR_KERNEL_5_DATA 0x40
#define XCNN_CONV_D30X30_K3X3_CTRL_BITS_KERNEL_5_DATA 32
#define XCNN_CONV_D30X30_K3X3_CTRL_ADDR_KERNEL_6_DATA 0x48
#define XCNN_CONV_D30X30_K3X3_CTRL_BITS_KERNEL_6_DATA 32
#define XCNN_CONV_D30X30_K3X3_CTRL_ADDR_KERNEL_7_DATA 0x50
#define XCNN_CONV_D30X30_K3X3_CTRL_BITS_KERNEL_7_DATA 32
#define XCNN_CONV_D30X30_K3X3_CTRL_ADDR_KERNEL_8_DATA 0x58
#define XCNN_CONV_D30X30_K3X3_CTRL_BITS_KERNEL_8_DATA 32

