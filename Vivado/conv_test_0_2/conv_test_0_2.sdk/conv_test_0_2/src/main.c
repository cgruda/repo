/*
 * main.c
 *
 *  Created on: Apr 3, 2021
 *      Author: cgrud
 */

#include "fixed_point.h"
#include <stdio.h>
#include <xparameters.h>
#include "xcnn_conv_d94x94_k3x3.h"
#include "xaxidma.h"

struct cnn_hw {
	XCnn_conv_d94x94_k3x3 cnn_0;
	XCnn_conv_d94x94_k3x3_Config *cnn_0_cfg;
	XAxiDma axiDMA;
	XAxiDma_Config *axiDMA_cfg;
};

#define MEM_BASE_ADDR 0x01000000
#define TX_BUFFER_BASE (MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE (MEM_BASE_ADDR + 0x00300000)

#define INPUT_DATA_LEN (94 * 94)
#define OUTPUT_DATA_LEN (92 * 92)
#define KERNEL_DATA_LEN 9

void (*XCnn_Set_kernel[KERNEL_DATA_LEN])(XCnn_conv_d94x94_k3x3 *InstancePtr, u32 Data) = {
		XCnn_conv_d94x94_k3x3_Set_kernel_0,
		XCnn_conv_d94x94_k3x3_Set_kernel_1,
		XCnn_conv_d94x94_k3x3_Set_kernel_2,
		XCnn_conv_d94x94_k3x3_Set_kernel_3,
		XCnn_conv_d94x94_k3x3_Set_kernel_4,
		XCnn_conv_d94x94_k3x3_Set_kernel_5,
		XCnn_conv_d94x94_k3x3_Set_kernel_6,
		XCnn_conv_d94x94_k3x3_Set_kernel_7,
		XCnn_conv_d94x94_k3x3_Set_kernel_8
};

int cnn_hw_init(struct cnn_hw *p_cnn_hw)
{
	int status = XST_SUCCESS;

	p_cnn_hw->cnn_0_cfg = XCnn_conv_d94x94_k3x3_LookupConfig(XPAR_CNN_CONV_D94X94_K3X3_0_DEVICE_ID);
	if (!p_cnn_hw->cnn_0_cfg) {
		printf("XCnn_LookupConfig failed\n");
		return XST_FAILURE;
	}

	status = XCnn_conv_d94x94_k3x3_CfgInitialize(&p_cnn_hw->cnn_0, p_cnn_hw->cnn_0_cfg);
	if (status != XST_SUCCESS) {
		printf("XCnn_CfgInitialize failed\n");
		return status;
	}

	p_cnn_hw->axiDMA_cfg = XAxiDma_LookupConfig(XPAR_AXIDMA_0_DEVICE_ID);
	if (!p_cnn_hw->axiDMA_cfg) {
		printf("XAxiDma_LookupConfig failed\n");
		return XST_FAILURE;
	}

	status = XAxiDma_CfgInitialize(&p_cnn_hw->axiDMA, p_cnn_hw->axiDMA_cfg);
	if (status != XST_SUCCESS) {
		printf("XAxiDma_CfgInitialize failed\n");
		return status;
	}

	XAxiDma_IntrDisable(&p_cnn_hw->axiDMA, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&p_cnn_hw->axiDMA, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

	printf("init success\n");

	return status;
}

void XCnn_Set_HW(XCnn_conv_d94x94_k3x3 *InstancePtr, u32 ctrl, u32 kernel[KERNEL_DATA_LEN])
{
	printf("pre ctrl set\n");

	XCnn_conv_d94x94_k3x3_Set_ctrl(InstancePtr, ctrl);
	printf("post ctrl set\n");

	for (int i = 0; i < KERNEL_DATA_LEN; i++) {
		XCnn_Set_kernel[i](InstancePtr, kernel[i]);
	}
}

int main()
{
	struct cnn_hw cnn_hw;

	int status = XST_SUCCESS;
	u32 kernel[KERNEL_DATA_LEN];
	u32 input_data[INPUT_DATA_LEN];
	u32 ctrl;

	u32 *p_dma_buffer_TX = (u32*) TX_BUFFER_BASE;
	u32 *p_dma_buffer_RX = (u32*) RX_BUFFER_BASE;

	status = cnn_hw_init(&cnn_hw);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*******************************************************/
	for (int i = 0; i < INPUT_DATA_LEN; i++) {
		input_data[i] = i;
	}
	for (int i = 0; i < KERNEL_DATA_LEN; i++) {
		kernel[i] = -FLOAT_2_FIXED(1);
	}
	ctrl = 1;
	/*******************************************************/


	do {
		printf("pre hw set\n");
		XCnn_Set_HW(&cnn_hw.cnn_0, ctrl, kernel);
		printf("post hw set\n");

		for (int i = 0; i < INPUT_DATA_LEN; i++) {
			p_dma_buffer_TX[i] = input_data[i];
		}
		printf("pre start\n");
		XCnn_conv_d94x94_k3x3_Start(&cnn_hw.cnn_0);
		printf("post start\n");
		Xil_DCacheFlushRange((u32) p_dma_buffer_TX, INPUT_DATA_LEN * sizeof(u32));
		Xil_DCacheFlushRange((u32) p_dma_buffer_RX, OUTPUT_DATA_LEN * sizeof(u32));

		printf("Sending data to IP core slave\n");
		XAxiDma_SimpleTransfer(&cnn_hw.axiDMA, (u32) p_dma_buffer_TX, INPUT_DATA_LEN * sizeof(u32), XAXIDMA_DMA_TO_DEVICE);

		printf("Receive data from IP core\n");
		XAxiDma_SimpleTransfer(&cnn_hw.axiDMA, (u32) p_dma_buffer_RX, OUTPUT_DATA_LEN * sizeof(u32), XAXIDMA_DEVICE_TO_DMA);
		while (XAxiDma_Busy(&cnn_hw.axiDMA, XAXIDMA_DEVICE_TO_DMA))
			/* wait */ ;

		Xil_DCacheInvalidateRange((u32) p_dma_buffer_RX, OUTPUT_DATA_LEN * sizeof(u32));

		while (!XCnn_conv_d94x94_k3x3_IsDone(&cnn_hw.cnn_0))
			/* wait */ ;
		printf("Calculation complete\n");

		for (int i = 0; i < OUTPUT_DATA_LEN; i++) {
			printf("Recv[%d]=", i);
			fixed_point_print(p_dma_buffer_RX[i]);
			printf("\n");
		}
	} while (0);

	return 0;
}