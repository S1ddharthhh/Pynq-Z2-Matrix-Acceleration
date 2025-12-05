// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xmatmul_hls.h"

extern XMatmul_hls_Config XMatmul_hls_ConfigTable[];

#ifdef SDT
XMatmul_hls_Config *XMatmul_hls_LookupConfig(UINTPTR BaseAddress) {
	XMatmul_hls_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XMatmul_hls_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XMatmul_hls_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XMatmul_hls_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMatmul_hls_Initialize(XMatmul_hls *InstancePtr, UINTPTR BaseAddress) {
	XMatmul_hls_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMatmul_hls_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMatmul_hls_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XMatmul_hls_Config *XMatmul_hls_LookupConfig(u16 DeviceId) {
	XMatmul_hls_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMATMUL_HLS_NUM_INSTANCES; Index++) {
		if (XMatmul_hls_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMatmul_hls_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMatmul_hls_Initialize(XMatmul_hls *InstancePtr, u16 DeviceId) {
	XMatmul_hls_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMatmul_hls_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMatmul_hls_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

