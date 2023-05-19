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

// SystemVerilog created from conv2d1x1_B3_branch
// SystemVerilog created on Wed May 17 13:49:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B3_branch (
    input wire [0:0] in_c0_exe10112,
    input wire [63:0] in_c0_exe11,
    input wire [63:0] in_c0_exe12,
    input wire [31:0] in_c0_exe13,
    input wire [0:0] in_c0_exe14,
    input wire [0:0] in_c0_exe15,
    input wire [32:0] in_c0_exe16,
    input wire [31:0] in_c0_exe17,
    input wire [0:0] in_c0_exe18,
    input wire [0:0] in_c0_exe2104,
    input wire [31:0] in_c0_exe3105,
    input wire [63:0] in_c0_exe4106,
    input wire [63:0] in_c0_exe5107,
    input wire [31:0] in_c0_exe6108,
    input wire [0:0] in_c0_exe7109,
    input wire [0:0] in_c0_exe8110,
    input wire [31:0] in_c0_exe9111,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10112,
    output wire [63:0] out_c0_exe11,
    output wire [63:0] out_c0_exe12,
    output wire [31:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [0:0] out_c0_exe15,
    output wire [32:0] out_c0_exe16,
    output wire [31:0] out_c0_exe17,
    output wire [0:0] out_c0_exe18,
    output wire [0:0] out_c0_exe2104,
    output wire [31:0] out_c0_exe3105,
    output wire [63:0] out_c0_exe4106,
    output wire [63:0] out_c0_exe5107,
    output wire [31:0] out_c0_exe6108,
    output wire [0:0] out_c0_exe7109,
    output wire [0:0] out_c0_exe8110,
    output wire [31:0] out_c0_exe9111,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10112(GPOUT,21)
    assign out_c0_exe10112 = in_c0_exe10112;

    // out_c0_exe11(GPOUT,22)
    assign out_c0_exe11 = in_c0_exe11;

    // out_c0_exe12(GPOUT,23)
    assign out_c0_exe12 = in_c0_exe12;

    // out_c0_exe13(GPOUT,24)
    assign out_c0_exe13 = in_c0_exe13;

    // out_c0_exe14(GPOUT,25)
    assign out_c0_exe14 = in_c0_exe14;

    // out_c0_exe15(GPOUT,26)
    assign out_c0_exe15 = in_c0_exe15;

    // out_c0_exe16(GPOUT,27)
    assign out_c0_exe16 = in_c0_exe16;

    // out_c0_exe17(GPOUT,28)
    assign out_c0_exe17 = in_c0_exe17;

    // out_c0_exe18(GPOUT,29)
    assign out_c0_exe18 = in_c0_exe18;

    // out_c0_exe2104(GPOUT,30)
    assign out_c0_exe2104 = in_c0_exe2104;

    // out_c0_exe3105(GPOUT,31)
    assign out_c0_exe3105 = in_c0_exe3105;

    // out_c0_exe4106(GPOUT,32)
    assign out_c0_exe4106 = in_c0_exe4106;

    // out_c0_exe5107(GPOUT,33)
    assign out_c0_exe5107 = in_c0_exe5107;

    // out_c0_exe6108(GPOUT,34)
    assign out_c0_exe6108 = in_c0_exe6108;

    // out_c0_exe7109(GPOUT,35)
    assign out_c0_exe7109 = in_c0_exe7109;

    // out_c0_exe8110(GPOUT,36)
    assign out_c0_exe8110 = in_c0_exe8110;

    // out_c0_exe9111(GPOUT,37)
    assign out_c0_exe9111 = in_c0_exe9111;

    // stall_out(LOGICAL,40)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,38)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,39)
    assign out_valid_out_0 = in_valid_in;

endmodule
