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

// SystemVerilog created from conv2d1x1_i_llvm_fpga_sfc_exit_s_c1_out_0001conv2d1x11_data_fifo
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_llvm_fpga_sfc_exit_s_c1_out_0001conv2d1x11_data_fifo (
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
    input wire [31:0] in_i_data_45_tpl,
    input wire [31:0] in_i_data_46_tpl,
    input wire [31:0] in_i_data_47_tpl,
    input wire [31:0] in_i_data_48_tpl,
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
    output wire [31:0] out_o_data_45_tpl,
    output wire [31:0] out_o_data_46_tpl,
    output wire [31:0] out_o_data_47_tpl,
    output wire [31:0] out_o_data_48_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc104_in;
    wire [0:0] adapt_scalar_trunc104_q;
    wire [23:0] c_i24_05_q;
    wire [6:0] c_i7_04_q;
    wire [1567:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension3_q;
    wire [1567:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_almost_full_bitsignaltemp;
    wire [1567:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect103_b;
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
    wire [31:0] ip_dsdk_adapt_bitselect137_b;
    wire [31:0] ip_dsdk_adapt_bitselect139_b;
    wire [31:0] ip_dsdk_adapt_bitselect141_b;
    wire [31:0] ip_dsdk_adapt_bitselect143_b;
    wire [31:0] ip_dsdk_adapt_bitselect145_b;
    wire [31:0] ip_dsdk_adapt_bitselect147_b;
    wire [31:0] ip_dsdk_adapt_bitselect149_b;
    wire [31:0] ip_dsdk_adapt_bitselect151_b;
    wire [31:0] ip_dsdk_adapt_bitselect153_b;
    wire [31:0] ip_dsdk_adapt_bitselect155_b;
    wire [31:0] ip_dsdk_adapt_bitselect157_b;
    wire [31:0] ip_dsdk_adapt_bitselect159_b;
    wire [31:0] ip_dsdk_adapt_bitselect161_b;
    wire [31:0] ip_dsdk_adapt_bitselect163_b;
    wire [31:0] ip_dsdk_adapt_bitselect165_b;
    wire [31:0] ip_dsdk_adapt_bitselect167_b;
    wire [31:0] ip_dsdk_adapt_bitselect169_b;
    wire [31:0] ip_dsdk_adapt_bitselect171_b;
    wire [31:0] ip_dsdk_adapt_bitselect173_b;
    wire [31:0] ip_dsdk_adapt_bitselect175_b;
    wire [31:0] ip_dsdk_adapt_bitselect177_b;
    wire [31:0] ip_dsdk_adapt_bitselect179_b;
    wire [31:0] ip_dsdk_adapt_bitselect181_b;
    wire [31:0] ip_dsdk_adapt_bitselect183_b;
    wire [31:0] ip_dsdk_adapt_bitselect185_b;
    wire [31:0] ip_dsdk_adapt_bitselect187_b;
    wire [31:0] ip_dsdk_adapt_bitselect189_b;
    wire [31:0] ip_dsdk_adapt_bitselect191_b;
    wire [31:0] ip_dsdk_adapt_bitselect193_b;
    wire [31:0] ip_dsdk_adapt_bitselect195_b;
    wire [31:0] ip_dsdk_adapt_bitselect197_b;
    wire [31:0] ip_dsdk_adapt_bitselect199_b;


    // c_i24_05(CONSTANT,99)
    assign c_i24_05_q = $unsigned(24'b000000000000000000000000);

    // c_i7_04(CONSTANT,100)
    assign c_i7_04_q = $unsigned(7'b0000000);

    // element_extension3(BITJOIN,102)
    assign element_extension3_q = {c_i7_04_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,101)
    assign dsdk_ip_adapt_bitjoin1_q = {in_i_data_48_tpl, in_i_data_47_tpl, in_i_data_46_tpl, in_i_data_45_tpl, in_i_data_44_tpl, in_i_data_43_tpl, in_i_data_42_tpl, in_i_data_41_tpl, in_i_data_40_tpl, in_i_data_39_tpl, in_i_data_38_tpl, in_i_data_37_tpl, in_i_data_36_tpl, in_i_data_35_tpl, in_i_data_34_tpl, in_i_data_33_tpl, in_i_data_32_tpl, in_i_data_31_tpl, in_i_data_30_tpl, in_i_data_29_tpl, in_i_data_28_tpl, in_i_data_27_tpl, in_i_data_26_tpl, in_i_data_25_tpl, in_i_data_24_tpl, in_i_data_23_tpl, in_i_data_22_tpl, in_i_data_21_tpl, in_i_data_20_tpl, in_i_data_19_tpl, in_i_data_18_tpl, in_i_data_17_tpl, in_i_data_16_tpl, in_i_data_15_tpl, in_i_data_14_tpl, in_i_data_13_tpl, in_i_data_12_tpl, in_i_data_11_tpl, in_i_data_10_tpl, in_i_data_9_tpl, in_i_data_8_tpl, in_i_data_7_tpl, in_i_data_6_tpl, in_i_data_5_tpl, in_i_data_4_tpl, in_i_data_3_tpl, in_i_data_2_tpl, in_i_data_1_tpl, c_i24_05_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10(EXTIFACE,103)
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_stall[0] = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_valid[0] = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(1568)
    ) thei_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,202)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_stall;

    // ip_dsdk_adapt_bitselect199(BITSELECT,152)
    assign ip_dsdk_adapt_bitselect199_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[1567:1536];

    // ip_dsdk_adapt_bitselect197(BITSELECT,151)
    assign ip_dsdk_adapt_bitselect197_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[1535:1504];

    // ip_dsdk_adapt_bitselect195(BITSELECT,150)
    assign ip_dsdk_adapt_bitselect195_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[1503:1472];

    // ip_dsdk_adapt_bitselect193(BITSELECT,149)
    assign ip_dsdk_adapt_bitselect193_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[1471:1440];

    // ip_dsdk_adapt_bitselect191(BITSELECT,148)
    assign ip_dsdk_adapt_bitselect191_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[1439:1408];

    // ip_dsdk_adapt_bitselect189(BITSELECT,147)
    assign ip_dsdk_adapt_bitselect189_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[1407:1376];

    // ip_dsdk_adapt_bitselect187(BITSELECT,146)
    assign ip_dsdk_adapt_bitselect187_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[1375:1344];

    // ip_dsdk_adapt_bitselect185(BITSELECT,145)
    assign ip_dsdk_adapt_bitselect185_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[1343:1312];

    // ip_dsdk_adapt_bitselect183(BITSELECT,144)
    assign ip_dsdk_adapt_bitselect183_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[1311:1280];

    // ip_dsdk_adapt_bitselect181(BITSELECT,143)
    assign ip_dsdk_adapt_bitselect181_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[1279:1248];

    // ip_dsdk_adapt_bitselect179(BITSELECT,142)
    assign ip_dsdk_adapt_bitselect179_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[1247:1216];

    // ip_dsdk_adapt_bitselect177(BITSELECT,141)
    assign ip_dsdk_adapt_bitselect177_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[1215:1184];

    // ip_dsdk_adapt_bitselect175(BITSELECT,140)
    assign ip_dsdk_adapt_bitselect175_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[1183:1152];

    // ip_dsdk_adapt_bitselect173(BITSELECT,139)
    assign ip_dsdk_adapt_bitselect173_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[1151:1120];

    // ip_dsdk_adapt_bitselect171(BITSELECT,138)
    assign ip_dsdk_adapt_bitselect171_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[1119:1088];

    // ip_dsdk_adapt_bitselect169(BITSELECT,137)
    assign ip_dsdk_adapt_bitselect169_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[1087:1056];

    // ip_dsdk_adapt_bitselect167(BITSELECT,136)
    assign ip_dsdk_adapt_bitselect167_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[1055:1024];

    // ip_dsdk_adapt_bitselect165(BITSELECT,135)
    assign ip_dsdk_adapt_bitselect165_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[1023:992];

    // ip_dsdk_adapt_bitselect163(BITSELECT,134)
    assign ip_dsdk_adapt_bitselect163_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[991:960];

    // ip_dsdk_adapt_bitselect161(BITSELECT,133)
    assign ip_dsdk_adapt_bitselect161_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[959:928];

    // ip_dsdk_adapt_bitselect159(BITSELECT,132)
    assign ip_dsdk_adapt_bitselect159_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[927:896];

    // ip_dsdk_adapt_bitselect157(BITSELECT,131)
    assign ip_dsdk_adapt_bitselect157_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[895:864];

    // ip_dsdk_adapt_bitselect155(BITSELECT,130)
    assign ip_dsdk_adapt_bitselect155_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[863:832];

    // ip_dsdk_adapt_bitselect153(BITSELECT,129)
    assign ip_dsdk_adapt_bitselect153_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[831:800];

    // ip_dsdk_adapt_bitselect151(BITSELECT,128)
    assign ip_dsdk_adapt_bitselect151_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[799:768];

    // ip_dsdk_adapt_bitselect149(BITSELECT,127)
    assign ip_dsdk_adapt_bitselect149_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[767:736];

    // ip_dsdk_adapt_bitselect147(BITSELECT,126)
    assign ip_dsdk_adapt_bitselect147_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[735:704];

    // ip_dsdk_adapt_bitselect145(BITSELECT,125)
    assign ip_dsdk_adapt_bitselect145_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[703:672];

    // ip_dsdk_adapt_bitselect143(BITSELECT,124)
    assign ip_dsdk_adapt_bitselect143_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[671:640];

    // ip_dsdk_adapt_bitselect141(BITSELECT,123)
    assign ip_dsdk_adapt_bitselect141_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[639:608];

    // ip_dsdk_adapt_bitselect139(BITSELECT,122)
    assign ip_dsdk_adapt_bitselect139_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[607:576];

    // ip_dsdk_adapt_bitselect137(BITSELECT,121)
    assign ip_dsdk_adapt_bitselect137_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[575:544];

    // ip_dsdk_adapt_bitselect135(BITSELECT,120)
    assign ip_dsdk_adapt_bitselect135_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[543:512];

    // ip_dsdk_adapt_bitselect133(BITSELECT,119)
    assign ip_dsdk_adapt_bitselect133_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[511:480];

    // ip_dsdk_adapt_bitselect131(BITSELECT,118)
    assign ip_dsdk_adapt_bitselect131_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[479:448];

    // ip_dsdk_adapt_bitselect129(BITSELECT,117)
    assign ip_dsdk_adapt_bitselect129_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[447:416];

    // ip_dsdk_adapt_bitselect127(BITSELECT,116)
    assign ip_dsdk_adapt_bitselect127_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[415:384];

    // ip_dsdk_adapt_bitselect125(BITSELECT,115)
    assign ip_dsdk_adapt_bitselect125_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[383:352];

    // ip_dsdk_adapt_bitselect123(BITSELECT,114)
    assign ip_dsdk_adapt_bitselect123_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[351:320];

    // ip_dsdk_adapt_bitselect121(BITSELECT,113)
    assign ip_dsdk_adapt_bitselect121_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[319:288];

    // ip_dsdk_adapt_bitselect119(BITSELECT,112)
    assign ip_dsdk_adapt_bitselect119_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[287:256];

    // ip_dsdk_adapt_bitselect117(BITSELECT,111)
    assign ip_dsdk_adapt_bitselect117_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[255:224];

    // ip_dsdk_adapt_bitselect115(BITSELECT,110)
    assign ip_dsdk_adapt_bitselect115_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[223:192];

    // ip_dsdk_adapt_bitselect113(BITSELECT,109)
    assign ip_dsdk_adapt_bitselect113_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[191:160];

    // ip_dsdk_adapt_bitselect111(BITSELECT,108)
    assign ip_dsdk_adapt_bitselect111_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[159:128];

    // ip_dsdk_adapt_bitselect109(BITSELECT,107)
    assign ip_dsdk_adapt_bitselect109_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[127:96];

    // ip_dsdk_adapt_bitselect107(BITSELECT,106)
    assign ip_dsdk_adapt_bitselect107_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[95:64];

    // ip_dsdk_adapt_bitselect105(BITSELECT,105)
    assign ip_dsdk_adapt_bitselect105_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[63:32];

    // ip_dsdk_adapt_bitselect103(BITSELECT,104)
    assign ip_dsdk_adapt_bitselect103_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_data[0:0];

    // adapt_scalar_trunc104(ROUND,2)
    assign adapt_scalar_trunc104_in = ip_dsdk_adapt_bitselect103_b;
    assign adapt_scalar_trunc104_q = adapt_scalar_trunc104_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,204)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc104_q;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect105_b;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect107_b;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect109_b;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect111_b;
    assign out_o_data_5_tpl = ip_dsdk_adapt_bitselect113_b;
    assign out_o_data_6_tpl = ip_dsdk_adapt_bitselect115_b;
    assign out_o_data_7_tpl = ip_dsdk_adapt_bitselect117_b;
    assign out_o_data_8_tpl = ip_dsdk_adapt_bitselect119_b;
    assign out_o_data_9_tpl = ip_dsdk_adapt_bitselect121_b;
    assign out_o_data_10_tpl = ip_dsdk_adapt_bitselect123_b;
    assign out_o_data_11_tpl = ip_dsdk_adapt_bitselect125_b;
    assign out_o_data_12_tpl = ip_dsdk_adapt_bitselect127_b;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect129_b;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect131_b;
    assign out_o_data_15_tpl = ip_dsdk_adapt_bitselect133_b;
    assign out_o_data_16_tpl = ip_dsdk_adapt_bitselect135_b;
    assign out_o_data_17_tpl = ip_dsdk_adapt_bitselect137_b;
    assign out_o_data_18_tpl = ip_dsdk_adapt_bitselect139_b;
    assign out_o_data_19_tpl = ip_dsdk_adapt_bitselect141_b;
    assign out_o_data_20_tpl = ip_dsdk_adapt_bitselect143_b;
    assign out_o_data_21_tpl = ip_dsdk_adapt_bitselect145_b;
    assign out_o_data_22_tpl = ip_dsdk_adapt_bitselect147_b;
    assign out_o_data_23_tpl = ip_dsdk_adapt_bitselect149_b;
    assign out_o_data_24_tpl = ip_dsdk_adapt_bitselect151_b;
    assign out_o_data_25_tpl = ip_dsdk_adapt_bitselect153_b;
    assign out_o_data_26_tpl = ip_dsdk_adapt_bitselect155_b;
    assign out_o_data_27_tpl = ip_dsdk_adapt_bitselect157_b;
    assign out_o_data_28_tpl = ip_dsdk_adapt_bitselect159_b;
    assign out_o_data_29_tpl = ip_dsdk_adapt_bitselect161_b;
    assign out_o_data_30_tpl = ip_dsdk_adapt_bitselect163_b;
    assign out_o_data_31_tpl = ip_dsdk_adapt_bitselect165_b;
    assign out_o_data_32_tpl = ip_dsdk_adapt_bitselect167_b;
    assign out_o_data_33_tpl = ip_dsdk_adapt_bitselect169_b;
    assign out_o_data_34_tpl = ip_dsdk_adapt_bitselect171_b;
    assign out_o_data_35_tpl = ip_dsdk_adapt_bitselect173_b;
    assign out_o_data_36_tpl = ip_dsdk_adapt_bitselect175_b;
    assign out_o_data_37_tpl = ip_dsdk_adapt_bitselect177_b;
    assign out_o_data_38_tpl = ip_dsdk_adapt_bitselect179_b;
    assign out_o_data_39_tpl = ip_dsdk_adapt_bitselect181_b;
    assign out_o_data_40_tpl = ip_dsdk_adapt_bitselect183_b;
    assign out_o_data_41_tpl = ip_dsdk_adapt_bitselect185_b;
    assign out_o_data_42_tpl = ip_dsdk_adapt_bitselect187_b;
    assign out_o_data_43_tpl = ip_dsdk_adapt_bitselect189_b;
    assign out_o_data_44_tpl = ip_dsdk_adapt_bitselect191_b;
    assign out_o_data_45_tpl = ip_dsdk_adapt_bitselect193_b;
    assign out_o_data_46_tpl = ip_dsdk_adapt_bitselect195_b;
    assign out_o_data_47_tpl = ip_dsdk_adapt_bitselect197_b;
    assign out_o_data_48_tpl = ip_dsdk_adapt_bitselect199_b;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c1_out_for_body14_conv2d1x1s_c1_exit591_conv2d1x10_o_valid;

endmodule
