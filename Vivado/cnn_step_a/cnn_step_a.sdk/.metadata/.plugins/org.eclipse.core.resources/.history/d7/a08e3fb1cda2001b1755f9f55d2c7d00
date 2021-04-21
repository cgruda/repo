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
#include <stdio.h>
#include <stdbool.h>

int main()
{
	struct cnn_config cnn_conf = {0};
	struct cnn_hw cnn_hw = {0};
	struct cnn_sw cnn_sw = {0};
	bool exit = false;

	if (init(&cnn_conf, &cnn_hw) < 0) {
		return -1;
	}

	cnn_hw_set(&cnn_hw, &cnn_conf);
	cnn_sw_set(&cnn_sw, &cnn_conf);

	do {
		switch (get_user_choice()) {
		case UC_EXIT:
			exit = true;
			break;

		case UC_RUN_HW_SINGLE:
			cnn_hw_run_single(&cnn_hw);
			break;

		case UC_RUN_SW_SINGLE:
			cnn_sw_run_single(&cnn_sw);
			break;

		case UC_RUN_HW_ALL:
			cnn_hw_run_all(&cnn_hw);
			break;

		case UC_RUN_SW_ALL:
			cnn_sw_run_all(&cnn_sw);
			break;

		default:
			printf("invalid option!\n\n");
			break;
		}

	} while (!exit);

	cleanup();

	return 0;
}



