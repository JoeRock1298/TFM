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

// SystemVerilog created from maxpool2d_i_sfc_logic_s_c0_in_for_cond9_0000nter18023_maxpool2d0
// SystemVerilog created on Sat Jun  3 13:01:56 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_i_sfc_logic_s_c0_in_for_cond9_0000nter18023_maxpool2d0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going20_maxpool2d2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going20_maxpool2d2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_1_0,
    input wire [32:0] in_intel_reserved_ffwd_2_0,
    output wire [0:0] out_c0_exi18_0_tpl,
    output wire [0:0] out_c0_exi18_1_tpl,
    output wire [0:0] out_c0_exi18_2_tpl,
    output wire [31:0] out_c0_exi18_3_tpl,
    output wire [63:0] out_c0_exi18_4_tpl,
    output wire [63:0] out_c0_exi18_5_tpl,
    output wire [0:0] out_c0_exi18_6_tpl,
    output wire [31:0] out_c0_exi18_7_tpl,
    output wire [31:0] out_c0_exi18_8_tpl,
    output wire [0:0] out_c0_exi18_9_tpl,
    output wire [63:0] out_c0_exi18_10_tpl,
    output wire [63:0] out_c0_exi18_11_tpl,
    output wire [0:0] out_c0_exi18_12_tpl,
    output wire [31:0] out_c0_exi18_13_tpl,
    output wire [31:0] out_c0_exi18_14_tpl,
    output wire [0:0] out_c0_exi18_15_tpl,
    output wire [63:0] out_c0_exi18_16_tpl,
    output wire [63:0] out_c0_exi18_17_tpl,
    output wire [0:0] out_c0_exi18_18_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_maxpool2d7,
    input wire [0:0] in_c0_eni10_0_tpl,
    input wire [0:0] in_c0_eni10_1_tpl,
    input wire [63:0] in_c0_eni10_2_tpl,
    input wire [63:0] in_c0_eni10_3_tpl,
    input wire [0:0] in_c0_eni10_4_tpl,
    input wire [31:0] in_c0_eni10_5_tpl,
    input wire [31:0] in_c0_eni10_6_tpl,
    input wire [0:0] in_c0_eni10_7_tpl,
    input wire [63:0] in_c0_eni10_8_tpl,
    input wire [63:0] in_c0_eni10_9_tpl,
    input wire [0:0] in_c0_eni10_10_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_054_q;
    wire [31:0] c_i32_155_q;
    wire [32:0] c_i33_153_q;
    wire [32:0] c_i33_undef51_q;
    wire [0:0] i_fpga_indvars_iv29_replace_phi_maxpool2d5_s;
    reg [32:0] i_fpga_indvars_iv29_replace_phi_maxpool2d5_q;
    wire [33:0] i_fpga_indvars_iv_next30_maxpool2d12_a;
    wire [33:0] i_fpga_indvars_iv_next30_maxpool2d12_b;
    logic [33:0] i_fpga_indvars_iv_next30_maxpool2d12_o;
    wire [33:0] i_fpga_indvars_iv_next30_maxpool2d12_q;
    wire [32:0] i_inc30_maxpool2d15_a;
    wire [32:0] i_inc30_maxpool2d15_b;
    logic [32:0] i_inc30_maxpool2d15_o;
    wire [32:0] i_inc30_maxpool2d15_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_maxpool2d11_maxpool2d8_out_dest_data_out_1_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_maxpool2d10_maxpool2d3_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going20_maxpool2d2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going20_maxpool2d2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going20_maxpool2d2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going20_maxpool2d2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2350_pop26_maxpool2d27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2350_pop26_maxpool2d27_out_feedback_stall_out_26;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2741_pop23_maxpool2d21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2741_pop23_maxpool2d21_out_feedback_stall_out_23;
    wire [31:0] i_llvm_fpga_pop_i32_j_034_pop20_maxpool2d14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_034_pop20_maxpool2d14_out_feedback_stall_out_20;
    wire [31:0] i_llvm_fpga_pop_i32_mul2547_pop25_maxpool2d25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul2547_pop25_maxpool2d25_out_feedback_stall_out_25;
    wire [31:0] i_llvm_fpga_pop_i32_mul44_pop24_maxpool2d23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul44_pop24_maxpool2d23_out_feedback_stall_out_24;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv29_pop19_maxpool2d4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv29_pop19_maxpool2d4_out_feedback_stall_out_19;
    wire [63:0] i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi37_pop22_maxpool2d19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi37_pop22_maxpool2d19_out_feedback_stall_out_22;
    wire [63:0] i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi33_pop21_maxpool2d17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi33_pop21_maxpool2d17_out_feedback_stall_out_21;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2350_push26_maxpool2d28_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2350_push26_maxpool2d28_out_feedback_valid_out_26;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2741_push23_maxpool2d22_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2741_push23_maxpool2d22_out_feedback_valid_out_23;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond21_maxpool2d11_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond21_maxpool2d11_out_feedback_valid_out_6;
    wire [31:0] i_llvm_fpga_push_i32_j_034_push20_maxpool2d16_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i32_j_034_push20_maxpool2d16_out_feedback_valid_out_20;
    wire [31:0] i_llvm_fpga_push_i32_mul2547_push25_maxpool2d26_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i32_mul2547_push25_maxpool2d26_out_feedback_valid_out_25;
    wire [31:0] i_llvm_fpga_push_i32_mul44_push24_maxpool2d24_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i32_mul44_push24_maxpool2d24_out_feedback_valid_out_24;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv29_push19_maxpool2d13_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv29_push19_maxpool2d13_out_feedback_valid_out_19;
    wire [63:0] i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi37_push22_maxpool2d20_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi37_push22_maxpool2d20_out_feedback_valid_out_22;
    wire [63:0] i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi33_push21_maxpool2d18_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi33_push21_maxpool2d18_out_feedback_valid_out_21;
    wire [0:0] i_notcmp19_maxpool2d10_q;
    wire [0:0] i_unnamed_maxpool2d9_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next30_maxpool2d12_sel_x_b;
    wire [31:0] bgTrunc_i_inc30_maxpool2d15_sel_x_b;
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
    wire [0:0] i_exitcond31_maxpool2d6_cmp_nsign_q;
    reg [0:0] redist0_sync_together79_aunroll_x_in_c0_eni10_1_tpl_1_q;
    reg [63:0] redist1_sync_together79_aunroll_x_in_c0_eni10_2_tpl_1_q;
    reg [63:0] redist2_sync_together79_aunroll_x_in_c0_eni10_3_tpl_1_q;
    reg [0:0] redist3_sync_together79_aunroll_x_in_c0_eni10_4_tpl_1_q;
    reg [31:0] redist4_sync_together79_aunroll_x_in_c0_eni10_5_tpl_1_q;
    reg [31:0] redist5_sync_together79_aunroll_x_in_c0_eni10_6_tpl_1_q;
    reg [0:0] redist6_sync_together79_aunroll_x_in_c0_eni10_7_tpl_1_q;
    reg [63:0] redist7_sync_together79_aunroll_x_in_c0_eni10_8_tpl_1_q;
    reg [63:0] redist8_sync_together79_aunroll_x_in_c0_eni10_9_tpl_1_q;
    reg [0:0] redist9_sync_together79_aunroll_x_in_c0_eni10_10_tpl_1_q;
    reg [0:0] redist10_i_unnamed_maxpool2d9_q_1_q;


    // i_llvm_fpga_ffwd_dest_i33_unnamed_maxpool2d10_maxpool2d3(BLACKBOX,37)@1
    maxpool2d_i_llvm_fpga_ffwd_dest_i33_unnamed_10_maxpool2d0 thei_llvm_fpga_ffwd_dest_i33_unnamed_maxpool2d10_maxpool2d3 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i33_unnamed_maxpool2d10_maxpool2d3_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_153(CONSTANT,29)
    assign c_i33_153_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next30_maxpool2d12(ADD,34)@1
    assign i_fpga_indvars_iv_next30_maxpool2d12_a = {1'b0, i_fpga_indvars_iv29_replace_phi_maxpool2d5_q};
    assign i_fpga_indvars_iv_next30_maxpool2d12_b = {1'b0, c_i33_153_q};
    assign i_fpga_indvars_iv_next30_maxpool2d12_o = $unsigned(i_fpga_indvars_iv_next30_maxpool2d12_a) + $unsigned(i_fpga_indvars_iv_next30_maxpool2d12_b);
    assign i_fpga_indvars_iv_next30_maxpool2d12_q = i_fpga_indvars_iv_next30_maxpool2d12_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next30_maxpool2d12_sel_x(BITSELECT,64)@1
    assign bgTrunc_i_fpga_indvars_iv_next30_maxpool2d12_sel_x_b = i_fpga_indvars_iv_next30_maxpool2d12_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv29_push19_maxpool2d13(BLACKBOX,53)@1
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    maxpool2d_i_llvm_fpga_push_i33_fpga_indvars_iv29_push19_0 thei_llvm_fpga_push_i33_fpga_indvars_iv29_push19_maxpool2d13 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next30_maxpool2d12_sel_x_b),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i33_fpga_indvars_iv29_pop19_maxpool2d4_out_feedback_stall_out_19),
        .in_stall_in(GND_q),
        .in_unnamed_maxpool2d19(i_unnamed_maxpool2d9_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i33_fpga_indvars_iv29_push19_maxpool2d13_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i33_fpga_indvars_iv29_push19_maxpool2d13_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef51(CONSTANT,30)
    assign c_i33_undef51_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv29_pop19_maxpool2d4(BLACKBOX,44)@1
    // out out_feedback_stall_out_19@20000000
    maxpool2d_i_llvm_fpga_pop_i33_fpga_indvars_iv29_pop19_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv29_pop19_maxpool2d4 (
        .in_data_in(c_i33_undef51_q),
        .in_dir(in_c0_eni10_1_tpl),
        .in_feedback_in_19(i_llvm_fpga_push_i33_fpga_indvars_iv29_push19_maxpool2d13_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i33_fpga_indvars_iv29_push19_maxpool2d13_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv29_pop19_maxpool2d4_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i33_fpga_indvars_iv29_pop19_maxpool2d4_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv29_replace_phi_maxpool2d5(MUX,33)@1
    assign i_fpga_indvars_iv29_replace_phi_maxpool2d5_s = in_c0_eni10_1_tpl;
    always @(i_fpga_indvars_iv29_replace_phi_maxpool2d5_s or i_llvm_fpga_pop_i33_fpga_indvars_iv29_pop19_maxpool2d4_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_maxpool2d10_maxpool2d3_out_dest_data_out_2_0)
    begin
        unique case (i_fpga_indvars_iv29_replace_phi_maxpool2d5_s)
            1'b0 : i_fpga_indvars_iv29_replace_phi_maxpool2d5_q = i_llvm_fpga_pop_i33_fpga_indvars_iv29_pop19_maxpool2d4_out_data_out;
            1'b1 : i_fpga_indvars_iv29_replace_phi_maxpool2d5_q = i_llvm_fpga_ffwd_dest_i33_unnamed_maxpool2d10_maxpool2d3_out_dest_data_out_2_0;
            default : i_fpga_indvars_iv29_replace_phi_maxpool2d5_q = 33'b0;
        endcase
    end

    // i_exitcond31_maxpool2d6_cmp_nsign(LOGICAL,87)@1
    assign i_exitcond31_maxpool2d6_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv29_replace_phi_maxpool2d5_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_unnamed_maxpool2d11_maxpool2d8(BLACKBOX,36)@1
    maxpool2d_i_llvm_fpga_ffwd_dest_i1_unnamed_11_maxpool2d0 thei_llvm_fpga_ffwd_dest_i1_unnamed_maxpool2d11_maxpool2d8 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i1_unnamed_maxpool2d11_maxpool2d8_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_maxpool2d9(LOGICAL,57)@1
    assign i_unnamed_maxpool2d9_q = i_llvm_fpga_ffwd_dest_i1_unnamed_maxpool2d11_maxpool2d8_out_dest_data_out_1_0 & i_exitcond31_maxpool2d6_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond21_maxpool2d11(BLACKBOX,49)@1
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    maxpool2d_i_llvm_fpga_push_i1_notexitcond21_0 thei_llvm_fpga_push_i1_notexitcond21_maxpool2d11 (
        .in_data_in(i_unnamed_maxpool2d9_q),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going20_maxpool2d2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_notexitcond21_maxpool2d11_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_notexitcond21_maxpool2d11_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going20_maxpool2d2(BLACKBOX,38)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    maxpool2d_i_llvm_fpga_pipeline_keep_going20_0 thei_llvm_fpga_pipeline_keep_going20_maxpool2d2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond21_maxpool2d11_out_feedback_out_6),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond21_maxpool2d11_out_feedback_valid_out_6),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going20_maxpool2d2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going20_maxpool2d2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going20_maxpool2d2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going20_maxpool2d2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,31)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going20_maxpool2d2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going20_maxpool2d2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going20_maxpool2d2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going20_maxpool2d2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,60)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going20_maxpool2d2_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,69)@1 + 1
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

    // redist3_sync_together79_aunroll_x_in_c0_eni10_4_tpl_1(DELAY,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together79_aunroll_x_in_c0_eni10_4_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together79_aunroll_x_in_c0_eni10_4_tpl_1_q <= $unsigned(in_c0_eni10_4_tpl);
        end
    end

    // redist2_sync_together79_aunroll_x_in_c0_eni10_3_tpl_1(DELAY,90)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together79_aunroll_x_in_c0_eni10_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together79_aunroll_x_in_c0_eni10_3_tpl_1_q <= $unsigned(in_c0_eni10_3_tpl);
        end
    end

    // redist1_sync_together79_aunroll_x_in_c0_eni10_2_tpl_1(DELAY,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together79_aunroll_x_in_c0_eni10_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together79_aunroll_x_in_c0_eni10_2_tpl_1_q <= $unsigned(in_c0_eni10_2_tpl);
        end
    end

    // redist6_sync_together79_aunroll_x_in_c0_eni10_7_tpl_1(DELAY,94)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together79_aunroll_x_in_c0_eni10_7_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together79_aunroll_x_in_c0_eni10_7_tpl_1_q <= $unsigned(in_c0_eni10_7_tpl);
        end
    end

    // redist5_sync_together79_aunroll_x_in_c0_eni10_6_tpl_1(DELAY,93)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together79_aunroll_x_in_c0_eni10_6_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together79_aunroll_x_in_c0_eni10_6_tpl_1_q <= $unsigned(in_c0_eni10_6_tpl);
        end
    end

    // redist4_sync_together79_aunroll_x_in_c0_eni10_5_tpl_1(DELAY,92)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together79_aunroll_x_in_c0_eni10_5_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together79_aunroll_x_in_c0_eni10_5_tpl_1_q <= $unsigned(in_c0_eni10_5_tpl);
        end
    end

    // redist9_sync_together79_aunroll_x_in_c0_eni10_10_tpl_1(DELAY,97)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together79_aunroll_x_in_c0_eni10_10_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together79_aunroll_x_in_c0_eni10_10_tpl_1_q <= $unsigned(in_c0_eni10_10_tpl);
        end
    end

    // redist8_sync_together79_aunroll_x_in_c0_eni10_9_tpl_1(DELAY,96)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together79_aunroll_x_in_c0_eni10_9_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together79_aunroll_x_in_c0_eni10_9_tpl_1_q <= $unsigned(in_c0_eni10_9_tpl);
        end
    end

    // redist7_sync_together79_aunroll_x_in_c0_eni10_8_tpl_1(DELAY,95)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together79_aunroll_x_in_c0_eni10_8_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together79_aunroll_x_in_c0_eni10_8_tpl_1_q <= $unsigned(in_c0_eni10_8_tpl);
        end
    end

    // valid_fanout_reg13(REG,82)@1 + 1
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

    // valid_fanout_reg14(REG,83)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp2350_push26_maxpool2d28(BLACKBOX,47)@2
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    maxpool2d_i_llvm_fpga_push_i1_notcmp2350_push26_0 thei_llvm_fpga_push_i1_notcmp2350_push26_maxpool2d28 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp2350_pop26_maxpool2d27_out_data_out),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i1_notcmp2350_pop26_maxpool2d27_out_feedback_stall_out_26),
        .in_stall_in(GND_q),
        .in_unnamed_maxpool2d19(redist10_i_unnamed_maxpool2d9_q_1_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i1_notcmp2350_push26_maxpool2d28_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i1_notcmp2350_push26_maxpool2d28_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together79_aunroll_x_in_c0_eni10_1_tpl_1(DELAY,88)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together79_aunroll_x_in_c0_eni10_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together79_aunroll_x_in_c0_eni10_1_tpl_1_q <= $unsigned(in_c0_eni10_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp2350_pop26_maxpool2d27(BLACKBOX,39)@2
    // out out_feedback_stall_out_26@20000000
    maxpool2d_i_llvm_fpga_pop_i1_notcmp2350_pop26_0 thei_llvm_fpga_pop_i1_notcmp2350_pop26_maxpool2d27 (
        .in_data_in(redist6_sync_together79_aunroll_x_in_c0_eni10_7_tpl_1_q),
        .in_dir(redist0_sync_together79_aunroll_x_in_c0_eni10_1_tpl_1_q),
        .in_feedback_in_26(i_llvm_fpga_push_i1_notcmp2350_push26_maxpool2d28_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i1_notcmp2350_push26_maxpool2d28_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2350_pop26_maxpool2d27_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i1_notcmp2350_pop26_maxpool2d27_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg11(REG,80)@1 + 1
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

    // valid_fanout_reg12(REG,81)@1 + 1
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

    // i_llvm_fpga_push_i32_mul2547_push25_maxpool2d26(BLACKBOX,51)@2
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    maxpool2d_i_llvm_fpga_push_i32_mul2547_push25_0 thei_llvm_fpga_push_i32_mul2547_push25_maxpool2d26 (
        .in_data_in(i_llvm_fpga_pop_i32_mul2547_pop25_maxpool2d25_out_data_out),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i32_mul2547_pop25_maxpool2d25_out_feedback_stall_out_25),
        .in_stall_in(GND_q),
        .in_unnamed_maxpool2d19(redist10_i_unnamed_maxpool2d9_q_1_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i32_mul2547_push25_maxpool2d26_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i32_mul2547_push25_maxpool2d26_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_mul2547_pop25_maxpool2d25(BLACKBOX,42)@2
    // out out_feedback_stall_out_25@20000000
    maxpool2d_i_llvm_fpga_pop_i32_mul2547_pop25_0 thei_llvm_fpga_pop_i32_mul2547_pop25_maxpool2d25 (
        .in_data_in(redist5_sync_together79_aunroll_x_in_c0_eni10_6_tpl_1_q),
        .in_dir(redist0_sync_together79_aunroll_x_in_c0_eni10_1_tpl_1_q),
        .in_feedback_in_25(i_llvm_fpga_push_i32_mul2547_push25_maxpool2d26_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i32_mul2547_push25_maxpool2d26_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul2547_pop25_maxpool2d25_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i32_mul2547_pop25_maxpool2d25_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg9(REG,78)@1 + 1
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

    // valid_fanout_reg10(REG,79)@1 + 1
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

    // i_llvm_fpga_push_i32_mul44_push24_maxpool2d24(BLACKBOX,52)@2
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    maxpool2d_i_llvm_fpga_push_i32_mul44_push24_0 thei_llvm_fpga_push_i32_mul44_push24_maxpool2d24 (
        .in_data_in(i_llvm_fpga_pop_i32_mul44_pop24_maxpool2d23_out_data_out),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i32_mul44_pop24_maxpool2d23_out_feedback_stall_out_24),
        .in_stall_in(GND_q),
        .in_unnamed_maxpool2d19(redist10_i_unnamed_maxpool2d9_q_1_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i32_mul44_push24_maxpool2d24_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i32_mul44_push24_maxpool2d24_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_mul44_pop24_maxpool2d23(BLACKBOX,43)@2
    // out out_feedback_stall_out_24@20000000
    maxpool2d_i_llvm_fpga_pop_i32_mul44_pop24_0 thei_llvm_fpga_pop_i32_mul44_pop24_maxpool2d23 (
        .in_data_in(redist4_sync_together79_aunroll_x_in_c0_eni10_5_tpl_1_q),
        .in_dir(redist0_sync_together79_aunroll_x_in_c0_eni10_1_tpl_1_q),
        .in_feedback_in_24(i_llvm_fpga_push_i32_mul44_push24_maxpool2d24_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i32_mul44_push24_maxpool2d24_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul44_pop24_maxpool2d23_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i32_mul44_pop24_maxpool2d23_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,76)@1 + 1
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

    // valid_fanout_reg8(REG,77)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp2741_push23_maxpool2d22(BLACKBOX,48)@2
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    maxpool2d_i_llvm_fpga_push_i1_notcmp2741_push23_0 thei_llvm_fpga_push_i1_notcmp2741_push23_maxpool2d22 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp2741_pop23_maxpool2d21_out_data_out),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i1_notcmp2741_pop23_maxpool2d21_out_feedback_stall_out_23),
        .in_stall_in(GND_q),
        .in_unnamed_maxpool2d19(redist10_i_unnamed_maxpool2d9_q_1_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i1_notcmp2741_push23_maxpool2d22_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i1_notcmp2741_push23_maxpool2d22_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp2741_pop23_maxpool2d21(BLACKBOX,40)@2
    // out out_feedback_stall_out_23@20000000
    maxpool2d_i_llvm_fpga_pop_i1_notcmp2741_pop23_0 thei_llvm_fpga_pop_i1_notcmp2741_pop23_maxpool2d21 (
        .in_data_in(redist3_sync_together79_aunroll_x_in_c0_eni10_4_tpl_1_q),
        .in_dir(redist0_sync_together79_aunroll_x_in_c0_eni10_1_tpl_1_q),
        .in_feedback_in_23(i_llvm_fpga_push_i1_notcmp2741_push23_maxpool2d22_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i1_notcmp2741_push23_maxpool2d22_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2741_pop23_maxpool2d21_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i1_notcmp2741_pop23_maxpool2d21_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,74)@1 + 1
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

    // valid_fanout_reg6(REG,75)@1 + 1
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

    // i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi37_push22_maxpool2d20(BLACKBOX,54)@2
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    maxpool2d_i_llvm_fpga_push_p1024f32_inpu0000place_phi37_push22_0 thei_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi37_push22_maxpool2d20 (
        .in_data_in(i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi37_pop22_maxpool2d19_out_data_out),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi37_pop22_maxpool2d19_out_feedback_stall_out_22),
        .in_stall_in(GND_q),
        .in_unnamed_maxpool2d19(redist10_i_unnamed_maxpool2d9_q_1_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi37_push22_maxpool2d20_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi37_push22_maxpool2d20_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi37_pop22_maxpool2d19(BLACKBOX,45)@2
    // out out_feedback_stall_out_22@20000000
    maxpool2d_i_llvm_fpga_pop_p1024f32_input0000eplace_phi37_pop22_0 thei_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi37_pop22_maxpool2d19 (
        .in_data_in(redist2_sync_together79_aunroll_x_in_c0_eni10_3_tpl_1_q),
        .in_dir(redist0_sync_together79_aunroll_x_in_c0_eni10_1_tpl_1_q),
        .in_feedback_in_22(i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi37_push22_maxpool2d20_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi37_push22_maxpool2d20_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi37_pop22_maxpool2d19_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi37_pop22_maxpool2d19_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,72)@1 + 1
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

    // valid_fanout_reg4(REG,73)@1 + 1
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

    // i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi33_push21_maxpool2d18(BLACKBOX,55)@2
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    maxpool2d_i_llvm_fpga_push_p1024f32_outp0000place_phi33_push21_0 thei_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi33_push21_maxpool2d18 (
        .in_data_in(i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi33_pop21_maxpool2d17_out_data_out),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi33_pop21_maxpool2d17_out_feedback_stall_out_21),
        .in_stall_in(GND_q),
        .in_unnamed_maxpool2d19(redist10_i_unnamed_maxpool2d9_q_1_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi33_push21_maxpool2d18_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi33_push21_maxpool2d18_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi33_pop21_maxpool2d17(BLACKBOX,46)@2
    // out out_feedback_stall_out_21@20000000
    maxpool2d_i_llvm_fpga_pop_p1024f32_outpu0000eplace_phi33_pop21_0 thei_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi33_pop21_maxpool2d17 (
        .in_data_in(redist1_sync_together79_aunroll_x_in_c0_eni10_2_tpl_1_q),
        .in_dir(redist0_sync_together79_aunroll_x_in_c0_eni10_1_tpl_1_q),
        .in_feedback_in_21(i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi33_push21_maxpool2d18_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi33_push21_maxpool2d18_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi33_pop21_maxpool2d17_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi33_pop21_maxpool2d17_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,70)@1 + 1
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

    // valid_fanout_reg2(REG,71)@1 + 1
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

    // c_i32_155(CONSTANT,28)
    assign c_i32_155_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc30_maxpool2d15(ADD,35)@2
    assign i_inc30_maxpool2d15_a = {1'b0, i_llvm_fpga_pop_i32_j_034_pop20_maxpool2d14_out_data_out};
    assign i_inc30_maxpool2d15_b = {1'b0, c_i32_155_q};
    assign i_inc30_maxpool2d15_o = $unsigned(i_inc30_maxpool2d15_a) + $unsigned(i_inc30_maxpool2d15_b);
    assign i_inc30_maxpool2d15_q = i_inc30_maxpool2d15_o[32:0];

    // bgTrunc_i_inc30_maxpool2d15_sel_x(BITSELECT,65)@2
    assign bgTrunc_i_inc30_maxpool2d15_sel_x_b = i_inc30_maxpool2d15_q[31:0];

    // i_llvm_fpga_push_i32_j_034_push20_maxpool2d16(BLACKBOX,50)@2
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    maxpool2d_i_llvm_fpga_push_i32_j_034_push20_0 thei_llvm_fpga_push_i32_j_034_push20_maxpool2d16 (
        .in_data_in(bgTrunc_i_inc30_maxpool2d15_sel_x_b),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i32_j_034_pop20_maxpool2d14_out_feedback_stall_out_20),
        .in_stall_in(GND_q),
        .in_unnamed_maxpool2d19(redist10_i_unnamed_maxpool2d9_q_1_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i32_j_034_push20_maxpool2d16_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i32_j_034_push20_maxpool2d16_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_054(CONSTANT,27)
    assign c_i32_054_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_j_034_pop20_maxpool2d14(BLACKBOX,41)@2
    // out out_feedback_stall_out_20@20000000
    maxpool2d_i_llvm_fpga_pop_i32_j_034_pop20_0 thei_llvm_fpga_pop_i32_j_034_pop20_maxpool2d14 (
        .in_data_in(c_i32_054_q),
        .in_dir(redist0_sync_together79_aunroll_x_in_c0_eni10_1_tpl_1_q),
        .in_feedback_in_20(i_llvm_fpga_push_i32_j_034_push20_maxpool2d16_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i32_j_034_push20_maxpool2d16_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_034_pop20_maxpool2d14_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i32_j_034_pop20_maxpool2d14_out_feedback_stall_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp19_maxpool2d10(LOGICAL,56)@2
    assign i_notcmp19_maxpool2d10_q = redist10_i_unnamed_maxpool2d9_q_1_q ^ VCC_q;

    // redist10_i_unnamed_maxpool2d9_q_1(DELAY,98)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_unnamed_maxpool2d9_q_1_q <= '0;
        end
        else
        begin
            redist10_i_unnamed_maxpool2d9_q_1_q <= $unsigned(i_unnamed_maxpool2d9_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,67)@2
    assign out_c0_exi18_0_tpl = GND_q;
    assign out_c0_exi18_1_tpl = redist10_i_unnamed_maxpool2d9_q_1_q;
    assign out_c0_exi18_2_tpl = i_notcmp19_maxpool2d10_q;
    assign out_c0_exi18_3_tpl = i_llvm_fpga_pop_i32_j_034_pop20_maxpool2d14_out_data_out;
    assign out_c0_exi18_4_tpl = i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi33_pop21_maxpool2d17_out_data_out;
    assign out_c0_exi18_5_tpl = i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi37_pop22_maxpool2d19_out_data_out;
    assign out_c0_exi18_6_tpl = i_llvm_fpga_pop_i1_notcmp2741_pop23_maxpool2d21_out_data_out;
    assign out_c0_exi18_7_tpl = i_llvm_fpga_pop_i32_mul44_pop24_maxpool2d23_out_data_out;
    assign out_c0_exi18_8_tpl = i_llvm_fpga_pop_i32_mul2547_pop25_maxpool2d25_out_data_out;
    assign out_c0_exi18_9_tpl = i_llvm_fpga_pop_i1_notcmp2350_pop26_maxpool2d27_out_data_out;
    assign out_c0_exi18_10_tpl = redist7_sync_together79_aunroll_x_in_c0_eni10_8_tpl_1_q;
    assign out_c0_exi18_11_tpl = redist8_sync_together79_aunroll_x_in_c0_eni10_9_tpl_1_q;
    assign out_c0_exi18_12_tpl = redist9_sync_together79_aunroll_x_in_c0_eni10_10_tpl_1_q;
    assign out_c0_exi18_13_tpl = redist4_sync_together79_aunroll_x_in_c0_eni10_5_tpl_1_q;
    assign out_c0_exi18_14_tpl = redist5_sync_together79_aunroll_x_in_c0_eni10_6_tpl_1_q;
    assign out_c0_exi18_15_tpl = redist6_sync_together79_aunroll_x_in_c0_eni10_7_tpl_1_q;
    assign out_c0_exi18_16_tpl = redist1_sync_together79_aunroll_x_in_c0_eni10_2_tpl_1_q;
    assign out_c0_exi18_17_tpl = redist2_sync_together79_aunroll_x_in_c0_eni10_3_tpl_1_q;
    assign out_c0_exi18_18_tpl = redist3_sync_together79_aunroll_x_in_c0_eni10_4_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_maxpool2d7 = GND_q;

endmodule
