/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#ifndef SRC_CNN_SIM_H_
#define SRC_CNN_SIM_H_

#include "cnn_config.h"
#include <stdint.h>
#include <stdio.h>
#if (PLATFORM == FPGA)
#include "xtime_l.h"
#else
#include <time.h>
#endif

#define PRODUCTION 0
#define OPERATIONAL 1
#define CNN_SIM_MODE PRODUCTION

#if (PLATFORM == PC)
#define CNN_SIM_PATH			"D:\\School\\Project\\new_repo\\Simulation\\"
#else
#define CNN_SIM_PATH			// TODO:
#endif
#define CNN_SIM_CNN_VALS_PATH		CNN_SIM_PATH "cnn_vals\\"
#define CNN_SIM_DATA_PATH		CNN_SIM_PATH "data\\"
#define CNN_SIM_DATA_INDEX		"index.txt"
#define CNN_SIM_DATA_INDEX_PATH_LEN 	62
#define CNN_SIM_DATA_FILE_PATH_MAX_LEN	65

#define CNN_SIM_CONV_0_KERNEL_VALS_PATH		CNN_SIM_CNN_VALS_PATH "conv0kernel.csv"
#define CNN_SIM_CONV_1_KERNEL_VALS_PATH		CNN_SIM_CNN_VALS_PATH "conv1kernel.csv"
#define CNN_SIM_FC_0_WEIGHT_VALS_PATH		CNN_SIM_CNN_VALS_PATH "fc0weight"
#define CNN_SIM_FC_0_BIAS_VALS_PATH		CNN_SIM_CNN_VALS_PATH "fc0bias"
#define CNN_SIM_FC_1_WEIGHT_VALS_PATH		CNN_SIM_CNN_VALS_PATH "fc1weight"
#define CNN_SIM_FC_1_BIAS_VALS_PATH		CNN_SIM_CNN_VALS_PATH "fc1bias"

struct cnn_sim {
	FILE *index_fptr;
	int hit_cnt;
	int hit_sec_cnt;
	int miss_cnt;
#if (PLATFORM == FPGA)
	XTime accm_cnn_time;
#else
	struct timespec accm_cnn_time;
#endif
};

int load_csv_data(char *csv_file_path, float *read_buffer, int rows, int cols);


#endif /* SRC_CNN_SIM_H_ */
