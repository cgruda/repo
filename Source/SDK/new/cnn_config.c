/*
 * cnn_config.c
 *
 *  Created on: Apr 9, 2021
 *      Author: cgrud
 */

#include "cnn_config.h"
#include "fixed_point.h"

void cnn_config_init(struct cnn_config *cnn_conf)
{
	for (int i = 0; i < CNN_INPUT_ROWS; i++) {
		for (int j = 0; j < CNN_INPUT_COLS; j++) {
			cnn_conf->input_data[i][j] = FLOAT_2_FIXED(0.25);
		}
	}
	for (int i = 0; i < CONV_0_KERNEL_LEN; i++) {
		cnn_conf->conv_0_kernel[i] = FLOAT_2_FIXED(1);
	}
	for (int i = 0; i < CONV_1_KERNEL_LEN; i++) {
		cnn_conf->conv_1_kernel[i] = FLOAT_2_FIXED(1);
	}
	for (int i = 0; i < CONV_2_KERNEL_LEN; i++) {
		cnn_conf->conv_2_kernel[i] = FLOAT_2_FIXED(1);
	}
	cnn_conf->conv_0_ctrl = CONV_0_ACTIVATION;
	cnn_conf->pool_0_ctrl = POOL_0_TYPE;
	cnn_conf->conv_1_ctrl = CONV_1_ACTIVATION;
	cnn_conf->pool_1_ctrl = POOL_1_TYPE;
	cnn_conf->conv_2_ctrl = CONV_2_ACTIVATION;
	cnn_conf->pool_2_ctrl = POOL_2_TYPE;
}
