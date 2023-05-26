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

// SystemVerilog created from conv2d1x1_i_llvm_fpga_sfc_exit_s_c0_out_0002conv2d1x11_data_fifo
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_llvm_fpga_sfc_exit_s_c0_out_0002conv2d1x11_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [0:0] in_i_data_2_tpl,
    input wire [0:0] in_i_data_3_tpl,
    input wire [0:0] in_i_data_4_tpl,
    input wire [0:0] in_i_data_5_tpl,
    input wire [0:0] in_i_data_6_tpl,
    input wire [0:0] in_i_data_7_tpl,
    input wire [31:0] in_i_data_8_tpl,
    input wire [31:0] in_i_data_9_tpl,
    input wire [31:0] in_i_data_10_tpl,
    input wire [31:0] in_i_data_11_tpl,
    input wire [31:0] in_i_data_12_tpl,
    input wire [31:0] in_i_data_13_tpl,
    input wire [31:0] in_i_data_14_tpl,
    input wire [31:0] in_i_data_15_tpl,
    input wire [31:0] in_i_data_16_tpl,
    input wire [31:0] in_i_data_17_tpl,
    input wire [31:0] in_i_data_18_tpl,
    input wire [31:0] in_i_data_19_tpl,
    input wire [31:0] in_i_data_20_tpl,
    input wire [31:0] in_i_data_21_tpl,
    input wire [31:0] in_i_data_22_tpl,
    input wire [31:0] in_i_data_23_tpl,
    input wire [31:0] in_i_data_24_tpl,
    input wire [31:0] in_i_data_25_tpl,
    input wire [0:0] in_i_data_26_tpl,
    input wire [0:0] in_i_data_27_tpl,
    input wire [31:0] in_i_data_28_tpl,
    input wire [31:0] in_i_data_29_tpl,
    input wire [31:0] in_i_data_30_tpl,
    input wire [0:0] in_i_data_31_tpl,
    input wire [0:0] in_i_data_32_tpl,
    input wire [31:0] in_i_data_33_tpl,
    input wire [31:0] in_i_data_34_tpl,
    input wire [31:0] in_i_data_35_tpl,
    input wire [31:0] in_i_data_36_tpl,
    input wire [31:0] in_i_data_37_tpl,
    input wire [31:0] in_i_data_38_tpl,
    input wire [31:0] in_i_data_39_tpl,
    input wire [31:0] in_i_data_40_tpl,
    input wire [31:0] in_i_data_41_tpl,
    input wire [31:0] in_i_data_42_tpl,
    input wire [31:0] in_i_data_43_tpl,
    input wire [31:0] in_i_data_44_tpl,
    input wire [31:0] in_i_data_45_tpl,
    input wire [31:0] in_i_data_46_tpl,
    input wire [31:0] in_i_data_47_tpl,
    input wire [31:0] in_i_data_48_tpl,
    input wire [0:0] in_i_data_49_tpl,
    input wire [31:0] in_i_data_50_tpl,
    input wire [0:0] in_i_data_51_tpl,
    input wire [0:0] in_i_data_52_tpl,
    input wire [0:0] in_i_data_53_tpl,
    input wire [32:0] in_i_data_54_tpl,
    input wire [31:0] in_i_data_55_tpl,
    input wire [31:0] in_i_data_56_tpl,
    input wire [31:0] in_i_data_57_tpl,
    input wire [0:0] in_i_data_58_tpl,
    input wire [0:0] in_i_data_59_tpl,
    input wire [31:0] in_i_data_60_tpl,
    input wire [31:0] in_i_data_61_tpl,
    input wire [31:0] in_i_data_62_tpl,
    input wire [31:0] in_i_data_63_tpl,
    input wire [31:0] in_i_data_64_tpl,
    input wire [31:0] in_i_data_65_tpl,
    input wire [31:0] in_i_data_66_tpl,
    input wire [31:0] in_i_data_67_tpl,
    input wire [31:0] in_i_data_68_tpl,
    input wire [31:0] in_i_data_69_tpl,
    input wire [31:0] in_i_data_70_tpl,
    input wire [31:0] in_i_data_71_tpl,
    input wire [31:0] in_i_data_72_tpl,
    input wire [31:0] in_i_data_73_tpl,
    input wire [31:0] in_i_data_74_tpl,
    input wire [31:0] in_i_data_75_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [0:0] out_o_data_2_tpl,
    output wire [0:0] out_o_data_3_tpl,
    output wire [0:0] out_o_data_4_tpl,
    output wire [0:0] out_o_data_5_tpl,
    output wire [0:0] out_o_data_6_tpl,
    output wire [0:0] out_o_data_7_tpl,
    output wire [31:0] out_o_data_8_tpl,
    output wire [31:0] out_o_data_9_tpl,
    output wire [31:0] out_o_data_10_tpl,
    output wire [31:0] out_o_data_11_tpl,
    output wire [31:0] out_o_data_12_tpl,
    output wire [31:0] out_o_data_13_tpl,
    output wire [31:0] out_o_data_14_tpl,
    output wire [31:0] out_o_data_15_tpl,
    output wire [31:0] out_o_data_16_tpl,
    output wire [31:0] out_o_data_17_tpl,
    output wire [31:0] out_o_data_18_tpl,
    output wire [31:0] out_o_data_19_tpl,
    output wire [31:0] out_o_data_20_tpl,
    output wire [31:0] out_o_data_21_tpl,
    output wire [31:0] out_o_data_22_tpl,
    output wire [31:0] out_o_data_23_tpl,
    output wire [31:0] out_o_data_24_tpl,
    output wire [31:0] out_o_data_25_tpl,
    output wire [0:0] out_o_data_26_tpl,
    output wire [0:0] out_o_data_27_tpl,
    output wire [31:0] out_o_data_28_tpl,
    output wire [31:0] out_o_data_29_tpl,
    output wire [31:0] out_o_data_30_tpl,
    output wire [0:0] out_o_data_31_tpl,
    output wire [0:0] out_o_data_32_tpl,
    output wire [31:0] out_o_data_33_tpl,
    output wire [31:0] out_o_data_34_tpl,
    output wire [31:0] out_o_data_35_tpl,
    output wire [31:0] out_o_data_36_tpl,
    output wire [31:0] out_o_data_37_tpl,
    output wire [31:0] out_o_data_38_tpl,
    output wire [31:0] out_o_data_39_tpl,
    output wire [31:0] out_o_data_40_tpl,
    output wire [31:0] out_o_data_41_tpl,
    output wire [31:0] out_o_data_42_tpl,
    output wire [31:0] out_o_data_43_tpl,
    output wire [31:0] out_o_data_44_tpl,
    output wire [31:0] out_o_data_45_tpl,
    output wire [31:0] out_o_data_46_tpl,
    output wire [31:0] out_o_data_47_tpl,
    output wire [31:0] out_o_data_48_tpl,
    output wire [0:0] out_o_data_49_tpl,
    output wire [31:0] out_o_data_50_tpl,
    output wire [0:0] out_o_data_51_tpl,
    output wire [0:0] out_o_data_52_tpl,
    output wire [0:0] out_o_data_53_tpl,
    output wire [32:0] out_o_data_54_tpl,
    output wire [31:0] out_o_data_55_tpl,
    output wire [31:0] out_o_data_56_tpl,
    output wire [31:0] out_o_data_57_tpl,
    output wire [0:0] out_o_data_58_tpl,
    output wire [0:0] out_o_data_59_tpl,
    output wire [31:0] out_o_data_60_tpl,
    output wire [31:0] out_o_data_61_tpl,
    output wire [31:0] out_o_data_62_tpl,
    output wire [31:0] out_o_data_63_tpl,
    output wire [31:0] out_o_data_64_tpl,
    output wire [31:0] out_o_data_65_tpl,
    output wire [31:0] out_o_data_66_tpl,
    output wire [31:0] out_o_data_67_tpl,
    output wire [31:0] out_o_data_68_tpl,
    output wire [31:0] out_o_data_69_tpl,
    output wire [31:0] out_o_data_70_tpl,
    output wire [31:0] out_o_data_71_tpl,
    output wire [31:0] out_o_data_72_tpl,
    output wire [31:0] out_o_data_73_tpl,
    output wire [31:0] out_o_data_74_tpl,
    output wire [31:0] out_o_data_75_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc148_in;
    wire [0:0] adapt_scalar_trunc148_q;
    wire [0:0] adapt_scalar_trunc150_in;
    wire [0:0] adapt_scalar_trunc150_q;
    wire [0:0] adapt_scalar_trunc152_in;
    wire [0:0] adapt_scalar_trunc152_q;
    wire [0:0] adapt_scalar_trunc154_in;
    wire [0:0] adapt_scalar_trunc154_q;
    wire [0:0] adapt_scalar_trunc156_in;
    wire [0:0] adapt_scalar_trunc156_q;
    wire [0:0] adapt_scalar_trunc158_in;
    wire [0:0] adapt_scalar_trunc158_q;
    wire [0:0] adapt_scalar_trunc160_in;
    wire [0:0] adapt_scalar_trunc160_q;
    wire [0:0] adapt_scalar_trunc162_in;
    wire [0:0] adapt_scalar_trunc162_q;
    wire [0:0] adapt_scalar_trunc200_in;
    wire [0:0] adapt_scalar_trunc200_q;
    wire [0:0] adapt_scalar_trunc202_in;
    wire [0:0] adapt_scalar_trunc202_q;
    wire [0:0] adapt_scalar_trunc210_in;
    wire [0:0] adapt_scalar_trunc210_q;
    wire [0:0] adapt_scalar_trunc212_in;
    wire [0:0] adapt_scalar_trunc212_q;
    wire [0:0] adapt_scalar_trunc246_in;
    wire [0:0] adapt_scalar_trunc246_q;
    wire [0:0] adapt_scalar_trunc250_in;
    wire [0:0] adapt_scalar_trunc250_q;
    wire [0:0] adapt_scalar_trunc252_in;
    wire [0:0] adapt_scalar_trunc252_q;
    wire [0:0] adapt_scalar_trunc254_in;
    wire [0:0] adapt_scalar_trunc254_q;
    wire [32:0] adapt_scalar_trunc256_in;
    wire [32:0] adapt_scalar_trunc256_q;
    wire [0:0] adapt_scalar_trunc264_in;
    wire [0:0] adapt_scalar_trunc264_q;
    wire [0:0] adapt_scalar_trunc266_in;
    wire [0:0] adapt_scalar_trunc266_q;
    wire [15:0] c_i16_0113_q;
    wire [23:0] c_i24_097_q;
    wire [30:0] c_i31_0106_q;
    wire [6:0] c_i7_010_q;
    wire [7:0] c_i8_0104_q;
    wire [2111:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension100_q;
    wire [7:0] element_extension102_q;
    wire [63:0] element_extension105_q;
    wire [7:0] element_extension109_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension111_q;
    wire [7:0] element_extension13_q;
    wire [7:0] element_extension15_q;
    wire [7:0] element_extension17_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension51_q;
    wire [7:0] element_extension53_q;
    wire [7:0] element_extension58_q;
    wire [7:0] element_extension60_q;
    wire [7:0] element_extension7_q;
    wire [7:0] element_extension9_q;
    wire [7:0] element_extension95_q;
    wire [7:0] element_extension98_q;
    wire [2111:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_almost_full_bitsignaltemp;
    wire [2111:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect147_b;
    wire [0:0] ip_dsdk_adapt_bitselect149_b;
    wire [0:0] ip_dsdk_adapt_bitselect151_b;
    wire [0:0] ip_dsdk_adapt_bitselect153_b;
    wire [0:0] ip_dsdk_adapt_bitselect155_b;
    wire [0:0] ip_dsdk_adapt_bitselect157_b;
    wire [0:0] ip_dsdk_adapt_bitselect159_b;
    wire [0:0] ip_dsdk_adapt_bitselect161_b;
    wire [31:0] ip_dsdk_adapt_bitselect163_b;
    wire [31:0] ip_dsdk_adapt_bitselect165_b;
    wire [31:0] ip_dsdk_adapt_bitselect167_b;
    wire [31:0] ip_dsdk_adapt_bitselect169_b;
    wire [31:0] ip_dsdk_adapt_bitselect171_b;
    wire [31:0] ip_dsdk_adapt_bitselect173_b;
    wire [31:0] ip_dsdk_adapt_bitselect175_b;
    wire [31:0] ip_dsdk_adapt_bitselect177_b;
    wire [31:0] ip_dsdk_adapt_bitselect179_b;
    wire [31:0] ip_dsdk_adapt_bitselect181_b;
    wire [31:0] ip_dsdk_adapt_bitselect183_b;
    wire [31:0] ip_dsdk_adapt_bitselect185_b;
    wire [31:0] ip_dsdk_adapt_bitselect187_b;
    wire [31:0] ip_dsdk_adapt_bitselect189_b;
    wire [31:0] ip_dsdk_adapt_bitselect191_b;
    wire [31:0] ip_dsdk_adapt_bitselect193_b;
    wire [31:0] ip_dsdk_adapt_bitselect195_b;
    wire [31:0] ip_dsdk_adapt_bitselect197_b;
    wire [0:0] ip_dsdk_adapt_bitselect199_b;
    wire [0:0] ip_dsdk_adapt_bitselect201_b;
    wire [31:0] ip_dsdk_adapt_bitselect203_b;
    wire [31:0] ip_dsdk_adapt_bitselect205_b;
    wire [31:0] ip_dsdk_adapt_bitselect207_b;
    wire [0:0] ip_dsdk_adapt_bitselect209_b;
    wire [0:0] ip_dsdk_adapt_bitselect211_b;
    wire [31:0] ip_dsdk_adapt_bitselect213_b;
    wire [31:0] ip_dsdk_adapt_bitselect215_b;
    wire [31:0] ip_dsdk_adapt_bitselect217_b;
    wire [31:0] ip_dsdk_adapt_bitselect219_b;
    wire [31:0] ip_dsdk_adapt_bitselect221_b;
    wire [31:0] ip_dsdk_adapt_bitselect223_b;
    wire [31:0] ip_dsdk_adapt_bitselect225_b;
    wire [31:0] ip_dsdk_adapt_bitselect227_b;
    wire [31:0] ip_dsdk_adapt_bitselect229_b;
    wire [31:0] ip_dsdk_adapt_bitselect231_b;
    wire [31:0] ip_dsdk_adapt_bitselect233_b;
    wire [31:0] ip_dsdk_adapt_bitselect235_b;
    wire [31:0] ip_dsdk_adapt_bitselect237_b;
    wire [31:0] ip_dsdk_adapt_bitselect239_b;
    wire [31:0] ip_dsdk_adapt_bitselect241_b;
    wire [31:0] ip_dsdk_adapt_bitselect243_b;
    wire [0:0] ip_dsdk_adapt_bitselect245_b;
    wire [31:0] ip_dsdk_adapt_bitselect247_b;
    wire [0:0] ip_dsdk_adapt_bitselect249_b;
    wire [0:0] ip_dsdk_adapt_bitselect251_b;
    wire [0:0] ip_dsdk_adapt_bitselect253_b;
    wire [32:0] ip_dsdk_adapt_bitselect255_b;
    wire [31:0] ip_dsdk_adapt_bitselect257_b;
    wire [31:0] ip_dsdk_adapt_bitselect259_b;
    wire [31:0] ip_dsdk_adapt_bitselect261_b;
    wire [0:0] ip_dsdk_adapt_bitselect263_b;
    wire [0:0] ip_dsdk_adapt_bitselect265_b;
    wire [31:0] ip_dsdk_adapt_bitselect267_b;
    wire [31:0] ip_dsdk_adapt_bitselect269_b;
    wire [31:0] ip_dsdk_adapt_bitselect271_b;
    wire [31:0] ip_dsdk_adapt_bitselect273_b;
    wire [31:0] ip_dsdk_adapt_bitselect275_b;
    wire [31:0] ip_dsdk_adapt_bitselect277_b;
    wire [31:0] ip_dsdk_adapt_bitselect279_b;
    wire [31:0] ip_dsdk_adapt_bitselect281_b;
    wire [31:0] ip_dsdk_adapt_bitselect283_b;
    wire [31:0] ip_dsdk_adapt_bitselect285_b;
    wire [31:0] ip_dsdk_adapt_bitselect287_b;
    wire [31:0] ip_dsdk_adapt_bitselect289_b;
    wire [31:0] ip_dsdk_adapt_bitselect291_b;
    wire [31:0] ip_dsdk_adapt_bitselect293_b;
    wire [31:0] ip_dsdk_adapt_bitselect295_b;
    wire [31:0] ip_dsdk_adapt_bitselect297_b;


    // c_i7_010(CONSTANT,126)
    assign c_i7_010_q = $unsigned(7'b0000000);

    // element_extension111(BITJOIN,151)
    assign element_extension111_q = {c_i7_010_q, in_i_data_59_tpl};

    // element_extension109(BITJOIN,149)
    assign element_extension109_q = {c_i7_010_q, in_i_data_58_tpl};

    // c_i31_0106(CONSTANT,125)
    assign c_i31_0106_q = $unsigned(31'b0000000000000000000000000000000);

    // element_extension105(BITJOIN,148)
    assign element_extension105_q = {c_i31_0106_q, in_i_data_54_tpl};

    // c_i8_0104(CONSTANT,144)
    assign c_i8_0104_q = $unsigned(8'b00000000);

    // element_extension102(BITJOIN,147)
    assign element_extension102_q = {c_i7_010_q, in_i_data_53_tpl};

    // element_extension100(BITJOIN,146)
    assign element_extension100_q = {c_i7_010_q, in_i_data_52_tpl};

    // element_extension98(BITJOIN,164)
    assign element_extension98_q = {c_i7_010_q, in_i_data_51_tpl};

    // c_i24_097(CONSTANT,124)
    assign c_i24_097_q = $unsigned(24'b000000000000000000000000);

    // element_extension95(BITJOIN,163)
    assign element_extension95_q = {c_i7_010_q, in_i_data_49_tpl};

    // element_extension60(BITJOIN,160)
    assign element_extension60_q = {c_i7_010_q, in_i_data_32_tpl};

    // element_extension58(BITJOIN,159)
    assign element_extension58_q = {c_i7_010_q, in_i_data_31_tpl};

    // c_i16_0113(CONSTANT,121)
    assign c_i16_0113_q = $unsigned(16'b0000000000000000);

    // element_extension53(BITJOIN,158)
    assign element_extension53_q = {c_i7_010_q, in_i_data_27_tpl};

    // element_extension51(BITJOIN,157)
    assign element_extension51_q = {c_i7_010_q, in_i_data_26_tpl};

    // element_extension17(BITJOIN,154)
    assign element_extension17_q = {c_i7_010_q, in_i_data_7_tpl};

    // element_extension15(BITJOIN,153)
    assign element_extension15_q = {c_i7_010_q, in_i_data_6_tpl};

    // element_extension13(BITJOIN,152)
    assign element_extension13_q = {c_i7_010_q, in_i_data_5_tpl};

    // element_extension11(BITJOIN,150)
    assign element_extension11_q = {c_i7_010_q, in_i_data_4_tpl};

    // element_extension9(BITJOIN,162)
    assign element_extension9_q = {c_i7_010_q, in_i_data_3_tpl};

    // element_extension7(BITJOIN,161)
    assign element_extension7_q = {c_i7_010_q, in_i_data_2_tpl};

    // element_extension5(BITJOIN,156)
    assign element_extension5_q = {c_i7_010_q, in_i_data_1_tpl};

    // element_extension3(BITJOIN,155)
    assign element_extension3_q = {c_i7_010_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,145)
    assign dsdk_ip_adapt_bitjoin1_q = {in_i_data_75_tpl, in_i_data_74_tpl, in_i_data_73_tpl, in_i_data_72_tpl, in_i_data_71_tpl, in_i_data_70_tpl, in_i_data_69_tpl, in_i_data_68_tpl, in_i_data_67_tpl, in_i_data_66_tpl, in_i_data_65_tpl, in_i_data_64_tpl, in_i_data_63_tpl, in_i_data_62_tpl, in_i_data_61_tpl, in_i_data_60_tpl, c_i16_0113_q, element_extension111_q, element_extension109_q, in_i_data_57_tpl, in_i_data_56_tpl, in_i_data_55_tpl, element_extension105_q, c_i8_0104_q, element_extension102_q, element_extension100_q, element_extension98_q, in_i_data_50_tpl, c_i24_097_q, element_extension95_q, in_i_data_48_tpl, in_i_data_47_tpl, in_i_data_46_tpl, in_i_data_45_tpl, in_i_data_44_tpl, in_i_data_43_tpl, in_i_data_42_tpl, in_i_data_41_tpl, in_i_data_40_tpl, in_i_data_39_tpl, in_i_data_38_tpl, in_i_data_37_tpl, in_i_data_36_tpl, in_i_data_35_tpl, in_i_data_34_tpl, in_i_data_33_tpl, c_i16_0113_q, element_extension60_q, element_extension58_q, in_i_data_30_tpl, in_i_data_29_tpl, in_i_data_28_tpl, c_i16_0113_q, element_extension53_q, element_extension51_q, in_i_data_25_tpl, in_i_data_24_tpl, in_i_data_23_tpl, in_i_data_22_tpl, in_i_data_21_tpl, in_i_data_20_tpl, in_i_data_19_tpl, in_i_data_18_tpl, in_i_data_17_tpl, in_i_data_16_tpl, in_i_data_15_tpl, in_i_data_14_tpl, in_i_data_13_tpl, in_i_data_12_tpl, in_i_data_11_tpl, in_i_data_10_tpl, in_i_data_9_tpl, in_i_data_8_tpl, element_extension17_q, element_extension15_q, element_extension13_q, element_extension11_q, element_extension9_q, element_extension7_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10(EXTIFACE,165)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(2112)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,300)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_stall;

    // ip_dsdk_adapt_bitselect297(BITSELECT,241)
    assign ip_dsdk_adapt_bitselect297_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[2111:2080];

    // ip_dsdk_adapt_bitselect295(BITSELECT,240)
    assign ip_dsdk_adapt_bitselect295_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[2079:2048];

    // ip_dsdk_adapt_bitselect293(BITSELECT,239)
    assign ip_dsdk_adapt_bitselect293_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[2047:2016];

    // ip_dsdk_adapt_bitselect291(BITSELECT,238)
    assign ip_dsdk_adapt_bitselect291_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[2015:1984];

    // ip_dsdk_adapt_bitselect289(BITSELECT,237)
    assign ip_dsdk_adapt_bitselect289_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1983:1952];

    // ip_dsdk_adapt_bitselect287(BITSELECT,236)
    assign ip_dsdk_adapt_bitselect287_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1951:1920];

    // ip_dsdk_adapt_bitselect285(BITSELECT,235)
    assign ip_dsdk_adapt_bitselect285_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1919:1888];

    // ip_dsdk_adapt_bitselect283(BITSELECT,234)
    assign ip_dsdk_adapt_bitselect283_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1887:1856];

    // ip_dsdk_adapt_bitselect281(BITSELECT,233)
    assign ip_dsdk_adapt_bitselect281_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1855:1824];

    // ip_dsdk_adapt_bitselect279(BITSELECT,232)
    assign ip_dsdk_adapt_bitselect279_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1823:1792];

    // ip_dsdk_adapt_bitselect277(BITSELECT,231)
    assign ip_dsdk_adapt_bitselect277_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1791:1760];

    // ip_dsdk_adapt_bitselect275(BITSELECT,230)
    assign ip_dsdk_adapt_bitselect275_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1759:1728];

    // ip_dsdk_adapt_bitselect273(BITSELECT,229)
    assign ip_dsdk_adapt_bitselect273_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1727:1696];

    // ip_dsdk_adapt_bitselect271(BITSELECT,228)
    assign ip_dsdk_adapt_bitselect271_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1695:1664];

    // ip_dsdk_adapt_bitselect269(BITSELECT,227)
    assign ip_dsdk_adapt_bitselect269_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1663:1632];

    // ip_dsdk_adapt_bitselect267(BITSELECT,226)
    assign ip_dsdk_adapt_bitselect267_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1631:1600];

    // ip_dsdk_adapt_bitselect265(BITSELECT,225)
    assign ip_dsdk_adapt_bitselect265_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1576:1576];

    // adapt_scalar_trunc266(ROUND,20)
    assign adapt_scalar_trunc266_in = ip_dsdk_adapt_bitselect265_b;
    assign adapt_scalar_trunc266_q = adapt_scalar_trunc266_in[0:0];

    // ip_dsdk_adapt_bitselect263(BITSELECT,224)
    assign ip_dsdk_adapt_bitselect263_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1568:1568];

    // adapt_scalar_trunc264(ROUND,19)
    assign adapt_scalar_trunc264_in = ip_dsdk_adapt_bitselect263_b;
    assign adapt_scalar_trunc264_q = adapt_scalar_trunc264_in[0:0];

    // ip_dsdk_adapt_bitselect261(BITSELECT,223)
    assign ip_dsdk_adapt_bitselect261_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1567:1536];

    // ip_dsdk_adapt_bitselect259(BITSELECT,222)
    assign ip_dsdk_adapt_bitselect259_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1535:1504];

    // ip_dsdk_adapt_bitselect257(BITSELECT,221)
    assign ip_dsdk_adapt_bitselect257_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1503:1472];

    // ip_dsdk_adapt_bitselect255(BITSELECT,220)
    assign ip_dsdk_adapt_bitselect255_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1440:1408];

    // adapt_scalar_trunc256(ROUND,18)
    assign adapt_scalar_trunc256_in = ip_dsdk_adapt_bitselect255_b;
    assign adapt_scalar_trunc256_q = adapt_scalar_trunc256_in[32:0];

    // ip_dsdk_adapt_bitselect253(BITSELECT,219)
    assign ip_dsdk_adapt_bitselect253_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1392:1392];

    // adapt_scalar_trunc254(ROUND,17)
    assign adapt_scalar_trunc254_in = ip_dsdk_adapt_bitselect253_b;
    assign adapt_scalar_trunc254_q = adapt_scalar_trunc254_in[0:0];

    // ip_dsdk_adapt_bitselect251(BITSELECT,218)
    assign ip_dsdk_adapt_bitselect251_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1384:1384];

    // adapt_scalar_trunc252(ROUND,16)
    assign adapt_scalar_trunc252_in = ip_dsdk_adapt_bitselect251_b;
    assign adapt_scalar_trunc252_q = adapt_scalar_trunc252_in[0:0];

    // ip_dsdk_adapt_bitselect249(BITSELECT,217)
    assign ip_dsdk_adapt_bitselect249_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1376:1376];

    // adapt_scalar_trunc250(ROUND,15)
    assign adapt_scalar_trunc250_in = ip_dsdk_adapt_bitselect249_b;
    assign adapt_scalar_trunc250_q = adapt_scalar_trunc250_in[0:0];

    // ip_dsdk_adapt_bitselect247(BITSELECT,216)
    assign ip_dsdk_adapt_bitselect247_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1375:1344];

    // ip_dsdk_adapt_bitselect245(BITSELECT,215)
    assign ip_dsdk_adapt_bitselect245_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1312:1312];

    // adapt_scalar_trunc246(ROUND,14)
    assign adapt_scalar_trunc246_in = ip_dsdk_adapt_bitselect245_b;
    assign adapt_scalar_trunc246_q = adapt_scalar_trunc246_in[0:0];

    // ip_dsdk_adapt_bitselect243(BITSELECT,214)
    assign ip_dsdk_adapt_bitselect243_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1311:1280];

    // ip_dsdk_adapt_bitselect241(BITSELECT,213)
    assign ip_dsdk_adapt_bitselect241_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1279:1248];

    // ip_dsdk_adapt_bitselect239(BITSELECT,212)
    assign ip_dsdk_adapt_bitselect239_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1247:1216];

    // ip_dsdk_adapt_bitselect237(BITSELECT,211)
    assign ip_dsdk_adapt_bitselect237_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1215:1184];

    // ip_dsdk_adapt_bitselect235(BITSELECT,210)
    assign ip_dsdk_adapt_bitselect235_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1183:1152];

    // ip_dsdk_adapt_bitselect233(BITSELECT,209)
    assign ip_dsdk_adapt_bitselect233_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1151:1120];

    // ip_dsdk_adapt_bitselect231(BITSELECT,208)
    assign ip_dsdk_adapt_bitselect231_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1119:1088];

    // ip_dsdk_adapt_bitselect229(BITSELECT,207)
    assign ip_dsdk_adapt_bitselect229_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1087:1056];

    // ip_dsdk_adapt_bitselect227(BITSELECT,206)
    assign ip_dsdk_adapt_bitselect227_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1055:1024];

    // ip_dsdk_adapt_bitselect225(BITSELECT,205)
    assign ip_dsdk_adapt_bitselect225_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[1023:992];

    // ip_dsdk_adapt_bitselect223(BITSELECT,204)
    assign ip_dsdk_adapt_bitselect223_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[991:960];

    // ip_dsdk_adapt_bitselect221(BITSELECT,203)
    assign ip_dsdk_adapt_bitselect221_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[959:928];

    // ip_dsdk_adapt_bitselect219(BITSELECT,202)
    assign ip_dsdk_adapt_bitselect219_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[927:896];

    // ip_dsdk_adapt_bitselect217(BITSELECT,201)
    assign ip_dsdk_adapt_bitselect217_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[895:864];

    // ip_dsdk_adapt_bitselect215(BITSELECT,200)
    assign ip_dsdk_adapt_bitselect215_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[863:832];

    // ip_dsdk_adapt_bitselect213(BITSELECT,199)
    assign ip_dsdk_adapt_bitselect213_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[831:800];

    // ip_dsdk_adapt_bitselect211(BITSELECT,198)
    assign ip_dsdk_adapt_bitselect211_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[776:776];

    // adapt_scalar_trunc212(ROUND,13)
    assign adapt_scalar_trunc212_in = ip_dsdk_adapt_bitselect211_b;
    assign adapt_scalar_trunc212_q = adapt_scalar_trunc212_in[0:0];

    // ip_dsdk_adapt_bitselect209(BITSELECT,197)
    assign ip_dsdk_adapt_bitselect209_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[768:768];

    // adapt_scalar_trunc210(ROUND,12)
    assign adapt_scalar_trunc210_in = ip_dsdk_adapt_bitselect209_b;
    assign adapt_scalar_trunc210_q = adapt_scalar_trunc210_in[0:0];

    // ip_dsdk_adapt_bitselect207(BITSELECT,196)
    assign ip_dsdk_adapt_bitselect207_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[767:736];

    // ip_dsdk_adapt_bitselect205(BITSELECT,195)
    assign ip_dsdk_adapt_bitselect205_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[735:704];

    // ip_dsdk_adapt_bitselect203(BITSELECT,194)
    assign ip_dsdk_adapt_bitselect203_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[703:672];

    // ip_dsdk_adapt_bitselect201(BITSELECT,193)
    assign ip_dsdk_adapt_bitselect201_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[648:648];

    // adapt_scalar_trunc202(ROUND,11)
    assign adapt_scalar_trunc202_in = ip_dsdk_adapt_bitselect201_b;
    assign adapt_scalar_trunc202_q = adapt_scalar_trunc202_in[0:0];

    // ip_dsdk_adapt_bitselect199(BITSELECT,192)
    assign ip_dsdk_adapt_bitselect199_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[640:640];

    // adapt_scalar_trunc200(ROUND,10)
    assign adapt_scalar_trunc200_in = ip_dsdk_adapt_bitselect199_b;
    assign adapt_scalar_trunc200_q = adapt_scalar_trunc200_in[0:0];

    // ip_dsdk_adapt_bitselect197(BITSELECT,191)
    assign ip_dsdk_adapt_bitselect197_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[639:608];

    // ip_dsdk_adapt_bitselect195(BITSELECT,190)
    assign ip_dsdk_adapt_bitselect195_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[607:576];

    // ip_dsdk_adapt_bitselect193(BITSELECT,189)
    assign ip_dsdk_adapt_bitselect193_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[575:544];

    // ip_dsdk_adapt_bitselect191(BITSELECT,188)
    assign ip_dsdk_adapt_bitselect191_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[543:512];

    // ip_dsdk_adapt_bitselect189(BITSELECT,187)
    assign ip_dsdk_adapt_bitselect189_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[511:480];

    // ip_dsdk_adapt_bitselect187(BITSELECT,186)
    assign ip_dsdk_adapt_bitselect187_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[479:448];

    // ip_dsdk_adapt_bitselect185(BITSELECT,185)
    assign ip_dsdk_adapt_bitselect185_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[447:416];

    // ip_dsdk_adapt_bitselect183(BITSELECT,184)
    assign ip_dsdk_adapt_bitselect183_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[415:384];

    // ip_dsdk_adapt_bitselect181(BITSELECT,183)
    assign ip_dsdk_adapt_bitselect181_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[383:352];

    // ip_dsdk_adapt_bitselect179(BITSELECT,182)
    assign ip_dsdk_adapt_bitselect179_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[351:320];

    // ip_dsdk_adapt_bitselect177(BITSELECT,181)
    assign ip_dsdk_adapt_bitselect177_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[319:288];

    // ip_dsdk_adapt_bitselect175(BITSELECT,180)
    assign ip_dsdk_adapt_bitselect175_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[287:256];

    // ip_dsdk_adapt_bitselect173(BITSELECT,179)
    assign ip_dsdk_adapt_bitselect173_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[255:224];

    // ip_dsdk_adapt_bitselect171(BITSELECT,178)
    assign ip_dsdk_adapt_bitselect171_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[223:192];

    // ip_dsdk_adapt_bitselect169(BITSELECT,177)
    assign ip_dsdk_adapt_bitselect169_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[191:160];

    // ip_dsdk_adapt_bitselect167(BITSELECT,176)
    assign ip_dsdk_adapt_bitselect167_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[159:128];

    // ip_dsdk_adapt_bitselect165(BITSELECT,175)
    assign ip_dsdk_adapt_bitselect165_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[127:96];

    // ip_dsdk_adapt_bitselect163(BITSELECT,174)
    assign ip_dsdk_adapt_bitselect163_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[95:64];

    // ip_dsdk_adapt_bitselect161(BITSELECT,173)
    assign ip_dsdk_adapt_bitselect161_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[56:56];

    // adapt_scalar_trunc162(ROUND,9)
    assign adapt_scalar_trunc162_in = ip_dsdk_adapt_bitselect161_b;
    assign adapt_scalar_trunc162_q = adapt_scalar_trunc162_in[0:0];

    // ip_dsdk_adapt_bitselect159(BITSELECT,172)
    assign ip_dsdk_adapt_bitselect159_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[48:48];

    // adapt_scalar_trunc160(ROUND,8)
    assign adapt_scalar_trunc160_in = ip_dsdk_adapt_bitselect159_b;
    assign adapt_scalar_trunc160_q = adapt_scalar_trunc160_in[0:0];

    // ip_dsdk_adapt_bitselect157(BITSELECT,171)
    assign ip_dsdk_adapt_bitselect157_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[40:40];

    // adapt_scalar_trunc158(ROUND,7)
    assign adapt_scalar_trunc158_in = ip_dsdk_adapt_bitselect157_b;
    assign adapt_scalar_trunc158_q = adapt_scalar_trunc158_in[0:0];

    // ip_dsdk_adapt_bitselect155(BITSELECT,170)
    assign ip_dsdk_adapt_bitselect155_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[32:32];

    // adapt_scalar_trunc156(ROUND,6)
    assign adapt_scalar_trunc156_in = ip_dsdk_adapt_bitselect155_b;
    assign adapt_scalar_trunc156_q = adapt_scalar_trunc156_in[0:0];

    // ip_dsdk_adapt_bitselect153(BITSELECT,169)
    assign ip_dsdk_adapt_bitselect153_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[24:24];

    // adapt_scalar_trunc154(ROUND,5)
    assign adapt_scalar_trunc154_in = ip_dsdk_adapt_bitselect153_b;
    assign adapt_scalar_trunc154_q = adapt_scalar_trunc154_in[0:0];

    // ip_dsdk_adapt_bitselect151(BITSELECT,168)
    assign ip_dsdk_adapt_bitselect151_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[16:16];

    // adapt_scalar_trunc152(ROUND,4)
    assign adapt_scalar_trunc152_in = ip_dsdk_adapt_bitselect151_b;
    assign adapt_scalar_trunc152_q = adapt_scalar_trunc152_in[0:0];

    // ip_dsdk_adapt_bitselect149(BITSELECT,167)
    assign ip_dsdk_adapt_bitselect149_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[8:8];

    // adapt_scalar_trunc150(ROUND,3)
    assign adapt_scalar_trunc150_in = ip_dsdk_adapt_bitselect149_b;
    assign adapt_scalar_trunc150_q = adapt_scalar_trunc150_in[0:0];

    // ip_dsdk_adapt_bitselect147(BITSELECT,166)
    assign ip_dsdk_adapt_bitselect147_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_data[0:0];

    // adapt_scalar_trunc148(ROUND,2)
    assign adapt_scalar_trunc148_in = ip_dsdk_adapt_bitselect147_b;
    assign adapt_scalar_trunc148_q = adapt_scalar_trunc148_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,302)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc148_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc150_q;
    assign out_o_data_2_tpl = adapt_scalar_trunc152_q;
    assign out_o_data_3_tpl = adapt_scalar_trunc154_q;
    assign out_o_data_4_tpl = adapt_scalar_trunc156_q;
    assign out_o_data_5_tpl = adapt_scalar_trunc158_q;
    assign out_o_data_6_tpl = adapt_scalar_trunc160_q;
    assign out_o_data_7_tpl = adapt_scalar_trunc162_q;
    assign out_o_data_8_tpl = ip_dsdk_adapt_bitselect163_b;
    assign out_o_data_9_tpl = ip_dsdk_adapt_bitselect165_b;
    assign out_o_data_10_tpl = ip_dsdk_adapt_bitselect167_b;
    assign out_o_data_11_tpl = ip_dsdk_adapt_bitselect169_b;
    assign out_o_data_12_tpl = ip_dsdk_adapt_bitselect171_b;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect173_b;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect175_b;
    assign out_o_data_15_tpl = ip_dsdk_adapt_bitselect177_b;
    assign out_o_data_16_tpl = ip_dsdk_adapt_bitselect179_b;
    assign out_o_data_17_tpl = ip_dsdk_adapt_bitselect181_b;
    assign out_o_data_18_tpl = ip_dsdk_adapt_bitselect183_b;
    assign out_o_data_19_tpl = ip_dsdk_adapt_bitselect185_b;
    assign out_o_data_20_tpl = ip_dsdk_adapt_bitselect187_b;
    assign out_o_data_21_tpl = ip_dsdk_adapt_bitselect189_b;
    assign out_o_data_22_tpl = ip_dsdk_adapt_bitselect191_b;
    assign out_o_data_23_tpl = ip_dsdk_adapt_bitselect193_b;
    assign out_o_data_24_tpl = ip_dsdk_adapt_bitselect195_b;
    assign out_o_data_25_tpl = ip_dsdk_adapt_bitselect197_b;
    assign out_o_data_26_tpl = adapt_scalar_trunc200_q;
    assign out_o_data_27_tpl = adapt_scalar_trunc202_q;
    assign out_o_data_28_tpl = ip_dsdk_adapt_bitselect203_b;
    assign out_o_data_29_tpl = ip_dsdk_adapt_bitselect205_b;
    assign out_o_data_30_tpl = ip_dsdk_adapt_bitselect207_b;
    assign out_o_data_31_tpl = adapt_scalar_trunc210_q;
    assign out_o_data_32_tpl = adapt_scalar_trunc212_q;
    assign out_o_data_33_tpl = ip_dsdk_adapt_bitselect213_b;
    assign out_o_data_34_tpl = ip_dsdk_adapt_bitselect215_b;
    assign out_o_data_35_tpl = ip_dsdk_adapt_bitselect217_b;
    assign out_o_data_36_tpl = ip_dsdk_adapt_bitselect219_b;
    assign out_o_data_37_tpl = ip_dsdk_adapt_bitselect221_b;
    assign out_o_data_38_tpl = ip_dsdk_adapt_bitselect223_b;
    assign out_o_data_39_tpl = ip_dsdk_adapt_bitselect225_b;
    assign out_o_data_40_tpl = ip_dsdk_adapt_bitselect227_b;
    assign out_o_data_41_tpl = ip_dsdk_adapt_bitselect229_b;
    assign out_o_data_42_tpl = ip_dsdk_adapt_bitselect231_b;
    assign out_o_data_43_tpl = ip_dsdk_adapt_bitselect233_b;
    assign out_o_data_44_tpl = ip_dsdk_adapt_bitselect235_b;
    assign out_o_data_45_tpl = ip_dsdk_adapt_bitselect237_b;
    assign out_o_data_46_tpl = ip_dsdk_adapt_bitselect239_b;
    assign out_o_data_47_tpl = ip_dsdk_adapt_bitselect241_b;
    assign out_o_data_48_tpl = ip_dsdk_adapt_bitselect243_b;
    assign out_o_data_49_tpl = adapt_scalar_trunc246_q;
    assign out_o_data_50_tpl = ip_dsdk_adapt_bitselect247_b;
    assign out_o_data_51_tpl = adapt_scalar_trunc250_q;
    assign out_o_data_52_tpl = adapt_scalar_trunc252_q;
    assign out_o_data_53_tpl = adapt_scalar_trunc254_q;
    assign out_o_data_54_tpl = adapt_scalar_trunc256_q;
    assign out_o_data_55_tpl = ip_dsdk_adapt_bitselect257_b;
    assign out_o_data_56_tpl = ip_dsdk_adapt_bitselect259_b;
    assign out_o_data_57_tpl = ip_dsdk_adapt_bitselect261_b;
    assign out_o_data_58_tpl = adapt_scalar_trunc264_q;
    assign out_o_data_59_tpl = adapt_scalar_trunc266_q;
    assign out_o_data_60_tpl = ip_dsdk_adapt_bitselect267_b;
    assign out_o_data_61_tpl = ip_dsdk_adapt_bitselect269_b;
    assign out_o_data_62_tpl = ip_dsdk_adapt_bitselect271_b;
    assign out_o_data_63_tpl = ip_dsdk_adapt_bitselect273_b;
    assign out_o_data_64_tpl = ip_dsdk_adapt_bitselect275_b;
    assign out_o_data_65_tpl = ip_dsdk_adapt_bitselect277_b;
    assign out_o_data_66_tpl = ip_dsdk_adapt_bitselect279_b;
    assign out_o_data_67_tpl = ip_dsdk_adapt_bitselect281_b;
    assign out_o_data_68_tpl = ip_dsdk_adapt_bitselect283_b;
    assign out_o_data_69_tpl = ip_dsdk_adapt_bitselect285_b;
    assign out_o_data_70_tpl = ip_dsdk_adapt_bitselect287_b;
    assign out_o_data_71_tpl = ip_dsdk_adapt_bitselect289_b;
    assign out_o_data_72_tpl = ip_dsdk_adapt_bitselect291_b;
    assign out_o_data_73_tpl = ip_dsdk_adapt_bitselect293_b;
    assign out_o_data_74_tpl = ip_dsdk_adapt_bitselect295_b;
    assign out_o_data_75_tpl = ip_dsdk_adapt_bitselect297_b;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit495_conv2d1x10_o_valid;

endmodule
