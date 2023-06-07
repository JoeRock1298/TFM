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

// SystemVerilog created from conv2d3x3_B4_merge
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B4_merge (
    input wire [0:0] in_c0_exe1084_0,
    input wire [63:0] in_c0_exe114_0,
    input wire [0:0] in_c0_exe1193_0,
    input wire [31:0] in_c0_exe12104_0,
    input wire [31:0] in_c0_exe1254180_0,
    input wire [0:0] in_c0_exe13114_0,
    input wire [0:0] in_c0_exe14123_0,
    input wire [0:0] in_c0_exe15133_0,
    input wire [0:0] in_c0_exe16134_0,
    input wire [63:0] in_c0_exe316_0,
    input wire [0:0] in_c0_exe425_0,
    input wire [31:0] in_c0_exe536_0,
    input wire [31:0] in_c0_exe643_0,
    input wire [0:0] in_c0_exe755_0,
    input wire [0:0] in_c0_exe864_0,
    input wire [31:0] in_c0_exe974_0,
    input wire [31:0] in_j_062143_0,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_conv2d3x34_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe1084,
    output wire [63:0] out_c0_exe114,
    output wire [0:0] out_c0_exe1193,
    output wire [31:0] out_c0_exe12104,
    output wire [31:0] out_c0_exe1254180,
    output wire [0:0] out_c0_exe13114,
    output wire [0:0] out_c0_exe14123,
    output wire [0:0] out_c0_exe15133,
    output wire [0:0] out_c0_exe16134,
    output wire [63:0] out_c0_exe316,
    output wire [0:0] out_c0_exe425,
    output wire [31:0] out_c0_exe536,
    output wire [31:0] out_c0_exe643,
    output wire [0:0] out_c0_exe755,
    output wire [0:0] out_c0_exe864,
    output wire [31:0] out_c0_exe974,
    output wire [31:0] out_j_062143,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_conv2d3x34,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe1084(GPOUT,22)
    assign out_c0_exe1084 = in_c0_exe1084_0;

    // out_c0_exe114(GPOUT,23)
    assign out_c0_exe114 = in_c0_exe114_0;

    // out_c0_exe1193(GPOUT,24)
    assign out_c0_exe1193 = in_c0_exe1193_0;

    // out_c0_exe12104(GPOUT,25)
    assign out_c0_exe12104 = in_c0_exe12104_0;

    // out_c0_exe1254180(GPOUT,26)
    assign out_c0_exe1254180 = in_c0_exe1254180_0;

    // out_c0_exe13114(GPOUT,27)
    assign out_c0_exe13114 = in_c0_exe13114_0;

    // out_c0_exe14123(GPOUT,28)
    assign out_c0_exe14123 = in_c0_exe14123_0;

    // out_c0_exe15133(GPOUT,29)
    assign out_c0_exe15133 = in_c0_exe15133_0;

    // out_c0_exe16134(GPOUT,30)
    assign out_c0_exe16134 = in_c0_exe16134_0;

    // out_c0_exe316(GPOUT,31)
    assign out_c0_exe316 = in_c0_exe316_0;

    // out_c0_exe425(GPOUT,32)
    assign out_c0_exe425 = in_c0_exe425_0;

    // out_c0_exe536(GPOUT,33)
    assign out_c0_exe536 = in_c0_exe536_0;

    // out_c0_exe643(GPOUT,34)
    assign out_c0_exe643 = in_c0_exe643_0;

    // out_c0_exe755(GPOUT,35)
    assign out_c0_exe755 = in_c0_exe755_0;

    // out_c0_exe864(GPOUT,36)
    assign out_c0_exe864 = in_c0_exe864_0;

    // out_c0_exe974(GPOUT,37)
    assign out_c0_exe974 = in_c0_exe974_0;

    // out_j_062143(GPOUT,38)
    assign out_j_062143 = in_j_062143_0;

    // stall_out(LOGICAL,42)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,39)
    assign out_stall_out_0 = stall_out_q;

    // out_unnamed_conv2d3x34(GPOUT,40)
    assign out_unnamed_conv2d3x34 = in_unnamed_conv2d3x34_0;

    // out_valid_out(GPOUT,41)
    assign out_valid_out = in_valid_in_0;

endmodule
