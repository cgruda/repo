/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */


#ifndef __SLIDING_WINDOW_H__
#define __SLIDING_WINDOW_H__


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

// input image
#define INPUT_IMAGE_ROWS_MAX 32
#define INPUT_IMAGE_COLS_MAX 32
#define INPUT_IMAGE_LEN_MAX  (INPUT_IMAGE_ROWS_MAX * INPUT_IMAGE_COLS_MAX)

// kernel
#define KERNEL_DIM_MAX 11
#define KERNEL_DIM_Q1_MAX (((KERNEL_DIM_MAX) - 1) / 2)
#define KERNEL_ROWS_MAX KERNEL_DIM_MAX
#define KERNEL_COLS_MAX KERNEL_DIM_MAX
#define KERNEL_LEN_MAX (KERNEL_ROWS_MAX * KERNEL_COLS_MAX)
#define KERNEL_BUS "kernel_bus"

// fixed point
#define FRACTION_OFT 16
#define FRACTION_MSK 0x0000ffff
#define FRACTION_DIV (1 << FRACTION_OFT)
#define UINT32_TO_32FIXP(num) ((num) << FRACTION_OFT)
#define UINT8_TO_32FIXP(num) ((uint32_t)(num) << FRACTION_OFT)
#define FIXP32_FRACTION_GET(num) (((num) & FRACTION_MSK) * 1000000 / FRACTION_DIV) // 2 points

// control
#define CTRL_OPP_OFT    0
#define CTRL_OPP_MSK    0x03
#define CTRL_PAD_OFT    2
#define CTRL_PAD_MSK    0x04
#define CTRL_STRIDE_OFT 3
#define CTRL_STRIDE_MSK 0xF8

#define CTRL_PADD_ENABLE	CTRL_PAD_MSK

/*
 * TYPES
 ******************************************************************************
 */

typedef uint32_t fixp32_t;
typedef ap_axis<32, 2, 5, 6> uint32axis_t;

/*
 * DECLARATIONS
 ******************************************************************************
 */

void conv(hls::stream<uint32axis_t>& in_stream,
		  hls::stream<uint32axis_t>& out_stream,
		  uint32_t input_image_rows, uint32_t input_image_cols,
		  uint32_t kernel_dim,
		  uint32_t kernel[KERNEL_LEN_MAX],
		  uint32_t bias[KERNEL_LEN_MAX],
		  uint32_t ctrl);

#endif /* __SLIDING_WINDOW_H__ */
