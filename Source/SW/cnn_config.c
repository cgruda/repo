/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#include "cnn_config.h"
#include "cnn_sim.h"
#include "fixed_point.h"
#include <stdio.h>

#if (CONFIG_TRACE)
void cnn_config_trace_vals(char *text, float *data, int rows, int cols)
{
	printf("\n----------------------------------------------\n");
	printf("%s\n", text);
	for (int i = 0; i < rows; i++) {
		for (int j = 0; j < cols; j++) {
			printf("%6.5f ", data[i * cols + j]);
		}
		printf("\n");
	}
	printf("----------------------------------------------\n\n");
}
#endif

int cnn_config_conv_0_set(float *kernel, uint32_t *ctrl)
{
	int err = 0;
#if (CNN_SIM_MODE == PRODUCTION)
	for (int i = 0; i < CONV_0_KERNEL_LEN; i++) {
		kernel[i] = 1;
	}
#else
	err |= load_csv_data(CNN_SIM_CONV_0_KERNEL_VALS_PATH, kernel, CONV_0_KERNEL_DIM, CONV_0_KERNEL_DIM);
#endif
	CONV_CTRL_ACTIVATION_SET(*ctrl, CONV_0_ACTIVATION);
	CONV_CTRL_KERNEL_DIM_SET(*ctrl, CONV_0_KERNEL_DIM);
	CONV_CTRL_INPUT_ROWS_SET(*ctrl, CONV_0_INPUT_ROWS);
	CONV_CTRL_INPUT_COLS_SET(*ctrl, CONV_0_INPUT_COLS);
#if (CONFIG_TRACE)
	cnn_config_trace_vals("conv_0_kernel:", kernel, CONV_0_KERNEL_DIM, CONV_0_KERNEL_DIM);
#endif
	return err;
}

int cnn_config_conv_1_set(float *kernel, uint32_t *ctrl)
{
	int err = 0;
#if (CNN_SIM_MODE == PRODUCTION)
	for (int i = 0; i < CONV_1_KERNEL_LEN; i++) {
		kernel[i] = 1;
	}
#else
	err |= load_csv_data(CNN_SIM_CONV_1_KERNEL_VALS_PATH, kernel, CONV_1_KERNEL_DIM, CONV_1_KERNEL_DIM);
#endif
	CONV_CTRL_ACTIVATION_SET(*ctrl, CONV_1_ACTIVATION);
	CONV_CTRL_KERNEL_DIM_SET(*ctrl, CONV_1_KERNEL_DIM);
	CONV_CTRL_INPUT_ROWS_SET(*ctrl, CONV_1_INPUT_ROWS);
	CONV_CTRL_INPUT_COLS_SET(*ctrl, CONV_1_INPUT_COLS);
#if (CONFIG_TRACE)
	cnn_config_trace_vals("conv_1_kernel:", kernel, CONV_1_KERNEL_DIM, CONV_1_KERNEL_DIM);
#endif
	return err;
}

int cnn_config_pool_0_set(uint32_t *ctrl)
{
	POOL_CTRL_TYPE_SET(*ctrl, POOL_0_TYPE);
	POOL_CTRL_DIM_SET(*ctrl, POOL_0_DIM);
	POOL_CTRL_INPUT_ROWS_SET(*ctrl, POOL_0_INPUT_ROWS);
	POOL_CTRL_INPUT_COLS_SET(*ctrl, POOL_0_INPUT_COLS);
	return 0;
}

int cnn_config_pool_1_set(uint32_t *ctrl)
{
	POOL_CTRL_TYPE_SET(*ctrl, POOL_1_TYPE);
	POOL_CTRL_DIM_SET(*ctrl, POOL_1_DIM);
	POOL_CTRL_INPUT_ROWS_SET(*ctrl, POOL_1_INPUT_ROWS);
	POOL_CTRL_INPUT_COLS_SET(*ctrl, POOL_1_INPUT_COLS);
	return 0;
}

