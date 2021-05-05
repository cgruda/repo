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

#define POOL_DIM_R Y
#define POOL_DIM POOL_DIM_R + 1
#define POOL_LEN (POOL_DIM * POOL_DIM)
#define POOL_DIM_Q1 (((POOL_DIM) - 1) / 2)

// output
#define OUTPUT_ROWS (INPUT_ROWS / POOL_DIM_R)
#define OUTPUT_COLS (INPUT_COLS / POOL_DIM_R)
#define OUTPUT_LEN  (OUTPUT_ROWS * OUTPUT_COLS)

// ctrl
#define CTRL_OP_MSK 0x00000001
#define MAX_POOL 0
#define AVG_POOL 1

typedef ap_axiu<32, 2, 5, 6> axiu32_t;

void
cnn_pool_dXxX_pYxY
(hls::stream<axiu32_t> &inStream,
hls::stream<axiu32_t> &outStream,
uint32_t ctrl);


#endif // __CORE_H__
