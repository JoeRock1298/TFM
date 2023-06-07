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

// SystemVerilog created from maxpool2d_i_sfc_logic_s_c0_in_for_body160000nter28225_maxpool2d0
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_i_sfc_logic_s_c0_in_for_body160000nter28225_maxpool2d0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_maxpool2d9_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_maxpool2d9_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_1_0,
    output wire [0:0] out_c0_exi32_0_tpl,
    output wire [0:0] out_c0_exi32_1_tpl,
    output wire [0:0] out_c0_exi32_2_tpl,
    output wire [0:0] out_c0_exi32_3_tpl,
    output wire [0:0] out_c0_exi32_4_tpl,
    output wire [0:0] out_c0_exi32_5_tpl,
    output wire [63:0] out_c0_exi32_6_tpl,
    output wire [0:0] out_c0_exi32_7_tpl,
    output wire [0:0] out_c0_exi32_8_tpl,
    output wire [63:0] out_c0_exi32_9_tpl,
    output wire [0:0] out_c0_exi32_10_tpl,
    output wire [31:0] out_c0_exi32_11_tpl,
    output wire [0:0] out_c0_exi32_12_tpl,
    output wire [0:0] out_c0_exi32_13_tpl,
    output wire [31:0] out_c0_exi32_14_tpl,
    output wire [0:0] out_c0_exi32_15_tpl,
    output wire [63:0] out_c0_exi32_16_tpl,
    output wire [63:0] out_c0_exi32_17_tpl,
    output wire [0:0] out_c0_exi32_18_tpl,
    output wire [31:0] out_c0_exi32_19_tpl,
    output wire [31:0] out_c0_exi32_20_tpl,
    output wire [0:0] out_c0_exi32_21_tpl,
    output wire [63:0] out_c0_exi32_22_tpl,
    output wire [63:0] out_c0_exi32_23_tpl,
    output wire [0:0] out_c0_exi32_24_tpl,
    output wire [0:0] out_c0_exi32_25_tpl,
    output wire [31:0] out_c0_exi32_26_tpl,
    output wire [63:0] out_c0_exi32_27_tpl,
    output wire [63:0] out_c0_exi32_28_tpl,
    output wire [0:0] out_c0_exi32_29_tpl,
    output wire [31:0] out_c0_exi32_30_tpl,
    output wire [31:0] out_c0_exi32_31_tpl,
    output wire [0:0] out_c0_exi32_32_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_maxpool2d7,
    input wire [0:0] in_c0_eni30_0_tpl,
    input wire [0:0] in_c0_eni30_1_tpl,
    input wire [0:0] in_c0_eni30_2_tpl,
    input wire [0:0] in_c0_eni30_3_tpl,
    input wire [31:0] in_c0_eni30_4_tpl,
    input wire [63:0] in_c0_eni30_5_tpl,
    input wire [63:0] in_c0_eni30_6_tpl,
    input wire [0:0] in_c0_eni30_7_tpl,
    input wire [31:0] in_c0_eni30_8_tpl,
    input wire [31:0] in_c0_eni30_9_tpl,
    input wire [0:0] in_c0_eni30_10_tpl,
    input wire [0:0] in_c0_eni30_11_tpl,
    input wire [31:0] in_c0_eni30_12_tpl,
    input wire [0:0] in_c0_eni30_13_tpl,
    input wire [63:0] in_c0_eni30_14_tpl,
    input wire [63:0] in_c0_eni30_15_tpl,
    input wire [0:0] in_c0_eni30_16_tpl,
    input wire [31:0] in_c0_eni30_17_tpl,
    input wire [31:0] in_c0_eni30_18_tpl,
    input wire [0:0] in_c0_eni30_19_tpl,
    input wire [63:0] in_c0_eni30_20_tpl,
    input wire [63:0] in_c0_eni30_21_tpl,
    input wire [0:0] in_c0_eni30_22_tpl,
    input wire [0:0] in_c0_eni30_23_tpl,
    input wire [31:0] in_c0_eni30_24_tpl,
    input wire [63:0] in_c0_eni30_25_tpl,
    input wire [63:0] in_c0_eni30_26_tpl,
    input wire [0:0] in_c0_eni30_27_tpl,
    input wire [31:0] in_c0_eni30_28_tpl,
    input wire [31:0] in_c0_eni30_29_tpl,
    input wire [0:0] in_c0_eni30_30_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_1100_q;
    wire [31:0] c_i32_0102_q;
    wire [31:0] c_i32_1103_q;
    wire [2:0] c_i3_1104_q;
    wire [2:0] c_i3_1106_q;
    wire [32:0] i_add20_maxpool2d25_a;
    wire [32:0] i_add20_maxpool2d25_b;
    logic [32:0] i_add20_maxpool2d25_o;
    wire [32:0] i_add20_maxpool2d25_q;
    wire [1:0] i_cleanups_shl_maxpool2d8_vt_join_q;
    wire [0:0] i_cleanups_shl_maxpool2d8_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_maxpool2d7_q;
    wire [0:0] i_first_cleanup_xor_or_maxpool2d30_q;
    wire [0:0] i_forked13_and_maxpool2d4_qi;
    reg [0:0] i_forked13_and_maxpool2d4_q;
    wire [3:0] i_fpga_indvars_iv_next_maxpool2d36_a;
    wire [3:0] i_fpga_indvars_iv_next_maxpool2d36_b;
    logic [3:0] i_fpga_indvars_iv_next_maxpool2d36_o;
    wire [3:0] i_fpga_indvars_iv_next_maxpool2d36_q;
    wire [32:0] i_inc_maxpool2d31_a;
    wire [32:0] i_inc_maxpool2d31_b;
    logic [32:0] i_inc_maxpool2d31_o;
    wire [32:0] i_inc_maxpool2d31_q;
    wire [0:0] i_keep_going_or_maxpool2d14_qi;
    reg [0:0] i_keep_going_or_maxpool2d14_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene2284_fanout_adaptor_maxpool2d2_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_maxpool2d10_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_maxpool2d15_maxpool2d20_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_maxpool2d16_maxpool2d38_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked3157_pop50_maxpool2d3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked3157_pop50_maxpool2d3_out_feedback_stall_out_50;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1459_pop53_maxpool2d60_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1459_pop53_maxpool2d60_out_feedback_stall_out_53;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1954_pop48_maxpool2d56_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1954_pop48_maxpool2d56_out_feedback_stall_out_48;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2352_pop47_maxpool2d54_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2352_pop47_maxpool2d54_out_feedback_stall_out_47;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2743_pop44_maxpool2d48_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2743_pop44_maxpool2d48_out_feedback_stall_out_44;
    wire [0:0] i_llvm_fpga_pop_i1_pop52_maxpool2d12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop52_maxpool2d12_out_feedback_stall_out_52;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop41_maxpool2d5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop41_maxpool2d5_out_feedback_stall_out_41;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop40_maxpool2d15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop40_maxpool2d15_out_feedback_stall_out_40;
    wire [31:0] i_llvm_fpga_pop_i32_add1958_pop51_maxpool2d23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add1958_pop51_maxpool2d23_out_feedback_stall_out_51;
    wire [31:0] i_llvm_fpga_pop_i32_j_034_pop2056_pop49_maxpool2d58_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_034_pop2056_pop49_maxpool2d58_out_feedback_stall_out_49;
    wire [31:0] i_llvm_fpga_pop_i32_l_030_pop38_maxpool2d22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_l_030_pop38_maxpool2d22_out_feedback_stall_out_38;
    wire [31:0] i_llvm_fpga_pop_i32_mul2549_pop46_maxpool2d52_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul2549_pop46_maxpool2d52_out_feedback_stall_out_46;
    wire [31:0] i_llvm_fpga_pop_i32_mul46_pop45_maxpool2d50_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul46_pop45_maxpool2d50_out_feedback_stall_out_45;
    wire [2:0] i_llvm_fpga_pop_i3_fpga_indvars_iv_pop37_maxpool2d33_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i3_fpga_indvars_iv_pop37_maxpool2d33_out_feedback_stall_out_37;
    wire [63:0] i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi39_pop43_maxpool2d27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi39_pop43_maxpool2d27_out_feedback_stall_out_43;
    wire [63:0] i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi35_pop42_maxpool2d46_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi35_pop42_maxpool2d46_out_feedback_stall_out_42;
    wire [0:0] i_llvm_fpga_push_i1_forked3157_push50_maxpool2d11_out_feedback_out_50;
    wire [0:0] i_llvm_fpga_push_i1_forked3157_push50_maxpool2d11_out_feedback_valid_out_50;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_maxpool2d19_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_maxpool2d19_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1459_push53_maxpool2d61_out_feedback_out_53;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1459_push53_maxpool2d61_out_feedback_valid_out_53;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1954_push48_maxpool2d57_out_feedback_out_48;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1954_push48_maxpool2d57_out_feedback_valid_out_48;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2352_push47_maxpool2d55_out_feedback_out_47;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2352_push47_maxpool2d55_out_feedback_valid_out_47;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2743_push44_maxpool2d49_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2743_push44_maxpool2d49_out_feedback_valid_out_44;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_maxpool2d41_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_maxpool2d41_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_push52_maxpool2d13_out_feedback_out_52;
    wire [0:0] i_llvm_fpga_push_i1_push52_maxpool2d13_out_feedback_valid_out_52;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push41_maxpool2d44_out_feedback_out_41;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push41_maxpool2d44_out_feedback_valid_out_41;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push40_maxpool2d17_out_feedback_out_40;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push40_maxpool2d17_out_feedback_valid_out_40;
    wire [31:0] i_llvm_fpga_push_i32_add1958_push51_maxpool2d24_out_feedback_out_51;
    wire [0:0] i_llvm_fpga_push_i32_add1958_push51_maxpool2d24_out_feedback_valid_out_51;
    wire [31:0] i_llvm_fpga_push_i32_j_034_pop2056_push49_maxpool2d59_out_feedback_out_49;
    wire [0:0] i_llvm_fpga_push_i32_j_034_pop2056_push49_maxpool2d59_out_feedback_valid_out_49;
    wire [31:0] i_llvm_fpga_push_i32_l_030_push38_maxpool2d32_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_i32_l_030_push38_maxpool2d32_out_feedback_valid_out_38;
    wire [31:0] i_llvm_fpga_push_i32_mul2549_push46_maxpool2d53_out_feedback_out_46;
    wire [0:0] i_llvm_fpga_push_i32_mul2549_push46_maxpool2d53_out_feedback_valid_out_46;
    wire [31:0] i_llvm_fpga_push_i32_mul46_push45_maxpool2d51_out_feedback_out_45;
    wire [0:0] i_llvm_fpga_push_i32_mul46_push45_maxpool2d51_out_feedback_valid_out_45;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv_push37_maxpool2d37_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv_push37_maxpool2d37_out_feedback_valid_out_37;
    wire [63:0] i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi39_push43_maxpool2d28_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi39_push43_maxpool2d28_out_feedback_valid_out_43;
    wire [63:0] i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi35_push42_maxpool2d47_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi35_push42_maxpool2d47_out_feedback_valid_out_42;
    wire [0:0] i_masked_maxpool2d45_qi;
    reg [0:0] i_masked_maxpool2d45_q;
    wire [0:0] i_next_cleanups_maxpool2d43_s;
    reg [1:0] i_next_cleanups_maxpool2d43_q;
    wire [1:0] i_next_initerations_maxpool2d16_vt_join_q;
    wire [0:0] i_next_initerations_maxpool2d16_vt_select_0_b;
    wire [0:0] i_notcmp_maxpool2d40_q;
    wire [0:0] i_or_maxpool2d42_q;
    wire [0:0] i_unnamed_maxpool2d21_q;
    wire [0:0] i_unnamed_maxpool2d39_q;
    wire [31:0] bgTrunc_i_add20_maxpool2d25_sel_x_b;
    wire [2:0] bgTrunc_i_fpga_indvars_iv_next_maxpool2d36_sel_x_b;
    wire [31:0] bgTrunc_i_inc_maxpool2d31_sel_x_b;
    wire [64:0] i_arrayidx_maxpool2d0_add_x_a;
    wire [64:0] i_arrayidx_maxpool2d0_add_x_b;
    logic [64:0] i_arrayidx_maxpool2d0_add_x_o;
    wire [64:0] i_arrayidx_maxpool2d0_add_x_q;
    wire [1:0] i_arrayidx_maxpool2d0_c_i2_01_x_q;
    wire [61:0] i_arrayidx_maxpool2d0_narrow_x_b;
    wire [63:0] i_arrayidx_maxpool2d0_shift_join_x_q;
    wire [63:0] i_arrayidx_maxpool2d0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_maxpool2d6_sel_x_b;
    wire [63:0] i_idxprom_maxpool2d26_sel_x_b;
    wire [0:0] i_last_initeration_maxpool2d18_sel_x_b;
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
    wire [0:0] i_exitcond_maxpool2d34_cmp_nsign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid186_i_cleanups_shl_maxpool2d0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid186_i_cleanups_shl_maxpool2d0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid187_i_cleanups_shl_maxpool2d0_shift_x_q;
    wire [0:0] leftShiftStage0_uid189_i_cleanups_shl_maxpool2d0_shift_x_s;
    reg [1:0] leftShiftStage0_uid189_i_cleanups_shl_maxpool2d0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid193_i_next_initerations_maxpool2d0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid195_i_next_initerations_maxpool2d0_shift_x_q;
    wire [0:0] rightShiftStage0_uid197_i_next_initerations_maxpool2d0_shift_x_s;
    reg [1:0] rightShiftStage0_uid197_i_next_initerations_maxpool2d0_shift_x_q;
    reg [0:0] redist0_sync_together145_aunroll_x_in_c0_eni30_1_tpl_1_q;
    reg [0:0] redist1_sync_together145_aunroll_x_in_c0_eni30_2_tpl_1_q;
    reg [0:0] redist2_sync_together145_aunroll_x_in_c0_eni30_3_tpl_1_q;
    reg [31:0] redist3_sync_together145_aunroll_x_in_c0_eni30_4_tpl_1_q;
    reg [63:0] redist4_sync_together145_aunroll_x_in_c0_eni30_5_tpl_1_q;
    reg [63:0] redist5_sync_together145_aunroll_x_in_c0_eni30_6_tpl_1_q;
    reg [0:0] redist6_sync_together145_aunroll_x_in_c0_eni30_7_tpl_1_q;
    reg [31:0] redist7_sync_together145_aunroll_x_in_c0_eni30_8_tpl_1_q;
    reg [31:0] redist8_sync_together145_aunroll_x_in_c0_eni30_9_tpl_1_q;
    reg [0:0] redist9_sync_together145_aunroll_x_in_c0_eni30_10_tpl_1_q;
    reg [0:0] redist10_sync_together145_aunroll_x_in_c0_eni30_11_tpl_1_q;
    reg [31:0] redist11_sync_together145_aunroll_x_in_c0_eni30_12_tpl_1_q;
    reg [0:0] redist12_sync_together145_aunroll_x_in_c0_eni30_13_tpl_1_q;
    reg [63:0] redist13_sync_together145_aunroll_x_in_c0_eni30_14_tpl_2_q;
    reg [63:0] redist13_sync_together145_aunroll_x_in_c0_eni30_14_tpl_2_delay_0;
    reg [63:0] redist14_sync_together145_aunroll_x_in_c0_eni30_15_tpl_2_q;
    reg [63:0] redist14_sync_together145_aunroll_x_in_c0_eni30_15_tpl_2_delay_0;
    reg [0:0] redist15_sync_together145_aunroll_x_in_c0_eni30_16_tpl_2_q;
    reg [0:0] redist15_sync_together145_aunroll_x_in_c0_eni30_16_tpl_2_delay_0;
    reg [31:0] redist16_sync_together145_aunroll_x_in_c0_eni30_17_tpl_2_q;
    reg [31:0] redist16_sync_together145_aunroll_x_in_c0_eni30_17_tpl_2_delay_0;
    reg [31:0] redist17_sync_together145_aunroll_x_in_c0_eni30_18_tpl_2_q;
    reg [31:0] redist17_sync_together145_aunroll_x_in_c0_eni30_18_tpl_2_delay_0;
    reg [0:0] redist18_sync_together145_aunroll_x_in_c0_eni30_19_tpl_2_q;
    reg [0:0] redist18_sync_together145_aunroll_x_in_c0_eni30_19_tpl_2_delay_0;
    reg [63:0] redist19_sync_together145_aunroll_x_in_c0_eni30_20_tpl_2_q;
    reg [63:0] redist19_sync_together145_aunroll_x_in_c0_eni30_20_tpl_2_delay_0;
    reg [63:0] redist20_sync_together145_aunroll_x_in_c0_eni30_21_tpl_2_q;
    reg [63:0] redist20_sync_together145_aunroll_x_in_c0_eni30_21_tpl_2_delay_0;
    reg [0:0] redist21_sync_together145_aunroll_x_in_c0_eni30_22_tpl_2_q;
    reg [0:0] redist21_sync_together145_aunroll_x_in_c0_eni30_22_tpl_2_delay_0;
    reg [0:0] redist22_sync_together145_aunroll_x_in_c0_eni30_23_tpl_2_q;
    reg [0:0] redist22_sync_together145_aunroll_x_in_c0_eni30_23_tpl_2_delay_0;
    reg [31:0] redist23_sync_together145_aunroll_x_in_c0_eni30_24_tpl_2_q;
    reg [31:0] redist23_sync_together145_aunroll_x_in_c0_eni30_24_tpl_2_delay_0;
    reg [63:0] redist24_sync_together145_aunroll_x_in_c0_eni30_25_tpl_2_q;
    reg [63:0] redist24_sync_together145_aunroll_x_in_c0_eni30_25_tpl_2_delay_0;
    reg [63:0] redist25_sync_together145_aunroll_x_in_c0_eni30_26_tpl_2_q;
    reg [63:0] redist25_sync_together145_aunroll_x_in_c0_eni30_26_tpl_2_delay_0;
    reg [0:0] redist26_sync_together145_aunroll_x_in_c0_eni30_27_tpl_2_q;
    reg [0:0] redist26_sync_together145_aunroll_x_in_c0_eni30_27_tpl_2_delay_0;
    reg [31:0] redist27_sync_together145_aunroll_x_in_c0_eni30_28_tpl_2_q;
    reg [31:0] redist27_sync_together145_aunroll_x_in_c0_eni30_28_tpl_2_delay_0;
    reg [31:0] redist28_sync_together145_aunroll_x_in_c0_eni30_29_tpl_2_q;
    reg [31:0] redist28_sync_together145_aunroll_x_in_c0_eni30_29_tpl_2_delay_0;
    reg [0:0] redist29_sync_together145_aunroll_x_in_c0_eni30_30_tpl_2_q;
    reg [0:0] redist29_sync_together145_aunroll_x_in_c0_eni30_30_tpl_2_delay_0;
    reg [0:0] redist30_sync_together145_aunroll_x_in_i_valid_1_q;
    reg [31:0] redist31_bgTrunc_i_add20_maxpool2d25_sel_x_b_1_q;
    reg [63:0] redist32_i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi35_pop42_maxpool2d46_out_data_out_1_q;
    reg [63:0] redist33_i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi39_pop43_maxpool2d27_out_data_out_1_q;
    reg [31:0] redist34_i_llvm_fpga_pop_i32_mul2549_pop46_maxpool2d52_out_data_out_1_q;
    reg [31:0] redist35_i_llvm_fpga_pop_i32_j_034_pop2056_pop49_maxpool2d58_out_data_out_1_q;
    reg [0:0] redist36_i_llvm_fpga_pop_i1_notcmp2743_pop44_maxpool2d48_out_data_out_1_q;
    reg [0:0] redist37_i_llvm_fpga_pop_i1_notcmp2352_pop47_maxpool2d54_out_data_out_1_q;
    reg [0:0] redist38_i_llvm_fpga_pop_i1_notcmp1954_pop48_maxpool2d56_out_data_out_1_q;
    reg [0:0] redist39_i_llvm_fpga_pop_i1_notcmp1459_pop53_maxpool2d60_out_data_out_1_q;
    reg [0:0] redist40_i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_data_out_1_q;
    reg [0:0] redist41_i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_data_out_2_q;
    reg [0:0] redist42_i_first_cleanup_xor_maxpool2d7_q_1_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist30_sync_together145_aunroll_x_in_i_valid_1(DELAY,228)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together145_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist30_sync_together145_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist40_i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_data_out_1(DELAY,238)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_data_out_1_q <= '0;
        end
        else
        begin
            redist40_i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid186_i_cleanups_shl_maxpool2d0_shift_x(BITSELECT,185)@2
    assign leftShiftStage0Idx1Rng1_uid186_i_cleanups_shl_maxpool2d0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop41_maxpool2d5_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid186_i_cleanups_shl_maxpool2d0_shift_x_b = leftShiftStage0Idx1Rng1_uid186_i_cleanups_shl_maxpool2d0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid187_i_cleanups_shl_maxpool2d0_shift_x(BITJOIN,186)@2
    assign leftShiftStage0Idx1_uid187_i_cleanups_shl_maxpool2d0_shift_x_q = {leftShiftStage0Idx1Rng1_uid186_i_cleanups_shl_maxpool2d0_shift_x_b, GND_q};

    // leftShiftStage0_uid189_i_cleanups_shl_maxpool2d0_shift_x(MUX,188)@2
    assign leftShiftStage0_uid189_i_cleanups_shl_maxpool2d0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid189_i_cleanups_shl_maxpool2d0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop41_maxpool2d5_out_data_out or leftShiftStage0Idx1_uid187_i_cleanups_shl_maxpool2d0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid189_i_cleanups_shl_maxpool2d0_shift_x_s)
            1'b0 : leftShiftStage0_uid189_i_cleanups_shl_maxpool2d0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop41_maxpool2d5_out_data_out;
            1'b1 : leftShiftStage0_uid189_i_cleanups_shl_maxpool2d0_shift_x_q = leftShiftStage0Idx1_uid187_i_cleanups_shl_maxpool2d0_shift_x_q;
            default : leftShiftStage0_uid189_i_cleanups_shl_maxpool2d0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_maxpool2d8_vt_select_1(BITSELECT,52)@2
    assign i_cleanups_shl_maxpool2d8_vt_select_1_b = leftShiftStage0_uid189_i_cleanups_shl_maxpool2d0_shift_x_q[1:1];

    // i_cleanups_shl_maxpool2d8_vt_join(BITJOIN,51)@2
    assign i_cleanups_shl_maxpool2d8_vt_join_q = {i_cleanups_shl_maxpool2d8_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_maxpool2d7(LOGICAL,55)@2
    assign i_first_cleanup_xor_maxpool2d7_q = i_first_cleanup_maxpool2d6_sel_x_b ^ VCC_q;

    // i_notcmp_maxpool2d40(LOGICAL,108)@2
    assign i_notcmp_maxpool2d40_q = i_unnamed_maxpool2d39_q ^ VCC_q;

    // i_or_maxpool2d42(LOGICAL,109)@2
    assign i_or_maxpool2d42_q = i_notcmp_maxpool2d40_q | i_first_cleanup_xor_maxpool2d7_q;

    // i_next_cleanups_maxpool2d43(MUX,104)@2
    assign i_next_cleanups_maxpool2d43_s = i_or_maxpool2d42_q;
    always @(i_next_cleanups_maxpool2d43_s or i_llvm_fpga_pop_i2_cleanups_pop41_maxpool2d5_out_data_out or i_cleanups_shl_maxpool2d8_vt_join_q)
    begin
        unique case (i_next_cleanups_maxpool2d43_s)
            1'b0 : i_next_cleanups_maxpool2d43_q = i_llvm_fpga_pop_i2_cleanups_pop41_maxpool2d5_out_data_out;
            1'b1 : i_next_cleanups_maxpool2d43_q = i_cleanups_shl_maxpool2d8_vt_join_q;
            default : i_next_cleanups_maxpool2d43_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push41_maxpool2d44(BLACKBOX,93)@2
    // out out_feedback_out_41@20000000
    // out out_feedback_valid_out_41@20000000
    maxpool2d_i_llvm_fpga_push_i2_cleanups_push41_0 thei_llvm_fpga_push_i2_cleanups_push41_maxpool2d44 (
        .in_data_in(i_next_cleanups_maxpool2d43_q),
        .in_feedback_stall_in_41(i_llvm_fpga_pop_i2_cleanups_pop41_maxpool2d5_out_feedback_stall_out_41),
        .in_keep_going(redist40_i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist30_sync_together145_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_41(i_llvm_fpga_push_i2_cleanups_push41_maxpool2d44_out_feedback_out_41),
        .out_feedback_valid_out_41(i_llvm_fpga_push_i2_cleanups_push41_maxpool2d44_out_feedback_valid_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together145_aunroll_x_in_c0_eni30_2_tpl_1(DELAY,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together145_aunroll_x_in_c0_eni30_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together145_aunroll_x_in_c0_eni30_2_tpl_1_q <= $unsigned(in_c0_eni30_2_tpl);
        end
    end

    // c_i2_1100(CONSTANT,43)
    assign c_i2_1100_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop41_maxpool2d5(BLACKBOX,75)@2
    // out out_feedback_stall_out_41@20000000
    maxpool2d_i_llvm_fpga_pop_i2_cleanups_pop41_0 thei_llvm_fpga_pop_i2_cleanups_pop41_maxpool2d5 (
        .in_data_in(c_i2_1100_q),
        .in_dir(redist1_sync_together145_aunroll_x_in_c0_eni30_2_tpl_1_q),
        .in_feedback_in_41(i_llvm_fpga_push_i2_cleanups_push41_maxpool2d44_out_feedback_out_41),
        .in_feedback_valid_in_41(i_llvm_fpga_push_i2_cleanups_push41_maxpool2d44_out_feedback_valid_out_41),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist30_sync_together145_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop41_maxpool2d5_out_data_out),
        .out_feedback_stall_out_41(i_llvm_fpga_pop_i2_cleanups_pop41_maxpool2d5_out_feedback_stall_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_maxpool2d6_sel_x(BITSELECT,132)@2
    assign i_first_cleanup_maxpool2d6_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop41_maxpool2d5_out_data_out[0:0];

    // c_i3_1106(CONSTANT,47)
    assign c_i3_1106_q = $unsigned(3'b111);

    // i_fpga_indvars_iv_next_maxpool2d36(ADD,58)@2
    assign i_fpga_indvars_iv_next_maxpool2d36_a = {1'b0, i_llvm_fpga_pop_i3_fpga_indvars_iv_pop37_maxpool2d33_out_data_out};
    assign i_fpga_indvars_iv_next_maxpool2d36_b = {1'b0, c_i3_1106_q};
    assign i_fpga_indvars_iv_next_maxpool2d36_o = $unsigned(i_fpga_indvars_iv_next_maxpool2d36_a) + $unsigned(i_fpga_indvars_iv_next_maxpool2d36_b);
    assign i_fpga_indvars_iv_next_maxpool2d36_q = i_fpga_indvars_iv_next_maxpool2d36_o[3:0];

    // bgTrunc_i_fpga_indvars_iv_next_maxpool2d36_sel_x(BITSELECT,119)@2
    assign bgTrunc_i_fpga_indvars_iv_next_maxpool2d36_sel_x_b = i_fpga_indvars_iv_next_maxpool2d36_q[2:0];

    // i_llvm_fpga_push_i3_fpga_indvars_iv_push37_maxpool2d37(BLACKBOX,100)@2
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    maxpool2d_i_llvm_fpga_push_i3_fpga_indvars_iv_push37_0 thei_llvm_fpga_push_i3_fpga_indvars_iv_push37_maxpool2d37 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_maxpool2d36_sel_x_b),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop37_maxpool2d33_out_feedback_stall_out_37),
        .in_keep_going(redist40_i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist30_sync_together145_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i3_fpga_indvars_iv_push37_maxpool2d37_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i3_fpga_indvars_iv_push37_maxpool2d37_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i3_1104(CONSTANT,46)
    assign c_i3_1104_q = $unsigned(3'b001);

    // i_llvm_fpga_pop_i3_fpga_indvars_iv_pop37_maxpool2d33(BLACKBOX,82)@2
    // out out_feedback_stall_out_37@20000000
    maxpool2d_i_llvm_fpga_pop_i3_fpga_indvars_iv_pop37_0 thei_llvm_fpga_pop_i3_fpga_indvars_iv_pop37_maxpool2d33 (
        .in_data_in(c_i3_1104_q),
        .in_dir(redist1_sync_together145_aunroll_x_in_c0_eni30_2_tpl_1_q),
        .in_feedback_in_37(i_llvm_fpga_push_i3_fpga_indvars_iv_push37_maxpool2d37_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i3_fpga_indvars_iv_push37_maxpool2d37_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist30_sync_together145_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop37_maxpool2d33_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop37_maxpool2d33_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_maxpool2d34_cmp_nsign(LOGICAL,181)@2
    assign i_exitcond_maxpool2d34_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i3_fpga_indvars_iv_pop37_maxpool2d33_out_data_out[2:2]));

    // i_llvm_fpga_ffwd_dest_i1_unnamed_maxpool2d16_maxpool2d38(BLACKBOX,67)@2
    maxpool2d_i_llvm_fpga_ffwd_dest_i1_unnamed_16_maxpool2d0 thei_llvm_fpga_ffwd_dest_i1_unnamed_maxpool2d16_maxpool2d38 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist30_sync_together145_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i1_unnamed_maxpool2d16_maxpool2d38_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_maxpool2d39(LOGICAL,111)@2
    assign i_unnamed_maxpool2d39_q = i_llvm_fpga_ffwd_dest_i1_unnamed_maxpool2d16_maxpool2d38_out_dest_data_out_1_0 & i_exitcond_maxpool2d34_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_maxpool2d41(BLACKBOX,91)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    maxpool2d_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_maxpool2d41 (
        .in_data_in(i_unnamed_maxpool2d39_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_maxpool2d6_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist30_sync_together145_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_maxpool2d41_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_maxpool2d41_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,148)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid193_i_next_initerations_maxpool2d0_shift_x(BITSELECT,192)@2
    assign rightShiftStage0Idx1Rng1_uid193_i_next_initerations_maxpool2d0_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop40_maxpool2d15_out_data_out[1:1];

    // rightShiftStage0Idx1_uid195_i_next_initerations_maxpool2d0_shift_x(BITJOIN,194)@2
    assign rightShiftStage0Idx1_uid195_i_next_initerations_maxpool2d0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid193_i_next_initerations_maxpool2d0_shift_x_b};

    // valid_fanout_reg5(REG,146)@1 + 1
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

    // valid_fanout_reg6(REG,147)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations_push40_maxpool2d17(BLACKBOX,94)@2
    // out out_feedback_out_40@20000000
    // out out_feedback_valid_out_40@20000000
    maxpool2d_i_llvm_fpga_push_i2_initerations_push40_0 thei_llvm_fpga_push_i2_initerations_push40_maxpool2d17 (
        .in_data_in(i_next_initerations_maxpool2d16_vt_join_q),
        .in_feedback_stall_in_40(i_llvm_fpga_pop_i2_initerations_pop40_maxpool2d15_out_feedback_stall_out_40),
        .in_keep_going(redist40_i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_40(i_llvm_fpga_push_i2_initerations_push40_maxpool2d17_out_feedback_out_40),
        .out_feedback_valid_out_40(i_llvm_fpga_push_i2_initerations_push40_maxpool2d17_out_feedback_valid_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop40_maxpool2d15(BLACKBOX,76)@2
    // out out_feedback_stall_out_40@20000000
    maxpool2d_i_llvm_fpga_pop_i2_initerations_pop40_0 thei_llvm_fpga_pop_i2_initerations_pop40_maxpool2d15 (
        .in_data_in(c_i2_1100_q),
        .in_dir(redist1_sync_together145_aunroll_x_in_c0_eni30_2_tpl_1_q),
        .in_feedback_in_40(i_llvm_fpga_push_i2_initerations_push40_maxpool2d17_out_feedback_out_40),
        .in_feedback_valid_in_40(i_llvm_fpga_push_i2_initerations_push40_maxpool2d17_out_feedback_valid_out_40),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop40_maxpool2d15_out_data_out),
        .out_feedback_stall_out_40(i_llvm_fpga_pop_i2_initerations_pop40_maxpool2d15_out_feedback_stall_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid197_i_next_initerations_maxpool2d0_shift_x(MUX,196)@2
    assign rightShiftStage0_uid197_i_next_initerations_maxpool2d0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid197_i_next_initerations_maxpool2d0_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop40_maxpool2d15_out_data_out or rightShiftStage0Idx1_uid195_i_next_initerations_maxpool2d0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid197_i_next_initerations_maxpool2d0_shift_x_s)
            1'b0 : rightShiftStage0_uid197_i_next_initerations_maxpool2d0_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop40_maxpool2d15_out_data_out;
            1'b1 : rightShiftStage0_uid197_i_next_initerations_maxpool2d0_shift_x_q = rightShiftStage0Idx1_uid195_i_next_initerations_maxpool2d0_shift_x_q;
            default : rightShiftStage0_uid197_i_next_initerations_maxpool2d0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_maxpool2d16_vt_select_0(BITSELECT,107)@2
    assign i_next_initerations_maxpool2d16_vt_select_0_b = rightShiftStage0_uid197_i_next_initerations_maxpool2d0_shift_x_q[0:0];

    // i_next_initerations_maxpool2d16_vt_join(BITJOIN,106)@2
    assign i_next_initerations_maxpool2d16_vt_join_q = {GND_q, i_next_initerations_maxpool2d16_vt_select_0_b};

    // i_last_initeration_maxpool2d18_sel_x(BITSELECT,134)@2
    assign i_last_initeration_maxpool2d18_sel_x_b = i_next_initerations_maxpool2d16_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_maxpool2d19(BLACKBOX,86)@2
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    maxpool2d_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_maxpool2d19 (
        .in_data_in(i_last_initeration_maxpool2d18_sel_x_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_initeration_stall_out),
        .in_keep_going(redist40_i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_i1_lastiniteration_maxpool2d19_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_i1_lastiniteration_maxpool2d19_out_feedback_valid_out_1),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_maxpool2d9(BLACKBOX,68)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    maxpool2d_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_maxpool2d9 (
        .in_data_in(in_c0_eni30_2_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_maxpool2d19_out_feedback_out_1),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_maxpool2d19_out_feedback_valid_out_1),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_maxpool2d41_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_maxpool2d41_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,48)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_maxpool2d9_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_maxpool2d9_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,115)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,141)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist30_sync_together145_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist29_sync_together145_aunroll_x_in_c0_eni30_30_tpl_2(DELAY,227)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together145_aunroll_x_in_c0_eni30_30_tpl_2_delay_0 <= '0;
            redist29_sync_together145_aunroll_x_in_c0_eni30_30_tpl_2_q <= '0;
        end
        else
        begin
            redist29_sync_together145_aunroll_x_in_c0_eni30_30_tpl_2_delay_0 <= $unsigned(in_c0_eni30_30_tpl);
            redist29_sync_together145_aunroll_x_in_c0_eni30_30_tpl_2_q <= redist29_sync_together145_aunroll_x_in_c0_eni30_30_tpl_2_delay_0;
        end
    end

    // redist28_sync_together145_aunroll_x_in_c0_eni30_29_tpl_2(DELAY,226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together145_aunroll_x_in_c0_eni30_29_tpl_2_delay_0 <= '0;
            redist28_sync_together145_aunroll_x_in_c0_eni30_29_tpl_2_q <= '0;
        end
        else
        begin
            redist28_sync_together145_aunroll_x_in_c0_eni30_29_tpl_2_delay_0 <= $unsigned(in_c0_eni30_29_tpl);
            redist28_sync_together145_aunroll_x_in_c0_eni30_29_tpl_2_q <= redist28_sync_together145_aunroll_x_in_c0_eni30_29_tpl_2_delay_0;
        end
    end

    // redist27_sync_together145_aunroll_x_in_c0_eni30_28_tpl_2(DELAY,225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together145_aunroll_x_in_c0_eni30_28_tpl_2_delay_0 <= '0;
            redist27_sync_together145_aunroll_x_in_c0_eni30_28_tpl_2_q <= '0;
        end
        else
        begin
            redist27_sync_together145_aunroll_x_in_c0_eni30_28_tpl_2_delay_0 <= $unsigned(in_c0_eni30_28_tpl);
            redist27_sync_together145_aunroll_x_in_c0_eni30_28_tpl_2_q <= redist27_sync_together145_aunroll_x_in_c0_eni30_28_tpl_2_delay_0;
        end
    end

    // redist26_sync_together145_aunroll_x_in_c0_eni30_27_tpl_2(DELAY,224)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together145_aunroll_x_in_c0_eni30_27_tpl_2_delay_0 <= '0;
            redist26_sync_together145_aunroll_x_in_c0_eni30_27_tpl_2_q <= '0;
        end
        else
        begin
            redist26_sync_together145_aunroll_x_in_c0_eni30_27_tpl_2_delay_0 <= $unsigned(in_c0_eni30_27_tpl);
            redist26_sync_together145_aunroll_x_in_c0_eni30_27_tpl_2_q <= redist26_sync_together145_aunroll_x_in_c0_eni30_27_tpl_2_delay_0;
        end
    end

    // redist25_sync_together145_aunroll_x_in_c0_eni30_26_tpl_2(DELAY,223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together145_aunroll_x_in_c0_eni30_26_tpl_2_delay_0 <= '0;
            redist25_sync_together145_aunroll_x_in_c0_eni30_26_tpl_2_q <= '0;
        end
        else
        begin
            redist25_sync_together145_aunroll_x_in_c0_eni30_26_tpl_2_delay_0 <= $unsigned(in_c0_eni30_26_tpl);
            redist25_sync_together145_aunroll_x_in_c0_eni30_26_tpl_2_q <= redist25_sync_together145_aunroll_x_in_c0_eni30_26_tpl_2_delay_0;
        end
    end

    // redist24_sync_together145_aunroll_x_in_c0_eni30_25_tpl_2(DELAY,222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together145_aunroll_x_in_c0_eni30_25_tpl_2_delay_0 <= '0;
            redist24_sync_together145_aunroll_x_in_c0_eni30_25_tpl_2_q <= '0;
        end
        else
        begin
            redist24_sync_together145_aunroll_x_in_c0_eni30_25_tpl_2_delay_0 <= $unsigned(in_c0_eni30_25_tpl);
            redist24_sync_together145_aunroll_x_in_c0_eni30_25_tpl_2_q <= redist24_sync_together145_aunroll_x_in_c0_eni30_25_tpl_2_delay_0;
        end
    end

    // redist23_sync_together145_aunroll_x_in_c0_eni30_24_tpl_2(DELAY,221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together145_aunroll_x_in_c0_eni30_24_tpl_2_delay_0 <= '0;
            redist23_sync_together145_aunroll_x_in_c0_eni30_24_tpl_2_q <= '0;
        end
        else
        begin
            redist23_sync_together145_aunroll_x_in_c0_eni30_24_tpl_2_delay_0 <= $unsigned(in_c0_eni30_24_tpl);
            redist23_sync_together145_aunroll_x_in_c0_eni30_24_tpl_2_q <= redist23_sync_together145_aunroll_x_in_c0_eni30_24_tpl_2_delay_0;
        end
    end

    // redist22_sync_together145_aunroll_x_in_c0_eni30_23_tpl_2(DELAY,220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together145_aunroll_x_in_c0_eni30_23_tpl_2_delay_0 <= '0;
            redist22_sync_together145_aunroll_x_in_c0_eni30_23_tpl_2_q <= '0;
        end
        else
        begin
            redist22_sync_together145_aunroll_x_in_c0_eni30_23_tpl_2_delay_0 <= $unsigned(in_c0_eni30_23_tpl);
            redist22_sync_together145_aunroll_x_in_c0_eni30_23_tpl_2_q <= redist22_sync_together145_aunroll_x_in_c0_eni30_23_tpl_2_delay_0;
        end
    end

    // redist21_sync_together145_aunroll_x_in_c0_eni30_22_tpl_2(DELAY,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together145_aunroll_x_in_c0_eni30_22_tpl_2_delay_0 <= '0;
            redist21_sync_together145_aunroll_x_in_c0_eni30_22_tpl_2_q <= '0;
        end
        else
        begin
            redist21_sync_together145_aunroll_x_in_c0_eni30_22_tpl_2_delay_0 <= $unsigned(in_c0_eni30_22_tpl);
            redist21_sync_together145_aunroll_x_in_c0_eni30_22_tpl_2_q <= redist21_sync_together145_aunroll_x_in_c0_eni30_22_tpl_2_delay_0;
        end
    end

    // redist20_sync_together145_aunroll_x_in_c0_eni30_21_tpl_2(DELAY,218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together145_aunroll_x_in_c0_eni30_21_tpl_2_delay_0 <= '0;
            redist20_sync_together145_aunroll_x_in_c0_eni30_21_tpl_2_q <= '0;
        end
        else
        begin
            redist20_sync_together145_aunroll_x_in_c0_eni30_21_tpl_2_delay_0 <= $unsigned(in_c0_eni30_21_tpl);
            redist20_sync_together145_aunroll_x_in_c0_eni30_21_tpl_2_q <= redist20_sync_together145_aunroll_x_in_c0_eni30_21_tpl_2_delay_0;
        end
    end

    // redist19_sync_together145_aunroll_x_in_c0_eni30_20_tpl_2(DELAY,217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together145_aunroll_x_in_c0_eni30_20_tpl_2_delay_0 <= '0;
            redist19_sync_together145_aunroll_x_in_c0_eni30_20_tpl_2_q <= '0;
        end
        else
        begin
            redist19_sync_together145_aunroll_x_in_c0_eni30_20_tpl_2_delay_0 <= $unsigned(in_c0_eni30_20_tpl);
            redist19_sync_together145_aunroll_x_in_c0_eni30_20_tpl_2_q <= redist19_sync_together145_aunroll_x_in_c0_eni30_20_tpl_2_delay_0;
        end
    end

    // redist18_sync_together145_aunroll_x_in_c0_eni30_19_tpl_2(DELAY,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together145_aunroll_x_in_c0_eni30_19_tpl_2_delay_0 <= '0;
            redist18_sync_together145_aunroll_x_in_c0_eni30_19_tpl_2_q <= '0;
        end
        else
        begin
            redist18_sync_together145_aunroll_x_in_c0_eni30_19_tpl_2_delay_0 <= $unsigned(in_c0_eni30_19_tpl);
            redist18_sync_together145_aunroll_x_in_c0_eni30_19_tpl_2_q <= redist18_sync_together145_aunroll_x_in_c0_eni30_19_tpl_2_delay_0;
        end
    end

    // redist17_sync_together145_aunroll_x_in_c0_eni30_18_tpl_2(DELAY,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together145_aunroll_x_in_c0_eni30_18_tpl_2_delay_0 <= '0;
            redist17_sync_together145_aunroll_x_in_c0_eni30_18_tpl_2_q <= '0;
        end
        else
        begin
            redist17_sync_together145_aunroll_x_in_c0_eni30_18_tpl_2_delay_0 <= $unsigned(in_c0_eni30_18_tpl);
            redist17_sync_together145_aunroll_x_in_c0_eni30_18_tpl_2_q <= redist17_sync_together145_aunroll_x_in_c0_eni30_18_tpl_2_delay_0;
        end
    end

    // redist16_sync_together145_aunroll_x_in_c0_eni30_17_tpl_2(DELAY,214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together145_aunroll_x_in_c0_eni30_17_tpl_2_delay_0 <= '0;
            redist16_sync_together145_aunroll_x_in_c0_eni30_17_tpl_2_q <= '0;
        end
        else
        begin
            redist16_sync_together145_aunroll_x_in_c0_eni30_17_tpl_2_delay_0 <= $unsigned(in_c0_eni30_17_tpl);
            redist16_sync_together145_aunroll_x_in_c0_eni30_17_tpl_2_q <= redist16_sync_together145_aunroll_x_in_c0_eni30_17_tpl_2_delay_0;
        end
    end

    // redist15_sync_together145_aunroll_x_in_c0_eni30_16_tpl_2(DELAY,213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together145_aunroll_x_in_c0_eni30_16_tpl_2_delay_0 <= '0;
            redist15_sync_together145_aunroll_x_in_c0_eni30_16_tpl_2_q <= '0;
        end
        else
        begin
            redist15_sync_together145_aunroll_x_in_c0_eni30_16_tpl_2_delay_0 <= $unsigned(in_c0_eni30_16_tpl);
            redist15_sync_together145_aunroll_x_in_c0_eni30_16_tpl_2_q <= redist15_sync_together145_aunroll_x_in_c0_eni30_16_tpl_2_delay_0;
        end
    end

    // redist14_sync_together145_aunroll_x_in_c0_eni30_15_tpl_2(DELAY,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together145_aunroll_x_in_c0_eni30_15_tpl_2_delay_0 <= '0;
            redist14_sync_together145_aunroll_x_in_c0_eni30_15_tpl_2_q <= '0;
        end
        else
        begin
            redist14_sync_together145_aunroll_x_in_c0_eni30_15_tpl_2_delay_0 <= $unsigned(in_c0_eni30_15_tpl);
            redist14_sync_together145_aunroll_x_in_c0_eni30_15_tpl_2_q <= redist14_sync_together145_aunroll_x_in_c0_eni30_15_tpl_2_delay_0;
        end
    end

    // redist13_sync_together145_aunroll_x_in_c0_eni30_14_tpl_2(DELAY,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together145_aunroll_x_in_c0_eni30_14_tpl_2_delay_0 <= '0;
            redist13_sync_together145_aunroll_x_in_c0_eni30_14_tpl_2_q <= '0;
        end
        else
        begin
            redist13_sync_together145_aunroll_x_in_c0_eni30_14_tpl_2_delay_0 <= $unsigned(in_c0_eni30_14_tpl);
            redist13_sync_together145_aunroll_x_in_c0_eni30_14_tpl_2_q <= redist13_sync_together145_aunroll_x_in_c0_eni30_14_tpl_2_delay_0;
        end
    end

    // valid_fanout_reg29(REG,170)@1 + 1
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

    // valid_fanout_reg30(REG,171)@1 + 1
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

    // i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_maxpool2d10(REG,65)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_maxpool2d10_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_maxpool2d10_q <= i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_data_out;
        end
    end

    // i_llvm_fpga_push_i1_notcmp1459_push53_maxpool2d61(BLACKBOX,87)@2
    // out out_feedback_out_53@20000000
    // out out_feedback_valid_out_53@20000000
    maxpool2d_i_llvm_fpga_push_i1_notcmp1459_push53_0 thei_llvm_fpga_push_i1_notcmp1459_push53_maxpool2d61 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp1459_pop53_maxpool2d60_out_data_out),
        .in_feedback_stall_in_53(i_llvm_fpga_pop_i1_notcmp1459_pop53_maxpool2d60_out_feedback_stall_out_53),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_maxpool2d10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(),
        .out_feedback_out_53(i_llvm_fpga_push_i1_notcmp1459_push53_maxpool2d61_out_feedback_out_53),
        .out_feedback_valid_out_53(i_llvm_fpga_push_i1_notcmp1459_push53_maxpool2d61_out_feedback_valid_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_i1_c0_ene2284_fanout_adaptor_maxpool2d2(REG,64)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c0_ene2284_fanout_adaptor_maxpool2d2_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene2284_fanout_adaptor_maxpool2d2_q <= in_c0_eni30_2_tpl;
        end
    end

    // redist12_sync_together145_aunroll_x_in_c0_eni30_13_tpl_1(DELAY,210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together145_aunroll_x_in_c0_eni30_13_tpl_1_q <= '0;
        end
        else
        begin
            redist12_sync_together145_aunroll_x_in_c0_eni30_13_tpl_1_q <= $unsigned(in_c0_eni30_13_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp1459_pop53_maxpool2d60(BLACKBOX,70)@2
    // out out_feedback_stall_out_53@20000000
    maxpool2d_i_llvm_fpga_pop_i1_notcmp1459_pop53_0 thei_llvm_fpga_pop_i1_notcmp1459_pop53_maxpool2d60 (
        .in_data_in(redist12_sync_together145_aunroll_x_in_c0_eni30_13_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2284_fanout_adaptor_maxpool2d2_q),
        .in_feedback_in_53(i_llvm_fpga_push_i1_notcmp1459_push53_maxpool2d61_out_feedback_out_53),
        .in_feedback_valid_in_53(i_llvm_fpga_push_i1_notcmp1459_push53_maxpool2d61_out_feedback_valid_out_53),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1459_pop53_maxpool2d60_out_data_out),
        .out_feedback_stall_out_53(i_llvm_fpga_pop_i1_notcmp1459_pop53_maxpool2d60_out_feedback_stall_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist39_i_llvm_fpga_pop_i1_notcmp1459_pop53_maxpool2d60_out_data_out_1(DELAY,237)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_llvm_fpga_pop_i1_notcmp1459_pop53_maxpool2d60_out_data_out_1_q <= '0;
        end
        else
        begin
            redist39_i_llvm_fpga_pop_i1_notcmp1459_pop53_maxpool2d60_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp1459_pop53_maxpool2d60_out_data_out);
        end
    end

    // valid_fanout_reg27(REG,168)@1 + 1
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

    // valid_fanout_reg28(REG,169)@1 + 1
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

    // i_llvm_fpga_push_i32_j_034_pop2056_push49_maxpool2d59(BLACKBOX,96)@2
    // out out_feedback_out_49@20000000
    // out out_feedback_valid_out_49@20000000
    maxpool2d_i_llvm_fpga_push_i32_j_034_pop2056_push49_0 thei_llvm_fpga_push_i32_j_034_pop2056_push49_maxpool2d59 (
        .in_data_in(i_llvm_fpga_pop_i32_j_034_pop2056_pop49_maxpool2d58_out_data_out),
        .in_feedback_stall_in_49(i_llvm_fpga_pop_i32_j_034_pop2056_pop49_maxpool2d58_out_feedback_stall_out_49),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_maxpool2d10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(),
        .out_feedback_out_49(i_llvm_fpga_push_i32_j_034_pop2056_push49_maxpool2d59_out_feedback_out_49),
        .out_feedback_valid_out_49(i_llvm_fpga_push_i32_j_034_pop2056_push49_maxpool2d59_out_feedback_valid_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_sync_together145_aunroll_x_in_c0_eni30_12_tpl_1(DELAY,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together145_aunroll_x_in_c0_eni30_12_tpl_1_q <= '0;
        end
        else
        begin
            redist11_sync_together145_aunroll_x_in_c0_eni30_12_tpl_1_q <= $unsigned(in_c0_eni30_12_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_j_034_pop2056_pop49_maxpool2d58(BLACKBOX,78)@2
    // out out_feedback_stall_out_49@20000000
    maxpool2d_i_llvm_fpga_pop_i32_j_034_pop2056_pop49_0 thei_llvm_fpga_pop_i32_j_034_pop2056_pop49_maxpool2d58 (
        .in_data_in(redist11_sync_together145_aunroll_x_in_c0_eni30_12_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2284_fanout_adaptor_maxpool2d2_q),
        .in_feedback_in_49(i_llvm_fpga_push_i32_j_034_pop2056_push49_maxpool2d59_out_feedback_out_49),
        .in_feedback_valid_in_49(i_llvm_fpga_push_i32_j_034_pop2056_push49_maxpool2d59_out_feedback_valid_out_49),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_034_pop2056_pop49_maxpool2d58_out_data_out),
        .out_feedback_stall_out_49(i_llvm_fpga_pop_i32_j_034_pop2056_pop49_maxpool2d58_out_feedback_stall_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist35_i_llvm_fpga_pop_i32_j_034_pop2056_pop49_maxpool2d58_out_data_out_1(DELAY,233)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_llvm_fpga_pop_i32_j_034_pop2056_pop49_maxpool2d58_out_data_out_1_q <= '0;
        end
        else
        begin
            redist35_i_llvm_fpga_pop_i32_j_034_pop2056_pop49_maxpool2d58_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_j_034_pop2056_pop49_maxpool2d58_out_data_out);
        end
    end

    // valid_fanout_reg25(REG,166)@1 + 1
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

    // valid_fanout_reg26(REG,167)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp1954_push48_maxpool2d57(BLACKBOX,88)@2
    // out out_feedback_out_48@20000000
    // out out_feedback_valid_out_48@20000000
    maxpool2d_i_llvm_fpga_push_i1_notcmp1954_push48_0 thei_llvm_fpga_push_i1_notcmp1954_push48_maxpool2d57 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp1954_pop48_maxpool2d56_out_data_out),
        .in_feedback_stall_in_48(i_llvm_fpga_pop_i1_notcmp1954_pop48_maxpool2d56_out_feedback_stall_out_48),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_maxpool2d10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(),
        .out_feedback_out_48(i_llvm_fpga_push_i1_notcmp1954_push48_maxpool2d57_out_feedback_out_48),
        .out_feedback_valid_out_48(i_llvm_fpga_push_i1_notcmp1954_push48_maxpool2d57_out_feedback_valid_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_sync_together145_aunroll_x_in_c0_eni30_11_tpl_1(DELAY,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together145_aunroll_x_in_c0_eni30_11_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together145_aunroll_x_in_c0_eni30_11_tpl_1_q <= $unsigned(in_c0_eni30_11_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp1954_pop48_maxpool2d56(BLACKBOX,71)@2
    // out out_feedback_stall_out_48@20000000
    maxpool2d_i_llvm_fpga_pop_i1_notcmp1954_pop48_0 thei_llvm_fpga_pop_i1_notcmp1954_pop48_maxpool2d56 (
        .in_data_in(redist10_sync_together145_aunroll_x_in_c0_eni30_11_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2284_fanout_adaptor_maxpool2d2_q),
        .in_feedback_in_48(i_llvm_fpga_push_i1_notcmp1954_push48_maxpool2d57_out_feedback_out_48),
        .in_feedback_valid_in_48(i_llvm_fpga_push_i1_notcmp1954_push48_maxpool2d57_out_feedback_valid_out_48),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1954_pop48_maxpool2d56_out_data_out),
        .out_feedback_stall_out_48(i_llvm_fpga_pop_i1_notcmp1954_pop48_maxpool2d56_out_feedback_stall_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist38_i_llvm_fpga_pop_i1_notcmp1954_pop48_maxpool2d56_out_data_out_1(DELAY,236)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_llvm_fpga_pop_i1_notcmp1954_pop48_maxpool2d56_out_data_out_1_q <= '0;
        end
        else
        begin
            redist38_i_llvm_fpga_pop_i1_notcmp1954_pop48_maxpool2d56_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp1954_pop48_maxpool2d56_out_data_out);
        end
    end

    // valid_fanout_reg23(REG,164)@1 + 1
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

    // valid_fanout_reg24(REG,165)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp2352_push47_maxpool2d55(BLACKBOX,89)@2
    // out out_feedback_out_47@20000000
    // out out_feedback_valid_out_47@20000000
    maxpool2d_i_llvm_fpga_push_i1_notcmp2352_push47_0 thei_llvm_fpga_push_i1_notcmp2352_push47_maxpool2d55 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp2352_pop47_maxpool2d54_out_data_out),
        .in_feedback_stall_in_47(i_llvm_fpga_pop_i1_notcmp2352_pop47_maxpool2d54_out_feedback_stall_out_47),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_maxpool2d10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(),
        .out_feedback_out_47(i_llvm_fpga_push_i1_notcmp2352_push47_maxpool2d55_out_feedback_out_47),
        .out_feedback_valid_out_47(i_llvm_fpga_push_i1_notcmp2352_push47_maxpool2d55_out_feedback_valid_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together145_aunroll_x_in_c0_eni30_10_tpl_1(DELAY,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together145_aunroll_x_in_c0_eni30_10_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together145_aunroll_x_in_c0_eni30_10_tpl_1_q <= $unsigned(in_c0_eni30_10_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp2352_pop47_maxpool2d54(BLACKBOX,72)@2
    // out out_feedback_stall_out_47@20000000
    maxpool2d_i_llvm_fpga_pop_i1_notcmp2352_pop47_0 thei_llvm_fpga_pop_i1_notcmp2352_pop47_maxpool2d54 (
        .in_data_in(redist9_sync_together145_aunroll_x_in_c0_eni30_10_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2284_fanout_adaptor_maxpool2d2_q),
        .in_feedback_in_47(i_llvm_fpga_push_i1_notcmp2352_push47_maxpool2d55_out_feedback_out_47),
        .in_feedback_valid_in_47(i_llvm_fpga_push_i1_notcmp2352_push47_maxpool2d55_out_feedback_valid_out_47),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2352_pop47_maxpool2d54_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_i1_notcmp2352_pop47_maxpool2d54_out_feedback_stall_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist37_i_llvm_fpga_pop_i1_notcmp2352_pop47_maxpool2d54_out_data_out_1(DELAY,235)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_llvm_fpga_pop_i1_notcmp2352_pop47_maxpool2d54_out_data_out_1_q <= '0;
        end
        else
        begin
            redist37_i_llvm_fpga_pop_i1_notcmp2352_pop47_maxpool2d54_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp2352_pop47_maxpool2d54_out_data_out);
        end
    end

    // valid_fanout_reg21(REG,162)@1 + 1
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

    // valid_fanout_reg22(REG,163)@1 + 1
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

    // i_llvm_fpga_push_i32_mul2549_push46_maxpool2d53(BLACKBOX,98)@2
    // out out_feedback_out_46@20000000
    // out out_feedback_valid_out_46@20000000
    maxpool2d_i_llvm_fpga_push_i32_mul2549_push46_0 thei_llvm_fpga_push_i32_mul2549_push46_maxpool2d53 (
        .in_data_in(i_llvm_fpga_pop_i32_mul2549_pop46_maxpool2d52_out_data_out),
        .in_feedback_stall_in_46(i_llvm_fpga_pop_i32_mul2549_pop46_maxpool2d52_out_feedback_stall_out_46),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_maxpool2d10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(),
        .out_feedback_out_46(i_llvm_fpga_push_i32_mul2549_push46_maxpool2d53_out_feedback_out_46),
        .out_feedback_valid_out_46(i_llvm_fpga_push_i32_mul2549_push46_maxpool2d53_out_feedback_valid_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together145_aunroll_x_in_c0_eni30_9_tpl_1(DELAY,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together145_aunroll_x_in_c0_eni30_9_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together145_aunroll_x_in_c0_eni30_9_tpl_1_q <= $unsigned(in_c0_eni30_9_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul2549_pop46_maxpool2d52(BLACKBOX,80)@2
    // out out_feedback_stall_out_46@20000000
    maxpool2d_i_llvm_fpga_pop_i32_mul2549_pop46_0 thei_llvm_fpga_pop_i32_mul2549_pop46_maxpool2d52 (
        .in_data_in(redist8_sync_together145_aunroll_x_in_c0_eni30_9_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2284_fanout_adaptor_maxpool2d2_q),
        .in_feedback_in_46(i_llvm_fpga_push_i32_mul2549_push46_maxpool2d53_out_feedback_out_46),
        .in_feedback_valid_in_46(i_llvm_fpga_push_i32_mul2549_push46_maxpool2d53_out_feedback_valid_out_46),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul2549_pop46_maxpool2d52_out_data_out),
        .out_feedback_stall_out_46(i_llvm_fpga_pop_i32_mul2549_pop46_maxpool2d52_out_feedback_stall_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist34_i_llvm_fpga_pop_i32_mul2549_pop46_maxpool2d52_out_data_out_1(DELAY,232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_llvm_fpga_pop_i32_mul2549_pop46_maxpool2d52_out_data_out_1_q <= '0;
        end
        else
        begin
            redist34_i_llvm_fpga_pop_i32_mul2549_pop46_maxpool2d52_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_mul2549_pop46_maxpool2d52_out_data_out);
        end
    end

    // valid_fanout_reg17(REG,158)@1 + 1
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

    // valid_fanout_reg18(REG,159)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp2743_push44_maxpool2d49(BLACKBOX,90)@2
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    maxpool2d_i_llvm_fpga_push_i1_notcmp2743_push44_0 thei_llvm_fpga_push_i1_notcmp2743_push44_maxpool2d49 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp2743_pop44_maxpool2d48_out_data_out),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_i1_notcmp2743_pop44_maxpool2d48_out_feedback_stall_out_44),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_maxpool2d10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_i1_notcmp2743_push44_maxpool2d49_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_i1_notcmp2743_push44_maxpool2d49_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together145_aunroll_x_in_c0_eni30_7_tpl_1(DELAY,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together145_aunroll_x_in_c0_eni30_7_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together145_aunroll_x_in_c0_eni30_7_tpl_1_q <= $unsigned(in_c0_eni30_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp2743_pop44_maxpool2d48(BLACKBOX,73)@2
    // out out_feedback_stall_out_44@20000000
    maxpool2d_i_llvm_fpga_pop_i1_notcmp2743_pop44_0 thei_llvm_fpga_pop_i1_notcmp2743_pop44_maxpool2d48 (
        .in_data_in(redist6_sync_together145_aunroll_x_in_c0_eni30_7_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2284_fanout_adaptor_maxpool2d2_q),
        .in_feedback_in_44(i_llvm_fpga_push_i1_notcmp2743_push44_maxpool2d49_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_i1_notcmp2743_push44_maxpool2d49_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2743_pop44_maxpool2d48_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_i1_notcmp2743_pop44_maxpool2d48_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist36_i_llvm_fpga_pop_i1_notcmp2743_pop44_maxpool2d48_out_data_out_1(DELAY,234)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_llvm_fpga_pop_i1_notcmp2743_pop44_maxpool2d48_out_data_out_1_q <= '0;
        end
        else
        begin
            redist36_i_llvm_fpga_pop_i1_notcmp2743_pop44_maxpool2d48_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp2743_pop44_maxpool2d48_out_data_out);
        end
    end

    // valid_fanout_reg15(REG,156)@1 + 1
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

    // valid_fanout_reg16(REG,157)@1 + 1
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

    // i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi35_push42_maxpool2d47(BLACKBOX,102)@2
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    maxpool2d_i_llvm_fpga_push_p1024f32_outp0000place_phi35_push42_0 thei_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi35_push42_maxpool2d47 (
        .in_data_in(i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi35_pop42_maxpool2d46_out_data_out),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi35_pop42_maxpool2d46_out_feedback_stall_out_42),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_maxpool2d10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi35_push42_maxpool2d47_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi35_push42_maxpool2d47_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together145_aunroll_x_in_c0_eni30_6_tpl_1(DELAY,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together145_aunroll_x_in_c0_eni30_6_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together145_aunroll_x_in_c0_eni30_6_tpl_1_q <= $unsigned(in_c0_eni30_6_tpl);
        end
    end

    // i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi35_pop42_maxpool2d46(BLACKBOX,84)@2
    // out out_feedback_stall_out_42@20000000
    maxpool2d_i_llvm_fpga_pop_p1024f32_outpu0000eplace_phi35_pop42_0 thei_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi35_pop42_maxpool2d46 (
        .in_data_in(redist5_sync_together145_aunroll_x_in_c0_eni30_6_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2284_fanout_adaptor_maxpool2d2_q),
        .in_feedback_in_42(i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi35_push42_maxpool2d47_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi35_push42_maxpool2d47_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi35_pop42_maxpool2d46_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi35_pop42_maxpool2d46_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist32_i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi35_pop42_maxpool2d46_out_data_out_1(DELAY,230)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi35_pop42_maxpool2d46_out_data_out_1_q <= '0;
        end
        else
        begin
            redist32_i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi35_pop42_maxpool2d46_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi35_pop42_maxpool2d46_out_data_out);
        end
    end

    // i_masked_maxpool2d45(LOGICAL,103)@2 + 1
    assign i_masked_maxpool2d45_qi = i_notcmp_maxpool2d40_q & i_first_cleanup_maxpool2d6_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_maxpool2d45_delay ( .xin(i_masked_maxpool2d45_qi), .xout(i_masked_maxpool2d45_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_first_cleanup_xor_or_maxpool2d30(LOGICAL,56)@3
    assign i_first_cleanup_xor_or_maxpool2d30_q = i_unnamed_maxpool2d21_q | redist42_i_first_cleanup_xor_maxpool2d7_q_1_q;

    // valid_fanout_reg9(REG,150)@1 + 1
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

    // valid_fanout_reg14(REG,155)@1 + 1
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

    // c_i32_1103(CONSTANT,45)
    assign c_i32_1103_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_maxpool2d31(ADD,61)@2
    assign i_inc_maxpool2d31_a = {1'b0, i_llvm_fpga_pop_i32_l_030_pop38_maxpool2d22_out_data_out};
    assign i_inc_maxpool2d31_b = {1'b0, c_i32_1103_q};
    assign i_inc_maxpool2d31_o = $unsigned(i_inc_maxpool2d31_a) + $unsigned(i_inc_maxpool2d31_b);
    assign i_inc_maxpool2d31_q = i_inc_maxpool2d31_o[32:0];

    // bgTrunc_i_inc_maxpool2d31_sel_x(BITSELECT,120)@2
    assign bgTrunc_i_inc_maxpool2d31_sel_x_b = i_inc_maxpool2d31_q[31:0];

    // i_llvm_fpga_push_i32_l_030_push38_maxpool2d32(BLACKBOX,97)@2
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    maxpool2d_i_llvm_fpga_push_i32_l_030_push38_0 thei_llvm_fpga_push_i32_l_030_push38_maxpool2d32 (
        .in_data_in(bgTrunc_i_inc_maxpool2d31_sel_x_b),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_i32_l_030_pop38_maxpool2d22_out_feedback_stall_out_38),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_maxpool2d10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_i32_l_030_push38_maxpool2d32_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_i32_l_030_push38_maxpool2d32_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_0102(CONSTANT,44)
    assign c_i32_0102_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_l_030_pop38_maxpool2d22(BLACKBOX,79)@2
    // out out_feedback_stall_out_38@20000000
    maxpool2d_i_llvm_fpga_pop_i32_l_030_pop38_0 thei_llvm_fpga_pop_i32_l_030_pop38_maxpool2d22 (
        .in_data_in(c_i32_0102_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2284_fanout_adaptor_maxpool2d2_q),
        .in_feedback_in_38(i_llvm_fpga_push_i32_l_030_push38_maxpool2d32_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_i32_l_030_push38_maxpool2d32_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i32_l_030_pop38_maxpool2d22_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_i32_l_030_pop38_maxpool2d22_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg10(REG,151)@1 + 1
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

    // valid_fanout_reg11(REG,152)@1 + 1
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

    // i_llvm_fpga_push_i32_add1958_push51_maxpool2d24(BLACKBOX,95)@2
    // out out_feedback_out_51@20000000
    // out out_feedback_valid_out_51@20000000
    maxpool2d_i_llvm_fpga_push_i32_add1958_push51_0 thei_llvm_fpga_push_i32_add1958_push51_maxpool2d24 (
        .in_data_in(i_llvm_fpga_pop_i32_add1958_pop51_maxpool2d23_out_data_out),
        .in_feedback_stall_in_51(i_llvm_fpga_pop_i32_add1958_pop51_maxpool2d23_out_feedback_stall_out_51),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_maxpool2d10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_51(i_llvm_fpga_push_i32_add1958_push51_maxpool2d24_out_feedback_out_51),
        .out_feedback_valid_out_51(i_llvm_fpga_push_i32_add1958_push51_maxpool2d24_out_feedback_valid_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together145_aunroll_x_in_c0_eni30_4_tpl_1(DELAY,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together145_aunroll_x_in_c0_eni30_4_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together145_aunroll_x_in_c0_eni30_4_tpl_1_q <= $unsigned(in_c0_eni30_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_add1958_pop51_maxpool2d23(BLACKBOX,77)@2
    // out out_feedback_stall_out_51@20000000
    maxpool2d_i_llvm_fpga_pop_i32_add1958_pop51_0 thei_llvm_fpga_pop_i32_add1958_pop51_maxpool2d23 (
        .in_data_in(redist3_sync_together145_aunroll_x_in_c0_eni30_4_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2284_fanout_adaptor_maxpool2d2_q),
        .in_feedback_in_51(i_llvm_fpga_push_i32_add1958_push51_maxpool2d24_out_feedback_out_51),
        .in_feedback_valid_in_51(i_llvm_fpga_push_i32_add1958_push51_maxpool2d24_out_feedback_valid_out_51),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i32_add1958_pop51_maxpool2d23_out_data_out),
        .out_feedback_stall_out_51(i_llvm_fpga_pop_i32_add1958_pop51_maxpool2d23_out_feedback_stall_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add20_maxpool2d25(ADD,49)@2
    assign i_add20_maxpool2d25_a = {1'b0, i_llvm_fpga_pop_i32_add1958_pop51_maxpool2d23_out_data_out};
    assign i_add20_maxpool2d25_b = {1'b0, i_llvm_fpga_pop_i32_l_030_pop38_maxpool2d22_out_data_out};
    assign i_add20_maxpool2d25_o = $unsigned(i_add20_maxpool2d25_a) + $unsigned(i_add20_maxpool2d25_b);
    assign i_add20_maxpool2d25_q = i_add20_maxpool2d25_o[32:0];

    // bgTrunc_i_add20_maxpool2d25_sel_x(BITSELECT,118)@2
    assign bgTrunc_i_add20_maxpool2d25_sel_x_b = i_add20_maxpool2d25_q[31:0];

    // redist31_bgTrunc_i_add20_maxpool2d25_sel_x_b_1(DELAY,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_bgTrunc_i_add20_maxpool2d25_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist31_bgTrunc_i_add20_maxpool2d25_sel_x_b_1_q <= $unsigned(bgTrunc_i_add20_maxpool2d25_sel_x_b);
        end
    end

    // i_idxprom_maxpool2d26_sel_x(BITSELECT,133)@3
    assign i_idxprom_maxpool2d26_sel_x_b = $unsigned({{32{redist31_bgTrunc_i_add20_maxpool2d25_sel_x_b_1_q[31]}}, redist31_bgTrunc_i_add20_maxpool2d25_sel_x_b_1_q[31:0]});

    // i_arrayidx_maxpool2d0_narrow_x(BITSELECT,124)@3
    assign i_arrayidx_maxpool2d0_narrow_x_b = i_idxprom_maxpool2d26_sel_x_b[61:0];

    // i_arrayidx_maxpool2d0_c_i2_01_x(CONSTANT,123)
    assign i_arrayidx_maxpool2d0_c_i2_01_x_q = $unsigned(2'b00);

    // i_arrayidx_maxpool2d0_shift_join_x(BITJOIN,125)@3
    assign i_arrayidx_maxpool2d0_shift_join_x_q = {i_arrayidx_maxpool2d0_narrow_x_b, i_arrayidx_maxpool2d0_c_i2_01_x_q};

    // valid_fanout_reg12(REG,153)@1 + 1
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

    // valid_fanout_reg13(REG,154)@1 + 1
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

    // i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi39_push43_maxpool2d28(BLACKBOX,101)@2
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    maxpool2d_i_llvm_fpga_push_p1024f32_inpu0000place_phi39_push43_0 thei_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi39_push43_maxpool2d28 (
        .in_data_in(i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi39_pop43_maxpool2d27_out_data_out),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi39_pop43_maxpool2d27_out_feedback_stall_out_43),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_maxpool2d10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi39_push43_maxpool2d28_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi39_push43_maxpool2d28_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together145_aunroll_x_in_c0_eni30_5_tpl_1(DELAY,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together145_aunroll_x_in_c0_eni30_5_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together145_aunroll_x_in_c0_eni30_5_tpl_1_q <= $unsigned(in_c0_eni30_5_tpl);
        end
    end

    // i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi39_pop43_maxpool2d27(BLACKBOX,83)@2
    // out out_feedback_stall_out_43@20000000
    maxpool2d_i_llvm_fpga_pop_p1024f32_input0000eplace_phi39_pop43_0 thei_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi39_pop43_maxpool2d27 (
        .in_data_in(redist4_sync_together145_aunroll_x_in_c0_eni30_5_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2284_fanout_adaptor_maxpool2d2_q),
        .in_feedback_in_43(i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi39_push43_maxpool2d28_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi39_push43_maxpool2d28_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi39_pop43_maxpool2d27_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi39_pop43_maxpool2d27_out_feedback_stall_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist33_i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi39_pop43_maxpool2d27_out_data_out_1(DELAY,231)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi39_pop43_maxpool2d27_out_data_out_1_q <= '0;
        end
        else
        begin
            redist33_i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi39_pop43_maxpool2d27_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi39_pop43_maxpool2d27_out_data_out);
        end
    end

    // i_arrayidx_maxpool2d0_add_x(ADD,122)@3
    assign i_arrayidx_maxpool2d0_add_x_a = {1'b0, redist33_i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi39_pop43_maxpool2d27_out_data_out_1_q};
    assign i_arrayidx_maxpool2d0_add_x_b = {1'b0, i_arrayidx_maxpool2d0_shift_join_x_q};
    assign i_arrayidx_maxpool2d0_add_x_o = $unsigned(i_arrayidx_maxpool2d0_add_x_a) + $unsigned(i_arrayidx_maxpool2d0_add_x_b);
    assign i_arrayidx_maxpool2d0_add_x_q = i_arrayidx_maxpool2d0_add_x_o[64:0];

    // i_arrayidx_maxpool2d0_dupName_0_trunc_sel_x(BITSELECT,127)@3
    assign i_arrayidx_maxpool2d0_dupName_0_trunc_sel_x_b = i_arrayidx_maxpool2d0_add_x_q[63:0];

    // valid_fanout_reg8(REG,149)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist30_sync_together145_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_maxpool2d15_maxpool2d20(BLACKBOX,66)@3
    maxpool2d_i_llvm_fpga_ffwd_dest_i1_unnamed_15_maxpool2d0 thei_llvm_fpga_ffwd_dest_i1_unnamed_maxpool2d15_maxpool2d20 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i1_unnamed_maxpool2d15_maxpool2d20_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_maxpool2d21(LOGICAL,110)@3
    assign i_unnamed_maxpool2d21_q = i_llvm_fpga_ffwd_dest_i1_unnamed_maxpool2d15_maxpool2d20_out_dest_data_out_1_0 ^ VCC_q;

    // valid_fanout_reg3(REG,144)@1 + 1
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

    // valid_fanout_reg4(REG,145)@1 + 1
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

    // i_llvm_fpga_push_i1_push52_maxpool2d13(BLACKBOX,92)@2
    // out out_feedback_out_52@20000000
    // out out_feedback_valid_out_52@20000000
    maxpool2d_i_llvm_fpga_push_i1_push52_0 thei_llvm_fpga_push_i1_push52_maxpool2d13 (
        .in_data_in(i_llvm_fpga_pop_i1_pop52_maxpool2d12_out_data_out),
        .in_feedback_stall_in_52(i_llvm_fpga_pop_i1_pop52_maxpool2d12_out_feedback_stall_out_52),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_maxpool2d10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_52(i_llvm_fpga_push_i1_push52_maxpool2d13_out_feedback_out_52),
        .out_feedback_valid_out_52(i_llvm_fpga_push_i1_push52_maxpool2d13_out_feedback_valid_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together145_aunroll_x_in_c0_eni30_3_tpl_1(DELAY,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together145_aunroll_x_in_c0_eni30_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together145_aunroll_x_in_c0_eni30_3_tpl_1_q <= $unsigned(in_c0_eni30_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_pop52_maxpool2d12(BLACKBOX,74)@2
    // out out_feedback_stall_out_52@20000000
    maxpool2d_i_llvm_fpga_pop_i1_pop52_0 thei_llvm_fpga_pop_i1_pop52_maxpool2d12 (
        .in_data_in(redist2_sync_together145_aunroll_x_in_c0_eni30_3_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2284_fanout_adaptor_maxpool2d2_q),
        .in_feedback_in_52(i_llvm_fpga_push_i1_push52_maxpool2d13_out_feedback_out_52),
        .in_feedback_valid_in_52(i_llvm_fpga_push_i1_push52_maxpool2d13_out_feedback_valid_out_52),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop52_maxpool2d12_out_data_out),
        .out_feedback_stall_out_52(i_llvm_fpga_pop_i1_pop52_maxpool2d12_out_feedback_stall_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_keep_going_or_maxpool2d14(LOGICAL,62)@2 + 1
    assign i_keep_going_or_maxpool2d14_qi = i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_maxpool2d10_q | i_llvm_fpga_pop_i1_pop52_maxpool2d12_out_data_out;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_keep_going_or_maxpool2d14_delay ( .xin(i_keep_going_or_maxpool2d14_qi), .xout(i_keep_going_or_maxpool2d14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist41_i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_data_out_2(DELAY,239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_data_out_2_q <= '0;
        end
        else
        begin
            redist41_i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_data_out_2_q <= $unsigned(redist40_i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_data_out_1_q);
        end
    end

    // redist42_i_first_cleanup_xor_maxpool2d7_q_1(DELAY,240)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_first_cleanup_xor_maxpool2d7_q_1_q <= '0;
        end
        else
        begin
            redist42_i_first_cleanup_xor_maxpool2d7_q_1_q <= $unsigned(i_first_cleanup_xor_maxpool2d7_q);
        end
    end

    // valid_fanout_reg1(REG,142)@1 + 1
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

    // valid_fanout_reg2(REG,143)@1 + 1
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

    // i_llvm_fpga_push_i1_forked3157_push50_maxpool2d11(BLACKBOX,85)@2
    // out out_feedback_out_50@20000000
    // out out_feedback_valid_out_50@20000000
    maxpool2d_i_llvm_fpga_push_i1_forked3157_push50_0 thei_llvm_fpga_push_i1_forked3157_push50_maxpool2d11 (
        .in_data_in(i_llvm_fpga_pop_i1_forked3157_pop50_maxpool2d3_out_data_out),
        .in_feedback_stall_in_50(i_llvm_fpga_pop_i1_forked3157_pop50_maxpool2d3_out_feedback_stall_out_50),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_maxpool2d10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_50(i_llvm_fpga_push_i1_forked3157_push50_maxpool2d11_out_feedback_out_50),
        .out_feedback_valid_out_50(i_llvm_fpga_push_i1_forked3157_push50_maxpool2d11_out_feedback_valid_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together145_aunroll_x_in_c0_eni30_1_tpl_1(DELAY,198)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together145_aunroll_x_in_c0_eni30_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together145_aunroll_x_in_c0_eni30_1_tpl_1_q <= $unsigned(in_c0_eni30_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_forked3157_pop50_maxpool2d3(BLACKBOX,69)@2
    // out out_feedback_stall_out_50@20000000
    maxpool2d_i_llvm_fpga_pop_i1_forked3157_pop50_0 thei_llvm_fpga_pop_i1_forked3157_pop50_maxpool2d3 (
        .in_data_in(redist0_sync_together145_aunroll_x_in_c0_eni30_1_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2284_fanout_adaptor_maxpool2d2_q),
        .in_feedback_in_50(i_llvm_fpga_push_i1_forked3157_push50_maxpool2d11_out_feedback_out_50),
        .in_feedback_valid_in_50(i_llvm_fpga_push_i1_forked3157_push50_maxpool2d11_out_feedback_valid_out_50),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked3157_pop50_maxpool2d3_out_data_out),
        .out_feedback_stall_out_50(i_llvm_fpga_pop_i1_forked3157_pop50_maxpool2d3_out_feedback_stall_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_forked13_and_maxpool2d4(LOGICAL,57)@2 + 1
    assign i_forked13_and_maxpool2d4_qi = i_llvm_fpga_fanout_i1_c0_ene2284_fanout_adaptor_maxpool2d2_q & i_llvm_fpga_pop_i1_forked3157_pop50_maxpool2d3_out_data_out;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_forked13_and_maxpool2d4_delay ( .xin(i_forked13_and_maxpool2d4_qi), .xout(i_forked13_and_maxpool2d4_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,139)@3
    assign out_c0_exi32_0_tpl = GND_q;
    assign out_c0_exi32_1_tpl = i_forked13_and_maxpool2d4_q;
    assign out_c0_exi32_2_tpl = redist42_i_first_cleanup_xor_maxpool2d7_q_1_q;
    assign out_c0_exi32_3_tpl = redist41_i_llvm_fpga_pipeline_keep_going_maxpool2d9_out_data_out_2_q;
    assign out_c0_exi32_4_tpl = i_keep_going_or_maxpool2d14_q;
    assign out_c0_exi32_5_tpl = i_unnamed_maxpool2d21_q;
    assign out_c0_exi32_6_tpl = i_arrayidx_maxpool2d0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi32_7_tpl = i_first_cleanup_xor_or_maxpool2d30_q;
    assign out_c0_exi32_8_tpl = i_masked_maxpool2d45_q;
    assign out_c0_exi32_9_tpl = redist32_i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi35_pop42_maxpool2d46_out_data_out_1_q;
    assign out_c0_exi32_10_tpl = redist36_i_llvm_fpga_pop_i1_notcmp2743_pop44_maxpool2d48_out_data_out_1_q;
    assign out_c0_exi32_11_tpl = redist34_i_llvm_fpga_pop_i32_mul2549_pop46_maxpool2d52_out_data_out_1_q;
    assign out_c0_exi32_12_tpl = redist37_i_llvm_fpga_pop_i1_notcmp2352_pop47_maxpool2d54_out_data_out_1_q;
    assign out_c0_exi32_13_tpl = redist38_i_llvm_fpga_pop_i1_notcmp1954_pop48_maxpool2d56_out_data_out_1_q;
    assign out_c0_exi32_14_tpl = redist35_i_llvm_fpga_pop_i32_j_034_pop2056_pop49_maxpool2d58_out_data_out_1_q;
    assign out_c0_exi32_15_tpl = redist39_i_llvm_fpga_pop_i1_notcmp1459_pop53_maxpool2d60_out_data_out_1_q;
    assign out_c0_exi32_16_tpl = redist13_sync_together145_aunroll_x_in_c0_eni30_14_tpl_2_q;
    assign out_c0_exi32_17_tpl = redist14_sync_together145_aunroll_x_in_c0_eni30_15_tpl_2_q;
    assign out_c0_exi32_18_tpl = redist15_sync_together145_aunroll_x_in_c0_eni30_16_tpl_2_q;
    assign out_c0_exi32_19_tpl = redist16_sync_together145_aunroll_x_in_c0_eni30_17_tpl_2_q;
    assign out_c0_exi32_20_tpl = redist17_sync_together145_aunroll_x_in_c0_eni30_18_tpl_2_q;
    assign out_c0_exi32_21_tpl = redist18_sync_together145_aunroll_x_in_c0_eni30_19_tpl_2_q;
    assign out_c0_exi32_22_tpl = redist19_sync_together145_aunroll_x_in_c0_eni30_20_tpl_2_q;
    assign out_c0_exi32_23_tpl = redist20_sync_together145_aunroll_x_in_c0_eni30_21_tpl_2_q;
    assign out_c0_exi32_24_tpl = redist21_sync_together145_aunroll_x_in_c0_eni30_22_tpl_2_q;
    assign out_c0_exi32_25_tpl = redist22_sync_together145_aunroll_x_in_c0_eni30_23_tpl_2_q;
    assign out_c0_exi32_26_tpl = redist23_sync_together145_aunroll_x_in_c0_eni30_24_tpl_2_q;
    assign out_c0_exi32_27_tpl = redist24_sync_together145_aunroll_x_in_c0_eni30_25_tpl_2_q;
    assign out_c0_exi32_28_tpl = redist25_sync_together145_aunroll_x_in_c0_eni30_26_tpl_2_q;
    assign out_c0_exi32_29_tpl = redist26_sync_together145_aunroll_x_in_c0_eni30_27_tpl_2_q;
    assign out_c0_exi32_30_tpl = redist27_sync_together145_aunroll_x_in_c0_eni30_28_tpl_2_q;
    assign out_c0_exi32_31_tpl = redist28_sync_together145_aunroll_x_in_c0_eni30_29_tpl_2_q;
    assign out_c0_exi32_32_tpl = redist29_sync_together145_aunroll_x_in_c0_eni30_30_tpl_2_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_maxpool2d7 = GND_q;

    // i_llvm_fpga_pop_i32_mul46_pop45_maxpool2d50(BLACKBOX,81)@2
    // out out_feedback_stall_out_45@20000000
    maxpool2d_i_llvm_fpga_pop_i32_mul46_pop45_0 thei_llvm_fpga_pop_i32_mul46_pop45_maxpool2d50 (
        .in_data_in(redist7_sync_together145_aunroll_x_in_c0_eni30_8_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2284_fanout_adaptor_maxpool2d2_q),
        .in_feedback_in_45(i_llvm_fpga_push_i32_mul46_push45_maxpool2d51_out_feedback_out_45),
        .in_feedback_valid_in_45(i_llvm_fpga_push_i32_mul46_push45_maxpool2d51_out_feedback_valid_out_45),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul46_pop45_maxpool2d50_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_i32_mul46_pop45_maxpool2d50_out_feedback_stall_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i32_mul46_push45_maxpool2d51(BLACKBOX,99)@2
    // out out_feedback_out_45@20000000
    // out out_feedback_valid_out_45@20000000
    maxpool2d_i_llvm_fpga_push_i32_mul46_push45_0 thei_llvm_fpga_push_i32_mul46_push45_maxpool2d51 (
        .in_data_in(i_llvm_fpga_pop_i32_mul46_pop45_maxpool2d50_out_data_out),
        .in_feedback_stall_in_45(i_llvm_fpga_pop_i32_mul46_pop45_maxpool2d50_out_feedback_stall_out_45),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_maxpool2d10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_45(i_llvm_fpga_push_i32_mul46_push45_maxpool2d51_out_feedback_out_45),
        .out_feedback_valid_out_45(i_llvm_fpga_push_i32_mul46_push45_maxpool2d51_out_feedback_valid_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg19(REG,160)@1 + 1
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

    // valid_fanout_reg20(REG,161)@1 + 1
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

    // redist7_sync_together145_aunroll_x_in_c0_eni30_8_tpl_1(DELAY,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together145_aunroll_x_in_c0_eni30_8_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together145_aunroll_x_in_c0_eni30_8_tpl_1_q <= $unsigned(in_c0_eni30_8_tpl);
        end
    end

endmodule
