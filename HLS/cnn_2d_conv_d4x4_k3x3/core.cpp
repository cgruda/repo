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

// axi stream
#define AXI_STREAM_KEEP 0xF
#define AXI_STREAM_STRB 0
#define AXI_STREAM_USER 0
#define AXI_STREAM_DEST 0
#define AXI_STREAM_ID   0

/*
 * TYPES
 ******************************************************************************
 */

typedef ap_axiu<32, 2, 5, 6> axiu32_t;

/*
 * DEFENITIONS
 ******************************************************************************
 */

inline bool bounds_ok(int y, int x)
{
	return (0 <= y && y < INPUT_DATA_ROWS && 0 <= x && x < INPUT_DATA_COLS);
}

inline bool pad_skip(int x, int y)
{
	return ((x < KERNEL_DIM_Q1) 						||
			(y < KERNEL_DIM_Q1) 						||
			(x > INPUT_DATA_COLS - KERNEL_DIM_Q1 - 1) 	||
			(y > INPUT_DATA_ROWS - KERNEL_DIM_Q1 - 1));
}

inline uint32_t single_operation(uint32_t window[KERNEL_DIM][KERNEL_DIM],
		uint32_t kernel[KERNEL_LEN], int y, int x)
{
	uint32_t result = 0;

	for (int i = -KERNEL_DIM_Q1; i <= KERNEL_DIM_Q1; i++) {
		for (int j = -KERNEL_DIM_Q1; j <= KERNEL_DIM_Q1; j++) {
			if (bounds_ok(y + i, x + j)) {
				result += window[i + KERNEL_DIM_Q1][j + KERNEL_DIM_Q1] *
						kernel[((i + KERNEL_DIM_Q1) * KERNEL_DIM) + (j + KERNEL_DIM_Q1)];
			}
		}
	}

	return result;
}

inline bool is_last(int writeCount) {
	return (writeCount == OUTPUT_DATA_LEN);
}

/*
 * CORE
 ******************************************************************************
 */

void cnn_2d_conv_d4x4_k3x3(hls::stream<axiu32_t> &inStream,
		 	 	 	 	   hls::stream<axiu32_t> &outStream,
						   uint32_t ctrl,
						   uint32_t kernelData[KERNEL_LEN])
{
#pragma HLS INTERFACE axis port=outStream
#pragma HLS INTERFACE axis port=inStream
#pragma HLS INTERFACE s_axilite port=ctrl bundle=CTRL
#pragma HLS INTERFACE s_axilite port=kernelData bundle=CTRL
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL

#pragma HLS ARRAY_PARTITION variable=kernelData complete

	uint32_t lineBuffer[KERNEL_LEN - 1][INPUT_DATA_COLS];
	uint32_t window[KERNEL_DIM][KERNEL_DIM];
	uint32_t windowRightCol[KERNEL_LEN];
#pragma HLS ARRAY_PARTITION variable=lineBuffer complete dim=1
#pragma HLS ARRAY_PARTITION variable=window complete dim=0
#pragma HLS ARRAY_PARTITION variable=windowRightCol complete

	// Load initial values into line buffer
	for (int x = INPUT_DATA_COLS - KERNEL_DIM_Q1 - 1; x < INPUT_DATA_COLS; x++) {
#pragma HLS PIPELINE
		axiu32_t valIn = inStream.read();
		lineBuffer[KERNEL_DIM_Q1 - 1][x] = valIn.data;
	}

	// Fill values into line buffer values
	for (int y = KERNEL_DIM_Q1; y < KERNEL_DIM - 1; y++) {
		for (int x = 0; x < INPUT_DATA_COLS; x++) {
#pragma HLS PIPELINE
			axiu32_t valIn = inStream.read();
			lineBuffer[y][x] = valIn.data;
		}
	}

	int readCount = INPUT_DATA_COLS * KERNEL_DIM_Q1 + KERNEL_DIM_Q1 + 1;
	int writeCount = 0;

	// Fill initial values into window
	for (int y = KERNEL_DIM_Q1; y < KERNEL_DIM; y++) {
		for (int x = KERNEL_DIM_Q1; x < KERNEL_DIM; x++) {
#pragma HLS PIPELINE
			window[y][x] = lineBuffer[y - 1][x + INPUT_DATA_COLS - KERNEL_DIM];
		}
	}

	// Start convolution
	for (int y = 0; y < INPUT_DATA_ROWS; y++) {
		for (int x = 0; x < INPUT_DATA_COLS; x++) {
#pragma HLS PIPELINE

			// Calculate and write output pixel
			if (!pad_skip(x, y)) {

				axiu32_t valOut;

				writeCount++;

				valOut.data = single_operation(window, kernelData, y, x);
				valOut.keep = AXI_STREAM_KEEP;
				valOut.strb = AXI_STREAM_STRB;
				valOut.user = AXI_STREAM_USER;
				valOut.dest = AXI_STREAM_DEST;
				valOut.id   = AXI_STREAM_ID;
				valOut.last = is_last(writeCount);

				outStream.write(valOut);
			}

			// Shift line buffer column up
			windowRightCol[0] = lineBuffer[0][x];
			for (int y = 1; y < KERNEL_DIM - 1; y++) {
				windowRightCol[y] = lineBuffer[y - 1][x] = lineBuffer[y][x];
			}

			// Read input value
			axiu32_t valIn;
			if (readCount < INPUT_DATA_ROWS * INPUT_DATA_COLS) {
				valIn = inStream.read();
				readCount++;
			}
			windowRightCol[KERNEL_DIM - 1] = lineBuffer[KERNEL_DIM - 2][x] = valIn.data;

			// Shift window left
			for (int y = 0; y < KERNEL_DIM; y++) {
				for (int x = 0; x < KERNEL_DIM - 1; x++) {
					window[y][x] = window[y][x + 1];
				}
			}

			// Update rightmost window values
			for (int y = 0; y < KERNEL_DIM; y++) {
				window[y][KERNEL_DIM - 1] = windowRightCol[y];
			}
		}
	}
}
