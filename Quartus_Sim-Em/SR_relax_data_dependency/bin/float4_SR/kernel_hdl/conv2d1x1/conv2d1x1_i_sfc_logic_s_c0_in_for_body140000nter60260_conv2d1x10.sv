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

// SystemVerilog created from conv2d1x1_i_sfc_logic_s_c0_in_for_body140000nter60260_conv2d1x10
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_logic_s_c0_in_for_body140000nter60260_conv2d1x10 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x110_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x110_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_filter_weight,
    input wire [63:0] in_input_im,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    output wire [0:0] out_c0_exi82_0_tpl,
    output wire [0:0] out_c0_exi82_1_tpl,
    output wire [0:0] out_c0_exi82_2_tpl,
    output wire [0:0] out_c0_exi82_3_tpl,
    output wire [0:0] out_c0_exi82_4_tpl,
    output wire [0:0] out_c0_exi82_5_tpl,
    output wire [0:0] out_c0_exi82_6_tpl,
    output wire [0:0] out_c0_exi82_7_tpl,
    output wire [0:0] out_c0_exi82_8_tpl,
    output wire [31:0] out_c0_exi82_9_tpl,
    output wire [63:0] out_c0_exi82_10_tpl,
    output wire [0:0] out_c0_exi82_11_tpl,
    output wire [31:0] out_c0_exi82_12_tpl,
    output wire [31:0] out_c0_exi82_13_tpl,
    output wire [63:0] out_c0_exi82_14_tpl,
    output wire [0:0] out_c0_exi82_15_tpl,
    output wire [0:0] out_c0_exi82_16_tpl,
    output wire [31:0] out_c0_exi82_17_tpl,
    output wire [31:0] out_c0_exi82_18_tpl,
    output wire [0:0] out_c0_exi82_19_tpl,
    output wire [31:0] out_c0_exi82_20_tpl,
    output wire [31:0] out_c0_exi82_21_tpl,
    output wire [31:0] out_c0_exi82_22_tpl,
    output wire [0:0] out_c0_exi82_23_tpl,
    output wire [0:0] out_c0_exi82_24_tpl,
    output wire [0:0] out_c0_exi82_25_tpl,
    output wire [0:0] out_c0_exi82_26_tpl,
    output wire [31:0] out_c0_exi82_27_tpl,
    output wire [31:0] out_c0_exi82_28_tpl,
    output wire [31:0] out_c0_exi82_29_tpl,
    output wire [31:0] out_c0_exi82_30_tpl,
    output wire [31:0] out_c0_exi82_31_tpl,
    output wire [31:0] out_c0_exi82_32_tpl,
    output wire [31:0] out_c0_exi82_33_tpl,
    output wire [31:0] out_c0_exi82_34_tpl,
    output wire [31:0] out_c0_exi82_35_tpl,
    output wire [31:0] out_c0_exi82_36_tpl,
    output wire [31:0] out_c0_exi82_37_tpl,
    output wire [31:0] out_c0_exi82_38_tpl,
    output wire [31:0] out_c0_exi82_39_tpl,
    output wire [31:0] out_c0_exi82_40_tpl,
    output wire [31:0] out_c0_exi82_41_tpl,
    output wire [31:0] out_c0_exi82_42_tpl,
    output wire [0:0] out_c0_exi82_43_tpl,
    output wire [31:0] out_c0_exi82_44_tpl,
    output wire [0:0] out_c0_exi82_45_tpl,
    output wire [0:0] out_c0_exi82_46_tpl,
    output wire [0:0] out_c0_exi82_47_tpl,
    output wire [32:0] out_c0_exi82_48_tpl,
    output wire [31:0] out_c0_exi82_49_tpl,
    output wire [31:0] out_c0_exi82_50_tpl,
    output wire [31:0] out_c0_exi82_51_tpl,
    output wire [0:0] out_c0_exi82_52_tpl,
    output wire [0:0] out_c0_exi82_53_tpl,
    output wire [31:0] out_c0_exi82_54_tpl,
    output wire [31:0] out_c0_exi82_55_tpl,
    output wire [31:0] out_c0_exi82_56_tpl,
    output wire [31:0] out_c0_exi82_57_tpl,
    output wire [31:0] out_c0_exi82_58_tpl,
    output wire [31:0] out_c0_exi82_59_tpl,
    output wire [31:0] out_c0_exi82_60_tpl,
    output wire [31:0] out_c0_exi82_61_tpl,
    output wire [31:0] out_c0_exi82_62_tpl,
    output wire [31:0] out_c0_exi82_63_tpl,
    output wire [31:0] out_c0_exi82_64_tpl,
    output wire [31:0] out_c0_exi82_65_tpl,
    output wire [31:0] out_c0_exi82_66_tpl,
    output wire [31:0] out_c0_exi82_67_tpl,
    output wire [31:0] out_c0_exi82_68_tpl,
    output wire [31:0] out_c0_exi82_69_tpl,
    output wire [31:0] out_c0_exi82_70_tpl,
    output wire [31:0] out_c0_exi82_71_tpl,
    output wire [31:0] out_c0_exi82_72_tpl,
    output wire [31:0] out_c0_exi82_73_tpl,
    output wire [31:0] out_c0_exi82_74_tpl,
    output wire [31:0] out_c0_exi82_75_tpl,
    output wire [31:0] out_c0_exi82_76_tpl,
    output wire [31:0] out_c0_exi82_77_tpl,
    output wire [31:0] out_c0_exi82_78_tpl,
    output wire [31:0] out_c0_exi82_79_tpl,
    output wire [31:0] out_c0_exi82_80_tpl,
    output wire [31:0] out_c0_exi82_81_tpl,
    output wire [31:0] out_c0_exi82_82_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d1x15,
    input wire [0:0] in_c0_eni76_0_tpl,
    input wire [0:0] in_c0_eni76_1_tpl,
    input wire [0:0] in_c0_eni76_2_tpl,
    input wire [0:0] in_c0_eni76_3_tpl,
    input wire [0:0] in_c0_eni76_4_tpl,
    input wire [0:0] in_c0_eni76_5_tpl,
    input wire [0:0] in_c0_eni76_6_tpl,
    input wire [31:0] in_c0_eni76_7_tpl,
    input wire [31:0] in_c0_eni76_8_tpl,
    input wire [31:0] in_c0_eni76_9_tpl,
    input wire [0:0] in_c0_eni76_10_tpl,
    input wire [31:0] in_c0_eni76_11_tpl,
    input wire [31:0] in_c0_eni76_12_tpl,
    input wire [31:0] in_c0_eni76_13_tpl,
    input wire [0:0] in_c0_eni76_14_tpl,
    input wire [31:0] in_c0_eni76_15_tpl,
    input wire [31:0] in_c0_eni76_16_tpl,
    input wire [0:0] in_c0_eni76_17_tpl,
    input wire [31:0] in_c0_eni76_18_tpl,
    input wire [31:0] in_c0_eni76_19_tpl,
    input wire [31:0] in_c0_eni76_20_tpl,
    input wire [0:0] in_c0_eni76_21_tpl,
    input wire [0:0] in_c0_eni76_22_tpl,
    input wire [0:0] in_c0_eni76_23_tpl,
    input wire [31:0] in_c0_eni76_24_tpl,
    input wire [31:0] in_c0_eni76_25_tpl,
    input wire [31:0] in_c0_eni76_26_tpl,
    input wire [31:0] in_c0_eni76_27_tpl,
    input wire [31:0] in_c0_eni76_28_tpl,
    input wire [31:0] in_c0_eni76_29_tpl,
    input wire [31:0] in_c0_eni76_30_tpl,
    input wire [31:0] in_c0_eni76_31_tpl,
    input wire [31:0] in_c0_eni76_32_tpl,
    input wire [31:0] in_c0_eni76_33_tpl,
    input wire [31:0] in_c0_eni76_34_tpl,
    input wire [31:0] in_c0_eni76_35_tpl,
    input wire [31:0] in_c0_eni76_36_tpl,
    input wire [31:0] in_c0_eni76_37_tpl,
    input wire [31:0] in_c0_eni76_38_tpl,
    input wire [31:0] in_c0_eni76_39_tpl,
    input wire [0:0] in_c0_eni76_40_tpl,
    input wire [31:0] in_c0_eni76_41_tpl,
    input wire [0:0] in_c0_eni76_42_tpl,
    input wire [0:0] in_c0_eni76_43_tpl,
    input wire [0:0] in_c0_eni76_44_tpl,
    input wire [32:0] in_c0_eni76_45_tpl,
    input wire [31:0] in_c0_eni76_46_tpl,
    input wire [31:0] in_c0_eni76_47_tpl,
    input wire [31:0] in_c0_eni76_48_tpl,
    input wire [0:0] in_c0_eni76_49_tpl,
    input wire [0:0] in_c0_eni76_50_tpl,
    input wire [31:0] in_c0_eni76_51_tpl,
    input wire [31:0] in_c0_eni76_52_tpl,
    input wire [31:0] in_c0_eni76_53_tpl,
    input wire [31:0] in_c0_eni76_54_tpl,
    input wire [31:0] in_c0_eni76_55_tpl,
    input wire [31:0] in_c0_eni76_56_tpl,
    input wire [31:0] in_c0_eni76_57_tpl,
    input wire [31:0] in_c0_eni76_58_tpl,
    input wire [31:0] in_c0_eni76_59_tpl,
    input wire [31:0] in_c0_eni76_60_tpl,
    input wire [31:0] in_c0_eni76_61_tpl,
    input wire [31:0] in_c0_eni76_62_tpl,
    input wire [31:0] in_c0_eni76_63_tpl,
    input wire [31:0] in_c0_eni76_64_tpl,
    input wire [31:0] in_c0_eni76_65_tpl,
    input wire [31:0] in_c0_eni76_66_tpl,
    input wire [31:0] in_c0_eni76_67_tpl,
    input wire [31:0] in_c0_eni76_68_tpl,
    input wire [31:0] in_c0_eni76_69_tpl,
    input wire [31:0] in_c0_eni76_70_tpl,
    input wire [31:0] in_c0_eni76_71_tpl,
    input wire [31:0] in_c0_eni76_72_tpl,
    input wire [31:0] in_c0_eni76_73_tpl,
    input wire [31:0] in_c0_eni76_74_tpl,
    input wire [31:0] in_c0_eni76_75_tpl,
    input wire [31:0] in_c0_eni76_76_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_1150_q;
    wire [31:0] c_i32_0153_q;
    wire [31:0] c_i32_1156_q;
    wire [32:0] c_i33_1158_q;
    wire [32:0] c_i33_undef152_q;
    wire [32:0] i_add22_conv2d1x135_a;
    wire [32:0] i_add22_conv2d1x135_b;
    logic [32:0] i_add22_conv2d1x135_o;
    wire [32:0] i_add22_conv2d1x135_q;
    wire [1:0] i_add54_conv2d1x140_vt_const_1_q;
    wire [31:0] i_add54_conv2d1x140_vt_join_q;
    wire [29:0] i_add54_conv2d1x140_vt_select_31_b;
    wire [32:0] i_add57_conv2d1x146_a;
    wire [32:0] i_add57_conv2d1x146_b;
    logic [32:0] i_add57_conv2d1x146_o;
    wire [32:0] i_add57_conv2d1x146_q;
    wire [3:0] i_arrayidx243_conv2d1x138_vt_const_3_q;
    wire [63:0] i_arrayidx243_conv2d1x138_vt_join_q;
    wire [59:0] i_arrayidx243_conv2d1x138_vt_select_63_b;
    wire [1:0] i_arrayidx594_conv2d1x149_vt_const_1_q;
    wire [63:0] i_arrayidx594_conv2d1x149_vt_join_q;
    wire [61:0] i_arrayidx594_conv2d1x149_vt_select_63_b;
    wire [1:0] i_cleanups_shl_conv2d1x19_vt_join_q;
    wire [0:0] i_cleanups_shl_conv2d1x19_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor148_conv2d1x18_q;
    wire [0:0] i_first_cleanup_xor_or_conv2d1x139_q;
    wire [0:0] i_forked_and_conv2d1x14_q;
    wire [33:0] i_fpga_indvars_iv_next_conv2d1x154_a;
    wire [33:0] i_fpga_indvars_iv_next_conv2d1x154_b;
    logic [33:0] i_fpga_indvars_iv_next_conv2d1x154_o;
    wire [33:0] i_fpga_indvars_iv_next_conv2d1x154_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_conv2d1x127_s;
    reg [32:0] i_fpga_indvars_iv_replace_phi_conv2d1x127_q;
    wire [32:0] i_inc79_conv2d1x150_a;
    wire [32:0] i_inc79_conv2d1x150_b;
    logic [32:0] i_inc79_conv2d1x150_o;
    wire [32:0] i_inc79_conv2d1x150_q;
    wire [0:0] i_keep_going_or_conv2d1x117_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor855_conv2d1x111_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x120_conv2d1x125_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_feedback_stall_out_116;
    wire [31:0] i_llvm_fpga_pop_f32_mul38_le207119_pop122_conv2d1x181_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_mul38_le207119_pop122_conv2d1x181_out_feedback_stall_out_122;
    wire [31:0] i_llvm_fpga_pop_f32_mul51_le205120_pop123_conv2d1x183_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_mul51_le205120_pop123_conv2d1x183_out_feedback_stall_out_123;
    wire [31:0] i_llvm_fpga_pop_f32_pop121_conv2d1x179_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop121_conv2d1x179_out_feedback_stall_out_121;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select33498_pop108_conv2d1x165_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select33498_pop108_conv2d1x165_out_feedback_stall_out_108;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select335101_pop109_conv2d1x167_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select335101_pop109_conv2d1x167_out_feedback_stall_out_109;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select336104_pop110_conv2d1x169_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select336104_pop110_conv2d1x169_out_feedback_stall_out_110;
    wire [0:0] i_llvm_fpga_pop_i1_forked17106_pop111_conv2d1x15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked17106_pop111_conv2d1x15_out_feedback_stall_out_111;
    wire [0:0] i_llvm_fpga_pop_i1_forked59121_pop124_conv2d1x13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked59121_pop124_conv2d1x13_out_feedback_stall_out_124;
    wire [0:0] i_llvm_fpga_pop_i1_forked59_and122_pop125_conv2d1x185_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked59_and122_pop125_conv2d1x185_out_feedback_stall_out_125;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp19124_pop128_conv2d1x189_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp19124_pop128_conv2d1x189_out_feedback_stall_out_128;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp24118_pop120_conv2d1x177_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp24118_pop120_conv2d1x177_out_feedback_stall_out_120;
    wire [0:0] i_llvm_fpga_pop_i1_or123_pop127_conv2d1x187_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_or123_pop127_conv2d1x187_out_feedback_stall_out_127;
    wire [0:0] i_llvm_fpga_pop_i1_phi_decision102_xor110_pop115_conv2d1x171_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_phi_decision102_xor110_pop115_conv2d1x171_out_feedback_stall_out_115;
    wire [0:0] i_llvm_fpga_pop_i1_pop113_conv2d1x162_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop113_conv2d1x162_out_feedback_stall_out_113;
    wire [0:0] i_llvm_fpga_pop_i1_pop114_conv2d1x128_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop114_conv2d1x128_out_feedback_stall_out_114;
    wire [0:0] i_llvm_fpga_pop_i1_pop119_conv2d1x118_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop119_conv2d1x118_out_feedback_stall_out_119;
    wire [0:0] i_llvm_fpga_pop_i1_pop126_conv2d1x115_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop126_conv2d1x115_out_feedback_stall_out_126;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop94_conv2d1x16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop94_conv2d1x16_out_feedback_stall_out_94;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop93_conv2d1x120_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop93_conv2d1x120_out_feedback_stall_out_93;
    wire [31:0] i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144_out_feedback_stall_out_129;
    wire [31:0] i_llvm_fpga_pop_i32_k_063_pop92_conv2d1x131_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_063_pop92_conv2d1x131_out_feedback_stall_out_92;
    wire [31:0] i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_feedback_stall_out_112;
    wire [31:0] i_llvm_fpga_pop_i32_mul21114_pop117_conv2d1x133_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul21114_pop117_conv2d1x133_out_feedback_stall_out_117;
    wire [31:0] i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_feedback_stall_out_118;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop78_conv2d1x126_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop78_conv2d1x126_out_feedback_stall_out_78;
    wire [31:0] i_llvm_fpga_push_f32_lm96112_push116_conv2d1x174_out_feedback_out_116;
    wire [0:0] i_llvm_fpga_push_f32_lm96112_push116_conv2d1x174_out_feedback_valid_out_116;
    wire [31:0] i_llvm_fpga_push_f32_mul38_le207119_push122_conv2d1x182_out_feedback_out_122;
    wire [0:0] i_llvm_fpga_push_f32_mul38_le207119_push122_conv2d1x182_out_feedback_valid_out_122;
    wire [31:0] i_llvm_fpga_push_f32_mul51_le205120_push123_conv2d1x184_out_feedback_out_123;
    wire [0:0] i_llvm_fpga_push_f32_mul51_le205120_push123_conv2d1x184_out_feedback_valid_out_123;
    wire [31:0] i_llvm_fpga_push_f32_push121_conv2d1x180_out_feedback_out_121;
    wire [0:0] i_llvm_fpga_push_f32_push121_conv2d1x180_out_feedback_valid_out_121;
    wire [31:0] i_llvm_fpga_push_f32_spec_select33498_push108_conv2d1x166_out_feedback_out_108;
    wire [0:0] i_llvm_fpga_push_f32_spec_select33498_push108_conv2d1x166_out_feedback_valid_out_108;
    wire [31:0] i_llvm_fpga_push_f32_spec_select335101_push109_conv2d1x168_out_feedback_out_109;
    wire [0:0] i_llvm_fpga_push_f32_spec_select335101_push109_conv2d1x168_out_feedback_valid_out_109;
    wire [31:0] i_llvm_fpga_push_f32_spec_select336104_push110_conv2d1x170_out_feedback_out_110;
    wire [0:0] i_llvm_fpga_push_f32_spec_select336104_push110_conv2d1x170_out_feedback_valid_out_110;
    wire [0:0] i_llvm_fpga_push_i1_forked17106_push111_conv2d1x114_out_feedback_out_111;
    wire [0:0] i_llvm_fpga_push_i1_forked17106_push111_conv2d1x114_out_feedback_valid_out_111;
    wire [0:0] i_llvm_fpga_push_i1_forked59121_push124_conv2d1x113_out_feedback_out_124;
    wire [0:0] i_llvm_fpga_push_i1_forked59121_push124_conv2d1x113_out_feedback_valid_out_124;
    wire [0:0] i_llvm_fpga_push_i1_forked59_and122_push125_conv2d1x186_out_feedback_out_125;
    wire [0:0] i_llvm_fpga_push_i1_forked59_and122_push125_conv2d1x186_out_feedback_valid_out_125;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_conv2d1x124_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_conv2d1x124_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_notcmp19124_push128_conv2d1x190_out_feedback_out_128;
    wire [0:0] i_llvm_fpga_push_i1_notcmp19124_push128_conv2d1x190_out_feedback_valid_out_128;
    wire [0:0] i_llvm_fpga_push_i1_notcmp24118_push120_conv2d1x178_out_feedback_out_120;
    wire [0:0] i_llvm_fpga_push_i1_notcmp24118_push120_conv2d1x178_out_feedback_valid_out_120;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_conv2d1x158_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_conv2d1x158_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_or123_push127_conv2d1x188_out_feedback_out_127;
    wire [0:0] i_llvm_fpga_push_i1_or123_push127_conv2d1x188_out_feedback_valid_out_127;
    wire [0:0] i_llvm_fpga_push_i1_phi_decision102_xor110_push115_conv2d1x172_out_feedback_out_115;
    wire [0:0] i_llvm_fpga_push_i1_phi_decision102_xor110_push115_conv2d1x172_out_feedback_valid_out_115;
    wire [0:0] i_llvm_fpga_push_i1_push113_conv2d1x163_out_feedback_out_113;
    wire [0:0] i_llvm_fpga_push_i1_push113_conv2d1x163_out_feedback_valid_out_113;
    wire [0:0] i_llvm_fpga_push_i1_push114_conv2d1x129_out_feedback_out_114;
    wire [0:0] i_llvm_fpga_push_i1_push114_conv2d1x129_out_feedback_valid_out_114;
    wire [0:0] i_llvm_fpga_push_i1_push119_conv2d1x119_out_feedback_out_119;
    wire [0:0] i_llvm_fpga_push_i1_push119_conv2d1x119_out_feedback_valid_out_119;
    wire [0:0] i_llvm_fpga_push_i1_push126_conv2d1x116_out_feedback_out_126;
    wire [0:0] i_llvm_fpga_push_i1_push126_conv2d1x116_out_feedback_valid_out_126;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push94_conv2d1x161_out_feedback_out_94;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push94_conv2d1x161_out_feedback_valid_out_94;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push93_conv2d1x122_out_feedback_out_93;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push93_conv2d1x122_out_feedback_valid_out_93;
    wire [31:0] i_llvm_fpga_push_i32_ij_067_pop51125_push129_conv2d1x145_out_feedback_out_129;
    wire [0:0] i_llvm_fpga_push_i32_ij_067_pop51125_push129_conv2d1x145_out_feedback_valid_out_129;
    wire [31:0] i_llvm_fpga_push_i32_k_063_push92_conv2d1x151_out_feedback_out_92;
    wire [0:0] i_llvm_fpga_push_i32_k_063_push92_conv2d1x151_out_feedback_valid_out_92;
    wire [31:0] i_llvm_fpga_push_i32_mul108_push112_conv2d1x142_out_feedback_out_112;
    wire [0:0] i_llvm_fpga_push_i32_mul108_push112_conv2d1x142_out_feedback_valid_out_112;
    wire [31:0] i_llvm_fpga_push_i32_mul21114_push117_conv2d1x134_out_feedback_out_117;
    wire [0:0] i_llvm_fpga_push_i32_mul21114_push117_conv2d1x134_out_feedback_valid_out_117;
    wire [31:0] i_llvm_fpga_push_i32_mul97116_push118_conv2d1x176_out_feedback_out_118;
    wire [0:0] i_llvm_fpga_push_i32_mul97116_push118_conv2d1x176_out_feedback_valid_out_118;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push78_conv2d1x155_out_feedback_out_78;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push78_conv2d1x155_out_feedback_valid_out_78;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x148_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x148_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x148_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x148_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x137_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x137_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x137_vt_select_63_b;
    wire [0:0] i_masked_conv2d1x164_qi;
    reg [0:0] i_masked_conv2d1x164_q;
    wire [0:0] i_next_cleanups_conv2d1x160_s;
    reg [1:0] i_next_cleanups_conv2d1x160_q;
    wire [1:0] i_next_initerations_conv2d1x121_vt_join_q;
    wire [0:0] i_next_initerations_conv2d1x121_vt_select_0_b;
    wire [0:0] i_notcmp_conv2d1x157_q;
    wire [0:0] i_or_conv2d1x159_q;
    wire [31:0] i_shl_conv2d1x132_vt_join_q;
    wire [29:0] i_shl_conv2d1x132_vt_select_31_b;
    wire [0:0] i_unnamed_conv2d1x130_q;
    wire [0:0] i_unnamed_conv2d1x156_q;
    wire [31:0] bgTrunc_i_add22_conv2d1x135_sel_x_b;
    wire [31:0] bgTrunc_i_add57_conv2d1x146_sel_x_b;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_conv2d1x154_sel_x_b;
    wire [31:0] bgTrunc_i_inc79_conv2d1x150_sel_x_b;
    wire [63:0] bgTrunc_i_mul56_conv2d1x143_sel_x_in;
    wire [31:0] bgTrunc_i_mul56_conv2d1x143_sel_x_b;
    wire [64:0] i_arrayidx243_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx243_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx243_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx243_conv2d1x10_add_x_q;
    wire [59:0] i_arrayidx243_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx243_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx243_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx594_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx594_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx594_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx594_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx594_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx594_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx594_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_conv2d1x17_sel_x_b;
    wire [63:0] i_idxprom23_conv2d1x136_sel_x_b;
    wire [63:0] i_idxprom58_conv2d1x147_sel_x_b;
    wire [0:0] i_last_initeration_conv2d1x123_sel_x_b;
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
    wire [29:0] i_add54_conv2d1x140_BitSelect_for_a_b;
    wire [31:0] i_add54_conv2d1x140_join_q;
    wire [0:0] i_exitcond_conv2d1x152_cmp_nsign_q;
    wire [63:0] i_mul56_conv2d1x143_sums_join_0_q;
    wire [50:0] i_mul56_conv2d1x143_sums_align_1_q;
    wire [50:0] i_mul56_conv2d1x143_sums_align_1_qint;
    wire [64:0] i_mul56_conv2d1x143_sums_result_add_0_0_a;
    wire [64:0] i_mul56_conv2d1x143_sums_result_add_0_0_b;
    logic [64:0] i_mul56_conv2d1x143_sums_result_add_0_0_o;
    wire [64:0] i_mul56_conv2d1x143_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid313_i_cleanups_shl_conv2d1x10_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid313_i_cleanups_shl_conv2d1x10_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid314_i_cleanups_shl_conv2d1x10_shift_x_q;
    wire [0:0] leftShiftStage0_uid316_i_cleanups_shl_conv2d1x10_shift_x_s;
    reg [1:0] leftShiftStage0_uid316_i_cleanups_shl_conv2d1x10_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid320_i_next_initerations_conv2d1x10_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid322_i_next_initerations_conv2d1x10_shift_x_q;
    wire [0:0] rightShiftStage0_uid324_i_next_initerations_conv2d1x10_shift_x_s;
    reg [1:0] rightShiftStage0_uid324_i_next_initerations_conv2d1x10_shift_x_q;
    wire [29:0] leftShiftStage0Idx1Rng2_uid329_i_shl_conv2d1x10_shift_x_in;
    wire [29:0] leftShiftStage0Idx1Rng2_uid329_i_shl_conv2d1x10_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid330_i_shl_conv2d1x10_shift_x_q;
    wire [0:0] leftShiftStage0_uid332_i_shl_conv2d1x10_shift_x_s;
    reg [31:0] leftShiftStage0_uid332_i_shl_conv2d1x10_shift_x_q;
    wire i_mul56_conv2d1x143_im0_cma_reset;
    wire [13:0] i_mul56_conv2d1x143_im0_cma_a0;
    wire [13:0] i_mul56_conv2d1x143_im0_cma_c0;
    wire [27:0] i_mul56_conv2d1x143_im0_cma_s0;
    wire [27:0] i_mul56_conv2d1x143_im0_cma_qq;
    wire [27:0] i_mul56_conv2d1x143_im0_cma_q;
    wire i_mul56_conv2d1x143_im0_cma_ena0;
    wire i_mul56_conv2d1x143_im0_cma_ena1;
    wire i_mul56_conv2d1x143_im0_cma_ena2;
    wire i_mul56_conv2d1x143_im8_cma_reset;
    wire [17:0] i_mul56_conv2d1x143_im8_cma_a0;
    wire [17:0] i_mul56_conv2d1x143_im8_cma_c0;
    wire [35:0] i_mul56_conv2d1x143_im8_cma_s0;
    wire [35:0] i_mul56_conv2d1x143_im8_cma_qq;
    wire [35:0] i_mul56_conv2d1x143_im8_cma_q;
    wire i_mul56_conv2d1x143_im8_cma_ena0;
    wire i_mul56_conv2d1x143_im8_cma_ena1;
    wire i_mul56_conv2d1x143_im8_cma_ena2;
    wire i_mul56_conv2d1x143_ma3_cma_reset;
    wire [13:0] i_mul56_conv2d1x143_ma3_cma_a0;
    wire [17:0] i_mul56_conv2d1x143_ma3_cma_c0;
    wire [13:0] i_mul56_conv2d1x143_ma3_cma_a1;
    wire [17:0] i_mul56_conv2d1x143_ma3_cma_c1;
    wire [32:0] i_mul56_conv2d1x143_ma3_cma_s0;
    wire [32:0] i_mul56_conv2d1x143_ma3_cma_qq;
    wire [32:0] i_mul56_conv2d1x143_ma3_cma_q;
    wire i_mul56_conv2d1x143_ma3_cma_ena0;
    wire i_mul56_conv2d1x143_ma3_cma_ena1;
    wire i_mul56_conv2d1x143_ma3_cma_ena2;
    wire [13:0] i_mul56_conv2d1x143_bs2_merged_bit_select_b;
    wire [17:0] i_mul56_conv2d1x143_bs2_merged_bit_select_c;
    wire [13:0] i_mul56_conv2d1x143_bs1_merged_bit_select_b;
    wire [17:0] i_mul56_conv2d1x143_bs1_merged_bit_select_c;
    reg [0:0] redist0_sync_together220_aunroll_x_in_c0_eni76_1_tpl_1_q;
    reg [0:0] redist1_sync_together220_aunroll_x_in_c0_eni76_2_tpl_1_q;
    reg [0:0] redist2_sync_together220_aunroll_x_in_c0_eni76_2_tpl_5_q;
    reg [0:0] redist2_sync_together220_aunroll_x_in_c0_eni76_2_tpl_5_delay_0;
    reg [0:0] redist2_sync_together220_aunroll_x_in_c0_eni76_2_tpl_5_delay_1;
    reg [0:0] redist2_sync_together220_aunroll_x_in_c0_eni76_2_tpl_5_delay_2;
    reg [0:0] redist3_sync_together220_aunroll_x_in_c0_eni76_3_tpl_1_q;
    reg [0:0] redist4_sync_together220_aunroll_x_in_c0_eni76_4_tpl_1_q;
    reg [0:0] redist5_sync_together220_aunroll_x_in_c0_eni76_5_tpl_1_q;
    reg [0:0] redist6_sync_together220_aunroll_x_in_c0_eni76_6_tpl_1_q;
    reg [31:0] redist7_sync_together220_aunroll_x_in_c0_eni76_7_tpl_1_q;
    reg [31:0] redist8_sync_together220_aunroll_x_in_c0_eni76_8_tpl_1_q;
    reg [31:0] redist9_sync_together220_aunroll_x_in_c0_eni76_9_tpl_1_q;
    reg [0:0] redist10_sync_together220_aunroll_x_in_c0_eni76_10_tpl_1_q;
    reg [31:0] redist11_sync_together220_aunroll_x_in_c0_eni76_11_tpl_1_q;
    reg [31:0] redist12_sync_together220_aunroll_x_in_c0_eni76_12_tpl_1_q;
    reg [31:0] redist13_sync_together220_aunroll_x_in_c0_eni76_13_tpl_1_q;
    reg [0:0] redist14_sync_together220_aunroll_x_in_c0_eni76_14_tpl_1_q;
    reg [31:0] redist15_sync_together220_aunroll_x_in_c0_eni76_15_tpl_1_q;
    reg [31:0] redist16_sync_together220_aunroll_x_in_c0_eni76_16_tpl_1_q;
    reg [0:0] redist17_sync_together220_aunroll_x_in_c0_eni76_17_tpl_1_q;
    reg [0:0] redist21_sync_together220_aunroll_x_in_c0_eni76_21_tpl_1_q;
    reg [0:0] redist22_sync_together220_aunroll_x_in_c0_eni76_22_tpl_1_q;
    reg [0:0] redist23_sync_together220_aunroll_x_in_c0_eni76_23_tpl_1_q;
    reg [0:0] redist40_sync_together220_aunroll_x_in_c0_eni76_40_tpl_5_q;
    reg [0:0] redist40_sync_together220_aunroll_x_in_c0_eni76_40_tpl_5_delay_0;
    reg [0:0] redist40_sync_together220_aunroll_x_in_c0_eni76_40_tpl_5_delay_1;
    reg [0:0] redist40_sync_together220_aunroll_x_in_c0_eni76_40_tpl_5_delay_2;
    reg [0:0] redist40_sync_together220_aunroll_x_in_c0_eni76_40_tpl_5_delay_3;
    reg [0:0] redist42_sync_together220_aunroll_x_in_c0_eni76_42_tpl_5_q;
    reg [0:0] redist42_sync_together220_aunroll_x_in_c0_eni76_42_tpl_5_delay_0;
    reg [0:0] redist42_sync_together220_aunroll_x_in_c0_eni76_42_tpl_5_delay_1;
    reg [0:0] redist42_sync_together220_aunroll_x_in_c0_eni76_42_tpl_5_delay_2;
    reg [0:0] redist42_sync_together220_aunroll_x_in_c0_eni76_42_tpl_5_delay_3;
    reg [0:0] redist43_sync_together220_aunroll_x_in_c0_eni76_43_tpl_5_q;
    reg [0:0] redist43_sync_together220_aunroll_x_in_c0_eni76_43_tpl_5_delay_0;
    reg [0:0] redist43_sync_together220_aunroll_x_in_c0_eni76_43_tpl_5_delay_1;
    reg [0:0] redist43_sync_together220_aunroll_x_in_c0_eni76_43_tpl_5_delay_2;
    reg [0:0] redist43_sync_together220_aunroll_x_in_c0_eni76_43_tpl_5_delay_3;
    reg [0:0] redist44_sync_together220_aunroll_x_in_c0_eni76_44_tpl_5_q;
    reg [0:0] redist44_sync_together220_aunroll_x_in_c0_eni76_44_tpl_5_delay_0;
    reg [0:0] redist44_sync_together220_aunroll_x_in_c0_eni76_44_tpl_5_delay_1;
    reg [0:0] redist44_sync_together220_aunroll_x_in_c0_eni76_44_tpl_5_delay_2;
    reg [0:0] redist44_sync_together220_aunroll_x_in_c0_eni76_44_tpl_5_delay_3;
    reg [0:0] redist49_sync_together220_aunroll_x_in_c0_eni76_49_tpl_5_q;
    reg [0:0] redist49_sync_together220_aunroll_x_in_c0_eni76_49_tpl_5_delay_0;
    reg [0:0] redist49_sync_together220_aunroll_x_in_c0_eni76_49_tpl_5_delay_1;
    reg [0:0] redist49_sync_together220_aunroll_x_in_c0_eni76_49_tpl_5_delay_2;
    reg [0:0] redist49_sync_together220_aunroll_x_in_c0_eni76_49_tpl_5_delay_3;
    reg [0:0] redist50_sync_together220_aunroll_x_in_c0_eni76_50_tpl_5_q;
    reg [0:0] redist50_sync_together220_aunroll_x_in_c0_eni76_50_tpl_5_delay_0;
    reg [0:0] redist50_sync_together220_aunroll_x_in_c0_eni76_50_tpl_5_delay_1;
    reg [0:0] redist50_sync_together220_aunroll_x_in_c0_eni76_50_tpl_5_delay_2;
    reg [0:0] redist50_sync_together220_aunroll_x_in_c0_eni76_50_tpl_5_delay_3;
    reg [0:0] redist77_sync_together220_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist78_sync_together220_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist79_sync_together220_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist79_sync_together220_aunroll_x_in_i_valid_4_delay_0;
    reg [31:0] redist80_bgTrunc_i_mul56_conv2d1x143_sel_x_b_1_q;
    reg [31:0] redist81_bgTrunc_i_add22_conv2d1x135_sel_x_b_4_q;
    reg [31:0] redist81_bgTrunc_i_add22_conv2d1x135_sel_x_b_4_delay_0;
    reg [0:0] redist83_i_masked_conv2d1x164_q_4_q;
    reg [0:0] redist83_i_masked_conv2d1x164_q_4_delay_0;
    reg [0:0] redist83_i_masked_conv2d1x164_q_4_delay_1;
    reg [31:0] redist86_i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144_out_data_out_4_q;
    reg [31:0] redist86_i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144_out_data_out_4_delay_0;
    reg [0:0] redist87_i_llvm_fpga_pop_i1_pop126_conv2d1x115_out_data_out_4_q;
    reg [0:0] redist87_i_llvm_fpga_pop_i1_pop126_conv2d1x115_out_data_out_4_delay_0;
    reg [0:0] redist87_i_llvm_fpga_pop_i1_pop126_conv2d1x115_out_data_out_4_delay_1;
    reg [0:0] redist87_i_llvm_fpga_pop_i1_pop126_conv2d1x115_out_data_out_4_delay_2;
    reg [0:0] redist88_i_llvm_fpga_pop_i1_pop119_conv2d1x118_out_data_out_4_q;
    reg [0:0] redist88_i_llvm_fpga_pop_i1_pop119_conv2d1x118_out_data_out_4_delay_0;
    reg [0:0] redist88_i_llvm_fpga_pop_i1_pop119_conv2d1x118_out_data_out_4_delay_1;
    reg [0:0] redist88_i_llvm_fpga_pop_i1_pop119_conv2d1x118_out_data_out_4_delay_2;
    reg [0:0] redist89_i_llvm_fpga_pop_i1_pop114_conv2d1x128_out_data_out_1_q;
    reg [0:0] redist90_i_llvm_fpga_pop_i1_pop114_conv2d1x128_out_data_out_4_q;
    reg [0:0] redist90_i_llvm_fpga_pop_i1_pop114_conv2d1x128_out_data_out_4_delay_0;
    reg [0:0] redist90_i_llvm_fpga_pop_i1_pop114_conv2d1x128_out_data_out_4_delay_1;
    reg [0:0] redist91_i_llvm_fpga_pop_i1_pop113_conv2d1x162_out_data_out_4_q;
    reg [0:0] redist91_i_llvm_fpga_pop_i1_pop113_conv2d1x162_out_data_out_4_delay_0;
    reg [0:0] redist91_i_llvm_fpga_pop_i1_pop113_conv2d1x162_out_data_out_4_delay_1;
    reg [0:0] redist91_i_llvm_fpga_pop_i1_pop113_conv2d1x162_out_data_out_4_delay_2;
    reg [0:0] redist92_i_llvm_fpga_pop_i1_or123_pop127_conv2d1x187_out_data_out_4_q;
    reg [0:0] redist92_i_llvm_fpga_pop_i1_or123_pop127_conv2d1x187_out_data_out_4_delay_0;
    reg [0:0] redist92_i_llvm_fpga_pop_i1_or123_pop127_conv2d1x187_out_data_out_4_delay_1;
    reg [0:0] redist92_i_llvm_fpga_pop_i1_or123_pop127_conv2d1x187_out_data_out_4_delay_2;
    reg [0:0] redist93_i_llvm_fpga_pop_i1_notcmp24118_pop120_conv2d1x177_out_data_out_4_q;
    reg [0:0] redist93_i_llvm_fpga_pop_i1_notcmp24118_pop120_conv2d1x177_out_data_out_4_delay_0;
    reg [0:0] redist93_i_llvm_fpga_pop_i1_notcmp24118_pop120_conv2d1x177_out_data_out_4_delay_1;
    reg [0:0] redist93_i_llvm_fpga_pop_i1_notcmp24118_pop120_conv2d1x177_out_data_out_4_delay_2;
    reg [0:0] redist94_i_llvm_fpga_pop_i1_notcmp19124_pop128_conv2d1x189_out_data_out_4_q;
    reg [0:0] redist94_i_llvm_fpga_pop_i1_notcmp19124_pop128_conv2d1x189_out_data_out_4_delay_0;
    reg [0:0] redist94_i_llvm_fpga_pop_i1_notcmp19124_pop128_conv2d1x189_out_data_out_4_delay_1;
    reg [0:0] redist94_i_llvm_fpga_pop_i1_notcmp19124_pop128_conv2d1x189_out_data_out_4_delay_2;
    reg [0:0] redist95_i_llvm_fpga_pop_i1_forked59_and122_pop125_conv2d1x185_out_data_out_4_q;
    reg [0:0] redist95_i_llvm_fpga_pop_i1_forked59_and122_pop125_conv2d1x185_out_data_out_4_delay_0;
    reg [0:0] redist95_i_llvm_fpga_pop_i1_forked59_and122_pop125_conv2d1x185_out_data_out_4_delay_1;
    reg [0:0] redist95_i_llvm_fpga_pop_i1_forked59_and122_pop125_conv2d1x185_out_data_out_4_delay_2;
    reg [0:0] redist96_i_llvm_fpga_pop_i1_forked59121_pop124_conv2d1x13_out_data_out_1_q;
    reg [0:0] redist97_i_llvm_fpga_pop_i1_forked59121_pop124_conv2d1x13_out_data_out_4_q;
    reg [0:0] redist97_i_llvm_fpga_pop_i1_forked59121_pop124_conv2d1x13_out_data_out_4_delay_0;
    reg [0:0] redist97_i_llvm_fpga_pop_i1_forked59121_pop124_conv2d1x13_out_data_out_4_delay_1;
    reg [0:0] redist98_i_llvm_fpga_pop_i1_forked17106_pop111_conv2d1x15_out_data_out_4_q;
    reg [0:0] redist98_i_llvm_fpga_pop_i1_forked17106_pop111_conv2d1x15_out_data_out_4_delay_0;
    reg [0:0] redist98_i_llvm_fpga_pop_i1_forked17106_pop111_conv2d1x15_out_data_out_4_delay_1;
    reg [0:0] redist98_i_llvm_fpga_pop_i1_forked17106_pop111_conv2d1x15_out_data_out_4_delay_2;
    reg [31:0] redist99_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_1_q;
    reg [0:0] redist101_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_1_q;
    reg [0:0] redist102_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_2_q;
    reg [0:0] redist103_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_4_q;
    reg [0:0] redist103_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_4_delay_0;
    reg [0:0] redist104_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_5_q;
    reg [0:0] redist105_i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q_1_q;
    reg [0:0] redist106_i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q_4_q;
    reg [0:0] redist106_i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q_4_delay_0;
    reg [0:0] redist106_i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q_4_delay_1;
    reg [0:0] redist107_i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q_4_q;
    reg [0:0] redist107_i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q_4_delay_0;
    reg [0:0] redist107_i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q_4_delay_1;
    reg [0:0] redist107_i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q_4_delay_2;
    reg [0:0] redist108_i_first_cleanup_xor148_conv2d1x18_q_4_q;
    reg [0:0] redist108_i_first_cleanup_xor148_conv2d1x18_q_4_delay_0;
    reg [0:0] redist108_i_first_cleanup_xor148_conv2d1x18_q_4_delay_1;
    reg [0:0] redist108_i_first_cleanup_xor148_conv2d1x18_q_4_delay_2;
    wire redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_mem_reset0;
    wire [31:0] redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_mem_ia;
    wire [1:0] redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_mem_aa;
    wire [1:0] redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_mem_ab;
    wire [31:0] redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_mem_iq;
    wire [31:0] redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_mem_q;
    wire [1:0] redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_rdcnt_i;
    reg [1:0] redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_wraddr_q;
    wire [2:0] redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_mem_last_q;
    wire [2:0] redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_cmp_b;
    wire [0:0] redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_cmpReg_q;
    wire [0:0] redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_notEnable_q;
    wire [0:0] redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_sticky_ena_q;
    wire [0:0] redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_enaAnd_q;
    wire redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_mem_reset0;
    wire [31:0] redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_mem_ia;
    wire [1:0] redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_mem_aa;
    wire [1:0] redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_mem_ab;
    wire [31:0] redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_mem_iq;
    wire [31:0] redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_mem_q;
    wire [1:0] redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_rdcnt_i;
    reg [1:0] redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_wraddr_q;
    wire [2:0] redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_mem_last_q;
    wire [2:0] redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_cmp_b;
    wire [0:0] redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_cmpReg_q;
    wire [0:0] redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_notEnable_q;
    wire [0:0] redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_sticky_ena_q;
    wire [0:0] redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_enaAnd_q;
    wire redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_mem_reset0;
    wire [31:0] redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_mem_ia;
    wire [1:0] redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_mem_aa;
    wire [1:0] redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_mem_ab;
    wire [31:0] redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_mem_iq;
    wire [31:0] redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_mem_q;
    wire [1:0] redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_rdcnt_i;
    reg [1:0] redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_wraddr_q;
    wire [2:0] redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_mem_last_q;
    wire [2:0] redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_cmp_b;
    wire [0:0] redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_cmpReg_q;
    wire [0:0] redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_notEnable_q;
    wire [0:0] redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_sticky_ena_q;
    wire [0:0] redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_enaAnd_q;
    wire redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_mem_reset0;
    wire [31:0] redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_mem_ia;
    wire [1:0] redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_mem_aa;
    wire [1:0] redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_mem_ab;
    wire [31:0] redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_mem_iq;
    wire [31:0] redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_mem_q;
    wire [1:0] redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_rdcnt_i;
    reg [1:0] redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_wraddr_q;
    wire [2:0] redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_mem_last_q;
    wire [2:0] redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_cmp_b;
    wire [0:0] redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_cmpReg_q;
    wire [0:0] redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_notEnable_q;
    wire [0:0] redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_sticky_ena_q;
    wire [0:0] redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_enaAnd_q;
    wire redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_mem_reset0;
    wire [31:0] redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_mem_ia;
    wire [1:0] redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_mem_aa;
    wire [1:0] redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_mem_ab;
    wire [31:0] redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_mem_iq;
    wire [31:0] redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_mem_q;
    wire [1:0] redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_rdcnt_i;
    reg [1:0] redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_wraddr_q;
    wire [2:0] redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_mem_last_q;
    wire [2:0] redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_cmp_b;
    wire [0:0] redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_cmpReg_q;
    wire [0:0] redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_notEnable_q;
    wire [0:0] redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_sticky_ena_q;
    wire [0:0] redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_enaAnd_q;
    wire redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_mem_reset0;
    wire [31:0] redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_mem_ia;
    wire [1:0] redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_mem_aa;
    wire [1:0] redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_mem_ab;
    wire [31:0] redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_mem_iq;
    wire [31:0] redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_mem_q;
    wire [1:0] redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_rdcnt_i;
    reg [1:0] redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_wraddr_q;
    wire [2:0] redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_mem_last_q;
    wire [2:0] redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_cmp_b;
    wire [0:0] redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_cmpReg_q;
    wire [0:0] redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_notEnable_q;
    wire [0:0] redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_sticky_ena_q;
    wire [0:0] redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_enaAnd_q;
    wire redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_mem_reset0;
    wire [31:0] redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_mem_ia;
    wire [1:0] redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_mem_aa;
    wire [1:0] redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_mem_ab;
    wire [31:0] redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_mem_iq;
    wire [31:0] redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_mem_q;
    wire [1:0] redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_rdcnt_i;
    reg [1:0] redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_wraddr_q;
    wire [2:0] redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_mem_last_q;
    wire [2:0] redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_cmp_b;
    wire [0:0] redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_cmpReg_q;
    wire [0:0] redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_notEnable_q;
    wire [0:0] redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_sticky_ena_q;
    wire [0:0] redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_enaAnd_q;
    wire redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_mem_reset0;
    wire [31:0] redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_mem_ia;
    wire [1:0] redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_mem_aa;
    wire [1:0] redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_mem_ab;
    wire [31:0] redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_mem_iq;
    wire [31:0] redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_mem_q;
    wire [1:0] redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_rdcnt_i;
    reg [1:0] redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_wraddr_q;
    wire [2:0] redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_mem_last_q;
    wire [2:0] redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_cmp_b;
    wire [0:0] redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_cmpReg_q;
    wire [0:0] redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_notEnable_q;
    wire [0:0] redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_sticky_ena_q;
    wire [0:0] redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_enaAnd_q;
    wire redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_mem_reset0;
    wire [31:0] redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_mem_ia;
    wire [1:0] redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_mem_aa;
    wire [1:0] redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_mem_ab;
    wire [31:0] redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_mem_iq;
    wire [31:0] redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_mem_q;
    wire [1:0] redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_rdcnt_i;
    reg [1:0] redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_wraddr_q;
    wire [2:0] redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_mem_last_q;
    wire [2:0] redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_cmp_b;
    wire [0:0] redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_cmpReg_q;
    wire [0:0] redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_notEnable_q;
    wire [0:0] redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_sticky_ena_q;
    wire [0:0] redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_enaAnd_q;
    wire redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_mem_reset0;
    wire [31:0] redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_mem_ia;
    wire [1:0] redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_mem_aa;
    wire [1:0] redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_mem_ab;
    wire [31:0] redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_mem_iq;
    wire [31:0] redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_mem_q;
    wire [1:0] redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_rdcnt_i;
    reg [1:0] redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_wraddr_q;
    wire [2:0] redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_mem_last_q;
    wire [2:0] redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_cmp_b;
    wire [0:0] redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_cmpReg_q;
    wire [0:0] redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_notEnable_q;
    wire [0:0] redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_sticky_ena_q;
    wire [0:0] redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_enaAnd_q;
    wire redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_mem_reset0;
    wire [31:0] redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_mem_ia;
    wire [1:0] redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_mem_aa;
    wire [1:0] redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_mem_ab;
    wire [31:0] redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_mem_iq;
    wire [31:0] redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_mem_q;
    wire [1:0] redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_rdcnt_i;
    reg [1:0] redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_wraddr_q;
    wire [2:0] redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_mem_last_q;
    wire [2:0] redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_cmp_b;
    wire [0:0] redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_cmpReg_q;
    wire [0:0] redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_notEnable_q;
    wire [0:0] redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_sticky_ena_q;
    wire [0:0] redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_enaAnd_q;
    wire redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_mem_reset0;
    wire [31:0] redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_mem_ia;
    wire [1:0] redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_mem_aa;
    wire [1:0] redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_mem_ab;
    wire [31:0] redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_mem_iq;
    wire [31:0] redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_mem_q;
    wire [1:0] redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_rdcnt_i;
    reg [1:0] redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_wraddr_q;
    wire [2:0] redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_mem_last_q;
    wire [2:0] redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_cmp_b;
    wire [0:0] redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_cmpReg_q;
    wire [0:0] redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_notEnable_q;
    wire [0:0] redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_sticky_ena_q;
    wire [0:0] redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_enaAnd_q;
    wire redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_mem_reset0;
    wire [31:0] redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_mem_ia;
    wire [1:0] redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_mem_aa;
    wire [1:0] redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_mem_ab;
    wire [31:0] redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_mem_iq;
    wire [31:0] redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_mem_q;
    wire [1:0] redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_rdcnt_i;
    reg [1:0] redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_wraddr_q;
    wire [2:0] redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_mem_last_q;
    wire [2:0] redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_cmp_b;
    wire [0:0] redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_cmpReg_q;
    wire [0:0] redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_notEnable_q;
    wire [0:0] redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_sticky_ena_q;
    wire [0:0] redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_enaAnd_q;
    wire redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_mem_reset0;
    wire [31:0] redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_mem_ia;
    wire [1:0] redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_mem_aa;
    wire [1:0] redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_mem_ab;
    wire [31:0] redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_mem_iq;
    wire [31:0] redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_mem_q;
    wire [1:0] redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_rdcnt_i;
    reg [1:0] redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_wraddr_q;
    wire [2:0] redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_mem_last_q;
    wire [2:0] redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_cmp_b;
    wire [0:0] redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_cmpReg_q;
    wire [0:0] redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_notEnable_q;
    wire [0:0] redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_sticky_ena_q;
    wire [0:0] redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_enaAnd_q;
    wire redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_mem_reset0;
    wire [31:0] redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_mem_ia;
    wire [1:0] redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_mem_aa;
    wire [1:0] redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_mem_ab;
    wire [31:0] redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_mem_iq;
    wire [31:0] redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_mem_q;
    wire [1:0] redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_rdcnt_i;
    reg [1:0] redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_wraddr_q;
    wire [2:0] redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_mem_last_q;
    wire [2:0] redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_cmp_b;
    wire [0:0] redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_cmpReg_q;
    wire [0:0] redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_notEnable_q;
    wire [0:0] redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_sticky_ena_q;
    wire [0:0] redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_enaAnd_q;
    wire redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_mem_reset0;
    wire [31:0] redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_mem_ia;
    wire [1:0] redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_mem_aa;
    wire [1:0] redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_mem_ab;
    wire [31:0] redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_mem_iq;
    wire [31:0] redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_mem_q;
    wire [1:0] redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_rdcnt_i;
    reg [1:0] redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_wraddr_q;
    wire [2:0] redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_mem_last_q;
    wire [2:0] redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_cmp_b;
    wire [0:0] redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_cmpReg_q;
    wire [0:0] redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_notEnable_q;
    wire [0:0] redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_sticky_ena_q;
    wire [0:0] redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_enaAnd_q;
    wire redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_mem_reset0;
    wire [31:0] redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_mem_ia;
    wire [1:0] redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_mem_aa;
    wire [1:0] redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_mem_ab;
    wire [31:0] redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_mem_iq;
    wire [31:0] redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_mem_q;
    wire [1:0] redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_rdcnt_i;
    reg [1:0] redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_wraddr_q;
    wire [2:0] redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_mem_last_q;
    wire [2:0] redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_cmp_b;
    wire [0:0] redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_cmpReg_q;
    wire [0:0] redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_notEnable_q;
    wire [0:0] redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_sticky_ena_q;
    wire [0:0] redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_enaAnd_q;
    wire redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_mem_reset0;
    wire [31:0] redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_mem_ia;
    wire [1:0] redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_mem_aa;
    wire [1:0] redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_mem_ab;
    wire [31:0] redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_mem_iq;
    wire [31:0] redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_mem_q;
    wire [1:0] redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_rdcnt_i;
    reg [1:0] redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_wraddr_q;
    wire [2:0] redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_mem_last_q;
    wire [2:0] redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_cmp_b;
    wire [0:0] redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_cmpReg_q;
    wire [0:0] redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_notEnable_q;
    wire [0:0] redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_sticky_ena_q;
    wire [0:0] redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_enaAnd_q;
    wire redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_mem_reset0;
    wire [31:0] redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_mem_ia;
    wire [1:0] redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_mem_aa;
    wire [1:0] redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_mem_ab;
    wire [31:0] redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_mem_iq;
    wire [31:0] redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_mem_q;
    wire [1:0] redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_rdcnt_i;
    reg [1:0] redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_wraddr_q;
    wire [2:0] redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_mem_last_q;
    wire [2:0] redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_cmp_b;
    wire [0:0] redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_cmpReg_q;
    wire [0:0] redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_notEnable_q;
    wire [0:0] redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_sticky_ena_q;
    wire [0:0] redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_enaAnd_q;
    wire redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_mem_reset0;
    wire [31:0] redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_mem_ia;
    wire [1:0] redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_mem_aa;
    wire [1:0] redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_mem_ab;
    wire [31:0] redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_mem_iq;
    wire [31:0] redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_mem_q;
    wire [1:0] redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_rdcnt_i;
    reg [1:0] redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_wraddr_q;
    wire [2:0] redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_mem_last_q;
    wire [2:0] redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_cmp_b;
    wire [0:0] redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_cmpReg_q;
    wire [0:0] redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_notEnable_q;
    wire [0:0] redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_sticky_ena_q;
    wire [0:0] redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_enaAnd_q;
    wire redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_mem_reset0;
    wire [32:0] redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_mem_ia;
    wire [1:0] redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_mem_aa;
    wire [1:0] redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_mem_ab;
    wire [32:0] redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_mem_iq;
    wire [32:0] redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_mem_q;
    wire [1:0] redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_rdcnt_i;
    reg [1:0] redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_wraddr_q;
    wire [2:0] redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_mem_last_q;
    wire [2:0] redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_cmp_b;
    wire [0:0] redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_cmpReg_q;
    wire [0:0] redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_notEnable_q;
    wire [0:0] redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_sticky_ena_q;
    wire [0:0] redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_enaAnd_q;
    wire redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_mem_reset0;
    wire [31:0] redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_mem_ia;
    wire [1:0] redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_mem_aa;
    wire [1:0] redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_mem_ab;
    wire [31:0] redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_mem_iq;
    wire [31:0] redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_mem_q;
    wire [1:0] redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_rdcnt_i;
    reg [1:0] redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_wraddr_q;
    wire [2:0] redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_mem_last_q;
    wire [2:0] redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_cmp_b;
    wire [0:0] redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_cmpReg_q;
    wire [0:0] redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_notEnable_q;
    wire [0:0] redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_sticky_ena_q;
    wire [0:0] redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_enaAnd_q;
    wire redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_mem_reset0;
    wire [31:0] redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_mem_ia;
    wire [1:0] redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_mem_aa;
    wire [1:0] redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_mem_ab;
    wire [31:0] redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_mem_iq;
    wire [31:0] redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_mem_q;
    wire [1:0] redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_rdcnt_i;
    reg [1:0] redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_wraddr_q;
    wire [2:0] redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_mem_last_q;
    wire [2:0] redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_cmp_b;
    wire [0:0] redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_cmpReg_q;
    wire [0:0] redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_notEnable_q;
    wire [0:0] redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_sticky_ena_q;
    wire [0:0] redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_enaAnd_q;
    wire redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_mem_reset0;
    wire [31:0] redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_mem_ia;
    wire [1:0] redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_mem_aa;
    wire [1:0] redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_mem_ab;
    wire [31:0] redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_mem_iq;
    wire [31:0] redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_mem_q;
    wire [1:0] redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_rdcnt_i;
    reg [1:0] redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_wraddr_q;
    wire [2:0] redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_mem_last_q;
    wire [2:0] redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_cmp_b;
    wire [0:0] redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_cmpReg_q;
    wire [0:0] redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_notEnable_q;
    wire [0:0] redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_sticky_ena_q;
    wire [0:0] redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_enaAnd_q;
    wire redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_mem_reset0;
    wire [31:0] redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_mem_ia;
    wire [1:0] redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_mem_aa;
    wire [1:0] redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_mem_ab;
    wire [31:0] redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_mem_iq;
    wire [31:0] redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_mem_q;
    wire [1:0] redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_rdcnt_i;
    reg [1:0] redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_wraddr_q;
    wire [2:0] redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_mem_last_q;
    wire [2:0] redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_cmp_b;
    wire [0:0] redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_cmpReg_q;
    wire [0:0] redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_notEnable_q;
    wire [0:0] redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_sticky_ena_q;
    wire [0:0] redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_enaAnd_q;
    wire redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_mem_reset0;
    wire [31:0] redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_mem_ia;
    wire [1:0] redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_mem_aa;
    wire [1:0] redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_mem_ab;
    wire [31:0] redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_mem_iq;
    wire [31:0] redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_mem_q;
    wire [1:0] redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_rdcnt_i;
    reg [1:0] redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_wraddr_q;
    wire [2:0] redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_mem_last_q;
    wire [2:0] redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_cmp_b;
    wire [0:0] redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_cmpReg_q;
    wire [0:0] redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_notEnable_q;
    wire [0:0] redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_sticky_ena_q;
    wire [0:0] redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_enaAnd_q;
    wire redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_mem_reset0;
    wire [31:0] redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_mem_ia;
    wire [1:0] redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_mem_aa;
    wire [1:0] redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_mem_ab;
    wire [31:0] redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_mem_iq;
    wire [31:0] redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_mem_q;
    wire [1:0] redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_rdcnt_i;
    reg [1:0] redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_wraddr_q;
    wire [2:0] redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_mem_last_q;
    wire [2:0] redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_cmp_b;
    wire [0:0] redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_cmpReg_q;
    wire [0:0] redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_notEnable_q;
    wire [0:0] redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_sticky_ena_q;
    wire [0:0] redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_enaAnd_q;
    wire redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_mem_reset0;
    wire [31:0] redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_mem_ia;
    wire [1:0] redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_mem_aa;
    wire [1:0] redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_mem_ab;
    wire [31:0] redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_mem_iq;
    wire [31:0] redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_mem_q;
    wire [1:0] redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_rdcnt_i;
    reg [1:0] redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_wraddr_q;
    wire [2:0] redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_mem_last_q;
    wire [2:0] redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_cmp_b;
    wire [0:0] redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_cmpReg_q;
    wire [0:0] redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_notEnable_q;
    wire [0:0] redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_sticky_ena_q;
    wire [0:0] redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_enaAnd_q;
    wire redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_mem_reset0;
    wire [31:0] redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_mem_ia;
    wire [1:0] redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_mem_aa;
    wire [1:0] redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_mem_ab;
    wire [31:0] redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_mem_iq;
    wire [31:0] redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_mem_q;
    wire [1:0] redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_rdcnt_i;
    reg [1:0] redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_wraddr_q;
    wire [2:0] redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_mem_last_q;
    wire [2:0] redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_cmp_b;
    wire [0:0] redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_cmpReg_q;
    wire [0:0] redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_notEnable_q;
    wire [0:0] redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_sticky_ena_q;
    wire [0:0] redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_enaAnd_q;
    wire redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_mem_reset0;
    wire [31:0] redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_mem_ia;
    wire [1:0] redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_mem_aa;
    wire [1:0] redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_mem_ab;
    wire [31:0] redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_mem_iq;
    wire [31:0] redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_mem_q;
    wire [1:0] redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_rdcnt_i;
    reg [1:0] redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_wraddr_q;
    wire [2:0] redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_mem_last_q;
    wire [2:0] redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_cmp_b;
    wire [0:0] redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_cmpReg_q;
    wire [0:0] redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_notEnable_q;
    wire [0:0] redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_sticky_ena_q;
    wire [0:0] redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_enaAnd_q;
    wire redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_mem_reset0;
    wire [31:0] redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_mem_ia;
    wire [1:0] redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_mem_aa;
    wire [1:0] redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_mem_ab;
    wire [31:0] redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_mem_iq;
    wire [31:0] redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_mem_q;
    wire [1:0] redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_rdcnt_i;
    reg [1:0] redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_wraddr_q;
    wire [2:0] redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_mem_last_q;
    wire [2:0] redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_cmp_b;
    wire [0:0] redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_cmpReg_q;
    wire [0:0] redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_notEnable_q;
    wire [0:0] redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_sticky_ena_q;
    wire [0:0] redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_enaAnd_q;
    wire redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_mem_reset0;
    wire [31:0] redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_mem_ia;
    wire [1:0] redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_mem_aa;
    wire [1:0] redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_mem_ab;
    wire [31:0] redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_mem_iq;
    wire [31:0] redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_mem_q;
    wire [1:0] redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_rdcnt_i;
    reg [1:0] redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_wraddr_q;
    wire [2:0] redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_mem_last_q;
    wire [2:0] redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_cmp_b;
    wire [0:0] redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_cmpReg_q;
    wire [0:0] redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_notEnable_q;
    wire [0:0] redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_sticky_ena_q;
    wire [0:0] redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_enaAnd_q;
    wire redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_mem_reset0;
    wire [31:0] redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_mem_ia;
    wire [1:0] redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_mem_aa;
    wire [1:0] redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_mem_ab;
    wire [31:0] redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_mem_iq;
    wire [31:0] redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_mem_q;
    wire [1:0] redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_rdcnt_i;
    reg [1:0] redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_wraddr_q;
    wire [2:0] redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_mem_last_q;
    wire [2:0] redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_cmp_b;
    wire [0:0] redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_cmpReg_q;
    wire [0:0] redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_notEnable_q;
    wire [0:0] redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_sticky_ena_q;
    wire [0:0] redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_enaAnd_q;
    wire redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_mem_reset0;
    wire [31:0] redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_mem_ia;
    wire [1:0] redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_mem_aa;
    wire [1:0] redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_mem_ab;
    wire [31:0] redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_mem_iq;
    wire [31:0] redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_mem_q;
    wire [1:0] redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_rdcnt_i;
    reg [1:0] redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_wraddr_q;
    wire [2:0] redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_mem_last_q;
    wire [2:0] redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_cmp_b;
    wire [0:0] redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_cmpReg_q;
    wire [0:0] redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_notEnable_q;
    wire [0:0] redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_sticky_ena_q;
    wire [0:0] redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_enaAnd_q;
    wire redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_mem_reset0;
    wire [31:0] redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_mem_ia;
    wire [1:0] redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_mem_aa;
    wire [1:0] redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_mem_ab;
    wire [31:0] redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_mem_iq;
    wire [31:0] redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_mem_q;
    wire [1:0] redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_rdcnt_i;
    reg [1:0] redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_wraddr_q;
    wire [2:0] redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_mem_last_q;
    wire [2:0] redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_cmp_b;
    wire [0:0] redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_cmpReg_q;
    wire [0:0] redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_notEnable_q;
    wire [0:0] redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_sticky_ena_q;
    wire [0:0] redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_enaAnd_q;
    wire redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_mem_reset0;
    wire [31:0] redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_mem_ia;
    wire [1:0] redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_mem_aa;
    wire [1:0] redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_mem_ab;
    wire [31:0] redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_mem_iq;
    wire [31:0] redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_mem_q;
    wire [1:0] redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_rdcnt_i;
    reg [1:0] redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_wraddr_q;
    wire [2:0] redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_mem_last_q;
    wire [2:0] redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_cmp_b;
    wire [0:0] redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_cmpReg_q;
    wire [0:0] redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_notEnable_q;
    wire [0:0] redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_sticky_ena_q;
    wire [0:0] redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_enaAnd_q;
    wire redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_mem_reset0;
    wire [31:0] redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_mem_ia;
    wire [1:0] redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_mem_aa;
    wire [1:0] redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_mem_ab;
    wire [31:0] redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_mem_iq;
    wire [31:0] redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_mem_q;
    wire [1:0] redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_rdcnt_i;
    reg [1:0] redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_wraddr_q;
    wire [2:0] redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_mem_last_q;
    wire [2:0] redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_cmp_b;
    wire [0:0] redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_cmpReg_q;
    wire [0:0] redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_notEnable_q;
    wire [0:0] redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_sticky_ena_q;
    wire [0:0] redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_enaAnd_q;
    wire redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_mem_reset0;
    wire [31:0] redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_mem_ia;
    wire [1:0] redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_mem_aa;
    wire [1:0] redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_mem_ab;
    wire [31:0] redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_mem_iq;
    wire [31:0] redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_mem_q;
    wire [1:0] redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_rdcnt_i;
    reg [1:0] redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_wraddr_q;
    wire [2:0] redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_mem_last_q;
    wire [2:0] redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_cmp_b;
    wire [0:0] redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_cmpReg_q;
    wire [0:0] redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_notEnable_q;
    wire [0:0] redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_sticky_ena_q;
    wire [0:0] redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_enaAnd_q;
    wire redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_mem_reset0;
    wire [31:0] redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_mem_ia;
    wire [1:0] redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_mem_aa;
    wire [1:0] redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_mem_ab;
    wire [31:0] redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_mem_iq;
    wire [31:0] redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_mem_q;
    wire [1:0] redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_rdcnt_i;
    reg [1:0] redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_wraddr_q;
    wire [2:0] redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_mem_last_q;
    wire [2:0] redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_cmp_b;
    wire [0:0] redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_cmpReg_q;
    wire [0:0] redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_notEnable_q;
    wire [0:0] redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_sticky_ena_q;
    wire [0:0] redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_enaAnd_q;
    wire redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_mem_reset0;
    wire [31:0] redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_mem_ia;
    wire [1:0] redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_mem_aa;
    wire [1:0] redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_mem_ab;
    wire [31:0] redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_mem_iq;
    wire [31:0] redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_mem_q;
    wire [1:0] redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_rdcnt_i;
    reg [1:0] redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_wraddr_q;
    wire [2:0] redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_mem_last_q;
    wire [2:0] redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_cmp_b;
    wire [0:0] redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_cmpReg_q;
    wire [0:0] redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_notEnable_q;
    wire [0:0] redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_sticky_ena_q;
    wire [0:0] redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_enaAnd_q;
    wire redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_mem_reset0;
    wire [31:0] redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_mem_ia;
    wire [1:0] redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_mem_aa;
    wire [1:0] redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_mem_ab;
    wire [31:0] redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_mem_iq;
    wire [31:0] redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_mem_q;
    wire [1:0] redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_rdcnt_i;
    reg [1:0] redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_wraddr_q;
    wire [2:0] redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_mem_last_q;
    wire [2:0] redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_cmp_b;
    wire [0:0] redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_cmpReg_q;
    wire [0:0] redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_notEnable_q;
    wire [0:0] redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_sticky_ena_q;
    wire [0:0] redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_enaAnd_q;
    wire redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_mem_reset0;
    wire [31:0] redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_mem_ia;
    wire [1:0] redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_mem_aa;
    wire [1:0] redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_mem_ab;
    wire [31:0] redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_mem_iq;
    wire [31:0] redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_mem_q;
    wire [1:0] redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_rdcnt_i;
    reg [1:0] redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_wraddr_q;
    wire [2:0] redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_mem_last_q;
    wire [2:0] redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_cmp_b;
    wire [0:0] redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_cmpReg_q;
    wire [0:0] redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_notEnable_q;
    wire [0:0] redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_sticky_ena_q;
    wire [0:0] redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_enaAnd_q;
    wire redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_mem_reset0;
    wire [31:0] redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_mem_ia;
    wire [1:0] redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_mem_aa;
    wire [1:0] redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_mem_ab;
    wire [31:0] redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_mem_iq;
    wire [31:0] redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_mem_q;
    wire [1:0] redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_rdcnt_i;
    reg [1:0] redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_wraddr_q;
    wire [2:0] redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_mem_last_q;
    wire [2:0] redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_cmp_b;
    wire [0:0] redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_cmpReg_q;
    wire [0:0] redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_notEnable_q;
    wire [0:0] redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_sticky_ena_q;
    wire [0:0] redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_enaAnd_q;
    wire redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_mem_reset0;
    wire [31:0] redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_mem_ia;
    wire [1:0] redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_mem_aa;
    wire [1:0] redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_mem_ab;
    wire [31:0] redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_mem_iq;
    wire [31:0] redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_mem_q;
    wire [1:0] redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_rdcnt_i;
    reg [1:0] redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_wraddr_q;
    wire [2:0] redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_mem_last_q;
    wire [2:0] redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_cmp_b;
    wire [0:0] redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_cmpReg_q;
    wire [0:0] redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_notEnable_q;
    wire [0:0] redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_sticky_ena_q;
    wire [0:0] redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_enaAnd_q;
    wire redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_mem_reset0;
    wire [31:0] redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_mem_ia;
    wire [1:0] redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_mem_aa;
    wire [1:0] redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_mem_ab;
    wire [31:0] redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_mem_iq;
    wire [31:0] redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_mem_q;
    wire [1:0] redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_rdcnt_i;
    reg [1:0] redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_wraddr_q;
    wire [2:0] redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_mem_last_q;
    wire [2:0] redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_cmp_b;
    wire [0:0] redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_cmpReg_q;
    wire [0:0] redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_notEnable_q;
    wire [0:0] redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_sticky_ena_q;
    wire [0:0] redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_enaAnd_q;
    wire redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_mem_reset0;
    wire [31:0] redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_mem_ia;
    wire [1:0] redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_mem_aa;
    wire [1:0] redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_mem_ab;
    wire [31:0] redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_mem_iq;
    wire [31:0] redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_mem_q;
    wire [1:0] redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_rdcnt_i;
    reg [1:0] redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_wraddr_q;
    wire [2:0] redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_mem_last_q;
    wire [2:0] redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_cmp_b;
    wire [0:0] redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_cmpReg_q;
    wire [0:0] redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_notEnable_q;
    wire [0:0] redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_sticky_ena_q;
    wire [0:0] redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_enaAnd_q;
    wire redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_mem_reset0;
    wire [31:0] redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_mem_ia;
    wire [1:0] redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_mem_aa;
    wire [1:0] redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_mem_ab;
    wire [31:0] redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_mem_iq;
    wire [31:0] redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_mem_q;
    wire [1:0] redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_rdcnt_i;
    reg [1:0] redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_wraddr_q;
    wire [2:0] redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_mem_last_q;
    wire [2:0] redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_cmp_b;
    wire [0:0] redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_cmpReg_q;
    wire [0:0] redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_notEnable_q;
    wire [0:0] redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_sticky_ena_q;
    wire [0:0] redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_enaAnd_q;
    wire redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_mem_reset0;
    wire [31:0] redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_mem_ia;
    wire [1:0] redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_mem_aa;
    wire [1:0] redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_mem_ab;
    wire [31:0] redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_mem_iq;
    wire [31:0] redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_mem_q;
    wire [1:0] redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_rdcnt_i;
    reg [1:0] redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_wraddr_q;
    wire [2:0] redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_mem_last_q;
    wire [2:0] redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_cmp_b;
    wire [0:0] redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_cmpReg_q;
    wire [0:0] redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_notEnable_q;
    wire [0:0] redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_sticky_ena_q;
    wire [0:0] redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_enaAnd_q;
    wire redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_mem_reset0;
    wire [31:0] redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_mem_ia;
    wire [1:0] redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_mem_aa;
    wire [1:0] redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_mem_ab;
    wire [31:0] redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_mem_iq;
    wire [31:0] redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_mem_q;
    wire [1:0] redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_rdcnt_i;
    reg [1:0] redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_wraddr_q;
    wire [2:0] redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_mem_last_q;
    wire [2:0] redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_cmp_b;
    wire [0:0] redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_cmpReg_q;
    wire [0:0] redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_notEnable_q;
    wire [0:0] redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_sticky_ena_q;
    wire [0:0] redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_enaAnd_q;
    wire redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_mem_reset0;
    wire [31:0] redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_mem_ia;
    wire [1:0] redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_mem_aa;
    wire [1:0] redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_mem_ab;
    wire [31:0] redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_mem_iq;
    wire [31:0] redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_mem_q;
    wire [1:0] redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_rdcnt_i;
    reg [1:0] redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_wraddr_q;
    wire [2:0] redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_mem_last_q;
    wire [2:0] redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_cmp_b;
    wire [0:0] redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_cmpReg_q;
    wire [0:0] redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_notEnable_q;
    wire [0:0] redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_sticky_ena_q;
    wire [0:0] redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_enaAnd_q;
    reg [31:0] redist81_bgTrunc_i_add22_conv2d1x135_sel_x_b_4_inputreg0_q;
    reg [31:0] redist81_bgTrunc_i_add22_conv2d1x135_sel_x_b_4_outputreg0_q;
    reg [31:0] redist82_i_shl_conv2d1x132_vt_join_q_4_inputreg0_q;
    wire redist82_i_shl_conv2d1x132_vt_join_q_4_mem_reset0;
    wire [31:0] redist82_i_shl_conv2d1x132_vt_join_q_4_mem_ia;
    wire [0:0] redist82_i_shl_conv2d1x132_vt_join_q_4_mem_aa;
    wire [0:0] redist82_i_shl_conv2d1x132_vt_join_q_4_mem_ab;
    wire [31:0] redist82_i_shl_conv2d1x132_vt_join_q_4_mem_iq;
    wire [31:0] redist82_i_shl_conv2d1x132_vt_join_q_4_mem_q;
    wire [0:0] redist82_i_shl_conv2d1x132_vt_join_q_4_rdcnt_q;
    (* preserve *) reg [0:0] redist82_i_shl_conv2d1x132_vt_join_q_4_rdcnt_i;
    reg [0:0] redist82_i_shl_conv2d1x132_vt_join_q_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist82_i_shl_conv2d1x132_vt_join_q_4_cmpReg_q;
    wire [0:0] redist82_i_shl_conv2d1x132_vt_join_q_4_notEnable_q;
    wire [0:0] redist82_i_shl_conv2d1x132_vt_join_q_4_nor_q;
    (* dont_merge *) reg [0:0] redist82_i_shl_conv2d1x132_vt_join_q_4_sticky_ena_q;
    wire [0:0] redist82_i_shl_conv2d1x132_vt_join_q_4_enaAnd_q;
    reg [31:0] redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_inputreg0_q;
    wire redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_mem_reset0;
    wire [31:0] redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_mem_ia;
    wire [0:0] redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_mem_aa;
    wire [0:0] redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_mem_ab;
    wire [31:0] redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_mem_iq;
    wire [31:0] redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_mem_q;
    wire [0:0] redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_rdcnt_q;
    (* preserve *) reg [0:0] redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_rdcnt_i;
    reg [0:0] redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_cmpReg_q;
    wire [0:0] redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_notEnable_q;
    wire [0:0] redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_sticky_ena_q;
    wire [0:0] redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_enaAnd_q;
    reg [31:0] redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_inputreg0_q;
    wire redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_mem_reset0;
    wire [31:0] redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_mem_ia;
    wire [0:0] redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_mem_aa;
    wire [0:0] redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_mem_ab;
    wire [31:0] redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_mem_iq;
    wire [31:0] redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_mem_q;
    wire [0:0] redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_rdcnt_q;
    (* preserve *) reg [0:0] redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_rdcnt_i;
    reg [0:0] redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_cmpReg_q;
    wire [0:0] redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_notEnable_q;
    wire [0:0] redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_sticky_ena_q;
    wire [0:0] redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_enaAnd_q;
    reg [31:0] redist86_i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144_out_data_out_4_inputreg0_q;
    reg [31:0] redist86_i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144_out_data_out_4_outputreg0_q;
    wire redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_mem_reset0;
    wire [31:0] redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_mem_ia;
    wire [0:0] redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_mem_aa;
    wire [0:0] redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_mem_ab;
    wire [31:0] redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_mem_iq;
    wire [31:0] redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_mem_q;
    wire [0:0] redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_rdcnt_q;
    (* preserve *) reg [0:0] redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_rdcnt_i;
    reg [0:0] redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_cmpReg_q;
    wire [0:0] redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_notEnable_q;
    wire [0:0] redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_sticky_ena_q;
    wire [0:0] redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist77_sync_together220_aunroll_x_in_i_valid_1(DELAY,415)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist77_sync_together220_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist77_sync_together220_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist101_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_1(DELAY,439)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist101_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_1_q <= '0;
        end
        else
        begin
            redist101_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid313_i_cleanups_shl_conv2d1x10_shift_x(BITSELECT,312)@2
    assign leftShiftStage0Idx1Rng1_uid313_i_cleanups_shl_conv2d1x10_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop94_conv2d1x16_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid313_i_cleanups_shl_conv2d1x10_shift_x_b = leftShiftStage0Idx1Rng1_uid313_i_cleanups_shl_conv2d1x10_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid314_i_cleanups_shl_conv2d1x10_shift_x(BITJOIN,313)@2
    assign leftShiftStage0Idx1_uid314_i_cleanups_shl_conv2d1x10_shift_x_q = {leftShiftStage0Idx1Rng1_uid313_i_cleanups_shl_conv2d1x10_shift_x_b, GND_q};

    // leftShiftStage0_uid316_i_cleanups_shl_conv2d1x10_shift_x(MUX,315)@2
    assign leftShiftStage0_uid316_i_cleanups_shl_conv2d1x10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid316_i_cleanups_shl_conv2d1x10_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop94_conv2d1x16_out_data_out or leftShiftStage0Idx1_uid314_i_cleanups_shl_conv2d1x10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid316_i_cleanups_shl_conv2d1x10_shift_x_s)
            1'b0 : leftShiftStage0_uid316_i_cleanups_shl_conv2d1x10_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop94_conv2d1x16_out_data_out;
            1'b1 : leftShiftStage0_uid316_i_cleanups_shl_conv2d1x10_shift_x_q = leftShiftStage0Idx1_uid314_i_cleanups_shl_conv2d1x10_shift_x_q;
            default : leftShiftStage0_uid316_i_cleanups_shl_conv2d1x10_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_conv2d1x19_vt_select_1(BITSELECT,88)@2
    assign i_cleanups_shl_conv2d1x19_vt_select_1_b = leftShiftStage0_uid316_i_cleanups_shl_conv2d1x10_shift_x_q[1:1];

    // i_cleanups_shl_conv2d1x19_vt_join(BITJOIN,87)@2
    assign i_cleanups_shl_conv2d1x19_vt_join_q = {i_cleanups_shl_conv2d1x19_vt_select_1_b, GND_q};

    // i_first_cleanup_xor148_conv2d1x18(LOGICAL,91)@2
    assign i_first_cleanup_xor148_conv2d1x18_q = i_first_cleanup_conv2d1x17_sel_x_b ^ VCC_q;

    // i_notcmp_conv2d1x157(LOGICAL,176)@2
    assign i_notcmp_conv2d1x157_q = i_unnamed_conv2d1x156_q ^ VCC_q;

    // i_or_conv2d1x159(LOGICAL,177)@2
    assign i_or_conv2d1x159_q = i_notcmp_conv2d1x157_q | i_first_cleanup_xor148_conv2d1x18_q;

    // i_next_cleanups_conv2d1x160(MUX,172)@2
    assign i_next_cleanups_conv2d1x160_s = i_or_conv2d1x159_q;
    always @(i_next_cleanups_conv2d1x160_s or i_llvm_fpga_pop_i2_cleanups_pop94_conv2d1x16_out_data_out or i_cleanups_shl_conv2d1x19_vt_join_q)
    begin
        unique case (i_next_cleanups_conv2d1x160_s)
            1'b0 : i_next_cleanups_conv2d1x160_q = i_llvm_fpga_pop_i2_cleanups_pop94_conv2d1x16_out_data_out;
            1'b1 : i_next_cleanups_conv2d1x160_q = i_cleanups_shl_conv2d1x19_vt_join_q;
            default : i_next_cleanups_conv2d1x160_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push94_conv2d1x161(BLACKBOX,154)@2
    // out out_feedback_out_94@20000000
    // out out_feedback_valid_out_94@20000000
    conv2d1x1_i_llvm_fpga_push_i2_cleanups_push94_0 thei_llvm_fpga_push_i2_cleanups_push94_conv2d1x161 (
        .in_data_in(i_next_cleanups_conv2d1x160_q),
        .in_feedback_stall_in_94(i_llvm_fpga_pop_i2_cleanups_pop94_conv2d1x16_out_feedback_stall_out_94),
        .in_keep_going(redist101_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist77_sync_together220_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_94(i_llvm_fpga_push_i2_cleanups_push94_conv2d1x161_out_feedback_out_94),
        .out_feedback_valid_out_94(i_llvm_fpga_push_i2_cleanups_push94_conv2d1x161_out_feedback_valid_out_94),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together220_aunroll_x_in_c0_eni76_2_tpl_1(DELAY,339)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together220_aunroll_x_in_c0_eni76_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together220_aunroll_x_in_c0_eni76_2_tpl_1_q <= $unsigned(in_c0_eni76_2_tpl);
        end
    end

    // c_i2_1150(CONSTANT,66)
    assign c_i2_1150_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop94_conv2d1x16(BLACKBOX,126)@2
    // out out_feedback_stall_out_94@20000000
    conv2d1x1_i_llvm_fpga_pop_i2_cleanups_pop94_0 thei_llvm_fpga_pop_i2_cleanups_pop94_conv2d1x16 (
        .in_data_in(c_i2_1150_q),
        .in_dir(redist1_sync_together220_aunroll_x_in_c0_eni76_2_tpl_1_q),
        .in_feedback_in_94(i_llvm_fpga_push_i2_cleanups_push94_conv2d1x161_out_feedback_out_94),
        .in_feedback_valid_in_94(i_llvm_fpga_push_i2_cleanups_push94_conv2d1x161_out_feedback_valid_out_94),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist77_sync_together220_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop94_conv2d1x16_out_data_out),
        .out_feedback_stall_out_94(i_llvm_fpga_pop_i2_cleanups_pop94_conv2d1x16_out_feedback_stall_out_94),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_conv2d1x17_sel_x(BITSELECT,214)@2
    assign i_first_cleanup_conv2d1x17_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop94_conv2d1x16_out_data_out[0:0];

    // i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x120_conv2d1x125(BLACKBOX,106)@2
    conv2d1x1_i_llvm_fpga_ffwd_dest_i33_unnamed_20_conv2d1x10 thei_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x120_conv2d1x125 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist77_sync_together220_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x120_conv2d1x125_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_1158(CONSTANT,71)
    assign c_i33_1158_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_conv2d1x154(ADD,94)@2
    assign i_fpga_indvars_iv_next_conv2d1x154_a = {1'b0, i_fpga_indvars_iv_replace_phi_conv2d1x127_q};
    assign i_fpga_indvars_iv_next_conv2d1x154_b = {1'b0, c_i33_1158_q};
    assign i_fpga_indvars_iv_next_conv2d1x154_o = $unsigned(i_fpga_indvars_iv_next_conv2d1x154_a) + $unsigned(i_fpga_indvars_iv_next_conv2d1x154_b);
    assign i_fpga_indvars_iv_next_conv2d1x154_q = i_fpga_indvars_iv_next_conv2d1x154_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_conv2d1x154_sel_x(BITSELECT,193)@2
    assign bgTrunc_i_fpga_indvars_iv_next_conv2d1x154_sel_x_b = i_fpga_indvars_iv_next_conv2d1x154_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push78_conv2d1x155(BLACKBOX,161)@2
    // out out_feedback_out_78@20000000
    // out out_feedback_valid_out_78@20000000
    conv2d1x1_i_llvm_fpga_push_i33_fpga_indvars_iv_push78_0 thei_llvm_fpga_push_i33_fpga_indvars_iv_push78_conv2d1x155 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_conv2d1x154_sel_x_b),
        .in_feedback_stall_in_78(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop78_conv2d1x126_out_feedback_stall_out_78),
        .in_keep_going(redist101_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist77_sync_together220_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_78(i_llvm_fpga_push_i33_fpga_indvars_iv_push78_conv2d1x155_out_feedback_out_78),
        .out_feedback_valid_out_78(i_llvm_fpga_push_i33_fpga_indvars_iv_push78_conv2d1x155_out_feedback_valid_out_78),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef152(CONSTANT,72)
    assign c_i33_undef152_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop78_conv2d1x126(BLACKBOX,133)@2
    // out out_feedback_stall_out_78@20000000
    conv2d1x1_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop78_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv_pop78_conv2d1x126 (
        .in_data_in(c_i33_undef152_q),
        .in_dir(redist1_sync_together220_aunroll_x_in_c0_eni76_2_tpl_1_q),
        .in_feedback_in_78(i_llvm_fpga_push_i33_fpga_indvars_iv_push78_conv2d1x155_out_feedback_out_78),
        .in_feedback_valid_in_78(i_llvm_fpga_push_i33_fpga_indvars_iv_push78_conv2d1x155_out_feedback_valid_out_78),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist77_sync_together220_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop78_conv2d1x126_out_data_out),
        .out_feedback_stall_out_78(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop78_conv2d1x126_out_feedback_stall_out_78),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv_replace_phi_conv2d1x127(MUX,95)@2
    assign i_fpga_indvars_iv_replace_phi_conv2d1x127_s = redist1_sync_together220_aunroll_x_in_c0_eni76_2_tpl_1_q;
    always @(i_fpga_indvars_iv_replace_phi_conv2d1x127_s or i_llvm_fpga_pop_i33_fpga_indvars_iv_pop78_conv2d1x126_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x120_conv2d1x125_out_dest_data_out_3_0)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_conv2d1x127_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_conv2d1x127_q = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop78_conv2d1x126_out_data_out;
            1'b1 : i_fpga_indvars_iv_replace_phi_conv2d1x127_q = i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x120_conv2d1x125_out_dest_data_out_3_0;
            default : i_fpga_indvars_iv_replace_phi_conv2d1x127_q = 33'b0;
        endcase
    end

    // i_exitcond_conv2d1x152_cmp_nsign(LOGICAL,293)@2
    assign i_exitcond_conv2d1x152_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv_replace_phi_conv2d1x127_q[32:32]));

    // redist78_sync_together220_aunroll_x_in_i_valid_2(DELAY,416)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist78_sync_together220_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist78_sync_together220_aunroll_x_in_i_valid_2_q <= $unsigned(redist77_sync_together220_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist102_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_2(DELAY,440)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist102_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_2_q <= '0;
        end
        else
        begin
            redist102_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_2_q <= $unsigned(redist101_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_1_q);
        end
    end

    // redist89_i_llvm_fpga_pop_i1_pop114_conv2d1x128_out_data_out_1(DELAY,427)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist89_i_llvm_fpga_pop_i1_pop114_conv2d1x128_out_data_out_1_q <= '0;
        end
        else
        begin
            redist89_i_llvm_fpga_pop_i1_pop114_conv2d1x128_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_pop114_conv2d1x128_out_data_out);
        end
    end

    // i_llvm_fpga_push_i1_push114_conv2d1x129(BLACKBOX,151)@3
    // out out_feedback_out_114@20000000
    // out out_feedback_valid_out_114@20000000
    conv2d1x1_i_llvm_fpga_push_i1_push114_0 thei_llvm_fpga_push_i1_push114_conv2d1x129 (
        .in_data_in(redist89_i_llvm_fpga_pop_i1_pop114_conv2d1x128_out_data_out_1_q),
        .in_feedback_stall_in_114(i_llvm_fpga_pop_i1_pop114_conv2d1x128_out_feedback_stall_out_114),
        .in_keep_going(redist102_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist78_sync_together220_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_114(i_llvm_fpga_push_i1_push114_conv2d1x129_out_feedback_out_114),
        .out_feedback_valid_out_114(i_llvm_fpga_push_i1_push114_conv2d1x129_out_feedback_valid_out_114),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together220_aunroll_x_in_c0_eni76_6_tpl_1(DELAY,344)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together220_aunroll_x_in_c0_eni76_6_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together220_aunroll_x_in_c0_eni76_6_tpl_1_q <= $unsigned(in_c0_eni76_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_pop114_conv2d1x128(BLACKBOX,123)@2
    // out out_feedback_stall_out_114@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_pop114_0 thei_llvm_fpga_pop_i1_pop114_conv2d1x128 (
        .in_data_in(redist6_sync_together220_aunroll_x_in_c0_eni76_6_tpl_1_q),
        .in_dir(redist1_sync_together220_aunroll_x_in_c0_eni76_2_tpl_1_q),
        .in_feedback_in_114(i_llvm_fpga_push_i1_push114_conv2d1x129_out_feedback_out_114),
        .in_feedback_valid_in_114(i_llvm_fpga_push_i1_push114_conv2d1x129_out_feedback_valid_out_114),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist77_sync_together220_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop114_conv2d1x128_out_data_out),
        .out_feedback_stall_out_114(i_llvm_fpga_pop_i1_pop114_conv2d1x128_out_feedback_stall_out_114),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d1x156(LOGICAL,182)@2
    assign i_unnamed_conv2d1x156_q = i_llvm_fpga_pop_i1_pop114_conv2d1x128_out_data_out & i_exitcond_conv2d1x152_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_conv2d1x158(BLACKBOX,147)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    conv2d1x1_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_conv2d1x158 (
        .in_data_in(i_unnamed_conv2d1x156_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_conv2d1x17_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist77_sync_together220_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_conv2d1x158_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_conv2d1x158_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg11(REG,239)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(in_i_valid);
        end
    end

    // rightShiftStage0Idx1Rng1_uid320_i_next_initerations_conv2d1x10_shift_x(BITSELECT,319)@2
    assign rightShiftStage0Idx1Rng1_uid320_i_next_initerations_conv2d1x10_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop93_conv2d1x120_out_data_out[1:1];

    // rightShiftStage0Idx1_uid322_i_next_initerations_conv2d1x10_shift_x(BITJOIN,321)@2
    assign rightShiftStage0Idx1_uid322_i_next_initerations_conv2d1x10_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid320_i_next_initerations_conv2d1x10_shift_x_b};

    // valid_fanout_reg9(REG,237)@1 + 1
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

    // valid_fanout_reg10(REG,238)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations_push93_conv2d1x122(BLACKBOX,155)@2
    // out out_feedback_out_93@20000000
    // out out_feedback_valid_out_93@20000000
    conv2d1x1_i_llvm_fpga_push_i2_initerations_push93_0 thei_llvm_fpga_push_i2_initerations_push93_conv2d1x122 (
        .in_data_in(i_next_initerations_conv2d1x121_vt_join_q),
        .in_feedback_stall_in_93(i_llvm_fpga_pop_i2_initerations_pop93_conv2d1x120_out_feedback_stall_out_93),
        .in_keep_going(redist101_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_93(i_llvm_fpga_push_i2_initerations_push93_conv2d1x122_out_feedback_out_93),
        .out_feedback_valid_out_93(i_llvm_fpga_push_i2_initerations_push93_conv2d1x122_out_feedback_valid_out_93),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop93_conv2d1x120(BLACKBOX,127)@2
    // out out_feedback_stall_out_93@20000000
    conv2d1x1_i_llvm_fpga_pop_i2_initerations_pop93_0 thei_llvm_fpga_pop_i2_initerations_pop93_conv2d1x120 (
        .in_data_in(c_i2_1150_q),
        .in_dir(redist1_sync_together220_aunroll_x_in_c0_eni76_2_tpl_1_q),
        .in_feedback_in_93(i_llvm_fpga_push_i2_initerations_push93_conv2d1x122_out_feedback_out_93),
        .in_feedback_valid_in_93(i_llvm_fpga_push_i2_initerations_push93_conv2d1x122_out_feedback_valid_out_93),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop93_conv2d1x120_out_data_out),
        .out_feedback_stall_out_93(i_llvm_fpga_pop_i2_initerations_pop93_conv2d1x120_out_feedback_stall_out_93),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid324_i_next_initerations_conv2d1x10_shift_x(MUX,323)@2
    assign rightShiftStage0_uid324_i_next_initerations_conv2d1x10_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid324_i_next_initerations_conv2d1x10_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop93_conv2d1x120_out_data_out or rightShiftStage0Idx1_uid322_i_next_initerations_conv2d1x10_shift_x_q)
    begin
        unique case (rightShiftStage0_uid324_i_next_initerations_conv2d1x10_shift_x_s)
            1'b0 : rightShiftStage0_uid324_i_next_initerations_conv2d1x10_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop93_conv2d1x120_out_data_out;
            1'b1 : rightShiftStage0_uid324_i_next_initerations_conv2d1x10_shift_x_q = rightShiftStage0Idx1_uid322_i_next_initerations_conv2d1x10_shift_x_q;
            default : rightShiftStage0_uid324_i_next_initerations_conv2d1x10_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_conv2d1x121_vt_select_0(BITSELECT,175)@2
    assign i_next_initerations_conv2d1x121_vt_select_0_b = rightShiftStage0_uid324_i_next_initerations_conv2d1x10_shift_x_q[0:0];

    // i_next_initerations_conv2d1x121_vt_join(BITJOIN,174)@2
    assign i_next_initerations_conv2d1x121_vt_join_q = {GND_q, i_next_initerations_conv2d1x121_vt_select_0_b};

    // i_last_initeration_conv2d1x123_sel_x(BITSELECT,217)@2
    assign i_last_initeration_conv2d1x123_sel_x_b = i_next_initerations_conv2d1x121_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_conv2d1x124(BLACKBOX,144)@2
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    conv2d1x1_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_conv2d1x124 (
        .in_data_in(i_last_initeration_conv2d1x123_sel_x_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_initeration_stall_out),
        .in_keep_going(redist101_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_i1_lastiniteration_conv2d1x124_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_i1_lastiniteration_conv2d1x124_out_feedback_valid_out_1),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_conv2d1x110(BLACKBOX,107)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    conv2d1x1_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_conv2d1x110 (
        .in_data_in(in_c0_eni76_2_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_conv2d1x124_out_feedback_out_1),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_conv2d1x124_out_feedback_valid_out_1),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_conv2d1x158_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_conv2d1x158_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,73)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x110_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x110_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,186)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_pipeline_valid_out;

    // redist79_sync_together220_aunroll_x_in_i_valid_4(DELAY,417)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist79_sync_together220_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist79_sync_together220_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist79_sync_together220_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(redist78_sync_together220_aunroll_x_in_i_valid_2_q);
            redist79_sync_together220_aunroll_x_in_i_valid_4_q <= redist79_sync_together220_aunroll_x_in_i_valid_4_delay_0;
        end
    end

    // valid_fanout_reg0(REG,228)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist79_sync_together220_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_notEnable(LOGICAL,943)
    assign redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_nor(LOGICAL,944)
    assign redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_nor_q = ~ (redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_notEnable_q | redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_sticky_ena_q);

    // redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_mem_last(CONSTANT,940)
    assign redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_cmp(LOGICAL,941)
    assign redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_cmp_b = {1'b0, redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_rdcnt_q};
    assign redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_cmp_q = $unsigned(redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_mem_last_q == redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_cmpReg(REG,942)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_cmpReg_q <= $unsigned(redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_cmp_q);
        end
    end

    // redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_sticky_ena(REG,945)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_nor_q == 1'b1)
        begin
            redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_sticky_ena_q <= $unsigned(redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_cmpReg_q);
        end
    end

    // redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_enaAnd(LOGICAL,946)
    assign redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_enaAnd_q = redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_sticky_ena_q & VCC_q;

    // redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_rdcnt(COUNTER,938)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_rdcnt_i <= $unsigned(redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_rdcnt_q = redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_rdcnt_i[1:0];

    // redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_wraddr(REG,939)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_wraddr_q <= $unsigned(redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_rdcnt_q);
        end
    end

    // redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_mem(DUALMEM,937)
    assign redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_mem_ia = $unsigned(in_c0_eni76_76_tpl);
    assign redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_mem_aa = redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_wraddr_q;
    assign redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_mem_ab = redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_rdcnt_q;
    assign redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_mem_dmem (
        .clocken1(redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_mem_aa),
        .data_a(redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_mem_ab),
        .q_b(redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_mem_iq),
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
    assign redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_mem_q = redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_mem_iq[31:0];

    // redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_notEnable(LOGICAL,933)
    assign redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_nor(LOGICAL,934)
    assign redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_nor_q = ~ (redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_notEnable_q | redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_sticky_ena_q);

    // redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_mem_last(CONSTANT,930)
    assign redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_cmp(LOGICAL,931)
    assign redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_cmp_b = {1'b0, redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_rdcnt_q};
    assign redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_cmp_q = $unsigned(redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_mem_last_q == redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_cmpReg(REG,932)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_cmpReg_q <= $unsigned(redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_cmp_q);
        end
    end

    // redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_sticky_ena(REG,935)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_nor_q == 1'b1)
        begin
            redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_sticky_ena_q <= $unsigned(redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_cmpReg_q);
        end
    end

    // redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_enaAnd(LOGICAL,936)
    assign redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_enaAnd_q = redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_sticky_ena_q & VCC_q;

    // redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_rdcnt(COUNTER,928)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_rdcnt_i <= $unsigned(redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_rdcnt_q = redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_rdcnt_i[1:0];

    // redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_wraddr(REG,929)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_wraddr_q <= $unsigned(redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_rdcnt_q);
        end
    end

    // redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_mem(DUALMEM,927)
    assign redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_mem_ia = $unsigned(in_c0_eni76_75_tpl);
    assign redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_mem_aa = redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_wraddr_q;
    assign redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_mem_ab = redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_rdcnt_q;
    assign redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_mem_dmem (
        .clocken1(redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_mem_aa),
        .data_a(redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_mem_ab),
        .q_b(redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_mem_iq),
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
    assign redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_mem_q = redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_mem_iq[31:0];

    // redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_notEnable(LOGICAL,923)
    assign redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_nor(LOGICAL,924)
    assign redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_nor_q = ~ (redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_notEnable_q | redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_sticky_ena_q);

    // redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_mem_last(CONSTANT,920)
    assign redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_cmp(LOGICAL,921)
    assign redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_cmp_b = {1'b0, redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_rdcnt_q};
    assign redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_cmp_q = $unsigned(redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_mem_last_q == redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_cmpReg(REG,922)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_cmpReg_q <= $unsigned(redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_cmp_q);
        end
    end

    // redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_sticky_ena(REG,925)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_nor_q == 1'b1)
        begin
            redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_sticky_ena_q <= $unsigned(redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_cmpReg_q);
        end
    end

    // redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_enaAnd(LOGICAL,926)
    assign redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_enaAnd_q = redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_sticky_ena_q & VCC_q;

    // redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_rdcnt(COUNTER,918)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_rdcnt_i <= $unsigned(redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_rdcnt_q = redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_rdcnt_i[1:0];

    // redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_wraddr(REG,919)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_wraddr_q <= $unsigned(redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_rdcnt_q);
        end
    end

    // redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_mem(DUALMEM,917)
    assign redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_mem_ia = $unsigned(in_c0_eni76_74_tpl);
    assign redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_mem_aa = redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_wraddr_q;
    assign redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_mem_ab = redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_rdcnt_q;
    assign redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_mem_dmem (
        .clocken1(redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_mem_aa),
        .data_a(redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_mem_ab),
        .q_b(redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_mem_iq),
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
    assign redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_mem_q = redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_mem_iq[31:0];

    // redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_notEnable(LOGICAL,913)
    assign redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_nor(LOGICAL,914)
    assign redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_nor_q = ~ (redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_notEnable_q | redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_sticky_ena_q);

    // redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_mem_last(CONSTANT,910)
    assign redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_cmp(LOGICAL,911)
    assign redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_cmp_b = {1'b0, redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_rdcnt_q};
    assign redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_cmp_q = $unsigned(redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_mem_last_q == redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_cmpReg(REG,912)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_cmpReg_q <= $unsigned(redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_cmp_q);
        end
    end

    // redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_sticky_ena(REG,915)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_nor_q == 1'b1)
        begin
            redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_sticky_ena_q <= $unsigned(redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_cmpReg_q);
        end
    end

    // redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_enaAnd(LOGICAL,916)
    assign redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_enaAnd_q = redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_sticky_ena_q & VCC_q;

    // redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_rdcnt(COUNTER,908)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_rdcnt_i <= $unsigned(redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_rdcnt_q = redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_rdcnt_i[1:0];

    // redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_wraddr(REG,909)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_wraddr_q <= $unsigned(redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_rdcnt_q);
        end
    end

    // redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_mem(DUALMEM,907)
    assign redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_mem_ia = $unsigned(in_c0_eni76_73_tpl);
    assign redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_mem_aa = redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_wraddr_q;
    assign redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_mem_ab = redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_rdcnt_q;
    assign redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_mem_dmem (
        .clocken1(redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_mem_aa),
        .data_a(redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_mem_ab),
        .q_b(redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_mem_iq),
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
    assign redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_mem_q = redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_mem_iq[31:0];

    // redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_notEnable(LOGICAL,903)
    assign redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_nor(LOGICAL,904)
    assign redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_nor_q = ~ (redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_notEnable_q | redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_sticky_ena_q);

    // redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_mem_last(CONSTANT,900)
    assign redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_cmp(LOGICAL,901)
    assign redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_cmp_b = {1'b0, redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_rdcnt_q};
    assign redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_cmp_q = $unsigned(redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_mem_last_q == redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_cmpReg(REG,902)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_cmpReg_q <= $unsigned(redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_cmp_q);
        end
    end

    // redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_sticky_ena(REG,905)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_nor_q == 1'b1)
        begin
            redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_sticky_ena_q <= $unsigned(redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_cmpReg_q);
        end
    end

    // redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_enaAnd(LOGICAL,906)
    assign redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_enaAnd_q = redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_sticky_ena_q & VCC_q;

    // redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_rdcnt(COUNTER,898)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_rdcnt_i <= $unsigned(redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_rdcnt_q = redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_rdcnt_i[1:0];

    // redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_wraddr(REG,899)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_wraddr_q <= $unsigned(redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_rdcnt_q);
        end
    end

    // redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_mem(DUALMEM,897)
    assign redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_mem_ia = $unsigned(in_c0_eni76_72_tpl);
    assign redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_mem_aa = redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_wraddr_q;
    assign redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_mem_ab = redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_rdcnt_q;
    assign redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_mem_dmem (
        .clocken1(redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_mem_aa),
        .data_a(redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_mem_ab),
        .q_b(redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_mem_iq),
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
    assign redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_mem_q = redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_mem_iq[31:0];

    // redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_notEnable(LOGICAL,893)
    assign redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_nor(LOGICAL,894)
    assign redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_nor_q = ~ (redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_notEnable_q | redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_sticky_ena_q);

    // redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_mem_last(CONSTANT,890)
    assign redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_cmp(LOGICAL,891)
    assign redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_cmp_b = {1'b0, redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_rdcnt_q};
    assign redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_cmp_q = $unsigned(redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_mem_last_q == redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_cmpReg(REG,892)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_cmpReg_q <= $unsigned(redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_cmp_q);
        end
    end

    // redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_sticky_ena(REG,895)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_nor_q == 1'b1)
        begin
            redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_sticky_ena_q <= $unsigned(redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_cmpReg_q);
        end
    end

    // redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_enaAnd(LOGICAL,896)
    assign redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_enaAnd_q = redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_sticky_ena_q & VCC_q;

    // redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_rdcnt(COUNTER,888)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_rdcnt_i <= $unsigned(redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_rdcnt_q = redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_rdcnt_i[1:0];

    // redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_wraddr(REG,889)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_wraddr_q <= $unsigned(redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_rdcnt_q);
        end
    end

    // redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_mem(DUALMEM,887)
    assign redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_mem_ia = $unsigned(in_c0_eni76_71_tpl);
    assign redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_mem_aa = redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_wraddr_q;
    assign redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_mem_ab = redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_rdcnt_q;
    assign redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_mem_dmem (
        .clocken1(redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_mem_aa),
        .data_a(redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_mem_ab),
        .q_b(redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_mem_iq),
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
    assign redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_mem_q = redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_mem_iq[31:0];

    // redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_notEnable(LOGICAL,883)
    assign redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_nor(LOGICAL,884)
    assign redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_nor_q = ~ (redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_notEnable_q | redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_sticky_ena_q);

    // redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_mem_last(CONSTANT,880)
    assign redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_cmp(LOGICAL,881)
    assign redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_cmp_b = {1'b0, redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_rdcnt_q};
    assign redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_cmp_q = $unsigned(redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_mem_last_q == redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_cmpReg(REG,882)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_cmpReg_q <= $unsigned(redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_cmp_q);
        end
    end

    // redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_sticky_ena(REG,885)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_nor_q == 1'b1)
        begin
            redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_sticky_ena_q <= $unsigned(redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_cmpReg_q);
        end
    end

    // redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_enaAnd(LOGICAL,886)
    assign redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_enaAnd_q = redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_sticky_ena_q & VCC_q;

    // redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_rdcnt(COUNTER,878)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_rdcnt_i <= $unsigned(redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_rdcnt_q = redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_rdcnt_i[1:0];

    // redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_wraddr(REG,879)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_wraddr_q <= $unsigned(redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_rdcnt_q);
        end
    end

    // redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_mem(DUALMEM,877)
    assign redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_mem_ia = $unsigned(in_c0_eni76_70_tpl);
    assign redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_mem_aa = redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_wraddr_q;
    assign redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_mem_ab = redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_rdcnt_q;
    assign redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_mem_dmem (
        .clocken1(redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_mem_aa),
        .data_a(redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_mem_ab),
        .q_b(redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_mem_iq),
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
    assign redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_mem_q = redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_mem_iq[31:0];

    // redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_notEnable(LOGICAL,873)
    assign redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_nor(LOGICAL,874)
    assign redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_nor_q = ~ (redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_notEnable_q | redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_sticky_ena_q);

    // redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_mem_last(CONSTANT,870)
    assign redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_cmp(LOGICAL,871)
    assign redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_cmp_b = {1'b0, redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_rdcnt_q};
    assign redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_cmp_q = $unsigned(redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_mem_last_q == redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_cmpReg(REG,872)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_cmpReg_q <= $unsigned(redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_cmp_q);
        end
    end

    // redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_sticky_ena(REG,875)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_nor_q == 1'b1)
        begin
            redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_sticky_ena_q <= $unsigned(redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_cmpReg_q);
        end
    end

    // redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_enaAnd(LOGICAL,876)
    assign redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_enaAnd_q = redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_sticky_ena_q & VCC_q;

    // redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_rdcnt(COUNTER,868)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_rdcnt_i <= $unsigned(redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_rdcnt_q = redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_rdcnt_i[1:0];

    // redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_wraddr(REG,869)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_wraddr_q <= $unsigned(redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_rdcnt_q);
        end
    end

    // redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_mem(DUALMEM,867)
    assign redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_mem_ia = $unsigned(in_c0_eni76_69_tpl);
    assign redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_mem_aa = redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_wraddr_q;
    assign redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_mem_ab = redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_rdcnt_q;
    assign redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_mem_dmem (
        .clocken1(redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_mem_aa),
        .data_a(redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_mem_ab),
        .q_b(redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_mem_iq),
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
    assign redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_mem_q = redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_mem_iq[31:0];

    // redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_notEnable(LOGICAL,863)
    assign redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_nor(LOGICAL,864)
    assign redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_nor_q = ~ (redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_notEnable_q | redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_sticky_ena_q);

    // redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_mem_last(CONSTANT,860)
    assign redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_cmp(LOGICAL,861)
    assign redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_cmp_b = {1'b0, redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_rdcnt_q};
    assign redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_cmp_q = $unsigned(redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_mem_last_q == redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_cmpReg(REG,862)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_cmpReg_q <= $unsigned(redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_cmp_q);
        end
    end

    // redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_sticky_ena(REG,865)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_nor_q == 1'b1)
        begin
            redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_sticky_ena_q <= $unsigned(redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_cmpReg_q);
        end
    end

    // redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_enaAnd(LOGICAL,866)
    assign redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_enaAnd_q = redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_sticky_ena_q & VCC_q;

    // redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_rdcnt(COUNTER,858)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_rdcnt_i <= $unsigned(redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_rdcnt_q = redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_rdcnt_i[1:0];

    // redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_wraddr(REG,859)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_wraddr_q <= $unsigned(redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_rdcnt_q);
        end
    end

    // redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_mem(DUALMEM,857)
    assign redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_mem_ia = $unsigned(in_c0_eni76_68_tpl);
    assign redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_mem_aa = redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_wraddr_q;
    assign redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_mem_ab = redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_rdcnt_q;
    assign redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_mem_dmem (
        .clocken1(redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_mem_aa),
        .data_a(redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_mem_ab),
        .q_b(redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_mem_iq),
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
    assign redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_mem_q = redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_mem_iq[31:0];

    // redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_notEnable(LOGICAL,853)
    assign redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_nor(LOGICAL,854)
    assign redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_nor_q = ~ (redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_notEnable_q | redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_sticky_ena_q);

    // redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_mem_last(CONSTANT,850)
    assign redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_cmp(LOGICAL,851)
    assign redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_cmp_b = {1'b0, redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_rdcnt_q};
    assign redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_cmp_q = $unsigned(redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_mem_last_q == redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_cmpReg(REG,852)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_cmpReg_q <= $unsigned(redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_cmp_q);
        end
    end

    // redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_sticky_ena(REG,855)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_nor_q == 1'b1)
        begin
            redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_sticky_ena_q <= $unsigned(redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_cmpReg_q);
        end
    end

    // redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_enaAnd(LOGICAL,856)
    assign redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_enaAnd_q = redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_sticky_ena_q & VCC_q;

    // redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_rdcnt(COUNTER,848)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_rdcnt_i <= $unsigned(redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_rdcnt_q = redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_rdcnt_i[1:0];

    // redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_wraddr(REG,849)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_wraddr_q <= $unsigned(redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_rdcnt_q);
        end
    end

    // redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_mem(DUALMEM,847)
    assign redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_mem_ia = $unsigned(in_c0_eni76_67_tpl);
    assign redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_mem_aa = redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_wraddr_q;
    assign redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_mem_ab = redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_rdcnt_q;
    assign redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_mem_dmem (
        .clocken1(redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_mem_aa),
        .data_a(redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_mem_ab),
        .q_b(redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_mem_iq),
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
    assign redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_mem_q = redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_mem_iq[31:0];

    // redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_notEnable(LOGICAL,843)
    assign redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_nor(LOGICAL,844)
    assign redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_nor_q = ~ (redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_notEnable_q | redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_sticky_ena_q);

    // redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_mem_last(CONSTANT,840)
    assign redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_cmp(LOGICAL,841)
    assign redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_cmp_b = {1'b0, redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_rdcnt_q};
    assign redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_cmp_q = $unsigned(redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_mem_last_q == redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_cmpReg(REG,842)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_cmpReg_q <= $unsigned(redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_cmp_q);
        end
    end

    // redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_sticky_ena(REG,845)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_nor_q == 1'b1)
        begin
            redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_sticky_ena_q <= $unsigned(redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_cmpReg_q);
        end
    end

    // redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_enaAnd(LOGICAL,846)
    assign redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_enaAnd_q = redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_sticky_ena_q & VCC_q;

    // redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_rdcnt(COUNTER,838)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_rdcnt_i <= $unsigned(redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_rdcnt_q = redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_rdcnt_i[1:0];

    // redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_wraddr(REG,839)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_wraddr_q <= $unsigned(redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_rdcnt_q);
        end
    end

    // redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_mem(DUALMEM,837)
    assign redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_mem_ia = $unsigned(in_c0_eni76_66_tpl);
    assign redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_mem_aa = redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_wraddr_q;
    assign redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_mem_ab = redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_rdcnt_q;
    assign redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_mem_dmem (
        .clocken1(redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_mem_aa),
        .data_a(redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_mem_ab),
        .q_b(redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_mem_iq),
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
    assign redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_mem_q = redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_mem_iq[31:0];

    // redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_notEnable(LOGICAL,833)
    assign redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_nor(LOGICAL,834)
    assign redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_nor_q = ~ (redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_notEnable_q | redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_sticky_ena_q);

    // redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_mem_last(CONSTANT,830)
    assign redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_cmp(LOGICAL,831)
    assign redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_cmp_b = {1'b0, redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_rdcnt_q};
    assign redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_cmp_q = $unsigned(redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_mem_last_q == redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_cmpReg(REG,832)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_cmpReg_q <= $unsigned(redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_cmp_q);
        end
    end

    // redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_sticky_ena(REG,835)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_nor_q == 1'b1)
        begin
            redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_sticky_ena_q <= $unsigned(redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_cmpReg_q);
        end
    end

    // redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_enaAnd(LOGICAL,836)
    assign redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_enaAnd_q = redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_sticky_ena_q & VCC_q;

    // redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_rdcnt(COUNTER,828)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_rdcnt_i <= $unsigned(redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_rdcnt_q = redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_rdcnt_i[1:0];

    // redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_wraddr(REG,829)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_wraddr_q <= $unsigned(redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_rdcnt_q);
        end
    end

    // redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_mem(DUALMEM,827)
    assign redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_mem_ia = $unsigned(in_c0_eni76_65_tpl);
    assign redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_mem_aa = redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_wraddr_q;
    assign redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_mem_ab = redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_rdcnt_q;
    assign redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_mem_dmem (
        .clocken1(redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_mem_aa),
        .data_a(redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_mem_ab),
        .q_b(redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_mem_iq),
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
    assign redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_mem_q = redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_mem_iq[31:0];

    // redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_notEnable(LOGICAL,823)
    assign redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_nor(LOGICAL,824)
    assign redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_nor_q = ~ (redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_notEnable_q | redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_sticky_ena_q);

    // redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_mem_last(CONSTANT,820)
    assign redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_cmp(LOGICAL,821)
    assign redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_cmp_b = {1'b0, redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_rdcnt_q};
    assign redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_cmp_q = $unsigned(redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_mem_last_q == redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_cmpReg(REG,822)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_cmpReg_q <= $unsigned(redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_cmp_q);
        end
    end

    // redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_sticky_ena(REG,825)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_nor_q == 1'b1)
        begin
            redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_sticky_ena_q <= $unsigned(redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_cmpReg_q);
        end
    end

    // redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_enaAnd(LOGICAL,826)
    assign redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_enaAnd_q = redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_sticky_ena_q & VCC_q;

    // redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_rdcnt(COUNTER,818)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_rdcnt_i <= $unsigned(redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_rdcnt_q = redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_rdcnt_i[1:0];

    // redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_wraddr(REG,819)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_wraddr_q <= $unsigned(redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_rdcnt_q);
        end
    end

    // redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_mem(DUALMEM,817)
    assign redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_mem_ia = $unsigned(in_c0_eni76_64_tpl);
    assign redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_mem_aa = redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_wraddr_q;
    assign redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_mem_ab = redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_rdcnt_q;
    assign redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_mem_dmem (
        .clocken1(redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_mem_aa),
        .data_a(redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_mem_ab),
        .q_b(redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_mem_iq),
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
    assign redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_mem_q = redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_mem_iq[31:0];

    // redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_notEnable(LOGICAL,453)
    assign redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_nor(LOGICAL,454)
    assign redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_nor_q = ~ (redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_notEnable_q | redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_sticky_ena_q);

    // redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_mem_last(CONSTANT,450)
    assign redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_cmp(LOGICAL,451)
    assign redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_cmp_b = {1'b0, redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_rdcnt_q};
    assign redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_cmp_q = $unsigned(redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_mem_last_q == redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_cmpReg(REG,452)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_cmpReg_q <= $unsigned(redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_cmp_q);
        end
    end

    // redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_sticky_ena(REG,455)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_nor_q == 1'b1)
        begin
            redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_sticky_ena_q <= $unsigned(redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_cmpReg_q);
        end
    end

    // redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_enaAnd(LOGICAL,456)
    assign redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_enaAnd_q = redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_sticky_ena_q & VCC_q;

    // redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_rdcnt(COUNTER,448)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_rdcnt_i <= $unsigned(redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_rdcnt_q = redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_rdcnt_i[1:0];

    // redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_wraddr(REG,449)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_wraddr_q <= $unsigned(redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_rdcnt_q);
        end
    end

    // redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_mem(DUALMEM,447)
    assign redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_mem_ia = $unsigned(in_c0_eni76_18_tpl);
    assign redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_mem_aa = redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_wraddr_q;
    assign redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_mem_ab = redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_rdcnt_q;
    assign redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_mem_dmem (
        .clocken1(redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_mem_aa),
        .data_a(redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_mem_ab),
        .q_b(redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_mem_iq),
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
    assign redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_mem_q = redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_mem_iq[31:0];

    // redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_notEnable(LOGICAL,463)
    assign redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_nor(LOGICAL,464)
    assign redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_nor_q = ~ (redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_notEnable_q | redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_sticky_ena_q);

    // redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_mem_last(CONSTANT,460)
    assign redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_cmp(LOGICAL,461)
    assign redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_cmp_b = {1'b0, redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_rdcnt_q};
    assign redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_cmp_q = $unsigned(redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_mem_last_q == redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_cmpReg(REG,462)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_cmpReg_q <= $unsigned(redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_cmp_q);
        end
    end

    // redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_sticky_ena(REG,465)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_nor_q == 1'b1)
        begin
            redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_sticky_ena_q <= $unsigned(redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_cmpReg_q);
        end
    end

    // redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_enaAnd(LOGICAL,466)
    assign redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_enaAnd_q = redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_sticky_ena_q & VCC_q;

    // redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_rdcnt(COUNTER,458)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_rdcnt_i <= $unsigned(redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_rdcnt_q = redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_rdcnt_i[1:0];

    // redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_wraddr(REG,459)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_wraddr_q <= $unsigned(redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_rdcnt_q);
        end
    end

    // redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_mem(DUALMEM,457)
    assign redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_mem_ia = $unsigned(in_c0_eni76_19_tpl);
    assign redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_mem_aa = redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_wraddr_q;
    assign redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_mem_ab = redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_rdcnt_q;
    assign redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_mem_dmem (
        .clocken1(redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_mem_aa),
        .data_a(redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_mem_ab),
        .q_b(redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_mem_iq),
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
    assign redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_mem_q = redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_mem_iq[31:0];

    // redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_notEnable(LOGICAL,473)
    assign redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_nor(LOGICAL,474)
    assign redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_nor_q = ~ (redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_notEnable_q | redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_sticky_ena_q);

    // redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_mem_last(CONSTANT,470)
    assign redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_cmp(LOGICAL,471)
    assign redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_cmp_b = {1'b0, redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_rdcnt_q};
    assign redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_cmp_q = $unsigned(redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_mem_last_q == redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_cmpReg(REG,472)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_cmpReg_q <= $unsigned(redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_cmp_q);
        end
    end

    // redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_sticky_ena(REG,475)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_nor_q == 1'b1)
        begin
            redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_sticky_ena_q <= $unsigned(redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_cmpReg_q);
        end
    end

    // redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_enaAnd(LOGICAL,476)
    assign redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_enaAnd_q = redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_sticky_ena_q & VCC_q;

    // redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_rdcnt(COUNTER,468)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_rdcnt_i <= $unsigned(redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_rdcnt_q = redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_rdcnt_i[1:0];

    // redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_wraddr(REG,469)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_wraddr_q <= $unsigned(redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_rdcnt_q);
        end
    end

    // redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_mem(DUALMEM,467)
    assign redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_mem_ia = $unsigned(in_c0_eni76_20_tpl);
    assign redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_mem_aa = redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_wraddr_q;
    assign redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_mem_ab = redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_rdcnt_q;
    assign redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_mem_dmem (
        .clocken1(redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_mem_aa),
        .data_a(redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_mem_ab),
        .q_b(redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_mem_iq),
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
    assign redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_mem_q = redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_mem_iq[31:0];

    // redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_notEnable(LOGICAL,813)
    assign redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_nor(LOGICAL,814)
    assign redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_nor_q = ~ (redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_notEnable_q | redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_sticky_ena_q);

    // redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_mem_last(CONSTANT,810)
    assign redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_cmp(LOGICAL,811)
    assign redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_cmp_b = {1'b0, redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_rdcnt_q};
    assign redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_cmp_q = $unsigned(redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_mem_last_q == redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_cmpReg(REG,812)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_cmpReg_q <= $unsigned(redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_cmp_q);
        end
    end

    // redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_sticky_ena(REG,815)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_nor_q == 1'b1)
        begin
            redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_sticky_ena_q <= $unsigned(redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_cmpReg_q);
        end
    end

    // redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_enaAnd(LOGICAL,816)
    assign redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_enaAnd_q = redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_sticky_ena_q & VCC_q;

    // redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_rdcnt(COUNTER,808)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_rdcnt_i <= $unsigned(redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_rdcnt_q = redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_rdcnt_i[1:0];

    // redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_wraddr(REG,809)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_wraddr_q <= $unsigned(redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_rdcnt_q);
        end
    end

    // redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_mem(DUALMEM,807)
    assign redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_mem_ia = $unsigned(in_c0_eni76_63_tpl);
    assign redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_mem_aa = redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_wraddr_q;
    assign redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_mem_ab = redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_rdcnt_q;
    assign redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_mem_dmem (
        .clocken1(redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_mem_aa),
        .data_a(redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_mem_ab),
        .q_b(redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_mem_iq),
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
    assign redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_mem_q = redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_mem_iq[31:0];

    // redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_notEnable(LOGICAL,803)
    assign redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_nor(LOGICAL,804)
    assign redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_nor_q = ~ (redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_notEnable_q | redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_sticky_ena_q);

    // redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_mem_last(CONSTANT,800)
    assign redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_cmp(LOGICAL,801)
    assign redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_cmp_b = {1'b0, redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_rdcnt_q};
    assign redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_cmp_q = $unsigned(redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_mem_last_q == redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_cmpReg(REG,802)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_cmpReg_q <= $unsigned(redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_cmp_q);
        end
    end

    // redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_sticky_ena(REG,805)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_nor_q == 1'b1)
        begin
            redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_sticky_ena_q <= $unsigned(redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_cmpReg_q);
        end
    end

    // redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_enaAnd(LOGICAL,806)
    assign redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_enaAnd_q = redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_sticky_ena_q & VCC_q;

    // redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_rdcnt(COUNTER,798)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_rdcnt_i <= $unsigned(redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_rdcnt_q = redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_rdcnt_i[1:0];

    // redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_wraddr(REG,799)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_wraddr_q <= $unsigned(redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_rdcnt_q);
        end
    end

    // redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_mem(DUALMEM,797)
    assign redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_mem_ia = $unsigned(in_c0_eni76_62_tpl);
    assign redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_mem_aa = redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_wraddr_q;
    assign redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_mem_ab = redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_rdcnt_q;
    assign redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_mem_dmem (
        .clocken1(redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_mem_aa),
        .data_a(redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_mem_ab),
        .q_b(redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_mem_iq),
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
    assign redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_mem_q = redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_mem_iq[31:0];

    // redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_notEnable(LOGICAL,793)
    assign redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_nor(LOGICAL,794)
    assign redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_nor_q = ~ (redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_notEnable_q | redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_sticky_ena_q);

    // redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_mem_last(CONSTANT,790)
    assign redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_cmp(LOGICAL,791)
    assign redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_cmp_b = {1'b0, redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_rdcnt_q};
    assign redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_cmp_q = $unsigned(redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_mem_last_q == redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_cmpReg(REG,792)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_cmpReg_q <= $unsigned(redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_cmp_q);
        end
    end

    // redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_sticky_ena(REG,795)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_nor_q == 1'b1)
        begin
            redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_sticky_ena_q <= $unsigned(redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_cmpReg_q);
        end
    end

    // redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_enaAnd(LOGICAL,796)
    assign redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_enaAnd_q = redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_sticky_ena_q & VCC_q;

    // redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_rdcnt(COUNTER,788)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_rdcnt_i <= $unsigned(redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_rdcnt_q = redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_rdcnt_i[1:0];

    // redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_wraddr(REG,789)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_wraddr_q <= $unsigned(redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_rdcnt_q);
        end
    end

    // redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_mem(DUALMEM,787)
    assign redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_mem_ia = $unsigned(in_c0_eni76_61_tpl);
    assign redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_mem_aa = redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_wraddr_q;
    assign redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_mem_ab = redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_rdcnt_q;
    assign redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_mem_dmem (
        .clocken1(redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_mem_aa),
        .data_a(redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_mem_ab),
        .q_b(redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_mem_iq),
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
    assign redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_mem_q = redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_mem_iq[31:0];

    // redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_notEnable(LOGICAL,783)
    assign redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_nor(LOGICAL,784)
    assign redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_nor_q = ~ (redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_notEnable_q | redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_sticky_ena_q);

    // redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_mem_last(CONSTANT,780)
    assign redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_cmp(LOGICAL,781)
    assign redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_cmp_b = {1'b0, redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_rdcnt_q};
    assign redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_cmp_q = $unsigned(redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_mem_last_q == redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_cmpReg(REG,782)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_cmpReg_q <= $unsigned(redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_cmp_q);
        end
    end

    // redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_sticky_ena(REG,785)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_nor_q == 1'b1)
        begin
            redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_sticky_ena_q <= $unsigned(redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_cmpReg_q);
        end
    end

    // redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_enaAnd(LOGICAL,786)
    assign redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_enaAnd_q = redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_sticky_ena_q & VCC_q;

    // redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_rdcnt(COUNTER,778)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_rdcnt_i <= $unsigned(redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_rdcnt_q = redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_rdcnt_i[1:0];

    // redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_wraddr(REG,779)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_wraddr_q <= $unsigned(redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_rdcnt_q);
        end
    end

    // redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_mem(DUALMEM,777)
    assign redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_mem_ia = $unsigned(in_c0_eni76_60_tpl);
    assign redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_mem_aa = redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_wraddr_q;
    assign redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_mem_ab = redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_rdcnt_q;
    assign redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_mem_dmem (
        .clocken1(redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_mem_aa),
        .data_a(redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_mem_ab),
        .q_b(redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_mem_iq),
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
    assign redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_mem_q = redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_mem_iq[31:0];

    // redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_notEnable(LOGICAL,773)
    assign redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_nor(LOGICAL,774)
    assign redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_nor_q = ~ (redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_notEnable_q | redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_sticky_ena_q);

    // redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_mem_last(CONSTANT,770)
    assign redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_cmp(LOGICAL,771)
    assign redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_cmp_b = {1'b0, redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_rdcnt_q};
    assign redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_cmp_q = $unsigned(redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_mem_last_q == redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_cmpReg(REG,772)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_cmpReg_q <= $unsigned(redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_cmp_q);
        end
    end

    // redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_sticky_ena(REG,775)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_nor_q == 1'b1)
        begin
            redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_sticky_ena_q <= $unsigned(redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_cmpReg_q);
        end
    end

    // redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_enaAnd(LOGICAL,776)
    assign redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_enaAnd_q = redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_sticky_ena_q & VCC_q;

    // redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_rdcnt(COUNTER,768)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_rdcnt_i <= $unsigned(redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_rdcnt_q = redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_rdcnt_i[1:0];

    // redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_wraddr(REG,769)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_wraddr_q <= $unsigned(redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_rdcnt_q);
        end
    end

    // redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_mem(DUALMEM,767)
    assign redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_mem_ia = $unsigned(in_c0_eni76_59_tpl);
    assign redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_mem_aa = redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_wraddr_q;
    assign redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_mem_ab = redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_rdcnt_q;
    assign redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_mem_dmem (
        .clocken1(redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_mem_aa),
        .data_a(redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_mem_ab),
        .q_b(redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_mem_iq),
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
    assign redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_mem_q = redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_mem_iq[31:0];

    // redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_notEnable(LOGICAL,763)
    assign redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_nor(LOGICAL,764)
    assign redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_nor_q = ~ (redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_notEnable_q | redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_sticky_ena_q);

    // redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_mem_last(CONSTANT,760)
    assign redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_cmp(LOGICAL,761)
    assign redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_cmp_b = {1'b0, redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_rdcnt_q};
    assign redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_cmp_q = $unsigned(redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_mem_last_q == redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_cmpReg(REG,762)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_cmpReg_q <= $unsigned(redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_cmp_q);
        end
    end

    // redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_sticky_ena(REG,765)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_nor_q == 1'b1)
        begin
            redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_sticky_ena_q <= $unsigned(redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_cmpReg_q);
        end
    end

    // redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_enaAnd(LOGICAL,766)
    assign redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_enaAnd_q = redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_sticky_ena_q & VCC_q;

    // redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_rdcnt(COUNTER,758)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_rdcnt_i <= $unsigned(redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_rdcnt_q = redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_rdcnt_i[1:0];

    // redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_wraddr(REG,759)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_wraddr_q <= $unsigned(redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_rdcnt_q);
        end
    end

    // redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_mem(DUALMEM,757)
    assign redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_mem_ia = $unsigned(in_c0_eni76_58_tpl);
    assign redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_mem_aa = redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_wraddr_q;
    assign redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_mem_ab = redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_rdcnt_q;
    assign redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_mem_dmem (
        .clocken1(redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_mem_aa),
        .data_a(redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_mem_ab),
        .q_b(redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_mem_iq),
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
    assign redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_mem_q = redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_mem_iq[31:0];

    // redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_notEnable(LOGICAL,753)
    assign redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_nor(LOGICAL,754)
    assign redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_nor_q = ~ (redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_notEnable_q | redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_sticky_ena_q);

    // redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_mem_last(CONSTANT,750)
    assign redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_cmp(LOGICAL,751)
    assign redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_cmp_b = {1'b0, redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_rdcnt_q};
    assign redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_cmp_q = $unsigned(redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_mem_last_q == redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_cmpReg(REG,752)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_cmpReg_q <= $unsigned(redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_cmp_q);
        end
    end

    // redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_sticky_ena(REG,755)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_nor_q == 1'b1)
        begin
            redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_sticky_ena_q <= $unsigned(redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_cmpReg_q);
        end
    end

    // redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_enaAnd(LOGICAL,756)
    assign redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_enaAnd_q = redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_sticky_ena_q & VCC_q;

    // redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_rdcnt(COUNTER,748)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_rdcnt_i <= $unsigned(redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_rdcnt_q = redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_rdcnt_i[1:0];

    // redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_wraddr(REG,749)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_wraddr_q <= $unsigned(redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_rdcnt_q);
        end
    end

    // redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_mem(DUALMEM,747)
    assign redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_mem_ia = $unsigned(in_c0_eni76_57_tpl);
    assign redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_mem_aa = redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_wraddr_q;
    assign redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_mem_ab = redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_rdcnt_q;
    assign redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_mem_dmem (
        .clocken1(redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_mem_aa),
        .data_a(redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_mem_ab),
        .q_b(redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_mem_iq),
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
    assign redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_mem_q = redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_mem_iq[31:0];

    // redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_notEnable(LOGICAL,743)
    assign redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_nor(LOGICAL,744)
    assign redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_nor_q = ~ (redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_notEnable_q | redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_sticky_ena_q);

    // redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_mem_last(CONSTANT,740)
    assign redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_cmp(LOGICAL,741)
    assign redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_cmp_b = {1'b0, redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_rdcnt_q};
    assign redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_cmp_q = $unsigned(redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_mem_last_q == redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_cmpReg(REG,742)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_cmpReg_q <= $unsigned(redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_cmp_q);
        end
    end

    // redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_sticky_ena(REG,745)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_nor_q == 1'b1)
        begin
            redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_sticky_ena_q <= $unsigned(redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_cmpReg_q);
        end
    end

    // redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_enaAnd(LOGICAL,746)
    assign redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_enaAnd_q = redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_sticky_ena_q & VCC_q;

    // redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_rdcnt(COUNTER,738)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_rdcnt_i <= $unsigned(redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_rdcnt_q = redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_rdcnt_i[1:0];

    // redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_wraddr(REG,739)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_wraddr_q <= $unsigned(redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_rdcnt_q);
        end
    end

    // redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_mem(DUALMEM,737)
    assign redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_mem_ia = $unsigned(in_c0_eni76_56_tpl);
    assign redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_mem_aa = redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_wraddr_q;
    assign redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_mem_ab = redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_rdcnt_q;
    assign redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_mem_dmem (
        .clocken1(redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_mem_aa),
        .data_a(redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_mem_ab),
        .q_b(redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_mem_iq),
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
    assign redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_mem_q = redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_mem_iq[31:0];

    // redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_notEnable(LOGICAL,733)
    assign redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_nor(LOGICAL,734)
    assign redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_nor_q = ~ (redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_notEnable_q | redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_sticky_ena_q);

    // redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_mem_last(CONSTANT,730)
    assign redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_cmp(LOGICAL,731)
    assign redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_cmp_b = {1'b0, redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_rdcnt_q};
    assign redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_cmp_q = $unsigned(redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_mem_last_q == redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_cmpReg(REG,732)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_cmpReg_q <= $unsigned(redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_cmp_q);
        end
    end

    // redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_sticky_ena(REG,735)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_nor_q == 1'b1)
        begin
            redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_sticky_ena_q <= $unsigned(redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_cmpReg_q);
        end
    end

    // redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_enaAnd(LOGICAL,736)
    assign redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_enaAnd_q = redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_sticky_ena_q & VCC_q;

    // redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_rdcnt(COUNTER,728)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_rdcnt_i <= $unsigned(redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_rdcnt_q = redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_rdcnt_i[1:0];

    // redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_wraddr(REG,729)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_wraddr_q <= $unsigned(redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_rdcnt_q);
        end
    end

    // redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_mem(DUALMEM,727)
    assign redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_mem_ia = $unsigned(in_c0_eni76_55_tpl);
    assign redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_mem_aa = redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_wraddr_q;
    assign redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_mem_ab = redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_rdcnt_q;
    assign redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_mem_dmem (
        .clocken1(redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_mem_aa),
        .data_a(redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_mem_ab),
        .q_b(redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_mem_iq),
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
    assign redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_mem_q = redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_mem_iq[31:0];

    // redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_notEnable(LOGICAL,723)
    assign redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_nor(LOGICAL,724)
    assign redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_nor_q = ~ (redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_notEnable_q | redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_sticky_ena_q);

    // redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_mem_last(CONSTANT,720)
    assign redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_cmp(LOGICAL,721)
    assign redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_cmp_b = {1'b0, redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_rdcnt_q};
    assign redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_cmp_q = $unsigned(redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_mem_last_q == redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_cmpReg(REG,722)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_cmpReg_q <= $unsigned(redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_cmp_q);
        end
    end

    // redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_sticky_ena(REG,725)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_nor_q == 1'b1)
        begin
            redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_sticky_ena_q <= $unsigned(redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_cmpReg_q);
        end
    end

    // redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_enaAnd(LOGICAL,726)
    assign redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_enaAnd_q = redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_sticky_ena_q & VCC_q;

    // redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_rdcnt(COUNTER,718)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_rdcnt_i <= $unsigned(redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_rdcnt_q = redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_rdcnt_i[1:0];

    // redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_wraddr(REG,719)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_wraddr_q <= $unsigned(redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_rdcnt_q);
        end
    end

    // redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_mem(DUALMEM,717)
    assign redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_mem_ia = $unsigned(in_c0_eni76_54_tpl);
    assign redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_mem_aa = redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_wraddr_q;
    assign redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_mem_ab = redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_rdcnt_q;
    assign redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_mem_dmem (
        .clocken1(redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_mem_aa),
        .data_a(redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_mem_ab),
        .q_b(redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_mem_iq),
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
    assign redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_mem_q = redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_mem_iq[31:0];

    // redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_notEnable(LOGICAL,713)
    assign redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_nor(LOGICAL,714)
    assign redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_nor_q = ~ (redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_notEnable_q | redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_sticky_ena_q);

    // redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_mem_last(CONSTANT,710)
    assign redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_cmp(LOGICAL,711)
    assign redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_cmp_b = {1'b0, redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_rdcnt_q};
    assign redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_cmp_q = $unsigned(redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_mem_last_q == redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_cmpReg(REG,712)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_cmpReg_q <= $unsigned(redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_cmp_q);
        end
    end

    // redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_sticky_ena(REG,715)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_nor_q == 1'b1)
        begin
            redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_sticky_ena_q <= $unsigned(redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_cmpReg_q);
        end
    end

    // redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_enaAnd(LOGICAL,716)
    assign redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_enaAnd_q = redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_sticky_ena_q & VCC_q;

    // redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_rdcnt(COUNTER,708)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_rdcnt_i <= $unsigned(redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_rdcnt_q = redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_rdcnt_i[1:0];

    // redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_wraddr(REG,709)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_wraddr_q <= $unsigned(redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_rdcnt_q);
        end
    end

    // redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_mem(DUALMEM,707)
    assign redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_mem_ia = $unsigned(in_c0_eni76_53_tpl);
    assign redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_mem_aa = redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_wraddr_q;
    assign redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_mem_ab = redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_rdcnt_q;
    assign redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_mem_dmem (
        .clocken1(redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_mem_aa),
        .data_a(redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_mem_ab),
        .q_b(redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_mem_iq),
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
    assign redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_mem_q = redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_mem_iq[31:0];

    // redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_notEnable(LOGICAL,703)
    assign redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_nor(LOGICAL,704)
    assign redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_nor_q = ~ (redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_notEnable_q | redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_sticky_ena_q);

    // redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_mem_last(CONSTANT,700)
    assign redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_cmp(LOGICAL,701)
    assign redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_cmp_b = {1'b0, redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_rdcnt_q};
    assign redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_cmp_q = $unsigned(redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_mem_last_q == redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_cmpReg(REG,702)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_cmpReg_q <= $unsigned(redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_cmp_q);
        end
    end

    // redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_sticky_ena(REG,705)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_nor_q == 1'b1)
        begin
            redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_sticky_ena_q <= $unsigned(redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_cmpReg_q);
        end
    end

    // redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_enaAnd(LOGICAL,706)
    assign redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_enaAnd_q = redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_sticky_ena_q & VCC_q;

    // redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_rdcnt(COUNTER,698)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_rdcnt_i <= $unsigned(redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_rdcnt_q = redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_rdcnt_i[1:0];

    // redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_wraddr(REG,699)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_wraddr_q <= $unsigned(redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_rdcnt_q);
        end
    end

    // redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_mem(DUALMEM,697)
    assign redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_mem_ia = $unsigned(in_c0_eni76_52_tpl);
    assign redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_mem_aa = redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_wraddr_q;
    assign redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_mem_ab = redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_rdcnt_q;
    assign redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_mem_dmem (
        .clocken1(redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_mem_aa),
        .data_a(redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_mem_ab),
        .q_b(redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_mem_iq),
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
    assign redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_mem_q = redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_mem_iq[31:0];

    // redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_notEnable(LOGICAL,693)
    assign redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_nor(LOGICAL,694)
    assign redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_nor_q = ~ (redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_notEnable_q | redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_sticky_ena_q);

    // redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_mem_last(CONSTANT,690)
    assign redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_cmp(LOGICAL,691)
    assign redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_cmp_b = {1'b0, redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_rdcnt_q};
    assign redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_cmp_q = $unsigned(redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_mem_last_q == redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_cmpReg(REG,692)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_cmpReg_q <= $unsigned(redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_cmp_q);
        end
    end

    // redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_sticky_ena(REG,695)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_nor_q == 1'b1)
        begin
            redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_sticky_ena_q <= $unsigned(redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_cmpReg_q);
        end
    end

    // redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_enaAnd(LOGICAL,696)
    assign redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_enaAnd_q = redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_sticky_ena_q & VCC_q;

    // redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_rdcnt(COUNTER,688)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_rdcnt_i <= $unsigned(redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_rdcnt_q = redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_rdcnt_i[1:0];

    // redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_wraddr(REG,689)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_wraddr_q <= $unsigned(redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_rdcnt_q);
        end
    end

    // redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_mem(DUALMEM,687)
    assign redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_mem_ia = $unsigned(in_c0_eni76_51_tpl);
    assign redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_mem_aa = redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_wraddr_q;
    assign redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_mem_ab = redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_rdcnt_q;
    assign redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_mem_dmem (
        .clocken1(redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_mem_aa),
        .data_a(redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_mem_ab),
        .q_b(redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_mem_iq),
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
    assign redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_mem_q = redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_mem_iq[31:0];

    // redist50_sync_together220_aunroll_x_in_c0_eni76_50_tpl_5(DELAY,388)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_sync_together220_aunroll_x_in_c0_eni76_50_tpl_5_delay_0 <= '0;
            redist50_sync_together220_aunroll_x_in_c0_eni76_50_tpl_5_delay_1 <= '0;
            redist50_sync_together220_aunroll_x_in_c0_eni76_50_tpl_5_delay_2 <= '0;
            redist50_sync_together220_aunroll_x_in_c0_eni76_50_tpl_5_delay_3 <= '0;
            redist50_sync_together220_aunroll_x_in_c0_eni76_50_tpl_5_q <= '0;
        end
        else
        begin
            redist50_sync_together220_aunroll_x_in_c0_eni76_50_tpl_5_delay_0 <= $unsigned(in_c0_eni76_50_tpl);
            redist50_sync_together220_aunroll_x_in_c0_eni76_50_tpl_5_delay_1 <= redist50_sync_together220_aunroll_x_in_c0_eni76_50_tpl_5_delay_0;
            redist50_sync_together220_aunroll_x_in_c0_eni76_50_tpl_5_delay_2 <= redist50_sync_together220_aunroll_x_in_c0_eni76_50_tpl_5_delay_1;
            redist50_sync_together220_aunroll_x_in_c0_eni76_50_tpl_5_delay_3 <= redist50_sync_together220_aunroll_x_in_c0_eni76_50_tpl_5_delay_2;
            redist50_sync_together220_aunroll_x_in_c0_eni76_50_tpl_5_q <= redist50_sync_together220_aunroll_x_in_c0_eni76_50_tpl_5_delay_3;
        end
    end

    // redist49_sync_together220_aunroll_x_in_c0_eni76_49_tpl_5(DELAY,387)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_sync_together220_aunroll_x_in_c0_eni76_49_tpl_5_delay_0 <= '0;
            redist49_sync_together220_aunroll_x_in_c0_eni76_49_tpl_5_delay_1 <= '0;
            redist49_sync_together220_aunroll_x_in_c0_eni76_49_tpl_5_delay_2 <= '0;
            redist49_sync_together220_aunroll_x_in_c0_eni76_49_tpl_5_delay_3 <= '0;
            redist49_sync_together220_aunroll_x_in_c0_eni76_49_tpl_5_q <= '0;
        end
        else
        begin
            redist49_sync_together220_aunroll_x_in_c0_eni76_49_tpl_5_delay_0 <= $unsigned(in_c0_eni76_49_tpl);
            redist49_sync_together220_aunroll_x_in_c0_eni76_49_tpl_5_delay_1 <= redist49_sync_together220_aunroll_x_in_c0_eni76_49_tpl_5_delay_0;
            redist49_sync_together220_aunroll_x_in_c0_eni76_49_tpl_5_delay_2 <= redist49_sync_together220_aunroll_x_in_c0_eni76_49_tpl_5_delay_1;
            redist49_sync_together220_aunroll_x_in_c0_eni76_49_tpl_5_delay_3 <= redist49_sync_together220_aunroll_x_in_c0_eni76_49_tpl_5_delay_2;
            redist49_sync_together220_aunroll_x_in_c0_eni76_49_tpl_5_q <= redist49_sync_together220_aunroll_x_in_c0_eni76_49_tpl_5_delay_3;
        end
    end

    // redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_notEnable(LOGICAL,683)
    assign redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_nor(LOGICAL,684)
    assign redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_nor_q = ~ (redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_notEnable_q | redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_sticky_ena_q);

    // redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_mem_last(CONSTANT,680)
    assign redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_cmp(LOGICAL,681)
    assign redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_cmp_b = {1'b0, redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_rdcnt_q};
    assign redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_cmp_q = $unsigned(redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_mem_last_q == redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_cmpReg(REG,682)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_cmpReg_q <= $unsigned(redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_cmp_q);
        end
    end

    // redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_sticky_ena(REG,685)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_nor_q == 1'b1)
        begin
            redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_sticky_ena_q <= $unsigned(redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_cmpReg_q);
        end
    end

    // redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_enaAnd(LOGICAL,686)
    assign redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_enaAnd_q = redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_sticky_ena_q & VCC_q;

    // redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_rdcnt(COUNTER,678)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_rdcnt_i <= $unsigned(redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_rdcnt_q = redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_rdcnt_i[1:0];

    // redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_wraddr(REG,679)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_wraddr_q <= $unsigned(redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_rdcnt_q);
        end
    end

    // redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_mem(DUALMEM,677)
    assign redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_mem_ia = $unsigned(in_c0_eni76_48_tpl);
    assign redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_mem_aa = redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_wraddr_q;
    assign redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_mem_ab = redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_rdcnt_q;
    assign redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_mem_dmem (
        .clocken1(redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_mem_aa),
        .data_a(redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_mem_ab),
        .q_b(redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_mem_iq),
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
    assign redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_mem_q = redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_mem_iq[31:0];

    // redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_notEnable(LOGICAL,673)
    assign redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_nor(LOGICAL,674)
    assign redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_nor_q = ~ (redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_notEnable_q | redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_sticky_ena_q);

    // redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_mem_last(CONSTANT,670)
    assign redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_cmp(LOGICAL,671)
    assign redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_cmp_b = {1'b0, redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_rdcnt_q};
    assign redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_cmp_q = $unsigned(redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_mem_last_q == redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_cmpReg(REG,672)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_cmpReg_q <= $unsigned(redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_cmp_q);
        end
    end

    // redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_sticky_ena(REG,675)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_nor_q == 1'b1)
        begin
            redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_sticky_ena_q <= $unsigned(redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_cmpReg_q);
        end
    end

    // redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_enaAnd(LOGICAL,676)
    assign redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_enaAnd_q = redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_sticky_ena_q & VCC_q;

    // redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_rdcnt(COUNTER,668)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_rdcnt_i <= $unsigned(redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_rdcnt_q = redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_rdcnt_i[1:0];

    // redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_wraddr(REG,669)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_wraddr_q <= $unsigned(redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_rdcnt_q);
        end
    end

    // redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_mem(DUALMEM,667)
    assign redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_mem_ia = $unsigned(in_c0_eni76_47_tpl);
    assign redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_mem_aa = redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_wraddr_q;
    assign redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_mem_ab = redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_rdcnt_q;
    assign redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_mem_dmem (
        .clocken1(redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_mem_aa),
        .data_a(redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_mem_ab),
        .q_b(redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_mem_iq),
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
    assign redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_mem_q = redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_mem_iq[31:0];

    // redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_notEnable(LOGICAL,663)
    assign redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_nor(LOGICAL,664)
    assign redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_nor_q = ~ (redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_notEnable_q | redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_sticky_ena_q);

    // redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_mem_last(CONSTANT,660)
    assign redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_cmp(LOGICAL,661)
    assign redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_cmp_b = {1'b0, redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_rdcnt_q};
    assign redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_cmp_q = $unsigned(redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_mem_last_q == redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_cmpReg(REG,662)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_cmpReg_q <= $unsigned(redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_cmp_q);
        end
    end

    // redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_sticky_ena(REG,665)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_nor_q == 1'b1)
        begin
            redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_sticky_ena_q <= $unsigned(redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_cmpReg_q);
        end
    end

    // redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_enaAnd(LOGICAL,666)
    assign redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_enaAnd_q = redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_sticky_ena_q & VCC_q;

    // redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_rdcnt(COUNTER,658)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_rdcnt_i <= $unsigned(redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_rdcnt_q = redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_rdcnt_i[1:0];

    // redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_wraddr(REG,659)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_wraddr_q <= $unsigned(redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_rdcnt_q);
        end
    end

    // redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_mem(DUALMEM,657)
    assign redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_mem_ia = $unsigned(in_c0_eni76_46_tpl);
    assign redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_mem_aa = redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_wraddr_q;
    assign redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_mem_ab = redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_rdcnt_q;
    assign redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_mem_dmem (
        .clocken1(redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_mem_aa),
        .data_a(redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_mem_ab),
        .q_b(redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_mem_iq),
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
    assign redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_mem_q = redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_mem_iq[31:0];

    // redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_notEnable(LOGICAL,653)
    assign redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_nor(LOGICAL,654)
    assign redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_nor_q = ~ (redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_notEnable_q | redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_sticky_ena_q);

    // redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_mem_last(CONSTANT,650)
    assign redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_cmp(LOGICAL,651)
    assign redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_cmp_b = {1'b0, redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_rdcnt_q};
    assign redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_cmp_q = $unsigned(redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_mem_last_q == redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_cmpReg(REG,652)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_cmpReg_q <= $unsigned(redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_cmp_q);
        end
    end

    // redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_sticky_ena(REG,655)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_nor_q == 1'b1)
        begin
            redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_sticky_ena_q <= $unsigned(redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_cmpReg_q);
        end
    end

    // redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_enaAnd(LOGICAL,656)
    assign redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_enaAnd_q = redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_sticky_ena_q & VCC_q;

    // redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_rdcnt(COUNTER,648)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_rdcnt_i <= $unsigned(redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_rdcnt_q = redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_rdcnt_i[1:0];

    // redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_wraddr(REG,649)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_wraddr_q <= $unsigned(redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_rdcnt_q);
        end
    end

    // redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_mem(DUALMEM,647)
    assign redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_mem_ia = $unsigned(in_c0_eni76_45_tpl);
    assign redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_mem_aa = redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_wraddr_q;
    assign redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_mem_ab = redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_rdcnt_q;
    assign redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_mem_dmem (
        .clocken1(redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_mem_aa),
        .data_a(redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_mem_ab),
        .q_b(redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_mem_iq),
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
    assign redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_mem_q = redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_mem_iq[32:0];

    // redist44_sync_together220_aunroll_x_in_c0_eni76_44_tpl_5(DELAY,382)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together220_aunroll_x_in_c0_eni76_44_tpl_5_delay_0 <= '0;
            redist44_sync_together220_aunroll_x_in_c0_eni76_44_tpl_5_delay_1 <= '0;
            redist44_sync_together220_aunroll_x_in_c0_eni76_44_tpl_5_delay_2 <= '0;
            redist44_sync_together220_aunroll_x_in_c0_eni76_44_tpl_5_delay_3 <= '0;
            redist44_sync_together220_aunroll_x_in_c0_eni76_44_tpl_5_q <= '0;
        end
        else
        begin
            redist44_sync_together220_aunroll_x_in_c0_eni76_44_tpl_5_delay_0 <= $unsigned(in_c0_eni76_44_tpl);
            redist44_sync_together220_aunroll_x_in_c0_eni76_44_tpl_5_delay_1 <= redist44_sync_together220_aunroll_x_in_c0_eni76_44_tpl_5_delay_0;
            redist44_sync_together220_aunroll_x_in_c0_eni76_44_tpl_5_delay_2 <= redist44_sync_together220_aunroll_x_in_c0_eni76_44_tpl_5_delay_1;
            redist44_sync_together220_aunroll_x_in_c0_eni76_44_tpl_5_delay_3 <= redist44_sync_together220_aunroll_x_in_c0_eni76_44_tpl_5_delay_2;
            redist44_sync_together220_aunroll_x_in_c0_eni76_44_tpl_5_q <= redist44_sync_together220_aunroll_x_in_c0_eni76_44_tpl_5_delay_3;
        end
    end

    // redist43_sync_together220_aunroll_x_in_c0_eni76_43_tpl_5(DELAY,381)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together220_aunroll_x_in_c0_eni76_43_tpl_5_delay_0 <= '0;
            redist43_sync_together220_aunroll_x_in_c0_eni76_43_tpl_5_delay_1 <= '0;
            redist43_sync_together220_aunroll_x_in_c0_eni76_43_tpl_5_delay_2 <= '0;
            redist43_sync_together220_aunroll_x_in_c0_eni76_43_tpl_5_delay_3 <= '0;
            redist43_sync_together220_aunroll_x_in_c0_eni76_43_tpl_5_q <= '0;
        end
        else
        begin
            redist43_sync_together220_aunroll_x_in_c0_eni76_43_tpl_5_delay_0 <= $unsigned(in_c0_eni76_43_tpl);
            redist43_sync_together220_aunroll_x_in_c0_eni76_43_tpl_5_delay_1 <= redist43_sync_together220_aunroll_x_in_c0_eni76_43_tpl_5_delay_0;
            redist43_sync_together220_aunroll_x_in_c0_eni76_43_tpl_5_delay_2 <= redist43_sync_together220_aunroll_x_in_c0_eni76_43_tpl_5_delay_1;
            redist43_sync_together220_aunroll_x_in_c0_eni76_43_tpl_5_delay_3 <= redist43_sync_together220_aunroll_x_in_c0_eni76_43_tpl_5_delay_2;
            redist43_sync_together220_aunroll_x_in_c0_eni76_43_tpl_5_q <= redist43_sync_together220_aunroll_x_in_c0_eni76_43_tpl_5_delay_3;
        end
    end

    // redist42_sync_together220_aunroll_x_in_c0_eni76_42_tpl_5(DELAY,380)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together220_aunroll_x_in_c0_eni76_42_tpl_5_delay_0 <= '0;
            redist42_sync_together220_aunroll_x_in_c0_eni76_42_tpl_5_delay_1 <= '0;
            redist42_sync_together220_aunroll_x_in_c0_eni76_42_tpl_5_delay_2 <= '0;
            redist42_sync_together220_aunroll_x_in_c0_eni76_42_tpl_5_delay_3 <= '0;
            redist42_sync_together220_aunroll_x_in_c0_eni76_42_tpl_5_q <= '0;
        end
        else
        begin
            redist42_sync_together220_aunroll_x_in_c0_eni76_42_tpl_5_delay_0 <= $unsigned(in_c0_eni76_42_tpl);
            redist42_sync_together220_aunroll_x_in_c0_eni76_42_tpl_5_delay_1 <= redist42_sync_together220_aunroll_x_in_c0_eni76_42_tpl_5_delay_0;
            redist42_sync_together220_aunroll_x_in_c0_eni76_42_tpl_5_delay_2 <= redist42_sync_together220_aunroll_x_in_c0_eni76_42_tpl_5_delay_1;
            redist42_sync_together220_aunroll_x_in_c0_eni76_42_tpl_5_delay_3 <= redist42_sync_together220_aunroll_x_in_c0_eni76_42_tpl_5_delay_2;
            redist42_sync_together220_aunroll_x_in_c0_eni76_42_tpl_5_q <= redist42_sync_together220_aunroll_x_in_c0_eni76_42_tpl_5_delay_3;
        end
    end

    // redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_notEnable(LOGICAL,643)
    assign redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_nor(LOGICAL,644)
    assign redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_nor_q = ~ (redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_notEnable_q | redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_sticky_ena_q);

    // redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_mem_last(CONSTANT,640)
    assign redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_cmp(LOGICAL,641)
    assign redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_cmp_b = {1'b0, redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_rdcnt_q};
    assign redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_cmp_q = $unsigned(redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_mem_last_q == redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_cmpReg(REG,642)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_cmpReg_q <= $unsigned(redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_cmp_q);
        end
    end

    // redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_sticky_ena(REG,645)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_nor_q == 1'b1)
        begin
            redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_sticky_ena_q <= $unsigned(redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_cmpReg_q);
        end
    end

    // redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_enaAnd(LOGICAL,646)
    assign redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_enaAnd_q = redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_sticky_ena_q & VCC_q;

    // redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_rdcnt(COUNTER,638)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_rdcnt_i <= $unsigned(redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_rdcnt_q = redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_rdcnt_i[1:0];

    // redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_wraddr(REG,639)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_wraddr_q <= $unsigned(redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_rdcnt_q);
        end
    end

    // redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_mem(DUALMEM,637)
    assign redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_mem_ia = $unsigned(in_c0_eni76_41_tpl);
    assign redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_mem_aa = redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_wraddr_q;
    assign redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_mem_ab = redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_rdcnt_q;
    assign redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_mem_dmem (
        .clocken1(redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_mem_aa),
        .data_a(redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_mem_ab),
        .q_b(redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_mem_iq),
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
    assign redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_mem_q = redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_mem_iq[31:0];

    // redist40_sync_together220_aunroll_x_in_c0_eni76_40_tpl_5(DELAY,378)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together220_aunroll_x_in_c0_eni76_40_tpl_5_delay_0 <= '0;
            redist40_sync_together220_aunroll_x_in_c0_eni76_40_tpl_5_delay_1 <= '0;
            redist40_sync_together220_aunroll_x_in_c0_eni76_40_tpl_5_delay_2 <= '0;
            redist40_sync_together220_aunroll_x_in_c0_eni76_40_tpl_5_delay_3 <= '0;
            redist40_sync_together220_aunroll_x_in_c0_eni76_40_tpl_5_q <= '0;
        end
        else
        begin
            redist40_sync_together220_aunroll_x_in_c0_eni76_40_tpl_5_delay_0 <= $unsigned(in_c0_eni76_40_tpl);
            redist40_sync_together220_aunroll_x_in_c0_eni76_40_tpl_5_delay_1 <= redist40_sync_together220_aunroll_x_in_c0_eni76_40_tpl_5_delay_0;
            redist40_sync_together220_aunroll_x_in_c0_eni76_40_tpl_5_delay_2 <= redist40_sync_together220_aunroll_x_in_c0_eni76_40_tpl_5_delay_1;
            redist40_sync_together220_aunroll_x_in_c0_eni76_40_tpl_5_delay_3 <= redist40_sync_together220_aunroll_x_in_c0_eni76_40_tpl_5_delay_2;
            redist40_sync_together220_aunroll_x_in_c0_eni76_40_tpl_5_q <= redist40_sync_together220_aunroll_x_in_c0_eni76_40_tpl_5_delay_3;
        end
    end

    // redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_notEnable(LOGICAL,633)
    assign redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_nor(LOGICAL,634)
    assign redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_nor_q = ~ (redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_notEnable_q | redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_sticky_ena_q);

    // redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_mem_last(CONSTANT,630)
    assign redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_cmp(LOGICAL,631)
    assign redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_cmp_b = {1'b0, redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_rdcnt_q};
    assign redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_cmp_q = $unsigned(redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_mem_last_q == redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_cmpReg(REG,632)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_cmpReg_q <= $unsigned(redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_cmp_q);
        end
    end

    // redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_sticky_ena(REG,635)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_nor_q == 1'b1)
        begin
            redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_sticky_ena_q <= $unsigned(redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_cmpReg_q);
        end
    end

    // redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_enaAnd(LOGICAL,636)
    assign redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_enaAnd_q = redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_sticky_ena_q & VCC_q;

    // redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_rdcnt(COUNTER,628)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_rdcnt_i <= $unsigned(redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_rdcnt_q = redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_rdcnt_i[1:0];

    // redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_wraddr(REG,629)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_wraddr_q <= $unsigned(redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_rdcnt_q);
        end
    end

    // redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_mem(DUALMEM,627)
    assign redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_mem_ia = $unsigned(in_c0_eni76_39_tpl);
    assign redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_mem_aa = redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_wraddr_q;
    assign redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_mem_ab = redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_rdcnt_q;
    assign redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_mem_dmem (
        .clocken1(redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_mem_aa),
        .data_a(redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_mem_ab),
        .q_b(redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_mem_iq),
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
    assign redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_mem_q = redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_mem_iq[31:0];

    // redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_notEnable(LOGICAL,623)
    assign redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_nor(LOGICAL,624)
    assign redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_nor_q = ~ (redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_notEnable_q | redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_sticky_ena_q);

    // redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_mem_last(CONSTANT,620)
    assign redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_cmp(LOGICAL,621)
    assign redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_cmp_b = {1'b0, redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_rdcnt_q};
    assign redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_cmp_q = $unsigned(redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_mem_last_q == redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_cmpReg(REG,622)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_cmpReg_q <= $unsigned(redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_cmp_q);
        end
    end

    // redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_sticky_ena(REG,625)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_nor_q == 1'b1)
        begin
            redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_sticky_ena_q <= $unsigned(redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_cmpReg_q);
        end
    end

    // redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_enaAnd(LOGICAL,626)
    assign redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_enaAnd_q = redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_sticky_ena_q & VCC_q;

    // redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_rdcnt(COUNTER,618)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_rdcnt_i <= $unsigned(redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_rdcnt_q = redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_rdcnt_i[1:0];

    // redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_wraddr(REG,619)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_wraddr_q <= $unsigned(redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_rdcnt_q);
        end
    end

    // redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_mem(DUALMEM,617)
    assign redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_mem_ia = $unsigned(in_c0_eni76_38_tpl);
    assign redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_mem_aa = redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_wraddr_q;
    assign redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_mem_ab = redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_rdcnt_q;
    assign redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_mem_dmem (
        .clocken1(redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_mem_aa),
        .data_a(redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_mem_ab),
        .q_b(redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_mem_iq),
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
    assign redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_mem_q = redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_mem_iq[31:0];

    // redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_notEnable(LOGICAL,613)
    assign redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_nor(LOGICAL,614)
    assign redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_nor_q = ~ (redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_notEnable_q | redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_sticky_ena_q);

    // redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_mem_last(CONSTANT,610)
    assign redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_cmp(LOGICAL,611)
    assign redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_cmp_b = {1'b0, redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_rdcnt_q};
    assign redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_cmp_q = $unsigned(redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_mem_last_q == redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_cmpReg(REG,612)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_cmpReg_q <= $unsigned(redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_cmp_q);
        end
    end

    // redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_sticky_ena(REG,615)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_nor_q == 1'b1)
        begin
            redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_sticky_ena_q <= $unsigned(redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_cmpReg_q);
        end
    end

    // redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_enaAnd(LOGICAL,616)
    assign redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_enaAnd_q = redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_sticky_ena_q & VCC_q;

    // redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_rdcnt(COUNTER,608)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_rdcnt_i <= $unsigned(redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_rdcnt_q = redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_rdcnt_i[1:0];

    // redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_wraddr(REG,609)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_wraddr_q <= $unsigned(redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_rdcnt_q);
        end
    end

    // redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_mem(DUALMEM,607)
    assign redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_mem_ia = $unsigned(in_c0_eni76_37_tpl);
    assign redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_mem_aa = redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_wraddr_q;
    assign redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_mem_ab = redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_rdcnt_q;
    assign redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_mem_dmem (
        .clocken1(redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_mem_aa),
        .data_a(redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_mem_ab),
        .q_b(redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_mem_iq),
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
    assign redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_mem_q = redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_mem_iq[31:0];

    // redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_notEnable(LOGICAL,603)
    assign redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_nor(LOGICAL,604)
    assign redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_nor_q = ~ (redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_notEnable_q | redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_sticky_ena_q);

    // redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_mem_last(CONSTANT,600)
    assign redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_cmp(LOGICAL,601)
    assign redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_cmp_b = {1'b0, redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_rdcnt_q};
    assign redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_cmp_q = $unsigned(redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_mem_last_q == redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_cmpReg(REG,602)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_cmpReg_q <= $unsigned(redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_cmp_q);
        end
    end

    // redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_sticky_ena(REG,605)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_nor_q == 1'b1)
        begin
            redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_sticky_ena_q <= $unsigned(redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_cmpReg_q);
        end
    end

    // redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_enaAnd(LOGICAL,606)
    assign redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_enaAnd_q = redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_sticky_ena_q & VCC_q;

    // redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_rdcnt(COUNTER,598)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_rdcnt_i <= $unsigned(redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_rdcnt_q = redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_rdcnt_i[1:0];

    // redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_wraddr(REG,599)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_wraddr_q <= $unsigned(redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_rdcnt_q);
        end
    end

    // redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_mem(DUALMEM,597)
    assign redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_mem_ia = $unsigned(in_c0_eni76_36_tpl);
    assign redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_mem_aa = redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_wraddr_q;
    assign redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_mem_ab = redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_rdcnt_q;
    assign redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_mem_dmem (
        .clocken1(redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_mem_aa),
        .data_a(redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_mem_ab),
        .q_b(redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_mem_iq),
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
    assign redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_mem_q = redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_mem_iq[31:0];

    // redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_notEnable(LOGICAL,593)
    assign redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_nor(LOGICAL,594)
    assign redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_nor_q = ~ (redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_notEnable_q | redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_sticky_ena_q);

    // redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_mem_last(CONSTANT,590)
    assign redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_cmp(LOGICAL,591)
    assign redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_cmp_b = {1'b0, redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_rdcnt_q};
    assign redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_cmp_q = $unsigned(redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_mem_last_q == redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_cmpReg(REG,592)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_cmpReg_q <= $unsigned(redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_cmp_q);
        end
    end

    // redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_sticky_ena(REG,595)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_nor_q == 1'b1)
        begin
            redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_sticky_ena_q <= $unsigned(redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_cmpReg_q);
        end
    end

    // redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_enaAnd(LOGICAL,596)
    assign redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_enaAnd_q = redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_sticky_ena_q & VCC_q;

    // redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_rdcnt(COUNTER,588)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_rdcnt_i <= $unsigned(redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_rdcnt_q = redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_rdcnt_i[1:0];

    // redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_wraddr(REG,589)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_wraddr_q <= $unsigned(redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_rdcnt_q);
        end
    end

    // redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_mem(DUALMEM,587)
    assign redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_mem_ia = $unsigned(in_c0_eni76_35_tpl);
    assign redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_mem_aa = redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_wraddr_q;
    assign redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_mem_ab = redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_rdcnt_q;
    assign redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_mem_dmem (
        .clocken1(redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_mem_aa),
        .data_a(redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_mem_ab),
        .q_b(redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_mem_iq),
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
    assign redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_mem_q = redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_mem_iq[31:0];

    // redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_notEnable(LOGICAL,583)
    assign redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_nor(LOGICAL,584)
    assign redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_nor_q = ~ (redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_notEnable_q | redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_sticky_ena_q);

    // redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_mem_last(CONSTANT,580)
    assign redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_cmp(LOGICAL,581)
    assign redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_cmp_b = {1'b0, redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_rdcnt_q};
    assign redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_cmp_q = $unsigned(redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_mem_last_q == redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_cmpReg(REG,582)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_cmpReg_q <= $unsigned(redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_cmp_q);
        end
    end

    // redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_sticky_ena(REG,585)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_nor_q == 1'b1)
        begin
            redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_sticky_ena_q <= $unsigned(redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_cmpReg_q);
        end
    end

    // redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_enaAnd(LOGICAL,586)
    assign redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_enaAnd_q = redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_sticky_ena_q & VCC_q;

    // redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_rdcnt(COUNTER,578)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_rdcnt_i <= $unsigned(redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_rdcnt_q = redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_rdcnt_i[1:0];

    // redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_wraddr(REG,579)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_wraddr_q <= $unsigned(redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_rdcnt_q);
        end
    end

    // redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_mem(DUALMEM,577)
    assign redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_mem_ia = $unsigned(in_c0_eni76_34_tpl);
    assign redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_mem_aa = redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_wraddr_q;
    assign redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_mem_ab = redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_rdcnt_q;
    assign redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_mem_dmem (
        .clocken1(redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_mem_aa),
        .data_a(redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_mem_ab),
        .q_b(redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_mem_iq),
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
    assign redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_mem_q = redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_mem_iq[31:0];

    // redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_notEnable(LOGICAL,573)
    assign redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_nor(LOGICAL,574)
    assign redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_nor_q = ~ (redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_notEnable_q | redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_sticky_ena_q);

    // redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_mem_last(CONSTANT,570)
    assign redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_cmp(LOGICAL,571)
    assign redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_cmp_b = {1'b0, redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_rdcnt_q};
    assign redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_cmp_q = $unsigned(redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_mem_last_q == redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_cmpReg(REG,572)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_cmpReg_q <= $unsigned(redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_cmp_q);
        end
    end

    // redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_sticky_ena(REG,575)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_nor_q == 1'b1)
        begin
            redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_sticky_ena_q <= $unsigned(redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_cmpReg_q);
        end
    end

    // redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_enaAnd(LOGICAL,576)
    assign redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_enaAnd_q = redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_sticky_ena_q & VCC_q;

    // redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_rdcnt(COUNTER,568)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_rdcnt_i <= $unsigned(redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_rdcnt_q = redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_rdcnt_i[1:0];

    // redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_wraddr(REG,569)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_wraddr_q <= $unsigned(redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_rdcnt_q);
        end
    end

    // redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_mem(DUALMEM,567)
    assign redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_mem_ia = $unsigned(in_c0_eni76_33_tpl);
    assign redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_mem_aa = redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_wraddr_q;
    assign redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_mem_ab = redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_rdcnt_q;
    assign redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_mem_dmem (
        .clocken1(redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_mem_aa),
        .data_a(redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_mem_ab),
        .q_b(redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_mem_iq),
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
    assign redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_mem_q = redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_mem_iq[31:0];

    // redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_notEnable(LOGICAL,563)
    assign redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_nor(LOGICAL,564)
    assign redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_nor_q = ~ (redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_notEnable_q | redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_sticky_ena_q);

    // redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_mem_last(CONSTANT,560)
    assign redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_cmp(LOGICAL,561)
    assign redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_cmp_b = {1'b0, redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_rdcnt_q};
    assign redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_cmp_q = $unsigned(redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_mem_last_q == redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_cmpReg(REG,562)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_cmpReg_q <= $unsigned(redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_cmp_q);
        end
    end

    // redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_sticky_ena(REG,565)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_nor_q == 1'b1)
        begin
            redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_sticky_ena_q <= $unsigned(redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_cmpReg_q);
        end
    end

    // redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_enaAnd(LOGICAL,566)
    assign redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_enaAnd_q = redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_sticky_ena_q & VCC_q;

    // redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_rdcnt(COUNTER,558)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_rdcnt_i <= $unsigned(redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_rdcnt_q = redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_rdcnt_i[1:0];

    // redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_wraddr(REG,559)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_wraddr_q <= $unsigned(redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_rdcnt_q);
        end
    end

    // redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_mem(DUALMEM,557)
    assign redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_mem_ia = $unsigned(in_c0_eni76_32_tpl);
    assign redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_mem_aa = redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_wraddr_q;
    assign redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_mem_ab = redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_rdcnt_q;
    assign redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_mem_dmem (
        .clocken1(redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_mem_aa),
        .data_a(redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_mem_ab),
        .q_b(redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_mem_iq),
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
    assign redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_mem_q = redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_mem_iq[31:0];

    // redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_notEnable(LOGICAL,553)
    assign redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_nor(LOGICAL,554)
    assign redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_nor_q = ~ (redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_notEnable_q | redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_sticky_ena_q);

    // redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_mem_last(CONSTANT,550)
    assign redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_cmp(LOGICAL,551)
    assign redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_cmp_b = {1'b0, redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_rdcnt_q};
    assign redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_cmp_q = $unsigned(redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_mem_last_q == redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_cmpReg(REG,552)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_cmpReg_q <= $unsigned(redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_cmp_q);
        end
    end

    // redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_sticky_ena(REG,555)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_nor_q == 1'b1)
        begin
            redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_sticky_ena_q <= $unsigned(redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_cmpReg_q);
        end
    end

    // redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_enaAnd(LOGICAL,556)
    assign redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_enaAnd_q = redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_sticky_ena_q & VCC_q;

    // redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_rdcnt(COUNTER,548)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_rdcnt_i <= $unsigned(redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_rdcnt_q = redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_rdcnt_i[1:0];

    // redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_wraddr(REG,549)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_wraddr_q <= $unsigned(redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_rdcnt_q);
        end
    end

    // redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_mem(DUALMEM,547)
    assign redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_mem_ia = $unsigned(in_c0_eni76_31_tpl);
    assign redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_mem_aa = redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_wraddr_q;
    assign redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_mem_ab = redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_rdcnt_q;
    assign redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_mem_dmem (
        .clocken1(redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_mem_aa),
        .data_a(redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_mem_ab),
        .q_b(redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_mem_iq),
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
    assign redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_mem_q = redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_mem_iq[31:0];

    // redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_notEnable(LOGICAL,543)
    assign redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_nor(LOGICAL,544)
    assign redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_nor_q = ~ (redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_notEnable_q | redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_sticky_ena_q);

    // redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_mem_last(CONSTANT,540)
    assign redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_cmp(LOGICAL,541)
    assign redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_cmp_b = {1'b0, redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_rdcnt_q};
    assign redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_cmp_q = $unsigned(redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_mem_last_q == redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_cmpReg(REG,542)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_cmpReg_q <= $unsigned(redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_cmp_q);
        end
    end

    // redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_sticky_ena(REG,545)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_nor_q == 1'b1)
        begin
            redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_sticky_ena_q <= $unsigned(redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_cmpReg_q);
        end
    end

    // redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_enaAnd(LOGICAL,546)
    assign redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_enaAnd_q = redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_sticky_ena_q & VCC_q;

    // redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_rdcnt(COUNTER,538)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_rdcnt_i <= $unsigned(redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_rdcnt_q = redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_rdcnt_i[1:0];

    // redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_wraddr(REG,539)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_wraddr_q <= $unsigned(redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_rdcnt_q);
        end
    end

    // redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_mem(DUALMEM,537)
    assign redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_mem_ia = $unsigned(in_c0_eni76_30_tpl);
    assign redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_mem_aa = redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_wraddr_q;
    assign redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_mem_ab = redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_rdcnt_q;
    assign redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_mem_dmem (
        .clocken1(redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_mem_aa),
        .data_a(redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_mem_ab),
        .q_b(redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_mem_iq),
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
    assign redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_mem_q = redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_mem_iq[31:0];

    // redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_notEnable(LOGICAL,533)
    assign redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_nor(LOGICAL,534)
    assign redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_nor_q = ~ (redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_notEnable_q | redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_sticky_ena_q);

    // redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_mem_last(CONSTANT,530)
    assign redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_cmp(LOGICAL,531)
    assign redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_cmp_b = {1'b0, redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_rdcnt_q};
    assign redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_cmp_q = $unsigned(redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_mem_last_q == redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_cmpReg(REG,532)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_cmpReg_q <= $unsigned(redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_cmp_q);
        end
    end

    // redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_sticky_ena(REG,535)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_nor_q == 1'b1)
        begin
            redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_sticky_ena_q <= $unsigned(redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_cmpReg_q);
        end
    end

    // redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_enaAnd(LOGICAL,536)
    assign redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_enaAnd_q = redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_sticky_ena_q & VCC_q;

    // redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_rdcnt(COUNTER,528)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_rdcnt_i <= $unsigned(redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_rdcnt_q = redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_rdcnt_i[1:0];

    // redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_wraddr(REG,529)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_wraddr_q <= $unsigned(redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_rdcnt_q);
        end
    end

    // redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_mem(DUALMEM,527)
    assign redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_mem_ia = $unsigned(in_c0_eni76_29_tpl);
    assign redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_mem_aa = redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_wraddr_q;
    assign redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_mem_ab = redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_rdcnt_q;
    assign redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_mem_dmem (
        .clocken1(redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_mem_aa),
        .data_a(redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_mem_ab),
        .q_b(redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_mem_iq),
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
    assign redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_mem_q = redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_mem_iq[31:0];

    // redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_notEnable(LOGICAL,523)
    assign redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_nor(LOGICAL,524)
    assign redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_nor_q = ~ (redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_notEnable_q | redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_sticky_ena_q);

    // redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_mem_last(CONSTANT,520)
    assign redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_cmp(LOGICAL,521)
    assign redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_cmp_b = {1'b0, redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_rdcnt_q};
    assign redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_cmp_q = $unsigned(redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_mem_last_q == redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_cmpReg(REG,522)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_cmpReg_q <= $unsigned(redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_cmp_q);
        end
    end

    // redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_sticky_ena(REG,525)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_nor_q == 1'b1)
        begin
            redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_sticky_ena_q <= $unsigned(redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_cmpReg_q);
        end
    end

    // redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_enaAnd(LOGICAL,526)
    assign redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_enaAnd_q = redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_sticky_ena_q & VCC_q;

    // redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_rdcnt(COUNTER,518)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_rdcnt_i <= $unsigned(redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_rdcnt_q = redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_rdcnt_i[1:0];

    // redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_wraddr(REG,519)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_wraddr_q <= $unsigned(redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_rdcnt_q);
        end
    end

    // redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_mem(DUALMEM,517)
    assign redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_mem_ia = $unsigned(in_c0_eni76_28_tpl);
    assign redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_mem_aa = redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_wraddr_q;
    assign redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_mem_ab = redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_rdcnt_q;
    assign redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_mem_dmem (
        .clocken1(redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_mem_aa),
        .data_a(redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_mem_ab),
        .q_b(redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_mem_iq),
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
    assign redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_mem_q = redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_mem_iq[31:0];

    // redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_notEnable(LOGICAL,513)
    assign redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_nor(LOGICAL,514)
    assign redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_nor_q = ~ (redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_notEnable_q | redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_sticky_ena_q);

    // redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_mem_last(CONSTANT,510)
    assign redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_cmp(LOGICAL,511)
    assign redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_cmp_b = {1'b0, redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_rdcnt_q};
    assign redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_cmp_q = $unsigned(redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_mem_last_q == redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_cmpReg(REG,512)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_cmpReg_q <= $unsigned(redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_cmp_q);
        end
    end

    // redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_sticky_ena(REG,515)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_nor_q == 1'b1)
        begin
            redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_sticky_ena_q <= $unsigned(redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_cmpReg_q);
        end
    end

    // redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_enaAnd(LOGICAL,516)
    assign redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_enaAnd_q = redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_sticky_ena_q & VCC_q;

    // redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_rdcnt(COUNTER,508)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_rdcnt_i <= $unsigned(redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_rdcnt_q = redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_rdcnt_i[1:0];

    // redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_wraddr(REG,509)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_wraddr_q <= $unsigned(redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_rdcnt_q);
        end
    end

    // redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_mem(DUALMEM,507)
    assign redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_mem_ia = $unsigned(in_c0_eni76_27_tpl);
    assign redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_mem_aa = redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_wraddr_q;
    assign redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_mem_ab = redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_rdcnt_q;
    assign redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_mem_dmem (
        .clocken1(redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_mem_aa),
        .data_a(redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_mem_ab),
        .q_b(redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_mem_iq),
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
    assign redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_mem_q = redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_mem_iq[31:0];

    // redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_notEnable(LOGICAL,503)
    assign redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_nor(LOGICAL,504)
    assign redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_nor_q = ~ (redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_notEnable_q | redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_sticky_ena_q);

    // redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_mem_last(CONSTANT,500)
    assign redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_cmp(LOGICAL,501)
    assign redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_cmp_b = {1'b0, redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_rdcnt_q};
    assign redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_cmp_q = $unsigned(redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_mem_last_q == redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_cmpReg(REG,502)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_cmpReg_q <= $unsigned(redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_cmp_q);
        end
    end

    // redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_sticky_ena(REG,505)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_nor_q == 1'b1)
        begin
            redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_sticky_ena_q <= $unsigned(redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_cmpReg_q);
        end
    end

    // redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_enaAnd(LOGICAL,506)
    assign redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_enaAnd_q = redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_sticky_ena_q & VCC_q;

    // redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_rdcnt(COUNTER,498)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_rdcnt_i <= $unsigned(redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_rdcnt_q = redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_rdcnt_i[1:0];

    // redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_wraddr(REG,499)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_wraddr_q <= $unsigned(redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_rdcnt_q);
        end
    end

    // redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_mem(DUALMEM,497)
    assign redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_mem_ia = $unsigned(in_c0_eni76_26_tpl);
    assign redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_mem_aa = redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_wraddr_q;
    assign redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_mem_ab = redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_rdcnt_q;
    assign redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_mem_dmem (
        .clocken1(redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_mem_aa),
        .data_a(redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_mem_ab),
        .q_b(redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_mem_iq),
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
    assign redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_mem_q = redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_mem_iq[31:0];

    // redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_notEnable(LOGICAL,493)
    assign redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_nor(LOGICAL,494)
    assign redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_nor_q = ~ (redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_notEnable_q | redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_sticky_ena_q);

    // redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_mem_last(CONSTANT,490)
    assign redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_cmp(LOGICAL,491)
    assign redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_cmp_b = {1'b0, redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_rdcnt_q};
    assign redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_cmp_q = $unsigned(redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_mem_last_q == redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_cmpReg(REG,492)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_cmpReg_q <= $unsigned(redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_cmp_q);
        end
    end

    // redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_sticky_ena(REG,495)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_nor_q == 1'b1)
        begin
            redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_sticky_ena_q <= $unsigned(redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_cmpReg_q);
        end
    end

    // redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_enaAnd(LOGICAL,496)
    assign redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_enaAnd_q = redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_sticky_ena_q & VCC_q;

    // redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_rdcnt(COUNTER,488)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_rdcnt_i <= $unsigned(redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_rdcnt_q = redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_rdcnt_i[1:0];

    // redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_wraddr(REG,489)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_wraddr_q <= $unsigned(redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_rdcnt_q);
        end
    end

    // redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_mem(DUALMEM,487)
    assign redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_mem_ia = $unsigned(in_c0_eni76_25_tpl);
    assign redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_mem_aa = redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_wraddr_q;
    assign redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_mem_ab = redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_rdcnt_q;
    assign redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_mem_dmem (
        .clocken1(redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_mem_aa),
        .data_a(redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_mem_ab),
        .q_b(redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_mem_iq),
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
    assign redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_mem_q = redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_mem_iq[31:0];

    // redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_notEnable(LOGICAL,483)
    assign redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_nor(LOGICAL,484)
    assign redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_nor_q = ~ (redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_notEnable_q | redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_sticky_ena_q);

    // redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_mem_last(CONSTANT,480)
    assign redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_cmp(LOGICAL,481)
    assign redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_cmp_b = {1'b0, redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_rdcnt_q};
    assign redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_cmp_q = $unsigned(redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_mem_last_q == redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_cmpReg(REG,482)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_cmpReg_q <= $unsigned(redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_cmp_q);
        end
    end

    // redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_sticky_ena(REG,485)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_nor_q == 1'b1)
        begin
            redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_sticky_ena_q <= $unsigned(redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_cmpReg_q);
        end
    end

    // redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_enaAnd(LOGICAL,486)
    assign redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_enaAnd_q = redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_sticky_ena_q & VCC_q;

    // redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_rdcnt(COUNTER,478)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_rdcnt_i <= $unsigned(redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_rdcnt_q = redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_rdcnt_i[1:0];

    // redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_wraddr(REG,479)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_wraddr_q <= $unsigned(redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_rdcnt_q);
        end
    end

    // redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_mem(DUALMEM,477)
    assign redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_mem_ia = $unsigned(in_c0_eni76_24_tpl);
    assign redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_mem_aa = redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_wraddr_q;
    assign redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_mem_ab = redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_rdcnt_q;
    assign redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_mem_dmem (
        .clocken1(redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_mem_aa),
        .data_a(redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_mem_ab),
        .q_b(redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_mem_iq),
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
    assign redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_mem_q = redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_mem_iq[31:0];

    // redist2_sync_together220_aunroll_x_in_c0_eni76_2_tpl_5(DELAY,340)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together220_aunroll_x_in_c0_eni76_2_tpl_5_delay_0 <= '0;
            redist2_sync_together220_aunroll_x_in_c0_eni76_2_tpl_5_delay_1 <= '0;
            redist2_sync_together220_aunroll_x_in_c0_eni76_2_tpl_5_delay_2 <= '0;
            redist2_sync_together220_aunroll_x_in_c0_eni76_2_tpl_5_q <= '0;
        end
        else
        begin
            redist2_sync_together220_aunroll_x_in_c0_eni76_2_tpl_5_delay_0 <= $unsigned(redist1_sync_together220_aunroll_x_in_c0_eni76_2_tpl_1_q);
            redist2_sync_together220_aunroll_x_in_c0_eni76_2_tpl_5_delay_1 <= redist2_sync_together220_aunroll_x_in_c0_eni76_2_tpl_5_delay_0;
            redist2_sync_together220_aunroll_x_in_c0_eni76_2_tpl_5_delay_2 <= redist2_sync_together220_aunroll_x_in_c0_eni76_2_tpl_5_delay_1;
            redist2_sync_together220_aunroll_x_in_c0_eni76_2_tpl_5_q <= redist2_sync_together220_aunroll_x_in_c0_eni76_2_tpl_5_delay_2;
        end
    end

    // valid_fanout_reg48(REG,276)@1 + 1
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

    // valid_fanout_reg49(REG,277)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg49_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg49_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112(REG,105)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q <= i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out;
        end
    end

    // i_llvm_fpga_push_i1_notcmp19124_push128_conv2d1x190(BLACKBOX,145)@2
    // out out_feedback_out_128@20000000
    // out out_feedback_valid_out_128@20000000
    conv2d1x1_i_llvm_fpga_push_i1_notcmp19124_push128_0 thei_llvm_fpga_push_i1_notcmp19124_push128_conv2d1x190 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp19124_pop128_conv2d1x189_out_data_out),
        .in_feedback_stall_in_128(i_llvm_fpga_pop_i1_notcmp19124_pop128_conv2d1x189_out_feedback_stall_out_128),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg49_q),
        .out_data_out(),
        .out_feedback_out_128(i_llvm_fpga_push_i1_notcmp19124_push128_conv2d1x190_out_feedback_out_128),
        .out_feedback_valid_out_128(i_llvm_fpga_push_i1_notcmp19124_push128_conv2d1x190_out_feedback_valid_out_128),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12(REG,103)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q <= in_c0_eni76_2_tpl;
        end
    end

    // redist23_sync_together220_aunroll_x_in_c0_eni76_23_tpl_1(DELAY,361)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together220_aunroll_x_in_c0_eni76_23_tpl_1_q <= '0;
        end
        else
        begin
            redist23_sync_together220_aunroll_x_in_c0_eni76_23_tpl_1_q <= $unsigned(in_c0_eni76_23_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp19124_pop128_conv2d1x189(BLACKBOX,118)@2
    // out out_feedback_stall_out_128@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_notcmp19124_pop128_0 thei_llvm_fpga_pop_i1_notcmp19124_pop128_conv2d1x189 (
        .in_data_in(redist23_sync_together220_aunroll_x_in_c0_eni76_23_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q),
        .in_feedback_in_128(i_llvm_fpga_push_i1_notcmp19124_push128_conv2d1x190_out_feedback_out_128),
        .in_feedback_valid_in_128(i_llvm_fpga_push_i1_notcmp19124_push128_conv2d1x190_out_feedback_valid_out_128),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg48_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp19124_pop128_conv2d1x189_out_data_out),
        .out_feedback_stall_out_128(i_llvm_fpga_pop_i1_notcmp19124_pop128_conv2d1x189_out_feedback_stall_out_128),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist94_i_llvm_fpga_pop_i1_notcmp19124_pop128_conv2d1x189_out_data_out_4(DELAY,432)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist94_i_llvm_fpga_pop_i1_notcmp19124_pop128_conv2d1x189_out_data_out_4_delay_0 <= '0;
            redist94_i_llvm_fpga_pop_i1_notcmp19124_pop128_conv2d1x189_out_data_out_4_delay_1 <= '0;
            redist94_i_llvm_fpga_pop_i1_notcmp19124_pop128_conv2d1x189_out_data_out_4_delay_2 <= '0;
            redist94_i_llvm_fpga_pop_i1_notcmp19124_pop128_conv2d1x189_out_data_out_4_q <= '0;
        end
        else
        begin
            redist94_i_llvm_fpga_pop_i1_notcmp19124_pop128_conv2d1x189_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp19124_pop128_conv2d1x189_out_data_out);
            redist94_i_llvm_fpga_pop_i1_notcmp19124_pop128_conv2d1x189_out_data_out_4_delay_1 <= redist94_i_llvm_fpga_pop_i1_notcmp19124_pop128_conv2d1x189_out_data_out_4_delay_0;
            redist94_i_llvm_fpga_pop_i1_notcmp19124_pop128_conv2d1x189_out_data_out_4_delay_2 <= redist94_i_llvm_fpga_pop_i1_notcmp19124_pop128_conv2d1x189_out_data_out_4_delay_1;
            redist94_i_llvm_fpga_pop_i1_notcmp19124_pop128_conv2d1x189_out_data_out_4_q <= redist94_i_llvm_fpga_pop_i1_notcmp19124_pop128_conv2d1x189_out_data_out_4_delay_2;
        end
    end

    // valid_fanout_reg46(REG,274)@1 + 1
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

    // valid_fanout_reg47(REG,275)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg47_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg47_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_or123_push127_conv2d1x188(BLACKBOX,148)@2
    // out out_feedback_out_127@20000000
    // out out_feedback_valid_out_127@20000000
    conv2d1x1_i_llvm_fpga_push_i1_or123_push127_0 thei_llvm_fpga_push_i1_or123_push127_conv2d1x188 (
        .in_data_in(i_llvm_fpga_pop_i1_or123_pop127_conv2d1x187_out_data_out),
        .in_feedback_stall_in_127(i_llvm_fpga_pop_i1_or123_pop127_conv2d1x187_out_feedback_stall_out_127),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg47_q),
        .out_data_out(),
        .out_feedback_out_127(i_llvm_fpga_push_i1_or123_push127_conv2d1x188_out_feedback_out_127),
        .out_feedback_valid_out_127(i_llvm_fpga_push_i1_or123_push127_conv2d1x188_out_feedback_valid_out_127),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_sync_together220_aunroll_x_in_c0_eni76_22_tpl_1(DELAY,360)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together220_aunroll_x_in_c0_eni76_22_tpl_1_q <= '0;
        end
        else
        begin
            redist22_sync_together220_aunroll_x_in_c0_eni76_22_tpl_1_q <= $unsigned(in_c0_eni76_22_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_or123_pop127_conv2d1x187(BLACKBOX,120)@2
    // out out_feedback_stall_out_127@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_or123_pop127_0 thei_llvm_fpga_pop_i1_or123_pop127_conv2d1x187 (
        .in_data_in(redist22_sync_together220_aunroll_x_in_c0_eni76_22_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q),
        .in_feedback_in_127(i_llvm_fpga_push_i1_or123_push127_conv2d1x188_out_feedback_out_127),
        .in_feedback_valid_in_127(i_llvm_fpga_push_i1_or123_push127_conv2d1x188_out_feedback_valid_out_127),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg46_q),
        .out_data_out(i_llvm_fpga_pop_i1_or123_pop127_conv2d1x187_out_data_out),
        .out_feedback_stall_out_127(i_llvm_fpga_pop_i1_or123_pop127_conv2d1x187_out_feedback_stall_out_127),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist92_i_llvm_fpga_pop_i1_or123_pop127_conv2d1x187_out_data_out_4(DELAY,430)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist92_i_llvm_fpga_pop_i1_or123_pop127_conv2d1x187_out_data_out_4_delay_0 <= '0;
            redist92_i_llvm_fpga_pop_i1_or123_pop127_conv2d1x187_out_data_out_4_delay_1 <= '0;
            redist92_i_llvm_fpga_pop_i1_or123_pop127_conv2d1x187_out_data_out_4_delay_2 <= '0;
            redist92_i_llvm_fpga_pop_i1_or123_pop127_conv2d1x187_out_data_out_4_q <= '0;
        end
        else
        begin
            redist92_i_llvm_fpga_pop_i1_or123_pop127_conv2d1x187_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_or123_pop127_conv2d1x187_out_data_out);
            redist92_i_llvm_fpga_pop_i1_or123_pop127_conv2d1x187_out_data_out_4_delay_1 <= redist92_i_llvm_fpga_pop_i1_or123_pop127_conv2d1x187_out_data_out_4_delay_0;
            redist92_i_llvm_fpga_pop_i1_or123_pop127_conv2d1x187_out_data_out_4_delay_2 <= redist92_i_llvm_fpga_pop_i1_or123_pop127_conv2d1x187_out_data_out_4_delay_1;
            redist92_i_llvm_fpga_pop_i1_or123_pop127_conv2d1x187_out_data_out_4_q <= redist92_i_llvm_fpga_pop_i1_or123_pop127_conv2d1x187_out_data_out_4_delay_2;
        end
    end

    // valid_fanout_reg44(REG,272)@1 + 1
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

    // valid_fanout_reg45(REG,273)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg45_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg45_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_forked59_and122_push125_conv2d1x186(BLACKBOX,143)@2
    // out out_feedback_out_125@20000000
    // out out_feedback_valid_out_125@20000000
    conv2d1x1_i_llvm_fpga_push_i1_forked59_and122_push125_0 thei_llvm_fpga_push_i1_forked59_and122_push125_conv2d1x186 (
        .in_data_in(i_llvm_fpga_pop_i1_forked59_and122_pop125_conv2d1x185_out_data_out),
        .in_feedback_stall_in_125(i_llvm_fpga_pop_i1_forked59_and122_pop125_conv2d1x185_out_feedback_stall_out_125),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg45_q),
        .out_data_out(),
        .out_feedback_out_125(i_llvm_fpga_push_i1_forked59_and122_push125_conv2d1x186_out_feedback_out_125),
        .out_feedback_valid_out_125(i_llvm_fpga_push_i1_forked59_and122_push125_conv2d1x186_out_feedback_valid_out_125),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist21_sync_together220_aunroll_x_in_c0_eni76_21_tpl_1(DELAY,359)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together220_aunroll_x_in_c0_eni76_21_tpl_1_q <= '0;
        end
        else
        begin
            redist21_sync_together220_aunroll_x_in_c0_eni76_21_tpl_1_q <= $unsigned(in_c0_eni76_21_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_forked59_and122_pop125_conv2d1x185(BLACKBOX,117)@2
    // out out_feedback_stall_out_125@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_forked59_and122_pop125_0 thei_llvm_fpga_pop_i1_forked59_and122_pop125_conv2d1x185 (
        .in_data_in(redist21_sync_together220_aunroll_x_in_c0_eni76_21_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q),
        .in_feedback_in_125(i_llvm_fpga_push_i1_forked59_and122_push125_conv2d1x186_out_feedback_out_125),
        .in_feedback_valid_in_125(i_llvm_fpga_push_i1_forked59_and122_push125_conv2d1x186_out_feedback_valid_out_125),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg44_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked59_and122_pop125_conv2d1x185_out_data_out),
        .out_feedback_stall_out_125(i_llvm_fpga_pop_i1_forked59_and122_pop125_conv2d1x185_out_feedback_stall_out_125),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist95_i_llvm_fpga_pop_i1_forked59_and122_pop125_conv2d1x185_out_data_out_4(DELAY,433)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist95_i_llvm_fpga_pop_i1_forked59_and122_pop125_conv2d1x185_out_data_out_4_delay_0 <= '0;
            redist95_i_llvm_fpga_pop_i1_forked59_and122_pop125_conv2d1x185_out_data_out_4_delay_1 <= '0;
            redist95_i_llvm_fpga_pop_i1_forked59_and122_pop125_conv2d1x185_out_data_out_4_delay_2 <= '0;
            redist95_i_llvm_fpga_pop_i1_forked59_and122_pop125_conv2d1x185_out_data_out_4_q <= '0;
        end
        else
        begin
            redist95_i_llvm_fpga_pop_i1_forked59_and122_pop125_conv2d1x185_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_forked59_and122_pop125_conv2d1x185_out_data_out);
            redist95_i_llvm_fpga_pop_i1_forked59_and122_pop125_conv2d1x185_out_data_out_4_delay_1 <= redist95_i_llvm_fpga_pop_i1_forked59_and122_pop125_conv2d1x185_out_data_out_4_delay_0;
            redist95_i_llvm_fpga_pop_i1_forked59_and122_pop125_conv2d1x185_out_data_out_4_delay_2 <= redist95_i_llvm_fpga_pop_i1_forked59_and122_pop125_conv2d1x185_out_data_out_4_delay_1;
            redist95_i_llvm_fpga_pop_i1_forked59_and122_pop125_conv2d1x185_out_data_out_4_q <= redist95_i_llvm_fpga_pop_i1_forked59_and122_pop125_conv2d1x185_out_data_out_4_delay_2;
        end
    end

    // valid_fanout_reg42(REG,270)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg42_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg42_q <= $unsigned(redist79_sync_together220_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg43(REG,271)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg43_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg43_q <= $unsigned(redist79_sync_together220_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist105_i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q_1(DELAY,443)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist105_i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q_1_q <= '0;
        end
        else
        begin
            redist105_i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q_1_q <= $unsigned(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q);
        end
    end

    // redist106_i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q_4(DELAY,444)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist106_i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q_4_delay_0 <= '0;
            redist106_i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q_4_delay_1 <= '0;
            redist106_i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q_4_q <= '0;
        end
        else
        begin
            redist106_i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q_4_delay_0 <= $unsigned(redist105_i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q_1_q);
            redist106_i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q_4_delay_1 <= redist106_i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q_4_delay_0;
            redist106_i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q_4_q <= redist106_i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q_4_delay_1;
        end
    end

    // i_llvm_fpga_push_f32_mul51_le205120_push123_conv2d1x184(BLACKBOX,136)@6
    // out out_feedback_out_123@20000000
    // out out_feedback_valid_out_123@20000000
    conv2d1x1_i_llvm_fpga_push_f32_mul51_le205120_push123_0 thei_llvm_fpga_push_f32_mul51_le205120_push123_conv2d1x184 (
        .in_data_in(i_llvm_fpga_pop_f32_mul51_le205120_pop123_conv2d1x183_out_data_out),
        .in_feedback_stall_in_123(i_llvm_fpga_pop_f32_mul51_le205120_pop123_conv2d1x183_out_feedback_stall_out_123),
        .in_keep_going_fanout_adaptor(redist106_i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q_4_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg43_q),
        .out_data_out(),
        .out_feedback_out_123(i_llvm_fpga_push_f32_mul51_le205120_push123_conv2d1x184_out_feedback_out_123),
        .out_feedback_valid_out_123(i_llvm_fpga_push_f32_mul51_le205120_push123_conv2d1x184_out_feedback_valid_out_123),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist107_i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q_4(DELAY,445)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist107_i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q_4_delay_0 <= '0;
            redist107_i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q_4_delay_1 <= '0;
            redist107_i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q_4_delay_2 <= '0;
            redist107_i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q_4_q <= '0;
        end
        else
        begin
            redist107_i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q_4_delay_0 <= $unsigned(i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q);
            redist107_i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q_4_delay_1 <= redist107_i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q_4_delay_0;
            redist107_i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q_4_delay_2 <= redist107_i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q_4_delay_1;
            redist107_i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q_4_q <= redist107_i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_f32_mul51_le205120_pop123_conv2d1x183(BLACKBOX,110)@6
    // out out_feedback_stall_out_123@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_mul51_le205120_pop123_0 thei_llvm_fpga_pop_f32_mul51_le205120_pop123_conv2d1x183 (
        .in_data_in(redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_mem_q),
        .in_dir(redist107_i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q_4_q),
        .in_feedback_in_123(i_llvm_fpga_push_f32_mul51_le205120_push123_conv2d1x184_out_feedback_out_123),
        .in_feedback_valid_in_123(i_llvm_fpga_push_f32_mul51_le205120_push123_conv2d1x184_out_feedback_valid_out_123),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg42_q),
        .out_data_out(i_llvm_fpga_pop_f32_mul51_le205120_pop123_conv2d1x183_out_data_out),
        .out_feedback_stall_out_123(i_llvm_fpga_pop_f32_mul51_le205120_pop123_conv2d1x183_out_feedback_stall_out_123),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg40(REG,268)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg40_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg40_q <= $unsigned(redist79_sync_together220_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg41(REG,269)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg41_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg41_q <= $unsigned(redist79_sync_together220_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_mul38_le207119_push122_conv2d1x182(BLACKBOX,135)@6
    // out out_feedback_out_122@20000000
    // out out_feedback_valid_out_122@20000000
    conv2d1x1_i_llvm_fpga_push_f32_mul38_le207119_push122_0 thei_llvm_fpga_push_f32_mul38_le207119_push122_conv2d1x182 (
        .in_data_in(i_llvm_fpga_pop_f32_mul38_le207119_pop122_conv2d1x181_out_data_out),
        .in_feedback_stall_in_122(i_llvm_fpga_pop_f32_mul38_le207119_pop122_conv2d1x181_out_feedback_stall_out_122),
        .in_keep_going_fanout_adaptor(redist106_i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q_4_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg41_q),
        .out_data_out(),
        .out_feedback_out_122(i_llvm_fpga_push_f32_mul38_le207119_push122_conv2d1x182_out_feedback_out_122),
        .out_feedback_valid_out_122(i_llvm_fpga_push_f32_mul38_le207119_push122_conv2d1x182_out_feedback_valid_out_122),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_mul38_le207119_pop122_conv2d1x181(BLACKBOX,109)@6
    // out out_feedback_stall_out_122@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_mul38_le207119_pop122_0 thei_llvm_fpga_pop_f32_mul38_le207119_pop122_conv2d1x181 (
        .in_data_in(redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_mem_q),
        .in_dir(redist107_i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q_4_q),
        .in_feedback_in_122(i_llvm_fpga_push_f32_mul38_le207119_push122_conv2d1x182_out_feedback_out_122),
        .in_feedback_valid_in_122(i_llvm_fpga_push_f32_mul38_le207119_push122_conv2d1x182_out_feedback_valid_out_122),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg40_q),
        .out_data_out(i_llvm_fpga_pop_f32_mul38_le207119_pop122_conv2d1x181_out_data_out),
        .out_feedback_stall_out_122(i_llvm_fpga_pop_f32_mul38_le207119_pop122_conv2d1x181_out_feedback_stall_out_122),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg38(REG,266)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg38_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg38_q <= $unsigned(redist79_sync_together220_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg39(REG,267)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg39_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg39_q <= $unsigned(redist79_sync_together220_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_push121_conv2d1x180(BLACKBOX,137)@6
    // out out_feedback_out_121@20000000
    // out out_feedback_valid_out_121@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push121_0 thei_llvm_fpga_push_f32_push121_conv2d1x180 (
        .in_data_in(i_llvm_fpga_pop_f32_pop121_conv2d1x179_out_data_out),
        .in_feedback_stall_in_121(i_llvm_fpga_pop_f32_pop121_conv2d1x179_out_feedback_stall_out_121),
        .in_keep_going_fanout_adaptor(redist106_i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q_4_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg39_q),
        .out_data_out(),
        .out_feedback_out_121(i_llvm_fpga_push_f32_push121_conv2d1x180_out_feedback_out_121),
        .out_feedback_valid_out_121(i_llvm_fpga_push_f32_push121_conv2d1x180_out_feedback_valid_out_121),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop121_conv2d1x179(BLACKBOX,111)@6
    // out out_feedback_stall_out_121@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop121_0 thei_llvm_fpga_pop_f32_pop121_conv2d1x179 (
        .in_data_in(redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_mem_q),
        .in_dir(redist107_i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q_4_q),
        .in_feedback_in_121(i_llvm_fpga_push_f32_push121_conv2d1x180_out_feedback_out_121),
        .in_feedback_valid_in_121(i_llvm_fpga_push_f32_push121_conv2d1x180_out_feedback_valid_out_121),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg38_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop121_conv2d1x179_out_data_out),
        .out_feedback_stall_out_121(i_llvm_fpga_pop_f32_pop121_conv2d1x179_out_feedback_stall_out_121),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg36(REG,264)@1 + 1
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

    // valid_fanout_reg37(REG,265)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg37_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp24118_push120_conv2d1x178(BLACKBOX,146)@2
    // out out_feedback_out_120@20000000
    // out out_feedback_valid_out_120@20000000
    conv2d1x1_i_llvm_fpga_push_i1_notcmp24118_push120_0 thei_llvm_fpga_push_i1_notcmp24118_push120_conv2d1x178 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp24118_pop120_conv2d1x177_out_data_out),
        .in_feedback_stall_in_120(i_llvm_fpga_pop_i1_notcmp24118_pop120_conv2d1x177_out_feedback_stall_out_120),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_data_out(),
        .out_feedback_out_120(i_llvm_fpga_push_i1_notcmp24118_push120_conv2d1x178_out_feedback_out_120),
        .out_feedback_valid_out_120(i_llvm_fpga_push_i1_notcmp24118_push120_conv2d1x178_out_feedback_valid_out_120),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_sync_together220_aunroll_x_in_c0_eni76_17_tpl_1(DELAY,355)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together220_aunroll_x_in_c0_eni76_17_tpl_1_q <= '0;
        end
        else
        begin
            redist17_sync_together220_aunroll_x_in_c0_eni76_17_tpl_1_q <= $unsigned(in_c0_eni76_17_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp24118_pop120_conv2d1x177(BLACKBOX,119)@2
    // out out_feedback_stall_out_120@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_notcmp24118_pop120_0 thei_llvm_fpga_pop_i1_notcmp24118_pop120_conv2d1x177 (
        .in_data_in(redist17_sync_together220_aunroll_x_in_c0_eni76_17_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q),
        .in_feedback_in_120(i_llvm_fpga_push_i1_notcmp24118_push120_conv2d1x178_out_feedback_out_120),
        .in_feedback_valid_in_120(i_llvm_fpga_push_i1_notcmp24118_push120_conv2d1x178_out_feedback_valid_out_120),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp24118_pop120_conv2d1x177_out_data_out),
        .out_feedback_stall_out_120(i_llvm_fpga_pop_i1_notcmp24118_pop120_conv2d1x177_out_feedback_stall_out_120),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist93_i_llvm_fpga_pop_i1_notcmp24118_pop120_conv2d1x177_out_data_out_4(DELAY,431)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist93_i_llvm_fpga_pop_i1_notcmp24118_pop120_conv2d1x177_out_data_out_4_delay_0 <= '0;
            redist93_i_llvm_fpga_pop_i1_notcmp24118_pop120_conv2d1x177_out_data_out_4_delay_1 <= '0;
            redist93_i_llvm_fpga_pop_i1_notcmp24118_pop120_conv2d1x177_out_data_out_4_delay_2 <= '0;
            redist93_i_llvm_fpga_pop_i1_notcmp24118_pop120_conv2d1x177_out_data_out_4_q <= '0;
        end
        else
        begin
            redist93_i_llvm_fpga_pop_i1_notcmp24118_pop120_conv2d1x177_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp24118_pop120_conv2d1x177_out_data_out);
            redist93_i_llvm_fpga_pop_i1_notcmp24118_pop120_conv2d1x177_out_data_out_4_delay_1 <= redist93_i_llvm_fpga_pop_i1_notcmp24118_pop120_conv2d1x177_out_data_out_4_delay_0;
            redist93_i_llvm_fpga_pop_i1_notcmp24118_pop120_conv2d1x177_out_data_out_4_delay_2 <= redist93_i_llvm_fpga_pop_i1_notcmp24118_pop120_conv2d1x177_out_data_out_4_delay_1;
            redist93_i_llvm_fpga_pop_i1_notcmp24118_pop120_conv2d1x177_out_data_out_4_q <= redist93_i_llvm_fpga_pop_i1_notcmp24118_pop120_conv2d1x177_out_data_out_4_delay_2;
        end
    end

    // redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_notEnable(LOGICAL,963)
    assign redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_nor(LOGICAL,964)
    assign redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_nor_q = ~ (redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_notEnable_q | redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_sticky_ena_q);

    // redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_cmpReg(REG,962)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_sticky_ena(REG,965)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_nor_q == 1'b1)
        begin
            redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_sticky_ena_q <= $unsigned(redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_cmpReg_q);
        end
    end

    // redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_enaAnd(LOGICAL,966)
    assign redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_enaAnd_q = redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_sticky_ena_q & VCC_q;

    // redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_rdcnt(COUNTER,960)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_rdcnt_i <= $unsigned(redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_rdcnt_q = redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_rdcnt_i[0:0];

    // valid_fanout_reg34(REG,262)@1 + 1
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

    // valid_fanout_reg35(REG,263)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg35_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_mul97116_push118_conv2d1x176(BLACKBOX,160)@2
    // out out_feedback_out_118@20000000
    // out out_feedback_valid_out_118@20000000
    conv2d1x1_i_llvm_fpga_push_i32_mul97116_push118_0 thei_llvm_fpga_push_i32_mul97116_push118_conv2d1x176 (
        .in_data_in(i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out),
        .in_feedback_stall_in_118(i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_feedback_stall_out_118),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_data_out(),
        .out_feedback_out_118(i_llvm_fpga_push_i32_mul97116_push118_conv2d1x176_out_feedback_out_118),
        .out_feedback_valid_out_118(i_llvm_fpga_push_i32_mul97116_push118_conv2d1x176_out_feedback_valid_out_118),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_sync_together220_aunroll_x_in_c0_eni76_16_tpl_1(DELAY,354)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together220_aunroll_x_in_c0_eni76_16_tpl_1_q <= '0;
        end
        else
        begin
            redist16_sync_together220_aunroll_x_in_c0_eni76_16_tpl_1_q <= $unsigned(in_c0_eni76_16_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175(BLACKBOX,132)@2
    // out out_feedback_stall_out_118@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_mul97116_pop118_0 thei_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175 (
        .in_data_in(redist16_sync_together220_aunroll_x_in_c0_eni76_16_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q),
        .in_feedback_in_118(i_llvm_fpga_push_i32_mul97116_push118_conv2d1x176_out_feedback_out_118),
        .in_feedback_valid_in_118(i_llvm_fpga_push_i32_mul97116_push118_conv2d1x176_out_feedback_valid_out_118),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out),
        .out_feedback_stall_out_118(i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_feedback_stall_out_118),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_inputreg0(DELAY,958)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_inputreg0_q <= '0;
        end
        else
        begin
            redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out);
        end
    end

    // redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_wraddr(REG,961)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_wraddr_q <= $unsigned(redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_rdcnt_q);
        end
    end

    // redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_mem(DUALMEM,959)
    assign redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_mem_ia = $unsigned(redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_inputreg0_q);
    assign redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_mem_aa = redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_wraddr_q;
    assign redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_mem_ab = redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_rdcnt_q;
    assign redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_mem_reset0 = ~ (resetn);
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
    ) redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_mem_dmem (
        .clocken1(redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_mem_aa),
        .data_a(redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_mem_ab),
        .q_b(redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_mem_iq),
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
    assign redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_mem_q = redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_mem_iq[31:0];

    // redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_notEnable(LOGICAL,982)
    assign redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_nor(LOGICAL,983)
    assign redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_nor_q = ~ (redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_notEnable_q | redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_sticky_ena_q);

    // redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_cmpReg(REG,981)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_sticky_ena(REG,984)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_nor_q == 1'b1)
        begin
            redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_sticky_ena_q <= $unsigned(redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_cmpReg_q);
        end
    end

    // redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_enaAnd(LOGICAL,985)
    assign redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_enaAnd_q = redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_sticky_ena_q & VCC_q;

    // redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_rdcnt(COUNTER,979)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_rdcnt_i <= $unsigned(redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_rdcnt_q = redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_rdcnt_i[0:0];

    // valid_fanout_reg32(REG,260)@1 + 1
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

    // valid_fanout_reg33(REG,261)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg33_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist77_sync_together220_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_f32_lm96112_push116_conv2d1x174(BLACKBOX,134)@3
    // out out_feedback_out_116@20000000
    // out out_feedback_valid_out_116@20000000
    conv2d1x1_i_llvm_fpga_push_f32_lm96112_push116_0 thei_llvm_fpga_push_f32_lm96112_push116_conv2d1x174 (
        .in_data_in(redist99_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_1_q),
        .in_feedback_stall_in_116(i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_feedback_stall_out_116),
        .in_keep_going_fanout_adaptor(redist105_i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_data_out(),
        .out_feedback_out_116(i_llvm_fpga_push_f32_lm96112_push116_conv2d1x174_out_feedback_out_116),
        .out_feedback_valid_out_116(i_llvm_fpga_push_f32_lm96112_push116_conv2d1x174_out_feedback_valid_out_116),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_sync_together220_aunroll_x_in_c0_eni76_15_tpl_1(DELAY,353)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together220_aunroll_x_in_c0_eni76_15_tpl_1_q <= '0;
        end
        else
        begin
            redist15_sync_together220_aunroll_x_in_c0_eni76_15_tpl_1_q <= $unsigned(in_c0_eni76_15_tpl);
        end
    end

    // i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173(BLACKBOX,108)@2
    // out out_feedback_stall_out_116@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_lm96112_pop116_0 thei_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173 (
        .in_data_in(redist15_sync_together220_aunroll_x_in_c0_eni76_15_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q),
        .in_feedback_in_116(i_llvm_fpga_push_f32_lm96112_push116_conv2d1x174_out_feedback_out_116),
        .in_feedback_valid_in_116(i_llvm_fpga_push_f32_lm96112_push116_conv2d1x174_out_feedback_valid_out_116),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_data_out(i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out),
        .out_feedback_stall_out_116(i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_feedback_stall_out_116),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist99_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_1(DELAY,437)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist99_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_1_q <= '0;
        end
        else
        begin
            redist99_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out);
        end
    end

    // redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_wraddr(REG,980)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_wraddr_q <= $unsigned(redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_rdcnt_q);
        end
    end

    // redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_mem(DUALMEM,978)
    assign redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_mem_ia = $unsigned(redist99_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_1_q);
    assign redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_mem_aa = redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_wraddr_q;
    assign redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_mem_ab = redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_rdcnt_q;
    assign redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_mem_reset0 = ~ (resetn);
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
    ) redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_mem_dmem (
        .clocken1(redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_mem_aa),
        .data_a(redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_mem_ab),
        .q_b(redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_mem_iq),
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
    assign redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_mem_q = redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_mem_iq[31:0];

    // i_masked_conv2d1x164(LOGICAL,170)@2 + 1
    assign i_masked_conv2d1x164_qi = i_notcmp_conv2d1x157_q & i_first_cleanup_conv2d1x17_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_conv2d1x164_delay ( .xin(i_masked_conv2d1x164_qi), .xout(i_masked_conv2d1x164_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist83_i_masked_conv2d1x164_q_4(DELAY,421)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist83_i_masked_conv2d1x164_q_4_delay_0 <= '0;
            redist83_i_masked_conv2d1x164_q_4_delay_1 <= '0;
            redist83_i_masked_conv2d1x164_q_4_q <= '0;
        end
        else
        begin
            redist83_i_masked_conv2d1x164_q_4_delay_0 <= $unsigned(i_masked_conv2d1x164_q);
            redist83_i_masked_conv2d1x164_q_4_delay_1 <= redist83_i_masked_conv2d1x164_q_4_delay_0;
            redist83_i_masked_conv2d1x164_q_4_q <= redist83_i_masked_conv2d1x164_q_4_delay_1;
        end
    end

    // valid_fanout_reg22(REG,250)@1 + 1
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

    // valid_fanout_reg23(REG,251)@1 + 1
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

    // i_llvm_fpga_push_i1_push113_conv2d1x163(BLACKBOX,150)@2
    // out out_feedback_out_113@20000000
    // out out_feedback_valid_out_113@20000000
    conv2d1x1_i_llvm_fpga_push_i1_push113_0 thei_llvm_fpga_push_i1_push113_conv2d1x163 (
        .in_data_in(i_llvm_fpga_pop_i1_pop113_conv2d1x162_out_data_out),
        .in_feedback_stall_in_113(i_llvm_fpga_pop_i1_pop113_conv2d1x162_out_feedback_stall_out_113),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_113(i_llvm_fpga_push_i1_push113_conv2d1x163_out_feedback_out_113),
        .out_feedback_valid_out_113(i_llvm_fpga_push_i1_push113_conv2d1x163_out_feedback_valid_out_113),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_sync_together220_aunroll_x_in_c0_eni76_10_tpl_1(DELAY,348)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together220_aunroll_x_in_c0_eni76_10_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together220_aunroll_x_in_c0_eni76_10_tpl_1_q <= $unsigned(in_c0_eni76_10_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_pop113_conv2d1x162(BLACKBOX,122)@2
    // out out_feedback_stall_out_113@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_pop113_0 thei_llvm_fpga_pop_i1_pop113_conv2d1x162 (
        .in_data_in(redist10_sync_together220_aunroll_x_in_c0_eni76_10_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q),
        .in_feedback_in_113(i_llvm_fpga_push_i1_push113_conv2d1x163_out_feedback_out_113),
        .in_feedback_valid_in_113(i_llvm_fpga_push_i1_push113_conv2d1x163_out_feedback_valid_out_113),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop113_conv2d1x162_out_data_out),
        .out_feedback_stall_out_113(i_llvm_fpga_pop_i1_pop113_conv2d1x162_out_feedback_stall_out_113),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist91_i_llvm_fpga_pop_i1_pop113_conv2d1x162_out_data_out_4(DELAY,429)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist91_i_llvm_fpga_pop_i1_pop113_conv2d1x162_out_data_out_4_delay_0 <= '0;
            redist91_i_llvm_fpga_pop_i1_pop113_conv2d1x162_out_data_out_4_delay_1 <= '0;
            redist91_i_llvm_fpga_pop_i1_pop113_conv2d1x162_out_data_out_4_delay_2 <= '0;
            redist91_i_llvm_fpga_pop_i1_pop113_conv2d1x162_out_data_out_4_q <= '0;
        end
        else
        begin
            redist91_i_llvm_fpga_pop_i1_pop113_conv2d1x162_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_pop113_conv2d1x162_out_data_out);
            redist91_i_llvm_fpga_pop_i1_pop113_conv2d1x162_out_data_out_4_delay_1 <= redist91_i_llvm_fpga_pop_i1_pop113_conv2d1x162_out_data_out_4_delay_0;
            redist91_i_llvm_fpga_pop_i1_pop113_conv2d1x162_out_data_out_4_delay_2 <= redist91_i_llvm_fpga_pop_i1_pop113_conv2d1x162_out_data_out_4_delay_1;
            redist91_i_llvm_fpga_pop_i1_pop113_conv2d1x162_out_data_out_4_q <= redist91_i_llvm_fpga_pop_i1_pop113_conv2d1x162_out_data_out_4_delay_2;
        end
    end

    // leftShiftStage0Idx1Rng2_uid329_i_shl_conv2d1x10_shift_x(BITSELECT,328)@2
    assign leftShiftStage0Idx1Rng2_uid329_i_shl_conv2d1x10_shift_x_in = i_llvm_fpga_pop_i32_k_063_pop92_conv2d1x131_out_data_out[29:0];
    assign leftShiftStage0Idx1Rng2_uid329_i_shl_conv2d1x10_shift_x_b = leftShiftStage0Idx1Rng2_uid329_i_shl_conv2d1x10_shift_x_in[29:0];

    // leftShiftStage0Idx1_uid330_i_shl_conv2d1x10_shift_x(BITJOIN,329)@2
    assign leftShiftStage0Idx1_uid330_i_shl_conv2d1x10_shift_x_q = {leftShiftStage0Idx1Rng2_uid329_i_shl_conv2d1x10_shift_x_b, i_arrayidx594_conv2d1x149_vt_const_1_q};

    // valid_fanout_reg12(REG,240)@1 + 1
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

    // valid_fanout_reg21(REG,249)@1 + 1
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

    // c_i32_1156(CONSTANT,68)
    assign c_i32_1156_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc79_conv2d1x150(ADD,100)@2
    assign i_inc79_conv2d1x150_a = {1'b0, i_llvm_fpga_pop_i32_k_063_pop92_conv2d1x131_out_data_out};
    assign i_inc79_conv2d1x150_b = {1'b0, c_i32_1156_q};
    assign i_inc79_conv2d1x150_o = $unsigned(i_inc79_conv2d1x150_a) + $unsigned(i_inc79_conv2d1x150_b);
    assign i_inc79_conv2d1x150_q = i_inc79_conv2d1x150_o[32:0];

    // bgTrunc_i_inc79_conv2d1x150_sel_x(BITSELECT,194)@2
    assign bgTrunc_i_inc79_conv2d1x150_sel_x_b = i_inc79_conv2d1x150_q[31:0];

    // i_llvm_fpga_push_i32_k_063_push92_conv2d1x151(BLACKBOX,157)@2
    // out out_feedback_out_92@20000000
    // out out_feedback_valid_out_92@20000000
    conv2d1x1_i_llvm_fpga_push_i32_k_063_push92_0 thei_llvm_fpga_push_i32_k_063_push92_conv2d1x151 (
        .in_data_in(bgTrunc_i_inc79_conv2d1x150_sel_x_b),
        .in_feedback_stall_in_92(i_llvm_fpga_pop_i32_k_063_pop92_conv2d1x131_out_feedback_stall_out_92),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_92(i_llvm_fpga_push_i32_k_063_push92_conv2d1x151_out_feedback_out_92),
        .out_feedback_valid_out_92(i_llvm_fpga_push_i32_k_063_push92_conv2d1x151_out_feedback_valid_out_92),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_0153(CONSTANT,67)
    assign c_i32_0153_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_k_063_pop92_conv2d1x131(BLACKBOX,129)@2
    // out out_feedback_stall_out_92@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_k_063_pop92_0 thei_llvm_fpga_pop_i32_k_063_pop92_conv2d1x131 (
        .in_data_in(c_i32_0153_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q),
        .in_feedback_in_92(i_llvm_fpga_push_i32_k_063_push92_conv2d1x151_out_feedback_out_92),
        .in_feedback_valid_in_92(i_llvm_fpga_push_i32_k_063_push92_conv2d1x151_out_feedback_valid_out_92),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_063_pop92_conv2d1x131_out_data_out),
        .out_feedback_stall_out_92(i_llvm_fpga_pop_i32_k_063_pop92_conv2d1x131_out_feedback_stall_out_92),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage0_uid332_i_shl_conv2d1x10_shift_x(MUX,331)@2
    assign leftShiftStage0_uid332_i_shl_conv2d1x10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid332_i_shl_conv2d1x10_shift_x_s or i_llvm_fpga_pop_i32_k_063_pop92_conv2d1x131_out_data_out or leftShiftStage0Idx1_uid330_i_shl_conv2d1x10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid332_i_shl_conv2d1x10_shift_x_s)
            1'b0 : leftShiftStage0_uid332_i_shl_conv2d1x10_shift_x_q = i_llvm_fpga_pop_i32_k_063_pop92_conv2d1x131_out_data_out;
            1'b1 : leftShiftStage0_uid332_i_shl_conv2d1x10_shift_x_q = leftShiftStage0Idx1_uid330_i_shl_conv2d1x10_shift_x_q;
            default : leftShiftStage0_uid332_i_shl_conv2d1x10_shift_x_q = 32'b0;
        endcase
    end

    // i_shl_conv2d1x132_vt_select_31(BITSELECT,180)@2
    assign i_shl_conv2d1x132_vt_select_31_b = leftShiftStage0_uid332_i_shl_conv2d1x10_shift_x_q[31:2];

    // i_shl_conv2d1x132_vt_join(BITJOIN,179)@2
    assign i_shl_conv2d1x132_vt_join_q = {i_shl_conv2d1x132_vt_select_31_b, i_arrayidx594_conv2d1x149_vt_const_1_q};

    // i_add54_conv2d1x140_BitSelect_for_a(BITSELECT,290)@2
    assign i_add54_conv2d1x140_BitSelect_for_a_b = i_shl_conv2d1x132_vt_join_q[31:2];

    // i_add54_conv2d1x140_join(BITJOIN,291)@2
    assign i_add54_conv2d1x140_join_q = {i_add54_conv2d1x140_BitSelect_for_a_b, VCC_q, VCC_q};

    // i_add54_conv2d1x140_vt_select_31(BITSELECT,78)@2
    assign i_add54_conv2d1x140_vt_select_31_b = i_add54_conv2d1x140_join_q[31:2];

    // i_add54_conv2d1x140_vt_const_1(CONSTANT,76)
    assign i_add54_conv2d1x140_vt_const_1_q = $unsigned(2'b11);

    // i_add54_conv2d1x140_vt_join(BITJOIN,77)@2
    assign i_add54_conv2d1x140_vt_join_q = {i_add54_conv2d1x140_vt_select_31_b, i_add54_conv2d1x140_vt_const_1_q};

    // i_mul56_conv2d1x143_bs2_merged_bit_select(BITSELECT,336)@2
    assign i_mul56_conv2d1x143_bs2_merged_bit_select_b = i_add54_conv2d1x140_vt_join_q[31:18];
    assign i_mul56_conv2d1x143_bs2_merged_bit_select_c = i_add54_conv2d1x140_vt_join_q[17:0];

    // valid_fanout_reg16(REG,244)@1 + 1
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

    // valid_fanout_reg17(REG,245)@1 + 1
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

    // i_llvm_fpga_push_i32_mul108_push112_conv2d1x142(BLACKBOX,158)@2
    // out out_feedback_out_112@20000000
    // out out_feedback_valid_out_112@20000000
    conv2d1x1_i_llvm_fpga_push_i32_mul108_push112_0 thei_llvm_fpga_push_i32_mul108_push112_conv2d1x142 (
        .in_data_in(i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out),
        .in_feedback_stall_in_112(i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_feedback_stall_out_112),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_112(i_llvm_fpga_push_i32_mul108_push112_conv2d1x142_out_feedback_out_112),
        .out_feedback_valid_out_112(i_llvm_fpga_push_i32_mul108_push112_conv2d1x142_out_feedback_valid_out_112),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together220_aunroll_x_in_c0_eni76_8_tpl_1(DELAY,346)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together220_aunroll_x_in_c0_eni76_8_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together220_aunroll_x_in_c0_eni76_8_tpl_1_q <= $unsigned(in_c0_eni76_8_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141(BLACKBOX,130)@2
    // out out_feedback_stall_out_112@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_mul108_pop112_0 thei_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141 (
        .in_data_in(redist8_sync_together220_aunroll_x_in_c0_eni76_8_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q),
        .in_feedback_in_112(i_llvm_fpga_push_i32_mul108_push112_conv2d1x142_out_feedback_out_112),
        .in_feedback_valid_in_112(i_llvm_fpga_push_i32_mul108_push112_conv2d1x142_out_feedback_valid_out_112),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out),
        .out_feedback_stall_out_112(i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_feedback_stall_out_112),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul56_conv2d1x143_bs1_merged_bit_select(BITSELECT,337)@2
    assign i_mul56_conv2d1x143_bs1_merged_bit_select_b = i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out[31:18];
    assign i_mul56_conv2d1x143_bs1_merged_bit_select_c = i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out[17:0];

    // i_mul56_conv2d1x143_ma3_cma(CHAINMULTADD,335)@2 + 3
    assign i_mul56_conv2d1x143_ma3_cma_reset = ~ (resetn);
    assign i_mul56_conv2d1x143_ma3_cma_ena0 = 1'b1;
    assign i_mul56_conv2d1x143_ma3_cma_ena1 = i_mul56_conv2d1x143_ma3_cma_ena0;
    assign i_mul56_conv2d1x143_ma3_cma_ena2 = i_mul56_conv2d1x143_ma3_cma_ena0;

    assign i_mul56_conv2d1x143_ma3_cma_a0 = i_mul56_conv2d1x143_bs1_merged_bit_select_b;
    assign i_mul56_conv2d1x143_ma3_cma_c0 = i_mul56_conv2d1x143_bs2_merged_bit_select_c;
    assign i_mul56_conv2d1x143_ma3_cma_a1 = i_mul56_conv2d1x143_bs2_merged_bit_select_b;
    assign i_mul56_conv2d1x143_ma3_cma_c1 = i_mul56_conv2d1x143_bs1_merged_bit_select_c;
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
    ) i_mul56_conv2d1x143_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul56_conv2d1x143_ma3_cma_ena2, i_mul56_conv2d1x143_ma3_cma_ena1, i_mul56_conv2d1x143_ma3_cma_ena0 }),
        .aclr({ i_mul56_conv2d1x143_ma3_cma_reset, i_mul56_conv2d1x143_ma3_cma_reset }),
        .ay(i_mul56_conv2d1x143_ma3_cma_a1),
        .by(i_mul56_conv2d1x143_ma3_cma_a0),
        .ax(i_mul56_conv2d1x143_ma3_cma_c1),
        .bx(i_mul56_conv2d1x143_ma3_cma_c0),
        .resulta(i_mul56_conv2d1x143_ma3_cma_s0),
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
    i_mul56_conv2d1x143_ma3_cma_delay ( .xin(i_mul56_conv2d1x143_ma3_cma_s0), .xout(i_mul56_conv2d1x143_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul56_conv2d1x143_ma3_cma_q = $unsigned(i_mul56_conv2d1x143_ma3_cma_qq[32:0]);

    // i_mul56_conv2d1x143_sums_align_1(BITSHIFT,306)@5
    assign i_mul56_conv2d1x143_sums_align_1_qint = { i_mul56_conv2d1x143_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul56_conv2d1x143_sums_align_1_q = i_mul56_conv2d1x143_sums_align_1_qint[50:0];

    // i_mul56_conv2d1x143_im0_cma(CHAINMULTADD,333)@2 + 3
    assign i_mul56_conv2d1x143_im0_cma_reset = ~ (resetn);
    assign i_mul56_conv2d1x143_im0_cma_ena0 = 1'b1;
    assign i_mul56_conv2d1x143_im0_cma_ena1 = i_mul56_conv2d1x143_im0_cma_ena0;
    assign i_mul56_conv2d1x143_im0_cma_ena2 = i_mul56_conv2d1x143_im0_cma_ena0;

    assign i_mul56_conv2d1x143_im0_cma_a0 = i_mul56_conv2d1x143_bs1_merged_bit_select_b;
    assign i_mul56_conv2d1x143_im0_cma_c0 = i_mul56_conv2d1x143_bs2_merged_bit_select_b;
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
    ) i_mul56_conv2d1x143_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul56_conv2d1x143_im0_cma_ena2, i_mul56_conv2d1x143_im0_cma_ena1, i_mul56_conv2d1x143_im0_cma_ena0 }),
        .aclr({ i_mul56_conv2d1x143_im0_cma_reset, i_mul56_conv2d1x143_im0_cma_reset }),
        .ay(i_mul56_conv2d1x143_im0_cma_a0),
        .ax(i_mul56_conv2d1x143_im0_cma_c0),
        .resulta(i_mul56_conv2d1x143_im0_cma_s0),
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
    i_mul56_conv2d1x143_im0_cma_delay ( .xin(i_mul56_conv2d1x143_im0_cma_s0), .xout(i_mul56_conv2d1x143_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul56_conv2d1x143_im0_cma_q = $unsigned(i_mul56_conv2d1x143_im0_cma_qq[27:0]);

    // i_mul56_conv2d1x143_im8_cma(CHAINMULTADD,334)@2 + 3
    assign i_mul56_conv2d1x143_im8_cma_reset = ~ (resetn);
    assign i_mul56_conv2d1x143_im8_cma_ena0 = 1'b1;
    assign i_mul56_conv2d1x143_im8_cma_ena1 = i_mul56_conv2d1x143_im8_cma_ena0;
    assign i_mul56_conv2d1x143_im8_cma_ena2 = i_mul56_conv2d1x143_im8_cma_ena0;

    assign i_mul56_conv2d1x143_im8_cma_a0 = i_mul56_conv2d1x143_bs1_merged_bit_select_c;
    assign i_mul56_conv2d1x143_im8_cma_c0 = i_mul56_conv2d1x143_bs2_merged_bit_select_c;
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
    ) i_mul56_conv2d1x143_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul56_conv2d1x143_im8_cma_ena2, i_mul56_conv2d1x143_im8_cma_ena1, i_mul56_conv2d1x143_im8_cma_ena0 }),
        .aclr({ i_mul56_conv2d1x143_im8_cma_reset, i_mul56_conv2d1x143_im8_cma_reset }),
        .ay(i_mul56_conv2d1x143_im8_cma_a0),
        .ax(i_mul56_conv2d1x143_im8_cma_c0),
        .resulta(i_mul56_conv2d1x143_im8_cma_s0),
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
    i_mul56_conv2d1x143_im8_cma_delay ( .xin(i_mul56_conv2d1x143_im8_cma_s0), .xout(i_mul56_conv2d1x143_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul56_conv2d1x143_im8_cma_q = $unsigned(i_mul56_conv2d1x143_im8_cma_qq[35:0]);

    // i_mul56_conv2d1x143_sums_join_0(BITJOIN,305)@5
    assign i_mul56_conv2d1x143_sums_join_0_q = {i_mul56_conv2d1x143_im0_cma_q, i_mul56_conv2d1x143_im8_cma_q};

    // i_mul56_conv2d1x143_sums_result_add_0_0(ADD,308)@5
    assign i_mul56_conv2d1x143_sums_result_add_0_0_a = {1'b0, i_mul56_conv2d1x143_sums_join_0_q};
    assign i_mul56_conv2d1x143_sums_result_add_0_0_b = {14'b00000000000000, i_mul56_conv2d1x143_sums_align_1_q};
    assign i_mul56_conv2d1x143_sums_result_add_0_0_o = $unsigned(i_mul56_conv2d1x143_sums_result_add_0_0_a) + $unsigned(i_mul56_conv2d1x143_sums_result_add_0_0_b);
    assign i_mul56_conv2d1x143_sums_result_add_0_0_q = i_mul56_conv2d1x143_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul56_conv2d1x143_sel_x(BITSELECT,195)@5
    assign bgTrunc_i_mul56_conv2d1x143_sel_x_in = i_mul56_conv2d1x143_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul56_conv2d1x143_sel_x_b = bgTrunc_i_mul56_conv2d1x143_sel_x_in[31:0];

    // redist80_bgTrunc_i_mul56_conv2d1x143_sel_x_b_1(DELAY,418)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist80_bgTrunc_i_mul56_conv2d1x143_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist80_bgTrunc_i_mul56_conv2d1x143_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul56_conv2d1x143_sel_x_b);
        end
    end

    // i_add57_conv2d1x146(ADD,79)@6
    assign i_add57_conv2d1x146_a = {1'b0, redist80_bgTrunc_i_mul56_conv2d1x143_sel_x_b_1_q};
    assign i_add57_conv2d1x146_b = {1'b0, redist86_i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144_out_data_out_4_outputreg0_q};
    assign i_add57_conv2d1x146_o = $unsigned(i_add57_conv2d1x146_a) + $unsigned(i_add57_conv2d1x146_b);
    assign i_add57_conv2d1x146_q = i_add57_conv2d1x146_o[32:0];

    // bgTrunc_i_add57_conv2d1x146_sel_x(BITSELECT,192)@6
    assign bgTrunc_i_add57_conv2d1x146_sel_x_b = i_add57_conv2d1x146_q[31:0];

    // i_idxprom58_conv2d1x147_sel_x(BITSELECT,216)@6
    assign i_idxprom58_conv2d1x147_sel_x_b = $unsigned({{32{bgTrunc_i_add57_conv2d1x146_sel_x_b[31]}}, bgTrunc_i_add57_conv2d1x146_sel_x_b[31:0]});

    // i_arrayidx594_conv2d1x10_narrow_x(BITSELECT,206)@6
    assign i_arrayidx594_conv2d1x10_narrow_x_b = i_idxprom58_conv2d1x147_sel_x_b[61:0];

    // i_arrayidx594_conv2d1x10_shift_join_x(BITJOIN,207)@6
    assign i_arrayidx594_conv2d1x10_shift_join_x_q = {i_arrayidx594_conv2d1x10_narrow_x_b, i_arrayidx594_conv2d1x149_vt_const_1_q};

    // valid_fanout_reg20(REG,248)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist79_sync_together220_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x148(BLACKBOX,162)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0001put_im_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x148 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x148_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x148_vt_select_63(BITSELECT,165)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x148_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x148_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x148_vt_const_9(CONSTANT,163)
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x148_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x148_vt_join(BITJOIN,164)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x148_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x148_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x148_vt_const_9_q};

    // i_arrayidx594_conv2d1x10_add_x(ADD,204)@6
    assign i_arrayidx594_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x148_vt_join_q};
    assign i_arrayidx594_conv2d1x10_add_x_b = {1'b0, i_arrayidx594_conv2d1x10_shift_join_x_q};
    assign i_arrayidx594_conv2d1x10_add_x_o = $unsigned(i_arrayidx594_conv2d1x10_add_x_a) + $unsigned(i_arrayidx594_conv2d1x10_add_x_b);
    assign i_arrayidx594_conv2d1x10_add_x_q = i_arrayidx594_conv2d1x10_add_x_o[64:0];

    // i_arrayidx594_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,209)@6
    assign i_arrayidx594_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx594_conv2d1x10_add_x_q[63:0];

    // i_arrayidx594_conv2d1x149_vt_select_63(BITSELECT,85)@6
    assign i_arrayidx594_conv2d1x149_vt_select_63_b = i_arrayidx594_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx594_conv2d1x149_vt_const_1(CONSTANT,83)
    assign i_arrayidx594_conv2d1x149_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx594_conv2d1x149_vt_join(BITJOIN,84)@6
    assign i_arrayidx594_conv2d1x149_vt_join_q = {i_arrayidx594_conv2d1x149_vt_select_63_b, i_arrayidx594_conv2d1x149_vt_const_1_q};

    // valid_fanout_reg18(REG,246)@1 + 1
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

    // valid_fanout_reg19(REG,247)@1 + 1
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

    // i_llvm_fpga_push_i32_ij_067_pop51125_push129_conv2d1x145(BLACKBOX,156)@2
    // out out_feedback_out_129@20000000
    // out out_feedback_valid_out_129@20000000
    conv2d1x1_i_llvm_fpga_push_i32_ij_067_pop51125_push129_0 thei_llvm_fpga_push_i32_ij_067_pop51125_push129_conv2d1x145 (
        .in_data_in(i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144_out_data_out),
        .in_feedback_stall_in_129(i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144_out_feedback_stall_out_129),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_129(i_llvm_fpga_push_i32_ij_067_pop51125_push129_conv2d1x145_out_feedback_out_129),
        .out_feedback_valid_out_129(i_llvm_fpga_push_i32_ij_067_pop51125_push129_conv2d1x145_out_feedback_valid_out_129),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together220_aunroll_x_in_c0_eni76_9_tpl_1(DELAY,347)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together220_aunroll_x_in_c0_eni76_9_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together220_aunroll_x_in_c0_eni76_9_tpl_1_q <= $unsigned(in_c0_eni76_9_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144(BLACKBOX,128)@2
    // out out_feedback_stall_out_129@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_0 thei_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144 (
        .in_data_in(redist9_sync_together220_aunroll_x_in_c0_eni76_9_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q),
        .in_feedback_in_129(i_llvm_fpga_push_i32_ij_067_pop51125_push129_conv2d1x145_out_feedback_out_129),
        .in_feedback_valid_in_129(i_llvm_fpga_push_i32_ij_067_pop51125_push129_conv2d1x145_out_feedback_valid_out_129),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144_out_data_out),
        .out_feedback_stall_out_129(i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144_out_feedback_stall_out_129),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist86_i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144_out_data_out_4_inputreg0(DELAY,976)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist86_i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144_out_data_out_4_inputreg0_q <= '0;
        end
        else
        begin
            redist86_i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144_out_data_out_4_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144_out_data_out);
        end
    end

    // redist86_i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144_out_data_out_4(DELAY,424)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist86_i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144_out_data_out_4_delay_0 <= '0;
            redist86_i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144_out_data_out_4_q <= '0;
        end
        else
        begin
            redist86_i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144_out_data_out_4_delay_0 <= $unsigned(redist86_i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144_out_data_out_4_inputreg0_q);
            redist86_i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144_out_data_out_4_q <= redist86_i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144_out_data_out_4_delay_0;
        end
    end

    // redist86_i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144_out_data_out_4_outputreg0(DELAY,977)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist86_i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144_out_data_out_4_outputreg0_q <= '0;
        end
        else
        begin
            redist86_i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144_out_data_out_4_outputreg0_q <= $unsigned(redist86_i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144_out_data_out_4_q);
        end
    end

    // redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_notEnable(LOGICAL,972)
    assign redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_nor(LOGICAL,973)
    assign redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_nor_q = ~ (redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_notEnable_q | redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_sticky_ena_q);

    // redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_cmpReg(REG,971)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_sticky_ena(REG,974)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_nor_q == 1'b1)
        begin
            redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_sticky_ena_q <= $unsigned(redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_cmpReg_q);
        end
    end

    // redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_enaAnd(LOGICAL,975)
    assign redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_enaAnd_q = redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_sticky_ena_q & VCC_q;

    // redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_rdcnt(COUNTER,969)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_rdcnt_i <= $unsigned(redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_rdcnt_q = redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_rdcnt_i[0:0];

    // redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_inputreg0(DELAY,967)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_inputreg0_q <= '0;
        end
        else
        begin
            redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out);
        end
    end

    // redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_wraddr(REG,970)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_wraddr_q <= $unsigned(redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_rdcnt_q);
        end
    end

    // redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_mem(DUALMEM,968)
    assign redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_mem_ia = $unsigned(redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_inputreg0_q);
    assign redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_mem_aa = redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_wraddr_q;
    assign redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_mem_ab = redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_rdcnt_q;
    assign redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_mem_reset0 = ~ (resetn);
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
    ) redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_mem_dmem (
        .clocken1(redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_mem_aa),
        .data_a(redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_mem_ab),
        .q_b(redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_mem_iq),
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
    assign redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_mem_q = redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_mem_iq[31:0];

    // i_first_cleanup_xor_or_conv2d1x139(LOGICAL,92)@6
    assign i_first_cleanup_xor_or_conv2d1x139_q = i_unnamed_conv2d1x130_q | redist108_i_first_cleanup_xor148_conv2d1x18_q_4_q;

    // valid_fanout_reg13(REG,241)@1 + 1
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

    // valid_fanout_reg14(REG,242)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_mul21114_push117_conv2d1x134(BLACKBOX,159)@2
    // out out_feedback_out_117@20000000
    // out out_feedback_valid_out_117@20000000
    conv2d1x1_i_llvm_fpga_push_i32_mul21114_push117_0 thei_llvm_fpga_push_i32_mul21114_push117_conv2d1x134 (
        .in_data_in(i_llvm_fpga_pop_i32_mul21114_pop117_conv2d1x133_out_data_out),
        .in_feedback_stall_in_117(i_llvm_fpga_pop_i32_mul21114_pop117_conv2d1x133_out_feedback_stall_out_117),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_117(i_llvm_fpga_push_i32_mul21114_push117_conv2d1x134_out_feedback_out_117),
        .out_feedback_valid_out_117(i_llvm_fpga_push_i32_mul21114_push117_conv2d1x134_out_feedback_valid_out_117),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together220_aunroll_x_in_c0_eni76_7_tpl_1(DELAY,345)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together220_aunroll_x_in_c0_eni76_7_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together220_aunroll_x_in_c0_eni76_7_tpl_1_q <= $unsigned(in_c0_eni76_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul21114_pop117_conv2d1x133(BLACKBOX,131)@2
    // out out_feedback_stall_out_117@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_mul21114_pop117_0 thei_llvm_fpga_pop_i32_mul21114_pop117_conv2d1x133 (
        .in_data_in(redist7_sync_together220_aunroll_x_in_c0_eni76_7_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q),
        .in_feedback_in_117(i_llvm_fpga_push_i32_mul21114_push117_conv2d1x134_out_feedback_out_117),
        .in_feedback_valid_in_117(i_llvm_fpga_push_i32_mul21114_push117_conv2d1x134_out_feedback_valid_out_117),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul21114_pop117_conv2d1x133_out_data_out),
        .out_feedback_stall_out_117(i_llvm_fpga_pop_i32_mul21114_pop117_conv2d1x133_out_feedback_stall_out_117),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add22_conv2d1x135(ADD,74)@2
    assign i_add22_conv2d1x135_a = {1'b0, i_llvm_fpga_pop_i32_k_063_pop92_conv2d1x131_out_data_out};
    assign i_add22_conv2d1x135_b = {1'b0, i_llvm_fpga_pop_i32_mul21114_pop117_conv2d1x133_out_data_out};
    assign i_add22_conv2d1x135_o = $unsigned(i_add22_conv2d1x135_a) + $unsigned(i_add22_conv2d1x135_b);
    assign i_add22_conv2d1x135_q = i_add22_conv2d1x135_o[32:0];

    // bgTrunc_i_add22_conv2d1x135_sel_x(BITSELECT,191)@2
    assign bgTrunc_i_add22_conv2d1x135_sel_x_b = i_add22_conv2d1x135_q[31:0];

    // redist81_bgTrunc_i_add22_conv2d1x135_sel_x_b_4_inputreg0(DELAY,947)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist81_bgTrunc_i_add22_conv2d1x135_sel_x_b_4_inputreg0_q <= '0;
        end
        else
        begin
            redist81_bgTrunc_i_add22_conv2d1x135_sel_x_b_4_inputreg0_q <= $unsigned(bgTrunc_i_add22_conv2d1x135_sel_x_b);
        end
    end

    // redist81_bgTrunc_i_add22_conv2d1x135_sel_x_b_4(DELAY,419)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist81_bgTrunc_i_add22_conv2d1x135_sel_x_b_4_delay_0 <= '0;
            redist81_bgTrunc_i_add22_conv2d1x135_sel_x_b_4_q <= '0;
        end
        else
        begin
            redist81_bgTrunc_i_add22_conv2d1x135_sel_x_b_4_delay_0 <= $unsigned(redist81_bgTrunc_i_add22_conv2d1x135_sel_x_b_4_inputreg0_q);
            redist81_bgTrunc_i_add22_conv2d1x135_sel_x_b_4_q <= redist81_bgTrunc_i_add22_conv2d1x135_sel_x_b_4_delay_0;
        end
    end

    // redist81_bgTrunc_i_add22_conv2d1x135_sel_x_b_4_outputreg0(DELAY,948)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist81_bgTrunc_i_add22_conv2d1x135_sel_x_b_4_outputreg0_q <= '0;
        end
        else
        begin
            redist81_bgTrunc_i_add22_conv2d1x135_sel_x_b_4_outputreg0_q <= $unsigned(redist81_bgTrunc_i_add22_conv2d1x135_sel_x_b_4_q);
        end
    end

    // i_idxprom23_conv2d1x136_sel_x(BITSELECT,215)@6
    assign i_idxprom23_conv2d1x136_sel_x_b = $unsigned({{32{redist81_bgTrunc_i_add22_conv2d1x135_sel_x_b_4_outputreg0_q[31]}}, redist81_bgTrunc_i_add22_conv2d1x135_sel_x_b_4_outputreg0_q[31:0]});

    // i_arrayidx243_conv2d1x10_narrow_x(BITSELECT,200)@6
    assign i_arrayidx243_conv2d1x10_narrow_x_b = i_idxprom23_conv2d1x136_sel_x_b[59:0];

    // i_arrayidx243_conv2d1x10_shift_join_x(BITJOIN,201)@6
    assign i_arrayidx243_conv2d1x10_shift_join_x_q = {i_arrayidx243_conv2d1x10_narrow_x_b, i_arrayidx243_conv2d1x138_vt_const_3_q};

    // valid_fanout_reg15(REG,243)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist79_sync_together220_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x137(BLACKBOX,166)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024v0000weight_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x137 (
        .in_buffer_in(in_filter_weight),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x137_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x137_vt_select_63(BITSELECT,169)@6
    assign i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x137_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x137_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x137_vt_join(BITJOIN,168)@6
    assign i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x137_vt_join_q = {i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x137_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x148_vt_const_9_q};

    // i_arrayidx243_conv2d1x10_add_x(ADD,198)@6
    assign i_arrayidx243_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x137_vt_join_q};
    assign i_arrayidx243_conv2d1x10_add_x_b = {1'b0, i_arrayidx243_conv2d1x10_shift_join_x_q};
    assign i_arrayidx243_conv2d1x10_add_x_o = $unsigned(i_arrayidx243_conv2d1x10_add_x_a) + $unsigned(i_arrayidx243_conv2d1x10_add_x_b);
    assign i_arrayidx243_conv2d1x10_add_x_q = i_arrayidx243_conv2d1x10_add_x_o[64:0];

    // i_arrayidx243_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,203)@6
    assign i_arrayidx243_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx243_conv2d1x10_add_x_q[63:0];

    // i_arrayidx243_conv2d1x138_vt_select_63(BITSELECT,82)@6
    assign i_arrayidx243_conv2d1x138_vt_select_63_b = i_arrayidx243_conv2d1x10_dupName_0_trunc_sel_x_b[63:4];

    // i_arrayidx243_conv2d1x138_vt_const_3(CONSTANT,80)
    assign i_arrayidx243_conv2d1x138_vt_const_3_q = $unsigned(4'b0000);

    // i_arrayidx243_conv2d1x138_vt_join(BITJOIN,81)@6
    assign i_arrayidx243_conv2d1x138_vt_join_q = {i_arrayidx243_conv2d1x138_vt_select_63_b, i_arrayidx243_conv2d1x138_vt_const_3_q};

    // redist82_i_shl_conv2d1x132_vt_join_q_4_notEnable(LOGICAL,954)
    assign redist82_i_shl_conv2d1x132_vt_join_q_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist82_i_shl_conv2d1x132_vt_join_q_4_nor(LOGICAL,955)
    assign redist82_i_shl_conv2d1x132_vt_join_q_4_nor_q = ~ (redist82_i_shl_conv2d1x132_vt_join_q_4_notEnable_q | redist82_i_shl_conv2d1x132_vt_join_q_4_sticky_ena_q);

    // redist82_i_shl_conv2d1x132_vt_join_q_4_cmpReg(REG,953)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist82_i_shl_conv2d1x132_vt_join_q_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist82_i_shl_conv2d1x132_vt_join_q_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist82_i_shl_conv2d1x132_vt_join_q_4_sticky_ena(REG,956)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist82_i_shl_conv2d1x132_vt_join_q_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist82_i_shl_conv2d1x132_vt_join_q_4_nor_q == 1'b1)
        begin
            redist82_i_shl_conv2d1x132_vt_join_q_4_sticky_ena_q <= $unsigned(redist82_i_shl_conv2d1x132_vt_join_q_4_cmpReg_q);
        end
    end

    // redist82_i_shl_conv2d1x132_vt_join_q_4_enaAnd(LOGICAL,957)
    assign redist82_i_shl_conv2d1x132_vt_join_q_4_enaAnd_q = redist82_i_shl_conv2d1x132_vt_join_q_4_sticky_ena_q & VCC_q;

    // redist82_i_shl_conv2d1x132_vt_join_q_4_rdcnt(COUNTER,951)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist82_i_shl_conv2d1x132_vt_join_q_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist82_i_shl_conv2d1x132_vt_join_q_4_rdcnt_i <= $unsigned(redist82_i_shl_conv2d1x132_vt_join_q_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist82_i_shl_conv2d1x132_vt_join_q_4_rdcnt_q = redist82_i_shl_conv2d1x132_vt_join_q_4_rdcnt_i[0:0];

    // redist82_i_shl_conv2d1x132_vt_join_q_4_inputreg0(DELAY,949)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist82_i_shl_conv2d1x132_vt_join_q_4_inputreg0_q <= '0;
        end
        else
        begin
            redist82_i_shl_conv2d1x132_vt_join_q_4_inputreg0_q <= $unsigned(i_shl_conv2d1x132_vt_join_q);
        end
    end

    // redist82_i_shl_conv2d1x132_vt_join_q_4_wraddr(REG,952)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist82_i_shl_conv2d1x132_vt_join_q_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist82_i_shl_conv2d1x132_vt_join_q_4_wraddr_q <= $unsigned(redist82_i_shl_conv2d1x132_vt_join_q_4_rdcnt_q);
        end
    end

    // redist82_i_shl_conv2d1x132_vt_join_q_4_mem(DUALMEM,950)
    assign redist82_i_shl_conv2d1x132_vt_join_q_4_mem_ia = $unsigned(redist82_i_shl_conv2d1x132_vt_join_q_4_inputreg0_q);
    assign redist82_i_shl_conv2d1x132_vt_join_q_4_mem_aa = redist82_i_shl_conv2d1x132_vt_join_q_4_wraddr_q;
    assign redist82_i_shl_conv2d1x132_vt_join_q_4_mem_ab = redist82_i_shl_conv2d1x132_vt_join_q_4_rdcnt_q;
    assign redist82_i_shl_conv2d1x132_vt_join_q_4_mem_reset0 = ~ (resetn);
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
    ) redist82_i_shl_conv2d1x132_vt_join_q_4_mem_dmem (
        .clocken1(redist82_i_shl_conv2d1x132_vt_join_q_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist82_i_shl_conv2d1x132_vt_join_q_4_mem_reset0),
        .clock1(clock),
        .address_a(redist82_i_shl_conv2d1x132_vt_join_q_4_mem_aa),
        .data_a(redist82_i_shl_conv2d1x132_vt_join_q_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist82_i_shl_conv2d1x132_vt_join_q_4_mem_ab),
        .q_b(redist82_i_shl_conv2d1x132_vt_join_q_4_mem_iq),
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
    assign redist82_i_shl_conv2d1x132_vt_join_q_4_mem_q = redist82_i_shl_conv2d1x132_vt_join_q_4_mem_iq[31:0];

    // i_unnamed_conv2d1x130(LOGICAL,181)@6
    assign i_unnamed_conv2d1x130_q = redist90_i_llvm_fpga_pop_i1_pop114_conv2d1x128_out_data_out_4_q ^ VCC_q;

    // redist90_i_llvm_fpga_pop_i1_pop114_conv2d1x128_out_data_out_4(DELAY,428)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist90_i_llvm_fpga_pop_i1_pop114_conv2d1x128_out_data_out_4_delay_0 <= '0;
            redist90_i_llvm_fpga_pop_i1_pop114_conv2d1x128_out_data_out_4_delay_1 <= '0;
            redist90_i_llvm_fpga_pop_i1_pop114_conv2d1x128_out_data_out_4_q <= '0;
        end
        else
        begin
            redist90_i_llvm_fpga_pop_i1_pop114_conv2d1x128_out_data_out_4_delay_0 <= $unsigned(redist89_i_llvm_fpga_pop_i1_pop114_conv2d1x128_out_data_out_1_q);
            redist90_i_llvm_fpga_pop_i1_pop114_conv2d1x128_out_data_out_4_delay_1 <= redist90_i_llvm_fpga_pop_i1_pop114_conv2d1x128_out_data_out_4_delay_0;
            redist90_i_llvm_fpga_pop_i1_pop114_conv2d1x128_out_data_out_4_q <= redist90_i_llvm_fpga_pop_i1_pop114_conv2d1x128_out_data_out_4_delay_1;
        end
    end

    // valid_fanout_reg7(REG,235)@1 + 1
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

    // valid_fanout_reg8(REG,236)@1 + 1
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

    // i_llvm_fpga_push_i1_push119_conv2d1x119(BLACKBOX,152)@2
    // out out_feedback_out_119@20000000
    // out out_feedback_valid_out_119@20000000
    conv2d1x1_i_llvm_fpga_push_i1_push119_0 thei_llvm_fpga_push_i1_push119_conv2d1x119 (
        .in_data_in(i_llvm_fpga_pop_i1_pop119_conv2d1x118_out_data_out),
        .in_feedback_stall_in_119(i_llvm_fpga_pop_i1_pop119_conv2d1x118_out_feedback_stall_out_119),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_119(i_llvm_fpga_push_i1_push119_conv2d1x119_out_feedback_out_119),
        .out_feedback_valid_out_119(i_llvm_fpga_push_i1_push119_conv2d1x119_out_feedback_valid_out_119),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together220_aunroll_x_in_c0_eni76_5_tpl_1(DELAY,343)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together220_aunroll_x_in_c0_eni76_5_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together220_aunroll_x_in_c0_eni76_5_tpl_1_q <= $unsigned(in_c0_eni76_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_pop119_conv2d1x118(BLACKBOX,124)@2
    // out out_feedback_stall_out_119@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_pop119_0 thei_llvm_fpga_pop_i1_pop119_conv2d1x118 (
        .in_data_in(redist5_sync_together220_aunroll_x_in_c0_eni76_5_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q),
        .in_feedback_in_119(i_llvm_fpga_push_i1_push119_conv2d1x119_out_feedback_out_119),
        .in_feedback_valid_in_119(i_llvm_fpga_push_i1_push119_conv2d1x119_out_feedback_valid_out_119),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop119_conv2d1x118_out_data_out),
        .out_feedback_stall_out_119(i_llvm_fpga_pop_i1_pop119_conv2d1x118_out_feedback_stall_out_119),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist88_i_llvm_fpga_pop_i1_pop119_conv2d1x118_out_data_out_4(DELAY,426)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist88_i_llvm_fpga_pop_i1_pop119_conv2d1x118_out_data_out_4_delay_0 <= '0;
            redist88_i_llvm_fpga_pop_i1_pop119_conv2d1x118_out_data_out_4_delay_1 <= '0;
            redist88_i_llvm_fpga_pop_i1_pop119_conv2d1x118_out_data_out_4_delay_2 <= '0;
            redist88_i_llvm_fpga_pop_i1_pop119_conv2d1x118_out_data_out_4_q <= '0;
        end
        else
        begin
            redist88_i_llvm_fpga_pop_i1_pop119_conv2d1x118_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_pop119_conv2d1x118_out_data_out);
            redist88_i_llvm_fpga_pop_i1_pop119_conv2d1x118_out_data_out_4_delay_1 <= redist88_i_llvm_fpga_pop_i1_pop119_conv2d1x118_out_data_out_4_delay_0;
            redist88_i_llvm_fpga_pop_i1_pop119_conv2d1x118_out_data_out_4_delay_2 <= redist88_i_llvm_fpga_pop_i1_pop119_conv2d1x118_out_data_out_4_delay_1;
            redist88_i_llvm_fpga_pop_i1_pop119_conv2d1x118_out_data_out_4_q <= redist88_i_llvm_fpga_pop_i1_pop119_conv2d1x118_out_data_out_4_delay_2;
        end
    end

    // valid_fanout_reg5(REG,233)@1 + 1
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

    // valid_fanout_reg6(REG,234)@1 + 1
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

    // i_llvm_fpga_push_i1_push126_conv2d1x116(BLACKBOX,153)@2
    // out out_feedback_out_126@20000000
    // out out_feedback_valid_out_126@20000000
    conv2d1x1_i_llvm_fpga_push_i1_push126_0 thei_llvm_fpga_push_i1_push126_conv2d1x116 (
        .in_data_in(i_llvm_fpga_pop_i1_pop126_conv2d1x115_out_data_out),
        .in_feedback_stall_in_126(i_llvm_fpga_pop_i1_pop126_conv2d1x115_out_feedback_stall_out_126),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_126(i_llvm_fpga_push_i1_push126_conv2d1x116_out_feedback_out_126),
        .out_feedback_valid_out_126(i_llvm_fpga_push_i1_push126_conv2d1x116_out_feedback_valid_out_126),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together220_aunroll_x_in_c0_eni76_4_tpl_1(DELAY,342)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together220_aunroll_x_in_c0_eni76_4_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together220_aunroll_x_in_c0_eni76_4_tpl_1_q <= $unsigned(in_c0_eni76_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_pop126_conv2d1x115(BLACKBOX,125)@2
    // out out_feedback_stall_out_126@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_pop126_0 thei_llvm_fpga_pop_i1_pop126_conv2d1x115 (
        .in_data_in(redist4_sync_together220_aunroll_x_in_c0_eni76_4_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q),
        .in_feedback_in_126(i_llvm_fpga_push_i1_push126_conv2d1x116_out_feedback_out_126),
        .in_feedback_valid_in_126(i_llvm_fpga_push_i1_push126_conv2d1x116_out_feedback_valid_out_126),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop126_conv2d1x115_out_data_out),
        .out_feedback_stall_out_126(i_llvm_fpga_pop_i1_pop126_conv2d1x115_out_feedback_stall_out_126),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist87_i_llvm_fpga_pop_i1_pop126_conv2d1x115_out_data_out_4(DELAY,425)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist87_i_llvm_fpga_pop_i1_pop126_conv2d1x115_out_data_out_4_delay_0 <= '0;
            redist87_i_llvm_fpga_pop_i1_pop126_conv2d1x115_out_data_out_4_delay_1 <= '0;
            redist87_i_llvm_fpga_pop_i1_pop126_conv2d1x115_out_data_out_4_delay_2 <= '0;
            redist87_i_llvm_fpga_pop_i1_pop126_conv2d1x115_out_data_out_4_q <= '0;
        end
        else
        begin
            redist87_i_llvm_fpga_pop_i1_pop126_conv2d1x115_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_pop126_conv2d1x115_out_data_out);
            redist87_i_llvm_fpga_pop_i1_pop126_conv2d1x115_out_data_out_4_delay_1 <= redist87_i_llvm_fpga_pop_i1_pop126_conv2d1x115_out_data_out_4_delay_0;
            redist87_i_llvm_fpga_pop_i1_pop126_conv2d1x115_out_data_out_4_delay_2 <= redist87_i_llvm_fpga_pop_i1_pop126_conv2d1x115_out_data_out_4_delay_1;
            redist87_i_llvm_fpga_pop_i1_pop126_conv2d1x115_out_data_out_4_q <= redist87_i_llvm_fpga_pop_i1_pop126_conv2d1x115_out_data_out_4_delay_2;
        end
    end

    // redist103_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_4(DELAY,441)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist103_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_4_delay_0 <= '0;
            redist103_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_4_q <= '0;
        end
        else
        begin
            redist103_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_4_delay_0 <= $unsigned(redist102_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_2_q);
            redist103_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_4_q <= redist103_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_4_delay_0;
        end
    end

    // i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor855_conv2d1x111(REG,104)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor855_conv2d1x111_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor855_conv2d1x111_q <= redist103_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_4_q;
        end
    end

    // i_keep_going_or_conv2d1x117(LOGICAL,101)@6
    assign i_keep_going_or_conv2d1x117_q = i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor855_conv2d1x111_q | redist87_i_llvm_fpga_pop_i1_pop126_conv2d1x115_out_data_out_4_q;

    // redist104_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_5(DELAY,442)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist104_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_5_q <= '0;
        end
        else
        begin
            redist104_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_5_q <= $unsigned(redist103_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_4_q);
        end
    end

    // redist108_i_first_cleanup_xor148_conv2d1x18_q_4(DELAY,446)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist108_i_first_cleanup_xor148_conv2d1x18_q_4_delay_0 <= '0;
            redist108_i_first_cleanup_xor148_conv2d1x18_q_4_delay_1 <= '0;
            redist108_i_first_cleanup_xor148_conv2d1x18_q_4_delay_2 <= '0;
            redist108_i_first_cleanup_xor148_conv2d1x18_q_4_q <= '0;
        end
        else
        begin
            redist108_i_first_cleanup_xor148_conv2d1x18_q_4_delay_0 <= $unsigned(i_first_cleanup_xor148_conv2d1x18_q);
            redist108_i_first_cleanup_xor148_conv2d1x18_q_4_delay_1 <= redist108_i_first_cleanup_xor148_conv2d1x18_q_4_delay_0;
            redist108_i_first_cleanup_xor148_conv2d1x18_q_4_delay_2 <= redist108_i_first_cleanup_xor148_conv2d1x18_q_4_delay_1;
            redist108_i_first_cleanup_xor148_conv2d1x18_q_4_q <= redist108_i_first_cleanup_xor148_conv2d1x18_q_4_delay_2;
        end
    end

    // valid_fanout_reg2(REG,230)@1 + 1
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

    // valid_fanout_reg4(REG,232)@1 + 1
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

    // i_llvm_fpga_push_i1_forked17106_push111_conv2d1x114(BLACKBOX,141)@2
    // out out_feedback_out_111@20000000
    // out out_feedback_valid_out_111@20000000
    conv2d1x1_i_llvm_fpga_push_i1_forked17106_push111_0 thei_llvm_fpga_push_i1_forked17106_push111_conv2d1x114 (
        .in_data_in(i_llvm_fpga_pop_i1_forked17106_pop111_conv2d1x15_out_data_out),
        .in_feedback_stall_in_111(i_llvm_fpga_pop_i1_forked17106_pop111_conv2d1x15_out_feedback_stall_out_111),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_111(i_llvm_fpga_push_i1_forked17106_push111_conv2d1x114_out_feedback_out_111),
        .out_feedback_valid_out_111(i_llvm_fpga_push_i1_forked17106_push111_conv2d1x114_out_feedback_valid_out_111),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together220_aunroll_x_in_c0_eni76_3_tpl_1(DELAY,341)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together220_aunroll_x_in_c0_eni76_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together220_aunroll_x_in_c0_eni76_3_tpl_1_q <= $unsigned(in_c0_eni76_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_forked17106_pop111_conv2d1x15(BLACKBOX,115)@2
    // out out_feedback_stall_out_111@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_forked17106_pop111_0 thei_llvm_fpga_pop_i1_forked17106_pop111_conv2d1x15 (
        .in_data_in(redist3_sync_together220_aunroll_x_in_c0_eni76_3_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q),
        .in_feedback_in_111(i_llvm_fpga_push_i1_forked17106_push111_conv2d1x114_out_feedback_out_111),
        .in_feedback_valid_in_111(i_llvm_fpga_push_i1_forked17106_push111_conv2d1x114_out_feedback_valid_out_111),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked17106_pop111_conv2d1x15_out_data_out),
        .out_feedback_stall_out_111(i_llvm_fpga_pop_i1_forked17106_pop111_conv2d1x15_out_feedback_stall_out_111),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist98_i_llvm_fpga_pop_i1_forked17106_pop111_conv2d1x15_out_data_out_4(DELAY,436)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist98_i_llvm_fpga_pop_i1_forked17106_pop111_conv2d1x15_out_data_out_4_delay_0 <= '0;
            redist98_i_llvm_fpga_pop_i1_forked17106_pop111_conv2d1x15_out_data_out_4_delay_1 <= '0;
            redist98_i_llvm_fpga_pop_i1_forked17106_pop111_conv2d1x15_out_data_out_4_delay_2 <= '0;
            redist98_i_llvm_fpga_pop_i1_forked17106_pop111_conv2d1x15_out_data_out_4_q <= '0;
        end
        else
        begin
            redist98_i_llvm_fpga_pop_i1_forked17106_pop111_conv2d1x15_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_forked17106_pop111_conv2d1x15_out_data_out);
            redist98_i_llvm_fpga_pop_i1_forked17106_pop111_conv2d1x15_out_data_out_4_delay_1 <= redist98_i_llvm_fpga_pop_i1_forked17106_pop111_conv2d1x15_out_data_out_4_delay_0;
            redist98_i_llvm_fpga_pop_i1_forked17106_pop111_conv2d1x15_out_data_out_4_delay_2 <= redist98_i_llvm_fpga_pop_i1_forked17106_pop111_conv2d1x15_out_data_out_4_delay_1;
            redist98_i_llvm_fpga_pop_i1_forked17106_pop111_conv2d1x15_out_data_out_4_q <= redist98_i_llvm_fpga_pop_i1_forked17106_pop111_conv2d1x15_out_data_out_4_delay_2;
        end
    end

    // valid_fanout_reg1(REG,229)@1 + 1
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

    // valid_fanout_reg3(REG,231)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist77_sync_together220_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_forked59121_push124_conv2d1x113(BLACKBOX,142)@3
    // out out_feedback_out_124@20000000
    // out out_feedback_valid_out_124@20000000
    conv2d1x1_i_llvm_fpga_push_i1_forked59121_push124_0 thei_llvm_fpga_push_i1_forked59121_push124_conv2d1x113 (
        .in_data_in(redist96_i_llvm_fpga_pop_i1_forked59121_pop124_conv2d1x13_out_data_out_1_q),
        .in_feedback_stall_in_124(i_llvm_fpga_pop_i1_forked59121_pop124_conv2d1x13_out_feedback_stall_out_124),
        .in_keep_going_fanout_adaptor(redist105_i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_124(i_llvm_fpga_push_i1_forked59121_push124_conv2d1x113_out_feedback_out_124),
        .out_feedback_valid_out_124(i_llvm_fpga_push_i1_forked59121_push124_conv2d1x113_out_feedback_valid_out_124),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together220_aunroll_x_in_c0_eni76_1_tpl_1(DELAY,338)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together220_aunroll_x_in_c0_eni76_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together220_aunroll_x_in_c0_eni76_1_tpl_1_q <= $unsigned(in_c0_eni76_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_forked59121_pop124_conv2d1x13(BLACKBOX,116)@2
    // out out_feedback_stall_out_124@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_forked59121_pop124_0 thei_llvm_fpga_pop_i1_forked59121_pop124_conv2d1x13 (
        .in_data_in(redist0_sync_together220_aunroll_x_in_c0_eni76_1_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q),
        .in_feedback_in_124(i_llvm_fpga_push_i1_forked59121_push124_conv2d1x113_out_feedback_out_124),
        .in_feedback_valid_in_124(i_llvm_fpga_push_i1_forked59121_push124_conv2d1x113_out_feedback_valid_out_124),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked59121_pop124_conv2d1x13_out_data_out),
        .out_feedback_stall_out_124(i_llvm_fpga_pop_i1_forked59121_pop124_conv2d1x13_out_feedback_stall_out_124),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist96_i_llvm_fpga_pop_i1_forked59121_pop124_conv2d1x13_out_data_out_1(DELAY,434)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist96_i_llvm_fpga_pop_i1_forked59121_pop124_conv2d1x13_out_data_out_1_q <= '0;
        end
        else
        begin
            redist96_i_llvm_fpga_pop_i1_forked59121_pop124_conv2d1x13_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_forked59121_pop124_conv2d1x13_out_data_out);
        end
    end

    // redist97_i_llvm_fpga_pop_i1_forked59121_pop124_conv2d1x13_out_data_out_4(DELAY,435)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist97_i_llvm_fpga_pop_i1_forked59121_pop124_conv2d1x13_out_data_out_4_delay_0 <= '0;
            redist97_i_llvm_fpga_pop_i1_forked59121_pop124_conv2d1x13_out_data_out_4_delay_1 <= '0;
            redist97_i_llvm_fpga_pop_i1_forked59121_pop124_conv2d1x13_out_data_out_4_q <= '0;
        end
        else
        begin
            redist97_i_llvm_fpga_pop_i1_forked59121_pop124_conv2d1x13_out_data_out_4_delay_0 <= $unsigned(redist96_i_llvm_fpga_pop_i1_forked59121_pop124_conv2d1x13_out_data_out_1_q);
            redist97_i_llvm_fpga_pop_i1_forked59121_pop124_conv2d1x13_out_data_out_4_delay_1 <= redist97_i_llvm_fpga_pop_i1_forked59121_pop124_conv2d1x13_out_data_out_4_delay_0;
            redist97_i_llvm_fpga_pop_i1_forked59121_pop124_conv2d1x13_out_data_out_4_q <= redist97_i_llvm_fpga_pop_i1_forked59121_pop124_conv2d1x13_out_data_out_4_delay_1;
        end
    end

    // i_forked_and_conv2d1x14(LOGICAL,93)@6
    assign i_forked_and_conv2d1x14_q = redist107_i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q_4_q & redist97_i_llvm_fpga_pop_i1_forked59121_pop124_conv2d1x13_out_data_out_4_q;

    // sync_out_aunroll_x(GPOUT,226)@6
    assign out_c0_exi82_0_tpl = GND_q;
    assign out_c0_exi82_1_tpl = i_forked_and_conv2d1x14_q;
    assign out_c0_exi82_2_tpl = redist98_i_llvm_fpga_pop_i1_forked17106_pop111_conv2d1x15_out_data_out_4_q;
    assign out_c0_exi82_3_tpl = redist108_i_first_cleanup_xor148_conv2d1x18_q_4_q;
    assign out_c0_exi82_4_tpl = redist104_i_llvm_fpga_pipeline_keep_going_conv2d1x110_out_data_out_5_q;
    assign out_c0_exi82_5_tpl = i_keep_going_or_conv2d1x117_q;
    assign out_c0_exi82_6_tpl = redist88_i_llvm_fpga_pop_i1_pop119_conv2d1x118_out_data_out_4_q;
    assign out_c0_exi82_7_tpl = redist90_i_llvm_fpga_pop_i1_pop114_conv2d1x128_out_data_out_4_q;
    assign out_c0_exi82_8_tpl = i_unnamed_conv2d1x130_q;
    assign out_c0_exi82_9_tpl = redist82_i_shl_conv2d1x132_vt_join_q_4_mem_q;
    assign out_c0_exi82_10_tpl = i_arrayidx243_conv2d1x138_vt_join_q;
    assign out_c0_exi82_11_tpl = i_first_cleanup_xor_or_conv2d1x139_q;
    assign out_c0_exi82_12_tpl = redist85_i_llvm_fpga_pop_i32_mul108_pop112_conv2d1x141_out_data_out_4_mem_q;
    assign out_c0_exi82_13_tpl = redist86_i_llvm_fpga_pop_i32_ij_067_pop51125_pop129_conv2d1x144_out_data_out_4_outputreg0_q;
    assign out_c0_exi82_14_tpl = i_arrayidx594_conv2d1x149_vt_join_q;
    assign out_c0_exi82_15_tpl = redist91_i_llvm_fpga_pop_i1_pop113_conv2d1x162_out_data_out_4_q;
    assign out_c0_exi82_16_tpl = redist83_i_masked_conv2d1x164_q_4_q;
    assign out_c0_exi82_17_tpl = redist100_i_llvm_fpga_pop_f32_lm96112_pop116_conv2d1x173_out_data_out_4_mem_q;
    assign out_c0_exi82_18_tpl = redist84_i_llvm_fpga_pop_i32_mul97116_pop118_conv2d1x175_out_data_out_4_mem_q;
    assign out_c0_exi82_19_tpl = redist93_i_llvm_fpga_pop_i1_notcmp24118_pop120_conv2d1x177_out_data_out_4_q;
    assign out_c0_exi82_20_tpl = i_llvm_fpga_pop_f32_pop121_conv2d1x179_out_data_out;
    assign out_c0_exi82_21_tpl = i_llvm_fpga_pop_f32_mul38_le207119_pop122_conv2d1x181_out_data_out;
    assign out_c0_exi82_22_tpl = i_llvm_fpga_pop_f32_mul51_le205120_pop123_conv2d1x183_out_data_out;
    assign out_c0_exi82_23_tpl = redist95_i_llvm_fpga_pop_i1_forked59_and122_pop125_conv2d1x185_out_data_out_4_q;
    assign out_c0_exi82_24_tpl = redist92_i_llvm_fpga_pop_i1_or123_pop127_conv2d1x187_out_data_out_4_q;
    assign out_c0_exi82_25_tpl = redist94_i_llvm_fpga_pop_i1_notcmp19124_pop128_conv2d1x189_out_data_out_4_q;
    assign out_c0_exi82_26_tpl = redist2_sync_together220_aunroll_x_in_c0_eni76_2_tpl_5_q;
    assign out_c0_exi82_27_tpl = redist24_sync_together220_aunroll_x_in_c0_eni76_24_tpl_5_mem_q;
    assign out_c0_exi82_28_tpl = redist25_sync_together220_aunroll_x_in_c0_eni76_25_tpl_5_mem_q;
    assign out_c0_exi82_29_tpl = redist26_sync_together220_aunroll_x_in_c0_eni76_26_tpl_5_mem_q;
    assign out_c0_exi82_30_tpl = redist27_sync_together220_aunroll_x_in_c0_eni76_27_tpl_5_mem_q;
    assign out_c0_exi82_31_tpl = redist28_sync_together220_aunroll_x_in_c0_eni76_28_tpl_5_mem_q;
    assign out_c0_exi82_32_tpl = redist29_sync_together220_aunroll_x_in_c0_eni76_29_tpl_5_mem_q;
    assign out_c0_exi82_33_tpl = redist30_sync_together220_aunroll_x_in_c0_eni76_30_tpl_5_mem_q;
    assign out_c0_exi82_34_tpl = redist31_sync_together220_aunroll_x_in_c0_eni76_31_tpl_5_mem_q;
    assign out_c0_exi82_35_tpl = redist32_sync_together220_aunroll_x_in_c0_eni76_32_tpl_5_mem_q;
    assign out_c0_exi82_36_tpl = redist33_sync_together220_aunroll_x_in_c0_eni76_33_tpl_5_mem_q;
    assign out_c0_exi82_37_tpl = redist34_sync_together220_aunroll_x_in_c0_eni76_34_tpl_5_mem_q;
    assign out_c0_exi82_38_tpl = redist35_sync_together220_aunroll_x_in_c0_eni76_35_tpl_5_mem_q;
    assign out_c0_exi82_39_tpl = redist36_sync_together220_aunroll_x_in_c0_eni76_36_tpl_5_mem_q;
    assign out_c0_exi82_40_tpl = redist37_sync_together220_aunroll_x_in_c0_eni76_37_tpl_5_mem_q;
    assign out_c0_exi82_41_tpl = redist38_sync_together220_aunroll_x_in_c0_eni76_38_tpl_5_mem_q;
    assign out_c0_exi82_42_tpl = redist39_sync_together220_aunroll_x_in_c0_eni76_39_tpl_5_mem_q;
    assign out_c0_exi82_43_tpl = redist40_sync_together220_aunroll_x_in_c0_eni76_40_tpl_5_q;
    assign out_c0_exi82_44_tpl = redist41_sync_together220_aunroll_x_in_c0_eni76_41_tpl_5_mem_q;
    assign out_c0_exi82_45_tpl = redist42_sync_together220_aunroll_x_in_c0_eni76_42_tpl_5_q;
    assign out_c0_exi82_46_tpl = redist43_sync_together220_aunroll_x_in_c0_eni76_43_tpl_5_q;
    assign out_c0_exi82_47_tpl = redist44_sync_together220_aunroll_x_in_c0_eni76_44_tpl_5_q;
    assign out_c0_exi82_48_tpl = redist45_sync_together220_aunroll_x_in_c0_eni76_45_tpl_5_mem_q;
    assign out_c0_exi82_49_tpl = redist46_sync_together220_aunroll_x_in_c0_eni76_46_tpl_5_mem_q;
    assign out_c0_exi82_50_tpl = redist47_sync_together220_aunroll_x_in_c0_eni76_47_tpl_5_mem_q;
    assign out_c0_exi82_51_tpl = redist48_sync_together220_aunroll_x_in_c0_eni76_48_tpl_5_mem_q;
    assign out_c0_exi82_52_tpl = redist49_sync_together220_aunroll_x_in_c0_eni76_49_tpl_5_q;
    assign out_c0_exi82_53_tpl = redist50_sync_together220_aunroll_x_in_c0_eni76_50_tpl_5_q;
    assign out_c0_exi82_54_tpl = redist51_sync_together220_aunroll_x_in_c0_eni76_51_tpl_5_mem_q;
    assign out_c0_exi82_55_tpl = redist52_sync_together220_aunroll_x_in_c0_eni76_52_tpl_5_mem_q;
    assign out_c0_exi82_56_tpl = redist53_sync_together220_aunroll_x_in_c0_eni76_53_tpl_5_mem_q;
    assign out_c0_exi82_57_tpl = redist54_sync_together220_aunroll_x_in_c0_eni76_54_tpl_5_mem_q;
    assign out_c0_exi82_58_tpl = redist55_sync_together220_aunroll_x_in_c0_eni76_55_tpl_5_mem_q;
    assign out_c0_exi82_59_tpl = redist56_sync_together220_aunroll_x_in_c0_eni76_56_tpl_5_mem_q;
    assign out_c0_exi82_60_tpl = redist57_sync_together220_aunroll_x_in_c0_eni76_57_tpl_5_mem_q;
    assign out_c0_exi82_61_tpl = redist58_sync_together220_aunroll_x_in_c0_eni76_58_tpl_5_mem_q;
    assign out_c0_exi82_62_tpl = redist59_sync_together220_aunroll_x_in_c0_eni76_59_tpl_5_mem_q;
    assign out_c0_exi82_63_tpl = redist60_sync_together220_aunroll_x_in_c0_eni76_60_tpl_5_mem_q;
    assign out_c0_exi82_64_tpl = redist61_sync_together220_aunroll_x_in_c0_eni76_61_tpl_5_mem_q;
    assign out_c0_exi82_65_tpl = redist62_sync_together220_aunroll_x_in_c0_eni76_62_tpl_5_mem_q;
    assign out_c0_exi82_66_tpl = redist63_sync_together220_aunroll_x_in_c0_eni76_63_tpl_5_mem_q;
    assign out_c0_exi82_67_tpl = redist20_sync_together220_aunroll_x_in_c0_eni76_20_tpl_5_mem_q;
    assign out_c0_exi82_68_tpl = redist19_sync_together220_aunroll_x_in_c0_eni76_19_tpl_5_mem_q;
    assign out_c0_exi82_69_tpl = redist18_sync_together220_aunroll_x_in_c0_eni76_18_tpl_5_mem_q;
    assign out_c0_exi82_70_tpl = redist64_sync_together220_aunroll_x_in_c0_eni76_64_tpl_5_mem_q;
    assign out_c0_exi82_71_tpl = redist65_sync_together220_aunroll_x_in_c0_eni76_65_tpl_5_mem_q;
    assign out_c0_exi82_72_tpl = redist66_sync_together220_aunroll_x_in_c0_eni76_66_tpl_5_mem_q;
    assign out_c0_exi82_73_tpl = redist67_sync_together220_aunroll_x_in_c0_eni76_67_tpl_5_mem_q;
    assign out_c0_exi82_74_tpl = redist68_sync_together220_aunroll_x_in_c0_eni76_68_tpl_5_mem_q;
    assign out_c0_exi82_75_tpl = redist69_sync_together220_aunroll_x_in_c0_eni76_69_tpl_5_mem_q;
    assign out_c0_exi82_76_tpl = redist70_sync_together220_aunroll_x_in_c0_eni76_70_tpl_5_mem_q;
    assign out_c0_exi82_77_tpl = redist71_sync_together220_aunroll_x_in_c0_eni76_71_tpl_5_mem_q;
    assign out_c0_exi82_78_tpl = redist72_sync_together220_aunroll_x_in_c0_eni76_72_tpl_5_mem_q;
    assign out_c0_exi82_79_tpl = redist73_sync_together220_aunroll_x_in_c0_eni76_73_tpl_5_mem_q;
    assign out_c0_exi82_80_tpl = redist74_sync_together220_aunroll_x_in_c0_eni76_74_tpl_5_mem_q;
    assign out_c0_exi82_81_tpl = redist75_sync_together220_aunroll_x_in_c0_eni76_75_tpl_5_mem_q;
    assign out_c0_exi82_82_tpl = redist76_sync_together220_aunroll_x_in_c0_eni76_76_tpl_5_mem_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d1x15 = GND_q;

    // i_llvm_fpga_pop_f32_spec_select33498_pop108_conv2d1x165(BLACKBOX,112)@2
    // out out_feedback_stall_out_108@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select33498_pop108_0 thei_llvm_fpga_pop_f32_spec_select33498_pop108_conv2d1x165 (
        .in_data_in(redist11_sync_together220_aunroll_x_in_c0_eni76_11_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q),
        .in_feedback_in_108(i_llvm_fpga_push_f32_spec_select33498_push108_conv2d1x166_out_feedback_out_108),
        .in_feedback_valid_in_108(i_llvm_fpga_push_f32_spec_select33498_push108_conv2d1x166_out_feedback_valid_out_108),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select33498_pop108_conv2d1x165_out_data_out),
        .out_feedback_stall_out_108(i_llvm_fpga_pop_f32_spec_select33498_pop108_conv2d1x165_out_feedback_stall_out_108),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select335101_pop109_conv2d1x167(BLACKBOX,113)@2
    // out out_feedback_stall_out_109@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select335101_pop109_0 thei_llvm_fpga_pop_f32_spec_select335101_pop109_conv2d1x167 (
        .in_data_in(redist12_sync_together220_aunroll_x_in_c0_eni76_12_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q),
        .in_feedback_in_109(i_llvm_fpga_push_f32_spec_select335101_push109_conv2d1x168_out_feedback_out_109),
        .in_feedback_valid_in_109(i_llvm_fpga_push_f32_spec_select335101_push109_conv2d1x168_out_feedback_valid_out_109),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select335101_pop109_conv2d1x167_out_data_out),
        .out_feedback_stall_out_109(i_llvm_fpga_pop_f32_spec_select335101_pop109_conv2d1x167_out_feedback_stall_out_109),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select336104_pop110_conv2d1x169(BLACKBOX,114)@2
    // out out_feedback_stall_out_110@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select336104_pop110_0 thei_llvm_fpga_pop_f32_spec_select336104_pop110_conv2d1x169 (
        .in_data_in(redist13_sync_together220_aunroll_x_in_c0_eni76_13_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q),
        .in_feedback_in_110(i_llvm_fpga_push_f32_spec_select336104_push110_conv2d1x170_out_feedback_out_110),
        .in_feedback_valid_in_110(i_llvm_fpga_push_f32_spec_select336104_push110_conv2d1x170_out_feedback_valid_out_110),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select336104_pop110_conv2d1x169_out_data_out),
        .out_feedback_stall_out_110(i_llvm_fpga_pop_f32_spec_select336104_pop110_conv2d1x169_out_feedback_stall_out_110),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_phi_decision102_xor110_pop115_conv2d1x171(BLACKBOX,121)@2
    // out out_feedback_stall_out_115@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_phi_decision102_xor110_pop115_0 thei_llvm_fpga_pop_i1_phi_decision102_xor110_pop115_conv2d1x171 (
        .in_data_in(redist14_sync_together220_aunroll_x_in_c0_eni76_14_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2604_fanout_adaptor_conv2d1x12_q),
        .in_feedback_in_115(i_llvm_fpga_push_i1_phi_decision102_xor110_push115_conv2d1x172_out_feedback_out_115),
        .in_feedback_valid_in_115(i_llvm_fpga_push_i1_phi_decision102_xor110_push115_conv2d1x172_out_feedback_valid_out_115),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(i_llvm_fpga_pop_i1_phi_decision102_xor110_pop115_conv2d1x171_out_data_out),
        .out_feedback_stall_out_115(i_llvm_fpga_pop_i1_phi_decision102_xor110_pop115_conv2d1x171_out_feedback_stall_out_115),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_spec_select33498_push108_conv2d1x166(BLACKBOX,138)@2
    // out out_feedback_out_108@20000000
    // out out_feedback_valid_out_108@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select33498_push108_0 thei_llvm_fpga_push_f32_spec_select33498_push108_conv2d1x166 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select33498_pop108_conv2d1x165_out_data_out),
        .in_feedback_stall_in_108(i_llvm_fpga_pop_f32_spec_select33498_pop108_conv2d1x165_out_feedback_stall_out_108),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(),
        .out_feedback_out_108(i_llvm_fpga_push_f32_spec_select33498_push108_conv2d1x166_out_feedback_out_108),
        .out_feedback_valid_out_108(i_llvm_fpga_push_f32_spec_select33498_push108_conv2d1x166_out_feedback_valid_out_108),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_spec_select335101_push109_conv2d1x168(BLACKBOX,139)@2
    // out out_feedback_out_109@20000000
    // out out_feedback_valid_out_109@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select335101_push109_0 thei_llvm_fpga_push_f32_spec_select335101_push109_conv2d1x168 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select335101_pop109_conv2d1x167_out_data_out),
        .in_feedback_stall_in_109(i_llvm_fpga_pop_f32_spec_select335101_pop109_conv2d1x167_out_feedback_stall_out_109),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(),
        .out_feedback_out_109(i_llvm_fpga_push_f32_spec_select335101_push109_conv2d1x168_out_feedback_out_109),
        .out_feedback_valid_out_109(i_llvm_fpga_push_f32_spec_select335101_push109_conv2d1x168_out_feedback_valid_out_109),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_spec_select336104_push110_conv2d1x170(BLACKBOX,140)@2
    // out out_feedback_out_110@20000000
    // out out_feedback_valid_out_110@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select336104_push110_0 thei_llvm_fpga_push_f32_spec_select336104_push110_conv2d1x170 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select336104_pop110_conv2d1x169_out_data_out),
        .in_feedback_stall_in_110(i_llvm_fpga_pop_f32_spec_select336104_pop110_conv2d1x169_out_feedback_stall_out_110),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(),
        .out_feedback_out_110(i_llvm_fpga_push_f32_spec_select336104_push110_conv2d1x170_out_feedback_out_110),
        .out_feedback_valid_out_110(i_llvm_fpga_push_f32_spec_select336104_push110_conv2d1x170_out_feedback_valid_out_110),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_phi_decision102_xor110_push115_conv2d1x172(BLACKBOX,149)@2
    // out out_feedback_out_115@20000000
    // out out_feedback_valid_out_115@20000000
    conv2d1x1_i_llvm_fpga_push_i1_phi_decision102_xor110_push115_0 thei_llvm_fpga_push_i1_phi_decision102_xor110_push115_conv2d1x172 (
        .in_data_in(i_llvm_fpga_pop_i1_phi_decision102_xor110_pop115_conv2d1x171_out_data_out),
        .in_feedback_stall_in_115(i_llvm_fpga_pop_i1_phi_decision102_xor110_pop115_conv2d1x171_out_feedback_stall_out_115),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d1x112_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(),
        .out_feedback_out_115(i_llvm_fpga_push_i1_phi_decision102_xor110_push115_conv2d1x172_out_feedback_out_115),
        .out_feedback_valid_out_115(i_llvm_fpga_push_i1_phi_decision102_xor110_push115_conv2d1x172_out_feedback_valid_out_115),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg24(REG,252)@1 + 1
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

    // valid_fanout_reg25(REG,253)@1 + 1
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

    // valid_fanout_reg26(REG,254)@1 + 1
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

    // valid_fanout_reg27(REG,255)@1 + 1
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

    // valid_fanout_reg28(REG,256)@1 + 1
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

    // valid_fanout_reg29(REG,257)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg30(REG,258)@1 + 1
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

    // valid_fanout_reg31(REG,259)@1 + 1
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

    // redist11_sync_together220_aunroll_x_in_c0_eni76_11_tpl_1(DELAY,349)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together220_aunroll_x_in_c0_eni76_11_tpl_1_q <= '0;
        end
        else
        begin
            redist11_sync_together220_aunroll_x_in_c0_eni76_11_tpl_1_q <= $unsigned(in_c0_eni76_11_tpl);
        end
    end

    // redist12_sync_together220_aunroll_x_in_c0_eni76_12_tpl_1(DELAY,350)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together220_aunroll_x_in_c0_eni76_12_tpl_1_q <= '0;
        end
        else
        begin
            redist12_sync_together220_aunroll_x_in_c0_eni76_12_tpl_1_q <= $unsigned(in_c0_eni76_12_tpl);
        end
    end

    // redist13_sync_together220_aunroll_x_in_c0_eni76_13_tpl_1(DELAY,351)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together220_aunroll_x_in_c0_eni76_13_tpl_1_q <= '0;
        end
        else
        begin
            redist13_sync_together220_aunroll_x_in_c0_eni76_13_tpl_1_q <= $unsigned(in_c0_eni76_13_tpl);
        end
    end

    // redist14_sync_together220_aunroll_x_in_c0_eni76_14_tpl_1(DELAY,352)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together220_aunroll_x_in_c0_eni76_14_tpl_1_q <= '0;
        end
        else
        begin
            redist14_sync_together220_aunroll_x_in_c0_eni76_14_tpl_1_q <= $unsigned(in_c0_eni76_14_tpl);
        end
    end

endmodule
