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

// SystemVerilog created from conv2d3x3_i_sfc_s_c0_in_entry_s_c0_enter_conv2d3x31
// SystemVerilog created on Tue May 30 12:33:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_i_sfc_s_c0_in_entry_s_c0_enter_conv2d3x31 (
    input wire [31:0] in_output_size,
    input wire [31:0] in_start_channel,
    input wire [31:0] in_filter_size,
    input wire [63:0] in_filter_weight,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_output_im,
    output wire [0:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [0:0] out_intel_reserved_ffwd_4_0,
    output wire [0:0] out_intel_reserved_ffwd_5_0,
    output wire [32:0] out_intel_reserved_ffwd_6_0,
    output wire [32:0] out_intel_reserved_ffwd_7_0,
    output wire [63:0] out_intel_reserved_ffwd_8_0,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_unnamed_conv2d3x30_0_tpl,
    output wire [0:0] out_c0_exit_0_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_conv2d3x3s_c0_exit_conv2d3x31_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_conv2d3x3s_c0_exit_conv2d3x31_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_conv2d3x3s_c0_exit_conv2d3x31_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_intel_reserved_ffwd_0_0;
    wire [63:0] i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_intel_reserved_ffwd_2_0;
    wire [31:0] i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_intel_reserved_ffwd_5_0;
    wire [32:0] i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_intel_reserved_ffwd_6_0;
    wire [32:0] i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_intel_reserved_ffwd_7_0;
    wire [63:0] i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_intel_reserved_ffwd_8_0;
    wire [0:0] i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_o_valid;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_entry_conv2d3x3s_c0_exit_conv2d3x31_aunroll_x(BLACKBOX,22)@9
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@12
    // out out_data_out_0_tpl@12
    conv2d3x3_i_llvm_fpga_sfc_exit_s_c0_out_0000s_c0_exit_conv2d3x30 thei_llvm_fpga_sfc_exit_s_c0_out_entry_conv2d3x3s_c0_exit_conv2d3x31_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(GND_q),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_entry_conv2d3x3s_c0_exit_conv2d3x31_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_entry_conv2d3x3s_c0_exit_conv2d3x31_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_entry_conv2d3x3s_c0_exit_conv2d3x31_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_entry_conv2d3x3s_c0_exit_conv2d3x31_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x(BLACKBOX,23)@1
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_intel_reserved_ffwd_6_0@20000000
    // out out_intel_reserved_ffwd_7_0@20000000
    // out out_intel_reserved_ffwd_8_0@20000000
    // out out_o_valid@9
    // out out_unnamed_conv2d3x311@9
    // out out_unnamed_conv2d3x310_0_tpl@9
    conv2d3x3_i_sfc_logic_s_c0_in_entry_s_c0_enter_conv2d3x30 thei_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x (
        .in_filter_size(in_filter_size),
        .in_filter_weight(in_filter_weight),
        .in_i_valid(input_accepted_and_q),
        .in_input_channels(in_input_channels),
        .in_output_im(in_output_im),
        .in_output_size(in_output_size),
        .in_start_channel(in_start_channel),
        .out_intel_reserved_ffwd_0_0(i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_intel_reserved_ffwd_8_0),
        .out_o_valid(i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_o_valid),
        .out_unnamed_conv2d3x311(),
        .out_unnamed_conv2d3x310_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,11)
    assign out_intel_reserved_ffwd_0_0 = i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,13)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_entry_conv2d3x3s_c0_exit_conv2d3x31_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,14)
    assign out_intel_reserved_ffwd_1_0 = i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_intel_reserved_ffwd_1_0;

    // dupName_1_regfree_osync_x(GPOUT,15)
    assign out_intel_reserved_ffwd_2_0 = i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_intel_reserved_ffwd_2_0;

    // dupName_2_regfree_osync_x(GPOUT,16)
    assign out_intel_reserved_ffwd_3_0 = i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_intel_reserved_ffwd_3_0;

    // dupName_3_regfree_osync_x(GPOUT,17)
    assign out_intel_reserved_ffwd_4_0 = i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_intel_reserved_ffwd_4_0;

    // dupName_4_regfree_osync_x(GPOUT,18)
    assign out_intel_reserved_ffwd_5_0 = i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_intel_reserved_ffwd_5_0;

    // dupName_5_regfree_osync_x(GPOUT,19)
    assign out_intel_reserved_ffwd_6_0 = i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_intel_reserved_ffwd_6_0;

    // dupName_6_regfree_osync_x(GPOUT,20)
    assign out_intel_reserved_ffwd_7_0 = i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_intel_reserved_ffwd_7_0;

    // dupName_7_regfree_osync_x(GPOUT,21)
    assign out_intel_reserved_ffwd_8_0 = i_sfc_logic_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x30_aunroll_x_out_intel_reserved_ffwd_8_0;

    // dupName_0_sync_out_aunroll_x(GPOUT,25)@12
    assign out_c0_exit_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_entry_conv2d3x3s_c0_exit_conv2d3x31_aunroll_x_out_data_out_0_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_entry_conv2d3x3s_c0_exit_conv2d3x31_aunroll_x_out_valid_out;

endmodule
