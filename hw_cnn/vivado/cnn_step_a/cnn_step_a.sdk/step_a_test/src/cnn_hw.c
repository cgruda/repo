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
#include "cnn_sw.h"
#include "cnn_task.h"
#include "fixed_point.h"
#if (PLATFORM == FPGA)
#include "xil_printf.h"
#else
#include <stdio.h>
#endif
#include <stdint.h>
#if (PLATFORM == FPGA)
#include <xparameters.h>
#endif

#if (PLATFORM == FPGA)
void (*cnn_hw_conv_0_kernel_set[CONV_0_KERNEL_LEN])(XCnn_conv_d54x54_k3x3 *InstancePtr, uint32_t Data) = {
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

void (*cnn_hw_conv_1_kernel_set[CONV_1_KERNEL_LEN])(XCnn_conv_d26x26_k3x3 *InstancePtr, uint32_t Data) = {
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

u32 (*cnn_hw_fc_0_weight_write[FC_0_WEIGHT_COLS / 2])(XCnn_fc_i144_o50 *InstancePtr, int offset, int *data, int length) = {
	XCnn_fc_i144_o50_Write_weight_0_Words,
	XCnn_fc_i144_o50_Write_weight_1_Words,
	XCnn_fc_i144_o50_Write_weight_2_Words,
	XCnn_fc_i144_o50_Write_weight_3_Words,
	XCnn_fc_i144_o50_Write_weight_4_Words,
	XCnn_fc_i144_o50_Write_weight_5_Words,
	XCnn_fc_i144_o50_Write_weight_6_Words,
	XCnn_fc_i144_o50_Write_weight_7_Words,
	XCnn_fc_i144_o50_Write_weight_8_Words,
	XCnn_fc_i144_o50_Write_weight_9_Words,
	XCnn_fc_i144_o50_Write_weight_10_Words,
	XCnn_fc_i144_o50_Write_weight_11_Words,
	XCnn_fc_i144_o50_Write_weight_12_Words,
	XCnn_fc_i144_o50_Write_weight_13_Words,
	XCnn_fc_i144_o50_Write_weight_14_Words,
	XCnn_fc_i144_o50_Write_weight_15_Words,
	XCnn_fc_i144_o50_Write_weight_16_Words,
	XCnn_fc_i144_o50_Write_weight_17_Words,
	XCnn_fc_i144_o50_Write_weight_18_Words,
	XCnn_fc_i144_o50_Write_weight_19_Words,
	XCnn_fc_i144_o50_Write_weight_20_Words,
	XCnn_fc_i144_o50_Write_weight_21_Words,
	XCnn_fc_i144_o50_Write_weight_22_Words,
	XCnn_fc_i144_o50_Write_weight_23_Words,
	XCnn_fc_i144_o50_Write_weight_24_Words
};

u32 (*cnn_hw_fc_1_weight_write[FC_1_WEIGHT_COLS])(XCnn_fc_i50_o10 *InstancePtr, int offset, int *data, int length) = {
	XCnn_fc_i50_o10_Write_weight_0_Words,
	XCnn_fc_i50_o10_Write_weight_1_Words,
	XCnn_fc_i50_o10_Write_weight_2_Words,
	XCnn_fc_i50_o10_Write_weight_3_Words,
	XCnn_fc_i50_o10_Write_weight_4_Words,
	XCnn_fc_i50_o10_Write_weight_5_Words,
	XCnn_fc_i50_o10_Write_weight_6_Words,
	XCnn_fc_i50_o10_Write_weight_7_Words,
	XCnn_fc_i50_o10_Write_weight_8_Words,
	XCnn_fc_i50_o10_Write_weight_9_Words
};

void cnn_hw_fc_0_weight_set(XCnn_fc_i144_o50 *InstancePtr, int row, int col, uint32_t data)
{
	cnn_hw_fc_0_weight_write[col / 2](InstancePtr, (((row * 2) + (col % 2))), (int*)&data, 1);
}

void cnn_hw_fc_0_bias_set(XCnn_fc_i144_o50 *InstancePtr, int col, uint32_t data)
{
	XCnn_fc_i144_o50_Write_bias_Words(InstancePtr, col, (int*)&data, 1);
}

void cnn_hw_fc_1_weight_set(XCnn_fc_i50_o10 *InstancePtr, int row, int col, uint32_t data)
{
	cnn_hw_fc_1_weight_write[col](InstancePtr, row, (int*)&data, 1);
}

void cnn_hw_fc_1_bias_set(XCnn_fc_i50_o10 *InstancePtr, int col, uint32_t data)
{
	XCnn_fc_i50_o10_Write_bias_Words(InstancePtr, col, (int*)&data, 1);
}

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

	status = XCnn_fc_i144_o50_Initialize(&p_cnn_hw->fc_0, XPAR_CNN_FC_I144_O50_0_DEVICE_ID);
	if (status != XST_SUCCESS)
		return status;

	status = XCnn_fc_i50_o10_Initialize(&p_cnn_hw->fc_1, XPAR_CNN_FC_I50_O10_0_DEVICE_ID);
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

void cnn_hw_conv_0_set(XCnn_conv_d54x54_k3x3 *InstancePtr, uint32_t ctrl, float *kernel)
{
	XCnn_conv_d54x54_k3x3_Set_ctrl(InstancePtr, ctrl);
	for (int i = 0; i < CONV_0_KERNEL_LEN; i++) {
		cnn_hw_conv_0_kernel_set[i](InstancePtr, float_2_fixed(kernel[i]));
	}
}

void cnn_hw_conv_1_set(XCnn_conv_d26x26_k3x3 *InstancePtr, uint32_t ctrl, float *kernel)
{
	XCnn_conv_d26x26_k3x3_Set_ctrl(InstancePtr, ctrl);
	for (int i = 0; i < CONV_1_KERNEL_LEN; i++) {
		cnn_hw_conv_1_kernel_set[i](InstancePtr, float_2_fixed(kernel[i]));
	}
}

void cnn_hw_pool_0_set(XCnn_pool_d52x52_p2x2 *InstancePtr, uint32_t ctrl)
{
	XCnn_pool_d52x52_p2x2_Set_ctrl(InstancePtr, ctrl);
}

void cnn_hw_pool_1_set(XCnn_pool_d24x24_p2x2 *InstancePtr, uint32_t ctrl)
{
	XCnn_pool_d24x24_p2x2_Set_ctrl(InstancePtr, ctrl);
}

void cnn_hw_fc_0_set(XCnn_fc_i144_o50 *InstancePtr, uint32_t ctrl, float *weight, float *bias)
{
	XCnn_fc_i144_o50_Set_ctrl(InstancePtr, ctrl);
	for (int i = 0; i < FC_0_BIAS_LEN; i++) {
		cnn_hw_fc_0_bias_set(InstancePtr, i, float_2_fixed(bias[i]));
	}
	for (int i = 0; i < FC_0_WEIGHT_ROWS; i++) {
		for (int j = 0; j < FC_0_WEIGHT_COLS; j++) {
			cnn_hw_fc_0_weight_set(InstancePtr, i, j, float_2_fixed(weight[i * FC_0_WEIGHT_COLS + j]));
		}
	}
}

void cnn_hw_fc_1_set(XCnn_fc_i50_o10 *InstancePtr, uint32_t ctrl, float *weight, float *bias)
{
	XCnn_fc_i50_o10_Set_ctrl(InstancePtr, ctrl);
	for (int i = 0; i < FC_1_BIAS_LEN; i++) {
		cnn_hw_fc_1_bias_set(InstancePtr, i, float_2_fixed(bias[i]));
	}
	for (int i = 0; i < FC_1_WEIGHT_ROWS; i++) {
		for (int j = 0; j < FC_1_WEIGHT_COLS; j++) {
			cnn_hw_fc_1_weight_set(InstancePtr, i, j, float_2_fixed(weight[i * FC_1_WEIGHT_COLS + j]));
		}
	}
}
#endif // (PLATFORM == FPGA)

void cnn_hw_eval(struct cnn_hw *cnn_hw, struct cnn_run *cnn_run)
{
#if (PLATFORM == FPGA)
	float pre_softmax_output[CNN_OUTPUT_LEN] = {0};

	for (int i = 0; i < CNN_INPUT_LEN; i++) {
		cnn_hw->p_dma_buffer_TX[i] = float_2_fixed(cnn_run->input_data[i]);
	}

	XCnn_fc_i50_o10_Start(&cnn_hw->fc_1);
	XCnn_fc_i144_o50_Start(&cnn_hw->fc_0);
	XCnn_pool_d24x24_p2x2_Start(&cnn_hw->pool_1);
	XCnn_conv_d26x26_k3x3_Start(&cnn_hw->conv_1);
	XCnn_pool_d52x52_p2x2_Start(&cnn_hw->pool_0);
	XCnn_conv_d54x54_k3x3_Start(&cnn_hw->conv_0);

	Xil_DCacheFlushRange((uint32_t) cnn_hw->p_dma_buffer_TX, CNN_INPUT_LEN * sizeof(uint32_t));
	Xil_DCacheFlushRange((uint32_t) cnn_hw->p_dma_buffer_RX, CNN_OUTPUT_LEN * sizeof(uint32_t));

	capture_time(&cnn_run->tStart);
	XAxiDma_SimpleTransfer(&cnn_hw->axiDMA, (uint32_t)cnn_hw->p_dma_buffer_TX, CNN_INPUT_LEN * sizeof(uint32_t), XAXIDMA_DMA_TO_DEVICE);
	XAxiDma_SimpleTransfer(&cnn_hw->axiDMA, (uint32_t)cnn_hw->p_dma_buffer_RX, CNN_OUTPUT_LEN * sizeof(uint32_t), XAXIDMA_DEVICE_TO_DMA);
	while (XAxiDma_Busy(&cnn_hw->axiDMA, XAXIDMA_DEVICE_TO_DMA));
	Xil_DCacheInvalidateRange((uint32_t) cnn_hw->p_dma_buffer_RX, CNN_OUTPUT_LEN * sizeof(uint32_t));

	while (!XCnn_fc_i50_o10_IsDone(&cnn_hw->fc_1));
	for (int i = 0; i < CNN_OUTPUT_LEN; i++) {
		pre_softmax_output[i] = fixed_2_float(cnn_hw->p_dma_buffer_RX[i]);
	}
	softmax(pre_softmax_output, cnn_hw->output_data);
	capture_time(&cnn_run->tEnd);
#endif // (PLATFORM == FPGA)
}

void cnn_hw_reset(struct cnn_hw *cnn_hw)
{
	for (int i = 0; i < CNN_OUTPUT_LEN; i++) {
		cnn_hw->output_data[i] = 0;
	}
}

void cnn_hw_exec(void *cnn_obj, struct cnn_run *cnn_run, bool verbose)
{
	struct cnn_hw *cnn_hw = (struct cnn_hw*)cnn_obj;

	if (!cnn_run->valid) {
		return;
	}

	cnn_hw_reset(cnn_hw);
	cnn_hw_eval(cnn_hw, cnn_run);
	cnn_result(cnn_hw->output_data, cnn_run);
}

void cnn_hw_set(struct cnn_hw *cnn_hw, struct cnn_config *cnn_conf)
{
#if (PLATFORM == FPGA)
	cnn_hw_conv_0_set(&cnn_hw->conv_0, cnn_conf->conv_0_ctrl, cnn_conf->conv_0_kernel);
	cnn_hw_pool_0_set(&cnn_hw->pool_0, cnn_conf->pool_0_ctrl);
	cnn_hw_conv_1_set(&cnn_hw->conv_1, cnn_conf->conv_1_ctrl, cnn_conf->conv_1_kernel);
	cnn_hw_pool_1_set(&cnn_hw->pool_1, cnn_conf->pool_1_ctrl);
	cnn_hw_fc_0_set(&cnn_hw->fc_0, cnn_conf->fc_0_ctrl, cnn_conf->fc_0_weight, cnn_conf->fc_0_bias);
	cnn_hw_fc_1_set(&cnn_hw->fc_1, cnn_conf->fc_1_ctrl, cnn_conf->fc_1_weight, cnn_conf->fc_1_bias);
#endif
}
