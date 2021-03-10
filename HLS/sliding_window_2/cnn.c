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

#include "cnn.h"
#include "matrix.h"
#include "tasks.h"

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

/*
 * DEFENITIONS
 ******************************************************************************
 */

int conv_2D(matrix_t *input, matrix_t *kernel, matrix_t *bias, matrix_t *output)
{
	/* sanity */
	if (!input || !kernel || !bias || !output) {
		PRINT_ERROR(E_FAILURE);
		return E_FAILURE;
	}

	/* init results matrix */
	int res = matrix_init(output,
		              "conv_2D",
		              input->rows - kernel->rows + 1,
		              input->rows - kernel->rows + 1,
		              input->cols - kernel->cols + 1,
		              input->cols - kernel->cols + 1,
		              0, 0);
	if (res != E_SUCCESS) {
		return res;
	}

	/* convolution calculations */
	for (int i = 0; i < input->rows - kernel->rows + 1; ++i) {
		for (int j = 0; j < input->cols - kernel->cols + 1; ++j) {
			for (int n = 0; n < kernel->rows; n++) {
				for (int m = 0; m < kernel->cols; m++) {
					output->data[i * output->cols + j] += input->data[(i + n) * input->cols + (j + m)] * kernel->data[n * kernel->cols + m] + bias->data[n * kernel->cols + m];
				}
			}
		}
	}

	return E_SUCCESS;
}

int pool_2D(matrix_t *input, int pool_dim, matrix_t *output, int max_pool)
{
	int res;
	data_t max_val;

	/* sanity */
	if (!input || !output) {
		PRINT_ERROR(E_FAILURE);
		return E_FAILURE;
	}

	/* pooling sanity */
	if ((input->cols % pool_dim) || (input->rows % pool_dim)) {
		PRINT_ERROR(E_INTERNAL);
		return E_INTERNAL;
	}

	/* init results matrix */
	res = matrix_init(output,
		          "pooling",
		          input->rows / pool_dim,
		          input->rows / pool_dim,
		          input->cols / pool_dim,
		          input->cols / pool_dim,
		          0, 0);
	if (res != E_SUCCESS) {
		return res;
	}

	/* pooling calculation */
	for (int i = 0; i < input->rows / pool_dim; ++i) {
		for (int j = 0; j < input->cols / pool_dim; ++j) {
			//max_val = input->data[(pool_dim * i * input->cols) + j];
			for (int n = 0; n < pool_dim; n++) {
				for (int m = 0; m < pool_dim; m++) {
					output->data[i * output->cols + j] = max(output->data[i * output->cols + j],
										 input->data[((pool_dim * i) + n) * input->cols + ((j * pool_dim) + m)]);
				}
			}
		}
	}

	return E_SUCCESS;
}

int cnn_sw(struct env *cnn_env)
{
	int res;

	res = conv_2D(&cnn_env->m_image, &cnn_env->m_kernel, &cnn_env->m_bias, &cnn_env->m_conv_result);
	if (res != E_SUCCESS)
		return res;

	// print_matrix(&cnn_env->m_conv_result);

	res = pool_2D(&cnn_env->m_conv_result, 2, &cnn_env->m_pool_result, POOL_MAX);
	if (res != E_SUCCESS)
		return res;

	// print_matrix(&cnn_env->m_pool_result);
	return E_SUCCESS;
}

int cnn_hw(struct env *cnn_env)
{
	printf("cnn_hw not implemented yet!\n");
	return E_SUCCESS;
}
