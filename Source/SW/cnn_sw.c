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

void cnn_sw_set(struct cnn_sw *cnn_sw, struct cnn_config *cnn_conf)
{
	cnn_sw->input_data = cnn_conf->input_data;
	cnn_sw->conv_0_kernel = cnn_conf->conv_0_kernel;
	cnn_sw->conv_1_kernel = cnn_conf->conv_1_kernel;
	cnn_sw->conv_2_kernel = cnn_conf->conv_2_kernel;
	cnn_sw->conv_0_ctrl = cnn_conf->conv_0_ctrl;
	cnn_sw->conv_1_ctrl = cnn_conf->conv_1_ctrl;
	cnn_sw->conv_2_ctrl = cnn_conf->conv_2_ctrl;
	cnn_sw->pool_0_ctrl = cnn_conf->pool_0_ctrl;
	cnn_sw->pool_1_ctrl = cnn_conf->pool_1_ctrl;
	cnn_sw->pool_2_ctrl = cnn_conf->pool_2_ctrl;
	cnn_sw->output_data = cnn_sw->pool_2_output;
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
	conv(cnn_sw->pool_1_output, cnn_sw->conv_2_kernel, cnn_sw->conv_2_output, cnn_sw->conv_2_ctrl);
	pool(cnn_sw->conv_2_output, cnn_sw->pool_2_output, cnn_sw->pool_2_ctrl);
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
	printf("cnn sw took %llu clock cycles\n", 2 * (cnn_sw.tEnd - cnn_sw.tStart));
	printf("which are %.2f us.\n", 1.0 * (cnn_sw.tEnd - cnn_sw.tStart) / (COUNTS_PER_SECOND/1000000));
#else
	uint32_t sec = cnn_sw->tEnd.tv_sec - cnn_sw->tStart.tv_sec;
	uint32_t nsec = cnn_sw->tEnd.tv_nsec - cnn_sw->tStart.tv_nsec + (sec * 1000000000);
	printf("cnn took %u nsec\n", nsec);
#endif
	for (int i = 0; i < CNN_OUTPUT_ROWS; i++) {
		for (int j = 0; j < CNN_OUTPUT_ROWS; j++) {
			printf("%.6f  ", cnn_sw->output_data[i * CNN_OUTPUT_ROWS + j]);
		}
		printf("\n");
	}
	printf("---------------------------------------------------------------------\n\n");
}