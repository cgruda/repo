// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XCNN_POOL_D4X4_P2X2_H
#define XCNN_POOL_D4X4_P2X2_H

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
#include "xcnn_pool_d4x4_p2x2_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_BaseAddress;
} XCnn_pool_d4x4_p2x2_Config;
#endif

typedef struct {
    u32 Ctrl_BaseAddress;
    u32 IsReady;
} XCnn_pool_d4x4_p2x2;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCnn_pool_d4x4_p2x2_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCnn_pool_d4x4_p2x2_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCnn_pool_d4x4_p2x2_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCnn_pool_d4x4_p2x2_ReadReg(BaseAddress, RegOffset) \
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
int XCnn_pool_d4x4_p2x2_Initialize(XCnn_pool_d4x4_p2x2 *InstancePtr, u16 DeviceId);
XCnn_pool_d4x4_p2x2_Config* XCnn_pool_d4x4_p2x2_LookupConfig(u16 DeviceId);
int XCnn_pool_d4x4_p2x2_CfgInitialize(XCnn_pool_d4x4_p2x2 *InstancePtr, XCnn_pool_d4x4_p2x2_Config *ConfigPtr);
#else
int XCnn_pool_d4x4_p2x2_Initialize(XCnn_pool_d4x4_p2x2 *InstancePtr, const char* InstanceName);
int XCnn_pool_d4x4_p2x2_Release(XCnn_pool_d4x4_p2x2 *InstancePtr);
#endif

void XCnn_pool_d4x4_p2x2_Start(XCnn_pool_d4x4_p2x2 *InstancePtr);
u32 XCnn_pool_d4x4_p2x2_IsDone(XCnn_pool_d4x4_p2x2 *InstancePtr);
u32 XCnn_pool_d4x4_p2x2_IsIdle(XCnn_pool_d4x4_p2x2 *InstancePtr);
u32 XCnn_pool_d4x4_p2x2_IsReady(XCnn_pool_d4x4_p2x2 *InstancePtr);
void XCnn_pool_d4x4_p2x2_EnableAutoRestart(XCnn_pool_d4x4_p2x2 *InstancePtr);
void XCnn_pool_d4x4_p2x2_DisableAutoRestart(XCnn_pool_d4x4_p2x2 *InstancePtr);

void XCnn_pool_d4x4_p2x2_Set_ctrl(XCnn_pool_d4x4_p2x2 *InstancePtr, u32 Data);
u32 XCnn_pool_d4x4_p2x2_Get_ctrl(XCnn_pool_d4x4_p2x2 *InstancePtr);

void XCnn_pool_d4x4_p2x2_InterruptGlobalEnable(XCnn_pool_d4x4_p2x2 *InstancePtr);
void XCnn_pool_d4x4_p2x2_InterruptGlobalDisable(XCnn_pool_d4x4_p2x2 *InstancePtr);
void XCnn_pool_d4x4_p2x2_InterruptEnable(XCnn_pool_d4x4_p2x2 *InstancePtr, u32 Mask);
void XCnn_pool_d4x4_p2x2_InterruptDisable(XCnn_pool_d4x4_p2x2 *InstancePtr, u32 Mask);
void XCnn_pool_d4x4_p2x2_InterruptClear(XCnn_pool_d4x4_p2x2 *InstancePtr, u32 Mask);
u32 XCnn_pool_d4x4_p2x2_InterruptGetEnabled(XCnn_pool_d4x4_p2x2 *InstancePtr);
u32 XCnn_pool_d4x4_p2x2_InterruptGetStatus(XCnn_pool_d4x4_p2x2 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
