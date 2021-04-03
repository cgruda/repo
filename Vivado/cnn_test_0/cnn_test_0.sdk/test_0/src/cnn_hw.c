/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

/*
 * INCLUDES
 ******************************************************************************
 */

#include "cnn_hw.h"
#include "dbg.h"
#include "xaxidma.h"
#include <xparameters.h>

/*
 * DEFENITIONS
 ******************************************************************************
 */

int cnn_hw_init(struct cnn_hw *p_cnn_hw)
{
	printf("in init\n");

	int status = XST_SUCCESS;

	// conv 0 init
	status = conv_0_hw_init(&p_cnn_hw->conv_0_hw, p_cnn_hw->conv_0_hw_cfg);
	if (status != XST_SUCCESS) {
		printf("conv_0_hw_init failed\n");
		return status;
	}

	// pool 0 init
	status = pool_0_hw_init(&p_cnn_hw->pool_0_hw, p_cnn_hw->pool_0_hw_cfg);
	if (status != XST_SUCCESS) {
		printf("pool_0_hw_init failed\n");
		return status;
	}

	// axi dma init
	p_cnn_hw->axi_dma_cfg = XAxiDma_LookupConfig(XPAR_AXIDMA_0_DEVICE_ID);
	if (!p_cnn_hw->axi_dma_cfg) {
		printf("XAxiDma_LookupConfig failed\n");
		return XST_FAILURE;
	}

	status = XAxiDma_CfgInitialize(&p_cnn_hw->axi_dma, p_cnn_hw->axi_dma_cfg);
	if (status != XST_SUCCESS) {
		printf("XAxiDma_CfgInitialize failed\n");
		return status;
	}

	XAxiDma_IntrDisable(&p_cnn_hw->axi_dma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&p_cnn_hw->axi_dma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

	//DBG_LOG_PRINT(TRACE, "cnn_hw_init\n");
	printf("init done\n");

	return status;
}