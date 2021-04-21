/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#include "cnn_config.h"
#include "cnn_hw.h"
#include "fixed_point.h"
#include <stdio.h>
#include <stdint.h>
#if (PLATFORM == FPGA)
#include <xparameters.h>
#endif

#if (PLATFORM == FPGA)
void (*XCnn_Set_conv_0_kernel[CONV_0_KERNEL_LEN])(XCnn_conv_d54x54_k3x3 *InstancePtr, uint32_t Data) = {
		XCnn_conv_d54x54_k3x3_Set_kernel_0,
		XCnn_conv_d54x54_k3x3_Set_kernel_1,
		XCnn_conv_d54x54_k3x3_Set_kernel_2,
		XCnn_conv_d54x54_k3x3_Set_kernel_3,
		XCnn_conv_d54x54_k3x3_Set_kernel_4,
		XCnn_conv_d54x54_k3x3_Set_kernel_5,
		XCnn_conv_d54x54_k3x3_Set_kernel_6,
		XCnn_conv_d54x54_k3x3_Set_kernel_7,
		XCnn_conv_d54x54_k3x3_Set_kernel_8,
};

void (*XCnn_Set_conv_1_kernel[CONV_1_KERNEL_LEN])(XCnn_conv_d26x26_k3x3 *InstancePtr, uint32_t Data) = {
		XCnn_conv_d26x26_k3x3_Set_kernel_0,
		XCnn_conv_d26x26_k3x3_Set_kernel_1,
		XCnn_conv_d26x26_k3x3_Set_kernel_2,
		XCnn_conv_d26x26_k3x3_Set_kernel_3,
		XCnn_conv_d26x26_k3x3_Set_kernel_4,
		XCnn_conv_d26x26_k3x3_Set_kernel_5,
		XCnn_conv_d26x26_k3x3_Set_kernel_6,
		XCnn_conv_d26x26_k3x3_Set_kernel_7,
		XCnn_conv_d26x26_k3x3_Set_kernel_8,
};

void (*XCnn_Set_conv_2_kernel[CONV_2_KERNEL_LEN])(XCnn_conv_d12x12_k3x3 *InstancePtr, uint32_t Data) = {
		XCnn_conv_d12x12_k3x3_Set_kernel_0,
		XCnn_conv_d12x12_k3x3_Set_kernel_1,
		XCnn_conv_d12x12_k3x3_Set_kernel_2,
		XCnn_conv_d12x12_k3x3_Set_kernel_3,
		XCnn_conv_d12x12_k3x3_Set_kernel_4,
		XCnn_conv_d12x12_k3x3_Set_kernel_5,
		XCnn_conv_d12x12_k3x3_Set_kernel_6,
		XCnn_conv_d12x12_k3x3_Set_kernel_7,
		XCnn_conv_d12x12_k3x3_Set_kernel_8,
};
#endif

#if (PLATFORM == FPGA)
int cnn_hw_init(struct cnn_hw *p_cnn_hw)
{
	int status = XST_SUCCESS;

	status = XCnn_conv_d54x54_k3x3_Initialize(&p_cnn_hw->conv_0, XPAR_CNN_CONV_D54X54_K3X3_0_DEVICE_ID);
	if (status != XST_SUCCESS)
		return status;

	status = XCnn_pool_d52x52_p2x2_Initialize(&p_cnn_hw->pool_0, XPAR_CNN_POOL_D52X52_P2X2_0_DEVICE_ID);
	if (status != XST_SUCCESS)
		return status;

	status = XCnn_conv_d26x26_k3x3_Initialize(&p_cnn_hw->conv_1, XPAR_CNN_CONV_D26X26_K3X3_0_DEVICE_ID);
	if (status != XST_SUCCESS)
		return status;

	status = XCnn_pool_d24x24_p2x2_Initialize(&p_cnn_hw->pool_1, XPAR_CNN_POOL_D24X24_P2X2_0_DEVICE_ID);
	if (status != XST_SUCCESS)
		return status;

	status = XCnn_conv_d12x12_k3x3_Initialize(&p_cnn_hw->conv_2, XPAR_CNN_CONV_D12X12_K3X3_0_DEVICE_ID);
	if (status != XST_SUCCESS)
		return status;

	status = XCnn_pool_d10x10_p2x2_Initialize(&p_cnn_hw->pool_2, XPAR_CNN_POOL_D10X10_P2X2_0_DEVICE_ID);
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

	p_cnn_hw->p_dma_buffer_TX = (uint32_t*)TX_BUFFER_BASE;
	p_cnn_hw->p_dma_buffer_RX = (uint32_t*)RX_BUFFER_BASE;

	return status;
}

