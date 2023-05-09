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

// SystemVerilog created from mmul_i_sfc_logic_s_c0_in_for_body8_preheader_s_c0_enter439_mmul0
// SystemVerilog created on Fri May  5 14:23:33 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_i_sfc_logic_s_c0_in_for_body8_preheader_s_c0_enter439_mmul0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_1_0,
    output wire [0:0] out_c0_exi7_0_tpl,
    output wire [0:0] out_c0_exi7_1_tpl,
    output wire [0:0] out_c0_exi7_2_tpl,
    output wire [31:0] out_c0_exi7_3_tpl,
    output wire [31:0] out_c0_exi7_4_tpl,
    output wire [0:0] out_c0_exi7_5_tpl,
    output wire [31:0] out_c0_exi7_6_tpl,
    output wire [0:0] out_c0_exi7_7_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_mmul3,
    input wire [0:0] in_c0_eni3_0_tpl,
    input wire [0:0] in_c0_eni3_1_tpl,
    input wire [31:0] in_c0_eni3_2_tpl,
    input wire [0:0] in_c0_eni3_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_038_q;
    wire [31:0] c_i32_139_q;
    wire [32:0] c_i33_137_q;
    wire [32:0] c_i33_undef35_q;
    wire [0:0] i_fpga_indvars_iv17_replace_phi_mmul5_s;
    reg [32:0] i_fpga_indvars_iv17_replace_phi_mmul5_q;
    wire [33:0] i_fpga_indvars_iv_next18_mmul12_a;
    wire [33:0] i_fpga_indvars_iv_next18_mmul12_b;
    logic [33:0] i_fpga_indvars_iv_next18_mmul12_o;
    wire [33:0] i_fpga_indvars_iv_next18_mmul12_q;
    wire [32:0] i_inc19_mmul15_a;
    wire [32:0] i_inc19_mmul15_b;
    logic [32:0] i_inc19_mmul15_o;
    wire [32:0] i_inc19_mmul15_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp277_mmul8_out_dest_data_out_0_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_mmul4_mmul3_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_mmul2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_mmul2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_mmul2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_mmul2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1622_pop12_mmul19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1622_pop12_mmul19_out_feedback_stall_out_12;
    wire [31:0] i_llvm_fpga_pop_i32_j_025_pop10_mmul14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_025_pop10_mmul14_out_feedback_stall_out_10;
    wire [31:0] i_llvm_fpga_pop_i32_mul20_pop11_mmul17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul20_pop11_mmul17_out_feedback_stall_out_11;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv17_pop9_mmul4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv17_pop9_mmul4_out_feedback_stall_out_9;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1622_push12_mmul20_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1622_push12_mmul20_out_feedback_valid_out_12;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond14_mmul11_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond14_mmul11_out_feedback_valid_out_4;
    wire [31:0] i_llvm_fpga_push_i32_j_025_push10_mmul16_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i32_j_025_push10_mmul16_out_feedback_valid_out_10;
    wire [31:0] i_llvm_fpga_push_i32_mul20_push11_mmul18_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i32_mul20_push11_mmul18_out_feedback_valid_out_11;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv17_push9_mmul13_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv17_push9_mmul13_out_feedback_valid_out_9;
    wire [0:0] i_notcmp12_mmul10_q;
    wire [0:0] i_unnamed_mmul9_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next18_mmul12_sel_x_b;
    wire [31:0] bgTrunc_i_inc19_mmul15_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    wire [0:0] i_exitcond19_mmul6_cmp_nsign_q;
    reg [0:0] redist0_sync_together55_aunroll_x_in_c0_eni3_1_tpl_1_q;
    reg [31:0] redist1_sync_together55_aunroll_x_in_c0_eni3_2_tpl_1_q;
    reg [0:0] redist2_sync_together55_aunroll_x_in_c0_eni3_3_tpl_1_q;
    reg [0:0] redist3_i_unnamed_mmul9_q_1_q;


    // i_llvm_fpga_ffwd_dest_i33_unnamed_mmul4_mmul3(BLACKBOX,29)@1
    mmul_i_llvm_fpga_ffwd_dest_i33_unnamed_4_mmul0 thei_llvm_fpga_ffwd_dest_i33_unnamed_mmul4_mmul3 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i33_unnamed_mmul4_mmul3_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_137(CONSTANT,21)
    assign c_i33_137_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next18_mmul12(ADD,26)@1
    assign i_fpga_indvars_iv_next18_mmul12_a = {1'b0, i_fpga_indvars_iv17_replace_phi_mmul5_q};
    assign i_fpga_indvars_iv_next18_mmul12_b = {1'b0, c_i33_137_q};
    assign i_fpga_indvars_iv_next18_mmul12_o = $unsigned(i_fpga_indvars_iv_next18_mmul12_a) + $unsigned(i_fpga_indvars_iv_next18_mmul12_b);
    assign i_fpga_indvars_iv_next18_mmul12_q = i_fpga_indvars_iv_next18_mmul12_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next18_mmul12_sel_x(BITSELECT,48)@1
    assign bgTrunc_i_fpga_indvars_iv_next18_mmul12_sel_x_b = i_fpga_indvars_iv_next18_mmul12_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv17_push9_mmul13(BLACKBOX,39)@1
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    mmul_i_llvm_fpga_push_i33_fpga_indvars_iv17_push9_0 thei_llvm_fpga_push_i33_fpga_indvars_iv17_push9_mmul13 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next18_mmul12_sel_x_b),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i33_fpga_indvars_iv17_pop9_mmul4_out_feedback_stall_out_9),
        .in_stall_in(GND_q),
        .in_unnamed_mmul8(i_unnamed_mmul9_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i33_fpga_indvars_iv17_push9_mmul13_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i33_fpga_indvars_iv17_push9_mmul13_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef35(CONSTANT,22)
    assign c_i33_undef35_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv17_pop9_mmul4(BLACKBOX,34)@1
    // out out_feedback_stall_out_9@20000000
    mmul_i_llvm_fpga_pop_i33_fpga_indvars_iv17_pop9_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv17_pop9_mmul4 (
        .in_data_in(c_i33_undef35_q),
        .in_dir(in_c0_eni3_1_tpl),
        .in_feedback_in_9(i_llvm_fpga_push_i33_fpga_indvars_iv17_push9_mmul13_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i33_fpga_indvars_iv17_push9_mmul13_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv17_pop9_mmul4_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i33_fpga_indvars_iv17_pop9_mmul4_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv17_replace_phi_mmul5(MUX,25)@1
    assign i_fpga_indvars_iv17_replace_phi_mmul5_s = in_c0_eni3_1_tpl;
    always @(i_fpga_indvars_iv17_replace_phi_mmul5_s or i_llvm_fpga_pop_i33_fpga_indvars_iv17_pop9_mmul4_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_mmul4_mmul3_out_dest_data_out_1_0)
    begin
        unique case (i_fpga_indvars_iv17_replace_phi_mmul5_s)
            1'b0 : i_fpga_indvars_iv17_replace_phi_mmul5_q = i_llvm_fpga_pop_i33_fpga_indvars_iv17_pop9_mmul4_out_data_out;
            1'b1 : i_fpga_indvars_iv17_replace_phi_mmul5_q = i_llvm_fpga_ffwd_dest_i33_unnamed_mmul4_mmul3_out_dest_data_out_1_0;
            default : i_fpga_indvars_iv17_replace_phi_mmul5_q = 33'b0;
        endcase
    end

    // i_exitcond19_mmul6_cmp_nsign(LOGICAL,63)@1
    assign i_exitcond19_mmul6_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv17_replace_phi_mmul5_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp277_mmul8(BLACKBOX,28)@1
    mmul_i_llvm_fpga_ffwd_dest_i1_cmp277_0 thei_llvm_fpga_ffwd_dest_i1_cmp277_mmul8 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp277_mmul8_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_mmul9(LOGICAL,41)@1
    assign i_unnamed_mmul9_q = i_llvm_fpga_ffwd_dest_i1_cmp277_mmul8_out_dest_data_out_0_0 & i_exitcond19_mmul6_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond14_mmul11(BLACKBOX,36)@1
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    mmul_i_llvm_fpga_push_i1_notexitcond14_0 thei_llvm_fpga_push_i1_notexitcond14_mmul11 (
        .in_data_in(i_unnamed_mmul9_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going13_mmul2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_notexitcond14_mmul11_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_notexitcond14_mmul11_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going13_mmul2(BLACKBOX,30)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    mmul_i_llvm_fpga_pipeline_keep_going13_0 thei_llvm_fpga_pipeline_keep_going13_mmul2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond14_mmul11_out_feedback_out_4),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond14_mmul11_out_feedback_valid_out_4),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going13_mmul2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going13_mmul2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going13_mmul2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going13_mmul2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,23)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going13_mmul2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going13_mmul2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,44)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going13_mmul2_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,53)@1 + 1
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

    // redist2_sync_together55_aunroll_x_in_c0_eni3_3_tpl_1(DELAY,66)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together55_aunroll_x_in_c0_eni3_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together55_aunroll_x_in_c0_eni3_3_tpl_1_q <= $unsigned(in_c0_eni3_3_tpl);
        end
    end

    // redist1_sync_together55_aunroll_x_in_c0_eni3_2_tpl_1(DELAY,65)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together55_aunroll_x_in_c0_eni3_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together55_aunroll_x_in_c0_eni3_2_tpl_1_q <= $unsigned(in_c0_eni3_2_tpl);
        end
    end

    // valid_fanout_reg5(REG,58)@1 + 1
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

    // valid_fanout_reg6(REG,59)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp1622_push12_mmul20(BLACKBOX,35)@2
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    mmul_i_llvm_fpga_push_i1_notcmp1622_push12_0 thei_llvm_fpga_push_i1_notcmp1622_push12_mmul20 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp1622_pop12_mmul19_out_data_out),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i1_notcmp1622_pop12_mmul19_out_feedback_stall_out_12),
        .in_stall_in(GND_q),
        .in_unnamed_mmul8(redist3_i_unnamed_mmul9_q_1_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i1_notcmp1622_push12_mmul20_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i1_notcmp1622_push12_mmul20_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together55_aunroll_x_in_c0_eni3_1_tpl_1(DELAY,64)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together55_aunroll_x_in_c0_eni3_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together55_aunroll_x_in_c0_eni3_1_tpl_1_q <= $unsigned(in_c0_eni3_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp1622_pop12_mmul19(BLACKBOX,31)@2
    // out out_feedback_stall_out_12@20000000
    mmul_i_llvm_fpga_pop_i1_notcmp1622_pop12_0 thei_llvm_fpga_pop_i1_notcmp1622_pop12_mmul19 (
        .in_data_in(redist2_sync_together55_aunroll_x_in_c0_eni3_3_tpl_1_q),
        .in_dir(redist0_sync_together55_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_12(i_llvm_fpga_push_i1_notcmp1622_push12_mmul20_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i1_notcmp1622_push12_mmul20_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1622_pop12_mmul19_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i1_notcmp1622_pop12_mmul19_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,56)@1 + 1
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

    // valid_fanout_reg4(REG,57)@1 + 1
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

    // i_llvm_fpga_push_i32_mul20_push11_mmul18(BLACKBOX,38)@2
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    mmul_i_llvm_fpga_push_i32_mul20_push11_0 thei_llvm_fpga_push_i32_mul20_push11_mmul18 (
        .in_data_in(i_llvm_fpga_pop_i32_mul20_pop11_mmul17_out_data_out),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i32_mul20_pop11_mmul17_out_feedback_stall_out_11),
        .in_stall_in(GND_q),
        .in_unnamed_mmul8(redist3_i_unnamed_mmul9_q_1_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i32_mul20_push11_mmul18_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i32_mul20_push11_mmul18_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_mul20_pop11_mmul17(BLACKBOX,33)@2
    // out out_feedback_stall_out_11@20000000
    mmul_i_llvm_fpga_pop_i32_mul20_pop11_0 thei_llvm_fpga_pop_i32_mul20_pop11_mmul17 (
        .in_data_in(redist1_sync_together55_aunroll_x_in_c0_eni3_2_tpl_1_q),
        .in_dir(redist0_sync_together55_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_11(i_llvm_fpga_push_i32_mul20_push11_mmul18_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i32_mul20_push11_mmul18_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul20_pop11_mmul17_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i32_mul20_pop11_mmul17_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,54)@1 + 1
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

    // valid_fanout_reg2(REG,55)@1 + 1
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

    // c_i32_139(CONSTANT,20)
    assign c_i32_139_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc19_mmul15(ADD,27)@2
    assign i_inc19_mmul15_a = {1'b0, i_llvm_fpga_pop_i32_j_025_pop10_mmul14_out_data_out};
    assign i_inc19_mmul15_b = {1'b0, c_i32_139_q};
    assign i_inc19_mmul15_o = $unsigned(i_inc19_mmul15_a) + $unsigned(i_inc19_mmul15_b);
    assign i_inc19_mmul15_q = i_inc19_mmul15_o[32:0];

    // bgTrunc_i_inc19_mmul15_sel_x(BITSELECT,49)@2
    assign bgTrunc_i_inc19_mmul15_sel_x_b = i_inc19_mmul15_q[31:0];

    // i_llvm_fpga_push_i32_j_025_push10_mmul16(BLACKBOX,37)@2
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    mmul_i_llvm_fpga_push_i32_j_025_push10_0 thei_llvm_fpga_push_i32_j_025_push10_mmul16 (
        .in_data_in(bgTrunc_i_inc19_mmul15_sel_x_b),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i32_j_025_pop10_mmul14_out_feedback_stall_out_10),
        .in_stall_in(GND_q),
        .in_unnamed_mmul8(redist3_i_unnamed_mmul9_q_1_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i32_j_025_push10_mmul16_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i32_j_025_push10_mmul16_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_038(CONSTANT,19)
    assign c_i32_038_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_j_025_pop10_mmul14(BLACKBOX,32)@2
    // out out_feedback_stall_out_10@20000000
    mmul_i_llvm_fpga_pop_i32_j_025_pop10_0 thei_llvm_fpga_pop_i32_j_025_pop10_mmul14 (
        .in_data_in(c_i32_038_q),
        .in_dir(redist0_sync_together55_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_10(i_llvm_fpga_push_i32_j_025_push10_mmul16_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i32_j_025_push10_mmul16_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_025_pop10_mmul14_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i32_j_025_pop10_mmul14_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp12_mmul10(LOGICAL,40)@2
    assign i_notcmp12_mmul10_q = redist3_i_unnamed_mmul9_q_1_q ^ VCC_q;

    // redist3_i_unnamed_mmul9_q_1(DELAY,67)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_unnamed_mmul9_q_1_q <= '0;
        end
        else
        begin
            redist3_i_unnamed_mmul9_q_1_q <= $unsigned(i_unnamed_mmul9_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,51)@2
    assign out_c0_exi7_0_tpl = GND_q;
    assign out_c0_exi7_1_tpl = redist3_i_unnamed_mmul9_q_1_q;
    assign out_c0_exi7_2_tpl = i_notcmp12_mmul10_q;
    assign out_c0_exi7_3_tpl = i_llvm_fpga_pop_i32_j_025_pop10_mmul14_out_data_out;
    assign out_c0_exi7_4_tpl = i_llvm_fpga_pop_i32_mul20_pop11_mmul17_out_data_out;
    assign out_c0_exi7_5_tpl = i_llvm_fpga_pop_i1_notcmp1622_pop12_mmul19_out_data_out;
    assign out_c0_exi7_6_tpl = redist1_sync_together55_aunroll_x_in_c0_eni3_2_tpl_1_q;
    assign out_c0_exi7_7_tpl = redist2_sync_together55_aunroll_x_in_c0_eni3_3_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_mmul3 = GND_q;

endmodule
