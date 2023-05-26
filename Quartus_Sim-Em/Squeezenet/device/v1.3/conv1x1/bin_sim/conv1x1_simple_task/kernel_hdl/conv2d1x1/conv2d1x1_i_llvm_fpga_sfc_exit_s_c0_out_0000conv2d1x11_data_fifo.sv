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

// SystemVerilog created from conv2d1x1_i_llvm_fpga_sfc_exit_s_c0_out_0000conv2d1x11_data_fifo
// SystemVerilog created on Wed May 17 13:49:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_llvm_fpga_sfc_exit_s_c0_out_0000conv2d1x11_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [63:0] in_i_data_1_tpl,
    input wire [63:0] in_i_data_2_tpl,
    input wire [0:0] in_i_data_3_tpl,
    input wire [31:0] in_i_data_4_tpl,
    input wire [0:0] in_i_data_5_tpl,
    input wire [0:0] in_i_data_6_tpl,
    input wire [32:0] in_i_data_7_tpl,
    input wire [63:0] in_i_data_8_tpl,
    input wire [0:0] in_i_data_9_tpl,
    input wire [0:0] in_i_data_10_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [63:0] out_o_data_1_tpl,
    output wire [63:0] out_o_data_2_tpl,
    output wire [0:0] out_o_data_3_tpl,
    output wire [31:0] out_o_data_4_tpl,
    output wire [0:0] out_o_data_5_tpl,
    output wire [0:0] out_o_data_6_tpl,
    output wire [32:0] out_o_data_7_tpl,
    output wire [63:0] out_o_data_8_tpl,
    output wire [0:0] out_o_data_9_tpl,
    output wire [0:0] out_o_data_10_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc23_in;
    wire [0:0] adapt_scalar_trunc23_q;
    wire [0:0] adapt_scalar_trunc29_in;
    wire [0:0] adapt_scalar_trunc29_q;
    wire [0:0] adapt_scalar_trunc33_in;
    wire [0:0] adapt_scalar_trunc33_q;
    wire [0:0] adapt_scalar_trunc35_in;
    wire [0:0] adapt_scalar_trunc35_q;
    wire [32:0] adapt_scalar_trunc37_in;
    wire [32:0] adapt_scalar_trunc37_q;
    wire [0:0] adapt_scalar_trunc41_in;
    wire [0:0] adapt_scalar_trunc41_q;
    wire [0:0] adapt_scalar_trunc43_in;
    wire [0:0] adapt_scalar_trunc43_q;
    wire [23:0] c_i24_08_q;
    wire [30:0] c_i31_015_q;
    wire [47:0] c_i48_013_q;
    wire [55:0] c_i56_05_q;
    wire [6:0] c_i7_010_q;
    wire [511:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension11_q;
    wire [63:0] element_extension14_q;
    wire [7:0] element_extension16_q;
    wire [7:0] element_extension18_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension6_q;
    wire [7:0] element_extension9_q;
    wire [511:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_almost_full_bitsignaltemp;
    wire [511:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect22_b;
    wire [63:0] ip_dsdk_adapt_bitselect24_b;
    wire [63:0] ip_dsdk_adapt_bitselect26_b;
    wire [0:0] ip_dsdk_adapt_bitselect28_b;
    wire [31:0] ip_dsdk_adapt_bitselect30_b;
    wire [0:0] ip_dsdk_adapt_bitselect32_b;
    wire [0:0] ip_dsdk_adapt_bitselect34_b;
    wire [32:0] ip_dsdk_adapt_bitselect36_b;
    wire [63:0] ip_dsdk_adapt_bitselect38_b;
    wire [0:0] ip_dsdk_adapt_bitselect40_b;
    wire [0:0] ip_dsdk_adapt_bitselect42_b;


    // c_i7_010(CONSTANT,14)
    assign c_i7_010_q = $unsigned(7'b0000000);

    // element_extension18(BITJOIN,24)
    assign element_extension18_q = {c_i7_010_q, in_i_data_10_tpl};

    // element_extension16(BITJOIN,23)
    assign element_extension16_q = {c_i7_010_q, in_i_data_9_tpl};

    // c_i31_015(CONSTANT,10)
    assign c_i31_015_q = $unsigned(31'b0000000000000000000000000000000);

    // element_extension14(BITJOIN,22)
    assign element_extension14_q = {c_i31_015_q, in_i_data_7_tpl};

    // c_i48_013(CONSTANT,11)
    assign c_i48_013_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // element_extension11(BITJOIN,21)
    assign element_extension11_q = {c_i7_010_q, in_i_data_6_tpl};

    // element_extension9(BITJOIN,27)
    assign element_extension9_q = {c_i7_010_q, in_i_data_5_tpl};

    // c_i24_08(CONSTANT,9)
    assign c_i24_08_q = $unsigned(24'b000000000000000000000000);

    // element_extension6(BITJOIN,26)
    assign element_extension6_q = {c_i7_010_q, in_i_data_3_tpl};

    // c_i56_05(CONSTANT,13)
    assign c_i56_05_q = $unsigned(56'b00000000000000000000000000000000000000000000000000000000);

    // element_extension3(BITJOIN,25)
    assign element_extension3_q = {c_i7_010_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,20)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i48_013_q, element_extension18_q, element_extension16_q, in_i_data_8_tpl, element_extension14_q, c_i48_013_q, element_extension11_q, element_extension9_q, in_i_data_4_tpl, c_i24_08_q, element_extension6_q, in_i_data_2_tpl, in_i_data_1_tpl, c_i56_05_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10(EXTIFACE,28)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(512)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,45)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_stall;

    // ip_dsdk_adapt_bitselect42(BITSELECT,39)
    assign ip_dsdk_adapt_bitselect42_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[456:456];

    // adapt_scalar_trunc43(ROUND,8)
    assign adapt_scalar_trunc43_in = ip_dsdk_adapt_bitselect42_b;
    assign adapt_scalar_trunc43_q = adapt_scalar_trunc43_in[0:0];

    // ip_dsdk_adapt_bitselect40(BITSELECT,38)
    assign ip_dsdk_adapt_bitselect40_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[448:448];

    // adapt_scalar_trunc41(ROUND,7)
    assign adapt_scalar_trunc41_in = ip_dsdk_adapt_bitselect40_b;
    assign adapt_scalar_trunc41_q = adapt_scalar_trunc41_in[0:0];

    // ip_dsdk_adapt_bitselect38(BITSELECT,37)
    assign ip_dsdk_adapt_bitselect38_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[447:384];

    // ip_dsdk_adapt_bitselect36(BITSELECT,36)
    assign ip_dsdk_adapt_bitselect36_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[352:320];

    // adapt_scalar_trunc37(ROUND,6)
    assign adapt_scalar_trunc37_in = ip_dsdk_adapt_bitselect36_b;
    assign adapt_scalar_trunc37_q = adapt_scalar_trunc37_in[32:0];

    // ip_dsdk_adapt_bitselect34(BITSELECT,35)
    assign ip_dsdk_adapt_bitselect34_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[264:264];

    // adapt_scalar_trunc35(ROUND,5)
    assign adapt_scalar_trunc35_in = ip_dsdk_adapt_bitselect34_b;
    assign adapt_scalar_trunc35_q = adapt_scalar_trunc35_in[0:0];

    // ip_dsdk_adapt_bitselect32(BITSELECT,34)
    assign ip_dsdk_adapt_bitselect32_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[256:256];

    // adapt_scalar_trunc33(ROUND,4)
    assign adapt_scalar_trunc33_in = ip_dsdk_adapt_bitselect32_b;
    assign adapt_scalar_trunc33_q = adapt_scalar_trunc33_in[0:0];

    // ip_dsdk_adapt_bitselect30(BITSELECT,33)
    assign ip_dsdk_adapt_bitselect30_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[255:224];

    // ip_dsdk_adapt_bitselect28(BITSELECT,32)
    assign ip_dsdk_adapt_bitselect28_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[192:192];

    // adapt_scalar_trunc29(ROUND,3)
    assign adapt_scalar_trunc29_in = ip_dsdk_adapt_bitselect28_b;
    assign adapt_scalar_trunc29_q = adapt_scalar_trunc29_in[0:0];

    // ip_dsdk_adapt_bitselect26(BITSELECT,31)
    assign ip_dsdk_adapt_bitselect26_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[191:128];

    // ip_dsdk_adapt_bitselect24(BITSELECT,30)
    assign ip_dsdk_adapt_bitselect24_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[127:64];

    // ip_dsdk_adapt_bitselect22(BITSELECT,29)
    assign ip_dsdk_adapt_bitselect22_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[0:0];

    // adapt_scalar_trunc23(ROUND,2)
    assign adapt_scalar_trunc23_in = ip_dsdk_adapt_bitselect22_b;
    assign adapt_scalar_trunc23_q = adapt_scalar_trunc23_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,47)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc23_q;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect24_b;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect26_b;
    assign out_o_data_3_tpl = adapt_scalar_trunc29_q;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect30_b;
    assign out_o_data_5_tpl = adapt_scalar_trunc33_q;
    assign out_o_data_6_tpl = adapt_scalar_trunc35_q;
    assign out_o_data_7_tpl = adapt_scalar_trunc37_q;
    assign out_o_data_8_tpl = ip_dsdk_adapt_bitselect38_b;
    assign out_o_data_9_tpl = adapt_scalar_trunc41_q;
    assign out_o_data_10_tpl = adapt_scalar_trunc43_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_valid;

endmodule
