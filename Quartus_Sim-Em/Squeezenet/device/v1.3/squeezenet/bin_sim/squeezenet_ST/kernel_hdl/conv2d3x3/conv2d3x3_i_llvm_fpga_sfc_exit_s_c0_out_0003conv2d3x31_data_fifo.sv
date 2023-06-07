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

// SystemVerilog created from conv2d3x3_i_llvm_fpga_sfc_exit_s_c0_out_0003conv2d3x31_data_fifo
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_i_llvm_fpga_sfc_exit_s_c0_out_0003conv2d3x31_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [31:0] in_i_data_1_tpl,
    input wire [31:0] in_i_data_2_tpl,
    input wire [0:0] in_i_data_3_tpl,
    input wire [0:0] in_i_data_4_tpl,
    input wire [31:0] in_i_data_5_tpl,
    input wire [63:0] in_i_data_6_tpl,
    input wire [63:0] in_i_data_7_tpl,
    input wire [31:0] in_i_data_8_tpl,
    input wire [0:0] in_i_data_9_tpl,
    input wire [31:0] in_i_data_10_tpl,
    input wire [31:0] in_i_data_11_tpl,
    input wire [0:0] in_i_data_12_tpl,
    input wire [0:0] in_i_data_13_tpl,
    input wire [31:0] in_i_data_14_tpl,
    input wire [0:0] in_i_data_15_tpl,
    input wire [0:0] in_i_data_16_tpl,
    input wire [31:0] in_i_data_17_tpl,
    input wire [0:0] in_i_data_18_tpl,
    input wire [0:0] in_i_data_19_tpl,
    input wire [0:0] in_i_data_20_tpl,
    input wire [63:0] in_i_data_21_tpl,
    input wire [63:0] in_i_data_22_tpl,
    input wire [31:0] in_i_data_23_tpl,
    input wire [0:0] in_i_data_24_tpl,
    input wire [31:0] in_i_data_25_tpl,
    input wire [31:0] in_i_data_26_tpl,
    input wire [0:0] in_i_data_27_tpl,
    input wire [0:0] in_i_data_28_tpl,
    input wire [31:0] in_i_data_29_tpl,
    input wire [0:0] in_i_data_30_tpl,
    input wire [0:0] in_i_data_31_tpl,
    input wire [31:0] in_i_data_32_tpl,
    input wire [0:0] in_i_data_33_tpl,
    input wire [0:0] in_i_data_34_tpl,
    input wire [0:0] in_i_data_35_tpl,
    input wire [63:0] in_i_data_36_tpl,
    input wire [63:0] in_i_data_37_tpl,
    input wire [31:0] in_i_data_38_tpl,
    input wire [0:0] in_i_data_39_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [31:0] out_o_data_1_tpl,
    output wire [31:0] out_o_data_2_tpl,
    output wire [0:0] out_o_data_3_tpl,
    output wire [0:0] out_o_data_4_tpl,
    output wire [31:0] out_o_data_5_tpl,
    output wire [63:0] out_o_data_6_tpl,
    output wire [63:0] out_o_data_7_tpl,
    output wire [31:0] out_o_data_8_tpl,
    output wire [0:0] out_o_data_9_tpl,
    output wire [31:0] out_o_data_10_tpl,
    output wire [31:0] out_o_data_11_tpl,
    output wire [0:0] out_o_data_12_tpl,
    output wire [0:0] out_o_data_13_tpl,
    output wire [31:0] out_o_data_14_tpl,
    output wire [0:0] out_o_data_15_tpl,
    output wire [0:0] out_o_data_16_tpl,
    output wire [31:0] out_o_data_17_tpl,
    output wire [0:0] out_o_data_18_tpl,
    output wire [0:0] out_o_data_19_tpl,
    output wire [0:0] out_o_data_20_tpl,
    output wire [63:0] out_o_data_21_tpl,
    output wire [63:0] out_o_data_22_tpl,
    output wire [31:0] out_o_data_23_tpl,
    output wire [0:0] out_o_data_24_tpl,
    output wire [31:0] out_o_data_25_tpl,
    output wire [31:0] out_o_data_26_tpl,
    output wire [0:0] out_o_data_27_tpl,
    output wire [0:0] out_o_data_28_tpl,
    output wire [31:0] out_o_data_29_tpl,
    output wire [0:0] out_o_data_30_tpl,
    output wire [0:0] out_o_data_31_tpl,
    output wire [31:0] out_o_data_32_tpl,
    output wire [0:0] out_o_data_33_tpl,
    output wire [0:0] out_o_data_34_tpl,
    output wire [0:0] out_o_data_35_tpl,
    output wire [63:0] out_o_data_36_tpl,
    output wire [63:0] out_o_data_37_tpl,
    output wire [31:0] out_o_data_38_tpl,
    output wire [0:0] out_o_data_39_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc101_in;
    wire [0:0] adapt_scalar_trunc101_q;
    wire [0:0] adapt_scalar_trunc103_in;
    wire [0:0] adapt_scalar_trunc103_q;
    wire [0:0] adapt_scalar_trunc111_in;
    wire [0:0] adapt_scalar_trunc111_q;
    wire [0:0] adapt_scalar_trunc117_in;
    wire [0:0] adapt_scalar_trunc117_q;
    wire [0:0] adapt_scalar_trunc119_in;
    wire [0:0] adapt_scalar_trunc119_q;
    wire [0:0] adapt_scalar_trunc123_in;
    wire [0:0] adapt_scalar_trunc123_q;
    wire [0:0] adapt_scalar_trunc125_in;
    wire [0:0] adapt_scalar_trunc125_q;
    wire [0:0] adapt_scalar_trunc129_in;
    wire [0:0] adapt_scalar_trunc129_q;
    wire [0:0] adapt_scalar_trunc131_in;
    wire [0:0] adapt_scalar_trunc131_q;
    wire [0:0] adapt_scalar_trunc133_in;
    wire [0:0] adapt_scalar_trunc133_q;
    wire [0:0] adapt_scalar_trunc141_in;
    wire [0:0] adapt_scalar_trunc141_q;
    wire [0:0] adapt_scalar_trunc63_in;
    wire [0:0] adapt_scalar_trunc63_q;
    wire [0:0] adapt_scalar_trunc69_in;
    wire [0:0] adapt_scalar_trunc69_q;
    wire [0:0] adapt_scalar_trunc71_in;
    wire [0:0] adapt_scalar_trunc71_q;
    wire [0:0] adapt_scalar_trunc81_in;
    wire [0:0] adapt_scalar_trunc81_q;
    wire [0:0] adapt_scalar_trunc87_in;
    wire [0:0] adapt_scalar_trunc87_q;
    wire [0:0] adapt_scalar_trunc89_in;
    wire [0:0] adapt_scalar_trunc89_q;
    wire [0:0] adapt_scalar_trunc93_in;
    wire [0:0] adapt_scalar_trunc93_q;
    wire [0:0] adapt_scalar_trunc95_in;
    wire [0:0] adapt_scalar_trunc95_q;
    wire [0:0] adapt_scalar_trunc99_in;
    wire [0:0] adapt_scalar_trunc99_q;
    wire [15:0] c_i16_010_q;
    wire [23:0] c_i24_016_q;
    wire [31:0] c_i32_011_q;
    wire [39:0] c_i40_033_q;
    wire [6:0] c_i7_015_q;
    wire [1279:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension14_q;
    wire [7:0] element_extension17_q;
    wire [7:0] element_extension19_q;
    wire [7:0] element_extension22_q;
    wire [7:0] element_extension24_q;
    wire [7:0] element_extension27_q;
    wire [7:0] element_extension29_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension31_q;
    wire [7:0] element_extension36_q;
    wire [7:0] element_extension39_q;
    wire [7:0] element_extension41_q;
    wire [7:0] element_extension44_q;
    wire [7:0] element_extension46_q;
    wire [7:0] element_extension49_q;
    wire [7:0] element_extension51_q;
    wire [7:0] element_extension53_q;
    wire [7:0] element_extension58_q;
    wire [7:0] element_extension6_q;
    wire [7:0] element_extension8_q;
    wire [1279:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_almost_full_bitsignaltemp;
    wire [1279:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect100_b;
    wire [0:0] ip_dsdk_adapt_bitselect102_b;
    wire [63:0] ip_dsdk_adapt_bitselect104_b;
    wire [63:0] ip_dsdk_adapt_bitselect106_b;
    wire [31:0] ip_dsdk_adapt_bitselect108_b;
    wire [0:0] ip_dsdk_adapt_bitselect110_b;
    wire [31:0] ip_dsdk_adapt_bitselect112_b;
    wire [31:0] ip_dsdk_adapt_bitselect114_b;
    wire [0:0] ip_dsdk_adapt_bitselect116_b;
    wire [0:0] ip_dsdk_adapt_bitselect118_b;
    wire [31:0] ip_dsdk_adapt_bitselect120_b;
    wire [0:0] ip_dsdk_adapt_bitselect122_b;
    wire [0:0] ip_dsdk_adapt_bitselect124_b;
    wire [31:0] ip_dsdk_adapt_bitselect126_b;
    wire [0:0] ip_dsdk_adapt_bitselect128_b;
    wire [0:0] ip_dsdk_adapt_bitselect130_b;
    wire [0:0] ip_dsdk_adapt_bitselect132_b;
    wire [63:0] ip_dsdk_adapt_bitselect134_b;
    wire [63:0] ip_dsdk_adapt_bitselect136_b;
    wire [31:0] ip_dsdk_adapt_bitselect138_b;
    wire [0:0] ip_dsdk_adapt_bitselect140_b;
    wire [0:0] ip_dsdk_adapt_bitselect62_b;
    wire [31:0] ip_dsdk_adapt_bitselect64_b;
    wire [31:0] ip_dsdk_adapt_bitselect66_b;
    wire [0:0] ip_dsdk_adapt_bitselect68_b;
    wire [0:0] ip_dsdk_adapt_bitselect70_b;
    wire [31:0] ip_dsdk_adapt_bitselect72_b;
    wire [63:0] ip_dsdk_adapt_bitselect74_b;
    wire [63:0] ip_dsdk_adapt_bitselect76_b;
    wire [31:0] ip_dsdk_adapt_bitselect78_b;
    wire [0:0] ip_dsdk_adapt_bitselect80_b;
    wire [31:0] ip_dsdk_adapt_bitselect82_b;
    wire [31:0] ip_dsdk_adapt_bitselect84_b;
    wire [0:0] ip_dsdk_adapt_bitselect86_b;
    wire [0:0] ip_dsdk_adapt_bitselect88_b;
    wire [31:0] ip_dsdk_adapt_bitselect90_b;
    wire [0:0] ip_dsdk_adapt_bitselect92_b;
    wire [0:0] ip_dsdk_adapt_bitselect94_b;
    wire [31:0] ip_dsdk_adapt_bitselect96_b;
    wire [0:0] ip_dsdk_adapt_bitselect98_b;


    // c_i7_015(CONSTANT,40)
    assign c_i7_015_q = $unsigned(7'b0000000);

    // element_extension58(BITJOIN,78)
    assign element_extension58_q = {c_i7_015_q, in_i_data_39_tpl};

    // element_extension53(BITJOIN,77)
    assign element_extension53_q = {c_i7_015_q, in_i_data_35_tpl};

    // element_extension51(BITJOIN,76)
    assign element_extension51_q = {c_i7_015_q, in_i_data_34_tpl};

    // element_extension49(BITJOIN,75)
    assign element_extension49_q = {c_i7_015_q, in_i_data_33_tpl};

    // element_extension46(BITJOIN,74)
    assign element_extension46_q = {c_i7_015_q, in_i_data_31_tpl};

    // element_extension44(BITJOIN,73)
    assign element_extension44_q = {c_i7_015_q, in_i_data_30_tpl};

    // element_extension41(BITJOIN,72)
    assign element_extension41_q = {c_i7_015_q, in_i_data_28_tpl};

    // element_extension39(BITJOIN,71)
    assign element_extension39_q = {c_i7_015_q, in_i_data_27_tpl};

    // element_extension36(BITJOIN,70)
    assign element_extension36_q = {c_i7_015_q, in_i_data_24_tpl};

    // c_i40_033(CONSTANT,38)
    assign c_i40_033_q = $unsigned(40'b0000000000000000000000000000000000000000);

    // element_extension31(BITJOIN,69)
    assign element_extension31_q = {c_i7_015_q, in_i_data_20_tpl};

    // element_extension29(BITJOIN,67)
    assign element_extension29_q = {c_i7_015_q, in_i_data_19_tpl};

    // element_extension27(BITJOIN,66)
    assign element_extension27_q = {c_i7_015_q, in_i_data_18_tpl};

    // element_extension24(BITJOIN,65)
    assign element_extension24_q = {c_i7_015_q, in_i_data_16_tpl};

    // element_extension22(BITJOIN,64)
    assign element_extension22_q = {c_i7_015_q, in_i_data_15_tpl};

    // element_extension19(BITJOIN,63)
    assign element_extension19_q = {c_i7_015_q, in_i_data_13_tpl};

    // element_extension17(BITJOIN,62)
    assign element_extension17_q = {c_i7_015_q, in_i_data_12_tpl};

    // element_extension14(BITJOIN,61)
    assign element_extension14_q = {c_i7_015_q, in_i_data_9_tpl};

    // c_i32_011(CONSTANT,37)
    assign c_i32_011_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i16_010(CONSTANT,28)
    assign c_i16_010_q = $unsigned(16'b0000000000000000);

    // element_extension8(BITJOIN,80)
    assign element_extension8_q = {c_i7_015_q, in_i_data_4_tpl};

    // element_extension6(BITJOIN,79)
    assign element_extension6_q = {c_i7_015_q, in_i_data_3_tpl};

    // c_i24_016(CONSTANT,33)
    assign c_i24_016_q = $unsigned(24'b000000000000000000000000);

    // element_extension3(BITJOIN,68)
    assign element_extension3_q = {c_i7_015_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,60)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i24_016_q, element_extension58_q, in_i_data_38_tpl, in_i_data_37_tpl, in_i_data_36_tpl, c_i40_033_q, element_extension53_q, element_extension51_q, element_extension49_q, in_i_data_32_tpl, c_i16_010_q, element_extension46_q, element_extension44_q, in_i_data_29_tpl, c_i16_010_q, element_extension41_q, element_extension39_q, in_i_data_26_tpl, in_i_data_25_tpl, c_i24_016_q, element_extension36_q, in_i_data_23_tpl, in_i_data_22_tpl, in_i_data_21_tpl, c_i40_033_q, element_extension31_q, element_extension29_q, element_extension27_q, in_i_data_17_tpl, c_i16_010_q, element_extension24_q, element_extension22_q, in_i_data_14_tpl, c_i16_010_q, element_extension19_q, element_extension17_q, in_i_data_11_tpl, in_i_data_10_tpl, c_i24_016_q, element_extension14_q, in_i_data_8_tpl, in_i_data_7_tpl, in_i_data_6_tpl, c_i32_011_q, in_i_data_5_tpl, c_i16_010_q, element_extension8_q, element_extension6_q, in_i_data_2_tpl, in_i_data_1_tpl, c_i24_016_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30(EXTIFACE,81)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(1280)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,143)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_stall;

    // ip_dsdk_adapt_bitselect140(BITSELECT,102)
    assign ip_dsdk_adapt_bitselect140_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[1248:1248];

    // adapt_scalar_trunc141(ROUND,12)
    assign adapt_scalar_trunc141_in = ip_dsdk_adapt_bitselect140_b;
    assign adapt_scalar_trunc141_q = adapt_scalar_trunc141_in[0:0];

    // ip_dsdk_adapt_bitselect138(BITSELECT,101)
    assign ip_dsdk_adapt_bitselect138_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[1247:1216];

    // ip_dsdk_adapt_bitselect136(BITSELECT,100)
    assign ip_dsdk_adapt_bitselect136_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[1215:1152];

    // ip_dsdk_adapt_bitselect134(BITSELECT,99)
    assign ip_dsdk_adapt_bitselect134_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[1151:1088];

    // ip_dsdk_adapt_bitselect132(BITSELECT,98)
    assign ip_dsdk_adapt_bitselect132_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[1040:1040];

    // adapt_scalar_trunc133(ROUND,11)
    assign adapt_scalar_trunc133_in = ip_dsdk_adapt_bitselect132_b;
    assign adapt_scalar_trunc133_q = adapt_scalar_trunc133_in[0:0];

    // ip_dsdk_adapt_bitselect130(BITSELECT,97)
    assign ip_dsdk_adapt_bitselect130_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[1032:1032];

    // adapt_scalar_trunc131(ROUND,10)
    assign adapt_scalar_trunc131_in = ip_dsdk_adapt_bitselect130_b;
    assign adapt_scalar_trunc131_q = adapt_scalar_trunc131_in[0:0];

    // ip_dsdk_adapt_bitselect128(BITSELECT,96)
    assign ip_dsdk_adapt_bitselect128_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[1024:1024];

    // adapt_scalar_trunc129(ROUND,9)
    assign adapt_scalar_trunc129_in = ip_dsdk_adapt_bitselect128_b;
    assign adapt_scalar_trunc129_q = adapt_scalar_trunc129_in[0:0];

    // ip_dsdk_adapt_bitselect126(BITSELECT,95)
    assign ip_dsdk_adapt_bitselect126_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[1023:992];

    // ip_dsdk_adapt_bitselect124(BITSELECT,94)
    assign ip_dsdk_adapt_bitselect124_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[968:968];

    // adapt_scalar_trunc125(ROUND,8)
    assign adapt_scalar_trunc125_in = ip_dsdk_adapt_bitselect124_b;
    assign adapt_scalar_trunc125_q = adapt_scalar_trunc125_in[0:0];

    // ip_dsdk_adapt_bitselect122(BITSELECT,93)
    assign ip_dsdk_adapt_bitselect122_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[960:960];

    // adapt_scalar_trunc123(ROUND,7)
    assign adapt_scalar_trunc123_in = ip_dsdk_adapt_bitselect122_b;
    assign adapt_scalar_trunc123_q = adapt_scalar_trunc123_in[0:0];

    // ip_dsdk_adapt_bitselect120(BITSELECT,92)
    assign ip_dsdk_adapt_bitselect120_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[959:928];

    // ip_dsdk_adapt_bitselect118(BITSELECT,91)
    assign ip_dsdk_adapt_bitselect118_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[904:904];

    // adapt_scalar_trunc119(ROUND,6)
    assign adapt_scalar_trunc119_in = ip_dsdk_adapt_bitselect118_b;
    assign adapt_scalar_trunc119_q = adapt_scalar_trunc119_in[0:0];

    // ip_dsdk_adapt_bitselect116(BITSELECT,90)
    assign ip_dsdk_adapt_bitselect116_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[896:896];

    // adapt_scalar_trunc117(ROUND,5)
    assign adapt_scalar_trunc117_in = ip_dsdk_adapt_bitselect116_b;
    assign adapt_scalar_trunc117_q = adapt_scalar_trunc117_in[0:0];

    // ip_dsdk_adapt_bitselect114(BITSELECT,89)
    assign ip_dsdk_adapt_bitselect114_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[895:864];

    // ip_dsdk_adapt_bitselect112(BITSELECT,88)
    assign ip_dsdk_adapt_bitselect112_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[863:832];

    // ip_dsdk_adapt_bitselect110(BITSELECT,87)
    assign ip_dsdk_adapt_bitselect110_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[800:800];

    // adapt_scalar_trunc111(ROUND,4)
    assign adapt_scalar_trunc111_in = ip_dsdk_adapt_bitselect110_b;
    assign adapt_scalar_trunc111_q = adapt_scalar_trunc111_in[0:0];

    // ip_dsdk_adapt_bitselect108(BITSELECT,86)
    assign ip_dsdk_adapt_bitselect108_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[799:768];

    // ip_dsdk_adapt_bitselect106(BITSELECT,85)
    assign ip_dsdk_adapt_bitselect106_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[767:704];

    // ip_dsdk_adapt_bitselect104(BITSELECT,84)
    assign ip_dsdk_adapt_bitselect104_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[703:640];

    // ip_dsdk_adapt_bitselect102(BITSELECT,83)
    assign ip_dsdk_adapt_bitselect102_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[592:592];

    // adapt_scalar_trunc103(ROUND,3)
    assign adapt_scalar_trunc103_in = ip_dsdk_adapt_bitselect102_b;
    assign adapt_scalar_trunc103_q = adapt_scalar_trunc103_in[0:0];

    // ip_dsdk_adapt_bitselect100(BITSELECT,82)
    assign ip_dsdk_adapt_bitselect100_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[584:584];

    // adapt_scalar_trunc101(ROUND,2)
    assign adapt_scalar_trunc101_in = ip_dsdk_adapt_bitselect100_b;
    assign adapt_scalar_trunc101_q = adapt_scalar_trunc101_in[0:0];

    // ip_dsdk_adapt_bitselect98(BITSELECT,121)
    assign ip_dsdk_adapt_bitselect98_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[576:576];

    // adapt_scalar_trunc99(ROUND,21)
    assign adapt_scalar_trunc99_in = ip_dsdk_adapt_bitselect98_b;
    assign adapt_scalar_trunc99_q = adapt_scalar_trunc99_in[0:0];

    // ip_dsdk_adapt_bitselect96(BITSELECT,120)
    assign ip_dsdk_adapt_bitselect96_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[575:544];

    // ip_dsdk_adapt_bitselect94(BITSELECT,119)
    assign ip_dsdk_adapt_bitselect94_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[520:520];

    // adapt_scalar_trunc95(ROUND,20)
    assign adapt_scalar_trunc95_in = ip_dsdk_adapt_bitselect94_b;
    assign adapt_scalar_trunc95_q = adapt_scalar_trunc95_in[0:0];

    // ip_dsdk_adapt_bitselect92(BITSELECT,118)
    assign ip_dsdk_adapt_bitselect92_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[512:512];

    // adapt_scalar_trunc93(ROUND,19)
    assign adapt_scalar_trunc93_in = ip_dsdk_adapt_bitselect92_b;
    assign adapt_scalar_trunc93_q = adapt_scalar_trunc93_in[0:0];

    // ip_dsdk_adapt_bitselect90(BITSELECT,117)
    assign ip_dsdk_adapt_bitselect90_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[511:480];

    // ip_dsdk_adapt_bitselect88(BITSELECT,116)
    assign ip_dsdk_adapt_bitselect88_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[456:456];

    // adapt_scalar_trunc89(ROUND,18)
    assign adapt_scalar_trunc89_in = ip_dsdk_adapt_bitselect88_b;
    assign adapt_scalar_trunc89_q = adapt_scalar_trunc89_in[0:0];

    // ip_dsdk_adapt_bitselect86(BITSELECT,115)
    assign ip_dsdk_adapt_bitselect86_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[448:448];

    // adapt_scalar_trunc87(ROUND,17)
    assign adapt_scalar_trunc87_in = ip_dsdk_adapt_bitselect86_b;
    assign adapt_scalar_trunc87_q = adapt_scalar_trunc87_in[0:0];

    // ip_dsdk_adapt_bitselect84(BITSELECT,114)
    assign ip_dsdk_adapt_bitselect84_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[447:416];

    // ip_dsdk_adapt_bitselect82(BITSELECT,113)
    assign ip_dsdk_adapt_bitselect82_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[415:384];

    // ip_dsdk_adapt_bitselect80(BITSELECT,112)
    assign ip_dsdk_adapt_bitselect80_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[352:352];

    // adapt_scalar_trunc81(ROUND,16)
    assign adapt_scalar_trunc81_in = ip_dsdk_adapt_bitselect80_b;
    assign adapt_scalar_trunc81_q = adapt_scalar_trunc81_in[0:0];

    // ip_dsdk_adapt_bitselect78(BITSELECT,111)
    assign ip_dsdk_adapt_bitselect78_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[351:320];

    // ip_dsdk_adapt_bitselect76(BITSELECT,110)
    assign ip_dsdk_adapt_bitselect76_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[319:256];

    // ip_dsdk_adapt_bitselect74(BITSELECT,109)
    assign ip_dsdk_adapt_bitselect74_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[255:192];

    // ip_dsdk_adapt_bitselect72(BITSELECT,108)
    assign ip_dsdk_adapt_bitselect72_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[159:128];

    // ip_dsdk_adapt_bitselect70(BITSELECT,107)
    assign ip_dsdk_adapt_bitselect70_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[104:104];

    // adapt_scalar_trunc71(ROUND,15)
    assign adapt_scalar_trunc71_in = ip_dsdk_adapt_bitselect70_b;
    assign adapt_scalar_trunc71_q = adapt_scalar_trunc71_in[0:0];

    // ip_dsdk_adapt_bitselect68(BITSELECT,106)
    assign ip_dsdk_adapt_bitselect68_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[96:96];

    // adapt_scalar_trunc69(ROUND,14)
    assign adapt_scalar_trunc69_in = ip_dsdk_adapt_bitselect68_b;
    assign adapt_scalar_trunc69_q = adapt_scalar_trunc69_in[0:0];

    // ip_dsdk_adapt_bitselect66(BITSELECT,105)
    assign ip_dsdk_adapt_bitselect66_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[95:64];

    // ip_dsdk_adapt_bitselect64(BITSELECT,104)
    assign ip_dsdk_adapt_bitselect64_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[63:32];

    // ip_dsdk_adapt_bitselect62(BITSELECT,103)
    assign ip_dsdk_adapt_bitselect62_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_data[0:0];

    // adapt_scalar_trunc63(ROUND,13)
    assign adapt_scalar_trunc63_in = ip_dsdk_adapt_bitselect62_b;
    assign adapt_scalar_trunc63_q = adapt_scalar_trunc63_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,145)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc63_q;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect64_b;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect66_b;
    assign out_o_data_3_tpl = adapt_scalar_trunc69_q;
    assign out_o_data_4_tpl = adapt_scalar_trunc71_q;
    assign out_o_data_5_tpl = ip_dsdk_adapt_bitselect72_b;
    assign out_o_data_6_tpl = ip_dsdk_adapt_bitselect74_b;
    assign out_o_data_7_tpl = ip_dsdk_adapt_bitselect76_b;
    assign out_o_data_8_tpl = ip_dsdk_adapt_bitselect78_b;
    assign out_o_data_9_tpl = adapt_scalar_trunc81_q;
    assign out_o_data_10_tpl = ip_dsdk_adapt_bitselect82_b;
    assign out_o_data_11_tpl = ip_dsdk_adapt_bitselect84_b;
    assign out_o_data_12_tpl = adapt_scalar_trunc87_q;
    assign out_o_data_13_tpl = adapt_scalar_trunc89_q;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect90_b;
    assign out_o_data_15_tpl = adapt_scalar_trunc93_q;
    assign out_o_data_16_tpl = adapt_scalar_trunc95_q;
    assign out_o_data_17_tpl = ip_dsdk_adapt_bitselect96_b;
    assign out_o_data_18_tpl = adapt_scalar_trunc99_q;
    assign out_o_data_19_tpl = adapt_scalar_trunc101_q;
    assign out_o_data_20_tpl = adapt_scalar_trunc103_q;
    assign out_o_data_21_tpl = ip_dsdk_adapt_bitselect104_b;
    assign out_o_data_22_tpl = ip_dsdk_adapt_bitselect106_b;
    assign out_o_data_23_tpl = ip_dsdk_adapt_bitselect108_b;
    assign out_o_data_24_tpl = adapt_scalar_trunc111_q;
    assign out_o_data_25_tpl = ip_dsdk_adapt_bitselect112_b;
    assign out_o_data_26_tpl = ip_dsdk_adapt_bitselect114_b;
    assign out_o_data_27_tpl = adapt_scalar_trunc117_q;
    assign out_o_data_28_tpl = adapt_scalar_trunc119_q;
    assign out_o_data_29_tpl = ip_dsdk_adapt_bitselect120_b;
    assign out_o_data_30_tpl = adapt_scalar_trunc123_q;
    assign out_o_data_31_tpl = adapt_scalar_trunc125_q;
    assign out_o_data_32_tpl = ip_dsdk_adapt_bitselect126_b;
    assign out_o_data_33_tpl = adapt_scalar_trunc129_q;
    assign out_o_data_34_tpl = adapt_scalar_trunc131_q;
    assign out_o_data_35_tpl = adapt_scalar_trunc133_q;
    assign out_o_data_36_tpl = ip_dsdk_adapt_bitselect134_b;
    assign out_o_data_37_tpl = ip_dsdk_adapt_bitselect136_b;
    assign out_o_data_38_tpl = ip_dsdk_adapt_bitselect138_b;
    assign out_o_data_39_tpl = adapt_scalar_trunc141_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2d3x3s_c0_exit595_conv2d3x30_o_valid;

endmodule
