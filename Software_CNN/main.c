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

#include <stdio.h>
#include <stdbool.h>
#include "cnn.h"
#include "tasks.h"
#include <stdlib.h>


/*
 ==============================================================================
 * MAIN
 ==============================================================================
 */

enum user_options {
	OPT_EXIT,
	OPT_CNN_SW,
	OPT_CNN_HW,
	OPT_MAX
};

#define UI_PRINT	printf

#define UI_MENU		"options:\n"		\
			"0. exit\n"		\
			"1. run SW CNN\n"	\
			"2. run HW CNN\n"

#define UI_WELCOME	"-------------------------\n"	\
			"-------  WELCOME  -------\n"	\
			"-------------------------\n"

#define UI_GOODBYE	"-------------------------\n"	\
			"-------  GOODBYE  -------\n"	\
			"-------------------------\n"

#define UI_INVALID	"invalid choise!\n"


int user_input_get()
{
	int choise;

	while (1) {
		UI_PRINT(UI_MENU);
		scanf("%d", &choise);
		if (choise >= OPT_MAX) {
			UI_PRINT(UI_INVALID);
			continue;
		} else {
			break;
		}
	}

	return choise;
}

int free_resources(struct env *cnn_env)
{
	matrix_free(&cnn_env->m_conv_result);
	matrix_free(&cnn_env->m_image);
	matrix_free(&cnn_env->m_kernel);
	matrix_free(&cnn_env->m_pool_result);

	return E_SUCCESS;
}

int init_matrices(struct env *cnn_env)
{
	int res;

	res = matrix_init(&cnn_env->m_image,
		          "image",
		          10,
		          10,
		          10,
		          10,
		          9, 0);
	if (res != E_SUCCESS)
		return res;

	res = matrix_init(&cnn_env->m_kernel,
		          "kernel",
		          3,
		          3,
		          3,
		          3,
		          9, 0);
	if (res != E_SUCCESS)
		return res;

	print_matrix(&cnn_env->m_image);
	print_matrix(&cnn_env->m_kernel);

	return E_SUCCESS;
}

int main(int argc, char **argv)
{
	int option;
	bool exit = false;
	struct env cnn_env = {0};

	UI_PRINT(UI_WELCOME);

	init_matrices(&cnn_env);

	do {
		// option = user_input_get();
		option = OPT_CNN_SW;

		switch (option) {
		case OPT_CNN_SW:
			cnn_sw(&cnn_env);
			exit = true;
			break;

		case OPT_CNN_HW:
			printf("OPT_CNN_HW\n");
			break;

		case OPT_EXIT:
			exit = true;
			break;

		default:
			break;
		}

	} while (!exit);

	free_resources(&cnn_env);

	UI_PRINT(UI_GOODBYE);

	return 0;
}