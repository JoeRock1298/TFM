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

// SystemVerilog created from maxpool2d_B8_merge
// SystemVerilog created on Sat Jun  3 13:01:56 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_B8_merge (
    input wire [0:0] in_c0_exe103407_0,
    input wire [31:0] in_c0_exe113419_0,
    input wire [0:0] in_c0_exe1234212_0,
    input wire [0:0] in_c0_exe1334314_0,
    input wire [31:0] in_c0_exe1434416_0,
    input wire [0:0] in_c0_exe53351_0,
    input wire [63:0] in_c0_exe93393_0,
    input wire [31:0] in_c1_exe119_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe103407,
    output wire [31:0] out_c0_exe113419,
    output wire [0:0] out_c0_exe1234212,
    output wire [0:0] out_c0_exe1334314,
    output wire [31:0] out_c0_exe1434416,
    output wire [0:0] out_c0_exe53351,
    output wire [63:0] out_c0_exe93393,
    output wire [31:0] out_c1_exe119,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe103407(GPOUT,12)
    assign out_c0_exe103407 = in_c0_exe103407_0;

    // out_c0_exe113419(GPOUT,13)
    assign out_c0_exe113419 = in_c0_exe113419_0;

    // out_c0_exe1234212(GPOUT,14)
    assign out_c0_exe1234212 = in_c0_exe1234212_0;

    // out_c0_exe1334314(GPOUT,15)
    assign out_c0_exe1334314 = in_c0_exe1334314_0;

    // out_c0_exe1434416(GPOUT,16)
    assign out_c0_exe1434416 = in_c0_exe1434416_0;

    // out_c0_exe53351(GPOUT,17)
    assign out_c0_exe53351 = in_c0_exe53351_0;

    // out_c0_exe93393(GPOUT,18)
    assign out_c0_exe93393 = in_c0_exe93393_0;

    // out_c1_exe119(GPOUT,19)
    assign out_c1_exe119 = in_c1_exe119_0;

    // stall_out(LOGICAL,22)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,20)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,21)
    assign out_valid_out = in_valid_in_0;

endmodule
