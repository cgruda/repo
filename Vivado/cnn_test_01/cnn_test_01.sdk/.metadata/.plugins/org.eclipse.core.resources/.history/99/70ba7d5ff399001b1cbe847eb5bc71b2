/*
 * cnn_hw.c
 *
 *  Created on: Apr 9, 2021
 *      Author: cgrud
 */

#include <stdio.h>
#include <xparameters.h>
#include "cnn_hw.h"
#include "cnn_config.h"

void (*XCnn_Set_conv_0_kernel[CONV_0_KERNEL_LEN])(XCnn_conv_d46x46_k3x3 *InstancePtr, u32 Data) = {
		XCnn_conv_d46x46_k3x3_Set_kernel_0,
		XCnn_conv_d46x46_k3x3_Set_kernel_1,
		XCnn_conv_d46x46_k3x3_Set_kernel_2,
		XCnn_conv_d46x46_k3x3_Set_kernel_3,
		XCnn_conv_d46x46_k3x3_Set_kernel_4,
		XCnn_conv_d46x46_k3x3_Set_kernel_5,
		XCnn_conv_d46x46_k3x3_Set_kernel_6,
		XCnn_conv_d46x46_k3x3_Set_kernel_7,
		XCnn_conv_d46x46_k3x3_Set_kernel_8,
};

void (*XCnn_Set_conv_1_kernel[CONV_1_KERNEL_LEN])(XCnn_conv_d22x22_k3x3 *InstancePtr, u32 Data) = {
		XCnn_conv_d22x22_k3x3_Set_kernel_0,
		XCnn_conv_d22x22_k3x3_Set_kernel_1,
		XCnn_conv_d22x22_k3x3_Set_kernel_2,
		XCnn_conv_d22x22_k3x3_Set_kernel_3,
		XCnn_conv_d22x22_k3x3_Set_kernel_4,
		XCnn_conv_d22x22_k3x3_Set_kernel_5,
		XCnn_conv_d22x22_k3x3_Set_kernel_6,
		XCnn_conv_d22x22_k3x3_Set_kernel_7,
		XCnn_conv_d22x22_k3x3_Set_kernel_8,
};

void (*XCnn_Set_conv_2_kernel[CONV_2_KERNEL_LEN])(XCnn_conv_d10x10_k3x3 *InstancePtr, u32 Data) = {
		XCnn_conv_d10x10_k3x3_Set_kernel_0,
		XCnn_conv_d10x10_k3x3_Set_kernel_1,
		XCnn_conv_d10x10_k3x3_Set_kernel_2,
		XCnn_conv_d10x10_k3x3_Set_kernel_3,
		XCnn_conv_d10x10_k3x3_Set_kernel_4,
		XCnn_conv_d10x10_k3x3_Set_kernel_5,
		XCnn_conv_d10x10_k3x3_Set_kernel_6,
		XCnn_conv_d10x10_k3x3_Set_kernel_7,
		XCnn_conv_d10x10_k3x3_Set_kernel_8,
};

