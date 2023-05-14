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

// SystemVerilog created from mmul_i_sfc_logic_s_c0_in_for_body_s_c0_enter224_mmul0
// SystemVerilog created on Tue May  9 13:46:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_i_sfc_logic_s_c0_in_for_body_s_c0_enter224_mmul0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going10_mmul2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going10_mmul2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_N,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    output wire [0:0] out_c0_exi4_0_tpl,
    output wire [31:0] out_c0_exi4_1_tpl,
    output wire [0:0] out_c0_exi4_2_tpl,
    output wire [0:0] out_c0_exi4_3_tpl,
    output wire [31:0] out_c0_exi4_4_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_mmul6,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_029_q;
    wire [31:0] c_i32_130_q;
    wire [32:0] c_i33_128_q;
    wire [32:0] c_i33_undef26_q;
    wire [0:0] i_fpga_indvars_iv18_replace_phi_mmul5_s;
    reg [32:0] i_fpga_indvars_iv18_replace_phi_mmul5_q;
    wire [33:0] i_fpga_indvars_iv_next19_mmul11_a;
    wire [33:0] i_fpga_indvars_iv_next19_mmul11_b;
    logic [33:0] i_fpga_indvars_iv_next19_mmul11_o;
    wire [33:0] i_fpga_indvars_iv_next19_mmul11_q;
    wire [32:0] i_inc16_mmul14_a;
    wire [32:0] i_inc16_mmul14_b;
    logic [32:0] i_inc16_mmul14_o;
    wire [32:0] i_inc16_mmul14_q;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_mmul7_mmul3_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going10_mmul2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going10_mmul2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going10_mmul2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going10_mmul2_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_027_pop6_mmul13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_027_pop6_mmul13_out_feedback_stall_out_6;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv18_pop5_mmul4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv18_pop5_mmul4_out_feedback_stall_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond11_mmul10_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond11_mmul10_out_feedback_valid_out_4;
    wire [31:0] i_llvm_fpga_push_i32_i_027_push6_mmul15_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i32_i_027_push6_mmul15_out_feedback_valid_out_6;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv18_push5_mmul12_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv18_push5_mmul12_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul6_out_buffer_out;
    wire [0:0] i_notcmp9_mmul9_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next19_mmul11_sel_x_b;
    wire [31:0] bgTrunc_i_inc16_mmul14_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    wire [0:0] i_exitcond20_mmul7_cmp_nsign_q;
    reg [0:0] redist0_i_exitcond20_mmul7_cmp_nsign_q_1_q;
    reg [0:0] redist1_sync_together42_aunroll_x_in_c0_eni1_1_tpl_1_q;


    // i_llvm_fpga_ffwd_dest_i33_unnamed_mmul7_mmul3(BLACKBOX,24)@1
    mmul_i_llvm_fpga_ffwd_dest_i33_unnamed_7_mmul0 thei_llvm_fpga_ffwd_dest_i33_unnamed_mmul7_mmul3 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i33_unnamed_mmul7_mmul3_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_128(CONSTANT,17)
    assign c_i33_128_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next19_mmul11(ADD,22)@1
    assign i_fpga_indvars_iv_next19_mmul11_a = {1'b0, i_fpga_indvars_iv18_replace_phi_mmul5_q};
    assign i_fpga_indvars_iv_next19_mmul11_b = {1'b0, c_i33_128_q};
    assign i_fpga_indvars_iv_next19_mmul11_o = $unsigned(i_fpga_indvars_iv_next19_mmul11_a) + $unsigned(i_fpga_indvars_iv_next19_mmul11_b);
    assign i_fpga_indvars_iv_next19_mmul11_q = i_fpga_indvars_iv_next19_mmul11_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next19_mmul11_sel_x(BITSELECT,39)@1
    assign bgTrunc_i_fpga_indvars_iv_next19_mmul11_sel_x_b = i_fpga_indvars_iv_next19_mmul11_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv18_push5_mmul12(BLACKBOX,30)@1
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    mmul_i_llvm_fpga_push_i33_fpga_indvars_iv18_push5_0 thei_llvm_fpga_push_i33_fpga_indvars_iv18_push5_mmul12 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next19_mmul11_sel_x_b),
        .in_exitcond20(i_exitcond20_mmul7_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pop_i33_fpga_indvars_iv18_pop5_mmul4_out_feedback_stall_out_5),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i33_fpga_indvars_iv18_push5_mmul12_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i33_fpga_indvars_iv18_push5_mmul12_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef26(CONSTANT,18)
    assign c_i33_undef26_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv18_pop5_mmul4(BLACKBOX,27)@1
    // out out_feedback_stall_out_5@20000000
    mmul_i_llvm_fpga_pop_i33_fpga_indvars_iv18_pop5_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv18_pop5_mmul4 (
        .in_data_in(c_i33_undef26_q),
        .in_dir(in_c0_eni1_1_tpl),
        .in_feedback_in_5(i_llvm_fpga_push_i33_fpga_indvars_iv18_push5_mmul12_out_feedback_out_5),
        .in_feedback_valid_in_5(i_llvm_fpga_push_i33_fpga_indvars_iv18_push5_mmul12_out_feedback_valid_out_5),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv18_pop5_mmul4_out_data_out),
        .out_feedback_stall_out_5(i_llvm_fpga_pop_i33_fpga_indvars_iv18_pop5_mmul4_out_feedback_stall_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv18_replace_phi_mmul5(MUX,21)@1
    assign i_fpga_indvars_iv18_replace_phi_mmul5_s = in_c0_eni1_1_tpl;
    always @(i_fpga_indvars_iv18_replace_phi_mmul5_s or i_llvm_fpga_pop_i33_fpga_indvars_iv18_pop5_mmul4_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_mmul7_mmul3_out_dest_data_out_3_0)
    begin
        unique case (i_fpga_indvars_iv18_replace_phi_mmul5_s)
            1'b0 : i_fpga_indvars_iv18_replace_phi_mmul5_q = i_llvm_fpga_pop_i33_fpga_indvars_iv18_pop5_mmul4_out_data_out;
            1'b1 : i_fpga_indvars_iv18_replace_phi_mmul5_q = i_llvm_fpga_ffwd_dest_i33_unnamed_mmul7_mmul3_out_dest_data_out_3_0;
            default : i_fpga_indvars_iv18_replace_phi_mmul5_q = 33'b0;
        endcase
    end

    // i_exitcond20_mmul7_cmp_nsign(LOGICAL,51)@1
    assign i_exitcond20_mmul7_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv18_replace_phi_mmul5_q[32:32]));

    // i_llvm_fpga_push_i1_notexitcond11_mmul10(BLACKBOX,28)@1
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    mmul_i_llvm_fpga_push_i1_notexitcond11_0 thei_llvm_fpga_push_i1_notexitcond11_mmul10 (
        .in_data_in(i_exitcond20_mmul7_cmp_nsign_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going10_mmul2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_notexitcond11_mmul10_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_notexitcond11_mmul10_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going10_mmul2(BLACKBOX,25)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    mmul_i_llvm_fpga_pipeline_keep_going10_0 thei_llvm_fpga_pipeline_keep_going10_mmul2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond11_mmul10_out_feedback_out_4),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond11_mmul10_out_feedback_valid_out_4),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going10_mmul2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going10_mmul2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going10_mmul2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going10_mmul2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,19)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going10_mmul2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going10_mmul2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going10_mmul2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going10_mmul2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,35)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going10_mmul2_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,44)@1 + 1
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

    // valid_fanout_reg2(REG,46)@1 + 1
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

    // valid_fanout_reg3(REG,47)@1 + 1
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

    // c_i32_130(CONSTANT,16)
    assign c_i32_130_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc16_mmul14(ADD,23)@2
    assign i_inc16_mmul14_a = {1'b0, i_llvm_fpga_pop_i32_i_027_pop6_mmul13_out_data_out};
    assign i_inc16_mmul14_b = {1'b0, c_i32_130_q};
    assign i_inc16_mmul14_o = $unsigned(i_inc16_mmul14_a) + $unsigned(i_inc16_mmul14_b);
    assign i_inc16_mmul14_q = i_inc16_mmul14_o[32:0];

    // bgTrunc_i_inc16_mmul14_sel_x(BITSELECT,40)@2
    assign bgTrunc_i_inc16_mmul14_sel_x_b = i_inc16_mmul14_q[31:0];

    // i_llvm_fpga_push_i32_i_027_push6_mmul15(BLACKBOX,29)@2
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    mmul_i_llvm_fpga_push_i32_i_027_push6_0 thei_llvm_fpga_push_i32_i_027_push6_mmul15 (
        .in_data_in(bgTrunc_i_inc16_mmul14_sel_x_b),
        .in_exitcond20(redist0_i_exitcond20_mmul7_cmp_nsign_q_1_q),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i32_i_027_pop6_mmul13_out_feedback_stall_out_6),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i32_i_027_push6_mmul15_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i32_i_027_push6_mmul15_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together42_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,53)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together42_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together42_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // c_i32_029(CONSTANT,15)
    assign c_i32_029_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i_027_pop6_mmul13(BLACKBOX,26)@2
    // out out_feedback_stall_out_6@20000000
    mmul_i_llvm_fpga_pop_i32_i_027_pop6_0 thei_llvm_fpga_pop_i32_i_027_pop6_mmul13 (
        .in_data_in(c_i32_029_q),
        .in_dir(redist1_sync_together42_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_6(i_llvm_fpga_push_i32_i_027_push6_mmul15_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i32_i_027_push6_mmul15_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_027_pop6_mmul13_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i32_i_027_pop6_mmul13_out_feedback_stall_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp9_mmul9(LOGICAL,32)@2
    assign i_notcmp9_mmul9_q = redist0_i_exitcond20_mmul7_cmp_nsign_q_1_q ^ VCC_q;

    // redist0_i_exitcond20_mmul7_cmp_nsign_q_1(DELAY,52)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond20_mmul7_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist0_i_exitcond20_mmul7_cmp_nsign_q_1_q <= $unsigned(i_exitcond20_mmul7_cmp_nsign_q);
        end
    end

    // valid_fanout_reg1(REG,45)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul6(BLACKBOX,31)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    mmul_i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_0 thei_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul6 (
        .in_buffer_in(in_N),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul6_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out_aunroll_x(GPOUT,42)@2
    assign out_c0_exi4_0_tpl = GND_q;
    assign out_c0_exi4_1_tpl = i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul6_out_buffer_out;
    assign out_c0_exi4_2_tpl = redist0_i_exitcond20_mmul7_cmp_nsign_q_1_q;
    assign out_c0_exi4_3_tpl = i_notcmp9_mmul9_q;
    assign out_c0_exi4_4_tpl = i_llvm_fpga_pop_i32_i_027_pop6_mmul13_out_data_out;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_mmul6 = GND_q;

endmodule
