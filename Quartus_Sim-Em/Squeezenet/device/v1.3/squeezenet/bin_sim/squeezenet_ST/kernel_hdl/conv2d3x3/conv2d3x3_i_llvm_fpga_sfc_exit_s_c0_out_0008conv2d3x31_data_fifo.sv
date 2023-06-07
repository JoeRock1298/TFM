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

// SystemVerilog created from conv2d3x3_i_llvm_fpga_sfc_exit_s_c0_out_0008conv2d3x31_data_fifo
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_i_llvm_fpga_sfc_exit_s_c0_out_0008conv2d3x31_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [31:0] in_i_data_2_tpl,
    input wire [31:0] in_i_data_3_tpl,
    input wire [63:0] in_i_data_4_tpl,
    input wire [0:0] in_i_data_5_tpl,
    input wire [0:0] in_i_data_6_tpl,
    input wire [0:0] in_i_data_7_tpl,
    input wire [0:0] in_i_data_8_tpl,
    input wire [0:0] in_i_data_9_tpl,
    input wire [63:0] in_i_data_10_tpl,
    input wire [63:0] in_i_data_11_tpl,
    input wire [0:0] in_i_data_12_tpl,
    input wire [63:0] in_i_data_13_tpl,
    input wire [31:0] in_i_data_14_tpl,
    input wire [0:0] in_i_data_15_tpl,
    input wire [31:0] in_i_data_16_tpl,
    input wire [31:0] in_i_data_17_tpl,
    input wire [0:0] in_i_data_18_tpl,
    input wire [0:0] in_i_data_19_tpl,
    input wire [31:0] in_i_data_20_tpl,
    input wire [31:0] in_i_data_21_tpl,
    input wire [0:0] in_i_data_22_tpl,
    input wire [0:0] in_i_data_23_tpl,
    input wire [0:0] in_i_data_24_tpl,
    input wire [31:0] in_i_data_25_tpl,
    input wire [31:0] in_i_data_26_tpl,
    input wire [0:0] in_i_data_27_tpl,
    input wire [31:0] in_i_data_28_tpl,
    input wire [31:0] in_i_data_29_tpl,
    input wire [31:0] in_i_data_30_tpl,
    input wire [0:0] in_i_data_31_tpl,
    input wire [0:0] in_i_data_32_tpl,
    input wire [63:0] in_i_data_33_tpl,
    input wire [63:0] in_i_data_34_tpl,
    input wire [31:0] in_i_data_35_tpl,
    input wire [0:0] in_i_data_36_tpl,
    input wire [31:0] in_i_data_37_tpl,
    input wire [31:0] in_i_data_38_tpl,
    input wire [0:0] in_i_data_39_tpl,
    input wire [0:0] in_i_data_40_tpl,
    input wire [31:0] in_i_data_41_tpl,
    input wire [0:0] in_i_data_42_tpl,
    input wire [0:0] in_i_data_43_tpl,
    input wire [31:0] in_i_data_44_tpl,
    input wire [0:0] in_i_data_45_tpl,
    input wire [0:0] in_i_data_46_tpl,
    input wire [0:0] in_i_data_47_tpl,
    input wire [63:0] in_i_data_48_tpl,
    input wire [63:0] in_i_data_49_tpl,
    input wire [31:0] in_i_data_50_tpl,
    input wire [0:0] in_i_data_51_tpl,
    input wire [31:0] in_i_data_52_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [31:0] out_o_data_2_tpl,
    output wire [31:0] out_o_data_3_tpl,
    output wire [63:0] out_o_data_4_tpl,
    output wire [0:0] out_o_data_5_tpl,
    output wire [0:0] out_o_data_6_tpl,
    output wire [0:0] out_o_data_7_tpl,
    output wire [0:0] out_o_data_8_tpl,
    output wire [0:0] out_o_data_9_tpl,
    output wire [63:0] out_o_data_10_tpl,
    output wire [63:0] out_o_data_11_tpl,
    output wire [0:0] out_o_data_12_tpl,
    output wire [63:0] out_o_data_13_tpl,
    output wire [31:0] out_o_data_14_tpl,
    output wire [0:0] out_o_data_15_tpl,
    output wire [31:0] out_o_data_16_tpl,
    output wire [31:0] out_o_data_17_tpl,
    output wire [0:0] out_o_data_18_tpl,
    output wire [0:0] out_o_data_19_tpl,
    output wire [31:0] out_o_data_20_tpl,
    output wire [31:0] out_o_data_21_tpl,
    output wire [0:0] out_o_data_22_tpl,
    output wire [0:0] out_o_data_23_tpl,
    output wire [0:0] out_o_data_24_tpl,
    output wire [31:0] out_o_data_25_tpl,
    output wire [31:0] out_o_data_26_tpl,
    output wire [0:0] out_o_data_27_tpl,
    output wire [31:0] out_o_data_28_tpl,
    output wire [31:0] out_o_data_29_tpl,
    output wire [31:0] out_o_data_30_tpl,
    output wire [0:0] out_o_data_31_tpl,
    output wire [0:0] out_o_data_32_tpl,
    output wire [63:0] out_o_data_33_tpl,
    output wire [63:0] out_o_data_34_tpl,
    output wire [31:0] out_o_data_35_tpl,
    output wire [0:0] out_o_data_36_tpl,
    output wire [31:0] out_o_data_37_tpl,
    output wire [31:0] out_o_data_38_tpl,
    output wire [0:0] out_o_data_39_tpl,
    output wire [0:0] out_o_data_40_tpl,
    output wire [31:0] out_o_data_41_tpl,
    output wire [0:0] out_o_data_42_tpl,
    output wire [0:0] out_o_data_43_tpl,
    output wire [31:0] out_o_data_44_tpl,
    output wire [0:0] out_o_data_45_tpl,
    output wire [0:0] out_o_data_46_tpl,
    output wire [0:0] out_o_data_47_tpl,
    output wire [63:0] out_o_data_48_tpl,
    output wire [63:0] out_o_data_49_tpl,
    output wire [31:0] out_o_data_50_tpl,
    output wire [0:0] out_o_data_51_tpl,
    output wire [31:0] out_o_data_52_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc104_in;
    wire [0:0] adapt_scalar_trunc104_q;
    wire [0:0] adapt_scalar_trunc110_in;
    wire [0:0] adapt_scalar_trunc110_q;
    wire [0:0] adapt_scalar_trunc116_in;
    wire [0:0] adapt_scalar_trunc116_q;
    wire [0:0] adapt_scalar_trunc118_in;
    wire [0:0] adapt_scalar_trunc118_q;
    wire [0:0] adapt_scalar_trunc124_in;
    wire [0:0] adapt_scalar_trunc124_q;
    wire [0:0] adapt_scalar_trunc126_in;
    wire [0:0] adapt_scalar_trunc126_q;
    wire [0:0] adapt_scalar_trunc128_in;
    wire [0:0] adapt_scalar_trunc128_q;
    wire [0:0] adapt_scalar_trunc134_in;
    wire [0:0] adapt_scalar_trunc134_q;
    wire [0:0] adapt_scalar_trunc142_in;
    wire [0:0] adapt_scalar_trunc142_q;
    wire [0:0] adapt_scalar_trunc144_in;
    wire [0:0] adapt_scalar_trunc144_q;
    wire [0:0] adapt_scalar_trunc152_in;
    wire [0:0] adapt_scalar_trunc152_q;
    wire [0:0] adapt_scalar_trunc158_in;
    wire [0:0] adapt_scalar_trunc158_q;
    wire [0:0] adapt_scalar_trunc160_in;
    wire [0:0] adapt_scalar_trunc160_q;
    wire [0:0] adapt_scalar_trunc164_in;
    wire [0:0] adapt_scalar_trunc164_q;
    wire [0:0] adapt_scalar_trunc166_in;
    wire [0:0] adapt_scalar_trunc166_q;
    wire [0:0] adapt_scalar_trunc170_in;
    wire [0:0] adapt_scalar_trunc170_q;
    wire [0:0] adapt_scalar_trunc172_in;
    wire [0:0] adapt_scalar_trunc172_q;
    wire [0:0] adapt_scalar_trunc174_in;
    wire [0:0] adapt_scalar_trunc174_q;
    wire [0:0] adapt_scalar_trunc182_in;
    wire [0:0] adapt_scalar_trunc182_q;
    wire [0:0] adapt_scalar_trunc80_in;
    wire [0:0] adapt_scalar_trunc80_q;
    wire [0:0] adapt_scalar_trunc82_in;
    wire [0:0] adapt_scalar_trunc82_q;
    wire [0:0] adapt_scalar_trunc90_in;
    wire [0:0] adapt_scalar_trunc90_q;
    wire [0:0] adapt_scalar_trunc92_in;
    wire [0:0] adapt_scalar_trunc92_q;
    wire [0:0] adapt_scalar_trunc94_in;
    wire [0:0] adapt_scalar_trunc94_q;
    wire [0:0] adapt_scalar_trunc96_in;
    wire [0:0] adapt_scalar_trunc96_q;
    wire [0:0] adapt_scalar_trunc98_in;
    wire [0:0] adapt_scalar_trunc98_q;
    wire [15:0] c_i16_032_q;
    wire [23:0] c_i24_019_q;
    wire [31:0] c_i32_077_q;
    wire [39:0] c_i40_069_q;
    wire [47:0] c_i48_047_q;
    wire [55:0] c_i56_022_q;
    wire [6:0] c_i7_010_q;
    wire [7:0] c_i8_039_q;
    wire [1727:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension13_q;
    wire [7:0] element_extension15_q;
    wire [7:0] element_extension17_q;
    wire [7:0] element_extension20_q;
    wire [7:0] element_extension25_q;
    wire [7:0] element_extension28_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension30_q;
    wire [7:0] element_extension33_q;
    wire [7:0] element_extension35_q;
    wire [7:0] element_extension37_q;
    wire [7:0] element_extension40_q;
    wire [7:0] element_extension43_q;
    wire [7:0] element_extension45_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension50_q;
    wire [7:0] element_extension53_q;
    wire [7:0] element_extension55_q;
    wire [7:0] element_extension58_q;
    wire [7:0] element_extension60_q;
    wire [7:0] element_extension63_q;
    wire [7:0] element_extension65_q;
    wire [7:0] element_extension67_q;
    wire [7:0] element_extension72_q;
    wire [7:0] element_extension9_q;
    wire [1727:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_almost_full_bitsignaltemp;
    wire [1727:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_valid_bitsignaltemp;
    wire [63:0] ip_dsdk_adapt_bitselect101_b;
    wire [0:0] ip_dsdk_adapt_bitselect103_b;
    wire [63:0] ip_dsdk_adapt_bitselect105_b;
    wire [31:0] ip_dsdk_adapt_bitselect107_b;
    wire [0:0] ip_dsdk_adapt_bitselect109_b;
    wire [31:0] ip_dsdk_adapt_bitselect111_b;
    wire [31:0] ip_dsdk_adapt_bitselect113_b;
    wire [0:0] ip_dsdk_adapt_bitselect115_b;
    wire [0:0] ip_dsdk_adapt_bitselect117_b;
    wire [31:0] ip_dsdk_adapt_bitselect119_b;
    wire [31:0] ip_dsdk_adapt_bitselect121_b;
    wire [0:0] ip_dsdk_adapt_bitselect123_b;
    wire [0:0] ip_dsdk_adapt_bitselect125_b;
    wire [0:0] ip_dsdk_adapt_bitselect127_b;
    wire [31:0] ip_dsdk_adapt_bitselect129_b;
    wire [31:0] ip_dsdk_adapt_bitselect131_b;
    wire [0:0] ip_dsdk_adapt_bitselect133_b;
    wire [31:0] ip_dsdk_adapt_bitselect135_b;
    wire [31:0] ip_dsdk_adapt_bitselect137_b;
    wire [31:0] ip_dsdk_adapt_bitselect139_b;
    wire [0:0] ip_dsdk_adapt_bitselect141_b;
    wire [0:0] ip_dsdk_adapt_bitselect143_b;
    wire [63:0] ip_dsdk_adapt_bitselect145_b;
    wire [63:0] ip_dsdk_adapt_bitselect147_b;
    wire [31:0] ip_dsdk_adapt_bitselect149_b;
    wire [0:0] ip_dsdk_adapt_bitselect151_b;
    wire [31:0] ip_dsdk_adapt_bitselect153_b;
    wire [31:0] ip_dsdk_adapt_bitselect155_b;
    wire [0:0] ip_dsdk_adapt_bitselect157_b;
    wire [0:0] ip_dsdk_adapt_bitselect159_b;
    wire [31:0] ip_dsdk_adapt_bitselect161_b;
    wire [0:0] ip_dsdk_adapt_bitselect163_b;
    wire [0:0] ip_dsdk_adapt_bitselect165_b;
    wire [31:0] ip_dsdk_adapt_bitselect167_b;
    wire [0:0] ip_dsdk_adapt_bitselect169_b;
    wire [0:0] ip_dsdk_adapt_bitselect171_b;
    wire [0:0] ip_dsdk_adapt_bitselect173_b;
    wire [63:0] ip_dsdk_adapt_bitselect175_b;
    wire [63:0] ip_dsdk_adapt_bitselect177_b;
    wire [31:0] ip_dsdk_adapt_bitselect179_b;
    wire [0:0] ip_dsdk_adapt_bitselect181_b;
    wire [31:0] ip_dsdk_adapt_bitselect183_b;
    wire [0:0] ip_dsdk_adapt_bitselect79_b;
    wire [0:0] ip_dsdk_adapt_bitselect81_b;
    wire [31:0] ip_dsdk_adapt_bitselect83_b;
    wire [31:0] ip_dsdk_adapt_bitselect85_b;
    wire [63:0] ip_dsdk_adapt_bitselect87_b;
    wire [0:0] ip_dsdk_adapt_bitselect89_b;
    wire [0:0] ip_dsdk_adapt_bitselect91_b;
    wire [0:0] ip_dsdk_adapt_bitselect93_b;
    wire [0:0] ip_dsdk_adapt_bitselect95_b;
    wire [0:0] ip_dsdk_adapt_bitselect97_b;
    wire [63:0] ip_dsdk_adapt_bitselect99_b;


    // c_i7_010(CONSTANT,50)
    assign c_i7_010_q = $unsigned(7'b0000000);

    // element_extension72(BITJOIN,102)
    assign element_extension72_q = {c_i7_010_q, in_i_data_51_tpl};

    // c_i40_069(CONSTANT,47)
    assign c_i40_069_q = $unsigned(40'b0000000000000000000000000000000000000000);

    // element_extension67(BITJOIN,101)
    assign element_extension67_q = {c_i7_010_q, in_i_data_47_tpl};

    // element_extension65(BITJOIN,100)
    assign element_extension65_q = {c_i7_010_q, in_i_data_46_tpl};

    // element_extension63(BITJOIN,99)
    assign element_extension63_q = {c_i7_010_q, in_i_data_45_tpl};

    // element_extension60(BITJOIN,98)
    assign element_extension60_q = {c_i7_010_q, in_i_data_43_tpl};

    // element_extension58(BITJOIN,97)
    assign element_extension58_q = {c_i7_010_q, in_i_data_42_tpl};

    // element_extension55(BITJOIN,96)
    assign element_extension55_q = {c_i7_010_q, in_i_data_40_tpl};

    // element_extension53(BITJOIN,95)
    assign element_extension53_q = {c_i7_010_q, in_i_data_39_tpl};

    // element_extension50(BITJOIN,94)
    assign element_extension50_q = {c_i7_010_q, in_i_data_36_tpl};

    // c_i48_047(CONSTANT,48)
    assign c_i48_047_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // element_extension45(BITJOIN,92)
    assign element_extension45_q = {c_i7_010_q, in_i_data_32_tpl};

    // element_extension43(BITJOIN,91)
    assign element_extension43_q = {c_i7_010_q, in_i_data_31_tpl};

    // element_extension40(BITJOIN,90)
    assign element_extension40_q = {c_i7_010_q, in_i_data_27_tpl};

    // c_i8_039(CONSTANT,76)
    assign c_i8_039_q = $unsigned(8'b00000000);

    // element_extension37(BITJOIN,89)
    assign element_extension37_q = {c_i7_010_q, in_i_data_24_tpl};

    // element_extension35(BITJOIN,88)
    assign element_extension35_q = {c_i7_010_q, in_i_data_23_tpl};

    // element_extension33(BITJOIN,87)
    assign element_extension33_q = {c_i7_010_q, in_i_data_22_tpl};

    // element_extension30(BITJOIN,86)
    assign element_extension30_q = {c_i7_010_q, in_i_data_19_tpl};

    // element_extension28(BITJOIN,84)
    assign element_extension28_q = {c_i7_010_q, in_i_data_18_tpl};

    // element_extension25(BITJOIN,83)
    assign element_extension25_q = {c_i7_010_q, in_i_data_15_tpl};

    // c_i56_022(CONSTANT,49)
    assign c_i56_022_q = $unsigned(56'b00000000000000000000000000000000000000000000000000000000);

    // element_extension20(BITJOIN,82)
    assign element_extension20_q = {c_i7_010_q, in_i_data_12_tpl};

    // c_i24_019(CONSTANT,40)
    assign c_i24_019_q = $unsigned(24'b000000000000000000000000);

    // element_extension17(BITJOIN,81)
    assign element_extension17_q = {c_i7_010_q, in_i_data_9_tpl};

    // element_extension15(BITJOIN,80)
    assign element_extension15_q = {c_i7_010_q, in_i_data_8_tpl};

    // element_extension13(BITJOIN,79)
    assign element_extension13_q = {c_i7_010_q, in_i_data_7_tpl};

    // element_extension11(BITJOIN,78)
    assign element_extension11_q = {c_i7_010_q, in_i_data_6_tpl};

    // element_extension9(BITJOIN,103)
    assign element_extension9_q = {c_i7_010_q, in_i_data_5_tpl};

    // c_i32_077(CONSTANT,45)
    assign c_i32_077_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i16_032(CONSTANT,36)
    assign c_i16_032_q = $unsigned(16'b0000000000000000);

    // element_extension5(BITJOIN,93)
    assign element_extension5_q = {c_i7_010_q, in_i_data_1_tpl};

    // element_extension3(BITJOIN,85)
    assign element_extension3_q = {c_i7_010_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,77)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i32_077_q, in_i_data_52_tpl, c_i24_019_q, element_extension72_q, in_i_data_50_tpl, in_i_data_49_tpl, in_i_data_48_tpl, c_i40_069_q, element_extension67_q, element_extension65_q, element_extension63_q, in_i_data_44_tpl, c_i16_032_q, element_extension60_q, element_extension58_q, in_i_data_41_tpl, c_i16_032_q, element_extension55_q, element_extension53_q, in_i_data_38_tpl, in_i_data_37_tpl, c_i24_019_q, element_extension50_q, in_i_data_35_tpl, in_i_data_34_tpl, in_i_data_33_tpl, c_i48_047_q, element_extension45_q, element_extension43_q, in_i_data_30_tpl, in_i_data_29_tpl, in_i_data_28_tpl, c_i24_019_q, element_extension40_q, in_i_data_26_tpl, in_i_data_25_tpl, c_i8_039_q, element_extension37_q, element_extension35_q, element_extension33_q, in_i_data_21_tpl, in_i_data_20_tpl, c_i16_032_q, element_extension30_q, element_extension28_q, in_i_data_17_tpl, in_i_data_16_tpl, c_i24_019_q, element_extension25_q, in_i_data_14_tpl, in_i_data_13_tpl, c_i56_022_q, element_extension20_q, in_i_data_11_tpl, in_i_data_10_tpl, c_i24_019_q, element_extension17_q, element_extension15_q, element_extension13_q, element_extension11_q, element_extension9_q, in_i_data_4_tpl, c_i32_077_q, in_i_data_3_tpl, in_i_data_2_tpl, c_i16_032_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30(EXTIFACE,104)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(1728)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,186)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_stall;

    // ip_dsdk_adapt_bitselect183(BITSELECT,146)
    assign ip_dsdk_adapt_bitselect183_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[1695:1664];

    // ip_dsdk_adapt_bitselect181(BITSELECT,145)
    assign ip_dsdk_adapt_bitselect181_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[1632:1632];

    // adapt_scalar_trunc182(ROUND,20)
    assign adapt_scalar_trunc182_in = ip_dsdk_adapt_bitselect181_b;
    assign adapt_scalar_trunc182_q = adapt_scalar_trunc182_in[0:0];

    // ip_dsdk_adapt_bitselect179(BITSELECT,144)
    assign ip_dsdk_adapt_bitselect179_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[1631:1600];

    // ip_dsdk_adapt_bitselect177(BITSELECT,143)
    assign ip_dsdk_adapt_bitselect177_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[1599:1536];

    // ip_dsdk_adapt_bitselect175(BITSELECT,142)
    assign ip_dsdk_adapt_bitselect175_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[1535:1472];

    // ip_dsdk_adapt_bitselect173(BITSELECT,141)
    assign ip_dsdk_adapt_bitselect173_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[1424:1424];

    // adapt_scalar_trunc174(ROUND,19)
    assign adapt_scalar_trunc174_in = ip_dsdk_adapt_bitselect173_b;
    assign adapt_scalar_trunc174_q = adapt_scalar_trunc174_in[0:0];

    // ip_dsdk_adapt_bitselect171(BITSELECT,140)
    assign ip_dsdk_adapt_bitselect171_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[1416:1416];

    // adapt_scalar_trunc172(ROUND,18)
    assign adapt_scalar_trunc172_in = ip_dsdk_adapt_bitselect171_b;
    assign adapt_scalar_trunc172_q = adapt_scalar_trunc172_in[0:0];

    // ip_dsdk_adapt_bitselect169(BITSELECT,139)
    assign ip_dsdk_adapt_bitselect169_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[1408:1408];

    // adapt_scalar_trunc170(ROUND,17)
    assign adapt_scalar_trunc170_in = ip_dsdk_adapt_bitselect169_b;
    assign adapt_scalar_trunc170_q = adapt_scalar_trunc170_in[0:0];

    // ip_dsdk_adapt_bitselect167(BITSELECT,138)
    assign ip_dsdk_adapt_bitselect167_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[1407:1376];

    // ip_dsdk_adapt_bitselect165(BITSELECT,137)
    assign ip_dsdk_adapt_bitselect165_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[1352:1352];

    // adapt_scalar_trunc166(ROUND,16)
    assign adapt_scalar_trunc166_in = ip_dsdk_adapt_bitselect165_b;
    assign adapt_scalar_trunc166_q = adapt_scalar_trunc166_in[0:0];

    // ip_dsdk_adapt_bitselect163(BITSELECT,136)
    assign ip_dsdk_adapt_bitselect163_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[1344:1344];

    // adapt_scalar_trunc164(ROUND,15)
    assign adapt_scalar_trunc164_in = ip_dsdk_adapt_bitselect163_b;
    assign adapt_scalar_trunc164_q = adapt_scalar_trunc164_in[0:0];

    // ip_dsdk_adapt_bitselect161(BITSELECT,135)
    assign ip_dsdk_adapt_bitselect161_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[1343:1312];

    // ip_dsdk_adapt_bitselect159(BITSELECT,134)
    assign ip_dsdk_adapt_bitselect159_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[1288:1288];

    // adapt_scalar_trunc160(ROUND,14)
    assign adapt_scalar_trunc160_in = ip_dsdk_adapt_bitselect159_b;
    assign adapt_scalar_trunc160_q = adapt_scalar_trunc160_in[0:0];

    // ip_dsdk_adapt_bitselect157(BITSELECT,133)
    assign ip_dsdk_adapt_bitselect157_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[1280:1280];

    // adapt_scalar_trunc158(ROUND,13)
    assign adapt_scalar_trunc158_in = ip_dsdk_adapt_bitselect157_b;
    assign adapt_scalar_trunc158_q = adapt_scalar_trunc158_in[0:0];

    // ip_dsdk_adapt_bitselect155(BITSELECT,132)
    assign ip_dsdk_adapt_bitselect155_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[1279:1248];

    // ip_dsdk_adapt_bitselect153(BITSELECT,131)
    assign ip_dsdk_adapt_bitselect153_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[1247:1216];

    // ip_dsdk_adapt_bitselect151(BITSELECT,130)
    assign ip_dsdk_adapt_bitselect151_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[1184:1184];

    // adapt_scalar_trunc152(ROUND,12)
    assign adapt_scalar_trunc152_in = ip_dsdk_adapt_bitselect151_b;
    assign adapt_scalar_trunc152_q = adapt_scalar_trunc152_in[0:0];

    // ip_dsdk_adapt_bitselect149(BITSELECT,129)
    assign ip_dsdk_adapt_bitselect149_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[1183:1152];

    // ip_dsdk_adapt_bitselect147(BITSELECT,128)
    assign ip_dsdk_adapt_bitselect147_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[1151:1088];

    // ip_dsdk_adapt_bitselect145(BITSELECT,127)
    assign ip_dsdk_adapt_bitselect145_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[1087:1024];

    // ip_dsdk_adapt_bitselect143(BITSELECT,126)
    assign ip_dsdk_adapt_bitselect143_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[968:968];

    // adapt_scalar_trunc144(ROUND,11)
    assign adapt_scalar_trunc144_in = ip_dsdk_adapt_bitselect143_b;
    assign adapt_scalar_trunc144_q = adapt_scalar_trunc144_in[0:0];

    // ip_dsdk_adapt_bitselect141(BITSELECT,125)
    assign ip_dsdk_adapt_bitselect141_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[960:960];

    // adapt_scalar_trunc142(ROUND,10)
    assign adapt_scalar_trunc142_in = ip_dsdk_adapt_bitselect141_b;
    assign adapt_scalar_trunc142_q = adapt_scalar_trunc142_in[0:0];

    // ip_dsdk_adapt_bitselect139(BITSELECT,124)
    assign ip_dsdk_adapt_bitselect139_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[959:928];

    // ip_dsdk_adapt_bitselect137(BITSELECT,123)
    assign ip_dsdk_adapt_bitselect137_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[927:896];

    // ip_dsdk_adapt_bitselect135(BITSELECT,122)
    assign ip_dsdk_adapt_bitselect135_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[895:864];

    // ip_dsdk_adapt_bitselect133(BITSELECT,121)
    assign ip_dsdk_adapt_bitselect133_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[832:832];

    // adapt_scalar_trunc134(ROUND,9)
    assign adapt_scalar_trunc134_in = ip_dsdk_adapt_bitselect133_b;
    assign adapt_scalar_trunc134_q = adapt_scalar_trunc134_in[0:0];

    // ip_dsdk_adapt_bitselect131(BITSELECT,120)
    assign ip_dsdk_adapt_bitselect131_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[831:800];

    // ip_dsdk_adapt_bitselect129(BITSELECT,119)
    assign ip_dsdk_adapt_bitselect129_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[799:768];

    // ip_dsdk_adapt_bitselect127(BITSELECT,118)
    assign ip_dsdk_adapt_bitselect127_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[752:752];

    // adapt_scalar_trunc128(ROUND,8)
    assign adapt_scalar_trunc128_in = ip_dsdk_adapt_bitselect127_b;
    assign adapt_scalar_trunc128_q = adapt_scalar_trunc128_in[0:0];

    // ip_dsdk_adapt_bitselect125(BITSELECT,117)
    assign ip_dsdk_adapt_bitselect125_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[744:744];

    // adapt_scalar_trunc126(ROUND,7)
    assign adapt_scalar_trunc126_in = ip_dsdk_adapt_bitselect125_b;
    assign adapt_scalar_trunc126_q = adapt_scalar_trunc126_in[0:0];

    // ip_dsdk_adapt_bitselect123(BITSELECT,116)
    assign ip_dsdk_adapt_bitselect123_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[736:736];

    // adapt_scalar_trunc124(ROUND,6)
    assign adapt_scalar_trunc124_in = ip_dsdk_adapt_bitselect123_b;
    assign adapt_scalar_trunc124_q = adapt_scalar_trunc124_in[0:0];

    // ip_dsdk_adapt_bitselect121(BITSELECT,115)
    assign ip_dsdk_adapt_bitselect121_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[735:704];

    // ip_dsdk_adapt_bitselect119(BITSELECT,114)
    assign ip_dsdk_adapt_bitselect119_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[703:672];

    // ip_dsdk_adapt_bitselect117(BITSELECT,113)
    assign ip_dsdk_adapt_bitselect117_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[648:648];

    // adapt_scalar_trunc118(ROUND,5)
    assign adapt_scalar_trunc118_in = ip_dsdk_adapt_bitselect117_b;
    assign adapt_scalar_trunc118_q = adapt_scalar_trunc118_in[0:0];

    // ip_dsdk_adapt_bitselect115(BITSELECT,112)
    assign ip_dsdk_adapt_bitselect115_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[640:640];

    // adapt_scalar_trunc116(ROUND,4)
    assign adapt_scalar_trunc116_in = ip_dsdk_adapt_bitselect115_b;
    assign adapt_scalar_trunc116_q = adapt_scalar_trunc116_in[0:0];

    // ip_dsdk_adapt_bitselect113(BITSELECT,111)
    assign ip_dsdk_adapt_bitselect113_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[639:608];

    // ip_dsdk_adapt_bitselect111(BITSELECT,110)
    assign ip_dsdk_adapt_bitselect111_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[607:576];

    // ip_dsdk_adapt_bitselect109(BITSELECT,109)
    assign ip_dsdk_adapt_bitselect109_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[544:544];

    // adapt_scalar_trunc110(ROUND,3)
    assign adapt_scalar_trunc110_in = ip_dsdk_adapt_bitselect109_b;
    assign adapt_scalar_trunc110_q = adapt_scalar_trunc110_in[0:0];

    // ip_dsdk_adapt_bitselect107(BITSELECT,108)
    assign ip_dsdk_adapt_bitselect107_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[543:512];

    // ip_dsdk_adapt_bitselect105(BITSELECT,107)
    assign ip_dsdk_adapt_bitselect105_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[511:448];

    // ip_dsdk_adapt_bitselect103(BITSELECT,106)
    assign ip_dsdk_adapt_bitselect103_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[384:384];

    // adapt_scalar_trunc104(ROUND,2)
    assign adapt_scalar_trunc104_in = ip_dsdk_adapt_bitselect103_b;
    assign adapt_scalar_trunc104_q = adapt_scalar_trunc104_in[0:0];

    // ip_dsdk_adapt_bitselect101(BITSELECT,105)
    assign ip_dsdk_adapt_bitselect101_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[383:320];

    // ip_dsdk_adapt_bitselect99(BITSELECT,157)
    assign ip_dsdk_adapt_bitselect99_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[319:256];

    // ip_dsdk_adapt_bitselect97(BITSELECT,156)
    assign ip_dsdk_adapt_bitselect97_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[224:224];

    // adapt_scalar_trunc98(ROUND,27)
    assign adapt_scalar_trunc98_in = ip_dsdk_adapt_bitselect97_b;
    assign adapt_scalar_trunc98_q = adapt_scalar_trunc98_in[0:0];

    // ip_dsdk_adapt_bitselect95(BITSELECT,155)
    assign ip_dsdk_adapt_bitselect95_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[216:216];

    // adapt_scalar_trunc96(ROUND,26)
    assign adapt_scalar_trunc96_in = ip_dsdk_adapt_bitselect95_b;
    assign adapt_scalar_trunc96_q = adapt_scalar_trunc96_in[0:0];

    // ip_dsdk_adapt_bitselect93(BITSELECT,154)
    assign ip_dsdk_adapt_bitselect93_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[208:208];

    // adapt_scalar_trunc94(ROUND,25)
    assign adapt_scalar_trunc94_in = ip_dsdk_adapt_bitselect93_b;
    assign adapt_scalar_trunc94_q = adapt_scalar_trunc94_in[0:0];

    // ip_dsdk_adapt_bitselect91(BITSELECT,153)
    assign ip_dsdk_adapt_bitselect91_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[200:200];

    // adapt_scalar_trunc92(ROUND,24)
    assign adapt_scalar_trunc92_in = ip_dsdk_adapt_bitselect91_b;
    assign adapt_scalar_trunc92_q = adapt_scalar_trunc92_in[0:0];

    // ip_dsdk_adapt_bitselect89(BITSELECT,152)
    assign ip_dsdk_adapt_bitselect89_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[192:192];

    // adapt_scalar_trunc90(ROUND,23)
    assign adapt_scalar_trunc90_in = ip_dsdk_adapt_bitselect89_b;
    assign adapt_scalar_trunc90_q = adapt_scalar_trunc90_in[0:0];

    // ip_dsdk_adapt_bitselect87(BITSELECT,151)
    assign ip_dsdk_adapt_bitselect87_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[191:128];

    // ip_dsdk_adapt_bitselect85(BITSELECT,150)
    assign ip_dsdk_adapt_bitselect85_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[95:64];

    // ip_dsdk_adapt_bitselect83(BITSELECT,149)
    assign ip_dsdk_adapt_bitselect83_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[63:32];

    // ip_dsdk_adapt_bitselect81(BITSELECT,148)
    assign ip_dsdk_adapt_bitselect81_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[8:8];

    // adapt_scalar_trunc82(ROUND,22)
    assign adapt_scalar_trunc82_in = ip_dsdk_adapt_bitselect81_b;
    assign adapt_scalar_trunc82_q = adapt_scalar_trunc82_in[0:0];

    // ip_dsdk_adapt_bitselect79(BITSELECT,147)
    assign ip_dsdk_adapt_bitselect79_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_data[0:0];

    // adapt_scalar_trunc80(ROUND,21)
    assign adapt_scalar_trunc80_in = ip_dsdk_adapt_bitselect79_b;
    assign adapt_scalar_trunc80_q = adapt_scalar_trunc80_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,188)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc80_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc82_q;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect83_b;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect85_b;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect87_b;
    assign out_o_data_5_tpl = adapt_scalar_trunc90_q;
    assign out_o_data_6_tpl = adapt_scalar_trunc92_q;
    assign out_o_data_7_tpl = adapt_scalar_trunc94_q;
    assign out_o_data_8_tpl = adapt_scalar_trunc96_q;
    assign out_o_data_9_tpl = adapt_scalar_trunc98_q;
    assign out_o_data_10_tpl = ip_dsdk_adapt_bitselect99_b;
    assign out_o_data_11_tpl = ip_dsdk_adapt_bitselect101_b;
    assign out_o_data_12_tpl = adapt_scalar_trunc104_q;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect105_b;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect107_b;
    assign out_o_data_15_tpl = adapt_scalar_trunc110_q;
    assign out_o_data_16_tpl = ip_dsdk_adapt_bitselect111_b;
    assign out_o_data_17_tpl = ip_dsdk_adapt_bitselect113_b;
    assign out_o_data_18_tpl = adapt_scalar_trunc116_q;
    assign out_o_data_19_tpl = adapt_scalar_trunc118_q;
    assign out_o_data_20_tpl = ip_dsdk_adapt_bitselect119_b;
    assign out_o_data_21_tpl = ip_dsdk_adapt_bitselect121_b;
    assign out_o_data_22_tpl = adapt_scalar_trunc124_q;
    assign out_o_data_23_tpl = adapt_scalar_trunc126_q;
    assign out_o_data_24_tpl = adapt_scalar_trunc128_q;
    assign out_o_data_25_tpl = ip_dsdk_adapt_bitselect129_b;
    assign out_o_data_26_tpl = ip_dsdk_adapt_bitselect131_b;
    assign out_o_data_27_tpl = adapt_scalar_trunc134_q;
    assign out_o_data_28_tpl = ip_dsdk_adapt_bitselect135_b;
    assign out_o_data_29_tpl = ip_dsdk_adapt_bitselect137_b;
    assign out_o_data_30_tpl = ip_dsdk_adapt_bitselect139_b;
    assign out_o_data_31_tpl = adapt_scalar_trunc142_q;
    assign out_o_data_32_tpl = adapt_scalar_trunc144_q;
    assign out_o_data_33_tpl = ip_dsdk_adapt_bitselect145_b;
    assign out_o_data_34_tpl = ip_dsdk_adapt_bitselect147_b;
    assign out_o_data_35_tpl = ip_dsdk_adapt_bitselect149_b;
    assign out_o_data_36_tpl = adapt_scalar_trunc152_q;
    assign out_o_data_37_tpl = ip_dsdk_adapt_bitselect153_b;
    assign out_o_data_38_tpl = ip_dsdk_adapt_bitselect155_b;
    assign out_o_data_39_tpl = adapt_scalar_trunc158_q;
    assign out_o_data_40_tpl = adapt_scalar_trunc160_q;
    assign out_o_data_41_tpl = ip_dsdk_adapt_bitselect161_b;
    assign out_o_data_42_tpl = adapt_scalar_trunc164_q;
    assign out_o_data_43_tpl = adapt_scalar_trunc166_q;
    assign out_o_data_44_tpl = ip_dsdk_adapt_bitselect167_b;
    assign out_o_data_45_tpl = adapt_scalar_trunc170_q;
    assign out_o_data_46_tpl = adapt_scalar_trunc172_q;
    assign out_o_data_47_tpl = adapt_scalar_trunc174_q;
    assign out_o_data_48_tpl = ip_dsdk_adapt_bitselect175_b;
    assign out_o_data_49_tpl = ip_dsdk_adapt_bitselect177_b;
    assign out_o_data_50_tpl = ip_dsdk_adapt_bitselect179_b;
    assign out_o_data_51_tpl = adapt_scalar_trunc182_q;
    assign out_o_data_52_tpl = ip_dsdk_adapt_bitselect183_b;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_1_conv2d3x3s_c0_exit915_conv2d3x30_o_valid;

endmodule
