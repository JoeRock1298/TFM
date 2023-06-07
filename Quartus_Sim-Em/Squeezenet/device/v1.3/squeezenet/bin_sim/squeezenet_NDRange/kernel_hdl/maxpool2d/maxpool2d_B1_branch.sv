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

// SystemVerilog created from maxpool2d_B1_branch
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_B1_branch (
    input wire [63:0] in_c0_exe12,
    input wire [31:0] in_c0_exe128,
    input wire [63:0] in_c0_exe26,
    input wire [0:0] in_c0_exe38,
    input wire [0:0] in_c0_exe411,
    input wire [31:0] in_i_038,
    input wire [31:0] in_j_036,
    input wire [31:0] in_mul22,
    input wire [31:0] in_mul24,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_c0_exe12,
    output wire [31:0] out_c0_exe128,
    output wire [63:0] out_c0_exe26,
    output wire [0:0] out_c0_exe38,
    output wire [0:0] out_c0_exe411,
    output wire [31:0] out_i_038,
    output wire [31:0] out_j_036,
    output wire [31:0] out_mul22,
    output wire [31:0] out_mul24,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe12(GPOUT,13)
    assign out_c0_exe12 = in_c0_exe12;

    // out_c0_exe128(GPOUT,14)
    assign out_c0_exe128 = in_c0_exe128;

    // out_c0_exe26(GPOUT,15)
    assign out_c0_exe26 = in_c0_exe26;

    // out_c0_exe38(GPOUT,16)
    assign out_c0_exe38 = in_c0_exe38;

    // out_c0_exe411(GPOUT,17)
    assign out_c0_exe411 = in_c0_exe411;

    // out_i_038(GPOUT,18)
    assign out_i_038 = in_i_038;

    // out_j_036(GPOUT,19)
    assign out_j_036 = in_j_036;

    // out_mul22(GPOUT,20)
    assign out_mul22 = in_mul22;

    // out_mul24(GPOUT,21)
    assign out_mul24 = in_mul24;

    // stall_out(LOGICAL,24)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,22)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,23)
    assign out_valid_out_0 = in_valid_in;

endmodule
