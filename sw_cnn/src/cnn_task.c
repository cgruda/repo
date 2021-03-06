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
#include "fixed_point.h"
#include <stdint.h>
#include <errno.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#if (PLATFORM == FPGA)
#include "xil_printf.h"
#include "xtime_l.h"
#include "ff.h"
#include "xdevcfg.h"
#else
#include <time.h>
#endif

#if (PLATFORM == FPGA)
static FATFS fatfs;
FIL g_idx_fptr;
#endif

FILEO *index_file_open(int idx)
{
	char index_path[CNN_SIM_DATA_INDEX_PATH_LEN] = {0};
	sprintf(index_path, "%s%d/%s", CNN_SIM_DATA_PATH, idx, CNN_SIM_DATA_INDEX);
#if (PLATFORM == PC)
	return fopen(index_path, "r");
#else
	int err = f_open(&g_idx_fptr, index_path, FA_OPEN_EXISTING | FA_READ);
	if(err) {
		PRINT_UI("opening \"%s\" failed! (fres=%d)\r\n", index_path, err);
		return NULL;
	}

	err = f_lseek(&g_idx_fptr, 0);
	if(err) {
		PRINT_UI("f_lseek returned %d!\r\n", err);
		return NULL;
	}
	return &g_idx_fptr;
#endif
}

#define GET_CSV_SUCCESS 0
#define LAST_CSV_OF_INDEX 1
#define GET_CSV_PATH_ERROR 2


int next_csv_path_get(FILEO *idx_fptr, char *path_buffer)
{
	memset(path_buffer, 0, CNN_SIM_DATA_FILE_PATH_MAX_LEN);
#if (PLATFORM == PC)
	if (!fgets(path_buffer, CNN_SIM_DATA_FILE_PATH_MAX_LEN, idx_fptr)) {
		if (feof(idx_fptr)) {
			return 0;
		}
		return -1;
	}
	path_buffer[strlen(path_buffer) - 1] = 0;
#else
	int err = 0;
	UINT br;
	char *p = path_buffer;
	int skip_chars = 29;
	while (1) {
		err = f_read(idx_fptr, (void*)p, 1, &br);
		if(err) {
			PRINT_UI("f_read returned %d!\r\n", err);
			return -1;
		}
		if (!br) {
			*p = 0;
			return 0;
		}
		if (*p == '\n') {
			*p = 0;
			break;
		}
		if (skip_chars) {
			skip_chars--;
		} else {
			p++;
		}
		if ((p - path_buffer) == CNN_SIM_DATA_FILE_PATH_MAX_LEN) {
			PRINT_UI("temp buffer overrun!\r\n", err);
			return -1;
		}
	}
#endif
	return 0;
}

int close_file(FILEO *fptr)
{
#if (PLATFORM == PC)
	fclose(fptr);
#else
	int err = f_close(fptr);
	if(err) {
		PRINT_UI("f_close returned %d\r\n", err);
		return -1;
	}
#endif
	return 0;
}

