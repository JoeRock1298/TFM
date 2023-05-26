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

// SystemVerilog created from double_add_2_i_sfc_logic_s_c0_in_for_bod0000ter555_double_add_20
// SystemVerilog created on Tue May 23 14:04:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_2_i_sfc_logic_s_c0_in_for_bod0000ter555_double_add_20 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_double_add_22_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_double_add_22_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_arr,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_1_0,
    output wire [0:0] out_c0_exi5_0_tpl,
    output wire [0:0] out_c0_exi5_1_tpl,
    output wire [63:0] out_c0_exi5_2_tpl,
    output wire [0:0] out_c0_exi5_3_tpl,
    output wire [0:0] out_c0_exi5_4_tpl,
    output wire [0:0] out_c0_exi5_5_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_double_add_23,
    input wire [0:0] in_c0_eni154_0_tpl,
    input wire [0:0] in_c0_eni154_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_035_q;
    wire [31:0] c_i32_138_q;
    wire [32:0] c_i33_137_q;
    wire [32:0] c_i33_undef34_q;
    wire [2:0] i_arrayidx83_double_add_211_vt_const_2_q;
    wire [63:0] i_arrayidx83_double_add_211_vt_join_q;
    wire [60:0] i_arrayidx83_double_add_211_vt_select_63_b;
    wire [0:0] i_fpga_indvars_iv9_replace_phi_double_add_25_s;
    reg [32:0] i_fpga_indvars_iv9_replace_phi_double_add_25_q;
    wire [33:0] i_fpga_indvars_iv_next10_double_add_218_a;
    wire [33:0] i_fpga_indvars_iv_next10_double_add_218_b;
    logic [33:0] i_fpga_indvars_iv_next10_double_add_218_o;
    wire [33:0] i_fpga_indvars_iv_next10_double_add_218_q;
    wire [63:0] i_idxprom7_double_add_29_vt_join_q;
    wire [31:0] i_idxprom7_double_add_29_vt_select_31_b;
    wire [32:0] i_inc23_double_add_220_a;
    wire [32:0] i_inc23_double_add_220_b;
    logic [32:0] i_inc23_double_add_220_o;
    wire [32:0] i_inc23_double_add_220_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp3194_double_add_214_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp3195_double_add_26_out_dest_data_out_0_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_double_add_24_double_add_23_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_double_add_22_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_double_add_22_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_double_add_22_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_double_add_22_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i1_020_pop15_double_add_28_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i1_020_pop15_double_add_28_out_feedback_stall_out_15;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop14_double_add_24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop14_double_add_24_out_feedback_stall_out_14;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond28_double_add_217_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond28_double_add_217_out_feedback_valid_out_6;
    wire [31:0] i_llvm_fpga_push_i32_i1_020_push15_double_add_221_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i32_i1_020_push15_double_add_221_out_feedback_valid_out_15;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv9_push14_double_add_219_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv9_push14_double_add_219_out_feedback_valid_out_14;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_210_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_210_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_210_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_210_vt_select_63_b;
    wire [0:0] i_notcmp26_double_add_216_q;
    wire [0:0] i_unnamed_double_add_215_q;
    wire [0:0] i_unnamed_double_add_27_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next10_double_add_218_sel_x_b;
    wire [31:0] bgTrunc_i_inc23_double_add_220_sel_x_b;
    wire [64:0] i_arrayidx83_double_add_20_add_x_a;
    wire [64:0] i_arrayidx83_double_add_20_add_x_b;
    logic [64:0] i_arrayidx83_double_add_20_add_x_o;
    wire [64:0] i_arrayidx83_double_add_20_add_x_q;
    wire [60:0] i_arrayidx83_double_add_20_narrow_x_b;
    wire [63:0] i_arrayidx83_double_add_20_shift_join_x_q;
    wire [63:0] i_arrayidx83_double_add_20_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom7_double_add_29_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    wire [0:0] i_exitcond11_double_add_212_cmp_nsign_q;
    reg [0:0] redist0_sync_together51_aunroll_x_in_c0_eni154_1_tpl_1_q;
    reg [0:0] redist1_i_unnamed_double_add_215_q_1_q;


    // i_llvm_fpga_ffwd_dest_i33_unnamed_double_add_24_double_add_23(BLACKBOX,35)@1
    double_add_2_i_llvm_fpga_ffwd_dest_i33_unnamed_4_double_add_20 thei_llvm_fpga_ffwd_dest_i33_unnamed_double_add_24_double_add_23 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i33_unnamed_double_add_24_double_add_23_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_137(CONSTANT,19)
    assign c_i33_137_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next10_double_add_218(ADD,27)@1
    assign i_fpga_indvars_iv_next10_double_add_218_a = {1'b0, i_fpga_indvars_iv9_replace_phi_double_add_25_q};
    assign i_fpga_indvars_iv_next10_double_add_218_b = {1'b0, c_i33_137_q};
    assign i_fpga_indvars_iv_next10_double_add_218_o = $unsigned(i_fpga_indvars_iv_next10_double_add_218_a) + $unsigned(i_fpga_indvars_iv_next10_double_add_218_b);
    assign i_fpga_indvars_iv_next10_double_add_218_q = i_fpga_indvars_iv_next10_double_add_218_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next10_double_add_218_sel_x(BITSELECT,56)@1
    assign bgTrunc_i_fpga_indvars_iv_next10_double_add_218_sel_x_b = i_fpga_indvars_iv_next10_double_add_218_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv9_push14_double_add_219(BLACKBOX,41)@1
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    double_add_2_i_llvm_fpga_push_i33_fpga_indvars_iv9_push14_0 thei_llvm_fpga_push_i33_fpga_indvars_iv9_push14_double_add_219 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next10_double_add_218_sel_x_b),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop14_double_add_24_out_feedback_stall_out_14),
        .in_stall_in(GND_q),
        .in_unnamed_double_add_211(i_unnamed_double_add_215_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i33_fpga_indvars_iv9_push14_double_add_219_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i33_fpga_indvars_iv9_push14_double_add_219_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef34(CONSTANT,20)
    assign c_i33_undef34_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop14_double_add_24(BLACKBOX,38)@1
    // out out_feedback_stall_out_14@20000000
    double_add_2_i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop14_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv9_pop14_double_add_24 (
        .in_data_in(c_i33_undef34_q),
        .in_dir(in_c0_eni154_1_tpl),
        .in_feedback_in_14(i_llvm_fpga_push_i33_fpga_indvars_iv9_push14_double_add_219_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i33_fpga_indvars_iv9_push14_double_add_219_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop14_double_add_24_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop14_double_add_24_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv9_replace_phi_double_add_25(MUX,26)@1
    assign i_fpga_indvars_iv9_replace_phi_double_add_25_s = in_c0_eni154_1_tpl;
    always @(i_fpga_indvars_iv9_replace_phi_double_add_25_s or i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop14_double_add_24_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_double_add_24_double_add_23_out_dest_data_out_1_0)
    begin
        unique case (i_fpga_indvars_iv9_replace_phi_double_add_25_s)
            1'b0 : i_fpga_indvars_iv9_replace_phi_double_add_25_q = i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop14_double_add_24_out_data_out;
            1'b1 : i_fpga_indvars_iv9_replace_phi_double_add_25_q = i_llvm_fpga_ffwd_dest_i33_unnamed_double_add_24_double_add_23_out_dest_data_out_1_0;
            default : i_fpga_indvars_iv9_replace_phi_double_add_25_q = 33'b0;
        endcase
    end

    // i_exitcond11_double_add_212_cmp_nsign(LOGICAL,77)@1
    assign i_exitcond11_double_add_212_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv9_replace_phi_double_add_25_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp3194_double_add_214(BLACKBOX,33)@1
    double_add_2_i_llvm_fpga_ffwd_dest_i1_cmp3194_0 thei_llvm_fpga_ffwd_dest_i1_cmp3194_double_add_214 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp3194_double_add_214_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_double_add_215(LOGICAL,47)@1
    assign i_unnamed_double_add_215_q = i_llvm_fpga_ffwd_dest_i1_cmp3194_double_add_214_out_dest_data_out_0_0 & i_exitcond11_double_add_212_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond28_double_add_217(BLACKBOX,39)@1
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    double_add_2_i_llvm_fpga_push_i1_notexitcond28_0 thei_llvm_fpga_push_i1_notexitcond28_double_add_217 (
        .in_data_in(i_unnamed_double_add_215_q),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going27_double_add_22_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_notexitcond28_double_add_217_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_notexitcond28_double_add_217_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going27_double_add_22(BLACKBOX,36)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    double_add_2_i_llvm_fpga_pipeline_keep_going27_0 thei_llvm_fpga_pipeline_keep_going27_double_add_22 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond28_double_add_217_out_feedback_out_6),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond28_double_add_217_out_feedback_valid_out_6),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going27_double_add_22_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going27_double_add_22_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going27_double_add_22_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going27_double_add_22_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,21)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_double_add_22_exiting_valid_out = i_llvm_fpga_pipeline_keep_going27_double_add_22_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_double_add_22_exiting_stall_out = i_llvm_fpga_pipeline_keep_going27_double_add_22_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,51)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going27_double_add_22_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,68)@1 + 1
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

    // redist0_sync_together51_aunroll_x_in_c0_eni154_1_tpl_1(DELAY,78)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together51_aunroll_x_in_c0_eni154_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together51_aunroll_x_in_c0_eni154_1_tpl_1_q <= $unsigned(in_c0_eni154_1_tpl);
        end
    end

    // i_notcmp26_double_add_216(LOGICAL,46)@2
    assign i_notcmp26_double_add_216_q = redist1_i_unnamed_double_add_215_q_1_q ^ VCC_q;

    // redist1_i_unnamed_double_add_215_q_1(DELAY,79)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_unnamed_double_add_215_q_1_q <= '0;
        end
        else
        begin
            redist1_i_unnamed_double_add_215_q_1_q <= $unsigned(i_unnamed_double_add_215_q);
        end
    end

    // c_i32_035(CONSTANT,17)
    assign c_i32_035_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg2(REG,70)@1 + 1
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

    // valid_fanout_reg4(REG,72)@1 + 1
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

    // c_i32_138(CONSTANT,18)
    assign c_i32_138_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc23_double_add_220(ADD,32)@2
    assign i_inc23_double_add_220_a = {1'b0, i_llvm_fpga_pop_i32_i1_020_pop15_double_add_28_out_data_out};
    assign i_inc23_double_add_220_b = {1'b0, c_i32_138_q};
    assign i_inc23_double_add_220_o = $unsigned(i_inc23_double_add_220_a) + $unsigned(i_inc23_double_add_220_b);
    assign i_inc23_double_add_220_q = i_inc23_double_add_220_o[32:0];

    // bgTrunc_i_inc23_double_add_220_sel_x(BITSELECT,57)@2
    assign bgTrunc_i_inc23_double_add_220_sel_x_b = i_inc23_double_add_220_q[31:0];

    // i_llvm_fpga_push_i32_i1_020_push15_double_add_221(BLACKBOX,40)@2
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    double_add_2_i_llvm_fpga_push_i32_i1_020_push15_0 thei_llvm_fpga_push_i32_i1_020_push15_double_add_221 (
        .in_data_in(bgTrunc_i_inc23_double_add_220_sel_x_b),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i32_i1_020_pop15_double_add_28_out_feedback_stall_out_15),
        .in_stall_in(GND_q),
        .in_unnamed_double_add_211(redist1_i_unnamed_double_add_215_q_1_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i32_i1_020_push15_double_add_221_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i32_i1_020_push15_double_add_221_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i1_020_pop15_double_add_28(BLACKBOX,37)@2
    // out out_feedback_stall_out_15@20000000
    double_add_2_i_llvm_fpga_pop_i32_i1_020_pop15_0 thei_llvm_fpga_pop_i32_i1_020_pop15_double_add_28 (
        .in_data_in(c_i32_035_q),
        .in_dir(redist0_sync_together51_aunroll_x_in_c0_eni154_1_tpl_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_i32_i1_020_push15_double_add_221_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i32_i1_020_push15_double_add_221_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_i1_020_pop15_double_add_28_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i32_i1_020_pop15_double_add_28_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom7_double_add_29_sel_x(BITSELECT,65)@2
    assign i_idxprom7_double_add_29_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i1_020_pop15_double_add_28_out_data_out[31:0]};

    // i_idxprom7_double_add_29_vt_select_31(BITSELECT,31)@2
    assign i_idxprom7_double_add_29_vt_select_31_b = i_idxprom7_double_add_29_sel_x_b[31:0];

    // i_idxprom7_double_add_29_vt_join(BITJOIN,30)@2
    assign i_idxprom7_double_add_29_vt_join_q = {c_i32_035_q, i_idxprom7_double_add_29_vt_select_31_b};

    // i_arrayidx83_double_add_20_narrow_x(BITSELECT,61)@2
    assign i_arrayidx83_double_add_20_narrow_x_b = i_idxprom7_double_add_29_vt_join_q[60:0];

    // i_arrayidx83_double_add_20_shift_join_x(BITJOIN,62)@2
    assign i_arrayidx83_double_add_20_shift_join_x_q = {i_arrayidx83_double_add_20_narrow_x_b, i_arrayidx83_double_add_211_vt_const_2_q};

    // valid_fanout_reg3(REG,71)@1 + 1
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

    // i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_210(BLACKBOX,42)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    double_add_2_i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_210 (
        .in_buffer_in(in_arr),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_210_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_210_vt_select_63(BITSELECT,45)@2
    assign i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_210_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_210_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_210_vt_const_9(CONSTANT,43)
    assign i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_210_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_210_vt_join(BITJOIN,44)@2
    assign i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_210_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_210_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_210_vt_const_9_q};

    // i_arrayidx83_double_add_20_add_x(ADD,59)@2
    assign i_arrayidx83_double_add_20_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_double_add_210_vt_join_q};
    assign i_arrayidx83_double_add_20_add_x_b = {1'b0, i_arrayidx83_double_add_20_shift_join_x_q};
    assign i_arrayidx83_double_add_20_add_x_o = $unsigned(i_arrayidx83_double_add_20_add_x_a) + $unsigned(i_arrayidx83_double_add_20_add_x_b);
    assign i_arrayidx83_double_add_20_add_x_q = i_arrayidx83_double_add_20_add_x_o[64:0];

    // i_arrayidx83_double_add_20_dupName_0_trunc_sel_x(BITSELECT,64)@2
    assign i_arrayidx83_double_add_20_dupName_0_trunc_sel_x_b = i_arrayidx83_double_add_20_add_x_q[63:0];

    // i_arrayidx83_double_add_211_vt_select_63(BITSELECT,24)@2
    assign i_arrayidx83_double_add_211_vt_select_63_b = i_arrayidx83_double_add_20_dupName_0_trunc_sel_x_b[63:3];

    // i_arrayidx83_double_add_211_vt_const_2(CONSTANT,22)
    assign i_arrayidx83_double_add_211_vt_const_2_q = $unsigned(3'b000);

    // i_arrayidx83_double_add_211_vt_join(BITJOIN,23)@2
    assign i_arrayidx83_double_add_211_vt_join_q = {i_arrayidx83_double_add_211_vt_select_63_b, i_arrayidx83_double_add_211_vt_const_2_q};

    // valid_fanout_reg1(REG,69)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i1_cmp3195_double_add_26(BLACKBOX,34)@2
    double_add_2_i_llvm_fpga_ffwd_dest_i1_cmp3195_0 thei_llvm_fpga_ffwd_dest_i1_cmp3195_double_add_26 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp3195_double_add_26_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_double_add_27(LOGICAL,48)@2
    assign i_unnamed_double_add_27_q = i_llvm_fpga_ffwd_dest_i1_cmp3195_double_add_26_out_dest_data_out_0_0 ^ VCC_q;

    // sync_out_aunroll_x(GPOUT,66)@2
    assign out_c0_exi5_0_tpl = GND_q;
    assign out_c0_exi5_1_tpl = i_unnamed_double_add_27_q;
    assign out_c0_exi5_2_tpl = i_arrayidx83_double_add_211_vt_join_q;
    assign out_c0_exi5_3_tpl = redist1_i_unnamed_double_add_215_q_1_q;
    assign out_c0_exi5_4_tpl = i_notcmp26_double_add_216_q;
    assign out_c0_exi5_5_tpl = redist0_sync_together51_aunroll_x_in_c0_eni154_1_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_double_add_23 = GND_q;

endmodule
