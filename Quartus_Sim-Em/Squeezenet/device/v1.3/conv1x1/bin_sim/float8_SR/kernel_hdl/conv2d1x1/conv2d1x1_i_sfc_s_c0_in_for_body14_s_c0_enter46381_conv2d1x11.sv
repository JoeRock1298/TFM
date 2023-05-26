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

// SystemVerilog created from conv2d1x1_i_sfc_s_c0_in_for_body14_s_c0_enter46381_conv2d1x11
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_s_c0_in_for_body14_s_c0_enter46381_conv2d1x11 (
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_filter_weight,
    input wire [63:0] in_input_im,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out,
    input wire [0:0] in_c0_eni45_0_tpl,
    input wire [0:0] in_c0_eni45_1_tpl,
    input wire [0:0] in_c0_eni45_2_tpl,
    input wire [0:0] in_c0_eni45_3_tpl,
    input wire [31:0] in_c0_eni45_4_tpl,
    input wire [31:0] in_c0_eni45_5_tpl,
    input wire [31:0] in_c0_eni45_6_tpl,
    input wire [0:0] in_c0_eni45_7_tpl,
    input wire [31:0] in_c0_eni45_8_tpl,
    input wire [31:0] in_c0_eni45_9_tpl,
    input wire [0:0] in_c0_eni45_10_tpl,
    input wire [0:0] in_c0_eni45_11_tpl,
    input wire [63:0] in_c0_eni45_12_tpl,
    input wire [31:0] in_c0_eni45_13_tpl,
    input wire [0:0] in_c0_eni45_14_tpl,
    input wire [0:0] in_c0_eni45_15_tpl,
    input wire [0:0] in_c0_eni45_16_tpl,
    input wire [32:0] in_c0_eni45_17_tpl,
    input wire [31:0] in_c0_eni45_18_tpl,
    input wire [31:0] in_c0_eni45_19_tpl,
    input wire [31:0] in_c0_eni45_20_tpl,
    input wire [0:0] in_c0_eni45_21_tpl,
    input wire [31:0] in_c0_eni45_22_tpl,
    input wire [31:0] in_c0_eni45_23_tpl,
    input wire [31:0] in_c0_eni45_24_tpl,
    input wire [31:0] in_c0_eni45_25_tpl,
    input wire [31:0] in_c0_eni45_26_tpl,
    input wire [31:0] in_c0_eni45_27_tpl,
    input wire [31:0] in_c0_eni45_28_tpl,
    input wire [31:0] in_c0_eni45_29_tpl,
    input wire [31:0] in_c0_eni45_30_tpl,
    input wire [31:0] in_c0_eni45_31_tpl,
    input wire [31:0] in_c0_eni45_32_tpl,
    input wire [31:0] in_c0_eni45_33_tpl,
    input wire [31:0] in_c0_eni45_34_tpl,
    input wire [31:0] in_c0_eni45_35_tpl,
    input wire [31:0] in_c0_eni45_36_tpl,
    input wire [31:0] in_c0_eni45_37_tpl,
    input wire [31:0] in_c0_eni45_38_tpl,
    input wire [31:0] in_c0_eni45_39_tpl,
    input wire [31:0] in_c0_eni45_40_tpl,
    input wire [31:0] in_c0_eni45_41_tpl,
    input wire [31:0] in_c0_eni45_42_tpl,
    input wire [31:0] in_c0_eni45_43_tpl,
    input wire [31:0] in_c0_eni45_44_tpl,
    input wire [31:0] in_c0_eni45_45_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit514_0_tpl,
    output wire [0:0] out_c0_exit514_1_tpl,
    output wire [0:0] out_c0_exit514_2_tpl,
    output wire [0:0] out_c0_exit514_3_tpl,
    output wire [0:0] out_c0_exit514_4_tpl,
    output wire [31:0] out_c0_exit514_5_tpl,
    output wire [63:0] out_c0_exit514_6_tpl,
    output wire [0:0] out_c0_exit514_7_tpl,
    output wire [63:0] out_c0_exit514_8_tpl,
    output wire [63:0] out_c0_exit514_9_tpl,
    output wire [63:0] out_c0_exit514_10_tpl,
    output wire [63:0] out_c0_exit514_11_tpl,
    output wire [63:0] out_c0_exit514_12_tpl,
    output wire [63:0] out_c0_exit514_13_tpl,
    output wire [63:0] out_c0_exit514_14_tpl,
    output wire [63:0] out_c0_exit514_15_tpl,
    output wire [0:0] out_c0_exit514_16_tpl,
    output wire [31:0] out_c0_exit514_17_tpl,
    output wire [31:0] out_c0_exit514_18_tpl,
    output wire [0:0] out_c0_exit514_19_tpl,
    output wire [0:0] out_c0_exit514_20_tpl,
    output wire [63:0] out_c0_exit514_21_tpl,
    output wire [0:0] out_c0_exit514_22_tpl,
    output wire [31:0] out_c0_exit514_23_tpl,
    output wire [0:0] out_c0_exit514_24_tpl,
    output wire [0:0] out_c0_exit514_25_tpl,
    output wire [0:0] out_c0_exit514_26_tpl,
    output wire [32:0] out_c0_exit514_27_tpl,
    output wire [31:0] out_c0_exit514_28_tpl,
    output wire [31:0] out_c0_exit514_29_tpl,
    output wire [31:0] out_c0_exit514_30_tpl,
    output wire [0:0] out_c0_exit514_31_tpl,
    output wire [31:0] out_c0_exit514_32_tpl,
    output wire [31:0] out_c0_exit514_33_tpl,
    output wire [31:0] out_c0_exit514_34_tpl,
    output wire [31:0] out_c0_exit514_35_tpl,
    output wire [31:0] out_c0_exit514_36_tpl,
    output wire [31:0] out_c0_exit514_37_tpl,
    output wire [31:0] out_c0_exit514_38_tpl,
    output wire [31:0] out_c0_exit514_39_tpl,
    output wire [31:0] out_c0_exit514_40_tpl,
    output wire [31:0] out_c0_exit514_41_tpl,
    output wire [31:0] out_c0_exit514_42_tpl,
    output wire [31:0] out_c0_exit514_43_tpl,
    output wire [31:0] out_c0_exit514_44_tpl,
    output wire [31:0] out_c0_exit514_45_tpl,
    output wire [31:0] out_c0_exit514_46_tpl,
    output wire [31:0] out_c0_exit514_47_tpl,
    output wire [31:0] out_c0_exit514_48_tpl,
    output wire [31:0] out_c0_exit514_49_tpl,
    output wire [31:0] out_c0_exit514_50_tpl,
    output wire [31:0] out_c0_exit514_51_tpl,
    output wire [31:0] out_c0_exit514_52_tpl,
    output wire [31:0] out_c0_exit514_53_tpl,
    output wire [31:0] out_c0_exit514_54_tpl,
    output wire [31:0] out_c0_exit514_55_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_1_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_2_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_3_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_4_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_5_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_6_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_7_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_8_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_9_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_10_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_11_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_12_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_13_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_14_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_15_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_16_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_17_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_18_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_19_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_20_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_21_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_22_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_23_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_24_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_25_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_26_tpl;
    wire [32:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_27_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_28_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_29_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_30_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_31_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_32_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_33_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_34_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_35_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_36_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_37_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_38_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_39_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_40_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_41_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_42_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_43_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_44_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_45_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_46_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_47_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_48_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_49_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_50_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_51_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_52_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_53_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_54_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_55_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_0_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_1_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_2_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_3_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_4_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_5_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_6_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_7_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_8_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_9_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_10_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_11_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_12_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_13_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_14_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_15_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_16_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_17_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_18_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_19_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_20_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_21_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_22_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_23_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_24_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_25_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_26_tpl;
    wire [32:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_27_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_28_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_29_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_30_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_31_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_32_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_33_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_34_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_35_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_36_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_37_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_38_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_39_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_40_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_41_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_42_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_43_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_44_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_45_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_46_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_47_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_48_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_49_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_50_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_51_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_52_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_53_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_54_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_55_tpl;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x(BLACKBOX,14)@6
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@9
    // out out_data_out_0_tpl@9
    // out out_data_out_1_tpl@9
    // out out_data_out_2_tpl@9
    // out out_data_out_3_tpl@9
    // out out_data_out_4_tpl@9
    // out out_data_out_5_tpl@9
    // out out_data_out_6_tpl@9
    // out out_data_out_7_tpl@9
    // out out_data_out_8_tpl@9
    // out out_data_out_9_tpl@9
    // out out_data_out_10_tpl@9
    // out out_data_out_11_tpl@9
    // out out_data_out_12_tpl@9
    // out out_data_out_13_tpl@9
    // out out_data_out_14_tpl@9
    // out out_data_out_15_tpl@9
    // out out_data_out_16_tpl@9
    // out out_data_out_17_tpl@9
    // out out_data_out_18_tpl@9
    // out out_data_out_19_tpl@9
    // out out_data_out_20_tpl@9
    // out out_data_out_21_tpl@9
    // out out_data_out_22_tpl@9
    // out out_data_out_23_tpl@9
    // out out_data_out_24_tpl@9
    // out out_data_out_25_tpl@9
    // out out_data_out_26_tpl@9
    // out out_data_out_27_tpl@9
    // out out_data_out_28_tpl@9
    // out out_data_out_29_tpl@9
    // out out_data_out_30_tpl@9
    // out out_data_out_31_tpl@9
    // out out_data_out_32_tpl@9
    // out out_data_out_33_tpl@9
    // out out_data_out_34_tpl@9
    // out out_data_out_35_tpl@9
    // out out_data_out_36_tpl@9
    // out out_data_out_37_tpl@9
    // out out_data_out_38_tpl@9
    // out out_data_out_39_tpl@9
    // out out_data_out_40_tpl@9
    // out out_data_out_41_tpl@9
    // out out_data_out_42_tpl@9
    // out out_data_out_43_tpl@9
    // out out_data_out_44_tpl@9
    // out out_data_out_45_tpl@9
    // out out_data_out_46_tpl@9
    // out out_data_out_47_tpl@9
    // out out_data_out_48_tpl@9
    // out out_data_out_49_tpl@9
    // out out_data_out_50_tpl@9
    // out out_data_out_51_tpl@9
    // out out_data_out_52_tpl@9
    // out out_data_out_53_tpl@9
    // out out_data_out_54_tpl@9
    // out out_data_out_55_tpl@9
    conv2d1x1_i_llvm_fpga_sfc_exit_s_c0_out_00000_exit514_conv2d1x10 thei_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_11_tpl),
        .in_data_in_12_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_12_tpl),
        .in_data_in_13_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_13_tpl),
        .in_data_in_14_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_14_tpl),
        .in_data_in_15_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_15_tpl),
        .in_data_in_16_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_16_tpl),
        .in_data_in_17_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_17_tpl),
        .in_data_in_18_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_18_tpl),
        .in_data_in_19_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_19_tpl),
        .in_data_in_20_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_20_tpl),
        .in_data_in_21_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_21_tpl),
        .in_data_in_22_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_22_tpl),
        .in_data_in_23_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_23_tpl),
        .in_data_in_24_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_24_tpl),
        .in_data_in_25_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_25_tpl),
        .in_data_in_26_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_26_tpl),
        .in_data_in_27_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_27_tpl),
        .in_data_in_28_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_28_tpl),
        .in_data_in_29_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_29_tpl),
        .in_data_in_30_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_30_tpl),
        .in_data_in_31_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_31_tpl),
        .in_data_in_32_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_32_tpl),
        .in_data_in_33_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_33_tpl),
        .in_data_in_34_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_34_tpl),
        .in_data_in_35_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_35_tpl),
        .in_data_in_36_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_36_tpl),
        .in_data_in_37_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_37_tpl),
        .in_data_in_38_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_38_tpl),
        .in_data_in_39_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_39_tpl),
        .in_data_in_40_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_40_tpl),
        .in_data_in_41_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_41_tpl),
        .in_data_in_42_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_42_tpl),
        .in_data_in_43_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_43_tpl),
        .in_data_in_44_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_44_tpl),
        .in_data_in_45_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_45_tpl),
        .in_data_in_46_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_46_tpl),
        .in_data_in_47_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_47_tpl),
        .in_data_in_48_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_48_tpl),
        .in_data_in_49_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_49_tpl),
        .in_data_in_50_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_50_tpl),
        .in_data_in_51_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_51_tpl),
        .in_data_in_52_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_52_tpl),
        .in_data_in_53_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_53_tpl),
        .in_data_in_54_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_54_tpl),
        .in_data_in_55_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_55_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_21_tpl),
        .out_data_out_22_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_22_tpl),
        .out_data_out_23_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_23_tpl),
        .out_data_out_24_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_24_tpl),
        .out_data_out_25_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_25_tpl),
        .out_data_out_26_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_26_tpl),
        .out_data_out_27_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_27_tpl),
        .out_data_out_28_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_28_tpl),
        .out_data_out_29_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_29_tpl),
        .out_data_out_30_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_30_tpl),
        .out_data_out_31_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_31_tpl),
        .out_data_out_32_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_32_tpl),
        .out_data_out_33_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_33_tpl),
        .out_data_out_34_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_34_tpl),
        .out_data_out_35_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_35_tpl),
        .out_data_out_36_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_36_tpl),
        .out_data_out_37_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_37_tpl),
        .out_data_out_38_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_38_tpl),
        .out_data_out_39_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_39_tpl),
        .out_data_out_40_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_40_tpl),
        .out_data_out_41_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_41_tpl),
        .out_data_out_42_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_42_tpl),
        .out_data_out_43_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_43_tpl),
        .out_data_out_44_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_44_tpl),
        .out_data_out_45_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_45_tpl),
        .out_data_out_46_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_46_tpl),
        .out_data_out_47_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_47_tpl),
        .out_data_out_48_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_48_tpl),
        .out_data_out_49_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_49_tpl),
        .out_data_out_50_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_50_tpl),
        .out_data_out_51_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_51_tpl),
        .out_data_out_52_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_52_tpl),
        .out_data_out_53_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_53_tpl),
        .out_data_out_54_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_54_tpl),
        .out_data_out_55_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_55_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x(BLACKBOX,15)@1
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out@20000000
    // out out_o_valid@6
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_conv2d1x16@6
    // out out_c0_exi55_0_tpl@6
    // out out_c0_exi55_1_tpl@6
    // out out_c0_exi55_2_tpl@6
    // out out_c0_exi55_3_tpl@6
    // out out_c0_exi55_4_tpl@6
    // out out_c0_exi55_5_tpl@6
    // out out_c0_exi55_6_tpl@6
    // out out_c0_exi55_7_tpl@6
    // out out_c0_exi55_8_tpl@6
    // out out_c0_exi55_9_tpl@6
    // out out_c0_exi55_10_tpl@6
    // out out_c0_exi55_11_tpl@6
    // out out_c0_exi55_12_tpl@6
    // out out_c0_exi55_13_tpl@6
    // out out_c0_exi55_14_tpl@6
    // out out_c0_exi55_15_tpl@6
    // out out_c0_exi55_16_tpl@6
    // out out_c0_exi55_17_tpl@6
    // out out_c0_exi55_18_tpl@6
    // out out_c0_exi55_19_tpl@6
    // out out_c0_exi55_20_tpl@6
    // out out_c0_exi55_21_tpl@6
    // out out_c0_exi55_22_tpl@6
    // out out_c0_exi55_23_tpl@6
    // out out_c0_exi55_24_tpl@6
    // out out_c0_exi55_25_tpl@6
    // out out_c0_exi55_26_tpl@6
    // out out_c0_exi55_27_tpl@6
    // out out_c0_exi55_28_tpl@6
    // out out_c0_exi55_29_tpl@6
    // out out_c0_exi55_30_tpl@6
    // out out_c0_exi55_31_tpl@6
    // out out_c0_exi55_32_tpl@6
    // out out_c0_exi55_33_tpl@6
    // out out_c0_exi55_34_tpl@6
    // out out_c0_exi55_35_tpl@6
    // out out_c0_exi55_36_tpl@6
    // out out_c0_exi55_37_tpl@6
    // out out_c0_exi55_38_tpl@6
    // out out_c0_exi55_39_tpl@6
    // out out_c0_exi55_40_tpl@6
    // out out_c0_exi55_41_tpl@6
    // out out_c0_exi55_42_tpl@6
    // out out_c0_exi55_43_tpl@6
    // out out_c0_exi55_44_tpl@6
    // out out_c0_exi55_45_tpl@6
    // out out_c0_exi55_46_tpl@6
    // out out_c0_exi55_47_tpl@6
    // out out_c0_exi55_48_tpl@6
    // out out_c0_exi55_49_tpl@6
    // out out_c0_exi55_50_tpl@6
    // out out_c0_exi55_51_tpl@6
    // out out_c0_exi55_52_tpl@6
    // out out_c0_exi55_53_tpl@6
    // out out_c0_exi55_54_tpl@6
    // out out_c0_exi55_55_tpl@6
    conv2d1x1_i_sfc_logic_s_c0_in_for_body140000nter46381_conv2d1x10 thei_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x (
        .in_filter_weight(in_filter_weight),
        .in_i_valid(input_accepted_and_q),
        .in_input_im(in_input_im),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni45_0_tpl(in_c0_eni45_0_tpl),
        .in_c0_eni45_1_tpl(in_c0_eni45_1_tpl),
        .in_c0_eni45_2_tpl(in_c0_eni45_2_tpl),
        .in_c0_eni45_3_tpl(in_c0_eni45_3_tpl),
        .in_c0_eni45_4_tpl(in_c0_eni45_4_tpl),
        .in_c0_eni45_5_tpl(in_c0_eni45_5_tpl),
        .in_c0_eni45_6_tpl(in_c0_eni45_6_tpl),
        .in_c0_eni45_7_tpl(in_c0_eni45_7_tpl),
        .in_c0_eni45_8_tpl(in_c0_eni45_8_tpl),
        .in_c0_eni45_9_tpl(in_c0_eni45_9_tpl),
        .in_c0_eni45_10_tpl(in_c0_eni45_10_tpl),
        .in_c0_eni45_11_tpl(in_c0_eni45_11_tpl),
        .in_c0_eni45_12_tpl(in_c0_eni45_12_tpl),
        .in_c0_eni45_13_tpl(in_c0_eni45_13_tpl),
        .in_c0_eni45_14_tpl(in_c0_eni45_14_tpl),
        .in_c0_eni45_15_tpl(in_c0_eni45_15_tpl),
        .in_c0_eni45_16_tpl(in_c0_eni45_16_tpl),
        .in_c0_eni45_17_tpl(in_c0_eni45_17_tpl),
        .in_c0_eni45_18_tpl(in_c0_eni45_18_tpl),
        .in_c0_eni45_19_tpl(in_c0_eni45_19_tpl),
        .in_c0_eni45_20_tpl(in_c0_eni45_20_tpl),
        .in_c0_eni45_21_tpl(in_c0_eni45_21_tpl),
        .in_c0_eni45_22_tpl(in_c0_eni45_22_tpl),
        .in_c0_eni45_23_tpl(in_c0_eni45_23_tpl),
        .in_c0_eni45_24_tpl(in_c0_eni45_24_tpl),
        .in_c0_eni45_25_tpl(in_c0_eni45_25_tpl),
        .in_c0_eni45_26_tpl(in_c0_eni45_26_tpl),
        .in_c0_eni45_27_tpl(in_c0_eni45_27_tpl),
        .in_c0_eni45_28_tpl(in_c0_eni45_28_tpl),
        .in_c0_eni45_29_tpl(in_c0_eni45_29_tpl),
        .in_c0_eni45_30_tpl(in_c0_eni45_30_tpl),
        .in_c0_eni45_31_tpl(in_c0_eni45_31_tpl),
        .in_c0_eni45_32_tpl(in_c0_eni45_32_tpl),
        .in_c0_eni45_33_tpl(in_c0_eni45_33_tpl),
        .in_c0_eni45_34_tpl(in_c0_eni45_34_tpl),
        .in_c0_eni45_35_tpl(in_c0_eni45_35_tpl),
        .in_c0_eni45_36_tpl(in_c0_eni45_36_tpl),
        .in_c0_eni45_37_tpl(in_c0_eni45_37_tpl),
        .in_c0_eni45_38_tpl(in_c0_eni45_38_tpl),
        .in_c0_eni45_39_tpl(in_c0_eni45_39_tpl),
        .in_c0_eni45_40_tpl(in_c0_eni45_40_tpl),
        .in_c0_eni45_41_tpl(in_c0_eni45_41_tpl),
        .in_c0_eni45_42_tpl(in_c0_eni45_42_tpl),
        .in_c0_eni45_43_tpl(in_c0_eni45_43_tpl),
        .in_c0_eni45_44_tpl(in_c0_eni45_44_tpl),
        .in_c0_eni45_45_tpl(in_c0_eni45_45_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out),
        .out_o_valid(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_conv2d1x16(),
        .out_c0_exi55_0_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_0_tpl),
        .out_c0_exi55_1_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_1_tpl),
        .out_c0_exi55_2_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_2_tpl),
        .out_c0_exi55_3_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_3_tpl),
        .out_c0_exi55_4_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_4_tpl),
        .out_c0_exi55_5_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_5_tpl),
        .out_c0_exi55_6_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_6_tpl),
        .out_c0_exi55_7_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_7_tpl),
        .out_c0_exi55_8_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_8_tpl),
        .out_c0_exi55_9_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_9_tpl),
        .out_c0_exi55_10_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_10_tpl),
        .out_c0_exi55_11_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_11_tpl),
        .out_c0_exi55_12_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_12_tpl),
        .out_c0_exi55_13_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_13_tpl),
        .out_c0_exi55_14_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_14_tpl),
        .out_c0_exi55_15_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_15_tpl),
        .out_c0_exi55_16_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_16_tpl),
        .out_c0_exi55_17_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_17_tpl),
        .out_c0_exi55_18_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_18_tpl),
        .out_c0_exi55_19_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_19_tpl),
        .out_c0_exi55_20_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_20_tpl),
        .out_c0_exi55_21_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_21_tpl),
        .out_c0_exi55_22_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_22_tpl),
        .out_c0_exi55_23_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_23_tpl),
        .out_c0_exi55_24_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_24_tpl),
        .out_c0_exi55_25_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_25_tpl),
        .out_c0_exi55_26_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_26_tpl),
        .out_c0_exi55_27_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_27_tpl),
        .out_c0_exi55_28_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_28_tpl),
        .out_c0_exi55_29_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_29_tpl),
        .out_c0_exi55_30_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_30_tpl),
        .out_c0_exi55_31_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_31_tpl),
        .out_c0_exi55_32_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_32_tpl),
        .out_c0_exi55_33_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_33_tpl),
        .out_c0_exi55_34_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_34_tpl),
        .out_c0_exi55_35_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_35_tpl),
        .out_c0_exi55_36_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_36_tpl),
        .out_c0_exi55_37_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_37_tpl),
        .out_c0_exi55_38_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_38_tpl),
        .out_c0_exi55_39_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_39_tpl),
        .out_c0_exi55_40_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_40_tpl),
        .out_c0_exi55_41_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_41_tpl),
        .out_c0_exi55_42_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_42_tpl),
        .out_c0_exi55_43_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_43_tpl),
        .out_c0_exi55_44_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_44_tpl),
        .out_c0_exi55_45_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_45_tpl),
        .out_c0_exi55_46_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_46_tpl),
        .out_c0_exi55_47_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_47_tpl),
        .out_c0_exi55_48_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_48_tpl),
        .out_c0_exi55_49_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_49_tpl),
        .out_c0_exi55_50_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_50_tpl),
        .out_c0_exi55_51_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_51_tpl),
        .out_c0_exi55_52_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_52_tpl),
        .out_c0_exi55_53_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_53_tpl),
        .out_c0_exi55_54_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_54_tpl),
        .out_c0_exi55_55_tpl(i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_c0_exi55_55_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // pipeline_valid_out_sync(GPOUT,6)
    assign out_pipeline_valid_out = i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,10)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out = i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out;

    // sync_out(GPOUT,12)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,13)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out = i_sfc_logic_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x10_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out;

    // dupName_0_sync_out_aunroll_x(GPOUT,17)@9
    assign out_c0_exit514_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit514_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit514_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit514_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit514_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_4_tpl;
    assign out_c0_exit514_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_5_tpl;
    assign out_c0_exit514_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_6_tpl;
    assign out_c0_exit514_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_7_tpl;
    assign out_c0_exit514_8_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_8_tpl;
    assign out_c0_exit514_9_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_9_tpl;
    assign out_c0_exit514_10_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_10_tpl;
    assign out_c0_exit514_11_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_11_tpl;
    assign out_c0_exit514_12_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_12_tpl;
    assign out_c0_exit514_13_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_13_tpl;
    assign out_c0_exit514_14_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_14_tpl;
    assign out_c0_exit514_15_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_15_tpl;
    assign out_c0_exit514_16_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_16_tpl;
    assign out_c0_exit514_17_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_17_tpl;
    assign out_c0_exit514_18_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_18_tpl;
    assign out_c0_exit514_19_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_19_tpl;
    assign out_c0_exit514_20_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_20_tpl;
    assign out_c0_exit514_21_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_21_tpl;
    assign out_c0_exit514_22_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_22_tpl;
    assign out_c0_exit514_23_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_23_tpl;
    assign out_c0_exit514_24_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_24_tpl;
    assign out_c0_exit514_25_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_25_tpl;
    assign out_c0_exit514_26_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_26_tpl;
    assign out_c0_exit514_27_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_27_tpl;
    assign out_c0_exit514_28_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_28_tpl;
    assign out_c0_exit514_29_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_29_tpl;
    assign out_c0_exit514_30_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_30_tpl;
    assign out_c0_exit514_31_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_31_tpl;
    assign out_c0_exit514_32_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_32_tpl;
    assign out_c0_exit514_33_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_33_tpl;
    assign out_c0_exit514_34_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_34_tpl;
    assign out_c0_exit514_35_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_35_tpl;
    assign out_c0_exit514_36_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_36_tpl;
    assign out_c0_exit514_37_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_37_tpl;
    assign out_c0_exit514_38_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_38_tpl;
    assign out_c0_exit514_39_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_39_tpl;
    assign out_c0_exit514_40_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_40_tpl;
    assign out_c0_exit514_41_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_41_tpl;
    assign out_c0_exit514_42_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_42_tpl;
    assign out_c0_exit514_43_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_43_tpl;
    assign out_c0_exit514_44_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_44_tpl;
    assign out_c0_exit514_45_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_45_tpl;
    assign out_c0_exit514_46_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_46_tpl;
    assign out_c0_exit514_47_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_47_tpl;
    assign out_c0_exit514_48_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_48_tpl;
    assign out_c0_exit514_49_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_49_tpl;
    assign out_c0_exit514_50_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_50_tpl;
    assign out_c0_exit514_51_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_51_tpl;
    assign out_c0_exit514_52_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_52_tpl;
    assign out_c0_exit514_53_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_53_tpl;
    assign out_c0_exit514_54_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_54_tpl;
    assign out_c0_exit514_55_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_data_out_55_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x11_aunroll_x_out_valid_out;

endmodule
