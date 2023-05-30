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

// SystemVerilog created from conv2d3x3_i_llvm_fpga_sfc_exit_s_c0_out_000aconv2d3x31_data_fifo
// SystemVerilog created on Tue May 30 12:33:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_i_llvm_fpga_sfc_exit_s_c0_out_000aconv2d3x31_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [63:0] in_i_data_2_tpl,
    input wire [0:0] in_i_data_3_tpl,
    input wire [0:0] in_i_data_4_tpl,
    input wire [0:0] in_i_data_5_tpl,
    input wire [0:0] in_i_data_6_tpl,
    input wire [0:0] in_i_data_7_tpl,
    input wire [63:0] in_i_data_8_tpl,
    input wire [63:0] in_i_data_9_tpl,
    input wire [0:0] in_i_data_10_tpl,
    input wire [63:0] in_i_data_11_tpl,
    input wire [63:0] in_i_data_12_tpl,
    input wire [31:0] in_i_data_13_tpl,
    input wire [31:0] in_i_data_14_tpl,
    input wire [0:0] in_i_data_15_tpl,
    input wire [0:0] in_i_data_16_tpl,
    input wire [31:0] in_i_data_17_tpl,
    input wire [31:0] in_i_data_18_tpl,
    input wire [31:0] in_i_data_19_tpl,
    input wire [0:0] in_i_data_20_tpl,
    input wire [0:0] in_i_data_21_tpl,
    input wire [31:0] in_i_data_22_tpl,
    input wire [0:0] in_i_data_23_tpl,
    input wire [0:0] in_i_data_24_tpl,
    input wire [31:0] in_i_data_25_tpl,
    input wire [0:0] in_i_data_26_tpl,
    input wire [0:0] in_i_data_27_tpl,
    input wire [31:0] in_i_data_28_tpl,
    input wire [31:0] in_i_data_29_tpl,
    input wire [0:0] in_i_data_30_tpl,
    input wire [0:0] in_i_data_31_tpl,
    input wire [31:0] in_i_data_32_tpl,
    input wire [31:0] in_i_data_33_tpl,
    input wire [31:0] in_i_data_34_tpl,
    input wire [0:0] in_i_data_35_tpl,
    input wire [0:0] in_i_data_36_tpl,
    input wire [63:0] in_i_data_37_tpl,
    input wire [63:0] in_i_data_38_tpl,
    input wire [31:0] in_i_data_39_tpl,
    input wire [0:0] in_i_data_40_tpl,
    input wire [31:0] in_i_data_41_tpl,
    input wire [31:0] in_i_data_42_tpl,
    input wire [0:0] in_i_data_43_tpl,
    input wire [0:0] in_i_data_44_tpl,
    input wire [31:0] in_i_data_45_tpl,
    input wire [0:0] in_i_data_46_tpl,
    input wire [0:0] in_i_data_47_tpl,
    input wire [31:0] in_i_data_48_tpl,
    input wire [0:0] in_i_data_49_tpl,
    input wire [0:0] in_i_data_50_tpl,
    input wire [0:0] in_i_data_51_tpl,
    input wire [63:0] in_i_data_52_tpl,
    input wire [63:0] in_i_data_53_tpl,
    input wire [31:0] in_i_data_54_tpl,
    input wire [0:0] in_i_data_55_tpl,
    input wire [31:0] in_i_data_56_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [63:0] out_o_data_2_tpl,
    output wire [0:0] out_o_data_3_tpl,
    output wire [0:0] out_o_data_4_tpl,
    output wire [0:0] out_o_data_5_tpl,
    output wire [0:0] out_o_data_6_tpl,
    output wire [0:0] out_o_data_7_tpl,
    output wire [63:0] out_o_data_8_tpl,
    output wire [63:0] out_o_data_9_tpl,
    output wire [0:0] out_o_data_10_tpl,
    output wire [63:0] out_o_data_11_tpl,
    output wire [63:0] out_o_data_12_tpl,
    output wire [31:0] out_o_data_13_tpl,
    output wire [31:0] out_o_data_14_tpl,
    output wire [0:0] out_o_data_15_tpl,
    output wire [0:0] out_o_data_16_tpl,
    output wire [31:0] out_o_data_17_tpl,
    output wire [31:0] out_o_data_18_tpl,
    output wire [31:0] out_o_data_19_tpl,
    output wire [0:0] out_o_data_20_tpl,
    output wire [0:0] out_o_data_21_tpl,
    output wire [31:0] out_o_data_22_tpl,
    output wire [0:0] out_o_data_23_tpl,
    output wire [0:0] out_o_data_24_tpl,
    output wire [31:0] out_o_data_25_tpl,
    output wire [0:0] out_o_data_26_tpl,
    output wire [0:0] out_o_data_27_tpl,
    output wire [31:0] out_o_data_28_tpl,
    output wire [31:0] out_o_data_29_tpl,
    output wire [0:0] out_o_data_30_tpl,
    output wire [0:0] out_o_data_31_tpl,
    output wire [31:0] out_o_data_32_tpl,
    output wire [31:0] out_o_data_33_tpl,
    output wire [31:0] out_o_data_34_tpl,
    output wire [0:0] out_o_data_35_tpl,
    output wire [0:0] out_o_data_36_tpl,
    output wire [63:0] out_o_data_37_tpl,
    output wire [63:0] out_o_data_38_tpl,
    output wire [31:0] out_o_data_39_tpl,
    output wire [0:0] out_o_data_40_tpl,
    output wire [31:0] out_o_data_41_tpl,
    output wire [31:0] out_o_data_42_tpl,
    output wire [0:0] out_o_data_43_tpl,
    output wire [0:0] out_o_data_44_tpl,
    output wire [31:0] out_o_data_45_tpl,
    output wire [0:0] out_o_data_46_tpl,
    output wire [0:0] out_o_data_47_tpl,
    output wire [31:0] out_o_data_48_tpl,
    output wire [0:0] out_o_data_49_tpl,
    output wire [0:0] out_o_data_50_tpl,
    output wire [0:0] out_o_data_51_tpl,
    output wire [63:0] out_o_data_52_tpl,
    output wire [63:0] out_o_data_53_tpl,
    output wire [31:0] out_o_data_54_tpl,
    output wire [0:0] out_o_data_55_tpl,
    output wire [31:0] out_o_data_56_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc100_in;
    wire [0:0] adapt_scalar_trunc100_q;
    wire [0:0] adapt_scalar_trunc102_in;
    wire [0:0] adapt_scalar_trunc102_q;
    wire [0:0] adapt_scalar_trunc108_in;
    wire [0:0] adapt_scalar_trunc108_q;
    wire [0:0] adapt_scalar_trunc118_in;
    wire [0:0] adapt_scalar_trunc118_q;
    wire [0:0] adapt_scalar_trunc120_in;
    wire [0:0] adapt_scalar_trunc120_q;
    wire [0:0] adapt_scalar_trunc128_in;
    wire [0:0] adapt_scalar_trunc128_q;
    wire [0:0] adapt_scalar_trunc130_in;
    wire [0:0] adapt_scalar_trunc130_q;
    wire [0:0] adapt_scalar_trunc134_in;
    wire [0:0] adapt_scalar_trunc134_q;
    wire [0:0] adapt_scalar_trunc136_in;
    wire [0:0] adapt_scalar_trunc136_q;
    wire [0:0] adapt_scalar_trunc140_in;
    wire [0:0] adapt_scalar_trunc140_q;
    wire [0:0] adapt_scalar_trunc142_in;
    wire [0:0] adapt_scalar_trunc142_q;
    wire [0:0] adapt_scalar_trunc148_in;
    wire [0:0] adapt_scalar_trunc148_q;
    wire [0:0] adapt_scalar_trunc150_in;
    wire [0:0] adapt_scalar_trunc150_q;
    wire [0:0] adapt_scalar_trunc158_in;
    wire [0:0] adapt_scalar_trunc158_q;
    wire [0:0] adapt_scalar_trunc160_in;
    wire [0:0] adapt_scalar_trunc160_q;
    wire [0:0] adapt_scalar_trunc168_in;
    wire [0:0] adapt_scalar_trunc168_q;
    wire [0:0] adapt_scalar_trunc174_in;
    wire [0:0] adapt_scalar_trunc174_q;
    wire [0:0] adapt_scalar_trunc176_in;
    wire [0:0] adapt_scalar_trunc176_q;
    wire [0:0] adapt_scalar_trunc180_in;
    wire [0:0] adapt_scalar_trunc180_q;
    wire [0:0] adapt_scalar_trunc182_in;
    wire [0:0] adapt_scalar_trunc182_q;
    wire [0:0] adapt_scalar_trunc186_in;
    wire [0:0] adapt_scalar_trunc186_q;
    wire [0:0] adapt_scalar_trunc188_in;
    wire [0:0] adapt_scalar_trunc188_q;
    wire [0:0] adapt_scalar_trunc190_in;
    wire [0:0] adapt_scalar_trunc190_q;
    wire [0:0] adapt_scalar_trunc198_in;
    wire [0:0] adapt_scalar_trunc198_q;
    wire [0:0] adapt_scalar_trunc88_in;
    wire [0:0] adapt_scalar_trunc88_q;
    wire [0:0] adapt_scalar_trunc90_in;
    wire [0:0] adapt_scalar_trunc90_q;
    wire [0:0] adapt_scalar_trunc94_in;
    wire [0:0] adapt_scalar_trunc94_q;
    wire [0:0] adapt_scalar_trunc96_in;
    wire [0:0] adapt_scalar_trunc96_q;
    wire [0:0] adapt_scalar_trunc98_in;
    wire [0:0] adapt_scalar_trunc98_q;
    wire [15:0] c_i16_030_q;
    wire [23:0] c_i24_018_q;
    wire [31:0] c_i32_085_q;
    wire [39:0] c_i40_077_q;
    wire [47:0] c_i48_07_q;
    wire [55:0] c_i56_021_q;
    wire [6:0] c_i7_011_q;
    wire [1791:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension10_q;
    wire [7:0] element_extension12_q;
    wire [7:0] element_extension14_q;
    wire [7:0] element_extension16_q;
    wire [7:0] element_extension19_q;
    wire [7:0] element_extension26_q;
    wire [7:0] element_extension28_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension31_q;
    wire [7:0] element_extension33_q;
    wire [7:0] element_extension36_q;
    wire [7:0] element_extension38_q;
    wire [7:0] element_extension41_q;
    wire [7:0] element_extension43_q;
    wire [7:0] element_extension46_q;
    wire [7:0] element_extension48_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension51_q;
    wire [7:0] element_extension53_q;
    wire [7:0] element_extension58_q;
    wire [7:0] element_extension61_q;
    wire [7:0] element_extension63_q;
    wire [7:0] element_extension66_q;
    wire [7:0] element_extension68_q;
    wire [7:0] element_extension71_q;
    wire [7:0] element_extension73_q;
    wire [7:0] element_extension75_q;
    wire [7:0] element_extension8_q;
    wire [7:0] element_extension80_q;
    wire [1791:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_almost_full_bitsignaltemp;
    wire [1791:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect101_b;
    wire [63:0] ip_dsdk_adapt_bitselect103_b;
    wire [63:0] ip_dsdk_adapt_bitselect105_b;
    wire [0:0] ip_dsdk_adapt_bitselect107_b;
    wire [63:0] ip_dsdk_adapt_bitselect109_b;
    wire [63:0] ip_dsdk_adapt_bitselect111_b;
    wire [31:0] ip_dsdk_adapt_bitselect113_b;
    wire [31:0] ip_dsdk_adapt_bitselect115_b;
    wire [0:0] ip_dsdk_adapt_bitselect117_b;
    wire [0:0] ip_dsdk_adapt_bitselect119_b;
    wire [31:0] ip_dsdk_adapt_bitselect121_b;
    wire [31:0] ip_dsdk_adapt_bitselect123_b;
    wire [31:0] ip_dsdk_adapt_bitselect125_b;
    wire [0:0] ip_dsdk_adapt_bitselect127_b;
    wire [0:0] ip_dsdk_adapt_bitselect129_b;
    wire [31:0] ip_dsdk_adapt_bitselect131_b;
    wire [0:0] ip_dsdk_adapt_bitselect133_b;
    wire [0:0] ip_dsdk_adapt_bitselect135_b;
    wire [31:0] ip_dsdk_adapt_bitselect137_b;
    wire [0:0] ip_dsdk_adapt_bitselect139_b;
    wire [0:0] ip_dsdk_adapt_bitselect141_b;
    wire [31:0] ip_dsdk_adapt_bitselect143_b;
    wire [31:0] ip_dsdk_adapt_bitselect145_b;
    wire [0:0] ip_dsdk_adapt_bitselect147_b;
    wire [0:0] ip_dsdk_adapt_bitselect149_b;
    wire [31:0] ip_dsdk_adapt_bitselect151_b;
    wire [31:0] ip_dsdk_adapt_bitselect153_b;
    wire [31:0] ip_dsdk_adapt_bitselect155_b;
    wire [0:0] ip_dsdk_adapt_bitselect157_b;
    wire [0:0] ip_dsdk_adapt_bitselect159_b;
    wire [63:0] ip_dsdk_adapt_bitselect161_b;
    wire [63:0] ip_dsdk_adapt_bitselect163_b;
    wire [31:0] ip_dsdk_adapt_bitselect165_b;
    wire [0:0] ip_dsdk_adapt_bitselect167_b;
    wire [31:0] ip_dsdk_adapt_bitselect169_b;
    wire [31:0] ip_dsdk_adapt_bitselect171_b;
    wire [0:0] ip_dsdk_adapt_bitselect173_b;
    wire [0:0] ip_dsdk_adapt_bitselect175_b;
    wire [31:0] ip_dsdk_adapt_bitselect177_b;
    wire [0:0] ip_dsdk_adapt_bitselect179_b;
    wire [0:0] ip_dsdk_adapt_bitselect181_b;
    wire [31:0] ip_dsdk_adapt_bitselect183_b;
    wire [0:0] ip_dsdk_adapt_bitselect185_b;
    wire [0:0] ip_dsdk_adapt_bitselect187_b;
    wire [0:0] ip_dsdk_adapt_bitselect189_b;
    wire [63:0] ip_dsdk_adapt_bitselect191_b;
    wire [63:0] ip_dsdk_adapt_bitselect193_b;
    wire [31:0] ip_dsdk_adapt_bitselect195_b;
    wire [0:0] ip_dsdk_adapt_bitselect197_b;
    wire [31:0] ip_dsdk_adapt_bitselect199_b;
    wire [0:0] ip_dsdk_adapt_bitselect87_b;
    wire [0:0] ip_dsdk_adapt_bitselect89_b;
    wire [63:0] ip_dsdk_adapt_bitselect91_b;
    wire [0:0] ip_dsdk_adapt_bitselect93_b;
    wire [0:0] ip_dsdk_adapt_bitselect95_b;
    wire [0:0] ip_dsdk_adapt_bitselect97_b;
    wire [0:0] ip_dsdk_adapt_bitselect99_b;


    // c_i32_085(CONSTANT,52)
    assign c_i32_085_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i7_011(CONSTANT,56)
    assign c_i7_011_q = $unsigned(7'b0000000);

    // element_extension80(BITJOIN,114)
    assign element_extension80_q = {c_i7_011_q, in_i_data_55_tpl};

    // c_i40_077(CONSTANT,53)
    assign c_i40_077_q = $unsigned(40'b0000000000000000000000000000000000000000);

    // element_extension75(BITJOIN,112)
    assign element_extension75_q = {c_i7_011_q, in_i_data_51_tpl};

    // element_extension73(BITJOIN,111)
    assign element_extension73_q = {c_i7_011_q, in_i_data_50_tpl};

    // element_extension71(BITJOIN,110)
    assign element_extension71_q = {c_i7_011_q, in_i_data_49_tpl};

    // element_extension68(BITJOIN,109)
    assign element_extension68_q = {c_i7_011_q, in_i_data_47_tpl};

    // element_extension66(BITJOIN,108)
    assign element_extension66_q = {c_i7_011_q, in_i_data_46_tpl};

    // element_extension63(BITJOIN,107)
    assign element_extension63_q = {c_i7_011_q, in_i_data_44_tpl};

    // element_extension61(BITJOIN,106)
    assign element_extension61_q = {c_i7_011_q, in_i_data_43_tpl};

    // element_extension58(BITJOIN,105)
    assign element_extension58_q = {c_i7_011_q, in_i_data_40_tpl};

    // element_extension53(BITJOIN,104)
    assign element_extension53_q = {c_i7_011_q, in_i_data_36_tpl};

    // element_extension51(BITJOIN,103)
    assign element_extension51_q = {c_i7_011_q, in_i_data_35_tpl};

    // element_extension48(BITJOIN,101)
    assign element_extension48_q = {c_i7_011_q, in_i_data_31_tpl};

    // element_extension46(BITJOIN,100)
    assign element_extension46_q = {c_i7_011_q, in_i_data_30_tpl};

    // element_extension43(BITJOIN,99)
    assign element_extension43_q = {c_i7_011_q, in_i_data_27_tpl};

    // element_extension41(BITJOIN,98)
    assign element_extension41_q = {c_i7_011_q, in_i_data_26_tpl};

    // element_extension38(BITJOIN,97)
    assign element_extension38_q = {c_i7_011_q, in_i_data_24_tpl};

    // element_extension36(BITJOIN,96)
    assign element_extension36_q = {c_i7_011_q, in_i_data_23_tpl};

    // element_extension33(BITJOIN,95)
    assign element_extension33_q = {c_i7_011_q, in_i_data_21_tpl};

    // element_extension31(BITJOIN,94)
    assign element_extension31_q = {c_i7_011_q, in_i_data_20_tpl};

    // c_i16_030(CONSTANT,41)
    assign c_i16_030_q = $unsigned(16'b0000000000000000);

    // element_extension28(BITJOIN,92)
    assign element_extension28_q = {c_i7_011_q, in_i_data_16_tpl};

    // element_extension26(BITJOIN,91)
    assign element_extension26_q = {c_i7_011_q, in_i_data_15_tpl};

    // c_i56_021(CONSTANT,55)
    assign c_i56_021_q = $unsigned(56'b00000000000000000000000000000000000000000000000000000000);

    // element_extension19(BITJOIN,90)
    assign element_extension19_q = {c_i7_011_q, in_i_data_10_tpl};

    // c_i24_018(CONSTANT,49)
    assign c_i24_018_q = $unsigned(24'b000000000000000000000000);

    // element_extension16(BITJOIN,89)
    assign element_extension16_q = {c_i7_011_q, in_i_data_7_tpl};

    // element_extension14(BITJOIN,88)
    assign element_extension14_q = {c_i7_011_q, in_i_data_6_tpl};

    // element_extension12(BITJOIN,87)
    assign element_extension12_q = {c_i7_011_q, in_i_data_5_tpl};

    // element_extension10(BITJOIN,86)
    assign element_extension10_q = {c_i7_011_q, in_i_data_4_tpl};

    // element_extension8(BITJOIN,113)
    assign element_extension8_q = {c_i7_011_q, in_i_data_3_tpl};

    // c_i48_07(CONSTANT,54)
    assign c_i48_07_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // element_extension5(BITJOIN,102)
    assign element_extension5_q = {c_i7_011_q, in_i_data_1_tpl};

    // element_extension3(BITJOIN,93)
    assign element_extension3_q = {c_i7_011_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,85)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i32_085_q, in_i_data_56_tpl, c_i24_018_q, element_extension80_q, in_i_data_54_tpl, in_i_data_53_tpl, in_i_data_52_tpl, c_i40_077_q, element_extension75_q, element_extension73_q, element_extension71_q, in_i_data_48_tpl, c_i16_030_q, element_extension68_q, element_extension66_q, in_i_data_45_tpl, c_i16_030_q, element_extension63_q, element_extension61_q, in_i_data_42_tpl, in_i_data_41_tpl, c_i24_018_q, element_extension58_q, in_i_data_39_tpl, in_i_data_38_tpl, in_i_data_37_tpl, c_i16_030_q, element_extension53_q, element_extension51_q, in_i_data_34_tpl, in_i_data_33_tpl, in_i_data_32_tpl, c_i16_030_q, element_extension48_q, element_extension46_q, in_i_data_29_tpl, in_i_data_28_tpl, c_i16_030_q, element_extension43_q, element_extension41_q, in_i_data_25_tpl, c_i16_030_q, element_extension38_q, element_extension36_q, in_i_data_22_tpl, c_i16_030_q, element_extension33_q, element_extension31_q, in_i_data_19_tpl, in_i_data_18_tpl, in_i_data_17_tpl, c_i16_030_q, element_extension28_q, element_extension26_q, in_i_data_14_tpl, in_i_data_13_tpl, in_i_data_12_tpl, in_i_data_11_tpl, c_i56_021_q, element_extension19_q, in_i_data_9_tpl, in_i_data_8_tpl, c_i24_018_q, element_extension16_q, element_extension14_q, element_extension12_q, element_extension10_q, element_extension8_q, in_i_data_2_tpl, c_i48_07_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30(EXTIFACE,115)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(1792)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,202)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_stall;

    // ip_dsdk_adapt_bitselect199(BITSELECT,165)
    assign ip_dsdk_adapt_bitselect199_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[1759:1728];

    // ip_dsdk_adapt_bitselect197(BITSELECT,164)
    assign ip_dsdk_adapt_bitselect197_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[1696:1696];

    // adapt_scalar_trunc198(ROUND,25)
    assign adapt_scalar_trunc198_in = ip_dsdk_adapt_bitselect197_b;
    assign adapt_scalar_trunc198_q = adapt_scalar_trunc198_in[0:0];

    // ip_dsdk_adapt_bitselect195(BITSELECT,163)
    assign ip_dsdk_adapt_bitselect195_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[1695:1664];

    // ip_dsdk_adapt_bitselect193(BITSELECT,162)
    assign ip_dsdk_adapt_bitselect193_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[1663:1600];

    // ip_dsdk_adapt_bitselect191(BITSELECT,161)
    assign ip_dsdk_adapt_bitselect191_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[1599:1536];

    // ip_dsdk_adapt_bitselect189(BITSELECT,160)
    assign ip_dsdk_adapt_bitselect189_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[1488:1488];

    // adapt_scalar_trunc190(ROUND,24)
    assign adapt_scalar_trunc190_in = ip_dsdk_adapt_bitselect189_b;
    assign adapt_scalar_trunc190_q = adapt_scalar_trunc190_in[0:0];

    // ip_dsdk_adapt_bitselect187(BITSELECT,159)
    assign ip_dsdk_adapt_bitselect187_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[1480:1480];

    // adapt_scalar_trunc188(ROUND,23)
    assign adapt_scalar_trunc188_in = ip_dsdk_adapt_bitselect187_b;
    assign adapt_scalar_trunc188_q = adapt_scalar_trunc188_in[0:0];

    // ip_dsdk_adapt_bitselect185(BITSELECT,158)
    assign ip_dsdk_adapt_bitselect185_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[1472:1472];

    // adapt_scalar_trunc186(ROUND,22)
    assign adapt_scalar_trunc186_in = ip_dsdk_adapt_bitselect185_b;
    assign adapt_scalar_trunc186_q = adapt_scalar_trunc186_in[0:0];

    // ip_dsdk_adapt_bitselect183(BITSELECT,157)
    assign ip_dsdk_adapt_bitselect183_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[1471:1440];

    // ip_dsdk_adapt_bitselect181(BITSELECT,156)
    assign ip_dsdk_adapt_bitselect181_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[1416:1416];

    // adapt_scalar_trunc182(ROUND,21)
    assign adapt_scalar_trunc182_in = ip_dsdk_adapt_bitselect181_b;
    assign adapt_scalar_trunc182_q = adapt_scalar_trunc182_in[0:0];

    // ip_dsdk_adapt_bitselect179(BITSELECT,155)
    assign ip_dsdk_adapt_bitselect179_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[1408:1408];

    // adapt_scalar_trunc180(ROUND,20)
    assign adapt_scalar_trunc180_in = ip_dsdk_adapt_bitselect179_b;
    assign adapt_scalar_trunc180_q = adapt_scalar_trunc180_in[0:0];

    // ip_dsdk_adapt_bitselect177(BITSELECT,154)
    assign ip_dsdk_adapt_bitselect177_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[1407:1376];

    // ip_dsdk_adapt_bitselect175(BITSELECT,153)
    assign ip_dsdk_adapt_bitselect175_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[1352:1352];

    // adapt_scalar_trunc176(ROUND,19)
    assign adapt_scalar_trunc176_in = ip_dsdk_adapt_bitselect175_b;
    assign adapt_scalar_trunc176_q = adapt_scalar_trunc176_in[0:0];

    // ip_dsdk_adapt_bitselect173(BITSELECT,152)
    assign ip_dsdk_adapt_bitselect173_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[1344:1344];

    // adapt_scalar_trunc174(ROUND,18)
    assign adapt_scalar_trunc174_in = ip_dsdk_adapt_bitselect173_b;
    assign adapt_scalar_trunc174_q = adapt_scalar_trunc174_in[0:0];

    // ip_dsdk_adapt_bitselect171(BITSELECT,151)
    assign ip_dsdk_adapt_bitselect171_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[1343:1312];

    // ip_dsdk_adapt_bitselect169(BITSELECT,150)
    assign ip_dsdk_adapt_bitselect169_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[1311:1280];

    // ip_dsdk_adapt_bitselect167(BITSELECT,149)
    assign ip_dsdk_adapt_bitselect167_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[1248:1248];

    // adapt_scalar_trunc168(ROUND,17)
    assign adapt_scalar_trunc168_in = ip_dsdk_adapt_bitselect167_b;
    assign adapt_scalar_trunc168_q = adapt_scalar_trunc168_in[0:0];

    // ip_dsdk_adapt_bitselect165(BITSELECT,148)
    assign ip_dsdk_adapt_bitselect165_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[1247:1216];

    // ip_dsdk_adapt_bitselect163(BITSELECT,147)
    assign ip_dsdk_adapt_bitselect163_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[1215:1152];

    // ip_dsdk_adapt_bitselect161(BITSELECT,146)
    assign ip_dsdk_adapt_bitselect161_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[1151:1088];

    // ip_dsdk_adapt_bitselect159(BITSELECT,145)
    assign ip_dsdk_adapt_bitselect159_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[1064:1064];

    // adapt_scalar_trunc160(ROUND,16)
    assign adapt_scalar_trunc160_in = ip_dsdk_adapt_bitselect159_b;
    assign adapt_scalar_trunc160_q = adapt_scalar_trunc160_in[0:0];

    // ip_dsdk_adapt_bitselect157(BITSELECT,144)
    assign ip_dsdk_adapt_bitselect157_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[1056:1056];

    // adapt_scalar_trunc158(ROUND,15)
    assign adapt_scalar_trunc158_in = ip_dsdk_adapt_bitselect157_b;
    assign adapt_scalar_trunc158_q = adapt_scalar_trunc158_in[0:0];

    // ip_dsdk_adapt_bitselect155(BITSELECT,143)
    assign ip_dsdk_adapt_bitselect155_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[1055:1024];

    // ip_dsdk_adapt_bitselect153(BITSELECT,142)
    assign ip_dsdk_adapt_bitselect153_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[1023:992];

    // ip_dsdk_adapt_bitselect151(BITSELECT,141)
    assign ip_dsdk_adapt_bitselect151_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[991:960];

    // ip_dsdk_adapt_bitselect149(BITSELECT,140)
    assign ip_dsdk_adapt_bitselect149_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[936:936];

    // adapt_scalar_trunc150(ROUND,14)
    assign adapt_scalar_trunc150_in = ip_dsdk_adapt_bitselect149_b;
    assign adapt_scalar_trunc150_q = adapt_scalar_trunc150_in[0:0];

    // ip_dsdk_adapt_bitselect147(BITSELECT,139)
    assign ip_dsdk_adapt_bitselect147_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[928:928];

    // adapt_scalar_trunc148(ROUND,13)
    assign adapt_scalar_trunc148_in = ip_dsdk_adapt_bitselect147_b;
    assign adapt_scalar_trunc148_q = adapt_scalar_trunc148_in[0:0];

    // ip_dsdk_adapt_bitselect145(BITSELECT,138)
    assign ip_dsdk_adapt_bitselect145_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[927:896];

    // ip_dsdk_adapt_bitselect143(BITSELECT,137)
    assign ip_dsdk_adapt_bitselect143_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[895:864];

    // ip_dsdk_adapt_bitselect141(BITSELECT,136)
    assign ip_dsdk_adapt_bitselect141_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[840:840];

    // adapt_scalar_trunc142(ROUND,12)
    assign adapt_scalar_trunc142_in = ip_dsdk_adapt_bitselect141_b;
    assign adapt_scalar_trunc142_q = adapt_scalar_trunc142_in[0:0];

    // ip_dsdk_adapt_bitselect139(BITSELECT,135)
    assign ip_dsdk_adapt_bitselect139_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[832:832];

    // adapt_scalar_trunc140(ROUND,11)
    assign adapt_scalar_trunc140_in = ip_dsdk_adapt_bitselect139_b;
    assign adapt_scalar_trunc140_q = adapt_scalar_trunc140_in[0:0];

    // ip_dsdk_adapt_bitselect137(BITSELECT,134)
    assign ip_dsdk_adapt_bitselect137_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[831:800];

    // ip_dsdk_adapt_bitselect135(BITSELECT,133)
    assign ip_dsdk_adapt_bitselect135_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[776:776];

    // adapt_scalar_trunc136(ROUND,10)
    assign adapt_scalar_trunc136_in = ip_dsdk_adapt_bitselect135_b;
    assign adapt_scalar_trunc136_q = adapt_scalar_trunc136_in[0:0];

    // ip_dsdk_adapt_bitselect133(BITSELECT,132)
    assign ip_dsdk_adapt_bitselect133_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[768:768];

    // adapt_scalar_trunc134(ROUND,9)
    assign adapt_scalar_trunc134_in = ip_dsdk_adapt_bitselect133_b;
    assign adapt_scalar_trunc134_q = adapt_scalar_trunc134_in[0:0];

    // ip_dsdk_adapt_bitselect131(BITSELECT,131)
    assign ip_dsdk_adapt_bitselect131_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[767:736];

    // ip_dsdk_adapt_bitselect129(BITSELECT,130)
    assign ip_dsdk_adapt_bitselect129_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[712:712];

    // adapt_scalar_trunc130(ROUND,8)
    assign adapt_scalar_trunc130_in = ip_dsdk_adapt_bitselect129_b;
    assign adapt_scalar_trunc130_q = adapt_scalar_trunc130_in[0:0];

    // ip_dsdk_adapt_bitselect127(BITSELECT,129)
    assign ip_dsdk_adapt_bitselect127_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[704:704];

    // adapt_scalar_trunc128(ROUND,7)
    assign adapt_scalar_trunc128_in = ip_dsdk_adapt_bitselect127_b;
    assign adapt_scalar_trunc128_q = adapt_scalar_trunc128_in[0:0];

    // ip_dsdk_adapt_bitselect125(BITSELECT,128)
    assign ip_dsdk_adapt_bitselect125_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[703:672];

    // ip_dsdk_adapt_bitselect123(BITSELECT,127)
    assign ip_dsdk_adapt_bitselect123_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[671:640];

    // ip_dsdk_adapt_bitselect121(BITSELECT,126)
    assign ip_dsdk_adapt_bitselect121_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[639:608];

    // ip_dsdk_adapt_bitselect119(BITSELECT,125)
    assign ip_dsdk_adapt_bitselect119_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[584:584];

    // adapt_scalar_trunc120(ROUND,6)
    assign adapt_scalar_trunc120_in = ip_dsdk_adapt_bitselect119_b;
    assign adapt_scalar_trunc120_q = adapt_scalar_trunc120_in[0:0];

    // ip_dsdk_adapt_bitselect117(BITSELECT,124)
    assign ip_dsdk_adapt_bitselect117_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[576:576];

    // adapt_scalar_trunc118(ROUND,5)
    assign adapt_scalar_trunc118_in = ip_dsdk_adapt_bitselect117_b;
    assign adapt_scalar_trunc118_q = adapt_scalar_trunc118_in[0:0];

    // ip_dsdk_adapt_bitselect115(BITSELECT,123)
    assign ip_dsdk_adapt_bitselect115_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[575:544];

    // ip_dsdk_adapt_bitselect113(BITSELECT,122)
    assign ip_dsdk_adapt_bitselect113_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[543:512];

    // ip_dsdk_adapt_bitselect111(BITSELECT,121)
    assign ip_dsdk_adapt_bitselect111_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[511:448];

    // ip_dsdk_adapt_bitselect109(BITSELECT,120)
    assign ip_dsdk_adapt_bitselect109_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[447:384];

    // ip_dsdk_adapt_bitselect107(BITSELECT,119)
    assign ip_dsdk_adapt_bitselect107_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[320:320];

    // adapt_scalar_trunc108(ROUND,4)
    assign adapt_scalar_trunc108_in = ip_dsdk_adapt_bitselect107_b;
    assign adapt_scalar_trunc108_q = adapt_scalar_trunc108_in[0:0];

    // ip_dsdk_adapt_bitselect105(BITSELECT,118)
    assign ip_dsdk_adapt_bitselect105_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[319:256];

    // ip_dsdk_adapt_bitselect103(BITSELECT,117)
    assign ip_dsdk_adapt_bitselect103_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[255:192];

    // ip_dsdk_adapt_bitselect101(BITSELECT,116)
    assign ip_dsdk_adapt_bitselect101_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[160:160];

    // adapt_scalar_trunc102(ROUND,3)
    assign adapt_scalar_trunc102_in = ip_dsdk_adapt_bitselect101_b;
    assign adapt_scalar_trunc102_q = adapt_scalar_trunc102_in[0:0];

    // ip_dsdk_adapt_bitselect99(BITSELECT,172)
    assign ip_dsdk_adapt_bitselect99_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[152:152];

    // adapt_scalar_trunc100(ROUND,2)
    assign adapt_scalar_trunc100_in = ip_dsdk_adapt_bitselect99_b;
    assign adapt_scalar_trunc100_q = adapt_scalar_trunc100_in[0:0];

    // ip_dsdk_adapt_bitselect97(BITSELECT,171)
    assign ip_dsdk_adapt_bitselect97_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[144:144];

    // adapt_scalar_trunc98(ROUND,30)
    assign adapt_scalar_trunc98_in = ip_dsdk_adapt_bitselect97_b;
    assign adapt_scalar_trunc98_q = adapt_scalar_trunc98_in[0:0];

    // ip_dsdk_adapt_bitselect95(BITSELECT,170)
    assign ip_dsdk_adapt_bitselect95_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[136:136];

    // adapt_scalar_trunc96(ROUND,29)
    assign adapt_scalar_trunc96_in = ip_dsdk_adapt_bitselect95_b;
    assign adapt_scalar_trunc96_q = adapt_scalar_trunc96_in[0:0];

    // ip_dsdk_adapt_bitselect93(BITSELECT,169)
    assign ip_dsdk_adapt_bitselect93_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[128:128];

    // adapt_scalar_trunc94(ROUND,28)
    assign adapt_scalar_trunc94_in = ip_dsdk_adapt_bitselect93_b;
    assign adapt_scalar_trunc94_q = adapt_scalar_trunc94_in[0:0];

    // ip_dsdk_adapt_bitselect91(BITSELECT,168)
    assign ip_dsdk_adapt_bitselect91_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[127:64];

    // ip_dsdk_adapt_bitselect89(BITSELECT,167)
    assign ip_dsdk_adapt_bitselect89_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[8:8];

    // adapt_scalar_trunc90(ROUND,27)
    assign adapt_scalar_trunc90_in = ip_dsdk_adapt_bitselect89_b;
    assign adapt_scalar_trunc90_q = adapt_scalar_trunc90_in[0:0];

    // ip_dsdk_adapt_bitselect87(BITSELECT,166)
    assign ip_dsdk_adapt_bitselect87_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_data[0:0];

    // adapt_scalar_trunc88(ROUND,26)
    assign adapt_scalar_trunc88_in = ip_dsdk_adapt_bitselect87_b;
    assign adapt_scalar_trunc88_q = adapt_scalar_trunc88_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,204)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc88_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc90_q;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect91_b;
    assign out_o_data_3_tpl = adapt_scalar_trunc94_q;
    assign out_o_data_4_tpl = adapt_scalar_trunc96_q;
    assign out_o_data_5_tpl = adapt_scalar_trunc98_q;
    assign out_o_data_6_tpl = adapt_scalar_trunc100_q;
    assign out_o_data_7_tpl = adapt_scalar_trunc102_q;
    assign out_o_data_8_tpl = ip_dsdk_adapt_bitselect103_b;
    assign out_o_data_9_tpl = ip_dsdk_adapt_bitselect105_b;
    assign out_o_data_10_tpl = adapt_scalar_trunc108_q;
    assign out_o_data_11_tpl = ip_dsdk_adapt_bitselect109_b;
    assign out_o_data_12_tpl = ip_dsdk_adapt_bitselect111_b;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect113_b;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect115_b;
    assign out_o_data_15_tpl = adapt_scalar_trunc118_q;
    assign out_o_data_16_tpl = adapt_scalar_trunc120_q;
    assign out_o_data_17_tpl = ip_dsdk_adapt_bitselect121_b;
    assign out_o_data_18_tpl = ip_dsdk_adapt_bitselect123_b;
    assign out_o_data_19_tpl = ip_dsdk_adapt_bitselect125_b;
    assign out_o_data_20_tpl = adapt_scalar_trunc128_q;
    assign out_o_data_21_tpl = adapt_scalar_trunc130_q;
    assign out_o_data_22_tpl = ip_dsdk_adapt_bitselect131_b;
    assign out_o_data_23_tpl = adapt_scalar_trunc134_q;
    assign out_o_data_24_tpl = adapt_scalar_trunc136_q;
    assign out_o_data_25_tpl = ip_dsdk_adapt_bitselect137_b;
    assign out_o_data_26_tpl = adapt_scalar_trunc140_q;
    assign out_o_data_27_tpl = adapt_scalar_trunc142_q;
    assign out_o_data_28_tpl = ip_dsdk_adapt_bitselect143_b;
    assign out_o_data_29_tpl = ip_dsdk_adapt_bitselect145_b;
    assign out_o_data_30_tpl = adapt_scalar_trunc148_q;
    assign out_o_data_31_tpl = adapt_scalar_trunc150_q;
    assign out_o_data_32_tpl = ip_dsdk_adapt_bitselect151_b;
    assign out_o_data_33_tpl = ip_dsdk_adapt_bitselect153_b;
    assign out_o_data_34_tpl = ip_dsdk_adapt_bitselect155_b;
    assign out_o_data_35_tpl = adapt_scalar_trunc158_q;
    assign out_o_data_36_tpl = adapt_scalar_trunc160_q;
    assign out_o_data_37_tpl = ip_dsdk_adapt_bitselect161_b;
    assign out_o_data_38_tpl = ip_dsdk_adapt_bitselect163_b;
    assign out_o_data_39_tpl = ip_dsdk_adapt_bitselect165_b;
    assign out_o_data_40_tpl = adapt_scalar_trunc168_q;
    assign out_o_data_41_tpl = ip_dsdk_adapt_bitselect169_b;
    assign out_o_data_42_tpl = ip_dsdk_adapt_bitselect171_b;
    assign out_o_data_43_tpl = adapt_scalar_trunc174_q;
    assign out_o_data_44_tpl = adapt_scalar_trunc176_q;
    assign out_o_data_45_tpl = ip_dsdk_adapt_bitselect177_b;
    assign out_o_data_46_tpl = adapt_scalar_trunc180_q;
    assign out_o_data_47_tpl = adapt_scalar_trunc182_q;
    assign out_o_data_48_tpl = ip_dsdk_adapt_bitselect183_b;
    assign out_o_data_49_tpl = adapt_scalar_trunc186_q;
    assign out_o_data_50_tpl = adapt_scalar_trunc188_q;
    assign out_o_data_51_tpl = adapt_scalar_trunc190_q;
    assign out_o_data_52_tpl = ip_dsdk_adapt_bitselect191_b;
    assign out_o_data_53_tpl = ip_dsdk_adapt_bitselect193_b;
    assign out_o_data_54_tpl = ip_dsdk_adapt_bitselect195_b;
    assign out_o_data_55_tpl = adapt_scalar_trunc198_q;
    assign out_o_data_56_tpl = ip_dsdk_adapt_bitselect199_b;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_2_conv2d3x3s_c0_exit1137_conv2d3x30_o_valid;

endmodule
