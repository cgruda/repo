/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#include "cnn_config.h"
#include "fixed_point.h"
#include <stdio.h>

void cnn_config_init(struct cnn_config *cnn_conf)
{
	for (int i = 0; i < CNN_INPUT_LEN; i++) {
		cnn_conf->input_data[i] = 0.25;
	}
	for (int i = 0; i < CONV_0_KERNEL_LEN; i++) {
		cnn_conf->conv_0_kernel[i] = 1;
	}
	for (int i = 0; i < CONV_1_KERNEL_LEN; i++) {
		cnn_conf->conv_1_kernel[i] = 1;
	}
	for (int i = 0; i < CONV_2_KERNEL_LEN; i++) {
		cnn_conf->conv_2_kernel[i] = 1;
	}

	CONV_CTRL_ACTIVATION_SET(cnn_conf->conv_0_ctrl, CONV_0_ACTIVATION);
	CONV_CTRL_KERNEL_DIM_SET(cnn_conf->conv_0_ctrl, CONV_0_KERNEL_DIM);
	CONV_CTRL_INPUT_ROWS_SET(cnn_conf->conv_0_ctrl, CONV_0_INPUT_ROWS);
	CONV_CTRL_INPUT_COLS_SET(cnn_conf->conv_0_ctrl, CONV_0_INPUT_COLS);

	CONV_CTRL_ACTIVATION_SET(cnn_conf->conv_1_ctrl, CONV_1_ACTIVATION);
	CONV_CTRL_KERNEL_DIM_SET(cnn_conf->conv_1_ctrl, CONV_1_KERNEL_DIM);
	CONV_CTRL_INPUT_ROWS_SET(cnn_conf->conv_1_ctrl, CONV_1_INPUT_ROWS);
	CONV_CTRL_INPUT_COLS_SET(cnn_conf->conv_1_ctrl, CONV_1_INPUT_COLS);

	CONV_CTRL_ACTIVATION_SET(cnn_conf->conv_2_ctrl, CONV_2_ACTIVATION);
	CONV_CTRL_KERNEL_DIM_SET(cnn_conf->conv_2_ctrl, CONV_2_KERNEL_DIM);
	CONV_CTRL_INPUT_ROWS_SET(cnn_conf->conv_2_ctrl, CONV_2_INPUT_ROWS);
	CONV_CTRL_INPUT_COLS_SET(cnn_conf->conv_2_ctrl, CONV_2_INPUT_COLS);

	POOL_CTRL_TYPE_SET(cnn_conf->pool_0_ctrl, POOL_0_TYPE);
	POOL_CTRL_DIM_SET(cnn_conf->pool_0_ctrl, POOL_0_DIM);
	POOL_CTRL_INPUT_ROWS_SET(cnn_conf->pool_0_ctrl, POOL_0_INPUT_ROWS);
	POOL_CTRL_INPUT_COLS_SET(cnn_conf->pool_0_ctrl, POOL_0_INPUT_COLS);

	POOL_CTRL_TYPE_SET(cnn_conf->pool_1_ctrl, POOL_1_TYPE);
	POOL_CTRL_DIM_SET(cnn_conf->pool_1_ctrl, POOL_1_DIM);
	POOL_CTRL_INPUT_ROWS_SET(cnn_conf->pool_1_ctrl, POOL_1_INPUT_ROWS);
	POOL_CTRL_INPUT_COLS_SET(cnn_conf->pool_1_ctrl, POOL_1_INPUT_COLS);

	POOL_CTRL_TYPE_SET(cnn_conf->pool_2_ctrl, POOL_2_TYPE);
	POOL_CTRL_DIM_SET(cnn_conf->pool_2_ctrl, POOL_2_DIM);
	POOL_CTRL_INPUT_ROWS_SET(cnn_conf->pool_2_ctrl, POOL_2_INPUT_ROWS);
	POOL_CTRL_INPUT_COLS_SET(cnn_conf->pool_2_ctrl, POOL_2_INPUT_COLS);
}

void cnn_config_print(struct cnn_config *cnn_conf)
{
	printf("\n");
	printf("---------------------------------------------------------------------\n");
	printf("                           cnn configuration                         \n");
	printf("---------------------------------------------------------------------\n");
	printf("conv_0: input [%2ux%2u], kernel_dim [%u], activation [%u]\n", CONV_CTRL_INPUT_ROWS_GET(cnn_conf->conv_0_ctrl),
									      CONV_CTRL_INPUT_COLS_GET(cnn_conf->conv_0_ctrl),
									      CONV_CTRL_KERNEL_DIM_GET(cnn_conf->conv_0_ctrl),
									      CONV_CTRL_ACTIVATION_GET(cnn_conf->conv_0_ctrl));
	printf("pool_0: input [%2ux%2u], pool_dim   [%u], pool type  [%u]\n", POOL_CTRL_INPUT_ROWS_GET(cnn_conf->pool_0_ctrl),
									      POOL_CTRL_INPUT_COLS_GET(cnn_conf->pool_0_ctrl),
									      POOL_CTRL_DIM_GET(cnn_conf->pool_0_ctrl),
									      POOL_CTRL_TYPE_GET(cnn_conf->pool_0_ctrl));
	printf("conv_1: input [%2ux%2u], kernel_dim [%u], activation [%u]\n", CONV_CTRL_INPUT_ROWS_GET(cnn_conf->conv_1_ctrl),
									      CONV_CTRL_INPUT_COLS_GET(cnn_conf->conv_1_ctrl),
									      CONV_CTRL_KERNEL_DIM_GET(cnn_conf->conv_1_ctrl),
									      CONV_CTRL_ACTIVATION_GET(cnn_conf->conv_1_ctrl));
	printf("pool_1: input [%2ux%2u], pool_dim   [%u], pool type  [%u]\n", POOL_CTRL_INPUT_ROWS_GET(cnn_conf->pool_1_ctrl),
									      POOL_CTRL_INPUT_COLS_GET(cnn_conf->pool_1_ctrl),
									      POOL_CTRL_DIM_GET(cnn_conf->pool_1_ctrl),
									      POOL_CTRL_TYPE_GET(cnn_conf->pool_1_ctrl));
	printf("conv_2: input [%2ux%2u], kernel_dim [%u], activation [%u]\n", CONV_CTRL_INPUT_ROWS_GET(cnn_conf->conv_2_ctrl),
									      CONV_CTRL_INPUT_COLS_GET(cnn_conf->conv_2_ctrl),
									      CONV_CTRL_KERNEL_DIM_GET(cnn_conf->conv_2_ctrl),
									      CONV_CTRL_ACTIVATION_GET(cnn_conf->conv_2_ctrl));
	printf("pool_2: input [%2ux%2u], pool_dim   [%u], pool type  [%u]\n", POOL_CTRL_INPUT_ROWS_GET(cnn_conf->pool_2_ctrl),
									      POOL_CTRL_INPUT_COLS_GET(cnn_conf->pool_2_ctrl),
									      POOL_CTRL_DIM_GET(cnn_conf->pool_2_ctrl),
									      POOL_CTRL_TYPE_GET(cnn_conf->pool_2_ctrl));
	printf("---------------------------------------------------------------------\n");
	printf("activations: 0 - none, 1 - ReLU; pooling type: 0 - MAX, 1 - AVG      \n");
	printf("---------------------------------------------------------------------\n\n");
}
