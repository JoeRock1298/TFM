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

// SystemVerilog created from conv2d1x1_i_sfc_logic_s_c0_in_for_body4_0000nter37357_conv2d1x10
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_logic_s_c0_in_for_body4_0000nter37357_conv2d1x10 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_filter_bias,
    input wire [31:0] in_input_channels,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    input wire [32:0] in_intel_reserved_ffwd_4_0,
    output wire [0:0] out_c0_exi44_0_tpl,
    output wire [0:0] out_c0_exi44_1_tpl,
    output wire [31:0] out_c0_exi44_2_tpl,
    output wire [0:0] out_c0_exi44_3_tpl,
    output wire [0:0] out_c0_exi44_4_tpl,
    output wire [0:0] out_c0_exi44_5_tpl,
    output wire [32:0] out_c0_exi44_6_tpl,
    output wire [63:0] out_c0_exi44_7_tpl,
    output wire [31:0] out_c0_exi44_8_tpl,
    output wire [31:0] out_c0_exi44_9_tpl,
    output wire [0:0] out_c0_exi44_10_tpl,
    output wire [0:0] out_c0_exi44_11_tpl,
    output wire [31:0] out_c0_exi44_12_tpl,
    output wire [31:0] out_c0_exi44_13_tpl,
    output wire [31:0] out_c0_exi44_14_tpl,
    output wire [31:0] out_c0_exi44_15_tpl,
    output wire [31:0] out_c0_exi44_16_tpl,
    output wire [31:0] out_c0_exi44_17_tpl,
    output wire [31:0] out_c0_exi44_18_tpl,
    output wire [31:0] out_c0_exi44_19_tpl,
    output wire [31:0] out_c0_exi44_20_tpl,
    output wire [31:0] out_c0_exi44_21_tpl,
    output wire [31:0] out_c0_exi44_22_tpl,
    output wire [31:0] out_c0_exi44_23_tpl,
    output wire [31:0] out_c0_exi44_24_tpl,
    output wire [31:0] out_c0_exi44_25_tpl,
    output wire [31:0] out_c0_exi44_26_tpl,
    output wire [31:0] out_c0_exi44_27_tpl,
    output wire [0:0] out_c0_exi44_28_tpl,
    output wire [31:0] out_c0_exi44_29_tpl,
    output wire [31:0] out_c0_exi44_30_tpl,
    output wire [31:0] out_c0_exi44_31_tpl,
    output wire [31:0] out_c0_exi44_32_tpl,
    output wire [31:0] out_c0_exi44_33_tpl,
    output wire [31:0] out_c0_exi44_34_tpl,
    output wire [31:0] out_c0_exi44_35_tpl,
    output wire [31:0] out_c0_exi44_36_tpl,
    output wire [31:0] out_c0_exi44_37_tpl,
    output wire [31:0] out_c0_exi44_38_tpl,
    output wire [31:0] out_c0_exi44_39_tpl,
    output wire [31:0] out_c0_exi44_40_tpl,
    output wire [31:0] out_c0_exi44_41_tpl,
    output wire [31:0] out_c0_exi44_42_tpl,
    output wire [31:0] out_c0_exi44_43_tpl,
    output wire [31:0] out_c0_exi44_44_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d1x15,
    input wire [0:0] in_c0_eni17_0_tpl,
    input wire [0:0] in_c0_eni17_1_tpl,
    input wire [31:0] in_c0_eni17_2_tpl,
    input wire [31:0] in_c0_eni17_3_tpl,
    input wire [31:0] in_c0_eni17_4_tpl,
    input wire [31:0] in_c0_eni17_5_tpl,
    input wire [31:0] in_c0_eni17_6_tpl,
    input wire [31:0] in_c0_eni17_7_tpl,
    input wire [31:0] in_c0_eni17_8_tpl,
    input wire [31:0] in_c0_eni17_9_tpl,
    input wire [31:0] in_c0_eni17_10_tpl,
    input wire [31:0] in_c0_eni17_11_tpl,
    input wire [31:0] in_c0_eni17_12_tpl,
    input wire [31:0] in_c0_eni17_13_tpl,
    input wire [31:0] in_c0_eni17_14_tpl,
    input wire [31:0] in_c0_eni17_15_tpl,
    input wire [31:0] in_c0_eni17_16_tpl,
    input wire [31:0] in_c0_eni17_17_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_0128_q;
    wire [31:0] c_i32_1129_q;
    wire [31:0] c_i32_1130_q;
    wire [32:0] c_i33_1131_q;
    wire [32:0] c_i33_undef127_q;
    wire [1:0] i_arrayidx61_conv2d1x130_vt_const_1_q;
    wire [63:0] i_arrayidx61_conv2d1x130_vt_join_q;
    wire [61:0] i_arrayidx61_conv2d1x130_vt_select_63_b;
    wire [0:0] i_cmp866_conv2d1x113_q;
    wire [0:0] i_fpga_indvars_iv301_replace_phi_conv2d1x17_s;
    reg [32:0] i_fpga_indvars_iv301_replace_phi_conv2d1x17_q;
    wire [33:0] i_fpga_indvars_iv_next302_conv2d1x142_a;
    wire [33:0] i_fpga_indvars_iv_next302_conv2d1x142_b;
    logic [33:0] i_fpga_indvars_iv_next302_conv2d1x142_o;
    wire [33:0] i_fpga_indvars_iv_next302_conv2d1x142_q;
    wire [63:0] i_idxprom5_conv2d1x128_vt_join_q;
    wire [31:0] i_idxprom5_conv2d1x128_vt_select_31_b;
    wire [32:0] i_inc105_conv2d1x144_a;
    wire [32:0] i_inc105_conv2d1x144_b;
    logic [32:0] i_inc105_conv2d1x144_o;
    wire [32:0] i_inc105_conv2d1x144_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor850_conv2d1x12_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_fanout_adaptor851_conv2d1x138_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d1x139_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp126216_conv2d1x119_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp26910_conv2d1x117_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp26911_conv2d1x18_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp2699_conv2d1x136_out_dest_data_out_0_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer14_conv2d1x110_out_dest_data_out_1_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer15_conv2d1x111_out_dest_data_out_1_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x17_conv2d1x15_out_dest_data_out_4_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_conv2d1x14_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_conv2d1x14_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_conv2d1x14_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_conv2d1x14_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_f32_pop12_conv2d1x148_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop12_conv2d1x148_out_feedback_stall_out_12;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select32363_pop13_conv2d1x150_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select32363_pop13_conv2d1x150_out_feedback_stall_out_13;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select32466_pop14_conv2d1x152_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select32466_pop14_conv2d1x152_out_feedback_stall_out_14;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select32569_pop15_conv2d1x154_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select32569_pop15_conv2d1x154_out_feedback_stall_out_15;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select32672_pop16_conv2d1x156_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select32672_pop16_conv2d1x156_out_feedback_stall_out_16;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select32775_pop17_conv2d1x158_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select32775_pop17_conv2d1x158_out_feedback_stall_out_17;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select32878_pop18_conv2d1x160_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select32878_pop18_conv2d1x160_out_feedback_stall_out_18;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select32981_pop19_conv2d1x162_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select32981_pop19_conv2d1x162_out_feedback_stall_out_19;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select33084_pop20_conv2d1x164_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select33084_pop20_conv2d1x164_out_feedback_stall_out_20;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select33187_pop21_conv2d1x166_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select33187_pop21_conv2d1x166_out_feedback_stall_out_21;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select33290_pop22_conv2d1x168_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select33290_pop22_conv2d1x168_out_feedback_stall_out_22;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select33393_pop23_conv2d1x170_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select33393_pop23_conv2d1x170_out_feedback_stall_out_23;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select33496_pop24_conv2d1x172_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select33496_pop24_conv2d1x172_out_feedback_stall_out_24;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select33599_pop25_conv2d1x174_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select33599_pop25_conv2d1x174_out_feedback_stall_out_25;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select336102_pop26_conv2d1x176_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select336102_pop26_conv2d1x176_out_feedback_stall_out_26;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select60_pop11_conv2d1x146_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select60_pop11_conv2d1x146_out_feedback_stall_out_11;
    wire [31:0] i_llvm_fpga_pop_i32_f_i_070_pop10_conv2d1x127_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_f_i_070_pop10_conv2d1x127_out_feedback_stall_out_10;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv301_pop9_conv2d1x16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv301_pop9_conv2d1x16_out_feedback_stall_out_9;
    wire [31:0] i_llvm_fpga_push_f32_push12_conv2d1x149_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_f32_push12_conv2d1x149_out_feedback_valid_out_12;
    wire [31:0] i_llvm_fpga_push_f32_spec_select32363_push13_conv2d1x151_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_f32_spec_select32363_push13_conv2d1x151_out_feedback_valid_out_13;
    wire [31:0] i_llvm_fpga_push_f32_spec_select32466_push14_conv2d1x153_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_f32_spec_select32466_push14_conv2d1x153_out_feedback_valid_out_14;
    wire [31:0] i_llvm_fpga_push_f32_spec_select32569_push15_conv2d1x155_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_f32_spec_select32569_push15_conv2d1x155_out_feedback_valid_out_15;
    wire [31:0] i_llvm_fpga_push_f32_spec_select32672_push16_conv2d1x157_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_f32_spec_select32672_push16_conv2d1x157_out_feedback_valid_out_16;
    wire [31:0] i_llvm_fpga_push_f32_spec_select32775_push17_conv2d1x159_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_f32_spec_select32775_push17_conv2d1x159_out_feedback_valid_out_17;
    wire [31:0] i_llvm_fpga_push_f32_spec_select32878_push18_conv2d1x161_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_f32_spec_select32878_push18_conv2d1x161_out_feedback_valid_out_18;
    wire [31:0] i_llvm_fpga_push_f32_spec_select32981_push19_conv2d1x163_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_f32_spec_select32981_push19_conv2d1x163_out_feedback_valid_out_19;
    wire [31:0] i_llvm_fpga_push_f32_spec_select33084_push20_conv2d1x165_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_f32_spec_select33084_push20_conv2d1x165_out_feedback_valid_out_20;
    wire [31:0] i_llvm_fpga_push_f32_spec_select33187_push21_conv2d1x167_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_f32_spec_select33187_push21_conv2d1x167_out_feedback_valid_out_21;
    wire [31:0] i_llvm_fpga_push_f32_spec_select33290_push22_conv2d1x169_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_f32_spec_select33290_push22_conv2d1x169_out_feedback_valid_out_22;
    wire [31:0] i_llvm_fpga_push_f32_spec_select33393_push23_conv2d1x171_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_f32_spec_select33393_push23_conv2d1x171_out_feedback_valid_out_23;
    wire [31:0] i_llvm_fpga_push_f32_spec_select33496_push24_conv2d1x173_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_f32_spec_select33496_push24_conv2d1x173_out_feedback_valid_out_24;
    wire [31:0] i_llvm_fpga_push_f32_spec_select33599_push25_conv2d1x175_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_f32_spec_select33599_push25_conv2d1x175_out_feedback_valid_out_25;
    wire [31:0] i_llvm_fpga_push_f32_spec_select336102_push26_conv2d1x177_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_f32_spec_select336102_push26_conv2d1x177_out_feedback_valid_out_26;
    wire [31:0] i_llvm_fpga_push_f32_spec_select60_push11_conv2d1x147_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_f32_spec_select60_push11_conv2d1x147_out_feedback_valid_out_11;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond26_conv2d1x141_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond26_conv2d1x141_out_feedback_valid_out_6;
    wire [31:0] i_llvm_fpga_push_i32_f_i_070_push10_conv2d1x145_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i32_f_i_070_push10_conv2d1x145_out_feedback_valid_out_10;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv301_push9_conv2d1x143_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv301_push9_conv2d1x143_out_feedback_valid_out_9;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer1_conv2d1x131_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x129_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x129_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x129_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x129_vt_select_63_b;
    wire [0:0] i_notcmp24_conv2d1x140_q;
    wire [0:0] i_notlhs_conv2d1x116_q;
    wire [0:0] i_phi_decision102_xor_conv2d1x121_q;
    wire [0:0] i_umax_conv2d1x123_s;
    reg [31:0] i_umax_conv2d1x123_q;
    wire [0:0] i_unnamed_conv2d1x115_q;
    wire [0:0] i_unnamed_conv2d1x118_q;
    wire [0:0] i_unnamed_conv2d1x120_q;
    wire [33:0] i_unnamed_conv2d1x122_a;
    wire [33:0] i_unnamed_conv2d1x122_b;
    logic [33:0] i_unnamed_conv2d1x122_o;
    wire [0:0] i_unnamed_conv2d1x122_c;
    wire [32:0] i_unnamed_conv2d1x124_a;
    wire [32:0] i_unnamed_conv2d1x124_b;
    logic [32:0] i_unnamed_conv2d1x124_o;
    wire [32:0] i_unnamed_conv2d1x124_q;
    wire [32:0] i_unnamed_conv2d1x125_vt_join_q;
    wire [31:0] i_unnamed_conv2d1x125_vt_select_31_b;
    wire [33:0] i_unnamed_conv2d1x126_a;
    wire [33:0] i_unnamed_conv2d1x126_b;
    logic [33:0] i_unnamed_conv2d1x126_o;
    wire [33:0] i_unnamed_conv2d1x126_q;
    wire [0:0] i_unnamed_conv2d1x137_q;
    wire [0:0] i_unnamed_conv2d1x19_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next302_conv2d1x142_sel_x_b;
    wire [31:0] bgTrunc_i_inc105_conv2d1x144_sel_x_b;
    wire [63:0] bgTrunc_i_mul21_conv2d1x132_sel_x_in;
    wire [31:0] bgTrunc_i_mul21_conv2d1x132_sel_x_b;
    wire [63:0] bgTrunc_i_mul97_conv2d1x133_sel_x_in;
    wire [31:0] bgTrunc_i_mul97_conv2d1x133_sel_x_b;
    wire [63:0] bgTrunc_i_mul_conv2d1x112_sel_x_in;
    wire [31:0] bgTrunc_i_mul_conv2d1x112_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_conv2d1x124_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_conv2d1x126_sel_x_b;
    wire [64:0] i_arrayidx61_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx61_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx61_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx61_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx61_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx61_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx61_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom5_conv2d1x128_sel_x_b;
    wire [32:0] i_unnamed_conv2d1x125_sel_x_b;
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
    wire [0:0] i_exitcond303_conv2d1x134_cmp_nsign_q;
    wire [13:0] i_mul21_conv2d1x132_bs1_b;
    wire [17:0] i_mul21_conv2d1x132_bs4_in;
    wire [17:0] i_mul21_conv2d1x132_bs4_b;
    wire [63:0] i_mul21_conv2d1x132_sums_join_0_q;
    wire [50:0] i_mul21_conv2d1x132_sums_align_1_q;
    wire [50:0] i_mul21_conv2d1x132_sums_align_1_qint;
    wire [64:0] i_mul21_conv2d1x132_sums_result_add_0_0_a;
    wire [64:0] i_mul21_conv2d1x132_sums_result_add_0_0_b;
    logic [64:0] i_mul21_conv2d1x132_sums_result_add_0_0_o;
    wire [64:0] i_mul21_conv2d1x132_sums_result_add_0_0_q;
    wire [63:0] i_mul97_conv2d1x133_sums_join_0_q;
    wire [50:0] i_mul97_conv2d1x133_sums_align_1_q;
    wire [50:0] i_mul97_conv2d1x133_sums_align_1_qint;
    wire [64:0] i_mul97_conv2d1x133_sums_result_add_0_0_a;
    wire [64:0] i_mul97_conv2d1x133_sums_result_add_0_0_b;
    logic [64:0] i_mul97_conv2d1x133_sums_result_add_0_0_o;
    wire [64:0] i_mul97_conv2d1x133_sums_result_add_0_0_q;
    wire [63:0] i_mul_conv2d1x112_sums_join_0_q;
    wire [50:0] i_mul_conv2d1x112_sums_align_1_q;
    wire [50:0] i_mul_conv2d1x112_sums_align_1_qint;
    wire [64:0] i_mul_conv2d1x112_sums_result_add_0_0_a;
    wire [64:0] i_mul_conv2d1x112_sums_result_add_0_0_b;
    logic [64:0] i_mul_conv2d1x112_sums_result_add_0_0_o;
    wire [64:0] i_mul_conv2d1x112_sums_result_add_0_0_q;
    wire i_mul21_conv2d1x132_im0_cma_reset;
    wire [13:0] i_mul21_conv2d1x132_im0_cma_a0;
    wire [13:0] i_mul21_conv2d1x132_im0_cma_c0;
    wire [27:0] i_mul21_conv2d1x132_im0_cma_s0;
    wire [27:0] i_mul21_conv2d1x132_im0_cma_qq;
    wire [27:0] i_mul21_conv2d1x132_im0_cma_q;
    wire i_mul21_conv2d1x132_im0_cma_ena0;
    wire i_mul21_conv2d1x132_im0_cma_ena1;
    wire i_mul21_conv2d1x132_im0_cma_ena2;
    wire i_mul21_conv2d1x132_im8_cma_reset;
    wire [17:0] i_mul21_conv2d1x132_im8_cma_a0;
    wire [17:0] i_mul21_conv2d1x132_im8_cma_c0;
    wire [35:0] i_mul21_conv2d1x132_im8_cma_s0;
    wire [35:0] i_mul21_conv2d1x132_im8_cma_qq;
    wire [35:0] i_mul21_conv2d1x132_im8_cma_q;
    wire i_mul21_conv2d1x132_im8_cma_ena0;
    wire i_mul21_conv2d1x132_im8_cma_ena1;
    wire i_mul21_conv2d1x132_im8_cma_ena2;
    wire i_mul97_conv2d1x133_im0_cma_reset;
    wire [13:0] i_mul97_conv2d1x133_im0_cma_a0;
    wire [13:0] i_mul97_conv2d1x133_im0_cma_c0;
    wire [27:0] i_mul97_conv2d1x133_im0_cma_s0;
    wire [27:0] i_mul97_conv2d1x133_im0_cma_qq;
    wire [27:0] i_mul97_conv2d1x133_im0_cma_q;
    wire i_mul97_conv2d1x133_im0_cma_ena0;
    wire i_mul97_conv2d1x133_im0_cma_ena1;
    wire i_mul97_conv2d1x133_im0_cma_ena2;
    wire i_mul97_conv2d1x133_im8_cma_reset;
    wire [17:0] i_mul97_conv2d1x133_im8_cma_a0;
    wire [17:0] i_mul97_conv2d1x133_im8_cma_c0;
    wire [35:0] i_mul97_conv2d1x133_im8_cma_s0;
    wire [35:0] i_mul97_conv2d1x133_im8_cma_qq;
    wire [35:0] i_mul97_conv2d1x133_im8_cma_q;
    wire i_mul97_conv2d1x133_im8_cma_ena0;
    wire i_mul97_conv2d1x133_im8_cma_ena1;
    wire i_mul97_conv2d1x133_im8_cma_ena2;
    wire i_mul_conv2d1x112_im0_cma_reset;
    wire [13:0] i_mul_conv2d1x112_im0_cma_a0;
    wire [13:0] i_mul_conv2d1x112_im0_cma_c0;
    wire [27:0] i_mul_conv2d1x112_im0_cma_s0;
    wire [27:0] i_mul_conv2d1x112_im0_cma_qq;
    wire [27:0] i_mul_conv2d1x112_im0_cma_q;
    wire i_mul_conv2d1x112_im0_cma_ena0;
    wire i_mul_conv2d1x112_im0_cma_ena1;
    wire i_mul_conv2d1x112_im0_cma_ena2;
    wire i_mul_conv2d1x112_im8_cma_reset;
    wire [17:0] i_mul_conv2d1x112_im8_cma_a0;
    wire [17:0] i_mul_conv2d1x112_im8_cma_c0;
    wire [35:0] i_mul_conv2d1x112_im8_cma_s0;
    wire [35:0] i_mul_conv2d1x112_im8_cma_qq;
    wire [35:0] i_mul_conv2d1x112_im8_cma_q;
    wire i_mul_conv2d1x112_im8_cma_ena0;
    wire i_mul_conv2d1x112_im8_cma_ena1;
    wire i_mul_conv2d1x112_im8_cma_ena2;
    wire i_mul21_conv2d1x132_ma3_cma_reset;
    wire [13:0] i_mul21_conv2d1x132_ma3_cma_a0;
    wire [17:0] i_mul21_conv2d1x132_ma3_cma_c0;
    wire [13:0] i_mul21_conv2d1x132_ma3_cma_a1;
    wire [17:0] i_mul21_conv2d1x132_ma3_cma_c1;
    wire [32:0] i_mul21_conv2d1x132_ma3_cma_s0;
    wire [32:0] i_mul21_conv2d1x132_ma3_cma_qq;
    wire [32:0] i_mul21_conv2d1x132_ma3_cma_q;
    wire i_mul21_conv2d1x132_ma3_cma_ena0;
    wire i_mul21_conv2d1x132_ma3_cma_ena1;
    wire i_mul21_conv2d1x132_ma3_cma_ena2;
    wire i_mul97_conv2d1x133_ma3_cma_reset;
    wire [13:0] i_mul97_conv2d1x133_ma3_cma_a0;
    wire [17:0] i_mul97_conv2d1x133_ma3_cma_c0;
    wire [13:0] i_mul97_conv2d1x133_ma3_cma_a1;
    wire [17:0] i_mul97_conv2d1x133_ma3_cma_c1;
    wire [32:0] i_mul97_conv2d1x133_ma3_cma_s0;
    wire [32:0] i_mul97_conv2d1x133_ma3_cma_qq;
    wire [32:0] i_mul97_conv2d1x133_ma3_cma_q;
    wire i_mul97_conv2d1x133_ma3_cma_ena0;
    wire i_mul97_conv2d1x133_ma3_cma_ena1;
    wire i_mul97_conv2d1x133_ma3_cma_ena2;
    wire i_mul_conv2d1x112_ma3_cma_reset;
    wire [13:0] i_mul_conv2d1x112_ma3_cma_a0;
    wire [17:0] i_mul_conv2d1x112_ma3_cma_c0;
    wire [13:0] i_mul_conv2d1x112_ma3_cma_a1;
    wire [17:0] i_mul_conv2d1x112_ma3_cma_c1;
    wire [32:0] i_mul_conv2d1x112_ma3_cma_s0;
    wire [32:0] i_mul_conv2d1x112_ma3_cma_qq;
    wire [32:0] i_mul_conv2d1x112_ma3_cma_q;
    wire i_mul_conv2d1x112_ma3_cma_ena0;
    wire i_mul_conv2d1x112_ma3_cma_ena1;
    wire i_mul_conv2d1x112_ma3_cma_ena2;
    wire [13:0] i_mul_conv2d1x112_bs1_merged_bit_select_b;
    wire [17:0] i_mul_conv2d1x112_bs1_merged_bit_select_c;
    wire [13:0] i_mul_conv2d1x112_bs2_merged_bit_select_b;
    wire [17:0] i_mul_conv2d1x112_bs2_merged_bit_select_c;
    wire [13:0] i_mul21_conv2d1x132_bs2_merged_bit_select_b;
    wire [17:0] i_mul21_conv2d1x132_bs2_merged_bit_select_c;
    wire [13:0] i_mul97_conv2d1x133_bs2_merged_bit_select_b;
    wire [17:0] i_mul97_conv2d1x133_bs2_merged_bit_select_c;
    reg [0:0] redist0_sync_together181_aunroll_x_in_c0_eni17_1_tpl_3_q;
    reg [0:0] redist0_sync_together181_aunroll_x_in_c0_eni17_1_tpl_3_delay_0;
    reg [0:0] redist0_sync_together181_aunroll_x_in_c0_eni17_1_tpl_3_delay_1;
    reg [0:0] redist1_sync_together181_aunroll_x_in_c0_eni17_1_tpl_6_q;
    reg [0:0] redist1_sync_together181_aunroll_x_in_c0_eni17_1_tpl_6_delay_0;
    reg [0:0] redist1_sync_together181_aunroll_x_in_c0_eni17_1_tpl_6_delay_1;
    reg [0:0] redist2_sync_together181_aunroll_x_in_c0_eni17_1_tpl_7_q;
    reg [0:0] redist19_sync_together181_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist19_sync_together181_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist19_sync_together181_aunroll_x_in_i_valid_3_delay_1;
    reg [0:0] redist20_sync_together181_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist21_sync_together181_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist21_sync_together181_aunroll_x_in_i_valid_6_delay_0;
    reg [31:0] redist22_bgTrunc_i_mul_conv2d1x112_sel_x_b_2_q;
    reg [31:0] redist22_bgTrunc_i_mul_conv2d1x112_sel_x_b_2_delay_0;
    reg [31:0] redist23_bgTrunc_i_mul_conv2d1x112_sel_x_b_3_q;
    reg [0:0] redist24_i_unnamed_conv2d1x137_q_4_q;
    reg [0:0] redist24_i_unnamed_conv2d1x137_q_4_delay_0;
    reg [0:0] redist24_i_unnamed_conv2d1x137_q_4_delay_1;
    reg [0:0] redist24_i_unnamed_conv2d1x137_q_4_delay_2;
    reg [0:0] redist25_i_unnamed_conv2d1x137_q_6_q;
    reg [0:0] redist25_i_unnamed_conv2d1x137_q_6_delay_0;
    reg [0:0] redist26_i_unnamed_conv2d1x137_q_7_q;
    reg [31:0] redist27_i_llvm_fpga_pop_i32_f_i_070_pop10_conv2d1x127_out_data_out_1_q;
    reg [0:0] redist28_i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d1x139_q_2_q;
    reg [0:0] redist28_i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d1x139_q_2_delay_0;
    reg [0:0] redist29_i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q_3_q;
    reg [0:0] redist29_i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q_3_delay_0;
    reg [0:0] redist29_i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q_3_delay_1;
    reg [31:0] redist30_i_idxprom5_conv2d1x128_vt_select_31_b_2_q;
    reg [31:0] redist30_i_idxprom5_conv2d1x128_vt_select_31_b_2_delay_0;
    wire redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_mem_reset0;
    wire [31:0] redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_mem_ia;
    wire [2:0] redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_mem_aa;
    wire [2:0] redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_mem_ab;
    wire [31:0] redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_mem_iq;
    wire [31:0] redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_mem_q;
    wire [2:0] redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_rdcnt_i;
    (* preserve *) reg redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_rdcnt_eq;
    reg [2:0] redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_wraddr_q;
    wire [3:0] redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_mem_last_q;
    wire [3:0] redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_cmp_b;
    wire [0:0] redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_cmpReg_q;
    wire [0:0] redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_notEnable_q;
    wire [0:0] redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_sticky_ena_q;
    wire [0:0] redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_enaAnd_q;
    wire redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_mem_reset0;
    wire [31:0] redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_mem_ia;
    wire [2:0] redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_mem_aa;
    wire [2:0] redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_mem_ab;
    wire [31:0] redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_mem_iq;
    wire [31:0] redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_mem_q;
    wire [2:0] redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_rdcnt_i;
    (* preserve *) reg redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_rdcnt_eq;
    reg [2:0] redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_wraddr_q;
    wire [3:0] redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_mem_last_q;
    wire [3:0] redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_cmp_b;
    wire [0:0] redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_cmpReg_q;
    wire [0:0] redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_notEnable_q;
    wire [0:0] redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_sticky_ena_q;
    wire [0:0] redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_enaAnd_q;
    wire redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_mem_reset0;
    wire [31:0] redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_mem_ia;
    wire [2:0] redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_mem_aa;
    wire [2:0] redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_mem_ab;
    wire [31:0] redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_mem_iq;
    wire [31:0] redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_mem_q;
    wire [2:0] redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_rdcnt_i;
    (* preserve *) reg redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_rdcnt_eq;
    reg [2:0] redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_wraddr_q;
    wire [3:0] redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_mem_last_q;
    wire [3:0] redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_cmp_b;
    wire [0:0] redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_cmpReg_q;
    wire [0:0] redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_notEnable_q;
    wire [0:0] redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_sticky_ena_q;
    wire [0:0] redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_enaAnd_q;
    wire redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_mem_reset0;
    wire [31:0] redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_mem_ia;
    wire [2:0] redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_mem_aa;
    wire [2:0] redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_mem_ab;
    wire [31:0] redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_mem_iq;
    wire [31:0] redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_mem_q;
    wire [2:0] redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_rdcnt_i;
    (* preserve *) reg redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_rdcnt_eq;
    reg [2:0] redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_wraddr_q;
    wire [3:0] redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_mem_last_q;
    wire [3:0] redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_cmp_b;
    wire [0:0] redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_cmpReg_q;
    wire [0:0] redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_notEnable_q;
    wire [0:0] redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_sticky_ena_q;
    wire [0:0] redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_enaAnd_q;
    wire redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_mem_reset0;
    wire [31:0] redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_mem_ia;
    wire [2:0] redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_mem_aa;
    wire [2:0] redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_mem_ab;
    wire [31:0] redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_mem_iq;
    wire [31:0] redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_mem_q;
    wire [2:0] redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_rdcnt_i;
    (* preserve *) reg redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_rdcnt_eq;
    reg [2:0] redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_wraddr_q;
    wire [3:0] redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_mem_last_q;
    wire [3:0] redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_cmp_b;
    wire [0:0] redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_cmpReg_q;
    wire [0:0] redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_notEnable_q;
    wire [0:0] redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_sticky_ena_q;
    wire [0:0] redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_enaAnd_q;
    wire redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_mem_reset0;
    wire [31:0] redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_mem_ia;
    wire [2:0] redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_mem_aa;
    wire [2:0] redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_mem_ab;
    wire [31:0] redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_mem_iq;
    wire [31:0] redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_mem_q;
    wire [2:0] redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_rdcnt_i;
    (* preserve *) reg redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_rdcnt_eq;
    reg [2:0] redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_wraddr_q;
    wire [3:0] redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_mem_last_q;
    wire [3:0] redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_cmp_b;
    wire [0:0] redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_cmpReg_q;
    wire [0:0] redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_notEnable_q;
    wire [0:0] redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_sticky_ena_q;
    wire [0:0] redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_enaAnd_q;
    wire redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_mem_reset0;
    wire [31:0] redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_mem_ia;
    wire [2:0] redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_mem_aa;
    wire [2:0] redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_mem_ab;
    wire [31:0] redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_mem_iq;
    wire [31:0] redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_mem_q;
    wire [2:0] redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_rdcnt_i;
    (* preserve *) reg redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_rdcnt_eq;
    reg [2:0] redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_wraddr_q;
    wire [3:0] redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_mem_last_q;
    wire [3:0] redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_cmp_b;
    wire [0:0] redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_cmpReg_q;
    wire [0:0] redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_notEnable_q;
    wire [0:0] redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_sticky_ena_q;
    wire [0:0] redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_enaAnd_q;
    wire redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_mem_reset0;
    wire [31:0] redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_mem_ia;
    wire [2:0] redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_mem_aa;
    wire [2:0] redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_mem_ab;
    wire [31:0] redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_mem_iq;
    wire [31:0] redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_mem_q;
    wire [2:0] redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_rdcnt_i;
    (* preserve *) reg redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_rdcnt_eq;
    reg [2:0] redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_wraddr_q;
    wire [3:0] redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_mem_last_q;
    wire [3:0] redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_cmp_b;
    wire [0:0] redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_cmpReg_q;
    wire [0:0] redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_notEnable_q;
    wire [0:0] redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_sticky_ena_q;
    wire [0:0] redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_enaAnd_q;
    wire redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_mem_reset0;
    wire [31:0] redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_mem_ia;
    wire [2:0] redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_mem_aa;
    wire [2:0] redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_mem_ab;
    wire [31:0] redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_mem_iq;
    wire [31:0] redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_mem_q;
    wire [2:0] redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_rdcnt_i;
    (* preserve *) reg redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_rdcnt_eq;
    reg [2:0] redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_wraddr_q;
    wire [3:0] redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_mem_last_q;
    wire [3:0] redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_cmp_b;
    wire [0:0] redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_cmpReg_q;
    wire [0:0] redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_notEnable_q;
    wire [0:0] redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_sticky_ena_q;
    wire [0:0] redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_enaAnd_q;
    wire redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_mem_reset0;
    wire [31:0] redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_mem_ia;
    wire [2:0] redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_mem_aa;
    wire [2:0] redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_mem_ab;
    wire [31:0] redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_mem_iq;
    wire [31:0] redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_mem_q;
    wire [2:0] redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_rdcnt_i;
    (* preserve *) reg redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_rdcnt_eq;
    reg [2:0] redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_wraddr_q;
    wire [3:0] redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_mem_last_q;
    wire [3:0] redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_cmp_b;
    wire [0:0] redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_cmpReg_q;
    wire [0:0] redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_notEnable_q;
    wire [0:0] redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_sticky_ena_q;
    wire [0:0] redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_enaAnd_q;
    wire redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_mem_reset0;
    wire [31:0] redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_mem_ia;
    wire [2:0] redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_mem_aa;
    wire [2:0] redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_mem_ab;
    wire [31:0] redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_mem_iq;
    wire [31:0] redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_mem_q;
    wire [2:0] redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_rdcnt_i;
    (* preserve *) reg redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_rdcnt_eq;
    reg [2:0] redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_wraddr_q;
    wire [3:0] redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_mem_last_q;
    wire [3:0] redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_cmp_b;
    wire [0:0] redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_cmpReg_q;
    wire [0:0] redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_notEnable_q;
    wire [0:0] redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_sticky_ena_q;
    wire [0:0] redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_enaAnd_q;
    wire redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_mem_reset0;
    wire [31:0] redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_mem_ia;
    wire [2:0] redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_mem_aa;
    wire [2:0] redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_mem_ab;
    wire [31:0] redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_mem_iq;
    wire [31:0] redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_mem_q;
    wire [2:0] redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_rdcnt_i;
    (* preserve *) reg redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_rdcnt_eq;
    reg [2:0] redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_wraddr_q;
    wire [3:0] redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_mem_last_q;
    wire [3:0] redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_cmp_b;
    wire [0:0] redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_cmpReg_q;
    wire [0:0] redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_notEnable_q;
    wire [0:0] redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_sticky_ena_q;
    wire [0:0] redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_enaAnd_q;
    wire redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_mem_reset0;
    wire [31:0] redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_mem_ia;
    wire [2:0] redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_mem_aa;
    wire [2:0] redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_mem_ab;
    wire [31:0] redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_mem_iq;
    wire [31:0] redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_mem_q;
    wire [2:0] redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_rdcnt_i;
    (* preserve *) reg redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_rdcnt_eq;
    reg [2:0] redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_wraddr_q;
    wire [3:0] redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_mem_last_q;
    wire [3:0] redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_cmp_b;
    wire [0:0] redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_cmpReg_q;
    wire [0:0] redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_notEnable_q;
    wire [0:0] redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_sticky_ena_q;
    wire [0:0] redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_enaAnd_q;
    wire redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_mem_reset0;
    wire [31:0] redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_mem_ia;
    wire [2:0] redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_mem_aa;
    wire [2:0] redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_mem_ab;
    wire [31:0] redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_mem_iq;
    wire [31:0] redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_mem_q;
    wire [2:0] redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_rdcnt_i;
    (* preserve *) reg redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_rdcnt_eq;
    reg [2:0] redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_wraddr_q;
    wire [3:0] redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_mem_last_q;
    wire [3:0] redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_cmp_b;
    wire [0:0] redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_cmpReg_q;
    wire [0:0] redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_notEnable_q;
    wire [0:0] redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_sticky_ena_q;
    wire [0:0] redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_enaAnd_q;
    wire redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_mem_reset0;
    wire [31:0] redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_mem_ia;
    wire [2:0] redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_mem_aa;
    wire [2:0] redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_mem_ab;
    wire [31:0] redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_mem_iq;
    wire [31:0] redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_mem_q;
    wire [2:0] redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_rdcnt_i;
    (* preserve *) reg redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_rdcnt_eq;
    reg [2:0] redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_wraddr_q;
    wire [3:0] redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_mem_last_q;
    wire [3:0] redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_cmp_b;
    wire [0:0] redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_cmpReg_q;
    wire [0:0] redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_notEnable_q;
    wire [0:0] redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_sticky_ena_q;
    wire [0:0] redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_enaAnd_q;
    wire redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_mem_reset0;
    wire [31:0] redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_mem_ia;
    wire [2:0] redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_mem_aa;
    wire [2:0] redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_mem_ab;
    wire [31:0] redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_mem_iq;
    wire [31:0] redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_mem_q;
    wire [2:0] redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_rdcnt_i;
    (* preserve *) reg redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_rdcnt_eq;
    reg [2:0] redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_wraddr_q;
    wire [3:0] redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_mem_last_q;
    wire [3:0] redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_cmp_b;
    wire [0:0] redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_cmpReg_q;
    wire [0:0] redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_notEnable_q;
    wire [0:0] redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_sticky_ena_q;
    wire [0:0] redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_enaAnd_q;


    // i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x17_conv2d1x15(BLACKBOX,87)@1
    conv2d1x1_i_llvm_fpga_ffwd_dest_i33_unnamed_7_conv2d1x10 thei_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x17_conv2d1x15 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x17_conv2d1x15_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_1131(CONSTANT,62)
    assign c_i33_1131_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next302_conv2d1x142(ADD,71)@1
    assign i_fpga_indvars_iv_next302_conv2d1x142_a = {1'b0, i_fpga_indvars_iv301_replace_phi_conv2d1x17_q};
    assign i_fpga_indvars_iv_next302_conv2d1x142_b = {1'b0, c_i33_1131_q};
    assign i_fpga_indvars_iv_next302_conv2d1x142_o = $unsigned(i_fpga_indvars_iv_next302_conv2d1x142_a) + $unsigned(i_fpga_indvars_iv_next302_conv2d1x142_b);
    assign i_fpga_indvars_iv_next302_conv2d1x142_q = i_fpga_indvars_iv_next302_conv2d1x142_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next302_conv2d1x142_sel_x(BITSELECT,161)@1
    assign bgTrunc_i_fpga_indvars_iv_next302_conv2d1x142_sel_x_b = i_fpga_indvars_iv_next302_conv2d1x142_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv301_push9_conv2d1x143(BLACKBOX,125)@1
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    conv2d1x1_i_llvm_fpga_push_i33_fpga_indvars_iv301_push9_0 thei_llvm_fpga_push_i33_fpga_indvars_iv301_push9_conv2d1x143 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next302_conv2d1x142_sel_x_b),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i33_fpga_indvars_iv301_pop9_conv2d1x16_out_feedback_stall_out_9),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d1x121(i_unnamed_conv2d1x137_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i33_fpga_indvars_iv301_push9_conv2d1x143_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i33_fpga_indvars_iv301_push9_conv2d1x143_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef127(CONSTANT,63)
    assign c_i33_undef127_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv301_pop9_conv2d1x16(BLACKBOX,106)@1
    // out out_feedback_stall_out_9@20000000
    conv2d1x1_i_llvm_fpga_pop_i33_fpga_indvars_iv301_pop9_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv301_pop9_conv2d1x16 (
        .in_data_in(c_i33_undef127_q),
        .in_dir(in_c0_eni17_1_tpl),
        .in_feedback_in_9(i_llvm_fpga_push_i33_fpga_indvars_iv301_push9_conv2d1x143_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i33_fpga_indvars_iv301_push9_conv2d1x143_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv301_pop9_conv2d1x16_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i33_fpga_indvars_iv301_pop9_conv2d1x16_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv301_replace_phi_conv2d1x17(MUX,70)@1
    assign i_fpga_indvars_iv301_replace_phi_conv2d1x17_s = in_c0_eni17_1_tpl;
    always @(i_fpga_indvars_iv301_replace_phi_conv2d1x17_s or i_llvm_fpga_pop_i33_fpga_indvars_iv301_pop9_conv2d1x16_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x17_conv2d1x15_out_dest_data_out_4_0)
    begin
        unique case (i_fpga_indvars_iv301_replace_phi_conv2d1x17_s)
            1'b0 : i_fpga_indvars_iv301_replace_phi_conv2d1x17_q = i_llvm_fpga_pop_i33_fpga_indvars_iv301_pop9_conv2d1x16_out_data_out;
            1'b1 : i_fpga_indvars_iv301_replace_phi_conv2d1x17_q = i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x17_conv2d1x15_out_dest_data_out_4_0;
            default : i_fpga_indvars_iv301_replace_phi_conv2d1x17_q = 33'b0;
        endcase
    end

    // i_exitcond303_conv2d1x134_cmp_nsign(LOGICAL,232)@1
    assign i_exitcond303_conv2d1x134_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv301_replace_phi_conv2d1x17_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp2699_conv2d1x136(BLACKBOX,84)@1
    conv2d1x1_i_llvm_fpga_ffwd_dest_i1_cmp2699_0 thei_llvm_fpga_ffwd_dest_i1_cmp2699_conv2d1x136 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp2699_conv2d1x136_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d1x137(LOGICAL,148)@1
    assign i_unnamed_conv2d1x137_q = i_llvm_fpga_ffwd_dest_i1_cmp2699_conv2d1x136_out_dest_data_out_0_0 & i_exitcond303_conv2d1x134_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond26_conv2d1x141(BLACKBOX,123)@1
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    conv2d1x1_i_llvm_fpga_push_i1_notexitcond26_0 thei_llvm_fpga_push_i1_notexitcond26_conv2d1x141 (
        .in_data_in(i_unnamed_conv2d1x137_q),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going25_conv2d1x14_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_notexitcond26_conv2d1x141_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_notexitcond26_conv2d1x141_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going25_conv2d1x14(BLACKBOX,88)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    conv2d1x1_i_llvm_fpga_pipeline_keep_going25_0 thei_llvm_fpga_pipeline_keep_going25_conv2d1x14 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond26_conv2d1x141_out_feedback_out_6),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond26_conv2d1x141_out_feedback_valid_out_6),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going25_conv2d1x14_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going25_conv2d1x14_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going25_conv2d1x14_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going25_conv2d1x14_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,64)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_valid_out = i_llvm_fpga_pipeline_keep_going25_conv2d1x14_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_stall_out = i_llvm_fpga_pipeline_keep_going25_conv2d1x14_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,153)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going25_conv2d1x14_out_pipeline_valid_out;

    // redist19_sync_together181_aunroll_x_in_i_valid_3(DELAY,310)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together181_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist19_sync_together181_aunroll_x_in_i_valid_3_delay_1 <= '0;
            redist19_sync_together181_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist19_sync_together181_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
            redist19_sync_together181_aunroll_x_in_i_valid_3_delay_1 <= redist19_sync_together181_aunroll_x_in_i_valid_3_delay_0;
            redist19_sync_together181_aunroll_x_in_i_valid_3_q <= redist19_sync_together181_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // redist20_sync_together181_aunroll_x_in_i_valid_4(DELAY,311)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together181_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist20_sync_together181_aunroll_x_in_i_valid_4_q <= $unsigned(redist19_sync_together181_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist21_sync_together181_aunroll_x_in_i_valid_6(DELAY,312)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together181_aunroll_x_in_i_valid_6_delay_0 <= '0;
            redist21_sync_together181_aunroll_x_in_i_valid_6_q <= '0;
        end
        else
        begin
            redist21_sync_together181_aunroll_x_in_i_valid_6_delay_0 <= $unsigned(redist20_sync_together181_aunroll_x_in_i_valid_4_q);
            redist21_sync_together181_aunroll_x_in_i_valid_6_q <= redist21_sync_together181_aunroll_x_in_i_valid_6_delay_0;
        end
    end

    // valid_fanout_reg0(REG,180)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_notEnable(LOGICAL,478)
    assign redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_nor(LOGICAL,479)
    assign redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_nor_q = ~ (redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_notEnable_q | redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_sticky_ena_q);

    // redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_mem_last(CONSTANT,475)
    assign redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_cmp(LOGICAL,476)
    assign redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_cmp_b = {1'b0, redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_rdcnt_q};
    assign redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_cmp_q = $unsigned(redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_mem_last_q == redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_cmpReg(REG,477)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_cmpReg_q <= $unsigned(redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_cmp_q);
        end
    end

    // redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_sticky_ena(REG,480)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_nor_q == 1'b1)
        begin
            redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_sticky_ena_q <= $unsigned(redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_cmpReg_q);
        end
    end

    // redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_enaAnd(LOGICAL,481)
    assign redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_enaAnd_q = redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_sticky_ena_q & VCC_q;

    // redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_rdcnt(COUNTER,473)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_rdcnt_i <= 3'd0;
            redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_rdcnt_i == 3'd4)
            begin
                redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_rdcnt_i <= $unsigned(redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_rdcnt_i <= $unsigned(redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_rdcnt_q = redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_rdcnt_i[2:0];

    // redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_wraddr(REG,474)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_wraddr_q <= $unsigned(redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_rdcnt_q);
        end
    end

    // redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_mem(DUALMEM,472)
    assign redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_mem_ia = $unsigned(in_c0_eni17_17_tpl);
    assign redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_mem_aa = redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_wraddr_q;
    assign redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_mem_ab = redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_rdcnt_q;
    assign redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_mem_dmem (
        .clocken1(redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_mem_aa),
        .data_a(redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_mem_ab),
        .q_b(redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_mem_iq),
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
    assign redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_mem_q = redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_mem_iq[31:0];

    // redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_notEnable(LOGICAL,468)
    assign redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_nor(LOGICAL,469)
    assign redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_nor_q = ~ (redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_notEnable_q | redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_sticky_ena_q);

    // redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_mem_last(CONSTANT,465)
    assign redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_cmp(LOGICAL,466)
    assign redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_cmp_b = {1'b0, redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_rdcnt_q};
    assign redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_cmp_q = $unsigned(redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_mem_last_q == redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_cmpReg(REG,467)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_cmpReg_q <= $unsigned(redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_cmp_q);
        end
    end

    // redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_sticky_ena(REG,470)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_nor_q == 1'b1)
        begin
            redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_sticky_ena_q <= $unsigned(redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_cmpReg_q);
        end
    end

    // redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_enaAnd(LOGICAL,471)
    assign redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_enaAnd_q = redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_sticky_ena_q & VCC_q;

    // redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_rdcnt(COUNTER,463)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_rdcnt_i <= 3'd0;
            redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_rdcnt_i == 3'd4)
            begin
                redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_rdcnt_i <= $unsigned(redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_rdcnt_i <= $unsigned(redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_rdcnt_q = redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_rdcnt_i[2:0];

    // redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_wraddr(REG,464)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_wraddr_q <= $unsigned(redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_rdcnt_q);
        end
    end

    // redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_mem(DUALMEM,462)
    assign redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_mem_ia = $unsigned(in_c0_eni17_16_tpl);
    assign redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_mem_aa = redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_wraddr_q;
    assign redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_mem_ab = redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_rdcnt_q;
    assign redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_mem_dmem (
        .clocken1(redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_mem_aa),
        .data_a(redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_mem_ab),
        .q_b(redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_mem_iq),
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
    assign redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_mem_q = redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_mem_iq[31:0];

    // redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_notEnable(LOGICAL,458)
    assign redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_nor(LOGICAL,459)
    assign redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_nor_q = ~ (redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_notEnable_q | redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_sticky_ena_q);

    // redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_mem_last(CONSTANT,455)
    assign redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_cmp(LOGICAL,456)
    assign redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_cmp_b = {1'b0, redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_rdcnt_q};
    assign redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_cmp_q = $unsigned(redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_mem_last_q == redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_cmpReg(REG,457)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_cmpReg_q <= $unsigned(redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_cmp_q);
        end
    end

    // redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_sticky_ena(REG,460)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_nor_q == 1'b1)
        begin
            redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_sticky_ena_q <= $unsigned(redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_cmpReg_q);
        end
    end

    // redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_enaAnd(LOGICAL,461)
    assign redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_enaAnd_q = redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_sticky_ena_q & VCC_q;

    // redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_rdcnt(COUNTER,453)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_rdcnt_i <= 3'd0;
            redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_rdcnt_i == 3'd4)
            begin
                redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_rdcnt_i <= $unsigned(redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_rdcnt_i <= $unsigned(redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_rdcnt_q = redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_rdcnt_i[2:0];

    // redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_wraddr(REG,454)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_wraddr_q <= $unsigned(redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_rdcnt_q);
        end
    end

    // redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_mem(DUALMEM,452)
    assign redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_mem_ia = $unsigned(in_c0_eni17_15_tpl);
    assign redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_mem_aa = redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_wraddr_q;
    assign redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_mem_ab = redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_rdcnt_q;
    assign redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_mem_dmem (
        .clocken1(redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_mem_aa),
        .data_a(redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_mem_ab),
        .q_b(redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_mem_iq),
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
    assign redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_mem_q = redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_mem_iq[31:0];

    // redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_notEnable(LOGICAL,448)
    assign redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_nor(LOGICAL,449)
    assign redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_nor_q = ~ (redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_notEnable_q | redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_sticky_ena_q);

    // redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_mem_last(CONSTANT,445)
    assign redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_cmp(LOGICAL,446)
    assign redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_cmp_b = {1'b0, redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_rdcnt_q};
    assign redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_cmp_q = $unsigned(redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_mem_last_q == redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_cmpReg(REG,447)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_cmpReg_q <= $unsigned(redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_cmp_q);
        end
    end

    // redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_sticky_ena(REG,450)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_nor_q == 1'b1)
        begin
            redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_sticky_ena_q <= $unsigned(redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_cmpReg_q);
        end
    end

    // redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_enaAnd(LOGICAL,451)
    assign redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_enaAnd_q = redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_sticky_ena_q & VCC_q;

    // redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_rdcnt(COUNTER,443)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_rdcnt_i <= 3'd0;
            redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_rdcnt_i == 3'd4)
            begin
                redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_rdcnt_i <= $unsigned(redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_rdcnt_i <= $unsigned(redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_rdcnt_q = redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_rdcnt_i[2:0];

    // redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_wraddr(REG,444)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_wraddr_q <= $unsigned(redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_rdcnt_q);
        end
    end

    // redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_mem(DUALMEM,442)
    assign redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_mem_ia = $unsigned(in_c0_eni17_14_tpl);
    assign redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_mem_aa = redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_wraddr_q;
    assign redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_mem_ab = redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_rdcnt_q;
    assign redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_mem_dmem (
        .clocken1(redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_mem_aa),
        .data_a(redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_mem_ab),
        .q_b(redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_mem_iq),
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
    assign redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_mem_q = redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_mem_iq[31:0];

    // redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_notEnable(LOGICAL,438)
    assign redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_nor(LOGICAL,439)
    assign redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_nor_q = ~ (redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_notEnable_q | redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_sticky_ena_q);

    // redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_mem_last(CONSTANT,435)
    assign redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_cmp(LOGICAL,436)
    assign redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_cmp_b = {1'b0, redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_rdcnt_q};
    assign redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_cmp_q = $unsigned(redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_mem_last_q == redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_cmpReg(REG,437)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_cmpReg_q <= $unsigned(redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_cmp_q);
        end
    end

    // redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_sticky_ena(REG,440)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_nor_q == 1'b1)
        begin
            redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_sticky_ena_q <= $unsigned(redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_cmpReg_q);
        end
    end

    // redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_enaAnd(LOGICAL,441)
    assign redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_enaAnd_q = redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_sticky_ena_q & VCC_q;

    // redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_rdcnt(COUNTER,433)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_rdcnt_i <= 3'd0;
            redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_rdcnt_i == 3'd4)
            begin
                redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_rdcnt_i <= $unsigned(redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_rdcnt_i <= $unsigned(redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_rdcnt_q = redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_rdcnt_i[2:0];

    // redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_wraddr(REG,434)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_wraddr_q <= $unsigned(redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_rdcnt_q);
        end
    end

    // redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_mem(DUALMEM,432)
    assign redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_mem_ia = $unsigned(in_c0_eni17_13_tpl);
    assign redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_mem_aa = redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_wraddr_q;
    assign redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_mem_ab = redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_rdcnt_q;
    assign redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_mem_dmem (
        .clocken1(redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_mem_aa),
        .data_a(redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_mem_ab),
        .q_b(redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_mem_iq),
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
    assign redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_mem_q = redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_mem_iq[31:0];

    // redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_notEnable(LOGICAL,428)
    assign redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_nor(LOGICAL,429)
    assign redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_nor_q = ~ (redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_notEnable_q | redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_sticky_ena_q);

    // redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_mem_last(CONSTANT,425)
    assign redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_cmp(LOGICAL,426)
    assign redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_cmp_b = {1'b0, redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_rdcnt_q};
    assign redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_cmp_q = $unsigned(redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_mem_last_q == redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_cmpReg(REG,427)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_cmpReg_q <= $unsigned(redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_cmp_q);
        end
    end

    // redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_sticky_ena(REG,430)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_nor_q == 1'b1)
        begin
            redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_sticky_ena_q <= $unsigned(redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_cmpReg_q);
        end
    end

    // redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_enaAnd(LOGICAL,431)
    assign redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_enaAnd_q = redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_sticky_ena_q & VCC_q;

    // redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_rdcnt(COUNTER,423)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_rdcnt_i <= 3'd0;
            redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_rdcnt_i == 3'd4)
            begin
                redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_rdcnt_i <= $unsigned(redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_rdcnt_i <= $unsigned(redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_rdcnt_q = redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_rdcnt_i[2:0];

    // redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_wraddr(REG,424)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_wraddr_q <= $unsigned(redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_rdcnt_q);
        end
    end

    // redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_mem(DUALMEM,422)
    assign redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_mem_ia = $unsigned(in_c0_eni17_12_tpl);
    assign redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_mem_aa = redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_wraddr_q;
    assign redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_mem_ab = redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_rdcnt_q;
    assign redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_mem_dmem (
        .clocken1(redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_mem_aa),
        .data_a(redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_mem_ab),
        .q_b(redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_mem_iq),
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
    assign redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_mem_q = redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_mem_iq[31:0];

    // redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_notEnable(LOGICAL,418)
    assign redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_nor(LOGICAL,419)
    assign redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_nor_q = ~ (redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_notEnable_q | redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_sticky_ena_q);

    // redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_mem_last(CONSTANT,415)
    assign redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_cmp(LOGICAL,416)
    assign redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_cmp_b = {1'b0, redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_rdcnt_q};
    assign redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_cmp_q = $unsigned(redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_mem_last_q == redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_cmpReg(REG,417)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_cmpReg_q <= $unsigned(redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_cmp_q);
        end
    end

    // redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_sticky_ena(REG,420)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_nor_q == 1'b1)
        begin
            redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_sticky_ena_q <= $unsigned(redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_cmpReg_q);
        end
    end

    // redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_enaAnd(LOGICAL,421)
    assign redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_enaAnd_q = redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_sticky_ena_q & VCC_q;

    // redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_rdcnt(COUNTER,413)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_rdcnt_i <= 3'd0;
            redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_rdcnt_i == 3'd4)
            begin
                redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_rdcnt_i <= $unsigned(redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_rdcnt_i <= $unsigned(redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_rdcnt_q = redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_rdcnt_i[2:0];

    // redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_wraddr(REG,414)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_wraddr_q <= $unsigned(redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_rdcnt_q);
        end
    end

    // redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_mem(DUALMEM,412)
    assign redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_mem_ia = $unsigned(in_c0_eni17_11_tpl);
    assign redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_mem_aa = redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_wraddr_q;
    assign redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_mem_ab = redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_rdcnt_q;
    assign redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_mem_dmem (
        .clocken1(redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_mem_aa),
        .data_a(redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_mem_ab),
        .q_b(redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_mem_iq),
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
    assign redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_mem_q = redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_mem_iq[31:0];

    // redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_notEnable(LOGICAL,408)
    assign redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_nor(LOGICAL,409)
    assign redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_nor_q = ~ (redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_notEnable_q | redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_sticky_ena_q);

    // redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_mem_last(CONSTANT,405)
    assign redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_cmp(LOGICAL,406)
    assign redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_cmp_b = {1'b0, redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_rdcnt_q};
    assign redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_cmp_q = $unsigned(redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_mem_last_q == redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_cmpReg(REG,407)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_cmpReg_q <= $unsigned(redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_cmp_q);
        end
    end

    // redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_sticky_ena(REG,410)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_nor_q == 1'b1)
        begin
            redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_sticky_ena_q <= $unsigned(redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_cmpReg_q);
        end
    end

    // redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_enaAnd(LOGICAL,411)
    assign redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_enaAnd_q = redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_sticky_ena_q & VCC_q;

    // redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_rdcnt(COUNTER,403)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_rdcnt_i <= 3'd0;
            redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_rdcnt_i == 3'd4)
            begin
                redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_rdcnt_i <= $unsigned(redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_rdcnt_i <= $unsigned(redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_rdcnt_q = redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_rdcnt_i[2:0];

    // redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_wraddr(REG,404)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_wraddr_q <= $unsigned(redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_rdcnt_q);
        end
    end

    // redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_mem(DUALMEM,402)
    assign redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_mem_ia = $unsigned(in_c0_eni17_10_tpl);
    assign redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_mem_aa = redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_wraddr_q;
    assign redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_mem_ab = redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_rdcnt_q;
    assign redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_mem_dmem (
        .clocken1(redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_mem_aa),
        .data_a(redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_mem_ab),
        .q_b(redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_mem_iq),
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
    assign redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_mem_q = redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_mem_iq[31:0];

    // redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_notEnable(LOGICAL,398)
    assign redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_nor(LOGICAL,399)
    assign redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_nor_q = ~ (redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_notEnable_q | redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_sticky_ena_q);

    // redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_mem_last(CONSTANT,395)
    assign redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_cmp(LOGICAL,396)
    assign redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_cmp_b = {1'b0, redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_rdcnt_q};
    assign redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_cmp_q = $unsigned(redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_mem_last_q == redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_cmpReg(REG,397)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_cmpReg_q <= $unsigned(redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_cmp_q);
        end
    end

    // redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_sticky_ena(REG,400)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_nor_q == 1'b1)
        begin
            redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_sticky_ena_q <= $unsigned(redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_cmpReg_q);
        end
    end

    // redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_enaAnd(LOGICAL,401)
    assign redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_enaAnd_q = redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_sticky_ena_q & VCC_q;

    // redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_rdcnt(COUNTER,393)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_rdcnt_i <= 3'd0;
            redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_rdcnt_i == 3'd4)
            begin
                redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_rdcnt_i <= $unsigned(redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_rdcnt_i <= $unsigned(redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_rdcnt_q = redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_rdcnt_i[2:0];

    // redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_wraddr(REG,394)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_wraddr_q <= $unsigned(redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_rdcnt_q);
        end
    end

    // redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_mem(DUALMEM,392)
    assign redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_mem_ia = $unsigned(in_c0_eni17_9_tpl);
    assign redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_mem_aa = redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_wraddr_q;
    assign redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_mem_ab = redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_rdcnt_q;
    assign redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_mem_dmem (
        .clocken1(redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_mem_aa),
        .data_a(redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_mem_ab),
        .q_b(redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_mem_iq),
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
    assign redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_mem_q = redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_mem_iq[31:0];

    // redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_notEnable(LOGICAL,388)
    assign redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_nor(LOGICAL,389)
    assign redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_nor_q = ~ (redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_notEnable_q | redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_sticky_ena_q);

    // redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_mem_last(CONSTANT,385)
    assign redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_cmp(LOGICAL,386)
    assign redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_cmp_b = {1'b0, redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_rdcnt_q};
    assign redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_cmp_q = $unsigned(redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_mem_last_q == redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_cmpReg(REG,387)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_cmpReg_q <= $unsigned(redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_cmp_q);
        end
    end

    // redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_sticky_ena(REG,390)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_nor_q == 1'b1)
        begin
            redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_sticky_ena_q <= $unsigned(redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_cmpReg_q);
        end
    end

    // redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_enaAnd(LOGICAL,391)
    assign redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_enaAnd_q = redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_sticky_ena_q & VCC_q;

    // redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_rdcnt(COUNTER,383)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_rdcnt_i <= 3'd0;
            redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_rdcnt_i == 3'd4)
            begin
                redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_rdcnt_i <= $unsigned(redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_rdcnt_i <= $unsigned(redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_rdcnt_q = redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_rdcnt_i[2:0];

    // redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_wraddr(REG,384)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_wraddr_q <= $unsigned(redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_rdcnt_q);
        end
    end

    // redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_mem(DUALMEM,382)
    assign redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_mem_ia = $unsigned(in_c0_eni17_8_tpl);
    assign redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_mem_aa = redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_wraddr_q;
    assign redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_mem_ab = redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_rdcnt_q;
    assign redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_mem_dmem (
        .clocken1(redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_mem_aa),
        .data_a(redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_mem_ab),
        .q_b(redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_mem_iq),
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
    assign redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_mem_q = redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_mem_iq[31:0];

    // redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_notEnable(LOGICAL,378)
    assign redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_nor(LOGICAL,379)
    assign redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_nor_q = ~ (redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_notEnable_q | redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_sticky_ena_q);

    // redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_mem_last(CONSTANT,375)
    assign redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_cmp(LOGICAL,376)
    assign redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_cmp_b = {1'b0, redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_rdcnt_q};
    assign redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_cmp_q = $unsigned(redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_mem_last_q == redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_cmpReg(REG,377)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_cmpReg_q <= $unsigned(redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_cmp_q);
        end
    end

    // redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_sticky_ena(REG,380)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_nor_q == 1'b1)
        begin
            redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_sticky_ena_q <= $unsigned(redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_cmpReg_q);
        end
    end

    // redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_enaAnd(LOGICAL,381)
    assign redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_enaAnd_q = redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_sticky_ena_q & VCC_q;

    // redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_rdcnt(COUNTER,373)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_rdcnt_i <= 3'd0;
            redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_rdcnt_i == 3'd4)
            begin
                redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_rdcnt_i <= $unsigned(redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_rdcnt_i <= $unsigned(redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_rdcnt_q = redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_rdcnt_i[2:0];

    // redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_wraddr(REG,374)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_wraddr_q <= $unsigned(redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_rdcnt_q);
        end
    end

    // redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_mem(DUALMEM,372)
    assign redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_mem_ia = $unsigned(in_c0_eni17_7_tpl);
    assign redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_mem_aa = redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_wraddr_q;
    assign redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_mem_ab = redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_rdcnt_q;
    assign redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_mem_dmem (
        .clocken1(redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_mem_aa),
        .data_a(redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_mem_ab),
        .q_b(redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_mem_iq),
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
    assign redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_mem_q = redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_mem_iq[31:0];

    // redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_notEnable(LOGICAL,368)
    assign redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_nor(LOGICAL,369)
    assign redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_nor_q = ~ (redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_notEnable_q | redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_sticky_ena_q);

    // redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_mem_last(CONSTANT,365)
    assign redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_cmp(LOGICAL,366)
    assign redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_cmp_b = {1'b0, redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_rdcnt_q};
    assign redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_cmp_q = $unsigned(redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_mem_last_q == redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_cmpReg(REG,367)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_cmpReg_q <= $unsigned(redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_cmp_q);
        end
    end

    // redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_sticky_ena(REG,370)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_nor_q == 1'b1)
        begin
            redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_sticky_ena_q <= $unsigned(redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_cmpReg_q);
        end
    end

    // redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_enaAnd(LOGICAL,371)
    assign redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_enaAnd_q = redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_sticky_ena_q & VCC_q;

    // redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_rdcnt(COUNTER,363)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_rdcnt_i <= 3'd0;
            redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_rdcnt_i == 3'd4)
            begin
                redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_rdcnt_i <= $unsigned(redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_rdcnt_i <= $unsigned(redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_rdcnt_q = redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_rdcnt_i[2:0];

    // redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_wraddr(REG,364)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_wraddr_q <= $unsigned(redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_rdcnt_q);
        end
    end

    // redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_mem(DUALMEM,362)
    assign redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_mem_ia = $unsigned(in_c0_eni17_6_tpl);
    assign redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_mem_aa = redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_wraddr_q;
    assign redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_mem_ab = redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_rdcnt_q;
    assign redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_mem_dmem (
        .clocken1(redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_mem_aa),
        .data_a(redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_mem_ab),
        .q_b(redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_mem_iq),
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
    assign redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_mem_q = redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_mem_iq[31:0];

    // redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_notEnable(LOGICAL,358)
    assign redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_nor(LOGICAL,359)
    assign redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_nor_q = ~ (redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_notEnable_q | redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_sticky_ena_q);

    // redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_mem_last(CONSTANT,355)
    assign redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_cmp(LOGICAL,356)
    assign redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_cmp_b = {1'b0, redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_rdcnt_q};
    assign redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_cmp_q = $unsigned(redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_mem_last_q == redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_cmpReg(REG,357)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_cmpReg_q <= $unsigned(redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_cmp_q);
        end
    end

    // redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_sticky_ena(REG,360)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_nor_q == 1'b1)
        begin
            redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_sticky_ena_q <= $unsigned(redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_cmpReg_q);
        end
    end

    // redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_enaAnd(LOGICAL,361)
    assign redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_enaAnd_q = redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_sticky_ena_q & VCC_q;

    // redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_rdcnt(COUNTER,353)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_rdcnt_i <= 3'd0;
            redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_rdcnt_i == 3'd4)
            begin
                redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_rdcnt_i <= $unsigned(redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_rdcnt_i <= $unsigned(redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_rdcnt_q = redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_rdcnt_i[2:0];

    // redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_wraddr(REG,354)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_wraddr_q <= $unsigned(redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_rdcnt_q);
        end
    end

    // redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_mem(DUALMEM,352)
    assign redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_mem_ia = $unsigned(in_c0_eni17_5_tpl);
    assign redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_mem_aa = redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_wraddr_q;
    assign redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_mem_ab = redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_rdcnt_q;
    assign redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_mem_dmem (
        .clocken1(redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_mem_aa),
        .data_a(redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_mem_ab),
        .q_b(redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_mem_iq),
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
    assign redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_mem_q = redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_mem_iq[31:0];

    // redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_notEnable(LOGICAL,348)
    assign redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_nor(LOGICAL,349)
    assign redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_nor_q = ~ (redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_notEnable_q | redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_sticky_ena_q);

    // redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_mem_last(CONSTANT,345)
    assign redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_cmp(LOGICAL,346)
    assign redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_cmp_b = {1'b0, redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_rdcnt_q};
    assign redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_cmp_q = $unsigned(redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_mem_last_q == redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_cmpReg(REG,347)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_cmpReg_q <= $unsigned(redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_cmp_q);
        end
    end

    // redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_sticky_ena(REG,350)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_nor_q == 1'b1)
        begin
            redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_sticky_ena_q <= $unsigned(redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_cmpReg_q);
        end
    end

    // redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_enaAnd(LOGICAL,351)
    assign redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_enaAnd_q = redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_sticky_ena_q & VCC_q;

    // redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_rdcnt(COUNTER,343)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_rdcnt_i <= 3'd0;
            redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_rdcnt_i == 3'd4)
            begin
                redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_rdcnt_i <= $unsigned(redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_rdcnt_i <= $unsigned(redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_rdcnt_q = redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_rdcnt_i[2:0];

    // redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_wraddr(REG,344)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_wraddr_q <= $unsigned(redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_rdcnt_q);
        end
    end

    // redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_mem(DUALMEM,342)
    assign redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_mem_ia = $unsigned(in_c0_eni17_4_tpl);
    assign redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_mem_aa = redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_wraddr_q;
    assign redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_mem_ab = redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_rdcnt_q;
    assign redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_mem_dmem (
        .clocken1(redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_mem_aa),
        .data_a(redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_mem_ab),
        .q_b(redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_mem_iq),
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
    assign redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_mem_q = redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_mem_iq[31:0];

    // redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_notEnable(LOGICAL,338)
    assign redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_nor(LOGICAL,339)
    assign redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_nor_q = ~ (redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_notEnable_q | redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_sticky_ena_q);

    // redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_mem_last(CONSTANT,335)
    assign redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_cmp(LOGICAL,336)
    assign redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_cmp_b = {1'b0, redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_rdcnt_q};
    assign redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_cmp_q = $unsigned(redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_mem_last_q == redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_cmpReg(REG,337)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_cmpReg_q <= $unsigned(redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_cmp_q);
        end
    end

    // redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_sticky_ena(REG,340)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_nor_q == 1'b1)
        begin
            redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_sticky_ena_q <= $unsigned(redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_cmpReg_q);
        end
    end

    // redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_enaAnd(LOGICAL,341)
    assign redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_enaAnd_q = redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_sticky_ena_q & VCC_q;

    // redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_rdcnt(COUNTER,333)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_rdcnt_i <= 3'd0;
            redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_rdcnt_i == 3'd4)
            begin
                redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_rdcnt_i <= $unsigned(redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_rdcnt_i <= $unsigned(redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_rdcnt_q = redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_rdcnt_i[2:0];

    // redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_wraddr(REG,334)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_wraddr_q <= $unsigned(redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_rdcnt_q);
        end
    end

    // redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_mem(DUALMEM,332)
    assign redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_mem_ia = $unsigned(in_c0_eni17_3_tpl);
    assign redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_mem_aa = redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_wraddr_q;
    assign redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_mem_ab = redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_rdcnt_q;
    assign redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_mem_dmem (
        .clocken1(redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_mem_aa),
        .data_a(redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_mem_ab),
        .q_b(redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_mem_iq),
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
    assign redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_mem_q = redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_mem_iq[31:0];

    // redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_notEnable(LOGICAL,328)
    assign redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_nor(LOGICAL,329)
    assign redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_nor_q = ~ (redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_notEnable_q | redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_sticky_ena_q);

    // redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_mem_last(CONSTANT,325)
    assign redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_cmp(LOGICAL,326)
    assign redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_cmp_b = {1'b0, redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_rdcnt_q};
    assign redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_cmp_q = $unsigned(redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_mem_last_q == redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_cmpReg(REG,327)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_cmpReg_q <= $unsigned(redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_cmp_q);
        end
    end

    // redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_sticky_ena(REG,330)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_nor_q == 1'b1)
        begin
            redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_sticky_ena_q <= $unsigned(redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_cmpReg_q);
        end
    end

    // redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_enaAnd(LOGICAL,331)
    assign redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_enaAnd_q = redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_sticky_ena_q & VCC_q;

    // redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_rdcnt(COUNTER,323)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_rdcnt_i <= 3'd0;
            redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_rdcnt_i == 3'd4)
            begin
                redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_rdcnt_i <= $unsigned(redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_rdcnt_i <= $unsigned(redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_rdcnt_q = redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_rdcnt_i[2:0];

    // redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_wraddr(REG,324)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_wraddr_q <= $unsigned(redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_rdcnt_q);
        end
    end

    // redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_mem(DUALMEM,322)
    assign redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_mem_ia = $unsigned(in_c0_eni17_2_tpl);
    assign redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_mem_aa = redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_wraddr_q;
    assign redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_mem_ab = redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_rdcnt_q;
    assign redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_mem_dmem (
        .clocken1(redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_mem_aa),
        .data_a(redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_mem_ab),
        .q_b(redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_mem_iq),
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
    assign redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_mem_q = redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_mem_iq[31:0];

    // redist0_sync_together181_aunroll_x_in_c0_eni17_1_tpl_3(DELAY,291)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together181_aunroll_x_in_c0_eni17_1_tpl_3_delay_0 <= '0;
            redist0_sync_together181_aunroll_x_in_c0_eni17_1_tpl_3_delay_1 <= '0;
            redist0_sync_together181_aunroll_x_in_c0_eni17_1_tpl_3_q <= '0;
        end
        else
        begin
            redist0_sync_together181_aunroll_x_in_c0_eni17_1_tpl_3_delay_0 <= $unsigned(in_c0_eni17_1_tpl);
            redist0_sync_together181_aunroll_x_in_c0_eni17_1_tpl_3_delay_1 <= redist0_sync_together181_aunroll_x_in_c0_eni17_1_tpl_3_delay_0;
            redist0_sync_together181_aunroll_x_in_c0_eni17_1_tpl_3_q <= redist0_sync_together181_aunroll_x_in_c0_eni17_1_tpl_3_delay_1;
        end
    end

    // redist1_sync_together181_aunroll_x_in_c0_eni17_1_tpl_6(DELAY,292)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together181_aunroll_x_in_c0_eni17_1_tpl_6_delay_0 <= '0;
            redist1_sync_together181_aunroll_x_in_c0_eni17_1_tpl_6_delay_1 <= '0;
            redist1_sync_together181_aunroll_x_in_c0_eni17_1_tpl_6_q <= '0;
        end
        else
        begin
            redist1_sync_together181_aunroll_x_in_c0_eni17_1_tpl_6_delay_0 <= $unsigned(redist0_sync_together181_aunroll_x_in_c0_eni17_1_tpl_3_q);
            redist1_sync_together181_aunroll_x_in_c0_eni17_1_tpl_6_delay_1 <= redist1_sync_together181_aunroll_x_in_c0_eni17_1_tpl_6_delay_0;
            redist1_sync_together181_aunroll_x_in_c0_eni17_1_tpl_6_q <= redist1_sync_together181_aunroll_x_in_c0_eni17_1_tpl_6_delay_1;
        end
    end

    // redist2_sync_together181_aunroll_x_in_c0_eni17_1_tpl_7(DELAY,293)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together181_aunroll_x_in_c0_eni17_1_tpl_7_q <= '0;
        end
        else
        begin
            redist2_sync_together181_aunroll_x_in_c0_eni17_1_tpl_7_q <= $unsigned(redist1_sync_together181_aunroll_x_in_c0_eni17_1_tpl_6_q);
        end
    end

    // valid_fanout_reg40(REG,220)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg40_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg40_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg41(REG,221)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg41_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg41_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // redist24_i_unnamed_conv2d1x137_q_4(DELAY,315)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_unnamed_conv2d1x137_q_4_delay_0 <= '0;
            redist24_i_unnamed_conv2d1x137_q_4_delay_1 <= '0;
            redist24_i_unnamed_conv2d1x137_q_4_delay_2 <= '0;
            redist24_i_unnamed_conv2d1x137_q_4_q <= '0;
        end
        else
        begin
            redist24_i_unnamed_conv2d1x137_q_4_delay_0 <= $unsigned(i_unnamed_conv2d1x137_q);
            redist24_i_unnamed_conv2d1x137_q_4_delay_1 <= redist24_i_unnamed_conv2d1x137_q_4_delay_0;
            redist24_i_unnamed_conv2d1x137_q_4_delay_2 <= redist24_i_unnamed_conv2d1x137_q_4_delay_1;
            redist24_i_unnamed_conv2d1x137_q_4_q <= redist24_i_unnamed_conv2d1x137_q_4_delay_2;
        end
    end

    // redist25_i_unnamed_conv2d1x137_q_6(DELAY,316)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_unnamed_conv2d1x137_q_6_delay_0 <= '0;
            redist25_i_unnamed_conv2d1x137_q_6_q <= '0;
        end
        else
        begin
            redist25_i_unnamed_conv2d1x137_q_6_delay_0 <= $unsigned(redist24_i_unnamed_conv2d1x137_q_4_q);
            redist25_i_unnamed_conv2d1x137_q_6_q <= redist25_i_unnamed_conv2d1x137_q_6_delay_0;
        end
    end

    // i_llvm_fpga_fanout_i1_fanout_adaptor851_conv2d1x138(REG,79)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_fanout_adaptor851_conv2d1x138_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_fanout_adaptor851_conv2d1x138_q <= redist25_i_unnamed_conv2d1x137_q_6_q;
        end
    end

    // i_llvm_fpga_push_f32_spec_select336102_push26_conv2d1x177(BLACKBOX,121)@8
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select336102_push26_0 thei_llvm_fpga_push_f32_spec_select336102_push26_conv2d1x177 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select336102_pop26_conv2d1x176_out_data_out),
        .in_fanout_adaptor851(i_llvm_fpga_fanout_i1_fanout_adaptor851_conv2d1x138_q),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_f32_spec_select336102_pop26_conv2d1x176_out_feedback_stall_out_26),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg41_q),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_f32_spec_select336102_push26_conv2d1x177_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_f32_spec_select336102_push26_conv2d1x177_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor850_conv2d1x12(REG,77)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor850_conv2d1x12_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor850_conv2d1x12_q <= redist1_sync_together181_aunroll_x_in_c0_eni17_1_tpl_6_q;
        end
    end

    // i_llvm_fpga_pop_f32_spec_select336102_pop26_conv2d1x176(BLACKBOX,103)@8
    // out out_feedback_stall_out_26@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select336102_pop26_0 thei_llvm_fpga_pop_f32_spec_select336102_pop26_conv2d1x176 (
        .in_data_in(redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_mem_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor850_conv2d1x12_q),
        .in_feedback_in_26(i_llvm_fpga_push_f32_spec_select336102_push26_conv2d1x177_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_f32_spec_select336102_push26_conv2d1x177_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg40_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select336102_pop26_conv2d1x176_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_f32_spec_select336102_pop26_conv2d1x176_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg38(REG,218)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg38_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg38_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg39(REG,219)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg39_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg39_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_f32_spec_select33599_push25_conv2d1x175(BLACKBOX,120)@8
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select33599_push25_0 thei_llvm_fpga_push_f32_spec_select33599_push25_conv2d1x175 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select33599_pop25_conv2d1x174_out_data_out),
        .in_fanout_adaptor851(i_llvm_fpga_fanout_i1_fanout_adaptor851_conv2d1x138_q),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_f32_spec_select33599_pop25_conv2d1x174_out_feedback_stall_out_25),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg39_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_f32_spec_select33599_push25_conv2d1x175_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_f32_spec_select33599_push25_conv2d1x175_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select33599_pop25_conv2d1x174(BLACKBOX,102)@8
    // out out_feedback_stall_out_25@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select33599_pop25_0 thei_llvm_fpga_pop_f32_spec_select33599_pop25_conv2d1x174 (
        .in_data_in(redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_mem_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor850_conv2d1x12_q),
        .in_feedback_in_25(i_llvm_fpga_push_f32_spec_select33599_push25_conv2d1x175_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_f32_spec_select33599_push25_conv2d1x175_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg38_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select33599_pop25_conv2d1x174_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_f32_spec_select33599_pop25_conv2d1x174_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg36(REG,216)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg36_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg37(REG,217)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg37_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_f32_spec_select33496_push24_conv2d1x173(BLACKBOX,119)@8
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select33496_push24_0 thei_llvm_fpga_push_f32_spec_select33496_push24_conv2d1x173 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select33496_pop24_conv2d1x172_out_data_out),
        .in_fanout_adaptor851(i_llvm_fpga_fanout_i1_fanout_adaptor851_conv2d1x138_q),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_f32_spec_select33496_pop24_conv2d1x172_out_feedback_stall_out_24),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_f32_spec_select33496_push24_conv2d1x173_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_f32_spec_select33496_push24_conv2d1x173_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select33496_pop24_conv2d1x172(BLACKBOX,101)@8
    // out out_feedback_stall_out_24@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select33496_pop24_0 thei_llvm_fpga_pop_f32_spec_select33496_pop24_conv2d1x172 (
        .in_data_in(redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_mem_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor850_conv2d1x12_q),
        .in_feedback_in_24(i_llvm_fpga_push_f32_spec_select33496_push24_conv2d1x173_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_f32_spec_select33496_push24_conv2d1x173_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select33496_pop24_conv2d1x172_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_f32_spec_select33496_pop24_conv2d1x172_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg34(REG,214)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg34_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg35(REG,215)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg35_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_f32_spec_select33393_push23_conv2d1x171(BLACKBOX,118)@8
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select33393_push23_0 thei_llvm_fpga_push_f32_spec_select33393_push23_conv2d1x171 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select33393_pop23_conv2d1x170_out_data_out),
        .in_fanout_adaptor851(i_llvm_fpga_fanout_i1_fanout_adaptor851_conv2d1x138_q),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_f32_spec_select33393_pop23_conv2d1x170_out_feedback_stall_out_23),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_f32_spec_select33393_push23_conv2d1x171_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_f32_spec_select33393_push23_conv2d1x171_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select33393_pop23_conv2d1x170(BLACKBOX,100)@8
    // out out_feedback_stall_out_23@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select33393_pop23_0 thei_llvm_fpga_pop_f32_spec_select33393_pop23_conv2d1x170 (
        .in_data_in(redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_mem_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor850_conv2d1x12_q),
        .in_feedback_in_23(i_llvm_fpga_push_f32_spec_select33393_push23_conv2d1x171_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_f32_spec_select33393_push23_conv2d1x171_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select33393_pop23_conv2d1x170_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_f32_spec_select33393_pop23_conv2d1x170_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg32(REG,212)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg32_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg33(REG,213)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg33_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d1x139(REG,80)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d1x139_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d1x139_q <= redist24_i_unnamed_conv2d1x137_q_4_q;
        end
    end

    // redist28_i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d1x139_q_2(DELAY,319)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d1x139_q_2_delay_0 <= '0;
            redist28_i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d1x139_q_2_q <= '0;
        end
        else
        begin
            redist28_i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d1x139_q_2_delay_0 <= $unsigned(i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d1x139_q);
            redist28_i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d1x139_q_2_q <= redist28_i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d1x139_q_2_delay_0;
        end
    end

    // i_llvm_fpga_push_f32_spec_select33290_push22_conv2d1x169(BLACKBOX,117)@8
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select33290_push22_0 thei_llvm_fpga_push_f32_spec_select33290_push22_conv2d1x169 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select33290_pop22_conv2d1x168_out_data_out),
        .in_fanout_adaptor(redist28_i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d1x139_q_2_q),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_f32_spec_select33290_pop22_conv2d1x168_out_feedback_stall_out_22),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_f32_spec_select33290_push22_conv2d1x169_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_f32_spec_select33290_push22_conv2d1x169_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13(REG,78)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q <= redist0_sync_together181_aunroll_x_in_c0_eni17_1_tpl_3_q;
        end
    end

    // redist29_i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q_3(DELAY,320)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q_3_delay_0 <= '0;
            redist29_i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q_3_delay_1 <= '0;
            redist29_i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q_3_q <= '0;
        end
        else
        begin
            redist29_i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q_3_delay_0 <= $unsigned(i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q);
            redist29_i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q_3_delay_1 <= redist29_i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q_3_delay_0;
            redist29_i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q_3_q <= redist29_i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q_3_delay_1;
        end
    end

    // i_llvm_fpga_pop_f32_spec_select33290_pop22_conv2d1x168(BLACKBOX,99)@8
    // out out_feedback_stall_out_22@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select33290_pop22_0 thei_llvm_fpga_pop_f32_spec_select33290_pop22_conv2d1x168 (
        .in_data_in(redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_mem_q),
        .in_dir(redist29_i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q_3_q),
        .in_feedback_in_22(i_llvm_fpga_push_f32_spec_select33290_push22_conv2d1x169_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_f32_spec_select33290_push22_conv2d1x169_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select33290_pop22_conv2d1x168_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_f32_spec_select33290_pop22_conv2d1x168_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg30(REG,210)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg31(REG,211)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_f32_spec_select33187_push21_conv2d1x167(BLACKBOX,116)@8
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select33187_push21_0 thei_llvm_fpga_push_f32_spec_select33187_push21_conv2d1x167 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select33187_pop21_conv2d1x166_out_data_out),
        .in_fanout_adaptor(redist28_i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d1x139_q_2_q),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_f32_spec_select33187_pop21_conv2d1x166_out_feedback_stall_out_21),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_f32_spec_select33187_push21_conv2d1x167_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_f32_spec_select33187_push21_conv2d1x167_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select33187_pop21_conv2d1x166(BLACKBOX,98)@8
    // out out_feedback_stall_out_21@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select33187_pop21_0 thei_llvm_fpga_pop_f32_spec_select33187_pop21_conv2d1x166 (
        .in_data_in(redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_mem_q),
        .in_dir(redist29_i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q_3_q),
        .in_feedback_in_21(i_llvm_fpga_push_f32_spec_select33187_push21_conv2d1x167_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_f32_spec_select33187_push21_conv2d1x167_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select33187_pop21_conv2d1x166_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_f32_spec_select33187_pop21_conv2d1x166_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg28(REG,208)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg29(REG,209)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_f32_spec_select33084_push20_conv2d1x165(BLACKBOX,115)@8
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select33084_push20_0 thei_llvm_fpga_push_f32_spec_select33084_push20_conv2d1x165 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select33084_pop20_conv2d1x164_out_data_out),
        .in_fanout_adaptor(redist28_i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d1x139_q_2_q),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_f32_spec_select33084_pop20_conv2d1x164_out_feedback_stall_out_20),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_f32_spec_select33084_push20_conv2d1x165_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_f32_spec_select33084_push20_conv2d1x165_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select33084_pop20_conv2d1x164(BLACKBOX,97)@8
    // out out_feedback_stall_out_20@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select33084_pop20_0 thei_llvm_fpga_pop_f32_spec_select33084_pop20_conv2d1x164 (
        .in_data_in(redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_mem_q),
        .in_dir(redist29_i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q_3_q),
        .in_feedback_in_20(i_llvm_fpga_push_f32_spec_select33084_push20_conv2d1x165_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_f32_spec_select33084_push20_conv2d1x165_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select33084_pop20_conv2d1x164_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_f32_spec_select33084_pop20_conv2d1x164_out_feedback_stall_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg26(REG,206)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg27(REG,207)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_f32_spec_select32981_push19_conv2d1x163(BLACKBOX,114)@8
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select32981_push19_0 thei_llvm_fpga_push_f32_spec_select32981_push19_conv2d1x163 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select32981_pop19_conv2d1x162_out_data_out),
        .in_fanout_adaptor(redist28_i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d1x139_q_2_q),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_f32_spec_select32981_pop19_conv2d1x162_out_feedback_stall_out_19),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_f32_spec_select32981_push19_conv2d1x163_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_f32_spec_select32981_push19_conv2d1x163_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select32981_pop19_conv2d1x162(BLACKBOX,96)@8
    // out out_feedback_stall_out_19@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select32981_pop19_0 thei_llvm_fpga_pop_f32_spec_select32981_pop19_conv2d1x162 (
        .in_data_in(redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_mem_q),
        .in_dir(redist29_i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q_3_q),
        .in_feedback_in_19(i_llvm_fpga_push_f32_spec_select32981_push19_conv2d1x163_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_f32_spec_select32981_push19_conv2d1x163_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select32981_pop19_conv2d1x162_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_f32_spec_select32981_pop19_conv2d1x162_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg24(REG,204)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg25(REG,205)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_f32_spec_select32878_push18_conv2d1x161(BLACKBOX,113)@8
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select32878_push18_0 thei_llvm_fpga_push_f32_spec_select32878_push18_conv2d1x161 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select32878_pop18_conv2d1x160_out_data_out),
        .in_fanout_adaptor(redist28_i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d1x139_q_2_q),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_f32_spec_select32878_pop18_conv2d1x160_out_feedback_stall_out_18),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_f32_spec_select32878_push18_conv2d1x161_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_f32_spec_select32878_push18_conv2d1x161_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select32878_pop18_conv2d1x160(BLACKBOX,95)@8
    // out out_feedback_stall_out_18@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select32878_pop18_0 thei_llvm_fpga_pop_f32_spec_select32878_pop18_conv2d1x160 (
        .in_data_in(redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_mem_q),
        .in_dir(redist29_i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q_3_q),
        .in_feedback_in_18(i_llvm_fpga_push_f32_spec_select32878_push18_conv2d1x161_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_f32_spec_select32878_push18_conv2d1x161_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select32878_pop18_conv2d1x160_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_f32_spec_select32878_pop18_conv2d1x160_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg22(REG,202)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg23(REG,203)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_f32_spec_select32775_push17_conv2d1x159(BLACKBOX,112)@8
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select32775_push17_0 thei_llvm_fpga_push_f32_spec_select32775_push17_conv2d1x159 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select32775_pop17_conv2d1x158_out_data_out),
        .in_fanout_adaptor(redist28_i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d1x139_q_2_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_f32_spec_select32775_pop17_conv2d1x158_out_feedback_stall_out_17),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_f32_spec_select32775_push17_conv2d1x159_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_f32_spec_select32775_push17_conv2d1x159_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select32775_pop17_conv2d1x158(BLACKBOX,94)@8
    // out out_feedback_stall_out_17@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select32775_pop17_0 thei_llvm_fpga_pop_f32_spec_select32775_pop17_conv2d1x158 (
        .in_data_in(redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_mem_q),
        .in_dir(redist29_i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q_3_q),
        .in_feedback_in_17(i_llvm_fpga_push_f32_spec_select32775_push17_conv2d1x159_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_f32_spec_select32775_push17_conv2d1x159_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select32775_pop17_conv2d1x158_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_f32_spec_select32775_pop17_conv2d1x158_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg20(REG,200)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg21(REG,201)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_f32_spec_select32672_push16_conv2d1x157(BLACKBOX,111)@8
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select32672_push16_0 thei_llvm_fpga_push_f32_spec_select32672_push16_conv2d1x157 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select32672_pop16_conv2d1x156_out_data_out),
        .in_fanout_adaptor(redist28_i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d1x139_q_2_q),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_f32_spec_select32672_pop16_conv2d1x156_out_feedback_stall_out_16),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_f32_spec_select32672_push16_conv2d1x157_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_f32_spec_select32672_push16_conv2d1x157_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select32672_pop16_conv2d1x156(BLACKBOX,93)@8
    // out out_feedback_stall_out_16@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select32672_pop16_0 thei_llvm_fpga_pop_f32_spec_select32672_pop16_conv2d1x156 (
        .in_data_in(redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_mem_q),
        .in_dir(redist29_i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q_3_q),
        .in_feedback_in_16(i_llvm_fpga_push_f32_spec_select32672_push16_conv2d1x157_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_f32_spec_select32672_push16_conv2d1x157_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select32672_pop16_conv2d1x156_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_f32_spec_select32672_pop16_conv2d1x156_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg18(REG,198)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg19(REG,199)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_f32_spec_select32569_push15_conv2d1x155(BLACKBOX,110)@8
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select32569_push15_0 thei_llvm_fpga_push_f32_spec_select32569_push15_conv2d1x155 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select32569_pop15_conv2d1x154_out_data_out),
        .in_fanout_adaptor(redist28_i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d1x139_q_2_q),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_f32_spec_select32569_pop15_conv2d1x154_out_feedback_stall_out_15),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_f32_spec_select32569_push15_conv2d1x155_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_f32_spec_select32569_push15_conv2d1x155_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select32569_pop15_conv2d1x154(BLACKBOX,92)@8
    // out out_feedback_stall_out_15@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select32569_pop15_0 thei_llvm_fpga_pop_f32_spec_select32569_pop15_conv2d1x154 (
        .in_data_in(redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_mem_q),
        .in_dir(redist29_i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q_3_q),
        .in_feedback_in_15(i_llvm_fpga_push_f32_spec_select32569_push15_conv2d1x155_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_f32_spec_select32569_push15_conv2d1x155_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select32569_pop15_conv2d1x154_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_f32_spec_select32569_pop15_conv2d1x154_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg16(REG,196)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg17(REG,197)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_f32_spec_select32466_push14_conv2d1x153(BLACKBOX,109)@8
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select32466_push14_0 thei_llvm_fpga_push_f32_spec_select32466_push14_conv2d1x153 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select32466_pop14_conv2d1x152_out_data_out),
        .in_fanout_adaptor(redist28_i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d1x139_q_2_q),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_f32_spec_select32466_pop14_conv2d1x152_out_feedback_stall_out_14),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_f32_spec_select32466_push14_conv2d1x153_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_f32_spec_select32466_push14_conv2d1x153_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select32466_pop14_conv2d1x152(BLACKBOX,91)@8
    // out out_feedback_stall_out_14@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select32466_pop14_0 thei_llvm_fpga_pop_f32_spec_select32466_pop14_conv2d1x152 (
        .in_data_in(redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_mem_q),
        .in_dir(redist29_i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q_3_q),
        .in_feedback_in_14(i_llvm_fpga_push_f32_spec_select32466_push14_conv2d1x153_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_f32_spec_select32466_push14_conv2d1x153_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select32466_pop14_conv2d1x152_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_f32_spec_select32466_pop14_conv2d1x152_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg14(REG,194)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg15(REG,195)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_f32_spec_select32363_push13_conv2d1x151(BLACKBOX,108)@8
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select32363_push13_0 thei_llvm_fpga_push_f32_spec_select32363_push13_conv2d1x151 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select32363_pop13_conv2d1x150_out_data_out),
        .in_fanout_adaptor(redist28_i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d1x139_q_2_q),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_f32_spec_select32363_pop13_conv2d1x150_out_feedback_stall_out_13),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_f32_spec_select32363_push13_conv2d1x151_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_f32_spec_select32363_push13_conv2d1x151_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select32363_pop13_conv2d1x150(BLACKBOX,90)@8
    // out out_feedback_stall_out_13@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select32363_pop13_0 thei_llvm_fpga_pop_f32_spec_select32363_pop13_conv2d1x150 (
        .in_data_in(redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_mem_q),
        .in_dir(redist29_i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q_3_q),
        .in_feedback_in_13(i_llvm_fpga_push_f32_spec_select32363_push13_conv2d1x151_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_f32_spec_select32363_push13_conv2d1x151_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select32363_pop13_conv2d1x150_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_f32_spec_select32363_pop13_conv2d1x150_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg12(REG,192)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg13(REG,193)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_f32_push12_conv2d1x149(BLACKBOX,107)@8
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push12_0 thei_llvm_fpga_push_f32_push12_conv2d1x149 (
        .in_data_in(i_llvm_fpga_pop_f32_pop12_conv2d1x148_out_data_out),
        .in_fanout_adaptor(redist28_i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d1x139_q_2_q),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_f32_pop12_conv2d1x148_out_feedback_stall_out_12),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_f32_push12_conv2d1x149_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_f32_push12_conv2d1x149_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop12_conv2d1x148(BLACKBOX,89)@8
    // out out_feedback_stall_out_12@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop12_0 thei_llvm_fpga_pop_f32_pop12_conv2d1x148 (
        .in_data_in(redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_mem_q),
        .in_dir(redist29_i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q_3_q),
        .in_feedback_in_12(i_llvm_fpga_push_f32_push12_conv2d1x149_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_f32_push12_conv2d1x149_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop12_conv2d1x148_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_f32_pop12_conv2d1x148_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg10(REG,190)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg11(REG,191)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_f32_spec_select60_push11_conv2d1x147(BLACKBOX,122)@8
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select60_push11_0 thei_llvm_fpga_push_f32_spec_select60_push11_conv2d1x147 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select60_pop11_conv2d1x146_out_data_out),
        .in_fanout_adaptor(redist28_i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d1x139_q_2_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_f32_spec_select60_pop11_conv2d1x146_out_feedback_stall_out_11),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_f32_spec_select60_push11_conv2d1x147_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_f32_spec_select60_push11_conv2d1x147_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select60_pop11_conv2d1x146(BLACKBOX,104)@8
    // out out_feedback_stall_out_11@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select60_pop11_0 thei_llvm_fpga_pop_f32_spec_select60_pop11_conv2d1x146 (
        .in_data_in(redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_mem_q),
        .in_dir(redist29_i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q_3_q),
        .in_feedback_in_11(i_llvm_fpga_push_f32_spec_select60_push11_conv2d1x147_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_f32_spec_select60_push11_conv2d1x147_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select60_pop11_conv2d1x146_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_f32_spec_select60_pop11_conv2d1x146_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp24_conv2d1x140(LOGICAL,134)@8
    assign i_notcmp24_conv2d1x140_q = redist28_i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d1x139_q_2_q ^ VCC_q;

    // redist26_i_unnamed_conv2d1x137_q_7(DELAY,317)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_unnamed_conv2d1x137_q_7_q <= '0;
        end
        else
        begin
            redist26_i_unnamed_conv2d1x137_q_7_q <= $unsigned(redist25_i_unnamed_conv2d1x137_q_6_q);
        end
    end

    // valid_fanout_reg6(REG,186)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist19_sync_together181_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg9(REG,189)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist20_sync_together181_aunroll_x_in_i_valid_4_q);
        end
    end

    // c_i32_1129(CONSTANT,60)
    assign c_i32_1129_q = $unsigned(32'b00000000000000000000000000000001);

    // redist27_i_llvm_fpga_pop_i32_f_i_070_pop10_conv2d1x127_out_data_out_1(DELAY,318)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_i32_f_i_070_pop10_conv2d1x127_out_data_out_1_q <= '0;
        end
        else
        begin
            redist27_i_llvm_fpga_pop_i32_f_i_070_pop10_conv2d1x127_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_f_i_070_pop10_conv2d1x127_out_data_out);
        end
    end

    // i_inc105_conv2d1x144(ADD,76)@6
    assign i_inc105_conv2d1x144_a = {1'b0, redist27_i_llvm_fpga_pop_i32_f_i_070_pop10_conv2d1x127_out_data_out_1_q};
    assign i_inc105_conv2d1x144_b = {1'b0, c_i32_1129_q};
    assign i_inc105_conv2d1x144_o = $unsigned(i_inc105_conv2d1x144_a) + $unsigned(i_inc105_conv2d1x144_b);
    assign i_inc105_conv2d1x144_q = i_inc105_conv2d1x144_o[32:0];

    // bgTrunc_i_inc105_conv2d1x144_sel_x(BITSELECT,162)@6
    assign bgTrunc_i_inc105_conv2d1x144_sel_x_b = i_inc105_conv2d1x144_q[31:0];

    // i_llvm_fpga_push_i32_f_i_070_push10_conv2d1x145(BLACKBOX,124)@6
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    conv2d1x1_i_llvm_fpga_push_i32_f_i_070_push10_0 thei_llvm_fpga_push_i32_f_i_070_push10_conv2d1x145 (
        .in_data_in(bgTrunc_i_inc105_conv2d1x144_sel_x_b),
        .in_fanout_adaptor(i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d1x139_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i32_f_i_070_pop10_conv2d1x127_out_feedback_stall_out_10),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i32_f_i_070_push10_conv2d1x145_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i32_f_i_070_push10_conv2d1x145_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_0128(CONSTANT,59)
    assign c_i32_0128_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_f_i_070_pop10_conv2d1x127(BLACKBOX,105)@5
    // out out_feedback_stall_out_10@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_f_i_070_pop10_0 thei_llvm_fpga_pop_i32_f_i_070_pop10_conv2d1x127 (
        .in_data_in(c_i32_0128_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1374_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_10(i_llvm_fpga_push_i32_f_i_070_push10_conv2d1x145_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i32_f_i_070_push10_conv2d1x145_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_f_i_070_pop10_conv2d1x127_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i32_f_i_070_pop10_conv2d1x127_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul21_conv2d1x132_bs4(BITSELECT,237)@5
    assign i_mul21_conv2d1x132_bs4_in = i_llvm_fpga_pop_i32_f_i_070_pop10_conv2d1x127_out_data_out[17:0];
    assign i_mul21_conv2d1x132_bs4_b = i_mul21_conv2d1x132_bs4_in[17:0];

    // valid_fanout_reg3(REG,183)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer15_conv2d1x111(BLACKBOX,86)@2
    conv2d1x1_i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer15_0 thei_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer15_conv2d1x111 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer15_conv2d1x111_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_conv2d1x112_bs2_merged_bit_select(BITSELECT,288)@2
    assign i_mul_conv2d1x112_bs2_merged_bit_select_b = i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer15_conv2d1x111_out_dest_data_out_1_0[31:18];
    assign i_mul_conv2d1x112_bs2_merged_bit_select_c = i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer15_conv2d1x111_out_dest_data_out_1_0[17:0];

    // valid_fanout_reg2(REG,182)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer14_conv2d1x110(BLACKBOX,85)@2
    conv2d1x1_i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer14_0 thei_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer14_conv2d1x110 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer14_conv2d1x110_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_conv2d1x112_bs1_merged_bit_select(BITSELECT,287)@2
    assign i_mul_conv2d1x112_bs1_merged_bit_select_b = i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer14_conv2d1x110_out_dest_data_out_1_0[31:18];
    assign i_mul_conv2d1x112_bs1_merged_bit_select_c = i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer14_conv2d1x110_out_dest_data_out_1_0[17:0];

    // i_mul_conv2d1x112_ma3_cma(CHAINMULTADD,286)@2 + 3
    assign i_mul_conv2d1x112_ma3_cma_reset = ~ (resetn);
    assign i_mul_conv2d1x112_ma3_cma_ena0 = 1'b1;
    assign i_mul_conv2d1x112_ma3_cma_ena1 = i_mul_conv2d1x112_ma3_cma_ena0;
    assign i_mul_conv2d1x112_ma3_cma_ena2 = i_mul_conv2d1x112_ma3_cma_ena0;

    assign i_mul_conv2d1x112_ma3_cma_a0 = i_mul_conv2d1x112_bs1_merged_bit_select_b;
    assign i_mul_conv2d1x112_ma3_cma_c0 = i_mul_conv2d1x112_bs2_merged_bit_select_c;
    assign i_mul_conv2d1x112_ma3_cma_a1 = i_mul_conv2d1x112_bs2_merged_bit_select_b;
    assign i_mul_conv2d1x112_ma3_cma_c1 = i_mul_conv2d1x112_bs1_merged_bit_select_c;
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
    ) i_mul_conv2d1x112_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_conv2d1x112_ma3_cma_ena2, i_mul_conv2d1x112_ma3_cma_ena1, i_mul_conv2d1x112_ma3_cma_ena0 }),
        .aclr({ i_mul_conv2d1x112_ma3_cma_reset, i_mul_conv2d1x112_ma3_cma_reset }),
        .ay(i_mul_conv2d1x112_ma3_cma_a1),
        .by(i_mul_conv2d1x112_ma3_cma_a0),
        .ax(i_mul_conv2d1x112_ma3_cma_c1),
        .bx(i_mul_conv2d1x112_ma3_cma_c0),
        .resulta(i_mul_conv2d1x112_ma3_cma_s0),
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
    i_mul_conv2d1x112_ma3_cma_delay ( .xin(i_mul_conv2d1x112_ma3_cma_s0), .xout(i_mul_conv2d1x112_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_conv2d1x112_ma3_cma_q = $unsigned(i_mul_conv2d1x112_ma3_cma_qq[32:0]);

    // i_mul_conv2d1x112_sums_align_1(BITSHIFT,275)@5
    assign i_mul_conv2d1x112_sums_align_1_qint = { i_mul_conv2d1x112_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_conv2d1x112_sums_align_1_q = i_mul_conv2d1x112_sums_align_1_qint[50:0];

    // i_mul_conv2d1x112_im0_cma(CHAINMULTADD,282)@2 + 3
    assign i_mul_conv2d1x112_im0_cma_reset = ~ (resetn);
    assign i_mul_conv2d1x112_im0_cma_ena0 = 1'b1;
    assign i_mul_conv2d1x112_im0_cma_ena1 = i_mul_conv2d1x112_im0_cma_ena0;
    assign i_mul_conv2d1x112_im0_cma_ena2 = i_mul_conv2d1x112_im0_cma_ena0;

    assign i_mul_conv2d1x112_im0_cma_a0 = i_mul_conv2d1x112_bs1_merged_bit_select_b;
    assign i_mul_conv2d1x112_im0_cma_c0 = i_mul_conv2d1x112_bs2_merged_bit_select_b;
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
    ) i_mul_conv2d1x112_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_conv2d1x112_im0_cma_ena2, i_mul_conv2d1x112_im0_cma_ena1, i_mul_conv2d1x112_im0_cma_ena0 }),
        .aclr({ i_mul_conv2d1x112_im0_cma_reset, i_mul_conv2d1x112_im0_cma_reset }),
        .ay(i_mul_conv2d1x112_im0_cma_a0),
        .ax(i_mul_conv2d1x112_im0_cma_c0),
        .resulta(i_mul_conv2d1x112_im0_cma_s0),
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
    i_mul_conv2d1x112_im0_cma_delay ( .xin(i_mul_conv2d1x112_im0_cma_s0), .xout(i_mul_conv2d1x112_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_conv2d1x112_im0_cma_q = $unsigned(i_mul_conv2d1x112_im0_cma_qq[27:0]);

    // i_mul_conv2d1x112_im8_cma(CHAINMULTADD,283)@2 + 3
    assign i_mul_conv2d1x112_im8_cma_reset = ~ (resetn);
    assign i_mul_conv2d1x112_im8_cma_ena0 = 1'b1;
    assign i_mul_conv2d1x112_im8_cma_ena1 = i_mul_conv2d1x112_im8_cma_ena0;
    assign i_mul_conv2d1x112_im8_cma_ena2 = i_mul_conv2d1x112_im8_cma_ena0;

    assign i_mul_conv2d1x112_im8_cma_a0 = i_mul_conv2d1x112_bs1_merged_bit_select_c;
    assign i_mul_conv2d1x112_im8_cma_c0 = i_mul_conv2d1x112_bs2_merged_bit_select_c;
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
    ) i_mul_conv2d1x112_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_conv2d1x112_im8_cma_ena2, i_mul_conv2d1x112_im8_cma_ena1, i_mul_conv2d1x112_im8_cma_ena0 }),
        .aclr({ i_mul_conv2d1x112_im8_cma_reset, i_mul_conv2d1x112_im8_cma_reset }),
        .ay(i_mul_conv2d1x112_im8_cma_a0),
        .ax(i_mul_conv2d1x112_im8_cma_c0),
        .resulta(i_mul_conv2d1x112_im8_cma_s0),
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
    i_mul_conv2d1x112_im8_cma_delay ( .xin(i_mul_conv2d1x112_im8_cma_s0), .xout(i_mul_conv2d1x112_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_conv2d1x112_im8_cma_q = $unsigned(i_mul_conv2d1x112_im8_cma_qq[35:0]);

    // i_mul_conv2d1x112_sums_join_0(BITJOIN,274)@5
    assign i_mul_conv2d1x112_sums_join_0_q = {i_mul_conv2d1x112_im0_cma_q, i_mul_conv2d1x112_im8_cma_q};

    // i_mul_conv2d1x112_sums_result_add_0_0(ADD,277)@5
    assign i_mul_conv2d1x112_sums_result_add_0_0_a = {1'b0, i_mul_conv2d1x112_sums_join_0_q};
    assign i_mul_conv2d1x112_sums_result_add_0_0_b = {14'b00000000000000, i_mul_conv2d1x112_sums_align_1_q};
    assign i_mul_conv2d1x112_sums_result_add_0_0_o = $unsigned(i_mul_conv2d1x112_sums_result_add_0_0_a) + $unsigned(i_mul_conv2d1x112_sums_result_add_0_0_b);
    assign i_mul_conv2d1x112_sums_result_add_0_0_q = i_mul_conv2d1x112_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul_conv2d1x112_sel_x(BITSELECT,165)@5
    assign bgTrunc_i_mul_conv2d1x112_sel_x_in = i_mul_conv2d1x112_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_conv2d1x112_sel_x_b = bgTrunc_i_mul_conv2d1x112_sel_x_in[31:0];

    // i_mul97_conv2d1x133_bs2_merged_bit_select(BITSELECT,290)@5
    assign i_mul97_conv2d1x133_bs2_merged_bit_select_b = bgTrunc_i_mul_conv2d1x112_sel_x_b[31:18];
    assign i_mul97_conv2d1x133_bs2_merged_bit_select_c = bgTrunc_i_mul_conv2d1x112_sel_x_b[17:0];

    // i_mul21_conv2d1x132_bs1(BITSELECT,234)@5
    assign i_mul21_conv2d1x132_bs1_b = i_llvm_fpga_pop_i32_f_i_070_pop10_conv2d1x127_out_data_out[31:18];

    // i_mul97_conv2d1x133_ma3_cma(CHAINMULTADD,285)@5 + 3
    assign i_mul97_conv2d1x133_ma3_cma_reset = ~ (resetn);
    assign i_mul97_conv2d1x133_ma3_cma_ena0 = 1'b1;
    assign i_mul97_conv2d1x133_ma3_cma_ena1 = i_mul97_conv2d1x133_ma3_cma_ena0;
    assign i_mul97_conv2d1x133_ma3_cma_ena2 = i_mul97_conv2d1x133_ma3_cma_ena0;

    assign i_mul97_conv2d1x133_ma3_cma_a0 = i_mul21_conv2d1x132_bs1_b;
    assign i_mul97_conv2d1x133_ma3_cma_c0 = i_mul97_conv2d1x133_bs2_merged_bit_select_c;
    assign i_mul97_conv2d1x133_ma3_cma_a1 = i_mul97_conv2d1x133_bs2_merged_bit_select_b;
    assign i_mul97_conv2d1x133_ma3_cma_c1 = i_mul21_conv2d1x132_bs4_b;
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
    ) i_mul97_conv2d1x133_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul97_conv2d1x133_ma3_cma_ena2, i_mul97_conv2d1x133_ma3_cma_ena1, i_mul97_conv2d1x133_ma3_cma_ena0 }),
        .aclr({ i_mul97_conv2d1x133_ma3_cma_reset, i_mul97_conv2d1x133_ma3_cma_reset }),
        .ay(i_mul97_conv2d1x133_ma3_cma_a1),
        .by(i_mul97_conv2d1x133_ma3_cma_a0),
        .ax(i_mul97_conv2d1x133_ma3_cma_c1),
        .bx(i_mul97_conv2d1x133_ma3_cma_c0),
        .resulta(i_mul97_conv2d1x133_ma3_cma_s0),
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
    i_mul97_conv2d1x133_ma3_cma_delay ( .xin(i_mul97_conv2d1x133_ma3_cma_s0), .xout(i_mul97_conv2d1x133_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul97_conv2d1x133_ma3_cma_q = $unsigned(i_mul97_conv2d1x133_ma3_cma_qq[32:0]);

    // i_mul97_conv2d1x133_sums_align_1(BITSHIFT,260)@8
    assign i_mul97_conv2d1x133_sums_align_1_qint = { i_mul97_conv2d1x133_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul97_conv2d1x133_sums_align_1_q = i_mul97_conv2d1x133_sums_align_1_qint[50:0];

    // i_mul97_conv2d1x133_im0_cma(CHAINMULTADD,280)@5 + 3
    assign i_mul97_conv2d1x133_im0_cma_reset = ~ (resetn);
    assign i_mul97_conv2d1x133_im0_cma_ena0 = 1'b1;
    assign i_mul97_conv2d1x133_im0_cma_ena1 = i_mul97_conv2d1x133_im0_cma_ena0;
    assign i_mul97_conv2d1x133_im0_cma_ena2 = i_mul97_conv2d1x133_im0_cma_ena0;

    assign i_mul97_conv2d1x133_im0_cma_a0 = i_mul21_conv2d1x132_bs1_b;
    assign i_mul97_conv2d1x133_im0_cma_c0 = i_mul97_conv2d1x133_bs2_merged_bit_select_b;
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
    ) i_mul97_conv2d1x133_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul97_conv2d1x133_im0_cma_ena2, i_mul97_conv2d1x133_im0_cma_ena1, i_mul97_conv2d1x133_im0_cma_ena0 }),
        .aclr({ i_mul97_conv2d1x133_im0_cma_reset, i_mul97_conv2d1x133_im0_cma_reset }),
        .ay(i_mul97_conv2d1x133_im0_cma_a0),
        .ax(i_mul97_conv2d1x133_im0_cma_c0),
        .resulta(i_mul97_conv2d1x133_im0_cma_s0),
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
    i_mul97_conv2d1x133_im0_cma_delay ( .xin(i_mul97_conv2d1x133_im0_cma_s0), .xout(i_mul97_conv2d1x133_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul97_conv2d1x133_im0_cma_q = $unsigned(i_mul97_conv2d1x133_im0_cma_qq[27:0]);

    // i_mul97_conv2d1x133_im8_cma(CHAINMULTADD,281)@5 + 3
    assign i_mul97_conv2d1x133_im8_cma_reset = ~ (resetn);
    assign i_mul97_conv2d1x133_im8_cma_ena0 = 1'b1;
    assign i_mul97_conv2d1x133_im8_cma_ena1 = i_mul97_conv2d1x133_im8_cma_ena0;
    assign i_mul97_conv2d1x133_im8_cma_ena2 = i_mul97_conv2d1x133_im8_cma_ena0;

    assign i_mul97_conv2d1x133_im8_cma_a0 = i_mul21_conv2d1x132_bs4_b;
    assign i_mul97_conv2d1x133_im8_cma_c0 = i_mul97_conv2d1x133_bs2_merged_bit_select_c;
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
    ) i_mul97_conv2d1x133_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul97_conv2d1x133_im8_cma_ena2, i_mul97_conv2d1x133_im8_cma_ena1, i_mul97_conv2d1x133_im8_cma_ena0 }),
        .aclr({ i_mul97_conv2d1x133_im8_cma_reset, i_mul97_conv2d1x133_im8_cma_reset }),
        .ay(i_mul97_conv2d1x133_im8_cma_a0),
        .ax(i_mul97_conv2d1x133_im8_cma_c0),
        .resulta(i_mul97_conv2d1x133_im8_cma_s0),
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
    i_mul97_conv2d1x133_im8_cma_delay ( .xin(i_mul97_conv2d1x133_im8_cma_s0), .xout(i_mul97_conv2d1x133_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul97_conv2d1x133_im8_cma_q = $unsigned(i_mul97_conv2d1x133_im8_cma_qq[35:0]);

    // i_mul97_conv2d1x133_sums_join_0(BITJOIN,259)@8
    assign i_mul97_conv2d1x133_sums_join_0_q = {i_mul97_conv2d1x133_im0_cma_q, i_mul97_conv2d1x133_im8_cma_q};

    // i_mul97_conv2d1x133_sums_result_add_0_0(ADD,262)@8
    assign i_mul97_conv2d1x133_sums_result_add_0_0_a = {1'b0, i_mul97_conv2d1x133_sums_join_0_q};
    assign i_mul97_conv2d1x133_sums_result_add_0_0_b = {14'b00000000000000, i_mul97_conv2d1x133_sums_align_1_q};
    assign i_mul97_conv2d1x133_sums_result_add_0_0_o = $unsigned(i_mul97_conv2d1x133_sums_result_add_0_0_a) + $unsigned(i_mul97_conv2d1x133_sums_result_add_0_0_b);
    assign i_mul97_conv2d1x133_sums_result_add_0_0_q = i_mul97_conv2d1x133_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul97_conv2d1x133_sel_x(BITSELECT,164)@8
    assign bgTrunc_i_mul97_conv2d1x133_sel_x_in = i_mul97_conv2d1x133_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul97_conv2d1x133_sel_x_b = bgTrunc_i_mul97_conv2d1x133_sel_x_in[31:0];

    // valid_fanout_reg8(REG,188)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist19_sync_together181_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer1_conv2d1x131(BLACKBOX,126)@0
    // in in_i_dependence@5
    // in in_valid_in@5
    // out out_buffer_out@5
    // out out_valid_out@5
    conv2d1x1_i_llvm_fpga_sync_buffer_i32_in0000nnels_sync_buffer1_0 thei_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer1_conv2d1x131 (
        .in_buffer_in(in_input_channels),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer1_conv2d1x131_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul21_conv2d1x132_bs2_merged_bit_select(BITSELECT,289)@5
    assign i_mul21_conv2d1x132_bs2_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer1_conv2d1x131_out_buffer_out[31:18];
    assign i_mul21_conv2d1x132_bs2_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer1_conv2d1x131_out_buffer_out[17:0];

    // i_mul21_conv2d1x132_ma3_cma(CHAINMULTADD,284)@5 + 3
    assign i_mul21_conv2d1x132_ma3_cma_reset = ~ (resetn);
    assign i_mul21_conv2d1x132_ma3_cma_ena0 = 1'b1;
    assign i_mul21_conv2d1x132_ma3_cma_ena1 = i_mul21_conv2d1x132_ma3_cma_ena0;
    assign i_mul21_conv2d1x132_ma3_cma_ena2 = i_mul21_conv2d1x132_ma3_cma_ena0;

    assign i_mul21_conv2d1x132_ma3_cma_a0 = i_mul21_conv2d1x132_bs1_b;
    assign i_mul21_conv2d1x132_ma3_cma_c0 = i_mul21_conv2d1x132_bs2_merged_bit_select_c;
    assign i_mul21_conv2d1x132_ma3_cma_a1 = i_mul21_conv2d1x132_bs2_merged_bit_select_b;
    assign i_mul21_conv2d1x132_ma3_cma_c1 = i_mul21_conv2d1x132_bs4_b;
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
    ) i_mul21_conv2d1x132_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul21_conv2d1x132_ma3_cma_ena2, i_mul21_conv2d1x132_ma3_cma_ena1, i_mul21_conv2d1x132_ma3_cma_ena0 }),
        .aclr({ i_mul21_conv2d1x132_ma3_cma_reset, i_mul21_conv2d1x132_ma3_cma_reset }),
        .ay(i_mul21_conv2d1x132_ma3_cma_a1),
        .by(i_mul21_conv2d1x132_ma3_cma_a0),
        .ax(i_mul21_conv2d1x132_ma3_cma_c1),
        .bx(i_mul21_conv2d1x132_ma3_cma_c0),
        .resulta(i_mul21_conv2d1x132_ma3_cma_s0),
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
    i_mul21_conv2d1x132_ma3_cma_delay ( .xin(i_mul21_conv2d1x132_ma3_cma_s0), .xout(i_mul21_conv2d1x132_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul21_conv2d1x132_ma3_cma_q = $unsigned(i_mul21_conv2d1x132_ma3_cma_qq[32:0]);

    // i_mul21_conv2d1x132_sums_align_1(BITSHIFT,245)@8
    assign i_mul21_conv2d1x132_sums_align_1_qint = { i_mul21_conv2d1x132_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul21_conv2d1x132_sums_align_1_q = i_mul21_conv2d1x132_sums_align_1_qint[50:0];

    // i_mul21_conv2d1x132_im0_cma(CHAINMULTADD,278)@5 + 3
    assign i_mul21_conv2d1x132_im0_cma_reset = ~ (resetn);
    assign i_mul21_conv2d1x132_im0_cma_ena0 = 1'b1;
    assign i_mul21_conv2d1x132_im0_cma_ena1 = i_mul21_conv2d1x132_im0_cma_ena0;
    assign i_mul21_conv2d1x132_im0_cma_ena2 = i_mul21_conv2d1x132_im0_cma_ena0;

    assign i_mul21_conv2d1x132_im0_cma_a0 = i_mul21_conv2d1x132_bs1_b;
    assign i_mul21_conv2d1x132_im0_cma_c0 = i_mul21_conv2d1x132_bs2_merged_bit_select_b;
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
    ) i_mul21_conv2d1x132_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul21_conv2d1x132_im0_cma_ena2, i_mul21_conv2d1x132_im0_cma_ena1, i_mul21_conv2d1x132_im0_cma_ena0 }),
        .aclr({ i_mul21_conv2d1x132_im0_cma_reset, i_mul21_conv2d1x132_im0_cma_reset }),
        .ay(i_mul21_conv2d1x132_im0_cma_a0),
        .ax(i_mul21_conv2d1x132_im0_cma_c0),
        .resulta(i_mul21_conv2d1x132_im0_cma_s0),
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
    i_mul21_conv2d1x132_im0_cma_delay ( .xin(i_mul21_conv2d1x132_im0_cma_s0), .xout(i_mul21_conv2d1x132_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul21_conv2d1x132_im0_cma_q = $unsigned(i_mul21_conv2d1x132_im0_cma_qq[27:0]);

    // i_mul21_conv2d1x132_im8_cma(CHAINMULTADD,279)@5 + 3
    assign i_mul21_conv2d1x132_im8_cma_reset = ~ (resetn);
    assign i_mul21_conv2d1x132_im8_cma_ena0 = 1'b1;
    assign i_mul21_conv2d1x132_im8_cma_ena1 = i_mul21_conv2d1x132_im8_cma_ena0;
    assign i_mul21_conv2d1x132_im8_cma_ena2 = i_mul21_conv2d1x132_im8_cma_ena0;

    assign i_mul21_conv2d1x132_im8_cma_a0 = i_mul21_conv2d1x132_bs4_b;
    assign i_mul21_conv2d1x132_im8_cma_c0 = i_mul21_conv2d1x132_bs2_merged_bit_select_c;
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
    ) i_mul21_conv2d1x132_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul21_conv2d1x132_im8_cma_ena2, i_mul21_conv2d1x132_im8_cma_ena1, i_mul21_conv2d1x132_im8_cma_ena0 }),
        .aclr({ i_mul21_conv2d1x132_im8_cma_reset, i_mul21_conv2d1x132_im8_cma_reset }),
        .ay(i_mul21_conv2d1x132_im8_cma_a0),
        .ax(i_mul21_conv2d1x132_im8_cma_c0),
        .resulta(i_mul21_conv2d1x132_im8_cma_s0),
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
    i_mul21_conv2d1x132_im8_cma_delay ( .xin(i_mul21_conv2d1x132_im8_cma_s0), .xout(i_mul21_conv2d1x132_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul21_conv2d1x132_im8_cma_q = $unsigned(i_mul21_conv2d1x132_im8_cma_qq[35:0]);

    // i_mul21_conv2d1x132_sums_join_0(BITJOIN,244)@8
    assign i_mul21_conv2d1x132_sums_join_0_q = {i_mul21_conv2d1x132_im0_cma_q, i_mul21_conv2d1x132_im8_cma_q};

    // i_mul21_conv2d1x132_sums_result_add_0_0(ADD,247)@8
    assign i_mul21_conv2d1x132_sums_result_add_0_0_a = {1'b0, i_mul21_conv2d1x132_sums_join_0_q};
    assign i_mul21_conv2d1x132_sums_result_add_0_0_b = {14'b00000000000000, i_mul21_conv2d1x132_sums_align_1_q};
    assign i_mul21_conv2d1x132_sums_result_add_0_0_o = $unsigned(i_mul21_conv2d1x132_sums_result_add_0_0_a) + $unsigned(i_mul21_conv2d1x132_sums_result_add_0_0_b);
    assign i_mul21_conv2d1x132_sums_result_add_0_0_q = i_mul21_conv2d1x132_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul21_conv2d1x132_sel_x(BITSELECT,163)@8
    assign bgTrunc_i_mul21_conv2d1x132_sel_x_in = i_mul21_conv2d1x132_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul21_conv2d1x132_sel_x_b = bgTrunc_i_mul21_conv2d1x132_sel_x_in[31:0];

    // i_idxprom5_conv2d1x128_sel_x(BITSELECT,176)@6
    assign i_idxprom5_conv2d1x128_sel_x_b = {32'b00000000000000000000000000000000, redist27_i_llvm_fpga_pop_i32_f_i_070_pop10_conv2d1x127_out_data_out_1_q[31:0]};

    // i_idxprom5_conv2d1x128_vt_select_31(BITSELECT,75)@6
    assign i_idxprom5_conv2d1x128_vt_select_31_b = i_idxprom5_conv2d1x128_sel_x_b[31:0];

    // redist30_i_idxprom5_conv2d1x128_vt_select_31_b_2(DELAY,321)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_idxprom5_conv2d1x128_vt_select_31_b_2_delay_0 <= '0;
            redist30_i_idxprom5_conv2d1x128_vt_select_31_b_2_q <= '0;
        end
        else
        begin
            redist30_i_idxprom5_conv2d1x128_vt_select_31_b_2_delay_0 <= $unsigned(i_idxprom5_conv2d1x128_vt_select_31_b);
            redist30_i_idxprom5_conv2d1x128_vt_select_31_b_2_q <= redist30_i_idxprom5_conv2d1x128_vt_select_31_b_2_delay_0;
        end
    end

    // i_idxprom5_conv2d1x128_vt_join(BITJOIN,74)@8
    assign i_idxprom5_conv2d1x128_vt_join_q = {c_i32_0128_q, redist30_i_idxprom5_conv2d1x128_vt_select_31_b_2_q};

    // i_arrayidx61_conv2d1x10_narrow_x(BITSELECT,172)@8
    assign i_arrayidx61_conv2d1x10_narrow_x_b = i_idxprom5_conv2d1x128_vt_join_q[61:0];

    // i_arrayidx61_conv2d1x10_shift_join_x(BITJOIN,173)@8
    assign i_arrayidx61_conv2d1x10_shift_join_x_q = {i_arrayidx61_conv2d1x10_narrow_x_b, i_arrayidx61_conv2d1x130_vt_const_1_q};

    // valid_fanout_reg7(REG,187)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x129(BLACKBOX,127)@0
    // in in_i_dependence@8
    // in in_valid_in@8
    // out out_buffer_out@8
    // out out_valid_out@8
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0000r_bias_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x129 (
        .in_buffer_in(in_filter_bias),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x129_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x129_vt_select_63(BITSELECT,130)@8
    assign i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x129_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x129_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x129_vt_const_9(CONSTANT,128)
    assign i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x129_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x129_vt_join(BITJOIN,129)@8
    assign i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x129_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x129_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x129_vt_const_9_q};

    // i_arrayidx61_conv2d1x10_add_x(ADD,170)@8
    assign i_arrayidx61_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x129_vt_join_q};
    assign i_arrayidx61_conv2d1x10_add_x_b = {1'b0, i_arrayidx61_conv2d1x10_shift_join_x_q};
    assign i_arrayidx61_conv2d1x10_add_x_o = $unsigned(i_arrayidx61_conv2d1x10_add_x_a) + $unsigned(i_arrayidx61_conv2d1x10_add_x_b);
    assign i_arrayidx61_conv2d1x10_add_x_q = i_arrayidx61_conv2d1x10_add_x_o[64:0];

    // i_arrayidx61_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,175)@8
    assign i_arrayidx61_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx61_conv2d1x10_add_x_q[63:0];

    // i_arrayidx61_conv2d1x130_vt_select_63(BITSELECT,67)@8
    assign i_arrayidx61_conv2d1x130_vt_select_63_b = i_arrayidx61_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx61_conv2d1x130_vt_const_1(CONSTANT,65)
    assign i_arrayidx61_conv2d1x130_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx61_conv2d1x130_vt_join(BITJOIN,66)@8
    assign i_arrayidx61_conv2d1x130_vt_join_q = {i_arrayidx61_conv2d1x130_vt_select_63_b, i_arrayidx61_conv2d1x130_vt_const_1_q};

    // c_i32_1130(CONSTANT,61)
    assign c_i32_1130_q = $unsigned(32'b11111111111111111111111111111111);

    // redist22_bgTrunc_i_mul_conv2d1x112_sel_x_b_2(DELAY,313)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_bgTrunc_i_mul_conv2d1x112_sel_x_b_2_delay_0 <= '0;
            redist22_bgTrunc_i_mul_conv2d1x112_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist22_bgTrunc_i_mul_conv2d1x112_sel_x_b_2_delay_0 <= $unsigned(bgTrunc_i_mul_conv2d1x112_sel_x_b);
            redist22_bgTrunc_i_mul_conv2d1x112_sel_x_b_2_q <= redist22_bgTrunc_i_mul_conv2d1x112_sel_x_b_2_delay_0;
        end
    end

    // i_unnamed_conv2d1x122(COMPARE,141)@7 + 1
    assign i_unnamed_conv2d1x122_a = {2'b00, c_i32_1129_q};
    assign i_unnamed_conv2d1x122_b = {2'b00, redist22_bgTrunc_i_mul_conv2d1x112_sel_x_b_2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_conv2d1x122_o <= 34'b0;
        end
        else
        begin
            i_unnamed_conv2d1x122_o <= $unsigned(i_unnamed_conv2d1x122_a) - $unsigned(i_unnamed_conv2d1x122_b);
        end
    end
    assign i_unnamed_conv2d1x122_c[0] = i_unnamed_conv2d1x122_o[33];

    // i_umax_conv2d1x123(MUX,137)@8
    assign i_umax_conv2d1x123_s = i_unnamed_conv2d1x122_c;
    always @(i_umax_conv2d1x123_s or c_i32_1129_q or redist23_bgTrunc_i_mul_conv2d1x112_sel_x_b_3_q)
    begin
        unique case (i_umax_conv2d1x123_s)
            1'b0 : i_umax_conv2d1x123_q = c_i32_1129_q;
            1'b1 : i_umax_conv2d1x123_q = redist23_bgTrunc_i_mul_conv2d1x112_sel_x_b_3_q;
            default : i_umax_conv2d1x123_q = 32'b0;
        endcase
    end

    // i_unnamed_conv2d1x124(ADD,142)@8
    assign i_unnamed_conv2d1x124_a = {1'b0, i_umax_conv2d1x123_q};
    assign i_unnamed_conv2d1x124_b = {1'b0, c_i32_1130_q};
    assign i_unnamed_conv2d1x124_o = $unsigned(i_unnamed_conv2d1x124_a) + $unsigned(i_unnamed_conv2d1x124_b);
    assign i_unnamed_conv2d1x124_q = i_unnamed_conv2d1x124_o[32:0];

    // bgTrunc_i_unnamed_conv2d1x124_sel_x(BITSELECT,166)@8
    assign bgTrunc_i_unnamed_conv2d1x124_sel_x_b = i_unnamed_conv2d1x124_q[31:0];

    // i_unnamed_conv2d1x125_sel_x(BITSELECT,177)@8
    assign i_unnamed_conv2d1x125_sel_x_b = {1'b0, bgTrunc_i_unnamed_conv2d1x124_sel_x_b[31:0]};

    // i_unnamed_conv2d1x125_vt_select_31(BITSELECT,146)@8
    assign i_unnamed_conv2d1x125_vt_select_31_b = i_unnamed_conv2d1x125_sel_x_b[31:0];

    // i_unnamed_conv2d1x125_vt_join(BITJOIN,145)@8
    assign i_unnamed_conv2d1x125_vt_join_q = {GND_q, i_unnamed_conv2d1x125_vt_select_31_b};

    // i_unnamed_conv2d1x126(ADD,147)@8
    assign i_unnamed_conv2d1x126_a = {1'b0, i_unnamed_conv2d1x125_vt_join_q};
    assign i_unnamed_conv2d1x126_b = {1'b0, c_i33_1131_q};
    assign i_unnamed_conv2d1x126_o = $unsigned(i_unnamed_conv2d1x126_a) + $unsigned(i_unnamed_conv2d1x126_b);
    assign i_unnamed_conv2d1x126_q = i_unnamed_conv2d1x126_o[33:0];

    // bgTrunc_i_unnamed_conv2d1x126_sel_x(BITSELECT,167)@8
    assign bgTrunc_i_unnamed_conv2d1x126_sel_x_b = i_unnamed_conv2d1x126_q[32:0];

    // i_phi_decision102_xor_conv2d1x121(LOGICAL,136)@8
    assign i_phi_decision102_xor_conv2d1x121_q = i_unnamed_conv2d1x115_q ^ VCC_q;

    // valid_fanout_reg5(REG,185)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp126216_conv2d1x119(BLACKBOX,81)@8
    conv2d1x1_i_llvm_fpga_ffwd_dest_i1_cmp126216_0 thei_llvm_fpga_ffwd_dest_i1_cmp126216_conv2d1x119 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i1_cmp126216_conv2d1x119_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp866_conv2d1x113(LOGICAL,68)@8
    assign i_cmp866_conv2d1x113_q = $unsigned(redist23_bgTrunc_i_mul_conv2d1x112_sel_x_b_3_q == c_i32_0128_q ? 1'b1 : 1'b0);

    // i_notlhs_conv2d1x116(LOGICAL,135)@8
    assign i_notlhs_conv2d1x116_q = i_cmp866_conv2d1x113_q ^ VCC_q;

    // valid_fanout_reg4(REG,184)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp26910_conv2d1x117(BLACKBOX,82)@8
    conv2d1x1_i_llvm_fpga_ffwd_dest_i1_cmp26910_0 thei_llvm_fpga_ffwd_dest_i1_cmp26910_conv2d1x117 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp26910_conv2d1x117_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d1x118(LOGICAL,139)@8
    assign i_unnamed_conv2d1x118_q = i_llvm_fpga_ffwd_dest_i1_cmp26910_conv2d1x117_out_dest_data_out_0_0 & i_notlhs_conv2d1x116_q;

    // i_unnamed_conv2d1x120(LOGICAL,140)@8
    assign i_unnamed_conv2d1x120_q = i_unnamed_conv2d1x118_q & i_llvm_fpga_ffwd_dest_i1_cmp126216_conv2d1x119_out_dest_data_out_2_0;

    // i_unnamed_conv2d1x115(LOGICAL,138)@8
    assign i_unnamed_conv2d1x115_q = i_cmp866_conv2d1x113_q | i_unnamed_conv2d1x19_q;

    // redist23_bgTrunc_i_mul_conv2d1x112_sel_x_b_3(DELAY,314)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_bgTrunc_i_mul_conv2d1x112_sel_x_b_3_q <= '0;
        end
        else
        begin
            redist23_bgTrunc_i_mul_conv2d1x112_sel_x_b_3_q <= $unsigned(redist22_bgTrunc_i_mul_conv2d1x112_sel_x_b_2_q);
        end
    end

    // valid_fanout_reg1(REG,181)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist21_sync_together181_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp26911_conv2d1x18(BLACKBOX,83)@8
    conv2d1x1_i_llvm_fpga_ffwd_dest_i1_cmp26911_0 thei_llvm_fpga_ffwd_dest_i1_cmp26911_conv2d1x18 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp26911_conv2d1x18_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d1x19(LOGICAL,149)@8
    assign i_unnamed_conv2d1x19_q = i_llvm_fpga_ffwd_dest_i1_cmp26911_conv2d1x18_out_dest_data_out_0_0 ^ VCC_q;

    // sync_out_aunroll_x(GPOUT,178)@8
    assign out_c0_exi44_0_tpl = GND_q;
    assign out_c0_exi44_1_tpl = i_unnamed_conv2d1x19_q;
    assign out_c0_exi44_2_tpl = redist23_bgTrunc_i_mul_conv2d1x112_sel_x_b_3_q;
    assign out_c0_exi44_3_tpl = i_unnamed_conv2d1x115_q;
    assign out_c0_exi44_4_tpl = i_unnamed_conv2d1x120_q;
    assign out_c0_exi44_5_tpl = i_phi_decision102_xor_conv2d1x121_q;
    assign out_c0_exi44_6_tpl = bgTrunc_i_unnamed_conv2d1x126_sel_x_b;
    assign out_c0_exi44_7_tpl = i_arrayidx61_conv2d1x130_vt_join_q;
    assign out_c0_exi44_8_tpl = bgTrunc_i_mul21_conv2d1x132_sel_x_b;
    assign out_c0_exi44_9_tpl = bgTrunc_i_mul97_conv2d1x133_sel_x_b;
    assign out_c0_exi44_10_tpl = redist26_i_unnamed_conv2d1x137_q_7_q;
    assign out_c0_exi44_11_tpl = i_notcmp24_conv2d1x140_q;
    assign out_c0_exi44_12_tpl = i_llvm_fpga_pop_f32_spec_select60_pop11_conv2d1x146_out_data_out;
    assign out_c0_exi44_13_tpl = i_llvm_fpga_pop_f32_pop12_conv2d1x148_out_data_out;
    assign out_c0_exi44_14_tpl = i_llvm_fpga_pop_f32_spec_select32363_pop13_conv2d1x150_out_data_out;
    assign out_c0_exi44_15_tpl = i_llvm_fpga_pop_f32_spec_select32466_pop14_conv2d1x152_out_data_out;
    assign out_c0_exi44_16_tpl = i_llvm_fpga_pop_f32_spec_select32569_pop15_conv2d1x154_out_data_out;
    assign out_c0_exi44_17_tpl = i_llvm_fpga_pop_f32_spec_select32672_pop16_conv2d1x156_out_data_out;
    assign out_c0_exi44_18_tpl = i_llvm_fpga_pop_f32_spec_select32775_pop17_conv2d1x158_out_data_out;
    assign out_c0_exi44_19_tpl = i_llvm_fpga_pop_f32_spec_select32878_pop18_conv2d1x160_out_data_out;
    assign out_c0_exi44_20_tpl = i_llvm_fpga_pop_f32_spec_select32981_pop19_conv2d1x162_out_data_out;
    assign out_c0_exi44_21_tpl = i_llvm_fpga_pop_f32_spec_select33084_pop20_conv2d1x164_out_data_out;
    assign out_c0_exi44_22_tpl = i_llvm_fpga_pop_f32_spec_select33187_pop21_conv2d1x166_out_data_out;
    assign out_c0_exi44_23_tpl = i_llvm_fpga_pop_f32_spec_select33290_pop22_conv2d1x168_out_data_out;
    assign out_c0_exi44_24_tpl = i_llvm_fpga_pop_f32_spec_select33393_pop23_conv2d1x170_out_data_out;
    assign out_c0_exi44_25_tpl = i_llvm_fpga_pop_f32_spec_select33496_pop24_conv2d1x172_out_data_out;
    assign out_c0_exi44_26_tpl = i_llvm_fpga_pop_f32_spec_select33599_pop25_conv2d1x174_out_data_out;
    assign out_c0_exi44_27_tpl = i_llvm_fpga_pop_f32_spec_select336102_pop26_conv2d1x176_out_data_out;
    assign out_c0_exi44_28_tpl = redist2_sync_together181_aunroll_x_in_c0_eni17_1_tpl_7_q;
    assign out_c0_exi44_29_tpl = redist3_sync_together181_aunroll_x_in_c0_eni17_2_tpl_7_mem_q;
    assign out_c0_exi44_30_tpl = redist4_sync_together181_aunroll_x_in_c0_eni17_3_tpl_7_mem_q;
    assign out_c0_exi44_31_tpl = redist5_sync_together181_aunroll_x_in_c0_eni17_4_tpl_7_mem_q;
    assign out_c0_exi44_32_tpl = redist6_sync_together181_aunroll_x_in_c0_eni17_5_tpl_7_mem_q;
    assign out_c0_exi44_33_tpl = redist7_sync_together181_aunroll_x_in_c0_eni17_6_tpl_7_mem_q;
    assign out_c0_exi44_34_tpl = redist8_sync_together181_aunroll_x_in_c0_eni17_7_tpl_7_mem_q;
    assign out_c0_exi44_35_tpl = redist9_sync_together181_aunroll_x_in_c0_eni17_8_tpl_7_mem_q;
    assign out_c0_exi44_36_tpl = redist10_sync_together181_aunroll_x_in_c0_eni17_9_tpl_7_mem_q;
    assign out_c0_exi44_37_tpl = redist11_sync_together181_aunroll_x_in_c0_eni17_10_tpl_7_mem_q;
    assign out_c0_exi44_38_tpl = redist12_sync_together181_aunroll_x_in_c0_eni17_11_tpl_7_mem_q;
    assign out_c0_exi44_39_tpl = redist13_sync_together181_aunroll_x_in_c0_eni17_12_tpl_7_mem_q;
    assign out_c0_exi44_40_tpl = redist14_sync_together181_aunroll_x_in_c0_eni17_13_tpl_7_mem_q;
    assign out_c0_exi44_41_tpl = redist15_sync_together181_aunroll_x_in_c0_eni17_14_tpl_7_mem_q;
    assign out_c0_exi44_42_tpl = redist16_sync_together181_aunroll_x_in_c0_eni17_15_tpl_7_mem_q;
    assign out_c0_exi44_43_tpl = redist17_sync_together181_aunroll_x_in_c0_eni17_16_tpl_7_mem_q;
    assign out_c0_exi44_44_tpl = redist18_sync_together181_aunroll_x_in_c0_eni17_17_tpl_7_mem_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d1x15 = GND_q;

endmodule
