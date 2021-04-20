/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#ifndef SRC_CNN_TASK_H_
#define SRC_CNN_TASK_H_

#include "cnn_config.h"
#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>

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

#define max(a, b) ((a) > (b) ? (a) : (b))

struct cnn_sim {
	int hit1_cnt;
	int hit2_cnt;
	int miss_cnt;
	float tot_cnn_time;
};

struct cnn_run {
	int idx;
	float input_data[CNN_INPUT_LEN];
	int cnn_guess_1;
	int cnn_guess_2;
	float timediff_us;
	bool hit1;
	bool hit2;
	cnn_time_t tStart;
	cnn_time_t tEnd;
};

FILE *index_file_open(int idx);
int csv_read(char *csv_path, float *buffer, int rows, int cols);
int next_csv_path_get(FILE *idx_fptr, char *path_buffer);
int cnn_prep_run(struct cnn_run *cnn_run, char *csv_data_path, int idx);
void capture_time(cnn_time_t *time_val);
void cnn_stat_run(struct cnn_run *cnn_run, bool verbose);
void print_csv_image(char *text, float *data);


#endif /* SRC_CNN_TASK_H_ */
