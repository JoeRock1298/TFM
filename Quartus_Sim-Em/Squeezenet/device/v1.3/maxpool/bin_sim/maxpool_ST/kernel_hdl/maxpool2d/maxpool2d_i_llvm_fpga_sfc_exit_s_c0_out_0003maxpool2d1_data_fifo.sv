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

// SystemVerilog created from maxpool2d_i_llvm_fpga_sfc_exit_s_c0_out_0003maxpool2d1_data_fifo
// SystemVerilog created on Sat Jun  3 13:01:56 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_i_llvm_fpga_sfc_exit_s_c0_out_0003maxpool2d1_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [31:0] in_i_data_1_tpl,
    input wire [31:0] in_i_data_2_tpl,
    input wire [31:0] in_i_data_3_tpl,
    input wire [0:0] in_i_data_4_tpl,
    input wire [0:0] in_i_data_5_tpl,
    input wire [63:0] in_i_data_6_tpl,
    input wire [63:0] in_i_data_7_tpl,
    input wire [0:0] in_i_data_8_tpl,
    input wire [31:0] in_i_data_9_tpl,
    input wire [0:0] in_i_data_10_tpl,
    input wire [0:0] in_i_data_11_tpl,
    input wire [0:0] in_i_data_12_tpl,
    input wire [63:0] in_i_data_13_tpl,
    input wire [63:0] in_i_data_14_tpl,
    input wire [0:0] in_i_data_15_tpl,
    input wire [31:0] in_i_data_16_tpl,
    input wire [31:0] in_i_data_17_tpl,
    input wire [0:0] in_i_data_18_tpl,
    input wire [63:0] in_i_data_19_tpl,
    input wire [63:0] in_i_data_20_tpl,
    input wire [0:0] in_i_data_21_tpl,
    input wire [0:0] in_i_data_22_tpl,
    input wire [31:0] in_i_data_23_tpl,
    input wire [63:0] in_i_data_24_tpl,
    input wire [63:0] in_i_data_25_tpl,
    input wire [0:0] in_i_data_26_tpl,
    input wire [31:0] in_i_data_27_tpl,
    input wire [31:0] in_i_data_28_tpl,
    input wire [0:0] in_i_data_29_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [31:0] out_o_data_1_tpl,
    output wire [31:0] out_o_data_2_tpl,
    output wire [31:0] out_o_data_3_tpl,
    output wire [0:0] out_o_data_4_tpl,
    output wire [0:0] out_o_data_5_tpl,
    output wire [63:0] out_o_data_6_tpl,
    output wire [63:0] out_o_data_7_tpl,
    output wire [0:0] out_o_data_8_tpl,
    output wire [31:0] out_o_data_9_tpl,
    output wire [0:0] out_o_data_10_tpl,
    output wire [0:0] out_o_data_11_tpl,
    output wire [0:0] out_o_data_12_tpl,
    output wire [63:0] out_o_data_13_tpl,
    output wire [63:0] out_o_data_14_tpl,
    output wire [0:0] out_o_data_15_tpl,
    output wire [31:0] out_o_data_16_tpl,
    output wire [31:0] out_o_data_17_tpl,
    output wire [0:0] out_o_data_18_tpl,
    output wire [63:0] out_o_data_19_tpl,
    output wire [63:0] out_o_data_20_tpl,
    output wire [0:0] out_o_data_21_tpl,
    output wire [0:0] out_o_data_22_tpl,
    output wire [31:0] out_o_data_23_tpl,
    output wire [63:0] out_o_data_24_tpl,
    output wire [63:0] out_o_data_25_tpl,
    output wire [0:0] out_o_data_26_tpl,
    output wire [31:0] out_o_data_27_tpl,
    output wire [31:0] out_o_data_28_tpl,
    output wire [0:0] out_o_data_29_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc40_in;
    wire [0:0] adapt_scalar_trunc40_q;
    wire [0:0] adapt_scalar_trunc48_in;
    wire [0:0] adapt_scalar_trunc48_q;
    wire [0:0] adapt_scalar_trunc50_in;
    wire [0:0] adapt_scalar_trunc50_q;
    wire [0:0] adapt_scalar_trunc56_in;
    wire [0:0] adapt_scalar_trunc56_q;
    wire [0:0] adapt_scalar_trunc60_in;
    wire [0:0] adapt_scalar_trunc60_q;
    wire [0:0] adapt_scalar_trunc62_in;
    wire [0:0] adapt_scalar_trunc62_q;
    wire [0:0] adapt_scalar_trunc64_in;
    wire [0:0] adapt_scalar_trunc64_q;
    wire [0:0] adapt_scalar_trunc70_in;
    wire [0:0] adapt_scalar_trunc70_q;
    wire [0:0] adapt_scalar_trunc76_in;
    wire [0:0] adapt_scalar_trunc76_q;
    wire [0:0] adapt_scalar_trunc82_in;
    wire [0:0] adapt_scalar_trunc82_q;
    wire [0:0] adapt_scalar_trunc84_in;
    wire [0:0] adapt_scalar_trunc84_q;
    wire [0:0] adapt_scalar_trunc92_in;
    wire [0:0] adapt_scalar_trunc92_q;
    wire [0:0] adapt_scalar_trunc98_in;
    wire [0:0] adapt_scalar_trunc98_q;
    wire [15:0] c_i16_031_q;
    wire [23:0] c_i24_013_q;
    wire [39:0] c_i40_020_q;
    wire [47:0] c_i48_010_q;
    wire [6:0] c_i7_012_q;
    wire [1151:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension14_q;
    wire [7:0] element_extension16_q;
    wire [7:0] element_extension18_q;
    wire [7:0] element_extension21_q;
    wire [7:0] element_extension24_q;
    wire [7:0] element_extension27_q;
    wire [7:0] element_extension29_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension32_q;
    wire [7:0] element_extension35_q;
    wire [7:0] element_extension6_q;
    wire [7:0] element_extension8_q;
    wire [1151:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_almost_full_bitsignaltemp;
    wire [1151:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect39_b;
    wire [31:0] ip_dsdk_adapt_bitselect41_b;
    wire [31:0] ip_dsdk_adapt_bitselect43_b;
    wire [31:0] ip_dsdk_adapt_bitselect45_b;
    wire [0:0] ip_dsdk_adapt_bitselect47_b;
    wire [0:0] ip_dsdk_adapt_bitselect49_b;
    wire [63:0] ip_dsdk_adapt_bitselect51_b;
    wire [63:0] ip_dsdk_adapt_bitselect53_b;
    wire [0:0] ip_dsdk_adapt_bitselect55_b;
    wire [31:0] ip_dsdk_adapt_bitselect57_b;
    wire [0:0] ip_dsdk_adapt_bitselect59_b;
    wire [0:0] ip_dsdk_adapt_bitselect61_b;
    wire [0:0] ip_dsdk_adapt_bitselect63_b;
    wire [63:0] ip_dsdk_adapt_bitselect65_b;
    wire [63:0] ip_dsdk_adapt_bitselect67_b;
    wire [0:0] ip_dsdk_adapt_bitselect69_b;
    wire [31:0] ip_dsdk_adapt_bitselect71_b;
    wire [31:0] ip_dsdk_adapt_bitselect73_b;
    wire [0:0] ip_dsdk_adapt_bitselect75_b;
    wire [63:0] ip_dsdk_adapt_bitselect77_b;
    wire [63:0] ip_dsdk_adapt_bitselect79_b;
    wire [0:0] ip_dsdk_adapt_bitselect81_b;
    wire [0:0] ip_dsdk_adapt_bitselect83_b;
    wire [31:0] ip_dsdk_adapt_bitselect85_b;
    wire [63:0] ip_dsdk_adapt_bitselect87_b;
    wire [63:0] ip_dsdk_adapt_bitselect89_b;
    wire [0:0] ip_dsdk_adapt_bitselect91_b;
    wire [31:0] ip_dsdk_adapt_bitselect93_b;
    wire [31:0] ip_dsdk_adapt_bitselect95_b;
    wire [0:0] ip_dsdk_adapt_bitselect97_b;


    // c_i7_012(CONSTANT,24)
    assign c_i7_012_q = $unsigned(7'b0000000);

    // element_extension35(BITJOIN,48)
    assign element_extension35_q = {c_i7_012_q, in_i_data_29_tpl};

    // element_extension32(BITJOIN,47)
    assign element_extension32_q = {c_i7_012_q, in_i_data_26_tpl};

    // c_i16_031(CONSTANT,15)
    assign c_i16_031_q = $unsigned(16'b0000000000000000);

    // element_extension29(BITJOIN,45)
    assign element_extension29_q = {c_i7_012_q, in_i_data_22_tpl};

    // element_extension27(BITJOIN,44)
    assign element_extension27_q = {c_i7_012_q, in_i_data_21_tpl};

    // element_extension24(BITJOIN,43)
    assign element_extension24_q = {c_i7_012_q, in_i_data_18_tpl};

    // element_extension21(BITJOIN,42)
    assign element_extension21_q = {c_i7_012_q, in_i_data_15_tpl};

    // c_i40_020(CONSTANT,22)
    assign c_i40_020_q = $unsigned(40'b0000000000000000000000000000000000000000);

    // element_extension18(BITJOIN,41)
    assign element_extension18_q = {c_i7_012_q, in_i_data_12_tpl};

    // element_extension16(BITJOIN,40)
    assign element_extension16_q = {c_i7_012_q, in_i_data_11_tpl};

    // element_extension14(BITJOIN,39)
    assign element_extension14_q = {c_i7_012_q, in_i_data_10_tpl};

    // element_extension11(BITJOIN,38)
    assign element_extension11_q = {c_i7_012_q, in_i_data_8_tpl};

    // c_i48_010(CONSTANT,23)
    assign c_i48_010_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // element_extension8(BITJOIN,50)
    assign element_extension8_q = {c_i7_012_q, in_i_data_5_tpl};

    // element_extension6(BITJOIN,49)
    assign element_extension6_q = {c_i7_012_q, in_i_data_4_tpl};

    // c_i24_013(CONSTANT,16)
    assign c_i24_013_q = $unsigned(24'b000000000000000000000000);

    // element_extension3(BITJOIN,46)
    assign element_extension3_q = {c_i7_012_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,37)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i24_013_q, element_extension35_q, in_i_data_28_tpl, in_i_data_27_tpl, c_i24_013_q, element_extension32_q, in_i_data_25_tpl, in_i_data_24_tpl, in_i_data_23_tpl, c_i16_031_q, element_extension29_q, element_extension27_q, in_i_data_20_tpl, in_i_data_19_tpl, c_i24_013_q, element_extension24_q, in_i_data_17_tpl, in_i_data_16_tpl, c_i24_013_q, element_extension21_q, in_i_data_14_tpl, in_i_data_13_tpl, c_i40_020_q, element_extension18_q, element_extension16_q, element_extension14_q, in_i_data_9_tpl, c_i24_013_q, element_extension11_q, in_i_data_7_tpl, in_i_data_6_tpl, c_i48_010_q, element_extension8_q, element_extension6_q, in_i_data_3_tpl, in_i_data_2_tpl, in_i_data_1_tpl, c_i24_013_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0(EXTIFACE,51)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(1152)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,100)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_stall;

    // ip_dsdk_adapt_bitselect97(BITSELECT,81)
    assign ip_dsdk_adapt_bitselect97_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[1120:1120];

    // adapt_scalar_trunc98(ROUND,14)
    assign adapt_scalar_trunc98_in = ip_dsdk_adapt_bitselect97_b;
    assign adapt_scalar_trunc98_q = adapt_scalar_trunc98_in[0:0];

    // ip_dsdk_adapt_bitselect95(BITSELECT,80)
    assign ip_dsdk_adapt_bitselect95_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[1119:1088];

    // ip_dsdk_adapt_bitselect93(BITSELECT,79)
    assign ip_dsdk_adapt_bitselect93_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[1087:1056];

    // ip_dsdk_adapt_bitselect91(BITSELECT,78)
    assign ip_dsdk_adapt_bitselect91_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[1024:1024];

    // adapt_scalar_trunc92(ROUND,13)
    assign adapt_scalar_trunc92_in = ip_dsdk_adapt_bitselect91_b;
    assign adapt_scalar_trunc92_q = adapt_scalar_trunc92_in[0:0];

    // ip_dsdk_adapt_bitselect89(BITSELECT,77)
    assign ip_dsdk_adapt_bitselect89_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[1023:960];

    // ip_dsdk_adapt_bitselect87(BITSELECT,76)
    assign ip_dsdk_adapt_bitselect87_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[959:896];

    // ip_dsdk_adapt_bitselect85(BITSELECT,75)
    assign ip_dsdk_adapt_bitselect85_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[895:864];

    // ip_dsdk_adapt_bitselect83(BITSELECT,74)
    assign ip_dsdk_adapt_bitselect83_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[840:840];

    // adapt_scalar_trunc84(ROUND,12)
    assign adapt_scalar_trunc84_in = ip_dsdk_adapt_bitselect83_b;
    assign adapt_scalar_trunc84_q = adapt_scalar_trunc84_in[0:0];

    // ip_dsdk_adapt_bitselect81(BITSELECT,73)
    assign ip_dsdk_adapt_bitselect81_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[832:832];

    // adapt_scalar_trunc82(ROUND,11)
    assign adapt_scalar_trunc82_in = ip_dsdk_adapt_bitselect81_b;
    assign adapt_scalar_trunc82_q = adapt_scalar_trunc82_in[0:0];

    // ip_dsdk_adapt_bitselect79(BITSELECT,72)
    assign ip_dsdk_adapt_bitselect79_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[831:768];

    // ip_dsdk_adapt_bitselect77(BITSELECT,71)
    assign ip_dsdk_adapt_bitselect77_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[767:704];

    // ip_dsdk_adapt_bitselect75(BITSELECT,70)
    assign ip_dsdk_adapt_bitselect75_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[672:672];

    // adapt_scalar_trunc76(ROUND,10)
    assign adapt_scalar_trunc76_in = ip_dsdk_adapt_bitselect75_b;
    assign adapt_scalar_trunc76_q = adapt_scalar_trunc76_in[0:0];

    // ip_dsdk_adapt_bitselect73(BITSELECT,69)
    assign ip_dsdk_adapt_bitselect73_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[671:640];

    // ip_dsdk_adapt_bitselect71(BITSELECT,68)
    assign ip_dsdk_adapt_bitselect71_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[639:608];

    // ip_dsdk_adapt_bitselect69(BITSELECT,67)
    assign ip_dsdk_adapt_bitselect69_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[576:576];

    // adapt_scalar_trunc70(ROUND,9)
    assign adapt_scalar_trunc70_in = ip_dsdk_adapt_bitselect69_b;
    assign adapt_scalar_trunc70_q = adapt_scalar_trunc70_in[0:0];

    // ip_dsdk_adapt_bitselect67(BITSELECT,66)
    assign ip_dsdk_adapt_bitselect67_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[575:512];

    // ip_dsdk_adapt_bitselect65(BITSELECT,65)
    assign ip_dsdk_adapt_bitselect65_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[511:448];

    // ip_dsdk_adapt_bitselect63(BITSELECT,64)
    assign ip_dsdk_adapt_bitselect63_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[400:400];

    // adapt_scalar_trunc64(ROUND,8)
    assign adapt_scalar_trunc64_in = ip_dsdk_adapt_bitselect63_b;
    assign adapt_scalar_trunc64_q = adapt_scalar_trunc64_in[0:0];

    // ip_dsdk_adapt_bitselect61(BITSELECT,63)
    assign ip_dsdk_adapt_bitselect61_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[392:392];

    // adapt_scalar_trunc62(ROUND,7)
    assign adapt_scalar_trunc62_in = ip_dsdk_adapt_bitselect61_b;
    assign adapt_scalar_trunc62_q = adapt_scalar_trunc62_in[0:0];

    // ip_dsdk_adapt_bitselect59(BITSELECT,62)
    assign ip_dsdk_adapt_bitselect59_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[384:384];

    // adapt_scalar_trunc60(ROUND,6)
    assign adapt_scalar_trunc60_in = ip_dsdk_adapt_bitselect59_b;
    assign adapt_scalar_trunc60_q = adapt_scalar_trunc60_in[0:0];

    // ip_dsdk_adapt_bitselect57(BITSELECT,61)
    assign ip_dsdk_adapt_bitselect57_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[383:352];

    // ip_dsdk_adapt_bitselect55(BITSELECT,60)
    assign ip_dsdk_adapt_bitselect55_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[320:320];

    // adapt_scalar_trunc56(ROUND,5)
    assign adapt_scalar_trunc56_in = ip_dsdk_adapt_bitselect55_b;
    assign adapt_scalar_trunc56_q = adapt_scalar_trunc56_in[0:0];

    // ip_dsdk_adapt_bitselect53(BITSELECT,59)
    assign ip_dsdk_adapt_bitselect53_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[319:256];

    // ip_dsdk_adapt_bitselect51(BITSELECT,58)
    assign ip_dsdk_adapt_bitselect51_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[255:192];

    // ip_dsdk_adapt_bitselect49(BITSELECT,57)
    assign ip_dsdk_adapt_bitselect49_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[136:136];

    // adapt_scalar_trunc50(ROUND,4)
    assign adapt_scalar_trunc50_in = ip_dsdk_adapt_bitselect49_b;
    assign adapt_scalar_trunc50_q = adapt_scalar_trunc50_in[0:0];

    // ip_dsdk_adapt_bitselect47(BITSELECT,56)
    assign ip_dsdk_adapt_bitselect47_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[128:128];

    // adapt_scalar_trunc48(ROUND,3)
    assign adapt_scalar_trunc48_in = ip_dsdk_adapt_bitselect47_b;
    assign adapt_scalar_trunc48_q = adapt_scalar_trunc48_in[0:0];

    // ip_dsdk_adapt_bitselect45(BITSELECT,55)
    assign ip_dsdk_adapt_bitselect45_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[127:96];

    // ip_dsdk_adapt_bitselect43(BITSELECT,54)
    assign ip_dsdk_adapt_bitselect43_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[95:64];

    // ip_dsdk_adapt_bitselect41(BITSELECT,53)
    assign ip_dsdk_adapt_bitselect41_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[63:32];

    // ip_dsdk_adapt_bitselect39(BITSELECT,52)
    assign ip_dsdk_adapt_bitselect39_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_data[0:0];

    // adapt_scalar_trunc40(ROUND,2)
    assign adapt_scalar_trunc40_in = ip_dsdk_adapt_bitselect39_b;
    assign adapt_scalar_trunc40_q = adapt_scalar_trunc40_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,102)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc40_q;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect41_b;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect43_b;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect45_b;
    assign out_o_data_4_tpl = adapt_scalar_trunc48_q;
    assign out_o_data_5_tpl = adapt_scalar_trunc50_q;
    assign out_o_data_6_tpl = ip_dsdk_adapt_bitselect51_b;
    assign out_o_data_7_tpl = ip_dsdk_adapt_bitselect53_b;
    assign out_o_data_8_tpl = adapt_scalar_trunc56_q;
    assign out_o_data_9_tpl = ip_dsdk_adapt_bitselect57_b;
    assign out_o_data_10_tpl = adapt_scalar_trunc60_q;
    assign out_o_data_11_tpl = adapt_scalar_trunc62_q;
    assign out_o_data_12_tpl = adapt_scalar_trunc64_q;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect65_b;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect67_b;
    assign out_o_data_15_tpl = adapt_scalar_trunc70_q;
    assign out_o_data_16_tpl = ip_dsdk_adapt_bitselect71_b;
    assign out_o_data_17_tpl = ip_dsdk_adapt_bitselect73_b;
    assign out_o_data_18_tpl = adapt_scalar_trunc76_q;
    assign out_o_data_19_tpl = ip_dsdk_adapt_bitselect77_b;
    assign out_o_data_20_tpl = ip_dsdk_adapt_bitselect79_b;
    assign out_o_data_21_tpl = adapt_scalar_trunc82_q;
    assign out_o_data_22_tpl = adapt_scalar_trunc84_q;
    assign out_o_data_23_tpl = ip_dsdk_adapt_bitselect85_b;
    assign out_o_data_24_tpl = ip_dsdk_adapt_bitselect87_b;
    assign out_o_data_25_tpl = ip_dsdk_adapt_bitselect89_b;
    assign out_o_data_26_tpl = adapt_scalar_trunc92_q;
    assign out_o_data_27_tpl = ip_dsdk_adapt_bitselect93_b;
    assign out_o_data_28_tpl = ip_dsdk_adapt_bitselect95_b;
    assign out_o_data_29_tpl = adapt_scalar_trunc98_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_maxpool2ds_c0_exit245_maxpool2d0_o_valid;

endmodule
