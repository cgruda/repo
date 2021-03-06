/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#include "cnn_sw.h"
#include "cnn_config.h"
#include "cnn_task.h"
#include <stdint.h>
#if (PLATFORM == FPGA)
#include "xil_printf.h"
#else
#include <stdio.h>
#endif
#include <math.h>
#include <stdbool.h>

void conv(float *input, float *kernel, float *output, uint32_t ctrl)
{
	int input_rows = CONV_CTRL_INPUT_ROWS_GET(ctrl);
	int input_cols = CONV_CTRL_INPUT_COLS_GET(ctrl);
	int kernel_dim = CONV_CTRL_KERNEL_DIM_GET(ctrl);
	int activation = CONV_CTRL_ACTIVATION_GET(ctrl);
	int output_rows = input_rows - kernel_dim + 1;
	int output_cols = input_cols - kernel_dim + 1;

	for (int i = 0; i < output_rows; ++i) {
		for (int j = 0; j < output_cols; ++j) {
			float sum = 0;
			for (int n = 0; n < kernel_dim; n++) {
				for (int m = 0; m < kernel_dim; m++) {
					sum += input[(i + n) * input_cols + (j + m)] * kernel[n * kernel_dim + m];
				}
			}
			switch (activation) {
			case ACTIVATION_NONE:
				output[i * output_cols + j] = sum;
				break;
			case ACTIVATION_RELU:
				output[i * output_cols + j] = max(sum, 0);
				break;
			}
		}
	}
}

void pool(float *input, float *output, uint32_t ctrl)
{
	int input_rows = POOL_CTRL_INPUT_ROWS_GET(ctrl);
	int input_cols = POOL_CTRL_INPUT_COLS_GET(ctrl);
	int pool_dim = POOL_CTRL_DIM_GET(ctrl);
	int pool_type = POOL_CTRL_TYPE_GET(ctrl);
	int output_rows = input_rows / pool_dim;
	int output_cols = input_cols / pool_dim;

	for (int i = 0; i < output_rows; ++i) {
		for (int j = 0; j < output_cols; ++j) {
			float max_val = input[(pool_dim * i) * input_cols + (j * pool_dim)];
			float sum = 0;
			for (int n = 0; n < pool_dim; n++) {
				for (int m = 0; m < pool_dim; m++) {
					max_val = max(max_val, input[((pool_dim * i) + n) * input_cols + ((j * pool_dim) + m)]);
					sum += input[((pool_dim * i) + n) * input_cols + ((j * pool_dim) + m)];
				}
			}
			switch (pool_type) {
			case MAX_POOL:
				output[i * output_cols + j] = max_val;
				break;
			case AVG_POOL:
				output[i * output_cols + j] = sum / (pool_dim * pool_dim);
				break;
			}
		}
	}
}

void fully_connected(float *input, float *weight, float *bias, float *output, uint32_t ctrl)
{
	int input_len = FC_CTRL_INPUT_LEN_GET(ctrl);
	int output_len = FC_CTRL_OUTPUT_LEN_GET(ctrl);
	int weight_cols = FC_CTRL_WEIGHT_COLS_GET(ctrl);
	int activation = FC_CTRL_ACTIVATION_GET(ctrl);

	for (int i = 0; i < input_len; i++) {
		for (int j = 0; j < output_len; j++) {
			output[j] += weight[i * weight_cols + j] * input[i];
		}
	}

	for (int i = 0; i < output_len; i++) {
		output[i] += bias[i];
		switch (activation) {
		case ACTIVATION_NONE:
			break;
		case ACTIVATION_RELU:
			output[i] = max(output[i], 0);
			break;
		}
	}
}

float expo(float y)
{
	if(y > 80) {
		y = 80;
	}
	return exp(y);
}

void softmax(float *input, float *output)
{
	for (int i = 0; i < CNN_OUTPUT_LEN; i++) {
		float sum = 0;
		for (int i = 0; i < CNN_OUTPUT_LEN; i++) {
			sum += expo(input[i]);
		}
		if (sum == 0) {
			sum = 0.001;
		}
		output[i] = expo(input[i])/sum;
	}
}

