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

// SystemVerilog created from double_add_2_i_sfc_s_c0_in_for_body5_s_c0_enter108_double_add_25
// SystemVerilog created on Tue May 23 13:58:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_2_i_sfc_s_c0_in_for_body5_s_c0_enter108_double_add_25 (
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_intel_reserved_ffwd_5_0,
    input wire [63:0] in_intel_reserved_ffwd_6_0,
    input wire [63:0] in_intel_reserved_ffwd_7_0,
    input wire [63:0] in_intel_reserved_ffwd_8_0,
    input wire [63:0] in_intel_reserved_ffwd_9_0,
    input wire [63:0] in_intel_reserved_ffwd_10_0,
    input wire [63:0] in_intel_reserved_ffwd_11_0,
    input wire [63:0] in_intel_reserved_ffwd_12_0,
    input wire [63:0] in_intel_reserved_ffwd_13_0,
    output wire [63:0] out_intel_reserved_ffwd_14_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [63:0] out_intel_reserved_ffwd_15_0,
    output wire [63:0] out_intel_reserved_ffwd_16_0,
    output wire [63:0] out_intel_reserved_ffwd_17_0,
    output wire [63:0] out_intel_reserved_ffwd_18_0,
    output wire [63:0] out_intel_reserved_ffwd_19_0,
    output wire [63:0] out_intel_reserved_ffwd_20_0,
    output wire [63:0] out_intel_reserved_ffwd_21_0,
    output wire [63:0] out_intel_reserved_ffwd_22_0,
    output wire [63:0] out_intel_reserved_ffwd_23_0,
    output wire [63:0] out_intel_reserved_ffwd_24_0,
    output wire [63:0] out_intel_reserved_ffwd_25_0,
    input wire [0:0] in_c0_eni4_0_tpl,
    input wire [0:0] in_c0_eni4_1_tpl,
    input wire [0:0] in_c0_eni4_2_tpl,
    input wire [63:0] in_c0_eni4_3_tpl,
    input wire [0:0] in_c0_eni4_4_tpl,
    input wire [0:0] in_c1_exe2,
    input wire [0:0] in_c1_exe6,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit110_0_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_double_add_2s_c0_exit110_double_add_21_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_double_add_2s_c0_exit110_double_add_21_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_double_add_2s_c0_exit110_double_add_21_aunroll_x_out_data_out_0_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_14_0;
    wire [63:0] i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_15_0;
    wire [63:0] i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_16_0;
    wire [63:0] i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_17_0;
    wire [63:0] i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_18_0;
    wire [63:0] i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_19_0;
    wire [63:0] i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_20_0;
    wire [63:0] i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_21_0;
    wire [63:0] i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_22_0;
    wire [63:0] i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_23_0;
    wire [63:0] i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_24_0;
    wire [63:0] i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_25_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_o_valid;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body5_double_add_2s_c0_exit110_double_add_21_aunroll_x(BLACKBOX,31)@19
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@22
    // out out_data_out_0_tpl@22
    double_add_2_i_llvm_fpga_sfc_exit_s_c0_o0000xit110_double_add_20 thei_llvm_fpga_sfc_exit_s_c0_out_for_body5_double_add_2s_c0_exit110_double_add_21_aunroll_x (
        .in_dec_pipelined_thread(in_c1_exe2),
        .in_inc_pipelined_thread(in_c1_exe6),
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(GND_q),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_double_add_2s_c0_exit110_double_add_21_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_double_add_2s_c0_exit110_double_add_21_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_double_add_2s_c0_exit110_double_add_21_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_body5_double_add_2s_c0_exit110_double_add_21_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x(BLACKBOX,32)@8
    // out out_intel_reserved_ffwd_14_0@20000000
    // out out_intel_reserved_ffwd_15_0@20000000
    // out out_intel_reserved_ffwd_16_0@20000000
    // out out_intel_reserved_ffwd_17_0@20000000
    // out out_intel_reserved_ffwd_18_0@20000000
    // out out_intel_reserved_ffwd_19_0@20000000
    // out out_intel_reserved_ffwd_20_0@20000000
    // out out_intel_reserved_ffwd_21_0@20000000
    // out out_intel_reserved_ffwd_22_0@20000000
    // out out_intel_reserved_ffwd_23_0@20000000
    // out out_intel_reserved_ffwd_24_0@20000000
    // out out_intel_reserved_ffwd_25_0@20000000
    // out out_o_valid@19
    // out out_unnamed_double_add_214@19
    // out out_unnamed_double_add_231_0_tpl@19
    double_add_2_i_sfc_logic_s_c0_in_for_bod0000ter108_double_add_20 thei_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x (
        .in_i_valid(input_accepted_and_q),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_c0_eni4_0_tpl(in_c0_eni4_0_tpl),
        .in_c0_eni4_1_tpl(in_c0_eni4_1_tpl),
        .in_c0_eni4_2_tpl(in_c0_eni4_2_tpl),
        .in_c0_eni4_3_tpl(in_c0_eni4_3_tpl),
        .in_c0_eni4_4_tpl(in_c0_eni4_4_tpl),
        .out_intel_reserved_ffwd_14_0(i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_20_0(i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_22_0(i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_24_0),
        .out_intel_reserved_ffwd_25_0(i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_25_0),
        .out_o_valid(i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_o_valid),
        .out_unnamed_double_add_214(),
        .out_unnamed_double_add_231_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,17)
    assign out_intel_reserved_ffwd_14_0 = i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_14_0;

    // sync_out(GPOUT,19)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_double_add_2s_c0_exit110_double_add_21_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,20)
    assign out_intel_reserved_ffwd_15_0 = i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_15_0;

    // dupName_1_regfree_osync_x(GPOUT,21)
    assign out_intel_reserved_ffwd_16_0 = i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_16_0;

    // dupName_2_regfree_osync_x(GPOUT,22)
    assign out_intel_reserved_ffwd_17_0 = i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_17_0;

    // dupName_3_regfree_osync_x(GPOUT,23)
    assign out_intel_reserved_ffwd_18_0 = i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_18_0;

    // dupName_4_regfree_osync_x(GPOUT,24)
    assign out_intel_reserved_ffwd_19_0 = i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_19_0;

    // dupName_5_regfree_osync_x(GPOUT,25)
    assign out_intel_reserved_ffwd_20_0 = i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_20_0;

    // dupName_6_regfree_osync_x(GPOUT,26)
    assign out_intel_reserved_ffwd_21_0 = i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_21_0;

    // dupName_7_regfree_osync_x(GPOUT,27)
    assign out_intel_reserved_ffwd_22_0 = i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_22_0;

    // dupName_8_regfree_osync_x(GPOUT,28)
    assign out_intel_reserved_ffwd_23_0 = i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_23_0;

    // dupName_9_regfree_osync_x(GPOUT,29)
    assign out_intel_reserved_ffwd_24_0 = i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_24_0;

    // dupName_10_regfree_osync_x(GPOUT,30)
    assign out_intel_reserved_ffwd_25_0 = i_sfc_logic_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_20_aunroll_x_out_intel_reserved_ffwd_25_0;

    // dupName_0_sync_out_aunroll_x(GPOUT,34)@22
    assign out_c0_exit110_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_double_add_2s_c0_exit110_double_add_21_aunroll_x_out_data_out_0_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_double_add_2s_c0_exit110_double_add_21_aunroll_x_out_valid_out;

endmodule
