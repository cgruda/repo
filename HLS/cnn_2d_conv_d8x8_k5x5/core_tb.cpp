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

#include "core.h"
#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <stdint.h>

/*
 * DEFINES
 ******************************************************************************
 */

int main()
{
	hls::stream<axiu32_t> inputStream;
	hls::stream<axiu32_t> outputStream;

	uint32_t kernel[KERNEL_LEN];
	uint32_t ctrl = 0;

	for (int k = 0; k < KERNEL_LEN; k++) {
		kernel[k] = 1;
	}

	// Fill stream with input data
	for (int idx = 0; idx < INPUT_DATA_LEN; idx++) {
		axiu32_t valIn;
		valIn.data = idx;
		valIn.keep = 1;
		valIn.strb = 1;
		valIn.user = 1;
		valIn.id   = 0;
		valIn.dest = 0;
		inputStream << valIn;
	}

	// Call core
	cnn_2d_conv_d8x8_k5x5(inputStream, outputStream, ctrl, kernel);

	// Get results from core and print them out
	for (int i = 0; i < OUTPUT_DATA_ROWS; i++) {
		for (int j = 0; j < OUTPUT_DATA_COLS; j++) {
			axiu32_t valOut;
			outputStream.read(valOut);
			printf("%04d ", (uint32_t)(valOut.data));
		}
		printf("\n");
	}

	return 0;
}
