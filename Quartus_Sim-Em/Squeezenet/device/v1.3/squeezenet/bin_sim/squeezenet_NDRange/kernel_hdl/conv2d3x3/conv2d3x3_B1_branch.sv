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

// SystemVerilog created from conv2d3x3_B1_branch
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B1_branch (
    input wire [0:0] in_c0_exe1083,
    input wire [63:0] in_c0_exe113,
    input wire [31:0] in_c0_exe1186,
    input wire [0:0] in_c0_exe1192,
    input wire [31:0] in_c0_exe12103,
    input wire [0:0] in_c0_exe13113,
    input wire [0:0] in_c0_exe14122,
    input wire [0:0] in_c0_exe15132,
    input wire [0:0] in_c0_exe16142,
    input wire [63:0] in_c0_exe324,
    input wire [0:0] in_c0_exe433,
    input wire [31:0] in_c0_exe535,
    input wire [31:0] in_c0_exe651,
    input wire [0:0] in_c0_exe754,
    input wire [0:0] in_c0_exe863,
    input wire [31:0] in_c0_exe973,
    input wire [31:0] in_j_062,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_conv2d3x32,
    input wire [0:0] in_valid_in,
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
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_conv2d3x32,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe1083(GPOUT,22)
    assign out_c0_exe1083 = in_c0_exe1083;

    // out_c0_exe113(GPOUT,23)
    assign out_c0_exe113 = in_c0_exe113;

    // out_c0_exe1186(GPOUT,24)
    assign out_c0_exe1186 = in_c0_exe1186;

    // out_c0_exe1192(GPOUT,25)
    assign out_c0_exe1192 = in_c0_exe1192;

    // out_c0_exe12103(GPOUT,26)
    assign out_c0_exe12103 = in_c0_exe12103;

    // out_c0_exe13113(GPOUT,27)
    assign out_c0_exe13113 = in_c0_exe13113;

    // out_c0_exe14122(GPOUT,28)
    assign out_c0_exe14122 = in_c0_exe14122;

    // out_c0_exe15132(GPOUT,29)
    assign out_c0_exe15132 = in_c0_exe15132;

    // out_c0_exe16142(GPOUT,30)
    assign out_c0_exe16142 = in_c0_exe16142;

    // out_c0_exe324(GPOUT,31)
    assign out_c0_exe324 = in_c0_exe324;

    // out_c0_exe433(GPOUT,32)
    assign out_c0_exe433 = in_c0_exe433;

    // out_c0_exe535(GPOUT,33)
    assign out_c0_exe535 = in_c0_exe535;

    // out_c0_exe651(GPOUT,34)
    assign out_c0_exe651 = in_c0_exe651;

    // out_c0_exe754(GPOUT,35)
    assign out_c0_exe754 = in_c0_exe754;

    // out_c0_exe863(GPOUT,36)
    assign out_c0_exe863 = in_c0_exe863;

    // out_c0_exe973(GPOUT,37)
    assign out_c0_exe973 = in_c0_exe973;

    // out_j_062(GPOUT,38)
    assign out_j_062 = in_j_062;

    // stall_out(LOGICAL,42)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,39)
    assign out_stall_out = stall_out_q;

    // out_unnamed_conv2d3x32(GPOUT,40)
    assign out_unnamed_conv2d3x32 = in_unnamed_conv2d3x32;

    // out_valid_out_0(GPOUT,41)
    assign out_valid_out_0 = in_valid_in;

endmodule
