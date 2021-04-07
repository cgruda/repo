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

#include "dbg.h"
#include <stdio.h>

/*
 * GLOBAL VARS
 ******************************************************************************
 */

const char *dbg_severity_str[SEVERITY_MAX] = {
	[FATAL] = "[FATAL]",
	[ERROR] = "[ERROR]",
	[WARN]  = "[WARNING]",
	[INFO]  = "[INFO]",
	[DEBUG] = "[DEBUG]",
	[TRACE] = "[TRACE]"
};