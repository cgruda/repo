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
#define INPUT_IMAGE_ROWS 128
#define INPUT_IMAGE_COLS 128
#define INPUT_IMAGE_LEN  (INPUT_IMAGE_ROWS * INPUT_IMAGE_COLS)

// kernel
#define KERNEL_DIM 3
#define KERNEL_DIM_Q1 (((KERNEL_DIM) - 1) / 2)
#define KERNEL_ROWS KERNEL_DIM
#define KERNEL_COLS KERNEL_DIM
#define KERNEL_LEN  (KERNEL_ROWS * KERNEL_COLS)
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

void my_filter_buffer(hls::stream<uint32axis_t>& in_stream,
					  hls::stream<uint32axis_t>& out_stream,
					  uint8_t kernel[KERNEL_LEN],
					  uint8_t bias[KERNEL_LEN],
					  uint8_t ctrl);


#endif /* __SLIDING_WINDOW_H__ */
