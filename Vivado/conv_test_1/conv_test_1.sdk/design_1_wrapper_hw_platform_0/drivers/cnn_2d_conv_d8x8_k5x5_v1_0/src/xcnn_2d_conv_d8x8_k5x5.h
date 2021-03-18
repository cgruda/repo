// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XCNN_2D_CONV_D8X8_K5X5_H
#define XCNN_2D_CONV_D8X8_K5X5_H

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
#include "xcnn_2d_conv_d8x8_k5x5_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_BaseAddress;
} XCnn_2d_conv_d8x8_k5x5_Config;
#endif

typedef struct {
    u32 Ctrl_BaseAddress;
    u32 IsReady;
} XCnn_2d_conv_d8x8_k5x5;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCnn_2d_conv_d8x8_k5x5_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCnn_2d_conv_d8x8_k5x5_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCnn_2d_conv_d8x8_k5x5_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCnn_2d_conv_d8x8_k5x5_ReadReg(BaseAddress, RegOffset) \
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
int XCnn_2d_conv_d8x8_k5x5_Initialize(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u16 DeviceId);
XCnn_2d_conv_d8x8_k5x5_Config* XCnn_2d_conv_d8x8_k5x5_LookupConfig(u16 DeviceId);
int XCnn_2d_conv_d8x8_k5x5_CfgInitialize(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, XCnn_2d_conv_d8x8_k5x5_Config *ConfigPtr);
#else
int XCnn_2d_conv_d8x8_k5x5_Initialize(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, const char* InstanceName);
int XCnn_2d_conv_d8x8_k5x5_Release(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
#endif

void XCnn_2d_conv_d8x8_k5x5_Start(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
u32 XCnn_2d_conv_d8x8_k5x5_IsDone(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
u32 XCnn_2d_conv_d8x8_k5x5_IsIdle(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
u32 XCnn_2d_conv_d8x8_k5x5_IsReady(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_EnableAutoRestart(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_DisableAutoRestart(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);

void XCnn_2d_conv_d8x8_k5x5_Set_ctrl(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Data);
u32 XCnn_2d_conv_d8x8_k5x5_Get_ctrl(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_Set_kernelData_0(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Data);
u32 XCnn_2d_conv_d8x8_k5x5_Get_kernelData_0(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_Set_kernelData_1(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Data);
u32 XCnn_2d_conv_d8x8_k5x5_Get_kernelData_1(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_Set_kernelData_2(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Data);
u32 XCnn_2d_conv_d8x8_k5x5_Get_kernelData_2(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_Set_kernelData_3(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Data);
u32 XCnn_2d_conv_d8x8_k5x5_Get_kernelData_3(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_Set_kernelData_4(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Data);
u32 XCnn_2d_conv_d8x8_k5x5_Get_kernelData_4(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_Set_kernelData_5(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Data);
u32 XCnn_2d_conv_d8x8_k5x5_Get_kernelData_5(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_Set_kernelData_6(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Data);
u32 XCnn_2d_conv_d8x8_k5x5_Get_kernelData_6(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_Set_kernelData_7(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Data);
u32 XCnn_2d_conv_d8x8_k5x5_Get_kernelData_7(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_Set_kernelData_8(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Data);
u32 XCnn_2d_conv_d8x8_k5x5_Get_kernelData_8(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_Set_kernelData_9(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Data);
u32 XCnn_2d_conv_d8x8_k5x5_Get_kernelData_9(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_Set_kernelData_10(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Data);
u32 XCnn_2d_conv_d8x8_k5x5_Get_kernelData_10(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_Set_kernelData_11(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Data);
u32 XCnn_2d_conv_d8x8_k5x5_Get_kernelData_11(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_Set_kernelData_12(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Data);
u32 XCnn_2d_conv_d8x8_k5x5_Get_kernelData_12(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_Set_kernelData_13(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Data);
u32 XCnn_2d_conv_d8x8_k5x5_Get_kernelData_13(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_Set_kernelData_14(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Data);
u32 XCnn_2d_conv_d8x8_k5x5_Get_kernelData_14(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_Set_kernelData_15(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Data);
u32 XCnn_2d_conv_d8x8_k5x5_Get_kernelData_15(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_Set_kernelData_16(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Data);
u32 XCnn_2d_conv_d8x8_k5x5_Get_kernelData_16(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_Set_kernelData_17(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Data);
u32 XCnn_2d_conv_d8x8_k5x5_Get_kernelData_17(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_Set_kernelData_18(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Data);
u32 XCnn_2d_conv_d8x8_k5x5_Get_kernelData_18(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_Set_kernelData_19(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Data);
u32 XCnn_2d_conv_d8x8_k5x5_Get_kernelData_19(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_Set_kernelData_20(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Data);
u32 XCnn_2d_conv_d8x8_k5x5_Get_kernelData_20(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_Set_kernelData_21(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Data);
u32 XCnn_2d_conv_d8x8_k5x5_Get_kernelData_21(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_Set_kernelData_22(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Data);
u32 XCnn_2d_conv_d8x8_k5x5_Get_kernelData_22(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_Set_kernelData_23(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Data);
u32 XCnn_2d_conv_d8x8_k5x5_Get_kernelData_23(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_Set_kernelData_24(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Data);
u32 XCnn_2d_conv_d8x8_k5x5_Get_kernelData_24(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);

void XCnn_2d_conv_d8x8_k5x5_InterruptGlobalEnable(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_InterruptGlobalDisable(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
void XCnn_2d_conv_d8x8_k5x5_InterruptEnable(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Mask);
void XCnn_2d_conv_d8x8_k5x5_InterruptDisable(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Mask);
void XCnn_2d_conv_d8x8_k5x5_InterruptClear(XCnn_2d_conv_d8x8_k5x5 *InstancePtr, u32 Mask);
u32 XCnn_2d_conv_d8x8_k5x5_InterruptGetEnabled(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);
u32 XCnn_2d_conv_d8x8_k5x5_InterruptGetStatus(XCnn_2d_conv_d8x8_k5x5 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif