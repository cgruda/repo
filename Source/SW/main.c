/*
 * main.c
 *
 *  Created on: Mar 18, 2021
 *      Author: cgrud
 */

#include <stdio.h>
#include "fixed_point.h"
#include "cnn_config.h"
#include <stdint.h>
#include "stdbool.h"
#include "cnn_sw.h"
#include "dbg.h"

enum user_choise {
	UC_EXIT,
	UC_RUN_SW,
	UC_RUN_HW
};

int get_user_option()
{
	int choise;
	printf("options:       \n" \
		   "0. exit    \n" \
		   "1. run sw  \n"
		   "2. run hw  \n\n");
	scanf("%d", &choise);
	return choise;
}

int main()
{
	printf("\n\nwelcome!\n\n");

	bool exit = false;
	struct cnn_config cnn_conf = {0};
	struct cnn_sw cnn_sw = {0};

	cnn_config_init(&cnn_conf);
	cnn_config_print(&cnn_conf);

	do {
		switch (get_user_option()) {
		case UC_EXIT:
			exit = true;
			break;
		case UC_RUN_SW:
			cnn_sw_set(&cnn_sw, &cnn_conf);
			cnn_sw_start(&cnn_sw);
			for (int i = 0; i < CNN_OUTPUT_ROWS; i++) {
				for (int j = 0; j < CNN_OUTPUT_ROWS; j++) {
					printf("%.6f  ", cnn_sw.output_data[i * CNN_OUTPUT_ROWS + j]);
				}
				printf("\n");
			}
			break;
		default:
			printf("action not supported\n\n");
			break;
		}

	} while (!exit);

	printf("goodby!\n\n");

	return 0;
}



