/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#include "cnn_config.h"
#include "cnn_hw_sim.h"
#include "cnn_hw.h"
#include "cnn_sw.h"
#include "cnn_task.h"
#include "fixed_point.h"
#include <stdio.h>
#include <string.h>
#include <stdint.h>

void fp_conv(uint32_t *input, uint32_t *kernel, uint32_t *output, uint32_t ctrl)
{
	int input_rows = CONV_CTRL_INPUT_ROWS_GET(ctrl);
	int input_cols = CONV_CTRL_INPUT_COLS_GET(ctrl);
	int kernel_dim = CONV_CTRL_KERNEL_DIM_GET(ctrl);
	int activation = CONV_CTRL_ACTIVATION_GET(ctrl);
	int output_rows = input_rows - kernel_dim + 1;
	int output_cols = input_cols - kernel_dim + 1;

	for (int i = 0; i < output_rows; ++i) {
		for (int j = 0; j < output_cols; ++j) {
			uint32_t sum = 0;
			for (int n = 0; n < kernel_dim; n++) {
				for (int m = 0; m < kernel_dim; m++) {
					sum += fixed_point_mul(input[(i + n) * input_cols + (j + m)], kernel[n * kernel_dim + m]);
				}
			}
			switch (activation) {
			case ACTIVATION_NONE:
				output[i * output_cols + j] = sum;
				break;
			case ACTIVATION_RELU:
				output[i * output_cols + j] = (sum & SIGN_BIT) ? 0 : sum;
				break;
			}
		}
	}
}

void fp_pool(uint32_t *input, uint32_t *output, uint32_t ctrl)
{
	int input_rows = POOL_CTRL_INPUT_ROWS_GET(ctrl);
	int input_cols = POOL_CTRL_INPUT_COLS_GET(ctrl);
	int pool_dim = POOL_CTRL_DIM_GET(ctrl);
	int pool_type = POOL_CTRL_TYPE_GET(ctrl);
	int output_rows = input_rows / pool_dim;
	int output_cols = input_cols / pool_dim;

	for (int i = 0; i < output_rows; ++i) {
		for (int j = 0; j < output_cols; ++j) {
			uint32_t max_val = input[(pool_dim * i) * input_cols + (j * pool_dim)];
			uint32_t sum = 0;
			for (int n = 0; n < pool_dim; n++) {
				for (int m = 0; m < pool_dim; m++) {
					// FIXME: this max condition might be a bug in hw for negative vals
					//        this didnt arrise so far because all conv layers use ReLU
					if (input[((pool_dim * i) + n) * input_cols + ((j * pool_dim) + m)] > max_val) {
						max_val = input[((pool_dim * i) + n) * input_cols + ((j * pool_dim) + m)];
					}
					sum += input[((pool_dim * i) + n) * input_cols + ((j * pool_dim) + m)];
				}
			}
			switch (pool_type) {
			case MAX_POOL:
				output[i * output_cols + j] = max_val;
				break;
			case AVG_POOL:
				output[i * output_cols + j] = fixed_point_div(sum, float_2_fixed(pool_dim * pool_dim));
				break;
			}
		}
	}
}

void fp_fully_connected(uint32_t *input, uint32_t *weight, uint32_t *bias, uint32_t *output, uint32_t ctrl)
{
	int input_len = FC_CTRL_INPUT_LEN_GET(ctrl);
	int output_len = FC_CTRL_OUTPUT_LEN_GET(ctrl);
	int weight_cols = FC_CTRL_WEIGHT_COLS_GET(ctrl);
	int activation = FC_CTRL_ACTIVATION_GET(ctrl);

	for (int i = 0; i < input_len; i++) {
		for (int j = 0; j < output_len; j++) {
			output[j] += fixed_point_mul(weight[i * weight_cols + j], input[i]);
		}
	}

	for (int i = 0; i < output_len; i++) {
		output[i] += bias[i];
		switch (activation) {
		case ACTIVATION_NONE:
			break;
		case ACTIVATION_RELU:
			output[i] = (output[i] & SIGN_BIT) ? 0 : output[i];
			break;
		}
	}
}

void cnn_hw_sim_conv_0_set(struct cnn_hw_sim *cnn_hw_sim, uint32_t ctrl, float *kernel)
{
	cnn_hw_sim->conv_0_ctrl = ctrl;
	for (int i = 0; i < CONV_0_KERNEL_LEN; i++) {
		cnn_hw_sim->conv_0_kernel[i] = float_2_fixed(kernel[i]);
	}
}

