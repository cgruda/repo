/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#ifndef __CNN_H__
#define __CNN_H__

/*
 * INCLUDES
 ******************************************************************************
 */

#include "matrix.h"

/*
 * ENUMERATIONS
 ******************************************************************************
 */

enum pooling_type {
	POOL_AVG,
	POOL_MAX
};

/*
 * STRUCTIRES
 ******************************************************************************
 */

struct env {
	matrix_t m_image;
	matrix_t m_kernel;
	matrix_t m_bias;
	matrix_t m_conv_result;
	matrix_t m_pool_result;
};

/*
 * DECLARATION
 ******************************************************************************
 */

int pool_2D(matrix_t *input, int pool_dim, matrix_t *output, int max_pool);

int conv_2D(matrix_t *input, matrix_t *kernel, matrix_t *bias, matrix_t *output);

int cnn_sw(struct env *cnn_env);

int cnn_hw(struct env *cnn_env);


#endif // __CNN_H__
