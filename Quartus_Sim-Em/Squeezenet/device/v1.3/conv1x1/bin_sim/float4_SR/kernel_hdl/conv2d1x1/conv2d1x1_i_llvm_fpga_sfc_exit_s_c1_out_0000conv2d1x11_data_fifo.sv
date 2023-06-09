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

// SystemVerilog created from conv2d1x1_i_llvm_fpga_sfc_exit_s_c1_out_0000conv2d1x11_data_fifo
// SystemVerilog created on Wed May 24 11:22:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_llvm_fpga_sfc_exit_s_c1_out_0000conv2d1x11_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [31:0] in_i_data_1_tpl,
    input wire [31:0] in_i_data_2_tpl,
    input wire [31:0] in_i_data_3_tpl,
    input wire [31:0] in_i_data_4_tpl,
    input wire [31:0] in_i_data_5_tpl,
    input wire [31:0] in_i_data_6_tpl,
    input wire [31:0] in_i_data_7_tpl,
    input wire [31:0] in_i_data_8_tpl,
    input wire [31:0] in_i_data_9_tpl,
    input wire [31:0] in_i_data_10_tpl,
    input wire [31:0] in_i_data_11_tpl,
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
    input wire [31:0] in_i_data_28_tpl,
    input wire [31:0] in_i_data_29_tpl,
    input wire [31:0] in_i_data_30_tpl,
    input wire [31:0] in_i_data_31_tpl,
    input wire [31:0] in_i_data_32_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [31:0] out_o_data_1_tpl,
    output wire [31:0] out_o_data_2_tpl,
    output wire [31:0] out_o_data_3_tpl,
    output wire [31:0] out_o_data_4_tpl,
    output wire [31:0] out_o_data_5_tpl,
    output wire [31:0] out_o_data_6_tpl,
    output wire [31:0] out_o_data_7_tpl,
    output wire [31:0] out_o_data_8_tpl,
    output wire [31:0] out_o_data_9_tpl,
    output wire [31:0] out_o_data_10_tpl,
    output wire [31:0] out_o_data_11_tpl,
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
    output wire [31:0] out_o_data_28_tpl,
    output wire [31:0] out_o_data_29_tpl,
    output wire [31:0] out_o_data_30_tpl,
    output wire [31:0] out_o_data_31_tpl,
    output wire [31:0] out_o_data_32_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc72_in;
    wire [0:0] adapt_scalar_trunc72_q;
    wire [23:0] c_i24_05_q;
    wire [6:0] c_i7_04_q;
    wire [1055:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension3_q;
    wire [1055:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_almost_full_bitsignaltemp;
    wire [1055:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_valid_bitsignaltemp;
    wire [31:0] ip_dsdk_adapt_bitselect101_b;
    wire [31:0] ip_dsdk_adapt_bitselect103_b;
    wire [31:0] ip_dsdk_adapt_bitselect105_b;
    wire [31:0] ip_dsdk_adapt_bitselect107_b;
    wire [31:0] ip_dsdk_adapt_bitselect109_b;
    wire [31:0] ip_dsdk_adapt_bitselect111_b;
    wire [31:0] ip_dsdk_adapt_bitselect113_b;
    wire [31:0] ip_dsdk_adapt_bitselect115_b;
    wire [31:0] ip_dsdk_adapt_bitselect117_b;
    wire [31:0] ip_dsdk_adapt_bitselect119_b;
    wire [31:0] ip_dsdk_adapt_bitselect121_b;
    wire [31:0] ip_dsdk_adapt_bitselect123_b;
    wire [31:0] ip_dsdk_adapt_bitselect125_b;
    wire [31:0] ip_dsdk_adapt_bitselect127_b;
    wire [31:0] ip_dsdk_adapt_bitselect129_b;
    wire [31:0] ip_dsdk_adapt_bitselect131_b;
    wire [31:0] ip_dsdk_adapt_bitselect133_b;
    wire [31:0] ip_dsdk_adapt_bitselect135_b;
    wire [0:0] ip_dsdk_adapt_bitselect71_b;
    wire [31:0] ip_dsdk_adapt_bitselect73_b;
    wire [31:0] ip_dsdk_adapt_bitselect75_b;
    wire [31:0] ip_dsdk_adapt_bitselect77_b;
    wire [31:0] ip_dsdk_adapt_bitselect79_b;
    wire [31:0] ip_dsdk_adapt_bitselect81_b;
    wire [31:0] ip_dsdk_adapt_bitselect83_b;
    wire [31:0] ip_dsdk_adapt_bitselect85_b;
    wire [31:0] ip_dsdk_adapt_bitselect87_b;
    wire [31:0] ip_dsdk_adapt_bitselect89_b;
    wire [31:0] ip_dsdk_adapt_bitselect91_b;
    wire [31:0] ip_dsdk_adapt_bitselect93_b;
    wire [31:0] ip_dsdk_adapt_bitselect95_b;
    wire [31:0] ip_dsdk_adapt_bitselect97_b;
    wire [31:0] ip_dsdk_adapt_bitselect99_b;


    // c_i24_05(CONSTANT,67)
    assign c_i24_05_q = $unsigned(24'b000000000000000000000000);

    // c_i7_04(CONSTANT,68)
    assign c_i7_04_q = $unsigned(7'b0000000);

    // element_extension3(BITJOIN,70)
    assign element_extension3_q = {c_i7_04_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,69)
    assign dsdk_ip_adapt_bitjoin1_q = {in_i_data_32_tpl, in_i_data_31_tpl, in_i_data_30_tpl, in_i_data_29_tpl, in_i_data_28_tpl, in_i_data_27_tpl, in_i_data_26_tpl, in_i_data_25_tpl, in_i_data_24_tpl, in_i_data_23_tpl, in_i_data_22_tpl, in_i_data_21_tpl, in_i_data_20_tpl, in_i_data_19_tpl, in_i_data_18_tpl, in_i_data_17_tpl, in_i_data_16_tpl, in_i_data_15_tpl, in_i_data_14_tpl, in_i_data_13_tpl, in_i_data_12_tpl, in_i_data_11_tpl, in_i_data_10_tpl, in_i_data_9_tpl, in_i_data_8_tpl, in_i_data_7_tpl, in_i_data_6_tpl, in_i_data_5_tpl, in_i_data_4_tpl, in_i_data_3_tpl, in_i_data_2_tpl, in_i_data_1_tpl, c_i24_05_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10(EXTIFACE,71)
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_stall[0] = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_valid[0] = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(1056)
    ) thei_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,138)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_stall;

    // ip_dsdk_adapt_bitselect135(BITSELECT,89)
    assign ip_dsdk_adapt_bitselect135_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[1055:1024];

    // ip_dsdk_adapt_bitselect133(BITSELECT,88)
    assign ip_dsdk_adapt_bitselect133_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[1023:992];

    // ip_dsdk_adapt_bitselect131(BITSELECT,87)
    assign ip_dsdk_adapt_bitselect131_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[991:960];

    // ip_dsdk_adapt_bitselect129(BITSELECT,86)
    assign ip_dsdk_adapt_bitselect129_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[959:928];

    // ip_dsdk_adapt_bitselect127(BITSELECT,85)
    assign ip_dsdk_adapt_bitselect127_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[927:896];

    // ip_dsdk_adapt_bitselect125(BITSELECT,84)
    assign ip_dsdk_adapt_bitselect125_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[895:864];

    // ip_dsdk_adapt_bitselect123(BITSELECT,83)
    assign ip_dsdk_adapt_bitselect123_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[863:832];

    // ip_dsdk_adapt_bitselect121(BITSELECT,82)
    assign ip_dsdk_adapt_bitselect121_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[831:800];

    // ip_dsdk_adapt_bitselect119(BITSELECT,81)
    assign ip_dsdk_adapt_bitselect119_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[799:768];

    // ip_dsdk_adapt_bitselect117(BITSELECT,80)
    assign ip_dsdk_adapt_bitselect117_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[767:736];

    // ip_dsdk_adapt_bitselect115(BITSELECT,79)
    assign ip_dsdk_adapt_bitselect115_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[735:704];

    // ip_dsdk_adapt_bitselect113(BITSELECT,78)
    assign ip_dsdk_adapt_bitselect113_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[703:672];

    // ip_dsdk_adapt_bitselect111(BITSELECT,77)
    assign ip_dsdk_adapt_bitselect111_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[671:640];

    // ip_dsdk_adapt_bitselect109(BITSELECT,76)
    assign ip_dsdk_adapt_bitselect109_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[639:608];

    // ip_dsdk_adapt_bitselect107(BITSELECT,75)
    assign ip_dsdk_adapt_bitselect107_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[607:576];

    // ip_dsdk_adapt_bitselect105(BITSELECT,74)
    assign ip_dsdk_adapt_bitselect105_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[575:544];

    // ip_dsdk_adapt_bitselect103(BITSELECT,73)
    assign ip_dsdk_adapt_bitselect103_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[543:512];

    // ip_dsdk_adapt_bitselect101(BITSELECT,72)
    assign ip_dsdk_adapt_bitselect101_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[511:480];

    // ip_dsdk_adapt_bitselect99(BITSELECT,104)
    assign ip_dsdk_adapt_bitselect99_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[479:448];

    // ip_dsdk_adapt_bitselect97(BITSELECT,103)
    assign ip_dsdk_adapt_bitselect97_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[447:416];

    // ip_dsdk_adapt_bitselect95(BITSELECT,102)
    assign ip_dsdk_adapt_bitselect95_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[415:384];

    // ip_dsdk_adapt_bitselect93(BITSELECT,101)
    assign ip_dsdk_adapt_bitselect93_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[383:352];

    // ip_dsdk_adapt_bitselect91(BITSELECT,100)
    assign ip_dsdk_adapt_bitselect91_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[351:320];

    // ip_dsdk_adapt_bitselect89(BITSELECT,99)
    assign ip_dsdk_adapt_bitselect89_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[319:288];

    // ip_dsdk_adapt_bitselect87(BITSELECT,98)
    assign ip_dsdk_adapt_bitselect87_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[287:256];

    // ip_dsdk_adapt_bitselect85(BITSELECT,97)
    assign ip_dsdk_adapt_bitselect85_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[255:224];

    // ip_dsdk_adapt_bitselect83(BITSELECT,96)
    assign ip_dsdk_adapt_bitselect83_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[223:192];

    // ip_dsdk_adapt_bitselect81(BITSELECT,95)
    assign ip_dsdk_adapt_bitselect81_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[191:160];

    // ip_dsdk_adapt_bitselect79(BITSELECT,94)
    assign ip_dsdk_adapt_bitselect79_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[159:128];

    // ip_dsdk_adapt_bitselect77(BITSELECT,93)
    assign ip_dsdk_adapt_bitselect77_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[127:96];

    // ip_dsdk_adapt_bitselect75(BITSELECT,92)
    assign ip_dsdk_adapt_bitselect75_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[95:64];

    // ip_dsdk_adapt_bitselect73(BITSELECT,91)
    assign ip_dsdk_adapt_bitselect73_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[63:32];

    // ip_dsdk_adapt_bitselect71(BITSELECT,90)
    assign ip_dsdk_adapt_bitselect71_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_data[0:0];

    // adapt_scalar_trunc72(ROUND,2)
    assign adapt_scalar_trunc72_in = ip_dsdk_adapt_bitselect71_b;
    assign adapt_scalar_trunc72_q = adapt_scalar_trunc72_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,140)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc72_q;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect73_b;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect75_b;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect77_b;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect79_b;
    assign out_o_data_5_tpl = ip_dsdk_adapt_bitselect81_b;
    assign out_o_data_6_tpl = ip_dsdk_adapt_bitselect83_b;
    assign out_o_data_7_tpl = ip_dsdk_adapt_bitselect85_b;
    assign out_o_data_8_tpl = ip_dsdk_adapt_bitselect87_b;
    assign out_o_data_9_tpl = ip_dsdk_adapt_bitselect89_b;
    assign out_o_data_10_tpl = ip_dsdk_adapt_bitselect91_b;
    assign out_o_data_11_tpl = ip_dsdk_adapt_bitselect93_b;
    assign out_o_data_12_tpl = ip_dsdk_adapt_bitselect95_b;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect97_b;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect99_b;
    assign out_o_data_15_tpl = ip_dsdk_adapt_bitselect101_b;
    assign out_o_data_16_tpl = ip_dsdk_adapt_bitselect103_b;
    assign out_o_data_17_tpl = ip_dsdk_adapt_bitselect105_b;
    assign out_o_data_18_tpl = ip_dsdk_adapt_bitselect107_b;
    assign out_o_data_19_tpl = ip_dsdk_adapt_bitselect109_b;
    assign out_o_data_20_tpl = ip_dsdk_adapt_bitselect111_b;
    assign out_o_data_21_tpl = ip_dsdk_adapt_bitselect113_b;
    assign out_o_data_22_tpl = ip_dsdk_adapt_bitselect115_b;
    assign out_o_data_23_tpl = ip_dsdk_adapt_bitselect117_b;
    assign out_o_data_24_tpl = ip_dsdk_adapt_bitselect119_b;
    assign out_o_data_25_tpl = ip_dsdk_adapt_bitselect121_b;
    assign out_o_data_26_tpl = ip_dsdk_adapt_bitselect123_b;
    assign out_o_data_27_tpl = ip_dsdk_adapt_bitselect125_b;
    assign out_o_data_28_tpl = ip_dsdk_adapt_bitselect127_b;
    assign out_o_data_29_tpl = ip_dsdk_adapt_bitselect129_b;
    assign out_o_data_30_tpl = ip_dsdk_adapt_bitselect131_b;
    assign out_o_data_31_tpl = ip_dsdk_adapt_bitselect133_b;
    assign out_o_data_32_tpl = ip_dsdk_adapt_bitselect135_b;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit_conv2d1x10_o_valid;

endmodule
