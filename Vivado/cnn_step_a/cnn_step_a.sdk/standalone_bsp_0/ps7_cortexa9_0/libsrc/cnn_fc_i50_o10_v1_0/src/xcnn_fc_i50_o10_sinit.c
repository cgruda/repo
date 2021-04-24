// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xcnn_fc_i50_o10.h"

extern XCnn_fc_i50_o10_Config XCnn_fc_i50_o10_ConfigTable[];

XCnn_fc_i50_o10_Config *XCnn_fc_i50_o10_LookupConfig(u16 DeviceId) {
	XCnn_fc_i50_o10_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCNN_FC_I50_O10_NUM_INSTANCES; Index++) {
		if (XCnn_fc_i50_o10_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCnn_fc_i50_o10_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCnn_fc_i50_o10_Initialize(XCnn_fc_i50_o10 *InstancePtr, u16 DeviceId) {
	XCnn_fc_i50_o10_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCnn_fc_i50_o10_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCnn_fc_i50_o10_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

