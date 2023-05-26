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

// SystemVerilog created from conv2d1x1_B4_branch
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B4_branch (
    input wire [0:0] in_c0_exe10403,
    input wire [0:0] in_c0_exe11404,
    input wire [31:0] in_c0_exe12405,
    input wire [31:0] in_c0_exe13406,
    input wire [31:0] in_c0_exe14407,
    input wire [31:0] in_c0_exe15408,
    input wire [31:0] in_c0_exe16409,
    input wire [31:0] in_c0_exe17410,
    input wire [31:0] in_c0_exe18411,
    input wire [31:0] in_c0_exe19,
    input wire [31:0] in_c0_exe20,
    input wire [31:0] in_c0_exe21,
    input wire [31:0] in_c0_exe22,
    input wire [31:0] in_c0_exe23,
    input wire [31:0] in_c0_exe2395,
    input wire [31:0] in_c0_exe24,
    input wire [31:0] in_c0_exe25,
    input wire [31:0] in_c0_exe26,
    input wire [31:0] in_c0_exe27,
    input wire [0:0] in_c0_exe28,
    input wire [31:0] in_c0_exe29,
    input wire [31:0] in_c0_exe30,
    input wire [31:0] in_c0_exe31,
    input wire [31:0] in_c0_exe32,
    input wire [31:0] in_c0_exe33,
    input wire [0:0] in_c0_exe3396,
    input wire [31:0] in_c0_exe34,
    input wire [31:0] in_c0_exe35,
    input wire [31:0] in_c0_exe36,
    input wire [31:0] in_c0_exe37,
    input wire [31:0] in_c0_exe38,
    input wire [31:0] in_c0_exe39,
    input wire [31:0] in_c0_exe40,
    input wire [31:0] in_c0_exe41,
    input wire [31:0] in_c0_exe42,
    input wire [31:0] in_c0_exe43,
    input wire [0:0] in_c0_exe4397,
    input wire [31:0] in_c0_exe44,
    input wire [0:0] in_c0_exe5398,
    input wire [32:0] in_c0_exe6399,
    input wire [31:0] in_c0_exe8401,
    input wire [31:0] in_c0_exe9402,
    input wire [31:0] in_lm96,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10403,
    output wire [0:0] out_c0_exe11404,
    output wire [31:0] out_c0_exe12405,
    output wire [31:0] out_c0_exe13406,
    output wire [31:0] out_c0_exe14407,
    output wire [31:0] out_c0_exe15408,
    output wire [31:0] out_c0_exe16409,
    output wire [31:0] out_c0_exe17410,
    output wire [31:0] out_c0_exe18411,
    output wire [31:0] out_c0_exe19,
    output wire [31:0] out_c0_exe20,
    output wire [31:0] out_c0_exe21,
    output wire [31:0] out_c0_exe22,
    output wire [31:0] out_c0_exe23,
    output wire [31:0] out_c0_exe2395,
    output wire [31:0] out_c0_exe24,
    output wire [31:0] out_c0_exe25,
    output wire [31:0] out_c0_exe26,
    output wire [31:0] out_c0_exe27,
    output wire [0:0] out_c0_exe28,
    output wire [31:0] out_c0_exe29,
    output wire [31:0] out_c0_exe30,
    output wire [31:0] out_c0_exe31,
    output wire [31:0] out_c0_exe32,
    output wire [31:0] out_c0_exe33,
    output wire [0:0] out_c0_exe3396,
    output wire [31:0] out_c0_exe34,
    output wire [31:0] out_c0_exe35,
    output wire [31:0] out_c0_exe36,
    output wire [31:0] out_c0_exe37,
    output wire [31:0] out_c0_exe38,
    output wire [31:0] out_c0_exe39,
    output wire [31:0] out_c0_exe40,
    output wire [31:0] out_c0_exe41,
    output wire [31:0] out_c0_exe42,
    output wire [31:0] out_c0_exe43,
    output wire [0:0] out_c0_exe4397,
    output wire [31:0] out_c0_exe44,
    output wire [0:0] out_c0_exe5398,
    output wire [32:0] out_c0_exe6399,
    output wire [31:0] out_c0_exe8401,
    output wire [31:0] out_c0_exe9402,
    output wire [31:0] out_lm96,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10403(GPOUT,47)
    assign out_c0_exe10403 = in_c0_exe10403;

    // out_c0_exe11404(GPOUT,48)
    assign out_c0_exe11404 = in_c0_exe11404;

    // out_c0_exe12405(GPOUT,49)
    assign out_c0_exe12405 = in_c0_exe12405;

    // out_c0_exe13406(GPOUT,50)
    assign out_c0_exe13406 = in_c0_exe13406;

    // out_c0_exe14407(GPOUT,51)
    assign out_c0_exe14407 = in_c0_exe14407;

    // out_c0_exe15408(GPOUT,52)
    assign out_c0_exe15408 = in_c0_exe15408;

    // out_c0_exe16409(GPOUT,53)
    assign out_c0_exe16409 = in_c0_exe16409;

    // out_c0_exe17410(GPOUT,54)
    assign out_c0_exe17410 = in_c0_exe17410;

    // out_c0_exe18411(GPOUT,55)
    assign out_c0_exe18411 = in_c0_exe18411;

    // out_c0_exe19(GPOUT,56)
    assign out_c0_exe19 = in_c0_exe19;

    // out_c0_exe20(GPOUT,57)
    assign out_c0_exe20 = in_c0_exe20;

    // out_c0_exe21(GPOUT,58)
    assign out_c0_exe21 = in_c0_exe21;

    // out_c0_exe22(GPOUT,59)
    assign out_c0_exe22 = in_c0_exe22;

    // out_c0_exe23(GPOUT,60)
    assign out_c0_exe23 = in_c0_exe23;

    // out_c0_exe2395(GPOUT,61)
    assign out_c0_exe2395 = in_c0_exe2395;

    // out_c0_exe24(GPOUT,62)
    assign out_c0_exe24 = in_c0_exe24;

    // out_c0_exe25(GPOUT,63)
    assign out_c0_exe25 = in_c0_exe25;

    // out_c0_exe26(GPOUT,64)
    assign out_c0_exe26 = in_c0_exe26;

    // out_c0_exe27(GPOUT,65)
    assign out_c0_exe27 = in_c0_exe27;

    // out_c0_exe28(GPOUT,66)
    assign out_c0_exe28 = in_c0_exe28;

    // out_c0_exe29(GPOUT,67)
    assign out_c0_exe29 = in_c0_exe29;

    // out_c0_exe30(GPOUT,68)
    assign out_c0_exe30 = in_c0_exe30;

    // out_c0_exe31(GPOUT,69)
    assign out_c0_exe31 = in_c0_exe31;

    // out_c0_exe32(GPOUT,70)
    assign out_c0_exe32 = in_c0_exe32;

    // out_c0_exe33(GPOUT,71)
    assign out_c0_exe33 = in_c0_exe33;

    // out_c0_exe3396(GPOUT,72)
    assign out_c0_exe3396 = in_c0_exe3396;

    // out_c0_exe34(GPOUT,73)
    assign out_c0_exe34 = in_c0_exe34;

    // out_c0_exe35(GPOUT,74)
    assign out_c0_exe35 = in_c0_exe35;

    // out_c0_exe36(GPOUT,75)
    assign out_c0_exe36 = in_c0_exe36;

    // out_c0_exe37(GPOUT,76)
    assign out_c0_exe37 = in_c0_exe37;

    // out_c0_exe38(GPOUT,77)
    assign out_c0_exe38 = in_c0_exe38;

    // out_c0_exe39(GPOUT,78)
    assign out_c0_exe39 = in_c0_exe39;

    // out_c0_exe40(GPOUT,79)
    assign out_c0_exe40 = in_c0_exe40;

    // out_c0_exe41(GPOUT,80)
    assign out_c0_exe41 = in_c0_exe41;

    // out_c0_exe42(GPOUT,81)
    assign out_c0_exe42 = in_c0_exe42;

    // out_c0_exe43(GPOUT,82)
    assign out_c0_exe43 = in_c0_exe43;

    // out_c0_exe4397(GPOUT,83)
    assign out_c0_exe4397 = in_c0_exe4397;

    // out_c0_exe44(GPOUT,84)
    assign out_c0_exe44 = in_c0_exe44;

    // out_c0_exe5398(GPOUT,85)
    assign out_c0_exe5398 = in_c0_exe5398;

    // out_c0_exe6399(GPOUT,86)
    assign out_c0_exe6399 = in_c0_exe6399;

    // out_c0_exe8401(GPOUT,87)
    assign out_c0_exe8401 = in_c0_exe8401;

    // out_c0_exe9402(GPOUT,88)
    assign out_c0_exe9402 = in_c0_exe9402;

    // out_lm96(GPOUT,89)
    assign out_lm96 = in_lm96;

    // stall_out(LOGICAL,92)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,90)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,91)
    assign out_valid_out_0 = in_valid_in;

endmodule
