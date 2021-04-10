#include "cnn_sw.h"
#include "dbg.h"
#include "cnn_config.h"
#include <stdint.h>

#define max(a, b) ((a) > (b) ? (a) : (b))

int conv(float *input, float *kernel, float *output, uint32_t ctrl)
{
	DBG_LOG_PRINT(TRACE, "%s\n", __func__);
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
			case ACTIVATION_RELU:
				output[i * output_cols + j] = max(sum, 0);
				break;
			}
		}
	}
}

int pool(float *input, float *output, uint32_t ctrl)
{
	DBG_LOG_PRINT(TRACE, "%s\n", __func__);
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

int cnn_sw_set(struct cnn_sw *cnn_sw, struct cnn_config *cnn_conf)
{
	DBG_LOG_PRINT(TRACE, "%s\n", __func__);
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

int cnn_sw_start(struct cnn_sw *cnn_sw)
{
	DBG_LOG_PRINT(TRACE, "%s\n", __func__);
	// TODO: start time
	conv(cnn_sw->input_data, cnn_sw->conv_0_kernel, cnn_sw->conv_0_output, cnn_sw->conv_0_ctrl);
	pool(cnn_sw->conv_0_output, cnn_sw->pool_0_output, cnn_sw->pool_0_ctrl);
	conv(cnn_sw->pool_0_output, cnn_sw->conv_1_kernel, cnn_sw->conv_1_output, cnn_sw->conv_1_ctrl);
	pool(cnn_sw->conv_1_output, cnn_sw->pool_1_output, cnn_sw->pool_1_ctrl);
	conv(cnn_sw->pool_1_output, cnn_sw->conv_2_kernel, cnn_sw->conv_2_output, cnn_sw->conv_2_ctrl);
	pool(cnn_sw->conv_2_output, cnn_sw->pool_2_output, cnn_sw->pool_2_ctrl);
	// TODO: end time
}