void XCnn_Set_Conv_0(XCnn_conv_d54x54_k3x3 *InstancePtr, uint32_t ctrl, uint32_t *kernel)
{
	XCnn_conv_d54x54_k3x3_Set_ctrl(InstancePtr, ctrl);
	for (int i = 0; i < CONV_0_KERNEL_LEN; i++)
		XCnn_Set_conv_0_kernel[i](InstancePtr, kernel[i]);
}

void XCnn_Set_Conv_1(XCnn_conv_d26x26_k3x3 *InstancePtr, uint32_t ctrl, uint32_t *kernel)
{
	XCnn_conv_d26x26_k3x3_Set_ctrl(InstancePtr, ctrl);
	for (int i = 0; i < CONV_1_KERNEL_LEN; i++)
		XCnn_Set_conv_1_kernel[i](InstancePtr, kernel[i]);
}

void XCnn_Set_Conv_2(XCnn_conv_d12x12_k3x3 *InstancePtr, uint32_t ctrl, uint32_t *kernel)
{
	XCnn_conv_d12x12_k3x3_Set_ctrl(InstancePtr, ctrl);
	for (int i = 0; i < CONV_2_KERNEL_LEN; i++)
		XCnn_Set_conv_2_kernel[i](InstancePtr, kernel[i]);
}

void XCnn_Set_Pool_0(XCnn_pool_d52x52_p2x2 *InstancePtr, uint32_t ctrl)
{
	XCnn_pool_d52x52_p2x2_Set_ctrl(InstancePtr, ctrl);
}

void XCnn_Set_Pool_1(XCnn_pool_d24x24_p2x2 *InstancePtr, uint32_t ctrl)
{
	XCnn_pool_d24x24_p2x2_Set_ctrl(InstancePtr, ctrl);
}

void XCnn_Set_Pool_2(XCnn_pool_d10x10_p2x2 *InstancePtr, uint32_t ctrl)
{
	XCnn_pool_d10x10_p2x2_Set_ctrl(InstancePtr, ctrl);
}

void cnn_hw_set(struct cnn_hw *cnn_hw, struct cnn_config *cnn_conf)
{
	for (int i = 0; i < CONV_0_KERNEL_LEN; i++) {
		cnn_hw->conv_0_kernel[i] = FLOAT_2_FIXED(cnn_conf->conv_0_kernel[i]);
	}
	for (int i = 0; i < CONV_1_KERNEL_LEN; i++) {
		cnn_hw->conv_1_kernel[i] = FLOAT_2_FIXED(cnn_conf->conv_1_kernel[i]);
	}
	for (int i = 0; i < CONV_2_KERNEL_LEN; i++) {
		cnn_hw->conv_2_kernel[i] = FLOAT_2_FIXED(cnn_conf->conv_2_kernel[i]);
	}
	for (int i = 0; i < CNN_INPUT_LEN; i++) {
		cnn_hw->p_dma_buffer_TX[i] = FLOAT_2_FIXED(cnn_conf->input_data[i]);
	}
	XCnn_Set_Conv_0(&cnn_hw->conv_0, cnn_conf->conv_0_ctrl, cnn_hw->conv_0_kernel);
	XCnn_Set_Pool_0(&cnn_hw->pool_0, cnn_conf->pool_0_ctrl);
	XCnn_Set_Conv_1(&cnn_hw->conv_1, cnn_conf->conv_1_ctrl, cnn_hw->conv_1_kernel);
	XCnn_Set_Pool_1(&cnn_hw->pool_1, cnn_conf->pool_1_ctrl);
	XCnn_Set_Conv_2(&cnn_hw->conv_2, cnn_conf->conv_2_ctrl, cnn_hw->conv_2_kernel);
	XCnn_Set_Pool_2(&cnn_hw->pool_2, cnn_conf->pool_2_ctrl);
}

