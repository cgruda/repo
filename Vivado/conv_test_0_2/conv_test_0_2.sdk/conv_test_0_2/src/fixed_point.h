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

void fixed_point_print(ufixp32_t num);
ufixp32_t fixed_point_mul(ufixp32_t a, ufixp32_t b);
ufixp32_t fixed_point_div(ufixp32_t a, ufixp32_t b);


#endif // __FIXED_POINT_H__
