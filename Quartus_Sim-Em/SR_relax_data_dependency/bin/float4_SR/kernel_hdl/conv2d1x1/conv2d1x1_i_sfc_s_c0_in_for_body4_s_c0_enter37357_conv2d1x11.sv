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

// SystemVerilog created from conv2d1x1_i_sfc_s_c0_in_for_body4_s_c0_enter37357_conv2d1x11
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_s_c0_in_for_body4_s_c0_enter37357_conv2d1x11 (
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [32:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_filter_bias,
    input wire [31:0] in_input_channels,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_stall_out,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_valid_out,
    input wire [0:0] in_c0_eni17_0_tpl,
    input wire [0:0] in_c0_eni17_1_tpl,
    input wire [31:0] in_c0_eni17_2_tpl,
    input wire [31:0] in_c0_eni17_3_tpl,
    input wire [31:0] in_c0_eni17_4_tpl,
    input wire [31:0] in_c0_eni17_5_tpl,
    input wire [31:0] in_c0_eni17_6_tpl,
    input wire [31:0] in_c0_eni17_7_tpl,
    input wire [31:0] in_c0_eni17_8_tpl,
    input wire [31:0] in_c0_eni17_9_tpl,
    input wire [31:0] in_c0_eni17_10_tpl,
    input wire [31:0] in_c0_eni17_11_tpl,
    input wire [31:0] in_c0_eni17_12_tpl,
    input wire [31:0] in_c0_eni17_13_tpl,
    input wire [31:0] in_c0_eni17_14_tpl,
    input wire [31:0] in_c0_eni17_15_tpl,
    input wire [31:0] in_c0_eni17_16_tpl,
    input wire [31:0] in_c0_eni17_17_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit393_0_tpl,
    output wire [0:0] out_c0_exit393_1_tpl,
    output wire [31:0] out_c0_exit393_2_tpl,
    output wire [0:0] out_c0_exit393_3_tpl,
    output wire [0:0] out_c0_exit393_4_tpl,
    output wire [0:0] out_c0_exit393_5_tpl,
    output wire [32:0] out_c0_exit393_6_tpl,
    output wire [63:0] out_c0_exit393_7_tpl,
    output wire [31:0] out_c0_exit393_8_tpl,
    output wire [31:0] out_c0_exit393_9_tpl,
    output wire [0:0] out_c0_exit393_10_tpl,
    output wire [0:0] out_c0_exit393_11_tpl,
    output wire [31:0] out_c0_exit393_12_tpl,
    output wire [31:0] out_c0_exit393_13_tpl,
    output wire [31:0] out_c0_exit393_14_tpl,
    output wire [31:0] out_c0_exit393_15_tpl,
    output wire [31:0] out_c0_exit393_16_tpl,
    output wire [31:0] out_c0_exit393_17_tpl,
    output wire [31:0] out_c0_exit393_18_tpl,
    output wire [31:0] out_c0_exit393_19_tpl,
    output wire [31:0] out_c0_exit393_20_tpl,
    output wire [31:0] out_c0_exit393_21_tpl,
    output wire [31:0] out_c0_exit393_22_tpl,
    output wire [31:0] out_c0_exit393_23_tpl,
    output wire [31:0] out_c0_exit393_24_tpl,
    output wire [31:0] out_c0_exit393_25_tpl,
    output wire [31:0] out_c0_exit393_26_tpl,
    output wire [31:0] out_c0_exit393_27_tpl,
    output wire [0:0] out_c0_exit393_28_tpl,
    output wire [31:0] out_c0_exit393_29_tpl,
    output wire [31:0] out_c0_exit393_30_tpl,
    output wire [31:0] out_c0_exit393_31_tpl,
    output wire [31:0] out_c0_exit393_32_tpl,
    output wire [31:0] out_c0_exit393_33_tpl,
    output wire [31:0] out_c0_exit393_34_tpl,
    output wire [31:0] out_c0_exit393_35_tpl,
    output wire [31:0] out_c0_exit393_36_tpl,
    output wire [31:0] out_c0_exit393_37_tpl,
    output wire [31:0] out_c0_exit393_38_tpl,
    output wire [31:0] out_c0_exit393_39_tpl,
    output wire [31:0] out_c0_exit393_40_tpl,
    output wire [31:0] out_c0_exit393_41_tpl,
    output wire [31:0] out_c0_exit393_42_tpl,
    output wire [31:0] out_c0_exit393_43_tpl,
    output wire [31:0] out_c0_exit393_44_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_1_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_2_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_3_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_4_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_5_tpl;
    wire [32:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_6_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_7_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_8_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_9_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_10_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_11_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_12_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_13_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_14_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_15_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_16_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_17_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_18_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_19_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_20_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_21_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_22_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_23_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_24_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_25_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_26_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_27_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_28_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_29_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_30_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_31_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_32_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_33_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_34_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_35_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_36_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_37_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_38_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_39_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_40_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_41_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_42_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_43_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_44_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_stall_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_0_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_1_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_2_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_3_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_4_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_5_tpl;
    wire [32:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_6_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_7_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_8_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_9_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_10_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_11_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_12_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_13_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_14_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_15_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_16_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_17_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_18_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_19_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_20_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_21_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_22_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_23_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_24_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_25_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_26_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_27_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_28_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_29_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_30_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_31_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_32_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_33_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_34_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_35_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_36_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_37_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_38_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_39_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_40_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_41_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_42_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_43_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_44_tpl;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x(BLACKBOX,17)@8
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@11
    // out out_data_out_0_tpl@11
    // out out_data_out_1_tpl@11
    // out out_data_out_2_tpl@11
    // out out_data_out_3_tpl@11
    // out out_data_out_4_tpl@11
    // out out_data_out_5_tpl@11
    // out out_data_out_6_tpl@11
    // out out_data_out_7_tpl@11
    // out out_data_out_8_tpl@11
    // out out_data_out_9_tpl@11
    // out out_data_out_10_tpl@11
    // out out_data_out_11_tpl@11
    // out out_data_out_12_tpl@11
    // out out_data_out_13_tpl@11
    // out out_data_out_14_tpl@11
    // out out_data_out_15_tpl@11
    // out out_data_out_16_tpl@11
    // out out_data_out_17_tpl@11
    // out out_data_out_18_tpl@11
    // out out_data_out_19_tpl@11
    // out out_data_out_20_tpl@11
    // out out_data_out_21_tpl@11
    // out out_data_out_22_tpl@11
    // out out_data_out_23_tpl@11
    // out out_data_out_24_tpl@11
    // out out_data_out_25_tpl@11
    // out out_data_out_26_tpl@11
    // out out_data_out_27_tpl@11
    // out out_data_out_28_tpl@11
    // out out_data_out_29_tpl@11
    // out out_data_out_30_tpl@11
    // out out_data_out_31_tpl@11
    // out out_data_out_32_tpl@11
    // out out_data_out_33_tpl@11
    // out out_data_out_34_tpl@11
    // out out_data_out_35_tpl@11
    // out out_data_out_36_tpl@11
    // out out_data_out_37_tpl@11
    // out out_data_out_38_tpl@11
    // out out_data_out_39_tpl@11
    // out out_data_out_40_tpl@11
    // out out_data_out_41_tpl@11
    // out out_data_out_42_tpl@11
    // out out_data_out_43_tpl@11
    // out out_data_out_44_tpl@11
    conv2d1x1_i_llvm_fpga_sfc_exit_s_c0_out_00000_exit393_conv2d1x10 thei_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_11_tpl),
        .in_data_in_12_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_12_tpl),
        .in_data_in_13_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_13_tpl),
        .in_data_in_14_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_14_tpl),
        .in_data_in_15_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_15_tpl),
        .in_data_in_16_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_16_tpl),
        .in_data_in_17_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_17_tpl),
        .in_data_in_18_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_18_tpl),
        .in_data_in_19_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_19_tpl),
        .in_data_in_20_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_20_tpl),
        .in_data_in_21_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_21_tpl),
        .in_data_in_22_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_22_tpl),
        .in_data_in_23_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_23_tpl),
        .in_data_in_24_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_24_tpl),
        .in_data_in_25_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_25_tpl),
        .in_data_in_26_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_26_tpl),
        .in_data_in_27_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_27_tpl),
        .in_data_in_28_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_28_tpl),
        .in_data_in_29_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_29_tpl),
        .in_data_in_30_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_30_tpl),
        .in_data_in_31_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_31_tpl),
        .in_data_in_32_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_32_tpl),
        .in_data_in_33_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_33_tpl),
        .in_data_in_34_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_34_tpl),
        .in_data_in_35_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_35_tpl),
        .in_data_in_36_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_36_tpl),
        .in_data_in_37_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_37_tpl),
        .in_data_in_38_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_38_tpl),
        .in_data_in_39_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_39_tpl),
        .in_data_in_40_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_40_tpl),
        .in_data_in_41_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_41_tpl),
        .in_data_in_42_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_42_tpl),
        .in_data_in_43_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_43_tpl),
        .in_data_in_44_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_44_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_21_tpl),
        .out_data_out_22_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_22_tpl),
        .out_data_out_23_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_23_tpl),
        .out_data_out_24_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_24_tpl),
        .out_data_out_25_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_25_tpl),
        .out_data_out_26_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_26_tpl),
        .out_data_out_27_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_27_tpl),
        .out_data_out_28_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_28_tpl),
        .out_data_out_29_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_29_tpl),
        .out_data_out_30_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_30_tpl),
        .out_data_out_31_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_31_tpl),
        .out_data_out_32_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_32_tpl),
        .out_data_out_33_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_33_tpl),
        .out_data_out_34_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_34_tpl),
        .out_data_out_35_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_35_tpl),
        .out_data_out_36_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_36_tpl),
        .out_data_out_37_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_37_tpl),
        .out_data_out_38_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_38_tpl),
        .out_data_out_39_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_39_tpl),
        .out_data_out_40_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_40_tpl),
        .out_data_out_41_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_41_tpl),
        .out_data_out_42_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_42_tpl),
        .out_data_out_43_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_43_tpl),
        .out_data_out_44_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_44_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x(BLACKBOX,18)@1
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_valid_out@20000000
    // out out_o_valid@8
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_conv2d1x15@8
    // out out_c0_exi44_0_tpl@8
    // out out_c0_exi44_1_tpl@8
    // out out_c0_exi44_2_tpl@8
    // out out_c0_exi44_3_tpl@8
    // out out_c0_exi44_4_tpl@8
    // out out_c0_exi44_5_tpl@8
    // out out_c0_exi44_6_tpl@8
    // out out_c0_exi44_7_tpl@8
    // out out_c0_exi44_8_tpl@8
    // out out_c0_exi44_9_tpl@8
    // out out_c0_exi44_10_tpl@8
    // out out_c0_exi44_11_tpl@8
    // out out_c0_exi44_12_tpl@8
    // out out_c0_exi44_13_tpl@8
    // out out_c0_exi44_14_tpl@8
    // out out_c0_exi44_15_tpl@8
    // out out_c0_exi44_16_tpl@8
    // out out_c0_exi44_17_tpl@8
    // out out_c0_exi44_18_tpl@8
    // out out_c0_exi44_19_tpl@8
    // out out_c0_exi44_20_tpl@8
    // out out_c0_exi44_21_tpl@8
    // out out_c0_exi44_22_tpl@8
    // out out_c0_exi44_23_tpl@8
    // out out_c0_exi44_24_tpl@8
    // out out_c0_exi44_25_tpl@8
    // out out_c0_exi44_26_tpl@8
    // out out_c0_exi44_27_tpl@8
    // out out_c0_exi44_28_tpl@8
    // out out_c0_exi44_29_tpl@8
    // out out_c0_exi44_30_tpl@8
    // out out_c0_exi44_31_tpl@8
    // out out_c0_exi44_32_tpl@8
    // out out_c0_exi44_33_tpl@8
    // out out_c0_exi44_34_tpl@8
    // out out_c0_exi44_35_tpl@8
    // out out_c0_exi44_36_tpl@8
    // out out_c0_exi44_37_tpl@8
    // out out_c0_exi44_38_tpl@8
    // out out_c0_exi44_39_tpl@8
    // out out_c0_exi44_40_tpl@8
    // out out_c0_exi44_41_tpl@8
    // out out_c0_exi44_42_tpl@8
    // out out_c0_exi44_43_tpl@8
    // out out_c0_exi44_44_tpl@8
    conv2d1x1_i_sfc_logic_s_c0_in_for_body4_0000nter37357_conv2d1x10 thei_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x (
        .in_filter_bias(in_filter_bias),
        .in_i_valid(input_accepted_and_q),
        .in_input_channels(in_input_channels),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni17_0_tpl(in_c0_eni17_0_tpl),
        .in_c0_eni17_1_tpl(in_c0_eni17_1_tpl),
        .in_c0_eni17_2_tpl(in_c0_eni17_2_tpl),
        .in_c0_eni17_3_tpl(in_c0_eni17_3_tpl),
        .in_c0_eni17_4_tpl(in_c0_eni17_4_tpl),
        .in_c0_eni17_5_tpl(in_c0_eni17_5_tpl),
        .in_c0_eni17_6_tpl(in_c0_eni17_6_tpl),
        .in_c0_eni17_7_tpl(in_c0_eni17_7_tpl),
        .in_c0_eni17_8_tpl(in_c0_eni17_8_tpl),
        .in_c0_eni17_9_tpl(in_c0_eni17_9_tpl),
        .in_c0_eni17_10_tpl(in_c0_eni17_10_tpl),
        .in_c0_eni17_11_tpl(in_c0_eni17_11_tpl),
        .in_c0_eni17_12_tpl(in_c0_eni17_12_tpl),
        .in_c0_eni17_13_tpl(in_c0_eni17_13_tpl),
        .in_c0_eni17_14_tpl(in_c0_eni17_14_tpl),
        .in_c0_eni17_15_tpl(in_c0_eni17_15_tpl),
        .in_c0_eni17_16_tpl(in_c0_eni17_16_tpl),
        .in_c0_eni17_17_tpl(in_c0_eni17_17_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_stall_out(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_valid_out(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_valid_out),
        .out_o_valid(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_conv2d1x15(),
        .out_c0_exi44_0_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_0_tpl),
        .out_c0_exi44_1_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_1_tpl),
        .out_c0_exi44_2_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_2_tpl),
        .out_c0_exi44_3_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_3_tpl),
        .out_c0_exi44_4_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_4_tpl),
        .out_c0_exi44_5_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_5_tpl),
        .out_c0_exi44_6_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_6_tpl),
        .out_c0_exi44_7_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_7_tpl),
        .out_c0_exi44_8_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_8_tpl),
        .out_c0_exi44_9_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_9_tpl),
        .out_c0_exi44_10_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_10_tpl),
        .out_c0_exi44_11_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_11_tpl),
        .out_c0_exi44_12_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_12_tpl),
        .out_c0_exi44_13_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_13_tpl),
        .out_c0_exi44_14_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_14_tpl),
        .out_c0_exi44_15_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_15_tpl),
        .out_c0_exi44_16_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_16_tpl),
        .out_c0_exi44_17_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_17_tpl),
        .out_c0_exi44_18_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_18_tpl),
        .out_c0_exi44_19_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_19_tpl),
        .out_c0_exi44_20_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_20_tpl),
        .out_c0_exi44_21_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_21_tpl),
        .out_c0_exi44_22_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_22_tpl),
        .out_c0_exi44_23_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_23_tpl),
        .out_c0_exi44_24_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_24_tpl),
        .out_c0_exi44_25_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_25_tpl),
        .out_c0_exi44_26_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_26_tpl),
        .out_c0_exi44_27_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_27_tpl),
        .out_c0_exi44_28_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_28_tpl),
        .out_c0_exi44_29_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_29_tpl),
        .out_c0_exi44_30_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_30_tpl),
        .out_c0_exi44_31_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_31_tpl),
        .out_c0_exi44_32_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_32_tpl),
        .out_c0_exi44_33_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_33_tpl),
        .out_c0_exi44_34_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_34_tpl),
        .out_c0_exi44_35_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_35_tpl),
        .out_c0_exi44_36_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_36_tpl),
        .out_c0_exi44_37_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_37_tpl),
        .out_c0_exi44_38_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_38_tpl),
        .out_c0_exi44_39_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_39_tpl),
        .out_c0_exi44_40_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_40_tpl),
        .out_c0_exi44_41_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_41_tpl),
        .out_c0_exi44_42_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_42_tpl),
        .out_c0_exi44_43_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_43_tpl),
        .out_c0_exi44_44_tpl(i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_c0_exi44_44_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // pipeline_valid_out_sync(GPOUT,6)
    assign out_pipeline_valid_out = i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,13)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_stall_out = i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_stall_out;

    // sync_out(GPOUT,15)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,16)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_valid_out = i_sfc_logic_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x10_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_valid_out;

    // dupName_0_sync_out_aunroll_x(GPOUT,20)@11
    assign out_c0_exit393_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit393_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit393_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit393_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit393_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_4_tpl;
    assign out_c0_exit393_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_5_tpl;
    assign out_c0_exit393_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_6_tpl;
    assign out_c0_exit393_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_7_tpl;
    assign out_c0_exit393_8_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_8_tpl;
    assign out_c0_exit393_9_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_9_tpl;
    assign out_c0_exit393_10_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_10_tpl;
    assign out_c0_exit393_11_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_11_tpl;
    assign out_c0_exit393_12_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_12_tpl;
    assign out_c0_exit393_13_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_13_tpl;
    assign out_c0_exit393_14_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_14_tpl;
    assign out_c0_exit393_15_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_15_tpl;
    assign out_c0_exit393_16_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_16_tpl;
    assign out_c0_exit393_17_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_17_tpl;
    assign out_c0_exit393_18_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_18_tpl;
    assign out_c0_exit393_19_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_19_tpl;
    assign out_c0_exit393_20_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_20_tpl;
    assign out_c0_exit393_21_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_21_tpl;
    assign out_c0_exit393_22_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_22_tpl;
    assign out_c0_exit393_23_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_23_tpl;
    assign out_c0_exit393_24_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_24_tpl;
    assign out_c0_exit393_25_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_25_tpl;
    assign out_c0_exit393_26_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_26_tpl;
    assign out_c0_exit393_27_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_27_tpl;
    assign out_c0_exit393_28_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_28_tpl;
    assign out_c0_exit393_29_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_29_tpl;
    assign out_c0_exit393_30_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_30_tpl;
    assign out_c0_exit393_31_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_31_tpl;
    assign out_c0_exit393_32_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_32_tpl;
    assign out_c0_exit393_33_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_33_tpl;
    assign out_c0_exit393_34_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_34_tpl;
    assign out_c0_exit393_35_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_35_tpl;
    assign out_c0_exit393_36_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_36_tpl;
    assign out_c0_exit393_37_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_37_tpl;
    assign out_c0_exit393_38_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_38_tpl;
    assign out_c0_exit393_39_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_39_tpl;
    assign out_c0_exit393_40_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_40_tpl;
    assign out_c0_exit393_41_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_41_tpl;
    assign out_c0_exit393_42_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_42_tpl;
    assign out_c0_exit393_43_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_43_tpl;
    assign out_c0_exit393_44_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_data_out_44_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x11_aunroll_x_out_valid_out;

endmodule
