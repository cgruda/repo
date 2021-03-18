/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#ifndef __CORE_H__
#define __CORE_H__

/*
 * INCLUDES
 ******************************************************************************
 */

#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <stdint.h>

/*
 * DEFINES
 ******************************************************************************
 */

// data
#define INPUT_DATA_COLS 8
#define INPUT_DATA_ROWS 8
#define INPUT_DATA_LEN  (INPUT_DATA_COLS * INPUT_DATA_ROWS)

// kernel
#define KERNEL_DIM 5
#define KERNEL_LEN (KERNEL_DIM * KERNEL_DIM)
#define KERNEL_DIM_Q1 (((KERNEL_DIM) - 1) / 2)

// output
#define OUTPUT_DATA_ROWS (INPUT_DATA_ROWS - KERNEL_DIM + 1)
#define OUTPUT_DATA_COLS (INPUT_DATA_COLS - KERNEL_DIM + 1)
#define OUTPUT_DATA_LEN  (OUTPUT_DATA_ROWS * OUTPUT_DATA_COLS)

/*
 * TYPES
 ******************************************************************************
 */

typedef ap_axiu<32, 2, 5, 6> axiu32_t;

/*
 * CORE
 ******************************************************************************
 */

void cnn_2d_conv_d8x8_k5x5(hls::stream<axiu32_t> &inStream,
		 	 	 	 	   hls::stream<axiu32_t> &outStream,
						   uint32_t ctrl,
						   uint32_t kernelData[KERNEL_LEN]);

#endif // __CORE_H__
