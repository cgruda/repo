/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Processing Element Block
 *
 * C++, Vivado HLS
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

/*
 ==============================================================================
 * INCLUDES
 ==============================================================================
 */

#include "sliding_window.h"

/*
 ==============================================================================
 * DEFENITIONS
 ==============================================================================
 */

inline bool bounds_ok(int y, int x)
{
	return (0 <= y && y < HEIGHT && 0 <= x && x < WIDTH);
}

inline bool pad_skip(int x, int y, uint8_t ctrl)
{
	return ((!(ctrl & CTRL_PADD_ENABLE)) && ((x < HALF_SIZE) || (y < HALF_SIZE)));
}

inline fixp32_t single_operation(fixp32_t window[WIN_SIZE][WIN_SIZE],
								 uint8_t kernel[KERNEL_SIZE],
								 int y,
								 int x)
{
	fixp32_t result = 0;

	for (int i = -HALF_SIZE; i <= HALF_SIZE; i++)
	{
		for (int j = -HALF_SIZE; j <= HALF_SIZE; j++)
		{
			if (bounds_ok(y + i, x + j))
			{
				result += window[i + HALF_SIZE][j + HALF_SIZE] * kernel[((i + HALF_SIZE) * WIN_SIZE) + (j + HALF_SIZE)];
			}
		}
	}

	return result;
}

void my_filter_buffer(hls::stream<uint32axis_t>& in_stream,
					  hls::stream<uint32axis_t>& out_stream,
					  uint8_t kernel[KERNEL_SIZE],
					  uint8_t ctrl)
{
#pragma HLS INTERFACE axis port=out_stream
#pragma HLS INTERFACE axis port=in_stream
#pragma HLS INTERFACE s_axilite port=kernel bundle=KERNEL_BUS
#pragma HLS INTERFACE s_axilite port=ctrl bundle=CTRL
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL

#pragma HLS ARRAY_PARTITION variable=kernel complete

	fixp32_t line_buf[WIN_SIZE - 1][WIDTH];
	fixp32_t window[WIN_SIZE][WIN_SIZE];
	fixp32_t right[WIN_SIZE];

#pragma HLS ARRAY_PARTITION variable=line_buf complete dim=1
#pragma HLS ARRAY_PARTITION variable=window complete dim=0
#pragma HLS ARRAY_PARTITION variable=right complete

	uint32axis_t val_in;
	uint32axis_t val_out;

	// Load initial values into line buffer
	int read_count = WIDTH * HALF_SIZE + HALF_SIZE + 1;
	for (int x = WIDTH - HALF_SIZE - 1; x < WIDTH; x++)
	{
#pragma HLS PIPELINE
		val_in = in_stream.read();
		line_buf[HALF_SIZE - 1][x] = val_in.data;
	}

	for (int y = HALF_SIZE; y < WIN_SIZE - 1; y++)
	{
		for (int x = 0; x < WIDTH; x++)
		{
#pragma HLS PIPELINE
			val_in = in_stream.read();
			line_buf[y][x] = val_in.data;
		}
	}

    // Copy initial values into window
	for (int y = HALF_SIZE; y < WIN_SIZE; y++)
	{
		for (int x = HALF_SIZE; x < WIN_SIZE; x++)
		{
#pragma HLS PIPELINE
			window[y][x] = line_buf[y - 1][x + WIDTH - WIN_SIZE];
		}
	}

	// Start convolution
	for (int y = 0; y < HEIGHT; y++)
	{
		for (int x = 0; x < WIDTH; x++)
		{
#pragma HLS PIPELINE

			// Write output value
			if (!pad_skip(x, y, ctrl))
			{
				val_out.data = single_operation(window, kernel, y, x);;
				val_out.keep = 1;
				val_out.strb = 1;
				val_out.user = 1;
				val_out.id = 0;
				val_out.dest = 0;
				out_stream.write(val_out);
			}

			// Shift line buffer column up
			right[0] = line_buf[0][x];
			for (int y = 1; y < WIN_SIZE - 1; y++)
			{
				right[y] = line_buf[y - 1][x] = line_buf[y][x];
			}

			// Read input value
			val_in.data = 0;
			if (read_count < HEIGHT * WIDTH)
			{
				val_in = in_stream.read();
				read_count++;
			}
			right[WIN_SIZE - 1] = line_buf[WIN_SIZE - 2][x] = val_in.data;

			// Shift window left
			for (int y = 0; y < WIN_SIZE; y++)
			{
				for (int x = 0; x < WIN_SIZE - 1; x++)
				{
					window[y][x] = window[y][x + 1];
				}
			}

			// Update rightmost window values
			for (int y = 0; y < WIN_SIZE; y++)
			{
				window[y][WIN_SIZE - 1] = right[y];
			}
		}
	}
}
