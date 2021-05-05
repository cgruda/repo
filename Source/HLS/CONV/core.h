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

#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <stdint.h>

// data
#define INPUT_COLS X
#define INPUT_ROWS X
#define INPUT_LEN  (INPUT_COLS * INPUT_ROWS)

// kernel
#define KERNEL_DIM Y
#define KERNEL_LEN (KERNEL_DIM * KERNEL_DIM)
#define KERNEL_DIM_Q1 (((KERNEL_DIM) - 1) / 2)

// output
#define OUTPUT_ROWS (INPUT_ROWS - KERNEL_DIM + 1)
#define OUTPUT_COLS (INPUT_COLS - KERNEL_DIM + 1)
#define OUTPUT_LEN  (OUTPUT_ROWS * OUTPUT_COLS)

// ctrl
#define CTRL_ACTIVATION_MSK  0x00000001
#define CTRL_ACTIVATION_NONE 0
#define CTRL_ACTIVATION_RELU 1

typedef ap_axiu<32, 2, 5, 6> axiu32_t;

void
cnn_conv_dXxX_kYxY
(hls::stream<axiu32_t> &inStream, hls::stream<axiu32_t> &outStream,
uint32_t ctrl,
uint32_t kernel[KERNEL_LEN]);


#endif // __CORE_H__
