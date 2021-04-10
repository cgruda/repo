/*
 * cnn_config.h
 *
 *  Created on: Apr 9, 2021
 *      Author: cgrud
 */

#ifndef SRC_CNN_CONFIG_H_
#define SRC_CNN_CONFIG_H_

#include "xil_types.h"
#include <stdint.h>

#define MAX_POOL 0
#define AVG_POOL 1
#define ACTIVATION_NONE 0
#define ACTIVATION_RELU 1

// cnn input
#define CNN_INPUT_ROWS		46
#define CNN_INPUT_COLS		46
#define CNN_INPUT_LEN		(CNN_INPUT_ROWS * CNN_INPUT_COLS)

// conv_0
#define CONV_0_INPUT_ROWS	CNN_INPUT_ROWS
#define CONV_0_INPUT_COLS	CNN_INPUT_COLS
#define CONV_0_INPUT_LEN	(CONV_0_INPUT_ROWS * CONV_0_INPUT_COLS)
#define CONV_0_KERNEL_DIM	3
#define CONV_0_KERNEL_ROWS	CONV_0_KERNEL_DIM
#define CONV_0_KERNEL_COLS	CONV_0_KERNEL_DIM
#define CONV_0_KERNEL_LEN 	(CONV_0_KERNEL_ROWS * CONV_0_KERNEL_COLS)
#define CONV_0_ACTIVATION	ACTIVATION_NONE
#define CONV_0_OUTPUT_ROWS	(CONV_0_INPUT_ROWS - CONV_0_KERNEL_ROWS + 1)
#define CONV_0_OUTPUT_COLS	(CONV_0_INPUT_COLS - CONV_0_KERNEL_COLS + 1)
#define CONV_0_OUTPUT_LEN	(CONV_0_OUTPUT_ROWS * CONV_0_OUTPUT_COLS)

// pool_0
#define POOL_0_INPUT_ROWS	CONV_0_OUTPUT_ROWS
#define POOL_0_INPUT_COLS	CONV_0_OUTPUT_COLS
#define POOL_0_INPUT_LEN	(POOL_0_INPUT_ROWS * POOL0_INPUT_COLS)
#define POOL_0_TYPE		AVG_POOL
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
#define CONV_1_KERNEL_ROWS	CONV_1_KERNEL_DIM
#define CONV_1_KERNEL_COLS	CONV_1_KERNEL_DIM
#define CONV_1_KERNEL_LEN 	(CONV_1_KERNEL_ROWS * CONV_1_KERNEL_COLS)
#define CONV_1_ACTIVATION	ACTIVATION_NONE
#define CONV_1_OUTPUT_ROWS	(CONV_1_INPUT_ROWS - CONV_1_KERNEL_ROWS + 1)
#define CONV_1_OUTPUT_COLS	(CONV_1_INPUT_COLS - CONV_1_KERNEL_COLS + 1)
#define CONV_1_OUTPUT_LEN	(CONV_1_OUTPUT_ROWS * CONV_1_OUTPUT_COLS)

// pool_1
#define POOL_1_TYPE		AVG_POOL
#define POOL_1_INPUT_ROWS	CONV_1_OUTPUT_ROWS
#define POOL_1_INPUT_COLS	CONV_1_OUTPUT_COLS
#define POOL_1_INPUT_LEN	(POOL_1_INPUT_ROWS * POOL_1_INPUT_COLS)
#define POOL_1_DIM		2
#define POOL_1_ROWS		POOL_1_DIM
#define POOL_1_COLS		POOL_1_DIM
#define POOL_1_OUTPUT_ROWS	(POOL_1_INPUT_ROWS / POOL_1_ROWS)
#define POOL_1_OUTPUT_COLS	(POOL_1_INPUT_COLS / POOL_1_COLS)
#define POOL_1_OUTPUT_LEN 	(POOL_1_OUTPUT_ROWS * POOL_1_OUTPUT_COLS)

// conv_2
#define CONV_2_INPUT_ROWS	POOL_1_OUTPUT_ROWS
#define CONV_2_INPUT_COLS	POOL_1_OUTPUT_COLS
#define CONV_2_INPUT_LEN	(CONV_2_INPUT_ROWS * CONV_2_INPUT_COLS)
#define CONV_2_KERNEL_DIM	3
#define CONV_2_KERNEL_ROWS	CONV_2_KERNEL_DIM
#define CONV_2_KERNEL_COLS	CONV_2_KERNEL_DIM
#define CONV_2_KERNEL_LEN 	(CONV_2_KERNEL_ROWS * CONV_2_KERNEL_COLS)
#define CONV_2_ACTIVATION	ACTIVATION_NONE
#define CONV_2_OUTPUT_ROWS	(CONV_2_INPUT_ROWS - CONV_2_KERNEL_ROWS + 1)
#define CONV_2_OUTPUT_COLS	(CONV_2_INPUT_COLS - CONV_2_KERNEL_COLS + 1)
#define CONV_2_OUTPUT_LEN	(CONV_2_OUTPUT_ROWS * CONV_2_OUTPUT_COLS)

