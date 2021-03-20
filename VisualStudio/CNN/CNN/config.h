/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#ifndef __CONFIG_H__
#define __CONFIG_H__

/*
 * DEFINES
 ******************************************************************************
 */

#define PC		0
#define ZEDBOARD	1

#ifndef PLATFORM
#define PLATFORM PC
#endif


#define CNN_LAYERS_MAX 3

#if (PLATFORM == ZEDBOARD)

#define CNN_LAYERS 3

// cnn input
#define CNN_INPUT_ROWS		94
#define CNN_INPUT_COLS		94

// layer 0 conv
#define CONV0_INPUT_ROWS	CNN_INPUT_ROWS
#define CONV0_INPUT_COLS	CNN_INPUT_COLS
#define CONV0_INPUT_LEN		(CONV0_INPUT_ROWS * CONV0_INPUT_COLS)

#define CONV0_KERNEL_DIM	3
#define CONV0_KERNEL_ROWS	CONV0_KERNEL_DIM
#define CONV0_KERNEL_COLS	CONV0_KERNEL_DIM
#define CONV0_KERNEL_LEN 	(CONV0_KERNEL_ROWS * CONV0_KERNEL_COLS)

#define CONV0_OUTPUT_ROWS	(CONV0_INPUT_ROWS - CONV0_KERNEL_ROWS + 1)
#define CONV0_OUTPUT_COLS	(CONV0_INPUT_COLS - CONV0_KERNEL_COLS + 1)
#define CONV0_OUTPUT_LEN	(CONV0_OUTPUT_ROWS * CONV0_OUTPUT_COLS)

// layer 0 pool
#define POOL0_INPUT_ROWS	CONV0_OUTPUT_ROWS
#define POOL0_INPUT_COLS	CONV0_OUTPUT_COLS
#define POOL0_INPUT_LEN		(POOL0_INPUT_ROWS * POOL0_INPUT_COLS)

#define POOL0_TYPE		MAX_POOL
#define POOL0_DIM		2
#define POOL0_ROWS		POOL0_DIM
#define POOL0_COLS		POOL0_DIM

#define POOL0_OUTPUT_ROWS	(POOL0_INPUT_ROWS / POOL0_ROWS)
#define POOL0_OUTPUT_COLS	(POOL0_INPUT_COLS / POOL0_COLS)
#define POOL0_OUTPUT_LEN 	(POOL0_OUTPUT_ROWS * POOL0_OUTPUT_COLS)

// layer 1 conv
#define CONV1_INPUT_ROWS	POOL0_OUTPUT_ROWS
#define CONV1_INPUT_COLS	POOL0_OUTPUT_COLS
#define CONV1_INPUT_LEN		(CONV1_INPUT_ROWS * CONV1_INPUT_COLS)

#define CONV1_KERNEL_DIM	3
#define CONV1_KERNEL_ROWS	CONV1_KERNEL_DIM
#define CONV1_KERNEL_COLS	CONV1_KERNEL_DIM
#define CONV1_KERNEL_LEN 	(CONV1_KERNEL_ROWS * CONV1_KERNEL_COLS)

#define CONV1_OUTPUT_ROWS	(CONV1_INPUT_ROWS - CONV1_KERNEL_ROWS + 1)
#define CONV1_OUTPUT_COLS	(CONV1_INPUT_COLS - CONV1_KERNEL_COLS + 1)
#define CONV1_OUTPUT_LEN	(CONV1_OUTPUT_ROWS * CONV1_OUTPUT_COLS)

// layer 1 pool
#define POOL1_TYPE		AVG_POOL
#define POOL1_INPUT_ROWS	CONV1_OUTPUT_ROWS
#define POOL1_INPUT_COLS	CONV1_OUTPUT_COLS
#define POOL1_INPUT_LEN		(POOL1_INPUT_ROWS * POOL1_INPUT_COLS)

#define POOL1_DIM		2
#define POOL1_ROWS		POOL1_DIM
#define POOL1_COLS		POOL1_DIM

#define POOL1_OUTPUT_ROWS	(POOL1_INPUT_ROWS / POOL1_ROWS)
#define POOL1_OUTPUT_COLS	(POOL1_INPUT_COLS / POOL1_COLS)
#define POOL1_OUTPUT_LEN 	(POOL1_OUTPUT_ROWS * POOL1_OUTPUT_COLS)

// layer 2 conv
#define CONV2_INPUT_ROWS	POOL1_OUTPUT_ROWS
#define CONV2_INPUT_COLS	POOL1_OUTPUT_COLS
#define CONV2_INPUT_LEN		(CONV2_INPUT_ROWS * CONV2_INPUT_COLS)

#define CONV2_KERNEL_DIM	3
#define CONV2_KERNEL_ROWS	CONV2_KERNEL_DIM
#define CONV2_KERNEL_COLS	CONV2_KERNEL_DIM
#define CONV2_KERNEL_LEN 	(CONV2_KERNEL_ROWS * CONV2_KERNEL_COLS)

#define CONV2_OUTPUT_ROWS	(CONV2_INPUT_ROWS - CONV2_KERNEL_ROWS + 1)
#define CONV2_OUTPUT_COLS	(CONV2_INPUT_COLS - CONV2_KERNEL_COLS + 1)
#define CONV2_OUTPUT_LEN	(CONV2_OUTPUT_ROWS * CONV2_OUTPUT_COLS)

// layer 2 pool
#define POOL2_TYPE		MAX_POOL
#define POOL2_INPUT_ROWS	CONV2_OUTPUT_ROWS
#define POOL2_INPUT_COLS	CONV2_OUTPUT_COLS
#define POOL2_INPUT_LEN		(POOL2_INPUT_ROWS * POOL2_INPUT_COLS)

#define POOL2_DIM		2
#define POOL2_ROWS		POOL2_DIM
#define POOL2_COLS		POOL2_DIM

#define POOL2_OUTPUT_ROWS	(POOL2_INPUT_ROWS / POOL2_ROWS)
#define POOL2_OUTPUT_COLS	(POOL2_INPUT_COLS / POOL2_COLS)
#define POOL2_OUTPUT_LEN 	(POOL2_OUTPUT_ROWS * POOL2_OUTPUT_COLS)

// cnn output
#define CNN_OUTPUT_ROWS		POOL2_OUTPUT_ROWS
#define CNN_OUTPUT_COLS		POOL2_OUTPUT_COLS

#endif

/*
 * STRUCTS
 ******************************************************************************
 */

struct config {
	int platform;

};


int config_init(struct config *p_config)
{
#if (PLATFORM == ZEDBOARD)
	p_config->platform = ZEDBOARD;
#else
	p_config->platform = PC;
#endif



}

#endif // __CONFIG_H__
