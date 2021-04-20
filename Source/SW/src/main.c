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
	printf("choose option:    \n" \
	       "--------------    \n" \
	       "0. exit           \n" \
	       "1. run hw single  \n" \
	       "2. run sw single  \n" \
	       "3. hw vs sw single\n" \
	       "4. run hw all     \n" \
	       "5. run sw all     \n" \
	       "6. hw vs sw all   \n" \
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
	struct cnn_run cnn_run = {0};
	struct cnn_config cnn_conf = {0};

	printf("\nwelcome!\n");

	err = cnn_config_set(&cnn_conf);
	if (err) {
		return -1;
	}
	cnn_sw_set(&cnn_sw, &cnn_conf);

	char csv_data_path[CNN_SIM_DATA_FILE_PATH_MAX_LEN];

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
			err = cnn_prep_run(&cnn_run, DEFAULT_FILE_PATH, DEFAULT_IDX);
			if (err) {
				break;
			}
			cnn_sw_exec(&cnn_sw, &cnn_run, true);
			break;

		case UC_HW_VS_SW_SINGLE:
			printf("action not supported yet!\n\n");
			break;

		case UC_RUN_HW_ALL:
			printf("action not supported!\n\n");
			break;

		case UC_RUN_SW_ALL:
			printf("sw run all\n");
			int img_cnt = 0;
			int tot_images = 0;
			struct cnn_sim cnn_sim_all = {0};
			struct cnn_sim cnn_sim_idx = {0};
			for (int i = 0; i < 10; i++) {
				FILE *idx_fptr = index_file_open(i);
				if (!idx_fptr) {
					printf("failed to open index %d!\n", i);
					continue;
				}
				while (next_csv_path_get(idx_fptr, csv_data_path) == 0) {
					if (!*csv_data_path) {
						printf("index %d processed %d images: hit1 %d, hit2 %d, miss %d (accuracy = %.2f%%), time %.2f ms (avg %.2f us per image).\n", i, img_cnt,
							cnn_sim_idx.hit1_cnt, cnn_sim_idx.hit2_cnt, cnn_sim_idx.miss_cnt, ((cnn_sim_idx.hit1_cnt / (float)img_cnt) * 100),
							(cnn_sim_idx.tot_cnn_time / 1000), (cnn_sim_idx.tot_cnn_time / (float)img_cnt) );
						tot_images += img_cnt;
						cnn_sim_all.hit1_cnt += cnn_sim_idx.hit1_cnt;
						cnn_sim_all.hit2_cnt += cnn_sim_idx.hit2_cnt;
						cnn_sim_all.miss_cnt += cnn_sim_idx.miss_cnt;
						cnn_sim_all.tot_cnn_time += cnn_sim_idx.tot_cnn_time;
						memset(&cnn_sim_idx, 0, sizeof(cnn_sim_idx));
						img_cnt = 0;
						break;
					}
					img_cnt++;
					err = cnn_prep_run(&cnn_run, csv_data_path, i);
					if (err) {
						printf("run_prep failed!");
						continue;
					}
					cnn_sw_exec(&cnn_sw, &cnn_run, false);
					cnn_sim_idx.hit1_cnt += cnn_run.hit1;
					cnn_sim_idx.hit2_cnt += cnn_run.hit2;
					cnn_sim_idx.miss_cnt += !cnn_run.hit1;
					cnn_sim_idx.tot_cnn_time += cnn_run.timediff_us;
				}
				fclose(idx_fptr);
			}
			printf("total of %d images processed by cnn: hit1 %d, hit2 %d, miss %d (accuracy = %.2f%%), time %.2f sec (avg %.2f ms per index, avg %.2f us per image).\n", tot_images,
					cnn_sim_all.hit1_cnt, cnn_sim_all.hit2_cnt, cnn_sim_all.miss_cnt, ((cnn_sim_all.hit1_cnt / (float)tot_images) * 100),
					(cnn_sim_all.tot_cnn_time / 1000000), ((cnn_sim_all.tot_cnn_time / 1000) / 10.0), (cnn_sim_all.tot_cnn_time / tot_images));
			break;

		case UC_HW_VS_SW_ALL:
			printf("action not supported yet!\n\n");
			break;

		default:
			printf("invalid option!\n\n");
			break;
		}

	} while (!exit);

	printf("\n\ngoodby!\n\n");

	return 0;
}



