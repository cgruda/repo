// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XCNN_FC_I50_O10_H
#define XCNN_FC_I50_O10_H

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
#include "xcnn_fc_i50_o10_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_BaseAddress;
} XCnn_fc_i50_o10_Config;
#endif

typedef struct {
    u32 Ctrl_BaseAddress;
    u32 IsReady;
} XCnn_fc_i50_o10;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCnn_fc_i50_o10_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCnn_fc_i50_o10_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCnn_fc_i50_o10_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCnn_fc_i50_o10_ReadReg(BaseAddress, RegOffset) \
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
int XCnn_fc_i50_o10_Initialize(XCnn_fc_i50_o10 *InstancePtr, u16 DeviceId);
XCnn_fc_i50_o10_Config* XCnn_fc_i50_o10_LookupConfig(u16 DeviceId);
int XCnn_fc_i50_o10_CfgInitialize(XCnn_fc_i50_o10 *InstancePtr, XCnn_fc_i50_o10_Config *ConfigPtr);
#else
int XCnn_fc_i50_o10_Initialize(XCnn_fc_i50_o10 *InstancePtr, const char* InstanceName);
int XCnn_fc_i50_o10_Release(XCnn_fc_i50_o10 *InstancePtr);
#endif

void XCnn_fc_i50_o10_Start(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_IsDone(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_IsIdle(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_IsReady(XCnn_fc_i50_o10 *InstancePtr);
void XCnn_fc_i50_o10_EnableAutoRestart(XCnn_fc_i50_o10 *InstancePtr);
void XCnn_fc_i50_o10_DisableAutoRestart(XCnn_fc_i50_o10 *InstancePtr);

void XCnn_fc_i50_o10_Set_ctrl(XCnn_fc_i50_o10 *InstancePtr, u32 Data);
u32 XCnn_fc_i50_o10_Get_ctrl(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_0_BaseAddress(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_0_HighAddress(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_0_TotalBytes(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_0_BitWidth(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_0_Depth(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Write_weight_0_Words(XCnn_fc_i50_o10 *InstancePtr, int offset, int *data, int length);
u32 XCnn_fc_i50_o10_Read_weight_0_Words(XCnn_fc_i50_o10 *InstancePtr, int offset, int *data, int length);
u32 XCnn_fc_i50_o10_Write_weight_0_Bytes(XCnn_fc_i50_o10 *InstancePtr, int offset, char *data, int length);
u32 XCnn_fc_i50_o10_Read_weight_0_Bytes(XCnn_fc_i50_o10 *InstancePtr, int offset, char *data, int length);
u32 XCnn_fc_i50_o10_Get_weight_1_BaseAddress(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_1_HighAddress(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_1_TotalBytes(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_1_BitWidth(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_1_Depth(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Write_weight_1_Words(XCnn_fc_i50_o10 *InstancePtr, int offset, int *data, int length);
u32 XCnn_fc_i50_o10_Read_weight_1_Words(XCnn_fc_i50_o10 *InstancePtr, int offset, int *data, int length);
u32 XCnn_fc_i50_o10_Write_weight_1_Bytes(XCnn_fc_i50_o10 *InstancePtr, int offset, char *data, int length);
u32 XCnn_fc_i50_o10_Read_weight_1_Bytes(XCnn_fc_i50_o10 *InstancePtr, int offset, char *data, int length);
u32 XCnn_fc_i50_o10_Get_weight_2_BaseAddress(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_2_HighAddress(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_2_TotalBytes(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_2_BitWidth(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_2_Depth(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Write_weight_2_Words(XCnn_fc_i50_o10 *InstancePtr, int offset, int *data, int length);
u32 XCnn_fc_i50_o10_Read_weight_2_Words(XCnn_fc_i50_o10 *InstancePtr, int offset, int *data, int length);
u32 XCnn_fc_i50_o10_Write_weight_2_Bytes(XCnn_fc_i50_o10 *InstancePtr, int offset, char *data, int length);
u32 XCnn_fc_i50_o10_Read_weight_2_Bytes(XCnn_fc_i50_o10 *InstancePtr, int offset, char *data, int length);
u32 XCnn_fc_i50_o10_Get_weight_3_BaseAddress(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_3_HighAddress(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_3_TotalBytes(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_3_BitWidth(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_3_Depth(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Write_weight_3_Words(XCnn_fc_i50_o10 *InstancePtr, int offset, int *data, int length);
u32 XCnn_fc_i50_o10_Read_weight_3_Words(XCnn_fc_i50_o10 *InstancePtr, int offset, int *data, int length);
u32 XCnn_fc_i50_o10_Write_weight_3_Bytes(XCnn_fc_i50_o10 *InstancePtr, int offset, char *data, int length);
u32 XCnn_fc_i50_o10_Read_weight_3_Bytes(XCnn_fc_i50_o10 *InstancePtr, int offset, char *data, int length);
u32 XCnn_fc_i50_o10_Get_weight_4_BaseAddress(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_4_HighAddress(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_4_TotalBytes(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_4_BitWidth(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_4_Depth(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Write_weight_4_Words(XCnn_fc_i50_o10 *InstancePtr, int offset, int *data, int length);
u32 XCnn_fc_i50_o10_Read_weight_4_Words(XCnn_fc_i50_o10 *InstancePtr, int offset, int *data, int length);
u32 XCnn_fc_i50_o10_Write_weight_4_Bytes(XCnn_fc_i50_o10 *InstancePtr, int offset, char *data, int length);
u32 XCnn_fc_i50_o10_Read_weight_4_Bytes(XCnn_fc_i50_o10 *InstancePtr, int offset, char *data, int length);
u32 XCnn_fc_i50_o10_Get_weight_5_BaseAddress(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_5_HighAddress(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_5_TotalBytes(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_5_BitWidth(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_5_Depth(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Write_weight_5_Words(XCnn_fc_i50_o10 *InstancePtr, int offset, int *data, int length);
u32 XCnn_fc_i50_o10_Read_weight_5_Words(XCnn_fc_i50_o10 *InstancePtr, int offset, int *data, int length);
u32 XCnn_fc_i50_o10_Write_weight_5_Bytes(XCnn_fc_i50_o10 *InstancePtr, int offset, char *data, int length);
u32 XCnn_fc_i50_o10_Read_weight_5_Bytes(XCnn_fc_i50_o10 *InstancePtr, int offset, char *data, int length);
u32 XCnn_fc_i50_o10_Get_weight_6_BaseAddress(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_6_HighAddress(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_6_TotalBytes(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_6_BitWidth(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_6_Depth(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Write_weight_6_Words(XCnn_fc_i50_o10 *InstancePtr, int offset, int *data, int length);
u32 XCnn_fc_i50_o10_Read_weight_6_Words(XCnn_fc_i50_o10 *InstancePtr, int offset, int *data, int length);
u32 XCnn_fc_i50_o10_Write_weight_6_Bytes(XCnn_fc_i50_o10 *InstancePtr, int offset, char *data, int length);
u32 XCnn_fc_i50_o10_Read_weight_6_Bytes(XCnn_fc_i50_o10 *InstancePtr, int offset, char *data, int length);
u32 XCnn_fc_i50_o10_Get_weight_7_BaseAddress(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_7_HighAddress(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_7_TotalBytes(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_7_BitWidth(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_7_Depth(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Write_weight_7_Words(XCnn_fc_i50_o10 *InstancePtr, int offset, int *data, int length);
u32 XCnn_fc_i50_o10_Read_weight_7_Words(XCnn_fc_i50_o10 *InstancePtr, int offset, int *data, int length);
u32 XCnn_fc_i50_o10_Write_weight_7_Bytes(XCnn_fc_i50_o10 *InstancePtr, int offset, char *data, int length);
u32 XCnn_fc_i50_o10_Read_weight_7_Bytes(XCnn_fc_i50_o10 *InstancePtr, int offset, char *data, int length);
u32 XCnn_fc_i50_o10_Get_weight_8_BaseAddress(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_8_HighAddress(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_8_TotalBytes(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_8_BitWidth(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_8_Depth(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Write_weight_8_Words(XCnn_fc_i50_o10 *InstancePtr, int offset, int *data, int length);
u32 XCnn_fc_i50_o10_Read_weight_8_Words(XCnn_fc_i50_o10 *InstancePtr, int offset, int *data, int length);
u32 XCnn_fc_i50_o10_Write_weight_8_Bytes(XCnn_fc_i50_o10 *InstancePtr, int offset, char *data, int length);
u32 XCnn_fc_i50_o10_Read_weight_8_Bytes(XCnn_fc_i50_o10 *InstancePtr, int offset, char *data, int length);
u32 XCnn_fc_i50_o10_Get_weight_9_BaseAddress(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_9_HighAddress(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_9_TotalBytes(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_9_BitWidth(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_weight_9_Depth(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Write_weight_9_Words(XCnn_fc_i50_o10 *InstancePtr, int offset, int *data, int length);
u32 XCnn_fc_i50_o10_Read_weight_9_Words(XCnn_fc_i50_o10 *InstancePtr, int offset, int *data, int length);
u32 XCnn_fc_i50_o10_Write_weight_9_Bytes(XCnn_fc_i50_o10 *InstancePtr, int offset, char *data, int length);
u32 XCnn_fc_i50_o10_Read_weight_9_Bytes(XCnn_fc_i50_o10 *InstancePtr, int offset, char *data, int length);
u32 XCnn_fc_i50_o10_Get_bias_BaseAddress(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_bias_HighAddress(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_bias_TotalBytes(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_bias_BitWidth(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Get_bias_Depth(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_Write_bias_Words(XCnn_fc_i50_o10 *InstancePtr, int offset, int *data, int length);
u32 XCnn_fc_i50_o10_Read_bias_Words(XCnn_fc_i50_o10 *InstancePtr, int offset, int *data, int length);
u32 XCnn_fc_i50_o10_Write_bias_Bytes(XCnn_fc_i50_o10 *InstancePtr, int offset, char *data, int length);
u32 XCnn_fc_i50_o10_Read_bias_Bytes(XCnn_fc_i50_o10 *InstancePtr, int offset, char *data, int length);

void XCnn_fc_i50_o10_InterruptGlobalEnable(XCnn_fc_i50_o10 *InstancePtr);
void XCnn_fc_i50_o10_InterruptGlobalDisable(XCnn_fc_i50_o10 *InstancePtr);
void XCnn_fc_i50_o10_InterruptEnable(XCnn_fc_i50_o10 *InstancePtr, u32 Mask);
void XCnn_fc_i50_o10_InterruptDisable(XCnn_fc_i50_o10 *InstancePtr, u32 Mask);
void XCnn_fc_i50_o10_InterruptClear(XCnn_fc_i50_o10 *InstancePtr, u32 Mask);
u32 XCnn_fc_i50_o10_InterruptGetEnabled(XCnn_fc_i50_o10 *InstancePtr);
u32 XCnn_fc_i50_o10_InterruptGetStatus(XCnn_fc_i50_o10 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif