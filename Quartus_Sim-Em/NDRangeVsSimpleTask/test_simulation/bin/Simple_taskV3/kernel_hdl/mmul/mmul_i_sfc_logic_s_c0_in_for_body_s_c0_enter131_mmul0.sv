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

// SystemVerilog created from mmul_i_sfc_logic_s_c0_in_for_body_s_c0_enter131_mmul0
// SystemVerilog created on Wed May 10 11:34:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_i_sfc_logic_s_c0_in_for_body_s_c0_enter131_mmul0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_A,
    input wire [63:0] in_B,
    input wire [31:0] in_N,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [32:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_j_m,
    output wire [0:0] out_c0_exi8_0_tpl,
    output wire [0:0] out_c0_exi8_1_tpl,
    output wire [0:0] out_c0_exi8_2_tpl,
    output wire [63:0] out_c0_exi8_3_tpl,
    output wire [0:0] out_c0_exi8_4_tpl,
    output wire [63:0] out_c0_exi8_5_tpl,
    output wire [0:0] out_c0_exi8_6_tpl,
    output wire [0:0] out_c0_exi8_7_tpl,
    output wire [0:0] out_c0_exi8_8_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_mmul5,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_070_q;
    wire [31:0] c_i32_171_q;
    wire [32:0] c_i33_173_q;
    wire [32:0] c_i33_undef69_q;
    wire [3:0] c_i4_766_q;
    wire [0:0] i_acc_control_signal_mmul31_q;
    wire [32:0] i_add2_mmul27_a;
    wire [32:0] i_add2_mmul27_b;
    logic [32:0] i_add2_mmul27_o;
    wire [32:0] i_add2_mmul27_q;
    wire [32:0] i_add_mmul19_a;
    wire [32:0] i_add_mmul19_b;
    logic [32:0] i_add_mmul19_o;
    wire [32:0] i_add_mmul19_q;
    wire [1:0] i_arrayidx2_mmul22_vt_const_1_q;
    wire [63:0] i_arrayidx2_mmul22_vt_join_q;
    wire [61:0] i_arrayidx2_mmul22_vt_select_63_b;
    wire [63:0] i_arrayidx43_mmul30_vt_join_q;
    wire [61:0] i_arrayidx43_mmul30_vt_select_63_b;
    wire [3:0] i_cleanups_shl_mmul5_vt_join_q;
    wire [2:0] i_cleanups_shl_mmul5_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor_mmul4_q;
    wire [0:0] i_first_cleanup_xor_or_mmul23_q;
    wire [33:0] i_fpga_indvars_iv_next_mmul36_a;
    wire [33:0] i_fpga_indvars_iv_next_mmul36_b;
    logic [33:0] i_fpga_indvars_iv_next_mmul36_o;
    wire [33:0] i_fpga_indvars_iv_next_mmul36_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_mmul14_s;
    reg [32:0] i_fpga_indvars_iv_replace_phi_mmul14_q;
    wire [32:0] i_inc_mmul32_a;
    wire [32:0] i_inc_mmul32_b;
    logic [32:0] i_inc_mmul32_o;
    wire [32:0] i_inc_mmul32_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp126_mmul15_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp128_mmul38_out_dest_data_out_0_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_mul10_mmul17_out_dest_data_out_1_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_mmul7_mmul12_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_k_014_pop4_mmul18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_014_pop4_mmul18_out_feedback_stall_out_4;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop3_mmul13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop3_mmul13_out_feedback_stall_out_3;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop7_mmul2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop7_mmul2_out_feedback_stall_out_7;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop6_mmul7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop6_mmul7_out_feedback_stall_out_6;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_mmul11_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_mmul11_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_mmul41_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_mmul41_out_feedback_valid_out_2;
    wire [31:0] i_llvm_fpga_push_i32_k_014_push4_mmul33_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i32_k_014_push4_mmul33_out_feedback_valid_out_4;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push3_mmul37_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push3_mmul37_out_feedback_valid_out_3;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push7_mmul44_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push7_mmul44_out_feedback_valid_out_7;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push6_mmul9_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push6_mmul9_out_feedback_valid_out_6;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer_mmul26_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul24_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul21_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul21_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul21_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul21_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul29_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul29_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul29_vt_select_63_b;
    wire [0:0] i_masked_mmul45_qi;
    reg [0:0] i_masked_mmul45_q;
    wire [0:0] i_next_cleanups_mmul43_s;
    reg [3:0] i_next_cleanups_mmul43_q;
    wire [3:0] i_next_initerations_mmul8_vt_join_q;
    wire [2:0] i_next_initerations_mmul8_vt_select_2_b;
    wire [0:0] i_notcmp_mmul40_q;
    wire [0:0] i_or_mmul42_q;
    wire [0:0] i_unnamed_mmul16_q;
    wire [0:0] i_unnamed_mmul39_q;
    wire [31:0] bgTrunc_i_add2_mmul27_sel_x_b;
    wire [31:0] bgTrunc_i_add_mmul19_sel_x_b;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_mmul36_sel_x_b;
    wire [31:0] bgTrunc_i_inc_mmul32_sel_x_b;
    wire [63:0] bgTrunc_i_mul1_mmul25_sel_x_in;
    wire [31:0] bgTrunc_i_mul1_mmul25_sel_x_b;
    wire [64:0] i_arrayidx2_mmul0_add_x_a;
    wire [64:0] i_arrayidx2_mmul0_add_x_b;
    logic [64:0] i_arrayidx2_mmul0_add_x_o;
    wire [64:0] i_arrayidx2_mmul0_add_x_q;
    wire [61:0] i_arrayidx2_mmul0_narrow_x_b;
    wire [63:0] i_arrayidx2_mmul0_shift_join_x_q;
    wire [63:0] i_arrayidx2_mmul0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx43_mmul0_add_x_a;
    wire [64:0] i_arrayidx43_mmul0_add_x_b;
    logic [64:0] i_arrayidx43_mmul0_add_x_o;
    wire [64:0] i_arrayidx43_mmul0_add_x_q;
    wire [61:0] i_arrayidx43_mmul0_narrow_x_b;
    wire [63:0] i_arrayidx43_mmul0_shift_join_x_q;
    wire [63:0] i_arrayidx43_mmul0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_mmul3_sel_x_b;
    wire [63:0] i_idxprom3_mmul28_sel_x_b;
    wire [63:0] i_idxprom_mmul20_sel_x_b;
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
    wire [0:0] i_exitcond_mmul34_cmp_nsign_q;
    wire [63:0] i_mul1_mmul25_sums_join_0_q;
    wire [50:0] i_mul1_mmul25_sums_align_1_q;
    wire [50:0] i_mul1_mmul25_sums_align_1_qint;
    wire [64:0] i_mul1_mmul25_sums_result_add_0_0_a;
    wire [64:0] i_mul1_mmul25_sums_result_add_0_0_b;
    logic [64:0] i_mul1_mmul25_sums_result_add_0_0_o;
    wire [64:0] i_mul1_mmul25_sums_result_add_0_0_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid182_i_cleanups_shl_mmul0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid182_i_cleanups_shl_mmul0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid183_i_cleanups_shl_mmul0_shift_x_q;
    wire [0:0] leftShiftStage0_uid185_i_cleanups_shl_mmul0_shift_x_s;
    reg [3:0] leftShiftStage0_uid185_i_cleanups_shl_mmul0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid189_i_next_initerations_mmul0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid191_i_next_initerations_mmul0_shift_x_q;
    wire [0:0] rightShiftStage0_uid193_i_next_initerations_mmul0_shift_x_s;
    reg [3:0] rightShiftStage0_uid193_i_next_initerations_mmul0_shift_x_q;
    wire i_mul1_mmul25_im0_cma_reset;
    wire [13:0] i_mul1_mmul25_im0_cma_a0;
    wire [13:0] i_mul1_mmul25_im0_cma_c0;
    wire [27:0] i_mul1_mmul25_im0_cma_s0;
    wire [27:0] i_mul1_mmul25_im0_cma_qq;
    wire [27:0] i_mul1_mmul25_im0_cma_q;
    wire i_mul1_mmul25_im0_cma_ena0;
    wire i_mul1_mmul25_im0_cma_ena1;
    wire i_mul1_mmul25_im0_cma_ena2;
    wire i_mul1_mmul25_im8_cma_reset;
    wire [17:0] i_mul1_mmul25_im8_cma_a0;
    wire [17:0] i_mul1_mmul25_im8_cma_c0;
    wire [35:0] i_mul1_mmul25_im8_cma_s0;
    wire [35:0] i_mul1_mmul25_im8_cma_qq;
    wire [35:0] i_mul1_mmul25_im8_cma_q;
    wire i_mul1_mmul25_im8_cma_ena0;
    wire i_mul1_mmul25_im8_cma_ena1;
    wire i_mul1_mmul25_im8_cma_ena2;
    wire i_mul1_mmul25_ma3_cma_reset;
    wire [13:0] i_mul1_mmul25_ma3_cma_a0;
    wire [17:0] i_mul1_mmul25_ma3_cma_c0;
    wire [13:0] i_mul1_mmul25_ma3_cma_a1;
    wire [17:0] i_mul1_mmul25_ma3_cma_c1;
    wire [32:0] i_mul1_mmul25_ma3_cma_s0;
    wire [32:0] i_mul1_mmul25_ma3_cma_qq;
    wire [32:0] i_mul1_mmul25_ma3_cma_q;
    wire i_mul1_mmul25_ma3_cma_ena0;
    wire i_mul1_mmul25_ma3_cma_ena1;
    wire i_mul1_mmul25_ma3_cma_ena2;
    wire [13:0] i_mul1_mmul25_bs1_merged_bit_select_b;
    wire [17:0] i_mul1_mmul25_bs1_merged_bit_select_c;
    wire [13:0] i_mul1_mmul25_bs2_merged_bit_select_b;
    wire [17:0] i_mul1_mmul25_bs2_merged_bit_select_c;
    reg [0:0] redist0_sync_together94_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together94_aunroll_x_in_c0_eni1_1_tpl_3_q;
    reg [0:0] redist1_sync_together94_aunroll_x_in_c0_eni1_1_tpl_3_delay_0;
    reg [0:0] redist2_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_q;
    reg [0:0] redist2_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_delay_0;
    reg [0:0] redist3_sync_together94_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist3_sync_together94_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist3_sync_together94_aunroll_x_in_i_valid_3_delay_1;
    reg [0:0] redist4_sync_together94_aunroll_x_in_i_valid_4_q;
    reg [31:0] redist5_bgTrunc_i_mul1_mmul25_sel_x_b_1_q;
    reg [31:0] redist6_bgTrunc_i_add_mmul19_sel_x_b_4_q;
    reg [31:0] redist6_bgTrunc_i_add_mmul19_sel_x_b_4_delay_0;
    reg [0:0] redist7_i_masked_mmul45_q_2_q;
    reg [0:0] redist8_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q;
    reg [0:0] redist9_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_3_q;
    reg [0:0] redist9_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_3_delay_0;
    reg [0:0] redist10_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_q;
    reg [0:0] redist10_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_delay_0;
    reg [0:0] redist11_i_first_cleanup_xor_mmul4_q_2_q;
    reg [0:0] redist11_i_first_cleanup_xor_mmul4_q_2_delay_0;
    reg [31:0] redist6_bgTrunc_i_add_mmul19_sel_x_b_4_inputreg0_q;
    reg [31:0] redist6_bgTrunc_i_add_mmul19_sel_x_b_4_outputreg0_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist3_sync_together94_aunroll_x_in_i_valid_3(DELAY,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together94_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist3_sync_together94_aunroll_x_in_i_valid_3_delay_1 <= '0;
            redist3_sync_together94_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist3_sync_together94_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
            redist3_sync_together94_aunroll_x_in_i_valid_3_delay_1 <= redist3_sync_together94_aunroll_x_in_i_valid_3_delay_0;
            redist3_sync_together94_aunroll_x_in_i_valid_3_q <= redist3_sync_together94_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // redist8_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1(DELAY,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist8_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out);
        end
    end

    // redist9_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_3(DELAY,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_3_delay_0 <= '0;
            redist9_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_3_q <= '0;
        end
        else
        begin
            redist9_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_3_delay_0 <= $unsigned(redist8_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q);
            redist9_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_3_q <= redist9_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_3_delay_0;
        end
    end

    // leftShiftStage0Idx1Rng1_uid182_i_cleanups_shl_mmul0_shift_x(BITSELECT,181)@4
    assign leftShiftStage0Idx1Rng1_uid182_i_cleanups_shl_mmul0_shift_x_in = i_llvm_fpga_pop_i4_cleanups_pop7_mmul2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid182_i_cleanups_shl_mmul0_shift_x_b = leftShiftStage0Idx1Rng1_uid182_i_cleanups_shl_mmul0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid183_i_cleanups_shl_mmul0_shift_x(BITJOIN,182)@4
    assign leftShiftStage0Idx1_uid183_i_cleanups_shl_mmul0_shift_x_q = {leftShiftStage0Idx1Rng1_uid182_i_cleanups_shl_mmul0_shift_x_b, GND_q};

    // leftShiftStage0_uid185_i_cleanups_shl_mmul0_shift_x(MUX,184)@4
    assign leftShiftStage0_uid185_i_cleanups_shl_mmul0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid185_i_cleanups_shl_mmul0_shift_x_s or i_llvm_fpga_pop_i4_cleanups_pop7_mmul2_out_data_out or leftShiftStage0Idx1_uid183_i_cleanups_shl_mmul0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid185_i_cleanups_shl_mmul0_shift_x_s)
            1'b0 : leftShiftStage0_uid185_i_cleanups_shl_mmul0_shift_x_q = i_llvm_fpga_pop_i4_cleanups_pop7_mmul2_out_data_out;
            1'b1 : leftShiftStage0_uid185_i_cleanups_shl_mmul0_shift_x_q = leftShiftStage0Idx1_uid183_i_cleanups_shl_mmul0_shift_x_q;
            default : leftShiftStage0_uid185_i_cleanups_shl_mmul0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_mmul5_vt_select_3(BITSELECT,45)@4
    assign i_cleanups_shl_mmul5_vt_select_3_b = leftShiftStage0_uid185_i_cleanups_shl_mmul0_shift_x_q[3:1];

    // i_cleanups_shl_mmul5_vt_join(BITJOIN,44)@4
    assign i_cleanups_shl_mmul5_vt_join_q = {i_cleanups_shl_mmul5_vt_select_3_b, GND_q};

    // i_first_cleanup_xor_mmul4(LOGICAL,48)@4
    assign i_first_cleanup_xor_mmul4_q = i_first_cleanup_mmul3_sel_x_b ^ VCC_q;

    // i_notcmp_mmul40(LOGICAL,89)@4
    assign i_notcmp_mmul40_q = i_unnamed_mmul39_q ^ VCC_q;

    // i_or_mmul42(LOGICAL,90)@4
    assign i_or_mmul42_q = i_notcmp_mmul40_q | i_first_cleanup_xor_mmul4_q;

    // i_next_cleanups_mmul43(MUX,85)@4
    assign i_next_cleanups_mmul43_s = i_or_mmul42_q;
    always @(i_next_cleanups_mmul43_s or i_llvm_fpga_pop_i4_cleanups_pop7_mmul2_out_data_out or i_cleanups_shl_mmul5_vt_join_q)
    begin
        unique case (i_next_cleanups_mmul43_s)
            1'b0 : i_next_cleanups_mmul43_q = i_llvm_fpga_pop_i4_cleanups_pop7_mmul2_out_data_out;
            1'b1 : i_next_cleanups_mmul43_q = i_cleanups_shl_mmul5_vt_join_q;
            default : i_next_cleanups_mmul43_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push7_mmul44(BLACKBOX,71)@4
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    mmul_i_llvm_fpga_push_i4_cleanups_push7_0 thei_llvm_fpga_push_i4_cleanups_push7_mmul44 (
        .in_data_in(i_next_cleanups_mmul43_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_i4_cleanups_pop7_mmul2_out_feedback_stall_out_7),
        .in_keep_going(redist9_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together94_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i4_cleanups_push7_mmul44_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i4_cleanups_push7_mmul44_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together94_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together94_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together94_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // redist1_sync_together94_aunroll_x_in_c0_eni1_1_tpl_3(DELAY,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together94_aunroll_x_in_c0_eni1_1_tpl_3_delay_0 <= '0;
            redist1_sync_together94_aunroll_x_in_c0_eni1_1_tpl_3_q <= '0;
        end
        else
        begin
            redist1_sync_together94_aunroll_x_in_c0_eni1_1_tpl_3_delay_0 <= $unsigned(redist0_sync_together94_aunroll_x_in_c0_eni1_1_tpl_1_q);
            redist1_sync_together94_aunroll_x_in_c0_eni1_1_tpl_3_q <= redist1_sync_together94_aunroll_x_in_c0_eni1_1_tpl_3_delay_0;
        end
    end

    // c_i4_766(CONSTANT,32)
    assign c_i4_766_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop7_mmul2(BLACKBOX,65)@4
    // out out_feedback_stall_out_7@20000000
    mmul_i_llvm_fpga_pop_i4_cleanups_pop7_0 thei_llvm_fpga_pop_i4_cleanups_pop7_mmul2 (
        .in_data_in(c_i4_766_q),
        .in_dir(redist1_sync_together94_aunroll_x_in_c0_eni1_1_tpl_3_q),
        .in_feedback_in_7(i_llvm_fpga_push_i4_cleanups_push7_mmul44_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_i4_cleanups_push7_mmul44_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together94_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop7_mmul2_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_i4_cleanups_pop7_mmul2_out_feedback_stall_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_mmul3_sel_x(BITSELECT,128)@4
    assign i_first_cleanup_mmul3_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop7_mmul2_out_data_out[0:0];

    // i_llvm_fpga_ffwd_dest_i33_unnamed_mmul7_mmul12(BLACKBOX,61)@4
    mmul_i_llvm_fpga_ffwd_dest_i33_unnamed_7_mmul0 thei_llvm_fpga_ffwd_dest_i33_unnamed_mmul7_mmul12 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together94_aunroll_x_in_i_valid_3_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i33_unnamed_mmul7_mmul12_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_173(CONSTANT,29)
    assign c_i33_173_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_mmul36(ADD,50)@4
    assign i_fpga_indvars_iv_next_mmul36_a = {1'b0, i_fpga_indvars_iv_replace_phi_mmul14_q};
    assign i_fpga_indvars_iv_next_mmul36_b = {1'b0, c_i33_173_q};
    assign i_fpga_indvars_iv_next_mmul36_o = $unsigned(i_fpga_indvars_iv_next_mmul36_a) + $unsigned(i_fpga_indvars_iv_next_mmul36_b);
    assign i_fpga_indvars_iv_next_mmul36_q = i_fpga_indvars_iv_next_mmul36_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_mmul36_sel_x(BITSELECT,107)@4
    assign bgTrunc_i_fpga_indvars_iv_next_mmul36_sel_x_b = i_fpga_indvars_iv_next_mmul36_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push3_mmul37(BLACKBOX,70)@4
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    mmul_i_llvm_fpga_push_i33_fpga_indvars_iv_push3_0 thei_llvm_fpga_push_i33_fpga_indvars_iv_push3_mmul37 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_mmul36_sel_x_b),
        .in_feedback_stall_in_3(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop3_mmul13_out_feedback_stall_out_3),
        .in_keep_going(redist9_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together94_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i33_fpga_indvars_iv_push3_mmul37_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i33_fpga_indvars_iv_push3_mmul37_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef69(CONSTANT,30)
    assign c_i33_undef69_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop3_mmul13(BLACKBOX,64)@4
    // out out_feedback_stall_out_3@20000000
    mmul_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop3_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv_pop3_mmul13 (
        .in_data_in(c_i33_undef69_q),
        .in_dir(redist1_sync_together94_aunroll_x_in_c0_eni1_1_tpl_3_q),
        .in_feedback_in_3(i_llvm_fpga_push_i33_fpga_indvars_iv_push3_mmul37_out_feedback_out_3),
        .in_feedback_valid_in_3(i_llvm_fpga_push_i33_fpga_indvars_iv_push3_mmul37_out_feedback_valid_out_3),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together94_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop3_mmul13_out_data_out),
        .out_feedback_stall_out_3(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop3_mmul13_out_feedback_stall_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv_replace_phi_mmul14(MUX,51)@4
    assign i_fpga_indvars_iv_replace_phi_mmul14_s = redist1_sync_together94_aunroll_x_in_c0_eni1_1_tpl_3_q;
    always @(i_fpga_indvars_iv_replace_phi_mmul14_s or i_llvm_fpga_pop_i33_fpga_indvars_iv_pop3_mmul13_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_mmul7_mmul12_out_dest_data_out_2_0)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_mmul14_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_mmul14_q = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop3_mmul13_out_data_out;
            1'b1 : i_fpga_indvars_iv_replace_phi_mmul14_q = i_llvm_fpga_ffwd_dest_i33_unnamed_mmul7_mmul12_out_dest_data_out_2_0;
            default : i_fpga_indvars_iv_replace_phi_mmul14_q = 33'b0;
        endcase
    end

    // i_exitcond_mmul34_cmp_nsign(LOGICAL,162)@4
    assign i_exitcond_mmul34_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv_replace_phi_mmul14_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp128_mmul38(BLACKBOX,59)@4
    mmul_i_llvm_fpga_ffwd_dest_i1_cmp128_0 thei_llvm_fpga_ffwd_dest_i1_cmp128_mmul38 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together94_aunroll_x_in_i_valid_3_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp128_mmul38_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_mmul39(LOGICAL,92)@4
    assign i_unnamed_mmul39_q = i_llvm_fpga_ffwd_dest_i1_cmp128_mmul38_out_dest_data_out_0_0 & i_exitcond_mmul34_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_mmul41(BLACKBOX,68)@4
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    mmul_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_mmul41 (
        .in_data_in(i_unnamed_mmul39_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_mmul6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_mmul3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together94_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_mmul41_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_mmul41_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,141)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid189_i_next_initerations_mmul0_shift_x(BITSELECT,188)@2
    assign rightShiftStage0Idx1Rng1_uid189_i_next_initerations_mmul0_shift_x_b = i_llvm_fpga_pop_i4_initerations_pop6_mmul7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid191_i_next_initerations_mmul0_shift_x(BITJOIN,190)@2
    assign rightShiftStage0Idx1_uid191_i_next_initerations_mmul0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid189_i_next_initerations_mmul0_shift_x_b};

    // valid_fanout_reg1(REG,139)@1 + 1
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

    // valid_fanout_reg2(REG,140)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations_push6_mmul9(BLACKBOX,72)@2
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    mmul_i_llvm_fpga_push_i4_initerations_push6_0 thei_llvm_fpga_push_i4_initerations_push6_mmul9 (
        .in_data_in(i_next_initerations_mmul8_vt_join_q),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i4_initerations_pop6_mmul7_out_feedback_stall_out_6),
        .in_keep_going(redist8_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i4_initerations_push6_mmul9_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i4_initerations_push6_mmul9_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations_pop6_mmul7(BLACKBOX,66)@2
    // out out_feedback_stall_out_6@20000000
    mmul_i_llvm_fpga_pop_i4_initerations_pop6_0 thei_llvm_fpga_pop_i4_initerations_pop6_mmul7 (
        .in_data_in(c_i4_766_q),
        .in_dir(redist0_sync_together94_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_6(i_llvm_fpga_push_i4_initerations_push6_mmul9_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i4_initerations_push6_mmul9_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop6_mmul7_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i4_initerations_pop6_mmul7_out_feedback_stall_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid193_i_next_initerations_mmul0_shift_x(MUX,192)@2
    assign rightShiftStage0_uid193_i_next_initerations_mmul0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid193_i_next_initerations_mmul0_shift_x_s or i_llvm_fpga_pop_i4_initerations_pop6_mmul7_out_data_out or rightShiftStage0Idx1_uid191_i_next_initerations_mmul0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid193_i_next_initerations_mmul0_shift_x_s)
            1'b0 : rightShiftStage0_uid193_i_next_initerations_mmul0_shift_x_q = i_llvm_fpga_pop_i4_initerations_pop6_mmul7_out_data_out;
            1'b1 : rightShiftStage0_uid193_i_next_initerations_mmul0_shift_x_q = rightShiftStage0Idx1_uid191_i_next_initerations_mmul0_shift_x_q;
            default : rightShiftStage0_uid193_i_next_initerations_mmul0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_mmul8_vt_select_2(BITSELECT,88)@2
    assign i_next_initerations_mmul8_vt_select_2_b = rightShiftStage0_uid193_i_next_initerations_mmul0_shift_x_q[2:0];

    // i_next_initerations_mmul8_vt_join(BITJOIN,87)@2
    assign i_next_initerations_mmul8_vt_join_q = {GND_q, i_next_initerations_mmul8_vt_select_2_b};

    // i_last_initeration_mmul10_sel_x(BITSELECT,131)@2
    assign i_last_initeration_mmul10_sel_x_b = i_next_initerations_mmul8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_mmul11(BLACKBOX,67)@2
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    mmul_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_mmul11 (
        .in_data_in(i_last_initeration_mmul10_sel_x_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_mmul6_out_initeration_stall_out),
        .in_keep_going(redist8_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q),
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

    // i_llvm_fpga_pipeline_keep_going_mmul6(BLACKBOX,62)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    mmul_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_mmul6 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_mmul11_out_feedback_out_1),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_mmul11_out_feedback_valid_out_1),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_mmul41_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_mmul41_out_feedback_valid_out_2),
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

    // ext_sig_sync_out(GPOUT,33)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_mmul6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_mmul6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,96)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_mmul6_out_pipeline_valid_out;

    // redist4_sync_together94_aunroll_x_in_i_valid_4(DELAY,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together94_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist4_sync_together94_aunroll_x_in_i_valid_4_q <= $unsigned(redist3_sync_together94_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg0(REG,138)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist4_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist2_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5(DELAY,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_delay_0 <= '0;
            redist2_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_q <= '0;
        end
        else
        begin
            redist2_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_delay_0 <= $unsigned(redist1_sync_together94_aunroll_x_in_c0_eni1_1_tpl_3_q);
            redist2_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_q <= redist2_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_delay_0;
        end
    end

    // i_masked_mmul45(LOGICAL,83)@4 + 1
    assign i_masked_mmul45_qi = i_notcmp_mmul40_q & i_first_cleanup_mmul3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_mmul45_delay ( .xin(i_masked_mmul45_qi), .xout(i_masked_mmul45_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_i_masked_mmul45_q_2(DELAY,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_masked_mmul45_q_2_q <= '0;
        end
        else
        begin
            redist7_i_masked_mmul45_q_2_q <= $unsigned(i_masked_mmul45_q);
        end
    end

    // i_acc_control_signal_mmul31(LOGICAL,34)@6
    assign i_acc_control_signal_mmul31_q = redist2_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_q ^ VCC_q;

    // valid_fanout_reg9(REG,147)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist4_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer_mmul26(BLACKBOX,73)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    mmul_i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_j_m_sync_buffer_mmul26 (
        .in_buffer_in(in_j_m),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer_mmul26_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg8(REG,146)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul24(BLACKBOX,74)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    mmul_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_0 thei_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul24 (
        .in_buffer_in(in_N),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul24_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul1_mmul25_bs2_merged_bit_select(BITSELECT,198)@2
    assign i_mul1_mmul25_bs2_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul24_out_buffer_out[31:18];
    assign i_mul1_mmul25_bs2_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul24_out_buffer_out[17:0];

    // valid_fanout_reg6(REG,144)@1 + 1
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

    // valid_fanout_reg11(REG,149)@1 + 1
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

    // c_i32_171(CONSTANT,28)
    assign c_i32_171_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_mmul32(ADD,56)@2
    assign i_inc_mmul32_a = {1'b0, i_llvm_fpga_pop_i32_k_014_pop4_mmul18_out_data_out};
    assign i_inc_mmul32_b = {1'b0, c_i32_171_q};
    assign i_inc_mmul32_o = $unsigned(i_inc_mmul32_a) + $unsigned(i_inc_mmul32_b);
    assign i_inc_mmul32_q = i_inc_mmul32_o[32:0];

    // bgTrunc_i_inc_mmul32_sel_x(BITSELECT,108)@2
    assign bgTrunc_i_inc_mmul32_sel_x_b = i_inc_mmul32_q[31:0];

    // i_llvm_fpga_push_i32_k_014_push4_mmul33(BLACKBOX,69)@2
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    mmul_i_llvm_fpga_push_i32_k_014_push4_0 thei_llvm_fpga_push_i32_k_014_push4_mmul33 (
        .in_data_in(bgTrunc_i_inc_mmul32_sel_x_b),
        .in_feedback_stall_in_4(i_llvm_fpga_pop_i32_k_014_pop4_mmul18_out_feedback_stall_out_4),
        .in_keep_going(redist8_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i32_k_014_push4_mmul33_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i32_k_014_push4_mmul33_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_070(CONSTANT,27)
    assign c_i32_070_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_k_014_pop4_mmul18(BLACKBOX,63)@2
    // out out_feedback_stall_out_4@20000000
    mmul_i_llvm_fpga_pop_i32_k_014_pop4_0 thei_llvm_fpga_pop_i32_k_014_pop4_mmul18 (
        .in_data_in(c_i32_070_q),
        .in_dir(redist0_sync_together94_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_4(i_llvm_fpga_push_i32_k_014_push4_mmul33_out_feedback_out_4),
        .in_feedback_valid_in_4(i_llvm_fpga_push_i32_k_014_push4_mmul33_out_feedback_valid_out_4),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_014_pop4_mmul18_out_data_out),
        .out_feedback_stall_out_4(i_llvm_fpga_pop_i32_k_014_pop4_mmul18_out_feedback_stall_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul1_mmul25_bs1_merged_bit_select(BITSELECT,197)@2
    assign i_mul1_mmul25_bs1_merged_bit_select_b = i_llvm_fpga_pop_i32_k_014_pop4_mmul18_out_data_out[31:18];
    assign i_mul1_mmul25_bs1_merged_bit_select_c = i_llvm_fpga_pop_i32_k_014_pop4_mmul18_out_data_out[17:0];

    // i_mul1_mmul25_ma3_cma(CHAINMULTADD,196)@2 + 3
    assign i_mul1_mmul25_ma3_cma_reset = ~ (resetn);
    assign i_mul1_mmul25_ma3_cma_ena0 = 1'b1;
    assign i_mul1_mmul25_ma3_cma_ena1 = i_mul1_mmul25_ma3_cma_ena0;
    assign i_mul1_mmul25_ma3_cma_ena2 = i_mul1_mmul25_ma3_cma_ena0;

    assign i_mul1_mmul25_ma3_cma_a0 = i_mul1_mmul25_bs1_merged_bit_select_b;
    assign i_mul1_mmul25_ma3_cma_c0 = i_mul1_mmul25_bs2_merged_bit_select_c;
    assign i_mul1_mmul25_ma3_cma_a1 = i_mul1_mmul25_bs2_merged_bit_select_b;
    assign i_mul1_mmul25_ma3_cma_c1 = i_mul1_mmul25_bs1_merged_bit_select_c;
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
    ) i_mul1_mmul25_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul1_mmul25_ma3_cma_ena2, i_mul1_mmul25_ma3_cma_ena1, i_mul1_mmul25_ma3_cma_ena0 }),
        .aclr({ i_mul1_mmul25_ma3_cma_reset, i_mul1_mmul25_ma3_cma_reset }),
        .ay(i_mul1_mmul25_ma3_cma_a1),
        .by(i_mul1_mmul25_ma3_cma_a0),
        .ax(i_mul1_mmul25_ma3_cma_c1),
        .bx(i_mul1_mmul25_ma3_cma_c0),
        .resulta(i_mul1_mmul25_ma3_cma_s0),
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
    i_mul1_mmul25_ma3_cma_delay ( .xin(i_mul1_mmul25_ma3_cma_s0), .xout(i_mul1_mmul25_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul1_mmul25_ma3_cma_q = $unsigned(i_mul1_mmul25_ma3_cma_qq[32:0]);

    // i_mul1_mmul25_sums_align_1(BITSHIFT,175)@5
    assign i_mul1_mmul25_sums_align_1_qint = { i_mul1_mmul25_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul1_mmul25_sums_align_1_q = i_mul1_mmul25_sums_align_1_qint[50:0];

    // i_mul1_mmul25_im0_cma(CHAINMULTADD,194)@2 + 3
    assign i_mul1_mmul25_im0_cma_reset = ~ (resetn);
    assign i_mul1_mmul25_im0_cma_ena0 = 1'b1;
    assign i_mul1_mmul25_im0_cma_ena1 = i_mul1_mmul25_im0_cma_ena0;
    assign i_mul1_mmul25_im0_cma_ena2 = i_mul1_mmul25_im0_cma_ena0;

    assign i_mul1_mmul25_im0_cma_a0 = i_mul1_mmul25_bs1_merged_bit_select_b;
    assign i_mul1_mmul25_im0_cma_c0 = i_mul1_mmul25_bs2_merged_bit_select_b;
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
    ) i_mul1_mmul25_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul1_mmul25_im0_cma_ena2, i_mul1_mmul25_im0_cma_ena1, i_mul1_mmul25_im0_cma_ena0 }),
        .aclr({ i_mul1_mmul25_im0_cma_reset, i_mul1_mmul25_im0_cma_reset }),
        .ay(i_mul1_mmul25_im0_cma_a0),
        .ax(i_mul1_mmul25_im0_cma_c0),
        .resulta(i_mul1_mmul25_im0_cma_s0),
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
    i_mul1_mmul25_im0_cma_delay ( .xin(i_mul1_mmul25_im0_cma_s0), .xout(i_mul1_mmul25_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul1_mmul25_im0_cma_q = $unsigned(i_mul1_mmul25_im0_cma_qq[27:0]);

    // i_mul1_mmul25_im8_cma(CHAINMULTADD,195)@2 + 3
    assign i_mul1_mmul25_im8_cma_reset = ~ (resetn);
    assign i_mul1_mmul25_im8_cma_ena0 = 1'b1;
    assign i_mul1_mmul25_im8_cma_ena1 = i_mul1_mmul25_im8_cma_ena0;
    assign i_mul1_mmul25_im8_cma_ena2 = i_mul1_mmul25_im8_cma_ena0;

    assign i_mul1_mmul25_im8_cma_a0 = i_mul1_mmul25_bs1_merged_bit_select_c;
    assign i_mul1_mmul25_im8_cma_c0 = i_mul1_mmul25_bs2_merged_bit_select_c;
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
    ) i_mul1_mmul25_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul1_mmul25_im8_cma_ena2, i_mul1_mmul25_im8_cma_ena1, i_mul1_mmul25_im8_cma_ena0 }),
        .aclr({ i_mul1_mmul25_im8_cma_reset, i_mul1_mmul25_im8_cma_reset }),
        .ay(i_mul1_mmul25_im8_cma_a0),
        .ax(i_mul1_mmul25_im8_cma_c0),
        .resulta(i_mul1_mmul25_im8_cma_s0),
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
    i_mul1_mmul25_im8_cma_delay ( .xin(i_mul1_mmul25_im8_cma_s0), .xout(i_mul1_mmul25_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul1_mmul25_im8_cma_q = $unsigned(i_mul1_mmul25_im8_cma_qq[35:0]);

    // i_mul1_mmul25_sums_join_0(BITJOIN,174)@5
    assign i_mul1_mmul25_sums_join_0_q = {i_mul1_mmul25_im0_cma_q, i_mul1_mmul25_im8_cma_q};

    // i_mul1_mmul25_sums_result_add_0_0(ADD,177)@5
    assign i_mul1_mmul25_sums_result_add_0_0_a = {1'b0, i_mul1_mmul25_sums_join_0_q};
    assign i_mul1_mmul25_sums_result_add_0_0_b = {14'b00000000000000, i_mul1_mmul25_sums_align_1_q};
    assign i_mul1_mmul25_sums_result_add_0_0_o = $unsigned(i_mul1_mmul25_sums_result_add_0_0_a) + $unsigned(i_mul1_mmul25_sums_result_add_0_0_b);
    assign i_mul1_mmul25_sums_result_add_0_0_q = i_mul1_mmul25_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul1_mmul25_sel_x(BITSELECT,109)@5
    assign bgTrunc_i_mul1_mmul25_sel_x_in = i_mul1_mmul25_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul1_mmul25_sel_x_b = bgTrunc_i_mul1_mmul25_sel_x_in[31:0];

    // redist5_bgTrunc_i_mul1_mmul25_sel_x_b_1(DELAY,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_bgTrunc_i_mul1_mmul25_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist5_bgTrunc_i_mul1_mmul25_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul1_mmul25_sel_x_b);
        end
    end

    // i_add2_mmul27(ADD,35)@6
    assign i_add2_mmul27_a = {1'b0, redist5_bgTrunc_i_mul1_mmul25_sel_x_b_1_q};
    assign i_add2_mmul27_b = {1'b0, i_llvm_fpga_sync_buffer_i32_j_m_sync_buffer_mmul26_out_buffer_out};
    assign i_add2_mmul27_o = $unsigned(i_add2_mmul27_a) + $unsigned(i_add2_mmul27_b);
    assign i_add2_mmul27_q = i_add2_mmul27_o[32:0];

    // bgTrunc_i_add2_mmul27_sel_x(BITSELECT,105)@6
    assign bgTrunc_i_add2_mmul27_sel_x_b = i_add2_mmul27_q[31:0];

    // i_idxprom3_mmul28_sel_x(BITSELECT,129)@6
    assign i_idxprom3_mmul28_sel_x_b = $unsigned({{32{bgTrunc_i_add2_mmul27_sel_x_b[31]}}, bgTrunc_i_add2_mmul27_sel_x_b[31:0]});

    // i_arrayidx43_mmul0_narrow_x(BITSELECT,120)@6
    assign i_arrayidx43_mmul0_narrow_x_b = i_idxprom3_mmul28_sel_x_b[61:0];

    // i_arrayidx43_mmul0_shift_join_x(BITJOIN,121)@6
    assign i_arrayidx43_mmul0_shift_join_x_q = {i_arrayidx43_mmul0_narrow_x_b, i_arrayidx2_mmul22_vt_const_1_q};

    // valid_fanout_reg10(REG,148)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist4_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul29(BLACKBOX,79)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    mmul_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul29 (
        .in_buffer_in(in_B),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul29_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul29_vt_select_63(BITSELECT,82)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul29_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul29_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul21_vt_const_9(CONSTANT,76)
    assign i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul21_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul29_vt_join(BITJOIN,81)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul29_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul29_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul21_vt_const_9_q};

    // i_arrayidx43_mmul0_add_x(ADD,118)@6
    assign i_arrayidx43_mmul0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul29_vt_join_q};
    assign i_arrayidx43_mmul0_add_x_b = {1'b0, i_arrayidx43_mmul0_shift_join_x_q};
    assign i_arrayidx43_mmul0_add_x_o = $unsigned(i_arrayidx43_mmul0_add_x_a) + $unsigned(i_arrayidx43_mmul0_add_x_b);
    assign i_arrayidx43_mmul0_add_x_q = i_arrayidx43_mmul0_add_x_o[64:0];

    // i_arrayidx43_mmul0_dupName_0_trunc_sel_x(BITSELECT,123)@6
    assign i_arrayidx43_mmul0_dupName_0_trunc_sel_x_b = i_arrayidx43_mmul0_add_x_q[63:0];

    // i_arrayidx43_mmul30_vt_select_63(BITSELECT,42)@6
    assign i_arrayidx43_mmul30_vt_select_63_b = i_arrayidx43_mmul0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx2_mmul22_vt_const_1(CONSTANT,37)
    assign i_arrayidx2_mmul22_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx43_mmul30_vt_join(BITJOIN,41)@6
    assign i_arrayidx43_mmul30_vt_join_q = {i_arrayidx43_mmul30_vt_select_63_b, i_arrayidx2_mmul22_vt_const_1_q};

    // valid_fanout_reg4(REG,142)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist4_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp126_mmul15(BLACKBOX,58)@6
    mmul_i_llvm_fpga_ffwd_dest_i1_cmp126_0 thei_llvm_fpga_ffwd_dest_i1_cmp126_mmul15 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp126_mmul15_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_mmul16(LOGICAL,91)@6
    assign i_unnamed_mmul16_q = i_llvm_fpga_ffwd_dest_i1_cmp126_mmul15_out_dest_data_out_0_0 ^ VCC_q;

    // i_first_cleanup_xor_or_mmul23(LOGICAL,49)@6
    assign i_first_cleanup_xor_or_mmul23_q = i_unnamed_mmul16_q | redist11_i_first_cleanup_xor_mmul4_q_2_q;

    // valid_fanout_reg5(REG,143)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_mul10_mmul17(BLACKBOX,60)@2
    mmul_i_llvm_fpga_ffwd_dest_i32_mul10_0 thei_llvm_fpga_ffwd_dest_i32_mul10_mmul17 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_mul10_mmul17_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add_mmul19(ADD,36)@2
    assign i_add_mmul19_a = {1'b0, i_llvm_fpga_pop_i32_k_014_pop4_mmul18_out_data_out};
    assign i_add_mmul19_b = {1'b0, i_llvm_fpga_ffwd_dest_i32_mul10_mmul17_out_dest_data_out_1_0};
    assign i_add_mmul19_o = $unsigned(i_add_mmul19_a) + $unsigned(i_add_mmul19_b);
    assign i_add_mmul19_q = i_add_mmul19_o[32:0];

    // bgTrunc_i_add_mmul19_sel_x(BITSELECT,106)@2
    assign bgTrunc_i_add_mmul19_sel_x_b = i_add_mmul19_q[31:0];

    // redist6_bgTrunc_i_add_mmul19_sel_x_b_4_inputreg0(DELAY,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_bgTrunc_i_add_mmul19_sel_x_b_4_inputreg0_q <= '0;
        end
        else
        begin
            redist6_bgTrunc_i_add_mmul19_sel_x_b_4_inputreg0_q <= $unsigned(bgTrunc_i_add_mmul19_sel_x_b);
        end
    end

    // redist6_bgTrunc_i_add_mmul19_sel_x_b_4(DELAY,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_bgTrunc_i_add_mmul19_sel_x_b_4_delay_0 <= '0;
            redist6_bgTrunc_i_add_mmul19_sel_x_b_4_q <= '0;
        end
        else
        begin
            redist6_bgTrunc_i_add_mmul19_sel_x_b_4_delay_0 <= $unsigned(redist6_bgTrunc_i_add_mmul19_sel_x_b_4_inputreg0_q);
            redist6_bgTrunc_i_add_mmul19_sel_x_b_4_q <= redist6_bgTrunc_i_add_mmul19_sel_x_b_4_delay_0;
        end
    end

    // redist6_bgTrunc_i_add_mmul19_sel_x_b_4_outputreg0(DELAY,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_bgTrunc_i_add_mmul19_sel_x_b_4_outputreg0_q <= '0;
        end
        else
        begin
            redist6_bgTrunc_i_add_mmul19_sel_x_b_4_outputreg0_q <= $unsigned(redist6_bgTrunc_i_add_mmul19_sel_x_b_4_q);
        end
    end

    // i_idxprom_mmul20_sel_x(BITSELECT,130)@6
    assign i_idxprom_mmul20_sel_x_b = $unsigned({{32{redist6_bgTrunc_i_add_mmul19_sel_x_b_4_outputreg0_q[31]}}, redist6_bgTrunc_i_add_mmul19_sel_x_b_4_outputreg0_q[31:0]});

    // i_arrayidx2_mmul0_narrow_x(BITSELECT,114)@6
    assign i_arrayidx2_mmul0_narrow_x_b = i_idxprom_mmul20_sel_x_b[61:0];

    // i_arrayidx2_mmul0_shift_join_x(BITJOIN,115)@6
    assign i_arrayidx2_mmul0_shift_join_x_q = {i_arrayidx2_mmul0_narrow_x_b, i_arrayidx2_mmul22_vt_const_1_q};

    // valid_fanout_reg7(REG,145)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist4_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul21(BLACKBOX,75)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    mmul_i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul21 (
        .in_buffer_in(in_A),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul21_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul21_vt_select_63(BITSELECT,78)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul21_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul21_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul21_vt_join(BITJOIN,77)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul21_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul21_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul21_vt_const_9_q};

    // i_arrayidx2_mmul0_add_x(ADD,112)@6
    assign i_arrayidx2_mmul0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul21_vt_join_q};
    assign i_arrayidx2_mmul0_add_x_b = {1'b0, i_arrayidx2_mmul0_shift_join_x_q};
    assign i_arrayidx2_mmul0_add_x_o = $unsigned(i_arrayidx2_mmul0_add_x_a) + $unsigned(i_arrayidx2_mmul0_add_x_b);
    assign i_arrayidx2_mmul0_add_x_q = i_arrayidx2_mmul0_add_x_o[64:0];

    // i_arrayidx2_mmul0_dupName_0_trunc_sel_x(BITSELECT,117)@6
    assign i_arrayidx2_mmul0_dupName_0_trunc_sel_x_b = i_arrayidx2_mmul0_add_x_q[63:0];

    // i_arrayidx2_mmul22_vt_select_63(BITSELECT,39)@6
    assign i_arrayidx2_mmul22_vt_select_63_b = i_arrayidx2_mmul0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx2_mmul22_vt_join(BITJOIN,38)@6
    assign i_arrayidx2_mmul22_vt_join_q = {i_arrayidx2_mmul22_vt_select_63_b, i_arrayidx2_mmul22_vt_const_1_q};

    // redist10_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5(DELAY,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_delay_0 <= '0;
            redist10_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_q <= '0;
        end
        else
        begin
            redist10_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_delay_0 <= $unsigned(redist9_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_3_q);
            redist10_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_q <= redist10_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_delay_0;
        end
    end

    // redist11_i_first_cleanup_xor_mmul4_q_2(DELAY,210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_first_cleanup_xor_mmul4_q_2_delay_0 <= '0;
            redist11_i_first_cleanup_xor_mmul4_q_2_q <= '0;
        end
        else
        begin
            redist11_i_first_cleanup_xor_mmul4_q_2_delay_0 <= $unsigned(i_first_cleanup_xor_mmul4_q);
            redist11_i_first_cleanup_xor_mmul4_q_2_q <= redist11_i_first_cleanup_xor_mmul4_q_2_delay_0;
        end
    end

    // sync_out_aunroll_x(GPOUT,136)@6
    assign out_c0_exi8_0_tpl = GND_q;
    assign out_c0_exi8_1_tpl = redist11_i_first_cleanup_xor_mmul4_q_2_q;
    assign out_c0_exi8_2_tpl = redist10_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_5_q;
    assign out_c0_exi8_3_tpl = i_arrayidx2_mmul22_vt_join_q;
    assign out_c0_exi8_4_tpl = i_first_cleanup_xor_or_mmul23_q;
    assign out_c0_exi8_5_tpl = i_arrayidx43_mmul30_vt_join_q;
    assign out_c0_exi8_6_tpl = i_acc_control_signal_mmul31_q;
    assign out_c0_exi8_7_tpl = redist7_i_masked_mmul45_q_2_q;
    assign out_c0_exi8_8_tpl = redist2_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_mmul5 = GND_q;

endmodule
