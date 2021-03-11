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

extern "C" {
	#include "main.h"
	#include "tasks.h"
	#include "cnn.h"
	#include "matrix.h"
};

#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <stdint.h>
#include <stdio.h>

/*
 * DEFINES
 ******************************************************************************
 */

// #define STRIDE 1
#define OUT_DHEIGHT (INPUT_IMAGE_ROWS - KERNEL_DIM + 1)
#define OUT_DWIDTH (INPUT_IMAGE_COLS - KERNEL_DIM + 1)

/*
 * MAIN
 ******************************************************************************
 */

int main()
{
	int option;
	bool exit = false;
	struct env cnn_env = {0};
	matrix_t hw_conv_result = {0};

	hls::stream<uint32axis_t> stream_in;
	hls::stream<uint32axis_t> stream_out;

	uint8_t ctrl = 0;

	UI_PRINT(UI_WELCOME);

	char hw_matrix_name[] = "hw_result";
	init_matrices_demo(&cnn_env);
	int res = matrix_init(&hw_conv_result,
						  hw_matrix_name,
						  OUT_DHEIGHT,
						  OUT_DHEIGHT,
						  OUT_DWIDTH,
						  OUT_DWIDTH,
			              0, 0);
	if (res != E_SUCCESS) {
		return res;
	}

	UI_PRINT("Starting SW CNN\n");
	cnn_sw_norm(&cnn_env);
	//cnn_sw(&cnn_env);
	UI_PRINT("finished SW CNN\n");

	// Tested data values should be in a range of 0.0 to 1.0
	// Input image pixels are in a range of 0 to 255
	// Read & convert image
	for (int y = 0; y < INPUT_IMAGE_ROWS; y++)
	{
		for (int x = 0; x < INPUT_IMAGE_COLS; x++)
		{
			uint32axis_t valIn;
			data_t a = cnn_env.m_image.data[(y * cnn_env.m_image.cols) + x];
			fixp32_t b = UINT8_TO_32FIXP(a);
			// double v = (double)a / double(255.0);
			fixp32_t c = b / 255;
			// UI_PRINT("[%d:%d] %d -> 0x%08x := ", y, x, a, c);
			// UI_PRINT("%d.%06d (%f)\n", (c >> FRACTION_OFT), FIXP32_FRACTION_GET(c), v);
			valIn.data = c;
			valIn.keep = 1;
			valIn.strb = 1;
			valIn.user = 1;
			valIn.id = 0;
			valIn.dest = 0;

			stream_in << valIn;
		}
	}

	// Apply bilateral filter
	UI_PRINT("Starting HW CNN\n");
	my_filter_buffer(stream_in, stream_out, cnn_env.m_kernel.data, cnn_env.m_bias.data, ctrl);
	UI_PRINT("finished HW CNN\n");

	// Convert & write image
	for (int y = 0; y < OUT_DHEIGHT; y++)
	{
		for (int x = 0; x < OUT_DWIDTH; x++)
		{
			uint32axis_t valOut;
			valOut = stream_out.read();
			fixp32_t value = valOut.data;
			// UI_PRINT("0x%06x := %d.%06d\n", value, (value >> FRACTION_OFT), FIXP32_FRACTION_GET(value));
			hw_conv_result.data[y * hw_conv_result.cols + x] = (data_t)((value * 255) >> FRACTION_OFT);
		}
	}

	// compare HW and SW
	// res = matrix_comp(&hw_conv_result, &cnn_env.m_conv_result);

	// matrix_print(&hw_conv_result);
	// matrix_print(&cnn_env.m_conv_result);

	double prec;
	cnn_precision_loss_calc(&cnn_env.m_conv_result, &hw_conv_result, &prec);
	printf("precision = %f\n", prec);

	// free resources
	free_resources(&cnn_env);
	matrix_free(&hw_conv_result);
	UI_PRINT(UI_GOODBYE);
	return 0;
}
