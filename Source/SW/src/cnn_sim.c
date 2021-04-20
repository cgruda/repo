/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#include "cnn_config.h"
#include "cnn_sim.h"
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

FILE *sim_open_data_index(int idx)
{
	char index_path[CNN_SIM_DATA_INDEX_PATH_LEN] = {0};
	sprintf(index_path, "%s%d/%s", CNN_SIM_DATA_PATH, idx, CNN_SIM_DATA_INDEX);
	return fopen(index_path, "r"); // FIXME: close me
}

int get_next_data_file_path(FILE *idx_fptr, char *path_buffer)
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

int load_csv_data(char *csv_file_path, float *read_buffer, int rows, int cols)
{
#if (PLATFORM == PC)
	FILE *fptr = fopen(csv_file_path, "r");
	if (!fptr) {
		printf("opening file \"%s\" failed! (errno=%d)\n", csv_file_path, errno);
		return errno;
	}

	int read_val;
	for (int i = 0; i < rows; i++) {
		for (int j = 0; j < cols; j++) {
			read_val = fscanf(fptr, "%g,", &read_buffer[i * cols + j]);
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
		read_buffer[i] = 1;
	}
#endif
	return 0;
}