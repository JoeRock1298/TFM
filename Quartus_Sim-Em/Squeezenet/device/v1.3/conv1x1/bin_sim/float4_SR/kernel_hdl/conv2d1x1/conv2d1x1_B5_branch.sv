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

// SystemVerilog created from conv2d1x1_B5_branch
// SystemVerilog created on Wed May 24 11:22:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B5_branch (
    input wire [31:0] in_c0_exe10260,
    input wire [31:0] in_c0_exe103218,
    input wire [31:0] in_c0_exe11261,
    input wire [0:0] in_c0_exe113229,
    input wire [31:0] in_c0_exe12262,
    input wire [0:0] in_c0_exe1232310,
    input wire [31:0] in_c0_exe1251,
    input wire [31:0] in_c0_exe13263,
    input wire [31:0] in_c0_exe1332411,
    input wire [31:0] in_c0_exe14264,
    input wire [31:0] in_c0_exe1432512,
    input wire [31:0] in_c0_exe15265,
    input wire [0:0] in_c0_exe1532613,
    input wire [31:0] in_c0_exe16266,
    input wire [0:0] in_c0_exe1632714,
    input wire [0:0] in_c0_exe1732815,
    input wire [32:0] in_c0_exe1832916,
    input wire [31:0] in_c0_exe1933017,
    input wire [31:0] in_c0_exe2033118,
    input wire [31:0] in_c0_exe2119,
    input wire [0:0] in_c0_exe2220,
    input wire [31:0] in_c0_exe2252,
    input wire [63:0] in_c0_exe23131,
    input wire [31:0] in_c0_exe3253,
    input wire [0:0] in_c0_exe33142,
    input wire [31:0] in_c0_exe4254,
    input wire [0:0] in_c0_exe43153,
    input wire [31:0] in_c0_exe5255,
    input wire [31:0] in_c0_exe6256,
    input wire [31:0] in_c0_exe63174,
    input wire [31:0] in_c0_exe7257,
    input wire [0:0] in_c0_exe73185,
    input wire [31:0] in_c0_exe8258,
    input wire [31:0] in_c0_exe83196,
    input wire [31:0] in_c0_exe9259,
    input wire [31:0] in_c0_exe93207,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10260,
    output wire [31:0] out_c0_exe103218,
    output wire [31:0] out_c0_exe11261,
    output wire [0:0] out_c0_exe113229,
    output wire [31:0] out_c0_exe12262,
    output wire [0:0] out_c0_exe1232310,
    output wire [31:0] out_c0_exe1251,
    output wire [31:0] out_c0_exe13263,
    output wire [31:0] out_c0_exe1332411,
    output wire [31:0] out_c0_exe14264,
    output wire [31:0] out_c0_exe1432512,
    output wire [31:0] out_c0_exe15265,
    output wire [0:0] out_c0_exe1532613,
    output wire [31:0] out_c0_exe16266,
    output wire [0:0] out_c0_exe1632714,
    output wire [0:0] out_c0_exe1732815,
    output wire [32:0] out_c0_exe1832916,
    output wire [31:0] out_c0_exe1933017,
    output wire [31:0] out_c0_exe2033118,
    output wire [31:0] out_c0_exe2119,
    output wire [0:0] out_c0_exe2220,
    output wire [31:0] out_c0_exe2252,
    output wire [63:0] out_c0_exe23131,
    output wire [31:0] out_c0_exe3253,
    output wire [0:0] out_c0_exe33142,
    output wire [31:0] out_c0_exe4254,
    output wire [0:0] out_c0_exe43153,
    output wire [31:0] out_c0_exe5255,
    output wire [31:0] out_c0_exe6256,
    output wire [31:0] out_c0_exe63174,
    output wire [31:0] out_c0_exe7257,
    output wire [0:0] out_c0_exe73185,
    output wire [31:0] out_c0_exe8258,
    output wire [31:0] out_c0_exe83196,
    output wire [31:0] out_c0_exe9259,
    output wire [31:0] out_c0_exe93207,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10260(GPOUT,40)
    assign out_c0_exe10260 = in_c0_exe10260;

    // out_c0_exe103218(GPOUT,41)
    assign out_c0_exe103218 = in_c0_exe103218;

    // out_c0_exe11261(GPOUT,42)
    assign out_c0_exe11261 = in_c0_exe11261;

    // out_c0_exe113229(GPOUT,43)
    assign out_c0_exe113229 = in_c0_exe113229;

    // out_c0_exe12262(GPOUT,44)
    assign out_c0_exe12262 = in_c0_exe12262;

    // out_c0_exe1232310(GPOUT,45)
    assign out_c0_exe1232310 = in_c0_exe1232310;

    // out_c0_exe1251(GPOUT,46)
    assign out_c0_exe1251 = in_c0_exe1251;

    // out_c0_exe13263(GPOUT,47)
    assign out_c0_exe13263 = in_c0_exe13263;

    // out_c0_exe1332411(GPOUT,48)
    assign out_c0_exe1332411 = in_c0_exe1332411;

    // out_c0_exe14264(GPOUT,49)
    assign out_c0_exe14264 = in_c0_exe14264;

    // out_c0_exe1432512(GPOUT,50)
    assign out_c0_exe1432512 = in_c0_exe1432512;

    // out_c0_exe15265(GPOUT,51)
    assign out_c0_exe15265 = in_c0_exe15265;

    // out_c0_exe1532613(GPOUT,52)
    assign out_c0_exe1532613 = in_c0_exe1532613;

    // out_c0_exe16266(GPOUT,53)
    assign out_c0_exe16266 = in_c0_exe16266;

    // out_c0_exe1632714(GPOUT,54)
    assign out_c0_exe1632714 = in_c0_exe1632714;

    // out_c0_exe1732815(GPOUT,55)
    assign out_c0_exe1732815 = in_c0_exe1732815;

    // out_c0_exe1832916(GPOUT,56)
    assign out_c0_exe1832916 = in_c0_exe1832916;

    // out_c0_exe1933017(GPOUT,57)
    assign out_c0_exe1933017 = in_c0_exe1933017;

    // out_c0_exe2033118(GPOUT,58)
    assign out_c0_exe2033118 = in_c0_exe2033118;

    // out_c0_exe2119(GPOUT,59)
    assign out_c0_exe2119 = in_c0_exe2119;

    // out_c0_exe2220(GPOUT,60)
    assign out_c0_exe2220 = in_c0_exe2220;

    // out_c0_exe2252(GPOUT,61)
    assign out_c0_exe2252 = in_c0_exe2252;

    // out_c0_exe23131(GPOUT,62)
    assign out_c0_exe23131 = in_c0_exe23131;

    // out_c0_exe3253(GPOUT,63)
    assign out_c0_exe3253 = in_c0_exe3253;

    // out_c0_exe33142(GPOUT,64)
    assign out_c0_exe33142 = in_c0_exe33142;

    // out_c0_exe4254(GPOUT,65)
    assign out_c0_exe4254 = in_c0_exe4254;

    // out_c0_exe43153(GPOUT,66)
    assign out_c0_exe43153 = in_c0_exe43153;

    // out_c0_exe5255(GPOUT,67)
    assign out_c0_exe5255 = in_c0_exe5255;

    // out_c0_exe6256(GPOUT,68)
    assign out_c0_exe6256 = in_c0_exe6256;

    // out_c0_exe63174(GPOUT,69)
    assign out_c0_exe63174 = in_c0_exe63174;

    // out_c0_exe7257(GPOUT,70)
    assign out_c0_exe7257 = in_c0_exe7257;

    // out_c0_exe73185(GPOUT,71)
    assign out_c0_exe73185 = in_c0_exe73185;

    // out_c0_exe8258(GPOUT,72)
    assign out_c0_exe8258 = in_c0_exe8258;

    // out_c0_exe83196(GPOUT,73)
    assign out_c0_exe83196 = in_c0_exe83196;

    // out_c0_exe9259(GPOUT,74)
    assign out_c0_exe9259 = in_c0_exe9259;

    // out_c0_exe93207(GPOUT,75)
    assign out_c0_exe93207 = in_c0_exe93207;

    // stall_out(LOGICAL,78)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,76)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,77)
    assign out_valid_out_0 = in_valid_in;

endmodule