// pool_2
#define POOL_2_TYPE		AVG_POOL
#define POOL_2_INPUT_ROWS	CONV_2_OUTPUT_ROWS
#define POOL_2_INPUT_COLS	CONV_2_OUTPUT_COLS
#define POOL_2_INPUT_LEN	(POOL_2_INPUT_ROWS * POOL_2_INPUT_COLS)
#define POOL_2_DIM		2
#define POOL_2_ROWS		POOL_2_DIM
#define POOL_2_COLS		POOL_2_DIM
#define POOL_2_OUTPUT_ROWS	(POOL_2_INPUT_ROWS / POOL_2_ROWS)
#define POOL_2_OUTPUT_COLS	(POOL_2_INPUT_COLS / POOL_2_COLS)
#define POOL_2_OUTPUT_LEN 	(POOL_2_OUTPUT_ROWS * POOL_2_OUTPUT_COLS)

// cnn output
#define CNN_OUTPUT_ROWS		POOL_2_OUTPUT_ROWS
#define CNN_OUTPUT_COLS		POOL_2_OUTPUT_COLS
#define CNN_OUTPUT_LEN 		(CNN_OUTPUT_ROWS * CNN_OUTPUT_COLS)

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

#define POOL_CTRL_TYPE_MSK 0x0000000F
#define POOL_CTRL_TYPE_OFT 0
#define POOL_CTRL_POOL_DIM_MSK 0x000000F0
#define POOL_CTRL_POOL_DIM_OFT 4
#define POOL_CTRL_INPUT_ROWS_MSK 0x0000FF00
#define POOL_CTRL_INPUT_ROWS_OFT 8
#define POOL_CTRL_INPUT_COLS_MSK 0x00FF0000
#define POOL_CTRL_INPUT_COLS_OFT 16

#define POOL_CTRL_TYPE_GET(pool_ctrl) 		(((pool_ctrl) & POOL_CTRL_TYPE_MSK) >> POOL_CTRL_TYPE_OFT)
#define POOL_CTRL_DIM_GET(pool_ctrl) 		(((pool_ctrl) & POOL_CTRL_POOL_DIM_MSK) >> POOL_CTRL_POOL_DIM_OFT)
#define POOL_CTRL_INPUT_ROWS_GET(pool_ctrl) 	(((pool_ctrl) & POOL_CTRL_INPUT_ROWS_MSK) >> POOL_CTRL_INPUT_ROWS_OFT)
#define POOL_CTRL_INPUT_COLS_GET(pool_ctrl) 	(((pool_ctrl) & POOL_CTRL_INPUT_COLS_MSK) >> POOL_CTRL_INPUT_COLS_OFT)

#define POOL_CTRL_TYPE_SET(pool_ctrl, pool_type) 	pool_ctrl = (((pool_ctrl) & ~POOL_CTRL_TYPE_MSK) | ((pool_type) << POOL_CTRL_TYPE_OFT))
#define POOL_CTRL_DIM_SET(pool_ctrl, pool_dim) 		pool_ctrl = (((pool_ctrl) & ~POOL_CTRL_POOL_DIM_MSK) | ((pool_dim) << POOL_CTRL_POOL_DIM_OFT))
#define POOL_CTRL_INPUT_ROWS_SET(pool_ctrl, input_rows) pool_ctrl = (((pool_ctrl) & ~POOL_CTRL_INPUT_ROWS_MSK) | ((input_rows) << POOL_CTRL_INPUT_ROWS_OFT))
#define POOL_CTRL_INPUT_COLS_SET(pool_ctrl, input_cols) pool_ctrl = (((pool_ctrl) & ~POOL_CTRL_INPUT_COLS_MSK) | ((input_cols) << POOL_CTRL_INPUT_COLS_OFT))

struct cnn_config {
	float input_data[CNN_INPUT_LEN];
	float conv_0_kernel[CONV_0_KERNEL_LEN];
	uint32_t conv_0_ctrl;
	float conv_1_kernel[CONV_1_KERNEL_LEN];
	uint32_t conv_1_ctrl;
	float conv_2_kernel[CONV_2_KERNEL_LEN];
	uint32_t conv_2_ctrl;
	uint32_t pool_0_ctrl;
	uint32_t pool_1_ctrl;
	uint32_t pool_2_ctrl;
};

void cnn_config_init(struct cnn_config *cnn_conf);
void cnn_config_print(struct cnn_config *cnn_conf);

#endif /* SRC_CNN_CONFIG_H_ */
