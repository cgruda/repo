/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#ifndef SRC_DBG_H_
#define SRC_DBG_H_

/*
 * INCLUDES
 ******************************************************************************
 */

#include <stdio.h>

/*
 * DEFINES
 ******************************************************************************
 */

// #define SEVERITY SEVERITY_MAX

/*
 * ENUMERATIONS
 ******************************************************************************
 */

enum severity {
	FATAL,
	ERROR,
	WARN,
	INFO,
	DEBUG,
	TRACE,
	SEVERITY_MAX
};

#define SEVERITY SEVERITY_MAX


/*
 * EXTERN VARS
 ******************************************************************************
 */

extern const char *dbg_severity_str[SEVERITY_MAX];

/*
 * MACROS
 ******************************************************************************
 */

#define DBG_LOG_PRINT(level, ...) do {					\
	if (level <= SEVERITY) {							\
		printf("%s ", dbg_severity_str[level]);			\
		printf(__VA_ARGS__);							\
	}													\
} while(0);




#endif /* SRC_DBG_H_ */
