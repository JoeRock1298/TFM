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

// SystemVerilog created from maxpool2d_B9_merge
// SystemVerilog created on Sat Jun  3 13:01:56 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_B9_merge (
    input wire [0:0] in_c0_exe103408_0,
    input wire [31:0] in_c0_exe1134110_0,
    input wire [0:0] in_c0_exe1234213_0,
    input wire [0:0] in_c0_exe1334315_0,
    input wire [31:0] in_c0_exe1434417_0,
    input wire [0:0] in_c0_exe1534518_0,
    input wire [0:0] in_c0_exe53352_0,
    input wire [63:0] in_c0_exe93394_0,
    input wire [31:0] in_c1_exe120_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe103408,
    output wire [31:0] out_c0_exe1134110,
    output wire [0:0] out_c0_exe1234213,
    output wire [0:0] out_c0_exe1334315,
    output wire [31:0] out_c0_exe1434417,
    output wire [0:0] out_c0_exe1534518,
    output wire [0:0] out_c0_exe53352,
    output wire [63:0] out_c0_exe93394,
    output wire [31:0] out_c1_exe120,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe103408(GPOUT,13)
    assign out_c0_exe103408 = in_c0_exe103408_0;

    // out_c0_exe1134110(GPOUT,14)
    assign out_c0_exe1134110 = in_c0_exe1134110_0;

    // out_c0_exe1234213(GPOUT,15)
    assign out_c0_exe1234213 = in_c0_exe1234213_0;

    // out_c0_exe1334315(GPOUT,16)
    assign out_c0_exe1334315 = in_c0_exe1334315_0;

    // out_c0_exe1434417(GPOUT,17)
    assign out_c0_exe1434417 = in_c0_exe1434417_0;

    // out_c0_exe1534518(GPOUT,18)
    assign out_c0_exe1534518 = in_c0_exe1534518_0;

    // out_c0_exe53352(GPOUT,19)
    assign out_c0_exe53352 = in_c0_exe53352_0;

    // out_c0_exe93394(GPOUT,20)
    assign out_c0_exe93394 = in_c0_exe93394_0;

    // out_c1_exe120(GPOUT,21)
    assign out_c1_exe120 = in_c1_exe120_0;

    // stall_out(LOGICAL,24)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,22)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,23)
    assign out_valid_out = in_valid_in_0;

endmodule
