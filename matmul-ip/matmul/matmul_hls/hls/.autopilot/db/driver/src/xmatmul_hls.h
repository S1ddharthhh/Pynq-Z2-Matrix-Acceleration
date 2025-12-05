// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XMATMUL_HLS_H
#define XMATMUL_HLS_H

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
#include "xmatmul_hls_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XMatmul_hls_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMatmul_hls;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMatmul_hls_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMatmul_hls_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMatmul_hls_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMatmul_hls_ReadReg(BaseAddress, RegOffset) \
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
#ifdef SDT
int XMatmul_hls_Initialize(XMatmul_hls *InstancePtr, UINTPTR BaseAddress);
XMatmul_hls_Config* XMatmul_hls_LookupConfig(UINTPTR BaseAddress);
#else
int XMatmul_hls_Initialize(XMatmul_hls *InstancePtr, u16 DeviceId);
XMatmul_hls_Config* XMatmul_hls_LookupConfig(u16 DeviceId);
#endif
int XMatmul_hls_CfgInitialize(XMatmul_hls *InstancePtr, XMatmul_hls_Config *ConfigPtr);
#else
int XMatmul_hls_Initialize(XMatmul_hls *InstancePtr, const char* InstanceName);
int XMatmul_hls_Release(XMatmul_hls *InstancePtr);
#endif

void XMatmul_hls_Start(XMatmul_hls *InstancePtr);
u32 XMatmul_hls_IsDone(XMatmul_hls *InstancePtr);
u32 XMatmul_hls_IsIdle(XMatmul_hls *InstancePtr);
u32 XMatmul_hls_IsReady(XMatmul_hls *InstancePtr);
void XMatmul_hls_EnableAutoRestart(XMatmul_hls *InstancePtr);
void XMatmul_hls_DisableAutoRestart(XMatmul_hls *InstancePtr);


void XMatmul_hls_InterruptGlobalEnable(XMatmul_hls *InstancePtr);
void XMatmul_hls_InterruptGlobalDisable(XMatmul_hls *InstancePtr);
void XMatmul_hls_InterruptEnable(XMatmul_hls *InstancePtr, u32 Mask);
void XMatmul_hls_InterruptDisable(XMatmul_hls *InstancePtr, u32 Mask);
void XMatmul_hls_InterruptClear(XMatmul_hls *InstancePtr, u32 Mask);
u32 XMatmul_hls_InterruptGetEnabled(XMatmul_hls *InstancePtr);
u32 XMatmul_hls_InterruptGetStatus(XMatmul_hls *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
