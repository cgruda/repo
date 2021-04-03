/**
 * Project 20-1-1-2187
 * CNN accelerator
 *
 * Chaim Gruda
 * Shay Tsabar
 *
 */

/*
 * INCLUDES
 ******************************************************************************
 */

#include "conv_0.h"
#include "xcnn_conv_d94x94_k3x3.h"

/*
 * DEFENITIONS
 ******************************************************************************
 */

int conv_0_initialize(conv_0_hw *p_hw, u16 device_id)
{
	return XCnn_conv_d94x94_k3x3_Initialize(p_hw, device_id);
}

conv_0_hw_cfg *conv_0_config_lookup(u16 device_id)
{
	return XCnn_conv_d94x94_k3x3_LookupConfig(device_id);
}

int conv_0_config_initialize(conv_0_hw *p_hw, conv_0_hw_cfg *p_hw_cfg)
{
	return XCnn_conv_d94x94_k3x3_CfgInitialize(p_hw, p_hw_cfg);
}

void conv_0_start(conv_0_hw *p_hw)
{
	XCnn_conv_d94x94_k3x3_Start(p_hw);
}

u32 conv_0_is_done(conv_0_hw *p_hw)
{
	return XCnn_conv_d94x94_k3x3_IsDone(p_hw);
}

u32 conv_0_is_idle(conv_0_hw *p_hw)
{
	return XCnn_conv_d94x94_k3x3_IsIdle(p_hw);
}

u32 conv_0_is_ready(conv_0_hw *p_hw)
{
	return XCnn_conv_d94x94_k3x3_IsReady(p_hw);
}

void conv_0_auto_restart_enable(conv_0_hw *p_hw)
{
	XCnn_conv_d94x94_k3x3_EnableAutoRestart(p_hw);
}

void conv_0_auto_restart_disable(conv_0_hw *p_hw)
{
	XCnn_conv_d94x94_k3x3_DisableAutoRestart(p_hw);
}

void conv_0_ctrl_set(conv_0_hw *p_hw, u32 val)
{
	XCnn_conv_d94x94_k3x3_Set_ctrl(p_hw, val);
}

u32 conv_0_ctrl_get(conv_0_hw *p_hw)
{
	return XCnn_conv_d94x94_k3x3_Get_ctrl(p_hw);
}

void (*conv_0_kernel_i_set[CONV_0_KERNEL_LEN])(conv_0_hw *p_hw, u32 val) = {
	XCnn_conv_d94x94_k3x3_Set_kernel_0,
	XCnn_conv_d94x94_k3x3_Set_kernel_1,
	XCnn_conv_d94x94_k3x3_Set_kernel_2,
	XCnn_conv_d94x94_k3x3_Set_kernel_3,
	XCnn_conv_d94x94_k3x3_Set_kernel_4,
	XCnn_conv_d94x94_k3x3_Set_kernel_5,
	XCnn_conv_d94x94_k3x3_Set_kernel_6,
	XCnn_conv_d94x94_k3x3_Set_kernel_7,
	XCnn_conv_d94x94_k3x3_Set_kernel_8,
};

u32 (*conv_0_kernel_i_get[CONV_0_KERNEL_LEN])(conv_0_hw *p_hw) = {
	XCnn_conv_d94x94_k3x3_Get_kernel_0,
	XCnn_conv_d94x94_k3x3_Get_kernel_1,
	XCnn_conv_d94x94_k3x3_Get_kernel_2,
	XCnn_conv_d94x94_k3x3_Get_kernel_3,
	XCnn_conv_d94x94_k3x3_Get_kernel_4,
	XCnn_conv_d94x94_k3x3_Get_kernel_5,
	XCnn_conv_d94x94_k3x3_Get_kernel_6,
	XCnn_conv_d94x94_k3x3_Get_kernel_7,
	XCnn_conv_d94x94_k3x3_Get_kernel_8,
};

void conv_0_kernel_set(conv_0_hw *p_hw, u32 kernel[CONV_0_KERNEL_LEN])
{
	for (int i = 0; i < CONV_0_KERNEL_LEN; i++) {
		conv_0_kernel_i_set[i](p_hw, kernel[i]);
	}
}

void conv_0_kernel_get(conv_0_hw *p_hw, u32 kernel[CONV_0_KERNEL_LEN])
{
	for (int i = 0; i < CONV_0_KERNEL_LEN; i++) {
		kernel[i] = conv_0_kernel_i_get[i](p_hw);
	}
}

int conv_0_hw_init(conv_0_hw *p_hw, conv_0_hw_cfg *p_hw_cfg)
{
	int status = XST_SUCCESS;

	p_hw_cfg = conv_0_config_lookup(CONV_0_HW_DEVICE_ID);
	if (!p_hw_cfg) {
		return XST_FAILURE;
	}

	status = conv_0_config_initialize(p_hw, p_hw_cfg);
	if (status != XST_SUCCESS) {
		return status;
	}

	return status;
}