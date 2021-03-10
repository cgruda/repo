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

#include "sliding_window.h"

/*
 * DEFENITIONS
 ******************************************************************************
 */

inline bool bounds_ok(int y, int x)
{
	return (0 <= y && y < INPUT_IMAGE_ROWS && 0 <= x && x < INPUT_IMAGE_COLS);
}

inline bool pad_skip(int x, int y, uint8_t ctrl)
{
	return (!(ctrl & CTRL_PADD_ENABLE) &&
			((x < KERNEL_DIM_Q1) ||
			 (y < KERNEL_DIM_Q1) ||
			 (x > INPUT_IMAGE_COLS - KERNEL_DIM_Q1) ||
			 (y > INPUT_IMAGE_ROWS - KERNEL_DIM_Q1)));
}

inline fixp32_t single_operation(fixp32_t window[KERNEL_DIM][KERNEL_DIM],
								 uint8_t kernel[KERNEL_LEN],
								 uint8_t bias[KERNEL_LEN],
								 int y,
								 int x)
{
	fixp32_t result = 0;

	for (int i = -KERNEL_DIM_Q1; i <= KERNEL_DIM_Q1; i++)
	{
		for (int j = -KERNEL_DIM_Q1; j <= KERNEL_DIM_Q1; j++)
		{
			if (bounds_ok(y + i, x + j))
			{
				result += window[i + KERNEL_DIM_Q1][j + KERNEL_DIM_Q1] * kernel[((i + KERNEL_DIM_Q1) * KERNEL_DIM) + (j + KERNEL_DIM_Q1)] + bias[((i + KERNEL_DIM_Q1) * KERNEL_DIM) + (j + KERNEL_DIM_Q1)];
			}
		}
	}

	return result;
}

/*
 * HLS IP BLOCK
 ******************************************************************************
 */

void my_filter_buffer(hls::stream<uint32axis_t>& in_stream,
					  hls::stream<uint32axis_t>& out_stream,
					  uint8_t kernel[KERNEL_LEN],
					  uint8_t bias[KERNEL_LEN],
					  uint8_t ctrl)
{
#pragma HLS INTERFACE axis port=out_stream
#pragma HLS INTERFACE axis port=in_stream
#pragma HLS INTERFACE s_axilite port=kernel bundle=KERNEL_BUS
#pragma HLS INTERFACE s_axilite port=ctrl bundle=CTRL
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL

#pragma HLS ARRAY_PARTITION variable=kernel complete
#pragma HLS ARRAY_PARTITION variable=bias complete

	fixp32_t line_buf[KERNEL_DIM - 1][INPUT_IMAGE_COLS];
	fixp32_t window[KERNEL_DIM][KERNEL_DIM];
	fixp32_t right[KERNEL_DIM];

#pragma HLS ARRAY_PARTITION variable=line_buf complete dim=1
#pragma HLS ARRAY_PARTITION variable=window complete dim=0
#pragma HLS ARRAY_PARTITION variable=right complete

	uint32axis_t val_in;
	uint32axis_t val_out;

	// Load initial values into line buffer
	for (int x = INPUT_IMAGE_COLS - KERNEL_DIM_Q1 - 1; x < INPUT_IMAGE_COLS; x++)
	{
#pragma HLS PIPELINE
		val_in = in_stream.read();
		line_buf[KERNEL_DIM_Q1 - 1][x] = val_in.data;
	}

	for (int y = KERNEL_DIM_Q1; y < KERNEL_DIM - 1; y++)
	{
		for (int x = 0; x < INPUT_IMAGE_COLS; x++)
		{
#pragma HLS PIPELINE
			val_in = in_stream.read();
			line_buf[y][x] = val_in.data;
		}
	}

	int read_count = INPUT_IMAGE_COLS * KERNEL_DIM_Q1 + KERNEL_DIM_Q1 + 1;

    // Copy initial values into window
	for (int y = KERNEL_DIM_Q1; y < KERNEL_DIM; y++)
	{
		for (int x = KERNEL_DIM_Q1; x < KERNEL_DIM; x++)
		{
#pragma HLS PIPELINE
			window[y][x] = line_buf[y - 1][x + INPUT_IMAGE_COLS - KERNEL_DIM];
		}
	}

	// Start convolution
	for (int y = 0; y < INPUT_IMAGE_ROWS; y++)
	{
		for (int x = 0; x < INPUT_IMAGE_COLS; x++)
		{
#pragma HLS PIPELINE

			// Write output value
			if (!pad_skip(x, y, ctrl))
			{
				val_out.data = single_operation(window, kernel, bias, y, x);;
				val_out.keep = 1;
				val_out.strb = 1;
				val_out.user = 1;
				val_out.id = 0;
				val_out.dest = 0;
				out_stream.write(val_out);
			}

			// Shift line buffer column up
			right[0] = line_buf[0][x];
			for (int y = 1; y < KERNEL_DIM - 1; y++)
			{
				right[y] = line_buf[y - 1][x] = line_buf[y][x];
			}

			// Read input value
			val_in.data = 0;
			if (read_count < INPUT_IMAGE_ROWS * INPUT_IMAGE_COLS)
			{
				val_in = in_stream.read();
				read_count++;
			}
			right[KERNEL_DIM - 1] = line_buf[KERNEL_DIM - 2][x] = val_in.data;

			// Shift window left
			for (int y = 0; y < KERNEL_DIM; y++)
			{
				for (int x = 0; x < KERNEL_DIM - 1; x++)
				{
					window[y][x] = window[y][x + 1];
				}
			}

			// Update rightmost window values
			for (int y = 0; y < KERNEL_DIM; y++)
			{
				window[y][KERNEL_DIM - 1] = right[y];
			}
		}
	}
}
