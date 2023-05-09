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

// SystemVerilog created from mmul_i_sfc_logic_s_c0_in_for_body8_s_c0_enter5510_mmul0
// SystemVerilog created on Fri May  5 14:23:33 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_i_sfc_logic_s_c0_in_for_body8_s_c0_enter5510_mmul0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_A,
    input wire [63:0] in_B,
    input wire [31:0] in_N,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_1_0,
    output wire [0:0] out_c0_exi14_0_tpl,
    output wire [0:0] out_c0_exi14_1_tpl,
    output wire [0:0] out_c0_exi14_2_tpl,
    output wire [31:0] out_c0_exi14_3_tpl,
    output wire [63:0] out_c0_exi14_4_tpl,
    output wire [0:0] out_c0_exi14_5_tpl,
    output wire [31:0] out_c0_exi14_6_tpl,
    output wire [63:0] out_c0_exi14_7_tpl,
    output wire [0:0] out_c0_exi14_8_tpl,
    output wire [0:0] out_c0_exi14_9_tpl,
    output wire [0:0] out_c0_exi14_10_tpl,
    output wire [0:0] out_c0_exi14_11_tpl,
    output wire [0:0] out_c0_exi14_12_tpl,
    output wire [31:0] out_c0_exi14_13_tpl,
    output wire [0:0] out_c0_exi14_14_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_mmul3,
    input wire [0:0] in_c0_eni7_0_tpl,
    input wire [0:0] in_c0_eni7_1_tpl,
    input wire [31:0] in_c0_eni7_2_tpl,
    input wire [31:0] in_c0_eni7_3_tpl,
    input wire [0:0] in_c0_eni7_4_tpl,
    input wire [0:0] in_c0_eni7_5_tpl,
    input wire [31:0] in_c0_eni7_6_tpl,
    input wire [0:0] in_c0_eni7_7_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_178_q;
    wire [31:0] c_i32_081_q;
    wire [31:0] c_i32_182_q;
    wire [32:0] c_i33_184_q;
    wire [32:0] c_i33_undef80_q;
    wire [0:0] i_acc_control_signal_mmul33_q;
    wire [32:0] i_add10_mmul29_a;
    wire [32:0] i_add10_mmul29_b;
    logic [32:0] i_add10_mmul29_o;
    wire [32:0] i_add10_mmul29_q;
    wire [32:0] i_add_mmul20_a;
    wire [32:0] i_add_mmul20_b;
    logic [32:0] i_add_mmul20_o;
    wire [32:0] i_add_mmul20_q;
    wire [1:0] i_arrayidx122_mmul32_vt_const_1_q;
    wire [63:0] i_arrayidx122_mmul32_vt_join_q;
    wire [61:0] i_arrayidx122_mmul32_vt_select_63_b;
    wire [63:0] i_arrayidx1_mmul23_vt_join_q;
    wire [61:0] i_arrayidx1_mmul23_vt_select_63_b;
    wire [1:0] i_cleanups_shl_mmul5_vt_join_q;
    wire [0:0] i_cleanups_shl_mmul5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_mmul4_q;
    wire [0:0] i_first_cleanup_xor_or_mmul24_q;
    wire [33:0] i_fpga_indvars_iv_next_mmul38_a;
    wire [33:0] i_fpga_indvars_iv_next_mmul38_b;
    logic [33:0] i_fpga_indvars_iv_next_mmul38_o;
    wire [33:0] i_fpga_indvars_iv_next_mmul38_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_mmul14_s;
    reg [32:0] i_fpga_indvars_iv_replace_phi_mmul14_q;
    wire [32:0] i_inc_mmul34_a;
    wire [32:0] i_inc_mmul34_b;
    logic [32:0] i_inc_mmul34_o;
    wire [32:0] i_inc_mmul34_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp275_mmul15_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp278_mmul40_out_dest_data_out_0_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_mmul6_mmul12_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1224_pop20_mmul50_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1224_pop20_mmul50_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1623_pop19_mmul48_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1623_pop19_mmul48_out_feedback_stall_out_19;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop17_mmul2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop17_mmul2_out_feedback_stall_out_17;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop16_mmul7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop16_mmul7_out_feedback_stall_out_16;
    wire [31:0] i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27_out_feedback_stall_out_21;
    wire [31:0] i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_feedback_stall_out_14;
    wire [31:0] i_llvm_fpga_pop_i32_mul21_pop18_mmul18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul21_pop18_mmul18_out_feedback_stall_out_18;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop13_mmul13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop13_mmul13_out_feedback_stall_out_13;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_mmul11_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_mmul11_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1224_push20_mmul51_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1224_push20_mmul51_out_feedback_valid_out_20;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1623_push19_mmul49_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1623_push19_mmul49_out_feedback_valid_out_19;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_mmul43_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_mmul43_out_feedback_valid_out_2;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push17_mmul46_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push17_mmul46_out_feedback_valid_out_17;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push16_mmul9_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push16_mmul9_out_feedback_valid_out_16;
    wire [31:0] i_llvm_fpga_push_i32_j_025_pop1025_push21_mmul28_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i32_j_025_pop1025_push21_mmul28_out_feedback_valid_out_21;
    wire [31:0] i_llvm_fpga_push_i32_k_022_push14_mmul35_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i32_k_022_push14_mmul35_out_feedback_valid_out_14;
    wire [31:0] i_llvm_fpga_push_i32_mul21_push18_mmul19_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i32_mul21_push18_mmul19_out_feedback_valid_out_18;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push13_mmul39_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push13_mmul39_out_feedback_valid_out_13;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul25_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul31_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul31_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul31_vt_select_63_b;
    wire [0:0] i_masked_mmul47_qi;
    reg [0:0] i_masked_mmul47_q;
    wire [0:0] i_next_cleanups_mmul45_s;
    reg [1:0] i_next_cleanups_mmul45_q;
    wire [1:0] i_next_initerations_mmul8_vt_join_q;
    wire [0:0] i_next_initerations_mmul8_vt_select_0_b;
    wire [0:0] i_notcmp_mmul42_q;
    wire [0:0] i_or_mmul44_q;
    wire [0:0] i_unnamed_mmul16_q;
    wire [0:0] i_unnamed_mmul41_q;
    wire [31:0] bgTrunc_i_add10_mmul29_sel_x_b;
    wire [31:0] bgTrunc_i_add_mmul20_sel_x_b;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_mmul38_sel_x_b;
    wire [31:0] bgTrunc_i_inc_mmul34_sel_x_b;
    wire [63:0] bgTrunc_i_mul9_mmul26_sel_x_in;
    wire [31:0] bgTrunc_i_mul9_mmul26_sel_x_b;
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
    wire [63:0] i_idxprom11_mmul30_sel_x_b;
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
    wire [0:0] i_exitcond_mmul36_cmp_nsign_q;
    wire [63:0] i_mul9_mmul26_sums_join_0_q;
    wire [50:0] i_mul9_mmul26_sums_align_1_q;
    wire [50:0] i_mul9_mmul26_sums_align_1_qint;
    wire [64:0] i_mul9_mmul26_sums_result_add_0_0_a;
    wire [64:0] i_mul9_mmul26_sums_result_add_0_0_b;
    logic [64:0] i_mul9_mmul26_sums_result_add_0_0_o;
    wire [64:0] i_mul9_mmul26_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid197_i_cleanups_shl_mmul0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid197_i_cleanups_shl_mmul0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid198_i_cleanups_shl_mmul0_shift_x_q;
    wire [0:0] leftShiftStage0_uid200_i_cleanups_shl_mmul0_shift_x_s;
    reg [1:0] leftShiftStage0_uid200_i_cleanups_shl_mmul0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid204_i_next_initerations_mmul0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid206_i_next_initerations_mmul0_shift_x_q;
    wire [0:0] rightShiftStage0_uid208_i_next_initerations_mmul0_shift_x_s;
    reg [1:0] rightShiftStage0_uid208_i_next_initerations_mmul0_shift_x_q;
    wire i_mul9_mmul26_im0_cma_reset;
    wire [13:0] i_mul9_mmul26_im0_cma_a0;
    wire [13:0] i_mul9_mmul26_im0_cma_c0;
    wire [27:0] i_mul9_mmul26_im0_cma_s0;
    wire [27:0] i_mul9_mmul26_im0_cma_qq;
    wire [27:0] i_mul9_mmul26_im0_cma_q;
    wire i_mul9_mmul26_im0_cma_ena0;
    wire i_mul9_mmul26_im0_cma_ena1;
    wire i_mul9_mmul26_im0_cma_ena2;
    wire i_mul9_mmul26_im8_cma_reset;
    wire [17:0] i_mul9_mmul26_im8_cma_a0;
    wire [17:0] i_mul9_mmul26_im8_cma_c0;
    wire [35:0] i_mul9_mmul26_im8_cma_s0;
    wire [35:0] i_mul9_mmul26_im8_cma_qq;
    wire [35:0] i_mul9_mmul26_im8_cma_q;
    wire i_mul9_mmul26_im8_cma_ena0;
    wire i_mul9_mmul26_im8_cma_ena1;
    wire i_mul9_mmul26_im8_cma_ena2;
    wire i_mul9_mmul26_ma3_cma_reset;
    wire [13:0] i_mul9_mmul26_ma3_cma_a0;
    wire [17:0] i_mul9_mmul26_ma3_cma_c0;
    wire [13:0] i_mul9_mmul26_ma3_cma_a1;
    wire [17:0] i_mul9_mmul26_ma3_cma_c1;
    wire [32:0] i_mul9_mmul26_ma3_cma_s0;
    wire [32:0] i_mul9_mmul26_ma3_cma_qq;
    wire [32:0] i_mul9_mmul26_ma3_cma_q;
    wire i_mul9_mmul26_ma3_cma_ena0;
    wire i_mul9_mmul26_ma3_cma_ena1;
    wire i_mul9_mmul26_ma3_cma_ena2;
    wire [13:0] i_mul9_mmul26_bs1_merged_bit_select_b;
    wire [17:0] i_mul9_mmul26_bs1_merged_bit_select_c;
    wire [13:0] i_mul9_mmul26_bs2_merged_bit_select_b;
    wire [17:0] i_mul9_mmul26_bs2_merged_bit_select_c;
    reg [0:0] redist0_sync_together111_aunroll_x_in_c0_eni7_1_tpl_1_q;
    reg [0:0] redist1_sync_together111_aunroll_x_in_c0_eni7_1_tpl_4_q;
    reg [0:0] redist1_sync_together111_aunroll_x_in_c0_eni7_1_tpl_4_delay_0;
    reg [0:0] redist1_sync_together111_aunroll_x_in_c0_eni7_1_tpl_4_delay_1;
    reg [0:0] redist2_sync_together111_aunroll_x_in_c0_eni7_1_tpl_5_q;
    reg [31:0] redist4_sync_together111_aunroll_x_in_c0_eni7_3_tpl_1_q;
    reg [0:0] redist5_sync_together111_aunroll_x_in_c0_eni7_4_tpl_5_q;
    reg [0:0] redist5_sync_together111_aunroll_x_in_c0_eni7_4_tpl_5_delay_0;
    reg [0:0] redist5_sync_together111_aunroll_x_in_c0_eni7_4_tpl_5_delay_1;
    reg [0:0] redist5_sync_together111_aunroll_x_in_c0_eni7_4_tpl_5_delay_2;
    reg [0:0] redist5_sync_together111_aunroll_x_in_c0_eni7_4_tpl_5_delay_3;
    reg [0:0] redist6_sync_together111_aunroll_x_in_c0_eni7_5_tpl_5_q;
    reg [0:0] redist6_sync_together111_aunroll_x_in_c0_eni7_5_tpl_5_delay_0;
    reg [0:0] redist6_sync_together111_aunroll_x_in_c0_eni7_5_tpl_5_delay_1;
    reg [0:0] redist6_sync_together111_aunroll_x_in_c0_eni7_5_tpl_5_delay_2;
    reg [0:0] redist6_sync_together111_aunroll_x_in_c0_eni7_5_tpl_5_delay_3;
    reg [0:0] redist8_sync_together111_aunroll_x_in_c0_eni7_7_tpl_5_q;
    reg [0:0] redist8_sync_together111_aunroll_x_in_c0_eni7_7_tpl_5_delay_0;
    reg [0:0] redist8_sync_together111_aunroll_x_in_c0_eni7_7_tpl_5_delay_1;
    reg [0:0] redist8_sync_together111_aunroll_x_in_c0_eni7_7_tpl_5_delay_2;
    reg [0:0] redist8_sync_together111_aunroll_x_in_c0_eni7_7_tpl_5_delay_3;
    reg [0:0] redist9_sync_together111_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist10_sync_together111_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist10_sync_together111_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist11_sync_together111_aunroll_x_in_i_valid_4_q;
    reg [31:0] redist12_bgTrunc_i_mul9_mmul26_sel_x_b_1_q;
    reg [0:0] redist13_i_masked_mmul47_q_4_q;
    reg [0:0] redist13_i_masked_mmul47_q_4_delay_0;
    reg [0:0] redist13_i_masked_mmul47_q_4_delay_1;
    reg [31:0] redist14_i_llvm_fpga_pop_i32_mul21_pop18_mmul18_out_data_out_1_q;
    reg [31:0] redist15_i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_data_out_1_q;
    reg [31:0] redist16_i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_data_out_4_q;
    reg [31:0] redist16_i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_data_out_4_delay_0;
    reg [31:0] redist17_i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27_out_data_out_4_q;
    reg [31:0] redist17_i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27_out_data_out_4_delay_0;
    reg [0:0] redist18_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_2_q;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_q;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_delay_0;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_delay_1;
    reg [0:0] redist21_i_first_cleanup_xor_mmul4_q_4_q;
    reg [0:0] redist21_i_first_cleanup_xor_mmul4_q_4_delay_0;
    reg [0:0] redist21_i_first_cleanup_xor_mmul4_q_4_delay_1;
    reg [0:0] redist21_i_first_cleanup_xor_mmul4_q_4_delay_2;
    wire redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_mem_reset0;
    wire [31:0] redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_mem_ia;
    wire [1:0] redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_mem_aa;
    wire [1:0] redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_mem_ab;
    wire [31:0] redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_mem_iq;
    wire [31:0] redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_mem_q;
    wire [1:0] redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_rdcnt_i;
    (* preserve *) reg redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_rdcnt_eq;
    reg [1:0] redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_wraddr_q;
    wire [1:0] redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_mem_last_q;
    wire [0:0] redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_cmpReg_q;
    wire [0:0] redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_notEnable_q;
    wire [0:0] redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_sticky_ena_q;
    wire [0:0] redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_enaAnd_q;
    wire redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_mem_reset0;
    wire [31:0] redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_mem_ia;
    wire [1:0] redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_mem_aa;
    wire [1:0] redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_mem_ab;
    wire [31:0] redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_mem_iq;
    wire [31:0] redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_mem_q;
    wire [1:0] redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_rdcnt_i;
    reg [1:0] redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_wraddr_q;
    wire [2:0] redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_mem_last_q;
    wire [2:0] redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_cmp_b;
    wire [0:0] redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_cmpReg_q;
    wire [0:0] redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_notEnable_q;
    wire [0:0] redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_sticky_ena_q;
    wire [0:0] redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_enaAnd_q;
    reg [31:0] redist16_i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_data_out_4_outputreg0_q;
    reg [31:0] redist17_i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27_out_data_out_4_inputreg0_q;
    reg [31:0] redist17_i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27_out_data_out_4_outputreg0_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist9_sync_together111_aunroll_x_in_i_valid_1(DELAY,223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together111_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist9_sync_together111_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist18_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1(DELAY,232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist18_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid197_i_cleanups_shl_mmul0_shift_x(BITSELECT,196)@2
    assign leftShiftStage0Idx1Rng1_uid197_i_cleanups_shl_mmul0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop17_mmul2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid197_i_cleanups_shl_mmul0_shift_x_b = leftShiftStage0Idx1Rng1_uid197_i_cleanups_shl_mmul0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid198_i_cleanups_shl_mmul0_shift_x(BITJOIN,197)@2
    assign leftShiftStage0Idx1_uid198_i_cleanups_shl_mmul0_shift_x_q = {leftShiftStage0Idx1Rng1_uid197_i_cleanups_shl_mmul0_shift_x_b, GND_q};

    // leftShiftStage0_uid200_i_cleanups_shl_mmul0_shift_x(MUX,199)@2
    assign leftShiftStage0_uid200_i_cleanups_shl_mmul0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid200_i_cleanups_shl_mmul0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop17_mmul2_out_data_out or leftShiftStage0Idx1_uid198_i_cleanups_shl_mmul0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid200_i_cleanups_shl_mmul0_shift_x_s)
            1'b0 : leftShiftStage0_uid200_i_cleanups_shl_mmul0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop17_mmul2_out_data_out;
            1'b1 : leftShiftStage0_uid200_i_cleanups_shl_mmul0_shift_x_q = leftShiftStage0Idx1_uid198_i_cleanups_shl_mmul0_shift_x_q;
            default : leftShiftStage0_uid200_i_cleanups_shl_mmul0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_mmul5_vt_select_1(BITSELECT,50)@2
    assign i_cleanups_shl_mmul5_vt_select_1_b = leftShiftStage0_uid200_i_cleanups_shl_mmul0_shift_x_q[1:1];

    // i_cleanups_shl_mmul5_vt_join(BITJOIN,49)@2
    assign i_cleanups_shl_mmul5_vt_join_q = {i_cleanups_shl_mmul5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_mmul4(LOGICAL,53)@2
    assign i_first_cleanup_xor_mmul4_q = i_first_cleanup_mmul3_sel_x_b ^ VCC_q;

    // i_notcmp_mmul42(LOGICAL,100)@2
    assign i_notcmp_mmul42_q = i_unnamed_mmul41_q ^ VCC_q;

    // i_or_mmul44(LOGICAL,101)@2
    assign i_or_mmul44_q = i_notcmp_mmul42_q | i_first_cleanup_xor_mmul4_q;

    // i_next_cleanups_mmul45(MUX,96)@2
    assign i_next_cleanups_mmul45_s = i_or_mmul44_q;
    always @(i_next_cleanups_mmul45_s or i_llvm_fpga_pop_i2_cleanups_pop17_mmul2_out_data_out or i_cleanups_shl_mmul5_vt_join_q)
    begin
        unique case (i_next_cleanups_mmul45_s)
            1'b0 : i_next_cleanups_mmul45_q = i_llvm_fpga_pop_i2_cleanups_pop17_mmul2_out_data_out;
            1'b1 : i_next_cleanups_mmul45_q = i_cleanups_shl_mmul5_vt_join_q;
            default : i_next_cleanups_mmul45_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push17_mmul46(BLACKBOX,79)@2
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    mmul_i_llvm_fpga_push_i2_cleanups_push17_0 thei_llvm_fpga_push_i2_cleanups_push17_mmul46 (
        .in_data_in(i_next_cleanups_mmul45_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i2_cleanups_pop17_mmul2_out_feedback_stall_out_17),
        .in_keep_going(redist18_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist9_sync_together111_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i2_cleanups_push17_mmul46_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i2_cleanups_push17_mmul46_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together111_aunroll_x_in_c0_eni7_1_tpl_1(DELAY,214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together111_aunroll_x_in_c0_eni7_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together111_aunroll_x_in_c0_eni7_1_tpl_1_q <= $unsigned(in_c0_eni7_1_tpl);
        end
    end

    // c_i2_178(CONSTANT,33)
    assign c_i2_178_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop17_mmul2(BLACKBOX,69)@2
    // out out_feedback_stall_out_17@20000000
    mmul_i_llvm_fpga_pop_i2_cleanups_pop17_0 thei_llvm_fpga_pop_i2_cleanups_pop17_mmul2 (
        .in_data_in(c_i2_178_q),
        .in_dir(redist0_sync_together111_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i2_cleanups_push17_mmul46_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i2_cleanups_push17_mmul46_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist9_sync_together111_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop17_mmul2_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i2_cleanups_pop17_mmul2_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_mmul3_sel_x(BITSELECT,137)@2
    assign i_first_cleanup_mmul3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop17_mmul2_out_data_out[0:0];

    // i_llvm_fpga_ffwd_dest_i33_unnamed_mmul6_mmul12(BLACKBOX,65)@2
    mmul_i_llvm_fpga_ffwd_dest_i33_unnamed_6_mmul0 thei_llvm_fpga_ffwd_dest_i33_unnamed_mmul6_mmul12 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist9_sync_together111_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i33_unnamed_mmul6_mmul12_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_184(CONSTANT,36)
    assign c_i33_184_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_mmul38(ADD,55)@2
    assign i_fpga_indvars_iv_next_mmul38_a = {1'b0, i_fpga_indvars_iv_replace_phi_mmul14_q};
    assign i_fpga_indvars_iv_next_mmul38_b = {1'b0, c_i33_184_q};
    assign i_fpga_indvars_iv_next_mmul38_o = $unsigned(i_fpga_indvars_iv_next_mmul38_a) + $unsigned(i_fpga_indvars_iv_next_mmul38_b);
    assign i_fpga_indvars_iv_next_mmul38_q = i_fpga_indvars_iv_next_mmul38_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_mmul38_sel_x(BITSELECT,116)@2
    assign bgTrunc_i_fpga_indvars_iv_next_mmul38_sel_x_b = i_fpga_indvars_iv_next_mmul38_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push13_mmul39(BLACKBOX,84)@2
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    mmul_i_llvm_fpga_push_i33_fpga_indvars_iv_push13_0 thei_llvm_fpga_push_i33_fpga_indvars_iv_push13_mmul39 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_mmul38_sel_x_b),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop13_mmul13_out_feedback_stall_out_13),
        .in_keep_going(redist18_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist9_sync_together111_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i33_fpga_indvars_iv_push13_mmul39_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i33_fpga_indvars_iv_push13_mmul39_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef80(CONSTANT,37)
    assign c_i33_undef80_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop13_mmul13(BLACKBOX,74)@2
    // out out_feedback_stall_out_13@20000000
    mmul_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop13_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv_pop13_mmul13 (
        .in_data_in(c_i33_undef80_q),
        .in_dir(redist0_sync_together111_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_13(i_llvm_fpga_push_i33_fpga_indvars_iv_push13_mmul39_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i33_fpga_indvars_iv_push13_mmul39_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist9_sync_together111_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop13_mmul13_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop13_mmul13_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv_replace_phi_mmul14(MUX,56)@2
    assign i_fpga_indvars_iv_replace_phi_mmul14_s = redist0_sync_together111_aunroll_x_in_c0_eni7_1_tpl_1_q;
    always @(i_fpga_indvars_iv_replace_phi_mmul14_s or i_llvm_fpga_pop_i33_fpga_indvars_iv_pop13_mmul13_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_mmul6_mmul12_out_dest_data_out_1_0)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_mmul14_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_mmul14_q = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop13_mmul13_out_data_out;
            1'b1 : i_fpga_indvars_iv_replace_phi_mmul14_q = i_llvm_fpga_ffwd_dest_i33_unnamed_mmul6_mmul12_out_dest_data_out_1_0;
            default : i_fpga_indvars_iv_replace_phi_mmul14_q = 33'b0;
        endcase
    end

    // i_exitcond_mmul36_cmp_nsign(LOGICAL,177)@2
    assign i_exitcond_mmul36_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv_replace_phi_mmul14_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp278_mmul40(BLACKBOX,64)@2
    mmul_i_llvm_fpga_ffwd_dest_i1_cmp278_0 thei_llvm_fpga_ffwd_dest_i1_cmp278_mmul40 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist9_sync_together111_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp278_mmul40_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_mmul41(LOGICAL,103)@2
    assign i_unnamed_mmul41_q = i_llvm_fpga_ffwd_dest_i1_cmp278_mmul40_out_dest_data_out_0_0 & i_exitcond_mmul36_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_mmul43(BLACKBOX,78)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    mmul_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_mmul43 (
        .in_data_in(i_unnamed_mmul41_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_mmul6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_mmul3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist9_sync_together111_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_mmul43_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_mmul43_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,150)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid204_i_next_initerations_mmul0_shift_x(BITSELECT,203)@2
    assign rightShiftStage0Idx1Rng1_uid204_i_next_initerations_mmul0_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop16_mmul7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid206_i_next_initerations_mmul0_shift_x(BITJOIN,205)@2
    assign rightShiftStage0Idx1_uid206_i_next_initerations_mmul0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid204_i_next_initerations_mmul0_shift_x_b};

    // valid_fanout_reg1(REG,148)@1 + 1
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

    // valid_fanout_reg2(REG,149)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations_push16_mmul9(BLACKBOX,80)@2
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    mmul_i_llvm_fpga_push_i2_initerations_push16_0 thei_llvm_fpga_push_i2_initerations_push16_mmul9 (
        .in_data_in(i_next_initerations_mmul8_vt_join_q),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i2_initerations_pop16_mmul7_out_feedback_stall_out_16),
        .in_keep_going(redist18_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i2_initerations_push16_mmul9_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i2_initerations_push16_mmul9_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop16_mmul7(BLACKBOX,70)@2
    // out out_feedback_stall_out_16@20000000
    mmul_i_llvm_fpga_pop_i2_initerations_pop16_0 thei_llvm_fpga_pop_i2_initerations_pop16_mmul7 (
        .in_data_in(c_i2_178_q),
        .in_dir(redist0_sync_together111_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_16(i_llvm_fpga_push_i2_initerations_push16_mmul9_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i2_initerations_push16_mmul9_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop16_mmul7_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i2_initerations_pop16_mmul7_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid208_i_next_initerations_mmul0_shift_x(MUX,207)@2
    assign rightShiftStage0_uid208_i_next_initerations_mmul0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid208_i_next_initerations_mmul0_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop16_mmul7_out_data_out or rightShiftStage0Idx1_uid206_i_next_initerations_mmul0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid208_i_next_initerations_mmul0_shift_x_s)
            1'b0 : rightShiftStage0_uid208_i_next_initerations_mmul0_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop16_mmul7_out_data_out;
            1'b1 : rightShiftStage0_uid208_i_next_initerations_mmul0_shift_x_q = rightShiftStage0Idx1_uid206_i_next_initerations_mmul0_shift_x_q;
            default : rightShiftStage0_uid208_i_next_initerations_mmul0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_mmul8_vt_select_0(BITSELECT,99)@2
    assign i_next_initerations_mmul8_vt_select_0_b = rightShiftStage0_uid208_i_next_initerations_mmul0_shift_x_q[0:0];

    // i_next_initerations_mmul8_vt_join(BITJOIN,98)@2
    assign i_next_initerations_mmul8_vt_join_q = {GND_q, i_next_initerations_mmul8_vt_select_0_b};

    // i_last_initeration_mmul10_sel_x(BITSELECT,140)@2
    assign i_last_initeration_mmul10_sel_x_b = i_next_initerations_mmul8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_mmul11(BLACKBOX,75)@2
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    mmul_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_mmul11 (
        .in_data_in(i_last_initeration_mmul10_sel_x_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_mmul6_out_initeration_stall_out),
        .in_keep_going(redist18_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q),
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

    // i_llvm_fpga_pipeline_keep_going_mmul6(BLACKBOX,66)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    mmul_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_mmul6 (
        .in_data_in(in_c0_eni7_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_mmul11_out_feedback_out_1),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_mmul11_out_feedback_valid_out_1),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_mmul43_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_mmul43_out_feedback_valid_out_2),
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

    // ext_sig_sync_out(GPOUT,38)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_mmul6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_mmul6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,107)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_mmul6_out_pipeline_valid_out;

    // redist10_sync_together111_aunroll_x_in_i_valid_3(DELAY,224)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together111_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist10_sync_together111_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist10_sync_together111_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(redist9_sync_together111_aunroll_x_in_i_valid_1_q);
            redist10_sync_together111_aunroll_x_in_i_valid_3_q <= redist10_sync_together111_aunroll_x_in_i_valid_3_delay_0;
        end
    end

    // redist11_sync_together111_aunroll_x_in_i_valid_4(DELAY,225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together111_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist11_sync_together111_aunroll_x_in_i_valid_4_q <= $unsigned(redist10_sync_together111_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg0(REG,147)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist11_sync_together111_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist8_sync_together111_aunroll_x_in_c0_eni7_7_tpl_5(DELAY,222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together111_aunroll_x_in_c0_eni7_7_tpl_5_delay_0 <= '0;
            redist8_sync_together111_aunroll_x_in_c0_eni7_7_tpl_5_delay_1 <= '0;
            redist8_sync_together111_aunroll_x_in_c0_eni7_7_tpl_5_delay_2 <= '0;
            redist8_sync_together111_aunroll_x_in_c0_eni7_7_tpl_5_delay_3 <= '0;
            redist8_sync_together111_aunroll_x_in_c0_eni7_7_tpl_5_q <= '0;
        end
        else
        begin
            redist8_sync_together111_aunroll_x_in_c0_eni7_7_tpl_5_delay_0 <= $unsigned(in_c0_eni7_7_tpl);
            redist8_sync_together111_aunroll_x_in_c0_eni7_7_tpl_5_delay_1 <= redist8_sync_together111_aunroll_x_in_c0_eni7_7_tpl_5_delay_0;
            redist8_sync_together111_aunroll_x_in_c0_eni7_7_tpl_5_delay_2 <= redist8_sync_together111_aunroll_x_in_c0_eni7_7_tpl_5_delay_1;
            redist8_sync_together111_aunroll_x_in_c0_eni7_7_tpl_5_delay_3 <= redist8_sync_together111_aunroll_x_in_c0_eni7_7_tpl_5_delay_2;
            redist8_sync_together111_aunroll_x_in_c0_eni7_7_tpl_5_q <= redist8_sync_together111_aunroll_x_in_c0_eni7_7_tpl_5_delay_3;
        end
    end

    // redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_notEnable(LOGICAL,252)
    assign redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_nor(LOGICAL,253)
    assign redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_nor_q = ~ (redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_notEnable_q | redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_sticky_ena_q);

    // redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_mem_last(CONSTANT,249)
    assign redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_cmp(LOGICAL,250)
    assign redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_cmp_b = {1'b0, redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_rdcnt_q};
    assign redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_cmp_q = $unsigned(redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_mem_last_q == redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_cmpReg(REG,251)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_cmpReg_q <= $unsigned(redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_cmp_q);
        end
    end

    // redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_sticky_ena(REG,254)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_nor_q == 1'b1)
        begin
            redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_sticky_ena_q <= $unsigned(redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_cmpReg_q);
        end
    end

    // redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_enaAnd(LOGICAL,255)
    assign redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_enaAnd_q = redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_sticky_ena_q & VCC_q;

    // redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_rdcnt(COUNTER,247)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_rdcnt_i <= $unsigned(redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_rdcnt_q = redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_rdcnt_i[1:0];

    // redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_wraddr(REG,248)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_wraddr_q <= $unsigned(redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_rdcnt_q);
        end
    end

    // redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_mem(DUALMEM,246)
    assign redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_mem_ia = $unsigned(in_c0_eni7_6_tpl);
    assign redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_mem_aa = redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_wraddr_q;
    assign redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_mem_ab = redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_rdcnt_q;
    assign redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_mem_dmem (
        .clocken1(redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_mem_aa),
        .data_a(redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_mem_ab),
        .q_b(redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_mem_iq),
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
    assign redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_mem_q = redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_mem_iq[31:0];

    // redist1_sync_together111_aunroll_x_in_c0_eni7_1_tpl_4(DELAY,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together111_aunroll_x_in_c0_eni7_1_tpl_4_delay_0 <= '0;
            redist1_sync_together111_aunroll_x_in_c0_eni7_1_tpl_4_delay_1 <= '0;
            redist1_sync_together111_aunroll_x_in_c0_eni7_1_tpl_4_q <= '0;
        end
        else
        begin
            redist1_sync_together111_aunroll_x_in_c0_eni7_1_tpl_4_delay_0 <= $unsigned(redist0_sync_together111_aunroll_x_in_c0_eni7_1_tpl_1_q);
            redist1_sync_together111_aunroll_x_in_c0_eni7_1_tpl_4_delay_1 <= redist1_sync_together111_aunroll_x_in_c0_eni7_1_tpl_4_delay_0;
            redist1_sync_together111_aunroll_x_in_c0_eni7_1_tpl_4_q <= redist1_sync_together111_aunroll_x_in_c0_eni7_1_tpl_4_delay_1;
        end
    end

    // redist2_sync_together111_aunroll_x_in_c0_eni7_1_tpl_5(DELAY,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together111_aunroll_x_in_c0_eni7_1_tpl_5_q <= '0;
        end
        else
        begin
            redist2_sync_together111_aunroll_x_in_c0_eni7_1_tpl_5_q <= $unsigned(redist1_sync_together111_aunroll_x_in_c0_eni7_1_tpl_4_q);
        end
    end

    // valid_fanout_reg16(REG,163)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist11_sync_together111_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg17(REG,164)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist11_sync_together111_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp1224_push20_mmul51(BLACKBOX,76)@6
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    mmul_i_llvm_fpga_push_i1_notcmp1224_push20_0 thei_llvm_fpga_push_i1_notcmp1224_push20_mmul51 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp1224_pop20_mmul50_out_data_out),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i1_notcmp1224_pop20_mmul50_out_feedback_stall_out_20),
        .in_keep_going(redist20_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i1_notcmp1224_push20_mmul51_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i1_notcmp1224_push20_mmul51_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together111_aunroll_x_in_c0_eni7_5_tpl_5(DELAY,220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together111_aunroll_x_in_c0_eni7_5_tpl_5_delay_0 <= '0;
            redist6_sync_together111_aunroll_x_in_c0_eni7_5_tpl_5_delay_1 <= '0;
            redist6_sync_together111_aunroll_x_in_c0_eni7_5_tpl_5_delay_2 <= '0;
            redist6_sync_together111_aunroll_x_in_c0_eni7_5_tpl_5_delay_3 <= '0;
            redist6_sync_together111_aunroll_x_in_c0_eni7_5_tpl_5_q <= '0;
        end
        else
        begin
            redist6_sync_together111_aunroll_x_in_c0_eni7_5_tpl_5_delay_0 <= $unsigned(in_c0_eni7_5_tpl);
            redist6_sync_together111_aunroll_x_in_c0_eni7_5_tpl_5_delay_1 <= redist6_sync_together111_aunroll_x_in_c0_eni7_5_tpl_5_delay_0;
            redist6_sync_together111_aunroll_x_in_c0_eni7_5_tpl_5_delay_2 <= redist6_sync_together111_aunroll_x_in_c0_eni7_5_tpl_5_delay_1;
            redist6_sync_together111_aunroll_x_in_c0_eni7_5_tpl_5_delay_3 <= redist6_sync_together111_aunroll_x_in_c0_eni7_5_tpl_5_delay_2;
            redist6_sync_together111_aunroll_x_in_c0_eni7_5_tpl_5_q <= redist6_sync_together111_aunroll_x_in_c0_eni7_5_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp1224_pop20_mmul50(BLACKBOX,67)@6
    // out out_feedback_stall_out_20@20000000
    mmul_i_llvm_fpga_pop_i1_notcmp1224_pop20_0 thei_llvm_fpga_pop_i1_notcmp1224_pop20_mmul50 (
        .in_data_in(redist6_sync_together111_aunroll_x_in_c0_eni7_5_tpl_5_q),
        .in_dir(redist2_sync_together111_aunroll_x_in_c0_eni7_1_tpl_5_q),
        .in_feedback_in_20(i_llvm_fpga_push_i1_notcmp1224_push20_mmul51_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i1_notcmp1224_push20_mmul51_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1224_pop20_mmul50_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i1_notcmp1224_pop20_mmul50_out_feedback_stall_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg14(REG,161)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist11_sync_together111_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg15(REG,162)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist11_sync_together111_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp1623_push19_mmul49(BLACKBOX,77)@6
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    mmul_i_llvm_fpga_push_i1_notcmp1623_push19_0 thei_llvm_fpga_push_i1_notcmp1623_push19_mmul49 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp1623_pop19_mmul48_out_data_out),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i1_notcmp1623_pop19_mmul48_out_feedback_stall_out_19),
        .in_keep_going(redist20_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i1_notcmp1623_push19_mmul49_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i1_notcmp1623_push19_mmul49_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together111_aunroll_x_in_c0_eni7_4_tpl_5(DELAY,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together111_aunroll_x_in_c0_eni7_4_tpl_5_delay_0 <= '0;
            redist5_sync_together111_aunroll_x_in_c0_eni7_4_tpl_5_delay_1 <= '0;
            redist5_sync_together111_aunroll_x_in_c0_eni7_4_tpl_5_delay_2 <= '0;
            redist5_sync_together111_aunroll_x_in_c0_eni7_4_tpl_5_delay_3 <= '0;
            redist5_sync_together111_aunroll_x_in_c0_eni7_4_tpl_5_q <= '0;
        end
        else
        begin
            redist5_sync_together111_aunroll_x_in_c0_eni7_4_tpl_5_delay_0 <= $unsigned(in_c0_eni7_4_tpl);
            redist5_sync_together111_aunroll_x_in_c0_eni7_4_tpl_5_delay_1 <= redist5_sync_together111_aunroll_x_in_c0_eni7_4_tpl_5_delay_0;
            redist5_sync_together111_aunroll_x_in_c0_eni7_4_tpl_5_delay_2 <= redist5_sync_together111_aunroll_x_in_c0_eni7_4_tpl_5_delay_1;
            redist5_sync_together111_aunroll_x_in_c0_eni7_4_tpl_5_delay_3 <= redist5_sync_together111_aunroll_x_in_c0_eni7_4_tpl_5_delay_2;
            redist5_sync_together111_aunroll_x_in_c0_eni7_4_tpl_5_q <= redist5_sync_together111_aunroll_x_in_c0_eni7_4_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp1623_pop19_mmul48(BLACKBOX,68)@6
    // out out_feedback_stall_out_19@20000000
    mmul_i_llvm_fpga_pop_i1_notcmp1623_pop19_0 thei_llvm_fpga_pop_i1_notcmp1623_pop19_mmul48 (
        .in_data_in(redist5_sync_together111_aunroll_x_in_c0_eni7_4_tpl_5_q),
        .in_dir(redist2_sync_together111_aunroll_x_in_c0_eni7_1_tpl_5_q),
        .in_feedback_in_19(i_llvm_fpga_push_i1_notcmp1623_push19_mmul49_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i1_notcmp1623_push19_mmul49_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1623_pop19_mmul48_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i1_notcmp1623_pop19_mmul48_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_masked_mmul47(LOGICAL,94)@2 + 1
    assign i_masked_mmul47_qi = i_notcmp_mmul42_q & i_first_cleanup_mmul3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_mmul47_delay ( .xin(i_masked_mmul47_qi), .xout(i_masked_mmul47_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist13_i_masked_mmul47_q_4(DELAY,227)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_masked_mmul47_q_4_delay_0 <= '0;
            redist13_i_masked_mmul47_q_4_delay_1 <= '0;
            redist13_i_masked_mmul47_q_4_q <= '0;
        end
        else
        begin
            redist13_i_masked_mmul47_q_4_delay_0 <= $unsigned(i_masked_mmul47_q);
            redist13_i_masked_mmul47_q_4_delay_1 <= redist13_i_masked_mmul47_q_4_delay_0;
            redist13_i_masked_mmul47_q_4_q <= redist13_i_masked_mmul47_q_4_delay_1;
        end
    end

    // i_acc_control_signal_mmul33(LOGICAL,39)@6
    assign i_acc_control_signal_mmul33_q = redist2_sync_together111_aunroll_x_in_c0_eni7_1_tpl_5_q ^ VCC_q;

    // valid_fanout_reg9(REG,156)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul25(BLACKBOX,85)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    mmul_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_0 thei_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul25 (
        .in_buffer_in(in_N),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul25_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul9_mmul26_bs2_merged_bit_select(BITSELECT,213)@2
    assign i_mul9_mmul26_bs2_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul25_out_buffer_out[31:18];
    assign i_mul9_mmul26_bs2_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul25_out_buffer_out[17:0];

    // valid_fanout_reg5(REG,152)@1 + 1
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

    // valid_fanout_reg13(REG,160)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist9_sync_together111_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist19_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_2(DELAY,233)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_2_q <= $unsigned(redist18_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q);
        end
    end

    // c_i32_182(CONSTANT,35)
    assign c_i32_182_q = $unsigned(32'b00000000000000000000000000000001);

    // redist15_i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_data_out_1(DELAY,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_data_out_1_q <= '0;
        end
        else
        begin
            redist15_i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_data_out);
        end
    end

    // i_inc_mmul34(ADD,61)@3
    assign i_inc_mmul34_a = {1'b0, redist15_i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_data_out_1_q};
    assign i_inc_mmul34_b = {1'b0, c_i32_182_q};
    assign i_inc_mmul34_o = $unsigned(i_inc_mmul34_a) + $unsigned(i_inc_mmul34_b);
    assign i_inc_mmul34_q = i_inc_mmul34_o[32:0];

    // bgTrunc_i_inc_mmul34_sel_x(BITSELECT,117)@3
    assign bgTrunc_i_inc_mmul34_sel_x_b = i_inc_mmul34_q[31:0];

    // i_llvm_fpga_push_i32_k_022_push14_mmul35(BLACKBOX,82)@3
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    mmul_i_llvm_fpga_push_i32_k_022_push14_0 thei_llvm_fpga_push_i32_k_022_push14_mmul35 (
        .in_data_in(bgTrunc_i_inc_mmul34_sel_x_b),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_feedback_stall_out_14),
        .in_keep_going(redist19_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i32_k_022_push14_mmul35_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i32_k_022_push14_mmul35_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_081(CONSTANT,34)
    assign c_i32_081_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_k_022_pop14_mmul17(BLACKBOX,72)@2
    // out out_feedback_stall_out_14@20000000
    mmul_i_llvm_fpga_pop_i32_k_022_pop14_0 thei_llvm_fpga_pop_i32_k_022_pop14_mmul17 (
        .in_data_in(c_i32_081_q),
        .in_dir(redist0_sync_together111_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_14(i_llvm_fpga_push_i32_k_022_push14_mmul35_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i32_k_022_push14_mmul35_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul9_mmul26_bs1_merged_bit_select(BITSELECT,212)@2
    assign i_mul9_mmul26_bs1_merged_bit_select_b = i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_data_out[31:18];
    assign i_mul9_mmul26_bs1_merged_bit_select_c = i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_data_out[17:0];

    // i_mul9_mmul26_ma3_cma(CHAINMULTADD,211)@2 + 3
    assign i_mul9_mmul26_ma3_cma_reset = ~ (resetn);
    assign i_mul9_mmul26_ma3_cma_ena0 = 1'b1;
    assign i_mul9_mmul26_ma3_cma_ena1 = i_mul9_mmul26_ma3_cma_ena0;
    assign i_mul9_mmul26_ma3_cma_ena2 = i_mul9_mmul26_ma3_cma_ena0;

    assign i_mul9_mmul26_ma3_cma_a0 = i_mul9_mmul26_bs1_merged_bit_select_b;
    assign i_mul9_mmul26_ma3_cma_c0 = i_mul9_mmul26_bs2_merged_bit_select_c;
    assign i_mul9_mmul26_ma3_cma_a1 = i_mul9_mmul26_bs2_merged_bit_select_b;
    assign i_mul9_mmul26_ma3_cma_c1 = i_mul9_mmul26_bs1_merged_bit_select_c;
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
    ) i_mul9_mmul26_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul9_mmul26_ma3_cma_ena2, i_mul9_mmul26_ma3_cma_ena1, i_mul9_mmul26_ma3_cma_ena0 }),
        .aclr({ i_mul9_mmul26_ma3_cma_reset, i_mul9_mmul26_ma3_cma_reset }),
        .ay(i_mul9_mmul26_ma3_cma_a1),
        .by(i_mul9_mmul26_ma3_cma_a0),
        .ax(i_mul9_mmul26_ma3_cma_c1),
        .bx(i_mul9_mmul26_ma3_cma_c0),
        .resulta(i_mul9_mmul26_ma3_cma_s0),
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
    i_mul9_mmul26_ma3_cma_delay ( .xin(i_mul9_mmul26_ma3_cma_s0), .xout(i_mul9_mmul26_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul9_mmul26_ma3_cma_q = $unsigned(i_mul9_mmul26_ma3_cma_qq[32:0]);

    // i_mul9_mmul26_sums_align_1(BITSHIFT,190)@5
    assign i_mul9_mmul26_sums_align_1_qint = { i_mul9_mmul26_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul9_mmul26_sums_align_1_q = i_mul9_mmul26_sums_align_1_qint[50:0];

    // i_mul9_mmul26_im0_cma(CHAINMULTADD,209)@2 + 3
    assign i_mul9_mmul26_im0_cma_reset = ~ (resetn);
    assign i_mul9_mmul26_im0_cma_ena0 = 1'b1;
    assign i_mul9_mmul26_im0_cma_ena1 = i_mul9_mmul26_im0_cma_ena0;
    assign i_mul9_mmul26_im0_cma_ena2 = i_mul9_mmul26_im0_cma_ena0;

    assign i_mul9_mmul26_im0_cma_a0 = i_mul9_mmul26_bs1_merged_bit_select_b;
    assign i_mul9_mmul26_im0_cma_c0 = i_mul9_mmul26_bs2_merged_bit_select_b;
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
    ) i_mul9_mmul26_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul9_mmul26_im0_cma_ena2, i_mul9_mmul26_im0_cma_ena1, i_mul9_mmul26_im0_cma_ena0 }),
        .aclr({ i_mul9_mmul26_im0_cma_reset, i_mul9_mmul26_im0_cma_reset }),
        .ay(i_mul9_mmul26_im0_cma_a0),
        .ax(i_mul9_mmul26_im0_cma_c0),
        .resulta(i_mul9_mmul26_im0_cma_s0),
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
    i_mul9_mmul26_im0_cma_delay ( .xin(i_mul9_mmul26_im0_cma_s0), .xout(i_mul9_mmul26_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul9_mmul26_im0_cma_q = $unsigned(i_mul9_mmul26_im0_cma_qq[27:0]);

    // i_mul9_mmul26_im8_cma(CHAINMULTADD,210)@2 + 3
    assign i_mul9_mmul26_im8_cma_reset = ~ (resetn);
    assign i_mul9_mmul26_im8_cma_ena0 = 1'b1;
    assign i_mul9_mmul26_im8_cma_ena1 = i_mul9_mmul26_im8_cma_ena0;
    assign i_mul9_mmul26_im8_cma_ena2 = i_mul9_mmul26_im8_cma_ena0;

    assign i_mul9_mmul26_im8_cma_a0 = i_mul9_mmul26_bs1_merged_bit_select_c;
    assign i_mul9_mmul26_im8_cma_c0 = i_mul9_mmul26_bs2_merged_bit_select_c;
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
    ) i_mul9_mmul26_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul9_mmul26_im8_cma_ena2, i_mul9_mmul26_im8_cma_ena1, i_mul9_mmul26_im8_cma_ena0 }),
        .aclr({ i_mul9_mmul26_im8_cma_reset, i_mul9_mmul26_im8_cma_reset }),
        .ay(i_mul9_mmul26_im8_cma_a0),
        .ax(i_mul9_mmul26_im8_cma_c0),
        .resulta(i_mul9_mmul26_im8_cma_s0),
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
    i_mul9_mmul26_im8_cma_delay ( .xin(i_mul9_mmul26_im8_cma_s0), .xout(i_mul9_mmul26_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul9_mmul26_im8_cma_q = $unsigned(i_mul9_mmul26_im8_cma_qq[35:0]);

    // i_mul9_mmul26_sums_join_0(BITJOIN,189)@5
    assign i_mul9_mmul26_sums_join_0_q = {i_mul9_mmul26_im0_cma_q, i_mul9_mmul26_im8_cma_q};

    // i_mul9_mmul26_sums_result_add_0_0(ADD,192)@5
    assign i_mul9_mmul26_sums_result_add_0_0_a = {1'b0, i_mul9_mmul26_sums_join_0_q};
    assign i_mul9_mmul26_sums_result_add_0_0_b = {14'b00000000000000, i_mul9_mmul26_sums_align_1_q};
    assign i_mul9_mmul26_sums_result_add_0_0_o = $unsigned(i_mul9_mmul26_sums_result_add_0_0_a) + $unsigned(i_mul9_mmul26_sums_result_add_0_0_b);
    assign i_mul9_mmul26_sums_result_add_0_0_q = i_mul9_mmul26_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul9_mmul26_sel_x(BITSELECT,118)@5
    assign bgTrunc_i_mul9_mmul26_sel_x_in = i_mul9_mmul26_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul9_mmul26_sel_x_b = bgTrunc_i_mul9_mmul26_sel_x_in[31:0];

    // redist12_bgTrunc_i_mul9_mmul26_sel_x_b_1(DELAY,226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_bgTrunc_i_mul9_mmul26_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist12_bgTrunc_i_mul9_mmul26_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul9_mmul26_sel_x_b);
        end
    end

    // i_add10_mmul29(ADD,40)@6
    assign i_add10_mmul29_a = {1'b0, redist12_bgTrunc_i_mul9_mmul26_sel_x_b_1_q};
    assign i_add10_mmul29_b = {1'b0, redist17_i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27_out_data_out_4_outputreg0_q};
    assign i_add10_mmul29_o = $unsigned(i_add10_mmul29_a) + $unsigned(i_add10_mmul29_b);
    assign i_add10_mmul29_q = i_add10_mmul29_o[32:0];

    // bgTrunc_i_add10_mmul29_sel_x(BITSELECT,114)@6
    assign bgTrunc_i_add10_mmul29_sel_x_b = i_add10_mmul29_q[31:0];

    // i_idxprom11_mmul30_sel_x(BITSELECT,138)@6
    assign i_idxprom11_mmul30_sel_x_b = $unsigned({{32{bgTrunc_i_add10_mmul29_sel_x_b[31]}}, bgTrunc_i_add10_mmul29_sel_x_b[31:0]});

    // i_arrayidx122_mmul0_narrow_x(BITSELECT,123)@6
    assign i_arrayidx122_mmul0_narrow_x_b = i_idxprom11_mmul30_sel_x_b[61:0];

    // i_arrayidx122_mmul0_shift_join_x(BITJOIN,124)@6
    assign i_arrayidx122_mmul0_shift_join_x_q = {i_arrayidx122_mmul0_narrow_x_b, i_arrayidx122_mmul32_vt_const_1_q};

    // valid_fanout_reg12(REG,159)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist11_sync_together111_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul31(BLACKBOX,90)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    mmul_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul31 (
        .in_buffer_in(in_B),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul31_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul31_vt_select_63(BITSELECT,93)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul31_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul31_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_vt_const_9(CONSTANT,87)
    assign i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul31_vt_join(BITJOIN,92)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul31_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul31_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_vt_const_9_q};

    // i_arrayidx122_mmul0_add_x(ADD,121)@6
    assign i_arrayidx122_mmul0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul31_vt_join_q};
    assign i_arrayidx122_mmul0_add_x_b = {1'b0, i_arrayidx122_mmul0_shift_join_x_q};
    assign i_arrayidx122_mmul0_add_x_o = $unsigned(i_arrayidx122_mmul0_add_x_a) + $unsigned(i_arrayidx122_mmul0_add_x_b);
    assign i_arrayidx122_mmul0_add_x_q = i_arrayidx122_mmul0_add_x_o[64:0];

    // i_arrayidx122_mmul0_dupName_0_trunc_sel_x(BITSELECT,126)@6
    assign i_arrayidx122_mmul0_dupName_0_trunc_sel_x_b = i_arrayidx122_mmul0_add_x_q[63:0];

    // i_arrayidx122_mmul32_vt_select_63(BITSELECT,44)@6
    assign i_arrayidx122_mmul32_vt_select_63_b = i_arrayidx122_mmul0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx122_mmul32_vt_const_1(CONSTANT,42)
    assign i_arrayidx122_mmul32_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx122_mmul32_vt_join(BITJOIN,43)@6
    assign i_arrayidx122_mmul32_vt_join_q = {i_arrayidx122_mmul32_vt_select_63_b, i_arrayidx122_mmul32_vt_const_1_q};

    // valid_fanout_reg10(REG,157)@1 + 1
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

    // valid_fanout_reg11(REG,158)@1 + 1
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

    // i_llvm_fpga_push_i32_j_025_pop1025_push21_mmul28(BLACKBOX,81)@2
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    mmul_i_llvm_fpga_push_i32_j_025_pop1025_push21_0 thei_llvm_fpga_push_i32_j_025_pop1025_push21_mmul28 (
        .in_data_in(i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27_out_data_out),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27_out_feedback_stall_out_21),
        .in_keep_going(redist18_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i32_j_025_pop1025_push21_mmul28_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i32_j_025_pop1025_push21_mmul28_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together111_aunroll_x_in_c0_eni7_3_tpl_1(DELAY,218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together111_aunroll_x_in_c0_eni7_3_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together111_aunroll_x_in_c0_eni7_3_tpl_1_q <= $unsigned(in_c0_eni7_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27(BLACKBOX,71)@2
    // out out_feedback_stall_out_21@20000000
    mmul_i_llvm_fpga_pop_i32_j_025_pop1025_pop21_0 thei_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27 (
        .in_data_in(redist4_sync_together111_aunroll_x_in_c0_eni7_3_tpl_1_q),
        .in_dir(redist0_sync_together111_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_21(i_llvm_fpga_push_i32_j_025_pop1025_push21_mmul28_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i32_j_025_pop1025_push21_mmul28_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27_out_data_out_4_inputreg0(DELAY,257)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27_out_data_out_4_inputreg0_q <= '0;
        end
        else
        begin
            redist17_i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27_out_data_out_4_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27_out_data_out);
        end
    end

    // redist17_i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27_out_data_out_4(DELAY,231)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27_out_data_out_4_delay_0 <= '0;
            redist17_i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27_out_data_out_4_q <= '0;
        end
        else
        begin
            redist17_i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27_out_data_out_4_delay_0 <= $unsigned(redist17_i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27_out_data_out_4_inputreg0_q);
            redist17_i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27_out_data_out_4_q <= redist17_i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27_out_data_out_4_delay_0;
        end
    end

    // redist17_i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27_out_data_out_4_outputreg0(DELAY,258)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27_out_data_out_4_outputreg0_q <= '0;
        end
        else
        begin
            redist17_i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27_out_data_out_4_outputreg0_q <= $unsigned(redist17_i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27_out_data_out_4_q);
        end
    end

    // redist21_i_first_cleanup_xor_mmul4_q_4(DELAY,235)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_first_cleanup_xor_mmul4_q_4_delay_0 <= '0;
            redist21_i_first_cleanup_xor_mmul4_q_4_delay_1 <= '0;
            redist21_i_first_cleanup_xor_mmul4_q_4_delay_2 <= '0;
            redist21_i_first_cleanup_xor_mmul4_q_4_q <= '0;
        end
        else
        begin
            redist21_i_first_cleanup_xor_mmul4_q_4_delay_0 <= $unsigned(i_first_cleanup_xor_mmul4_q);
            redist21_i_first_cleanup_xor_mmul4_q_4_delay_1 <= redist21_i_first_cleanup_xor_mmul4_q_4_delay_0;
            redist21_i_first_cleanup_xor_mmul4_q_4_delay_2 <= redist21_i_first_cleanup_xor_mmul4_q_4_delay_1;
            redist21_i_first_cleanup_xor_mmul4_q_4_q <= redist21_i_first_cleanup_xor_mmul4_q_4_delay_2;
        end
    end

    // i_first_cleanup_xor_or_mmul24(LOGICAL,54)@6
    assign i_first_cleanup_xor_or_mmul24_q = i_unnamed_mmul16_q | redist21_i_first_cleanup_xor_mmul4_q_4_q;

    // redist16_i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_data_out_4(DELAY,230)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_data_out_4_delay_0 <= '0;
            redist16_i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_data_out_4_q <= '0;
        end
        else
        begin
            redist16_i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_data_out_4_delay_0 <= $unsigned(redist15_i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_data_out_1_q);
            redist16_i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_data_out_4_q <= redist16_i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_data_out_4_delay_0;
        end
    end

    // redist16_i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_data_out_4_outputreg0(DELAY,256)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_data_out_4_outputreg0_q <= '0;
        end
        else
        begin
            redist16_i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_data_out_4_outputreg0_q <= $unsigned(redist16_i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_data_out_4_q);
        end
    end

    // i_add_mmul20(ADD,41)@6
    assign i_add_mmul20_a = {1'b0, redist16_i_llvm_fpga_pop_i32_k_022_pop14_mmul17_out_data_out_4_outputreg0_q};
    assign i_add_mmul20_b = {1'b0, redist14_i_llvm_fpga_pop_i32_mul21_pop18_mmul18_out_data_out_1_q};
    assign i_add_mmul20_o = $unsigned(i_add_mmul20_a) + $unsigned(i_add_mmul20_b);
    assign i_add_mmul20_q = i_add_mmul20_o[32:0];

    // bgTrunc_i_add_mmul20_sel_x(BITSELECT,115)@6
    assign bgTrunc_i_add_mmul20_sel_x_b = i_add_mmul20_q[31:0];

    // i_idxprom_mmul21_sel_x(BITSELECT,139)@6
    assign i_idxprom_mmul21_sel_x_b = $unsigned({{32{bgTrunc_i_add_mmul20_sel_x_b[31]}}, bgTrunc_i_add_mmul20_sel_x_b[31:0]});

    // i_arrayidx1_mmul0_narrow_x(BITSELECT,129)@6
    assign i_arrayidx1_mmul0_narrow_x_b = i_idxprom_mmul21_sel_x_b[61:0];

    // i_arrayidx1_mmul0_shift_join_x(BITJOIN,130)@6
    assign i_arrayidx1_mmul0_shift_join_x_q = {i_arrayidx1_mmul0_narrow_x_b, i_arrayidx122_mmul32_vt_const_1_q};

    // valid_fanout_reg8(REG,155)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist11_sync_together111_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22(BLACKBOX,86)@0
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

    // i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_vt_select_63(BITSELECT,89)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_vt_join(BITJOIN,88)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_vt_const_9_q};

    // i_arrayidx1_mmul0_add_x(ADD,127)@6
    assign i_arrayidx1_mmul0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul22_vt_join_q};
    assign i_arrayidx1_mmul0_add_x_b = {1'b0, i_arrayidx1_mmul0_shift_join_x_q};
    assign i_arrayidx1_mmul0_add_x_o = $unsigned(i_arrayidx1_mmul0_add_x_a) + $unsigned(i_arrayidx1_mmul0_add_x_b);
    assign i_arrayidx1_mmul0_add_x_q = i_arrayidx1_mmul0_add_x_o[64:0];

    // i_arrayidx1_mmul0_dupName_0_trunc_sel_x(BITSELECT,132)@6
    assign i_arrayidx1_mmul0_dupName_0_trunc_sel_x_b = i_arrayidx1_mmul0_add_x_q[63:0];

    // i_arrayidx1_mmul23_vt_select_63(BITSELECT,47)@6
    assign i_arrayidx1_mmul23_vt_select_63_b = i_arrayidx1_mmul0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx1_mmul23_vt_join(BITJOIN,46)@6
    assign i_arrayidx1_mmul23_vt_join_q = {i_arrayidx1_mmul23_vt_select_63_b, i_arrayidx122_mmul32_vt_const_1_q};

    // valid_fanout_reg6(REG,153)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist10_sync_together111_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg7(REG,154)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist11_sync_together111_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i32_mul21_push18_mmul19(BLACKBOX,83)@6
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    mmul_i_llvm_fpga_push_i32_mul21_push18_0 thei_llvm_fpga_push_i32_mul21_push18_mmul19 (
        .in_data_in(redist14_i_llvm_fpga_pop_i32_mul21_pop18_mmul18_out_data_out_1_q),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i32_mul21_pop18_mmul18_out_feedback_stall_out_18),
        .in_keep_going(redist20_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i32_mul21_push18_mmul19_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i32_mul21_push18_mmul19_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_notEnable(LOGICAL,242)
    assign redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_nor(LOGICAL,243)
    assign redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_nor_q = ~ (redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_notEnable_q | redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_sticky_ena_q);

    // redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_mem_last(CONSTANT,239)
    assign redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_cmp(LOGICAL,240)
    assign redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_cmp_q = $unsigned(redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_mem_last_q == redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_cmpReg(REG,241)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_cmpReg_q <= $unsigned(redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_cmp_q);
        end
    end

    // redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_sticky_ena(REG,244)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_nor_q == 1'b1)
        begin
            redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_sticky_ena_q <= $unsigned(redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_cmpReg_q);
        end
    end

    // redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_enaAnd(LOGICAL,245)
    assign redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_enaAnd_q = redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_sticky_ena_q & VCC_q;

    // redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_rdcnt(COUNTER,237)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_rdcnt_i <= 2'd0;
            redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_rdcnt_i == 2'd1)
            begin
                redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_rdcnt_i <= $unsigned(redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_rdcnt_i <= $unsigned(redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_rdcnt_q = redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_rdcnt_i[1:0];

    // redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_wraddr(REG,238)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_wraddr_q <= $unsigned(redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_rdcnt_q);
        end
    end

    // redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_mem(DUALMEM,236)
    assign redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_mem_ia = $unsigned(in_c0_eni7_2_tpl);
    assign redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_mem_aa = redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_wraddr_q;
    assign redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_mem_ab = redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_rdcnt_q;
    assign redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_mem_reset0 = ~ (resetn);
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
    ) redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_mem_dmem (
        .clocken1(redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_mem_aa),
        .data_a(redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_mem_ab),
        .q_b(redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_mem_iq),
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
    assign redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_mem_q = redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_mem_iq[31:0];

    // i_llvm_fpga_pop_i32_mul21_pop18_mmul18(BLACKBOX,73)@5
    // out out_feedback_stall_out_18@20000000
    mmul_i_llvm_fpga_pop_i32_mul21_pop18_0 thei_llvm_fpga_pop_i32_mul21_pop18_mmul18 (
        .in_data_in(redist3_sync_together111_aunroll_x_in_c0_eni7_2_tpl_4_mem_q),
        .in_dir(redist1_sync_together111_aunroll_x_in_c0_eni7_1_tpl_4_q),
        .in_feedback_in_18(i_llvm_fpga_push_i32_mul21_push18_mmul19_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i32_mul21_push18_mmul19_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul21_pop18_mmul18_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i32_mul21_pop18_mmul18_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_i_llvm_fpga_pop_i32_mul21_pop18_mmul18_out_data_out_1(DELAY,228)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i32_mul21_pop18_mmul18_out_data_out_1_q <= '0;
        end
        else
        begin
            redist14_i_llvm_fpga_pop_i32_mul21_pop18_mmul18_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_mul21_pop18_mmul18_out_data_out);
        end
    end

    // valid_fanout_reg4(REG,151)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist11_sync_together111_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp275_mmul15(BLACKBOX,63)@6
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

    // i_unnamed_mmul16(LOGICAL,102)@6
    assign i_unnamed_mmul16_q = i_llvm_fpga_ffwd_dest_i1_cmp275_mmul15_out_dest_data_out_0_0 ^ VCC_q;

    // redist20_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5(DELAY,234)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_delay_0 <= '0;
            redist20_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_delay_1 <= '0;
            redist20_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_q <= '0;
        end
        else
        begin
            redist20_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_delay_0 <= $unsigned(redist19_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_2_q);
            redist20_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_delay_1 <= redist20_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_delay_0;
            redist20_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_q <= redist20_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_delay_1;
        end
    end

    // sync_out_aunroll_x(GPOUT,145)@6
    assign out_c0_exi14_0_tpl = GND_q;
    assign out_c0_exi14_1_tpl = redist20_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_q;
    assign out_c0_exi14_2_tpl = i_unnamed_mmul16_q;
    assign out_c0_exi14_3_tpl = redist14_i_llvm_fpga_pop_i32_mul21_pop18_mmul18_out_data_out_1_q;
    assign out_c0_exi14_4_tpl = i_arrayidx1_mmul23_vt_join_q;
    assign out_c0_exi14_5_tpl = i_first_cleanup_xor_or_mmul24_q;
    assign out_c0_exi14_6_tpl = redist17_i_llvm_fpga_pop_i32_j_025_pop1025_pop21_mmul27_out_data_out_4_outputreg0_q;
    assign out_c0_exi14_7_tpl = i_arrayidx122_mmul32_vt_join_q;
    assign out_c0_exi14_8_tpl = i_acc_control_signal_mmul33_q;
    assign out_c0_exi14_9_tpl = redist13_i_masked_mmul47_q_4_q;
    assign out_c0_exi14_10_tpl = i_llvm_fpga_pop_i1_notcmp1623_pop19_mmul48_out_data_out;
    assign out_c0_exi14_11_tpl = i_llvm_fpga_pop_i1_notcmp1224_pop20_mmul50_out_data_out;
    assign out_c0_exi14_12_tpl = redist2_sync_together111_aunroll_x_in_c0_eni7_1_tpl_5_q;
    assign out_c0_exi14_13_tpl = redist7_sync_together111_aunroll_x_in_c0_eni7_6_tpl_5_mem_q;
    assign out_c0_exi14_14_tpl = redist8_sync_together111_aunroll_x_in_c0_eni7_7_tpl_5_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_mmul3 = GND_q;

endmodule
