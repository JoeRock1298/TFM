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

// SystemVerilog created from conv2d3x3_bb_B10
// SystemVerilog created on Tue May 30 12:30:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B10 (
    input wire [0:0] in_c0_exe1085_0,
    input wire [63:0] in_c0_exe115_0,
    input wire [31:0] in_c0_exe1186153_0,
    input wire [0:0] in_c0_exe1194_0,
    input wire [31:0] in_c0_exe12105_0,
    input wire [31:0] in_c0_exe1254179_0,
    input wire [0:0] in_c0_exe13115_0,
    input wire [0:0] in_c0_exe14124_0,
    input wire [0:0] in_c0_exe15125_0,
    input wire [0:0] in_c0_exe16135_0,
    input wire [63:0] in_c0_exe317_0,
    input wire [0:0] in_c0_exe426_0,
    input wire [31:0] in_c0_exe537_0,
    input wire [31:0] in_c0_exe644_0,
    input wire [0:0] in_c0_exe756_0,
    input wire [0:0] in_c0_exe865_0,
    input wire [31:0] in_c0_exe975_0,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [31:0] in_j_062144_0,
    input wire [31:0] in_k_059158_0,
    input wire [31:0] in_output_size,
    input wire [31:0] in_pad,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_stride,
    input wire [31:0] in_unnamed_conv2d3x315_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe1085,
    output wire [63:0] out_c0_exe115,
    output wire [31:0] out_c0_exe1186153,
    output wire [0:0] out_c0_exe1194,
    output wire [31:0] out_c0_exe12105,
    output wire [31:0] out_c0_exe1254179,
    output wire [0:0] out_c0_exe13115,
    output wire [0:0] out_c0_exe14124,
    output wire [0:0] out_c0_exe15125,
    output wire [0:0] out_c0_exe16135,
    output wire [63:0] out_c0_exe317,
    output wire [0:0] out_c0_exe426,
    output wire [31:0] out_c0_exe537,
    output wire [31:0] out_c0_exe644,
    output wire [0:0] out_c0_exe756,
    output wire [0:0] out_c0_exe865,
    output wire [31:0] out_c0_exe975,
    output wire [31:0] out_inc57,
    output wire [31:0] out_j_062144,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_conv2d3x315,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe1085;
    wire [63:0] bb_conv2d3x3_B10_stall_region_out_c0_exe115;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_c0_exe1186153;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe1194;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_c0_exe12105;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_c0_exe1254179;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe13115;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe14124;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe15125;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe16135;
    wire [63:0] bb_conv2d3x3_B10_stall_region_out_c0_exe317;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe426;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_c0_exe537;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_c0_exe644;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe756;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe865;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_c0_exe975;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_inc57;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_j_062144;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_stall_out;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_unnamed_conv2d3x315;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_unnamed_conv2d3x316;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_valid_out;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe1085;
    wire [63:0] conv2d3x3_B10_branch_out_c0_exe115;
    wire [31:0] conv2d3x3_B10_branch_out_c0_exe1186153;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe1194;
    wire [31:0] conv2d3x3_B10_branch_out_c0_exe12105;
    wire [31:0] conv2d3x3_B10_branch_out_c0_exe1254179;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe13115;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe14124;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe15125;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe16135;
    wire [63:0] conv2d3x3_B10_branch_out_c0_exe317;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe426;
    wire [31:0] conv2d3x3_B10_branch_out_c0_exe537;
    wire [31:0] conv2d3x3_B10_branch_out_c0_exe644;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe756;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe865;
    wire [31:0] conv2d3x3_B10_branch_out_c0_exe975;
    wire [31:0] conv2d3x3_B10_branch_out_inc57;
    wire [31:0] conv2d3x3_B10_branch_out_j_062144;
    wire [0:0] conv2d3x3_B10_branch_out_stall_out;
    wire [31:0] conv2d3x3_B10_branch_out_unnamed_conv2d3x315;
    wire [0:0] conv2d3x3_B10_branch_out_valid_out_0;
    wire [0:0] conv2d3x3_B10_branch_out_valid_out_1;
    wire [0:0] conv2d3x3_B10_merge_out_c0_exe1085;
    wire [63:0] conv2d3x3_B10_merge_out_c0_exe115;
    wire [31:0] conv2d3x3_B10_merge_out_c0_exe1186153;
    wire [0:0] conv2d3x3_B10_merge_out_c0_exe1194;
    wire [31:0] conv2d3x3_B10_merge_out_c0_exe12105;
    wire [31:0] conv2d3x3_B10_merge_out_c0_exe1254179;
    wire [0:0] conv2d3x3_B10_merge_out_c0_exe13115;
    wire [0:0] conv2d3x3_B10_merge_out_c0_exe14124;
    wire [0:0] conv2d3x3_B10_merge_out_c0_exe15125;
    wire [0:0] conv2d3x3_B10_merge_out_c0_exe16135;
    wire [63:0] conv2d3x3_B10_merge_out_c0_exe317;
    wire [0:0] conv2d3x3_B10_merge_out_c0_exe426;
    wire [31:0] conv2d3x3_B10_merge_out_c0_exe537;
    wire [31:0] conv2d3x3_B10_merge_out_c0_exe644;
    wire [0:0] conv2d3x3_B10_merge_out_c0_exe756;
    wire [0:0] conv2d3x3_B10_merge_out_c0_exe865;
    wire [31:0] conv2d3x3_B10_merge_out_c0_exe975;
    wire [31:0] conv2d3x3_B10_merge_out_j_062144;
    wire [31:0] conv2d3x3_B10_merge_out_k_059158;
    wire [0:0] conv2d3x3_B10_merge_out_stall_out_0;
    wire [31:0] conv2d3x3_B10_merge_out_unnamed_conv2d3x315;
    wire [0:0] conv2d3x3_B10_merge_out_valid_out;


    // conv2d3x3_B10_merge(BLACKBOX,4)
    conv2d3x3_B10_merge theconv2d3x3_B10_merge (
        .in_c0_exe1085_0(in_c0_exe1085_0),
        .in_c0_exe115_0(in_c0_exe115_0),
        .in_c0_exe1186153_0(in_c0_exe1186153_0),
        .in_c0_exe1194_0(in_c0_exe1194_0),
        .in_c0_exe12105_0(in_c0_exe12105_0),
        .in_c0_exe1254179_0(in_c0_exe1254179_0),
        .in_c0_exe13115_0(in_c0_exe13115_0),
        .in_c0_exe14124_0(in_c0_exe14124_0),
        .in_c0_exe15125_0(in_c0_exe15125_0),
        .in_c0_exe16135_0(in_c0_exe16135_0),
        .in_c0_exe317_0(in_c0_exe317_0),
        .in_c0_exe426_0(in_c0_exe426_0),
        .in_c0_exe537_0(in_c0_exe537_0),
        .in_c0_exe644_0(in_c0_exe644_0),
        .in_c0_exe756_0(in_c0_exe756_0),
        .in_c0_exe865_0(in_c0_exe865_0),
        .in_c0_exe975_0(in_c0_exe975_0),
        .in_j_062144_0(in_j_062144_0),
        .in_k_059158_0(in_k_059158_0),
        .in_stall_in(bb_conv2d3x3_B10_stall_region_out_stall_out),
        .in_unnamed_conv2d3x315_0(in_unnamed_conv2d3x315_0),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe1085(conv2d3x3_B10_merge_out_c0_exe1085),
        .out_c0_exe115(conv2d3x3_B10_merge_out_c0_exe115),
        .out_c0_exe1186153(conv2d3x3_B10_merge_out_c0_exe1186153),
        .out_c0_exe1194(conv2d3x3_B10_merge_out_c0_exe1194),
        .out_c0_exe12105(conv2d3x3_B10_merge_out_c0_exe12105),
        .out_c0_exe1254179(conv2d3x3_B10_merge_out_c0_exe1254179),
        .out_c0_exe13115(conv2d3x3_B10_merge_out_c0_exe13115),
        .out_c0_exe14124(conv2d3x3_B10_merge_out_c0_exe14124),
        .out_c0_exe15125(conv2d3x3_B10_merge_out_c0_exe15125),
        .out_c0_exe16135(conv2d3x3_B10_merge_out_c0_exe16135),
        .out_c0_exe317(conv2d3x3_B10_merge_out_c0_exe317),
        .out_c0_exe426(conv2d3x3_B10_merge_out_c0_exe426),
        .out_c0_exe537(conv2d3x3_B10_merge_out_c0_exe537),
        .out_c0_exe644(conv2d3x3_B10_merge_out_c0_exe644),
        .out_c0_exe756(conv2d3x3_B10_merge_out_c0_exe756),
        .out_c0_exe865(conv2d3x3_B10_merge_out_c0_exe865),
        .out_c0_exe975(conv2d3x3_B10_merge_out_c0_exe975),
        .out_j_062144(conv2d3x3_B10_merge_out_j_062144),
        .out_k_059158(conv2d3x3_B10_merge_out_k_059158),
        .out_stall_out_0(conv2d3x3_B10_merge_out_stall_out_0),
        .out_unnamed_conv2d3x315(conv2d3x3_B10_merge_out_unnamed_conv2d3x315),
        .out_valid_out(conv2d3x3_B10_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B10_stall_region(BLACKBOX,2)
    conv2d3x3_bb_B10_stall_region thebb_conv2d3x3_B10_stall_region (
        .in_c0_exe1085(conv2d3x3_B10_merge_out_c0_exe1085),
        .in_c0_exe115(conv2d3x3_B10_merge_out_c0_exe115),
        .in_c0_exe1186153(conv2d3x3_B10_merge_out_c0_exe1186153),
        .in_c0_exe1194(conv2d3x3_B10_merge_out_c0_exe1194),
        .in_c0_exe12105(conv2d3x3_B10_merge_out_c0_exe12105),
        .in_c0_exe1254179(conv2d3x3_B10_merge_out_c0_exe1254179),
        .in_c0_exe13115(conv2d3x3_B10_merge_out_c0_exe13115),
        .in_c0_exe14124(conv2d3x3_B10_merge_out_c0_exe14124),
        .in_c0_exe15125(conv2d3x3_B10_merge_out_c0_exe15125),
        .in_c0_exe16135(conv2d3x3_B10_merge_out_c0_exe16135),
        .in_c0_exe317(conv2d3x3_B10_merge_out_c0_exe317),
        .in_c0_exe426(conv2d3x3_B10_merge_out_c0_exe426),
        .in_c0_exe537(conv2d3x3_B10_merge_out_c0_exe537),
        .in_c0_exe644(conv2d3x3_B10_merge_out_c0_exe644),
        .in_c0_exe756(conv2d3x3_B10_merge_out_c0_exe756),
        .in_c0_exe865(conv2d3x3_B10_merge_out_c0_exe865),
        .in_c0_exe975(conv2d3x3_B10_merge_out_c0_exe975),
        .in_input_channels(in_input_channels),
        .in_j_062144(conv2d3x3_B10_merge_out_j_062144),
        .in_k_059158(conv2d3x3_B10_merge_out_k_059158),
        .in_stall_in(conv2d3x3_B10_branch_out_stall_out),
        .in_unnamed_conv2d3x315(conv2d3x3_B10_merge_out_unnamed_conv2d3x315),
        .in_valid_in(conv2d3x3_B10_merge_out_valid_out),
        .out_c0_exe1085(bb_conv2d3x3_B10_stall_region_out_c0_exe1085),
        .out_c0_exe115(bb_conv2d3x3_B10_stall_region_out_c0_exe115),
        .out_c0_exe1186153(bb_conv2d3x3_B10_stall_region_out_c0_exe1186153),
        .out_c0_exe1194(bb_conv2d3x3_B10_stall_region_out_c0_exe1194),
        .out_c0_exe12105(bb_conv2d3x3_B10_stall_region_out_c0_exe12105),
        .out_c0_exe1254179(bb_conv2d3x3_B10_stall_region_out_c0_exe1254179),
        .out_c0_exe13115(bb_conv2d3x3_B10_stall_region_out_c0_exe13115),
        .out_c0_exe14124(bb_conv2d3x3_B10_stall_region_out_c0_exe14124),
        .out_c0_exe15125(bb_conv2d3x3_B10_stall_region_out_c0_exe15125),
        .out_c0_exe16135(bb_conv2d3x3_B10_stall_region_out_c0_exe16135),
        .out_c0_exe317(bb_conv2d3x3_B10_stall_region_out_c0_exe317),
        .out_c0_exe426(bb_conv2d3x3_B10_stall_region_out_c0_exe426),
        .out_c0_exe537(bb_conv2d3x3_B10_stall_region_out_c0_exe537),
        .out_c0_exe644(bb_conv2d3x3_B10_stall_region_out_c0_exe644),
        .out_c0_exe756(bb_conv2d3x3_B10_stall_region_out_c0_exe756),
        .out_c0_exe865(bb_conv2d3x3_B10_stall_region_out_c0_exe865),
        .out_c0_exe975(bb_conv2d3x3_B10_stall_region_out_c0_exe975),
        .out_inc57(bb_conv2d3x3_B10_stall_region_out_inc57),
        .out_j_062144(bb_conv2d3x3_B10_stall_region_out_j_062144),
        .out_stall_out(bb_conv2d3x3_B10_stall_region_out_stall_out),
        .out_unnamed_conv2d3x315(bb_conv2d3x3_B10_stall_region_out_unnamed_conv2d3x315),
        .out_unnamed_conv2d3x316(bb_conv2d3x3_B10_stall_region_out_unnamed_conv2d3x316),
        .out_valid_out(bb_conv2d3x3_B10_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d3x3_B10_branch(BLACKBOX,3)
    conv2d3x3_B10_branch theconv2d3x3_B10_branch (
        .in_c0_exe1085(bb_conv2d3x3_B10_stall_region_out_c0_exe1085),
        .in_c0_exe115(bb_conv2d3x3_B10_stall_region_out_c0_exe115),
        .in_c0_exe1186153(bb_conv2d3x3_B10_stall_region_out_c0_exe1186153),
        .in_c0_exe1194(bb_conv2d3x3_B10_stall_region_out_c0_exe1194),
        .in_c0_exe12105(bb_conv2d3x3_B10_stall_region_out_c0_exe12105),
        .in_c0_exe1254179(bb_conv2d3x3_B10_stall_region_out_c0_exe1254179),
        .in_c0_exe13115(bb_conv2d3x3_B10_stall_region_out_c0_exe13115),
        .in_c0_exe14124(bb_conv2d3x3_B10_stall_region_out_c0_exe14124),
        .in_c0_exe15125(bb_conv2d3x3_B10_stall_region_out_c0_exe15125),
        .in_c0_exe16135(bb_conv2d3x3_B10_stall_region_out_c0_exe16135),
        .in_c0_exe317(bb_conv2d3x3_B10_stall_region_out_c0_exe317),
        .in_c0_exe426(bb_conv2d3x3_B10_stall_region_out_c0_exe426),
        .in_c0_exe537(bb_conv2d3x3_B10_stall_region_out_c0_exe537),
        .in_c0_exe644(bb_conv2d3x3_B10_stall_region_out_c0_exe644),
        .in_c0_exe756(bb_conv2d3x3_B10_stall_region_out_c0_exe756),
        .in_c0_exe865(bb_conv2d3x3_B10_stall_region_out_c0_exe865),
        .in_c0_exe975(bb_conv2d3x3_B10_stall_region_out_c0_exe975),
        .in_inc57(bb_conv2d3x3_B10_stall_region_out_inc57),
        .in_j_062144(bb_conv2d3x3_B10_stall_region_out_j_062144),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_unnamed_conv2d3x315(bb_conv2d3x3_B10_stall_region_out_unnamed_conv2d3x315),
        .in_unnamed_conv2d3x316(bb_conv2d3x3_B10_stall_region_out_unnamed_conv2d3x316),
        .in_valid_in(bb_conv2d3x3_B10_stall_region_out_valid_out),
        .out_c0_exe1085(conv2d3x3_B10_branch_out_c0_exe1085),
        .out_c0_exe115(conv2d3x3_B10_branch_out_c0_exe115),
        .out_c0_exe1186153(conv2d3x3_B10_branch_out_c0_exe1186153),
        .out_c0_exe1194(conv2d3x3_B10_branch_out_c0_exe1194),
        .out_c0_exe12105(conv2d3x3_B10_branch_out_c0_exe12105),
        .out_c0_exe1254179(conv2d3x3_B10_branch_out_c0_exe1254179),
        .out_c0_exe13115(conv2d3x3_B10_branch_out_c0_exe13115),
        .out_c0_exe14124(conv2d3x3_B10_branch_out_c0_exe14124),
        .out_c0_exe15125(conv2d3x3_B10_branch_out_c0_exe15125),
        .out_c0_exe16135(conv2d3x3_B10_branch_out_c0_exe16135),
        .out_c0_exe317(conv2d3x3_B10_branch_out_c0_exe317),
        .out_c0_exe426(conv2d3x3_B10_branch_out_c0_exe426),
        .out_c0_exe537(conv2d3x3_B10_branch_out_c0_exe537),
        .out_c0_exe644(conv2d3x3_B10_branch_out_c0_exe644),
        .out_c0_exe756(conv2d3x3_B10_branch_out_c0_exe756),
        .out_c0_exe865(conv2d3x3_B10_branch_out_c0_exe865),
        .out_c0_exe975(conv2d3x3_B10_branch_out_c0_exe975),
        .out_inc57(conv2d3x3_B10_branch_out_inc57),
        .out_j_062144(conv2d3x3_B10_branch_out_j_062144),
        .out_stall_out(conv2d3x3_B10_branch_out_stall_out),
        .out_unnamed_conv2d3x315(conv2d3x3_B10_branch_out_unnamed_conv2d3x315),
        .out_valid_out_0(conv2d3x3_B10_branch_out_valid_out_0),
        .out_valid_out_1(conv2d3x3_B10_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1085(GPOUT,34)
    assign out_c0_exe1085 = conv2d3x3_B10_branch_out_c0_exe1085;

    // out_c0_exe115(GPOUT,35)
    assign out_c0_exe115 = conv2d3x3_B10_branch_out_c0_exe115;

    // out_c0_exe1186153(GPOUT,36)
    assign out_c0_exe1186153 = conv2d3x3_B10_branch_out_c0_exe1186153;

    // out_c0_exe1194(GPOUT,37)
    assign out_c0_exe1194 = conv2d3x3_B10_branch_out_c0_exe1194;

    // out_c0_exe12105(GPOUT,38)
    assign out_c0_exe12105 = conv2d3x3_B10_branch_out_c0_exe12105;

    // out_c0_exe1254179(GPOUT,39)
    assign out_c0_exe1254179 = conv2d3x3_B10_branch_out_c0_exe1254179;

    // out_c0_exe13115(GPOUT,40)
    assign out_c0_exe13115 = conv2d3x3_B10_branch_out_c0_exe13115;

    // out_c0_exe14124(GPOUT,41)
    assign out_c0_exe14124 = conv2d3x3_B10_branch_out_c0_exe14124;

    // out_c0_exe15125(GPOUT,42)
    assign out_c0_exe15125 = conv2d3x3_B10_branch_out_c0_exe15125;

    // out_c0_exe16135(GPOUT,43)
    assign out_c0_exe16135 = conv2d3x3_B10_branch_out_c0_exe16135;

    // out_c0_exe317(GPOUT,44)
    assign out_c0_exe317 = conv2d3x3_B10_branch_out_c0_exe317;

    // out_c0_exe426(GPOUT,45)
    assign out_c0_exe426 = conv2d3x3_B10_branch_out_c0_exe426;

    // out_c0_exe537(GPOUT,46)
    assign out_c0_exe537 = conv2d3x3_B10_branch_out_c0_exe537;

    // out_c0_exe644(GPOUT,47)
    assign out_c0_exe644 = conv2d3x3_B10_branch_out_c0_exe644;

    // out_c0_exe756(GPOUT,48)
    assign out_c0_exe756 = conv2d3x3_B10_branch_out_c0_exe756;

    // out_c0_exe865(GPOUT,49)
    assign out_c0_exe865 = conv2d3x3_B10_branch_out_c0_exe865;

    // out_c0_exe975(GPOUT,50)
    assign out_c0_exe975 = conv2d3x3_B10_branch_out_c0_exe975;

    // out_inc57(GPOUT,51)
    assign out_inc57 = conv2d3x3_B10_branch_out_inc57;

    // out_j_062144(GPOUT,52)
    assign out_j_062144 = conv2d3x3_B10_branch_out_j_062144;

    // out_stall_in_0(GPOUT,53)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,54)
    assign out_stall_out_0 = conv2d3x3_B10_merge_out_stall_out_0;

    // out_unnamed_conv2d3x315(GPOUT,55)
    assign out_unnamed_conv2d3x315 = conv2d3x3_B10_branch_out_unnamed_conv2d3x315;

    // out_valid_out_0(GPOUT,56)
    assign out_valid_out_0 = conv2d3x3_B10_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,57)
    assign out_valid_out_1 = conv2d3x3_B10_branch_out_valid_out_1;

endmodule
