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
#include "fixed_point.h"
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

	uint32_t input[INPUT_ROWS][INPUT_COLS] = {0};
	ufixp32_t output[OUTPUT_ROWS][OUTPUT_COLS] = {0};
	uint32_t ctrl = 0;

	/**********************************************************/
	for (int i = 0; i < INPUT_ROWS; i++) {
		for (int j = 0; j < INPUT_COLS; j++) {
			input[i][j] = i * INPUT_ROWS + j;
		}
	}
	ctrl = MAX_POOL;
	/**********************************************************/


	// Fill stream with input data
	for (int i = 0; i < INPUT_ROWS; i++) {
		for (int j = 0; j < INPUT_COLS; j++) {
			axiu32_t valIn;
			valIn.data = fixed_point_div(FLOAT_2_FIXED(input[i][j]), FLOAT_2_FIXED(255));
			valIn.keep = 1;
			valIn.strb = 1;
			valIn.user = 1;
			valIn.id   = 0;
			valIn.dest = 0;
			inputStream << valIn;
		}
	}

	// Call core
cnn_pool_d24x24_p2x2
(inputStream, outputStream, ctrl);

	// Get results from core and print them out
	for (int i = 0; i < OUTPUT_ROWS; i++) {
		for (int j = 0; j < OUTPUT_COLS; j++) {
			axiu32_t valOut;
			outputStream.read(valOut);
			output[i][j] = valOut.data;
		}
	}

	for (int i = 0; i < OUTPUT_ROWS; i++) {
		for (int j = 0; j < OUTPUT_COLS; j++) {
			fixed_point_print(output[i][j]);
			printf ("  ");
		}
		printf("\n");
	}

	return 0;
}
