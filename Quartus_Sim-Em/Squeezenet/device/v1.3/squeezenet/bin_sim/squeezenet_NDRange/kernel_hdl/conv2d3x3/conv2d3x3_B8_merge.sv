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

// SystemVerilog created from conv2d3x3_B8_merge
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B8_merge (
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
    input wire [31:0] in_j_062146_0,
    input wire [31:0] in_k_059160_0,
    input wire [31:0] in_mul46_add4169_0,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_conv2d3x312_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe1087,
    output wire [31:0] out_c0_exe1186155,
    output wire [31:0] out_c0_exe1195164,
    output wire [0:0] out_c0_exe1197,
    output wire [31:0] out_c0_exe1234176,
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
    output wire [31:0] out_mul46_add4169,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_conv2d3x312,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe1087(GPOUT,26)
    assign out_c0_exe1087 = in_c0_exe1087_0;

    // out_c0_exe1186155(GPOUT,27)
    assign out_c0_exe1186155 = in_c0_exe1186155_0;

    // out_c0_exe1195164(GPOUT,28)
    assign out_c0_exe1195164 = in_c0_exe1195164_0;

    // out_c0_exe1197(GPOUT,29)
    assign out_c0_exe1197 = in_c0_exe1197_0;

    // out_c0_exe1234176(GPOUT,30)
    assign out_c0_exe1234176 = in_c0_exe1234176_0;

    // out_c0_exe1298(GPOUT,31)
    assign out_c0_exe1298 = in_c0_exe1298_0;

    // out_c0_exe13108(GPOUT,32)
    assign out_c0_exe13108 = in_c0_exe13108_0;

    // out_c0_exe14117(GPOUT,33)
    assign out_c0_exe14117 = in_c0_exe14117_0;

    // out_c0_exe15127(GPOUT,34)
    assign out_c0_exe15127 = in_c0_exe15127_0;

    // out_c0_exe16137(GPOUT,35)
    assign out_c0_exe16137 = in_c0_exe16137_0;

    // out_c0_exe18(GPOUT,36)
    assign out_c0_exe18 = in_c0_exe18_0;

    // out_c0_exe319(GPOUT,37)
    assign out_c0_exe319 = in_c0_exe319_0;

    // out_c0_exe428(GPOUT,38)
    assign out_c0_exe428 = in_c0_exe428_0;

    // out_c0_exe539(GPOUT,39)
    assign out_c0_exe539 = in_c0_exe539_0;

    // out_c0_exe646(GPOUT,40)
    assign out_c0_exe646 = in_c0_exe646_0;

    // out_c0_exe758(GPOUT,41)
    assign out_c0_exe758 = in_c0_exe758_0;

    // out_c0_exe867(GPOUT,42)
    assign out_c0_exe867 = in_c0_exe867_0;

    // out_c0_exe977(GPOUT,43)
    assign out_c0_exe977 = in_c0_exe977_0;

    // out_j_062146(GPOUT,44)
    assign out_j_062146 = in_j_062146_0;

    // out_k_059160(GPOUT,45)
    assign out_k_059160 = in_k_059160_0;

    // out_mul46_add4169(GPOUT,46)
    assign out_mul46_add4169 = in_mul46_add4169_0;

    // stall_out(LOGICAL,50)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,47)
    assign out_stall_out_0 = stall_out_q;

    // out_unnamed_conv2d3x312(GPOUT,48)
    assign out_unnamed_conv2d3x312 = in_unnamed_conv2d3x312_0;

    // out_valid_out(GPOUT,49)
    assign out_valid_out = in_valid_in_0;

endmodule
