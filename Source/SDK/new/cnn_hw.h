/*
 * cnn_hw.h
 *
 *  Created on: Apr 9, 2021
 *      Author: cgrud
 */

#ifndef SRC_CNN_HW_H_
#define SRC_CNN_HW_H_

#include <xparameters.h>
#include "xcnn_conv_d46x46_k3x3.h"
#include "xcnn_pool_d44x44_p2x2.h"
#include "xcnn_conv_d22x22_k3x3.h"
#include "xcnn_pool_d20x20_p2x2.h"
#include "xcnn_conv_d10x10_k3x3.h"
#include "xcnn_pool_d8x8_p2x2.h"
#include "xaxidma.h"
#include "cnn_config.h"
#include "xtime_l.h"

#define MEM_BASE_ADDR 0x01000000
#define TX_BUFFER_BASE (MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE (MEM_BASE_ADDR + 0x00300000)

struct cnn_hw {
	XCnn_conv_d46x46_k3x3 conv_0;
	XCnn_pool_d44x44_p2x2 pool_0;
	XCnn_conv_d22x22_k3x3 conv_1;
	XCnn_pool_d20x20_p2x2 pool_1;
	XCnn_conv_d10x10_k3x3 conv_2;
	XCnn_pool_d8x8_p2x2 pool_2;
	XAxiDma axiDMA;
	u32 *p_dma_buffer_TX;
	u32 *p_dma_buffer_RX;
	XTime tStart;
	XTime tEnd;
};

int cnn_hw_init(struct cnn_hw *p_cnn_hw);
void XCnn_Set_Conv_0(XCnn_conv_d46x46_k3x3 *InstancePtr, u32 ctrl, u32 *kernel);
void XCnn_Set_Pool_0(XCnn_pool_d44x44_p2x2 *InstancePtr, u32 ctrl);
void XCnn_Set_Conv_1(XCnn_conv_d22x22_k3x3 *InstancePtr, u32 ctrl, u32 *kernel);
void XCnn_Set_Pool_1(XCnn_pool_d20x20_p2x2 *InstancePtr, u32 ctrl);
void XCnn_Set_Conv_2(XCnn_conv_d10x10_k3x3 *InstancePtr, u32 ctrl, u32 *kernel);
void XCnn_Set_Pool_2(XCnn_pool_d8x8_p2x2 *InstancePtr, u32 ctrl);
void cnn_hw_set(struct cnn_hw *cnn_hw, struct cnn_config *cnn_conf);
void cnn_hw_start(struct cnn_hw *cnn_hw);
void cnn_hw_wait(struct cnn_hw *p_cnn_hw);

#endif /* SRC_CNN_HW_H_ */
