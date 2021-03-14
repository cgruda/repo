/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

/*
 * INCLUDES
 ******************************************************************************
 */

#include "main.h"
#include "cnn.h"
#include "tasks.h"
#include "matrix.h"

#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

/*
 * DEFINES
 ******************************************************************************
 */

// NOTE: must match HW

// input image

/*
 * FUNCTIONS
 ******************************************************************************
 */

int user_input_get()
{
	int choise;

	while (1) {
		UI_PRINT(UI_MENU);
		scanf("%d", &choise);
		if (choise >= OPT_MAX) {
			UI_PRINT(UI_INVALID);
			continue;
		} else {
			break;
		}
	}

	return choise;
}

int free_resources(struct env *cnn_env)
{
	matrix_free(&cnn_env->m_conv_result);
	matrix_free(&cnn_env->m_image);
	matrix_free(&cnn_env->m_kernel);
	matrix_free(&cnn_env->m_bias);
	// matrix_free(&cnn_env->m_pool_result);

	return E_SUCCESS;
}

int init_matrices(struct env *cnn_env)
{
	int res;

	/* random image */
	res = matrix_init(&cnn_env->m_image,
					  "image",
					  INPUT_IMAGE_ROWS,
					  INPUT_IMAGE_ROWS,
					  INPUT_IMAGE_COLS,
					  INPUT_IMAGE_COLS,
					  255,
					  0);
	if (res != E_SUCCESS)
		return res;

	/* random kernel */
	res = matrix_init(&cnn_env->m_kernel,
					  "kernel",
					  KERNEL_ROWS,
					  KERNEL_ROWS,
					  KERNEL_COLS,
					  KERNEL_COLS,
					  1,
					  0);
	if (res != E_SUCCESS)
		return res;

	/* random bias */
	res = matrix_init(&cnn_env->m_bias,
			          "bias",
					  KERNEL_ROWS,
					  KERNEL_ROWS,
					  KERNEL_COLS,
					  KERNEL_COLS,
			          0,
					  0);
	if (res != E_SUCCESS)
			return res;

	return E_SUCCESS;
}

int init_matrices_demo(struct env *cnn_env)
{
	int res;

	/* random image */
	res = matrix_init_demo(&cnn_env->m_image,
					  "image",
					  INPUT_IMAGE_ROWS,
					  INPUT_IMAGE_ROWS,
					  INPUT_IMAGE_COLS,
					  INPUT_IMAGE_COLS);
	if (res != E_SUCCESS)
		return res;

	/* random kernel */
	res = matrix_init(&cnn_env->m_kernel,
					  "kernel",
					  KERNEL_ROWS,
					  KERNEL_ROWS,
					  KERNEL_COLS,
					  KERNEL_COLS,
					  1, 1);
	if (res != E_SUCCESS)
		return res;

	/* random bias */
	res = matrix_init(&cnn_env->m_bias,
			          "bias",
					  KERNEL_ROWS,
					  KERNEL_ROWS,
					  KERNEL_COLS,
					  KERNEL_COLS,
					  0,
					  0);
	if (res != E_SUCCESS)
			return res;

	return E_SUCCESS;
}
