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

// SystemVerilog created from conv2d1x1_i_llvm_fpga_sfc_exit_s_c0_out_0005conv2d1x11_data_fifo
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_llvm_fpga_sfc_exit_s_c0_out_0005conv2d1x11_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [0:0] in_i_data_2_tpl,
    input wire [0:0] in_i_data_3_tpl,
    input wire [0:0] in_i_data_4_tpl,
    input wire [31:0] in_i_data_5_tpl,
    input wire [63:0] in_i_data_6_tpl,
    input wire [0:0] in_i_data_7_tpl,
    input wire [63:0] in_i_data_8_tpl,
    input wire [63:0] in_i_data_9_tpl,
    input wire [63:0] in_i_data_10_tpl,
    input wire [63:0] in_i_data_11_tpl,
    input wire [63:0] in_i_data_12_tpl,
    input wire [63:0] in_i_data_13_tpl,
    input wire [63:0] in_i_data_14_tpl,
    input wire [63:0] in_i_data_15_tpl,
    input wire [0:0] in_i_data_16_tpl,
    input wire [31:0] in_i_data_17_tpl,
    input wire [31:0] in_i_data_18_tpl,
    input wire [0:0] in_i_data_19_tpl,
    input wire [0:0] in_i_data_20_tpl,
    input wire [63:0] in_i_data_21_tpl,
    input wire [0:0] in_i_data_22_tpl,
    input wire [31:0] in_i_data_23_tpl,
    input wire [0:0] in_i_data_24_tpl,
    input wire [0:0] in_i_data_25_tpl,
    input wire [0:0] in_i_data_26_tpl,
    input wire [32:0] in_i_data_27_tpl,
    input wire [31:0] in_i_data_28_tpl,
    input wire [31:0] in_i_data_29_tpl,
    input wire [31:0] in_i_data_30_tpl,
    input wire [0:0] in_i_data_31_tpl,
    input wire [31:0] in_i_data_32_tpl,
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
    input wire [31:0] in_i_data_49_tpl,
    input wire [31:0] in_i_data_50_tpl,
    input wire [31:0] in_i_data_51_tpl,
    input wire [31:0] in_i_data_52_tpl,
    input wire [31:0] in_i_data_53_tpl,
    input wire [31:0] in_i_data_54_tpl,
    input wire [31:0] in_i_data_55_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [0:0] out_o_data_2_tpl,
    output wire [0:0] out_o_data_3_tpl,
    output wire [0:0] out_o_data_4_tpl,
    output wire [31:0] out_o_data_5_tpl,
    output wire [63:0] out_o_data_6_tpl,
    output wire [0:0] out_o_data_7_tpl,
    output wire [63:0] out_o_data_8_tpl,
    output wire [63:0] out_o_data_9_tpl,
    output wire [63:0] out_o_data_10_tpl,
    output wire [63:0] out_o_data_11_tpl,
    output wire [63:0] out_o_data_12_tpl,
    output wire [63:0] out_o_data_13_tpl,
    output wire [63:0] out_o_data_14_tpl,
    output wire [63:0] out_o_data_15_tpl,
    output wire [0:0] out_o_data_16_tpl,
    output wire [31:0] out_o_data_17_tpl,
    output wire [31:0] out_o_data_18_tpl,
    output wire [0:0] out_o_data_19_tpl,
    output wire [0:0] out_o_data_20_tpl,
    output wire [63:0] out_o_data_21_tpl,
    output wire [0:0] out_o_data_22_tpl,
    output wire [31:0] out_o_data_23_tpl,
    output wire [0:0] out_o_data_24_tpl,
    output wire [0:0] out_o_data_25_tpl,
    output wire [0:0] out_o_data_26_tpl,
    output wire [32:0] out_o_data_27_tpl,
    output wire [31:0] out_o_data_28_tpl,
    output wire [31:0] out_o_data_29_tpl,
    output wire [31:0] out_o_data_30_tpl,
    output wire [0:0] out_o_data_31_tpl,
    output wire [31:0] out_o_data_32_tpl,
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
    output wire [31:0] out_o_data_49_tpl,
    output wire [31:0] out_o_data_50_tpl,
    output wire [31:0] out_o_data_51_tpl,
    output wire [31:0] out_o_data_52_tpl,
    output wire [31:0] out_o_data_53_tpl,
    output wire [31:0] out_o_data_54_tpl,
    output wire [31:0] out_o_data_55_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc101_in;
    wire [0:0] adapt_scalar_trunc101_q;
    wire [0:0] adapt_scalar_trunc103_in;
    wire [0:0] adapt_scalar_trunc103_q;
    wire [0:0] adapt_scalar_trunc109_in;
    wire [0:0] adapt_scalar_trunc109_q;
    wire [0:0] adapt_scalar_trunc127_in;
    wire [0:0] adapt_scalar_trunc127_q;
    wire [0:0] adapt_scalar_trunc133_in;
    wire [0:0] adapt_scalar_trunc133_q;
    wire [0:0] adapt_scalar_trunc135_in;
    wire [0:0] adapt_scalar_trunc135_q;
    wire [0:0] adapt_scalar_trunc139_in;
    wire [0:0] adapt_scalar_trunc139_q;
    wire [0:0] adapt_scalar_trunc143_in;
    wire [0:0] adapt_scalar_trunc143_q;
    wire [0:0] adapt_scalar_trunc145_in;
    wire [0:0] adapt_scalar_trunc145_q;
    wire [0:0] adapt_scalar_trunc147_in;
    wire [0:0] adapt_scalar_trunc147_q;
    wire [32:0] adapt_scalar_trunc149_in;
    wire [32:0] adapt_scalar_trunc149_q;
    wire [0:0] adapt_scalar_trunc157_in;
    wire [0:0] adapt_scalar_trunc157_q;
    wire [0:0] adapt_scalar_trunc95_in;
    wire [0:0] adapt_scalar_trunc95_q;
    wire [0:0] adapt_scalar_trunc97_in;
    wire [0:0] adapt_scalar_trunc97_q;
    wire [0:0] adapt_scalar_trunc99_in;
    wire [0:0] adapt_scalar_trunc99_q;
    wire [15:0] c_i16_027_q;
    wire [23:0] c_i24_013_q;
    wire [30:0] c_i31_039_q;
    wire [31:0] c_i32_014_q;
    wire [39:0] c_i40_037_q;
    wire [55:0] c_i56_017_q;
    wire [6:0] c_i7_010_q;
    wire [2047:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension15_q;
    wire [7:0] element_extension18_q;
    wire [7:0] element_extension23_q;
    wire [7:0] element_extension25_q;
    wire [7:0] element_extension28_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension31_q;
    wire [7:0] element_extension33_q;
    wire [7:0] element_extension35_q;
    wire [63:0] element_extension38_q;
    wire [7:0] element_extension42_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension7_q;
    wire [7:0] element_extension9_q;
    wire [2047:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_almost_full_bitsignaltemp;
    wire [2047:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect100_b;
    wire [0:0] ip_dsdk_adapt_bitselect102_b;
    wire [31:0] ip_dsdk_adapt_bitselect104_b;
    wire [63:0] ip_dsdk_adapt_bitselect106_b;
    wire [0:0] ip_dsdk_adapt_bitselect108_b;
    wire [63:0] ip_dsdk_adapt_bitselect110_b;
    wire [63:0] ip_dsdk_adapt_bitselect112_b;
    wire [63:0] ip_dsdk_adapt_bitselect114_b;
    wire [63:0] ip_dsdk_adapt_bitselect116_b;
    wire [63:0] ip_dsdk_adapt_bitselect118_b;
    wire [63:0] ip_dsdk_adapt_bitselect120_b;
    wire [63:0] ip_dsdk_adapt_bitselect122_b;
    wire [63:0] ip_dsdk_adapt_bitselect124_b;
    wire [0:0] ip_dsdk_adapt_bitselect126_b;
    wire [31:0] ip_dsdk_adapt_bitselect128_b;
    wire [31:0] ip_dsdk_adapt_bitselect130_b;
    wire [0:0] ip_dsdk_adapt_bitselect132_b;
    wire [0:0] ip_dsdk_adapt_bitselect134_b;
    wire [63:0] ip_dsdk_adapt_bitselect136_b;
    wire [0:0] ip_dsdk_adapt_bitselect138_b;
    wire [31:0] ip_dsdk_adapt_bitselect140_b;
    wire [0:0] ip_dsdk_adapt_bitselect142_b;
    wire [0:0] ip_dsdk_adapt_bitselect144_b;
    wire [0:0] ip_dsdk_adapt_bitselect146_b;
    wire [32:0] ip_dsdk_adapt_bitselect148_b;
    wire [31:0] ip_dsdk_adapt_bitselect150_b;
    wire [31:0] ip_dsdk_adapt_bitselect152_b;
    wire [31:0] ip_dsdk_adapt_bitselect154_b;
    wire [0:0] ip_dsdk_adapt_bitselect156_b;
    wire [31:0] ip_dsdk_adapt_bitselect158_b;
    wire [31:0] ip_dsdk_adapt_bitselect160_b;
    wire [31:0] ip_dsdk_adapt_bitselect162_b;
    wire [31:0] ip_dsdk_adapt_bitselect164_b;
    wire [31:0] ip_dsdk_adapt_bitselect166_b;
    wire [31:0] ip_dsdk_adapt_bitselect168_b;
    wire [31:0] ip_dsdk_adapt_bitselect170_b;
    wire [31:0] ip_dsdk_adapt_bitselect172_b;
    wire [31:0] ip_dsdk_adapt_bitselect174_b;
    wire [31:0] ip_dsdk_adapt_bitselect176_b;
    wire [31:0] ip_dsdk_adapt_bitselect178_b;
    wire [31:0] ip_dsdk_adapt_bitselect180_b;
    wire [31:0] ip_dsdk_adapt_bitselect182_b;
    wire [31:0] ip_dsdk_adapt_bitselect184_b;
    wire [31:0] ip_dsdk_adapt_bitselect186_b;
    wire [31:0] ip_dsdk_adapt_bitselect188_b;
    wire [31:0] ip_dsdk_adapt_bitselect190_b;
    wire [31:0] ip_dsdk_adapt_bitselect192_b;
    wire [31:0] ip_dsdk_adapt_bitselect194_b;
    wire [31:0] ip_dsdk_adapt_bitselect196_b;
    wire [31:0] ip_dsdk_adapt_bitselect198_b;
    wire [31:0] ip_dsdk_adapt_bitselect200_b;
    wire [31:0] ip_dsdk_adapt_bitselect202_b;
    wire [31:0] ip_dsdk_adapt_bitselect204_b;
    wire [0:0] ip_dsdk_adapt_bitselect94_b;
    wire [0:0] ip_dsdk_adapt_bitselect96_b;
    wire [0:0] ip_dsdk_adapt_bitselect98_b;


    // c_i7_010(CONSTANT,78)
    assign c_i7_010_q = $unsigned(7'b0000000);

    // element_extension42(BITJOIN,104)
    assign element_extension42_q = {c_i7_010_q, in_i_data_31_tpl};

    // c_i31_039(CONSTANT,74)
    assign c_i31_039_q = $unsigned(31'b0000000000000000000000000000000);

    // element_extension38(BITJOIN,103)
    assign element_extension38_q = {c_i31_039_q, in_i_data_27_tpl};

    // c_i40_037(CONSTANT,76)
    assign c_i40_037_q = $unsigned(40'b0000000000000000000000000000000000000000);

    // element_extension35(BITJOIN,102)
    assign element_extension35_q = {c_i7_010_q, in_i_data_26_tpl};

    // element_extension33(BITJOIN,101)
    assign element_extension33_q = {c_i7_010_q, in_i_data_25_tpl};

    // element_extension31(BITJOIN,100)
    assign element_extension31_q = {c_i7_010_q, in_i_data_24_tpl};

    // element_extension28(BITJOIN,98)
    assign element_extension28_q = {c_i7_010_q, in_i_data_22_tpl};

    // c_i16_027(CONSTANT,69)
    assign c_i16_027_q = $unsigned(16'b0000000000000000);

    // element_extension25(BITJOIN,97)
    assign element_extension25_q = {c_i7_010_q, in_i_data_20_tpl};

    // element_extension23(BITJOIN,96)
    assign element_extension23_q = {c_i7_010_q, in_i_data_19_tpl};

    // element_extension18(BITJOIN,95)
    assign element_extension18_q = {c_i7_010_q, in_i_data_16_tpl};

    // c_i56_017(CONSTANT,77)
    assign c_i56_017_q = $unsigned(56'b00000000000000000000000000000000000000000000000000000000);

    // element_extension15(BITJOIN,94)
    assign element_extension15_q = {c_i7_010_q, in_i_data_7_tpl};

    // c_i32_014(CONSTANT,75)
    assign c_i32_014_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i24_013(CONSTANT,70)
    assign c_i24_013_q = $unsigned(24'b000000000000000000000000);

    // element_extension11(BITJOIN,93)
    assign element_extension11_q = {c_i7_010_q, in_i_data_4_tpl};

    // element_extension9(BITJOIN,107)
    assign element_extension9_q = {c_i7_010_q, in_i_data_3_tpl};

    // element_extension7(BITJOIN,106)
    assign element_extension7_q = {c_i7_010_q, in_i_data_2_tpl};

    // element_extension5(BITJOIN,105)
    assign element_extension5_q = {c_i7_010_q, in_i_data_1_tpl};

    // element_extension3(BITJOIN,99)
    assign element_extension3_q = {c_i7_010_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,92)
    assign dsdk_ip_adapt_bitjoin1_q = {in_i_data_55_tpl, in_i_data_54_tpl, in_i_data_53_tpl, in_i_data_52_tpl, in_i_data_51_tpl, in_i_data_50_tpl, in_i_data_49_tpl, in_i_data_48_tpl, in_i_data_47_tpl, in_i_data_46_tpl, in_i_data_45_tpl, in_i_data_44_tpl, in_i_data_43_tpl, in_i_data_42_tpl, in_i_data_41_tpl, in_i_data_40_tpl, in_i_data_39_tpl, in_i_data_38_tpl, in_i_data_37_tpl, in_i_data_36_tpl, in_i_data_35_tpl, in_i_data_34_tpl, in_i_data_33_tpl, in_i_data_32_tpl, c_i24_013_q, element_extension42_q, in_i_data_30_tpl, in_i_data_29_tpl, in_i_data_28_tpl, element_extension38_q, c_i40_037_q, element_extension35_q, element_extension33_q, element_extension31_q, in_i_data_23_tpl, c_i24_013_q, element_extension28_q, in_i_data_21_tpl, c_i16_027_q, element_extension25_q, element_extension23_q, in_i_data_18_tpl, in_i_data_17_tpl, c_i24_013_q, element_extension18_q, in_i_data_15_tpl, in_i_data_14_tpl, in_i_data_13_tpl, in_i_data_12_tpl, in_i_data_11_tpl, in_i_data_10_tpl, in_i_data_9_tpl, in_i_data_8_tpl, c_i56_017_q, element_extension15_q, in_i_data_6_tpl, c_i32_014_q, in_i_data_5_tpl, c_i24_013_q, element_extension11_q, element_extension9_q, element_extension7_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10(EXTIFACE,108)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(2048)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,207)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_stall;

    // ip_dsdk_adapt_bitselect204(BITSELECT,161)
    assign ip_dsdk_adapt_bitselect204_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[2047:2016];

    // ip_dsdk_adapt_bitselect202(BITSELECT,160)
    assign ip_dsdk_adapt_bitselect202_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[2015:1984];

    // ip_dsdk_adapt_bitselect200(BITSELECT,159)
    assign ip_dsdk_adapt_bitselect200_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1983:1952];

    // ip_dsdk_adapt_bitselect198(BITSELECT,158)
    assign ip_dsdk_adapt_bitselect198_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1951:1920];

    // ip_dsdk_adapt_bitselect196(BITSELECT,157)
    assign ip_dsdk_adapt_bitselect196_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1919:1888];

    // ip_dsdk_adapt_bitselect194(BITSELECT,156)
    assign ip_dsdk_adapt_bitselect194_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1887:1856];

    // ip_dsdk_adapt_bitselect192(BITSELECT,155)
    assign ip_dsdk_adapt_bitselect192_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1855:1824];

    // ip_dsdk_adapt_bitselect190(BITSELECT,154)
    assign ip_dsdk_adapt_bitselect190_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1823:1792];

    // ip_dsdk_adapt_bitselect188(BITSELECT,153)
    assign ip_dsdk_adapt_bitselect188_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1791:1760];

    // ip_dsdk_adapt_bitselect186(BITSELECT,152)
    assign ip_dsdk_adapt_bitselect186_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1759:1728];

    // ip_dsdk_adapt_bitselect184(BITSELECT,151)
    assign ip_dsdk_adapt_bitselect184_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1727:1696];

    // ip_dsdk_adapt_bitselect182(BITSELECT,150)
    assign ip_dsdk_adapt_bitselect182_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1695:1664];

    // ip_dsdk_adapt_bitselect180(BITSELECT,149)
    assign ip_dsdk_adapt_bitselect180_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1663:1632];

    // ip_dsdk_adapt_bitselect178(BITSELECT,148)
    assign ip_dsdk_adapt_bitselect178_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1631:1600];

    // ip_dsdk_adapt_bitselect176(BITSELECT,147)
    assign ip_dsdk_adapt_bitselect176_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1599:1568];

    // ip_dsdk_adapt_bitselect174(BITSELECT,146)
    assign ip_dsdk_adapt_bitselect174_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1567:1536];

    // ip_dsdk_adapt_bitselect172(BITSELECT,145)
    assign ip_dsdk_adapt_bitselect172_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1535:1504];

    // ip_dsdk_adapt_bitselect170(BITSELECT,144)
    assign ip_dsdk_adapt_bitselect170_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1503:1472];

    // ip_dsdk_adapt_bitselect168(BITSELECT,143)
    assign ip_dsdk_adapt_bitselect168_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1471:1440];

    // ip_dsdk_adapt_bitselect166(BITSELECT,142)
    assign ip_dsdk_adapt_bitselect166_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1439:1408];

    // ip_dsdk_adapt_bitselect164(BITSELECT,141)
    assign ip_dsdk_adapt_bitselect164_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1407:1376];

    // ip_dsdk_adapt_bitselect162(BITSELECT,140)
    assign ip_dsdk_adapt_bitselect162_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1375:1344];

    // ip_dsdk_adapt_bitselect160(BITSELECT,139)
    assign ip_dsdk_adapt_bitselect160_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1343:1312];

    // ip_dsdk_adapt_bitselect158(BITSELECT,138)
    assign ip_dsdk_adapt_bitselect158_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1311:1280];

    // ip_dsdk_adapt_bitselect156(BITSELECT,137)
    assign ip_dsdk_adapt_bitselect156_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1248:1248];

    // adapt_scalar_trunc157(ROUND,13)
    assign adapt_scalar_trunc157_in = ip_dsdk_adapt_bitselect156_b;
    assign adapt_scalar_trunc157_q = adapt_scalar_trunc157_in[0:0];

    // ip_dsdk_adapt_bitselect154(BITSELECT,136)
    assign ip_dsdk_adapt_bitselect154_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1247:1216];

    // ip_dsdk_adapt_bitselect152(BITSELECT,135)
    assign ip_dsdk_adapt_bitselect152_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1215:1184];

    // ip_dsdk_adapt_bitselect150(BITSELECT,134)
    assign ip_dsdk_adapt_bitselect150_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1183:1152];

    // ip_dsdk_adapt_bitselect148(BITSELECT,133)
    assign ip_dsdk_adapt_bitselect148_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1120:1088];

    // adapt_scalar_trunc149(ROUND,12)
    assign adapt_scalar_trunc149_in = ip_dsdk_adapt_bitselect148_b;
    assign adapt_scalar_trunc149_q = adapt_scalar_trunc149_in[32:0];

    // ip_dsdk_adapt_bitselect146(BITSELECT,132)
    assign ip_dsdk_adapt_bitselect146_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1040:1040];

    // adapt_scalar_trunc147(ROUND,11)
    assign adapt_scalar_trunc147_in = ip_dsdk_adapt_bitselect146_b;
    assign adapt_scalar_trunc147_q = adapt_scalar_trunc147_in[0:0];

    // ip_dsdk_adapt_bitselect144(BITSELECT,131)
    assign ip_dsdk_adapt_bitselect144_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1032:1032];

    // adapt_scalar_trunc145(ROUND,10)
    assign adapt_scalar_trunc145_in = ip_dsdk_adapt_bitselect144_b;
    assign adapt_scalar_trunc145_q = adapt_scalar_trunc145_in[0:0];

    // ip_dsdk_adapt_bitselect142(BITSELECT,130)
    assign ip_dsdk_adapt_bitselect142_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1024:1024];

    // adapt_scalar_trunc143(ROUND,9)
    assign adapt_scalar_trunc143_in = ip_dsdk_adapt_bitselect142_b;
    assign adapt_scalar_trunc143_q = adapt_scalar_trunc143_in[0:0];

    // ip_dsdk_adapt_bitselect140(BITSELECT,129)
    assign ip_dsdk_adapt_bitselect140_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[1023:992];

    // ip_dsdk_adapt_bitselect138(BITSELECT,128)
    assign ip_dsdk_adapt_bitselect138_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[960:960];

    // adapt_scalar_trunc139(ROUND,8)
    assign adapt_scalar_trunc139_in = ip_dsdk_adapt_bitselect138_b;
    assign adapt_scalar_trunc139_q = adapt_scalar_trunc139_in[0:0];

    // ip_dsdk_adapt_bitselect136(BITSELECT,127)
    assign ip_dsdk_adapt_bitselect136_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[959:896];

    // ip_dsdk_adapt_bitselect134(BITSELECT,126)
    assign ip_dsdk_adapt_bitselect134_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[872:872];

    // adapt_scalar_trunc135(ROUND,7)
    assign adapt_scalar_trunc135_in = ip_dsdk_adapt_bitselect134_b;
    assign adapt_scalar_trunc135_q = adapt_scalar_trunc135_in[0:0];

    // ip_dsdk_adapt_bitselect132(BITSELECT,125)
    assign ip_dsdk_adapt_bitselect132_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[864:864];

    // adapt_scalar_trunc133(ROUND,6)
    assign adapt_scalar_trunc133_in = ip_dsdk_adapt_bitselect132_b;
    assign adapt_scalar_trunc133_q = adapt_scalar_trunc133_in[0:0];

    // ip_dsdk_adapt_bitselect130(BITSELECT,124)
    assign ip_dsdk_adapt_bitselect130_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[863:832];

    // ip_dsdk_adapt_bitselect128(BITSELECT,123)
    assign ip_dsdk_adapt_bitselect128_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[831:800];

    // ip_dsdk_adapt_bitselect126(BITSELECT,122)
    assign ip_dsdk_adapt_bitselect126_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[768:768];

    // adapt_scalar_trunc127(ROUND,5)
    assign adapt_scalar_trunc127_in = ip_dsdk_adapt_bitselect126_b;
    assign adapt_scalar_trunc127_q = adapt_scalar_trunc127_in[0:0];

    // ip_dsdk_adapt_bitselect124(BITSELECT,121)
    assign ip_dsdk_adapt_bitselect124_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[767:704];

    // ip_dsdk_adapt_bitselect122(BITSELECT,120)
    assign ip_dsdk_adapt_bitselect122_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[703:640];

    // ip_dsdk_adapt_bitselect120(BITSELECT,119)
    assign ip_dsdk_adapt_bitselect120_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[639:576];

    // ip_dsdk_adapt_bitselect118(BITSELECT,118)
    assign ip_dsdk_adapt_bitselect118_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[575:512];

    // ip_dsdk_adapt_bitselect116(BITSELECT,117)
    assign ip_dsdk_adapt_bitselect116_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[511:448];

    // ip_dsdk_adapt_bitselect114(BITSELECT,116)
    assign ip_dsdk_adapt_bitselect114_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[447:384];

    // ip_dsdk_adapt_bitselect112(BITSELECT,115)
    assign ip_dsdk_adapt_bitselect112_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[383:320];

    // ip_dsdk_adapt_bitselect110(BITSELECT,114)
    assign ip_dsdk_adapt_bitselect110_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[319:256];

    // ip_dsdk_adapt_bitselect108(BITSELECT,113)
    assign ip_dsdk_adapt_bitselect108_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[192:192];

    // adapt_scalar_trunc109(ROUND,4)
    assign adapt_scalar_trunc109_in = ip_dsdk_adapt_bitselect108_b;
    assign adapt_scalar_trunc109_q = adapt_scalar_trunc109_in[0:0];

    // ip_dsdk_adapt_bitselect106(BITSELECT,112)
    assign ip_dsdk_adapt_bitselect106_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[191:128];

    // ip_dsdk_adapt_bitselect104(BITSELECT,111)
    assign ip_dsdk_adapt_bitselect104_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[95:64];

    // ip_dsdk_adapt_bitselect102(BITSELECT,110)
    assign ip_dsdk_adapt_bitselect102_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[32:32];

    // adapt_scalar_trunc103(ROUND,3)
    assign adapt_scalar_trunc103_in = ip_dsdk_adapt_bitselect102_b;
    assign adapt_scalar_trunc103_q = adapt_scalar_trunc103_in[0:0];

    // ip_dsdk_adapt_bitselect100(BITSELECT,109)
    assign ip_dsdk_adapt_bitselect100_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[24:24];

    // adapt_scalar_trunc101(ROUND,2)
    assign adapt_scalar_trunc101_in = ip_dsdk_adapt_bitselect100_b;
    assign adapt_scalar_trunc101_q = adapt_scalar_trunc101_in[0:0];

    // ip_dsdk_adapt_bitselect98(BITSELECT,164)
    assign ip_dsdk_adapt_bitselect98_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[16:16];

    // adapt_scalar_trunc99(ROUND,16)
    assign adapt_scalar_trunc99_in = ip_dsdk_adapt_bitselect98_b;
    assign adapt_scalar_trunc99_q = adapt_scalar_trunc99_in[0:0];

    // ip_dsdk_adapt_bitselect96(BITSELECT,163)
    assign ip_dsdk_adapt_bitselect96_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[8:8];

    // adapt_scalar_trunc97(ROUND,15)
    assign adapt_scalar_trunc97_in = ip_dsdk_adapt_bitselect96_b;
    assign adapt_scalar_trunc97_q = adapt_scalar_trunc97_in[0:0];

    // ip_dsdk_adapt_bitselect94(BITSELECT,162)
    assign ip_dsdk_adapt_bitselect94_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_data[0:0];

    // adapt_scalar_trunc95(ROUND,14)
    assign adapt_scalar_trunc95_in = ip_dsdk_adapt_bitselect94_b;
    assign adapt_scalar_trunc95_q = adapt_scalar_trunc95_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,209)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc95_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc97_q;
    assign out_o_data_2_tpl = adapt_scalar_trunc99_q;
    assign out_o_data_3_tpl = adapt_scalar_trunc101_q;
    assign out_o_data_4_tpl = adapt_scalar_trunc103_q;
    assign out_o_data_5_tpl = ip_dsdk_adapt_bitselect104_b;
    assign out_o_data_6_tpl = ip_dsdk_adapt_bitselect106_b;
    assign out_o_data_7_tpl = adapt_scalar_trunc109_q;
    assign out_o_data_8_tpl = ip_dsdk_adapt_bitselect110_b;
    assign out_o_data_9_tpl = ip_dsdk_adapt_bitselect112_b;
    assign out_o_data_10_tpl = ip_dsdk_adapt_bitselect114_b;
    assign out_o_data_11_tpl = ip_dsdk_adapt_bitselect116_b;
    assign out_o_data_12_tpl = ip_dsdk_adapt_bitselect118_b;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect120_b;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect122_b;
    assign out_o_data_15_tpl = ip_dsdk_adapt_bitselect124_b;
    assign out_o_data_16_tpl = adapt_scalar_trunc127_q;
    assign out_o_data_17_tpl = ip_dsdk_adapt_bitselect128_b;
    assign out_o_data_18_tpl = ip_dsdk_adapt_bitselect130_b;
    assign out_o_data_19_tpl = adapt_scalar_trunc133_q;
    assign out_o_data_20_tpl = adapt_scalar_trunc135_q;
    assign out_o_data_21_tpl = ip_dsdk_adapt_bitselect136_b;
    assign out_o_data_22_tpl = adapt_scalar_trunc139_q;
    assign out_o_data_23_tpl = ip_dsdk_adapt_bitselect140_b;
    assign out_o_data_24_tpl = adapt_scalar_trunc143_q;
    assign out_o_data_25_tpl = adapt_scalar_trunc145_q;
    assign out_o_data_26_tpl = adapt_scalar_trunc147_q;
    assign out_o_data_27_tpl = adapt_scalar_trunc149_q;
    assign out_o_data_28_tpl = ip_dsdk_adapt_bitselect150_b;
    assign out_o_data_29_tpl = ip_dsdk_adapt_bitselect152_b;
    assign out_o_data_30_tpl = ip_dsdk_adapt_bitselect154_b;
    assign out_o_data_31_tpl = adapt_scalar_trunc157_q;
    assign out_o_data_32_tpl = ip_dsdk_adapt_bitselect158_b;
    assign out_o_data_33_tpl = ip_dsdk_adapt_bitselect160_b;
    assign out_o_data_34_tpl = ip_dsdk_adapt_bitselect162_b;
    assign out_o_data_35_tpl = ip_dsdk_adapt_bitselect164_b;
    assign out_o_data_36_tpl = ip_dsdk_adapt_bitselect166_b;
    assign out_o_data_37_tpl = ip_dsdk_adapt_bitselect168_b;
    assign out_o_data_38_tpl = ip_dsdk_adapt_bitselect170_b;
    assign out_o_data_39_tpl = ip_dsdk_adapt_bitselect172_b;
    assign out_o_data_40_tpl = ip_dsdk_adapt_bitselect174_b;
    assign out_o_data_41_tpl = ip_dsdk_adapt_bitselect176_b;
    assign out_o_data_42_tpl = ip_dsdk_adapt_bitselect178_b;
    assign out_o_data_43_tpl = ip_dsdk_adapt_bitselect180_b;
    assign out_o_data_44_tpl = ip_dsdk_adapt_bitselect182_b;
    assign out_o_data_45_tpl = ip_dsdk_adapt_bitselect184_b;
    assign out_o_data_46_tpl = ip_dsdk_adapt_bitselect186_b;
    assign out_o_data_47_tpl = ip_dsdk_adapt_bitselect188_b;
    assign out_o_data_48_tpl = ip_dsdk_adapt_bitselect190_b;
    assign out_o_data_49_tpl = ip_dsdk_adapt_bitselect192_b;
    assign out_o_data_50_tpl = ip_dsdk_adapt_bitselect194_b;
    assign out_o_data_51_tpl = ip_dsdk_adapt_bitselect196_b;
    assign out_o_data_52_tpl = ip_dsdk_adapt_bitselect198_b;
    assign out_o_data_53_tpl = ip_dsdk_adapt_bitselect200_b;
    assign out_o_data_54_tpl = ip_dsdk_adapt_bitselect202_b;
    assign out_o_data_55_tpl = ip_dsdk_adapt_bitselect204_b;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit514_conv2d1x10_o_valid;

endmodule
