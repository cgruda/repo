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
#include <opencv2/core/core.hpp>
#include <hls_opencv.h>
#include "testUtils.h"

/*
 ==============================================================================
 * MAIN
 ==============================================================================
 */

uint8_t kernel[KERNEL_DIM][KERNEL_DIM] = { {0, 0, 0} , {0, 1, 0}, {0, 0, 0}};

char outImage[IMG_ROWS][IMG_COLS];
char outImageRef[IMG_ROWS][IMG_COLS];

int main()
{
	printf("Load image %s\n", INPUT_IMAGE_CORE);
	cv::Mat imageSrc;
	imageSrc = cv::imread(INPUT_IMAGE_CORE);
	cv::cvtColor(imageSrc, imageSrc, CV_BGR2GRAY);
	printf("image rows=%d, cols=%d\n", imageSrc.rows, imageSrc.cols);

	hls::stream<uint8axis_t> inputStream;
	hls::stream<uint8axis_t> outputStream;

	cv::Mat imgCvOut(cv::Size(imageSrc.cols, imageSrc.rows), CV_8UC1, outImage, cv::Mat::AUTO_STEP);
	cv::Mat imgCvOutRef(cv::Size(imageSrc.cols, imageSrc.rows), CV_8UC1, outImageRef, cv::Mat::AUTO_STEP);

	for (int r = 0; r < imageSrc.rows; r++) {
		for(int c = 0; c < imageSrc.cols; c++) {
			uint8axis_t valIn;
			valIn.data = imageSrc.at<uint8_t>(r,c);
			valIn.keep = 1;
			valIn.strb = 1;
			valIn.user = 1;
			valIn.id = 0;
			valIn.dest = 0;

			inputStream << valIn;
		}
	}

	printf("calling reference function\n");
	conv2dByHand(imageSrc, outImageRef, kernel, KERNEL_DIM);
	printf("reference function done!\n");

	if (imageSrc.rows < 12) {
		printSmallMatrixCVChar("Ref Core", imgCvOutRef);
	} else {
		printf("saving image Ref\n");
		saveImage(std::string(OUTPUT_IMAGE_REF), imgCvOutRef);
	}

	printf("calling core function\n");
	cnn_sw_3x3(inputStream, outputStream, kernel, 0);
	printf("core function done\n");

	for (int r = 0; r < imageSrc.rows; r++) {
		for(int c = 0; c < imageSrc.cols; c++) {
			uint8axis_t valOut;
			outputStream.read(valOut);
		}
	}

	if (imageSrc.rows < 12) {
		printSmallMatrixCvChar("Ref Core", imgCvOut);
	} else {
		printf("saving image Ref\n");
		saveImage(std::string(OUTPUT_IMAGE_REF), imgCvOut);
	}

	return 0;
}
