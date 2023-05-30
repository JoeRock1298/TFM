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

// SystemVerilog created from conv2d3x3_B10_merge
// SystemVerilog created on Tue May 30 12:30:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B10_merge (
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
    input wire [31:0] in_j_062144_0,
    input wire [31:0] in_k_059158_0,
    input wire [0:0] in_stall_in,
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
    output wire [31:0] out_j_062144,
    output wire [31:0] out_k_059158,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_conv2d3x315,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe1085(GPOUT,24)
    assign out_c0_exe1085 = in_c0_exe1085_0;

    // out_c0_exe115(GPOUT,25)
    assign out_c0_exe115 = in_c0_exe115_0;

    // out_c0_exe1186153(GPOUT,26)
    assign out_c0_exe1186153 = in_c0_exe1186153_0;

    // out_c0_exe1194(GPOUT,27)
    assign out_c0_exe1194 = in_c0_exe1194_0;

    // out_c0_exe12105(GPOUT,28)
    assign out_c0_exe12105 = in_c0_exe12105_0;

    // out_c0_exe1254179(GPOUT,29)
    assign out_c0_exe1254179 = in_c0_exe1254179_0;

    // out_c0_exe13115(GPOUT,30)
    assign out_c0_exe13115 = in_c0_exe13115_0;

    // out_c0_exe14124(GPOUT,31)
    assign out_c0_exe14124 = in_c0_exe14124_0;

    // out_c0_exe15125(GPOUT,32)
    assign out_c0_exe15125 = in_c0_exe15125_0;

    // out_c0_exe16135(GPOUT,33)
    assign out_c0_exe16135 = in_c0_exe16135_0;

    // out_c0_exe317(GPOUT,34)
    assign out_c0_exe317 = in_c0_exe317_0;

    // out_c0_exe426(GPOUT,35)
    assign out_c0_exe426 = in_c0_exe426_0;

    // out_c0_exe537(GPOUT,36)
    assign out_c0_exe537 = in_c0_exe537_0;

    // out_c0_exe644(GPOUT,37)
    assign out_c0_exe644 = in_c0_exe644_0;

    // out_c0_exe756(GPOUT,38)
    assign out_c0_exe756 = in_c0_exe756_0;

    // out_c0_exe865(GPOUT,39)
    assign out_c0_exe865 = in_c0_exe865_0;

    // out_c0_exe975(GPOUT,40)
    assign out_c0_exe975 = in_c0_exe975_0;

    // out_j_062144(GPOUT,41)
    assign out_j_062144 = in_j_062144_0;

    // out_k_059158(GPOUT,42)
    assign out_k_059158 = in_k_059158_0;

    // stall_out(LOGICAL,46)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,43)
    assign out_stall_out_0 = stall_out_q;

    // out_unnamed_conv2d3x315(GPOUT,44)
    assign out_unnamed_conv2d3x315 = in_unnamed_conv2d3x315_0;

    // out_valid_out(GPOUT,45)
    assign out_valid_out = in_valid_in_0;

endmodule
