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

// SystemVerilog created from conv2d3x3_i_sfc_s_c0_in_for_cond10_prehe0000ter549154_conv2d3x31
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_i_sfc_s_c0_in_for_cond10_prehe0000ter549154_conv2d3x31 (
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_stride,
    input wire [31:0] in_input_size,
    input wire [0:0] in_intel_reserved_ffwd_4_0,
    input wire [32:0] in_intel_reserved_ffwd_6_0,
    input wire [31:0] in_output_size,
    input wire [31:0] in_pad,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_stall_out,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_valid_out,
    input wire [0:0] in_c0_eni5_0_tpl,
    input wire [0:0] in_c0_eni5_1_tpl,
    input wire [63:0] in_c0_eni5_2_tpl,
    input wire [63:0] in_c0_eni5_3_tpl,
    input wire [31:0] in_c0_eni5_4_tpl,
    input wire [0:0] in_c0_eni5_5_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit557_0_tpl,
    output wire [31:0] out_c0_exit557_1_tpl,
    output wire [31:0] out_c0_exit557_2_tpl,
    output wire [0:0] out_c0_exit557_3_tpl,
    output wire [0:0] out_c0_exit557_4_tpl,
    output wire [31:0] out_c0_exit557_5_tpl,
    output wire [0:0] out_c0_exit557_6_tpl,
    output wire [0:0] out_c0_exit557_7_tpl,
    output wire [31:0] out_c0_exit557_8_tpl,
    output wire [0:0] out_c0_exit557_9_tpl,
    output wire [0:0] out_c0_exit557_10_tpl,
    output wire [0:0] out_c0_exit557_11_tpl,
    output wire [0:0] out_c0_exit557_12_tpl,
    output wire [63:0] out_c0_exit557_13_tpl,
    output wire [63:0] out_c0_exit557_14_tpl,
    output wire [31:0] out_c0_exit557_15_tpl,
    output wire [0:0] out_c0_exit557_16_tpl,
    output wire [63:0] out_c0_exit557_17_tpl,
    output wire [63:0] out_c0_exit557_18_tpl,
    output wire [31:0] out_c0_exit557_19_tpl,
    output wire [0:0] out_c0_exit557_20_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_0_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_1_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_2_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_3_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_4_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_5_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_6_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_7_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_8_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_9_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_10_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_11_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_12_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_13_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_14_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_15_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_16_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_17_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_18_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_19_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_20_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_stall_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_0_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_1_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_2_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_3_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_4_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_5_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_6_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_7_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_8_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_9_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_10_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_11_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_12_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_13_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_14_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_15_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_16_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_17_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_18_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_19_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_20_tpl;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x(BLACKBOX,17)@7
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@10
    // out out_data_out_0_tpl@10
    // out out_data_out_1_tpl@10
    // out out_data_out_2_tpl@10
    // out out_data_out_3_tpl@10
    // out out_data_out_4_tpl@10
    // out out_data_out_5_tpl@10
    // out out_data_out_6_tpl@10
    // out out_data_out_7_tpl@10
    // out out_data_out_8_tpl@10
    // out out_data_out_9_tpl@10
    // out out_data_out_10_tpl@10
    // out out_data_out_11_tpl@10
    // out out_data_out_12_tpl@10
    // out out_data_out_13_tpl@10
    // out out_data_out_14_tpl@10
    // out out_data_out_15_tpl@10
    // out out_data_out_16_tpl@10
    // out out_data_out_17_tpl@10
    // out out_data_out_18_tpl@10
    // out out_data_out_19_tpl@10
    // out out_data_out_20_tpl@10
    conv2d3x3_i_llvm_fpga_sfc_exit_s_c0_out_00000_exit557_conv2d3x30 thei_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_11_tpl),
        .in_data_in_12_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_12_tpl),
        .in_data_in_13_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_13_tpl),
        .in_data_in_14_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_14_tpl),
        .in_data_in_15_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_15_tpl),
        .in_data_in_16_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_16_tpl),
        .in_data_in_17_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_17_tpl),
        .in_data_in_18_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_18_tpl),
        .in_data_in_19_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_19_tpl),
        .in_data_in_20_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_20_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_20_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x(BLACKBOX,18)@1
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_valid_out@20000000
    // out out_o_valid@7
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_conv2d3x311@7
    // out out_c0_exi20_0_tpl@7
    // out out_c0_exi20_1_tpl@7
    // out out_c0_exi20_2_tpl@7
    // out out_c0_exi20_3_tpl@7
    // out out_c0_exi20_4_tpl@7
    // out out_c0_exi20_5_tpl@7
    // out out_c0_exi20_6_tpl@7
    // out out_c0_exi20_7_tpl@7
    // out out_c0_exi20_8_tpl@7
    // out out_c0_exi20_9_tpl@7
    // out out_c0_exi20_10_tpl@7
    // out out_c0_exi20_11_tpl@7
    // out out_c0_exi20_12_tpl@7
    // out out_c0_exi20_13_tpl@7
    // out out_c0_exi20_14_tpl@7
    // out out_c0_exi20_15_tpl@7
    // out out_c0_exi20_16_tpl@7
    // out out_c0_exi20_17_tpl@7
    // out out_c0_exi20_18_tpl@7
    // out out_c0_exi20_19_tpl@7
    // out out_c0_exi20_20_tpl@7
    conv2d3x3_i_sfc_logic_s_c0_in_for_cond100000ter549154_conv2d3x30 thei_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x (
        .in_i_valid(input_accepted_and_q),
        .in_input_size(in_input_size),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_output_size(in_output_size),
        .in_pad(in_pad),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stride(in_stride),
        .in_c0_eni5_0_tpl(in_c0_eni5_0_tpl),
        .in_c0_eni5_1_tpl(in_c0_eni5_1_tpl),
        .in_c0_eni5_2_tpl(in_c0_eni5_2_tpl),
        .in_c0_eni5_3_tpl(in_c0_eni5_3_tpl),
        .in_c0_eni5_4_tpl(in_c0_eni5_4_tpl),
        .in_c0_eni5_5_tpl(in_c0_eni5_5_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_stall_out(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_valid_out(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_valid_out),
        .out_o_valid(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_conv2d3x311(),
        .out_c0_exi20_0_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_0_tpl),
        .out_c0_exi20_1_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_1_tpl),
        .out_c0_exi20_2_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_2_tpl),
        .out_c0_exi20_3_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_3_tpl),
        .out_c0_exi20_4_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_4_tpl),
        .out_c0_exi20_5_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_5_tpl),
        .out_c0_exi20_6_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_6_tpl),
        .out_c0_exi20_7_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_7_tpl),
        .out_c0_exi20_8_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_8_tpl),
        .out_c0_exi20_9_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_9_tpl),
        .out_c0_exi20_10_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_10_tpl),
        .out_c0_exi20_11_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_11_tpl),
        .out_c0_exi20_12_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_12_tpl),
        .out_c0_exi20_13_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_13_tpl),
        .out_c0_exi20_14_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_14_tpl),
        .out_c0_exi20_15_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_15_tpl),
        .out_c0_exi20_16_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_16_tpl),
        .out_c0_exi20_17_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_17_tpl),
        .out_c0_exi20_18_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_18_tpl),
        .out_c0_exi20_19_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_19_tpl),
        .out_c0_exi20_20_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_c0_exi20_20_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // pipeline_valid_out_sync(GPOUT,6)
    assign out_pipeline_valid_out = i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,13)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_stall_out = i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_stall_out;

    // sync_out(GPOUT,15)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,16)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_valid_out = i_sfc_logic_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x30_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_valid_out;

    // dupName_0_sync_out_aunroll_x(GPOUT,20)@10
    assign out_c0_exit557_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit557_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit557_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit557_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit557_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_4_tpl;
    assign out_c0_exit557_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_5_tpl;
    assign out_c0_exit557_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_6_tpl;
    assign out_c0_exit557_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_7_tpl;
    assign out_c0_exit557_8_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_8_tpl;
    assign out_c0_exit557_9_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_9_tpl;
    assign out_c0_exit557_10_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_10_tpl;
    assign out_c0_exit557_11_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_11_tpl;
    assign out_c0_exit557_12_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_12_tpl;
    assign out_c0_exit557_13_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_13_tpl;
    assign out_c0_exit557_14_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_14_tpl;
    assign out_c0_exit557_15_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_15_tpl;
    assign out_c0_exit557_16_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_16_tpl;
    assign out_c0_exit557_17_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_17_tpl;
    assign out_c0_exit557_18_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_18_tpl;
    assign out_c0_exit557_19_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_19_tpl;
    assign out_c0_exit557_20_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_data_out_20_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x31_aunroll_x_out_valid_out;

endmodule
