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

// SystemVerilog created from double_add_1_i_sfc_logic_s_c0_in_for_bod0000enter1_double_add_10
// SystemVerilog created on Tue May 23 13:55:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_1_i_sfc_logic_s_c0_in_for_bod0000enter1_double_add_10 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_16_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_16_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_arr,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_1_0,
    output wire [0:0] out_c0_exi6_0_tpl,
    output wire [0:0] out_c0_exi6_1_tpl,
    output wire [0:0] out_c0_exi6_2_tpl,
    output wire [63:0] out_c0_exi6_3_tpl,
    output wire [0:0] out_c0_exi6_4_tpl,
    output wire [0:0] out_c0_exi6_5_tpl,
    output wire [0:0] out_c0_exi6_6_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_double_add_13,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_056_q;
    wire [31:0] c_i32_157_q;
    wire [32:0] c_i33_159_q;
    wire [32:0] c_i33_undef55_q;
    wire [3:0] c_i4_752_q;
    wire [2:0] i_arrayidx1_double_add_120_vt_const_2_q;
    wire [63:0] i_arrayidx1_double_add_120_vt_join_q;
    wire [60:0] i_arrayidx1_double_add_120_vt_select_63_b;
    wire [3:0] i_cleanups_shl_double_add_15_vt_join_q;
    wire [2:0] i_cleanups_shl_double_add_15_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor_double_add_14_q;
    wire [0:0] i_first_cleanup_xor_or_double_add_121_q;
    wire [33:0] i_fpga_indvars_iv_next_double_add_126_a;
    wire [33:0] i_fpga_indvars_iv_next_double_add_126_b;
    logic [33:0] i_fpga_indvars_iv_next_double_add_126_o;
    wire [33:0] i_fpga_indvars_iv_next_double_add_126_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_double_add_114_s;
    reg [32:0] i_fpga_indvars_iv_replace_phi_double_add_114_q;
    wire [63:0] i_idxprom_double_add_118_vt_join_q;
    wire [31:0] i_idxprom_double_add_118_vt_select_31_b;
    wire [32:0] i_inc_double_add_122_a;
    wire [32:0] i_inc_double_add_122_b;
    logic [32:0] i_inc_double_add_122_o;
    wire [32:0] i_inc_double_add_122_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp63_double_add_115_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp65_double_add_128_out_dest_data_out_0_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_double_add_12_double_add_112_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_16_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_16_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_16_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_16_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_16_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_16_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_08_pop4_double_add_117_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_08_pop4_double_add_117_out_feedback_stall_out_4;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop3_double_add_113_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop3_double_add_113_out_feedback_stall_out_3;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop7_double_add_12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop7_double_add_12_out_feedback_stall_out_7;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop6_double_add_17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop6_double_add_17_out_feedback_stall_out_6;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_double_add_111_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_double_add_111_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_double_add_131_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_double_add_131_out_feedback_valid_out_2;
    wire [31:0] i_llvm_fpga_push_i32_i_08_push4_double_add_123_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i32_i_08_push4_double_add_123_out_feedback_valid_out_4;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push3_double_add_127_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push3_double_add_127_out_feedback_valid_out_3;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push7_double_add_134_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push7_double_add_134_out_feedback_valid_out_7;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push6_double_add_19_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push6_double_add_19_out_feedback_valid_out_6;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_119_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_119_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_119_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_119_vt_select_63_b;
    wire [0:0] i_masked_double_add_135_q;
    wire [0:0] i_next_cleanups_double_add_133_s;
    reg [3:0] i_next_cleanups_double_add_133_q;
    wire [3:0] i_next_initerations_double_add_18_vt_join_q;
    wire [2:0] i_next_initerations_double_add_18_vt_select_2_b;
    wire [0:0] i_notcmp_double_add_130_q;
    wire [0:0] i_or_double_add_132_q;
    wire [0:0] i_unnamed_double_add_116_q;
    wire [0:0] i_unnamed_double_add_129_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_double_add_126_sel_x_b;
    wire [31:0] bgTrunc_i_inc_double_add_122_sel_x_b;
    wire [64:0] i_arrayidx1_double_add_10_add_x_a;
    wire [64:0] i_arrayidx1_double_add_10_add_x_b;
    logic [64:0] i_arrayidx1_double_add_10_add_x_o;
    wire [64:0] i_arrayidx1_double_add_10_add_x_q;
    wire [60:0] i_arrayidx1_double_add_10_narrow_x_b;
    wire [63:0] i_arrayidx1_double_add_10_shift_join_x_q;
    wire [63:0] i_arrayidx1_double_add_10_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_double_add_13_sel_x_b;
    wire [63:0] i_idxprom_double_add_118_sel_x_b;
    wire [0:0] i_last_initeration_double_add_110_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    wire [0:0] i_exitcond_double_add_124_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid122_i_cleanups_shl_double_add_10_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid122_i_cleanups_shl_double_add_10_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid123_i_cleanups_shl_double_add_10_shift_x_q;
    wire [0:0] leftShiftStage0_uid125_i_cleanups_shl_double_add_10_shift_x_s;
    reg [3:0] leftShiftStage0_uid125_i_cleanups_shl_double_add_10_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid129_i_next_initerations_double_add_10_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid131_i_next_initerations_double_add_10_shift_x_q;
    wire [0:0] rightShiftStage0_uid133_i_next_initerations_double_add_10_shift_x_s;
    reg [3:0] rightShiftStage0_uid133_i_next_initerations_double_add_10_shift_x_q;
    reg [0:0] redist0_sync_together76_aunroll_x_in_c0_eni1_1_tpl_9_q;
    reg [0:0] redist1_sync_together76_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist2_sync_together76_aunroll_x_in_i_valid_9_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together76_aunroll_x_in_i_valid_8(DELAY,135)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist1_sync_together76_aunroll_x_in_i_valid_8 ( .xin(in_i_valid), .xout(redist1_sync_together76_aunroll_x_in_i_valid_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist2_sync_together76_aunroll_x_in_i_valid_9(DELAY,136)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together76_aunroll_x_in_i_valid_9_q <= '0;
        end
        else
        begin
            redist2_sync_together76_aunroll_x_in_i_valid_9_q <= $unsigned(redist1_sync_together76_aunroll_x_in_i_valid_8_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // leftShiftStage0Idx1Rng1_uid122_i_cleanups_shl_double_add_10_shift_x(BITSELECT,121)@10
    assign leftShiftStage0Idx1Rng1_uid122_i_cleanups_shl_double_add_10_shift_x_in = i_llvm_fpga_pop_i4_cleanups_pop7_double_add_12_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid122_i_cleanups_shl_double_add_10_shift_x_b = leftShiftStage0Idx1Rng1_uid122_i_cleanups_shl_double_add_10_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid123_i_cleanups_shl_double_add_10_shift_x(BITJOIN,122)@10
    assign leftShiftStage0Idx1_uid123_i_cleanups_shl_double_add_10_shift_x_q = {leftShiftStage0Idx1Rng1_uid122_i_cleanups_shl_double_add_10_shift_x_b, GND_q};

    // leftShiftStage0_uid125_i_cleanups_shl_double_add_10_shift_x(MUX,124)@10
    assign leftShiftStage0_uid125_i_cleanups_shl_double_add_10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid125_i_cleanups_shl_double_add_10_shift_x_s or i_llvm_fpga_pop_i4_cleanups_pop7_double_add_12_out_data_out or leftShiftStage0Idx1_uid123_i_cleanups_shl_double_add_10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid125_i_cleanups_shl_double_add_10_shift_x_s)
            1'b0 : leftShiftStage0_uid125_i_cleanups_shl_double_add_10_shift_x_q = i_llvm_fpga_pop_i4_cleanups_pop7_double_add_12_out_data_out;
            1'b1 : leftShiftStage0_uid125_i_cleanups_shl_double_add_10_shift_x_q = leftShiftStage0Idx1_uid123_i_cleanups_shl_double_add_10_shift_x_q;
            default : leftShiftStage0_uid125_i_cleanups_shl_double_add_10_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_double_add_15_vt_select_3(BITSELECT,32)@10
    assign i_cleanups_shl_double_add_15_vt_select_3_b = leftShiftStage0_uid125_i_cleanups_shl_double_add_10_shift_x_q[3:1];

    // i_cleanups_shl_double_add_15_vt_join(BITJOIN,31)@10
    assign i_cleanups_shl_double_add_15_vt_join_q = {i_cleanups_shl_double_add_15_vt_select_3_b, GND_q};

    // i_first_cleanup_xor_double_add_14(LOGICAL,35)@10
    assign i_first_cleanup_xor_double_add_14_q = i_first_cleanup_double_add_13_sel_x_b ^ VCC_q;

    // i_notcmp_double_add_130(LOGICAL,68)@10
    assign i_notcmp_double_add_130_q = i_unnamed_double_add_129_q ^ VCC_q;

    // i_or_double_add_132(LOGICAL,69)@10
    assign i_or_double_add_132_q = i_notcmp_double_add_130_q | i_first_cleanup_xor_double_add_14_q;

    // i_next_cleanups_double_add_133(MUX,64)@10
    assign i_next_cleanups_double_add_133_s = i_or_double_add_132_q;
    always @(i_next_cleanups_double_add_133_s or i_llvm_fpga_pop_i4_cleanups_pop7_double_add_12_out_data_out or i_cleanups_shl_double_add_15_vt_join_q)
    begin
        unique case (i_next_cleanups_double_add_133_s)
            1'b0 : i_next_cleanups_double_add_133_q = i_llvm_fpga_pop_i4_cleanups_pop7_double_add_12_out_data_out;
            1'b1 : i_next_cleanups_double_add_133_q = i_cleanups_shl_double_add_15_vt_join_q;
            default : i_next_cleanups_double_add_133_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push7_double_add_134(BLACKBOX,57)@10
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    double_add_1_i_llvm_fpga_push_i4_cleanups_push7_0 thei_llvm_fpga_push_i4_cleanups_push7_double_add_134 (
        .in_data_in(i_next_cleanups_double_add_133_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_i4_cleanups_pop7_double_add_12_out_feedback_stall_out_7),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_double_add_16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together76_aunroll_x_in_i_valid_9_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i4_cleanups_push7_double_add_134_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i4_cleanups_push7_double_add_134_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_752(CONSTANT,25)
    assign c_i4_752_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop7_double_add_12(BLACKBOX,51)@10
    // out out_feedback_stall_out_7@20000000
    double_add_1_i_llvm_fpga_pop_i4_cleanups_pop7_0 thei_llvm_fpga_pop_i4_cleanups_pop7_double_add_12 (
        .in_data_in(c_i4_752_q),
        .in_dir(redist0_sync_together76_aunroll_x_in_c0_eni1_1_tpl_9_q),
        .in_feedback_in_7(i_llvm_fpga_push_i4_cleanups_push7_double_add_134_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_i4_cleanups_push7_double_add_134_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together76_aunroll_x_in_i_valid_9_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop7_double_add_12_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_i4_cleanups_pop7_double_add_12_out_feedback_stall_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_double_add_13_sel_x(BITSELECT,92)@10
    assign i_first_cleanup_double_add_13_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop7_double_add_12_out_data_out[0:0];

    // i_llvm_fpga_ffwd_dest_i33_unnamed_double_add_12_double_add_112(BLACKBOX,47)@10
    double_add_1_i_llvm_fpga_ffwd_dest_i33_unnamed_2_double_add_10 thei_llvm_fpga_ffwd_dest_i33_unnamed_double_add_12_double_add_112 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together76_aunroll_x_in_i_valid_9_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i33_unnamed_double_add_12_double_add_112_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_159(CONSTANT,22)
    assign c_i33_159_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_double_add_126(ADD,37)@10
    assign i_fpga_indvars_iv_next_double_add_126_a = {1'b0, i_fpga_indvars_iv_replace_phi_double_add_114_q};
    assign i_fpga_indvars_iv_next_double_add_126_b = {1'b0, c_i33_159_q};
    assign i_fpga_indvars_iv_next_double_add_126_o = $unsigned(i_fpga_indvars_iv_next_double_add_126_a) + $unsigned(i_fpga_indvars_iv_next_double_add_126_b);
    assign i_fpga_indvars_iv_next_double_add_126_q = i_fpga_indvars_iv_next_double_add_126_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_double_add_126_sel_x(BITSELECT,79)@10
    assign bgTrunc_i_fpga_indvars_iv_next_double_add_126_sel_x_b = i_fpga_indvars_iv_next_double_add_126_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push3_double_add_127(BLACKBOX,56)@10
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    double_add_1_i_llvm_fpga_push_i33_fpga_indvars_iv_push3_0 thei_llvm_fpga_push_i33_fpga_indvars_iv_push3_double_add_127 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_double_add_126_sel_x_b),
        .in_feedback_stall_in_3(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop3_double_add_113_out_feedback_stall_out_3),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_double_add_16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together76_aunroll_x_in_i_valid_9_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i33_fpga_indvars_iv_push3_double_add_127_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i33_fpga_indvars_iv_push3_double_add_127_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef55(CONSTANT,23)
    assign c_i33_undef55_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop3_double_add_113(BLACKBOX,50)@10
    // out out_feedback_stall_out_3@20000000
    double_add_1_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop3_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv_pop3_double_add_113 (
        .in_data_in(c_i33_undef55_q),
        .in_dir(redist0_sync_together76_aunroll_x_in_c0_eni1_1_tpl_9_q),
        .in_feedback_in_3(i_llvm_fpga_push_i33_fpga_indvars_iv_push3_double_add_127_out_feedback_out_3),
        .in_feedback_valid_in_3(i_llvm_fpga_push_i33_fpga_indvars_iv_push3_double_add_127_out_feedback_valid_out_3),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together76_aunroll_x_in_i_valid_9_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop3_double_add_113_out_data_out),
        .out_feedback_stall_out_3(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop3_double_add_113_out_feedback_stall_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv_replace_phi_double_add_114(MUX,38)@10
    assign i_fpga_indvars_iv_replace_phi_double_add_114_s = redist0_sync_together76_aunroll_x_in_c0_eni1_1_tpl_9_q;
    always @(i_fpga_indvars_iv_replace_phi_double_add_114_s or i_llvm_fpga_pop_i33_fpga_indvars_iv_pop3_double_add_113_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_double_add_12_double_add_112_out_dest_data_out_1_0)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_double_add_114_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_double_add_114_q = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop3_double_add_113_out_data_out;
            1'b1 : i_fpga_indvars_iv_replace_phi_double_add_114_q = i_llvm_fpga_ffwd_dest_i33_unnamed_double_add_12_double_add_112_out_dest_data_out_1_0;
            default : i_fpga_indvars_iv_replace_phi_double_add_114_q = 33'b0;
        endcase
    end

    // i_exitcond_double_add_124_cmp_nsign(LOGICAL,117)@10
    assign i_exitcond_double_add_124_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv_replace_phi_double_add_114_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp65_double_add_128(BLACKBOX,46)@10
    double_add_1_i_llvm_fpga_ffwd_dest_i1_cmp65_0 thei_llvm_fpga_ffwd_dest_i1_cmp65_double_add_128 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together76_aunroll_x_in_i_valid_9_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp65_double_add_128_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_double_add_129(LOGICAL,71)@10
    assign i_unnamed_double_add_129_q = i_llvm_fpga_ffwd_dest_i1_cmp65_double_add_128_out_dest_data_out_0_0 & i_exitcond_double_add_124_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_double_add_131(BLACKBOX,54)@10
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    double_add_1_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_double_add_131 (
        .in_data_in(i_unnamed_double_add_129_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_double_add_16_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_double_add_13_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together76_aunroll_x_in_i_valid_9_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_double_add_131_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_double_add_131_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,104)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist1_sync_together76_aunroll_x_in_i_valid_8_q);
        end
    end

    // rightShiftStage0Idx1Rng1_uid129_i_next_initerations_double_add_10_shift_x(BITSELECT,128)@10
    assign rightShiftStage0Idx1Rng1_uid129_i_next_initerations_double_add_10_shift_x_b = i_llvm_fpga_pop_i4_initerations_pop6_double_add_17_out_data_out[3:1];

    // rightShiftStage0Idx1_uid131_i_next_initerations_double_add_10_shift_x(BITJOIN,130)@10
    assign rightShiftStage0Idx1_uid131_i_next_initerations_double_add_10_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid129_i_next_initerations_double_add_10_shift_x_b};

    // valid_fanout_reg1(REG,102)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist1_sync_together76_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg2(REG,103)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist1_sync_together76_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_push_i4_initerations_push6_double_add_19(BLACKBOX,58)@10
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    double_add_1_i_llvm_fpga_push_i4_initerations_push6_0 thei_llvm_fpga_push_i4_initerations_push6_double_add_19 (
        .in_data_in(i_next_initerations_double_add_18_vt_join_q),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i4_initerations_pop6_double_add_17_out_feedback_stall_out_6),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_double_add_16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i4_initerations_push6_double_add_19_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i4_initerations_push6_double_add_19_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations_pop6_double_add_17(BLACKBOX,52)@10
    // out out_feedback_stall_out_6@20000000
    double_add_1_i_llvm_fpga_pop_i4_initerations_pop6_0 thei_llvm_fpga_pop_i4_initerations_pop6_double_add_17 (
        .in_data_in(c_i4_752_q),
        .in_dir(redist0_sync_together76_aunroll_x_in_c0_eni1_1_tpl_9_q),
        .in_feedback_in_6(i_llvm_fpga_push_i4_initerations_push6_double_add_19_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i4_initerations_push6_double_add_19_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop6_double_add_17_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i4_initerations_pop6_double_add_17_out_feedback_stall_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid133_i_next_initerations_double_add_10_shift_x(MUX,132)@10
    assign rightShiftStage0_uid133_i_next_initerations_double_add_10_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid133_i_next_initerations_double_add_10_shift_x_s or i_llvm_fpga_pop_i4_initerations_pop6_double_add_17_out_data_out or rightShiftStage0Idx1_uid131_i_next_initerations_double_add_10_shift_x_q)
    begin
        unique case (rightShiftStage0_uid133_i_next_initerations_double_add_10_shift_x_s)
            1'b0 : rightShiftStage0_uid133_i_next_initerations_double_add_10_shift_x_q = i_llvm_fpga_pop_i4_initerations_pop6_double_add_17_out_data_out;
            1'b1 : rightShiftStage0_uid133_i_next_initerations_double_add_10_shift_x_q = rightShiftStage0Idx1_uid131_i_next_initerations_double_add_10_shift_x_q;
            default : rightShiftStage0_uid133_i_next_initerations_double_add_10_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_double_add_18_vt_select_2(BITSELECT,67)@10
    assign i_next_initerations_double_add_18_vt_select_2_b = rightShiftStage0_uid133_i_next_initerations_double_add_10_shift_x_q[2:0];

    // i_next_initerations_double_add_18_vt_join(BITJOIN,66)@10
    assign i_next_initerations_double_add_18_vt_join_q = {GND_q, i_next_initerations_double_add_18_vt_select_2_b};

    // i_last_initeration_double_add_110_sel_x(BITSELECT,94)@10
    assign i_last_initeration_double_add_110_sel_x_b = i_next_initerations_double_add_18_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_double_add_111(BLACKBOX,53)@10
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    double_add_1_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_double_add_111 (
        .in_data_in(i_last_initeration_double_add_110_sel_x_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_double_add_16_out_initeration_stall_out),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_double_add_16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_i1_lastiniteration_double_add_111_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_i1_lastiniteration_double_add_111_out_feedback_valid_out_1),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together76_aunroll_x_in_c0_eni1_1_tpl_9(DELAY,134)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist0_sync_together76_aunroll_x_in_c0_eni1_1_tpl_9 ( .xin(in_c0_eni1_1_tpl), .xout(redist0_sync_together76_aunroll_x_in_c0_eni1_1_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pipeline_keep_going_double_add_16(BLACKBOX,48)@10
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    double_add_1_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_double_add_16 (
        .in_data_in(redist0_sync_together76_aunroll_x_in_c0_eni1_1_tpl_9_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_double_add_111_out_feedback_out_1),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_double_add_111_out_feedback_valid_out_1),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_double_add_131_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_double_add_131_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together76_aunroll_x_in_i_valid_9_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_double_add_16_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_double_add_16_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_double_add_16_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_double_add_16_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_double_add_16_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_double_add_16_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,26)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_16_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_double_add_16_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_16_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_double_add_16_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,74)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_double_add_16_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,101)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist1_sync_together76_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_masked_double_add_135(LOGICAL,63)@10
    assign i_masked_double_add_135_q = i_notcmp_double_add_130_q & i_first_cleanup_double_add_13_sel_x_b;

    // valid_fanout_reg4(REG,105)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist1_sync_together76_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp63_double_add_115(BLACKBOX,45)@10
    double_add_1_i_llvm_fpga_ffwd_dest_i1_cmp63_0 thei_llvm_fpga_ffwd_dest_i1_cmp63_double_add_115 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp63_double_add_115_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_double_add_116(LOGICAL,70)@10
    assign i_unnamed_double_add_116_q = i_llvm_fpga_ffwd_dest_i1_cmp63_double_add_115_out_dest_data_out_0_0 ^ VCC_q;

    // i_first_cleanup_xor_or_double_add_121(LOGICAL,36)@10
    assign i_first_cleanup_xor_or_double_add_121_q = i_unnamed_double_add_116_q | i_first_cleanup_xor_double_add_14_q;

    // c_i32_056(CONSTANT,20)
    assign c_i32_056_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg5(REG,106)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist1_sync_together76_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg7(REG,108)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist1_sync_together76_aunroll_x_in_i_valid_8_q);
        end
    end

    // c_i32_157(CONSTANT,21)
    assign c_i32_157_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_double_add_122(ADD,43)@10
    assign i_inc_double_add_122_a = {1'b0, i_llvm_fpga_pop_i32_i_08_pop4_double_add_117_out_data_out};
    assign i_inc_double_add_122_b = {1'b0, c_i32_157_q};
    assign i_inc_double_add_122_o = $unsigned(i_inc_double_add_122_a) + $unsigned(i_inc_double_add_122_b);
    assign i_inc_double_add_122_q = i_inc_double_add_122_o[32:0];

    // bgTrunc_i_inc_double_add_122_sel_x(BITSELECT,80)@10
    assign bgTrunc_i_inc_double_add_122_sel_x_b = i_inc_double_add_122_q[31:0];

    // i_llvm_fpga_push_i32_i_08_push4_double_add_123(BLACKBOX,55)@10
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    double_add_1_i_llvm_fpga_push_i32_i_08_push4_0 thei_llvm_fpga_push_i32_i_08_push4_double_add_123 (
        .in_data_in(bgTrunc_i_inc_double_add_122_sel_x_b),
        .in_feedback_stall_in_4(i_llvm_fpga_pop_i32_i_08_pop4_double_add_117_out_feedback_stall_out_4),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_double_add_16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i32_i_08_push4_double_add_123_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i32_i_08_push4_double_add_123_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_08_pop4_double_add_117(BLACKBOX,49)@10
    // out out_feedback_stall_out_4@20000000
    double_add_1_i_llvm_fpga_pop_i32_i_08_pop4_0 thei_llvm_fpga_pop_i32_i_08_pop4_double_add_117 (
        .in_data_in(c_i32_056_q),
        .in_dir(redist0_sync_together76_aunroll_x_in_c0_eni1_1_tpl_9_q),
        .in_feedback_in_4(i_llvm_fpga_push_i32_i_08_push4_double_add_123_out_feedback_out_4),
        .in_feedback_valid_in_4(i_llvm_fpga_push_i32_i_08_push4_double_add_123_out_feedback_valid_out_4),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_08_pop4_double_add_117_out_data_out),
        .out_feedback_stall_out_4(i_llvm_fpga_pop_i32_i_08_pop4_double_add_117_out_feedback_stall_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom_double_add_118_sel_x(BITSELECT,93)@10
    assign i_idxprom_double_add_118_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_08_pop4_double_add_117_out_data_out[31:0]};

    // i_idxprom_double_add_118_vt_select_31(BITSELECT,42)@10
    assign i_idxprom_double_add_118_vt_select_31_b = i_idxprom_double_add_118_sel_x_b[31:0];

    // i_idxprom_double_add_118_vt_join(BITJOIN,41)@10
    assign i_idxprom_double_add_118_vt_join_q = {c_i32_056_q, i_idxprom_double_add_118_vt_select_31_b};

    // i_arrayidx1_double_add_10_narrow_x(BITSELECT,84)@10
    assign i_arrayidx1_double_add_10_narrow_x_b = i_idxprom_double_add_118_vt_join_q[60:0];

    // i_arrayidx1_double_add_10_shift_join_x(BITJOIN,85)@10
    assign i_arrayidx1_double_add_10_shift_join_x_q = {i_arrayidx1_double_add_10_narrow_x_b, i_arrayidx1_double_add_120_vt_const_2_q};

    // valid_fanout_reg6(REG,107)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist1_sync_together76_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_119(BLACKBOX,59)@0
    // in in_i_dependence@10
    // in in_valid_in@10
    // out out_buffer_out@10
    // out out_valid_out@10
    double_add_1_i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_119 (
        .in_buffer_in(in_arr),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_119_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_119_vt_select_63(BITSELECT,62)@10
    assign i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_119_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_119_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_119_vt_const_9(CONSTANT,60)
    assign i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_119_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_119_vt_join(BITJOIN,61)@10
    assign i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_119_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_119_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_119_vt_const_9_q};

    // i_arrayidx1_double_add_10_add_x(ADD,82)@10
    assign i_arrayidx1_double_add_10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_119_vt_join_q};
    assign i_arrayidx1_double_add_10_add_x_b = {1'b0, i_arrayidx1_double_add_10_shift_join_x_q};
    assign i_arrayidx1_double_add_10_add_x_o = $unsigned(i_arrayidx1_double_add_10_add_x_a) + $unsigned(i_arrayidx1_double_add_10_add_x_b);
    assign i_arrayidx1_double_add_10_add_x_q = i_arrayidx1_double_add_10_add_x_o[64:0];

    // i_arrayidx1_double_add_10_dupName_0_trunc_sel_x(BITSELECT,87)@10
    assign i_arrayidx1_double_add_10_dupName_0_trunc_sel_x_b = i_arrayidx1_double_add_10_add_x_q[63:0];

    // i_arrayidx1_double_add_120_vt_select_63(BITSELECT,29)@10
    assign i_arrayidx1_double_add_120_vt_select_63_b = i_arrayidx1_double_add_10_dupName_0_trunc_sel_x_b[63:3];

    // i_arrayidx1_double_add_120_vt_const_2(CONSTANT,27)
    assign i_arrayidx1_double_add_120_vt_const_2_q = $unsigned(3'b000);

    // i_arrayidx1_double_add_120_vt_join(BITJOIN,28)@10
    assign i_arrayidx1_double_add_120_vt_join_q = {i_arrayidx1_double_add_120_vt_select_63_b, i_arrayidx1_double_add_120_vt_const_2_q};

    // sync_out_aunroll_x(GPOUT,99)@10
    assign out_c0_exi6_0_tpl = GND_q;
    assign out_c0_exi6_1_tpl = i_first_cleanup_xor_double_add_14_q;
    assign out_c0_exi6_2_tpl = i_llvm_fpga_pipeline_keep_going_double_add_16_out_data_out;
    assign out_c0_exi6_3_tpl = i_arrayidx1_double_add_120_vt_join_q;
    assign out_c0_exi6_4_tpl = i_first_cleanup_xor_or_double_add_121_q;
    assign out_c0_exi6_5_tpl = i_masked_double_add_135_q;
    assign out_c0_exi6_6_tpl = redist0_sync_together76_aunroll_x_in_c0_eni1_1_tpl_9_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_double_add_13 = GND_q;

endmodule
