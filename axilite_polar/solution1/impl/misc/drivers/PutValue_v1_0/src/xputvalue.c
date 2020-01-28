// ==============================================================
// File generated on Tue Jan 21 18:20:20 IST 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xputvalue.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XPutvalue_CfgInitialize(XPutvalue *InstancePtr, XPutvalue_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Crtls_BaseAddress = ConfigPtr->Crtls_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XPutvalue_Start(XPutvalue *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPutvalue_ReadReg(InstancePtr->Crtls_BaseAddress, XPUTVALUE_CRTLS_ADDR_AP_CTRL) & 0x80;
    XPutvalue_WriteReg(InstancePtr->Crtls_BaseAddress, XPUTVALUE_CRTLS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XPutvalue_IsDone(XPutvalue *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPutvalue_ReadReg(InstancePtr->Crtls_BaseAddress, XPUTVALUE_CRTLS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XPutvalue_IsIdle(XPutvalue *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPutvalue_ReadReg(InstancePtr->Crtls_BaseAddress, XPUTVALUE_CRTLS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XPutvalue_IsReady(XPutvalue *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPutvalue_ReadReg(InstancePtr->Crtls_BaseAddress, XPUTVALUE_CRTLS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XPutvalue_EnableAutoRestart(XPutvalue *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPutvalue_WriteReg(InstancePtr->Crtls_BaseAddress, XPUTVALUE_CRTLS_ADDR_AP_CTRL, 0x80);
}

void XPutvalue_DisableAutoRestart(XPutvalue *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPutvalue_WriteReg(InstancePtr->Crtls_BaseAddress, XPUTVALUE_CRTLS_ADDR_AP_CTRL, 0);
}

u32 XPutvalue_Get_return(XPutvalue *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPutvalue_ReadReg(InstancePtr->Crtls_BaseAddress, XPUTVALUE_CRTLS_ADDR_AP_RETURN);
    return Data;
}
u32 XPutvalue_Get_addr(XPutvalue *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPutvalue_ReadReg(InstancePtr->Crtls_BaseAddress, XPUTVALUE_CRTLS_ADDR_ADDR_DATA);
    return Data;
}

u32 XPutvalue_Get_addr_vld(XPutvalue *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPutvalue_ReadReg(InstancePtr->Crtls_BaseAddress, XPUTVALUE_CRTLS_ADDR_ADDR_CTRL);
    return Data & 0x1;
}

void XPutvalue_Set_data(XPutvalue *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPutvalue_WriteReg(InstancePtr->Crtls_BaseAddress, XPUTVALUE_CRTLS_ADDR_DATA_DATA, Data);
}

u32 XPutvalue_Get_data(XPutvalue *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPutvalue_ReadReg(InstancePtr->Crtls_BaseAddress, XPUTVALUE_CRTLS_ADDR_DATA_DATA);
    return Data;
}

void XPutvalue_InterruptGlobalEnable(XPutvalue *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPutvalue_WriteReg(InstancePtr->Crtls_BaseAddress, XPUTVALUE_CRTLS_ADDR_GIE, 1);
}

void XPutvalue_InterruptGlobalDisable(XPutvalue *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPutvalue_WriteReg(InstancePtr->Crtls_BaseAddress, XPUTVALUE_CRTLS_ADDR_GIE, 0);
}

void XPutvalue_InterruptEnable(XPutvalue *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XPutvalue_ReadReg(InstancePtr->Crtls_BaseAddress, XPUTVALUE_CRTLS_ADDR_IER);
    XPutvalue_WriteReg(InstancePtr->Crtls_BaseAddress, XPUTVALUE_CRTLS_ADDR_IER, Register | Mask);
}

void XPutvalue_InterruptDisable(XPutvalue *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XPutvalue_ReadReg(InstancePtr->Crtls_BaseAddress, XPUTVALUE_CRTLS_ADDR_IER);
    XPutvalue_WriteReg(InstancePtr->Crtls_BaseAddress, XPUTVALUE_CRTLS_ADDR_IER, Register & (~Mask));
}

void XPutvalue_InterruptClear(XPutvalue *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPutvalue_WriteReg(InstancePtr->Crtls_BaseAddress, XPUTVALUE_CRTLS_ADDR_ISR, Mask);
}

u32 XPutvalue_InterruptGetEnabled(XPutvalue *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XPutvalue_ReadReg(InstancePtr->Crtls_BaseAddress, XPUTVALUE_CRTLS_ADDR_IER);
}

u32 XPutvalue_InterruptGetStatus(XPutvalue *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XPutvalue_ReadReg(InstancePtr->Crtls_BaseAddress, XPUTVALUE_CRTLS_ADDR_ISR);
}

