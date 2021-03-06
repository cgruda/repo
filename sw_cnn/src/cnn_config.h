/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#ifndef _CNN_CONFIG_H_
#define _CNN_CONFIG_H_

#define FPGA 0
#define PC 1
#define PLATFORM PC

#define CONFIG_TRACE 0

#include <stdint.h>
#if (PLATFORM == FPGA)
#include "xtime_l.h"
#else
#include <time.h>
#endif

// pool types
#define MAX_POOL 0
#define AVG_POOL 1

// activation types
#define ACTIVATION_NONE 0
#define ACTIVATION_RELU 1

// cnn input
#define CNN_INPUT_ROWS		54
#define CNN_INPUT_COLS		54
#define CNN_INPUT_LEN		(CNN_INPUT_ROWS * CNN_INPUT_COLS)

// conv_0
#define CONV_0_INPUT_ROWS	CNN_INPUT_ROWS
#define CONV_0_INPUT_COLS	CNN_INPUT_COLS
#define CONV_0_INPUT_LEN	(CONV_0_INPUT_ROWS * CONV_0_INPUT_COLS)
#define CONV_0_KERNEL_DIM	3
#define CONV_0_KERNEL_LEN 	(CONV_0_KERNEL_DIM * CONV_0_KERNEL_DIM)
#define CONV_0_ACTIVATION	ACTIVATION_RELU
#define CONV_0_OUTPUT_ROWS	(CONV_0_INPUT_ROWS - CONV_0_KERNEL_DIM + 1)
#define CONV_0_OUTPUT_COLS	(CONV_0_INPUT_COLS - CONV_0_KERNEL_DIM + 1)
#define CONV_0_OUTPUT_LEN	(CONV_0_OUTPUT_ROWS * CONV_0_OUTPUT_COLS)

// pool_0
#define POOL_0_INPUT_ROWS	CONV_0_OUTPUT_ROWS
#define POOL_0_INPUT_COLS	CONV_0_OUTPUT_COLS
#define POOL_0_INPUT_LEN	(POOL_0_INPUT_ROWS * POOL0_INPUT_COLS)
#define POOL_0_TYPE		MAX_POOL
#define POOL_0_DIM		2
#define POOL_0_ROWS		POOL_0_DIM
#define POOL_0_COLS		POOL_0_DIM
#define POOL_0_OUTPUT_ROWS	(POOL_0_INPUT_ROWS / POOL_0_ROWS)
#define POOL_0_OUTPUT_COLS	(POOL_0_INPUT_COLS / POOL_0_COLS)
#define POOL_0_OUTPUT_LEN 	(POOL_0_OUTPUT_ROWS * POOL_0_OUTPUT_COLS)

//conv_1
#define CONV_1_INPUT_ROWS	POOL_0_OUTPUT_ROWS
#define CONV_1_INPUT_COLS	POOL_0_OUTPUT_COLS
#define CONV_1_INPUT_LEN	(CONV_1_INPUT_ROWS * CONV_1_INPUT_COLS)
#define CONV_1_KERNEL_DIM	3
#define CONV_1_KERNEL_LEN 	(CONV_1_KERNEL_DIM * CONV_1_KERNEL_DIM)
#define CONV_1_ACTIVATION	ACTIVATION_RELU
#define CONV_1_OUTPUT_ROWS	(CONV_1_INPUT_ROWS - CONV_1_KERNEL_DIM + 1)
#define CONV_1_OUTPUT_COLS	(CONV_1_INPUT_COLS - CONV_1_KERNEL_DIM + 1)
#define CONV_1_OUTPUT_LEN	(CONV_1_OUTPUT_ROWS * CONV_1_OUTPUT_COLS)

// pool_1
#define POOL_1_TYPE		MAX_POOL
#define POOL_1_INPUT_ROWS	CONV_1_OUTPUT_ROWS
#define POOL_1_INPUT_COLS	CONV_1_OUTPUT_COLS
#define POOL_1_INPUT_LEN	(POOL_1_INPUT_ROWS * POOL_1_INPUT_COLS)
#define POOL_1_DIM		2
#define POOL_1_ROWS		POOL_1_DIM
#define POOL_1_COLS		POOL_1_DIM
#define POOL_1_OUTPUT_ROWS	(POOL_1_INPUT_ROWS / POOL_1_ROWS)
#define POOL_1_OUTPUT_COLS	(POOL_1_INPUT_COLS / POOL_1_COLS)
#define POOL_1_OUTPUT_LEN 	(POOL_1_OUTPUT_ROWS * POOL_1_OUTPUT_COLS)

// fc_0
#define FC_0_INPUT_LEN		(POOL_1_OUTPUT_ROWS * POOL_1_OUTPUT_COLS)
#define FC_0_OUTPUT_LEN		(50)
#define FC_0_WEIGHT_ROWS	FC_0_INPUT_LEN
#define FC_0_WEIGHT_COLS	FC_0_OUTPUT_LEN
#define FC_0_WEIGHT_LEN		(FC_0_WEIGHT_ROWS * FC_0_WEIGHT_COLS)
#define FC_0_ACTIVATION		ACTIVATION_RELU
#define FC_0_BIAS_LEN		FC_0_OUTPUT_LEN