void cnn_hw_sim_conv_1_set(struct cnn_hw_sim *cnn_hw_sim, uint32_t ctrl, float *kernel)
{
	cnn_hw_sim->conv_1_ctrl = ctrl;
	for (int i = 0; i < CONV_1_KERNEL_LEN; i++) {
		cnn_hw_sim->conv_1_kernel[i] = float_2_fixed(kernel[i]);
	}
}

void cnn_hw_sim_pool_0_set(struct cnn_hw_sim *cnn_hw_sim, uint32_t ctrl)
{
	cnn_hw_sim->pool_0_ctrl = ctrl;
}

void cnn_hw_sim_pool_1_set(struct cnn_hw_sim *cnn_hw_sim, uint32_t ctrl)
{
	cnn_hw_sim->pool_1_ctrl = ctrl;
}

void cnn_hw_sim_fc_0_set(struct cnn_hw_sim *cnn_hw_sim, uint32_t ctrl, float *weight, float *bias)
{
	cnn_hw_sim->fc_0_ctrl = ctrl;
	for (int i = 0; i < FC_0_BIAS_LEN; i++) {
		cnn_hw_sim->fc_0_bias[i] = float_2_fixed(bias[i]);
	}
	for (int i = 0; i < FC_0_WEIGHT_ROWS; i++) {
		for (int j = 0; j < FC_0_WEIGHT_COLS; j++) {
			cnn_hw_sim->fc_0_weight[i * FC_0_WEIGHT_COLS + j] = float_2_fixed(weight[i * FC_0_WEIGHT_COLS + j]);
		}
	}
}

void cnn_hw_sim_fc_1_set(struct cnn_hw_sim *cnn_hw_sim, uint32_t ctrl, float *weight, float *bias)
{
	cnn_hw_sim->fc_1_ctrl = ctrl;
	for (int i = 0; i < FC_1_BIAS_LEN; i++) {
		cnn_hw_sim->fc_1_bias[i] = float_2_fixed(bias[i]);
	}
	for (int i = 0; i < FC_1_WEIGHT_ROWS; i++) {
		for (int j = 0; j < FC_1_WEIGHT_COLS; j++) {
			cnn_hw_sim->fc_1_weight[i * FC_1_WEIGHT_COLS + j] = float_2_fixed(weight[i * FC_1_WEIGHT_COLS + j]);
		}
	}
}

void cnn_hw_sim_eval(struct cnn_hw_sim *cnn_hw_sim, struct cnn_run *cnn_run)
{
	float pre_softmax_output[CNN_OUTPUT_LEN] = {0};

	for (int i = 0; i < CNN_INPUT_LEN; i++) {
		cnn_hw_sim->input_data[i] = float_2_fixed(cnn_run->input_data[i]);
	}

	capture_time(&cnn_run->tStart);
	fp_conv(cnn_hw_sim->input_data, cnn_hw_sim->conv_0_kernel, cnn_hw_sim->conv_0_output, cnn_hw_sim->conv_0_ctrl);
	fp_pool(cnn_hw_sim->conv_0_output, cnn_hw_sim->pool_0_output, cnn_hw_sim->pool_0_ctrl);
	fp_conv(cnn_hw_sim->pool_0_output, cnn_hw_sim->conv_1_kernel, cnn_hw_sim->conv_1_output, cnn_hw_sim->conv_1_ctrl);
	fp_pool(cnn_hw_sim->conv_1_output, cnn_hw_sim->pool_1_output, cnn_hw_sim->pool_1_ctrl);
	fp_fully_connected(cnn_hw_sim->pool_1_output, cnn_hw_sim->fc_0_weight, cnn_hw_sim->fc_0_bias, cnn_hw_sim->fc_0_output, cnn_hw_sim->fc_0_ctrl);
	fp_fully_connected(cnn_hw_sim->fc_0_output, cnn_hw_sim->fc_1_weight, cnn_hw_sim->fc_1_bias, cnn_hw_sim->fc_1_output, cnn_hw_sim->fc_1_ctrl);
	for (int i = 0; i < CNN_OUTPUT_LEN; i++) {
		pre_softmax_output[i] = fixed_2_float(cnn_hw_sim->fc_1_output[i]);
	}
	softmax(pre_softmax_output, cnn_hw_sim->output_data);
	capture_time(&cnn_run->tEnd);
}

