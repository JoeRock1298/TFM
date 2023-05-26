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

// SystemVerilog created from conv2d1x1_i_sfc_s_c1_in_for_body14_s_c1_enter821_conv2d1x16
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_s_c1_in_for_body14_s_c1_enter821_conv2d1x16 (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_c1_exit846_0_tpl,
    output wire [31:0] out_c1_exit846_1_tpl,
    output wire [31:0] out_c1_exit846_2_tpl,
    output wire [31:0] out_c1_exit846_3_tpl,
    output wire [31:0] out_c1_exit846_4_tpl,
    output wire [31:0] out_c1_exit846_5_tpl,
    output wire [31:0] out_c1_exit846_6_tpl,
    output wire [31:0] out_c1_exit846_7_tpl,
    output wire [31:0] out_c1_exit846_8_tpl,
    output wire [31:0] out_c1_exit846_9_tpl,
    output wire [31:0] out_c1_exit846_10_tpl,
    output wire [31:0] out_c1_exit846_11_tpl,
    output wire [31:0] out_c1_exit846_12_tpl,
    output wire [31:0] out_c1_exit846_13_tpl,
    output wire [31:0] out_c1_exit846_14_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_c0_exe26748,
    input wire [0:0] in_c0_exe4726,
    input wire [0:0] in_c1_eni23820_0_tpl,
    input wire [0:0] in_c1_eni23820_1_tpl,
    input wire [0:0] in_c1_eni23820_2_tpl,
    input wire [31:0] in_c1_eni23820_3_tpl,
    input wire [0:0] in_c1_eni23820_4_tpl,
    input wire [31:0] in_c1_eni23820_5_tpl,
    input wire [31:0] in_c1_eni23820_6_tpl,
    input wire [31:0] in_c1_eni23820_7_tpl,
    input wire [31:0] in_c1_eni23820_8_tpl,
    input wire [31:0] in_c1_eni23820_9_tpl,
    input wire [31:0] in_c1_eni23820_10_tpl,
    input wire [31:0] in_c1_eni23820_11_tpl,
    input wire [31:0] in_c1_eni23820_12_tpl,
    input wire [31:0] in_c1_eni23820_13_tpl,
    input wire [31:0] in_c1_eni23820_14_tpl,
    input wire [31:0] in_c1_eni23820_15_tpl,
    input wire [0:0] in_c1_eni23820_16_tpl,
    input wire [0:0] in_c1_eni23820_17_tpl,
    input wire [31:0] in_c1_eni23820_0_18_tpl,
    input wire [31:0] in_c1_eni23820_1_18_tpl,
    input wire [31:0] in_c1_eni23820_2_18_tpl,
    input wire [31:0] in_c1_eni23820_3_18_tpl,
    input wire [31:0] in_c1_eni23820_19_tpl,
    input wire [0:0] in_c1_eni23820_20_tpl,
    input wire [0:0] in_c1_eni23820_21_tpl,
    input wire [0:0] in_c1_eni23820_22_tpl,
    input wire [31:0] in_c1_eni23820_23_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_0_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_1_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_2_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_3_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_4_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_5_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_6_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_7_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_8_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_9_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_10_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_11_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_12_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_13_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_14_tpl;
    wire [0:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_0_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_1_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_2_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_3_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_4_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_5_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_6_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_7_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_8_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_9_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_10_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_11_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_12_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_13_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_14_tpl;


    // i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x(BLACKBOX,9)@138
    // out out_o_valid@141
    // out out_unnamed_conv2d1x15@141
    // out out_c1_exi14_0_tpl@141
    // out out_c1_exi14_1_tpl@141
    // out out_c1_exi14_2_tpl@141
    // out out_c1_exi14_3_tpl@141
    // out out_c1_exi14_4_tpl@141
    // out out_c1_exi14_5_tpl@141
    // out out_c1_exi14_6_tpl@141
    // out out_c1_exi14_7_tpl@141
    // out out_c1_exi14_8_tpl@141
    // out out_c1_exi14_9_tpl@141
    // out out_c1_exi14_10_tpl@141
    // out out_c1_exi14_11_tpl@141
    // out out_c1_exi14_12_tpl@141
    // out out_c1_exi14_13_tpl@141
    // out out_c1_exi14_14_tpl@141
    conv2d1x1_i_sfc_logic_s_c1_in_for_body140000_enter821_conv2d1x10 thei_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x (
        .in_i_valid(input_accepted_and_q),
        .in_c1_eni23820_0_tpl(in_c1_eni23820_0_tpl),
        .in_c1_eni23820_0_18_tpl(in_c1_eni23820_0_18_tpl),
        .in_c1_eni23820_1_tpl(in_c1_eni23820_1_tpl),
        .in_c1_eni23820_1_18_tpl(in_c1_eni23820_1_18_tpl),
        .in_c1_eni23820_2_tpl(in_c1_eni23820_2_tpl),
        .in_c1_eni23820_2_18_tpl(in_c1_eni23820_2_18_tpl),
        .in_c1_eni23820_3_tpl(in_c1_eni23820_3_tpl),
        .in_c1_eni23820_3_18_tpl(in_c1_eni23820_3_18_tpl),
        .in_c1_eni23820_4_tpl(in_c1_eni23820_4_tpl),
        .in_c1_eni23820_5_tpl(in_c1_eni23820_5_tpl),
        .in_c1_eni23820_6_tpl(in_c1_eni23820_6_tpl),
        .in_c1_eni23820_7_tpl(in_c1_eni23820_7_tpl),
        .in_c1_eni23820_8_tpl(in_c1_eni23820_8_tpl),
        .in_c1_eni23820_9_tpl(in_c1_eni23820_9_tpl),
        .in_c1_eni23820_10_tpl(in_c1_eni23820_10_tpl),
        .in_c1_eni23820_11_tpl(in_c1_eni23820_11_tpl),
        .in_c1_eni23820_12_tpl(in_c1_eni23820_12_tpl),
        .in_c1_eni23820_13_tpl(in_c1_eni23820_13_tpl),
        .in_c1_eni23820_14_tpl(in_c1_eni23820_14_tpl),
        .in_c1_eni23820_15_tpl(in_c1_eni23820_15_tpl),
        .in_c1_eni23820_16_tpl(in_c1_eni23820_16_tpl),
        .in_c1_eni23820_17_tpl(in_c1_eni23820_17_tpl),
        .in_c1_eni23820_19_tpl(in_c1_eni23820_19_tpl),
        .in_c1_eni23820_20_tpl(in_c1_eni23820_20_tpl),
        .in_c1_eni23820_21_tpl(in_c1_eni23820_21_tpl),
        .in_c1_eni23820_22_tpl(in_c1_eni23820_22_tpl),
        .in_c1_eni23820_23_tpl(in_c1_eni23820_23_tpl),
        .out_o_valid(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_o_valid),
        .out_unnamed_conv2d1x15(),
        .out_c1_exi14_0_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_0_tpl),
        .out_c1_exi14_1_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_1_tpl),
        .out_c1_exi14_2_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_2_tpl),
        .out_c1_exi14_3_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_3_tpl),
        .out_c1_exi14_4_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_4_tpl),
        .out_c1_exi14_5_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_5_tpl),
        .out_c1_exi14_6_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_6_tpl),
        .out_c1_exi14_7_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_7_tpl),
        .out_c1_exi14_8_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_8_tpl),
        .out_c1_exi14_9_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_9_tpl),
        .out_c1_exi14_10_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_10_tpl),
        .out_c1_exi14_11_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_11_tpl),
        .out_c1_exi14_12_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_12_tpl),
        .out_c1_exi14_13_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_13_tpl),
        .out_c1_exi14_14_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_14_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x(BLACKBOX,7)@141
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@144
    // out out_data_out_0_tpl@144
    // out out_data_out_1_tpl@144
    // out out_data_out_2_tpl@144
    // out out_data_out_3_tpl@144
    // out out_data_out_4_tpl@144
    // out out_data_out_5_tpl@144
    // out out_data_out_6_tpl@144
    // out out_data_out_7_tpl@144
    // out out_data_out_8_tpl@144
    // out out_data_out_9_tpl@144
    // out out_data_out_10_tpl@144
    // out out_data_out_11_tpl@144
    // out out_data_out_12_tpl@144
    // out out_data_out_13_tpl@144
    // out out_data_out_14_tpl@144
    conv2d1x1_i_llvm_fpga_sfc_exit_s_c1_out_00001_exit846_conv2d1x10 thei_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x (
        .in_dec_pipelined_thread(in_c0_exe4726),
        .in_inc_pipelined_thread(in_c0_exe26748),
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_11_tpl),
        .in_data_in_12_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_12_tpl),
        .in_data_in_13_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_13_tpl),
        .in_data_in_14_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x10_aunroll_vunroll_x_out_c1_exi14_14_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_14_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,6)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_stall_entry;

    // dupName_0_sync_out_aunroll_x(GPOUT,8)@144
    assign out_c1_exit846_0_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_0_tpl;
    assign out_c1_exit846_1_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_1_tpl;
    assign out_c1_exit846_2_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_2_tpl;
    assign out_c1_exit846_3_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_3_tpl;
    assign out_c1_exit846_4_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_4_tpl;
    assign out_c1_exit846_5_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_5_tpl;
    assign out_c1_exit846_6_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_6_tpl;
    assign out_c1_exit846_7_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_7_tpl;
    assign out_c1_exit846_8_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_8_tpl;
    assign out_c1_exit846_9_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_9_tpl;
    assign out_c1_exit846_10_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_10_tpl;
    assign out_c1_exit846_11_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_11_tpl;
    assign out_c1_exit846_12_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_12_tpl;
    assign out_c1_exit846_13_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_13_tpl;
    assign out_c1_exit846_14_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_data_out_14_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit846_conv2d1x11_aunroll_x_out_valid_out;

endmodule
