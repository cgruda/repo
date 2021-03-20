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

#include "pool_0.h"
#include "xcnn_pool_d92x92_p2x2.h"

/*
 * DEFENITIONS
 ******************************************************************************
 */

int pool_0_init(pool_0_hw *p_hw, u16 device_id)
{
	return XCnn_pool_d92x92_p2x2_Initialize(p_hw, device_id);
}

pool_0_hw_cfg *pool_0_config_lookup(u16 device_id)
{
	return XCnn_pool_d92x92_p2x2_LookupConfig(device_id);
}

int pool_0_config_init(pool_0_hw *p_hw, pool_0_hw_cfg *p_hw_cfg)
{
	return XCnn_pool_d92x92_p2x2_CfgInitialize(p_hw, p_hw_cfg);
}

void pool_0_start(pool_0_hw *p_hw)
{
	XCnn_pool_d92x92_p2x2_Start(p_hw);
}

u32 pool_0_is_done(pool_0_hw *p_hw)
{
	return XCnn_pool_d92x92_p2x2_IsDone(p_hw);
}

u32 pool_0_is_idle(pool_0_hw *p_hw)
{
	return XCnn_pool_d92x92_p2x2_IsIdle(p_hw);
}

u32 pool_0_is_ready(pool_0_hw *p_hw)
{
	return XCnn_pool_d92x92_p2x2_IsReady(p_hw);
}

void pool_0_auto_restart_enable(pool_0_hw *p_hw)
{
	XCnn_pool_d92x92_p2x2_EnableAutoRestart(p_hw);
}

void pool_0_auto_restart_disable(pool_0_hw *p_hw)
{
	XCnn_pool_d92x92_p2x2_DisableAutoRestart(p_hw);
}

void pool_0_ctrl_set(pool_0_hw *p_hw, u32 val)
{
	XCnn_pool_d92x92_p2x2_Set_ctrl(p_hw, val);
}

u32 pool_0_ctrl_get(pool_0_hw *p_hw)
{
	return XCnn_pool_d92x92_p2x2_Get_ctrl(p_hw);
}

