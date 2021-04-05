/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#ifndef SRC_CNN_HW_H_
#define SRC_CNN_HW_H_

/*
 * INCLUDES
 ******************************************************************************
 */

#include "pool_0.h"
#include "conv_0.h"
#include "xaxidma.h"
#include <xparameters.h>

/*
 * DEFENITIONS
 ******************************************************************************
 */

struct cnn_hw {
	conv_0_hw conv_0_hw;
	conv_0_hw_cfg *conv_0_hw_cfg;
	pool_0_hw pool_0_hw;
	pool_0_hw_cfg *pool_0_hw_cfg;
	XAxiDma axi_dma;
	XAxiDma_Config *axi_dma_cfg;
};

/*
 * DEFENITIONS
 ******************************************************************************
 */

int cnn_hw_init(struct cnn_hw *p_cnn_hw);


#endif /* SRC_CNN_HW_H_ */
