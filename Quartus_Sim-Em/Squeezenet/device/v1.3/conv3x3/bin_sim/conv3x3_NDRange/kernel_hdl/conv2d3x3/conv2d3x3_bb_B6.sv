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

// SystemVerilog created from conv2d3x3_bb_B6
// SystemVerilog created on Tue May 30 12:30:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B6 (
    input wire [0:0] in_c0_exe1080_0,
    input wire [63:0] in_c0_exe110_0,
    input wire [31:0] in_c0_exe1186157_0,
    input wire [0:0] in_c0_exe1189_0,
    input wire [31:0] in_c0_exe1195166_0,
    input wire [31:0] in_c0_exe12100_0,
    input wire [31:0] in_c0_exe1214173_0,
    input wire [0:0] in_c0_exe13110_0,
    input wire [0:0] in_c0_exe14119_0,
    input wire [0:0] in_c0_exe15129_0,
    input wire [0:0] in_c0_exe16139_0,
    input wire [63:0] in_c0_exe321_0,
    input wire [0:0] in_c0_exe430_0,
    input wire [31:0] in_c0_exe541_0,
    input wire [31:0] in_c0_exe648_0,
    input wire [0:0] in_c0_exe760_0,
    input wire [0:0] in_c0_exe869_0,
    input wire [31:0] in_c0_exe970_0,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [31:0] in_j_062148_0,
    input wire [31:0] in_k_059162_0,
    input wire [31:0] in_mul46_add4171_0,
    input wire [31:0] in_output_size,
    input wire [31:0] in_pad,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_stride,
    input wire [31:0] in_unnamed_conv2d3x39_0,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_add48_1_le,
    output wire [0:0] out_c0_exe1080,
    output wire [63:0] out_c0_exe110,
    output wire [31:0] out_c0_exe1186157,
    output wire [0:0] out_c0_exe1189,
    output wire [31:0] out_c0_exe1195166,
    output wire [31:0] out_c0_exe12100,
    output wire [31:0] out_c0_exe1214173,
    output wire [31:0] out_c0_exe1222,
    output wire [0:0] out_c0_exe13110,
    output wire [0:0] out_c0_exe14119,
    output wire [0:0] out_c0_exe15129,
    output wire [0:0] out_c0_exe16139,
    output wire [63:0] out_c0_exe321,
    output wire [0:0] out_c0_exe430,
    output wire [31:0] out_c0_exe541,
    output wire [31:0] out_c0_exe648,
    output wire [0:0] out_c0_exe760,
    output wire [0:0] out_c0_exe869,
    output wire [31:0] out_c0_exe970,
    output wire [31:0] out_j_062148,
    output wire [31:0] out_k_059162,
    output wire [31:0] out_mul46_add4171,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_conv2d3x39,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_conv2d3x3_B6_stall_region_out_add48_1_le;
    wire [0:0] bb_conv2d3x3_B6_stall_region_out_c0_exe1080;
    wire [63:0] bb_conv2d3x3_B6_stall_region_out_c0_exe110;
    wire [31:0] bb_conv2d3x3_B6_stall_region_out_c0_exe1186157;
    wire [0:0] bb_conv2d3x3_B6_stall_region_out_c0_exe1189;
    wire [31:0] bb_conv2d3x3_B6_stall_region_out_c0_exe1195166;
    wire [31:0] bb_conv2d3x3_B6_stall_region_out_c0_exe12100;
    wire [31:0] bb_conv2d3x3_B6_stall_region_out_c0_exe1214173;
    wire [31:0] bb_conv2d3x3_B6_stall_region_out_c0_exe1222;
    wire [0:0] bb_conv2d3x3_B6_stall_region_out_c0_exe13110;
    wire [0:0] bb_conv2d3x3_B6_stall_region_out_c0_exe14119;
    wire [0:0] bb_conv2d3x3_B6_stall_region_out_c0_exe15129;
    wire [0:0] bb_conv2d3x3_B6_stall_region_out_c0_exe16139;
    wire [63:0] bb_conv2d3x3_B6_stall_region_out_c0_exe321;
    wire [0:0] bb_conv2d3x3_B6_stall_region_out_c0_exe430;
    wire [31:0] bb_conv2d3x3_B6_stall_region_out_c0_exe541;
    wire [31:0] bb_conv2d3x3_B6_stall_region_out_c0_exe648;
    wire [0:0] bb_conv2d3x3_B6_stall_region_out_c0_exe760;
    wire [0:0] bb_conv2d3x3_B6_stall_region_out_c0_exe869;
    wire [31:0] bb_conv2d3x3_B6_stall_region_out_c0_exe970;
    wire [31:0] bb_conv2d3x3_B6_stall_region_out_j_062148;
    wire [31:0] bb_conv2d3x3_B6_stall_region_out_k_059162;
    wire [31:0] bb_conv2d3x3_B6_stall_region_out_mul46_add4171;
    wire [0:0] bb_conv2d3x3_B6_stall_region_out_stall_out;
    wire [31:0] bb_conv2d3x3_B6_stall_region_out_unnamed_conv2d3x39;
    wire [0:0] bb_conv2d3x3_B6_stall_region_out_valid_out;
    wire [31:0] conv2d3x3_B6_branch_out_add48_1_le;
    wire [0:0] conv2d3x3_B6_branch_out_c0_exe1080;
    wire [63:0] conv2d3x3_B6_branch_out_c0_exe110;
    wire [31:0] conv2d3x3_B6_branch_out_c0_exe1186157;
    wire [0:0] conv2d3x3_B6_branch_out_c0_exe1189;
    wire [31:0] conv2d3x3_B6_branch_out_c0_exe1195166;
    wire [31:0] conv2d3x3_B6_branch_out_c0_exe12100;
    wire [31:0] conv2d3x3_B6_branch_out_c0_exe1214173;
    wire [31:0] conv2d3x3_B6_branch_out_c0_exe1222;
    wire [0:0] conv2d3x3_B6_branch_out_c0_exe13110;
    wire [0:0] conv2d3x3_B6_branch_out_c0_exe14119;
    wire [0:0] conv2d3x3_B6_branch_out_c0_exe15129;
    wire [0:0] conv2d3x3_B6_branch_out_c0_exe16139;
    wire [63:0] conv2d3x3_B6_branch_out_c0_exe321;
    wire [0:0] conv2d3x3_B6_branch_out_c0_exe430;
    wire [31:0] conv2d3x3_B6_branch_out_c0_exe541;
    wire [31:0] conv2d3x3_B6_branch_out_c0_exe648;
    wire [0:0] conv2d3x3_B6_branch_out_c0_exe760;
    wire [0:0] conv2d3x3_B6_branch_out_c0_exe869;
    wire [31:0] conv2d3x3_B6_branch_out_c0_exe970;
    wire [31:0] conv2d3x3_B6_branch_out_j_062148;
    wire [31:0] conv2d3x3_B6_branch_out_k_059162;
    wire [31:0] conv2d3x3_B6_branch_out_mul46_add4171;
    wire [0:0] conv2d3x3_B6_branch_out_stall_out;
    wire [31:0] conv2d3x3_B6_branch_out_unnamed_conv2d3x39;
    wire [0:0] conv2d3x3_B6_branch_out_valid_out_0;
    wire [0:0] conv2d3x3_B6_merge_out_c0_exe1080;
    wire [63:0] conv2d3x3_B6_merge_out_c0_exe110;
    wire [31:0] conv2d3x3_B6_merge_out_c0_exe1186157;
    wire [0:0] conv2d3x3_B6_merge_out_c0_exe1189;
    wire [31:0] conv2d3x3_B6_merge_out_c0_exe1195166;
    wire [31:0] conv2d3x3_B6_merge_out_c0_exe12100;
    wire [31:0] conv2d3x3_B6_merge_out_c0_exe1214173;
    wire [0:0] conv2d3x3_B6_merge_out_c0_exe13110;
    wire [0:0] conv2d3x3_B6_merge_out_c0_exe14119;
    wire [0:0] conv2d3x3_B6_merge_out_c0_exe15129;
    wire [0:0] conv2d3x3_B6_merge_out_c0_exe16139;
    wire [63:0] conv2d3x3_B6_merge_out_c0_exe321;
    wire [0:0] conv2d3x3_B6_merge_out_c0_exe430;
    wire [31:0] conv2d3x3_B6_merge_out_c0_exe541;
    wire [31:0] conv2d3x3_B6_merge_out_c0_exe648;
    wire [0:0] conv2d3x3_B6_merge_out_c0_exe760;
    wire [0:0] conv2d3x3_B6_merge_out_c0_exe869;
    wire [31:0] conv2d3x3_B6_merge_out_c0_exe970;
    wire [31:0] conv2d3x3_B6_merge_out_j_062148;
    wire [31:0] conv2d3x3_B6_merge_out_k_059162;
    wire [31:0] conv2d3x3_B6_merge_out_mul46_add4171;
    wire [0:0] conv2d3x3_B6_merge_out_stall_out_0;
    wire [31:0] conv2d3x3_B6_merge_out_unnamed_conv2d3x39;
    wire [0:0] conv2d3x3_B6_merge_out_valid_out;


    // conv2d3x3_B6_merge(BLACKBOX,4)
    conv2d3x3_B6_merge theconv2d3x3_B6_merge (
        .in_c0_exe1080_0(in_c0_exe1080_0),
        .in_c0_exe110_0(in_c0_exe110_0),
        .in_c0_exe1186157_0(in_c0_exe1186157_0),
        .in_c0_exe1189_0(in_c0_exe1189_0),
        .in_c0_exe1195166_0(in_c0_exe1195166_0),
        .in_c0_exe12100_0(in_c0_exe12100_0),
        .in_c0_exe1214173_0(in_c0_exe1214173_0),
        .in_c0_exe13110_0(in_c0_exe13110_0),
        .in_c0_exe14119_0(in_c0_exe14119_0),
        .in_c0_exe15129_0(in_c0_exe15129_0),
        .in_c0_exe16139_0(in_c0_exe16139_0),
        .in_c0_exe321_0(in_c0_exe321_0),
        .in_c0_exe430_0(in_c0_exe430_0),
        .in_c0_exe541_0(in_c0_exe541_0),
        .in_c0_exe648_0(in_c0_exe648_0),
        .in_c0_exe760_0(in_c0_exe760_0),
        .in_c0_exe869_0(in_c0_exe869_0),
        .in_c0_exe970_0(in_c0_exe970_0),
        .in_j_062148_0(in_j_062148_0),
        .in_k_059162_0(in_k_059162_0),
        .in_mul46_add4171_0(in_mul46_add4171_0),
        .in_stall_in(bb_conv2d3x3_B6_stall_region_out_stall_out),
        .in_unnamed_conv2d3x39_0(in_unnamed_conv2d3x39_0),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe1080(conv2d3x3_B6_merge_out_c0_exe1080),
        .out_c0_exe110(conv2d3x3_B6_merge_out_c0_exe110),
        .out_c0_exe1186157(conv2d3x3_B6_merge_out_c0_exe1186157),
        .out_c0_exe1189(conv2d3x3_B6_merge_out_c0_exe1189),
        .out_c0_exe1195166(conv2d3x3_B6_merge_out_c0_exe1195166),
        .out_c0_exe12100(conv2d3x3_B6_merge_out_c0_exe12100),
        .out_c0_exe1214173(conv2d3x3_B6_merge_out_c0_exe1214173),
        .out_c0_exe13110(conv2d3x3_B6_merge_out_c0_exe13110),
        .out_c0_exe14119(conv2d3x3_B6_merge_out_c0_exe14119),
        .out_c0_exe15129(conv2d3x3_B6_merge_out_c0_exe15129),
        .out_c0_exe16139(conv2d3x3_B6_merge_out_c0_exe16139),
        .out_c0_exe321(conv2d3x3_B6_merge_out_c0_exe321),
        .out_c0_exe430(conv2d3x3_B6_merge_out_c0_exe430),
        .out_c0_exe541(conv2d3x3_B6_merge_out_c0_exe541),
        .out_c0_exe648(conv2d3x3_B6_merge_out_c0_exe648),
        .out_c0_exe760(conv2d3x3_B6_merge_out_c0_exe760),
        .out_c0_exe869(conv2d3x3_B6_merge_out_c0_exe869),
        .out_c0_exe970(conv2d3x3_B6_merge_out_c0_exe970),
        .out_j_062148(conv2d3x3_B6_merge_out_j_062148),
        .out_k_059162(conv2d3x3_B6_merge_out_k_059162),
        .out_mul46_add4171(conv2d3x3_B6_merge_out_mul46_add4171),
        .out_stall_out_0(conv2d3x3_B6_merge_out_stall_out_0),
        .out_unnamed_conv2d3x39(conv2d3x3_B6_merge_out_unnamed_conv2d3x39),
        .out_valid_out(conv2d3x3_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B6_stall_region(BLACKBOX,2)
    conv2d3x3_bb_B6_stall_region thebb_conv2d3x3_B6_stall_region (
        .in_c0_exe1080(conv2d3x3_B6_merge_out_c0_exe1080),
        .in_c0_exe110(conv2d3x3_B6_merge_out_c0_exe110),
        .in_c0_exe1186157(conv2d3x3_B6_merge_out_c0_exe1186157),
        .in_c0_exe1189(conv2d3x3_B6_merge_out_c0_exe1189),
        .in_c0_exe1195166(conv2d3x3_B6_merge_out_c0_exe1195166),
        .in_c0_exe12100(conv2d3x3_B6_merge_out_c0_exe12100),
        .in_c0_exe1214173(conv2d3x3_B6_merge_out_c0_exe1214173),
        .in_c0_exe13110(conv2d3x3_B6_merge_out_c0_exe13110),
        .in_c0_exe14119(conv2d3x3_B6_merge_out_c0_exe14119),
        .in_c0_exe15129(conv2d3x3_B6_merge_out_c0_exe15129),
        .in_c0_exe16139(conv2d3x3_B6_merge_out_c0_exe16139),
        .in_c0_exe321(conv2d3x3_B6_merge_out_c0_exe321),
        .in_c0_exe430(conv2d3x3_B6_merge_out_c0_exe430),
        .in_c0_exe541(conv2d3x3_B6_merge_out_c0_exe541),
        .in_c0_exe648(conv2d3x3_B6_merge_out_c0_exe648),
        .in_c0_exe760(conv2d3x3_B6_merge_out_c0_exe760),
        .in_c0_exe869(conv2d3x3_B6_merge_out_c0_exe869),
        .in_c0_exe970(conv2d3x3_B6_merge_out_c0_exe970),
        .in_input_size(in_input_size),
        .in_j_062148(conv2d3x3_B6_merge_out_j_062148),
        .in_k_059162(conv2d3x3_B6_merge_out_k_059162),
        .in_mul46_add4171(conv2d3x3_B6_merge_out_mul46_add4171),
        .in_stall_in(conv2d3x3_B6_branch_out_stall_out),
        .in_unnamed_conv2d3x39(conv2d3x3_B6_merge_out_unnamed_conv2d3x39),
        .in_valid_in(conv2d3x3_B6_merge_out_valid_out),
        .out_add48_1_le(bb_conv2d3x3_B6_stall_region_out_add48_1_le),
        .out_c0_exe1080(bb_conv2d3x3_B6_stall_region_out_c0_exe1080),
        .out_c0_exe110(bb_conv2d3x3_B6_stall_region_out_c0_exe110),
        .out_c0_exe1186157(bb_conv2d3x3_B6_stall_region_out_c0_exe1186157),
        .out_c0_exe1189(bb_conv2d3x3_B6_stall_region_out_c0_exe1189),
        .out_c0_exe1195166(bb_conv2d3x3_B6_stall_region_out_c0_exe1195166),
        .out_c0_exe12100(bb_conv2d3x3_B6_stall_region_out_c0_exe12100),
        .out_c0_exe1214173(bb_conv2d3x3_B6_stall_region_out_c0_exe1214173),
        .out_c0_exe1222(bb_conv2d3x3_B6_stall_region_out_c0_exe1222),
        .out_c0_exe13110(bb_conv2d3x3_B6_stall_region_out_c0_exe13110),
        .out_c0_exe14119(bb_conv2d3x3_B6_stall_region_out_c0_exe14119),
        .out_c0_exe15129(bb_conv2d3x3_B6_stall_region_out_c0_exe15129),
        .out_c0_exe16139(bb_conv2d3x3_B6_stall_region_out_c0_exe16139),
        .out_c0_exe321(bb_conv2d3x3_B6_stall_region_out_c0_exe321),
        .out_c0_exe430(bb_conv2d3x3_B6_stall_region_out_c0_exe430),
        .out_c0_exe541(bb_conv2d3x3_B6_stall_region_out_c0_exe541),
        .out_c0_exe648(bb_conv2d3x3_B6_stall_region_out_c0_exe648),
        .out_c0_exe760(bb_conv2d3x3_B6_stall_region_out_c0_exe760),
        .out_c0_exe869(bb_conv2d3x3_B6_stall_region_out_c0_exe869),
        .out_c0_exe970(bb_conv2d3x3_B6_stall_region_out_c0_exe970),
        .out_j_062148(bb_conv2d3x3_B6_stall_region_out_j_062148),
        .out_k_059162(bb_conv2d3x3_B6_stall_region_out_k_059162),
        .out_mul46_add4171(bb_conv2d3x3_B6_stall_region_out_mul46_add4171),
        .out_stall_out(bb_conv2d3x3_B6_stall_region_out_stall_out),
        .out_unnamed_conv2d3x39(bb_conv2d3x3_B6_stall_region_out_unnamed_conv2d3x39),
        .out_valid_out(bb_conv2d3x3_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d3x3_B6_branch(BLACKBOX,3)
    conv2d3x3_B6_branch theconv2d3x3_B6_branch (
        .in_add48_1_le(bb_conv2d3x3_B6_stall_region_out_add48_1_le),
        .in_c0_exe1080(bb_conv2d3x3_B6_stall_region_out_c0_exe1080),
        .in_c0_exe110(bb_conv2d3x3_B6_stall_region_out_c0_exe110),
        .in_c0_exe1186157(bb_conv2d3x3_B6_stall_region_out_c0_exe1186157),
        .in_c0_exe1189(bb_conv2d3x3_B6_stall_region_out_c0_exe1189),
        .in_c0_exe1195166(bb_conv2d3x3_B6_stall_region_out_c0_exe1195166),
        .in_c0_exe12100(bb_conv2d3x3_B6_stall_region_out_c0_exe12100),
        .in_c0_exe1214173(bb_conv2d3x3_B6_stall_region_out_c0_exe1214173),
        .in_c0_exe1222(bb_conv2d3x3_B6_stall_region_out_c0_exe1222),
        .in_c0_exe13110(bb_conv2d3x3_B6_stall_region_out_c0_exe13110),
        .in_c0_exe14119(bb_conv2d3x3_B6_stall_region_out_c0_exe14119),
        .in_c0_exe15129(bb_conv2d3x3_B6_stall_region_out_c0_exe15129),
        .in_c0_exe16139(bb_conv2d3x3_B6_stall_region_out_c0_exe16139),
        .in_c0_exe321(bb_conv2d3x3_B6_stall_region_out_c0_exe321),
        .in_c0_exe430(bb_conv2d3x3_B6_stall_region_out_c0_exe430),
        .in_c0_exe541(bb_conv2d3x3_B6_stall_region_out_c0_exe541),
        .in_c0_exe648(bb_conv2d3x3_B6_stall_region_out_c0_exe648),
        .in_c0_exe760(bb_conv2d3x3_B6_stall_region_out_c0_exe760),
        .in_c0_exe869(bb_conv2d3x3_B6_stall_region_out_c0_exe869),
        .in_c0_exe970(bb_conv2d3x3_B6_stall_region_out_c0_exe970),
        .in_j_062148(bb_conv2d3x3_B6_stall_region_out_j_062148),
        .in_k_059162(bb_conv2d3x3_B6_stall_region_out_k_059162),
        .in_mul46_add4171(bb_conv2d3x3_B6_stall_region_out_mul46_add4171),
        .in_stall_in_0(in_stall_in_0),
        .in_unnamed_conv2d3x39(bb_conv2d3x3_B6_stall_region_out_unnamed_conv2d3x39),
        .in_valid_in(bb_conv2d3x3_B6_stall_region_out_valid_out),
        .out_add48_1_le(conv2d3x3_B6_branch_out_add48_1_le),
        .out_c0_exe1080(conv2d3x3_B6_branch_out_c0_exe1080),
        .out_c0_exe110(conv2d3x3_B6_branch_out_c0_exe110),
        .out_c0_exe1186157(conv2d3x3_B6_branch_out_c0_exe1186157),
        .out_c0_exe1189(conv2d3x3_B6_branch_out_c0_exe1189),
        .out_c0_exe1195166(conv2d3x3_B6_branch_out_c0_exe1195166),
        .out_c0_exe12100(conv2d3x3_B6_branch_out_c0_exe12100),
        .out_c0_exe1214173(conv2d3x3_B6_branch_out_c0_exe1214173),
        .out_c0_exe1222(conv2d3x3_B6_branch_out_c0_exe1222),
        .out_c0_exe13110(conv2d3x3_B6_branch_out_c0_exe13110),
        .out_c0_exe14119(conv2d3x3_B6_branch_out_c0_exe14119),
        .out_c0_exe15129(conv2d3x3_B6_branch_out_c0_exe15129),
        .out_c0_exe16139(conv2d3x3_B6_branch_out_c0_exe16139),
        .out_c0_exe321(conv2d3x3_B6_branch_out_c0_exe321),
        .out_c0_exe430(conv2d3x3_B6_branch_out_c0_exe430),
        .out_c0_exe541(conv2d3x3_B6_branch_out_c0_exe541),
        .out_c0_exe648(conv2d3x3_B6_branch_out_c0_exe648),
        .out_c0_exe760(conv2d3x3_B6_branch_out_c0_exe760),
        .out_c0_exe869(conv2d3x3_B6_branch_out_c0_exe869),
        .out_c0_exe970(conv2d3x3_B6_branch_out_c0_exe970),
        .out_j_062148(conv2d3x3_B6_branch_out_j_062148),
        .out_k_059162(conv2d3x3_B6_branch_out_k_059162),
        .out_mul46_add4171(conv2d3x3_B6_branch_out_mul46_add4171),
        .out_stall_out(conv2d3x3_B6_branch_out_stall_out),
        .out_unnamed_conv2d3x39(conv2d3x3_B6_branch_out_unnamed_conv2d3x39),
        .out_valid_out_0(conv2d3x3_B6_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_add48_1_le(GPOUT,35)
    assign out_add48_1_le = conv2d3x3_B6_branch_out_add48_1_le;

    // out_c0_exe1080(GPOUT,36)
    assign out_c0_exe1080 = conv2d3x3_B6_branch_out_c0_exe1080;

    // out_c0_exe110(GPOUT,37)
    assign out_c0_exe110 = conv2d3x3_B6_branch_out_c0_exe110;

    // out_c0_exe1186157(GPOUT,38)
    assign out_c0_exe1186157 = conv2d3x3_B6_branch_out_c0_exe1186157;

    // out_c0_exe1189(GPOUT,39)
    assign out_c0_exe1189 = conv2d3x3_B6_branch_out_c0_exe1189;

    // out_c0_exe1195166(GPOUT,40)
    assign out_c0_exe1195166 = conv2d3x3_B6_branch_out_c0_exe1195166;

    // out_c0_exe12100(GPOUT,41)
    assign out_c0_exe12100 = conv2d3x3_B6_branch_out_c0_exe12100;

    // out_c0_exe1214173(GPOUT,42)
    assign out_c0_exe1214173 = conv2d3x3_B6_branch_out_c0_exe1214173;

    // out_c0_exe1222(GPOUT,43)
    assign out_c0_exe1222 = conv2d3x3_B6_branch_out_c0_exe1222;

    // out_c0_exe13110(GPOUT,44)
    assign out_c0_exe13110 = conv2d3x3_B6_branch_out_c0_exe13110;

    // out_c0_exe14119(GPOUT,45)
    assign out_c0_exe14119 = conv2d3x3_B6_branch_out_c0_exe14119;

    // out_c0_exe15129(GPOUT,46)
    assign out_c0_exe15129 = conv2d3x3_B6_branch_out_c0_exe15129;

    // out_c0_exe16139(GPOUT,47)
    assign out_c0_exe16139 = conv2d3x3_B6_branch_out_c0_exe16139;

    // out_c0_exe321(GPOUT,48)
    assign out_c0_exe321 = conv2d3x3_B6_branch_out_c0_exe321;

    // out_c0_exe430(GPOUT,49)
    assign out_c0_exe430 = conv2d3x3_B6_branch_out_c0_exe430;

    // out_c0_exe541(GPOUT,50)
    assign out_c0_exe541 = conv2d3x3_B6_branch_out_c0_exe541;

    // out_c0_exe648(GPOUT,51)
    assign out_c0_exe648 = conv2d3x3_B6_branch_out_c0_exe648;

    // out_c0_exe760(GPOUT,52)
    assign out_c0_exe760 = conv2d3x3_B6_branch_out_c0_exe760;

    // out_c0_exe869(GPOUT,53)
    assign out_c0_exe869 = conv2d3x3_B6_branch_out_c0_exe869;

    // out_c0_exe970(GPOUT,54)
    assign out_c0_exe970 = conv2d3x3_B6_branch_out_c0_exe970;

    // out_j_062148(GPOUT,55)
    assign out_j_062148 = conv2d3x3_B6_branch_out_j_062148;

    // out_k_059162(GPOUT,56)
    assign out_k_059162 = conv2d3x3_B6_branch_out_k_059162;

    // out_mul46_add4171(GPOUT,57)
    assign out_mul46_add4171 = conv2d3x3_B6_branch_out_mul46_add4171;

    // out_stall_out_0(GPOUT,58)
    assign out_stall_out_0 = conv2d3x3_B6_merge_out_stall_out_0;

    // out_unnamed_conv2d3x39(GPOUT,59)
    assign out_unnamed_conv2d3x39 = conv2d3x3_B6_branch_out_unnamed_conv2d3x39;

    // out_valid_out_0(GPOUT,60)
    assign out_valid_out_0 = conv2d3x3_B6_branch_out_valid_out_0;

endmodule
