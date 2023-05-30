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

// SystemVerilog created from conv2d3x3_i_llvm_fpga_sfc_exit_s_c0_out_0002conv2d3x31_data_fifo
// SystemVerilog created on Tue May 30 12:33:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_i_llvm_fpga_sfc_exit_s_c0_out_0002conv2d3x31_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [31:0] in_i_data_1_tpl,
    input wire [31:0] in_i_data_2_tpl,
    input wire [0:0] in_i_data_3_tpl,
    input wire [0:0] in_i_data_4_tpl,
    input wire [31:0] in_i_data_5_tpl,
    input wire [0:0] in_i_data_6_tpl,
    input wire [0:0] in_i_data_7_tpl,
    input wire [31:0] in_i_data_8_tpl,
    input wire [0:0] in_i_data_9_tpl,
    input wire [0:0] in_i_data_10_tpl,
    input wire [0:0] in_i_data_11_tpl,
    input wire [0:0] in_i_data_12_tpl,
    input wire [63:0] in_i_data_13_tpl,
    input wire [63:0] in_i_data_14_tpl,
    input wire [31:0] in_i_data_15_tpl,
    input wire [0:0] in_i_data_16_tpl,
    input wire [63:0] in_i_data_17_tpl,
    input wire [63:0] in_i_data_18_tpl,
    input wire [31:0] in_i_data_19_tpl,
    input wire [0:0] in_i_data_20_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [31:0] out_o_data_1_tpl,
    output wire [31:0] out_o_data_2_tpl,
    output wire [0:0] out_o_data_3_tpl,
    output wire [0:0] out_o_data_4_tpl,
    output wire [31:0] out_o_data_5_tpl,
    output wire [0:0] out_o_data_6_tpl,
    output wire [0:0] out_o_data_7_tpl,
    output wire [31:0] out_o_data_8_tpl,
    output wire [0:0] out_o_data_9_tpl,
    output wire [0:0] out_o_data_10_tpl,
    output wire [0:0] out_o_data_11_tpl,
    output wire [0:0] out_o_data_12_tpl,
    output wire [63:0] out_o_data_13_tpl,
    output wire [63:0] out_o_data_14_tpl,
    output wire [31:0] out_o_data_15_tpl,
    output wire [0:0] out_o_data_16_tpl,
    output wire [63:0] out_o_data_17_tpl,
    output wire [63:0] out_o_data_18_tpl,
    output wire [31:0] out_o_data_19_tpl,
    output wire [0:0] out_o_data_20_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc36_in;
    wire [0:0] adapt_scalar_trunc36_q;
    wire [0:0] adapt_scalar_trunc42_in;
    wire [0:0] adapt_scalar_trunc42_q;
    wire [0:0] adapt_scalar_trunc44_in;
    wire [0:0] adapt_scalar_trunc44_q;
    wire [0:0] adapt_scalar_trunc48_in;
    wire [0:0] adapt_scalar_trunc48_q;
    wire [0:0] adapt_scalar_trunc50_in;
    wire [0:0] adapt_scalar_trunc50_q;
    wire [0:0] adapt_scalar_trunc54_in;
    wire [0:0] adapt_scalar_trunc54_q;
    wire [0:0] adapt_scalar_trunc56_in;
    wire [0:0] adapt_scalar_trunc56_q;
    wire [0:0] adapt_scalar_trunc58_in;
    wire [0:0] adapt_scalar_trunc58_q;
    wire [0:0] adapt_scalar_trunc60_in;
    wire [0:0] adapt_scalar_trunc60_q;
    wire [0:0] adapt_scalar_trunc68_in;
    wire [0:0] adapt_scalar_trunc68_q;
    wire [0:0] adapt_scalar_trunc76_in;
    wire [0:0] adapt_scalar_trunc76_q;
    wire [15:0] c_i16_010_q;
    wire [23:0] c_i24_028_q;
    wire [6:0] c_i7_012_q;
    wire [639:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension13_q;
    wire [7:0] element_extension16_q;
    wire [7:0] element_extension18_q;
    wire [7:0] element_extension20_q;
    wire [7:0] element_extension22_q;
    wire [7:0] element_extension26_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension31_q;
    wire [7:0] element_extension6_q;
    wire [7:0] element_extension8_q;
    wire [639:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_almost_full_bitsignaltemp;
    wire [639:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect35_b;
    wire [31:0] ip_dsdk_adapt_bitselect37_b;
    wire [31:0] ip_dsdk_adapt_bitselect39_b;
    wire [0:0] ip_dsdk_adapt_bitselect41_b;
    wire [0:0] ip_dsdk_adapt_bitselect43_b;
    wire [31:0] ip_dsdk_adapt_bitselect45_b;
    wire [0:0] ip_dsdk_adapt_bitselect47_b;
    wire [0:0] ip_dsdk_adapt_bitselect49_b;
    wire [31:0] ip_dsdk_adapt_bitselect51_b;
    wire [0:0] ip_dsdk_adapt_bitselect53_b;
    wire [0:0] ip_dsdk_adapt_bitselect55_b;
    wire [0:0] ip_dsdk_adapt_bitselect57_b;
    wire [0:0] ip_dsdk_adapt_bitselect59_b;
    wire [63:0] ip_dsdk_adapt_bitselect61_b;
    wire [63:0] ip_dsdk_adapt_bitselect63_b;
    wire [31:0] ip_dsdk_adapt_bitselect65_b;
    wire [0:0] ip_dsdk_adapt_bitselect67_b;
    wire [63:0] ip_dsdk_adapt_bitselect69_b;
    wire [63:0] ip_dsdk_adapt_bitselect71_b;
    wire [31:0] ip_dsdk_adapt_bitselect73_b;
    wire [0:0] ip_dsdk_adapt_bitselect75_b;


    // c_i7_012(CONSTANT,22)
    assign c_i7_012_q = $unsigned(7'b0000000);

    // element_extension31(BITJOIN,42)
    assign element_extension31_q = {c_i7_012_q, in_i_data_20_tpl};

    // element_extension26(BITJOIN,40)
    assign element_extension26_q = {c_i7_012_q, in_i_data_16_tpl};

    // element_extension22(BITJOIN,39)
    assign element_extension22_q = {c_i7_012_q, in_i_data_12_tpl};

    // element_extension20(BITJOIN,38)
    assign element_extension20_q = {c_i7_012_q, in_i_data_11_tpl};

    // element_extension18(BITJOIN,37)
    assign element_extension18_q = {c_i7_012_q, in_i_data_10_tpl};

    // element_extension16(BITJOIN,36)
    assign element_extension16_q = {c_i7_012_q, in_i_data_9_tpl};

    // element_extension13(BITJOIN,35)
    assign element_extension13_q = {c_i7_012_q, in_i_data_7_tpl};

    // element_extension11(BITJOIN,34)
    assign element_extension11_q = {c_i7_012_q, in_i_data_6_tpl};

    // c_i16_010(CONSTANT,17)
    assign c_i16_010_q = $unsigned(16'b0000000000000000);

    // element_extension8(BITJOIN,44)
    assign element_extension8_q = {c_i7_012_q, in_i_data_4_tpl};

    // element_extension6(BITJOIN,43)
    assign element_extension6_q = {c_i7_012_q, in_i_data_3_tpl};

    // c_i24_028(CONSTANT,19)
    assign c_i24_028_q = $unsigned(24'b000000000000000000000000);

    // element_extension3(BITJOIN,41)
    assign element_extension3_q = {c_i7_012_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,33)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i24_028_q, element_extension31_q, in_i_data_19_tpl, in_i_data_18_tpl, in_i_data_17_tpl, c_i24_028_q, element_extension26_q, in_i_data_15_tpl, in_i_data_14_tpl, in_i_data_13_tpl, element_extension22_q, element_extension20_q, element_extension18_q, element_extension16_q, in_i_data_8_tpl, c_i16_010_q, element_extension13_q, element_extension11_q, in_i_data_5_tpl, c_i16_010_q, element_extension8_q, element_extension6_q, in_i_data_2_tpl, in_i_data_1_tpl, c_i24_028_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30(EXTIFACE,45)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(640)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,78)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_stall;

    // ip_dsdk_adapt_bitselect75(BITSELECT,66)
    assign ip_dsdk_adapt_bitselect75_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_data[608:608];

    // adapt_scalar_trunc76(ROUND,12)
    assign adapt_scalar_trunc76_in = ip_dsdk_adapt_bitselect75_b;
    assign adapt_scalar_trunc76_q = adapt_scalar_trunc76_in[0:0];

    // ip_dsdk_adapt_bitselect73(BITSELECT,65)
    assign ip_dsdk_adapt_bitselect73_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_data[607:576];

    // ip_dsdk_adapt_bitselect71(BITSELECT,64)
    assign ip_dsdk_adapt_bitselect71_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_data[575:512];

    // ip_dsdk_adapt_bitselect69(BITSELECT,63)
    assign ip_dsdk_adapt_bitselect69_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_data[511:448];

    // ip_dsdk_adapt_bitselect67(BITSELECT,62)
    assign ip_dsdk_adapt_bitselect67_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_data[416:416];

    // adapt_scalar_trunc68(ROUND,11)
    assign adapt_scalar_trunc68_in = ip_dsdk_adapt_bitselect67_b;
    assign adapt_scalar_trunc68_q = adapt_scalar_trunc68_in[0:0];

    // ip_dsdk_adapt_bitselect65(BITSELECT,61)
    assign ip_dsdk_adapt_bitselect65_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_data[415:384];

    // ip_dsdk_adapt_bitselect63(BITSELECT,60)
    assign ip_dsdk_adapt_bitselect63_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_data[383:320];

    // ip_dsdk_adapt_bitselect61(BITSELECT,59)
    assign ip_dsdk_adapt_bitselect61_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_data[319:256];

    // ip_dsdk_adapt_bitselect59(BITSELECT,58)
    assign ip_dsdk_adapt_bitselect59_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_data[248:248];

    // adapt_scalar_trunc60(ROUND,10)
    assign adapt_scalar_trunc60_in = ip_dsdk_adapt_bitselect59_b;
    assign adapt_scalar_trunc60_q = adapt_scalar_trunc60_in[0:0];

    // ip_dsdk_adapt_bitselect57(BITSELECT,57)
    assign ip_dsdk_adapt_bitselect57_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_data[240:240];

    // adapt_scalar_trunc58(ROUND,9)
    assign adapt_scalar_trunc58_in = ip_dsdk_adapt_bitselect57_b;
    assign adapt_scalar_trunc58_q = adapt_scalar_trunc58_in[0:0];

    // ip_dsdk_adapt_bitselect55(BITSELECT,56)
    assign ip_dsdk_adapt_bitselect55_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_data[232:232];

    // adapt_scalar_trunc56(ROUND,8)
    assign adapt_scalar_trunc56_in = ip_dsdk_adapt_bitselect55_b;
    assign adapt_scalar_trunc56_q = adapt_scalar_trunc56_in[0:0];

    // ip_dsdk_adapt_bitselect53(BITSELECT,55)
    assign ip_dsdk_adapt_bitselect53_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_data[224:224];

    // adapt_scalar_trunc54(ROUND,7)
    assign adapt_scalar_trunc54_in = ip_dsdk_adapt_bitselect53_b;
    assign adapt_scalar_trunc54_q = adapt_scalar_trunc54_in[0:0];

    // ip_dsdk_adapt_bitselect51(BITSELECT,54)
    assign ip_dsdk_adapt_bitselect51_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_data[223:192];

    // ip_dsdk_adapt_bitselect49(BITSELECT,53)
    assign ip_dsdk_adapt_bitselect49_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_data[168:168];

    // adapt_scalar_trunc50(ROUND,6)
    assign adapt_scalar_trunc50_in = ip_dsdk_adapt_bitselect49_b;
    assign adapt_scalar_trunc50_q = adapt_scalar_trunc50_in[0:0];

    // ip_dsdk_adapt_bitselect47(BITSELECT,52)
    assign ip_dsdk_adapt_bitselect47_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_data[160:160];

    // adapt_scalar_trunc48(ROUND,5)
    assign adapt_scalar_trunc48_in = ip_dsdk_adapt_bitselect47_b;
    assign adapt_scalar_trunc48_q = adapt_scalar_trunc48_in[0:0];

    // ip_dsdk_adapt_bitselect45(BITSELECT,51)
    assign ip_dsdk_adapt_bitselect45_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_data[159:128];

    // ip_dsdk_adapt_bitselect43(BITSELECT,50)
    assign ip_dsdk_adapt_bitselect43_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_data[104:104];

    // adapt_scalar_trunc44(ROUND,4)
    assign adapt_scalar_trunc44_in = ip_dsdk_adapt_bitselect43_b;
    assign adapt_scalar_trunc44_q = adapt_scalar_trunc44_in[0:0];

    // ip_dsdk_adapt_bitselect41(BITSELECT,49)
    assign ip_dsdk_adapt_bitselect41_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_data[96:96];

    // adapt_scalar_trunc42(ROUND,3)
    assign adapt_scalar_trunc42_in = ip_dsdk_adapt_bitselect41_b;
    assign adapt_scalar_trunc42_q = adapt_scalar_trunc42_in[0:0];

    // ip_dsdk_adapt_bitselect39(BITSELECT,48)
    assign ip_dsdk_adapt_bitselect39_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_data[95:64];

    // ip_dsdk_adapt_bitselect37(BITSELECT,47)
    assign ip_dsdk_adapt_bitselect37_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_data[63:32];

    // ip_dsdk_adapt_bitselect35(BITSELECT,46)
    assign ip_dsdk_adapt_bitselect35_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_data[0:0];

    // adapt_scalar_trunc36(ROUND,2)
    assign adapt_scalar_trunc36_in = ip_dsdk_adapt_bitselect35_b;
    assign adapt_scalar_trunc36_q = adapt_scalar_trunc36_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,80)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc36_q;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect37_b;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect39_b;
    assign out_o_data_3_tpl = adapt_scalar_trunc42_q;
    assign out_o_data_4_tpl = adapt_scalar_trunc44_q;
    assign out_o_data_5_tpl = ip_dsdk_adapt_bitselect45_b;
    assign out_o_data_6_tpl = adapt_scalar_trunc48_q;
    assign out_o_data_7_tpl = adapt_scalar_trunc50_q;
    assign out_o_data_8_tpl = ip_dsdk_adapt_bitselect51_b;
    assign out_o_data_9_tpl = adapt_scalar_trunc54_q;
    assign out_o_data_10_tpl = adapt_scalar_trunc56_q;
    assign out_o_data_11_tpl = adapt_scalar_trunc58_q;
    assign out_o_data_12_tpl = adapt_scalar_trunc60_q;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect61_b;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect63_b;
    assign out_o_data_15_tpl = ip_dsdk_adapt_bitselect65_b;
    assign out_o_data_16_tpl = adapt_scalar_trunc68_q;
    assign out_o_data_17_tpl = ip_dsdk_adapt_bitselect69_b;
    assign out_o_data_18_tpl = ip_dsdk_adapt_bitselect71_b;
    assign out_o_data_19_tpl = ip_dsdk_adapt_bitselect73_b;
    assign out_o_data_20_tpl = adapt_scalar_trunc76_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_lr_ph_conv2d3x3s_c0_exit557_conv2d3x30_o_valid;

endmodule
