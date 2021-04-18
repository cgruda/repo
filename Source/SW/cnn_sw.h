/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#ifndef SRC_CNN_SW_H_
#define SRC_CNN_SW_H_

#include "cnn_config.h"
#include <stdint.h>
#if (PLATFORM == FPGA)
#include "xtime_l.h"
#else
#include <time.h>
#endif

struct cnn_sw {
#if (PLATFORM == FPGA)
	XTime tStart;
	XTime tEnd;
#else
	struct timespec tStart;
	struct timespec tEnd;
#endif
	uint32_t conv_0_ctrl;
	uint32_t pool_0_ctrl;
	uint32_t conv_1_ctrl;
	uint32_t pool_1_ctrl;
	uint32_t fc_0_ctrl;
	uint32_t fc_1_ctrl;
	float *input_data;
	float *conv_0_kernel;
	float *conv_1_kernel;
	float *fc_0_weight;
	float *fc_1_weight;
	float *fc_0_bias;
	float *fc_1_bias;
	float conv_0_output[CONV_0_OUTPUT_LEN];
	float pool_0_output[POOL_0_OUTPUT_LEN];
	float conv_1_output[CONV_1_OUTPUT_LEN];
	float pool_1_output[POOL_1_OUTPUT_LEN];
	float fc_0_output[FC_0_OUTPUT_LEN];
	float fc_1_output[FC_1_OUTPUT_LEN];
	float output_data[CNN_OUTPUT_LEN];
	int cnn_result;
	int cnn_second_result;
};

void pool(float *input, float *output, uint32_t ctrl);
void conv(float *input, float *kernel, float *output, uint32_t ctrl);
void fully_connected(float *input, float *weight, float *bias, float *output, uint32_t ctrl);
float softmax(float *input, float *output);
void cnn_sw_set(struct cnn_sw *cnn_sw, struct cnn_config *cnn_conf);
void cnn_sw_start(struct cnn_sw *cnn_sw);
void cnn_sw_exec(struct cnn_sw *cnn_sw, struct cnn_config *cnn_conf);

#endif /* SRC_CNN_SW_H_ */
