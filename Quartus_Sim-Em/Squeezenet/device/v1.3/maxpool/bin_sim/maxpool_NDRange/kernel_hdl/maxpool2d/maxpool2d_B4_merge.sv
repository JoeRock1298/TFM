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

// SystemVerilog created from maxpool2d_B4_merge
// SystemVerilog created on Sat Jun  3 12:58:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_B4_merge (
    input wire [31:0] in_c0_exe12818_0,
    input wire [63:0] in_c0_exe13_0,
    input wire [63:0] in_c0_exe24_0,
    input wire [0:0] in_c0_exe39_0,
    input wire [0:0] in_c0_exe412_0,
    input wire [31:0] in_c1_exe121_0,
    input wire [31:0] in_i_03813_0,
    input wire [31:0] in_j_03615_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe12818,
    output wire [63:0] out_c0_exe13,
    output wire [63:0] out_c0_exe24,
    output wire [0:0] out_c0_exe39,
    output wire [0:0] out_c0_exe412,
    output wire [31:0] out_c1_exe121,
    output wire [31:0] out_i_03813,
    output wire [31:0] out_j_03615,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe12818(GPOUT,12)
    assign out_c0_exe12818 = in_c0_exe12818_0;

    // out_c0_exe13(GPOUT,13)
    assign out_c0_exe13 = in_c0_exe13_0;

    // out_c0_exe24(GPOUT,14)
    assign out_c0_exe24 = in_c0_exe24_0;

    // out_c0_exe39(GPOUT,15)
    assign out_c0_exe39 = in_c0_exe39_0;

    // out_c0_exe412(GPOUT,16)
    assign out_c0_exe412 = in_c0_exe412_0;

    // out_c1_exe121(GPOUT,17)
    assign out_c1_exe121 = in_c1_exe121_0;

    // out_i_03813(GPOUT,18)
    assign out_i_03813 = in_i_03813_0;

    // out_j_03615(GPOUT,19)
    assign out_j_03615 = in_j_03615_0;

    // stall_out(LOGICAL,22)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,20)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,21)
    assign out_valid_out = in_valid_in_0;

endmodule