int cnn_config_fc_0_set(float *weight, float *bias, uint32_t *ctrl)
{
	int err = 0;
#if (CNN_SIM_MODE == PRODUCTION)
	for (int i = 0; i < FC_0_WEIGHT_LEN; i++) {
		weight[i] = 1;
	}
	for (int i = 0; i < FC_0_BIAS_LEN; i++) {
		bias[i] = 0;
	}
#else
	err |= load_csv_data(CNN_SIM_FC_0_WEIGHT_VALS_PATH, weight, FC_0_WEIGHT_ROWS, FC_0_WEIGHT_COLS);
	err |= load_csv_data(CNN_SIM_FC_0_BIAS_VALS_PATH, bias, FC_0_BIAS_LEN, 1);
#endif
	FC_CTRL_ACTIVATION_SET(*ctrl, FC_0_ACTIVATION);
	FC_CTRL_INPUT_LEN_SET(*ctrl, FC_0_INPUT_LEN);
	FC_CTRL_OUTPUT_LEN_SET(*ctrl, FC_0_OUTPUT_LEN);
#if (CONFIG_TRACE)
	cnn_config_trace_vals("fc_0_weight:", weight, FC_0_WEIGHT_ROWS, FC_0_WEIGHT_COLS);
	cnn_config_trace_vals("fc_0_bias:", bias, 1, FC_0_BIAS_LEN);
#endif
	return err;
}

int cnn_config_fc_1_set(float *weight, float *bias, uint32_t *ctrl)
{
	int err = 0;
#if (CNN_SIM_MODE == PRODUCTION)
	for (int i = 0; i < FC_1_WEIGHT_LEN; i++) {
		weight[i] = 1;
	}
	for (int i = 0; i < FC_1_BIAS_LEN; i++) {
		bias[i] = 0;
	}
#else
	err |= load_csv_data(CNN_SIM_FC_1_WEIGHT_VALS_PATH, weight, FC_1_WEIGHT_ROWS, FC_1_WEIGHT_COLS);
	err |= load_csv_data(CNN_SIM_FC_1_BIAS_VALS_PATH, bias, FC_1_BIAS_LEN, 1);
#endif
	FC_CTRL_ACTIVATION_SET(*ctrl, FC_1_ACTIVATION);
	FC_CTRL_INPUT_LEN_SET(*ctrl, FC_1_INPUT_LEN);
	FC_CTRL_OUTPUT_LEN_SET(*ctrl, FC_1_OUTPUT_LEN);
#if (CONFIG_TRACE)
	cnn_config_trace_vals("fc_1_weight:", weight, FC_1_WEIGHT_ROWS, FC_1_WEIGHT_COLS);
	cnn_config_trace_vals("fc_1_bias:", bias, 1, FC_1_BIAS_LEN);
#endif
	return err;
}

int cnn_config_init(struct cnn_config *cnn_conf)
{
	int err = 0;
	err |= cnn_config_conv_0_set(cnn_conf->conv_0_kernel, &cnn_conf->conv_0_ctrl);
	err |= cnn_config_pool_0_set(&cnn_conf->pool_0_ctrl);
	err |= cnn_config_conv_1_set(cnn_conf->conv_1_kernel, &cnn_conf->conv_1_ctrl);
	err |= cnn_config_pool_1_set(&cnn_conf->pool_1_ctrl);
	err |= cnn_config_fc_0_set(cnn_conf->fc_0_weight, cnn_conf->fc_0_bias, &cnn_conf->fc_0_ctrl);
	err |= cnn_config_fc_1_set(cnn_conf->fc_1_weight, cnn_conf->fc_1_bias, &cnn_conf->fc_1_ctrl);
	return err;
}

int cnn_config_input_data_set(float *input_data, struct cnn_sim *cnn_sim)
{
	int err = 0;
#if (CNN_SIM_MODE == PRODUCTION)
	for (int i = 0; i < CNN_INPUT_LEN; i++) {
		input_data[i] = 0.25;
	}
#else
	char csv_data_path[CNN_SIM_DATA_FILE_PATH_MAX_LEN] = {0};
	err |= get_next_data_file_path(cnn_sim, csv_data_path)
	err |= load_csv_data(csv_data_path, input_data, CNN_INPUT_ROWS, CNN_INPUT_COLS);
#endif
	return err;
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