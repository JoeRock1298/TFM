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

// SystemVerilog created from conv2d1x1_i_sfc_s_c1_in_for_body14_s_c1_enter564_conv2d1x115
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_s_c1_in_for_body14_s_c1_enter564_conv2d1x115 (
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_c1_exit591_0_tpl,
    output wire [31:0] out_c1_exit591_1_tpl,
    output wire [31:0] out_c1_exit591_2_tpl,
    output wire [31:0] out_c1_exit591_3_tpl,
    output wire [31:0] out_c1_exit591_4_tpl,
    output wire [31:0] out_c1_exit591_5_tpl,
    output wire [31:0] out_c1_exit591_6_tpl,
    output wire [31:0] out_c1_exit591_7_tpl,
    output wire [31:0] out_c1_exit591_8_tpl,
    output wire [31:0] out_c1_exit591_9_tpl,
    output wire [31:0] out_c1_exit591_10_tpl,
    output wire [31:0] out_c1_exit591_11_tpl,
    output wire [31:0] out_c1_exit591_12_tpl,
    output wire [31:0] out_c1_exit591_13_tpl,
    output wire [31:0] out_c1_exit591_14_tpl,
    output wire [31:0] out_c1_exit591_15_tpl,
    output wire [31:0] out_c1_exit591_16_tpl,
    output wire [31:0] out_c1_exit591_17_tpl,
    output wire [31:0] out_c1_exit591_18_tpl,
    output wire [31:0] out_c1_exit591_19_tpl,
    output wire [31:0] out_c1_exit591_20_tpl,
    output wire [31:0] out_c1_exit591_21_tpl,
    output wire [31:0] out_c1_exit591_22_tpl,
    output wire [31:0] out_c1_exit591_23_tpl,
    output wire [31:0] out_c1_exit591_24_tpl,
    output wire [31:0] out_c1_exit591_25_tpl,
    output wire [31:0] out_c1_exit591_26_tpl,
    output wire [31:0] out_c1_exit591_27_tpl,
    output wire [31:0] out_c1_exit591_28_tpl,
    output wire [31:0] out_c1_exit591_29_tpl,
    output wire [31:0] out_c1_exit591_30_tpl,
    output wire [31:0] out_c1_exit591_31_tpl,
    output wire [31:0] out_c1_exit591_32_tpl,
    output wire [31:0] out_c1_exit591_33_tpl,
    output wire [31:0] out_c1_exit591_34_tpl,
    output wire [31:0] out_c1_exit591_35_tpl,
    output wire [31:0] out_c1_exit591_36_tpl,
    output wire [31:0] out_c1_exit591_37_tpl,
    output wire [31:0] out_c1_exit591_38_tpl,
    output wire [31:0] out_c1_exit591_39_tpl,
    output wire [31:0] out_c1_exit591_40_tpl,
    output wire [31:0] out_c1_exit591_41_tpl,
    output wire [31:0] out_c1_exit591_42_tpl,
    output wire [31:0] out_c1_exit591_43_tpl,
    output wire [31:0] out_c1_exit591_44_tpl,
    output wire [31:0] out_c1_exit591_45_tpl,
    output wire [31:0] out_c1_exit591_46_tpl,
    output wire [31:0] out_c1_exit591_47_tpl,
    output wire [31:0] out_c1_exit591_48_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_c0_exe1515,
    input wire [0:0] in_c0_exe22536,
    input wire [0:0] in_c1_eni37_0_tpl,
    input wire [31:0] in_c1_eni37_1_tpl,
    input wire [0:0] in_c1_eni37_2_tpl,
    input wire [31:0] in_c1_eni37_3_tpl,
    input wire [31:0] in_c1_eni37_4_tpl,
    input wire [31:0] in_c1_eni37_5_tpl,
    input wire [31:0] in_c1_eni37_6_tpl,
    input wire [31:0] in_c1_eni37_7_tpl,
    input wire [31:0] in_c1_eni37_8_tpl,
    input wire [31:0] in_c1_eni37_9_tpl,
    input wire [31:0] in_c1_eni37_10_tpl,
    input wire [31:0] in_c1_eni37_11_tpl,
    input wire [31:0] in_c1_eni37_12_tpl,
    input wire [31:0] in_c1_eni37_13_tpl,
    input wire [31:0] in_c1_eni37_14_tpl,
    input wire [31:0] in_c1_eni37_15_tpl,
    input wire [31:0] in_c1_eni37_16_tpl,
    input wire [31:0] in_c1_eni37_17_tpl,
    input wire [0:0] in_c1_eni37_18_tpl,
    input wire [0:0] in_c1_eni37_19_tpl,
    input wire [31:0] in_c1_eni37_0_20_tpl,
    input wire [31:0] in_c1_eni37_1_20_tpl,
    input wire [31:0] in_c1_eni37_2_20_tpl,
    input wire [31:0] in_c1_eni37_3_20_tpl,
    input wire [31:0] in_c1_eni37_4_20_tpl,
    input wire [31:0] in_c1_eni37_5_20_tpl,
    input wire [31:0] in_c1_eni37_6_20_tpl,
    input wire [31:0] in_c1_eni37_7_20_tpl,
    input wire [31:0] in_c1_eni37_21_tpl,
    input wire [31:0] in_c1_eni37_22_tpl,
    input wire [31:0] in_c1_eni37_23_tpl,
    input wire [31:0] in_c1_eni37_24_tpl,
    input wire [31:0] in_c1_eni37_25_tpl,
    input wire [31:0] in_c1_eni37_26_tpl,
    input wire [31:0] in_c1_eni37_27_tpl,
    input wire [31:0] in_c1_eni37_28_tpl,
    input wire [31:0] in_c1_eni37_29_tpl,
    input wire [31:0] in_c1_eni37_30_tpl,
    input wire [31:0] in_c1_eni37_31_tpl,
    input wire [31:0] in_c1_eni37_32_tpl,
    input wire [31:0] in_c1_eni37_33_tpl,
    input wire [31:0] in_c1_eni37_34_tpl,
    input wire [31:0] in_c1_eni37_35_tpl,
    input wire [31:0] in_c1_eni37_36_tpl,
    input wire [0:0] in_c1_eni37_37_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_0_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_1_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_2_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_3_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_4_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_5_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_6_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_7_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_8_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_9_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_10_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_11_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_12_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_13_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_14_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_15_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_16_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_17_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_18_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_19_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_20_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_21_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_22_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_23_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_24_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_25_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_26_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_27_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_28_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_29_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_30_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_31_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_32_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_33_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_34_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_35_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_36_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_37_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_38_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_39_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_40_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_41_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_42_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_43_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_44_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_45_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_46_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_47_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_48_tpl;
    wire [0:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_0_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_1_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_2_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_3_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_4_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_5_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_6_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_7_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_8_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_9_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_10_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_11_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_12_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_13_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_14_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_15_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_16_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_17_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_18_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_19_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_20_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_21_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_22_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_23_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_24_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_25_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_26_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_27_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_28_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_29_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_30_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_31_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_32_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_33_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_34_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_35_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_36_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_37_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_38_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_39_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_40_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_41_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_42_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_43_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_44_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_45_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_46_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_47_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_48_tpl;


    // i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x(BLACKBOX,10)@148
    // out out_o_valid@153
    // out out_unnamed_conv2d1x16@153
    // out out_c1_exi48_0_tpl@153
    // out out_c1_exi48_1_tpl@153
    // out out_c1_exi48_2_tpl@153
    // out out_c1_exi48_3_tpl@153
    // out out_c1_exi48_4_tpl@153
    // out out_c1_exi48_5_tpl@153
    // out out_c1_exi48_6_tpl@153
    // out out_c1_exi48_7_tpl@153
    // out out_c1_exi48_8_tpl@153
    // out out_c1_exi48_9_tpl@153
    // out out_c1_exi48_10_tpl@153
    // out out_c1_exi48_11_tpl@153
    // out out_c1_exi48_12_tpl@153
    // out out_c1_exi48_13_tpl@153
    // out out_c1_exi48_14_tpl@153
    // out out_c1_exi48_15_tpl@153
    // out out_c1_exi48_16_tpl@153
    // out out_c1_exi48_17_tpl@153
    // out out_c1_exi48_18_tpl@153
    // out out_c1_exi48_19_tpl@153
    // out out_c1_exi48_20_tpl@153
    // out out_c1_exi48_21_tpl@153
    // out out_c1_exi48_22_tpl@153
    // out out_c1_exi48_23_tpl@153
    // out out_c1_exi48_24_tpl@153
    // out out_c1_exi48_25_tpl@153
    // out out_c1_exi48_26_tpl@153
    // out out_c1_exi48_27_tpl@153
    // out out_c1_exi48_28_tpl@153
    // out out_c1_exi48_29_tpl@153
    // out out_c1_exi48_30_tpl@153
    // out out_c1_exi48_31_tpl@153
    // out out_c1_exi48_32_tpl@153
    // out out_c1_exi48_33_tpl@153
    // out out_c1_exi48_34_tpl@153
    // out out_c1_exi48_35_tpl@153
    // out out_c1_exi48_36_tpl@153
    // out out_c1_exi48_37_tpl@153
    // out out_c1_exi48_38_tpl@153
    // out out_c1_exi48_39_tpl@153
    // out out_c1_exi48_40_tpl@153
    // out out_c1_exi48_41_tpl@153
    // out out_c1_exi48_42_tpl@153
    // out out_c1_exi48_43_tpl@153
    // out out_c1_exi48_44_tpl@153
    // out out_c1_exi48_45_tpl@153
    // out out_c1_exi48_46_tpl@153
    // out out_c1_exi48_47_tpl@153
    // out out_c1_exi48_48_tpl@153
    conv2d1x1_i_sfc_logic_s_c1_in_for_body140000_enter564_conv2d1x10 thei_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x (
        .in_i_valid(input_accepted_and_q),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_c1_eni37_0_tpl(in_c1_eni37_0_tpl),
        .in_c1_eni37_0_20_tpl(in_c1_eni37_0_20_tpl),
        .in_c1_eni37_1_tpl(in_c1_eni37_1_tpl),
        .in_c1_eni37_1_20_tpl(in_c1_eni37_1_20_tpl),
        .in_c1_eni37_2_tpl(in_c1_eni37_2_tpl),
        .in_c1_eni37_2_20_tpl(in_c1_eni37_2_20_tpl),
        .in_c1_eni37_3_tpl(in_c1_eni37_3_tpl),
        .in_c1_eni37_3_20_tpl(in_c1_eni37_3_20_tpl),
        .in_c1_eni37_4_tpl(in_c1_eni37_4_tpl),
        .in_c1_eni37_4_20_tpl(in_c1_eni37_4_20_tpl),
        .in_c1_eni37_5_tpl(in_c1_eni37_5_tpl),
        .in_c1_eni37_5_20_tpl(in_c1_eni37_5_20_tpl),
        .in_c1_eni37_6_tpl(in_c1_eni37_6_tpl),
        .in_c1_eni37_6_20_tpl(in_c1_eni37_6_20_tpl),
        .in_c1_eni37_7_tpl(in_c1_eni37_7_tpl),
        .in_c1_eni37_7_20_tpl(in_c1_eni37_7_20_tpl),
        .in_c1_eni37_8_tpl(in_c1_eni37_8_tpl),
        .in_c1_eni37_9_tpl(in_c1_eni37_9_tpl),
        .in_c1_eni37_10_tpl(in_c1_eni37_10_tpl),
        .in_c1_eni37_11_tpl(in_c1_eni37_11_tpl),
        .in_c1_eni37_12_tpl(in_c1_eni37_12_tpl),
        .in_c1_eni37_13_tpl(in_c1_eni37_13_tpl),
        .in_c1_eni37_14_tpl(in_c1_eni37_14_tpl),
        .in_c1_eni37_15_tpl(in_c1_eni37_15_tpl),
        .in_c1_eni37_16_tpl(in_c1_eni37_16_tpl),
        .in_c1_eni37_17_tpl(in_c1_eni37_17_tpl),
        .in_c1_eni37_18_tpl(in_c1_eni37_18_tpl),
        .in_c1_eni37_19_tpl(in_c1_eni37_19_tpl),
        .in_c1_eni37_21_tpl(in_c1_eni37_21_tpl),
        .in_c1_eni37_22_tpl(in_c1_eni37_22_tpl),
        .in_c1_eni37_23_tpl(in_c1_eni37_23_tpl),
        .in_c1_eni37_24_tpl(in_c1_eni37_24_tpl),
        .in_c1_eni37_25_tpl(in_c1_eni37_25_tpl),
        .in_c1_eni37_26_tpl(in_c1_eni37_26_tpl),
        .in_c1_eni37_27_tpl(in_c1_eni37_27_tpl),
        .in_c1_eni37_28_tpl(in_c1_eni37_28_tpl),
        .in_c1_eni37_29_tpl(in_c1_eni37_29_tpl),
        .in_c1_eni37_30_tpl(in_c1_eni37_30_tpl),
        .in_c1_eni37_31_tpl(in_c1_eni37_31_tpl),
        .in_c1_eni37_32_tpl(in_c1_eni37_32_tpl),
        .in_c1_eni37_33_tpl(in_c1_eni37_33_tpl),
        .in_c1_eni37_34_tpl(in_c1_eni37_34_tpl),
        .in_c1_eni37_35_tpl(in_c1_eni37_35_tpl),
        .in_c1_eni37_36_tpl(in_c1_eni37_36_tpl),
        .in_c1_eni37_37_tpl(in_c1_eni37_37_tpl),
        .out_o_valid(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_o_valid),
        .out_unnamed_conv2d1x16(),
        .out_c1_exi48_0_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_0_tpl),
        .out_c1_exi48_1_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_1_tpl),
        .out_c1_exi48_2_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_2_tpl),
        .out_c1_exi48_3_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_3_tpl),
        .out_c1_exi48_4_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_4_tpl),
        .out_c1_exi48_5_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_5_tpl),
        .out_c1_exi48_6_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_6_tpl),
        .out_c1_exi48_7_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_7_tpl),
        .out_c1_exi48_8_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_8_tpl),
        .out_c1_exi48_9_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_9_tpl),
        .out_c1_exi48_10_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_10_tpl),
        .out_c1_exi48_11_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_11_tpl),
        .out_c1_exi48_12_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_12_tpl),
        .out_c1_exi48_13_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_13_tpl),
        .out_c1_exi48_14_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_14_tpl),
        .out_c1_exi48_15_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_15_tpl),
        .out_c1_exi48_16_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_16_tpl),
        .out_c1_exi48_17_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_17_tpl),
        .out_c1_exi48_18_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_18_tpl),
        .out_c1_exi48_19_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_19_tpl),
        .out_c1_exi48_20_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_20_tpl),
        .out_c1_exi48_21_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_21_tpl),
        .out_c1_exi48_22_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_22_tpl),
        .out_c1_exi48_23_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_23_tpl),
        .out_c1_exi48_24_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_24_tpl),
        .out_c1_exi48_25_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_25_tpl),
        .out_c1_exi48_26_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_26_tpl),
        .out_c1_exi48_27_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_27_tpl),
        .out_c1_exi48_28_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_28_tpl),
        .out_c1_exi48_29_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_29_tpl),
        .out_c1_exi48_30_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_30_tpl),
        .out_c1_exi48_31_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_31_tpl),
        .out_c1_exi48_32_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_32_tpl),
        .out_c1_exi48_33_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_33_tpl),
        .out_c1_exi48_34_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_34_tpl),
        .out_c1_exi48_35_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_35_tpl),
        .out_c1_exi48_36_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_36_tpl),
        .out_c1_exi48_37_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_37_tpl),
        .out_c1_exi48_38_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_38_tpl),
        .out_c1_exi48_39_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_39_tpl),
        .out_c1_exi48_40_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_40_tpl),
        .out_c1_exi48_41_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_41_tpl),
        .out_c1_exi48_42_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_42_tpl),
        .out_c1_exi48_43_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_43_tpl),
        .out_c1_exi48_44_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_44_tpl),
        .out_c1_exi48_45_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_45_tpl),
        .out_c1_exi48_46_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_46_tpl),
        .out_c1_exi48_47_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_47_tpl),
        .out_c1_exi48_48_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_48_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x(BLACKBOX,8)@153
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@156
    // out out_data_out_0_tpl@156
    // out out_data_out_1_tpl@156
    // out out_data_out_2_tpl@156
    // out out_data_out_3_tpl@156
    // out out_data_out_4_tpl@156
    // out out_data_out_5_tpl@156
    // out out_data_out_6_tpl@156
    // out out_data_out_7_tpl@156
    // out out_data_out_8_tpl@156
    // out out_data_out_9_tpl@156
    // out out_data_out_10_tpl@156
    // out out_data_out_11_tpl@156
    // out out_data_out_12_tpl@156
    // out out_data_out_13_tpl@156
    // out out_data_out_14_tpl@156
    // out out_data_out_15_tpl@156
    // out out_data_out_16_tpl@156
    // out out_data_out_17_tpl@156
    // out out_data_out_18_tpl@156
    // out out_data_out_19_tpl@156
    // out out_data_out_20_tpl@156
    // out out_data_out_21_tpl@156
    // out out_data_out_22_tpl@156
    // out out_data_out_23_tpl@156
    // out out_data_out_24_tpl@156
    // out out_data_out_25_tpl@156
    // out out_data_out_26_tpl@156
    // out out_data_out_27_tpl@156
    // out out_data_out_28_tpl@156
    // out out_data_out_29_tpl@156
    // out out_data_out_30_tpl@156
    // out out_data_out_31_tpl@156
    // out out_data_out_32_tpl@156
    // out out_data_out_33_tpl@156
    // out out_data_out_34_tpl@156
    // out out_data_out_35_tpl@156
    // out out_data_out_36_tpl@156
    // out out_data_out_37_tpl@156
    // out out_data_out_38_tpl@156
    // out out_data_out_39_tpl@156
    // out out_data_out_40_tpl@156
    // out out_data_out_41_tpl@156
    // out out_data_out_42_tpl@156
    // out out_data_out_43_tpl@156
    // out out_data_out_44_tpl@156
    // out out_data_out_45_tpl@156
    // out out_data_out_46_tpl@156
    // out out_data_out_47_tpl@156
    // out out_data_out_48_tpl@156
    conv2d1x1_i_llvm_fpga_sfc_exit_s_c1_out_00001_exit591_conv2d1x10 thei_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x (
        .in_dec_pipelined_thread(in_c0_exe1515),
        .in_inc_pipelined_thread(in_c0_exe22536),
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_11_tpl),
        .in_data_in_12_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_12_tpl),
        .in_data_in_13_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_13_tpl),
        .in_data_in_14_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_14_tpl),
        .in_data_in_15_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_15_tpl),
        .in_data_in_16_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_16_tpl),
        .in_data_in_17_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_17_tpl),
        .in_data_in_18_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_18_tpl),
        .in_data_in_19_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_19_tpl),
        .in_data_in_20_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_20_tpl),
        .in_data_in_21_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_21_tpl),
        .in_data_in_22_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_22_tpl),
        .in_data_in_23_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_23_tpl),
        .in_data_in_24_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_24_tpl),
        .in_data_in_25_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_25_tpl),
        .in_data_in_26_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_26_tpl),
        .in_data_in_27_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_27_tpl),
        .in_data_in_28_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_28_tpl),
        .in_data_in_29_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_29_tpl),
        .in_data_in_30_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_30_tpl),
        .in_data_in_31_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_31_tpl),
        .in_data_in_32_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_32_tpl),
        .in_data_in_33_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_33_tpl),
        .in_data_in_34_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_34_tpl),
        .in_data_in_35_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_35_tpl),
        .in_data_in_36_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_36_tpl),
        .in_data_in_37_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_37_tpl),
        .in_data_in_38_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_38_tpl),
        .in_data_in_39_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_39_tpl),
        .in_data_in_40_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_40_tpl),
        .in_data_in_41_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_41_tpl),
        .in_data_in_42_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_42_tpl),
        .in_data_in_43_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_43_tpl),
        .in_data_in_44_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_44_tpl),
        .in_data_in_45_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_45_tpl),
        .in_data_in_46_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_46_tpl),
        .in_data_in_47_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_47_tpl),
        .in_data_in_48_tpl(i_sfc_logic_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x10_aunroll_vunroll_x_out_c1_exi48_48_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_21_tpl),
        .out_data_out_22_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_22_tpl),
        .out_data_out_23_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_23_tpl),
        .out_data_out_24_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_24_tpl),
        .out_data_out_25_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_25_tpl),
        .out_data_out_26_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_26_tpl),
        .out_data_out_27_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_27_tpl),
        .out_data_out_28_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_28_tpl),
        .out_data_out_29_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_29_tpl),
        .out_data_out_30_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_30_tpl),
        .out_data_out_31_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_31_tpl),
        .out_data_out_32_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_32_tpl),
        .out_data_out_33_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_33_tpl),
        .out_data_out_34_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_34_tpl),
        .out_data_out_35_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_35_tpl),
        .out_data_out_36_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_36_tpl),
        .out_data_out_37_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_37_tpl),
        .out_data_out_38_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_38_tpl),
        .out_data_out_39_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_39_tpl),
        .out_data_out_40_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_40_tpl),
        .out_data_out_41_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_41_tpl),
        .out_data_out_42_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_42_tpl),
        .out_data_out_43_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_43_tpl),
        .out_data_out_44_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_44_tpl),
        .out_data_out_45_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_45_tpl),
        .out_data_out_46_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_46_tpl),
        .out_data_out_47_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_47_tpl),
        .out_data_out_48_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_48_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,7)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_stall_entry;

    // dupName_0_sync_out_aunroll_x(GPOUT,9)@156
    assign out_c1_exit591_0_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_0_tpl;
    assign out_c1_exit591_1_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_1_tpl;
    assign out_c1_exit591_2_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_2_tpl;
    assign out_c1_exit591_3_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_3_tpl;
    assign out_c1_exit591_4_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_4_tpl;
    assign out_c1_exit591_5_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_5_tpl;
    assign out_c1_exit591_6_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_6_tpl;
    assign out_c1_exit591_7_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_7_tpl;
    assign out_c1_exit591_8_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_8_tpl;
    assign out_c1_exit591_9_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_9_tpl;
    assign out_c1_exit591_10_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_10_tpl;
    assign out_c1_exit591_11_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_11_tpl;
    assign out_c1_exit591_12_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_12_tpl;
    assign out_c1_exit591_13_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_13_tpl;
    assign out_c1_exit591_14_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_14_tpl;
    assign out_c1_exit591_15_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_15_tpl;
    assign out_c1_exit591_16_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_16_tpl;
    assign out_c1_exit591_17_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_17_tpl;
    assign out_c1_exit591_18_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_18_tpl;
    assign out_c1_exit591_19_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_19_tpl;
    assign out_c1_exit591_20_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_20_tpl;
    assign out_c1_exit591_21_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_21_tpl;
    assign out_c1_exit591_22_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_22_tpl;
    assign out_c1_exit591_23_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_23_tpl;
    assign out_c1_exit591_24_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_24_tpl;
    assign out_c1_exit591_25_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_25_tpl;
    assign out_c1_exit591_26_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_26_tpl;
    assign out_c1_exit591_27_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_27_tpl;
    assign out_c1_exit591_28_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_28_tpl;
    assign out_c1_exit591_29_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_29_tpl;
    assign out_c1_exit591_30_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_30_tpl;
    assign out_c1_exit591_31_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_31_tpl;
    assign out_c1_exit591_32_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_32_tpl;
    assign out_c1_exit591_33_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_33_tpl;
    assign out_c1_exit591_34_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_34_tpl;
    assign out_c1_exit591_35_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_35_tpl;
    assign out_c1_exit591_36_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_36_tpl;
    assign out_c1_exit591_37_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_37_tpl;
    assign out_c1_exit591_38_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_38_tpl;
    assign out_c1_exit591_39_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_39_tpl;
    assign out_c1_exit591_40_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_40_tpl;
    assign out_c1_exit591_41_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_41_tpl;
    assign out_c1_exit591_42_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_42_tpl;
    assign out_c1_exit591_43_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_43_tpl;
    assign out_c1_exit591_44_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_44_tpl;
    assign out_c1_exit591_45_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_45_tpl;
    assign out_c1_exit591_46_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_46_tpl;
    assign out_c1_exit591_47_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_47_tpl;
    assign out_c1_exit591_48_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_data_out_48_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x11_aunroll_x_out_valid_out;

endmodule
