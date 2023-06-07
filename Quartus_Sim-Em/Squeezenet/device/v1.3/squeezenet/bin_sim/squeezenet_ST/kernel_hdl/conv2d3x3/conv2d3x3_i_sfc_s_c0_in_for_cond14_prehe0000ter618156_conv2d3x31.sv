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

// SystemVerilog created from conv2d3x3_i_sfc_s_c0_in_for_cond14_prehe0000ter618156_conv2d3x31
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_i_sfc_s_c0_in_for_cond14_prehe0000ter618156_conv2d3x31 (
    input wire [31:0] in_input_channels,
    input wire [31:0] in_input_size,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_intel_reserved_ffwd_4_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_c0_eni2617_0_tpl,
    input wire [31:0] in_c0_eni2617_1_tpl,
    input wire [31:0] in_c0_eni2617_2_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit626_0_tpl,
    output wire [0:0] out_c0_exit626_1_tpl,
    output wire [31:0] out_c0_exit626_2_tpl,
    output wire [31:0] out_c0_exit626_3_tpl,
    output wire [31:0] out_c0_exit626_4_tpl,
    output wire [0:0] out_c0_exit626_5_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_conv2d3x3s_c0_exit626_conv2d3x31_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_conv2d3x3s_c0_exit626_conv2d3x31_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_conv2d3x3s_c0_exit626_conv2d3x31_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_conv2d3x3s_c0_exit626_conv2d3x31_aunroll_x_out_data_out_1_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_conv2d3x3s_c0_exit626_conv2d3x31_aunroll_x_out_data_out_2_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_conv2d3x3s_c0_exit626_conv2d3x31_aunroll_x_out_data_out_3_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_conv2d3x3s_c0_exit626_conv2d3x31_aunroll_x_out_data_out_4_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_conv2d3x3s_c0_exit626_conv2d3x31_aunroll_x_out_data_out_5_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x30_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x30_aunroll_x_out_c0_exi5625_0_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x30_aunroll_x_out_c0_exi5625_1_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x30_aunroll_x_out_c0_exi5625_2_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x30_aunroll_x_out_c0_exi5625_3_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x30_aunroll_x_out_c0_exi5625_4_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x30_aunroll_x_out_c0_exi5625_5_tpl;


    // i_sfc_logic_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x30_aunroll_x(BLACKBOX,12)@1
    // out out_o_valid@9
    // out out_unnamed_conv2d3x311@9
    // out out_c0_exi5625_0_tpl@9
    // out out_c0_exi5625_1_tpl@9
    // out out_c0_exi5625_2_tpl@9
    // out out_c0_exi5625_3_tpl@9
    // out out_c0_exi5625_4_tpl@9
    // out out_c0_exi5625_5_tpl@9
    conv2d3x3_i_sfc_logic_s_c0_in_for_cond140000ter618156_conv2d3x30 thei_sfc_logic_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x30_aunroll_x (
        .in_i_valid(input_accepted_and_q),
        .in_input_channels(in_input_channels),
        .in_input_size(in_input_size),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_c0_eni2617_0_tpl(in_c0_eni2617_0_tpl),
        .in_c0_eni2617_1_tpl(in_c0_eni2617_1_tpl),
        .in_c0_eni2617_2_tpl(in_c0_eni2617_2_tpl),
        .out_o_valid(i_sfc_logic_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x30_aunroll_x_out_o_valid),
        .out_unnamed_conv2d3x311(),
        .out_c0_exi5625_0_tpl(i_sfc_logic_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x30_aunroll_x_out_c0_exi5625_0_tpl),
        .out_c0_exi5625_1_tpl(i_sfc_logic_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x30_aunroll_x_out_c0_exi5625_1_tpl),
        .out_c0_exi5625_2_tpl(i_sfc_logic_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x30_aunroll_x_out_c0_exi5625_2_tpl),
        .out_c0_exi5625_3_tpl(i_sfc_logic_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x30_aunroll_x_out_c0_exi5625_3_tpl),
        .out_c0_exi5625_4_tpl(i_sfc_logic_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x30_aunroll_x_out_c0_exi5625_4_tpl),
        .out_c0_exi5625_5_tpl(i_sfc_logic_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x30_aunroll_x_out_c0_exi5625_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_conv2d3x3s_c0_exit626_conv2d3x31_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_conv2d3x3s_c0_exit626_conv2d3x31_aunroll_x(BLACKBOX,11)@9
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@12
    // out out_data_out_0_tpl@12
    // out out_data_out_1_tpl@12
    // out out_data_out_2_tpl@12
    // out out_data_out_3_tpl@12
    // out out_data_out_4_tpl@12
    // out out_data_out_5_tpl@12
    conv2d3x3_i_llvm_fpga_sfc_exit_s_c0_out_00000_exit626_conv2d3x30 thei_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_conv2d3x3s_c0_exit626_conv2d3x31_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x30_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x30_aunroll_x_out_c0_exi5625_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x30_aunroll_x_out_c0_exi5625_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x30_aunroll_x_out_c0_exi5625_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x30_aunroll_x_out_c0_exi5625_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x30_aunroll_x_out_c0_exi5625_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x30_aunroll_x_out_c0_exi5625_5_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_conv2d3x3s_c0_exit626_conv2d3x31_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_conv2d3x3s_c0_exit626_conv2d3x31_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_conv2d3x3s_c0_exit626_conv2d3x31_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_conv2d3x3s_c0_exit626_conv2d3x31_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_conv2d3x3s_c0_exit626_conv2d3x31_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_conv2d3x3s_c0_exit626_conv2d3x31_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_conv2d3x3s_c0_exit626_conv2d3x31_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_conv2d3x3s_c0_exit626_conv2d3x31_aunroll_x_out_data_out_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,10)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_conv2d3x3s_c0_exit626_conv2d3x31_aunroll_x_out_stall_entry;

    // dupName_0_sync_out_aunroll_x(GPOUT,14)@12
    assign out_c0_exit626_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_conv2d3x3s_c0_exit626_conv2d3x31_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit626_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_conv2d3x3s_c0_exit626_conv2d3x31_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit626_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_conv2d3x3s_c0_exit626_conv2d3x31_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit626_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_conv2d3x3s_c0_exit626_conv2d3x31_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit626_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_conv2d3x3s_c0_exit626_conv2d3x31_aunroll_x_out_data_out_4_tpl;
    assign out_c0_exit626_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_conv2d3x3s_c0_exit626_conv2d3x31_aunroll_x_out_data_out_5_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_conv2d3x3s_c0_exit626_conv2d3x31_aunroll_x_out_valid_out;

endmodule
