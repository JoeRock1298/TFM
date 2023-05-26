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

// SystemVerilog created from double_add_2_i_sfc_logic_s_c1_in_for_bod0000enter1_double_add_20
// SystemVerilog created on Tue May 23 13:58:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_2_i_sfc_logic_s_c1_in_for_bod0000enter1_double_add_20 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_arr,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_1_0,
    output wire [0:0] out_c1_exi6_0_tpl,
    output wire [0:0] out_c1_exi6_1_tpl,
    output wire [0:0] out_c1_exi6_2_tpl,
    output wire [63:0] out_c1_exi6_3_tpl,
    output wire [0:0] out_c1_exi6_4_tpl,
    output wire [0:0] out_c1_exi6_5_tpl,
    output wire [0:0] out_c1_exi6_6_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_double_add_214,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [0:0] in_c1_eni1_1_tpl,
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
    wire [2:0] i_arrayidx81_double_add_220_vt_const_2_q;
    wire [63:0] i_arrayidx81_double_add_220_vt_join_q;
    wire [60:0] i_arrayidx81_double_add_220_vt_select_63_b;
    wire [3:0] i_cleanups_shl_double_add_25_vt_join_q;
    wire [2:0] i_cleanups_shl_double_add_25_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor_double_add_24_q;
    wire [0:0] i_first_cleanup_xor_or_double_add_221_q;
    wire [33:0] i_fpga_indvars_iv_next_double_add_226_a;
    wire [33:0] i_fpga_indvars_iv_next_double_add_226_b;
    logic [33:0] i_fpga_indvars_iv_next_double_add_226_o;
    wire [33:0] i_fpga_indvars_iv_next_double_add_226_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_double_add_214_s;
    reg [32:0] i_fpga_indvars_iv_replace_phi_double_add_214_q;
    wire [63:0] i_idxprom7_double_add_218_vt_join_q;
    wire [31:0] i_idxprom7_double_add_218_vt_select_31_b;
    wire [32:0] i_inc23_double_add_222_a;
    wire [32:0] i_inc23_double_add_222_b;
    logic [32:0] i_inc23_double_add_222_o;
    wire [32:0] i_inc23_double_add_222_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp31916_double_add_228_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp3193_double_add_215_out_dest_data_out_0_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_double_add_217_double_add_212_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_26_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_26_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_26_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_26_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_26_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_26_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i1_020_pop18_double_add_217_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i1_020_pop18_double_add_217_out_feedback_stall_out_18;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop5_double_add_213_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop5_double_add_213_out_feedback_stall_out_5;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop20_double_add_22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop20_double_add_22_out_feedback_stall_out_20;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop19_double_add_27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop19_double_add_27_out_feedback_stall_out_19;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_double_add_211_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_double_add_211_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_double_add_231_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_double_add_231_out_feedback_valid_out_2;
    wire [31:0] i_llvm_fpga_push_i32_i1_020_push18_double_add_223_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i32_i1_020_push18_double_add_223_out_feedback_valid_out_18;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push5_double_add_227_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push5_double_add_227_out_feedback_valid_out_5;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push20_double_add_234_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push20_double_add_234_out_feedback_valid_out_20;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push19_double_add_29_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push19_double_add_29_out_feedback_valid_out_19;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_219_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_219_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_219_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_219_vt_select_63_b;
    wire [0:0] i_masked_double_add_235_q;
    wire [0:0] i_next_cleanups_double_add_233_s;
    reg [3:0] i_next_cleanups_double_add_233_q;
    wire [3:0] i_next_initerations_double_add_28_vt_join_q;
    wire [2:0] i_next_initerations_double_add_28_vt_select_2_b;
    wire [0:0] i_notcmp_double_add_230_q;
    wire [0:0] i_or_double_add_232_q;
    wire [0:0] i_unnamed_double_add_216_q;
    wire [0:0] i_unnamed_double_add_229_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_double_add_226_sel_x_b;
    wire [31:0] bgTrunc_i_inc23_double_add_222_sel_x_b;
    wire [64:0] i_arrayidx81_double_add_20_add_x_a;
    wire [64:0] i_arrayidx81_double_add_20_add_x_b;
    logic [64:0] i_arrayidx81_double_add_20_add_x_o;
    wire [64:0] i_arrayidx81_double_add_20_add_x_q;
    wire [60:0] i_arrayidx81_double_add_20_narrow_x_b;
    wire [63:0] i_arrayidx81_double_add_20_shift_join_x_q;
    wire [63:0] i_arrayidx81_double_add_20_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_double_add_23_sel_x_b;
    wire [63:0] i_idxprom7_double_add_218_sel_x_b;
    wire [0:0] i_last_initeration_double_add_210_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    wire [0:0] i_exitcond_double_add_224_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid122_i_cleanups_shl_double_add_20_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid122_i_cleanups_shl_double_add_20_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid123_i_cleanups_shl_double_add_20_shift_x_q;
    wire [0:0] leftShiftStage0_uid125_i_cleanups_shl_double_add_20_shift_x_s;
    reg [3:0] leftShiftStage0_uid125_i_cleanups_shl_double_add_20_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid129_i_next_initerations_double_add_20_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid131_i_next_initerations_double_add_20_shift_x_q;
    wire [0:0] rightShiftStage0_uid133_i_next_initerations_double_add_20_shift_x_s;
    reg [3:0] rightShiftStage0_uid133_i_next_initerations_double_add_20_shift_x_q;
    reg [0:0] redist0_sync_together76_aunroll_x_in_c1_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together76_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist2_i_llvm_fpga_pipeline_keep_going_double_add_26_out_data_out_1_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together76_aunroll_x_in_i_valid_1(DELAY,135)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together76_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist1_sync_together76_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist2_i_llvm_fpga_pipeline_keep_going_double_add_26_out_data_out_1(DELAY,136)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_llvm_fpga_pipeline_keep_going_double_add_26_out_data_out_1_q <= '0;
        end
        else
        begin
            redist2_i_llvm_fpga_pipeline_keep_going_double_add_26_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_double_add_26_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid122_i_cleanups_shl_double_add_20_shift_x(BITSELECT,121)@2
    assign leftShiftStage0Idx1Rng1_uid122_i_cleanups_shl_double_add_20_shift_x_in = i_llvm_fpga_pop_i4_cleanups_pop20_double_add_22_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid122_i_cleanups_shl_double_add_20_shift_x_b = leftShiftStage0Idx1Rng1_uid122_i_cleanups_shl_double_add_20_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid123_i_cleanups_shl_double_add_20_shift_x(BITJOIN,122)@2
    assign leftShiftStage0Idx1_uid123_i_cleanups_shl_double_add_20_shift_x_q = {leftShiftStage0Idx1Rng1_uid122_i_cleanups_shl_double_add_20_shift_x_b, GND_q};

    // leftShiftStage0_uid125_i_cleanups_shl_double_add_20_shift_x(MUX,124)@2
    assign leftShiftStage0_uid125_i_cleanups_shl_double_add_20_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid125_i_cleanups_shl_double_add_20_shift_x_s or i_llvm_fpga_pop_i4_cleanups_pop20_double_add_22_out_data_out or leftShiftStage0Idx1_uid123_i_cleanups_shl_double_add_20_shift_x_q)
    begin
        unique case (leftShiftStage0_uid125_i_cleanups_shl_double_add_20_shift_x_s)
            1'b0 : leftShiftStage0_uid125_i_cleanups_shl_double_add_20_shift_x_q = i_llvm_fpga_pop_i4_cleanups_pop20_double_add_22_out_data_out;
            1'b1 : leftShiftStage0_uid125_i_cleanups_shl_double_add_20_shift_x_q = leftShiftStage0Idx1_uid123_i_cleanups_shl_double_add_20_shift_x_q;
            default : leftShiftStage0_uid125_i_cleanups_shl_double_add_20_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_double_add_25_vt_select_3(BITSELECT,32)@2
    assign i_cleanups_shl_double_add_25_vt_select_3_b = leftShiftStage0_uid125_i_cleanups_shl_double_add_20_shift_x_q[3:1];

    // i_cleanups_shl_double_add_25_vt_join(BITJOIN,31)@2
    assign i_cleanups_shl_double_add_25_vt_join_q = {i_cleanups_shl_double_add_25_vt_select_3_b, GND_q};

    // i_first_cleanup_xor_double_add_24(LOGICAL,35)@2
    assign i_first_cleanup_xor_double_add_24_q = i_first_cleanup_double_add_23_sel_x_b ^ VCC_q;

    // i_notcmp_double_add_230(LOGICAL,68)@2
    assign i_notcmp_double_add_230_q = i_unnamed_double_add_229_q ^ VCC_q;

    // i_or_double_add_232(LOGICAL,69)@2
    assign i_or_double_add_232_q = i_notcmp_double_add_230_q | i_first_cleanup_xor_double_add_24_q;

    // i_next_cleanups_double_add_233(MUX,64)@2
    assign i_next_cleanups_double_add_233_s = i_or_double_add_232_q;
    always @(i_next_cleanups_double_add_233_s or i_llvm_fpga_pop_i4_cleanups_pop20_double_add_22_out_data_out or i_cleanups_shl_double_add_25_vt_join_q)
    begin
        unique case (i_next_cleanups_double_add_233_s)
            1'b0 : i_next_cleanups_double_add_233_q = i_llvm_fpga_pop_i4_cleanups_pop20_double_add_22_out_data_out;
            1'b1 : i_next_cleanups_double_add_233_q = i_cleanups_shl_double_add_25_vt_join_q;
            default : i_next_cleanups_double_add_233_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push20_double_add_234(BLACKBOX,57)@2
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    double_add_2_i_llvm_fpga_push_i4_cleanups_push20_0 thei_llvm_fpga_push_i4_cleanups_push20_double_add_234 (
        .in_data_in(i_next_cleanups_double_add_233_q),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i4_cleanups_pop20_double_add_22_out_feedback_stall_out_20),
        .in_keep_going(redist2_i_llvm_fpga_pipeline_keep_going_double_add_26_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together76_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i4_cleanups_push20_double_add_234_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i4_cleanups_push20_double_add_234_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together76_aunroll_x_in_c1_eni1_1_tpl_1(DELAY,134)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together76_aunroll_x_in_c1_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together76_aunroll_x_in_c1_eni1_1_tpl_1_q <= $unsigned(in_c1_eni1_1_tpl);
        end
    end

    // c_i4_752(CONSTANT,25)
    assign c_i4_752_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop20_double_add_22(BLACKBOX,51)@2
    // out out_feedback_stall_out_20@20000000
    double_add_2_i_llvm_fpga_pop_i4_cleanups_pop20_0 thei_llvm_fpga_pop_i4_cleanups_pop20_double_add_22 (
        .in_data_in(c_i4_752_q),
        .in_dir(redist0_sync_together76_aunroll_x_in_c1_eni1_1_tpl_1_q),
        .in_feedback_in_20(i_llvm_fpga_push_i4_cleanups_push20_double_add_234_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i4_cleanups_push20_double_add_234_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together76_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop20_double_add_22_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i4_cleanups_pop20_double_add_22_out_feedback_stall_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_double_add_23_sel_x(BITSELECT,92)@2
    assign i_first_cleanup_double_add_23_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop20_double_add_22_out_data_out[0:0];

    // i_llvm_fpga_ffwd_dest_i33_unnamed_double_add_217_double_add_212(BLACKBOX,47)@2
    double_add_2_i_llvm_fpga_ffwd_dest_i33_unnamed_17_double_add_20 thei_llvm_fpga_ffwd_dest_i33_unnamed_double_add_217_double_add_212 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together76_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i33_unnamed_double_add_217_double_add_212_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_159(CONSTANT,22)
    assign c_i33_159_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_double_add_226(ADD,37)@2
    assign i_fpga_indvars_iv_next_double_add_226_a = {1'b0, i_fpga_indvars_iv_replace_phi_double_add_214_q};
    assign i_fpga_indvars_iv_next_double_add_226_b = {1'b0, c_i33_159_q};
    assign i_fpga_indvars_iv_next_double_add_226_o = $unsigned(i_fpga_indvars_iv_next_double_add_226_a) + $unsigned(i_fpga_indvars_iv_next_double_add_226_b);
    assign i_fpga_indvars_iv_next_double_add_226_q = i_fpga_indvars_iv_next_double_add_226_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_double_add_226_sel_x(BITSELECT,79)@2
    assign bgTrunc_i_fpga_indvars_iv_next_double_add_226_sel_x_b = i_fpga_indvars_iv_next_double_add_226_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push5_double_add_227(BLACKBOX,56)@2
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    double_add_2_i_llvm_fpga_push_i33_fpga_indvars_iv_push5_0 thei_llvm_fpga_push_i33_fpga_indvars_iv_push5_double_add_227 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_double_add_226_sel_x_b),
        .in_feedback_stall_in_5(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop5_double_add_213_out_feedback_stall_out_5),
        .in_keep_going(redist2_i_llvm_fpga_pipeline_keep_going_double_add_26_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together76_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i33_fpga_indvars_iv_push5_double_add_227_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i33_fpga_indvars_iv_push5_double_add_227_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef55(CONSTANT,23)
    assign c_i33_undef55_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop5_double_add_213(BLACKBOX,50)@2
    // out out_feedback_stall_out_5@20000000
    double_add_2_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop5_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv_pop5_double_add_213 (
        .in_data_in(c_i33_undef55_q),
        .in_dir(redist0_sync_together76_aunroll_x_in_c1_eni1_1_tpl_1_q),
        .in_feedback_in_5(i_llvm_fpga_push_i33_fpga_indvars_iv_push5_double_add_227_out_feedback_out_5),
        .in_feedback_valid_in_5(i_llvm_fpga_push_i33_fpga_indvars_iv_push5_double_add_227_out_feedback_valid_out_5),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together76_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop5_double_add_213_out_data_out),
        .out_feedback_stall_out_5(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop5_double_add_213_out_feedback_stall_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv_replace_phi_double_add_214(MUX,38)@2
    assign i_fpga_indvars_iv_replace_phi_double_add_214_s = redist0_sync_together76_aunroll_x_in_c1_eni1_1_tpl_1_q;
    always @(i_fpga_indvars_iv_replace_phi_double_add_214_s or i_llvm_fpga_pop_i33_fpga_indvars_iv_pop5_double_add_213_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_double_add_217_double_add_212_out_dest_data_out_1_0)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_double_add_214_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_double_add_214_q = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop5_double_add_213_out_data_out;
            1'b1 : i_fpga_indvars_iv_replace_phi_double_add_214_q = i_llvm_fpga_ffwd_dest_i33_unnamed_double_add_217_double_add_212_out_dest_data_out_1_0;
            default : i_fpga_indvars_iv_replace_phi_double_add_214_q = 33'b0;
        endcase
    end

    // i_exitcond_double_add_224_cmp_nsign(LOGICAL,117)@2
    assign i_exitcond_double_add_224_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv_replace_phi_double_add_214_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp31916_double_add_228(BLACKBOX,45)@2
    double_add_2_i_llvm_fpga_ffwd_dest_i1_cmp31916_0 thei_llvm_fpga_ffwd_dest_i1_cmp31916_double_add_228 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together76_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp31916_double_add_228_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_double_add_229(LOGICAL,71)@2
    assign i_unnamed_double_add_229_q = i_llvm_fpga_ffwd_dest_i1_cmp31916_double_add_228_out_dest_data_out_0_0 & i_exitcond_double_add_224_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_double_add_231(BLACKBOX,54)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    double_add_2_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_double_add_231 (
        .in_data_in(i_unnamed_double_add_229_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_double_add_26_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_double_add_23_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together76_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_double_add_231_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_double_add_231_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,104)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid129_i_next_initerations_double_add_20_shift_x(BITSELECT,128)@2
    assign rightShiftStage0Idx1Rng1_uid129_i_next_initerations_double_add_20_shift_x_b = i_llvm_fpga_pop_i4_initerations_pop19_double_add_27_out_data_out[3:1];

    // rightShiftStage0Idx1_uid131_i_next_initerations_double_add_20_shift_x(BITJOIN,130)@2
    assign rightShiftStage0Idx1_uid131_i_next_initerations_double_add_20_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid129_i_next_initerations_double_add_20_shift_x_b};

    // valid_fanout_reg1(REG,102)@1 + 1
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

    // valid_fanout_reg2(REG,103)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations_push19_double_add_29(BLACKBOX,58)@2
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    double_add_2_i_llvm_fpga_push_i4_initerations_push19_0 thei_llvm_fpga_push_i4_initerations_push19_double_add_29 (
        .in_data_in(i_next_initerations_double_add_28_vt_join_q),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i4_initerations_pop19_double_add_27_out_feedback_stall_out_19),
        .in_keep_going(redist2_i_llvm_fpga_pipeline_keep_going_double_add_26_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i4_initerations_push19_double_add_29_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i4_initerations_push19_double_add_29_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations_pop19_double_add_27(BLACKBOX,52)@2
    // out out_feedback_stall_out_19@20000000
    double_add_2_i_llvm_fpga_pop_i4_initerations_pop19_0 thei_llvm_fpga_pop_i4_initerations_pop19_double_add_27 (
        .in_data_in(c_i4_752_q),
        .in_dir(redist0_sync_together76_aunroll_x_in_c1_eni1_1_tpl_1_q),
        .in_feedback_in_19(i_llvm_fpga_push_i4_initerations_push19_double_add_29_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i4_initerations_push19_double_add_29_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop19_double_add_27_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i4_initerations_pop19_double_add_27_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid133_i_next_initerations_double_add_20_shift_x(MUX,132)@2
    assign rightShiftStage0_uid133_i_next_initerations_double_add_20_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid133_i_next_initerations_double_add_20_shift_x_s or i_llvm_fpga_pop_i4_initerations_pop19_double_add_27_out_data_out or rightShiftStage0Idx1_uid131_i_next_initerations_double_add_20_shift_x_q)
    begin
        unique case (rightShiftStage0_uid133_i_next_initerations_double_add_20_shift_x_s)
            1'b0 : rightShiftStage0_uid133_i_next_initerations_double_add_20_shift_x_q = i_llvm_fpga_pop_i4_initerations_pop19_double_add_27_out_data_out;
            1'b1 : rightShiftStage0_uid133_i_next_initerations_double_add_20_shift_x_q = rightShiftStage0Idx1_uid131_i_next_initerations_double_add_20_shift_x_q;
            default : rightShiftStage0_uid133_i_next_initerations_double_add_20_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_double_add_28_vt_select_2(BITSELECT,67)@2
    assign i_next_initerations_double_add_28_vt_select_2_b = rightShiftStage0_uid133_i_next_initerations_double_add_20_shift_x_q[2:0];

    // i_next_initerations_double_add_28_vt_join(BITJOIN,66)@2
    assign i_next_initerations_double_add_28_vt_join_q = {GND_q, i_next_initerations_double_add_28_vt_select_2_b};

    // i_last_initeration_double_add_210_sel_x(BITSELECT,94)@2
    assign i_last_initeration_double_add_210_sel_x_b = i_next_initerations_double_add_28_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_double_add_211(BLACKBOX,53)@2
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    double_add_2_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_double_add_211 (
        .in_data_in(i_last_initeration_double_add_210_sel_x_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_double_add_26_out_initeration_stall_out),
        .in_keep_going(redist2_i_llvm_fpga_pipeline_keep_going_double_add_26_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_i1_lastiniteration_double_add_211_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_i1_lastiniteration_double_add_211_out_feedback_valid_out_1),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_double_add_26(BLACKBOX,48)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    double_add_2_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_double_add_26 (
        .in_data_in(in_c1_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_double_add_211_out_feedback_out_1),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_double_add_211_out_feedback_valid_out_1),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_double_add_231_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_double_add_231_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_double_add_26_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_double_add_26_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_double_add_26_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_double_add_26_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_double_add_26_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_double_add_26_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,26)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_double_add_26_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_double_add_26_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,74)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_double_add_26_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,101)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // i_masked_double_add_235(LOGICAL,63)@2
    assign i_masked_double_add_235_q = i_notcmp_double_add_230_q & i_first_cleanup_double_add_23_sel_x_b;

    // valid_fanout_reg4(REG,105)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i1_cmp3193_double_add_215(BLACKBOX,46)@2
    double_add_2_i_llvm_fpga_ffwd_dest_i1_cmp3193_0 thei_llvm_fpga_ffwd_dest_i1_cmp3193_double_add_215 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp3193_double_add_215_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_double_add_216(LOGICAL,70)@2
    assign i_unnamed_double_add_216_q = i_llvm_fpga_ffwd_dest_i1_cmp3193_double_add_215_out_dest_data_out_0_0 ^ VCC_q;

    // i_first_cleanup_xor_or_double_add_221(LOGICAL,36)@2
    assign i_first_cleanup_xor_or_double_add_221_q = i_unnamed_double_add_216_q | i_first_cleanup_xor_double_add_24_q;

    // c_i32_056(CONSTANT,20)
    assign c_i32_056_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg5(REG,106)@1 + 1
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

    // valid_fanout_reg7(REG,108)@1 + 1
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

    // c_i32_157(CONSTANT,21)
    assign c_i32_157_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc23_double_add_222(ADD,43)@2
    assign i_inc23_double_add_222_a = {1'b0, i_llvm_fpga_pop_i32_i1_020_pop18_double_add_217_out_data_out};
    assign i_inc23_double_add_222_b = {1'b0, c_i32_157_q};
    assign i_inc23_double_add_222_o = $unsigned(i_inc23_double_add_222_a) + $unsigned(i_inc23_double_add_222_b);
    assign i_inc23_double_add_222_q = i_inc23_double_add_222_o[32:0];

    // bgTrunc_i_inc23_double_add_222_sel_x(BITSELECT,80)@2
    assign bgTrunc_i_inc23_double_add_222_sel_x_b = i_inc23_double_add_222_q[31:0];

    // i_llvm_fpga_push_i32_i1_020_push18_double_add_223(BLACKBOX,55)@2
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    double_add_2_i_llvm_fpga_push_i32_i1_020_push18_0 thei_llvm_fpga_push_i32_i1_020_push18_double_add_223 (
        .in_data_in(bgTrunc_i_inc23_double_add_222_sel_x_b),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i32_i1_020_pop18_double_add_217_out_feedback_stall_out_18),
        .in_keep_going(redist2_i_llvm_fpga_pipeline_keep_going_double_add_26_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i32_i1_020_push18_double_add_223_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i32_i1_020_push18_double_add_223_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i1_020_pop18_double_add_217(BLACKBOX,49)@2
    // out out_feedback_stall_out_18@20000000
    double_add_2_i_llvm_fpga_pop_i32_i1_020_pop18_0 thei_llvm_fpga_pop_i32_i1_020_pop18_double_add_217 (
        .in_data_in(c_i32_056_q),
        .in_dir(redist0_sync_together76_aunroll_x_in_c1_eni1_1_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i32_i1_020_push18_double_add_223_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i32_i1_020_push18_double_add_223_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_i1_020_pop18_double_add_217_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i32_i1_020_pop18_double_add_217_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom7_double_add_218_sel_x(BITSELECT,93)@2
    assign i_idxprom7_double_add_218_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i1_020_pop18_double_add_217_out_data_out[31:0]};

    // i_idxprom7_double_add_218_vt_select_31(BITSELECT,42)@2
    assign i_idxprom7_double_add_218_vt_select_31_b = i_idxprom7_double_add_218_sel_x_b[31:0];

    // i_idxprom7_double_add_218_vt_join(BITJOIN,41)@2
    assign i_idxprom7_double_add_218_vt_join_q = {c_i32_056_q, i_idxprom7_double_add_218_vt_select_31_b};

    // i_arrayidx81_double_add_20_narrow_x(BITSELECT,84)@2
    assign i_arrayidx81_double_add_20_narrow_x_b = i_idxprom7_double_add_218_vt_join_q[60:0];

    // i_arrayidx81_double_add_20_shift_join_x(BITJOIN,85)@2
    assign i_arrayidx81_double_add_20_shift_join_x_q = {i_arrayidx81_double_add_20_narrow_x_b, i_arrayidx81_double_add_220_vt_const_2_q};

    // valid_fanout_reg6(REG,107)@1 + 1
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

    // i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_219(BLACKBOX,59)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    double_add_2_i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_219 (
        .in_buffer_in(in_arr),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_219_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_219_vt_select_63(BITSELECT,62)@2
    assign i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_219_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_219_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_219_vt_const_9(CONSTANT,60)
    assign i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_219_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_219_vt_join(BITJOIN,61)@2
    assign i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_219_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_219_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_219_vt_const_9_q};

    // i_arrayidx81_double_add_20_add_x(ADD,82)@2
    assign i_arrayidx81_double_add_20_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_219_vt_join_q};
    assign i_arrayidx81_double_add_20_add_x_b = {1'b0, i_arrayidx81_double_add_20_shift_join_x_q};
    assign i_arrayidx81_double_add_20_add_x_o = $unsigned(i_arrayidx81_double_add_20_add_x_a) + $unsigned(i_arrayidx81_double_add_20_add_x_b);
    assign i_arrayidx81_double_add_20_add_x_q = i_arrayidx81_double_add_20_add_x_o[64:0];

    // i_arrayidx81_double_add_20_dupName_0_trunc_sel_x(BITSELECT,87)@2
    assign i_arrayidx81_double_add_20_dupName_0_trunc_sel_x_b = i_arrayidx81_double_add_20_add_x_q[63:0];

    // i_arrayidx81_double_add_220_vt_select_63(BITSELECT,29)@2
    assign i_arrayidx81_double_add_220_vt_select_63_b = i_arrayidx81_double_add_20_dupName_0_trunc_sel_x_b[63:3];

    // i_arrayidx81_double_add_220_vt_const_2(CONSTANT,27)
    assign i_arrayidx81_double_add_220_vt_const_2_q = $unsigned(3'b000);

    // i_arrayidx81_double_add_220_vt_join(BITJOIN,28)@2
    assign i_arrayidx81_double_add_220_vt_join_q = {i_arrayidx81_double_add_220_vt_select_63_b, i_arrayidx81_double_add_220_vt_const_2_q};

    // sync_out_aunroll_x(GPOUT,99)@2
    assign out_c1_exi6_0_tpl = GND_q;
    assign out_c1_exi6_1_tpl = i_first_cleanup_xor_double_add_24_q;
    assign out_c1_exi6_2_tpl = redist2_i_llvm_fpga_pipeline_keep_going_double_add_26_out_data_out_1_q;
    assign out_c1_exi6_3_tpl = i_arrayidx81_double_add_220_vt_join_q;
    assign out_c1_exi6_4_tpl = i_first_cleanup_xor_or_double_add_221_q;
    assign out_c1_exi6_5_tpl = i_masked_double_add_235_q;
    assign out_c1_exi6_6_tpl = redist0_sync_together76_aunroll_x_in_c1_eni1_1_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_double_add_214 = GND_q;

endmodule
