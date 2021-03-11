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

#include "tasks.h"

#include <string.h>
#include <stdio.h>
#include <errno.h>
#include <ctype.h>

/*
 * DEFENITIONS
 ******************************************************************************
 */

void print_error(int err_val)
{
	printf("Error: ");

	/* print relevant error */
	switch (err_val) {
	case E_STDLIB:
		printf("errno = %d\n", errno);
		break;
	case E_INTERNAL:
		printf("Internal Error\n");
		break;
	case E_INPUT:
		printf("Input Error\n");
		break;
	case E_TIMEOUT:
		printf("Timeout Error\n");
		break;
	default:
		printf("Unknown Error 0x%02X\n", err_val);
	}
}
