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

#include <hls_opencv.h>
#include <stdio.h>
#include "sliding_window.h"

extern "C" {
	#include "main.h"
	#include "tasks.h"
	#include "cnn.h"
};

/*
 ==============================================================================
 * DEFINES
 ==============================================================================
 */

// #define INPUT_PATH "D:\\School\\Project\\repo\\HLS\\sliding_window_2\\img0.png"
// #define OUTPUT_PATH "D:\\School\\Project\\repo\\HLS\\sliding_window_2\\out_img0.png"
// #define STRIDE 1
#define IN_DHEIGHT 512
#define IN_DWIDTH 512
#define OUT_DHEIGHT (IN_DHEIGHT - WIN_SIZE + 1)
#define OUT_DWIDTH (IN_DWIDTH - WIN_SIZE + 1)

/*
 ==============================================================================
 * FIXED POINT DEFINES AND MACROS
 ==============================================================================
 */

/*
 ==============================================================================
 * MAIN
 ==============================================================================
 */

int main()
{
	// cv::Mat src = cv::imread(INPUT_PATH, CV_LOAD_IMAGE_GRAYSCALE);
	// printf("size=%d x %d\n", src.cols, src.rows);
	// cv::Mat dst = cv::Mat(OUT_DHEIGHT, OUT_DWIDTH, CV_8U);

	printf("$$$$$$$$$$$$$$ NEW RUN $$$$$$$$$$$$$$\n");


	int option;
	bool exit = false;
	struct env cnn_env = {0};
	matrix_t hw_conv_result;

	hls::stream<uint32axis_t> stream_in;
	hls::stream<uint32axis_t> stream_out;

	uint8_t ctrl = 0;

	UI_PRINT(UI_WELCOME);

	char hw_matrix_name[] = "hw_result";
	init_matrices(&cnn_env);
	int res = matrix_init(&hw_conv_result,
						  hw_matrix_name,
			              512 - 3 + 1,
						  512 - 3 + 1,
						  512 - 3 + 1,
						  512 - 3 + 1,
			              0, 0);
	if (res != E_SUCCESS) {
		return res;
	}

	cnn_sw(&cnn_env);

	// Tested data values should be in a range of 0.0 to 1.0
	// Input image pixels are in a range of 0 to 255
	// Read & convert image
	for (int y = 0; y < IN_DHEIGHT; y++)
	{
		for (int x = 0; x < IN_DWIDTH; x++)
		{
			uint32axis_t valIn;
			uint8_t a = cnn_env.m_image.data[(y * cnn_env.m_image.cols) + x];
			// uint8_t a = src.at<uint8_t>(y, x);
			fixp32_t b = UINT8_TO_32FIXP(a);
			double v = ((double)a + 0.5) / double(255.0);
			fixp32_t c = b / 255;
			// printf("[%d:%d] %d -> 0x%08x --> ", y, x, a, b);
			// printf("%d.%02d (%f)\n", (c >> FRACTION_OFT), FIXP32_FRACTION_GET(c), v);
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
	printf("Starting bilateral_filter…\n");
	my_filter_buffer(stream_in, stream_out, cnn_env.m_kernel.data, ctrl);
	printf("bilateral_filter finished!\n");

	// Convert & write image
	for (int y = 0; y < OUT_DHEIGHT; y++)
	{
		for (int x = 0; x < OUT_DWIDTH; x++)
		{
			uint32axis_t valOut;
			valOut = stream_out.read();
			fixp32_t value = valOut.data;
			hw_conv_result.data[y * hw_conv_result.cols + x] = (uint8_t)((value * 255) >> FRACTION_OFT);
			// dst.at<uint8_t>(y, x) = uint8_t((value * 255) >> FRACTION_OFT);
		}
	}
	// cv::imwrite(OUTPUT_PATH, dst);
	res = matrix_comp(&hw_conv_result, &cnn_env.m_conv_result);

	free_resources(&cnn_env);
	matrix_free(&hw_conv_result);
	UI_PRINT(UI_GOODBYE);
	return 0;
}
