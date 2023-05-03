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

// SystemVerilog created from mmul_i_sfc_logic_s_c0_in_for_body8_s_c0_enter7214_mmul0
// SystemVerilog created on Wed May  3 13:07:53 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_i_sfc_logic_s_c0_in_for_body8_s_c0_enter7214_mmul0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_A,
    input wire [63:0] in_B,
    input wire [31:0] in_N,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_1_0,
    output wire [0:0] out_c0_exi19_0_tpl,
    output wire [0:0] out_c0_exi19_1_tpl,
    output wire [0:0] out_c0_exi19_2_tpl,
    output wire [31:0] out_c0_exi19_3_tpl,
    output wire [63:0] out_c0_exi19_4_tpl,
    output wire [0:0] out_c0_exi19_5_tpl,
    output wire [0:0] out_c0_exi19_6_tpl,
    output wire [31:0] out_c0_exi19_7_tpl,
    output wire [63:0] out_c0_exi19_8_tpl,
    output wire [0:0] out_c0_exi19_9_tpl,
    output wire [0:0] out_c0_exi19_10_tpl,
    output wire [0:0] out_c0_exi19_11_tpl,
    output wire [0:0] out_c0_exi19_12_tpl,
    output wire [0:0] out_c0_exi19_13_tpl,
    output wire [0:0] out_c0_exi19_14_tpl,
    output wire [0:0] out_c0_exi19_15_tpl,
    output wire [31:0] out_c0_exi19_16_tpl,
    output wire [0:0] out_c0_exi19_17_tpl,
    output wire [0:0] out_c0_exi19_18_tpl,
    output wire [0:0] out_c0_exi19_19_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_mmul3,
    input wire [0:0] in_c0_eni13_0_tpl,
    input wire [0:0] in_c0_eni13_1_tpl,
    input wire [31:0] in_c0_eni13_2_tpl,
    input wire [0:0] in_c0_eni13_3_tpl,
    input wire [0:0] in_c0_eni13_4_tpl,
    input wire [31:0] in_c0_eni13_5_tpl,
    input wire [0:0] in_c0_eni13_6_tpl,
    input wire [0:0] in_c0_eni13_7_tpl,
    input wire [0:0] in_c0_eni13_8_tpl,
    input wire [0:0] in_c0_eni13_9_tpl,
    input wire [31:0] in_c0_eni13_10_tpl,
    input wire [0:0] in_c0_eni13_11_tpl,
    input wire [0:0] in_c0_eni13_12_tpl,
    input wire [0:0] in_c0_eni13_13_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_195_q;
    wire [31:0] c_i32_098_q;
    wire [31:0] c_i32_199_q;
    wire [32:0] c_i33_1101_q;
    wire [32:0] c_i33_undef97_q;
    wire [0:0] i_acc_control_signal_mmul38_q;
    wire [32:0] i_add10_mmul34_a;
    wire [32:0] i_add10_mmul34_b;
    logic [32:0] i_add10_mmul34_o;
    wire [32:0] i_add10_mmul34_q;
    wire [32:0] i_add_mmul20_a;
    wire [32:0] i_add_mmul20_b;
    logic [32:0] i_add_mmul20_o;
    wire [32:0] i_add_mmul20_q;
    wire [1:0] i_arrayidx122_mmul37_vt_const_1_q;
    wire [63:0] i_arrayidx122_mmul37_vt_join_q;
    wire [61:0] i_arrayidx122_mmul37_vt_select_63_b;
    wire [63:0] i_arrayidx1_mmul23_vt_join_q;
    wire [61:0] i_arrayidx1_mmul23_vt_select_63_b;
    wire [1:0] i_cleanups_shl_mmul5_vt_join_q;
    wire [0:0] i_cleanups_shl_mmul5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_mmul4_q;
    wire [0:0] i_first_cleanup_xor_or_mmul29_q;
    wire [33:0] i_fpga_indvars_iv_next_mmul43_a;
    wire [33:0] i_fpga_indvars_iv_next_mmul43_b;
    logic [33:0] i_fpga_indvars_iv_next_mmul43_o;
    wire [33:0] i_fpga_indvars_iv_next_mmul43_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_mmul14_s;
    reg [32:0] i_fpga_indvars_iv_replace_phi_mmul14_q;
    wire [32:0] i_inc_mmul39_a;
    wire [32:0] i_inc_mmul39_b;
    logic [32:0] i_inc_mmul39_o;
    wire [32:0] i_inc_mmul39_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp275_mmul15_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp278_mmul45_out_dest_data_out_0_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_mmul8_mmul12_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi17_pop925_pop25_mmul24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi17_pop925_pop25_mmul24_out_feedback_stall_out_25;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1228_pop29_mmul26_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1228_pop29_mmul26_out_feedback_stall_out_29;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1226_pop27_mmul59_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1226_pop27_mmul59_out_feedback_stall_out_27;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1623_pop24_mmul55_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1623_pop24_mmul55_out_feedback_stall_out_24;
    wire [0:0] i_llvm_fpga_pop_i1_pop23_mmul53_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop23_mmul53_out_feedback_stall_out_23;
    wire [0:0] i_llvm_fpga_pop_i1_pop26_mmul57_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop26_mmul57_out_feedback_stall_out_26;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop21_mmul2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop21_mmul2_out_feedback_stall_out_21;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop20_mmul7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop20_mmul7_out_feedback_stall_out_20;
    wire [31:0] i_llvm_fpga_pop_i32_j_025_pop1127_pop28_mmul32_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_025_pop1127_pop28_mmul32_out_feedback_stall_out_28;
    wire [31:0] i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_feedback_stall_out_18;
    wire [31:0] i_llvm_fpga_pop_i32_mul21_pop22_mmul18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul21_pop22_mmul18_out_feedback_stall_out_22;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop17_mmul13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop17_mmul13_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_mmul11_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_mmul11_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi17_pop925_push25_mmul25_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi17_pop925_push25_mmul25_out_feedback_valid_out_25;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1228_push29_mmul27_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1228_push29_mmul27_out_feedback_valid_out_29;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1226_push27_mmul60_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1226_push27_mmul60_out_feedback_valid_out_27;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1623_push24_mmul56_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1623_push24_mmul56_out_feedback_valid_out_24;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_mmul48_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_mmul48_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_push23_mmul54_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i1_push23_mmul54_out_feedback_valid_out_23;
    wire [0:0] i_llvm_fpga_push_i1_push26_mmul58_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i1_push26_mmul58_out_feedback_valid_out_26;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push21_mmul51_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push21_mmul51_out_feedback_valid_out_21;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push20_mmul9_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push20_mmul9_out_feedback_valid_out_20;
    wire [31:0] i_llvm_fpga_push_i32_j_025_pop1127_push28_mmul33_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i32_j_025_pop1127_push28_mmul33_out_feedback_valid_out_28;
    wire [31:0] i_llvm_fpga_push_i32_k_022_push18_mmul40_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i32_k_022_push18_mmul40_out_feedback_valid_out_18;
    wire [31:0] i_llvm_fpga_push_i32_mul21_push22_mmul19_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i32_mul21_push22_mmul19_out_feedback_valid_out_22;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push17_mmul44_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push17_mmul44_out_feedback_valid_out_17;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul30_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul36_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul36_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul36_vt_select_63_b;
    wire [0:0] i_masked_mmul52_qi;
    reg [0:0] i_masked_mmul52_q;
    wire [0:0] i_memdep_phi17_or_mmul28_qi;
    reg [0:0] i_memdep_phi17_or_mmul28_q;
    wire [0:0] i_next_cleanups_mmul50_s;
    reg [1:0] i_next_cleanups_mmul50_q;
    wire [1:0] i_next_initerations_mmul8_vt_join_q;
    wire [0:0] i_next_initerations_mmul8_vt_select_0_b;
    wire [0:0] i_notcmp_mmul47_q;
    wire [0:0] i_or_mmul49_q;
    wire [0:0] i_unnamed_mmul16_q;
    wire [0:0] i_unnamed_mmul46_q;
    wire [31:0] bgTrunc_i_add10_mmul34_sel_x_b;
    wire [31:0] bgTrunc_i_add_mmul20_sel_x_b;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_mmul43_sel_x_b;
    wire [31:0] bgTrunc_i_inc_mmul39_sel_x_b;
    wire [63:0] bgTrunc_i_mul9_mmul31_sel_x_in;
    wire [31:0] bgTrunc_i_mul9_mmul31_sel_x_b;
    wire [64:0] i_arrayidx122_mmul0_add_x_a;
    wire [64:0] i_arrayidx122_mmul0_add_x_b;
    logic [64:0] i_arrayidx122_mmul0_add_x_o;
    wire [64:0] i_arrayidx122_mmul0_add_x_q;
    wire [61:0] i_arrayidx122_mmul0_narrow_x_b;
    wire [63:0] i_arrayidx122_mmul0_shift_join_x_q;
    wire [63:0] i_arrayidx122_mmul0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx1_mmul0_add_x_a;
    wire [64:0] i_arrayidx1_mmul0_add_x_b;
    logic [64:0] i_arrayidx1_mmul0_add_x_o;
    wire [64:0] i_arrayidx1_mmul0_add_x_q;
    wire [61:0] i_arrayidx1_mmul0_narrow_x_b;
    wire [63:0] i_arrayidx1_mmul0_shift_join_x_q;
    wire [63:0] i_arrayidx1_mmul0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_mmul3_sel_x_b;
    wire [63:0] i_idxprom11_mmul35_sel_x_b;
    wire [63:0] i_idxprom_mmul21_sel_x_b;
    wire [0:0] i_last_initeration_mmul10_sel_x_b;
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
    wire [0:0] i_exitcond_mmul41_cmp_nsign_q;
    wire [63:0] i_mul9_mmul31_sums_join_0_q;
    wire [50:0] i_mul9_mmul31_sums_align_1_q;
    wire [50:0] i_mul9_mmul31_sums_align_1_qint;
    wire [64:0] i_mul9_mmul31_sums_result_add_0_0_a;
    wire [64:0] i_mul9_mmul31_sums_result_add_0_0_b;
    logic [64:0] i_mul9_mmul31_sums_result_add_0_0_o;
    wire [64:0] i_mul9_mmul31_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid222_i_cleanups_shl_mmul0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid222_i_cleanups_shl_mmul0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid223_i_cleanups_shl_mmul0_shift_x_q;
    wire [0:0] leftShiftStage0_uid225_i_cleanups_shl_mmul0_shift_x_s;
    reg [1:0] leftShiftStage0_uid225_i_cleanups_shl_mmul0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid229_i_next_initerations_mmul0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid231_i_next_initerations_mmul0_shift_x_q;
    wire [0:0] rightShiftStage0_uid233_i_next_initerations_mmul0_shift_x_s;
    reg [1:0] rightShiftStage0_uid233_i_next_initerations_mmul0_shift_x_q;
    wire i_mul9_mmul31_im0_cma_reset;
    wire [13:0] i_mul9_mmul31_im0_cma_a0;
    wire [13:0] i_mul9_mmul31_im0_cma_c0;
    wire [27:0] i_mul9_mmul31_im0_cma_s0;
    wire [27:0] i_mul9_mmul31_im0_cma_qq;
    wire [27:0] i_mul9_mmul31_im0_cma_q;
    wire i_mul9_mmul31_im0_cma_ena0;
    wire i_mul9_mmul31_im0_cma_ena1;
    wire i_mul9_mmul31_im0_cma_ena2;
    wire i_mul9_mmul31_im8_cma_reset;
    wire [17:0] i_mul9_mmul31_im8_cma_a0;
    wire [17:0] i_mul9_mmul31_im8_cma_c0;
    wire [35:0] i_mul9_mmul31_im8_cma_s0;
    wire [35:0] i_mul9_mmul31_im8_cma_qq;
    wire [35:0] i_mul9_mmul31_im8_cma_q;
    wire i_mul9_mmul31_im8_cma_ena0;
    wire i_mul9_mmul31_im8_cma_ena1;
    wire i_mul9_mmul31_im8_cma_ena2;
    wire i_mul9_mmul31_ma3_cma_reset;
    wire [13:0] i_mul9_mmul31_ma3_cma_a0;
    wire [17:0] i_mul9_mmul31_ma3_cma_c0;
    wire [13:0] i_mul9_mmul31_ma3_cma_a1;
    wire [17:0] i_mul9_mmul31_ma3_cma_c1;
    wire [32:0] i_mul9_mmul31_ma3_cma_s0;
    wire [32:0] i_mul9_mmul31_ma3_cma_qq;
    wire [32:0] i_mul9_mmul31_ma3_cma_q;
    wire i_mul9_mmul31_ma3_cma_ena0;
    wire i_mul9_mmul31_ma3_cma_ena1;
    wire i_mul9_mmul31_ma3_cma_ena2;
    wire [13:0] i_mul9_mmul31_bs1_merged_bit_select_b;
    wire [17:0] i_mul9_mmul31_bs1_merged_bit_select_c;
    wire [13:0] i_mul9_mmul31_bs2_merged_bit_select_b;
    wire [17:0] i_mul9_mmul31_bs2_merged_bit_select_c;
    reg [0:0] redist0_sync_together136_aunroll_x_in_c0_eni13_1_tpl_1_q;
    reg [0:0] redist1_sync_together136_aunroll_x_in_c0_eni13_1_tpl_4_q;
    reg [0:0] redist1_sync_together136_aunroll_x_in_c0_eni13_1_tpl_4_delay_0;
    reg [0:0] redist1_sync_together136_aunroll_x_in_c0_eni13_1_tpl_4_delay_1;
    reg [0:0] redist2_sync_together136_aunroll_x_in_c0_eni13_1_tpl_5_q;
    reg [31:0] redist3_sync_together136_aunroll_x_in_c0_eni13_2_tpl_1_q;
    reg [0:0] redist4_sync_together136_aunroll_x_in_c0_eni13_3_tpl_1_q;
    reg [0:0] redist5_sync_together136_aunroll_x_in_c0_eni13_4_tpl_1_q;
    reg [0:0] redist7_sync_together136_aunroll_x_in_c0_eni13_6_tpl_1_q;
    reg [0:0] redist8_sync_together136_aunroll_x_in_c0_eni13_7_tpl_1_q;
    reg [0:0] redist9_sync_together136_aunroll_x_in_c0_eni13_8_tpl_5_q;
    reg [0:0] redist9_sync_together136_aunroll_x_in_c0_eni13_8_tpl_5_delay_0;
    reg [0:0] redist9_sync_together136_aunroll_x_in_c0_eni13_8_tpl_5_delay_1;
    reg [0:0] redist9_sync_together136_aunroll_x_in_c0_eni13_8_tpl_5_delay_2;
    reg [0:0] redist9_sync_together136_aunroll_x_in_c0_eni13_8_tpl_5_delay_3;
    reg [0:0] redist10_sync_together136_aunroll_x_in_c0_eni13_9_tpl_1_q;
    reg [0:0] redist12_sync_together136_aunroll_x_in_c0_eni13_11_tpl_5_q;
    reg [0:0] redist12_sync_together136_aunroll_x_in_c0_eni13_11_tpl_5_delay_0;
    reg [0:0] redist12_sync_together136_aunroll_x_in_c0_eni13_11_tpl_5_delay_1;
    reg [0:0] redist12_sync_together136_aunroll_x_in_c0_eni13_11_tpl_5_delay_2;
    reg [0:0] redist12_sync_together136_aunroll_x_in_c0_eni13_11_tpl_5_delay_3;
    reg [0:0] redist13_sync_together136_aunroll_x_in_c0_eni13_12_tpl_5_q;
    reg [0:0] redist13_sync_together136_aunroll_x_in_c0_eni13_12_tpl_5_delay_0;
    reg [0:0] redist13_sync_together136_aunroll_x_in_c0_eni13_12_tpl_5_delay_1;
    reg [0:0] redist13_sync_together136_aunroll_x_in_c0_eni13_12_tpl_5_delay_2;
    reg [0:0] redist13_sync_together136_aunroll_x_in_c0_eni13_12_tpl_5_delay_3;
    reg [0:0] redist14_sync_together136_aunroll_x_in_c0_eni13_13_tpl_5_q;
    reg [0:0] redist14_sync_together136_aunroll_x_in_c0_eni13_13_tpl_5_delay_0;
    reg [0:0] redist14_sync_together136_aunroll_x_in_c0_eni13_13_tpl_5_delay_1;
    reg [0:0] redist14_sync_together136_aunroll_x_in_c0_eni13_13_tpl_5_delay_2;
    reg [0:0] redist14_sync_together136_aunroll_x_in_c0_eni13_13_tpl_5_delay_3;
    reg [0:0] redist15_sync_together136_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist16_sync_together136_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist16_sync_together136_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist17_sync_together136_aunroll_x_in_i_valid_4_q;
    reg [31:0] redist18_bgTrunc_i_mul9_mmul31_sel_x_b_1_q;
    reg [0:0] redist19_i_memdep_phi17_or_mmul28_q_4_q;
    reg [0:0] redist19_i_memdep_phi17_or_mmul28_q_4_delay_0;
    reg [0:0] redist19_i_memdep_phi17_or_mmul28_q_4_delay_1;
    reg [0:0] redist20_i_masked_mmul52_q_4_q;
    reg [0:0] redist20_i_masked_mmul52_q_4_delay_0;
    reg [0:0] redist20_i_masked_mmul52_q_4_delay_1;
    reg [31:0] redist21_i_llvm_fpga_pop_i32_mul21_pop22_mmul18_out_data_out_4_q;
    reg [31:0] redist21_i_llvm_fpga_pop_i32_mul21_pop22_mmul18_out_data_out_4_delay_0;
    reg [31:0] redist22_i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_data_out_1_q;
    reg [31:0] redist23_i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_data_out_4_q;
    reg [31:0] redist23_i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_data_out_4_delay_0;
    reg [31:0] redist24_i_llvm_fpga_pop_i32_j_025_pop1127_pop28_mmul32_out_data_out_1_q;
    reg [0:0] redist25_i_llvm_fpga_pop_i1_pop23_mmul53_out_data_out_4_q;
    reg [0:0] redist25_i_llvm_fpga_pop_i1_pop23_mmul53_out_data_out_4_delay_0;
    reg [0:0] redist25_i_llvm_fpga_pop_i1_pop23_mmul53_out_data_out_4_delay_1;
    reg [0:0] redist25_i_llvm_fpga_pop_i1_pop23_mmul53_out_data_out_4_delay_2;
    reg [0:0] redist26_i_llvm_fpga_pop_i1_notcmp1623_pop24_mmul55_out_data_out_4_q;
    reg [0:0] redist26_i_llvm_fpga_pop_i1_notcmp1623_pop24_mmul55_out_data_out_4_delay_0;
    reg [0:0] redist26_i_llvm_fpga_pop_i1_notcmp1623_pop24_mmul55_out_data_out_4_delay_1;
    reg [0:0] redist26_i_llvm_fpga_pop_i1_notcmp1623_pop24_mmul55_out_data_out_4_delay_2;
    reg [0:0] redist27_i_llvm_fpga_pop_i1_notcmp1226_pop27_mmul59_out_data_out_4_q;
    reg [0:0] redist27_i_llvm_fpga_pop_i1_notcmp1226_pop27_mmul59_out_data_out_4_delay_0;
    reg [0:0] redist27_i_llvm_fpga_pop_i1_notcmp1226_pop27_mmul59_out_data_out_4_delay_1;
    reg [0:0] redist27_i_llvm_fpga_pop_i1_notcmp1226_pop27_mmul59_out_data_out_4_delay_2;
    reg [0:0] redist28_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q;
    reg [0:0] redist29_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_2_q;
    reg [0:0] redist30_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_q;
    reg [0:0] redist30_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_delay_0;
    reg [0:0] redist30_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_delay_1;
    reg [0:0] redist31_i_first_cleanup_xor_mmul4_q_4_q;
    reg [0:0] redist31_i_first_cleanup_xor_mmul4_q_4_delay_0;
    reg [0:0] redist31_i_first_cleanup_xor_mmul4_q_4_delay_1;
    reg [0:0] redist31_i_first_cleanup_xor_mmul4_q_4_delay_2;
    wire redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_mem_reset0;
    wire [31:0] redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_mem_ia;
    wire [1:0] redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_mem_aa;
    wire [1:0] redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_mem_ab;
    wire [31:0] redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_mem_iq;
    wire [31:0] redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_mem_q;
    wire [1:0] redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_rdcnt_i;
    (* preserve *) reg redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_rdcnt_eq;
    reg [1:0] redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_wraddr_q;
    wire [1:0] redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_mem_last_q;
    wire [0:0] redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_cmpReg_q;
    wire [0:0] redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_notEnable_q;
    wire [0:0] redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_sticky_ena_q;
    wire [0:0] redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_enaAnd_q;
    wire redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_mem_reset0;
    wire [31:0] redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_mem_ia;
    wire [1:0] redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_mem_aa;
    wire [1:0] redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_mem_ab;
    wire [31:0] redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_mem_iq;
    wire [31:0] redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_mem_q;
    wire [1:0] redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_rdcnt_i;
    reg [1:0] redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_wraddr_q;
    wire [2:0] redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_mem_last_q;
    wire [2:0] redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_cmp_b;
    wire [0:0] redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_cmpReg_q;
    wire [0:0] redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_notEnable_q;
    wire [0:0] redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_sticky_ena_q;
    wire [0:0] redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_enaAnd_q;
    reg [31:0] redist21_i_llvm_fpga_pop_i32_mul21_pop22_mmul18_out_data_out_4_inputreg0_q;
    reg [31:0] redist21_i_llvm_fpga_pop_i32_mul21_pop22_mmul18_out_data_out_4_outputreg0_q;
    reg [31:0] redist23_i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_data_out_4_outputreg0_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist15_sync_together136_aunroll_x_in_i_valid_1(DELAY,254)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together136_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist15_sync_together136_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist28_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1(DELAY,267)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist28_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid222_i_cleanups_shl_mmul0_shift_x(BITSELECT,221)@2
    assign leftShiftStage0Idx1Rng1_uid222_i_cleanups_shl_mmul0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop21_mmul2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid222_i_cleanups_shl_mmul0_shift_x_b = leftShiftStage0Idx1Rng1_uid222_i_cleanups_shl_mmul0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid223_i_cleanups_shl_mmul0_shift_x(BITJOIN,222)@2
    assign leftShiftStage0Idx1_uid223_i_cleanups_shl_mmul0_shift_x_q = {leftShiftStage0Idx1Rng1_uid222_i_cleanups_shl_mmul0_shift_x_b, GND_q};

    // leftShiftStage0_uid225_i_cleanups_shl_mmul0_shift_x(MUX,224)@2
    assign leftShiftStage0_uid225_i_cleanups_shl_mmul0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid225_i_cleanups_shl_mmul0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop21_mmul2_out_data_out or leftShiftStage0Idx1_uid223_i_cleanups_shl_mmul0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid225_i_cleanups_shl_mmul0_shift_x_s)
            1'b0 : leftShiftStage0_uid225_i_cleanups_shl_mmul0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop21_mmul2_out_data_out;
            1'b1 : leftShiftStage0_uid225_i_cleanups_shl_mmul0_shift_x_q = leftShiftStage0Idx1_uid223_i_cleanups_shl_mmul0_shift_x_q;
            default : leftShiftStage0_uid225_i_cleanups_shl_mmul0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_mmul5_vt_select_1(BITSELECT,58)@2
    assign i_cleanups_shl_mmul5_vt_select_1_b = leftShiftStage0_uid225_i_cleanups_shl_mmul0_shift_x_q[1:1];

    // i_cleanups_shl_mmul5_vt_join(BITJOIN,57)@2
    assign i_cleanups_shl_mmul5_vt_join_q = {i_cleanups_shl_mmul5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_mmul4(LOGICAL,61)@2
    assign i_first_cleanup_xor_mmul4_q = i_first_cleanup_mmul3_sel_x_b ^ VCC_q;

    // i_notcmp_mmul47(LOGICAL,117)@2
    assign i_notcmp_mmul47_q = i_unnamed_mmul46_q ^ VCC_q;

    // i_or_mmul49(LOGICAL,118)@2
    assign i_or_mmul49_q = i_notcmp_mmul47_q | i_first_cleanup_xor_mmul4_q;

    // i_next_cleanups_mmul50(MUX,113)@2
    assign i_next_cleanups_mmul50_s = i_or_mmul49_q;
    always @(i_next_cleanups_mmul50_s or i_llvm_fpga_pop_i2_cleanups_pop21_mmul2_out_data_out or i_cleanups_shl_mmul5_vt_join_q)
    begin
        unique case (i_next_cleanups_mmul50_s)
            1'b0 : i_next_cleanups_mmul50_q = i_llvm_fpga_pop_i2_cleanups_pop21_mmul2_out_data_out;
            1'b1 : i_next_cleanups_mmul50_q = i_cleanups_shl_mmul5_vt_join_q;
            default : i_next_cleanups_mmul50_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push21_mmul51(BLACKBOX,95)@2
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    mmul_i_llvm_fpga_push_i2_cleanups_push21_0 thei_llvm_fpga_push_i2_cleanups_push21_mmul51 (
        .in_data_in(i_next_cleanups_mmul50_q),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i2_cleanups_pop21_mmul2_out_feedback_stall_out_21),
        .in_keep_going(redist28_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist15_sync_together136_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i2_cleanups_push21_mmul51_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i2_cleanups_push21_mmul51_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together136_aunroll_x_in_c0_eni13_1_tpl_1(DELAY,239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together136_aunroll_x_in_c0_eni13_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together136_aunroll_x_in_c0_eni13_1_tpl_1_q <= $unsigned(in_c0_eni13_1_tpl);
        end
    end

    // c_i2_195(CONSTANT,41)
    assign c_i2_195_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop21_mmul2(BLACKBOX,81)@2
    // out out_feedback_stall_out_21@20000000
    mmul_i_llvm_fpga_pop_i2_cleanups_pop21_0 thei_llvm_fpga_pop_i2_cleanups_pop21_mmul2 (
        .in_data_in(c_i2_195_q),
        .in_dir(redist0_sync_together136_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_21(i_llvm_fpga_push_i2_cleanups_push21_mmul51_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i2_cleanups_push21_mmul51_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist15_sync_together136_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop21_mmul2_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i2_cleanups_pop21_mmul2_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_mmul3_sel_x(BITSELECT,154)@2
    assign i_first_cleanup_mmul3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop21_mmul2_out_data_out[0:0];

    // i_llvm_fpga_ffwd_dest_i33_unnamed_mmul8_mmul12(BLACKBOX,73)@2
    mmul_i_llvm_fpga_ffwd_dest_i33_unnamed_8_mmul0 thei_llvm_fpga_ffwd_dest_i33_unnamed_mmul8_mmul12 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist15_sync_together136_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i33_unnamed_mmul8_mmul12_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_1101(CONSTANT,44)
    assign c_i33_1101_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_mmul43(ADD,63)@2
    assign i_fpga_indvars_iv_next_mmul43_a = {1'b0, i_fpga_indvars_iv_replace_phi_mmul14_q};
    assign i_fpga_indvars_iv_next_mmul43_b = {1'b0, c_i33_1101_q};
    assign i_fpga_indvars_iv_next_mmul43_o = $unsigned(i_fpga_indvars_iv_next_mmul43_a) + $unsigned(i_fpga_indvars_iv_next_mmul43_b);
    assign i_fpga_indvars_iv_next_mmul43_q = i_fpga_indvars_iv_next_mmul43_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_mmul43_sel_x(BITSELECT,133)@2
    assign bgTrunc_i_fpga_indvars_iv_next_mmul43_sel_x_b = i_fpga_indvars_iv_next_mmul43_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push17_mmul44(BLACKBOX,100)@2
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    mmul_i_llvm_fpga_push_i33_fpga_indvars_iv_push17_0 thei_llvm_fpga_push_i33_fpga_indvars_iv_push17_mmul44 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_mmul43_sel_x_b),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop17_mmul13_out_feedback_stall_out_17),
        .in_keep_going(redist28_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist15_sync_together136_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i33_fpga_indvars_iv_push17_mmul44_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i33_fpga_indvars_iv_push17_mmul44_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef97(CONSTANT,45)
    assign c_i33_undef97_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop17_mmul13(BLACKBOX,86)@2
    // out out_feedback_stall_out_17@20000000
    mmul_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop17_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv_pop17_mmul13 (
        .in_data_in(c_i33_undef97_q),
        .in_dir(redist0_sync_together136_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i33_fpga_indvars_iv_push17_mmul44_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i33_fpga_indvars_iv_push17_mmul44_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist15_sync_together136_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop17_mmul13_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop17_mmul13_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv_replace_phi_mmul14(MUX,64)@2
    assign i_fpga_indvars_iv_replace_phi_mmul14_s = redist0_sync_together136_aunroll_x_in_c0_eni13_1_tpl_1_q;
    always @(i_fpga_indvars_iv_replace_phi_mmul14_s or i_llvm_fpga_pop_i33_fpga_indvars_iv_pop17_mmul13_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_mmul8_mmul12_out_dest_data_out_1_0)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_mmul14_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_mmul14_q = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop17_mmul13_out_data_out;
            1'b1 : i_fpga_indvars_iv_replace_phi_mmul14_q = i_llvm_fpga_ffwd_dest_i33_unnamed_mmul8_mmul12_out_dest_data_out_1_0;
            default : i_fpga_indvars_iv_replace_phi_mmul14_q = 33'b0;
        endcase
    end

    // i_exitcond_mmul41_cmp_nsign(LOGICAL,202)@2
    assign i_exitcond_mmul41_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv_replace_phi_mmul14_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp278_mmul45(BLACKBOX,72)@2
    mmul_i_llvm_fpga_ffwd_dest_i1_cmp278_0 thei_llvm_fpga_ffwd_dest_i1_cmp278_mmul45 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist15_sync_together136_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp278_mmul45_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_mmul46(LOGICAL,120)@2
    assign i_unnamed_mmul46_q = i_llvm_fpga_ffwd_dest_i1_cmp278_mmul45_out_dest_data_out_0_0 & i_exitcond_mmul41_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_mmul48(BLACKBOX,92)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    mmul_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_mmul48 (
        .in_data_in(i_unnamed_mmul46_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_mmul6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_mmul3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist15_sync_together136_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_mmul48_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_mmul48_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,167)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid229_i_next_initerations_mmul0_shift_x(BITSELECT,228)@2
    assign rightShiftStage0Idx1Rng1_uid229_i_next_initerations_mmul0_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop20_mmul7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid231_i_next_initerations_mmul0_shift_x(BITJOIN,230)@2
    assign rightShiftStage0Idx1_uid231_i_next_initerations_mmul0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid229_i_next_initerations_mmul0_shift_x_b};

    // valid_fanout_reg1(REG,165)@1 + 1
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

    // valid_fanout_reg2(REG,166)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations_push20_mmul9(BLACKBOX,96)@2
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    mmul_i_llvm_fpga_push_i2_initerations_push20_0 thei_llvm_fpga_push_i2_initerations_push20_mmul9 (
        .in_data_in(i_next_initerations_mmul8_vt_join_q),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i2_initerations_pop20_mmul7_out_feedback_stall_out_20),
        .in_keep_going(redist28_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i2_initerations_push20_mmul9_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i2_initerations_push20_mmul9_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop20_mmul7(BLACKBOX,82)@2
    // out out_feedback_stall_out_20@20000000
    mmul_i_llvm_fpga_pop_i2_initerations_pop20_0 thei_llvm_fpga_pop_i2_initerations_pop20_mmul7 (
        .in_data_in(c_i2_195_q),
        .in_dir(redist0_sync_together136_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_20(i_llvm_fpga_push_i2_initerations_push20_mmul9_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i2_initerations_push20_mmul9_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop20_mmul7_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i2_initerations_pop20_mmul7_out_feedback_stall_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid233_i_next_initerations_mmul0_shift_x(MUX,232)@2
    assign rightShiftStage0_uid233_i_next_initerations_mmul0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid233_i_next_initerations_mmul0_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop20_mmul7_out_data_out or rightShiftStage0Idx1_uid231_i_next_initerations_mmul0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid233_i_next_initerations_mmul0_shift_x_s)
            1'b0 : rightShiftStage0_uid233_i_next_initerations_mmul0_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop20_mmul7_out_data_out;
            1'b1 : rightShiftStage0_uid233_i_next_initerations_mmul0_shift_x_q = rightShiftStage0Idx1_uid231_i_next_initerations_mmul0_shift_x_q;
            default : rightShiftStage0_uid233_i_next_initerations_mmul0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_mmul8_vt_select_0(BITSELECT,116)@2
    assign i_next_initerations_mmul8_vt_select_0_b = rightShiftStage0_uid233_i_next_initerations_mmul0_shift_x_q[0:0];

    // i_next_initerations_mmul8_vt_join(BITJOIN,115)@2
    assign i_next_initerations_mmul8_vt_join_q = {GND_q, i_next_initerations_mmul8_vt_select_0_b};

    // i_last_initeration_mmul10_sel_x(BITSELECT,157)@2
    assign i_last_initeration_mmul10_sel_x_b = i_next_initerations_mmul8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_mmul11(BLACKBOX,87)@2
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    mmul_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_mmul11 (
        .in_data_in(i_last_initeration_mmul10_sel_x_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_mmul6_out_initeration_stall_out),
        .in_keep_going(redist28_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_i1_lastiniteration_mmul11_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_i1_lastiniteration_mmul11_out_feedback_valid_out_1),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_mmul6(BLACKBOX,74)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    mmul_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_mmul6 (
        .in_data_in(in_c0_eni13_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_mmul11_out_feedback_out_1),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_mmul11_out_feedback_valid_out_1),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_mmul48_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_mmul48_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_mmul6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_mmul6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_mmul6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_mmul6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_mmul6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,46)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_mmul6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_mmul6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,124)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_mmul6_out_pipeline_valid_out;

    // redist16_sync_together136_aunroll_x_in_i_valid_3(DELAY,255)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together136_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist16_sync_together136_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist16_sync_together136_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(redist15_sync_together136_aunroll_x_in_i_valid_1_q);
            redist16_sync_together136_aunroll_x_in_i_valid_3_q <= redist16_sync_together136_aunroll_x_in_i_valid_3_delay_0;
        end
    end

    // redist17_sync_together136_aunroll_x_in_i_valid_4(DELAY,256)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together136_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist17_sync_together136_aunroll_x_in_i_valid_4_q <= $unsigned(redist16_sync_together136_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg0(REG,164)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist17_sync_together136_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist14_sync_together136_aunroll_x_in_c0_eni13_13_tpl_5(DELAY,253)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together136_aunroll_x_in_c0_eni13_13_tpl_5_delay_0 <= '0;
            redist14_sync_together136_aunroll_x_in_c0_eni13_13_tpl_5_delay_1 <= '0;
            redist14_sync_together136_aunroll_x_in_c0_eni13_13_tpl_5_delay_2 <= '0;
            redist14_sync_together136_aunroll_x_in_c0_eni13_13_tpl_5_delay_3 <= '0;
            redist14_sync_together136_aunroll_x_in_c0_eni13_13_tpl_5_q <= '0;
        end
        else
        begin
            redist14_sync_together136_aunroll_x_in_c0_eni13_13_tpl_5_delay_0 <= $unsigned(in_c0_eni13_13_tpl);
            redist14_sync_together136_aunroll_x_in_c0_eni13_13_tpl_5_delay_1 <= redist14_sync_together136_aunroll_x_in_c0_eni13_13_tpl_5_delay_0;
            redist14_sync_together136_aunroll_x_in_c0_eni13_13_tpl_5_delay_2 <= redist14_sync_together136_aunroll_x_in_c0_eni13_13_tpl_5_delay_1;
            redist14_sync_together136_aunroll_x_in_c0_eni13_13_tpl_5_delay_3 <= redist14_sync_together136_aunroll_x_in_c0_eni13_13_tpl_5_delay_2;
            redist14_sync_together136_aunroll_x_in_c0_eni13_13_tpl_5_q <= redist14_sync_together136_aunroll_x_in_c0_eni13_13_tpl_5_delay_3;
        end
    end

    // redist13_sync_together136_aunroll_x_in_c0_eni13_12_tpl_5(DELAY,252)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together136_aunroll_x_in_c0_eni13_12_tpl_5_delay_0 <= '0;
            redist13_sync_together136_aunroll_x_in_c0_eni13_12_tpl_5_delay_1 <= '0;
            redist13_sync_together136_aunroll_x_in_c0_eni13_12_tpl_5_delay_2 <= '0;
            redist13_sync_together136_aunroll_x_in_c0_eni13_12_tpl_5_delay_3 <= '0;
            redist13_sync_together136_aunroll_x_in_c0_eni13_12_tpl_5_q <= '0;
        end
        else
        begin
            redist13_sync_together136_aunroll_x_in_c0_eni13_12_tpl_5_delay_0 <= $unsigned(in_c0_eni13_12_tpl);
            redist13_sync_together136_aunroll_x_in_c0_eni13_12_tpl_5_delay_1 <= redist13_sync_together136_aunroll_x_in_c0_eni13_12_tpl_5_delay_0;
            redist13_sync_together136_aunroll_x_in_c0_eni13_12_tpl_5_delay_2 <= redist13_sync_together136_aunroll_x_in_c0_eni13_12_tpl_5_delay_1;
            redist13_sync_together136_aunroll_x_in_c0_eni13_12_tpl_5_delay_3 <= redist13_sync_together136_aunroll_x_in_c0_eni13_12_tpl_5_delay_2;
            redist13_sync_together136_aunroll_x_in_c0_eni13_12_tpl_5_q <= redist13_sync_together136_aunroll_x_in_c0_eni13_12_tpl_5_delay_3;
        end
    end

    // redist12_sync_together136_aunroll_x_in_c0_eni13_11_tpl_5(DELAY,251)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together136_aunroll_x_in_c0_eni13_11_tpl_5_delay_0 <= '0;
            redist12_sync_together136_aunroll_x_in_c0_eni13_11_tpl_5_delay_1 <= '0;
            redist12_sync_together136_aunroll_x_in_c0_eni13_11_tpl_5_delay_2 <= '0;
            redist12_sync_together136_aunroll_x_in_c0_eni13_11_tpl_5_delay_3 <= '0;
            redist12_sync_together136_aunroll_x_in_c0_eni13_11_tpl_5_q <= '0;
        end
        else
        begin
            redist12_sync_together136_aunroll_x_in_c0_eni13_11_tpl_5_delay_0 <= $unsigned(in_c0_eni13_11_tpl);
            redist12_sync_together136_aunroll_x_in_c0_eni13_11_tpl_5_delay_1 <= redist12_sync_together136_aunroll_x_in_c0_eni13_11_tpl_5_delay_0;
            redist12_sync_together136_aunroll_x_in_c0_eni13_11_tpl_5_delay_2 <= redist12_sync_together136_aunroll_x_in_c0_eni13_11_tpl_5_delay_1;
            redist12_sync_together136_aunroll_x_in_c0_eni13_11_tpl_5_delay_3 <= redist12_sync_together136_aunroll_x_in_c0_eni13_11_tpl_5_delay_2;
            redist12_sync_together136_aunroll_x_in_c0_eni13_11_tpl_5_q <= redist12_sync_together136_aunroll_x_in_c0_eni13_11_tpl_5_delay_3;
        end
    end

    // redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_notEnable(LOGICAL,287)
    assign redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_nor(LOGICAL,288)
    assign redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_nor_q = ~ (redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_notEnable_q | redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_sticky_ena_q);

    // redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_mem_last(CONSTANT,284)
    assign redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_cmp(LOGICAL,285)
    assign redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_cmp_b = {1'b0, redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_rdcnt_q};
    assign redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_cmp_q = $unsigned(redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_mem_last_q == redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_cmpReg(REG,286)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_cmpReg_q <= $unsigned(redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_cmp_q);
        end
    end

    // redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_sticky_ena(REG,289)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_nor_q == 1'b1)
        begin
            redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_sticky_ena_q <= $unsigned(redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_cmpReg_q);
        end
    end

    // redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_enaAnd(LOGICAL,290)
    assign redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_enaAnd_q = redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_sticky_ena_q & VCC_q;

    // redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_rdcnt(COUNTER,282)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_rdcnt_i <= $unsigned(redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_rdcnt_q = redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_rdcnt_i[1:0];

    // redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_wraddr(REG,283)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_wraddr_q <= $unsigned(redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_rdcnt_q);
        end
    end

    // redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_mem(DUALMEM,281)
    assign redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_mem_ia = $unsigned(in_c0_eni13_10_tpl);
    assign redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_mem_aa = redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_wraddr_q;
    assign redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_mem_ab = redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_rdcnt_q;
    assign redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_mem_dmem (
        .clocken1(redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_mem_aa),
        .data_a(redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_mem_ab),
        .q_b(redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_mem_iq),
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
    assign redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_mem_q = redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_mem_iq[31:0];

    // redist1_sync_together136_aunroll_x_in_c0_eni13_1_tpl_4(DELAY,240)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together136_aunroll_x_in_c0_eni13_1_tpl_4_delay_0 <= '0;
            redist1_sync_together136_aunroll_x_in_c0_eni13_1_tpl_4_delay_1 <= '0;
            redist1_sync_together136_aunroll_x_in_c0_eni13_1_tpl_4_q <= '0;
        end
        else
        begin
            redist1_sync_together136_aunroll_x_in_c0_eni13_1_tpl_4_delay_0 <= $unsigned(redist0_sync_together136_aunroll_x_in_c0_eni13_1_tpl_1_q);
            redist1_sync_together136_aunroll_x_in_c0_eni13_1_tpl_4_delay_1 <= redist1_sync_together136_aunroll_x_in_c0_eni13_1_tpl_4_delay_0;
            redist1_sync_together136_aunroll_x_in_c0_eni13_1_tpl_4_q <= redist1_sync_together136_aunroll_x_in_c0_eni13_1_tpl_4_delay_1;
        end
    end

    // redist2_sync_together136_aunroll_x_in_c0_eni13_1_tpl_5(DELAY,241)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together136_aunroll_x_in_c0_eni13_1_tpl_5_q <= '0;
        end
        else
        begin
            redist2_sync_together136_aunroll_x_in_c0_eni13_1_tpl_5_q <= $unsigned(redist1_sync_together136_aunroll_x_in_c0_eni13_1_tpl_4_q);
        end
    end

    // valid_fanout_reg24(REG,188)@1 + 1
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

    // valid_fanout_reg25(REG,189)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp1226_push27_mmul60(BLACKBOX,90)@2
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    mmul_i_llvm_fpga_push_i1_notcmp1226_push27_0 thei_llvm_fpga_push_i1_notcmp1226_push27_mmul60 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp1226_pop27_mmul59_out_data_out),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i1_notcmp1226_pop27_mmul59_out_feedback_stall_out_27),
        .in_keep_going(redist28_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i1_notcmp1226_push27_mmul60_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i1_notcmp1226_push27_mmul60_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_sync_together136_aunroll_x_in_c0_eni13_9_tpl_1(DELAY,249)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together136_aunroll_x_in_c0_eni13_9_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together136_aunroll_x_in_c0_eni13_9_tpl_1_q <= $unsigned(in_c0_eni13_9_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp1226_pop27_mmul59(BLACKBOX,77)@2
    // out out_feedback_stall_out_27@20000000
    mmul_i_llvm_fpga_pop_i1_notcmp1226_pop27_0 thei_llvm_fpga_pop_i1_notcmp1226_pop27_mmul59 (
        .in_data_in(redist10_sync_together136_aunroll_x_in_c0_eni13_9_tpl_1_q),
        .in_dir(redist0_sync_together136_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_27(i_llvm_fpga_push_i1_notcmp1226_push27_mmul60_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i1_notcmp1226_push27_mmul60_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1226_pop27_mmul59_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i1_notcmp1226_pop27_mmul59_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist27_i_llvm_fpga_pop_i1_notcmp1226_pop27_mmul59_out_data_out_4(DELAY,266)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_i1_notcmp1226_pop27_mmul59_out_data_out_4_delay_0 <= '0;
            redist27_i_llvm_fpga_pop_i1_notcmp1226_pop27_mmul59_out_data_out_4_delay_1 <= '0;
            redist27_i_llvm_fpga_pop_i1_notcmp1226_pop27_mmul59_out_data_out_4_delay_2 <= '0;
            redist27_i_llvm_fpga_pop_i1_notcmp1226_pop27_mmul59_out_data_out_4_q <= '0;
        end
        else
        begin
            redist27_i_llvm_fpga_pop_i1_notcmp1226_pop27_mmul59_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp1226_pop27_mmul59_out_data_out);
            redist27_i_llvm_fpga_pop_i1_notcmp1226_pop27_mmul59_out_data_out_4_delay_1 <= redist27_i_llvm_fpga_pop_i1_notcmp1226_pop27_mmul59_out_data_out_4_delay_0;
            redist27_i_llvm_fpga_pop_i1_notcmp1226_pop27_mmul59_out_data_out_4_delay_2 <= redist27_i_llvm_fpga_pop_i1_notcmp1226_pop27_mmul59_out_data_out_4_delay_1;
            redist27_i_llvm_fpga_pop_i1_notcmp1226_pop27_mmul59_out_data_out_4_q <= redist27_i_llvm_fpga_pop_i1_notcmp1226_pop27_mmul59_out_data_out_4_delay_2;
        end
    end

    // valid_fanout_reg22(REG,186)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist17_sync_together136_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg23(REG,187)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist17_sync_together136_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_push26_mmul58(BLACKBOX,94)@6
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    mmul_i_llvm_fpga_push_i1_push26_0 thei_llvm_fpga_push_i1_push26_mmul58 (
        .in_data_in(i_llvm_fpga_pop_i1_pop26_mmul57_out_data_out),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i1_pop26_mmul57_out_feedback_stall_out_26),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i1_push26_mmul58_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i1_push26_mmul58_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together136_aunroll_x_in_c0_eni13_8_tpl_5(DELAY,248)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together136_aunroll_x_in_c0_eni13_8_tpl_5_delay_0 <= '0;
            redist9_sync_together136_aunroll_x_in_c0_eni13_8_tpl_5_delay_1 <= '0;
            redist9_sync_together136_aunroll_x_in_c0_eni13_8_tpl_5_delay_2 <= '0;
            redist9_sync_together136_aunroll_x_in_c0_eni13_8_tpl_5_delay_3 <= '0;
            redist9_sync_together136_aunroll_x_in_c0_eni13_8_tpl_5_q <= '0;
        end
        else
        begin
            redist9_sync_together136_aunroll_x_in_c0_eni13_8_tpl_5_delay_0 <= $unsigned(in_c0_eni13_8_tpl);
            redist9_sync_together136_aunroll_x_in_c0_eni13_8_tpl_5_delay_1 <= redist9_sync_together136_aunroll_x_in_c0_eni13_8_tpl_5_delay_0;
            redist9_sync_together136_aunroll_x_in_c0_eni13_8_tpl_5_delay_2 <= redist9_sync_together136_aunroll_x_in_c0_eni13_8_tpl_5_delay_1;
            redist9_sync_together136_aunroll_x_in_c0_eni13_8_tpl_5_delay_3 <= redist9_sync_together136_aunroll_x_in_c0_eni13_8_tpl_5_delay_2;
            redist9_sync_together136_aunroll_x_in_c0_eni13_8_tpl_5_q <= redist9_sync_together136_aunroll_x_in_c0_eni13_8_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_pop_i1_pop26_mmul57(BLACKBOX,80)@6
    // out out_feedback_stall_out_26@20000000
    mmul_i_llvm_fpga_pop_i1_pop26_0 thei_llvm_fpga_pop_i1_pop26_mmul57 (
        .in_data_in(redist9_sync_together136_aunroll_x_in_c0_eni13_8_tpl_5_q),
        .in_dir(redist2_sync_together136_aunroll_x_in_c0_eni13_1_tpl_5_q),
        .in_feedback_in_26(i_llvm_fpga_push_i1_push26_mmul58_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i1_push26_mmul58_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop26_mmul57_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i1_pop26_mmul57_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg20(REG,184)@1 + 1
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

    // valid_fanout_reg21(REG,185)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp1623_push24_mmul56(BLACKBOX,91)@2
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    mmul_i_llvm_fpga_push_i1_notcmp1623_push24_0 thei_llvm_fpga_push_i1_notcmp1623_push24_mmul56 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp1623_pop24_mmul55_out_data_out),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i1_notcmp1623_pop24_mmul55_out_feedback_stall_out_24),
        .in_keep_going(redist28_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i1_notcmp1623_push24_mmul56_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i1_notcmp1623_push24_mmul56_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together136_aunroll_x_in_c0_eni13_7_tpl_1(DELAY,247)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together136_aunroll_x_in_c0_eni13_7_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together136_aunroll_x_in_c0_eni13_7_tpl_1_q <= $unsigned(in_c0_eni13_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp1623_pop24_mmul55(BLACKBOX,78)@2
    // out out_feedback_stall_out_24@20000000
    mmul_i_llvm_fpga_pop_i1_notcmp1623_pop24_0 thei_llvm_fpga_pop_i1_notcmp1623_pop24_mmul55 (
        .in_data_in(redist8_sync_together136_aunroll_x_in_c0_eni13_7_tpl_1_q),
        .in_dir(redist0_sync_together136_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_24(i_llvm_fpga_push_i1_notcmp1623_push24_mmul56_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i1_notcmp1623_push24_mmul56_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1623_pop24_mmul55_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i1_notcmp1623_pop24_mmul55_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist26_i_llvm_fpga_pop_i1_notcmp1623_pop24_mmul55_out_data_out_4(DELAY,265)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i1_notcmp1623_pop24_mmul55_out_data_out_4_delay_0 <= '0;
            redist26_i_llvm_fpga_pop_i1_notcmp1623_pop24_mmul55_out_data_out_4_delay_1 <= '0;
            redist26_i_llvm_fpga_pop_i1_notcmp1623_pop24_mmul55_out_data_out_4_delay_2 <= '0;
            redist26_i_llvm_fpga_pop_i1_notcmp1623_pop24_mmul55_out_data_out_4_q <= '0;
        end
        else
        begin
            redist26_i_llvm_fpga_pop_i1_notcmp1623_pop24_mmul55_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp1623_pop24_mmul55_out_data_out);
            redist26_i_llvm_fpga_pop_i1_notcmp1623_pop24_mmul55_out_data_out_4_delay_1 <= redist26_i_llvm_fpga_pop_i1_notcmp1623_pop24_mmul55_out_data_out_4_delay_0;
            redist26_i_llvm_fpga_pop_i1_notcmp1623_pop24_mmul55_out_data_out_4_delay_2 <= redist26_i_llvm_fpga_pop_i1_notcmp1623_pop24_mmul55_out_data_out_4_delay_1;
            redist26_i_llvm_fpga_pop_i1_notcmp1623_pop24_mmul55_out_data_out_4_q <= redist26_i_llvm_fpga_pop_i1_notcmp1623_pop24_mmul55_out_data_out_4_delay_2;
        end
    end

    // valid_fanout_reg18(REG,182)@1 + 1
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

    // valid_fanout_reg19(REG,183)@1 + 1
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

    // i_llvm_fpga_push_i1_push23_mmul54(BLACKBOX,93)@2
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    mmul_i_llvm_fpga_push_i1_push23_0 thei_llvm_fpga_push_i1_push23_mmul54 (
        .in_data_in(i_llvm_fpga_pop_i1_pop23_mmul53_out_data_out),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i1_pop23_mmul53_out_feedback_stall_out_23),
        .in_keep_going(redist28_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i1_push23_mmul54_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i1_push23_mmul54_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together136_aunroll_x_in_c0_eni13_6_tpl_1(DELAY,246)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together136_aunroll_x_in_c0_eni13_6_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together136_aunroll_x_in_c0_eni13_6_tpl_1_q <= $unsigned(in_c0_eni13_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_pop23_mmul53(BLACKBOX,79)@2
    // out out_feedback_stall_out_23@20000000
    mmul_i_llvm_fpga_pop_i1_pop23_0 thei_llvm_fpga_pop_i1_pop23_mmul53 (
        .in_data_in(redist7_sync_together136_aunroll_x_in_c0_eni13_6_tpl_1_q),
        .in_dir(redist0_sync_together136_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_23(i_llvm_fpga_push_i1_push23_mmul54_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i1_push23_mmul54_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop23_mmul53_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i1_pop23_mmul53_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist25_i_llvm_fpga_pop_i1_pop23_mmul53_out_data_out_4(DELAY,264)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i1_pop23_mmul53_out_data_out_4_delay_0 <= '0;
            redist25_i_llvm_fpga_pop_i1_pop23_mmul53_out_data_out_4_delay_1 <= '0;
            redist25_i_llvm_fpga_pop_i1_pop23_mmul53_out_data_out_4_delay_2 <= '0;
            redist25_i_llvm_fpga_pop_i1_pop23_mmul53_out_data_out_4_q <= '0;
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i1_pop23_mmul53_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_pop23_mmul53_out_data_out);
            redist25_i_llvm_fpga_pop_i1_pop23_mmul53_out_data_out_4_delay_1 <= redist25_i_llvm_fpga_pop_i1_pop23_mmul53_out_data_out_4_delay_0;
            redist25_i_llvm_fpga_pop_i1_pop23_mmul53_out_data_out_4_delay_2 <= redist25_i_llvm_fpga_pop_i1_pop23_mmul53_out_data_out_4_delay_1;
            redist25_i_llvm_fpga_pop_i1_pop23_mmul53_out_data_out_4_q <= redist25_i_llvm_fpga_pop_i1_pop23_mmul53_out_data_out_4_delay_2;
        end
    end

    // i_masked_mmul52(LOGICAL,110)@2 + 1
    assign i_masked_mmul52_qi = i_notcmp_mmul47_q & i_first_cleanup_mmul3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_mmul52_delay ( .xin(i_masked_mmul52_qi), .xout(i_masked_mmul52_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist20_i_masked_mmul52_q_4(DELAY,259)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_masked_mmul52_q_4_delay_0 <= '0;
            redist20_i_masked_mmul52_q_4_delay_1 <= '0;
            redist20_i_masked_mmul52_q_4_q <= '0;
        end
        else
        begin
            redist20_i_masked_mmul52_q_4_delay_0 <= $unsigned(i_masked_mmul52_q);
            redist20_i_masked_mmul52_q_4_delay_1 <= redist20_i_masked_mmul52_q_4_delay_0;
            redist20_i_masked_mmul52_q_4_q <= redist20_i_masked_mmul52_q_4_delay_1;
        end
    end

    // i_acc_control_signal_mmul38(LOGICAL,47)@6
    assign i_acc_control_signal_mmul38_q = redist2_sync_together136_aunroll_x_in_c0_eni13_1_tpl_5_q ^ VCC_q;

    // valid_fanout_reg13(REG,177)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul30(BLACKBOX,101)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    mmul_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_0 thei_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul30 (
        .in_buffer_in(in_N),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul30_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul9_mmul31_bs2_merged_bit_select(BITSELECT,238)@2
    assign i_mul9_mmul31_bs2_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul30_out_buffer_out[31:18];
    assign i_mul9_mmul31_bs2_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul30_out_buffer_out[17:0];

    // valid_fanout_reg5(REG,169)@1 + 1
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

    // valid_fanout_reg17(REG,181)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist15_sync_together136_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist29_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_2(DELAY,268)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist29_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_2_q <= $unsigned(redist28_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q);
        end
    end

    // c_i32_199(CONSTANT,43)
    assign c_i32_199_q = $unsigned(32'b00000000000000000000000000000001);

    // redist22_i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_data_out_1(DELAY,261)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_data_out_1_q <= '0;
        end
        else
        begin
            redist22_i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_data_out);
        end
    end

    // i_inc_mmul39(ADD,69)@3
    assign i_inc_mmul39_a = {1'b0, redist22_i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_data_out_1_q};
    assign i_inc_mmul39_b = {1'b0, c_i32_199_q};
    assign i_inc_mmul39_o = $unsigned(i_inc_mmul39_a) + $unsigned(i_inc_mmul39_b);
    assign i_inc_mmul39_q = i_inc_mmul39_o[32:0];

    // bgTrunc_i_inc_mmul39_sel_x(BITSELECT,134)@3
    assign bgTrunc_i_inc_mmul39_sel_x_b = i_inc_mmul39_q[31:0];

    // i_llvm_fpga_push_i32_k_022_push18_mmul40(BLACKBOX,98)@3
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    mmul_i_llvm_fpga_push_i32_k_022_push18_0 thei_llvm_fpga_push_i32_k_022_push18_mmul40 (
        .in_data_in(bgTrunc_i_inc_mmul39_sel_x_b),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_feedback_stall_out_18),
        .in_keep_going(redist29_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i32_k_022_push18_mmul40_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i32_k_022_push18_mmul40_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_098(CONSTANT,42)
    assign c_i32_098_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_k_022_pop18_mmul17(BLACKBOX,84)@2
    // out out_feedback_stall_out_18@20000000
    mmul_i_llvm_fpga_pop_i32_k_022_pop18_0 thei_llvm_fpga_pop_i32_k_022_pop18_mmul17 (
        .in_data_in(c_i32_098_q),
        .in_dir(redist0_sync_together136_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i32_k_022_push18_mmul40_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i32_k_022_push18_mmul40_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul9_mmul31_bs1_merged_bit_select(BITSELECT,237)@2
    assign i_mul9_mmul31_bs1_merged_bit_select_b = i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_data_out[31:18];
    assign i_mul9_mmul31_bs1_merged_bit_select_c = i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_data_out[17:0];

    // i_mul9_mmul31_ma3_cma(CHAINMULTADD,236)@2 + 3
    assign i_mul9_mmul31_ma3_cma_reset = ~ (resetn);
    assign i_mul9_mmul31_ma3_cma_ena0 = 1'b1;
    assign i_mul9_mmul31_ma3_cma_ena1 = i_mul9_mmul31_ma3_cma_ena0;
    assign i_mul9_mmul31_ma3_cma_ena2 = i_mul9_mmul31_ma3_cma_ena0;

    assign i_mul9_mmul31_ma3_cma_a0 = i_mul9_mmul31_bs1_merged_bit_select_b;
    assign i_mul9_mmul31_ma3_cma_c0 = i_mul9_mmul31_bs2_merged_bit_select_c;
    assign i_mul9_mmul31_ma3_cma_a1 = i_mul9_mmul31_bs2_merged_bit_select_b;
    assign i_mul9_mmul31_ma3_cma_c1 = i_mul9_mmul31_bs1_merged_bit_select_c;
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
    ) i_mul9_mmul31_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul9_mmul31_ma3_cma_ena2, i_mul9_mmul31_ma3_cma_ena1, i_mul9_mmul31_ma3_cma_ena0 }),
        .aclr({ i_mul9_mmul31_ma3_cma_reset, i_mul9_mmul31_ma3_cma_reset }),
        .ay(i_mul9_mmul31_ma3_cma_a1),
        .by(i_mul9_mmul31_ma3_cma_a0),
        .ax(i_mul9_mmul31_ma3_cma_c1),
        .bx(i_mul9_mmul31_ma3_cma_c0),
        .resulta(i_mul9_mmul31_ma3_cma_s0),
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
    i_mul9_mmul31_ma3_cma_delay ( .xin(i_mul9_mmul31_ma3_cma_s0), .xout(i_mul9_mmul31_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul9_mmul31_ma3_cma_q = $unsigned(i_mul9_mmul31_ma3_cma_qq[32:0]);

    // i_mul9_mmul31_sums_align_1(BITSHIFT,215)@5
    assign i_mul9_mmul31_sums_align_1_qint = { i_mul9_mmul31_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul9_mmul31_sums_align_1_q = i_mul9_mmul31_sums_align_1_qint[50:0];

    // i_mul9_mmul31_im0_cma(CHAINMULTADD,234)@2 + 3
    assign i_mul9_mmul31_im0_cma_reset = ~ (resetn);
    assign i_mul9_mmul31_im0_cma_ena0 = 1'b1;
    assign i_mul9_mmul31_im0_cma_ena1 = i_mul9_mmul31_im0_cma_ena0;
    assign i_mul9_mmul31_im0_cma_ena2 = i_mul9_mmul31_im0_cma_ena0;

    assign i_mul9_mmul31_im0_cma_a0 = i_mul9_mmul31_bs1_merged_bit_select_b;
    assign i_mul9_mmul31_im0_cma_c0 = i_mul9_mmul31_bs2_merged_bit_select_b;
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
    ) i_mul9_mmul31_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul9_mmul31_im0_cma_ena2, i_mul9_mmul31_im0_cma_ena1, i_mul9_mmul31_im0_cma_ena0 }),
        .aclr({ i_mul9_mmul31_im0_cma_reset, i_mul9_mmul31_im0_cma_reset }),
        .ay(i_mul9_mmul31_im0_cma_a0),
        .ax(i_mul9_mmul31_im0_cma_c0),
        .resulta(i_mul9_mmul31_im0_cma_s0),
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
    i_mul9_mmul31_im0_cma_delay ( .xin(i_mul9_mmul31_im0_cma_s0), .xout(i_mul9_mmul31_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul9_mmul31_im0_cma_q = $unsigned(i_mul9_mmul31_im0_cma_qq[27:0]);

    // i_mul9_mmul31_im8_cma(CHAINMULTADD,235)@2 + 3
    assign i_mul9_mmul31_im8_cma_reset = ~ (resetn);
    assign i_mul9_mmul31_im8_cma_ena0 = 1'b1;
    assign i_mul9_mmul31_im8_cma_ena1 = i_mul9_mmul31_im8_cma_ena0;
    assign i_mul9_mmul31_im8_cma_ena2 = i_mul9_mmul31_im8_cma_ena0;

    assign i_mul9_mmul31_im8_cma_a0 = i_mul9_mmul31_bs1_merged_bit_select_c;
    assign i_mul9_mmul31_im8_cma_c0 = i_mul9_mmul31_bs2_merged_bit_select_c;
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
    ) i_mul9_mmul31_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul9_mmul31_im8_cma_ena2, i_mul9_mmul31_im8_cma_ena1, i_mul9_mmul31_im8_cma_ena0 }),
        .aclr({ i_mul9_mmul31_im8_cma_reset, i_mul9_mmul31_im8_cma_reset }),
        .ay(i_mul9_mmul31_im8_cma_a0),
        .ax(i_mul9_mmul31_im8_cma_c0),
        .resulta(i_mul9_mmul31_im8_cma_s0),
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
    i_mul9_mmul31_im8_cma_delay ( .xin(i_mul9_mmul31_im8_cma_s0), .xout(i_mul9_mmul31_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul9_mmul31_im8_cma_q = $unsigned(i_mul9_mmul31_im8_cma_qq[35:0]);

    // i_mul9_mmul31_sums_join_0(BITJOIN,214)@5
    assign i_mul9_mmul31_sums_join_0_q = {i_mul9_mmul31_im0_cma_q, i_mul9_mmul31_im8_cma_q};

    // i_mul9_mmul31_sums_result_add_0_0(ADD,217)@5
    assign i_mul9_mmul31_sums_result_add_0_0_a = {1'b0, i_mul9_mmul31_sums_join_0_q};
    assign i_mul9_mmul31_sums_result_add_0_0_b = {14'b00000000000000, i_mul9_mmul31_sums_align_1_q};
    assign i_mul9_mmul31_sums_result_add_0_0_o = $unsigned(i_mul9_mmul31_sums_result_add_0_0_a) + $unsigned(i_mul9_mmul31_sums_result_add_0_0_b);
    assign i_mul9_mmul31_sums_result_add_0_0_q = i_mul9_mmul31_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul9_mmul31_sel_x(BITSELECT,135)@5
    assign bgTrunc_i_mul9_mmul31_sel_x_in = i_mul9_mmul31_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul9_mmul31_sel_x_b = bgTrunc_i_mul9_mmul31_sel_x_in[31:0];

    // redist18_bgTrunc_i_mul9_mmul31_sel_x_b_1(DELAY,257)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_bgTrunc_i_mul9_mmul31_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist18_bgTrunc_i_mul9_mmul31_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul9_mmul31_sel_x_b);
        end
    end

    // i_add10_mmul34(ADD,48)@6
    assign i_add10_mmul34_a = {1'b0, redist18_bgTrunc_i_mul9_mmul31_sel_x_b_1_q};
    assign i_add10_mmul34_b = {1'b0, redist24_i_llvm_fpga_pop_i32_j_025_pop1127_pop28_mmul32_out_data_out_1_q};
    assign i_add10_mmul34_o = $unsigned(i_add10_mmul34_a) + $unsigned(i_add10_mmul34_b);
    assign i_add10_mmul34_q = i_add10_mmul34_o[32:0];

    // bgTrunc_i_add10_mmul34_sel_x(BITSELECT,131)@6
    assign bgTrunc_i_add10_mmul34_sel_x_b = i_add10_mmul34_q[31:0];

    // i_idxprom11_mmul35_sel_x(BITSELECT,155)@6
    assign i_idxprom11_mmul35_sel_x_b = $unsigned({{32{bgTrunc_i_add10_mmul34_sel_x_b[31]}}, bgTrunc_i_add10_mmul34_sel_x_b[31:0]});

    // i_arrayidx122_mmul0_narrow_x(BITSELECT,140)@6
    assign i_arrayidx122_mmul0_narrow_x_b = i_idxprom11_mmul35_sel_x_b[61:0];

    // i_arrayidx122_mmul0_shift_join_x(BITJOIN,141)@6
    assign i_arrayidx122_mmul0_shift_join_x_q = {i_arrayidx122_mmul0_narrow_x_b, i_arrayidx122_mmul37_vt_const_1_q};

    // valid_fanout_reg16(REG,180)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist17_sync_together136_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul36(BLACKBOX,106)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    mmul_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul36 (
        .in_buffer_in(in_B),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul36_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul36_vt_select_63(BITSELECT,109)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul36_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul36_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_vt_const_9(CONSTANT,103)
    assign i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul36_vt_join(BITJOIN,108)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul36_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul36_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_vt_const_9_q};

    // i_arrayidx122_mmul0_add_x(ADD,138)@6
    assign i_arrayidx122_mmul0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul36_vt_join_q};
    assign i_arrayidx122_mmul0_add_x_b = {1'b0, i_arrayidx122_mmul0_shift_join_x_q};
    assign i_arrayidx122_mmul0_add_x_o = $unsigned(i_arrayidx122_mmul0_add_x_a) + $unsigned(i_arrayidx122_mmul0_add_x_b);
    assign i_arrayidx122_mmul0_add_x_q = i_arrayidx122_mmul0_add_x_o[64:0];

    // i_arrayidx122_mmul0_dupName_0_trunc_sel_x(BITSELECT,143)@6
    assign i_arrayidx122_mmul0_dupName_0_trunc_sel_x_b = i_arrayidx122_mmul0_add_x_q[63:0];

    // i_arrayidx122_mmul37_vt_select_63(BITSELECT,52)@6
    assign i_arrayidx122_mmul37_vt_select_63_b = i_arrayidx122_mmul0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx122_mmul37_vt_const_1(CONSTANT,50)
    assign i_arrayidx122_mmul37_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx122_mmul37_vt_join(BITJOIN,51)@6
    assign i_arrayidx122_mmul37_vt_join_q = {i_arrayidx122_mmul37_vt_select_63_b, i_arrayidx122_mmul37_vt_const_1_q};

    // valid_fanout_reg14(REG,178)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist16_sync_together136_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg15(REG,179)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist17_sync_together136_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i32_j_025_pop1127_push28_mmul33(BLACKBOX,97)@6
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    mmul_i_llvm_fpga_push_i32_j_025_pop1127_push28_0 thei_llvm_fpga_push_i32_j_025_pop1127_push28_mmul33 (
        .in_data_in(redist24_i_llvm_fpga_pop_i32_j_025_pop1127_pop28_mmul32_out_data_out_1_q),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i32_j_025_pop1127_pop28_mmul32_out_feedback_stall_out_28),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i32_j_025_pop1127_push28_mmul33_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i32_j_025_pop1127_push28_mmul33_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_notEnable(LOGICAL,277)
    assign redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_nor(LOGICAL,278)
    assign redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_nor_q = ~ (redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_notEnable_q | redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_sticky_ena_q);

    // redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_mem_last(CONSTANT,274)
    assign redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_cmp(LOGICAL,275)
    assign redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_cmp_q = $unsigned(redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_mem_last_q == redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_cmpReg(REG,276)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_cmpReg_q <= $unsigned(redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_cmp_q);
        end
    end

    // redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_sticky_ena(REG,279)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_nor_q == 1'b1)
        begin
            redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_sticky_ena_q <= $unsigned(redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_cmpReg_q);
        end
    end

    // redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_enaAnd(LOGICAL,280)
    assign redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_enaAnd_q = redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_sticky_ena_q & VCC_q;

    // redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_rdcnt(COUNTER,272)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_rdcnt_i <= 2'd0;
            redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_rdcnt_i == 2'd1)
            begin
                redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_rdcnt_i <= $unsigned(redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_rdcnt_i <= $unsigned(redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_rdcnt_q = redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_rdcnt_i[1:0];

    // redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_wraddr(REG,273)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_wraddr_q <= $unsigned(redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_rdcnt_q);
        end
    end

    // redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_mem(DUALMEM,271)
    assign redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_mem_ia = $unsigned(in_c0_eni13_5_tpl);
    assign redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_mem_aa = redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_wraddr_q;
    assign redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_mem_ab = redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_rdcnt_q;
    assign redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_mem_reset0 = ~ (resetn);
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
    ) redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_mem_dmem (
        .clocken1(redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_mem_aa),
        .data_a(redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_mem_ab),
        .q_b(redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_mem_iq),
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
    assign redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_mem_q = redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_mem_iq[31:0];

    // i_llvm_fpga_pop_i32_j_025_pop1127_pop28_mmul32(BLACKBOX,83)@5
    // out out_feedback_stall_out_28@20000000
    mmul_i_llvm_fpga_pop_i32_j_025_pop1127_pop28_0 thei_llvm_fpga_pop_i32_j_025_pop1127_pop28_mmul32 (
        .in_data_in(redist6_sync_together136_aunroll_x_in_c0_eni13_5_tpl_4_mem_q),
        .in_dir(redist1_sync_together136_aunroll_x_in_c0_eni13_1_tpl_4_q),
        .in_feedback_in_28(i_llvm_fpga_push_i32_j_025_pop1127_push28_mmul33_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i32_j_025_pop1127_push28_mmul33_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_025_pop1127_pop28_mmul32_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i32_j_025_pop1127_pop28_mmul32_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_i_llvm_fpga_pop_i32_j_025_pop1127_pop28_mmul32_out_data_out_1(DELAY,263)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i32_j_025_pop1127_pop28_mmul32_out_data_out_1_q <= '0;
        end
        else
        begin
            redist24_i_llvm_fpga_pop_i32_j_025_pop1127_pop28_mmul32_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_j_025_pop1127_pop28_mmul32_out_data_out);
        end
    end

    // redist31_i_first_cleanup_xor_mmul4_q_4(DELAY,270)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_first_cleanup_xor_mmul4_q_4_delay_0 <= '0;
            redist31_i_first_cleanup_xor_mmul4_q_4_delay_1 <= '0;
            redist31_i_first_cleanup_xor_mmul4_q_4_delay_2 <= '0;
            redist31_i_first_cleanup_xor_mmul4_q_4_q <= '0;
        end
        else
        begin
            redist31_i_first_cleanup_xor_mmul4_q_4_delay_0 <= $unsigned(i_first_cleanup_xor_mmul4_q);
            redist31_i_first_cleanup_xor_mmul4_q_4_delay_1 <= redist31_i_first_cleanup_xor_mmul4_q_4_delay_0;
            redist31_i_first_cleanup_xor_mmul4_q_4_delay_2 <= redist31_i_first_cleanup_xor_mmul4_q_4_delay_1;
            redist31_i_first_cleanup_xor_mmul4_q_4_q <= redist31_i_first_cleanup_xor_mmul4_q_4_delay_2;
        end
    end

    // i_first_cleanup_xor_or_mmul29(LOGICAL,62)@6
    assign i_first_cleanup_xor_or_mmul29_q = i_unnamed_mmul16_q | redist31_i_first_cleanup_xor_mmul4_q_4_q;

    // valid_fanout_reg9(REG,173)@1 + 1
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

    // valid_fanout_reg10(REG,174)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi17_pop925_push25_mmul25(BLACKBOX,88)@2
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    mmul_i_llvm_fpga_push_i1_memdep_phi17_pop925_push25_0 thei_llvm_fpga_push_i1_memdep_phi17_pop925_push25_mmul25 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi17_pop925_pop25_mmul24_out_data_out),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i1_memdep_phi17_pop925_pop25_mmul24_out_feedback_stall_out_25),
        .in_keep_going(redist28_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i1_memdep_phi17_pop925_push25_mmul25_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i1_memdep_phi17_pop925_push25_mmul25_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together136_aunroll_x_in_c0_eni13_3_tpl_1(DELAY,243)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together136_aunroll_x_in_c0_eni13_3_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together136_aunroll_x_in_c0_eni13_3_tpl_1_q <= $unsigned(in_c0_eni13_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi17_pop925_pop25_mmul24(BLACKBOX,75)@2
    // out out_feedback_stall_out_25@20000000
    mmul_i_llvm_fpga_pop_i1_memdep_phi17_pop925_pop25_0 thei_llvm_fpga_pop_i1_memdep_phi17_pop925_pop25_mmul24 (
        .in_data_in(redist4_sync_together136_aunroll_x_in_c0_eni13_3_tpl_1_q),
        .in_dir(redist0_sync_together136_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_25(i_llvm_fpga_push_i1_memdep_phi17_pop925_push25_mmul25_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i1_memdep_phi17_pop925_push25_mmul25_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi17_pop925_pop25_mmul24_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i1_memdep_phi17_pop925_pop25_mmul24_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg11(REG,175)@1 + 1
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

    // valid_fanout_reg12(REG,176)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi_pop1228_push29_mmul27(BLACKBOX,89)@2
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    mmul_i_llvm_fpga_push_i1_memdep_phi_pop1228_push29_0 thei_llvm_fpga_push_i1_memdep_phi_pop1228_push29_mmul27 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi_pop1228_pop29_mmul26_out_data_out),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i1_memdep_phi_pop1228_pop29_mmul26_out_feedback_stall_out_29),
        .in_keep_going(redist28_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i1_memdep_phi_pop1228_push29_mmul27_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i1_memdep_phi_pop1228_push29_mmul27_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together136_aunroll_x_in_c0_eni13_4_tpl_1(DELAY,244)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together136_aunroll_x_in_c0_eni13_4_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together136_aunroll_x_in_c0_eni13_4_tpl_1_q <= $unsigned(in_c0_eni13_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop1228_pop29_mmul26(BLACKBOX,76)@2
    // out out_feedback_stall_out_29@20000000
    mmul_i_llvm_fpga_pop_i1_memdep_phi_pop1228_pop29_0 thei_llvm_fpga_pop_i1_memdep_phi_pop1228_pop29_mmul26 (
        .in_data_in(redist5_sync_together136_aunroll_x_in_c0_eni13_4_tpl_1_q),
        .in_dir(redist0_sync_together136_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_29(i_llvm_fpga_push_i1_memdep_phi_pop1228_push29_mmul27_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i1_memdep_phi_pop1228_push29_mmul27_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop1228_pop29_mmul26_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i1_memdep_phi_pop1228_pop29_mmul26_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_memdep_phi17_or_mmul28(LOGICAL,111)@2 + 1
    assign i_memdep_phi17_or_mmul28_qi = i_llvm_fpga_pop_i1_memdep_phi_pop1228_pop29_mmul26_out_data_out | i_llvm_fpga_pop_i1_memdep_phi17_pop925_pop25_mmul24_out_data_out;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_memdep_phi17_or_mmul28_delay ( .xin(i_memdep_phi17_or_mmul28_qi), .xout(i_memdep_phi17_or_mmul28_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist19_i_memdep_phi17_or_mmul28_q_4(DELAY,258)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_memdep_phi17_or_mmul28_q_4_delay_0 <= '0;
            redist19_i_memdep_phi17_or_mmul28_q_4_delay_1 <= '0;
            redist19_i_memdep_phi17_or_mmul28_q_4_q <= '0;
        end
        else
        begin
            redist19_i_memdep_phi17_or_mmul28_q_4_delay_0 <= $unsigned(i_memdep_phi17_or_mmul28_q);
            redist19_i_memdep_phi17_or_mmul28_q_4_delay_1 <= redist19_i_memdep_phi17_or_mmul28_q_4_delay_0;
            redist19_i_memdep_phi17_or_mmul28_q_4_q <= redist19_i_memdep_phi17_or_mmul28_q_4_delay_1;
        end
    end

    // redist23_i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_data_out_4(DELAY,262)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_data_out_4_delay_0 <= '0;
            redist23_i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_data_out_4_q <= '0;
        end
        else
        begin
            redist23_i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_data_out_4_delay_0 <= $unsigned(redist22_i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_data_out_1_q);
            redist23_i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_data_out_4_q <= redist23_i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_data_out_4_delay_0;
        end
    end

    // redist23_i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_data_out_4_outputreg0(DELAY,293)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_data_out_4_outputreg0_q <= '0;
        end
        else
        begin
            redist23_i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_data_out_4_outputreg0_q <= $unsigned(redist23_i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_data_out_4_q);
        end
    end

    // i_add_mmul20(ADD,49)@6
    assign i_add_mmul20_a = {1'b0, redist23_i_llvm_fpga_pop_i32_k_022_pop18_mmul17_out_data_out_4_outputreg0_q};
    assign i_add_mmul20_b = {1'b0, redist21_i_llvm_fpga_pop_i32_mul21_pop22_mmul18_out_data_out_4_outputreg0_q};
    assign i_add_mmul20_o = $unsigned(i_add_mmul20_a) + $unsigned(i_add_mmul20_b);
    assign i_add_mmul20_q = i_add_mmul20_o[32:0];

    // bgTrunc_i_add_mmul20_sel_x(BITSELECT,132)@6
    assign bgTrunc_i_add_mmul20_sel_x_b = i_add_mmul20_q[31:0];

    // i_idxprom_mmul21_sel_x(BITSELECT,156)@6
    assign i_idxprom_mmul21_sel_x_b = $unsigned({{32{bgTrunc_i_add_mmul20_sel_x_b[31]}}, bgTrunc_i_add_mmul20_sel_x_b[31:0]});

    // i_arrayidx1_mmul0_narrow_x(BITSELECT,146)@6
    assign i_arrayidx1_mmul0_narrow_x_b = i_idxprom_mmul21_sel_x_b[61:0];

    // i_arrayidx1_mmul0_shift_join_x(BITJOIN,147)@6
    assign i_arrayidx1_mmul0_shift_join_x_q = {i_arrayidx1_mmul0_narrow_x_b, i_arrayidx122_mmul37_vt_const_1_q};

    // valid_fanout_reg8(REG,172)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist17_sync_together136_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22(BLACKBOX,102)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    mmul_i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22 (
        .in_buffer_in(in_A),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_vt_select_63(BITSELECT,105)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_vt_join(BITJOIN,104)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_vt_const_9_q};

    // i_arrayidx1_mmul0_add_x(ADD,144)@6
    assign i_arrayidx1_mmul0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_vt_join_q};
    assign i_arrayidx1_mmul0_add_x_b = {1'b0, i_arrayidx1_mmul0_shift_join_x_q};
    assign i_arrayidx1_mmul0_add_x_o = $unsigned(i_arrayidx1_mmul0_add_x_a) + $unsigned(i_arrayidx1_mmul0_add_x_b);
    assign i_arrayidx1_mmul0_add_x_q = i_arrayidx1_mmul0_add_x_o[64:0];

    // i_arrayidx1_mmul0_dupName_0_trunc_sel_x(BITSELECT,149)@6
    assign i_arrayidx1_mmul0_dupName_0_trunc_sel_x_b = i_arrayidx1_mmul0_add_x_q[63:0];

    // i_arrayidx1_mmul23_vt_select_63(BITSELECT,55)@6
    assign i_arrayidx1_mmul23_vt_select_63_b = i_arrayidx1_mmul0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx1_mmul23_vt_join(BITJOIN,54)@6
    assign i_arrayidx1_mmul23_vt_join_q = {i_arrayidx1_mmul23_vt_select_63_b, i_arrayidx122_mmul37_vt_const_1_q};

    // valid_fanout_reg6(REG,170)@1 + 1
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

    // valid_fanout_reg7(REG,171)@1 + 1
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

    // i_llvm_fpga_push_i32_mul21_push22_mmul19(BLACKBOX,99)@2
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    mmul_i_llvm_fpga_push_i32_mul21_push22_0 thei_llvm_fpga_push_i32_mul21_push22_mmul19 (
        .in_data_in(i_llvm_fpga_pop_i32_mul21_pop22_mmul18_out_data_out),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i32_mul21_pop22_mmul18_out_feedback_stall_out_22),
        .in_keep_going(redist28_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i32_mul21_push22_mmul19_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i32_mul21_push22_mmul19_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together136_aunroll_x_in_c0_eni13_2_tpl_1(DELAY,242)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together136_aunroll_x_in_c0_eni13_2_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together136_aunroll_x_in_c0_eni13_2_tpl_1_q <= $unsigned(in_c0_eni13_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul21_pop22_mmul18(BLACKBOX,85)@2
    // out out_feedback_stall_out_22@20000000
    mmul_i_llvm_fpga_pop_i32_mul21_pop22_0 thei_llvm_fpga_pop_i32_mul21_pop22_mmul18 (
        .in_data_in(redist3_sync_together136_aunroll_x_in_c0_eni13_2_tpl_1_q),
        .in_dir(redist0_sync_together136_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_22(i_llvm_fpga_push_i32_mul21_push22_mmul19_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i32_mul21_push22_mmul19_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul21_pop22_mmul18_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i32_mul21_pop22_mmul18_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist21_i_llvm_fpga_pop_i32_mul21_pop22_mmul18_out_data_out_4_inputreg0(DELAY,291)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i32_mul21_pop22_mmul18_out_data_out_4_inputreg0_q <= '0;
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i32_mul21_pop22_mmul18_out_data_out_4_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_mul21_pop22_mmul18_out_data_out);
        end
    end

    // redist21_i_llvm_fpga_pop_i32_mul21_pop22_mmul18_out_data_out_4(DELAY,260)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i32_mul21_pop22_mmul18_out_data_out_4_delay_0 <= '0;
            redist21_i_llvm_fpga_pop_i32_mul21_pop22_mmul18_out_data_out_4_q <= '0;
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i32_mul21_pop22_mmul18_out_data_out_4_delay_0 <= $unsigned(redist21_i_llvm_fpga_pop_i32_mul21_pop22_mmul18_out_data_out_4_inputreg0_q);
            redist21_i_llvm_fpga_pop_i32_mul21_pop22_mmul18_out_data_out_4_q <= redist21_i_llvm_fpga_pop_i32_mul21_pop22_mmul18_out_data_out_4_delay_0;
        end
    end

    // redist21_i_llvm_fpga_pop_i32_mul21_pop22_mmul18_out_data_out_4_outputreg0(DELAY,292)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i32_mul21_pop22_mmul18_out_data_out_4_outputreg0_q <= '0;
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i32_mul21_pop22_mmul18_out_data_out_4_outputreg0_q <= $unsigned(redist21_i_llvm_fpga_pop_i32_mul21_pop22_mmul18_out_data_out_4_q);
        end
    end

    // valid_fanout_reg4(REG,168)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist17_sync_together136_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp275_mmul15(BLACKBOX,71)@6
    mmul_i_llvm_fpga_ffwd_dest_i1_cmp275_0 thei_llvm_fpga_ffwd_dest_i1_cmp275_mmul15 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp275_mmul15_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_mmul16(LOGICAL,119)@6
    assign i_unnamed_mmul16_q = i_llvm_fpga_ffwd_dest_i1_cmp275_mmul15_out_dest_data_out_0_0 ^ VCC_q;

    // redist30_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5(DELAY,269)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_delay_0 <= '0;
            redist30_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_delay_1 <= '0;
            redist30_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_q <= '0;
        end
        else
        begin
            redist30_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_delay_0 <= $unsigned(redist29_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_2_q);
            redist30_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_delay_1 <= redist30_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_delay_0;
            redist30_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_q <= redist30_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_delay_1;
        end
    end

    // sync_out_aunroll_x(GPOUT,162)@6
    assign out_c0_exi19_0_tpl = GND_q;
    assign out_c0_exi19_1_tpl = redist30_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_q;
    assign out_c0_exi19_2_tpl = i_unnamed_mmul16_q;
    assign out_c0_exi19_3_tpl = redist21_i_llvm_fpga_pop_i32_mul21_pop22_mmul18_out_data_out_4_outputreg0_q;
    assign out_c0_exi19_4_tpl = i_arrayidx1_mmul23_vt_join_q;
    assign out_c0_exi19_5_tpl = redist19_i_memdep_phi17_or_mmul28_q_4_q;
    assign out_c0_exi19_6_tpl = i_first_cleanup_xor_or_mmul29_q;
    assign out_c0_exi19_7_tpl = redist24_i_llvm_fpga_pop_i32_j_025_pop1127_pop28_mmul32_out_data_out_1_q;
    assign out_c0_exi19_8_tpl = i_arrayidx122_mmul37_vt_join_q;
    assign out_c0_exi19_9_tpl = i_acc_control_signal_mmul38_q;
    assign out_c0_exi19_10_tpl = redist20_i_masked_mmul52_q_4_q;
    assign out_c0_exi19_11_tpl = redist25_i_llvm_fpga_pop_i1_pop23_mmul53_out_data_out_4_q;
    assign out_c0_exi19_12_tpl = redist26_i_llvm_fpga_pop_i1_notcmp1623_pop24_mmul55_out_data_out_4_q;
    assign out_c0_exi19_13_tpl = i_llvm_fpga_pop_i1_pop26_mmul57_out_data_out;
    assign out_c0_exi19_14_tpl = redist27_i_llvm_fpga_pop_i1_notcmp1226_pop27_mmul59_out_data_out_4_q;
    assign out_c0_exi19_15_tpl = redist2_sync_together136_aunroll_x_in_c0_eni13_1_tpl_5_q;
    assign out_c0_exi19_16_tpl = redist11_sync_together136_aunroll_x_in_c0_eni13_10_tpl_5_mem_q;
    assign out_c0_exi19_17_tpl = redist12_sync_together136_aunroll_x_in_c0_eni13_11_tpl_5_q;
    assign out_c0_exi19_18_tpl = redist13_sync_together136_aunroll_x_in_c0_eni13_12_tpl_5_q;
    assign out_c0_exi19_19_tpl = redist14_sync_together136_aunroll_x_in_c0_eni13_13_tpl_5_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_mmul3 = GND_q;

endmodule