void cnn_hw_start(struct cnn_hw *cnn_hw)
{
	XCnn_pool_d10x10_p2x2_Start(&cnn_hw->pool_2);
	XCnn_conv_d12x12_k3x3_Start(&cnn_hw->conv_2);
	XCnn_pool_d24x24_p2x2_Start(&cnn_hw->pool_1);
	XCnn_conv_d26x26_k3x3_Start(&cnn_hw->conv_1);
	XCnn_pool_d52x52_p2x2_Start(&cnn_hw->pool_0);
	XCnn_conv_d54x54_k3x3_Start(&cnn_hw->conv_0);

	Xil_DCacheFlushRange((uint32_t) cnn_hw->p_dma_buffer_TX, CNN_INPUT_LEN * sizeof(uint32_t));
	Xil_DCacheFlushRange((uint32_t) cnn_hw->p_dma_buffer_RX, CNN_OUTPUT_LEN * sizeof(uint32_t));

	XTime_GetTime(&cnn_hw->tStart);
	XAxiDma_SimpleTransfer(&cnn_hw->axiDMA, (uint32_t)cnn_hw->p_dma_buffer_TX, CNN_INPUT_LEN * sizeof(uint32_t), XAXIDMA_DMA_TO_DEVICE);
	XAxiDma_SimpleTransfer(&cnn_hw->axiDMA, (uint32_t)cnn_hw->p_dma_buffer_RX, CNN_OUTPUT_LEN * sizeof(uint32_t), XAXIDMA_DEVICE_TO_DMA);
	while (XAxiDma_Busy(&cnn_hw->axiDMA, XAXIDMA_DEVICE_TO_DMA));
	Xil_DCacheInvalidateRange((uint32_t) cnn_hw->p_dma_buffer_RX, CNN_OUTPUT_LEN * sizeof(uint32_t));
}

void cnn_hw_wait(struct cnn_hw *cnn_hw)
{
	while (!XCnn_pool_d10x10_p2x2_IsDone(&cnn_hw->pool_2));
	XTime_GetTime(&cnn_hw->tEnd);
}
#endif // (PLATFORM == FPGA)

void cnn_hw_exec(struct cnn_hw *cnn_hw, struct cnn_config *cnn_conf)
{
	printf("\n");
	printf("---------------------------------------------------------------------\n");
	printf("                           cnn hardware run                          \n");
	printf("---------------------------------------------------------------------\n");
#if (PLATFORM == FPGA)
	cnn_hw_set(cnn_hw, cnn_conf);
	cnn_hw_start(cnn_hw);
	cnn_hw_wait(cnn_hw);
	printf("cnn hw took %llu clock cycles\n", 2 * (cnn_hw->tEnd - cnn_hw->tStart));
	printf("which are %.2f us.\n", 1.0 * (cnn_hw->tEnd - cnn_hw->tStart) / (COUNTS_PER_SECOND / 1000000));

	for (int i = 0; i < CNN_OUTPUT_ROWS; i++) {
		for (int j = 0; j < CNN_OUTPUT_ROWS; j++) {
			fixed_point_print(cnn_hw->p_dma_buffer_RX[i]);
		}
		printf("\n");
	}
	printf("---------------------------------------------------------------------\n");
	printf("activations: 0 - none, 1 - ReLU; pooling type: 0 - MAX, 1 - AVG      \n");
	printf("---------------------------------------------------------------------\n\n");
#else
	printf("             operation not supported on this platform\n");
	printf("---------------------------------------------------------------------\n\n");
#endif
}
