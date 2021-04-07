/*
 * main.c
 *
 *  Created on: Mar 18, 2021
 *      Author: cgrud
 */


#include <stdio.h>
#include <xparameters.h>
#include "fixed_point.h"
#include "xcnn_conv_d16x16_k3x3.h"
#include "xcnn_pool_d14x14_p2x2.h"
#include "xaxidma.h"

struct cnn_hw {
	XCnn_conv_d16x16_k3x3 conv_0;
	XCnn_conv_d16x16_k3x3_Config *conv_0_cfg;
	XCnn_pool_d14x14_p2x2 pool_0;
	XCnn_pool_d14x14_p2x2_Config *pool_0_cfg;
	XAxiDma axiDMA;
	XAxiDma_Config *axiDMA_cfg;
};

#define MEM_BASE_ADDR 0x01000000
#define TX_BUFFER_BASE (MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE (MEM_BASE_ADDR + 0x00300000)

#define MAX_POOL 0
#define AVG_POOL 1
#define ACTIVATION_NONE 0
#define ACTIVATION_RELU 1

// cnn input
#define CNN_INPUT_ROWS		16
#define CNN_INPUT_COLS		16
#define CNN_INPUT_LEN		(CNN_INPUT_ROWS * CNN_INPUT_COLS)

// conv_0
#define CONV_0_INPUT_ROWS	CNN_INPUT_ROWS
#define CONV_0_INPUT_COLS	CNN_INPUT_COLS
#define CONV_0_INPUT_LEN	(CONV_0_INPUT_ROWS * CONV_0_INPUT_COLS)

#define CONV_0_KERNEL_DIM	3
#define CONV_0_KERNEL_ROWS	CONV_0_KERNEL_DIM
#define CONV_0_KERNEL_COLS	CONV_0_KERNEL_DIM
#define CONV_0_KERNEL_LEN 	(CONV_0_KERNEL_ROWS * CONV_0_KERNEL_COLS)
#define CONV_0_ACTIVATION   ACTIVATION_NONE

#define CONV_0_OUTPUT_ROWS	(CONV_0_INPUT_ROWS - CONV_0_KERNEL_ROWS + 1)
#define CONV_0_OUTPUT_COLS	(CONV_0_INPUT_COLS - CONV_0_KERNEL_COLS + 1)
#define CONV_0_OUTPUT_LEN	(CONV_0_OUTPUT_ROWS * CONV_0_OUTPUT_COLS)

// pool_0
#define POOL_0_INPUT_ROWS	CONV_0_OUTPUT_ROWS
#define POOL_0_INPUT_COLS	CONV_0_OUTPUT_COLS
#define POOL_0_INPUT_LEN	(POOL_0_INPUT_ROWS * POOL0_INPUT_COLS)

#define POOL_0_TYPE			MAX_POOL
#define POOL_0_DIM			2
#define POOL_0_ROWS			POOL_0_DIM
#define POOL_0_COLS			POOL_0_DIM

#define POOL_0_OUTPUT_ROWS	(POOL_0_INPUT_ROWS / POOL_0_ROWS)
#define POOL_0_OUTPUT_COLS	(POOL_0_INPUT_COLS / POOL_0_COLS)
#define POOL_0_OUTPUT_LEN 	(POOL_0_OUTPUT_ROWS * POOL_0_OUTPUT_COLS)

//conv_1
#define CONV_1_INPUT_ROWS	POOL0_OUTPUT_ROWS
#define CONV_1_INPUT_COLS	POOL0_OUTPUT_COLS
#define CONV_1_INPUT_LEN		(CONV_1_INPUT_ROWS * CONV_1_INPUT_COLS)

#define CONV_1_KERNEL_DIM	3
#define CONV_1_KERNEL_ROWS	CONV_1_KERNEL_DIM
#define CONV_1_KERNEL_COLS	CONV_1_KERNEL_DIM
#define CONV_1_KERNEL_LEN 	(CONV_1_KERNEL_ROWS * CONV_1_KERNEL_COLS)
#define CONV_1_ACTIVATION   ACTIVATION_NONE

#define CONV_1_OUTPUT_ROWS	(CONV_1_INPUT_ROWS - CONV_1_KERNEL_ROWS + 1)
#define CONV_1_OUTPUT_COLS	(CONV_1_INPUT_COLS - CONV_1_KERNEL_COLS + 1)
#define CONV_1_OUTPUT_LEN	(CONV_1_OUTPUT_ROWS * CONV_1_OUTPUT_COLS)

// pool_1
#define POOL_1_TYPE			AVG_POOL
#define POOL_1_INPUT_ROWS	CONV_1_OUTPUT_ROWS
#define POOL_1_INPUT_COLS	CONV_1_OUTPUT_COLS
#define POOL_1_INPUT_LEN	(POOL_1_INPUT_ROWS * POOL_1_INPUT_COLS)