// fc_1
#define FC_1_INPUT_LEN		FC_0_OUTPUT_LEN
#define FC_1_OUTPUT_LEN		(10)
#define FC_1_WEIGHT_ROWS	FC_1_INPUT_LEN
#define FC_1_WEIGHT_COLS	FC_1_OUTPUT_LEN
#define FC_1_WEIGHT_LEN		(FC_1_WEIGHT_ROWS * FC_1_WEIGHT_COLS)
#define FC_1_ACTIVATION		ACTIVATION_NONE
#define FC_1_BIAS_LEN		FC_1_OUTPUT_LEN

// cnn output
#define CNN_OUTPUT_LEN 		FC_1_OUTPUT_LEN

// conv_ctrl
#define CONV_CTRL_ACTIVATION_MSK 0x0000000F
#define CONV_CTRL_ACTIVATION_OFT 0
#define CONV_CTRL_KERNEL_DIM_MSK 0x000000F0
#define CONV_CTRL_KERNEL_DIM_OFT 4
#define CONV_CTRL_INPUT_ROWS_MSK 0x0000FF00
#define CONV_CTRL_INPUT_ROWS_OFT 8
#define CONV_CTRL_INPUT_COLS_MSK 0x00FF0000
#define CONV_CTRL_INPUT_COLS_OFT 16

#define CONV_CTRL_ACTIVATION_GET(conv_ctrl) (((conv_ctrl) & CONV_CTRL_ACTIVATION_MSK) >> CONV_CTRL_ACTIVATION_OFT)
#define CONV_CTRL_KERNEL_DIM_GET(conv_ctrl) (((conv_ctrl) & CONV_CTRL_KERNEL_DIM_MSK) >> CONV_CTRL_KERNEL_DIM_OFT)
#define CONV_CTRL_INPUT_ROWS_GET(conv_ctrl) (((conv_ctrl) & CONV_CTRL_INPUT_ROWS_MSK) >> CONV_CTRL_INPUT_ROWS_OFT)
#define CONV_CTRL_INPUT_COLS_GET(conv_ctrl) (((conv_ctrl) & CONV_CTRL_INPUT_COLS_MSK) >> CONV_CTRL_INPUT_COLS_OFT)

#define CONV_CTRL_ACTIVATION_SET(conv_ctrl, activation) conv_ctrl = (((conv_ctrl) & ~CONV_CTRL_ACTIVATION_MSK) | ((activation) << CONV_CTRL_ACTIVATION_OFT))
#define CONV_CTRL_KERNEL_DIM_SET(conv_ctrl, kernel_dim) conv_ctrl = (((conv_ctrl) & ~CONV_CTRL_KERNEL_DIM_MSK) | ((kernel_dim) << CONV_CTRL_KERNEL_DIM_OFT))
#define CONV_CTRL_INPUT_ROWS_SET(conv_ctrl, input_rows) conv_ctrl = (((conv_ctrl) & ~CONV_CTRL_INPUT_ROWS_MSK) | ((input_rows) << CONV_CTRL_INPUT_ROWS_OFT))
#define CONV_CTRL_INPUT_COLS_SET(conv_ctrl, input_cols) conv_ctrl = (((conv_ctrl) & ~CONV_CTRL_INPUT_COLS_MSK) | ((input_cols) << CONV_CTRL_INPUT_COLS_OFT))

// pool_ctrl
#define POOL_CTRL_TYPE_MSK 0x0000000F
#define POOL_CTRL_TYPE_OFT 0
#define POOL_CTRL_POOL_DIM_MSK 0x000000F0
#define POOL_CTRL_POOL_DIM_OFT 4
#define POOL_CTRL_INPUT_ROWS_MSK 0x0000FF00
#define POOL_CTRL_INPUT_ROWS_OFT 8
#define POOL_CTRL_INPUT_COLS_MSK 0x00FF0000
#define POOL_CTRL_INPUT_COLS_OFT 16

#define POOL_CTRL_TYPE_GET(pool_ctrl) (((pool_ctrl) & POOL_CTRL_TYPE_MSK) >> POOL_CTRL_TYPE_OFT)
#define POOL_CTRL_DIM_GET(pool_ctrl) (((pool_ctrl) & POOL_CTRL_POOL_DIM_MSK) >> POOL_CTRL_POOL_DIM_OFT)
#define POOL_CTRL_INPUT_ROWS_GET(pool_ctrl) (((pool_ctrl) & POOL_CTRL_INPUT_ROWS_MSK) >> POOL_CTRL_INPUT_ROWS_OFT)
#define POOL_CTRL_INPUT_COLS_GET(pool_ctrl) (((pool_ctrl) & POOL_CTRL_INPUT_COLS_MSK) >> POOL_CTRL_INPUT_COLS_OFT)

