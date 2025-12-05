// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xmatmul_hls.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMatmul_hls_CfgInitialize(XMatmul_hls *InstancePtr, XMatmul_hls_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMatmul_hls_Start(XMatmul_hls *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatmul_hls_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_HLS_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMatmul_hls_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_HLS_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMatmul_hls_IsDone(XMatmul_hls *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatmul_hls_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_HLS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMatmul_hls_IsIdle(XMatmul_hls *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatmul_hls_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_HLS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMatmul_hls_IsReady(XMatmul_hls *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatmul_hls_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_HLS_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMatmul_hls_EnableAutoRestart(XMatmul_hls *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatmul_hls_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_HLS_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMatmul_hls_DisableAutoRestart(XMatmul_hls *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatmul_hls_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_HLS_CONTROL_ADDR_AP_CTRL, 0);
}

void XMatmul_hls_InterruptGlobalEnable(XMatmul_hls *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatmul_hls_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_HLS_CONTROL_ADDR_GIE, 1);
}

void XMatmul_hls_InterruptGlobalDisable(XMatmul_hls *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatmul_hls_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_HLS_CONTROL_ADDR_GIE, 0);
}

void XMatmul_hls_InterruptEnable(XMatmul_hls *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMatmul_hls_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_HLS_CONTROL_ADDR_IER);
    XMatmul_hls_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_HLS_CONTROL_ADDR_IER, Register | Mask);
}

void XMatmul_hls_InterruptDisable(XMatmul_hls *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMatmul_hls_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_HLS_CONTROL_ADDR_IER);
    XMatmul_hls_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_HLS_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMatmul_hls_InterruptClear(XMatmul_hls *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatmul_hls_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_HLS_CONTROL_ADDR_ISR, Mask);
}

u32 XMatmul_hls_InterruptGetEnabled(XMatmul_hls *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMatmul_hls_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_HLS_CONTROL_ADDR_IER);
}

u32 XMatmul_hls_InterruptGetStatus(XMatmul_hls *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMatmul_hls_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_HLS_CONTROL_ADDR_ISR);
}