#define POOL_1_DIM			2
#define POOL_1_ROWS			POOL_1_DIM
#define POOL_1_COLS			POOL_1_DIM

#define POOL_1_OUTPUT_ROWS	(POOL_1_INPUT_ROWS / POOL_1_ROWS)
#define POOL_1_OUTPUT_COLS	(POOL_1_INPUT_COLS / POOL_1_COLS)
#define POOL_1_OUTPUT_LEN 	(POOL_1_OUTPUT_ROWS * POOL_1_OUTPUT_COLS)

// conv_2
#define CONV_2_INPUT_ROWS	POOL_1_OUTPUT_ROWS
#define CONV_2_INPUT_COLS	POOL_1_OUTPUT_COLS
#define CONV_2_INPUT_LEN	(CONV_2_INPUT_ROWS * CONV_2_INPUT_COLS)

#define CONV_2_KERNEL_DIM	3
#define CONV_2_KERNEL_ROWS	CONV_2_KERNEL_DIM
#define CONV_2_KERNEL_COLS	CONV_2_KERNEL_DIM
#define CONV_2_KERNEL_LEN 	(CONV_2_KERNEL_ROWS * CONV_2_KERNEL_COLS)
#define CONV_2_ACTIVATION   ACTIVATION_NONE

#define CONV_2_OUTPUT_ROWS	(CONV_2_INPUT_ROWS - CONV_2_KERNEL_ROWS + 1)
#define CONV_2_OUTPUT_COLS	(CONV_2_INPUT_COLS - CONV_2_KERNEL_COLS + 1)
#define CONV_2_OUTPUT_LEN	(CONV_2_OUTPUT_ROWS * CONV_2_OUTPUT_COLS)

// pool_2
#define POOL_2_TYPE			MAX_POOL
#define POOL_2_INPUT_ROWS	CONV_2_OUTPUT_ROWS
#define POOL_2_INPUT_COLS	CONV_2_OUTPUT_COLS
#define POOL_2_INPUT_LEN	(POOL_2_INPUT_ROWS * POOL_2_INPUT_COLS)

#define POOL_2_DIM			2
#define POOL_2_ROWS			POOL_2_DIM
#define POOL_2_COLS			POOL_2_DIM

#define POOL_2_OUTPUT_ROWS	(POOL_2_INPUT_ROWS / POOL_2_ROWS)
#define POOL_2_OUTPUT_COLS	(POOL_2_INPUT_COLS / POOL_2_COLS)
#define POOL_2_OUTPUT_LEN 	(POOL_2_OUTPUT_ROWS * POOL_2_OUTPUT_COLS)

// cnn output
#define CNN_OUTPUT_ROWS		POOL_0_OUTPUT_ROWS
#define CNN_OUTPUT_COLS		POOL_0_OUTPUT_COLS
#define CNN_OUTPUT_LEN 		(CNN_OUTPUT_ROWS * CNN_OUTPUT_COLS)



void (*XCnn_Set_conv_0_kernel[CONV_0_KERNEL_LEN])(XCnn_conv_d16x16_k3x3 *InstancePtr, u32 Data) = {
		XCnn_conv_d16x16_k3x3_Set_kernel_0,
		XCnn_conv_d16x16_k3x3_Set_kernel_1,
		XCnn_conv_d16x16_k3x3_Set_kernel_2,
		XCnn_conv_d16x16_k3x3_Set_kernel_3,
		XCnn_conv_d16x16_k3x3_Set_kernel_4,
		XCnn_conv_d16x16_k3x3_Set_kernel_5,
		XCnn_conv_d16x16_k3x3_Set_kernel_6,
		XCnn_conv_d16x16_k3x3_Set_kernel_7,
		XCnn_conv_d16x16_k3x3_Set_kernel_8,
};

