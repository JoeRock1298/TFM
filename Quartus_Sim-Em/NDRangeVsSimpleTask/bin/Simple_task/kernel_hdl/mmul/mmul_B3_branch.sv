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

// SystemVerilog created from mmul_B3_branch
// SystemVerilog created on Wed May  3 13:07:53 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_B3_branch (
    input wire [0:0] in_c0_exe10,
    input wire [0:0] in_c0_exe11,
    input wire [0:0] in_c0_exe12,
    input wire [0:0] in_c0_exe163,
    input wire [0:0] in_c0_exe264,
    input wire [31:0] in_c0_exe365,
    input wire [31:0] in_c0_exe466,
    input wire [0:0] in_c0_exe5,
    input wire [0:0] in_c0_exe6,
    input wire [0:0] in_c0_exe7,
    input wire [31:0] in_c0_exe9,
    input wire [0:0] in_memdep_phi_pop12,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10,
    output wire [0:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [0:0] out_c0_exe163,
    output wire [0:0] out_c0_exe264,
    output wire [31:0] out_c0_exe365,
    output wire [31:0] out_c0_exe466,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [31:0] out_c0_exe9,
    output wire [0:0] out_memdep_phi_pop12,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10(GPOUT,16)
    assign out_c0_exe10 = in_c0_exe10;

    // out_c0_exe11(GPOUT,17)
    assign out_c0_exe11 = in_c0_exe11;

    // out_c0_exe12(GPOUT,18)
    assign out_c0_exe12 = in_c0_exe12;

    // out_c0_exe163(GPOUT,19)
    assign out_c0_exe163 = in_c0_exe163;

    // out_c0_exe264(GPOUT,20)
    assign out_c0_exe264 = in_c0_exe264;

    // out_c0_exe365(GPOUT,21)
    assign out_c0_exe365 = in_c0_exe365;

    // out_c0_exe466(GPOUT,22)
    assign out_c0_exe466 = in_c0_exe466;

    // out_c0_exe5(GPOUT,23)
    assign out_c0_exe5 = in_c0_exe5;

    // out_c0_exe6(GPOUT,24)
    assign out_c0_exe6 = in_c0_exe6;

    // out_c0_exe7(GPOUT,25)
    assign out_c0_exe7 = in_c0_exe7;

    // out_c0_exe9(GPOUT,26)
    assign out_c0_exe9 = in_c0_exe9;

    // out_memdep_phi_pop12(GPOUT,27)
    assign out_memdep_phi_pop12 = in_memdep_phi_pop12;

    // stall_out(LOGICAL,30)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,28)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,29)
    assign out_valid_out_0 = in_valid_in;

endmodule
