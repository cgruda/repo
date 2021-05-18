/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#include "cnn_task.h"
#include "fixed_point.h"
#include <stdlib.h>
#include <stdint.h>
#if (PLATFORM == FPGA)
#include "xil_printf.h"
#else
#include <stdio.h>
#endif

void fixed_point_print(uint32_t num)
{
	float fltnum = fixed_2_float(num);
	print_float(fltnum);
}

uint32_t fixed_point_mul(uint32_t a, uint32_t b)
{
	uint32_t result = 0;
	int sign = !SIGN_EQ(a, b);

	a = (a & SIGN_BIT) ? -a : a;
	b = (b & SIGN_BIT) ? -b : b;

	result = ((a * b) >> FIXP_FRACTION_WIDTH);

	return sign ? -result : result;
}

uint32_t fixed_point_div(uint32_t a, uint32_t b)
{
	uint32_t result = 0;
	int sign = !SIGN_EQ(a, b);

	a = (a & SIGN_BIT) ? -a : a;
	b = (b & SIGN_BIT) ? -b : b;

	result = ((a << FIXP_FRACTION_WIDTH) / b);

	return sign ? -result : result;
}

float fixed_2_float(uint32_t fixed)
{
	if (fixed & SIGN_BIT) {
		return -FIXED_2_FLOAT(-fixed);
	} else {
		return FIXED_2_FLOAT(fixed);
	}
}

uint32_t float_2_fixed(float flt)
{
	if (flt < 0) {
		float absflt = flt * -1;
		return -FLOAT_2_FIXED(absflt);
	} else {
		return FLOAT_2_FIXED(flt);
	}
}
