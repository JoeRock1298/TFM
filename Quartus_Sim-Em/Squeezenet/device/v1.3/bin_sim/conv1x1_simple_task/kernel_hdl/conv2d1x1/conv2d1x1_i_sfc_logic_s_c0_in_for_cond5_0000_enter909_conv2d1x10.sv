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

// SystemVerilog created from conv2d1x1_i_sfc_logic_s_c0_in_for_cond5_0000_enter909_conv2d1x10
// SystemVerilog created on Wed May 17 13:49:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_logic_s_c0_in_for_cond5_0000_enter909_conv2d1x10 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_conv2d1x12_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_conv2d1x12_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    output wire [0:0] out_c0_exi18_0_tpl,
    output wire [0:0] out_c0_exi18_1_tpl,
    output wire [0:0] out_c0_exi18_2_tpl,
    output wire [31:0] out_c0_exi18_3_tpl,
    output wire [63:0] out_c0_exi18_4_tpl,
    output wire [63:0] out_c0_exi18_5_tpl,
    output wire [31:0] out_c0_exi18_6_tpl,
    output wire [0:0] out_c0_exi18_7_tpl,
    output wire [0:0] out_c0_exi18_8_tpl,
    output wire [31:0] out_c0_exi18_9_tpl,
    output wire [0:0] out_c0_exi18_10_tpl,
    output wire [63:0] out_c0_exi18_11_tpl,
    output wire [63:0] out_c0_exi18_12_tpl,
    output wire [31:0] out_c0_exi18_13_tpl,
    output wire [0:0] out_c0_exi18_14_tpl,
    output wire [0:0] out_c0_exi18_15_tpl,
    output wire [32:0] out_c0_exi18_16_tpl,
    output wire [31:0] out_c0_exi18_17_tpl,
    output wire [0:0] out_c0_exi18_18_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d1x18,
    input wire [0:0] in_c0_eni9_0_tpl,
    input wire [32:0] in_c0_eni9_1_tpl,
    input wire [0:0] in_c0_eni9_2_tpl,
    input wire [63:0] in_c0_eni9_3_tpl,
    input wire [63:0] in_c0_eni9_4_tpl,
    input wire [31:0] in_c0_eni9_5_tpl,
    input wire [0:0] in_c0_eni9_6_tpl,
    input wire [0:0] in_c0_eni9_7_tpl,
    input wire [31:0] in_c0_eni9_8_tpl,
    input wire [0:0] in_c0_eni9_9_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_054_q;
    wire [31:0] c_i32_155_q;
    wire [32:0] c_i33_153_q;
    wire [33:0] i_fpga_indvars_iv_next46_conv2d1x110_a;
    wire [33:0] i_fpga_indvars_iv_next46_conv2d1x110_b;
    logic [33:0] i_fpga_indvars_iv_next46_conv2d1x110_o;
    wire [33:0] i_fpga_indvars_iv_next46_conv2d1x110_q;
    wire [32:0] i_inc55_conv2d1x113_a;
    wire [32:0] i_inc55_conv2d1x113_b;
    logic [32:0] i_inc55_conv2d1x113_o;
    wire [32:0] i_inc55_conv2d1x113_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp5210_conv2d1x16_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_conv2d1x12_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_conv2d1x12_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_conv2d1x12_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_conv2d1x12_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_f32_lm42_pop18_conv2d1x125_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_lm42_pop18_conv2d1x125_out_feedback_stall_out_18;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3044_pop19_conv2d1x127_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3044_pop19_conv2d1x127_out_feedback_stall_out_19;
    wire [0:0] i_llvm_fpga_pop_i1_pop16_conv2d1x121_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop16_conv2d1x121_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_pop_i1_pop17_conv2d1x123_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop17_conv2d1x123_out_feedback_stall_out_17;
    wire [31:0] i_llvm_fpga_pop_i32_ij_049_pop12_conv2d1x112_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_ij_049_pop12_conv2d1x112_out_feedback_stall_out_12;
    wire [31:0] i_llvm_fpga_pop_i32_mul39_pop15_conv2d1x119_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul39_pop15_conv2d1x119_out_feedback_stall_out_15;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv45_pop11_conv2d1x13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv45_pop11_conv2d1x13_out_feedback_stall_out_11;
    wire [63:0] i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi35_pop13_conv2d1x115_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi35_pop13_conv2d1x115_out_feedback_stall_out_13;
    wire [63:0] i_llvm_fpga_pop_p1024v4f32_filter_weight_addr_053_replace_phi37_pop14_conv2d1x117_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024v4f32_filter_weight_addr_053_replace_phi37_pop14_conv2d1x117_out_feedback_stall_out_14;
    wire [31:0] i_llvm_fpga_push_f32_lm42_push18_conv2d1x126_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_f32_lm42_push18_conv2d1x126_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3044_push19_conv2d1x128_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3044_push19_conv2d1x128_out_feedback_valid_out_19;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond28_conv2d1x19_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond28_conv2d1x19_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_push16_conv2d1x122_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i1_push16_conv2d1x122_out_feedback_valid_out_16;
    wire [0:0] i_llvm_fpga_push_i1_push17_conv2d1x124_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i1_push17_conv2d1x124_out_feedback_valid_out_17;
    wire [31:0] i_llvm_fpga_push_i32_ij_049_push12_conv2d1x114_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i32_ij_049_push12_conv2d1x114_out_feedback_valid_out_12;
    wire [31:0] i_llvm_fpga_push_i32_mul39_push15_conv2d1x120_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i32_mul39_push15_conv2d1x120_out_feedback_valid_out_15;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv45_push11_conv2d1x111_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv45_push11_conv2d1x111_out_feedback_valid_out_11;
    wire [63:0] i_llvm_fpga_push_p1024f32_output_im_addr_054_replace_phi35_push13_conv2d1x116_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_p1024f32_output_im_addr_054_replace_phi35_push13_conv2d1x116_out_feedback_valid_out_13;
    wire [63:0] i_llvm_fpga_push_p1024v4f32_filter_weight_addr_053_replace_phi37_push14_conv2d1x118_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_p1024v4f32_filter_weight_addr_053_replace_phi37_push14_conv2d1x118_out_feedback_valid_out_14;
    wire [0:0] i_notcmp25_conv2d1x18_q;
    wire [0:0] i_unnamed_conv2d1x17_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next46_conv2d1x110_sel_x_b;
    wire [31:0] bgTrunc_i_inc55_conv2d1x113_sel_x_b;
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
    wire [0:0] i_exitcond47_conv2d1x14_cmp_nsign_q;
    reg [32:0] redist0_sync_together81_aunroll_x_in_c0_eni9_1_tpl_1_q;
    reg [0:0] redist1_sync_together81_aunroll_x_in_c0_eni9_2_tpl_1_q;
    reg [63:0] redist2_sync_together81_aunroll_x_in_c0_eni9_3_tpl_1_q;
    reg [63:0] redist3_sync_together81_aunroll_x_in_c0_eni9_4_tpl_1_q;
    reg [31:0] redist4_sync_together81_aunroll_x_in_c0_eni9_5_tpl_1_q;
    reg [0:0] redist5_sync_together81_aunroll_x_in_c0_eni9_6_tpl_1_q;
    reg [0:0] redist6_sync_together81_aunroll_x_in_c0_eni9_7_tpl_1_q;
    reg [31:0] redist7_sync_together81_aunroll_x_in_c0_eni9_8_tpl_1_q;
    reg [0:0] redist8_sync_together81_aunroll_x_in_c0_eni9_9_tpl_1_q;
    reg [0:0] redist9_i_unnamed_conv2d1x17_q_1_q;


    // c_i33_153(CONSTANT,30)
    assign c_i33_153_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next46_conv2d1x110(ADD,33)@1
    assign i_fpga_indvars_iv_next46_conv2d1x110_a = {1'b0, i_llvm_fpga_pop_i33_fpga_indvars_iv45_pop11_conv2d1x13_out_data_out};
    assign i_fpga_indvars_iv_next46_conv2d1x110_b = {1'b0, c_i33_153_q};
    assign i_fpga_indvars_iv_next46_conv2d1x110_o = $unsigned(i_fpga_indvars_iv_next46_conv2d1x110_a) + $unsigned(i_fpga_indvars_iv_next46_conv2d1x110_b);
    assign i_fpga_indvars_iv_next46_conv2d1x110_q = i_fpga_indvars_iv_next46_conv2d1x110_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next46_conv2d1x110_sel_x(BITSELECT,63)@1
    assign bgTrunc_i_fpga_indvars_iv_next46_conv2d1x110_sel_x_b = i_fpga_indvars_iv_next46_conv2d1x110_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv45_push11_conv2d1x111(BLACKBOX,53)@1
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    conv2d1x1_i_llvm_fpga_push_i33_fpga_indvars_iv45_push11_0 thei_llvm_fpga_push_i33_fpga_indvars_iv45_push11_conv2d1x111 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next46_conv2d1x110_sel_x_b),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i33_fpga_indvars_iv45_pop11_conv2d1x13_out_feedback_stall_out_11),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d1x118(i_unnamed_conv2d1x17_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i33_fpga_indvars_iv45_push11_conv2d1x111_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i33_fpga_indvars_iv45_push11_conv2d1x111_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i33_fpga_indvars_iv45_pop11_conv2d1x13(BLACKBOX,43)@1
    // out out_feedback_stall_out_11@20000000
    conv2d1x1_i_llvm_fpga_pop_i33_fpga_indvars_iv45_pop11_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv45_pop11_conv2d1x13 (
        .in_data_in(in_c0_eni9_1_tpl),
        .in_dir(in_c0_eni9_2_tpl),
        .in_feedback_in_11(i_llvm_fpga_push_i33_fpga_indvars_iv45_push11_conv2d1x111_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i33_fpga_indvars_iv45_push11_conv2d1x111_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv45_pop11_conv2d1x13_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i33_fpga_indvars_iv45_pop11_conv2d1x13_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond47_conv2d1x14_cmp_nsign(LOGICAL,88)@1
    assign i_exitcond47_conv2d1x14_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i33_fpga_indvars_iv45_pop11_conv2d1x13_out_data_out[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp5210_conv2d1x16(BLACKBOX,35)@1
    conv2d1x1_i_llvm_fpga_ffwd_dest_i1_cmp5210_0 thei_llvm_fpga_ffwd_dest_i1_cmp5210_conv2d1x16 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp5210_conv2d1x16_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d1x17(LOGICAL,57)@1
    assign i_unnamed_conv2d1x17_q = i_llvm_fpga_ffwd_dest_i1_cmp5210_conv2d1x16_out_dest_data_out_0_0 & i_exitcond47_conv2d1x14_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond28_conv2d1x19(BLACKBOX,48)@1
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    conv2d1x1_i_llvm_fpga_push_i1_notexitcond28_0 thei_llvm_fpga_push_i1_notexitcond28_conv2d1x19 (
        .in_data_in(i_unnamed_conv2d1x17_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going27_conv2d1x12_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_notexitcond28_conv2d1x19_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_notexitcond28_conv2d1x19_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going27_conv2d1x12(BLACKBOX,36)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    conv2d1x1_i_llvm_fpga_pipeline_keep_going27_0 thei_llvm_fpga_pipeline_keep_going27_conv2d1x12 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond28_conv2d1x19_out_feedback_out_4),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond28_conv2d1x19_out_feedback_valid_out_4),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going27_conv2d1x12_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going27_conv2d1x12_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going27_conv2d1x12_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going27_conv2d1x12_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,31)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_conv2d1x12_exiting_valid_out = i_llvm_fpga_pipeline_keep_going27_conv2d1x12_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_conv2d1x12_exiting_stall_out = i_llvm_fpga_pipeline_keep_going27_conv2d1x12_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,60)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going27_conv2d1x12_out_pipeline_valid_out;

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

    // redist8_sync_together81_aunroll_x_in_c0_eni9_9_tpl_1(DELAY,97)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together81_aunroll_x_in_c0_eni9_9_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together81_aunroll_x_in_c0_eni9_9_tpl_1_q <= $unsigned(in_c0_eni9_9_tpl);
        end
    end

    // redist7_sync_together81_aunroll_x_in_c0_eni9_8_tpl_1(DELAY,96)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together81_aunroll_x_in_c0_eni9_8_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together81_aunroll_x_in_c0_eni9_8_tpl_1_q <= $unsigned(in_c0_eni9_8_tpl);
        end
    end

    // redist0_sync_together81_aunroll_x_in_c0_eni9_1_tpl_1(DELAY,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together81_aunroll_x_in_c0_eni9_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together81_aunroll_x_in_c0_eni9_1_tpl_1_q <= $unsigned(in_c0_eni9_1_tpl);
        end
    end

    // redist6_sync_together81_aunroll_x_in_c0_eni9_7_tpl_1(DELAY,95)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together81_aunroll_x_in_c0_eni9_7_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together81_aunroll_x_in_c0_eni9_7_tpl_1_q <= $unsigned(in_c0_eni9_7_tpl);
        end
    end

    // redist5_sync_together81_aunroll_x_in_c0_eni9_6_tpl_1(DELAY,94)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together81_aunroll_x_in_c0_eni9_6_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together81_aunroll_x_in_c0_eni9_6_tpl_1_q <= $unsigned(in_c0_eni9_6_tpl);
        end
    end

    // redist4_sync_together81_aunroll_x_in_c0_eni9_5_tpl_1(DELAY,93)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together81_aunroll_x_in_c0_eni9_5_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together81_aunroll_x_in_c0_eni9_5_tpl_1_q <= $unsigned(in_c0_eni9_5_tpl);
        end
    end

    // redist3_sync_together81_aunroll_x_in_c0_eni9_4_tpl_1(DELAY,92)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together81_aunroll_x_in_c0_eni9_4_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together81_aunroll_x_in_c0_eni9_4_tpl_1_q <= $unsigned(in_c0_eni9_4_tpl);
        end
    end

    // redist2_sync_together81_aunroll_x_in_c0_eni9_3_tpl_1(DELAY,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together81_aunroll_x_in_c0_eni9_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together81_aunroll_x_in_c0_eni9_3_tpl_1_q <= $unsigned(in_c0_eni9_3_tpl);
        end
    end

    // valid_fanout_reg15(REG,83)@1 + 1
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

    // valid_fanout_reg16(REG,84)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp3044_push19_conv2d1x128(BLACKBOX,47)@2
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    conv2d1x1_i_llvm_fpga_push_i1_notcmp3044_push19_0 thei_llvm_fpga_push_i1_notcmp3044_push19_conv2d1x128 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp3044_pop19_conv2d1x127_out_data_out),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i1_notcmp3044_pop19_conv2d1x127_out_feedback_stall_out_19),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d1x118(redist9_i_unnamed_conv2d1x17_q_1_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i1_notcmp3044_push19_conv2d1x128_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i1_notcmp3044_push19_conv2d1x128_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together81_aunroll_x_in_c0_eni9_2_tpl_1(DELAY,90)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together81_aunroll_x_in_c0_eni9_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together81_aunroll_x_in_c0_eni9_2_tpl_1_q <= $unsigned(in_c0_eni9_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp3044_pop19_conv2d1x127(BLACKBOX,38)@2
    // out out_feedback_stall_out_19@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_notcmp3044_pop19_0 thei_llvm_fpga_pop_i1_notcmp3044_pop19_conv2d1x127 (
        .in_data_in(redist8_sync_together81_aunroll_x_in_c0_eni9_9_tpl_1_q),
        .in_dir(redist1_sync_together81_aunroll_x_in_c0_eni9_2_tpl_1_q),
        .in_feedback_in_19(i_llvm_fpga_push_i1_notcmp3044_push19_conv2d1x128_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i1_notcmp3044_push19_conv2d1x128_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp3044_pop19_conv2d1x127_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i1_notcmp3044_pop19_conv2d1x127_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg13(REG,81)@1 + 1
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

    // valid_fanout_reg14(REG,82)@1 + 1
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

    // i_llvm_fpga_push_f32_lm42_push18_conv2d1x126(BLACKBOX,46)@2
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    conv2d1x1_i_llvm_fpga_push_f32_lm42_push18_0 thei_llvm_fpga_push_f32_lm42_push18_conv2d1x126 (
        .in_data_in(i_llvm_fpga_pop_f32_lm42_pop18_conv2d1x125_out_data_out),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_f32_lm42_pop18_conv2d1x125_out_feedback_stall_out_18),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d1x118(redist9_i_unnamed_conv2d1x17_q_1_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_f32_lm42_push18_conv2d1x126_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_f32_lm42_push18_conv2d1x126_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_lm42_pop18_conv2d1x125(BLACKBOX,37)@2
    // out out_feedback_stall_out_18@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_lm42_pop18_0 thei_llvm_fpga_pop_f32_lm42_pop18_conv2d1x125 (
        .in_data_in(redist7_sync_together81_aunroll_x_in_c0_eni9_8_tpl_1_q),
        .in_dir(redist1_sync_together81_aunroll_x_in_c0_eni9_2_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_f32_lm42_push18_conv2d1x126_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_f32_lm42_push18_conv2d1x126_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_f32_lm42_pop18_conv2d1x125_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_f32_lm42_pop18_conv2d1x125_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg11(REG,79)@1 + 1
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

    // valid_fanout_reg12(REG,80)@1 + 1
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

    // i_llvm_fpga_push_i1_push17_conv2d1x124(BLACKBOX,50)@2
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    conv2d1x1_i_llvm_fpga_push_i1_push17_0 thei_llvm_fpga_push_i1_push17_conv2d1x124 (
        .in_data_in(i_llvm_fpga_pop_i1_pop17_conv2d1x123_out_data_out),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i1_pop17_conv2d1x123_out_feedback_stall_out_17),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d1x118(redist9_i_unnamed_conv2d1x17_q_1_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i1_push17_conv2d1x124_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i1_push17_conv2d1x124_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_pop17_conv2d1x123(BLACKBOX,40)@2
    // out out_feedback_stall_out_17@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_pop17_0 thei_llvm_fpga_pop_i1_pop17_conv2d1x123 (
        .in_data_in(redist6_sync_together81_aunroll_x_in_c0_eni9_7_tpl_1_q),
        .in_dir(redist1_sync_together81_aunroll_x_in_c0_eni9_2_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i1_push17_conv2d1x124_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i1_push17_conv2d1x124_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop17_conv2d1x123_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i1_pop17_conv2d1x123_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg9(REG,77)@1 + 1
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

    // valid_fanout_reg10(REG,78)@1 + 1
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

    // i_llvm_fpga_push_i1_push16_conv2d1x122(BLACKBOX,49)@2
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    conv2d1x1_i_llvm_fpga_push_i1_push16_0 thei_llvm_fpga_push_i1_push16_conv2d1x122 (
        .in_data_in(i_llvm_fpga_pop_i1_pop16_conv2d1x121_out_data_out),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i1_pop16_conv2d1x121_out_feedback_stall_out_16),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d1x118(redist9_i_unnamed_conv2d1x17_q_1_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i1_push16_conv2d1x122_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i1_push16_conv2d1x122_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_pop16_conv2d1x121(BLACKBOX,39)@2
    // out out_feedback_stall_out_16@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_pop16_0 thei_llvm_fpga_pop_i1_pop16_conv2d1x121 (
        .in_data_in(redist5_sync_together81_aunroll_x_in_c0_eni9_6_tpl_1_q),
        .in_dir(redist1_sync_together81_aunroll_x_in_c0_eni9_2_tpl_1_q),
        .in_feedback_in_16(i_llvm_fpga_push_i1_push16_conv2d1x122_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i1_push16_conv2d1x122_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop16_conv2d1x121_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i1_pop16_conv2d1x121_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,75)@1 + 1
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

    // valid_fanout_reg8(REG,76)@1 + 1
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

    // i_llvm_fpga_push_i32_mul39_push15_conv2d1x120(BLACKBOX,52)@2
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    conv2d1x1_i_llvm_fpga_push_i32_mul39_push15_0 thei_llvm_fpga_push_i32_mul39_push15_conv2d1x120 (
        .in_data_in(i_llvm_fpga_pop_i32_mul39_pop15_conv2d1x119_out_data_out),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i32_mul39_pop15_conv2d1x119_out_feedback_stall_out_15),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d1x118(redist9_i_unnamed_conv2d1x17_q_1_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i32_mul39_push15_conv2d1x120_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i32_mul39_push15_conv2d1x120_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_mul39_pop15_conv2d1x119(BLACKBOX,42)@2
    // out out_feedback_stall_out_15@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_mul39_pop15_0 thei_llvm_fpga_pop_i32_mul39_pop15_conv2d1x119 (
        .in_data_in(redist4_sync_together81_aunroll_x_in_c0_eni9_5_tpl_1_q),
        .in_dir(redist1_sync_together81_aunroll_x_in_c0_eni9_2_tpl_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_i32_mul39_push15_conv2d1x120_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i32_mul39_push15_conv2d1x120_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul39_pop15_conv2d1x119_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i32_mul39_pop15_conv2d1x119_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,73)@1 + 1
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

    // valid_fanout_reg6(REG,74)@1 + 1
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

    // i_llvm_fpga_push_p1024v4f32_filter_weight_addr_053_replace_phi37_push14_conv2d1x118(BLACKBOX,55)@2
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    conv2d1x1_i_llvm_fpga_push_p1024v4f32_fi0000place_phi37_push14_0 thei_llvm_fpga_push_p1024v4f32_filter_weight_addr_053_replace_phi37_push14_conv2d1x118 (
        .in_data_in(i_llvm_fpga_pop_p1024v4f32_filter_weight_addr_053_replace_phi37_pop14_conv2d1x117_out_data_out),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_p1024v4f32_filter_weight_addr_053_replace_phi37_pop14_conv2d1x117_out_feedback_stall_out_14),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d1x118(redist9_i_unnamed_conv2d1x17_q_1_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_p1024v4f32_filter_weight_addr_053_replace_phi37_push14_conv2d1x118_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_p1024v4f32_filter_weight_addr_053_replace_phi37_push14_conv2d1x118_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p1024v4f32_filter_weight_addr_053_replace_phi37_pop14_conv2d1x117(BLACKBOX,45)@2
    // out out_feedback_stall_out_14@20000000
    conv2d1x1_i_llvm_fpga_pop_p1024v4f32_fil0000eplace_phi37_pop14_0 thei_llvm_fpga_pop_p1024v4f32_filter_weight_addr_053_replace_phi37_pop14_conv2d1x117 (
        .in_data_in(redist3_sync_together81_aunroll_x_in_c0_eni9_4_tpl_1_q),
        .in_dir(redist1_sync_together81_aunroll_x_in_c0_eni9_2_tpl_1_q),
        .in_feedback_in_14(i_llvm_fpga_push_p1024v4f32_filter_weight_addr_053_replace_phi37_push14_conv2d1x118_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_p1024v4f32_filter_weight_addr_053_replace_phi37_push14_conv2d1x118_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_p1024v4f32_filter_weight_addr_053_replace_phi37_pop14_conv2d1x117_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_p1024v4f32_filter_weight_addr_053_replace_phi37_pop14_conv2d1x117_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

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

    // i_llvm_fpga_push_p1024f32_output_im_addr_054_replace_phi35_push13_conv2d1x116(BLACKBOX,54)@2
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    conv2d1x1_i_llvm_fpga_push_p1024f32_outp0000place_phi35_push13_0 thei_llvm_fpga_push_p1024f32_output_im_addr_054_replace_phi35_push13_conv2d1x116 (
        .in_data_in(i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi35_pop13_conv2d1x115_out_data_out),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi35_pop13_conv2d1x115_out_feedback_stall_out_13),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d1x118(redist9_i_unnamed_conv2d1x17_q_1_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_p1024f32_output_im_addr_054_replace_phi35_push13_conv2d1x116_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_p1024f32_output_im_addr_054_replace_phi35_push13_conv2d1x116_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi35_pop13_conv2d1x115(BLACKBOX,44)@2
    // out out_feedback_stall_out_13@20000000
    conv2d1x1_i_llvm_fpga_pop_p1024f32_outpu0000eplace_phi35_pop13_0 thei_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi35_pop13_conv2d1x115 (
        .in_data_in(redist2_sync_together81_aunroll_x_in_c0_eni9_3_tpl_1_q),
        .in_dir(redist1_sync_together81_aunroll_x_in_c0_eni9_2_tpl_1_q),
        .in_feedback_in_13(i_llvm_fpga_push_p1024f32_output_im_addr_054_replace_phi35_push13_conv2d1x116_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_p1024f32_output_im_addr_054_replace_phi35_push13_conv2d1x116_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi35_pop13_conv2d1x115_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi35_pop13_conv2d1x115_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

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

    // c_i32_155(CONSTANT,29)
    assign c_i32_155_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc55_conv2d1x113(ADD,34)@2
    assign i_inc55_conv2d1x113_a = {1'b0, i_llvm_fpga_pop_i32_ij_049_pop12_conv2d1x112_out_data_out};
    assign i_inc55_conv2d1x113_b = {1'b0, c_i32_155_q};
    assign i_inc55_conv2d1x113_o = $unsigned(i_inc55_conv2d1x113_a) + $unsigned(i_inc55_conv2d1x113_b);
    assign i_inc55_conv2d1x113_q = i_inc55_conv2d1x113_o[32:0];

    // bgTrunc_i_inc55_conv2d1x113_sel_x(BITSELECT,64)@2
    assign bgTrunc_i_inc55_conv2d1x113_sel_x_b = i_inc55_conv2d1x113_q[31:0];

    // i_llvm_fpga_push_i32_ij_049_push12_conv2d1x114(BLACKBOX,51)@2
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    conv2d1x1_i_llvm_fpga_push_i32_ij_049_push12_0 thei_llvm_fpga_push_i32_ij_049_push12_conv2d1x114 (
        .in_data_in(bgTrunc_i_inc55_conv2d1x113_sel_x_b),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i32_ij_049_pop12_conv2d1x112_out_feedback_stall_out_12),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d1x118(redist9_i_unnamed_conv2d1x17_q_1_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i32_ij_049_push12_conv2d1x114_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i32_ij_049_push12_conv2d1x114_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_054(CONSTANT,28)
    assign c_i32_054_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_ij_049_pop12_conv2d1x112(BLACKBOX,41)@2
    // out out_feedback_stall_out_12@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_ij_049_pop12_0 thei_llvm_fpga_pop_i32_ij_049_pop12_conv2d1x112 (
        .in_data_in(c_i32_054_q),
        .in_dir(redist1_sync_together81_aunroll_x_in_c0_eni9_2_tpl_1_q),
        .in_feedback_in_12(i_llvm_fpga_push_i32_ij_049_push12_conv2d1x114_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i32_ij_049_push12_conv2d1x114_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_ij_049_pop12_conv2d1x112_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i32_ij_049_pop12_conv2d1x112_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp25_conv2d1x18(LOGICAL,56)@2
    assign i_notcmp25_conv2d1x18_q = redist9_i_unnamed_conv2d1x17_q_1_q ^ VCC_q;

    // redist9_i_unnamed_conv2d1x17_q_1(DELAY,98)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_unnamed_conv2d1x17_q_1_q <= '0;
        end
        else
        begin
            redist9_i_unnamed_conv2d1x17_q_1_q <= $unsigned(i_unnamed_conv2d1x17_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,66)@2
    assign out_c0_exi18_0_tpl = GND_q;
    assign out_c0_exi18_1_tpl = redist9_i_unnamed_conv2d1x17_q_1_q;
    assign out_c0_exi18_2_tpl = i_notcmp25_conv2d1x18_q;
    assign out_c0_exi18_3_tpl = i_llvm_fpga_pop_i32_ij_049_pop12_conv2d1x112_out_data_out;
    assign out_c0_exi18_4_tpl = i_llvm_fpga_pop_p1024f32_output_im_addr_054_replace_phi35_pop13_conv2d1x115_out_data_out;
    assign out_c0_exi18_5_tpl = i_llvm_fpga_pop_p1024v4f32_filter_weight_addr_053_replace_phi37_pop14_conv2d1x117_out_data_out;
    assign out_c0_exi18_6_tpl = i_llvm_fpga_pop_i32_mul39_pop15_conv2d1x119_out_data_out;
    assign out_c0_exi18_7_tpl = i_llvm_fpga_pop_i1_pop16_conv2d1x121_out_data_out;
    assign out_c0_exi18_8_tpl = i_llvm_fpga_pop_i1_pop17_conv2d1x123_out_data_out;
    assign out_c0_exi18_9_tpl = i_llvm_fpga_pop_f32_lm42_pop18_conv2d1x125_out_data_out;
    assign out_c0_exi18_10_tpl = i_llvm_fpga_pop_i1_notcmp3044_pop19_conv2d1x127_out_data_out;
    assign out_c0_exi18_11_tpl = redist2_sync_together81_aunroll_x_in_c0_eni9_3_tpl_1_q;
    assign out_c0_exi18_12_tpl = redist3_sync_together81_aunroll_x_in_c0_eni9_4_tpl_1_q;
    assign out_c0_exi18_13_tpl = redist4_sync_together81_aunroll_x_in_c0_eni9_5_tpl_1_q;
    assign out_c0_exi18_14_tpl = redist5_sync_together81_aunroll_x_in_c0_eni9_6_tpl_1_q;
    assign out_c0_exi18_15_tpl = redist6_sync_together81_aunroll_x_in_c0_eni9_7_tpl_1_q;
    assign out_c0_exi18_16_tpl = redist0_sync_together81_aunroll_x_in_c0_eni9_1_tpl_1_q;
    assign out_c0_exi18_17_tpl = redist7_sync_together81_aunroll_x_in_c0_eni9_8_tpl_1_q;
    assign out_c0_exi18_18_tpl = redist8_sync_together81_aunroll_x_in_c0_eni9_9_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d1x18 = GND_q;

endmodule
