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

#include "cnn.h"
#include <stdio.h>
#include <stdlib.h>
#include "tasks.h"
#include <time.h>


/*
 ==============================================================================
 * DEFENITIONS
 ==============================================================================
 */

int conv_2D(matrix_t *input, matrix_t *kernel, matrix_t *output)
{
	/* sanity */
	if (!input || !kernel || !output) {
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
					output->data[i * output->cols + j] += input->data[(i + n) * input->cols + (j + m)] * kernel->data[n * kernel->cols + m];
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

int matrix_init(matrix_t *m, char *name, int rows_max, int rows_min, int cols_max, int cols_min, int data_val_max, int data_val_min)
{
	sprintf(m->name, name);

	srand(time(0));

	/* random image size */
	m->rows = (rand() % (rows_max - rows_min + 1)) + rows_min;
	m->cols = (rand() % (cols_max - cols_min + 1)) + cols_min;

	/* allocate image mem */
	m->data = calloc(m->rows * m->cols, sizeof(*m->data));
	if (!m->data) {
		PRINT_ERROR(E_STDLIB);
		return E_STDLIB;
	}

	/* fill random data */
	for (int i = 0; i < m->rows; i++) {
		for (int j = 0; j < m->cols; j++) {
			m->data[i * m->cols + j] = (rand() % (data_val_max - data_val_min + 1)) + data_val_min;
		}
	}

	return E_SUCCESS;
}

int matrix_free(matrix_t *m)
{
	free(m->data);
	memset(m, 0, sizeof(*m));

	return E_SUCCESS;
}

int print_matrix(matrix_t *m)
{
	if (!m)
		return E_FAILURE;

	if (!m->data)
		return E_FAILURE;

	printf("\n");
	printf("%s:\n", m->name);
	for (int i = 0; i < m->rows; i++) {
		for (int j = 0; j < m->cols; j++) {
			printf("%d ", m->data[i * m->cols + j]);
		}
		printf("\n");
	}
	printf("\n");
	return E_SUCCESS;
}

int cnn_sw(struct env *cnn_env)
{
	printf("sw_cnn\n");

	int res;

	res = conv_2D(&cnn_env->m_image, &cnn_env->m_kernel, &cnn_env->m_conv_result);
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
