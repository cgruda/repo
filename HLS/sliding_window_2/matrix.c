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

#include "matrix.h"
#include "tasks.h"

#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

/*
 * FUNCTIONS
 ******************************************************************************
 */

int matrix_init(matrix_t *m, char *name, int rows_max, int rows_min, int cols_max, int cols_min, int data_val_max, int data_val_min)
{

	strcpy(m->name, name);
	// sprintf(m->name, name);

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

				if (data_mismatch_count > MATRIX_COMP_MAX_MISMATCH)
					return E_FAILURE;
			}
		}
	}

	printf("matrix match!! (%s==%s)\n", a->name, b->name);
	return E_SUCCESS;
}

int matrix_print(matrix_t *m)
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

int matrix_free(matrix_t *m)
{
	free(m->data);
	memset(m, 0, sizeof(*m));

	return E_SUCCESS;
}

