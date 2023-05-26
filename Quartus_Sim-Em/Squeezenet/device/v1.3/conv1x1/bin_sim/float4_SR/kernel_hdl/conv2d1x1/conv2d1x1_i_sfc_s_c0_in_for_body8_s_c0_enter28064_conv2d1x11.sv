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

// SystemVerilog created from conv2d1x1_i_sfc_s_c0_in_for_body8_s_c0_enter28064_conv2d1x11
// SystemVerilog created on Wed May 24 11:22:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_s_c0_in_for_body8_s_c0_enter28064_conv2d1x11 (
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [511:0] in_unnamed_conv2d1x115_conv2d1x1_avm_readdata,
    input wire [0:0] in_unnamed_conv2d1x115_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv2d1x115_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d1x115_conv2d1x1_avm_writeack,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_stall_out,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_valid_out,
    output wire [31:0] out_unnamed_conv2d1x115_conv2d1x1_avm_address,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount,
    output wire [63:0] out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_enable,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_read,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_write,
    output wire [511:0] out_unnamed_conv2d1x115_conv2d1x1_avm_writedata,
    input wire [0:0] in_c0_eni21_0_tpl,
    input wire [0:0] in_c0_eni21_1_tpl,
    input wire [9:0] in_c0_eni21_2_tpl,
    input wire [0:0] in_c0_eni21_3_tpl,
    input wire [0:0] in_c0_eni21_4_tpl,
    input wire [31:0] in_c0_eni21_5_tpl,
    input wire [0:0] in_c0_eni21_6_tpl,
    input wire [31:0] in_c0_eni21_7_tpl,
    input wire [31:0] in_c0_eni21_8_tpl,
    input wire [31:0] in_c0_eni21_9_tpl,
    input wire [0:0] in_c0_eni21_10_tpl,
    input wire [0:0] in_c0_eni21_11_tpl,
    input wire [31:0] in_c0_eni21_12_tpl,
    input wire [31:0] in_c0_eni21_13_tpl,
    input wire [0:0] in_c0_eni21_14_tpl,
    input wire [0:0] in_c0_eni21_15_tpl,
    input wire [0:0] in_c0_eni21_16_tpl,
    input wire [32:0] in_c0_eni21_17_tpl,
    input wire [31:0] in_c0_eni21_18_tpl,
    input wire [31:0] in_c0_eni21_19_tpl,
    input wire [31:0] in_c0_eni21_20_tpl,
    input wire [0:0] in_c0_eni21_21_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit311_0_tpl,
    output wire [0:0] out_c0_exit311_1_tpl,
    output wire [63:0] out_c0_exit311_2_tpl,
    output wire [0:0] out_c0_exit311_3_tpl,
    output wire [0:0] out_c0_exit311_4_tpl,
    output wire [0:0] out_c0_exit311_5_tpl,
    output wire [31:0] out_c0_exit311_6_tpl,
    output wire [0:0] out_c0_exit311_7_tpl,
    output wire [31:0] out_c0_exit311_8_tpl,
    output wire [31:0] out_c0_exit311_9_tpl,
    output wire [31:0] out_c0_exit311_10_tpl,
    output wire [0:0] out_c0_exit311_11_tpl,
    output wire [0:0] out_c0_exit311_12_tpl,
    output wire [31:0] out_c0_exit311_13_tpl,
    output wire [31:0] out_c0_exit311_14_tpl,
    output wire [0:0] out_c0_exit311_15_tpl,
    output wire [0:0] out_c0_exit311_16_tpl,
    output wire [0:0] out_c0_exit311_17_tpl,
    output wire [32:0] out_c0_exit311_18_tpl,
    output wire [31:0] out_c0_exit311_19_tpl,
    output wire [31:0] out_c0_exit311_20_tpl,
    output wire [31:0] out_c0_exit311_21_tpl,
    output wire [0:0] out_c0_exit311_22_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_1_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_2_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_3_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_4_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_5_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_6_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_7_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_8_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_9_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_10_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_11_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_12_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_13_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_14_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_15_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_16_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_17_tpl;
    wire [32:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_18_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_19_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_20_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_21_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_22_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_stall_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount;
    wire [63:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_write;
    wire [511:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_writedata;
    wire [0:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_0_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_1_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_2_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_3_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_4_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_5_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_6_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_7_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_8_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_9_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_10_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_11_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_12_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_13_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_14_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_15_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_16_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_17_tpl;
    wire [32:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_18_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_19_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_20_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_21_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_22_tpl;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x(BLACKBOX,23)@3
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@6
    // out out_data_out_0_tpl@6
    // out out_data_out_1_tpl@6
    // out out_data_out_2_tpl@6
    // out out_data_out_3_tpl@6
    // out out_data_out_4_tpl@6
    // out out_data_out_5_tpl@6
    // out out_data_out_6_tpl@6
    // out out_data_out_7_tpl@6
    // out out_data_out_8_tpl@6
    // out out_data_out_9_tpl@6
    // out out_data_out_10_tpl@6
    // out out_data_out_11_tpl@6
    // out out_data_out_12_tpl@6
    // out out_data_out_13_tpl@6
    // out out_data_out_14_tpl@6
    // out out_data_out_15_tpl@6
    // out out_data_out_16_tpl@6
    // out out_data_out_17_tpl@6
    // out out_data_out_18_tpl@6
    // out out_data_out_19_tpl@6
    // out out_data_out_20_tpl@6
    // out out_data_out_21_tpl@6
    // out out_data_out_22_tpl@6
    conv2d1x1_i_llvm_fpga_sfc_exit_s_c0_out_00000_exit311_conv2d1x10 thei_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_11_tpl),
        .in_data_in_12_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_12_tpl),
        .in_data_in_13_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_13_tpl),
        .in_data_in_14_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_14_tpl),
        .in_data_in_15_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_15_tpl),
        .in_data_in_16_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_16_tpl),
        .in_data_in_17_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_17_tpl),
        .in_data_in_18_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_18_tpl),
        .in_data_in_19_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_19_tpl),
        .in_data_in_20_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_20_tpl),
        .in_data_in_21_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_21_tpl),
        .in_data_in_22_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_22_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_21_tpl),
        .out_data_out_22_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_22_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x(BLACKBOX,24)@1
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_valid_out@20000000
    // out out_o_valid@3
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_conv2d1x115_conv2d1x1_avm_address@20000000
    // out out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount@20000000
    // out out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable@20000000
    // out out_unnamed_conv2d1x115_conv2d1x1_avm_enable@20000000
    // out out_unnamed_conv2d1x115_conv2d1x1_avm_read@20000000
    // out out_unnamed_conv2d1x115_conv2d1x1_avm_write@20000000
    // out out_unnamed_conv2d1x115_conv2d1x1_avm_writedata@20000000
    // out out_unnamed_conv2d1x16@3
    // out out_c0_exi22_0_tpl@3
    // out out_c0_exi22_1_tpl@3
    // out out_c0_exi22_2_tpl@3
    // out out_c0_exi22_3_tpl@3
    // out out_c0_exi22_4_tpl@3
    // out out_c0_exi22_5_tpl@3
    // out out_c0_exi22_6_tpl@3
    // out out_c0_exi22_7_tpl@3
    // out out_c0_exi22_8_tpl@3
    // out out_c0_exi22_9_tpl@3
    // out out_c0_exi22_10_tpl@3
    // out out_c0_exi22_11_tpl@3
    // out out_c0_exi22_12_tpl@3
    // out out_c0_exi22_13_tpl@3
    // out out_c0_exi22_14_tpl@3
    // out out_c0_exi22_15_tpl@3
    // out out_c0_exi22_16_tpl@3
    // out out_c0_exi22_17_tpl@3
    // out out_c0_exi22_18_tpl@3
    // out out_c0_exi22_19_tpl@3
    // out out_c0_exi22_20_tpl@3
    // out out_c0_exi22_21_tpl@3
    // out out_c0_exi22_22_tpl@3
    conv2d1x1_i_sfc_logic_s_c0_in_for_body8_0000nter28064_conv2d1x10 thei_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x (
        .in_flush(in_flush),
        .in_i_valid(input_accepted_and_q),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_readdata(in_unnamed_conv2d1x115_conv2d1x1_avm_readdata),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_readdatavalid(in_unnamed_conv2d1x115_conv2d1x1_avm_readdatavalid),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_waitrequest(in_unnamed_conv2d1x115_conv2d1x1_avm_waitrequest),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_writeack(in_unnamed_conv2d1x115_conv2d1x1_avm_writeack),
        .in_c0_eni21_0_tpl(in_c0_eni21_0_tpl),
        .in_c0_eni21_1_tpl(in_c0_eni21_1_tpl),
        .in_c0_eni21_2_tpl(in_c0_eni21_2_tpl),
        .in_c0_eni21_3_tpl(in_c0_eni21_3_tpl),
        .in_c0_eni21_4_tpl(in_c0_eni21_4_tpl),
        .in_c0_eni21_5_tpl(in_c0_eni21_5_tpl),
        .in_c0_eni21_6_tpl(in_c0_eni21_6_tpl),
        .in_c0_eni21_7_tpl(in_c0_eni21_7_tpl),
        .in_c0_eni21_8_tpl(in_c0_eni21_8_tpl),
        .in_c0_eni21_9_tpl(in_c0_eni21_9_tpl),
        .in_c0_eni21_10_tpl(in_c0_eni21_10_tpl),
        .in_c0_eni21_11_tpl(in_c0_eni21_11_tpl),
        .in_c0_eni21_12_tpl(in_c0_eni21_12_tpl),
        .in_c0_eni21_13_tpl(in_c0_eni21_13_tpl),
        .in_c0_eni21_14_tpl(in_c0_eni21_14_tpl),
        .in_c0_eni21_15_tpl(in_c0_eni21_15_tpl),
        .in_c0_eni21_16_tpl(in_c0_eni21_16_tpl),
        .in_c0_eni21_17_tpl(in_c0_eni21_17_tpl),
        .in_c0_eni21_18_tpl(in_c0_eni21_18_tpl),
        .in_c0_eni21_19_tpl(in_c0_eni21_19_tpl),
        .in_c0_eni21_20_tpl(in_c0_eni21_20_tpl),
        .in_c0_eni21_21_tpl(in_c0_eni21_21_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_stall_out(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_valid_out(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_valid_out),
        .out_o_valid(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_address(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_address),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_enable(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_enable),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_read(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_read),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_write(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_write),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_writedata(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_writedata),
        .out_unnamed_conv2d1x16(),
        .out_c0_exi22_0_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_0_tpl),
        .out_c0_exi22_1_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_1_tpl),
        .out_c0_exi22_2_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_2_tpl),
        .out_c0_exi22_3_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_3_tpl),
        .out_c0_exi22_4_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_4_tpl),
        .out_c0_exi22_5_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_5_tpl),
        .out_c0_exi22_6_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_6_tpl),
        .out_c0_exi22_7_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_7_tpl),
        .out_c0_exi22_8_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_8_tpl),
        .out_c0_exi22_9_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_9_tpl),
        .out_c0_exi22_10_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_10_tpl),
        .out_c0_exi22_11_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_11_tpl),
        .out_c0_exi22_12_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_12_tpl),
        .out_c0_exi22_13_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_13_tpl),
        .out_c0_exi22_14_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_14_tpl),
        .out_c0_exi22_15_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_15_tpl),
        .out_c0_exi22_16_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_16_tpl),
        .out_c0_exi22_17_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_17_tpl),
        .out_c0_exi22_18_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_18_tpl),
        .out_c0_exi22_19_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_19_tpl),
        .out_c0_exi22_20_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_20_tpl),
        .out_c0_exi22_21_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_21_tpl),
        .out_c0_exi22_22_tpl(i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_c0_exi22_22_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // pipeline_valid_out_sync(GPOUT,6)
    assign out_pipeline_valid_out = i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,12)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_stall_out = i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_stall_out;

    // sync_out(GPOUT,14)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,15)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_valid_out = i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_valid_out;

    // dupName_1_regfree_osync_x(GPOUT,16)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_address = i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_address;

    // dupName_2_regfree_osync_x(GPOUT,17)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount = i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount;

    // dupName_3_regfree_osync_x(GPOUT,18)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable = i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable;

    // dupName_4_regfree_osync_x(GPOUT,19)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_enable = i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_enable;

    // dupName_5_regfree_osync_x(GPOUT,20)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_read = i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_read;

    // dupName_6_regfree_osync_x(GPOUT,21)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_write = i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_write;

    // dupName_7_regfree_osync_x(GPOUT,22)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_writedata = i_sfc_logic_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x10_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_writedata;

    // dupName_0_sync_out_aunroll_x(GPOUT,26)@6
    assign out_c0_exit311_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit311_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit311_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit311_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit311_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_4_tpl;
    assign out_c0_exit311_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_5_tpl;
    assign out_c0_exit311_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_6_tpl;
    assign out_c0_exit311_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_7_tpl;
    assign out_c0_exit311_8_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_8_tpl;
    assign out_c0_exit311_9_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_9_tpl;
    assign out_c0_exit311_10_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_10_tpl;
    assign out_c0_exit311_11_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_11_tpl;
    assign out_c0_exit311_12_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_12_tpl;
    assign out_c0_exit311_13_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_13_tpl;
    assign out_c0_exit311_14_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_14_tpl;
    assign out_c0_exit311_15_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_15_tpl;
    assign out_c0_exit311_16_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_16_tpl;
    assign out_c0_exit311_17_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_17_tpl;
    assign out_c0_exit311_18_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_18_tpl;
    assign out_c0_exit311_19_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_19_tpl;
    assign out_c0_exit311_20_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_20_tpl;
    assign out_c0_exit311_21_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_21_tpl;
    assign out_c0_exit311_22_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_data_out_22_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit311_conv2d1x11_aunroll_x_out_valid_out;

endmodule
