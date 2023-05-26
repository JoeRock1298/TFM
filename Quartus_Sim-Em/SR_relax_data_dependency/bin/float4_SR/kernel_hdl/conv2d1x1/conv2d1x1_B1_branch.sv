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

// SystemVerilog created from conv2d1x1_B1_branch
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B1_branch (
    input wire [31:0] in_c0_exe1018,
    input wire [31:0] in_c0_exe1119,
    input wire [31:0] in_c0_exe1220,
    input wire [31:0] in_c0_exe1321,
    input wire [31:0] in_c0_exe1422,
    input wire [31:0] in_c0_exe1523,
    input wire [31:0] in_c0_exe1624,
    input wire [31:0] in_c0_exe1725,
    input wire [31:0] in_c0_exe210,
    input wire [31:0] in_c0_exe311,
    input wire [31:0] in_c0_exe412,
    input wire [31:0] in_c0_exe513,
    input wire [31:0] in_c0_exe614,
    input wire [31:0] in_c0_exe715,
    input wire [31:0] in_c0_exe816,
    input wire [31:0] in_c0_exe917,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe1018,
    output wire [31:0] out_c0_exe1119,
    output wire [31:0] out_c0_exe1220,
    output wire [31:0] out_c0_exe1321,
    output wire [31:0] out_c0_exe1422,
    output wire [31:0] out_c0_exe1523,
    output wire [31:0] out_c0_exe1624,
    output wire [31:0] out_c0_exe1725,
    output wire [31:0] out_c0_exe210,
    output wire [31:0] out_c0_exe311,
    output wire [31:0] out_c0_exe412,
    output wire [31:0] out_c0_exe513,
    output wire [31:0] out_c0_exe614,
    output wire [31:0] out_c0_exe715,
    output wire [31:0] out_c0_exe816,
    output wire [31:0] out_c0_exe917,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe1018(GPOUT,20)
    assign out_c0_exe1018 = in_c0_exe1018;

    // out_c0_exe1119(GPOUT,21)
    assign out_c0_exe1119 = in_c0_exe1119;

    // out_c0_exe1220(GPOUT,22)
    assign out_c0_exe1220 = in_c0_exe1220;

    // out_c0_exe1321(GPOUT,23)
    assign out_c0_exe1321 = in_c0_exe1321;

    // out_c0_exe1422(GPOUT,24)
    assign out_c0_exe1422 = in_c0_exe1422;

    // out_c0_exe1523(GPOUT,25)
    assign out_c0_exe1523 = in_c0_exe1523;

    // out_c0_exe1624(GPOUT,26)
    assign out_c0_exe1624 = in_c0_exe1624;

    // out_c0_exe1725(GPOUT,27)
    assign out_c0_exe1725 = in_c0_exe1725;

    // out_c0_exe210(GPOUT,28)
    assign out_c0_exe210 = in_c0_exe210;

    // out_c0_exe311(GPOUT,29)
    assign out_c0_exe311 = in_c0_exe311;

    // out_c0_exe412(GPOUT,30)
    assign out_c0_exe412 = in_c0_exe412;

    // out_c0_exe513(GPOUT,31)
    assign out_c0_exe513 = in_c0_exe513;

    // out_c0_exe614(GPOUT,32)
    assign out_c0_exe614 = in_c0_exe614;

    // out_c0_exe715(GPOUT,33)
    assign out_c0_exe715 = in_c0_exe715;

    // out_c0_exe816(GPOUT,34)
    assign out_c0_exe816 = in_c0_exe816;

    // out_c0_exe917(GPOUT,35)
    assign out_c0_exe917 = in_c0_exe917;

    // stall_out(LOGICAL,38)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,36)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,37)
    assign out_valid_out_0 = in_valid_in;

endmodule
