
#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <stdint.h>

#define INPUT_LEN 144
#define OUTPUT_LEN 50
#define WEIGHT_ROWS INPUT_LEN
#define WEIGHT_COLS OUTPUT_LEN
#define WEIGHT_LEN (WEIGHT_ROWS * WEIGHT_COLS)
#define BIAS_LEN OUTPUT_LEN

#define CTRL_ACTIVATION_MSK  0x00000001
#define CTRL_ACTIVATION_NONE 0
#define CTRL_ACTIVATION_RELU 1

typedef ap_axiu<32, 2, 5, 6> axiu32_t;

void cnn_fc_i144_o50(hls::stream<axiu32_t> &inStream,
		hls::stream<axiu32_t> &outStream,
		uint32_t weight[WEIGHT_ROWS][WEIGHT_COLS],
		uint32_t bias[BIAS_LEN],
		uint32_t ctrl);
