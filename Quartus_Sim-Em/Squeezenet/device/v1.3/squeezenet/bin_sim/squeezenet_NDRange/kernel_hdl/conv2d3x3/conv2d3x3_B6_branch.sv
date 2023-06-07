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

// SystemVerilog created from conv2d3x3_B6_branch
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B6_branch (
    input wire [31:0] in_add48_1_le,
    input wire [0:0] in_c0_exe1080,
    input wire [63:0] in_c0_exe110,
    input wire [31:0] in_c0_exe1186157,
    input wire [0:0] in_c0_exe1189,
    input wire [31:0] in_c0_exe1195166,
    input wire [31:0] in_c0_exe12100,
    input wire [31:0] in_c0_exe1214173,
    input wire [31:0] in_c0_exe1222,
    input wire [0:0] in_c0_exe13110,
    input wire [0:0] in_c0_exe14119,
    input wire [0:0] in_c0_exe15129,
    input wire [0:0] in_c0_exe16139,
    input wire [63:0] in_c0_exe321,
    input wire [0:0] in_c0_exe430,
    input wire [31:0] in_c0_exe541,
    input wire [31:0] in_c0_exe648,
    input wire [0:0] in_c0_exe760,
    input wire [0:0] in_c0_exe869,
    input wire [31:0] in_c0_exe970,
    input wire [31:0] in_j_062148,
    input wire [31:0] in_k_059162,
    input wire [31:0] in_mul46_add4171,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_conv2d3x39,
    input wire [0:0] in_valid_in,
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
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_conv2d3x39,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_add48_1_le(GPOUT,28)
    assign out_add48_1_le = in_add48_1_le;

    // out_c0_exe1080(GPOUT,29)
    assign out_c0_exe1080 = in_c0_exe1080;

    // out_c0_exe110(GPOUT,30)
    assign out_c0_exe110 = in_c0_exe110;

    // out_c0_exe1186157(GPOUT,31)
    assign out_c0_exe1186157 = in_c0_exe1186157;

    // out_c0_exe1189(GPOUT,32)
    assign out_c0_exe1189 = in_c0_exe1189;

    // out_c0_exe1195166(GPOUT,33)
    assign out_c0_exe1195166 = in_c0_exe1195166;

    // out_c0_exe12100(GPOUT,34)
    assign out_c0_exe12100 = in_c0_exe12100;

    // out_c0_exe1214173(GPOUT,35)
    assign out_c0_exe1214173 = in_c0_exe1214173;

    // out_c0_exe1222(GPOUT,36)
    assign out_c0_exe1222 = in_c0_exe1222;

    // out_c0_exe13110(GPOUT,37)
    assign out_c0_exe13110 = in_c0_exe13110;

    // out_c0_exe14119(GPOUT,38)
    assign out_c0_exe14119 = in_c0_exe14119;

    // out_c0_exe15129(GPOUT,39)
    assign out_c0_exe15129 = in_c0_exe15129;

    // out_c0_exe16139(GPOUT,40)
    assign out_c0_exe16139 = in_c0_exe16139;

    // out_c0_exe321(GPOUT,41)
    assign out_c0_exe321 = in_c0_exe321;

    // out_c0_exe430(GPOUT,42)
    assign out_c0_exe430 = in_c0_exe430;

    // out_c0_exe541(GPOUT,43)
    assign out_c0_exe541 = in_c0_exe541;

    // out_c0_exe648(GPOUT,44)
    assign out_c0_exe648 = in_c0_exe648;

    // out_c0_exe760(GPOUT,45)
    assign out_c0_exe760 = in_c0_exe760;

    // out_c0_exe869(GPOUT,46)
    assign out_c0_exe869 = in_c0_exe869;

    // out_c0_exe970(GPOUT,47)
    assign out_c0_exe970 = in_c0_exe970;

    // out_j_062148(GPOUT,48)
    assign out_j_062148 = in_j_062148;

    // out_k_059162(GPOUT,49)
    assign out_k_059162 = in_k_059162;

    // out_mul46_add4171(GPOUT,50)
    assign out_mul46_add4171 = in_mul46_add4171;

    // stall_out(LOGICAL,54)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,51)
    assign out_stall_out = stall_out_q;

    // out_unnamed_conv2d3x39(GPOUT,52)
    assign out_unnamed_conv2d3x39 = in_unnamed_conv2d3x39;

    // out_valid_out_0(GPOUT,53)
    assign out_valid_out_0 = in_valid_in;

endmodule
