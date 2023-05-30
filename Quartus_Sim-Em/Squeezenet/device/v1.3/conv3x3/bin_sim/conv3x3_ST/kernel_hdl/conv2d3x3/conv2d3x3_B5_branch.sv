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

// SystemVerilog created from conv2d3x3_B5_branch
// SystemVerilog created on Tue May 30 12:33:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B5_branch (
    input wire [31:0] in_c0_exe10605,
    input wire [31:0] in_c0_exe11606,
    input wire [0:0] in_c0_exe12607,
    input wire [0:0] in_c0_exe13608,
    input wire [31:0] in_c0_exe14609,
    input wire [0:0] in_c0_exe15610,
    input wire [31:0] in_c0_exe1596,
    input wire [0:0] in_c0_exe16611,
    input wire [31:0] in_c0_exe17612,
    input wire [0:0] in_c0_exe18613,
    input wire [0:0] in_c0_exe19614,
    input wire [0:0] in_c0_exe20615,
    input wire [63:0] in_c0_exe21,
    input wire [63:0] in_c0_exe22,
    input wire [31:0] in_c0_exe23,
    input wire [0:0] in_c0_exe24,
    input wire [31:0] in_c0_exe25,
    input wire [31:0] in_c0_exe2597,
    input wire [31:0] in_c0_exe26,
    input wire [0:0] in_c0_exe27,
    input wire [0:0] in_c0_exe28,
    input wire [31:0] in_c0_exe29,
    input wire [0:0] in_c0_exe30,
    input wire [0:0] in_c0_exe31,
    input wire [31:0] in_c0_exe32,
    input wire [0:0] in_c0_exe33,
    input wire [0:0] in_c0_exe34,
    input wire [0:0] in_c0_exe35,
    input wire [63:0] in_c0_exe36,
    input wire [63:0] in_c0_exe37,
    input wire [31:0] in_c0_exe38,
    input wire [0:0] in_c0_exe39,
    input wire [0:0] in_c0_exe4599,
    input wire [31:0] in_c0_exe5600,
    input wire [63:0] in_c0_exe6601,
    input wire [63:0] in_c0_exe7602,
    input wire [31:0] in_c0_exe8603,
    input wire [0:0] in_c0_exe9604,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10605,
    output wire [31:0] out_c0_exe11606,
    output wire [0:0] out_c0_exe12607,
    output wire [0:0] out_c0_exe13608,
    output wire [31:0] out_c0_exe14609,
    output wire [0:0] out_c0_exe15610,
    output wire [31:0] out_c0_exe1596,
    output wire [0:0] out_c0_exe16611,
    output wire [31:0] out_c0_exe17612,
    output wire [0:0] out_c0_exe18613,
    output wire [0:0] out_c0_exe19614,
    output wire [0:0] out_c0_exe20615,
    output wire [63:0] out_c0_exe21,
    output wire [63:0] out_c0_exe22,
    output wire [31:0] out_c0_exe23,
    output wire [0:0] out_c0_exe24,
    output wire [31:0] out_c0_exe25,
    output wire [31:0] out_c0_exe2597,
    output wire [31:0] out_c0_exe26,
    output wire [0:0] out_c0_exe27,
    output wire [0:0] out_c0_exe28,
    output wire [31:0] out_c0_exe29,
    output wire [0:0] out_c0_exe30,
    output wire [0:0] out_c0_exe31,
    output wire [31:0] out_c0_exe32,
    output wire [0:0] out_c0_exe33,
    output wire [0:0] out_c0_exe34,
    output wire [0:0] out_c0_exe35,
    output wire [63:0] out_c0_exe36,
    output wire [63:0] out_c0_exe37,
    output wire [31:0] out_c0_exe38,
    output wire [0:0] out_c0_exe39,
    output wire [0:0] out_c0_exe4599,
    output wire [31:0] out_c0_exe5600,
    output wire [63:0] out_c0_exe6601,
    output wire [63:0] out_c0_exe7602,
    output wire [31:0] out_c0_exe8603,
    output wire [0:0] out_c0_exe9604,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10605(GPOUT,42)
    assign out_c0_exe10605 = in_c0_exe10605;

    // out_c0_exe11606(GPOUT,43)
    assign out_c0_exe11606 = in_c0_exe11606;

    // out_c0_exe12607(GPOUT,44)
    assign out_c0_exe12607 = in_c0_exe12607;

    // out_c0_exe13608(GPOUT,45)
    assign out_c0_exe13608 = in_c0_exe13608;

    // out_c0_exe14609(GPOUT,46)
    assign out_c0_exe14609 = in_c0_exe14609;

    // out_c0_exe15610(GPOUT,47)
    assign out_c0_exe15610 = in_c0_exe15610;

    // out_c0_exe1596(GPOUT,48)
    assign out_c0_exe1596 = in_c0_exe1596;

    // out_c0_exe16611(GPOUT,49)
    assign out_c0_exe16611 = in_c0_exe16611;

    // out_c0_exe17612(GPOUT,50)
    assign out_c0_exe17612 = in_c0_exe17612;

    // out_c0_exe18613(GPOUT,51)
    assign out_c0_exe18613 = in_c0_exe18613;

    // out_c0_exe19614(GPOUT,52)
    assign out_c0_exe19614 = in_c0_exe19614;

    // out_c0_exe20615(GPOUT,53)
    assign out_c0_exe20615 = in_c0_exe20615;

    // out_c0_exe21(GPOUT,54)
    assign out_c0_exe21 = in_c0_exe21;

    // out_c0_exe22(GPOUT,55)
    assign out_c0_exe22 = in_c0_exe22;

    // out_c0_exe23(GPOUT,56)
    assign out_c0_exe23 = in_c0_exe23;

    // out_c0_exe24(GPOUT,57)
    assign out_c0_exe24 = in_c0_exe24;

    // out_c0_exe25(GPOUT,58)
    assign out_c0_exe25 = in_c0_exe25;

    // out_c0_exe2597(GPOUT,59)
    assign out_c0_exe2597 = in_c0_exe2597;

    // out_c0_exe26(GPOUT,60)
    assign out_c0_exe26 = in_c0_exe26;

    // out_c0_exe27(GPOUT,61)
    assign out_c0_exe27 = in_c0_exe27;

    // out_c0_exe28(GPOUT,62)
    assign out_c0_exe28 = in_c0_exe28;

    // out_c0_exe29(GPOUT,63)
    assign out_c0_exe29 = in_c0_exe29;

    // out_c0_exe30(GPOUT,64)
    assign out_c0_exe30 = in_c0_exe30;

    // out_c0_exe31(GPOUT,65)
    assign out_c0_exe31 = in_c0_exe31;

    // out_c0_exe32(GPOUT,66)
    assign out_c0_exe32 = in_c0_exe32;

    // out_c0_exe33(GPOUT,67)
    assign out_c0_exe33 = in_c0_exe33;

    // out_c0_exe34(GPOUT,68)
    assign out_c0_exe34 = in_c0_exe34;

    // out_c0_exe35(GPOUT,69)
    assign out_c0_exe35 = in_c0_exe35;

    // out_c0_exe36(GPOUT,70)
    assign out_c0_exe36 = in_c0_exe36;

    // out_c0_exe37(GPOUT,71)
    assign out_c0_exe37 = in_c0_exe37;

    // out_c0_exe38(GPOUT,72)
    assign out_c0_exe38 = in_c0_exe38;

    // out_c0_exe39(GPOUT,73)
    assign out_c0_exe39 = in_c0_exe39;

    // out_c0_exe4599(GPOUT,74)
    assign out_c0_exe4599 = in_c0_exe4599;

    // out_c0_exe5600(GPOUT,75)
    assign out_c0_exe5600 = in_c0_exe5600;

    // out_c0_exe6601(GPOUT,76)
    assign out_c0_exe6601 = in_c0_exe6601;

    // out_c0_exe7602(GPOUT,77)
    assign out_c0_exe7602 = in_c0_exe7602;

    // out_c0_exe8603(GPOUT,78)
    assign out_c0_exe8603 = in_c0_exe8603;

    // out_c0_exe9604(GPOUT,79)
    assign out_c0_exe9604 = in_c0_exe9604;

    // stall_out(LOGICAL,82)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,80)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,81)
    assign out_valid_out_0 = in_valid_in;

endmodule