void cnn_hw_sim_reset(struct cnn_hw_sim *cnn_hw_sim)
{
	memset(cnn_hw_sim->conv_0_output, 0, CONV_0_OUTPUT_LEN * sizeof(uint32_t));
	memset(cnn_hw_sim->conv_1_output, 0, CONV_1_OUTPUT_LEN * sizeof(uint32_t));
	memset(cnn_hw_sim->pool_0_output, 0, POOL_0_OUTPUT_LEN * sizeof(uint32_t));
	memset(cnn_hw_sim->pool_1_output, 0, POOL_1_OUTPUT_LEN * sizeof(uint32_t));
	memset(cnn_hw_sim->fc_0_output, 0, FC_0_OUTPUT_LEN * sizeof(uint32_t));
	memset(cnn_hw_sim->fc_1_output, 0, FC_1_OUTPUT_LEN * sizeof(uint32_t));
	for (int i = 0; i < CNN_OUTPUT_LEN; i++) {
		cnn_hw_sim->output_data[i] = 0;
	}
}

void cnn_hw_sim_exec(struct cnn_hw_sim *cnn_hw_sim, struct cnn_run *cnn_run, bool verbose)
{
	if (!cnn_run->valid) {
		return;
	}

	cnn_hw_sim_reset(cnn_hw_sim);
	cnn_hw_sim_eval(cnn_hw_sim, cnn_run);
	cnn_result(cnn_hw_sim->output_data, cnn_run);
}

void cnn_hw_sim_set(struct cnn_hw_sim *cnn_hw_sim, struct cnn_config *cnn_conf)
{
	cnn_hw_sim_conv_0_set(cnn_hw_sim, cnn_conf->conv_0_ctrl, cnn_conf->conv_0_kernel);
	cnn_hw_sim_pool_0_set(cnn_hw_sim, cnn_conf->pool_0_ctrl);
	cnn_hw_sim_conv_1_set(cnn_hw_sim, cnn_conf->conv_1_ctrl, cnn_conf->conv_1_kernel);
	cnn_hw_sim_pool_1_set(cnn_hw_sim, cnn_conf->pool_1_ctrl);
	cnn_hw_sim_fc_0_set(cnn_hw_sim, cnn_conf->fc_0_ctrl, cnn_conf->fc_0_weight, cnn_conf->fc_0_bias);
	cnn_hw_sim_fc_1_set(cnn_hw_sim, cnn_conf->fc_1_ctrl, cnn_conf->fc_1_weight, cnn_conf->fc_1_bias);
}

void cnn_hw_sim_run_single(struct cnn_hw_sim *cnn_hw_sim)
{
	print_header("hardware simulation");
	struct cnn_run cnn_run = {0};
	cnn_prep_run(&cnn_run, DEFAULT_FILE_PATH, DEFAULT_IDX);
	cnn_hw_sim_exec(cnn_hw_sim, &cnn_run, true);
	cnn_run_print_result(&cnn_run);
	print_tail();
}

void cnn_hw_sim_run_all(struct cnn_hw_sim *cnn_hw_sim)
{
	print_header("hardware simulation");
	char csv_data_path[CNN_SIM_DATA_FILE_PATH_MAX_LEN];
	struct cnn_stat all_stat = {0};
	all_stat.idx = -1;
	struct cnn_run cnn_run = {0};

	for (int i = 0; i < 10; i++) {
		struct cnn_stat idx_stat = {0};
		idx_stat.idx = i;
		FILEO *idx_fptr = index_file_open(i);
		if (!idx_fptr) {
			PRINT_UI("failed to open index %d!\n\r", i);
			continue;
		}
		while (next_csv_path_get(idx_fptr, csv_data_path) == 0) {
			if (!(idx_stat.img_cnt % 38)) {
				PRINT_UI(".");
			}
			if (!*csv_data_path) {
				cnn_stat_print_idx(&idx_stat);
				cnn_stat(&all_stat, NULL, &idx_stat);
				break;
			}
			cnn_prep_run(&cnn_run, csv_data_path, i);
			cnn_hw_sim_exec(cnn_hw_sim, &cnn_run, false);
			cnn_stat(&idx_stat, &cnn_run, NULL);
		}
		close_file(idx_fptr);
	}
	PRINT_UI("+++++++++++ summary ++++++++++");
	cnn_stat_print_idx(&all_stat);
	print_tail();
}


