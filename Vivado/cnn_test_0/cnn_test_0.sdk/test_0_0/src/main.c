/*
 * main.c
 *
 *  Created on: Mar 18, 2021
 *      Author: cgrud
 */


#include <stdio.h>
#include <xparameters.h>
#include "xcnn_conv_d94x94_k3x3.h"
#include "xcnn_pool_d92x92_p2x2.h"
#include "xaxidma.h"

struct cnn_hw {
	XCnn_conv_d94x94_k3x3 conv_0;
	XCnn_conv_d94x94_k3x3_Config *conv_0_cfg;
	XCnn_pool_d92x92_p2x2 pool_0;
	XCnn_pool_d92x92_p2x2_Config *pool_0_cfg;
	XAxiDma axiDMA;
	XAxiDma_Config *axiDMA_cfg;
};

#define MEM_BASE_ADDR 0x01000000
#define TX_BUFFER_BASE (MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE (MEM_BASE_ADDR + 0x00300000)

#define INPUT_DATA_ROWS 94
#define INPUT_DATA_COLS 94
#define INPUT_DATA_LEN (INPUT_DATA_ROWS * INPUT_DATA_COLS)

#define OUTPUT_DATA_LEN (46 * 46)

#define KERNEL_0_DATA_LEN 9

void (*XCnn_Set_kernel_0[KERNEL_0_DATA_LEN])(XCnn_conv_d94x94_k3x3 *InstancePtr, u32 Data) = {
		XCnn_conv_d94x94_k3x3_Set_kernel_0,
		XCnn_conv_d94x94_k3x3_Set_kernel_1,
		XCnn_conv_d94x94_k3x3_Set_kernel_2,
		XCnn_conv_d94x94_k3x3_Set_kernel_3,
		XCnn_conv_d94x94_k3x3_Set_kernel_4,
		XCnn_conv_d94x94_k3x3_Set_kernel_5,
		XCnn_conv_d94x94_k3x3_Set_kernel_6,
		XCnn_conv_d94x94_k3x3_Set_kernel_7,
		XCnn_conv_d94x94_k3x3_Set_kernel_8,
};

int cnn_hw_init(struct cnn_hw *p_cnn_hw)
{
	int status = XST_SUCCESS;

	// conv 0 init
	p_cnn_hw->conv_0_cfg = XCnn_conv_d94x94_k3x3_LookupConfig(XPAR_CNN_CONV_D94X94_K3X3_0_DEVICE_ID);
	if (!p_cnn_hw->conv_0_cfg) {
		printf("XCnn_conv_d94x94_k3x3_LookupConfig failed\n");
		return XST_FAILURE;
	}

	status = XCnn_conv_d94x94_k3x3_CfgInitialize(&p_cnn_hw->conv_0, p_cnn_hw->conv_0_cfg);
	if (status != XST_SUCCESS) {
		printf("XCnn_conv_d94x94_k3x3_CfgInitialize failed\n");
		return status;
	}

	// conv 1 init
	p_cnn_hw->pool_0_cfg = XCnn_pool_d92x92_p2x2_LookupConfig(XPAR_CNN_POOL_D92X92_P2X2_0_DEVICE_ID);
	if (!p_cnn_hw->pool_0_cfg) {
		printf("XCnn_pool_d92x92_p2x2_LookupConfig failed\n");
		return XST_FAILURE;
	}

	status = XCnn_pool_d92x92_p2x2_CfgInitialize(&p_cnn_hw->pool_0, p_cnn_hw->pool_0_cfg);
	if (status != XST_SUCCESS) {
		printf("XCnn_pool_d92x92_p2x2_CfgInitialize failed\n");
		return status;
	}

	// DMA init
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

	printf("init status = %d\n", status);

	return status;
}


void XCnn_Set_Conv_0(XCnn_conv_d94x94_k3x3 *InstancePtr, u32 ctrl, u32 kernel_0[KERNEL_0_DATA_LEN])
{
	printf("in set conv 0\n");
	XCnn_conv_d94x94_k3x3_Set_ctrl(InstancePtr, ctrl);
	printf("set conv 0 ctrl\n");
	for (int i = 0; i < KERNEL_0_DATA_LEN; i++) {
		XCnn_Set_kernel_0[i](InstancePtr, kernel_0[i]);
	}
}

void XCnn_Set_Pool_0(XCnn_pool_d92x92_p2x2 *InstancePtr, u32 ctrl)
{
	XCnn_pool_d92x92_p2x2_Set_ctrl(InstancePtr, ctrl);
}

int main()
{
	printf("================\n");


	struct cnn_hw cnn_hw;

	int status = XST_SUCCESS;
	u32 kernel_0[KERNEL_0_DATA_LEN];
	u32 input_data[INPUT_DATA_LEN];
	u32 conv_0_ctrl;
	u32 pool_0_ctrl;

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
	for (int i = 0; i < KERNEL_0_DATA_LEN; i++) {
		kernel_0[i] = 1;
	}
	conv_0_ctrl = 0;
	pool_0_ctrl = 0;
	/*******************************************************/

	printf("placed demo data\n");

	do {
		printf("in do\n");

		XCnn_Set_Conv_0(&cnn_hw.conv_0, conv_0_ctrl, kernel_0);
		printf("set conv 0\n");
		XCnn_Set_Pool_0(&cnn_hw.pool_0, pool_0_ctrl);
		printf("set pool 0\n");
		for (int i = 0; i < INPUT_DATA_LEN; i++) {
			p_dma_buffer_TX[i] = input_data[i];
		}
		XCnn_pool_d92x92_p2x2_Start(&cnn_hw.pool_0);
		XCnn_conv_d94x94_k3x3_Start(&cnn_hw.conv_0);

		Xil_DCacheFlushRange((u32) p_dma_buffer_TX, INPUT_DATA_LEN * sizeof(u32));
		Xil_DCacheFlushRange((u32) p_dma_buffer_RX, OUTPUT_DATA_LEN * sizeof(u32));

		printf("Sending data to IP core slave\n");

		XAxiDma_SimpleTransfer(&cnn_hw.axiDMA, (u32) p_dma_buffer_TX, INPUT_DATA_LEN * sizeof(u32), XAXIDMA_DMA_TO_DEVICE);

		printf("Receive data from IP core\n");
		XAxiDma_SimpleTransfer(&cnn_hw.axiDMA, (u32) p_dma_buffer_RX, OUTPUT_DATA_LEN * sizeof(u32), XAXIDMA_DEVICE_TO_DMA);
		while (XAxiDma_Busy(&cnn_hw.axiDMA, XAXIDMA_DEVICE_TO_DMA))
			/* wait */ ;

		Xil_DCacheInvalidateRange((u32) p_dma_buffer_RX, OUTPUT_DATA_LEN * sizeof(u32));

		while (!XCnn_pool_d92x92_p2x2_IsDone(&cnn_hw.pool_0))
			/* wait */ ;
		printf("Calculation complete\n");

		for (int i = 0; i < OUTPUT_DATA_LEN; i++) {
			printf("Recv[%d]=0x%08X\n", i, p_dma_buffer_RX[i]);
		}
	} while (0);

	return 0;
}


