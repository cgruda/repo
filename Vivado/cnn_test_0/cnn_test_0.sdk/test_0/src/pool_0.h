/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#ifndef SRC_POOL_0_H_
#define SRC_POOL_0_H_

/*
 * INCLUDES
 ******************************************************************************
 */

#include "xcnn_pool_d92x92_p2x2.h"

/*
 * DEFINES
 ******************************************************************************
 */

#define CONV_0_HW_NAME XCnn_conv_d94x94_k3x3

#define CONV_0_KERNEL_DIM 3
#define CONV_0_KERNEL_LEN (CONV_0_KERNEL_DIM * CONV_0_KERNEL_DIM)

/*
 * TYPES
 ******************************************************************************
 */

typedef XCnn_pool_d92x92_p2x2 pool_0_hw;
typedef XCnn_pool_d92x92_p2x2_Config pool_0_hw_cfg;

/*
 * DECLARATIONS
 ******************************************************************************
 */

int pool_0_init(pool_0_hw *p_hw, u16 device_id);
pool_0_hw_cfg *pool_0_config_lookup(u16 device_id);
int pool_0_config_init(pool_0_hw *p_hw, pool_0_hw_cfg *p_hw_cfg);
void pool_0_start(pool_0_hw *p_hw);
u32 pool_0_is_done(pool_0_hw *p_hw);
u32 pool_0_is_idle(pool_0_hw *p_hw);
u32 pool_0_is_ready(pool_0_hw *p_hw);
void pool_0_auto_restart_enable(pool_0_hw *p_hw);
void pool_0_auto_restart_disable(pool_0_hw *p_hw);
void pool_0_ctrl_set(pool_0_hw *p_hw, u32 val);
u32 pool_0_ctrl_get(pool_0_hw *p_hw);


#endif /* SRC_POOL_0_H_ */
