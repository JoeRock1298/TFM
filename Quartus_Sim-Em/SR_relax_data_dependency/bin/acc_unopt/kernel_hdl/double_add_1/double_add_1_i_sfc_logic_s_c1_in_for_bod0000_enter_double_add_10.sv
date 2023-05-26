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

// SystemVerilog created from double_add_1_i_sfc_logic_s_c1_in_for_bod0000_enter_double_add_10
// SystemVerilog created on Tue May 23 13:55:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_1_i_sfc_logic_s_c1_in_for_bod0000_enter_double_add_10 (
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_double_add_13,
    output wire [0:0] out_unnamed_double_add_15_0_tpl,
    input wire [0:0] in_c1_eni4_0_tpl,
    input wire [0:0] in_c1_eni4_1_tpl,
    input wire [63:0] in_c1_eni4_2_tpl,
    input wire [0:0] in_c1_eni4_3_tpl,
    input wire [0:0] in_c1_eni4_4_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_double_0_000000e_0010_q;
    wire [63:0] i_add_double_add_13_out_primWireOut;
    wire [63:0] i_llvm_fpga_ffwd_source_f64_unnamed_double_add_14_double_add_15_out_intel_reserved_ffwd_2_0;
    wire [63:0] i_llvm_fpga_pop_f64_temp_sum_07_pop5_double_add_12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f64_temp_sum_07_pop5_double_add_12_out_feedback_stall_out_5;
    wire [63:0] i_llvm_fpga_push_f64_temp_sum_07_push5_double_add_14_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_f64_temp_sum_07_push5_double_add_14_out_feedback_valid_out_5;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    reg [0:0] redist0_sync_together13_aunroll_x_in_c1_eni4_1_tpl_1_q;
    reg [63:0] redist1_sync_together13_aunroll_x_in_c1_eni4_2_tpl_1_q;
    reg [0:0] redist2_sync_together13_aunroll_x_in_c1_eni4_3_tpl_11_q;
    reg [0:0] redist3_sync_together13_aunroll_x_in_c1_eni4_4_tpl_11_q;
    reg [0:0] redist4_sync_together13_aunroll_x_in_i_valid_10_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist4_sync_together13_aunroll_x_in_i_valid_10(DELAY,22)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist4_sync_together13_aunroll_x_in_i_valid_10 ( .xin(in_i_valid), .xout(redist4_sync_together13_aunroll_x_in_i_valid_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg3(REG,17)@26 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist4_sync_together13_aunroll_x_in_i_valid_10_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist1_sync_together13_aunroll_x_in_c1_eni4_2_tpl_1(DELAY,19)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together13_aunroll_x_in_c1_eni4_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together13_aunroll_x_in_c1_eni4_2_tpl_1_q <= $unsigned(in_c1_eni4_2_tpl);
        end
    end

    // valid_fanout_reg1(REG,15)@16 + 1
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

    // valid_fanout_reg2(REG,16)@26 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist4_sync_together13_aunroll_x_in_i_valid_10_q);
        end
    end

    // redist2_sync_together13_aunroll_x_in_c1_eni4_3_tpl_11(DELAY,20)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist2_sync_together13_aunroll_x_in_c1_eni4_3_tpl_11 ( .xin(in_c1_eni4_3_tpl), .xout(redist2_sync_together13_aunroll_x_in_c1_eni4_3_tpl_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_f64_temp_sum_07_push5_double_add_14(BLACKBOX,9)@27
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    double_add_1_i_llvm_fpga_push_f64_temp_sum_07_push5_0 thei_llvm_fpga_push_f64_temp_sum_07_push5_double_add_14 (
        .in_c1_ene3(redist2_sync_together13_aunroll_x_in_c1_eni4_3_tpl_11_q),
        .in_data_in(i_add_double_add_13_out_primWireOut),
        .in_feedback_stall_in_5(i_llvm_fpga_pop_f64_temp_sum_07_pop5_double_add_12_out_feedback_stall_out_5),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_f64_temp_sum_07_push5_double_add_14_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_f64_temp_sum_07_push5_double_add_14_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together13_aunroll_x_in_c1_eni4_1_tpl_1(DELAY,18)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together13_aunroll_x_in_c1_eni4_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together13_aunroll_x_in_c1_eni4_1_tpl_1_q <= $unsigned(in_c1_eni4_1_tpl);
        end
    end

    // c_double_0_000000e_0010(FLOATCONSTANT,2)
    assign c_double_0_000000e_0010_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_pop_f64_temp_sum_07_pop5_double_add_12(BLACKBOX,8)@17
    // out out_feedback_stall_out_5@20000000
    double_add_1_i_llvm_fpga_pop_f64_temp_sum_07_pop5_0 thei_llvm_fpga_pop_f64_temp_sum_07_pop5_double_add_12 (
        .in_data_in(c_double_0_000000e_0010_q),
        .in_dir(redist0_sync_together13_aunroll_x_in_c1_eni4_1_tpl_1_q),
        .in_feedback_in_5(i_llvm_fpga_push_f64_temp_sum_07_push5_double_add_14_out_feedback_out_5),
        .in_feedback_valid_in_5(i_llvm_fpga_push_f64_temp_sum_07_push5_double_add_14_out_feedback_valid_out_5),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_f64_temp_sum_07_pop5_double_add_12_out_data_out),
        .out_feedback_stall_out_5(i_llvm_fpga_pop_f64_temp_sum_07_pop5_double_add_12_out_feedback_stall_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add_double_add_13(BLACKBOX,6)@17
    // out out_primWireOut@27
    double_add_1_flt_i_sfc_logic_s_c1_in_for0000cdd6oq3cd06o20cp0doz thei_add_double_add_13 (
        .in_0(i_llvm_fpga_pop_f64_temp_sum_07_pop5_double_add_12_out_data_out),
        .in_1(redist1_sync_together13_aunroll_x_in_c1_eni4_2_tpl_1_q),
        .out_primWireOut(i_add_double_add_13_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together13_aunroll_x_in_c1_eni4_4_tpl_11(DELAY,21)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist3_sync_together13_aunroll_x_in_c1_eni4_4_tpl_11 ( .xin(in_c1_eni4_4_tpl), .xout(redist3_sync_together13_aunroll_x_in_c1_eni4_4_tpl_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_f64_unnamed_double_add_14_double_add_15(BLACKBOX,7)@27
    // out out_intel_reserved_ffwd_2_0@20000000
    double_add_1_i_llvm_fpga_ffwd_source_f64_unnamed_4_double_add_10 thei_llvm_fpga_ffwd_source_f64_unnamed_double_add_14_double_add_15 (
        .in_predicate_in(redist3_sync_together13_aunroll_x_in_c1_eni4_4_tpl_11_q),
        .in_src_data_in_2_0(i_add_double_add_13_out_primWireOut),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_f64_unnamed_double_add_14_double_add_15_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,10)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_f64_unnamed_double_add_14_double_add_15_out_intel_reserved_ffwd_2_0;

    // valid_fanout_reg0(REG,14)@26 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist4_sync_together13_aunroll_x_in_i_valid_10_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,12)@27
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_double_add_13 = GND_q;
    assign out_unnamed_double_add_15_0_tpl = GND_q;

endmodule
