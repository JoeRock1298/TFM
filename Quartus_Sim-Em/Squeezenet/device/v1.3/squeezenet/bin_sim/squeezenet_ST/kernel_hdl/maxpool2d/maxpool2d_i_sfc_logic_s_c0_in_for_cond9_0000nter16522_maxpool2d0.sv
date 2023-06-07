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

// SystemVerilog created from maxpool2d_i_sfc_logic_s_c0_in_for_cond9_0000nter16522_maxpool2d0
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_i_sfc_logic_s_c0_in_for_cond9_0000nter16522_maxpool2d0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_maxpool2d2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_maxpool2d2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_1_0,
    input wire [32:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_output_size,
    output wire [0:0] out_c0_exi10_0_tpl,
    output wire [31:0] out_c0_exi10_1_tpl,
    output wire [31:0] out_c0_exi10_2_tpl,
    output wire [0:0] out_c0_exi10_3_tpl,
    output wire [0:0] out_c0_exi10_4_tpl,
    output wire [63:0] out_c0_exi10_5_tpl,
    output wire [63:0] out_c0_exi10_6_tpl,
    output wire [0:0] out_c0_exi10_7_tpl,
    output wire [63:0] out_c0_exi10_8_tpl,
    output wire [63:0] out_c0_exi10_9_tpl,
    output wire [0:0] out_c0_exi10_10_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_maxpool2d7,
    input wire [0:0] in_c0_eni4_0_tpl,
    input wire [0:0] in_c0_eni4_1_tpl,
    input wire [63:0] in_c0_eni4_2_tpl,
    input wire [63:0] in_c0_eni4_3_tpl,
    input wire [0:0] in_c0_eni4_4_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_044_q;
    wire [31:0] c_i32_145_q;
    wire [32:0] c_i33_147_q;
    wire [32:0] c_i33_undef43_q;
    wire [0:0] i_fpga_indvars_iv32_replace_phi_maxpool2d5_s;
    reg [32:0] i_fpga_indvars_iv32_replace_phi_maxpool2d5_q;
    wire [33:0] i_fpga_indvars_iv_next33_maxpool2d16_a;
    wire [33:0] i_fpga_indvars_iv_next33_maxpool2d16_b;
    logic [33:0] i_fpga_indvars_iv_next33_maxpool2d16_o;
    wire [33:0] i_fpga_indvars_iv_next33_maxpool2d16_q;
    wire [32:0] i_inc33_maxpool2d18_a;
    wire [32:0] i_inc33_maxpool2d18_b;
    logic [32:0] i_inc33_maxpool2d18_o;
    wire [32:0] i_inc33_maxpool2d18_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_maxpool2d9_maxpool2d12_out_dest_data_out_1_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_maxpool2d8_maxpool2d3_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going24_maxpool2d2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going24_maxpool2d2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going24_maxpool2d2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going24_maxpool2d2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2740_pop18_maxpool2d24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2740_pop18_maxpool2d24_out_feedback_stall_out_18;
    wire [31:0] i_llvm_fpga_pop_i32_i_036_pop15_maxpool2d6_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_036_pop15_maxpool2d6_out_feedback_stall_out_15;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv32_pop14_maxpool2d4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv32_pop14_maxpool2d4_out_feedback_stall_out_14;
    wire [63:0] i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi36_pop17_maxpool2d22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi36_pop17_maxpool2d22_out_feedback_stall_out_17;
    wire [63:0] i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi32_pop16_maxpool2d20_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi32_pop16_maxpool2d20_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2740_push18_maxpool2d25_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2740_push18_maxpool2d25_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond25_maxpool2d15_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond25_maxpool2d15_out_feedback_valid_out_8;
    wire [31:0] i_llvm_fpga_push_i32_i_036_push15_maxpool2d19_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i32_i_036_push15_maxpool2d19_out_feedback_valid_out_15;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv32_push14_maxpool2d17_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv32_push14_maxpool2d17_out_feedback_valid_out_14;
    wire [63:0] i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi36_push17_maxpool2d23_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi36_push17_maxpool2d23_out_feedback_valid_out_17;
    wire [63:0] i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi32_push16_maxpool2d21_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi32_push16_maxpool2d21_out_feedback_valid_out_16;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer2_maxpool2d8_out_buffer_out;
    wire [31:0] i_mul_maxpool2d7_vt_join_q;
    wire [30:0] i_mul_maxpool2d7_vt_select_31_b;
    wire [0:0] i_notcmp23_maxpool2d14_q;
    wire [0:0] i_unnamed_maxpool2d13_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next33_maxpool2d16_sel_x_b;
    wire [31:0] bgTrunc_i_inc33_maxpool2d18_sel_x_b;
    wire [63:0] bgTrunc_i_mul25_maxpool2d9_sel_x_in;
    wire [31:0] bgTrunc_i_mul25_maxpool2d9_sel_x_b;
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
    wire [0:0] i_exitcond34_maxpool2d10_cmp_nsign_q;
    wire [13:0] i_mul25_maxpool2d9_bs1_b;
    wire [17:0] i_mul25_maxpool2d9_bs4_in;
    wire [17:0] i_mul25_maxpool2d9_bs4_b;
    wire [63:0] i_mul25_maxpool2d9_sums_join_0_q;
    wire [50:0] i_mul25_maxpool2d9_sums_align_1_q;
    wire [50:0] i_mul25_maxpool2d9_sums_align_1_qint;
    wire [64:0] i_mul25_maxpool2d9_sums_result_add_0_0_a;
    wire [64:0] i_mul25_maxpool2d9_sums_result_add_0_0_b;
    logic [64:0] i_mul25_maxpool2d9_sums_result_add_0_0_o;
    wire [64:0] i_mul25_maxpool2d9_sums_result_add_0_0_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid105_i_mul_maxpool2d0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid105_i_mul_maxpool2d0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid106_i_mul_maxpool2d0_shift_x_q;
    wire [0:0] leftShiftStage0_uid108_i_mul_maxpool2d0_shift_x_s;
    reg [31:0] leftShiftStage0_uid108_i_mul_maxpool2d0_shift_x_q;
    wire i_mul25_maxpool2d9_im0_cma_reset;
    wire [13:0] i_mul25_maxpool2d9_im0_cma_a0;
    wire [13:0] i_mul25_maxpool2d9_im0_cma_c0;
    wire [27:0] i_mul25_maxpool2d9_im0_cma_s0;
    wire [27:0] i_mul25_maxpool2d9_im0_cma_qq;
    wire [27:0] i_mul25_maxpool2d9_im0_cma_q;
    wire i_mul25_maxpool2d9_im0_cma_ena0;
    wire i_mul25_maxpool2d9_im0_cma_ena1;
    wire i_mul25_maxpool2d9_im0_cma_ena2;
    wire i_mul25_maxpool2d9_im8_cma_reset;
    wire [17:0] i_mul25_maxpool2d9_im8_cma_a0;
    wire [17:0] i_mul25_maxpool2d9_im8_cma_c0;
    wire [35:0] i_mul25_maxpool2d9_im8_cma_s0;
    wire [35:0] i_mul25_maxpool2d9_im8_cma_qq;
    wire [35:0] i_mul25_maxpool2d9_im8_cma_q;
    wire i_mul25_maxpool2d9_im8_cma_ena0;
    wire i_mul25_maxpool2d9_im8_cma_ena1;
    wire i_mul25_maxpool2d9_im8_cma_ena2;
    wire i_mul25_maxpool2d9_ma3_cma_reset;
    wire [13:0] i_mul25_maxpool2d9_ma3_cma_a0;
    wire [17:0] i_mul25_maxpool2d9_ma3_cma_c0;
    wire [13:0] i_mul25_maxpool2d9_ma3_cma_a1;
    wire [17:0] i_mul25_maxpool2d9_ma3_cma_c1;
    wire [32:0] i_mul25_maxpool2d9_ma3_cma_s0;
    wire [32:0] i_mul25_maxpool2d9_ma3_cma_qq;
    wire [32:0] i_mul25_maxpool2d9_ma3_cma_q;
    wire i_mul25_maxpool2d9_ma3_cma_ena0;
    wire i_mul25_maxpool2d9_ma3_cma_ena1;
    wire i_mul25_maxpool2d9_ma3_cma_ena2;
    wire [13:0] i_mul25_maxpool2d9_bs2_merged_bit_select_b;
    wire [17:0] i_mul25_maxpool2d9_bs2_merged_bit_select_c;
    reg [0:0] redist0_sync_together66_aunroll_x_in_c0_eni4_1_tpl_1_q;
    reg [0:0] redist1_sync_together66_aunroll_x_in_c0_eni4_1_tpl_4_q;
    reg [0:0] redist1_sync_together66_aunroll_x_in_c0_eni4_1_tpl_4_delay_0;
    reg [0:0] redist1_sync_together66_aunroll_x_in_c0_eni4_1_tpl_4_delay_1;
    reg [0:0] redist4_sync_together66_aunroll_x_in_c0_eni4_4_tpl_4_q;
    reg [0:0] redist4_sync_together66_aunroll_x_in_c0_eni4_4_tpl_4_delay_0;
    reg [0:0] redist4_sync_together66_aunroll_x_in_c0_eni4_4_tpl_4_delay_1;
    reg [0:0] redist4_sync_together66_aunroll_x_in_c0_eni4_4_tpl_4_delay_2;
    reg [0:0] redist5_sync_together66_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist5_sync_together66_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist5_sync_together66_aunroll_x_in_i_valid_3_delay_1;
    reg [0:0] redist6_i_unnamed_maxpool2d13_q_1_q;
    reg [0:0] redist7_i_unnamed_maxpool2d13_q_4_q;
    reg [0:0] redist7_i_unnamed_maxpool2d13_q_4_delay_0;
    reg [0:0] redist7_i_unnamed_maxpool2d13_q_4_delay_1;
    reg [30:0] redist8_i_mul_maxpool2d7_vt_select_31_b_3_q;
    reg [30:0] redist8_i_mul_maxpool2d7_vt_select_31_b_3_delay_0;
    wire redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_mem_reset0;
    wire [63:0] redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_mem_ia;
    wire [1:0] redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_mem_aa;
    wire [1:0] redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_mem_ab;
    wire [63:0] redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_mem_iq;
    wire [63:0] redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_mem_q;
    wire [1:0] redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_rdcnt_i;
    (* preserve *) reg redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_rdcnt_eq;
    reg [1:0] redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_wraddr_q;
    wire [1:0] redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_mem_last_q;
    wire [0:0] redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_cmpReg_q;
    wire [0:0] redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_notEnable_q;
    wire [0:0] redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_sticky_ena_q;
    wire [0:0] redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_enaAnd_q;
    wire redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_mem_reset0;
    wire [63:0] redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_mem_ia;
    wire [1:0] redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_mem_aa;
    wire [1:0] redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_mem_ab;
    wire [63:0] redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_mem_iq;
    wire [63:0] redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_mem_q;
    wire [1:0] redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_rdcnt_i;
    (* preserve *) reg redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_rdcnt_eq;
    reg [1:0] redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_wraddr_q;
    wire [1:0] redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_mem_last_q;
    wire [0:0] redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_cmpReg_q;
    wire [0:0] redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_notEnable_q;
    wire [0:0] redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_sticky_ena_q;
    wire [0:0] redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_enaAnd_q;
    reg [30:0] redist8_i_mul_maxpool2d7_vt_select_31_b_3_inputreg0_q;


    // i_llvm_fpga_ffwd_dest_i33_unnamed_maxpool2d8_maxpool2d3(BLACKBOX,33)@1
    maxpool2d_i_llvm_fpga_ffwd_dest_i33_unnamed_8_maxpool2d0 thei_llvm_fpga_ffwd_dest_i33_unnamed_maxpool2d8_maxpool2d3 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i33_unnamed_maxpool2d8_maxpool2d3_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_147(CONSTANT,25)
    assign c_i33_147_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next33_maxpool2d16(ADD,30)@1
    assign i_fpga_indvars_iv_next33_maxpool2d16_a = {1'b0, i_fpga_indvars_iv32_replace_phi_maxpool2d5_q};
    assign i_fpga_indvars_iv_next33_maxpool2d16_b = {1'b0, c_i33_147_q};
    assign i_fpga_indvars_iv_next33_maxpool2d16_o = $unsigned(i_fpga_indvars_iv_next33_maxpool2d16_a) + $unsigned(i_fpga_indvars_iv_next33_maxpool2d16_b);
    assign i_fpga_indvars_iv_next33_maxpool2d16_q = i_fpga_indvars_iv_next33_maxpool2d16_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next33_maxpool2d16_sel_x(BITSELECT,60)@1
    assign bgTrunc_i_fpga_indvars_iv_next33_maxpool2d16_sel_x_b = i_fpga_indvars_iv_next33_maxpool2d16_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv32_push14_maxpool2d17(BLACKBOX,43)@1
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    maxpool2d_i_llvm_fpga_push_i33_fpga_indvars_iv32_push14_0 thei_llvm_fpga_push_i33_fpga_indvars_iv32_push14_maxpool2d17 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next33_maxpool2d16_sel_x_b),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i33_fpga_indvars_iv32_pop14_maxpool2d4_out_feedback_stall_out_14),
        .in_stall_in(GND_q),
        .in_unnamed_maxpool2d18(i_unnamed_maxpool2d13_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i33_fpga_indvars_iv32_push14_maxpool2d17_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i33_fpga_indvars_iv32_push14_maxpool2d17_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef43(CONSTANT,26)
    assign c_i33_undef43_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv32_pop14_maxpool2d4(BLACKBOX,37)@1
    // out out_feedback_stall_out_14@20000000
    maxpool2d_i_llvm_fpga_pop_i33_fpga_indvars_iv32_pop14_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv32_pop14_maxpool2d4 (
        .in_data_in(c_i33_undef43_q),
        .in_dir(in_c0_eni4_1_tpl),
        .in_feedback_in_14(i_llvm_fpga_push_i33_fpga_indvars_iv32_push14_maxpool2d17_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i33_fpga_indvars_iv32_push14_maxpool2d17_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv32_pop14_maxpool2d4_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i33_fpga_indvars_iv32_pop14_maxpool2d4_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv32_replace_phi_maxpool2d5(MUX,29)@1
    assign i_fpga_indvars_iv32_replace_phi_maxpool2d5_s = in_c0_eni4_1_tpl;
    always @(i_fpga_indvars_iv32_replace_phi_maxpool2d5_s or i_llvm_fpga_pop_i33_fpga_indvars_iv32_pop14_maxpool2d4_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_maxpool2d8_maxpool2d3_out_dest_data_out_2_0)
    begin
        unique case (i_fpga_indvars_iv32_replace_phi_maxpool2d5_s)
            1'b0 : i_fpga_indvars_iv32_replace_phi_maxpool2d5_q = i_llvm_fpga_pop_i33_fpga_indvars_iv32_pop14_maxpool2d4_out_data_out;
            1'b1 : i_fpga_indvars_iv32_replace_phi_maxpool2d5_q = i_llvm_fpga_ffwd_dest_i33_unnamed_maxpool2d8_maxpool2d3_out_dest_data_out_2_0;
            default : i_fpga_indvars_iv32_replace_phi_maxpool2d5_q = 33'b0;
        endcase
    end

    // i_exitcond34_maxpool2d10_cmp_nsign(LOGICAL,85)@1
    assign i_exitcond34_maxpool2d10_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv32_replace_phi_maxpool2d5_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_unnamed_maxpool2d9_maxpool2d12(BLACKBOX,32)@1
    maxpool2d_i_llvm_fpga_ffwd_dest_i1_unnamed_9_maxpool2d0 thei_llvm_fpga_ffwd_dest_i1_unnamed_maxpool2d9_maxpool2d12 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i1_unnamed_maxpool2d9_maxpool2d12_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_maxpool2d13(LOGICAL,52)@1
    assign i_unnamed_maxpool2d13_q = i_llvm_fpga_ffwd_dest_i1_unnamed_maxpool2d9_maxpool2d12_out_dest_data_out_1_0 & i_exitcond34_maxpool2d10_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond25_maxpool2d15(BLACKBOX,41)@1
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    maxpool2d_i_llvm_fpga_push_i1_notexitcond25_0 thei_llvm_fpga_push_i1_notexitcond25_maxpool2d15 (
        .in_data_in(i_unnamed_maxpool2d13_q),
        .in_feedback_stall_in_8(i_llvm_fpga_pipeline_keep_going24_maxpool2d2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i1_notexitcond25_maxpool2d15_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i1_notexitcond25_maxpool2d15_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going24_maxpool2d2(BLACKBOX,34)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    maxpool2d_i_llvm_fpga_pipeline_keep_going24_0 thei_llvm_fpga_pipeline_keep_going24_maxpool2d2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond25_maxpool2d15_out_feedback_out_8),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond25_maxpool2d15_out_feedback_valid_out_8),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going24_maxpool2d2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going24_maxpool2d2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going24_maxpool2d2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going24_maxpool2d2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,27)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_maxpool2d2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going24_maxpool2d2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_maxpool2d2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going24_maxpool2d2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,55)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going24_maxpool2d2_out_pipeline_valid_out;

    // redist5_sync_together66_aunroll_x_in_i_valid_3(DELAY,118)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together66_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist5_sync_together66_aunroll_x_in_i_valid_3_delay_1 <= '0;
            redist5_sync_together66_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist5_sync_together66_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
            redist5_sync_together66_aunroll_x_in_i_valid_3_delay_1 <= redist5_sync_together66_aunroll_x_in_i_valid_3_delay_0;
            redist5_sync_together66_aunroll_x_in_i_valid_3_q <= redist5_sync_together66_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // valid_fanout_reg0(REG,70)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist5_sync_together66_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist4_sync_together66_aunroll_x_in_c0_eni4_4_tpl_4(DELAY,117)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together66_aunroll_x_in_c0_eni4_4_tpl_4_delay_0 <= '0;
            redist4_sync_together66_aunroll_x_in_c0_eni4_4_tpl_4_delay_1 <= '0;
            redist4_sync_together66_aunroll_x_in_c0_eni4_4_tpl_4_delay_2 <= '0;
            redist4_sync_together66_aunroll_x_in_c0_eni4_4_tpl_4_q <= '0;
        end
        else
        begin
            redist4_sync_together66_aunroll_x_in_c0_eni4_4_tpl_4_delay_0 <= $unsigned(in_c0_eni4_4_tpl);
            redist4_sync_together66_aunroll_x_in_c0_eni4_4_tpl_4_delay_1 <= redist4_sync_together66_aunroll_x_in_c0_eni4_4_tpl_4_delay_0;
            redist4_sync_together66_aunroll_x_in_c0_eni4_4_tpl_4_delay_2 <= redist4_sync_together66_aunroll_x_in_c0_eni4_4_tpl_4_delay_1;
            redist4_sync_together66_aunroll_x_in_c0_eni4_4_tpl_4_q <= redist4_sync_together66_aunroll_x_in_c0_eni4_4_tpl_4_delay_2;
        end
    end

    // redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_notEnable(LOGICAL,138)
    assign redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_nor(LOGICAL,139)
    assign redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_nor_q = ~ (redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_notEnable_q | redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_sticky_ena_q);

    // redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_mem_last(CONSTANT,135)
    assign redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_cmp(LOGICAL,136)
    assign redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_cmp_q = $unsigned(redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_mem_last_q == redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_cmpReg(REG,137)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_cmpReg_q <= $unsigned(redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_cmp_q);
        end
    end

    // redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_sticky_ena(REG,140)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_nor_q == 1'b1)
        begin
            redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_sticky_ena_q <= $unsigned(redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_cmpReg_q);
        end
    end

    // redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_enaAnd(LOGICAL,141)
    assign redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_enaAnd_q = redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_sticky_ena_q & VCC_q;

    // redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_rdcnt(COUNTER,133)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_rdcnt_i <= 2'd0;
            redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_rdcnt_i == 2'd1)
            begin
                redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_rdcnt_i <= $unsigned(redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_rdcnt_i <= $unsigned(redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_rdcnt_q = redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_rdcnt_i[1:0];

    // redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_wraddr(REG,134)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_wraddr_q <= $unsigned(redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_rdcnt_q);
        end
    end

    // redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_mem(DUALMEM,132)
    assign redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_mem_ia = $unsigned(in_c0_eni4_3_tpl);
    assign redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_mem_aa = redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_wraddr_q;
    assign redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_mem_ab = redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_rdcnt_q;
    assign redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(64),
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
    ) redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_mem_dmem (
        .clocken1(redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_mem_aa),
        .data_a(redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_mem_ab),
        .q_b(redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_mem_iq),
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
    assign redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_mem_q = redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_mem_iq[63:0];

    // redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_notEnable(LOGICAL,128)
    assign redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_nor(LOGICAL,129)
    assign redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_nor_q = ~ (redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_notEnable_q | redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_sticky_ena_q);

    // redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_mem_last(CONSTANT,125)
    assign redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_cmp(LOGICAL,126)
    assign redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_cmp_q = $unsigned(redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_mem_last_q == redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_cmpReg(REG,127)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_cmpReg_q <= $unsigned(redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_cmp_q);
        end
    end

    // redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_sticky_ena(REG,130)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_nor_q == 1'b1)
        begin
            redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_sticky_ena_q <= $unsigned(redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_cmpReg_q);
        end
    end

    // redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_enaAnd(LOGICAL,131)
    assign redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_enaAnd_q = redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_sticky_ena_q & VCC_q;

    // redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_rdcnt(COUNTER,123)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_rdcnt_i <= 2'd0;
            redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_rdcnt_i == 2'd1)
            begin
                redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_rdcnt_i <= $unsigned(redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_rdcnt_i <= $unsigned(redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_rdcnt_q = redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_rdcnt_i[1:0];

    // redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_wraddr(REG,124)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_wraddr_q <= $unsigned(redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_rdcnt_q);
        end
    end

    // redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_mem(DUALMEM,122)
    assign redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_mem_ia = $unsigned(in_c0_eni4_2_tpl);
    assign redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_mem_aa = redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_wraddr_q;
    assign redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_mem_ab = redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_rdcnt_q;
    assign redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(64),
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
    ) redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_mem_dmem (
        .clocken1(redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_mem_aa),
        .data_a(redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_mem_ab),
        .q_b(redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_mem_iq),
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
    assign redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_mem_q = redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_mem_iq[63:0];

    // valid_fanout_reg8(REG,78)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist5_sync_together66_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg9(REG,79)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist5_sync_together66_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp2740_push18_maxpool2d25(BLACKBOX,40)@5
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    maxpool2d_i_llvm_fpga_push_i1_notcmp2740_push18_0 thei_llvm_fpga_push_i1_notcmp2740_push18_maxpool2d25 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp2740_pop18_maxpool2d24_out_data_out),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i1_notcmp2740_pop18_maxpool2d24_out_feedback_stall_out_18),
        .in_stall_in(GND_q),
        .in_unnamed_maxpool2d18(redist7_i_unnamed_maxpool2d13_q_4_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i1_notcmp2740_push18_maxpool2d25_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i1_notcmp2740_push18_maxpool2d25_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together66_aunroll_x_in_c0_eni4_1_tpl_1(DELAY,113)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together66_aunroll_x_in_c0_eni4_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together66_aunroll_x_in_c0_eni4_1_tpl_1_q <= $unsigned(in_c0_eni4_1_tpl);
        end
    end

    // redist1_sync_together66_aunroll_x_in_c0_eni4_1_tpl_4(DELAY,114)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together66_aunroll_x_in_c0_eni4_1_tpl_4_delay_0 <= '0;
            redist1_sync_together66_aunroll_x_in_c0_eni4_1_tpl_4_delay_1 <= '0;
            redist1_sync_together66_aunroll_x_in_c0_eni4_1_tpl_4_q <= '0;
        end
        else
        begin
            redist1_sync_together66_aunroll_x_in_c0_eni4_1_tpl_4_delay_0 <= $unsigned(redist0_sync_together66_aunroll_x_in_c0_eni4_1_tpl_1_q);
            redist1_sync_together66_aunroll_x_in_c0_eni4_1_tpl_4_delay_1 <= redist1_sync_together66_aunroll_x_in_c0_eni4_1_tpl_4_delay_0;
            redist1_sync_together66_aunroll_x_in_c0_eni4_1_tpl_4_q <= redist1_sync_together66_aunroll_x_in_c0_eni4_1_tpl_4_delay_1;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp2740_pop18_maxpool2d24(BLACKBOX,35)@5
    // out out_feedback_stall_out_18@20000000
    maxpool2d_i_llvm_fpga_pop_i1_notcmp2740_pop18_0 thei_llvm_fpga_pop_i1_notcmp2740_pop18_maxpool2d24 (
        .in_data_in(redist4_sync_together66_aunroll_x_in_c0_eni4_4_tpl_4_q),
        .in_dir(redist1_sync_together66_aunroll_x_in_c0_eni4_1_tpl_4_q),
        .in_feedback_in_18(i_llvm_fpga_push_i1_notcmp2740_push18_maxpool2d25_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i1_notcmp2740_push18_maxpool2d25_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2740_pop18_maxpool2d24_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i1_notcmp2740_pop18_maxpool2d24_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg6(REG,76)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist5_sync_together66_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg7(REG,77)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist5_sync_together66_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi36_push17_maxpool2d23(BLACKBOX,44)@5
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    maxpool2d_i_llvm_fpga_push_p1024f32_inpu0000place_phi36_push17_0 thei_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi36_push17_maxpool2d23 (
        .in_data_in(i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi36_pop17_maxpool2d22_out_data_out),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi36_pop17_maxpool2d22_out_feedback_stall_out_17),
        .in_stall_in(GND_q),
        .in_unnamed_maxpool2d18(redist7_i_unnamed_maxpool2d13_q_4_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi36_push17_maxpool2d23_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi36_push17_maxpool2d23_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi36_pop17_maxpool2d22(BLACKBOX,38)@5
    // out out_feedback_stall_out_17@20000000
    maxpool2d_i_llvm_fpga_pop_p1024f32_input0000eplace_phi36_pop17_0 thei_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi36_pop17_maxpool2d22 (
        .in_data_in(redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_mem_q),
        .in_dir(redist1_sync_together66_aunroll_x_in_c0_eni4_1_tpl_4_q),
        .in_feedback_in_17(i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi36_push17_maxpool2d23_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi36_push17_maxpool2d23_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi36_pop17_maxpool2d22_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi36_pop17_maxpool2d22_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,74)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist5_sync_together66_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg5(REG,75)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist5_sync_together66_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi32_push16_maxpool2d21(BLACKBOX,45)@5
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    maxpool2d_i_llvm_fpga_push_p1024f32_outp0000place_phi32_push16_0 thei_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi32_push16_maxpool2d21 (
        .in_data_in(i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi32_pop16_maxpool2d20_out_data_out),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi32_pop16_maxpool2d20_out_feedback_stall_out_16),
        .in_stall_in(GND_q),
        .in_unnamed_maxpool2d18(redist7_i_unnamed_maxpool2d13_q_4_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi32_push16_maxpool2d21_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi32_push16_maxpool2d21_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi32_pop16_maxpool2d20(BLACKBOX,39)@5
    // out out_feedback_stall_out_16@20000000
    maxpool2d_i_llvm_fpga_pop_p1024f32_outpu0000eplace_phi32_pop16_0 thei_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi32_pop16_maxpool2d20 (
        .in_data_in(redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_mem_q),
        .in_dir(redist1_sync_together66_aunroll_x_in_c0_eni4_1_tpl_4_q),
        .in_feedback_in_16(i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi32_push16_maxpool2d21_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi32_push16_maxpool2d21_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi32_pop16_maxpool2d20_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi32_pop16_maxpool2d20_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp23_maxpool2d14(LOGICAL,51)@5
    assign i_notcmp23_maxpool2d14_q = redist7_i_unnamed_maxpool2d13_q_4_q ^ VCC_q;

    // redist6_i_unnamed_maxpool2d13_q_1(DELAY,119)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_unnamed_maxpool2d13_q_1_q <= '0;
        end
        else
        begin
            redist6_i_unnamed_maxpool2d13_q_1_q <= $unsigned(i_unnamed_maxpool2d13_q);
        end
    end

    // redist7_i_unnamed_maxpool2d13_q_4(DELAY,120)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_unnamed_maxpool2d13_q_4_delay_0 <= '0;
            redist7_i_unnamed_maxpool2d13_q_4_delay_1 <= '0;
            redist7_i_unnamed_maxpool2d13_q_4_q <= '0;
        end
        else
        begin
            redist7_i_unnamed_maxpool2d13_q_4_delay_0 <= $unsigned(redist6_i_unnamed_maxpool2d13_q_1_q);
            redist7_i_unnamed_maxpool2d13_q_4_delay_1 <= redist7_i_unnamed_maxpool2d13_q_4_delay_0;
            redist7_i_unnamed_maxpool2d13_q_4_q <= redist7_i_unnamed_maxpool2d13_q_4_delay_1;
        end
    end

    // valid_fanout_reg1(REG,71)@1 + 1
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

    // valid_fanout_reg3(REG,73)@1 + 1
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

    // c_i32_145(CONSTANT,24)
    assign c_i32_145_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc33_maxpool2d18(ADD,31)@2
    assign i_inc33_maxpool2d18_a = {1'b0, i_llvm_fpga_pop_i32_i_036_pop15_maxpool2d6_out_data_out};
    assign i_inc33_maxpool2d18_b = {1'b0, c_i32_145_q};
    assign i_inc33_maxpool2d18_o = $unsigned(i_inc33_maxpool2d18_a) + $unsigned(i_inc33_maxpool2d18_b);
    assign i_inc33_maxpool2d18_q = i_inc33_maxpool2d18_o[32:0];

    // bgTrunc_i_inc33_maxpool2d18_sel_x(BITSELECT,61)@2
    assign bgTrunc_i_inc33_maxpool2d18_sel_x_b = i_inc33_maxpool2d18_q[31:0];

    // i_llvm_fpga_push_i32_i_036_push15_maxpool2d19(BLACKBOX,42)@2
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    maxpool2d_i_llvm_fpga_push_i32_i_036_push15_0 thei_llvm_fpga_push_i32_i_036_push15_maxpool2d19 (
        .in_data_in(bgTrunc_i_inc33_maxpool2d18_sel_x_b),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i32_i_036_pop15_maxpool2d6_out_feedback_stall_out_15),
        .in_stall_in(GND_q),
        .in_unnamed_maxpool2d18(redist6_i_unnamed_maxpool2d13_q_1_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i32_i_036_push15_maxpool2d19_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i32_i_036_push15_maxpool2d19_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_044(CONSTANT,23)
    assign c_i32_044_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i_036_pop15_maxpool2d6(BLACKBOX,36)@2
    // out out_feedback_stall_out_15@20000000
    maxpool2d_i_llvm_fpga_pop_i32_i_036_pop15_0 thei_llvm_fpga_pop_i32_i_036_pop15_maxpool2d6 (
        .in_data_in(c_i32_044_q),
        .in_dir(redist0_sync_together66_aunroll_x_in_c0_eni4_1_tpl_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_i32_i_036_push15_maxpool2d19_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i32_i_036_push15_maxpool2d19_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_036_pop15_maxpool2d6_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i32_i_036_pop15_maxpool2d6_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul25_maxpool2d9_bs4(BITSELECT,90)@2
    assign i_mul25_maxpool2d9_bs4_in = i_llvm_fpga_pop_i32_i_036_pop15_maxpool2d6_out_data_out[17:0];
    assign i_mul25_maxpool2d9_bs4_b = i_mul25_maxpool2d9_bs4_in[17:0];

    // valid_fanout_reg2(REG,72)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer2_maxpool2d8(BLACKBOX,46)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    maxpool2d_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer2_0 thei_llvm_fpga_sync_buffer_i32_output_size_sync_buffer2_maxpool2d8 (
        .in_buffer_in(in_output_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer2_maxpool2d8_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul25_maxpool2d9_bs2_merged_bit_select(BITSELECT,112)@2
    assign i_mul25_maxpool2d9_bs2_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer2_maxpool2d8_out_buffer_out[31:18];
    assign i_mul25_maxpool2d9_bs2_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer2_maxpool2d8_out_buffer_out[17:0];

    // i_mul25_maxpool2d9_bs1(BITSELECT,87)@2
    assign i_mul25_maxpool2d9_bs1_b = i_llvm_fpga_pop_i32_i_036_pop15_maxpool2d6_out_data_out[31:18];

    // i_mul25_maxpool2d9_ma3_cma(CHAINMULTADD,111)@2 + 3
    assign i_mul25_maxpool2d9_ma3_cma_reset = ~ (resetn);
    assign i_mul25_maxpool2d9_ma3_cma_ena0 = 1'b1;
    assign i_mul25_maxpool2d9_ma3_cma_ena1 = i_mul25_maxpool2d9_ma3_cma_ena0;
    assign i_mul25_maxpool2d9_ma3_cma_ena2 = i_mul25_maxpool2d9_ma3_cma_ena0;

    assign i_mul25_maxpool2d9_ma3_cma_a0 = i_mul25_maxpool2d9_bs1_b;
    assign i_mul25_maxpool2d9_ma3_cma_c0 = i_mul25_maxpool2d9_bs2_merged_bit_select_c;
    assign i_mul25_maxpool2d9_ma3_cma_a1 = i_mul25_maxpool2d9_bs2_merged_bit_select_b;
    assign i_mul25_maxpool2d9_ma3_cma_c1 = i_mul25_maxpool2d9_bs4_b;
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
    ) i_mul25_maxpool2d9_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul25_maxpool2d9_ma3_cma_ena2, i_mul25_maxpool2d9_ma3_cma_ena1, i_mul25_maxpool2d9_ma3_cma_ena0 }),
        .aclr({ i_mul25_maxpool2d9_ma3_cma_reset, i_mul25_maxpool2d9_ma3_cma_reset }),
        .ay(i_mul25_maxpool2d9_ma3_cma_a1),
        .by(i_mul25_maxpool2d9_ma3_cma_a0),
        .ax(i_mul25_maxpool2d9_ma3_cma_c1),
        .bx(i_mul25_maxpool2d9_ma3_cma_c0),
        .resulta(i_mul25_maxpool2d9_ma3_cma_s0),
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
    i_mul25_maxpool2d9_ma3_cma_delay ( .xin(i_mul25_maxpool2d9_ma3_cma_s0), .xout(i_mul25_maxpool2d9_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul25_maxpool2d9_ma3_cma_q = $unsigned(i_mul25_maxpool2d9_ma3_cma_qq[32:0]);

    // i_mul25_maxpool2d9_sums_align_1(BITSHIFT,98)@5
    assign i_mul25_maxpool2d9_sums_align_1_qint = { i_mul25_maxpool2d9_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul25_maxpool2d9_sums_align_1_q = i_mul25_maxpool2d9_sums_align_1_qint[50:0];

    // i_mul25_maxpool2d9_im0_cma(CHAINMULTADD,109)@2 + 3
    assign i_mul25_maxpool2d9_im0_cma_reset = ~ (resetn);
    assign i_mul25_maxpool2d9_im0_cma_ena0 = 1'b1;
    assign i_mul25_maxpool2d9_im0_cma_ena1 = i_mul25_maxpool2d9_im0_cma_ena0;
    assign i_mul25_maxpool2d9_im0_cma_ena2 = i_mul25_maxpool2d9_im0_cma_ena0;

    assign i_mul25_maxpool2d9_im0_cma_a0 = i_mul25_maxpool2d9_bs1_b;
    assign i_mul25_maxpool2d9_im0_cma_c0 = i_mul25_maxpool2d9_bs2_merged_bit_select_b;
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
    ) i_mul25_maxpool2d9_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul25_maxpool2d9_im0_cma_ena2, i_mul25_maxpool2d9_im0_cma_ena1, i_mul25_maxpool2d9_im0_cma_ena0 }),
        .aclr({ i_mul25_maxpool2d9_im0_cma_reset, i_mul25_maxpool2d9_im0_cma_reset }),
        .ay(i_mul25_maxpool2d9_im0_cma_a0),
        .ax(i_mul25_maxpool2d9_im0_cma_c0),
        .resulta(i_mul25_maxpool2d9_im0_cma_s0),
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
    i_mul25_maxpool2d9_im0_cma_delay ( .xin(i_mul25_maxpool2d9_im0_cma_s0), .xout(i_mul25_maxpool2d9_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul25_maxpool2d9_im0_cma_q = $unsigned(i_mul25_maxpool2d9_im0_cma_qq[27:0]);

    // i_mul25_maxpool2d9_im8_cma(CHAINMULTADD,110)@2 + 3
    assign i_mul25_maxpool2d9_im8_cma_reset = ~ (resetn);
    assign i_mul25_maxpool2d9_im8_cma_ena0 = 1'b1;
    assign i_mul25_maxpool2d9_im8_cma_ena1 = i_mul25_maxpool2d9_im8_cma_ena0;
    assign i_mul25_maxpool2d9_im8_cma_ena2 = i_mul25_maxpool2d9_im8_cma_ena0;

    assign i_mul25_maxpool2d9_im8_cma_a0 = i_mul25_maxpool2d9_bs4_b;
    assign i_mul25_maxpool2d9_im8_cma_c0 = i_mul25_maxpool2d9_bs2_merged_bit_select_c;
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
    ) i_mul25_maxpool2d9_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul25_maxpool2d9_im8_cma_ena2, i_mul25_maxpool2d9_im8_cma_ena1, i_mul25_maxpool2d9_im8_cma_ena0 }),
        .aclr({ i_mul25_maxpool2d9_im8_cma_reset, i_mul25_maxpool2d9_im8_cma_reset }),
        .ay(i_mul25_maxpool2d9_im8_cma_a0),
        .ax(i_mul25_maxpool2d9_im8_cma_c0),
        .resulta(i_mul25_maxpool2d9_im8_cma_s0),
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
    i_mul25_maxpool2d9_im8_cma_delay ( .xin(i_mul25_maxpool2d9_im8_cma_s0), .xout(i_mul25_maxpool2d9_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul25_maxpool2d9_im8_cma_q = $unsigned(i_mul25_maxpool2d9_im8_cma_qq[35:0]);

    // i_mul25_maxpool2d9_sums_join_0(BITJOIN,97)@5
    assign i_mul25_maxpool2d9_sums_join_0_q = {i_mul25_maxpool2d9_im0_cma_q, i_mul25_maxpool2d9_im8_cma_q};

    // i_mul25_maxpool2d9_sums_result_add_0_0(ADD,100)@5
    assign i_mul25_maxpool2d9_sums_result_add_0_0_a = {1'b0, i_mul25_maxpool2d9_sums_join_0_q};
    assign i_mul25_maxpool2d9_sums_result_add_0_0_b = {14'b00000000000000, i_mul25_maxpool2d9_sums_align_1_q};
    assign i_mul25_maxpool2d9_sums_result_add_0_0_o = $unsigned(i_mul25_maxpool2d9_sums_result_add_0_0_a) + $unsigned(i_mul25_maxpool2d9_sums_result_add_0_0_b);
    assign i_mul25_maxpool2d9_sums_result_add_0_0_q = i_mul25_maxpool2d9_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul25_maxpool2d9_sel_x(BITSELECT,62)@5
    assign bgTrunc_i_mul25_maxpool2d9_sel_x_in = i_mul25_maxpool2d9_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul25_maxpool2d9_sel_x_b = bgTrunc_i_mul25_maxpool2d9_sel_x_in[31:0];

    // leftShiftStage0Idx1Rng1_uid105_i_mul_maxpool2d0_shift_x(BITSELECT,104)@2
    assign leftShiftStage0Idx1Rng1_uid105_i_mul_maxpool2d0_shift_x_in = i_llvm_fpga_pop_i32_i_036_pop15_maxpool2d6_out_data_out[30:0];
    assign leftShiftStage0Idx1Rng1_uid105_i_mul_maxpool2d0_shift_x_b = leftShiftStage0Idx1Rng1_uid105_i_mul_maxpool2d0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid106_i_mul_maxpool2d0_shift_x(BITJOIN,105)@2
    assign leftShiftStage0Idx1_uid106_i_mul_maxpool2d0_shift_x_q = {leftShiftStage0Idx1Rng1_uid105_i_mul_maxpool2d0_shift_x_b, GND_q};

    // leftShiftStage0_uid108_i_mul_maxpool2d0_shift_x(MUX,107)@2
    assign leftShiftStage0_uid108_i_mul_maxpool2d0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid108_i_mul_maxpool2d0_shift_x_s or i_llvm_fpga_pop_i32_i_036_pop15_maxpool2d6_out_data_out or leftShiftStage0Idx1_uid106_i_mul_maxpool2d0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid108_i_mul_maxpool2d0_shift_x_s)
            1'b0 : leftShiftStage0_uid108_i_mul_maxpool2d0_shift_x_q = i_llvm_fpga_pop_i32_i_036_pop15_maxpool2d6_out_data_out;
            1'b1 : leftShiftStage0_uid108_i_mul_maxpool2d0_shift_x_q = leftShiftStage0Idx1_uid106_i_mul_maxpool2d0_shift_x_q;
            default : leftShiftStage0_uid108_i_mul_maxpool2d0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul_maxpool2d7_vt_select_31(BITSELECT,50)@2
    assign i_mul_maxpool2d7_vt_select_31_b = leftShiftStage0_uid108_i_mul_maxpool2d0_shift_x_q[31:1];

    // redist8_i_mul_maxpool2d7_vt_select_31_b_3_inputreg0(DELAY,142)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_mul_maxpool2d7_vt_select_31_b_3_inputreg0_q <= '0;
        end
        else
        begin
            redist8_i_mul_maxpool2d7_vt_select_31_b_3_inputreg0_q <= $unsigned(i_mul_maxpool2d7_vt_select_31_b);
        end
    end

    // redist8_i_mul_maxpool2d7_vt_select_31_b_3(DELAY,121)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_mul_maxpool2d7_vt_select_31_b_3_delay_0 <= '0;
            redist8_i_mul_maxpool2d7_vt_select_31_b_3_q <= '0;
        end
        else
        begin
            redist8_i_mul_maxpool2d7_vt_select_31_b_3_delay_0 <= $unsigned(redist8_i_mul_maxpool2d7_vt_select_31_b_3_inputreg0_q);
            redist8_i_mul_maxpool2d7_vt_select_31_b_3_q <= redist8_i_mul_maxpool2d7_vt_select_31_b_3_delay_0;
        end
    end

    // i_mul_maxpool2d7_vt_join(BITJOIN,49)@5
    assign i_mul_maxpool2d7_vt_join_q = {redist8_i_mul_maxpool2d7_vt_select_31_b_3_q, GND_q};

    // sync_out_aunroll_x(GPOUT,68)@5
    assign out_c0_exi10_0_tpl = GND_q;
    assign out_c0_exi10_1_tpl = i_mul_maxpool2d7_vt_join_q;
    assign out_c0_exi10_2_tpl = bgTrunc_i_mul25_maxpool2d9_sel_x_b;
    assign out_c0_exi10_3_tpl = redist7_i_unnamed_maxpool2d13_q_4_q;
    assign out_c0_exi10_4_tpl = i_notcmp23_maxpool2d14_q;
    assign out_c0_exi10_5_tpl = i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi32_pop16_maxpool2d20_out_data_out;
    assign out_c0_exi10_6_tpl = i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi36_pop17_maxpool2d22_out_data_out;
    assign out_c0_exi10_7_tpl = i_llvm_fpga_pop_i1_notcmp2740_pop18_maxpool2d24_out_data_out;
    assign out_c0_exi10_8_tpl = redist2_sync_together66_aunroll_x_in_c0_eni4_2_tpl_4_mem_q;
    assign out_c0_exi10_9_tpl = redist3_sync_together66_aunroll_x_in_c0_eni4_3_tpl_4_mem_q;
    assign out_c0_exi10_10_tpl = redist4_sync_together66_aunroll_x_in_c0_eni4_4_tpl_4_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_maxpool2d7 = GND_q;

endmodule
