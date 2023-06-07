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

// SystemVerilog created from maxpool2d_B7_branch
// SystemVerilog created on Sat Jun  3 13:01:56 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_B7_branch (
    input wire [0:0] in_c0_exe10255,
    input wire [0:0] in_c0_exe11256,
    input wire [0:0] in_c0_exe12257,
    input wire [31:0] in_c0_exe1246,
    input wire [63:0] in_c0_exe13258,
    input wire [63:0] in_c0_exe14259,
    input wire [0:0] in_c0_exe15260,
    input wire [31:0] in_c0_exe16261,
    input wire [31:0] in_c0_exe17262,
    input wire [0:0] in_c0_exe18263,
    input wire [63:0] in_c0_exe19,
    input wire [63:0] in_c0_exe20,
    input wire [0:0] in_c0_exe21,
    input wire [0:0] in_c0_exe22,
    input wire [31:0] in_c0_exe2247,
    input wire [31:0] in_c0_exe23,
    input wire [63:0] in_c0_exe24,
    input wire [63:0] in_c0_exe25,
    input wire [0:0] in_c0_exe26,
    input wire [31:0] in_c0_exe27,
    input wire [31:0] in_c0_exe28,
    input wire [0:0] in_c0_exe29,
    input wire [31:0] in_c0_exe3248,
    input wire [0:0] in_c0_exe4249,
    input wire [0:0] in_c0_exe5250,
    input wire [63:0] in_c0_exe6251,
    input wire [63:0] in_c0_exe7252,
    input wire [0:0] in_c0_exe8253,
    input wire [31:0] in_c0_exe9254,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10255,
    output wire [0:0] out_c0_exe11256,
    output wire [0:0] out_c0_exe12257,
    output wire [31:0] out_c0_exe1246,
    output wire [63:0] out_c0_exe13258,
    output wire [63:0] out_c0_exe14259,
    output wire [0:0] out_c0_exe15260,
    output wire [31:0] out_c0_exe16261,
    output wire [31:0] out_c0_exe17262,
    output wire [0:0] out_c0_exe18263,
    output wire [63:0] out_c0_exe19,
    output wire [63:0] out_c0_exe20,
    output wire [0:0] out_c0_exe21,
    output wire [0:0] out_c0_exe22,
    output wire [31:0] out_c0_exe2247,
    output wire [31:0] out_c0_exe23,
    output wire [63:0] out_c0_exe24,
    output wire [63:0] out_c0_exe25,
    output wire [0:0] out_c0_exe26,
    output wire [31:0] out_c0_exe27,
    output wire [31:0] out_c0_exe28,
    output wire [0:0] out_c0_exe29,
    output wire [31:0] out_c0_exe3248,
    output wire [0:0] out_c0_exe4249,
    output wire [0:0] out_c0_exe5250,
    output wire [63:0] out_c0_exe6251,
    output wire [63:0] out_c0_exe7252,
    output wire [0:0] out_c0_exe8253,
    output wire [31:0] out_c0_exe9254,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10255(GPOUT,33)
    assign out_c0_exe10255 = in_c0_exe10255;

    // out_c0_exe11256(GPOUT,34)
    assign out_c0_exe11256 = in_c0_exe11256;

    // out_c0_exe12257(GPOUT,35)
    assign out_c0_exe12257 = in_c0_exe12257;

    // out_c0_exe1246(GPOUT,36)
    assign out_c0_exe1246 = in_c0_exe1246;

    // out_c0_exe13258(GPOUT,37)
    assign out_c0_exe13258 = in_c0_exe13258;

    // out_c0_exe14259(GPOUT,38)
    assign out_c0_exe14259 = in_c0_exe14259;

    // out_c0_exe15260(GPOUT,39)
    assign out_c0_exe15260 = in_c0_exe15260;

    // out_c0_exe16261(GPOUT,40)
    assign out_c0_exe16261 = in_c0_exe16261;

    // out_c0_exe17262(GPOUT,41)
    assign out_c0_exe17262 = in_c0_exe17262;

    // out_c0_exe18263(GPOUT,42)
    assign out_c0_exe18263 = in_c0_exe18263;

    // out_c0_exe19(GPOUT,43)
    assign out_c0_exe19 = in_c0_exe19;

    // out_c0_exe20(GPOUT,44)
    assign out_c0_exe20 = in_c0_exe20;

    // out_c0_exe21(GPOUT,45)
    assign out_c0_exe21 = in_c0_exe21;

    // out_c0_exe22(GPOUT,46)
    assign out_c0_exe22 = in_c0_exe22;

    // out_c0_exe2247(GPOUT,47)
    assign out_c0_exe2247 = in_c0_exe2247;

    // out_c0_exe23(GPOUT,48)
    assign out_c0_exe23 = in_c0_exe23;

    // out_c0_exe24(GPOUT,49)
    assign out_c0_exe24 = in_c0_exe24;

    // out_c0_exe25(GPOUT,50)
    assign out_c0_exe25 = in_c0_exe25;

    // out_c0_exe26(GPOUT,51)
    assign out_c0_exe26 = in_c0_exe26;

    // out_c0_exe27(GPOUT,52)
    assign out_c0_exe27 = in_c0_exe27;

    // out_c0_exe28(GPOUT,53)
    assign out_c0_exe28 = in_c0_exe28;

    // out_c0_exe29(GPOUT,54)
    assign out_c0_exe29 = in_c0_exe29;

    // out_c0_exe3248(GPOUT,55)
    assign out_c0_exe3248 = in_c0_exe3248;

    // out_c0_exe4249(GPOUT,56)
    assign out_c0_exe4249 = in_c0_exe4249;

    // out_c0_exe5250(GPOUT,57)
    assign out_c0_exe5250 = in_c0_exe5250;

    // out_c0_exe6251(GPOUT,58)
    assign out_c0_exe6251 = in_c0_exe6251;

    // out_c0_exe7252(GPOUT,59)
    assign out_c0_exe7252 = in_c0_exe7252;

    // out_c0_exe8253(GPOUT,60)
    assign out_c0_exe8253 = in_c0_exe8253;

    // out_c0_exe9254(GPOUT,61)
    assign out_c0_exe9254 = in_c0_exe9254;

    // stall_out(LOGICAL,64)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,62)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,63)
    assign out_valid_out_0 = in_valid_in;

endmodule
