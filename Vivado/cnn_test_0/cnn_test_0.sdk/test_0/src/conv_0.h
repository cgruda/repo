/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

#ifndef SRC_CONV_0_H_
#define SRC_CONV_0_H_

/*
 * INCLUDES
 ******************************************************************************
 */

#include "xcnn_conv_d94x94_k3x3.h"
#include <xparameters.h>

/*
 * DEFINES
 ******************************************************************************
 */

#define CONV_0_HW_DEVICE_ID XPAR_CNN_CONV_D94X94_K3X3_0_DEVICE_ID

#define CONV_0_KERNEL_DIM 3
#define CONV_0_KERNEL_LEN (CONV_0_KERNEL_DIM * CONV_0_KERNEL_DIM)

/*
 * TYPES
 ******************************************************************************
 */

typedef XCnn_conv_d94x94_k3x3 conv_0_hw;
typedef XCnn_conv_d94x94_k3x3_Config conv_0_hw_cfg;

/*
 * DECLARATIONS
 ******************************************************************************
 */

int conv_0_initialize(conv_0_hw *p_hw, u16 device_id);
conv_0_hw_cfg *conv_0_config_lookup(u16 device_id);
int conv_0_config_initialize(conv_0_hw *p_hw, conv_0_hw_cfg *p_hw_cfg);
void conv_0_start(conv_0_hw *p_hw);
u32 conv_0_is_done(conv_0_hw *p_hw);
u32 conv_0_is_idle(conv_0_hw *p_hw);
u32 conv_0_is_ready(conv_0_hw *p_hw);
void conv_0_auto_restart_enable(conv_0_hw *p_hw);
void conv_0_auto_restart_disable(conv_0_hw *p_hw);
void conv_0_ctrl_set(conv_0_hw *p_hw, u32 val);
u32 conv_0_ctrl_get(conv_0_hw *p_hw);
void (*conv_0_kernel_i_set[CONV_0_KERNEL_LEN])(conv_0_hw *p_hw, u32 val);
u32 (*conv_0_kernel_i_get[CONV_0_KERNEL_LEN])(conv_0_hw *p_hw);
void conv_0_kernel_set(conv_0_hw *p_hw, u32 kernel[CONV_0_KERNEL_LEN]);
void conv_0_kernel_get(conv_0_hw *p_hw, u32 kernel[CONV_0_KERNEL_LEN]);
int conv_0_hw_init(conv_0_hw *p_hw, conv_0_hw_cfg *p_hw_cfg);

#endif /* SRC_CONV_0_H_ */
