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

// SystemVerilog created from conv2d3x3_B6_merge
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B6_merge (
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
    input wire [31:0] in_j_062148_0,
    input wire [31:0] in_k_059162_0,
    input wire [31:0] in_mul46_add4171_0,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_conv2d3x39_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe1080,
    output wire [63:0] out_c0_exe110,
    output wire [31:0] out_c0_exe1186157,
    output wire [0:0] out_c0_exe1189,
    output wire [31:0] out_c0_exe1195166,
    output wire [31:0] out_c0_exe12100,
    output wire [31:0] out_c0_exe1214173,
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
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe1080(GPOUT,26)
    assign out_c0_exe1080 = in_c0_exe1080_0;

    // out_c0_exe110(GPOUT,27)
    assign out_c0_exe110 = in_c0_exe110_0;

    // out_c0_exe1186157(GPOUT,28)
    assign out_c0_exe1186157 = in_c0_exe1186157_0;

    // out_c0_exe1189(GPOUT,29)
    assign out_c0_exe1189 = in_c0_exe1189_0;

    // out_c0_exe1195166(GPOUT,30)
    assign out_c0_exe1195166 = in_c0_exe1195166_0;

    // out_c0_exe12100(GPOUT,31)
    assign out_c0_exe12100 = in_c0_exe12100_0;

    // out_c0_exe1214173(GPOUT,32)
    assign out_c0_exe1214173 = in_c0_exe1214173_0;

    // out_c0_exe13110(GPOUT,33)
    assign out_c0_exe13110 = in_c0_exe13110_0;

    // out_c0_exe14119(GPOUT,34)
    assign out_c0_exe14119 = in_c0_exe14119_0;

    // out_c0_exe15129(GPOUT,35)
    assign out_c0_exe15129 = in_c0_exe15129_0;

    // out_c0_exe16139(GPOUT,36)
    assign out_c0_exe16139 = in_c0_exe16139_0;

    // out_c0_exe321(GPOUT,37)
    assign out_c0_exe321 = in_c0_exe321_0;

    // out_c0_exe430(GPOUT,38)
    assign out_c0_exe430 = in_c0_exe430_0;

    // out_c0_exe541(GPOUT,39)
    assign out_c0_exe541 = in_c0_exe541_0;

    // out_c0_exe648(GPOUT,40)
    assign out_c0_exe648 = in_c0_exe648_0;

    // out_c0_exe760(GPOUT,41)
    assign out_c0_exe760 = in_c0_exe760_0;

    // out_c0_exe869(GPOUT,42)
    assign out_c0_exe869 = in_c0_exe869_0;

    // out_c0_exe970(GPOUT,43)
    assign out_c0_exe970 = in_c0_exe970_0;

    // out_j_062148(GPOUT,44)
    assign out_j_062148 = in_j_062148_0;

    // out_k_059162(GPOUT,45)
    assign out_k_059162 = in_k_059162_0;

    // out_mul46_add4171(GPOUT,46)
    assign out_mul46_add4171 = in_mul46_add4171_0;

    // stall_out(LOGICAL,50)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,47)
    assign out_stall_out_0 = stall_out_q;

    // out_unnamed_conv2d3x39(GPOUT,48)
    assign out_unnamed_conv2d3x39 = in_unnamed_conv2d3x39_0;

    // out_valid_out(GPOUT,49)
    assign out_valid_out = in_valid_in_0;

endmodule
