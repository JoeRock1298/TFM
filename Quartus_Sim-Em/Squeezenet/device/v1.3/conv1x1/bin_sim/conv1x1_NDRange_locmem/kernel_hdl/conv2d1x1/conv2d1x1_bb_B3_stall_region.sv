// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 21.1 (Release Build #173.3)
// 
// Legal Notice: Copyright 2021 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from conv2d1x1_bb_B3_stall_region
// SystemVerilog created on Wed May 24 18:10:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B3_stall_region (
    input wire [511:0] in_lm_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm_conv2d1x1_avm_address,
    output wire [0:0] out_lm_conv2d1x1_avm_enable,
    output wire [0:0] out_lm_conv2d1x1_avm_read,
    output wire [0:0] out_lm_conv2d1x1_avm_write,
    output wire [511:0] out_lm_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm_conv2d1x1_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_acl_global_id_136,
    input wire [31:0] in_c0_exe14932,
    input wire [63:0] in_c0_exe15,
    input wire [63:0] in_c0_exe28,
    input wire [31:0] in_c0_exe411,
    input wire [63:0] in_c0_exe515,
    input wire [0:0] in_c0_exe618,
    input wire [0:0] in_c0_exe720,
    input wire [0:0] in_c0_exe823,
    input wire [0:0] in_c0_exe927,
    input wire [31:0] in_j_07030,
    input wire [31:0] in_k49_068,
    input wire [31:0] in_k_065,
    input wire [31:0] in_l_grpid_01,
    input wire [31:0] in_tmp_067,
    input wire [31:0] in_unnamed_conv2d1x14,
    input wire [0:0] in_valid_in,
    input wire [511:0] in_lm18_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm18_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm18_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm18_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm18_conv2d1x1_avm_address,
    output wire [0:0] out_lm18_conv2d1x1_avm_enable,
    output wire [0:0] out_lm18_conv2d1x1_avm_read,
    output wire [0:0] out_lm18_conv2d1x1_avm_write,
    output wire [511:0] out_lm18_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm18_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm18_conv2d1x1_avm_burstcount,
    output wire [63:0] out_acl_global_id_136,
    output wire [31:0] out_c0_exe14932,
    output wire [63:0] out_c0_exe15,
    output wire [63:0] out_c0_exe28,
    output wire [31:0] out_c0_exe411,
    output wire [63:0] out_c0_exe515,
    output wire [31:0] out_c0_exe566,
    output wire [0:0] out_c0_exe618,
    output wire [0:0] out_c0_exe667,
    output wire [0:0] out_c0_exe720,
    output wire [0:0] out_c0_exe823,
    output wire [0:0] out_c0_exe927,
    output wire [31:0] out_c1_exe1,
    output wire [31:0] out_inc,
    output wire [31:0] out_j_07030,
    output wire [31:0] out_l_grpid_01,
    output wire [31:0] out_unnamed_conv2d1x14,
    output wire [0:0] out_valid_out,
    input wire [511:0] in_lm20_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm20_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm20_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm20_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm20_conv2d1x1_avm_address,
    output wire [0:0] out_lm20_conv2d1x1_avm_enable,
    output wire [0:0] out_lm20_conv2d1x1_avm_read,
    output wire [0:0] out_lm20_conv2d1x1_avm_write,
    output wire [511:0] out_lm20_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm20_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm20_conv2d1x1_avm_burstcount,
    input wire [511:0] in_lm22_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm22_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm22_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm22_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm22_conv2d1x1_avm_address,
    output wire [0:0] out_lm22_conv2d1x1_avm_enable,
    output wire [0:0] out_lm22_conv2d1x1_avm_read,
    output wire [0:0] out_lm22_conv2d1x1_avm_write,
    output wire [511:0] out_lm22_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm22_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm22_conv2d1x1_avm_burstcount,
    input wire [511:0] in_lm31_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm31_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm31_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm31_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm31_conv2d1x1_avm_address,
    output wire [0:0] out_lm31_conv2d1x1_avm_enable,
    output wire [0:0] out_lm31_conv2d1x1_avm_read,
    output wire [0:0] out_lm31_conv2d1x1_avm_write,
    output wire [511:0] out_lm31_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm31_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm31_conv2d1x1_avm_burstcount,
    input wire [127:0] in_memdep_78_conv2d1x1_avm_readdata,
    input wire [0:0] in_memdep_78_conv2d1x1_avm_writeack,
    input wire [0:0] in_memdep_78_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_memdep_78_conv2d1x1_avm_readdatavalid,
    output wire [31:0] out_memdep_78_conv2d1x1_avm_address,
    output wire [0:0] out_memdep_78_conv2d1x1_avm_enable,
    output wire [0:0] out_memdep_78_conv2d1x1_avm_read,
    output wire [0:0] out_memdep_78_conv2d1x1_avm_write,
    output wire [127:0] out_memdep_78_conv2d1x1_avm_writedata,
    output wire [15:0] out_memdep_78_conv2d1x1_avm_byteenable,
    output wire [0:0] out_memdep_78_conv2d1x1_avm_burstcount,
    input wire [127:0] in_lm28179_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm28179_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm28179_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm28179_conv2d1x1_avm_readdatavalid,
    output wire [31:0] out_lm28179_conv2d1x1_avm_address,
    output wire [0:0] out_lm28179_conv2d1x1_avm_enable,
    output wire [0:0] out_lm28179_conv2d1x1_avm_read,
    output wire [0:0] out_lm28179_conv2d1x1_avm_write,
    output wire [127:0] out_lm28179_conv2d1x1_avm_writedata,
    output wire [15:0] out_lm28179_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm28179_conv2d1x1_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c_i32_114_q;
    wire [31:0] i_idxprom55_conv2d1x11_vt_const_63_q;
    wire [63:0] i_idxprom55_conv2d1x11_vt_join_q;
    wire [31:0] i_idxprom55_conv2d1x11_vt_select_31_b;
    wire [32:0] i_inc_conv2d1x10_a;
    wire [32:0] i_inc_conv2d1x10_b;
    logic [32:0] i_inc_conv2d1x10_o;
    wire [32:0] i_inc_conv2d1x10_q;
    wire [31:0] i_inc_conv2d1x10_vt_join_q;
    wire [30:0] i_inc_conv2d1x10_vt_select_30_b;
    wire [30:0] i_llvm_fpga_mem_lm18_conv2d1x17_out_lm18_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm18_conv2d1x17_out_lm18_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm18_conv2d1x17_out_lm18_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm18_conv2d1x17_out_lm18_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm18_conv2d1x17_out_lm18_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm18_conv2d1x17_out_lm18_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm18_conv2d1x17_out_lm18_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm18_conv2d1x17_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm18_conv2d1x17_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm18_conv2d1x17_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm20_conv2d1x18_out_lm20_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm20_conv2d1x18_out_lm20_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm20_conv2d1x18_out_lm20_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm20_conv2d1x18_out_lm20_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm20_conv2d1x18_out_lm20_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm20_conv2d1x18_out_lm20_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm20_conv2d1x18_out_lm20_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm20_conv2d1x18_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm20_conv2d1x18_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm20_conv2d1x18_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm22_conv2d1x19_out_lm22_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm22_conv2d1x19_out_lm22_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm22_conv2d1x19_out_lm22_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm22_conv2d1x19_out_lm22_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm22_conv2d1x19_out_lm22_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm22_conv2d1x19_out_lm22_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm22_conv2d1x19_out_lm22_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm22_conv2d1x19_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm22_conv2d1x19_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm22_conv2d1x19_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm_conv2d1x16_out_lm_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm_conv2d1x16_out_lm_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm_conv2d1x16_out_lm_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm_conv2d1x16_out_lm_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm_conv2d1x16_out_lm_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm_conv2d1x16_out_lm_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm_conv2d1x16_out_lm_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm_conv2d1x16_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm_conv2d1x16_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm_conv2d1x16_out_o_valid;
    wire [31:0] bgTrunc_i_inc_conv2d1x10_sel_x_b;
    wire [0:0] conv2d1x1_B3_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv2d1x1_B3_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [63:0] conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [63:0] conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [63:0] conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [0:0] conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [0:0] conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [31:0] conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [31:0] conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [31:0] conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [63:0] conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [64:0] i_arrayidx5812_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx5812_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx5812_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx5812_conv2d1x10_add_x_q;
    wire [3:0] i_arrayidx5812_conv2d1x10_c_i4_01_x_q;
    wire [59:0] i_arrayidx5812_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx5812_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx5812_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom55_conv2d1x11_sel_x_b;
    wire [30:0] i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_lm31_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_lm31_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_lm31_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_lm31_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_lm31_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_lm31_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_lm31_conv2d1x1_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_o_readdata_0_tpl;
    wire [31:0] i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_o_readdata_1_tpl;
    wire [31:0] i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_o_readdata_2_tpl;
    wire [31:0] i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_o_readdata_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_out_c0_exit61_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_out_c0_exit61_2_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_out_c0_exit61_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_out_c0_exit61_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_out_c0_exit61_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_out_c0_exit61_6_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_lm28179_conv2d1x1_avm_address;
    wire [0:0] i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_lm28179_conv2d1x1_avm_burstcount;
    wire [15:0] i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_lm28179_conv2d1x1_avm_byteenable;
    wire [0:0] i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_lm28179_conv2d1x1_avm_enable;
    wire [0:0] i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_lm28179_conv2d1x1_avm_read;
    wire [0:0] i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_lm28179_conv2d1x1_avm_write;
    wire [127:0] i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_lm28179_conv2d1x1_avm_writedata;
    wire [31:0] i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_memdep_78_conv2d1x1_avm_address;
    wire [0:0] i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_memdep_78_conv2d1x1_avm_burstcount;
    wire [15:0] i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_memdep_78_conv2d1x1_avm_byteenable;
    wire [0:0] i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_memdep_78_conv2d1x1_avm_enable;
    wire [0:0] i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_memdep_78_conv2d1x1_avm_read;
    wire [0:0] i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_memdep_78_conv2d1x1_avm_write;
    wire [127:0] i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_memdep_78_conv2d1x1_avm_writedata;
    wire [0:0] i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_c1_exit_1_tpl;
    wire [64:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [159:0] join_for_coalesced_delay_1_q;
    wire [63:0] sel_for_coalesced_delay_1_b;
    wire [31:0] sel_for_coalesced_delay_1_c;
    wire [31:0] sel_for_coalesced_delay_1_d;
    wire [31:0] sel_for_coalesced_delay_1_e;
    wire [258:0] join_for_coalesced_delay_2_q;
    wire [63:0] sel_for_coalesced_delay_2_b;
    wire [63:0] sel_for_coalesced_delay_2_c;
    wire [31:0] sel_for_coalesced_delay_2_d;
    wire [31:0] sel_for_coalesced_delay_2_e;
    wire [31:0] sel_for_coalesced_delay_2_f;
    wire [31:0] sel_for_coalesced_delay_2_g;
    wire [0:0] sel_for_coalesced_delay_2_h;
    wire [0:0] sel_for_coalesced_delay_2_i;
    wire [0:0] sel_for_coalesced_delay_2_j;
    wire [32:0] join_for_coalesced_delay_3_q;
    wire [31:0] sel_for_coalesced_delay_3_b;
    wire [0:0] sel_for_coalesced_delay_3_c;
    wire [96:0] join_for_coalesced_delay_4_q;
    wire [63:0] sel_for_coalesced_delay_4_b;
    wire [31:0] sel_for_coalesced_delay_4_c;
    wire [0:0] sel_for_coalesced_delay_4_d;
    wire [0:0] redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_valid_in;
    wire redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_stall_in;
    wire redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_data_in;
    wire [0:0] redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_valid_out;
    wire redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_stall_out;
    wire redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_data_out;
    wire [0:0] redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_valid_in;
    wire redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_stall_in;
    wire redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_data_in;
    wire [0:0] redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_valid_out;
    wire redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_stall_out;
    wire redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_data_out;
    wire [0:0] redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_valid_in;
    wire redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_stall_in;
    wire redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_stall_in_bitsignaltemp;
    wire [30:0] redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_data_in;
    wire [0:0] redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_valid_out;
    wire redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_stall_out;
    wire redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_stall_out_bitsignaltemp;
    wire [30:0] redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_data_out;
    reg [31:0] redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_q;
    reg [31:0] redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_q;
    reg [31:0] redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_q;
    reg [31:0] redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_q;
    reg [31:0] redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_q;
    reg [31:0] redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_q;
    reg [31:0] redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_q;
    wire [0:0] redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_valid_in;
    wire redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_stall_in;
    wire redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_data_in;
    wire [0:0] redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_valid_out;
    wire redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_stall_out;
    wire redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_data_out;
    reg [64:0] coalesced_delay_0_0_q;
    reg [64:0] coalesced_delay_0_1_q;
    reg [64:0] coalesced_delay_0_2_q;
    reg [64:0] coalesced_delay_0_3_q;
    reg [64:0] coalesced_delay_0_4_q;
    reg [64:0] coalesced_delay_0_5_q;
    reg [64:0] coalesced_delay_0_6_q;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [159:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [159:0] coalesced_delay_1_fifo_data_out;
    wire [0:0] coalesced_delay_2_fifo_valid_in;
    wire coalesced_delay_2_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_in;
    wire coalesced_delay_2_fifo_stall_in_bitsignaltemp;
    wire [258:0] coalesced_delay_2_fifo_data_in;
    wire [0:0] coalesced_delay_2_fifo_valid_out;
    wire coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_out;
    wire coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    wire [258:0] coalesced_delay_2_fifo_data_out;
    wire [0:0] coalesced_delay_3_fifo_valid_in;
    wire coalesced_delay_3_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_3_fifo_stall_in;
    wire coalesced_delay_3_fifo_stall_in_bitsignaltemp;
    wire [32:0] coalesced_delay_3_fifo_data_in;
    wire [0:0] coalesced_delay_3_fifo_valid_out;
    wire coalesced_delay_3_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_3_fifo_stall_out;
    wire coalesced_delay_3_fifo_stall_out_bitsignaltemp;
    wire [32:0] coalesced_delay_3_fifo_data_out;
    wire [0:0] coalesced_delay_4_fifo_valid_in;
    wire coalesced_delay_4_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_4_fifo_stall_in;
    wire coalesced_delay_4_fifo_stall_in_bitsignaltemp;
    wire [96:0] coalesced_delay_4_fifo_data_in;
    wire [0:0] coalesced_delay_4_fifo_valid_out;
    wire coalesced_delay_4_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_4_fifo_stall_out;
    wire coalesced_delay_4_fifo_stall_out_bitsignaltemp;
    wire [96:0] coalesced_delay_4_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm18_conv2d1x17_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm18_conv2d1x17_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm20_conv2d1x18_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm20_conv2d1x18_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm22_conv2d1x19_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm22_conv2d1x19_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm_conv2d1x16_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm_conv2d1x16_b;
    wire [515:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [63:0] bubble_select_stall_entry_d;
    wire [63:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [63:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [31:0] bubble_select_stall_entry_m;
    wire [31:0] bubble_select_stall_entry_n;
    wire [31:0] bubble_select_stall_entry_o;
    wire [31:0] bubble_select_stall_entry_p;
    wire [31:0] bubble_select_stall_entry_q;
    wire [515:0] bubble_join_conv2d1x1_B3_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_e;
    wire [63:0] bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_f;
    wire [63:0] bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_g;
    wire [31:0] bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_h;
    wire [63:0] bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_k;
    wire [0:0] bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_l;
    wire [0:0] bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_m;
    wire [31:0] bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_n;
    wire [31:0] bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_o;
    wire [31:0] bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_p;
    wire [63:0] bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_q;
    wire [127:0] bubble_join_i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_b;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_c;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_d;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_e;
    wire [288:0] bubble_join_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_g;
    wire [31:0] bubble_join_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_b;
    wire [63:0] bubble_join_redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_q;
    wire [63:0] bubble_select_redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_b;
    wire [0:0] bubble_join_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_q;
    wire [0:0] bubble_select_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_b;
    wire [30:0] bubble_join_redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_q;
    wire [30:0] bubble_select_redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_b;
    wire [63:0] bubble_join_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_q;
    wire [63:0] bubble_select_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_b;
    wire [159:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [159:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [258:0] bubble_join_coalesced_delay_2_fifo_q;
    wire [258:0] bubble_select_coalesced_delay_2_fifo_b;
    wire [32:0] bubble_join_coalesced_delay_3_fifo_q;
    wire [32:0] bubble_select_coalesced_delay_3_fifo_b;
    wire [96:0] bubble_join_coalesced_delay_4_fifo_q;
    wire [96:0] bubble_select_coalesced_delay_4_fifo_b;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_toReg2;
    reg [0:0] SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_fromReg2;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_consumed2;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_toReg3;
    reg [0:0] SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_fromReg3;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_consumed3;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_or0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_or1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_or2;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_V0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_V1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_V2;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_V3;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_conv2d1x1_B3_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv2d1x1_B3_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_conv2d1x1_B3_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_conv2d1x1_B3_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_conv2d1x1_B3_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_conv2d1x1_B3_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_conv2d1x1_B3_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_conv2d1x1_B3_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_conv2d1x1_B3_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_conv2d1x1_B3_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_conv2d1x1_B3_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_conv2d1x1_B3_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_conv2d1x1_B3_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_conv2d1x1_B3_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_conv2d1x1_B3_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_conv2d1x1_B3_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_conv2d1x1_B3_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_conv2d1x1_B3_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_conv2d1x1_B3_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv2d1x1_B3_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_conv2d1x1_B3_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_conv2d1x1_B3_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_conv2d1x1_B3_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_V1;
    wire [0:0] SE_join_for_coalesced_delay_4_wireValid;
    wire [0:0] SE_join_for_coalesced_delay_4_and0;
    wire [0:0] SE_join_for_coalesced_delay_4_backStall;
    wire [0:0] SE_join_for_coalesced_delay_4_V0;
    wire [0:0] SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_wireValid;
    wire [0:0] SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_wireStall;
    wire [0:0] SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_StallValid;
    wire [0:0] SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_toReg0;
    reg [0:0] SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_fromReg0;
    wire [0:0] SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_consumed0;
    wire [0:0] SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_toReg1;
    reg [0:0] SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_fromReg1;
    wire [0:0] SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_consumed1;
    wire [0:0] SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_or0;
    wire [0:0] SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_backStall;
    wire [0:0] SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_V0;
    wire [0:0] SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_V1;
    reg [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_R_v_0;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_v_s_0;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_s_tv_0;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_backEN;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_backStall;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_V0;
    reg [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_R_v_0;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_v_s_0;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_s_tv_0;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_backEN;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_backStall;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_V0;
    reg [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_R_v_0;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_v_s_0;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_s_tv_0;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_backEN;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_backStall;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_V0;
    reg [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_R_v_0;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_v_s_0;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_s_tv_0;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_backEN;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_backStall;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_V0;
    reg [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_R_v_0;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_v_s_0;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_s_tv_0;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_backEN;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_backStall;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_V0;
    reg [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_R_v_0;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_v_s_0;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_s_tv_0;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_backEN;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_backStall;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_V0;
    reg [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_0;
    reg [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_1;
    reg [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_2;
    reg [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_3;
    reg [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_4;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_v_s_0;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_s_tv_0;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_s_tv_1;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_s_tv_2;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_s_tv_3;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_s_tv_4;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_backEN;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_or0;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_or1;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_or2;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_or3;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_backStall;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_V0;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_V1;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_V2;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_V3;
    wire [0:0] SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_V4;
    wire [0:0] SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_wireValid;
    wire [0:0] SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_and0;
    wire [0:0] SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_and1;
    wire [0:0] SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_and2;
    wire [0:0] SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_and3;
    wire [0:0] SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_and4;
    wire [0:0] SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_and5;
    wire [0:0] SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_and6;
    wire [0:0] SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_backStall;
    wire [0:0] SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg2;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg2;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed2;
    wire [0:0] SE_out_coalesced_delay_1_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_or1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V2;
    wire [0:0] SE_out_coalesced_delay_4_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_4_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_4_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_4_fifo_and2;
    wire [0:0] SE_out_coalesced_delay_4_fifo_and3;
    wire [0:0] SE_out_coalesced_delay_4_fifo_and4;
    wire [0:0] SE_out_coalesced_delay_4_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_4_fifo_V0;
    wire [0:0] SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_i_valid;
    reg [0:0] SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_r_valid;
    reg [31:0] SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_r_data0;
    reg [64:0] SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_r_data1;
    wire [0:0] SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_backStall;
    wire [0:0] SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_V;
    wire [31:0] SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_D0;
    wire [64:0] SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_and0;
    reg [63:0] SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data1;
    reg [0:0] SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data2;
    reg [0:0] SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data3;
    reg [0:0] SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data4;
    reg [63:0] SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data5;
    reg [63:0] SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data6;
    reg [63:0] SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data7;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_V;
    wire [63:0] SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_D2;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_D3;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_D4;
    wire [63:0] SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_D5;
    wire [63:0] SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_D6;
    wire [63:0] SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_D7;


    // i_llvm_fpga_mem_lm22_conv2d1x19(BLACKBOX,19)@8
    // in in_i_stall@20000000
    // out out_lm22_conv2d1x1_avm_address@20000000
    // out out_lm22_conv2d1x1_avm_burstcount@20000000
    // out out_lm22_conv2d1x1_avm_byteenable@20000000
    // out out_lm22_conv2d1x1_avm_enable@20000000
    // out out_lm22_conv2d1x1_avm_read@20000000
    // out out_lm22_conv2d1x1_avm_write@20000000
    // out out_lm22_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@137
    // out out_o_stall@20000000
    // out out_o_valid@137
    conv2d1x1_i_llvm_fpga_mem_lm22_0 thei_llvm_fpga_mem_lm22_conv2d1x19 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_D6),
        .in_i_predicate(SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_D3),
        .in_i_stall(SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_V2),
        .in_lm22_conv2d1x1_avm_readdata(in_lm22_conv2d1x1_avm_readdata),
        .in_lm22_conv2d1x1_avm_readdatavalid(in_lm22_conv2d1x1_avm_readdatavalid),
        .in_lm22_conv2d1x1_avm_waitrequest(in_lm22_conv2d1x1_avm_waitrequest),
        .in_lm22_conv2d1x1_avm_writeack(in_lm22_conv2d1x1_avm_writeack),
        .out_lm22_conv2d1x1_avm_address(i_llvm_fpga_mem_lm22_conv2d1x19_out_lm22_conv2d1x1_avm_address),
        .out_lm22_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm22_conv2d1x19_out_lm22_conv2d1x1_avm_burstcount),
        .out_lm22_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm22_conv2d1x19_out_lm22_conv2d1x1_avm_byteenable),
        .out_lm22_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm22_conv2d1x19_out_lm22_conv2d1x1_avm_enable),
        .out_lm22_conv2d1x1_avm_read(i_llvm_fpga_mem_lm22_conv2d1x19_out_lm22_conv2d1x1_avm_read),
        .out_lm22_conv2d1x1_avm_write(i_llvm_fpga_mem_lm22_conv2d1x19_out_lm22_conv2d1x1_avm_write),
        .out_lm22_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm22_conv2d1x19_out_lm22_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm22_conv2d1x19_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm22_conv2d1x19_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm22_conv2d1x19_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm20_conv2d1x18(BLACKBOX,18)@8
    // in in_i_stall@20000000
    // out out_lm20_conv2d1x1_avm_address@20000000
    // out out_lm20_conv2d1x1_avm_burstcount@20000000
    // out out_lm20_conv2d1x1_avm_byteenable@20000000
    // out out_lm20_conv2d1x1_avm_enable@20000000
    // out out_lm20_conv2d1x1_avm_read@20000000
    // out out_lm20_conv2d1x1_avm_write@20000000
    // out out_lm20_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@137
    // out out_o_stall@20000000
    // out out_o_valid@137
    conv2d1x1_i_llvm_fpga_mem_lm20_0 thei_llvm_fpga_mem_lm20_conv2d1x18 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_D5),
        .in_i_predicate(SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_D2),
        .in_i_stall(SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_V1),
        .in_lm20_conv2d1x1_avm_readdata(in_lm20_conv2d1x1_avm_readdata),
        .in_lm20_conv2d1x1_avm_readdatavalid(in_lm20_conv2d1x1_avm_readdatavalid),
        .in_lm20_conv2d1x1_avm_waitrequest(in_lm20_conv2d1x1_avm_waitrequest),
        .in_lm20_conv2d1x1_avm_writeack(in_lm20_conv2d1x1_avm_writeack),
        .out_lm20_conv2d1x1_avm_address(i_llvm_fpga_mem_lm20_conv2d1x18_out_lm20_conv2d1x1_avm_address),
        .out_lm20_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm20_conv2d1x18_out_lm20_conv2d1x1_avm_burstcount),
        .out_lm20_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm20_conv2d1x18_out_lm20_conv2d1x1_avm_byteenable),
        .out_lm20_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm20_conv2d1x18_out_lm20_conv2d1x1_avm_enable),
        .out_lm20_conv2d1x1_avm_read(i_llvm_fpga_mem_lm20_conv2d1x18_out_lm20_conv2d1x1_avm_read),
        .out_lm20_conv2d1x1_avm_write(i_llvm_fpga_mem_lm20_conv2d1x18_out_lm20_conv2d1x1_avm_write),
        .out_lm20_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm20_conv2d1x18_out_lm20_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm20_conv2d1x18_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm20_conv2d1x18_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm20_conv2d1x18_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm18_conv2d1x17(BLACKBOX,17)@8
    // in in_i_stall@20000000
    // out out_lm18_conv2d1x1_avm_address@20000000
    // out out_lm18_conv2d1x1_avm_burstcount@20000000
    // out out_lm18_conv2d1x1_avm_byteenable@20000000
    // out out_lm18_conv2d1x1_avm_enable@20000000
    // out out_lm18_conv2d1x1_avm_read@20000000
    // out out_lm18_conv2d1x1_avm_write@20000000
    // out out_lm18_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@137
    // out out_o_stall@20000000
    // out out_o_valid@137
    conv2d1x1_i_llvm_fpga_mem_lm18_0 thei_llvm_fpga_mem_lm18_conv2d1x17 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_D0),
        .in_i_predicate(SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_D1),
        .in_i_stall(SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_V0),
        .in_lm18_conv2d1x1_avm_readdata(in_lm18_conv2d1x1_avm_readdata),
        .in_lm18_conv2d1x1_avm_readdatavalid(in_lm18_conv2d1x1_avm_readdatavalid),
        .in_lm18_conv2d1x1_avm_waitrequest(in_lm18_conv2d1x1_avm_waitrequest),
        .in_lm18_conv2d1x1_avm_writeack(in_lm18_conv2d1x1_avm_writeack),
        .out_lm18_conv2d1x1_avm_address(i_llvm_fpga_mem_lm18_conv2d1x17_out_lm18_conv2d1x1_avm_address),
        .out_lm18_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm18_conv2d1x17_out_lm18_conv2d1x1_avm_burstcount),
        .out_lm18_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm18_conv2d1x17_out_lm18_conv2d1x1_avm_byteenable),
        .out_lm18_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm18_conv2d1x17_out_lm18_conv2d1x1_avm_enable),
        .out_lm18_conv2d1x1_avm_read(i_llvm_fpga_mem_lm18_conv2d1x17_out_lm18_conv2d1x1_avm_read),
        .out_lm18_conv2d1x1_avm_write(i_llvm_fpga_mem_lm18_conv2d1x17_out_lm18_conv2d1x1_avm_write),
        .out_lm18_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm18_conv2d1x17_out_lm18_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm18_conv2d1x17_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm18_conv2d1x17_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm18_conv2d1x17_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_mem_lm18_conv2d1x17(STALLENABLE,192)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_fromReg0 <= '0;
            SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_fromReg1 <= '0;
            SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_fromReg2 <= '0;
            SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_fromReg0 <= SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_fromReg1 <= SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_toReg1;
            // Successor 2
            SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_fromReg2 <= SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_toReg2;
            // Successor 3
            SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_fromReg3 <= SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_toReg3;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_consumed0 = (~ (i_llvm_fpga_mem_lm18_conv2d1x17_out_o_stall) & SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_wireValid) | SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_fromReg0;
    assign SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_consumed1 = (~ (i_llvm_fpga_mem_lm20_conv2d1x18_out_o_stall) & SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_wireValid) | SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_fromReg1;
    assign SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_consumed2 = (~ (i_llvm_fpga_mem_lm22_conv2d1x19_out_o_stall) & SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_wireValid) | SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_fromReg2;
    assign SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_consumed3 = (~ (i_llvm_fpga_mem_lm_conv2d1x16_out_o_stall) & SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_wireValid) | SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_fromReg3;
    // Consuming
    assign SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_StallValid = SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_backStall & SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_wireValid;
    assign SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_toReg0 = SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_StallValid & SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_consumed0;
    assign SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_toReg1 = SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_StallValid & SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_consumed1;
    assign SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_toReg2 = SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_StallValid & SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_consumed2;
    assign SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_toReg3 = SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_StallValid & SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_consumed3;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_or0 = SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_consumed0;
    assign SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_or1 = SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_consumed1 & SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_or0;
    assign SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_or2 = SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_consumed2 & SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_or1;
    assign SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_wireStall = ~ (SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_consumed3 & SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_or2);
    assign SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_backStall = SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_V0 = SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_wireValid & ~ (SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_fromReg0);
    assign SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_V1 = SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_wireValid & ~ (SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_fromReg1);
    assign SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_V2 = SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_wireValid & ~ (SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_fromReg2);
    assign SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_V3 = SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_wireValid & ~ (SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_fromReg3);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_wireValid = SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_V;

    // bubble_join_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo(BITJOIN,173)
    assign bubble_join_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_q = redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_data_out;

    // bubble_select_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo(BITSELECT,174)
    assign bubble_select_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_b = $unsigned(bubble_join_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_q[63:0]);

    // bubble_join_conv2d1x1_B3_merge_reg_aunroll_x(BITJOIN,151)
    assign bubble_join_conv2d1x1_B3_merge_reg_aunroll_x_q = {conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_15_tpl, conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_14_tpl, conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_13_tpl, conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_12_tpl, conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_11_tpl, conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl, conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_9_tpl, conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_8_tpl, conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_7_tpl, conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_6_tpl, conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl, conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_4_tpl, conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_3_tpl, conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_2_tpl, conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_1_tpl, conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv2d1x1_B3_merge_reg_aunroll_x(BITSELECT,152)
    assign bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv2d1x1_B3_merge_reg_aunroll_x_q[31:0]);
    assign bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv2d1x1_B3_merge_reg_aunroll_x_q[63:32]);
    assign bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv2d1x1_B3_merge_reg_aunroll_x_q[95:64]);
    assign bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv2d1x1_B3_merge_reg_aunroll_x_q[127:96]);
    assign bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_f = $unsigned(bubble_join_conv2d1x1_B3_merge_reg_aunroll_x_q[191:128]);
    assign bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_g = $unsigned(bubble_join_conv2d1x1_B3_merge_reg_aunroll_x_q[255:192]);
    assign bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_h = $unsigned(bubble_join_conv2d1x1_B3_merge_reg_aunroll_x_q[287:256]);
    assign bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_i = $unsigned(bubble_join_conv2d1x1_B3_merge_reg_aunroll_x_q[351:288]);
    assign bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_j = $unsigned(bubble_join_conv2d1x1_B3_merge_reg_aunroll_x_q[352:352]);
    assign bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_k = $unsigned(bubble_join_conv2d1x1_B3_merge_reg_aunroll_x_q[353:353]);
    assign bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_l = $unsigned(bubble_join_conv2d1x1_B3_merge_reg_aunroll_x_q[354:354]);
    assign bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_m = $unsigned(bubble_join_conv2d1x1_B3_merge_reg_aunroll_x_q[355:355]);
    assign bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_n = $unsigned(bubble_join_conv2d1x1_B3_merge_reg_aunroll_x_q[387:356]);
    assign bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_o = $unsigned(bubble_join_conv2d1x1_B3_merge_reg_aunroll_x_q[419:388]);
    assign bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_p = $unsigned(bubble_join_conv2d1x1_B3_merge_reg_aunroll_x_q[451:420]);
    assign bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_q = $unsigned(bubble_join_conv2d1x1_B3_merge_reg_aunroll_x_q[515:452]);

    // join_for_coalesced_delay_2(BITJOIN,104)
    assign join_for_coalesced_delay_2_q = {bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_m, bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_k, bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_j, bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_p, bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_o, bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_n, bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_h, bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_q, bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_i};

    // coalesced_delay_2_fifo(STALLFIFO,131)
    assign coalesced_delay_2_fifo_valid_in = SE_out_conv2d1x1_B3_merge_reg_aunroll_x_V3;
    assign coalesced_delay_2_fifo_stall_in = SE_out_coalesced_delay_4_fifo_backStall;
    assign coalesced_delay_2_fifo_data_in = join_for_coalesced_delay_2_q;
    assign coalesced_delay_2_fifo_valid_in_bitsignaltemp = coalesced_delay_2_fifo_valid_in[0];
    assign coalesced_delay_2_fifo_stall_in_bitsignaltemp = coalesced_delay_2_fifo_stall_in[0];
    assign coalesced_delay_2_fifo_valid_out[0] = coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_2_fifo_stall_out[0] = coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(161),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(259),
        .IMPL("ram")
    ) thecoalesced_delay_2_fifo (
        .valid_in(coalesced_delay_2_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_2_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_2_q),
        .valid_out(coalesced_delay_2_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_2_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_2_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_1(BITJOIN,101)
    assign join_for_coalesced_delay_1_q = {bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_e, bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_d, bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_b, bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_f};

    // coalesced_delay_1_fifo(STALLFIFO,130)
    assign coalesced_delay_1_fifo_valid_in = SE_out_conv2d1x1_B3_merge_reg_aunroll_x_V2;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(137),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(160),
        .IMPL("ram")
    ) thecoalesced_delay_1_fifo (
        .valid_in(coalesced_delay_1_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_1_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_1_q),
        .valid_out(coalesced_delay_1_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_1_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_1_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x(BITJOIN,157)
    assign bubble_join_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_q = {i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_out_c0_exit61_6_tpl, i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_out_c0_exit61_5_tpl, i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_out_c0_exit61_4_tpl, i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_out_c0_exit61_3_tpl, i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_out_c0_exit61_2_tpl, i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_out_c0_exit61_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x(BITSELECT,158)
    assign bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_q[127:64]);
    assign bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_q[191:128]);
    assign bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_q[255:192]);
    assign bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_q[287:256]);
    assign bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_q[288:288]);

    // join_for_coalesced_delay_3(BITJOIN,107)
    assign join_for_coalesced_delay_3_q = {bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_f};

    // coalesced_delay_3_fifo(STALLFIFO,132)
    assign coalesced_delay_3_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_V1;
    assign coalesced_delay_3_fifo_stall_in = SE_out_coalesced_delay_4_fifo_backStall;
    assign coalesced_delay_3_fifo_data_in = join_for_coalesced_delay_3_q;
    assign coalesced_delay_3_fifo_valid_in_bitsignaltemp = coalesced_delay_3_fifo_valid_in[0];
    assign coalesced_delay_3_fifo_stall_in_bitsignaltemp = coalesced_delay_3_fifo_stall_in[0];
    assign coalesced_delay_3_fifo_valid_out[0] = coalesced_delay_3_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_3_fifo_stall_out[0] = coalesced_delay_3_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(154),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(33),
        .IMPL("ram")
    ) thecoalesced_delay_3_fifo (
        .valid_in(coalesced_delay_3_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_3_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_3_q),
        .valid_out(coalesced_delay_3_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_3_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_3_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x(STALLENABLE,213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_consumed0 = (~ (SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_backStall) & SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_consumed1 = (~ (coalesced_delay_3_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_wireValid = i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x(BLACKBOX,68)@1
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_c0_exit61_0_tpl@8
    // out out_c0_exit61_1_tpl@8
    // out out_c0_exit61_2_tpl@8
    // out out_c0_exit61_3_tpl@8
    // out out_c0_exit61_4_tpl@8
    // out out_c0_exit61_5_tpl@8
    // out out_c0_exit61_6_tpl@8
    conv2d1x1_i_sfc_s_c0_in_for_body13_s_c0_enter5238_conv2d1x13 thei_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_backStall),
        .in_i_valid(SE_out_conv2d1x1_B3_merge_reg_aunroll_x_V0),
        .in_input_channels(in_input_channels),
        .in_input_im(in_input_im),
        .in_c0_eni5_0_tpl(GND_q),
        .in_c0_eni5_1_tpl(bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_b),
        .in_c0_eni5_2_tpl(bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_h),
        .in_c0_eni5_3_tpl(bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_p),
        .in_c0_eni5_4_tpl(bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_c),
        .in_c0_eni5_5_tpl(bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_k),
        .out_o_stall(i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_out_o_valid),
        .out_c0_exit61_0_tpl(),
        .out_c0_exit61_1_tpl(i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_out_c0_exit61_1_tpl),
        .out_c0_exit61_2_tpl(i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_out_c0_exit61_2_tpl),
        .out_c0_exit61_3_tpl(i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_out_c0_exit61_3_tpl),
        .out_c0_exit61_4_tpl(i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_out_c0_exit61_4_tpl),
        .out_c0_exit61_5_tpl(i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_out_c0_exit61_5_tpl),
        .out_c0_exit61_6_tpl(i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_out_c0_exit61_6_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stall_entry(BITJOIN,147)
    assign bubble_join_stall_entry_q = {in_unnamed_conv2d1x14, in_tmp_067, in_l_grpid_01, in_k_065, in_k49_068, in_j_07030, in_c0_exe927, in_c0_exe823, in_c0_exe720, in_c0_exe618, in_c0_exe515, in_c0_exe411, in_c0_exe28, in_c0_exe15, in_c0_exe14932, in_acl_global_id_136};

    // bubble_select_stall_entry(BITSELECT,148)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[95:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[159:96]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[223:160]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[255:224]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[319:256]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[320:320]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[321:321]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[322:322]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[323:323]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[355:324]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[387:356]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[419:388]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[451:420]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[483:452]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[515:484]);

    // SE_stall_entry(STALLENABLE,200)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv2d1x1_B3_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // conv2d1x1_B3_merge_reg_aunroll_x(BLACKBOX,46)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    // out out_data_out_7_tpl@1
    // out out_data_out_8_tpl@1
    // out out_data_out_9_tpl@1
    // out out_data_out_10_tpl@1
    // out out_data_out_11_tpl@1
    // out out_data_out_12_tpl@1
    // out out_data_out_13_tpl@1
    // out out_data_out_14_tpl@1
    // out out_data_out_15_tpl@1
    conv2d1x1_B3_merge_reg theconv2d1x1_B3_merge_reg_aunroll_x (
        .in_stall_in(SE_out_conv2d1x1_B3_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_n),
        .in_data_in_1_tpl(bubble_select_stall_entry_m),
        .in_data_in_2_tpl(bubble_select_stall_entry_p),
        .in_data_in_3_tpl(bubble_select_stall_entry_o),
        .in_data_in_4_tpl(bubble_select_stall_entry_d),
        .in_data_in_5_tpl(bubble_select_stall_entry_e),
        .in_data_in_6_tpl(bubble_select_stall_entry_f),
        .in_data_in_7_tpl(bubble_select_stall_entry_g),
        .in_data_in_8_tpl(bubble_select_stall_entry_h),
        .in_data_in_9_tpl(bubble_select_stall_entry_i),
        .in_data_in_10_tpl(bubble_select_stall_entry_j),
        .in_data_in_11_tpl(bubble_select_stall_entry_k),
        .in_data_in_12_tpl(bubble_select_stall_entry_q),
        .in_data_in_13_tpl(bubble_select_stall_entry_l),
        .in_data_in_14_tpl(bubble_select_stall_entry_c),
        .in_data_in_15_tpl(bubble_select_stall_entry_b),
        .out_stall_out(conv2d1x1_B3_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv2d1x1_B3_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_15_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_conv2d1x1_B3_merge_reg_aunroll_x(STALLENABLE,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_conv2d1x1_B3_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_conv2d1x1_B3_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_conv2d1x1_B3_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_conv2d1x1_B3_merge_reg_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_conv2d1x1_B3_merge_reg_aunroll_x_fromReg0 <= SE_out_conv2d1x1_B3_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_conv2d1x1_B3_merge_reg_aunroll_x_fromReg1 <= SE_out_conv2d1x1_B3_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_conv2d1x1_B3_merge_reg_aunroll_x_fromReg2 <= SE_out_conv2d1x1_B3_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_conv2d1x1_B3_merge_reg_aunroll_x_fromReg3 <= SE_out_conv2d1x1_B3_merge_reg_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_conv2d1x1_B3_merge_reg_aunroll_x_consumed0 = (~ (i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_out_o_stall) & SE_out_conv2d1x1_B3_merge_reg_aunroll_x_wireValid) | SE_out_conv2d1x1_B3_merge_reg_aunroll_x_fromReg0;
    assign SE_out_conv2d1x1_B3_merge_reg_aunroll_x_consumed1 = (~ (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_backStall) & SE_out_conv2d1x1_B3_merge_reg_aunroll_x_wireValid) | SE_out_conv2d1x1_B3_merge_reg_aunroll_x_fromReg1;
    assign SE_out_conv2d1x1_B3_merge_reg_aunroll_x_consumed2 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_conv2d1x1_B3_merge_reg_aunroll_x_wireValid) | SE_out_conv2d1x1_B3_merge_reg_aunroll_x_fromReg2;
    assign SE_out_conv2d1x1_B3_merge_reg_aunroll_x_consumed3 = (~ (coalesced_delay_2_fifo_stall_out) & SE_out_conv2d1x1_B3_merge_reg_aunroll_x_wireValid) | SE_out_conv2d1x1_B3_merge_reg_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_conv2d1x1_B3_merge_reg_aunroll_x_StallValid = SE_out_conv2d1x1_B3_merge_reg_aunroll_x_backStall & SE_out_conv2d1x1_B3_merge_reg_aunroll_x_wireValid;
    assign SE_out_conv2d1x1_B3_merge_reg_aunroll_x_toReg0 = SE_out_conv2d1x1_B3_merge_reg_aunroll_x_StallValid & SE_out_conv2d1x1_B3_merge_reg_aunroll_x_consumed0;
    assign SE_out_conv2d1x1_B3_merge_reg_aunroll_x_toReg1 = SE_out_conv2d1x1_B3_merge_reg_aunroll_x_StallValid & SE_out_conv2d1x1_B3_merge_reg_aunroll_x_consumed1;
    assign SE_out_conv2d1x1_B3_merge_reg_aunroll_x_toReg2 = SE_out_conv2d1x1_B3_merge_reg_aunroll_x_StallValid & SE_out_conv2d1x1_B3_merge_reg_aunroll_x_consumed2;
    assign SE_out_conv2d1x1_B3_merge_reg_aunroll_x_toReg3 = SE_out_conv2d1x1_B3_merge_reg_aunroll_x_StallValid & SE_out_conv2d1x1_B3_merge_reg_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_conv2d1x1_B3_merge_reg_aunroll_x_or0 = SE_out_conv2d1x1_B3_merge_reg_aunroll_x_consumed0;
    assign SE_out_conv2d1x1_B3_merge_reg_aunroll_x_or1 = SE_out_conv2d1x1_B3_merge_reg_aunroll_x_consumed1 & SE_out_conv2d1x1_B3_merge_reg_aunroll_x_or0;
    assign SE_out_conv2d1x1_B3_merge_reg_aunroll_x_or2 = SE_out_conv2d1x1_B3_merge_reg_aunroll_x_consumed2 & SE_out_conv2d1x1_B3_merge_reg_aunroll_x_or1;
    assign SE_out_conv2d1x1_B3_merge_reg_aunroll_x_wireStall = ~ (SE_out_conv2d1x1_B3_merge_reg_aunroll_x_consumed3 & SE_out_conv2d1x1_B3_merge_reg_aunroll_x_or2);
    assign SE_out_conv2d1x1_B3_merge_reg_aunroll_x_backStall = SE_out_conv2d1x1_B3_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_conv2d1x1_B3_merge_reg_aunroll_x_V0 = SE_out_conv2d1x1_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv2d1x1_B3_merge_reg_aunroll_x_fromReg0);
    assign SE_out_conv2d1x1_B3_merge_reg_aunroll_x_V1 = SE_out_conv2d1x1_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv2d1x1_B3_merge_reg_aunroll_x_fromReg1);
    assign SE_out_conv2d1x1_B3_merge_reg_aunroll_x_V2 = SE_out_conv2d1x1_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv2d1x1_B3_merge_reg_aunroll_x_fromReg2);
    assign SE_out_conv2d1x1_B3_merge_reg_aunroll_x_V3 = SE_out_conv2d1x1_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv2d1x1_B3_merge_reg_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_conv2d1x1_B3_merge_reg_aunroll_x_wireValid = conv2d1x1_B3_merge_reg_aunroll_x_out_valid_out;

    // SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0(STALLENABLE,232)
    // Valid signal propagation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_V0 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_R_v_0;
    // Stall signal propagation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_s_tv_0 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_backStall & SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_R_v_0;
    // Backward Enable generation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_backEN = ~ (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_v_s_0 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_backEN & SE_out_conv2d1x1_B3_merge_reg_aunroll_x_V1;
    // Backward Stall generation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_backStall = ~ (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_backEN == 1'b0)
            begin
                SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_R_v_0 <= SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_R_v_0 & SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_s_tv_0;
            end
            else
            begin
                SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_R_v_0 <= SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_v_s_0;
            end

        end
    end

    // SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1(STALLENABLE,233)
    // Valid signal propagation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_V0 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_R_v_0;
    // Stall signal propagation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_s_tv_0 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_backStall & SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_R_v_0;
    // Backward Enable generation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_backEN = ~ (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_v_s_0 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_backEN & SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_V0;
    // Backward Stall generation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_backStall = ~ (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_backEN == 1'b0)
            begin
                SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_R_v_0 <= SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_R_v_0 & SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_s_tv_0;
            end
            else
            begin
                SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_R_v_0 <= SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_v_s_0;
            end

        end
    end

    // SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2(STALLENABLE,234)
    // Valid signal propagation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_V0 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_R_v_0;
    // Stall signal propagation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_s_tv_0 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_backStall & SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_R_v_0;
    // Backward Enable generation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_backEN = ~ (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_v_s_0 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_backEN & SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_V0;
    // Backward Stall generation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_backStall = ~ (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_backEN == 1'b0)
            begin
                SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_R_v_0 <= SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_R_v_0 & SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_s_tv_0;
            end
            else
            begin
                SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_R_v_0 <= SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_v_s_0;
            end

        end
    end

    // join_for_coalesced_delay_0(BITJOIN,98)
    assign join_for_coalesced_delay_0_q = {bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_l, bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_g};

    // coalesced_delay_0_0(REG,123)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,124)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(coalesced_delay_0_0_q);
        end
    end

    // coalesced_delay_0_2(REG,125)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_2_q <= $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(coalesced_delay_0_1_q);
        end
    end

    // coalesced_delay_0_3(REG,126)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_3_q <= $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_backEN == 1'b1)
        begin
            coalesced_delay_0_3_q <= $unsigned(coalesced_delay_0_2_q);
        end
    end

    // i_idxprom55_conv2d1x11_sel_x(BITSELECT,66)@1
    assign i_idxprom55_conv2d1x11_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_conv2d1x1_B3_merge_reg_aunroll_x_c[31:0]};

    // i_idxprom55_conv2d1x11_vt_select_31(BITSELECT,12)@1
    assign i_idxprom55_conv2d1x11_vt_select_31_b = i_idxprom55_conv2d1x11_sel_x_b[31:0];

    // redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0(REG,115)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_backEN == 1'b1)
        begin
            redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_q <= $unsigned(i_idxprom55_conv2d1x11_vt_select_31_b);
        end
    end

    // redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1(REG,116)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_backEN == 1'b1)
        begin
            redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_q <= $unsigned(redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_0_q);
        end
    end

    // redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2(REG,117)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_backEN == 1'b1)
        begin
            redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_q <= $unsigned(redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_1_q);
        end
    end

    // redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3(REG,118)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_backEN == 1'b1)
        begin
            redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_q <= $unsigned(redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_q);
        end
    end

    // SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3(STALLENABLE,235)
    // Valid signal propagation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_V0 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_R_v_0;
    // Stall signal propagation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_s_tv_0 = SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_backStall & SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_R_v_0;
    // Backward Enable generation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_backEN = ~ (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_v_s_0 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_backEN & SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_2_V0;
    // Backward Stall generation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_backStall = ~ (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_backEN == 1'b0)
            begin
                SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_R_v_0 <= SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_R_v_0 & SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_s_tv_0;
            end
            else
            begin
                SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_R_v_0 <= SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_v_s_0;
            end

        end
    end

    // SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4(STALLREG,328)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_r_valid <= 1'b0;
            SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_r_data1 <= 65'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_r_valid <= SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_backStall & (SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_r_valid | SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_i_valid);

            if (SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_r_data0 <= $unsigned(redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_q);
                SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_r_data1 <= $unsigned(coalesced_delay_0_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_i_valid = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_V0;
    // Stall signal propagation
    assign SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_backStall = SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_r_valid | ~ (SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_i_valid);

    // Valid
    assign SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_V = SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_r_valid == 1'b1 ? SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_r_valid : SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_i_valid;

    // Data0
    assign SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_D0 = SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_r_valid == 1'b1 ? SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_r_data0 : redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_3_q;
    // Data1
    assign SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_D1 = SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_r_valid == 1'b1 ? SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_r_data1 : coalesced_delay_0_3_q;

    // SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4(STALLENABLE,236)
    // Valid signal propagation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_V0 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_R_v_0;
    // Stall signal propagation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_s_tv_0 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_backStall & SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_R_v_0;
    // Backward Enable generation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_backEN = ~ (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_v_s_0 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_backEN & SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_V;
    // Backward Stall generation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_backStall = ~ (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_backEN == 1'b0)
            begin
                SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_R_v_0 <= SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_R_v_0 & SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_s_tv_0;
            end
            else
            begin
                SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_R_v_0 <= SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_v_s_0;
            end

        end
    end

    // SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5(STALLENABLE,237)
    // Valid signal propagation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_V0 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_R_v_0;
    // Stall signal propagation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_s_tv_0 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_backStall & SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_R_v_0;
    // Backward Enable generation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_backEN = ~ (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_v_s_0 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_backEN & SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_V0;
    // Backward Stall generation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_backStall = ~ (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_backEN == 1'b0)
            begin
                SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_R_v_0 <= SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_R_v_0 & SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_s_tv_0;
            end
            else
            begin
                SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_R_v_0 <= SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_v_s_0;
            end

        end
    end

    // coalesced_delay_0_4(REG,127)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_4_q <= $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_backEN == 1'b1)
        begin
            coalesced_delay_0_4_q <= $unsigned(SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_D1);
        end
    end

    // coalesced_delay_0_5(REG,128)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_5_q <= $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_backEN == 1'b1)
        begin
            coalesced_delay_0_5_q <= $unsigned(coalesced_delay_0_4_q);
        end
    end

    // coalesced_delay_0_6(REG,129)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_6_q <= $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_backEN == 1'b1)
        begin
            coalesced_delay_0_6_q <= $unsigned(coalesced_delay_0_5_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,99)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_6_q[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_6_q[64:64]);

    // redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo(STALLFIFO,112)
    assign redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_valid_in = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_V2;
    assign redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_stall_in = SE_out_coalesced_delay_4_fifo_backStall;
    assign redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_data_in = sel_for_coalesced_delay_0_b;
    assign redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_valid_in_bitsignaltemp = redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_valid_in[0];
    assign redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_stall_in_bitsignaltemp = redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_stall_in[0];
    assign redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_valid_out[0] = redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_valid_out_bitsignaltemp;
    assign redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_stall_out[0] = redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(154),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo (
        .valid_in(redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_valid_in_bitsignaltemp),
        .stall_in(redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_stall_in_bitsignaltemp),
        .data_in(sel_for_coalesced_delay_0_b),
        .valid_out(redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_valid_out_bitsignaltemp),
        .stall_out(redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_stall_out_bitsignaltemp),
        .data_out(redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6(STALLENABLE,238)
    // Valid signal propagation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_V0 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_0;
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_V1 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_1;
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_V2 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_2;
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_V3 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_3;
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_V4 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_4;
    // Stall signal propagation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_s_tv_0 = redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_stall_out & SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_0;
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_s_tv_1 = SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_backStall & SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_1;
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_s_tv_2 = redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_stall_out & SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_2;
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_s_tv_3 = redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_stall_out & SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_3;
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_s_tv_4 = i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_o_stall & SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_4;
    // Backward Enable generation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_or0 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_s_tv_0;
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_or1 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_s_tv_1 | SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_or0;
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_or2 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_s_tv_2 | SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_or1;
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_or3 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_s_tv_3 | SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_or2;
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_backEN = ~ (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_s_tv_4 | SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_or3);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_v_s_0 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_backEN & SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_V0;
    // Backward Stall generation
    assign SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_backStall = ~ (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_0 <= 1'b0;
            SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_1 <= 1'b0;
            SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_2 <= 1'b0;
            SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_3 <= 1'b0;
            SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_4 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_backEN == 1'b0)
            begin
                SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_0 <= SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_0 & SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_s_tv_0;
            end
            else
            begin
                SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_0 <= SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_v_s_0;
            end

            if (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_backEN == 1'b0)
            begin
                SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_1 <= SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_1 & SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_s_tv_1;
            end
            else
            begin
                SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_1 <= SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_v_s_0;
            end

            if (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_backEN == 1'b0)
            begin
                SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_2 <= SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_2 & SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_s_tv_2;
            end
            else
            begin
                SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_2 <= SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_v_s_0;
            end

            if (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_backEN == 1'b0)
            begin
                SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_3 <= SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_3 & SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_s_tv_3;
            end
            else
            begin
                SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_3 <= SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_v_s_0;
            end

            if (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_backEN == 1'b0)
            begin
                SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_4 <= SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_4 & SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_s_tv_4;
            end
            else
            begin
                SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_R_v_4 <= SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_v_s_0;
            end

        end
    end

    // redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo(STALLFIFO,113)
    assign redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_valid_in = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_V3;
    assign redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_stall_in = SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_backStall;
    assign redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_data_in = sel_for_coalesced_delay_0_c;
    assign redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_valid_in_bitsignaltemp = redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_valid_in[0];
    assign redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_stall_in_bitsignaltemp = redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_stall_in[0];
    assign redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_valid_out[0] = redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_valid_out_bitsignaltemp;
    assign redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_stall_out[0] = redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(130),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo (
        .valid_in(redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_valid_in_bitsignaltemp),
        .stall_in(redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_stall_in_bitsignaltemp),
        .data_in(sel_for_coalesced_delay_0_c),
        .valid_out(redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_valid_out_bitsignaltemp),
        .stall_out(redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_stall_out_bitsignaltemp),
        .data_out(redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo(BITJOIN,167)
    assign bubble_join_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_q = redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_data_out;

    // bubble_select_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo(BITSELECT,168)
    assign bubble_select_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_b = $unsigned(bubble_join_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_mem_lm22_conv2d1x19(BITJOIN,141)
    assign bubble_join_i_llvm_fpga_mem_lm22_conv2d1x19_q = i_llvm_fpga_mem_lm22_conv2d1x19_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm22_conv2d1x19(BITSELECT,142)
    assign bubble_select_i_llvm_fpga_mem_lm22_conv2d1x19_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm22_conv2d1x19_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm20_conv2d1x18(BITJOIN,138)
    assign bubble_join_i_llvm_fpga_mem_lm20_conv2d1x18_q = i_llvm_fpga_mem_lm20_conv2d1x18_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm20_conv2d1x18(BITSELECT,139)
    assign bubble_select_i_llvm_fpga_mem_lm20_conv2d1x18_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm20_conv2d1x18_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm18_conv2d1x17(BITJOIN,135)
    assign bubble_join_i_llvm_fpga_mem_lm18_conv2d1x17_q = i_llvm_fpga_mem_lm18_conv2d1x17_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm18_conv2d1x17(BITSELECT,136)
    assign bubble_select_i_llvm_fpga_mem_lm18_conv2d1x17_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm18_conv2d1x17_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm_conv2d1x16(BITJOIN,144)
    assign bubble_join_i_llvm_fpga_mem_lm_conv2d1x16_q = i_llvm_fpga_mem_lm_conv2d1x16_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm_conv2d1x16(BITSELECT,145)
    assign bubble_select_i_llvm_fpga_mem_lm_conv2d1x16_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm_conv2d1x16_q[31:0]);

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,176)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,177)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[159:0]);

    // sel_for_coalesced_delay_1(BITSELECT,102)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[95:64]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[127:96]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[159:128]);

    // bubble_join_i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x(BITJOIN,154)
    assign bubble_join_i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_q = {i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_o_readdata_3_tpl, i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_o_readdata_2_tpl, i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_o_readdata_1_tpl, i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_o_readdata_0_tpl};

    // bubble_select_i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x(BITSELECT,155)
    assign bubble_select_i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_q[31:0]);
    assign bubble_select_i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_c = $unsigned(bubble_join_i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_q[63:32]);
    assign bubble_select_i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_d = $unsigned(bubble_join_i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_q[95:64]);
    assign bubble_select_i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_e = $unsigned(bubble_join_i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_q[127:96]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_i32_114(CONSTANT,4)
    assign c_i32_114_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_conv2d1x10(ADD,13)@137
    assign i_inc_conv2d1x10_a = {1'b0, sel_for_coalesced_delay_1_c};
    assign i_inc_conv2d1x10_b = {1'b0, c_i32_114_q};
    assign i_inc_conv2d1x10_o = $unsigned(i_inc_conv2d1x10_a) + $unsigned(i_inc_conv2d1x10_b);
    assign i_inc_conv2d1x10_q = i_inc_conv2d1x10_o[32:0];

    // bgTrunc_i_inc_conv2d1x10_sel_x(BITSELECT,45)@137
    assign bgTrunc_i_inc_conv2d1x10_sel_x_b = i_inc_conv2d1x10_q[31:0];

    // i_inc_conv2d1x10_vt_select_30(BITSELECT,16)@137
    assign i_inc_conv2d1x10_vt_select_30_b = bgTrunc_i_inc_conv2d1x10_sel_x_b[30:0];

    // redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo(STALLFIFO,114)
    assign redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_valid_in = SE_out_coalesced_delay_1_fifo_V2;
    assign redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_stall_in = SE_out_coalesced_delay_4_fifo_backStall;
    assign redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_data_in = i_inc_conv2d1x10_vt_select_30_b;
    assign redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_valid_in_bitsignaltemp = redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_valid_in[0];
    assign redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_stall_in_bitsignaltemp = redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_stall_in[0];
    assign redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_valid_out[0] = redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_valid_out_bitsignaltemp;
    assign redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_stall_out[0] = redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(25),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(31),
        .IMPL("ram")
    ) theredist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo (
        .valid_in(redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_valid_in_bitsignaltemp),
        .stall_in(redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_stall_in_bitsignaltemp),
        .data_in(i_inc_conv2d1x10_vt_select_30_b),
        .valid_out(redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_valid_out_bitsignaltemp),
        .stall_out(redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_stall_out_bitsignaltemp),
        .data_out(redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_4(BITJOIN,110)
    assign join_for_coalesced_delay_4_q = {bubble_select_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_b, sel_for_coalesced_delay_1_e, sel_for_coalesced_delay_1_b};

    // SE_join_for_coalesced_delay_4(STALLENABLE,224)
    // Valid signal propagation
    assign SE_join_for_coalesced_delay_4_V0 = SE_join_for_coalesced_delay_4_wireValid;
    // Backward Stall generation
    assign SE_join_for_coalesced_delay_4_backStall = coalesced_delay_4_fifo_stall_out | ~ (SE_join_for_coalesced_delay_4_wireValid);
    // Computing multiple Valid(s)
    assign SE_join_for_coalesced_delay_4_and0 = SE_out_coalesced_delay_1_fifo_V1;
    assign SE_join_for_coalesced_delay_4_wireValid = SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_V1 & SE_join_for_coalesced_delay_4_and0;

    // coalesced_delay_4_fifo(STALLFIFO,133)
    assign coalesced_delay_4_fifo_valid_in = SE_join_for_coalesced_delay_4_V0;
    assign coalesced_delay_4_fifo_stall_in = SE_out_coalesced_delay_4_fifo_backStall;
    assign coalesced_delay_4_fifo_data_in = join_for_coalesced_delay_4_q;
    assign coalesced_delay_4_fifo_valid_in_bitsignaltemp = coalesced_delay_4_fifo_valid_in[0];
    assign coalesced_delay_4_fifo_stall_in_bitsignaltemp = coalesced_delay_4_fifo_stall_in[0];
    assign coalesced_delay_4_fifo_valid_out[0] = coalesced_delay_4_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_4_fifo_stall_out[0] = coalesced_delay_4_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(25),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(97),
        .IMPL("ram")
    ) thecoalesced_delay_4_fifo (
        .valid_in(coalesced_delay_4_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_4_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_4_q),
        .valid_out(coalesced_delay_4_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_4_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_4_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_4_fifo(STALLENABLE,255)
    // Valid signal propagation
    assign SE_out_coalesced_delay_4_fifo_V0 = SE_out_coalesced_delay_4_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_4_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_4_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_4_fifo_and0 = coalesced_delay_4_fifo_valid_out;
    assign SE_out_coalesced_delay_4_fifo_and1 = coalesced_delay_3_fifo_valid_out & SE_out_coalesced_delay_4_fifo_and0;
    assign SE_out_coalesced_delay_4_fifo_and2 = coalesced_delay_2_fifo_valid_out & SE_out_coalesced_delay_4_fifo_and1;
    assign SE_out_coalesced_delay_4_fifo_and3 = redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_valid_out & SE_out_coalesced_delay_4_fifo_and2;
    assign SE_out_coalesced_delay_4_fifo_and4 = redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_valid_out & SE_out_coalesced_delay_4_fifo_and3;
    assign SE_out_coalesced_delay_4_fifo_wireValid = i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_o_valid & SE_out_coalesced_delay_4_fifo_and4;

    // i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x(BLACKBOX,69)@137
    // in in_i_stall@20000000
    // out out_lm28179_conv2d1x1_avm_address@20000000
    // out out_lm28179_conv2d1x1_avm_burstcount@20000000
    // out out_lm28179_conv2d1x1_avm_byteenable@20000000
    // out out_lm28179_conv2d1x1_avm_enable@20000000
    // out out_lm28179_conv2d1x1_avm_read@20000000
    // out out_lm28179_conv2d1x1_avm_write@20000000
    // out out_lm28179_conv2d1x1_avm_writedata@20000000
    // out out_memdep_78_conv2d1x1_avm_address@20000000
    // out out_memdep_78_conv2d1x1_avm_burstcount@20000000
    // out out_memdep_78_conv2d1x1_avm_byteenable@20000000
    // out out_memdep_78_conv2d1x1_avm_enable@20000000
    // out out_memdep_78_conv2d1x1_avm_read@20000000
    // out out_memdep_78_conv2d1x1_avm_write@20000000
    // out out_memdep_78_conv2d1x1_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@161
    // out out_c1_exit_0_tpl@161
    // out out_c1_exit_1_tpl@161
    conv2d1x1_i_sfc_s_c1_in_for_body13_s_c1_enter_conv2d1x112 thei_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_coalesced_delay_4_fifo_backStall),
        .in_i_valid(SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_V0),
        .in_lm28179_conv2d1x1_avm_readdata(in_lm28179_conv2d1x1_avm_readdata),
        .in_lm28179_conv2d1x1_avm_readdatavalid(in_lm28179_conv2d1x1_avm_readdatavalid),
        .in_lm28179_conv2d1x1_avm_waitrequest(in_lm28179_conv2d1x1_avm_waitrequest),
        .in_lm28179_conv2d1x1_avm_writeack(in_lm28179_conv2d1x1_avm_writeack),
        .in_memdep_78_conv2d1x1_avm_readdata(in_memdep_78_conv2d1x1_avm_readdata),
        .in_memdep_78_conv2d1x1_avm_readdatavalid(in_memdep_78_conv2d1x1_avm_readdatavalid),
        .in_memdep_78_conv2d1x1_avm_waitrequest(in_memdep_78_conv2d1x1_avm_waitrequest),
        .in_memdep_78_conv2d1x1_avm_writeack(in_memdep_78_conv2d1x1_avm_writeack),
        .in_c1_eni11_0_tpl(GND_q),
        .in_c1_eni11_0_10_tpl(bubble_select_i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_b),
        .in_c1_eni11_1_tpl(sel_for_coalesced_delay_1_c),
        .in_c1_eni11_1_10_tpl(bubble_select_i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_c),
        .in_c1_eni11_2_tpl(sel_for_coalesced_delay_1_b),
        .in_c1_eni11_2_10_tpl(bubble_select_i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_d),
        .in_c1_eni11_3_tpl(bubble_select_i_llvm_fpga_mem_lm_conv2d1x16_b),
        .in_c1_eni11_3_10_tpl(bubble_select_i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_e),
        .in_c1_eni11_4_tpl(bubble_select_i_llvm_fpga_mem_lm18_conv2d1x17_b),
        .in_c1_eni11_5_tpl(bubble_select_i_llvm_fpga_mem_lm20_conv2d1x18_b),
        .in_c1_eni11_6_tpl(bubble_select_i_llvm_fpga_mem_lm22_conv2d1x19_b),
        .in_c1_eni11_7_tpl(sel_for_coalesced_delay_1_e),
        .in_c1_eni11_8_tpl(bubble_select_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_b),
        .in_c1_eni11_9_tpl(bubble_select_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_b),
        .in_c1_eni11_11_tpl(sel_for_coalesced_delay_1_d),
        .out_lm28179_conv2d1x1_avm_address(i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_lm28179_conv2d1x1_avm_address),
        .out_lm28179_conv2d1x1_avm_burstcount(i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_lm28179_conv2d1x1_avm_burstcount),
        .out_lm28179_conv2d1x1_avm_byteenable(i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_lm28179_conv2d1x1_avm_byteenable),
        .out_lm28179_conv2d1x1_avm_enable(i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_lm28179_conv2d1x1_avm_enable),
        .out_lm28179_conv2d1x1_avm_read(i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_lm28179_conv2d1x1_avm_read),
        .out_lm28179_conv2d1x1_avm_write(i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_lm28179_conv2d1x1_avm_write),
        .out_lm28179_conv2d1x1_avm_writedata(i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_lm28179_conv2d1x1_avm_writedata),
        .out_memdep_78_conv2d1x1_avm_address(i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_memdep_78_conv2d1x1_avm_address),
        .out_memdep_78_conv2d1x1_avm_burstcount(i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_memdep_78_conv2d1x1_avm_burstcount),
        .out_memdep_78_conv2d1x1_avm_byteenable(i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_memdep_78_conv2d1x1_avm_byteenable),
        .out_memdep_78_conv2d1x1_avm_enable(i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_memdep_78_conv2d1x1_avm_enable),
        .out_memdep_78_conv2d1x1_avm_read(i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_memdep_78_conv2d1x1_avm_read),
        .out_memdep_78_conv2d1x1_avm_write(i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_memdep_78_conv2d1x1_avm_write),
        .out_memdep_78_conv2d1x1_avm_writedata(i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_memdep_78_conv2d1x1_avm_writedata),
        .out_o_stall(i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo(STALLENABLE,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_fromReg0 <= '0;
            SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_fromReg0 <= SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_toReg0;
            // Successor 1
            SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_fromReg1 <= SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_consumed0 = (~ (SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_backStall) & SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_wireValid) | SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_fromReg0;
    assign SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_consumed1 = (~ (SE_join_for_coalesced_delay_4_backStall) & SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_wireValid) | SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_fromReg1;
    // Consuming
    assign SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_StallValid = SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_backStall & SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_wireValid;
    assign SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_toReg0 = SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_StallValid & SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_consumed0;
    assign SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_toReg1 = SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_StallValid & SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_or0 = SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_consumed0;
    assign SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_wireStall = ~ (SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_consumed1 & SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_or0);
    assign SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_backStall = SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_V0 = SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_wireValid & ~ (SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_fromReg0);
    assign SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_V1 = SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_wireValid & ~ (SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_wireValid = redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_valid_out;

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,249)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_1_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_1_fifo_fromReg1 <= '0;
            SE_out_coalesced_delay_1_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_1_fifo_fromReg0 <= SE_out_coalesced_delay_1_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_1_fifo_fromReg1 <= SE_out_coalesced_delay_1_fifo_toReg1;
            // Successor 2
            SE_out_coalesced_delay_1_fifo_fromReg2 <= SE_out_coalesced_delay_1_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_1_fifo_consumed0 = (~ (SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_backStall) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg0;
    assign SE_out_coalesced_delay_1_fifo_consumed1 = (~ (SE_join_for_coalesced_delay_4_backStall) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg1;
    assign SE_out_coalesced_delay_1_fifo_consumed2 = (~ (redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg2;
    // Consuming
    assign SE_out_coalesced_delay_1_fifo_StallValid = SE_out_coalesced_delay_1_fifo_backStall & SE_out_coalesced_delay_1_fifo_wireValid;
    assign SE_out_coalesced_delay_1_fifo_toReg0 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed0;
    assign SE_out_coalesced_delay_1_fifo_toReg1 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed1;
    assign SE_out_coalesced_delay_1_fifo_toReg2 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_or0 = SE_out_coalesced_delay_1_fifo_consumed0;
    assign SE_out_coalesced_delay_1_fifo_or1 = SE_out_coalesced_delay_1_fifo_consumed1 & SE_out_coalesced_delay_1_fifo_or0;
    assign SE_out_coalesced_delay_1_fifo_wireStall = ~ (SE_out_coalesced_delay_1_fifo_consumed2 & SE_out_coalesced_delay_1_fifo_or1);
    assign SE_out_coalesced_delay_1_fifo_backStall = SE_out_coalesced_delay_1_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg0);
    assign SE_out_coalesced_delay_1_fifo_V1 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg1);
    assign SE_out_coalesced_delay_1_fifo_V2 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_wireValid = coalesced_delay_1_fifo_valid_out;

    // i_idxprom55_conv2d1x11_vt_const_63(CONSTANT,10)
    assign i_idxprom55_conv2d1x11_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4(REG,119)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_backEN == 1'b1)
        begin
            redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_q <= $unsigned(SR_SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_D0);
        end
    end

    // redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5(REG,120)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_backEN == 1'b1)
        begin
            redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_q <= $unsigned(redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_4_q);
        end
    end

    // redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6(REG,121)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_backEN == 1'b1)
        begin
            redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_q <= $unsigned(redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_5_q);
        end
    end

    // i_idxprom55_conv2d1x11_vt_join(BITJOIN,11)@8
    assign i_idxprom55_conv2d1x11_vt_join_q = {i_idxprom55_conv2d1x11_vt_const_63_q, redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_q};

    // i_arrayidx5812_conv2d1x10_narrow_x(BITSELECT,62)@8
    assign i_arrayidx5812_conv2d1x10_narrow_x_b = i_idxprom55_conv2d1x11_vt_join_q[59:0];

    // i_arrayidx5812_conv2d1x10_c_i4_01_x(CONSTANT,61)
    assign i_arrayidx5812_conv2d1x10_c_i4_01_x_q = $unsigned(4'b0000);

    // i_arrayidx5812_conv2d1x10_shift_join_x(BITJOIN,63)@8
    assign i_arrayidx5812_conv2d1x10_shift_join_x_q = {i_arrayidx5812_conv2d1x10_narrow_x_b, i_arrayidx5812_conv2d1x10_c_i4_01_x_q};

    // i_arrayidx5812_conv2d1x10_add_x(ADD,60)@8
    assign i_arrayidx5812_conv2d1x10_add_x_a = {1'b0, sel_for_coalesced_delay_0_b};
    assign i_arrayidx5812_conv2d1x10_add_x_b = {1'b0, i_arrayidx5812_conv2d1x10_shift_join_x_q};
    assign i_arrayidx5812_conv2d1x10_add_x_o = $unsigned(i_arrayidx5812_conv2d1x10_add_x_a) + $unsigned(i_arrayidx5812_conv2d1x10_add_x_b);
    assign i_arrayidx5812_conv2d1x10_add_x_q = i_arrayidx5812_conv2d1x10_add_x_o[64:0];

    // i_arrayidx5812_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,65)@8
    assign i_arrayidx5812_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx5812_conv2d1x10_add_x_q[63:0];

    // i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x(BLACKBOX,67)@8
    // in in_i_stall@20000000
    // out out_lm31_conv2d1x1_avm_address@20000000
    // out out_lm31_conv2d1x1_avm_burstcount@20000000
    // out out_lm31_conv2d1x1_avm_byteenable@20000000
    // out out_lm31_conv2d1x1_avm_enable@20000000
    // out out_lm31_conv2d1x1_avm_read@20000000
    // out out_lm31_conv2d1x1_avm_write@20000000
    // out out_lm31_conv2d1x1_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@137
    // out out_o_readdata_0_tpl@137
    // out out_o_readdata_1_tpl@137
    // out out_o_readdata_2_tpl@137
    // out out_o_readdata_3_tpl@137
    conv2d1x1_i_llvm_fpga_mem_lm31_0 thei_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx5812_conv2d1x10_dupName_0_trunc_sel_x_b),
        .in_i_predicate(sel_for_coalesced_delay_0_c),
        .in_i_stall(SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_backStall),
        .in_i_valid(SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_V4),
        .in_lm31_conv2d1x1_avm_readdata(in_lm31_conv2d1x1_avm_readdata),
        .in_lm31_conv2d1x1_avm_readdatavalid(in_lm31_conv2d1x1_avm_readdatavalid),
        .in_lm31_conv2d1x1_avm_waitrequest(in_lm31_conv2d1x1_avm_waitrequest),
        .in_lm31_conv2d1x1_avm_writeack(in_lm31_conv2d1x1_avm_writeack),
        .out_lm31_conv2d1x1_avm_address(i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_lm31_conv2d1x1_avm_address),
        .out_lm31_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_lm31_conv2d1x1_avm_burstcount),
        .out_lm31_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_lm31_conv2d1x1_avm_byteenable),
        .out_lm31_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_lm31_conv2d1x1_avm_enable),
        .out_lm31_conv2d1x1_avm_read(i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_lm31_conv2d1x1_avm_read),
        .out_lm31_conv2d1x1_avm_write(i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_lm31_conv2d1x1_avm_write),
        .out_lm31_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_lm31_conv2d1x1_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_o_valid),
        .out_o_readdata_0_tpl(i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_o_readdata_0_tpl),
        .out_o_readdata_1_tpl(i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_o_readdata_1_tpl),
        .out_o_readdata_2_tpl(i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_o_readdata_2_tpl),
        .out_o_readdata_3_tpl(i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_o_readdata_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo(STALLFIFO,122)
    assign redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_valid_in = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_V0;
    assign redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_stall_in = SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_backStall;
    assign redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_data_in = i_idxprom55_conv2d1x11_vt_join_q;
    assign redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_valid_in_bitsignaltemp = redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_valid_in[0];
    assign redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_stall_in_bitsignaltemp = redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_stall_in[0];
    assign redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_valid_out[0] = redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_valid_out_bitsignaltemp;
    assign redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_stall_out[0] = redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(130),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo (
        .valid_in(redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_valid_in_bitsignaltemp),
        .stall_in(redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_stall_in_bitsignaltemp),
        .data_in(i_idxprom55_conv2d1x11_vt_join_q),
        .valid_out(redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_valid_out_bitsignaltemp),
        .stall_out(redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_stall_out_bitsignaltemp),
        .data_out(redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo(STALLENABLE,240)
    // Valid signal propagation
    assign SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_V0 = SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_backStall = i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_o_stall | ~ (SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_and0 = redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_valid_out;
    assign SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_and1 = i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_o_valid & SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_and0;
    assign SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_and2 = i_llvm_fpga_mem_lm_conv2d1x16_out_o_valid & SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_and1;
    assign SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_and3 = i_llvm_fpga_mem_lm22_conv2d1x19_out_o_valid & SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_and2;
    assign SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_and4 = i_llvm_fpga_mem_lm20_conv2d1x18_out_o_valid & SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_and3;
    assign SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_and5 = i_llvm_fpga_mem_lm18_conv2d1x17_out_o_valid & SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_and4;
    assign SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_and6 = SE_out_coalesced_delay_1_fifo_V0 & SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_and5;
    assign SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_wireValid = SE_out_redist15_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_10_tpl_136_fifo_V0 & SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_and6;

    // SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17(STALLREG,329)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data1 <= 1'bx;
            SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data2 <= 1'bx;
            SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data3 <= 1'bx;
            SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data4 <= 1'bx;
            SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data5 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data6 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data7 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_valid <= SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_backStall & (SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_valid | SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_i_valid);

            if (SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data0 <= $unsigned(bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_c);
                SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data1 <= $unsigned(sel_for_coalesced_delay_0_c);
                SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data2 <= $unsigned(sel_for_coalesced_delay_0_c);
                SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data3 <= $unsigned(sel_for_coalesced_delay_0_c);
                SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data4 <= $unsigned(sel_for_coalesced_delay_0_c);
                SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data5 <= $unsigned(bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_d);
                SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data6 <= $unsigned(bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_e);
                SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data7 <= $unsigned(bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_and0 = SE_redist23_i_idxprom55_conv2d1x11_vt_select_31_b_7_6_V1;
    assign SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_i_valid = SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_V0 & SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_backStall = SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_valid | ~ (SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_V = SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_valid : SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_D0 = SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data0 : bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_c;
    // Data1
    assign SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_D1 = SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data1 : sel_for_coalesced_delay_0_c;
    // Data2
    assign SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_D2 = SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data2 : sel_for_coalesced_delay_0_c;
    // Data3
    assign SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_D3 = SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data3 : sel_for_coalesced_delay_0_c;
    // Data4
    assign SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_D4 = SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data4 : sel_for_coalesced_delay_0_c;
    // Data5
    assign SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_D5 = SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data5 : bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_d;
    // Data6
    assign SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_D6 = SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data6 : bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_e;
    // Data7
    assign SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_D7 = SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_r_data7 : bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5238_conv2d1x13_aunroll_x_b;

    // i_llvm_fpga_mem_lm_conv2d1x16(BLACKBOX,20)@8
    // in in_i_stall@20000000
    // out out_lm_conv2d1x1_avm_address@20000000
    // out out_lm_conv2d1x1_avm_burstcount@20000000
    // out out_lm_conv2d1x1_avm_byteenable@20000000
    // out out_lm_conv2d1x1_avm_enable@20000000
    // out out_lm_conv2d1x1_avm_read@20000000
    // out out_lm_conv2d1x1_avm_write@20000000
    // out out_lm_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@137
    // out out_o_stall@20000000
    // out out_o_valid@137
    conv2d1x1_i_llvm_fpga_mem_lm_0 thei_llvm_fpga_mem_lm_conv2d1x16 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_D7),
        .in_i_predicate(SR_SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_D4),
        .in_i_stall(SE_out_redist24_i_idxprom55_conv2d1x11_vt_join_q_129_fifo_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm18_conv2d1x17_V3),
        .in_lm_conv2d1x1_avm_readdata(in_lm_conv2d1x1_avm_readdata),
        .in_lm_conv2d1x1_avm_readdatavalid(in_lm_conv2d1x1_avm_readdatavalid),
        .in_lm_conv2d1x1_avm_waitrequest(in_lm_conv2d1x1_avm_waitrequest),
        .in_lm_conv2d1x1_avm_writeack(in_lm_conv2d1x1_avm_writeack),
        .out_lm_conv2d1x1_avm_address(i_llvm_fpga_mem_lm_conv2d1x16_out_lm_conv2d1x1_avm_address),
        .out_lm_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm_conv2d1x16_out_lm_conv2d1x1_avm_burstcount),
        .out_lm_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm_conv2d1x16_out_lm_conv2d1x1_avm_byteenable),
        .out_lm_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm_conv2d1x16_out_lm_conv2d1x1_avm_enable),
        .out_lm_conv2d1x1_avm_read(i_llvm_fpga_mem_lm_conv2d1x16_out_lm_conv2d1x1_avm_read),
        .out_lm_conv2d1x1_avm_write(i_llvm_fpga_mem_lm_conv2d1x16_out_lm_conv2d1x1_avm_write),
        .out_lm_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm_conv2d1x16_out_lm_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm_conv2d1x16_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm_conv2d1x16_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm_conv2d1x16_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_lm_conv2d1x1_avm_address = i_llvm_fpga_mem_lm_conv2d1x16_out_lm_conv2d1x1_avm_address;
    assign out_lm_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm_conv2d1x16_out_lm_conv2d1x1_avm_enable;
    assign out_lm_conv2d1x1_avm_read = i_llvm_fpga_mem_lm_conv2d1x16_out_lm_conv2d1x1_avm_read;
    assign out_lm_conv2d1x1_avm_write = i_llvm_fpga_mem_lm_conv2d1x16_out_lm_conv2d1x1_avm_write;
    assign out_lm_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm_conv2d1x16_out_lm_conv2d1x1_avm_writedata;
    assign out_lm_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm_conv2d1x16_out_lm_conv2d1x1_avm_byteenable;
    assign out_lm_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm_conv2d1x16_out_lm_conv2d1x1_avm_burstcount;

    // sync_out(GPOUT,43)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,48)
    assign out_lm18_conv2d1x1_avm_address = i_llvm_fpga_mem_lm18_conv2d1x17_out_lm18_conv2d1x1_avm_address;
    assign out_lm18_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm18_conv2d1x17_out_lm18_conv2d1x1_avm_enable;
    assign out_lm18_conv2d1x1_avm_read = i_llvm_fpga_mem_lm18_conv2d1x17_out_lm18_conv2d1x1_avm_read;
    assign out_lm18_conv2d1x1_avm_write = i_llvm_fpga_mem_lm18_conv2d1x17_out_lm18_conv2d1x1_avm_write;
    assign out_lm18_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm18_conv2d1x17_out_lm18_conv2d1x1_avm_writedata;
    assign out_lm18_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm18_conv2d1x17_out_lm18_conv2d1x1_avm_byteenable;
    assign out_lm18_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm18_conv2d1x17_out_lm18_conv2d1x1_avm_burstcount;

    // bubble_join_redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo(BITJOIN,170)
    assign bubble_join_redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_q = redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_data_out;

    // bubble_select_redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo(BITSELECT,171)
    assign bubble_select_redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_b = $unsigned(bubble_join_redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_q[30:0]);

    // i_inc_conv2d1x10_vt_join(BITJOIN,15)@161
    assign i_inc_conv2d1x10_vt_join_q = {GND_q, bubble_select_redist22_i_inc_conv2d1x10_vt_select_30_b_24_fifo_b};

    // bubble_join_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x(BITJOIN,160)
    assign bubble_join_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_q = i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x(BITSELECT,161)
    assign bubble_select_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_q[31:0]);

    // bubble_join_coalesced_delay_3_fifo(BITJOIN,182)
    assign bubble_join_coalesced_delay_3_fifo_q = coalesced_delay_3_fifo_data_out;

    // bubble_select_coalesced_delay_3_fifo(BITSELECT,183)
    assign bubble_select_coalesced_delay_3_fifo_b = $unsigned(bubble_join_coalesced_delay_3_fifo_q[32:0]);

    // sel_for_coalesced_delay_3(BITSELECT,108)
    assign sel_for_coalesced_delay_3_b = $unsigned(bubble_select_coalesced_delay_3_fifo_b[31:0]);
    assign sel_for_coalesced_delay_3_c = $unsigned(bubble_select_coalesced_delay_3_fifo_b[32:32]);

    // bubble_join_redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo(BITJOIN,164)
    assign bubble_join_redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_q = redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_data_out;

    // bubble_select_redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo(BITSELECT,165)
    assign bubble_select_redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_b = $unsigned(bubble_join_redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_q[63:0]);

    // bubble_join_coalesced_delay_4_fifo(BITJOIN,185)
    assign bubble_join_coalesced_delay_4_fifo_q = coalesced_delay_4_fifo_data_out;

    // bubble_select_coalesced_delay_4_fifo(BITSELECT,186)
    assign bubble_select_coalesced_delay_4_fifo_b = $unsigned(bubble_join_coalesced_delay_4_fifo_q[96:0]);

    // sel_for_coalesced_delay_4(BITSELECT,111)
    assign sel_for_coalesced_delay_4_b = $unsigned(bubble_select_coalesced_delay_4_fifo_b[63:0]);
    assign sel_for_coalesced_delay_4_c = $unsigned(bubble_select_coalesced_delay_4_fifo_b[95:64]);
    assign sel_for_coalesced_delay_4_d = $unsigned(bubble_select_coalesced_delay_4_fifo_b[96:96]);

    // bubble_join_coalesced_delay_2_fifo(BITJOIN,179)
    assign bubble_join_coalesced_delay_2_fifo_q = coalesced_delay_2_fifo_data_out;

    // bubble_select_coalesced_delay_2_fifo(BITSELECT,180)
    assign bubble_select_coalesced_delay_2_fifo_b = $unsigned(bubble_join_coalesced_delay_2_fifo_q[258:0]);

    // sel_for_coalesced_delay_2(BITSELECT,105)
    assign sel_for_coalesced_delay_2_b = $unsigned(bubble_select_coalesced_delay_2_fifo_b[63:0]);
    assign sel_for_coalesced_delay_2_c = $unsigned(bubble_select_coalesced_delay_2_fifo_b[127:64]);
    assign sel_for_coalesced_delay_2_d = $unsigned(bubble_select_coalesced_delay_2_fifo_b[159:128]);
    assign sel_for_coalesced_delay_2_e = $unsigned(bubble_select_coalesced_delay_2_fifo_b[191:160]);
    assign sel_for_coalesced_delay_2_f = $unsigned(bubble_select_coalesced_delay_2_fifo_b[223:192]);
    assign sel_for_coalesced_delay_2_g = $unsigned(bubble_select_coalesced_delay_2_fifo_b[255:224]);
    assign sel_for_coalesced_delay_2_h = $unsigned(bubble_select_coalesced_delay_2_fifo_b[256:256]);
    assign sel_for_coalesced_delay_2_i = $unsigned(bubble_select_coalesced_delay_2_fifo_b[257:257]);
    assign sel_for_coalesced_delay_2_j = $unsigned(bubble_select_coalesced_delay_2_fifo_b[258:258]);

    // dupName_0_sync_out_x(GPOUT,49)@161
    assign out_acl_global_id_136 = sel_for_coalesced_delay_2_c;
    assign out_c0_exe14932 = sel_for_coalesced_delay_2_g;
    assign out_c0_exe15 = sel_for_coalesced_delay_4_b;
    assign out_c0_exe28 = bubble_select_redist9_conv2d1x1_B3_merge_reg_aunroll_x_out_data_out_5_tpl_160_fifo_b;
    assign out_c0_exe411 = sel_for_coalesced_delay_2_d;
    assign out_c0_exe515 = sel_for_coalesced_delay_2_b;
    assign out_c0_exe566 = sel_for_coalesced_delay_3_b;
    assign out_c0_exe618 = sel_for_coalesced_delay_2_h;
    assign out_c0_exe667 = sel_for_coalesced_delay_3_c;
    assign out_c0_exe720 = sel_for_coalesced_delay_2_i;
    assign out_c0_exe823 = sel_for_coalesced_delay_4_d;
    assign out_c0_exe927 = sel_for_coalesced_delay_2_j;
    assign out_c1_exe1 = bubble_select_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_b;
    assign out_inc = i_inc_conv2d1x10_vt_join_q;
    assign out_j_07030 = sel_for_coalesced_delay_2_f;
    assign out_l_grpid_01 = sel_for_coalesced_delay_4_c;
    assign out_unnamed_conv2d1x14 = sel_for_coalesced_delay_2_e;
    assign out_valid_out = SE_out_coalesced_delay_4_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,51)
    assign out_lm20_conv2d1x1_avm_address = i_llvm_fpga_mem_lm20_conv2d1x18_out_lm20_conv2d1x1_avm_address;
    assign out_lm20_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm20_conv2d1x18_out_lm20_conv2d1x1_avm_enable;
    assign out_lm20_conv2d1x1_avm_read = i_llvm_fpga_mem_lm20_conv2d1x18_out_lm20_conv2d1x1_avm_read;
    assign out_lm20_conv2d1x1_avm_write = i_llvm_fpga_mem_lm20_conv2d1x18_out_lm20_conv2d1x1_avm_write;
    assign out_lm20_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm20_conv2d1x18_out_lm20_conv2d1x1_avm_writedata;
    assign out_lm20_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm20_conv2d1x18_out_lm20_conv2d1x1_avm_byteenable;
    assign out_lm20_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm20_conv2d1x18_out_lm20_conv2d1x1_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,53)
    assign out_lm22_conv2d1x1_avm_address = i_llvm_fpga_mem_lm22_conv2d1x19_out_lm22_conv2d1x1_avm_address;
    assign out_lm22_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm22_conv2d1x19_out_lm22_conv2d1x1_avm_enable;
    assign out_lm22_conv2d1x1_avm_read = i_llvm_fpga_mem_lm22_conv2d1x19_out_lm22_conv2d1x1_avm_read;
    assign out_lm22_conv2d1x1_avm_write = i_llvm_fpga_mem_lm22_conv2d1x19_out_lm22_conv2d1x1_avm_write;
    assign out_lm22_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm22_conv2d1x19_out_lm22_conv2d1x1_avm_writedata;
    assign out_lm22_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm22_conv2d1x19_out_lm22_conv2d1x1_avm_byteenable;
    assign out_lm22_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm22_conv2d1x19_out_lm22_conv2d1x1_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,55)
    assign out_lm31_conv2d1x1_avm_address = i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_lm31_conv2d1x1_avm_address;
    assign out_lm31_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_lm31_conv2d1x1_avm_enable;
    assign out_lm31_conv2d1x1_avm_read = i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_lm31_conv2d1x1_avm_read;
    assign out_lm31_conv2d1x1_avm_write = i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_lm31_conv2d1x1_avm_write;
    assign out_lm31_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_lm31_conv2d1x1_avm_writedata;
    assign out_lm31_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_lm31_conv2d1x1_avm_byteenable;
    assign out_lm31_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm31_conv2d1x110_vunroll_x_out_lm31_conv2d1x1_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,57)
    assign out_memdep_78_conv2d1x1_avm_address = i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_memdep_78_conv2d1x1_avm_address;
    assign out_memdep_78_conv2d1x1_avm_enable = i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_memdep_78_conv2d1x1_avm_enable;
    assign out_memdep_78_conv2d1x1_avm_read = i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_memdep_78_conv2d1x1_avm_read;
    assign out_memdep_78_conv2d1x1_avm_write = i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_memdep_78_conv2d1x1_avm_write;
    assign out_memdep_78_conv2d1x1_avm_writedata = i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_memdep_78_conv2d1x1_avm_writedata;
    assign out_memdep_78_conv2d1x1_avm_byteenable = i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_memdep_78_conv2d1x1_avm_byteenable;
    assign out_memdep_78_conv2d1x1_avm_burstcount = i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_memdep_78_conv2d1x1_avm_burstcount;

    // dupName_5_ext_sig_sync_out_x(GPOUT,59)
    assign out_lm28179_conv2d1x1_avm_address = i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_lm28179_conv2d1x1_avm_address;
    assign out_lm28179_conv2d1x1_avm_enable = i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_lm28179_conv2d1x1_avm_enable;
    assign out_lm28179_conv2d1x1_avm_read = i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_lm28179_conv2d1x1_avm_read;
    assign out_lm28179_conv2d1x1_avm_write = i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_lm28179_conv2d1x1_avm_write;
    assign out_lm28179_conv2d1x1_avm_writedata = i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_lm28179_conv2d1x1_avm_writedata;
    assign out_lm28179_conv2d1x1_avm_byteenable = i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_lm28179_conv2d1x1_avm_byteenable;
    assign out_lm28179_conv2d1x1_avm_burstcount = i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x112_aunroll_vunroll_x_out_lm28179_conv2d1x1_avm_burstcount;

endmodule
