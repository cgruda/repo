/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#include "cnn_config.h"
#include "cnn_task.h"
#include "cnn_hw.h"
#include "cnn_sw.h"
#include <stdint.h>
#include <stdio.h>
#include <errno.h>
#include <stdlib.h>
#include <string.h>
#if (PLATFORM == FPGA)
#include "xtime_l.h"
#else
#include <time.h>
#endif

FILE *index_file_open(int idx)
{
	char index_path[CNN_SIM_DATA_INDEX_PATH_LEN] = {0};
	sprintf(index_path, "%s%d/%s", CNN_SIM_DATA_PATH, idx, CNN_SIM_DATA_INDEX);
	return fopen(index_path, "r");
}

int next_csv_path_get(FILE *idx_fptr, char *path_buffer)
{
	memset(path_buffer, 0, CNN_SIM_DATA_FILE_PATH_MAX_LEN);
	if (!fgets(path_buffer, CNN_SIM_DATA_FILE_PATH_MAX_LEN, idx_fptr)) {
		if (feof(idx_fptr)) {
			return 0;
		}
		return -1;
	}
	path_buffer[strlen(path_buffer) - 1] = 0;
	return 0;
}

int csv_read(char *csv_path, float *buffer, int rows, int cols)
{
#if (PLATFORM == PC)
	FILE *fptr = fopen(csv_path, "r");
	if (!fptr) {
		printf("opening file \"%s\" failed! (errno=%d)\n", csv_path, errno);
		return errno;
	}

	int read_val;
	for (int i = 0; i < rows; i++) {
		for (int j = 0; j < cols; j++) {
			read_val = fscanf(fptr, "%g,", &buffer[i * cols + j]);
			if (!read_val) {
				printf("read file error!\n");
				fclose(fptr);
				return -1;
			}
		}
	}

	fclose(fptr);
#else
	for (int i = 0; i < rows * cols; i++) {
		buffer[i] = 1;
	}
#endif
	return 0;
}

void cnn_run_reset(struct cnn_run *cnn_run)
{
	memset(cnn_run, 0, sizeof(*cnn_run));
	for (int i = 0; i < CNN_INPUT_LEN; i++) {
		cnn_run->input_data[i] = 0;
	}
	cnn_run->hit1_certainty = 0;
	cnn_run->hit2_certainty = 0;
	cnn_run->timediff_us = 0;
}

void cnn_prep_run(struct cnn_run *cnn_run, char *csv_data_path, int idx)
{
	uint err = 0;
	cnn_run_reset(cnn_run);
	cnn_run->valid = true;
	cnn_run->idx = idx;
#ifdef PRODUCTION
	for (int i = 0; i < CNN_INPUT_LEN; i++) {
		cnn_run->input_data[i] = 0.25;
	}
#else
	err = csv_read(csv_data_path, cnn_run->input_data, CNN_INPUT_ROWS, CNN_INPUT_COLS);
#endif
	if (err) {
		cnn_run->valid = false;
	}
}

void capture_time(cnn_time_t *time_val)
{
#if (PLATFORM == FPGA)
	XTime_GetTime(time_val);
#else
	timespec_get(time_val, TIME_UTC);
#endif
}

void print_csv_image(char *text, float *data)
{
	printf("\n----------------------------------------------\n");
	printf("%s\n", text);
	for (int i = 0; i < CNN_INPUT_ROWS; i++) {
		for (int j = 0; j < CNN_INPUT_COLS; j++) {
			if (data[i * CNN_INPUT_COLS + j]) {
				printf("+");
			} else {
				printf(" ");
			}
		}
		printf("\n");
	}
	printf("----------------------------------------------\n\n");
}

void cnn_result(float *cnn_output_data, struct cnn_run *cnn_run)
{
	float guess1_certainty = cnn_output_data[0];
	float guess2_certainty = 0;
	int guess1 = 0;
	int guess2;

	for (int i = 1; i < CNN_OUTPUT_LEN; i++) {
		if (cnn_output_data[i] > guess1_certainty) {
			guess2_certainty = guess1_certainty;
			guess2 = guess1;
			guess1_certainty = cnn_output_data[i];
			guess1 = i;
		} else if (cnn_output_data[i] > guess2_certainty) {
			guess2_certainty = cnn_output_data[i];
			guess2 = i;
		}
	}

	cnn_run->hit1 = cnn_run->idx == guess1;
	cnn_run->hit2 = cnn_run->idx == guess2;

	if (cnn_run->hit1)
		cnn_run->hit1_certainty = guess1_certainty;
	if (cnn_run->hit2)
		cnn_run->hit2_certainty = guess2_certainty;

#if (PLATFORM == FPGA)
	XTime timediff = cnn_run->tEnd - cnn_run->tStart;
	cnn_run->timediff_us = 1.0 * timediff / (COUNTS_PER_SECOND / 1000000);
#else
	uint32_t sec = cnn_run->tEnd.tv_sec - cnn_run->tStart.tv_sec;
	uint32_t nsec = cnn_run->tEnd.tv_nsec - cnn_run->tStart.tv_nsec + sec2nsec(sec);
	cnn_run->timediff_us = nsec2usec(nsec);
#endif
}

void cnn_stat(struct cnn_stat *cnn_stat, struct cnn_run *cnn_run, struct cnn_stat *cnn_stat_add)
{
	if (cnn_run && cnn_stat_add)
		return;

	if (cnn_run) {
		cnn_stat->img_cnt++;
		cnn_stat->hit1_cnt += cnn_run->hit1;
		cnn_stat->hit2_cnt += cnn_run->hit2;
		cnn_stat->miss_cnt += !cnn_run->hit1;
		cnn_stat->accm_hit1_certainty += cnn_run->hit1_certainty;
		cnn_stat->accm_hit2_certainty += cnn_run->hit2_certainty;
		cnn_stat->accm_cnn_time_us += cnn_run->timediff_us;
	}

	if (cnn_stat_add) {
		cnn_stat->img_cnt += cnn_stat_add->img_cnt;
		cnn_stat->hit1_cnt += cnn_stat_add->hit1_cnt;
		cnn_stat->hit2_cnt += cnn_stat_add->hit2_cnt;
		cnn_stat->miss_cnt += cnn_stat_add->miss_cnt;
		cnn_stat->accm_hit1_certainty += cnn_stat_add->accm_hit1_certainty;
		cnn_stat->accm_hit2_certainty += cnn_stat_add->accm_hit2_certainty;
		cnn_stat->accm_cnn_time_us += cnn_stat_add->accm_cnn_time_us;
	}
}

int get_user_choice()
{
	int choice;
	printf("choose option: \n" \
	       "-------------- \n" \
	       "0. exit \n" \
	       "1. run hw single \n" \
	       "2. run sw single \n" \
	       "3. hw vs sw single \n" \
	       "4. run hw all \n" \
	       "5. run sw all \n" \
	       "6. hw vs sw all \n" \
	       "--------------\n");
	scanf("%d", &choice);
	return choice;
}

int init(struct cnn_config *conf, struct cnn_hw *hw)
{
	int err = 0;

	err = cnn_config_set(conf);
	if (err) {
		printf("conf_set failed!");
		return -1;
	}
#if (PLATFORM == FPGA)
	err = cnn_hw_init(hw);
	if (err) {
		printf("hw_init failed!");
		return -1;
	}
#endif
	printf("\nwelcome!\n");

	return 0;
}

void cleanup()
{
	printf("\n\ngoodby!\n\n");
}