#define POOL_CTRL_TYPE_SET(pool_ctrl, pool_type) pool_ctrl = (((pool_ctrl) & ~POOL_CTRL_TYPE_MSK) | ((pool_type) << POOL_CTRL_TYPE_OFT))
#define POOL_CTRL_DIM_SET(pool_ctrl, pool_dim) pool_ctrl = (((pool_ctrl) & ~POOL_CTRL_POOL_DIM_MSK) | ((pool_dim) << POOL_CTRL_POOL_DIM_OFT))
#define POOL_CTRL_INPUT_ROWS_SET(pool_ctrl, input_rows) pool_ctrl = (((pool_ctrl) & ~POOL_CTRL_INPUT_ROWS_MSK) | ((input_rows) << POOL_CTRL_INPUT_ROWS_OFT))
#define POOL_CTRL_INPUT_COLS_SET(pool_ctrl, input_cols) pool_ctrl = (((pool_ctrl) & ~POOL_CTRL_INPUT_COLS_MSK) | ((input_cols) << POOL_CTRL_INPUT_COLS_OFT))

// fc_ctrl
#define FC_CTRL_ACTIVATION_MSK 0x0000000F
#define FC_CTRL_ACTIVATION_OFT 0
#define FC_CTRL_INPUT_LEN_MSK 0x0000FFF0
#define FC_CTRL_INPUT_LEN_OFT 4
#define FC_CTRL_OUTPUT_LEN_MSK 0x0FFF0000
#define FC_CTRL_OUTPUT_LEN_OFT 16

#define FC_CTRL_ACTIVATION_GET(fc_ctrl) (((fc_ctrl) & FC_CTRL_ACTIVATION_MSK) >> FC_CTRL_ACTIVATION_OFT)
#define FC_CTRL_INPUT_LEN_GET(fc_ctrl) 	(((fc_ctrl) & FC_CTRL_INPUT_LEN_MSK) >> FC_CTRL_INPUT_LEN_OFT)
#define FC_CTRL_OUTPUT_LEN_GET(fc_ctrl) (((fc_ctrl) & FC_CTRL_OUTPUT_LEN_MSK) >> FC_CTRL_OUTPUT_LEN_OFT)
#define FC_CTRL_WEIGHT_ROWS_GET(fc_ctrl) FC_CTRL_INPUT_LEN_GET(fc_ctrl)
#define FC_CTRL_WEIGHT_COLS_GET(fc_ctrl) FC_CTRL_OUTPUT_LEN_GET(fc_ctrl)
#define FC_CTRL_BIAS_LEN_GET(fc_ctrl) FC_CTRL_OUTPUT_LEN_GET(fc_ctrl)

#define FC_CTRL_ACTIVATION_SET(fc_ctrl, activation) fc_ctrl = (((fc_ctrl) & ~FC_CTRL_ACTIVATION_MSK) | ((activation) << FC_CTRL_ACTIVATION_OFT))
#define FC_CTRL_INPUT_LEN_SET(fc_ctrl, input_len) fc_ctrl = (((fc_ctrl) & ~FC_CTRL_INPUT_LEN_MSK) | ((input_len) << FC_CTRL_INPUT_LEN_OFT))
#define FC_CTRL_OUTPUT_LEN_SET(fc_ctrl, output_len) fc_ctrl = (((fc_ctrl) & ~FC_CTRL_OUTPUT_LEN_MSK) | ((output_len) << FC_CTRL_OUTPUT_LEN_OFT))

#if (PLATFORM == FPGA)
typedef XTime cnn_time_t;
#else
typedef struct timespec cnn_time_t;
#endif

struct cnn_config {
	// ----------------- conv_0 -----------------
	uint32_t conv_0_ctrl;
	float    conv_0_kernel[CONV_0_KERNEL_LEN];
	// ----------------- pool_0 -----------------
	uint32_t pool_0_ctrl;
	// ----------------- conv_1 -----------------
	uint32_t conv_1_ctrl;
	float    conv_1_kernel[CONV_1_KERNEL_LEN];
	// ----------------- pool_1 -----------------
	uint32_t pool_1_ctrl;
	// -----------------  fc_0  -----------------
	uint32_t fc_0_ctrl;
	float    fc_0_weight[FC_0_WEIGHT_LEN];
	float    fc_0_bias[FC_0_BIAS_LEN];
	// -----------------  fc_1  -----------------
	uint32_t fc_1_ctrl;
	float    fc_1_weight[FC_1_WEIGHT_LEN];
	float    fc_1_bias[FC_1_BIAS_LEN];
};

int cnn_config_set(struct cnn_config *cnn_conf);
void cnn_config_print(struct cnn_config *cnn_conf);
void cnn_config_trace_vals(char *text, float *data, int rows, int cols);
void fp_cnn_config_trace_vals(char *text, uint32_t *data, int rows, int cols);

#endif // _CNN_CONFIG_H_
