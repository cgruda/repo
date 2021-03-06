/**
 * HLS
 * CNN_SW_3x3
 *
 * messages.h
 * 
 */

/*
 ==============================================================================
 * INCLUDES
 ==============================================================================
 */

#include "cnn_sw_3x3.h"

/*
 ==============================================================================
 * DEFENITIONS
 ==============================================================================
 */

void cnn_sw_3x3(hls::stream<uint8axis_t> &in_stream,
				hls::stream<uint8axis_t> &out_stream,
				uint8_t kernel[KERNEL_SIZE],
				uint8_t opp)
{
#pragma HLS INTERFACE axis port=in_stream
#pragma HLS INTERFACE axis port=out_stream
#pragma HLS INTERFACE s_axilite port=kernel bundle=KERNEL_BUS
#pragma HLS INTERFACE s_axilite port=opp bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL_BUS

	hls::LineBuffer<KERNEL_DIM, IMG_COLS, uint8_t> line_buffer;
	hls::Window<KERNEL_DIM, KERNEL_DIM, int16_t> window;

	int col = 0;
	int row = 0;
	int pixel_convolved = 0;

	int wait_ticks = (IMG_COLS * (KERNEL_DIM - 1) + KERNEL_DIM) / 2;
	int sent_pixels = 0;

	uint8_t pixel;

	uint8axis_t axisch_data_out;
	uint8axis_t axisch_curr_pix;

	for (int idx_pix = 0; idx_pix < IMG_SIZE; idx_pix++) {
#pragma HLS PIPELINE

		// read pixel from input stream
		axisch_curr_pix = in_stream.read();
		pixel = axisch_curr_pix.data;

		// insert the arrived pixel into ...
		line_buffer.shift_pixels_up(col);
		line_buffer.insert_bottom_row(pixel, col);

		for (int win_row = 0; win_row < KERNEL_DIM; win_row++) {
			for (int win_col = 0; win_col < KERNEL_DIM; win_col++) {
				int16_t val = (int16_t)line_buffer.getval(win_row, win_col + pixel_convolved);

				val = (int16_t)kernel[(row * KERNEL_DIM) + col] * val;
				window.insert(val, row, col);
			}
		}

		int16_t val_out = 0;
		if ((row >= KERNEL_DIM - 1) && (col >= KERNEL_DIM - 1)) {
			switch (opp) {
			case 0:
				val_out = sum_window(&window);
				if (val_out < 0)
					val_out = 0;
				break;
			default:
				break;
			}

			pixel_convolved++;
		}

		if (col < IMG_COLS) {
			col++;
		} else {
			col = 0;
			row++;
			pixel_convolved = 0;
		}
	}

}

uint16_t sum_window(hls::Window<KERNEL_DIM, KERNEL_DIM, int16_t> *window)
{
	int16_t accum = 0;

	for (int r = 0; r < KERNEL_DIM; r++) {
		for (int c = 0; c < KERNEL_DIM; c++) {
			accum = accum + (int16_t)window->getval(r, c);
		}
	}
	return accum;
}
