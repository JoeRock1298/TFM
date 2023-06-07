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

// SystemVerilog created from conv2d3x3_i_sfc_logic_s_c0_in_for_body220000ter816158_conv2d3x30
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_i_sfc_logic_s_c0_in_for_body220000ter816158_conv2d3x30 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv2d3x38_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv2d3x38_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    output wire [0:0] out_c0_exi52914_0_tpl,
    output wire [0:0] out_c0_exi52914_1_tpl,
    output wire [31:0] out_c0_exi52914_2_tpl,
    output wire [31:0] out_c0_exi52914_3_tpl,
    output wire [63:0] out_c0_exi52914_4_tpl,
    output wire [0:0] out_c0_exi52914_5_tpl,
    output wire [0:0] out_c0_exi52914_6_tpl,
    output wire [0:0] out_c0_exi52914_7_tpl,
    output wire [0:0] out_c0_exi52914_8_tpl,
    output wire [0:0] out_c0_exi52914_9_tpl,
    output wire [63:0] out_c0_exi52914_10_tpl,
    output wire [63:0] out_c0_exi52914_11_tpl,
    output wire [0:0] out_c0_exi52914_12_tpl,
    output wire [63:0] out_c0_exi52914_13_tpl,
    output wire [31:0] out_c0_exi52914_14_tpl,
    output wire [0:0] out_c0_exi52914_15_tpl,
    output wire [31:0] out_c0_exi52914_16_tpl,
    output wire [31:0] out_c0_exi52914_17_tpl,
    output wire [0:0] out_c0_exi52914_18_tpl,
    output wire [0:0] out_c0_exi52914_19_tpl,
    output wire [31:0] out_c0_exi52914_20_tpl,
    output wire [31:0] out_c0_exi52914_21_tpl,
    output wire [0:0] out_c0_exi52914_22_tpl,
    output wire [0:0] out_c0_exi52914_23_tpl,
    output wire [0:0] out_c0_exi52914_24_tpl,
    output wire [31:0] out_c0_exi52914_25_tpl,
    output wire [31:0] out_c0_exi52914_26_tpl,
    output wire [0:0] out_c0_exi52914_27_tpl,
    output wire [31:0] out_c0_exi52914_28_tpl,
    output wire [31:0] out_c0_exi52914_29_tpl,
    output wire [31:0] out_c0_exi52914_30_tpl,
    output wire [0:0] out_c0_exi52914_31_tpl,
    output wire [0:0] out_c0_exi52914_32_tpl,
    output wire [63:0] out_c0_exi52914_33_tpl,
    output wire [63:0] out_c0_exi52914_34_tpl,
    output wire [31:0] out_c0_exi52914_35_tpl,
    output wire [0:0] out_c0_exi52914_36_tpl,
    output wire [31:0] out_c0_exi52914_37_tpl,
    output wire [31:0] out_c0_exi52914_38_tpl,
    output wire [0:0] out_c0_exi52914_39_tpl,
    output wire [0:0] out_c0_exi52914_40_tpl,
    output wire [31:0] out_c0_exi52914_41_tpl,
    output wire [0:0] out_c0_exi52914_42_tpl,
    output wire [0:0] out_c0_exi52914_43_tpl,
    output wire [31:0] out_c0_exi52914_44_tpl,
    output wire [0:0] out_c0_exi52914_45_tpl,
    output wire [0:0] out_c0_exi52914_46_tpl,
    output wire [0:0] out_c0_exi52914_47_tpl,
    output wire [63:0] out_c0_exi52914_48_tpl,
    output wire [63:0] out_c0_exi52914_49_tpl,
    output wire [31:0] out_c0_exi52914_50_tpl,
    output wire [0:0] out_c0_exi52914_51_tpl,
    output wire [31:0] out_c0_exi52914_52_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d3x311,
    input wire [0:0] in_c0_eni47_0_tpl,
    input wire [0:0] in_c0_eni47_1_tpl,
    input wire [31:0] in_c0_eni47_2_tpl,
    input wire [31:0] in_c0_eni47_3_tpl,
    input wire [31:0] in_c0_eni47_4_tpl,
    input wire [0:0] in_c0_eni47_5_tpl,
    input wire [0:0] in_c0_eni47_6_tpl,
    input wire [0:0] in_c0_eni47_7_tpl,
    input wire [63:0] in_c0_eni47_8_tpl,
    input wire [63:0] in_c0_eni47_9_tpl,
    input wire [31:0] in_c0_eni47_10_tpl,
    input wire [0:0] in_c0_eni47_11_tpl,
    input wire [31:0] in_c0_eni47_12_tpl,
    input wire [31:0] in_c0_eni47_13_tpl,
    input wire [0:0] in_c0_eni47_14_tpl,
    input wire [0:0] in_c0_eni47_15_tpl,
    input wire [31:0] in_c0_eni47_16_tpl,
    input wire [31:0] in_c0_eni47_17_tpl,
    input wire [0:0] in_c0_eni47_18_tpl,
    input wire [0:0] in_c0_eni47_19_tpl,
    input wire [0:0] in_c0_eni47_20_tpl,
    input wire [31:0] in_c0_eni47_21_tpl,
    input wire [31:0] in_c0_eni47_22_tpl,
    input wire [0:0] in_c0_eni47_23_tpl,
    input wire [31:0] in_c0_eni47_24_tpl,
    input wire [31:0] in_c0_eni47_25_tpl,
    input wire [31:0] in_c0_eni47_26_tpl,
    input wire [0:0] in_c0_eni47_27_tpl,
    input wire [63:0] in_c0_eni47_28_tpl,
    input wire [63:0] in_c0_eni47_29_tpl,
    input wire [31:0] in_c0_eni47_30_tpl,
    input wire [0:0] in_c0_eni47_31_tpl,
    input wire [31:0] in_c0_eni47_32_tpl,
    input wire [31:0] in_c0_eni47_33_tpl,
    input wire [0:0] in_c0_eni47_34_tpl,
    input wire [0:0] in_c0_eni47_35_tpl,
    input wire [31:0] in_c0_eni47_36_tpl,
    input wire [0:0] in_c0_eni47_37_tpl,
    input wire [0:0] in_c0_eni47_38_tpl,
    input wire [31:0] in_c0_eni47_39_tpl,
    input wire [0:0] in_c0_eni47_40_tpl,
    input wire [0:0] in_c0_eni47_41_tpl,
    input wire [0:0] in_c0_eni47_42_tpl,
    input wire [63:0] in_c0_eni47_43_tpl,
    input wire [63:0] in_c0_eni47_44_tpl,
    input wire [31:0] in_c0_eni47_45_tpl,
    input wire [0:0] in_c0_eni47_46_tpl,
    input wire [31:0] in_c0_eni47_47_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_1169_q;
    wire [31:0] c_i32_0172_q;
    wire [31:0] c_i32_1174_q;
    wire [31:0] c_i32_3171_q;
    wire [2:0] c_i3_1175_q;
    wire [2:0] c_i3_1177_q;
    wire [32:0] i_add36_1_conv2d3x330_a;
    wire [32:0] i_add36_1_conv2d3x330_b;
    logic [32:0] i_add36_1_conv2d3x330_o;
    wire [32:0] i_add36_1_conv2d3x330_q;
    wire [32:0] i_add41_1_conv2d3x318_a;
    wire [32:0] i_add41_1_conv2d3x318_b;
    logic [32:0] i_add41_1_conv2d3x318_o;
    wire [32:0] i_add41_1_conv2d3x318_q;
    wire [32:0] i_add42_1_conv2d3x346_a;
    wire [32:0] i_add42_1_conv2d3x346_b;
    logic [32:0] i_add42_1_conv2d3x346_o;
    wire [32:0] i_add42_1_conv2d3x346_q;
    wire [1:0] i_arrayidx38_14_conv2d3x333_vt_const_1_q;
    wire [63:0] i_arrayidx38_14_conv2d3x333_vt_join_q;
    wire [61:0] i_arrayidx38_14_conv2d3x333_vt_select_63_b;
    wire [1:0] i_cleanups_shl47_conv2d3x37_vt_join_q;
    wire [0:0] i_cleanups_shl47_conv2d3x37_vt_select_1_b;
    wire [33:0] i_cmp29_1_conv2d3x323_a;
    wire [33:0] i_cmp29_1_conv2d3x323_b;
    logic [33:0] i_cmp29_1_conv2d3x323_o;
    wire [0:0] i_cmp29_1_conv2d3x323_c;
    wire [33:0] i_cmp31_1_conv2d3x326_a;
    wire [33:0] i_cmp31_1_conv2d3x326_b;
    logic [33:0] i_cmp31_1_conv2d3x326_o;
    wire [0:0] i_cmp31_1_conv2d3x326_c;
    wire [0:0] i_first_cleanup_xor49_conv2d3x36_q;
    wire [0:0] i_first_cleanup_xor49_or_conv2d3x345_q;
    wire [3:0] i_fpga_indvars_iv_next89_conv2d3x356_a;
    wire [3:0] i_fpga_indvars_iv_next89_conv2d3x356_b;
    logic [3:0] i_fpga_indvars_iv_next89_conv2d3x356_o;
    wire [3:0] i_fpga_indvars_iv_next89_conv2d3x356_q;
    wire [63:0] i_idxprom43_1_conv2d3x347_vt_join_q;
    wire [31:0] i_idxprom43_1_conv2d3x347_vt_select_31_b;
    wire [32:0] i_inc_1_conv2d3x351_a;
    wire [32:0] i_inc_1_conv2d3x351_b;
    logic [32:0] i_inc_1_conv2d3x351_o;
    wire [32:0] i_inc_1_conv2d3x351_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor1208_conv2d3x32_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor_conv2d3x33_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor1209_conv2d3x39_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor_conv2d3x310_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_conv2d3x38_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_conv2d3x38_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_conv2d3x38_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_conv2d3x38_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_conv2d3x38_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_conv2d3x38_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_f32_lm25101_pop77_conv2d3x367_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_lm25101_pop77_conv2d3x367_out_feedback_stall_out_77;
    wire [0:0] i_llvm_fpga_pop_i1_cmp26122_pop81_conv2d3x375_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp26122_pop81_conv2d3x375_out_feedback_stall_out_81;
    wire [0:0] i_llvm_fpga_pop_i1_cmp26_1137_pop84_conv2d3x334_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp26_1137_pop84_conv2d3x334_out_feedback_stall_out_84;
    wire [0:0] i_llvm_fpga_pop_i1_cmp26_2152_pop87_conv2d3x383_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp26_2152_pop87_conv2d3x383_out_feedback_stall_out_87;
    wire [0:0] i_llvm_fpga_pop_i1_cmp27127_pop82_conv2d3x377_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp27127_pop82_conv2d3x377_out_feedback_stall_out_82;
    wire [0:0] i_llvm_fpga_pop_i1_cmp27_1142_pop85_conv2d3x337_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp27_1142_pop85_conv2d3x337_out_feedback_stall_out_85;
    wire [0:0] i_llvm_fpga_pop_i1_cmp27_2157_pop88_conv2d3x385_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp27_2157_pop88_conv2d3x385_out_feedback_stall_out_88;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp73173_pop92_conv2d3x393_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp73173_pop92_conv2d3x393_out_feedback_stall_out_92;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp77162_pop89_conv2d3x387_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp77162_pop89_conv2d3x387_out_feedback_stall_out_89;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp81107_pop78_conv2d3x369_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp81107_pop78_conv2d3x369_out_feedback_stall_out_78;
    wire [0:0] i_llvm_fpga_pop_i1_pop94_conv2d3x341_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop94_conv2d3x341_out_feedback_stall_out_94;
    wire [0:0] i_llvm_fpga_pop_i1_pop97_conv2d3x3101_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop97_conv2d3x3101_out_feedback_stall_out_97;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups46_pop74_conv2d3x34_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups46_pop74_conv2d3x34_out_feedback_stall_out_74;
    wire [1:0] i_llvm_fpga_pop_i2_initerations41_pop73_conv2d3x311_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations41_pop73_conv2d3x311_out_feedback_stall_out_73;
    wire [31:0] i_llvm_fpga_pop_i32_add112_pop79_conv2d3x371_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add112_pop79_conv2d3x371_out_feedback_stall_out_79;
    wire [31:0] i_llvm_fpga_pop_i32_add24189_pop100_conv2d3x320_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add24189_pop100_conv2d3x320_out_feedback_stall_out_100;
    wire [31:0] i_llvm_fpga_pop_i32_add35_1187_pop98_conv2d3x328_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add35_1187_pop98_conv2d3x328_out_feedback_stall_out_98;
    wire [31:0] i_llvm_fpga_pop_i32_inc50185_pop96_conv2d3x399_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_inc50185_pop96_conv2d3x399_out_feedback_stall_out_96;
    wire [31:0] i_llvm_fpga_pop_i32_j_061_pop24177_pop93_conv2d3x395_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_061_pop24177_pop93_conv2d3x395_out_feedback_stall_out_93;
    wire [31:0] i_llvm_fpga_pop_i32_m_053_1_pop71_conv2d3x319_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_m_053_1_pop71_conv2d3x319_out_feedback_stall_out_71;
    wire [31:0] i_llvm_fpga_pop_i32_mul32182_pop95_conv2d3x397_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul32182_pop95_conv2d3x397_out_feedback_stall_out_95;
    wire [31:0] i_llvm_fpga_pop_i32_mul39_add4188_pop99_conv2d3x316_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul39_add4188_pop99_conv2d3x316_out_feedback_stall_out_99;
    wire [31:0] i_llvm_fpga_pop_i32_mul56117_pop80_conv2d3x373_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul56117_pop80_conv2d3x373_out_feedback_stall_out_80;
    wire [31:0] i_llvm_fpga_pop_i32_pad_sync_buffer169_pop91_conv2d3x391_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_pad_sync_buffer169_pop91_conv2d3x391_out_feedback_stall_out_91;
    wire [31:0] i_llvm_fpga_pop_i32_stride_sync_buffer165_pop90_conv2d3x389_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_stride_sync_buffer165_pop90_conv2d3x389_out_feedback_stall_out_90;
    wire [31:0] i_llvm_fpga_pop_i32_sub_1132_pop83_conv2d3x379_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_sub_1132_pop83_conv2d3x379_out_feedback_stall_out_83;
    wire [31:0] i_llvm_fpga_pop_i32_sub_2147_pop86_conv2d3x381_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_sub_2147_pop86_conv2d3x381_out_feedback_stall_out_86;
    wire [2:0] i_llvm_fpga_pop_i3_fpga_indvars_iv88_pop70_conv2d3x353_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i3_fpga_indvars_iv88_pop70_conv2d3x353_out_feedback_stall_out_70;
    wire [63:0] i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi89_pop75_conv2d3x348_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi89_pop75_conv2d3x348_out_feedback_stall_out_75;
    wire [63:0] i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi95_pop76_conv2d3x365_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi95_pop76_conv2d3x365_out_feedback_stall_out_76;
    wire [31:0] i_llvm_fpga_push_f32_lm25101_push77_conv2d3x368_out_feedback_out_77;
    wire [0:0] i_llvm_fpga_push_f32_lm25101_push77_conv2d3x368_out_feedback_valid_out_77;
    wire [0:0] i_llvm_fpga_push_i1_cmp26122_push81_conv2d3x376_out_feedback_out_81;
    wire [0:0] i_llvm_fpga_push_i1_cmp26122_push81_conv2d3x376_out_feedback_valid_out_81;
    wire [0:0] i_llvm_fpga_push_i1_cmp26_1137_push84_conv2d3x335_out_feedback_out_84;
    wire [0:0] i_llvm_fpga_push_i1_cmp26_1137_push84_conv2d3x335_out_feedback_valid_out_84;
    wire [0:0] i_llvm_fpga_push_i1_cmp26_2152_push87_conv2d3x384_out_feedback_out_87;
    wire [0:0] i_llvm_fpga_push_i1_cmp26_2152_push87_conv2d3x384_out_feedback_valid_out_87;
    wire [0:0] i_llvm_fpga_push_i1_cmp27127_push82_conv2d3x378_out_feedback_out_82;
    wire [0:0] i_llvm_fpga_push_i1_cmp27127_push82_conv2d3x378_out_feedback_valid_out_82;
    wire [0:0] i_llvm_fpga_push_i1_cmp27_1142_push85_conv2d3x338_out_feedback_out_85;
    wire [0:0] i_llvm_fpga_push_i1_cmp27_1142_push85_conv2d3x338_out_feedback_valid_out_85;
    wire [0:0] i_llvm_fpga_push_i1_cmp27_2157_push88_conv2d3x386_out_feedback_out_88;
    wire [0:0] i_llvm_fpga_push_i1_cmp27_2157_push88_conv2d3x386_out_feedback_valid_out_88;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration45_conv2d3x315_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration45_conv2d3x315_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notcmp73173_push92_conv2d3x394_out_feedback_out_92;
    wire [0:0] i_llvm_fpga_push_i1_notcmp73173_push92_conv2d3x394_out_feedback_valid_out_92;
    wire [0:0] i_llvm_fpga_push_i1_notcmp77162_push89_conv2d3x388_out_feedback_out_89;
    wire [0:0] i_llvm_fpga_push_i1_notcmp77162_push89_conv2d3x388_out_feedback_valid_out_89;
    wire [0:0] i_llvm_fpga_push_i1_notcmp81107_push78_conv2d3x370_out_feedback_out_78;
    wire [0:0] i_llvm_fpga_push_i1_notcmp81107_push78_conv2d3x370_out_feedback_valid_out_78;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond53_conv2d3x360_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond53_conv2d3x360_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_push94_conv2d3x342_out_feedback_out_94;
    wire [0:0] i_llvm_fpga_push_i1_push94_conv2d3x342_out_feedback_valid_out_94;
    wire [0:0] i_llvm_fpga_push_i1_push97_conv2d3x3102_out_feedback_out_97;
    wire [0:0] i_llvm_fpga_push_i1_push97_conv2d3x3102_out_feedback_valid_out_97;
    wire [7:0] i_llvm_fpga_push_i2_cleanups46_push74_conv2d3x363_out_feedback_out_74;
    wire [0:0] i_llvm_fpga_push_i2_cleanups46_push74_conv2d3x363_out_feedback_valid_out_74;
    wire [7:0] i_llvm_fpga_push_i2_initerations41_push73_conv2d3x313_out_feedback_out_73;
    wire [0:0] i_llvm_fpga_push_i2_initerations41_push73_conv2d3x313_out_feedback_valid_out_73;
    wire [31:0] i_llvm_fpga_push_i32_add112_push79_conv2d3x372_out_feedback_out_79;
    wire [0:0] i_llvm_fpga_push_i32_add112_push79_conv2d3x372_out_feedback_valid_out_79;
    wire [31:0] i_llvm_fpga_push_i32_add24189_push100_conv2d3x321_out_feedback_out_100;
    wire [0:0] i_llvm_fpga_push_i32_add24189_push100_conv2d3x321_out_feedback_valid_out_100;
    wire [31:0] i_llvm_fpga_push_i32_add35_1187_push98_conv2d3x329_out_feedback_out_98;
    wire [0:0] i_llvm_fpga_push_i32_add35_1187_push98_conv2d3x329_out_feedback_valid_out_98;
    wire [31:0] i_llvm_fpga_push_i32_inc50185_push96_conv2d3x3100_out_feedback_out_96;
    wire [0:0] i_llvm_fpga_push_i32_inc50185_push96_conv2d3x3100_out_feedback_valid_out_96;
    wire [31:0] i_llvm_fpga_push_i32_j_061_pop24177_push93_conv2d3x396_out_feedback_out_93;
    wire [0:0] i_llvm_fpga_push_i32_j_061_pop24177_push93_conv2d3x396_out_feedback_valid_out_93;
    wire [31:0] i_llvm_fpga_push_i32_m_053_1_push71_conv2d3x352_out_feedback_out_71;
    wire [0:0] i_llvm_fpga_push_i32_m_053_1_push71_conv2d3x352_out_feedback_valid_out_71;
    wire [31:0] i_llvm_fpga_push_i32_mul32182_push95_conv2d3x398_out_feedback_out_95;
    wire [0:0] i_llvm_fpga_push_i32_mul32182_push95_conv2d3x398_out_feedback_valid_out_95;
    wire [31:0] i_llvm_fpga_push_i32_mul39_add4188_push99_conv2d3x317_out_feedback_out_99;
    wire [0:0] i_llvm_fpga_push_i32_mul39_add4188_push99_conv2d3x317_out_feedback_valid_out_99;
    wire [31:0] i_llvm_fpga_push_i32_mul56117_push80_conv2d3x374_out_feedback_out_80;
    wire [0:0] i_llvm_fpga_push_i32_mul56117_push80_conv2d3x374_out_feedback_valid_out_80;
    wire [31:0] i_llvm_fpga_push_i32_pad_sync_buffer169_push91_conv2d3x392_out_feedback_out_91;
    wire [0:0] i_llvm_fpga_push_i32_pad_sync_buffer169_push91_conv2d3x392_out_feedback_valid_out_91;
    wire [31:0] i_llvm_fpga_push_i32_stride_sync_buffer165_push90_conv2d3x390_out_feedback_out_90;
    wire [0:0] i_llvm_fpga_push_i32_stride_sync_buffer165_push90_conv2d3x390_out_feedback_valid_out_90;
    wire [31:0] i_llvm_fpga_push_i32_sub_1132_push83_conv2d3x380_out_feedback_out_83;
    wire [0:0] i_llvm_fpga_push_i32_sub_1132_push83_conv2d3x380_out_feedback_valid_out_83;
    wire [31:0] i_llvm_fpga_push_i32_sub_2147_push86_conv2d3x382_out_feedback_out_86;
    wire [0:0] i_llvm_fpga_push_i32_sub_2147_push86_conv2d3x382_out_feedback_valid_out_86;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv88_push70_conv2d3x357_out_feedback_out_70;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv88_push70_conv2d3x357_out_feedback_valid_out_70;
    wire [63:0] i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi89_push75_conv2d3x349_out_feedback_out_75;
    wire [0:0] i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi89_push75_conv2d3x349_out_feedback_valid_out_75;
    wire [63:0] i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi95_push76_conv2d3x366_out_feedback_out_76;
    wire [0:0] i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi95_push76_conv2d3x366_out_feedback_valid_out_76;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer10_conv2d3x325_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer27_conv2d3x332_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer27_conv2d3x332_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer27_conv2d3x332_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer27_conv2d3x332_vt_select_63_b;
    wire [0:0] i_masked52_conv2d3x364_q;
    wire [0:0] i_next_cleanups51_conv2d3x362_s;
    reg [1:0] i_next_cleanups51_conv2d3x362_q;
    wire [1:0] i_next_initerations42_conv2d3x312_vt_join_q;
    wire [0:0] i_next_initerations42_conv2d3x312_vt_select_0_b;
    wire [0:0] i_notcmp39_conv2d3x359_q;
    wire [0:0] i_or50_conv2d3x361_q;
    wire [0:0] i_phi_decision46_and_i0_conv2d3x343_q;
    wire [0:0] i_reduction_conv2d3x3_3_conv2d3x336_q;
    wire [0:0] i_reduction_conv2d3x3_4_conv2d3x339_q;
    wire [0:0] i_reduction_conv2d3x3_5_conv2d3x340_q;
    wire [32:0] i_sub25_1_conv2d3x322_a;
    wire [32:0] i_sub25_1_conv2d3x322_b;
    logic [32:0] i_sub25_1_conv2d3x322_o;
    wire [32:0] i_sub25_1_conv2d3x322_q;
    wire [0:0] i_unnamed_conv2d3x344_q;
    wire [0:0] i_unnamed_conv2d3x358_q;
    wire [31:0] bgTrunc_i_add36_1_conv2d3x330_sel_x_b;
    wire [31:0] bgTrunc_i_add41_1_conv2d3x318_sel_x_b;
    wire [31:0] bgTrunc_i_add42_1_conv2d3x346_sel_x_b;
    wire [2:0] bgTrunc_i_fpga_indvars_iv_next89_conv2d3x356_sel_x_b;
    wire [31:0] bgTrunc_i_inc_1_conv2d3x351_sel_x_b;
    wire [31:0] bgTrunc_i_sub25_1_conv2d3x322_sel_x_b;
    wire [31:0] c_i32_1173_recast_x_q;
    wire [64:0] i_arrayidx38_14_conv2d3x30_add_x_a;
    wire [64:0] i_arrayidx38_14_conv2d3x30_add_x_b;
    logic [64:0] i_arrayidx38_14_conv2d3x30_add_x_o;
    wire [64:0] i_arrayidx38_14_conv2d3x30_add_x_q;
    wire [61:0] i_arrayidx38_14_conv2d3x30_narrow_x_b;
    wire [63:0] i_arrayidx38_14_conv2d3x30_shift_join_x_q;
    wire [63:0] i_arrayidx38_14_conv2d3x30_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx44_1_conv2d3x30_add_x_a;
    wire [64:0] i_arrayidx44_1_conv2d3x30_add_x_b;
    logic [64:0] i_arrayidx44_1_conv2d3x30_add_x_o;
    wire [64:0] i_arrayidx44_1_conv2d3x30_add_x_q;
    wire [61:0] i_arrayidx44_1_conv2d3x30_narrow_x_b;
    wire [63:0] i_arrayidx44_1_conv2d3x30_shift_join_x_q;
    wire [63:0] i_arrayidx44_1_conv2d3x30_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup48_conv2d3x35_sel_x_b;
    wire [63:0] i_idxprom37_1_conv2d3x331_sel_x_b;
    wire [63:0] i_idxprom43_1_conv2d3x347_sel_x_b;
    wire [0:0] i_last_initeration44_conv2d3x314_sel_x_b;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg35_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg36_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg37_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg38_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg39_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg40_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg41_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg42_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg43_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg44_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg45_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg46_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg47_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg48_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg49_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg50_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg51_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg52_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg53_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg54_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg55_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg56_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg57_q;
    wire [0:0] i_exitcond90_conv2d3x354_cmp_nsign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid311_i_cleanups_shl47_conv2d3x30_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid311_i_cleanups_shl47_conv2d3x30_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid312_i_cleanups_shl47_conv2d3x30_shift_x_q;
    wire [0:0] leftShiftStage0_uid314_i_cleanups_shl47_conv2d3x30_shift_x_s;
    reg [1:0] leftShiftStage0_uid314_i_cleanups_shl47_conv2d3x30_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid318_i_next_initerations42_conv2d3x30_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid320_i_next_initerations42_conv2d3x30_shift_x_q;
    wire [0:0] rightShiftStage0_uid322_i_next_initerations42_conv2d3x30_shift_x_s;
    reg [1:0] rightShiftStage0_uid322_i_next_initerations42_conv2d3x30_shift_x_q;
    reg [0:0] redist0_sync_together246_aunroll_x_in_c0_eni47_1_tpl_3_q;
    reg [0:0] redist0_sync_together246_aunroll_x_in_c0_eni47_1_tpl_3_delay_0;
    reg [0:0] redist0_sync_together246_aunroll_x_in_c0_eni47_1_tpl_3_delay_1;
    reg [31:0] redist1_sync_together246_aunroll_x_in_c0_eni47_2_tpl_1_q;
    reg [31:0] redist2_sync_together246_aunroll_x_in_c0_eni47_3_tpl_1_q;
    reg [31:0] redist3_sync_together246_aunroll_x_in_c0_eni47_4_tpl_1_q;
    reg [0:0] redist4_sync_together246_aunroll_x_in_c0_eni47_5_tpl_1_q;
    reg [0:0] redist5_sync_together246_aunroll_x_in_c0_eni47_6_tpl_1_q;
    reg [0:0] redist6_sync_together246_aunroll_x_in_c0_eni47_7_tpl_3_q;
    reg [0:0] redist6_sync_together246_aunroll_x_in_c0_eni47_7_tpl_3_delay_0;
    reg [0:0] redist6_sync_together246_aunroll_x_in_c0_eni47_7_tpl_3_delay_1;
    reg [63:0] redist7_sync_together246_aunroll_x_in_c0_eni47_8_tpl_1_q;
    reg [63:0] redist8_sync_together246_aunroll_x_in_c0_eni47_9_tpl_1_q;
    reg [31:0] redist9_sync_together246_aunroll_x_in_c0_eni47_10_tpl_1_q;
    reg [0:0] redist10_sync_together246_aunroll_x_in_c0_eni47_11_tpl_1_q;
    reg [31:0] redist11_sync_together246_aunroll_x_in_c0_eni47_12_tpl_1_q;
    reg [31:0] redist12_sync_together246_aunroll_x_in_c0_eni47_13_tpl_1_q;
    reg [0:0] redist13_sync_together246_aunroll_x_in_c0_eni47_14_tpl_1_q;
    reg [0:0] redist14_sync_together246_aunroll_x_in_c0_eni47_15_tpl_1_q;
    reg [31:0] redist15_sync_together246_aunroll_x_in_c0_eni47_16_tpl_1_q;
    reg [31:0] redist16_sync_together246_aunroll_x_in_c0_eni47_17_tpl_1_q;
    reg [0:0] redist17_sync_together246_aunroll_x_in_c0_eni47_18_tpl_1_q;
    reg [0:0] redist18_sync_together246_aunroll_x_in_c0_eni47_19_tpl_1_q;
    reg [0:0] redist19_sync_together246_aunroll_x_in_c0_eni47_20_tpl_1_q;
    reg [31:0] redist20_sync_together246_aunroll_x_in_c0_eni47_21_tpl_1_q;
    reg [31:0] redist21_sync_together246_aunroll_x_in_c0_eni47_22_tpl_1_q;
    reg [0:0] redist22_sync_together246_aunroll_x_in_c0_eni47_23_tpl_1_q;
    reg [31:0] redist23_sync_together246_aunroll_x_in_c0_eni47_24_tpl_1_q;
    reg [31:0] redist24_sync_together246_aunroll_x_in_c0_eni47_25_tpl_1_q;
    reg [31:0] redist25_sync_together246_aunroll_x_in_c0_eni47_26_tpl_1_q;
    reg [0:0] redist26_sync_together246_aunroll_x_in_c0_eni47_27_tpl_1_q;
    reg [0:0] redist30_sync_together246_aunroll_x_in_c0_eni47_31_tpl_3_q;
    reg [0:0] redist30_sync_together246_aunroll_x_in_c0_eni47_31_tpl_3_delay_0;
    reg [0:0] redist30_sync_together246_aunroll_x_in_c0_eni47_31_tpl_3_delay_1;
    reg [0:0] redist33_sync_together246_aunroll_x_in_c0_eni47_34_tpl_3_q;
    reg [0:0] redist33_sync_together246_aunroll_x_in_c0_eni47_34_tpl_3_delay_0;
    reg [0:0] redist33_sync_together246_aunroll_x_in_c0_eni47_34_tpl_3_delay_1;
    reg [0:0] redist34_sync_together246_aunroll_x_in_c0_eni47_35_tpl_3_q;
    reg [0:0] redist34_sync_together246_aunroll_x_in_c0_eni47_35_tpl_3_delay_0;
    reg [0:0] redist34_sync_together246_aunroll_x_in_c0_eni47_35_tpl_3_delay_1;
    reg [0:0] redist36_sync_together246_aunroll_x_in_c0_eni47_37_tpl_3_q;
    reg [0:0] redist36_sync_together246_aunroll_x_in_c0_eni47_37_tpl_3_delay_0;
    reg [0:0] redist36_sync_together246_aunroll_x_in_c0_eni47_37_tpl_3_delay_1;
    reg [0:0] redist37_sync_together246_aunroll_x_in_c0_eni47_38_tpl_3_q;
    reg [0:0] redist37_sync_together246_aunroll_x_in_c0_eni47_38_tpl_3_delay_0;
    reg [0:0] redist37_sync_together246_aunroll_x_in_c0_eni47_38_tpl_3_delay_1;
    reg [0:0] redist39_sync_together246_aunroll_x_in_c0_eni47_40_tpl_3_q;
    reg [0:0] redist39_sync_together246_aunroll_x_in_c0_eni47_40_tpl_3_delay_0;
    reg [0:0] redist39_sync_together246_aunroll_x_in_c0_eni47_40_tpl_3_delay_1;
    reg [0:0] redist40_sync_together246_aunroll_x_in_c0_eni47_41_tpl_3_q;
    reg [0:0] redist40_sync_together246_aunroll_x_in_c0_eni47_41_tpl_3_delay_0;
    reg [0:0] redist40_sync_together246_aunroll_x_in_c0_eni47_41_tpl_3_delay_1;
    reg [0:0] redist41_sync_together246_aunroll_x_in_c0_eni47_42_tpl_3_q;
    reg [0:0] redist41_sync_together246_aunroll_x_in_c0_eni47_42_tpl_3_delay_0;
    reg [0:0] redist41_sync_together246_aunroll_x_in_c0_eni47_42_tpl_3_delay_1;
    reg [0:0] redist45_sync_together246_aunroll_x_in_c0_eni47_46_tpl_3_q;
    reg [0:0] redist45_sync_together246_aunroll_x_in_c0_eni47_46_tpl_3_delay_0;
    reg [0:0] redist45_sync_together246_aunroll_x_in_c0_eni47_46_tpl_3_delay_1;
    reg [0:0] redist47_sync_together246_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist48_sync_together246_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist49_sync_together246_aunroll_x_in_i_valid_3_q;
    reg [31:0] redist50_bgTrunc_i_sub25_1_conv2d3x322_sel_x_b_1_q;
    reg [31:0] redist51_bgTrunc_i_add41_1_conv2d3x318_sel_x_b_1_q;
    reg [63:0] redist52_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi95_pop76_conv2d3x365_out_data_out_2_q;
    reg [63:0] redist52_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi95_pop76_conv2d3x365_out_data_out_2_delay_0;
    reg [63:0] redist53_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi95_pop76_conv2d3x365_out_data_out_3_q;
    reg [63:0] redist54_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi89_pop75_conv2d3x348_out_data_out_2_q;
    reg [63:0] redist54_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi89_pop75_conv2d3x348_out_data_out_2_delay_0;
    reg [63:0] redist55_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi89_pop75_conv2d3x348_out_data_out_3_q;
    reg [31:0] redist56_i_llvm_fpga_pop_i32_sub_2147_pop86_conv2d3x381_out_data_out_2_q;
    reg [31:0] redist56_i_llvm_fpga_pop_i32_sub_2147_pop86_conv2d3x381_out_data_out_2_delay_0;
    reg [31:0] redist57_i_llvm_fpga_pop_i32_sub_2147_pop86_conv2d3x381_out_data_out_3_q;
    reg [31:0] redist58_i_llvm_fpga_pop_i32_sub_1132_pop83_conv2d3x379_out_data_out_2_q;
    reg [31:0] redist58_i_llvm_fpga_pop_i32_sub_1132_pop83_conv2d3x379_out_data_out_2_delay_0;
    reg [31:0] redist59_i_llvm_fpga_pop_i32_sub_1132_pop83_conv2d3x379_out_data_out_3_q;
    reg [31:0] redist60_i_llvm_fpga_pop_i32_stride_sync_buffer165_pop90_conv2d3x389_out_data_out_2_q;
    reg [31:0] redist60_i_llvm_fpga_pop_i32_stride_sync_buffer165_pop90_conv2d3x389_out_data_out_2_delay_0;
    reg [31:0] redist61_i_llvm_fpga_pop_i32_stride_sync_buffer165_pop90_conv2d3x389_out_data_out_3_q;
    reg [31:0] redist62_i_llvm_fpga_pop_i32_pad_sync_buffer169_pop91_conv2d3x391_out_data_out_2_q;
    reg [31:0] redist62_i_llvm_fpga_pop_i32_pad_sync_buffer169_pop91_conv2d3x391_out_data_out_2_delay_0;
    reg [31:0] redist63_i_llvm_fpga_pop_i32_pad_sync_buffer169_pop91_conv2d3x391_out_data_out_3_q;
    reg [31:0] redist64_i_llvm_fpga_pop_i32_mul56117_pop80_conv2d3x373_out_data_out_2_q;
    reg [31:0] redist64_i_llvm_fpga_pop_i32_mul56117_pop80_conv2d3x373_out_data_out_2_delay_0;
    reg [31:0] redist65_i_llvm_fpga_pop_i32_mul56117_pop80_conv2d3x373_out_data_out_3_q;
    reg [31:0] redist66_i_llvm_fpga_pop_i32_mul39_add4188_pop99_conv2d3x316_out_data_out_1_q;
    reg [31:0] redist67_i_llvm_fpga_pop_i32_mul39_add4188_pop99_conv2d3x316_out_data_out_2_q;
    reg [31:0] redist68_i_llvm_fpga_pop_i32_mul39_add4188_pop99_conv2d3x316_out_data_out_3_q;
    reg [31:0] redist69_i_llvm_fpga_pop_i32_mul32182_pop95_conv2d3x397_out_data_out_2_q;
    reg [31:0] redist69_i_llvm_fpga_pop_i32_mul32182_pop95_conv2d3x397_out_data_out_2_delay_0;
    reg [31:0] redist70_i_llvm_fpga_pop_i32_mul32182_pop95_conv2d3x397_out_data_out_3_q;
    reg [31:0] redist71_i_llvm_fpga_pop_i32_m_053_1_pop71_conv2d3x319_out_data_out_1_q;
    reg [31:0] redist72_i_llvm_fpga_pop_i32_m_053_1_pop71_conv2d3x319_out_data_out_2_q;
    reg [31:0] redist73_i_llvm_fpga_pop_i32_m_053_1_pop71_conv2d3x319_out_data_out_3_q;
    reg [31:0] redist74_i_llvm_fpga_pop_i32_j_061_pop24177_pop93_conv2d3x395_out_data_out_2_q;
    reg [31:0] redist74_i_llvm_fpga_pop_i32_j_061_pop24177_pop93_conv2d3x395_out_data_out_2_delay_0;
    reg [31:0] redist75_i_llvm_fpga_pop_i32_j_061_pop24177_pop93_conv2d3x395_out_data_out_3_q;
    reg [31:0] redist76_i_llvm_fpga_pop_i32_inc50185_pop96_conv2d3x399_out_data_out_2_q;
    reg [31:0] redist76_i_llvm_fpga_pop_i32_inc50185_pop96_conv2d3x399_out_data_out_2_delay_0;
    reg [31:0] redist77_i_llvm_fpga_pop_i32_inc50185_pop96_conv2d3x399_out_data_out_3_q;
    reg [31:0] redist78_i_llvm_fpga_pop_i32_add35_1187_pop98_conv2d3x328_out_data_out_2_q;
    reg [31:0] redist78_i_llvm_fpga_pop_i32_add35_1187_pop98_conv2d3x328_out_data_out_2_delay_0;
    reg [31:0] redist79_i_llvm_fpga_pop_i32_add35_1187_pop98_conv2d3x328_out_data_out_3_q;
    reg [31:0] redist80_i_llvm_fpga_pop_i32_add24189_pop100_conv2d3x320_out_data_out_1_q;
    reg [31:0] redist81_i_llvm_fpga_pop_i32_add24189_pop100_conv2d3x320_out_data_out_2_q;
    reg [31:0] redist82_i_llvm_fpga_pop_i32_add24189_pop100_conv2d3x320_out_data_out_3_q;
    reg [31:0] redist83_i_llvm_fpga_pop_i32_add112_pop79_conv2d3x371_out_data_out_2_q;
    reg [31:0] redist83_i_llvm_fpga_pop_i32_add112_pop79_conv2d3x371_out_data_out_2_delay_0;
    reg [31:0] redist84_i_llvm_fpga_pop_i32_add112_pop79_conv2d3x371_out_data_out_3_q;
    reg [0:0] redist85_i_llvm_fpga_pop_i1_pop97_conv2d3x3101_out_data_out_2_q;
    reg [0:0] redist85_i_llvm_fpga_pop_i1_pop97_conv2d3x3101_out_data_out_2_delay_0;
    reg [0:0] redist86_i_llvm_fpga_pop_i1_pop97_conv2d3x3101_out_data_out_3_q;
    reg [0:0] redist87_i_llvm_fpga_pop_i1_notcmp81107_pop78_conv2d3x369_out_data_out_2_q;
    reg [0:0] redist87_i_llvm_fpga_pop_i1_notcmp81107_pop78_conv2d3x369_out_data_out_2_delay_0;
    reg [0:0] redist88_i_llvm_fpga_pop_i1_notcmp81107_pop78_conv2d3x369_out_data_out_3_q;
    reg [0:0] redist89_i_llvm_fpga_pop_i1_notcmp77162_pop89_conv2d3x387_out_data_out_2_q;
    reg [0:0] redist89_i_llvm_fpga_pop_i1_notcmp77162_pop89_conv2d3x387_out_data_out_2_delay_0;
    reg [0:0] redist90_i_llvm_fpga_pop_i1_notcmp77162_pop89_conv2d3x387_out_data_out_3_q;
    reg [0:0] redist91_i_llvm_fpga_pop_i1_notcmp73173_pop92_conv2d3x393_out_data_out_2_q;
    reg [0:0] redist91_i_llvm_fpga_pop_i1_notcmp73173_pop92_conv2d3x393_out_data_out_2_delay_0;
    reg [0:0] redist92_i_llvm_fpga_pop_i1_notcmp73173_pop92_conv2d3x393_out_data_out_3_q;
    reg [0:0] redist93_i_llvm_fpga_pop_i1_cmp27_2157_pop88_conv2d3x385_out_data_out_2_q;
    reg [0:0] redist93_i_llvm_fpga_pop_i1_cmp27_2157_pop88_conv2d3x385_out_data_out_2_delay_0;
    reg [0:0] redist94_i_llvm_fpga_pop_i1_cmp27_2157_pop88_conv2d3x385_out_data_out_3_q;
    reg [0:0] redist95_i_llvm_fpga_pop_i1_cmp27_1142_pop85_conv2d3x337_out_data_out_2_q;
    reg [0:0] redist95_i_llvm_fpga_pop_i1_cmp27_1142_pop85_conv2d3x337_out_data_out_2_delay_0;
    reg [0:0] redist96_i_llvm_fpga_pop_i1_cmp27_1142_pop85_conv2d3x337_out_data_out_3_q;
    reg [0:0] redist97_i_llvm_fpga_pop_i1_cmp27127_pop82_conv2d3x377_out_data_out_2_q;
    reg [0:0] redist97_i_llvm_fpga_pop_i1_cmp27127_pop82_conv2d3x377_out_data_out_2_delay_0;
    reg [0:0] redist98_i_llvm_fpga_pop_i1_cmp27127_pop82_conv2d3x377_out_data_out_3_q;
    reg [0:0] redist99_i_llvm_fpga_pop_i1_cmp26_2152_pop87_conv2d3x383_out_data_out_2_q;
    reg [0:0] redist99_i_llvm_fpga_pop_i1_cmp26_2152_pop87_conv2d3x383_out_data_out_2_delay_0;
    reg [0:0] redist100_i_llvm_fpga_pop_i1_cmp26_2152_pop87_conv2d3x383_out_data_out_3_q;
    reg [0:0] redist101_i_llvm_fpga_pop_i1_cmp26_1137_pop84_conv2d3x334_out_data_out_2_q;
    reg [0:0] redist101_i_llvm_fpga_pop_i1_cmp26_1137_pop84_conv2d3x334_out_data_out_2_delay_0;
    reg [0:0] redist102_i_llvm_fpga_pop_i1_cmp26_1137_pop84_conv2d3x334_out_data_out_3_q;
    reg [0:0] redist103_i_llvm_fpga_pop_i1_cmp26122_pop81_conv2d3x375_out_data_out_2_q;
    reg [0:0] redist103_i_llvm_fpga_pop_i1_cmp26122_pop81_conv2d3x375_out_data_out_2_delay_0;
    reg [0:0] redist104_i_llvm_fpga_pop_i1_cmp26122_pop81_conv2d3x375_out_data_out_3_q;
    reg [31:0] redist105_i_llvm_fpga_pop_f32_lm25101_pop77_conv2d3x367_out_data_out_2_q;
    reg [31:0] redist105_i_llvm_fpga_pop_f32_lm25101_pop77_conv2d3x367_out_data_out_2_delay_0;
    reg [31:0] redist106_i_llvm_fpga_pop_f32_lm25101_pop77_conv2d3x367_out_data_out_3_q;
    wire redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_mem_reset0;
    wire [63:0] redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_mem_ia;
    wire [0:0] redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_mem_aa;
    wire [0:0] redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_mem_ab;
    wire [63:0] redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_mem_iq;
    wire [63:0] redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_mem_q;
    wire [0:0] redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_rdcnt_i;
    reg [0:0] redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_cmpReg_q;
    wire [0:0] redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_notEnable_q;
    wire [0:0] redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_sticky_ena_q;
    wire [0:0] redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_enaAnd_q;
    wire redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_mem_reset0;
    wire [63:0] redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_mem_ia;
    wire [0:0] redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_mem_aa;
    wire [0:0] redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_mem_ab;
    wire [63:0] redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_mem_iq;
    wire [63:0] redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_mem_q;
    wire [0:0] redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_rdcnt_i;
    reg [0:0] redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_cmpReg_q;
    wire [0:0] redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_notEnable_q;
    wire [0:0] redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_sticky_ena_q;
    wire [0:0] redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_enaAnd_q;
    wire redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_mem_reset0;
    wire [31:0] redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_mem_ia;
    wire [0:0] redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_mem_aa;
    wire [0:0] redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_mem_ab;
    wire [31:0] redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_mem_iq;
    wire [31:0] redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_mem_q;
    wire [0:0] redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_rdcnt_i;
    reg [0:0] redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_cmpReg_q;
    wire [0:0] redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_notEnable_q;
    wire [0:0] redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_sticky_ena_q;
    wire [0:0] redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_enaAnd_q;
    wire redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_mem_reset0;
    wire [31:0] redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_mem_ia;
    wire [0:0] redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_mem_aa;
    wire [0:0] redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_mem_ab;
    wire [31:0] redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_mem_iq;
    wire [31:0] redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_mem_q;
    wire [0:0] redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_rdcnt_i;
    reg [0:0] redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_cmpReg_q;
    wire [0:0] redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_notEnable_q;
    wire [0:0] redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_sticky_ena_q;
    wire [0:0] redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_enaAnd_q;
    wire redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_mem_reset0;
    wire [31:0] redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_mem_ia;
    wire [0:0] redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_mem_aa;
    wire [0:0] redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_mem_ab;
    wire [31:0] redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_mem_iq;
    wire [31:0] redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_mem_q;
    wire [0:0] redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_rdcnt_i;
    reg [0:0] redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_cmpReg_q;
    wire [0:0] redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_notEnable_q;
    wire [0:0] redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_sticky_ena_q;
    wire [0:0] redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_enaAnd_q;
    wire redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_mem_reset0;
    wire [31:0] redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_mem_ia;
    wire [0:0] redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_mem_aa;
    wire [0:0] redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_mem_ab;
    wire [31:0] redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_mem_iq;
    wire [31:0] redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_mem_q;
    wire [0:0] redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_rdcnt_i;
    reg [0:0] redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_cmpReg_q;
    wire [0:0] redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_notEnable_q;
    wire [0:0] redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_sticky_ena_q;
    wire [0:0] redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_enaAnd_q;
    wire redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_mem_reset0;
    wire [31:0] redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_mem_ia;
    wire [0:0] redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_mem_aa;
    wire [0:0] redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_mem_ab;
    wire [31:0] redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_mem_iq;
    wire [31:0] redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_mem_q;
    wire [0:0] redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_rdcnt_i;
    reg [0:0] redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_cmpReg_q;
    wire [0:0] redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_notEnable_q;
    wire [0:0] redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_sticky_ena_q;
    wire [0:0] redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_enaAnd_q;
    wire redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_mem_reset0;
    wire [63:0] redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_mem_ia;
    wire [0:0] redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_mem_aa;
    wire [0:0] redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_mem_ab;
    wire [63:0] redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_mem_iq;
    wire [63:0] redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_mem_q;
    wire [0:0] redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_rdcnt_i;
    reg [0:0] redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_cmpReg_q;
    wire [0:0] redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_notEnable_q;
    wire [0:0] redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_sticky_ena_q;
    wire [0:0] redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_enaAnd_q;
    wire redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_mem_reset0;
    wire [63:0] redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_mem_ia;
    wire [0:0] redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_mem_aa;
    wire [0:0] redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_mem_ab;
    wire [63:0] redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_mem_iq;
    wire [63:0] redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_mem_q;
    wire [0:0] redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_rdcnt_i;
    reg [0:0] redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_cmpReg_q;
    wire [0:0] redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_notEnable_q;
    wire [0:0] redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_sticky_ena_q;
    wire [0:0] redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_enaAnd_q;
    wire redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_mem_reset0;
    wire [31:0] redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_mem_ia;
    wire [0:0] redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_mem_aa;
    wire [0:0] redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_mem_ab;
    wire [31:0] redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_mem_iq;
    wire [31:0] redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_mem_q;
    wire [0:0] redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_rdcnt_i;
    reg [0:0] redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_cmpReg_q;
    wire [0:0] redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_notEnable_q;
    wire [0:0] redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_sticky_ena_q;
    wire [0:0] redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_enaAnd_q;
    wire redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_mem_reset0;
    wire [31:0] redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_mem_ia;
    wire [0:0] redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_mem_aa;
    wire [0:0] redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_mem_ab;
    wire [31:0] redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_mem_iq;
    wire [31:0] redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_mem_q;
    wire [0:0] redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_rdcnt_i;
    reg [0:0] redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_cmpReg_q;
    wire [0:0] redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_notEnable_q;
    wire [0:0] redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_sticky_ena_q;
    wire [0:0] redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist47_sync_together246_aunroll_x_in_i_valid_1(DELAY,370)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_sync_together246_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist47_sync_together246_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist48_sync_together246_aunroll_x_in_i_valid_2(DELAY,371)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_sync_together246_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist48_sync_together246_aunroll_x_in_i_valid_2_q <= $unsigned(redist47_sync_together246_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist49_sync_together246_aunroll_x_in_i_valid_3(DELAY,372)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_sync_together246_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist49_sync_together246_aunroll_x_in_i_valid_3_q <= $unsigned(redist48_sync_together246_aunroll_x_in_i_valid_2_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // leftShiftStage0Idx1Rng1_uid311_i_cleanups_shl47_conv2d3x30_shift_x(BITSELECT,310)@4
    assign leftShiftStage0Idx1Rng1_uid311_i_cleanups_shl47_conv2d3x30_shift_x_in = i_llvm_fpga_pop_i2_cleanups46_pop74_conv2d3x34_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid311_i_cleanups_shl47_conv2d3x30_shift_x_b = leftShiftStage0Idx1Rng1_uid311_i_cleanups_shl47_conv2d3x30_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid312_i_cleanups_shl47_conv2d3x30_shift_x(BITJOIN,311)@4
    assign leftShiftStage0Idx1_uid312_i_cleanups_shl47_conv2d3x30_shift_x_q = {leftShiftStage0Idx1Rng1_uid311_i_cleanups_shl47_conv2d3x30_shift_x_b, GND_q};

    // leftShiftStage0_uid314_i_cleanups_shl47_conv2d3x30_shift_x(MUX,313)@4
    assign leftShiftStage0_uid314_i_cleanups_shl47_conv2d3x30_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid314_i_cleanups_shl47_conv2d3x30_shift_x_s or i_llvm_fpga_pop_i2_cleanups46_pop74_conv2d3x34_out_data_out or leftShiftStage0Idx1_uid312_i_cleanups_shl47_conv2d3x30_shift_x_q)
    begin
        unique case (leftShiftStage0_uid314_i_cleanups_shl47_conv2d3x30_shift_x_s)
            1'b0 : leftShiftStage0_uid314_i_cleanups_shl47_conv2d3x30_shift_x_q = i_llvm_fpga_pop_i2_cleanups46_pop74_conv2d3x34_out_data_out;
            1'b1 : leftShiftStage0_uid314_i_cleanups_shl47_conv2d3x30_shift_x_q = leftShiftStage0Idx1_uid312_i_cleanups_shl47_conv2d3x30_shift_x_q;
            default : leftShiftStage0_uid314_i_cleanups_shl47_conv2d3x30_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl47_conv2d3x37_vt_select_1(BITSELECT,89)@4
    assign i_cleanups_shl47_conv2d3x37_vt_select_1_b = leftShiftStage0_uid314_i_cleanups_shl47_conv2d3x30_shift_x_q[1:1];

    // i_cleanups_shl47_conv2d3x37_vt_join(BITJOIN,88)@4
    assign i_cleanups_shl47_conv2d3x37_vt_join_q = {i_cleanups_shl47_conv2d3x37_vt_select_1_b, GND_q};

    // i_first_cleanup_xor49_conv2d3x36(LOGICAL,94)@4
    assign i_first_cleanup_xor49_conv2d3x36_q = i_first_cleanup48_conv2d3x35_sel_x_b ^ VCC_q;

    // i_notcmp39_conv2d3x359(LOGICAL,182)@4
    assign i_notcmp39_conv2d3x359_q = i_unnamed_conv2d3x358_q ^ VCC_q;

    // i_or50_conv2d3x361(LOGICAL,183)@4
    assign i_or50_conv2d3x361_q = i_notcmp39_conv2d3x359_q | i_first_cleanup_xor49_conv2d3x36_q;

    // i_next_cleanups51_conv2d3x362(MUX,178)@4
    assign i_next_cleanups51_conv2d3x362_s = i_or50_conv2d3x361_q;
    always @(i_next_cleanups51_conv2d3x362_s or i_llvm_fpga_pop_i2_cleanups46_pop74_conv2d3x34_out_data_out or i_cleanups_shl47_conv2d3x37_vt_join_q)
    begin
        unique case (i_next_cleanups51_conv2d3x362_s)
            1'b0 : i_next_cleanups51_conv2d3x362_q = i_llvm_fpga_pop_i2_cleanups46_pop74_conv2d3x34_out_data_out;
            1'b1 : i_next_cleanups51_conv2d3x362_q = i_cleanups_shl47_conv2d3x37_vt_join_q;
            default : i_next_cleanups51_conv2d3x362_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups46_push74_conv2d3x363(BLACKBOX,154)@4
    // out out_feedback_out_74@20000000
    // out out_feedback_valid_out_74@20000000
    conv2d3x3_i_llvm_fpga_push_i2_cleanups46_push74_0 thei_llvm_fpga_push_i2_cleanups46_push74_conv2d3x363 (
        .in_data_in(i_next_cleanups51_conv2d3x362_q),
        .in_feedback_stall_in_74(i_llvm_fpga_pop_i2_cleanups46_pop74_conv2d3x34_out_feedback_stall_out_74),
        .in_keep_going43(i_llvm_fpga_pipeline_keep_going43_conv2d3x38_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist49_sync_together246_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_74(i_llvm_fpga_push_i2_cleanups46_push74_conv2d3x363_out_feedback_out_74),
        .out_feedback_valid_out_74(i_llvm_fpga_push_i2_cleanups46_push74_conv2d3x363_out_feedback_valid_out_74),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_1169(CONSTANT,74)
    assign c_i2_1169_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups46_pop74_conv2d3x34(BLACKBOX,122)@4
    // out out_feedback_stall_out_74@20000000
    conv2d3x3_i_llvm_fpga_pop_i2_cleanups46_pop74_0 thei_llvm_fpga_pop_i2_cleanups46_pop74_conv2d3x34 (
        .in_data_in(c_i2_1169_q),
        .in_dir(redist0_sync_together246_aunroll_x_in_c0_eni47_1_tpl_3_q),
        .in_feedback_in_74(i_llvm_fpga_push_i2_cleanups46_push74_conv2d3x363_out_feedback_out_74),
        .in_feedback_valid_in_74(i_llvm_fpga_push_i2_cleanups46_push74_conv2d3x363_out_feedback_valid_out_74),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist49_sync_together246_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups46_pop74_conv2d3x34_out_data_out),
        .out_feedback_stall_out_74(i_llvm_fpga_pop_i2_cleanups46_pop74_conv2d3x34_out_feedback_stall_out_74),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup48_conv2d3x35_sel_x(BITSELECT,225)@4
    assign i_first_cleanup48_conv2d3x35_sel_x_b = i_llvm_fpga_pop_i2_cleanups46_pop74_conv2d3x34_out_data_out[0:0];

    // c_i3_1177(CONSTANT,79)
    assign c_i3_1177_q = $unsigned(3'b111);

    // i_fpga_indvars_iv_next89_conv2d3x356(ADD,96)@4
    assign i_fpga_indvars_iv_next89_conv2d3x356_a = {1'b0, i_llvm_fpga_pop_i3_fpga_indvars_iv88_pop70_conv2d3x353_out_data_out};
    assign i_fpga_indvars_iv_next89_conv2d3x356_b = {1'b0, c_i3_1177_q};
    assign i_fpga_indvars_iv_next89_conv2d3x356_o = $unsigned(i_fpga_indvars_iv_next89_conv2d3x356_a) + $unsigned(i_fpga_indvars_iv_next89_conv2d3x356_b);
    assign i_fpga_indvars_iv_next89_conv2d3x356_q = i_fpga_indvars_iv_next89_conv2d3x356_o[3:0];

    // bgTrunc_i_fpga_indvars_iv_next89_conv2d3x356_sel_x(BITSELECT,204)@4
    assign bgTrunc_i_fpga_indvars_iv_next89_conv2d3x356_sel_x_b = i_fpga_indvars_iv_next89_conv2d3x356_q[2:0];

    // i_llvm_fpga_push_i3_fpga_indvars_iv88_push70_conv2d3x357(BLACKBOX,169)@4
    // out out_feedback_out_70@20000000
    // out out_feedback_valid_out_70@20000000
    conv2d3x3_i_llvm_fpga_push_i3_fpga_indvars_iv88_push70_0 thei_llvm_fpga_push_i3_fpga_indvars_iv88_push70_conv2d3x357 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next89_conv2d3x356_sel_x_b),
        .in_feedback_stall_in_70(i_llvm_fpga_pop_i3_fpga_indvars_iv88_pop70_conv2d3x353_out_feedback_stall_out_70),
        .in_keep_going43(i_llvm_fpga_pipeline_keep_going43_conv2d3x38_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist49_sync_together246_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_70(i_llvm_fpga_push_i3_fpga_indvars_iv88_push70_conv2d3x357_out_feedback_out_70),
        .out_feedback_valid_out_70(i_llvm_fpga_push_i3_fpga_indvars_iv88_push70_conv2d3x357_out_feedback_valid_out_70),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i3_1175(CONSTANT,78)
    assign c_i3_1175_q = $unsigned(3'b001);

    // i_llvm_fpga_pop_i3_fpga_indvars_iv88_pop70_conv2d3x353(BLACKBOX,137)@4
    // out out_feedback_stall_out_70@20000000
    conv2d3x3_i_llvm_fpga_pop_i3_fpga_indvars_iv88_pop70_0 thei_llvm_fpga_pop_i3_fpga_indvars_iv88_pop70_conv2d3x353 (
        .in_data_in(c_i3_1175_q),
        .in_dir(redist0_sync_together246_aunroll_x_in_c0_eni47_1_tpl_3_q),
        .in_feedback_in_70(i_llvm_fpga_push_i3_fpga_indvars_iv88_push70_conv2d3x357_out_feedback_out_70),
        .in_feedback_valid_in_70(i_llvm_fpga_push_i3_fpga_indvars_iv88_push70_conv2d3x357_out_feedback_valid_out_70),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist49_sync_together246_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pop_i3_fpga_indvars_iv88_pop70_conv2d3x353_out_data_out),
        .out_feedback_stall_out_70(i_llvm_fpga_pop_i3_fpga_indvars_iv88_pop70_conv2d3x353_out_feedback_stall_out_70),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond90_conv2d3x354_cmp_nsign(LOGICAL,306)@4
    assign i_exitcond90_conv2d3x354_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i3_fpga_indvars_iv88_pop70_conv2d3x353_out_data_out[2:2]));

    // i_llvm_fpga_push_i1_push94_conv2d3x342(BLACKBOX,152)@4
    // out out_feedback_out_94@20000000
    // out out_feedback_valid_out_94@20000000
    conv2d3x3_i_llvm_fpga_push_i1_push94_0 thei_llvm_fpga_push_i1_push94_conv2d3x342 (
        .in_data_in(i_llvm_fpga_pop_i1_pop94_conv2d3x341_out_data_out),
        .in_feedback_stall_in_94(i_llvm_fpga_pop_i1_pop94_conv2d3x341_out_feedback_stall_out_94),
        .in_keep_going43(i_llvm_fpga_pipeline_keep_going43_conv2d3x38_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist49_sync_together246_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_94(i_llvm_fpga_push_i1_push94_conv2d3x342_out_feedback_out_94),
        .out_feedback_valid_out_94(i_llvm_fpga_push_i1_push94_conv2d3x342_out_feedback_valid_out_94),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together246_aunroll_x_in_c0_eni47_7_tpl_3(DELAY,329)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together246_aunroll_x_in_c0_eni47_7_tpl_3_delay_0 <= '0;
            redist6_sync_together246_aunroll_x_in_c0_eni47_7_tpl_3_delay_1 <= '0;
            redist6_sync_together246_aunroll_x_in_c0_eni47_7_tpl_3_q <= '0;
        end
        else
        begin
            redist6_sync_together246_aunroll_x_in_c0_eni47_7_tpl_3_delay_0 <= $unsigned(in_c0_eni47_7_tpl);
            redist6_sync_together246_aunroll_x_in_c0_eni47_7_tpl_3_delay_1 <= redist6_sync_together246_aunroll_x_in_c0_eni47_7_tpl_3_delay_0;
            redist6_sync_together246_aunroll_x_in_c0_eni47_7_tpl_3_q <= redist6_sync_together246_aunroll_x_in_c0_eni47_7_tpl_3_delay_1;
        end
    end

    // i_llvm_fpga_pop_i1_pop94_conv2d3x341(BLACKBOX,120)@4
    // out out_feedback_stall_out_94@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_pop94_0 thei_llvm_fpga_pop_i1_pop94_conv2d3x341 (
        .in_data_in(redist6_sync_together246_aunroll_x_in_c0_eni47_7_tpl_3_q),
        .in_dir(redist0_sync_together246_aunroll_x_in_c0_eni47_1_tpl_3_q),
        .in_feedback_in_94(i_llvm_fpga_push_i1_push94_conv2d3x342_out_feedback_out_94),
        .in_feedback_valid_in_94(i_llvm_fpga_push_i1_push94_conv2d3x342_out_feedback_valid_out_94),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist49_sync_together246_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop94_conv2d3x341_out_data_out),
        .out_feedback_stall_out_94(i_llvm_fpga_pop_i1_pop94_conv2d3x341_out_feedback_stall_out_94),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d3x358(LOGICAL,190)@4
    assign i_unnamed_conv2d3x358_q = i_llvm_fpga_pop_i1_pop94_conv2d3x341_out_data_out & i_exitcond90_conv2d3x354_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond53_conv2d3x360(BLACKBOX,151)@4
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    conv2d3x3_i_llvm_fpga_push_i1_notexitcond53_0 thei_llvm_fpga_push_i1_notexitcond53_conv2d3x360 (
        .in_data_in(i_unnamed_conv2d3x358_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going43_conv2d3x38_out_not_exitcond_stall_out),
        .in_first_cleanup48(i_first_cleanup48_conv2d3x35_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist49_sync_together246_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_notexitcond53_conv2d3x360_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_notexitcond53_conv2d3x360_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,238)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist48_sync_together246_aunroll_x_in_i_valid_2_q);
        end
    end

    // rightShiftStage0Idx1Rng1_uid318_i_next_initerations42_conv2d3x30_shift_x(BITSELECT,317)@4
    assign rightShiftStage0Idx1Rng1_uid318_i_next_initerations42_conv2d3x30_shift_x_b = i_llvm_fpga_pop_i2_initerations41_pop73_conv2d3x311_out_data_out[1:1];

    // rightShiftStage0Idx1_uid320_i_next_initerations42_conv2d3x30_shift_x(BITJOIN,319)@4
    assign rightShiftStage0Idx1_uid320_i_next_initerations42_conv2d3x30_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid318_i_next_initerations42_conv2d3x30_shift_x_b};

    // valid_fanout_reg1(REG,236)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist48_sync_together246_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg2(REG,237)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist48_sync_together246_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i2_initerations41_push73_conv2d3x313(BLACKBOX,155)@4
    // out out_feedback_out_73@20000000
    // out out_feedback_valid_out_73@20000000
    conv2d3x3_i_llvm_fpga_push_i2_initerations41_push73_0 thei_llvm_fpga_push_i2_initerations41_push73_conv2d3x313 (
        .in_data_in(i_next_initerations42_conv2d3x312_vt_join_q),
        .in_feedback_stall_in_73(i_llvm_fpga_pop_i2_initerations41_pop73_conv2d3x311_out_feedback_stall_out_73),
        .in_keep_going43(i_llvm_fpga_pipeline_keep_going43_conv2d3x38_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_73(i_llvm_fpga_push_i2_initerations41_push73_conv2d3x313_out_feedback_out_73),
        .out_feedback_valid_out_73(i_llvm_fpga_push_i2_initerations41_push73_conv2d3x313_out_feedback_valid_out_73),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations41_pop73_conv2d3x311(BLACKBOX,123)@4
    // out out_feedback_stall_out_73@20000000
    conv2d3x3_i_llvm_fpga_pop_i2_initerations41_pop73_0 thei_llvm_fpga_pop_i2_initerations41_pop73_conv2d3x311 (
        .in_data_in(c_i2_1169_q),
        .in_dir(redist0_sync_together246_aunroll_x_in_c0_eni47_1_tpl_3_q),
        .in_feedback_in_73(i_llvm_fpga_push_i2_initerations41_push73_conv2d3x313_out_feedback_out_73),
        .in_feedback_valid_in_73(i_llvm_fpga_push_i2_initerations41_push73_conv2d3x313_out_feedback_valid_out_73),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations41_pop73_conv2d3x311_out_data_out),
        .out_feedback_stall_out_73(i_llvm_fpga_pop_i2_initerations41_pop73_conv2d3x311_out_feedback_stall_out_73),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid322_i_next_initerations42_conv2d3x30_shift_x(MUX,321)@4
    assign rightShiftStage0_uid322_i_next_initerations42_conv2d3x30_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid322_i_next_initerations42_conv2d3x30_shift_x_s or i_llvm_fpga_pop_i2_initerations41_pop73_conv2d3x311_out_data_out or rightShiftStage0Idx1_uid320_i_next_initerations42_conv2d3x30_shift_x_q)
    begin
        unique case (rightShiftStage0_uid322_i_next_initerations42_conv2d3x30_shift_x_s)
            1'b0 : rightShiftStage0_uid322_i_next_initerations42_conv2d3x30_shift_x_q = i_llvm_fpga_pop_i2_initerations41_pop73_conv2d3x311_out_data_out;
            1'b1 : rightShiftStage0_uid322_i_next_initerations42_conv2d3x30_shift_x_q = rightShiftStage0Idx1_uid320_i_next_initerations42_conv2d3x30_shift_x_q;
            default : rightShiftStage0_uid322_i_next_initerations42_conv2d3x30_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations42_conv2d3x312_vt_select_0(BITSELECT,181)@4
    assign i_next_initerations42_conv2d3x312_vt_select_0_b = rightShiftStage0_uid322_i_next_initerations42_conv2d3x30_shift_x_q[0:0];

    // i_next_initerations42_conv2d3x312_vt_join(BITJOIN,180)@4
    assign i_next_initerations42_conv2d3x312_vt_join_q = {GND_q, i_next_initerations42_conv2d3x312_vt_select_0_b};

    // i_last_initeration44_conv2d3x314_sel_x(BITSELECT,228)@4
    assign i_last_initeration44_conv2d3x314_sel_x_b = i_next_initerations42_conv2d3x312_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration45_conv2d3x315(BLACKBOX,147)@4
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    conv2d3x3_i_llvm_fpga_push_i1_lastiniteration45_0 thei_llvm_fpga_push_i1_lastiniteration45_conv2d3x315 (
        .in_data_in(i_last_initeration44_conv2d3x314_sel_x_b),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going43_conv2d3x38_out_initeration_stall_out),
        .in_keep_going43(i_llvm_fpga_pipeline_keep_going43_conv2d3x38_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_lastiniteration45_conv2d3x315_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_lastiniteration45_conv2d3x315_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together246_aunroll_x_in_c0_eni47_1_tpl_3(DELAY,323)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together246_aunroll_x_in_c0_eni47_1_tpl_3_delay_0 <= '0;
            redist0_sync_together246_aunroll_x_in_c0_eni47_1_tpl_3_delay_1 <= '0;
            redist0_sync_together246_aunroll_x_in_c0_eni47_1_tpl_3_q <= '0;
        end
        else
        begin
            redist0_sync_together246_aunroll_x_in_c0_eni47_1_tpl_3_delay_0 <= $unsigned(in_c0_eni47_1_tpl);
            redist0_sync_together246_aunroll_x_in_c0_eni47_1_tpl_3_delay_1 <= redist0_sync_together246_aunroll_x_in_c0_eni47_1_tpl_3_delay_0;
            redist0_sync_together246_aunroll_x_in_c0_eni47_1_tpl_3_q <= redist0_sync_together246_aunroll_x_in_c0_eni47_1_tpl_3_delay_1;
        end
    end

    // i_llvm_fpga_pipeline_keep_going43_conv2d3x38(BLACKBOX,109)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    conv2d3x3_i_llvm_fpga_pipeline_keep_going43_0 thei_llvm_fpga_pipeline_keep_going43_conv2d3x38 (
        .in_data_in(redist0_sync_together246_aunroll_x_in_c0_eni47_1_tpl_3_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration45_conv2d3x315_out_feedback_out_3),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration45_conv2d3x315_out_feedback_valid_out_3),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond53_conv2d3x360_out_feedback_out_4),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond53_conv2d3x360_out_feedback_valid_out_4),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist49_sync_together246_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going43_conv2d3x38_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going43_conv2d3x38_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going43_conv2d3x38_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going43_conv2d3x38_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going43_conv2d3x38_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going43_conv2d3x38_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,80)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv2d3x38_exiting_valid_out = i_llvm_fpga_pipeline_keep_going43_conv2d3x38_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv2d3x38_exiting_stall_out = i_llvm_fpga_pipeline_keep_going43_conv2d3x38_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,196)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going43_conv2d3x38_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,235)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist48_sync_together246_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_notEnable(LOGICAL,514)
    assign redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_nor(LOGICAL,515)
    assign redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_nor_q = ~ (redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_notEnable_q | redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_sticky_ena_q);

    // redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_cmpReg(REG,513)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_sticky_ena(REG,516)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_nor_q == 1'b1)
        begin
            redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_sticky_ena_q <= $unsigned(redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_cmpReg_q);
        end
    end

    // redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_enaAnd(LOGICAL,517)
    assign redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_enaAnd_q = redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_sticky_ena_q & VCC_q;

    // redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_rdcnt(COUNTER,511)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_rdcnt_i <= $unsigned(redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_rdcnt_q = redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_rdcnt_i[0:0];

    // redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_wraddr(REG,512)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_wraddr_q <= $unsigned(redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_rdcnt_q);
        end
    end

    // redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_mem(DUALMEM,510)
    assign redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_mem_ia = $unsigned(in_c0_eni47_47_tpl);
    assign redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_mem_aa = redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_wraddr_q;
    assign redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_mem_ab = redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_rdcnt_q;
    assign redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_mem_reset0 = ~ (resetn);
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
    ) redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_mem_dmem (
        .clocken1(redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_mem_aa),
        .data_a(redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_mem_ab),
        .q_b(redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_mem_iq),
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
    assign redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_mem_q = redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_mem_iq[31:0];

    // redist45_sync_together246_aunroll_x_in_c0_eni47_46_tpl_3(DELAY,368)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together246_aunroll_x_in_c0_eni47_46_tpl_3_delay_0 <= '0;
            redist45_sync_together246_aunroll_x_in_c0_eni47_46_tpl_3_delay_1 <= '0;
            redist45_sync_together246_aunroll_x_in_c0_eni47_46_tpl_3_q <= '0;
        end
        else
        begin
            redist45_sync_together246_aunroll_x_in_c0_eni47_46_tpl_3_delay_0 <= $unsigned(in_c0_eni47_46_tpl);
            redist45_sync_together246_aunroll_x_in_c0_eni47_46_tpl_3_delay_1 <= redist45_sync_together246_aunroll_x_in_c0_eni47_46_tpl_3_delay_0;
            redist45_sync_together246_aunroll_x_in_c0_eni47_46_tpl_3_q <= redist45_sync_together246_aunroll_x_in_c0_eni47_46_tpl_3_delay_1;
        end
    end

    // redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_notEnable(LOGICAL,506)
    assign redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_nor(LOGICAL,507)
    assign redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_nor_q = ~ (redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_notEnable_q | redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_sticky_ena_q);

    // redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_cmpReg(REG,505)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_sticky_ena(REG,508)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_nor_q == 1'b1)
        begin
            redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_sticky_ena_q <= $unsigned(redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_cmpReg_q);
        end
    end

    // redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_enaAnd(LOGICAL,509)
    assign redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_enaAnd_q = redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_sticky_ena_q & VCC_q;

    // redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_rdcnt(COUNTER,503)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_rdcnt_i <= $unsigned(redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_rdcnt_q = redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_rdcnt_i[0:0];

    // redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_wraddr(REG,504)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_wraddr_q <= $unsigned(redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_rdcnt_q);
        end
    end

    // redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_mem(DUALMEM,502)
    assign redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_mem_ia = $unsigned(in_c0_eni47_45_tpl);
    assign redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_mem_aa = redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_wraddr_q;
    assign redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_mem_ab = redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_rdcnt_q;
    assign redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_mem_reset0 = ~ (resetn);
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
    ) redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_mem_dmem (
        .clocken1(redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_mem_aa),
        .data_a(redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_mem_ab),
        .q_b(redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_mem_iq),
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
    assign redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_mem_q = redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_mem_iq[31:0];

    // redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_notEnable(LOGICAL,498)
    assign redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_nor(LOGICAL,499)
    assign redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_nor_q = ~ (redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_notEnable_q | redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_sticky_ena_q);

    // redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_cmpReg(REG,497)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_sticky_ena(REG,500)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_nor_q == 1'b1)
        begin
            redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_sticky_ena_q <= $unsigned(redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_cmpReg_q);
        end
    end

    // redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_enaAnd(LOGICAL,501)
    assign redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_enaAnd_q = redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_sticky_ena_q & VCC_q;

    // redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_rdcnt(COUNTER,495)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_rdcnt_i <= $unsigned(redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_rdcnt_q = redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_rdcnt_i[0:0];

    // redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_wraddr(REG,496)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_wraddr_q <= $unsigned(redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_rdcnt_q);
        end
    end

    // redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_mem(DUALMEM,494)
    assign redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_mem_ia = $unsigned(in_c0_eni47_44_tpl);
    assign redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_mem_aa = redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_wraddr_q;
    assign redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_mem_ab = redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_rdcnt_q;
    assign redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(64),
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
    ) redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_mem_dmem (
        .clocken1(redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_mem_aa),
        .data_a(redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_mem_ab),
        .q_b(redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_mem_iq),
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
    assign redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_mem_q = redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_mem_iq[63:0];

    // redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_notEnable(LOGICAL,490)
    assign redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_nor(LOGICAL,491)
    assign redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_nor_q = ~ (redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_notEnable_q | redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_sticky_ena_q);

    // redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_cmpReg(REG,489)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_sticky_ena(REG,492)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_nor_q == 1'b1)
        begin
            redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_sticky_ena_q <= $unsigned(redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_cmpReg_q);
        end
    end

    // redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_enaAnd(LOGICAL,493)
    assign redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_enaAnd_q = redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_sticky_ena_q & VCC_q;

    // redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_rdcnt(COUNTER,487)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_rdcnt_i <= $unsigned(redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_rdcnt_q = redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_rdcnt_i[0:0];

    // redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_wraddr(REG,488)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_wraddr_q <= $unsigned(redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_rdcnt_q);
        end
    end

    // redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_mem(DUALMEM,486)
    assign redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_mem_ia = $unsigned(in_c0_eni47_43_tpl);
    assign redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_mem_aa = redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_wraddr_q;
    assign redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_mem_ab = redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_rdcnt_q;
    assign redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(64),
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
    ) redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_mem_dmem (
        .clocken1(redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_mem_aa),
        .data_a(redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_mem_ab),
        .q_b(redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_mem_iq),
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
    assign redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_mem_q = redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_mem_iq[63:0];

    // redist41_sync_together246_aunroll_x_in_c0_eni47_42_tpl_3(DELAY,364)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together246_aunroll_x_in_c0_eni47_42_tpl_3_delay_0 <= '0;
            redist41_sync_together246_aunroll_x_in_c0_eni47_42_tpl_3_delay_1 <= '0;
            redist41_sync_together246_aunroll_x_in_c0_eni47_42_tpl_3_q <= '0;
        end
        else
        begin
            redist41_sync_together246_aunroll_x_in_c0_eni47_42_tpl_3_delay_0 <= $unsigned(in_c0_eni47_42_tpl);
            redist41_sync_together246_aunroll_x_in_c0_eni47_42_tpl_3_delay_1 <= redist41_sync_together246_aunroll_x_in_c0_eni47_42_tpl_3_delay_0;
            redist41_sync_together246_aunroll_x_in_c0_eni47_42_tpl_3_q <= redist41_sync_together246_aunroll_x_in_c0_eni47_42_tpl_3_delay_1;
        end
    end

    // redist40_sync_together246_aunroll_x_in_c0_eni47_41_tpl_3(DELAY,363)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together246_aunroll_x_in_c0_eni47_41_tpl_3_delay_0 <= '0;
            redist40_sync_together246_aunroll_x_in_c0_eni47_41_tpl_3_delay_1 <= '0;
            redist40_sync_together246_aunroll_x_in_c0_eni47_41_tpl_3_q <= '0;
        end
        else
        begin
            redist40_sync_together246_aunroll_x_in_c0_eni47_41_tpl_3_delay_0 <= $unsigned(in_c0_eni47_41_tpl);
            redist40_sync_together246_aunroll_x_in_c0_eni47_41_tpl_3_delay_1 <= redist40_sync_together246_aunroll_x_in_c0_eni47_41_tpl_3_delay_0;
            redist40_sync_together246_aunroll_x_in_c0_eni47_41_tpl_3_q <= redist40_sync_together246_aunroll_x_in_c0_eni47_41_tpl_3_delay_1;
        end
    end

    // redist39_sync_together246_aunroll_x_in_c0_eni47_40_tpl_3(DELAY,362)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together246_aunroll_x_in_c0_eni47_40_tpl_3_delay_0 <= '0;
            redist39_sync_together246_aunroll_x_in_c0_eni47_40_tpl_3_delay_1 <= '0;
            redist39_sync_together246_aunroll_x_in_c0_eni47_40_tpl_3_q <= '0;
        end
        else
        begin
            redist39_sync_together246_aunroll_x_in_c0_eni47_40_tpl_3_delay_0 <= $unsigned(in_c0_eni47_40_tpl);
            redist39_sync_together246_aunroll_x_in_c0_eni47_40_tpl_3_delay_1 <= redist39_sync_together246_aunroll_x_in_c0_eni47_40_tpl_3_delay_0;
            redist39_sync_together246_aunroll_x_in_c0_eni47_40_tpl_3_q <= redist39_sync_together246_aunroll_x_in_c0_eni47_40_tpl_3_delay_1;
        end
    end

    // redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_notEnable(LOGICAL,482)
    assign redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_nor(LOGICAL,483)
    assign redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_nor_q = ~ (redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_notEnable_q | redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_sticky_ena_q);

    // redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_cmpReg(REG,481)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_sticky_ena(REG,484)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_nor_q == 1'b1)
        begin
            redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_sticky_ena_q <= $unsigned(redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_cmpReg_q);
        end
    end

    // redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_enaAnd(LOGICAL,485)
    assign redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_enaAnd_q = redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_sticky_ena_q & VCC_q;

    // redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_rdcnt(COUNTER,479)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_rdcnt_i <= $unsigned(redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_rdcnt_q = redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_rdcnt_i[0:0];

    // redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_wraddr(REG,480)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_wraddr_q <= $unsigned(redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_rdcnt_q);
        end
    end

    // redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_mem(DUALMEM,478)
    assign redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_mem_ia = $unsigned(in_c0_eni47_39_tpl);
    assign redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_mem_aa = redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_wraddr_q;
    assign redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_mem_ab = redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_rdcnt_q;
    assign redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_mem_reset0 = ~ (resetn);
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
    ) redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_mem_dmem (
        .clocken1(redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_mem_aa),
        .data_a(redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_mem_ab),
        .q_b(redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_mem_iq),
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
    assign redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_mem_q = redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_mem_iq[31:0];

    // redist37_sync_together246_aunroll_x_in_c0_eni47_38_tpl_3(DELAY,360)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together246_aunroll_x_in_c0_eni47_38_tpl_3_delay_0 <= '0;
            redist37_sync_together246_aunroll_x_in_c0_eni47_38_tpl_3_delay_1 <= '0;
            redist37_sync_together246_aunroll_x_in_c0_eni47_38_tpl_3_q <= '0;
        end
        else
        begin
            redist37_sync_together246_aunroll_x_in_c0_eni47_38_tpl_3_delay_0 <= $unsigned(in_c0_eni47_38_tpl);
            redist37_sync_together246_aunroll_x_in_c0_eni47_38_tpl_3_delay_1 <= redist37_sync_together246_aunroll_x_in_c0_eni47_38_tpl_3_delay_0;
            redist37_sync_together246_aunroll_x_in_c0_eni47_38_tpl_3_q <= redist37_sync_together246_aunroll_x_in_c0_eni47_38_tpl_3_delay_1;
        end
    end

    // redist36_sync_together246_aunroll_x_in_c0_eni47_37_tpl_3(DELAY,359)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together246_aunroll_x_in_c0_eni47_37_tpl_3_delay_0 <= '0;
            redist36_sync_together246_aunroll_x_in_c0_eni47_37_tpl_3_delay_1 <= '0;
            redist36_sync_together246_aunroll_x_in_c0_eni47_37_tpl_3_q <= '0;
        end
        else
        begin
            redist36_sync_together246_aunroll_x_in_c0_eni47_37_tpl_3_delay_0 <= $unsigned(in_c0_eni47_37_tpl);
            redist36_sync_together246_aunroll_x_in_c0_eni47_37_tpl_3_delay_1 <= redist36_sync_together246_aunroll_x_in_c0_eni47_37_tpl_3_delay_0;
            redist36_sync_together246_aunroll_x_in_c0_eni47_37_tpl_3_q <= redist36_sync_together246_aunroll_x_in_c0_eni47_37_tpl_3_delay_1;
        end
    end

    // redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_notEnable(LOGICAL,474)
    assign redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_nor(LOGICAL,475)
    assign redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_nor_q = ~ (redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_notEnable_q | redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_sticky_ena_q);

    // redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_cmpReg(REG,473)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_sticky_ena(REG,476)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_nor_q == 1'b1)
        begin
            redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_sticky_ena_q <= $unsigned(redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_cmpReg_q);
        end
    end

    // redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_enaAnd(LOGICAL,477)
    assign redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_enaAnd_q = redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_sticky_ena_q & VCC_q;

    // redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_rdcnt(COUNTER,471)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_rdcnt_i <= $unsigned(redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_rdcnt_q = redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_rdcnt_i[0:0];

    // redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_wraddr(REG,472)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_wraddr_q <= $unsigned(redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_rdcnt_q);
        end
    end

    // redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_mem(DUALMEM,470)
    assign redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_mem_ia = $unsigned(in_c0_eni47_36_tpl);
    assign redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_mem_aa = redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_wraddr_q;
    assign redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_mem_ab = redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_rdcnt_q;
    assign redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_mem_reset0 = ~ (resetn);
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
    ) redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_mem_dmem (
        .clocken1(redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_mem_aa),
        .data_a(redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_mem_ab),
        .q_b(redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_mem_iq),
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
    assign redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_mem_q = redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_mem_iq[31:0];

    // redist34_sync_together246_aunroll_x_in_c0_eni47_35_tpl_3(DELAY,357)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together246_aunroll_x_in_c0_eni47_35_tpl_3_delay_0 <= '0;
            redist34_sync_together246_aunroll_x_in_c0_eni47_35_tpl_3_delay_1 <= '0;
            redist34_sync_together246_aunroll_x_in_c0_eni47_35_tpl_3_q <= '0;
        end
        else
        begin
            redist34_sync_together246_aunroll_x_in_c0_eni47_35_tpl_3_delay_0 <= $unsigned(in_c0_eni47_35_tpl);
            redist34_sync_together246_aunroll_x_in_c0_eni47_35_tpl_3_delay_1 <= redist34_sync_together246_aunroll_x_in_c0_eni47_35_tpl_3_delay_0;
            redist34_sync_together246_aunroll_x_in_c0_eni47_35_tpl_3_q <= redist34_sync_together246_aunroll_x_in_c0_eni47_35_tpl_3_delay_1;
        end
    end

    // redist33_sync_together246_aunroll_x_in_c0_eni47_34_tpl_3(DELAY,356)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together246_aunroll_x_in_c0_eni47_34_tpl_3_delay_0 <= '0;
            redist33_sync_together246_aunroll_x_in_c0_eni47_34_tpl_3_delay_1 <= '0;
            redist33_sync_together246_aunroll_x_in_c0_eni47_34_tpl_3_q <= '0;
        end
        else
        begin
            redist33_sync_together246_aunroll_x_in_c0_eni47_34_tpl_3_delay_0 <= $unsigned(in_c0_eni47_34_tpl);
            redist33_sync_together246_aunroll_x_in_c0_eni47_34_tpl_3_delay_1 <= redist33_sync_together246_aunroll_x_in_c0_eni47_34_tpl_3_delay_0;
            redist33_sync_together246_aunroll_x_in_c0_eni47_34_tpl_3_q <= redist33_sync_together246_aunroll_x_in_c0_eni47_34_tpl_3_delay_1;
        end
    end

    // redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_notEnable(LOGICAL,466)
    assign redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_nor(LOGICAL,467)
    assign redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_nor_q = ~ (redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_notEnable_q | redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_sticky_ena_q);

    // redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_cmpReg(REG,465)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_sticky_ena(REG,468)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_nor_q == 1'b1)
        begin
            redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_sticky_ena_q <= $unsigned(redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_cmpReg_q);
        end
    end

    // redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_enaAnd(LOGICAL,469)
    assign redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_enaAnd_q = redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_sticky_ena_q & VCC_q;

    // redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_rdcnt(COUNTER,463)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_rdcnt_i <= $unsigned(redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_rdcnt_q = redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_rdcnt_i[0:0];

    // redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_wraddr(REG,464)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_wraddr_q <= $unsigned(redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_rdcnt_q);
        end
    end

    // redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_mem(DUALMEM,462)
    assign redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_mem_ia = $unsigned(in_c0_eni47_33_tpl);
    assign redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_mem_aa = redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_wraddr_q;
    assign redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_mem_ab = redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_rdcnt_q;
    assign redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_mem_reset0 = ~ (resetn);
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
    ) redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_mem_dmem (
        .clocken1(redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_mem_aa),
        .data_a(redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_mem_ab),
        .q_b(redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_mem_iq),
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
    assign redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_mem_q = redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_mem_iq[31:0];

    // redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_notEnable(LOGICAL,458)
    assign redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_nor(LOGICAL,459)
    assign redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_nor_q = ~ (redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_notEnable_q | redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_sticky_ena_q);

    // redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_cmpReg(REG,457)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_sticky_ena(REG,460)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_nor_q == 1'b1)
        begin
            redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_sticky_ena_q <= $unsigned(redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_cmpReg_q);
        end
    end

    // redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_enaAnd(LOGICAL,461)
    assign redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_enaAnd_q = redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_sticky_ena_q & VCC_q;

    // redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_rdcnt(COUNTER,455)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_rdcnt_i <= $unsigned(redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_rdcnt_q = redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_rdcnt_i[0:0];

    // redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_wraddr(REG,456)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_wraddr_q <= $unsigned(redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_rdcnt_q);
        end
    end

    // redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_mem(DUALMEM,454)
    assign redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_mem_ia = $unsigned(in_c0_eni47_32_tpl);
    assign redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_mem_aa = redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_wraddr_q;
    assign redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_mem_ab = redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_rdcnt_q;
    assign redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_mem_reset0 = ~ (resetn);
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
    ) redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_mem_dmem (
        .clocken1(redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_mem_aa),
        .data_a(redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_mem_ab),
        .q_b(redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_mem_iq),
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
    assign redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_mem_q = redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_mem_iq[31:0];

    // redist30_sync_together246_aunroll_x_in_c0_eni47_31_tpl_3(DELAY,353)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together246_aunroll_x_in_c0_eni47_31_tpl_3_delay_0 <= '0;
            redist30_sync_together246_aunroll_x_in_c0_eni47_31_tpl_3_delay_1 <= '0;
            redist30_sync_together246_aunroll_x_in_c0_eni47_31_tpl_3_q <= '0;
        end
        else
        begin
            redist30_sync_together246_aunroll_x_in_c0_eni47_31_tpl_3_delay_0 <= $unsigned(in_c0_eni47_31_tpl);
            redist30_sync_together246_aunroll_x_in_c0_eni47_31_tpl_3_delay_1 <= redist30_sync_together246_aunroll_x_in_c0_eni47_31_tpl_3_delay_0;
            redist30_sync_together246_aunroll_x_in_c0_eni47_31_tpl_3_q <= redist30_sync_together246_aunroll_x_in_c0_eni47_31_tpl_3_delay_1;
        end
    end

    // redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_notEnable(LOGICAL,450)
    assign redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_nor(LOGICAL,451)
    assign redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_nor_q = ~ (redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_notEnable_q | redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_sticky_ena_q);

    // redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_cmpReg(REG,449)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_sticky_ena(REG,452)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_nor_q == 1'b1)
        begin
            redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_sticky_ena_q <= $unsigned(redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_cmpReg_q);
        end
    end

    // redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_enaAnd(LOGICAL,453)
    assign redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_enaAnd_q = redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_sticky_ena_q & VCC_q;

    // redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_rdcnt(COUNTER,447)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_rdcnt_i <= $unsigned(redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_rdcnt_q = redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_rdcnt_i[0:0];

    // redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_wraddr(REG,448)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_wraddr_q <= $unsigned(redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_rdcnt_q);
        end
    end

    // redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_mem(DUALMEM,446)
    assign redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_mem_ia = $unsigned(in_c0_eni47_30_tpl);
    assign redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_mem_aa = redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_wraddr_q;
    assign redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_mem_ab = redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_rdcnt_q;
    assign redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_mem_reset0 = ~ (resetn);
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
    ) redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_mem_dmem (
        .clocken1(redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_mem_aa),
        .data_a(redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_mem_ab),
        .q_b(redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_mem_iq),
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
    assign redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_mem_q = redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_mem_iq[31:0];

    // redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_notEnable(LOGICAL,442)
    assign redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_nor(LOGICAL,443)
    assign redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_nor_q = ~ (redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_notEnable_q | redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_sticky_ena_q);

    // redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_cmpReg(REG,441)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_sticky_ena(REG,444)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_nor_q == 1'b1)
        begin
            redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_sticky_ena_q <= $unsigned(redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_cmpReg_q);
        end
    end

    // redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_enaAnd(LOGICAL,445)
    assign redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_enaAnd_q = redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_sticky_ena_q & VCC_q;

    // redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_rdcnt(COUNTER,439)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_rdcnt_i <= $unsigned(redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_rdcnt_q = redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_rdcnt_i[0:0];

    // redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_wraddr(REG,440)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_wraddr_q <= $unsigned(redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_rdcnt_q);
        end
    end

    // redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_mem(DUALMEM,438)
    assign redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_mem_ia = $unsigned(in_c0_eni47_29_tpl);
    assign redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_mem_aa = redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_wraddr_q;
    assign redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_mem_ab = redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_rdcnt_q;
    assign redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(64),
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
    ) redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_mem_dmem (
        .clocken1(redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_mem_aa),
        .data_a(redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_mem_ab),
        .q_b(redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_mem_iq),
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
    assign redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_mem_q = redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_mem_iq[63:0];

    // redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_notEnable(LOGICAL,434)
    assign redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_nor(LOGICAL,435)
    assign redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_nor_q = ~ (redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_notEnable_q | redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_sticky_ena_q);

    // redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_cmpReg(REG,433)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_sticky_ena(REG,436)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_nor_q == 1'b1)
        begin
            redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_sticky_ena_q <= $unsigned(redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_cmpReg_q);
        end
    end

    // redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_enaAnd(LOGICAL,437)
    assign redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_enaAnd_q = redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_sticky_ena_q & VCC_q;

    // redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_rdcnt(COUNTER,431)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_rdcnt_i <= $unsigned(redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_rdcnt_q = redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_rdcnt_i[0:0];

    // redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_wraddr(REG,432)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_wraddr_q <= $unsigned(redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_rdcnt_q);
        end
    end

    // redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_mem(DUALMEM,430)
    assign redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_mem_ia = $unsigned(in_c0_eni47_28_tpl);
    assign redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_mem_aa = redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_wraddr_q;
    assign redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_mem_ab = redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_rdcnt_q;
    assign redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(64),
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
    ) redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_mem_dmem (
        .clocken1(redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_mem_aa),
        .data_a(redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_mem_ab),
        .q_b(redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_mem_iq),
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
    assign redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_mem_q = redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_mem_iq[63:0];

    // valid_fanout_reg56(REG,291)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg56_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg56_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg57(REG,292)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg57_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg57_q <= $unsigned(redist49_sync_together246_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor_conv2d3x310(REG,108)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor_conv2d3x310_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor_conv2d3x310_q <= i_llvm_fpga_pipeline_keep_going43_conv2d3x38_out_data_out;
        end
    end

    // redist86_i_llvm_fpga_pop_i1_pop97_conv2d3x3101_out_data_out_3(DELAY,409)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist86_i_llvm_fpga_pop_i1_pop97_conv2d3x3101_out_data_out_3_q <= '0;
        end
        else
        begin
            redist86_i_llvm_fpga_pop_i1_pop97_conv2d3x3101_out_data_out_3_q <= $unsigned(redist85_i_llvm_fpga_pop_i1_pop97_conv2d3x3101_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i1_push97_conv2d3x3102(BLACKBOX,153)@5
    // out out_feedback_out_97@20000000
    // out out_feedback_valid_out_97@20000000
    conv2d3x3_i_llvm_fpga_push_i1_push97_0 thei_llvm_fpga_push_i1_push97_conv2d3x3102 (
        .in_data_in(redist86_i_llvm_fpga_pop_i1_pop97_conv2d3x3101_out_data_out_3_q),
        .in_feedback_stall_in_97(i_llvm_fpga_pop_i1_pop97_conv2d3x3101_out_feedback_stall_out_97),
        .in_keep_going43_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg57_q),
        .out_data_out(),
        .out_feedback_out_97(i_llvm_fpga_push_i1_push97_conv2d3x3102_out_feedback_out_97),
        .out_feedback_valid_out_97(i_llvm_fpga_push_i1_push97_conv2d3x3102_out_feedback_valid_out_97),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor1208_conv2d3x32(REG,105)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor1208_conv2d3x32_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor1208_conv2d3x32_q <= in_c0_eni47_1_tpl;
        end
    end

    // redist26_sync_together246_aunroll_x_in_c0_eni47_27_tpl_1(DELAY,349)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together246_aunroll_x_in_c0_eni47_27_tpl_1_q <= '0;
        end
        else
        begin
            redist26_sync_together246_aunroll_x_in_c0_eni47_27_tpl_1_q <= $unsigned(in_c0_eni47_27_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_pop97_conv2d3x3101(BLACKBOX,121)@2
    // out out_feedback_stall_out_97@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_pop97_0 thei_llvm_fpga_pop_i1_pop97_conv2d3x3101 (
        .in_data_in(redist26_sync_together246_aunroll_x_in_c0_eni47_27_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor1208_conv2d3x32_q),
        .in_feedback_in_97(i_llvm_fpga_push_i1_push97_conv2d3x3102_out_feedback_out_97),
        .in_feedback_valid_in_97(i_llvm_fpga_push_i1_push97_conv2d3x3102_out_feedback_valid_out_97),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg56_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop97_conv2d3x3101_out_data_out),
        .out_feedback_stall_out_97(i_llvm_fpga_pop_i1_pop97_conv2d3x3101_out_feedback_stall_out_97),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist85_i_llvm_fpga_pop_i1_pop97_conv2d3x3101_out_data_out_2(DELAY,408)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist85_i_llvm_fpga_pop_i1_pop97_conv2d3x3101_out_data_out_2_delay_0 <= '0;
            redist85_i_llvm_fpga_pop_i1_pop97_conv2d3x3101_out_data_out_2_q <= '0;
        end
        else
        begin
            redist85_i_llvm_fpga_pop_i1_pop97_conv2d3x3101_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_pop97_conv2d3x3101_out_data_out);
            redist85_i_llvm_fpga_pop_i1_pop97_conv2d3x3101_out_data_out_2_q <= redist85_i_llvm_fpga_pop_i1_pop97_conv2d3x3101_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg54(REG,289)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg54_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg54_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg55(REG,290)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg55_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg55_q <= $unsigned(redist49_sync_together246_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist77_i_llvm_fpga_pop_i32_inc50185_pop96_conv2d3x399_out_data_out_3(DELAY,400)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist77_i_llvm_fpga_pop_i32_inc50185_pop96_conv2d3x399_out_data_out_3_q <= '0;
        end
        else
        begin
            redist77_i_llvm_fpga_pop_i32_inc50185_pop96_conv2d3x399_out_data_out_3_q <= $unsigned(redist76_i_llvm_fpga_pop_i32_inc50185_pop96_conv2d3x399_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i32_inc50185_push96_conv2d3x3100(BLACKBOX,159)@5
    // out out_feedback_out_96@20000000
    // out out_feedback_valid_out_96@20000000
    conv2d3x3_i_llvm_fpga_push_i32_inc50185_push96_0 thei_llvm_fpga_push_i32_inc50185_push96_conv2d3x3100 (
        .in_data_in(redist77_i_llvm_fpga_pop_i32_inc50185_pop96_conv2d3x399_out_data_out_3_q),
        .in_feedback_stall_in_96(i_llvm_fpga_pop_i32_inc50185_pop96_conv2d3x399_out_feedback_stall_out_96),
        .in_keep_going43_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg55_q),
        .out_data_out(),
        .out_feedback_out_96(i_llvm_fpga_push_i32_inc50185_push96_conv2d3x3100_out_feedback_out_96),
        .out_feedback_valid_out_96(i_llvm_fpga_push_i32_inc50185_push96_conv2d3x3100_out_feedback_valid_out_96),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist25_sync_together246_aunroll_x_in_c0_eni47_26_tpl_1(DELAY,348)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together246_aunroll_x_in_c0_eni47_26_tpl_1_q <= '0;
        end
        else
        begin
            redist25_sync_together246_aunroll_x_in_c0_eni47_26_tpl_1_q <= $unsigned(in_c0_eni47_26_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_inc50185_pop96_conv2d3x399(BLACKBOX,127)@2
    // out out_feedback_stall_out_96@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_inc50185_pop96_0 thei_llvm_fpga_pop_i32_inc50185_pop96_conv2d3x399 (
        .in_data_in(redist25_sync_together246_aunroll_x_in_c0_eni47_26_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor1208_conv2d3x32_q),
        .in_feedback_in_96(i_llvm_fpga_push_i32_inc50185_push96_conv2d3x3100_out_feedback_out_96),
        .in_feedback_valid_in_96(i_llvm_fpga_push_i32_inc50185_push96_conv2d3x3100_out_feedback_valid_out_96),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg54_q),
        .out_data_out(i_llvm_fpga_pop_i32_inc50185_pop96_conv2d3x399_out_data_out),
        .out_feedback_stall_out_96(i_llvm_fpga_pop_i32_inc50185_pop96_conv2d3x399_out_feedback_stall_out_96),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist76_i_llvm_fpga_pop_i32_inc50185_pop96_conv2d3x399_out_data_out_2(DELAY,399)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist76_i_llvm_fpga_pop_i32_inc50185_pop96_conv2d3x399_out_data_out_2_delay_0 <= '0;
            redist76_i_llvm_fpga_pop_i32_inc50185_pop96_conv2d3x399_out_data_out_2_q <= '0;
        end
        else
        begin
            redist76_i_llvm_fpga_pop_i32_inc50185_pop96_conv2d3x399_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i32_inc50185_pop96_conv2d3x399_out_data_out);
            redist76_i_llvm_fpga_pop_i32_inc50185_pop96_conv2d3x399_out_data_out_2_q <= redist76_i_llvm_fpga_pop_i32_inc50185_pop96_conv2d3x399_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg52(REG,287)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg52_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg52_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg53(REG,288)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg53_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg53_q <= $unsigned(redist49_sync_together246_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist70_i_llvm_fpga_pop_i32_mul32182_pop95_conv2d3x397_out_data_out_3(DELAY,393)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist70_i_llvm_fpga_pop_i32_mul32182_pop95_conv2d3x397_out_data_out_3_q <= '0;
        end
        else
        begin
            redist70_i_llvm_fpga_pop_i32_mul32182_pop95_conv2d3x397_out_data_out_3_q <= $unsigned(redist69_i_llvm_fpga_pop_i32_mul32182_pop95_conv2d3x397_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i32_mul32182_push95_conv2d3x398(BLACKBOX,162)@5
    // out out_feedback_out_95@20000000
    // out out_feedback_valid_out_95@20000000
    conv2d3x3_i_llvm_fpga_push_i32_mul32182_push95_0 thei_llvm_fpga_push_i32_mul32182_push95_conv2d3x398 (
        .in_data_in(redist70_i_llvm_fpga_pop_i32_mul32182_pop95_conv2d3x397_out_data_out_3_q),
        .in_feedback_stall_in_95(i_llvm_fpga_pop_i32_mul32182_pop95_conv2d3x397_out_feedback_stall_out_95),
        .in_keep_going43_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg53_q),
        .out_data_out(),
        .out_feedback_out_95(i_llvm_fpga_push_i32_mul32182_push95_conv2d3x398_out_feedback_out_95),
        .out_feedback_valid_out_95(i_llvm_fpga_push_i32_mul32182_push95_conv2d3x398_out_feedback_valid_out_95),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_sync_together246_aunroll_x_in_c0_eni47_25_tpl_1(DELAY,347)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together246_aunroll_x_in_c0_eni47_25_tpl_1_q <= '0;
        end
        else
        begin
            redist24_sync_together246_aunroll_x_in_c0_eni47_25_tpl_1_q <= $unsigned(in_c0_eni47_25_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul32182_pop95_conv2d3x397(BLACKBOX,130)@2
    // out out_feedback_stall_out_95@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_mul32182_pop95_0 thei_llvm_fpga_pop_i32_mul32182_pop95_conv2d3x397 (
        .in_data_in(redist24_sync_together246_aunroll_x_in_c0_eni47_25_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor1208_conv2d3x32_q),
        .in_feedback_in_95(i_llvm_fpga_push_i32_mul32182_push95_conv2d3x398_out_feedback_out_95),
        .in_feedback_valid_in_95(i_llvm_fpga_push_i32_mul32182_push95_conv2d3x398_out_feedback_valid_out_95),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg52_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul32182_pop95_conv2d3x397_out_data_out),
        .out_feedback_stall_out_95(i_llvm_fpga_pop_i32_mul32182_pop95_conv2d3x397_out_feedback_stall_out_95),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist69_i_llvm_fpga_pop_i32_mul32182_pop95_conv2d3x397_out_data_out_2(DELAY,392)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist69_i_llvm_fpga_pop_i32_mul32182_pop95_conv2d3x397_out_data_out_2_delay_0 <= '0;
            redist69_i_llvm_fpga_pop_i32_mul32182_pop95_conv2d3x397_out_data_out_2_q <= '0;
        end
        else
        begin
            redist69_i_llvm_fpga_pop_i32_mul32182_pop95_conv2d3x397_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i32_mul32182_pop95_conv2d3x397_out_data_out);
            redist69_i_llvm_fpga_pop_i32_mul32182_pop95_conv2d3x397_out_data_out_2_q <= redist69_i_llvm_fpga_pop_i32_mul32182_pop95_conv2d3x397_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg50(REG,285)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg50_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg50_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg51(REG,286)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg51_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg51_q <= $unsigned(redist49_sync_together246_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist75_i_llvm_fpga_pop_i32_j_061_pop24177_pop93_conv2d3x395_out_data_out_3(DELAY,398)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist75_i_llvm_fpga_pop_i32_j_061_pop24177_pop93_conv2d3x395_out_data_out_3_q <= '0;
        end
        else
        begin
            redist75_i_llvm_fpga_pop_i32_j_061_pop24177_pop93_conv2d3x395_out_data_out_3_q <= $unsigned(redist74_i_llvm_fpga_pop_i32_j_061_pop24177_pop93_conv2d3x395_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i32_j_061_pop24177_push93_conv2d3x396(BLACKBOX,160)@5
    // out out_feedback_out_93@20000000
    // out out_feedback_valid_out_93@20000000
    conv2d3x3_i_llvm_fpga_push_i32_j_061_pop24177_push93_0 thei_llvm_fpga_push_i32_j_061_pop24177_push93_conv2d3x396 (
        .in_data_in(redist75_i_llvm_fpga_pop_i32_j_061_pop24177_pop93_conv2d3x395_out_data_out_3_q),
        .in_feedback_stall_in_93(i_llvm_fpga_pop_i32_j_061_pop24177_pop93_conv2d3x395_out_feedback_stall_out_93),
        .in_keep_going43_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg51_q),
        .out_data_out(),
        .out_feedback_out_93(i_llvm_fpga_push_i32_j_061_pop24177_push93_conv2d3x396_out_feedback_out_93),
        .out_feedback_valid_out_93(i_llvm_fpga_push_i32_j_061_pop24177_push93_conv2d3x396_out_feedback_valid_out_93),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist23_sync_together246_aunroll_x_in_c0_eni47_24_tpl_1(DELAY,346)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together246_aunroll_x_in_c0_eni47_24_tpl_1_q <= '0;
        end
        else
        begin
            redist23_sync_together246_aunroll_x_in_c0_eni47_24_tpl_1_q <= $unsigned(in_c0_eni47_24_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_j_061_pop24177_pop93_conv2d3x395(BLACKBOX,128)@2
    // out out_feedback_stall_out_93@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_j_061_pop24177_pop93_0 thei_llvm_fpga_pop_i32_j_061_pop24177_pop93_conv2d3x395 (
        .in_data_in(redist23_sync_together246_aunroll_x_in_c0_eni47_24_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor1208_conv2d3x32_q),
        .in_feedback_in_93(i_llvm_fpga_push_i32_j_061_pop24177_push93_conv2d3x396_out_feedback_out_93),
        .in_feedback_valid_in_93(i_llvm_fpga_push_i32_j_061_pop24177_push93_conv2d3x396_out_feedback_valid_out_93),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg50_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_061_pop24177_pop93_conv2d3x395_out_data_out),
        .out_feedback_stall_out_93(i_llvm_fpga_pop_i32_j_061_pop24177_pop93_conv2d3x395_out_feedback_stall_out_93),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist74_i_llvm_fpga_pop_i32_j_061_pop24177_pop93_conv2d3x395_out_data_out_2(DELAY,397)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist74_i_llvm_fpga_pop_i32_j_061_pop24177_pop93_conv2d3x395_out_data_out_2_delay_0 <= '0;
            redist74_i_llvm_fpga_pop_i32_j_061_pop24177_pop93_conv2d3x395_out_data_out_2_q <= '0;
        end
        else
        begin
            redist74_i_llvm_fpga_pop_i32_j_061_pop24177_pop93_conv2d3x395_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i32_j_061_pop24177_pop93_conv2d3x395_out_data_out);
            redist74_i_llvm_fpga_pop_i32_j_061_pop24177_pop93_conv2d3x395_out_data_out_2_q <= redist74_i_llvm_fpga_pop_i32_j_061_pop24177_pop93_conv2d3x395_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg48(REG,283)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg48_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg48_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg49(REG,284)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg49_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg49_q <= $unsigned(redist49_sync_together246_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist92_i_llvm_fpga_pop_i1_notcmp73173_pop92_conv2d3x393_out_data_out_3(DELAY,415)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist92_i_llvm_fpga_pop_i1_notcmp73173_pop92_conv2d3x393_out_data_out_3_q <= '0;
        end
        else
        begin
            redist92_i_llvm_fpga_pop_i1_notcmp73173_pop92_conv2d3x393_out_data_out_3_q <= $unsigned(redist91_i_llvm_fpga_pop_i1_notcmp73173_pop92_conv2d3x393_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp73173_push92_conv2d3x394(BLACKBOX,148)@5
    // out out_feedback_out_92@20000000
    // out out_feedback_valid_out_92@20000000
    conv2d3x3_i_llvm_fpga_push_i1_notcmp73173_push92_0 thei_llvm_fpga_push_i1_notcmp73173_push92_conv2d3x394 (
        .in_data_in(redist92_i_llvm_fpga_pop_i1_notcmp73173_pop92_conv2d3x393_out_data_out_3_q),
        .in_feedback_stall_in_92(i_llvm_fpga_pop_i1_notcmp73173_pop92_conv2d3x393_out_feedback_stall_out_92),
        .in_keep_going43_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg49_q),
        .out_data_out(),
        .out_feedback_out_92(i_llvm_fpga_push_i1_notcmp73173_push92_conv2d3x394_out_feedback_out_92),
        .out_feedback_valid_out_92(i_llvm_fpga_push_i1_notcmp73173_push92_conv2d3x394_out_feedback_valid_out_92),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_sync_together246_aunroll_x_in_c0_eni47_23_tpl_1(DELAY,345)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together246_aunroll_x_in_c0_eni47_23_tpl_1_q <= '0;
        end
        else
        begin
            redist22_sync_together246_aunroll_x_in_c0_eni47_23_tpl_1_q <= $unsigned(in_c0_eni47_23_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp73173_pop92_conv2d3x393(BLACKBOX,117)@2
    // out out_feedback_stall_out_92@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_notcmp73173_pop92_0 thei_llvm_fpga_pop_i1_notcmp73173_pop92_conv2d3x393 (
        .in_data_in(redist22_sync_together246_aunroll_x_in_c0_eni47_23_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor1208_conv2d3x32_q),
        .in_feedback_in_92(i_llvm_fpga_push_i1_notcmp73173_push92_conv2d3x394_out_feedback_out_92),
        .in_feedback_valid_in_92(i_llvm_fpga_push_i1_notcmp73173_push92_conv2d3x394_out_feedback_valid_out_92),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg48_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp73173_pop92_conv2d3x393_out_data_out),
        .out_feedback_stall_out_92(i_llvm_fpga_pop_i1_notcmp73173_pop92_conv2d3x393_out_feedback_stall_out_92),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist91_i_llvm_fpga_pop_i1_notcmp73173_pop92_conv2d3x393_out_data_out_2(DELAY,414)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist91_i_llvm_fpga_pop_i1_notcmp73173_pop92_conv2d3x393_out_data_out_2_delay_0 <= '0;
            redist91_i_llvm_fpga_pop_i1_notcmp73173_pop92_conv2d3x393_out_data_out_2_q <= '0;
        end
        else
        begin
            redist91_i_llvm_fpga_pop_i1_notcmp73173_pop92_conv2d3x393_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp73173_pop92_conv2d3x393_out_data_out);
            redist91_i_llvm_fpga_pop_i1_notcmp73173_pop92_conv2d3x393_out_data_out_2_q <= redist91_i_llvm_fpga_pop_i1_notcmp73173_pop92_conv2d3x393_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg46(REG,281)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg46_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg46_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg47(REG,282)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg47_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg47_q <= $unsigned(redist49_sync_together246_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist63_i_llvm_fpga_pop_i32_pad_sync_buffer169_pop91_conv2d3x391_out_data_out_3(DELAY,386)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_i_llvm_fpga_pop_i32_pad_sync_buffer169_pop91_conv2d3x391_out_data_out_3_q <= '0;
        end
        else
        begin
            redist63_i_llvm_fpga_pop_i32_pad_sync_buffer169_pop91_conv2d3x391_out_data_out_3_q <= $unsigned(redist62_i_llvm_fpga_pop_i32_pad_sync_buffer169_pop91_conv2d3x391_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i32_pad_sync_buffer169_push91_conv2d3x392(BLACKBOX,165)@5
    // out out_feedback_out_91@20000000
    // out out_feedback_valid_out_91@20000000
    conv2d3x3_i_llvm_fpga_push_i32_pad_sync_buffer169_push91_0 thei_llvm_fpga_push_i32_pad_sync_buffer169_push91_conv2d3x392 (
        .in_data_in(redist63_i_llvm_fpga_pop_i32_pad_sync_buffer169_pop91_conv2d3x391_out_data_out_3_q),
        .in_feedback_stall_in_91(i_llvm_fpga_pop_i32_pad_sync_buffer169_pop91_conv2d3x391_out_feedback_stall_out_91),
        .in_keep_going43_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg47_q),
        .out_data_out(),
        .out_feedback_out_91(i_llvm_fpga_push_i32_pad_sync_buffer169_push91_conv2d3x392_out_feedback_out_91),
        .out_feedback_valid_out_91(i_llvm_fpga_push_i32_pad_sync_buffer169_push91_conv2d3x392_out_feedback_valid_out_91),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor_conv2d3x33(REG,106)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor_conv2d3x33_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor_conv2d3x33_q <= in_c0_eni47_1_tpl;
        end
    end

    // redist21_sync_together246_aunroll_x_in_c0_eni47_22_tpl_1(DELAY,344)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together246_aunroll_x_in_c0_eni47_22_tpl_1_q <= '0;
        end
        else
        begin
            redist21_sync_together246_aunroll_x_in_c0_eni47_22_tpl_1_q <= $unsigned(in_c0_eni47_22_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_pad_sync_buffer169_pop91_conv2d3x391(BLACKBOX,133)@2
    // out out_feedback_stall_out_91@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_pad_sync_buffer169_pop91_0 thei_llvm_fpga_pop_i32_pad_sync_buffer169_pop91_conv2d3x391 (
        .in_data_in(redist21_sync_together246_aunroll_x_in_c0_eni47_22_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_91(i_llvm_fpga_push_i32_pad_sync_buffer169_push91_conv2d3x392_out_feedback_out_91),
        .in_feedback_valid_in_91(i_llvm_fpga_push_i32_pad_sync_buffer169_push91_conv2d3x392_out_feedback_valid_out_91),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg46_q),
        .out_data_out(i_llvm_fpga_pop_i32_pad_sync_buffer169_pop91_conv2d3x391_out_data_out),
        .out_feedback_stall_out_91(i_llvm_fpga_pop_i32_pad_sync_buffer169_pop91_conv2d3x391_out_feedback_stall_out_91),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist62_i_llvm_fpga_pop_i32_pad_sync_buffer169_pop91_conv2d3x391_out_data_out_2(DELAY,385)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_i_llvm_fpga_pop_i32_pad_sync_buffer169_pop91_conv2d3x391_out_data_out_2_delay_0 <= '0;
            redist62_i_llvm_fpga_pop_i32_pad_sync_buffer169_pop91_conv2d3x391_out_data_out_2_q <= '0;
        end
        else
        begin
            redist62_i_llvm_fpga_pop_i32_pad_sync_buffer169_pop91_conv2d3x391_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i32_pad_sync_buffer169_pop91_conv2d3x391_out_data_out);
            redist62_i_llvm_fpga_pop_i32_pad_sync_buffer169_pop91_conv2d3x391_out_data_out_2_q <= redist62_i_llvm_fpga_pop_i32_pad_sync_buffer169_pop91_conv2d3x391_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg44(REG,279)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg44_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg44_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg45(REG,280)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg45_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg45_q <= $unsigned(redist49_sync_together246_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist61_i_llvm_fpga_pop_i32_stride_sync_buffer165_pop90_conv2d3x389_out_data_out_3(DELAY,384)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist61_i_llvm_fpga_pop_i32_stride_sync_buffer165_pop90_conv2d3x389_out_data_out_3_q <= '0;
        end
        else
        begin
            redist61_i_llvm_fpga_pop_i32_stride_sync_buffer165_pop90_conv2d3x389_out_data_out_3_q <= $unsigned(redist60_i_llvm_fpga_pop_i32_stride_sync_buffer165_pop90_conv2d3x389_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i32_stride_sync_buffer165_push90_conv2d3x390(BLACKBOX,166)@5
    // out out_feedback_out_90@20000000
    // out out_feedback_valid_out_90@20000000
    conv2d3x3_i_llvm_fpga_push_i32_stride_sync_buffer165_push90_0 thei_llvm_fpga_push_i32_stride_sync_buffer165_push90_conv2d3x390 (
        .in_data_in(redist61_i_llvm_fpga_pop_i32_stride_sync_buffer165_pop90_conv2d3x389_out_data_out_3_q),
        .in_feedback_stall_in_90(i_llvm_fpga_pop_i32_stride_sync_buffer165_pop90_conv2d3x389_out_feedback_stall_out_90),
        .in_keep_going43_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg45_q),
        .out_data_out(),
        .out_feedback_out_90(i_llvm_fpga_push_i32_stride_sync_buffer165_push90_conv2d3x390_out_feedback_out_90),
        .out_feedback_valid_out_90(i_llvm_fpga_push_i32_stride_sync_buffer165_push90_conv2d3x390_out_feedback_valid_out_90),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist20_sync_together246_aunroll_x_in_c0_eni47_21_tpl_1(DELAY,343)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together246_aunroll_x_in_c0_eni47_21_tpl_1_q <= '0;
        end
        else
        begin
            redist20_sync_together246_aunroll_x_in_c0_eni47_21_tpl_1_q <= $unsigned(in_c0_eni47_21_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_stride_sync_buffer165_pop90_conv2d3x389(BLACKBOX,134)@2
    // out out_feedback_stall_out_90@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_stride_sync_buffer165_pop90_0 thei_llvm_fpga_pop_i32_stride_sync_buffer165_pop90_conv2d3x389 (
        .in_data_in(redist20_sync_together246_aunroll_x_in_c0_eni47_21_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_90(i_llvm_fpga_push_i32_stride_sync_buffer165_push90_conv2d3x390_out_feedback_out_90),
        .in_feedback_valid_in_90(i_llvm_fpga_push_i32_stride_sync_buffer165_push90_conv2d3x390_out_feedback_valid_out_90),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg44_q),
        .out_data_out(i_llvm_fpga_pop_i32_stride_sync_buffer165_pop90_conv2d3x389_out_data_out),
        .out_feedback_stall_out_90(i_llvm_fpga_pop_i32_stride_sync_buffer165_pop90_conv2d3x389_out_feedback_stall_out_90),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist60_i_llvm_fpga_pop_i32_stride_sync_buffer165_pop90_conv2d3x389_out_data_out_2(DELAY,383)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist60_i_llvm_fpga_pop_i32_stride_sync_buffer165_pop90_conv2d3x389_out_data_out_2_delay_0 <= '0;
            redist60_i_llvm_fpga_pop_i32_stride_sync_buffer165_pop90_conv2d3x389_out_data_out_2_q <= '0;
        end
        else
        begin
            redist60_i_llvm_fpga_pop_i32_stride_sync_buffer165_pop90_conv2d3x389_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i32_stride_sync_buffer165_pop90_conv2d3x389_out_data_out);
            redist60_i_llvm_fpga_pop_i32_stride_sync_buffer165_pop90_conv2d3x389_out_data_out_2_q <= redist60_i_llvm_fpga_pop_i32_stride_sync_buffer165_pop90_conv2d3x389_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg42(REG,277)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg42_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg42_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg43(REG,278)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg43_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg43_q <= $unsigned(redist49_sync_together246_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist90_i_llvm_fpga_pop_i1_notcmp77162_pop89_conv2d3x387_out_data_out_3(DELAY,413)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist90_i_llvm_fpga_pop_i1_notcmp77162_pop89_conv2d3x387_out_data_out_3_q <= '0;
        end
        else
        begin
            redist90_i_llvm_fpga_pop_i1_notcmp77162_pop89_conv2d3x387_out_data_out_3_q <= $unsigned(redist89_i_llvm_fpga_pop_i1_notcmp77162_pop89_conv2d3x387_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp77162_push89_conv2d3x388(BLACKBOX,149)@5
    // out out_feedback_out_89@20000000
    // out out_feedback_valid_out_89@20000000
    conv2d3x3_i_llvm_fpga_push_i1_notcmp77162_push89_0 thei_llvm_fpga_push_i1_notcmp77162_push89_conv2d3x388 (
        .in_data_in(redist90_i_llvm_fpga_pop_i1_notcmp77162_pop89_conv2d3x387_out_data_out_3_q),
        .in_feedback_stall_in_89(i_llvm_fpga_pop_i1_notcmp77162_pop89_conv2d3x387_out_feedback_stall_out_89),
        .in_keep_going43_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg43_q),
        .out_data_out(),
        .out_feedback_out_89(i_llvm_fpga_push_i1_notcmp77162_push89_conv2d3x388_out_feedback_out_89),
        .out_feedback_valid_out_89(i_llvm_fpga_push_i1_notcmp77162_push89_conv2d3x388_out_feedback_valid_out_89),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist19_sync_together246_aunroll_x_in_c0_eni47_20_tpl_1(DELAY,342)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together246_aunroll_x_in_c0_eni47_20_tpl_1_q <= '0;
        end
        else
        begin
            redist19_sync_together246_aunroll_x_in_c0_eni47_20_tpl_1_q <= $unsigned(in_c0_eni47_20_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp77162_pop89_conv2d3x387(BLACKBOX,118)@2
    // out out_feedback_stall_out_89@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_notcmp77162_pop89_0 thei_llvm_fpga_pop_i1_notcmp77162_pop89_conv2d3x387 (
        .in_data_in(redist19_sync_together246_aunroll_x_in_c0_eni47_20_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_89(i_llvm_fpga_push_i1_notcmp77162_push89_conv2d3x388_out_feedback_out_89),
        .in_feedback_valid_in_89(i_llvm_fpga_push_i1_notcmp77162_push89_conv2d3x388_out_feedback_valid_out_89),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg42_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp77162_pop89_conv2d3x387_out_data_out),
        .out_feedback_stall_out_89(i_llvm_fpga_pop_i1_notcmp77162_pop89_conv2d3x387_out_feedback_stall_out_89),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist89_i_llvm_fpga_pop_i1_notcmp77162_pop89_conv2d3x387_out_data_out_2(DELAY,412)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist89_i_llvm_fpga_pop_i1_notcmp77162_pop89_conv2d3x387_out_data_out_2_delay_0 <= '0;
            redist89_i_llvm_fpga_pop_i1_notcmp77162_pop89_conv2d3x387_out_data_out_2_q <= '0;
        end
        else
        begin
            redist89_i_llvm_fpga_pop_i1_notcmp77162_pop89_conv2d3x387_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp77162_pop89_conv2d3x387_out_data_out);
            redist89_i_llvm_fpga_pop_i1_notcmp77162_pop89_conv2d3x387_out_data_out_2_q <= redist89_i_llvm_fpga_pop_i1_notcmp77162_pop89_conv2d3x387_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg40(REG,275)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg40_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg40_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg41(REG,276)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg41_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg41_q <= $unsigned(redist49_sync_together246_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist94_i_llvm_fpga_pop_i1_cmp27_2157_pop88_conv2d3x385_out_data_out_3(DELAY,417)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist94_i_llvm_fpga_pop_i1_cmp27_2157_pop88_conv2d3x385_out_data_out_3_q <= '0;
        end
        else
        begin
            redist94_i_llvm_fpga_pop_i1_cmp27_2157_pop88_conv2d3x385_out_data_out_3_q <= $unsigned(redist93_i_llvm_fpga_pop_i1_cmp27_2157_pop88_conv2d3x385_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i1_cmp27_2157_push88_conv2d3x386(BLACKBOX,146)@5
    // out out_feedback_out_88@20000000
    // out out_feedback_valid_out_88@20000000
    conv2d3x3_i_llvm_fpga_push_i1_cmp27_2157_push88_0 thei_llvm_fpga_push_i1_cmp27_2157_push88_conv2d3x386 (
        .in_data_in(redist94_i_llvm_fpga_pop_i1_cmp27_2157_pop88_conv2d3x385_out_data_out_3_q),
        .in_feedback_stall_in_88(i_llvm_fpga_pop_i1_cmp27_2157_pop88_conv2d3x385_out_feedback_stall_out_88),
        .in_keep_going43_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg41_q),
        .out_data_out(),
        .out_feedback_out_88(i_llvm_fpga_push_i1_cmp27_2157_push88_conv2d3x386_out_feedback_out_88),
        .out_feedback_valid_out_88(i_llvm_fpga_push_i1_cmp27_2157_push88_conv2d3x386_out_feedback_valid_out_88),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist18_sync_together246_aunroll_x_in_c0_eni47_19_tpl_1(DELAY,341)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together246_aunroll_x_in_c0_eni47_19_tpl_1_q <= '0;
        end
        else
        begin
            redist18_sync_together246_aunroll_x_in_c0_eni47_19_tpl_1_q <= $unsigned(in_c0_eni47_19_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_cmp27_2157_pop88_conv2d3x385(BLACKBOX,116)@2
    // out out_feedback_stall_out_88@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_cmp27_2157_pop88_0 thei_llvm_fpga_pop_i1_cmp27_2157_pop88_conv2d3x385 (
        .in_data_in(redist18_sync_together246_aunroll_x_in_c0_eni47_19_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_88(i_llvm_fpga_push_i1_cmp27_2157_push88_conv2d3x386_out_feedback_out_88),
        .in_feedback_valid_in_88(i_llvm_fpga_push_i1_cmp27_2157_push88_conv2d3x386_out_feedback_valid_out_88),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg40_q),
        .out_data_out(i_llvm_fpga_pop_i1_cmp27_2157_pop88_conv2d3x385_out_data_out),
        .out_feedback_stall_out_88(i_llvm_fpga_pop_i1_cmp27_2157_pop88_conv2d3x385_out_feedback_stall_out_88),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist93_i_llvm_fpga_pop_i1_cmp27_2157_pop88_conv2d3x385_out_data_out_2(DELAY,416)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist93_i_llvm_fpga_pop_i1_cmp27_2157_pop88_conv2d3x385_out_data_out_2_delay_0 <= '0;
            redist93_i_llvm_fpga_pop_i1_cmp27_2157_pop88_conv2d3x385_out_data_out_2_q <= '0;
        end
        else
        begin
            redist93_i_llvm_fpga_pop_i1_cmp27_2157_pop88_conv2d3x385_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_cmp27_2157_pop88_conv2d3x385_out_data_out);
            redist93_i_llvm_fpga_pop_i1_cmp27_2157_pop88_conv2d3x385_out_data_out_2_q <= redist93_i_llvm_fpga_pop_i1_cmp27_2157_pop88_conv2d3x385_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg38(REG,273)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg38_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg38_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg39(REG,274)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg39_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg39_q <= $unsigned(redist49_sync_together246_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist100_i_llvm_fpga_pop_i1_cmp26_2152_pop87_conv2d3x383_out_data_out_3(DELAY,423)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist100_i_llvm_fpga_pop_i1_cmp26_2152_pop87_conv2d3x383_out_data_out_3_q <= '0;
        end
        else
        begin
            redist100_i_llvm_fpga_pop_i1_cmp26_2152_pop87_conv2d3x383_out_data_out_3_q <= $unsigned(redist99_i_llvm_fpga_pop_i1_cmp26_2152_pop87_conv2d3x383_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i1_cmp26_2152_push87_conv2d3x384(BLACKBOX,143)@5
    // out out_feedback_out_87@20000000
    // out out_feedback_valid_out_87@20000000
    conv2d3x3_i_llvm_fpga_push_i1_cmp26_2152_push87_0 thei_llvm_fpga_push_i1_cmp26_2152_push87_conv2d3x384 (
        .in_data_in(redist100_i_llvm_fpga_pop_i1_cmp26_2152_pop87_conv2d3x383_out_data_out_3_q),
        .in_feedback_stall_in_87(i_llvm_fpga_pop_i1_cmp26_2152_pop87_conv2d3x383_out_feedback_stall_out_87),
        .in_keep_going43_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg39_q),
        .out_data_out(),
        .out_feedback_out_87(i_llvm_fpga_push_i1_cmp26_2152_push87_conv2d3x384_out_feedback_out_87),
        .out_feedback_valid_out_87(i_llvm_fpga_push_i1_cmp26_2152_push87_conv2d3x384_out_feedback_valid_out_87),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_sync_together246_aunroll_x_in_c0_eni47_18_tpl_1(DELAY,340)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together246_aunroll_x_in_c0_eni47_18_tpl_1_q <= '0;
        end
        else
        begin
            redist17_sync_together246_aunroll_x_in_c0_eni47_18_tpl_1_q <= $unsigned(in_c0_eni47_18_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_cmp26_2152_pop87_conv2d3x383(BLACKBOX,113)@2
    // out out_feedback_stall_out_87@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_cmp26_2152_pop87_0 thei_llvm_fpga_pop_i1_cmp26_2152_pop87_conv2d3x383 (
        .in_data_in(redist17_sync_together246_aunroll_x_in_c0_eni47_18_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_87(i_llvm_fpga_push_i1_cmp26_2152_push87_conv2d3x384_out_feedback_out_87),
        .in_feedback_valid_in_87(i_llvm_fpga_push_i1_cmp26_2152_push87_conv2d3x384_out_feedback_valid_out_87),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg38_q),
        .out_data_out(i_llvm_fpga_pop_i1_cmp26_2152_pop87_conv2d3x383_out_data_out),
        .out_feedback_stall_out_87(i_llvm_fpga_pop_i1_cmp26_2152_pop87_conv2d3x383_out_feedback_stall_out_87),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist99_i_llvm_fpga_pop_i1_cmp26_2152_pop87_conv2d3x383_out_data_out_2(DELAY,422)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist99_i_llvm_fpga_pop_i1_cmp26_2152_pop87_conv2d3x383_out_data_out_2_delay_0 <= '0;
            redist99_i_llvm_fpga_pop_i1_cmp26_2152_pop87_conv2d3x383_out_data_out_2_q <= '0;
        end
        else
        begin
            redist99_i_llvm_fpga_pop_i1_cmp26_2152_pop87_conv2d3x383_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_cmp26_2152_pop87_conv2d3x383_out_data_out);
            redist99_i_llvm_fpga_pop_i1_cmp26_2152_pop87_conv2d3x383_out_data_out_2_q <= redist99_i_llvm_fpga_pop_i1_cmp26_2152_pop87_conv2d3x383_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg36(REG,271)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg36_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg37(REG,272)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg37_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(redist49_sync_together246_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist57_i_llvm_fpga_pop_i32_sub_2147_pop86_conv2d3x381_out_data_out_3(DELAY,380)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist57_i_llvm_fpga_pop_i32_sub_2147_pop86_conv2d3x381_out_data_out_3_q <= '0;
        end
        else
        begin
            redist57_i_llvm_fpga_pop_i32_sub_2147_pop86_conv2d3x381_out_data_out_3_q <= $unsigned(redist56_i_llvm_fpga_pop_i32_sub_2147_pop86_conv2d3x381_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i32_sub_2147_push86_conv2d3x382(BLACKBOX,168)@5
    // out out_feedback_out_86@20000000
    // out out_feedback_valid_out_86@20000000
    conv2d3x3_i_llvm_fpga_push_i32_sub_2147_push86_0 thei_llvm_fpga_push_i32_sub_2147_push86_conv2d3x382 (
        .in_data_in(redist57_i_llvm_fpga_pop_i32_sub_2147_pop86_conv2d3x381_out_data_out_3_q),
        .in_feedback_stall_in_86(i_llvm_fpga_pop_i32_sub_2147_pop86_conv2d3x381_out_feedback_stall_out_86),
        .in_keep_going43_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_data_out(),
        .out_feedback_out_86(i_llvm_fpga_push_i32_sub_2147_push86_conv2d3x382_out_feedback_out_86),
        .out_feedback_valid_out_86(i_llvm_fpga_push_i32_sub_2147_push86_conv2d3x382_out_feedback_valid_out_86),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_sync_together246_aunroll_x_in_c0_eni47_17_tpl_1(DELAY,339)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together246_aunroll_x_in_c0_eni47_17_tpl_1_q <= '0;
        end
        else
        begin
            redist16_sync_together246_aunroll_x_in_c0_eni47_17_tpl_1_q <= $unsigned(in_c0_eni47_17_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_sub_2147_pop86_conv2d3x381(BLACKBOX,136)@2
    // out out_feedback_stall_out_86@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_sub_2147_pop86_0 thei_llvm_fpga_pop_i32_sub_2147_pop86_conv2d3x381 (
        .in_data_in(redist16_sync_together246_aunroll_x_in_c0_eni47_17_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_86(i_llvm_fpga_push_i32_sub_2147_push86_conv2d3x382_out_feedback_out_86),
        .in_feedback_valid_in_86(i_llvm_fpga_push_i32_sub_2147_push86_conv2d3x382_out_feedback_valid_out_86),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_data_out(i_llvm_fpga_pop_i32_sub_2147_pop86_conv2d3x381_out_data_out),
        .out_feedback_stall_out_86(i_llvm_fpga_pop_i32_sub_2147_pop86_conv2d3x381_out_feedback_stall_out_86),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist56_i_llvm_fpga_pop_i32_sub_2147_pop86_conv2d3x381_out_data_out_2(DELAY,379)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_i_llvm_fpga_pop_i32_sub_2147_pop86_conv2d3x381_out_data_out_2_delay_0 <= '0;
            redist56_i_llvm_fpga_pop_i32_sub_2147_pop86_conv2d3x381_out_data_out_2_q <= '0;
        end
        else
        begin
            redist56_i_llvm_fpga_pop_i32_sub_2147_pop86_conv2d3x381_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i32_sub_2147_pop86_conv2d3x381_out_data_out);
            redist56_i_llvm_fpga_pop_i32_sub_2147_pop86_conv2d3x381_out_data_out_2_q <= redist56_i_llvm_fpga_pop_i32_sub_2147_pop86_conv2d3x381_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg34(REG,269)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg34_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg35(REG,270)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg35_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(redist49_sync_together246_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist59_i_llvm_fpga_pop_i32_sub_1132_pop83_conv2d3x379_out_data_out_3(DELAY,382)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist59_i_llvm_fpga_pop_i32_sub_1132_pop83_conv2d3x379_out_data_out_3_q <= '0;
        end
        else
        begin
            redist59_i_llvm_fpga_pop_i32_sub_1132_pop83_conv2d3x379_out_data_out_3_q <= $unsigned(redist58_i_llvm_fpga_pop_i32_sub_1132_pop83_conv2d3x379_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i32_sub_1132_push83_conv2d3x380(BLACKBOX,167)@5
    // out out_feedback_out_83@20000000
    // out out_feedback_valid_out_83@20000000
    conv2d3x3_i_llvm_fpga_push_i32_sub_1132_push83_0 thei_llvm_fpga_push_i32_sub_1132_push83_conv2d3x380 (
        .in_data_in(redist59_i_llvm_fpga_pop_i32_sub_1132_pop83_conv2d3x379_out_data_out_3_q),
        .in_feedback_stall_in_83(i_llvm_fpga_pop_i32_sub_1132_pop83_conv2d3x379_out_feedback_stall_out_83),
        .in_keep_going43_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_data_out(),
        .out_feedback_out_83(i_llvm_fpga_push_i32_sub_1132_push83_conv2d3x380_out_feedback_out_83),
        .out_feedback_valid_out_83(i_llvm_fpga_push_i32_sub_1132_push83_conv2d3x380_out_feedback_valid_out_83),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_sync_together246_aunroll_x_in_c0_eni47_16_tpl_1(DELAY,338)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together246_aunroll_x_in_c0_eni47_16_tpl_1_q <= '0;
        end
        else
        begin
            redist15_sync_together246_aunroll_x_in_c0_eni47_16_tpl_1_q <= $unsigned(in_c0_eni47_16_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_sub_1132_pop83_conv2d3x379(BLACKBOX,135)@2
    // out out_feedback_stall_out_83@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_sub_1132_pop83_0 thei_llvm_fpga_pop_i32_sub_1132_pop83_conv2d3x379 (
        .in_data_in(redist15_sync_together246_aunroll_x_in_c0_eni47_16_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_83(i_llvm_fpga_push_i32_sub_1132_push83_conv2d3x380_out_feedback_out_83),
        .in_feedback_valid_in_83(i_llvm_fpga_push_i32_sub_1132_push83_conv2d3x380_out_feedback_valid_out_83),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_data_out(i_llvm_fpga_pop_i32_sub_1132_pop83_conv2d3x379_out_data_out),
        .out_feedback_stall_out_83(i_llvm_fpga_pop_i32_sub_1132_pop83_conv2d3x379_out_feedback_stall_out_83),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist58_i_llvm_fpga_pop_i32_sub_1132_pop83_conv2d3x379_out_data_out_2(DELAY,381)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_i_llvm_fpga_pop_i32_sub_1132_pop83_conv2d3x379_out_data_out_2_delay_0 <= '0;
            redist58_i_llvm_fpga_pop_i32_sub_1132_pop83_conv2d3x379_out_data_out_2_q <= '0;
        end
        else
        begin
            redist58_i_llvm_fpga_pop_i32_sub_1132_pop83_conv2d3x379_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i32_sub_1132_pop83_conv2d3x379_out_data_out);
            redist58_i_llvm_fpga_pop_i32_sub_1132_pop83_conv2d3x379_out_data_out_2_q <= redist58_i_llvm_fpga_pop_i32_sub_1132_pop83_conv2d3x379_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg32(REG,267)@1 + 1
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

    // valid_fanout_reg33(REG,268)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg33_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist49_sync_together246_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist98_i_llvm_fpga_pop_i1_cmp27127_pop82_conv2d3x377_out_data_out_3(DELAY,421)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist98_i_llvm_fpga_pop_i1_cmp27127_pop82_conv2d3x377_out_data_out_3_q <= '0;
        end
        else
        begin
            redist98_i_llvm_fpga_pop_i1_cmp27127_pop82_conv2d3x377_out_data_out_3_q <= $unsigned(redist97_i_llvm_fpga_pop_i1_cmp27127_pop82_conv2d3x377_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i1_cmp27127_push82_conv2d3x378(BLACKBOX,144)@5
    // out out_feedback_out_82@20000000
    // out out_feedback_valid_out_82@20000000
    conv2d3x3_i_llvm_fpga_push_i1_cmp27127_push82_0 thei_llvm_fpga_push_i1_cmp27127_push82_conv2d3x378 (
        .in_data_in(redist98_i_llvm_fpga_pop_i1_cmp27127_pop82_conv2d3x377_out_data_out_3_q),
        .in_feedback_stall_in_82(i_llvm_fpga_pop_i1_cmp27127_pop82_conv2d3x377_out_feedback_stall_out_82),
        .in_keep_going43_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_data_out(),
        .out_feedback_out_82(i_llvm_fpga_push_i1_cmp27127_push82_conv2d3x378_out_feedback_out_82),
        .out_feedback_valid_out_82(i_llvm_fpga_push_i1_cmp27127_push82_conv2d3x378_out_feedback_valid_out_82),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_sync_together246_aunroll_x_in_c0_eni47_15_tpl_1(DELAY,337)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together246_aunroll_x_in_c0_eni47_15_tpl_1_q <= '0;
        end
        else
        begin
            redist14_sync_together246_aunroll_x_in_c0_eni47_15_tpl_1_q <= $unsigned(in_c0_eni47_15_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_cmp27127_pop82_conv2d3x377(BLACKBOX,114)@2
    // out out_feedback_stall_out_82@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_cmp27127_pop82_0 thei_llvm_fpga_pop_i1_cmp27127_pop82_conv2d3x377 (
        .in_data_in(redist14_sync_together246_aunroll_x_in_c0_eni47_15_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_82(i_llvm_fpga_push_i1_cmp27127_push82_conv2d3x378_out_feedback_out_82),
        .in_feedback_valid_in_82(i_llvm_fpga_push_i1_cmp27127_push82_conv2d3x378_out_feedback_valid_out_82),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_data_out(i_llvm_fpga_pop_i1_cmp27127_pop82_conv2d3x377_out_data_out),
        .out_feedback_stall_out_82(i_llvm_fpga_pop_i1_cmp27127_pop82_conv2d3x377_out_feedback_stall_out_82),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist97_i_llvm_fpga_pop_i1_cmp27127_pop82_conv2d3x377_out_data_out_2(DELAY,420)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist97_i_llvm_fpga_pop_i1_cmp27127_pop82_conv2d3x377_out_data_out_2_delay_0 <= '0;
            redist97_i_llvm_fpga_pop_i1_cmp27127_pop82_conv2d3x377_out_data_out_2_q <= '0;
        end
        else
        begin
            redist97_i_llvm_fpga_pop_i1_cmp27127_pop82_conv2d3x377_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_cmp27127_pop82_conv2d3x377_out_data_out);
            redist97_i_llvm_fpga_pop_i1_cmp27127_pop82_conv2d3x377_out_data_out_2_q <= redist97_i_llvm_fpga_pop_i1_cmp27127_pop82_conv2d3x377_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg30(REG,265)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg31(REG,266)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(redist49_sync_together246_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist104_i_llvm_fpga_pop_i1_cmp26122_pop81_conv2d3x375_out_data_out_3(DELAY,427)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist104_i_llvm_fpga_pop_i1_cmp26122_pop81_conv2d3x375_out_data_out_3_q <= '0;
        end
        else
        begin
            redist104_i_llvm_fpga_pop_i1_cmp26122_pop81_conv2d3x375_out_data_out_3_q <= $unsigned(redist103_i_llvm_fpga_pop_i1_cmp26122_pop81_conv2d3x375_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i1_cmp26122_push81_conv2d3x376(BLACKBOX,141)@5
    // out out_feedback_out_81@20000000
    // out out_feedback_valid_out_81@20000000
    conv2d3x3_i_llvm_fpga_push_i1_cmp26122_push81_0 thei_llvm_fpga_push_i1_cmp26122_push81_conv2d3x376 (
        .in_data_in(redist104_i_llvm_fpga_pop_i1_cmp26122_pop81_conv2d3x375_out_data_out_3_q),
        .in_feedback_stall_in_81(i_llvm_fpga_pop_i1_cmp26122_pop81_conv2d3x375_out_feedback_stall_out_81),
        .in_keep_going43_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(),
        .out_feedback_out_81(i_llvm_fpga_push_i1_cmp26122_push81_conv2d3x376_out_feedback_out_81),
        .out_feedback_valid_out_81(i_llvm_fpga_push_i1_cmp26122_push81_conv2d3x376_out_feedback_valid_out_81),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_sync_together246_aunroll_x_in_c0_eni47_14_tpl_1(DELAY,336)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together246_aunroll_x_in_c0_eni47_14_tpl_1_q <= '0;
        end
        else
        begin
            redist13_sync_together246_aunroll_x_in_c0_eni47_14_tpl_1_q <= $unsigned(in_c0_eni47_14_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_cmp26122_pop81_conv2d3x375(BLACKBOX,111)@2
    // out out_feedback_stall_out_81@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_cmp26122_pop81_0 thei_llvm_fpga_pop_i1_cmp26122_pop81_conv2d3x375 (
        .in_data_in(redist13_sync_together246_aunroll_x_in_c0_eni47_14_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_81(i_llvm_fpga_push_i1_cmp26122_push81_conv2d3x376_out_feedback_out_81),
        .in_feedback_valid_in_81(i_llvm_fpga_push_i1_cmp26122_push81_conv2d3x376_out_feedback_valid_out_81),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(i_llvm_fpga_pop_i1_cmp26122_pop81_conv2d3x375_out_data_out),
        .out_feedback_stall_out_81(i_llvm_fpga_pop_i1_cmp26122_pop81_conv2d3x375_out_feedback_stall_out_81),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist103_i_llvm_fpga_pop_i1_cmp26122_pop81_conv2d3x375_out_data_out_2(DELAY,426)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist103_i_llvm_fpga_pop_i1_cmp26122_pop81_conv2d3x375_out_data_out_2_delay_0 <= '0;
            redist103_i_llvm_fpga_pop_i1_cmp26122_pop81_conv2d3x375_out_data_out_2_q <= '0;
        end
        else
        begin
            redist103_i_llvm_fpga_pop_i1_cmp26122_pop81_conv2d3x375_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_cmp26122_pop81_conv2d3x375_out_data_out);
            redist103_i_llvm_fpga_pop_i1_cmp26122_pop81_conv2d3x375_out_data_out_2_q <= redist103_i_llvm_fpga_pop_i1_cmp26122_pop81_conv2d3x375_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg28(REG,263)@1 + 1
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

    // valid_fanout_reg29(REG,264)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(redist49_sync_together246_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist65_i_llvm_fpga_pop_i32_mul56117_pop80_conv2d3x373_out_data_out_3(DELAY,388)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_i_llvm_fpga_pop_i32_mul56117_pop80_conv2d3x373_out_data_out_3_q <= '0;
        end
        else
        begin
            redist65_i_llvm_fpga_pop_i32_mul56117_pop80_conv2d3x373_out_data_out_3_q <= $unsigned(redist64_i_llvm_fpga_pop_i32_mul56117_pop80_conv2d3x373_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i32_mul56117_push80_conv2d3x374(BLACKBOX,164)@5
    // out out_feedback_out_80@20000000
    // out out_feedback_valid_out_80@20000000
    conv2d3x3_i_llvm_fpga_push_i32_mul56117_push80_0 thei_llvm_fpga_push_i32_mul56117_push80_conv2d3x374 (
        .in_data_in(redist65_i_llvm_fpga_pop_i32_mul56117_pop80_conv2d3x373_out_data_out_3_q),
        .in_feedback_stall_in_80(i_llvm_fpga_pop_i32_mul56117_pop80_conv2d3x373_out_feedback_stall_out_80),
        .in_keep_going43_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(),
        .out_feedback_out_80(i_llvm_fpga_push_i32_mul56117_push80_conv2d3x374_out_feedback_out_80),
        .out_feedback_valid_out_80(i_llvm_fpga_push_i32_mul56117_push80_conv2d3x374_out_feedback_valid_out_80),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_sync_together246_aunroll_x_in_c0_eni47_13_tpl_1(DELAY,335)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together246_aunroll_x_in_c0_eni47_13_tpl_1_q <= '0;
        end
        else
        begin
            redist12_sync_together246_aunroll_x_in_c0_eni47_13_tpl_1_q <= $unsigned(in_c0_eni47_13_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul56117_pop80_conv2d3x373(BLACKBOX,132)@2
    // out out_feedback_stall_out_80@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_mul56117_pop80_0 thei_llvm_fpga_pop_i32_mul56117_pop80_conv2d3x373 (
        .in_data_in(redist12_sync_together246_aunroll_x_in_c0_eni47_13_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_80(i_llvm_fpga_push_i32_mul56117_push80_conv2d3x374_out_feedback_out_80),
        .in_feedback_valid_in_80(i_llvm_fpga_push_i32_mul56117_push80_conv2d3x374_out_feedback_valid_out_80),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul56117_pop80_conv2d3x373_out_data_out),
        .out_feedback_stall_out_80(i_llvm_fpga_pop_i32_mul56117_pop80_conv2d3x373_out_feedback_stall_out_80),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist64_i_llvm_fpga_pop_i32_mul56117_pop80_conv2d3x373_out_data_out_2(DELAY,387)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_i_llvm_fpga_pop_i32_mul56117_pop80_conv2d3x373_out_data_out_2_delay_0 <= '0;
            redist64_i_llvm_fpga_pop_i32_mul56117_pop80_conv2d3x373_out_data_out_2_q <= '0;
        end
        else
        begin
            redist64_i_llvm_fpga_pop_i32_mul56117_pop80_conv2d3x373_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i32_mul56117_pop80_conv2d3x373_out_data_out);
            redist64_i_llvm_fpga_pop_i32_mul56117_pop80_conv2d3x373_out_data_out_2_q <= redist64_i_llvm_fpga_pop_i32_mul56117_pop80_conv2d3x373_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg26(REG,261)@1 + 1
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

    // valid_fanout_reg27(REG,262)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist49_sync_together246_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist84_i_llvm_fpga_pop_i32_add112_pop79_conv2d3x371_out_data_out_3(DELAY,407)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist84_i_llvm_fpga_pop_i32_add112_pop79_conv2d3x371_out_data_out_3_q <= '0;
        end
        else
        begin
            redist84_i_llvm_fpga_pop_i32_add112_pop79_conv2d3x371_out_data_out_3_q <= $unsigned(redist83_i_llvm_fpga_pop_i32_add112_pop79_conv2d3x371_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i32_add112_push79_conv2d3x372(BLACKBOX,156)@5
    // out out_feedback_out_79@20000000
    // out out_feedback_valid_out_79@20000000
    conv2d3x3_i_llvm_fpga_push_i32_add112_push79_0 thei_llvm_fpga_push_i32_add112_push79_conv2d3x372 (
        .in_data_in(redist84_i_llvm_fpga_pop_i32_add112_pop79_conv2d3x371_out_data_out_3_q),
        .in_feedback_stall_in_79(i_llvm_fpga_pop_i32_add112_pop79_conv2d3x371_out_feedback_stall_out_79),
        .in_keep_going43_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(),
        .out_feedback_out_79(i_llvm_fpga_push_i32_add112_push79_conv2d3x372_out_feedback_out_79),
        .out_feedback_valid_out_79(i_llvm_fpga_push_i32_add112_push79_conv2d3x372_out_feedback_valid_out_79),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_sync_together246_aunroll_x_in_c0_eni47_12_tpl_1(DELAY,334)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together246_aunroll_x_in_c0_eni47_12_tpl_1_q <= '0;
        end
        else
        begin
            redist11_sync_together246_aunroll_x_in_c0_eni47_12_tpl_1_q <= $unsigned(in_c0_eni47_12_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_add112_pop79_conv2d3x371(BLACKBOX,124)@2
    // out out_feedback_stall_out_79@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_add112_pop79_0 thei_llvm_fpga_pop_i32_add112_pop79_conv2d3x371 (
        .in_data_in(redist11_sync_together246_aunroll_x_in_c0_eni47_12_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_79(i_llvm_fpga_push_i32_add112_push79_conv2d3x372_out_feedback_out_79),
        .in_feedback_valid_in_79(i_llvm_fpga_push_i32_add112_push79_conv2d3x372_out_feedback_valid_out_79),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(i_llvm_fpga_pop_i32_add112_pop79_conv2d3x371_out_data_out),
        .out_feedback_stall_out_79(i_llvm_fpga_pop_i32_add112_pop79_conv2d3x371_out_feedback_stall_out_79),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist83_i_llvm_fpga_pop_i32_add112_pop79_conv2d3x371_out_data_out_2(DELAY,406)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist83_i_llvm_fpga_pop_i32_add112_pop79_conv2d3x371_out_data_out_2_delay_0 <= '0;
            redist83_i_llvm_fpga_pop_i32_add112_pop79_conv2d3x371_out_data_out_2_q <= '0;
        end
        else
        begin
            redist83_i_llvm_fpga_pop_i32_add112_pop79_conv2d3x371_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i32_add112_pop79_conv2d3x371_out_data_out);
            redist83_i_llvm_fpga_pop_i32_add112_pop79_conv2d3x371_out_data_out_2_q <= redist83_i_llvm_fpga_pop_i32_add112_pop79_conv2d3x371_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg24(REG,259)@1 + 1
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

    // valid_fanout_reg25(REG,260)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist49_sync_together246_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor1209_conv2d3x39(REG,107)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor1209_conv2d3x39_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor1209_conv2d3x39_q <= i_llvm_fpga_pipeline_keep_going43_conv2d3x38_out_data_out;
        end
    end

    // redist88_i_llvm_fpga_pop_i1_notcmp81107_pop78_conv2d3x369_out_data_out_3(DELAY,411)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist88_i_llvm_fpga_pop_i1_notcmp81107_pop78_conv2d3x369_out_data_out_3_q <= '0;
        end
        else
        begin
            redist88_i_llvm_fpga_pop_i1_notcmp81107_pop78_conv2d3x369_out_data_out_3_q <= $unsigned(redist87_i_llvm_fpga_pop_i1_notcmp81107_pop78_conv2d3x369_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp81107_push78_conv2d3x370(BLACKBOX,150)@5
    // out out_feedback_out_78@20000000
    // out out_feedback_valid_out_78@20000000
    conv2d3x3_i_llvm_fpga_push_i1_notcmp81107_push78_0 thei_llvm_fpga_push_i1_notcmp81107_push78_conv2d3x370 (
        .in_data_in(redist88_i_llvm_fpga_pop_i1_notcmp81107_pop78_conv2d3x369_out_data_out_3_q),
        .in_feedback_stall_in_78(i_llvm_fpga_pop_i1_notcmp81107_pop78_conv2d3x369_out_feedback_stall_out_78),
        .in_keep_going43_fanout_adaptor1209(i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor1209_conv2d3x39_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(),
        .out_feedback_out_78(i_llvm_fpga_push_i1_notcmp81107_push78_conv2d3x370_out_feedback_out_78),
        .out_feedback_valid_out_78(i_llvm_fpga_push_i1_notcmp81107_push78_conv2d3x370_out_feedback_valid_out_78),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_sync_together246_aunroll_x_in_c0_eni47_11_tpl_1(DELAY,333)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together246_aunroll_x_in_c0_eni47_11_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together246_aunroll_x_in_c0_eni47_11_tpl_1_q <= $unsigned(in_c0_eni47_11_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp81107_pop78_conv2d3x369(BLACKBOX,119)@2
    // out out_feedback_stall_out_78@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_notcmp81107_pop78_0 thei_llvm_fpga_pop_i1_notcmp81107_pop78_conv2d3x369 (
        .in_data_in(redist10_sync_together246_aunroll_x_in_c0_eni47_11_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_78(i_llvm_fpga_push_i1_notcmp81107_push78_conv2d3x370_out_feedback_out_78),
        .in_feedback_valid_in_78(i_llvm_fpga_push_i1_notcmp81107_push78_conv2d3x370_out_feedback_valid_out_78),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp81107_pop78_conv2d3x369_out_data_out),
        .out_feedback_stall_out_78(i_llvm_fpga_pop_i1_notcmp81107_pop78_conv2d3x369_out_feedback_stall_out_78),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist87_i_llvm_fpga_pop_i1_notcmp81107_pop78_conv2d3x369_out_data_out_2(DELAY,410)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist87_i_llvm_fpga_pop_i1_notcmp81107_pop78_conv2d3x369_out_data_out_2_delay_0 <= '0;
            redist87_i_llvm_fpga_pop_i1_notcmp81107_pop78_conv2d3x369_out_data_out_2_q <= '0;
        end
        else
        begin
            redist87_i_llvm_fpga_pop_i1_notcmp81107_pop78_conv2d3x369_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp81107_pop78_conv2d3x369_out_data_out);
            redist87_i_llvm_fpga_pop_i1_notcmp81107_pop78_conv2d3x369_out_data_out_2_q <= redist87_i_llvm_fpga_pop_i1_notcmp81107_pop78_conv2d3x369_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg22(REG,257)@1 + 1
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

    // valid_fanout_reg23(REG,258)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist49_sync_together246_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist106_i_llvm_fpga_pop_f32_lm25101_pop77_conv2d3x367_out_data_out_3(DELAY,429)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist106_i_llvm_fpga_pop_f32_lm25101_pop77_conv2d3x367_out_data_out_3_q <= '0;
        end
        else
        begin
            redist106_i_llvm_fpga_pop_f32_lm25101_pop77_conv2d3x367_out_data_out_3_q <= $unsigned(redist105_i_llvm_fpga_pop_f32_lm25101_pop77_conv2d3x367_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_f32_lm25101_push77_conv2d3x368(BLACKBOX,140)@5
    // out out_feedback_out_77@20000000
    // out out_feedback_valid_out_77@20000000
    conv2d3x3_i_llvm_fpga_push_f32_lm25101_push77_0 thei_llvm_fpga_push_f32_lm25101_push77_conv2d3x368 (
        .in_data_in(redist106_i_llvm_fpga_pop_f32_lm25101_pop77_conv2d3x367_out_data_out_3_q),
        .in_feedback_stall_in_77(i_llvm_fpga_pop_f32_lm25101_pop77_conv2d3x367_out_feedback_stall_out_77),
        .in_keep_going43_fanout_adaptor1209(i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor1209_conv2d3x39_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_77(i_llvm_fpga_push_f32_lm25101_push77_conv2d3x368_out_feedback_out_77),
        .out_feedback_valid_out_77(i_llvm_fpga_push_f32_lm25101_push77_conv2d3x368_out_feedback_valid_out_77),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together246_aunroll_x_in_c0_eni47_10_tpl_1(DELAY,332)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together246_aunroll_x_in_c0_eni47_10_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together246_aunroll_x_in_c0_eni47_10_tpl_1_q <= $unsigned(in_c0_eni47_10_tpl);
        end
    end

    // i_llvm_fpga_pop_f32_lm25101_pop77_conv2d3x367(BLACKBOX,110)@2
    // out out_feedback_stall_out_77@20000000
    conv2d3x3_i_llvm_fpga_pop_f32_lm25101_pop77_0 thei_llvm_fpga_pop_f32_lm25101_pop77_conv2d3x367 (
        .in_data_in(redist9_sync_together246_aunroll_x_in_c0_eni47_10_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_77(i_llvm_fpga_push_f32_lm25101_push77_conv2d3x368_out_feedback_out_77),
        .in_feedback_valid_in_77(i_llvm_fpga_push_f32_lm25101_push77_conv2d3x368_out_feedback_valid_out_77),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(i_llvm_fpga_pop_f32_lm25101_pop77_conv2d3x367_out_data_out),
        .out_feedback_stall_out_77(i_llvm_fpga_pop_f32_lm25101_pop77_conv2d3x367_out_feedback_stall_out_77),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist105_i_llvm_fpga_pop_f32_lm25101_pop77_conv2d3x367_out_data_out_2(DELAY,428)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist105_i_llvm_fpga_pop_f32_lm25101_pop77_conv2d3x367_out_data_out_2_delay_0 <= '0;
            redist105_i_llvm_fpga_pop_f32_lm25101_pop77_conv2d3x367_out_data_out_2_q <= '0;
        end
        else
        begin
            redist105_i_llvm_fpga_pop_f32_lm25101_pop77_conv2d3x367_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_lm25101_pop77_conv2d3x367_out_data_out);
            redist105_i_llvm_fpga_pop_f32_lm25101_pop77_conv2d3x367_out_data_out_2_q <= redist105_i_llvm_fpga_pop_f32_lm25101_pop77_conv2d3x367_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg20(REG,255)@1 + 1
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

    // valid_fanout_reg21(REG,256)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist49_sync_together246_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist53_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi95_pop76_conv2d3x365_out_data_out_3(DELAY,376)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi95_pop76_conv2d3x365_out_data_out_3_q <= '0;
        end
        else
        begin
            redist53_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi95_pop76_conv2d3x365_out_data_out_3_q <= $unsigned(redist52_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi95_pop76_conv2d3x365_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi95_push76_conv2d3x366(BLACKBOX,171)@5
    // out out_feedback_out_76@20000000
    // out out_feedback_valid_out_76@20000000
    conv2d3x3_i_llvm_fpga_push_p1024f32_outp0000place_phi95_push76_0 thei_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi95_push76_conv2d3x366 (
        .in_data_in(redist53_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi95_pop76_conv2d3x365_out_data_out_3_q),
        .in_feedback_stall_in_76(i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi95_pop76_conv2d3x365_out_feedback_stall_out_76),
        .in_keep_going43_fanout_adaptor1209(i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor1209_conv2d3x39_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_76(i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi95_push76_conv2d3x366_out_feedback_out_76),
        .out_feedback_valid_out_76(i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi95_push76_conv2d3x366_out_feedback_valid_out_76),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together246_aunroll_x_in_c0_eni47_9_tpl_1(DELAY,331)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together246_aunroll_x_in_c0_eni47_9_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together246_aunroll_x_in_c0_eni47_9_tpl_1_q <= $unsigned(in_c0_eni47_9_tpl);
        end
    end

    // i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi95_pop76_conv2d3x365(BLACKBOX,139)@2
    // out out_feedback_stall_out_76@20000000
    conv2d3x3_i_llvm_fpga_pop_p1024f32_outpu0000eplace_phi95_pop76_0 thei_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi95_pop76_conv2d3x365 (
        .in_data_in(redist8_sync_together246_aunroll_x_in_c0_eni47_9_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_76(i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi95_push76_conv2d3x366_out_feedback_out_76),
        .in_feedback_valid_in_76(i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi95_push76_conv2d3x366_out_feedback_valid_out_76),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi95_pop76_conv2d3x365_out_data_out),
        .out_feedback_stall_out_76(i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi95_pop76_conv2d3x365_out_feedback_stall_out_76),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist52_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi95_pop76_conv2d3x365_out_data_out_2(DELAY,375)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi95_pop76_conv2d3x365_out_data_out_2_delay_0 <= '0;
            redist52_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi95_pop76_conv2d3x365_out_data_out_2_q <= '0;
        end
        else
        begin
            redist52_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi95_pop76_conv2d3x365_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi95_pop76_conv2d3x365_out_data_out);
            redist52_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi95_pop76_conv2d3x365_out_data_out_2_q <= redist52_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi95_pop76_conv2d3x365_out_data_out_2_delay_0;
        end
    end

    // i_masked52_conv2d3x364(LOGICAL,177)@4
    assign i_masked52_conv2d3x364_q = i_notcmp39_conv2d3x359_q & i_first_cleanup48_conv2d3x35_sel_x_b;

    // c_i32_0172(CONSTANT,75)
    assign c_i32_0172_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg6(REG,241)@1 + 1
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

    // valid_fanout_reg19(REG,254)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist49_sync_together246_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i32_1174(CONSTANT,76)
    assign c_i32_1174_q = $unsigned(32'b00000000000000000000000000000001);

    // redist73_i_llvm_fpga_pop_i32_m_053_1_pop71_conv2d3x319_out_data_out_3(DELAY,396)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist73_i_llvm_fpga_pop_i32_m_053_1_pop71_conv2d3x319_out_data_out_3_q <= '0;
        end
        else
        begin
            redist73_i_llvm_fpga_pop_i32_m_053_1_pop71_conv2d3x319_out_data_out_3_q <= $unsigned(redist72_i_llvm_fpga_pop_i32_m_053_1_pop71_conv2d3x319_out_data_out_2_q);
        end
    end

    // i_inc_1_conv2d3x351(ADD,103)@5
    assign i_inc_1_conv2d3x351_a = {1'b0, redist73_i_llvm_fpga_pop_i32_m_053_1_pop71_conv2d3x319_out_data_out_3_q};
    assign i_inc_1_conv2d3x351_b = {1'b0, c_i32_1174_q};
    assign i_inc_1_conv2d3x351_o = $unsigned(i_inc_1_conv2d3x351_a) + $unsigned(i_inc_1_conv2d3x351_b);
    assign i_inc_1_conv2d3x351_q = i_inc_1_conv2d3x351_o[32:0];

    // bgTrunc_i_inc_1_conv2d3x351_sel_x(BITSELECT,205)@5
    assign bgTrunc_i_inc_1_conv2d3x351_sel_x_b = i_inc_1_conv2d3x351_q[31:0];

    // i_llvm_fpga_push_i32_m_053_1_push71_conv2d3x352(BLACKBOX,161)@5
    // out out_feedback_out_71@20000000
    // out out_feedback_valid_out_71@20000000
    conv2d3x3_i_llvm_fpga_push_i32_m_053_1_push71_0 thei_llvm_fpga_push_i32_m_053_1_push71_conv2d3x352 (
        .in_data_in(bgTrunc_i_inc_1_conv2d3x351_sel_x_b),
        .in_feedback_stall_in_71(i_llvm_fpga_pop_i32_m_053_1_pop71_conv2d3x319_out_feedback_stall_out_71),
        .in_keep_going43_fanout_adaptor1209(i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor1209_conv2d3x39_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_71(i_llvm_fpga_push_i32_m_053_1_push71_conv2d3x352_out_feedback_out_71),
        .out_feedback_valid_out_71(i_llvm_fpga_push_i32_m_053_1_push71_conv2d3x352_out_feedback_valid_out_71),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_m_053_1_pop71_conv2d3x319(BLACKBOX,129)@2
    // out out_feedback_stall_out_71@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_m_053_1_pop71_0 thei_llvm_fpga_pop_i32_m_053_1_pop71_conv2d3x319 (
        .in_data_in(c_i32_0172_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_71(i_llvm_fpga_push_i32_m_053_1_push71_conv2d3x352_out_feedback_out_71),
        .in_feedback_valid_in_71(i_llvm_fpga_push_i32_m_053_1_push71_conv2d3x352_out_feedback_valid_out_71),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_m_053_1_pop71_conv2d3x319_out_data_out),
        .out_feedback_stall_out_71(i_llvm_fpga_pop_i32_m_053_1_pop71_conv2d3x319_out_feedback_stall_out_71),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist71_i_llvm_fpga_pop_i32_m_053_1_pop71_conv2d3x319_out_data_out_1(DELAY,394)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_i_llvm_fpga_pop_i32_m_053_1_pop71_conv2d3x319_out_data_out_1_q <= '0;
        end
        else
        begin
            redist71_i_llvm_fpga_pop_i32_m_053_1_pop71_conv2d3x319_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_m_053_1_pop71_conv2d3x319_out_data_out);
        end
    end

    // redist72_i_llvm_fpga_pop_i32_m_053_1_pop71_conv2d3x319_out_data_out_2(DELAY,395)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist72_i_llvm_fpga_pop_i32_m_053_1_pop71_conv2d3x319_out_data_out_2_q <= '0;
        end
        else
        begin
            redist72_i_llvm_fpga_pop_i32_m_053_1_pop71_conv2d3x319_out_data_out_2_q <= $unsigned(redist71_i_llvm_fpga_pop_i32_m_053_1_pop71_conv2d3x319_out_data_out_1_q);
        end
    end

    // c_i32_3171(CONSTANT,77)
    assign c_i32_3171_q = $unsigned(32'b00000000000000000000000000000011);

    // valid_fanout_reg4(REG,239)@1 + 1
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

    // valid_fanout_reg5(REG,240)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist49_sync_together246_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist68_i_llvm_fpga_pop_i32_mul39_add4188_pop99_conv2d3x316_out_data_out_3(DELAY,391)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist68_i_llvm_fpga_pop_i32_mul39_add4188_pop99_conv2d3x316_out_data_out_3_q <= '0;
        end
        else
        begin
            redist68_i_llvm_fpga_pop_i32_mul39_add4188_pop99_conv2d3x316_out_data_out_3_q <= $unsigned(redist67_i_llvm_fpga_pop_i32_mul39_add4188_pop99_conv2d3x316_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i32_mul39_add4188_push99_conv2d3x317(BLACKBOX,163)@5
    // out out_feedback_out_99@20000000
    // out out_feedback_valid_out_99@20000000
    conv2d3x3_i_llvm_fpga_push_i32_mul39_add4188_push99_0 thei_llvm_fpga_push_i32_mul39_add4188_push99_conv2d3x317 (
        .in_data_in(redist68_i_llvm_fpga_pop_i32_mul39_add4188_pop99_conv2d3x316_out_data_out_3_q),
        .in_feedback_stall_in_99(i_llvm_fpga_pop_i32_mul39_add4188_pop99_conv2d3x316_out_feedback_stall_out_99),
        .in_keep_going43_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_99(i_llvm_fpga_push_i32_mul39_add4188_push99_conv2d3x317_out_feedback_out_99),
        .out_feedback_valid_out_99(i_llvm_fpga_push_i32_mul39_add4188_push99_conv2d3x317_out_feedback_valid_out_99),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together246_aunroll_x_in_c0_eni47_2_tpl_1(DELAY,324)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together246_aunroll_x_in_c0_eni47_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together246_aunroll_x_in_c0_eni47_2_tpl_1_q <= $unsigned(in_c0_eni47_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul39_add4188_pop99_conv2d3x316(BLACKBOX,131)@2
    // out out_feedback_stall_out_99@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_mul39_add4188_pop99_0 thei_llvm_fpga_pop_i32_mul39_add4188_pop99_conv2d3x316 (
        .in_data_in(redist1_sync_together246_aunroll_x_in_c0_eni47_2_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor1208_conv2d3x32_q),
        .in_feedback_in_99(i_llvm_fpga_push_i32_mul39_add4188_push99_conv2d3x317_out_feedback_out_99),
        .in_feedback_valid_in_99(i_llvm_fpga_push_i32_mul39_add4188_push99_conv2d3x317_out_feedback_valid_out_99),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul39_add4188_pop99_conv2d3x316_out_data_out),
        .out_feedback_stall_out_99(i_llvm_fpga_pop_i32_mul39_add4188_pop99_conv2d3x316_out_feedback_stall_out_99),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist66_i_llvm_fpga_pop_i32_mul39_add4188_pop99_conv2d3x316_out_data_out_1(DELAY,389)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_i_llvm_fpga_pop_i32_mul39_add4188_pop99_conv2d3x316_out_data_out_1_q <= '0;
        end
        else
        begin
            redist66_i_llvm_fpga_pop_i32_mul39_add4188_pop99_conv2d3x316_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_mul39_add4188_pop99_conv2d3x316_out_data_out);
        end
    end

    // i_add41_1_conv2d3x318(ADD,82)@3
    assign i_add41_1_conv2d3x318_a = {1'b0, redist66_i_llvm_fpga_pop_i32_mul39_add4188_pop99_conv2d3x316_out_data_out_1_q};
    assign i_add41_1_conv2d3x318_b = {1'b0, c_i32_3171_q};
    assign i_add41_1_conv2d3x318_o = $unsigned(i_add41_1_conv2d3x318_a) + $unsigned(i_add41_1_conv2d3x318_b);
    assign i_add41_1_conv2d3x318_q = i_add41_1_conv2d3x318_o[32:0];

    // bgTrunc_i_add41_1_conv2d3x318_sel_x(BITSELECT,202)@3
    assign bgTrunc_i_add41_1_conv2d3x318_sel_x_b = i_add41_1_conv2d3x318_q[31:0];

    // redist51_bgTrunc_i_add41_1_conv2d3x318_sel_x_b_1(DELAY,374)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_bgTrunc_i_add41_1_conv2d3x318_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist51_bgTrunc_i_add41_1_conv2d3x318_sel_x_b_1_q <= $unsigned(bgTrunc_i_add41_1_conv2d3x318_sel_x_b);
        end
    end

    // i_add42_1_conv2d3x346(ADD,83)@4
    assign i_add42_1_conv2d3x346_a = {1'b0, redist51_bgTrunc_i_add41_1_conv2d3x318_sel_x_b_1_q};
    assign i_add42_1_conv2d3x346_b = {1'b0, redist72_i_llvm_fpga_pop_i32_m_053_1_pop71_conv2d3x319_out_data_out_2_q};
    assign i_add42_1_conv2d3x346_o = $unsigned(i_add42_1_conv2d3x346_a) + $unsigned(i_add42_1_conv2d3x346_b);
    assign i_add42_1_conv2d3x346_q = i_add42_1_conv2d3x346_o[32:0];

    // bgTrunc_i_add42_1_conv2d3x346_sel_x(BITSELECT,203)@4
    assign bgTrunc_i_add42_1_conv2d3x346_sel_x_b = i_add42_1_conv2d3x346_q[31:0];

    // i_idxprom43_1_conv2d3x347_sel_x(BITSELECT,227)@4
    assign i_idxprom43_1_conv2d3x347_sel_x_b = {32'b00000000000000000000000000000000, bgTrunc_i_add42_1_conv2d3x346_sel_x_b[31:0]};

    // i_idxprom43_1_conv2d3x347_vt_select_31(BITSELECT,102)@4
    assign i_idxprom43_1_conv2d3x347_vt_select_31_b = i_idxprom43_1_conv2d3x347_sel_x_b[31:0];

    // i_idxprom43_1_conv2d3x347_vt_join(BITJOIN,101)@4
    assign i_idxprom43_1_conv2d3x347_vt_join_q = {c_i32_0172_q, i_idxprom43_1_conv2d3x347_vt_select_31_b};

    // i_arrayidx44_1_conv2d3x30_narrow_x(BITSELECT,217)@4
    assign i_arrayidx44_1_conv2d3x30_narrow_x_b = i_idxprom43_1_conv2d3x347_vt_join_q[61:0];

    // i_arrayidx38_14_conv2d3x333_vt_const_1(CONSTANT,84)
    assign i_arrayidx38_14_conv2d3x333_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx44_1_conv2d3x30_shift_join_x(BITJOIN,218)@4
    assign i_arrayidx44_1_conv2d3x30_shift_join_x_q = {i_arrayidx44_1_conv2d3x30_narrow_x_b, i_arrayidx38_14_conv2d3x333_vt_const_1_q};

    // i_arrayidx44_1_conv2d3x30_add_x(ADD,215)@4
    assign i_arrayidx44_1_conv2d3x30_add_x_a = {1'b0, redist54_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi89_pop75_conv2d3x348_out_data_out_2_q};
    assign i_arrayidx44_1_conv2d3x30_add_x_b = {1'b0, i_arrayidx44_1_conv2d3x30_shift_join_x_q};
    assign i_arrayidx44_1_conv2d3x30_add_x_o = $unsigned(i_arrayidx44_1_conv2d3x30_add_x_a) + $unsigned(i_arrayidx44_1_conv2d3x30_add_x_b);
    assign i_arrayidx44_1_conv2d3x30_add_x_q = i_arrayidx44_1_conv2d3x30_add_x_o[64:0];

    // i_arrayidx44_1_conv2d3x30_dupName_0_trunc_sel_x(BITSELECT,220)@4
    assign i_arrayidx44_1_conv2d3x30_dupName_0_trunc_sel_x_b = i_arrayidx44_1_conv2d3x30_add_x_q[63:0];

    // valid_fanout_reg17(REG,252)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg18(REG,253)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist49_sync_together246_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist55_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi89_pop75_conv2d3x348_out_data_out_3(DELAY,378)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi89_pop75_conv2d3x348_out_data_out_3_q <= '0;
        end
        else
        begin
            redist55_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi89_pop75_conv2d3x348_out_data_out_3_q <= $unsigned(redist54_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi89_pop75_conv2d3x348_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi89_push75_conv2d3x349(BLACKBOX,170)@5
    // out out_feedback_out_75@20000000
    // out out_feedback_valid_out_75@20000000
    conv2d3x3_i_llvm_fpga_push_p1024f32_filt0000place_phi89_push75_0 thei_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi89_push75_conv2d3x349 (
        .in_data_in(redist55_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi89_pop75_conv2d3x348_out_data_out_3_q),
        .in_feedback_stall_in_75(i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi89_pop75_conv2d3x348_out_feedback_stall_out_75),
        .in_keep_going43_fanout_adaptor1209(i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor1209_conv2d3x39_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_75(i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi89_push75_conv2d3x349_out_feedback_out_75),
        .out_feedback_valid_out_75(i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi89_push75_conv2d3x349_out_feedback_valid_out_75),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together246_aunroll_x_in_c0_eni47_8_tpl_1(DELAY,330)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together246_aunroll_x_in_c0_eni47_8_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together246_aunroll_x_in_c0_eni47_8_tpl_1_q <= $unsigned(in_c0_eni47_8_tpl);
        end
    end

    // i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi89_pop75_conv2d3x348(BLACKBOX,138)@2
    // out out_feedback_stall_out_75@20000000
    conv2d3x3_i_llvm_fpga_pop_p1024f32_filte0000eplace_phi89_pop75_0 thei_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi89_pop75_conv2d3x348 (
        .in_data_in(redist7_sync_together246_aunroll_x_in_c0_eni47_8_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_75(i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi89_push75_conv2d3x349_out_feedback_out_75),
        .in_feedback_valid_in_75(i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi89_push75_conv2d3x349_out_feedback_valid_out_75),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi89_pop75_conv2d3x348_out_data_out),
        .out_feedback_stall_out_75(i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi89_pop75_conv2d3x348_out_feedback_stall_out_75),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist54_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi89_pop75_conv2d3x348_out_data_out_2(DELAY,377)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi89_pop75_conv2d3x348_out_data_out_2_delay_0 <= '0;
            redist54_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi89_pop75_conv2d3x348_out_data_out_2_q <= '0;
        end
        else
        begin
            redist54_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi89_pop75_conv2d3x348_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi89_pop75_conv2d3x348_out_data_out);
            redist54_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi89_pop75_conv2d3x348_out_data_out_2_q <= redist54_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi89_pop75_conv2d3x348_out_data_out_2_delay_0;
        end
    end

    // i_phi_decision46_and_i0_conv2d3x343(LOGICAL,184)@4
    assign i_phi_decision46_and_i0_conv2d3x343_q = i_llvm_fpga_pop_i1_pop94_conv2d3x341_out_data_out & i_reduction_conv2d3x3_5_conv2d3x340_q;

    // i_unnamed_conv2d3x344(LOGICAL,189)@4
    assign i_unnamed_conv2d3x344_q = i_phi_decision46_and_i0_conv2d3x343_q ^ VCC_q;

    // i_first_cleanup_xor49_or_conv2d3x345(LOGICAL,95)@4
    assign i_first_cleanup_xor49_or_conv2d3x345_q = i_unnamed_conv2d3x344_q | i_first_cleanup_xor49_conv2d3x36_q;

    // valid_fanout_reg7(REG,242)@1 + 1
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

    // valid_fanout_reg8(REG,243)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist49_sync_together246_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist82_i_llvm_fpga_pop_i32_add24189_pop100_conv2d3x320_out_data_out_3(DELAY,405)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist82_i_llvm_fpga_pop_i32_add24189_pop100_conv2d3x320_out_data_out_3_q <= '0;
        end
        else
        begin
            redist82_i_llvm_fpga_pop_i32_add24189_pop100_conv2d3x320_out_data_out_3_q <= $unsigned(redist81_i_llvm_fpga_pop_i32_add24189_pop100_conv2d3x320_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i32_add24189_push100_conv2d3x321(BLACKBOX,157)@5
    // out out_feedback_out_100@20000000
    // out out_feedback_valid_out_100@20000000
    conv2d3x3_i_llvm_fpga_push_i32_add24189_push100_0 thei_llvm_fpga_push_i32_add24189_push100_conv2d3x321 (
        .in_data_in(redist82_i_llvm_fpga_pop_i32_add24189_pop100_conv2d3x320_out_data_out_3_q),
        .in_feedback_stall_in_100(i_llvm_fpga_pop_i32_add24189_pop100_conv2d3x320_out_feedback_stall_out_100),
        .in_keep_going43_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_100(i_llvm_fpga_push_i32_add24189_push100_conv2d3x321_out_feedback_out_100),
        .out_feedback_valid_out_100(i_llvm_fpga_push_i32_add24189_push100_conv2d3x321_out_feedback_valid_out_100),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together246_aunroll_x_in_c0_eni47_3_tpl_1(DELAY,325)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together246_aunroll_x_in_c0_eni47_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together246_aunroll_x_in_c0_eni47_3_tpl_1_q <= $unsigned(in_c0_eni47_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_add24189_pop100_conv2d3x320(BLACKBOX,125)@2
    // out out_feedback_stall_out_100@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_add24189_pop100_0 thei_llvm_fpga_pop_i32_add24189_pop100_conv2d3x320 (
        .in_data_in(redist2_sync_together246_aunroll_x_in_c0_eni47_3_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor1208_conv2d3x32_q),
        .in_feedback_in_100(i_llvm_fpga_push_i32_add24189_push100_conv2d3x321_out_feedback_out_100),
        .in_feedback_valid_in_100(i_llvm_fpga_push_i32_add24189_push100_conv2d3x321_out_feedback_valid_out_100),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_add24189_pop100_conv2d3x320_out_data_out),
        .out_feedback_stall_out_100(i_llvm_fpga_pop_i32_add24189_pop100_conv2d3x320_out_feedback_stall_out_100),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist80_i_llvm_fpga_pop_i32_add24189_pop100_conv2d3x320_out_data_out_1(DELAY,403)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist80_i_llvm_fpga_pop_i32_add24189_pop100_conv2d3x320_out_data_out_1_q <= '0;
        end
        else
        begin
            redist80_i_llvm_fpga_pop_i32_add24189_pop100_conv2d3x320_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_add24189_pop100_conv2d3x320_out_data_out);
        end
    end

    // i_sub25_1_conv2d3x322(ADD,188)@3
    assign i_sub25_1_conv2d3x322_a = {1'b0, redist80_i_llvm_fpga_pop_i32_add24189_pop100_conv2d3x320_out_data_out_1_q};
    assign i_sub25_1_conv2d3x322_b = {1'b0, redist71_i_llvm_fpga_pop_i32_m_053_1_pop71_conv2d3x319_out_data_out_1_q};
    assign i_sub25_1_conv2d3x322_o = $unsigned(i_sub25_1_conv2d3x322_a) + $unsigned(i_sub25_1_conv2d3x322_b);
    assign i_sub25_1_conv2d3x322_q = i_sub25_1_conv2d3x322_o[32:0];

    // bgTrunc_i_sub25_1_conv2d3x322_sel_x(BITSELECT,206)@3
    assign bgTrunc_i_sub25_1_conv2d3x322_sel_x_b = i_sub25_1_conv2d3x322_q[31:0];

    // c_i32_1173_recast_x(CONSTANT,207)
    assign c_i32_1173_recast_x_q = $unsigned(32'b11111111111111111111111111111111);

    // i_cmp29_1_conv2d3x323(COMPARE,90)@3 + 1
    assign i_cmp29_1_conv2d3x323_a = $unsigned({{2{c_i32_1173_recast_x_q[31]}}, c_i32_1173_recast_x_q});
    assign i_cmp29_1_conv2d3x323_b = $unsigned({{2{bgTrunc_i_sub25_1_conv2d3x322_sel_x_b[31]}}, bgTrunc_i_sub25_1_conv2d3x322_sel_x_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp29_1_conv2d3x323_o <= 34'b0;
        end
        else
        begin
            i_cmp29_1_conv2d3x323_o <= $unsigned($signed(i_cmp29_1_conv2d3x323_a) - $signed(i_cmp29_1_conv2d3x323_b));
        end
    end
    assign i_cmp29_1_conv2d3x323_c[0] = i_cmp29_1_conv2d3x323_o[33];

    // i_reduction_conv2d3x3_4_conv2d3x339(LOGICAL,186)@4
    assign i_reduction_conv2d3x3_4_conv2d3x339_q = redist95_i_llvm_fpga_pop_i1_cmp27_1142_pop85_conv2d3x337_out_data_out_2_q & i_cmp29_1_conv2d3x323_c;

    // valid_fanout_reg9(REG,244)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist47_sync_together246_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer10_conv2d3x325(BLACKBOX,172)@0
    // in in_i_dependence@3
    // in in_valid_in@3
    // out out_buffer_out@3
    // out out_valid_out@3
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer10_0 thei_llvm_fpga_sync_buffer_i32_input_size_sync_buffer10_conv2d3x325 (
        .in_buffer_in(in_input_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer10_conv2d3x325_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp31_1_conv2d3x326(COMPARE,91)@3 + 1
    assign i_cmp31_1_conv2d3x326_a = $unsigned({{2{bgTrunc_i_sub25_1_conv2d3x322_sel_x_b[31]}}, bgTrunc_i_sub25_1_conv2d3x322_sel_x_b});
    assign i_cmp31_1_conv2d3x326_b = $unsigned({{2{i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer10_conv2d3x325_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer10_conv2d3x325_out_buffer_out});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp31_1_conv2d3x326_o <= 34'b0;
        end
        else
        begin
            i_cmp31_1_conv2d3x326_o <= $unsigned($signed(i_cmp31_1_conv2d3x326_a) - $signed(i_cmp31_1_conv2d3x326_b));
        end
    end
    assign i_cmp31_1_conv2d3x326_c[0] = i_cmp31_1_conv2d3x326_o[33];

    // i_reduction_conv2d3x3_3_conv2d3x336(LOGICAL,185)@4
    assign i_reduction_conv2d3x3_3_conv2d3x336_q = redist101_i_llvm_fpga_pop_i1_cmp26_1137_pop84_conv2d3x334_out_data_out_2_q & i_cmp31_1_conv2d3x326_c;

    // i_reduction_conv2d3x3_5_conv2d3x340(LOGICAL,187)@4
    assign i_reduction_conv2d3x3_5_conv2d3x340_q = i_reduction_conv2d3x3_3_conv2d3x336_q & i_reduction_conv2d3x3_4_conv2d3x339_q;

    // valid_fanout_reg15(REG,250)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg16(REG,251)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist49_sync_together246_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist96_i_llvm_fpga_pop_i1_cmp27_1142_pop85_conv2d3x337_out_data_out_3(DELAY,419)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist96_i_llvm_fpga_pop_i1_cmp27_1142_pop85_conv2d3x337_out_data_out_3_q <= '0;
        end
        else
        begin
            redist96_i_llvm_fpga_pop_i1_cmp27_1142_pop85_conv2d3x337_out_data_out_3_q <= $unsigned(redist95_i_llvm_fpga_pop_i1_cmp27_1142_pop85_conv2d3x337_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i1_cmp27_1142_push85_conv2d3x338(BLACKBOX,145)@5
    // out out_feedback_out_85@20000000
    // out out_feedback_valid_out_85@20000000
    conv2d3x3_i_llvm_fpga_push_i1_cmp27_1142_push85_0 thei_llvm_fpga_push_i1_cmp27_1142_push85_conv2d3x338 (
        .in_data_in(redist96_i_llvm_fpga_pop_i1_cmp27_1142_pop85_conv2d3x337_out_data_out_3_q),
        .in_feedback_stall_in_85(i_llvm_fpga_pop_i1_cmp27_1142_pop85_conv2d3x337_out_feedback_stall_out_85),
        .in_keep_going43_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_85(i_llvm_fpga_push_i1_cmp27_1142_push85_conv2d3x338_out_feedback_out_85),
        .out_feedback_valid_out_85(i_llvm_fpga_push_i1_cmp27_1142_push85_conv2d3x338_out_feedback_valid_out_85),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together246_aunroll_x_in_c0_eni47_6_tpl_1(DELAY,328)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together246_aunroll_x_in_c0_eni47_6_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together246_aunroll_x_in_c0_eni47_6_tpl_1_q <= $unsigned(in_c0_eni47_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_cmp27_1142_pop85_conv2d3x337(BLACKBOX,115)@2
    // out out_feedback_stall_out_85@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_cmp27_1142_pop85_0 thei_llvm_fpga_pop_i1_cmp27_1142_pop85_conv2d3x337 (
        .in_data_in(redist5_sync_together246_aunroll_x_in_c0_eni47_6_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_85(i_llvm_fpga_push_i1_cmp27_1142_push85_conv2d3x338_out_feedback_out_85),
        .in_feedback_valid_in_85(i_llvm_fpga_push_i1_cmp27_1142_push85_conv2d3x338_out_feedback_valid_out_85),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i1_cmp27_1142_pop85_conv2d3x337_out_data_out),
        .out_feedback_stall_out_85(i_llvm_fpga_pop_i1_cmp27_1142_pop85_conv2d3x337_out_feedback_stall_out_85),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist95_i_llvm_fpga_pop_i1_cmp27_1142_pop85_conv2d3x337_out_data_out_2(DELAY,418)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist95_i_llvm_fpga_pop_i1_cmp27_1142_pop85_conv2d3x337_out_data_out_2_delay_0 <= '0;
            redist95_i_llvm_fpga_pop_i1_cmp27_1142_pop85_conv2d3x337_out_data_out_2_q <= '0;
        end
        else
        begin
            redist95_i_llvm_fpga_pop_i1_cmp27_1142_pop85_conv2d3x337_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_cmp27_1142_pop85_conv2d3x337_out_data_out);
            redist95_i_llvm_fpga_pop_i1_cmp27_1142_pop85_conv2d3x337_out_data_out_2_q <= redist95_i_llvm_fpga_pop_i1_cmp27_1142_pop85_conv2d3x337_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg13(REG,248)@1 + 1
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

    // valid_fanout_reg14(REG,249)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist49_sync_together246_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist102_i_llvm_fpga_pop_i1_cmp26_1137_pop84_conv2d3x334_out_data_out_3(DELAY,425)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist102_i_llvm_fpga_pop_i1_cmp26_1137_pop84_conv2d3x334_out_data_out_3_q <= '0;
        end
        else
        begin
            redist102_i_llvm_fpga_pop_i1_cmp26_1137_pop84_conv2d3x334_out_data_out_3_q <= $unsigned(redist101_i_llvm_fpga_pop_i1_cmp26_1137_pop84_conv2d3x334_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i1_cmp26_1137_push84_conv2d3x335(BLACKBOX,142)@5
    // out out_feedback_out_84@20000000
    // out out_feedback_valid_out_84@20000000
    conv2d3x3_i_llvm_fpga_push_i1_cmp26_1137_push84_0 thei_llvm_fpga_push_i1_cmp26_1137_push84_conv2d3x335 (
        .in_data_in(redist102_i_llvm_fpga_pop_i1_cmp26_1137_pop84_conv2d3x334_out_data_out_3_q),
        .in_feedback_stall_in_84(i_llvm_fpga_pop_i1_cmp26_1137_pop84_conv2d3x334_out_feedback_stall_out_84),
        .in_keep_going43_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_84(i_llvm_fpga_push_i1_cmp26_1137_push84_conv2d3x335_out_feedback_out_84),
        .out_feedback_valid_out_84(i_llvm_fpga_push_i1_cmp26_1137_push84_conv2d3x335_out_feedback_valid_out_84),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together246_aunroll_x_in_c0_eni47_5_tpl_1(DELAY,327)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together246_aunroll_x_in_c0_eni47_5_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together246_aunroll_x_in_c0_eni47_5_tpl_1_q <= $unsigned(in_c0_eni47_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_cmp26_1137_pop84_conv2d3x334(BLACKBOX,112)@2
    // out out_feedback_stall_out_84@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_cmp26_1137_pop84_0 thei_llvm_fpga_pop_i1_cmp26_1137_pop84_conv2d3x334 (
        .in_data_in(redist4_sync_together246_aunroll_x_in_c0_eni47_5_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_84(i_llvm_fpga_push_i1_cmp26_1137_push84_conv2d3x335_out_feedback_out_84),
        .in_feedback_valid_in_84(i_llvm_fpga_push_i1_cmp26_1137_push84_conv2d3x335_out_feedback_valid_out_84),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i1_cmp26_1137_pop84_conv2d3x334_out_data_out),
        .out_feedback_stall_out_84(i_llvm_fpga_pop_i1_cmp26_1137_pop84_conv2d3x334_out_feedback_stall_out_84),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist101_i_llvm_fpga_pop_i1_cmp26_1137_pop84_conv2d3x334_out_data_out_2(DELAY,424)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist101_i_llvm_fpga_pop_i1_cmp26_1137_pop84_conv2d3x334_out_data_out_2_delay_0 <= '0;
            redist101_i_llvm_fpga_pop_i1_cmp26_1137_pop84_conv2d3x334_out_data_out_2_q <= '0;
        end
        else
        begin
            redist101_i_llvm_fpga_pop_i1_cmp26_1137_pop84_conv2d3x334_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_cmp26_1137_pop84_conv2d3x334_out_data_out);
            redist101_i_llvm_fpga_pop_i1_cmp26_1137_pop84_conv2d3x334_out_data_out_2_q <= redist101_i_llvm_fpga_pop_i1_cmp26_1137_pop84_conv2d3x334_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg10(REG,245)@1 + 1
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

    // valid_fanout_reg11(REG,246)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist49_sync_together246_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist79_i_llvm_fpga_pop_i32_add35_1187_pop98_conv2d3x328_out_data_out_3(DELAY,402)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist79_i_llvm_fpga_pop_i32_add35_1187_pop98_conv2d3x328_out_data_out_3_q <= '0;
        end
        else
        begin
            redist79_i_llvm_fpga_pop_i32_add35_1187_pop98_conv2d3x328_out_data_out_3_q <= $unsigned(redist78_i_llvm_fpga_pop_i32_add35_1187_pop98_conv2d3x328_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i32_add35_1187_push98_conv2d3x329(BLACKBOX,158)@5
    // out out_feedback_out_98@20000000
    // out out_feedback_valid_out_98@20000000
    conv2d3x3_i_llvm_fpga_push_i32_add35_1187_push98_0 thei_llvm_fpga_push_i32_add35_1187_push98_conv2d3x329 (
        .in_data_in(redist79_i_llvm_fpga_pop_i32_add35_1187_pop98_conv2d3x328_out_data_out_3_q),
        .in_feedback_stall_in_98(i_llvm_fpga_pop_i32_add35_1187_pop98_conv2d3x328_out_feedback_stall_out_98),
        .in_keep_going43_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going43_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_98(i_llvm_fpga_push_i32_add35_1187_push98_conv2d3x329_out_feedback_out_98),
        .out_feedback_valid_out_98(i_llvm_fpga_push_i32_add35_1187_push98_conv2d3x329_out_feedback_valid_out_98),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together246_aunroll_x_in_c0_eni47_4_tpl_1(DELAY,326)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together246_aunroll_x_in_c0_eni47_4_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together246_aunroll_x_in_c0_eni47_4_tpl_1_q <= $unsigned(in_c0_eni47_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_add35_1187_pop98_conv2d3x328(BLACKBOX,126)@2
    // out out_feedback_stall_out_98@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_add35_1187_pop98_0 thei_llvm_fpga_pop_i32_add35_1187_pop98_conv2d3x328 (
        .in_data_in(redist3_sync_together246_aunroll_x_in_c0_eni47_4_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1817_fanout_adaptor1208_conv2d3x32_q),
        .in_feedback_in_98(i_llvm_fpga_push_i32_add35_1187_push98_conv2d3x329_out_feedback_out_98),
        .in_feedback_valid_in_98(i_llvm_fpga_push_i32_add35_1187_push98_conv2d3x329_out_feedback_valid_out_98),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i32_add35_1187_pop98_conv2d3x328_out_data_out),
        .out_feedback_stall_out_98(i_llvm_fpga_pop_i32_add35_1187_pop98_conv2d3x328_out_feedback_stall_out_98),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist78_i_llvm_fpga_pop_i32_add35_1187_pop98_conv2d3x328_out_data_out_2(DELAY,401)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist78_i_llvm_fpga_pop_i32_add35_1187_pop98_conv2d3x328_out_data_out_2_delay_0 <= '0;
            redist78_i_llvm_fpga_pop_i32_add35_1187_pop98_conv2d3x328_out_data_out_2_q <= '0;
        end
        else
        begin
            redist78_i_llvm_fpga_pop_i32_add35_1187_pop98_conv2d3x328_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i32_add35_1187_pop98_conv2d3x328_out_data_out);
            redist78_i_llvm_fpga_pop_i32_add35_1187_pop98_conv2d3x328_out_data_out_2_q <= redist78_i_llvm_fpga_pop_i32_add35_1187_pop98_conv2d3x328_out_data_out_2_delay_0;
        end
    end

    // redist50_bgTrunc_i_sub25_1_conv2d3x322_sel_x_b_1(DELAY,373)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_bgTrunc_i_sub25_1_conv2d3x322_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist50_bgTrunc_i_sub25_1_conv2d3x322_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub25_1_conv2d3x322_sel_x_b);
        end
    end

    // i_add36_1_conv2d3x330(ADD,81)@4
    assign i_add36_1_conv2d3x330_a = {1'b0, redist50_bgTrunc_i_sub25_1_conv2d3x322_sel_x_b_1_q};
    assign i_add36_1_conv2d3x330_b = {1'b0, redist78_i_llvm_fpga_pop_i32_add35_1187_pop98_conv2d3x328_out_data_out_2_q};
    assign i_add36_1_conv2d3x330_o = $unsigned(i_add36_1_conv2d3x330_a) + $unsigned(i_add36_1_conv2d3x330_b);
    assign i_add36_1_conv2d3x330_q = i_add36_1_conv2d3x330_o[32:0];

    // bgTrunc_i_add36_1_conv2d3x330_sel_x(BITSELECT,201)@4
    assign bgTrunc_i_add36_1_conv2d3x330_sel_x_b = i_add36_1_conv2d3x330_q[31:0];

    // i_idxprom37_1_conv2d3x331_sel_x(BITSELECT,226)@4
    assign i_idxprom37_1_conv2d3x331_sel_x_b = $unsigned({{32{bgTrunc_i_add36_1_conv2d3x330_sel_x_b[31]}}, bgTrunc_i_add36_1_conv2d3x330_sel_x_b[31:0]});

    // i_arrayidx38_14_conv2d3x30_narrow_x(BITSELECT,211)@4
    assign i_arrayidx38_14_conv2d3x30_narrow_x_b = i_idxprom37_1_conv2d3x331_sel_x_b[61:0];

    // i_arrayidx38_14_conv2d3x30_shift_join_x(BITJOIN,212)@4
    assign i_arrayidx38_14_conv2d3x30_shift_join_x_q = {i_arrayidx38_14_conv2d3x30_narrow_x_b, i_arrayidx38_14_conv2d3x333_vt_const_1_q};

    // valid_fanout_reg12(REG,247)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist48_sync_together246_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer27_conv2d3x332(BLACKBOX,173)@0
    // in in_i_dependence@4
    // in in_valid_in@4
    // out out_buffer_out@4
    // out out_valid_out@4
    conv2d3x3_i_llvm_fpga_sync_buffer_p1024f0000t_im_sync_buffer27_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer27_conv2d3x332 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer27_conv2d3x332_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer27_conv2d3x332_vt_select_63(BITSELECT,176)@4
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer27_conv2d3x332_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer27_conv2d3x332_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer27_conv2d3x332_vt_const_9(CONSTANT,174)
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer27_conv2d3x332_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer27_conv2d3x332_vt_join(BITJOIN,175)@4
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer27_conv2d3x332_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer27_conv2d3x332_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer27_conv2d3x332_vt_const_9_q};

    // i_arrayidx38_14_conv2d3x30_add_x(ADD,209)@4
    assign i_arrayidx38_14_conv2d3x30_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer27_conv2d3x332_vt_join_q};
    assign i_arrayidx38_14_conv2d3x30_add_x_b = {1'b0, i_arrayidx38_14_conv2d3x30_shift_join_x_q};
    assign i_arrayidx38_14_conv2d3x30_add_x_o = $unsigned(i_arrayidx38_14_conv2d3x30_add_x_a) + $unsigned(i_arrayidx38_14_conv2d3x30_add_x_b);
    assign i_arrayidx38_14_conv2d3x30_add_x_q = i_arrayidx38_14_conv2d3x30_add_x_o[64:0];

    // i_arrayidx38_14_conv2d3x30_dupName_0_trunc_sel_x(BITSELECT,214)@4
    assign i_arrayidx38_14_conv2d3x30_dupName_0_trunc_sel_x_b = i_arrayidx38_14_conv2d3x30_add_x_q[63:0];

    // i_arrayidx38_14_conv2d3x333_vt_select_63(BITSELECT,86)@4
    assign i_arrayidx38_14_conv2d3x333_vt_select_63_b = i_arrayidx38_14_conv2d3x30_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx38_14_conv2d3x333_vt_join(BITJOIN,85)@4
    assign i_arrayidx38_14_conv2d3x333_vt_join_q = {i_arrayidx38_14_conv2d3x333_vt_select_63_b, i_arrayidx38_14_conv2d3x333_vt_const_1_q};

    // redist81_i_llvm_fpga_pop_i32_add24189_pop100_conv2d3x320_out_data_out_2(DELAY,404)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist81_i_llvm_fpga_pop_i32_add24189_pop100_conv2d3x320_out_data_out_2_q <= '0;
        end
        else
        begin
            redist81_i_llvm_fpga_pop_i32_add24189_pop100_conv2d3x320_out_data_out_2_q <= $unsigned(redist80_i_llvm_fpga_pop_i32_add24189_pop100_conv2d3x320_out_data_out_1_q);
        end
    end

    // redist67_i_llvm_fpga_pop_i32_mul39_add4188_pop99_conv2d3x316_out_data_out_2(DELAY,390)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_i_llvm_fpga_pop_i32_mul39_add4188_pop99_conv2d3x316_out_data_out_2_q <= '0;
        end
        else
        begin
            redist67_i_llvm_fpga_pop_i32_mul39_add4188_pop99_conv2d3x316_out_data_out_2_q <= $unsigned(redist66_i_llvm_fpga_pop_i32_mul39_add4188_pop99_conv2d3x316_out_data_out_1_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,233)@4
    assign out_c0_exi52914_0_tpl = GND_q;
    assign out_c0_exi52914_1_tpl = i_llvm_fpga_pipeline_keep_going43_conv2d3x38_out_data_out;
    assign out_c0_exi52914_2_tpl = redist67_i_llvm_fpga_pop_i32_mul39_add4188_pop99_conv2d3x316_out_data_out_2_q;
    assign out_c0_exi52914_3_tpl = redist81_i_llvm_fpga_pop_i32_add24189_pop100_conv2d3x320_out_data_out_2_q;
    assign out_c0_exi52914_4_tpl = i_arrayidx38_14_conv2d3x333_vt_join_q;
    assign out_c0_exi52914_5_tpl = redist101_i_llvm_fpga_pop_i1_cmp26_1137_pop84_conv2d3x334_out_data_out_2_q;
    assign out_c0_exi52914_6_tpl = redist95_i_llvm_fpga_pop_i1_cmp27_1142_pop85_conv2d3x337_out_data_out_2_q;
    assign out_c0_exi52914_7_tpl = i_reduction_conv2d3x3_5_conv2d3x340_q;
    assign out_c0_exi52914_8_tpl = i_llvm_fpga_pop_i1_pop94_conv2d3x341_out_data_out;
    assign out_c0_exi52914_9_tpl = i_first_cleanup_xor49_or_conv2d3x345_q;
    assign out_c0_exi52914_10_tpl = redist54_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi89_pop75_conv2d3x348_out_data_out_2_q;
    assign out_c0_exi52914_11_tpl = i_arrayidx44_1_conv2d3x30_dupName_0_trunc_sel_x_b;
    assign out_c0_exi52914_12_tpl = i_masked52_conv2d3x364_q;
    assign out_c0_exi52914_13_tpl = redist52_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi95_pop76_conv2d3x365_out_data_out_2_q;
    assign out_c0_exi52914_14_tpl = redist105_i_llvm_fpga_pop_f32_lm25101_pop77_conv2d3x367_out_data_out_2_q;
    assign out_c0_exi52914_15_tpl = redist87_i_llvm_fpga_pop_i1_notcmp81107_pop78_conv2d3x369_out_data_out_2_q;
    assign out_c0_exi52914_16_tpl = redist83_i_llvm_fpga_pop_i32_add112_pop79_conv2d3x371_out_data_out_2_q;
    assign out_c0_exi52914_17_tpl = redist64_i_llvm_fpga_pop_i32_mul56117_pop80_conv2d3x373_out_data_out_2_q;
    assign out_c0_exi52914_18_tpl = redist103_i_llvm_fpga_pop_i1_cmp26122_pop81_conv2d3x375_out_data_out_2_q;
    assign out_c0_exi52914_19_tpl = redist97_i_llvm_fpga_pop_i1_cmp27127_pop82_conv2d3x377_out_data_out_2_q;
    assign out_c0_exi52914_20_tpl = redist58_i_llvm_fpga_pop_i32_sub_1132_pop83_conv2d3x379_out_data_out_2_q;
    assign out_c0_exi52914_21_tpl = redist56_i_llvm_fpga_pop_i32_sub_2147_pop86_conv2d3x381_out_data_out_2_q;
    assign out_c0_exi52914_22_tpl = redist99_i_llvm_fpga_pop_i1_cmp26_2152_pop87_conv2d3x383_out_data_out_2_q;
    assign out_c0_exi52914_23_tpl = redist93_i_llvm_fpga_pop_i1_cmp27_2157_pop88_conv2d3x385_out_data_out_2_q;
    assign out_c0_exi52914_24_tpl = redist89_i_llvm_fpga_pop_i1_notcmp77162_pop89_conv2d3x387_out_data_out_2_q;
    assign out_c0_exi52914_25_tpl = redist60_i_llvm_fpga_pop_i32_stride_sync_buffer165_pop90_conv2d3x389_out_data_out_2_q;
    assign out_c0_exi52914_26_tpl = redist62_i_llvm_fpga_pop_i32_pad_sync_buffer169_pop91_conv2d3x391_out_data_out_2_q;
    assign out_c0_exi52914_27_tpl = redist91_i_llvm_fpga_pop_i1_notcmp73173_pop92_conv2d3x393_out_data_out_2_q;
    assign out_c0_exi52914_28_tpl = redist74_i_llvm_fpga_pop_i32_j_061_pop24177_pop93_conv2d3x395_out_data_out_2_q;
    assign out_c0_exi52914_29_tpl = redist69_i_llvm_fpga_pop_i32_mul32182_pop95_conv2d3x397_out_data_out_2_q;
    assign out_c0_exi52914_30_tpl = redist76_i_llvm_fpga_pop_i32_inc50185_pop96_conv2d3x399_out_data_out_2_q;
    assign out_c0_exi52914_31_tpl = redist85_i_llvm_fpga_pop_i1_pop97_conv2d3x3101_out_data_out_2_q;
    assign out_c0_exi52914_32_tpl = redist0_sync_together246_aunroll_x_in_c0_eni47_1_tpl_3_q;
    assign out_c0_exi52914_33_tpl = redist27_sync_together246_aunroll_x_in_c0_eni47_28_tpl_3_mem_q;
    assign out_c0_exi52914_34_tpl = redist28_sync_together246_aunroll_x_in_c0_eni47_29_tpl_3_mem_q;
    assign out_c0_exi52914_35_tpl = redist29_sync_together246_aunroll_x_in_c0_eni47_30_tpl_3_mem_q;
    assign out_c0_exi52914_36_tpl = redist30_sync_together246_aunroll_x_in_c0_eni47_31_tpl_3_q;
    assign out_c0_exi52914_37_tpl = redist31_sync_together246_aunroll_x_in_c0_eni47_32_tpl_3_mem_q;
    assign out_c0_exi52914_38_tpl = redist32_sync_together246_aunroll_x_in_c0_eni47_33_tpl_3_mem_q;
    assign out_c0_exi52914_39_tpl = redist33_sync_together246_aunroll_x_in_c0_eni47_34_tpl_3_q;
    assign out_c0_exi52914_40_tpl = redist34_sync_together246_aunroll_x_in_c0_eni47_35_tpl_3_q;
    assign out_c0_exi52914_41_tpl = redist35_sync_together246_aunroll_x_in_c0_eni47_36_tpl_3_mem_q;
    assign out_c0_exi52914_42_tpl = redist36_sync_together246_aunroll_x_in_c0_eni47_37_tpl_3_q;
    assign out_c0_exi52914_43_tpl = redist37_sync_together246_aunroll_x_in_c0_eni47_38_tpl_3_q;
    assign out_c0_exi52914_44_tpl = redist38_sync_together246_aunroll_x_in_c0_eni47_39_tpl_3_mem_q;
    assign out_c0_exi52914_45_tpl = redist39_sync_together246_aunroll_x_in_c0_eni47_40_tpl_3_q;
    assign out_c0_exi52914_46_tpl = redist40_sync_together246_aunroll_x_in_c0_eni47_41_tpl_3_q;
    assign out_c0_exi52914_47_tpl = redist41_sync_together246_aunroll_x_in_c0_eni47_42_tpl_3_q;
    assign out_c0_exi52914_48_tpl = redist42_sync_together246_aunroll_x_in_c0_eni47_43_tpl_3_mem_q;
    assign out_c0_exi52914_49_tpl = redist43_sync_together246_aunroll_x_in_c0_eni47_44_tpl_3_mem_q;
    assign out_c0_exi52914_50_tpl = redist44_sync_together246_aunroll_x_in_c0_eni47_45_tpl_3_mem_q;
    assign out_c0_exi52914_51_tpl = redist45_sync_together246_aunroll_x_in_c0_eni47_46_tpl_3_q;
    assign out_c0_exi52914_52_tpl = redist46_sync_together246_aunroll_x_in_c0_eni47_47_tpl_3_mem_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d3x311 = GND_q;

endmodule
