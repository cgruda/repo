/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#ifndef __MATRIX_H__
#define __MATRIX_H__

/*
 * INCLUDES
 ******************************************************************************
 */

#include <stdint.h>

/*
 * DEFINES
 ******************************************************************************
 */

#define MATRIX_NAME_LEN 30
#define MATRIX_COMP_MAX_MISMATCH 600

/*
 * TYPES
 ******************************************************************************
 */

typedef uint8_t data_t;
typedef double dataf_t;


/*
 * STRUCTS
 ******************************************************************************
 */

typedef struct matrix {
	char name[MATRIX_NAME_LEN];
	data_t *data;
	int cols;
	int rows;
} matrix_t;

typedef struct matrixf {
	char name[MATRIX_NAME_LEN];
	dataf_t *data;
	int cols;
	int rows;
	int norm;
} matrixf_t;

/*
 * FUNCTIONS
 ******************************************************************************
 */

int matrix_dim_comp(matrix_t *a, matrix_t *b);

int matrix_comp(matrix_t *a, matrix_t *b);

int matrix_free(matrix_t *m);

int matrixf_free(matrixf_t *mf);

int matrix_print(matrix_t *m);

int matrix_init(matrix_t *m, char *name, int rows_max, int rows_min,
		int cols_max, int cols_min, int data_val_max, int data_val_min);

int matrixf_init_zero(matrixf_t *mf, char *name, int rows_max, int rows_min,
		int cols_max, int cols_min);

int matrix_init_demo(matrix_t *m, char *name, int rows_max, int rows_min,
		int cols_max, int cols_min);

int matrix_norm(matrix_t *m, matrixf_t *mf, int norm);

int matrix_denorm(matrixf_t *mf, matrix_t *m, int norm);


#endif /* __MATRIX_H__ */
