/**
 *
 *
 *
 *
 */

/*
 ==============================================================================
 * INCLUDES
 ==============================================================================
 */

#include <stdio.h>
#include <stdbool.h>
#include "cnn.h"
#include "tasks.h"
#include "main.h"
#include <stdlib.h>

/*
 ==============================================================================
 * MAIN
 ==============================================================================
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
	matrix_free(&cnn_env->m_pool_result);

	return E_SUCCESS;
}

int init_matrices(struct env *cnn_env)
{
	int res;

	res = matrix_init(&cnn_env->m_image,
		          "image",
		          512,
		          512,
		          512,
		          512,
		          255, 0);
	if (res != E_SUCCESS)
		return res;

	res = matrix_init(&cnn_env->m_kernel,
		          "kernel",
		          3,
		          3,
		          3,
		          3,
		          1, 0);
	if (res != E_SUCCESS)
		return res;

	// print_matrix(&cnn_env->m_image);
	// print_matrix(&cnn_env->m_kernel);

	return E_SUCCESS;
}

int matrix_comp(matrix_t *a, matrix_t *b)
{
	if (!a || !b)
		return E_FAILURE;

	if (!a->data || !b->data)
		return E_FAILURE;

	int halt = 0;
	int data_mismatch_count = 0;

	if (a->rows != b->rows) {
		printf("rows mismatch: %s.rows=%d, %s.rows=%d\n", a->name, a->rows, b->name, b->rows);
		halt = 1;
	}
	if (a->cols != b->cols) {
		printf("cols mismatch: %s.cols=%d, %s.cols=%d\n", a->name, a->cols, b->name, b->cols);
		halt = 1;
	}

	if (!halt) {
		for (int i = 0; i < a->rows; i++) {
			for (int j = 0; j < a->cols; j++) {
				if (a->data[i * a->cols + j] != b->data[i * b->cols + j]) {
					printf("data mismatch: %s[%d][%d]=%d, %s=%d\n", a->name, i, j, a->data[i * a->cols + j], b->name, b->data[i * b->cols + j]);
					data_mismatch_count++;
				}

				if (data_mismatch_count > MAX_MISMATCH)
					return E_FAILURE;
			}
		}
	}

	printf("matrix match!! (%s==%s)\n", a->name, b->name);
	return E_SUCCESS;
}

