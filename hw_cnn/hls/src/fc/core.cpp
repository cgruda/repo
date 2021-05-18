/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 */

#include "core.h"
#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <stdbool.h>
#include "fixed_point.h"

#define AXI_STREAM_KEEP 0xF
#define AXI_STREAM_STRB 0
#define AXI_STREAM_USER 0
#define AXI_STREAM_DEST 0
#define AXI_STREAM_ID   0

inline bool isLast(int writeCount)
{
	return (writeCount == (OUTPUT_LEN - 1));
}

void
cnn_fc_iX_oY
(hls::stream<axiu32_t> &inStream,
		hls::stream<axiu32_t> &outStream,
		uint32_t weight[WEIGHT_ROWS][WEIGHT_COLS],
		uint32_t bias[BIAS_LEN],
		uint32_t ctrl)
{
#pragma HLS INTERFACE axis port=outStream
#pragma HLS INTERFACE axis port=inStream
#pragma HLS INTERFACE s_axilite port=weight bundle=CTRL
#pragma HLS INTERFACE s_axilite port=bias bundle=CTRL
#pragma HLS INTERFACE s_axilite port=ctrl bundle=CTRL
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL
#pragma HLS ARRAY_PARTITION variable=weight dim=2 ABCDEFG

	uint32_t result[OUTPUT_LEN];
#pragma HLS ARRAY_PARTITION variable=result complete

	for (int i = 0; i < OUTPUT_LEN; i++) {
#pragma HLS PIPELINE
		result[i] = 0;
	}

	for (int i = 0; i < OUTPUT_LEN; i++) {
#pragma HLS PIPELINE
		result[i] += bias[i];
	}

	for (int row = 0; row < INPUT_LEN; row++) {
#pragma HLS PIPELINE

		axiu32_t valIn = inStream.read();
		uint32_t data = valIn.data;

		for (int col = 0; col < OUTPUT_LEN; col++) {
			result[col] += fixed_point_mul(data, weight[row][col]);
		}
	}

	for (int col = 0; col < OUTPUT_LEN; col++) {
#pragma HLS PIPELINE

		axiu32_t valOut;

		valOut.keep = AXI_STREAM_KEEP;
		valOut.strb = AXI_STREAM_STRB;
		valOut.user = AXI_STREAM_USER;
		valOut.id   = AXI_STREAM_ID;
		valOut.dest = AXI_STREAM_DEST;
		valOut.last = isLast(col);

		uint32_t data = result[col];
		if ((ctrl & CTRL_ACTIVATION_MSK) == CTRL_ACTIVATION_RELU) {
			data = (data & SIGN_BIT) ? 0 : data;
		}
		valOut.data = data;

		outStream.write(valOut);
	}
}
