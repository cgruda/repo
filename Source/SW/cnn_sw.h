#include <stdint.h>
#include "cnn_config.h"

struct cnn_sw {
	//XTime tStart;
	//XTime tEnd;
	uint32_t conv_0_ctrl;
	uint32_t pool_0_ctrl;
	uint32_t conv_1_ctrl;
	uint32_t pool_1_ctrl;
	uint32_t conv_2_ctrl;
	uint32_t pool_2_ctrl;
	float *input_data;
	float *conv_0_kernel;
	float *conv_1_kernel;
	float *conv_2_kernel;
	float conv_0_output[CONV_0_OUTPUT_LEN];
	float pool_0_output[POOL_0_OUTPUT_LEN];
	float conv_1_output[CONV_1_OUTPUT_LEN];
	float pool_1_output[POOL_1_OUTPUT_LEN];
	float conv_2_output[CONV_2_OUTPUT_LEN];
	float pool_2_output[POOL_2_OUTPUT_LEN];
	float *output_data;
};

int pool(float *input, float *output, uint32_t ctrl);
int conv(float *input, float *kernel, float *output, uint32_t ctrl);
int cnn_sw_set(struct cnn_sw *cnn_sw, struct cnn_config *cnn_conf);
int cnn_sw_start(struct cnn_sw *cnn_sw);