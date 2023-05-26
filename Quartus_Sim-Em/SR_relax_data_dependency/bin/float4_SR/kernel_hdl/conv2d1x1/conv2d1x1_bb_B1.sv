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

// SystemVerilog created from conv2d1x1_bb_B1
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B1 (
    input wire [31:0] in_c0_exe1018_0,
    input wire [31:0] in_c0_exe1119_0,
    input wire [31:0] in_c0_exe1220_0,
    input wire [31:0] in_c0_exe1321_0,
    input wire [31:0] in_c0_exe1422_0,
    input wire [31:0] in_c0_exe1523_0,
    input wire [31:0] in_c0_exe1624_0,
    input wire [31:0] in_c0_exe1725_0,
    input wire [31:0] in_c0_exe210_0,
    input wire [31:0] in_c0_exe311_0,
    input wire [31:0] in_c0_exe412_0,
    input wire [31:0] in_c0_exe513_0,
    input wire [31:0] in_c0_exe614_0,
    input wire [31:0] in_c0_exe715_0,
    input wire [31:0] in_c0_exe816_0,
    input wire [31:0] in_c0_exe917_0,
    input wire [63:0] in_filter_bias,
    input wire [31:0] in_filter_size,
    input wire [63:0] in_filter_weight,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [63:0] in_output_im,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe1018,
    output wire [31:0] out_c0_exe1119,
    output wire [31:0] out_c0_exe1220,
    output wire [31:0] out_c0_exe1321,
    output wire [31:0] out_c0_exe1422,
    output wire [31:0] out_c0_exe1523,
    output wire [31:0] out_c0_exe1624,
    output wire [31:0] out_c0_exe1725,
    output wire [31:0] out_c0_exe210,
    output wire [31:0] out_c0_exe311,
    output wire [31:0] out_c0_exe412,
    output wire [31:0] out_c0_exe513,
    output wire [31:0] out_c0_exe614,
    output wire [31:0] out_c0_exe715,
    output wire [31:0] out_c0_exe816,
    output wire [31:0] out_c0_exe917,
    output wire [0:0] out_intel_reserved_ffwd_0_0,
    output wire [31:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_intel_reserved_ffwd_2_0,
    output wire [32:0] out_intel_reserved_ffwd_3_0,
    output wire [32:0] out_intel_reserved_ffwd_4_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_conv2d1x1_B1_stall_region_out_c0_exe1018;
    wire [31:0] bb_conv2d1x1_B1_stall_region_out_c0_exe1119;
    wire [31:0] bb_conv2d1x1_B1_stall_region_out_c0_exe1220;
    wire [31:0] bb_conv2d1x1_B1_stall_region_out_c0_exe1321;
    wire [31:0] bb_conv2d1x1_B1_stall_region_out_c0_exe1422;
    wire [31:0] bb_conv2d1x1_B1_stall_region_out_c0_exe1523;
    wire [31:0] bb_conv2d1x1_B1_stall_region_out_c0_exe1624;
    wire [31:0] bb_conv2d1x1_B1_stall_region_out_c0_exe1725;
    wire [31:0] bb_conv2d1x1_B1_stall_region_out_c0_exe210;
    wire [31:0] bb_conv2d1x1_B1_stall_region_out_c0_exe311;
    wire [31:0] bb_conv2d1x1_B1_stall_region_out_c0_exe412;
    wire [31:0] bb_conv2d1x1_B1_stall_region_out_c0_exe513;
    wire [31:0] bb_conv2d1x1_B1_stall_region_out_c0_exe614;
    wire [31:0] bb_conv2d1x1_B1_stall_region_out_c0_exe715;
    wire [31:0] bb_conv2d1x1_B1_stall_region_out_c0_exe816;
    wire [31:0] bb_conv2d1x1_B1_stall_region_out_c0_exe917;
    wire [0:0] bb_conv2d1x1_B1_stall_region_out_intel_reserved_ffwd_0_0;
    wire [31:0] bb_conv2d1x1_B1_stall_region_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_conv2d1x1_B1_stall_region_out_intel_reserved_ffwd_2_0;
    wire [32:0] bb_conv2d1x1_B1_stall_region_out_intel_reserved_ffwd_3_0;
    wire [32:0] bb_conv2d1x1_B1_stall_region_out_intel_reserved_ffwd_4_0;
    wire [0:0] bb_conv2d1x1_B1_stall_region_out_stall_out;
    wire [0:0] bb_conv2d1x1_B1_stall_region_out_valid_out;
    wire [31:0] conv2d1x1_B1_branch_out_c0_exe1018;
    wire [31:0] conv2d1x1_B1_branch_out_c0_exe1119;
    wire [31:0] conv2d1x1_B1_branch_out_c0_exe1220;
    wire [31:0] conv2d1x1_B1_branch_out_c0_exe1321;
    wire [31:0] conv2d1x1_B1_branch_out_c0_exe1422;
    wire [31:0] conv2d1x1_B1_branch_out_c0_exe1523;
    wire [31:0] conv2d1x1_B1_branch_out_c0_exe1624;
    wire [31:0] conv2d1x1_B1_branch_out_c0_exe1725;
    wire [31:0] conv2d1x1_B1_branch_out_c0_exe210;
    wire [31:0] conv2d1x1_B1_branch_out_c0_exe311;
    wire [31:0] conv2d1x1_B1_branch_out_c0_exe412;
    wire [31:0] conv2d1x1_B1_branch_out_c0_exe513;
    wire [31:0] conv2d1x1_B1_branch_out_c0_exe614;
    wire [31:0] conv2d1x1_B1_branch_out_c0_exe715;
    wire [31:0] conv2d1x1_B1_branch_out_c0_exe816;
    wire [31:0] conv2d1x1_B1_branch_out_c0_exe917;
    wire [0:0] conv2d1x1_B1_branch_out_stall_out;
    wire [0:0] conv2d1x1_B1_branch_out_valid_out_0;
    wire [31:0] conv2d1x1_B1_merge_out_c0_exe1018;
    wire [31:0] conv2d1x1_B1_merge_out_c0_exe1119;
    wire [31:0] conv2d1x1_B1_merge_out_c0_exe1220;
    wire [31:0] conv2d1x1_B1_merge_out_c0_exe1321;
    wire [31:0] conv2d1x1_B1_merge_out_c0_exe1422;
    wire [31:0] conv2d1x1_B1_merge_out_c0_exe1523;
    wire [31:0] conv2d1x1_B1_merge_out_c0_exe1624;
    wire [31:0] conv2d1x1_B1_merge_out_c0_exe1725;
    wire [31:0] conv2d1x1_B1_merge_out_c0_exe210;
    wire [31:0] conv2d1x1_B1_merge_out_c0_exe311;
    wire [31:0] conv2d1x1_B1_merge_out_c0_exe412;
    wire [31:0] conv2d1x1_B1_merge_out_c0_exe513;
    wire [31:0] conv2d1x1_B1_merge_out_c0_exe614;
    wire [31:0] conv2d1x1_B1_merge_out_c0_exe715;
    wire [31:0] conv2d1x1_B1_merge_out_c0_exe816;
    wire [31:0] conv2d1x1_B1_merge_out_c0_exe917;
    wire [0:0] conv2d1x1_B1_merge_out_stall_out_0;
    wire [0:0] conv2d1x1_B1_merge_out_valid_out;


    // conv2d1x1_B1_merge(BLACKBOX,4)
    conv2d1x1_B1_merge theconv2d1x1_B1_merge (
        .in_c0_exe1018_0(in_c0_exe1018_0),
        .in_c0_exe1119_0(in_c0_exe1119_0),
        .in_c0_exe1220_0(in_c0_exe1220_0),
        .in_c0_exe1321_0(in_c0_exe1321_0),
        .in_c0_exe1422_0(in_c0_exe1422_0),
        .in_c0_exe1523_0(in_c0_exe1523_0),
        .in_c0_exe1624_0(in_c0_exe1624_0),
        .in_c0_exe1725_0(in_c0_exe1725_0),
        .in_c0_exe210_0(in_c0_exe210_0),
        .in_c0_exe311_0(in_c0_exe311_0),
        .in_c0_exe412_0(in_c0_exe412_0),
        .in_c0_exe513_0(in_c0_exe513_0),
        .in_c0_exe614_0(in_c0_exe614_0),
        .in_c0_exe715_0(in_c0_exe715_0),
        .in_c0_exe816_0(in_c0_exe816_0),
        .in_c0_exe917_0(in_c0_exe917_0),
        .in_stall_in(bb_conv2d1x1_B1_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe1018(conv2d1x1_B1_merge_out_c0_exe1018),
        .out_c0_exe1119(conv2d1x1_B1_merge_out_c0_exe1119),
        .out_c0_exe1220(conv2d1x1_B1_merge_out_c0_exe1220),
        .out_c0_exe1321(conv2d1x1_B1_merge_out_c0_exe1321),
        .out_c0_exe1422(conv2d1x1_B1_merge_out_c0_exe1422),
        .out_c0_exe1523(conv2d1x1_B1_merge_out_c0_exe1523),
        .out_c0_exe1624(conv2d1x1_B1_merge_out_c0_exe1624),
        .out_c0_exe1725(conv2d1x1_B1_merge_out_c0_exe1725),
        .out_c0_exe210(conv2d1x1_B1_merge_out_c0_exe210),
        .out_c0_exe311(conv2d1x1_B1_merge_out_c0_exe311),
        .out_c0_exe412(conv2d1x1_B1_merge_out_c0_exe412),
        .out_c0_exe513(conv2d1x1_B1_merge_out_c0_exe513),
        .out_c0_exe614(conv2d1x1_B1_merge_out_c0_exe614),
        .out_c0_exe715(conv2d1x1_B1_merge_out_c0_exe715),
        .out_c0_exe816(conv2d1x1_B1_merge_out_c0_exe816),
        .out_c0_exe917(conv2d1x1_B1_merge_out_c0_exe917),
        .out_stall_out_0(conv2d1x1_B1_merge_out_stall_out_0),
        .out_valid_out(conv2d1x1_B1_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B1_stall_region(BLACKBOX,2)
    conv2d1x1_bb_B1_stall_region thebb_conv2d1x1_B1_stall_region (
        .in_c0_exe1018(conv2d1x1_B1_merge_out_c0_exe1018),
        .in_c0_exe1119(conv2d1x1_B1_merge_out_c0_exe1119),
        .in_c0_exe1220(conv2d1x1_B1_merge_out_c0_exe1220),
        .in_c0_exe1321(conv2d1x1_B1_merge_out_c0_exe1321),
        .in_c0_exe1422(conv2d1x1_B1_merge_out_c0_exe1422),
        .in_c0_exe1523(conv2d1x1_B1_merge_out_c0_exe1523),
        .in_c0_exe1624(conv2d1x1_B1_merge_out_c0_exe1624),
        .in_c0_exe1725(conv2d1x1_B1_merge_out_c0_exe1725),
        .in_c0_exe210(conv2d1x1_B1_merge_out_c0_exe210),
        .in_c0_exe311(conv2d1x1_B1_merge_out_c0_exe311),
        .in_c0_exe412(conv2d1x1_B1_merge_out_c0_exe412),
        .in_c0_exe513(conv2d1x1_B1_merge_out_c0_exe513),
        .in_c0_exe614(conv2d1x1_B1_merge_out_c0_exe614),
        .in_c0_exe715(conv2d1x1_B1_merge_out_c0_exe715),
        .in_c0_exe816(conv2d1x1_B1_merge_out_c0_exe816),
        .in_c0_exe917(conv2d1x1_B1_merge_out_c0_exe917),
        .in_filter_size(in_filter_size),
        .in_input_channels(in_input_channels),
        .in_input_size(in_input_size),
        .in_stall_in(conv2d1x1_B1_branch_out_stall_out),
        .in_valid_in(conv2d1x1_B1_merge_out_valid_out),
        .out_c0_exe1018(bb_conv2d1x1_B1_stall_region_out_c0_exe1018),
        .out_c0_exe1119(bb_conv2d1x1_B1_stall_region_out_c0_exe1119),
        .out_c0_exe1220(bb_conv2d1x1_B1_stall_region_out_c0_exe1220),
        .out_c0_exe1321(bb_conv2d1x1_B1_stall_region_out_c0_exe1321),
        .out_c0_exe1422(bb_conv2d1x1_B1_stall_region_out_c0_exe1422),
        .out_c0_exe1523(bb_conv2d1x1_B1_stall_region_out_c0_exe1523),
        .out_c0_exe1624(bb_conv2d1x1_B1_stall_region_out_c0_exe1624),
        .out_c0_exe1725(bb_conv2d1x1_B1_stall_region_out_c0_exe1725),
        .out_c0_exe210(bb_conv2d1x1_B1_stall_region_out_c0_exe210),
        .out_c0_exe311(bb_conv2d1x1_B1_stall_region_out_c0_exe311),
        .out_c0_exe412(bb_conv2d1x1_B1_stall_region_out_c0_exe412),
        .out_c0_exe513(bb_conv2d1x1_B1_stall_region_out_c0_exe513),
        .out_c0_exe614(bb_conv2d1x1_B1_stall_region_out_c0_exe614),
        .out_c0_exe715(bb_conv2d1x1_B1_stall_region_out_c0_exe715),
        .out_c0_exe816(bb_conv2d1x1_B1_stall_region_out_c0_exe816),
        .out_c0_exe917(bb_conv2d1x1_B1_stall_region_out_c0_exe917),
        .out_intel_reserved_ffwd_0_0(bb_conv2d1x1_B1_stall_region_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_conv2d1x1_B1_stall_region_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_conv2d1x1_B1_stall_region_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_conv2d1x1_B1_stall_region_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_conv2d1x1_B1_stall_region_out_intel_reserved_ffwd_4_0),
        .out_stall_out(bb_conv2d1x1_B1_stall_region_out_stall_out),
        .out_valid_out(bb_conv2d1x1_B1_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B1_branch(BLACKBOX,3)
    conv2d1x1_B1_branch theconv2d1x1_B1_branch (
        .in_c0_exe1018(bb_conv2d1x1_B1_stall_region_out_c0_exe1018),
        .in_c0_exe1119(bb_conv2d1x1_B1_stall_region_out_c0_exe1119),
        .in_c0_exe1220(bb_conv2d1x1_B1_stall_region_out_c0_exe1220),
        .in_c0_exe1321(bb_conv2d1x1_B1_stall_region_out_c0_exe1321),
        .in_c0_exe1422(bb_conv2d1x1_B1_stall_region_out_c0_exe1422),
        .in_c0_exe1523(bb_conv2d1x1_B1_stall_region_out_c0_exe1523),
        .in_c0_exe1624(bb_conv2d1x1_B1_stall_region_out_c0_exe1624),
        .in_c0_exe1725(bb_conv2d1x1_B1_stall_region_out_c0_exe1725),
        .in_c0_exe210(bb_conv2d1x1_B1_stall_region_out_c0_exe210),
        .in_c0_exe311(bb_conv2d1x1_B1_stall_region_out_c0_exe311),
        .in_c0_exe412(bb_conv2d1x1_B1_stall_region_out_c0_exe412),
        .in_c0_exe513(bb_conv2d1x1_B1_stall_region_out_c0_exe513),
        .in_c0_exe614(bb_conv2d1x1_B1_stall_region_out_c0_exe614),
        .in_c0_exe715(bb_conv2d1x1_B1_stall_region_out_c0_exe715),
        .in_c0_exe816(bb_conv2d1x1_B1_stall_region_out_c0_exe816),
        .in_c0_exe917(bb_conv2d1x1_B1_stall_region_out_c0_exe917),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_conv2d1x1_B1_stall_region_out_valid_out),
        .out_c0_exe1018(conv2d1x1_B1_branch_out_c0_exe1018),
        .out_c0_exe1119(conv2d1x1_B1_branch_out_c0_exe1119),
        .out_c0_exe1220(conv2d1x1_B1_branch_out_c0_exe1220),
        .out_c0_exe1321(conv2d1x1_B1_branch_out_c0_exe1321),
        .out_c0_exe1422(conv2d1x1_B1_branch_out_c0_exe1422),
        .out_c0_exe1523(conv2d1x1_B1_branch_out_c0_exe1523),
        .out_c0_exe1624(conv2d1x1_B1_branch_out_c0_exe1624),
        .out_c0_exe1725(conv2d1x1_B1_branch_out_c0_exe1725),
        .out_c0_exe210(conv2d1x1_B1_branch_out_c0_exe210),
        .out_c0_exe311(conv2d1x1_B1_branch_out_c0_exe311),
        .out_c0_exe412(conv2d1x1_B1_branch_out_c0_exe412),
        .out_c0_exe513(conv2d1x1_B1_branch_out_c0_exe513),
        .out_c0_exe614(conv2d1x1_B1_branch_out_c0_exe614),
        .out_c0_exe715(conv2d1x1_B1_branch_out_c0_exe715),
        .out_c0_exe816(conv2d1x1_B1_branch_out_c0_exe816),
        .out_c0_exe917(conv2d1x1_B1_branch_out_c0_exe917),
        .out_stall_out(conv2d1x1_B1_branch_out_stall_out),
        .out_valid_out_0(conv2d1x1_B1_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1018(GPOUT,30)
    assign out_c0_exe1018 = conv2d1x1_B1_branch_out_c0_exe1018;

    // out_c0_exe1119(GPOUT,31)
    assign out_c0_exe1119 = conv2d1x1_B1_branch_out_c0_exe1119;

    // out_c0_exe1220(GPOUT,32)
    assign out_c0_exe1220 = conv2d1x1_B1_branch_out_c0_exe1220;

    // out_c0_exe1321(GPOUT,33)
    assign out_c0_exe1321 = conv2d1x1_B1_branch_out_c0_exe1321;

    // out_c0_exe1422(GPOUT,34)
    assign out_c0_exe1422 = conv2d1x1_B1_branch_out_c0_exe1422;

    // out_c0_exe1523(GPOUT,35)
    assign out_c0_exe1523 = conv2d1x1_B1_branch_out_c0_exe1523;

    // out_c0_exe1624(GPOUT,36)
    assign out_c0_exe1624 = conv2d1x1_B1_branch_out_c0_exe1624;

    // out_c0_exe1725(GPOUT,37)
    assign out_c0_exe1725 = conv2d1x1_B1_branch_out_c0_exe1725;

    // out_c0_exe210(GPOUT,38)
    assign out_c0_exe210 = conv2d1x1_B1_branch_out_c0_exe210;

    // out_c0_exe311(GPOUT,39)
    assign out_c0_exe311 = conv2d1x1_B1_branch_out_c0_exe311;

    // out_c0_exe412(GPOUT,40)
    assign out_c0_exe412 = conv2d1x1_B1_branch_out_c0_exe412;

    // out_c0_exe513(GPOUT,41)
    assign out_c0_exe513 = conv2d1x1_B1_branch_out_c0_exe513;

    // out_c0_exe614(GPOUT,42)
    assign out_c0_exe614 = conv2d1x1_B1_branch_out_c0_exe614;

    // out_c0_exe715(GPOUT,43)
    assign out_c0_exe715 = conv2d1x1_B1_branch_out_c0_exe715;

    // out_c0_exe816(GPOUT,44)
    assign out_c0_exe816 = conv2d1x1_B1_branch_out_c0_exe816;

    // out_c0_exe917(GPOUT,45)
    assign out_c0_exe917 = conv2d1x1_B1_branch_out_c0_exe917;

    // out_intel_reserved_ffwd_0_0(GPOUT,46)
    assign out_intel_reserved_ffwd_0_0 = bb_conv2d1x1_B1_stall_region_out_intel_reserved_ffwd_0_0;

    // out_intel_reserved_ffwd_1_0(GPOUT,47)
    assign out_intel_reserved_ffwd_1_0 = bb_conv2d1x1_B1_stall_region_out_intel_reserved_ffwd_1_0;

    // out_intel_reserved_ffwd_2_0(GPOUT,48)
    assign out_intel_reserved_ffwd_2_0 = bb_conv2d1x1_B1_stall_region_out_intel_reserved_ffwd_2_0;

    // out_intel_reserved_ffwd_3_0(GPOUT,49)
    assign out_intel_reserved_ffwd_3_0 = bb_conv2d1x1_B1_stall_region_out_intel_reserved_ffwd_3_0;

    // out_intel_reserved_ffwd_4_0(GPOUT,50)
    assign out_intel_reserved_ffwd_4_0 = bb_conv2d1x1_B1_stall_region_out_intel_reserved_ffwd_4_0;

    // out_stall_out_0(GPOUT,51)
    assign out_stall_out_0 = conv2d1x1_B1_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,52)
    assign out_valid_out_0 = conv2d1x1_B1_branch_out_valid_out_0;

endmodule