void cnn_sw_set(struct cnn_sw *cnn_sw, struct cnn_config *cnn_conf)
{
	// ----------------- conv_0 -----------------
	cnn_sw->conv_0_ctrl = cnn_conf->conv_0_ctrl;
	cnn_sw->conv_0_kernel = cnn_conf->conv_0_kernel;
	// ----------------- pool_0 -----------------
	cnn_sw->pool_0_ctrl = cnn_conf->pool_0_ctrl;
	// ----------------- conv_1 -----------------
	cnn_sw->conv_1_ctrl = cnn_conf->conv_1_ctrl;
	cnn_sw->conv_1_kernel = cnn_conf->conv_1_kernel;
	// ----------------- pool_1 -----------------
	cnn_sw->pool_1_ctrl = cnn_conf->pool_1_ctrl;
	// -----------------  fc_0  -----------------
	cnn_sw->fc_0_ctrl = cnn_conf->fc_0_ctrl;
	cnn_sw->fc_0_weight = cnn_conf->fc_0_weight;
	cnn_sw->fc_0_bias = cnn_conf->fc_0_bias;
	// -----------------  fc_1  -----------------
	cnn_sw->fc_1_ctrl = cnn_conf->fc_1_ctrl;
	cnn_sw->fc_1_weight = cnn_conf->fc_1_weight;
	cnn_sw->fc_1_bias = cnn_conf->fc_1_bias;
}

void cnn_sw_eval(struct cnn_sw *cnn_sw, struct cnn_run *cnn_run)
{
	capture_time(&cnn_run->tStart);
	conv(cnn_run->input_data, cnn_sw->conv_0_kernel, cnn_sw->conv_0_output, cnn_sw->conv_0_ctrl);
	pool(cnn_sw->conv_0_output, cnn_sw->pool_0_output, cnn_sw->pool_0_ctrl);
	conv(cnn_sw->pool_0_output, cnn_sw->conv_1_kernel, cnn_sw->conv_1_output, cnn_sw->conv_1_ctrl);
	pool(cnn_sw->conv_1_output, cnn_sw->pool_1_output, cnn_sw->pool_1_ctrl);
	fully_connected(cnn_sw->pool_1_output, cnn_sw->fc_0_weight, cnn_sw->fc_0_bias, cnn_sw->fc_0_output, cnn_sw->fc_0_ctrl);
	fully_connected(cnn_sw->fc_0_output, cnn_sw->fc_1_weight, cnn_sw->fc_1_bias, cnn_sw->fc_1_output, cnn_sw->fc_1_ctrl);
	softmax(cnn_sw->fc_1_output, cnn_sw->output_data);
	capture_time(&cnn_run->tEnd);
}

void cnn_sw_reset(struct cnn_sw *cnn_sw)
{
	for (int i = 0; i < CONV_0_OUTPUT_LEN; i++) {
		cnn_sw->conv_0_output[i] = 0;
	}
	for (int i = 0; i < POOL_0_OUTPUT_LEN; i++) {
		cnn_sw->pool_0_output[i] = 0;
	}
	for (int i = 0; i < CONV_1_OUTPUT_LEN; i++) {
		cnn_sw->conv_1_output[i] = 0;
	}
	for (int i = 0; i < POOL_1_OUTPUT_LEN; i++) {
		cnn_sw->pool_1_output[i] = 0;
	}
	for (int i = 0; i < FC_0_OUTPUT_LEN; i++) {
		cnn_sw->fc_0_output[i] = 0;
	}
	for (int i = 0; i < FC_1_OUTPUT_LEN; i++) {
		cnn_sw->fc_1_output[i] = 0;
	}
	for (int i = 0; i < CNN_OUTPUT_LEN; i++) {
		cnn_sw->output_data[i] = 0;
	}
}

void cnn_sw_exec(void *cnn_obj, struct cnn_run *cnn_run, bool verbose)
{
	struct cnn_sw *cnn_sw = (struct cnn_sw*)cnn_obj;

	if (!cnn_run->valid) {
		return;
	}

	cnn_sw_reset(cnn_sw);
	cnn_sw_eval(cnn_sw, cnn_run);
	cnn_result(cnn_sw->output_data, cnn_run);
}
