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

// SystemVerilog created from mmul_B5_merge
// SystemVerilog created on Tue May  9 13:20:54 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_B5_merge (
    input wire [0:0] in_c0_exe105_0,
    input wire [0:0] in_c0_exe116_0,
    input wire [0:0] in_c0_exe2681_0,
    input wire [31:0] in_c0_exe3692_0,
    input wire [31:0] in_c0_exe6723_0,
    input wire [31:0] in_c1_exe17_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe105,
    output wire [0:0] out_c0_exe116,
    output wire [0:0] out_c0_exe2681,
    output wire [31:0] out_c0_exe3692,
    output wire [31:0] out_c0_exe6723,
    output wire [31:0] out_c1_exe17,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe105(GPOUT,10)
    assign out_c0_exe105 = in_c0_exe105_0;

    // out_c0_exe116(GPOUT,11)
    assign out_c0_exe116 = in_c0_exe116_0;

    // out_c0_exe2681(GPOUT,12)
    assign out_c0_exe2681 = in_c0_exe2681_0;

    // out_c0_exe3692(GPOUT,13)
    assign out_c0_exe3692 = in_c0_exe3692_0;

    // out_c0_exe6723(GPOUT,14)
    assign out_c0_exe6723 = in_c0_exe6723_0;

    // out_c1_exe17(GPOUT,15)
    assign out_c1_exe17 = in_c1_exe17_0;

    // stall_out(LOGICAL,18)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,16)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,17)
    assign out_valid_out = in_valid_in_0;

endmodule
