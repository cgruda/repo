/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#ifndef _CNN_HW_H_
#define _CNN_HW_H_

#include "cnn_config.h"
#include "cnn_task.h"
#include <stdint.h>
#include <stdbool.h>
#if (PLATFORM == FPGA)
#include "xcnn_conv_d54x54_k3x3.h"
#include "xcnn_pool_d52x52_p2x2.h"
#include "xcnn_conv_d26x26_k3x3.h"
#include "xcnn_pool_d24x24_p2x2.h"
#include "xcnn_fc_i144_o50.h"
#include "xcnn_fc_i50_o10.h"
#include "xaxidma.h"
#include "xtime_l.h"
#endif

#define MEM_BASE_ADDR 0x01000000
#define TX_BUFFER_BASE (MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE (MEM_BASE_ADDR + 0x00300000)

struct cnn_hw {
#if (PLATFORM == FPGA)
	XCnn_conv_d54x54_k3x3 conv_0;
	XCnn_pool_d52x52_p2x2 pool_0;
	XCnn_conv_d26x26_k3x3 conv_1;
	XCnn_pool_d24x24_p2x2 pool_1;
	XCnn_fc_i144_o50 fc_0;
	XCnn_fc_i50_o10 fc_1;
	XAxiDma axiDMA;
#endif
	uint32_t *p_dma_buffer_TX;
	uint32_t *p_dma_buffer_RX;
	float output_data[CNN_OUTPUT_LEN];
};

#if (PLATFORM == FPGA)
int cnn_hw_init(struct cnn_hw *p_cnn_hw);
#endif
void cnn_hw_set(struct cnn_hw *cnn_hw, struct cnn_config *cnn_conf);
void cnn_hw_exec(void *cnn_obj, struct cnn_run *cnn_run, bool verbose);


#endif // _CNN_HW_H_
