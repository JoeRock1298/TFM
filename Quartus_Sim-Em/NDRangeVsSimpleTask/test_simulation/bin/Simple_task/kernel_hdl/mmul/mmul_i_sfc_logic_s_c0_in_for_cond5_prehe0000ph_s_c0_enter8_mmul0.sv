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

// SystemVerilog created from mmul_i_sfc_logic_s_c0_in_for_cond5_prehe0000ph_s_c0_enter8_mmul0
// SystemVerilog created on Fri May  5 14:23:33 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_i_sfc_logic_s_c0_in_for_cond5_prehe0000ph_s_c0_enter8_mmul0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_mmul2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_mmul2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_N,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_1_0,
    output wire [0:0] out_c0_exi3_0_tpl,
    output wire [31:0] out_c0_exi3_1_tpl,
    output wire [0:0] out_c0_exi3_2_tpl,
    output wire [0:0] out_c0_exi3_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_mmul3,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_031_q;
    wire [31:0] c_i32_134_q;
    wire [32:0] c_i33_133_q;
    wire [32:0] c_i33_undef30_q;
    wire [0:0] i_fpga_indvars_iv20_replace_phi_mmul5_s;
    reg [32:0] i_fpga_indvars_iv20_replace_phi_mmul5_q;
    wire [33:0] i_fpga_indvars_iv_next21_mmul15_a;
    wire [33:0] i_fpga_indvars_iv_next21_mmul15_b;
    logic [33:0] i_fpga_indvars_iv_next21_mmul15_o;
    wire [33:0] i_fpga_indvars_iv_next21_mmul15_q;
    wire [32:0] i_inc22_mmul17_a;
    wire [32:0] i_inc22_mmul17_b;
    logic [32:0] i_inc22_mmul17_o;
    wire [32:0] i_inc22_mmul17_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp276_mmul11_out_dest_data_out_0_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_mmul2_mmul3_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going17_mmul2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going17_mmul2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going17_mmul2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going17_mmul2_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_028_pop8_mmul7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_028_pop8_mmul7_out_feedback_stall_out_8;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv20_pop7_mmul4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv20_pop7_mmul4_out_feedback_stall_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond18_mmul14_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond18_mmul14_out_feedback_valid_out_6;
    wire [31:0] i_llvm_fpga_push_i32_i_028_push8_mmul18_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i32_i_028_push8_mmul18_out_feedback_valid_out_8;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv20_push7_mmul16_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv20_push7_mmul16_out_feedback_valid_out_7;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_mmul6_out_buffer_out;
    wire [0:0] i_notcmp16_mmul13_q;
    wire [0:0] i_unnamed_mmul12_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next21_mmul15_sel_x_b;
    wire [31:0] bgTrunc_i_inc22_mmul17_sel_x_b;
    wire [63:0] bgTrunc_i_mul_mmul8_sel_x_in;
    wire [31:0] bgTrunc_i_mul_mmul8_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    wire [0:0] i_exitcond22_mmul9_cmp_nsign_q;
    wire [63:0] i_mul_mmul8_sums_join_0_q;
    wire [50:0] i_mul_mmul8_sums_align_1_q;
    wire [50:0] i_mul_mmul8_sums_align_1_qint;
    wire [64:0] i_mul_mmul8_sums_result_add_0_0_a;
    wire [64:0] i_mul_mmul8_sums_result_add_0_0_b;
    logic [64:0] i_mul_mmul8_sums_result_add_0_0_o;
    wire [64:0] i_mul_mmul8_sums_result_add_0_0_q;
    wire i_mul_mmul8_im0_cma_reset;
    wire [13:0] i_mul_mmul8_im0_cma_a0;
    wire [13:0] i_mul_mmul8_im0_cma_c0;
    wire [27:0] i_mul_mmul8_im0_cma_s0;
    wire [27:0] i_mul_mmul8_im0_cma_qq;
    wire [27:0] i_mul_mmul8_im0_cma_q;
    wire i_mul_mmul8_im0_cma_ena0;
    wire i_mul_mmul8_im0_cma_ena1;
    wire i_mul_mmul8_im0_cma_ena2;
    wire i_mul_mmul8_im8_cma_reset;
    wire [17:0] i_mul_mmul8_im8_cma_a0;
    wire [17:0] i_mul_mmul8_im8_cma_c0;
    wire [35:0] i_mul_mmul8_im8_cma_s0;
    wire [35:0] i_mul_mmul8_im8_cma_qq;
    wire [35:0] i_mul_mmul8_im8_cma_q;
    wire i_mul_mmul8_im8_cma_ena0;
    wire i_mul_mmul8_im8_cma_ena1;
    wire i_mul_mmul8_im8_cma_ena2;
    wire i_mul_mmul8_ma3_cma_reset;
    wire [13:0] i_mul_mmul8_ma3_cma_a0;
    wire [17:0] i_mul_mmul8_ma3_cma_c0;
    wire [13:0] i_mul_mmul8_ma3_cma_a1;
    wire [17:0] i_mul_mmul8_ma3_cma_c1;
    wire [32:0] i_mul_mmul8_ma3_cma_s0;
    wire [32:0] i_mul_mmul8_ma3_cma_qq;
    wire [32:0] i_mul_mmul8_ma3_cma_q;
    wire i_mul_mmul8_ma3_cma_ena0;
    wire i_mul_mmul8_ma3_cma_ena1;
    wire i_mul_mmul8_ma3_cma_ena2;
    wire [13:0] i_mul_mmul8_bs1_merged_bit_select_b;
    wire [17:0] i_mul_mmul8_bs1_merged_bit_select_c;
    wire [13:0] i_mul_mmul8_bs2_merged_bit_select_b;
    wire [17:0] i_mul_mmul8_bs2_merged_bit_select_c;
    reg [0:0] redist0_sync_together47_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together47_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist1_sync_together47_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist1_sync_together47_aunroll_x_in_i_valid_3_delay_1;
    reg [0:0] redist2_i_unnamed_mmul12_q_1_q;
    reg [0:0] redist3_i_unnamed_mmul12_q_4_q;
    reg [0:0] redist3_i_unnamed_mmul12_q_4_delay_0;
    reg [0:0] redist3_i_unnamed_mmul12_q_4_delay_1;


    // i_llvm_fpga_ffwd_dest_i33_unnamed_mmul2_mmul3(BLACKBOX,27)@1
    mmul_i_llvm_fpga_ffwd_dest_i33_unnamed_2_mmul0 thei_llvm_fpga_ffwd_dest_i33_unnamed_mmul2_mmul3 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i33_unnamed_mmul2_mmul3_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_133(CONSTANT,19)
    assign c_i33_133_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next21_mmul15(ADD,24)@1
    assign i_fpga_indvars_iv_next21_mmul15_a = {1'b0, i_fpga_indvars_iv20_replace_phi_mmul5_q};
    assign i_fpga_indvars_iv_next21_mmul15_b = {1'b0, c_i33_133_q};
    assign i_fpga_indvars_iv_next21_mmul15_o = $unsigned(i_fpga_indvars_iv_next21_mmul15_a) + $unsigned(i_fpga_indvars_iv_next21_mmul15_b);
    assign i_fpga_indvars_iv_next21_mmul15_q = i_fpga_indvars_iv_next21_mmul15_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next21_mmul15_sel_x(BITSELECT,45)@1
    assign bgTrunc_i_fpga_indvars_iv_next21_mmul15_sel_x_b = i_fpga_indvars_iv_next21_mmul15_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv20_push7_mmul16(BLACKBOX,33)@1
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    mmul_i_llvm_fpga_push_i33_fpga_indvars_iv20_push7_0 thei_llvm_fpga_push_i33_fpga_indvars_iv20_push7_mmul16 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next21_mmul15_sel_x_b),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_i33_fpga_indvars_iv20_pop7_mmul4_out_feedback_stall_out_7),
        .in_stall_in(GND_q),
        .in_unnamed_mmul7(i_unnamed_mmul12_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i33_fpga_indvars_iv20_push7_mmul16_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i33_fpga_indvars_iv20_push7_mmul16_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef30(CONSTANT,20)
    assign c_i33_undef30_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv20_pop7_mmul4(BLACKBOX,30)@1
    // out out_feedback_stall_out_7@20000000
    mmul_i_llvm_fpga_pop_i33_fpga_indvars_iv20_pop7_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv20_pop7_mmul4 (
        .in_data_in(c_i33_undef30_q),
        .in_dir(in_c0_eni1_1_tpl),
        .in_feedback_in_7(i_llvm_fpga_push_i33_fpga_indvars_iv20_push7_mmul16_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_i33_fpga_indvars_iv20_push7_mmul16_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv20_pop7_mmul4_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_i33_fpga_indvars_iv20_pop7_mmul4_out_feedback_stall_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv20_replace_phi_mmul5(MUX,23)@1
    assign i_fpga_indvars_iv20_replace_phi_mmul5_s = in_c0_eni1_1_tpl;
    always @(i_fpga_indvars_iv20_replace_phi_mmul5_s or i_llvm_fpga_pop_i33_fpga_indvars_iv20_pop7_mmul4_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_mmul2_mmul3_out_dest_data_out_1_0)
    begin
        unique case (i_fpga_indvars_iv20_replace_phi_mmul5_s)
            1'b0 : i_fpga_indvars_iv20_replace_phi_mmul5_q = i_llvm_fpga_pop_i33_fpga_indvars_iv20_pop7_mmul4_out_data_out;
            1'b1 : i_fpga_indvars_iv20_replace_phi_mmul5_q = i_llvm_fpga_ffwd_dest_i33_unnamed_mmul2_mmul3_out_dest_data_out_1_0;
            default : i_fpga_indvars_iv20_replace_phi_mmul5_q = 33'b0;
        endcase
    end

    // i_exitcond22_mmul9_cmp_nsign(LOGICAL,59)@1
    assign i_exitcond22_mmul9_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv20_replace_phi_mmul5_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp276_mmul11(BLACKBOX,26)@1
    mmul_i_llvm_fpga_ffwd_dest_i1_cmp276_0 thei_llvm_fpga_ffwd_dest_i1_cmp276_mmul11 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp276_mmul11_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_mmul12(LOGICAL,37)@1
    assign i_unnamed_mmul12_q = i_llvm_fpga_ffwd_dest_i1_cmp276_mmul11_out_dest_data_out_0_0 & i_exitcond22_mmul9_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond18_mmul14(BLACKBOX,31)@1
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    mmul_i_llvm_fpga_push_i1_notexitcond18_0 thei_llvm_fpga_push_i1_notexitcond18_mmul14 (
        .in_data_in(i_unnamed_mmul12_q),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going17_mmul2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_notexitcond18_mmul14_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_notexitcond18_mmul14_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going17_mmul2(BLACKBOX,28)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    mmul_i_llvm_fpga_pipeline_keep_going17_0 thei_llvm_fpga_pipeline_keep_going17_mmul2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond18_mmul14_out_feedback_out_6),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond18_mmul14_out_feedback_valid_out_6),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going17_mmul2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going17_mmul2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going17_mmul2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going17_mmul2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,21)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_mmul2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going17_mmul2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_mmul2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going17_mmul2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,40)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going17_mmul2_out_pipeline_valid_out;

    // redist1_sync_together47_aunroll_x_in_i_valid_3(DELAY,81)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together47_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist1_sync_together47_aunroll_x_in_i_valid_3_delay_1 <= '0;
            redist1_sync_together47_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist1_sync_together47_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
            redist1_sync_together47_aunroll_x_in_i_valid_3_delay_1 <= redist1_sync_together47_aunroll_x_in_i_valid_3_delay_0;
            redist1_sync_together47_aunroll_x_in_i_valid_3_q <= redist1_sync_together47_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // valid_fanout_reg0(REG,51)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist1_sync_together47_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_notcmp16_mmul13(LOGICAL,36)@5
    assign i_notcmp16_mmul13_q = redist3_i_unnamed_mmul12_q_4_q ^ VCC_q;

    // redist2_i_unnamed_mmul12_q_1(DELAY,82)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_unnamed_mmul12_q_1_q <= '0;
        end
        else
        begin
            redist2_i_unnamed_mmul12_q_1_q <= $unsigned(i_unnamed_mmul12_q);
        end
    end

    // redist3_i_unnamed_mmul12_q_4(DELAY,83)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_unnamed_mmul12_q_4_delay_0 <= '0;
            redist3_i_unnamed_mmul12_q_4_delay_1 <= '0;
            redist3_i_unnamed_mmul12_q_4_q <= '0;
        end
        else
        begin
            redist3_i_unnamed_mmul12_q_4_delay_0 <= $unsigned(redist2_i_unnamed_mmul12_q_1_q);
            redist3_i_unnamed_mmul12_q_4_delay_1 <= redist3_i_unnamed_mmul12_q_4_delay_0;
            redist3_i_unnamed_mmul12_q_4_q <= redist3_i_unnamed_mmul12_q_4_delay_1;
        end
    end

    // valid_fanout_reg1(REG,52)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_mmul6(BLACKBOX,34)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    mmul_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_0 thei_llvm_fpga_sync_buffer_i32_n_sync_buffer2_mmul6 (
        .in_buffer_in(in_N),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_mmul6_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_mmul8_bs2_merged_bit_select(BITSELECT,79)@2
    assign i_mul_mmul8_bs2_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_mmul6_out_buffer_out[31:18];
    assign i_mul_mmul8_bs2_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_mmul6_out_buffer_out[17:0];

    // valid_fanout_reg2(REG,53)@1 + 1
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

    // valid_fanout_reg3(REG,54)@1 + 1
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

    // c_i32_134(CONSTANT,18)
    assign c_i32_134_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc22_mmul17(ADD,25)@2
    assign i_inc22_mmul17_a = {1'b0, i_llvm_fpga_pop_i32_i_028_pop8_mmul7_out_data_out};
    assign i_inc22_mmul17_b = {1'b0, c_i32_134_q};
    assign i_inc22_mmul17_o = $unsigned(i_inc22_mmul17_a) + $unsigned(i_inc22_mmul17_b);
    assign i_inc22_mmul17_q = i_inc22_mmul17_o[32:0];

    // bgTrunc_i_inc22_mmul17_sel_x(BITSELECT,46)@2
    assign bgTrunc_i_inc22_mmul17_sel_x_b = i_inc22_mmul17_q[31:0];

    // i_llvm_fpga_push_i32_i_028_push8_mmul18(BLACKBOX,32)@2
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    mmul_i_llvm_fpga_push_i32_i_028_push8_0 thei_llvm_fpga_push_i32_i_028_push8_mmul18 (
        .in_data_in(bgTrunc_i_inc22_mmul17_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i32_i_028_pop8_mmul7_out_feedback_stall_out_8),
        .in_stall_in(GND_q),
        .in_unnamed_mmul7(redist2_i_unnamed_mmul12_q_1_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i32_i_028_push8_mmul18_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i32_i_028_push8_mmul18_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together47_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,80)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together47_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together47_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // c_i32_031(CONSTANT,17)
    assign c_i32_031_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i_028_pop8_mmul7(BLACKBOX,29)@2
    // out out_feedback_stall_out_8@20000000
    mmul_i_llvm_fpga_pop_i32_i_028_pop8_0 thei_llvm_fpga_pop_i32_i_028_pop8_mmul7 (
        .in_data_in(c_i32_031_q),
        .in_dir(redist0_sync_together47_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_8(i_llvm_fpga_push_i32_i_028_push8_mmul18_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i32_i_028_push8_mmul18_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_028_pop8_mmul7_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i32_i_028_pop8_mmul7_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_mmul8_bs1_merged_bit_select(BITSELECT,78)@2
    assign i_mul_mmul8_bs1_merged_bit_select_b = i_llvm_fpga_pop_i32_i_028_pop8_mmul7_out_data_out[31:18];
    assign i_mul_mmul8_bs1_merged_bit_select_c = i_llvm_fpga_pop_i32_i_028_pop8_mmul7_out_data_out[17:0];

    // i_mul_mmul8_ma3_cma(CHAINMULTADD,77)@2 + 3
    assign i_mul_mmul8_ma3_cma_reset = ~ (resetn);
    assign i_mul_mmul8_ma3_cma_ena0 = 1'b1;
    assign i_mul_mmul8_ma3_cma_ena1 = i_mul_mmul8_ma3_cma_ena0;
    assign i_mul_mmul8_ma3_cma_ena2 = i_mul_mmul8_ma3_cma_ena0;

    assign i_mul_mmul8_ma3_cma_a0 = i_mul_mmul8_bs1_merged_bit_select_b;
    assign i_mul_mmul8_ma3_cma_c0 = i_mul_mmul8_bs2_merged_bit_select_c;
    assign i_mul_mmul8_ma3_cma_a1 = i_mul_mmul8_bs2_merged_bit_select_b;
    assign i_mul_mmul8_ma3_cma_c1 = i_mul_mmul8_bs1_merged_bit_select_c;
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
    ) i_mul_mmul8_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_mmul8_ma3_cma_ena2, i_mul_mmul8_ma3_cma_ena1, i_mul_mmul8_ma3_cma_ena0 }),
        .aclr({ i_mul_mmul8_ma3_cma_reset, i_mul_mmul8_ma3_cma_reset }),
        .ay(i_mul_mmul8_ma3_cma_a1),
        .by(i_mul_mmul8_ma3_cma_a0),
        .ax(i_mul_mmul8_ma3_cma_c1),
        .bx(i_mul_mmul8_ma3_cma_c0),
        .resulta(i_mul_mmul8_ma3_cma_s0),
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
    i_mul_mmul8_ma3_cma_delay ( .xin(i_mul_mmul8_ma3_cma_s0), .xout(i_mul_mmul8_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_mmul8_ma3_cma_q = $unsigned(i_mul_mmul8_ma3_cma_qq[32:0]);

    // i_mul_mmul8_sums_align_1(BITSHIFT,72)@5
    assign i_mul_mmul8_sums_align_1_qint = { i_mul_mmul8_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_mmul8_sums_align_1_q = i_mul_mmul8_sums_align_1_qint[50:0];

    // i_mul_mmul8_im0_cma(CHAINMULTADD,75)@2 + 3
    assign i_mul_mmul8_im0_cma_reset = ~ (resetn);
    assign i_mul_mmul8_im0_cma_ena0 = 1'b1;
    assign i_mul_mmul8_im0_cma_ena1 = i_mul_mmul8_im0_cma_ena0;
    assign i_mul_mmul8_im0_cma_ena2 = i_mul_mmul8_im0_cma_ena0;

    assign i_mul_mmul8_im0_cma_a0 = i_mul_mmul8_bs1_merged_bit_select_b;
    assign i_mul_mmul8_im0_cma_c0 = i_mul_mmul8_bs2_merged_bit_select_b;
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
    ) i_mul_mmul8_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_mmul8_im0_cma_ena2, i_mul_mmul8_im0_cma_ena1, i_mul_mmul8_im0_cma_ena0 }),
        .aclr({ i_mul_mmul8_im0_cma_reset, i_mul_mmul8_im0_cma_reset }),
        .ay(i_mul_mmul8_im0_cma_a0),
        .ax(i_mul_mmul8_im0_cma_c0),
        .resulta(i_mul_mmul8_im0_cma_s0),
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
    i_mul_mmul8_im0_cma_delay ( .xin(i_mul_mmul8_im0_cma_s0), .xout(i_mul_mmul8_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_mmul8_im0_cma_q = $unsigned(i_mul_mmul8_im0_cma_qq[27:0]);

    // i_mul_mmul8_im8_cma(CHAINMULTADD,76)@2 + 3
    assign i_mul_mmul8_im8_cma_reset = ~ (resetn);
    assign i_mul_mmul8_im8_cma_ena0 = 1'b1;
    assign i_mul_mmul8_im8_cma_ena1 = i_mul_mmul8_im8_cma_ena0;
    assign i_mul_mmul8_im8_cma_ena2 = i_mul_mmul8_im8_cma_ena0;

    assign i_mul_mmul8_im8_cma_a0 = i_mul_mmul8_bs1_merged_bit_select_c;
    assign i_mul_mmul8_im8_cma_c0 = i_mul_mmul8_bs2_merged_bit_select_c;
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
    ) i_mul_mmul8_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_mmul8_im8_cma_ena2, i_mul_mmul8_im8_cma_ena1, i_mul_mmul8_im8_cma_ena0 }),
        .aclr({ i_mul_mmul8_im8_cma_reset, i_mul_mmul8_im8_cma_reset }),
        .ay(i_mul_mmul8_im8_cma_a0),
        .ax(i_mul_mmul8_im8_cma_c0),
        .resulta(i_mul_mmul8_im8_cma_s0),
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
    i_mul_mmul8_im8_cma_delay ( .xin(i_mul_mmul8_im8_cma_s0), .xout(i_mul_mmul8_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_mmul8_im8_cma_q = $unsigned(i_mul_mmul8_im8_cma_qq[35:0]);

    // i_mul_mmul8_sums_join_0(BITJOIN,71)@5
    assign i_mul_mmul8_sums_join_0_q = {i_mul_mmul8_im0_cma_q, i_mul_mmul8_im8_cma_q};

    // i_mul_mmul8_sums_result_add_0_0(ADD,74)@5
    assign i_mul_mmul8_sums_result_add_0_0_a = {1'b0, i_mul_mmul8_sums_join_0_q};
    assign i_mul_mmul8_sums_result_add_0_0_b = {14'b00000000000000, i_mul_mmul8_sums_align_1_q};
    assign i_mul_mmul8_sums_result_add_0_0_o = $unsigned(i_mul_mmul8_sums_result_add_0_0_a) + $unsigned(i_mul_mmul8_sums_result_add_0_0_b);
    assign i_mul_mmul8_sums_result_add_0_0_q = i_mul_mmul8_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul_mmul8_sel_x(BITSELECT,47)@5
    assign bgTrunc_i_mul_mmul8_sel_x_in = i_mul_mmul8_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_mmul8_sel_x_b = bgTrunc_i_mul_mmul8_sel_x_in[31:0];

    // sync_out_aunroll_x(GPOUT,49)@5
    assign out_c0_exi3_0_tpl = GND_q;
    assign out_c0_exi3_1_tpl = bgTrunc_i_mul_mmul8_sel_x_b;
    assign out_c0_exi3_2_tpl = redist3_i_unnamed_mmul12_q_4_q;
    assign out_c0_exi3_3_tpl = i_notcmp16_mmul13_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_mmul3 = GND_q;

endmodule
