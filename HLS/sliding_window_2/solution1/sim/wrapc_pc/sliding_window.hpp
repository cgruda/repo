

#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <stdint.h>


#define HEIGHT 512
#define WIDTH 512

#define WIN_SIZE 3 // must be odd
#define HALF_SIZE (((WIN_SIZE) - 1) / 2)
#define KERNEL_SIZE (WIN_SIZE * WIN_SIZE)

typedef ap_axis<32, 2, 5, 6> uint32axis_t;

void my_filter_buffer(hls::stream<uint32axis_t>& in_stream,
					  hls::stream<uint32axis_t>& out_stream,
					  uint8_t kernel[KERNEL_SIZE]);
