// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xcnn_pool_d92x92_p2x2.h"

extern XCnn_pool_d92x92_p2x2_Config XCnn_pool_d92x92_p2x2_ConfigTable[];

XCnn_pool_d92x92_p2x2_Config *XCnn_pool_d92x92_p2x2_LookupConfig(u16 DeviceId) {
	XCnn_pool_d92x92_p2x2_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCNN_POOL_D92X92_P2X2_NUM_INSTANCES; Index++) {
		if (XCnn_pool_d92x92_p2x2_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCnn_pool_d92x92_p2x2_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCnn_pool_d92x92_p2x2_Initialize(XCnn_pool_d92x92_p2x2 *InstancePtr, u16 DeviceId) {
	XCnn_pool_d92x92_p2x2_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCnn_pool_d92x92_p2x2_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCnn_pool_d92x92_p2x2_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

