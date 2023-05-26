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

// SystemVerilog created from conv2d1x1_B5_merge
// SystemVerilog created on Wed May 24 11:22:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B5_merge (
    input wire [31:0] in_c0_exe103218_0,
    input wire [0:0] in_c0_exe113229_0,
    input wire [0:0] in_c0_exe1232310_0,
    input wire [31:0] in_c0_exe1332411_0,
    input wire [31:0] in_c0_exe1432512_0,
    input wire [0:0] in_c0_exe1532613_0,
    input wire [0:0] in_c0_exe1632714_0,
    input wire [0:0] in_c0_exe1732815_0,
    input wire [32:0] in_c0_exe1832916_0,
    input wire [31:0] in_c0_exe1933017_0,
    input wire [31:0] in_c0_exe2033118_0,
    input wire [31:0] in_c0_exe2119_0,
    input wire [0:0] in_c0_exe2220_0,
    input wire [63:0] in_c0_exe23131_0,
    input wire [0:0] in_c0_exe33142_0,
    input wire [0:0] in_c0_exe43153_0,
    input wire [31:0] in_c0_exe63174_0,
    input wire [0:0] in_c0_exe73185_0,
    input wire [31:0] in_c0_exe83196_0,
    input wire [31:0] in_c0_exe93207_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe103218,
    output wire [0:0] out_c0_exe113229,
    output wire [0:0] out_c0_exe1232310,
    output wire [31:0] out_c0_exe1332411,
    output wire [31:0] out_c0_exe1432512,
    output wire [0:0] out_c0_exe1532613,
    output wire [0:0] out_c0_exe1632714,
    output wire [0:0] out_c0_exe1732815,
    output wire [32:0] out_c0_exe1832916,
    output wire [31:0] out_c0_exe1933017,
    output wire [31:0] out_c0_exe2033118,
    output wire [31:0] out_c0_exe2119,
    output wire [0:0] out_c0_exe2220,
    output wire [63:0] out_c0_exe23131,
    output wire [0:0] out_c0_exe33142,
    output wire [0:0] out_c0_exe43153,
    output wire [31:0] out_c0_exe63174,
    output wire [0:0] out_c0_exe73185,
    output wire [31:0] out_c0_exe83196,
    output wire [31:0] out_c0_exe93207,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe103218(GPOUT,24)
    assign out_c0_exe103218 = in_c0_exe103218_0;

    // out_c0_exe113229(GPOUT,25)
    assign out_c0_exe113229 = in_c0_exe113229_0;

    // out_c0_exe1232310(GPOUT,26)
    assign out_c0_exe1232310 = in_c0_exe1232310_0;

    // out_c0_exe1332411(GPOUT,27)
    assign out_c0_exe1332411 = in_c0_exe1332411_0;

    // out_c0_exe1432512(GPOUT,28)
    assign out_c0_exe1432512 = in_c0_exe1432512_0;

    // out_c0_exe1532613(GPOUT,29)
    assign out_c0_exe1532613 = in_c0_exe1532613_0;

    // out_c0_exe1632714(GPOUT,30)
    assign out_c0_exe1632714 = in_c0_exe1632714_0;

    // out_c0_exe1732815(GPOUT,31)
    assign out_c0_exe1732815 = in_c0_exe1732815_0;

    // out_c0_exe1832916(GPOUT,32)
    assign out_c0_exe1832916 = in_c0_exe1832916_0;

    // out_c0_exe1933017(GPOUT,33)
    assign out_c0_exe1933017 = in_c0_exe1933017_0;

    // out_c0_exe2033118(GPOUT,34)
    assign out_c0_exe2033118 = in_c0_exe2033118_0;

    // out_c0_exe2119(GPOUT,35)
    assign out_c0_exe2119 = in_c0_exe2119_0;

    // out_c0_exe2220(GPOUT,36)
    assign out_c0_exe2220 = in_c0_exe2220_0;

    // out_c0_exe23131(GPOUT,37)
    assign out_c0_exe23131 = in_c0_exe23131_0;

    // out_c0_exe33142(GPOUT,38)
    assign out_c0_exe33142 = in_c0_exe33142_0;

    // out_c0_exe43153(GPOUT,39)
    assign out_c0_exe43153 = in_c0_exe43153_0;

    // out_c0_exe63174(GPOUT,40)
    assign out_c0_exe63174 = in_c0_exe63174_0;

    // out_c0_exe73185(GPOUT,41)
    assign out_c0_exe73185 = in_c0_exe73185_0;

    // out_c0_exe83196(GPOUT,42)
    assign out_c0_exe83196 = in_c0_exe83196_0;

    // out_c0_exe93207(GPOUT,43)
    assign out_c0_exe93207 = in_c0_exe93207_0;

    // stall_out(LOGICAL,46)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,44)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,45)
    assign out_valid_out = in_valid_in_0;

endmodule
