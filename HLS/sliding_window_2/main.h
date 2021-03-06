/**
 *
 *
 *
 *
 */

#ifndef __MAIN_H__
#define __MAIN_H__

/*
 ==============================================================================
 * INCLUDES
 ==============================================================================
 */

#include "cnn.h"

/*
 ==============================================================================
 * DEFINES
 ==============================================================================
 */

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

#define MAX_MISMATCH 10

/*
 ==============================================================================
 * ENUMERATIONS
 ==============================================================================
 */

enum user_options {
	OPT_EXIT,
	OPT_CNN_SW,
	OPT_CNN_HW,
	OPT_MAX
};

/*
 ==============================================================================
 * FUNCTION DECLARATION
 ==============================================================================
 */
int user_input_get();
int free_resources(struct env *cnn_env);
int init_matrices(struct env *cnn_env);
int matrix_comp(matrix_t *a, matrix_t *b);


#endif // __MAIN_H__
