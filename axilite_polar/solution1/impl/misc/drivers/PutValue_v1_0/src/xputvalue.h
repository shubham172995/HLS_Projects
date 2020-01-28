// ==============================================================
// File generated on Tue Jan 21 18:20:20 IST 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XPUTVALUE_H
#define XPUTVALUE_H

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
#include "xputvalue_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Crtls_BaseAddress;
} XPutvalue_Config;
#endif

typedef struct {
    u32 Crtls_BaseAddress;
    u32 IsReady;
} XPutvalue;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XPutvalue_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XPutvalue_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XPutvalue_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XPutvalue_ReadReg(BaseAddress, RegOffset) \
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
int XPutvalue_Initialize(XPutvalue *InstancePtr, u16 DeviceId);
XPutvalue_Config* XPutvalue_LookupConfig(u16 DeviceId);
int XPutvalue_CfgInitialize(XPutvalue *InstancePtr, XPutvalue_Config *ConfigPtr);
#else
int XPutvalue_Initialize(XPutvalue *InstancePtr, const char* InstanceName);
int XPutvalue_Release(XPutvalue *InstancePtr);
#endif

void XPutvalue_Start(XPutvalue *InstancePtr);
u32 XPutvalue_IsDone(XPutvalue *InstancePtr);
u32 XPutvalue_IsIdle(XPutvalue *InstancePtr);
u32 XPutvalue_IsReady(XPutvalue *InstancePtr);
void XPutvalue_EnableAutoRestart(XPutvalue *InstancePtr);
void XPutvalue_DisableAutoRestart(XPutvalue *InstancePtr);
u32 XPutvalue_Get_return(XPutvalue *InstancePtr);

u32 XPutvalue_Get_addr(XPutvalue *InstancePtr);
u32 XPutvalue_Get_addr_vld(XPutvalue *InstancePtr);
void XPutvalue_Set_data(XPutvalue *InstancePtr, u32 Data);
u32 XPutvalue_Get_data(XPutvalue *InstancePtr);

void XPutvalue_InterruptGlobalEnable(XPutvalue *InstancePtr);
void XPutvalue_InterruptGlobalDisable(XPutvalue *InstancePtr);
void XPutvalue_InterruptEnable(XPutvalue *InstancePtr, u32 Mask);
void XPutvalue_InterruptDisable(XPutvalue *InstancePtr, u32 Mask);
void XPutvalue_InterruptClear(XPutvalue *InstancePtr, u32 Mask);
u32 XPutvalue_InterruptGetEnabled(XPutvalue *InstancePtr);
u32 XPutvalue_InterruptGetStatus(XPutvalue *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
