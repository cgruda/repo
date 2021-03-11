/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#ifndef __TASKS_H__
#define __TASKS_H__

/*
 * INCLUDES
 ******************************************************************************
 */

#include <stdio.h>
#include <string.h>

/*
 * DEFINES
 ******************************************************************************
 */

#define DBG_ENABLE 1

// time conversion
#define MS2US                1000
#define SEC2MS               1000
#define MIN2SEC              60

/*
 * ENUMERATIONS
 ******************************************************************************
 */

enum err_val {
	E_SUCCESS = 0,
	E_FAILURE,
	E_INTERNAL,
	E_TIMEOUT,
	E_INPUT,
	E_STDLIB,
	E_MAX
};

/*
 * MACROS
 ******************************************************************************
 */

#if DBG_ENABLE
#define __FILENAME__ (strrchr(__FILE__, '\\') ? strrchr(__FILE__, '\\') + 1 : __FILE__)
#define DBG_STAMP() printf("[%-14s;%-3d] ", __FILENAME__, __LINE__)
#define DBG_PRINT(...) do {DBG_STAMP(); printf(__VA_ARGS__);} while (0)
#define DBG_FUNC_STAMP() do {DBG_STAMP(); printf("%s\n", __func__);} while (0)
#else
#define __FILENAME__
#define DBG_PRINT(...)
#define DBG_FUNC_STAMP()
#define DBG_STAMP()
#endif

// print error message
#define PRINT_ERROR(err_val)   do {DBG_STAMP(); print_error((err_val));} while (0)

#define max(a,b) (((a) > (b)) ? (a) : (b))
#define BIT(pos) (1 << (pos))
#define SET_BIT(map, pos) ((map) |= BIT(pos))
#define CLR_BIT(map, pos) ((map) &= ~BIT(pos))
#define TEST_BIT(map, pos) (!!((map) & BIT(pos)))

/*
 * DECLARATIONS
 ******************************************************************************
 */

void print_error(int err_val);


#endif // __TASKS_H__
