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
#include "cnn_task.h"
#include "fixed_point.h"
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#if (PLATFORM == FPGA)
#include <xparameters.h>
#endif

enum user_choise {
	UC_EXIT,
	UC_RUN_HW_SINGLE,
	UC_RUN_SW_SINGLE,
	UC_HW_VS_SW_SINGLE,
	UC_RUN_HW_ALL,
	UC_RUN_SW_ALL,
	UC_HW_VS_SW_ALL
};

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

int main()
{
	int err = 0;
	bool exit = false;
	struct cnn_hw cnn_hw = {0};
	struct cnn_sw cnn_sw = {0};
	struct cnn_config cnn_conf = {0};

	printf("\nwelcome!\n");

	err = cnn_config_set(&cnn_conf);
	if (err) {
		return -1;
	}
	cnn_sw_set(&cnn_sw, &cnn_conf);


#if (CONFIG_TRACE)
	cnn_config_print(&cnn_conf);
#endif

#if (PLATFORM == FPGA)
	int status = cnn_hw_init(&cnn_hw);
	if (status != XST_SUCCESS)
		return XST_FAILURE;
#endif

	do {
		switch (get_user_choice()) {
		case UC_EXIT:
			exit = true;
			break;

		case UC_RUN_HW_SINGLE:
			cnn_hw_exec(&cnn_hw, &cnn_conf);
			break;

		case UC_RUN_SW_SINGLE:
			cnn_sw_run_single(&cnn_sw);
			break;

		case UC_HW_VS_SW_SINGLE:
			break;

		case UC_RUN_HW_ALL:
			break;

		case UC_RUN_SW_ALL:
			cnn_sw_run_all(&cnn_sw);
			break;

		case UC_HW_VS_SW_ALL:
			break;

		default:
			printf("invalid option!\n\n");
			break;
		}

	} while (!exit);

	printf("\n\ngoodby!\n\n");

	return 0;
}



