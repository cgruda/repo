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

#if (PLATFORM == PC)
#define CNN_SIM_PATH			"/home/cgruda/repo/Simulation/"
#else
#define CNN_SIM_PATH			// TODO:
#endif
#define CNN_SIM_CNN_VALS_PATH		CNN_SIM_PATH "cnn_vals/"
#define CNN_SIM_DATA_PATH		CNN_SIM_PATH "data/"
#define CNN_SIM_DATA_INDEX		"index.txt"
#define CNN_SIM_DATA_INDEX_PATH_LEN 	63
#define CNN_SIM_DATA_FILE_PATH_MAX_LEN	66

#define CNN_SIM_CONV_0_KERNEL_VALS_PATH		CNN_SIM_CNN_VALS_PATH "conv0kernel.csv"
#define CNN_SIM_CONV_1_KERNEL_VALS_PATH		CNN_SIM_CNN_VALS_PATH "conv1kernel.csv"
#define CNN_SIM_FC_0_WEIGHT_VALS_PATH		CNN_SIM_CNN_VALS_PATH "fc0weight.csv"
#define CNN_SIM_FC_0_BIAS_VALS_PATH		CNN_SIM_CNN_VALS_PATH "fc0bias.csv"
#define CNN_SIM_FC_1_WEIGHT_VALS_PATH		CNN_SIM_CNN_VALS_PATH "fc1weight.csv"
#define CNN_SIM_FC_1_BIAS_VALS_PATH		CNN_SIM_CNN_VALS_PATH "fc1bias.csv"

#define DEFAULT_FILE_PATH			CNN_SIM_DATA_PATH "0/img10.csv"
#define DEFAULT_IDX				0

struct cnn_sim {
	int hit1_cnt;
	int hit2_cnt;
	int miss_cnt;
	float tot_cnn_time;
};

int load_csv_data(char *csv_file_path, float *read_buffer, int rows, int cols);
FILE *sim_open_data_index(int idx);
int get_next_data_file_path(FILE *idx_fptr, char *path_buffer);


#endif /* SRC_CNN_SIM_H_ */
