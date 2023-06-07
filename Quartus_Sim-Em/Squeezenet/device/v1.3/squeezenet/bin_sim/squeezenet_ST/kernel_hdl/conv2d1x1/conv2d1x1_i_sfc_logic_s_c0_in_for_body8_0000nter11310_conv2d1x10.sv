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

// SystemVerilog created from conv2d1x1_i_sfc_logic_s_c0_in_for_body8_0000nter11310_conv2d1x10
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_logic_s_c0_in_for_body8_0000nter11310_conv2d1x10 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_filter_weight,
    input wire [63:0] in_input_im,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    output wire [0:0] out_c0_exi21_0_tpl,
    output wire [0:0] out_c0_exi21_1_tpl,
    output wire [0:0] out_c0_exi21_2_tpl,
    output wire [31:0] out_c0_exi21_3_tpl,
    output wire [63:0] out_c0_exi21_4_tpl,
    output wire [0:0] out_c0_exi21_5_tpl,
    output wire [63:0] out_c0_exi21_6_tpl,
    output wire [0:0] out_c0_exi21_7_tpl,
    output wire [0:0] out_c0_exi21_8_tpl,
    output wire [31:0] out_c0_exi21_9_tpl,
    output wire [0:0] out_c0_exi21_10_tpl,
    output wire [0:0] out_c0_exi21_11_tpl,
    output wire [0:0] out_c0_exi21_12_tpl,
    output wire [31:0] out_c0_exi21_13_tpl,
    output wire [0:0] out_c0_exi21_14_tpl,
    output wire [0:0] out_c0_exi21_15_tpl,
    output wire [32:0] out_c0_exi21_16_tpl,
    output wire [31:0] out_c0_exi21_17_tpl,
    output wire [31:0] out_c0_exi21_18_tpl,
    output wire [31:0] out_c0_exi21_19_tpl,
    output wire [0:0] out_c0_exi21_20_tpl,
    output wire [31:0] out_c0_exi21_21_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d1x16,
    input wire [0:0] in_c0_eni18_0_tpl,
    input wire [0:0] in_c0_eni18_1_tpl,
    input wire [0:0] in_c0_eni18_2_tpl,
    input wire [31:0] in_c0_eni18_3_tpl,
    input wire [31:0] in_c0_eni18_4_tpl,
    input wire [31:0] in_c0_eni18_5_tpl,
    input wire [0:0] in_c0_eni18_6_tpl,
    input wire [31:0] in_c0_eni18_7_tpl,
    input wire [0:0] in_c0_eni18_8_tpl,
    input wire [0:0] in_c0_eni18_9_tpl,
    input wire [31:0] in_c0_eni18_10_tpl,
    input wire [0:0] in_c0_eni18_11_tpl,
    input wire [0:0] in_c0_eni18_12_tpl,
    input wire [32:0] in_c0_eni18_13_tpl,
    input wire [31:0] in_c0_eni18_14_tpl,
    input wire [31:0] in_c0_eni18_15_tpl,
    input wire [31:0] in_c0_eni18_16_tpl,
    input wire [0:0] in_c0_eni18_17_tpl,
    input wire [31:0] in_c0_eni18_18_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_187_q;
    wire [31:0] c_i32_090_q;
    wire [31:0] c_i32_191_q;
    wire [32:0] c_i33_193_q;
    wire [32:0] c_i33_undef89_q;
    wire [32:0] i_add14_conv2d1x131_a;
    wire [32:0] i_add14_conv2d1x131_b;
    logic [32:0] i_add14_conv2d1x131_o;
    wire [32:0] i_add14_conv2d1x131_q;
    wire [32:0] i_add_conv2d1x124_a;
    wire [32:0] i_add_conv2d1x124_b;
    logic [32:0] i_add_conv2d1x124_o;
    wire [32:0] i_add_conv2d1x124_q;
    wire [1:0] i_arrayidx123_conv2d1x127_vt_const_1_q;
    wire [63:0] i_arrayidx123_conv2d1x127_vt_join_q;
    wire [61:0] i_arrayidx123_conv2d1x127_vt_select_63_b;
    wire [63:0] i_arrayidx164_conv2d1x134_vt_join_q;
    wire [61:0] i_arrayidx164_conv2d1x134_vt_select_63_b;
    wire [1:0] i_cleanups_shl_conv2d1x15_vt_join_q;
    wire [0:0] i_cleanups_shl_conv2d1x15_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_conv2d1x14_q;
    wire [0:0] i_first_cleanup_xor_or_conv2d1x128_q;
    wire [33:0] i_fpga_indvars_iv_next_conv2d1x139_a;
    wire [33:0] i_fpga_indvars_iv_next_conv2d1x139_b;
    logic [33:0] i_fpga_indvars_iv_next_conv2d1x139_o;
    wire [33:0] i_fpga_indvars_iv_next_conv2d1x139_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_conv2d1x114_s;
    reg [32:0] i_fpga_indvars_iv_replace_phi_conv2d1x114_q;
    wire [32:0] i_inc_conv2d1x135_a;
    wire [32:0] i_inc_conv2d1x135_b;
    logic [32:0] i_inc_conv2d1x135_o;
    wire [32:0] i_inc_conv2d1x135_q;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x114_conv2d1x112_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1737_pop30_conv2d1x154_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1737_pop30_conv2d1x154_out_feedback_stall_out_30;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2236_pop29_conv2d1x152_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2236_pop29_conv2d1x152_out_feedback_stall_out_29;
    wire [0:0] i_llvm_fpga_pop_i1_pop24_conv2d1x115_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop24_conv2d1x115_out_feedback_stall_out_24;
    wire [0:0] i_llvm_fpga_pop_i1_pop25_conv2d1x148_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop25_conv2d1x148_out_feedback_stall_out_25;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop22_conv2d1x12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop22_conv2d1x12_out_feedback_stall_out_22;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop21_conv2d1x17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop21_conv2d1x17_out_feedback_stall_out_21;
    wire [31:0] i_llvm_fpga_pop_i32_ij_028_pop1038_pop31_conv2d1x122_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_ij_028_pop1038_pop31_conv2d1x122_out_feedback_stall_out_31;
    wire [31:0] i_llvm_fpga_pop_i32_k_026_pop19_conv2d1x118_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_026_pop19_conv2d1x118_out_feedback_stall_out_19;
    wire [31:0] i_llvm_fpga_pop_i32_mul1332_pop27_conv2d1x129_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul1332_pop27_conv2d1x129_out_feedback_stall_out_27;
    wire [31:0] i_llvm_fpga_pop_i32_mul2334_pop28_conv2d1x150_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul2334_pop28_conv2d1x150_out_feedback_stall_out_28;
    wire [31:0] i_llvm_fpga_pop_i32_mul28_pop23_conv2d1x119_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul28_pop23_conv2d1x119_out_feedback_stall_out_23;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop18_conv2d1x113_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop18_conv2d1x113_out_feedback_stall_out_18;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_conv2d1x111_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_conv2d1x111_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1737_push30_conv2d1x155_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1737_push30_conv2d1x155_out_feedback_valid_out_30;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2236_push29_conv2d1x153_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2236_push29_conv2d1x153_out_feedback_valid_out_29;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_conv2d1x143_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_conv2d1x143_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_push24_conv2d1x116_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i1_push24_conv2d1x116_out_feedback_valid_out_24;
    wire [0:0] i_llvm_fpga_push_i1_push25_conv2d1x149_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i1_push25_conv2d1x149_out_feedback_valid_out_25;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push22_conv2d1x146_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push22_conv2d1x146_out_feedback_valid_out_22;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push21_conv2d1x19_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push21_conv2d1x19_out_feedback_valid_out_21;
    wire [31:0] i_llvm_fpga_push_i32_ij_028_pop1038_push31_conv2d1x123_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i32_ij_028_pop1038_push31_conv2d1x123_out_feedback_valid_out_31;
    wire [31:0] i_llvm_fpga_push_i32_k_026_push19_conv2d1x136_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i32_k_026_push19_conv2d1x136_out_feedback_valid_out_19;
    wire [31:0] i_llvm_fpga_push_i32_mul1332_push27_conv2d1x130_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i32_mul1332_push27_conv2d1x130_out_feedback_valid_out_27;
    wire [31:0] i_llvm_fpga_push_i32_mul2334_push28_conv2d1x151_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i32_mul2334_push28_conv2d1x151_out_feedback_valid_out_28;
    wire [31:0] i_llvm_fpga_push_i32_mul28_push23_conv2d1x120_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i32_mul28_push23_conv2d1x120_out_feedback_valid_out_23;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push18_conv2d1x140_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push18_conv2d1x140_out_feedback_valid_out_18;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d1x133_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d1x133_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d1x133_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d1x133_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x126_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x126_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x126_vt_select_63_b;
    wire [0:0] i_masked_conv2d1x147_q;
    wire [0:0] i_next_cleanups_conv2d1x145_s;
    reg [1:0] i_next_cleanups_conv2d1x145_q;
    wire [1:0] i_next_initerations_conv2d1x18_vt_join_q;
    wire [0:0] i_next_initerations_conv2d1x18_vt_select_0_b;
    wire [0:0] i_notcmp_conv2d1x142_q;
    wire [0:0] i_or_conv2d1x144_q;
    wire [0:0] i_unnamed_conv2d1x117_q;
    wire [0:0] i_unnamed_conv2d1x141_q;
    wire [31:0] bgTrunc_i_add14_conv2d1x131_sel_x_b;
    wire [31:0] bgTrunc_i_add_conv2d1x124_sel_x_b;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_conv2d1x139_sel_x_b;
    wire [31:0] bgTrunc_i_inc_conv2d1x135_sel_x_b;
    wire [63:0] bgTrunc_i_mul10_conv2d1x121_sel_x_in;
    wire [31:0] bgTrunc_i_mul10_conv2d1x121_sel_x_b;
    wire [64:0] i_arrayidx123_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx123_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx123_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx123_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx123_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx123_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx123_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx164_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx164_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx164_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx164_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx164_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx164_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx164_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_conv2d1x13_sel_x_b;
    wire [63:0] i_idxprom11_conv2d1x125_sel_x_b;
    wire [63:0] i_idxprom15_conv2d1x132_sel_x_b;
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
    wire [0:0] i_exitcond_conv2d1x137_cmp_nsign_q;
    wire [63:0] i_mul10_conv2d1x121_sums_join_0_q;
    wire [50:0] i_mul10_conv2d1x121_sums_align_1_q;
    wire [50:0] i_mul10_conv2d1x121_sums_align_1_qint;
    wire [64:0] i_mul10_conv2d1x121_sums_result_add_0_0_a;
    wire [64:0] i_mul10_conv2d1x121_sums_result_add_0_0_b;
    logic [64:0] i_mul10_conv2d1x121_sums_result_add_0_0_o;
    wire [64:0] i_mul10_conv2d1x121_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid208_i_cleanups_shl_conv2d1x10_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid208_i_cleanups_shl_conv2d1x10_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid209_i_cleanups_shl_conv2d1x10_shift_x_q;
    wire [0:0] leftShiftStage0_uid211_i_cleanups_shl_conv2d1x10_shift_x_s;
    reg [1:0] leftShiftStage0_uid211_i_cleanups_shl_conv2d1x10_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid215_i_next_initerations_conv2d1x10_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid217_i_next_initerations_conv2d1x10_shift_x_q;
    wire [0:0] rightShiftStage0_uid219_i_next_initerations_conv2d1x10_shift_x_s;
    reg [1:0] rightShiftStage0_uid219_i_next_initerations_conv2d1x10_shift_x_q;
    wire i_mul10_conv2d1x121_im0_cma_reset;
    wire [13:0] i_mul10_conv2d1x121_im0_cma_a0;
    wire [13:0] i_mul10_conv2d1x121_im0_cma_c0;
    wire [27:0] i_mul10_conv2d1x121_im0_cma_s0;
    wire [27:0] i_mul10_conv2d1x121_im0_cma_qq;
    wire [27:0] i_mul10_conv2d1x121_im0_cma_q;
    wire i_mul10_conv2d1x121_im0_cma_ena0;
    wire i_mul10_conv2d1x121_im0_cma_ena1;
    wire i_mul10_conv2d1x121_im0_cma_ena2;
    wire i_mul10_conv2d1x121_im8_cma_reset;
    wire [17:0] i_mul10_conv2d1x121_im8_cma_a0;
    wire [17:0] i_mul10_conv2d1x121_im8_cma_c0;
    wire [35:0] i_mul10_conv2d1x121_im8_cma_s0;
    wire [35:0] i_mul10_conv2d1x121_im8_cma_qq;
    wire [35:0] i_mul10_conv2d1x121_im8_cma_q;
    wire i_mul10_conv2d1x121_im8_cma_ena0;
    wire i_mul10_conv2d1x121_im8_cma_ena1;
    wire i_mul10_conv2d1x121_im8_cma_ena2;
    wire i_mul10_conv2d1x121_ma3_cma_reset;
    wire [13:0] i_mul10_conv2d1x121_ma3_cma_a0;
    wire [17:0] i_mul10_conv2d1x121_ma3_cma_c0;
    wire [13:0] i_mul10_conv2d1x121_ma3_cma_a1;
    wire [17:0] i_mul10_conv2d1x121_ma3_cma_c1;
    wire [32:0] i_mul10_conv2d1x121_ma3_cma_s0;
    wire [32:0] i_mul10_conv2d1x121_ma3_cma_qq;
    wire [32:0] i_mul10_conv2d1x121_ma3_cma_q;
    wire i_mul10_conv2d1x121_ma3_cma_ena0;
    wire i_mul10_conv2d1x121_ma3_cma_ena1;
    wire i_mul10_conv2d1x121_ma3_cma_ena2;
    wire [13:0] i_mul10_conv2d1x121_bs2_merged_bit_select_b;
    wire [17:0] i_mul10_conv2d1x121_bs2_merged_bit_select_c;
    wire [13:0] i_mul10_conv2d1x121_bs1_merged_bit_select_b;
    wire [17:0] i_mul10_conv2d1x121_bs1_merged_bit_select_c;
    reg [0:0] redist0_sync_together127_aunroll_x_in_c0_eni18_1_tpl_1_q;
    reg [0:0] redist1_sync_together127_aunroll_x_in_c0_eni18_1_tpl_3_q;
    reg [0:0] redist1_sync_together127_aunroll_x_in_c0_eni18_1_tpl_3_delay_0;
    reg [0:0] redist2_sync_together127_aunroll_x_in_c0_eni18_1_tpl_4_q;
    reg [0:0] redist3_sync_together127_aunroll_x_in_c0_eni18_1_tpl_5_q;
    reg [0:0] redist4_sync_together127_aunroll_x_in_c0_eni18_2_tpl_5_q;
    reg [0:0] redist4_sync_together127_aunroll_x_in_c0_eni18_2_tpl_5_delay_0;
    reg [0:0] redist4_sync_together127_aunroll_x_in_c0_eni18_2_tpl_5_delay_1;
    reg [0:0] redist4_sync_together127_aunroll_x_in_c0_eni18_2_tpl_5_delay_2;
    reg [0:0] redist4_sync_together127_aunroll_x_in_c0_eni18_2_tpl_5_delay_3;
    reg [31:0] redist5_sync_together127_aunroll_x_in_c0_eni18_3_tpl_1_q;
    reg [0:0] redist8_sync_together127_aunroll_x_in_c0_eni18_6_tpl_1_q;
    reg [31:0] redist9_sync_together127_aunroll_x_in_c0_eni18_7_tpl_1_q;
    reg [0:0] redist10_sync_together127_aunroll_x_in_c0_eni18_8_tpl_5_q;
    reg [0:0] redist10_sync_together127_aunroll_x_in_c0_eni18_8_tpl_5_delay_0;
    reg [0:0] redist10_sync_together127_aunroll_x_in_c0_eni18_8_tpl_5_delay_1;
    reg [0:0] redist10_sync_together127_aunroll_x_in_c0_eni18_8_tpl_5_delay_2;
    reg [0:0] redist10_sync_together127_aunroll_x_in_c0_eni18_8_tpl_5_delay_3;
    reg [0:0] redist11_sync_together127_aunroll_x_in_c0_eni18_9_tpl_5_q;
    reg [0:0] redist11_sync_together127_aunroll_x_in_c0_eni18_9_tpl_5_delay_0;
    reg [0:0] redist11_sync_together127_aunroll_x_in_c0_eni18_9_tpl_5_delay_1;
    reg [0:0] redist11_sync_together127_aunroll_x_in_c0_eni18_9_tpl_5_delay_2;
    reg [0:0] redist11_sync_together127_aunroll_x_in_c0_eni18_9_tpl_5_delay_3;
    reg [0:0] redist13_sync_together127_aunroll_x_in_c0_eni18_11_tpl_5_q;
    reg [0:0] redist13_sync_together127_aunroll_x_in_c0_eni18_11_tpl_5_delay_0;
    reg [0:0] redist13_sync_together127_aunroll_x_in_c0_eni18_11_tpl_5_delay_1;
    reg [0:0] redist13_sync_together127_aunroll_x_in_c0_eni18_11_tpl_5_delay_2;
    reg [0:0] redist13_sync_together127_aunroll_x_in_c0_eni18_11_tpl_5_delay_3;
    reg [0:0] redist14_sync_together127_aunroll_x_in_c0_eni18_12_tpl_5_q;
    reg [0:0] redist14_sync_together127_aunroll_x_in_c0_eni18_12_tpl_5_delay_0;
    reg [0:0] redist14_sync_together127_aunroll_x_in_c0_eni18_12_tpl_5_delay_1;
    reg [0:0] redist14_sync_together127_aunroll_x_in_c0_eni18_12_tpl_5_delay_2;
    reg [0:0] redist14_sync_together127_aunroll_x_in_c0_eni18_12_tpl_5_delay_3;
    reg [0:0] redist19_sync_together127_aunroll_x_in_c0_eni18_17_tpl_5_q;
    reg [0:0] redist19_sync_together127_aunroll_x_in_c0_eni18_17_tpl_5_delay_0;
    reg [0:0] redist19_sync_together127_aunroll_x_in_c0_eni18_17_tpl_5_delay_1;
    reg [0:0] redist19_sync_together127_aunroll_x_in_c0_eni18_17_tpl_5_delay_2;
    reg [0:0] redist19_sync_together127_aunroll_x_in_c0_eni18_17_tpl_5_delay_3;
    reg [0:0] redist21_sync_together127_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist21_sync_together127_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist22_sync_together127_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist23_sync_together127_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist24_sync_together127_aunroll_x_in_i_valid_5_q;
    reg [31:0] redist25_bgTrunc_i_mul10_conv2d1x121_sel_x_b_1_q;
    reg [31:0] redist26_bgTrunc_i_add14_conv2d1x131_sel_x_b_2_q;
    reg [31:0] redist26_bgTrunc_i_add14_conv2d1x131_sel_x_b_2_delay_0;
    reg [31:0] redist27_i_llvm_fpga_pop_i32_mul28_pop23_conv2d1x119_out_data_out_2_q;
    reg [31:0] redist27_i_llvm_fpga_pop_i32_mul28_pop23_conv2d1x119_out_data_out_2_delay_0;
    reg [31:0] redist28_i_llvm_fpga_pop_i32_mul2334_pop28_conv2d1x150_out_data_out_2_q;
    reg [31:0] redist28_i_llvm_fpga_pop_i32_mul2334_pop28_conv2d1x150_out_data_out_2_delay_0;
    reg [31:0] redist29_i_llvm_fpga_pop_i32_mul2334_pop28_conv2d1x150_out_data_out_4_q;
    reg [31:0] redist29_i_llvm_fpga_pop_i32_mul2334_pop28_conv2d1x150_out_data_out_4_delay_0;
    reg [31:0] redist30_i_llvm_fpga_pop_i32_k_026_pop19_conv2d1x118_out_data_out_2_q;
    reg [31:0] redist30_i_llvm_fpga_pop_i32_k_026_pop19_conv2d1x118_out_data_out_2_delay_0;
    reg [31:0] redist31_i_llvm_fpga_pop_i32_ij_028_pop1038_pop31_conv2d1x122_out_data_out_1_q;
    reg [0:0] redist32_i_llvm_fpga_pop_i1_pop25_conv2d1x148_out_data_out_4_q;
    reg [0:0] redist32_i_llvm_fpga_pop_i1_pop25_conv2d1x148_out_data_out_4_delay_0;
    reg [0:0] redist32_i_llvm_fpga_pop_i1_pop25_conv2d1x148_out_data_out_4_delay_1;
    reg [0:0] redist32_i_llvm_fpga_pop_i1_pop25_conv2d1x148_out_data_out_4_delay_2;
    reg [0:0] redist33_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_q;
    reg [0:0] redist33_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_delay_0;
    wire redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_mem_reset0;
    wire [31:0] redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_mem_ia;
    wire [1:0] redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_mem_aa;
    wire [1:0] redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_mem_ab;
    wire [31:0] redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_mem_iq;
    wire [31:0] redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_mem_q;
    wire [1:0] redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_rdcnt_i;
    (* preserve *) reg redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_rdcnt_eq;
    reg [1:0] redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_wraddr_q;
    wire [1:0] redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_mem_last_q;
    wire [0:0] redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_cmpReg_q;
    wire [0:0] redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_notEnable_q;
    wire [0:0] redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_sticky_ena_q;
    wire [0:0] redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_enaAnd_q;
    wire redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_mem_reset0;
    wire [31:0] redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_mem_ia;
    wire [0:0] redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_mem_aa;
    wire [0:0] redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_mem_ab;
    wire [31:0] redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_mem_iq;
    wire [31:0] redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_mem_q;
    wire [0:0] redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_rdcnt_i;
    reg [0:0] redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_cmpReg_q;
    wire [0:0] redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_notEnable_q;
    wire [0:0] redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_sticky_ena_q;
    wire [0:0] redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_enaAnd_q;
    wire redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_mem_reset0;
    wire [31:0] redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_mem_ia;
    wire [1:0] redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_mem_aa;
    wire [1:0] redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_mem_ab;
    wire [31:0] redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_mem_iq;
    wire [31:0] redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_mem_q;
    wire [1:0] redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_i;
    reg [1:0] redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_wraddr_q;
    wire [2:0] redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_mem_last_q;
    wire [2:0] redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_cmp_b;
    wire [0:0] redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_cmpReg_q;
    wire [0:0] redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_notEnable_q;
    wire [0:0] redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_sticky_ena_q;
    wire [0:0] redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_enaAnd_q;
    wire redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_mem_reset0;
    wire [32:0] redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_mem_ia;
    wire [1:0] redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_mem_aa;
    wire [1:0] redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_mem_ab;
    wire [32:0] redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_mem_iq;
    wire [32:0] redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_mem_q;
    wire [1:0] redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_rdcnt_i;
    reg [1:0] redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_wraddr_q;
    wire [2:0] redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_mem_last_q;
    wire [2:0] redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_cmp_b;
    wire [0:0] redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_cmpReg_q;
    wire [0:0] redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_notEnable_q;
    wire [0:0] redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_sticky_ena_q;
    wire [0:0] redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_enaAnd_q;
    wire redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_mem_reset0;
    wire [31:0] redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_mem_ia;
    wire [1:0] redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_mem_aa;
    wire [1:0] redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_mem_ab;
    wire [31:0] redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_mem_iq;
    wire [31:0] redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_mem_q;
    wire [1:0] redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_rdcnt_i;
    reg [1:0] redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_wraddr_q;
    wire [2:0] redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_mem_last_q;
    wire [2:0] redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_cmp_b;
    wire [0:0] redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_cmpReg_q;
    wire [0:0] redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_notEnable_q;
    wire [0:0] redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_sticky_ena_q;
    wire [0:0] redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_enaAnd_q;
    wire redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_mem_reset0;
    wire [31:0] redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_mem_ia;
    wire [1:0] redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_mem_aa;
    wire [1:0] redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_mem_ab;
    wire [31:0] redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_mem_iq;
    wire [31:0] redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_mem_q;
    wire [1:0] redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_rdcnt_i;
    reg [1:0] redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_wraddr_q;
    wire [2:0] redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_mem_last_q;
    wire [2:0] redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_cmp_b;
    wire [0:0] redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_cmpReg_q;
    wire [0:0] redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_notEnable_q;
    wire [0:0] redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_sticky_ena_q;
    wire [0:0] redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_enaAnd_q;
    wire redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_mem_reset0;
    wire [31:0] redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_mem_ia;
    wire [1:0] redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_mem_aa;
    wire [1:0] redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_mem_ab;
    wire [31:0] redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_mem_iq;
    wire [31:0] redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_mem_q;
    wire [1:0] redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_i;
    reg [1:0] redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_wraddr_q;
    wire [2:0] redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_mem_last_q;
    wire [2:0] redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_cmp_b;
    wire [0:0] redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_cmpReg_q;
    wire [0:0] redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_notEnable_q;
    wire [0:0] redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_sticky_ena_q;
    wire [0:0] redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_enaAnd_q;
    wire redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_mem_reset0;
    wire [31:0] redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_mem_ia;
    wire [1:0] redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_mem_aa;
    wire [1:0] redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_mem_ab;
    wire [31:0] redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_mem_iq;
    wire [31:0] redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_mem_q;
    wire [1:0] redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_rdcnt_i;
    reg [1:0] redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_wraddr_q;
    wire [2:0] redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_mem_last_q;
    wire [2:0] redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_cmp_b;
    wire [0:0] redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_cmpReg_q;
    wire [0:0] redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_notEnable_q;
    wire [0:0] redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_sticky_ena_q;
    wire [0:0] redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist21_sync_together127_aunroll_x_in_i_valid_2(DELAY,246)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together127_aunroll_x_in_i_valid_2_delay_0 <= '0;
            redist21_sync_together127_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist21_sync_together127_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
            redist21_sync_together127_aunroll_x_in_i_valid_2_q <= redist21_sync_together127_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist22_sync_together127_aunroll_x_in_i_valid_3(DELAY,247)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together127_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist22_sync_together127_aunroll_x_in_i_valid_3_q <= $unsigned(redist21_sync_together127_aunroll_x_in_i_valid_2_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist23_sync_together127_aunroll_x_in_i_valid_4(DELAY,248)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together127_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist23_sync_together127_aunroll_x_in_i_valid_4_q <= $unsigned(redist22_sync_together127_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist24_sync_together127_aunroll_x_in_i_valid_5(DELAY,249)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together127_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist24_sync_together127_aunroll_x_in_i_valid_5_q <= $unsigned(redist23_sync_together127_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist33_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2(DELAY,258)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_delay_0 <= '0;
            redist33_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_q <= '0;
        end
        else
        begin
            redist33_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out);
            redist33_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_q <= redist33_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_delay_0;
        end
    end

    // leftShiftStage0Idx1Rng1_uid208_i_cleanups_shl_conv2d1x10_shift_x(BITSELECT,207)@6
    assign leftShiftStage0Idx1Rng1_uid208_i_cleanups_shl_conv2d1x10_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop22_conv2d1x12_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid208_i_cleanups_shl_conv2d1x10_shift_x_b = leftShiftStage0Idx1Rng1_uid208_i_cleanups_shl_conv2d1x10_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid209_i_cleanups_shl_conv2d1x10_shift_x(BITJOIN,208)@6
    assign leftShiftStage0Idx1_uid209_i_cleanups_shl_conv2d1x10_shift_x_q = {leftShiftStage0Idx1Rng1_uid208_i_cleanups_shl_conv2d1x10_shift_x_b, GND_q};

    // leftShiftStage0_uid211_i_cleanups_shl_conv2d1x10_shift_x(MUX,210)@6
    assign leftShiftStage0_uid211_i_cleanups_shl_conv2d1x10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid211_i_cleanups_shl_conv2d1x10_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop22_conv2d1x12_out_data_out or leftShiftStage0Idx1_uid209_i_cleanups_shl_conv2d1x10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid211_i_cleanups_shl_conv2d1x10_shift_x_s)
            1'b0 : leftShiftStage0_uid211_i_cleanups_shl_conv2d1x10_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop22_conv2d1x12_out_data_out;
            1'b1 : leftShiftStage0_uid211_i_cleanups_shl_conv2d1x10_shift_x_q = leftShiftStage0Idx1_uid209_i_cleanups_shl_conv2d1x10_shift_x_q;
            default : leftShiftStage0_uid211_i_cleanups_shl_conv2d1x10_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_conv2d1x15_vt_select_1(BITSELECT,54)@6
    assign i_cleanups_shl_conv2d1x15_vt_select_1_b = leftShiftStage0_uid211_i_cleanups_shl_conv2d1x10_shift_x_q[1:1];

    // i_cleanups_shl_conv2d1x15_vt_join(BITJOIN,53)@6
    assign i_cleanups_shl_conv2d1x15_vt_join_q = {i_cleanups_shl_conv2d1x15_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_conv2d1x14(LOGICAL,57)@6
    assign i_first_cleanup_xor_conv2d1x14_q = i_first_cleanup_conv2d1x13_sel_x_b ^ VCC_q;

    // i_notcmp_conv2d1x142(LOGICAL,109)@6
    assign i_notcmp_conv2d1x142_q = i_unnamed_conv2d1x141_q ^ VCC_q;

    // i_or_conv2d1x144(LOGICAL,110)@6
    assign i_or_conv2d1x144_q = i_notcmp_conv2d1x142_q | i_first_cleanup_xor_conv2d1x14_q;

    // i_next_cleanups_conv2d1x145(MUX,105)@6
    assign i_next_cleanups_conv2d1x145_s = i_or_conv2d1x144_q;
    always @(i_next_cleanups_conv2d1x145_s or i_llvm_fpga_pop_i2_cleanups_pop22_conv2d1x12_out_data_out or i_cleanups_shl_conv2d1x15_vt_join_q)
    begin
        unique case (i_next_cleanups_conv2d1x145_s)
            1'b0 : i_next_cleanups_conv2d1x145_q = i_llvm_fpga_pop_i2_cleanups_pop22_conv2d1x12_out_data_out;
            1'b1 : i_next_cleanups_conv2d1x145_q = i_cleanups_shl_conv2d1x15_vt_join_q;
            default : i_next_cleanups_conv2d1x145_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push22_conv2d1x146(BLACKBOX,87)@6
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    conv2d1x1_i_llvm_fpga_push_i2_cleanups_push22_0 thei_llvm_fpga_push_i2_cleanups_push22_conv2d1x146 (
        .in_data_in(i_next_cleanups_conv2d1x145_q),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i2_cleanups_pop22_conv2d1x12_out_feedback_stall_out_22),
        .in_keep_going(redist33_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist24_sync_together127_aunroll_x_in_i_valid_5_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i2_cleanups_push22_conv2d1x146_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i2_cleanups_push22_conv2d1x146_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together127_aunroll_x_in_c0_eni18_1_tpl_4(DELAY,227)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together127_aunroll_x_in_c0_eni18_1_tpl_4_q <= '0;
        end
        else
        begin
            redist2_sync_together127_aunroll_x_in_c0_eni18_1_tpl_4_q <= $unsigned(redist1_sync_together127_aunroll_x_in_c0_eni18_1_tpl_3_q);
        end
    end

    // redist3_sync_together127_aunroll_x_in_c0_eni18_1_tpl_5(DELAY,228)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together127_aunroll_x_in_c0_eni18_1_tpl_5_q <= '0;
        end
        else
        begin
            redist3_sync_together127_aunroll_x_in_c0_eni18_1_tpl_5_q <= $unsigned(redist2_sync_together127_aunroll_x_in_c0_eni18_1_tpl_4_q);
        end
    end

    // c_i2_187(CONSTANT,38)
    assign c_i2_187_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop22_conv2d1x12(BLACKBOX,73)@6
    // out out_feedback_stall_out_22@20000000
    conv2d1x1_i_llvm_fpga_pop_i2_cleanups_pop22_0 thei_llvm_fpga_pop_i2_cleanups_pop22_conv2d1x12 (
        .in_data_in(c_i2_187_q),
        .in_dir(redist3_sync_together127_aunroll_x_in_c0_eni18_1_tpl_5_q),
        .in_feedback_in_22(i_llvm_fpga_push_i2_cleanups_push22_conv2d1x146_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i2_cleanups_push22_conv2d1x146_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist24_sync_together127_aunroll_x_in_i_valid_5_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop22_conv2d1x12_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i2_cleanups_pop22_conv2d1x12_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_conv2d1x13_sel_x(BITSELECT,144)@6
    assign i_first_cleanup_conv2d1x13_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop22_conv2d1x12_out_data_out[0:0];

    // i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x114_conv2d1x112(BLACKBOX,67)@6
    conv2d1x1_i_llvm_fpga_ffwd_dest_i33_unnamed_14_conv2d1x10 thei_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x114_conv2d1x112 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist24_sync_together127_aunroll_x_in_i_valid_5_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x114_conv2d1x112_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_193(CONSTANT,41)
    assign c_i33_193_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_conv2d1x139(ADD,59)@6
    assign i_fpga_indvars_iv_next_conv2d1x139_a = {1'b0, i_fpga_indvars_iv_replace_phi_conv2d1x114_q};
    assign i_fpga_indvars_iv_next_conv2d1x139_b = {1'b0, c_i33_193_q};
    assign i_fpga_indvars_iv_next_conv2d1x139_o = $unsigned(i_fpga_indvars_iv_next_conv2d1x139_a) + $unsigned(i_fpga_indvars_iv_next_conv2d1x139_b);
    assign i_fpga_indvars_iv_next_conv2d1x139_q = i_fpga_indvars_iv_next_conv2d1x139_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_conv2d1x139_sel_x(BITSELECT,123)@6
    assign bgTrunc_i_fpga_indvars_iv_next_conv2d1x139_sel_x_b = i_fpga_indvars_iv_next_conv2d1x139_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push18_conv2d1x140(BLACKBOX,94)@6
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    conv2d1x1_i_llvm_fpga_push_i33_fpga_indvars_iv_push18_0 thei_llvm_fpga_push_i33_fpga_indvars_iv_push18_conv2d1x140 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_conv2d1x139_sel_x_b),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop18_conv2d1x113_out_feedback_stall_out_18),
        .in_keep_going(redist33_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist24_sync_together127_aunroll_x_in_i_valid_5_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i33_fpga_indvars_iv_push18_conv2d1x140_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i33_fpga_indvars_iv_push18_conv2d1x140_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef89(CONSTANT,42)
    assign c_i33_undef89_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop18_conv2d1x113(BLACKBOX,80)@6
    // out out_feedback_stall_out_18@20000000
    conv2d1x1_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop18_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv_pop18_conv2d1x113 (
        .in_data_in(c_i33_undef89_q),
        .in_dir(redist3_sync_together127_aunroll_x_in_c0_eni18_1_tpl_5_q),
        .in_feedback_in_18(i_llvm_fpga_push_i33_fpga_indvars_iv_push18_conv2d1x140_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i33_fpga_indvars_iv_push18_conv2d1x140_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist24_sync_together127_aunroll_x_in_i_valid_5_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop18_conv2d1x113_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop18_conv2d1x113_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv_replace_phi_conv2d1x114(MUX,60)@6
    assign i_fpga_indvars_iv_replace_phi_conv2d1x114_s = redist3_sync_together127_aunroll_x_in_c0_eni18_1_tpl_5_q;
    always @(i_fpga_indvars_iv_replace_phi_conv2d1x114_s or i_llvm_fpga_pop_i33_fpga_indvars_iv_pop18_conv2d1x113_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x114_conv2d1x112_out_dest_data_out_3_0)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_conv2d1x114_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_conv2d1x114_q = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop18_conv2d1x113_out_data_out;
            1'b1 : i_fpga_indvars_iv_replace_phi_conv2d1x114_q = i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x114_conv2d1x112_out_dest_data_out_3_0;
            default : i_fpga_indvars_iv_replace_phi_conv2d1x114_q = 33'b0;
        endcase
    end

    // i_exitcond_conv2d1x137_cmp_nsign(LOGICAL,188)@6
    assign i_exitcond_conv2d1x137_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv_replace_phi_conv2d1x114_q[32:32]));

    // i_llvm_fpga_push_i1_push24_conv2d1x116(BLACKBOX,85)@6
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    conv2d1x1_i_llvm_fpga_push_i1_push24_0 thei_llvm_fpga_push_i1_push24_conv2d1x116 (
        .in_data_in(i_llvm_fpga_pop_i1_pop24_conv2d1x115_out_data_out),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i1_pop24_conv2d1x115_out_feedback_stall_out_24),
        .in_keep_going(redist33_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist24_sync_together127_aunroll_x_in_i_valid_5_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i1_push24_conv2d1x116_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i1_push24_conv2d1x116_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together127_aunroll_x_in_c0_eni18_2_tpl_5(DELAY,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together127_aunroll_x_in_c0_eni18_2_tpl_5_delay_0 <= '0;
            redist4_sync_together127_aunroll_x_in_c0_eni18_2_tpl_5_delay_1 <= '0;
            redist4_sync_together127_aunroll_x_in_c0_eni18_2_tpl_5_delay_2 <= '0;
            redist4_sync_together127_aunroll_x_in_c0_eni18_2_tpl_5_delay_3 <= '0;
            redist4_sync_together127_aunroll_x_in_c0_eni18_2_tpl_5_q <= '0;
        end
        else
        begin
            redist4_sync_together127_aunroll_x_in_c0_eni18_2_tpl_5_delay_0 <= $unsigned(in_c0_eni18_2_tpl);
            redist4_sync_together127_aunroll_x_in_c0_eni18_2_tpl_5_delay_1 <= redist4_sync_together127_aunroll_x_in_c0_eni18_2_tpl_5_delay_0;
            redist4_sync_together127_aunroll_x_in_c0_eni18_2_tpl_5_delay_2 <= redist4_sync_together127_aunroll_x_in_c0_eni18_2_tpl_5_delay_1;
            redist4_sync_together127_aunroll_x_in_c0_eni18_2_tpl_5_delay_3 <= redist4_sync_together127_aunroll_x_in_c0_eni18_2_tpl_5_delay_2;
            redist4_sync_together127_aunroll_x_in_c0_eni18_2_tpl_5_q <= redist4_sync_together127_aunroll_x_in_c0_eni18_2_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_pop_i1_pop24_conv2d1x115(BLACKBOX,71)@6
    // out out_feedback_stall_out_24@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_pop24_0 thei_llvm_fpga_pop_i1_pop24_conv2d1x115 (
        .in_data_in(redist4_sync_together127_aunroll_x_in_c0_eni18_2_tpl_5_q),
        .in_dir(redist3_sync_together127_aunroll_x_in_c0_eni18_1_tpl_5_q),
        .in_feedback_in_24(i_llvm_fpga_push_i1_push24_conv2d1x116_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i1_push24_conv2d1x116_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist24_sync_together127_aunroll_x_in_i_valid_5_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop24_conv2d1x115_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i1_pop24_conv2d1x115_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d1x141(LOGICAL,112)@6
    assign i_unnamed_conv2d1x141_q = i_llvm_fpga_pop_i1_pop24_conv2d1x115_out_data_out & i_exitcond_conv2d1x137_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_conv2d1x143(BLACKBOX,84)@6
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    conv2d1x1_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_conv2d1x143 (
        .in_data_in(i_unnamed_conv2d1x141_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_conv2d1x13_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist24_sync_together127_aunroll_x_in_i_valid_5_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_conv2d1x143_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_conv2d1x143_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,157)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist23_sync_together127_aunroll_x_in_i_valid_4_q);
        end
    end

    // rightShiftStage0Idx1Rng1_uid215_i_next_initerations_conv2d1x10_shift_x(BITSELECT,214)@6
    assign rightShiftStage0Idx1Rng1_uid215_i_next_initerations_conv2d1x10_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop21_conv2d1x17_out_data_out[1:1];

    // rightShiftStage0Idx1_uid217_i_next_initerations_conv2d1x10_shift_x(BITJOIN,216)@6
    assign rightShiftStage0Idx1_uid217_i_next_initerations_conv2d1x10_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid215_i_next_initerations_conv2d1x10_shift_x_b};

    // valid_fanout_reg1(REG,155)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist23_sync_together127_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg2(REG,156)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist23_sync_together127_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i2_initerations_push21_conv2d1x19(BLACKBOX,88)@6
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    conv2d1x1_i_llvm_fpga_push_i2_initerations_push21_0 thei_llvm_fpga_push_i2_initerations_push21_conv2d1x19 (
        .in_data_in(i_next_initerations_conv2d1x18_vt_join_q),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i2_initerations_pop21_conv2d1x17_out_feedback_stall_out_21),
        .in_keep_going(redist33_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i2_initerations_push21_conv2d1x19_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i2_initerations_push21_conv2d1x19_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop21_conv2d1x17(BLACKBOX,74)@6
    // out out_feedback_stall_out_21@20000000
    conv2d1x1_i_llvm_fpga_pop_i2_initerations_pop21_0 thei_llvm_fpga_pop_i2_initerations_pop21_conv2d1x17 (
        .in_data_in(c_i2_187_q),
        .in_dir(redist3_sync_together127_aunroll_x_in_c0_eni18_1_tpl_5_q),
        .in_feedback_in_21(i_llvm_fpga_push_i2_initerations_push21_conv2d1x19_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i2_initerations_push21_conv2d1x19_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop21_conv2d1x17_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i2_initerations_pop21_conv2d1x17_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid219_i_next_initerations_conv2d1x10_shift_x(MUX,218)@6
    assign rightShiftStage0_uid219_i_next_initerations_conv2d1x10_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid219_i_next_initerations_conv2d1x10_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop21_conv2d1x17_out_data_out or rightShiftStage0Idx1_uid217_i_next_initerations_conv2d1x10_shift_x_q)
    begin
        unique case (rightShiftStage0_uid219_i_next_initerations_conv2d1x10_shift_x_s)
            1'b0 : rightShiftStage0_uid219_i_next_initerations_conv2d1x10_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop21_conv2d1x17_out_data_out;
            1'b1 : rightShiftStage0_uid219_i_next_initerations_conv2d1x10_shift_x_q = rightShiftStage0Idx1_uid217_i_next_initerations_conv2d1x10_shift_x_q;
            default : rightShiftStage0_uid219_i_next_initerations_conv2d1x10_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_conv2d1x18_vt_select_0(BITSELECT,108)@6
    assign i_next_initerations_conv2d1x18_vt_select_0_b = rightShiftStage0_uid219_i_next_initerations_conv2d1x10_shift_x_q[0:0];

    // i_next_initerations_conv2d1x18_vt_join(BITJOIN,107)@6
    assign i_next_initerations_conv2d1x18_vt_join_q = {GND_q, i_next_initerations_conv2d1x18_vt_select_0_b};

    // i_last_initeration_conv2d1x110_sel_x(BITSELECT,147)@6
    assign i_last_initeration_conv2d1x110_sel_x_b = i_next_initerations_conv2d1x18_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_conv2d1x111(BLACKBOX,81)@6
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    conv2d1x1_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_conv2d1x111 (
        .in_data_in(i_last_initeration_conv2d1x110_sel_x_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_initeration_stall_out),
        .in_keep_going(redist33_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_q),
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

    // redist0_sync_together127_aunroll_x_in_c0_eni18_1_tpl_1(DELAY,225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together127_aunroll_x_in_c0_eni18_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together127_aunroll_x_in_c0_eni18_1_tpl_1_q <= $unsigned(in_c0_eni18_1_tpl);
        end
    end

    // redist1_sync_together127_aunroll_x_in_c0_eni18_1_tpl_3(DELAY,226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together127_aunroll_x_in_c0_eni18_1_tpl_3_delay_0 <= '0;
            redist1_sync_together127_aunroll_x_in_c0_eni18_1_tpl_3_q <= '0;
        end
        else
        begin
            redist1_sync_together127_aunroll_x_in_c0_eni18_1_tpl_3_delay_0 <= $unsigned(redist0_sync_together127_aunroll_x_in_c0_eni18_1_tpl_1_q);
            redist1_sync_together127_aunroll_x_in_c0_eni18_1_tpl_3_q <= redist1_sync_together127_aunroll_x_in_c0_eni18_1_tpl_3_delay_0;
        end
    end

    // i_llvm_fpga_pipeline_keep_going_conv2d1x16(BLACKBOX,68)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    conv2d1x1_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_conv2d1x16 (
        .in_data_in(redist1_sync_together127_aunroll_x_in_c0_eni18_1_tpl_3_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_conv2d1x111_out_feedback_out_1),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_conv2d1x111_out_feedback_valid_out_1),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_conv2d1x143_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_conv2d1x143_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist22_sync_together127_aunroll_x_in_i_valid_3_q),
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

    // ext_sig_sync_out(GPOUT,43)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,116)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,154)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist23_sync_together127_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_notEnable(LOGICAL,333)
    assign redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_nor(LOGICAL,334)
    assign redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_nor_q = ~ (redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_notEnable_q | redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_sticky_ena_q);

    // redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_mem_last(CONSTANT,330)
    assign redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_cmp(LOGICAL,331)
    assign redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_cmp_b = {1'b0, redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_rdcnt_q};
    assign redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_cmp_q = $unsigned(redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_mem_last_q == redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_cmpReg(REG,332)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_cmpReg_q <= $unsigned(redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_cmp_q);
        end
    end

    // redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_sticky_ena(REG,335)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_nor_q == 1'b1)
        begin
            redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_sticky_ena_q <= $unsigned(redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_cmpReg_q);
        end
    end

    // redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_enaAnd(LOGICAL,336)
    assign redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_enaAnd_q = redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_sticky_ena_q & VCC_q;

    // redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_rdcnt(COUNTER,328)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_rdcnt_i <= $unsigned(redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_rdcnt_q = redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_rdcnt_i[1:0];

    // redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_wraddr(REG,329)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_wraddr_q <= $unsigned(redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_rdcnt_q);
        end
    end

    // redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_mem(DUALMEM,327)
    assign redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_mem_ia = $unsigned(in_c0_eni18_18_tpl);
    assign redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_mem_aa = redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_wraddr_q;
    assign redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_mem_ab = redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_rdcnt_q;
    assign redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_mem_dmem (
        .clocken1(redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_mem_aa),
        .data_a(redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_mem_ab),
        .q_b(redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_mem_iq),
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
    assign redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_mem_q = redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_mem_iq[31:0];

    // redist19_sync_together127_aunroll_x_in_c0_eni18_17_tpl_5(DELAY,244)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together127_aunroll_x_in_c0_eni18_17_tpl_5_delay_0 <= '0;
            redist19_sync_together127_aunroll_x_in_c0_eni18_17_tpl_5_delay_1 <= '0;
            redist19_sync_together127_aunroll_x_in_c0_eni18_17_tpl_5_delay_2 <= '0;
            redist19_sync_together127_aunroll_x_in_c0_eni18_17_tpl_5_delay_3 <= '0;
            redist19_sync_together127_aunroll_x_in_c0_eni18_17_tpl_5_q <= '0;
        end
        else
        begin
            redist19_sync_together127_aunroll_x_in_c0_eni18_17_tpl_5_delay_0 <= $unsigned(in_c0_eni18_17_tpl);
            redist19_sync_together127_aunroll_x_in_c0_eni18_17_tpl_5_delay_1 <= redist19_sync_together127_aunroll_x_in_c0_eni18_17_tpl_5_delay_0;
            redist19_sync_together127_aunroll_x_in_c0_eni18_17_tpl_5_delay_2 <= redist19_sync_together127_aunroll_x_in_c0_eni18_17_tpl_5_delay_1;
            redist19_sync_together127_aunroll_x_in_c0_eni18_17_tpl_5_delay_3 <= redist19_sync_together127_aunroll_x_in_c0_eni18_17_tpl_5_delay_2;
            redist19_sync_together127_aunroll_x_in_c0_eni18_17_tpl_5_q <= redist19_sync_together127_aunroll_x_in_c0_eni18_17_tpl_5_delay_3;
        end
    end

    // redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_notEnable(LOGICAL,323)
    assign redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_nor(LOGICAL,324)
    assign redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_nor_q = ~ (redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_notEnable_q | redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_sticky_ena_q);

    // redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_mem_last(CONSTANT,320)
    assign redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_cmp(LOGICAL,321)
    assign redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_cmp_b = {1'b0, redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_q};
    assign redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_cmp_q = $unsigned(redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_mem_last_q == redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_cmpReg(REG,322)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_cmpReg_q <= $unsigned(redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_cmp_q);
        end
    end

    // redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_sticky_ena(REG,325)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_nor_q == 1'b1)
        begin
            redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_sticky_ena_q <= $unsigned(redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_cmpReg_q);
        end
    end

    // redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_enaAnd(LOGICAL,326)
    assign redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_enaAnd_q = redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_sticky_ena_q & VCC_q;

    // redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt(COUNTER,318)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_i <= $unsigned(redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_q = redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_i[1:0];

    // redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_wraddr(REG,319)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_wraddr_q <= $unsigned(redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_q);
        end
    end

    // redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_mem(DUALMEM,317)
    assign redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_mem_ia = $unsigned(in_c0_eni18_16_tpl);
    assign redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_mem_aa = redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_wraddr_q;
    assign redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_mem_ab = redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_q;
    assign redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_mem_dmem (
        .clocken1(redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_mem_aa),
        .data_a(redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_mem_ab),
        .q_b(redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_mem_iq),
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
    assign redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_mem_q = redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_mem_iq[31:0];

    // redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_notEnable(LOGICAL,313)
    assign redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_nor(LOGICAL,314)
    assign redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_nor_q = ~ (redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_notEnable_q | redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_sticky_ena_q);

    // redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_mem_last(CONSTANT,310)
    assign redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_cmp(LOGICAL,311)
    assign redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_cmp_b = {1'b0, redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_rdcnt_q};
    assign redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_cmp_q = $unsigned(redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_mem_last_q == redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_cmpReg(REG,312)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_cmpReg_q <= $unsigned(redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_cmp_q);
        end
    end

    // redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_sticky_ena(REG,315)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_nor_q == 1'b1)
        begin
            redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_sticky_ena_q <= $unsigned(redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_cmpReg_q);
        end
    end

    // redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_enaAnd(LOGICAL,316)
    assign redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_enaAnd_q = redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_sticky_ena_q & VCC_q;

    // redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_rdcnt(COUNTER,308)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_rdcnt_i <= $unsigned(redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_rdcnt_q = redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_rdcnt_i[1:0];

    // redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_wraddr(REG,309)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_wraddr_q <= $unsigned(redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_rdcnt_q);
        end
    end

    // redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_mem(DUALMEM,307)
    assign redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_mem_ia = $unsigned(in_c0_eni18_15_tpl);
    assign redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_mem_aa = redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_wraddr_q;
    assign redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_mem_ab = redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_rdcnt_q;
    assign redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_mem_dmem (
        .clocken1(redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_mem_aa),
        .data_a(redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_mem_ab),
        .q_b(redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_mem_iq),
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
    assign redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_mem_q = redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_mem_iq[31:0];

    // redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_notEnable(LOGICAL,303)
    assign redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_nor(LOGICAL,304)
    assign redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_nor_q = ~ (redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_notEnable_q | redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_sticky_ena_q);

    // redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_mem_last(CONSTANT,300)
    assign redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_cmp(LOGICAL,301)
    assign redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_cmp_b = {1'b0, redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_rdcnt_q};
    assign redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_cmp_q = $unsigned(redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_mem_last_q == redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_cmpReg(REG,302)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_cmpReg_q <= $unsigned(redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_cmp_q);
        end
    end

    // redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_sticky_ena(REG,305)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_nor_q == 1'b1)
        begin
            redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_sticky_ena_q <= $unsigned(redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_cmpReg_q);
        end
    end

    // redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_enaAnd(LOGICAL,306)
    assign redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_enaAnd_q = redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_sticky_ena_q & VCC_q;

    // redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_rdcnt(COUNTER,298)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_rdcnt_i <= $unsigned(redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_rdcnt_q = redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_rdcnt_i[1:0];

    // redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_wraddr(REG,299)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_wraddr_q <= $unsigned(redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_rdcnt_q);
        end
    end

    // redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_mem(DUALMEM,297)
    assign redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_mem_ia = $unsigned(in_c0_eni18_14_tpl);
    assign redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_mem_aa = redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_wraddr_q;
    assign redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_mem_ab = redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_rdcnt_q;
    assign redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_mem_dmem (
        .clocken1(redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_mem_aa),
        .data_a(redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_mem_ab),
        .q_b(redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_mem_iq),
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
    assign redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_mem_q = redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_mem_iq[31:0];

    // redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_notEnable(LOGICAL,293)
    assign redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_nor(LOGICAL,294)
    assign redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_nor_q = ~ (redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_notEnable_q | redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_sticky_ena_q);

    // redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_mem_last(CONSTANT,290)
    assign redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_cmp(LOGICAL,291)
    assign redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_cmp_b = {1'b0, redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_rdcnt_q};
    assign redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_cmp_q = $unsigned(redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_mem_last_q == redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_cmpReg(REG,292)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_cmpReg_q <= $unsigned(redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_cmp_q);
        end
    end

    // redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_sticky_ena(REG,295)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_nor_q == 1'b1)
        begin
            redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_sticky_ena_q <= $unsigned(redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_cmpReg_q);
        end
    end

    // redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_enaAnd(LOGICAL,296)
    assign redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_enaAnd_q = redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_sticky_ena_q & VCC_q;

    // redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_rdcnt(COUNTER,288)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_rdcnt_i <= $unsigned(redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_rdcnt_q = redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_rdcnt_i[1:0];

    // redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_wraddr(REG,289)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_wraddr_q <= $unsigned(redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_rdcnt_q);
        end
    end

    // redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_mem(DUALMEM,287)
    assign redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_mem_ia = $unsigned(in_c0_eni18_13_tpl);
    assign redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_mem_aa = redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_wraddr_q;
    assign redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_mem_ab = redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_rdcnt_q;
    assign redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_mem_dmem (
        .clocken1(redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_mem_aa),
        .data_a(redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_mem_ab),
        .q_b(redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_mem_iq),
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
    assign redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_mem_q = redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_mem_iq[32:0];

    // redist14_sync_together127_aunroll_x_in_c0_eni18_12_tpl_5(DELAY,239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together127_aunroll_x_in_c0_eni18_12_tpl_5_delay_0 <= '0;
            redist14_sync_together127_aunroll_x_in_c0_eni18_12_tpl_5_delay_1 <= '0;
            redist14_sync_together127_aunroll_x_in_c0_eni18_12_tpl_5_delay_2 <= '0;
            redist14_sync_together127_aunroll_x_in_c0_eni18_12_tpl_5_delay_3 <= '0;
            redist14_sync_together127_aunroll_x_in_c0_eni18_12_tpl_5_q <= '0;
        end
        else
        begin
            redist14_sync_together127_aunroll_x_in_c0_eni18_12_tpl_5_delay_0 <= $unsigned(in_c0_eni18_12_tpl);
            redist14_sync_together127_aunroll_x_in_c0_eni18_12_tpl_5_delay_1 <= redist14_sync_together127_aunroll_x_in_c0_eni18_12_tpl_5_delay_0;
            redist14_sync_together127_aunroll_x_in_c0_eni18_12_tpl_5_delay_2 <= redist14_sync_together127_aunroll_x_in_c0_eni18_12_tpl_5_delay_1;
            redist14_sync_together127_aunroll_x_in_c0_eni18_12_tpl_5_delay_3 <= redist14_sync_together127_aunroll_x_in_c0_eni18_12_tpl_5_delay_2;
            redist14_sync_together127_aunroll_x_in_c0_eni18_12_tpl_5_q <= redist14_sync_together127_aunroll_x_in_c0_eni18_12_tpl_5_delay_3;
        end
    end

    // redist13_sync_together127_aunroll_x_in_c0_eni18_11_tpl_5(DELAY,238)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together127_aunroll_x_in_c0_eni18_11_tpl_5_delay_0 <= '0;
            redist13_sync_together127_aunroll_x_in_c0_eni18_11_tpl_5_delay_1 <= '0;
            redist13_sync_together127_aunroll_x_in_c0_eni18_11_tpl_5_delay_2 <= '0;
            redist13_sync_together127_aunroll_x_in_c0_eni18_11_tpl_5_delay_3 <= '0;
            redist13_sync_together127_aunroll_x_in_c0_eni18_11_tpl_5_q <= '0;
        end
        else
        begin
            redist13_sync_together127_aunroll_x_in_c0_eni18_11_tpl_5_delay_0 <= $unsigned(in_c0_eni18_11_tpl);
            redist13_sync_together127_aunroll_x_in_c0_eni18_11_tpl_5_delay_1 <= redist13_sync_together127_aunroll_x_in_c0_eni18_11_tpl_5_delay_0;
            redist13_sync_together127_aunroll_x_in_c0_eni18_11_tpl_5_delay_2 <= redist13_sync_together127_aunroll_x_in_c0_eni18_11_tpl_5_delay_1;
            redist13_sync_together127_aunroll_x_in_c0_eni18_11_tpl_5_delay_3 <= redist13_sync_together127_aunroll_x_in_c0_eni18_11_tpl_5_delay_2;
            redist13_sync_together127_aunroll_x_in_c0_eni18_11_tpl_5_q <= redist13_sync_together127_aunroll_x_in_c0_eni18_11_tpl_5_delay_3;
        end
    end

    // redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_notEnable(LOGICAL,283)
    assign redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_nor(LOGICAL,284)
    assign redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_nor_q = ~ (redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_notEnable_q | redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_sticky_ena_q);

    // redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_mem_last(CONSTANT,280)
    assign redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_cmp(LOGICAL,281)
    assign redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_cmp_b = {1'b0, redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_q};
    assign redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_cmp_q = $unsigned(redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_mem_last_q == redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_cmpReg(REG,282)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_cmpReg_q <= $unsigned(redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_cmp_q);
        end
    end

    // redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_sticky_ena(REG,285)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_nor_q == 1'b1)
        begin
            redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_sticky_ena_q <= $unsigned(redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_cmpReg_q);
        end
    end

    // redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_enaAnd(LOGICAL,286)
    assign redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_enaAnd_q = redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_sticky_ena_q & VCC_q;

    // redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt(COUNTER,278)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_i <= $unsigned(redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_q = redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_i[1:0];

    // redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_wraddr(REG,279)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_wraddr_q <= $unsigned(redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_q);
        end
    end

    // redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_mem(DUALMEM,277)
    assign redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_mem_ia = $unsigned(in_c0_eni18_10_tpl);
    assign redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_mem_aa = redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_wraddr_q;
    assign redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_mem_ab = redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_q;
    assign redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_mem_dmem (
        .clocken1(redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_mem_aa),
        .data_a(redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_mem_ab),
        .q_b(redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_mem_iq),
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
    assign redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_mem_q = redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_mem_iq[31:0];

    // valid_fanout_reg20(REG,174)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist23_sync_together127_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg21(REG,175)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist23_sync_together127_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp1737_push30_conv2d1x155(BLACKBOX,82)@6
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    conv2d1x1_i_llvm_fpga_push_i1_notcmp1737_push30_0 thei_llvm_fpga_push_i1_notcmp1737_push30_conv2d1x155 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp1737_pop30_conv2d1x154_out_data_out),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i1_notcmp1737_pop30_conv2d1x154_out_feedback_stall_out_30),
        .in_keep_going(redist33_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i1_notcmp1737_push30_conv2d1x155_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i1_notcmp1737_push30_conv2d1x155_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_sync_together127_aunroll_x_in_c0_eni18_9_tpl_5(DELAY,236)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together127_aunroll_x_in_c0_eni18_9_tpl_5_delay_0 <= '0;
            redist11_sync_together127_aunroll_x_in_c0_eni18_9_tpl_5_delay_1 <= '0;
            redist11_sync_together127_aunroll_x_in_c0_eni18_9_tpl_5_delay_2 <= '0;
            redist11_sync_together127_aunroll_x_in_c0_eni18_9_tpl_5_delay_3 <= '0;
            redist11_sync_together127_aunroll_x_in_c0_eni18_9_tpl_5_q <= '0;
        end
        else
        begin
            redist11_sync_together127_aunroll_x_in_c0_eni18_9_tpl_5_delay_0 <= $unsigned(in_c0_eni18_9_tpl);
            redist11_sync_together127_aunroll_x_in_c0_eni18_9_tpl_5_delay_1 <= redist11_sync_together127_aunroll_x_in_c0_eni18_9_tpl_5_delay_0;
            redist11_sync_together127_aunroll_x_in_c0_eni18_9_tpl_5_delay_2 <= redist11_sync_together127_aunroll_x_in_c0_eni18_9_tpl_5_delay_1;
            redist11_sync_together127_aunroll_x_in_c0_eni18_9_tpl_5_delay_3 <= redist11_sync_together127_aunroll_x_in_c0_eni18_9_tpl_5_delay_2;
            redist11_sync_together127_aunroll_x_in_c0_eni18_9_tpl_5_q <= redist11_sync_together127_aunroll_x_in_c0_eni18_9_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp1737_pop30_conv2d1x154(BLACKBOX,69)@6
    // out out_feedback_stall_out_30@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_notcmp1737_pop30_0 thei_llvm_fpga_pop_i1_notcmp1737_pop30_conv2d1x154 (
        .in_data_in(redist11_sync_together127_aunroll_x_in_c0_eni18_9_tpl_5_q),
        .in_dir(redist3_sync_together127_aunroll_x_in_c0_eni18_1_tpl_5_q),
        .in_feedback_in_30(i_llvm_fpga_push_i1_notcmp1737_push30_conv2d1x155_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i1_notcmp1737_push30_conv2d1x155_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1737_pop30_conv2d1x154_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i1_notcmp1737_pop30_conv2d1x154_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg18(REG,172)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist23_sync_together127_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg19(REG,173)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist23_sync_together127_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp2236_push29_conv2d1x153(BLACKBOX,83)@6
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    conv2d1x1_i_llvm_fpga_push_i1_notcmp2236_push29_0 thei_llvm_fpga_push_i1_notcmp2236_push29_conv2d1x153 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp2236_pop29_conv2d1x152_out_data_out),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i1_notcmp2236_pop29_conv2d1x152_out_feedback_stall_out_29),
        .in_keep_going(redist33_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i1_notcmp2236_push29_conv2d1x153_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i1_notcmp2236_push29_conv2d1x153_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_sync_together127_aunroll_x_in_c0_eni18_8_tpl_5(DELAY,235)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together127_aunroll_x_in_c0_eni18_8_tpl_5_delay_0 <= '0;
            redist10_sync_together127_aunroll_x_in_c0_eni18_8_tpl_5_delay_1 <= '0;
            redist10_sync_together127_aunroll_x_in_c0_eni18_8_tpl_5_delay_2 <= '0;
            redist10_sync_together127_aunroll_x_in_c0_eni18_8_tpl_5_delay_3 <= '0;
            redist10_sync_together127_aunroll_x_in_c0_eni18_8_tpl_5_q <= '0;
        end
        else
        begin
            redist10_sync_together127_aunroll_x_in_c0_eni18_8_tpl_5_delay_0 <= $unsigned(in_c0_eni18_8_tpl);
            redist10_sync_together127_aunroll_x_in_c0_eni18_8_tpl_5_delay_1 <= redist10_sync_together127_aunroll_x_in_c0_eni18_8_tpl_5_delay_0;
            redist10_sync_together127_aunroll_x_in_c0_eni18_8_tpl_5_delay_2 <= redist10_sync_together127_aunroll_x_in_c0_eni18_8_tpl_5_delay_1;
            redist10_sync_together127_aunroll_x_in_c0_eni18_8_tpl_5_delay_3 <= redist10_sync_together127_aunroll_x_in_c0_eni18_8_tpl_5_delay_2;
            redist10_sync_together127_aunroll_x_in_c0_eni18_8_tpl_5_q <= redist10_sync_together127_aunroll_x_in_c0_eni18_8_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp2236_pop29_conv2d1x152(BLACKBOX,70)@6
    // out out_feedback_stall_out_29@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_notcmp2236_pop29_0 thei_llvm_fpga_pop_i1_notcmp2236_pop29_conv2d1x152 (
        .in_data_in(redist10_sync_together127_aunroll_x_in_c0_eni18_8_tpl_5_q),
        .in_dir(redist3_sync_together127_aunroll_x_in_c0_eni18_1_tpl_5_q),
        .in_feedback_in_29(i_llvm_fpga_push_i1_notcmp2236_push29_conv2d1x153_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i1_notcmp2236_push29_conv2d1x153_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2236_pop29_conv2d1x152_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i1_notcmp2236_pop29_conv2d1x152_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg16(REG,170)@1 + 1
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

    // valid_fanout_reg17(REG,171)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist21_sync_together127_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_mul2334_push28_conv2d1x151(BLACKBOX,92)@4
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    conv2d1x1_i_llvm_fpga_push_i32_mul2334_push28_0 thei_llvm_fpga_push_i32_mul2334_push28_conv2d1x151 (
        .in_data_in(redist28_i_llvm_fpga_pop_i32_mul2334_pop28_conv2d1x150_out_data_out_2_q),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i32_mul2334_pop28_conv2d1x150_out_feedback_stall_out_28),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i32_mul2334_push28_conv2d1x151_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i32_mul2334_push28_conv2d1x151_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together127_aunroll_x_in_c0_eni18_7_tpl_1(DELAY,234)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together127_aunroll_x_in_c0_eni18_7_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together127_aunroll_x_in_c0_eni18_7_tpl_1_q <= $unsigned(in_c0_eni18_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul2334_pop28_conv2d1x150(BLACKBOX,78)@2
    // out out_feedback_stall_out_28@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_mul2334_pop28_0 thei_llvm_fpga_pop_i32_mul2334_pop28_conv2d1x150 (
        .in_data_in(redist9_sync_together127_aunroll_x_in_c0_eni18_7_tpl_1_q),
        .in_dir(redist0_sync_together127_aunroll_x_in_c0_eni18_1_tpl_1_q),
        .in_feedback_in_28(i_llvm_fpga_push_i32_mul2334_push28_conv2d1x151_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i32_mul2334_push28_conv2d1x151_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul2334_pop28_conv2d1x150_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i32_mul2334_pop28_conv2d1x150_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist28_i_llvm_fpga_pop_i32_mul2334_pop28_conv2d1x150_out_data_out_2(DELAY,253)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_pop_i32_mul2334_pop28_conv2d1x150_out_data_out_2_delay_0 <= '0;
            redist28_i_llvm_fpga_pop_i32_mul2334_pop28_conv2d1x150_out_data_out_2_q <= '0;
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i32_mul2334_pop28_conv2d1x150_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i32_mul2334_pop28_conv2d1x150_out_data_out);
            redist28_i_llvm_fpga_pop_i32_mul2334_pop28_conv2d1x150_out_data_out_2_q <= redist28_i_llvm_fpga_pop_i32_mul2334_pop28_conv2d1x150_out_data_out_2_delay_0;
        end
    end

    // redist29_i_llvm_fpga_pop_i32_mul2334_pop28_conv2d1x150_out_data_out_4(DELAY,254)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_pop_i32_mul2334_pop28_conv2d1x150_out_data_out_4_delay_0 <= '0;
            redist29_i_llvm_fpga_pop_i32_mul2334_pop28_conv2d1x150_out_data_out_4_q <= '0;
        end
        else
        begin
            redist29_i_llvm_fpga_pop_i32_mul2334_pop28_conv2d1x150_out_data_out_4_delay_0 <= $unsigned(redist28_i_llvm_fpga_pop_i32_mul2334_pop28_conv2d1x150_out_data_out_2_q);
            redist29_i_llvm_fpga_pop_i32_mul2334_pop28_conv2d1x150_out_data_out_4_q <= redist29_i_llvm_fpga_pop_i32_mul2334_pop28_conv2d1x150_out_data_out_4_delay_0;
        end
    end

    // valid_fanout_reg14(REG,168)@1 + 1
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

    // valid_fanout_reg15(REG,169)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist23_sync_together127_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_push25_conv2d1x149(BLACKBOX,86)@6
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    conv2d1x1_i_llvm_fpga_push_i1_push25_0 thei_llvm_fpga_push_i1_push25_conv2d1x149 (
        .in_data_in(redist32_i_llvm_fpga_pop_i1_pop25_conv2d1x148_out_data_out_4_q),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i1_pop25_conv2d1x148_out_feedback_stall_out_25),
        .in_keep_going(redist33_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i1_push25_conv2d1x149_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i1_push25_conv2d1x149_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together127_aunroll_x_in_c0_eni18_6_tpl_1(DELAY,233)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together127_aunroll_x_in_c0_eni18_6_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together127_aunroll_x_in_c0_eni18_6_tpl_1_q <= $unsigned(in_c0_eni18_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_pop25_conv2d1x148(BLACKBOX,72)@2
    // out out_feedback_stall_out_25@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_pop25_0 thei_llvm_fpga_pop_i1_pop25_conv2d1x148 (
        .in_data_in(redist8_sync_together127_aunroll_x_in_c0_eni18_6_tpl_1_q),
        .in_dir(redist0_sync_together127_aunroll_x_in_c0_eni18_1_tpl_1_q),
        .in_feedback_in_25(i_llvm_fpga_push_i1_push25_conv2d1x149_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i1_push25_conv2d1x149_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop25_conv2d1x148_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i1_pop25_conv2d1x148_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist32_i_llvm_fpga_pop_i1_pop25_conv2d1x148_out_data_out_4(DELAY,257)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_pop_i1_pop25_conv2d1x148_out_data_out_4_delay_0 <= '0;
            redist32_i_llvm_fpga_pop_i1_pop25_conv2d1x148_out_data_out_4_delay_1 <= '0;
            redist32_i_llvm_fpga_pop_i1_pop25_conv2d1x148_out_data_out_4_delay_2 <= '0;
            redist32_i_llvm_fpga_pop_i1_pop25_conv2d1x148_out_data_out_4_q <= '0;
        end
        else
        begin
            redist32_i_llvm_fpga_pop_i1_pop25_conv2d1x148_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_pop25_conv2d1x148_out_data_out);
            redist32_i_llvm_fpga_pop_i1_pop25_conv2d1x148_out_data_out_4_delay_1 <= redist32_i_llvm_fpga_pop_i1_pop25_conv2d1x148_out_data_out_4_delay_0;
            redist32_i_llvm_fpga_pop_i1_pop25_conv2d1x148_out_data_out_4_delay_2 <= redist32_i_llvm_fpga_pop_i1_pop25_conv2d1x148_out_data_out_4_delay_1;
            redist32_i_llvm_fpga_pop_i1_pop25_conv2d1x148_out_data_out_4_q <= redist32_i_llvm_fpga_pop_i1_pop25_conv2d1x148_out_data_out_4_delay_2;
        end
    end

    // i_masked_conv2d1x147(LOGICAL,103)@6
    assign i_masked_conv2d1x147_q = i_notcmp_conv2d1x142_q & i_first_cleanup_conv2d1x13_sel_x_b;

    // valid_fanout_reg10(REG,164)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist21_sync_together127_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg11(REG,165)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist21_sync_together127_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_mul1332_push27_conv2d1x130(BLACKBOX,91)@4
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    conv2d1x1_i_llvm_fpga_push_i32_mul1332_push27_0 thei_llvm_fpga_push_i32_mul1332_push27_conv2d1x130 (
        .in_data_in(i_llvm_fpga_pop_i32_mul1332_pop27_conv2d1x129_out_data_out),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i32_mul1332_pop27_conv2d1x129_out_feedback_stall_out_27),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i32_mul1332_push27_conv2d1x130_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i32_mul1332_push27_conv2d1x130_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_notEnable(LOGICAL,273)
    assign redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_nor(LOGICAL,274)
    assign redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_nor_q = ~ (redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_notEnable_q | redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_sticky_ena_q);

    // redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_cmpReg(REG,272)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_sticky_ena(REG,275)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_nor_q == 1'b1)
        begin
            redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_sticky_ena_q <= $unsigned(redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_cmpReg_q);
        end
    end

    // redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_enaAnd(LOGICAL,276)
    assign redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_enaAnd_q = redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_sticky_ena_q & VCC_q;

    // redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_rdcnt(COUNTER,270)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_rdcnt_i <= $unsigned(redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_rdcnt_q = redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_rdcnt_i[0:0];

    // redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_wraddr(REG,271)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_wraddr_q <= $unsigned(redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_rdcnt_q);
        end
    end

    // redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_mem(DUALMEM,269)
    assign redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_mem_ia = $unsigned(in_c0_eni18_5_tpl);
    assign redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_mem_aa = redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_wraddr_q;
    assign redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_mem_ab = redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_rdcnt_q;
    assign redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_mem_reset0 = ~ (resetn);
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
    ) redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_mem_dmem (
        .clocken1(redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_mem_aa),
        .data_a(redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_mem_ab),
        .q_b(redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_mem_iq),
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
    assign redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_mem_q = redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_mem_iq[31:0];

    // i_llvm_fpga_pop_i32_mul1332_pop27_conv2d1x129(BLACKBOX,77)@4
    // out out_feedback_stall_out_27@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_mul1332_pop27_0 thei_llvm_fpga_pop_i32_mul1332_pop27_conv2d1x129 (
        .in_data_in(redist7_sync_together127_aunroll_x_in_c0_eni18_5_tpl_3_mem_q),
        .in_dir(redist1_sync_together127_aunroll_x_in_c0_eni18_1_tpl_3_q),
        .in_feedback_in_27(i_llvm_fpga_push_i32_mul1332_push27_conv2d1x130_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i32_mul1332_push27_conv2d1x130_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul1332_pop27_conv2d1x129_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i32_mul1332_pop27_conv2d1x129_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,158)@1 + 1
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

    // valid_fanout_reg13(REG,167)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist21_sync_together127_aunroll_x_in_i_valid_2_q);
        end
    end

    // c_i32_191(CONSTANT,40)
    assign c_i32_191_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_conv2d1x135(ADD,65)@4
    assign i_inc_conv2d1x135_a = {1'b0, redist30_i_llvm_fpga_pop_i32_k_026_pop19_conv2d1x118_out_data_out_2_q};
    assign i_inc_conv2d1x135_b = {1'b0, c_i32_191_q};
    assign i_inc_conv2d1x135_o = $unsigned(i_inc_conv2d1x135_a) + $unsigned(i_inc_conv2d1x135_b);
    assign i_inc_conv2d1x135_q = i_inc_conv2d1x135_o[32:0];

    // bgTrunc_i_inc_conv2d1x135_sel_x(BITSELECT,124)@4
    assign bgTrunc_i_inc_conv2d1x135_sel_x_b = i_inc_conv2d1x135_q[31:0];

    // i_llvm_fpga_push_i32_k_026_push19_conv2d1x136(BLACKBOX,90)@4
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    conv2d1x1_i_llvm_fpga_push_i32_k_026_push19_0 thei_llvm_fpga_push_i32_k_026_push19_conv2d1x136 (
        .in_data_in(bgTrunc_i_inc_conv2d1x135_sel_x_b),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i32_k_026_pop19_conv2d1x118_out_feedback_stall_out_19),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i32_k_026_push19_conv2d1x136_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i32_k_026_push19_conv2d1x136_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_090(CONSTANT,39)
    assign c_i32_090_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_k_026_pop19_conv2d1x118(BLACKBOX,76)@2
    // out out_feedback_stall_out_19@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_k_026_pop19_0 thei_llvm_fpga_pop_i32_k_026_pop19_conv2d1x118 (
        .in_data_in(c_i32_090_q),
        .in_dir(redist0_sync_together127_aunroll_x_in_c0_eni18_1_tpl_1_q),
        .in_feedback_in_19(i_llvm_fpga_push_i32_k_026_push19_conv2d1x136_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i32_k_026_push19_conv2d1x136_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_026_pop19_conv2d1x118_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i32_k_026_pop19_conv2d1x118_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist30_i_llvm_fpga_pop_i32_k_026_pop19_conv2d1x118_out_data_out_2(DELAY,255)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pop_i32_k_026_pop19_conv2d1x118_out_data_out_2_delay_0 <= '0;
            redist30_i_llvm_fpga_pop_i32_k_026_pop19_conv2d1x118_out_data_out_2_q <= '0;
        end
        else
        begin
            redist30_i_llvm_fpga_pop_i32_k_026_pop19_conv2d1x118_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i32_k_026_pop19_conv2d1x118_out_data_out);
            redist30_i_llvm_fpga_pop_i32_k_026_pop19_conv2d1x118_out_data_out_2_q <= redist30_i_llvm_fpga_pop_i32_k_026_pop19_conv2d1x118_out_data_out_2_delay_0;
        end
    end

    // i_add14_conv2d1x131(ADD,44)@4
    assign i_add14_conv2d1x131_a = {1'b0, redist30_i_llvm_fpga_pop_i32_k_026_pop19_conv2d1x118_out_data_out_2_q};
    assign i_add14_conv2d1x131_b = {1'b0, i_llvm_fpga_pop_i32_mul1332_pop27_conv2d1x129_out_data_out};
    assign i_add14_conv2d1x131_o = $unsigned(i_add14_conv2d1x131_a) + $unsigned(i_add14_conv2d1x131_b);
    assign i_add14_conv2d1x131_q = i_add14_conv2d1x131_o[32:0];

    // bgTrunc_i_add14_conv2d1x131_sel_x(BITSELECT,121)@4
    assign bgTrunc_i_add14_conv2d1x131_sel_x_b = i_add14_conv2d1x131_q[31:0];

    // redist26_bgTrunc_i_add14_conv2d1x131_sel_x_b_2(DELAY,251)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_bgTrunc_i_add14_conv2d1x131_sel_x_b_2_delay_0 <= '0;
            redist26_bgTrunc_i_add14_conv2d1x131_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist26_bgTrunc_i_add14_conv2d1x131_sel_x_b_2_delay_0 <= $unsigned(bgTrunc_i_add14_conv2d1x131_sel_x_b);
            redist26_bgTrunc_i_add14_conv2d1x131_sel_x_b_2_q <= redist26_bgTrunc_i_add14_conv2d1x131_sel_x_b_2_delay_0;
        end
    end

    // i_idxprom15_conv2d1x132_sel_x(BITSELECT,146)@6
    assign i_idxprom15_conv2d1x132_sel_x_b = $unsigned({{32{redist26_bgTrunc_i_add14_conv2d1x131_sel_x_b_2_q[31]}}, redist26_bgTrunc_i_add14_conv2d1x131_sel_x_b_2_q[31:0]});

    // i_arrayidx164_conv2d1x10_narrow_x(BITSELECT,136)@6
    assign i_arrayidx164_conv2d1x10_narrow_x_b = i_idxprom15_conv2d1x132_sel_x_b[61:0];

    // i_arrayidx164_conv2d1x10_shift_join_x(BITJOIN,137)@6
    assign i_arrayidx164_conv2d1x10_shift_join_x_q = {i_arrayidx164_conv2d1x10_narrow_x_b, i_arrayidx123_conv2d1x127_vt_const_1_q};

    // valid_fanout_reg12(REG,166)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist23_sync_together127_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d1x133(BLACKBOX,95)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0000weight_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d1x133 (
        .in_buffer_in(in_filter_weight),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d1x133_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d1x133_vt_select_63(BITSELECT,98)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d1x133_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d1x133_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d1x133_vt_const_9(CONSTANT,96)
    assign i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d1x133_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d1x133_vt_join(BITJOIN,97)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d1x133_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d1x133_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d1x133_vt_const_9_q};

    // i_arrayidx164_conv2d1x10_add_x(ADD,134)@6
    assign i_arrayidx164_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d1x133_vt_join_q};
    assign i_arrayidx164_conv2d1x10_add_x_b = {1'b0, i_arrayidx164_conv2d1x10_shift_join_x_q};
    assign i_arrayidx164_conv2d1x10_add_x_o = $unsigned(i_arrayidx164_conv2d1x10_add_x_a) + $unsigned(i_arrayidx164_conv2d1x10_add_x_b);
    assign i_arrayidx164_conv2d1x10_add_x_q = i_arrayidx164_conv2d1x10_add_x_o[64:0];

    // i_arrayidx164_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,139)@6
    assign i_arrayidx164_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx164_conv2d1x10_add_x_q[63:0];

    // i_arrayidx164_conv2d1x134_vt_select_63(BITSELECT,51)@6
    assign i_arrayidx164_conv2d1x134_vt_select_63_b = i_arrayidx164_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx123_conv2d1x127_vt_const_1(CONSTANT,46)
    assign i_arrayidx123_conv2d1x127_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx164_conv2d1x134_vt_join(BITJOIN,50)@6
    assign i_arrayidx164_conv2d1x134_vt_join_q = {i_arrayidx164_conv2d1x134_vt_select_63_b, i_arrayidx123_conv2d1x127_vt_const_1_q};

    // i_unnamed_conv2d1x117(LOGICAL,111)@6
    assign i_unnamed_conv2d1x117_q = i_llvm_fpga_pop_i1_pop24_conv2d1x115_out_data_out ^ VCC_q;

    // i_first_cleanup_xor_or_conv2d1x128(LOGICAL,58)@6
    assign i_first_cleanup_xor_or_conv2d1x128_q = i_unnamed_conv2d1x117_q | i_first_cleanup_xor_conv2d1x14_q;

    // i_mul10_conv2d1x121_bs2_merged_bit_select(BITSELECT,223)@2
    assign i_mul10_conv2d1x121_bs2_merged_bit_select_b = i_llvm_fpga_pop_i32_k_026_pop19_conv2d1x118_out_data_out[31:18];
    assign i_mul10_conv2d1x121_bs2_merged_bit_select_c = i_llvm_fpga_pop_i32_k_026_pop19_conv2d1x118_out_data_out[17:0];

    // valid_fanout_reg5(REG,159)@1 + 1
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

    // valid_fanout_reg6(REG,160)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist21_sync_together127_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist27_i_llvm_fpga_pop_i32_mul28_pop23_conv2d1x119_out_data_out_2(DELAY,252)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_i32_mul28_pop23_conv2d1x119_out_data_out_2_delay_0 <= '0;
            redist27_i_llvm_fpga_pop_i32_mul28_pop23_conv2d1x119_out_data_out_2_q <= '0;
        end
        else
        begin
            redist27_i_llvm_fpga_pop_i32_mul28_pop23_conv2d1x119_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i32_mul28_pop23_conv2d1x119_out_data_out);
            redist27_i_llvm_fpga_pop_i32_mul28_pop23_conv2d1x119_out_data_out_2_q <= redist27_i_llvm_fpga_pop_i32_mul28_pop23_conv2d1x119_out_data_out_2_delay_0;
        end
    end

    // i_llvm_fpga_push_i32_mul28_push23_conv2d1x120(BLACKBOX,93)@4
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    conv2d1x1_i_llvm_fpga_push_i32_mul28_push23_0 thei_llvm_fpga_push_i32_mul28_push23_conv2d1x120 (
        .in_data_in(redist27_i_llvm_fpga_pop_i32_mul28_pop23_conv2d1x119_out_data_out_2_q),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i32_mul28_pop23_conv2d1x119_out_feedback_stall_out_23),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i32_mul28_push23_conv2d1x120_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i32_mul28_push23_conv2d1x120_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together127_aunroll_x_in_c0_eni18_3_tpl_1(DELAY,230)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together127_aunroll_x_in_c0_eni18_3_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together127_aunroll_x_in_c0_eni18_3_tpl_1_q <= $unsigned(in_c0_eni18_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul28_pop23_conv2d1x119(BLACKBOX,79)@2
    // out out_feedback_stall_out_23@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_mul28_pop23_0 thei_llvm_fpga_pop_i32_mul28_pop23_conv2d1x119 (
        .in_data_in(redist5_sync_together127_aunroll_x_in_c0_eni18_3_tpl_1_q),
        .in_dir(redist0_sync_together127_aunroll_x_in_c0_eni18_1_tpl_1_q),
        .in_feedback_in_23(i_llvm_fpga_push_i32_mul28_push23_conv2d1x120_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i32_mul28_push23_conv2d1x120_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul28_pop23_conv2d1x119_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i32_mul28_pop23_conv2d1x119_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul10_conv2d1x121_bs1_merged_bit_select(BITSELECT,224)@2
    assign i_mul10_conv2d1x121_bs1_merged_bit_select_b = i_llvm_fpga_pop_i32_mul28_pop23_conv2d1x119_out_data_out[31:18];
    assign i_mul10_conv2d1x121_bs1_merged_bit_select_c = i_llvm_fpga_pop_i32_mul28_pop23_conv2d1x119_out_data_out[17:0];

    // i_mul10_conv2d1x121_ma3_cma(CHAINMULTADD,222)@2 + 3
    assign i_mul10_conv2d1x121_ma3_cma_reset = ~ (resetn);
    assign i_mul10_conv2d1x121_ma3_cma_ena0 = 1'b1;
    assign i_mul10_conv2d1x121_ma3_cma_ena1 = i_mul10_conv2d1x121_ma3_cma_ena0;
    assign i_mul10_conv2d1x121_ma3_cma_ena2 = i_mul10_conv2d1x121_ma3_cma_ena0;

    assign i_mul10_conv2d1x121_ma3_cma_a0 = i_mul10_conv2d1x121_bs1_merged_bit_select_b;
    assign i_mul10_conv2d1x121_ma3_cma_c0 = i_mul10_conv2d1x121_bs2_merged_bit_select_c;
    assign i_mul10_conv2d1x121_ma3_cma_a1 = i_mul10_conv2d1x121_bs2_merged_bit_select_b;
    assign i_mul10_conv2d1x121_ma3_cma_c1 = i_mul10_conv2d1x121_bs1_merged_bit_select_c;
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
    ) i_mul10_conv2d1x121_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul10_conv2d1x121_ma3_cma_ena2, i_mul10_conv2d1x121_ma3_cma_ena1, i_mul10_conv2d1x121_ma3_cma_ena0 }),
        .aclr({ i_mul10_conv2d1x121_ma3_cma_reset, i_mul10_conv2d1x121_ma3_cma_reset }),
        .ay(i_mul10_conv2d1x121_ma3_cma_a1),
        .by(i_mul10_conv2d1x121_ma3_cma_a0),
        .ax(i_mul10_conv2d1x121_ma3_cma_c1),
        .bx(i_mul10_conv2d1x121_ma3_cma_c0),
        .resulta(i_mul10_conv2d1x121_ma3_cma_s0),
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
    i_mul10_conv2d1x121_ma3_cma_delay ( .xin(i_mul10_conv2d1x121_ma3_cma_s0), .xout(i_mul10_conv2d1x121_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul10_conv2d1x121_ma3_cma_q = $unsigned(i_mul10_conv2d1x121_ma3_cma_qq[32:0]);

    // i_mul10_conv2d1x121_sums_align_1(BITSHIFT,201)@5
    assign i_mul10_conv2d1x121_sums_align_1_qint = { i_mul10_conv2d1x121_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul10_conv2d1x121_sums_align_1_q = i_mul10_conv2d1x121_sums_align_1_qint[50:0];

    // i_mul10_conv2d1x121_im0_cma(CHAINMULTADD,220)@2 + 3
    assign i_mul10_conv2d1x121_im0_cma_reset = ~ (resetn);
    assign i_mul10_conv2d1x121_im0_cma_ena0 = 1'b1;
    assign i_mul10_conv2d1x121_im0_cma_ena1 = i_mul10_conv2d1x121_im0_cma_ena0;
    assign i_mul10_conv2d1x121_im0_cma_ena2 = i_mul10_conv2d1x121_im0_cma_ena0;

    assign i_mul10_conv2d1x121_im0_cma_a0 = i_mul10_conv2d1x121_bs1_merged_bit_select_b;
    assign i_mul10_conv2d1x121_im0_cma_c0 = i_mul10_conv2d1x121_bs2_merged_bit_select_b;
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
    ) i_mul10_conv2d1x121_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul10_conv2d1x121_im0_cma_ena2, i_mul10_conv2d1x121_im0_cma_ena1, i_mul10_conv2d1x121_im0_cma_ena0 }),
        .aclr({ i_mul10_conv2d1x121_im0_cma_reset, i_mul10_conv2d1x121_im0_cma_reset }),
        .ay(i_mul10_conv2d1x121_im0_cma_a0),
        .ax(i_mul10_conv2d1x121_im0_cma_c0),
        .resulta(i_mul10_conv2d1x121_im0_cma_s0),
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
    i_mul10_conv2d1x121_im0_cma_delay ( .xin(i_mul10_conv2d1x121_im0_cma_s0), .xout(i_mul10_conv2d1x121_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul10_conv2d1x121_im0_cma_q = $unsigned(i_mul10_conv2d1x121_im0_cma_qq[27:0]);

    // i_mul10_conv2d1x121_im8_cma(CHAINMULTADD,221)@2 + 3
    assign i_mul10_conv2d1x121_im8_cma_reset = ~ (resetn);
    assign i_mul10_conv2d1x121_im8_cma_ena0 = 1'b1;
    assign i_mul10_conv2d1x121_im8_cma_ena1 = i_mul10_conv2d1x121_im8_cma_ena0;
    assign i_mul10_conv2d1x121_im8_cma_ena2 = i_mul10_conv2d1x121_im8_cma_ena0;

    assign i_mul10_conv2d1x121_im8_cma_a0 = i_mul10_conv2d1x121_bs1_merged_bit_select_c;
    assign i_mul10_conv2d1x121_im8_cma_c0 = i_mul10_conv2d1x121_bs2_merged_bit_select_c;
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
    ) i_mul10_conv2d1x121_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul10_conv2d1x121_im8_cma_ena2, i_mul10_conv2d1x121_im8_cma_ena1, i_mul10_conv2d1x121_im8_cma_ena0 }),
        .aclr({ i_mul10_conv2d1x121_im8_cma_reset, i_mul10_conv2d1x121_im8_cma_reset }),
        .ay(i_mul10_conv2d1x121_im8_cma_a0),
        .ax(i_mul10_conv2d1x121_im8_cma_c0),
        .resulta(i_mul10_conv2d1x121_im8_cma_s0),
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
    i_mul10_conv2d1x121_im8_cma_delay ( .xin(i_mul10_conv2d1x121_im8_cma_s0), .xout(i_mul10_conv2d1x121_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul10_conv2d1x121_im8_cma_q = $unsigned(i_mul10_conv2d1x121_im8_cma_qq[35:0]);

    // i_mul10_conv2d1x121_sums_join_0(BITJOIN,200)@5
    assign i_mul10_conv2d1x121_sums_join_0_q = {i_mul10_conv2d1x121_im0_cma_q, i_mul10_conv2d1x121_im8_cma_q};

    // i_mul10_conv2d1x121_sums_result_add_0_0(ADD,203)@5
    assign i_mul10_conv2d1x121_sums_result_add_0_0_a = {1'b0, i_mul10_conv2d1x121_sums_join_0_q};
    assign i_mul10_conv2d1x121_sums_result_add_0_0_b = {14'b00000000000000, i_mul10_conv2d1x121_sums_align_1_q};
    assign i_mul10_conv2d1x121_sums_result_add_0_0_o = $unsigned(i_mul10_conv2d1x121_sums_result_add_0_0_a) + $unsigned(i_mul10_conv2d1x121_sums_result_add_0_0_b);
    assign i_mul10_conv2d1x121_sums_result_add_0_0_q = i_mul10_conv2d1x121_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul10_conv2d1x121_sel_x(BITSELECT,125)@5
    assign bgTrunc_i_mul10_conv2d1x121_sel_x_in = i_mul10_conv2d1x121_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul10_conv2d1x121_sel_x_b = bgTrunc_i_mul10_conv2d1x121_sel_x_in[31:0];

    // redist25_bgTrunc_i_mul10_conv2d1x121_sel_x_b_1(DELAY,250)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_bgTrunc_i_mul10_conv2d1x121_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist25_bgTrunc_i_mul10_conv2d1x121_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul10_conv2d1x121_sel_x_b);
        end
    end

    // i_add_conv2d1x124(ADD,45)@6
    assign i_add_conv2d1x124_a = {1'b0, redist25_bgTrunc_i_mul10_conv2d1x121_sel_x_b_1_q};
    assign i_add_conv2d1x124_b = {1'b0, redist31_i_llvm_fpga_pop_i32_ij_028_pop1038_pop31_conv2d1x122_out_data_out_1_q};
    assign i_add_conv2d1x124_o = $unsigned(i_add_conv2d1x124_a) + $unsigned(i_add_conv2d1x124_b);
    assign i_add_conv2d1x124_q = i_add_conv2d1x124_o[32:0];

    // bgTrunc_i_add_conv2d1x124_sel_x(BITSELECT,122)@6
    assign bgTrunc_i_add_conv2d1x124_sel_x_b = i_add_conv2d1x124_q[31:0];

    // i_idxprom11_conv2d1x125_sel_x(BITSELECT,145)@6
    assign i_idxprom11_conv2d1x125_sel_x_b = $unsigned({{32{bgTrunc_i_add_conv2d1x124_sel_x_b[31]}}, bgTrunc_i_add_conv2d1x124_sel_x_b[31:0]});

    // i_arrayidx123_conv2d1x10_narrow_x(BITSELECT,130)@6
    assign i_arrayidx123_conv2d1x10_narrow_x_b = i_idxprom11_conv2d1x125_sel_x_b[61:0];

    // i_arrayidx123_conv2d1x10_shift_join_x(BITJOIN,131)@6
    assign i_arrayidx123_conv2d1x10_shift_join_x_q = {i_arrayidx123_conv2d1x10_narrow_x_b, i_arrayidx123_conv2d1x127_vt_const_1_q};

    // valid_fanout_reg9(REG,163)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist23_sync_together127_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x126(BLACKBOX,99)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0001put_im_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x126 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x126_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x126_vt_select_63(BITSELECT,102)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x126_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x126_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x126_vt_join(BITJOIN,101)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x126_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x126_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d1x133_vt_const_9_q};

    // i_arrayidx123_conv2d1x10_add_x(ADD,128)@6
    assign i_arrayidx123_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x126_vt_join_q};
    assign i_arrayidx123_conv2d1x10_add_x_b = {1'b0, i_arrayidx123_conv2d1x10_shift_join_x_q};
    assign i_arrayidx123_conv2d1x10_add_x_o = $unsigned(i_arrayidx123_conv2d1x10_add_x_a) + $unsigned(i_arrayidx123_conv2d1x10_add_x_b);
    assign i_arrayidx123_conv2d1x10_add_x_q = i_arrayidx123_conv2d1x10_add_x_o[64:0];

    // i_arrayidx123_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,133)@6
    assign i_arrayidx123_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx123_conv2d1x10_add_x_q[63:0];

    // i_arrayidx123_conv2d1x127_vt_select_63(BITSELECT,48)@6
    assign i_arrayidx123_conv2d1x127_vt_select_63_b = i_arrayidx123_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx123_conv2d1x127_vt_join(BITJOIN,47)@6
    assign i_arrayidx123_conv2d1x127_vt_join_q = {i_arrayidx123_conv2d1x127_vt_select_63_b, i_arrayidx123_conv2d1x127_vt_const_1_q};

    // valid_fanout_reg7(REG,161)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist22_sync_together127_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg8(REG,162)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist23_sync_together127_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i32_ij_028_pop1038_push31_conv2d1x123(BLACKBOX,89)@6
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    conv2d1x1_i_llvm_fpga_push_i32_ij_028_pop1038_push31_0 thei_llvm_fpga_push_i32_ij_028_pop1038_push31_conv2d1x123 (
        .in_data_in(redist31_i_llvm_fpga_pop_i32_ij_028_pop1038_pop31_conv2d1x122_out_data_out_1_q),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i32_ij_028_pop1038_pop31_conv2d1x122_out_feedback_stall_out_31),
        .in_keep_going(redist33_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i32_ij_028_pop1038_push31_conv2d1x123_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i32_ij_028_pop1038_push31_conv2d1x123_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_notEnable(LOGICAL,265)
    assign redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_nor(LOGICAL,266)
    assign redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_nor_q = ~ (redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_notEnable_q | redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_sticky_ena_q);

    // redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_mem_last(CONSTANT,262)
    assign redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_cmp(LOGICAL,263)
    assign redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_cmp_q = $unsigned(redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_mem_last_q == redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_cmpReg(REG,264)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_cmpReg_q <= $unsigned(redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_cmp_q);
        end
    end

    // redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_sticky_ena(REG,267)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_nor_q == 1'b1)
        begin
            redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_sticky_ena_q <= $unsigned(redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_cmpReg_q);
        end
    end

    // redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_enaAnd(LOGICAL,268)
    assign redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_enaAnd_q = redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_sticky_ena_q & VCC_q;

    // redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_rdcnt(COUNTER,260)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_rdcnt_i <= 2'd0;
            redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_rdcnt_i == 2'd1)
            begin
                redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_rdcnt_i <= $unsigned(redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_rdcnt_i <= $unsigned(redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_rdcnt_q = redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_rdcnt_i[1:0];

    // redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_wraddr(REG,261)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_wraddr_q <= $unsigned(redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_rdcnt_q);
        end
    end

    // redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_mem(DUALMEM,259)
    assign redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_mem_ia = $unsigned(in_c0_eni18_4_tpl);
    assign redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_mem_aa = redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_wraddr_q;
    assign redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_mem_ab = redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_rdcnt_q;
    assign redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
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
    ) redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_mem_dmem (
        .clocken1(redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_mem_aa),
        .data_a(redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_mem_ab),
        .q_b(redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_mem_iq),
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
    assign redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_mem_q = redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_mem_iq[31:0];

    // i_llvm_fpga_pop_i32_ij_028_pop1038_pop31_conv2d1x122(BLACKBOX,75)@5
    // out out_feedback_stall_out_31@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_ij_028_pop1038_pop31_0 thei_llvm_fpga_pop_i32_ij_028_pop1038_pop31_conv2d1x122 (
        .in_data_in(redist6_sync_together127_aunroll_x_in_c0_eni18_4_tpl_4_mem_q),
        .in_dir(redist2_sync_together127_aunroll_x_in_c0_eni18_1_tpl_4_q),
        .in_feedback_in_31(i_llvm_fpga_push_i32_ij_028_pop1038_push31_conv2d1x123_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i32_ij_028_pop1038_push31_conv2d1x123_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_ij_028_pop1038_pop31_conv2d1x122_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i32_ij_028_pop1038_pop31_conv2d1x122_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist31_i_llvm_fpga_pop_i32_ij_028_pop1038_pop31_conv2d1x122_out_data_out_1(DELAY,256)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_pop_i32_ij_028_pop1038_pop31_conv2d1x122_out_data_out_1_q <= '0;
        end
        else
        begin
            redist31_i_llvm_fpga_pop_i32_ij_028_pop1038_pop31_conv2d1x122_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_ij_028_pop1038_pop31_conv2d1x122_out_data_out);
        end
    end

    // sync_out_aunroll_x(GPOUT,152)@6
    assign out_c0_exi21_0_tpl = GND_q;
    assign out_c0_exi21_1_tpl = redist33_i_llvm_fpga_pipeline_keep_going_conv2d1x16_out_data_out_2_q;
    assign out_c0_exi21_2_tpl = i_llvm_fpga_pop_i1_pop24_conv2d1x115_out_data_out;
    assign out_c0_exi21_3_tpl = redist31_i_llvm_fpga_pop_i32_ij_028_pop1038_pop31_conv2d1x122_out_data_out_1_q;
    assign out_c0_exi21_4_tpl = i_arrayidx123_conv2d1x127_vt_join_q;
    assign out_c0_exi21_5_tpl = i_first_cleanup_xor_or_conv2d1x128_q;
    assign out_c0_exi21_6_tpl = i_arrayidx164_conv2d1x134_vt_join_q;
    assign out_c0_exi21_7_tpl = i_masked_conv2d1x147_q;
    assign out_c0_exi21_8_tpl = redist32_i_llvm_fpga_pop_i1_pop25_conv2d1x148_out_data_out_4_q;
    assign out_c0_exi21_9_tpl = redist29_i_llvm_fpga_pop_i32_mul2334_pop28_conv2d1x150_out_data_out_4_q;
    assign out_c0_exi21_10_tpl = i_llvm_fpga_pop_i1_notcmp2236_pop29_conv2d1x152_out_data_out;
    assign out_c0_exi21_11_tpl = i_llvm_fpga_pop_i1_notcmp1737_pop30_conv2d1x154_out_data_out;
    assign out_c0_exi21_12_tpl = redist3_sync_together127_aunroll_x_in_c0_eni18_1_tpl_5_q;
    assign out_c0_exi21_13_tpl = redist12_sync_together127_aunroll_x_in_c0_eni18_10_tpl_5_mem_q;
    assign out_c0_exi21_14_tpl = redist13_sync_together127_aunroll_x_in_c0_eni18_11_tpl_5_q;
    assign out_c0_exi21_15_tpl = redist14_sync_together127_aunroll_x_in_c0_eni18_12_tpl_5_q;
    assign out_c0_exi21_16_tpl = redist15_sync_together127_aunroll_x_in_c0_eni18_13_tpl_5_mem_q;
    assign out_c0_exi21_17_tpl = redist16_sync_together127_aunroll_x_in_c0_eni18_14_tpl_5_mem_q;
    assign out_c0_exi21_18_tpl = redist17_sync_together127_aunroll_x_in_c0_eni18_15_tpl_5_mem_q;
    assign out_c0_exi21_19_tpl = redist18_sync_together127_aunroll_x_in_c0_eni18_16_tpl_5_mem_q;
    assign out_c0_exi21_20_tpl = redist19_sync_together127_aunroll_x_in_c0_eni18_17_tpl_5_q;
    assign out_c0_exi21_21_tpl = redist20_sync_together127_aunroll_x_in_c0_eni18_18_tpl_5_mem_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d1x16 = GND_q;

endmodule
