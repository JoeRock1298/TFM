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

// SystemVerilog created from conv2d1x1_B7_merge
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B7_merge (
    input wire [31:0] in_c0_exe1273429_0,
    input wire [31:0] in_c0_exe1373530_0,
    input wire [0:0] in_c0_exe1573731_0,
    input wire [31:0] in_c0_exe1773932_0,
    input wire [31:0] in_c0_exe1874033_0,
    input wire [0:0] in_c0_exe1974135_0,
    input wire [31:0] in_c0_exe2074236_0,
    input wire [31:0] in_c0_exe2174337_0,
    input wire [31:0] in_c0_exe2274438_0,
    input wire [0:0] in_c0_exe2374539_0,
    input wire [0:0] in_c0_exe2474640_0,
    input wire [0:0] in_c0_exe2574741_0,
    input wire [0:0] in_c0_exe772926_0,
    input wire [0:0] in_c0_exe873027_0,
    input wire [31:0] in_c0_exe973128_0,
    input wire [31:0] in_c1_exe1052_0,
    input wire [31:0] in_c1_exe1153_0,
    input wire [31:0] in_c1_exe1254_0,
    input wire [31:0] in_c1_exe1355_0,
    input wire [31:0] in_c1_exe1456_0,
    input wire [31:0] in_c1_exe184743_0,
    input wire [31:0] in_c1_exe244_0,
    input wire [31:0] in_c1_exe345_0,
    input wire [31:0] in_c1_exe446_0,
    input wire [31:0] in_c1_exe547_0,
    input wire [31:0] in_c1_exe648_0,
    input wire [31:0] in_c1_exe749_0,
    input wire [31:0] in_c1_exe850_0,
    input wire [31:0] in_c1_exe951_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [31:0] in_lm17742_0_0_tpl,
    input wire [31:0] in_lm17742_0_1_tpl,
    input wire [31:0] in_lm17742_0_2_tpl,
    input wire [31:0] in_lm17742_0_3_tpl,
    output wire [31:0] out_c0_exe1273429,
    output wire [31:0] out_c0_exe1373530,
    output wire [0:0] out_c0_exe1573731,
    output wire [31:0] out_c0_exe1773932,
    output wire [31:0] out_c0_exe1874033,
    output wire [0:0] out_c0_exe1974135,
    output wire [31:0] out_c0_exe2074236,
    output wire [31:0] out_c0_exe2174337,
    output wire [31:0] out_c0_exe2274438,
    output wire [0:0] out_c0_exe2374539,
    output wire [0:0] out_c0_exe2474640,
    output wire [0:0] out_c0_exe2574741,
    output wire [0:0] out_c0_exe772926,
    output wire [0:0] out_c0_exe873027,
    output wire [31:0] out_c0_exe973128,
    output wire [31:0] out_c1_exe1052,
    output wire [31:0] out_c1_exe1153,
    output wire [31:0] out_c1_exe1254,
    output wire [31:0] out_c1_exe1355,
    output wire [31:0] out_c1_exe1456,
    output wire [31:0] out_c1_exe184743,
    output wire [31:0] out_c1_exe244,
    output wire [31:0] out_c1_exe345,
    output wire [31:0] out_c1_exe446,
    output wire [31:0] out_c1_exe547,
    output wire [31:0] out_c1_exe648,
    output wire [31:0] out_c1_exe749,
    output wire [31:0] out_c1_exe850,
    output wire [31:0] out_c1_exe951,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_lm17742_0_tpl,
    output wire [31:0] out_lm17742_1_tpl,
    output wire [31:0] out_lm17742_2_tpl,
    output wire [31:0] out_lm17742_3_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe1273429(GPOUT,38)
    assign out_c0_exe1273429 = in_c0_exe1273429_0;

    // out_c0_exe1373530(GPOUT,39)
    assign out_c0_exe1373530 = in_c0_exe1373530_0;

    // out_c0_exe1573731(GPOUT,40)
    assign out_c0_exe1573731 = in_c0_exe1573731_0;

    // out_c0_exe1773932(GPOUT,41)
    assign out_c0_exe1773932 = in_c0_exe1773932_0;

    // out_c0_exe1874033(GPOUT,42)
    assign out_c0_exe1874033 = in_c0_exe1874033_0;

    // out_c0_exe1974135(GPOUT,43)
    assign out_c0_exe1974135 = in_c0_exe1974135_0;

    // out_c0_exe2074236(GPOUT,44)
    assign out_c0_exe2074236 = in_c0_exe2074236_0;

    // out_c0_exe2174337(GPOUT,45)
    assign out_c0_exe2174337 = in_c0_exe2174337_0;

    // out_c0_exe2274438(GPOUT,46)
    assign out_c0_exe2274438 = in_c0_exe2274438_0;

    // out_c0_exe2374539(GPOUT,47)
    assign out_c0_exe2374539 = in_c0_exe2374539_0;

    // out_c0_exe2474640(GPOUT,48)
    assign out_c0_exe2474640 = in_c0_exe2474640_0;

    // out_c0_exe2574741(GPOUT,49)
    assign out_c0_exe2574741 = in_c0_exe2574741_0;

    // out_c0_exe772926(GPOUT,50)
    assign out_c0_exe772926 = in_c0_exe772926_0;

    // out_c0_exe873027(GPOUT,51)
    assign out_c0_exe873027 = in_c0_exe873027_0;

    // out_c0_exe973128(GPOUT,52)
    assign out_c0_exe973128 = in_c0_exe973128_0;

    // out_c1_exe1052(GPOUT,53)
    assign out_c1_exe1052 = in_c1_exe1052_0;

    // out_c1_exe1153(GPOUT,54)
    assign out_c1_exe1153 = in_c1_exe1153_0;

    // out_c1_exe1254(GPOUT,55)
    assign out_c1_exe1254 = in_c1_exe1254_0;

    // out_c1_exe1355(GPOUT,56)
    assign out_c1_exe1355 = in_c1_exe1355_0;

    // out_c1_exe1456(GPOUT,57)
    assign out_c1_exe1456 = in_c1_exe1456_0;

    // out_c1_exe184743(GPOUT,58)
    assign out_c1_exe184743 = in_c1_exe184743_0;

    // out_c1_exe244(GPOUT,59)
    assign out_c1_exe244 = in_c1_exe244_0;

    // out_c1_exe345(GPOUT,60)
    assign out_c1_exe345 = in_c1_exe345_0;

    // out_c1_exe446(GPOUT,61)
    assign out_c1_exe446 = in_c1_exe446_0;

    // out_c1_exe547(GPOUT,62)
    assign out_c1_exe547 = in_c1_exe547_0;

    // out_c1_exe648(GPOUT,63)
    assign out_c1_exe648 = in_c1_exe648_0;

    // out_c1_exe749(GPOUT,64)
    assign out_c1_exe749 = in_c1_exe749_0;

    // out_c1_exe850(GPOUT,65)
    assign out_c1_exe850 = in_c1_exe850_0;

    // out_c1_exe951(GPOUT,66)
    assign out_c1_exe951 = in_c1_exe951_0;

    // stall_out(LOGICAL,2)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,67)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,68)
    assign out_valid_out = in_valid_in_0;

    // out_lm17742_0_tpl(GPOUT,69)
    assign out_lm17742_0_tpl = in_lm17742_0_0_tpl;

    // out_lm17742_1_tpl(GPOUT,70)
    assign out_lm17742_1_tpl = in_lm17742_0_1_tpl;

    // out_lm17742_2_tpl(GPOUT,71)
    assign out_lm17742_2_tpl = in_lm17742_0_2_tpl;

    // out_lm17742_3_tpl(GPOUT,72)
    assign out_lm17742_3_tpl = in_lm17742_0_3_tpl;

endmodule
