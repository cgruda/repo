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

	uint32_t kernel[KERNEL_LEN] = {1, 1, 1, 1, 1, 1, 1, 1, 1};
	uint32_t ctrl = 0;

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
	cnn_2d_conv_d4x4_k3x3(inputStream, outputStream, ctrl, kernel);

	// Get results from core and print them out
	for (int idx = 0; idx < OUTPUT_DATA_LEN; idx++) {
		axiu32_t valOut;
		outputStream.read(valOut);
		printf("[%d] data=%lu (last=%d)\n", idx, (uint32_t)(valOut.data), (int)valOut.last);
	}

	return 0;
}
