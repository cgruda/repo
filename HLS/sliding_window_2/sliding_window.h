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

#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <stdint.h>

/*
 ==============================================================================
 * DEFINES
 ==============================================================================
 */

#define HEIGHT 512
#define WIDTH 512
#define KERNEL_BUS "kernel_bus"
#define WIN_SIZE 3 // must be odd
#define HALF_SIZE (((WIN_SIZE) - 1) / 2)
#define KERNEL_SIZE (WIN_SIZE * WIN_SIZE)


#define FRACTION_OFT 16
#define FRACTION_MSK 0x0000ffff
#define FRACTION_DIV (1 << FRACTION_OFT)
#define UINT32_TO_32FIXP(num) ((num) << FRACTION_OFT)
#define UINT8_TO_32FIXP(num) ((uint32_t)(num) << FRACTION_OFT)
#define FIXP32_FRACTION_GET(num) (((num) & FRACTION_MSK) * 100 / FRACTION_DIV) // 2 points

#define CTRL_OPP_OFT    0
#define CTRL_OPP_MSK    0x03
#define CTRL_PAD_OFT    2
#define CTRL_PAD_MSK    0x04
#define CTRL_STRIDE_OFT 3
#define CTRL_STRIDE_MSK 0xF8

#define CTRL_PADD_ENABLE	CTRL_PAD_MSK

/*
 ==============================================================================
 * TYPES
 ==============================================================================
 */

typedef uint32_t fixp32_t;
typedef ap_axis<32, 2, 5, 6> uint32axis_t;

/*
 ==============================================================================
 * DECLARATIONS
 ==============================================================================
 */

void my_filter_buffer(hls::stream<uint32axis_t>& in_stream,
					  hls::stream<uint32axis_t>& out_stream,
					  uint8_t kernel[KERNEL_SIZE],
					  uint8_t ctrl);
