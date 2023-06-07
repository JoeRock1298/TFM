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

// SystemVerilog created from conv2d3x3_bb_B1
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B1 (
    input wire [0:0] in_c0_exe1083_0,
    input wire [0:0] in_c0_exe1083_1,
    input wire [63:0] in_c0_exe113_0,
    input wire [63:0] in_c0_exe113_1,
    input wire [0:0] in_c0_exe1192_0,
    input wire [0:0] in_c0_exe1192_1,
    input wire [31:0] in_c0_exe12103_0,
    input wire [31:0] in_c0_exe12103_1,
    input wire [0:0] in_c0_exe13113_0,
    input wire [0:0] in_c0_exe13113_1,
    input wire [0:0] in_c0_exe14122_0,
    input wire [0:0] in_c0_exe14122_1,
    input wire [0:0] in_c0_exe15132_0,
    input wire [0:0] in_c0_exe15132_1,
    input wire [0:0] in_c0_exe16142_0,
    input wire [0:0] in_c0_exe16142_1,
    input wire [63:0] in_c0_exe324_0,
    input wire [63:0] in_c0_exe324_1,
    input wire [0:0] in_c0_exe433_0,
    input wire [0:0] in_c0_exe433_1,
    input wire [31:0] in_c0_exe535_0,
    input wire [31:0] in_c0_exe535_1,
    input wire [31:0] in_c0_exe651_0,
    input wire [31:0] in_c0_exe651_1,
    input wire [0:0] in_c0_exe754_0,
    input wire [0:0] in_c0_exe754_1,
    input wire [0:0] in_c0_exe863_0,
    input wire [0:0] in_c0_exe863_1,
    input wire [31:0] in_c0_exe973_0,
    input wire [31:0] in_c0_exe973_1,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [31:0] in_j_062_0,
    input wire [31:0] in_j_062_1,
    input wire [31:0] in_output_size,
    input wire [31:0] in_pad,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_stride,
    input wire [31:0] in_unnamed_conv2d3x32_0,
    input wire [31:0] in_unnamed_conv2d3x32_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe1083,
    output wire [63:0] out_c0_exe113,
    output wire [31:0] out_c0_exe1186,
    output wire [0:0] out_c0_exe1192,
    output wire [31:0] out_c0_exe12103,
    output wire [0:0] out_c0_exe13113,
    output wire [0:0] out_c0_exe14122,
    output wire [0:0] out_c0_exe15132,
    output wire [0:0] out_c0_exe16142,
    output wire [63:0] out_c0_exe324,
    output wire [0:0] out_c0_exe433,
    output wire [31:0] out_c0_exe535,
    output wire [31:0] out_c0_exe651,
    output wire [0:0] out_c0_exe754,
    output wire [0:0] out_c0_exe863,
    output wire [31:0] out_c0_exe973,
    output wire [31:0] out_j_062,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_conv2d3x32,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv2d3x3_B1_stall_region_out_c0_exe1083;
    wire [63:0] bb_conv2d3x3_B1_stall_region_out_c0_exe113;
    wire [31:0] bb_conv2d3x3_B1_stall_region_out_c0_exe1186;
    wire [0:0] bb_conv2d3x3_B1_stall_region_out_c0_exe1192;
    wire [31:0] bb_conv2d3x3_B1_stall_region_out_c0_exe12103;
    wire [0:0] bb_conv2d3x3_B1_stall_region_out_c0_exe13113;
    wire [0:0] bb_conv2d3x3_B1_stall_region_out_c0_exe14122;
    wire [0:0] bb_conv2d3x3_B1_stall_region_out_c0_exe15132;
    wire [0:0] bb_conv2d3x3_B1_stall_region_out_c0_exe16142;
    wire [63:0] bb_conv2d3x3_B1_stall_region_out_c0_exe324;
    wire [0:0] bb_conv2d3x3_B1_stall_region_out_c0_exe433;
    wire [31:0] bb_conv2d3x3_B1_stall_region_out_c0_exe535;
    wire [31:0] bb_conv2d3x3_B1_stall_region_out_c0_exe651;
    wire [0:0] bb_conv2d3x3_B1_stall_region_out_c0_exe754;
    wire [0:0] bb_conv2d3x3_B1_stall_region_out_c0_exe863;
    wire [31:0] bb_conv2d3x3_B1_stall_region_out_c0_exe973;
    wire [31:0] bb_conv2d3x3_B1_stall_region_out_j_062;
    wire [0:0] bb_conv2d3x3_B1_stall_region_out_stall_out;
    wire [31:0] bb_conv2d3x3_B1_stall_region_out_unnamed_conv2d3x32;
    wire [0:0] bb_conv2d3x3_B1_stall_region_out_valid_out;
    wire [0:0] conv2d3x3_B1_branch_out_c0_exe1083;
    wire [63:0] conv2d3x3_B1_branch_out_c0_exe113;
    wire [31:0] conv2d3x3_B1_branch_out_c0_exe1186;
    wire [0:0] conv2d3x3_B1_branch_out_c0_exe1192;
    wire [31:0] conv2d3x3_B1_branch_out_c0_exe12103;
    wire [0:0] conv2d3x3_B1_branch_out_c0_exe13113;
    wire [0:0] conv2d3x3_B1_branch_out_c0_exe14122;
    wire [0:0] conv2d3x3_B1_branch_out_c0_exe15132;
    wire [0:0] conv2d3x3_B1_branch_out_c0_exe16142;
    wire [63:0] conv2d3x3_B1_branch_out_c0_exe324;
    wire [0:0] conv2d3x3_B1_branch_out_c0_exe433;
    wire [31:0] conv2d3x3_B1_branch_out_c0_exe535;
    wire [31:0] conv2d3x3_B1_branch_out_c0_exe651;
    wire [0:0] conv2d3x3_B1_branch_out_c0_exe754;
    wire [0:0] conv2d3x3_B1_branch_out_c0_exe863;
    wire [31:0] conv2d3x3_B1_branch_out_c0_exe973;
    wire [31:0] conv2d3x3_B1_branch_out_j_062;
    wire [0:0] conv2d3x3_B1_branch_out_stall_out;
    wire [31:0] conv2d3x3_B1_branch_out_unnamed_conv2d3x32;
    wire [0:0] conv2d3x3_B1_branch_out_valid_out_0;
    wire [0:0] conv2d3x3_B1_merge_out_c0_exe1083;
    wire [63:0] conv2d3x3_B1_merge_out_c0_exe113;
    wire [0:0] conv2d3x3_B1_merge_out_c0_exe1192;
    wire [31:0] conv2d3x3_B1_merge_out_c0_exe12103;
    wire [0:0] conv2d3x3_B1_merge_out_c0_exe13113;
    wire [0:0] conv2d3x3_B1_merge_out_c0_exe14122;
    wire [0:0] conv2d3x3_B1_merge_out_c0_exe15132;
    wire [0:0] conv2d3x3_B1_merge_out_c0_exe16142;
    wire [63:0] conv2d3x3_B1_merge_out_c0_exe324;
    wire [0:0] conv2d3x3_B1_merge_out_c0_exe433;
    wire [31:0] conv2d3x3_B1_merge_out_c0_exe535;
    wire [31:0] conv2d3x3_B1_merge_out_c0_exe651;
    wire [0:0] conv2d3x3_B1_merge_out_c0_exe754;
    wire [0:0] conv2d3x3_B1_merge_out_c0_exe863;
    wire [31:0] conv2d3x3_B1_merge_out_c0_exe973;
    wire [31:0] conv2d3x3_B1_merge_out_j_062;
    wire [0:0] conv2d3x3_B1_merge_out_stall_out_0;
    wire [0:0] conv2d3x3_B1_merge_out_stall_out_1;
    wire [31:0] conv2d3x3_B1_merge_out_unnamed_conv2d3x32;
    wire [0:0] conv2d3x3_B1_merge_out_valid_out;


    // conv2d3x3_B1_merge(BLACKBOX,4)
    conv2d3x3_B1_merge theconv2d3x3_B1_merge (
        .in_c0_exe1083_0(in_c0_exe1083_0),
        .in_c0_exe1083_1(in_c0_exe1083_1),
        .in_c0_exe113_0(in_c0_exe113_0),
        .in_c0_exe113_1(in_c0_exe113_1),
        .in_c0_exe1192_0(in_c0_exe1192_0),
        .in_c0_exe1192_1(in_c0_exe1192_1),
        .in_c0_exe12103_0(in_c0_exe12103_0),
        .in_c0_exe12103_1(in_c0_exe12103_1),
        .in_c0_exe13113_0(in_c0_exe13113_0),
        .in_c0_exe13113_1(in_c0_exe13113_1),
        .in_c0_exe14122_0(in_c0_exe14122_0),
        .in_c0_exe14122_1(in_c0_exe14122_1),
        .in_c0_exe15132_0(in_c0_exe15132_0),
        .in_c0_exe15132_1(in_c0_exe15132_1),
        .in_c0_exe16142_0(in_c0_exe16142_0),
        .in_c0_exe16142_1(in_c0_exe16142_1),
        .in_c0_exe324_0(in_c0_exe324_0),
        .in_c0_exe324_1(in_c0_exe324_1),
        .in_c0_exe433_0(in_c0_exe433_0),
        .in_c0_exe433_1(in_c0_exe433_1),
        .in_c0_exe535_0(in_c0_exe535_0),
        .in_c0_exe535_1(in_c0_exe535_1),
        .in_c0_exe651_0(in_c0_exe651_0),
        .in_c0_exe651_1(in_c0_exe651_1),
        .in_c0_exe754_0(in_c0_exe754_0),
        .in_c0_exe754_1(in_c0_exe754_1),
        .in_c0_exe863_0(in_c0_exe863_0),
        .in_c0_exe863_1(in_c0_exe863_1),
        .in_c0_exe973_0(in_c0_exe973_0),
        .in_c0_exe973_1(in_c0_exe973_1),
        .in_j_062_0(in_j_062_0),
        .in_j_062_1(in_j_062_1),
        .in_stall_in(bb_conv2d3x3_B1_stall_region_out_stall_out),
        .in_unnamed_conv2d3x32_0(in_unnamed_conv2d3x32_0),
        .in_unnamed_conv2d3x32_1(in_unnamed_conv2d3x32_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_c0_exe1083(conv2d3x3_B1_merge_out_c0_exe1083),
        .out_c0_exe113(conv2d3x3_B1_merge_out_c0_exe113),
        .out_c0_exe1192(conv2d3x3_B1_merge_out_c0_exe1192),
        .out_c0_exe12103(conv2d3x3_B1_merge_out_c0_exe12103),
        .out_c0_exe13113(conv2d3x3_B1_merge_out_c0_exe13113),
        .out_c0_exe14122(conv2d3x3_B1_merge_out_c0_exe14122),
        .out_c0_exe15132(conv2d3x3_B1_merge_out_c0_exe15132),
        .out_c0_exe16142(conv2d3x3_B1_merge_out_c0_exe16142),
        .out_c0_exe324(conv2d3x3_B1_merge_out_c0_exe324),
        .out_c0_exe433(conv2d3x3_B1_merge_out_c0_exe433),
        .out_c0_exe535(conv2d3x3_B1_merge_out_c0_exe535),
        .out_c0_exe651(conv2d3x3_B1_merge_out_c0_exe651),
        .out_c0_exe754(conv2d3x3_B1_merge_out_c0_exe754),
        .out_c0_exe863(conv2d3x3_B1_merge_out_c0_exe863),
        .out_c0_exe973(conv2d3x3_B1_merge_out_c0_exe973),
        .out_j_062(conv2d3x3_B1_merge_out_j_062),
        .out_stall_out_0(conv2d3x3_B1_merge_out_stall_out_0),
        .out_stall_out_1(conv2d3x3_B1_merge_out_stall_out_1),
        .out_unnamed_conv2d3x32(conv2d3x3_B1_merge_out_unnamed_conv2d3x32),
        .out_valid_out(conv2d3x3_B1_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B1_stall_region(BLACKBOX,2)
    conv2d3x3_bb_B1_stall_region thebb_conv2d3x3_B1_stall_region (
        .in_c0_exe1083(conv2d3x3_B1_merge_out_c0_exe1083),
        .in_c0_exe113(conv2d3x3_B1_merge_out_c0_exe113),
        .in_c0_exe1192(conv2d3x3_B1_merge_out_c0_exe1192),
        .in_c0_exe12103(conv2d3x3_B1_merge_out_c0_exe12103),
        .in_c0_exe13113(conv2d3x3_B1_merge_out_c0_exe13113),
        .in_c0_exe14122(conv2d3x3_B1_merge_out_c0_exe14122),
        .in_c0_exe15132(conv2d3x3_B1_merge_out_c0_exe15132),
        .in_c0_exe16142(conv2d3x3_B1_merge_out_c0_exe16142),
        .in_c0_exe324(conv2d3x3_B1_merge_out_c0_exe324),
        .in_c0_exe433(conv2d3x3_B1_merge_out_c0_exe433),
        .in_c0_exe535(conv2d3x3_B1_merge_out_c0_exe535),
        .in_c0_exe651(conv2d3x3_B1_merge_out_c0_exe651),
        .in_c0_exe754(conv2d3x3_B1_merge_out_c0_exe754),
        .in_c0_exe863(conv2d3x3_B1_merge_out_c0_exe863),
        .in_c0_exe973(conv2d3x3_B1_merge_out_c0_exe973),
        .in_j_062(conv2d3x3_B1_merge_out_j_062),
        .in_pad(in_pad),
        .in_stall_in(conv2d3x3_B1_branch_out_stall_out),
        .in_stride(in_stride),
        .in_unnamed_conv2d3x32(conv2d3x3_B1_merge_out_unnamed_conv2d3x32),
        .in_valid_in(conv2d3x3_B1_merge_out_valid_out),
        .out_c0_exe1083(bb_conv2d3x3_B1_stall_region_out_c0_exe1083),
        .out_c0_exe113(bb_conv2d3x3_B1_stall_region_out_c0_exe113),
        .out_c0_exe1186(bb_conv2d3x3_B1_stall_region_out_c0_exe1186),
        .out_c0_exe1192(bb_conv2d3x3_B1_stall_region_out_c0_exe1192),
        .out_c0_exe12103(bb_conv2d3x3_B1_stall_region_out_c0_exe12103),
        .out_c0_exe13113(bb_conv2d3x3_B1_stall_region_out_c0_exe13113),
        .out_c0_exe14122(bb_conv2d3x3_B1_stall_region_out_c0_exe14122),
        .out_c0_exe15132(bb_conv2d3x3_B1_stall_region_out_c0_exe15132),
        .out_c0_exe16142(bb_conv2d3x3_B1_stall_region_out_c0_exe16142),
        .out_c0_exe324(bb_conv2d3x3_B1_stall_region_out_c0_exe324),
        .out_c0_exe433(bb_conv2d3x3_B1_stall_region_out_c0_exe433),
        .out_c0_exe535(bb_conv2d3x3_B1_stall_region_out_c0_exe535),
        .out_c0_exe651(bb_conv2d3x3_B1_stall_region_out_c0_exe651),
        .out_c0_exe754(bb_conv2d3x3_B1_stall_region_out_c0_exe754),
        .out_c0_exe863(bb_conv2d3x3_B1_stall_region_out_c0_exe863),
        .out_c0_exe973(bb_conv2d3x3_B1_stall_region_out_c0_exe973),
        .out_j_062(bb_conv2d3x3_B1_stall_region_out_j_062),
        .out_stall_out(bb_conv2d3x3_B1_stall_region_out_stall_out),
        .out_unnamed_conv2d3x32(bb_conv2d3x3_B1_stall_region_out_unnamed_conv2d3x32),
        .out_valid_out(bb_conv2d3x3_B1_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d3x3_B1_branch(BLACKBOX,3)
    conv2d3x3_B1_branch theconv2d3x3_B1_branch (
        .in_c0_exe1083(bb_conv2d3x3_B1_stall_region_out_c0_exe1083),
        .in_c0_exe113(bb_conv2d3x3_B1_stall_region_out_c0_exe113),
        .in_c0_exe1186(bb_conv2d3x3_B1_stall_region_out_c0_exe1186),
        .in_c0_exe1192(bb_conv2d3x3_B1_stall_region_out_c0_exe1192),
        .in_c0_exe12103(bb_conv2d3x3_B1_stall_region_out_c0_exe12103),
        .in_c0_exe13113(bb_conv2d3x3_B1_stall_region_out_c0_exe13113),
        .in_c0_exe14122(bb_conv2d3x3_B1_stall_region_out_c0_exe14122),
        .in_c0_exe15132(bb_conv2d3x3_B1_stall_region_out_c0_exe15132),
        .in_c0_exe16142(bb_conv2d3x3_B1_stall_region_out_c0_exe16142),
        .in_c0_exe324(bb_conv2d3x3_B1_stall_region_out_c0_exe324),
        .in_c0_exe433(bb_conv2d3x3_B1_stall_region_out_c0_exe433),
        .in_c0_exe535(bb_conv2d3x3_B1_stall_region_out_c0_exe535),
        .in_c0_exe651(bb_conv2d3x3_B1_stall_region_out_c0_exe651),
        .in_c0_exe754(bb_conv2d3x3_B1_stall_region_out_c0_exe754),
        .in_c0_exe863(bb_conv2d3x3_B1_stall_region_out_c0_exe863),
        .in_c0_exe973(bb_conv2d3x3_B1_stall_region_out_c0_exe973),
        .in_j_062(bb_conv2d3x3_B1_stall_region_out_j_062),
        .in_stall_in_0(in_stall_in_0),
        .in_unnamed_conv2d3x32(bb_conv2d3x3_B1_stall_region_out_unnamed_conv2d3x32),
        .in_valid_in(bb_conv2d3x3_B1_stall_region_out_valid_out),
        .out_c0_exe1083(conv2d3x3_B1_branch_out_c0_exe1083),
        .out_c0_exe113(conv2d3x3_B1_branch_out_c0_exe113),
        .out_c0_exe1186(conv2d3x3_B1_branch_out_c0_exe1186),
        .out_c0_exe1192(conv2d3x3_B1_branch_out_c0_exe1192),
        .out_c0_exe12103(conv2d3x3_B1_branch_out_c0_exe12103),
        .out_c0_exe13113(conv2d3x3_B1_branch_out_c0_exe13113),
        .out_c0_exe14122(conv2d3x3_B1_branch_out_c0_exe14122),
        .out_c0_exe15132(conv2d3x3_B1_branch_out_c0_exe15132),
        .out_c0_exe16142(conv2d3x3_B1_branch_out_c0_exe16142),
        .out_c0_exe324(conv2d3x3_B1_branch_out_c0_exe324),
        .out_c0_exe433(conv2d3x3_B1_branch_out_c0_exe433),
        .out_c0_exe535(conv2d3x3_B1_branch_out_c0_exe535),
        .out_c0_exe651(conv2d3x3_B1_branch_out_c0_exe651),
        .out_c0_exe754(conv2d3x3_B1_branch_out_c0_exe754),
        .out_c0_exe863(conv2d3x3_B1_branch_out_c0_exe863),
        .out_c0_exe973(conv2d3x3_B1_branch_out_c0_exe973),
        .out_j_062(conv2d3x3_B1_branch_out_j_062),
        .out_stall_out(conv2d3x3_B1_branch_out_stall_out),
        .out_unnamed_conv2d3x32(conv2d3x3_B1_branch_out_unnamed_conv2d3x32),
        .out_valid_out_0(conv2d3x3_B1_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1083(GPOUT,48)
    assign out_c0_exe1083 = conv2d3x3_B1_branch_out_c0_exe1083;

    // out_c0_exe113(GPOUT,49)
    assign out_c0_exe113 = conv2d3x3_B1_branch_out_c0_exe113;

    // out_c0_exe1186(GPOUT,50)
    assign out_c0_exe1186 = conv2d3x3_B1_branch_out_c0_exe1186;

    // out_c0_exe1192(GPOUT,51)
    assign out_c0_exe1192 = conv2d3x3_B1_branch_out_c0_exe1192;

    // out_c0_exe12103(GPOUT,52)
    assign out_c0_exe12103 = conv2d3x3_B1_branch_out_c0_exe12103;

    // out_c0_exe13113(GPOUT,53)
    assign out_c0_exe13113 = conv2d3x3_B1_branch_out_c0_exe13113;

    // out_c0_exe14122(GPOUT,54)
    assign out_c0_exe14122 = conv2d3x3_B1_branch_out_c0_exe14122;

    // out_c0_exe15132(GPOUT,55)
    assign out_c0_exe15132 = conv2d3x3_B1_branch_out_c0_exe15132;

    // out_c0_exe16142(GPOUT,56)
    assign out_c0_exe16142 = conv2d3x3_B1_branch_out_c0_exe16142;

    // out_c0_exe324(GPOUT,57)
    assign out_c0_exe324 = conv2d3x3_B1_branch_out_c0_exe324;

    // out_c0_exe433(GPOUT,58)
    assign out_c0_exe433 = conv2d3x3_B1_branch_out_c0_exe433;

    // out_c0_exe535(GPOUT,59)
    assign out_c0_exe535 = conv2d3x3_B1_branch_out_c0_exe535;

    // out_c0_exe651(GPOUT,60)
    assign out_c0_exe651 = conv2d3x3_B1_branch_out_c0_exe651;

    // out_c0_exe754(GPOUT,61)
    assign out_c0_exe754 = conv2d3x3_B1_branch_out_c0_exe754;

    // out_c0_exe863(GPOUT,62)
    assign out_c0_exe863 = conv2d3x3_B1_branch_out_c0_exe863;

    // out_c0_exe973(GPOUT,63)
    assign out_c0_exe973 = conv2d3x3_B1_branch_out_c0_exe973;

    // out_j_062(GPOUT,64)
    assign out_j_062 = conv2d3x3_B1_branch_out_j_062;

    // out_stall_out_0(GPOUT,65)
    assign out_stall_out_0 = conv2d3x3_B1_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,66)
    assign out_stall_out_1 = conv2d3x3_B1_merge_out_stall_out_1;

    // out_unnamed_conv2d3x32(GPOUT,67)
    assign out_unnamed_conv2d3x32 = conv2d3x3_B1_branch_out_unnamed_conv2d3x32;

    // out_valid_in_0(GPOUT,68)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,69)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,70)
    assign out_valid_out_0 = conv2d3x3_B1_branch_out_valid_out_0;

endmodule