int cnn_hw_init(struct cnn_hw *p_cnn_hw)
{
	int status = XST_SUCCESS;

	// conv 0 init
	p_cnn_hw->conv_0_cfg = XCnn_conv_d16x16_k3x3_LookupConfig(XPAR_CNN_CONV_D16X16_K3X3_0_DEVICE_ID);
	if (!p_cnn_hw->conv_0_cfg) {
		return XST_FAILURE;
	}

	status = XCnn_conv_d16x16_k3x3_CfgInitialize(&p_cnn_hw->conv_0, p_cnn_hw->conv_0_cfg);
	if (status != XST_SUCCESS) {
		return status;
	}

	// conv 1 init
	p_cnn_hw->pool_0_cfg = XCnn_pool_d14x14_p2x2_LookupConfig(XPAR_CNN_POOL_D14X14_P2X2_0_DEVICE_ID);
	if (!p_cnn_hw->pool_0_cfg) {
		return XST_FAILURE;
	}

	status = XCnn_pool_d14x14_p2x2_CfgInitialize(&p_cnn_hw->pool_0, p_cnn_hw->pool_0_cfg);
	if (status != XST_SUCCESS) {
		return status;
	}

	// DMA init
	p_cnn_hw->axiDMA_cfg = XAxiDma_LookupConfig(XPAR_AXIDMA_0_DEVICE_ID);
	if (!p_cnn_hw->axiDMA_cfg) {
		return XST_FAILURE;
	}

	status = XAxiDma_CfgInitialize(&p_cnn_hw->axiDMA, p_cnn_hw->axiDMA_cfg);
	if (status != XST_SUCCESS) {
		return status;
	}

	XAxiDma_IntrDisable(&p_cnn_hw->axiDMA, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&p_cnn_hw->axiDMA, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

	printf("init status = %d\n", status);

	return status;
}


void XCnn_Set_Conv_0(XCnn_conv_d16x16_k3x3 *InstancePtr, u32 ctrl, u32 kernel[CONV_0_KERNEL_LEN])
{
	XCnn_conv_d16x16_k3x3_Set_ctrl(InstancePtr, ctrl);
	for (int i = 0; i < CONV_0_KERNEL_LEN; i++) {
		XCnn_Set_conv_0_kernel[i](InstancePtr, kernel[i]);
	}
}

void XCnn_Set_Pool_0(XCnn_pool_d14x14_p2x2 *InstancePtr, u32 ctrl)
{
	XCnn_pool_d14x14_p2x2_Set_ctrl(InstancePtr, ctrl);
}

void set_data(u32 *conv_0_kernel, u32 *input_data, u32 *conv_0_ctrl, u32 *pool_0_ctrl)
{
	for (int i = 0; i < CNN_INPUT_LEN; i++) {
		input_data[i] = i;
	}
	for (int i = 0; i < CONV_0_KERNEL_LEN; i++) {
		conv_0_kernel[i] = FLOAT_2_FIXED(1);
	}
	*conv_0_ctrl = CONV_0_ACTIVATION;
	*pool_0_ctrl = POOL_0_TYPE;
}

int main()
{
	struct cnn_hw cnn_hw;

	int status = XST_SUCCESS;
	u32 conv_0_kernel[CONV_0_KERNEL_LEN];
	u32 input_data[CNN_INPUT_LEN];
	u32 conv_0_ctrl;
	u32 pool_0_ctrl;

	u32 *p_dma_buffer_TX = (u32*) TX_BUFFER_BASE;
	u32 *p_dma_buffer_RX = (u32*) RX_BUFFER_BASE;

	status = cnn_hw_init(&cnn_hw);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*******************************************************/
	set_data(conv_0_kernel, input_data, &conv_0_ctrl, &pool_0_ctrl);
	/*******************************************************/

	do {
		XCnn_Set_Conv_0(&cnn_hw.conv_0, conv_0_ctrl, conv_0_kernel);
		XCnn_Set_Pool_0(&cnn_hw.pool_0, pool_0_ctrl);
		for (int i = 0; i < CNN_INPUT_LEN; i++) {
			p_dma_buffer_TX[i] = input_data[i];
		}
		XCnn_pool_d14x14_p2x2_Start(&cnn_hw.pool_0);
		XCnn_conv_d16x16_k3x3_Start(&cnn_hw.conv_0);

		Xil_DCacheFlushRange((u32) p_dma_buffer_TX, CNN_INPUT_LEN * sizeof(u32));
		Xil_DCacheFlushRange((u32) p_dma_buffer_RX, CNN_OUTPUT_LEN * sizeof(u32));

		XAxiDma_SimpleTransfer(&cnn_hw.axiDMA, (u32) p_dma_buffer_TX, CNN_INPUT_LEN * sizeof(u32), XAXIDMA_DMA_TO_DEVICE);
		XAxiDma_SimpleTransfer(&cnn_hw.axiDMA, (u32) p_dma_buffer_RX, CNN_OUTPUT_LEN * sizeof(u32), XAXIDMA_DEVICE_TO_DMA);
		while (XAxiDma_Busy(&cnn_hw.axiDMA, XAXIDMA_DEVICE_TO_DMA))
			/* wait */ ;

		Xil_DCacheInvalidateRange((u32) p_dma_buffer_RX, CNN_OUTPUT_LEN * sizeof(u32));

		while (!XCnn_pool_d14x14_p2x2_IsDone(&cnn_hw.pool_0))
			/* wait */ ;

		for (int i = 0; i < CNN_OUTPUT_LEN; i++) {
			printf("Recv[%d]=", i);
			fixed_point_print(p_dma_buffer_RX[i]);
			printf("\n");
		}
	} while (0);

	return 0;
}



