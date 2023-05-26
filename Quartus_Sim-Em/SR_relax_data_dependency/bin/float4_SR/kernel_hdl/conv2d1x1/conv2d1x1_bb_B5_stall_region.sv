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

// SystemVerilog created from conv2d1x1_bb_B5_stall_region
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B5_stall_region (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_conv2d1x16_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_conv2d1x16_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked17242,
    input wire [0:0] in_forked59,
    input wire [31:0] in_lm96251,
    input wire [31:0] in_mul21254,
    input wire [31:0] in_mul245,
    input wire [31:0] in_mul97257,
    input wire [0:0] in_notcmp24260,
    input wire [0:0] in_phi_decision102_xor248,
    input wire [31:0] in_pop12266,
    input wire [31:0] in_spec_select156,
    input wire [31:0] in_spec_select323162,
    input wire [31:0] in_spec_select32363_pop13269,
    input wire [31:0] in_spec_select324168,
    input wire [31:0] in_spec_select32466_pop14272,
    input wire [31:0] in_spec_select325174,
    input wire [31:0] in_spec_select32569_pop15275,
    input wire [31:0] in_spec_select326180,
    input wire [31:0] in_spec_select32672_pop16278,
    input wire [31:0] in_spec_select327186,
    input wire [31:0] in_spec_select32775_pop17281,
    input wire [31:0] in_spec_select328192,
    input wire [31:0] in_spec_select32878_pop18284,
    input wire [31:0] in_spec_select329198,
    input wire [31:0] in_spec_select32981_pop19287,
    input wire [31:0] in_spec_select330204,
    input wire [31:0] in_spec_select33084_pop20290,
    input wire [31:0] in_spec_select331210,
    input wire [31:0] in_spec_select33187_pop21293,
    input wire [31:0] in_spec_select332216,
    input wire [31:0] in_spec_select33290_pop22296,
    input wire [31:0] in_spec_select333222,
    input wire [31:0] in_spec_select33393_pop23299,
    input wire [31:0] in_spec_select334228,
    input wire [31:0] in_spec_select33496_pop24303,
    input wire [31:0] in_spec_select335234,
    input wire [31:0] in_spec_select33599_pop25306,
    input wire [31:0] in_spec_select336102_pop26309,
    input wire [31:0] in_spec_select336240,
    input wire [31:0] in_spec_select60_pop11263,
    input wire [0:0] in_unnamed_conv2d1x110,
    input wire [32:0] in_unnamed_conv2d1x111,
    input wire [0:0] in_unnamed_conv2d1x112,
    input wire [31:0] in_unnamed_conv2d1x18,
    input wire [0:0] in_unnamed_conv2d1x19,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10505,
    output wire [31:0] out_c0_exe11506,
    output wire [31:0] out_c0_exe12507,
    output wire [31:0] out_c0_exe13508,
    output wire [31:0] out_c0_exe14509,
    output wire [0:0] out_c0_exe1496,
    output wire [31:0] out_c0_exe15510,
    output wire [31:0] out_c0_exe16511,
    output wire [31:0] out_c0_exe17512,
    output wire [31:0] out_c0_exe18513,
    output wire [31:0] out_c0_exe19514,
    output wire [31:0] out_c0_exe20515,
    output wire [31:0] out_c0_exe21516,
    output wire [31:0] out_c0_exe22517,
    output wire [31:0] out_c0_exe23518,
    output wire [31:0] out_c0_exe24519,
    output wire [0:0] out_c0_exe2497,
    output wire [31:0] out_c0_exe25520,
    output wire [0:0] out_c0_exe26521,
    output wire [0:0] out_c0_exe27522,
    output wire [31:0] out_c0_exe28523,
    output wire [31:0] out_c0_exe29524,
    output wire [31:0] out_c0_exe30525,
    output wire [0:0] out_c0_exe31526,
    output wire [0:0] out_c0_exe32527,
    output wire [31:0] out_c0_exe33528,
    output wire [31:0] out_c0_exe34529,
    output wire [0:0] out_c0_exe3498,
    output wire [31:0] out_c0_exe35530,
    output wire [31:0] out_c0_exe36531,
    output wire [31:0] out_c0_exe37532,
    output wire [31:0] out_c0_exe38533,
    output wire [31:0] out_c0_exe39534,
    output wire [31:0] out_c0_exe40535,
    output wire [31:0] out_c0_exe41536,
    output wire [31:0] out_c0_exe42537,
    output wire [31:0] out_c0_exe43538,
    output wire [31:0] out_c0_exe44539,
    output wire [0:0] out_c0_exe4499,
    output wire [31:0] out_c0_exe45,
    output wire [31:0] out_c0_exe46,
    output wire [31:0] out_c0_exe47,
    output wire [31:0] out_c0_exe48,
    output wire [0:0] out_c0_exe49,
    output wire [31:0] out_c0_exe50,
    output wire [0:0] out_c0_exe51,
    output wire [0:0] out_c0_exe52,
    output wire [0:0] out_c0_exe53,
    output wire [32:0] out_c0_exe54,
    output wire [31:0] out_c0_exe55,
    output wire [0:0] out_c0_exe5500,
    output wire [31:0] out_c0_exe56,
    output wire [31:0] out_c0_exe57,
    output wire [0:0] out_c0_exe58,
    output wire [0:0] out_c0_exe59,
    output wire [31:0] out_c0_exe60,
    output wire [31:0] out_c0_exe61,
    output wire [31:0] out_c0_exe62,
    output wire [31:0] out_c0_exe63,
    output wire [31:0] out_c0_exe64,
    output wire [31:0] out_c0_exe65,
    output wire [0:0] out_c0_exe6501,
    output wire [31:0] out_c0_exe66,
    output wire [31:0] out_c0_exe67,
    output wire [31:0] out_c0_exe68,
    output wire [31:0] out_c0_exe69,
    output wire [31:0] out_c0_exe70,
    output wire [31:0] out_c0_exe71,
    output wire [31:0] out_c0_exe72,
    output wire [31:0] out_c0_exe73,
    output wire [31:0] out_c0_exe74,
    output wire [31:0] out_c0_exe75,
    output wire [0:0] out_c0_exe7502,
    output wire [31:0] out_c0_exe8503,
    output wire [31:0] out_c0_exe9504,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] conv2d1x1_B5_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv2d1x1_B5_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [0:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_17_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_18_tpl;
    wire [0:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_19_tpl;
    wire [0:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_20_tpl;
    wire [0:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_21_tpl;
    wire [32:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_22_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_23_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_24_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_25_tpl;
    wire [0:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_26_tpl;
    wire [0:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_27_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_28_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_29_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_30_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_31_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_32_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_33_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_34_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_35_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_36_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_37_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_38_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_39_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_40_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_41_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_42_tpl;
    wire [31:0] conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_43_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_conv2d1x16_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_conv2d1x16_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_10_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_11_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_12_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_13_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_14_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_15_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_16_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_17_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_18_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_19_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_20_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_21_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_22_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_23_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_24_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_25_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_26_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_27_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_28_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_29_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_30_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_31_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_32_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_33_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_34_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_35_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_36_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_37_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_38_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_39_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_40_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_41_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_42_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_43_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_44_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_45_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_46_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_47_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_48_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_49_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_50_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_51_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_52_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_53_tpl;
    wire [32:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_54_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_55_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_56_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_57_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_58_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_59_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_60_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_61_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_62_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_63_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_64_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_65_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_66_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_67_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_68_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_69_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_70_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_71_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_72_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_73_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_74_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_75_tpl;
    wire [1191:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [31:0] bubble_select_stall_entry_m;
    wire [31:0] bubble_select_stall_entry_n;
    wire [31:0] bubble_select_stall_entry_o;
    wire [31:0] bubble_select_stall_entry_p;
    wire [31:0] bubble_select_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_r;
    wire [31:0] bubble_select_stall_entry_s;
    wire [31:0] bubble_select_stall_entry_t;
    wire [31:0] bubble_select_stall_entry_u;
    wire [31:0] bubble_select_stall_entry_v;
    wire [31:0] bubble_select_stall_entry_w;
    wire [31:0] bubble_select_stall_entry_x;
    wire [31:0] bubble_select_stall_entry_y;
    wire [31:0] bubble_select_stall_entry_z;
    wire [31:0] bubble_select_stall_entry_aa;
    wire [31:0] bubble_select_stall_entry_bb;
    wire [31:0] bubble_select_stall_entry_cc;
    wire [31:0] bubble_select_stall_entry_dd;
    wire [31:0] bubble_select_stall_entry_ee;
    wire [31:0] bubble_select_stall_entry_ff;
    wire [31:0] bubble_select_stall_entry_gg;
    wire [31:0] bubble_select_stall_entry_hh;
    wire [31:0] bubble_select_stall_entry_ii;
    wire [31:0] bubble_select_stall_entry_jj;
    wire [31:0] bubble_select_stall_entry_kk;
    wire [31:0] bubble_select_stall_entry_ll;
    wire [31:0] bubble_select_stall_entry_mm;
    wire [31:0] bubble_select_stall_entry_nn;
    wire [0:0] bubble_select_stall_entry_oo;
    wire [32:0] bubble_select_stall_entry_pp;
    wire [0:0] bubble_select_stall_entry_qq;
    wire [31:0] bubble_select_stall_entry_rr;
    wire [0:0] bubble_select_stall_entry_ss;
    wire [1191:0] bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_g;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_i;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_j;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_k;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_l;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_m;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_n;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_o;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_p;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_r;
    wire [0:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_s;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_t;
    wire [0:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_u;
    wire [0:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_v;
    wire [0:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_w;
    wire [32:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_x;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_y;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_z;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_aa;
    wire [0:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_bb;
    wire [0:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_cc;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_dd;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_ee;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_ff;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_gg;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_hh;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_ii;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_jj;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_kk;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_ll;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_mm;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_nn;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_oo;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_pp;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_qq;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_rr;
    wire [31:0] bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_ss;
    wire [1873:0] bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_j;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_k;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_l;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_m;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_n;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_p;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_r;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_s;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_t;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_u;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_v;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_w;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_x;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_y;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_z;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_aa;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_bb;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_cc;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_dd;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_ee;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_ff;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_gg;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_hh;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_ii;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_jj;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_kk;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_ll;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_mm;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_nn;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_oo;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_pp;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_qq;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_rr;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_ss;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_tt;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_uu;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_vv;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_ww;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_xx;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_yy;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_zz;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_1;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_2;
    wire [32:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_3;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_4;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_5;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_6;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_7;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_8;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_9;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_0;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o61;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o62;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o63;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o64;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o65;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o66;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o67;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o68;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o69;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o70;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o71;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o72;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o73;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o74;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_conv2d1x1_B5_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv2d1x1_B5_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv2d1x1_B5_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,21)
    assign bubble_join_stall_entry_q = {in_unnamed_conv2d1x19, in_unnamed_conv2d1x18, in_unnamed_conv2d1x112, in_unnamed_conv2d1x111, in_unnamed_conv2d1x110, in_spec_select60_pop11263, in_spec_select336240, in_spec_select336102_pop26309, in_spec_select33599_pop25306, in_spec_select335234, in_spec_select33496_pop24303, in_spec_select334228, in_spec_select33393_pop23299, in_spec_select333222, in_spec_select33290_pop22296, in_spec_select332216, in_spec_select33187_pop21293, in_spec_select331210, in_spec_select33084_pop20290, in_spec_select330204, in_spec_select32981_pop19287, in_spec_select329198, in_spec_select32878_pop18284, in_spec_select328192, in_spec_select32775_pop17281, in_spec_select327186, in_spec_select32672_pop16278, in_spec_select326180, in_spec_select32569_pop15275, in_spec_select325174, in_spec_select32466_pop14272, in_spec_select324168, in_spec_select32363_pop13269, in_spec_select323162, in_spec_select156, in_pop12266, in_phi_decision102_xor248, in_notcmp24260, in_mul97257, in_mul245, in_mul21254, in_lm96251, in_forked59, in_forked17242};

    // bubble_select_stall_entry(BITSELECT,22)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[65:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[97:66]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[129:98]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[130:130]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[131:131]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[163:132]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[195:164]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[227:196]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[259:228]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[291:260]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[323:292]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[355:324]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[387:356]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[419:388]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[451:420]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[483:452]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[515:484]);
    assign bubble_select_stall_entry_v = $unsigned(bubble_join_stall_entry_q[547:516]);
    assign bubble_select_stall_entry_w = $unsigned(bubble_join_stall_entry_q[579:548]);
    assign bubble_select_stall_entry_x = $unsigned(bubble_join_stall_entry_q[611:580]);
    assign bubble_select_stall_entry_y = $unsigned(bubble_join_stall_entry_q[643:612]);
    assign bubble_select_stall_entry_z = $unsigned(bubble_join_stall_entry_q[675:644]);
    assign bubble_select_stall_entry_aa = $unsigned(bubble_join_stall_entry_q[707:676]);
    assign bubble_select_stall_entry_bb = $unsigned(bubble_join_stall_entry_q[739:708]);
    assign bubble_select_stall_entry_cc = $unsigned(bubble_join_stall_entry_q[771:740]);
    assign bubble_select_stall_entry_dd = $unsigned(bubble_join_stall_entry_q[803:772]);
    assign bubble_select_stall_entry_ee = $unsigned(bubble_join_stall_entry_q[835:804]);
    assign bubble_select_stall_entry_ff = $unsigned(bubble_join_stall_entry_q[867:836]);
    assign bubble_select_stall_entry_gg = $unsigned(bubble_join_stall_entry_q[899:868]);
    assign bubble_select_stall_entry_hh = $unsigned(bubble_join_stall_entry_q[931:900]);
    assign bubble_select_stall_entry_ii = $unsigned(bubble_join_stall_entry_q[963:932]);
    assign bubble_select_stall_entry_jj = $unsigned(bubble_join_stall_entry_q[995:964]);
    assign bubble_select_stall_entry_kk = $unsigned(bubble_join_stall_entry_q[1027:996]);
    assign bubble_select_stall_entry_ll = $unsigned(bubble_join_stall_entry_q[1059:1028]);
    assign bubble_select_stall_entry_mm = $unsigned(bubble_join_stall_entry_q[1091:1060]);
    assign bubble_select_stall_entry_nn = $unsigned(bubble_join_stall_entry_q[1123:1092]);
    assign bubble_select_stall_entry_oo = $unsigned(bubble_join_stall_entry_q[1124:1124]);
    assign bubble_select_stall_entry_pp = $unsigned(bubble_join_stall_entry_q[1157:1125]);
    assign bubble_select_stall_entry_qq = $unsigned(bubble_join_stall_entry_q[1158:1158]);
    assign bubble_select_stall_entry_rr = $unsigned(bubble_join_stall_entry_q[1190:1159]);
    assign bubble_select_stall_entry_ss = $unsigned(bubble_join_stall_entry_q[1191:1191]);

    // SE_stall_entry(STALLENABLE,31)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv2d1x1_B5_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // conv2d1x1_B5_merge_reg_aunroll_x(BLACKBOX,17)@0
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
    // out out_data_out_16_tpl@1
    // out out_data_out_17_tpl@1
    // out out_data_out_18_tpl@1
    // out out_data_out_19_tpl@1
    // out out_data_out_20_tpl@1
    // out out_data_out_21_tpl@1
    // out out_data_out_22_tpl@1
    // out out_data_out_23_tpl@1
    // out out_data_out_24_tpl@1
    // out out_data_out_25_tpl@1
    // out out_data_out_26_tpl@1
    // out out_data_out_27_tpl@1
    // out out_data_out_28_tpl@1
    // out out_data_out_29_tpl@1
    // out out_data_out_30_tpl@1
    // out out_data_out_31_tpl@1
    // out out_data_out_32_tpl@1
    // out out_data_out_33_tpl@1
    // out out_data_out_34_tpl@1
    // out out_data_out_35_tpl@1
    // out out_data_out_36_tpl@1
    // out out_data_out_37_tpl@1
    // out out_data_out_38_tpl@1
    // out out_data_out_39_tpl@1
    // out out_data_out_40_tpl@1
    // out out_data_out_41_tpl@1
    // out out_data_out_42_tpl@1
    // out out_data_out_43_tpl@1
    conv2d1x1_B5_merge_reg theconv2d1x1_B5_merge_reg_aunroll_x (
        .in_stall_in(SE_out_conv2d1x1_B5_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_k),
        .in_data_in_2_tpl(bubble_select_stall_entry_rr),
        .in_data_in_3_tpl(bubble_select_stall_entry_l),
        .in_data_in_4_tpl(bubble_select_stall_entry_n),
        .in_data_in_5_tpl(bubble_select_stall_entry_p),
        .in_data_in_6_tpl(bubble_select_stall_entry_r),
        .in_data_in_7_tpl(bubble_select_stall_entry_t),
        .in_data_in_8_tpl(bubble_select_stall_entry_v),
        .in_data_in_9_tpl(bubble_select_stall_entry_x),
        .in_data_in_10_tpl(bubble_select_stall_entry_z),
        .in_data_in_11_tpl(bubble_select_stall_entry_bb),
        .in_data_in_12_tpl(bubble_select_stall_entry_dd),
        .in_data_in_13_tpl(bubble_select_stall_entry_ff),
        .in_data_in_14_tpl(bubble_select_stall_entry_hh),
        .in_data_in_15_tpl(bubble_select_stall_entry_jj),
        .in_data_in_16_tpl(bubble_select_stall_entry_mm),
        .in_data_in_17_tpl(bubble_select_stall_entry_b),
        .in_data_in_18_tpl(bubble_select_stall_entry_f),
        .in_data_in_19_tpl(bubble_select_stall_entry_ss),
        .in_data_in_20_tpl(bubble_select_stall_entry_oo),
        .in_data_in_21_tpl(bubble_select_stall_entry_i),
        .in_data_in_22_tpl(bubble_select_stall_entry_pp),
        .in_data_in_23_tpl(bubble_select_stall_entry_d),
        .in_data_in_24_tpl(bubble_select_stall_entry_e),
        .in_data_in_25_tpl(bubble_select_stall_entry_g),
        .in_data_in_26_tpl(bubble_select_stall_entry_qq),
        .in_data_in_27_tpl(bubble_select_stall_entry_h),
        .in_data_in_28_tpl(bubble_select_stall_entry_nn),
        .in_data_in_29_tpl(bubble_select_stall_entry_j),
        .in_data_in_30_tpl(bubble_select_stall_entry_m),
        .in_data_in_31_tpl(bubble_select_stall_entry_o),
        .in_data_in_32_tpl(bubble_select_stall_entry_q),
        .in_data_in_33_tpl(bubble_select_stall_entry_s),
        .in_data_in_34_tpl(bubble_select_stall_entry_u),
        .in_data_in_35_tpl(bubble_select_stall_entry_w),
        .in_data_in_36_tpl(bubble_select_stall_entry_y),
        .in_data_in_37_tpl(bubble_select_stall_entry_aa),
        .in_data_in_38_tpl(bubble_select_stall_entry_cc),
        .in_data_in_39_tpl(bubble_select_stall_entry_ee),
        .in_data_in_40_tpl(bubble_select_stall_entry_gg),
        .in_data_in_41_tpl(bubble_select_stall_entry_ii),
        .in_data_in_42_tpl(bubble_select_stall_entry_kk),
        .in_data_in_43_tpl(bubble_select_stall_entry_ll),
        .out_stall_out(conv2d1x1_B5_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv2d1x1_B5_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_21_tpl),
        .out_data_out_22_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_22_tpl),
        .out_data_out_23_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_23_tpl),
        .out_data_out_24_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_24_tpl),
        .out_data_out_25_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_25_tpl),
        .out_data_out_26_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_26_tpl),
        .out_data_out_27_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_27_tpl),
        .out_data_out_28_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_28_tpl),
        .out_data_out_29_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_29_tpl),
        .out_data_out_30_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_30_tpl),
        .out_data_out_31_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_31_tpl),
        .out_data_out_32_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_32_tpl),
        .out_data_out_33_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_33_tpl),
        .out_data_out_34_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_34_tpl),
        .out_data_out_35_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_35_tpl),
        .out_data_out_36_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_36_tpl),
        .out_data_out_37_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_37_tpl),
        .out_data_out_38_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_38_tpl),
        .out_data_out_39_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_39_tpl),
        .out_data_out_40_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_40_tpl),
        .out_data_out_41_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_41_tpl),
        .out_data_out_42_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_42_tpl),
        .out_data_out_43_tpl(conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_43_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_conv2d1x1_B5_merge_reg_aunroll_x(BITJOIN,25)
    assign bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q = {conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_43_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_42_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_41_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_40_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_39_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_38_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_37_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_36_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_35_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_34_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_33_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_32_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_31_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_30_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_29_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_28_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_27_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_26_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_25_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_24_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_23_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_22_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_21_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_20_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_19_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_18_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_17_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_16_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_15_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_14_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_13_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_12_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_11_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_10_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_9_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_8_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_7_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_6_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_5_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_4_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_3_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_2_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_1_tpl, conv2d1x1_B5_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv2d1x1_B5_merge_reg_aunroll_x(BITSELECT,26)
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[64:33]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[96:65]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_f = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[128:97]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_g = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[160:129]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_h = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[192:161]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_i = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[224:193]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_j = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[256:225]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_k = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[288:257]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_l = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[320:289]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_m = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[352:321]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_n = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[384:353]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_o = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[416:385]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_p = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[448:417]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_q = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[480:449]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_r = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[512:481]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_s = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[513:513]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_t = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[545:514]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_u = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[546:546]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_v = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[547:547]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_w = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[548:548]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_x = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[581:549]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_y = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[613:582]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_z = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[645:614]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_aa = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[677:646]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_bb = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[678:678]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_cc = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[679:679]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_dd = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[711:680]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_ee = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[743:712]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_ff = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[775:744]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_gg = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[807:776]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_hh = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[839:808]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_ii = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[871:840]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_jj = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[903:872]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_kk = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[935:904]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_ll = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[967:936]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_mm = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[999:968]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_nn = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[1031:1000]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_oo = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[1063:1032]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_pp = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[1095:1064]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_qq = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[1127:1096]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_rr = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[1159:1128]);
    assign bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_ss = $unsigned(bubble_join_conv2d1x1_B5_merge_reg_aunroll_x_q[1191:1160]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_conv2d1x1_B5_merge_reg_aunroll_x(STALLENABLE,34)
    // Valid signal propagation
    assign SE_out_conv2d1x1_B5_merge_reg_aunroll_x_V0 = SE_out_conv2d1x1_B5_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_conv2d1x1_B5_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_o_stall | ~ (SE_out_conv2d1x1_B5_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_conv2d1x1_B5_merge_reg_aunroll_x_wireValid = conv2d1x1_B5_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x(STALLENABLE,36)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x(BLACKBOX,19)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_conv2d1x16_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_conv2d1x16_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit495_0_tpl@5
    // out out_c0_exit495_1_tpl@5
    // out out_c0_exit495_2_tpl@5
    // out out_c0_exit495_3_tpl@5
    // out out_c0_exit495_4_tpl@5
    // out out_c0_exit495_5_tpl@5
    // out out_c0_exit495_6_tpl@5
    // out out_c0_exit495_7_tpl@5
    // out out_c0_exit495_8_tpl@5
    // out out_c0_exit495_9_tpl@5
    // out out_c0_exit495_10_tpl@5
    // out out_c0_exit495_11_tpl@5
    // out out_c0_exit495_12_tpl@5
    // out out_c0_exit495_13_tpl@5
    // out out_c0_exit495_14_tpl@5
    // out out_c0_exit495_15_tpl@5
    // out out_c0_exit495_16_tpl@5
    // out out_c0_exit495_17_tpl@5
    // out out_c0_exit495_18_tpl@5
    // out out_c0_exit495_19_tpl@5
    // out out_c0_exit495_20_tpl@5
    // out out_c0_exit495_21_tpl@5
    // out out_c0_exit495_22_tpl@5
    // out out_c0_exit495_23_tpl@5
    // out out_c0_exit495_24_tpl@5
    // out out_c0_exit495_25_tpl@5
    // out out_c0_exit495_26_tpl@5
    // out out_c0_exit495_27_tpl@5
    // out out_c0_exit495_28_tpl@5
    // out out_c0_exit495_29_tpl@5
    // out out_c0_exit495_30_tpl@5
    // out out_c0_exit495_31_tpl@5
    // out out_c0_exit495_32_tpl@5
    // out out_c0_exit495_33_tpl@5
    // out out_c0_exit495_34_tpl@5
    // out out_c0_exit495_35_tpl@5
    // out out_c0_exit495_36_tpl@5
    // out out_c0_exit495_37_tpl@5
    // out out_c0_exit495_38_tpl@5
    // out out_c0_exit495_39_tpl@5
    // out out_c0_exit495_40_tpl@5
    // out out_c0_exit495_41_tpl@5
    // out out_c0_exit495_42_tpl@5
    // out out_c0_exit495_43_tpl@5
    // out out_c0_exit495_44_tpl@5
    // out out_c0_exit495_45_tpl@5
    // out out_c0_exit495_46_tpl@5
    // out out_c0_exit495_47_tpl@5
    // out out_c0_exit495_48_tpl@5
    // out out_c0_exit495_49_tpl@5
    // out out_c0_exit495_50_tpl@5
    // out out_c0_exit495_51_tpl@5
    // out out_c0_exit495_52_tpl@5
    // out out_c0_exit495_53_tpl@5
    // out out_c0_exit495_54_tpl@5
    // out out_c0_exit495_55_tpl@5
    // out out_c0_exit495_56_tpl@5
    // out out_c0_exit495_57_tpl@5
    // out out_c0_exit495_58_tpl@5
    // out out_c0_exit495_59_tpl@5
    // out out_c0_exit495_60_tpl@5
    // out out_c0_exit495_61_tpl@5
    // out out_c0_exit495_62_tpl@5
    // out out_c0_exit495_63_tpl@5
    // out out_c0_exit495_64_tpl@5
    // out out_c0_exit495_65_tpl@5
    // out out_c0_exit495_66_tpl@5
    // out out_c0_exit495_67_tpl@5
    // out out_c0_exit495_68_tpl@5
    // out out_c0_exit495_69_tpl@5
    // out out_c0_exit495_70_tpl@5
    // out out_c0_exit495_71_tpl@5
    // out out_c0_exit495_72_tpl@5
    // out out_c0_exit495_73_tpl@5
    // out out_c0_exit495_74_tpl@5
    // out out_c0_exit495_75_tpl@5
    conv2d1x1_i_sfc_s_c0_in_for_cond11_prehe0000nter43359_conv2d1x11 thei_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_backStall),
        .in_i_valid(SE_out_conv2d1x1_B5_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni44_0_tpl(GND_q),
        .in_c0_eni44_1_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_s),
        .in_c0_eni44_2_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_b),
        .in_c0_eni44_3_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_x),
        .in_c0_eni44_4_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_w),
        .in_c0_eni44_5_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_bb),
        .in_c0_eni44_6_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_dd),
        .in_c0_eni44_7_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_ee),
        .in_c0_eni44_8_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_ff),
        .in_c0_eni44_9_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_gg),
        .in_c0_eni44_10_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_hh),
        .in_c0_eni44_11_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_ii),
        .in_c0_eni44_12_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_jj),
        .in_c0_eni44_13_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_kk),
        .in_c0_eni44_14_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_ll),
        .in_c0_eni44_15_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_mm),
        .in_c0_eni44_16_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_nn),
        .in_c0_eni44_17_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_oo),
        .in_c0_eni44_18_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_pp),
        .in_c0_eni44_19_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_qq),
        .in_c0_eni44_20_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_rr),
        .in_c0_eni44_21_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_ss),
        .in_c0_eni44_22_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_t),
        .in_c0_eni44_23_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_u),
        .in_c0_eni44_24_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_v),
        .in_c0_eni44_25_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_y),
        .in_c0_eni44_26_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_z),
        .in_c0_eni44_27_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_aa),
        .in_c0_eni44_28_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_cc),
        .in_c0_eni44_29_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_c),
        .in_c0_eni44_30_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_d),
        .in_c0_eni44_31_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_e),
        .in_c0_eni44_32_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_f),
        .in_c0_eni44_33_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_g),
        .in_c0_eni44_34_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_h),
        .in_c0_eni44_35_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_i),
        .in_c0_eni44_36_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_j),
        .in_c0_eni44_37_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_k),
        .in_c0_eni44_38_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_l),
        .in_c0_eni44_39_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_m),
        .in_c0_eni44_40_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_n),
        .in_c0_eni44_41_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_o),
        .in_c0_eni44_42_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_p),
        .in_c0_eni44_43_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_q),
        .in_c0_eni44_44_tpl(bubble_select_conv2d1x1_B5_merge_reg_aunroll_x_r),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_conv2d1x16_exiting_stall_out(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_conv2d1x16_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_conv2d1x16_exiting_valid_out(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_conv2d1x16_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit495_0_tpl(),
        .out_c0_exit495_1_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_1_tpl),
        .out_c0_exit495_2_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_2_tpl),
        .out_c0_exit495_3_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_3_tpl),
        .out_c0_exit495_4_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_4_tpl),
        .out_c0_exit495_5_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_5_tpl),
        .out_c0_exit495_6_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_6_tpl),
        .out_c0_exit495_7_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_7_tpl),
        .out_c0_exit495_8_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_8_tpl),
        .out_c0_exit495_9_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_9_tpl),
        .out_c0_exit495_10_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_10_tpl),
        .out_c0_exit495_11_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_11_tpl),
        .out_c0_exit495_12_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_12_tpl),
        .out_c0_exit495_13_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_13_tpl),
        .out_c0_exit495_14_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_14_tpl),
        .out_c0_exit495_15_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_15_tpl),
        .out_c0_exit495_16_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_16_tpl),
        .out_c0_exit495_17_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_17_tpl),
        .out_c0_exit495_18_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_18_tpl),
        .out_c0_exit495_19_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_19_tpl),
        .out_c0_exit495_20_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_20_tpl),
        .out_c0_exit495_21_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_21_tpl),
        .out_c0_exit495_22_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_22_tpl),
        .out_c0_exit495_23_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_23_tpl),
        .out_c0_exit495_24_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_24_tpl),
        .out_c0_exit495_25_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_25_tpl),
        .out_c0_exit495_26_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_26_tpl),
        .out_c0_exit495_27_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_27_tpl),
        .out_c0_exit495_28_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_28_tpl),
        .out_c0_exit495_29_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_29_tpl),
        .out_c0_exit495_30_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_30_tpl),
        .out_c0_exit495_31_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_31_tpl),
        .out_c0_exit495_32_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_32_tpl),
        .out_c0_exit495_33_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_33_tpl),
        .out_c0_exit495_34_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_34_tpl),
        .out_c0_exit495_35_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_35_tpl),
        .out_c0_exit495_36_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_36_tpl),
        .out_c0_exit495_37_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_37_tpl),
        .out_c0_exit495_38_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_38_tpl),
        .out_c0_exit495_39_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_39_tpl),
        .out_c0_exit495_40_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_40_tpl),
        .out_c0_exit495_41_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_41_tpl),
        .out_c0_exit495_42_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_42_tpl),
        .out_c0_exit495_43_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_43_tpl),
        .out_c0_exit495_44_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_44_tpl),
        .out_c0_exit495_45_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_45_tpl),
        .out_c0_exit495_46_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_46_tpl),
        .out_c0_exit495_47_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_47_tpl),
        .out_c0_exit495_48_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_48_tpl),
        .out_c0_exit495_49_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_49_tpl),
        .out_c0_exit495_50_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_50_tpl),
        .out_c0_exit495_51_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_51_tpl),
        .out_c0_exit495_52_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_52_tpl),
        .out_c0_exit495_53_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_53_tpl),
        .out_c0_exit495_54_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_54_tpl),
        .out_c0_exit495_55_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_55_tpl),
        .out_c0_exit495_56_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_56_tpl),
        .out_c0_exit495_57_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_57_tpl),
        .out_c0_exit495_58_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_58_tpl),
        .out_c0_exit495_59_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_59_tpl),
        .out_c0_exit495_60_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_60_tpl),
        .out_c0_exit495_61_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_61_tpl),
        .out_c0_exit495_62_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_62_tpl),
        .out_c0_exit495_63_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_63_tpl),
        .out_c0_exit495_64_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_64_tpl),
        .out_c0_exit495_65_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_65_tpl),
        .out_c0_exit495_66_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_66_tpl),
        .out_c0_exit495_67_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_67_tpl),
        .out_c0_exit495_68_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_68_tpl),
        .out_c0_exit495_69_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_69_tpl),
        .out_c0_exit495_70_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_70_tpl),
        .out_c0_exit495_71_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_71_tpl),
        .out_c0_exit495_72_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_72_tpl),
        .out_c0_exit495_73_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_73_tpl),
        .out_c0_exit495_74_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_74_tpl),
        .out_c0_exit495_75_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_75_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_conv2d1x16_exiting_valid_out = i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_conv2d1x16_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_conv2d1x16_exiting_stall_out = i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_conv2d1x16_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,11)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,15)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x(BITJOIN,29)
    assign bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q = {i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_75_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_74_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_73_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_72_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_71_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_70_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_69_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_68_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_67_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_66_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_65_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_64_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_63_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_62_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_61_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_60_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_59_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_58_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_57_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_56_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_55_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_54_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_53_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_52_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_51_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_50_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_49_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_48_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_47_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_46_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_45_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_44_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_43_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_42_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_41_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_40_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_39_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_38_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_37_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_36_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_35_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_34_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_33_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_32_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_31_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_30_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_29_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_28_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_27_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_26_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_25_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_24_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_23_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_22_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_21_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_20_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_19_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_18_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_17_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_16_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_15_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_14_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_13_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_12_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_11_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_10_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_9_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_8_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_7_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_6_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_5_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_4_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_3_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_2_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_out_c0_exit495_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x(BITSELECT,30)
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[2:2]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[3:3]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[4:4]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[5:5]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[6:6]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[38:7]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[70:39]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[102:71]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[134:103]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[166:135]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[198:167]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[230:199]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[262:231]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[294:263]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[326:295]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[358:327]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_t = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[390:359]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_u = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[422:391]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_v = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[454:423]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_w = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[486:455]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_x = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[518:487]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_y = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[550:519]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_z = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[582:551]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_aa = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[583:583]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_bb = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[584:584]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_cc = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[616:585]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_dd = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[648:617]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_ee = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[680:649]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_ff = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[681:681]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_gg = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[682:682]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_hh = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[714:683]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_ii = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[746:715]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_jj = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[778:747]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_kk = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[810:779]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_ll = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[842:811]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_mm = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[874:843]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_nn = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[906:875]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_oo = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[938:907]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_pp = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[970:939]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_qq = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1002:971]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_rr = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1034:1003]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_ss = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1066:1035]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_tt = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1098:1067]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_uu = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1130:1099]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_vv = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1162:1131]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_ww = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1194:1163]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_xx = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1195:1195]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_yy = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1227:1196]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_zz = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1228:1228]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_1 = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1229:1229]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_2 = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1230:1230]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_3 = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1263:1231]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_4 = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1295:1264]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_5 = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1327:1296]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_6 = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1359:1328]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_7 = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1360:1360]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_8 = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1361:1361]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_9 = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1393:1362]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_0 = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1425:1394]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o61 = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1457:1426]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o62 = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1489:1458]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o63 = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1521:1490]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o64 = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1553:1522]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o65 = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1585:1554]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o66 = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1617:1586]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o67 = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1649:1618]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o68 = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1681:1650]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o69 = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1713:1682]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o70 = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1745:1714]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o71 = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1777:1746]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o72 = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1809:1778]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o73 = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1841:1810]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o74 = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q[1873:1842]);

    // dupName_0_sync_out_x(GPOUT,18)@5
    assign out_c0_exe10505 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_k;
    assign out_c0_exe11506 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_l;
    assign out_c0_exe12507 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_m;
    assign out_c0_exe13508 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_n;
    assign out_c0_exe14509 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o;
    assign out_c0_exe1496 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_b;
    assign out_c0_exe15510 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_p;
    assign out_c0_exe16511 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_q;
    assign out_c0_exe17512 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_r;
    assign out_c0_exe18513 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_s;
    assign out_c0_exe19514 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_t;
    assign out_c0_exe20515 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_u;
    assign out_c0_exe21516 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_v;
    assign out_c0_exe22517 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_w;
    assign out_c0_exe23518 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_x;
    assign out_c0_exe24519 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_y;
    assign out_c0_exe2497 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_c;
    assign out_c0_exe25520 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_z;
    assign out_c0_exe26521 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_aa;
    assign out_c0_exe27522 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_bb;
    assign out_c0_exe28523 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_cc;
    assign out_c0_exe29524 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_dd;
    assign out_c0_exe30525 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_ee;
    assign out_c0_exe31526 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_ff;
    assign out_c0_exe32527 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_gg;
    assign out_c0_exe33528 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_hh;
    assign out_c0_exe34529 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_ii;
    assign out_c0_exe3498 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_d;
    assign out_c0_exe35530 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_jj;
    assign out_c0_exe36531 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_kk;
    assign out_c0_exe37532 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_ll;
    assign out_c0_exe38533 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_mm;
    assign out_c0_exe39534 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_nn;
    assign out_c0_exe40535 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_oo;
    assign out_c0_exe41536 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_pp;
    assign out_c0_exe42537 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_qq;
    assign out_c0_exe43538 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_rr;
    assign out_c0_exe44539 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_ss;
    assign out_c0_exe4499 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_e;
    assign out_c0_exe45 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_tt;
    assign out_c0_exe46 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_uu;
    assign out_c0_exe47 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_vv;
    assign out_c0_exe48 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_ww;
    assign out_c0_exe49 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_xx;
    assign out_c0_exe50 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_yy;
    assign out_c0_exe51 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_zz;
    assign out_c0_exe52 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_1;
    assign out_c0_exe53 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_2;
    assign out_c0_exe54 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_3;
    assign out_c0_exe55 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_4;
    assign out_c0_exe5500 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_f;
    assign out_c0_exe56 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_5;
    assign out_c0_exe57 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_6;
    assign out_c0_exe58 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_7;
    assign out_c0_exe59 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_8;
    assign out_c0_exe60 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_9;
    assign out_c0_exe61 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_0;
    assign out_c0_exe62 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o61;
    assign out_c0_exe63 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o62;
    assign out_c0_exe64 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o63;
    assign out_c0_exe65 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o64;
    assign out_c0_exe6501 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_g;
    assign out_c0_exe66 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o65;
    assign out_c0_exe67 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o66;
    assign out_c0_exe68 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o67;
    assign out_c0_exe69 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o68;
    assign out_c0_exe70 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o69;
    assign out_c0_exe71 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o70;
    assign out_c0_exe72 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o71;
    assign out_c0_exe73 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o72;
    assign out_c0_exe74 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o73;
    assign out_c0_exe75 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_o74;
    assign out_c0_exe7502 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_h;
    assign out_c0_exe8503 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_i;
    assign out_c0_exe9504 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_j;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter43359_conv2d1x11_aunroll_x_V0;

endmodule
