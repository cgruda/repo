/*
 * main.c
 *
 *  Created on: Mar 18, 2021
 *      Author: cgrud
 */

#include <stdio.h>
#include <xparameters.h>
#include "fixed_point.h"
#include "cnn_config.h"
#include "cnn_hw.h"
#include "stdbool.h"

enum user_choise {
	UC_EXIT,
	UC_RUN_HW
};

int get_user_option()
{
	int choise;
	printf("options:   \n" \
		   "0. exit    \n" \
		   "1. run hw  \n\n");
	scanf("%d", &choise);
	return choise;
}

int main()
{
	printf("\n\nwelcome!\n\n");

	bool exit = false;
	struct cnn_hw cnn_hw;
	struct cnn_config cnn_conf = {0};

	int status = XST_SUCCESS;

	status = cnn_hw_init(&cnn_hw);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	cnn_config_init(&cnn_conf);

	do {
		switch (get_user_option()) {
		case UC_EXIT:
			exit = true;
			break;

		case UC_RUN_HW:
			cnn_hw_set(&cnn_hw, &cnn_conf);
			cnn_hw_start(&cnn_hw);
			cnn_hw_wait(&cnn_hw);
			printf("cnn hw took %llu clock cycles\n", 2 * (cnn_hw.tEnd - cnn_hw.tStart));
			printf("which are %.2f us.\n", 1.0 * (cnn_hw.tEnd - cnn_hw.tStart) / (COUNTS_PER_SECOND/1000000));

			for (int i = 0; i < CNN_OUTPUT_ROWS; i++) {
				for (int j = 0; j < CNN_OUTPUT_ROWS; j++) {
					fixed_point_print(cnn_hw.p_dma_buffer_RX[i]);
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



