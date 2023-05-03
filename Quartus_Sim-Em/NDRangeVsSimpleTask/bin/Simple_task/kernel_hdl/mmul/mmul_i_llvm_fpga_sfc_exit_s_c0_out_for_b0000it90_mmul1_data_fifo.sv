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

// SystemVerilog created from mmul_i_llvm_fpga_sfc_exit_s_c0_out_for_b0000it90_mmul1_data_fifo
// SystemVerilog created on Wed May  3 13:07:53 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_i_llvm_fpga_sfc_exit_s_c0_out_for_b0000it90_mmul1_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [0:0] in_i_data_2_tpl,
    input wire [31:0] in_i_data_3_tpl,
    input wire [63:0] in_i_data_4_tpl,
    input wire [0:0] in_i_data_5_tpl,
    input wire [0:0] in_i_data_6_tpl,
    input wire [31:0] in_i_data_7_tpl,
    input wire [63:0] in_i_data_8_tpl,
    input wire [0:0] in_i_data_9_tpl,
    input wire [0:0] in_i_data_10_tpl,
    input wire [0:0] in_i_data_11_tpl,
    input wire [0:0] in_i_data_12_tpl,
    input wire [0:0] in_i_data_13_tpl,
    input wire [0:0] in_i_data_14_tpl,
    input wire [0:0] in_i_data_15_tpl,
    input wire [31:0] in_i_data_16_tpl,
    input wire [0:0] in_i_data_17_tpl,
    input wire [0:0] in_i_data_18_tpl,
    input wire [0:0] in_i_data_19_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [0:0] out_o_data_2_tpl,
    output wire [31:0] out_o_data_3_tpl,
    output wire [63:0] out_o_data_4_tpl,
    output wire [0:0] out_o_data_5_tpl,
    output wire [0:0] out_o_data_6_tpl,
    output wire [31:0] out_o_data_7_tpl,
    output wire [63:0] out_o_data_8_tpl,
    output wire [0:0] out_o_data_9_tpl,
    output wire [0:0] out_o_data_10_tpl,
    output wire [0:0] out_o_data_11_tpl,
    output wire [0:0] out_o_data_12_tpl,
    output wire [0:0] out_o_data_13_tpl,
    output wire [0:0] out_o_data_14_tpl,
    output wire [0:0] out_o_data_15_tpl,
    output wire [31:0] out_o_data_16_tpl,
    output wire [0:0] out_o_data_17_tpl,
    output wire [0:0] out_o_data_18_tpl,
    output wire [0:0] out_o_data_19_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc39_in;
    wire [0:0] adapt_scalar_trunc39_q;
    wire [0:0] adapt_scalar_trunc41_in;
    wire [0:0] adapt_scalar_trunc41_q;
    wire [0:0] adapt_scalar_trunc43_in;
    wire [0:0] adapt_scalar_trunc43_q;
    wire [0:0] adapt_scalar_trunc49_in;
    wire [0:0] adapt_scalar_trunc49_q;
    wire [0:0] adapt_scalar_trunc51_in;
    wire [0:0] adapt_scalar_trunc51_q;
    wire [0:0] adapt_scalar_trunc57_in;
    wire [0:0] adapt_scalar_trunc57_q;
    wire [0:0] adapt_scalar_trunc59_in;
    wire [0:0] adapt_scalar_trunc59_q;
    wire [0:0] adapt_scalar_trunc61_in;
    wire [0:0] adapt_scalar_trunc61_q;
    wire [0:0] adapt_scalar_trunc63_in;
    wire [0:0] adapt_scalar_trunc63_q;
    wire [0:0] adapt_scalar_trunc65_in;
    wire [0:0] adapt_scalar_trunc65_q;
    wire [0:0] adapt_scalar_trunc67_in;
    wire [0:0] adapt_scalar_trunc67_q;
    wire [0:0] adapt_scalar_trunc69_in;
    wire [0:0] adapt_scalar_trunc69_q;
    wire [0:0] adapt_scalar_trunc73_in;
    wire [0:0] adapt_scalar_trunc73_q;
    wire [0:0] adapt_scalar_trunc75_in;
    wire [0:0] adapt_scalar_trunc75_q;
    wire [0:0] adapt_scalar_trunc77_in;
    wire [0:0] adapt_scalar_trunc77_q;
    wire [15:0] c_i16_014_q;
    wire [6:0] c_i7_011_q;
    wire [7:0] c_i8_029_q;
    wire [383:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension10_q;
    wire [7:0] element_extension12_q;
    wire [7:0] element_extension15_q;
    wire [7:0] element_extension17_q;
    wire [7:0] element_extension19_q;
    wire [7:0] element_extension21_q;
    wire [7:0] element_extension23_q;
    wire [7:0] element_extension25_q;
    wire [7:0] element_extension27_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension30_q;
    wire [7:0] element_extension32_q;
    wire [7:0] element_extension34_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension7_q;
    wire [383:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_almost_full_bitsignaltemp;
    wire [383:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect38_b;
    wire [0:0] ip_dsdk_adapt_bitselect40_b;
    wire [0:0] ip_dsdk_adapt_bitselect42_b;
    wire [31:0] ip_dsdk_adapt_bitselect44_b;
    wire [63:0] ip_dsdk_adapt_bitselect46_b;
    wire [0:0] ip_dsdk_adapt_bitselect48_b;
    wire [0:0] ip_dsdk_adapt_bitselect50_b;
    wire [31:0] ip_dsdk_adapt_bitselect52_b;
    wire [63:0] ip_dsdk_adapt_bitselect54_b;
    wire [0:0] ip_dsdk_adapt_bitselect56_b;
    wire [0:0] ip_dsdk_adapt_bitselect58_b;
    wire [0:0] ip_dsdk_adapt_bitselect60_b;
    wire [0:0] ip_dsdk_adapt_bitselect62_b;
    wire [0:0] ip_dsdk_adapt_bitselect64_b;
    wire [0:0] ip_dsdk_adapt_bitselect66_b;
    wire [0:0] ip_dsdk_adapt_bitselect68_b;
    wire [31:0] ip_dsdk_adapt_bitselect70_b;
    wire [0:0] ip_dsdk_adapt_bitselect72_b;
    wire [0:0] ip_dsdk_adapt_bitselect74_b;
    wire [0:0] ip_dsdk_adapt_bitselect76_b;


    // c_i7_011(CONSTANT,18)
    assign c_i7_011_q = $unsigned(7'b0000000);

    // element_extension34(BITJOIN,49)
    assign element_extension34_q = {c_i7_011_q, in_i_data_19_tpl};

    // element_extension32(BITJOIN,48)
    assign element_extension32_q = {c_i7_011_q, in_i_data_18_tpl};

    // element_extension30(BITJOIN,47)
    assign element_extension30_q = {c_i7_011_q, in_i_data_17_tpl};

    // element_extension27(BITJOIN,45)
    assign element_extension27_q = {c_i7_011_q, in_i_data_15_tpl};

    // element_extension25(BITJOIN,44)
    assign element_extension25_q = {c_i7_011_q, in_i_data_14_tpl};

    // element_extension23(BITJOIN,43)
    assign element_extension23_q = {c_i7_011_q, in_i_data_13_tpl};

    // element_extension21(BITJOIN,42)
    assign element_extension21_q = {c_i7_011_q, in_i_data_12_tpl};

    // element_extension19(BITJOIN,41)
    assign element_extension19_q = {c_i7_011_q, in_i_data_11_tpl};

    // element_extension17(BITJOIN,40)
    assign element_extension17_q = {c_i7_011_q, in_i_data_10_tpl};

    // element_extension15(BITJOIN,39)
    assign element_extension15_q = {c_i7_011_q, in_i_data_9_tpl};

    // c_i16_014(CONSTANT,17)
    assign c_i16_014_q = $unsigned(16'b0000000000000000);

    // element_extension12(BITJOIN,38)
    assign element_extension12_q = {c_i7_011_q, in_i_data_6_tpl};

    // element_extension10(BITJOIN,37)
    assign element_extension10_q = {c_i7_011_q, in_i_data_5_tpl};

    // c_i8_029(CONSTANT,33)
    assign c_i8_029_q = $unsigned(8'b00000000);

    // element_extension7(BITJOIN,51)
    assign element_extension7_q = {c_i7_011_q, in_i_data_2_tpl};

    // element_extension5(BITJOIN,50)
    assign element_extension5_q = {c_i7_011_q, in_i_data_1_tpl};

    // element_extension3(BITJOIN,46)
    assign element_extension3_q = {c_i7_011_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,36)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i8_029_q, element_extension34_q, element_extension32_q, element_extension30_q, in_i_data_16_tpl, c_i8_029_q, element_extension27_q, element_extension25_q, element_extension23_q, element_extension21_q, element_extension19_q, element_extension17_q, element_extension15_q, in_i_data_8_tpl, in_i_data_7_tpl, c_i16_014_q, element_extension12_q, element_extension10_q, in_i_data_4_tpl, in_i_data_3_tpl, c_i8_029_q, element_extension7_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0(EXTIFACE,52)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(384)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,79)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_stall;

    // ip_dsdk_adapt_bitselect76(BITSELECT,72)
    assign ip_dsdk_adapt_bitselect76_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_data[368:368];

    // adapt_scalar_trunc77(ROUND,16)
    assign adapt_scalar_trunc77_in = ip_dsdk_adapt_bitselect76_b;
    assign adapt_scalar_trunc77_q = adapt_scalar_trunc77_in[0:0];

    // ip_dsdk_adapt_bitselect74(BITSELECT,71)
    assign ip_dsdk_adapt_bitselect74_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_data[360:360];

    // adapt_scalar_trunc75(ROUND,15)
    assign adapt_scalar_trunc75_in = ip_dsdk_adapt_bitselect74_b;
    assign adapt_scalar_trunc75_q = adapt_scalar_trunc75_in[0:0];

    // ip_dsdk_adapt_bitselect72(BITSELECT,70)
    assign ip_dsdk_adapt_bitselect72_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_data[352:352];

    // adapt_scalar_trunc73(ROUND,14)
    assign adapt_scalar_trunc73_in = ip_dsdk_adapt_bitselect72_b;
    assign adapt_scalar_trunc73_q = adapt_scalar_trunc73_in[0:0];

    // ip_dsdk_adapt_bitselect70(BITSELECT,69)
    assign ip_dsdk_adapt_bitselect70_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_data[351:320];

    // ip_dsdk_adapt_bitselect68(BITSELECT,68)
    assign ip_dsdk_adapt_bitselect68_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_data[304:304];

    // adapt_scalar_trunc69(ROUND,13)
    assign adapt_scalar_trunc69_in = ip_dsdk_adapt_bitselect68_b;
    assign adapt_scalar_trunc69_q = adapt_scalar_trunc69_in[0:0];

    // ip_dsdk_adapt_bitselect66(BITSELECT,67)
    assign ip_dsdk_adapt_bitselect66_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_data[296:296];

    // adapt_scalar_trunc67(ROUND,12)
    assign adapt_scalar_trunc67_in = ip_dsdk_adapt_bitselect66_b;
    assign adapt_scalar_trunc67_q = adapt_scalar_trunc67_in[0:0];

    // ip_dsdk_adapt_bitselect64(BITSELECT,66)
    assign ip_dsdk_adapt_bitselect64_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_data[288:288];

    // adapt_scalar_trunc65(ROUND,11)
    assign adapt_scalar_trunc65_in = ip_dsdk_adapt_bitselect64_b;
    assign adapt_scalar_trunc65_q = adapt_scalar_trunc65_in[0:0];

    // ip_dsdk_adapt_bitselect62(BITSELECT,65)
    assign ip_dsdk_adapt_bitselect62_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_data[280:280];

    // adapt_scalar_trunc63(ROUND,10)
    assign adapt_scalar_trunc63_in = ip_dsdk_adapt_bitselect62_b;
    assign adapt_scalar_trunc63_q = adapt_scalar_trunc63_in[0:0];

    // ip_dsdk_adapt_bitselect60(BITSELECT,64)
    assign ip_dsdk_adapt_bitselect60_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_data[272:272];

    // adapt_scalar_trunc61(ROUND,9)
    assign adapt_scalar_trunc61_in = ip_dsdk_adapt_bitselect60_b;
    assign adapt_scalar_trunc61_q = adapt_scalar_trunc61_in[0:0];

    // ip_dsdk_adapt_bitselect58(BITSELECT,63)
    assign ip_dsdk_adapt_bitselect58_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_data[264:264];

    // adapt_scalar_trunc59(ROUND,8)
    assign adapt_scalar_trunc59_in = ip_dsdk_adapt_bitselect58_b;
    assign adapt_scalar_trunc59_q = adapt_scalar_trunc59_in[0:0];

    // ip_dsdk_adapt_bitselect56(BITSELECT,62)
    assign ip_dsdk_adapt_bitselect56_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_data[256:256];

    // adapt_scalar_trunc57(ROUND,7)
    assign adapt_scalar_trunc57_in = ip_dsdk_adapt_bitselect56_b;
    assign adapt_scalar_trunc57_q = adapt_scalar_trunc57_in[0:0];

    // ip_dsdk_adapt_bitselect54(BITSELECT,61)
    assign ip_dsdk_adapt_bitselect54_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_data[255:192];

    // ip_dsdk_adapt_bitselect52(BITSELECT,60)
    assign ip_dsdk_adapt_bitselect52_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_data[191:160];

    // ip_dsdk_adapt_bitselect50(BITSELECT,59)
    assign ip_dsdk_adapt_bitselect50_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_data[136:136];

    // adapt_scalar_trunc51(ROUND,6)
    assign adapt_scalar_trunc51_in = ip_dsdk_adapt_bitselect50_b;
    assign adapt_scalar_trunc51_q = adapt_scalar_trunc51_in[0:0];

    // ip_dsdk_adapt_bitselect48(BITSELECT,58)
    assign ip_dsdk_adapt_bitselect48_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_data[128:128];

    // adapt_scalar_trunc49(ROUND,5)
    assign adapt_scalar_trunc49_in = ip_dsdk_adapt_bitselect48_b;
    assign adapt_scalar_trunc49_q = adapt_scalar_trunc49_in[0:0];

    // ip_dsdk_adapt_bitselect46(BITSELECT,57)
    assign ip_dsdk_adapt_bitselect46_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_data[127:64];

    // ip_dsdk_adapt_bitselect44(BITSELECT,56)
    assign ip_dsdk_adapt_bitselect44_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_data[63:32];

    // ip_dsdk_adapt_bitselect42(BITSELECT,55)
    assign ip_dsdk_adapt_bitselect42_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_data[16:16];

    // adapt_scalar_trunc43(ROUND,4)
    assign adapt_scalar_trunc43_in = ip_dsdk_adapt_bitselect42_b;
    assign adapt_scalar_trunc43_q = adapt_scalar_trunc43_in[0:0];

    // ip_dsdk_adapt_bitselect40(BITSELECT,54)
    assign ip_dsdk_adapt_bitselect40_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_data[8:8];

    // adapt_scalar_trunc41(ROUND,3)
    assign adapt_scalar_trunc41_in = ip_dsdk_adapt_bitselect40_b;
    assign adapt_scalar_trunc41_q = adapt_scalar_trunc41_in[0:0];

    // ip_dsdk_adapt_bitselect38(BITSELECT,53)
    assign ip_dsdk_adapt_bitselect38_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_data[0:0];

    // adapt_scalar_trunc39(ROUND,2)
    assign adapt_scalar_trunc39_in = ip_dsdk_adapt_bitselect38_b;
    assign adapt_scalar_trunc39_q = adapt_scalar_trunc39_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,81)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc39_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc41_q;
    assign out_o_data_2_tpl = adapt_scalar_trunc43_q;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect44_b;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect46_b;
    assign out_o_data_5_tpl = adapt_scalar_trunc49_q;
    assign out_o_data_6_tpl = adapt_scalar_trunc51_q;
    assign out_o_data_7_tpl = ip_dsdk_adapt_bitselect52_b;
    assign out_o_data_8_tpl = ip_dsdk_adapt_bitselect54_b;
    assign out_o_data_9_tpl = adapt_scalar_trunc57_q;
    assign out_o_data_10_tpl = adapt_scalar_trunc59_q;
    assign out_o_data_11_tpl = adapt_scalar_trunc61_q;
    assign out_o_data_12_tpl = adapt_scalar_trunc63_q;
    assign out_o_data_13_tpl = adapt_scalar_trunc65_q;
    assign out_o_data_14_tpl = adapt_scalar_trunc67_q;
    assign out_o_data_15_tpl = adapt_scalar_trunc69_q;
    assign out_o_data_16_tpl = ip_dsdk_adapt_bitselect70_b;
    assign out_o_data_17_tpl = adapt_scalar_trunc73_q;
    assign out_o_data_18_tpl = adapt_scalar_trunc75_q;
    assign out_o_data_19_tpl = adapt_scalar_trunc77_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_mmuls_c0_exit90_mmul0_o_valid;

endmodule