int csv_read(char *csv_path, float *buffer, int rows, int cols)
{
#if (PLATFORM == PC)
	FILE *fptr = fopen(csv_path, "r");
	if (!fptr) {
		PRINT_UI("opening \"%s\" failed! (errno=%d)\r\n", csv_path, errno);
		return errno;
	}

	int read_val;
	for (int i = 0; i < rows; i++) {
		for (int j = 0; j < cols; j++) {
			read_val = fscanf(fptr, "%g,", &buffer[i * cols + j]);
			if (!read_val) {
				PRINT_UI("read file error!\r\n");
				fclose(fptr);
				return -1;
			}
		}
	}

	fclose(fptr);
#else
	FIL fptr;
	FRESULT err;
	UINT br;
	char temp[TEMP_LEN] = {0};
	char *p;

	err = f_open(&fptr, csv_path, FA_OPEN_EXISTING | FA_READ);
	if(err) {
		PRINT_UI("opening \"%s\" failed! (fres=%d)\r\n", csv_path, err);
		return err;
	}

	err = f_lseek(&fptr, 0);
	if(err) {
		PRINT_UI("f_lseek returned %d!\r\n", err);
		return err;
	}

	for (int i = 0; i < rows; i++) {
		for (int j = 0; j < cols; j++) {
			memset(temp, 0, TEMP_LEN);
			p = temp;
			while (1) {
				err = f_read(&fptr, (void*)p, 1, &br);
				if(err) {
					PRINT_UI("f_read returned %d!\r\n", err);
					return -1;
				}
				if (*p == ',' || *p == '\n') {
					*p = 0;
					break;
				}
				p++;
				if ((p - temp) == TEMP_LEN) {
					PRINT_UI("temp buffer overrun!\r\n", err);
					return -1;
				}
			}
			sscanf(temp, "%g", &buffer[i * cols +j]);
		}
	}

	err = f_close(&fptr);
	if(err) {
		PRINT_UI("f_close returned %d\r\n", err);
		return -1;
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
	PRINT_UI("\r\n----------------------------------------------\r\n");
	PRINT_UI("%s\r\n", text);
	for (int i = 0; i < CNN_INPUT_ROWS; i++) {
		for (int j = 0; j < CNN_INPUT_COLS; j++) {
			if (data[i * CNN_INPUT_COLS + j]) {
				PRINT_UI("+");
			} else {
				PRINT_UI(" ");
			}
		}
		PRINT_UI("\r\n");
	}
	PRINT_UI("----------------------------------------------\r\n\r\n");
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
	PRINT_UI("choose option: \r\n");
	PRINT_UI("-------------- \r\n");
	PRINT_UI("%d. exit \r\n", UC_EXIT);
	PRINT_UI("%d. sw single \r\n", UC_RUN_SW_SINGLE);
	PRINT_UI("%d. sw all \r\n", UC_RUN_SW_ALL);
#if (PLATFORM == FPGA)
	PRINT_UI("%d. hw single \r\n", UC_RUN_HW_SINGLE);
	PRINT_UI("%d. hw all \r\n", UC_RUN_HW_ALL);
#else
	PRINT_UI("%d. hw sim single \r\n", UC_RUN_HW_SIM_SINGLE);
	PRINT_UI("%d. hw sim all \r\n", UC_RUN_HW_SIM_ALL);
#endif
	PRINT_UI("-------------- \r\n");
	scanf("%d", &choice);
	return choice;
}

int init(struct cnn_config *conf, struct cnn_hw *hw) // problem here
{
	int err = 0;

#if (PLATFORM == FPGA)
	err = cnn_hw_init(hw);
	if (err) {
		PRINT_UI("hw_init failed!\r\n");
		return -1;
	}

	err = f_mount(&fatfs, "", 0);
	if(err) {
		PRINT_UI("sd card mount failed\r\n");
		return -1;
	}
#endif

	err = cnn_config_set(conf);
	if (err) {
		PRINT_UI("conf_set failed!\r\n");
		return -1;
	}

	PRINT_UI("\r\nwelcome!\r\n");

	return 0;
}

void my_cleanup()
{
	PRINT_UI("\r\n\r\ngoodby!\r\n\r\n");
}

void cnn_run_print_result(struct cnn_run *cnn_run)
{
	if (!cnn_run->valid) {
		return;
	}

	float hit1_certainty_percent = cnn_run->hit1_certainty * 100;
	int hit1_certainty_percent_w = hit1_certainty_percent;
	int hit1_certainty_percent_f = (hit1_certainty_percent - hit1_certainty_percent_w) * 100;

	float hit2_certainty_percent = cnn_run->hit2_certainty * 100;
	int hit2_certainty_percent_w = hit2_certainty_percent;
	int hit2_certainty_percent_f = (hit2_certainty_percent - hit2_certainty_percent_w) * 100;

	float timediff_us = cnn_run->timediff_us;
	int timediff_us_w = timediff_us;
	int timediff_us_f = (timediff_us - timediff_us_w) * 100;

	PRINT_UI("index %d processed 1 image: \n\r"
			 "    hit1: %d, hit2: %d, miss: %d \n\r"
			 "    hit1 certainty: %d.%02d%%, hit2: %d.%02d%% \n\r"
			 "    time: %d.%02d us \n\r",
			  cnn_run->idx,
			  cnn_run->hit1, cnn_run->hit2, !cnn_run->hit1,
			  hit1_certainty_percent_w, hit1_certainty_percent_f,
			  hit2_certainty_percent_w, hit2_certainty_percent_f,
			  timediff_us_w, timediff_us_f);
}

void cnn_stat_print_idx(struct cnn_stat *cnn_stat)
{
	float acuuracy = (cnn_stat->hit1_cnt / (float)cnn_stat->img_cnt) * 100;
	int acuuracy_w = acuuracy;
	int acuuracy_f = (acuuracy - acuuracy_w) * 100;

	float acuuracy_with_hit2 = ((cnn_stat->hit1_cnt + cnn_stat->hit2_cnt) / (float)cnn_stat->img_cnt) * 100;
	int acuuracy_with_hit2_w = acuuracy_with_hit2;
	int acuuracy_with_hit2_f = (acuuracy_with_hit2 - acuuracy_with_hit2_w) * 100;

	float certainty_avg = (cnn_stat->accm_hit1_certainty / cnn_stat->hit1_cnt) * 100;
	int certainty_avg_w = certainty_avg;
	int certainty_avg_f = (certainty_avg - certainty_avg_w) * 100;

	float certainty_hit2_avg = (cnn_stat->accm_hit2_certainty / cnn_stat->hit2_cnt) * 100;
	int certainty_hit2_avg_w = certainty_hit2_avg;
	int certainty_hit2_avg_f = (certainty_hit2_avg - certainty_hit2_avg_w) * 100;

	float tot_time_ms = cnn_stat->accm_cnn_time_us / 1000;
	int tot_time_ms_w = tot_time_ms;
	int tot_time_ms_f = (tot_time_ms - tot_time_ms_w) * 100;

	float img_time_avg_us = cnn_stat->accm_cnn_time_us / cnn_stat->img_cnt;
	int img_time_avg_us_w = img_time_avg_us;
	int img_time_avg_us_f = (img_time_avg_us - img_time_avg_us_w) * 100;

	PRINT_UI("\r\n");
	PRINT_UI("index %d processed %d images: \n\r"
			 "    hit1: %d, hit2: %d, miss: %d \n\r"
			 "    accuracy: %d.%02d%%, with 2nd guess: %d.%02d%% \n\r"
			 "    hit1 certainty avg: %d.%02d%%, hit2: %d.%02d%% \n\r"
			 "    time: %d.%02d ms (avg %d.%02d us per image) \n\r\n\r",
			  cnn_stat->idx, cnn_stat->img_cnt,
			  cnn_stat->hit1_cnt, cnn_stat->hit2_cnt, cnn_stat->miss_cnt,
			  acuuracy_w, acuuracy_f, acuuracy_with_hit2_w, acuuracy_with_hit2_f,
			  certainty_avg_w, certainty_avg_f, certainty_hit2_avg_w, certainty_hit2_avg_f,
			  tot_time_ms_w, tot_time_ms_f, img_time_avg_us_w, img_time_avg_us_f);
}

void print_header(char *text)
{
	PRINT_UI("\n\r");
	PRINT_UI("--------------------------------------\n\r");
	PRINT_UI("          cnn %s run            \n\r", text);
	PRINT_UI("--------------------------------------\n\r");
}

void print_tail()
{
	PRINT_UI("--------------------------------------\n\r\n\r");
}

void print_float(float fnum)
{
	bool negative = fnum < 0;
	int w = fnum;
	int f = (fnum - w) * 100000;
	if (negative) {
		PRINT_UI("-%d.%05d  ", -w, -f);
	} else {
		PRINT_UI("%d.%05d  ", w, f);
	}
}

void print_fixed_arr(char *text, uint32_t *data)
{
	PRINT_UI("%s\r\n", text);
	for (int i = 0; i < CNN_OUTPUT_LEN; i++) {
		PRINT_UI("[%d] ", i);
		fixed_point_print(data[i]);
		PRINT_UI("\r\n");
	}
}

void print_float_arr(char *text, float *data)
{
	PRINT_UI("%s\r\n", text);
	for (int i = 0; i < CNN_OUTPUT_LEN; i++) {
		PRINT_UI("[%d] ", i);
		print_float(data[i]);
		PRINT_UI("\r\n");
	}
}

void cnn_run_all(void (*exec)(void*, struct cnn_run*, bool), void *cnn_obj, char *str)
{
	print_header(str);
	char csv_data_path[CNN_SIM_DATA_FILE_PATH_MAX_LEN];
	struct cnn_stat all_stat = {0};
	all_stat.idx = -1;
	struct cnn_run cnn_run = {0};

	for (int i = 0; i < 10; i++) {
		struct cnn_stat idx_stat = {0};
		idx_stat.idx = i;
		FILEO *idx_fptr = index_file_open(i);
		if (!idx_fptr) {
			PRINT_UI("failed to open index %d!\n\r", i);
			continue;
		}
		while (next_csv_path_get(idx_fptr, csv_data_path) == 0) {
			if (!(idx_stat.img_cnt % 38)) {
				PRINT_UI(".");
			}
			if (!*csv_data_path) {
				cnn_stat_print_idx(&idx_stat);
				cnn_stat(&all_stat, NULL, &idx_stat);
				break;
			}
			cnn_prep_run(&cnn_run, csv_data_path, i);
			(*exec)(cnn_obj, &cnn_run, false);
			cnn_stat(&idx_stat, &cnn_run, NULL);
		}
		close_file(idx_fptr);
	}
	PRINT_UI("+++++++++++ summary ++++++++++");
	cnn_stat_print_idx(&all_stat);
	print_tail();
}

void cnn_run_single(void (*exec)(void*, struct cnn_run*, bool), void *cnn_obj, char *str)
{
	print_header(str);
	struct cnn_run cnn_run = {0};
	cnn_prep_run(&cnn_run, DEFAULT_FILE_PATH, DEFAULT_IDX);
	(*exec)(cnn_obj, &cnn_run, true);
	cnn_run_print_result(&cnn_run);
	print_tail();
}