// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "xcnn_pool_d24x24_p2x2.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCnn_pool_d24x24_p2x2_CfgInitialize(XCnn_pool_d24x24_p2x2 *InstancePtr, XCnn_pool_d24x24_p2x2_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCnn_pool_d24x24_p2x2_Start(XCnn_pool_d24x24_p2x2 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_pool_d24x24_p2x2_ReadReg(InstancePtr->Ctrl_BaseAddress, XCNN_POOL_D24X24_P2X2_CTRL_ADDR_AP_CTRL) & 0x80;
    XCnn_pool_d24x24_p2x2_WriteReg(InstancePtr->Ctrl_BaseAddress, XCNN_POOL_D24X24_P2X2_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCnn_pool_d24x24_p2x2_IsDone(XCnn_pool_d24x24_p2x2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_pool_d24x24_p2x2_ReadReg(InstancePtr->Ctrl_BaseAddress, XCNN_POOL_D24X24_P2X2_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCnn_pool_d24x24_p2x2_IsIdle(XCnn_pool_d24x24_p2x2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_pool_d24x24_p2x2_ReadReg(InstancePtr->Ctrl_BaseAddress, XCNN_POOL_D24X24_P2X2_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCnn_pool_d24x24_p2x2_IsReady(XCnn_pool_d24x24_p2x2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_pool_d24x24_p2x2_ReadReg(InstancePtr->Ctrl_BaseAddress, XCNN_POOL_D24X24_P2X2_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCnn_pool_d24x24_p2x2_EnableAutoRestart(XCnn_pool_d24x24_p2x2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_pool_d24x24_p2x2_WriteReg(InstancePtr->Ctrl_BaseAddress, XCNN_POOL_D24X24_P2X2_CTRL_ADDR_AP_CTRL, 0x80);
}

void XCnn_pool_d24x24_p2x2_DisableAutoRestart(XCnn_pool_d24x24_p2x2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_pool_d24x24_p2x2_WriteReg(InstancePtr->Ctrl_BaseAddress, XCNN_POOL_D24X24_P2X2_CTRL_ADDR_AP_CTRL, 0);
}

void XCnn_pool_d24x24_p2x2_Set_ctrl(XCnn_pool_d24x24_p2x2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_pool_d24x24_p2x2_WriteReg(InstancePtr->Ctrl_BaseAddress, XCNN_POOL_D24X24_P2X2_CTRL_ADDR_CTRL_DATA, Data);
}

u32 XCnn_pool_d24x24_p2x2_Get_ctrl(XCnn_pool_d24x24_p2x2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_pool_d24x24_p2x2_ReadReg(InstancePtr->Ctrl_BaseAddress, XCNN_POOL_D24X24_P2X2_CTRL_ADDR_CTRL_DATA);
    return Data;
}

void XCnn_pool_d24x24_p2x2_InterruptGlobalEnable(XCnn_pool_d24x24_p2x2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_pool_d24x24_p2x2_WriteReg(InstancePtr->Ctrl_BaseAddress, XCNN_POOL_D24X24_P2X2_CTRL_ADDR_GIE, 1);
}

void XCnn_pool_d24x24_p2x2_InterruptGlobalDisable(XCnn_pool_d24x24_p2x2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_pool_d24x24_p2x2_WriteReg(InstancePtr->Ctrl_BaseAddress, XCNN_POOL_D24X24_P2X2_CTRL_ADDR_GIE, 0);
}

void XCnn_pool_d24x24_p2x2_InterruptEnable(XCnn_pool_d24x24_p2x2 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCnn_pool_d24x24_p2x2_ReadReg(InstancePtr->Ctrl_BaseAddress, XCNN_POOL_D24X24_P2X2_CTRL_ADDR_IER);
    XCnn_pool_d24x24_p2x2_WriteReg(InstancePtr->Ctrl_BaseAddress, XCNN_POOL_D24X24_P2X2_CTRL_ADDR_IER, Register | Mask);
}

void XCnn_pool_d24x24_p2x2_InterruptDisable(XCnn_pool_d24x24_p2x2 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCnn_pool_d24x24_p2x2_ReadReg(InstancePtr->Ctrl_BaseAddress, XCNN_POOL_D24X24_P2X2_CTRL_ADDR_IER);
    XCnn_pool_d24x24_p2x2_WriteReg(InstancePtr->Ctrl_BaseAddress, XCNN_POOL_D24X24_P2X2_CTRL_ADDR_IER, Register & (~Mask));
}

void XCnn_pool_d24x24_p2x2_InterruptClear(XCnn_pool_d24x24_p2x2 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_pool_d24x24_p2x2_WriteReg(InstancePtr->Ctrl_BaseAddress, XCNN_POOL_D24X24_P2X2_CTRL_ADDR_ISR, Mask);
}

u32 XCnn_pool_d24x24_p2x2_InterruptGetEnabled(XCnn_pool_d24x24_p2x2 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCnn_pool_d24x24_p2x2_ReadReg(InstancePtr->Ctrl_BaseAddress, XCNN_POOL_D24X24_P2X2_CTRL_ADDR_IER);
}

u32 XCnn_pool_d24x24_p2x2_InterruptGetStatus(XCnn_pool_d24x24_p2x2 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCnn_pool_d24x24_p2x2_ReadReg(InstancePtr->Ctrl_BaseAddress, XCNN_POOL_D24X24_P2X2_CTRL_ADDR_ISR);
}

