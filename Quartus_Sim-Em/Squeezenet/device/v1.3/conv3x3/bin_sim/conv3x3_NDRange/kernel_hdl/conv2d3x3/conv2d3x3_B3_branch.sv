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

// SystemVerilog created from conv2d3x3_B3_branch
// SystemVerilog created on Tue May 30 12:30:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B3_branch (
    input wire [0:0] in_c0_exe1082,
    input wire [63:0] in_c0_exe112,
    input wire [31:0] in_c0_exe1186152,
    input wire [0:0] in_c0_exe1191,
    input wire [31:0] in_c0_exe1195,
    input wire [31:0] in_c0_exe12102,
    input wire [0:0] in_c0_exe13112,
    input wire [0:0] in_c0_exe14121,
    input wire [0:0] in_c0_exe15131,
    input wire [0:0] in_c0_exe16141,
    input wire [31:0] in_c0_exe2196,
    input wire [63:0] in_c0_exe323,
    input wire [0:0] in_c0_exe432,
    input wire [31:0] in_c0_exe534,
    input wire [31:0] in_c0_exe650,
    input wire [0:0] in_c0_exe753,
    input wire [0:0] in_c0_exe862,
    input wire [31:0] in_c0_exe972,
    input wire [31:0] in_j_062150,
    input wire [31:0] in_k_059,
    input wire [31:0] in_mul46_add4,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_tmp_058,
    input wire [31:0] in_unnamed_conv2d3x33,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe1082,
    output wire [63:0] out_c0_exe112,
    output wire [31:0] out_c0_exe1186152,
    output wire [0:0] out_c0_exe1191,
    output wire [31:0] out_c0_exe1195,
    output wire [31:0] out_c0_exe12102,
    output wire [0:0] out_c0_exe13112,
    output wire [0:0] out_c0_exe14121,
    output wire [0:0] out_c0_exe15131,
    output wire [0:0] out_c0_exe16141,
    output wire [31:0] out_c0_exe2196,
    output wire [63:0] out_c0_exe323,
    output wire [0:0] out_c0_exe432,
    output wire [31:0] out_c0_exe534,
    output wire [31:0] out_c0_exe650,
    output wire [0:0] out_c0_exe753,
    output wire [0:0] out_c0_exe862,
    output wire [31:0] out_c0_exe972,
    output wire [31:0] out_j_062150,
    output wire [31:0] out_k_059,
    output wire [31:0] out_mul46_add4,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_tmp_058,
    output wire [31:0] out_unnamed_conv2d3x33,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe1082(GPOUT,27)
    assign out_c0_exe1082 = in_c0_exe1082;

    // out_c0_exe112(GPOUT,28)
    assign out_c0_exe112 = in_c0_exe112;

    // out_c0_exe1186152(GPOUT,29)
    assign out_c0_exe1186152 = in_c0_exe1186152;

    // out_c0_exe1191(GPOUT,30)
    assign out_c0_exe1191 = in_c0_exe1191;

    // out_c0_exe1195(GPOUT,31)
    assign out_c0_exe1195 = in_c0_exe1195;

    // out_c0_exe12102(GPOUT,32)
    assign out_c0_exe12102 = in_c0_exe12102;

    // out_c0_exe13112(GPOUT,33)
    assign out_c0_exe13112 = in_c0_exe13112;

    // out_c0_exe14121(GPOUT,34)
    assign out_c0_exe14121 = in_c0_exe14121;

    // out_c0_exe15131(GPOUT,35)
    assign out_c0_exe15131 = in_c0_exe15131;

    // out_c0_exe16141(GPOUT,36)
    assign out_c0_exe16141 = in_c0_exe16141;

    // out_c0_exe2196(GPOUT,37)
    assign out_c0_exe2196 = in_c0_exe2196;

    // out_c0_exe323(GPOUT,38)
    assign out_c0_exe323 = in_c0_exe323;

    // out_c0_exe432(GPOUT,39)
    assign out_c0_exe432 = in_c0_exe432;

    // out_c0_exe534(GPOUT,40)
    assign out_c0_exe534 = in_c0_exe534;

    // out_c0_exe650(GPOUT,41)
    assign out_c0_exe650 = in_c0_exe650;

    // out_c0_exe753(GPOUT,42)
    assign out_c0_exe753 = in_c0_exe753;

    // out_c0_exe862(GPOUT,43)
    assign out_c0_exe862 = in_c0_exe862;

    // out_c0_exe972(GPOUT,44)
    assign out_c0_exe972 = in_c0_exe972;

    // out_j_062150(GPOUT,45)
    assign out_j_062150 = in_j_062150;

    // out_k_059(GPOUT,46)
    assign out_k_059 = in_k_059;

    // out_mul46_add4(GPOUT,47)
    assign out_mul46_add4 = in_mul46_add4;

    // stall_out(LOGICAL,52)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,48)
    assign out_stall_out = stall_out_q;

    // out_tmp_058(GPOUT,49)
    assign out_tmp_058 = in_tmp_058;

    // out_unnamed_conv2d3x33(GPOUT,50)
    assign out_unnamed_conv2d3x33 = in_unnamed_conv2d3x33;

    // out_valid_out_0(GPOUT,51)
    assign out_valid_out_0 = in_valid_in;

endmodule
