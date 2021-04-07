// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xcnn_conv_d30x30_k3x3.h"

extern XCnn_conv_d30x30_k3x3_Config XCnn_conv_d30x30_k3x3_ConfigTable[];

XCnn_conv_d30x30_k3x3_Config *XCnn_conv_d30x30_k3x3_LookupConfig(u16 DeviceId) {
	XCnn_conv_d30x30_k3x3_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCNN_CONV_D30X30_K3X3_NUM_INSTANCES; Index++) {
		if (XCnn_conv_d30x30_k3x3_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCnn_conv_d30x30_k3x3_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCnn_conv_d30x30_k3x3_Initialize(XCnn_conv_d30x30_k3x3 *InstancePtr, u16 DeviceId) {
	XCnn_conv_d30x30_k3x3_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCnn_conv_d30x30_k3x3_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCnn_conv_d30x30_k3x3_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

