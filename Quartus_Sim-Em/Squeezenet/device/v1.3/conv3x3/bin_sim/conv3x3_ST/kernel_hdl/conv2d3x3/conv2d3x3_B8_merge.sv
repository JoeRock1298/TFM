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

// SystemVerilog created from conv2d3x3_B8_merge
// SystemVerilog created on Tue May 30 12:33:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B8_merge (
    input wire [63:0] in_c0_exe11114896_0,
    input wire [31:0] in_c0_exe13115099_0,
    input wire [0:0] in_c0_exe151152104_0,
    input wire [31:0] in_c0_exe181155108_0,
    input wire [0:0] in_c0_exe261163118_0,
    input wire [0:0] in_c0_exe301167123_0,
    input wire [31:0] in_c0_exe321169126_0,
    input wire [0:0] in_c0_exe6114393_0,
    input wire [31:0] in_c1_exe11205150_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_c0_exe11114896,
    output wire [31:0] out_c0_exe13115099,
    output wire [0:0] out_c0_exe151152104,
    output wire [31:0] out_c0_exe181155108,
    output wire [0:0] out_c0_exe261163118,
    output wire [0:0] out_c0_exe301167123,
    output wire [31:0] out_c0_exe321169126,
    output wire [0:0] out_c0_exe6114393,
    output wire [31:0] out_c1_exe11205150,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe11114896(GPOUT,13)
    assign out_c0_exe11114896 = in_c0_exe11114896_0;

    // out_c0_exe13115099(GPOUT,14)
    assign out_c0_exe13115099 = in_c0_exe13115099_0;

    // out_c0_exe151152104(GPOUT,15)
    assign out_c0_exe151152104 = in_c0_exe151152104_0;

    // out_c0_exe181155108(GPOUT,16)
    assign out_c0_exe181155108 = in_c0_exe181155108_0;

    // out_c0_exe261163118(GPOUT,17)
    assign out_c0_exe261163118 = in_c0_exe261163118_0;

    // out_c0_exe301167123(GPOUT,18)
    assign out_c0_exe301167123 = in_c0_exe301167123_0;

    // out_c0_exe321169126(GPOUT,19)
    assign out_c0_exe321169126 = in_c0_exe321169126_0;

    // out_c0_exe6114393(GPOUT,20)
    assign out_c0_exe6114393 = in_c0_exe6114393_0;

    // out_c1_exe11205150(GPOUT,21)
    assign out_c1_exe11205150 = in_c1_exe11205150_0;

    // stall_out(LOGICAL,24)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,22)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,23)
    assign out_valid_out = in_valid_in_0;

endmodule
