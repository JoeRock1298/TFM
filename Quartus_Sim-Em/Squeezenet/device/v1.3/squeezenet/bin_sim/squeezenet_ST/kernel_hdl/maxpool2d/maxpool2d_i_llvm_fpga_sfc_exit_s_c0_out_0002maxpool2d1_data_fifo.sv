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

// SystemVerilog created from maxpool2d_i_llvm_fpga_sfc_exit_s_c0_out_0002maxpool2d1_data_fifo
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_i_llvm_fpga_sfc_exit_s_c0_out_0002maxpool2d1_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [0:0] in_i_data_2_tpl,
    input wire [31:0] in_i_data_3_tpl,
    input wire [63:0] in_i_data_4_tpl,
    input wire [63:0] in_i_data_5_tpl,
    input wire [0:0] in_i_data_6_tpl,
    input wire [31:0] in_i_data_7_tpl,
    input wire [31:0] in_i_data_8_tpl,
    input wire [0:0] in_i_data_9_tpl,
    input wire [63:0] in_i_data_10_tpl,
    input wire [63:0] in_i_data_11_tpl,
    input wire [0:0] in_i_data_12_tpl,
    input wire [31:0] in_i_data_13_tpl,
    input wire [31:0] in_i_data_14_tpl,
    input wire [0:0] in_i_data_15_tpl,
    input wire [63:0] in_i_data_16_tpl,
    input wire [63:0] in_i_data_17_tpl,
    input wire [0:0] in_i_data_18_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [0:0] out_o_data_2_tpl,
    output wire [31:0] out_o_data_3_tpl,
    output wire [63:0] out_o_data_4_tpl,
    output wire [63:0] out_o_data_5_tpl,
    output wire [0:0] out_o_data_6_tpl,
    output wire [31:0] out_o_data_7_tpl,
    output wire [31:0] out_o_data_8_tpl,
    output wire [0:0] out_o_data_9_tpl,
    output wire [63:0] out_o_data_10_tpl,
    output wire [63:0] out_o_data_11_tpl,
    output wire [0:0] out_o_data_12_tpl,
    output wire [31:0] out_o_data_13_tpl,
    output wire [31:0] out_o_data_14_tpl,
    output wire [0:0] out_o_data_15_tpl,
    output wire [63:0] out_o_data_16_tpl,
    output wire [63:0] out_o_data_17_tpl,
    output wire [0:0] out_o_data_18_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc27_in;
    wire [0:0] adapt_scalar_trunc27_q;
    wire [0:0] adapt_scalar_trunc29_in;
    wire [0:0] adapt_scalar_trunc29_q;
    wire [0:0] adapt_scalar_trunc31_in;
    wire [0:0] adapt_scalar_trunc31_q;
    wire [0:0] adapt_scalar_trunc39_in;
    wire [0:0] adapt_scalar_trunc39_q;
    wire [0:0] adapt_scalar_trunc45_in;
    wire [0:0] adapt_scalar_trunc45_q;
    wire [0:0] adapt_scalar_trunc51_in;
    wire [0:0] adapt_scalar_trunc51_q;
    wire [0:0] adapt_scalar_trunc57_in;
    wire [0:0] adapt_scalar_trunc57_q;
    wire [0:0] adapt_scalar_trunc63_in;
    wire [0:0] adapt_scalar_trunc63_q;
    wire [23:0] c_i24_012_q;
    wire [55:0] c_i56_024_q;
    wire [6:0] c_i7_011_q;
    wire [7:0] c_i8_09_q;
    wire [767:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension10_q;
    wire [7:0] element_extension13_q;
    wire [7:0] element_extension16_q;
    wire [7:0] element_extension19_q;
    wire [7:0] element_extension22_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension7_q;
    wire [767:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_almost_full_bitsignaltemp;
    wire [767:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect26_b;
    wire [0:0] ip_dsdk_adapt_bitselect28_b;
    wire [0:0] ip_dsdk_adapt_bitselect30_b;
    wire [31:0] ip_dsdk_adapt_bitselect32_b;
    wire [63:0] ip_dsdk_adapt_bitselect34_b;
    wire [63:0] ip_dsdk_adapt_bitselect36_b;
    wire [0:0] ip_dsdk_adapt_bitselect38_b;
    wire [31:0] ip_dsdk_adapt_bitselect40_b;
    wire [31:0] ip_dsdk_adapt_bitselect42_b;
    wire [0:0] ip_dsdk_adapt_bitselect44_b;
    wire [63:0] ip_dsdk_adapt_bitselect46_b;
    wire [63:0] ip_dsdk_adapt_bitselect48_b;
    wire [0:0] ip_dsdk_adapt_bitselect50_b;
    wire [31:0] ip_dsdk_adapt_bitselect52_b;
    wire [31:0] ip_dsdk_adapt_bitselect54_b;
    wire [0:0] ip_dsdk_adapt_bitselect56_b;
    wire [63:0] ip_dsdk_adapt_bitselect58_b;
    wire [63:0] ip_dsdk_adapt_bitselect60_b;
    wire [0:0] ip_dsdk_adapt_bitselect62_b;


    // c_i56_024(CONSTANT,14)
    assign c_i56_024_q = $unsigned(56'b00000000000000000000000000000000000000000000000000000000);

    // c_i7_011(CONSTANT,15)
    assign c_i7_011_q = $unsigned(7'b0000000);

    // element_extension22(BITJOIN,29)
    assign element_extension22_q = {c_i7_011_q, in_i_data_18_tpl};

    // element_extension19(BITJOIN,28)
    assign element_extension19_q = {c_i7_011_q, in_i_data_15_tpl};

    // element_extension16(BITJOIN,27)
    assign element_extension16_q = {c_i7_011_q, in_i_data_12_tpl};

    // element_extension13(BITJOIN,26)
    assign element_extension13_q = {c_i7_011_q, in_i_data_9_tpl};

    // c_i24_012(CONSTANT,10)
    assign c_i24_012_q = $unsigned(24'b000000000000000000000000);

    // element_extension10(BITJOIN,25)
    assign element_extension10_q = {c_i7_011_q, in_i_data_6_tpl};

    // c_i8_09(CONSTANT,23)
    assign c_i8_09_q = $unsigned(8'b00000000);

    // element_extension7(BITJOIN,32)
    assign element_extension7_q = {c_i7_011_q, in_i_data_2_tpl};

    // element_extension5(BITJOIN,31)
    assign element_extension5_q = {c_i7_011_q, in_i_data_1_tpl};

    // element_extension3(BITJOIN,30)
    assign element_extension3_q = {c_i7_011_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,24)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i56_024_q, element_extension22_q, in_i_data_17_tpl, in_i_data_16_tpl, c_i24_012_q, element_extension19_q, in_i_data_14_tpl, in_i_data_13_tpl, c_i24_012_q, element_extension16_q, in_i_data_11_tpl, in_i_data_10_tpl, c_i24_012_q, element_extension13_q, in_i_data_8_tpl, in_i_data_7_tpl, c_i24_012_q, element_extension10_q, in_i_data_5_tpl, in_i_data_4_tpl, in_i_data_3_tpl, c_i8_09_q, element_extension7_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0(EXTIFACE,33)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(768)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,65)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_stall;

    // ip_dsdk_adapt_bitselect62(BITSELECT,52)
    assign ip_dsdk_adapt_bitselect62_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_data[704:704];

    // adapt_scalar_trunc63(ROUND,9)
    assign adapt_scalar_trunc63_in = ip_dsdk_adapt_bitselect62_b;
    assign adapt_scalar_trunc63_q = adapt_scalar_trunc63_in[0:0];

    // ip_dsdk_adapt_bitselect60(BITSELECT,51)
    assign ip_dsdk_adapt_bitselect60_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_data[703:640];

    // ip_dsdk_adapt_bitselect58(BITSELECT,50)
    assign ip_dsdk_adapt_bitselect58_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_data[639:576];

    // ip_dsdk_adapt_bitselect56(BITSELECT,49)
    assign ip_dsdk_adapt_bitselect56_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_data[544:544];

    // adapt_scalar_trunc57(ROUND,8)
    assign adapt_scalar_trunc57_in = ip_dsdk_adapt_bitselect56_b;
    assign adapt_scalar_trunc57_q = adapt_scalar_trunc57_in[0:0];

    // ip_dsdk_adapt_bitselect54(BITSELECT,48)
    assign ip_dsdk_adapt_bitselect54_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_data[543:512];

    // ip_dsdk_adapt_bitselect52(BITSELECT,47)
    assign ip_dsdk_adapt_bitselect52_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_data[511:480];

    // ip_dsdk_adapt_bitselect50(BITSELECT,46)
    assign ip_dsdk_adapt_bitselect50_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_data[448:448];

    // adapt_scalar_trunc51(ROUND,7)
    assign adapt_scalar_trunc51_in = ip_dsdk_adapt_bitselect50_b;
    assign adapt_scalar_trunc51_q = adapt_scalar_trunc51_in[0:0];

    // ip_dsdk_adapt_bitselect48(BITSELECT,45)
    assign ip_dsdk_adapt_bitselect48_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_data[447:384];

    // ip_dsdk_adapt_bitselect46(BITSELECT,44)
    assign ip_dsdk_adapt_bitselect46_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_data[383:320];

    // ip_dsdk_adapt_bitselect44(BITSELECT,43)
    assign ip_dsdk_adapt_bitselect44_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_data[288:288];

    // adapt_scalar_trunc45(ROUND,6)
    assign adapt_scalar_trunc45_in = ip_dsdk_adapt_bitselect44_b;
    assign adapt_scalar_trunc45_q = adapt_scalar_trunc45_in[0:0];

    // ip_dsdk_adapt_bitselect42(BITSELECT,42)
    assign ip_dsdk_adapt_bitselect42_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_data[287:256];

    // ip_dsdk_adapt_bitselect40(BITSELECT,41)
    assign ip_dsdk_adapt_bitselect40_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_data[255:224];

    // ip_dsdk_adapt_bitselect38(BITSELECT,40)
    assign ip_dsdk_adapt_bitselect38_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_data[192:192];

    // adapt_scalar_trunc39(ROUND,5)
    assign adapt_scalar_trunc39_in = ip_dsdk_adapt_bitselect38_b;
    assign adapt_scalar_trunc39_q = adapt_scalar_trunc39_in[0:0];

    // ip_dsdk_adapt_bitselect36(BITSELECT,39)
    assign ip_dsdk_adapt_bitselect36_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_data[191:128];

    // ip_dsdk_adapt_bitselect34(BITSELECT,38)
    assign ip_dsdk_adapt_bitselect34_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_data[127:64];

    // ip_dsdk_adapt_bitselect32(BITSELECT,37)
    assign ip_dsdk_adapt_bitselect32_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_data[63:32];

    // ip_dsdk_adapt_bitselect30(BITSELECT,36)
    assign ip_dsdk_adapt_bitselect30_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_data[16:16];

    // adapt_scalar_trunc31(ROUND,4)
    assign adapt_scalar_trunc31_in = ip_dsdk_adapt_bitselect30_b;
    assign adapt_scalar_trunc31_q = adapt_scalar_trunc31_in[0:0];

    // ip_dsdk_adapt_bitselect28(BITSELECT,35)
    assign ip_dsdk_adapt_bitselect28_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_data[8:8];

    // adapt_scalar_trunc29(ROUND,3)
    assign adapt_scalar_trunc29_in = ip_dsdk_adapt_bitselect28_b;
    assign adapt_scalar_trunc29_q = adapt_scalar_trunc29_in[0:0];

    // ip_dsdk_adapt_bitselect26(BITSELECT,34)
    assign ip_dsdk_adapt_bitselect26_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_data[0:0];

    // adapt_scalar_trunc27(ROUND,2)
    assign adapt_scalar_trunc27_in = ip_dsdk_adapt_bitselect26_b;
    assign adapt_scalar_trunc27_q = adapt_scalar_trunc27_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,67)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc27_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc29_q;
    assign out_o_data_2_tpl = adapt_scalar_trunc31_q;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect32_b;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect34_b;
    assign out_o_data_5_tpl = ip_dsdk_adapt_bitselect36_b;
    assign out_o_data_6_tpl = adapt_scalar_trunc39_q;
    assign out_o_data_7_tpl = ip_dsdk_adapt_bitselect40_b;
    assign out_o_data_8_tpl = ip_dsdk_adapt_bitselect42_b;
    assign out_o_data_9_tpl = adapt_scalar_trunc45_q;
    assign out_o_data_10_tpl = ip_dsdk_adapt_bitselect46_b;
    assign out_o_data_11_tpl = ip_dsdk_adapt_bitselect48_b;
    assign out_o_data_12_tpl = adapt_scalar_trunc51_q;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect52_b;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect54_b;
    assign out_o_data_15_tpl = adapt_scalar_trunc57_q;
    assign out_o_data_16_tpl = ip_dsdk_adapt_bitselect58_b;
    assign out_o_data_17_tpl = ip_dsdk_adapt_bitselect60_b;
    assign out_o_data_18_tpl = adapt_scalar_trunc63_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_maxpool2ds_c0_exit195_maxpool2d0_o_valid;

endmodule
