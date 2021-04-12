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

void pool(float *input, float *output, uint32_t ctrl);
void conv(float *input, float *kernel, float *output, uint32_t ctrl);
void cnn_sw_set(struct cnn_sw *cnn_sw, struct cnn_config *cnn_conf);
void cnn_sw_start(struct cnn_sw *cnn_sw);
void cnn_sw_exec(struct cnn_sw *cnn_sw, struct cnn_config *cnn_conf);


#endif /* SRC_CNN_SW_H_ */
