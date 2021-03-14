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

inline bool bounds_ok(int y, int x,
		uint32_t input_image_rows, uint32_t input_image_cols)
{
	return (0 <= y && y < input_image_rows && 0 <= x && x < input_image_cols);
}

inline bool pad_skip(int x, int y,
		uint32_t input_image_rows, uint32_t input_image_cols,
		uint32_t kernel_dim, uint32_t kernel_dim_q1, uint8_t ctrl)
{
	return (!(ctrl & CTRL_PADD_ENABLE) &&
			((x < kernel_dim_q1) ||
			 (y < kernel_dim_q1) ||
			 (x > input_image_cols - kernel_dim_q1 - 1) ||
			 (y > input_image_rows - kernel_dim_q1 - 1)));
}

inline fixp32_t single_operation(fixp32_t window[KERNEL_DIM_MAX][KERNEL_DIM_MAX],
		uint32_t input_image_rows, uint32_t input_image_cols,
		uint32_t kernel_dim, uint32_t kernel_dim_q1,
		uint32_t kernel[KERNEL_LEN_MAX],
		uint32_t bias[KERNEL_LEN_MAX],
		int y, int x)
{
	fixp32_t result = 0;

	for (int i = -kernel_dim_q1; i <= kernel_dim_q1; i++)
	{
		for (int j = -kernel_dim_q1; j <= kernel_dim_q1; j++)
		{
			if (bounds_ok(y + i, x + j, input_image_rows, input_image_cols))
			{
				result += window[i + kernel_dim_q1][j + kernel_dim_q1] * kernel[((i + kernel_dim_q1) * kernel_dim_q1) + (j + kernel_dim_q1)] + bias[((i + kernel_dim_q1) * kernel_dim) + (j + kernel_dim_q1)];
			}
		}
	}

	return result;
}

/*
 * HLS IP BLOCK
 ******************************************************************************
 */

void conv(hls::stream<uint32axis_t>& in_stream,
		  hls::stream<uint32axis_t>& out_stream,
		  uint32_t input_image_rows, uint32_t input_image_cols,
		  uint32_t kernel_dim,
		  uint32_t kernel[KERNEL_LEN_MAX],
		  uint32_t bias[KERNEL_LEN_MAX],
		  uint32_t ctrl)
{
#pragma HLS INTERFACE axis port=out_stream
#pragma HLS INTERFACE axis port=in_stream
#pragma HLS INTERFACE s_axilite port=kernel bundle=KERNEL_BUS
#pragma HLS INTERFACE s_axilite port=bias bundle=KERNEL_BUS
#pragma HLS INTERFACE s_axilite port=image_rows bundle=CTRL
#pragma HLS INTERFACE s_axilite port=image_cols bundle=CTRL
#pragma HLS INTERFACE s_axilite port=kernel_dim bundle=CTRL
#pragma HLS INTERFACE s_axilite port=ctrl bundle=CTRL
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL

#pragma HLS ARRAY_PARTITION variable=kernel complete
#pragma HLS ARRAY_PARTITION variable=bias complete

	fixp32_t line_buf[KERNEL_DIM_MAX - 1][INPUT_IMAGE_COLS_MAX];
	fixp32_t window[KERNEL_DIM_MAX][KERNEL_DIM_MAX];
	fixp32_t right[KERNEL_DIM_MAX];

#pragma HLS ARRAY_PARTITION variable=line_buf complete dim=1
#pragma HLS ARRAY_PARTITION variable=window complete dim=0
#pragma HLS ARRAY_PARTITION variable=right complete

	uint32axis_t val_in;
	uint32axis_t val_out;

	int kernel_dim_q1 = ((kernel_dim - 1) / 2);

	// Load initial values into line buffer
	for (int x = input_image_cols - kernel_dim_q1 - 1; x < input_image_cols; x++)
	{
#pragma HLS PIPELINE
		val_in = in_stream.read();
		line_buf[kernel_dim_q1 - 1][x] = val_in.data;
	}

	for (int y = kernel_dim_q1; y < kernel_dim - 1; y++)
	{
		for (int x = 0; x < input_image_cols; x++)
		{
#pragma HLS PIPELINE
			val_in = in_stream.read();
			line_buf[y][x] = val_in.data;
		}
	}

	int read_count = input_image_cols * kernel_dim_q1 + kernel_dim_q1 + 1;

    // Copy initial values into window
	for (int y = kernel_dim_q1; y < kernel_dim; y++)
	{
		for (int x = kernel_dim_q1; x < kernel_dim; x++)
		{
#pragma HLS PIPELINE
			window[y][x] = line_buf[y - 1][x + input_image_cols - kernel_dim];
		}
	}

	// Start convolution
	for (int y = 0; y < input_image_rows; y++)
	{
		for (int x = 0; x < input_image_cols; x++)
		{
#pragma HLS PIPELINE

			// Write output value
			if (!pad_skip(x, y, input_image_rows, input_image_cols, kernel_dim, kernel_dim_q1, ctrl))
			{
				val_out.data = single_operation(window,
												input_image_rows,
												input_image_cols,
												kernel_dim,
												kernel_dim_q1,
												kernel,
												bias,
												y, x);
				val_out.keep = 1;
				val_out.strb = 1;
				val_out.user = 1;
				val_out.id = 0;
				val_out.dest = 0;
				out_stream.write(val_out);
			}

			// Shift line buffer column up
			right[0] = line_buf[0][x];
			for (int y = 1; y < kernel_dim - 1; y++)
			{
				right[y] = line_buf[y - 1][x] = line_buf[y][x];
			}

			// Read input value
			val_in.data = 0;
			if (read_count < input_image_rows * input_image_cols)
			{
				val_in = in_stream.read();
				read_count++;
			}
			right[kernel_dim - 1] = line_buf[kernel_dim - 2][x] = val_in.data;

			// Shift window left
			for (int y = 0; y < kernel_dim; y++)
			{
				for (int x = 0; x < kernel_dim - 1; x++)
				{
					window[y][x] = window[y][x + 1];
				}
			}

			// Update rightmost window values
			for (int y = 0; y < kernel_dim; y++)
			{
				window[y][kernel_dim - 1] = right[y];
			}
		}
	}
}
