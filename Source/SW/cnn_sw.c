/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#include "cnn_config.h"
#include "cnn_sw.h"
#include <stdint.h>
#include <stdio.h>
#include <math.h>
#if (PLATFORM == FPGA)
#include "xtime_l.h"
#else
#include <time.h>
#endif

#define max(a, b) ((a) > (b) ? (a) : (b))

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
		for (int j; j < output_len; j++) {
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

float softmax(float *input, float *output)
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

void cnn_result(float *cnn_output_data, int *first_guess, int *second_guess)
{
	float max_val = cnn_output_data[0];
	float sec_val = 0;

	for (int i = 1; i < CNN_OUTPUT_LEN; i++) {
		if (cnn_output_data[i] > max_val) {
			sec_val = max_val;
			*second_guess = *first_guess;
			max_val = cnn_output_data[i];
			*first_guess = i;
		} else if (cnn_output_data[i] > sec_val) {
			sec_val = cnn_output_data[i];
			*second_guess = i;
		}
	}
}

void cnn_sw_set(struct cnn_sw *cnn_sw, struct cnn_config *cnn_conf)
{
	// input
	cnn_sw->input_data = cnn_conf->input_data;
	
	// conv_0
	cnn_sw->conv_0_ctrl = cnn_conf->conv_0_ctrl;
	cnn_sw->conv_0_kernel = cnn_conf->conv_0_kernel;
	
	// pool_0
	cnn_sw->pool_0_ctrl = cnn_conf->pool_0_ctrl;
	
	// conv_1
	cnn_sw->conv_1_ctrl = cnn_conf->conv_1_ctrl;
	cnn_sw->conv_1_kernel = cnn_conf->conv_1_kernel;

	// pool_1
	cnn_sw->pool_1_ctrl = cnn_conf->pool_1_ctrl;

	// fc_0
	cnn_sw->fc_0_ctrl = cnn_conf->fc_0_ctrl;
	cnn_sw->fc_0_weight = cnn_conf->fc_0_weight;
	cnn_sw->fc_0_bias = cnn_conf->fc_0_bias;

	// fc_1
	cnn_sw->fc_1_ctrl = cnn_conf->fc_1_ctrl;
	cnn_sw->fc_1_weight = cnn_conf->fc_1_weight;
	cnn_sw->fc_1_bias = cnn_conf->fc_1_bias;
}

void cnn_sw_start(struct cnn_sw *cnn_sw)
{
#if (PLATFORM == FPGA)
	XTime_GetTime(&cnn_sw->tStart);
#else
	timespec_get(&cnn_sw->tStart, TIME_UTC);
#endif
	conv(cnn_sw->input_data, cnn_sw->conv_0_kernel, cnn_sw->conv_0_output, cnn_sw->conv_0_ctrl);
	pool(cnn_sw->conv_0_output, cnn_sw->pool_0_output, cnn_sw->pool_0_ctrl);
	conv(cnn_sw->pool_0_output, cnn_sw->conv_1_kernel, cnn_sw->conv_1_output, cnn_sw->conv_1_ctrl);
	pool(cnn_sw->conv_1_output, cnn_sw->pool_1_output, cnn_sw->pool_1_ctrl);
	fully_connected(cnn_sw->pool_1_output, cnn_sw->fc_0_weight, cnn_sw->fc_0_bias, cnn_sw->fc_0_output, cnn_sw->fc_0_ctrl);
	fully_connected(cnn_sw->fc_0_output, cnn_sw->fc_1_weight, cnn_sw->fc_1_bias, cnn_sw->fc_1_output, cnn_sw->fc_1_ctrl);
	softmax(cnn_sw->fc_1_output, cnn_sw->output_data);
	cnn_result(cnn_sw->output_data, &cnn_sw->cnn_result, &cnn_sw->cnn_second_result);
#if (PLATFORM == FPGA)
	XTime_GetTime(&cnn_sw->tEnd);
#else
	timespec_get(&cnn_sw->tEnd, TIME_UTC);
#endif
}

void cnn_sw_exec(struct cnn_sw *cnn_sw, struct cnn_config *cnn_conf)
{
	printf("\n");
	printf("---------------------------------------------------------------------\n");
	printf("                           cnn software run                          \n");
	printf("---------------------------------------------------------------------\n");
	cnn_sw_set(cnn_sw, cnn_conf);
	cnn_sw_start(cnn_sw);
#if (PLATFORM == FPGA)
	XTime timediff = cnn_sw->tEnd - cnn_sw->tStart;
	printf("cnn sw took %llu clock cycles\n", 2 * timediff);
	printf("which are %.2f us.\n", 1.0 * timediff / (COUNTS_PER_SECOND / 1000000));
#else
	uint32_t sec = cnn_sw->tEnd.tv_sec - cnn_sw->tStart.tv_sec;
	uint32_t nsec = cnn_sw->tEnd.tv_nsec - cnn_sw->tStart.tv_nsec + (sec * 1000000000);
	printf("cnn took %u nsec\n", nsec);
#endif
	for (int i = 0; i < CNN_OUTPUT_LEN; i++) {
		printf("[%d] %.6f\n", i, cnn_sw->output_data[i]);
	}

	printf("first guess = %d\n", cnn_sw->cnn_result);
	printf("second guess = %d\n", cnn_sw->cnn_second_result);

	printf("---------------------------------------------------------------------\n\n");
}