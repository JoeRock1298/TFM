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

// SystemVerilog created from conv2d1x1_i_sfc_logic_s_c0_in_for_body8_0000nter13010_conv2d1x10
// SystemVerilog created on Wed May 17 13:49:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_logic_s_c0_in_for_body8_0000nter13010_conv2d1x10 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_input_im,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    output wire [0:0] out_c0_exi24_0_tpl,
    output wire [0:0] out_c0_exi24_1_tpl,
    output wire [0:0] out_c0_exi24_2_tpl,
    output wire [31:0] out_c0_exi24_3_tpl,
    output wire [63:0] out_c0_exi24_4_tpl,
    output wire [0:0] out_c0_exi24_5_tpl,
    output wire [63:0] out_c0_exi24_6_tpl,
    output wire [63:0] out_c0_exi24_7_tpl,
    output wire [63:0] out_c0_exi24_8_tpl,
    output wire [63:0] out_c0_exi24_9_tpl,
    output wire [0:0] out_c0_exi24_10_tpl,
    output wire [63:0] out_c0_exi24_11_tpl,
    output wire [0:0] out_c0_exi24_12_tpl,
    output wire [0:0] out_c0_exi24_13_tpl,
    output wire [0:0] out_c0_exi24_14_tpl,
    output wire [0:0] out_c0_exi24_15_tpl,
    output wire [63:0] out_c0_exi24_16_tpl,
    output wire [63:0] out_c0_exi24_17_tpl,
    output wire [31:0] out_c0_exi24_18_tpl,
    output wire [0:0] out_c0_exi24_19_tpl,
    output wire [0:0] out_c0_exi24_20_tpl,
    output wire [32:0] out_c0_exi24_21_tpl,
    output wire [31:0] out_c0_exi24_22_tpl,
    output wire [0:0] out_c0_exi24_23_tpl,
    output wire [31:0] out_c0_exi24_24_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d1x18,
    input wire [0:0] in_c0_eni18_0_tpl,
    input wire [0:0] in_c0_eni18_1_tpl,
    input wire [0:0] in_c0_eni18_2_tpl,
    input wire [31:0] in_c0_eni18_3_tpl,
    input wire [31:0] in_c0_eni18_4_tpl,
    input wire [63:0] in_c0_eni18_5_tpl,
    input wire [63:0] in_c0_eni18_6_tpl,
    input wire [0:0] in_c0_eni18_7_tpl,
    input wire [0:0] in_c0_eni18_8_tpl,
    input wire [0:0] in_c0_eni18_9_tpl,
    input wire [63:0] in_c0_eni18_10_tpl,
    input wire [63:0] in_c0_eni18_11_tpl,
    input wire [31:0] in_c0_eni18_12_tpl,
    input wire [0:0] in_c0_eni18_13_tpl,
    input wire [0:0] in_c0_eni18_14_tpl,
    input wire [32:0] in_c0_eni18_15_tpl,
    input wire [31:0] in_c0_eni18_16_tpl,
    input wire [0:0] in_c0_eni18_17_tpl,
    input wire [31:0] in_c0_eni18_18_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_1106_q;
    wire [31:0] c_i32_0109_q;
    wire [31:0] c_i32_1111_q;
    wire [32:0] c_i33_1114_q;
    wire [32:0] c_i33_undef108_q;
    wire [32:0] i_add11_conv2d1x125_a;
    wire [32:0] i_add11_conv2d1x125_b;
    logic [32:0] i_add11_conv2d1x125_o;
    wire [32:0] i_add11_conv2d1x125_q;
    wire [31:0] i_add18_conv2d1x134_vt_join_q;
    wire [29:0] i_add18_conv2d1x134_vt_select_31_b;
    wire [32:0] i_add21_conv2d1x136_a;
    wire [32:0] i_add21_conv2d1x136_b;
    logic [32:0] i_add21_conv2d1x136_o;
    wire [32:0] i_add21_conv2d1x136_q;
    wire [1:0] i_add28_conv2d1x140_vt_const_1_q;
    wire [31:0] i_add28_conv2d1x140_vt_join_q;
    wire [29:0] i_add28_conv2d1x140_vt_select_31_b;
    wire [32:0] i_add31_conv2d1x142_a;
    wire [32:0] i_add31_conv2d1x142_b;
    logic [32:0] i_add31_conv2d1x142_o;
    wire [32:0] i_add31_conv2d1x142_q;
    wire [1:0] i_add38_conv2d1x146_vt_const_1_q;
    wire [31:0] i_add38_conv2d1x146_vt_join_q;
    wire [29:0] i_add38_conv2d1x146_vt_select_31_b;
    wire [32:0] i_add41_conv2d1x148_a;
    wire [32:0] i_add41_conv2d1x148_b;
    logic [32:0] i_add41_conv2d1x148_o;
    wire [32:0] i_add41_conv2d1x148_q;
    wire [1:0] i_arrayidx132_conv2d1x128_vt_const_1_q;
    wire [63:0] i_arrayidx132_conv2d1x128_vt_join_q;
    wire [61:0] i_arrayidx132_conv2d1x128_vt_select_63_b;
    wire [63:0] i_arrayidx233_conv2d1x139_vt_join_q;
    wire [61:0] i_arrayidx233_conv2d1x139_vt_select_63_b;
    wire [63:0] i_arrayidx334_conv2d1x145_vt_join_q;
    wire [61:0] i_arrayidx334_conv2d1x145_vt_select_63_b;
    wire [63:0] i_arrayidx435_conv2d1x151_vt_join_q;
    wire [61:0] i_arrayidx435_conv2d1x151_vt_select_63_b;
    wire [1:0] i_cleanups_shl_conv2d1x15_vt_join_q;
    wire [0:0] i_cleanups_shl_conv2d1x15_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_conv2d1x14_q;
    wire [0:0] i_first_cleanup_xor_or_conv2d1x129_q;
    wire [33:0] i_fpga_indvars_iv_next_conv2d1x156_a;
    wire [33:0] i_fpga_indvars_iv_next_conv2d1x156_b;
    logic [33:0] i_fpga_indvars_iv_next_conv2d1x156_o;
    wire [33:0] i_fpga_indvars_iv_next_conv2d1x156_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_conv2d1x114_s;
    reg [32:0] i_fpga_indvars_iv_replace_phi_conv2d1x114_q;
    wire [63:0] i_idxprom14_conv2d1x130_vt_join_q;
    wire [31:0] i_idxprom14_conv2d1x130_vt_select_31_b;
    wire [32:0] i_inc_conv2d1x152_a;
    wire [32:0] i_inc_conv2d1x152_b;
    logic [32:0] i_inc_conv2d1x152_o;
    wire [32:0] i_inc_conv2d1x152_q;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x116_conv2d1x112_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2546_pop32_conv2d1x171_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2546_pop32_conv2d1x171_out_feedback_stall_out_32;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3045_pop31_conv2d1x169_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3045_pop31_conv2d1x169_out_feedback_stall_out_31;
    wire [0:0] i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_feedback_stall_out_28;
    wire [0:0] i_llvm_fpga_pop_i1_pop29_conv2d1x167_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop29_conv2d1x167_out_feedback_stall_out_29;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop24_conv2d1x12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop24_conv2d1x12_out_feedback_stall_out_24;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop23_conv2d1x17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop23_conv2d1x17_out_feedback_stall_out_23;
    wire [31:0] i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_feedback_stall_out_33;
    wire [31:0] i_llvm_fpga_pop_i32_k_047_pop21_conv2d1x118_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_047_pop21_conv2d1x118_out_feedback_stall_out_21;
    wire [31:0] i_llvm_fpga_pop_i32_mul41_pop27_conv2d1x120_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul41_pop27_conv2d1x120_out_feedback_stall_out_27;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_conv2d1x113_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_conv2d1x113_out_feedback_stall_out_20;
    wire [63:0] i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165_out_feedback_stall_out_25;
    wire [63:0] i_llvm_fpga_pop_p1024v4f32_filter_weight_addr_053_replace_phi38_pop26_conv2d1x131_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024v4f32_filter_weight_addr_053_replace_phi38_pop26_conv2d1x131_out_feedback_stall_out_26;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_conv2d1x111_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_conv2d1x111_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2546_push32_conv2d1x172_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2546_push32_conv2d1x172_out_feedback_valid_out_32;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3045_push31_conv2d1x170_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3045_push31_conv2d1x170_out_feedback_valid_out_31;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_conv2d1x160_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_conv2d1x160_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_push28_conv2d1x116_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i1_push28_conv2d1x116_out_feedback_valid_out_28;
    wire [0:0] i_llvm_fpga_push_i1_push29_conv2d1x168_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i1_push29_conv2d1x168_out_feedback_valid_out_29;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push24_conv2d1x163_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push24_conv2d1x163_out_feedback_valid_out_24;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push23_conv2d1x19_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push23_conv2d1x19_out_feedback_valid_out_23;
    wire [31:0] i_llvm_fpga_push_i32_ij_049_pop1247_push33_conv2d1x124_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i32_ij_049_pop1247_push33_conv2d1x124_out_feedback_valid_out_33;
    wire [31:0] i_llvm_fpga_push_i32_k_047_push21_conv2d1x153_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i32_k_047_push21_conv2d1x153_out_feedback_valid_out_21;
    wire [31:0] i_llvm_fpga_push_i32_mul41_push27_conv2d1x121_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i32_mul41_push27_conv2d1x121_out_feedback_valid_out_27;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push20_conv2d1x157_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push20_conv2d1x157_out_feedback_valid_out_20;
    wire [63:0] i_llvm_fpga_push_p1024f32_output_im_addr_054_replace_phi36_push25_conv2d1x166_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_p1024f32_output_im_addr_054_replace_phi36_push25_conv2d1x166_out_feedback_valid_out_25;
    wire [63:0] i_llvm_fpga_push_p1024v4f32_filter_weight_addr_053_replace_phi38_push26_conv2d1x132_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_p1024v4f32_filter_weight_addr_053_replace_phi38_push26_conv2d1x132_out_feedback_valid_out_26;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x138_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x138_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x138_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x138_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x144_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x144_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x144_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x150_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x150_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x150_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x127_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x127_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x127_vt_select_63_b;
    wire [0:0] i_masked_conv2d1x164_q;
    wire [31:0] i_mul10_conv2d1x122_vt_join_q;
    wire [29:0] i_mul10_conv2d1x122_vt_select_31_b;
    wire [31:0] i_mul30_conv2d1x141_vt_join_q;
    wire [30:0] i_mul30_conv2d1x141_vt_select_31_b;
    wire [0:0] i_next_cleanups_conv2d1x162_s;
    reg [1:0] i_next_cleanups_conv2d1x162_q;
    wire [1:0] i_next_initerations_conv2d1x18_vt_join_q;
    wire [0:0] i_next_initerations_conv2d1x18_vt_select_0_b;
    wire [0:0] i_notcmp_conv2d1x159_q;
    wire [0:0] i_or_conv2d1x161_q;
    wire [31:0] i_shl_conv2d1x119_vt_join_q;
    wire [29:0] i_shl_conv2d1x119_vt_select_31_b;
    wire [0:0] i_unnamed_conv2d1x117_q;
    wire [0:0] i_unnamed_conv2d1x158_q;
    wire [31:0] bgTrunc_i_add11_conv2d1x125_sel_x_b;
    wire [31:0] bgTrunc_i_add21_conv2d1x136_sel_x_b;
    wire [31:0] bgTrunc_i_add31_conv2d1x142_sel_x_b;
    wire [31:0] bgTrunc_i_add41_conv2d1x148_sel_x_b;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_conv2d1x156_sel_x_b;
    wire [31:0] bgTrunc_i_inc_conv2d1x152_sel_x_b;
    wire [63:0] bgTrunc_i_mul10_conv2d1x122_sel_x_in;
    wire [31:0] bgTrunc_i_mul10_conv2d1x122_sel_x_b;
    wire [63:0] bgTrunc_i_mul20_conv2d1x135_sel_x_in;
    wire [31:0] bgTrunc_i_mul20_conv2d1x135_sel_x_b;
    wire [63:0] bgTrunc_i_mul30_conv2d1x141_sel_x_in;
    wire [31:0] bgTrunc_i_mul30_conv2d1x141_sel_x_b;
    wire [63:0] bgTrunc_i_mul40_conv2d1x147_sel_x_in;
    wire [31:0] bgTrunc_i_mul40_conv2d1x147_sel_x_b;
    wire [64:0] i_arrayidx132_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx132_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx132_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx132_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx132_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx132_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx132_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx15_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx15_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx15_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx15_conv2d1x10_add_x_q;
    wire [3:0] i_arrayidx15_conv2d1x10_c_i4_01_x_q;
    wire [59:0] i_arrayidx15_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx15_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx15_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx233_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx233_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx233_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx233_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx233_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx233_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx233_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx334_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx334_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx334_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx334_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx334_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx334_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx334_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx435_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx435_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx435_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx435_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx435_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx435_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx435_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_conv2d1x13_sel_x_b;
    wire [63:0] i_idxprom12_conv2d1x126_sel_x_b;
    wire [63:0] i_idxprom14_conv2d1x130_sel_x_b;
    wire [63:0] i_idxprom22_conv2d1x137_sel_x_b;
    wire [63:0] i_idxprom32_conv2d1x143_sel_x_b;
    wire [63:0] i_idxprom42_conv2d1x149_sel_x_b;
    wire [0:0] i_last_initeration_conv2d1x110_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg9_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg10_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg11_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg12_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg13_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg14_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg15_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg16_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg17_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg18_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg19_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg20_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg21_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg22_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg23_q;
    wire [29:0] i_add18_conv2d1x134_BitSelect_for_a_b;
    wire [31:0] i_add18_conv2d1x134_join_q;
    wire [31:0] i_add28_conv2d1x140_join_q;
    wire [31:0] i_add38_conv2d1x146_join_q;
    wire [0:0] i_exitcond_conv2d1x154_cmp_nsign_q;
    wire [13:0] i_mul10_conv2d1x122_bs2_b;
    wire [17:0] i_mul10_conv2d1x122_bs7_in;
    wire [17:0] i_mul10_conv2d1x122_bs7_b;
    wire [63:0] i_mul10_conv2d1x122_sums_join_0_q;
    wire [50:0] i_mul10_conv2d1x122_sums_align_1_q;
    wire [50:0] i_mul10_conv2d1x122_sums_align_1_qint;
    wire [64:0] i_mul10_conv2d1x122_sums_result_add_0_0_a;
    wire [64:0] i_mul10_conv2d1x122_sums_result_add_0_0_b;
    logic [64:0] i_mul10_conv2d1x122_sums_result_add_0_0_o;
    wire [64:0] i_mul10_conv2d1x122_sums_result_add_0_0_q;
    wire [63:0] i_mul20_conv2d1x135_sums_join_0_q;
    wire [50:0] i_mul20_conv2d1x135_sums_align_1_q;
    wire [50:0] i_mul20_conv2d1x135_sums_align_1_qint;
    wire [64:0] i_mul20_conv2d1x135_sums_result_add_0_0_a;
    wire [64:0] i_mul20_conv2d1x135_sums_result_add_0_0_b;
    logic [64:0] i_mul20_conv2d1x135_sums_result_add_0_0_o;
    wire [64:0] i_mul20_conv2d1x135_sums_result_add_0_0_q;
    wire [63:0] i_mul30_conv2d1x141_sums_join_0_q;
    wire [50:0] i_mul30_conv2d1x141_sums_align_1_q;
    wire [50:0] i_mul30_conv2d1x141_sums_align_1_qint;
    wire [64:0] i_mul30_conv2d1x141_sums_result_add_0_0_a;
    wire [64:0] i_mul30_conv2d1x141_sums_result_add_0_0_b;
    logic [64:0] i_mul30_conv2d1x141_sums_result_add_0_0_o;
    wire [64:0] i_mul30_conv2d1x141_sums_result_add_0_0_q;
    wire [63:0] i_mul40_conv2d1x147_sums_join_0_q;
    wire [50:0] i_mul40_conv2d1x147_sums_align_1_q;
    wire [50:0] i_mul40_conv2d1x147_sums_align_1_qint;
    wire [64:0] i_mul40_conv2d1x147_sums_result_add_0_0_a;
    wire [64:0] i_mul40_conv2d1x147_sums_result_add_0_0_b;
    logic [64:0] i_mul40_conv2d1x147_sums_result_add_0_0_o;
    wire [64:0] i_mul40_conv2d1x147_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid358_i_cleanups_shl_conv2d1x10_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid358_i_cleanups_shl_conv2d1x10_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid359_i_cleanups_shl_conv2d1x10_shift_x_q;
    wire [0:0] leftShiftStage0_uid361_i_cleanups_shl_conv2d1x10_shift_x_s;
    reg [1:0] leftShiftStage0_uid361_i_cleanups_shl_conv2d1x10_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid365_i_next_initerations_conv2d1x10_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid367_i_next_initerations_conv2d1x10_shift_x_q;
    wire [0:0] rightShiftStage0_uid369_i_next_initerations_conv2d1x10_shift_x_s;
    reg [1:0] rightShiftStage0_uid369_i_next_initerations_conv2d1x10_shift_x_q;
    wire [29:0] leftShiftStage0Idx1Rng2_uid374_i_shl_conv2d1x10_shift_x_in;
    wire [29:0] leftShiftStage0Idx1Rng2_uid374_i_shl_conv2d1x10_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid375_i_shl_conv2d1x10_shift_x_q;
    wire [0:0] leftShiftStage0_uid377_i_shl_conv2d1x10_shift_x_s;
    reg [31:0] leftShiftStage0_uid377_i_shl_conv2d1x10_shift_x_q;
    wire i_mul10_conv2d1x122_im0_cma_reset;
    wire [13:0] i_mul10_conv2d1x122_im0_cma_a0;
    wire [13:0] i_mul10_conv2d1x122_im0_cma_c0;
    wire [27:0] i_mul10_conv2d1x122_im0_cma_s0;
    wire [27:0] i_mul10_conv2d1x122_im0_cma_qq;
    wire [27:0] i_mul10_conv2d1x122_im0_cma_q;
    wire i_mul10_conv2d1x122_im0_cma_ena0;
    wire i_mul10_conv2d1x122_im0_cma_ena1;
    wire i_mul10_conv2d1x122_im0_cma_ena2;
    wire i_mul10_conv2d1x122_im8_cma_reset;
    wire [17:0] i_mul10_conv2d1x122_im8_cma_a0;
    wire [17:0] i_mul10_conv2d1x122_im8_cma_c0;
    wire [35:0] i_mul10_conv2d1x122_im8_cma_s0;
    wire [35:0] i_mul10_conv2d1x122_im8_cma_qq;
    wire [35:0] i_mul10_conv2d1x122_im8_cma_q;
    wire i_mul10_conv2d1x122_im8_cma_ena0;
    wire i_mul10_conv2d1x122_im8_cma_ena1;
    wire i_mul10_conv2d1x122_im8_cma_ena2;
    wire i_mul20_conv2d1x135_im0_cma_reset;
    wire [13:0] i_mul20_conv2d1x135_im0_cma_a0;
    wire [13:0] i_mul20_conv2d1x135_im0_cma_c0;
    wire [27:0] i_mul20_conv2d1x135_im0_cma_s0;
    wire [27:0] i_mul20_conv2d1x135_im0_cma_qq;
    wire [27:0] i_mul20_conv2d1x135_im0_cma_q;
    wire i_mul20_conv2d1x135_im0_cma_ena0;
    wire i_mul20_conv2d1x135_im0_cma_ena1;
    wire i_mul20_conv2d1x135_im0_cma_ena2;
    wire i_mul20_conv2d1x135_im8_cma_reset;
    wire [17:0] i_mul20_conv2d1x135_im8_cma_a0;
    wire [17:0] i_mul20_conv2d1x135_im8_cma_c0;
    wire [35:0] i_mul20_conv2d1x135_im8_cma_s0;
    wire [35:0] i_mul20_conv2d1x135_im8_cma_qq;
    wire [35:0] i_mul20_conv2d1x135_im8_cma_q;
    wire i_mul20_conv2d1x135_im8_cma_ena0;
    wire i_mul20_conv2d1x135_im8_cma_ena1;
    wire i_mul20_conv2d1x135_im8_cma_ena2;
    wire i_mul30_conv2d1x141_im0_cma_reset;
    wire [13:0] i_mul30_conv2d1x141_im0_cma_a0;
    wire [13:0] i_mul30_conv2d1x141_im0_cma_c0;
    wire [27:0] i_mul30_conv2d1x141_im0_cma_s0;
    wire [27:0] i_mul30_conv2d1x141_im0_cma_qq;
    wire [27:0] i_mul30_conv2d1x141_im0_cma_q;
    wire i_mul30_conv2d1x141_im0_cma_ena0;
    wire i_mul30_conv2d1x141_im0_cma_ena1;
    wire i_mul30_conv2d1x141_im0_cma_ena2;
    wire i_mul30_conv2d1x141_im8_cma_reset;
    wire [17:0] i_mul30_conv2d1x141_im8_cma_a0;
    wire [17:0] i_mul30_conv2d1x141_im8_cma_c0;
    wire [35:0] i_mul30_conv2d1x141_im8_cma_s0;
    wire [35:0] i_mul30_conv2d1x141_im8_cma_qq;
    wire [35:0] i_mul30_conv2d1x141_im8_cma_q;
    wire i_mul30_conv2d1x141_im8_cma_ena0;
    wire i_mul30_conv2d1x141_im8_cma_ena1;
    wire i_mul30_conv2d1x141_im8_cma_ena2;
    wire i_mul40_conv2d1x147_im0_cma_reset;
    wire [13:0] i_mul40_conv2d1x147_im0_cma_a0;
    wire [13:0] i_mul40_conv2d1x147_im0_cma_c0;
    wire [27:0] i_mul40_conv2d1x147_im0_cma_s0;
    wire [27:0] i_mul40_conv2d1x147_im0_cma_qq;
    wire [27:0] i_mul40_conv2d1x147_im0_cma_q;
    wire i_mul40_conv2d1x147_im0_cma_ena0;
    wire i_mul40_conv2d1x147_im0_cma_ena1;
    wire i_mul40_conv2d1x147_im0_cma_ena2;
    wire i_mul40_conv2d1x147_im8_cma_reset;
    wire [17:0] i_mul40_conv2d1x147_im8_cma_a0;
    wire [17:0] i_mul40_conv2d1x147_im8_cma_c0;
    wire [35:0] i_mul40_conv2d1x147_im8_cma_s0;
    wire [35:0] i_mul40_conv2d1x147_im8_cma_qq;
    wire [35:0] i_mul40_conv2d1x147_im8_cma_q;
    wire i_mul40_conv2d1x147_im8_cma_ena0;
    wire i_mul40_conv2d1x147_im8_cma_ena1;
    wire i_mul40_conv2d1x147_im8_cma_ena2;
    wire i_mul10_conv2d1x122_ma3_cma_reset;
    wire [13:0] i_mul10_conv2d1x122_ma3_cma_a0;
    wire [17:0] i_mul10_conv2d1x122_ma3_cma_c0;
    wire [13:0] i_mul10_conv2d1x122_ma3_cma_a1;
    wire [17:0] i_mul10_conv2d1x122_ma3_cma_c1;
    wire [32:0] i_mul10_conv2d1x122_ma3_cma_s0;
    wire [32:0] i_mul10_conv2d1x122_ma3_cma_qq;
    wire [32:0] i_mul10_conv2d1x122_ma3_cma_q;
    wire i_mul10_conv2d1x122_ma3_cma_ena0;
    wire i_mul10_conv2d1x122_ma3_cma_ena1;
    wire i_mul10_conv2d1x122_ma3_cma_ena2;
    wire i_mul20_conv2d1x135_ma3_cma_reset;
    wire [13:0] i_mul20_conv2d1x135_ma3_cma_a0;
    wire [17:0] i_mul20_conv2d1x135_ma3_cma_c0;
    wire [13:0] i_mul20_conv2d1x135_ma3_cma_a1;
    wire [17:0] i_mul20_conv2d1x135_ma3_cma_c1;
    wire [32:0] i_mul20_conv2d1x135_ma3_cma_s0;
    wire [32:0] i_mul20_conv2d1x135_ma3_cma_qq;
    wire [32:0] i_mul20_conv2d1x135_ma3_cma_q;
    wire i_mul20_conv2d1x135_ma3_cma_ena0;
    wire i_mul20_conv2d1x135_ma3_cma_ena1;
    wire i_mul20_conv2d1x135_ma3_cma_ena2;
    wire i_mul30_conv2d1x141_ma3_cma_reset;
    wire [13:0] i_mul30_conv2d1x141_ma3_cma_a0;
    wire [17:0] i_mul30_conv2d1x141_ma3_cma_c0;
    wire [13:0] i_mul30_conv2d1x141_ma3_cma_a1;
    wire [17:0] i_mul30_conv2d1x141_ma3_cma_c1;
    wire [32:0] i_mul30_conv2d1x141_ma3_cma_s0;
    wire [32:0] i_mul30_conv2d1x141_ma3_cma_qq;
    wire [32:0] i_mul30_conv2d1x141_ma3_cma_q;
    wire i_mul30_conv2d1x141_ma3_cma_ena0;
    wire i_mul30_conv2d1x141_ma3_cma_ena1;
    wire i_mul30_conv2d1x141_ma3_cma_ena2;
    wire i_mul40_conv2d1x147_ma3_cma_reset;
    wire [13:0] i_mul40_conv2d1x147_ma3_cma_a0;
    wire [17:0] i_mul40_conv2d1x147_ma3_cma_c0;
    wire [13:0] i_mul40_conv2d1x147_ma3_cma_a1;
    wire [17:0] i_mul40_conv2d1x147_ma3_cma_c1;
    wire [32:0] i_mul40_conv2d1x147_ma3_cma_s0;
    wire [32:0] i_mul40_conv2d1x147_ma3_cma_qq;
    wire [32:0] i_mul40_conv2d1x147_ma3_cma_q;
    wire i_mul40_conv2d1x147_ma3_cma_ena0;
    wire i_mul40_conv2d1x147_ma3_cma_ena1;
    wire i_mul40_conv2d1x147_ma3_cma_ena2;
    wire [13:0] i_mul20_conv2d1x135_bs2_merged_bit_select_b;
    wire [17:0] i_mul20_conv2d1x135_bs2_merged_bit_select_c;
    wire [13:0] i_mul30_conv2d1x141_bs2_merged_bit_select_b;
    wire [17:0] i_mul30_conv2d1x141_bs2_merged_bit_select_c;
    wire [13:0] i_mul40_conv2d1x147_bs2_merged_bit_select_b;
    wire [17:0] i_mul40_conv2d1x147_bs2_merged_bit_select_c;
    wire [13:0] i_mul10_conv2d1x122_bs1_merged_bit_select_b;
    wire [17:0] i_mul10_conv2d1x122_bs1_merged_bit_select_c;
    reg [0:0] redist0_sync_together147_aunroll_x_in_c0_eni18_1_tpl_1_q;
    reg [0:0] redist1_sync_together147_aunroll_x_in_c0_eni18_1_tpl_2_q;
    reg [0:0] redist2_sync_together147_aunroll_x_in_c0_eni18_1_tpl_5_q;
    reg [0:0] redist2_sync_together147_aunroll_x_in_c0_eni18_1_tpl_5_delay_0;
    reg [0:0] redist2_sync_together147_aunroll_x_in_c0_eni18_1_tpl_5_delay_1;
    reg [31:0] redist3_sync_together147_aunroll_x_in_c0_eni18_3_tpl_1_q;
    reg [31:0] redist4_sync_together147_aunroll_x_in_c0_eni18_4_tpl_1_q;
    reg [63:0] redist5_sync_together147_aunroll_x_in_c0_eni18_5_tpl_2_q;
    reg [63:0] redist5_sync_together147_aunroll_x_in_c0_eni18_5_tpl_2_delay_0;
    reg [63:0] redist6_sync_together147_aunroll_x_in_c0_eni18_6_tpl_1_q;
    reg [0:0] redist7_sync_together147_aunroll_x_in_c0_eni18_7_tpl_2_q;
    reg [0:0] redist7_sync_together147_aunroll_x_in_c0_eni18_7_tpl_2_delay_0;
    reg [0:0] redist8_sync_together147_aunroll_x_in_c0_eni18_8_tpl_2_q;
    reg [0:0] redist8_sync_together147_aunroll_x_in_c0_eni18_8_tpl_2_delay_0;
    reg [0:0] redist9_sync_together147_aunroll_x_in_c0_eni18_9_tpl_2_q;
    reg [0:0] redist9_sync_together147_aunroll_x_in_c0_eni18_9_tpl_2_delay_0;
    reg [0:0] redist13_sync_together147_aunroll_x_in_c0_eni18_13_tpl_5_q;
    reg [0:0] redist13_sync_together147_aunroll_x_in_c0_eni18_13_tpl_5_delay_0;
    reg [0:0] redist13_sync_together147_aunroll_x_in_c0_eni18_13_tpl_5_delay_1;
    reg [0:0] redist13_sync_together147_aunroll_x_in_c0_eni18_13_tpl_5_delay_2;
    reg [0:0] redist13_sync_together147_aunroll_x_in_c0_eni18_13_tpl_5_delay_3;
    reg [0:0] redist14_sync_together147_aunroll_x_in_c0_eni18_14_tpl_5_q;
    reg [0:0] redist14_sync_together147_aunroll_x_in_c0_eni18_14_tpl_5_delay_0;
    reg [0:0] redist14_sync_together147_aunroll_x_in_c0_eni18_14_tpl_5_delay_1;
    reg [0:0] redist14_sync_together147_aunroll_x_in_c0_eni18_14_tpl_5_delay_2;
    reg [0:0] redist14_sync_together147_aunroll_x_in_c0_eni18_14_tpl_5_delay_3;
    reg [0:0] redist17_sync_together147_aunroll_x_in_c0_eni18_17_tpl_5_q;
    reg [0:0] redist17_sync_together147_aunroll_x_in_c0_eni18_17_tpl_5_delay_0;
    reg [0:0] redist17_sync_together147_aunroll_x_in_c0_eni18_17_tpl_5_delay_1;
    reg [0:0] redist17_sync_together147_aunroll_x_in_c0_eni18_17_tpl_5_delay_2;
    reg [0:0] redist17_sync_together147_aunroll_x_in_c0_eni18_17_tpl_5_delay_3;
    reg [0:0] redist19_sync_together147_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist20_sync_together147_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist21_sync_together147_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist22_sync_together147_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist23_sync_together147_aunroll_x_in_i_valid_5_q;
    reg [63:0] redist24_i_arrayidx15_conv2d1x10_dupName_0_trunc_sel_x_b_3_q;
    reg [63:0] redist24_i_arrayidx15_conv2d1x10_dupName_0_trunc_sel_x_b_3_delay_0;
    reg [31:0] redist25_bgTrunc_i_mul40_conv2d1x147_sel_x_b_1_q;
    reg [31:0] redist26_bgTrunc_i_mul20_conv2d1x135_sel_x_b_1_q;
    reg [30:0] redist27_i_mul30_conv2d1x141_vt_select_31_b_1_q;
    reg [29:0] redist28_i_mul10_conv2d1x122_vt_select_31_b_1_q;
    reg [63:0] redist29_i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165_out_data_out_1_q;
    reg [63:0] redist30_i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165_out_data_out_4_q;
    reg [63:0] redist30_i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165_out_data_out_4_delay_0;
    reg [31:0] redist31_i_llvm_fpga_pop_i32_mul41_pop27_conv2d1x120_out_data_out_1_q;
    reg [31:0] redist32_i_llvm_fpga_pop_i32_k_047_pop21_conv2d1x118_out_data_out_1_q;
    reg [31:0] redist33_i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_data_out_1_q;
    reg [31:0] redist34_i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_data_out_4_q;
    reg [31:0] redist34_i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_data_out_4_delay_0;
    reg [0:0] redist35_i_llvm_fpga_pop_i1_pop29_conv2d1x167_out_data_out_3_q;
    reg [0:0] redist35_i_llvm_fpga_pop_i1_pop29_conv2d1x167_out_data_out_3_delay_0;
    reg [0:0] redist35_i_llvm_fpga_pop_i1_pop29_conv2d1x167_out_data_out_3_delay_1;
    reg [0:0] redist36_i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out_3_q;
    reg [0:0] redist36_i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out_3_delay_0;
    reg [0:0] redist36_i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out_3_delay_1;
    reg [0:0] redist37_i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out_5_q;
    reg [0:0] redist37_i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out_5_delay_0;
    reg [0:0] redist38_i_llvm_fpga_pop_i1_notcmp3045_pop31_conv2d1x169_out_data_out_3_q;
    reg [0:0] redist38_i_llvm_fpga_pop_i1_notcmp3045_pop31_conv2d1x169_out_data_out_3_delay_0;
    reg [0:0] redist38_i_llvm_fpga_pop_i1_notcmp3045_pop31_conv2d1x169_out_data_out_3_delay_1;
    reg [0:0] redist39_i_llvm_fpga_pop_i1_notcmp2546_pop32_conv2d1x171_out_data_out_3_q;
    reg [0:0] redist39_i_llvm_fpga_pop_i1_notcmp2546_pop32_conv2d1x171_out_data_out_3_delay_0;
    reg [0:0] redist39_i_llvm_fpga_pop_i1_notcmp2546_pop32_conv2d1x171_out_data_out_3_delay_1;
    reg [0:0] redist40_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_1_q;
    reg [0:0] redist41_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_3_q;
    reg [0:0] redist41_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_3_delay_0;
    wire redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_mem_reset0;
    wire [63:0] redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_mem_ia;
    wire [1:0] redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_mem_aa;
    wire [1:0] redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_mem_ab;
    wire [63:0] redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_mem_iq;
    wire [63:0] redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_mem_q;
    wire [1:0] redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_i;
    reg [1:0] redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_wraddr_q;
    wire [2:0] redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_mem_last_q;
    wire [2:0] redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_cmp_b;
    wire [0:0] redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_cmpReg_q;
    wire [0:0] redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_notEnable_q;
    wire [0:0] redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_sticky_ena_q;
    wire [0:0] redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_enaAnd_q;
    wire redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_mem_reset0;
    wire [63:0] redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_mem_ia;
    wire [1:0] redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_mem_aa;
    wire [1:0] redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_mem_ab;
    wire [63:0] redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_mem_iq;
    wire [63:0] redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_mem_q;
    wire [1:0] redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_rdcnt_i;
    reg [1:0] redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_wraddr_q;
    wire [2:0] redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_mem_last_q;
    wire [2:0] redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_cmp_b;
    wire [0:0] redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_cmpReg_q;
    wire [0:0] redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_notEnable_q;
    wire [0:0] redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_sticky_ena_q;
    wire [0:0] redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_enaAnd_q;
    wire redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_mem_reset0;
    wire [31:0] redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_mem_ia;
    wire [1:0] redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_mem_aa;
    wire [1:0] redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_mem_ab;
    wire [31:0] redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_mem_iq;
    wire [31:0] redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_mem_q;
    wire [1:0] redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_rdcnt_i;
    reg [1:0] redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_wraddr_q;
    wire [2:0] redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_mem_last_q;
    wire [2:0] redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_cmp_b;
    wire [0:0] redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_cmpReg_q;
    wire [0:0] redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_notEnable_q;
    wire [0:0] redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_sticky_ena_q;
    wire [0:0] redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_enaAnd_q;
    wire redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_mem_reset0;
    wire [32:0] redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_mem_ia;
    wire [1:0] redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_mem_aa;
    wire [1:0] redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_mem_ab;
    wire [32:0] redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_mem_iq;
    wire [32:0] redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_mem_q;
    wire [1:0] redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_rdcnt_i;
    reg [1:0] redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_wraddr_q;
    wire [2:0] redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_mem_last_q;
    wire [2:0] redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_cmp_b;
    wire [0:0] redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_cmpReg_q;
    wire [0:0] redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_notEnable_q;
    wire [0:0] redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_sticky_ena_q;
    wire [0:0] redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_enaAnd_q;
    wire redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_mem_reset0;
    wire [31:0] redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_mem_ia;
    wire [1:0] redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_mem_aa;
    wire [1:0] redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_mem_ab;
    wire [31:0] redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_mem_iq;
    wire [31:0] redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_mem_q;
    wire [1:0] redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_i;
    reg [1:0] redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_wraddr_q;
    wire [2:0] redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_mem_last_q;
    wire [2:0] redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_cmp_b;
    wire [0:0] redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_cmpReg_q;
    wire [0:0] redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_notEnable_q;
    wire [0:0] redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_sticky_ena_q;
    wire [0:0] redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_enaAnd_q;
    wire redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_mem_reset0;
    wire [31:0] redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_mem_ia;
    wire [1:0] redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_mem_aa;
    wire [1:0] redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_mem_ab;
    wire [31:0] redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_mem_iq;
    wire [31:0] redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_mem_q;
    wire [1:0] redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_rdcnt_i;
    reg [1:0] redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_wraddr_q;
    wire [2:0] redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_mem_last_q;
    wire [2:0] redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_cmp_b;
    wire [0:0] redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_cmpReg_q;
    wire [0:0] redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_notEnable_q;
    wire [0:0] redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_sticky_ena_q;
    wire [0:0] redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_enaAnd_q;
    reg [63:0] redist24_i_arrayidx15_conv2d1x10_dupName_0_trunc_sel_x_b_3_inputreg0_q;
    reg [63:0] redist30_i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165_out_data_out_4_inputreg0_q;
    reg [31:0] redist34_i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_data_out_4_inputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist19_sync_together147_aunroll_x_in_i_valid_1(DELAY,413)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together147_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist19_sync_together147_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist20_sync_together147_aunroll_x_in_i_valid_2(DELAY,414)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together147_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist20_sync_together147_aunroll_x_in_i_valid_2_q <= $unsigned(redist19_sync_together147_aunroll_x_in_i_valid_1_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist21_sync_together147_aunroll_x_in_i_valid_3(DELAY,415)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together147_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist21_sync_together147_aunroll_x_in_i_valid_3_q <= $unsigned(redist20_sync_together147_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist22_sync_together147_aunroll_x_in_i_valid_4(DELAY,416)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together147_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist22_sync_together147_aunroll_x_in_i_valid_4_q <= $unsigned(redist21_sync_together147_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist23_sync_together147_aunroll_x_in_i_valid_5(DELAY,417)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together147_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist23_sync_together147_aunroll_x_in_i_valid_5_q <= $unsigned(redist22_sync_together147_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist40_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_1(DELAY,434)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_1_q <= '0;
        end
        else
        begin
            redist40_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out);
        end
    end

    // redist41_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_3(DELAY,435)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_3_delay_0 <= '0;
            redist41_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_3_q <= '0;
        end
        else
        begin
            redist41_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_3_delay_0 <= $unsigned(redist40_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_1_q);
            redist41_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_3_q <= redist41_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_3_delay_0;
        end
    end

    // leftShiftStage0Idx1Rng1_uid358_i_cleanups_shl_conv2d1x10_shift_x(BITSELECT,357)@6
    assign leftShiftStage0Idx1Rng1_uid358_i_cleanups_shl_conv2d1x10_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop24_conv2d1x12_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid358_i_cleanups_shl_conv2d1x10_shift_x_b = leftShiftStage0Idx1Rng1_uid358_i_cleanups_shl_conv2d1x10_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid359_i_cleanups_shl_conv2d1x10_shift_x(BITJOIN,358)@6
    assign leftShiftStage0Idx1_uid359_i_cleanups_shl_conv2d1x10_shift_x_q = {leftShiftStage0Idx1Rng1_uid358_i_cleanups_shl_conv2d1x10_shift_x_b, GND_q};

    // leftShiftStage0_uid361_i_cleanups_shl_conv2d1x10_shift_x(MUX,360)@6
    assign leftShiftStage0_uid361_i_cleanups_shl_conv2d1x10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid361_i_cleanups_shl_conv2d1x10_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop24_conv2d1x12_out_data_out or leftShiftStage0Idx1_uid359_i_cleanups_shl_conv2d1x10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid361_i_cleanups_shl_conv2d1x10_shift_x_s)
            1'b0 : leftShiftStage0_uid361_i_cleanups_shl_conv2d1x10_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop24_conv2d1x12_out_data_out;
            1'b1 : leftShiftStage0_uid361_i_cleanups_shl_conv2d1x10_shift_x_q = leftShiftStage0Idx1_uid359_i_cleanups_shl_conv2d1x10_shift_x_q;
            default : leftShiftStage0_uid361_i_cleanups_shl_conv2d1x10_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_conv2d1x15_vt_select_1(BITSELECT,83)@6
    assign i_cleanups_shl_conv2d1x15_vt_select_1_b = leftShiftStage0_uid361_i_cleanups_shl_conv2d1x10_shift_x_q[1:1];

    // i_cleanups_shl_conv2d1x15_vt_join(BITJOIN,82)@6
    assign i_cleanups_shl_conv2d1x15_vt_join_q = {i_cleanups_shl_conv2d1x15_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_conv2d1x14(LOGICAL,86)@6
    assign i_first_cleanup_xor_conv2d1x14_q = i_first_cleanup_conv2d1x13_sel_x_b ^ VCC_q;

    // i_notcmp_conv2d1x159(LOGICAL,163)@6
    assign i_notcmp_conv2d1x159_q = i_unnamed_conv2d1x158_q ^ VCC_q;

    // i_or_conv2d1x161(LOGICAL,164)@6
    assign i_or_conv2d1x161_q = i_notcmp_conv2d1x159_q | i_first_cleanup_xor_conv2d1x14_q;

    // i_next_cleanups_conv2d1x162(MUX,159)@6
    assign i_next_cleanups_conv2d1x162_s = i_or_conv2d1x161_q;
    always @(i_next_cleanups_conv2d1x162_s or i_llvm_fpga_pop_i2_cleanups_pop24_conv2d1x12_out_data_out or i_cleanups_shl_conv2d1x15_vt_join_q)
    begin
        unique case (i_next_cleanups_conv2d1x162_s)
            1'b0 : i_next_cleanups_conv2d1x162_q = i_llvm_fpga_pop_i2_cleanups_pop24_conv2d1x12_out_data_out;
            1'b1 : i_next_cleanups_conv2d1x162_q = i_cleanups_shl_conv2d1x15_vt_join_q;
            default : i_next_cleanups_conv2d1x162_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push24_conv2d1x163(BLACKBOX,124)@6
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    conv2d1x1_i_llvm_fpga_push_i2_cleanups_push24_0 thei_llvm_fpga_push_i2_cleanups_push24_conv2d1x163 (
        .in_data_in(i_next_cleanups_conv2d1x162_q),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i2_cleanups_pop24_conv2d1x12_out_feedback_stall_out_24),
        .in_keep_going(redist41_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist23_sync_together147_aunroll_x_in_i_valid_5_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i2_cleanups_push24_conv2d1x163_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i2_cleanups_push24_conv2d1x163_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together147_aunroll_x_in_c0_eni18_1_tpl_5(DELAY,396)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together147_aunroll_x_in_c0_eni18_1_tpl_5_delay_0 <= '0;
            redist2_sync_together147_aunroll_x_in_c0_eni18_1_tpl_5_delay_1 <= '0;
            redist2_sync_together147_aunroll_x_in_c0_eni18_1_tpl_5_q <= '0;
        end
        else
        begin
            redist2_sync_together147_aunroll_x_in_c0_eni18_1_tpl_5_delay_0 <= $unsigned(redist1_sync_together147_aunroll_x_in_c0_eni18_1_tpl_2_q);
            redist2_sync_together147_aunroll_x_in_c0_eni18_1_tpl_5_delay_1 <= redist2_sync_together147_aunroll_x_in_c0_eni18_1_tpl_5_delay_0;
            redist2_sync_together147_aunroll_x_in_c0_eni18_1_tpl_5_q <= redist2_sync_together147_aunroll_x_in_c0_eni18_1_tpl_5_delay_1;
        end
    end

    // c_i2_1106(CONSTANT,45)
    assign c_i2_1106_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop24_conv2d1x12(BLACKBOX,110)@6
    // out out_feedback_stall_out_24@20000000
    conv2d1x1_i_llvm_fpga_pop_i2_cleanups_pop24_0 thei_llvm_fpga_pop_i2_cleanups_pop24_conv2d1x12 (
        .in_data_in(c_i2_1106_q),
        .in_dir(redist2_sync_together147_aunroll_x_in_c0_eni18_1_tpl_5_q),
        .in_feedback_in_24(i_llvm_fpga_push_i2_cleanups_push24_conv2d1x163_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i2_cleanups_push24_conv2d1x163_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist23_sync_together147_aunroll_x_in_i_valid_5_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop24_conv2d1x12_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i2_cleanups_pop24_conv2d1x12_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_conv2d1x13_sel_x(BITSELECT,225)@6
    assign i_first_cleanup_conv2d1x13_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop24_conv2d1x12_out_data_out[0:0];

    // i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x116_conv2d1x112(BLACKBOX,104)@6
    conv2d1x1_i_llvm_fpga_ffwd_dest_i33_unnamed_16_conv2d1x10 thei_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x116_conv2d1x112 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist23_sync_together147_aunroll_x_in_i_valid_5_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x116_conv2d1x112_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_1114(CONSTANT,50)
    assign c_i33_1114_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_conv2d1x156(ADD,88)@6
    assign i_fpga_indvars_iv_next_conv2d1x156_a = {1'b0, i_fpga_indvars_iv_replace_phi_conv2d1x114_q};
    assign i_fpga_indvars_iv_next_conv2d1x156_b = {1'b0, c_i33_1114_q};
    assign i_fpga_indvars_iv_next_conv2d1x156_o = $unsigned(i_fpga_indvars_iv_next_conv2d1x156_a) + $unsigned(i_fpga_indvars_iv_next_conv2d1x156_b);
    assign i_fpga_indvars_iv_next_conv2d1x156_q = i_fpga_indvars_iv_next_conv2d1x156_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_conv2d1x156_sel_x(BITSELECT,181)@6
    assign bgTrunc_i_fpga_indvars_iv_next_conv2d1x156_sel_x_b = i_fpga_indvars_iv_next_conv2d1x156_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push20_conv2d1x157(BLACKBOX,129)@6
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    conv2d1x1_i_llvm_fpga_push_i33_fpga_indvars_iv_push20_0 thei_llvm_fpga_push_i33_fpga_indvars_iv_push20_conv2d1x157 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_conv2d1x156_sel_x_b),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_conv2d1x113_out_feedback_stall_out_20),
        .in_keep_going(redist41_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist23_sync_together147_aunroll_x_in_i_valid_5_q),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i33_fpga_indvars_iv_push20_conv2d1x157_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i33_fpga_indvars_iv_push20_conv2d1x157_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef108(CONSTANT,51)
    assign c_i33_undef108_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_conv2d1x113(BLACKBOX,115)@6
    // out out_feedback_stall_out_20@20000000
    conv2d1x1_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_conv2d1x113 (
        .in_data_in(c_i33_undef108_q),
        .in_dir(redist2_sync_together147_aunroll_x_in_c0_eni18_1_tpl_5_q),
        .in_feedback_in_20(i_llvm_fpga_push_i33_fpga_indvars_iv_push20_conv2d1x157_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i33_fpga_indvars_iv_push20_conv2d1x157_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist23_sync_together147_aunroll_x_in_i_valid_5_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_conv2d1x113_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_conv2d1x113_out_feedback_stall_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv_replace_phi_conv2d1x114(MUX,89)@6
    assign i_fpga_indvars_iv_replace_phi_conv2d1x114_s = redist2_sync_together147_aunroll_x_in_c0_eni18_1_tpl_5_q;
    always @(i_fpga_indvars_iv_replace_phi_conv2d1x114_s or i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_conv2d1x113_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x116_conv2d1x112_out_dest_data_out_3_0)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_conv2d1x114_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_conv2d1x114_q = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop20_conv2d1x113_out_data_out;
            1'b1 : i_fpga_indvars_iv_replace_phi_conv2d1x114_q = i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x116_conv2d1x112_out_dest_data_out_3_0;
            default : i_fpga_indvars_iv_replace_phi_conv2d1x114_q = 33'b0;
        endcase
    end

    // i_exitcond_conv2d1x154_cmp_nsign(LOGICAL,293)@6
    assign i_exitcond_conv2d1x154_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv_replace_phi_conv2d1x114_q[32:32]));

    // i_llvm_fpga_push_i1_push28_conv2d1x116(BLACKBOX,122)@4
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    conv2d1x1_i_llvm_fpga_push_i1_push28_0 thei_llvm_fpga_push_i1_push28_conv2d1x116 (
        .in_data_in(redist36_i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out_3_q),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_feedback_stall_out_28),
        .in_keep_going(redist40_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist21_sync_together147_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i1_push28_conv2d1x116_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i1_push28_conv2d1x116_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_pop28_conv2d1x115(BLACKBOX,108)@1
    // out out_feedback_stall_out_28@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_pop28_0 thei_llvm_fpga_pop_i1_pop28_conv2d1x115 (
        .in_data_in(in_c0_eni18_2_tpl),
        .in_dir(in_c0_eni18_1_tpl),
        .in_feedback_in_28(i_llvm_fpga_push_i1_push28_conv2d1x116_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i1_push28_conv2d1x116_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist36_i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out_3(DELAY,430)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out_3_delay_0 <= '0;
            redist36_i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out_3_delay_1 <= '0;
            redist36_i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out_3_q <= '0;
        end
        else
        begin
            redist36_i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out);
            redist36_i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out_3_delay_1 <= redist36_i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out_3_delay_0;
            redist36_i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out_3_q <= redist36_i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out_3_delay_1;
        end
    end

    // redist37_i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out_5(DELAY,431)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out_5_delay_0 <= '0;
            redist37_i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out_5_q <= '0;
        end
        else
        begin
            redist37_i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out_5_delay_0 <= $unsigned(redist36_i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out_3_q);
            redist37_i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out_5_q <= redist37_i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out_5_delay_0;
        end
    end

    // i_unnamed_conv2d1x158(LOGICAL,169)@6
    assign i_unnamed_conv2d1x158_q = redist37_i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out_5_q & i_exitcond_conv2d1x154_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_conv2d1x160(BLACKBOX,121)@6
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    conv2d1x1_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_conv2d1x160 (
        .in_data_in(i_unnamed_conv2d1x158_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_conv2d1x13_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist23_sync_together147_aunroll_x_in_i_valid_5_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_conv2d1x160_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_conv2d1x160_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,245)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist19_sync_together147_aunroll_x_in_i_valid_1_q);
        end
    end

    // rightShiftStage0Idx1Rng1_uid365_i_next_initerations_conv2d1x10_shift_x(BITSELECT,364)@3
    assign rightShiftStage0Idx1Rng1_uid365_i_next_initerations_conv2d1x10_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop23_conv2d1x17_out_data_out[1:1];

    // rightShiftStage0Idx1_uid367_i_next_initerations_conv2d1x10_shift_x(BITJOIN,366)@3
    assign rightShiftStage0Idx1_uid367_i_next_initerations_conv2d1x10_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid365_i_next_initerations_conv2d1x10_shift_x_b};

    // valid_fanout_reg1(REG,243)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist19_sync_together147_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg2(REG,244)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist19_sync_together147_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i2_initerations_push23_conv2d1x19(BLACKBOX,125)@3
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    conv2d1x1_i_llvm_fpga_push_i2_initerations_push23_0 thei_llvm_fpga_push_i2_initerations_push23_conv2d1x19 (
        .in_data_in(i_next_initerations_conv2d1x18_vt_join_q),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i2_initerations_pop23_conv2d1x17_out_feedback_stall_out_23),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i2_initerations_push23_conv2d1x19_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i2_initerations_push23_conv2d1x19_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop23_conv2d1x17(BLACKBOX,111)@3
    // out out_feedback_stall_out_23@20000000
    conv2d1x1_i_llvm_fpga_pop_i2_initerations_pop23_0 thei_llvm_fpga_pop_i2_initerations_pop23_conv2d1x17 (
        .in_data_in(c_i2_1106_q),
        .in_dir(redist1_sync_together147_aunroll_x_in_c0_eni18_1_tpl_2_q),
        .in_feedback_in_23(i_llvm_fpga_push_i2_initerations_push23_conv2d1x19_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i2_initerations_push23_conv2d1x19_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop23_conv2d1x17_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i2_initerations_pop23_conv2d1x17_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid369_i_next_initerations_conv2d1x10_shift_x(MUX,368)@3
    assign rightShiftStage0_uid369_i_next_initerations_conv2d1x10_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid369_i_next_initerations_conv2d1x10_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop23_conv2d1x17_out_data_out or rightShiftStage0Idx1_uid367_i_next_initerations_conv2d1x10_shift_x_q)
    begin
        unique case (rightShiftStage0_uid369_i_next_initerations_conv2d1x10_shift_x_s)
            1'b0 : rightShiftStage0_uid369_i_next_initerations_conv2d1x10_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop23_conv2d1x17_out_data_out;
            1'b1 : rightShiftStage0_uid369_i_next_initerations_conv2d1x10_shift_x_q = rightShiftStage0Idx1_uid367_i_next_initerations_conv2d1x10_shift_x_q;
            default : rightShiftStage0_uid369_i_next_initerations_conv2d1x10_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_conv2d1x18_vt_select_0(BITSELECT,162)@3
    assign i_next_initerations_conv2d1x18_vt_select_0_b = rightShiftStage0_uid369_i_next_initerations_conv2d1x10_shift_x_q[0:0];

    // i_next_initerations_conv2d1x18_vt_join(BITJOIN,161)@3
    assign i_next_initerations_conv2d1x18_vt_join_q = {GND_q, i_next_initerations_conv2d1x18_vt_select_0_b};

    // i_last_initeration_conv2d1x110_sel_x(BITSELECT,231)@3
    assign i_last_initeration_conv2d1x110_sel_x_b = i_next_initerations_conv2d1x18_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_conv2d1x111(BLACKBOX,118)@3
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    conv2d1x1_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_conv2d1x111 (
        .in_data_in(i_last_initeration_conv2d1x110_sel_x_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_initeration_stall_out),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_i1_lastiniteration_conv2d1x111_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_i1_lastiniteration_conv2d1x111_out_feedback_valid_out_1),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together147_aunroll_x_in_c0_eni18_1_tpl_1(DELAY,394)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together147_aunroll_x_in_c0_eni18_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together147_aunroll_x_in_c0_eni18_1_tpl_1_q <= $unsigned(in_c0_eni18_1_tpl);
        end
    end

    // redist1_sync_together147_aunroll_x_in_c0_eni18_1_tpl_2(DELAY,395)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together147_aunroll_x_in_c0_eni18_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together147_aunroll_x_in_c0_eni18_1_tpl_2_q <= $unsigned(redist0_sync_together147_aunroll_x_in_c0_eni18_1_tpl_1_q);
        end
    end

    // i_llvm_fpga_pipeline_keep_going_conv2d1x16(BLACKBOX,105)@3
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    conv2d1x1_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_conv2d1x16 (
        .in_data_in(redist1_sync_together147_aunroll_x_in_c0_eni18_1_tpl_2_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_conv2d1x111_out_feedback_out_1),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_conv2d1x111_out_feedback_valid_out_1),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_conv2d1x160_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_conv2d1x160_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist20_sync_together147_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,52)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,173)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,242)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist22_sync_together147_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_notEnable(LOGICAL,492)
    assign redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_nor(LOGICAL,493)
    assign redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_nor_q = ~ (redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_notEnable_q | redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_sticky_ena_q);

    // redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_mem_last(CONSTANT,489)
    assign redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_cmp(LOGICAL,490)
    assign redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_cmp_b = {1'b0, redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_rdcnt_q};
    assign redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_cmp_q = $unsigned(redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_mem_last_q == redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_cmpReg(REG,491)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_cmpReg_q <= $unsigned(redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_cmp_q);
        end
    end

    // redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_sticky_ena(REG,494)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_nor_q == 1'b1)
        begin
            redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_sticky_ena_q <= $unsigned(redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_cmpReg_q);
        end
    end

    // redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_enaAnd(LOGICAL,495)
    assign redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_enaAnd_q = redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_sticky_ena_q & VCC_q;

    // redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_rdcnt(COUNTER,487)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_rdcnt_i <= $unsigned(redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_rdcnt_q = redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_rdcnt_i[1:0];

    // redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_wraddr(REG,488)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_wraddr_q <= $unsigned(redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_rdcnt_q);
        end
    end

    // redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_mem(DUALMEM,486)
    assign redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_mem_ia = $unsigned(in_c0_eni18_18_tpl);
    assign redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_mem_aa = redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_wraddr_q;
    assign redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_mem_ab = redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_rdcnt_q;
    assign redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_mem_dmem (
        .clocken1(redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_mem_aa),
        .data_a(redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_mem_ab),
        .q_b(redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_mem_q = redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_mem_iq[31:0];

    // redist17_sync_together147_aunroll_x_in_c0_eni18_17_tpl_5(DELAY,411)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together147_aunroll_x_in_c0_eni18_17_tpl_5_delay_0 <= '0;
            redist17_sync_together147_aunroll_x_in_c0_eni18_17_tpl_5_delay_1 <= '0;
            redist17_sync_together147_aunroll_x_in_c0_eni18_17_tpl_5_delay_2 <= '0;
            redist17_sync_together147_aunroll_x_in_c0_eni18_17_tpl_5_delay_3 <= '0;
            redist17_sync_together147_aunroll_x_in_c0_eni18_17_tpl_5_q <= '0;
        end
        else
        begin
            redist17_sync_together147_aunroll_x_in_c0_eni18_17_tpl_5_delay_0 <= $unsigned(in_c0_eni18_17_tpl);
            redist17_sync_together147_aunroll_x_in_c0_eni18_17_tpl_5_delay_1 <= redist17_sync_together147_aunroll_x_in_c0_eni18_17_tpl_5_delay_0;
            redist17_sync_together147_aunroll_x_in_c0_eni18_17_tpl_5_delay_2 <= redist17_sync_together147_aunroll_x_in_c0_eni18_17_tpl_5_delay_1;
            redist17_sync_together147_aunroll_x_in_c0_eni18_17_tpl_5_delay_3 <= redist17_sync_together147_aunroll_x_in_c0_eni18_17_tpl_5_delay_2;
            redist17_sync_together147_aunroll_x_in_c0_eni18_17_tpl_5_q <= redist17_sync_together147_aunroll_x_in_c0_eni18_17_tpl_5_delay_3;
        end
    end

    // redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_notEnable(LOGICAL,482)
    assign redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_nor(LOGICAL,483)
    assign redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_nor_q = ~ (redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_notEnable_q | redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_sticky_ena_q);

    // redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_mem_last(CONSTANT,479)
    assign redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_cmp(LOGICAL,480)
    assign redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_cmp_b = {1'b0, redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_q};
    assign redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_cmp_q = $unsigned(redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_mem_last_q == redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_cmpReg(REG,481)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_cmpReg_q <= $unsigned(redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_cmp_q);
        end
    end

    // redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_sticky_ena(REG,484)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_nor_q == 1'b1)
        begin
            redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_sticky_ena_q <= $unsigned(redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_cmpReg_q);
        end
    end

    // redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_enaAnd(LOGICAL,485)
    assign redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_enaAnd_q = redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_sticky_ena_q & VCC_q;

    // redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt(COUNTER,477)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_i <= $unsigned(redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_q = redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_i[1:0];

    // redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_wraddr(REG,478)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_wraddr_q <= $unsigned(redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_q);
        end
    end

    // redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_mem(DUALMEM,476)
    assign redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_mem_ia = $unsigned(in_c0_eni18_16_tpl);
    assign redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_mem_aa = redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_wraddr_q;
    assign redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_mem_ab = redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_q;
    assign redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_mem_dmem (
        .clocken1(redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_mem_aa),
        .data_a(redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_mem_ab),
        .q_b(redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_mem_q = redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_mem_iq[31:0];

    // redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_notEnable(LOGICAL,472)
    assign redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_nor(LOGICAL,473)
    assign redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_nor_q = ~ (redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_notEnable_q | redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_sticky_ena_q);

    // redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_mem_last(CONSTANT,469)
    assign redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_cmp(LOGICAL,470)
    assign redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_cmp_b = {1'b0, redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_rdcnt_q};
    assign redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_cmp_q = $unsigned(redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_mem_last_q == redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_cmpReg(REG,471)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_cmpReg_q <= $unsigned(redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_cmp_q);
        end
    end

    // redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_sticky_ena(REG,474)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_nor_q == 1'b1)
        begin
            redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_sticky_ena_q <= $unsigned(redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_cmpReg_q);
        end
    end

    // redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_enaAnd(LOGICAL,475)
    assign redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_enaAnd_q = redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_sticky_ena_q & VCC_q;

    // redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_rdcnt(COUNTER,467)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_rdcnt_i <= $unsigned(redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_rdcnt_q = redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_rdcnt_i[1:0];

    // redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_wraddr(REG,468)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_wraddr_q <= $unsigned(redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_rdcnt_q);
        end
    end

    // redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_mem(DUALMEM,466)
    assign redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_mem_ia = $unsigned(in_c0_eni18_15_tpl);
    assign redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_mem_aa = redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_wraddr_q;
    assign redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_mem_ab = redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_rdcnt_q;
    assign redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(33),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(33),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_mem_dmem (
        .clocken1(redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_mem_aa),
        .data_a(redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_mem_ab),
        .q_b(redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_mem_q = redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_mem_iq[32:0];

    // redist14_sync_together147_aunroll_x_in_c0_eni18_14_tpl_5(DELAY,408)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together147_aunroll_x_in_c0_eni18_14_tpl_5_delay_0 <= '0;
            redist14_sync_together147_aunroll_x_in_c0_eni18_14_tpl_5_delay_1 <= '0;
            redist14_sync_together147_aunroll_x_in_c0_eni18_14_tpl_5_delay_2 <= '0;
            redist14_sync_together147_aunroll_x_in_c0_eni18_14_tpl_5_delay_3 <= '0;
            redist14_sync_together147_aunroll_x_in_c0_eni18_14_tpl_5_q <= '0;
        end
        else
        begin
            redist14_sync_together147_aunroll_x_in_c0_eni18_14_tpl_5_delay_0 <= $unsigned(in_c0_eni18_14_tpl);
            redist14_sync_together147_aunroll_x_in_c0_eni18_14_tpl_5_delay_1 <= redist14_sync_together147_aunroll_x_in_c0_eni18_14_tpl_5_delay_0;
            redist14_sync_together147_aunroll_x_in_c0_eni18_14_tpl_5_delay_2 <= redist14_sync_together147_aunroll_x_in_c0_eni18_14_tpl_5_delay_1;
            redist14_sync_together147_aunroll_x_in_c0_eni18_14_tpl_5_delay_3 <= redist14_sync_together147_aunroll_x_in_c0_eni18_14_tpl_5_delay_2;
            redist14_sync_together147_aunroll_x_in_c0_eni18_14_tpl_5_q <= redist14_sync_together147_aunroll_x_in_c0_eni18_14_tpl_5_delay_3;
        end
    end

    // redist13_sync_together147_aunroll_x_in_c0_eni18_13_tpl_5(DELAY,407)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together147_aunroll_x_in_c0_eni18_13_tpl_5_delay_0 <= '0;
            redist13_sync_together147_aunroll_x_in_c0_eni18_13_tpl_5_delay_1 <= '0;
            redist13_sync_together147_aunroll_x_in_c0_eni18_13_tpl_5_delay_2 <= '0;
            redist13_sync_together147_aunroll_x_in_c0_eni18_13_tpl_5_delay_3 <= '0;
            redist13_sync_together147_aunroll_x_in_c0_eni18_13_tpl_5_q <= '0;
        end
        else
        begin
            redist13_sync_together147_aunroll_x_in_c0_eni18_13_tpl_5_delay_0 <= $unsigned(in_c0_eni18_13_tpl);
            redist13_sync_together147_aunroll_x_in_c0_eni18_13_tpl_5_delay_1 <= redist13_sync_together147_aunroll_x_in_c0_eni18_13_tpl_5_delay_0;
            redist13_sync_together147_aunroll_x_in_c0_eni18_13_tpl_5_delay_2 <= redist13_sync_together147_aunroll_x_in_c0_eni18_13_tpl_5_delay_1;
            redist13_sync_together147_aunroll_x_in_c0_eni18_13_tpl_5_delay_3 <= redist13_sync_together147_aunroll_x_in_c0_eni18_13_tpl_5_delay_2;
            redist13_sync_together147_aunroll_x_in_c0_eni18_13_tpl_5_q <= redist13_sync_together147_aunroll_x_in_c0_eni18_13_tpl_5_delay_3;
        end
    end

    // redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_notEnable(LOGICAL,462)
    assign redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_nor(LOGICAL,463)
    assign redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_nor_q = ~ (redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_notEnable_q | redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_sticky_ena_q);

    // redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_mem_last(CONSTANT,459)
    assign redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_cmp(LOGICAL,460)
    assign redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_cmp_b = {1'b0, redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_rdcnt_q};
    assign redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_cmp_q = $unsigned(redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_mem_last_q == redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_cmpReg(REG,461)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_cmpReg_q <= $unsigned(redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_cmp_q);
        end
    end

    // redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_sticky_ena(REG,464)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_nor_q == 1'b1)
        begin
            redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_sticky_ena_q <= $unsigned(redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_cmpReg_q);
        end
    end

    // redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_enaAnd(LOGICAL,465)
    assign redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_enaAnd_q = redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_sticky_ena_q & VCC_q;

    // redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_rdcnt(COUNTER,457)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_rdcnt_i <= $unsigned(redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_rdcnt_q = redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_rdcnt_i[1:0];

    // redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_wraddr(REG,458)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_wraddr_q <= $unsigned(redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_rdcnt_q);
        end
    end

    // redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_mem(DUALMEM,456)
    assign redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_mem_ia = $unsigned(in_c0_eni18_12_tpl);
    assign redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_mem_aa = redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_wraddr_q;
    assign redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_mem_ab = redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_rdcnt_q;
    assign redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_mem_dmem (
        .clocken1(redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_mem_aa),
        .data_a(redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_mem_ab),
        .q_b(redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_mem_q = redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_mem_iq[31:0];

    // redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_notEnable(LOGICAL,452)
    assign redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_nor(LOGICAL,453)
    assign redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_nor_q = ~ (redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_notEnable_q | redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_sticky_ena_q);

    // redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_mem_last(CONSTANT,449)
    assign redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_cmp(LOGICAL,450)
    assign redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_cmp_b = {1'b0, redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_rdcnt_q};
    assign redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_cmp_q = $unsigned(redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_mem_last_q == redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_cmpReg(REG,451)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_cmpReg_q <= $unsigned(redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_cmp_q);
        end
    end

    // redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_sticky_ena(REG,454)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_nor_q == 1'b1)
        begin
            redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_sticky_ena_q <= $unsigned(redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_cmpReg_q);
        end
    end

    // redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_enaAnd(LOGICAL,455)
    assign redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_enaAnd_q = redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_sticky_ena_q & VCC_q;

    // redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_rdcnt(COUNTER,447)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_rdcnt_i <= $unsigned(redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_rdcnt_q = redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_rdcnt_i[1:0];

    // redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_wraddr(REG,448)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_wraddr_q <= $unsigned(redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_rdcnt_q);
        end
    end

    // redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_mem(DUALMEM,446)
    assign redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_mem_ia = $unsigned(in_c0_eni18_11_tpl);
    assign redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_mem_aa = redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_wraddr_q;
    assign redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_mem_ab = redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_rdcnt_q;
    assign redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_mem_dmem (
        .clocken1(redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_mem_aa),
        .data_a(redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_mem_ab),
        .q_b(redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_mem_q = redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_mem_iq[63:0];

    // redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_notEnable(LOGICAL,442)
    assign redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_nor(LOGICAL,443)
    assign redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_nor_q = ~ (redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_notEnable_q | redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_sticky_ena_q);

    // redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_mem_last(CONSTANT,439)
    assign redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_cmp(LOGICAL,440)
    assign redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_cmp_b = {1'b0, redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_q};
    assign redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_cmp_q = $unsigned(redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_mem_last_q == redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_cmpReg(REG,441)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_cmpReg_q <= $unsigned(redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_cmp_q);
        end
    end

    // redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_sticky_ena(REG,444)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_nor_q == 1'b1)
        begin
            redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_sticky_ena_q <= $unsigned(redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_cmpReg_q);
        end
    end

    // redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_enaAnd(LOGICAL,445)
    assign redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_enaAnd_q = redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_sticky_ena_q & VCC_q;

    // redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt(COUNTER,437)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_i <= $unsigned(redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_q = redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_i[1:0];

    // redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_wraddr(REG,438)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_wraddr_q <= $unsigned(redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_q);
        end
    end

    // redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_mem(DUALMEM,436)
    assign redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_mem_ia = $unsigned(in_c0_eni18_10_tpl);
    assign redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_mem_aa = redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_wraddr_q;
    assign redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_mem_ab = redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_q;
    assign redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_mem_dmem (
        .clocken1(redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_mem_aa),
        .data_a(redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_mem_ab),
        .q_b(redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_mem_q = redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_mem_iq[63:0];

    // valid_fanout_reg22(REG,264)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist19_sync_together147_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg23(REG,265)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist19_sync_together147_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp2546_push32_conv2d1x172(BLACKBOX,119)@3
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    conv2d1x1_i_llvm_fpga_push_i1_notcmp2546_push32_0 thei_llvm_fpga_push_i1_notcmp2546_push32_conv2d1x172 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp2546_pop32_conv2d1x171_out_data_out),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i1_notcmp2546_pop32_conv2d1x171_out_feedback_stall_out_32),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i1_notcmp2546_push32_conv2d1x172_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i1_notcmp2546_push32_conv2d1x172_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together147_aunroll_x_in_c0_eni18_9_tpl_2(DELAY,403)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together147_aunroll_x_in_c0_eni18_9_tpl_2_delay_0 <= '0;
            redist9_sync_together147_aunroll_x_in_c0_eni18_9_tpl_2_q <= '0;
        end
        else
        begin
            redist9_sync_together147_aunroll_x_in_c0_eni18_9_tpl_2_delay_0 <= $unsigned(in_c0_eni18_9_tpl);
            redist9_sync_together147_aunroll_x_in_c0_eni18_9_tpl_2_q <= redist9_sync_together147_aunroll_x_in_c0_eni18_9_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp2546_pop32_conv2d1x171(BLACKBOX,106)@3
    // out out_feedback_stall_out_32@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_notcmp2546_pop32_0 thei_llvm_fpga_pop_i1_notcmp2546_pop32_conv2d1x171 (
        .in_data_in(redist9_sync_together147_aunroll_x_in_c0_eni18_9_tpl_2_q),
        .in_dir(redist1_sync_together147_aunroll_x_in_c0_eni18_1_tpl_2_q),
        .in_feedback_in_32(i_llvm_fpga_push_i1_notcmp2546_push32_conv2d1x172_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i1_notcmp2546_push32_conv2d1x172_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2546_pop32_conv2d1x171_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i1_notcmp2546_pop32_conv2d1x171_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist39_i_llvm_fpga_pop_i1_notcmp2546_pop32_conv2d1x171_out_data_out_3(DELAY,433)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_llvm_fpga_pop_i1_notcmp2546_pop32_conv2d1x171_out_data_out_3_delay_0 <= '0;
            redist39_i_llvm_fpga_pop_i1_notcmp2546_pop32_conv2d1x171_out_data_out_3_delay_1 <= '0;
            redist39_i_llvm_fpga_pop_i1_notcmp2546_pop32_conv2d1x171_out_data_out_3_q <= '0;
        end
        else
        begin
            redist39_i_llvm_fpga_pop_i1_notcmp2546_pop32_conv2d1x171_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp2546_pop32_conv2d1x171_out_data_out);
            redist39_i_llvm_fpga_pop_i1_notcmp2546_pop32_conv2d1x171_out_data_out_3_delay_1 <= redist39_i_llvm_fpga_pop_i1_notcmp2546_pop32_conv2d1x171_out_data_out_3_delay_0;
            redist39_i_llvm_fpga_pop_i1_notcmp2546_pop32_conv2d1x171_out_data_out_3_q <= redist39_i_llvm_fpga_pop_i1_notcmp2546_pop32_conv2d1x171_out_data_out_3_delay_1;
        end
    end

    // valid_fanout_reg20(REG,262)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist19_sync_together147_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg21(REG,263)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist19_sync_together147_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp3045_push31_conv2d1x170(BLACKBOX,120)@3
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    conv2d1x1_i_llvm_fpga_push_i1_notcmp3045_push31_0 thei_llvm_fpga_push_i1_notcmp3045_push31_conv2d1x170 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp3045_pop31_conv2d1x169_out_data_out),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i1_notcmp3045_pop31_conv2d1x169_out_feedback_stall_out_31),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i1_notcmp3045_push31_conv2d1x170_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i1_notcmp3045_push31_conv2d1x170_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together147_aunroll_x_in_c0_eni18_8_tpl_2(DELAY,402)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together147_aunroll_x_in_c0_eni18_8_tpl_2_delay_0 <= '0;
            redist8_sync_together147_aunroll_x_in_c0_eni18_8_tpl_2_q <= '0;
        end
        else
        begin
            redist8_sync_together147_aunroll_x_in_c0_eni18_8_tpl_2_delay_0 <= $unsigned(in_c0_eni18_8_tpl);
            redist8_sync_together147_aunroll_x_in_c0_eni18_8_tpl_2_q <= redist8_sync_together147_aunroll_x_in_c0_eni18_8_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp3045_pop31_conv2d1x169(BLACKBOX,107)@3
    // out out_feedback_stall_out_31@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_notcmp3045_pop31_0 thei_llvm_fpga_pop_i1_notcmp3045_pop31_conv2d1x169 (
        .in_data_in(redist8_sync_together147_aunroll_x_in_c0_eni18_8_tpl_2_q),
        .in_dir(redist1_sync_together147_aunroll_x_in_c0_eni18_1_tpl_2_q),
        .in_feedback_in_31(i_llvm_fpga_push_i1_notcmp3045_push31_conv2d1x170_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i1_notcmp3045_push31_conv2d1x170_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp3045_pop31_conv2d1x169_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i1_notcmp3045_pop31_conv2d1x169_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist38_i_llvm_fpga_pop_i1_notcmp3045_pop31_conv2d1x169_out_data_out_3(DELAY,432)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_llvm_fpga_pop_i1_notcmp3045_pop31_conv2d1x169_out_data_out_3_delay_0 <= '0;
            redist38_i_llvm_fpga_pop_i1_notcmp3045_pop31_conv2d1x169_out_data_out_3_delay_1 <= '0;
            redist38_i_llvm_fpga_pop_i1_notcmp3045_pop31_conv2d1x169_out_data_out_3_q <= '0;
        end
        else
        begin
            redist38_i_llvm_fpga_pop_i1_notcmp3045_pop31_conv2d1x169_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp3045_pop31_conv2d1x169_out_data_out);
            redist38_i_llvm_fpga_pop_i1_notcmp3045_pop31_conv2d1x169_out_data_out_3_delay_1 <= redist38_i_llvm_fpga_pop_i1_notcmp3045_pop31_conv2d1x169_out_data_out_3_delay_0;
            redist38_i_llvm_fpga_pop_i1_notcmp3045_pop31_conv2d1x169_out_data_out_3_q <= redist38_i_llvm_fpga_pop_i1_notcmp3045_pop31_conv2d1x169_out_data_out_3_delay_1;
        end
    end

    // valid_fanout_reg18(REG,260)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist19_sync_together147_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg19(REG,261)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist19_sync_together147_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_push29_conv2d1x168(BLACKBOX,123)@3
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    conv2d1x1_i_llvm_fpga_push_i1_push29_0 thei_llvm_fpga_push_i1_push29_conv2d1x168 (
        .in_data_in(i_llvm_fpga_pop_i1_pop29_conv2d1x167_out_data_out),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i1_pop29_conv2d1x167_out_feedback_stall_out_29),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i1_push29_conv2d1x168_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i1_push29_conv2d1x168_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together147_aunroll_x_in_c0_eni18_7_tpl_2(DELAY,401)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together147_aunroll_x_in_c0_eni18_7_tpl_2_delay_0 <= '0;
            redist7_sync_together147_aunroll_x_in_c0_eni18_7_tpl_2_q <= '0;
        end
        else
        begin
            redist7_sync_together147_aunroll_x_in_c0_eni18_7_tpl_2_delay_0 <= $unsigned(in_c0_eni18_7_tpl);
            redist7_sync_together147_aunroll_x_in_c0_eni18_7_tpl_2_q <= redist7_sync_together147_aunroll_x_in_c0_eni18_7_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i1_pop29_conv2d1x167(BLACKBOX,109)@3
    // out out_feedback_stall_out_29@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_pop29_0 thei_llvm_fpga_pop_i1_pop29_conv2d1x167 (
        .in_data_in(redist7_sync_together147_aunroll_x_in_c0_eni18_7_tpl_2_q),
        .in_dir(redist1_sync_together147_aunroll_x_in_c0_eni18_1_tpl_2_q),
        .in_feedback_in_29(i_llvm_fpga_push_i1_push29_conv2d1x168_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i1_push29_conv2d1x168_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop29_conv2d1x167_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i1_pop29_conv2d1x167_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist35_i_llvm_fpga_pop_i1_pop29_conv2d1x167_out_data_out_3(DELAY,429)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_llvm_fpga_pop_i1_pop29_conv2d1x167_out_data_out_3_delay_0 <= '0;
            redist35_i_llvm_fpga_pop_i1_pop29_conv2d1x167_out_data_out_3_delay_1 <= '0;
            redist35_i_llvm_fpga_pop_i1_pop29_conv2d1x167_out_data_out_3_q <= '0;
        end
        else
        begin
            redist35_i_llvm_fpga_pop_i1_pop29_conv2d1x167_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_pop29_conv2d1x167_out_data_out);
            redist35_i_llvm_fpga_pop_i1_pop29_conv2d1x167_out_data_out_3_delay_1 <= redist35_i_llvm_fpga_pop_i1_pop29_conv2d1x167_out_data_out_3_delay_0;
            redist35_i_llvm_fpga_pop_i1_pop29_conv2d1x167_out_data_out_3_q <= redist35_i_llvm_fpga_pop_i1_pop29_conv2d1x167_out_data_out_3_delay_1;
        end
    end

    // valid_fanout_reg16(REG,258)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg17(REG,259)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist19_sync_together147_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_p1024f32_output_im_addr_054_replace_phi36_push25_conv2d1x166(BLACKBOX,130)@3
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    conv2d1x1_i_llvm_fpga_push_p1024f32_outp0000place_phi36_push25_0 thei_llvm_fpga_push_p1024f32_output_im_addr_054_replace_phi36_push25_conv2d1x166 (
        .in_data_in(redist29_i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165_out_data_out_1_q),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165_out_feedback_stall_out_25),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_p1024f32_output_im_addr_054_replace_phi36_push25_conv2d1x166_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_p1024f32_output_im_addr_054_replace_phi36_push25_conv2d1x166_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together147_aunroll_x_in_c0_eni18_6_tpl_1(DELAY,400)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together147_aunroll_x_in_c0_eni18_6_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together147_aunroll_x_in_c0_eni18_6_tpl_1_q <= $unsigned(in_c0_eni18_6_tpl);
        end
    end

    // i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165(BLACKBOX,116)@2
    // out out_feedback_stall_out_25@20000000
    conv2d1x1_i_llvm_fpga_pop_p1024f32_outpu0000eplace_phi36_pop25_0 thei_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165 (
        .in_data_in(redist6_sync_together147_aunroll_x_in_c0_eni18_6_tpl_1_q),
        .in_dir(redist0_sync_together147_aunroll_x_in_c0_eni18_1_tpl_1_q),
        .in_feedback_in_25(i_llvm_fpga_push_p1024f32_output_im_addr_054_replace_phi36_push25_conv2d1x166_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_p1024f32_output_im_addr_054_replace_phi36_push25_conv2d1x166_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist29_i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165_out_data_out_1(DELAY,423)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165_out_data_out_1_q <= '0;
        end
        else
        begin
            redist29_i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165_out_data_out);
        end
    end

    // redist30_i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165_out_data_out_4_inputreg0(DELAY,497)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165_out_data_out_4_inputreg0_q <= '0;
        end
        else
        begin
            redist30_i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165_out_data_out_4_inputreg0_q <= $unsigned(redist29_i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165_out_data_out_1_q);
        end
    end

    // redist30_i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165_out_data_out_4(DELAY,424)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165_out_data_out_4_delay_0 <= '0;
            redist30_i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165_out_data_out_4_q <= '0;
        end
        else
        begin
            redist30_i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165_out_data_out_4_delay_0 <= $unsigned(redist30_i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165_out_data_out_4_inputreg0_q);
            redist30_i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165_out_data_out_4_q <= redist30_i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165_out_data_out_4_delay_0;
        end
    end

    // i_masked_conv2d1x164(LOGICAL,148)@6
    assign i_masked_conv2d1x164_q = i_notcmp_conv2d1x159_q & i_first_cleanup_conv2d1x13_sel_x_b;

    // leftShiftStage0Idx1Rng2_uid374_i_shl_conv2d1x10_shift_x(BITSELECT,373)@2
    assign leftShiftStage0Idx1Rng2_uid374_i_shl_conv2d1x10_shift_x_in = i_llvm_fpga_pop_i32_k_047_pop21_conv2d1x118_out_data_out[29:0];
    assign leftShiftStage0Idx1Rng2_uid374_i_shl_conv2d1x10_shift_x_b = leftShiftStage0Idx1Rng2_uid374_i_shl_conv2d1x10_shift_x_in[29:0];

    // leftShiftStage0Idx1_uid375_i_shl_conv2d1x10_shift_x(BITJOIN,374)@2
    assign leftShiftStage0Idx1_uid375_i_shl_conv2d1x10_shift_x_q = {leftShiftStage0Idx1Rng2_uid374_i_shl_conv2d1x10_shift_x_b, i_arrayidx132_conv2d1x128_vt_const_1_q};

    // valid_fanout_reg4(REG,246)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg15(REG,257)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist19_sync_together147_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_1111(CONSTANT,47)
    assign c_i32_1111_q = $unsigned(32'b00000000000000000000000000000001);

    // redist32_i_llvm_fpga_pop_i32_k_047_pop21_conv2d1x118_out_data_out_1(DELAY,426)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_pop_i32_k_047_pop21_conv2d1x118_out_data_out_1_q <= '0;
        end
        else
        begin
            redist32_i_llvm_fpga_pop_i32_k_047_pop21_conv2d1x118_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_k_047_pop21_conv2d1x118_out_data_out);
        end
    end

    // i_inc_conv2d1x152(ADD,102)@3
    assign i_inc_conv2d1x152_a = {1'b0, redist32_i_llvm_fpga_pop_i32_k_047_pop21_conv2d1x118_out_data_out_1_q};
    assign i_inc_conv2d1x152_b = {1'b0, c_i32_1111_q};
    assign i_inc_conv2d1x152_o = $unsigned(i_inc_conv2d1x152_a) + $unsigned(i_inc_conv2d1x152_b);
    assign i_inc_conv2d1x152_q = i_inc_conv2d1x152_o[32:0];

    // bgTrunc_i_inc_conv2d1x152_sel_x(BITSELECT,182)@3
    assign bgTrunc_i_inc_conv2d1x152_sel_x_b = i_inc_conv2d1x152_q[31:0];

    // i_llvm_fpga_push_i32_k_047_push21_conv2d1x153(BLACKBOX,127)@3
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    conv2d1x1_i_llvm_fpga_push_i32_k_047_push21_0 thei_llvm_fpga_push_i32_k_047_push21_conv2d1x153 (
        .in_data_in(bgTrunc_i_inc_conv2d1x152_sel_x_b),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i32_k_047_pop21_conv2d1x118_out_feedback_stall_out_21),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i32_k_047_push21_conv2d1x153_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i32_k_047_push21_conv2d1x153_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_0109(CONSTANT,46)
    assign c_i32_0109_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_k_047_pop21_conv2d1x118(BLACKBOX,113)@2
    // out out_feedback_stall_out_21@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_k_047_pop21_0 thei_llvm_fpga_pop_i32_k_047_pop21_conv2d1x118 (
        .in_data_in(c_i32_0109_q),
        .in_dir(redist0_sync_together147_aunroll_x_in_c0_eni18_1_tpl_1_q),
        .in_feedback_in_21(i_llvm_fpga_push_i32_k_047_push21_conv2d1x153_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i32_k_047_push21_conv2d1x153_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_047_pop21_conv2d1x118_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i32_k_047_pop21_conv2d1x118_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage0_uid377_i_shl_conv2d1x10_shift_x(MUX,376)@2
    assign leftShiftStage0_uid377_i_shl_conv2d1x10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid377_i_shl_conv2d1x10_shift_x_s or i_llvm_fpga_pop_i32_k_047_pop21_conv2d1x118_out_data_out or leftShiftStage0Idx1_uid375_i_shl_conv2d1x10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid377_i_shl_conv2d1x10_shift_x_s)
            1'b0 : leftShiftStage0_uid377_i_shl_conv2d1x10_shift_x_q = i_llvm_fpga_pop_i32_k_047_pop21_conv2d1x118_out_data_out;
            1'b1 : leftShiftStage0_uid377_i_shl_conv2d1x10_shift_x_q = leftShiftStage0Idx1_uid375_i_shl_conv2d1x10_shift_x_q;
            default : leftShiftStage0_uid377_i_shl_conv2d1x10_shift_x_q = 32'b0;
        endcase
    end

    // i_shl_conv2d1x119_vt_select_31(BITSELECT,167)@2
    assign i_shl_conv2d1x119_vt_select_31_b = leftShiftStage0_uid377_i_shl_conv2d1x10_shift_x_q[31:2];

    // i_shl_conv2d1x119_vt_join(BITJOIN,166)@2
    assign i_shl_conv2d1x119_vt_join_q = {i_shl_conv2d1x119_vt_select_31_b, i_arrayidx132_conv2d1x128_vt_const_1_q};

    // i_add18_conv2d1x134_BitSelect_for_a(BITSELECT,286)@2
    assign i_add18_conv2d1x134_BitSelect_for_a_b = i_shl_conv2d1x119_vt_join_q[31:2];

    // i_add38_conv2d1x146_join(BITJOIN,291)@2
    assign i_add38_conv2d1x146_join_q = {i_add18_conv2d1x134_BitSelect_for_a_b, VCC_q, VCC_q};

    // i_add38_conv2d1x146_vt_select_31(BITSELECT,67)@2
    assign i_add38_conv2d1x146_vt_select_31_b = i_add38_conv2d1x146_join_q[31:2];

    // i_add38_conv2d1x146_vt_const_1(CONSTANT,65)
    assign i_add38_conv2d1x146_vt_const_1_q = $unsigned(2'b11);

    // i_add38_conv2d1x146_vt_join(BITJOIN,66)@2
    assign i_add38_conv2d1x146_vt_join_q = {i_add38_conv2d1x146_vt_select_31_b, i_add38_conv2d1x146_vt_const_1_q};

    // i_mul40_conv2d1x147_bs2_merged_bit_select(BITSELECT,392)@2
    assign i_mul40_conv2d1x147_bs2_merged_bit_select_b = i_add38_conv2d1x146_vt_join_q[31:18];
    assign i_mul40_conv2d1x147_bs2_merged_bit_select_c = i_add38_conv2d1x146_vt_join_q[17:0];

    // valid_fanout_reg5(REG,247)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg6(REG,248)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist19_sync_together147_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist31_i_llvm_fpga_pop_i32_mul41_pop27_conv2d1x120_out_data_out_1(DELAY,425)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_pop_i32_mul41_pop27_conv2d1x120_out_data_out_1_q <= '0;
        end
        else
        begin
            redist31_i_llvm_fpga_pop_i32_mul41_pop27_conv2d1x120_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_mul41_pop27_conv2d1x120_out_data_out);
        end
    end

    // i_llvm_fpga_push_i32_mul41_push27_conv2d1x121(BLACKBOX,128)@3
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    conv2d1x1_i_llvm_fpga_push_i32_mul41_push27_0 thei_llvm_fpga_push_i32_mul41_push27_conv2d1x121 (
        .in_data_in(redist31_i_llvm_fpga_pop_i32_mul41_pop27_conv2d1x120_out_data_out_1_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i32_mul41_pop27_conv2d1x120_out_feedback_stall_out_27),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i32_mul41_push27_conv2d1x121_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i32_mul41_push27_conv2d1x121_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together147_aunroll_x_in_c0_eni18_3_tpl_1(DELAY,397)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together147_aunroll_x_in_c0_eni18_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together147_aunroll_x_in_c0_eni18_3_tpl_1_q <= $unsigned(in_c0_eni18_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul41_pop27_conv2d1x120(BLACKBOX,114)@2
    // out out_feedback_stall_out_27@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_mul41_pop27_0 thei_llvm_fpga_pop_i32_mul41_pop27_conv2d1x120 (
        .in_data_in(redist3_sync_together147_aunroll_x_in_c0_eni18_3_tpl_1_q),
        .in_dir(redist0_sync_together147_aunroll_x_in_c0_eni18_1_tpl_1_q),
        .in_feedback_in_27(i_llvm_fpga_push_i32_mul41_push27_conv2d1x121_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i32_mul41_push27_conv2d1x121_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul41_pop27_conv2d1x120_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i32_mul41_pop27_conv2d1x120_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul10_conv2d1x122_bs1_merged_bit_select(BITSELECT,393)@2
    assign i_mul10_conv2d1x122_bs1_merged_bit_select_b = i_llvm_fpga_pop_i32_mul41_pop27_conv2d1x120_out_data_out[31:18];
    assign i_mul10_conv2d1x122_bs1_merged_bit_select_c = i_llvm_fpga_pop_i32_mul41_pop27_conv2d1x120_out_data_out[17:0];

    // i_mul40_conv2d1x147_ma3_cma(CHAINMULTADD,389)@2 + 3
    assign i_mul40_conv2d1x147_ma3_cma_reset = ~ (resetn);
    assign i_mul40_conv2d1x147_ma3_cma_ena0 = 1'b1;
    assign i_mul40_conv2d1x147_ma3_cma_ena1 = i_mul40_conv2d1x147_ma3_cma_ena0;
    assign i_mul40_conv2d1x147_ma3_cma_ena2 = i_mul40_conv2d1x147_ma3_cma_ena0;

    assign i_mul40_conv2d1x147_ma3_cma_a0 = i_mul10_conv2d1x122_bs1_merged_bit_select_b;
    assign i_mul40_conv2d1x147_ma3_cma_c0 = i_mul40_conv2d1x147_bs2_merged_bit_select_c;
    assign i_mul40_conv2d1x147_ma3_cma_a1 = i_mul40_conv2d1x147_bs2_merged_bit_select_b;
    assign i_mul40_conv2d1x147_ma3_cma_c1 = i_mul10_conv2d1x122_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul40_conv2d1x147_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul40_conv2d1x147_ma3_cma_ena2, i_mul40_conv2d1x147_ma3_cma_ena1, i_mul40_conv2d1x147_ma3_cma_ena0 }),
        .aclr({ i_mul40_conv2d1x147_ma3_cma_reset, i_mul40_conv2d1x147_ma3_cma_reset }),
        .ay(i_mul40_conv2d1x147_ma3_cma_a1),
        .by(i_mul40_conv2d1x147_ma3_cma_a0),
        .ax(i_mul40_conv2d1x147_ma3_cma_c1),
        .bx(i_mul40_conv2d1x147_ma3_cma_c0),
        .resulta(i_mul40_conv2d1x147_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul40_conv2d1x147_ma3_cma_delay ( .xin(i_mul40_conv2d1x147_ma3_cma_s0), .xout(i_mul40_conv2d1x147_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul40_conv2d1x147_ma3_cma_q = $unsigned(i_mul40_conv2d1x147_ma3_cma_qq[32:0]);

    // i_mul40_conv2d1x147_sums_align_1(BITSHIFT,351)@5
    assign i_mul40_conv2d1x147_sums_align_1_qint = { i_mul40_conv2d1x147_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul40_conv2d1x147_sums_align_1_q = i_mul40_conv2d1x147_sums_align_1_qint[50:0];

    // i_mul40_conv2d1x147_im0_cma(CHAINMULTADD,384)@2 + 3
    assign i_mul40_conv2d1x147_im0_cma_reset = ~ (resetn);
    assign i_mul40_conv2d1x147_im0_cma_ena0 = 1'b1;
    assign i_mul40_conv2d1x147_im0_cma_ena1 = i_mul40_conv2d1x147_im0_cma_ena0;
    assign i_mul40_conv2d1x147_im0_cma_ena2 = i_mul40_conv2d1x147_im0_cma_ena0;

    assign i_mul40_conv2d1x147_im0_cma_a0 = i_mul10_conv2d1x122_bs1_merged_bit_select_b;
    assign i_mul40_conv2d1x147_im0_cma_c0 = i_mul40_conv2d1x147_bs2_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul40_conv2d1x147_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul40_conv2d1x147_im0_cma_ena2, i_mul40_conv2d1x147_im0_cma_ena1, i_mul40_conv2d1x147_im0_cma_ena0 }),
        .aclr({ i_mul40_conv2d1x147_im0_cma_reset, i_mul40_conv2d1x147_im0_cma_reset }),
        .ay(i_mul40_conv2d1x147_im0_cma_a0),
        .ax(i_mul40_conv2d1x147_im0_cma_c0),
        .resulta(i_mul40_conv2d1x147_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul40_conv2d1x147_im0_cma_delay ( .xin(i_mul40_conv2d1x147_im0_cma_s0), .xout(i_mul40_conv2d1x147_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul40_conv2d1x147_im0_cma_q = $unsigned(i_mul40_conv2d1x147_im0_cma_qq[27:0]);

    // i_mul40_conv2d1x147_im8_cma(CHAINMULTADD,385)@2 + 3
    assign i_mul40_conv2d1x147_im8_cma_reset = ~ (resetn);
    assign i_mul40_conv2d1x147_im8_cma_ena0 = 1'b1;
    assign i_mul40_conv2d1x147_im8_cma_ena1 = i_mul40_conv2d1x147_im8_cma_ena0;
    assign i_mul40_conv2d1x147_im8_cma_ena2 = i_mul40_conv2d1x147_im8_cma_ena0;

    assign i_mul40_conv2d1x147_im8_cma_a0 = i_mul10_conv2d1x122_bs1_merged_bit_select_c;
    assign i_mul40_conv2d1x147_im8_cma_c0 = i_mul40_conv2d1x147_bs2_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul40_conv2d1x147_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul40_conv2d1x147_im8_cma_ena2, i_mul40_conv2d1x147_im8_cma_ena1, i_mul40_conv2d1x147_im8_cma_ena0 }),
        .aclr({ i_mul40_conv2d1x147_im8_cma_reset, i_mul40_conv2d1x147_im8_cma_reset }),
        .ay(i_mul40_conv2d1x147_im8_cma_a0),
        .ax(i_mul40_conv2d1x147_im8_cma_c0),
        .resulta(i_mul40_conv2d1x147_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul40_conv2d1x147_im8_cma_delay ( .xin(i_mul40_conv2d1x147_im8_cma_s0), .xout(i_mul40_conv2d1x147_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul40_conv2d1x147_im8_cma_q = $unsigned(i_mul40_conv2d1x147_im8_cma_qq[35:0]);

    // i_mul40_conv2d1x147_sums_join_0(BITJOIN,350)@5
    assign i_mul40_conv2d1x147_sums_join_0_q = {i_mul40_conv2d1x147_im0_cma_q, i_mul40_conv2d1x147_im8_cma_q};

    // i_mul40_conv2d1x147_sums_result_add_0_0(ADD,353)@5
    assign i_mul40_conv2d1x147_sums_result_add_0_0_a = {1'b0, i_mul40_conv2d1x147_sums_join_0_q};
    assign i_mul40_conv2d1x147_sums_result_add_0_0_b = {14'b00000000000000, i_mul40_conv2d1x147_sums_align_1_q};
    assign i_mul40_conv2d1x147_sums_result_add_0_0_o = $unsigned(i_mul40_conv2d1x147_sums_result_add_0_0_a) + $unsigned(i_mul40_conv2d1x147_sums_result_add_0_0_b);
    assign i_mul40_conv2d1x147_sums_result_add_0_0_q = i_mul40_conv2d1x147_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul40_conv2d1x147_sel_x(BITSELECT,186)@5
    assign bgTrunc_i_mul40_conv2d1x147_sel_x_in = i_mul40_conv2d1x147_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul40_conv2d1x147_sel_x_b = bgTrunc_i_mul40_conv2d1x147_sel_x_in[31:0];

    // redist25_bgTrunc_i_mul40_conv2d1x147_sel_x_b_1(DELAY,419)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_bgTrunc_i_mul40_conv2d1x147_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist25_bgTrunc_i_mul40_conv2d1x147_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul40_conv2d1x147_sel_x_b);
        end
    end

    // i_add41_conv2d1x148(ADD,68)@6
    assign i_add41_conv2d1x148_a = {1'b0, redist25_bgTrunc_i_mul40_conv2d1x147_sel_x_b_1_q};
    assign i_add41_conv2d1x148_b = {1'b0, redist34_i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_data_out_4_q};
    assign i_add41_conv2d1x148_o = $unsigned(i_add41_conv2d1x148_a) + $unsigned(i_add41_conv2d1x148_b);
    assign i_add41_conv2d1x148_q = i_add41_conv2d1x148_o[32:0];

    // bgTrunc_i_add41_conv2d1x148_sel_x(BITSELECT,180)@6
    assign bgTrunc_i_add41_conv2d1x148_sel_x_b = i_add41_conv2d1x148_q[31:0];

    // i_idxprom42_conv2d1x149_sel_x(BITSELECT,230)@6
    assign i_idxprom42_conv2d1x149_sel_x_b = $unsigned({{32{bgTrunc_i_add41_conv2d1x148_sel_x_b[31]}}, bgTrunc_i_add41_conv2d1x148_sel_x_b[31:0]});

    // i_arrayidx435_conv2d1x10_narrow_x(BITSELECT,217)@6
    assign i_arrayidx435_conv2d1x10_narrow_x_b = i_idxprom42_conv2d1x149_sel_x_b[61:0];

    // i_arrayidx435_conv2d1x10_shift_join_x(BITJOIN,218)@6
    assign i_arrayidx435_conv2d1x10_shift_join_x_q = {i_arrayidx435_conv2d1x10_narrow_x_b, i_arrayidx132_conv2d1x128_vt_const_1_q};

    // valid_fanout_reg14(REG,256)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist22_sync_together147_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x150(BLACKBOX,140)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0000ut_im_sync_buffer8_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x150 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x150_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x150_vt_select_63(BITSELECT,143)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x150_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x150_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x138_vt_const_9(CONSTANT,133)
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x138_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x150_vt_join(BITJOIN,142)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x150_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x150_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x138_vt_const_9_q};

    // i_arrayidx435_conv2d1x10_add_x(ADD,215)@6
    assign i_arrayidx435_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x150_vt_join_q};
    assign i_arrayidx435_conv2d1x10_add_x_b = {1'b0, i_arrayidx435_conv2d1x10_shift_join_x_q};
    assign i_arrayidx435_conv2d1x10_add_x_o = $unsigned(i_arrayidx435_conv2d1x10_add_x_a) + $unsigned(i_arrayidx435_conv2d1x10_add_x_b);
    assign i_arrayidx435_conv2d1x10_add_x_q = i_arrayidx435_conv2d1x10_add_x_o[64:0];

    // i_arrayidx435_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,220)@6
    assign i_arrayidx435_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx435_conv2d1x10_add_x_q[63:0];

    // i_arrayidx435_conv2d1x151_vt_select_63(BITSELECT,80)@6
    assign i_arrayidx435_conv2d1x151_vt_select_63_b = i_arrayidx435_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx132_conv2d1x128_vt_const_1(CONSTANT,69)
    assign i_arrayidx132_conv2d1x128_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx435_conv2d1x151_vt_join(BITJOIN,79)@6
    assign i_arrayidx435_conv2d1x151_vt_join_q = {i_arrayidx435_conv2d1x151_vt_select_63_b, i_arrayidx132_conv2d1x128_vt_const_1_q};

    // i_add28_conv2d1x140_join(BITJOIN,289)@2
    assign i_add28_conv2d1x140_join_q = {i_add18_conv2d1x134_BitSelect_for_a_b, VCC_q, GND_q};

    // i_add28_conv2d1x140_vt_select_31(BITSELECT,62)@2
    assign i_add28_conv2d1x140_vt_select_31_b = i_add28_conv2d1x140_join_q[31:2];

    // i_add28_conv2d1x140_vt_const_1(CONSTANT,60)
    assign i_add28_conv2d1x140_vt_const_1_q = $unsigned(2'b10);

    // i_add28_conv2d1x140_vt_join(BITJOIN,61)@2
    assign i_add28_conv2d1x140_vt_join_q = {i_add28_conv2d1x140_vt_select_31_b, i_add28_conv2d1x140_vt_const_1_q};

    // i_mul30_conv2d1x141_bs2_merged_bit_select(BITSELECT,391)@2
    assign i_mul30_conv2d1x141_bs2_merged_bit_select_b = i_add28_conv2d1x140_vt_join_q[31:18];
    assign i_mul30_conv2d1x141_bs2_merged_bit_select_c = i_add28_conv2d1x140_vt_join_q[17:0];

    // i_mul30_conv2d1x141_ma3_cma(CHAINMULTADD,388)@2 + 3
    assign i_mul30_conv2d1x141_ma3_cma_reset = ~ (resetn);
    assign i_mul30_conv2d1x141_ma3_cma_ena0 = 1'b1;
    assign i_mul30_conv2d1x141_ma3_cma_ena1 = i_mul30_conv2d1x141_ma3_cma_ena0;
    assign i_mul30_conv2d1x141_ma3_cma_ena2 = i_mul30_conv2d1x141_ma3_cma_ena0;

    assign i_mul30_conv2d1x141_ma3_cma_a0 = i_mul10_conv2d1x122_bs1_merged_bit_select_b;
    assign i_mul30_conv2d1x141_ma3_cma_c0 = i_mul30_conv2d1x141_bs2_merged_bit_select_c;
    assign i_mul30_conv2d1x141_ma3_cma_a1 = i_mul30_conv2d1x141_bs2_merged_bit_select_b;
    assign i_mul30_conv2d1x141_ma3_cma_c1 = i_mul10_conv2d1x122_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul30_conv2d1x141_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul30_conv2d1x141_ma3_cma_ena2, i_mul30_conv2d1x141_ma3_cma_ena1, i_mul30_conv2d1x141_ma3_cma_ena0 }),
        .aclr({ i_mul30_conv2d1x141_ma3_cma_reset, i_mul30_conv2d1x141_ma3_cma_reset }),
        .ay(i_mul30_conv2d1x141_ma3_cma_a1),
        .by(i_mul30_conv2d1x141_ma3_cma_a0),
        .ax(i_mul30_conv2d1x141_ma3_cma_c1),
        .bx(i_mul30_conv2d1x141_ma3_cma_c0),
        .resulta(i_mul30_conv2d1x141_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul30_conv2d1x141_ma3_cma_delay ( .xin(i_mul30_conv2d1x141_ma3_cma_s0), .xout(i_mul30_conv2d1x141_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul30_conv2d1x141_ma3_cma_q = $unsigned(i_mul30_conv2d1x141_ma3_cma_qq[32:0]);

    // i_mul30_conv2d1x141_sums_align_1(BITSHIFT,336)@5
    assign i_mul30_conv2d1x141_sums_align_1_qint = { i_mul30_conv2d1x141_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul30_conv2d1x141_sums_align_1_q = i_mul30_conv2d1x141_sums_align_1_qint[50:0];

    // i_mul30_conv2d1x141_im0_cma(CHAINMULTADD,382)@2 + 3
    assign i_mul30_conv2d1x141_im0_cma_reset = ~ (resetn);
    assign i_mul30_conv2d1x141_im0_cma_ena0 = 1'b1;
    assign i_mul30_conv2d1x141_im0_cma_ena1 = i_mul30_conv2d1x141_im0_cma_ena0;
    assign i_mul30_conv2d1x141_im0_cma_ena2 = i_mul30_conv2d1x141_im0_cma_ena0;

    assign i_mul30_conv2d1x141_im0_cma_a0 = i_mul10_conv2d1x122_bs1_merged_bit_select_b;
    assign i_mul30_conv2d1x141_im0_cma_c0 = i_mul30_conv2d1x141_bs2_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul30_conv2d1x141_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul30_conv2d1x141_im0_cma_ena2, i_mul30_conv2d1x141_im0_cma_ena1, i_mul30_conv2d1x141_im0_cma_ena0 }),
        .aclr({ i_mul30_conv2d1x141_im0_cma_reset, i_mul30_conv2d1x141_im0_cma_reset }),
        .ay(i_mul30_conv2d1x141_im0_cma_a0),
        .ax(i_mul30_conv2d1x141_im0_cma_c0),
        .resulta(i_mul30_conv2d1x141_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul30_conv2d1x141_im0_cma_delay ( .xin(i_mul30_conv2d1x141_im0_cma_s0), .xout(i_mul30_conv2d1x141_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul30_conv2d1x141_im0_cma_q = $unsigned(i_mul30_conv2d1x141_im0_cma_qq[27:0]);

    // i_mul30_conv2d1x141_im8_cma(CHAINMULTADD,383)@2 + 3
    assign i_mul30_conv2d1x141_im8_cma_reset = ~ (resetn);
    assign i_mul30_conv2d1x141_im8_cma_ena0 = 1'b1;
    assign i_mul30_conv2d1x141_im8_cma_ena1 = i_mul30_conv2d1x141_im8_cma_ena0;
    assign i_mul30_conv2d1x141_im8_cma_ena2 = i_mul30_conv2d1x141_im8_cma_ena0;

    assign i_mul30_conv2d1x141_im8_cma_a0 = i_mul10_conv2d1x122_bs1_merged_bit_select_c;
    assign i_mul30_conv2d1x141_im8_cma_c0 = i_mul30_conv2d1x141_bs2_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul30_conv2d1x141_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul30_conv2d1x141_im8_cma_ena2, i_mul30_conv2d1x141_im8_cma_ena1, i_mul30_conv2d1x141_im8_cma_ena0 }),
        .aclr({ i_mul30_conv2d1x141_im8_cma_reset, i_mul30_conv2d1x141_im8_cma_reset }),
        .ay(i_mul30_conv2d1x141_im8_cma_a0),
        .ax(i_mul30_conv2d1x141_im8_cma_c0),
        .resulta(i_mul30_conv2d1x141_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul30_conv2d1x141_im8_cma_delay ( .xin(i_mul30_conv2d1x141_im8_cma_s0), .xout(i_mul30_conv2d1x141_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul30_conv2d1x141_im8_cma_q = $unsigned(i_mul30_conv2d1x141_im8_cma_qq[35:0]);

    // i_mul30_conv2d1x141_sums_join_0(BITJOIN,335)@5
    assign i_mul30_conv2d1x141_sums_join_0_q = {i_mul30_conv2d1x141_im0_cma_q, i_mul30_conv2d1x141_im8_cma_q};

    // i_mul30_conv2d1x141_sums_result_add_0_0(ADD,338)@5
    assign i_mul30_conv2d1x141_sums_result_add_0_0_a = {1'b0, i_mul30_conv2d1x141_sums_join_0_q};
    assign i_mul30_conv2d1x141_sums_result_add_0_0_b = {14'b00000000000000, i_mul30_conv2d1x141_sums_align_1_q};
    assign i_mul30_conv2d1x141_sums_result_add_0_0_o = $unsigned(i_mul30_conv2d1x141_sums_result_add_0_0_a) + $unsigned(i_mul30_conv2d1x141_sums_result_add_0_0_b);
    assign i_mul30_conv2d1x141_sums_result_add_0_0_q = i_mul30_conv2d1x141_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul30_conv2d1x141_sel_x(BITSELECT,185)@5
    assign bgTrunc_i_mul30_conv2d1x141_sel_x_in = i_mul30_conv2d1x141_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul30_conv2d1x141_sel_x_b = bgTrunc_i_mul30_conv2d1x141_sel_x_in[31:0];

    // i_mul30_conv2d1x141_vt_select_31(BITSELECT,157)@5
    assign i_mul30_conv2d1x141_vt_select_31_b = bgTrunc_i_mul30_conv2d1x141_sel_x_b[31:1];

    // redist27_i_mul30_conv2d1x141_vt_select_31_b_1(DELAY,421)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_mul30_conv2d1x141_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist27_i_mul30_conv2d1x141_vt_select_31_b_1_q <= $unsigned(i_mul30_conv2d1x141_vt_select_31_b);
        end
    end

    // i_mul30_conv2d1x141_vt_join(BITJOIN,156)@6
    assign i_mul30_conv2d1x141_vt_join_q = {redist27_i_mul30_conv2d1x141_vt_select_31_b_1_q, GND_q};

    // i_add31_conv2d1x142(ADD,63)@6
    assign i_add31_conv2d1x142_a = {1'b0, i_mul30_conv2d1x141_vt_join_q};
    assign i_add31_conv2d1x142_b = {1'b0, redist34_i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_data_out_4_q};
    assign i_add31_conv2d1x142_o = $unsigned(i_add31_conv2d1x142_a) + $unsigned(i_add31_conv2d1x142_b);
    assign i_add31_conv2d1x142_q = i_add31_conv2d1x142_o[32:0];

    // bgTrunc_i_add31_conv2d1x142_sel_x(BITSELECT,179)@6
    assign bgTrunc_i_add31_conv2d1x142_sel_x_b = i_add31_conv2d1x142_q[31:0];

    // i_idxprom32_conv2d1x143_sel_x(BITSELECT,229)@6
    assign i_idxprom32_conv2d1x143_sel_x_b = $unsigned({{32{bgTrunc_i_add31_conv2d1x142_sel_x_b[31]}}, bgTrunc_i_add31_conv2d1x142_sel_x_b[31:0]});

    // i_arrayidx334_conv2d1x10_narrow_x(BITSELECT,211)@6
    assign i_arrayidx334_conv2d1x10_narrow_x_b = i_idxprom32_conv2d1x143_sel_x_b[61:0];

    // i_arrayidx334_conv2d1x10_shift_join_x(BITJOIN,212)@6
    assign i_arrayidx334_conv2d1x10_shift_join_x_q = {i_arrayidx334_conv2d1x10_narrow_x_b, i_arrayidx132_conv2d1x128_vt_const_1_q};

    // valid_fanout_reg13(REG,255)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist22_sync_together147_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x144(BLACKBOX,136)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0000ut_im_sync_buffer7_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x144 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x144_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x144_vt_select_63(BITSELECT,139)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x144_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x144_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x144_vt_join(BITJOIN,138)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x144_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x144_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x138_vt_const_9_q};

    // i_arrayidx334_conv2d1x10_add_x(ADD,209)@6
    assign i_arrayidx334_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x144_vt_join_q};
    assign i_arrayidx334_conv2d1x10_add_x_b = {1'b0, i_arrayidx334_conv2d1x10_shift_join_x_q};
    assign i_arrayidx334_conv2d1x10_add_x_o = $unsigned(i_arrayidx334_conv2d1x10_add_x_a) + $unsigned(i_arrayidx334_conv2d1x10_add_x_b);
    assign i_arrayidx334_conv2d1x10_add_x_q = i_arrayidx334_conv2d1x10_add_x_o[64:0];

    // i_arrayidx334_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,214)@6
    assign i_arrayidx334_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx334_conv2d1x10_add_x_q[63:0];

    // i_arrayidx334_conv2d1x145_vt_select_63(BITSELECT,77)@6
    assign i_arrayidx334_conv2d1x145_vt_select_63_b = i_arrayidx334_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx334_conv2d1x145_vt_join(BITJOIN,76)@6
    assign i_arrayidx334_conv2d1x145_vt_join_q = {i_arrayidx334_conv2d1x145_vt_select_63_b, i_arrayidx132_conv2d1x128_vt_const_1_q};

    // i_add18_conv2d1x134_join(BITJOIN,287)@2
    assign i_add18_conv2d1x134_join_q = {i_add18_conv2d1x134_BitSelect_for_a_b, GND_q, VCC_q};

    // i_add18_conv2d1x134_vt_select_31(BITSELECT,57)@2
    assign i_add18_conv2d1x134_vt_select_31_b = i_add18_conv2d1x134_join_q[31:2];

    // i_add18_conv2d1x134_vt_join(BITJOIN,56)@2
    assign i_add18_conv2d1x134_vt_join_q = {i_add18_conv2d1x134_vt_select_31_b, c_i2_1106_q};

    // i_mul20_conv2d1x135_bs2_merged_bit_select(BITSELECT,390)@2
    assign i_mul20_conv2d1x135_bs2_merged_bit_select_b = i_add18_conv2d1x134_vt_join_q[31:18];
    assign i_mul20_conv2d1x135_bs2_merged_bit_select_c = i_add18_conv2d1x134_vt_join_q[17:0];

    // i_mul20_conv2d1x135_ma3_cma(CHAINMULTADD,387)@2 + 3
    assign i_mul20_conv2d1x135_ma3_cma_reset = ~ (resetn);
    assign i_mul20_conv2d1x135_ma3_cma_ena0 = 1'b1;
    assign i_mul20_conv2d1x135_ma3_cma_ena1 = i_mul20_conv2d1x135_ma3_cma_ena0;
    assign i_mul20_conv2d1x135_ma3_cma_ena2 = i_mul20_conv2d1x135_ma3_cma_ena0;

    assign i_mul20_conv2d1x135_ma3_cma_a0 = i_mul10_conv2d1x122_bs1_merged_bit_select_b;
    assign i_mul20_conv2d1x135_ma3_cma_c0 = i_mul20_conv2d1x135_bs2_merged_bit_select_c;
    assign i_mul20_conv2d1x135_ma3_cma_a1 = i_mul20_conv2d1x135_bs2_merged_bit_select_b;
    assign i_mul20_conv2d1x135_ma3_cma_c1 = i_mul10_conv2d1x122_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul20_conv2d1x135_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul20_conv2d1x135_ma3_cma_ena2, i_mul20_conv2d1x135_ma3_cma_ena1, i_mul20_conv2d1x135_ma3_cma_ena0 }),
        .aclr({ i_mul20_conv2d1x135_ma3_cma_reset, i_mul20_conv2d1x135_ma3_cma_reset }),
        .ay(i_mul20_conv2d1x135_ma3_cma_a1),
        .by(i_mul20_conv2d1x135_ma3_cma_a0),
        .ax(i_mul20_conv2d1x135_ma3_cma_c1),
        .bx(i_mul20_conv2d1x135_ma3_cma_c0),
        .resulta(i_mul20_conv2d1x135_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul20_conv2d1x135_ma3_cma_delay ( .xin(i_mul20_conv2d1x135_ma3_cma_s0), .xout(i_mul20_conv2d1x135_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul20_conv2d1x135_ma3_cma_q = $unsigned(i_mul20_conv2d1x135_ma3_cma_qq[32:0]);

    // i_mul20_conv2d1x135_sums_align_1(BITSHIFT,321)@5
    assign i_mul20_conv2d1x135_sums_align_1_qint = { i_mul20_conv2d1x135_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul20_conv2d1x135_sums_align_1_q = i_mul20_conv2d1x135_sums_align_1_qint[50:0];

    // i_mul20_conv2d1x135_im0_cma(CHAINMULTADD,380)@2 + 3
    assign i_mul20_conv2d1x135_im0_cma_reset = ~ (resetn);
    assign i_mul20_conv2d1x135_im0_cma_ena0 = 1'b1;
    assign i_mul20_conv2d1x135_im0_cma_ena1 = i_mul20_conv2d1x135_im0_cma_ena0;
    assign i_mul20_conv2d1x135_im0_cma_ena2 = i_mul20_conv2d1x135_im0_cma_ena0;

    assign i_mul20_conv2d1x135_im0_cma_a0 = i_mul10_conv2d1x122_bs1_merged_bit_select_b;
    assign i_mul20_conv2d1x135_im0_cma_c0 = i_mul20_conv2d1x135_bs2_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul20_conv2d1x135_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul20_conv2d1x135_im0_cma_ena2, i_mul20_conv2d1x135_im0_cma_ena1, i_mul20_conv2d1x135_im0_cma_ena0 }),
        .aclr({ i_mul20_conv2d1x135_im0_cma_reset, i_mul20_conv2d1x135_im0_cma_reset }),
        .ay(i_mul20_conv2d1x135_im0_cma_a0),
        .ax(i_mul20_conv2d1x135_im0_cma_c0),
        .resulta(i_mul20_conv2d1x135_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul20_conv2d1x135_im0_cma_delay ( .xin(i_mul20_conv2d1x135_im0_cma_s0), .xout(i_mul20_conv2d1x135_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul20_conv2d1x135_im0_cma_q = $unsigned(i_mul20_conv2d1x135_im0_cma_qq[27:0]);

    // i_mul20_conv2d1x135_im8_cma(CHAINMULTADD,381)@2 + 3
    assign i_mul20_conv2d1x135_im8_cma_reset = ~ (resetn);
    assign i_mul20_conv2d1x135_im8_cma_ena0 = 1'b1;
    assign i_mul20_conv2d1x135_im8_cma_ena1 = i_mul20_conv2d1x135_im8_cma_ena0;
    assign i_mul20_conv2d1x135_im8_cma_ena2 = i_mul20_conv2d1x135_im8_cma_ena0;

    assign i_mul20_conv2d1x135_im8_cma_a0 = i_mul10_conv2d1x122_bs1_merged_bit_select_c;
    assign i_mul20_conv2d1x135_im8_cma_c0 = i_mul20_conv2d1x135_bs2_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul20_conv2d1x135_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul20_conv2d1x135_im8_cma_ena2, i_mul20_conv2d1x135_im8_cma_ena1, i_mul20_conv2d1x135_im8_cma_ena0 }),
        .aclr({ i_mul20_conv2d1x135_im8_cma_reset, i_mul20_conv2d1x135_im8_cma_reset }),
        .ay(i_mul20_conv2d1x135_im8_cma_a0),
        .ax(i_mul20_conv2d1x135_im8_cma_c0),
        .resulta(i_mul20_conv2d1x135_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul20_conv2d1x135_im8_cma_delay ( .xin(i_mul20_conv2d1x135_im8_cma_s0), .xout(i_mul20_conv2d1x135_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul20_conv2d1x135_im8_cma_q = $unsigned(i_mul20_conv2d1x135_im8_cma_qq[35:0]);

    // i_mul20_conv2d1x135_sums_join_0(BITJOIN,320)@5
    assign i_mul20_conv2d1x135_sums_join_0_q = {i_mul20_conv2d1x135_im0_cma_q, i_mul20_conv2d1x135_im8_cma_q};

    // i_mul20_conv2d1x135_sums_result_add_0_0(ADD,323)@5
    assign i_mul20_conv2d1x135_sums_result_add_0_0_a = {1'b0, i_mul20_conv2d1x135_sums_join_0_q};
    assign i_mul20_conv2d1x135_sums_result_add_0_0_b = {14'b00000000000000, i_mul20_conv2d1x135_sums_align_1_q};
    assign i_mul20_conv2d1x135_sums_result_add_0_0_o = $unsigned(i_mul20_conv2d1x135_sums_result_add_0_0_a) + $unsigned(i_mul20_conv2d1x135_sums_result_add_0_0_b);
    assign i_mul20_conv2d1x135_sums_result_add_0_0_q = i_mul20_conv2d1x135_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul20_conv2d1x135_sel_x(BITSELECT,184)@5
    assign bgTrunc_i_mul20_conv2d1x135_sel_x_in = i_mul20_conv2d1x135_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul20_conv2d1x135_sel_x_b = bgTrunc_i_mul20_conv2d1x135_sel_x_in[31:0];

    // redist26_bgTrunc_i_mul20_conv2d1x135_sel_x_b_1(DELAY,420)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_bgTrunc_i_mul20_conv2d1x135_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist26_bgTrunc_i_mul20_conv2d1x135_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul20_conv2d1x135_sel_x_b);
        end
    end

    // i_add21_conv2d1x136(ADD,58)@6
    assign i_add21_conv2d1x136_a = {1'b0, redist26_bgTrunc_i_mul20_conv2d1x135_sel_x_b_1_q};
    assign i_add21_conv2d1x136_b = {1'b0, redist34_i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_data_out_4_q};
    assign i_add21_conv2d1x136_o = $unsigned(i_add21_conv2d1x136_a) + $unsigned(i_add21_conv2d1x136_b);
    assign i_add21_conv2d1x136_q = i_add21_conv2d1x136_o[32:0];

    // bgTrunc_i_add21_conv2d1x136_sel_x(BITSELECT,178)@6
    assign bgTrunc_i_add21_conv2d1x136_sel_x_b = i_add21_conv2d1x136_q[31:0];

    // i_idxprom22_conv2d1x137_sel_x(BITSELECT,228)@6
    assign i_idxprom22_conv2d1x137_sel_x_b = $unsigned({{32{bgTrunc_i_add21_conv2d1x136_sel_x_b[31]}}, bgTrunc_i_add21_conv2d1x136_sel_x_b[31:0]});

    // i_arrayidx233_conv2d1x10_narrow_x(BITSELECT,205)@6
    assign i_arrayidx233_conv2d1x10_narrow_x_b = i_idxprom22_conv2d1x137_sel_x_b[61:0];

    // i_arrayidx233_conv2d1x10_shift_join_x(BITJOIN,206)@6
    assign i_arrayidx233_conv2d1x10_shift_join_x_q = {i_arrayidx233_conv2d1x10_narrow_x_b, i_arrayidx132_conv2d1x128_vt_const_1_q};

    // valid_fanout_reg12(REG,254)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist22_sync_together147_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x138(BLACKBOX,132)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0000ut_im_sync_buffer6_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x138 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x138_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x138_vt_select_63(BITSELECT,135)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x138_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x138_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x138_vt_join(BITJOIN,134)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x138_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x138_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x138_vt_const_9_q};

    // i_arrayidx233_conv2d1x10_add_x(ADD,203)@6
    assign i_arrayidx233_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x138_vt_join_q};
    assign i_arrayidx233_conv2d1x10_add_x_b = {1'b0, i_arrayidx233_conv2d1x10_shift_join_x_q};
    assign i_arrayidx233_conv2d1x10_add_x_o = $unsigned(i_arrayidx233_conv2d1x10_add_x_a) + $unsigned(i_arrayidx233_conv2d1x10_add_x_b);
    assign i_arrayidx233_conv2d1x10_add_x_q = i_arrayidx233_conv2d1x10_add_x_o[64:0];

    // i_arrayidx233_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,208)@6
    assign i_arrayidx233_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx233_conv2d1x10_add_x_q[63:0];

    // i_arrayidx233_conv2d1x139_vt_select_63(BITSELECT,74)@6
    assign i_arrayidx233_conv2d1x139_vt_select_63_b = i_arrayidx233_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx233_conv2d1x139_vt_join(BITJOIN,73)@6
    assign i_arrayidx233_conv2d1x139_vt_join_q = {i_arrayidx233_conv2d1x139_vt_select_63_b, i_arrayidx132_conv2d1x128_vt_const_1_q};

    // i_idxprom14_conv2d1x130_sel_x(BITSELECT,227)@3
    assign i_idxprom14_conv2d1x130_sel_x_b = {32'b00000000000000000000000000000000, redist32_i_llvm_fpga_pop_i32_k_047_pop21_conv2d1x118_out_data_out_1_q[31:0]};

    // i_idxprom14_conv2d1x130_vt_select_31(BITSELECT,95)@3
    assign i_idxprom14_conv2d1x130_vt_select_31_b = i_idxprom14_conv2d1x130_sel_x_b[31:0];

    // i_idxprom14_conv2d1x130_vt_join(BITJOIN,94)@3
    assign i_idxprom14_conv2d1x130_vt_join_q = {c_i32_0109_q, i_idxprom14_conv2d1x130_vt_select_31_b};

    // i_arrayidx15_conv2d1x10_narrow_x(BITSELECT,199)@3
    assign i_arrayidx15_conv2d1x10_narrow_x_b = i_idxprom14_conv2d1x130_vt_join_q[59:0];

    // i_arrayidx15_conv2d1x10_c_i4_01_x(CONSTANT,198)
    assign i_arrayidx15_conv2d1x10_c_i4_01_x_q = $unsigned(4'b0000);

    // i_arrayidx15_conv2d1x10_shift_join_x(BITJOIN,200)@3
    assign i_arrayidx15_conv2d1x10_shift_join_x_q = {i_arrayidx15_conv2d1x10_narrow_x_b, i_arrayidx15_conv2d1x10_c_i4_01_x_q};

    // valid_fanout_reg10(REG,252)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist19_sync_together147_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg11(REG,253)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist19_sync_together147_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_p1024v4f32_filter_weight_addr_053_replace_phi38_push26_conv2d1x132(BLACKBOX,131)@3
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    conv2d1x1_i_llvm_fpga_push_p1024v4f32_fi0000place_phi38_push26_0 thei_llvm_fpga_push_p1024v4f32_filter_weight_addr_053_replace_phi38_push26_conv2d1x132 (
        .in_data_in(i_llvm_fpga_pop_p1024v4f32_filter_weight_addr_053_replace_phi38_pop26_conv2d1x131_out_data_out),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_p1024v4f32_filter_weight_addr_053_replace_phi38_pop26_conv2d1x131_out_feedback_stall_out_26),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_p1024v4f32_filter_weight_addr_053_replace_phi38_push26_conv2d1x132_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_p1024v4f32_filter_weight_addr_053_replace_phi38_push26_conv2d1x132_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together147_aunroll_x_in_c0_eni18_5_tpl_2(DELAY,399)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together147_aunroll_x_in_c0_eni18_5_tpl_2_delay_0 <= '0;
            redist5_sync_together147_aunroll_x_in_c0_eni18_5_tpl_2_q <= '0;
        end
        else
        begin
            redist5_sync_together147_aunroll_x_in_c0_eni18_5_tpl_2_delay_0 <= $unsigned(in_c0_eni18_5_tpl);
            redist5_sync_together147_aunroll_x_in_c0_eni18_5_tpl_2_q <= redist5_sync_together147_aunroll_x_in_c0_eni18_5_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_p1024v4f32_filter_weight_addr_053_replace_phi38_pop26_conv2d1x131(BLACKBOX,117)@3
    // out out_feedback_stall_out_26@20000000
    conv2d1x1_i_llvm_fpga_pop_p1024v4f32_fil0000eplace_phi38_pop26_0 thei_llvm_fpga_pop_p1024v4f32_filter_weight_addr_053_replace_phi38_pop26_conv2d1x131 (
        .in_data_in(redist5_sync_together147_aunroll_x_in_c0_eni18_5_tpl_2_q),
        .in_dir(redist1_sync_together147_aunroll_x_in_c0_eni18_1_tpl_2_q),
        .in_feedback_in_26(i_llvm_fpga_push_p1024v4f32_filter_weight_addr_053_replace_phi38_push26_conv2d1x132_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_p1024v4f32_filter_weight_addr_053_replace_phi38_push26_conv2d1x132_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_p1024v4f32_filter_weight_addr_053_replace_phi38_pop26_conv2d1x131_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_p1024v4f32_filter_weight_addr_053_replace_phi38_pop26_conv2d1x131_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx15_conv2d1x10_add_x(ADD,197)@3
    assign i_arrayidx15_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_pop_p1024v4f32_filter_weight_addr_053_replace_phi38_pop26_conv2d1x131_out_data_out};
    assign i_arrayidx15_conv2d1x10_add_x_b = {1'b0, i_arrayidx15_conv2d1x10_shift_join_x_q};
    assign i_arrayidx15_conv2d1x10_add_x_o = $unsigned(i_arrayidx15_conv2d1x10_add_x_a) + $unsigned(i_arrayidx15_conv2d1x10_add_x_b);
    assign i_arrayidx15_conv2d1x10_add_x_q = i_arrayidx15_conv2d1x10_add_x_o[64:0];

    // i_arrayidx15_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,202)@3
    assign i_arrayidx15_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx15_conv2d1x10_add_x_q[63:0];

    // redist24_i_arrayidx15_conv2d1x10_dupName_0_trunc_sel_x_b_3_inputreg0(DELAY,496)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_arrayidx15_conv2d1x10_dupName_0_trunc_sel_x_b_3_inputreg0_q <= '0;
        end
        else
        begin
            redist24_i_arrayidx15_conv2d1x10_dupName_0_trunc_sel_x_b_3_inputreg0_q <= $unsigned(i_arrayidx15_conv2d1x10_dupName_0_trunc_sel_x_b);
        end
    end

    // redist24_i_arrayidx15_conv2d1x10_dupName_0_trunc_sel_x_b_3(DELAY,418)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_arrayidx15_conv2d1x10_dupName_0_trunc_sel_x_b_3_delay_0 <= '0;
            redist24_i_arrayidx15_conv2d1x10_dupName_0_trunc_sel_x_b_3_q <= '0;
        end
        else
        begin
            redist24_i_arrayidx15_conv2d1x10_dupName_0_trunc_sel_x_b_3_delay_0 <= $unsigned(redist24_i_arrayidx15_conv2d1x10_dupName_0_trunc_sel_x_b_3_inputreg0_q);
            redist24_i_arrayidx15_conv2d1x10_dupName_0_trunc_sel_x_b_3_q <= redist24_i_arrayidx15_conv2d1x10_dupName_0_trunc_sel_x_b_3_delay_0;
        end
    end

    // i_unnamed_conv2d1x117(LOGICAL,168)@6
    assign i_unnamed_conv2d1x117_q = redist37_i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out_5_q ^ VCC_q;

    // i_first_cleanup_xor_or_conv2d1x129(LOGICAL,87)@6
    assign i_first_cleanup_xor_or_conv2d1x129_q = i_unnamed_conv2d1x117_q | i_first_cleanup_xor_conv2d1x14_q;

    // i_mul10_conv2d1x122_bs2(BITSELECT,296)@2
    assign i_mul10_conv2d1x122_bs2_b = i_shl_conv2d1x119_vt_join_q[31:18];

    // i_mul10_conv2d1x122_bs7(BITSELECT,301)@2
    assign i_mul10_conv2d1x122_bs7_in = i_shl_conv2d1x119_vt_join_q[17:0];
    assign i_mul10_conv2d1x122_bs7_b = i_mul10_conv2d1x122_bs7_in[17:0];

    // i_mul10_conv2d1x122_ma3_cma(CHAINMULTADD,386)@2 + 3
    assign i_mul10_conv2d1x122_ma3_cma_reset = ~ (resetn);
    assign i_mul10_conv2d1x122_ma3_cma_ena0 = 1'b1;
    assign i_mul10_conv2d1x122_ma3_cma_ena1 = i_mul10_conv2d1x122_ma3_cma_ena0;
    assign i_mul10_conv2d1x122_ma3_cma_ena2 = i_mul10_conv2d1x122_ma3_cma_ena0;

    assign i_mul10_conv2d1x122_ma3_cma_a0 = i_mul10_conv2d1x122_bs1_merged_bit_select_b;
    assign i_mul10_conv2d1x122_ma3_cma_c0 = i_mul10_conv2d1x122_bs7_b;
    assign i_mul10_conv2d1x122_ma3_cma_a1 = i_mul10_conv2d1x122_bs2_b;
    assign i_mul10_conv2d1x122_ma3_cma_c1 = i_mul10_conv2d1x122_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul10_conv2d1x122_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul10_conv2d1x122_ma3_cma_ena2, i_mul10_conv2d1x122_ma3_cma_ena1, i_mul10_conv2d1x122_ma3_cma_ena0 }),
        .aclr({ i_mul10_conv2d1x122_ma3_cma_reset, i_mul10_conv2d1x122_ma3_cma_reset }),
        .ay(i_mul10_conv2d1x122_ma3_cma_a1),
        .by(i_mul10_conv2d1x122_ma3_cma_a0),
        .ax(i_mul10_conv2d1x122_ma3_cma_c1),
        .bx(i_mul10_conv2d1x122_ma3_cma_c0),
        .resulta(i_mul10_conv2d1x122_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul10_conv2d1x122_ma3_cma_delay ( .xin(i_mul10_conv2d1x122_ma3_cma_s0), .xout(i_mul10_conv2d1x122_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul10_conv2d1x122_ma3_cma_q = $unsigned(i_mul10_conv2d1x122_ma3_cma_qq[32:0]);

    // i_mul10_conv2d1x122_sums_align_1(BITSHIFT,306)@5
    assign i_mul10_conv2d1x122_sums_align_1_qint = { i_mul10_conv2d1x122_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul10_conv2d1x122_sums_align_1_q = i_mul10_conv2d1x122_sums_align_1_qint[50:0];

    // i_mul10_conv2d1x122_im0_cma(CHAINMULTADD,378)@2 + 3
    assign i_mul10_conv2d1x122_im0_cma_reset = ~ (resetn);
    assign i_mul10_conv2d1x122_im0_cma_ena0 = 1'b1;
    assign i_mul10_conv2d1x122_im0_cma_ena1 = i_mul10_conv2d1x122_im0_cma_ena0;
    assign i_mul10_conv2d1x122_im0_cma_ena2 = i_mul10_conv2d1x122_im0_cma_ena0;

    assign i_mul10_conv2d1x122_im0_cma_a0 = i_mul10_conv2d1x122_bs1_merged_bit_select_b;
    assign i_mul10_conv2d1x122_im0_cma_c0 = i_mul10_conv2d1x122_bs2_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul10_conv2d1x122_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul10_conv2d1x122_im0_cma_ena2, i_mul10_conv2d1x122_im0_cma_ena1, i_mul10_conv2d1x122_im0_cma_ena0 }),
        .aclr({ i_mul10_conv2d1x122_im0_cma_reset, i_mul10_conv2d1x122_im0_cma_reset }),
        .ay(i_mul10_conv2d1x122_im0_cma_a0),
        .ax(i_mul10_conv2d1x122_im0_cma_c0),
        .resulta(i_mul10_conv2d1x122_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul10_conv2d1x122_im0_cma_delay ( .xin(i_mul10_conv2d1x122_im0_cma_s0), .xout(i_mul10_conv2d1x122_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul10_conv2d1x122_im0_cma_q = $unsigned(i_mul10_conv2d1x122_im0_cma_qq[27:0]);

    // i_mul10_conv2d1x122_im8_cma(CHAINMULTADD,379)@2 + 3
    assign i_mul10_conv2d1x122_im8_cma_reset = ~ (resetn);
    assign i_mul10_conv2d1x122_im8_cma_ena0 = 1'b1;
    assign i_mul10_conv2d1x122_im8_cma_ena1 = i_mul10_conv2d1x122_im8_cma_ena0;
    assign i_mul10_conv2d1x122_im8_cma_ena2 = i_mul10_conv2d1x122_im8_cma_ena0;

    assign i_mul10_conv2d1x122_im8_cma_a0 = i_mul10_conv2d1x122_bs1_merged_bit_select_c;
    assign i_mul10_conv2d1x122_im8_cma_c0 = i_mul10_conv2d1x122_bs7_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul10_conv2d1x122_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul10_conv2d1x122_im8_cma_ena2, i_mul10_conv2d1x122_im8_cma_ena1, i_mul10_conv2d1x122_im8_cma_ena0 }),
        .aclr({ i_mul10_conv2d1x122_im8_cma_reset, i_mul10_conv2d1x122_im8_cma_reset }),
        .ay(i_mul10_conv2d1x122_im8_cma_a0),
        .ax(i_mul10_conv2d1x122_im8_cma_c0),
        .resulta(i_mul10_conv2d1x122_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul10_conv2d1x122_im8_cma_delay ( .xin(i_mul10_conv2d1x122_im8_cma_s0), .xout(i_mul10_conv2d1x122_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul10_conv2d1x122_im8_cma_q = $unsigned(i_mul10_conv2d1x122_im8_cma_qq[35:0]);

    // i_mul10_conv2d1x122_sums_join_0(BITJOIN,305)@5
    assign i_mul10_conv2d1x122_sums_join_0_q = {i_mul10_conv2d1x122_im0_cma_q, i_mul10_conv2d1x122_im8_cma_q};

    // i_mul10_conv2d1x122_sums_result_add_0_0(ADD,308)@5
    assign i_mul10_conv2d1x122_sums_result_add_0_0_a = {1'b0, i_mul10_conv2d1x122_sums_join_0_q};
    assign i_mul10_conv2d1x122_sums_result_add_0_0_b = {14'b00000000000000, i_mul10_conv2d1x122_sums_align_1_q};
    assign i_mul10_conv2d1x122_sums_result_add_0_0_o = $unsigned(i_mul10_conv2d1x122_sums_result_add_0_0_a) + $unsigned(i_mul10_conv2d1x122_sums_result_add_0_0_b);
    assign i_mul10_conv2d1x122_sums_result_add_0_0_q = i_mul10_conv2d1x122_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul10_conv2d1x122_sel_x(BITSELECT,183)@5
    assign bgTrunc_i_mul10_conv2d1x122_sel_x_in = i_mul10_conv2d1x122_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul10_conv2d1x122_sel_x_b = bgTrunc_i_mul10_conv2d1x122_sel_x_in[31:0];

    // i_mul10_conv2d1x122_vt_select_31(BITSELECT,152)@5
    assign i_mul10_conv2d1x122_vt_select_31_b = bgTrunc_i_mul10_conv2d1x122_sel_x_b[31:2];

    // redist28_i_mul10_conv2d1x122_vt_select_31_b_1(DELAY,422)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_mul10_conv2d1x122_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist28_i_mul10_conv2d1x122_vt_select_31_b_1_q <= $unsigned(i_mul10_conv2d1x122_vt_select_31_b);
        end
    end

    // i_mul10_conv2d1x122_vt_join(BITJOIN,151)@6
    assign i_mul10_conv2d1x122_vt_join_q = {redist28_i_mul10_conv2d1x122_vt_select_31_b_1_q, i_arrayidx132_conv2d1x128_vt_const_1_q};

    // i_add11_conv2d1x125(ADD,53)@6
    assign i_add11_conv2d1x125_a = {1'b0, i_mul10_conv2d1x122_vt_join_q};
    assign i_add11_conv2d1x125_b = {1'b0, redist34_i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_data_out_4_q};
    assign i_add11_conv2d1x125_o = $unsigned(i_add11_conv2d1x125_a) + $unsigned(i_add11_conv2d1x125_b);
    assign i_add11_conv2d1x125_q = i_add11_conv2d1x125_o[32:0];

    // bgTrunc_i_add11_conv2d1x125_sel_x(BITSELECT,177)@6
    assign bgTrunc_i_add11_conv2d1x125_sel_x_b = i_add11_conv2d1x125_q[31:0];

    // i_idxprom12_conv2d1x126_sel_x(BITSELECT,226)@6
    assign i_idxprom12_conv2d1x126_sel_x_b = $unsigned({{32{bgTrunc_i_add11_conv2d1x125_sel_x_b[31]}}, bgTrunc_i_add11_conv2d1x125_sel_x_b[31:0]});

    // i_arrayidx132_conv2d1x10_narrow_x(BITSELECT,193)@6
    assign i_arrayidx132_conv2d1x10_narrow_x_b = i_idxprom12_conv2d1x126_sel_x_b[61:0];

    // i_arrayidx132_conv2d1x10_shift_join_x(BITJOIN,194)@6
    assign i_arrayidx132_conv2d1x10_shift_join_x_q = {i_arrayidx132_conv2d1x10_narrow_x_b, i_arrayidx132_conv2d1x128_vt_const_1_q};

    // valid_fanout_reg9(REG,251)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist22_sync_together147_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x127(BLACKBOX,144)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0001put_im_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x127 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x127_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x127_vt_select_63(BITSELECT,147)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x127_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x127_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x127_vt_join(BITJOIN,146)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x127_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x127_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x138_vt_const_9_q};

    // i_arrayidx132_conv2d1x10_add_x(ADD,191)@6
    assign i_arrayidx132_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x127_vt_join_q};
    assign i_arrayidx132_conv2d1x10_add_x_b = {1'b0, i_arrayidx132_conv2d1x10_shift_join_x_q};
    assign i_arrayidx132_conv2d1x10_add_x_o = $unsigned(i_arrayidx132_conv2d1x10_add_x_a) + $unsigned(i_arrayidx132_conv2d1x10_add_x_b);
    assign i_arrayidx132_conv2d1x10_add_x_q = i_arrayidx132_conv2d1x10_add_x_o[64:0];

    // i_arrayidx132_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,196)@6
    assign i_arrayidx132_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx132_conv2d1x10_add_x_q[63:0];

    // i_arrayidx132_conv2d1x128_vt_select_63(BITSELECT,71)@6
    assign i_arrayidx132_conv2d1x128_vt_select_63_b = i_arrayidx132_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx132_conv2d1x128_vt_join(BITJOIN,70)@6
    assign i_arrayidx132_conv2d1x128_vt_join_q = {i_arrayidx132_conv2d1x128_vt_select_63_b, i_arrayidx132_conv2d1x128_vt_const_1_q};

    // valid_fanout_reg7(REG,249)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg8(REG,250)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist19_sync_together147_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_ij_049_pop1247_push33_conv2d1x124(BLACKBOX,126)@3
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    conv2d1x1_i_llvm_fpga_push_i32_ij_049_pop1247_push33_0 thei_llvm_fpga_push_i32_ij_049_pop1247_push33_conv2d1x124 (
        .in_data_in(redist33_i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_data_out_1_q),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_feedback_stall_out_33),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i32_ij_049_pop1247_push33_conv2d1x124_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i32_ij_049_pop1247_push33_conv2d1x124_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together147_aunroll_x_in_c0_eni18_4_tpl_1(DELAY,398)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together147_aunroll_x_in_c0_eni18_4_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together147_aunroll_x_in_c0_eni18_4_tpl_1_q <= $unsigned(in_c0_eni18_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123(BLACKBOX,112)@2
    // out out_feedback_stall_out_33@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_0 thei_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123 (
        .in_data_in(redist4_sync_together147_aunroll_x_in_c0_eni18_4_tpl_1_q),
        .in_dir(redist0_sync_together147_aunroll_x_in_c0_eni18_1_tpl_1_q),
        .in_feedback_in_33(i_llvm_fpga_push_i32_ij_049_pop1247_push33_conv2d1x124_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i32_ij_049_pop1247_push33_conv2d1x124_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist33_i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_data_out_1(DELAY,427)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_data_out_1_q <= '0;
        end
        else
        begin
            redist33_i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_data_out);
        end
    end

    // redist34_i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_data_out_4_inputreg0(DELAY,498)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_data_out_4_inputreg0_q <= '0;
        end
        else
        begin
            redist34_i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_data_out_4_inputreg0_q <= $unsigned(redist33_i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_data_out_1_q);
        end
    end

    // redist34_i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_data_out_4(DELAY,428)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_data_out_4_delay_0 <= '0;
            redist34_i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_data_out_4_q <= '0;
        end
        else
        begin
            redist34_i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_data_out_4_delay_0 <= $unsigned(redist34_i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_data_out_4_inputreg0_q);
            redist34_i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_data_out_4_q <= redist34_i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_data_out_4_delay_0;
        end
    end

    // sync_out_aunroll_x(GPOUT,240)@6
    assign out_c0_exi24_0_tpl = GND_q;
    assign out_c0_exi24_1_tpl = redist41_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_3_q;
    assign out_c0_exi24_2_tpl = redist37_i_llvm_fpga_pop_i1_pop28_conv2d1x115_out_data_out_5_q;
    assign out_c0_exi24_3_tpl = redist34_i_llvm_fpga_pop_i32_ij_049_pop1247_pop33_conv2d1x123_out_data_out_4_q;
    assign out_c0_exi24_4_tpl = i_arrayidx132_conv2d1x128_vt_join_q;
    assign out_c0_exi24_5_tpl = i_first_cleanup_xor_or_conv2d1x129_q;
    assign out_c0_exi24_6_tpl = redist24_i_arrayidx15_conv2d1x10_dupName_0_trunc_sel_x_b_3_q;
    assign out_c0_exi24_7_tpl = i_arrayidx233_conv2d1x139_vt_join_q;
    assign out_c0_exi24_8_tpl = i_arrayidx334_conv2d1x145_vt_join_q;
    assign out_c0_exi24_9_tpl = i_arrayidx435_conv2d1x151_vt_join_q;
    assign out_c0_exi24_10_tpl = i_masked_conv2d1x164_q;
    assign out_c0_exi24_11_tpl = redist30_i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi36_pop25_conv2d1x165_out_data_out_4_q;
    assign out_c0_exi24_12_tpl = redist35_i_llvm_fpga_pop_i1_pop29_conv2d1x167_out_data_out_3_q;
    assign out_c0_exi24_13_tpl = redist38_i_llvm_fpga_pop_i1_notcmp3045_pop31_conv2d1x169_out_data_out_3_q;
    assign out_c0_exi24_14_tpl = redist39_i_llvm_fpga_pop_i1_notcmp2546_pop32_conv2d1x171_out_data_out_3_q;
    assign out_c0_exi24_15_tpl = redist2_sync_together147_aunroll_x_in_c0_eni18_1_tpl_5_q;
    assign out_c0_exi24_16_tpl = redist10_sync_together147_aunroll_x_in_c0_eni18_10_tpl_5_mem_q;
    assign out_c0_exi24_17_tpl = redist11_sync_together147_aunroll_x_in_c0_eni18_11_tpl_5_mem_q;
    assign out_c0_exi24_18_tpl = redist12_sync_together147_aunroll_x_in_c0_eni18_12_tpl_5_mem_q;
    assign out_c0_exi24_19_tpl = redist13_sync_together147_aunroll_x_in_c0_eni18_13_tpl_5_q;
    assign out_c0_exi24_20_tpl = redist14_sync_together147_aunroll_x_in_c0_eni18_14_tpl_5_q;
    assign out_c0_exi24_21_tpl = redist15_sync_together147_aunroll_x_in_c0_eni18_15_tpl_5_mem_q;
    assign out_c0_exi24_22_tpl = redist16_sync_together147_aunroll_x_in_c0_eni18_16_tpl_5_mem_q;
    assign out_c0_exi24_23_tpl = redist17_sync_together147_aunroll_x_in_c0_eni18_17_tpl_5_q;
    assign out_c0_exi24_24_tpl = redist18_sync_together147_aunroll_x_in_c0_eni18_18_tpl_5_mem_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d1x18 = GND_q;

endmodule
