
#include "core.h"
#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <stdio.h>
#include "fixed_point.h"


int main()
{
	hls::stream<axiu32_t> inStream;
	hls::stream<axiu32_t> outStream;

	uint32_t weight[WEIGHT_ROWS][WEIGHT_COLS] = {0};
	uint32_t input[INPUT_LEN] = {0};
	uint32_t bias[BIAS_LEN] = {0};
	uint32_t ctrl = CTRL_ACTIVATION_NONE;

	for (int i = 0; i < WEIGHT_ROWS; i++) {
		for (int j = 0; j < WEIGHT_COLS; j++) {
			weight[i][j] = FLOAT_2_FIXED((i == 1) || (i == 2));
		}
	}
	for (int k = 0; k < BIAS_LEN; k++) {
		bias[k] = -FLOAT_2_FIXED(6);
	}
	for (int k = 0; k < INPUT_LEN; k++) {
		input[k] = FLOAT_2_FIXED(2.5);
	}

	for (int idx = 0; idx < INPUT_LEN; idx++) {
		axiu32_t valIn;
		valIn.data = input[idx];
		valIn.keep = 0xF;
		valIn.strb = 1;
		valIn.user = 1;
		valIn.id = 0;
		valIn.dest = 0;
		inStream << valIn;
	}

	cnn_fc_i50_o10(inStream, outStream, weight, bias, ctrl);

	for (int i = 0; i < OUTPUT_LEN; i++) {
		axiu32_t valOut;
		outStream.read(valOut);
		printf("out[%d]=", i);
		fixed_point_print(valOut.data);
		printf("\n");
	}

	return 0;
}
