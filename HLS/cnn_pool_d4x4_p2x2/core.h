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
#define INPUT_COLS 4
#define INPUT_ROWS 4
#define INPUT_LEN  (INPUT_COLS * INPUT_ROWS)

#define POOL_DIM_R 2
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

/*
 * TYPES
 ******************************************************************************
 */

typedef ap_axiu<32, 2, 5, 6> axiu32_t;

/*
 * CORE
 ******************************************************************************
 */

void
cnn_pool_d4x4_p2x2
(hls::stream<axiu32_t> &inStream,
hls::stream<axiu32_t> &outStream,
uint32_t ctrl);

#endif // __CORE_H__
