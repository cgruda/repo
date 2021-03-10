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


/*
 * FUNCTIONS
 ******************************************************************************
 */

int matrix_comp(matrix_t *a, matrix_t *b);
int matrix_free(matrix_t *m);
int matrix_print(matrix_t *m);
int matrix_init(matrix_t *m, char *name, int rows_max, int rows_min,
		int cols_max, int cols_min, int data_val_max, int data_val_min);


#endif /* __MATRIX_H__ */
