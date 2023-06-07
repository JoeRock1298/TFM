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

// SystemVerilog created from conv2d1x1_i_llvm_fpga_sfc_exit_s_c0_out_0003conv2d1x11_data_fifo
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_llvm_fpga_sfc_exit_s_c0_out_0003conv2d1x11_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [0:0] in_i_data_2_tpl,
    input wire [31:0] in_i_data_3_tpl,
    input wire [63:0] in_i_data_4_tpl,
    input wire [0:0] in_i_data_5_tpl,
    input wire [63:0] in_i_data_6_tpl,
    input wire [0:0] in_i_data_7_tpl,
    input wire [0:0] in_i_data_8_tpl,
    input wire [31:0] in_i_data_9_tpl,
    input wire [0:0] in_i_data_10_tpl,
    input wire [0:0] in_i_data_11_tpl,
    input wire [0:0] in_i_data_12_tpl,
    input wire [31:0] in_i_data_13_tpl,
    input wire [0:0] in_i_data_14_tpl,
    input wire [0:0] in_i_data_15_tpl,
    input wire [32:0] in_i_data_16_tpl,
    input wire [31:0] in_i_data_17_tpl,
    input wire [31:0] in_i_data_18_tpl,
    input wire [31:0] in_i_data_19_tpl,
    input wire [0:0] in_i_data_20_tpl,
    input wire [31:0] in_i_data_21_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [0:0] out_o_data_2_tpl,
    output wire [31:0] out_o_data_3_tpl,
    output wire [63:0] out_o_data_4_tpl,
    output wire [0:0] out_o_data_5_tpl,
    output wire [63:0] out_o_data_6_tpl,
    output wire [0:0] out_o_data_7_tpl,
    output wire [0:0] out_o_data_8_tpl,
    output wire [31:0] out_o_data_9_tpl,
    output wire [0:0] out_o_data_10_tpl,
    output wire [0:0] out_o_data_11_tpl,
    output wire [0:0] out_o_data_12_tpl,
    output wire [31:0] out_o_data_13_tpl,
    output wire [0:0] out_o_data_14_tpl,
    output wire [0:0] out_o_data_15_tpl,
    output wire [32:0] out_o_data_16_tpl,
    output wire [31:0] out_o_data_17_tpl,
    output wire [31:0] out_o_data_18_tpl,
    output wire [31:0] out_o_data_19_tpl,
    output wire [0:0] out_o_data_20_tpl,
    output wire [31:0] out_o_data_21_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc42_in;
    wire [0:0] adapt_scalar_trunc42_q;
    wire [0:0] adapt_scalar_trunc44_in;
    wire [0:0] adapt_scalar_trunc44_q;
    wire [0:0] adapt_scalar_trunc46_in;
    wire [0:0] adapt_scalar_trunc46_q;
    wire [0:0] adapt_scalar_trunc52_in;
    wire [0:0] adapt_scalar_trunc52_q;
    wire [0:0] adapt_scalar_trunc56_in;
    wire [0:0] adapt_scalar_trunc56_q;
    wire [0:0] adapt_scalar_trunc58_in;
    wire [0:0] adapt_scalar_trunc58_q;
    wire [0:0] adapt_scalar_trunc62_in;
    wire [0:0] adapt_scalar_trunc62_q;
    wire [0:0] adapt_scalar_trunc64_in;
    wire [0:0] adapt_scalar_trunc64_q;
    wire [0:0] adapt_scalar_trunc66_in;
    wire [0:0] adapt_scalar_trunc66_q;
    wire [0:0] adapt_scalar_trunc70_in;
    wire [0:0] adapt_scalar_trunc70_q;
    wire [0:0] adapt_scalar_trunc72_in;
    wire [0:0] adapt_scalar_trunc72_q;
    wire [32:0] adapt_scalar_trunc74_in;
    wire [32:0] adapt_scalar_trunc74_q;
    wire [0:0] adapt_scalar_trunc82_in;
    wire [0:0] adapt_scalar_trunc82_q;
    wire [15:0] c_i16_017_q;
    wire [23:0] c_i24_036_q;
    wire [30:0] c_i31_031_q;
    wire [31:0] c_i32_039_q;
    wire [47:0] c_i48_029_q;
    wire [55:0] c_i56_012_q;
    wire [6:0] c_i7_011_q;
    wire [7:0] c_i8_024_q;
    wire [703:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension10_q;
    wire [7:0] element_extension13_q;
    wire [7:0] element_extension15_q;
    wire [7:0] element_extension18_q;
    wire [7:0] element_extension20_q;
    wire [7:0] element_extension22_q;
    wire [7:0] element_extension25_q;
    wire [7:0] element_extension27_q;
    wire [7:0] element_extension3_q;
    wire [63:0] element_extension30_q;
    wire [7:0] element_extension34_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension7_q;
    wire [703:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_almost_full_bitsignaltemp;
    wire [703:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect41_b;
    wire [0:0] ip_dsdk_adapt_bitselect43_b;
    wire [0:0] ip_dsdk_adapt_bitselect45_b;
    wire [31:0] ip_dsdk_adapt_bitselect47_b;
    wire [63:0] ip_dsdk_adapt_bitselect49_b;
    wire [0:0] ip_dsdk_adapt_bitselect51_b;
    wire [63:0] ip_dsdk_adapt_bitselect53_b;
    wire [0:0] ip_dsdk_adapt_bitselect55_b;
    wire [0:0] ip_dsdk_adapt_bitselect57_b;
    wire [31:0] ip_dsdk_adapt_bitselect59_b;
    wire [0:0] ip_dsdk_adapt_bitselect61_b;
    wire [0:0] ip_dsdk_adapt_bitselect63_b;
    wire [0:0] ip_dsdk_adapt_bitselect65_b;
    wire [31:0] ip_dsdk_adapt_bitselect67_b;
    wire [0:0] ip_dsdk_adapt_bitselect69_b;
    wire [0:0] ip_dsdk_adapt_bitselect71_b;
    wire [32:0] ip_dsdk_adapt_bitselect73_b;
    wire [31:0] ip_dsdk_adapt_bitselect75_b;
    wire [31:0] ip_dsdk_adapt_bitselect77_b;
    wire [31:0] ip_dsdk_adapt_bitselect79_b;
    wire [0:0] ip_dsdk_adapt_bitselect81_b;
    wire [31:0] ip_dsdk_adapt_bitselect83_b;


    // c_i32_039(CONSTANT,22)
    assign c_i32_039_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i24_036(CONSTANT,20)
    assign c_i24_036_q = $unsigned(24'b000000000000000000000000);

    // c_i7_011(CONSTANT,25)
    assign c_i7_011_q = $unsigned(7'b0000000);

    // element_extension34(BITJOIN,50)
    assign element_extension34_q = {c_i7_011_q, in_i_data_20_tpl};

    // c_i31_031(CONSTANT,21)
    assign c_i31_031_q = $unsigned(31'b0000000000000000000000000000000);

    // element_extension30(BITJOIN,49)
    assign element_extension30_q = {c_i31_031_q, in_i_data_16_tpl};

    // c_i48_029(CONSTANT,23)
    assign c_i48_029_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // element_extension27(BITJOIN,47)
    assign element_extension27_q = {c_i7_011_q, in_i_data_15_tpl};

    // element_extension25(BITJOIN,46)
    assign element_extension25_q = {c_i7_011_q, in_i_data_14_tpl};

    // element_extension22(BITJOIN,45)
    assign element_extension22_q = {c_i7_011_q, in_i_data_12_tpl};

    // element_extension20(BITJOIN,44)
    assign element_extension20_q = {c_i7_011_q, in_i_data_11_tpl};

    // element_extension18(BITJOIN,43)
    assign element_extension18_q = {c_i7_011_q, in_i_data_10_tpl};

    // c_i16_017(CONSTANT,19)
    assign c_i16_017_q = $unsigned(16'b0000000000000000);

    // element_extension15(BITJOIN,42)
    assign element_extension15_q = {c_i7_011_q, in_i_data_8_tpl};

    // element_extension13(BITJOIN,41)
    assign element_extension13_q = {c_i7_011_q, in_i_data_7_tpl};

    // c_i56_012(CONSTANT,24)
    assign c_i56_012_q = $unsigned(56'b00000000000000000000000000000000000000000000000000000000);

    // element_extension10(BITJOIN,40)
    assign element_extension10_q = {c_i7_011_q, in_i_data_5_tpl};

    // c_i8_024(CONSTANT,37)
    assign c_i8_024_q = $unsigned(8'b00000000);

    // element_extension7(BITJOIN,52)
    assign element_extension7_q = {c_i7_011_q, in_i_data_2_tpl};

    // element_extension5(BITJOIN,51)
    assign element_extension5_q = {c_i7_011_q, in_i_data_1_tpl};

    // element_extension3(BITJOIN,48)
    assign element_extension3_q = {c_i7_011_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,39)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i32_039_q, in_i_data_21_tpl, c_i24_036_q, element_extension34_q, in_i_data_19_tpl, in_i_data_18_tpl, in_i_data_17_tpl, element_extension30_q, c_i48_029_q, element_extension27_q, element_extension25_q, in_i_data_13_tpl, c_i8_024_q, element_extension22_q, element_extension20_q, element_extension18_q, in_i_data_9_tpl, c_i16_017_q, element_extension15_q, element_extension13_q, in_i_data_6_tpl, c_i56_012_q, element_extension10_q, in_i_data_4_tpl, in_i_data_3_tpl, c_i8_024_q, element_extension7_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10(EXTIFACE,53)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(704)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,86)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_stall;

    // ip_dsdk_adapt_bitselect83(BITSELECT,75)
    assign ip_dsdk_adapt_bitselect83_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_data[671:640];

    // ip_dsdk_adapt_bitselect81(BITSELECT,74)
    assign ip_dsdk_adapt_bitselect81_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_data[608:608];

    // adapt_scalar_trunc82(ROUND,14)
    assign adapt_scalar_trunc82_in = ip_dsdk_adapt_bitselect81_b;
    assign adapt_scalar_trunc82_q = adapt_scalar_trunc82_in[0:0];

    // ip_dsdk_adapt_bitselect79(BITSELECT,73)
    assign ip_dsdk_adapt_bitselect79_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_data[607:576];

    // ip_dsdk_adapt_bitselect77(BITSELECT,72)
    assign ip_dsdk_adapt_bitselect77_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_data[575:544];

    // ip_dsdk_adapt_bitselect75(BITSELECT,71)
    assign ip_dsdk_adapt_bitselect75_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_data[543:512];

    // ip_dsdk_adapt_bitselect73(BITSELECT,70)
    assign ip_dsdk_adapt_bitselect73_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_data[480:448];

    // adapt_scalar_trunc74(ROUND,13)
    assign adapt_scalar_trunc74_in = ip_dsdk_adapt_bitselect73_b;
    assign adapt_scalar_trunc74_q = adapt_scalar_trunc74_in[32:0];

    // ip_dsdk_adapt_bitselect71(BITSELECT,69)
    assign ip_dsdk_adapt_bitselect71_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_data[392:392];

    // adapt_scalar_trunc72(ROUND,12)
    assign adapt_scalar_trunc72_in = ip_dsdk_adapt_bitselect71_b;
    assign adapt_scalar_trunc72_q = adapt_scalar_trunc72_in[0:0];

    // ip_dsdk_adapt_bitselect69(BITSELECT,68)
    assign ip_dsdk_adapt_bitselect69_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_data[384:384];

    // adapt_scalar_trunc70(ROUND,11)
    assign adapt_scalar_trunc70_in = ip_dsdk_adapt_bitselect69_b;
    assign adapt_scalar_trunc70_q = adapt_scalar_trunc70_in[0:0];

    // ip_dsdk_adapt_bitselect67(BITSELECT,67)
    assign ip_dsdk_adapt_bitselect67_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_data[383:352];

    // ip_dsdk_adapt_bitselect65(BITSELECT,66)
    assign ip_dsdk_adapt_bitselect65_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_data[336:336];

    // adapt_scalar_trunc66(ROUND,10)
    assign adapt_scalar_trunc66_in = ip_dsdk_adapt_bitselect65_b;
    assign adapt_scalar_trunc66_q = adapt_scalar_trunc66_in[0:0];

    // ip_dsdk_adapt_bitselect63(BITSELECT,65)
    assign ip_dsdk_adapt_bitselect63_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_data[328:328];

    // adapt_scalar_trunc64(ROUND,9)
    assign adapt_scalar_trunc64_in = ip_dsdk_adapt_bitselect63_b;
    assign adapt_scalar_trunc64_q = adapt_scalar_trunc64_in[0:0];

    // ip_dsdk_adapt_bitselect61(BITSELECT,64)
    assign ip_dsdk_adapt_bitselect61_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_data[320:320];

    // adapt_scalar_trunc62(ROUND,8)
    assign adapt_scalar_trunc62_in = ip_dsdk_adapt_bitselect61_b;
    assign adapt_scalar_trunc62_q = adapt_scalar_trunc62_in[0:0];

    // ip_dsdk_adapt_bitselect59(BITSELECT,63)
    assign ip_dsdk_adapt_bitselect59_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_data[319:288];

    // ip_dsdk_adapt_bitselect57(BITSELECT,62)
    assign ip_dsdk_adapt_bitselect57_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_data[264:264];

    // adapt_scalar_trunc58(ROUND,7)
    assign adapt_scalar_trunc58_in = ip_dsdk_adapt_bitselect57_b;
    assign adapt_scalar_trunc58_q = adapt_scalar_trunc58_in[0:0];

    // ip_dsdk_adapt_bitselect55(BITSELECT,61)
    assign ip_dsdk_adapt_bitselect55_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_data[256:256];

    // adapt_scalar_trunc56(ROUND,6)
    assign adapt_scalar_trunc56_in = ip_dsdk_adapt_bitselect55_b;
    assign adapt_scalar_trunc56_q = adapt_scalar_trunc56_in[0:0];

    // ip_dsdk_adapt_bitselect53(BITSELECT,60)
    assign ip_dsdk_adapt_bitselect53_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_data[255:192];

    // ip_dsdk_adapt_bitselect51(BITSELECT,59)
    assign ip_dsdk_adapt_bitselect51_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_data[128:128];

    // adapt_scalar_trunc52(ROUND,5)
    assign adapt_scalar_trunc52_in = ip_dsdk_adapt_bitselect51_b;
    assign adapt_scalar_trunc52_q = adapt_scalar_trunc52_in[0:0];

    // ip_dsdk_adapt_bitselect49(BITSELECT,58)
    assign ip_dsdk_adapt_bitselect49_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_data[127:64];

    // ip_dsdk_adapt_bitselect47(BITSELECT,57)
    assign ip_dsdk_adapt_bitselect47_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_data[63:32];

    // ip_dsdk_adapt_bitselect45(BITSELECT,56)
    assign ip_dsdk_adapt_bitselect45_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_data[16:16];

    // adapt_scalar_trunc46(ROUND,4)
    assign adapt_scalar_trunc46_in = ip_dsdk_adapt_bitselect45_b;
    assign adapt_scalar_trunc46_q = adapt_scalar_trunc46_in[0:0];

    // ip_dsdk_adapt_bitselect43(BITSELECT,55)
    assign ip_dsdk_adapt_bitselect43_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_data[8:8];

    // adapt_scalar_trunc44(ROUND,3)
    assign adapt_scalar_trunc44_in = ip_dsdk_adapt_bitselect43_b;
    assign adapt_scalar_trunc44_q = adapt_scalar_trunc44_in[0:0];

    // ip_dsdk_adapt_bitselect41(BITSELECT,54)
    assign ip_dsdk_adapt_bitselect41_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_data[0:0];

    // adapt_scalar_trunc42(ROUND,2)
    assign adapt_scalar_trunc42_in = ip_dsdk_adapt_bitselect41_b;
    assign adapt_scalar_trunc42_q = adapt_scalar_trunc42_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,88)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc42_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc44_q;
    assign out_o_data_2_tpl = adapt_scalar_trunc46_q;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect47_b;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect49_b;
    assign out_o_data_5_tpl = adapt_scalar_trunc52_q;
    assign out_o_data_6_tpl = ip_dsdk_adapt_bitselect53_b;
    assign out_o_data_7_tpl = adapt_scalar_trunc56_q;
    assign out_o_data_8_tpl = adapt_scalar_trunc58_q;
    assign out_o_data_9_tpl = ip_dsdk_adapt_bitselect59_b;
    assign out_o_data_10_tpl = adapt_scalar_trunc62_q;
    assign out_o_data_11_tpl = adapt_scalar_trunc64_q;
    assign out_o_data_12_tpl = adapt_scalar_trunc66_q;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect67_b;
    assign out_o_data_14_tpl = adapt_scalar_trunc70_q;
    assign out_o_data_15_tpl = adapt_scalar_trunc72_q;
    assign out_o_data_16_tpl = adapt_scalar_trunc74_q;
    assign out_o_data_17_tpl = ip_dsdk_adapt_bitselect75_b;
    assign out_o_data_18_tpl = ip_dsdk_adapt_bitselect77_b;
    assign out_o_data_19_tpl = ip_dsdk_adapt_bitselect79_b;
    assign out_o_data_20_tpl = adapt_scalar_trunc82_q;
    assign out_o_data_21_tpl = ip_dsdk_adapt_bitselect83_b;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_conv2d1x1s_c0_exit141_conv2d1x10_o_valid;

endmodule
