/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#include "cnn_config.h"
#include "cnn_hw.h"
#include "cnn_sw.h"
#include "cnn_sim.h"
#include "fixed_point.h"
#include <stdio.h>
#include <stdbool.h>
#if (PLATFORM == FPGA)
#include <xparameters.h>
#endif

enum user_choise {
	UC_EXIT,
	UC_RUN_HW,
	UC_RUN_SW
};

int get_user_option()
{
	int choise;
	printf("choose option:\n" \
	       "--------------\n" \
	       "0. exit       \n" \
	       "1. run hw     \n" \
	       "2. run sw     \n" \
	       "--------------\n");
	scanf("%d", &choise);
	return choise;
}

int main()
{
	printf("\nwelcome!\n");

	bool exit = false;
	struct cnn_hw cnn_hw = {0};
	struct cnn_sw cnn_sw = {0};
	struct cnn_sim cnn_sim = {0};
	struct cnn_config cnn_conf = {0};

	if (cnn_config_init(&cnn_conf)) {
		printf("cnn_config error!");
		return -1;
	}
	if (sim_open_data_index(&cnn_sim, 0)) {
		return -1;
	}

	cnn_config_print(&cnn_conf);

#if (PLATFORM == FPGA)
	int status = cnn_hw_init(&cnn_hw);
	if (status != XST_SUCCESS)
		return XST_FAILURE;
#endif

	do {
		switch (get_user_option()) {
		case UC_EXIT:
			exit = true;
			break;

		case UC_RUN_HW:
			cnn_hw_exec(&cnn_hw, &cnn_conf);
			break;

		case UC_RUN_SW:
			cnn_sw_exec(&cnn_sw, &cnn_conf, &cnn_sim);
			break;

		default:
			printf("action not supported\n\n");
			break;
		}

	} while (!exit);

	printf("\n\ngoodby!\n\n");

	return 0;
}



