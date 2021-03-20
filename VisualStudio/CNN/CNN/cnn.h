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

#include "config.h"
#include "matrix.h"

/*
 * ENUMERATIONS
 ******************************************************************************
 */

enum pooling_type {
	MAX_POOL,
	AVG_POOL
};

/*
 * STRUCTIRES
 ******************************************************************************
 */

struct env {
	matrix_t m_image;
	matrix_t m_kernel;
	matrix_t m_kernel2;
	matrix_t m_bias;
	matrix_t m_bias2;
	matrix_t m_conv_result;
	matrix_t m_conv_result2;
	matrix_t m_pool_result;
};


struct conv_cfg {
	int input_rows;
	int input_cols;
	int kernel_rows;
	int kernel_cols;
	int output_rows;
	int output_cols;
	int activation;
};

struct pool_cfg {
	int pool_type;
	int input_rows;
	int input_cols;
	int pool_rows;
	int pool_cols;
	int output_rows;
	int output_cols;
};

struct cnn_layer_cfg {
	int layer_id;
	struct conv_cfg;
	struct pool_cfg;
};

struct cnn_cfg {
	int num_layers;
	struct cnn_layer_cfg layer_cfg[CNN_LAYERS_MAX];
};

struct pool {
	struct pool_cfg *cfg;
	matrix_t input;
	matrix_t output;
	matrixf_t input_f;
	matrixf_t output_f;
};

struct conv {
	struct conv_cfg *cfg;
	matrix_t input;
	matrix_t kernel;
	matrix_t output;
	matrixf_t input_f;
	matrixf_t kernel_f;
	matrixf_t output_f;
}

/*
 * DECLARATION
 ******************************************************************************
 */

int pool_2D(matrix_t *input, int pool_dim, matrix_t *output, int max_pool);

int conv_2D(matrix_t *input, matrix_t *kernel, matrix_t *bias, matrix_t *output);

int conv_2D_norm(matrixf_t *input, matrix_t *kernel, matrix_t *bias, matrixf_t *output);

int cnn_sw(struct env *cnn_env);

int cnn_sw_norm(struct env *cnn_env);

int cnn_hw(struct env *cnn_env);

int cnn_precision_loss_calc(matrix_t *ref, matrix_t *test, double *prec);


#endif // __CNN_H__
