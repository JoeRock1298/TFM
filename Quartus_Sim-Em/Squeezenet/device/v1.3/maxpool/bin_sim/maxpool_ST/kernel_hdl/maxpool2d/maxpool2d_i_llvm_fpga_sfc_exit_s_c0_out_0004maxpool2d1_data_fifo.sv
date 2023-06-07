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

// SystemVerilog created from maxpool2d_i_llvm_fpga_sfc_exit_s_c0_out_0004maxpool2d1_data_fifo
// SystemVerilog created on Sat Jun  3 13:01:56 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_i_llvm_fpga_sfc_exit_s_c0_out_0004maxpool2d1_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [0:0] in_i_data_2_tpl,
    input wire [0:0] in_i_data_3_tpl,
    input wire [0:0] in_i_data_4_tpl,
    input wire [0:0] in_i_data_5_tpl,
    input wire [63:0] in_i_data_6_tpl,
    input wire [0:0] in_i_data_7_tpl,
    input wire [0:0] in_i_data_8_tpl,
    input wire [63:0] in_i_data_9_tpl,
    input wire [0:0] in_i_data_10_tpl,
    input wire [31:0] in_i_data_11_tpl,
    input wire [0:0] in_i_data_12_tpl,
    input wire [0:0] in_i_data_13_tpl,
    input wire [31:0] in_i_data_14_tpl,
    input wire [0:0] in_i_data_15_tpl,
    input wire [63:0] in_i_data_16_tpl,
    input wire [63:0] in_i_data_17_tpl,
    input wire [0:0] in_i_data_18_tpl,
    input wire [31:0] in_i_data_19_tpl,
    input wire [31:0] in_i_data_20_tpl,
    input wire [0:0] in_i_data_21_tpl,
    input wire [63:0] in_i_data_22_tpl,
    input wire [63:0] in_i_data_23_tpl,
    input wire [0:0] in_i_data_24_tpl,
    input wire [0:0] in_i_data_25_tpl,
    input wire [31:0] in_i_data_26_tpl,
    input wire [63:0] in_i_data_27_tpl,
    input wire [63:0] in_i_data_28_tpl,
    input wire [0:0] in_i_data_29_tpl,
    input wire [31:0] in_i_data_30_tpl,
    input wire [31:0] in_i_data_31_tpl,
    input wire [0:0] in_i_data_32_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [0:0] out_o_data_2_tpl,
    output wire [0:0] out_o_data_3_tpl,
    output wire [0:0] out_o_data_4_tpl,
    output wire [0:0] out_o_data_5_tpl,
    output wire [63:0] out_o_data_6_tpl,
    output wire [0:0] out_o_data_7_tpl,
    output wire [0:0] out_o_data_8_tpl,
    output wire [63:0] out_o_data_9_tpl,
    output wire [0:0] out_o_data_10_tpl,
    output wire [31:0] out_o_data_11_tpl,
    output wire [0:0] out_o_data_12_tpl,
    output wire [0:0] out_o_data_13_tpl,
    output wire [31:0] out_o_data_14_tpl,
    output wire [0:0] out_o_data_15_tpl,
    output wire [63:0] out_o_data_16_tpl,
    output wire [63:0] out_o_data_17_tpl,
    output wire [0:0] out_o_data_18_tpl,
    output wire [31:0] out_o_data_19_tpl,
    output wire [31:0] out_o_data_20_tpl,
    output wire [0:0] out_o_data_21_tpl,
    output wire [63:0] out_o_data_22_tpl,
    output wire [63:0] out_o_data_23_tpl,
    output wire [0:0] out_o_data_24_tpl,
    output wire [0:0] out_o_data_25_tpl,
    output wire [31:0] out_o_data_26_tpl,
    output wire [63:0] out_o_data_27_tpl,
    output wire [63:0] out_o_data_28_tpl,
    output wire [0:0] out_o_data_29_tpl,
    output wire [31:0] out_o_data_30_tpl,
    output wire [31:0] out_o_data_31_tpl,
    output wire [0:0] out_o_data_32_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc101_in;
    wire [0:0] adapt_scalar_trunc101_q;
    wire [0:0] adapt_scalar_trunc109_in;
    wire [0:0] adapt_scalar_trunc109_q;
    wire [0:0] adapt_scalar_trunc115_in;
    wire [0:0] adapt_scalar_trunc115_q;
    wire [0:0] adapt_scalar_trunc51_in;
    wire [0:0] adapt_scalar_trunc51_q;
    wire [0:0] adapt_scalar_trunc53_in;
    wire [0:0] adapt_scalar_trunc53_q;
    wire [0:0] adapt_scalar_trunc55_in;
    wire [0:0] adapt_scalar_trunc55_q;
    wire [0:0] adapt_scalar_trunc57_in;
    wire [0:0] adapt_scalar_trunc57_q;
    wire [0:0] adapt_scalar_trunc59_in;
    wire [0:0] adapt_scalar_trunc59_q;
    wire [0:0] adapt_scalar_trunc61_in;
    wire [0:0] adapt_scalar_trunc61_q;
    wire [0:0] adapt_scalar_trunc65_in;
    wire [0:0] adapt_scalar_trunc65_q;
    wire [0:0] adapt_scalar_trunc67_in;
    wire [0:0] adapt_scalar_trunc67_q;
    wire [0:0] adapt_scalar_trunc71_in;
    wire [0:0] adapt_scalar_trunc71_q;
    wire [0:0] adapt_scalar_trunc75_in;
    wire [0:0] adapt_scalar_trunc75_q;
    wire [0:0] adapt_scalar_trunc77_in;
    wire [0:0] adapt_scalar_trunc77_q;
    wire [0:0] adapt_scalar_trunc81_in;
    wire [0:0] adapt_scalar_trunc81_q;
    wire [0:0] adapt_scalar_trunc87_in;
    wire [0:0] adapt_scalar_trunc87_q;
    wire [0:0] adapt_scalar_trunc93_in;
    wire [0:0] adapt_scalar_trunc93_q;
    wire [0:0] adapt_scalar_trunc99_in;
    wire [0:0] adapt_scalar_trunc99_q;
    wire [15:0] c_i16_015_q;
    wire [23:0] c_i24_023_q;
    wire [47:0] c_i48_020_q;
    wire [55:0] c_i56_031_q;
    wire [6:0] c_i7_010_q;
    wire [1151:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension13_q;
    wire [7:0] element_extension16_q;
    wire [7:0] element_extension18_q;
    wire [7:0] element_extension21_q;
    wire [7:0] element_extension24_q;
    wire [7:0] element_extension26_q;
    wire [7:0] element_extension29_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension32_q;
    wire [7:0] element_extension35_q;
    wire [7:0] element_extension38_q;
    wire [7:0] element_extension40_q;
    wire [7:0] element_extension43_q;
    wire [7:0] element_extension46_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension7_q;
    wire [7:0] element_extension9_q;
    wire [1151:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_almost_full_bitsignaltemp;
    wire [1151:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect100_b;
    wire [31:0] ip_dsdk_adapt_bitselect102_b;
    wire [63:0] ip_dsdk_adapt_bitselect104_b;
    wire [63:0] ip_dsdk_adapt_bitselect106_b;
    wire [0:0] ip_dsdk_adapt_bitselect108_b;
    wire [31:0] ip_dsdk_adapt_bitselect110_b;
    wire [31:0] ip_dsdk_adapt_bitselect112_b;
    wire [0:0] ip_dsdk_adapt_bitselect114_b;
    wire [0:0] ip_dsdk_adapt_bitselect50_b;
    wire [0:0] ip_dsdk_adapt_bitselect52_b;
    wire [0:0] ip_dsdk_adapt_bitselect54_b;
    wire [0:0] ip_dsdk_adapt_bitselect56_b;
    wire [0:0] ip_dsdk_adapt_bitselect58_b;
    wire [0:0] ip_dsdk_adapt_bitselect60_b;
    wire [63:0] ip_dsdk_adapt_bitselect62_b;
    wire [0:0] ip_dsdk_adapt_bitselect64_b;
    wire [0:0] ip_dsdk_adapt_bitselect66_b;
    wire [63:0] ip_dsdk_adapt_bitselect68_b;
    wire [0:0] ip_dsdk_adapt_bitselect70_b;
    wire [31:0] ip_dsdk_adapt_bitselect72_b;
    wire [0:0] ip_dsdk_adapt_bitselect74_b;
    wire [0:0] ip_dsdk_adapt_bitselect76_b;
    wire [31:0] ip_dsdk_adapt_bitselect78_b;
    wire [0:0] ip_dsdk_adapt_bitselect80_b;
    wire [63:0] ip_dsdk_adapt_bitselect82_b;
    wire [63:0] ip_dsdk_adapt_bitselect84_b;
    wire [0:0] ip_dsdk_adapt_bitselect86_b;
    wire [31:0] ip_dsdk_adapt_bitselect88_b;
    wire [31:0] ip_dsdk_adapt_bitselect90_b;
    wire [0:0] ip_dsdk_adapt_bitselect92_b;
    wire [63:0] ip_dsdk_adapt_bitselect94_b;
    wire [63:0] ip_dsdk_adapt_bitselect96_b;
    wire [0:0] ip_dsdk_adapt_bitselect98_b;


    // c_i7_010(CONSTANT,30)
    assign c_i7_010_q = $unsigned(7'b0000000);

    // element_extension46(BITJOIN,63)
    assign element_extension46_q = {c_i7_010_q, in_i_data_32_tpl};

    // element_extension43(BITJOIN,62)
    assign element_extension43_q = {c_i7_010_q, in_i_data_29_tpl};

    // element_extension40(BITJOIN,61)
    assign element_extension40_q = {c_i7_010_q, in_i_data_25_tpl};

    // element_extension38(BITJOIN,60)
    assign element_extension38_q = {c_i7_010_q, in_i_data_24_tpl};

    // element_extension35(BITJOIN,59)
    assign element_extension35_q = {c_i7_010_q, in_i_data_21_tpl};

    // element_extension32(BITJOIN,58)
    assign element_extension32_q = {c_i7_010_q, in_i_data_18_tpl};

    // c_i56_031(CONSTANT,29)
    assign c_i56_031_q = $unsigned(56'b00000000000000000000000000000000000000000000000000000000);

    // element_extension29(BITJOIN,56)
    assign element_extension29_q = {c_i7_010_q, in_i_data_15_tpl};

    // element_extension26(BITJOIN,55)
    assign element_extension26_q = {c_i7_010_q, in_i_data_13_tpl};

    // element_extension24(BITJOIN,54)
    assign element_extension24_q = {c_i7_010_q, in_i_data_12_tpl};

    // c_i24_023(CONSTANT,23)
    assign c_i24_023_q = $unsigned(24'b000000000000000000000000);

    // element_extension21(BITJOIN,53)
    assign element_extension21_q = {c_i7_010_q, in_i_data_10_tpl};

    // c_i48_020(CONSTANT,28)
    assign c_i48_020_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // element_extension18(BITJOIN,52)
    assign element_extension18_q = {c_i7_010_q, in_i_data_8_tpl};

    // element_extension16(BITJOIN,51)
    assign element_extension16_q = {c_i7_010_q, in_i_data_7_tpl};

    // c_i16_015(CONSTANT,20)
    assign c_i16_015_q = $unsigned(16'b0000000000000000);

    // element_extension13(BITJOIN,50)
    assign element_extension13_q = {c_i7_010_q, in_i_data_5_tpl};

    // element_extension11(BITJOIN,49)
    assign element_extension11_q = {c_i7_010_q, in_i_data_4_tpl};

    // element_extension9(BITJOIN,66)
    assign element_extension9_q = {c_i7_010_q, in_i_data_3_tpl};

    // element_extension7(BITJOIN,65)
    assign element_extension7_q = {c_i7_010_q, in_i_data_2_tpl};

    // element_extension5(BITJOIN,64)
    assign element_extension5_q = {c_i7_010_q, in_i_data_1_tpl};

    // element_extension3(BITJOIN,57)
    assign element_extension3_q = {c_i7_010_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,48)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i24_023_q, element_extension46_q, in_i_data_31_tpl, in_i_data_30_tpl, c_i24_023_q, element_extension43_q, in_i_data_28_tpl, in_i_data_27_tpl, in_i_data_26_tpl, c_i16_015_q, element_extension40_q, element_extension38_q, in_i_data_23_tpl, in_i_data_22_tpl, c_i24_023_q, element_extension35_q, in_i_data_20_tpl, in_i_data_19_tpl, c_i24_023_q, element_extension32_q, in_i_data_17_tpl, in_i_data_16_tpl, c_i56_031_q, element_extension29_q, in_i_data_14_tpl, c_i16_015_q, element_extension26_q, element_extension24_q, in_i_data_11_tpl, c_i24_023_q, element_extension21_q, in_i_data_9_tpl, c_i48_020_q, element_extension18_q, element_extension16_q, in_i_data_6_tpl, c_i16_015_q, element_extension13_q, element_extension11_q, element_extension9_q, element_extension7_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0(EXTIFACE,67)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(1152)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,117)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_stall;

    // ip_dsdk_adapt_bitselect114(BITSELECT,75)
    assign ip_dsdk_adapt_bitselect114_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[1120:1120];

    // adapt_scalar_trunc115(ROUND,4)
    assign adapt_scalar_trunc115_in = ip_dsdk_adapt_bitselect114_b;
    assign adapt_scalar_trunc115_q = adapt_scalar_trunc115_in[0:0];

    // ip_dsdk_adapt_bitselect112(BITSELECT,74)
    assign ip_dsdk_adapt_bitselect112_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[1119:1088];

    // ip_dsdk_adapt_bitselect110(BITSELECT,73)
    assign ip_dsdk_adapt_bitselect110_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[1087:1056];

    // ip_dsdk_adapt_bitselect108(BITSELECT,72)
    assign ip_dsdk_adapt_bitselect108_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[1024:1024];

    // adapt_scalar_trunc109(ROUND,3)
    assign adapt_scalar_trunc109_in = ip_dsdk_adapt_bitselect108_b;
    assign adapt_scalar_trunc109_q = adapt_scalar_trunc109_in[0:0];

    // ip_dsdk_adapt_bitselect106(BITSELECT,71)
    assign ip_dsdk_adapt_bitselect106_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[1023:960];

    // ip_dsdk_adapt_bitselect104(BITSELECT,70)
    assign ip_dsdk_adapt_bitselect104_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[959:896];

    // ip_dsdk_adapt_bitselect102(BITSELECT,69)
    assign ip_dsdk_adapt_bitselect102_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[895:864];

    // ip_dsdk_adapt_bitselect100(BITSELECT,68)
    assign ip_dsdk_adapt_bitselect100_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[840:840];

    // adapt_scalar_trunc101(ROUND,2)
    assign adapt_scalar_trunc101_in = ip_dsdk_adapt_bitselect100_b;
    assign adapt_scalar_trunc101_q = adapt_scalar_trunc101_in[0:0];

    // ip_dsdk_adapt_bitselect98(BITSELECT,100)
    assign ip_dsdk_adapt_bitselect98_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[832:832];

    // adapt_scalar_trunc99(ROUND,19)
    assign adapt_scalar_trunc99_in = ip_dsdk_adapt_bitselect98_b;
    assign adapt_scalar_trunc99_q = adapt_scalar_trunc99_in[0:0];

    // ip_dsdk_adapt_bitselect96(BITSELECT,99)
    assign ip_dsdk_adapt_bitselect96_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[831:768];

    // ip_dsdk_adapt_bitselect94(BITSELECT,98)
    assign ip_dsdk_adapt_bitselect94_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[767:704];

    // ip_dsdk_adapt_bitselect92(BITSELECT,97)
    assign ip_dsdk_adapt_bitselect92_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[672:672];

    // adapt_scalar_trunc93(ROUND,18)
    assign adapt_scalar_trunc93_in = ip_dsdk_adapt_bitselect92_b;
    assign adapt_scalar_trunc93_q = adapt_scalar_trunc93_in[0:0];

    // ip_dsdk_adapt_bitselect90(BITSELECT,96)
    assign ip_dsdk_adapt_bitselect90_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[671:640];

    // ip_dsdk_adapt_bitselect88(BITSELECT,95)
    assign ip_dsdk_adapt_bitselect88_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[639:608];

    // ip_dsdk_adapt_bitselect86(BITSELECT,94)
    assign ip_dsdk_adapt_bitselect86_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[576:576];

    // adapt_scalar_trunc87(ROUND,17)
    assign adapt_scalar_trunc87_in = ip_dsdk_adapt_bitselect86_b;
    assign adapt_scalar_trunc87_q = adapt_scalar_trunc87_in[0:0];

    // ip_dsdk_adapt_bitselect84(BITSELECT,93)
    assign ip_dsdk_adapt_bitselect84_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[575:512];

    // ip_dsdk_adapt_bitselect82(BITSELECT,92)
    assign ip_dsdk_adapt_bitselect82_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[511:448];

    // ip_dsdk_adapt_bitselect80(BITSELECT,91)
    assign ip_dsdk_adapt_bitselect80_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[384:384];

    // adapt_scalar_trunc81(ROUND,16)
    assign adapt_scalar_trunc81_in = ip_dsdk_adapt_bitselect80_b;
    assign adapt_scalar_trunc81_q = adapt_scalar_trunc81_in[0:0];

    // ip_dsdk_adapt_bitselect78(BITSELECT,90)
    assign ip_dsdk_adapt_bitselect78_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[383:352];

    // ip_dsdk_adapt_bitselect76(BITSELECT,89)
    assign ip_dsdk_adapt_bitselect76_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[328:328];

    // adapt_scalar_trunc77(ROUND,15)
    assign adapt_scalar_trunc77_in = ip_dsdk_adapt_bitselect76_b;
    assign adapt_scalar_trunc77_q = adapt_scalar_trunc77_in[0:0];

    // ip_dsdk_adapt_bitselect74(BITSELECT,88)
    assign ip_dsdk_adapt_bitselect74_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[320:320];

    // adapt_scalar_trunc75(ROUND,14)
    assign adapt_scalar_trunc75_in = ip_dsdk_adapt_bitselect74_b;
    assign adapt_scalar_trunc75_q = adapt_scalar_trunc75_in[0:0];

    // ip_dsdk_adapt_bitselect72(BITSELECT,87)
    assign ip_dsdk_adapt_bitselect72_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[319:288];

    // ip_dsdk_adapt_bitselect70(BITSELECT,86)
    assign ip_dsdk_adapt_bitselect70_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[256:256];

    // adapt_scalar_trunc71(ROUND,13)
    assign adapt_scalar_trunc71_in = ip_dsdk_adapt_bitselect70_b;
    assign adapt_scalar_trunc71_q = adapt_scalar_trunc71_in[0:0];

    // ip_dsdk_adapt_bitselect68(BITSELECT,85)
    assign ip_dsdk_adapt_bitselect68_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[255:192];

    // ip_dsdk_adapt_bitselect66(BITSELECT,84)
    assign ip_dsdk_adapt_bitselect66_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[136:136];

    // adapt_scalar_trunc67(ROUND,12)
    assign adapt_scalar_trunc67_in = ip_dsdk_adapt_bitselect66_b;
    assign adapt_scalar_trunc67_q = adapt_scalar_trunc67_in[0:0];

    // ip_dsdk_adapt_bitselect64(BITSELECT,83)
    assign ip_dsdk_adapt_bitselect64_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[128:128];

    // adapt_scalar_trunc65(ROUND,11)
    assign adapt_scalar_trunc65_in = ip_dsdk_adapt_bitselect64_b;
    assign adapt_scalar_trunc65_q = adapt_scalar_trunc65_in[0:0];

    // ip_dsdk_adapt_bitselect62(BITSELECT,82)
    assign ip_dsdk_adapt_bitselect62_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[127:64];

    // ip_dsdk_adapt_bitselect60(BITSELECT,81)
    assign ip_dsdk_adapt_bitselect60_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[40:40];

    // adapt_scalar_trunc61(ROUND,10)
    assign adapt_scalar_trunc61_in = ip_dsdk_adapt_bitselect60_b;
    assign adapt_scalar_trunc61_q = adapt_scalar_trunc61_in[0:0];

    // ip_dsdk_adapt_bitselect58(BITSELECT,80)
    assign ip_dsdk_adapt_bitselect58_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[32:32];

    // adapt_scalar_trunc59(ROUND,9)
    assign adapt_scalar_trunc59_in = ip_dsdk_adapt_bitselect58_b;
    assign adapt_scalar_trunc59_q = adapt_scalar_trunc59_in[0:0];

    // ip_dsdk_adapt_bitselect56(BITSELECT,79)
    assign ip_dsdk_adapt_bitselect56_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[24:24];

    // adapt_scalar_trunc57(ROUND,8)
    assign adapt_scalar_trunc57_in = ip_dsdk_adapt_bitselect56_b;
    assign adapt_scalar_trunc57_q = adapt_scalar_trunc57_in[0:0];

    // ip_dsdk_adapt_bitselect54(BITSELECT,78)
    assign ip_dsdk_adapt_bitselect54_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[16:16];

    // adapt_scalar_trunc55(ROUND,7)
    assign adapt_scalar_trunc55_in = ip_dsdk_adapt_bitselect54_b;
    assign adapt_scalar_trunc55_q = adapt_scalar_trunc55_in[0:0];

    // ip_dsdk_adapt_bitselect52(BITSELECT,77)
    assign ip_dsdk_adapt_bitselect52_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[8:8];

    // adapt_scalar_trunc53(ROUND,6)
    assign adapt_scalar_trunc53_in = ip_dsdk_adapt_bitselect52_b;
    assign adapt_scalar_trunc53_q = adapt_scalar_trunc53_in[0:0];

    // ip_dsdk_adapt_bitselect50(BITSELECT,76)
    assign ip_dsdk_adapt_bitselect50_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_data[0:0];

    // adapt_scalar_trunc51(ROUND,5)
    assign adapt_scalar_trunc51_in = ip_dsdk_adapt_bitselect50_b;
    assign adapt_scalar_trunc51_q = adapt_scalar_trunc51_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,119)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc51_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc53_q;
    assign out_o_data_2_tpl = adapt_scalar_trunc55_q;
    assign out_o_data_3_tpl = adapt_scalar_trunc57_q;
    assign out_o_data_4_tpl = adapt_scalar_trunc59_q;
    assign out_o_data_5_tpl = adapt_scalar_trunc61_q;
    assign out_o_data_6_tpl = ip_dsdk_adapt_bitselect62_b;
    assign out_o_data_7_tpl = adapt_scalar_trunc65_q;
    assign out_o_data_8_tpl = adapt_scalar_trunc67_q;
    assign out_o_data_9_tpl = ip_dsdk_adapt_bitselect68_b;
    assign out_o_data_10_tpl = adapt_scalar_trunc71_q;
    assign out_o_data_11_tpl = ip_dsdk_adapt_bitselect72_b;
    assign out_o_data_12_tpl = adapt_scalar_trunc75_q;
    assign out_o_data_13_tpl = adapt_scalar_trunc77_q;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect78_b;
    assign out_o_data_15_tpl = adapt_scalar_trunc81_q;
    assign out_o_data_16_tpl = ip_dsdk_adapt_bitselect82_b;
    assign out_o_data_17_tpl = ip_dsdk_adapt_bitselect84_b;
    assign out_o_data_18_tpl = adapt_scalar_trunc87_q;
    assign out_o_data_19_tpl = ip_dsdk_adapt_bitselect88_b;
    assign out_o_data_20_tpl = ip_dsdk_adapt_bitselect90_b;
    assign out_o_data_21_tpl = adapt_scalar_trunc93_q;
    assign out_o_data_22_tpl = ip_dsdk_adapt_bitselect94_b;
    assign out_o_data_23_tpl = ip_dsdk_adapt_bitselect96_b;
    assign out_o_data_24_tpl = adapt_scalar_trunc99_q;
    assign out_o_data_25_tpl = adapt_scalar_trunc101_q;
    assign out_o_data_26_tpl = ip_dsdk_adapt_bitselect102_b;
    assign out_o_data_27_tpl = ip_dsdk_adapt_bitselect104_b;
    assign out_o_data_28_tpl = ip_dsdk_adapt_bitselect106_b;
    assign out_o_data_29_tpl = adapt_scalar_trunc109_q;
    assign out_o_data_30_tpl = ip_dsdk_adapt_bitselect110_b;
    assign out_o_data_31_tpl = ip_dsdk_adapt_bitselect112_b;
    assign out_o_data_32_tpl = adapt_scalar_trunc115_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body16_maxpool2ds_c0_exit330_maxpool2d0_o_valid;

endmodule
