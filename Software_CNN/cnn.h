/**
 * 
 *
 * 
 * 
 */

#ifndef __CNN_H__
#define __CNN_H__

/*
 ==============================================================================
 * INCLUDES
 ==============================================================================
 */

#include <stdint.h>

/*
 ==============================================================================
 * DEFINES
 ==============================================================================
 */

#define MATRIX_NAME_LEN 30


/*
 ==============================================================================
 * STRUCTIRES
 ==============================================================================
 */

typedef uint32_t data_t;

typedef struct matrix {
	char name[MATRIX_NAME_LEN];
	data_t *data;
	int cols;
	int rows;
} matrix_t;

struct env {
	matrix_t m_image;
	matrix_t m_kernel;
	matrix_t m_conv_result;
	matrix_t m_pool_result;
};


/*
 ==============================================================================
 * ENUMERATIONS
 ==============================================================================
 */

enum pooling_type {
	POOL_AVG,
	POOL_MAX
};


/*
 ==============================================================================
 * FUNCTION DECLARATION
 ==============================================================================
 */

int print_matrix(matrix_t *m);

int matrix_init(matrix_t *m, char *name, int rows_max, int rows_min, int cols_max, int cols_min, int data_val_max, int data_val_min);

int pool_2D(matrix_t *input, int pool_dim, matrix_t *output, int max_pool);

int conv_2D(matrix_t *input, matrix_t *kernel, matrix_t *output);

int cnn_sw(struct env *cnn_env);

int matrix_free(matrix_t *m);


#endif // __CNN_H__