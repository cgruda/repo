/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#include "fixed_point.h"
#include <stdint.h>
#include <stdio.h>

void fixed_point_print(uint32_t num)
{
	if (num & SIGN_BIT) {
		printf("-%.6f ", FIXED_2_FLOAT(-num));
	} else {
		printf("%.6f ", FIXED_2_FLOAT(num));
	}
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
