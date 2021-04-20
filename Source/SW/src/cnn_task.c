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

int cnn_prep_run(struct cnn_run *cnn_run, char *csv_data_path, int idx)
{
	int err = 0;
	memset(cnn_run, 0, sizeof(*cnn_run));
	cnn_run->idx = idx;
#ifdef PRODUCTION
	for (int i = 0; i < CNN_INPUT_LEN; i++) {
		cnn_run->input_data[i] = 0.25;
	}
#else
	err = csv_read(csv_data_path, cnn_run->input_data, CNN_INPUT_ROWS, CNN_INPUT_COLS);
#endif
	return err;
}

void capture_time(cnn_time_t *time_val)
{
#if (PLATFORM == FPGA)
	XTime_GetTime(time_val);
#else
	timespec_get(time_val, TIME_UTC);
#endif
}

void cnn_stat_run(struct cnn_run *cnn_run, bool verbose)
{
#if (PLATFORM == FPGA)
	XTime timediff = cnn_run->tEnd - cnn_run->tStart;
	cnn_run->timediff_us = 1.0 * timediff / (COUNTS_PER_SECOND / 1000000);
#else
	uint32_t sec = cnn_run->tEnd.tv_sec - cnn_run->tStart.tv_sec;
	uint32_t nsec = cnn_run->tEnd.tv_nsec - cnn_run->tStart.tv_nsec + (sec * 1000000000);
	cnn_run->timediff_us = (nsec / 1000.0);
#endif
	cnn_run->hit1 = cnn_run->idx == cnn_run->cnn_guess_1;
	cnn_run->hit2 = cnn_run->idx == cnn_run->cnn_guess_2;

	if (verbose) {
		printf("cnn took %.2f us\n", cnn_run->timediff_us);
		printf("1st guess = %d (%s)\n", cnn_run->cnn_guess_1, cnn_run->hit1 ? "hit" : "miss");
		printf("2nd guess = %d (%s)\n", cnn_run->cnn_guess_2, cnn_run->hit1 ? "N/A" : (cnn_run->hit2 ? "hit" : "miss"));
	}
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