/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#ifndef _CNN_TASK_H_
#define _CNN_TASK_H_

#include "cnn_config.h"
#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>
#if (PLATFORM == FPGA)
#include "ff.h"
#endif

#if (PLATFORM == PC)
#define CNN_SIM_PATH "/home/cgruda/repo/simulation/"
#else
#define TEMP_LEN 40
#define CNN_SIM_PATH
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

#define DEFAULT_FILE_PATH	CNN_SIM_DATA_PATH "0/img10.csv"
#define DEFAULT_IDX		0

#define max(a, b) ((a) > (b) ? (a) : (b))
#define sec2nsec(sec) ((sec) * 1000000000)
#define nsec2usec(nsec) ((nsec) / 1000.0)

#if (PLATFORM == FPGA)
#define PRINT_UI xil_printf
typedef FIL FILEO;
extern FIL g_idx_fptr;
#else
#define PRINT_UI printf
typedef FILE FILEO;
#endif

enum user_choise {
	UC_EXIT,
	UC_RUN_SW_SINGLE,
	UC_RUN_SW_ALL,
#if (PLATFORM == FPGA)
	UC_RUN_HW_SINGLE,
	UC_RUN_HW_ALL,
#else
	UC_RUN_HW_SIM_SINGLE,
	UC_RUN_HW_SIM_ALL
#endif
};

struct cnn_run {
	bool valid;
	int idx;
	float input_data[CNN_INPUT_LEN];
	bool hit1;
	bool hit2;
	float hit1_certainty;
	float hit2_certainty;
	cnn_time_t tStart;
	cnn_time_t tEnd;
	float timediff_us;
};

struct cnn_stat {
	int idx;
	int img_cnt;
	int hit1_cnt;
	int hit2_cnt;
	int miss_cnt;
	float accm_cnn_time_us;
	float accm_hit1_certainty;
	double accm_hit2_certainty;
};

struct cnn_hw;

FILEO *index_file_open(int idx);
int csv_read(char *csv_path, float *buffer, int rows, int cols);
int next_csv_path_get(FILEO *idx_fptr, char *path_buffer);
void cnn_prep_run(struct cnn_run *cnn_run, char *csv_data_path, int idx);
void capture_time(cnn_time_t *time_val);
void print_csv_image(char *text, float *data);
void cnn_result(float *cnn_output_data, struct cnn_run *cnn_run);
void cnn_stat(struct cnn_stat *cnn_stat, struct cnn_run *cnn_run, struct cnn_stat *cnn_stat_add);
int init(struct cnn_config *conf, struct cnn_hw *hw);
void my_cleanup();
int get_user_choice();
void cnn_run_print_result(struct cnn_run *cnn_run);
void cnn_stat_print_idx(struct cnn_stat *cnn_stat);
void print_header(char *text);
void print_tail();
void print_fixed_arr(char *text, uint32_t *data);
void print_float_arr(char *text, float *data);
int close_file(FILEO *fptr);
void print_float(float fnum);
void cnn_run_single(void (*exec)(void*, struct cnn_run*, bool), void *cnn_obj, char *str);
void cnn_run_all(void (*exec)(void*, struct cnn_run*, bool), void *cnn_obj, char *str);

#endif // _CNN_TASK_H_
