/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#ifndef _FIXED_POINT_H_
#define _FIXED_POINT_H_

#include <stdint.h>

#define FIXP_FRACTION_WIDTH 10
#define FIXP_FRACTION_DIV (1 << FIXP_FRACTION_WIDTH)
#define FLOAT_2_FIXED(d) (uint32_t)((d) * FIXP_FRACTION_DIV)
#define FIXED_2_FLOAT(d) (float)(d / (float)FIXP_FRACTION_DIV)
#define SIGN_BIT 0x80000000
#define BIT(pos) (1 << (pos))
#define SIGN_EQ(a, b) (!(((a) & SIGN_BIT) ^ ((b) & SIGN_BIT)))

void fixed_point_print(uint32_t num);
uint32_t fixed_point_mul(uint32_t a, uint32_t b);
uint32_t fixed_point_div(uint32_t a, uint32_t b);
uint32_t float_2_fixed(float flt);
float fixed_2_float(uint32_t fixed);

#endif // _FIXED_POINT_H_
