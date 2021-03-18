/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#define _CRT_SECURE_NO_WARNINGS

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
#define INPUT_IMAGE_ROWS 8
#define INPUT_IMAGE_COLS 8
#define INPUT_IMAGE_LEN  (INPUT_IMAGE_ROWS * INPUT_IMAGE_COLS)

// kernel
#define KERNEL_DIM 5
#define KERNEL_DIM_Q1 (((KERNEL_DIM) - 1) / 2)
#define KERNEL_ROWS KERNEL_DIM
#define KERNEL_COLS KERNEL_DIM
#define KERNEL_LEN  (KERNEL_ROWS * KERNEL_COLS)
#define KERNEL_BUS "kernel_bus"

/*
 * FUNCTIONS
 ******************************************************************************
 */

int user_input_get()
{
	int choise = OPT_MAX, res = 0;

	while (1) {
		UI_PRINT(UI_MENU);
		res = scanf("%d", &choise);
		if (res == 0 || res == EOF || choise >= OPT_MAX) {
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
					  1,
					  1);
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

	/* random kernel */
	res = matrix_init(&cnn_env->m_kernel2,
		"kernel",
		3,
		3,
		3,
		3,
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

	/* random bias */
	res = matrix_init(&cnn_env->m_bias2,
		"bias",
		3,
		3,
		3,
		3,
		0,
		0);
	if (res != E_SUCCESS)
		return res;

	return E_SUCCESS;
}

int main(int argc, char** argv)
{
	int option;
	bool exit = false;
	struct env cnn_env = { 0 };

	UI_PRINT(UI_WELCOME);

	init_matrices_demo(&cnn_env);

	do {
		// option = user_input_get();
		option = OPT_CNN_SW;

		switch (option) {
		case OPT_CNN_SW:
			cnn_sw(&cnn_env);
			exit = true;
			break;

		case OPT_CNN_HW:
			printf("OPT_CNN_HW\n");
			break;

		case OPT_EXIT:
			exit = true;
			break;

		default:
			break;
		}

	} while (!exit);

	free_resources(&cnn_env);

	UI_PRINT(UI_GOODBYE);

	return 0;
}