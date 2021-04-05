// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XCNN_CONV_D8X8_K3X3_H
#define XCNN_CONV_D8X8_K3X3_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xcnn_conv_d8x8_k3x3_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_BaseAddress;
} XCnn_conv_d8x8_k3x3_Config;
#endif

typedef struct {
    u32 Ctrl_BaseAddress;
    u32 IsReady;
} XCnn_conv_d8x8_k3x3;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCnn_conv_d8x8_k3x3_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCnn_conv_d8x8_k3x3_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCnn_conv_d8x8_k3x3_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCnn_conv_d8x8_k3x3_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XCnn_conv_d8x8_k3x3_Initialize(XCnn_conv_d8x8_k3x3 *InstancePtr, u16 DeviceId);
XCnn_conv_d8x8_k3x3_Config* XCnn_conv_d8x8_k3x3_LookupConfig(u16 DeviceId);
int XCnn_conv_d8x8_k3x3_CfgInitialize(XCnn_conv_d8x8_k3x3 *InstancePtr, XCnn_conv_d8x8_k3x3_Config *ConfigPtr);
#else
int XCnn_conv_d8x8_k3x3_Initialize(XCnn_conv_d8x8_k3x3 *InstancePtr, const char* InstanceName);
int XCnn_conv_d8x8_k3x3_Release(XCnn_conv_d8x8_k3x3 *InstancePtr);
#endif

void XCnn_conv_d8x8_k3x3_Start(XCnn_conv_d8x8_k3x3 *InstancePtr);
u32 XCnn_conv_d8x8_k3x3_IsDone(XCnn_conv_d8x8_k3x3 *InstancePtr);
u32 XCnn_conv_d8x8_k3x3_IsIdle(XCnn_conv_d8x8_k3x3 *InstancePtr);
u32 XCnn_conv_d8x8_k3x3_IsReady(XCnn_conv_d8x8_k3x3 *InstancePtr);
void XCnn_conv_d8x8_k3x3_EnableAutoRestart(XCnn_conv_d8x8_k3x3 *InstancePtr);
void XCnn_conv_d8x8_k3x3_DisableAutoRestart(XCnn_conv_d8x8_k3x3 *InstancePtr);

void XCnn_conv_d8x8_k3x3_Set_ctrl(XCnn_conv_d8x8_k3x3 *InstancePtr, u32 Data);
u32 XCnn_conv_d8x8_k3x3_Get_ctrl(XCnn_conv_d8x8_k3x3 *InstancePtr);
void XCnn_conv_d8x8_k3x3_Set_kernel_0(XCnn_conv_d8x8_k3x3 *InstancePtr, u32 Data);
u32 XCnn_conv_d8x8_k3x3_Get_kernel_0(XCnn_conv_d8x8_k3x3 *InstancePtr);
void XCnn_conv_d8x8_k3x3_Set_kernel_1(XCnn_conv_d8x8_k3x3 *InstancePtr, u32 Data);
u32 XCnn_conv_d8x8_k3x3_Get_kernel_1(XCnn_conv_d8x8_k3x3 *InstancePtr);
void XCnn_conv_d8x8_k3x3_Set_kernel_2(XCnn_conv_d8x8_k3x3 *InstancePtr, u32 Data);
u32 XCnn_conv_d8x8_k3x3_Get_kernel_2(XCnn_conv_d8x8_k3x3 *InstancePtr);
void XCnn_conv_d8x8_k3x3_Set_kernel_3(XCnn_conv_d8x8_k3x3 *InstancePtr, u32 Data);
u32 XCnn_conv_d8x8_k3x3_Get_kernel_3(XCnn_conv_d8x8_k3x3 *InstancePtr);
void XCnn_conv_d8x8_k3x3_Set_kernel_4(XCnn_conv_d8x8_k3x3 *InstancePtr, u32 Data);
u32 XCnn_conv_d8x8_k3x3_Get_kernel_4(XCnn_conv_d8x8_k3x3 *InstancePtr);
void XCnn_conv_d8x8_k3x3_Set_kernel_5(XCnn_conv_d8x8_k3x3 *InstancePtr, u32 Data);
u32 XCnn_conv_d8x8_k3x3_Get_kernel_5(XCnn_conv_d8x8_k3x3 *InstancePtr);
void XCnn_conv_d8x8_k3x3_Set_kernel_6(XCnn_conv_d8x8_k3x3 *InstancePtr, u32 Data);
u32 XCnn_conv_d8x8_k3x3_Get_kernel_6(XCnn_conv_d8x8_k3x3 *InstancePtr);
void XCnn_conv_d8x8_k3x3_Set_kernel_7(XCnn_conv_d8x8_k3x3 *InstancePtr, u32 Data);
u32 XCnn_conv_d8x8_k3x3_Get_kernel_7(XCnn_conv_d8x8_k3x3 *InstancePtr);
void XCnn_conv_d8x8_k3x3_Set_kernel_8(XCnn_conv_d8x8_k3x3 *InstancePtr, u32 Data);
u32 XCnn_conv_d8x8_k3x3_Get_kernel_8(XCnn_conv_d8x8_k3x3 *InstancePtr);

void XCnn_conv_d8x8_k3x3_InterruptGlobalEnable(XCnn_conv_d8x8_k3x3 *InstancePtr);
void XCnn_conv_d8x8_k3x3_InterruptGlobalDisable(XCnn_conv_d8x8_k3x3 *InstancePtr);
void XCnn_conv_d8x8_k3x3_InterruptEnable(XCnn_conv_d8x8_k3x3 *InstancePtr, u32 Mask);
void XCnn_conv_d8x8_k3x3_InterruptDisable(XCnn_conv_d8x8_k3x3 *InstancePtr, u32 Mask);
void XCnn_conv_d8x8_k3x3_InterruptClear(XCnn_conv_d8x8_k3x3 *InstancePtr, u32 Mask);
u32 XCnn_conv_d8x8_k3x3_InterruptGetEnabled(XCnn_conv_d8x8_k3x3 *InstancePtr);
u32 XCnn_conv_d8x8_k3x3_InterruptGetStatus(XCnn_conv_d8x8_k3x3 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
