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

// SystemVerilog created from conv2d1x1_i_sfc_logic_s_c0_in_for_body140000nter46381_conv2d1x10
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_logic_s_c0_in_for_body140000nter46381_conv2d1x10 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_filter_weight,
    input wire [63:0] in_input_im,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    output wire [0:0] out_c0_exi55_0_tpl,
    output wire [0:0] out_c0_exi55_1_tpl,
    output wire [0:0] out_c0_exi55_2_tpl,
    output wire [0:0] out_c0_exi55_3_tpl,
    output wire [0:0] out_c0_exi55_4_tpl,
    output wire [31:0] out_c0_exi55_5_tpl,
    output wire [63:0] out_c0_exi55_6_tpl,
    output wire [0:0] out_c0_exi55_7_tpl,
    output wire [63:0] out_c0_exi55_8_tpl,
    output wire [63:0] out_c0_exi55_9_tpl,
    output wire [63:0] out_c0_exi55_10_tpl,
    output wire [63:0] out_c0_exi55_11_tpl,
    output wire [63:0] out_c0_exi55_12_tpl,
    output wire [63:0] out_c0_exi55_13_tpl,
    output wire [63:0] out_c0_exi55_14_tpl,
    output wire [63:0] out_c0_exi55_15_tpl,
    output wire [0:0] out_c0_exi55_16_tpl,
    output wire [31:0] out_c0_exi55_17_tpl,
    output wire [31:0] out_c0_exi55_18_tpl,
    output wire [0:0] out_c0_exi55_19_tpl,
    output wire [0:0] out_c0_exi55_20_tpl,
    output wire [63:0] out_c0_exi55_21_tpl,
    output wire [0:0] out_c0_exi55_22_tpl,
    output wire [31:0] out_c0_exi55_23_tpl,
    output wire [0:0] out_c0_exi55_24_tpl,
    output wire [0:0] out_c0_exi55_25_tpl,
    output wire [0:0] out_c0_exi55_26_tpl,
    output wire [32:0] out_c0_exi55_27_tpl,
    output wire [31:0] out_c0_exi55_28_tpl,
    output wire [31:0] out_c0_exi55_29_tpl,
    output wire [31:0] out_c0_exi55_30_tpl,
    output wire [0:0] out_c0_exi55_31_tpl,
    output wire [31:0] out_c0_exi55_32_tpl,
    output wire [31:0] out_c0_exi55_33_tpl,
    output wire [31:0] out_c0_exi55_34_tpl,
    output wire [31:0] out_c0_exi55_35_tpl,
    output wire [31:0] out_c0_exi55_36_tpl,
    output wire [31:0] out_c0_exi55_37_tpl,
    output wire [31:0] out_c0_exi55_38_tpl,
    output wire [31:0] out_c0_exi55_39_tpl,
    output wire [31:0] out_c0_exi55_40_tpl,
    output wire [31:0] out_c0_exi55_41_tpl,
    output wire [31:0] out_c0_exi55_42_tpl,
    output wire [31:0] out_c0_exi55_43_tpl,
    output wire [31:0] out_c0_exi55_44_tpl,
    output wire [31:0] out_c0_exi55_45_tpl,
    output wire [31:0] out_c0_exi55_46_tpl,
    output wire [31:0] out_c0_exi55_47_tpl,
    output wire [31:0] out_c0_exi55_48_tpl,
    output wire [31:0] out_c0_exi55_49_tpl,
    output wire [31:0] out_c0_exi55_50_tpl,
    output wire [31:0] out_c0_exi55_51_tpl,
    output wire [31:0] out_c0_exi55_52_tpl,
    output wire [31:0] out_c0_exi55_53_tpl,
    output wire [31:0] out_c0_exi55_54_tpl,
    output wire [31:0] out_c0_exi55_55_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d1x16,
    input wire [0:0] in_c0_eni45_0_tpl,
    input wire [0:0] in_c0_eni45_1_tpl,
    input wire [0:0] in_c0_eni45_2_tpl,
    input wire [0:0] in_c0_eni45_3_tpl,
    input wire [31:0] in_c0_eni45_4_tpl,
    input wire [31:0] in_c0_eni45_5_tpl,
    input wire [31:0] in_c0_eni45_6_tpl,
    input wire [0:0] in_c0_eni45_7_tpl,
    input wire [31:0] in_c0_eni45_8_tpl,
    input wire [31:0] in_c0_eni45_9_tpl,
    input wire [0:0] in_c0_eni45_10_tpl,
    input wire [0:0] in_c0_eni45_11_tpl,
    input wire [63:0] in_c0_eni45_12_tpl,
    input wire [31:0] in_c0_eni45_13_tpl,
    input wire [0:0] in_c0_eni45_14_tpl,
    input wire [0:0] in_c0_eni45_15_tpl,
    input wire [0:0] in_c0_eni45_16_tpl,
    input wire [32:0] in_c0_eni45_17_tpl,
    input wire [31:0] in_c0_eni45_18_tpl,
    input wire [31:0] in_c0_eni45_19_tpl,
    input wire [31:0] in_c0_eni45_20_tpl,
    input wire [0:0] in_c0_eni45_21_tpl,
    input wire [31:0] in_c0_eni45_22_tpl,
    input wire [31:0] in_c0_eni45_23_tpl,
    input wire [31:0] in_c0_eni45_24_tpl,
    input wire [31:0] in_c0_eni45_25_tpl,
    input wire [31:0] in_c0_eni45_26_tpl,
    input wire [31:0] in_c0_eni45_27_tpl,
    input wire [31:0] in_c0_eni45_28_tpl,
    input wire [31:0] in_c0_eni45_29_tpl,
    input wire [31:0] in_c0_eni45_30_tpl,
    input wire [31:0] in_c0_eni45_31_tpl,
    input wire [31:0] in_c0_eni45_32_tpl,
    input wire [31:0] in_c0_eni45_33_tpl,
    input wire [31:0] in_c0_eni45_34_tpl,
    input wire [31:0] in_c0_eni45_35_tpl,
    input wire [31:0] in_c0_eni45_36_tpl,
    input wire [31:0] in_c0_eni45_37_tpl,
    input wire [31:0] in_c0_eni45_38_tpl,
    input wire [31:0] in_c0_eni45_39_tpl,
    input wire [31:0] in_c0_eni45_40_tpl,
    input wire [31:0] in_c0_eni45_41_tpl,
    input wire [31:0] in_c0_eni45_42_tpl,
    input wire [31:0] in_c0_eni45_43_tpl,
    input wire [31:0] in_c0_eni45_44_tpl,
    input wire [31:0] in_c0_eni45_45_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_1149_q;
    wire [31:0] c_i32_0152_q;
    wire [31:0] c_i32_1154_q;
    wire [32:0] c_i33_1161_q;
    wire [32:0] c_i33_undef151_q;
    wire [32:0] i_add102_conv2d1x170_a;
    wire [32:0] i_add102_conv2d1x170_b;
    logic [32:0] i_add102_conv2d1x170_o;
    wire [32:0] i_add102_conv2d1x170_q;
    wire [2:0] i_add113_conv2d1x174_vt_const_2_q;
    wire [31:0] i_add113_conv2d1x174_vt_join_q;
    wire [28:0] i_add113_conv2d1x174_vt_select_31_b;
    wire [32:0] i_add116_conv2d1x176_a;
    wire [32:0] i_add116_conv2d1x176_b;
    logic [32:0] i_add116_conv2d1x176_o;
    wire [32:0] i_add116_conv2d1x176_q;
    wire [32:0] i_add18_conv2d1x127_a;
    wire [32:0] i_add18_conv2d1x127_b;
    logic [32:0] i_add18_conv2d1x127_o;
    wire [32:0] i_add18_conv2d1x127_q;
    wire [32:0] i_add22_conv2d1x134_a;
    wire [32:0] i_add22_conv2d1x134_b;
    logic [32:0] i_add22_conv2d1x134_o;
    wire [32:0] i_add22_conv2d1x134_q;
    wire [2:0] i_add29_conv2d1x138_vt_const_2_q;
    wire [31:0] i_add29_conv2d1x138_vt_join_q;
    wire [28:0] i_add29_conv2d1x138_vt_select_31_b;
    wire [32:0] i_add32_conv2d1x140_a;
    wire [32:0] i_add32_conv2d1x140_b;
    logic [32:0] i_add32_conv2d1x140_o;
    wire [32:0] i_add32_conv2d1x140_q;
    wire [2:0] i_add43_conv2d1x144_vt_const_2_q;
    wire [31:0] i_add43_conv2d1x144_vt_join_q;
    wire [28:0] i_add43_conv2d1x144_vt_select_31_b;
    wire [32:0] i_add46_conv2d1x146_a;
    wire [32:0] i_add46_conv2d1x146_b;
    logic [32:0] i_add46_conv2d1x146_o;
    wire [32:0] i_add46_conv2d1x146_q;
    wire [2:0] i_add57_conv2d1x150_vt_const_2_q;
    wire [31:0] i_add57_conv2d1x150_vt_join_q;
    wire [28:0] i_add57_conv2d1x150_vt_select_31_b;
    wire [32:0] i_add60_conv2d1x152_a;
    wire [32:0] i_add60_conv2d1x152_b;
    logic [32:0] i_add60_conv2d1x152_o;
    wire [32:0] i_add60_conv2d1x152_q;
    wire [2:0] i_add71_conv2d1x156_vt_const_2_q;
    wire [31:0] i_add71_conv2d1x156_vt_join_q;
    wire [28:0] i_add71_conv2d1x156_vt_select_31_b;
    wire [32:0] i_add74_conv2d1x158_a;
    wire [32:0] i_add74_conv2d1x158_b;
    logic [32:0] i_add74_conv2d1x158_o;
    wire [32:0] i_add74_conv2d1x158_q;
    wire [2:0] i_add85_conv2d1x162_vt_const_2_q;
    wire [31:0] i_add85_conv2d1x162_vt_join_q;
    wire [28:0] i_add85_conv2d1x162_vt_select_31_b;
    wire [32:0] i_add88_conv2d1x164_a;
    wire [32:0] i_add88_conv2d1x164_b;
    logic [32:0] i_add88_conv2d1x164_o;
    wire [32:0] i_add88_conv2d1x164_q;
    wire [2:0] i_add99_conv2d1x168_vt_const_2_q;
    wire [31:0] i_add99_conv2d1x168_vt_join_q;
    wire [28:0] i_add99_conv2d1x168_vt_select_31_b;
    wire [1:0] i_arrayidx10411_conv2d1x173_vt_const_1_q;
    wire [63:0] i_arrayidx10411_conv2d1x173_vt_join_q;
    wire [61:0] i_arrayidx10411_conv2d1x173_vt_select_63_b;
    wire [63:0] i_arrayidx11812_conv2d1x179_vt_join_q;
    wire [61:0] i_arrayidx11812_conv2d1x179_vt_select_63_b;
    wire [63:0] i_arrayidx204_conv2d1x130_vt_join_q;
    wire [61:0] i_arrayidx204_conv2d1x130_vt_select_63_b;
    wire [4:0] i_arrayidx245_conv2d1x137_vt_const_4_q;
    wire [63:0] i_arrayidx245_conv2d1x137_vt_join_q;
    wire [58:0] i_arrayidx245_conv2d1x137_vt_select_63_b;
    wire [63:0] i_arrayidx346_conv2d1x143_vt_join_q;
    wire [61:0] i_arrayidx346_conv2d1x143_vt_select_63_b;
    wire [63:0] i_arrayidx487_conv2d1x149_vt_join_q;
    wire [61:0] i_arrayidx487_conv2d1x149_vt_select_63_b;
    wire [63:0] i_arrayidx628_conv2d1x155_vt_join_q;
    wire [61:0] i_arrayidx628_conv2d1x155_vt_select_63_b;
    wire [63:0] i_arrayidx769_conv2d1x161_vt_join_q;
    wire [61:0] i_arrayidx769_conv2d1x161_vt_select_63_b;
    wire [63:0] i_arrayidx9010_conv2d1x167_vt_join_q;
    wire [61:0] i_arrayidx9010_conv2d1x167_vt_select_63_b;
    wire [1:0] i_cleanups_shl_conv2d1x15_vt_join_q;
    wire [0:0] i_cleanups_shl_conv2d1x15_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_conv2d1x14_q;
    wire [0:0] i_first_cleanup_xor_or_conv2d1x131_q;
    wire [0:0] i_fpga_indvars_iv31_replace_phi_conv2d1x114_s;
    reg [32:0] i_fpga_indvars_iv31_replace_phi_conv2d1x114_q;
    wire [33:0] i_fpga_indvars_iv_next32_conv2d1x184_a;
    wire [33:0] i_fpga_indvars_iv_next32_conv2d1x184_b;
    logic [33:0] i_fpga_indvars_iv_next32_conv2d1x184_o;
    wire [33:0] i_fpga_indvars_iv_next32_conv2d1x184_q;
    wire [32:0] i_inc138_conv2d1x180_a;
    wire [32:0] i_inc138_conv2d1x180_b;
    logic [32:0] i_inc138_conv2d1x180_o;
    wire [32:0] i_inc138_conv2d1x180_q;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x121_conv2d1x112_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_f32_lm61_pop69_conv2d1x195_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_lm61_pop69_conv2d1x195_out_feedback_stall_out_69;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4673_pop73_conv2d1x1101_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4673_pop73_conv2d1x1101_out_feedback_stall_out_73;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp5170_pop72_conv2d1x199_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp5170_pop72_conv2d1x199_out_feedback_stall_out_72;
    wire [0:0] i_llvm_fpga_pop_i1_pop66_conv2d1x118_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop66_conv2d1x118_out_feedback_stall_out_66;
    wire [0:0] i_llvm_fpga_pop_i1_pop67_conv2d1x193_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop67_conv2d1x193_out_feedback_stall_out_67;
    wire [0:0] i_llvm_fpga_pop_i1_pop68_conv2d1x115_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop68_conv2d1x115_out_feedback_stall_out_68;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop64_conv2d1x12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop64_conv2d1x12_out_feedback_stall_out_64;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop63_conv2d1x17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop63_conv2d1x17_out_feedback_stall_out_63;
    wire [31:0] i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_feedback_stall_out_74;
    wire [31:0] i_llvm_fpga_pop_i32_k_0100_pop62_conv2d1x120_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_0100_pop62_conv2d1x120_out_feedback_stall_out_62;
    wire [31:0] i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_feedback_stall_out_71;
    wire [31:0] i_llvm_fpga_pop_i32_mul2164_pop70_conv2d1x132_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul2164_pop70_conv2d1x132_out_feedback_stall_out_70;
    wire [31:0] i_llvm_fpga_pop_i32_mul58_pop65_conv2d1x122_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul58_pop65_conv2d1x122_out_feedback_stall_out_65;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv31_pop37_conv2d1x113_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv31_pop37_conv2d1x113_out_feedback_stall_out_37;
    wire [63:0] i_llvm_fpga_pop_i64_ap_pop_ext5100_pop99_conv2d1x1103_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_ap_pop_ext5100_pop99_conv2d1x1103_out_feedback_stall_out_99;
    wire [31:0] i_llvm_fpga_push_f32_lm61_push69_conv2d1x196_out_feedback_out_69;
    wire [0:0] i_llvm_fpga_push_f32_lm61_push69_conv2d1x196_out_feedback_valid_out_69;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_conv2d1x111_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_conv2d1x111_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4673_push73_conv2d1x1102_out_feedback_out_73;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4673_push73_conv2d1x1102_out_feedback_valid_out_73;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5170_push72_conv2d1x1100_out_feedback_out_72;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5170_push72_conv2d1x1100_out_feedback_valid_out_72;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_conv2d1x188_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_conv2d1x188_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_push66_conv2d1x119_out_feedback_out_66;
    wire [0:0] i_llvm_fpga_push_i1_push66_conv2d1x119_out_feedback_valid_out_66;
    wire [0:0] i_llvm_fpga_push_i1_push67_conv2d1x194_out_feedback_out_67;
    wire [0:0] i_llvm_fpga_push_i1_push67_conv2d1x194_out_feedback_valid_out_67;
    wire [0:0] i_llvm_fpga_push_i1_push68_conv2d1x116_out_feedback_out_68;
    wire [0:0] i_llvm_fpga_push_i1_push68_conv2d1x116_out_feedback_valid_out_68;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push64_conv2d1x191_out_feedback_out_64;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push64_conv2d1x191_out_feedback_valid_out_64;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push63_conv2d1x19_out_feedback_out_63;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push63_conv2d1x19_out_feedback_valid_out_63;
    wire [31:0] i_llvm_fpga_push_i32_ij_0104_pop1375_push74_conv2d1x126_out_feedback_out_74;
    wire [0:0] i_llvm_fpga_push_i32_ij_0104_pop1375_push74_conv2d1x126_out_feedback_valid_out_74;
    wire [31:0] i_llvm_fpga_push_i32_k_0100_push62_conv2d1x181_out_feedback_out_62;
    wire [0:0] i_llvm_fpga_push_i32_k_0100_push62_conv2d1x181_out_feedback_valid_out_62;
    wire [31:0] i_llvm_fpga_push_i32_mul15667_push71_conv2d1x198_out_feedback_out_71;
    wire [0:0] i_llvm_fpga_push_i32_mul15667_push71_conv2d1x198_out_feedback_valid_out_71;
    wire [31:0] i_llvm_fpga_push_i32_mul2164_push70_conv2d1x133_out_feedback_out_70;
    wire [0:0] i_llvm_fpga_push_i32_mul2164_push70_conv2d1x133_out_feedback_valid_out_70;
    wire [31:0] i_llvm_fpga_push_i32_mul58_push65_conv2d1x123_out_feedback_out_65;
    wire [0:0] i_llvm_fpga_push_i32_mul58_push65_conv2d1x123_out_feedback_valid_out_65;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv31_push37_conv2d1x185_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv31_push37_conv2d1x185_out_feedback_valid_out_37;
    wire [63:0] i_llvm_fpga_push_i64_ap_pop_ext5100_push99_conv2d1x1104_out_feedback_out_99;
    wire [0:0] i_llvm_fpga_push_i64_ap_pop_ext5100_push99_conv2d1x1104_out_feedback_valid_out_99;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer10_conv2d1x166_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer10_conv2d1x166_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer10_conv2d1x166_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer10_conv2d1x166_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer11_conv2d1x172_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer11_conv2d1x172_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer11_conv2d1x172_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer12_conv2d1x178_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer12_conv2d1x178_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer12_conv2d1x178_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x148_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x148_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x148_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x154_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x154_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x154_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer9_conv2d1x160_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer9_conv2d1x160_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer9_conv2d1x160_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x129_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x129_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x129_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024v8f32_filter_weight_sync_buffer_conv2d1x136_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024v8f32_filter_weight_sync_buffer_conv2d1x136_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024v8f32_filter_weight_sync_buffer_conv2d1x136_vt_select_63_b;
    wire [0:0] i_masked_conv2d1x192_qi;
    reg [0:0] i_masked_conv2d1x192_q;
    wire [31:0] i_mul101_conv2d1x169_vt_join_q;
    wire [30:0] i_mul101_conv2d1x169_vt_select_31_b;
    wire [2:0] i_mul17_conv2d1x124_vt_const_2_q;
    wire [31:0] i_mul17_conv2d1x124_vt_join_q;
    wire [28:0] i_mul17_conv2d1x124_vt_select_31_b;
    wire [31:0] i_mul45_conv2d1x145_vt_join_q;
    wire [30:0] i_mul45_conv2d1x145_vt_select_31_b;
    wire [31:0] i_mul73_conv2d1x157_vt_join_q;
    wire [29:0] i_mul73_conv2d1x157_vt_select_31_b;
    wire [0:0] i_next_cleanups_conv2d1x190_s;
    reg [1:0] i_next_cleanups_conv2d1x190_q;
    wire [1:0] i_next_initerations_conv2d1x18_vt_join_q;
    wire [0:0] i_next_initerations_conv2d1x18_vt_select_0_b;
    wire [0:0] i_notcmp_conv2d1x187_q;
    wire [0:0] i_or_conv2d1x189_q;
    wire [31:0] i_shl_conv2d1x121_vt_join_q;
    wire [28:0] i_shl_conv2d1x121_vt_select_31_b;
    wire [0:0] i_unnamed_conv2d1x117_q;
    wire [0:0] i_unnamed_conv2d1x186_q;
    wire [31:0] bgTrunc_i_add102_conv2d1x170_sel_x_b;
    wire [31:0] bgTrunc_i_add116_conv2d1x176_sel_x_b;
    wire [31:0] bgTrunc_i_add18_conv2d1x127_sel_x_b;
    wire [31:0] bgTrunc_i_add22_conv2d1x134_sel_x_b;
    wire [31:0] bgTrunc_i_add32_conv2d1x140_sel_x_b;
    wire [31:0] bgTrunc_i_add46_conv2d1x146_sel_x_b;
    wire [31:0] bgTrunc_i_add60_conv2d1x152_sel_x_b;
    wire [31:0] bgTrunc_i_add74_conv2d1x158_sel_x_b;
    wire [31:0] bgTrunc_i_add88_conv2d1x164_sel_x_b;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next32_conv2d1x184_sel_x_b;
    wire [31:0] bgTrunc_i_inc138_conv2d1x180_sel_x_b;
    wire [63:0] bgTrunc_i_mul101_conv2d1x169_sel_x_in;
    wire [31:0] bgTrunc_i_mul101_conv2d1x169_sel_x_b;
    wire [63:0] bgTrunc_i_mul115_conv2d1x175_sel_x_in;
    wire [31:0] bgTrunc_i_mul115_conv2d1x175_sel_x_b;
    wire [63:0] bgTrunc_i_mul17_conv2d1x124_sel_x_in;
    wire [31:0] bgTrunc_i_mul17_conv2d1x124_sel_x_b;
    wire [63:0] bgTrunc_i_mul31_conv2d1x139_sel_x_in;
    wire [31:0] bgTrunc_i_mul31_conv2d1x139_sel_x_b;
    wire [63:0] bgTrunc_i_mul45_conv2d1x145_sel_x_in;
    wire [31:0] bgTrunc_i_mul45_conv2d1x145_sel_x_b;
    wire [63:0] bgTrunc_i_mul59_conv2d1x151_sel_x_in;
    wire [31:0] bgTrunc_i_mul59_conv2d1x151_sel_x_b;
    wire [63:0] bgTrunc_i_mul73_conv2d1x157_sel_x_in;
    wire [31:0] bgTrunc_i_mul73_conv2d1x157_sel_x_b;
    wire [63:0] bgTrunc_i_mul87_conv2d1x163_sel_x_in;
    wire [31:0] bgTrunc_i_mul87_conv2d1x163_sel_x_b;
    wire [64:0] i_arrayidx10411_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx10411_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx10411_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx10411_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx10411_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx10411_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx10411_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx11812_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx11812_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx11812_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx11812_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx11812_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx11812_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx11812_conv2d1x10_dupName_0_trunc_sel_x_b;
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
    wire [58:0] i_arrayidx245_conv2d1x10_narrow_x_b;
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
    wire [64:0] i_arrayidx769_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx769_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx769_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx769_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx769_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx769_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx769_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx9010_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx9010_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx9010_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx9010_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx9010_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx9010_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx9010_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_conv2d1x13_sel_x_b;
    wire [63:0] i_idxprom103_conv2d1x171_sel_x_b;
    wire [63:0] i_idxprom117_conv2d1x177_sel_x_b;
    wire [63:0] i_idxprom19_conv2d1x128_sel_x_b;
    wire [63:0] i_idxprom23_conv2d1x135_sel_x_b;
    wire [63:0] i_idxprom33_conv2d1x141_sel_x_b;
    wire [63:0] i_idxprom47_conv2d1x147_sel_x_b;
    wire [63:0] i_idxprom61_conv2d1x153_sel_x_b;
    wire [63:0] i_idxprom75_conv2d1x159_sel_x_b;
    wire [63:0] i_idxprom89_conv2d1x165_sel_x_b;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg31_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg32_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg33_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg34_q;
    wire [28:0] i_add113_conv2d1x174_BitSelect_for_a_b;
    wire [31:0] i_add113_conv2d1x174_join_q;
    wire [31:0] i_add29_conv2d1x138_join_q;
    wire [31:0] i_add43_conv2d1x144_join_q;
    wire [31:0] i_add57_conv2d1x150_join_q;
    wire [31:0] i_add71_conv2d1x156_join_q;
    wire [31:0] i_add85_conv2d1x162_join_q;
    wire [31:0] i_add99_conv2d1x168_join_q;
    wire [0:0] i_exitcond33_conv2d1x182_cmp_nsign_q;
    wire [63:0] i_mul101_conv2d1x169_sums_join_0_q;
    wire [50:0] i_mul101_conv2d1x169_sums_align_1_q;
    wire [50:0] i_mul101_conv2d1x169_sums_align_1_qint;
    wire [64:0] i_mul101_conv2d1x169_sums_result_add_0_0_a;
    wire [64:0] i_mul101_conv2d1x169_sums_result_add_0_0_b;
    logic [64:0] i_mul101_conv2d1x169_sums_result_add_0_0_o;
    wire [64:0] i_mul101_conv2d1x169_sums_result_add_0_0_q;
    wire [63:0] i_mul115_conv2d1x175_sums_join_0_q;
    wire [50:0] i_mul115_conv2d1x175_sums_align_1_q;
    wire [50:0] i_mul115_conv2d1x175_sums_align_1_qint;
    wire [64:0] i_mul115_conv2d1x175_sums_result_add_0_0_a;
    wire [64:0] i_mul115_conv2d1x175_sums_result_add_0_0_b;
    logic [64:0] i_mul115_conv2d1x175_sums_result_add_0_0_o;
    wire [64:0] i_mul115_conv2d1x175_sums_result_add_0_0_q;
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
    wire [63:0] i_mul73_conv2d1x157_sums_join_0_q;
    wire [50:0] i_mul73_conv2d1x157_sums_align_1_q;
    wire [50:0] i_mul73_conv2d1x157_sums_align_1_qint;
    wire [64:0] i_mul73_conv2d1x157_sums_result_add_0_0_a;
    wire [64:0] i_mul73_conv2d1x157_sums_result_add_0_0_b;
    logic [64:0] i_mul73_conv2d1x157_sums_result_add_0_0_o;
    wire [64:0] i_mul73_conv2d1x157_sums_result_add_0_0_q;
    wire [63:0] i_mul87_conv2d1x163_sums_join_0_q;
    wire [50:0] i_mul87_conv2d1x163_sums_align_1_q;
    wire [50:0] i_mul87_conv2d1x163_sums_align_1_qint;
    wire [64:0] i_mul87_conv2d1x163_sums_result_add_0_0_a;
    wire [64:0] i_mul87_conv2d1x163_sums_result_add_0_0_b;
    logic [64:0] i_mul87_conv2d1x163_sums_result_add_0_0_o;
    wire [64:0] i_mul87_conv2d1x163_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid595_i_cleanups_shl_conv2d1x10_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid595_i_cleanups_shl_conv2d1x10_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid596_i_cleanups_shl_conv2d1x10_shift_x_q;
    wire [0:0] leftShiftStage0_uid598_i_cleanups_shl_conv2d1x10_shift_x_s;
    reg [1:0] leftShiftStage0_uid598_i_cleanups_shl_conv2d1x10_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid602_i_next_initerations_conv2d1x10_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid604_i_next_initerations_conv2d1x10_shift_x_q;
    wire [0:0] rightShiftStage0_uid606_i_next_initerations_conv2d1x10_shift_x_s;
    reg [1:0] rightShiftStage0_uid606_i_next_initerations_conv2d1x10_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid611_i_shl_conv2d1x10_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid611_i_shl_conv2d1x10_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid612_i_shl_conv2d1x10_shift_x_q;
    wire [0:0] leftShiftStage0_uid614_i_shl_conv2d1x10_shift_x_s;
    reg [31:0] leftShiftStage0_uid614_i_shl_conv2d1x10_shift_x_q;
    wire [29:0] leftShiftStage1Idx1Rng2_uid616_i_shl_conv2d1x10_shift_x_in;
    wire [29:0] leftShiftStage1Idx1Rng2_uid616_i_shl_conv2d1x10_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid617_i_shl_conv2d1x10_shift_x_q;
    wire [0:0] leftShiftStage1_uid619_i_shl_conv2d1x10_shift_x_s;
    reg [31:0] leftShiftStage1_uid619_i_shl_conv2d1x10_shift_x_q;
    wire i_mul101_conv2d1x169_im0_cma_reset;
    wire [13:0] i_mul101_conv2d1x169_im0_cma_a0;
    wire [13:0] i_mul101_conv2d1x169_im0_cma_c0;
    wire [27:0] i_mul101_conv2d1x169_im0_cma_s0;
    wire [27:0] i_mul101_conv2d1x169_im0_cma_qq;
    wire [27:0] i_mul101_conv2d1x169_im0_cma_q;
    wire i_mul101_conv2d1x169_im0_cma_ena0;
    wire i_mul101_conv2d1x169_im0_cma_ena1;
    wire i_mul101_conv2d1x169_im0_cma_ena2;
    wire i_mul101_conv2d1x169_im8_cma_reset;
    wire [17:0] i_mul101_conv2d1x169_im8_cma_a0;
    wire [17:0] i_mul101_conv2d1x169_im8_cma_c0;
    wire [35:0] i_mul101_conv2d1x169_im8_cma_s0;
    wire [35:0] i_mul101_conv2d1x169_im8_cma_qq;
    wire [35:0] i_mul101_conv2d1x169_im8_cma_q;
    wire i_mul101_conv2d1x169_im8_cma_ena0;
    wire i_mul101_conv2d1x169_im8_cma_ena1;
    wire i_mul101_conv2d1x169_im8_cma_ena2;
    wire i_mul115_conv2d1x175_im0_cma_reset;
    wire [13:0] i_mul115_conv2d1x175_im0_cma_a0;
    wire [13:0] i_mul115_conv2d1x175_im0_cma_c0;
    wire [27:0] i_mul115_conv2d1x175_im0_cma_s0;
    wire [27:0] i_mul115_conv2d1x175_im0_cma_qq;
    wire [27:0] i_mul115_conv2d1x175_im0_cma_q;
    wire i_mul115_conv2d1x175_im0_cma_ena0;
    wire i_mul115_conv2d1x175_im0_cma_ena1;
    wire i_mul115_conv2d1x175_im0_cma_ena2;
    wire i_mul115_conv2d1x175_im8_cma_reset;
    wire [17:0] i_mul115_conv2d1x175_im8_cma_a0;
    wire [17:0] i_mul115_conv2d1x175_im8_cma_c0;
    wire [35:0] i_mul115_conv2d1x175_im8_cma_s0;
    wire [35:0] i_mul115_conv2d1x175_im8_cma_qq;
    wire [35:0] i_mul115_conv2d1x175_im8_cma_q;
    wire i_mul115_conv2d1x175_im8_cma_ena0;
    wire i_mul115_conv2d1x175_im8_cma_ena1;
    wire i_mul115_conv2d1x175_im8_cma_ena2;
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
    wire i_mul73_conv2d1x157_im0_cma_reset;
    wire [13:0] i_mul73_conv2d1x157_im0_cma_a0;
    wire [13:0] i_mul73_conv2d1x157_im0_cma_c0;
    wire [27:0] i_mul73_conv2d1x157_im0_cma_s0;
    wire [27:0] i_mul73_conv2d1x157_im0_cma_qq;
    wire [27:0] i_mul73_conv2d1x157_im0_cma_q;
    wire i_mul73_conv2d1x157_im0_cma_ena0;
    wire i_mul73_conv2d1x157_im0_cma_ena1;
    wire i_mul73_conv2d1x157_im0_cma_ena2;
    wire i_mul73_conv2d1x157_im8_cma_reset;
    wire [17:0] i_mul73_conv2d1x157_im8_cma_a0;
    wire [17:0] i_mul73_conv2d1x157_im8_cma_c0;
    wire [35:0] i_mul73_conv2d1x157_im8_cma_s0;
    wire [35:0] i_mul73_conv2d1x157_im8_cma_qq;
    wire [35:0] i_mul73_conv2d1x157_im8_cma_q;
    wire i_mul73_conv2d1x157_im8_cma_ena0;
    wire i_mul73_conv2d1x157_im8_cma_ena1;
    wire i_mul73_conv2d1x157_im8_cma_ena2;
    wire i_mul87_conv2d1x163_im0_cma_reset;
    wire [13:0] i_mul87_conv2d1x163_im0_cma_a0;
    wire [13:0] i_mul87_conv2d1x163_im0_cma_c0;
    wire [27:0] i_mul87_conv2d1x163_im0_cma_s0;
    wire [27:0] i_mul87_conv2d1x163_im0_cma_qq;
    wire [27:0] i_mul87_conv2d1x163_im0_cma_q;
    wire i_mul87_conv2d1x163_im0_cma_ena0;
    wire i_mul87_conv2d1x163_im0_cma_ena1;
    wire i_mul87_conv2d1x163_im0_cma_ena2;
    wire i_mul87_conv2d1x163_im8_cma_reset;
    wire [17:0] i_mul87_conv2d1x163_im8_cma_a0;
    wire [17:0] i_mul87_conv2d1x163_im8_cma_c0;
    wire [35:0] i_mul87_conv2d1x163_im8_cma_s0;
    wire [35:0] i_mul87_conv2d1x163_im8_cma_qq;
    wire [35:0] i_mul87_conv2d1x163_im8_cma_q;
    wire i_mul87_conv2d1x163_im8_cma_ena0;
    wire i_mul87_conv2d1x163_im8_cma_ena1;
    wire i_mul87_conv2d1x163_im8_cma_ena2;
    wire i_mul101_conv2d1x169_ma3_cma_reset;
    wire [13:0] i_mul101_conv2d1x169_ma3_cma_a0;
    wire [17:0] i_mul101_conv2d1x169_ma3_cma_c0;
    wire [13:0] i_mul101_conv2d1x169_ma3_cma_a1;
    wire [17:0] i_mul101_conv2d1x169_ma3_cma_c1;
    wire [32:0] i_mul101_conv2d1x169_ma3_cma_s0;
    wire [32:0] i_mul101_conv2d1x169_ma3_cma_qq;
    wire [32:0] i_mul101_conv2d1x169_ma3_cma_q;
    wire i_mul101_conv2d1x169_ma3_cma_ena0;
    wire i_mul101_conv2d1x169_ma3_cma_ena1;
    wire i_mul101_conv2d1x169_ma3_cma_ena2;
    wire i_mul115_conv2d1x175_ma3_cma_reset;
    wire [13:0] i_mul115_conv2d1x175_ma3_cma_a0;
    wire [17:0] i_mul115_conv2d1x175_ma3_cma_c0;
    wire [13:0] i_mul115_conv2d1x175_ma3_cma_a1;
    wire [17:0] i_mul115_conv2d1x175_ma3_cma_c1;
    wire [32:0] i_mul115_conv2d1x175_ma3_cma_s0;
    wire [32:0] i_mul115_conv2d1x175_ma3_cma_qq;
    wire [32:0] i_mul115_conv2d1x175_ma3_cma_q;
    wire i_mul115_conv2d1x175_ma3_cma_ena0;
    wire i_mul115_conv2d1x175_ma3_cma_ena1;
    wire i_mul115_conv2d1x175_ma3_cma_ena2;
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
    wire i_mul73_conv2d1x157_ma3_cma_reset;
    wire [13:0] i_mul73_conv2d1x157_ma3_cma_a0;
    wire [17:0] i_mul73_conv2d1x157_ma3_cma_c0;
    wire [13:0] i_mul73_conv2d1x157_ma3_cma_a1;
    wire [17:0] i_mul73_conv2d1x157_ma3_cma_c1;
    wire [32:0] i_mul73_conv2d1x157_ma3_cma_s0;
    wire [32:0] i_mul73_conv2d1x157_ma3_cma_qq;
    wire [32:0] i_mul73_conv2d1x157_ma3_cma_q;
    wire i_mul73_conv2d1x157_ma3_cma_ena0;
    wire i_mul73_conv2d1x157_ma3_cma_ena1;
    wire i_mul73_conv2d1x157_ma3_cma_ena2;
    wire i_mul87_conv2d1x163_ma3_cma_reset;
    wire [13:0] i_mul87_conv2d1x163_ma3_cma_a0;
    wire [17:0] i_mul87_conv2d1x163_ma3_cma_c0;
    wire [13:0] i_mul87_conv2d1x163_ma3_cma_a1;
    wire [17:0] i_mul87_conv2d1x163_ma3_cma_c1;
    wire [32:0] i_mul87_conv2d1x163_ma3_cma_s0;
    wire [32:0] i_mul87_conv2d1x163_ma3_cma_qq;
    wire [32:0] i_mul87_conv2d1x163_ma3_cma_q;
    wire i_mul87_conv2d1x163_ma3_cma_ena0;
    wire i_mul87_conv2d1x163_ma3_cma_ena1;
    wire i_mul87_conv2d1x163_ma3_cma_ena2;
    wire [13:0] i_mul115_conv2d1x175_bs2_merged_bit_select_b;
    wire [17:0] i_mul115_conv2d1x175_bs2_merged_bit_select_c;
    wire [13:0] i_mul31_conv2d1x139_bs2_merged_bit_select_b;
    wire [17:0] i_mul31_conv2d1x139_bs2_merged_bit_select_c;
    wire [13:0] i_mul45_conv2d1x145_bs2_merged_bit_select_b;
    wire [17:0] i_mul45_conv2d1x145_bs2_merged_bit_select_c;
    wire [13:0] i_mul59_conv2d1x151_bs2_merged_bit_select_b;
    wire [17:0] i_mul59_conv2d1x151_bs2_merged_bit_select_c;
    wire [13:0] i_mul73_conv2d1x157_bs2_merged_bit_select_b;
    wire [17:0] i_mul73_conv2d1x157_bs2_merged_bit_select_c;
    wire [13:0] i_mul87_conv2d1x163_bs2_merged_bit_select_b;
    wire [17:0] i_mul87_conv2d1x163_bs2_merged_bit_select_c;
    wire [13:0] i_mul101_conv2d1x169_bs2_merged_bit_select_b;
    wire [17:0] i_mul101_conv2d1x169_bs2_merged_bit_select_c;
    wire [13:0] i_mul101_conv2d1x169_bs1_merged_bit_select_b;
    wire [17:0] i_mul101_conv2d1x169_bs1_merged_bit_select_c;
    reg [0:0] redist0_sync_together202_aunroll_x_in_c0_eni45_1_tpl_1_q;
    reg [0:0] redist1_sync_together202_aunroll_x_in_c0_eni45_1_tpl_3_q;
    reg [0:0] redist1_sync_together202_aunroll_x_in_c0_eni45_1_tpl_3_delay_0;
    reg [0:0] redist2_sync_together202_aunroll_x_in_c0_eni45_1_tpl_5_q;
    reg [0:0] redist2_sync_together202_aunroll_x_in_c0_eni45_1_tpl_5_delay_0;
    reg [0:0] redist3_sync_together202_aunroll_x_in_c0_eni45_2_tpl_3_q;
    reg [0:0] redist3_sync_together202_aunroll_x_in_c0_eni45_2_tpl_3_delay_0;
    reg [0:0] redist3_sync_together202_aunroll_x_in_c0_eni45_2_tpl_3_delay_1;
    reg [0:0] redist4_sync_together202_aunroll_x_in_c0_eni45_3_tpl_1_q;
    reg [31:0] redist5_sync_together202_aunroll_x_in_c0_eni45_4_tpl_1_q;
    reg [31:0] redist6_sync_together202_aunroll_x_in_c0_eni45_5_tpl_1_q;
    reg [31:0] redist7_sync_together202_aunroll_x_in_c0_eni45_6_tpl_1_q;
    reg [0:0] redist8_sync_together202_aunroll_x_in_c0_eni45_7_tpl_1_q;
    reg [31:0] redist9_sync_together202_aunroll_x_in_c0_eni45_8_tpl_1_q;
    reg [31:0] redist10_sync_together202_aunroll_x_in_c0_eni45_9_tpl_1_q;
    reg [0:0] redist11_sync_together202_aunroll_x_in_c0_eni45_10_tpl_5_q;
    reg [0:0] redist11_sync_together202_aunroll_x_in_c0_eni45_10_tpl_5_delay_0;
    reg [0:0] redist11_sync_together202_aunroll_x_in_c0_eni45_10_tpl_5_delay_1;
    reg [0:0] redist11_sync_together202_aunroll_x_in_c0_eni45_10_tpl_5_delay_2;
    reg [0:0] redist11_sync_together202_aunroll_x_in_c0_eni45_10_tpl_5_delay_3;
    reg [0:0] redist12_sync_together202_aunroll_x_in_c0_eni45_11_tpl_1_q;
    reg [0:0] redist15_sync_together202_aunroll_x_in_c0_eni45_14_tpl_5_q;
    reg [0:0] redist15_sync_together202_aunroll_x_in_c0_eni45_14_tpl_5_delay_0;
    reg [0:0] redist15_sync_together202_aunroll_x_in_c0_eni45_14_tpl_5_delay_1;
    reg [0:0] redist15_sync_together202_aunroll_x_in_c0_eni45_14_tpl_5_delay_2;
    reg [0:0] redist15_sync_together202_aunroll_x_in_c0_eni45_14_tpl_5_delay_3;
    reg [0:0] redist16_sync_together202_aunroll_x_in_c0_eni45_15_tpl_5_q;
    reg [0:0] redist16_sync_together202_aunroll_x_in_c0_eni45_15_tpl_5_delay_0;
    reg [0:0] redist16_sync_together202_aunroll_x_in_c0_eni45_15_tpl_5_delay_1;
    reg [0:0] redist16_sync_together202_aunroll_x_in_c0_eni45_15_tpl_5_delay_2;
    reg [0:0] redist16_sync_together202_aunroll_x_in_c0_eni45_15_tpl_5_delay_3;
    reg [0:0] redist17_sync_together202_aunroll_x_in_c0_eni45_16_tpl_5_q;
    reg [0:0] redist17_sync_together202_aunroll_x_in_c0_eni45_16_tpl_5_delay_0;
    reg [0:0] redist17_sync_together202_aunroll_x_in_c0_eni45_16_tpl_5_delay_1;
    reg [0:0] redist17_sync_together202_aunroll_x_in_c0_eni45_16_tpl_5_delay_2;
    reg [0:0] redist17_sync_together202_aunroll_x_in_c0_eni45_16_tpl_5_delay_3;
    reg [0:0] redist22_sync_together202_aunroll_x_in_c0_eni45_21_tpl_5_q;
    reg [0:0] redist22_sync_together202_aunroll_x_in_c0_eni45_21_tpl_5_delay_0;
    reg [0:0] redist22_sync_together202_aunroll_x_in_c0_eni45_21_tpl_5_delay_1;
    reg [0:0] redist22_sync_together202_aunroll_x_in_c0_eni45_21_tpl_5_delay_2;
    reg [0:0] redist22_sync_together202_aunroll_x_in_c0_eni45_21_tpl_5_delay_3;
    reg [0:0] redist47_sync_together202_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist48_sync_together202_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist49_sync_together202_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist50_sync_together202_aunroll_x_in_i_valid_4_q;
    reg [31:0] redist51_bgTrunc_i_mul87_conv2d1x163_sel_x_b_1_q;
    reg [31:0] redist52_bgTrunc_i_mul59_conv2d1x151_sel_x_b_1_q;
    reg [31:0] redist53_bgTrunc_i_mul31_conv2d1x139_sel_x_b_1_q;
    reg [31:0] redist54_bgTrunc_i_mul115_conv2d1x175_sel_x_b_1_q;
    reg [31:0] redist55_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_q;
    reg [31:0] redist55_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_delay_0;
    reg [29:0] redist56_i_mul73_conv2d1x157_vt_select_31_b_1_q;
    reg [30:0] redist57_i_mul45_conv2d1x145_vt_select_31_b_1_q;
    reg [28:0] redist58_i_mul17_conv2d1x124_vt_select_31_b_1_q;
    reg [30:0] redist59_i_mul101_conv2d1x169_vt_select_31_b_1_q;
    reg [0:0] redist60_i_masked_conv2d1x192_q_2_q;
    reg [31:0] redist62_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out_4_q;
    reg [31:0] redist62_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out_4_delay_0;
    reg [0:0] redist63_i_llvm_fpga_pop_i1_pop68_conv2d1x115_out_data_out_1_q;
    reg [0:0] redist64_i_llvm_fpga_pop_i1_pop68_conv2d1x115_out_data_out_2_q;
    reg [0:0] redist65_i_llvm_fpga_pop_i1_pop66_conv2d1x118_out_data_out_4_q;
    reg [0:0] redist65_i_llvm_fpga_pop_i1_pop66_conv2d1x118_out_data_out_4_delay_0;
    reg [0:0] redist65_i_llvm_fpga_pop_i1_pop66_conv2d1x118_out_data_out_4_delay_1;
    reg [0:0] redist65_i_llvm_fpga_pop_i1_pop66_conv2d1x118_out_data_out_4_delay_2;
    reg [0:0] redist66_i_llvm_fpga_pop_i1_notcmp4673_pop73_conv2d1x1101_out_data_out_4_q;
    reg [0:0] redist66_i_llvm_fpga_pop_i1_notcmp4673_pop73_conv2d1x1101_out_data_out_4_delay_0;
    reg [0:0] redist66_i_llvm_fpga_pop_i1_notcmp4673_pop73_conv2d1x1101_out_data_out_4_delay_1;
    reg [0:0] redist66_i_llvm_fpga_pop_i1_notcmp4673_pop73_conv2d1x1101_out_data_out_4_delay_2;
    reg [31:0] redist67_i_llvm_fpga_pop_f32_lm61_pop69_conv2d1x195_out_data_out_2_q;
    reg [31:0] redist67_i_llvm_fpga_pop_f32_lm61_pop69_conv2d1x195_out_data_out_2_delay_0;
    reg [31:0] redist68_i_llvm_fpga_pop_f32_lm61_pop69_conv2d1x195_out_data_out_4_q;
    reg [31:0] redist68_i_llvm_fpga_pop_f32_lm61_pop69_conv2d1x195_out_data_out_4_delay_0;
    reg [0:0] redist69_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_q;
    reg [0:0] redist69_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_delay_0;
    reg [0:0] redist70_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_3_q;
    reg [0:0] redist71_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_4_q;
    reg [0:0] redist72_i_first_cleanup_xor_conv2d1x14_q_2_q;
    reg [0:0] redist72_i_first_cleanup_xor_conv2d1x14_q_2_delay_0;
    wire redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_mem_reset0;
    wire [63:0] redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_mem_ia;
    wire [1:0] redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_mem_aa;
    wire [1:0] redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_mem_ab;
    wire [63:0] redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_mem_iq;
    wire [63:0] redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_mem_q;
    wire [1:0] redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_rdcnt_i;
    reg [1:0] redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_wraddr_q;
    wire [2:0] redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_mem_last_q;
    wire [2:0] redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_cmp_b;
    wire [0:0] redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_cmpReg_q;
    wire [0:0] redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_notEnable_q;
    wire [0:0] redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_sticky_ena_q;
    wire [0:0] redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_enaAnd_q;
    wire redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_mem_reset0;
    wire [31:0] redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_mem_ia;
    wire [1:0] redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_mem_aa;
    wire [1:0] redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_mem_ab;
    wire [31:0] redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_mem_iq;
    wire [31:0] redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_mem_q;
    wire [1:0] redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_rdcnt_i;
    reg [1:0] redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_wraddr_q;
    wire [2:0] redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_mem_last_q;
    wire [2:0] redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_cmp_b;
    wire [0:0] redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_cmpReg_q;
    wire [0:0] redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_notEnable_q;
    wire [0:0] redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_sticky_ena_q;
    wire [0:0] redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_enaAnd_q;
    wire redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_mem_reset0;
    wire [32:0] redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_mem_ia;
    wire [1:0] redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_mem_aa;
    wire [1:0] redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_mem_ab;
    wire [32:0] redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_mem_iq;
    wire [32:0] redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_mem_q;
    wire [1:0] redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_rdcnt_i;
    reg [1:0] redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_wraddr_q;
    wire [2:0] redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_mem_last_q;
    wire [2:0] redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_cmp_b;
    wire [0:0] redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_cmpReg_q;
    wire [0:0] redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_notEnable_q;
    wire [0:0] redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_sticky_ena_q;
    wire [0:0] redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_enaAnd_q;
    wire redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_mem_reset0;
    wire [31:0] redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_mem_ia;
    wire [1:0] redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_mem_aa;
    wire [1:0] redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_mem_ab;
    wire [31:0] redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_mem_iq;
    wire [31:0] redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_mem_q;
    wire [1:0] redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_rdcnt_i;
    reg [1:0] redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_wraddr_q;
    wire [2:0] redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_mem_last_q;
    wire [2:0] redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_cmp_b;
    wire [0:0] redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_cmpReg_q;
    wire [0:0] redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_notEnable_q;
    wire [0:0] redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_sticky_ena_q;
    wire [0:0] redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_enaAnd_q;
    wire redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_mem_reset0;
    wire [31:0] redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_mem_ia;
    wire [1:0] redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_mem_aa;
    wire [1:0] redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_mem_ab;
    wire [31:0] redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_mem_iq;
    wire [31:0] redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_mem_q;
    wire [1:0] redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_rdcnt_i;
    reg [1:0] redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_wraddr_q;
    wire [2:0] redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_mem_last_q;
    wire [2:0] redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_cmp_b;
    wire [0:0] redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_cmpReg_q;
    wire [0:0] redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_notEnable_q;
    wire [0:0] redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_sticky_ena_q;
    wire [0:0] redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_enaAnd_q;
    wire redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_mem_reset0;
    wire [31:0] redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_mem_ia;
    wire [1:0] redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_mem_aa;
    wire [1:0] redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_mem_ab;
    wire [31:0] redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_mem_iq;
    wire [31:0] redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_mem_q;
    wire [1:0] redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_rdcnt_i;
    reg [1:0] redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_wraddr_q;
    wire [2:0] redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_mem_last_q;
    wire [2:0] redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_cmp_b;
    wire [0:0] redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_cmpReg_q;
    wire [0:0] redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_notEnable_q;
    wire [0:0] redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_sticky_ena_q;
    wire [0:0] redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_enaAnd_q;
    wire redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_mem_reset0;
    wire [31:0] redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_mem_ia;
    wire [1:0] redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_mem_aa;
    wire [1:0] redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_mem_ab;
    wire [31:0] redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_mem_iq;
    wire [31:0] redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_mem_q;
    wire [1:0] redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_rdcnt_i;
    reg [1:0] redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_wraddr_q;
    wire [2:0] redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_mem_last_q;
    wire [2:0] redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_cmp_b;
    wire [0:0] redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_cmpReg_q;
    wire [0:0] redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_notEnable_q;
    wire [0:0] redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_sticky_ena_q;
    wire [0:0] redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_enaAnd_q;
    wire redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_mem_reset0;
    wire [31:0] redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_mem_ia;
    wire [1:0] redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_mem_aa;
    wire [1:0] redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_mem_ab;
    wire [31:0] redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_mem_iq;
    wire [31:0] redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_mem_q;
    wire [1:0] redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_rdcnt_i;
    reg [1:0] redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_wraddr_q;
    wire [2:0] redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_mem_last_q;
    wire [2:0] redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_cmp_b;
    wire [0:0] redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_cmpReg_q;
    wire [0:0] redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_notEnable_q;
    wire [0:0] redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_sticky_ena_q;
    wire [0:0] redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_enaAnd_q;
    wire redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_mem_reset0;
    wire [31:0] redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_mem_ia;
    wire [1:0] redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_mem_aa;
    wire [1:0] redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_mem_ab;
    wire [31:0] redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_mem_iq;
    wire [31:0] redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_mem_q;
    wire [1:0] redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_rdcnt_i;
    reg [1:0] redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_wraddr_q;
    wire [2:0] redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_mem_last_q;
    wire [2:0] redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_cmp_b;
    wire [0:0] redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_cmpReg_q;
    wire [0:0] redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_notEnable_q;
    wire [0:0] redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_sticky_ena_q;
    wire [0:0] redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_enaAnd_q;
    wire redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_mem_reset0;
    wire [31:0] redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_mem_ia;
    wire [1:0] redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_mem_aa;
    wire [1:0] redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_mem_ab;
    wire [31:0] redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_mem_iq;
    wire [31:0] redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_mem_q;
    wire [1:0] redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_rdcnt_i;
    reg [1:0] redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_wraddr_q;
    wire [2:0] redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_mem_last_q;
    wire [2:0] redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_cmp_b;
    wire [0:0] redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_cmpReg_q;
    wire [0:0] redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_notEnable_q;
    wire [0:0] redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_sticky_ena_q;
    wire [0:0] redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_enaAnd_q;
    wire redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_mem_reset0;
    wire [31:0] redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_mem_ia;
    wire [1:0] redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_mem_aa;
    wire [1:0] redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_mem_ab;
    wire [31:0] redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_mem_iq;
    wire [31:0] redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_mem_q;
    wire [1:0] redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_rdcnt_i;
    reg [1:0] redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_wraddr_q;
    wire [2:0] redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_mem_last_q;
    wire [2:0] redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_cmp_b;
    wire [0:0] redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_cmpReg_q;
    wire [0:0] redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_notEnable_q;
    wire [0:0] redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_sticky_ena_q;
    wire [0:0] redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_enaAnd_q;
    wire redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_mem_reset0;
    wire [31:0] redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_mem_ia;
    wire [1:0] redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_mem_aa;
    wire [1:0] redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_mem_ab;
    wire [31:0] redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_mem_iq;
    wire [31:0] redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_mem_q;
    wire [1:0] redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_rdcnt_i;
    reg [1:0] redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_wraddr_q;
    wire [2:0] redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_mem_last_q;
    wire [2:0] redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_cmp_b;
    wire [0:0] redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_cmpReg_q;
    wire [0:0] redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_notEnable_q;
    wire [0:0] redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_sticky_ena_q;
    wire [0:0] redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_enaAnd_q;
    wire redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_mem_reset0;
    wire [31:0] redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_mem_ia;
    wire [1:0] redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_mem_aa;
    wire [1:0] redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_mem_ab;
    wire [31:0] redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_mem_iq;
    wire [31:0] redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_mem_q;
    wire [1:0] redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_rdcnt_i;
    reg [1:0] redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_wraddr_q;
    wire [2:0] redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_mem_last_q;
    wire [2:0] redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_cmp_b;
    wire [0:0] redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_cmpReg_q;
    wire [0:0] redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_notEnable_q;
    wire [0:0] redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_sticky_ena_q;
    wire [0:0] redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_enaAnd_q;
    wire redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_mem_reset0;
    wire [31:0] redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_mem_ia;
    wire [1:0] redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_mem_aa;
    wire [1:0] redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_mem_ab;
    wire [31:0] redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_mem_iq;
    wire [31:0] redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_mem_q;
    wire [1:0] redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_rdcnt_i;
    reg [1:0] redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_wraddr_q;
    wire [2:0] redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_mem_last_q;
    wire [2:0] redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_cmp_b;
    wire [0:0] redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_cmpReg_q;
    wire [0:0] redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_notEnable_q;
    wire [0:0] redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_sticky_ena_q;
    wire [0:0] redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_enaAnd_q;
    wire redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_mem_reset0;
    wire [31:0] redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_mem_ia;
    wire [1:0] redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_mem_aa;
    wire [1:0] redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_mem_ab;
    wire [31:0] redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_mem_iq;
    wire [31:0] redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_mem_q;
    wire [1:0] redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_rdcnt_i;
    reg [1:0] redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_wraddr_q;
    wire [2:0] redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_mem_last_q;
    wire [2:0] redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_cmp_b;
    wire [0:0] redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_cmpReg_q;
    wire [0:0] redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_notEnable_q;
    wire [0:0] redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_sticky_ena_q;
    wire [0:0] redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_enaAnd_q;
    wire redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_mem_reset0;
    wire [31:0] redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_mem_ia;
    wire [1:0] redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_mem_aa;
    wire [1:0] redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_mem_ab;
    wire [31:0] redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_mem_iq;
    wire [31:0] redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_mem_q;
    wire [1:0] redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_rdcnt_i;
    reg [1:0] redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_wraddr_q;
    wire [2:0] redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_mem_last_q;
    wire [2:0] redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_cmp_b;
    wire [0:0] redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_cmpReg_q;
    wire [0:0] redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_notEnable_q;
    wire [0:0] redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_sticky_ena_q;
    wire [0:0] redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_enaAnd_q;
    wire redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_mem_reset0;
    wire [31:0] redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_mem_ia;
    wire [1:0] redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_mem_aa;
    wire [1:0] redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_mem_ab;
    wire [31:0] redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_mem_iq;
    wire [31:0] redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_mem_q;
    wire [1:0] redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_rdcnt_i;
    reg [1:0] redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_wraddr_q;
    wire [2:0] redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_mem_last_q;
    wire [2:0] redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_cmp_b;
    wire [0:0] redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_cmpReg_q;
    wire [0:0] redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_notEnable_q;
    wire [0:0] redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_sticky_ena_q;
    wire [0:0] redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_enaAnd_q;
    wire redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_mem_reset0;
    wire [31:0] redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_mem_ia;
    wire [1:0] redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_mem_aa;
    wire [1:0] redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_mem_ab;
    wire [31:0] redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_mem_iq;
    wire [31:0] redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_mem_q;
    wire [1:0] redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_rdcnt_i;
    reg [1:0] redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_wraddr_q;
    wire [2:0] redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_mem_last_q;
    wire [2:0] redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_cmp_b;
    wire [0:0] redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_cmpReg_q;
    wire [0:0] redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_notEnable_q;
    wire [0:0] redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_sticky_ena_q;
    wire [0:0] redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_enaAnd_q;
    wire redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_mem_reset0;
    wire [31:0] redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_mem_ia;
    wire [1:0] redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_mem_aa;
    wire [1:0] redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_mem_ab;
    wire [31:0] redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_mem_iq;
    wire [31:0] redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_mem_q;
    wire [1:0] redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_rdcnt_i;
    reg [1:0] redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_wraddr_q;
    wire [2:0] redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_mem_last_q;
    wire [2:0] redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_cmp_b;
    wire [0:0] redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_cmpReg_q;
    wire [0:0] redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_notEnable_q;
    wire [0:0] redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_sticky_ena_q;
    wire [0:0] redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_enaAnd_q;
    wire redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_mem_reset0;
    wire [31:0] redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_mem_ia;
    wire [1:0] redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_mem_aa;
    wire [1:0] redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_mem_ab;
    wire [31:0] redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_mem_iq;
    wire [31:0] redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_mem_q;
    wire [1:0] redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_rdcnt_i;
    reg [1:0] redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_wraddr_q;
    wire [2:0] redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_mem_last_q;
    wire [2:0] redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_cmp_b;
    wire [0:0] redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_cmpReg_q;
    wire [0:0] redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_notEnable_q;
    wire [0:0] redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_sticky_ena_q;
    wire [0:0] redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_enaAnd_q;
    wire redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_mem_reset0;
    wire [31:0] redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_mem_ia;
    wire [1:0] redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_mem_aa;
    wire [1:0] redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_mem_ab;
    wire [31:0] redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_mem_iq;
    wire [31:0] redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_mem_q;
    wire [1:0] redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_rdcnt_i;
    reg [1:0] redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_wraddr_q;
    wire [2:0] redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_mem_last_q;
    wire [2:0] redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_cmp_b;
    wire [0:0] redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_cmpReg_q;
    wire [0:0] redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_notEnable_q;
    wire [0:0] redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_sticky_ena_q;
    wire [0:0] redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_enaAnd_q;
    wire redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_mem_reset0;
    wire [31:0] redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_mem_ia;
    wire [1:0] redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_mem_aa;
    wire [1:0] redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_mem_ab;
    wire [31:0] redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_mem_iq;
    wire [31:0] redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_mem_q;
    wire [1:0] redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_rdcnt_i;
    reg [1:0] redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_wraddr_q;
    wire [2:0] redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_mem_last_q;
    wire [2:0] redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_cmp_b;
    wire [0:0] redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_cmpReg_q;
    wire [0:0] redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_notEnable_q;
    wire [0:0] redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_sticky_ena_q;
    wire [0:0] redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_enaAnd_q;
    wire redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_mem_reset0;
    wire [31:0] redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_mem_ia;
    wire [1:0] redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_mem_aa;
    wire [1:0] redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_mem_ab;
    wire [31:0] redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_mem_iq;
    wire [31:0] redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_mem_q;
    wire [1:0] redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_rdcnt_i;
    reg [1:0] redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_wraddr_q;
    wire [2:0] redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_mem_last_q;
    wire [2:0] redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_cmp_b;
    wire [0:0] redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_cmpReg_q;
    wire [0:0] redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_notEnable_q;
    wire [0:0] redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_sticky_ena_q;
    wire [0:0] redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_enaAnd_q;
    wire redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_mem_reset0;
    wire [31:0] redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_mem_ia;
    wire [1:0] redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_mem_aa;
    wire [1:0] redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_mem_ab;
    wire [31:0] redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_mem_iq;
    wire [31:0] redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_mem_q;
    wire [1:0] redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_rdcnt_i;
    reg [1:0] redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_wraddr_q;
    wire [2:0] redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_mem_last_q;
    wire [2:0] redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_cmp_b;
    wire [0:0] redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_cmpReg_q;
    wire [0:0] redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_notEnable_q;
    wire [0:0] redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_sticky_ena_q;
    wire [0:0] redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_enaAnd_q;
    wire redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_mem_reset0;
    wire [31:0] redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_mem_ia;
    wire [1:0] redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_mem_aa;
    wire [1:0] redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_mem_ab;
    wire [31:0] redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_mem_iq;
    wire [31:0] redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_mem_q;
    wire [1:0] redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_rdcnt_i;
    reg [1:0] redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_wraddr_q;
    wire [2:0] redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_mem_last_q;
    wire [2:0] redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_cmp_b;
    wire [0:0] redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_cmpReg_q;
    wire [0:0] redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_notEnable_q;
    wire [0:0] redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_sticky_ena_q;
    wire [0:0] redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_enaAnd_q;
    wire redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_mem_reset0;
    wire [31:0] redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_mem_ia;
    wire [1:0] redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_mem_aa;
    wire [1:0] redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_mem_ab;
    wire [31:0] redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_mem_iq;
    wire [31:0] redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_mem_q;
    wire [1:0] redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_rdcnt_i;
    reg [1:0] redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_wraddr_q;
    wire [2:0] redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_mem_last_q;
    wire [2:0] redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_cmp_b;
    wire [0:0] redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_cmpReg_q;
    wire [0:0] redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_notEnable_q;
    wire [0:0] redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_sticky_ena_q;
    wire [0:0] redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_enaAnd_q;
    wire redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_mem_reset0;
    wire [31:0] redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_mem_ia;
    wire [1:0] redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_mem_aa;
    wire [1:0] redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_mem_ab;
    wire [31:0] redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_mem_iq;
    wire [31:0] redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_mem_q;
    wire [1:0] redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_rdcnt_i;
    reg [1:0] redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_wraddr_q;
    wire [2:0] redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_mem_last_q;
    wire [2:0] redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_cmp_b;
    wire [0:0] redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_cmpReg_q;
    wire [0:0] redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_notEnable_q;
    wire [0:0] redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_sticky_ena_q;
    wire [0:0] redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_enaAnd_q;
    wire redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_mem_reset0;
    wire [31:0] redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_mem_ia;
    wire [1:0] redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_mem_aa;
    wire [1:0] redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_mem_ab;
    wire [31:0] redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_mem_iq;
    wire [31:0] redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_mem_q;
    wire [1:0] redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_rdcnt_i;
    reg [1:0] redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_wraddr_q;
    wire [2:0] redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_mem_last_q;
    wire [2:0] redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_cmp_b;
    wire [0:0] redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_cmpReg_q;
    wire [0:0] redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_notEnable_q;
    wire [0:0] redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_sticky_ena_q;
    wire [0:0] redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_enaAnd_q;
    wire redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_mem_reset0;
    wire [31:0] redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_mem_ia;
    wire [1:0] redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_mem_aa;
    wire [1:0] redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_mem_ab;
    wire [31:0] redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_mem_iq;
    wire [31:0] redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_mem_q;
    wire [1:0] redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_rdcnt_i;
    reg [1:0] redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_wraddr_q;
    wire [2:0] redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_mem_last_q;
    wire [2:0] redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_cmp_b;
    wire [0:0] redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_cmpReg_q;
    wire [0:0] redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_notEnable_q;
    wire [0:0] redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_sticky_ena_q;
    wire [0:0] redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_enaAnd_q;
    wire redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_mem_reset0;
    wire [31:0] redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_mem_ia;
    wire [1:0] redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_mem_aa;
    wire [1:0] redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_mem_ab;
    wire [31:0] redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_mem_iq;
    wire [31:0] redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_mem_q;
    wire [1:0] redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_rdcnt_i;
    reg [1:0] redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_wraddr_q;
    wire [2:0] redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_mem_last_q;
    wire [2:0] redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_cmp_b;
    wire [0:0] redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_cmpReg_q;
    wire [0:0] redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_notEnable_q;
    wire [0:0] redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_sticky_ena_q;
    wire [0:0] redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_enaAnd_q;
    reg [31:0] redist55_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_inputreg0_q;
    reg [31:0] redist55_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_outputreg0_q;
    reg [31:0] redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_inputreg0_q;
    wire redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_mem_reset0;
    wire [31:0] redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_mem_ia;
    wire [0:0] redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_mem_aa;
    wire [0:0] redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_mem_ab;
    wire [31:0] redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_mem_iq;
    wire [31:0] redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_mem_q;
    wire [0:0] redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_rdcnt_q;
    (* preserve *) reg [0:0] redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_rdcnt_i;
    reg [0:0] redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_cmpReg_q;
    wire [0:0] redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_notEnable_q;
    wire [0:0] redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_sticky_ena_q;
    wire [0:0] redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_enaAnd_q;
    reg [31:0] redist62_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out_4_inputreg0_q;
    reg [31:0] redist62_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out_4_outputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist47_sync_together202_aunroll_x_in_i_valid_1(DELAY,699)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_sync_together202_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist47_sync_together202_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist48_sync_together202_aunroll_x_in_i_valid_2(DELAY,700)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_sync_together202_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist48_sync_together202_aunroll_x_in_i_valid_2_q <= $unsigned(redist47_sync_together202_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist49_sync_together202_aunroll_x_in_i_valid_3(DELAY,701)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_sync_together202_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist49_sync_together202_aunroll_x_in_i_valid_3_q <= $unsigned(redist48_sync_together202_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist69_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2(DELAY,721)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist69_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_delay_0 <= '0;
            redist69_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_q <= '0;
        end
        else
        begin
            redist69_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out);
            redist69_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_q <= redist69_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_delay_0;
        end
    end

    // leftShiftStage0Idx1Rng1_uid595_i_cleanups_shl_conv2d1x10_shift_x(BITSELECT,594)@4
    assign leftShiftStage0Idx1Rng1_uid595_i_cleanups_shl_conv2d1x10_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop64_conv2d1x12_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid595_i_cleanups_shl_conv2d1x10_shift_x_b = leftShiftStage0Idx1Rng1_uid595_i_cleanups_shl_conv2d1x10_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid596_i_cleanups_shl_conv2d1x10_shift_x(BITJOIN,595)@4
    assign leftShiftStage0Idx1_uid596_i_cleanups_shl_conv2d1x10_shift_x_q = {leftShiftStage0Idx1Rng1_uid595_i_cleanups_shl_conv2d1x10_shift_x_b, GND_q};

    // leftShiftStage0_uid598_i_cleanups_shl_conv2d1x10_shift_x(MUX,597)@4
    assign leftShiftStage0_uid598_i_cleanups_shl_conv2d1x10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid598_i_cleanups_shl_conv2d1x10_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop64_conv2d1x12_out_data_out or leftShiftStage0Idx1_uid596_i_cleanups_shl_conv2d1x10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid598_i_cleanups_shl_conv2d1x10_shift_x_s)
            1'b0 : leftShiftStage0_uid598_i_cleanups_shl_conv2d1x10_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop64_conv2d1x12_out_data_out;
            1'b1 : leftShiftStage0_uid598_i_cleanups_shl_conv2d1x10_shift_x_q = leftShiftStage0Idx1_uid596_i_cleanups_shl_conv2d1x10_shift_x_q;
            default : leftShiftStage0_uid598_i_cleanups_shl_conv2d1x10_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_conv2d1x15_vt_select_1(BITSELECT,143)@4
    assign i_cleanups_shl_conv2d1x15_vt_select_1_b = leftShiftStage0_uid598_i_cleanups_shl_conv2d1x10_shift_x_q[1:1];

    // i_cleanups_shl_conv2d1x15_vt_join(BITJOIN,142)@4
    assign i_cleanups_shl_conv2d1x15_vt_join_q = {i_cleanups_shl_conv2d1x15_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_conv2d1x14(LOGICAL,146)@4
    assign i_first_cleanup_xor_conv2d1x14_q = i_first_cleanup_conv2d1x13_sel_x_b ^ VCC_q;

    // i_notcmp_conv2d1x187(LOGICAL,265)@4
    assign i_notcmp_conv2d1x187_q = i_unnamed_conv2d1x186_q ^ VCC_q;

    // i_or_conv2d1x189(LOGICAL,266)@4
    assign i_or_conv2d1x189_q = i_notcmp_conv2d1x187_q | i_first_cleanup_xor_conv2d1x14_q;

    // i_next_cleanups_conv2d1x190(MUX,261)@4
    assign i_next_cleanups_conv2d1x190_s = i_or_conv2d1x189_q;
    always @(i_next_cleanups_conv2d1x190_s or i_llvm_fpga_pop_i2_cleanups_pop64_conv2d1x12_out_data_out or i_cleanups_shl_conv2d1x15_vt_join_q)
    begin
        unique case (i_next_cleanups_conv2d1x190_s)
            1'b0 : i_next_cleanups_conv2d1x190_q = i_llvm_fpga_pop_i2_cleanups_pop64_conv2d1x12_out_data_out;
            1'b1 : i_next_cleanups_conv2d1x190_q = i_cleanups_shl_conv2d1x15_vt_join_q;
            default : i_next_cleanups_conv2d1x190_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push64_conv2d1x191(BLACKBOX,195)@4
    // out out_feedback_out_64@20000000
    // out out_feedback_valid_out_64@20000000
    conv2d1x1_i_llvm_fpga_push_i2_cleanups_push64_0 thei_llvm_fpga_push_i2_cleanups_push64_conv2d1x191 (
        .in_data_in(i_next_cleanups_conv2d1x190_q),
        .in_feedback_stall_in_64(i_llvm_fpga_pop_i2_cleanups_pop64_conv2d1x12_out_feedback_stall_out_64),
        .in_keep_going(redist69_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist49_sync_together202_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_64(i_llvm_fpga_push_i2_cleanups_push64_conv2d1x191_out_feedback_out_64),
        .out_feedback_valid_out_64(i_llvm_fpga_push_i2_cleanups_push64_conv2d1x191_out_feedback_valid_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together202_aunroll_x_in_c0_eni45_1_tpl_3(DELAY,653)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together202_aunroll_x_in_c0_eni45_1_tpl_3_delay_0 <= '0;
            redist1_sync_together202_aunroll_x_in_c0_eni45_1_tpl_3_q <= '0;
        end
        else
        begin
            redist1_sync_together202_aunroll_x_in_c0_eni45_1_tpl_3_delay_0 <= $unsigned(redist0_sync_together202_aunroll_x_in_c0_eni45_1_tpl_1_q);
            redist1_sync_together202_aunroll_x_in_c0_eni45_1_tpl_3_q <= redist1_sync_together202_aunroll_x_in_c0_eni45_1_tpl_3_delay_0;
        end
    end

    // c_i2_1149(CONSTANT,65)
    assign c_i2_1149_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop64_conv2d1x12(BLACKBOX,178)@4
    // out out_feedback_stall_out_64@20000000
    conv2d1x1_i_llvm_fpga_pop_i2_cleanups_pop64_0 thei_llvm_fpga_pop_i2_cleanups_pop64_conv2d1x12 (
        .in_data_in(c_i2_1149_q),
        .in_dir(redist1_sync_together202_aunroll_x_in_c0_eni45_1_tpl_3_q),
        .in_feedback_in_64(i_llvm_fpga_push_i2_cleanups_push64_conv2d1x191_out_feedback_out_64),
        .in_feedback_valid_in_64(i_llvm_fpga_push_i2_cleanups_push64_conv2d1x191_out_feedback_valid_out_64),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist49_sync_together202_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop64_conv2d1x12_out_data_out),
        .out_feedback_stall_out_64(i_llvm_fpga_pop_i2_cleanups_pop64_conv2d1x12_out_feedback_stall_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_conv2d1x13_sel_x(BITSELECT,366)@4
    assign i_first_cleanup_conv2d1x13_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop64_conv2d1x12_out_data_out[0:0];

    // i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x121_conv2d1x112(BLACKBOX,170)@4
    conv2d1x1_i_llvm_fpga_ffwd_dest_i33_unnamed_21_conv2d1x10 thei_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x121_conv2d1x112 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist49_sync_together202_aunroll_x_in_i_valid_3_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x121_conv2d1x112_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_1161(CONSTANT,74)
    assign c_i33_1161_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next32_conv2d1x184(ADD,149)@4
    assign i_fpga_indvars_iv_next32_conv2d1x184_a = {1'b0, i_fpga_indvars_iv31_replace_phi_conv2d1x114_q};
    assign i_fpga_indvars_iv_next32_conv2d1x184_b = {1'b0, c_i33_1161_q};
    assign i_fpga_indvars_iv_next32_conv2d1x184_o = $unsigned(i_fpga_indvars_iv_next32_conv2d1x184_a) + $unsigned(i_fpga_indvars_iv_next32_conv2d1x184_b);
    assign i_fpga_indvars_iv_next32_conv2d1x184_q = i_fpga_indvars_iv_next32_conv2d1x184_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next32_conv2d1x184_sel_x(BITSELECT,289)@4
    assign bgTrunc_i_fpga_indvars_iv_next32_conv2d1x184_sel_x_b = i_fpga_indvars_iv_next32_conv2d1x184_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv31_push37_conv2d1x185(BLACKBOX,202)@4
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    conv2d1x1_i_llvm_fpga_push_i33_fpga_indvars_iv31_push37_0 thei_llvm_fpga_push_i33_fpga_indvars_iv31_push37_conv2d1x185 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next32_conv2d1x184_sel_x_b),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i33_fpga_indvars_iv31_pop37_conv2d1x113_out_feedback_stall_out_37),
        .in_keep_going(redist69_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist49_sync_together202_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i33_fpga_indvars_iv31_push37_conv2d1x185_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i33_fpga_indvars_iv31_push37_conv2d1x185_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef151(CONSTANT,75)
    assign c_i33_undef151_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv31_pop37_conv2d1x113(BLACKBOX,185)@4
    // out out_feedback_stall_out_37@20000000
    conv2d1x1_i_llvm_fpga_pop_i33_fpga_indvars_iv31_pop37_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv31_pop37_conv2d1x113 (
        .in_data_in(c_i33_undef151_q),
        .in_dir(redist1_sync_together202_aunroll_x_in_c0_eni45_1_tpl_3_q),
        .in_feedback_in_37(i_llvm_fpga_push_i33_fpga_indvars_iv31_push37_conv2d1x185_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i33_fpga_indvars_iv31_push37_conv2d1x185_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist49_sync_together202_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv31_pop37_conv2d1x113_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i33_fpga_indvars_iv31_pop37_conv2d1x113_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv31_replace_phi_conv2d1x114(MUX,148)@4
    assign i_fpga_indvars_iv31_replace_phi_conv2d1x114_s = redist1_sync_together202_aunroll_x_in_c0_eni45_1_tpl_3_q;
    always @(i_fpga_indvars_iv31_replace_phi_conv2d1x114_s or i_llvm_fpga_pop_i33_fpga_indvars_iv31_pop37_conv2d1x113_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x121_conv2d1x112_out_dest_data_out_3_0)
    begin
        unique case (i_fpga_indvars_iv31_replace_phi_conv2d1x114_s)
            1'b0 : i_fpga_indvars_iv31_replace_phi_conv2d1x114_q = i_llvm_fpga_pop_i33_fpga_indvars_iv31_pop37_conv2d1x113_out_data_out;
            1'b1 : i_fpga_indvars_iv31_replace_phi_conv2d1x114_q = i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x121_conv2d1x112_out_dest_data_out_3_0;
            default : i_fpga_indvars_iv31_replace_phi_conv2d1x114_q = 33'b0;
        endcase
    end

    // i_exitcond33_conv2d1x182_cmp_nsign(LOGICAL,470)@4
    assign i_exitcond33_conv2d1x182_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv31_replace_phi_conv2d1x114_q[32:32]));

    // redist50_sync_together202_aunroll_x_in_i_valid_4(DELAY,702)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_sync_together202_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist50_sync_together202_aunroll_x_in_i_valid_4_q <= $unsigned(redist49_sync_together202_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist70_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_3(DELAY,722)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist70_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_3_q <= '0;
        end
        else
        begin
            redist70_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_3_q <= $unsigned(redist69_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_q);
        end
    end

    // redist63_i_llvm_fpga_pop_i1_pop68_conv2d1x115_out_data_out_1(DELAY,715)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_i_llvm_fpga_pop_i1_pop68_conv2d1x115_out_data_out_1_q <= '0;
        end
        else
        begin
            redist63_i_llvm_fpga_pop_i1_pop68_conv2d1x115_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_pop68_conv2d1x115_out_data_out);
        end
    end

    // i_llvm_fpga_push_i1_push68_conv2d1x116(BLACKBOX,194)@5
    // out out_feedback_out_68@20000000
    // out out_feedback_valid_out_68@20000000
    conv2d1x1_i_llvm_fpga_push_i1_push68_0 thei_llvm_fpga_push_i1_push68_conv2d1x116 (
        .in_data_in(redist63_i_llvm_fpga_pop_i1_pop68_conv2d1x115_out_data_out_1_q),
        .in_feedback_stall_in_68(i_llvm_fpga_pop_i1_pop68_conv2d1x115_out_feedback_stall_out_68),
        .in_keep_going(redist70_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist50_sync_together202_aunroll_x_in_i_valid_4_q),
        .out_data_out(),
        .out_feedback_out_68(i_llvm_fpga_push_i1_push68_conv2d1x116_out_feedback_out_68),
        .out_feedback_valid_out_68(i_llvm_fpga_push_i1_push68_conv2d1x116_out_feedback_valid_out_68),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together202_aunroll_x_in_c0_eni45_2_tpl_3(DELAY,655)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together202_aunroll_x_in_c0_eni45_2_tpl_3_delay_0 <= '0;
            redist3_sync_together202_aunroll_x_in_c0_eni45_2_tpl_3_delay_1 <= '0;
            redist3_sync_together202_aunroll_x_in_c0_eni45_2_tpl_3_q <= '0;
        end
        else
        begin
            redist3_sync_together202_aunroll_x_in_c0_eni45_2_tpl_3_delay_0 <= $unsigned(in_c0_eni45_2_tpl);
            redist3_sync_together202_aunroll_x_in_c0_eni45_2_tpl_3_delay_1 <= redist3_sync_together202_aunroll_x_in_c0_eni45_2_tpl_3_delay_0;
            redist3_sync_together202_aunroll_x_in_c0_eni45_2_tpl_3_q <= redist3_sync_together202_aunroll_x_in_c0_eni45_2_tpl_3_delay_1;
        end
    end

    // i_llvm_fpga_pop_i1_pop68_conv2d1x115(BLACKBOX,177)@4
    // out out_feedback_stall_out_68@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_pop68_0 thei_llvm_fpga_pop_i1_pop68_conv2d1x115 (
        .in_data_in(redist3_sync_together202_aunroll_x_in_c0_eni45_2_tpl_3_q),
        .in_dir(redist1_sync_together202_aunroll_x_in_c0_eni45_1_tpl_3_q),
        .in_feedback_in_68(i_llvm_fpga_push_i1_push68_conv2d1x116_out_feedback_out_68),
        .in_feedback_valid_in_68(i_llvm_fpga_push_i1_push68_conv2d1x116_out_feedback_valid_out_68),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist49_sync_together202_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop68_conv2d1x115_out_data_out),
        .out_feedback_stall_out_68(i_llvm_fpga_pop_i1_pop68_conv2d1x115_out_feedback_stall_out_68),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d1x186(LOGICAL,271)@4
    assign i_unnamed_conv2d1x186_q = i_llvm_fpga_pop_i1_pop68_conv2d1x115_out_data_out & i_exitcond33_conv2d1x182_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_conv2d1x188(BLACKBOX,191)@4
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    conv2d1x1_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_conv2d1x188 (
        .in_data_in(i_unnamed_conv2d1x186_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_conv2d1x13_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist49_sync_together202_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_conv2d1x188_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_conv2d1x188_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,390)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid602_i_next_initerations_conv2d1x10_shift_x(BITSELECT,601)@2
    assign rightShiftStage0Idx1Rng1_uid602_i_next_initerations_conv2d1x10_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop63_conv2d1x17_out_data_out[1:1];

    // rightShiftStage0Idx1_uid604_i_next_initerations_conv2d1x10_shift_x(BITJOIN,603)@2
    assign rightShiftStage0Idx1_uid604_i_next_initerations_conv2d1x10_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid602_i_next_initerations_conv2d1x10_shift_x_b};

    // valid_fanout_reg1(REG,388)@1 + 1
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

    // valid_fanout_reg2(REG,389)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations_push63_conv2d1x19(BLACKBOX,196)@2
    // out out_feedback_out_63@20000000
    // out out_feedback_valid_out_63@20000000
    conv2d1x1_i_llvm_fpga_push_i2_initerations_push63_0 thei_llvm_fpga_push_i2_initerations_push63_conv2d1x19 (
        .in_data_in(i_next_initerations_conv2d1x18_vt_join_q),
        .in_feedback_stall_in_63(i_llvm_fpga_pop_i2_initerations_pop63_conv2d1x17_out_feedback_stall_out_63),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_63(i_llvm_fpga_push_i2_initerations_push63_conv2d1x19_out_feedback_out_63),
        .out_feedback_valid_out_63(i_llvm_fpga_push_i2_initerations_push63_conv2d1x19_out_feedback_valid_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop63_conv2d1x17(BLACKBOX,179)@2
    // out out_feedback_stall_out_63@20000000
    conv2d1x1_i_llvm_fpga_pop_i2_initerations_pop63_0 thei_llvm_fpga_pop_i2_initerations_pop63_conv2d1x17 (
        .in_data_in(c_i2_1149_q),
        .in_dir(redist0_sync_together202_aunroll_x_in_c0_eni45_1_tpl_1_q),
        .in_feedback_in_63(i_llvm_fpga_push_i2_initerations_push63_conv2d1x19_out_feedback_out_63),
        .in_feedback_valid_in_63(i_llvm_fpga_push_i2_initerations_push63_conv2d1x19_out_feedback_valid_out_63),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop63_conv2d1x17_out_data_out),
        .out_feedback_stall_out_63(i_llvm_fpga_pop_i2_initerations_pop63_conv2d1x17_out_feedback_stall_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid606_i_next_initerations_conv2d1x10_shift_x(MUX,605)@2
    assign rightShiftStage0_uid606_i_next_initerations_conv2d1x10_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid606_i_next_initerations_conv2d1x10_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop63_conv2d1x17_out_data_out or rightShiftStage0Idx1_uid604_i_next_initerations_conv2d1x10_shift_x_q)
    begin
        unique case (rightShiftStage0_uid606_i_next_initerations_conv2d1x10_shift_x_s)
            1'b0 : rightShiftStage0_uid606_i_next_initerations_conv2d1x10_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop63_conv2d1x17_out_data_out;
            1'b1 : rightShiftStage0_uid606_i_next_initerations_conv2d1x10_shift_x_q = rightShiftStage0Idx1_uid604_i_next_initerations_conv2d1x10_shift_x_q;
            default : rightShiftStage0_uid606_i_next_initerations_conv2d1x10_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_conv2d1x18_vt_select_0(BITSELECT,264)@2
    assign i_next_initerations_conv2d1x18_vt_select_0_b = rightShiftStage0_uid606_i_next_initerations_conv2d1x10_shift_x_q[0:0];

    // i_next_initerations_conv2d1x18_vt_join(BITJOIN,263)@2
    assign i_next_initerations_conv2d1x18_vt_join_q = {GND_q, i_next_initerations_conv2d1x18_vt_select_0_b};

    // i_last_initeration_conv2d1x110_sel_x(BITSELECT,376)@2
    assign i_last_initeration_conv2d1x110_sel_x_b = i_next_initerations_conv2d1x18_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_conv2d1x111(BLACKBOX,188)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    conv2d1x1_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_conv2d1x111 (
        .in_data_in(i_last_initeration_conv2d1x110_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_initeration_stall_out),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out),
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

    // redist0_sync_together202_aunroll_x_in_c0_eni45_1_tpl_1(DELAY,652)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together202_aunroll_x_in_c0_eni45_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together202_aunroll_x_in_c0_eni45_1_tpl_1_q <= $unsigned(in_c0_eni45_1_tpl);
        end
    end

    // i_llvm_fpga_pipeline_keep_going_conv2d1x16(BLACKBOX,171)@2
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    conv2d1x1_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_conv2d1x16 (
        .in_data_in(redist0_sync_together202_aunroll_x_in_c0_eni45_1_tpl_1_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_conv2d1x111_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_conv2d1x111_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_conv2d1x188_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_conv2d1x188_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist47_sync_together202_aunroll_x_in_i_valid_1_q),
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

    // ext_sig_sync_out(GPOUT,76)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,275)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,387)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist50_sync_together202_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_notEnable(LOGICAL,1021)
    assign redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_nor(LOGICAL,1022)
    assign redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_nor_q = ~ (redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_notEnable_q | redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_sticky_ena_q);

    // redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_mem_last(CONSTANT,1018)
    assign redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_cmp(LOGICAL,1019)
    assign redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_cmp_b = {1'b0, redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_rdcnt_q};
    assign redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_cmp_q = $unsigned(redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_mem_last_q == redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_cmpReg(REG,1020)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_cmpReg_q <= $unsigned(redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_cmp_q);
        end
    end

    // redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_sticky_ena(REG,1023)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_nor_q == 1'b1)
        begin
            redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_sticky_ena_q <= $unsigned(redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_cmpReg_q);
        end
    end

    // redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_enaAnd(LOGICAL,1024)
    assign redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_enaAnd_q = redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_sticky_ena_q & VCC_q;

    // redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_rdcnt(COUNTER,1016)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_rdcnt_i <= $unsigned(redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_rdcnt_q = redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_rdcnt_i[1:0];

    // redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_wraddr(REG,1017)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_wraddr_q <= $unsigned(redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_rdcnt_q);
        end
    end

    // redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_mem(DUALMEM,1015)
    assign redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_mem_ia = $unsigned(in_c0_eni45_45_tpl);
    assign redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_mem_aa = redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_wraddr_q;
    assign redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_mem_ab = redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_rdcnt_q;
    assign redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_mem_dmem (
        .clocken1(redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_mem_aa),
        .data_a(redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_mem_ab),
        .q_b(redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_mem_iq),
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
    assign redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_mem_q = redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_mem_iq[31:0];

    // redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_notEnable(LOGICAL,1011)
    assign redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_nor(LOGICAL,1012)
    assign redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_nor_q = ~ (redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_notEnable_q | redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_sticky_ena_q);

    // redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_mem_last(CONSTANT,1008)
    assign redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_cmp(LOGICAL,1009)
    assign redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_cmp_b = {1'b0, redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_rdcnt_q};
    assign redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_cmp_q = $unsigned(redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_mem_last_q == redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_cmpReg(REG,1010)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_cmpReg_q <= $unsigned(redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_cmp_q);
        end
    end

    // redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_sticky_ena(REG,1013)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_nor_q == 1'b1)
        begin
            redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_sticky_ena_q <= $unsigned(redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_cmpReg_q);
        end
    end

    // redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_enaAnd(LOGICAL,1014)
    assign redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_enaAnd_q = redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_sticky_ena_q & VCC_q;

    // redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_rdcnt(COUNTER,1006)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_rdcnt_i <= $unsigned(redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_rdcnt_q = redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_rdcnt_i[1:0];

    // redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_wraddr(REG,1007)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_wraddr_q <= $unsigned(redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_rdcnt_q);
        end
    end

    // redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_mem(DUALMEM,1005)
    assign redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_mem_ia = $unsigned(in_c0_eni45_44_tpl);
    assign redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_mem_aa = redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_wraddr_q;
    assign redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_mem_ab = redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_rdcnt_q;
    assign redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_mem_dmem (
        .clocken1(redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_mem_aa),
        .data_a(redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_mem_ab),
        .q_b(redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_mem_iq),
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
    assign redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_mem_q = redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_mem_iq[31:0];

    // redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_notEnable(LOGICAL,1001)
    assign redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_nor(LOGICAL,1002)
    assign redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_nor_q = ~ (redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_notEnable_q | redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_sticky_ena_q);

    // redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_mem_last(CONSTANT,998)
    assign redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_cmp(LOGICAL,999)
    assign redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_cmp_b = {1'b0, redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_rdcnt_q};
    assign redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_cmp_q = $unsigned(redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_mem_last_q == redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_cmpReg(REG,1000)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_cmpReg_q <= $unsigned(redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_cmp_q);
        end
    end

    // redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_sticky_ena(REG,1003)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_nor_q == 1'b1)
        begin
            redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_sticky_ena_q <= $unsigned(redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_cmpReg_q);
        end
    end

    // redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_enaAnd(LOGICAL,1004)
    assign redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_enaAnd_q = redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_sticky_ena_q & VCC_q;

    // redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_rdcnt(COUNTER,996)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_rdcnt_i <= $unsigned(redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_rdcnt_q = redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_rdcnt_i[1:0];

    // redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_wraddr(REG,997)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_wraddr_q <= $unsigned(redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_rdcnt_q);
        end
    end

    // redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_mem(DUALMEM,995)
    assign redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_mem_ia = $unsigned(in_c0_eni45_43_tpl);
    assign redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_mem_aa = redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_wraddr_q;
    assign redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_mem_ab = redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_rdcnt_q;
    assign redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_mem_dmem (
        .clocken1(redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_mem_aa),
        .data_a(redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_mem_ab),
        .q_b(redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_mem_iq),
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
    assign redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_mem_q = redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_mem_iq[31:0];

    // redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_notEnable(LOGICAL,991)
    assign redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_nor(LOGICAL,992)
    assign redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_nor_q = ~ (redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_notEnable_q | redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_sticky_ena_q);

    // redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_mem_last(CONSTANT,988)
    assign redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_cmp(LOGICAL,989)
    assign redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_cmp_b = {1'b0, redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_rdcnt_q};
    assign redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_cmp_q = $unsigned(redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_mem_last_q == redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_cmpReg(REG,990)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_cmpReg_q <= $unsigned(redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_cmp_q);
        end
    end

    // redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_sticky_ena(REG,993)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_nor_q == 1'b1)
        begin
            redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_sticky_ena_q <= $unsigned(redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_cmpReg_q);
        end
    end

    // redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_enaAnd(LOGICAL,994)
    assign redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_enaAnd_q = redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_sticky_ena_q & VCC_q;

    // redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_rdcnt(COUNTER,986)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_rdcnt_i <= $unsigned(redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_rdcnt_q = redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_rdcnt_i[1:0];

    // redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_wraddr(REG,987)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_wraddr_q <= $unsigned(redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_rdcnt_q);
        end
    end

    // redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_mem(DUALMEM,985)
    assign redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_mem_ia = $unsigned(in_c0_eni45_42_tpl);
    assign redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_mem_aa = redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_wraddr_q;
    assign redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_mem_ab = redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_rdcnt_q;
    assign redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_mem_dmem (
        .clocken1(redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_mem_aa),
        .data_a(redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_mem_ab),
        .q_b(redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_mem_iq),
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
    assign redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_mem_q = redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_mem_iq[31:0];

    // redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_notEnable(LOGICAL,981)
    assign redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_nor(LOGICAL,982)
    assign redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_nor_q = ~ (redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_notEnable_q | redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_sticky_ena_q);

    // redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_mem_last(CONSTANT,978)
    assign redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_cmp(LOGICAL,979)
    assign redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_cmp_b = {1'b0, redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_rdcnt_q};
    assign redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_cmp_q = $unsigned(redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_mem_last_q == redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_cmpReg(REG,980)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_cmpReg_q <= $unsigned(redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_cmp_q);
        end
    end

    // redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_sticky_ena(REG,983)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_nor_q == 1'b1)
        begin
            redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_sticky_ena_q <= $unsigned(redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_cmpReg_q);
        end
    end

    // redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_enaAnd(LOGICAL,984)
    assign redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_enaAnd_q = redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_sticky_ena_q & VCC_q;

    // redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_rdcnt(COUNTER,976)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_rdcnt_i <= $unsigned(redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_rdcnt_q = redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_rdcnt_i[1:0];

    // redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_wraddr(REG,977)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_wraddr_q <= $unsigned(redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_rdcnt_q);
        end
    end

    // redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_mem(DUALMEM,975)
    assign redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_mem_ia = $unsigned(in_c0_eni45_41_tpl);
    assign redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_mem_aa = redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_wraddr_q;
    assign redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_mem_ab = redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_rdcnt_q;
    assign redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_mem_dmem (
        .clocken1(redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_mem_aa),
        .data_a(redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_mem_ab),
        .q_b(redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_mem_iq),
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
    assign redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_mem_q = redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_mem_iq[31:0];

    // redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_notEnable(LOGICAL,971)
    assign redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_nor(LOGICAL,972)
    assign redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_nor_q = ~ (redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_notEnable_q | redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_sticky_ena_q);

    // redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_mem_last(CONSTANT,968)
    assign redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_cmp(LOGICAL,969)
    assign redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_cmp_b = {1'b0, redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_rdcnt_q};
    assign redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_cmp_q = $unsigned(redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_mem_last_q == redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_cmpReg(REG,970)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_cmpReg_q <= $unsigned(redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_cmp_q);
        end
    end

    // redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_sticky_ena(REG,973)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_nor_q == 1'b1)
        begin
            redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_sticky_ena_q <= $unsigned(redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_cmpReg_q);
        end
    end

    // redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_enaAnd(LOGICAL,974)
    assign redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_enaAnd_q = redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_sticky_ena_q & VCC_q;

    // redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_rdcnt(COUNTER,966)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_rdcnt_i <= $unsigned(redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_rdcnt_q = redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_rdcnt_i[1:0];

    // redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_wraddr(REG,967)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_wraddr_q <= $unsigned(redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_rdcnt_q);
        end
    end

    // redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_mem(DUALMEM,965)
    assign redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_mem_ia = $unsigned(in_c0_eni45_40_tpl);
    assign redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_mem_aa = redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_wraddr_q;
    assign redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_mem_ab = redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_rdcnt_q;
    assign redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_mem_dmem (
        .clocken1(redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_mem_aa),
        .data_a(redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_mem_ab),
        .q_b(redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_mem_iq),
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
    assign redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_mem_q = redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_mem_iq[31:0];

    // redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_notEnable(LOGICAL,961)
    assign redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_nor(LOGICAL,962)
    assign redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_nor_q = ~ (redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_notEnable_q | redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_sticky_ena_q);

    // redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_mem_last(CONSTANT,958)
    assign redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_cmp(LOGICAL,959)
    assign redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_cmp_b = {1'b0, redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_rdcnt_q};
    assign redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_cmp_q = $unsigned(redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_mem_last_q == redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_cmpReg(REG,960)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_cmpReg_q <= $unsigned(redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_cmp_q);
        end
    end

    // redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_sticky_ena(REG,963)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_nor_q == 1'b1)
        begin
            redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_sticky_ena_q <= $unsigned(redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_cmpReg_q);
        end
    end

    // redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_enaAnd(LOGICAL,964)
    assign redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_enaAnd_q = redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_sticky_ena_q & VCC_q;

    // redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_rdcnt(COUNTER,956)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_rdcnt_i <= $unsigned(redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_rdcnt_q = redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_rdcnt_i[1:0];

    // redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_wraddr(REG,957)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_wraddr_q <= $unsigned(redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_rdcnt_q);
        end
    end

    // redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_mem(DUALMEM,955)
    assign redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_mem_ia = $unsigned(in_c0_eni45_39_tpl);
    assign redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_mem_aa = redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_wraddr_q;
    assign redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_mem_ab = redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_rdcnt_q;
    assign redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_mem_dmem (
        .clocken1(redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_mem_aa),
        .data_a(redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_mem_ab),
        .q_b(redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_mem_iq),
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
    assign redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_mem_q = redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_mem_iq[31:0];

    // redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_notEnable(LOGICAL,951)
    assign redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_nor(LOGICAL,952)
    assign redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_nor_q = ~ (redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_notEnable_q | redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_sticky_ena_q);

    // redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_mem_last(CONSTANT,948)
    assign redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_cmp(LOGICAL,949)
    assign redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_cmp_b = {1'b0, redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_rdcnt_q};
    assign redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_cmp_q = $unsigned(redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_mem_last_q == redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_cmpReg(REG,950)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_cmpReg_q <= $unsigned(redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_cmp_q);
        end
    end

    // redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_sticky_ena(REG,953)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_nor_q == 1'b1)
        begin
            redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_sticky_ena_q <= $unsigned(redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_cmpReg_q);
        end
    end

    // redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_enaAnd(LOGICAL,954)
    assign redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_enaAnd_q = redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_sticky_ena_q & VCC_q;

    // redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_rdcnt(COUNTER,946)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_rdcnt_i <= $unsigned(redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_rdcnt_q = redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_rdcnt_i[1:0];

    // redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_wraddr(REG,947)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_wraddr_q <= $unsigned(redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_rdcnt_q);
        end
    end

    // redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_mem(DUALMEM,945)
    assign redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_mem_ia = $unsigned(in_c0_eni45_38_tpl);
    assign redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_mem_aa = redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_wraddr_q;
    assign redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_mem_ab = redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_rdcnt_q;
    assign redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_mem_dmem (
        .clocken1(redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_mem_aa),
        .data_a(redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_mem_ab),
        .q_b(redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_mem_iq),
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
    assign redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_mem_q = redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_mem_iq[31:0];

    // redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_notEnable(LOGICAL,941)
    assign redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_nor(LOGICAL,942)
    assign redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_nor_q = ~ (redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_notEnable_q | redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_sticky_ena_q);

    // redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_mem_last(CONSTANT,938)
    assign redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_cmp(LOGICAL,939)
    assign redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_cmp_b = {1'b0, redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_rdcnt_q};
    assign redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_cmp_q = $unsigned(redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_mem_last_q == redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_cmpReg(REG,940)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_cmpReg_q <= $unsigned(redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_cmp_q);
        end
    end

    // redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_sticky_ena(REG,943)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_nor_q == 1'b1)
        begin
            redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_sticky_ena_q <= $unsigned(redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_cmpReg_q);
        end
    end

    // redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_enaAnd(LOGICAL,944)
    assign redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_enaAnd_q = redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_sticky_ena_q & VCC_q;

    // redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_rdcnt(COUNTER,936)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_rdcnt_i <= $unsigned(redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_rdcnt_q = redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_rdcnt_i[1:0];

    // redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_wraddr(REG,937)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_wraddr_q <= $unsigned(redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_rdcnt_q);
        end
    end

    // redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_mem(DUALMEM,935)
    assign redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_mem_ia = $unsigned(in_c0_eni45_37_tpl);
    assign redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_mem_aa = redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_wraddr_q;
    assign redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_mem_ab = redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_rdcnt_q;
    assign redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_mem_dmem (
        .clocken1(redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_mem_aa),
        .data_a(redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_mem_ab),
        .q_b(redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_mem_iq),
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
    assign redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_mem_q = redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_mem_iq[31:0];

    // redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_notEnable(LOGICAL,931)
    assign redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_nor(LOGICAL,932)
    assign redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_nor_q = ~ (redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_notEnable_q | redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_sticky_ena_q);

    // redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_mem_last(CONSTANT,928)
    assign redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_cmp(LOGICAL,929)
    assign redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_cmp_b = {1'b0, redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_rdcnt_q};
    assign redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_cmp_q = $unsigned(redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_mem_last_q == redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_cmpReg(REG,930)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_cmpReg_q <= $unsigned(redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_cmp_q);
        end
    end

    // redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_sticky_ena(REG,933)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_nor_q == 1'b1)
        begin
            redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_sticky_ena_q <= $unsigned(redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_cmpReg_q);
        end
    end

    // redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_enaAnd(LOGICAL,934)
    assign redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_enaAnd_q = redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_sticky_ena_q & VCC_q;

    // redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_rdcnt(COUNTER,926)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_rdcnt_i <= $unsigned(redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_rdcnt_q = redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_rdcnt_i[1:0];

    // redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_wraddr(REG,927)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_wraddr_q <= $unsigned(redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_rdcnt_q);
        end
    end

    // redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_mem(DUALMEM,925)
    assign redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_mem_ia = $unsigned(in_c0_eni45_36_tpl);
    assign redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_mem_aa = redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_wraddr_q;
    assign redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_mem_ab = redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_rdcnt_q;
    assign redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_mem_dmem (
        .clocken1(redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_mem_aa),
        .data_a(redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_mem_ab),
        .q_b(redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_mem_iq),
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
    assign redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_mem_q = redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_mem_iq[31:0];

    // redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_notEnable(LOGICAL,921)
    assign redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_nor(LOGICAL,922)
    assign redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_nor_q = ~ (redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_notEnable_q | redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_sticky_ena_q);

    // redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_mem_last(CONSTANT,918)
    assign redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_cmp(LOGICAL,919)
    assign redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_cmp_b = {1'b0, redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_rdcnt_q};
    assign redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_cmp_q = $unsigned(redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_mem_last_q == redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_cmpReg(REG,920)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_cmpReg_q <= $unsigned(redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_cmp_q);
        end
    end

    // redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_sticky_ena(REG,923)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_nor_q == 1'b1)
        begin
            redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_sticky_ena_q <= $unsigned(redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_cmpReg_q);
        end
    end

    // redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_enaAnd(LOGICAL,924)
    assign redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_enaAnd_q = redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_sticky_ena_q & VCC_q;

    // redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_rdcnt(COUNTER,916)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_rdcnt_i <= $unsigned(redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_rdcnt_q = redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_rdcnt_i[1:0];

    // redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_wraddr(REG,917)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_wraddr_q <= $unsigned(redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_rdcnt_q);
        end
    end

    // redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_mem(DUALMEM,915)
    assign redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_mem_ia = $unsigned(in_c0_eni45_35_tpl);
    assign redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_mem_aa = redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_wraddr_q;
    assign redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_mem_ab = redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_rdcnt_q;
    assign redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_mem_dmem (
        .clocken1(redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_mem_aa),
        .data_a(redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_mem_ab),
        .q_b(redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_mem_iq),
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
    assign redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_mem_q = redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_mem_iq[31:0];

    // redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_notEnable(LOGICAL,911)
    assign redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_nor(LOGICAL,912)
    assign redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_nor_q = ~ (redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_notEnable_q | redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_sticky_ena_q);

    // redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_mem_last(CONSTANT,908)
    assign redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_cmp(LOGICAL,909)
    assign redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_cmp_b = {1'b0, redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_rdcnt_q};
    assign redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_cmp_q = $unsigned(redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_mem_last_q == redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_cmpReg(REG,910)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_cmpReg_q <= $unsigned(redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_cmp_q);
        end
    end

    // redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_sticky_ena(REG,913)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_nor_q == 1'b1)
        begin
            redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_sticky_ena_q <= $unsigned(redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_cmpReg_q);
        end
    end

    // redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_enaAnd(LOGICAL,914)
    assign redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_enaAnd_q = redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_sticky_ena_q & VCC_q;

    // redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_rdcnt(COUNTER,906)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_rdcnt_i <= $unsigned(redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_rdcnt_q = redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_rdcnt_i[1:0];

    // redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_wraddr(REG,907)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_wraddr_q <= $unsigned(redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_rdcnt_q);
        end
    end

    // redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_mem(DUALMEM,905)
    assign redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_mem_ia = $unsigned(in_c0_eni45_34_tpl);
    assign redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_mem_aa = redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_wraddr_q;
    assign redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_mem_ab = redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_rdcnt_q;
    assign redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_mem_dmem (
        .clocken1(redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_mem_aa),
        .data_a(redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_mem_ab),
        .q_b(redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_mem_iq),
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
    assign redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_mem_q = redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_mem_iq[31:0];

    // redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_notEnable(LOGICAL,901)
    assign redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_nor(LOGICAL,902)
    assign redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_nor_q = ~ (redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_notEnable_q | redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_sticky_ena_q);

    // redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_mem_last(CONSTANT,898)
    assign redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_cmp(LOGICAL,899)
    assign redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_cmp_b = {1'b0, redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_rdcnt_q};
    assign redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_cmp_q = $unsigned(redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_mem_last_q == redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_cmpReg(REG,900)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_cmpReg_q <= $unsigned(redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_cmp_q);
        end
    end

    // redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_sticky_ena(REG,903)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_nor_q == 1'b1)
        begin
            redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_sticky_ena_q <= $unsigned(redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_cmpReg_q);
        end
    end

    // redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_enaAnd(LOGICAL,904)
    assign redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_enaAnd_q = redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_sticky_ena_q & VCC_q;

    // redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_rdcnt(COUNTER,896)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_rdcnt_i <= $unsigned(redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_rdcnt_q = redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_rdcnt_i[1:0];

    // redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_wraddr(REG,897)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_wraddr_q <= $unsigned(redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_rdcnt_q);
        end
    end

    // redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_mem(DUALMEM,895)
    assign redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_mem_ia = $unsigned(in_c0_eni45_33_tpl);
    assign redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_mem_aa = redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_wraddr_q;
    assign redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_mem_ab = redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_rdcnt_q;
    assign redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_mem_dmem (
        .clocken1(redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_mem_aa),
        .data_a(redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_mem_ab),
        .q_b(redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_mem_iq),
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
    assign redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_mem_q = redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_mem_iq[31:0];

    // redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_notEnable(LOGICAL,891)
    assign redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_nor(LOGICAL,892)
    assign redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_nor_q = ~ (redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_notEnable_q | redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_sticky_ena_q);

    // redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_mem_last(CONSTANT,888)
    assign redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_cmp(LOGICAL,889)
    assign redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_cmp_b = {1'b0, redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_rdcnt_q};
    assign redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_cmp_q = $unsigned(redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_mem_last_q == redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_cmpReg(REG,890)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_cmpReg_q <= $unsigned(redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_cmp_q);
        end
    end

    // redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_sticky_ena(REG,893)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_nor_q == 1'b1)
        begin
            redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_sticky_ena_q <= $unsigned(redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_cmpReg_q);
        end
    end

    // redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_enaAnd(LOGICAL,894)
    assign redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_enaAnd_q = redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_sticky_ena_q & VCC_q;

    // redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_rdcnt(COUNTER,886)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_rdcnt_i <= $unsigned(redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_rdcnt_q = redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_rdcnt_i[1:0];

    // redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_wraddr(REG,887)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_wraddr_q <= $unsigned(redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_rdcnt_q);
        end
    end

    // redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_mem(DUALMEM,885)
    assign redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_mem_ia = $unsigned(in_c0_eni45_32_tpl);
    assign redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_mem_aa = redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_wraddr_q;
    assign redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_mem_ab = redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_rdcnt_q;
    assign redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_mem_dmem (
        .clocken1(redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_mem_aa),
        .data_a(redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_mem_ab),
        .q_b(redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_mem_iq),
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
    assign redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_mem_q = redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_mem_iq[31:0];

    // redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_notEnable(LOGICAL,881)
    assign redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_nor(LOGICAL,882)
    assign redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_nor_q = ~ (redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_notEnable_q | redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_sticky_ena_q);

    // redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_mem_last(CONSTANT,878)
    assign redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_cmp(LOGICAL,879)
    assign redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_cmp_b = {1'b0, redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_rdcnt_q};
    assign redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_cmp_q = $unsigned(redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_mem_last_q == redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_cmpReg(REG,880)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_cmpReg_q <= $unsigned(redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_cmp_q);
        end
    end

    // redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_sticky_ena(REG,883)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_nor_q == 1'b1)
        begin
            redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_sticky_ena_q <= $unsigned(redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_cmpReg_q);
        end
    end

    // redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_enaAnd(LOGICAL,884)
    assign redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_enaAnd_q = redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_sticky_ena_q & VCC_q;

    // redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_rdcnt(COUNTER,876)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_rdcnt_i <= $unsigned(redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_rdcnt_q = redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_rdcnt_i[1:0];

    // redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_wraddr(REG,877)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_wraddr_q <= $unsigned(redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_rdcnt_q);
        end
    end

    // redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_mem(DUALMEM,875)
    assign redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_mem_ia = $unsigned(in_c0_eni45_31_tpl);
    assign redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_mem_aa = redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_wraddr_q;
    assign redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_mem_ab = redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_rdcnt_q;
    assign redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_mem_dmem (
        .clocken1(redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_mem_aa),
        .data_a(redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_mem_ab),
        .q_b(redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_mem_iq),
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
    assign redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_mem_q = redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_mem_iq[31:0];

    // redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_notEnable(LOGICAL,871)
    assign redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_nor(LOGICAL,872)
    assign redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_nor_q = ~ (redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_notEnable_q | redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_sticky_ena_q);

    // redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_mem_last(CONSTANT,868)
    assign redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_cmp(LOGICAL,869)
    assign redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_cmp_b = {1'b0, redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_rdcnt_q};
    assign redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_cmp_q = $unsigned(redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_mem_last_q == redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_cmpReg(REG,870)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_cmpReg_q <= $unsigned(redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_cmp_q);
        end
    end

    // redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_sticky_ena(REG,873)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_nor_q == 1'b1)
        begin
            redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_sticky_ena_q <= $unsigned(redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_cmpReg_q);
        end
    end

    // redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_enaAnd(LOGICAL,874)
    assign redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_enaAnd_q = redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_sticky_ena_q & VCC_q;

    // redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_rdcnt(COUNTER,866)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_rdcnt_i <= $unsigned(redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_rdcnt_q = redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_rdcnt_i[1:0];

    // redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_wraddr(REG,867)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_wraddr_q <= $unsigned(redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_rdcnt_q);
        end
    end

    // redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_mem(DUALMEM,865)
    assign redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_mem_ia = $unsigned(in_c0_eni45_30_tpl);
    assign redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_mem_aa = redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_wraddr_q;
    assign redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_mem_ab = redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_rdcnt_q;
    assign redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_mem_dmem (
        .clocken1(redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_mem_aa),
        .data_a(redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_mem_ab),
        .q_b(redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_mem_iq),
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
    assign redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_mem_q = redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_mem_iq[31:0];

    // redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_notEnable(LOGICAL,861)
    assign redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_nor(LOGICAL,862)
    assign redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_nor_q = ~ (redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_notEnable_q | redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_sticky_ena_q);

    // redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_mem_last(CONSTANT,858)
    assign redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_cmp(LOGICAL,859)
    assign redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_cmp_b = {1'b0, redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_rdcnt_q};
    assign redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_cmp_q = $unsigned(redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_mem_last_q == redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_cmpReg(REG,860)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_cmpReg_q <= $unsigned(redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_cmp_q);
        end
    end

    // redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_sticky_ena(REG,863)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_nor_q == 1'b1)
        begin
            redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_sticky_ena_q <= $unsigned(redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_cmpReg_q);
        end
    end

    // redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_enaAnd(LOGICAL,864)
    assign redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_enaAnd_q = redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_sticky_ena_q & VCC_q;

    // redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_rdcnt(COUNTER,856)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_rdcnt_i <= $unsigned(redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_rdcnt_q = redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_rdcnt_i[1:0];

    // redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_wraddr(REG,857)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_wraddr_q <= $unsigned(redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_rdcnt_q);
        end
    end

    // redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_mem(DUALMEM,855)
    assign redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_mem_ia = $unsigned(in_c0_eni45_29_tpl);
    assign redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_mem_aa = redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_wraddr_q;
    assign redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_mem_ab = redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_rdcnt_q;
    assign redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_mem_dmem (
        .clocken1(redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_mem_aa),
        .data_a(redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_mem_ab),
        .q_b(redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_mem_iq),
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
    assign redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_mem_q = redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_mem_iq[31:0];

    // redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_notEnable(LOGICAL,851)
    assign redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_nor(LOGICAL,852)
    assign redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_nor_q = ~ (redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_notEnable_q | redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_sticky_ena_q);

    // redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_mem_last(CONSTANT,848)
    assign redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_cmp(LOGICAL,849)
    assign redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_cmp_b = {1'b0, redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_rdcnt_q};
    assign redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_cmp_q = $unsigned(redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_mem_last_q == redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_cmpReg(REG,850)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_cmpReg_q <= $unsigned(redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_cmp_q);
        end
    end

    // redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_sticky_ena(REG,853)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_nor_q == 1'b1)
        begin
            redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_sticky_ena_q <= $unsigned(redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_cmpReg_q);
        end
    end

    // redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_enaAnd(LOGICAL,854)
    assign redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_enaAnd_q = redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_sticky_ena_q & VCC_q;

    // redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_rdcnt(COUNTER,846)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_rdcnt_i <= $unsigned(redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_rdcnt_q = redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_rdcnt_i[1:0];

    // redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_wraddr(REG,847)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_wraddr_q <= $unsigned(redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_rdcnt_q);
        end
    end

    // redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_mem(DUALMEM,845)
    assign redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_mem_ia = $unsigned(in_c0_eni45_28_tpl);
    assign redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_mem_aa = redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_wraddr_q;
    assign redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_mem_ab = redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_rdcnt_q;
    assign redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_mem_dmem (
        .clocken1(redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_mem_aa),
        .data_a(redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_mem_ab),
        .q_b(redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_mem_iq),
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
    assign redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_mem_q = redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_mem_iq[31:0];

    // redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_notEnable(LOGICAL,841)
    assign redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_nor(LOGICAL,842)
    assign redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_nor_q = ~ (redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_notEnable_q | redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_sticky_ena_q);

    // redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_mem_last(CONSTANT,838)
    assign redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_cmp(LOGICAL,839)
    assign redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_cmp_b = {1'b0, redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_rdcnt_q};
    assign redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_cmp_q = $unsigned(redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_mem_last_q == redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_cmpReg(REG,840)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_cmpReg_q <= $unsigned(redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_cmp_q);
        end
    end

    // redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_sticky_ena(REG,843)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_nor_q == 1'b1)
        begin
            redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_sticky_ena_q <= $unsigned(redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_cmpReg_q);
        end
    end

    // redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_enaAnd(LOGICAL,844)
    assign redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_enaAnd_q = redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_sticky_ena_q & VCC_q;

    // redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_rdcnt(COUNTER,836)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_rdcnt_i <= $unsigned(redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_rdcnt_q = redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_rdcnt_i[1:0];

    // redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_wraddr(REG,837)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_wraddr_q <= $unsigned(redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_rdcnt_q);
        end
    end

    // redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_mem(DUALMEM,835)
    assign redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_mem_ia = $unsigned(in_c0_eni45_27_tpl);
    assign redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_mem_aa = redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_wraddr_q;
    assign redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_mem_ab = redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_rdcnt_q;
    assign redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_mem_dmem (
        .clocken1(redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_mem_aa),
        .data_a(redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_mem_ab),
        .q_b(redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_mem_iq),
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
    assign redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_mem_q = redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_mem_iq[31:0];

    // redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_notEnable(LOGICAL,831)
    assign redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_nor(LOGICAL,832)
    assign redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_nor_q = ~ (redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_notEnable_q | redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_sticky_ena_q);

    // redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_mem_last(CONSTANT,828)
    assign redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_cmp(LOGICAL,829)
    assign redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_cmp_b = {1'b0, redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_rdcnt_q};
    assign redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_cmp_q = $unsigned(redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_mem_last_q == redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_cmpReg(REG,830)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_cmpReg_q <= $unsigned(redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_cmp_q);
        end
    end

    // redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_sticky_ena(REG,833)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_nor_q == 1'b1)
        begin
            redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_sticky_ena_q <= $unsigned(redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_cmpReg_q);
        end
    end

    // redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_enaAnd(LOGICAL,834)
    assign redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_enaAnd_q = redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_sticky_ena_q & VCC_q;

    // redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_rdcnt(COUNTER,826)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_rdcnt_i <= $unsigned(redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_rdcnt_q = redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_rdcnt_i[1:0];

    // redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_wraddr(REG,827)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_wraddr_q <= $unsigned(redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_rdcnt_q);
        end
    end

    // redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_mem(DUALMEM,825)
    assign redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_mem_ia = $unsigned(in_c0_eni45_26_tpl);
    assign redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_mem_aa = redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_wraddr_q;
    assign redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_mem_ab = redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_rdcnt_q;
    assign redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_mem_dmem (
        .clocken1(redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_mem_aa),
        .data_a(redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_mem_ab),
        .q_b(redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_mem_iq),
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
    assign redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_mem_q = redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_mem_iq[31:0];

    // redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_notEnable(LOGICAL,821)
    assign redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_nor(LOGICAL,822)
    assign redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_nor_q = ~ (redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_notEnable_q | redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_sticky_ena_q);

    // redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_mem_last(CONSTANT,818)
    assign redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_cmp(LOGICAL,819)
    assign redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_cmp_b = {1'b0, redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_rdcnt_q};
    assign redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_cmp_q = $unsigned(redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_mem_last_q == redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_cmpReg(REG,820)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_cmpReg_q <= $unsigned(redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_cmp_q);
        end
    end

    // redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_sticky_ena(REG,823)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_nor_q == 1'b1)
        begin
            redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_sticky_ena_q <= $unsigned(redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_cmpReg_q);
        end
    end

    // redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_enaAnd(LOGICAL,824)
    assign redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_enaAnd_q = redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_sticky_ena_q & VCC_q;

    // redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_rdcnt(COUNTER,816)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_rdcnt_i <= $unsigned(redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_rdcnt_q = redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_rdcnt_i[1:0];

    // redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_wraddr(REG,817)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_wraddr_q <= $unsigned(redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_rdcnt_q);
        end
    end

    // redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_mem(DUALMEM,815)
    assign redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_mem_ia = $unsigned(in_c0_eni45_25_tpl);
    assign redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_mem_aa = redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_wraddr_q;
    assign redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_mem_ab = redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_rdcnt_q;
    assign redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_mem_dmem (
        .clocken1(redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_mem_aa),
        .data_a(redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_mem_ab),
        .q_b(redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_mem_iq),
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
    assign redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_mem_q = redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_mem_iq[31:0];

    // redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_notEnable(LOGICAL,811)
    assign redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_nor(LOGICAL,812)
    assign redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_nor_q = ~ (redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_notEnable_q | redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_sticky_ena_q);

    // redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_mem_last(CONSTANT,808)
    assign redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_cmp(LOGICAL,809)
    assign redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_cmp_b = {1'b0, redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_rdcnt_q};
    assign redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_cmp_q = $unsigned(redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_mem_last_q == redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_cmpReg(REG,810)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_cmpReg_q <= $unsigned(redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_cmp_q);
        end
    end

    // redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_sticky_ena(REG,813)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_nor_q == 1'b1)
        begin
            redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_sticky_ena_q <= $unsigned(redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_cmpReg_q);
        end
    end

    // redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_enaAnd(LOGICAL,814)
    assign redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_enaAnd_q = redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_sticky_ena_q & VCC_q;

    // redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_rdcnt(COUNTER,806)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_rdcnt_i <= $unsigned(redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_rdcnt_q = redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_rdcnt_i[1:0];

    // redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_wraddr(REG,807)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_wraddr_q <= $unsigned(redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_rdcnt_q);
        end
    end

    // redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_mem(DUALMEM,805)
    assign redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_mem_ia = $unsigned(in_c0_eni45_24_tpl);
    assign redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_mem_aa = redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_wraddr_q;
    assign redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_mem_ab = redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_rdcnt_q;
    assign redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_mem_dmem (
        .clocken1(redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_mem_aa),
        .data_a(redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_mem_ab),
        .q_b(redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_mem_iq),
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
    assign redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_mem_q = redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_mem_iq[31:0];

    // redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_notEnable(LOGICAL,801)
    assign redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_nor(LOGICAL,802)
    assign redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_nor_q = ~ (redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_notEnable_q | redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_sticky_ena_q);

    // redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_mem_last(CONSTANT,798)
    assign redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_cmp(LOGICAL,799)
    assign redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_cmp_b = {1'b0, redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_rdcnt_q};
    assign redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_cmp_q = $unsigned(redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_mem_last_q == redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_cmpReg(REG,800)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_cmpReg_q <= $unsigned(redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_cmp_q);
        end
    end

    // redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_sticky_ena(REG,803)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_nor_q == 1'b1)
        begin
            redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_sticky_ena_q <= $unsigned(redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_cmpReg_q);
        end
    end

    // redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_enaAnd(LOGICAL,804)
    assign redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_enaAnd_q = redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_sticky_ena_q & VCC_q;

    // redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_rdcnt(COUNTER,796)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_rdcnt_i <= $unsigned(redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_rdcnt_q = redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_rdcnt_i[1:0];

    // redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_wraddr(REG,797)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_wraddr_q <= $unsigned(redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_rdcnt_q);
        end
    end

    // redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_mem(DUALMEM,795)
    assign redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_mem_ia = $unsigned(in_c0_eni45_23_tpl);
    assign redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_mem_aa = redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_wraddr_q;
    assign redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_mem_ab = redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_rdcnt_q;
    assign redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_mem_dmem (
        .clocken1(redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_mem_aa),
        .data_a(redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_mem_ab),
        .q_b(redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_mem_iq),
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
    assign redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_mem_q = redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_mem_iq[31:0];

    // redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_notEnable(LOGICAL,791)
    assign redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_nor(LOGICAL,792)
    assign redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_nor_q = ~ (redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_notEnable_q | redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_sticky_ena_q);

    // redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_mem_last(CONSTANT,788)
    assign redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_cmp(LOGICAL,789)
    assign redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_cmp_b = {1'b0, redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_rdcnt_q};
    assign redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_cmp_q = $unsigned(redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_mem_last_q == redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_cmpReg(REG,790)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_cmpReg_q <= $unsigned(redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_cmp_q);
        end
    end

    // redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_sticky_ena(REG,793)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_nor_q == 1'b1)
        begin
            redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_sticky_ena_q <= $unsigned(redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_cmpReg_q);
        end
    end

    // redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_enaAnd(LOGICAL,794)
    assign redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_enaAnd_q = redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_sticky_ena_q & VCC_q;

    // redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_rdcnt(COUNTER,786)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_rdcnt_i <= $unsigned(redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_rdcnt_q = redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_rdcnt_i[1:0];

    // redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_wraddr(REG,787)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_wraddr_q <= $unsigned(redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_rdcnt_q);
        end
    end

    // redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_mem(DUALMEM,785)
    assign redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_mem_ia = $unsigned(in_c0_eni45_22_tpl);
    assign redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_mem_aa = redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_wraddr_q;
    assign redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_mem_ab = redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_rdcnt_q;
    assign redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_mem_dmem (
        .clocken1(redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_mem_aa),
        .data_a(redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_mem_ab),
        .q_b(redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_mem_iq),
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
    assign redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_mem_q = redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_mem_iq[31:0];

    // redist22_sync_together202_aunroll_x_in_c0_eni45_21_tpl_5(DELAY,674)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together202_aunroll_x_in_c0_eni45_21_tpl_5_delay_0 <= '0;
            redist22_sync_together202_aunroll_x_in_c0_eni45_21_tpl_5_delay_1 <= '0;
            redist22_sync_together202_aunroll_x_in_c0_eni45_21_tpl_5_delay_2 <= '0;
            redist22_sync_together202_aunroll_x_in_c0_eni45_21_tpl_5_delay_3 <= '0;
            redist22_sync_together202_aunroll_x_in_c0_eni45_21_tpl_5_q <= '0;
        end
        else
        begin
            redist22_sync_together202_aunroll_x_in_c0_eni45_21_tpl_5_delay_0 <= $unsigned(in_c0_eni45_21_tpl);
            redist22_sync_together202_aunroll_x_in_c0_eni45_21_tpl_5_delay_1 <= redist22_sync_together202_aunroll_x_in_c0_eni45_21_tpl_5_delay_0;
            redist22_sync_together202_aunroll_x_in_c0_eni45_21_tpl_5_delay_2 <= redist22_sync_together202_aunroll_x_in_c0_eni45_21_tpl_5_delay_1;
            redist22_sync_together202_aunroll_x_in_c0_eni45_21_tpl_5_delay_3 <= redist22_sync_together202_aunroll_x_in_c0_eni45_21_tpl_5_delay_2;
            redist22_sync_together202_aunroll_x_in_c0_eni45_21_tpl_5_q <= redist22_sync_together202_aunroll_x_in_c0_eni45_21_tpl_5_delay_3;
        end
    end

    // redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_notEnable(LOGICAL,781)
    assign redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_nor(LOGICAL,782)
    assign redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_nor_q = ~ (redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_notEnable_q | redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_sticky_ena_q);

    // redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_mem_last(CONSTANT,778)
    assign redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_cmp(LOGICAL,779)
    assign redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_cmp_b = {1'b0, redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_rdcnt_q};
    assign redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_cmp_q = $unsigned(redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_mem_last_q == redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_cmpReg(REG,780)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_cmpReg_q <= $unsigned(redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_cmp_q);
        end
    end

    // redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_sticky_ena(REG,783)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_nor_q == 1'b1)
        begin
            redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_sticky_ena_q <= $unsigned(redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_cmpReg_q);
        end
    end

    // redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_enaAnd(LOGICAL,784)
    assign redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_enaAnd_q = redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_sticky_ena_q & VCC_q;

    // redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_rdcnt(COUNTER,776)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_rdcnt_i <= $unsigned(redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_rdcnt_q = redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_rdcnt_i[1:0];

    // redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_wraddr(REG,777)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_wraddr_q <= $unsigned(redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_rdcnt_q);
        end
    end

    // redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_mem(DUALMEM,775)
    assign redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_mem_ia = $unsigned(in_c0_eni45_20_tpl);
    assign redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_mem_aa = redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_wraddr_q;
    assign redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_mem_ab = redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_rdcnt_q;
    assign redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_mem_dmem (
        .clocken1(redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_mem_aa),
        .data_a(redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_mem_ab),
        .q_b(redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_mem_iq),
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
    assign redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_mem_q = redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_mem_iq[31:0];

    // redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_notEnable(LOGICAL,771)
    assign redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_nor(LOGICAL,772)
    assign redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_nor_q = ~ (redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_notEnable_q | redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_sticky_ena_q);

    // redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_mem_last(CONSTANT,768)
    assign redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_cmp(LOGICAL,769)
    assign redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_cmp_b = {1'b0, redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_rdcnt_q};
    assign redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_cmp_q = $unsigned(redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_mem_last_q == redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_cmpReg(REG,770)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_cmpReg_q <= $unsigned(redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_cmp_q);
        end
    end

    // redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_sticky_ena(REG,773)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_nor_q == 1'b1)
        begin
            redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_sticky_ena_q <= $unsigned(redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_cmpReg_q);
        end
    end

    // redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_enaAnd(LOGICAL,774)
    assign redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_enaAnd_q = redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_sticky_ena_q & VCC_q;

    // redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_rdcnt(COUNTER,766)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_rdcnt_i <= $unsigned(redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_rdcnt_q = redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_rdcnt_i[1:0];

    // redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_wraddr(REG,767)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_wraddr_q <= $unsigned(redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_rdcnt_q);
        end
    end

    // redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_mem(DUALMEM,765)
    assign redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_mem_ia = $unsigned(in_c0_eni45_19_tpl);
    assign redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_mem_aa = redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_wraddr_q;
    assign redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_mem_ab = redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_rdcnt_q;
    assign redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_mem_dmem (
        .clocken1(redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_mem_aa),
        .data_a(redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_mem_ab),
        .q_b(redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_mem_iq),
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
    assign redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_mem_q = redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_mem_iq[31:0];

    // redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_notEnable(LOGICAL,761)
    assign redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_nor(LOGICAL,762)
    assign redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_nor_q = ~ (redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_notEnable_q | redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_sticky_ena_q);

    // redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_mem_last(CONSTANT,758)
    assign redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_cmp(LOGICAL,759)
    assign redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_cmp_b = {1'b0, redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_rdcnt_q};
    assign redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_cmp_q = $unsigned(redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_mem_last_q == redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_cmpReg(REG,760)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_cmpReg_q <= $unsigned(redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_cmp_q);
        end
    end

    // redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_sticky_ena(REG,763)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_nor_q == 1'b1)
        begin
            redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_sticky_ena_q <= $unsigned(redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_cmpReg_q);
        end
    end

    // redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_enaAnd(LOGICAL,764)
    assign redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_enaAnd_q = redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_sticky_ena_q & VCC_q;

    // redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_rdcnt(COUNTER,756)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_rdcnt_i <= $unsigned(redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_rdcnt_q = redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_rdcnt_i[1:0];

    // redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_wraddr(REG,757)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_wraddr_q <= $unsigned(redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_rdcnt_q);
        end
    end

    // redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_mem(DUALMEM,755)
    assign redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_mem_ia = $unsigned(in_c0_eni45_18_tpl);
    assign redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_mem_aa = redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_wraddr_q;
    assign redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_mem_ab = redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_rdcnt_q;
    assign redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_mem_dmem (
        .clocken1(redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_mem_aa),
        .data_a(redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_mem_ab),
        .q_b(redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_mem_iq),
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
    assign redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_mem_q = redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_mem_iq[31:0];

    // redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_notEnable(LOGICAL,751)
    assign redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_nor(LOGICAL,752)
    assign redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_nor_q = ~ (redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_notEnable_q | redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_sticky_ena_q);

    // redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_mem_last(CONSTANT,748)
    assign redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_cmp(LOGICAL,749)
    assign redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_cmp_b = {1'b0, redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_rdcnt_q};
    assign redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_cmp_q = $unsigned(redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_mem_last_q == redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_cmpReg(REG,750)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_cmpReg_q <= $unsigned(redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_cmp_q);
        end
    end

    // redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_sticky_ena(REG,753)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_nor_q == 1'b1)
        begin
            redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_sticky_ena_q <= $unsigned(redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_cmpReg_q);
        end
    end

    // redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_enaAnd(LOGICAL,754)
    assign redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_enaAnd_q = redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_sticky_ena_q & VCC_q;

    // redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_rdcnt(COUNTER,746)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_rdcnt_i <= $unsigned(redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_rdcnt_q = redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_rdcnt_i[1:0];

    // redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_wraddr(REG,747)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_wraddr_q <= $unsigned(redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_rdcnt_q);
        end
    end

    // redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_mem(DUALMEM,745)
    assign redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_mem_ia = $unsigned(in_c0_eni45_17_tpl);
    assign redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_mem_aa = redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_wraddr_q;
    assign redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_mem_ab = redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_rdcnt_q;
    assign redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_mem_dmem (
        .clocken1(redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_mem_aa),
        .data_a(redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_mem_ab),
        .q_b(redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_mem_iq),
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
    assign redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_mem_q = redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_mem_iq[32:0];

    // redist17_sync_together202_aunroll_x_in_c0_eni45_16_tpl_5(DELAY,669)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together202_aunroll_x_in_c0_eni45_16_tpl_5_delay_0 <= '0;
            redist17_sync_together202_aunroll_x_in_c0_eni45_16_tpl_5_delay_1 <= '0;
            redist17_sync_together202_aunroll_x_in_c0_eni45_16_tpl_5_delay_2 <= '0;
            redist17_sync_together202_aunroll_x_in_c0_eni45_16_tpl_5_delay_3 <= '0;
            redist17_sync_together202_aunroll_x_in_c0_eni45_16_tpl_5_q <= '0;
        end
        else
        begin
            redist17_sync_together202_aunroll_x_in_c0_eni45_16_tpl_5_delay_0 <= $unsigned(in_c0_eni45_16_tpl);
            redist17_sync_together202_aunroll_x_in_c0_eni45_16_tpl_5_delay_1 <= redist17_sync_together202_aunroll_x_in_c0_eni45_16_tpl_5_delay_0;
            redist17_sync_together202_aunroll_x_in_c0_eni45_16_tpl_5_delay_2 <= redist17_sync_together202_aunroll_x_in_c0_eni45_16_tpl_5_delay_1;
            redist17_sync_together202_aunroll_x_in_c0_eni45_16_tpl_5_delay_3 <= redist17_sync_together202_aunroll_x_in_c0_eni45_16_tpl_5_delay_2;
            redist17_sync_together202_aunroll_x_in_c0_eni45_16_tpl_5_q <= redist17_sync_together202_aunroll_x_in_c0_eni45_16_tpl_5_delay_3;
        end
    end

    // redist16_sync_together202_aunroll_x_in_c0_eni45_15_tpl_5(DELAY,668)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together202_aunroll_x_in_c0_eni45_15_tpl_5_delay_0 <= '0;
            redist16_sync_together202_aunroll_x_in_c0_eni45_15_tpl_5_delay_1 <= '0;
            redist16_sync_together202_aunroll_x_in_c0_eni45_15_tpl_5_delay_2 <= '0;
            redist16_sync_together202_aunroll_x_in_c0_eni45_15_tpl_5_delay_3 <= '0;
            redist16_sync_together202_aunroll_x_in_c0_eni45_15_tpl_5_q <= '0;
        end
        else
        begin
            redist16_sync_together202_aunroll_x_in_c0_eni45_15_tpl_5_delay_0 <= $unsigned(in_c0_eni45_15_tpl);
            redist16_sync_together202_aunroll_x_in_c0_eni45_15_tpl_5_delay_1 <= redist16_sync_together202_aunroll_x_in_c0_eni45_15_tpl_5_delay_0;
            redist16_sync_together202_aunroll_x_in_c0_eni45_15_tpl_5_delay_2 <= redist16_sync_together202_aunroll_x_in_c0_eni45_15_tpl_5_delay_1;
            redist16_sync_together202_aunroll_x_in_c0_eni45_15_tpl_5_delay_3 <= redist16_sync_together202_aunroll_x_in_c0_eni45_15_tpl_5_delay_2;
            redist16_sync_together202_aunroll_x_in_c0_eni45_15_tpl_5_q <= redist16_sync_together202_aunroll_x_in_c0_eni45_15_tpl_5_delay_3;
        end
    end

    // redist15_sync_together202_aunroll_x_in_c0_eni45_14_tpl_5(DELAY,667)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together202_aunroll_x_in_c0_eni45_14_tpl_5_delay_0 <= '0;
            redist15_sync_together202_aunroll_x_in_c0_eni45_14_tpl_5_delay_1 <= '0;
            redist15_sync_together202_aunroll_x_in_c0_eni45_14_tpl_5_delay_2 <= '0;
            redist15_sync_together202_aunroll_x_in_c0_eni45_14_tpl_5_delay_3 <= '0;
            redist15_sync_together202_aunroll_x_in_c0_eni45_14_tpl_5_q <= '0;
        end
        else
        begin
            redist15_sync_together202_aunroll_x_in_c0_eni45_14_tpl_5_delay_0 <= $unsigned(in_c0_eni45_14_tpl);
            redist15_sync_together202_aunroll_x_in_c0_eni45_14_tpl_5_delay_1 <= redist15_sync_together202_aunroll_x_in_c0_eni45_14_tpl_5_delay_0;
            redist15_sync_together202_aunroll_x_in_c0_eni45_14_tpl_5_delay_2 <= redist15_sync_together202_aunroll_x_in_c0_eni45_14_tpl_5_delay_1;
            redist15_sync_together202_aunroll_x_in_c0_eni45_14_tpl_5_delay_3 <= redist15_sync_together202_aunroll_x_in_c0_eni45_14_tpl_5_delay_2;
            redist15_sync_together202_aunroll_x_in_c0_eni45_14_tpl_5_q <= redist15_sync_together202_aunroll_x_in_c0_eni45_14_tpl_5_delay_3;
        end
    end

    // redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_notEnable(LOGICAL,741)
    assign redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_nor(LOGICAL,742)
    assign redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_nor_q = ~ (redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_notEnable_q | redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_sticky_ena_q);

    // redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_mem_last(CONSTANT,738)
    assign redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_cmp(LOGICAL,739)
    assign redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_cmp_b = {1'b0, redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_rdcnt_q};
    assign redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_cmp_q = $unsigned(redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_mem_last_q == redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_cmpReg(REG,740)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_cmpReg_q <= $unsigned(redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_cmp_q);
        end
    end

    // redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_sticky_ena(REG,743)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_nor_q == 1'b1)
        begin
            redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_sticky_ena_q <= $unsigned(redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_cmpReg_q);
        end
    end

    // redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_enaAnd(LOGICAL,744)
    assign redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_enaAnd_q = redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_sticky_ena_q & VCC_q;

    // redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_rdcnt(COUNTER,736)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_rdcnt_i <= $unsigned(redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_rdcnt_q = redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_rdcnt_i[1:0];

    // redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_wraddr(REG,737)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_wraddr_q <= $unsigned(redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_rdcnt_q);
        end
    end

    // redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_mem(DUALMEM,735)
    assign redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_mem_ia = $unsigned(in_c0_eni45_13_tpl);
    assign redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_mem_aa = redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_wraddr_q;
    assign redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_mem_ab = redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_rdcnt_q;
    assign redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_mem_dmem (
        .clocken1(redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_mem_aa),
        .data_a(redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_mem_ab),
        .q_b(redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_mem_iq),
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
    assign redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_mem_q = redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_mem_iq[31:0];

    // redist2_sync_together202_aunroll_x_in_c0_eni45_1_tpl_5(DELAY,654)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together202_aunroll_x_in_c0_eni45_1_tpl_5_delay_0 <= '0;
            redist2_sync_together202_aunroll_x_in_c0_eni45_1_tpl_5_q <= '0;
        end
        else
        begin
            redist2_sync_together202_aunroll_x_in_c0_eni45_1_tpl_5_delay_0 <= $unsigned(redist1_sync_together202_aunroll_x_in_c0_eni45_1_tpl_3_q);
            redist2_sync_together202_aunroll_x_in_c0_eni45_1_tpl_5_q <= redist2_sync_together202_aunroll_x_in_c0_eni45_1_tpl_5_delay_0;
        end
    end

    // valid_fanout_reg33(REG,420)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg33_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist50_sync_together202_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg34(REG,421)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg34_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(redist50_sync_together202_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i64_ap_pop_ext5100_push99_conv2d1x1104(BLACKBOX,203)@6
    // out out_feedback_out_99@20000000
    // out out_feedback_valid_out_99@20000000
    conv2d1x1_i_llvm_fpga_push_i64_ap_pop_ext5100_push99_0 thei_llvm_fpga_push_i64_ap_pop_ext5100_push99_conv2d1x1104 (
        .in_data_in(i_llvm_fpga_pop_i64_ap_pop_ext5100_pop99_conv2d1x1103_out_data_out),
        .in_feedback_stall_in_99(i_llvm_fpga_pop_i64_ap_pop_ext5100_pop99_conv2d1x1103_out_feedback_stall_out_99),
        .in_keep_going(redist71_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_4_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_data_out(),
        .out_feedback_out_99(i_llvm_fpga_push_i64_ap_pop_ext5100_push99_conv2d1x1104_out_feedback_out_99),
        .out_feedback_valid_out_99(i_llvm_fpga_push_i64_ap_pop_ext5100_push99_conv2d1x1104_out_feedback_valid_out_99),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_notEnable(LOGICAL,731)
    assign redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_nor(LOGICAL,732)
    assign redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_nor_q = ~ (redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_notEnable_q | redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_sticky_ena_q);

    // redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_mem_last(CONSTANT,728)
    assign redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_cmp(LOGICAL,729)
    assign redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_cmp_b = {1'b0, redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_rdcnt_q};
    assign redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_cmp_q = $unsigned(redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_mem_last_q == redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_cmpReg(REG,730)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_cmpReg_q <= $unsigned(redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_cmp_q);
        end
    end

    // redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_sticky_ena(REG,733)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_nor_q == 1'b1)
        begin
            redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_sticky_ena_q <= $unsigned(redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_cmpReg_q);
        end
    end

    // redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_enaAnd(LOGICAL,734)
    assign redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_enaAnd_q = redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_sticky_ena_q & VCC_q;

    // redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_rdcnt(COUNTER,726)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_rdcnt_i <= $unsigned(redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_rdcnt_q = redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_rdcnt_i[1:0];

    // redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_wraddr(REG,727)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_wraddr_q <= $unsigned(redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_rdcnt_q);
        end
    end

    // redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_mem(DUALMEM,725)
    assign redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_mem_ia = $unsigned(in_c0_eni45_12_tpl);
    assign redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_mem_aa = redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_wraddr_q;
    assign redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_mem_ab = redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_rdcnt_q;
    assign redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_mem_dmem (
        .clocken1(redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_mem_aa),
        .data_a(redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_mem_ab),
        .q_b(redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_mem_iq),
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
    assign redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_mem_q = redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_mem_iq[63:0];

    // i_llvm_fpga_pop_i64_ap_pop_ext5100_pop99_conv2d1x1103(BLACKBOX,186)@6
    // out out_feedback_stall_out_99@20000000
    conv2d1x1_i_llvm_fpga_pop_i64_ap_pop_ext5100_pop99_0 thei_llvm_fpga_pop_i64_ap_pop_ext5100_pop99_conv2d1x1103 (
        .in_data_in(redist13_sync_together202_aunroll_x_in_c0_eni45_12_tpl_5_mem_q),
        .in_dir(redist2_sync_together202_aunroll_x_in_c0_eni45_1_tpl_5_q),
        .in_feedback_in_99(i_llvm_fpga_push_i64_ap_pop_ext5100_push99_conv2d1x1104_out_feedback_out_99),
        .in_feedback_valid_in_99(i_llvm_fpga_push_i64_ap_pop_ext5100_push99_conv2d1x1104_out_feedback_valid_out_99),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_data_out(i_llvm_fpga_pop_i64_ap_pop_ext5100_pop99_conv2d1x1103_out_data_out),
        .out_feedback_stall_out_99(i_llvm_fpga_pop_i64_ap_pop_ext5100_pop99_conv2d1x1103_out_feedback_stall_out_99),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg31(REG,418)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg32(REG,419)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg32_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp4673_push73_conv2d1x1102(BLACKBOX,189)@2
    // out out_feedback_out_73@20000000
    // out out_feedback_valid_out_73@20000000
    conv2d1x1_i_llvm_fpga_push_i1_notcmp4673_push73_0 thei_llvm_fpga_push_i1_notcmp4673_push73_conv2d1x1102 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp4673_pop73_conv2d1x1101_out_data_out),
        .in_feedback_stall_in_73(i_llvm_fpga_pop_i1_notcmp4673_pop73_conv2d1x1101_out_feedback_stall_out_73),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_data_out(),
        .out_feedback_out_73(i_llvm_fpga_push_i1_notcmp4673_push73_conv2d1x1102_out_feedback_out_73),
        .out_feedback_valid_out_73(i_llvm_fpga_push_i1_notcmp4673_push73_conv2d1x1102_out_feedback_valid_out_73),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_sync_together202_aunroll_x_in_c0_eni45_11_tpl_1(DELAY,664)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together202_aunroll_x_in_c0_eni45_11_tpl_1_q <= '0;
        end
        else
        begin
            redist12_sync_together202_aunroll_x_in_c0_eni45_11_tpl_1_q <= $unsigned(in_c0_eni45_11_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp4673_pop73_conv2d1x1101(BLACKBOX,173)@2
    // out out_feedback_stall_out_73@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_notcmp4673_pop73_0 thei_llvm_fpga_pop_i1_notcmp4673_pop73_conv2d1x1101 (
        .in_data_in(redist12_sync_together202_aunroll_x_in_c0_eni45_11_tpl_1_q),
        .in_dir(redist0_sync_together202_aunroll_x_in_c0_eni45_1_tpl_1_q),
        .in_feedback_in_73(i_llvm_fpga_push_i1_notcmp4673_push73_conv2d1x1102_out_feedback_out_73),
        .in_feedback_valid_in_73(i_llvm_fpga_push_i1_notcmp4673_push73_conv2d1x1102_out_feedback_valid_out_73),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp4673_pop73_conv2d1x1101_out_data_out),
        .out_feedback_stall_out_73(i_llvm_fpga_pop_i1_notcmp4673_pop73_conv2d1x1101_out_feedback_stall_out_73),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist66_i_llvm_fpga_pop_i1_notcmp4673_pop73_conv2d1x1101_out_data_out_4(DELAY,718)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_i_llvm_fpga_pop_i1_notcmp4673_pop73_conv2d1x1101_out_data_out_4_delay_0 <= '0;
            redist66_i_llvm_fpga_pop_i1_notcmp4673_pop73_conv2d1x1101_out_data_out_4_delay_1 <= '0;
            redist66_i_llvm_fpga_pop_i1_notcmp4673_pop73_conv2d1x1101_out_data_out_4_delay_2 <= '0;
            redist66_i_llvm_fpga_pop_i1_notcmp4673_pop73_conv2d1x1101_out_data_out_4_q <= '0;
        end
        else
        begin
            redist66_i_llvm_fpga_pop_i1_notcmp4673_pop73_conv2d1x1101_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp4673_pop73_conv2d1x1101_out_data_out);
            redist66_i_llvm_fpga_pop_i1_notcmp4673_pop73_conv2d1x1101_out_data_out_4_delay_1 <= redist66_i_llvm_fpga_pop_i1_notcmp4673_pop73_conv2d1x1101_out_data_out_4_delay_0;
            redist66_i_llvm_fpga_pop_i1_notcmp4673_pop73_conv2d1x1101_out_data_out_4_delay_2 <= redist66_i_llvm_fpga_pop_i1_notcmp4673_pop73_conv2d1x1101_out_data_out_4_delay_1;
            redist66_i_llvm_fpga_pop_i1_notcmp4673_pop73_conv2d1x1101_out_data_out_4_q <= redist66_i_llvm_fpga_pop_i1_notcmp4673_pop73_conv2d1x1101_out_data_out_4_delay_2;
        end
    end

    // valid_fanout_reg29(REG,416)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(redist50_sync_together202_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg30(REG,417)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist50_sync_together202_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp5170_push72_conv2d1x1100(BLACKBOX,190)@6
    // out out_feedback_out_72@20000000
    // out out_feedback_valid_out_72@20000000
    conv2d1x1_i_llvm_fpga_push_i1_notcmp5170_push72_0 thei_llvm_fpga_push_i1_notcmp5170_push72_conv2d1x1100 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp5170_pop72_conv2d1x199_out_data_out),
        .in_feedback_stall_in_72(i_llvm_fpga_pop_i1_notcmp5170_pop72_conv2d1x199_out_feedback_stall_out_72),
        .in_keep_going(redist71_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_4_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(),
        .out_feedback_out_72(i_llvm_fpga_push_i1_notcmp5170_push72_conv2d1x1100_out_feedback_out_72),
        .out_feedback_valid_out_72(i_llvm_fpga_push_i1_notcmp5170_push72_conv2d1x1100_out_feedback_valid_out_72),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_sync_together202_aunroll_x_in_c0_eni45_10_tpl_5(DELAY,663)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together202_aunroll_x_in_c0_eni45_10_tpl_5_delay_0 <= '0;
            redist11_sync_together202_aunroll_x_in_c0_eni45_10_tpl_5_delay_1 <= '0;
            redist11_sync_together202_aunroll_x_in_c0_eni45_10_tpl_5_delay_2 <= '0;
            redist11_sync_together202_aunroll_x_in_c0_eni45_10_tpl_5_delay_3 <= '0;
            redist11_sync_together202_aunroll_x_in_c0_eni45_10_tpl_5_q <= '0;
        end
        else
        begin
            redist11_sync_together202_aunroll_x_in_c0_eni45_10_tpl_5_delay_0 <= $unsigned(in_c0_eni45_10_tpl);
            redist11_sync_together202_aunroll_x_in_c0_eni45_10_tpl_5_delay_1 <= redist11_sync_together202_aunroll_x_in_c0_eni45_10_tpl_5_delay_0;
            redist11_sync_together202_aunroll_x_in_c0_eni45_10_tpl_5_delay_2 <= redist11_sync_together202_aunroll_x_in_c0_eni45_10_tpl_5_delay_1;
            redist11_sync_together202_aunroll_x_in_c0_eni45_10_tpl_5_delay_3 <= redist11_sync_together202_aunroll_x_in_c0_eni45_10_tpl_5_delay_2;
            redist11_sync_together202_aunroll_x_in_c0_eni45_10_tpl_5_q <= redist11_sync_together202_aunroll_x_in_c0_eni45_10_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp5170_pop72_conv2d1x199(BLACKBOX,174)@6
    // out out_feedback_stall_out_72@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_notcmp5170_pop72_0 thei_llvm_fpga_pop_i1_notcmp5170_pop72_conv2d1x199 (
        .in_data_in(redist11_sync_together202_aunroll_x_in_c0_eni45_10_tpl_5_q),
        .in_dir(redist2_sync_together202_aunroll_x_in_c0_eni45_1_tpl_5_q),
        .in_feedback_in_72(i_llvm_fpga_push_i1_notcmp5170_push72_conv2d1x1100_out_feedback_out_72),
        .in_feedback_valid_in_72(i_llvm_fpga_push_i1_notcmp5170_push72_conv2d1x1100_out_feedback_valid_out_72),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp5170_pop72_conv2d1x199_out_data_out),
        .out_feedback_stall_out_72(i_llvm_fpga_pop_i1_notcmp5170_pop72_conv2d1x199_out_feedback_stall_out_72),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_notEnable(LOGICAL,1032)
    assign redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_nor(LOGICAL,1033)
    assign redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_nor_q = ~ (redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_notEnable_q | redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_sticky_ena_q);

    // redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_cmpReg(REG,1031)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_sticky_ena(REG,1034)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_nor_q == 1'b1)
        begin
            redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_sticky_ena_q <= $unsigned(redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_cmpReg_q);
        end
    end

    // redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_enaAnd(LOGICAL,1035)
    assign redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_enaAnd_q = redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_sticky_ena_q & VCC_q;

    // redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_rdcnt(COUNTER,1029)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_rdcnt_i <= $unsigned(redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_rdcnt_q = redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_rdcnt_i[0:0];

    // valid_fanout_reg27(REG,414)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg28(REG,415)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_mul15667_push71_conv2d1x198(BLACKBOX,199)@2
    // out out_feedback_out_71@20000000
    // out out_feedback_valid_out_71@20000000
    conv2d1x1_i_llvm_fpga_push_i32_mul15667_push71_0 thei_llvm_fpga_push_i32_mul15667_push71_conv2d1x198 (
        .in_data_in(i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out),
        .in_feedback_stall_in_71(i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_feedback_stall_out_71),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(),
        .out_feedback_out_71(i_llvm_fpga_push_i32_mul15667_push71_conv2d1x198_out_feedback_out_71),
        .out_feedback_valid_out_71(i_llvm_fpga_push_i32_mul15667_push71_conv2d1x198_out_feedback_valid_out_71),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_sync_together202_aunroll_x_in_c0_eni45_9_tpl_1(DELAY,662)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together202_aunroll_x_in_c0_eni45_9_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together202_aunroll_x_in_c0_eni45_9_tpl_1_q <= $unsigned(in_c0_eni45_9_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197(BLACKBOX,182)@2
    // out out_feedback_stall_out_71@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_mul15667_pop71_0 thei_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197 (
        .in_data_in(redist10_sync_together202_aunroll_x_in_c0_eni45_9_tpl_1_q),
        .in_dir(redist0_sync_together202_aunroll_x_in_c0_eni45_1_tpl_1_q),
        .in_feedback_in_71(i_llvm_fpga_push_i32_mul15667_push71_conv2d1x198_out_feedback_out_71),
        .in_feedback_valid_in_71(i_llvm_fpga_push_i32_mul15667_push71_conv2d1x198_out_feedback_valid_out_71),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out),
        .out_feedback_stall_out_71(i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_feedback_stall_out_71),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_inputreg0(DELAY,1027)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_inputreg0_q <= '0;
        end
        else
        begin
            redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out);
        end
    end

    // redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_wraddr(REG,1030)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_wraddr_q <= $unsigned(redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_rdcnt_q);
        end
    end

    // redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_mem(DUALMEM,1028)
    assign redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_mem_ia = $unsigned(redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_inputreg0_q);
    assign redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_mem_aa = redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_wraddr_q;
    assign redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_mem_ab = redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_rdcnt_q;
    assign redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_mem_reset0 = ~ (resetn);
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
    ) redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_mem_dmem (
        .clocken1(redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_mem_aa),
        .data_a(redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_mem_ab),
        .q_b(redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_mem_iq),
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
    assign redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_mem_q = redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_mem_iq[31:0];

    // valid_fanout_reg25(REG,412)@1 + 1
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

    // valid_fanout_reg26(REG,413)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist48_sync_together202_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_f32_lm61_push69_conv2d1x196(BLACKBOX,187)@4
    // out out_feedback_out_69@20000000
    // out out_feedback_valid_out_69@20000000
    conv2d1x1_i_llvm_fpga_push_f32_lm61_push69_0 thei_llvm_fpga_push_f32_lm61_push69_conv2d1x196 (
        .in_data_in(redist67_i_llvm_fpga_pop_f32_lm61_pop69_conv2d1x195_out_data_out_2_q),
        .in_feedback_stall_in_69(i_llvm_fpga_pop_f32_lm61_pop69_conv2d1x195_out_feedback_stall_out_69),
        .in_keep_going(redist69_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(),
        .out_feedback_out_69(i_llvm_fpga_push_f32_lm61_push69_conv2d1x196_out_feedback_out_69),
        .out_feedback_valid_out_69(i_llvm_fpga_push_f32_lm61_push69_conv2d1x196_out_feedback_valid_out_69),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together202_aunroll_x_in_c0_eni45_8_tpl_1(DELAY,661)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together202_aunroll_x_in_c0_eni45_8_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together202_aunroll_x_in_c0_eni45_8_tpl_1_q <= $unsigned(in_c0_eni45_8_tpl);
        end
    end

    // i_llvm_fpga_pop_f32_lm61_pop69_conv2d1x195(BLACKBOX,172)@2
    // out out_feedback_stall_out_69@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_lm61_pop69_0 thei_llvm_fpga_pop_f32_lm61_pop69_conv2d1x195 (
        .in_data_in(redist9_sync_together202_aunroll_x_in_c0_eni45_8_tpl_1_q),
        .in_dir(redist0_sync_together202_aunroll_x_in_c0_eni45_1_tpl_1_q),
        .in_feedback_in_69(i_llvm_fpga_push_f32_lm61_push69_conv2d1x196_out_feedback_out_69),
        .in_feedback_valid_in_69(i_llvm_fpga_push_f32_lm61_push69_conv2d1x196_out_feedback_valid_out_69),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(i_llvm_fpga_pop_f32_lm61_pop69_conv2d1x195_out_data_out),
        .out_feedback_stall_out_69(i_llvm_fpga_pop_f32_lm61_pop69_conv2d1x195_out_feedback_stall_out_69),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist67_i_llvm_fpga_pop_f32_lm61_pop69_conv2d1x195_out_data_out_2(DELAY,719)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_i_llvm_fpga_pop_f32_lm61_pop69_conv2d1x195_out_data_out_2_delay_0 <= '0;
            redist67_i_llvm_fpga_pop_f32_lm61_pop69_conv2d1x195_out_data_out_2_q <= '0;
        end
        else
        begin
            redist67_i_llvm_fpga_pop_f32_lm61_pop69_conv2d1x195_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_lm61_pop69_conv2d1x195_out_data_out);
            redist67_i_llvm_fpga_pop_f32_lm61_pop69_conv2d1x195_out_data_out_2_q <= redist67_i_llvm_fpga_pop_f32_lm61_pop69_conv2d1x195_out_data_out_2_delay_0;
        end
    end

    // redist68_i_llvm_fpga_pop_f32_lm61_pop69_conv2d1x195_out_data_out_4(DELAY,720)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist68_i_llvm_fpga_pop_f32_lm61_pop69_conv2d1x195_out_data_out_4_delay_0 <= '0;
            redist68_i_llvm_fpga_pop_f32_lm61_pop69_conv2d1x195_out_data_out_4_q <= '0;
        end
        else
        begin
            redist68_i_llvm_fpga_pop_f32_lm61_pop69_conv2d1x195_out_data_out_4_delay_0 <= $unsigned(redist67_i_llvm_fpga_pop_f32_lm61_pop69_conv2d1x195_out_data_out_2_q);
            redist68_i_llvm_fpga_pop_f32_lm61_pop69_conv2d1x195_out_data_out_4_q <= redist68_i_llvm_fpga_pop_f32_lm61_pop69_conv2d1x195_out_data_out_4_delay_0;
        end
    end

    // i_masked_conv2d1x192(LOGICAL,240)@4 + 1
    assign i_masked_conv2d1x192_qi = i_notcmp_conv2d1x187_q & i_first_cleanup_conv2d1x13_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_conv2d1x192_delay ( .xin(i_masked_conv2d1x192_qi), .xout(i_masked_conv2d1x192_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist60_i_masked_conv2d1x192_q_2(DELAY,712)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist60_i_masked_conv2d1x192_q_2_q <= '0;
        end
        else
        begin
            redist60_i_masked_conv2d1x192_q_2_q <= $unsigned(i_masked_conv2d1x192_q);
        end
    end

    // leftShiftStage1Idx1Rng2_uid616_i_shl_conv2d1x10_shift_x(BITSELECT,615)@2
    assign leftShiftStage1Idx1Rng2_uid616_i_shl_conv2d1x10_shift_x_in = leftShiftStage0_uid614_i_shl_conv2d1x10_shift_x_q[29:0];
    assign leftShiftStage1Idx1Rng2_uid616_i_shl_conv2d1x10_shift_x_b = leftShiftStage1Idx1Rng2_uid616_i_shl_conv2d1x10_shift_x_in[29:0];

    // leftShiftStage1Idx1_uid617_i_shl_conv2d1x10_shift_x(BITJOIN,616)@2
    assign leftShiftStage1Idx1_uid617_i_shl_conv2d1x10_shift_x_q = {leftShiftStage1Idx1Rng2_uid616_i_shl_conv2d1x10_shift_x_b, i_arrayidx10411_conv2d1x173_vt_const_1_q};

    // leftShiftStage0Idx1Rng1_uid611_i_shl_conv2d1x10_shift_x(BITSELECT,610)@2
    assign leftShiftStage0Idx1Rng1_uid611_i_shl_conv2d1x10_shift_x_in = i_llvm_fpga_pop_i32_k_0100_pop62_conv2d1x120_out_data_out[30:0];
    assign leftShiftStage0Idx1Rng1_uid611_i_shl_conv2d1x10_shift_x_b = leftShiftStage0Idx1Rng1_uid611_i_shl_conv2d1x10_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid612_i_shl_conv2d1x10_shift_x(BITJOIN,611)@2
    assign leftShiftStage0Idx1_uid612_i_shl_conv2d1x10_shift_x_q = {leftShiftStage0Idx1Rng1_uid611_i_shl_conv2d1x10_shift_x_b, GND_q};

    // valid_fanout_reg6(REG,393)@1 + 1
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

    // valid_fanout_reg22(REG,409)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_1154(CONSTANT,67)
    assign c_i32_1154_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc138_conv2d1x180(ADD,168)@2
    assign i_inc138_conv2d1x180_a = {1'b0, i_llvm_fpga_pop_i32_k_0100_pop62_conv2d1x120_out_data_out};
    assign i_inc138_conv2d1x180_b = {1'b0, c_i32_1154_q};
    assign i_inc138_conv2d1x180_o = $unsigned(i_inc138_conv2d1x180_a) + $unsigned(i_inc138_conv2d1x180_b);
    assign i_inc138_conv2d1x180_q = i_inc138_conv2d1x180_o[32:0];

    // bgTrunc_i_inc138_conv2d1x180_sel_x(BITSELECT,290)@2
    assign bgTrunc_i_inc138_conv2d1x180_sel_x_b = i_inc138_conv2d1x180_q[31:0];

    // i_llvm_fpga_push_i32_k_0100_push62_conv2d1x181(BLACKBOX,198)@2
    // out out_feedback_out_62@20000000
    // out out_feedback_valid_out_62@20000000
    conv2d1x1_i_llvm_fpga_push_i32_k_0100_push62_0 thei_llvm_fpga_push_i32_k_0100_push62_conv2d1x181 (
        .in_data_in(bgTrunc_i_inc138_conv2d1x180_sel_x_b),
        .in_feedback_stall_in_62(i_llvm_fpga_pop_i32_k_0100_pop62_conv2d1x120_out_feedback_stall_out_62),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(),
        .out_feedback_out_62(i_llvm_fpga_push_i32_k_0100_push62_conv2d1x181_out_feedback_out_62),
        .out_feedback_valid_out_62(i_llvm_fpga_push_i32_k_0100_push62_conv2d1x181_out_feedback_valid_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_0152(CONSTANT,66)
    assign c_i32_0152_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_k_0100_pop62_conv2d1x120(BLACKBOX,181)@2
    // out out_feedback_stall_out_62@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_k_0100_pop62_0 thei_llvm_fpga_pop_i32_k_0100_pop62_conv2d1x120 (
        .in_data_in(c_i32_0152_q),
        .in_dir(redist0_sync_together202_aunroll_x_in_c0_eni45_1_tpl_1_q),
        .in_feedback_in_62(i_llvm_fpga_push_i32_k_0100_push62_conv2d1x181_out_feedback_out_62),
        .in_feedback_valid_in_62(i_llvm_fpga_push_i32_k_0100_push62_conv2d1x181_out_feedback_valid_out_62),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_0100_pop62_conv2d1x120_out_data_out),
        .out_feedback_stall_out_62(i_llvm_fpga_pop_i32_k_0100_pop62_conv2d1x120_out_feedback_stall_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage0_uid614_i_shl_conv2d1x10_shift_x(MUX,613)@2
    assign leftShiftStage0_uid614_i_shl_conv2d1x10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid614_i_shl_conv2d1x10_shift_x_s or i_llvm_fpga_pop_i32_k_0100_pop62_conv2d1x120_out_data_out or leftShiftStage0Idx1_uid612_i_shl_conv2d1x10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid614_i_shl_conv2d1x10_shift_x_s)
            1'b0 : leftShiftStage0_uid614_i_shl_conv2d1x10_shift_x_q = i_llvm_fpga_pop_i32_k_0100_pop62_conv2d1x120_out_data_out;
            1'b1 : leftShiftStage0_uid614_i_shl_conv2d1x10_shift_x_q = leftShiftStage0Idx1_uid612_i_shl_conv2d1x10_shift_x_q;
            default : leftShiftStage0_uid614_i_shl_conv2d1x10_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid619_i_shl_conv2d1x10_shift_x(MUX,618)@2
    assign leftShiftStage1_uid619_i_shl_conv2d1x10_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid619_i_shl_conv2d1x10_shift_x_s or leftShiftStage0_uid614_i_shl_conv2d1x10_shift_x_q or leftShiftStage1Idx1_uid617_i_shl_conv2d1x10_shift_x_q)
    begin
        unique case (leftShiftStage1_uid619_i_shl_conv2d1x10_shift_x_s)
            1'b0 : leftShiftStage1_uid619_i_shl_conv2d1x10_shift_x_q = leftShiftStage0_uid614_i_shl_conv2d1x10_shift_x_q;
            1'b1 : leftShiftStage1_uid619_i_shl_conv2d1x10_shift_x_q = leftShiftStage1Idx1_uid617_i_shl_conv2d1x10_shift_x_q;
            default : leftShiftStage1_uid619_i_shl_conv2d1x10_shift_x_q = 32'b0;
        endcase
    end

    // i_shl_conv2d1x121_vt_select_31(BITSELECT,269)@2
    assign i_shl_conv2d1x121_vt_select_31_b = leftShiftStage1_uid619_i_shl_conv2d1x10_shift_x_q[31:3];

    // i_mul17_conv2d1x124_vt_const_2(CONSTANT,247)
    assign i_mul17_conv2d1x124_vt_const_2_q = $unsigned(3'b000);

    // i_shl_conv2d1x121_vt_join(BITJOIN,268)@2
    assign i_shl_conv2d1x121_vt_join_q = {i_shl_conv2d1x121_vt_select_31_b, i_mul17_conv2d1x124_vt_const_2_q};

    // i_add113_conv2d1x174_BitSelect_for_a(BITSELECT,455)@2
    assign i_add113_conv2d1x174_BitSelect_for_a_b = i_shl_conv2d1x121_vt_join_q[31:3];

    // i_add113_conv2d1x174_join(BITJOIN,456)@2
    assign i_add113_conv2d1x174_join_q = {i_add113_conv2d1x174_BitSelect_for_a_b, VCC_q, VCC_q, VCC_q};

    // i_add113_conv2d1x174_vt_select_31(BITSELECT,81)@2
    assign i_add113_conv2d1x174_vt_select_31_b = i_add113_conv2d1x174_join_q[31:3];

    // i_add113_conv2d1x174_vt_const_2(CONSTANT,79)
    assign i_add113_conv2d1x174_vt_const_2_q = $unsigned(3'b111);

    // i_add113_conv2d1x174_vt_join(BITJOIN,80)@2
    assign i_add113_conv2d1x174_vt_join_q = {i_add113_conv2d1x174_vt_select_31_b, i_add113_conv2d1x174_vt_const_2_q};

    // i_mul115_conv2d1x175_bs2_merged_bit_select(BITSELECT,644)@2
    assign i_mul115_conv2d1x175_bs2_merged_bit_select_b = i_add113_conv2d1x174_vt_join_q[31:18];
    assign i_mul115_conv2d1x175_bs2_merged_bit_select_c = i_add113_conv2d1x174_vt_join_q[17:0];

    // valid_fanout_reg7(REG,394)@1 + 1
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

    // valid_fanout_reg8(REG,395)@1 + 1
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

    // i_llvm_fpga_push_i32_mul58_push65_conv2d1x123(BLACKBOX,201)@2
    // out out_feedback_out_65@20000000
    // out out_feedback_valid_out_65@20000000
    conv2d1x1_i_llvm_fpga_push_i32_mul58_push65_0 thei_llvm_fpga_push_i32_mul58_push65_conv2d1x123 (
        .in_data_in(i_llvm_fpga_pop_i32_mul58_pop65_conv2d1x122_out_data_out),
        .in_feedback_stall_in_65(i_llvm_fpga_pop_i32_mul58_pop65_conv2d1x122_out_feedback_stall_out_65),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_65(i_llvm_fpga_push_i32_mul58_push65_conv2d1x123_out_feedback_out_65),
        .out_feedback_valid_out_65(i_llvm_fpga_push_i32_mul58_push65_conv2d1x123_out_feedback_valid_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together202_aunroll_x_in_c0_eni45_4_tpl_1(DELAY,657)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together202_aunroll_x_in_c0_eni45_4_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together202_aunroll_x_in_c0_eni45_4_tpl_1_q <= $unsigned(in_c0_eni45_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul58_pop65_conv2d1x122(BLACKBOX,184)@2
    // out out_feedback_stall_out_65@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_mul58_pop65_0 thei_llvm_fpga_pop_i32_mul58_pop65_conv2d1x122 (
        .in_data_in(redist5_sync_together202_aunroll_x_in_c0_eni45_4_tpl_1_q),
        .in_dir(redist0_sync_together202_aunroll_x_in_c0_eni45_1_tpl_1_q),
        .in_feedback_in_65(i_llvm_fpga_push_i32_mul58_push65_conv2d1x123_out_feedback_out_65),
        .in_feedback_valid_in_65(i_llvm_fpga_push_i32_mul58_push65_conv2d1x123_out_feedback_valid_out_65),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul58_pop65_conv2d1x122_out_data_out),
        .out_feedback_stall_out_65(i_llvm_fpga_pop_i32_mul58_pop65_conv2d1x122_out_feedback_stall_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul101_conv2d1x169_bs1_merged_bit_select(BITSELECT,651)@2
    assign i_mul101_conv2d1x169_bs1_merged_bit_select_b = i_llvm_fpga_pop_i32_mul58_pop65_conv2d1x122_out_data_out[31:18];
    assign i_mul101_conv2d1x169_bs1_merged_bit_select_c = i_llvm_fpga_pop_i32_mul58_pop65_conv2d1x122_out_data_out[17:0];

    // i_mul115_conv2d1x175_ma3_cma(CHAINMULTADD,637)@2 + 3
    assign i_mul115_conv2d1x175_ma3_cma_reset = ~ (resetn);
    assign i_mul115_conv2d1x175_ma3_cma_ena0 = 1'b1;
    assign i_mul115_conv2d1x175_ma3_cma_ena1 = i_mul115_conv2d1x175_ma3_cma_ena0;
    assign i_mul115_conv2d1x175_ma3_cma_ena2 = i_mul115_conv2d1x175_ma3_cma_ena0;

    assign i_mul115_conv2d1x175_ma3_cma_a0 = i_mul101_conv2d1x169_bs1_merged_bit_select_b;
    assign i_mul115_conv2d1x175_ma3_cma_c0 = i_mul115_conv2d1x175_bs2_merged_bit_select_c;
    assign i_mul115_conv2d1x175_ma3_cma_a1 = i_mul115_conv2d1x175_bs2_merged_bit_select_b;
    assign i_mul115_conv2d1x175_ma3_cma_c1 = i_mul101_conv2d1x169_bs1_merged_bit_select_c;
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
    ) i_mul115_conv2d1x175_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul115_conv2d1x175_ma3_cma_ena2, i_mul115_conv2d1x175_ma3_cma_ena1, i_mul115_conv2d1x175_ma3_cma_ena0 }),
        .aclr({ i_mul115_conv2d1x175_ma3_cma_reset, i_mul115_conv2d1x175_ma3_cma_reset }),
        .ay(i_mul115_conv2d1x175_ma3_cma_a1),
        .by(i_mul115_conv2d1x175_ma3_cma_a0),
        .ax(i_mul115_conv2d1x175_ma3_cma_c1),
        .bx(i_mul115_conv2d1x175_ma3_cma_c0),
        .resulta(i_mul115_conv2d1x175_ma3_cma_s0),
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
    i_mul115_conv2d1x175_ma3_cma_delay ( .xin(i_mul115_conv2d1x175_ma3_cma_s0), .xout(i_mul115_conv2d1x175_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul115_conv2d1x175_ma3_cma_q = $unsigned(i_mul115_conv2d1x175_ma3_cma_qq[32:0]);

    // i_mul115_conv2d1x175_sums_align_1(BITSHIFT,498)@5
    assign i_mul115_conv2d1x175_sums_align_1_qint = { i_mul115_conv2d1x175_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul115_conv2d1x175_sums_align_1_q = i_mul115_conv2d1x175_sums_align_1_qint[50:0];

    // i_mul115_conv2d1x175_im0_cma(CHAINMULTADD,622)@2 + 3
    assign i_mul115_conv2d1x175_im0_cma_reset = ~ (resetn);
    assign i_mul115_conv2d1x175_im0_cma_ena0 = 1'b1;
    assign i_mul115_conv2d1x175_im0_cma_ena1 = i_mul115_conv2d1x175_im0_cma_ena0;
    assign i_mul115_conv2d1x175_im0_cma_ena2 = i_mul115_conv2d1x175_im0_cma_ena0;

    assign i_mul115_conv2d1x175_im0_cma_a0 = i_mul101_conv2d1x169_bs1_merged_bit_select_b;
    assign i_mul115_conv2d1x175_im0_cma_c0 = i_mul115_conv2d1x175_bs2_merged_bit_select_b;
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
    ) i_mul115_conv2d1x175_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul115_conv2d1x175_im0_cma_ena2, i_mul115_conv2d1x175_im0_cma_ena1, i_mul115_conv2d1x175_im0_cma_ena0 }),
        .aclr({ i_mul115_conv2d1x175_im0_cma_reset, i_mul115_conv2d1x175_im0_cma_reset }),
        .ay(i_mul115_conv2d1x175_im0_cma_a0),
        .ax(i_mul115_conv2d1x175_im0_cma_c0),
        .resulta(i_mul115_conv2d1x175_im0_cma_s0),
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
    i_mul115_conv2d1x175_im0_cma_delay ( .xin(i_mul115_conv2d1x175_im0_cma_s0), .xout(i_mul115_conv2d1x175_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul115_conv2d1x175_im0_cma_q = $unsigned(i_mul115_conv2d1x175_im0_cma_qq[27:0]);

    // i_mul115_conv2d1x175_im8_cma(CHAINMULTADD,623)@2 + 3
    assign i_mul115_conv2d1x175_im8_cma_reset = ~ (resetn);
    assign i_mul115_conv2d1x175_im8_cma_ena0 = 1'b1;
    assign i_mul115_conv2d1x175_im8_cma_ena1 = i_mul115_conv2d1x175_im8_cma_ena0;
    assign i_mul115_conv2d1x175_im8_cma_ena2 = i_mul115_conv2d1x175_im8_cma_ena0;

    assign i_mul115_conv2d1x175_im8_cma_a0 = i_mul101_conv2d1x169_bs1_merged_bit_select_c;
    assign i_mul115_conv2d1x175_im8_cma_c0 = i_mul115_conv2d1x175_bs2_merged_bit_select_c;
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
    ) i_mul115_conv2d1x175_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul115_conv2d1x175_im8_cma_ena2, i_mul115_conv2d1x175_im8_cma_ena1, i_mul115_conv2d1x175_im8_cma_ena0 }),
        .aclr({ i_mul115_conv2d1x175_im8_cma_reset, i_mul115_conv2d1x175_im8_cma_reset }),
        .ay(i_mul115_conv2d1x175_im8_cma_a0),
        .ax(i_mul115_conv2d1x175_im8_cma_c0),
        .resulta(i_mul115_conv2d1x175_im8_cma_s0),
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
    i_mul115_conv2d1x175_im8_cma_delay ( .xin(i_mul115_conv2d1x175_im8_cma_s0), .xout(i_mul115_conv2d1x175_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul115_conv2d1x175_im8_cma_q = $unsigned(i_mul115_conv2d1x175_im8_cma_qq[35:0]);

    // i_mul115_conv2d1x175_sums_join_0(BITJOIN,497)@5
    assign i_mul115_conv2d1x175_sums_join_0_q = {i_mul115_conv2d1x175_im0_cma_q, i_mul115_conv2d1x175_im8_cma_q};

    // i_mul115_conv2d1x175_sums_result_add_0_0(ADD,500)@5
    assign i_mul115_conv2d1x175_sums_result_add_0_0_a = {1'b0, i_mul115_conv2d1x175_sums_join_0_q};
    assign i_mul115_conv2d1x175_sums_result_add_0_0_b = {14'b00000000000000, i_mul115_conv2d1x175_sums_align_1_q};
    assign i_mul115_conv2d1x175_sums_result_add_0_0_o = $unsigned(i_mul115_conv2d1x175_sums_result_add_0_0_a) + $unsigned(i_mul115_conv2d1x175_sums_result_add_0_0_b);
    assign i_mul115_conv2d1x175_sums_result_add_0_0_q = i_mul115_conv2d1x175_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul115_conv2d1x175_sel_x(BITSELECT,292)@5
    assign bgTrunc_i_mul115_conv2d1x175_sel_x_in = i_mul115_conv2d1x175_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul115_conv2d1x175_sel_x_b = bgTrunc_i_mul115_conv2d1x175_sel_x_in[31:0];

    // redist54_bgTrunc_i_mul115_conv2d1x175_sel_x_b_1(DELAY,706)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_bgTrunc_i_mul115_conv2d1x175_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist54_bgTrunc_i_mul115_conv2d1x175_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul115_conv2d1x175_sel_x_b);
        end
    end

    // i_add116_conv2d1x176(ADD,82)@6
    assign i_add116_conv2d1x176_a = {1'b0, redist54_bgTrunc_i_mul115_conv2d1x175_sel_x_b_1_q};
    assign i_add116_conv2d1x176_b = {1'b0, redist62_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out_4_outputreg0_q};
    assign i_add116_conv2d1x176_o = $unsigned(i_add116_conv2d1x176_a) + $unsigned(i_add116_conv2d1x176_b);
    assign i_add116_conv2d1x176_q = i_add116_conv2d1x176_o[32:0];

    // bgTrunc_i_add116_conv2d1x176_sel_x(BITSELECT,281)@6
    assign bgTrunc_i_add116_conv2d1x176_sel_x_b = i_add116_conv2d1x176_q[31:0];

    // i_idxprom117_conv2d1x177_sel_x(BITSELECT,368)@6
    assign i_idxprom117_conv2d1x177_sel_x_b = $unsigned({{32{bgTrunc_i_add116_conv2d1x176_sel_x_b[31]}}, bgTrunc_i_add116_conv2d1x176_sel_x_b[31:0]});

    // i_arrayidx11812_conv2d1x10_narrow_x(BITSELECT,316)@6
    assign i_arrayidx11812_conv2d1x10_narrow_x_b = i_idxprom117_conv2d1x177_sel_x_b[61:0];

    // i_arrayidx11812_conv2d1x10_shift_join_x(BITJOIN,317)@6
    assign i_arrayidx11812_conv2d1x10_shift_join_x_q = {i_arrayidx11812_conv2d1x10_narrow_x_b, i_arrayidx10411_conv2d1x173_vt_const_1_q};

    // valid_fanout_reg21(REG,408)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist50_sync_together202_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer12_conv2d1x178(BLACKBOX,212)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0000t_im_sync_buffer12_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer12_conv2d1x178 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer12_conv2d1x178_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer12_conv2d1x178_vt_select_63(BITSELECT,215)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer12_conv2d1x178_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer12_conv2d1x178_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer10_conv2d1x166_vt_const_9(CONSTANT,205)
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer10_conv2d1x166_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer12_conv2d1x178_vt_join(BITJOIN,214)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer12_conv2d1x178_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer12_conv2d1x178_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer10_conv2d1x166_vt_const_9_q};

    // i_arrayidx11812_conv2d1x10_add_x(ADD,314)@6
    assign i_arrayidx11812_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer12_conv2d1x178_vt_join_q};
    assign i_arrayidx11812_conv2d1x10_add_x_b = {1'b0, i_arrayidx11812_conv2d1x10_shift_join_x_q};
    assign i_arrayidx11812_conv2d1x10_add_x_o = $unsigned(i_arrayidx11812_conv2d1x10_add_x_a) + $unsigned(i_arrayidx11812_conv2d1x10_add_x_b);
    assign i_arrayidx11812_conv2d1x10_add_x_q = i_arrayidx11812_conv2d1x10_add_x_o[64:0];

    // i_arrayidx11812_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,319)@6
    assign i_arrayidx11812_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx11812_conv2d1x10_add_x_q[63:0];

    // i_arrayidx11812_conv2d1x179_vt_select_63(BITSELECT,119)@6
    assign i_arrayidx11812_conv2d1x179_vt_select_63_b = i_arrayidx11812_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx10411_conv2d1x173_vt_const_1(CONSTANT,114)
    assign i_arrayidx10411_conv2d1x173_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx11812_conv2d1x179_vt_join(BITJOIN,118)@6
    assign i_arrayidx11812_conv2d1x179_vt_join_q = {i_arrayidx11812_conv2d1x179_vt_select_63_b, i_arrayidx10411_conv2d1x173_vt_const_1_q};

    // i_add99_conv2d1x168_join(BITJOIN,468)@2
    assign i_add99_conv2d1x168_join_q = {i_add113_conv2d1x174_BitSelect_for_a_b, VCC_q, VCC_q, GND_q};

    // i_add99_conv2d1x168_vt_select_31(BITSELECT,113)@2
    assign i_add99_conv2d1x168_vt_select_31_b = i_add99_conv2d1x168_join_q[31:3];

    // i_add99_conv2d1x168_vt_const_2(CONSTANT,111)
    assign i_add99_conv2d1x168_vt_const_2_q = $unsigned(3'b110);

    // i_add99_conv2d1x168_vt_join(BITJOIN,112)@2
    assign i_add99_conv2d1x168_vt_join_q = {i_add99_conv2d1x168_vt_select_31_b, i_add99_conv2d1x168_vt_const_2_q};

    // i_mul101_conv2d1x169_bs2_merged_bit_select(BITSELECT,650)@2
    assign i_mul101_conv2d1x169_bs2_merged_bit_select_b = i_add99_conv2d1x168_vt_join_q[31:18];
    assign i_mul101_conv2d1x169_bs2_merged_bit_select_c = i_add99_conv2d1x168_vt_join_q[17:0];

    // i_mul101_conv2d1x169_ma3_cma(CHAINMULTADD,636)@2 + 3
    assign i_mul101_conv2d1x169_ma3_cma_reset = ~ (resetn);
    assign i_mul101_conv2d1x169_ma3_cma_ena0 = 1'b1;
    assign i_mul101_conv2d1x169_ma3_cma_ena1 = i_mul101_conv2d1x169_ma3_cma_ena0;
    assign i_mul101_conv2d1x169_ma3_cma_ena2 = i_mul101_conv2d1x169_ma3_cma_ena0;

    assign i_mul101_conv2d1x169_ma3_cma_a0 = i_mul101_conv2d1x169_bs1_merged_bit_select_b;
    assign i_mul101_conv2d1x169_ma3_cma_c0 = i_mul101_conv2d1x169_bs2_merged_bit_select_c;
    assign i_mul101_conv2d1x169_ma3_cma_a1 = i_mul101_conv2d1x169_bs2_merged_bit_select_b;
    assign i_mul101_conv2d1x169_ma3_cma_c1 = i_mul101_conv2d1x169_bs1_merged_bit_select_c;
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
    ) i_mul101_conv2d1x169_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul101_conv2d1x169_ma3_cma_ena2, i_mul101_conv2d1x169_ma3_cma_ena1, i_mul101_conv2d1x169_ma3_cma_ena0 }),
        .aclr({ i_mul101_conv2d1x169_ma3_cma_reset, i_mul101_conv2d1x169_ma3_cma_reset }),
        .ay(i_mul101_conv2d1x169_ma3_cma_a1),
        .by(i_mul101_conv2d1x169_ma3_cma_a0),
        .ax(i_mul101_conv2d1x169_ma3_cma_c1),
        .bx(i_mul101_conv2d1x169_ma3_cma_c0),
        .resulta(i_mul101_conv2d1x169_ma3_cma_s0),
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
    i_mul101_conv2d1x169_ma3_cma_delay ( .xin(i_mul101_conv2d1x169_ma3_cma_s0), .xout(i_mul101_conv2d1x169_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul101_conv2d1x169_ma3_cma_q = $unsigned(i_mul101_conv2d1x169_ma3_cma_qq[32:0]);

    // i_mul101_conv2d1x169_sums_align_1(BITSHIFT,483)@5
    assign i_mul101_conv2d1x169_sums_align_1_qint = { i_mul101_conv2d1x169_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul101_conv2d1x169_sums_align_1_q = i_mul101_conv2d1x169_sums_align_1_qint[50:0];

    // i_mul101_conv2d1x169_im0_cma(CHAINMULTADD,620)@2 + 3
    assign i_mul101_conv2d1x169_im0_cma_reset = ~ (resetn);
    assign i_mul101_conv2d1x169_im0_cma_ena0 = 1'b1;
    assign i_mul101_conv2d1x169_im0_cma_ena1 = i_mul101_conv2d1x169_im0_cma_ena0;
    assign i_mul101_conv2d1x169_im0_cma_ena2 = i_mul101_conv2d1x169_im0_cma_ena0;

    assign i_mul101_conv2d1x169_im0_cma_a0 = i_mul101_conv2d1x169_bs1_merged_bit_select_b;
    assign i_mul101_conv2d1x169_im0_cma_c0 = i_mul101_conv2d1x169_bs2_merged_bit_select_b;
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
    ) i_mul101_conv2d1x169_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul101_conv2d1x169_im0_cma_ena2, i_mul101_conv2d1x169_im0_cma_ena1, i_mul101_conv2d1x169_im0_cma_ena0 }),
        .aclr({ i_mul101_conv2d1x169_im0_cma_reset, i_mul101_conv2d1x169_im0_cma_reset }),
        .ay(i_mul101_conv2d1x169_im0_cma_a0),
        .ax(i_mul101_conv2d1x169_im0_cma_c0),
        .resulta(i_mul101_conv2d1x169_im0_cma_s0),
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
    i_mul101_conv2d1x169_im0_cma_delay ( .xin(i_mul101_conv2d1x169_im0_cma_s0), .xout(i_mul101_conv2d1x169_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul101_conv2d1x169_im0_cma_q = $unsigned(i_mul101_conv2d1x169_im0_cma_qq[27:0]);

    // i_mul101_conv2d1x169_im8_cma(CHAINMULTADD,621)@2 + 3
    assign i_mul101_conv2d1x169_im8_cma_reset = ~ (resetn);
    assign i_mul101_conv2d1x169_im8_cma_ena0 = 1'b1;
    assign i_mul101_conv2d1x169_im8_cma_ena1 = i_mul101_conv2d1x169_im8_cma_ena0;
    assign i_mul101_conv2d1x169_im8_cma_ena2 = i_mul101_conv2d1x169_im8_cma_ena0;

    assign i_mul101_conv2d1x169_im8_cma_a0 = i_mul101_conv2d1x169_bs1_merged_bit_select_c;
    assign i_mul101_conv2d1x169_im8_cma_c0 = i_mul101_conv2d1x169_bs2_merged_bit_select_c;
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
    ) i_mul101_conv2d1x169_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul101_conv2d1x169_im8_cma_ena2, i_mul101_conv2d1x169_im8_cma_ena1, i_mul101_conv2d1x169_im8_cma_ena0 }),
        .aclr({ i_mul101_conv2d1x169_im8_cma_reset, i_mul101_conv2d1x169_im8_cma_reset }),
        .ay(i_mul101_conv2d1x169_im8_cma_a0),
        .ax(i_mul101_conv2d1x169_im8_cma_c0),
        .resulta(i_mul101_conv2d1x169_im8_cma_s0),
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
    i_mul101_conv2d1x169_im8_cma_delay ( .xin(i_mul101_conv2d1x169_im8_cma_s0), .xout(i_mul101_conv2d1x169_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul101_conv2d1x169_im8_cma_q = $unsigned(i_mul101_conv2d1x169_im8_cma_qq[35:0]);

    // i_mul101_conv2d1x169_sums_join_0(BITJOIN,482)@5
    assign i_mul101_conv2d1x169_sums_join_0_q = {i_mul101_conv2d1x169_im0_cma_q, i_mul101_conv2d1x169_im8_cma_q};

    // i_mul101_conv2d1x169_sums_result_add_0_0(ADD,485)@5
    assign i_mul101_conv2d1x169_sums_result_add_0_0_a = {1'b0, i_mul101_conv2d1x169_sums_join_0_q};
    assign i_mul101_conv2d1x169_sums_result_add_0_0_b = {14'b00000000000000, i_mul101_conv2d1x169_sums_align_1_q};
    assign i_mul101_conv2d1x169_sums_result_add_0_0_o = $unsigned(i_mul101_conv2d1x169_sums_result_add_0_0_a) + $unsigned(i_mul101_conv2d1x169_sums_result_add_0_0_b);
    assign i_mul101_conv2d1x169_sums_result_add_0_0_q = i_mul101_conv2d1x169_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul101_conv2d1x169_sel_x(BITSELECT,291)@5
    assign bgTrunc_i_mul101_conv2d1x169_sel_x_in = i_mul101_conv2d1x169_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul101_conv2d1x169_sel_x_b = bgTrunc_i_mul101_conv2d1x169_sel_x_in[31:0];

    // i_mul101_conv2d1x169_vt_select_31(BITSELECT,244)@5
    assign i_mul101_conv2d1x169_vt_select_31_b = bgTrunc_i_mul101_conv2d1x169_sel_x_b[31:1];

    // redist59_i_mul101_conv2d1x169_vt_select_31_b_1(DELAY,711)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist59_i_mul101_conv2d1x169_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist59_i_mul101_conv2d1x169_vt_select_31_b_1_q <= $unsigned(i_mul101_conv2d1x169_vt_select_31_b);
        end
    end

    // i_mul101_conv2d1x169_vt_join(BITJOIN,243)@6
    assign i_mul101_conv2d1x169_vt_join_q = {redist59_i_mul101_conv2d1x169_vt_select_31_b_1_q, GND_q};

    // i_add102_conv2d1x170(ADD,77)@6
    assign i_add102_conv2d1x170_a = {1'b0, i_mul101_conv2d1x169_vt_join_q};
    assign i_add102_conv2d1x170_b = {1'b0, redist62_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out_4_outputreg0_q};
    assign i_add102_conv2d1x170_o = $unsigned(i_add102_conv2d1x170_a) + $unsigned(i_add102_conv2d1x170_b);
    assign i_add102_conv2d1x170_q = i_add102_conv2d1x170_o[32:0];

    // bgTrunc_i_add102_conv2d1x170_sel_x(BITSELECT,280)@6
    assign bgTrunc_i_add102_conv2d1x170_sel_x_b = i_add102_conv2d1x170_q[31:0];

    // i_idxprom103_conv2d1x171_sel_x(BITSELECT,367)@6
    assign i_idxprom103_conv2d1x171_sel_x_b = $unsigned({{32{bgTrunc_i_add102_conv2d1x170_sel_x_b[31]}}, bgTrunc_i_add102_conv2d1x170_sel_x_b[31:0]});

    // i_arrayidx10411_conv2d1x10_narrow_x(BITSELECT,310)@6
    assign i_arrayidx10411_conv2d1x10_narrow_x_b = i_idxprom103_conv2d1x171_sel_x_b[61:0];

    // i_arrayidx10411_conv2d1x10_shift_join_x(BITJOIN,311)@6
    assign i_arrayidx10411_conv2d1x10_shift_join_x_q = {i_arrayidx10411_conv2d1x10_narrow_x_b, i_arrayidx10411_conv2d1x173_vt_const_1_q};

    // valid_fanout_reg20(REG,407)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist50_sync_together202_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer11_conv2d1x172(BLACKBOX,208)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0000t_im_sync_buffer11_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer11_conv2d1x172 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer11_conv2d1x172_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer11_conv2d1x172_vt_select_63(BITSELECT,211)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer11_conv2d1x172_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer11_conv2d1x172_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer11_conv2d1x172_vt_join(BITJOIN,210)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer11_conv2d1x172_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer11_conv2d1x172_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer10_conv2d1x166_vt_const_9_q};

    // i_arrayidx10411_conv2d1x10_add_x(ADD,308)@6
    assign i_arrayidx10411_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer11_conv2d1x172_vt_join_q};
    assign i_arrayidx10411_conv2d1x10_add_x_b = {1'b0, i_arrayidx10411_conv2d1x10_shift_join_x_q};
    assign i_arrayidx10411_conv2d1x10_add_x_o = $unsigned(i_arrayidx10411_conv2d1x10_add_x_a) + $unsigned(i_arrayidx10411_conv2d1x10_add_x_b);
    assign i_arrayidx10411_conv2d1x10_add_x_q = i_arrayidx10411_conv2d1x10_add_x_o[64:0];

    // i_arrayidx10411_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,313)@6
    assign i_arrayidx10411_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx10411_conv2d1x10_add_x_q[63:0];

    // i_arrayidx10411_conv2d1x173_vt_select_63(BITSELECT,116)@6
    assign i_arrayidx10411_conv2d1x173_vt_select_63_b = i_arrayidx10411_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx10411_conv2d1x173_vt_join(BITJOIN,115)@6
    assign i_arrayidx10411_conv2d1x173_vt_join_q = {i_arrayidx10411_conv2d1x173_vt_select_63_b, i_arrayidx10411_conv2d1x173_vt_const_1_q};

    // i_add85_conv2d1x162_join(BITJOIN,466)@2
    assign i_add85_conv2d1x162_join_q = {i_add113_conv2d1x174_BitSelect_for_a_b, VCC_q, GND_q, VCC_q};

    // i_add85_conv2d1x162_vt_select_31(BITSELECT,108)@2
    assign i_add85_conv2d1x162_vt_select_31_b = i_add85_conv2d1x162_join_q[31:3];

    // i_add85_conv2d1x162_vt_const_2(CONSTANT,106)
    assign i_add85_conv2d1x162_vt_const_2_q = $unsigned(3'b101);

    // i_add85_conv2d1x162_vt_join(BITJOIN,107)@2
    assign i_add85_conv2d1x162_vt_join_q = {i_add85_conv2d1x162_vt_select_31_b, i_add85_conv2d1x162_vt_const_2_q};

    // i_mul87_conv2d1x163_bs2_merged_bit_select(BITSELECT,649)@2
    assign i_mul87_conv2d1x163_bs2_merged_bit_select_b = i_add85_conv2d1x162_vt_join_q[31:18];
    assign i_mul87_conv2d1x163_bs2_merged_bit_select_c = i_add85_conv2d1x162_vt_join_q[17:0];

    // i_mul87_conv2d1x163_ma3_cma(CHAINMULTADD,643)@2 + 3
    assign i_mul87_conv2d1x163_ma3_cma_reset = ~ (resetn);
    assign i_mul87_conv2d1x163_ma3_cma_ena0 = 1'b1;
    assign i_mul87_conv2d1x163_ma3_cma_ena1 = i_mul87_conv2d1x163_ma3_cma_ena0;
    assign i_mul87_conv2d1x163_ma3_cma_ena2 = i_mul87_conv2d1x163_ma3_cma_ena0;

    assign i_mul87_conv2d1x163_ma3_cma_a0 = i_mul101_conv2d1x169_bs1_merged_bit_select_b;
    assign i_mul87_conv2d1x163_ma3_cma_c0 = i_mul87_conv2d1x163_bs2_merged_bit_select_c;
    assign i_mul87_conv2d1x163_ma3_cma_a1 = i_mul87_conv2d1x163_bs2_merged_bit_select_b;
    assign i_mul87_conv2d1x163_ma3_cma_c1 = i_mul101_conv2d1x169_bs1_merged_bit_select_c;
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
    ) i_mul87_conv2d1x163_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul87_conv2d1x163_ma3_cma_ena2, i_mul87_conv2d1x163_ma3_cma_ena1, i_mul87_conv2d1x163_ma3_cma_ena0 }),
        .aclr({ i_mul87_conv2d1x163_ma3_cma_reset, i_mul87_conv2d1x163_ma3_cma_reset }),
        .ay(i_mul87_conv2d1x163_ma3_cma_a1),
        .by(i_mul87_conv2d1x163_ma3_cma_a0),
        .ax(i_mul87_conv2d1x163_ma3_cma_c1),
        .bx(i_mul87_conv2d1x163_ma3_cma_c0),
        .resulta(i_mul87_conv2d1x163_ma3_cma_s0),
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
    i_mul87_conv2d1x163_ma3_cma_delay ( .xin(i_mul87_conv2d1x163_ma3_cma_s0), .xout(i_mul87_conv2d1x163_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul87_conv2d1x163_ma3_cma_q = $unsigned(i_mul87_conv2d1x163_ma3_cma_qq[32:0]);

    // i_mul87_conv2d1x163_sums_align_1(BITSHIFT,588)@5
    assign i_mul87_conv2d1x163_sums_align_1_qint = { i_mul87_conv2d1x163_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul87_conv2d1x163_sums_align_1_q = i_mul87_conv2d1x163_sums_align_1_qint[50:0];

    // i_mul87_conv2d1x163_im0_cma(CHAINMULTADD,634)@2 + 3
    assign i_mul87_conv2d1x163_im0_cma_reset = ~ (resetn);
    assign i_mul87_conv2d1x163_im0_cma_ena0 = 1'b1;
    assign i_mul87_conv2d1x163_im0_cma_ena1 = i_mul87_conv2d1x163_im0_cma_ena0;
    assign i_mul87_conv2d1x163_im0_cma_ena2 = i_mul87_conv2d1x163_im0_cma_ena0;

    assign i_mul87_conv2d1x163_im0_cma_a0 = i_mul101_conv2d1x169_bs1_merged_bit_select_b;
    assign i_mul87_conv2d1x163_im0_cma_c0 = i_mul87_conv2d1x163_bs2_merged_bit_select_b;
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
    ) i_mul87_conv2d1x163_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul87_conv2d1x163_im0_cma_ena2, i_mul87_conv2d1x163_im0_cma_ena1, i_mul87_conv2d1x163_im0_cma_ena0 }),
        .aclr({ i_mul87_conv2d1x163_im0_cma_reset, i_mul87_conv2d1x163_im0_cma_reset }),
        .ay(i_mul87_conv2d1x163_im0_cma_a0),
        .ax(i_mul87_conv2d1x163_im0_cma_c0),
        .resulta(i_mul87_conv2d1x163_im0_cma_s0),
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
    i_mul87_conv2d1x163_im0_cma_delay ( .xin(i_mul87_conv2d1x163_im0_cma_s0), .xout(i_mul87_conv2d1x163_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul87_conv2d1x163_im0_cma_q = $unsigned(i_mul87_conv2d1x163_im0_cma_qq[27:0]);

    // i_mul87_conv2d1x163_im8_cma(CHAINMULTADD,635)@2 + 3
    assign i_mul87_conv2d1x163_im8_cma_reset = ~ (resetn);
    assign i_mul87_conv2d1x163_im8_cma_ena0 = 1'b1;
    assign i_mul87_conv2d1x163_im8_cma_ena1 = i_mul87_conv2d1x163_im8_cma_ena0;
    assign i_mul87_conv2d1x163_im8_cma_ena2 = i_mul87_conv2d1x163_im8_cma_ena0;

    assign i_mul87_conv2d1x163_im8_cma_a0 = i_mul101_conv2d1x169_bs1_merged_bit_select_c;
    assign i_mul87_conv2d1x163_im8_cma_c0 = i_mul87_conv2d1x163_bs2_merged_bit_select_c;
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
    ) i_mul87_conv2d1x163_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul87_conv2d1x163_im8_cma_ena2, i_mul87_conv2d1x163_im8_cma_ena1, i_mul87_conv2d1x163_im8_cma_ena0 }),
        .aclr({ i_mul87_conv2d1x163_im8_cma_reset, i_mul87_conv2d1x163_im8_cma_reset }),
        .ay(i_mul87_conv2d1x163_im8_cma_a0),
        .ax(i_mul87_conv2d1x163_im8_cma_c0),
        .resulta(i_mul87_conv2d1x163_im8_cma_s0),
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
    i_mul87_conv2d1x163_im8_cma_delay ( .xin(i_mul87_conv2d1x163_im8_cma_s0), .xout(i_mul87_conv2d1x163_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul87_conv2d1x163_im8_cma_q = $unsigned(i_mul87_conv2d1x163_im8_cma_qq[35:0]);

    // i_mul87_conv2d1x163_sums_join_0(BITJOIN,587)@5
    assign i_mul87_conv2d1x163_sums_join_0_q = {i_mul87_conv2d1x163_im0_cma_q, i_mul87_conv2d1x163_im8_cma_q};

    // i_mul87_conv2d1x163_sums_result_add_0_0(ADD,590)@5
    assign i_mul87_conv2d1x163_sums_result_add_0_0_a = {1'b0, i_mul87_conv2d1x163_sums_join_0_q};
    assign i_mul87_conv2d1x163_sums_result_add_0_0_b = {14'b00000000000000, i_mul87_conv2d1x163_sums_align_1_q};
    assign i_mul87_conv2d1x163_sums_result_add_0_0_o = $unsigned(i_mul87_conv2d1x163_sums_result_add_0_0_a) + $unsigned(i_mul87_conv2d1x163_sums_result_add_0_0_b);
    assign i_mul87_conv2d1x163_sums_result_add_0_0_q = i_mul87_conv2d1x163_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul87_conv2d1x163_sel_x(BITSELECT,298)@5
    assign bgTrunc_i_mul87_conv2d1x163_sel_x_in = i_mul87_conv2d1x163_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul87_conv2d1x163_sel_x_b = bgTrunc_i_mul87_conv2d1x163_sel_x_in[31:0];

    // redist51_bgTrunc_i_mul87_conv2d1x163_sel_x_b_1(DELAY,703)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_bgTrunc_i_mul87_conv2d1x163_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist51_bgTrunc_i_mul87_conv2d1x163_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul87_conv2d1x163_sel_x_b);
        end
    end

    // i_add88_conv2d1x164(ADD,109)@6
    assign i_add88_conv2d1x164_a = {1'b0, redist51_bgTrunc_i_mul87_conv2d1x163_sel_x_b_1_q};
    assign i_add88_conv2d1x164_b = {1'b0, redist62_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out_4_outputreg0_q};
    assign i_add88_conv2d1x164_o = $unsigned(i_add88_conv2d1x164_a) + $unsigned(i_add88_conv2d1x164_b);
    assign i_add88_conv2d1x164_q = i_add88_conv2d1x164_o[32:0];

    // bgTrunc_i_add88_conv2d1x164_sel_x(BITSELECT,288)@6
    assign bgTrunc_i_add88_conv2d1x164_sel_x_b = i_add88_conv2d1x164_q[31:0];

    // i_idxprom89_conv2d1x165_sel_x(BITSELECT,375)@6
    assign i_idxprom89_conv2d1x165_sel_x_b = $unsigned({{32{bgTrunc_i_add88_conv2d1x164_sel_x_b[31]}}, bgTrunc_i_add88_conv2d1x164_sel_x_b[31:0]});

    // i_arrayidx9010_conv2d1x10_narrow_x(BITSELECT,358)@6
    assign i_arrayidx9010_conv2d1x10_narrow_x_b = i_idxprom89_conv2d1x165_sel_x_b[61:0];

    // i_arrayidx9010_conv2d1x10_shift_join_x(BITJOIN,359)@6
    assign i_arrayidx9010_conv2d1x10_shift_join_x_q = {i_arrayidx9010_conv2d1x10_narrow_x_b, i_arrayidx10411_conv2d1x173_vt_const_1_q};

    // valid_fanout_reg19(REG,406)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist50_sync_together202_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer10_conv2d1x166(BLACKBOX,204)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0000t_im_sync_buffer10_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer10_conv2d1x166 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer10_conv2d1x166_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer10_conv2d1x166_vt_select_63(BITSELECT,207)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer10_conv2d1x166_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer10_conv2d1x166_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer10_conv2d1x166_vt_join(BITJOIN,206)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer10_conv2d1x166_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer10_conv2d1x166_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer10_conv2d1x166_vt_const_9_q};

    // i_arrayidx9010_conv2d1x10_add_x(ADD,356)@6
    assign i_arrayidx9010_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer10_conv2d1x166_vt_join_q};
    assign i_arrayidx9010_conv2d1x10_add_x_b = {1'b0, i_arrayidx9010_conv2d1x10_shift_join_x_q};
    assign i_arrayidx9010_conv2d1x10_add_x_o = $unsigned(i_arrayidx9010_conv2d1x10_add_x_a) + $unsigned(i_arrayidx9010_conv2d1x10_add_x_b);
    assign i_arrayidx9010_conv2d1x10_add_x_q = i_arrayidx9010_conv2d1x10_add_x_o[64:0];

    // i_arrayidx9010_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,361)@6
    assign i_arrayidx9010_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx9010_conv2d1x10_add_x_q[63:0];

    // i_arrayidx9010_conv2d1x167_vt_select_63(BITSELECT,140)@6
    assign i_arrayidx9010_conv2d1x167_vt_select_63_b = i_arrayidx9010_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx9010_conv2d1x167_vt_join(BITJOIN,139)@6
    assign i_arrayidx9010_conv2d1x167_vt_join_q = {i_arrayidx9010_conv2d1x167_vt_select_63_b, i_arrayidx10411_conv2d1x173_vt_const_1_q};

    // i_add71_conv2d1x156_join(BITJOIN,464)@2
    assign i_add71_conv2d1x156_join_q = {i_add113_conv2d1x174_BitSelect_for_a_b, VCC_q, GND_q, GND_q};

    // i_add71_conv2d1x156_vt_select_31(BITSELECT,103)@2
    assign i_add71_conv2d1x156_vt_select_31_b = i_add71_conv2d1x156_join_q[31:3];

    // i_add71_conv2d1x156_vt_const_2(CONSTANT,101)
    assign i_add71_conv2d1x156_vt_const_2_q = $unsigned(3'b100);

    // i_add71_conv2d1x156_vt_join(BITJOIN,102)@2
    assign i_add71_conv2d1x156_vt_join_q = {i_add71_conv2d1x156_vt_select_31_b, i_add71_conv2d1x156_vt_const_2_q};

    // i_mul73_conv2d1x157_bs2_merged_bit_select(BITSELECT,648)@2
    assign i_mul73_conv2d1x157_bs2_merged_bit_select_b = i_add71_conv2d1x156_vt_join_q[31:18];
    assign i_mul73_conv2d1x157_bs2_merged_bit_select_c = i_add71_conv2d1x156_vt_join_q[17:0];

    // i_mul73_conv2d1x157_ma3_cma(CHAINMULTADD,642)@2 + 3
    assign i_mul73_conv2d1x157_ma3_cma_reset = ~ (resetn);
    assign i_mul73_conv2d1x157_ma3_cma_ena0 = 1'b1;
    assign i_mul73_conv2d1x157_ma3_cma_ena1 = i_mul73_conv2d1x157_ma3_cma_ena0;
    assign i_mul73_conv2d1x157_ma3_cma_ena2 = i_mul73_conv2d1x157_ma3_cma_ena0;

    assign i_mul73_conv2d1x157_ma3_cma_a0 = i_mul101_conv2d1x169_bs1_merged_bit_select_b;
    assign i_mul73_conv2d1x157_ma3_cma_c0 = i_mul73_conv2d1x157_bs2_merged_bit_select_c;
    assign i_mul73_conv2d1x157_ma3_cma_a1 = i_mul73_conv2d1x157_bs2_merged_bit_select_b;
    assign i_mul73_conv2d1x157_ma3_cma_c1 = i_mul101_conv2d1x169_bs1_merged_bit_select_c;
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
    ) i_mul73_conv2d1x157_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul73_conv2d1x157_ma3_cma_ena2, i_mul73_conv2d1x157_ma3_cma_ena1, i_mul73_conv2d1x157_ma3_cma_ena0 }),
        .aclr({ i_mul73_conv2d1x157_ma3_cma_reset, i_mul73_conv2d1x157_ma3_cma_reset }),
        .ay(i_mul73_conv2d1x157_ma3_cma_a1),
        .by(i_mul73_conv2d1x157_ma3_cma_a0),
        .ax(i_mul73_conv2d1x157_ma3_cma_c1),
        .bx(i_mul73_conv2d1x157_ma3_cma_c0),
        .resulta(i_mul73_conv2d1x157_ma3_cma_s0),
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
    i_mul73_conv2d1x157_ma3_cma_delay ( .xin(i_mul73_conv2d1x157_ma3_cma_s0), .xout(i_mul73_conv2d1x157_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul73_conv2d1x157_ma3_cma_q = $unsigned(i_mul73_conv2d1x157_ma3_cma_qq[32:0]);

    // i_mul73_conv2d1x157_sums_align_1(BITSHIFT,573)@5
    assign i_mul73_conv2d1x157_sums_align_1_qint = { i_mul73_conv2d1x157_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul73_conv2d1x157_sums_align_1_q = i_mul73_conv2d1x157_sums_align_1_qint[50:0];

    // i_mul73_conv2d1x157_im0_cma(CHAINMULTADD,632)@2 + 3
    assign i_mul73_conv2d1x157_im0_cma_reset = ~ (resetn);
    assign i_mul73_conv2d1x157_im0_cma_ena0 = 1'b1;
    assign i_mul73_conv2d1x157_im0_cma_ena1 = i_mul73_conv2d1x157_im0_cma_ena0;
    assign i_mul73_conv2d1x157_im0_cma_ena2 = i_mul73_conv2d1x157_im0_cma_ena0;

    assign i_mul73_conv2d1x157_im0_cma_a0 = i_mul101_conv2d1x169_bs1_merged_bit_select_b;
    assign i_mul73_conv2d1x157_im0_cma_c0 = i_mul73_conv2d1x157_bs2_merged_bit_select_b;
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
    ) i_mul73_conv2d1x157_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul73_conv2d1x157_im0_cma_ena2, i_mul73_conv2d1x157_im0_cma_ena1, i_mul73_conv2d1x157_im0_cma_ena0 }),
        .aclr({ i_mul73_conv2d1x157_im0_cma_reset, i_mul73_conv2d1x157_im0_cma_reset }),
        .ay(i_mul73_conv2d1x157_im0_cma_a0),
        .ax(i_mul73_conv2d1x157_im0_cma_c0),
        .resulta(i_mul73_conv2d1x157_im0_cma_s0),
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
    i_mul73_conv2d1x157_im0_cma_delay ( .xin(i_mul73_conv2d1x157_im0_cma_s0), .xout(i_mul73_conv2d1x157_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul73_conv2d1x157_im0_cma_q = $unsigned(i_mul73_conv2d1x157_im0_cma_qq[27:0]);

    // i_mul73_conv2d1x157_im8_cma(CHAINMULTADD,633)@2 + 3
    assign i_mul73_conv2d1x157_im8_cma_reset = ~ (resetn);
    assign i_mul73_conv2d1x157_im8_cma_ena0 = 1'b1;
    assign i_mul73_conv2d1x157_im8_cma_ena1 = i_mul73_conv2d1x157_im8_cma_ena0;
    assign i_mul73_conv2d1x157_im8_cma_ena2 = i_mul73_conv2d1x157_im8_cma_ena0;

    assign i_mul73_conv2d1x157_im8_cma_a0 = i_mul101_conv2d1x169_bs1_merged_bit_select_c;
    assign i_mul73_conv2d1x157_im8_cma_c0 = i_mul73_conv2d1x157_bs2_merged_bit_select_c;
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
    ) i_mul73_conv2d1x157_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul73_conv2d1x157_im8_cma_ena2, i_mul73_conv2d1x157_im8_cma_ena1, i_mul73_conv2d1x157_im8_cma_ena0 }),
        .aclr({ i_mul73_conv2d1x157_im8_cma_reset, i_mul73_conv2d1x157_im8_cma_reset }),
        .ay(i_mul73_conv2d1x157_im8_cma_a0),
        .ax(i_mul73_conv2d1x157_im8_cma_c0),
        .resulta(i_mul73_conv2d1x157_im8_cma_s0),
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
    i_mul73_conv2d1x157_im8_cma_delay ( .xin(i_mul73_conv2d1x157_im8_cma_s0), .xout(i_mul73_conv2d1x157_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul73_conv2d1x157_im8_cma_q = $unsigned(i_mul73_conv2d1x157_im8_cma_qq[35:0]);

    // i_mul73_conv2d1x157_sums_join_0(BITJOIN,572)@5
    assign i_mul73_conv2d1x157_sums_join_0_q = {i_mul73_conv2d1x157_im0_cma_q, i_mul73_conv2d1x157_im8_cma_q};

    // i_mul73_conv2d1x157_sums_result_add_0_0(ADD,575)@5
    assign i_mul73_conv2d1x157_sums_result_add_0_0_a = {1'b0, i_mul73_conv2d1x157_sums_join_0_q};
    assign i_mul73_conv2d1x157_sums_result_add_0_0_b = {14'b00000000000000, i_mul73_conv2d1x157_sums_align_1_q};
    assign i_mul73_conv2d1x157_sums_result_add_0_0_o = $unsigned(i_mul73_conv2d1x157_sums_result_add_0_0_a) + $unsigned(i_mul73_conv2d1x157_sums_result_add_0_0_b);
    assign i_mul73_conv2d1x157_sums_result_add_0_0_q = i_mul73_conv2d1x157_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul73_conv2d1x157_sel_x(BITSELECT,297)@5
    assign bgTrunc_i_mul73_conv2d1x157_sel_x_in = i_mul73_conv2d1x157_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul73_conv2d1x157_sel_x_b = bgTrunc_i_mul73_conv2d1x157_sel_x_in[31:0];

    // i_mul73_conv2d1x157_vt_select_31(BITSELECT,259)@5
    assign i_mul73_conv2d1x157_vt_select_31_b = bgTrunc_i_mul73_conv2d1x157_sel_x_b[31:2];

    // redist56_i_mul73_conv2d1x157_vt_select_31_b_1(DELAY,708)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_i_mul73_conv2d1x157_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist56_i_mul73_conv2d1x157_vt_select_31_b_1_q <= $unsigned(i_mul73_conv2d1x157_vt_select_31_b);
        end
    end

    // i_mul73_conv2d1x157_vt_join(BITJOIN,258)@6
    assign i_mul73_conv2d1x157_vt_join_q = {redist56_i_mul73_conv2d1x157_vt_select_31_b_1_q, i_arrayidx10411_conv2d1x173_vt_const_1_q};

    // i_add74_conv2d1x158(ADD,104)@6
    assign i_add74_conv2d1x158_a = {1'b0, i_mul73_conv2d1x157_vt_join_q};
    assign i_add74_conv2d1x158_b = {1'b0, redist62_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out_4_outputreg0_q};
    assign i_add74_conv2d1x158_o = $unsigned(i_add74_conv2d1x158_a) + $unsigned(i_add74_conv2d1x158_b);
    assign i_add74_conv2d1x158_q = i_add74_conv2d1x158_o[32:0];

    // bgTrunc_i_add74_conv2d1x158_sel_x(BITSELECT,287)@6
    assign bgTrunc_i_add74_conv2d1x158_sel_x_b = i_add74_conv2d1x158_q[31:0];

    // i_idxprom75_conv2d1x159_sel_x(BITSELECT,374)@6
    assign i_idxprom75_conv2d1x159_sel_x_b = $unsigned({{32{bgTrunc_i_add74_conv2d1x158_sel_x_b[31]}}, bgTrunc_i_add74_conv2d1x158_sel_x_b[31:0]});

    // i_arrayidx769_conv2d1x10_narrow_x(BITSELECT,352)@6
    assign i_arrayidx769_conv2d1x10_narrow_x_b = i_idxprom75_conv2d1x159_sel_x_b[61:0];

    // i_arrayidx769_conv2d1x10_shift_join_x(BITJOIN,353)@6
    assign i_arrayidx769_conv2d1x10_shift_join_x_q = {i_arrayidx769_conv2d1x10_narrow_x_b, i_arrayidx10411_conv2d1x173_vt_const_1_q};

    // valid_fanout_reg18(REG,405)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist50_sync_together202_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer9_conv2d1x160(BLACKBOX,228)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0000ut_im_sync_buffer9_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer9_conv2d1x160 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer9_conv2d1x160_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer9_conv2d1x160_vt_select_63(BITSELECT,231)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer9_conv2d1x160_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer9_conv2d1x160_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer9_conv2d1x160_vt_join(BITJOIN,230)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer9_conv2d1x160_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer9_conv2d1x160_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer10_conv2d1x166_vt_const_9_q};

    // i_arrayidx769_conv2d1x10_add_x(ADD,350)@6
    assign i_arrayidx769_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer9_conv2d1x160_vt_join_q};
    assign i_arrayidx769_conv2d1x10_add_x_b = {1'b0, i_arrayidx769_conv2d1x10_shift_join_x_q};
    assign i_arrayidx769_conv2d1x10_add_x_o = $unsigned(i_arrayidx769_conv2d1x10_add_x_a) + $unsigned(i_arrayidx769_conv2d1x10_add_x_b);
    assign i_arrayidx769_conv2d1x10_add_x_q = i_arrayidx769_conv2d1x10_add_x_o[64:0];

    // i_arrayidx769_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,355)@6
    assign i_arrayidx769_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx769_conv2d1x10_add_x_q[63:0];

    // i_arrayidx769_conv2d1x161_vt_select_63(BITSELECT,137)@6
    assign i_arrayidx769_conv2d1x161_vt_select_63_b = i_arrayidx769_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx769_conv2d1x161_vt_join(BITJOIN,136)@6
    assign i_arrayidx769_conv2d1x161_vt_join_q = {i_arrayidx769_conv2d1x161_vt_select_63_b, i_arrayidx10411_conv2d1x173_vt_const_1_q};

    // i_add57_conv2d1x150_join(BITJOIN,462)@2
    assign i_add57_conv2d1x150_join_q = {i_add113_conv2d1x174_BitSelect_for_a_b, GND_q, VCC_q, VCC_q};

    // i_add57_conv2d1x150_vt_select_31(BITSELECT,98)@2
    assign i_add57_conv2d1x150_vt_select_31_b = i_add57_conv2d1x150_join_q[31:3];

    // i_add57_conv2d1x150_vt_const_2(CONSTANT,96)
    assign i_add57_conv2d1x150_vt_const_2_q = $unsigned(3'b011);

    // i_add57_conv2d1x150_vt_join(BITJOIN,97)@2
    assign i_add57_conv2d1x150_vt_join_q = {i_add57_conv2d1x150_vt_select_31_b, i_add57_conv2d1x150_vt_const_2_q};

    // i_mul59_conv2d1x151_bs2_merged_bit_select(BITSELECT,647)@2
    assign i_mul59_conv2d1x151_bs2_merged_bit_select_b = i_add57_conv2d1x150_vt_join_q[31:18];
    assign i_mul59_conv2d1x151_bs2_merged_bit_select_c = i_add57_conv2d1x150_vt_join_q[17:0];

    // i_mul59_conv2d1x151_ma3_cma(CHAINMULTADD,641)@2 + 3
    assign i_mul59_conv2d1x151_ma3_cma_reset = ~ (resetn);
    assign i_mul59_conv2d1x151_ma3_cma_ena0 = 1'b1;
    assign i_mul59_conv2d1x151_ma3_cma_ena1 = i_mul59_conv2d1x151_ma3_cma_ena0;
    assign i_mul59_conv2d1x151_ma3_cma_ena2 = i_mul59_conv2d1x151_ma3_cma_ena0;

    assign i_mul59_conv2d1x151_ma3_cma_a0 = i_mul101_conv2d1x169_bs1_merged_bit_select_b;
    assign i_mul59_conv2d1x151_ma3_cma_c0 = i_mul59_conv2d1x151_bs2_merged_bit_select_c;
    assign i_mul59_conv2d1x151_ma3_cma_a1 = i_mul59_conv2d1x151_bs2_merged_bit_select_b;
    assign i_mul59_conv2d1x151_ma3_cma_c1 = i_mul101_conv2d1x169_bs1_merged_bit_select_c;
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

    // i_mul59_conv2d1x151_sums_align_1(BITSHIFT,558)@5
    assign i_mul59_conv2d1x151_sums_align_1_qint = { i_mul59_conv2d1x151_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul59_conv2d1x151_sums_align_1_q = i_mul59_conv2d1x151_sums_align_1_qint[50:0];

    // i_mul59_conv2d1x151_im0_cma(CHAINMULTADD,630)@2 + 3
    assign i_mul59_conv2d1x151_im0_cma_reset = ~ (resetn);
    assign i_mul59_conv2d1x151_im0_cma_ena0 = 1'b1;
    assign i_mul59_conv2d1x151_im0_cma_ena1 = i_mul59_conv2d1x151_im0_cma_ena0;
    assign i_mul59_conv2d1x151_im0_cma_ena2 = i_mul59_conv2d1x151_im0_cma_ena0;

    assign i_mul59_conv2d1x151_im0_cma_a0 = i_mul101_conv2d1x169_bs1_merged_bit_select_b;
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

    // i_mul59_conv2d1x151_im8_cma(CHAINMULTADD,631)@2 + 3
    assign i_mul59_conv2d1x151_im8_cma_reset = ~ (resetn);
    assign i_mul59_conv2d1x151_im8_cma_ena0 = 1'b1;
    assign i_mul59_conv2d1x151_im8_cma_ena1 = i_mul59_conv2d1x151_im8_cma_ena0;
    assign i_mul59_conv2d1x151_im8_cma_ena2 = i_mul59_conv2d1x151_im8_cma_ena0;

    assign i_mul59_conv2d1x151_im8_cma_a0 = i_mul101_conv2d1x169_bs1_merged_bit_select_c;
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

    // i_mul59_conv2d1x151_sums_join_0(BITJOIN,557)@5
    assign i_mul59_conv2d1x151_sums_join_0_q = {i_mul59_conv2d1x151_im0_cma_q, i_mul59_conv2d1x151_im8_cma_q};

    // i_mul59_conv2d1x151_sums_result_add_0_0(ADD,560)@5
    assign i_mul59_conv2d1x151_sums_result_add_0_0_a = {1'b0, i_mul59_conv2d1x151_sums_join_0_q};
    assign i_mul59_conv2d1x151_sums_result_add_0_0_b = {14'b00000000000000, i_mul59_conv2d1x151_sums_align_1_q};
    assign i_mul59_conv2d1x151_sums_result_add_0_0_o = $unsigned(i_mul59_conv2d1x151_sums_result_add_0_0_a) + $unsigned(i_mul59_conv2d1x151_sums_result_add_0_0_b);
    assign i_mul59_conv2d1x151_sums_result_add_0_0_q = i_mul59_conv2d1x151_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul59_conv2d1x151_sel_x(BITSELECT,296)@5
    assign bgTrunc_i_mul59_conv2d1x151_sel_x_in = i_mul59_conv2d1x151_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul59_conv2d1x151_sel_x_b = bgTrunc_i_mul59_conv2d1x151_sel_x_in[31:0];

    // redist52_bgTrunc_i_mul59_conv2d1x151_sel_x_b_1(DELAY,704)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_bgTrunc_i_mul59_conv2d1x151_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist52_bgTrunc_i_mul59_conv2d1x151_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul59_conv2d1x151_sel_x_b);
        end
    end

    // i_add60_conv2d1x152(ADD,99)@6
    assign i_add60_conv2d1x152_a = {1'b0, redist52_bgTrunc_i_mul59_conv2d1x151_sel_x_b_1_q};
    assign i_add60_conv2d1x152_b = {1'b0, redist62_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out_4_outputreg0_q};
    assign i_add60_conv2d1x152_o = $unsigned(i_add60_conv2d1x152_a) + $unsigned(i_add60_conv2d1x152_b);
    assign i_add60_conv2d1x152_q = i_add60_conv2d1x152_o[32:0];

    // bgTrunc_i_add60_conv2d1x152_sel_x(BITSELECT,286)@6
    assign bgTrunc_i_add60_conv2d1x152_sel_x_b = i_add60_conv2d1x152_q[31:0];

    // i_idxprom61_conv2d1x153_sel_x(BITSELECT,373)@6
    assign i_idxprom61_conv2d1x153_sel_x_b = $unsigned({{32{bgTrunc_i_add60_conv2d1x152_sel_x_b[31]}}, bgTrunc_i_add60_conv2d1x152_sel_x_b[31:0]});

    // i_arrayidx628_conv2d1x10_narrow_x(BITSELECT,346)@6
    assign i_arrayidx628_conv2d1x10_narrow_x_b = i_idxprom61_conv2d1x153_sel_x_b[61:0];

    // i_arrayidx628_conv2d1x10_shift_join_x(BITJOIN,347)@6
    assign i_arrayidx628_conv2d1x10_shift_join_x_q = {i_arrayidx628_conv2d1x10_narrow_x_b, i_arrayidx10411_conv2d1x173_vt_const_1_q};

    // valid_fanout_reg17(REG,404)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist50_sync_together202_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x154(BLACKBOX,224)@0
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

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x154_vt_select_63(BITSELECT,227)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x154_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x154_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x154_vt_join(BITJOIN,226)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x154_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x154_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer10_conv2d1x166_vt_const_9_q};

    // i_arrayidx628_conv2d1x10_add_x(ADD,344)@6
    assign i_arrayidx628_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x154_vt_join_q};
    assign i_arrayidx628_conv2d1x10_add_x_b = {1'b0, i_arrayidx628_conv2d1x10_shift_join_x_q};
    assign i_arrayidx628_conv2d1x10_add_x_o = $unsigned(i_arrayidx628_conv2d1x10_add_x_a) + $unsigned(i_arrayidx628_conv2d1x10_add_x_b);
    assign i_arrayidx628_conv2d1x10_add_x_q = i_arrayidx628_conv2d1x10_add_x_o[64:0];

    // i_arrayidx628_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,349)@6
    assign i_arrayidx628_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx628_conv2d1x10_add_x_q[63:0];

    // i_arrayidx628_conv2d1x155_vt_select_63(BITSELECT,134)@6
    assign i_arrayidx628_conv2d1x155_vt_select_63_b = i_arrayidx628_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx628_conv2d1x155_vt_join(BITJOIN,133)@6
    assign i_arrayidx628_conv2d1x155_vt_join_q = {i_arrayidx628_conv2d1x155_vt_select_63_b, i_arrayidx10411_conv2d1x173_vt_const_1_q};

    // i_add43_conv2d1x144_join(BITJOIN,460)@2
    assign i_add43_conv2d1x144_join_q = {i_add113_conv2d1x174_BitSelect_for_a_b, GND_q, VCC_q, GND_q};

    // i_add43_conv2d1x144_vt_select_31(BITSELECT,93)@2
    assign i_add43_conv2d1x144_vt_select_31_b = i_add43_conv2d1x144_join_q[31:3];

    // i_add43_conv2d1x144_vt_const_2(CONSTANT,91)
    assign i_add43_conv2d1x144_vt_const_2_q = $unsigned(3'b010);

    // i_add43_conv2d1x144_vt_join(BITJOIN,92)@2
    assign i_add43_conv2d1x144_vt_join_q = {i_add43_conv2d1x144_vt_select_31_b, i_add43_conv2d1x144_vt_const_2_q};

    // i_mul45_conv2d1x145_bs2_merged_bit_select(BITSELECT,646)@2
    assign i_mul45_conv2d1x145_bs2_merged_bit_select_b = i_add43_conv2d1x144_vt_join_q[31:18];
    assign i_mul45_conv2d1x145_bs2_merged_bit_select_c = i_add43_conv2d1x144_vt_join_q[17:0];

    // i_mul45_conv2d1x145_ma3_cma(CHAINMULTADD,640)@2 + 3
    assign i_mul45_conv2d1x145_ma3_cma_reset = ~ (resetn);
    assign i_mul45_conv2d1x145_ma3_cma_ena0 = 1'b1;
    assign i_mul45_conv2d1x145_ma3_cma_ena1 = i_mul45_conv2d1x145_ma3_cma_ena0;
    assign i_mul45_conv2d1x145_ma3_cma_ena2 = i_mul45_conv2d1x145_ma3_cma_ena0;

    assign i_mul45_conv2d1x145_ma3_cma_a0 = i_mul101_conv2d1x169_bs1_merged_bit_select_b;
    assign i_mul45_conv2d1x145_ma3_cma_c0 = i_mul45_conv2d1x145_bs2_merged_bit_select_c;
    assign i_mul45_conv2d1x145_ma3_cma_a1 = i_mul45_conv2d1x145_bs2_merged_bit_select_b;
    assign i_mul45_conv2d1x145_ma3_cma_c1 = i_mul101_conv2d1x169_bs1_merged_bit_select_c;
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

    // i_mul45_conv2d1x145_sums_align_1(BITSHIFT,543)@5
    assign i_mul45_conv2d1x145_sums_align_1_qint = { i_mul45_conv2d1x145_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul45_conv2d1x145_sums_align_1_q = i_mul45_conv2d1x145_sums_align_1_qint[50:0];

    // i_mul45_conv2d1x145_im0_cma(CHAINMULTADD,628)@2 + 3
    assign i_mul45_conv2d1x145_im0_cma_reset = ~ (resetn);
    assign i_mul45_conv2d1x145_im0_cma_ena0 = 1'b1;
    assign i_mul45_conv2d1x145_im0_cma_ena1 = i_mul45_conv2d1x145_im0_cma_ena0;
    assign i_mul45_conv2d1x145_im0_cma_ena2 = i_mul45_conv2d1x145_im0_cma_ena0;

    assign i_mul45_conv2d1x145_im0_cma_a0 = i_mul101_conv2d1x169_bs1_merged_bit_select_b;
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

    // i_mul45_conv2d1x145_im8_cma(CHAINMULTADD,629)@2 + 3
    assign i_mul45_conv2d1x145_im8_cma_reset = ~ (resetn);
    assign i_mul45_conv2d1x145_im8_cma_ena0 = 1'b1;
    assign i_mul45_conv2d1x145_im8_cma_ena1 = i_mul45_conv2d1x145_im8_cma_ena0;
    assign i_mul45_conv2d1x145_im8_cma_ena2 = i_mul45_conv2d1x145_im8_cma_ena0;

    assign i_mul45_conv2d1x145_im8_cma_a0 = i_mul101_conv2d1x169_bs1_merged_bit_select_c;
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

    // i_mul45_conv2d1x145_sums_join_0(BITJOIN,542)@5
    assign i_mul45_conv2d1x145_sums_join_0_q = {i_mul45_conv2d1x145_im0_cma_q, i_mul45_conv2d1x145_im8_cma_q};

    // i_mul45_conv2d1x145_sums_result_add_0_0(ADD,545)@5
    assign i_mul45_conv2d1x145_sums_result_add_0_0_a = {1'b0, i_mul45_conv2d1x145_sums_join_0_q};
    assign i_mul45_conv2d1x145_sums_result_add_0_0_b = {14'b00000000000000, i_mul45_conv2d1x145_sums_align_1_q};
    assign i_mul45_conv2d1x145_sums_result_add_0_0_o = $unsigned(i_mul45_conv2d1x145_sums_result_add_0_0_a) + $unsigned(i_mul45_conv2d1x145_sums_result_add_0_0_b);
    assign i_mul45_conv2d1x145_sums_result_add_0_0_q = i_mul45_conv2d1x145_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul45_conv2d1x145_sel_x(BITSELECT,295)@5
    assign bgTrunc_i_mul45_conv2d1x145_sel_x_in = i_mul45_conv2d1x145_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul45_conv2d1x145_sel_x_b = bgTrunc_i_mul45_conv2d1x145_sel_x_in[31:0];

    // i_mul45_conv2d1x145_vt_select_31(BITSELECT,254)@5
    assign i_mul45_conv2d1x145_vt_select_31_b = bgTrunc_i_mul45_conv2d1x145_sel_x_b[31:1];

    // redist57_i_mul45_conv2d1x145_vt_select_31_b_1(DELAY,709)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist57_i_mul45_conv2d1x145_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist57_i_mul45_conv2d1x145_vt_select_31_b_1_q <= $unsigned(i_mul45_conv2d1x145_vt_select_31_b);
        end
    end

    // i_mul45_conv2d1x145_vt_join(BITJOIN,253)@6
    assign i_mul45_conv2d1x145_vt_join_q = {redist57_i_mul45_conv2d1x145_vt_select_31_b_1_q, GND_q};

    // i_add46_conv2d1x146(ADD,94)@6
    assign i_add46_conv2d1x146_a = {1'b0, i_mul45_conv2d1x145_vt_join_q};
    assign i_add46_conv2d1x146_b = {1'b0, redist62_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out_4_outputreg0_q};
    assign i_add46_conv2d1x146_o = $unsigned(i_add46_conv2d1x146_a) + $unsigned(i_add46_conv2d1x146_b);
    assign i_add46_conv2d1x146_q = i_add46_conv2d1x146_o[32:0];

    // bgTrunc_i_add46_conv2d1x146_sel_x(BITSELECT,285)@6
    assign bgTrunc_i_add46_conv2d1x146_sel_x_b = i_add46_conv2d1x146_q[31:0];

    // i_idxprom47_conv2d1x147_sel_x(BITSELECT,372)@6
    assign i_idxprom47_conv2d1x147_sel_x_b = $unsigned({{32{bgTrunc_i_add46_conv2d1x146_sel_x_b[31]}}, bgTrunc_i_add46_conv2d1x146_sel_x_b[31:0]});

    // i_arrayidx487_conv2d1x10_narrow_x(BITSELECT,340)@6
    assign i_arrayidx487_conv2d1x10_narrow_x_b = i_idxprom47_conv2d1x147_sel_x_b[61:0];

    // i_arrayidx487_conv2d1x10_shift_join_x(BITJOIN,341)@6
    assign i_arrayidx487_conv2d1x10_shift_join_x_q = {i_arrayidx487_conv2d1x10_narrow_x_b, i_arrayidx10411_conv2d1x173_vt_const_1_q};

    // valid_fanout_reg16(REG,403)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist50_sync_together202_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x148(BLACKBOX,220)@0
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

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x148_vt_select_63(BITSELECT,223)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x148_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x148_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x148_vt_join(BITJOIN,222)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x148_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x148_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer10_conv2d1x166_vt_const_9_q};

    // i_arrayidx487_conv2d1x10_add_x(ADD,338)@6
    assign i_arrayidx487_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x148_vt_join_q};
    assign i_arrayidx487_conv2d1x10_add_x_b = {1'b0, i_arrayidx487_conv2d1x10_shift_join_x_q};
    assign i_arrayidx487_conv2d1x10_add_x_o = $unsigned(i_arrayidx487_conv2d1x10_add_x_a) + $unsigned(i_arrayidx487_conv2d1x10_add_x_b);
    assign i_arrayidx487_conv2d1x10_add_x_q = i_arrayidx487_conv2d1x10_add_x_o[64:0];

    // i_arrayidx487_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,343)@6
    assign i_arrayidx487_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx487_conv2d1x10_add_x_q[63:0];

    // i_arrayidx487_conv2d1x149_vt_select_63(BITSELECT,131)@6
    assign i_arrayidx487_conv2d1x149_vt_select_63_b = i_arrayidx487_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx487_conv2d1x149_vt_join(BITJOIN,130)@6
    assign i_arrayidx487_conv2d1x149_vt_join_q = {i_arrayidx487_conv2d1x149_vt_select_63_b, i_arrayidx10411_conv2d1x173_vt_const_1_q};

    // i_add29_conv2d1x138_join(BITJOIN,458)@2
    assign i_add29_conv2d1x138_join_q = {i_add113_conv2d1x174_BitSelect_for_a_b, GND_q, GND_q, VCC_q};

    // i_add29_conv2d1x138_vt_select_31(BITSELECT,88)@2
    assign i_add29_conv2d1x138_vt_select_31_b = i_add29_conv2d1x138_join_q[31:3];

    // i_add29_conv2d1x138_vt_const_2(CONSTANT,86)
    assign i_add29_conv2d1x138_vt_const_2_q = $unsigned(3'b001);

    // i_add29_conv2d1x138_vt_join(BITJOIN,87)@2
    assign i_add29_conv2d1x138_vt_join_q = {i_add29_conv2d1x138_vt_select_31_b, i_add29_conv2d1x138_vt_const_2_q};

    // i_mul31_conv2d1x139_bs2_merged_bit_select(BITSELECT,645)@2
    assign i_mul31_conv2d1x139_bs2_merged_bit_select_b = i_add29_conv2d1x138_vt_join_q[31:18];
    assign i_mul31_conv2d1x139_bs2_merged_bit_select_c = i_add29_conv2d1x138_vt_join_q[17:0];

    // i_mul31_conv2d1x139_ma3_cma(CHAINMULTADD,639)@2 + 3
    assign i_mul31_conv2d1x139_ma3_cma_reset = ~ (resetn);
    assign i_mul31_conv2d1x139_ma3_cma_ena0 = 1'b1;
    assign i_mul31_conv2d1x139_ma3_cma_ena1 = i_mul31_conv2d1x139_ma3_cma_ena0;
    assign i_mul31_conv2d1x139_ma3_cma_ena2 = i_mul31_conv2d1x139_ma3_cma_ena0;

    assign i_mul31_conv2d1x139_ma3_cma_a0 = i_mul101_conv2d1x169_bs1_merged_bit_select_b;
    assign i_mul31_conv2d1x139_ma3_cma_c0 = i_mul31_conv2d1x139_bs2_merged_bit_select_c;
    assign i_mul31_conv2d1x139_ma3_cma_a1 = i_mul31_conv2d1x139_bs2_merged_bit_select_b;
    assign i_mul31_conv2d1x139_ma3_cma_c1 = i_mul101_conv2d1x169_bs1_merged_bit_select_c;
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

    // i_mul31_conv2d1x139_sums_align_1(BITSHIFT,528)@5
    assign i_mul31_conv2d1x139_sums_align_1_qint = { i_mul31_conv2d1x139_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul31_conv2d1x139_sums_align_1_q = i_mul31_conv2d1x139_sums_align_1_qint[50:0];

    // i_mul31_conv2d1x139_im0_cma(CHAINMULTADD,626)@2 + 3
    assign i_mul31_conv2d1x139_im0_cma_reset = ~ (resetn);
    assign i_mul31_conv2d1x139_im0_cma_ena0 = 1'b1;
    assign i_mul31_conv2d1x139_im0_cma_ena1 = i_mul31_conv2d1x139_im0_cma_ena0;
    assign i_mul31_conv2d1x139_im0_cma_ena2 = i_mul31_conv2d1x139_im0_cma_ena0;

    assign i_mul31_conv2d1x139_im0_cma_a0 = i_mul101_conv2d1x169_bs1_merged_bit_select_b;
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

    // i_mul31_conv2d1x139_im8_cma(CHAINMULTADD,627)@2 + 3
    assign i_mul31_conv2d1x139_im8_cma_reset = ~ (resetn);
    assign i_mul31_conv2d1x139_im8_cma_ena0 = 1'b1;
    assign i_mul31_conv2d1x139_im8_cma_ena1 = i_mul31_conv2d1x139_im8_cma_ena0;
    assign i_mul31_conv2d1x139_im8_cma_ena2 = i_mul31_conv2d1x139_im8_cma_ena0;

    assign i_mul31_conv2d1x139_im8_cma_a0 = i_mul101_conv2d1x169_bs1_merged_bit_select_c;
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

    // i_mul31_conv2d1x139_sums_join_0(BITJOIN,527)@5
    assign i_mul31_conv2d1x139_sums_join_0_q = {i_mul31_conv2d1x139_im0_cma_q, i_mul31_conv2d1x139_im8_cma_q};

    // i_mul31_conv2d1x139_sums_result_add_0_0(ADD,530)@5
    assign i_mul31_conv2d1x139_sums_result_add_0_0_a = {1'b0, i_mul31_conv2d1x139_sums_join_0_q};
    assign i_mul31_conv2d1x139_sums_result_add_0_0_b = {14'b00000000000000, i_mul31_conv2d1x139_sums_align_1_q};
    assign i_mul31_conv2d1x139_sums_result_add_0_0_o = $unsigned(i_mul31_conv2d1x139_sums_result_add_0_0_a) + $unsigned(i_mul31_conv2d1x139_sums_result_add_0_0_b);
    assign i_mul31_conv2d1x139_sums_result_add_0_0_q = i_mul31_conv2d1x139_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul31_conv2d1x139_sel_x(BITSELECT,294)@5
    assign bgTrunc_i_mul31_conv2d1x139_sel_x_in = i_mul31_conv2d1x139_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul31_conv2d1x139_sel_x_b = bgTrunc_i_mul31_conv2d1x139_sel_x_in[31:0];

    // redist53_bgTrunc_i_mul31_conv2d1x139_sel_x_b_1(DELAY,705)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_bgTrunc_i_mul31_conv2d1x139_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist53_bgTrunc_i_mul31_conv2d1x139_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul31_conv2d1x139_sel_x_b);
        end
    end

    // i_add32_conv2d1x140(ADD,89)@6
    assign i_add32_conv2d1x140_a = {1'b0, redist53_bgTrunc_i_mul31_conv2d1x139_sel_x_b_1_q};
    assign i_add32_conv2d1x140_b = {1'b0, redist62_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out_4_outputreg0_q};
    assign i_add32_conv2d1x140_o = $unsigned(i_add32_conv2d1x140_a) + $unsigned(i_add32_conv2d1x140_b);
    assign i_add32_conv2d1x140_q = i_add32_conv2d1x140_o[32:0];

    // bgTrunc_i_add32_conv2d1x140_sel_x(BITSELECT,284)@6
    assign bgTrunc_i_add32_conv2d1x140_sel_x_b = i_add32_conv2d1x140_q[31:0];

    // i_idxprom33_conv2d1x141_sel_x(BITSELECT,371)@6
    assign i_idxprom33_conv2d1x141_sel_x_b = $unsigned({{32{bgTrunc_i_add32_conv2d1x140_sel_x_b[31]}}, bgTrunc_i_add32_conv2d1x140_sel_x_b[31:0]});

    // i_arrayidx346_conv2d1x10_narrow_x(BITSELECT,334)@6
    assign i_arrayidx346_conv2d1x10_narrow_x_b = i_idxprom33_conv2d1x141_sel_x_b[61:0];

    // i_arrayidx346_conv2d1x10_shift_join_x(BITJOIN,335)@6
    assign i_arrayidx346_conv2d1x10_shift_join_x_q = {i_arrayidx346_conv2d1x10_narrow_x_b, i_arrayidx10411_conv2d1x173_vt_const_1_q};

    // valid_fanout_reg15(REG,402)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist50_sync_together202_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142(BLACKBOX,216)@0
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

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_vt_select_63(BITSELECT,219)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_vt_join(BITJOIN,218)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer10_conv2d1x166_vt_const_9_q};

    // i_arrayidx346_conv2d1x10_add_x(ADD,332)@6
    assign i_arrayidx346_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x142_vt_join_q};
    assign i_arrayidx346_conv2d1x10_add_x_b = {1'b0, i_arrayidx346_conv2d1x10_shift_join_x_q};
    assign i_arrayidx346_conv2d1x10_add_x_o = $unsigned(i_arrayidx346_conv2d1x10_add_x_a) + $unsigned(i_arrayidx346_conv2d1x10_add_x_b);
    assign i_arrayidx346_conv2d1x10_add_x_q = i_arrayidx346_conv2d1x10_add_x_o[64:0];

    // i_arrayidx346_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,337)@6
    assign i_arrayidx346_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx346_conv2d1x10_add_x_q[63:0];

    // i_arrayidx346_conv2d1x143_vt_select_63(BITSELECT,128)@6
    assign i_arrayidx346_conv2d1x143_vt_select_63_b = i_arrayidx346_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx346_conv2d1x143_vt_join(BITJOIN,127)@6
    assign i_arrayidx346_conv2d1x143_vt_join_q = {i_arrayidx346_conv2d1x143_vt_select_63_b, i_arrayidx10411_conv2d1x173_vt_const_1_q};

    // valid_fanout_reg12(REG,399)@1 + 1
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

    // valid_fanout_reg13(REG,400)@1 + 1
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

    // i_llvm_fpga_push_i32_mul2164_push70_conv2d1x133(BLACKBOX,200)@2
    // out out_feedback_out_70@20000000
    // out out_feedback_valid_out_70@20000000
    conv2d1x1_i_llvm_fpga_push_i32_mul2164_push70_0 thei_llvm_fpga_push_i32_mul2164_push70_conv2d1x133 (
        .in_data_in(i_llvm_fpga_pop_i32_mul2164_pop70_conv2d1x132_out_data_out),
        .in_feedback_stall_in_70(i_llvm_fpga_pop_i32_mul2164_pop70_conv2d1x132_out_feedback_stall_out_70),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_70(i_llvm_fpga_push_i32_mul2164_push70_conv2d1x133_out_feedback_out_70),
        .out_feedback_valid_out_70(i_llvm_fpga_push_i32_mul2164_push70_conv2d1x133_out_feedback_valid_out_70),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together202_aunroll_x_in_c0_eni45_6_tpl_1(DELAY,659)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together202_aunroll_x_in_c0_eni45_6_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together202_aunroll_x_in_c0_eni45_6_tpl_1_q <= $unsigned(in_c0_eni45_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul2164_pop70_conv2d1x132(BLACKBOX,183)@2
    // out out_feedback_stall_out_70@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_mul2164_pop70_0 thei_llvm_fpga_pop_i32_mul2164_pop70_conv2d1x132 (
        .in_data_in(redist7_sync_together202_aunroll_x_in_c0_eni45_6_tpl_1_q),
        .in_dir(redist0_sync_together202_aunroll_x_in_c0_eni45_1_tpl_1_q),
        .in_feedback_in_70(i_llvm_fpga_push_i32_mul2164_push70_conv2d1x133_out_feedback_out_70),
        .in_feedback_valid_in_70(i_llvm_fpga_push_i32_mul2164_push70_conv2d1x133_out_feedback_valid_out_70),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul2164_pop70_conv2d1x132_out_data_out),
        .out_feedback_stall_out_70(i_llvm_fpga_pop_i32_mul2164_pop70_conv2d1x132_out_feedback_stall_out_70),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add22_conv2d1x134(ADD,84)@2
    assign i_add22_conv2d1x134_a = {1'b0, i_llvm_fpga_pop_i32_k_0100_pop62_conv2d1x120_out_data_out};
    assign i_add22_conv2d1x134_b = {1'b0, i_llvm_fpga_pop_i32_mul2164_pop70_conv2d1x132_out_data_out};
    assign i_add22_conv2d1x134_o = $unsigned(i_add22_conv2d1x134_a) + $unsigned(i_add22_conv2d1x134_b);
    assign i_add22_conv2d1x134_q = i_add22_conv2d1x134_o[32:0];

    // bgTrunc_i_add22_conv2d1x134_sel_x(BITSELECT,283)@2
    assign bgTrunc_i_add22_conv2d1x134_sel_x_b = i_add22_conv2d1x134_q[31:0];

    // redist55_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_inputreg0(DELAY,1025)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_inputreg0_q <= '0;
        end
        else
        begin
            redist55_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_inputreg0_q <= $unsigned(bgTrunc_i_add22_conv2d1x134_sel_x_b);
        end
    end

    // redist55_bgTrunc_i_add22_conv2d1x134_sel_x_b_4(DELAY,707)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_delay_0 <= '0;
            redist55_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_q <= '0;
        end
        else
        begin
            redist55_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_delay_0 <= $unsigned(redist55_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_inputreg0_q);
            redist55_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_q <= redist55_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_delay_0;
        end
    end

    // redist55_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_outputreg0(DELAY,1026)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_outputreg0_q <= '0;
        end
        else
        begin
            redist55_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_outputreg0_q <= $unsigned(redist55_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_q);
        end
    end

    // i_idxprom23_conv2d1x135_sel_x(BITSELECT,370)@6
    assign i_idxprom23_conv2d1x135_sel_x_b = $unsigned({{32{redist55_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_outputreg0_q[31]}}, redist55_bgTrunc_i_add22_conv2d1x134_sel_x_b_4_outputreg0_q[31:0]});

    // i_arrayidx245_conv2d1x10_narrow_x(BITSELECT,328)@6
    assign i_arrayidx245_conv2d1x10_narrow_x_b = i_idxprom23_conv2d1x135_sel_x_b[58:0];

    // i_arrayidx245_conv2d1x10_shift_join_x(BITJOIN,329)@6
    assign i_arrayidx245_conv2d1x10_shift_join_x_q = {i_arrayidx245_conv2d1x10_narrow_x_b, i_arrayidx245_conv2d1x137_vt_const_4_q};

    // valid_fanout_reg14(REG,401)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist50_sync_together202_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024v8f32_filter_weight_sync_buffer_conv2d1x136(BLACKBOX,236)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024v0000weight_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024v8f32_filter_weight_sync_buffer_conv2d1x136 (
        .in_buffer_in(in_filter_weight),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024v8f32_filter_weight_sync_buffer_conv2d1x136_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024v8f32_filter_weight_sync_buffer_conv2d1x136_vt_select_63(BITSELECT,239)@6
    assign i_llvm_fpga_sync_buffer_p1024v8f32_filter_weight_sync_buffer_conv2d1x136_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024v8f32_filter_weight_sync_buffer_conv2d1x136_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024v8f32_filter_weight_sync_buffer_conv2d1x136_vt_join(BITJOIN,238)@6
    assign i_llvm_fpga_sync_buffer_p1024v8f32_filter_weight_sync_buffer_conv2d1x136_vt_join_q = {i_llvm_fpga_sync_buffer_p1024v8f32_filter_weight_sync_buffer_conv2d1x136_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer10_conv2d1x166_vt_const_9_q};

    // i_arrayidx245_conv2d1x10_add_x(ADD,326)@6
    assign i_arrayidx245_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024v8f32_filter_weight_sync_buffer_conv2d1x136_vt_join_q};
    assign i_arrayidx245_conv2d1x10_add_x_b = {1'b0, i_arrayidx245_conv2d1x10_shift_join_x_q};
    assign i_arrayidx245_conv2d1x10_add_x_o = $unsigned(i_arrayidx245_conv2d1x10_add_x_a) + $unsigned(i_arrayidx245_conv2d1x10_add_x_b);
    assign i_arrayidx245_conv2d1x10_add_x_q = i_arrayidx245_conv2d1x10_add_x_o[64:0];

    // i_arrayidx245_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,331)@6
    assign i_arrayidx245_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx245_conv2d1x10_add_x_q[63:0];

    // i_arrayidx245_conv2d1x137_vt_select_63(BITSELECT,125)@6
    assign i_arrayidx245_conv2d1x137_vt_select_63_b = i_arrayidx245_conv2d1x10_dupName_0_trunc_sel_x_b[63:5];

    // i_arrayidx245_conv2d1x137_vt_const_4(CONSTANT,123)
    assign i_arrayidx245_conv2d1x137_vt_const_4_q = $unsigned(5'b00000);

    // i_arrayidx245_conv2d1x137_vt_join(BITJOIN,124)@6
    assign i_arrayidx245_conv2d1x137_vt_join_q = {i_arrayidx245_conv2d1x137_vt_select_63_b, i_arrayidx245_conv2d1x137_vt_const_4_q};

    // redist72_i_first_cleanup_xor_conv2d1x14_q_2(DELAY,724)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist72_i_first_cleanup_xor_conv2d1x14_q_2_delay_0 <= '0;
            redist72_i_first_cleanup_xor_conv2d1x14_q_2_q <= '0;
        end
        else
        begin
            redist72_i_first_cleanup_xor_conv2d1x14_q_2_delay_0 <= $unsigned(i_first_cleanup_xor_conv2d1x14_q);
            redist72_i_first_cleanup_xor_conv2d1x14_q_2_q <= redist72_i_first_cleanup_xor_conv2d1x14_q_2_delay_0;
        end
    end

    // i_first_cleanup_xor_or_conv2d1x131(LOGICAL,147)@6
    assign i_first_cleanup_xor_or_conv2d1x131_q = i_unnamed_conv2d1x117_q | redist72_i_first_cleanup_xor_conv2d1x14_q_2_q;

    // i_mul17_conv2d1x124_bs2(BITSELECT,503)@2
    assign i_mul17_conv2d1x124_bs2_b = i_shl_conv2d1x121_vt_join_q[31:18];

    // i_mul17_conv2d1x124_bs7(BITSELECT,508)@2
    assign i_mul17_conv2d1x124_bs7_in = i_shl_conv2d1x121_vt_join_q[17:0];
    assign i_mul17_conv2d1x124_bs7_b = i_mul17_conv2d1x124_bs7_in[17:0];

    // i_mul17_conv2d1x124_ma3_cma(CHAINMULTADD,638)@2 + 3
    assign i_mul17_conv2d1x124_ma3_cma_reset = ~ (resetn);
    assign i_mul17_conv2d1x124_ma3_cma_ena0 = 1'b1;
    assign i_mul17_conv2d1x124_ma3_cma_ena1 = i_mul17_conv2d1x124_ma3_cma_ena0;
    assign i_mul17_conv2d1x124_ma3_cma_ena2 = i_mul17_conv2d1x124_ma3_cma_ena0;

    assign i_mul17_conv2d1x124_ma3_cma_a0 = i_mul101_conv2d1x169_bs1_merged_bit_select_b;
    assign i_mul17_conv2d1x124_ma3_cma_c0 = i_mul17_conv2d1x124_bs7_b;
    assign i_mul17_conv2d1x124_ma3_cma_a1 = i_mul17_conv2d1x124_bs2_b;
    assign i_mul17_conv2d1x124_ma3_cma_c1 = i_mul101_conv2d1x169_bs1_merged_bit_select_c;
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

    // i_mul17_conv2d1x124_sums_align_1(BITSHIFT,513)@5
    assign i_mul17_conv2d1x124_sums_align_1_qint = { i_mul17_conv2d1x124_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul17_conv2d1x124_sums_align_1_q = i_mul17_conv2d1x124_sums_align_1_qint[50:0];

    // i_mul17_conv2d1x124_im0_cma(CHAINMULTADD,624)@2 + 3
    assign i_mul17_conv2d1x124_im0_cma_reset = ~ (resetn);
    assign i_mul17_conv2d1x124_im0_cma_ena0 = 1'b1;
    assign i_mul17_conv2d1x124_im0_cma_ena1 = i_mul17_conv2d1x124_im0_cma_ena0;
    assign i_mul17_conv2d1x124_im0_cma_ena2 = i_mul17_conv2d1x124_im0_cma_ena0;

    assign i_mul17_conv2d1x124_im0_cma_a0 = i_mul101_conv2d1x169_bs1_merged_bit_select_b;
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

    // i_mul17_conv2d1x124_im8_cma(CHAINMULTADD,625)@2 + 3
    assign i_mul17_conv2d1x124_im8_cma_reset = ~ (resetn);
    assign i_mul17_conv2d1x124_im8_cma_ena0 = 1'b1;
    assign i_mul17_conv2d1x124_im8_cma_ena1 = i_mul17_conv2d1x124_im8_cma_ena0;
    assign i_mul17_conv2d1x124_im8_cma_ena2 = i_mul17_conv2d1x124_im8_cma_ena0;

    assign i_mul17_conv2d1x124_im8_cma_a0 = i_mul101_conv2d1x169_bs1_merged_bit_select_c;
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

    // i_mul17_conv2d1x124_sums_join_0(BITJOIN,512)@5
    assign i_mul17_conv2d1x124_sums_join_0_q = {i_mul17_conv2d1x124_im0_cma_q, i_mul17_conv2d1x124_im8_cma_q};

    // i_mul17_conv2d1x124_sums_result_add_0_0(ADD,515)@5
    assign i_mul17_conv2d1x124_sums_result_add_0_0_a = {1'b0, i_mul17_conv2d1x124_sums_join_0_q};
    assign i_mul17_conv2d1x124_sums_result_add_0_0_b = {14'b00000000000000, i_mul17_conv2d1x124_sums_align_1_q};
    assign i_mul17_conv2d1x124_sums_result_add_0_0_o = $unsigned(i_mul17_conv2d1x124_sums_result_add_0_0_a) + $unsigned(i_mul17_conv2d1x124_sums_result_add_0_0_b);
    assign i_mul17_conv2d1x124_sums_result_add_0_0_q = i_mul17_conv2d1x124_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul17_conv2d1x124_sel_x(BITSELECT,293)@5
    assign bgTrunc_i_mul17_conv2d1x124_sel_x_in = i_mul17_conv2d1x124_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul17_conv2d1x124_sel_x_b = bgTrunc_i_mul17_conv2d1x124_sel_x_in[31:0];

    // i_mul17_conv2d1x124_vt_select_31(BITSELECT,249)@5
    assign i_mul17_conv2d1x124_vt_select_31_b = bgTrunc_i_mul17_conv2d1x124_sel_x_b[31:3];

    // redist58_i_mul17_conv2d1x124_vt_select_31_b_1(DELAY,710)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_i_mul17_conv2d1x124_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist58_i_mul17_conv2d1x124_vt_select_31_b_1_q <= $unsigned(i_mul17_conv2d1x124_vt_select_31_b);
        end
    end

    // i_mul17_conv2d1x124_vt_join(BITJOIN,248)@6
    assign i_mul17_conv2d1x124_vt_join_q = {redist58_i_mul17_conv2d1x124_vt_select_31_b_1_q, i_mul17_conv2d1x124_vt_const_2_q};

    // i_add18_conv2d1x127(ADD,83)@6
    assign i_add18_conv2d1x127_a = {1'b0, i_mul17_conv2d1x124_vt_join_q};
    assign i_add18_conv2d1x127_b = {1'b0, redist62_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out_4_outputreg0_q};
    assign i_add18_conv2d1x127_o = $unsigned(i_add18_conv2d1x127_a) + $unsigned(i_add18_conv2d1x127_b);
    assign i_add18_conv2d1x127_q = i_add18_conv2d1x127_o[32:0];

    // bgTrunc_i_add18_conv2d1x127_sel_x(BITSELECT,282)@6
    assign bgTrunc_i_add18_conv2d1x127_sel_x_b = i_add18_conv2d1x127_q[31:0];

    // i_idxprom19_conv2d1x128_sel_x(BITSELECT,369)@6
    assign i_idxprom19_conv2d1x128_sel_x_b = $unsigned({{32{bgTrunc_i_add18_conv2d1x127_sel_x_b[31]}}, bgTrunc_i_add18_conv2d1x127_sel_x_b[31:0]});

    // i_arrayidx204_conv2d1x10_narrow_x(BITSELECT,322)@6
    assign i_arrayidx204_conv2d1x10_narrow_x_b = i_idxprom19_conv2d1x128_sel_x_b[61:0];

    // i_arrayidx204_conv2d1x10_shift_join_x(BITJOIN,323)@6
    assign i_arrayidx204_conv2d1x10_shift_join_x_q = {i_arrayidx204_conv2d1x10_narrow_x_b, i_arrayidx10411_conv2d1x173_vt_const_1_q};

    // valid_fanout_reg11(REG,398)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist50_sync_together202_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x129(BLACKBOX,232)@0
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

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x129_vt_select_63(BITSELECT,235)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x129_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x129_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x129_vt_join(BITJOIN,234)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x129_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x129_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer10_conv2d1x166_vt_const_9_q};

    // i_arrayidx204_conv2d1x10_add_x(ADD,320)@6
    assign i_arrayidx204_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x129_vt_join_q};
    assign i_arrayidx204_conv2d1x10_add_x_b = {1'b0, i_arrayidx204_conv2d1x10_shift_join_x_q};
    assign i_arrayidx204_conv2d1x10_add_x_o = $unsigned(i_arrayidx204_conv2d1x10_add_x_a) + $unsigned(i_arrayidx204_conv2d1x10_add_x_b);
    assign i_arrayidx204_conv2d1x10_add_x_q = i_arrayidx204_conv2d1x10_add_x_o[64:0];

    // i_arrayidx204_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,325)@6
    assign i_arrayidx204_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx204_conv2d1x10_add_x_q[63:0];

    // i_arrayidx204_conv2d1x130_vt_select_63(BITSELECT,122)@6
    assign i_arrayidx204_conv2d1x130_vt_select_63_b = i_arrayidx204_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx204_conv2d1x130_vt_join(BITJOIN,121)@6
    assign i_arrayidx204_conv2d1x130_vt_join_q = {i_arrayidx204_conv2d1x130_vt_select_63_b, i_arrayidx10411_conv2d1x173_vt_const_1_q};

    // valid_fanout_reg9(REG,396)@1 + 1
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

    // valid_fanout_reg10(REG,397)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_ij_0104_pop1375_push74_conv2d1x126(BLACKBOX,197)@2
    // out out_feedback_out_74@20000000
    // out out_feedback_valid_out_74@20000000
    conv2d1x1_i_llvm_fpga_push_i32_ij_0104_pop1375_push74_0 thei_llvm_fpga_push_i32_ij_0104_pop1375_push74_conv2d1x126 (
        .in_data_in(i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out),
        .in_feedback_stall_in_74(i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_feedback_stall_out_74),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_74(i_llvm_fpga_push_i32_ij_0104_pop1375_push74_conv2d1x126_out_feedback_out_74),
        .out_feedback_valid_out_74(i_llvm_fpga_push_i32_ij_0104_pop1375_push74_conv2d1x126_out_feedback_valid_out_74),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together202_aunroll_x_in_c0_eni45_5_tpl_1(DELAY,658)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together202_aunroll_x_in_c0_eni45_5_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together202_aunroll_x_in_c0_eni45_5_tpl_1_q <= $unsigned(in_c0_eni45_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125(BLACKBOX,180)@2
    // out out_feedback_stall_out_74@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_0 thei_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125 (
        .in_data_in(redist6_sync_together202_aunroll_x_in_c0_eni45_5_tpl_1_q),
        .in_dir(redist0_sync_together202_aunroll_x_in_c0_eni45_1_tpl_1_q),
        .in_feedback_in_74(i_llvm_fpga_push_i32_ij_0104_pop1375_push74_conv2d1x126_out_feedback_out_74),
        .in_feedback_valid_in_74(i_llvm_fpga_push_i32_ij_0104_pop1375_push74_conv2d1x126_out_feedback_valid_out_74),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out),
        .out_feedback_stall_out_74(i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_feedback_stall_out_74),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist62_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out_4_inputreg0(DELAY,1036)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out_4_inputreg0_q <= '0;
        end
        else
        begin
            redist62_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out_4_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out);
        end
    end

    // redist62_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out_4(DELAY,714)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out_4_delay_0 <= '0;
            redist62_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out_4_q <= '0;
        end
        else
        begin
            redist62_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out_4_delay_0 <= $unsigned(redist62_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out_4_inputreg0_q);
            redist62_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out_4_q <= redist62_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out_4_delay_0;
        end
    end

    // redist62_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out_4_outputreg0(DELAY,1037)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out_4_outputreg0_q <= '0;
        end
        else
        begin
            redist62_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out_4_outputreg0_q <= $unsigned(redist62_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out_4_q);
        end
    end

    // valid_fanout_reg4(REG,391)@1 + 1
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

    // valid_fanout_reg5(REG,392)@1 + 1
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

    // i_llvm_fpga_push_i1_push66_conv2d1x119(BLACKBOX,192)@2
    // out out_feedback_out_66@20000000
    // out out_feedback_valid_out_66@20000000
    conv2d1x1_i_llvm_fpga_push_i1_push66_0 thei_llvm_fpga_push_i1_push66_conv2d1x119 (
        .in_data_in(i_llvm_fpga_pop_i1_pop66_conv2d1x118_out_data_out),
        .in_feedback_stall_in_66(i_llvm_fpga_pop_i1_pop66_conv2d1x118_out_feedback_stall_out_66),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_66(i_llvm_fpga_push_i1_push66_conv2d1x119_out_feedback_out_66),
        .out_feedback_valid_out_66(i_llvm_fpga_push_i1_push66_conv2d1x119_out_feedback_valid_out_66),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together202_aunroll_x_in_c0_eni45_3_tpl_1(DELAY,656)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together202_aunroll_x_in_c0_eni45_3_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together202_aunroll_x_in_c0_eni45_3_tpl_1_q <= $unsigned(in_c0_eni45_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_pop66_conv2d1x118(BLACKBOX,175)@2
    // out out_feedback_stall_out_66@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_pop66_0 thei_llvm_fpga_pop_i1_pop66_conv2d1x118 (
        .in_data_in(redist4_sync_together202_aunroll_x_in_c0_eni45_3_tpl_1_q),
        .in_dir(redist0_sync_together202_aunroll_x_in_c0_eni45_1_tpl_1_q),
        .in_feedback_in_66(i_llvm_fpga_push_i1_push66_conv2d1x119_out_feedback_out_66),
        .in_feedback_valid_in_66(i_llvm_fpga_push_i1_push66_conv2d1x119_out_feedback_valid_out_66),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop66_conv2d1x118_out_data_out),
        .out_feedback_stall_out_66(i_llvm_fpga_pop_i1_pop66_conv2d1x118_out_feedback_stall_out_66),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist65_i_llvm_fpga_pop_i1_pop66_conv2d1x118_out_data_out_4(DELAY,717)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_i_llvm_fpga_pop_i1_pop66_conv2d1x118_out_data_out_4_delay_0 <= '0;
            redist65_i_llvm_fpga_pop_i1_pop66_conv2d1x118_out_data_out_4_delay_1 <= '0;
            redist65_i_llvm_fpga_pop_i1_pop66_conv2d1x118_out_data_out_4_delay_2 <= '0;
            redist65_i_llvm_fpga_pop_i1_pop66_conv2d1x118_out_data_out_4_q <= '0;
        end
        else
        begin
            redist65_i_llvm_fpga_pop_i1_pop66_conv2d1x118_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_pop66_conv2d1x118_out_data_out);
            redist65_i_llvm_fpga_pop_i1_pop66_conv2d1x118_out_data_out_4_delay_1 <= redist65_i_llvm_fpga_pop_i1_pop66_conv2d1x118_out_data_out_4_delay_0;
            redist65_i_llvm_fpga_pop_i1_pop66_conv2d1x118_out_data_out_4_delay_2 <= redist65_i_llvm_fpga_pop_i1_pop66_conv2d1x118_out_data_out_4_delay_1;
            redist65_i_llvm_fpga_pop_i1_pop66_conv2d1x118_out_data_out_4_q <= redist65_i_llvm_fpga_pop_i1_pop66_conv2d1x118_out_data_out_4_delay_2;
        end
    end

    // i_unnamed_conv2d1x117(LOGICAL,270)@6
    assign i_unnamed_conv2d1x117_q = redist64_i_llvm_fpga_pop_i1_pop68_conv2d1x115_out_data_out_2_q ^ VCC_q;

    // redist64_i_llvm_fpga_pop_i1_pop68_conv2d1x115_out_data_out_2(DELAY,716)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_i_llvm_fpga_pop_i1_pop68_conv2d1x115_out_data_out_2_q <= '0;
        end
        else
        begin
            redist64_i_llvm_fpga_pop_i1_pop68_conv2d1x115_out_data_out_2_q <= $unsigned(redist63_i_llvm_fpga_pop_i1_pop68_conv2d1x115_out_data_out_1_q);
        end
    end

    // redist71_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_4(DELAY,723)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_4_q <= '0;
        end
        else
        begin
            redist71_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_4_q <= $unsigned(redist70_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_3_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,385)@6
    assign out_c0_exi55_0_tpl = GND_q;
    assign out_c0_exi55_1_tpl = redist71_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_4_q;
    assign out_c0_exi55_2_tpl = redist64_i_llvm_fpga_pop_i1_pop68_conv2d1x115_out_data_out_2_q;
    assign out_c0_exi55_3_tpl = i_unnamed_conv2d1x117_q;
    assign out_c0_exi55_4_tpl = redist65_i_llvm_fpga_pop_i1_pop66_conv2d1x118_out_data_out_4_q;
    assign out_c0_exi55_5_tpl = redist62_i_llvm_fpga_pop_i32_ij_0104_pop1375_pop74_conv2d1x125_out_data_out_4_outputreg0_q;
    assign out_c0_exi55_6_tpl = i_arrayidx204_conv2d1x130_vt_join_q;
    assign out_c0_exi55_7_tpl = i_first_cleanup_xor_or_conv2d1x131_q;
    assign out_c0_exi55_8_tpl = i_arrayidx245_conv2d1x137_vt_join_q;
    assign out_c0_exi55_9_tpl = i_arrayidx346_conv2d1x143_vt_join_q;
    assign out_c0_exi55_10_tpl = i_arrayidx487_conv2d1x149_vt_join_q;
    assign out_c0_exi55_11_tpl = i_arrayidx628_conv2d1x155_vt_join_q;
    assign out_c0_exi55_12_tpl = i_arrayidx769_conv2d1x161_vt_join_q;
    assign out_c0_exi55_13_tpl = i_arrayidx9010_conv2d1x167_vt_join_q;
    assign out_c0_exi55_14_tpl = i_arrayidx10411_conv2d1x173_vt_join_q;
    assign out_c0_exi55_15_tpl = i_arrayidx11812_conv2d1x179_vt_join_q;
    assign out_c0_exi55_16_tpl = redist60_i_masked_conv2d1x192_q_2_q;
    assign out_c0_exi55_17_tpl = redist68_i_llvm_fpga_pop_f32_lm61_pop69_conv2d1x195_out_data_out_4_q;
    assign out_c0_exi55_18_tpl = redist61_i_llvm_fpga_pop_i32_mul15667_pop71_conv2d1x197_out_data_out_4_mem_q;
    assign out_c0_exi55_19_tpl = i_llvm_fpga_pop_i1_notcmp5170_pop72_conv2d1x199_out_data_out;
    assign out_c0_exi55_20_tpl = redist66_i_llvm_fpga_pop_i1_notcmp4673_pop73_conv2d1x1101_out_data_out_4_q;
    assign out_c0_exi55_21_tpl = i_llvm_fpga_pop_i64_ap_pop_ext5100_pop99_conv2d1x1103_out_data_out;
    assign out_c0_exi55_22_tpl = redist2_sync_together202_aunroll_x_in_c0_eni45_1_tpl_5_q;
    assign out_c0_exi55_23_tpl = redist14_sync_together202_aunroll_x_in_c0_eni45_13_tpl_5_mem_q;
    assign out_c0_exi55_24_tpl = redist15_sync_together202_aunroll_x_in_c0_eni45_14_tpl_5_q;
    assign out_c0_exi55_25_tpl = redist16_sync_together202_aunroll_x_in_c0_eni45_15_tpl_5_q;
    assign out_c0_exi55_26_tpl = redist17_sync_together202_aunroll_x_in_c0_eni45_16_tpl_5_q;
    assign out_c0_exi55_27_tpl = redist18_sync_together202_aunroll_x_in_c0_eni45_17_tpl_5_mem_q;
    assign out_c0_exi55_28_tpl = redist19_sync_together202_aunroll_x_in_c0_eni45_18_tpl_5_mem_q;
    assign out_c0_exi55_29_tpl = redist20_sync_together202_aunroll_x_in_c0_eni45_19_tpl_5_mem_q;
    assign out_c0_exi55_30_tpl = redist21_sync_together202_aunroll_x_in_c0_eni45_20_tpl_5_mem_q;
    assign out_c0_exi55_31_tpl = redist22_sync_together202_aunroll_x_in_c0_eni45_21_tpl_5_q;
    assign out_c0_exi55_32_tpl = redist23_sync_together202_aunroll_x_in_c0_eni45_22_tpl_5_mem_q;
    assign out_c0_exi55_33_tpl = redist24_sync_together202_aunroll_x_in_c0_eni45_23_tpl_5_mem_q;
    assign out_c0_exi55_34_tpl = redist25_sync_together202_aunroll_x_in_c0_eni45_24_tpl_5_mem_q;
    assign out_c0_exi55_35_tpl = redist26_sync_together202_aunroll_x_in_c0_eni45_25_tpl_5_mem_q;
    assign out_c0_exi55_36_tpl = redist27_sync_together202_aunroll_x_in_c0_eni45_26_tpl_5_mem_q;
    assign out_c0_exi55_37_tpl = redist28_sync_together202_aunroll_x_in_c0_eni45_27_tpl_5_mem_q;
    assign out_c0_exi55_38_tpl = redist29_sync_together202_aunroll_x_in_c0_eni45_28_tpl_5_mem_q;
    assign out_c0_exi55_39_tpl = redist30_sync_together202_aunroll_x_in_c0_eni45_29_tpl_5_mem_q;
    assign out_c0_exi55_40_tpl = redist31_sync_together202_aunroll_x_in_c0_eni45_30_tpl_5_mem_q;
    assign out_c0_exi55_41_tpl = redist32_sync_together202_aunroll_x_in_c0_eni45_31_tpl_5_mem_q;
    assign out_c0_exi55_42_tpl = redist33_sync_together202_aunroll_x_in_c0_eni45_32_tpl_5_mem_q;
    assign out_c0_exi55_43_tpl = redist34_sync_together202_aunroll_x_in_c0_eni45_33_tpl_5_mem_q;
    assign out_c0_exi55_44_tpl = redist35_sync_together202_aunroll_x_in_c0_eni45_34_tpl_5_mem_q;
    assign out_c0_exi55_45_tpl = redist36_sync_together202_aunroll_x_in_c0_eni45_35_tpl_5_mem_q;
    assign out_c0_exi55_46_tpl = redist37_sync_together202_aunroll_x_in_c0_eni45_36_tpl_5_mem_q;
    assign out_c0_exi55_47_tpl = redist38_sync_together202_aunroll_x_in_c0_eni45_37_tpl_5_mem_q;
    assign out_c0_exi55_48_tpl = redist39_sync_together202_aunroll_x_in_c0_eni45_38_tpl_5_mem_q;
    assign out_c0_exi55_49_tpl = redist40_sync_together202_aunroll_x_in_c0_eni45_39_tpl_5_mem_q;
    assign out_c0_exi55_50_tpl = redist41_sync_together202_aunroll_x_in_c0_eni45_40_tpl_5_mem_q;
    assign out_c0_exi55_51_tpl = redist42_sync_together202_aunroll_x_in_c0_eni45_41_tpl_5_mem_q;
    assign out_c0_exi55_52_tpl = redist43_sync_together202_aunroll_x_in_c0_eni45_42_tpl_5_mem_q;
    assign out_c0_exi55_53_tpl = redist44_sync_together202_aunroll_x_in_c0_eni45_43_tpl_5_mem_q;
    assign out_c0_exi55_54_tpl = redist45_sync_together202_aunroll_x_in_c0_eni45_44_tpl_5_mem_q;
    assign out_c0_exi55_55_tpl = redist46_sync_together202_aunroll_x_in_c0_eni45_45_tpl_5_mem_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d1x16 = GND_q;

    // i_llvm_fpga_pop_i1_pop67_conv2d1x193(BLACKBOX,176)@2
    // out out_feedback_stall_out_67@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_pop67_0 thei_llvm_fpga_pop_i1_pop67_conv2d1x193 (
        .in_data_in(redist8_sync_together202_aunroll_x_in_c0_eni45_7_tpl_1_q),
        .in_dir(redist0_sync_together202_aunroll_x_in_c0_eni45_1_tpl_1_q),
        .in_feedback_in_67(i_llvm_fpga_push_i1_push67_conv2d1x194_out_feedback_out_67),
        .in_feedback_valid_in_67(i_llvm_fpga_push_i1_push67_conv2d1x194_out_feedback_valid_out_67),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop67_conv2d1x193_out_data_out),
        .out_feedback_stall_out_67(i_llvm_fpga_pop_i1_pop67_conv2d1x193_out_feedback_stall_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_push67_conv2d1x194(BLACKBOX,193)@2
    // out out_feedback_out_67@20000000
    // out out_feedback_valid_out_67@20000000
    conv2d1x1_i_llvm_fpga_push_i1_push67_0 thei_llvm_fpga_push_i1_push67_conv2d1x194 (
        .in_data_in(i_llvm_fpga_pop_i1_pop67_conv2d1x193_out_data_out),
        .in_feedback_stall_in_67(i_llvm_fpga_pop_i1_pop67_conv2d1x193_out_feedback_stall_out_67),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(),
        .out_feedback_out_67(i_llvm_fpga_push_i1_push67_conv2d1x194_out_feedback_out_67),
        .out_feedback_valid_out_67(i_llvm_fpga_push_i1_push67_conv2d1x194_out_feedback_valid_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg23(REG,410)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg24(REG,411)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(in_i_valid);
        end
    end

    // redist8_sync_together202_aunroll_x_in_c0_eni45_7_tpl_1(DELAY,660)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together202_aunroll_x_in_c0_eni45_7_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together202_aunroll_x_in_c0_eni45_7_tpl_1_q <= $unsigned(in_c0_eni45_7_tpl);
        end
    end

endmodule
