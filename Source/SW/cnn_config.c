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
	// input
	for (int i = 0; i < CNN_INPUT_LEN; i++) {
		cnn_conf->input_data[i] = 0.25;
	}

	// conv_0
	for (int i = 0; i < CONV_0_KERNEL_LEN; i++) {
		cnn_conf->conv_0_kernel[i] = 1;
	}
	CONV_CTRL_ACTIVATION_SET(cnn_conf->conv_0_ctrl, CONV_0_ACTIVATION);
	CONV_CTRL_KERNEL_DIM_SET(cnn_conf->conv_0_ctrl, CONV_0_KERNEL_DIM);
	CONV_CTRL_INPUT_ROWS_SET(cnn_conf->conv_0_ctrl, CONV_0_INPUT_ROWS);
	CONV_CTRL_INPUT_COLS_SET(cnn_conf->conv_0_ctrl, CONV_0_INPUT_COLS);

	// pool_0
	POOL_CTRL_TYPE_SET(cnn_conf->pool_0_ctrl, POOL_0_TYPE);
	POOL_CTRL_DIM_SET(cnn_conf->pool_0_ctrl, POOL_0_DIM);
	POOL_CTRL_INPUT_ROWS_SET(cnn_conf->pool_0_ctrl, POOL_0_INPUT_ROWS);
	POOL_CTRL_INPUT_COLS_SET(cnn_conf->pool_0_ctrl, POOL_0_INPUT_COLS);

	// conv_1
	for (int i = 0; i < CONV_1_KERNEL_LEN; i++) {
		cnn_conf->conv_1_kernel[i] = 1;
	}
	CONV_CTRL_ACTIVATION_SET(cnn_conf->conv_1_ctrl, CONV_1_ACTIVATION);
	CONV_CTRL_KERNEL_DIM_SET(cnn_conf->conv_1_ctrl, CONV_1_KERNEL_DIM);
	CONV_CTRL_INPUT_ROWS_SET(cnn_conf->conv_1_ctrl, CONV_1_INPUT_ROWS);
	CONV_CTRL_INPUT_COLS_SET(cnn_conf->conv_1_ctrl, CONV_1_INPUT_COLS);

	// pool_1
	POOL_CTRL_TYPE_SET(cnn_conf->pool_1_ctrl, POOL_1_TYPE);
	POOL_CTRL_DIM_SET(cnn_conf->pool_1_ctrl, POOL_1_DIM);
	POOL_CTRL_INPUT_ROWS_SET(cnn_conf->pool_1_ctrl, POOL_1_INPUT_ROWS);
	POOL_CTRL_INPUT_COLS_SET(cnn_conf->pool_1_ctrl, POOL_1_INPUT_COLS);

	// fc_0
	for (int i = 0; i < FC_0_WEIGHT_LEN; i++) {
		cnn_conf->fc_0_weight[i] = 1;
	}
	for (int i = 0; i < FC_0_BIAS_LEN; i++) {
		cnn_conf->fc_0_bias[i] = 0;
	}
	FC_CTRL_ACTIVATION_SET(cnn_conf->fc_0_ctrl, FC_0_ACTIVATION);
	FC_CTRL_INPUT_LEN_SET(cnn_conf->fc_0_ctrl, FC_0_INPUT_LEN);
	FC_CTRL_OUTPUT_LEN_SET(cnn_conf->fc_0_ctrl, FC_0_OUTPUT_LEN);

	// fc_1
	for (int i = 0; i < FC_1_WEIGHT_LEN; i++) {
		cnn_conf->fc_1_weight[i] = 1;
	}
	for (int i = 0; i < FC_1_BIAS_LEN; i++) {
		cnn_conf->fc_1_bias[i] = 0;
	}
	FC_CTRL_ACTIVATION_SET(cnn_conf->fc_1_ctrl, FC_1_ACTIVATION);
	FC_CTRL_INPUT_LEN_SET(cnn_conf->fc_1_ctrl, FC_1_INPUT_LEN);
	FC_CTRL_OUTPUT_LEN_SET(cnn_conf->fc_1_ctrl, FC_1_OUTPUT_LEN);
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
	printf("fc_0  : input [%5u], output [%u], activation [%u]\n",         FC_CTRL_INPUT_LEN_GET(cnn_conf->fc_0_ctrl),
									      FC_CTRL_OUTPUT_LEN_GET(cnn_conf->fc_0_ctrl),
									      FC_CTRL_ACTIVATION_GET(cnn_conf->fc_0_ctrl));
	printf("fc_1  : input [%5u], output [%u], pool type  [%u]\n",         FC_CTRL_INPUT_LEN_GET(cnn_conf->fc_1_ctrl),
									      FC_CTRL_OUTPUT_LEN_GET(cnn_conf->fc_1_ctrl),
									      FC_CTRL_ACTIVATION_GET(cnn_conf->fc_1_ctrl));
	printf("---------------------------------------------------------------------\n");
	printf("activations: 0 - none, 1 - ReLU; pooling type: 0 - MAX, 1 - AVG      \n");
	printf("---------------------------------------------------------------------\n\n");
}