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

// SystemVerilog created from conv2d1x1_i_sfc_logic_s_c0_in_for_body140000nter39465_conv2d1x10
// SystemVerilog created on Wed May 24 11:22:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_logic_s_c0_in_for_body140000nter39465_conv2d1x10 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_filter_weight,
    input wire [63:0] in_input_im,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    output wire [0:0] out_c0_exi43_0_tpl,
    output wire [0:0] out_c0_exi43_1_tpl,
    output wire [0:0] out_c0_exi43_2_tpl,
    output wire [0:0] out_c0_exi43_3_tpl,
    output wire [0:0] out_c0_exi43_4_tpl,
    output wire [31:0] out_c0_exi43_5_tpl,
    output wire [63:0] out_c0_exi43_6_tpl,
    output wire [0:0] out_c0_exi43_7_tpl,
    output wire [63:0] out_c0_exi43_8_tpl,
    output wire [63:0] out_c0_exi43_9_tpl,
    output wire [63:0] out_c0_exi43_10_tpl,
    output wire [63:0] out_c0_exi43_11_tpl,
    output wire [0:0] out_c0_exi43_12_tpl,
    output wire [31:0] out_c0_exi43_13_tpl,
    output wire [31:0] out_c0_exi43_14_tpl,
    output wire [0:0] out_c0_exi43_15_tpl,
    output wire [0:0] out_c0_exi43_16_tpl,
    output wire [63:0] out_c0_exi43_17_tpl,
    output wire [0:0] out_c0_exi43_18_tpl,
    output wire [31:0] out_c0_exi43_19_tpl,
    output wire [0:0] out_c0_exi43_20_tpl,
    output wire [0:0] out_c0_exi43_21_tpl,
    output wire [0:0] out_c0_exi43_22_tpl,
    output wire [32:0] out_c0_exi43_23_tpl,
    output wire [31:0] out_c0_exi43_24_tpl,
    output wire [31:0] out_c0_exi43_25_tpl,
    output wire [31:0] out_c0_exi43_26_tpl,
    output wire [0:0] out_c0_exi43_27_tpl,
    output wire [31:0] out_c0_exi43_28_tpl,
    output wire [31:0] out_c0_exi43_29_tpl,
    output wire [31:0] out_c0_exi43_30_tpl,
    output wire [31:0] out_c0_exi43_31_tpl,
    output wire [31:0] out_c0_exi43_32_tpl,
    output wire [31:0] out_c0_exi43_33_tpl,
    output wire [31:0] out_c0_exi43_34_tpl,
    output wire [31:0] out_c0_exi43_35_tpl,
    output wire [31:0] out_c0_exi43_36_tpl,
    output wire [31:0] out_c0_exi43_37_tpl,
    output wire [31:0] out_c0_exi43_38_tpl,
    output wire [31:0] out_c0_exi43_39_tpl,
    output wire [31:0] out_c0_exi43_40_tpl,
    output wire [31:0] out_c0_exi43_41_tpl,
    output wire [31:0] out_c0_exi43_42_tpl,
    output wire [31:0] out_c0_exi43_43_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d1x16,
    input wire [0:0] in_c0_eni37_0_tpl,
    input wire [0:0] in_c0_eni37_1_tpl,
    input wire [0:0] in_c0_eni37_2_tpl,
    input wire [0:0] in_c0_eni37_3_tpl,
    input wire [31:0] in_c0_eni37_4_tpl,
    input wire [31:0] in_c0_eni37_5_tpl,
    input wire [31:0] in_c0_eni37_6_tpl,
    input wire [0:0] in_c0_eni37_7_tpl,
    input wire [31:0] in_c0_eni37_8_tpl,
    input wire [31:0] in_c0_eni37_9_tpl,
    input wire [0:0] in_c0_eni37_10_tpl,
    input wire [0:0] in_c0_eni37_11_tpl,
    input wire [63:0] in_c0_eni37_12_tpl,
    input wire [31:0] in_c0_eni37_13_tpl,
    input wire [0:0] in_c0_eni37_14_tpl,
    input wire [0:0] in_c0_eni37_15_tpl,
    input wire [0:0] in_c0_eni37_16_tpl,
    input wire [32:0] in_c0_eni37_17_tpl,
    input wire [31:0] in_c0_eni37_18_tpl,
    input wire [31:0] in_c0_eni37_19_tpl,
    input wire [31:0] in_c0_eni37_20_tpl,
    input wire [0:0] in_c0_eni37_21_tpl,
    input wire [31:0] in_c0_eni37_22_tpl,
    input wire [31:0] in_c0_eni37_23_tpl,
    input wire [31:0] in_c0_eni37_24_tpl,
    input wire [31:0] in_c0_eni37_25_tpl,
    input wire [31:0] in_c0_eni37_26_tpl,
    input wire [31:0] in_c0_eni37_27_tpl,
    input wire [31:0] in_c0_eni37_28_tpl,
    input wire [31:0] in_c0_eni37_29_tpl,
    input wire [31:0] in_c0_eni37_30_tpl,
    input wire [31:0] in_c0_eni37_31_tpl,
    input wire [31:0] in_c0_eni37_32_tpl,
    input wire [31:0] in_c0_eni37_33_tpl,
    input wire [31:0] in_c0_eni37_34_tpl,
    input wire [31:0] in_c0_eni37_35_tpl,
    input wire [31:0] in_c0_eni37_36_tpl,
    input wire [31:0] in_c0_eni37_37_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_1121_q;
    wire [31:0] c_i32_0124_q;
    wire [31:0] c_i32_1126_q;
    wire [32:0] c_i33_1129_q;
    wire [32:0] c_i33_undef123_q;
    wire [32:0] i_add18_conv2d1x127_a;
    wire [32:0] i_add18_conv2d1x127_b;
    logic [32:0] i_add18_conv2d1x127_o;
    wire [32:0] i_add18_conv2d1x127_q;
    wire [32:0] i_add22_conv2d1x134_a;
    wire [32:0] i_add22_conv2d1x134_b;
    logic [32:0] i_add22_conv2d1x134_o;
    wire [32:0] i_add22_conv2d1x134_q;
    wire [31:0] i_add29_conv2d1x138_vt_join_q;
    wire [29:0] i_add29_conv2d1x138_vt_select_31_b;
    wire [32:0] i_add32_conv2d1x140_a;
    wire [32:0] i_add32_conv2d1x140_b;
    logic [32:0] i_add32_conv2d1x140_o;
    wire [32:0] i_add32_conv2d1x140_q;
    wire [1:0] i_add43_conv2d1x144_vt_const_1_q;
    wire [31:0] i_add43_conv2d1x144_vt_join_q;
    wire [29:0] i_add43_conv2d1x144_vt_select_31_b;
    wire [32:0] i_add46_conv2d1x146_a;
    wire [32:0] i_add46_conv2d1x146_b;
    logic [32:0] i_add46_conv2d1x146_o;
    wire [32:0] i_add46_conv2d1x146_q;
    wire [1:0] i_add57_conv2d1x150_vt_const_1_q;
    wire [31:0] i_add57_conv2d1x150_vt_join_q;
    wire [29:0] i_add57_conv2d1x150_vt_select_31_b;
    wire [32:0] i_add60_conv2d1x152_a;
    wire [32:0] i_add60_conv2d1x152_b;
    logic [32:0] i_add60_conv2d1x152_o;
    wire [32:0] i_add60_conv2d1x152_q;
    wire [1:0] i_arrayidx204_conv2d1x130_vt_const_1_q;
    wire [63:0] i_arrayidx204_conv2d1x130_vt_join_q;
    wire [61:0] i_arrayidx204_conv2d1x130_vt_select_63_b;
    wire [3:0] i_arrayidx245_conv2d1x137_vt_const_3_q;
    wire [63:0] i_arrayidx245_conv2d1x137_vt_join_q;
    wire [59:0] i_arrayidx245_conv2d1x137_vt_select_63_b;
    wire [63:0] i_arrayidx346_conv2d1x143_vt_join_q;
    wire [61:0] i_arrayidx346_conv2d1x143_vt_select_63_b;
    wire [63:0] i_arrayidx487_conv2d1x149_vt_join_q;
    wire [61:0] i_arrayidx487_conv2d1x149_vt_select_63_b;
    wire [63:0] i_arrayidx628_conv2d1x155_vt_join_q;
    wire [61:0] i_arrayidx628_conv2d1x155_vt_select_63_b;
    wire [1:0] i_cleanups_shl_conv2d1x15_vt_join_q;
    wire [0:0] i_cleanups_shl_conv2d1x15_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_conv2d1x14_q;
    wire [0:0] i_first_cleanup_xor_or_conv2d1x131_q;
    wire [0:0] i_fpga_indvars_iv26_replace_phi_conv2d1x114_s;
    reg [32:0] i_fpga_indvars_iv26_replace_phi_conv2d1x114_q;
    wire [33:0] i_fpga_indvars_iv_next27_conv2d1x160_a;
    wire [33:0] i_fpga_indvars_iv_next27_conv2d1x160_b;
    logic [33:0] i_fpga_indvars_iv_next27_conv2d1x160_o;
    wire [33:0] i_fpga_indvars_iv_next27_conv2d1x160_q;
    wire [32:0] i_inc82_conv2d1x156_a;
    wire [32:0] i_inc82_conv2d1x156_b;
    logic [32:0] i_inc82_conv2d1x156_o;
    wire [32:0] i_inc82_conv2d1x156_q;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x121_conv2d1x112_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_feedback_stall_out_61;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3865_pop65_conv2d1x177_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3865_pop65_conv2d1x177_out_feedback_stall_out_65;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4362_pop64_conv2d1x175_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4362_pop64_conv2d1x175_out_feedback_stall_out_64;
    wire [0:0] i_llvm_fpga_pop_i1_pop58_conv2d1x118_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop58_conv2d1x118_out_feedback_stall_out_58;
    wire [0:0] i_llvm_fpga_pop_i1_pop59_conv2d1x169_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop59_conv2d1x169_out_feedback_stall_out_59;
    wire [0:0] i_llvm_fpga_pop_i1_pop60_conv2d1x115_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop60_conv2d1x115_out_feedback_stall_out_60;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop56_conv2d1x12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop56_conv2d1x12_out_feedback_stall_out_56;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop55_conv2d1x17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop55_conv2d1x17_out_feedback_stall_out_55;
    wire [31:0] i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_feedback_stall_out_66;
    wire [31:0] i_llvm_fpga_pop_i32_k_064_pop54_conv2d1x120_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_064_pop54_conv2d1x120_out_feedback_stall_out_54;
    wire [31:0] i_llvm_fpga_pop_i32_mul10059_pop63_conv2d1x173_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul10059_pop63_conv2d1x173_out_feedback_stall_out_63;
    wire [31:0] i_llvm_fpga_pop_i32_mul2156_pop62_conv2d1x132_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul2156_pop62_conv2d1x132_out_feedback_stall_out_62;
    wire [31:0] i_llvm_fpga_pop_i32_mul50_pop57_conv2d1x122_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul50_pop57_conv2d1x122_out_feedback_stall_out_57;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv26_pop37_conv2d1x113_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv26_pop37_conv2d1x113_out_feedback_stall_out_37;
    wire [63:0] i_llvm_fpga_pop_i64_ap_pop_ext784_pop83_conv2d1x179_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_ap_pop_ext784_pop83_conv2d1x179_out_feedback_stall_out_83;
    wire [31:0] i_llvm_fpga_push_f32_lm53_push61_conv2d1x172_out_feedback_out_61;
    wire [0:0] i_llvm_fpga_push_f32_lm53_push61_conv2d1x172_out_feedback_valid_out_61;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_conv2d1x111_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_conv2d1x111_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3865_push65_conv2d1x178_out_feedback_out_65;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3865_push65_conv2d1x178_out_feedback_valid_out_65;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4362_push64_conv2d1x176_out_feedback_out_64;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4362_push64_conv2d1x176_out_feedback_valid_out_64;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_conv2d1x164_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_conv2d1x164_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_push58_conv2d1x119_out_feedback_out_58;
    wire [0:0] i_llvm_fpga_push_i1_push58_conv2d1x119_out_feedback_valid_out_58;
    wire [0:0] i_llvm_fpga_push_i1_push59_conv2d1x170_out_feedback_out_59;
    wire [0:0] i_llvm_fpga_push_i1_push59_conv2d1x170_out_feedback_valid_out_59;
    wire [0:0] i_llvm_fpga_push_i1_push60_conv2d1x116_out_feedback_out_60;
    wire [0:0] i_llvm_fpga_push_i1_push60_conv2d1x116_out_feedback_valid_out_60;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push56_conv2d1x167_out_feedback_out_56;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push56_conv2d1x167_out_feedback_valid_out_56;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push55_conv2d1x19_out_feedback_out_55;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push55_conv2d1x19_out_feedback_valid_out_55;
    wire [31:0] i_llvm_fpga_push_i32_ij_068_pop1367_push66_conv2d1x126_out_feedback_out_66;
    wire [0:0] i_llvm_fpga_push_i32_ij_068_pop1367_push66_conv2d1x126_out_feedback_valid_out_66;
    wire [31:0] i_llvm_fpga_push_i32_k_064_push54_conv2d1x157_out_feedback_out_54;
    wire [0:0] i_llvm_fpga_push_i32_k_064_push54_conv2d1x157_out_feedback_valid_out_54;
    wire [31:0] i_llvm_fpga_push_i32_mul10059_push63_conv2d1x174_out_feedback_out_63;
    wire [0:0] i_llvm_fpga_push_i32_mul10059_push63_conv2d1x174_out_feedback_valid_out_63;
    wire [31:0] i_llvm_fpga_push_i32_mul2156_push62_conv2d1x133_out_feedback_out_62;
    wire [0:0] i_llvm_fpga_push_i32_mul2156_push62_conv2d1x133_out_feedback_valid_out_62;
    wire [31:0] i_llvm_fpga_push_i32_mul50_push57_conv2d1x123_out_feedback_out_57;
    wire [0:0] i_llvm_fpga_push_i32_mul50_push57_conv2d1x123_out_feedback_valid_out_57;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv26_push37_conv2d1x161_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv26_push37_conv2d1x161_out_feedback_valid_out_37;
    wire [63:0] i_llvm_fpga_push_i64_ap_pop_ext784_push83_conv2d1x180_out_feedback_out_83;
    wire [0:0] i_llvm_fpga_push_i64_ap_pop_ext784_push83_conv2d1x180_out_feedback_valid_out_83;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x148_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x148_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x148_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x154_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x154_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x154_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x129_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x129_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x129_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x136_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x136_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x136_vt_select_63_b;
    wire [0:0] i_masked_conv2d1x168_qi;
    reg [0:0] i_masked_conv2d1x168_q;
    wire [31:0] i_mul17_conv2d1x124_vt_join_q;
    wire [29:0] i_mul17_conv2d1x124_vt_select_31_b;
    wire [31:0] i_mul45_conv2d1x145_vt_join_q;
    wire [30:0] i_mul45_conv2d1x145_vt_select_31_b;
    wire [0:0] i_next_cleanups_conv2d1x166_s;
    reg [1:0] i_next_cleanups_conv2d1x166_q;
    wire [1:0] i_next_initerations_conv2d1x18_vt_join_q;
    wire [0:0] i_next_initerations_conv2d1x18_vt_select_0_b;
    wire [0:0] i_notcmp_conv2d1x163_q;
    wire [0:0] i_or_conv2d1x165_q;
    wire [31:0] i_shl_conv2d1x121_vt_join_q;
    wire [29:0] i_shl_conv2d1x121_vt_select_31_b;
    wire [0:0] i_unnamed_conv2d1x117_q;
    wire [0:0] i_unnamed_conv2d1x162_q;
    wire [31:0] bgTrunc_i_add18_conv2d1x127_sel_x_b;
    wire [31:0] bgTrunc_i_add22_conv2d1x134_sel_x_b;
    wire [31:0] bgTrunc_i_add32_conv2d1x140_sel_x_b;
    wire [31:0] bgTrunc_i_add46_conv2d1x146_sel_x_b;
    wire [31:0] bgTrunc_i_add60_conv2d1x152_sel_x_b;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next27_conv2d1x160_sel_x_b;
    wire [31:0] bgTrunc_i_inc82_conv2d1x156_sel_x_b;
    wire [63:0] bgTrunc_i_mul17_conv2d1x124_sel_x_in;
    wire [31:0] bgTrunc_i_mul17_conv2d1x124_sel_x_b;
    wire [63:0] bgTrunc_i_mul31_conv2d1x139_sel_x_in;
    wire [31:0] bgTrunc_i_mul31_conv2d1x139_sel_x_b;
    wire [63:0] bgTrunc_i_mul45_conv2d1x145_sel_x_in;
    wire [31:0] bgTrunc_i_mul45_conv2d1x145_sel_x_b;
    wire [63:0] bgTrunc_i_mul59_conv2d1x151_sel_x_in;
    wire [31:0] bgTrunc_i_mul59_conv2d1x151_sel_x_b;
    wire [64:0] i_arrayidx204_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx204_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx204_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx204_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx204_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx204_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx204_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx245_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx245_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx245_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx245_conv2d1x10_add_x_q;
    wire [59:0] i_arrayidx245_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx245_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx245_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx346_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx346_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx346_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx346_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx346_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx346_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx346_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx487_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx487_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx487_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx487_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx487_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx487_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx487_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx628_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx628_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx628_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx628_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx628_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx628_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx628_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_conv2d1x13_sel_x_b;
    wire [63:0] i_idxprom19_conv2d1x128_sel_x_b;
    wire [63:0] i_idxprom23_conv2d1x135_sel_x_b;
    wire [63:0] i_idxprom33_conv2d1x141_sel_x_b;
    wire [63:0] i_idxprom47_conv2d1x147_sel_x_b;
    wire [63:0] i_idxprom61_conv2d1x153_sel_x_b;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg24_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg25_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg26_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg27_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg28_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg29_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg30_q;
    wire [29:0] i_add29_conv2d1x138_BitSelect_for_a_b;
    wire [31:0] i_add29_conv2d1x138_join_q;
    wire [31:0] i_add43_conv2d1x144_join_q;
    wire [31:0] i_add57_conv2d1x150_join_q;
    wire [0:0] i_exitcond28_conv2d1x158_cmp_nsign_q;
    wire [13:0] i_mul17_conv2d1x124_bs2_b;
    wire [17:0] i_mul17_conv2d1x124_bs7_in;
    wire [17:0] i_mul17_conv2d1x124_bs7_b;
    wire [63:0] i_mul17_conv2d1x124_sums_join_0_q;
    wire [50:0] i_mul17_conv2d1x124_sums_align_1_q;
    wire [50:0] i_mul17_conv2d1x124_sums_align_1_qint;
    wire [64:0] i_mul17_conv2d1x124_sums_result_add_0_0_a;
    wire [64:0] i_mul17_conv2d1x124_sums_result_add_0_0_b;
    logic [64:0] i_mul17_conv2d1x124_sums_result_add_0_0_o;
    wire [64:0] i_mul17_conv2d1x124_sums_result_add_0_0_q;
    wire [63:0] i_mul31_conv2d1x139_sums_join_0_q;
    wire [50:0] i_mul31_conv2d1x139_sums_align_1_q;
    wire [50:0] i_mul31_conv2d1x139_sums_align_1_qint;
    wire [64:0] i_mul31_conv2d1x139_sums_result_add_0_0_a;
    wire [64:0] i_mul31_conv2d1x139_sums_result_add_0_0_b;
    logic [64:0] i_mul31_conv2d1x139_sums_result_add_0_0_o;
    wire [64:0] i_mul31_conv2d1x139_sums_result_add_0_0_q;
    wire [63:0] i_mul45_conv2d1x145_sums_join_0_q;
    wire [50:0] i_mul45_conv2d1x145_sums_align_1_q;
    wire [50:0] i_mul45_conv2d1x145_sums_align_1_qint;
    wire [64:0] i_mul45_conv2d1x145_sums_result_add_0_0_a;
    wire [64:0] i_mul45_conv2d1x145_sums_result_add_0_0_b;
    logic [64:0] i_mul45_conv2d1x145_sums_result_add_0_0_o;
    wire [64:0] i_mul45_conv2d1x145_sums_result_add_0_0_q;
    wire [63:0] i_mul59_conv2d1x151_sums_join_0_q;
    wire [50:0] i_mul59_conv2d1x151_sums_align_1_q;
    wire [50:0] i_mul59_conv2d1x151_sums_align_1_qint;
    wire [64:0] i_mul59_conv2d1x151_sums_result_add_0_0_a;
    wire [64:0] i_mul59_conv2d1x151_sums_result_add_0_0_b;
    logic [64:0] i_mul59_conv2d1x151_sums_result_add_0_0_o;
    wire [64:0] i_mul59_conv2d1x151_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid389_i_cleanups_shl_conv2d1x10_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid389_i_cleanups_shl_conv2d1x10_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid390_i_cleanups_shl_conv2d1x10_shift_x_q;
    wire [0:0] leftShiftStage0_uid392_i_cleanups_shl_conv2d1x10_shift_x_s;
    reg [1:0] leftShiftStage0_uid392_i_cleanups_shl_conv2d1x10_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid396_i_next_initerations_conv2d1x10_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid398_i_next_initerations_conv2d1x10_shift_x_q;
    wire [0:0] rightShiftStage0_uid400_i_next_initerations_conv2d1x10_shift_x_s;
    reg [1:0] rightShiftStage0_uid400_i_next_initerations_conv2d1x10_shift_x_q;
    wire [29:0] leftShiftStage0Idx1Rng2_uid405_i_shl_conv2d1x10_shift_x_in;
    wire [29:0] leftShiftStage0Idx1Rng2_uid405_i_shl_conv2d1x10_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid406_i_shl_conv2d1x10_shift_x_q;
    wire [0:0] leftShiftStage0_uid408_i_shl_conv2d1x10_shift_x_s;
    reg [31:0] leftShiftStage0_uid408_i_shl_conv2d1x10_shift_x_q;
    wire i_mul17_conv2d1x124_im0_cma_reset;
    wire [13:0] i_mul17_conv2d1x124_im0_cma_a0;
    wire [13:0] i_mul17_conv2d1x124_im0_cma_c0;
    wire [27:0] i_mul17_conv2d1x124_im0_cma_s0;
    wire [27:0] i_mul17_conv2d1x124_im0_cma_qq;
    wire [27:0] i_mul17_conv2d1x124_im0_cma_q;
    wire i_mul17_conv2d1x124_im0_cma_ena0;
    wire i_mul17_conv2d1x124_im0_cma_ena1;
    wire i_mul17_conv2d1x124_im0_cma_ena2;
    wire i_mul17_conv2d1x124_im8_cma_reset;
    wire [17:0] i_mul17_conv2d1x124_im8_cma_a0;
    wire [17:0] i_mul17_conv2d1x124_im8_cma_c0;
    wire [35:0] i_mul17_conv2d1x124_im8_cma_s0;
    wire [35:0] i_mul17_conv2d1x124_im8_cma_qq;
    wire [35:0] i_mul17_conv2d1x124_im8_cma_q;
    wire i_mul17_conv2d1x124_im8_cma_ena0;
    wire i_mul17_conv2d1x124_im8_cma_ena1;
    wire i_mul17_conv2d1x124_im8_cma_ena2;
    wire i_mul31_conv2d1x139_im0_cma_reset;
    wire [13:0] i_mul31_conv2d1x139_im0_cma_a0;
    wire [13:0] i_mul31_conv2d1x139_im0_cma_c0;
    wire [27:0] i_mul31_conv2d1x139_im0_cma_s0;
    wire [27:0] i_mul31_conv2d1x139_im0_cma_qq;
    wire [27:0] i_mul31_conv2d1x139_im0_cma_q;
    wire i_mul31_conv2d1x139_im0_cma_ena0;
    wire i_mul31_conv2d1x139_im0_cma_ena1;
    wire i_mul31_conv2d1x139_im0_cma_ena2;
    wire i_mul31_conv2d1x139_im8_cma_reset;
    wire [17:0] i_mul31_conv2d1x139_im8_cma_a0;
    wire [17:0] i_mul31_conv2d1x139_im8_cma_c0;
    wire [35:0] i_mul31_conv2d1x139_im8_cma_s0;
    wire [35:0] i_mul31_conv2d1x139_im8_cma_qq;
    wire [35:0] i_mul31_conv2d1x139_im8_cma_q;
    wire i_mul31_conv2d1x139_im8_cma_ena0;
    wire i_mul31_conv2d1x139_im8_cma_ena1;
    wire i_mul31_conv2d1x139_im8_cma_ena2;
    wire i_mul45_conv2d1x145_im0_cma_reset;
    wire [13:0] i_mul45_conv2d1x145_im0_cma_a0;
    wire [13:0] i_mul45_conv2d1x145_im0_cma_c0;
    wire [27:0] i_mul45_conv2d1x145_im0_cma_s0;
    wire [27:0] i_mul45_conv2d1x145_im0_cma_qq;
    wire [27:0] i_mul45_conv2d1x145_im0_cma_q;
    wire i_mul45_conv2d1x145_im0_cma_ena0;
    wire i_mul45_conv2d1x145_im0_cma_ena1;
    wire i_mul45_conv2d1x145_im0_cma_ena2;
    wire i_mul45_conv2d1x145_im8_cma_reset;
    wire [17:0] i_mul45_conv2d1x145_im8_cma_a0;
    wire [17:0] i_mul45_conv2d1x145_im8_cma_c0;
    wire [35:0] i_mul45_conv2d1x145_im8_cma_s0;
    wire [35:0] i_mul45_conv2d1x145_im8_cma_qq;
    wire [35:0] i_mul45_conv2d1x145_im8_cma_q;
    wire i_mul45_conv2d1x145_im8_cma_ena0;
    wire i_mul45_conv2d1x145_im8_cma_ena1;
    wire i_mul45_conv2d1x145_im8_cma_ena2;
    wire i_mul59_conv2d1x151_im0_cma_reset;
    wire [13:0] i_mul59_conv2d1x151_im0_cma_a0;
    wire [13:0] i_mul59_conv2d1x151_im0_cma_c0;
    wire [27:0] i_mul59_conv2d1x151_im0_cma_s0;
    wire [27:0] i_mul59_conv2d1x151_im0_cma_qq;
    wire [27:0] i_mul59_conv2d1x151_im0_cma_q;
    wire i_mul59_conv2d1x151_im0_cma_ena0;
    wire i_mul59_conv2d1x151_im0_cma_ena1;
    wire i_mul59_conv2d1x151_im0_cma_ena2;
    wire i_mul59_conv2d1x151_im8_cma_reset;
    wire [17:0] i_mul59_conv2d1x151_im8_cma_a0;
    wire [17:0] i_mul59_conv2d1x151_im8_cma_c0;
    wire [35:0] i_mul59_conv2d1x151_im8_cma_s0;
    wire [35:0] i_mul59_conv2d1x151_im8_cma_qq;
    wire [35:0] i_mul59_conv2d1x151_im8_cma_q;
    wire i_mul59_conv2d1x151_im8_cma_ena0;
    wire i_mul59_conv2d1x151_im8_cma_ena1;
    wire i_mul59_conv2d1x151_im8_cma_ena2;
    wire i_mul17_conv2d1x124_ma3_cma_reset;
    wire [13:0] i_mul17_conv2d1x124_ma3_cma_a0;
    wire [17:0] i_mul17_conv2d1x124_ma3_cma_c0;
    wire [13:0] i_mul17_conv2d1x124_ma3_cma_a1;
    wire [17:0] i_mul17_conv2d1x124_ma3_cma_c1;
    wire [32:0] i_mul17_conv2d1x124_ma3_cma_s0;
    wire [32:0] i_mul17_conv2d1x124_ma3_cma_qq;
    wire [32:0] i_mul17_conv2d1x124_ma3_cma_q;
    wire i_mul17_conv2d1x124_ma3_cma_ena0;
    wire i_mul17_conv2d1x124_ma3_cma_ena1;
    wire i_mul17_conv2d1x124_ma3_cma_ena2;
    wire i_mul31_conv2d1x139_ma3_cma_reset;
    wire [13:0] i_mul31_conv2d1x139_ma3_cma_a0;
    wire [17:0] i_mul31_conv2d1x139_ma3_cma_c0;
    wire [13:0] i_mul31_conv2d1x139_ma3_cma_a1;
    wire [17:0] i_mul31_conv2d1x139_ma3_cma_c1;
    wire [32:0] i_mul31_conv2d1x139_ma3_cma_s0;
    wire [32:0] i_mul31_conv2d1x139_ma3_cma_qq;
    wire [32:0] i_mul31_conv2d1x139_ma3_cma_q;
    wire i_mul31_conv2d1x139_ma3_cma_ena0;
    wire i_mul31_conv2d1x139_ma3_cma_ena1;
    wire i_mul31_conv2d1x139_ma3_cma_ena2;
    wire i_mul45_conv2d1x145_ma3_cma_reset;
    wire [13:0] i_mul45_conv2d1x145_ma3_cma_a0;
    wire [17:0] i_mul45_conv2d1x145_ma3_cma_c0;
    wire [13:0] i_mul45_conv2d1x145_ma3_cma_a1;
    wire [17:0] i_mul45_conv2d1x145_ma3_cma_c1;
    wire [32:0] i_mul45_conv2d1x145_ma3_cma_s0;
    wire [32:0] i_mul45_conv2d1x145_ma3_cma_qq;
    wire [32:0] i_mul45_conv2d1x145_ma3_cma_q;
    wire i_mul45_conv2d1x145_ma3_cma_ena0;
    wire i_mul45_conv2d1x145_ma3_cma_ena1;
    wire i_mul45_conv2d1x145_ma3_cma_ena2;
    wire i_mul59_conv2d1x151_ma3_cma_reset;
    wire [13:0] i_mul59_conv2d1x151_ma3_cma_a0;
    wire [17:0] i_mul59_conv2d1x151_ma3_cma_c0;
    wire [13:0] i_mul59_conv2d1x151_ma3_cma_a1;
    wire [17:0] i_mul59_conv2d1x151_ma3_cma_c1;
    wire [32:0] i_mul59_conv2d1x151_ma3_cma_s0;
    wire [32:0] i_mul59_conv2d1x151_ma3_cma_qq;
    wire [32:0] i_mul59_conv2d1x151_ma3_cma_q;
    wire i_mul59_conv2d1x151_ma3_cma_ena0;
    wire i_mul59_conv2d1x151_ma3_cma_ena1;
    wire i_mul59_conv2d1x151_ma3_cma_ena2;
    wire [13:0] i_mul31_conv2d1x139_bs2_merged_bit_select_b;
    wire [17:0] i_mul31_conv2d1x139_bs2_merged_bit_select_c;
    wire [13:0] i_mul45_conv2d1x145_bs2_merged_bit_select_b;
    wire [17:0] i_mul45_conv2d1x145_bs2_merged_bit_select_c;
    wire [13:0] i_mul59_conv2d1x151_bs2_merged_bit_select_b;
    wire [17:0] i_mul59_conv2d1x151_bs2_merged_bit_select_c;
    wire [13:0] i_mul17_conv2d1x124_bs1_merged_bit_select_b;
    wire [17:0] i_mul17_conv2d1x124_bs1_merged_bit_select_c;
    reg [0:0] redist0_sync_together170_aunroll_x_in_c0_eni37_1_tpl_1_q;
    reg [0:0] redist1_sync_together170_aunroll_x_in_c0_eni37_1_tpl_5_q;
    reg [0:0] redist1_sync_together170_aunroll_x_in_c0_eni37_1_tpl_5_delay_0;
    reg [0:0] redist1_sync_together170_aunroll_x_in_c0_eni37_1_tpl_5_delay_1;
    reg [0:0] redist1_sync_together170_aunroll_x_in_c0_eni37_1_tpl_5_delay_2;
    reg [0:0] redist2_sync_together170_aunroll_x_in_c0_eni37_2_tpl_1_q;
    reg [0:0] redist3_sync_together170_aunroll_x_in_c0_eni37_3_tpl_1_q;
    reg [31:0] redist4_sync_together170_aunroll_x_in_c0_eni37_4_tpl_1_q;
    reg [31:0] redist5_sync_together170_aunroll_x_in_c0_eni37_5_tpl_1_q;
    reg [31:0] redist6_sync_together170_aunroll_x_in_c0_eni37_6_tpl_1_q;
    reg [0:0] redist7_sync_together170_aunroll_x_in_c0_eni37_7_tpl_1_q;
    reg [31:0] redist8_sync_together170_aunroll_x_in_c0_eni37_8_tpl_1_q;
    reg [0:0] redist10_sync_together170_aunroll_x_in_c0_eni37_10_tpl_1_q;
    reg [0:0] redist11_sync_together170_aunroll_x_in_c0_eni37_11_tpl_5_q;
    reg [0:0] redist11_sync_together170_aunroll_x_in_c0_eni37_11_tpl_5_delay_0;
    reg [0:0] redist11_sync_together170_aunroll_x_in_c0_eni37_11_tpl_5_delay_1;
    reg [0:0] redist11_sync_together170_aunroll_x_in_c0_eni37_11_tpl_5_delay_2;
    reg [0:0] redist11_sync_together170_aunroll_x_in_c0_eni37_11_tpl_5_delay_3;
    reg [0:0] redist14_sync_together170_aunroll_x_in_c0_eni37_14_tpl_5_q;
    reg [0:0] redist14_sync_together170_aunroll_x_in_c0_eni37_14_tpl_5_delay_0;
    reg [0:0] redist14_sync_together170_aunroll_x_in_c0_eni37_14_tpl_5_delay_1;
    reg [0:0] redist14_sync_together170_aunroll_x_in_c0_eni37_14_tpl_5_delay_2;
    reg [0:0] redist14_sync_together170_aunroll_x_in_c0_eni37_14_tpl_5_delay_3;
    reg [0:0] redist15_sync_together170_aunroll_x_in_c0_eni37_15_tpl_5_q;
    reg [0:0] redist15_sync_together170_aunroll_x_in_c0_eni37_15_tpl_5_delay_0;
    reg [0:0] redist15_sync_together170_aunroll_x_in_c0_eni37_15_tpl_5_delay_1;
    reg [0:0] redist15_sync_together170_aunroll_x_in_c0_eni37_15_tpl_5_delay_2;
    reg [0:0] redist15_sync_together170_aunroll_x_in_c0_eni37_15_tpl_5_delay_3;
    reg [0:0] redist16_sync_together170_aunroll_x_in_c0_eni37_16_tpl_5_q;
    reg [0:0] redist16_sync_together170_aunroll_x_in_c0_eni37_16_tpl_5_delay_0;
    reg [0:0] redist16_sync_together170_aunroll_x_in_c0_eni37_16_tpl_5_delay_1;
    reg [0:0] redist16_sync_together170_aunroll_x_in_c0_eni37_16_tpl_5_delay_2;
    reg [0:0] redist16_sync_together170_aunroll_x_in_c0_eni37_16_tpl_5_delay_3;
    reg [0:0] redist21_sync_together170_aunroll_x_in_c0_eni37_21_tpl_5_q;
    reg [0:0] redist21_sync_together170_aunroll_x_in_c0_eni37_21_tpl_5_delay_0;
    reg [0:0] redist21_sync_together170_aunroll_x_in_c0_eni37_21_tpl_5_delay_1;
    reg [0:0] redist21_sync_together170_aunroll_x_in_c0_eni37_21_tpl_5_delay_2;
    reg [0:0] redist21_sync_together170_aunroll_x_in_c0_eni37_21_tpl_5_delay_3;
    reg [0:0] redist38_sync_together170_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist39_sync_together170_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist39_sync_together170_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist39_sync_together170_aunroll_x_in_i_valid_4_delay_1;
    reg [31:0] redist40_bgTrunc_i_mul59_conv2d1x151_sel_x_b_1_q;
    reg [31:0] redist41_bgTrunc_i_mul31_conv2d1x139_sel_x_b_1_q;
    reg [31:0] redist42_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_q;
    reg [31:0] redist42_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_delay_0;
    reg [30:0] redist43_i_mul45_conv2d1x145_vt_select_31_b_1_q;
    reg [29:0] redist44_i_mul17_conv2d1x124_vt_select_31_b_1_q;
    reg [0:0] redist45_i_masked_conv2d1x168_q_4_q;
    reg [0:0] redist45_i_masked_conv2d1x168_q_4_delay_0;
    reg [0:0] redist45_i_masked_conv2d1x168_q_4_delay_1;
    reg [31:0] redist46_i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_data_out_1_q;
    reg [31:0] redist47_i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_data_out_4_q;
    reg [31:0] redist47_i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_data_out_4_delay_0;
    reg [0:0] redist48_i_llvm_fpga_pop_i1_pop60_conv2d1x115_out_data_out_4_q;
    reg [0:0] redist48_i_llvm_fpga_pop_i1_pop60_conv2d1x115_out_data_out_4_delay_0;
    reg [0:0] redist48_i_llvm_fpga_pop_i1_pop60_conv2d1x115_out_data_out_4_delay_1;
    reg [0:0] redist48_i_llvm_fpga_pop_i1_pop60_conv2d1x115_out_data_out_4_delay_2;
    reg [0:0] redist49_i_llvm_fpga_pop_i1_pop58_conv2d1x118_out_data_out_4_q;
    reg [0:0] redist49_i_llvm_fpga_pop_i1_pop58_conv2d1x118_out_data_out_4_delay_0;
    reg [0:0] redist49_i_llvm_fpga_pop_i1_pop58_conv2d1x118_out_data_out_4_delay_1;
    reg [0:0] redist49_i_llvm_fpga_pop_i1_pop58_conv2d1x118_out_data_out_4_delay_2;
    reg [0:0] redist50_i_llvm_fpga_pop_i1_notcmp4362_pop64_conv2d1x175_out_data_out_4_q;
    reg [0:0] redist50_i_llvm_fpga_pop_i1_notcmp4362_pop64_conv2d1x175_out_data_out_4_delay_0;
    reg [0:0] redist50_i_llvm_fpga_pop_i1_notcmp4362_pop64_conv2d1x175_out_data_out_4_delay_1;
    reg [0:0] redist50_i_llvm_fpga_pop_i1_notcmp4362_pop64_conv2d1x175_out_data_out_4_delay_2;
    reg [31:0] redist51_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_1_q;
    reg [0:0] redist53_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_1_q;
    reg [0:0] redist54_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_q;
    reg [0:0] redist55_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_5_q;
    reg [0:0] redist55_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_5_delay_0;
    reg [0:0] redist55_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_5_delay_1;
    reg [0:0] redist56_i_first_cleanup_xor_conv2d1x14_q_4_q;
    reg [0:0] redist56_i_first_cleanup_xor_conv2d1x14_q_4_delay_0;
    reg [0:0] redist56_i_first_cleanup_xor_conv2d1x14_q_4_delay_1;
    reg [0:0] redist56_i_first_cleanup_xor_conv2d1x14_q_4_delay_2;
    wire redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_mem_reset0;
    wire [31:0] redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_mem_ia;
    wire [1:0] redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_mem_aa;
    wire [1:0] redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_mem_ab;
    wire [31:0] redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_mem_iq;
    wire [31:0] redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_mem_q;
    wire [1:0] redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_rdcnt_i;
    reg [1:0] redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_wraddr_q;
    wire [2:0] redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_mem_last_q;
    wire [2:0] redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_cmp_b;
    wire [0:0] redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_cmpReg_q;
    wire [0:0] redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_notEnable_q;
    wire [0:0] redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_sticky_ena_q;
    wire [0:0] redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_enaAnd_q;
    wire redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_mem_reset0;
    wire [63:0] redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_mem_ia;
    wire [1:0] redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_mem_aa;
    wire [1:0] redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_mem_ab;
    wire [63:0] redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_mem_iq;
    wire [63:0] redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_mem_q;
    wire [1:0] redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_rdcnt_i;
    reg [1:0] redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_wraddr_q;
    wire [2:0] redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_mem_last_q;
    wire [2:0] redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_cmp_b;
    wire [0:0] redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_cmpReg_q;
    wire [0:0] redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_notEnable_q;
    wire [0:0] redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_sticky_ena_q;
    wire [0:0] redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_enaAnd_q;
    wire redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_mem_reset0;
    wire [31:0] redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_mem_ia;
    wire [1:0] redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_mem_aa;
    wire [1:0] redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_mem_ab;
    wire [31:0] redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_mem_iq;
    wire [31:0] redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_mem_q;
    wire [1:0] redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_rdcnt_i;
    reg [1:0] redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_wraddr_q;
    wire [2:0] redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_mem_last_q;
    wire [2:0] redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_cmp_b;
    wire [0:0] redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_cmpReg_q;
    wire [0:0] redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_notEnable_q;
    wire [0:0] redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_sticky_ena_q;
    wire [0:0] redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_enaAnd_q;
    wire redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_mem_reset0;
    wire [32:0] redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_mem_ia;
    wire [1:0] redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_mem_aa;
    wire [1:0] redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_mem_ab;
    wire [32:0] redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_mem_iq;
    wire [32:0] redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_mem_q;
    wire [1:0] redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_rdcnt_i;
    reg [1:0] redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_wraddr_q;
    wire [2:0] redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_mem_last_q;
    wire [2:0] redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_cmp_b;
    wire [0:0] redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_cmpReg_q;
    wire [0:0] redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_notEnable_q;
    wire [0:0] redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_sticky_ena_q;
    wire [0:0] redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_enaAnd_q;
    wire redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_mem_reset0;
    wire [31:0] redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_mem_ia;
    wire [1:0] redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_mem_aa;
    wire [1:0] redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_mem_ab;
    wire [31:0] redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_mem_iq;
    wire [31:0] redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_mem_q;
    wire [1:0] redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_rdcnt_i;
    reg [1:0] redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_wraddr_q;
    wire [2:0] redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_mem_last_q;
    wire [2:0] redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_cmp_b;
    wire [0:0] redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_cmpReg_q;
    wire [0:0] redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_notEnable_q;
    wire [0:0] redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_sticky_ena_q;
    wire [0:0] redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_enaAnd_q;
    wire redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_mem_reset0;
    wire [31:0] redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_mem_ia;
    wire [1:0] redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_mem_aa;
    wire [1:0] redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_mem_ab;
    wire [31:0] redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_mem_iq;
    wire [31:0] redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_mem_q;
    wire [1:0] redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_rdcnt_i;
    reg [1:0] redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_wraddr_q;
    wire [2:0] redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_mem_last_q;
    wire [2:0] redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_cmp_b;
    wire [0:0] redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_cmpReg_q;
    wire [0:0] redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_notEnable_q;
    wire [0:0] redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_sticky_ena_q;
    wire [0:0] redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_enaAnd_q;
    wire redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_mem_reset0;
    wire [31:0] redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_mem_ia;
    wire [1:0] redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_mem_aa;
    wire [1:0] redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_mem_ab;
    wire [31:0] redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_mem_iq;
    wire [31:0] redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_mem_q;
    wire [1:0] redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_rdcnt_i;
    reg [1:0] redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_wraddr_q;
    wire [2:0] redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_mem_last_q;
    wire [2:0] redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_cmp_b;
    wire [0:0] redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_cmpReg_q;
    wire [0:0] redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_notEnable_q;
    wire [0:0] redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_sticky_ena_q;
    wire [0:0] redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_enaAnd_q;
    wire redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_mem_reset0;
    wire [31:0] redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_mem_ia;
    wire [1:0] redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_mem_aa;
    wire [1:0] redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_mem_ab;
    wire [31:0] redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_mem_iq;
    wire [31:0] redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_mem_q;
    wire [1:0] redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_rdcnt_i;
    reg [1:0] redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_wraddr_q;
    wire [2:0] redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_mem_last_q;
    wire [2:0] redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_cmp_b;
    wire [0:0] redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_cmpReg_q;
    wire [0:0] redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_notEnable_q;
    wire [0:0] redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_sticky_ena_q;
    wire [0:0] redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_enaAnd_q;
    wire redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_mem_reset0;
    wire [31:0] redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_mem_ia;
    wire [1:0] redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_mem_aa;
    wire [1:0] redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_mem_ab;
    wire [31:0] redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_mem_iq;
    wire [31:0] redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_mem_q;
    wire [1:0] redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_rdcnt_i;
    reg [1:0] redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_wraddr_q;
    wire [2:0] redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_mem_last_q;
    wire [2:0] redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_cmp_b;
    wire [0:0] redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_cmpReg_q;
    wire [0:0] redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_notEnable_q;
    wire [0:0] redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_sticky_ena_q;
    wire [0:0] redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_enaAnd_q;
    wire redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_mem_reset0;
    wire [31:0] redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_mem_ia;
    wire [1:0] redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_mem_aa;
    wire [1:0] redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_mem_ab;
    wire [31:0] redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_mem_iq;
    wire [31:0] redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_mem_q;
    wire [1:0] redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_rdcnt_i;
    reg [1:0] redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_wraddr_q;
    wire [2:0] redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_mem_last_q;
    wire [2:0] redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_cmp_b;
    wire [0:0] redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_cmpReg_q;
    wire [0:0] redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_notEnable_q;
    wire [0:0] redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_sticky_ena_q;
    wire [0:0] redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_enaAnd_q;
    wire redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_mem_reset0;
    wire [31:0] redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_mem_ia;
    wire [1:0] redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_mem_aa;
    wire [1:0] redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_mem_ab;
    wire [31:0] redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_mem_iq;
    wire [31:0] redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_mem_q;
    wire [1:0] redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_rdcnt_i;
    reg [1:0] redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_wraddr_q;
    wire [2:0] redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_mem_last_q;
    wire [2:0] redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_cmp_b;
    wire [0:0] redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_cmpReg_q;
    wire [0:0] redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_notEnable_q;
    wire [0:0] redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_sticky_ena_q;
    wire [0:0] redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_enaAnd_q;
    wire redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_mem_reset0;
    wire [31:0] redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_mem_ia;
    wire [1:0] redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_mem_aa;
    wire [1:0] redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_mem_ab;
    wire [31:0] redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_mem_iq;
    wire [31:0] redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_mem_q;
    wire [1:0] redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_rdcnt_i;
    reg [1:0] redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_wraddr_q;
    wire [2:0] redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_mem_last_q;
    wire [2:0] redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_cmp_b;
    wire [0:0] redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_cmpReg_q;
    wire [0:0] redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_notEnable_q;
    wire [0:0] redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_sticky_ena_q;
    wire [0:0] redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_enaAnd_q;
    wire redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_mem_reset0;
    wire [31:0] redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_mem_ia;
    wire [1:0] redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_mem_aa;
    wire [1:0] redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_mem_ab;
    wire [31:0] redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_mem_iq;
    wire [31:0] redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_mem_q;
    wire [1:0] redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_rdcnt_i;
    reg [1:0] redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_wraddr_q;
    wire [2:0] redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_mem_last_q;
    wire [2:0] redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_cmp_b;
    wire [0:0] redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_cmpReg_q;
    wire [0:0] redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_notEnable_q;
    wire [0:0] redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_sticky_ena_q;
    wire [0:0] redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_enaAnd_q;
    wire redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_mem_reset0;
    wire [31:0] redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_mem_ia;
    wire [1:0] redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_mem_aa;
    wire [1:0] redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_mem_ab;
    wire [31:0] redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_mem_iq;
    wire [31:0] redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_mem_q;
    wire [1:0] redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_rdcnt_i;
    reg [1:0] redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_wraddr_q;
    wire [2:0] redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_mem_last_q;
    wire [2:0] redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_cmp_b;
    wire [0:0] redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_cmpReg_q;
    wire [0:0] redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_notEnable_q;
    wire [0:0] redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_sticky_ena_q;
    wire [0:0] redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_enaAnd_q;
    wire redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_mem_reset0;
    wire [31:0] redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_mem_ia;
    wire [1:0] redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_mem_aa;
    wire [1:0] redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_mem_ab;
    wire [31:0] redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_mem_iq;
    wire [31:0] redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_mem_q;
    wire [1:0] redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_rdcnt_i;
    reg [1:0] redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_wraddr_q;
    wire [2:0] redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_mem_last_q;
    wire [2:0] redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_cmp_b;
    wire [0:0] redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_cmpReg_q;
    wire [0:0] redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_notEnable_q;
    wire [0:0] redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_sticky_ena_q;
    wire [0:0] redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_enaAnd_q;
    wire redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_mem_reset0;
    wire [31:0] redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_mem_ia;
    wire [1:0] redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_mem_aa;
    wire [1:0] redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_mem_ab;
    wire [31:0] redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_mem_iq;
    wire [31:0] redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_mem_q;
    wire [1:0] redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_rdcnt_i;
    reg [1:0] redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_wraddr_q;
    wire [2:0] redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_mem_last_q;
    wire [2:0] redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_cmp_b;
    wire [0:0] redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_cmpReg_q;
    wire [0:0] redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_notEnable_q;
    wire [0:0] redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_sticky_ena_q;
    wire [0:0] redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_enaAnd_q;
    wire redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_mem_reset0;
    wire [31:0] redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_mem_ia;
    wire [1:0] redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_mem_aa;
    wire [1:0] redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_mem_ab;
    wire [31:0] redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_mem_iq;
    wire [31:0] redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_mem_q;
    wire [1:0] redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_rdcnt_i;
    reg [1:0] redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_wraddr_q;
    wire [2:0] redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_mem_last_q;
    wire [2:0] redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_cmp_b;
    wire [0:0] redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_cmpReg_q;
    wire [0:0] redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_notEnable_q;
    wire [0:0] redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_sticky_ena_q;
    wire [0:0] redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_enaAnd_q;
    wire redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_mem_reset0;
    wire [31:0] redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_mem_ia;
    wire [1:0] redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_mem_aa;
    wire [1:0] redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_mem_ab;
    wire [31:0] redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_mem_iq;
    wire [31:0] redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_mem_q;
    wire [1:0] redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_rdcnt_i;
    reg [1:0] redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_wraddr_q;
    wire [2:0] redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_mem_last_q;
    wire [2:0] redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_cmp_b;
    wire [0:0] redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_cmpReg_q;
    wire [0:0] redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_notEnable_q;
    wire [0:0] redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_sticky_ena_q;
    wire [0:0] redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_enaAnd_q;
    wire redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_mem_reset0;
    wire [31:0] redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_mem_ia;
    wire [1:0] redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_mem_aa;
    wire [1:0] redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_mem_ab;
    wire [31:0] redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_mem_iq;
    wire [31:0] redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_mem_q;
    wire [1:0] redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_rdcnt_i;
    reg [1:0] redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_wraddr_q;
    wire [2:0] redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_mem_last_q;
    wire [2:0] redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_cmp_b;
    wire [0:0] redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_cmpReg_q;
    wire [0:0] redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_notEnable_q;
    wire [0:0] redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_sticky_ena_q;
    wire [0:0] redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_enaAnd_q;
    wire redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_mem_reset0;
    wire [31:0] redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_mem_ia;
    wire [1:0] redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_mem_aa;
    wire [1:0] redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_mem_ab;
    wire [31:0] redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_mem_iq;
    wire [31:0] redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_mem_q;
    wire [1:0] redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_rdcnt_i;
    reg [1:0] redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_wraddr_q;
    wire [2:0] redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_mem_last_q;
    wire [2:0] redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_cmp_b;
    wire [0:0] redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_cmpReg_q;
    wire [0:0] redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_notEnable_q;
    wire [0:0] redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_sticky_ena_q;
    wire [0:0] redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_enaAnd_q;
    wire redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_mem_reset0;
    wire [31:0] redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_mem_ia;
    wire [1:0] redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_mem_aa;
    wire [1:0] redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_mem_ab;
    wire [31:0] redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_mem_iq;
    wire [31:0] redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_mem_q;
    wire [1:0] redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_rdcnt_i;
    reg [1:0] redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_wraddr_q;
    wire [2:0] redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_mem_last_q;
    wire [2:0] redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_cmp_b;
    wire [0:0] redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_cmpReg_q;
    wire [0:0] redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_notEnable_q;
    wire [0:0] redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_sticky_ena_q;
    wire [0:0] redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_enaAnd_q;
    wire redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_mem_reset0;
    wire [31:0] redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_mem_ia;
    wire [1:0] redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_mem_aa;
    wire [1:0] redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_mem_ab;
    wire [31:0] redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_mem_iq;
    wire [31:0] redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_mem_q;
    wire [1:0] redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_rdcnt_i;
    reg [1:0] redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_wraddr_q;
    wire [2:0] redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_mem_last_q;
    wire [2:0] redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_cmp_b;
    wire [0:0] redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_cmpReg_q;
    wire [0:0] redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_notEnable_q;
    wire [0:0] redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_sticky_ena_q;
    wire [0:0] redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_enaAnd_q;
    wire redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_mem_reset0;
    wire [31:0] redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_mem_ia;
    wire [1:0] redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_mem_aa;
    wire [1:0] redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_mem_ab;
    wire [31:0] redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_mem_iq;
    wire [31:0] redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_mem_q;
    wire [1:0] redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_rdcnt_i;
    reg [1:0] redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_wraddr_q;
    wire [2:0] redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_mem_last_q;
    wire [2:0] redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_cmp_b;
    wire [0:0] redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_cmpReg_q;
    wire [0:0] redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_notEnable_q;
    wire [0:0] redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_sticky_ena_q;
    wire [0:0] redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_enaAnd_q;
    reg [31:0] redist42_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_inputreg0_q;
    reg [31:0] redist42_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_outputreg0_q;
    reg [31:0] redist47_i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_data_out_4_outputreg0_q;
    wire redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_mem_reset0;
    wire [31:0] redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_mem_ia;
    wire [0:0] redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_mem_aa;
    wire [0:0] redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_mem_ab;
    wire [31:0] redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_mem_iq;
    wire [31:0] redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_mem_q;
    wire [0:0] redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_rdcnt_q;
    (* preserve *) reg [0:0] redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_rdcnt_i;
    reg [0:0] redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_cmpReg_q;
    wire [0:0] redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_notEnable_q;
    wire [0:0] redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_sticky_ena_q;
    wire [0:0] redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist38_sync_together170_aunroll_x_in_i_valid_1(DELAY,463)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together170_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist38_sync_together170_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist53_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_1(DELAY,478)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_1_q <= '0;
        end
        else
        begin
            redist53_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid389_i_cleanups_shl_conv2d1x10_shift_x(BITSELECT,388)@2
    assign leftShiftStage0Idx1Rng1_uid389_i_cleanups_shl_conv2d1x10_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop56_conv2d1x12_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid389_i_cleanups_shl_conv2d1x10_shift_x_b = leftShiftStage0Idx1Rng1_uid389_i_cleanups_shl_conv2d1x10_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid390_i_cleanups_shl_conv2d1x10_shift_x(BITJOIN,389)@2
    assign leftShiftStage0Idx1_uid390_i_cleanups_shl_conv2d1x10_shift_x_q = {leftShiftStage0Idx1Rng1_uid389_i_cleanups_shl_conv2d1x10_shift_x_b, GND_q};

    // leftShiftStage0_uid392_i_cleanups_shl_conv2d1x10_shift_x(MUX,391)@2
    assign leftShiftStage0_uid392_i_cleanups_shl_conv2d1x10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid392_i_cleanups_shl_conv2d1x10_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop56_conv2d1x12_out_data_out or leftShiftStage0Idx1_uid390_i_cleanups_shl_conv2d1x10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid392_i_cleanups_shl_conv2d1x10_shift_x_s)
            1'b0 : leftShiftStage0_uid392_i_cleanups_shl_conv2d1x10_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop56_conv2d1x12_out_data_out;
            1'b1 : leftShiftStage0_uid392_i_cleanups_shl_conv2d1x10_shift_x_q = leftShiftStage0Idx1_uid390_i_cleanups_shl_conv2d1x10_shift_x_q;
            default : leftShiftStage0_uid392_i_cleanups_shl_conv2d1x10_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_conv2d1x15_vt_select_1(BITSELECT,95)@2
    assign i_cleanups_shl_conv2d1x15_vt_select_1_b = leftShiftStage0_uid392_i_cleanups_shl_conv2d1x10_shift_x_q[1:1];

    // i_cleanups_shl_conv2d1x15_vt_join(BITJOIN,94)@2
    assign i_cleanups_shl_conv2d1x15_vt_join_q = {i_cleanups_shl_conv2d1x15_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_conv2d1x14(LOGICAL,98)@2
    assign i_first_cleanup_xor_conv2d1x14_q = i_first_cleanup_conv2d1x13_sel_x_b ^ VCC_q;

    // i_notcmp_conv2d1x163(LOGICAL,183)@2
    assign i_notcmp_conv2d1x163_q = i_unnamed_conv2d1x162_q ^ VCC_q;

    // i_or_conv2d1x165(LOGICAL,184)@2
    assign i_or_conv2d1x165_q = i_notcmp_conv2d1x163_q | i_first_cleanup_xor_conv2d1x14_q;

    // i_next_cleanups_conv2d1x166(MUX,179)@2
    assign i_next_cleanups_conv2d1x166_s = i_or_conv2d1x165_q;
    always @(i_next_cleanups_conv2d1x166_s or i_llvm_fpga_pop_i2_cleanups_pop56_conv2d1x12_out_data_out or i_cleanups_shl_conv2d1x15_vt_join_q)
    begin
        unique case (i_next_cleanups_conv2d1x166_s)
            1'b0 : i_next_cleanups_conv2d1x166_q = i_llvm_fpga_pop_i2_cleanups_pop56_conv2d1x12_out_data_out;
            1'b1 : i_next_cleanups_conv2d1x166_q = i_cleanups_shl_conv2d1x15_vt_join_q;
            default : i_next_cleanups_conv2d1x166_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push56_conv2d1x167(BLACKBOX,139)@2
    // out out_feedback_out_56@20000000
    // out out_feedback_valid_out_56@20000000
    conv2d1x1_i_llvm_fpga_push_i2_cleanups_push56_0 thei_llvm_fpga_push_i2_cleanups_push56_conv2d1x167 (
        .in_data_in(i_next_cleanups_conv2d1x166_q),
        .in_feedback_stall_in_56(i_llvm_fpga_pop_i2_cleanups_pop56_conv2d1x12_out_feedback_stall_out_56),
        .in_keep_going(redist53_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist38_sync_together170_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_56(i_llvm_fpga_push_i2_cleanups_push56_conv2d1x167_out_feedback_out_56),
        .out_feedback_valid_out_56(i_llvm_fpga_push_i2_cleanups_push56_conv2d1x167_out_feedback_valid_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together170_aunroll_x_in_c0_eni37_1_tpl_1(DELAY,425)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together170_aunroll_x_in_c0_eni37_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together170_aunroll_x_in_c0_eni37_1_tpl_1_q <= $unsigned(in_c0_eni37_1_tpl);
        end
    end

    // c_i2_1121(CONSTANT,53)
    assign c_i2_1121_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop56_conv2d1x12(BLACKBOX,122)@2
    // out out_feedback_stall_out_56@20000000
    conv2d1x1_i_llvm_fpga_pop_i2_cleanups_pop56_0 thei_llvm_fpga_pop_i2_cleanups_pop56_conv2d1x12 (
        .in_data_in(c_i2_1121_q),
        .in_dir(redist0_sync_together170_aunroll_x_in_c0_eni37_1_tpl_1_q),
        .in_feedback_in_56(i_llvm_fpga_push_i2_cleanups_push56_conv2d1x167_out_feedback_out_56),
        .in_feedback_valid_in_56(i_llvm_fpga_push_i2_cleanups_push56_conv2d1x167_out_feedback_valid_out_56),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist38_sync_together170_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop56_conv2d1x12_out_data_out),
        .out_feedback_stall_out_56(i_llvm_fpga_pop_i2_cleanups_pop56_conv2d1x12_out_feedback_stall_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_conv2d1x13_sel_x(BITSELECT,248)@2
    assign i_first_cleanup_conv2d1x13_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop56_conv2d1x12_out_data_out[0:0];

    // i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x121_conv2d1x112(BLACKBOX,114)@2
    conv2d1x1_i_llvm_fpga_ffwd_dest_i33_unnamed_21_conv2d1x10 thei_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x121_conv2d1x112 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist38_sync_together170_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x121_conv2d1x112_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_1129(CONSTANT,58)
    assign c_i33_1129_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next27_conv2d1x160(ADD,101)@2
    assign i_fpga_indvars_iv_next27_conv2d1x160_a = {1'b0, i_fpga_indvars_iv26_replace_phi_conv2d1x114_q};
    assign i_fpga_indvars_iv_next27_conv2d1x160_b = {1'b0, c_i33_1129_q};
    assign i_fpga_indvars_iv_next27_conv2d1x160_o = $unsigned(i_fpga_indvars_iv_next27_conv2d1x160_a) + $unsigned(i_fpga_indvars_iv_next27_conv2d1x160_b);
    assign i_fpga_indvars_iv_next27_conv2d1x160_q = i_fpga_indvars_iv_next27_conv2d1x160_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next27_conv2d1x160_sel_x(BITSELECT,203)@2
    assign bgTrunc_i_fpga_indvars_iv_next27_conv2d1x160_sel_x_b = i_fpga_indvars_iv_next27_conv2d1x160_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv26_push37_conv2d1x161(BLACKBOX,146)@2
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    conv2d1x1_i_llvm_fpga_push_i33_fpga_indvars_iv26_push37_0 thei_llvm_fpga_push_i33_fpga_indvars_iv26_push37_conv2d1x161 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next27_conv2d1x160_sel_x_b),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i33_fpga_indvars_iv26_pop37_conv2d1x113_out_feedback_stall_out_37),
        .in_keep_going(redist53_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist38_sync_together170_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i33_fpga_indvars_iv26_push37_conv2d1x161_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i33_fpga_indvars_iv26_push37_conv2d1x161_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef123(CONSTANT,59)
    assign c_i33_undef123_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv26_pop37_conv2d1x113(BLACKBOX,129)@2
    // out out_feedback_stall_out_37@20000000
    conv2d1x1_i_llvm_fpga_pop_i33_fpga_indvars_iv26_pop37_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv26_pop37_conv2d1x113 (
        .in_data_in(c_i33_undef123_q),
        .in_dir(redist0_sync_together170_aunroll_x_in_c0_eni37_1_tpl_1_q),
        .in_feedback_in_37(i_llvm_fpga_push_i33_fpga_indvars_iv26_push37_conv2d1x161_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i33_fpga_indvars_iv26_push37_conv2d1x161_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist38_sync_together170_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv26_pop37_conv2d1x113_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i33_fpga_indvars_iv26_pop37_conv2d1x113_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv26_replace_phi_conv2d1x114(MUX,100)@2
    assign i_fpga_indvars_iv26_replace_phi_conv2d1x114_s = redist0_sync_together170_aunroll_x_in_c0_eni37_1_tpl_1_q;
    always @(i_fpga_indvars_iv26_replace_phi_conv2d1x114_s or i_llvm_fpga_pop_i33_fpga_indvars_iv26_pop37_conv2d1x113_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x121_conv2d1x112_out_dest_data_out_3_0)
    begin
        unique case (i_fpga_indvars_iv26_replace_phi_conv2d1x114_s)
            1'b0 : i_fpga_indvars_iv26_replace_phi_conv2d1x114_q = i_llvm_fpga_pop_i33_fpga_indvars_iv26_pop37_conv2d1x113_out_data_out;
            1'b1 : i_fpga_indvars_iv26_replace_phi_conv2d1x114_q = i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x121_conv2d1x112_out_dest_data_out_3_0;
            default : i_fpga_indvars_iv26_replace_phi_conv2d1x114_q = 33'b0;
        endcase
    end

    // i_exitcond28_conv2d1x158_cmp_nsign(LOGICAL,324)@2
    assign i_exitcond28_conv2d1x158_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv26_replace_phi_conv2d1x114_q[32:32]));

    // i_llvm_fpga_push_i1_push60_conv2d1x116(BLACKBOX,138)@2
    // out out_feedback_out_60@20000000
    // out out_feedback_valid_out_60@20000000
    conv2d1x1_i_llvm_fpga_push_i1_push60_0 thei_llvm_fpga_push_i1_push60_conv2d1x116 (
        .in_data_in(i_llvm_fpga_pop_i1_pop60_conv2d1x115_out_data_out),
        .in_feedback_stall_in_60(i_llvm_fpga_pop_i1_pop60_conv2d1x115_out_feedback_stall_out_60),
        .in_keep_going(redist53_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist38_sync_together170_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_60(i_llvm_fpga_push_i1_push60_conv2d1x116_out_feedback_out_60),
        .out_feedback_valid_out_60(i_llvm_fpga_push_i1_push60_conv2d1x116_out_feedback_valid_out_60),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together170_aunroll_x_in_c0_eni37_2_tpl_1(DELAY,427)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together170_aunroll_x_in_c0_eni37_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together170_aunroll_x_in_c0_eni37_2_tpl_1_q <= $unsigned(in_c0_eni37_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_pop60_conv2d1x115(BLACKBOX,121)@2
    // out out_feedback_stall_out_60@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_pop60_0 thei_llvm_fpga_pop_i1_pop60_conv2d1x115 (
        .in_data_in(redist2_sync_together170_aunroll_x_in_c0_eni37_2_tpl_1_q),
        .in_dir(redist0_sync_together170_aunroll_x_in_c0_eni37_1_tpl_1_q),
        .in_feedback_in_60(i_llvm_fpga_push_i1_push60_conv2d1x116_out_feedback_out_60),
        .in_feedback_valid_in_60(i_llvm_fpga_push_i1_push60_conv2d1x116_out_feedback_valid_out_60),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist38_sync_together170_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop60_conv2d1x115_out_data_out),
        .out_feedback_stall_out_60(i_llvm_fpga_pop_i1_pop60_conv2d1x115_out_feedback_stall_out_60),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d1x162(LOGICAL,189)@2
    assign i_unnamed_conv2d1x162_q = i_llvm_fpga_pop_i1_pop60_conv2d1x115_out_data_out & i_exitcond28_conv2d1x158_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_conv2d1x164(BLACKBOX,135)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    conv2d1x1_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_conv2d1x164 (
        .in_data_in(i_unnamed_conv2d1x162_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_conv2d1x13_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist38_sync_together170_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_conv2d1x164_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_conv2d1x164_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,268)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // rightShiftStage0Idx1Rng1_uid396_i_next_initerations_conv2d1x10_shift_x(BITSELECT,395)@2
    assign rightShiftStage0Idx1Rng1_uid396_i_next_initerations_conv2d1x10_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop55_conv2d1x17_out_data_out[1:1];

    // rightShiftStage0Idx1_uid398_i_next_initerations_conv2d1x10_shift_x(BITJOIN,397)@2
    assign rightShiftStage0Idx1_uid398_i_next_initerations_conv2d1x10_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid396_i_next_initerations_conv2d1x10_shift_x_b};

    // valid_fanout_reg1(REG,266)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg2(REG,267)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i2_initerations_push55_conv2d1x19(BLACKBOX,140)@2
    // out out_feedback_out_55@20000000
    // out out_feedback_valid_out_55@20000000
    conv2d1x1_i_llvm_fpga_push_i2_initerations_push55_0 thei_llvm_fpga_push_i2_initerations_push55_conv2d1x19 (
        .in_data_in(i_next_initerations_conv2d1x18_vt_join_q),
        .in_feedback_stall_in_55(i_llvm_fpga_pop_i2_initerations_pop55_conv2d1x17_out_feedback_stall_out_55),
        .in_keep_going(redist53_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_55(i_llvm_fpga_push_i2_initerations_push55_conv2d1x19_out_feedback_out_55),
        .out_feedback_valid_out_55(i_llvm_fpga_push_i2_initerations_push55_conv2d1x19_out_feedback_valid_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop55_conv2d1x17(BLACKBOX,123)@2
    // out out_feedback_stall_out_55@20000000
    conv2d1x1_i_llvm_fpga_pop_i2_initerations_pop55_0 thei_llvm_fpga_pop_i2_initerations_pop55_conv2d1x17 (
        .in_data_in(c_i2_1121_q),
        .in_dir(redist0_sync_together170_aunroll_x_in_c0_eni37_1_tpl_1_q),
        .in_feedback_in_55(i_llvm_fpga_push_i2_initerations_push55_conv2d1x19_out_feedback_out_55),
        .in_feedback_valid_in_55(i_llvm_fpga_push_i2_initerations_push55_conv2d1x19_out_feedback_valid_out_55),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop55_conv2d1x17_out_data_out),
        .out_feedback_stall_out_55(i_llvm_fpga_pop_i2_initerations_pop55_conv2d1x17_out_feedback_stall_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid400_i_next_initerations_conv2d1x10_shift_x(MUX,399)@2
    assign rightShiftStage0_uid400_i_next_initerations_conv2d1x10_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid400_i_next_initerations_conv2d1x10_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop55_conv2d1x17_out_data_out or rightShiftStage0Idx1_uid398_i_next_initerations_conv2d1x10_shift_x_q)
    begin
        unique case (rightShiftStage0_uid400_i_next_initerations_conv2d1x10_shift_x_s)
            1'b0 : rightShiftStage0_uid400_i_next_initerations_conv2d1x10_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop55_conv2d1x17_out_data_out;
            1'b1 : rightShiftStage0_uid400_i_next_initerations_conv2d1x10_shift_x_q = rightShiftStage0Idx1_uid398_i_next_initerations_conv2d1x10_shift_x_q;
            default : rightShiftStage0_uid400_i_next_initerations_conv2d1x10_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_conv2d1x18_vt_select_0(BITSELECT,182)@2
    assign i_next_initerations_conv2d1x18_vt_select_0_b = rightShiftStage0_uid400_i_next_initerations_conv2d1x10_shift_x_q[0:0];

    // i_next_initerations_conv2d1x18_vt_join(BITJOIN,181)@2
    assign i_next_initerations_conv2d1x18_vt_join_q = {GND_q, i_next_initerations_conv2d1x18_vt_select_0_b};

    // i_last_initeration_conv2d1x110_sel_x(BITSELECT,254)@2
    assign i_last_initeration_conv2d1x110_sel_x_b = i_next_initerations_conv2d1x18_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_conv2d1x111(BLACKBOX,132)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    conv2d1x1_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_conv2d1x111 (
        .in_data_in(i_last_initeration_conv2d1x110_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_initeration_stall_out),
        .in_keep_going(redist53_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_conv2d1x111_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_conv2d1x111_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_conv2d1x16(BLACKBOX,115)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    conv2d1x1_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_conv2d1x16 (
        .in_data_in(in_c0_eni37_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_conv2d1x111_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_conv2d1x111_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_conv2d1x164_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_conv2d1x164_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
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

    // ext_sig_sync_out(GPOUT,60)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,193)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_pipeline_valid_out;

    // redist39_sync_together170_aunroll_x_in_i_valid_4(DELAY,464)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together170_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist39_sync_together170_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist39_sync_together170_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist39_sync_together170_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(redist38_sync_together170_aunroll_x_in_i_valid_1_q);
            redist39_sync_together170_aunroll_x_in_i_valid_4_delay_1 <= redist39_sync_together170_aunroll_x_in_i_valid_4_delay_0;
            redist39_sync_together170_aunroll_x_in_i_valid_4_q <= redist39_sync_together170_aunroll_x_in_i_valid_4_delay_1;
        end
    end

    // valid_fanout_reg0(REG,265)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist39_sync_together170_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_notEnable(LOGICAL,708)
    assign redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_nor(LOGICAL,709)
    assign redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_nor_q = ~ (redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_notEnable_q | redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_sticky_ena_q);

    // redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_mem_last(CONSTANT,705)
    assign redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_cmp(LOGICAL,706)
    assign redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_cmp_b = {1'b0, redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_rdcnt_q};
    assign redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_cmp_q = $unsigned(redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_mem_last_q == redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_cmpReg(REG,707)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_cmpReg_q <= $unsigned(redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_cmp_q);
        end
    end

    // redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_sticky_ena(REG,710)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_nor_q == 1'b1)
        begin
            redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_sticky_ena_q <= $unsigned(redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_cmpReg_q);
        end
    end

    // redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_enaAnd(LOGICAL,711)
    assign redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_enaAnd_q = redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_sticky_ena_q & VCC_q;

    // redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_rdcnt(COUNTER,703)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_rdcnt_i <= $unsigned(redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_rdcnt_q = redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_rdcnt_i[1:0];

    // redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_wraddr(REG,704)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_wraddr_q <= $unsigned(redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_rdcnt_q);
        end
    end

    // redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_mem(DUALMEM,702)
    assign redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_mem_ia = $unsigned(in_c0_eni37_37_tpl);
    assign redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_mem_aa = redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_wraddr_q;
    assign redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_mem_ab = redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_rdcnt_q;
    assign redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_mem_dmem (
        .clocken1(redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_mem_aa),
        .data_a(redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_mem_ab),
        .q_b(redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_mem_iq),
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
    assign redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_mem_q = redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_mem_iq[31:0];

    // redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_notEnable(LOGICAL,698)
    assign redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_nor(LOGICAL,699)
    assign redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_nor_q = ~ (redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_notEnable_q | redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_sticky_ena_q);

    // redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_mem_last(CONSTANT,695)
    assign redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_cmp(LOGICAL,696)
    assign redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_cmp_b = {1'b0, redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_rdcnt_q};
    assign redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_cmp_q = $unsigned(redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_mem_last_q == redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_cmpReg(REG,697)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_cmpReg_q <= $unsigned(redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_cmp_q);
        end
    end

    // redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_sticky_ena(REG,700)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_nor_q == 1'b1)
        begin
            redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_sticky_ena_q <= $unsigned(redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_cmpReg_q);
        end
    end

    // redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_enaAnd(LOGICAL,701)
    assign redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_enaAnd_q = redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_sticky_ena_q & VCC_q;

    // redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_rdcnt(COUNTER,693)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_rdcnt_i <= $unsigned(redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_rdcnt_q = redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_rdcnt_i[1:0];

    // redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_wraddr(REG,694)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_wraddr_q <= $unsigned(redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_rdcnt_q);
        end
    end

    // redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_mem(DUALMEM,692)
    assign redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_mem_ia = $unsigned(in_c0_eni37_36_tpl);
    assign redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_mem_aa = redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_wraddr_q;
    assign redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_mem_ab = redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_rdcnt_q;
    assign redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_mem_dmem (
        .clocken1(redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_mem_aa),
        .data_a(redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_mem_ab),
        .q_b(redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_mem_iq),
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
    assign redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_mem_q = redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_mem_iq[31:0];

    // redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_notEnable(LOGICAL,688)
    assign redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_nor(LOGICAL,689)
    assign redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_nor_q = ~ (redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_notEnable_q | redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_sticky_ena_q);

    // redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_mem_last(CONSTANT,685)
    assign redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_cmp(LOGICAL,686)
    assign redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_cmp_b = {1'b0, redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_rdcnt_q};
    assign redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_cmp_q = $unsigned(redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_mem_last_q == redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_cmpReg(REG,687)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_cmpReg_q <= $unsigned(redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_cmp_q);
        end
    end

    // redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_sticky_ena(REG,690)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_nor_q == 1'b1)
        begin
            redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_sticky_ena_q <= $unsigned(redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_cmpReg_q);
        end
    end

    // redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_enaAnd(LOGICAL,691)
    assign redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_enaAnd_q = redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_sticky_ena_q & VCC_q;

    // redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_rdcnt(COUNTER,683)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_rdcnt_i <= $unsigned(redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_rdcnt_q = redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_rdcnt_i[1:0];

    // redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_wraddr(REG,684)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_wraddr_q <= $unsigned(redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_rdcnt_q);
        end
    end

    // redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_mem(DUALMEM,682)
    assign redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_mem_ia = $unsigned(in_c0_eni37_35_tpl);
    assign redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_mem_aa = redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_wraddr_q;
    assign redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_mem_ab = redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_rdcnt_q;
    assign redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_mem_dmem (
        .clocken1(redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_mem_aa),
        .data_a(redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_mem_ab),
        .q_b(redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_mem_iq),
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
    assign redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_mem_q = redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_mem_iq[31:0];

    // redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_notEnable(LOGICAL,678)
    assign redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_nor(LOGICAL,679)
    assign redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_nor_q = ~ (redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_notEnable_q | redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_sticky_ena_q);

    // redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_mem_last(CONSTANT,675)
    assign redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_cmp(LOGICAL,676)
    assign redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_cmp_b = {1'b0, redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_rdcnt_q};
    assign redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_cmp_q = $unsigned(redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_mem_last_q == redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_cmpReg(REG,677)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_cmpReg_q <= $unsigned(redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_cmp_q);
        end
    end

    // redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_sticky_ena(REG,680)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_nor_q == 1'b1)
        begin
            redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_sticky_ena_q <= $unsigned(redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_cmpReg_q);
        end
    end

    // redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_enaAnd(LOGICAL,681)
    assign redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_enaAnd_q = redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_sticky_ena_q & VCC_q;

    // redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_rdcnt(COUNTER,673)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_rdcnt_i <= $unsigned(redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_rdcnt_q = redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_rdcnt_i[1:0];

    // redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_wraddr(REG,674)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_wraddr_q <= $unsigned(redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_rdcnt_q);
        end
    end

    // redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_mem(DUALMEM,672)
    assign redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_mem_ia = $unsigned(in_c0_eni37_34_tpl);
    assign redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_mem_aa = redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_wraddr_q;
    assign redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_mem_ab = redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_rdcnt_q;
    assign redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_mem_dmem (
        .clocken1(redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_mem_aa),
        .data_a(redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_mem_ab),
        .q_b(redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_mem_iq),
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
    assign redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_mem_q = redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_mem_iq[31:0];

    // redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_notEnable(LOGICAL,668)
    assign redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_nor(LOGICAL,669)
    assign redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_nor_q = ~ (redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_notEnable_q | redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_sticky_ena_q);

    // redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_mem_last(CONSTANT,665)
    assign redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_cmp(LOGICAL,666)
    assign redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_cmp_b = {1'b0, redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_rdcnt_q};
    assign redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_cmp_q = $unsigned(redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_mem_last_q == redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_cmpReg(REG,667)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_cmpReg_q <= $unsigned(redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_cmp_q);
        end
    end

    // redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_sticky_ena(REG,670)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_nor_q == 1'b1)
        begin
            redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_sticky_ena_q <= $unsigned(redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_cmpReg_q);
        end
    end

    // redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_enaAnd(LOGICAL,671)
    assign redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_enaAnd_q = redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_sticky_ena_q & VCC_q;

    // redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_rdcnt(COUNTER,663)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_rdcnt_i <= $unsigned(redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_rdcnt_q = redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_rdcnt_i[1:0];

    // redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_wraddr(REG,664)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_wraddr_q <= $unsigned(redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_rdcnt_q);
        end
    end

    // redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_mem(DUALMEM,662)
    assign redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_mem_ia = $unsigned(in_c0_eni37_33_tpl);
    assign redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_mem_aa = redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_wraddr_q;
    assign redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_mem_ab = redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_rdcnt_q;
    assign redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_mem_dmem (
        .clocken1(redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_mem_aa),
        .data_a(redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_mem_ab),
        .q_b(redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_mem_iq),
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
    assign redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_mem_q = redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_mem_iq[31:0];

    // redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_notEnable(LOGICAL,658)
    assign redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_nor(LOGICAL,659)
    assign redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_nor_q = ~ (redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_notEnable_q | redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_sticky_ena_q);

    // redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_mem_last(CONSTANT,655)
    assign redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_cmp(LOGICAL,656)
    assign redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_cmp_b = {1'b0, redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_rdcnt_q};
    assign redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_cmp_q = $unsigned(redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_mem_last_q == redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_cmpReg(REG,657)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_cmpReg_q <= $unsigned(redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_cmp_q);
        end
    end

    // redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_sticky_ena(REG,660)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_nor_q == 1'b1)
        begin
            redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_sticky_ena_q <= $unsigned(redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_cmpReg_q);
        end
    end

    // redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_enaAnd(LOGICAL,661)
    assign redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_enaAnd_q = redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_sticky_ena_q & VCC_q;

    // redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_rdcnt(COUNTER,653)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_rdcnt_i <= $unsigned(redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_rdcnt_q = redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_rdcnt_i[1:0];

    // redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_wraddr(REG,654)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_wraddr_q <= $unsigned(redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_rdcnt_q);
        end
    end

    // redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_mem(DUALMEM,652)
    assign redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_mem_ia = $unsigned(in_c0_eni37_32_tpl);
    assign redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_mem_aa = redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_wraddr_q;
    assign redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_mem_ab = redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_rdcnt_q;
    assign redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_mem_dmem (
        .clocken1(redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_mem_aa),
        .data_a(redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_mem_ab),
        .q_b(redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_mem_iq),
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
    assign redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_mem_q = redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_mem_iq[31:0];

    // redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_notEnable(LOGICAL,648)
    assign redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_nor(LOGICAL,649)
    assign redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_nor_q = ~ (redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_notEnable_q | redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_sticky_ena_q);

    // redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_mem_last(CONSTANT,645)
    assign redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_cmp(LOGICAL,646)
    assign redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_cmp_b = {1'b0, redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_rdcnt_q};
    assign redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_cmp_q = $unsigned(redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_mem_last_q == redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_cmpReg(REG,647)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_cmpReg_q <= $unsigned(redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_cmp_q);
        end
    end

    // redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_sticky_ena(REG,650)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_nor_q == 1'b1)
        begin
            redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_sticky_ena_q <= $unsigned(redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_cmpReg_q);
        end
    end

    // redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_enaAnd(LOGICAL,651)
    assign redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_enaAnd_q = redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_sticky_ena_q & VCC_q;

    // redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_rdcnt(COUNTER,643)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_rdcnt_i <= $unsigned(redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_rdcnt_q = redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_rdcnt_i[1:0];

    // redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_wraddr(REG,644)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_wraddr_q <= $unsigned(redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_rdcnt_q);
        end
    end

    // redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_mem(DUALMEM,642)
    assign redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_mem_ia = $unsigned(in_c0_eni37_31_tpl);
    assign redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_mem_aa = redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_wraddr_q;
    assign redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_mem_ab = redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_rdcnt_q;
    assign redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_mem_dmem (
        .clocken1(redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_mem_aa),
        .data_a(redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_mem_ab),
        .q_b(redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_mem_iq),
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
    assign redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_mem_q = redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_mem_iq[31:0];

    // redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_notEnable(LOGICAL,638)
    assign redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_nor(LOGICAL,639)
    assign redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_nor_q = ~ (redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_notEnable_q | redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_sticky_ena_q);

    // redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_mem_last(CONSTANT,635)
    assign redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_cmp(LOGICAL,636)
    assign redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_cmp_b = {1'b0, redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_rdcnt_q};
    assign redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_cmp_q = $unsigned(redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_mem_last_q == redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_cmpReg(REG,637)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_cmpReg_q <= $unsigned(redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_cmp_q);
        end
    end

    // redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_sticky_ena(REG,640)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_nor_q == 1'b1)
        begin
            redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_sticky_ena_q <= $unsigned(redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_cmpReg_q);
        end
    end

    // redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_enaAnd(LOGICAL,641)
    assign redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_enaAnd_q = redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_sticky_ena_q & VCC_q;

    // redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_rdcnt(COUNTER,633)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_rdcnt_i <= $unsigned(redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_rdcnt_q = redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_rdcnt_i[1:0];

    // redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_wraddr(REG,634)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_wraddr_q <= $unsigned(redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_rdcnt_q);
        end
    end

    // redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_mem(DUALMEM,632)
    assign redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_mem_ia = $unsigned(in_c0_eni37_30_tpl);
    assign redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_mem_aa = redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_wraddr_q;
    assign redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_mem_ab = redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_rdcnt_q;
    assign redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_mem_dmem (
        .clocken1(redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_mem_aa),
        .data_a(redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_mem_ab),
        .q_b(redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_mem_iq),
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
    assign redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_mem_q = redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_mem_iq[31:0];

    // redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_notEnable(LOGICAL,628)
    assign redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_nor(LOGICAL,629)
    assign redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_nor_q = ~ (redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_notEnable_q | redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_sticky_ena_q);

    // redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_mem_last(CONSTANT,625)
    assign redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_cmp(LOGICAL,626)
    assign redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_cmp_b = {1'b0, redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_rdcnt_q};
    assign redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_cmp_q = $unsigned(redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_mem_last_q == redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_cmpReg(REG,627)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_cmpReg_q <= $unsigned(redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_cmp_q);
        end
    end

    // redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_sticky_ena(REG,630)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_nor_q == 1'b1)
        begin
            redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_sticky_ena_q <= $unsigned(redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_cmpReg_q);
        end
    end

    // redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_enaAnd(LOGICAL,631)
    assign redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_enaAnd_q = redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_sticky_ena_q & VCC_q;

    // redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_rdcnt(COUNTER,623)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_rdcnt_i <= $unsigned(redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_rdcnt_q = redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_rdcnt_i[1:0];

    // redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_wraddr(REG,624)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_wraddr_q <= $unsigned(redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_rdcnt_q);
        end
    end

    // redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_mem(DUALMEM,622)
    assign redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_mem_ia = $unsigned(in_c0_eni37_29_tpl);
    assign redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_mem_aa = redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_wraddr_q;
    assign redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_mem_ab = redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_rdcnt_q;
    assign redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_mem_dmem (
        .clocken1(redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_mem_aa),
        .data_a(redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_mem_ab),
        .q_b(redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_mem_iq),
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
    assign redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_mem_q = redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_mem_iq[31:0];

    // redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_notEnable(LOGICAL,618)
    assign redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_nor(LOGICAL,619)
    assign redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_nor_q = ~ (redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_notEnable_q | redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_sticky_ena_q);

    // redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_mem_last(CONSTANT,615)
    assign redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_cmp(LOGICAL,616)
    assign redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_cmp_b = {1'b0, redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_rdcnt_q};
    assign redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_cmp_q = $unsigned(redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_mem_last_q == redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_cmpReg(REG,617)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_cmpReg_q <= $unsigned(redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_cmp_q);
        end
    end

    // redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_sticky_ena(REG,620)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_nor_q == 1'b1)
        begin
            redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_sticky_ena_q <= $unsigned(redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_cmpReg_q);
        end
    end

    // redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_enaAnd(LOGICAL,621)
    assign redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_enaAnd_q = redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_sticky_ena_q & VCC_q;

    // redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_rdcnt(COUNTER,613)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_rdcnt_i <= $unsigned(redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_rdcnt_q = redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_rdcnt_i[1:0];

    // redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_wraddr(REG,614)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_wraddr_q <= $unsigned(redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_rdcnt_q);
        end
    end

    // redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_mem(DUALMEM,612)
    assign redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_mem_ia = $unsigned(in_c0_eni37_28_tpl);
    assign redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_mem_aa = redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_wraddr_q;
    assign redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_mem_ab = redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_rdcnt_q;
    assign redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_mem_dmem (
        .clocken1(redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_mem_aa),
        .data_a(redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_mem_ab),
        .q_b(redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_mem_iq),
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
    assign redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_mem_q = redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_mem_iq[31:0];

    // redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_notEnable(LOGICAL,608)
    assign redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_nor(LOGICAL,609)
    assign redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_nor_q = ~ (redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_notEnable_q | redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_sticky_ena_q);

    // redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_mem_last(CONSTANT,605)
    assign redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_cmp(LOGICAL,606)
    assign redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_cmp_b = {1'b0, redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_rdcnt_q};
    assign redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_cmp_q = $unsigned(redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_mem_last_q == redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_cmpReg(REG,607)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_cmpReg_q <= $unsigned(redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_cmp_q);
        end
    end

    // redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_sticky_ena(REG,610)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_nor_q == 1'b1)
        begin
            redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_sticky_ena_q <= $unsigned(redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_cmpReg_q);
        end
    end

    // redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_enaAnd(LOGICAL,611)
    assign redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_enaAnd_q = redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_sticky_ena_q & VCC_q;

    // redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_rdcnt(COUNTER,603)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_rdcnt_i <= $unsigned(redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_rdcnt_q = redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_rdcnt_i[1:0];

    // redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_wraddr(REG,604)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_wraddr_q <= $unsigned(redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_rdcnt_q);
        end
    end

    // redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_mem(DUALMEM,602)
    assign redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_mem_ia = $unsigned(in_c0_eni37_27_tpl);
    assign redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_mem_aa = redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_wraddr_q;
    assign redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_mem_ab = redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_rdcnt_q;
    assign redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_mem_dmem (
        .clocken1(redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_mem_aa),
        .data_a(redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_mem_ab),
        .q_b(redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_mem_iq),
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
    assign redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_mem_q = redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_mem_iq[31:0];

    // redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_notEnable(LOGICAL,598)
    assign redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_nor(LOGICAL,599)
    assign redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_nor_q = ~ (redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_notEnable_q | redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_sticky_ena_q);

    // redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_mem_last(CONSTANT,595)
    assign redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_cmp(LOGICAL,596)
    assign redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_cmp_b = {1'b0, redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_rdcnt_q};
    assign redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_cmp_q = $unsigned(redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_mem_last_q == redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_cmpReg(REG,597)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_cmpReg_q <= $unsigned(redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_cmp_q);
        end
    end

    // redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_sticky_ena(REG,600)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_nor_q == 1'b1)
        begin
            redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_sticky_ena_q <= $unsigned(redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_cmpReg_q);
        end
    end

    // redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_enaAnd(LOGICAL,601)
    assign redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_enaAnd_q = redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_sticky_ena_q & VCC_q;

    // redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_rdcnt(COUNTER,593)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_rdcnt_i <= $unsigned(redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_rdcnt_q = redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_rdcnt_i[1:0];

    // redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_wraddr(REG,594)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_wraddr_q <= $unsigned(redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_rdcnt_q);
        end
    end

    // redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_mem(DUALMEM,592)
    assign redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_mem_ia = $unsigned(in_c0_eni37_26_tpl);
    assign redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_mem_aa = redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_wraddr_q;
    assign redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_mem_ab = redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_rdcnt_q;
    assign redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_mem_dmem (
        .clocken1(redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_mem_aa),
        .data_a(redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_mem_ab),
        .q_b(redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_mem_iq),
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
    assign redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_mem_q = redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_mem_iq[31:0];

    // redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_notEnable(LOGICAL,588)
    assign redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_nor(LOGICAL,589)
    assign redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_nor_q = ~ (redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_notEnable_q | redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_sticky_ena_q);

    // redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_mem_last(CONSTANT,585)
    assign redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_cmp(LOGICAL,586)
    assign redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_cmp_b = {1'b0, redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_rdcnt_q};
    assign redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_cmp_q = $unsigned(redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_mem_last_q == redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_cmpReg(REG,587)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_cmpReg_q <= $unsigned(redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_cmp_q);
        end
    end

    // redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_sticky_ena(REG,590)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_nor_q == 1'b1)
        begin
            redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_sticky_ena_q <= $unsigned(redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_cmpReg_q);
        end
    end

    // redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_enaAnd(LOGICAL,591)
    assign redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_enaAnd_q = redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_sticky_ena_q & VCC_q;

    // redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_rdcnt(COUNTER,583)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_rdcnt_i <= $unsigned(redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_rdcnt_q = redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_rdcnt_i[1:0];

    // redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_wraddr(REG,584)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_wraddr_q <= $unsigned(redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_rdcnt_q);
        end
    end

    // redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_mem(DUALMEM,582)
    assign redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_mem_ia = $unsigned(in_c0_eni37_25_tpl);
    assign redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_mem_aa = redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_wraddr_q;
    assign redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_mem_ab = redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_rdcnt_q;
    assign redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_mem_dmem (
        .clocken1(redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_mem_aa),
        .data_a(redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_mem_ab),
        .q_b(redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_mem_iq),
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
    assign redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_mem_q = redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_mem_iq[31:0];

    // redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_notEnable(LOGICAL,578)
    assign redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_nor(LOGICAL,579)
    assign redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_nor_q = ~ (redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_notEnable_q | redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_sticky_ena_q);

    // redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_mem_last(CONSTANT,575)
    assign redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_cmp(LOGICAL,576)
    assign redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_cmp_b = {1'b0, redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_rdcnt_q};
    assign redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_cmp_q = $unsigned(redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_mem_last_q == redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_cmpReg(REG,577)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_cmpReg_q <= $unsigned(redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_cmp_q);
        end
    end

    // redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_sticky_ena(REG,580)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_nor_q == 1'b1)
        begin
            redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_sticky_ena_q <= $unsigned(redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_cmpReg_q);
        end
    end

    // redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_enaAnd(LOGICAL,581)
    assign redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_enaAnd_q = redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_sticky_ena_q & VCC_q;

    // redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_rdcnt(COUNTER,573)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_rdcnt_i <= $unsigned(redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_rdcnt_q = redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_rdcnt_i[1:0];

    // redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_wraddr(REG,574)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_wraddr_q <= $unsigned(redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_rdcnt_q);
        end
    end

    // redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_mem(DUALMEM,572)
    assign redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_mem_ia = $unsigned(in_c0_eni37_24_tpl);
    assign redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_mem_aa = redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_wraddr_q;
    assign redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_mem_ab = redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_rdcnt_q;
    assign redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_mem_dmem (
        .clocken1(redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_mem_aa),
        .data_a(redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_mem_ab),
        .q_b(redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_mem_iq),
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
    assign redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_mem_q = redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_mem_iq[31:0];

    // redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_notEnable(LOGICAL,568)
    assign redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_nor(LOGICAL,569)
    assign redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_nor_q = ~ (redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_notEnable_q | redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_sticky_ena_q);

    // redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_mem_last(CONSTANT,565)
    assign redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_cmp(LOGICAL,566)
    assign redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_cmp_b = {1'b0, redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_rdcnt_q};
    assign redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_cmp_q = $unsigned(redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_mem_last_q == redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_cmpReg(REG,567)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_cmpReg_q <= $unsigned(redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_cmp_q);
        end
    end

    // redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_sticky_ena(REG,570)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_nor_q == 1'b1)
        begin
            redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_sticky_ena_q <= $unsigned(redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_cmpReg_q);
        end
    end

    // redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_enaAnd(LOGICAL,571)
    assign redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_enaAnd_q = redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_sticky_ena_q & VCC_q;

    // redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_rdcnt(COUNTER,563)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_rdcnt_i <= $unsigned(redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_rdcnt_q = redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_rdcnt_i[1:0];

    // redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_wraddr(REG,564)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_wraddr_q <= $unsigned(redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_rdcnt_q);
        end
    end

    // redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_mem(DUALMEM,562)
    assign redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_mem_ia = $unsigned(in_c0_eni37_23_tpl);
    assign redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_mem_aa = redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_wraddr_q;
    assign redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_mem_ab = redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_rdcnt_q;
    assign redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_mem_dmem (
        .clocken1(redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_mem_aa),
        .data_a(redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_mem_ab),
        .q_b(redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_mem_iq),
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
    assign redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_mem_q = redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_mem_iq[31:0];

    // redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_notEnable(LOGICAL,558)
    assign redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_nor(LOGICAL,559)
    assign redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_nor_q = ~ (redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_notEnable_q | redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_sticky_ena_q);

    // redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_mem_last(CONSTANT,555)
    assign redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_cmp(LOGICAL,556)
    assign redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_cmp_b = {1'b0, redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_rdcnt_q};
    assign redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_cmp_q = $unsigned(redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_mem_last_q == redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_cmpReg(REG,557)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_cmpReg_q <= $unsigned(redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_cmp_q);
        end
    end

    // redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_sticky_ena(REG,560)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_nor_q == 1'b1)
        begin
            redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_sticky_ena_q <= $unsigned(redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_cmpReg_q);
        end
    end

    // redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_enaAnd(LOGICAL,561)
    assign redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_enaAnd_q = redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_sticky_ena_q & VCC_q;

    // redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_rdcnt(COUNTER,553)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_rdcnt_i <= $unsigned(redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_rdcnt_q = redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_rdcnt_i[1:0];

    // redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_wraddr(REG,554)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_wraddr_q <= $unsigned(redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_rdcnt_q);
        end
    end

    // redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_mem(DUALMEM,552)
    assign redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_mem_ia = $unsigned(in_c0_eni37_22_tpl);
    assign redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_mem_aa = redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_wraddr_q;
    assign redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_mem_ab = redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_rdcnt_q;
    assign redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_mem_dmem (
        .clocken1(redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_mem_aa),
        .data_a(redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_mem_ab),
        .q_b(redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_mem_iq),
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
    assign redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_mem_q = redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_mem_iq[31:0];

    // redist21_sync_together170_aunroll_x_in_c0_eni37_21_tpl_5(DELAY,446)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together170_aunroll_x_in_c0_eni37_21_tpl_5_delay_0 <= '0;
            redist21_sync_together170_aunroll_x_in_c0_eni37_21_tpl_5_delay_1 <= '0;
            redist21_sync_together170_aunroll_x_in_c0_eni37_21_tpl_5_delay_2 <= '0;
            redist21_sync_together170_aunroll_x_in_c0_eni37_21_tpl_5_delay_3 <= '0;
            redist21_sync_together170_aunroll_x_in_c0_eni37_21_tpl_5_q <= '0;
        end
        else
        begin
            redist21_sync_together170_aunroll_x_in_c0_eni37_21_tpl_5_delay_0 <= $unsigned(in_c0_eni37_21_tpl);
            redist21_sync_together170_aunroll_x_in_c0_eni37_21_tpl_5_delay_1 <= redist21_sync_together170_aunroll_x_in_c0_eni37_21_tpl_5_delay_0;
            redist21_sync_together170_aunroll_x_in_c0_eni37_21_tpl_5_delay_2 <= redist21_sync_together170_aunroll_x_in_c0_eni37_21_tpl_5_delay_1;
            redist21_sync_together170_aunroll_x_in_c0_eni37_21_tpl_5_delay_3 <= redist21_sync_together170_aunroll_x_in_c0_eni37_21_tpl_5_delay_2;
            redist21_sync_together170_aunroll_x_in_c0_eni37_21_tpl_5_q <= redist21_sync_together170_aunroll_x_in_c0_eni37_21_tpl_5_delay_3;
        end
    end

    // redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_notEnable(LOGICAL,548)
    assign redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_nor(LOGICAL,549)
    assign redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_nor_q = ~ (redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_notEnable_q | redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_sticky_ena_q);

    // redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_mem_last(CONSTANT,545)
    assign redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_cmp(LOGICAL,546)
    assign redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_cmp_b = {1'b0, redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_rdcnt_q};
    assign redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_cmp_q = $unsigned(redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_mem_last_q == redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_cmpReg(REG,547)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_cmpReg_q <= $unsigned(redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_cmp_q);
        end
    end

    // redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_sticky_ena(REG,550)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_nor_q == 1'b1)
        begin
            redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_sticky_ena_q <= $unsigned(redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_cmpReg_q);
        end
    end

    // redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_enaAnd(LOGICAL,551)
    assign redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_enaAnd_q = redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_sticky_ena_q & VCC_q;

    // redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_rdcnt(COUNTER,543)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_rdcnt_i <= $unsigned(redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_rdcnt_q = redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_rdcnt_i[1:0];

    // redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_wraddr(REG,544)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_wraddr_q <= $unsigned(redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_rdcnt_q);
        end
    end

    // redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_mem(DUALMEM,542)
    assign redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_mem_ia = $unsigned(in_c0_eni37_20_tpl);
    assign redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_mem_aa = redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_wraddr_q;
    assign redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_mem_ab = redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_rdcnt_q;
    assign redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_mem_dmem (
        .clocken1(redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_mem_aa),
        .data_a(redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_mem_ab),
        .q_b(redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_mem_iq),
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
    assign redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_mem_q = redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_mem_iq[31:0];

    // redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_notEnable(LOGICAL,538)
    assign redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_nor(LOGICAL,539)
    assign redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_nor_q = ~ (redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_notEnable_q | redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_sticky_ena_q);

    // redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_mem_last(CONSTANT,535)
    assign redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_cmp(LOGICAL,536)
    assign redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_cmp_b = {1'b0, redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_rdcnt_q};
    assign redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_cmp_q = $unsigned(redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_mem_last_q == redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_cmpReg(REG,537)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_cmpReg_q <= $unsigned(redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_cmp_q);
        end
    end

    // redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_sticky_ena(REG,540)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_nor_q == 1'b1)
        begin
            redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_sticky_ena_q <= $unsigned(redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_cmpReg_q);
        end
    end

    // redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_enaAnd(LOGICAL,541)
    assign redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_enaAnd_q = redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_sticky_ena_q & VCC_q;

    // redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_rdcnt(COUNTER,533)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_rdcnt_i <= $unsigned(redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_rdcnt_q = redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_rdcnt_i[1:0];

    // redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_wraddr(REG,534)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_wraddr_q <= $unsigned(redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_rdcnt_q);
        end
    end

    // redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_mem(DUALMEM,532)
    assign redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_mem_ia = $unsigned(in_c0_eni37_19_tpl);
    assign redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_mem_aa = redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_wraddr_q;
    assign redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_mem_ab = redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_rdcnt_q;
    assign redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_mem_dmem (
        .clocken1(redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_mem_aa),
        .data_a(redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_mem_ab),
        .q_b(redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_mem_iq),
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
    assign redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_mem_q = redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_mem_iq[31:0];

    // redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_notEnable(LOGICAL,528)
    assign redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_nor(LOGICAL,529)
    assign redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_nor_q = ~ (redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_notEnable_q | redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_sticky_ena_q);

    // redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_mem_last(CONSTANT,525)
    assign redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_cmp(LOGICAL,526)
    assign redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_cmp_b = {1'b0, redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_rdcnt_q};
    assign redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_cmp_q = $unsigned(redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_mem_last_q == redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_cmpReg(REG,527)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_cmpReg_q <= $unsigned(redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_cmp_q);
        end
    end

    // redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_sticky_ena(REG,530)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_nor_q == 1'b1)
        begin
            redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_sticky_ena_q <= $unsigned(redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_cmpReg_q);
        end
    end

    // redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_enaAnd(LOGICAL,531)
    assign redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_enaAnd_q = redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_sticky_ena_q & VCC_q;

    // redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_rdcnt(COUNTER,523)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_rdcnt_i <= $unsigned(redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_rdcnt_q = redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_rdcnt_i[1:0];

    // redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_wraddr(REG,524)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_wraddr_q <= $unsigned(redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_rdcnt_q);
        end
    end

    // redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_mem(DUALMEM,522)
    assign redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_mem_ia = $unsigned(in_c0_eni37_18_tpl);
    assign redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_mem_aa = redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_wraddr_q;
    assign redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_mem_ab = redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_rdcnt_q;
    assign redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_mem_dmem (
        .clocken1(redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_mem_aa),
        .data_a(redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_mem_ab),
        .q_b(redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_mem_iq),
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
    assign redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_mem_q = redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_mem_iq[31:0];

    // redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_notEnable(LOGICAL,518)
    assign redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_nor(LOGICAL,519)
    assign redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_nor_q = ~ (redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_notEnable_q | redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_sticky_ena_q);

    // redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_mem_last(CONSTANT,515)
    assign redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_cmp(LOGICAL,516)
    assign redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_cmp_b = {1'b0, redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_rdcnt_q};
    assign redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_cmp_q = $unsigned(redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_mem_last_q == redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_cmpReg(REG,517)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_cmpReg_q <= $unsigned(redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_cmp_q);
        end
    end

    // redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_sticky_ena(REG,520)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_nor_q == 1'b1)
        begin
            redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_sticky_ena_q <= $unsigned(redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_cmpReg_q);
        end
    end

    // redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_enaAnd(LOGICAL,521)
    assign redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_enaAnd_q = redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_sticky_ena_q & VCC_q;

    // redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_rdcnt(COUNTER,513)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_rdcnt_i <= $unsigned(redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_rdcnt_q = redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_rdcnt_i[1:0];

    // redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_wraddr(REG,514)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_wraddr_q <= $unsigned(redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_rdcnt_q);
        end
    end

    // redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_mem(DUALMEM,512)
    assign redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_mem_ia = $unsigned(in_c0_eni37_17_tpl);
    assign redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_mem_aa = redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_wraddr_q;
    assign redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_mem_ab = redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_rdcnt_q;
    assign redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_mem_dmem (
        .clocken1(redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_mem_aa),
        .data_a(redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_mem_ab),
        .q_b(redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_mem_iq),
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
    assign redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_mem_q = redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_mem_iq[32:0];

    // redist16_sync_together170_aunroll_x_in_c0_eni37_16_tpl_5(DELAY,441)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together170_aunroll_x_in_c0_eni37_16_tpl_5_delay_0 <= '0;
            redist16_sync_together170_aunroll_x_in_c0_eni37_16_tpl_5_delay_1 <= '0;
            redist16_sync_together170_aunroll_x_in_c0_eni37_16_tpl_5_delay_2 <= '0;
            redist16_sync_together170_aunroll_x_in_c0_eni37_16_tpl_5_delay_3 <= '0;
            redist16_sync_together170_aunroll_x_in_c0_eni37_16_tpl_5_q <= '0;
        end
        else
        begin
            redist16_sync_together170_aunroll_x_in_c0_eni37_16_tpl_5_delay_0 <= $unsigned(in_c0_eni37_16_tpl);
            redist16_sync_together170_aunroll_x_in_c0_eni37_16_tpl_5_delay_1 <= redist16_sync_together170_aunroll_x_in_c0_eni37_16_tpl_5_delay_0;
            redist16_sync_together170_aunroll_x_in_c0_eni37_16_tpl_5_delay_2 <= redist16_sync_together170_aunroll_x_in_c0_eni37_16_tpl_5_delay_1;
            redist16_sync_together170_aunroll_x_in_c0_eni37_16_tpl_5_delay_3 <= redist16_sync_together170_aunroll_x_in_c0_eni37_16_tpl_5_delay_2;
            redist16_sync_together170_aunroll_x_in_c0_eni37_16_tpl_5_q <= redist16_sync_together170_aunroll_x_in_c0_eni37_16_tpl_5_delay_3;
        end
    end

    // redist15_sync_together170_aunroll_x_in_c0_eni37_15_tpl_5(DELAY,440)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together170_aunroll_x_in_c0_eni37_15_tpl_5_delay_0 <= '0;
            redist15_sync_together170_aunroll_x_in_c0_eni37_15_tpl_5_delay_1 <= '0;
            redist15_sync_together170_aunroll_x_in_c0_eni37_15_tpl_5_delay_2 <= '0;
            redist15_sync_together170_aunroll_x_in_c0_eni37_15_tpl_5_delay_3 <= '0;
            redist15_sync_together170_aunroll_x_in_c0_eni37_15_tpl_5_q <= '0;
        end
        else
        begin
            redist15_sync_together170_aunroll_x_in_c0_eni37_15_tpl_5_delay_0 <= $unsigned(in_c0_eni37_15_tpl);
            redist15_sync_together170_aunroll_x_in_c0_eni37_15_tpl_5_delay_1 <= redist15_sync_together170_aunroll_x_in_c0_eni37_15_tpl_5_delay_0;
            redist15_sync_together170_aunroll_x_in_c0_eni37_15_tpl_5_delay_2 <= redist15_sync_together170_aunroll_x_in_c0_eni37_15_tpl_5_delay_1;
            redist15_sync_together170_aunroll_x_in_c0_eni37_15_tpl_5_delay_3 <= redist15_sync_together170_aunroll_x_in_c0_eni37_15_tpl_5_delay_2;
            redist15_sync_together170_aunroll_x_in_c0_eni37_15_tpl_5_q <= redist15_sync_together170_aunroll_x_in_c0_eni37_15_tpl_5_delay_3;
        end
    end

    // redist14_sync_together170_aunroll_x_in_c0_eni37_14_tpl_5(DELAY,439)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together170_aunroll_x_in_c0_eni37_14_tpl_5_delay_0 <= '0;
            redist14_sync_together170_aunroll_x_in_c0_eni37_14_tpl_5_delay_1 <= '0;
            redist14_sync_together170_aunroll_x_in_c0_eni37_14_tpl_5_delay_2 <= '0;
            redist14_sync_together170_aunroll_x_in_c0_eni37_14_tpl_5_delay_3 <= '0;
            redist14_sync_together170_aunroll_x_in_c0_eni37_14_tpl_5_q <= '0;
        end
        else
        begin
            redist14_sync_together170_aunroll_x_in_c0_eni37_14_tpl_5_delay_0 <= $unsigned(in_c0_eni37_14_tpl);
            redist14_sync_together170_aunroll_x_in_c0_eni37_14_tpl_5_delay_1 <= redist14_sync_together170_aunroll_x_in_c0_eni37_14_tpl_5_delay_0;
            redist14_sync_together170_aunroll_x_in_c0_eni37_14_tpl_5_delay_2 <= redist14_sync_together170_aunroll_x_in_c0_eni37_14_tpl_5_delay_1;
            redist14_sync_together170_aunroll_x_in_c0_eni37_14_tpl_5_delay_3 <= redist14_sync_together170_aunroll_x_in_c0_eni37_14_tpl_5_delay_2;
            redist14_sync_together170_aunroll_x_in_c0_eni37_14_tpl_5_q <= redist14_sync_together170_aunroll_x_in_c0_eni37_14_tpl_5_delay_3;
        end
    end

    // redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_notEnable(LOGICAL,508)
    assign redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_nor(LOGICAL,509)
    assign redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_nor_q = ~ (redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_notEnable_q | redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_sticky_ena_q);

    // redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_mem_last(CONSTANT,505)
    assign redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_cmp(LOGICAL,506)
    assign redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_cmp_b = {1'b0, redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_rdcnt_q};
    assign redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_cmp_q = $unsigned(redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_mem_last_q == redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_cmpReg(REG,507)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_cmpReg_q <= $unsigned(redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_cmp_q);
        end
    end

    // redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_sticky_ena(REG,510)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_nor_q == 1'b1)
        begin
            redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_sticky_ena_q <= $unsigned(redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_cmpReg_q);
        end
    end

    // redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_enaAnd(LOGICAL,511)
    assign redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_enaAnd_q = redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_sticky_ena_q & VCC_q;

    // redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_rdcnt(COUNTER,503)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_rdcnt_i <= $unsigned(redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_rdcnt_q = redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_rdcnt_i[1:0];

    // redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_wraddr(REG,504)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_wraddr_q <= $unsigned(redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_rdcnt_q);
        end
    end

    // redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_mem(DUALMEM,502)
    assign redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_mem_ia = $unsigned(in_c0_eni37_13_tpl);
    assign redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_mem_aa = redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_wraddr_q;
    assign redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_mem_ab = redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_rdcnt_q;
    assign redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_mem_dmem (
        .clocken1(redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_mem_aa),
        .data_a(redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_mem_ab),
        .q_b(redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_mem_iq),
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
    assign redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_mem_q = redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_mem_iq[31:0];

    // redist1_sync_together170_aunroll_x_in_c0_eni37_1_tpl_5(DELAY,426)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together170_aunroll_x_in_c0_eni37_1_tpl_5_delay_0 <= '0;
            redist1_sync_together170_aunroll_x_in_c0_eni37_1_tpl_5_delay_1 <= '0;
            redist1_sync_together170_aunroll_x_in_c0_eni37_1_tpl_5_delay_2 <= '0;
            redist1_sync_together170_aunroll_x_in_c0_eni37_1_tpl_5_q <= '0;
        end
        else
        begin
            redist1_sync_together170_aunroll_x_in_c0_eni37_1_tpl_5_delay_0 <= $unsigned(redist0_sync_together170_aunroll_x_in_c0_eni37_1_tpl_1_q);
            redist1_sync_together170_aunroll_x_in_c0_eni37_1_tpl_5_delay_1 <= redist1_sync_together170_aunroll_x_in_c0_eni37_1_tpl_5_delay_0;
            redist1_sync_together170_aunroll_x_in_c0_eni37_1_tpl_5_delay_2 <= redist1_sync_together170_aunroll_x_in_c0_eni37_1_tpl_5_delay_1;
            redist1_sync_together170_aunroll_x_in_c0_eni37_1_tpl_5_q <= redist1_sync_together170_aunroll_x_in_c0_eni37_1_tpl_5_delay_2;
        end
    end

    // valid_fanout_reg29(REG,294)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(redist39_sync_together170_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg30(REG,295)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist39_sync_together170_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i64_ap_pop_ext784_push83_conv2d1x180(BLACKBOX,147)@6
    // out out_feedback_out_83@20000000
    // out out_feedback_valid_out_83@20000000
    conv2d1x1_i_llvm_fpga_push_i64_ap_pop_ext784_push83_0 thei_llvm_fpga_push_i64_ap_pop_ext784_push83_conv2d1x180 (
        .in_data_in(i_llvm_fpga_pop_i64_ap_pop_ext784_pop83_conv2d1x179_out_data_out),
        .in_feedback_stall_in_83(i_llvm_fpga_pop_i64_ap_pop_ext784_pop83_conv2d1x179_out_feedback_stall_out_83),
        .in_keep_going(redist55_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(),
        .out_feedback_out_83(i_llvm_fpga_push_i64_ap_pop_ext784_push83_conv2d1x180_out_feedback_out_83),
        .out_feedback_valid_out_83(i_llvm_fpga_push_i64_ap_pop_ext784_push83_conv2d1x180_out_feedback_valid_out_83),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_notEnable(LOGICAL,498)
    assign redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_nor(LOGICAL,499)
    assign redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_nor_q = ~ (redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_notEnable_q | redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_sticky_ena_q);

    // redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_mem_last(CONSTANT,495)
    assign redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_cmp(LOGICAL,496)
    assign redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_cmp_b = {1'b0, redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_rdcnt_q};
    assign redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_cmp_q = $unsigned(redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_mem_last_q == redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_cmpReg(REG,497)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_cmpReg_q <= $unsigned(redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_cmp_q);
        end
    end

    // redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_sticky_ena(REG,500)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_nor_q == 1'b1)
        begin
            redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_sticky_ena_q <= $unsigned(redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_cmpReg_q);
        end
    end

    // redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_enaAnd(LOGICAL,501)
    assign redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_enaAnd_q = redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_sticky_ena_q & VCC_q;

    // redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_rdcnt(COUNTER,493)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_rdcnt_i <= $unsigned(redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_rdcnt_q = redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_rdcnt_i[1:0];

    // redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_wraddr(REG,494)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_wraddr_q <= $unsigned(redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_rdcnt_q);
        end
    end

    // redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_mem(DUALMEM,492)
    assign redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_mem_ia = $unsigned(in_c0_eni37_12_tpl);
    assign redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_mem_aa = redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_wraddr_q;
    assign redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_mem_ab = redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_rdcnt_q;
    assign redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_mem_dmem (
        .clocken1(redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_mem_aa),
        .data_a(redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_mem_ab),
        .q_b(redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_mem_iq),
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
    assign redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_mem_q = redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_mem_iq[63:0];

    // i_llvm_fpga_pop_i64_ap_pop_ext784_pop83_conv2d1x179(BLACKBOX,130)@6
    // out out_feedback_stall_out_83@20000000
    conv2d1x1_i_llvm_fpga_pop_i64_ap_pop_ext784_pop83_0 thei_llvm_fpga_pop_i64_ap_pop_ext784_pop83_conv2d1x179 (
        .in_data_in(redist12_sync_together170_aunroll_x_in_c0_eni37_12_tpl_5_mem_q),
        .in_dir(redist1_sync_together170_aunroll_x_in_c0_eni37_1_tpl_5_q),
        .in_feedback_in_83(i_llvm_fpga_push_i64_ap_pop_ext784_push83_conv2d1x180_out_feedback_out_83),
        .in_feedback_valid_in_83(i_llvm_fpga_push_i64_ap_pop_ext784_push83_conv2d1x180_out_feedback_valid_out_83),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(i_llvm_fpga_pop_i64_ap_pop_ext784_pop83_conv2d1x179_out_data_out),
        .out_feedback_stall_out_83(i_llvm_fpga_pop_i64_ap_pop_ext784_pop83_conv2d1x179_out_feedback_stall_out_83),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg27(REG,292)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist39_sync_together170_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg28(REG,293)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(redist39_sync_together170_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp3865_push65_conv2d1x178(BLACKBOX,133)@6
    // out out_feedback_out_65@20000000
    // out out_feedback_valid_out_65@20000000
    conv2d1x1_i_llvm_fpga_push_i1_notcmp3865_push65_0 thei_llvm_fpga_push_i1_notcmp3865_push65_conv2d1x178 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp3865_pop65_conv2d1x177_out_data_out),
        .in_feedback_stall_in_65(i_llvm_fpga_pop_i1_notcmp3865_pop65_conv2d1x177_out_feedback_stall_out_65),
        .in_keep_going(redist55_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(),
        .out_feedback_out_65(i_llvm_fpga_push_i1_notcmp3865_push65_conv2d1x178_out_feedback_out_65),
        .out_feedback_valid_out_65(i_llvm_fpga_push_i1_notcmp3865_push65_conv2d1x178_out_feedback_valid_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_sync_together170_aunroll_x_in_c0_eni37_11_tpl_5(DELAY,436)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together170_aunroll_x_in_c0_eni37_11_tpl_5_delay_0 <= '0;
            redist11_sync_together170_aunroll_x_in_c0_eni37_11_tpl_5_delay_1 <= '0;
            redist11_sync_together170_aunroll_x_in_c0_eni37_11_tpl_5_delay_2 <= '0;
            redist11_sync_together170_aunroll_x_in_c0_eni37_11_tpl_5_delay_3 <= '0;
            redist11_sync_together170_aunroll_x_in_c0_eni37_11_tpl_5_q <= '0;
        end
        else
        begin
            redist11_sync_together170_aunroll_x_in_c0_eni37_11_tpl_5_delay_0 <= $unsigned(in_c0_eni37_11_tpl);
            redist11_sync_together170_aunroll_x_in_c0_eni37_11_tpl_5_delay_1 <= redist11_sync_together170_aunroll_x_in_c0_eni37_11_tpl_5_delay_0;
            redist11_sync_together170_aunroll_x_in_c0_eni37_11_tpl_5_delay_2 <= redist11_sync_together170_aunroll_x_in_c0_eni37_11_tpl_5_delay_1;
            redist11_sync_together170_aunroll_x_in_c0_eni37_11_tpl_5_delay_3 <= redist11_sync_together170_aunroll_x_in_c0_eni37_11_tpl_5_delay_2;
            redist11_sync_together170_aunroll_x_in_c0_eni37_11_tpl_5_q <= redist11_sync_together170_aunroll_x_in_c0_eni37_11_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp3865_pop65_conv2d1x177(BLACKBOX,117)@6
    // out out_feedback_stall_out_65@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_notcmp3865_pop65_0 thei_llvm_fpga_pop_i1_notcmp3865_pop65_conv2d1x177 (
        .in_data_in(redist11_sync_together170_aunroll_x_in_c0_eni37_11_tpl_5_q),
        .in_dir(redist1_sync_together170_aunroll_x_in_c0_eni37_1_tpl_5_q),
        .in_feedback_in_65(i_llvm_fpga_push_i1_notcmp3865_push65_conv2d1x178_out_feedback_out_65),
        .in_feedback_valid_in_65(i_llvm_fpga_push_i1_notcmp3865_push65_conv2d1x178_out_feedback_valid_out_65),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp3865_pop65_conv2d1x177_out_data_out),
        .out_feedback_stall_out_65(i_llvm_fpga_pop_i1_notcmp3865_pop65_conv2d1x177_out_feedback_stall_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg25(REG,290)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg26(REG,291)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp4362_push64_conv2d1x176(BLACKBOX,134)@2
    // out out_feedback_out_64@20000000
    // out out_feedback_valid_out_64@20000000
    conv2d1x1_i_llvm_fpga_push_i1_notcmp4362_push64_0 thei_llvm_fpga_push_i1_notcmp4362_push64_conv2d1x176 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp4362_pop64_conv2d1x175_out_data_out),
        .in_feedback_stall_in_64(i_llvm_fpga_pop_i1_notcmp4362_pop64_conv2d1x175_out_feedback_stall_out_64),
        .in_keep_going(redist53_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(),
        .out_feedback_out_64(i_llvm_fpga_push_i1_notcmp4362_push64_conv2d1x176_out_feedback_out_64),
        .out_feedback_valid_out_64(i_llvm_fpga_push_i1_notcmp4362_push64_conv2d1x176_out_feedback_valid_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_sync_together170_aunroll_x_in_c0_eni37_10_tpl_1(DELAY,435)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together170_aunroll_x_in_c0_eni37_10_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together170_aunroll_x_in_c0_eni37_10_tpl_1_q <= $unsigned(in_c0_eni37_10_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp4362_pop64_conv2d1x175(BLACKBOX,118)@2
    // out out_feedback_stall_out_64@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_notcmp4362_pop64_0 thei_llvm_fpga_pop_i1_notcmp4362_pop64_conv2d1x175 (
        .in_data_in(redist10_sync_together170_aunroll_x_in_c0_eni37_10_tpl_1_q),
        .in_dir(redist0_sync_together170_aunroll_x_in_c0_eni37_1_tpl_1_q),
        .in_feedback_in_64(i_llvm_fpga_push_i1_notcmp4362_push64_conv2d1x176_out_feedback_out_64),
        .in_feedback_valid_in_64(i_llvm_fpga_push_i1_notcmp4362_push64_conv2d1x176_out_feedback_valid_out_64),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp4362_pop64_conv2d1x175_out_data_out),
        .out_feedback_stall_out_64(i_llvm_fpga_pop_i1_notcmp4362_pop64_conv2d1x175_out_feedback_stall_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist50_i_llvm_fpga_pop_i1_notcmp4362_pop64_conv2d1x175_out_data_out_4(DELAY,475)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_i_llvm_fpga_pop_i1_notcmp4362_pop64_conv2d1x175_out_data_out_4_delay_0 <= '0;
            redist50_i_llvm_fpga_pop_i1_notcmp4362_pop64_conv2d1x175_out_data_out_4_delay_1 <= '0;
            redist50_i_llvm_fpga_pop_i1_notcmp4362_pop64_conv2d1x175_out_data_out_4_delay_2 <= '0;
            redist50_i_llvm_fpga_pop_i1_notcmp4362_pop64_conv2d1x175_out_data_out_4_q <= '0;
        end
        else
        begin
            redist50_i_llvm_fpga_pop_i1_notcmp4362_pop64_conv2d1x175_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp4362_pop64_conv2d1x175_out_data_out);
            redist50_i_llvm_fpga_pop_i1_notcmp4362_pop64_conv2d1x175_out_data_out_4_delay_1 <= redist50_i_llvm_fpga_pop_i1_notcmp4362_pop64_conv2d1x175_out_data_out_4_delay_0;
            redist50_i_llvm_fpga_pop_i1_notcmp4362_pop64_conv2d1x175_out_data_out_4_delay_2 <= redist50_i_llvm_fpga_pop_i1_notcmp4362_pop64_conv2d1x175_out_data_out_4_delay_1;
            redist50_i_llvm_fpga_pop_i1_notcmp4362_pop64_conv2d1x175_out_data_out_4_q <= redist50_i_llvm_fpga_pop_i1_notcmp4362_pop64_conv2d1x175_out_data_out_4_delay_2;
        end
    end

    // valid_fanout_reg23(REG,288)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist39_sync_together170_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg24(REG,289)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist39_sync_together170_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i32_mul10059_push63_conv2d1x174(BLACKBOX,143)@6
    // out out_feedback_out_63@20000000
    // out out_feedback_valid_out_63@20000000
    conv2d1x1_i_llvm_fpga_push_i32_mul10059_push63_0 thei_llvm_fpga_push_i32_mul10059_push63_conv2d1x174 (
        .in_data_in(i_llvm_fpga_pop_i32_mul10059_pop63_conv2d1x173_out_data_out),
        .in_feedback_stall_in_63(i_llvm_fpga_pop_i32_mul10059_pop63_conv2d1x173_out_feedback_stall_out_63),
        .in_keep_going(redist55_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(),
        .out_feedback_out_63(i_llvm_fpga_push_i32_mul10059_push63_conv2d1x174_out_feedback_out_63),
        .out_feedback_valid_out_63(i_llvm_fpga_push_i32_mul10059_push63_conv2d1x174_out_feedback_valid_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_notEnable(LOGICAL,488)
    assign redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_nor(LOGICAL,489)
    assign redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_nor_q = ~ (redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_notEnable_q | redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_sticky_ena_q);

    // redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_mem_last(CONSTANT,485)
    assign redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_cmp(LOGICAL,486)
    assign redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_cmp_b = {1'b0, redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_rdcnt_q};
    assign redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_cmp_q = $unsigned(redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_mem_last_q == redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_cmpReg(REG,487)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_cmpReg_q <= $unsigned(redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_cmp_q);
        end
    end

    // redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_sticky_ena(REG,490)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_nor_q == 1'b1)
        begin
            redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_sticky_ena_q <= $unsigned(redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_cmpReg_q);
        end
    end

    // redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_enaAnd(LOGICAL,491)
    assign redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_enaAnd_q = redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_sticky_ena_q & VCC_q;

    // redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_rdcnt(COUNTER,483)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_rdcnt_i <= $unsigned(redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_rdcnt_q = redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_rdcnt_i[1:0];

    // redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_wraddr(REG,484)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_wraddr_q <= $unsigned(redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_rdcnt_q);
        end
    end

    // redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_mem(DUALMEM,482)
    assign redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_mem_ia = $unsigned(in_c0_eni37_9_tpl);
    assign redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_mem_aa = redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_wraddr_q;
    assign redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_mem_ab = redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_rdcnt_q;
    assign redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_mem_dmem (
        .clocken1(redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_mem_aa),
        .data_a(redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_mem_ab),
        .q_b(redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_mem_iq),
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
    assign redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_mem_q = redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_mem_iq[31:0];

    // i_llvm_fpga_pop_i32_mul10059_pop63_conv2d1x173(BLACKBOX,126)@6
    // out out_feedback_stall_out_63@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_mul10059_pop63_0 thei_llvm_fpga_pop_i32_mul10059_pop63_conv2d1x173 (
        .in_data_in(redist9_sync_together170_aunroll_x_in_c0_eni37_9_tpl_5_mem_q),
        .in_dir(redist1_sync_together170_aunroll_x_in_c0_eni37_1_tpl_5_q),
        .in_feedback_in_63(i_llvm_fpga_push_i32_mul10059_push63_conv2d1x174_out_feedback_out_63),
        .in_feedback_valid_in_63(i_llvm_fpga_push_i32_mul10059_push63_conv2d1x174_out_feedback_valid_out_63),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul10059_pop63_conv2d1x173_out_data_out),
        .out_feedback_stall_out_63(i_llvm_fpga_pop_i32_mul10059_pop63_conv2d1x173_out_feedback_stall_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_notEnable(LOGICAL,719)
    assign redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_nor(LOGICAL,720)
    assign redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_nor_q = ~ (redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_notEnable_q | redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_sticky_ena_q);

    // redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_cmpReg(REG,718)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_sticky_ena(REG,721)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_nor_q == 1'b1)
        begin
            redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_sticky_ena_q <= $unsigned(redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_cmpReg_q);
        end
    end

    // redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_enaAnd(LOGICAL,722)
    assign redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_enaAnd_q = redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_sticky_ena_q & VCC_q;

    // redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_rdcnt(COUNTER,716)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_rdcnt_i <= $unsigned(redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_rdcnt_q = redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_rdcnt_i[0:0];

    // valid_fanout_reg21(REG,286)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg22(REG,287)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist38_sync_together170_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist54_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2(DELAY,479)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_q <= '0;
        end
        else
        begin
            redist54_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_q <= $unsigned(redist53_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_1_q);
        end
    end

    // i_llvm_fpga_push_f32_lm53_push61_conv2d1x172(BLACKBOX,131)@3
    // out out_feedback_out_61@20000000
    // out out_feedback_valid_out_61@20000000
    conv2d1x1_i_llvm_fpga_push_f32_lm53_push61_0 thei_llvm_fpga_push_f32_lm53_push61_conv2d1x172 (
        .in_data_in(redist51_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_1_q),
        .in_feedback_stall_in_61(i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_feedback_stall_out_61),
        .in_keep_going(redist54_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(),
        .out_feedback_out_61(i_llvm_fpga_push_f32_lm53_push61_conv2d1x172_out_feedback_out_61),
        .out_feedback_valid_out_61(i_llvm_fpga_push_f32_lm53_push61_conv2d1x172_out_feedback_valid_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together170_aunroll_x_in_c0_eni37_8_tpl_1(DELAY,433)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together170_aunroll_x_in_c0_eni37_8_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together170_aunroll_x_in_c0_eni37_8_tpl_1_q <= $unsigned(in_c0_eni37_8_tpl);
        end
    end

    // i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171(BLACKBOX,116)@2
    // out out_feedback_stall_out_61@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_lm53_pop61_0 thei_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171 (
        .in_data_in(redist8_sync_together170_aunroll_x_in_c0_eni37_8_tpl_1_q),
        .in_dir(redist0_sync_together170_aunroll_x_in_c0_eni37_1_tpl_1_q),
        .in_feedback_in_61(i_llvm_fpga_push_f32_lm53_push61_conv2d1x172_out_feedback_out_61),
        .in_feedback_valid_in_61(i_llvm_fpga_push_f32_lm53_push61_conv2d1x172_out_feedback_valid_out_61),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out),
        .out_feedback_stall_out_61(i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_feedback_stall_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist51_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_1(DELAY,476)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_1_q <= '0;
        end
        else
        begin
            redist51_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out);
        end
    end

    // redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_wraddr(REG,717)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_wraddr_q <= $unsigned(redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_rdcnt_q);
        end
    end

    // redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_mem(DUALMEM,715)
    assign redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_mem_ia = $unsigned(redist51_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_1_q);
    assign redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_mem_aa = redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_wraddr_q;
    assign redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_mem_ab = redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_rdcnt_q;
    assign redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
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
    ) redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_mem_dmem (
        .clocken1(redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_mem_aa),
        .data_a(redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_mem_ab),
        .q_b(redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_mem_iq),
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
    assign redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_mem_q = redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_mem_iq[31:0];

    // i_masked_conv2d1x168(LOGICAL,168)@2 + 1
    assign i_masked_conv2d1x168_qi = i_notcmp_conv2d1x163_q & i_first_cleanup_conv2d1x13_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_conv2d1x168_delay ( .xin(i_masked_conv2d1x168_qi), .xout(i_masked_conv2d1x168_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist45_i_masked_conv2d1x168_q_4(DELAY,470)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_masked_conv2d1x168_q_4_delay_0 <= '0;
            redist45_i_masked_conv2d1x168_q_4_delay_1 <= '0;
            redist45_i_masked_conv2d1x168_q_4_q <= '0;
        end
        else
        begin
            redist45_i_masked_conv2d1x168_q_4_delay_0 <= $unsigned(i_masked_conv2d1x168_q);
            redist45_i_masked_conv2d1x168_q_4_delay_1 <= redist45_i_masked_conv2d1x168_q_4_delay_0;
            redist45_i_masked_conv2d1x168_q_4_q <= redist45_i_masked_conv2d1x168_q_4_delay_1;
        end
    end

    // leftShiftStage0Idx1Rng2_uid405_i_shl_conv2d1x10_shift_x(BITSELECT,404)@2
    assign leftShiftStage0Idx1Rng2_uid405_i_shl_conv2d1x10_shift_x_in = i_llvm_fpga_pop_i32_k_064_pop54_conv2d1x120_out_data_out[29:0];
    assign leftShiftStage0Idx1Rng2_uid405_i_shl_conv2d1x10_shift_x_b = leftShiftStage0Idx1Rng2_uid405_i_shl_conv2d1x10_shift_x_in[29:0];

    // leftShiftStage0Idx1_uid406_i_shl_conv2d1x10_shift_x(BITJOIN,405)@2
    assign leftShiftStage0Idx1_uid406_i_shl_conv2d1x10_shift_x_q = {leftShiftStage0Idx1Rng2_uid405_i_shl_conv2d1x10_shift_x_b, i_arrayidx204_conv2d1x130_vt_const_1_q};

    // valid_fanout_reg6(REG,271)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg18(REG,283)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_1126(CONSTANT,55)
    assign c_i32_1126_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc82_conv2d1x156(ADD,112)@2
    assign i_inc82_conv2d1x156_a = {1'b0, i_llvm_fpga_pop_i32_k_064_pop54_conv2d1x120_out_data_out};
    assign i_inc82_conv2d1x156_b = {1'b0, c_i32_1126_q};
    assign i_inc82_conv2d1x156_o = $unsigned(i_inc82_conv2d1x156_a) + $unsigned(i_inc82_conv2d1x156_b);
    assign i_inc82_conv2d1x156_q = i_inc82_conv2d1x156_o[32:0];

    // bgTrunc_i_inc82_conv2d1x156_sel_x(BITSELECT,204)@2
    assign bgTrunc_i_inc82_conv2d1x156_sel_x_b = i_inc82_conv2d1x156_q[31:0];

    // i_llvm_fpga_push_i32_k_064_push54_conv2d1x157(BLACKBOX,142)@2
    // out out_feedback_out_54@20000000
    // out out_feedback_valid_out_54@20000000
    conv2d1x1_i_llvm_fpga_push_i32_k_064_push54_0 thei_llvm_fpga_push_i32_k_064_push54_conv2d1x157 (
        .in_data_in(bgTrunc_i_inc82_conv2d1x156_sel_x_b),
        .in_feedback_stall_in_54(i_llvm_fpga_pop_i32_k_064_pop54_conv2d1x120_out_feedback_stall_out_54),
        .in_keep_going(redist53_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_54(i_llvm_fpga_push_i32_k_064_push54_conv2d1x157_out_feedback_out_54),
        .out_feedback_valid_out_54(i_llvm_fpga_push_i32_k_064_push54_conv2d1x157_out_feedback_valid_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_0124(CONSTANT,54)
    assign c_i32_0124_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_k_064_pop54_conv2d1x120(BLACKBOX,125)@2
    // out out_feedback_stall_out_54@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_k_064_pop54_0 thei_llvm_fpga_pop_i32_k_064_pop54_conv2d1x120 (
        .in_data_in(c_i32_0124_q),
        .in_dir(redist0_sync_together170_aunroll_x_in_c0_eni37_1_tpl_1_q),
        .in_feedback_in_54(i_llvm_fpga_push_i32_k_064_push54_conv2d1x157_out_feedback_out_54),
        .in_feedback_valid_in_54(i_llvm_fpga_push_i32_k_064_push54_conv2d1x157_out_feedback_valid_out_54),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_064_pop54_conv2d1x120_out_data_out),
        .out_feedback_stall_out_54(i_llvm_fpga_pop_i32_k_064_pop54_conv2d1x120_out_feedback_stall_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage0_uid408_i_shl_conv2d1x10_shift_x(MUX,407)@2
    assign leftShiftStage0_uid408_i_shl_conv2d1x10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid408_i_shl_conv2d1x10_shift_x_s or i_llvm_fpga_pop_i32_k_064_pop54_conv2d1x120_out_data_out or leftShiftStage0Idx1_uid406_i_shl_conv2d1x10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid408_i_shl_conv2d1x10_shift_x_s)
            1'b0 : leftShiftStage0_uid408_i_shl_conv2d1x10_shift_x_q = i_llvm_fpga_pop_i32_k_064_pop54_conv2d1x120_out_data_out;
            1'b1 : leftShiftStage0_uid408_i_shl_conv2d1x10_shift_x_q = leftShiftStage0Idx1_uid406_i_shl_conv2d1x10_shift_x_q;
            default : leftShiftStage0_uid408_i_shl_conv2d1x10_shift_x_q = 32'b0;
        endcase
    end

    // i_shl_conv2d1x121_vt_select_31(BITSELECT,187)@2
    assign i_shl_conv2d1x121_vt_select_31_b = leftShiftStage0_uid408_i_shl_conv2d1x10_shift_x_q[31:2];

    // i_shl_conv2d1x121_vt_join(BITJOIN,186)@2
    assign i_shl_conv2d1x121_vt_join_q = {i_shl_conv2d1x121_vt_select_31_b, i_arrayidx204_conv2d1x130_vt_const_1_q};

    // i_add29_conv2d1x138_BitSelect_for_a(BITSELECT,317)@2
    assign i_add29_conv2d1x138_BitSelect_for_a_b = i_shl_conv2d1x121_vt_join_q[31:2];

    // i_add57_conv2d1x150_join(BITJOIN,322)@2
    assign i_add57_conv2d1x150_join_q = {i_add29_conv2d1x138_BitSelect_for_a_b, VCC_q, VCC_q};

    // i_add57_conv2d1x150_vt_select_31(BITSELECT,76)@2
    assign i_add57_conv2d1x150_vt_select_31_b = i_add57_conv2d1x150_join_q[31:2];

    // i_add57_conv2d1x150_vt_const_1(CONSTANT,74)
    assign i_add57_conv2d1x150_vt_const_1_q = $unsigned(2'b11);

    // i_add57_conv2d1x150_vt_join(BITJOIN,75)@2
    assign i_add57_conv2d1x150_vt_join_q = {i_add57_conv2d1x150_vt_select_31_b, i_add57_conv2d1x150_vt_const_1_q};

    // i_mul59_conv2d1x151_bs2_merged_bit_select(BITSELECT,423)@2
    assign i_mul59_conv2d1x151_bs2_merged_bit_select_b = i_add57_conv2d1x150_vt_join_q[31:18];
    assign i_mul59_conv2d1x151_bs2_merged_bit_select_c = i_add57_conv2d1x150_vt_join_q[17:0];

    // valid_fanout_reg7(REG,272)@1 + 1
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

    // valid_fanout_reg8(REG,273)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_mul50_push57_conv2d1x123(BLACKBOX,145)@2
    // out out_feedback_out_57@20000000
    // out out_feedback_valid_out_57@20000000
    conv2d1x1_i_llvm_fpga_push_i32_mul50_push57_0 thei_llvm_fpga_push_i32_mul50_push57_conv2d1x123 (
        .in_data_in(i_llvm_fpga_pop_i32_mul50_pop57_conv2d1x122_out_data_out),
        .in_feedback_stall_in_57(i_llvm_fpga_pop_i32_mul50_pop57_conv2d1x122_out_feedback_stall_out_57),
        .in_keep_going(redist53_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_57(i_llvm_fpga_push_i32_mul50_push57_conv2d1x123_out_feedback_out_57),
        .out_feedback_valid_out_57(i_llvm_fpga_push_i32_mul50_push57_conv2d1x123_out_feedback_valid_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together170_aunroll_x_in_c0_eni37_4_tpl_1(DELAY,429)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together170_aunroll_x_in_c0_eni37_4_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together170_aunroll_x_in_c0_eni37_4_tpl_1_q <= $unsigned(in_c0_eni37_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul50_pop57_conv2d1x122(BLACKBOX,128)@2
    // out out_feedback_stall_out_57@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_mul50_pop57_0 thei_llvm_fpga_pop_i32_mul50_pop57_conv2d1x122 (
        .in_data_in(redist4_sync_together170_aunroll_x_in_c0_eni37_4_tpl_1_q),
        .in_dir(redist0_sync_together170_aunroll_x_in_c0_eni37_1_tpl_1_q),
        .in_feedback_in_57(i_llvm_fpga_push_i32_mul50_push57_conv2d1x123_out_feedback_out_57),
        .in_feedback_valid_in_57(i_llvm_fpga_push_i32_mul50_push57_conv2d1x123_out_feedback_valid_out_57),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul50_pop57_conv2d1x122_out_data_out),
        .out_feedback_stall_out_57(i_llvm_fpga_pop_i32_mul50_pop57_conv2d1x122_out_feedback_stall_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul17_conv2d1x124_bs1_merged_bit_select(BITSELECT,424)@2
    assign i_mul17_conv2d1x124_bs1_merged_bit_select_b = i_llvm_fpga_pop_i32_mul50_pop57_conv2d1x122_out_data_out[31:18];
    assign i_mul17_conv2d1x124_bs1_merged_bit_select_c = i_llvm_fpga_pop_i32_mul50_pop57_conv2d1x122_out_data_out[17:0];

    // i_mul59_conv2d1x151_ma3_cma(CHAINMULTADD,420)@2 + 3
    assign i_mul59_conv2d1x151_ma3_cma_reset = ~ (resetn);
    assign i_mul59_conv2d1x151_ma3_cma_ena0 = 1'b1;
    assign i_mul59_conv2d1x151_ma3_cma_ena1 = i_mul59_conv2d1x151_ma3_cma_ena0;
    assign i_mul59_conv2d1x151_ma3_cma_ena2 = i_mul59_conv2d1x151_ma3_cma_ena0;

    assign i_mul59_conv2d1x151_ma3_cma_a0 = i_mul17_conv2d1x124_bs1_merged_bit_select_b;
    assign i_mul59_conv2d1x151_ma3_cma_c0 = i_mul59_conv2d1x151_bs2_merged_bit_select_c;
    assign i_mul59_conv2d1x151_ma3_cma_a1 = i_mul59_conv2d1x151_bs2_merged_bit_select_b;
    assign i_mul59_conv2d1x151_ma3_cma_c1 = i_mul17_conv2d1x124_bs1_merged_bit_select_c;
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
    ) i_mul59_conv2d1x151_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul59_conv2d1x151_ma3_cma_ena2, i_mul59_conv2d1x151_ma3_cma_ena1, i_mul59_conv2d1x151_ma3_cma_ena0 }),
        .aclr({ i_mul59_conv2d1x151_ma3_cma_reset, i_mul59_conv2d1x151_ma3_cma_reset }),
        .ay(i_mul59_conv2d1x151_ma3_cma_a1),
        .by(i_mul59_conv2d1x151_ma3_cma_a0),
        .ax(i_mul59_conv2d1x151_ma3_cma_c1),
        .bx(i_mul59_conv2d1x151_ma3_cma_c0),
        .resulta(i_mul59_conv2d1x151_ma3_cma_s0),
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
    i_mul59_conv2d1x151_ma3_cma_delay ( .xin(i_mul59_conv2d1x151_ma3_cma_s0), .xout(i_mul59_conv2d1x151_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul59_conv2d1x151_ma3_cma_q = $unsigned(i_mul59_conv2d1x151_ma3_cma_qq[32:0]);

    // i_mul59_conv2d1x151_sums_align_1(BITSHIFT,382)@5
    assign i_mul59_conv2d1x151_sums_align_1_qint = { i_mul59_conv2d1x151_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul59_conv2d1x151_sums_align_1_q = i_mul59_conv2d1x151_sums_align_1_qint[50:0];

    // i_mul59_conv2d1x151_im0_cma(CHAINMULTADD,415)@2 + 3
    assign i_mul59_conv2d1x151_im0_cma_reset = ~ (resetn);
    assign i_mul59_conv2d1x151_im0_cma_ena0 = 1'b1;
    assign i_mul59_conv2d1x151_im0_cma_ena1 = i_mul59_conv2d1x151_im0_cma_ena0;
    assign i_mul59_conv2d1x151_im0_cma_ena2 = i_mul59_conv2d1x151_im0_cma_ena0;

    assign i_mul59_conv2d1x151_im0_cma_a0 = i_mul17_conv2d1x124_bs1_merged_bit_select_b;
    assign i_mul59_conv2d1x151_im0_cma_c0 = i_mul59_conv2d1x151_bs2_merged_bit_select_b;
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
    ) i_mul59_conv2d1x151_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul59_conv2d1x151_im0_cma_ena2, i_mul59_conv2d1x151_im0_cma_ena1, i_mul59_conv2d1x151_im0_cma_ena0 }),
        .aclr({ i_mul59_conv2d1x151_im0_cma_reset, i_mul59_conv2d1x151_im0_cma_reset }),
        .ay(i_mul59_conv2d1x151_im0_cma_a0),
        .ax(i_mul59_conv2d1x151_im0_cma_c0),
        .resulta(i_mul59_conv2d1x151_im0_cma_s0),
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
    i_mul59_conv2d1x151_im0_cma_delay ( .xin(i_mul59_conv2d1x151_im0_cma_s0), .xout(i_mul59_conv2d1x151_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul59_conv2d1x151_im0_cma_q = $unsigned(i_mul59_conv2d1x151_im0_cma_qq[27:0]);

    // i_mul59_conv2d1x151_im8_cma(CHAINMULTADD,416)@2 + 3
    assign i_mul59_conv2d1x151_im8_cma_reset = ~ (resetn);
    assign i_mul59_conv2d1x151_im8_cma_ena0 = 1'b1;
    assign i_mul59_conv2d1x151_im8_cma_ena1 = i_mul59_conv2d1x151_im8_cma_ena0;
    assign i_mul59_conv2d1x151_im8_cma_ena2 = i_mul59_conv2d1x151_im8_cma_ena0;

    assign i_mul59_conv2d1x151_im8_cma_a0 = i_mul17_conv2d1x124_bs1_merged_bit_select_c;
    assign i_mul59_conv2d1x151_im8_cma_c0 = i_mul59_conv2d1x151_bs2_merged_bit_select_c;
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
    ) i_mul59_conv2d1x151_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul59_conv2d1x151_im8_cma_ena2, i_mul59_conv2d1x151_im8_cma_ena1, i_mul59_conv2d1x151_im8_cma_ena0 }),
        .aclr({ i_mul59_conv2d1x151_im8_cma_reset, i_mul59_conv2d1x151_im8_cma_reset }),
        .ay(i_mul59_conv2d1x151_im8_cma_a0),
        .ax(i_mul59_conv2d1x151_im8_cma_c0),
        .resulta(i_mul59_conv2d1x151_im8_cma_s0),
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
    i_mul59_conv2d1x151_im8_cma_delay ( .xin(i_mul59_conv2d1x151_im8_cma_s0), .xout(i_mul59_conv2d1x151_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul59_conv2d1x151_im8_cma_q = $unsigned(i_mul59_conv2d1x151_im8_cma_qq[35:0]);

    // i_mul59_conv2d1x151_sums_join_0(BITJOIN,381)@5
    assign i_mul59_conv2d1x151_sums_join_0_q = {i_mul59_conv2d1x151_im0_cma_q, i_mul59_conv2d1x151_im8_cma_q};

    // i_mul59_conv2d1x151_sums_result_add_0_0(ADD,384)@5
    assign i_mul59_conv2d1x151_sums_result_add_0_0_a = {1'b0, i_mul59_conv2d1x151_sums_join_0_q};
    assign i_mul59_conv2d1x151_sums_result_add_0_0_b = {14'b00000000000000, i_mul59_conv2d1x151_sums_align_1_q};
    assign i_mul59_conv2d1x151_sums_result_add_0_0_o = $unsigned(i_mul59_conv2d1x151_sums_result_add_0_0_a) + $unsigned(i_mul59_conv2d1x151_sums_result_add_0_0_b);
    assign i_mul59_conv2d1x151_sums_result_add_0_0_q = i_mul59_conv2d1x151_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul59_conv2d1x151_sel_x(BITSELECT,208)@5
    assign bgTrunc_i_mul59_conv2d1x151_sel_x_in = i_mul59_conv2d1x151_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul59_conv2d1x151_sel_x_b = bgTrunc_i_mul59_conv2d1x151_sel_x_in[31:0];

    // redist40_bgTrunc_i_mul59_conv2d1x151_sel_x_b_1(DELAY,465)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_bgTrunc_i_mul59_conv2d1x151_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist40_bgTrunc_i_mul59_conv2d1x151_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul59_conv2d1x151_sel_x_b);
        end
    end

    // i_add60_conv2d1x152(ADD,77)@6
    assign i_add60_conv2d1x152_a = {1'b0, redist40_bgTrunc_i_mul59_conv2d1x151_sel_x_b_1_q};
    assign i_add60_conv2d1x152_b = {1'b0, redist47_i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_data_out_4_outputreg0_q};
    assign i_add60_conv2d1x152_o = $unsigned(i_add60_conv2d1x152_a) + $unsigned(i_add60_conv2d1x152_b);
    assign i_add60_conv2d1x152_q = i_add60_conv2d1x152_o[32:0];

    // bgTrunc_i_add60_conv2d1x152_sel_x(BITSELECT,202)@6
    assign bgTrunc_i_add60_conv2d1x152_sel_x_b = i_add60_conv2d1x152_q[31:0];

    // i_idxprom61_conv2d1x153_sel_x(BITSELECT,253)@6
    assign i_idxprom61_conv2d1x153_sel_x_b = $unsigned({{32{bgTrunc_i_add60_conv2d1x152_sel_x_b[31]}}, bgTrunc_i_add60_conv2d1x152_sel_x_b[31:0]});

    // i_arrayidx628_conv2d1x10_narrow_x(BITSELECT,240)@6
    assign i_arrayidx628_conv2d1x10_narrow_x_b = i_idxprom61_conv2d1x153_sel_x_b[61:0];

    // i_arrayidx628_conv2d1x10_shift_join_x(BITJOIN,241)@6
    assign i_arrayidx628_conv2d1x10_shift_join_x_q = {i_arrayidx628_conv2d1x10_narrow_x_b, i_arrayidx204_conv2d1x130_vt_const_1_q};

    // valid_fanout_reg17(REG,282)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist39_sync_together170_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x154(BLACKBOX,156)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0000ut_im_sync_buffer8_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x154 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x154_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x154_vt_select_63(BITSELECT,159)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x154_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x154_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_vt_const_9(CONSTANT,149)
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x154_vt_join(BITJOIN,158)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x154_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x154_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_vt_const_9_q};

    // i_arrayidx628_conv2d1x10_add_x(ADD,238)@6
    assign i_arrayidx628_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x154_vt_join_q};
    assign i_arrayidx628_conv2d1x10_add_x_b = {1'b0, i_arrayidx628_conv2d1x10_shift_join_x_q};
    assign i_arrayidx628_conv2d1x10_add_x_o = $unsigned(i_arrayidx628_conv2d1x10_add_x_a) + $unsigned(i_arrayidx628_conv2d1x10_add_x_b);
    assign i_arrayidx628_conv2d1x10_add_x_q = i_arrayidx628_conv2d1x10_add_x_o[64:0];

    // i_arrayidx628_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,243)@6
    assign i_arrayidx628_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx628_conv2d1x10_add_x_q[63:0];

    // i_arrayidx628_conv2d1x155_vt_select_63(BITSELECT,92)@6
    assign i_arrayidx628_conv2d1x155_vt_select_63_b = i_arrayidx628_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx204_conv2d1x130_vt_const_1(CONSTANT,78)
    assign i_arrayidx204_conv2d1x130_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx628_conv2d1x155_vt_join(BITJOIN,91)@6
    assign i_arrayidx628_conv2d1x155_vt_join_q = {i_arrayidx628_conv2d1x155_vt_select_63_b, i_arrayidx204_conv2d1x130_vt_const_1_q};

    // i_add43_conv2d1x144_join(BITJOIN,320)@2
    assign i_add43_conv2d1x144_join_q = {i_add29_conv2d1x138_BitSelect_for_a_b, VCC_q, GND_q};

    // i_add43_conv2d1x144_vt_select_31(BITSELECT,71)@2
    assign i_add43_conv2d1x144_vt_select_31_b = i_add43_conv2d1x144_join_q[31:2];

    // i_add43_conv2d1x144_vt_const_1(CONSTANT,69)
    assign i_add43_conv2d1x144_vt_const_1_q = $unsigned(2'b10);

    // i_add43_conv2d1x144_vt_join(BITJOIN,70)@2
    assign i_add43_conv2d1x144_vt_join_q = {i_add43_conv2d1x144_vt_select_31_b, i_add43_conv2d1x144_vt_const_1_q};

    // i_mul45_conv2d1x145_bs2_merged_bit_select(BITSELECT,422)@2
    assign i_mul45_conv2d1x145_bs2_merged_bit_select_b = i_add43_conv2d1x144_vt_join_q[31:18];
    assign i_mul45_conv2d1x145_bs2_merged_bit_select_c = i_add43_conv2d1x144_vt_join_q[17:0];

    // i_mul45_conv2d1x145_ma3_cma(CHAINMULTADD,419)@2 + 3
    assign i_mul45_conv2d1x145_ma3_cma_reset = ~ (resetn);
    assign i_mul45_conv2d1x145_ma3_cma_ena0 = 1'b1;
    assign i_mul45_conv2d1x145_ma3_cma_ena1 = i_mul45_conv2d1x145_ma3_cma_ena0;
    assign i_mul45_conv2d1x145_ma3_cma_ena2 = i_mul45_conv2d1x145_ma3_cma_ena0;

    assign i_mul45_conv2d1x145_ma3_cma_a0 = i_mul17_conv2d1x124_bs1_merged_bit_select_b;
    assign i_mul45_conv2d1x145_ma3_cma_c0 = i_mul45_conv2d1x145_bs2_merged_bit_select_c;
    assign i_mul45_conv2d1x145_ma3_cma_a1 = i_mul45_conv2d1x145_bs2_merged_bit_select_b;
    assign i_mul45_conv2d1x145_ma3_cma_c1 = i_mul17_conv2d1x124_bs1_merged_bit_select_c;
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
    ) i_mul45_conv2d1x145_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul45_conv2d1x145_ma3_cma_ena2, i_mul45_conv2d1x145_ma3_cma_ena1, i_mul45_conv2d1x145_ma3_cma_ena0 }),
        .aclr({ i_mul45_conv2d1x145_ma3_cma_reset, i_mul45_conv2d1x145_ma3_cma_reset }),
        .ay(i_mul45_conv2d1x145_ma3_cma_a1),
        .by(i_mul45_conv2d1x145_ma3_cma_a0),
        .ax(i_mul45_conv2d1x145_ma3_cma_c1),
        .bx(i_mul45_conv2d1x145_ma3_cma_c0),
        .resulta(i_mul45_conv2d1x145_ma3_cma_s0),
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
    i_mul45_conv2d1x145_ma3_cma_delay ( .xin(i_mul45_conv2d1x145_ma3_cma_s0), .xout(i_mul45_conv2d1x145_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul45_conv2d1x145_ma3_cma_q = $unsigned(i_mul45_conv2d1x145_ma3_cma_qq[32:0]);

    // i_mul45_conv2d1x145_sums_align_1(BITSHIFT,367)@5
    assign i_mul45_conv2d1x145_sums_align_1_qint = { i_mul45_conv2d1x145_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul45_conv2d1x145_sums_align_1_q = i_mul45_conv2d1x145_sums_align_1_qint[50:0];

    // i_mul45_conv2d1x145_im0_cma(CHAINMULTADD,413)@2 + 3
    assign i_mul45_conv2d1x145_im0_cma_reset = ~ (resetn);
    assign i_mul45_conv2d1x145_im0_cma_ena0 = 1'b1;
    assign i_mul45_conv2d1x145_im0_cma_ena1 = i_mul45_conv2d1x145_im0_cma_ena0;
    assign i_mul45_conv2d1x145_im0_cma_ena2 = i_mul45_conv2d1x145_im0_cma_ena0;

    assign i_mul45_conv2d1x145_im0_cma_a0 = i_mul17_conv2d1x124_bs1_merged_bit_select_b;
    assign i_mul45_conv2d1x145_im0_cma_c0 = i_mul45_conv2d1x145_bs2_merged_bit_select_b;
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
    ) i_mul45_conv2d1x145_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul45_conv2d1x145_im0_cma_ena2, i_mul45_conv2d1x145_im0_cma_ena1, i_mul45_conv2d1x145_im0_cma_ena0 }),
        .aclr({ i_mul45_conv2d1x145_im0_cma_reset, i_mul45_conv2d1x145_im0_cma_reset }),
        .ay(i_mul45_conv2d1x145_im0_cma_a0),
        .ax(i_mul45_conv2d1x145_im0_cma_c0),
        .resulta(i_mul45_conv2d1x145_im0_cma_s0),
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
    i_mul45_conv2d1x145_im0_cma_delay ( .xin(i_mul45_conv2d1x145_im0_cma_s0), .xout(i_mul45_conv2d1x145_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul45_conv2d1x145_im0_cma_q = $unsigned(i_mul45_conv2d1x145_im0_cma_qq[27:0]);

    // i_mul45_conv2d1x145_im8_cma(CHAINMULTADD,414)@2 + 3
    assign i_mul45_conv2d1x145_im8_cma_reset = ~ (resetn);
    assign i_mul45_conv2d1x145_im8_cma_ena0 = 1'b1;
    assign i_mul45_conv2d1x145_im8_cma_ena1 = i_mul45_conv2d1x145_im8_cma_ena0;
    assign i_mul45_conv2d1x145_im8_cma_ena2 = i_mul45_conv2d1x145_im8_cma_ena0;

    assign i_mul45_conv2d1x145_im8_cma_a0 = i_mul17_conv2d1x124_bs1_merged_bit_select_c;
    assign i_mul45_conv2d1x145_im8_cma_c0 = i_mul45_conv2d1x145_bs2_merged_bit_select_c;
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
    ) i_mul45_conv2d1x145_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul45_conv2d1x145_im8_cma_ena2, i_mul45_conv2d1x145_im8_cma_ena1, i_mul45_conv2d1x145_im8_cma_ena0 }),
        .aclr({ i_mul45_conv2d1x145_im8_cma_reset, i_mul45_conv2d1x145_im8_cma_reset }),
        .ay(i_mul45_conv2d1x145_im8_cma_a0),
        .ax(i_mul45_conv2d1x145_im8_cma_c0),
        .resulta(i_mul45_conv2d1x145_im8_cma_s0),
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
    i_mul45_conv2d1x145_im8_cma_delay ( .xin(i_mul45_conv2d1x145_im8_cma_s0), .xout(i_mul45_conv2d1x145_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul45_conv2d1x145_im8_cma_q = $unsigned(i_mul45_conv2d1x145_im8_cma_qq[35:0]);

    // i_mul45_conv2d1x145_sums_join_0(BITJOIN,366)@5
    assign i_mul45_conv2d1x145_sums_join_0_q = {i_mul45_conv2d1x145_im0_cma_q, i_mul45_conv2d1x145_im8_cma_q};

    // i_mul45_conv2d1x145_sums_result_add_0_0(ADD,369)@5
    assign i_mul45_conv2d1x145_sums_result_add_0_0_a = {1'b0, i_mul45_conv2d1x145_sums_join_0_q};
    assign i_mul45_conv2d1x145_sums_result_add_0_0_b = {14'b00000000000000, i_mul45_conv2d1x145_sums_align_1_q};
    assign i_mul45_conv2d1x145_sums_result_add_0_0_o = $unsigned(i_mul45_conv2d1x145_sums_result_add_0_0_a) + $unsigned(i_mul45_conv2d1x145_sums_result_add_0_0_b);
    assign i_mul45_conv2d1x145_sums_result_add_0_0_q = i_mul45_conv2d1x145_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul45_conv2d1x145_sel_x(BITSELECT,207)@5
    assign bgTrunc_i_mul45_conv2d1x145_sel_x_in = i_mul45_conv2d1x145_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul45_conv2d1x145_sel_x_b = bgTrunc_i_mul45_conv2d1x145_sel_x_in[31:0];

    // i_mul45_conv2d1x145_vt_select_31(BITSELECT,177)@5
    assign i_mul45_conv2d1x145_vt_select_31_b = bgTrunc_i_mul45_conv2d1x145_sel_x_b[31:1];

    // redist43_i_mul45_conv2d1x145_vt_select_31_b_1(DELAY,468)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_mul45_conv2d1x145_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist43_i_mul45_conv2d1x145_vt_select_31_b_1_q <= $unsigned(i_mul45_conv2d1x145_vt_select_31_b);
        end
    end

    // i_mul45_conv2d1x145_vt_join(BITJOIN,176)@6
    assign i_mul45_conv2d1x145_vt_join_q = {redist43_i_mul45_conv2d1x145_vt_select_31_b_1_q, GND_q};

    // i_add46_conv2d1x146(ADD,72)@6
    assign i_add46_conv2d1x146_a = {1'b0, i_mul45_conv2d1x145_vt_join_q};
    assign i_add46_conv2d1x146_b = {1'b0, redist47_i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_data_out_4_outputreg0_q};
    assign i_add46_conv2d1x146_o = $unsigned(i_add46_conv2d1x146_a) + $unsigned(i_add46_conv2d1x146_b);
    assign i_add46_conv2d1x146_q = i_add46_conv2d1x146_o[32:0];

    // bgTrunc_i_add46_conv2d1x146_sel_x(BITSELECT,201)@6
    assign bgTrunc_i_add46_conv2d1x146_sel_x_b = i_add46_conv2d1x146_q[31:0];

    // i_idxprom47_conv2d1x147_sel_x(BITSELECT,252)@6
    assign i_idxprom47_conv2d1x147_sel_x_b = $unsigned({{32{bgTrunc_i_add46_conv2d1x146_sel_x_b[31]}}, bgTrunc_i_add46_conv2d1x146_sel_x_b[31:0]});

    // i_arrayidx487_conv2d1x10_narrow_x(BITSELECT,234)@6
    assign i_arrayidx487_conv2d1x10_narrow_x_b = i_idxprom47_conv2d1x147_sel_x_b[61:0];

    // i_arrayidx487_conv2d1x10_shift_join_x(BITJOIN,235)@6
    assign i_arrayidx487_conv2d1x10_shift_join_x_q = {i_arrayidx487_conv2d1x10_narrow_x_b, i_arrayidx204_conv2d1x130_vt_const_1_q};

    // valid_fanout_reg16(REG,281)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist39_sync_together170_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x148(BLACKBOX,152)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0000ut_im_sync_buffer7_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x148 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x148_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x148_vt_select_63(BITSELECT,155)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x148_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x148_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x148_vt_join(BITJOIN,154)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x148_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x148_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_vt_const_9_q};

    // i_arrayidx487_conv2d1x10_add_x(ADD,232)@6
    assign i_arrayidx487_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x148_vt_join_q};
    assign i_arrayidx487_conv2d1x10_add_x_b = {1'b0, i_arrayidx487_conv2d1x10_shift_join_x_q};
    assign i_arrayidx487_conv2d1x10_add_x_o = $unsigned(i_arrayidx487_conv2d1x10_add_x_a) + $unsigned(i_arrayidx487_conv2d1x10_add_x_b);
    assign i_arrayidx487_conv2d1x10_add_x_q = i_arrayidx487_conv2d1x10_add_x_o[64:0];

    // i_arrayidx487_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,237)@6
    assign i_arrayidx487_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx487_conv2d1x10_add_x_q[63:0];

    // i_arrayidx487_conv2d1x149_vt_select_63(BITSELECT,89)@6
    assign i_arrayidx487_conv2d1x149_vt_select_63_b = i_arrayidx487_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx487_conv2d1x149_vt_join(BITJOIN,88)@6
    assign i_arrayidx487_conv2d1x149_vt_join_q = {i_arrayidx487_conv2d1x149_vt_select_63_b, i_arrayidx204_conv2d1x130_vt_const_1_q};

    // i_add29_conv2d1x138_join(BITJOIN,318)@2
    assign i_add29_conv2d1x138_join_q = {i_add29_conv2d1x138_BitSelect_for_a_b, GND_q, VCC_q};

    // i_add29_conv2d1x138_vt_select_31(BITSELECT,66)@2
    assign i_add29_conv2d1x138_vt_select_31_b = i_add29_conv2d1x138_join_q[31:2];

    // i_add29_conv2d1x138_vt_join(BITJOIN,65)@2
    assign i_add29_conv2d1x138_vt_join_q = {i_add29_conv2d1x138_vt_select_31_b, c_i2_1121_q};

    // i_mul31_conv2d1x139_bs2_merged_bit_select(BITSELECT,421)@2
    assign i_mul31_conv2d1x139_bs2_merged_bit_select_b = i_add29_conv2d1x138_vt_join_q[31:18];
    assign i_mul31_conv2d1x139_bs2_merged_bit_select_c = i_add29_conv2d1x138_vt_join_q[17:0];

    // i_mul31_conv2d1x139_ma3_cma(CHAINMULTADD,418)@2 + 3
    assign i_mul31_conv2d1x139_ma3_cma_reset = ~ (resetn);
    assign i_mul31_conv2d1x139_ma3_cma_ena0 = 1'b1;
    assign i_mul31_conv2d1x139_ma3_cma_ena1 = i_mul31_conv2d1x139_ma3_cma_ena0;
    assign i_mul31_conv2d1x139_ma3_cma_ena2 = i_mul31_conv2d1x139_ma3_cma_ena0;

    assign i_mul31_conv2d1x139_ma3_cma_a0 = i_mul17_conv2d1x124_bs1_merged_bit_select_b;
    assign i_mul31_conv2d1x139_ma3_cma_c0 = i_mul31_conv2d1x139_bs2_merged_bit_select_c;
    assign i_mul31_conv2d1x139_ma3_cma_a1 = i_mul31_conv2d1x139_bs2_merged_bit_select_b;
    assign i_mul31_conv2d1x139_ma3_cma_c1 = i_mul17_conv2d1x124_bs1_merged_bit_select_c;
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
    ) i_mul31_conv2d1x139_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul31_conv2d1x139_ma3_cma_ena2, i_mul31_conv2d1x139_ma3_cma_ena1, i_mul31_conv2d1x139_ma3_cma_ena0 }),
        .aclr({ i_mul31_conv2d1x139_ma3_cma_reset, i_mul31_conv2d1x139_ma3_cma_reset }),
        .ay(i_mul31_conv2d1x139_ma3_cma_a1),
        .by(i_mul31_conv2d1x139_ma3_cma_a0),
        .ax(i_mul31_conv2d1x139_ma3_cma_c1),
        .bx(i_mul31_conv2d1x139_ma3_cma_c0),
        .resulta(i_mul31_conv2d1x139_ma3_cma_s0),
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
    i_mul31_conv2d1x139_ma3_cma_delay ( .xin(i_mul31_conv2d1x139_ma3_cma_s0), .xout(i_mul31_conv2d1x139_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul31_conv2d1x139_ma3_cma_q = $unsigned(i_mul31_conv2d1x139_ma3_cma_qq[32:0]);

    // i_mul31_conv2d1x139_sums_align_1(BITSHIFT,352)@5
    assign i_mul31_conv2d1x139_sums_align_1_qint = { i_mul31_conv2d1x139_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul31_conv2d1x139_sums_align_1_q = i_mul31_conv2d1x139_sums_align_1_qint[50:0];

    // i_mul31_conv2d1x139_im0_cma(CHAINMULTADD,411)@2 + 3
    assign i_mul31_conv2d1x139_im0_cma_reset = ~ (resetn);
    assign i_mul31_conv2d1x139_im0_cma_ena0 = 1'b1;
    assign i_mul31_conv2d1x139_im0_cma_ena1 = i_mul31_conv2d1x139_im0_cma_ena0;
    assign i_mul31_conv2d1x139_im0_cma_ena2 = i_mul31_conv2d1x139_im0_cma_ena0;

    assign i_mul31_conv2d1x139_im0_cma_a0 = i_mul17_conv2d1x124_bs1_merged_bit_select_b;
    assign i_mul31_conv2d1x139_im0_cma_c0 = i_mul31_conv2d1x139_bs2_merged_bit_select_b;
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
    ) i_mul31_conv2d1x139_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul31_conv2d1x139_im0_cma_ena2, i_mul31_conv2d1x139_im0_cma_ena1, i_mul31_conv2d1x139_im0_cma_ena0 }),
        .aclr({ i_mul31_conv2d1x139_im0_cma_reset, i_mul31_conv2d1x139_im0_cma_reset }),
        .ay(i_mul31_conv2d1x139_im0_cma_a0),
        .ax(i_mul31_conv2d1x139_im0_cma_c0),
        .resulta(i_mul31_conv2d1x139_im0_cma_s0),
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
    i_mul31_conv2d1x139_im0_cma_delay ( .xin(i_mul31_conv2d1x139_im0_cma_s0), .xout(i_mul31_conv2d1x139_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul31_conv2d1x139_im0_cma_q = $unsigned(i_mul31_conv2d1x139_im0_cma_qq[27:0]);

    // i_mul31_conv2d1x139_im8_cma(CHAINMULTADD,412)@2 + 3
    assign i_mul31_conv2d1x139_im8_cma_reset = ~ (resetn);
    assign i_mul31_conv2d1x139_im8_cma_ena0 = 1'b1;
    assign i_mul31_conv2d1x139_im8_cma_ena1 = i_mul31_conv2d1x139_im8_cma_ena0;
    assign i_mul31_conv2d1x139_im8_cma_ena2 = i_mul31_conv2d1x139_im8_cma_ena0;

    assign i_mul31_conv2d1x139_im8_cma_a0 = i_mul17_conv2d1x124_bs1_merged_bit_select_c;
    assign i_mul31_conv2d1x139_im8_cma_c0 = i_mul31_conv2d1x139_bs2_merged_bit_select_c;
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
    ) i_mul31_conv2d1x139_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul31_conv2d1x139_im8_cma_ena2, i_mul31_conv2d1x139_im8_cma_ena1, i_mul31_conv2d1x139_im8_cma_ena0 }),
        .aclr({ i_mul31_conv2d1x139_im8_cma_reset, i_mul31_conv2d1x139_im8_cma_reset }),
        .ay(i_mul31_conv2d1x139_im8_cma_a0),
        .ax(i_mul31_conv2d1x139_im8_cma_c0),
        .resulta(i_mul31_conv2d1x139_im8_cma_s0),
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
    i_mul31_conv2d1x139_im8_cma_delay ( .xin(i_mul31_conv2d1x139_im8_cma_s0), .xout(i_mul31_conv2d1x139_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul31_conv2d1x139_im8_cma_q = $unsigned(i_mul31_conv2d1x139_im8_cma_qq[35:0]);

    // i_mul31_conv2d1x139_sums_join_0(BITJOIN,351)@5
    assign i_mul31_conv2d1x139_sums_join_0_q = {i_mul31_conv2d1x139_im0_cma_q, i_mul31_conv2d1x139_im8_cma_q};

    // i_mul31_conv2d1x139_sums_result_add_0_0(ADD,354)@5
    assign i_mul31_conv2d1x139_sums_result_add_0_0_a = {1'b0, i_mul31_conv2d1x139_sums_join_0_q};
    assign i_mul31_conv2d1x139_sums_result_add_0_0_b = {14'b00000000000000, i_mul31_conv2d1x139_sums_align_1_q};
    assign i_mul31_conv2d1x139_sums_result_add_0_0_o = $unsigned(i_mul31_conv2d1x139_sums_result_add_0_0_a) + $unsigned(i_mul31_conv2d1x139_sums_result_add_0_0_b);
    assign i_mul31_conv2d1x139_sums_result_add_0_0_q = i_mul31_conv2d1x139_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul31_conv2d1x139_sel_x(BITSELECT,206)@5
    assign bgTrunc_i_mul31_conv2d1x139_sel_x_in = i_mul31_conv2d1x139_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul31_conv2d1x139_sel_x_b = bgTrunc_i_mul31_conv2d1x139_sel_x_in[31:0];

    // redist41_bgTrunc_i_mul31_conv2d1x139_sel_x_b_1(DELAY,466)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_bgTrunc_i_mul31_conv2d1x139_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist41_bgTrunc_i_mul31_conv2d1x139_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul31_conv2d1x139_sel_x_b);
        end
    end

    // i_add32_conv2d1x140(ADD,67)@6
    assign i_add32_conv2d1x140_a = {1'b0, redist41_bgTrunc_i_mul31_conv2d1x139_sel_x_b_1_q};
    assign i_add32_conv2d1x140_b = {1'b0, redist47_i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_data_out_4_outputreg0_q};
    assign i_add32_conv2d1x140_o = $unsigned(i_add32_conv2d1x140_a) + $unsigned(i_add32_conv2d1x140_b);
    assign i_add32_conv2d1x140_q = i_add32_conv2d1x140_o[32:0];

    // bgTrunc_i_add32_conv2d1x140_sel_x(BITSELECT,200)@6
    assign bgTrunc_i_add32_conv2d1x140_sel_x_b = i_add32_conv2d1x140_q[31:0];

    // i_idxprom33_conv2d1x141_sel_x(BITSELECT,251)@6
    assign i_idxprom33_conv2d1x141_sel_x_b = $unsigned({{32{bgTrunc_i_add32_conv2d1x140_sel_x_b[31]}}, bgTrunc_i_add32_conv2d1x140_sel_x_b[31:0]});

    // i_arrayidx346_conv2d1x10_narrow_x(BITSELECT,228)@6
    assign i_arrayidx346_conv2d1x10_narrow_x_b = i_idxprom33_conv2d1x141_sel_x_b[61:0];

    // i_arrayidx346_conv2d1x10_shift_join_x(BITJOIN,229)@6
    assign i_arrayidx346_conv2d1x10_shift_join_x_q = {i_arrayidx346_conv2d1x10_narrow_x_b, i_arrayidx204_conv2d1x130_vt_const_1_q};

    // valid_fanout_reg15(REG,280)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist39_sync_together170_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142(BLACKBOX,148)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0000ut_im_sync_buffer6_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_vt_select_63(BITSELECT,151)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_vt_join(BITJOIN,150)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_vt_const_9_q};

    // i_arrayidx346_conv2d1x10_add_x(ADD,226)@6
    assign i_arrayidx346_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_vt_join_q};
    assign i_arrayidx346_conv2d1x10_add_x_b = {1'b0, i_arrayidx346_conv2d1x10_shift_join_x_q};
    assign i_arrayidx346_conv2d1x10_add_x_o = $unsigned(i_arrayidx346_conv2d1x10_add_x_a) + $unsigned(i_arrayidx346_conv2d1x10_add_x_b);
    assign i_arrayidx346_conv2d1x10_add_x_q = i_arrayidx346_conv2d1x10_add_x_o[64:0];

    // i_arrayidx346_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,231)@6
    assign i_arrayidx346_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx346_conv2d1x10_add_x_q[63:0];

    // i_arrayidx346_conv2d1x143_vt_select_63(BITSELECT,86)@6
    assign i_arrayidx346_conv2d1x143_vt_select_63_b = i_arrayidx346_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx346_conv2d1x143_vt_join(BITJOIN,85)@6
    assign i_arrayidx346_conv2d1x143_vt_join_q = {i_arrayidx346_conv2d1x143_vt_select_63_b, i_arrayidx204_conv2d1x130_vt_const_1_q};

    // valid_fanout_reg12(REG,277)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg13(REG,278)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_mul2156_push62_conv2d1x133(BLACKBOX,144)@2
    // out out_feedback_out_62@20000000
    // out out_feedback_valid_out_62@20000000
    conv2d1x1_i_llvm_fpga_push_i32_mul2156_push62_0 thei_llvm_fpga_push_i32_mul2156_push62_conv2d1x133 (
        .in_data_in(i_llvm_fpga_pop_i32_mul2156_pop62_conv2d1x132_out_data_out),
        .in_feedback_stall_in_62(i_llvm_fpga_pop_i32_mul2156_pop62_conv2d1x132_out_feedback_stall_out_62),
        .in_keep_going(redist53_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_62(i_llvm_fpga_push_i32_mul2156_push62_conv2d1x133_out_feedback_out_62),
        .out_feedback_valid_out_62(i_llvm_fpga_push_i32_mul2156_push62_conv2d1x133_out_feedback_valid_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together170_aunroll_x_in_c0_eni37_6_tpl_1(DELAY,431)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together170_aunroll_x_in_c0_eni37_6_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together170_aunroll_x_in_c0_eni37_6_tpl_1_q <= $unsigned(in_c0_eni37_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul2156_pop62_conv2d1x132(BLACKBOX,127)@2
    // out out_feedback_stall_out_62@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_mul2156_pop62_0 thei_llvm_fpga_pop_i32_mul2156_pop62_conv2d1x132 (
        .in_data_in(redist6_sync_together170_aunroll_x_in_c0_eni37_6_tpl_1_q),
        .in_dir(redist0_sync_together170_aunroll_x_in_c0_eni37_1_tpl_1_q),
        .in_feedback_in_62(i_llvm_fpga_push_i32_mul2156_push62_conv2d1x133_out_feedback_out_62),
        .in_feedback_valid_in_62(i_llvm_fpga_push_i32_mul2156_push62_conv2d1x133_out_feedback_valid_out_62),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul2156_pop62_conv2d1x132_out_data_out),
        .out_feedback_stall_out_62(i_llvm_fpga_pop_i32_mul2156_pop62_conv2d1x132_out_feedback_stall_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add22_conv2d1x134(ADD,62)@2
    assign i_add22_conv2d1x134_a = {1'b0, i_llvm_fpga_pop_i32_k_064_pop54_conv2d1x120_out_data_out};
    assign i_add22_conv2d1x134_b = {1'b0, i_llvm_fpga_pop_i32_mul2156_pop62_conv2d1x132_out_data_out};
    assign i_add22_conv2d1x134_o = $unsigned(i_add22_conv2d1x134_a) + $unsigned(i_add22_conv2d1x134_b);
    assign i_add22_conv2d1x134_q = i_add22_conv2d1x134_o[32:0];

    // bgTrunc_i_add22_conv2d1x134_sel_x(BITSELECT,199)@2
    assign bgTrunc_i_add22_conv2d1x134_sel_x_b = i_add22_conv2d1x134_q[31:0];

    // redist42_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_inputreg0(DELAY,712)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_inputreg0_q <= '0;
        end
        else
        begin
            redist42_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_inputreg0_q <= $unsigned(bgTrunc_i_add22_conv2d1x134_sel_x_b);
        end
    end

    // redist42_bgTrunc_i_add22_conv2d1x134_sel_x_b_4(DELAY,467)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_delay_0 <= '0;
            redist42_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_q <= '0;
        end
        else
        begin
            redist42_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_delay_0 <= $unsigned(redist42_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_inputreg0_q);
            redist42_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_q <= redist42_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_delay_0;
        end
    end

    // redist42_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_outputreg0(DELAY,713)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_outputreg0_q <= '0;
        end
        else
        begin
            redist42_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_outputreg0_q <= $unsigned(redist42_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_q);
        end
    end

    // i_idxprom23_conv2d1x135_sel_x(BITSELECT,250)@6
    assign i_idxprom23_conv2d1x135_sel_x_b = $unsigned({{32{redist42_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_outputreg0_q[31]}}, redist42_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_outputreg0_q[31:0]});

    // i_arrayidx245_conv2d1x10_narrow_x(BITSELECT,222)@6
    assign i_arrayidx245_conv2d1x10_narrow_x_b = i_idxprom23_conv2d1x135_sel_x_b[59:0];

    // i_arrayidx245_conv2d1x10_shift_join_x(BITJOIN,223)@6
    assign i_arrayidx245_conv2d1x10_shift_join_x_q = {i_arrayidx245_conv2d1x10_narrow_x_b, i_arrayidx245_conv2d1x137_vt_const_3_q};

    // valid_fanout_reg14(REG,279)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist39_sync_together170_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x136(BLACKBOX,164)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024v0000weight_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x136 (
        .in_buffer_in(in_filter_weight),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x136_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x136_vt_select_63(BITSELECT,167)@6
    assign i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x136_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x136_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x136_vt_join(BITJOIN,166)@6
    assign i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x136_vt_join_q = {i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x136_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_vt_const_9_q};

    // i_arrayidx245_conv2d1x10_add_x(ADD,220)@6
    assign i_arrayidx245_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x136_vt_join_q};
    assign i_arrayidx245_conv2d1x10_add_x_b = {1'b0, i_arrayidx245_conv2d1x10_shift_join_x_q};
    assign i_arrayidx245_conv2d1x10_add_x_o = $unsigned(i_arrayidx245_conv2d1x10_add_x_a) + $unsigned(i_arrayidx245_conv2d1x10_add_x_b);
    assign i_arrayidx245_conv2d1x10_add_x_q = i_arrayidx245_conv2d1x10_add_x_o[64:0];

    // i_arrayidx245_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,225)@6
    assign i_arrayidx245_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx245_conv2d1x10_add_x_q[63:0];

    // i_arrayidx245_conv2d1x137_vt_select_63(BITSELECT,83)@6
    assign i_arrayidx245_conv2d1x137_vt_select_63_b = i_arrayidx245_conv2d1x10_dupName_0_trunc_sel_x_b[63:4];

    // i_arrayidx245_conv2d1x137_vt_const_3(CONSTANT,81)
    assign i_arrayidx245_conv2d1x137_vt_const_3_q = $unsigned(4'b0000);

    // i_arrayidx245_conv2d1x137_vt_join(BITJOIN,82)@6
    assign i_arrayidx245_conv2d1x137_vt_join_q = {i_arrayidx245_conv2d1x137_vt_select_63_b, i_arrayidx245_conv2d1x137_vt_const_3_q};

    // redist56_i_first_cleanup_xor_conv2d1x14_q_4(DELAY,481)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_i_first_cleanup_xor_conv2d1x14_q_4_delay_0 <= '0;
            redist56_i_first_cleanup_xor_conv2d1x14_q_4_delay_1 <= '0;
            redist56_i_first_cleanup_xor_conv2d1x14_q_4_delay_2 <= '0;
            redist56_i_first_cleanup_xor_conv2d1x14_q_4_q <= '0;
        end
        else
        begin
            redist56_i_first_cleanup_xor_conv2d1x14_q_4_delay_0 <= $unsigned(i_first_cleanup_xor_conv2d1x14_q);
            redist56_i_first_cleanup_xor_conv2d1x14_q_4_delay_1 <= redist56_i_first_cleanup_xor_conv2d1x14_q_4_delay_0;
            redist56_i_first_cleanup_xor_conv2d1x14_q_4_delay_2 <= redist56_i_first_cleanup_xor_conv2d1x14_q_4_delay_1;
            redist56_i_first_cleanup_xor_conv2d1x14_q_4_q <= redist56_i_first_cleanup_xor_conv2d1x14_q_4_delay_2;
        end
    end

    // i_first_cleanup_xor_or_conv2d1x131(LOGICAL,99)@6
    assign i_first_cleanup_xor_or_conv2d1x131_q = i_unnamed_conv2d1x117_q | redist56_i_first_cleanup_xor_conv2d1x14_q_4_q;

    // i_mul17_conv2d1x124_bs2(BITSELECT,327)@2
    assign i_mul17_conv2d1x124_bs2_b = i_shl_conv2d1x121_vt_join_q[31:18];

    // i_mul17_conv2d1x124_bs7(BITSELECT,332)@2
    assign i_mul17_conv2d1x124_bs7_in = i_shl_conv2d1x121_vt_join_q[17:0];
    assign i_mul17_conv2d1x124_bs7_b = i_mul17_conv2d1x124_bs7_in[17:0];

    // i_mul17_conv2d1x124_ma3_cma(CHAINMULTADD,417)@2 + 3
    assign i_mul17_conv2d1x124_ma3_cma_reset = ~ (resetn);
    assign i_mul17_conv2d1x124_ma3_cma_ena0 = 1'b1;
    assign i_mul17_conv2d1x124_ma3_cma_ena1 = i_mul17_conv2d1x124_ma3_cma_ena0;
    assign i_mul17_conv2d1x124_ma3_cma_ena2 = i_mul17_conv2d1x124_ma3_cma_ena0;

    assign i_mul17_conv2d1x124_ma3_cma_a0 = i_mul17_conv2d1x124_bs1_merged_bit_select_b;
    assign i_mul17_conv2d1x124_ma3_cma_c0 = i_mul17_conv2d1x124_bs7_b;
    assign i_mul17_conv2d1x124_ma3_cma_a1 = i_mul17_conv2d1x124_bs2_b;
    assign i_mul17_conv2d1x124_ma3_cma_c1 = i_mul17_conv2d1x124_bs1_merged_bit_select_c;
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
    ) i_mul17_conv2d1x124_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul17_conv2d1x124_ma3_cma_ena2, i_mul17_conv2d1x124_ma3_cma_ena1, i_mul17_conv2d1x124_ma3_cma_ena0 }),
        .aclr({ i_mul17_conv2d1x124_ma3_cma_reset, i_mul17_conv2d1x124_ma3_cma_reset }),
        .ay(i_mul17_conv2d1x124_ma3_cma_a1),
        .by(i_mul17_conv2d1x124_ma3_cma_a0),
        .ax(i_mul17_conv2d1x124_ma3_cma_c1),
        .bx(i_mul17_conv2d1x124_ma3_cma_c0),
        .resulta(i_mul17_conv2d1x124_ma3_cma_s0),
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
    i_mul17_conv2d1x124_ma3_cma_delay ( .xin(i_mul17_conv2d1x124_ma3_cma_s0), .xout(i_mul17_conv2d1x124_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul17_conv2d1x124_ma3_cma_q = $unsigned(i_mul17_conv2d1x124_ma3_cma_qq[32:0]);

    // i_mul17_conv2d1x124_sums_align_1(BITSHIFT,337)@5
    assign i_mul17_conv2d1x124_sums_align_1_qint = { i_mul17_conv2d1x124_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul17_conv2d1x124_sums_align_1_q = i_mul17_conv2d1x124_sums_align_1_qint[50:0];

    // i_mul17_conv2d1x124_im0_cma(CHAINMULTADD,409)@2 + 3
    assign i_mul17_conv2d1x124_im0_cma_reset = ~ (resetn);
    assign i_mul17_conv2d1x124_im0_cma_ena0 = 1'b1;
    assign i_mul17_conv2d1x124_im0_cma_ena1 = i_mul17_conv2d1x124_im0_cma_ena0;
    assign i_mul17_conv2d1x124_im0_cma_ena2 = i_mul17_conv2d1x124_im0_cma_ena0;

    assign i_mul17_conv2d1x124_im0_cma_a0 = i_mul17_conv2d1x124_bs1_merged_bit_select_b;
    assign i_mul17_conv2d1x124_im0_cma_c0 = i_mul17_conv2d1x124_bs2_b;
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
    ) i_mul17_conv2d1x124_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul17_conv2d1x124_im0_cma_ena2, i_mul17_conv2d1x124_im0_cma_ena1, i_mul17_conv2d1x124_im0_cma_ena0 }),
        .aclr({ i_mul17_conv2d1x124_im0_cma_reset, i_mul17_conv2d1x124_im0_cma_reset }),
        .ay(i_mul17_conv2d1x124_im0_cma_a0),
        .ax(i_mul17_conv2d1x124_im0_cma_c0),
        .resulta(i_mul17_conv2d1x124_im0_cma_s0),
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
    i_mul17_conv2d1x124_im0_cma_delay ( .xin(i_mul17_conv2d1x124_im0_cma_s0), .xout(i_mul17_conv2d1x124_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul17_conv2d1x124_im0_cma_q = $unsigned(i_mul17_conv2d1x124_im0_cma_qq[27:0]);

    // i_mul17_conv2d1x124_im8_cma(CHAINMULTADD,410)@2 + 3
    assign i_mul17_conv2d1x124_im8_cma_reset = ~ (resetn);
    assign i_mul17_conv2d1x124_im8_cma_ena0 = 1'b1;
    assign i_mul17_conv2d1x124_im8_cma_ena1 = i_mul17_conv2d1x124_im8_cma_ena0;
    assign i_mul17_conv2d1x124_im8_cma_ena2 = i_mul17_conv2d1x124_im8_cma_ena0;

    assign i_mul17_conv2d1x124_im8_cma_a0 = i_mul17_conv2d1x124_bs1_merged_bit_select_c;
    assign i_mul17_conv2d1x124_im8_cma_c0 = i_mul17_conv2d1x124_bs7_b;
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
    ) i_mul17_conv2d1x124_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul17_conv2d1x124_im8_cma_ena2, i_mul17_conv2d1x124_im8_cma_ena1, i_mul17_conv2d1x124_im8_cma_ena0 }),
        .aclr({ i_mul17_conv2d1x124_im8_cma_reset, i_mul17_conv2d1x124_im8_cma_reset }),
        .ay(i_mul17_conv2d1x124_im8_cma_a0),
        .ax(i_mul17_conv2d1x124_im8_cma_c0),
        .resulta(i_mul17_conv2d1x124_im8_cma_s0),
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
    i_mul17_conv2d1x124_im8_cma_delay ( .xin(i_mul17_conv2d1x124_im8_cma_s0), .xout(i_mul17_conv2d1x124_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul17_conv2d1x124_im8_cma_q = $unsigned(i_mul17_conv2d1x124_im8_cma_qq[35:0]);

    // i_mul17_conv2d1x124_sums_join_0(BITJOIN,336)@5
    assign i_mul17_conv2d1x124_sums_join_0_q = {i_mul17_conv2d1x124_im0_cma_q, i_mul17_conv2d1x124_im8_cma_q};

    // i_mul17_conv2d1x124_sums_result_add_0_0(ADD,339)@5
    assign i_mul17_conv2d1x124_sums_result_add_0_0_a = {1'b0, i_mul17_conv2d1x124_sums_join_0_q};
    assign i_mul17_conv2d1x124_sums_result_add_0_0_b = {14'b00000000000000, i_mul17_conv2d1x124_sums_align_1_q};
    assign i_mul17_conv2d1x124_sums_result_add_0_0_o = $unsigned(i_mul17_conv2d1x124_sums_result_add_0_0_a) + $unsigned(i_mul17_conv2d1x124_sums_result_add_0_0_b);
    assign i_mul17_conv2d1x124_sums_result_add_0_0_q = i_mul17_conv2d1x124_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul17_conv2d1x124_sel_x(BITSELECT,205)@5
    assign bgTrunc_i_mul17_conv2d1x124_sel_x_in = i_mul17_conv2d1x124_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul17_conv2d1x124_sel_x_b = bgTrunc_i_mul17_conv2d1x124_sel_x_in[31:0];

    // i_mul17_conv2d1x124_vt_select_31(BITSELECT,172)@5
    assign i_mul17_conv2d1x124_vt_select_31_b = bgTrunc_i_mul17_conv2d1x124_sel_x_b[31:2];

    // redist44_i_mul17_conv2d1x124_vt_select_31_b_1(DELAY,469)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_mul17_conv2d1x124_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist44_i_mul17_conv2d1x124_vt_select_31_b_1_q <= $unsigned(i_mul17_conv2d1x124_vt_select_31_b);
        end
    end

    // i_mul17_conv2d1x124_vt_join(BITJOIN,171)@6
    assign i_mul17_conv2d1x124_vt_join_q = {redist44_i_mul17_conv2d1x124_vt_select_31_b_1_q, i_arrayidx204_conv2d1x130_vt_const_1_q};

    // i_add18_conv2d1x127(ADD,61)@6
    assign i_add18_conv2d1x127_a = {1'b0, i_mul17_conv2d1x124_vt_join_q};
    assign i_add18_conv2d1x127_b = {1'b0, redist47_i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_data_out_4_outputreg0_q};
    assign i_add18_conv2d1x127_o = $unsigned(i_add18_conv2d1x127_a) + $unsigned(i_add18_conv2d1x127_b);
    assign i_add18_conv2d1x127_q = i_add18_conv2d1x127_o[32:0];

    // bgTrunc_i_add18_conv2d1x127_sel_x(BITSELECT,198)@6
    assign bgTrunc_i_add18_conv2d1x127_sel_x_b = i_add18_conv2d1x127_q[31:0];

    // i_idxprom19_conv2d1x128_sel_x(BITSELECT,249)@6
    assign i_idxprom19_conv2d1x128_sel_x_b = $unsigned({{32{bgTrunc_i_add18_conv2d1x127_sel_x_b[31]}}, bgTrunc_i_add18_conv2d1x127_sel_x_b[31:0]});

    // i_arrayidx204_conv2d1x10_narrow_x(BITSELECT,216)@6
    assign i_arrayidx204_conv2d1x10_narrow_x_b = i_idxprom19_conv2d1x128_sel_x_b[61:0];

    // i_arrayidx204_conv2d1x10_shift_join_x(BITJOIN,217)@6
    assign i_arrayidx204_conv2d1x10_shift_join_x_q = {i_arrayidx204_conv2d1x10_narrow_x_b, i_arrayidx204_conv2d1x130_vt_const_1_q};

    // valid_fanout_reg11(REG,276)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist39_sync_together170_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x129(BLACKBOX,160)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0001put_im_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x129 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x129_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x129_vt_select_63(BITSELECT,163)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x129_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x129_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x129_vt_join(BITJOIN,162)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x129_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x129_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_vt_const_9_q};

    // i_arrayidx204_conv2d1x10_add_x(ADD,214)@6
    assign i_arrayidx204_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x129_vt_join_q};
    assign i_arrayidx204_conv2d1x10_add_x_b = {1'b0, i_arrayidx204_conv2d1x10_shift_join_x_q};
    assign i_arrayidx204_conv2d1x10_add_x_o = $unsigned(i_arrayidx204_conv2d1x10_add_x_a) + $unsigned(i_arrayidx204_conv2d1x10_add_x_b);
    assign i_arrayidx204_conv2d1x10_add_x_q = i_arrayidx204_conv2d1x10_add_x_o[64:0];

    // i_arrayidx204_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,219)@6
    assign i_arrayidx204_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx204_conv2d1x10_add_x_q[63:0];

    // i_arrayidx204_conv2d1x130_vt_select_63(BITSELECT,80)@6
    assign i_arrayidx204_conv2d1x130_vt_select_63_b = i_arrayidx204_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx204_conv2d1x130_vt_join(BITJOIN,79)@6
    assign i_arrayidx204_conv2d1x130_vt_join_q = {i_arrayidx204_conv2d1x130_vt_select_63_b, i_arrayidx204_conv2d1x130_vt_const_1_q};

    // valid_fanout_reg9(REG,274)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg10(REG,275)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist38_sync_together170_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_ij_068_pop1367_push66_conv2d1x126(BLACKBOX,141)@3
    // out out_feedback_out_66@20000000
    // out out_feedback_valid_out_66@20000000
    conv2d1x1_i_llvm_fpga_push_i32_ij_068_pop1367_push66_0 thei_llvm_fpga_push_i32_ij_068_pop1367_push66_conv2d1x126 (
        .in_data_in(redist46_i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_data_out_1_q),
        .in_feedback_stall_in_66(i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_feedback_stall_out_66),
        .in_keep_going(redist54_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_66(i_llvm_fpga_push_i32_ij_068_pop1367_push66_conv2d1x126_out_feedback_out_66),
        .out_feedback_valid_out_66(i_llvm_fpga_push_i32_ij_068_pop1367_push66_conv2d1x126_out_feedback_valid_out_66),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together170_aunroll_x_in_c0_eni37_5_tpl_1(DELAY,430)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together170_aunroll_x_in_c0_eni37_5_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together170_aunroll_x_in_c0_eni37_5_tpl_1_q <= $unsigned(in_c0_eni37_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125(BLACKBOX,124)@2
    // out out_feedback_stall_out_66@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_0 thei_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125 (
        .in_data_in(redist5_sync_together170_aunroll_x_in_c0_eni37_5_tpl_1_q),
        .in_dir(redist0_sync_together170_aunroll_x_in_c0_eni37_1_tpl_1_q),
        .in_feedback_in_66(i_llvm_fpga_push_i32_ij_068_pop1367_push66_conv2d1x126_out_feedback_out_66),
        .in_feedback_valid_in_66(i_llvm_fpga_push_i32_ij_068_pop1367_push66_conv2d1x126_out_feedback_valid_out_66),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_data_out),
        .out_feedback_stall_out_66(i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_feedback_stall_out_66),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist46_i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_data_out_1(DELAY,471)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_data_out_1_q <= '0;
        end
        else
        begin
            redist46_i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_data_out);
        end
    end

    // redist47_i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_data_out_4(DELAY,472)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_data_out_4_delay_0 <= '0;
            redist47_i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_data_out_4_q <= '0;
        end
        else
        begin
            redist47_i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_data_out_4_delay_0 <= $unsigned(redist46_i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_data_out_1_q);
            redist47_i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_data_out_4_q <= redist47_i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_data_out_4_delay_0;
        end
    end

    // redist47_i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_data_out_4_outputreg0(DELAY,714)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_data_out_4_outputreg0_q <= '0;
        end
        else
        begin
            redist47_i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_data_out_4_outputreg0_q <= $unsigned(redist47_i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_data_out_4_q);
        end
    end

    // valid_fanout_reg4(REG,269)@1 + 1
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

    // valid_fanout_reg5(REG,270)@1 + 1
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

    // i_llvm_fpga_push_i1_push58_conv2d1x119(BLACKBOX,136)@2
    // out out_feedback_out_58@20000000
    // out out_feedback_valid_out_58@20000000
    conv2d1x1_i_llvm_fpga_push_i1_push58_0 thei_llvm_fpga_push_i1_push58_conv2d1x119 (
        .in_data_in(i_llvm_fpga_pop_i1_pop58_conv2d1x118_out_data_out),
        .in_feedback_stall_in_58(i_llvm_fpga_pop_i1_pop58_conv2d1x118_out_feedback_stall_out_58),
        .in_keep_going(redist53_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_58(i_llvm_fpga_push_i1_push58_conv2d1x119_out_feedback_out_58),
        .out_feedback_valid_out_58(i_llvm_fpga_push_i1_push58_conv2d1x119_out_feedback_valid_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together170_aunroll_x_in_c0_eni37_3_tpl_1(DELAY,428)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together170_aunroll_x_in_c0_eni37_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together170_aunroll_x_in_c0_eni37_3_tpl_1_q <= $unsigned(in_c0_eni37_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_pop58_conv2d1x118(BLACKBOX,119)@2
    // out out_feedback_stall_out_58@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_pop58_0 thei_llvm_fpga_pop_i1_pop58_conv2d1x118 (
        .in_data_in(redist3_sync_together170_aunroll_x_in_c0_eni37_3_tpl_1_q),
        .in_dir(redist0_sync_together170_aunroll_x_in_c0_eni37_1_tpl_1_q),
        .in_feedback_in_58(i_llvm_fpga_push_i1_push58_conv2d1x119_out_feedback_out_58),
        .in_feedback_valid_in_58(i_llvm_fpga_push_i1_push58_conv2d1x119_out_feedback_valid_out_58),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop58_conv2d1x118_out_data_out),
        .out_feedback_stall_out_58(i_llvm_fpga_pop_i1_pop58_conv2d1x118_out_feedback_stall_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist49_i_llvm_fpga_pop_i1_pop58_conv2d1x118_out_data_out_4(DELAY,474)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_i_llvm_fpga_pop_i1_pop58_conv2d1x118_out_data_out_4_delay_0 <= '0;
            redist49_i_llvm_fpga_pop_i1_pop58_conv2d1x118_out_data_out_4_delay_1 <= '0;
            redist49_i_llvm_fpga_pop_i1_pop58_conv2d1x118_out_data_out_4_delay_2 <= '0;
            redist49_i_llvm_fpga_pop_i1_pop58_conv2d1x118_out_data_out_4_q <= '0;
        end
        else
        begin
            redist49_i_llvm_fpga_pop_i1_pop58_conv2d1x118_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_pop58_conv2d1x118_out_data_out);
            redist49_i_llvm_fpga_pop_i1_pop58_conv2d1x118_out_data_out_4_delay_1 <= redist49_i_llvm_fpga_pop_i1_pop58_conv2d1x118_out_data_out_4_delay_0;
            redist49_i_llvm_fpga_pop_i1_pop58_conv2d1x118_out_data_out_4_delay_2 <= redist49_i_llvm_fpga_pop_i1_pop58_conv2d1x118_out_data_out_4_delay_1;
            redist49_i_llvm_fpga_pop_i1_pop58_conv2d1x118_out_data_out_4_q <= redist49_i_llvm_fpga_pop_i1_pop58_conv2d1x118_out_data_out_4_delay_2;
        end
    end

    // i_unnamed_conv2d1x117(LOGICAL,188)@6
    assign i_unnamed_conv2d1x117_q = redist48_i_llvm_fpga_pop_i1_pop60_conv2d1x115_out_data_out_4_q ^ VCC_q;

    // redist48_i_llvm_fpga_pop_i1_pop60_conv2d1x115_out_data_out_4(DELAY,473)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_i_llvm_fpga_pop_i1_pop60_conv2d1x115_out_data_out_4_delay_0 <= '0;
            redist48_i_llvm_fpga_pop_i1_pop60_conv2d1x115_out_data_out_4_delay_1 <= '0;
            redist48_i_llvm_fpga_pop_i1_pop60_conv2d1x115_out_data_out_4_delay_2 <= '0;
            redist48_i_llvm_fpga_pop_i1_pop60_conv2d1x115_out_data_out_4_q <= '0;
        end
        else
        begin
            redist48_i_llvm_fpga_pop_i1_pop60_conv2d1x115_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_pop60_conv2d1x115_out_data_out);
            redist48_i_llvm_fpga_pop_i1_pop60_conv2d1x115_out_data_out_4_delay_1 <= redist48_i_llvm_fpga_pop_i1_pop60_conv2d1x115_out_data_out_4_delay_0;
            redist48_i_llvm_fpga_pop_i1_pop60_conv2d1x115_out_data_out_4_delay_2 <= redist48_i_llvm_fpga_pop_i1_pop60_conv2d1x115_out_data_out_4_delay_1;
            redist48_i_llvm_fpga_pop_i1_pop60_conv2d1x115_out_data_out_4_q <= redist48_i_llvm_fpga_pop_i1_pop60_conv2d1x115_out_data_out_4_delay_2;
        end
    end

    // redist55_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_5(DELAY,480)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_5_delay_0 <= '0;
            redist55_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_5_delay_1 <= '0;
            redist55_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_5_q <= '0;
        end
        else
        begin
            redist55_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_5_delay_0 <= $unsigned(redist54_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_q);
            redist55_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_5_delay_1 <= redist55_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_5_delay_0;
            redist55_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_5_q <= redist55_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_5_delay_1;
        end
    end

    // sync_out_aunroll_x(GPOUT,263)@6
    assign out_c0_exi43_0_tpl = GND_q;
    assign out_c0_exi43_1_tpl = redist55_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_5_q;
    assign out_c0_exi43_2_tpl = redist48_i_llvm_fpga_pop_i1_pop60_conv2d1x115_out_data_out_4_q;
    assign out_c0_exi43_3_tpl = i_unnamed_conv2d1x117_q;
    assign out_c0_exi43_4_tpl = redist49_i_llvm_fpga_pop_i1_pop58_conv2d1x118_out_data_out_4_q;
    assign out_c0_exi43_5_tpl = redist47_i_llvm_fpga_pop_i32_ij_068_pop1367_pop66_conv2d1x125_out_data_out_4_outputreg0_q;
    assign out_c0_exi43_6_tpl = i_arrayidx204_conv2d1x130_vt_join_q;
    assign out_c0_exi43_7_tpl = i_first_cleanup_xor_or_conv2d1x131_q;
    assign out_c0_exi43_8_tpl = i_arrayidx245_conv2d1x137_vt_join_q;
    assign out_c0_exi43_9_tpl = i_arrayidx346_conv2d1x143_vt_join_q;
    assign out_c0_exi43_10_tpl = i_arrayidx487_conv2d1x149_vt_join_q;
    assign out_c0_exi43_11_tpl = i_arrayidx628_conv2d1x155_vt_join_q;
    assign out_c0_exi43_12_tpl = redist45_i_masked_conv2d1x168_q_4_q;
    assign out_c0_exi43_13_tpl = redist52_i_llvm_fpga_pop_f32_lm53_pop61_conv2d1x171_out_data_out_4_mem_q;
    assign out_c0_exi43_14_tpl = i_llvm_fpga_pop_i32_mul10059_pop63_conv2d1x173_out_data_out;
    assign out_c0_exi43_15_tpl = redist50_i_llvm_fpga_pop_i1_notcmp4362_pop64_conv2d1x175_out_data_out_4_q;
    assign out_c0_exi43_16_tpl = i_llvm_fpga_pop_i1_notcmp3865_pop65_conv2d1x177_out_data_out;
    assign out_c0_exi43_17_tpl = i_llvm_fpga_pop_i64_ap_pop_ext784_pop83_conv2d1x179_out_data_out;
    assign out_c0_exi43_18_tpl = redist1_sync_together170_aunroll_x_in_c0_eni37_1_tpl_5_q;
    assign out_c0_exi43_19_tpl = redist13_sync_together170_aunroll_x_in_c0_eni37_13_tpl_5_mem_q;
    assign out_c0_exi43_20_tpl = redist14_sync_together170_aunroll_x_in_c0_eni37_14_tpl_5_q;
    assign out_c0_exi43_21_tpl = redist15_sync_together170_aunroll_x_in_c0_eni37_15_tpl_5_q;
    assign out_c0_exi43_22_tpl = redist16_sync_together170_aunroll_x_in_c0_eni37_16_tpl_5_q;
    assign out_c0_exi43_23_tpl = redist17_sync_together170_aunroll_x_in_c0_eni37_17_tpl_5_mem_q;
    assign out_c0_exi43_24_tpl = redist18_sync_together170_aunroll_x_in_c0_eni37_18_tpl_5_mem_q;
    assign out_c0_exi43_25_tpl = redist19_sync_together170_aunroll_x_in_c0_eni37_19_tpl_5_mem_q;
    assign out_c0_exi43_26_tpl = redist20_sync_together170_aunroll_x_in_c0_eni37_20_tpl_5_mem_q;
    assign out_c0_exi43_27_tpl = redist21_sync_together170_aunroll_x_in_c0_eni37_21_tpl_5_q;
    assign out_c0_exi43_28_tpl = redist22_sync_together170_aunroll_x_in_c0_eni37_22_tpl_5_mem_q;
    assign out_c0_exi43_29_tpl = redist23_sync_together170_aunroll_x_in_c0_eni37_23_tpl_5_mem_q;
    assign out_c0_exi43_30_tpl = redist24_sync_together170_aunroll_x_in_c0_eni37_24_tpl_5_mem_q;
    assign out_c0_exi43_31_tpl = redist25_sync_together170_aunroll_x_in_c0_eni37_25_tpl_5_mem_q;
    assign out_c0_exi43_32_tpl = redist26_sync_together170_aunroll_x_in_c0_eni37_26_tpl_5_mem_q;
    assign out_c0_exi43_33_tpl = redist27_sync_together170_aunroll_x_in_c0_eni37_27_tpl_5_mem_q;
    assign out_c0_exi43_34_tpl = redist28_sync_together170_aunroll_x_in_c0_eni37_28_tpl_5_mem_q;
    assign out_c0_exi43_35_tpl = redist29_sync_together170_aunroll_x_in_c0_eni37_29_tpl_5_mem_q;
    assign out_c0_exi43_36_tpl = redist30_sync_together170_aunroll_x_in_c0_eni37_30_tpl_5_mem_q;
    assign out_c0_exi43_37_tpl = redist31_sync_together170_aunroll_x_in_c0_eni37_31_tpl_5_mem_q;
    assign out_c0_exi43_38_tpl = redist32_sync_together170_aunroll_x_in_c0_eni37_32_tpl_5_mem_q;
    assign out_c0_exi43_39_tpl = redist33_sync_together170_aunroll_x_in_c0_eni37_33_tpl_5_mem_q;
    assign out_c0_exi43_40_tpl = redist34_sync_together170_aunroll_x_in_c0_eni37_34_tpl_5_mem_q;
    assign out_c0_exi43_41_tpl = redist35_sync_together170_aunroll_x_in_c0_eni37_35_tpl_5_mem_q;
    assign out_c0_exi43_42_tpl = redist36_sync_together170_aunroll_x_in_c0_eni37_36_tpl_5_mem_q;
    assign out_c0_exi43_43_tpl = redist37_sync_together170_aunroll_x_in_c0_eni37_37_tpl_5_mem_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d1x16 = GND_q;

    // i_llvm_fpga_pop_i1_pop59_conv2d1x169(BLACKBOX,120)@2
    // out out_feedback_stall_out_59@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_pop59_0 thei_llvm_fpga_pop_i1_pop59_conv2d1x169 (
        .in_data_in(redist7_sync_together170_aunroll_x_in_c0_eni37_7_tpl_1_q),
        .in_dir(redist0_sync_together170_aunroll_x_in_c0_eni37_1_tpl_1_q),
        .in_feedback_in_59(i_llvm_fpga_push_i1_push59_conv2d1x170_out_feedback_out_59),
        .in_feedback_valid_in_59(i_llvm_fpga_push_i1_push59_conv2d1x170_out_feedback_valid_out_59),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop59_conv2d1x169_out_data_out),
        .out_feedback_stall_out_59(i_llvm_fpga_pop_i1_pop59_conv2d1x169_out_feedback_stall_out_59),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_push59_conv2d1x170(BLACKBOX,137)@2
    // out out_feedback_out_59@20000000
    // out out_feedback_valid_out_59@20000000
    conv2d1x1_i_llvm_fpga_push_i1_push59_0 thei_llvm_fpga_push_i1_push59_conv2d1x170 (
        .in_data_in(i_llvm_fpga_pop_i1_pop59_conv2d1x169_out_data_out),
        .in_feedback_stall_in_59(i_llvm_fpga_pop_i1_pop59_conv2d1x169_out_feedback_stall_out_59),
        .in_keep_going(redist53_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_59(i_llvm_fpga_push_i1_push59_conv2d1x170_out_feedback_out_59),
        .out_feedback_valid_out_59(i_llvm_fpga_push_i1_push59_conv2d1x170_out_feedback_valid_out_59),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg19(REG,284)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg20(REG,285)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(in_i_valid);
        end
    end

    // redist7_sync_together170_aunroll_x_in_c0_eni37_7_tpl_1(DELAY,432)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together170_aunroll_x_in_c0_eni37_7_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together170_aunroll_x_in_c0_eni37_7_tpl_1_q <= $unsigned(in_c0_eni37_7_tpl);
        end
    end

endmodule
