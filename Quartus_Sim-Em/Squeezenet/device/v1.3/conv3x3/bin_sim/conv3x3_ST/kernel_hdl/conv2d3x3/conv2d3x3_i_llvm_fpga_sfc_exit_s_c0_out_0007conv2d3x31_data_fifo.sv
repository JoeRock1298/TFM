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

// SystemVerilog created from conv2d3x3_i_llvm_fpga_sfc_exit_s_c0_out_0007conv2d3x31_data_fifo
// SystemVerilog created on Tue May 30 12:33:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_i_llvm_fpga_sfc_exit_s_c0_out_0007conv2d3x31_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [31:0] in_i_data_2_tpl,
    input wire [31:0] in_i_data_3_tpl,
    input wire [31:0] in_i_data_4_tpl,
    input wire [31:0] in_i_data_5_tpl,
    input wire [31:0] in_i_data_6_tpl,
    input wire [63:0] in_i_data_7_tpl,
    input wire [0:0] in_i_data_8_tpl,
    input wire [0:0] in_i_data_9_tpl,
    input wire [0:0] in_i_data_10_tpl,
    input wire [0:0] in_i_data_11_tpl,
    input wire [0:0] in_i_data_12_tpl,
    input wire [63:0] in_i_data_13_tpl,
    input wire [63:0] in_i_data_14_tpl,
    input wire [0:0] in_i_data_15_tpl,
    input wire [63:0] in_i_data_16_tpl,
    input wire [31:0] in_i_data_17_tpl,
    input wire [0:0] in_i_data_18_tpl,
    input wire [31:0] in_i_data_19_tpl,
    input wire [31:0] in_i_data_20_tpl,
    input wire [31:0] in_i_data_21_tpl,
    input wire [0:0] in_i_data_22_tpl,
    input wire [0:0] in_i_data_23_tpl,
    input wire [31:0] in_i_data_24_tpl,
    input wire [0:0] in_i_data_25_tpl,
    input wire [0:0] in_i_data_26_tpl,
    input wire [0:0] in_i_data_27_tpl,
    input wire [0:0] in_i_data_28_tpl,
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
    output wire [31:0] out_o_data_4_tpl,
    output wire [31:0] out_o_data_5_tpl,
    output wire [31:0] out_o_data_6_tpl,
    output wire [63:0] out_o_data_7_tpl,
    output wire [0:0] out_o_data_8_tpl,
    output wire [0:0] out_o_data_9_tpl,
    output wire [0:0] out_o_data_10_tpl,
    output wire [0:0] out_o_data_11_tpl,
    output wire [0:0] out_o_data_12_tpl,
    output wire [63:0] out_o_data_13_tpl,
    output wire [63:0] out_o_data_14_tpl,
    output wire [0:0] out_o_data_15_tpl,
    output wire [63:0] out_o_data_16_tpl,
    output wire [31:0] out_o_data_17_tpl,
    output wire [0:0] out_o_data_18_tpl,
    output wire [31:0] out_o_data_19_tpl,
    output wire [31:0] out_o_data_20_tpl,
    output wire [31:0] out_o_data_21_tpl,
    output wire [0:0] out_o_data_22_tpl,
    output wire [0:0] out_o_data_23_tpl,
    output wire [31:0] out_o_data_24_tpl,
    output wire [0:0] out_o_data_25_tpl,
    output wire [0:0] out_o_data_26_tpl,
    output wire [0:0] out_o_data_27_tpl,
    output wire [0:0] out_o_data_28_tpl,
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

    wire [0:0] adapt_scalar_trunc101_in;
    wire [0:0] adapt_scalar_trunc101_q;
    wire [0:0] adapt_scalar_trunc107_in;
    wire [0:0] adapt_scalar_trunc107_q;
    wire [0:0] adapt_scalar_trunc113_in;
    wire [0:0] adapt_scalar_trunc113_q;
    wire [0:0] adapt_scalar_trunc121_in;
    wire [0:0] adapt_scalar_trunc121_q;
    wire [0:0] adapt_scalar_trunc123_in;
    wire [0:0] adapt_scalar_trunc123_q;
    wire [0:0] adapt_scalar_trunc127_in;
    wire [0:0] adapt_scalar_trunc127_q;
    wire [0:0] adapt_scalar_trunc129_in;
    wire [0:0] adapt_scalar_trunc129_q;
    wire [0:0] adapt_scalar_trunc131_in;
    wire [0:0] adapt_scalar_trunc131_q;
    wire [0:0] adapt_scalar_trunc133_in;
    wire [0:0] adapt_scalar_trunc133_q;
    wire [0:0] adapt_scalar_trunc139_in;
    wire [0:0] adapt_scalar_trunc139_q;
    wire [0:0] adapt_scalar_trunc141_in;
    wire [0:0] adapt_scalar_trunc141_q;
    wire [0:0] adapt_scalar_trunc149_in;
    wire [0:0] adapt_scalar_trunc149_q;
    wire [0:0] adapt_scalar_trunc155_in;
    wire [0:0] adapt_scalar_trunc155_q;
    wire [0:0] adapt_scalar_trunc157_in;
    wire [0:0] adapt_scalar_trunc157_q;
    wire [0:0] adapt_scalar_trunc161_in;
    wire [0:0] adapt_scalar_trunc161_q;
    wire [0:0] adapt_scalar_trunc163_in;
    wire [0:0] adapt_scalar_trunc163_q;
    wire [0:0] adapt_scalar_trunc167_in;
    wire [0:0] adapt_scalar_trunc167_q;
    wire [0:0] adapt_scalar_trunc169_in;
    wire [0:0] adapt_scalar_trunc169_q;
    wire [0:0] adapt_scalar_trunc171_in;
    wire [0:0] adapt_scalar_trunc171_q;
    wire [0:0] adapt_scalar_trunc179_in;
    wire [0:0] adapt_scalar_trunc179_q;
    wire [0:0] adapt_scalar_trunc77_in;
    wire [0:0] adapt_scalar_trunc77_q;
    wire [0:0] adapt_scalar_trunc79_in;
    wire [0:0] adapt_scalar_trunc79_q;
    wire [0:0] adapt_scalar_trunc93_in;
    wire [0:0] adapt_scalar_trunc93_q;
    wire [0:0] adapt_scalar_trunc95_in;
    wire [0:0] adapt_scalar_trunc95_q;
    wire [0:0] adapt_scalar_trunc97_in;
    wire [0:0] adapt_scalar_trunc97_q;
    wire [0:0] adapt_scalar_trunc99_in;
    wire [0:0] adapt_scalar_trunc99_q;
    wire [15:0] c_i16_031_q;
    wire [23:0] c_i24_018_q;
    wire [31:0] c_i32_074_q;
    wire [39:0] c_i40_066_q;
    wire [47:0] c_i48_044_q;
    wire [55:0] c_i56_021_q;
    wire [6:0] c_i7_011_q;
    wire [1663:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension10_q;
    wire [7:0] element_extension12_q;
    wire [7:0] element_extension14_q;
    wire [7:0] element_extension16_q;
    wire [7:0] element_extension19_q;
    wire [7:0] element_extension24_q;
    wire [7:0] element_extension27_q;
    wire [7:0] element_extension29_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension32_q;
    wire [7:0] element_extension34_q;
    wire [7:0] element_extension36_q;
    wire [7:0] element_extension38_q;
    wire [7:0] element_extension40_q;
    wire [7:0] element_extension42_q;
    wire [7:0] element_extension47_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension50_q;
    wire [7:0] element_extension52_q;
    wire [7:0] element_extension55_q;
    wire [7:0] element_extension57_q;
    wire [7:0] element_extension60_q;
    wire [7:0] element_extension62_q;
    wire [7:0] element_extension64_q;
    wire [7:0] element_extension69_q;
    wire [7:0] element_extension8_q;
    wire [1663:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_almost_full_bitsignaltemp;
    wire [1663:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect100_b;
    wire [63:0] ip_dsdk_adapt_bitselect102_b;
    wire [63:0] ip_dsdk_adapt_bitselect104_b;
    wire [0:0] ip_dsdk_adapt_bitselect106_b;
    wire [63:0] ip_dsdk_adapt_bitselect108_b;
    wire [31:0] ip_dsdk_adapt_bitselect110_b;
    wire [0:0] ip_dsdk_adapt_bitselect112_b;
    wire [31:0] ip_dsdk_adapt_bitselect114_b;
    wire [31:0] ip_dsdk_adapt_bitselect116_b;
    wire [31:0] ip_dsdk_adapt_bitselect118_b;
    wire [0:0] ip_dsdk_adapt_bitselect120_b;
    wire [0:0] ip_dsdk_adapt_bitselect122_b;
    wire [31:0] ip_dsdk_adapt_bitselect124_b;
    wire [0:0] ip_dsdk_adapt_bitselect126_b;
    wire [0:0] ip_dsdk_adapt_bitselect128_b;
    wire [0:0] ip_dsdk_adapt_bitselect130_b;
    wire [0:0] ip_dsdk_adapt_bitselect132_b;
    wire [31:0] ip_dsdk_adapt_bitselect134_b;
    wire [31:0] ip_dsdk_adapt_bitselect136_b;
    wire [0:0] ip_dsdk_adapt_bitselect138_b;
    wire [0:0] ip_dsdk_adapt_bitselect140_b;
    wire [63:0] ip_dsdk_adapt_bitselect142_b;
    wire [63:0] ip_dsdk_adapt_bitselect144_b;
    wire [31:0] ip_dsdk_adapt_bitselect146_b;
    wire [0:0] ip_dsdk_adapt_bitselect148_b;
    wire [31:0] ip_dsdk_adapt_bitselect150_b;
    wire [31:0] ip_dsdk_adapt_bitselect152_b;
    wire [0:0] ip_dsdk_adapt_bitselect154_b;
    wire [0:0] ip_dsdk_adapt_bitselect156_b;
    wire [31:0] ip_dsdk_adapt_bitselect158_b;
    wire [0:0] ip_dsdk_adapt_bitselect160_b;
    wire [0:0] ip_dsdk_adapt_bitselect162_b;
    wire [31:0] ip_dsdk_adapt_bitselect164_b;
    wire [0:0] ip_dsdk_adapt_bitselect166_b;
    wire [0:0] ip_dsdk_adapt_bitselect168_b;
    wire [0:0] ip_dsdk_adapt_bitselect170_b;
    wire [63:0] ip_dsdk_adapt_bitselect172_b;
    wire [63:0] ip_dsdk_adapt_bitselect174_b;
    wire [31:0] ip_dsdk_adapt_bitselect176_b;
    wire [0:0] ip_dsdk_adapt_bitselect178_b;
    wire [31:0] ip_dsdk_adapt_bitselect180_b;
    wire [0:0] ip_dsdk_adapt_bitselect76_b;
    wire [0:0] ip_dsdk_adapt_bitselect78_b;
    wire [31:0] ip_dsdk_adapt_bitselect80_b;
    wire [31:0] ip_dsdk_adapt_bitselect82_b;
    wire [31:0] ip_dsdk_adapt_bitselect84_b;
    wire [31:0] ip_dsdk_adapt_bitselect86_b;
    wire [31:0] ip_dsdk_adapt_bitselect88_b;
    wire [63:0] ip_dsdk_adapt_bitselect90_b;
    wire [0:0] ip_dsdk_adapt_bitselect92_b;
    wire [0:0] ip_dsdk_adapt_bitselect94_b;
    wire [0:0] ip_dsdk_adapt_bitselect96_b;
    wire [0:0] ip_dsdk_adapt_bitselect98_b;


    // c_i32_074(CONSTANT,44)
    assign c_i32_074_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i7_011(CONSTANT,48)
    assign c_i7_011_q = $unsigned(7'b0000000);

    // element_extension69(BITJOIN,99)
    assign element_extension69_q = {c_i7_011_q, in_i_data_51_tpl};

    // c_i40_066(CONSTANT,45)
    assign c_i40_066_q = $unsigned(40'b0000000000000000000000000000000000000000);

    // element_extension64(BITJOIN,98)
    assign element_extension64_q = {c_i7_011_q, in_i_data_47_tpl};

    // element_extension62(BITJOIN,97)
    assign element_extension62_q = {c_i7_011_q, in_i_data_46_tpl};

    // element_extension60(BITJOIN,96)
    assign element_extension60_q = {c_i7_011_q, in_i_data_45_tpl};

    // element_extension57(BITJOIN,95)
    assign element_extension57_q = {c_i7_011_q, in_i_data_43_tpl};

    // element_extension55(BITJOIN,94)
    assign element_extension55_q = {c_i7_011_q, in_i_data_42_tpl};

    // element_extension52(BITJOIN,93)
    assign element_extension52_q = {c_i7_011_q, in_i_data_40_tpl};

    // element_extension50(BITJOIN,92)
    assign element_extension50_q = {c_i7_011_q, in_i_data_39_tpl};

    // element_extension47(BITJOIN,90)
    assign element_extension47_q = {c_i7_011_q, in_i_data_36_tpl};

    // c_i48_044(CONSTANT,46)
    assign c_i48_044_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // element_extension42(BITJOIN,89)
    assign element_extension42_q = {c_i7_011_q, in_i_data_32_tpl};

    // element_extension40(BITJOIN,88)
    assign element_extension40_q = {c_i7_011_q, in_i_data_31_tpl};

    // element_extension38(BITJOIN,87)
    assign element_extension38_q = {c_i7_011_q, in_i_data_28_tpl};

    // element_extension36(BITJOIN,86)
    assign element_extension36_q = {c_i7_011_q, in_i_data_27_tpl};

    // element_extension34(BITJOIN,85)
    assign element_extension34_q = {c_i7_011_q, in_i_data_26_tpl};

    // element_extension32(BITJOIN,84)
    assign element_extension32_q = {c_i7_011_q, in_i_data_25_tpl};

    // element_extension29(BITJOIN,82)
    assign element_extension29_q = {c_i7_011_q, in_i_data_23_tpl};

    // element_extension27(BITJOIN,81)
    assign element_extension27_q = {c_i7_011_q, in_i_data_22_tpl};

    // element_extension24(BITJOIN,80)
    assign element_extension24_q = {c_i7_011_q, in_i_data_18_tpl};

    // c_i56_021(CONSTANT,47)
    assign c_i56_021_q = $unsigned(56'b00000000000000000000000000000000000000000000000000000000);

    // element_extension19(BITJOIN,79)
    assign element_extension19_q = {c_i7_011_q, in_i_data_15_tpl};

    // c_i24_018(CONSTANT,40)
    assign c_i24_018_q = $unsigned(24'b000000000000000000000000);

    // element_extension16(BITJOIN,78)
    assign element_extension16_q = {c_i7_011_q, in_i_data_12_tpl};

    // element_extension14(BITJOIN,77)
    assign element_extension14_q = {c_i7_011_q, in_i_data_11_tpl};

    // element_extension12(BITJOIN,76)
    assign element_extension12_q = {c_i7_011_q, in_i_data_10_tpl};

    // element_extension10(BITJOIN,75)
    assign element_extension10_q = {c_i7_011_q, in_i_data_9_tpl};

    // element_extension8(BITJOIN,100)
    assign element_extension8_q = {c_i7_011_q, in_i_data_8_tpl};

    // c_i16_031(CONSTANT,36)
    assign c_i16_031_q = $unsigned(16'b0000000000000000);

    // element_extension5(BITJOIN,91)
    assign element_extension5_q = {c_i7_011_q, in_i_data_1_tpl};

    // element_extension3(BITJOIN,83)
    assign element_extension3_q = {c_i7_011_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,74)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i32_074_q, in_i_data_52_tpl, c_i24_018_q, element_extension69_q, in_i_data_50_tpl, in_i_data_49_tpl, in_i_data_48_tpl, c_i40_066_q, element_extension64_q, element_extension62_q, element_extension60_q, in_i_data_44_tpl, c_i16_031_q, element_extension57_q, element_extension55_q, in_i_data_41_tpl, c_i16_031_q, element_extension52_q, element_extension50_q, in_i_data_38_tpl, in_i_data_37_tpl, c_i24_018_q, element_extension47_q, in_i_data_35_tpl, in_i_data_34_tpl, in_i_data_33_tpl, c_i48_044_q, element_extension42_q, element_extension40_q, in_i_data_30_tpl, in_i_data_29_tpl, element_extension38_q, element_extension36_q, element_extension34_q, element_extension32_q, in_i_data_24_tpl, c_i16_031_q, element_extension29_q, element_extension27_q, in_i_data_21_tpl, in_i_data_20_tpl, in_i_data_19_tpl, c_i24_018_q, element_extension24_q, in_i_data_17_tpl, in_i_data_16_tpl, c_i56_021_q, element_extension19_q, in_i_data_14_tpl, in_i_data_13_tpl, c_i24_018_q, element_extension16_q, element_extension14_q, element_extension12_q, element_extension10_q, element_extension8_q, in_i_data_7_tpl, in_i_data_6_tpl, in_i_data_5_tpl, in_i_data_4_tpl, in_i_data_3_tpl, in_i_data_2_tpl, c_i16_031_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30(EXTIFACE,101)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(1664)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,183)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_stall;

    // ip_dsdk_adapt_bitselect180(BITSELECT,142)
    assign ip_dsdk_adapt_bitselect180_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[1631:1600];

    // ip_dsdk_adapt_bitselect178(BITSELECT,141)
    assign ip_dsdk_adapt_bitselect178_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[1568:1568];

    // adapt_scalar_trunc179(ROUND,21)
    assign adapt_scalar_trunc179_in = ip_dsdk_adapt_bitselect178_b;
    assign adapt_scalar_trunc179_q = adapt_scalar_trunc179_in[0:0];

    // ip_dsdk_adapt_bitselect176(BITSELECT,140)
    assign ip_dsdk_adapt_bitselect176_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[1567:1536];

    // ip_dsdk_adapt_bitselect174(BITSELECT,139)
    assign ip_dsdk_adapt_bitselect174_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[1535:1472];

    // ip_dsdk_adapt_bitselect172(BITSELECT,138)
    assign ip_dsdk_adapt_bitselect172_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[1471:1408];

    // ip_dsdk_adapt_bitselect170(BITSELECT,137)
    assign ip_dsdk_adapt_bitselect170_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[1360:1360];

    // adapt_scalar_trunc171(ROUND,20)
    assign adapt_scalar_trunc171_in = ip_dsdk_adapt_bitselect170_b;
    assign adapt_scalar_trunc171_q = adapt_scalar_trunc171_in[0:0];

    // ip_dsdk_adapt_bitselect168(BITSELECT,136)
    assign ip_dsdk_adapt_bitselect168_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[1352:1352];

    // adapt_scalar_trunc169(ROUND,19)
    assign adapt_scalar_trunc169_in = ip_dsdk_adapt_bitselect168_b;
    assign adapt_scalar_trunc169_q = adapt_scalar_trunc169_in[0:0];

    // ip_dsdk_adapt_bitselect166(BITSELECT,135)
    assign ip_dsdk_adapt_bitselect166_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[1344:1344];

    // adapt_scalar_trunc167(ROUND,18)
    assign adapt_scalar_trunc167_in = ip_dsdk_adapt_bitselect166_b;
    assign adapt_scalar_trunc167_q = adapt_scalar_trunc167_in[0:0];

    // ip_dsdk_adapt_bitselect164(BITSELECT,134)
    assign ip_dsdk_adapt_bitselect164_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[1343:1312];

    // ip_dsdk_adapt_bitselect162(BITSELECT,133)
    assign ip_dsdk_adapt_bitselect162_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[1288:1288];

    // adapt_scalar_trunc163(ROUND,17)
    assign adapt_scalar_trunc163_in = ip_dsdk_adapt_bitselect162_b;
    assign adapt_scalar_trunc163_q = adapt_scalar_trunc163_in[0:0];

    // ip_dsdk_adapt_bitselect160(BITSELECT,132)
    assign ip_dsdk_adapt_bitselect160_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[1280:1280];

    // adapt_scalar_trunc161(ROUND,16)
    assign adapt_scalar_trunc161_in = ip_dsdk_adapt_bitselect160_b;
    assign adapt_scalar_trunc161_q = adapt_scalar_trunc161_in[0:0];

    // ip_dsdk_adapt_bitselect158(BITSELECT,131)
    assign ip_dsdk_adapt_bitselect158_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[1279:1248];

    // ip_dsdk_adapt_bitselect156(BITSELECT,130)
    assign ip_dsdk_adapt_bitselect156_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[1224:1224];

    // adapt_scalar_trunc157(ROUND,15)
    assign adapt_scalar_trunc157_in = ip_dsdk_adapt_bitselect156_b;
    assign adapt_scalar_trunc157_q = adapt_scalar_trunc157_in[0:0];

    // ip_dsdk_adapt_bitselect154(BITSELECT,129)
    assign ip_dsdk_adapt_bitselect154_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[1216:1216];

    // adapt_scalar_trunc155(ROUND,14)
    assign adapt_scalar_trunc155_in = ip_dsdk_adapt_bitselect154_b;
    assign adapt_scalar_trunc155_q = adapt_scalar_trunc155_in[0:0];

    // ip_dsdk_adapt_bitselect152(BITSELECT,128)
    assign ip_dsdk_adapt_bitselect152_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[1215:1184];

    // ip_dsdk_adapt_bitselect150(BITSELECT,127)
    assign ip_dsdk_adapt_bitselect150_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[1183:1152];

    // ip_dsdk_adapt_bitselect148(BITSELECT,126)
    assign ip_dsdk_adapt_bitselect148_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[1120:1120];

    // adapt_scalar_trunc149(ROUND,13)
    assign adapt_scalar_trunc149_in = ip_dsdk_adapt_bitselect148_b;
    assign adapt_scalar_trunc149_q = adapt_scalar_trunc149_in[0:0];

    // ip_dsdk_adapt_bitselect146(BITSELECT,125)
    assign ip_dsdk_adapt_bitselect146_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[1119:1088];

    // ip_dsdk_adapt_bitselect144(BITSELECT,124)
    assign ip_dsdk_adapt_bitselect144_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[1087:1024];

    // ip_dsdk_adapt_bitselect142(BITSELECT,123)
    assign ip_dsdk_adapt_bitselect142_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[1023:960];

    // ip_dsdk_adapt_bitselect140(BITSELECT,122)
    assign ip_dsdk_adapt_bitselect140_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[904:904];

    // adapt_scalar_trunc141(ROUND,12)
    assign adapt_scalar_trunc141_in = ip_dsdk_adapt_bitselect140_b;
    assign adapt_scalar_trunc141_q = adapt_scalar_trunc141_in[0:0];

    // ip_dsdk_adapt_bitselect138(BITSELECT,121)
    assign ip_dsdk_adapt_bitselect138_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[896:896];

    // adapt_scalar_trunc139(ROUND,11)
    assign adapt_scalar_trunc139_in = ip_dsdk_adapt_bitselect138_b;
    assign adapt_scalar_trunc139_q = adapt_scalar_trunc139_in[0:0];

    // ip_dsdk_adapt_bitselect136(BITSELECT,120)
    assign ip_dsdk_adapt_bitselect136_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[895:864];

    // ip_dsdk_adapt_bitselect134(BITSELECT,119)
    assign ip_dsdk_adapt_bitselect134_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[863:832];

    // ip_dsdk_adapt_bitselect132(BITSELECT,118)
    assign ip_dsdk_adapt_bitselect132_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[824:824];

    // adapt_scalar_trunc133(ROUND,10)
    assign adapt_scalar_trunc133_in = ip_dsdk_adapt_bitselect132_b;
    assign adapt_scalar_trunc133_q = adapt_scalar_trunc133_in[0:0];

    // ip_dsdk_adapt_bitselect130(BITSELECT,117)
    assign ip_dsdk_adapt_bitselect130_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[816:816];

    // adapt_scalar_trunc131(ROUND,9)
    assign adapt_scalar_trunc131_in = ip_dsdk_adapt_bitselect130_b;
    assign adapt_scalar_trunc131_q = adapt_scalar_trunc131_in[0:0];

    // ip_dsdk_adapt_bitselect128(BITSELECT,116)
    assign ip_dsdk_adapt_bitselect128_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[808:808];

    // adapt_scalar_trunc129(ROUND,8)
    assign adapt_scalar_trunc129_in = ip_dsdk_adapt_bitselect128_b;
    assign adapt_scalar_trunc129_q = adapt_scalar_trunc129_in[0:0];

    // ip_dsdk_adapt_bitselect126(BITSELECT,115)
    assign ip_dsdk_adapt_bitselect126_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[800:800];

    // adapt_scalar_trunc127(ROUND,7)
    assign adapt_scalar_trunc127_in = ip_dsdk_adapt_bitselect126_b;
    assign adapt_scalar_trunc127_q = adapt_scalar_trunc127_in[0:0];

    // ip_dsdk_adapt_bitselect124(BITSELECT,114)
    assign ip_dsdk_adapt_bitselect124_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[799:768];

    // ip_dsdk_adapt_bitselect122(BITSELECT,113)
    assign ip_dsdk_adapt_bitselect122_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[744:744];

    // adapt_scalar_trunc123(ROUND,6)
    assign adapt_scalar_trunc123_in = ip_dsdk_adapt_bitselect122_b;
    assign adapt_scalar_trunc123_q = adapt_scalar_trunc123_in[0:0];

    // ip_dsdk_adapt_bitselect120(BITSELECT,112)
    assign ip_dsdk_adapt_bitselect120_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[736:736];

    // adapt_scalar_trunc121(ROUND,5)
    assign adapt_scalar_trunc121_in = ip_dsdk_adapt_bitselect120_b;
    assign adapt_scalar_trunc121_q = adapt_scalar_trunc121_in[0:0];

    // ip_dsdk_adapt_bitselect118(BITSELECT,111)
    assign ip_dsdk_adapt_bitselect118_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[735:704];

    // ip_dsdk_adapt_bitselect116(BITSELECT,110)
    assign ip_dsdk_adapt_bitselect116_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[703:672];

    // ip_dsdk_adapt_bitselect114(BITSELECT,109)
    assign ip_dsdk_adapt_bitselect114_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[671:640];

    // ip_dsdk_adapt_bitselect112(BITSELECT,108)
    assign ip_dsdk_adapt_bitselect112_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[608:608];

    // adapt_scalar_trunc113(ROUND,4)
    assign adapt_scalar_trunc113_in = ip_dsdk_adapt_bitselect112_b;
    assign adapt_scalar_trunc113_q = adapt_scalar_trunc113_in[0:0];

    // ip_dsdk_adapt_bitselect110(BITSELECT,107)
    assign ip_dsdk_adapt_bitselect110_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[607:576];

    // ip_dsdk_adapt_bitselect108(BITSELECT,106)
    assign ip_dsdk_adapt_bitselect108_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[575:512];

    // ip_dsdk_adapt_bitselect106(BITSELECT,105)
    assign ip_dsdk_adapt_bitselect106_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[448:448];

    // adapt_scalar_trunc107(ROUND,3)
    assign adapt_scalar_trunc107_in = ip_dsdk_adapt_bitselect106_b;
    assign adapt_scalar_trunc107_q = adapt_scalar_trunc107_in[0:0];

    // ip_dsdk_adapt_bitselect104(BITSELECT,104)
    assign ip_dsdk_adapt_bitselect104_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[447:384];

    // ip_dsdk_adapt_bitselect102(BITSELECT,103)
    assign ip_dsdk_adapt_bitselect102_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[383:320];

    // ip_dsdk_adapt_bitselect100(BITSELECT,102)
    assign ip_dsdk_adapt_bitselect100_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[288:288];

    // adapt_scalar_trunc101(ROUND,2)
    assign adapt_scalar_trunc101_in = ip_dsdk_adapt_bitselect100_b;
    assign adapt_scalar_trunc101_q = adapt_scalar_trunc101_in[0:0];

    // ip_dsdk_adapt_bitselect98(BITSELECT,154)
    assign ip_dsdk_adapt_bitselect98_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[280:280];

    // adapt_scalar_trunc99(ROUND,27)
    assign adapt_scalar_trunc99_in = ip_dsdk_adapt_bitselect98_b;
    assign adapt_scalar_trunc99_q = adapt_scalar_trunc99_in[0:0];

    // ip_dsdk_adapt_bitselect96(BITSELECT,153)
    assign ip_dsdk_adapt_bitselect96_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[272:272];

    // adapt_scalar_trunc97(ROUND,26)
    assign adapt_scalar_trunc97_in = ip_dsdk_adapt_bitselect96_b;
    assign adapt_scalar_trunc97_q = adapt_scalar_trunc97_in[0:0];

    // ip_dsdk_adapt_bitselect94(BITSELECT,152)
    assign ip_dsdk_adapt_bitselect94_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[264:264];

    // adapt_scalar_trunc95(ROUND,25)
    assign adapt_scalar_trunc95_in = ip_dsdk_adapt_bitselect94_b;
    assign adapt_scalar_trunc95_q = adapt_scalar_trunc95_in[0:0];

    // ip_dsdk_adapt_bitselect92(BITSELECT,151)
    assign ip_dsdk_adapt_bitselect92_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[256:256];

    // adapt_scalar_trunc93(ROUND,24)
    assign adapt_scalar_trunc93_in = ip_dsdk_adapt_bitselect92_b;
    assign adapt_scalar_trunc93_q = adapt_scalar_trunc93_in[0:0];

    // ip_dsdk_adapt_bitselect90(BITSELECT,150)
    assign ip_dsdk_adapt_bitselect90_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[255:192];

    // ip_dsdk_adapt_bitselect88(BITSELECT,149)
    assign ip_dsdk_adapt_bitselect88_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[191:160];

    // ip_dsdk_adapt_bitselect86(BITSELECT,148)
    assign ip_dsdk_adapt_bitselect86_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[159:128];

    // ip_dsdk_adapt_bitselect84(BITSELECT,147)
    assign ip_dsdk_adapt_bitselect84_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[127:96];

    // ip_dsdk_adapt_bitselect82(BITSELECT,146)
    assign ip_dsdk_adapt_bitselect82_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[95:64];

    // ip_dsdk_adapt_bitselect80(BITSELECT,145)
    assign ip_dsdk_adapt_bitselect80_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[63:32];

    // ip_dsdk_adapt_bitselect78(BITSELECT,144)
    assign ip_dsdk_adapt_bitselect78_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[8:8];

    // adapt_scalar_trunc79(ROUND,23)
    assign adapt_scalar_trunc79_in = ip_dsdk_adapt_bitselect78_b;
    assign adapt_scalar_trunc79_q = adapt_scalar_trunc79_in[0:0];

    // ip_dsdk_adapt_bitselect76(BITSELECT,143)
    assign ip_dsdk_adapt_bitselect76_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_data[0:0];

    // adapt_scalar_trunc77(ROUND,22)
    assign adapt_scalar_trunc77_in = ip_dsdk_adapt_bitselect76_b;
    assign adapt_scalar_trunc77_q = adapt_scalar_trunc77_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,185)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc77_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc79_q;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect80_b;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect82_b;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect84_b;
    assign out_o_data_5_tpl = ip_dsdk_adapt_bitselect86_b;
    assign out_o_data_6_tpl = ip_dsdk_adapt_bitselect88_b;
    assign out_o_data_7_tpl = ip_dsdk_adapt_bitselect90_b;
    assign out_o_data_8_tpl = adapt_scalar_trunc93_q;
    assign out_o_data_9_tpl = adapt_scalar_trunc95_q;
    assign out_o_data_10_tpl = adapt_scalar_trunc97_q;
    assign out_o_data_11_tpl = adapt_scalar_trunc99_q;
    assign out_o_data_12_tpl = adapt_scalar_trunc101_q;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect102_b;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect104_b;
    assign out_o_data_15_tpl = adapt_scalar_trunc107_q;
    assign out_o_data_16_tpl = ip_dsdk_adapt_bitselect108_b;
    assign out_o_data_17_tpl = ip_dsdk_adapt_bitselect110_b;
    assign out_o_data_18_tpl = adapt_scalar_trunc113_q;
    assign out_o_data_19_tpl = ip_dsdk_adapt_bitselect114_b;
    assign out_o_data_20_tpl = ip_dsdk_adapt_bitselect116_b;
    assign out_o_data_21_tpl = ip_dsdk_adapt_bitselect118_b;
    assign out_o_data_22_tpl = adapt_scalar_trunc121_q;
    assign out_o_data_23_tpl = adapt_scalar_trunc123_q;
    assign out_o_data_24_tpl = ip_dsdk_adapt_bitselect124_b;
    assign out_o_data_25_tpl = adapt_scalar_trunc127_q;
    assign out_o_data_26_tpl = adapt_scalar_trunc129_q;
    assign out_o_data_27_tpl = adapt_scalar_trunc131_q;
    assign out_o_data_28_tpl = adapt_scalar_trunc133_q;
    assign out_o_data_29_tpl = ip_dsdk_adapt_bitselect134_b;
    assign out_o_data_30_tpl = ip_dsdk_adapt_bitselect136_b;
    assign out_o_data_31_tpl = adapt_scalar_trunc139_q;
    assign out_o_data_32_tpl = adapt_scalar_trunc141_q;
    assign out_o_data_33_tpl = ip_dsdk_adapt_bitselect142_b;
    assign out_o_data_34_tpl = ip_dsdk_adapt_bitselect144_b;
    assign out_o_data_35_tpl = ip_dsdk_adapt_bitselect146_b;
    assign out_o_data_36_tpl = adapt_scalar_trunc149_q;
    assign out_o_data_37_tpl = ip_dsdk_adapt_bitselect150_b;
    assign out_o_data_38_tpl = ip_dsdk_adapt_bitselect152_b;
    assign out_o_data_39_tpl = adapt_scalar_trunc155_q;
    assign out_o_data_40_tpl = adapt_scalar_trunc157_q;
    assign out_o_data_41_tpl = ip_dsdk_adapt_bitselect158_b;
    assign out_o_data_42_tpl = adapt_scalar_trunc161_q;
    assign out_o_data_43_tpl = adapt_scalar_trunc163_q;
    assign out_o_data_44_tpl = ip_dsdk_adapt_bitselect164_b;
    assign out_o_data_45_tpl = adapt_scalar_trunc167_q;
    assign out_o_data_46_tpl = adapt_scalar_trunc169_q;
    assign out_o_data_47_tpl = adapt_scalar_trunc171_q;
    assign out_o_data_48_tpl = ip_dsdk_adapt_bitselect172_b;
    assign out_o_data_49_tpl = ip_dsdk_adapt_bitselect174_b;
    assign out_o_data_50_tpl = ip_dsdk_adapt_bitselect176_b;
    assign out_o_data_51_tpl = adapt_scalar_trunc179_q;
    assign out_o_data_52_tpl = ip_dsdk_adapt_bitselect180_b;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body22_conv2d3x3s_c0_exit730_conv2d3x30_o_valid;

endmodule
