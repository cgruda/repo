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

#include "matrix.h"
#include "tasks.h"

#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <stdint.h>

/*
 * FUNCTIONS
 ******************************************************************************
 */

int matrix_init(matrix_t *m, char *name, int rows_max, int rows_min,
		int cols_max, int cols_min, int data_val_max, int data_val_min)
{
	strcpy(m->name, name);

	srand((uint32_t)time(0));

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

int matrixf_init_zero(matrixf_t *mf, char *name, int rows_max, int rows_min,
		int cols_max, int cols_min)
{
	strcpy(mf->name, name);

	srand((uint32_t)time(0));

	// random image size
	mf->rows = (rand() % (rows_max - rows_min + 1)) + rows_min;
	mf->cols = (rand() % (cols_max - cols_min + 1)) + cols_min;

	// allocate image mem
	mf->data = calloc(mf->rows * mf->cols, sizeof(*mf->data));
	if (!mf->data) {
		PRINT_ERROR(E_STDLIB);
		return E_STDLIB;
	}

	// fill random data
	for (int i = 0; i < mf->rows; i++) {
		for (int j = 0; j < mf->cols; j++) {
			mf->data[i * mf->cols + j] = 0;
		}
	}

	return E_SUCCESS;
}

int matrix_init_demo(matrix_t *m, char *name, int rows_max, int rows_min,
		int cols_max, int cols_min)
{
	strcpy(m->name, name);

	srand((uint32_t)time(0));

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
			m->data[i * m->cols + j] = i * m->cols + j;
		}
	}

	return E_SUCCESS;
}

int matrix_dim_comp(matrix_t *a, matrix_t *b)
{
	if (!a || !b)
		return E_FAILURE;

	if (!a->data || !b->data)
		return E_FAILURE;

	if (a->rows != b->rows) {
		return E_FAILURE;
	}

	if (a->cols != b->cols) {
		return E_FAILURE;
	}

	return E_SUCCESS;
}

int matrix_comp(matrix_t *a, matrix_t *b)
{
	bool halt = false;
	int data_mismatch_count = 0;

	halt = !!matrix_dim_comp(a, b);

	for (int i = 0; i < a->rows && !halt; i++) {
		for (int j = 0; j < a->cols && !halt; j++) {
			if (a->data[i * a->cols + j] != b->data[i * b->cols + j]) {
				printf("data mismatch: %s[%d][%d]=%d, %s=%d\n", a->name, i, j, a->data[i * a->cols + j], b->name, b->data[i * b->cols + j]);
				data_mismatch_count++;
			}

			if (data_mismatch_count > MATRIX_COMP_MAX_MISMATCH)
				halt = true;
		}
	}

	if ((data_mismatch_count == 0) && !halt) {
		printf("matrix match!! (%s==%s)\n", a->name, b->name);
		return E_SUCCESS;
	} else {
		return E_FAILURE;
	}
}

int matrix_print(matrix_t *m, int max_print)
{
	if (!m)
		return E_FAILURE;

	if (!m->data)
		return E_FAILURE;

	int printed = 0;

	printf("\n");
	printf("%s:\n", m->name);
	for (int i = 0; i < m->rows; i++) {
		for (int j = 0; j < m->cols; j++) {
			printf("0x%08X ", m->data[i * m->cols + j]);
			printed++;

			if (max_print > 0 && printed == max_print) {
				return E_SUCCESS;
			}
		}
		printf("\n");
	}
	printf("\n");
	return E_SUCCESS;
}

int matrix_free(matrix_t *m)
{
	free(m->data);
	memset(m, 0, sizeof(*m));

	return E_SUCCESS;
}

int matrixf_free(matrixf_t *mf)
{
	free(mf->data);
	memset(mf, 0, sizeof(*mf));

	return E_SUCCESS;
}

int matrix_norm(matrix_t *m, matrixf_t *mf, int norm)
{
	strcpy(mf->name, m->name);

	// random image size
	mf->rows = m->rows;
	mf->cols = m->cols;

	// allocate image mem
	mf->data = calloc(mf->rows * mf->cols, sizeof(*mf->data));
	if (!mf->data) {
		PRINT_ERROR(E_STDLIB);
		return E_STDLIB;
	}

	// fill random data
	for (int i = 0; i < mf->rows; i++) {
		for (int j = 0; j < mf->cols; j++) {
			mf->data[i * mf->cols + j] = (dataf_t)m->data[i * mf->cols + j] / (dataf_t)norm;
		}
	}

	return E_SUCCESS;
}

int matrix_denorm(matrixf_t *mf, matrix_t *m, int norm)
{
	strcpy(m->name, mf->name);

	// random image size
	m->rows = mf->rows;
	m->cols = mf->cols;

	// allocate image mem
	m->data = calloc(m->rows * m->cols, sizeof(*m->data));
	if (!m->data) {
		PRINT_ERROR(E_STDLIB);
		return E_STDLIB;
	}

	//copy data
	for (int i = 0; i < m->rows; i++) {
		for (int j = 0; j < m->cols; j++) {
			m->data[i * m->cols + j] = (data_t)(mf->data[i * mf->cols + j] * norm);
		}
	}

	return E_SUCCESS;
}

