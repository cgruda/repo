/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * This header file holds fixed point defines and macros.
 * the data type used when using this header is uint32_t,
 * which is also typdefed to be 'ufixp32_t'
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#ifndef __FIXED_POINT_H__
#define __FIXED_POINT_H__

/*
 * INCLUDES
 ******************************************************************************
 */

#include <stdint.h>
#include <stdio.h>

/*
 * FIXED POINT SYSTEM
 ******************************************************************************
 */

typedef uint32_t ufixp32_t;

#define FIXP_FRACTION_WIDTH 10
#define FIXP_FRACTION_DIV (1 << FIXP_FRACTION_WIDTH)

#define FLOAT_2_FIXED(d) (ufixp32_t)((d) * FIXP_FRACTION_DIV)
#define FIXED_2_FLOAT(d) (float)(d / (float)FIXP_FRACTION_DIV)

#define SIGN_BIT 0x80000000
#define BIT(pos) (1 << (pos))
#define SIGN_EQ(a, b) (!(((a) & SIGN_BIT) ^ ((b) & SIGN_BIT)))

/*
 * INLINE FUNCTIONS
 ******************************************************************************
 */

inline void fixed_point_print(ufixp32_t num)
{
	if (num & SIGN_BIT) {
		printf("0x%08X = -%.6f", -num, FIXED_2_FLOAT(-num));
	} else {
		printf("0x%08X = %.6f", num, FIXED_2_FLOAT(num));
	}
}

inline ufixp32_t fixed_point_mul(ufixp32_t a, ufixp32_t b)
{
	ufixp32_t result = 0;
	int sign = !SIGN_EQ(a, b);

	a = (a & SIGN_BIT) ? -a : a;
	b = (b & SIGN_BIT) ? -b : b;

	result = ((a * b) >> FIXP_FRACTION_WIDTH);

	return sign ? -result : result;
}

inline ufixp32_t fixed_point_div(ufixp32_t a, ufixp32_t b)
{
	ufixp32_t result = 0;
	int sign = !SIGN_EQ(a, b);

	a = (a & SIGN_BIT) ? -a : a;
	b = (b & SIGN_BIT) ? -b : b;

	result = ((a << FIXP_FRACTION_WIDTH) / b);

	return sign ? -result : result;
}


#endif // __FIXED_POINT_H__
