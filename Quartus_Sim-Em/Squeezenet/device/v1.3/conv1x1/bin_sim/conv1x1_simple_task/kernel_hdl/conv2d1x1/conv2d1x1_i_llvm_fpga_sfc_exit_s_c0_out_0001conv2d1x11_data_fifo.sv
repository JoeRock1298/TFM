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
// SystemVerilog created on Wed May 17 13:49:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_llvm_fpga_sfc_exit_s_c0_out_0001conv2d1x11_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [0:0] in_i_data_2_tpl,
    input wire [31:0] in_i_data_3_tpl,
    input wire [63:0] in_i_data_4_tpl,
    input wire [63:0] in_i_data_5_tpl,
    input wire [31:0] in_i_data_6_tpl,
    input wire [0:0] in_i_data_7_tpl,
    input wire [0:0] in_i_data_8_tpl,
    input wire [31:0] in_i_data_9_tpl,
    input wire [0:0] in_i_data_10_tpl,
    input wire [63:0] in_i_data_11_tpl,
    input wire [63:0] in_i_data_12_tpl,
    input wire [31:0] in_i_data_13_tpl,
    input wire [0:0] in_i_data_14_tpl,
    input wire [0:0] in_i_data_15_tpl,
    input wire [32:0] in_i_data_16_tpl,
    input wire [31:0] in_i_data_17_tpl,
    input wire [0:0] in_i_data_18_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [0:0] out_o_data_2_tpl,
    output wire [31:0] out_o_data_3_tpl,
    output wire [63:0] out_o_data_4_tpl,
    output wire [63:0] out_o_data_5_tpl,
    output wire [31:0] out_o_data_6_tpl,
    output wire [0:0] out_o_data_7_tpl,
    output wire [0:0] out_o_data_8_tpl,
    output wire [31:0] out_o_data_9_tpl,
    output wire [0:0] out_o_data_10_tpl,
    output wire [63:0] out_o_data_11_tpl,
    output wire [63:0] out_o_data_12_tpl,
    output wire [31:0] out_o_data_13_tpl,
    output wire [0:0] out_o_data_14_tpl,
    output wire [0:0] out_o_data_15_tpl,
    output wire [32:0] out_o_data_16_tpl,
    output wire [31:0] out_o_data_17_tpl,
    output wire [0:0] out_o_data_18_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc34_in;
    wire [0:0] adapt_scalar_trunc34_q;
    wire [0:0] adapt_scalar_trunc36_in;
    wire [0:0] adapt_scalar_trunc36_q;
    wire [0:0] adapt_scalar_trunc38_in;
    wire [0:0] adapt_scalar_trunc38_q;
    wire [0:0] adapt_scalar_trunc48_in;
    wire [0:0] adapt_scalar_trunc48_q;
    wire [0:0] adapt_scalar_trunc50_in;
    wire [0:0] adapt_scalar_trunc50_q;
    wire [0:0] adapt_scalar_trunc54_in;
    wire [0:0] adapt_scalar_trunc54_q;
    wire [0:0] adapt_scalar_trunc62_in;
    wire [0:0] adapt_scalar_trunc62_q;
    wire [0:0] adapt_scalar_trunc64_in;
    wire [0:0] adapt_scalar_trunc64_q;
    wire [32:0] adapt_scalar_trunc66_in;
    wire [32:0] adapt_scalar_trunc66_q;
    wire [0:0] adapt_scalar_trunc70_in;
    wire [0:0] adapt_scalar_trunc70_q;
    wire [15:0] c_i16_014_q;
    wire [23:0] c_i24_019_q;
    wire [30:0] c_i31_026_q;
    wire [6:0] c_i7_011_q;
    wire [7:0] c_i8_09_q;
    wire [639:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension10_q;
    wire [7:0] element_extension12_q;
    wire [7:0] element_extension17_q;
    wire [7:0] element_extension20_q;
    wire [7:0] element_extension22_q;
    wire [63:0] element_extension25_q;
    wire [7:0] element_extension29_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension7_q;
    wire [639:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_almost_full_bitsignaltemp;
    wire [639:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect33_b;
    wire [0:0] ip_dsdk_adapt_bitselect35_b;
    wire [0:0] ip_dsdk_adapt_bitselect37_b;
    wire [31:0] ip_dsdk_adapt_bitselect39_b;
    wire [63:0] ip_dsdk_adapt_bitselect41_b;
    wire [63:0] ip_dsdk_adapt_bitselect43_b;
    wire [31:0] ip_dsdk_adapt_bitselect45_b;
    wire [0:0] ip_dsdk_adapt_bitselect47_b;
    wire [0:0] ip_dsdk_adapt_bitselect49_b;
    wire [31:0] ip_dsdk_adapt_bitselect51_b;
    wire [0:0] ip_dsdk_adapt_bitselect53_b;
    wire [63:0] ip_dsdk_adapt_bitselect55_b;
    wire [63:0] ip_dsdk_adapt_bitselect57_b;
    wire [31:0] ip_dsdk_adapt_bitselect59_b;
    wire [0:0] ip_dsdk_adapt_bitselect61_b;
    wire [0:0] ip_dsdk_adapt_bitselect63_b;
    wire [32:0] ip_dsdk_adapt_bitselect65_b;
    wire [31:0] ip_dsdk_adapt_bitselect67_b;
    wire [0:0] ip_dsdk_adapt_bitselect69_b;


    // c_i7_011(CONSTANT,21)
    assign c_i7_011_q = $unsigned(7'b0000000);

    // element_extension29(BITJOIN,38)
    assign element_extension29_q = {c_i7_011_q, in_i_data_18_tpl};

    // c_i31_026(CONSTANT,20)
    assign c_i31_026_q = $unsigned(31'b0000000000000000000000000000000);

    // element_extension25(BITJOIN,37)
    assign element_extension25_q = {c_i31_026_q, in_i_data_16_tpl};

    // element_extension22(BITJOIN,36)
    assign element_extension22_q = {c_i7_011_q, in_i_data_15_tpl};

    // element_extension20(BITJOIN,35)
    assign element_extension20_q = {c_i7_011_q, in_i_data_14_tpl};

    // c_i24_019(CONSTANT,18)
    assign c_i24_019_q = $unsigned(24'b000000000000000000000000);

    // element_extension17(BITJOIN,34)
    assign element_extension17_q = {c_i7_011_q, in_i_data_10_tpl};

    // c_i16_014(CONSTANT,16)
    assign c_i16_014_q = $unsigned(16'b0000000000000000);

    // element_extension12(BITJOIN,33)
    assign element_extension12_q = {c_i7_011_q, in_i_data_8_tpl};

    // element_extension10(BITJOIN,32)
    assign element_extension10_q = {c_i7_011_q, in_i_data_7_tpl};

    // c_i8_09(CONSTANT,30)
    assign c_i8_09_q = $unsigned(8'b00000000);

    // element_extension7(BITJOIN,41)
    assign element_extension7_q = {c_i7_011_q, in_i_data_2_tpl};

    // element_extension5(BITJOIN,40)
    assign element_extension5_q = {c_i7_011_q, in_i_data_1_tpl};

    // element_extension3(BITJOIN,39)
    assign element_extension3_q = {c_i7_011_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,31)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i24_019_q, element_extension29_q, in_i_data_17_tpl, element_extension25_q, c_i16_014_q, element_extension22_q, element_extension20_q, in_i_data_13_tpl, in_i_data_12_tpl, in_i_data_11_tpl, c_i24_019_q, element_extension17_q, in_i_data_9_tpl, c_i16_014_q, element_extension12_q, element_extension10_q, in_i_data_6_tpl, in_i_data_5_tpl, in_i_data_4_tpl, in_i_data_3_tpl, c_i8_09_q, element_extension7_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10(EXTIFACE,42)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(640)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,72)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_stall;

    // ip_dsdk_adapt_bitselect69(BITSELECT,61)
    assign ip_dsdk_adapt_bitselect69_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_data[608:608];

    // adapt_scalar_trunc70(ROUND,11)
    assign adapt_scalar_trunc70_in = ip_dsdk_adapt_bitselect69_b;
    assign adapt_scalar_trunc70_q = adapt_scalar_trunc70_in[0:0];

    // ip_dsdk_adapt_bitselect67(BITSELECT,60)
    assign ip_dsdk_adapt_bitselect67_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_data[607:576];

    // ip_dsdk_adapt_bitselect65(BITSELECT,59)
    assign ip_dsdk_adapt_bitselect65_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_data[544:512];

    // adapt_scalar_trunc66(ROUND,10)
    assign adapt_scalar_trunc66_in = ip_dsdk_adapt_bitselect65_b;
    assign adapt_scalar_trunc66_q = adapt_scalar_trunc66_in[32:0];

    // ip_dsdk_adapt_bitselect63(BITSELECT,58)
    assign ip_dsdk_adapt_bitselect63_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_data[488:488];

    // adapt_scalar_trunc64(ROUND,9)
    assign adapt_scalar_trunc64_in = ip_dsdk_adapt_bitselect63_b;
    assign adapt_scalar_trunc64_q = adapt_scalar_trunc64_in[0:0];

    // ip_dsdk_adapt_bitselect61(BITSELECT,57)
    assign ip_dsdk_adapt_bitselect61_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_data[480:480];

    // adapt_scalar_trunc62(ROUND,8)
    assign adapt_scalar_trunc62_in = ip_dsdk_adapt_bitselect61_b;
    assign adapt_scalar_trunc62_q = adapt_scalar_trunc62_in[0:0];

    // ip_dsdk_adapt_bitselect59(BITSELECT,56)
    assign ip_dsdk_adapt_bitselect59_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_data[479:448];

    // ip_dsdk_adapt_bitselect57(BITSELECT,55)
    assign ip_dsdk_adapt_bitselect57_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_data[447:384];

    // ip_dsdk_adapt_bitselect55(BITSELECT,54)
    assign ip_dsdk_adapt_bitselect55_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_data[383:320];

    // ip_dsdk_adapt_bitselect53(BITSELECT,53)
    assign ip_dsdk_adapt_bitselect53_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_data[288:288];

    // adapt_scalar_trunc54(ROUND,7)
    assign adapt_scalar_trunc54_in = ip_dsdk_adapt_bitselect53_b;
    assign adapt_scalar_trunc54_q = adapt_scalar_trunc54_in[0:0];

    // ip_dsdk_adapt_bitselect51(BITSELECT,52)
    assign ip_dsdk_adapt_bitselect51_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_data[287:256];

    // ip_dsdk_adapt_bitselect49(BITSELECT,51)
    assign ip_dsdk_adapt_bitselect49_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_data[232:232];

    // adapt_scalar_trunc50(ROUND,6)
    assign adapt_scalar_trunc50_in = ip_dsdk_adapt_bitselect49_b;
    assign adapt_scalar_trunc50_q = adapt_scalar_trunc50_in[0:0];

    // ip_dsdk_adapt_bitselect47(BITSELECT,50)
    assign ip_dsdk_adapt_bitselect47_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_data[224:224];

    // adapt_scalar_trunc48(ROUND,5)
    assign adapt_scalar_trunc48_in = ip_dsdk_adapt_bitselect47_b;
    assign adapt_scalar_trunc48_q = adapt_scalar_trunc48_in[0:0];

    // ip_dsdk_adapt_bitselect45(BITSELECT,49)
    assign ip_dsdk_adapt_bitselect45_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_data[223:192];

    // ip_dsdk_adapt_bitselect43(BITSELECT,48)
    assign ip_dsdk_adapt_bitselect43_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_data[191:128];

    // ip_dsdk_adapt_bitselect41(BITSELECT,47)
    assign ip_dsdk_adapt_bitselect41_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_data[127:64];

    // ip_dsdk_adapt_bitselect39(BITSELECT,46)
    assign ip_dsdk_adapt_bitselect39_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_data[63:32];

    // ip_dsdk_adapt_bitselect37(BITSELECT,45)
    assign ip_dsdk_adapt_bitselect37_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_data[16:16];

    // adapt_scalar_trunc38(ROUND,4)
    assign adapt_scalar_trunc38_in = ip_dsdk_adapt_bitselect37_b;
    assign adapt_scalar_trunc38_q = adapt_scalar_trunc38_in[0:0];

    // ip_dsdk_adapt_bitselect35(BITSELECT,44)
    assign ip_dsdk_adapt_bitselect35_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_data[8:8];

    // adapt_scalar_trunc36(ROUND,3)
    assign adapt_scalar_trunc36_in = ip_dsdk_adapt_bitselect35_b;
    assign adapt_scalar_trunc36_q = adapt_scalar_trunc36_in[0:0];

    // ip_dsdk_adapt_bitselect33(BITSELECT,43)
    assign ip_dsdk_adapt_bitselect33_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_data[0:0];

    // adapt_scalar_trunc34(ROUND,2)
    assign adapt_scalar_trunc34_in = ip_dsdk_adapt_bitselect33_b;
    assign adapt_scalar_trunc34_q = adapt_scalar_trunc34_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,74)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc34_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc36_q;
    assign out_o_data_2_tpl = adapt_scalar_trunc38_q;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect39_b;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect41_b;
    assign out_o_data_5_tpl = ip_dsdk_adapt_bitselect43_b;
    assign out_o_data_6_tpl = ip_dsdk_adapt_bitselect45_b;
    assign out_o_data_7_tpl = adapt_scalar_trunc48_q;
    assign out_o_data_8_tpl = adapt_scalar_trunc50_q;
    assign out_o_data_9_tpl = ip_dsdk_adapt_bitselect51_b;
    assign out_o_data_10_tpl = adapt_scalar_trunc54_q;
    assign out_o_data_11_tpl = ip_dsdk_adapt_bitselect55_b;
    assign out_o_data_12_tpl = ip_dsdk_adapt_bitselect57_b;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect59_b;
    assign out_o_data_14_tpl = adapt_scalar_trunc62_q;
    assign out_o_data_15_tpl = adapt_scalar_trunc64_q;
    assign out_o_data_16_tpl = adapt_scalar_trunc66_q;
    assign out_o_data_17_tpl = ip_dsdk_adapt_bitselect67_b;
    assign out_o_data_18_tpl = adapt_scalar_trunc70_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond5_preheader_conv2d1x1s_c0_exit102_conv2d1x10_o_valid;

endmodule
