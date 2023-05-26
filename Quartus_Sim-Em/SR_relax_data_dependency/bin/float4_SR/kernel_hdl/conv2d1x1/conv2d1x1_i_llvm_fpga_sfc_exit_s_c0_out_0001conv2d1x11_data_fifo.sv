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

// SystemVerilog created from conv2d1x1_i_llvm_fpga_sfc_exit_s_c0_out_0001conv2d1x11_data_fifo
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_llvm_fpga_sfc_exit_s_c0_out_0001conv2d1x11_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [31:0] in_i_data_2_tpl,
    input wire [0:0] in_i_data_3_tpl,
    input wire [0:0] in_i_data_4_tpl,
    input wire [0:0] in_i_data_5_tpl,
    input wire [32:0] in_i_data_6_tpl,
    input wire [63:0] in_i_data_7_tpl,
    input wire [31:0] in_i_data_8_tpl,
    input wire [31:0] in_i_data_9_tpl,
    input wire [0:0] in_i_data_10_tpl,
    input wire [0:0] in_i_data_11_tpl,
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
    input wire [31:0] in_i_data_26_tpl,
    input wire [31:0] in_i_data_27_tpl,
    input wire [0:0] in_i_data_28_tpl,
    input wire [31:0] in_i_data_29_tpl,
    input wire [31:0] in_i_data_30_tpl,
    input wire [31:0] in_i_data_31_tpl,
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
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [31:0] out_o_data_2_tpl,
    output wire [0:0] out_o_data_3_tpl,
    output wire [0:0] out_o_data_4_tpl,
    output wire [0:0] out_o_data_5_tpl,
    output wire [32:0] out_o_data_6_tpl,
    output wire [63:0] out_o_data_7_tpl,
    output wire [31:0] out_o_data_8_tpl,
    output wire [31:0] out_o_data_9_tpl,
    output wire [0:0] out_o_data_10_tpl,
    output wire [0:0] out_o_data_11_tpl,
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
    output wire [31:0] out_o_data_26_tpl,
    output wire [31:0] out_o_data_27_tpl,
    output wire [0:0] out_o_data_28_tpl,
    output wire [31:0] out_o_data_29_tpl,
    output wire [31:0] out_o_data_30_tpl,
    output wire [31:0] out_o_data_31_tpl,
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
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc101_in;
    wire [0:0] adapt_scalar_trunc101_q;
    wire [32:0] adapt_scalar_trunc103_in;
    wire [32:0] adapt_scalar_trunc103_q;
    wire [0:0] adapt_scalar_trunc111_in;
    wire [0:0] adapt_scalar_trunc111_q;
    wire [0:0] adapt_scalar_trunc113_in;
    wire [0:0] adapt_scalar_trunc113_q;
    wire [0:0] adapt_scalar_trunc147_in;
    wire [0:0] adapt_scalar_trunc147_q;
    wire [0:0] adapt_scalar_trunc91_in;
    wire [0:0] adapt_scalar_trunc91_q;
    wire [0:0] adapt_scalar_trunc93_in;
    wire [0:0] adapt_scalar_trunc93_q;
    wire [0:0] adapt_scalar_trunc97_in;
    wire [0:0] adapt_scalar_trunc97_q;
    wire [0:0] adapt_scalar_trunc99_in;
    wire [0:0] adapt_scalar_trunc99_q;
    wire [15:0] c_i16_021_q;
    wire [23:0] c_i24_056_q;
    wire [30:0] c_i31_016_q;
    wire [39:0] c_i40_014_q;
    wire [6:0] c_i7_011_q;
    wire [1407:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension10_q;
    wire [7:0] element_extension12_q;
    wire [63:0] element_extension15_q;
    wire [7:0] element_extension17_q;
    wire [7:0] element_extension19_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension54_q;
    wire [7:0] element_extension8_q;
    wire [1407:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_almost_full_bitsignaltemp;
    wire [1407:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect100_b;
    wire [32:0] ip_dsdk_adapt_bitselect102_b;
    wire [63:0] ip_dsdk_adapt_bitselect104_b;
    wire [31:0] ip_dsdk_adapt_bitselect106_b;
    wire [31:0] ip_dsdk_adapt_bitselect108_b;
    wire [0:0] ip_dsdk_adapt_bitselect110_b;
    wire [0:0] ip_dsdk_adapt_bitselect112_b;
    wire [31:0] ip_dsdk_adapt_bitselect114_b;
    wire [31:0] ip_dsdk_adapt_bitselect116_b;
    wire [31:0] ip_dsdk_adapt_bitselect118_b;
    wire [31:0] ip_dsdk_adapt_bitselect120_b;
    wire [31:0] ip_dsdk_adapt_bitselect122_b;
    wire [31:0] ip_dsdk_adapt_bitselect124_b;
    wire [31:0] ip_dsdk_adapt_bitselect126_b;
    wire [31:0] ip_dsdk_adapt_bitselect128_b;
    wire [31:0] ip_dsdk_adapt_bitselect130_b;
    wire [31:0] ip_dsdk_adapt_bitselect132_b;
    wire [31:0] ip_dsdk_adapt_bitselect134_b;
    wire [31:0] ip_dsdk_adapt_bitselect136_b;
    wire [31:0] ip_dsdk_adapt_bitselect138_b;
    wire [31:0] ip_dsdk_adapt_bitselect140_b;
    wire [31:0] ip_dsdk_adapt_bitselect142_b;
    wire [31:0] ip_dsdk_adapt_bitselect144_b;
    wire [0:0] ip_dsdk_adapt_bitselect146_b;
    wire [31:0] ip_dsdk_adapt_bitselect148_b;
    wire [31:0] ip_dsdk_adapt_bitselect150_b;
    wire [31:0] ip_dsdk_adapt_bitselect152_b;
    wire [31:0] ip_dsdk_adapt_bitselect154_b;
    wire [31:0] ip_dsdk_adapt_bitselect156_b;
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
    wire [0:0] ip_dsdk_adapt_bitselect90_b;
    wire [0:0] ip_dsdk_adapt_bitselect92_b;
    wire [31:0] ip_dsdk_adapt_bitselect94_b;
    wire [0:0] ip_dsdk_adapt_bitselect96_b;
    wire [0:0] ip_dsdk_adapt_bitselect98_b;


    // c_i24_056(CONSTANT,77)
    assign c_i24_056_q = $unsigned(24'b000000000000000000000000);

    // c_i7_011(CONSTANT,80)
    assign c_i7_011_q = $unsigned(7'b0000000);

    // element_extension54(BITJOIN,96)
    assign element_extension54_q = {c_i7_011_q, in_i_data_28_tpl};

    // element_extension19(BITJOIN,93)
    assign element_extension19_q = {c_i7_011_q, in_i_data_11_tpl};

    // element_extension17(BITJOIN,92)
    assign element_extension17_q = {c_i7_011_q, in_i_data_10_tpl};

    // c_i31_016(CONSTANT,78)
    assign c_i31_016_q = $unsigned(31'b0000000000000000000000000000000);

    // element_extension15(BITJOIN,91)
    assign element_extension15_q = {c_i31_016_q, in_i_data_6_tpl};

    // c_i40_014(CONSTANT,79)
    assign c_i40_014_q = $unsigned(40'b0000000000000000000000000000000000000000);

    // element_extension12(BITJOIN,90)
    assign element_extension12_q = {c_i7_011_q, in_i_data_5_tpl};

    // element_extension10(BITJOIN,89)
    assign element_extension10_q = {c_i7_011_q, in_i_data_4_tpl};

    // element_extension8(BITJOIN,97)
    assign element_extension8_q = {c_i7_011_q, in_i_data_3_tpl};

    // c_i16_021(CONSTANT,75)
    assign c_i16_021_q = $unsigned(16'b0000000000000000);

    // element_extension5(BITJOIN,95)
    assign element_extension5_q = {c_i7_011_q, in_i_data_1_tpl};

    // element_extension3(BITJOIN,94)
    assign element_extension3_q = {c_i7_011_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,88)
    assign dsdk_ip_adapt_bitjoin1_q = {in_i_data_44_tpl, in_i_data_43_tpl, in_i_data_42_tpl, in_i_data_41_tpl, in_i_data_40_tpl, in_i_data_39_tpl, in_i_data_38_tpl, in_i_data_37_tpl, in_i_data_36_tpl, in_i_data_35_tpl, in_i_data_34_tpl, in_i_data_33_tpl, in_i_data_32_tpl, in_i_data_31_tpl, in_i_data_30_tpl, in_i_data_29_tpl, c_i24_056_q, element_extension54_q, in_i_data_27_tpl, in_i_data_26_tpl, in_i_data_25_tpl, in_i_data_24_tpl, in_i_data_23_tpl, in_i_data_22_tpl, in_i_data_21_tpl, in_i_data_20_tpl, in_i_data_19_tpl, in_i_data_18_tpl, in_i_data_17_tpl, in_i_data_16_tpl, in_i_data_15_tpl, in_i_data_14_tpl, in_i_data_13_tpl, in_i_data_12_tpl, c_i16_021_q, element_extension19_q, element_extension17_q, in_i_data_9_tpl, in_i_data_8_tpl, in_i_data_7_tpl, element_extension15_q, c_i40_014_q, element_extension12_q, element_extension10_q, element_extension8_q, in_i_data_2_tpl, c_i16_021_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10(EXTIFACE,98)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(1408)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,181)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_stall;

    // ip_dsdk_adapt_bitselect178(BITSELECT,138)
    assign ip_dsdk_adapt_bitselect178_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[1407:1376];

    // ip_dsdk_adapt_bitselect176(BITSELECT,137)
    assign ip_dsdk_adapt_bitselect176_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[1375:1344];

    // ip_dsdk_adapt_bitselect174(BITSELECT,136)
    assign ip_dsdk_adapt_bitselect174_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[1343:1312];

    // ip_dsdk_adapt_bitselect172(BITSELECT,135)
    assign ip_dsdk_adapt_bitselect172_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[1311:1280];

    // ip_dsdk_adapt_bitselect170(BITSELECT,134)
    assign ip_dsdk_adapt_bitselect170_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[1279:1248];

    // ip_dsdk_adapt_bitselect168(BITSELECT,133)
    assign ip_dsdk_adapt_bitselect168_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[1247:1216];

    // ip_dsdk_adapt_bitselect166(BITSELECT,132)
    assign ip_dsdk_adapt_bitselect166_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[1215:1184];

    // ip_dsdk_adapt_bitselect164(BITSELECT,131)
    assign ip_dsdk_adapt_bitselect164_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[1183:1152];

    // ip_dsdk_adapt_bitselect162(BITSELECT,130)
    assign ip_dsdk_adapt_bitselect162_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[1151:1120];

    // ip_dsdk_adapt_bitselect160(BITSELECT,129)
    assign ip_dsdk_adapt_bitselect160_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[1119:1088];

    // ip_dsdk_adapt_bitselect158(BITSELECT,128)
    assign ip_dsdk_adapt_bitselect158_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[1087:1056];

    // ip_dsdk_adapt_bitselect156(BITSELECT,127)
    assign ip_dsdk_adapt_bitselect156_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[1055:1024];

    // ip_dsdk_adapt_bitselect154(BITSELECT,126)
    assign ip_dsdk_adapt_bitselect154_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[1023:992];

    // ip_dsdk_adapt_bitselect152(BITSELECT,125)
    assign ip_dsdk_adapt_bitselect152_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[991:960];

    // ip_dsdk_adapt_bitselect150(BITSELECT,124)
    assign ip_dsdk_adapt_bitselect150_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[959:928];

    // ip_dsdk_adapt_bitselect148(BITSELECT,123)
    assign ip_dsdk_adapt_bitselect148_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[927:896];

    // ip_dsdk_adapt_bitselect146(BITSELECT,122)
    assign ip_dsdk_adapt_bitselect146_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[864:864];

    // adapt_scalar_trunc147(ROUND,6)
    assign adapt_scalar_trunc147_in = ip_dsdk_adapt_bitselect146_b;
    assign adapt_scalar_trunc147_q = adapt_scalar_trunc147_in[0:0];

    // ip_dsdk_adapt_bitselect144(BITSELECT,121)
    assign ip_dsdk_adapt_bitselect144_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[863:832];

    // ip_dsdk_adapt_bitselect142(BITSELECT,120)
    assign ip_dsdk_adapt_bitselect142_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[831:800];

    // ip_dsdk_adapt_bitselect140(BITSELECT,119)
    assign ip_dsdk_adapt_bitselect140_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[799:768];

    // ip_dsdk_adapt_bitselect138(BITSELECT,118)
    assign ip_dsdk_adapt_bitselect138_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[767:736];

    // ip_dsdk_adapt_bitselect136(BITSELECT,117)
    assign ip_dsdk_adapt_bitselect136_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[735:704];

    // ip_dsdk_adapt_bitselect134(BITSELECT,116)
    assign ip_dsdk_adapt_bitselect134_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[703:672];

    // ip_dsdk_adapt_bitselect132(BITSELECT,115)
    assign ip_dsdk_adapt_bitselect132_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[671:640];

    // ip_dsdk_adapt_bitselect130(BITSELECT,114)
    assign ip_dsdk_adapt_bitselect130_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[639:608];

    // ip_dsdk_adapt_bitselect128(BITSELECT,113)
    assign ip_dsdk_adapt_bitselect128_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[607:576];

    // ip_dsdk_adapt_bitselect126(BITSELECT,112)
    assign ip_dsdk_adapt_bitselect126_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[575:544];

    // ip_dsdk_adapt_bitselect124(BITSELECT,111)
    assign ip_dsdk_adapt_bitselect124_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[543:512];

    // ip_dsdk_adapt_bitselect122(BITSELECT,110)
    assign ip_dsdk_adapt_bitselect122_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[511:480];

    // ip_dsdk_adapt_bitselect120(BITSELECT,109)
    assign ip_dsdk_adapt_bitselect120_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[479:448];

    // ip_dsdk_adapt_bitselect118(BITSELECT,108)
    assign ip_dsdk_adapt_bitselect118_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[447:416];

    // ip_dsdk_adapt_bitselect116(BITSELECT,107)
    assign ip_dsdk_adapt_bitselect116_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[415:384];

    // ip_dsdk_adapt_bitselect114(BITSELECT,106)
    assign ip_dsdk_adapt_bitselect114_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[383:352];

    // ip_dsdk_adapt_bitselect112(BITSELECT,105)
    assign ip_dsdk_adapt_bitselect112_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[328:328];

    // adapt_scalar_trunc113(ROUND,5)
    assign adapt_scalar_trunc113_in = ip_dsdk_adapt_bitselect112_b;
    assign adapt_scalar_trunc113_q = adapt_scalar_trunc113_in[0:0];

    // ip_dsdk_adapt_bitselect110(BITSELECT,104)
    assign ip_dsdk_adapt_bitselect110_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[320:320];

    // adapt_scalar_trunc111(ROUND,4)
    assign adapt_scalar_trunc111_in = ip_dsdk_adapt_bitselect110_b;
    assign adapt_scalar_trunc111_q = adapt_scalar_trunc111_in[0:0];

    // ip_dsdk_adapt_bitselect108(BITSELECT,103)
    assign ip_dsdk_adapt_bitselect108_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[319:288];

    // ip_dsdk_adapt_bitselect106(BITSELECT,102)
    assign ip_dsdk_adapt_bitselect106_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[287:256];

    // ip_dsdk_adapt_bitselect104(BITSELECT,101)
    assign ip_dsdk_adapt_bitselect104_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[255:192];

    // ip_dsdk_adapt_bitselect102(BITSELECT,100)
    assign ip_dsdk_adapt_bitselect102_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[160:128];

    // adapt_scalar_trunc103(ROUND,3)
    assign adapt_scalar_trunc103_in = ip_dsdk_adapt_bitselect102_b;
    assign adapt_scalar_trunc103_q = adapt_scalar_trunc103_in[32:0];

    // ip_dsdk_adapt_bitselect100(BITSELECT,99)
    assign ip_dsdk_adapt_bitselect100_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[80:80];

    // adapt_scalar_trunc101(ROUND,2)
    assign adapt_scalar_trunc101_in = ip_dsdk_adapt_bitselect100_b;
    assign adapt_scalar_trunc101_q = adapt_scalar_trunc101_in[0:0];

    // ip_dsdk_adapt_bitselect98(BITSELECT,143)
    assign ip_dsdk_adapt_bitselect98_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[72:72];

    // adapt_scalar_trunc99(ROUND,10)
    assign adapt_scalar_trunc99_in = ip_dsdk_adapt_bitselect98_b;
    assign adapt_scalar_trunc99_q = adapt_scalar_trunc99_in[0:0];

    // ip_dsdk_adapt_bitselect96(BITSELECT,142)
    assign ip_dsdk_adapt_bitselect96_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[64:64];

    // adapt_scalar_trunc97(ROUND,9)
    assign adapt_scalar_trunc97_in = ip_dsdk_adapt_bitselect96_b;
    assign adapt_scalar_trunc97_q = adapt_scalar_trunc97_in[0:0];

    // ip_dsdk_adapt_bitselect94(BITSELECT,141)
    assign ip_dsdk_adapt_bitselect94_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[63:32];

    // ip_dsdk_adapt_bitselect92(BITSELECT,140)
    assign ip_dsdk_adapt_bitselect92_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[8:8];

    // adapt_scalar_trunc93(ROUND,8)
    assign adapt_scalar_trunc93_in = ip_dsdk_adapt_bitselect92_b;
    assign adapt_scalar_trunc93_q = adapt_scalar_trunc93_in[0:0];

    // ip_dsdk_adapt_bitselect90(BITSELECT,139)
    assign ip_dsdk_adapt_bitselect90_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_data[0:0];

    // adapt_scalar_trunc91(ROUND,7)
    assign adapt_scalar_trunc91_in = ip_dsdk_adapt_bitselect90_b;
    assign adapt_scalar_trunc91_q = adapt_scalar_trunc91_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,183)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc91_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc93_q;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect94_b;
    assign out_o_data_3_tpl = adapt_scalar_trunc97_q;
    assign out_o_data_4_tpl = adapt_scalar_trunc99_q;
    assign out_o_data_5_tpl = adapt_scalar_trunc101_q;
    assign out_o_data_6_tpl = adapt_scalar_trunc103_q;
    assign out_o_data_7_tpl = ip_dsdk_adapt_bitselect104_b;
    assign out_o_data_8_tpl = ip_dsdk_adapt_bitselect106_b;
    assign out_o_data_9_tpl = ip_dsdk_adapt_bitselect108_b;
    assign out_o_data_10_tpl = adapt_scalar_trunc111_q;
    assign out_o_data_11_tpl = adapt_scalar_trunc113_q;
    assign out_o_data_12_tpl = ip_dsdk_adapt_bitselect114_b;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect116_b;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect118_b;
    assign out_o_data_15_tpl = ip_dsdk_adapt_bitselect120_b;
    assign out_o_data_16_tpl = ip_dsdk_adapt_bitselect122_b;
    assign out_o_data_17_tpl = ip_dsdk_adapt_bitselect124_b;
    assign out_o_data_18_tpl = ip_dsdk_adapt_bitselect126_b;
    assign out_o_data_19_tpl = ip_dsdk_adapt_bitselect128_b;
    assign out_o_data_20_tpl = ip_dsdk_adapt_bitselect130_b;
    assign out_o_data_21_tpl = ip_dsdk_adapt_bitselect132_b;
    assign out_o_data_22_tpl = ip_dsdk_adapt_bitselect134_b;
    assign out_o_data_23_tpl = ip_dsdk_adapt_bitselect136_b;
    assign out_o_data_24_tpl = ip_dsdk_adapt_bitselect138_b;
    assign out_o_data_25_tpl = ip_dsdk_adapt_bitselect140_b;
    assign out_o_data_26_tpl = ip_dsdk_adapt_bitselect142_b;
    assign out_o_data_27_tpl = ip_dsdk_adapt_bitselect144_b;
    assign out_o_data_28_tpl = adapt_scalar_trunc147_q;
    assign out_o_data_29_tpl = ip_dsdk_adapt_bitselect148_b;
    assign out_o_data_30_tpl = ip_dsdk_adapt_bitselect150_b;
    assign out_o_data_31_tpl = ip_dsdk_adapt_bitselect152_b;
    assign out_o_data_32_tpl = ip_dsdk_adapt_bitselect154_b;
    assign out_o_data_33_tpl = ip_dsdk_adapt_bitselect156_b;
    assign out_o_data_34_tpl = ip_dsdk_adapt_bitselect158_b;
    assign out_o_data_35_tpl = ip_dsdk_adapt_bitselect160_b;
    assign out_o_data_36_tpl = ip_dsdk_adapt_bitselect162_b;
    assign out_o_data_37_tpl = ip_dsdk_adapt_bitselect164_b;
    assign out_o_data_38_tpl = ip_dsdk_adapt_bitselect166_b;
    assign out_o_data_39_tpl = ip_dsdk_adapt_bitselect168_b;
    assign out_o_data_40_tpl = ip_dsdk_adapt_bitselect170_b;
    assign out_o_data_41_tpl = ip_dsdk_adapt_bitselect172_b;
    assign out_o_data_42_tpl = ip_dsdk_adapt_bitselect174_b;
    assign out_o_data_43_tpl = ip_dsdk_adapt_bitselect176_b;
    assign out_o_data_44_tpl = ip_dsdk_adapt_bitselect178_b;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body4_conv2d1x1s_c0_exit393_conv2d1x10_o_valid;

endmodule
