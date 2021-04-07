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

inline bool poolSkip(int x, int y)
{
	return (!(x % POOL_DIM_R == POOL_DIM_Q1) ||
			!(y % POOL_DIM_R == POOL_DIM_Q1));
}

inline ufixp32_t singleOperation(ufixp32_t window[POOL_DIM][POOL_DIM], int y, int x, int op)
{
	ufixp32_t maxValue = 0;
	ufixp32_t sum = 0;
	ufixp32_t result;

	for (int i = -POOL_DIM_Q1; i <= 0; i++) {
		for (int j = -POOL_DIM_Q1; j <= 0; j++) {
			if (window[i + POOL_DIM_Q1][j + POOL_DIM_Q1] > maxValue) {
				maxValue = window[i + POOL_DIM_Q1][j + POOL_DIM_Q1];
			}
			sum += window[i + POOL_DIM_Q1][j + POOL_DIM_Q1];
		}
	}

	if (op == MAX_POOL) {
		result = maxValue;
	} else {
		result = fixed_point_div(sum, FLOAT_2_FIXED(POOL_DIM_R * POOL_DIM_R));
	}

	return result;
}

inline bool isLast(int writeCount) {
	return (writeCount == OUTPUT_LEN);
}

/*
 * CORE
 ******************************************************************************
 */

void
cnn_pool_d28x28_p2x2
(hls::stream<axiu32_t> &inStream,
hls::stream<axiu32_t> &outStream,
uint32_t ctrl)
{
#pragma HLS INTERFACE axis port=outStream
#pragma HLS INTERFACE axis port=inStream
#pragma HLS INTERFACE s_axilite port=ctrl bundle=CTRL
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL

	ufixp32_t lineBuffer[POOL_DIM - 1][INPUT_COLS];
	ufixp32_t window[POOL_DIM][POOL_DIM];
	ufixp32_t windowRightCol[POOL_DIM];
#pragma HLS ARRAY_PARTITION variable=lineBuffer complete dim=1
#pragma HLS ARRAY_PARTITION variable=window complete dim=0
#pragma HLS ARRAY_PARTITION variable=windowRightCol complete

	// Load initial values into line buffer
	for (int x = INPUT_COLS - POOL_DIM_Q1 - 1; x < INPUT_COLS; x++) {
#pragma HLS PIPELINE
		axiu32_t valIn = inStream.read();
		lineBuffer[POOL_DIM_Q1 - 1][x] = valIn.data;
	}

	// Fill values into line buffer values
	for (int y = POOL_DIM_Q1; y < POOL_DIM - 1; y++) {
		for (int x = 0; x < INPUT_COLS; x++) {
#pragma HLS PIPELINE
			axiu32_t valIn = inStream.read();
			lineBuffer[y][x] = valIn.data;
		}
	}

	int readCount = INPUT_COLS * POOL_DIM_Q1 + POOL_DIM_Q1 + 1;
	int writeCount = 0;

	// Fill initial values into window
	for (int y = POOL_DIM_Q1; y < POOL_DIM; y++) {
		for (int x = POOL_DIM_Q1; x < POOL_DIM; x++) {
#pragma HLS PIPELINE
			window[y][x] = lineBuffer[y - 1][x + INPUT_COLS - POOL_DIM];
		}
	}

	// Start pooling
	for (int y = 0; y < INPUT_ROWS; y++) {
		for (int x = 0; x < INPUT_COLS; x++) {
#pragma HLS PIPELINE

			// Calculate and write output pixel
			if (!poolSkip(x, y)) {

				axiu32_t valOut;

				writeCount++;

				valOut.data = singleOperation(window, y, x, ctrl & CTRL_OP_MSK);
				valOut.keep = AXI_STREAM_KEEP;
				valOut.strb = AXI_STREAM_STRB;
				valOut.user = AXI_STREAM_USER;
				valOut.dest = AXI_STREAM_DEST;
				valOut.id   = AXI_STREAM_ID;
				valOut.last = isLast(writeCount);

				outStream.write(valOut);
			}

			// Shift line buffer column up
			windowRightCol[0] = lineBuffer[0][x];
			for (int y = 1; y < POOL_DIM - 1; y++) {
				windowRightCol[y] = lineBuffer[y - 1][x] = lineBuffer[y][x];
			}

			// Read input value
			axiu32_t valIn;
			if (readCount < INPUT_ROWS * INPUT_COLS) {
				valIn = inStream.read();
				readCount++;
			}
			windowRightCol[POOL_DIM - 1] = lineBuffer[POOL_DIM - 2][x] = valIn.data;

			// Shift window left
			for (int y = 0; y < POOL_DIM; y++) {
				for (int x = 0; x < POOL_DIM - 1; x++) {
					window[y][x] = window[y][x + 1];
				}
			}

			// Update rightmost window values
			for (int y = 0; y < POOL_DIM; y++) {
				window[y][POOL_DIM - 1] = windowRightCol[y];
			}
		}
	}
}
