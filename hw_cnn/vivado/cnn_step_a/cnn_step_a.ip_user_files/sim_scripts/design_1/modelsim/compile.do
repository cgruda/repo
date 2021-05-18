vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/processing_system7_bfm_v2_0_5
vlib msim/lib_cdc_v1_0_2
vlib msim/proc_sys_reset_v5_0_10
vlib msim/generic_baseblocks_v2_1_0
vlib msim/axi_infrastructure_v1_1_0
vlib msim/axi_register_slice_v2_1_11
vlib msim/fifo_generator_v13_1_3
vlib msim/axi_data_fifo_v2_1_10
vlib msim/axi_crossbar_v2_1_12
vlib msim/lib_pkg_v1_0_2
vlib msim/lib_fifo_v1_0_7
vlib msim/lib_srl_fifo_v1_0_2
vlib msim/axi_datamover_v5_1_13
vlib msim/axi_sg_v4_1_5
vlib msim/axi_dma_v7_1_12
vlib msim/axi_protocol_converter_v2_1_11
vlib msim/axi_clock_converter_v2_1_10
vlib msim/blk_mem_gen_v8_3_5
vlib msim/axi_dwidth_converter_v2_1_11

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap processing_system7_bfm_v2_0_5 msim/processing_system7_bfm_v2_0_5
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_10 msim/proc_sys_reset_v5_0_10
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_11 msim/axi_register_slice_v2_1_11
vmap fifo_generator_v13_1_3 msim/fifo_generator_v13_1_3
vmap axi_data_fifo_v2_1_10 msim/axi_data_fifo_v2_1_10
vmap axi_crossbar_v2_1_12 msim/axi_crossbar_v2_1_12
vmap lib_pkg_v1_0_2 msim/lib_pkg_v1_0_2
vmap lib_fifo_v1_0_7 msim/lib_fifo_v1_0_7
vmap lib_srl_fifo_v1_0_2 msim/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_13 msim/axi_datamover_v5_1_13
vmap axi_sg_v4_1_5 msim/axi_sg_v4_1_5
vmap axi_dma_v7_1_12 msim/axi_dma_v7_1_12
vmap axi_protocol_converter_v2_1_11 msim/axi_protocol_converter_v2_1_11
vmap axi_clock_converter_v2_1_10 msim/axi_clock_converter_v2_1_10
vmap blk_mem_gen_v8_3_5 msim/blk_mem_gen_v8_3_5
vmap axi_dwidth_converter_v2_1_11 msim/axi_dwidth_converter_v2_1_11

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work processing_system7_bfm_v2_0_5 -64 -incr "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl/processing_system7_bfm_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/2948/hdl/verilog/cnn_conv_d54x54_k3x3.v" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/2948/hdl/verilog/cnn_conv_d54x54_k3x3_CTRL_s_axi.v" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/2948/hdl/verilog/cnn_conv_d54x54_kbkb.v" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/2948/hdl/verilog/cnn_conv_d54x54_kcud.v" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/2948/hdl/verilog/fixed_point_mul.v" \
"../../../bd/design_1/ip/design_1_cnn_conv_d54x54_k3x3_0_0/sim/design_1_cnn_conv_d54x54_k3x3_0_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_10 -64 -93 \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/f7db/hdl/verilog/cnn_pool_d52x52_p2x2.v" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/f7db/hdl/verilog/cnn_pool_d52x52_p2x2_CTRL_s_axi.v" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/f7db/hdl/verilog/cnn_pool_d52x52_pbkb.v" \
"../../../bd/design_1/ip/design_1_cnn_pool_d52x52_p2x2_0_0/sim/design_1_cnn_pool_d52x52_p2x2_0_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_11 -64 -incr "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_3 -64 -incr "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/564d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_3 -64 -93 \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/564d/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_3 -64 -incr "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/564d/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_10 -64 -incr "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_12 -64 -incr "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/896d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7b5d/hdl/verilog/cnn_conv_d26x26_k3x3.v" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7b5d/hdl/verilog/cnn_conv_d26x26_k3x3_CTRL_s_axi.v" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7b5d/hdl/verilog/cnn_conv_d26x26_kbkb.v" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7b5d/hdl/verilog/cnn_conv_d26x26_kcud.v" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7b5d/hdl/verilog/fixed_point_mul.v" \
"../../../bd/design_1/ip/design_1_cnn_conv_d26x26_k3x3_0_0/sim/design_1_cnn_conv_d26x26_k3x3_0_0.v" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/f1f9/hdl/verilog/cnn_pool_d24x24_p2x2.v" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/f1f9/hdl/verilog/cnn_pool_d24x24_p2x2_CTRL_s_axi.v" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/f1f9/hdl/verilog/cnn_pool_d24x24_pbkb.v" \
"../../../bd/design_1/ip/design_1_cnn_pool_d24x24_p2x2_0_0/sim/design_1_cnn_pool_d24x24_p2x2_0_0.v" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/832a/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_7 -64 -93 \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/5ab6/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/6039/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_13 -64 -93 \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/bf41/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_5 -64 -93 \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/11c7/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_12 -64 -93 \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/46c7/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_dma_0_0/sim/design_1_axi_dma_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_xbar_1/sim/design_1_xbar_1.v" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/36d1/hdl/verilog/cnn_fc_i144_o50.v" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/36d1/hdl/verilog/cnn_fc_i144_o50_CTRL_s_axi.v" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/36d1/hdl/verilog/cnn_fc_i144_o50_mbkb.v" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/36d1/hdl/verilog/cnn_fc_i144_o50_mcud.v" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/36d1/hdl/verilog/fixed_point_mul.v" \
"../../../bd/design_1/ip/design_1_cnn_fc_i144_o50_0_0/sim/design_1_cnn_fc_i144_o50_0_0.v" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/e149/hdl/verilog/cnn_fc_i50_o10.v" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/e149/hdl/verilog/cnn_fc_i50_o10_CTRL_s_axi.v" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/e149/hdl/verilog/cnn_fc_i50_o10_mubkb.v" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/e149/hdl/verilog/cnn_fc_i50_o10_mucud.v" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/e149/hdl/verilog/fixed_point_mul.v" \
"../../../bd/design_1/ip/design_1_cnn_fc_i50_o10_0_0/sim/design_1_cnn_fc_i50_o10_0_0.v" \
"../../../bd/design_1/hdl/design_1.v" \

vlog -work axi_protocol_converter_v2_1_11 -64 -incr "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/df1b/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \

vlog -work axi_clock_converter_v2_1_10 -64 -incr "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/8479/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_3_5 -64 -incr "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/6273/simulation/blk_mem_gen_v8_3.v" \

vlog -work axi_dwidth_converter_v2_1_11 -64 -incr "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/a4c8/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../cnn_step_a.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_auto_us_0/sim/design_1_auto_us_0.v" \
"../../../bd/design_1/ip/design_1_auto_us_1/sim/design_1_auto_us_1.v" \

vlog -work xil_defaultlib "glbl.v"

