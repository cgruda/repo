/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#ifndef _CNN_HW_SIM_H_
#define _CNN_HW_SIM_H_

#include "cnn_config.h"
#include "cnn_task.h"
#include <stdint.h>
#include <stdbool.h>

struct cnn_hw_sim {
	uint32_t conv_0_ctrl;
	uint32_t pool_0_ctrl;
	uint32_t conv_1_ctrl;
	uint32_t pool_1_ctrl;
	uint32_t fc_0_ctrl;
	uint32_t fc_1_ctrl;
	uint32_t input_data[CNN_INPUT_LEN];
	uint32_t conv_0_kernel[CONV_0_KERNEL_LEN];
	uint32_t conv_1_kernel[CONV_1_KERNEL_LEN];
	uint32_t fc_0_weight[FC_0_WEIGHT_LEN];
	uint32_t fc_1_weight[FC_1_WEIGHT_LEN];
	uint32_t fc_0_bias[FC_0_BIAS_LEN];
	uint32_t fc_1_bias[FC_1_BIAS_LEN];
	uint32_t conv_0_output[CONV_0_OUTPUT_LEN];
	uint32_t pool_0_output[POOL_0_OUTPUT_LEN];
	uint32_t conv_1_output[CONV_1_OUTPUT_LEN];
	uint32_t pool_1_output[POOL_1_OUTPUT_LEN];
	uint32_t fc_0_output[FC_0_OUTPUT_LEN];
	uint32_t fc_1_output[FC_1_OUTPUT_LEN];
	float output_data[CNN_OUTPUT_LEN];
};

void cnn_hw_sim_set(struct cnn_hw_sim *cnn_hw, struct cnn_config *cnn_conf);
void cnn_hw_sim_exec(void *cnn_obj, struct cnn_run *cnn_run, bool verbose);

#endif // _CNN_HW_SIM_H_
