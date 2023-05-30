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

// SystemVerilog created from conv2d3x3_bb_B8
// SystemVerilog created on Tue May 30 12:30:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B8 (
    input wire [0:0] in_c0_exe1087_0,
    input wire [31:0] in_c0_exe1186155_0,
    input wire [31:0] in_c0_exe1195164_0,
    input wire [0:0] in_c0_exe1197_0,
    input wire [31:0] in_c0_exe1234176_0,
    input wire [31:0] in_c0_exe1298_0,
    input wire [0:0] in_c0_exe13108_0,
    input wire [0:0] in_c0_exe14117_0,
    input wire [0:0] in_c0_exe15127_0,
    input wire [0:0] in_c0_exe16137_0,
    input wire [63:0] in_c0_exe18_0,
    input wire [63:0] in_c0_exe319_0,
    input wire [0:0] in_c0_exe428_0,
    input wire [31:0] in_c0_exe539_0,
    input wire [31:0] in_c0_exe646_0,
    input wire [0:0] in_c0_exe758_0,
    input wire [0:0] in_c0_exe867_0,
    input wire [31:0] in_c0_exe977_0,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [31:0] in_j_062146_0,
    input wire [31:0] in_k_059160_0,
    input wire [31:0] in_mul46_add4169_0,
    input wire [31:0] in_output_size,
    input wire [31:0] in_pad,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_stride,
    input wire [31:0] in_unnamed_conv2d3x312_0,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_add48_2,
    output wire [0:0] out_c0_exe1087,
    output wire [31:0] out_c0_exe1186155,
    output wire [0:0] out_c0_exe1197,
    output wire [31:0] out_c0_exe1234176,
    output wire [31:0] out_c0_exe1242,
    output wire [31:0] out_c0_exe1298,
    output wire [0:0] out_c0_exe13108,
    output wire [0:0] out_c0_exe14117,
    output wire [0:0] out_c0_exe15127,
    output wire [0:0] out_c0_exe16137,
    output wire [63:0] out_c0_exe18,
    output wire [63:0] out_c0_exe319,
    output wire [0:0] out_c0_exe428,
    output wire [31:0] out_c0_exe539,
    output wire [31:0] out_c0_exe646,
    output wire [0:0] out_c0_exe758,
    output wire [0:0] out_c0_exe867,
    output wire [31:0] out_c0_exe977,
    output wire [31:0] out_j_062146,
    output wire [31:0] out_k_059160,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_conv2d3x312,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_conv2d3x3_B8_stall_region_out_add48_2;
    wire [0:0] bb_conv2d3x3_B8_stall_region_out_c0_exe1087;
    wire [31:0] bb_conv2d3x3_B8_stall_region_out_c0_exe1186155;
    wire [0:0] bb_conv2d3x3_B8_stall_region_out_c0_exe1197;
    wire [31:0] bb_conv2d3x3_B8_stall_region_out_c0_exe1234176;
    wire [31:0] bb_conv2d3x3_B8_stall_region_out_c0_exe1242;
    wire [31:0] bb_conv2d3x3_B8_stall_region_out_c0_exe1298;
    wire [0:0] bb_conv2d3x3_B8_stall_region_out_c0_exe13108;
    wire [0:0] bb_conv2d3x3_B8_stall_region_out_c0_exe14117;
    wire [0:0] bb_conv2d3x3_B8_stall_region_out_c0_exe15127;
    wire [0:0] bb_conv2d3x3_B8_stall_region_out_c0_exe16137;
    wire [63:0] bb_conv2d3x3_B8_stall_region_out_c0_exe18;
    wire [63:0] bb_conv2d3x3_B8_stall_region_out_c0_exe319;
    wire [0:0] bb_conv2d3x3_B8_stall_region_out_c0_exe428;
    wire [31:0] bb_conv2d3x3_B8_stall_region_out_c0_exe539;
    wire [31:0] bb_conv2d3x3_B8_stall_region_out_c0_exe646;
    wire [0:0] bb_conv2d3x3_B8_stall_region_out_c0_exe758;
    wire [0:0] bb_conv2d3x3_B8_stall_region_out_c0_exe867;
    wire [31:0] bb_conv2d3x3_B8_stall_region_out_c0_exe977;
    wire [31:0] bb_conv2d3x3_B8_stall_region_out_j_062146;
    wire [31:0] bb_conv2d3x3_B8_stall_region_out_k_059160;
    wire [0:0] bb_conv2d3x3_B8_stall_region_out_stall_out;
    wire [31:0] bb_conv2d3x3_B8_stall_region_out_unnamed_conv2d3x312;
    wire [0:0] bb_conv2d3x3_B8_stall_region_out_valid_out;
    wire [31:0] conv2d3x3_B8_branch_out_add48_2;
    wire [0:0] conv2d3x3_B8_branch_out_c0_exe1087;
    wire [31:0] conv2d3x3_B8_branch_out_c0_exe1186155;
    wire [0:0] conv2d3x3_B8_branch_out_c0_exe1197;
    wire [31:0] conv2d3x3_B8_branch_out_c0_exe1234176;
    wire [31:0] conv2d3x3_B8_branch_out_c0_exe1242;
    wire [31:0] conv2d3x3_B8_branch_out_c0_exe1298;
    wire [0:0] conv2d3x3_B8_branch_out_c0_exe13108;
    wire [0:0] conv2d3x3_B8_branch_out_c0_exe14117;
    wire [0:0] conv2d3x3_B8_branch_out_c0_exe15127;
    wire [0:0] conv2d3x3_B8_branch_out_c0_exe16137;
    wire [63:0] conv2d3x3_B8_branch_out_c0_exe18;
    wire [63:0] conv2d3x3_B8_branch_out_c0_exe319;
    wire [0:0] conv2d3x3_B8_branch_out_c0_exe428;
    wire [31:0] conv2d3x3_B8_branch_out_c0_exe539;
    wire [31:0] conv2d3x3_B8_branch_out_c0_exe646;
    wire [0:0] conv2d3x3_B8_branch_out_c0_exe758;
    wire [0:0] conv2d3x3_B8_branch_out_c0_exe867;
    wire [31:0] conv2d3x3_B8_branch_out_c0_exe977;
    wire [31:0] conv2d3x3_B8_branch_out_j_062146;
    wire [31:0] conv2d3x3_B8_branch_out_k_059160;
    wire [0:0] conv2d3x3_B8_branch_out_stall_out;
    wire [31:0] conv2d3x3_B8_branch_out_unnamed_conv2d3x312;
    wire [0:0] conv2d3x3_B8_branch_out_valid_out_0;
    wire [0:0] conv2d3x3_B8_merge_out_c0_exe1087;
    wire [31:0] conv2d3x3_B8_merge_out_c0_exe1186155;
    wire [31:0] conv2d3x3_B8_merge_out_c0_exe1195164;
    wire [0:0] conv2d3x3_B8_merge_out_c0_exe1197;
    wire [31:0] conv2d3x3_B8_merge_out_c0_exe1234176;
    wire [31:0] conv2d3x3_B8_merge_out_c0_exe1298;
    wire [0:0] conv2d3x3_B8_merge_out_c0_exe13108;
    wire [0:0] conv2d3x3_B8_merge_out_c0_exe14117;
    wire [0:0] conv2d3x3_B8_merge_out_c0_exe15127;
    wire [0:0] conv2d3x3_B8_merge_out_c0_exe16137;
    wire [63:0] conv2d3x3_B8_merge_out_c0_exe18;
    wire [63:0] conv2d3x3_B8_merge_out_c0_exe319;
    wire [0:0] conv2d3x3_B8_merge_out_c0_exe428;
    wire [31:0] conv2d3x3_B8_merge_out_c0_exe539;
    wire [31:0] conv2d3x3_B8_merge_out_c0_exe646;
    wire [0:0] conv2d3x3_B8_merge_out_c0_exe758;
    wire [0:0] conv2d3x3_B8_merge_out_c0_exe867;
    wire [31:0] conv2d3x3_B8_merge_out_c0_exe977;
    wire [31:0] conv2d3x3_B8_merge_out_j_062146;
    wire [31:0] conv2d3x3_B8_merge_out_k_059160;
    wire [31:0] conv2d3x3_B8_merge_out_mul46_add4169;
    wire [0:0] conv2d3x3_B8_merge_out_stall_out_0;
    wire [31:0] conv2d3x3_B8_merge_out_unnamed_conv2d3x312;
    wire [0:0] conv2d3x3_B8_merge_out_valid_out;


    // conv2d3x3_B8_merge(BLACKBOX,4)
    conv2d3x3_B8_merge theconv2d3x3_B8_merge (
        .in_c0_exe1087_0(in_c0_exe1087_0),
        .in_c0_exe1186155_0(in_c0_exe1186155_0),
        .in_c0_exe1195164_0(in_c0_exe1195164_0),
        .in_c0_exe1197_0(in_c0_exe1197_0),
        .in_c0_exe1234176_0(in_c0_exe1234176_0),
        .in_c0_exe1298_0(in_c0_exe1298_0),
        .in_c0_exe13108_0(in_c0_exe13108_0),
        .in_c0_exe14117_0(in_c0_exe14117_0),
        .in_c0_exe15127_0(in_c0_exe15127_0),
        .in_c0_exe16137_0(in_c0_exe16137_0),
        .in_c0_exe18_0(in_c0_exe18_0),
        .in_c0_exe319_0(in_c0_exe319_0),
        .in_c0_exe428_0(in_c0_exe428_0),
        .in_c0_exe539_0(in_c0_exe539_0),
        .in_c0_exe646_0(in_c0_exe646_0),
        .in_c0_exe758_0(in_c0_exe758_0),
        .in_c0_exe867_0(in_c0_exe867_0),
        .in_c0_exe977_0(in_c0_exe977_0),
        .in_j_062146_0(in_j_062146_0),
        .in_k_059160_0(in_k_059160_0),
        .in_mul46_add4169_0(in_mul46_add4169_0),
        .in_stall_in(bb_conv2d3x3_B8_stall_region_out_stall_out),
        .in_unnamed_conv2d3x312_0(in_unnamed_conv2d3x312_0),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe1087(conv2d3x3_B8_merge_out_c0_exe1087),
        .out_c0_exe1186155(conv2d3x3_B8_merge_out_c0_exe1186155),
        .out_c0_exe1195164(conv2d3x3_B8_merge_out_c0_exe1195164),
        .out_c0_exe1197(conv2d3x3_B8_merge_out_c0_exe1197),
        .out_c0_exe1234176(conv2d3x3_B8_merge_out_c0_exe1234176),
        .out_c0_exe1298(conv2d3x3_B8_merge_out_c0_exe1298),
        .out_c0_exe13108(conv2d3x3_B8_merge_out_c0_exe13108),
        .out_c0_exe14117(conv2d3x3_B8_merge_out_c0_exe14117),
        .out_c0_exe15127(conv2d3x3_B8_merge_out_c0_exe15127),
        .out_c0_exe16137(conv2d3x3_B8_merge_out_c0_exe16137),
        .out_c0_exe18(conv2d3x3_B8_merge_out_c0_exe18),
        .out_c0_exe319(conv2d3x3_B8_merge_out_c0_exe319),
        .out_c0_exe428(conv2d3x3_B8_merge_out_c0_exe428),
        .out_c0_exe539(conv2d3x3_B8_merge_out_c0_exe539),
        .out_c0_exe646(conv2d3x3_B8_merge_out_c0_exe646),
        .out_c0_exe758(conv2d3x3_B8_merge_out_c0_exe758),
        .out_c0_exe867(conv2d3x3_B8_merge_out_c0_exe867),
        .out_c0_exe977(conv2d3x3_B8_merge_out_c0_exe977),
        .out_j_062146(conv2d3x3_B8_merge_out_j_062146),
        .out_k_059160(conv2d3x3_B8_merge_out_k_059160),
        .out_mul46_add4169(conv2d3x3_B8_merge_out_mul46_add4169),
        .out_stall_out_0(conv2d3x3_B8_merge_out_stall_out_0),
        .out_unnamed_conv2d3x312(conv2d3x3_B8_merge_out_unnamed_conv2d3x312),
        .out_valid_out(conv2d3x3_B8_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B8_stall_region(BLACKBOX,2)
    conv2d3x3_bb_B8_stall_region thebb_conv2d3x3_B8_stall_region (
        .in_c0_exe1087(conv2d3x3_B8_merge_out_c0_exe1087),
        .in_c0_exe1186155(conv2d3x3_B8_merge_out_c0_exe1186155),
        .in_c0_exe1195164(conv2d3x3_B8_merge_out_c0_exe1195164),
        .in_c0_exe1197(conv2d3x3_B8_merge_out_c0_exe1197),
        .in_c0_exe1234176(conv2d3x3_B8_merge_out_c0_exe1234176),
        .in_c0_exe1298(conv2d3x3_B8_merge_out_c0_exe1298),
        .in_c0_exe13108(conv2d3x3_B8_merge_out_c0_exe13108),
        .in_c0_exe14117(conv2d3x3_B8_merge_out_c0_exe14117),
        .in_c0_exe15127(conv2d3x3_B8_merge_out_c0_exe15127),
        .in_c0_exe16137(conv2d3x3_B8_merge_out_c0_exe16137),
        .in_c0_exe18(conv2d3x3_B8_merge_out_c0_exe18),
        .in_c0_exe319(conv2d3x3_B8_merge_out_c0_exe319),
        .in_c0_exe428(conv2d3x3_B8_merge_out_c0_exe428),
        .in_c0_exe539(conv2d3x3_B8_merge_out_c0_exe539),
        .in_c0_exe646(conv2d3x3_B8_merge_out_c0_exe646),
        .in_c0_exe758(conv2d3x3_B8_merge_out_c0_exe758),
        .in_c0_exe867(conv2d3x3_B8_merge_out_c0_exe867),
        .in_c0_exe977(conv2d3x3_B8_merge_out_c0_exe977),
        .in_input_size(in_input_size),
        .in_j_062146(conv2d3x3_B8_merge_out_j_062146),
        .in_k_059160(conv2d3x3_B8_merge_out_k_059160),
        .in_mul46_add4169(conv2d3x3_B8_merge_out_mul46_add4169),
        .in_stall_in(conv2d3x3_B8_branch_out_stall_out),
        .in_unnamed_conv2d3x312(conv2d3x3_B8_merge_out_unnamed_conv2d3x312),
        .in_valid_in(conv2d3x3_B8_merge_out_valid_out),
        .out_add48_2(bb_conv2d3x3_B8_stall_region_out_add48_2),
        .out_c0_exe1087(bb_conv2d3x3_B8_stall_region_out_c0_exe1087),
        .out_c0_exe1186155(bb_conv2d3x3_B8_stall_region_out_c0_exe1186155),
        .out_c0_exe1197(bb_conv2d3x3_B8_stall_region_out_c0_exe1197),
        .out_c0_exe1234176(bb_conv2d3x3_B8_stall_region_out_c0_exe1234176),
        .out_c0_exe1242(bb_conv2d3x3_B8_stall_region_out_c0_exe1242),
        .out_c0_exe1298(bb_conv2d3x3_B8_stall_region_out_c0_exe1298),
        .out_c0_exe13108(bb_conv2d3x3_B8_stall_region_out_c0_exe13108),
        .out_c0_exe14117(bb_conv2d3x3_B8_stall_region_out_c0_exe14117),
        .out_c0_exe15127(bb_conv2d3x3_B8_stall_region_out_c0_exe15127),
        .out_c0_exe16137(bb_conv2d3x3_B8_stall_region_out_c0_exe16137),
        .out_c0_exe18(bb_conv2d3x3_B8_stall_region_out_c0_exe18),
        .out_c0_exe319(bb_conv2d3x3_B8_stall_region_out_c0_exe319),
        .out_c0_exe428(bb_conv2d3x3_B8_stall_region_out_c0_exe428),
        .out_c0_exe539(bb_conv2d3x3_B8_stall_region_out_c0_exe539),
        .out_c0_exe646(bb_conv2d3x3_B8_stall_region_out_c0_exe646),
        .out_c0_exe758(bb_conv2d3x3_B8_stall_region_out_c0_exe758),
        .out_c0_exe867(bb_conv2d3x3_B8_stall_region_out_c0_exe867),
        .out_c0_exe977(bb_conv2d3x3_B8_stall_region_out_c0_exe977),
        .out_j_062146(bb_conv2d3x3_B8_stall_region_out_j_062146),
        .out_k_059160(bb_conv2d3x3_B8_stall_region_out_k_059160),
        .out_stall_out(bb_conv2d3x3_B8_stall_region_out_stall_out),
        .out_unnamed_conv2d3x312(bb_conv2d3x3_B8_stall_region_out_unnamed_conv2d3x312),
        .out_valid_out(bb_conv2d3x3_B8_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d3x3_B8_branch(BLACKBOX,3)
    conv2d3x3_B8_branch theconv2d3x3_B8_branch (
        .in_add48_2(bb_conv2d3x3_B8_stall_region_out_add48_2),
        .in_c0_exe1087(bb_conv2d3x3_B8_stall_region_out_c0_exe1087),
        .in_c0_exe1186155(bb_conv2d3x3_B8_stall_region_out_c0_exe1186155),
        .in_c0_exe1197(bb_conv2d3x3_B8_stall_region_out_c0_exe1197),
        .in_c0_exe1234176(bb_conv2d3x3_B8_stall_region_out_c0_exe1234176),
        .in_c0_exe1242(bb_conv2d3x3_B8_stall_region_out_c0_exe1242),
        .in_c0_exe1298(bb_conv2d3x3_B8_stall_region_out_c0_exe1298),
        .in_c0_exe13108(bb_conv2d3x3_B8_stall_region_out_c0_exe13108),
        .in_c0_exe14117(bb_conv2d3x3_B8_stall_region_out_c0_exe14117),
        .in_c0_exe15127(bb_conv2d3x3_B8_stall_region_out_c0_exe15127),
        .in_c0_exe16137(bb_conv2d3x3_B8_stall_region_out_c0_exe16137),
        .in_c0_exe18(bb_conv2d3x3_B8_stall_region_out_c0_exe18),
        .in_c0_exe319(bb_conv2d3x3_B8_stall_region_out_c0_exe319),
        .in_c0_exe428(bb_conv2d3x3_B8_stall_region_out_c0_exe428),
        .in_c0_exe539(bb_conv2d3x3_B8_stall_region_out_c0_exe539),
        .in_c0_exe646(bb_conv2d3x3_B8_stall_region_out_c0_exe646),
        .in_c0_exe758(bb_conv2d3x3_B8_stall_region_out_c0_exe758),
        .in_c0_exe867(bb_conv2d3x3_B8_stall_region_out_c0_exe867),
        .in_c0_exe977(bb_conv2d3x3_B8_stall_region_out_c0_exe977),
        .in_j_062146(bb_conv2d3x3_B8_stall_region_out_j_062146),
        .in_k_059160(bb_conv2d3x3_B8_stall_region_out_k_059160),
        .in_stall_in_0(in_stall_in_0),
        .in_unnamed_conv2d3x312(bb_conv2d3x3_B8_stall_region_out_unnamed_conv2d3x312),
        .in_valid_in(bb_conv2d3x3_B8_stall_region_out_valid_out),
        .out_add48_2(conv2d3x3_B8_branch_out_add48_2),
        .out_c0_exe1087(conv2d3x3_B8_branch_out_c0_exe1087),
        .out_c0_exe1186155(conv2d3x3_B8_branch_out_c0_exe1186155),
        .out_c0_exe1197(conv2d3x3_B8_branch_out_c0_exe1197),
        .out_c0_exe1234176(conv2d3x3_B8_branch_out_c0_exe1234176),
        .out_c0_exe1242(conv2d3x3_B8_branch_out_c0_exe1242),
        .out_c0_exe1298(conv2d3x3_B8_branch_out_c0_exe1298),
        .out_c0_exe13108(conv2d3x3_B8_branch_out_c0_exe13108),
        .out_c0_exe14117(conv2d3x3_B8_branch_out_c0_exe14117),
        .out_c0_exe15127(conv2d3x3_B8_branch_out_c0_exe15127),
        .out_c0_exe16137(conv2d3x3_B8_branch_out_c0_exe16137),
        .out_c0_exe18(conv2d3x3_B8_branch_out_c0_exe18),
        .out_c0_exe319(conv2d3x3_B8_branch_out_c0_exe319),
        .out_c0_exe428(conv2d3x3_B8_branch_out_c0_exe428),
        .out_c0_exe539(conv2d3x3_B8_branch_out_c0_exe539),
        .out_c0_exe646(conv2d3x3_B8_branch_out_c0_exe646),
        .out_c0_exe758(conv2d3x3_B8_branch_out_c0_exe758),
        .out_c0_exe867(conv2d3x3_B8_branch_out_c0_exe867),
        .out_c0_exe977(conv2d3x3_B8_branch_out_c0_exe977),
        .out_j_062146(conv2d3x3_B8_branch_out_j_062146),
        .out_k_059160(conv2d3x3_B8_branch_out_k_059160),
        .out_stall_out(conv2d3x3_B8_branch_out_stall_out),
        .out_unnamed_conv2d3x312(conv2d3x3_B8_branch_out_unnamed_conv2d3x312),
        .out_valid_out_0(conv2d3x3_B8_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_add48_2(GPOUT,35)
    assign out_add48_2 = conv2d3x3_B8_branch_out_add48_2;

    // out_c0_exe1087(GPOUT,36)
    assign out_c0_exe1087 = conv2d3x3_B8_branch_out_c0_exe1087;

    // out_c0_exe1186155(GPOUT,37)
    assign out_c0_exe1186155 = conv2d3x3_B8_branch_out_c0_exe1186155;

    // out_c0_exe1197(GPOUT,38)
    assign out_c0_exe1197 = conv2d3x3_B8_branch_out_c0_exe1197;

    // out_c0_exe1234176(GPOUT,39)
    assign out_c0_exe1234176 = conv2d3x3_B8_branch_out_c0_exe1234176;

    // out_c0_exe1242(GPOUT,40)
    assign out_c0_exe1242 = conv2d3x3_B8_branch_out_c0_exe1242;

    // out_c0_exe1298(GPOUT,41)
    assign out_c0_exe1298 = conv2d3x3_B8_branch_out_c0_exe1298;

    // out_c0_exe13108(GPOUT,42)
    assign out_c0_exe13108 = conv2d3x3_B8_branch_out_c0_exe13108;

    // out_c0_exe14117(GPOUT,43)
    assign out_c0_exe14117 = conv2d3x3_B8_branch_out_c0_exe14117;

    // out_c0_exe15127(GPOUT,44)
    assign out_c0_exe15127 = conv2d3x3_B8_branch_out_c0_exe15127;

    // out_c0_exe16137(GPOUT,45)
    assign out_c0_exe16137 = conv2d3x3_B8_branch_out_c0_exe16137;

    // out_c0_exe18(GPOUT,46)
    assign out_c0_exe18 = conv2d3x3_B8_branch_out_c0_exe18;

    // out_c0_exe319(GPOUT,47)
    assign out_c0_exe319 = conv2d3x3_B8_branch_out_c0_exe319;

    // out_c0_exe428(GPOUT,48)
    assign out_c0_exe428 = conv2d3x3_B8_branch_out_c0_exe428;

    // out_c0_exe539(GPOUT,49)
    assign out_c0_exe539 = conv2d3x3_B8_branch_out_c0_exe539;

    // out_c0_exe646(GPOUT,50)
    assign out_c0_exe646 = conv2d3x3_B8_branch_out_c0_exe646;

    // out_c0_exe758(GPOUT,51)
    assign out_c0_exe758 = conv2d3x3_B8_branch_out_c0_exe758;

    // out_c0_exe867(GPOUT,52)
    assign out_c0_exe867 = conv2d3x3_B8_branch_out_c0_exe867;

    // out_c0_exe977(GPOUT,53)
    assign out_c0_exe977 = conv2d3x3_B8_branch_out_c0_exe977;

    // out_j_062146(GPOUT,54)
    assign out_j_062146 = conv2d3x3_B8_branch_out_j_062146;

    // out_k_059160(GPOUT,55)
    assign out_k_059160 = conv2d3x3_B8_branch_out_k_059160;

    // out_stall_out_0(GPOUT,56)
    assign out_stall_out_0 = conv2d3x3_B8_merge_out_stall_out_0;

    // out_unnamed_conv2d3x312(GPOUT,57)
    assign out_unnamed_conv2d3x312 = conv2d3x3_B8_branch_out_unnamed_conv2d3x312;

    // out_valid_out_0(GPOUT,58)
    assign out_valid_out_0 = conv2d3x3_B8_branch_out_valid_out_0;

endmodule