int cnn_hw_init(struct cnn_hw *p_cnn_hw)
{
	int status = XST_SUCCESS;

	status = XCnn_conv_d46x46_k3x3_Initialize(&p_cnn_hw->conv_0, XPAR_CNN_CONV_D46X46_K3X3_0_DEVICE_ID);
	if (status != XST_SUCCESS)
		return status;

	status = XCnn_pool_d44x44_p2x2_Initialize(&p_cnn_hw->pool_0, XPAR_CNN_POOL_D44X44_P2X2_0_DEVICE_ID);
	if (status != XST_SUCCESS)
		return status;

	status = XCnn_conv_d22x22_k3x3_Initialize(&p_cnn_hw->conv_1, XPAR_CNN_CONV_D22X22_K3X3_0_DEVICE_ID);
	if (status != XST_SUCCESS)
		return status;

	status = XCnn_pool_d20x20_p2x2_Initialize(&p_cnn_hw->pool_1, XPAR_CNN_POOL_D20X20_P2X2_0_DEVICE_ID);
	if (status != XST_SUCCESS)
		return status;

	status = XCnn_conv_d10x10_k3x3_Initialize(&p_cnn_hw->conv_2, XPAR_CNN_CONV_D10X10_K3X3_0_DEVICE_ID);
	if (status != XST_SUCCESS)
		return status;

	status = XCnn_pool_d8x8_p2x2_Initialize(&p_cnn_hw->pool_2, XPAR_CNN_POOL_D8X8_P2X2_0_DEVICE_ID);
	if (status != XST_SUCCESS)
		return status;

	XAxiDma_Config *axiDMA_cfg;
	if (!(axiDMA_cfg = XAxiDma_LookupConfig(XPAR_AXIDMA_0_DEVICE_ID)))
		return XST_FAILURE;
	status = XAxiDma_CfgInitialize(&p_cnn_hw->axiDMA, axiDMA_cfg);
	if (status != XST_SUCCESS)
		return status;

	XAxiDma_IntrDisable(&p_cnn_hw->axiDMA, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&p_cnn_hw->axiDMA, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

	p_cnn_hw->p_dma_buffer_TX = (u32*)TX_BUFFER_BASE;
	p_cnn_hw->p_dma_buffer_RX = (u32*)RX_BUFFER_BASE;

	return status;
}

void XCnn_Set_Conv_0(XCnn_conv_d46x46_k3x3 *InstancePtr, u32 ctrl, u32 *kernel)
{
	XCnn_conv_d46x46_k3x3_Set_ctrl(InstancePtr, ctrl);
	for (int i = 0; i < CONV_0_KERNEL_LEN; i++)
		XCnn_Set_conv_0_kernel[i](InstancePtr, kernel[i]);
}

void XCnn_Set_Conv_1(XCnn_conv_d22x22_k3x3 *InstancePtr, u32 ctrl, u32 *kernel)
{
	XCnn_conv_d22x22_k3x3_Set_ctrl(InstancePtr, ctrl);
	for (int i = 0; i < CONV_1_KERNEL_LEN; i++)
		XCnn_Set_conv_1_kernel[i](InstancePtr, kernel[i]);
}

void XCnn_Set_Conv_2(XCnn_conv_d10x10_k3x3 *InstancePtr, u32 ctrl, u32 *kernel)
{
	XCnn_conv_d10x10_k3x3_Set_ctrl(InstancePtr, ctrl);
	for (int i = 0; i < CONV_2_KERNEL_LEN; i++)
		XCnn_Set_conv_2_kernel[i](InstancePtr, kernel[i]);
}

void XCnn_Set_Pool_0(XCnn_pool_d44x44_p2x2 *InstancePtr, u32 ctrl)
{
	XCnn_pool_d44x44_p2x2_Set_ctrl(InstancePtr, ctrl);
}

void XCnn_Set_Pool_1(XCnn_pool_d20x20_p2x2 *InstancePtr, u32 ctrl)
{
	XCnn_pool_d20x20_p2x2_Set_ctrl(InstancePtr, ctrl);
}

void XCnn_Set_Pool_2(XCnn_pool_d8x8_p2x2 *InstancePtr, u32 ctrl)
{
	XCnn_pool_d8x8_p2x2_Set_ctrl(InstancePtr, ctrl);
}

void cnn_hw_set(struct cnn_hw *cnn_hw, struct cnn_config *cnn_conf)
{
	XCnn_Set_Conv_0(&cnn_hw->conv_0, cnn_conf->conv_0_ctrl, cnn_conf->conv_0_kernel);
	XCnn_Set_Pool_0(&cnn_hw->pool_0, cnn_conf->pool_0_ctrl);
	XCnn_Set_Conv_1(&cnn_hw->conv_1, cnn_conf->conv_1_ctrl, cnn_conf->conv_1_kernel);
	XCnn_Set_Pool_1(&cnn_hw->pool_1, cnn_conf->pool_1_ctrl);
	XCnn_Set_Conv_2(&cnn_hw->conv_2, cnn_conf->conv_2_ctrl, cnn_conf->conv_2_kernel);
	XCnn_Set_Pool_2(&cnn_hw->pool_2, cnn_conf->pool_2_ctrl);

	for (int i = 0; i < CNN_INPUT_ROWS; i++) {
		for (int j = 0; j < CNN_INPUT_COLS; j++) {
			cnn_hw->p_dma_buffer_TX[i * CNN_INPUT_ROWS + j] = cnn_conf->input_data[i][j];
		}
	}
}

void cnn_hw_start(struct cnn_hw *cnn_hw)
{
	XCnn_pool_d8x8_p2x2_Start(&cnn_hw->pool_2);
	XCnn_conv_d10x10_k3x3_Start(&cnn_hw->conv_2);
	XCnn_pool_d20x20_p2x2_Start(&cnn_hw->pool_1);
	XCnn_conv_d22x22_k3x3_Start(&cnn_hw->conv_1);
	XCnn_pool_d44x44_p2x2_Start(&cnn_hw->pool_0);
	XCnn_conv_d46x46_k3x3_Start(&cnn_hw->conv_0);

	Xil_DCacheFlushRange((u32) cnn_hw->p_dma_buffer_TX, CNN_INPUT_LEN * sizeof(u32));
	Xil_DCacheFlushRange((u32) cnn_hw->p_dma_buffer_RX, CNN_OUTPUT_LEN * sizeof(u32));

	XTime_GetTime(&cnn_hw->tStart);
	XAxiDma_SimpleTransfer(&cnn_hw->axiDMA, (u32)cnn_hw->p_dma_buffer_TX, CNN_INPUT_LEN * sizeof(u32), XAXIDMA_DMA_TO_DEVICE);
	XAxiDma_SimpleTransfer(&cnn_hw->axiDMA, (u32)cnn_hw->p_dma_buffer_RX, CNN_OUTPUT_LEN * sizeof(u32), XAXIDMA_DEVICE_TO_DMA);
	while (XAxiDma_Busy(&cnn_hw->axiDMA, XAXIDMA_DEVICE_TO_DMA));
	Xil_DCacheInvalidateRange((u32) cnn_hw->p_dma_buffer_RX, CNN_OUTPUT_LEN * sizeof(u32));
}

void cnn_hw_wait(struct cnn_hw *cnn_hw)
{
	while (!XCnn_pool_d8x8_p2x2_IsDone(&cnn_hw->pool_2));
	XTime_GetTime(&cnn_hw->tEnd);
}
