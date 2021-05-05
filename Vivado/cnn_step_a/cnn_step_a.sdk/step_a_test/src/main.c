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
#if (PLATFORM == PC)
#include "cnn_hw_sim.h"
#endif
#include "cnn_sw.h"
#if (PLATFORM == FPGA)
#include "xil_printf.h"
#else
#include <stdio.h>
#endif
#include <stdbool.h>

int main()
{
	struct cnn_config cnn_conf = {0};
	struct cnn_sw cnn_sw = {0};
	struct cnn_hw cnn_hw = {0};
#if (PLATFORM == PC)
	struct cnn_hw_sim cnn_hw_sim = {0};
#endif
	bool exit = false;

	if (init(&cnn_conf, &cnn_hw) < 0) {
		return -1;
	}

	cnn_sw_set(&cnn_sw, &cnn_conf);
#if (PLATFORM == FPGA)
	cnn_hw_set(&cnn_hw, &cnn_conf);
#else
	cnn_hw_sim_set(&cnn_hw_sim, &cnn_conf);
#endif

	do {
		switch (get_user_choice()) {
		case UC_EXIT:
			exit = true;
			break;

		case UC_RUN_SW_SINGLE:
			cnn_run_single(cnn_sw_exec, &cnn_sw, "software");
			break;

		case UC_RUN_SW_ALL:
			cnn_run_all(cnn_sw_exec, &cnn_sw, "software");
			break;
#if (PLATFORM == FPGA)
		case UC_RUN_HW_SINGLE:
			cnn_run_single(cnn_hw_exec, &cnn_hw, "hardware");
			break;

		case UC_RUN_HW_ALL:
			cnn_run_all(cnn_hw_exec, &cnn_hw, "hardware");
			break;
#else
		case UC_RUN_HW_SIM_SINGLE:
			cnn_run_single(cnn_hw_sim_exec, &cnn_hw_sim, "hardware sim");
			break;

		case UC_RUN_HW_SIM_ALL:
			cnn_run_all(cnn_hw_sim_exec, &cnn_hw_sim, "hardware sim");
			break;
#endif
		default:
			PRINT_UI("invalid option!\r\n\r\n");
			break;
		}

	} while (!exit);

	my_cleanup();

	return 0;
}



