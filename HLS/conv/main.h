/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#ifndef __MAIN_H__
#define __MAIN_H__

/*
 * INCLUDES
 ******************************************************************************
 */

#include "cnn.h"

/*
 * DEFINES
 ******************************************************************************
 */

#define INPUT_IMAGE_ROWS 4
#define INPUT_IMAGE_COLS 4
#define INPUT_IMAGE_LEN  (INPUT_IMAGE_ROWS * INPUT_IMAGE_COLS)

// kernel
#define KERNEL_DIM 3
// #define KERNEL_DIM_Q1 (((KERNEL_DIM) - 1) / 2)
#define KERNEL_ROWS KERNEL_DIM
#define KERNEL_COLS KERNEL_DIM
#define KERNEL_LEN  (KERNEL_ROWS * KERNEL_COLS)



#define UI_PRINT	printf
#define UI_MENU		"options:\n"		\
					"0. exit\n"			\
					"1. run SW CNN\n"	\
					"2. run HW CNN\n"
#define UI_WELCOME	"-------------------------\n"	\
					"-------  WELCOME  -------\n"	\
					"-------------------------\n"
#define UI_GOODBYE	"-------------------------\n"	\
					"-------  GOODBYE  -------\n"	\
					"-------------------------\n"
#define UI_INVALID	"invalid choice!\n"

/*
 * ENUMERATIONS
 ******************************************************************************
 */

enum user_options {
	OPT_EXIT,
	OPT_CNN_SW,
	OPT_CNN_HW,
	OPT_MAX
};

/*
 * FUNCTION DECLARATION
 ******************************************************************************
 */

int user_input_get();

int free_resources(struct env *cnn_env);

int init_matrices(struct env *cnn_env);

int init_matrices_demo(struct env *cnn_env);


#endif // __MAIN_H__
