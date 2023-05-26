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

// SystemVerilog created from conv2d1x1_B5_branch
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B5_branch (
    input wire [31:0] in_c0_exe10308,
    input wire [31:0] in_c0_exe103758,
    input wire [31:0] in_c0_exe11309,
    input wire [0:0] in_c0_exe113769,
    input wire [31:0] in_c0_exe12310,
    input wire [0:0] in_c0_exe1237710,
    input wire [31:0] in_c0_exe1299,
    input wire [31:0] in_c0_exe13311,
    input wire [31:0] in_c0_exe1337811,
    input wire [31:0] in_c0_exe14312,
    input wire [31:0] in_c0_exe1437912,
    input wire [31:0] in_c0_exe15313,
    input wire [0:0] in_c0_exe1538013,
    input wire [31:0] in_c0_exe16314,
    input wire [0:0] in_c0_exe1638114,
    input wire [31:0] in_c0_exe17315,
    input wire [0:0] in_c0_exe1738215,
    input wire [31:0] in_c0_exe18316,
    input wire [32:0] in_c0_exe1838316,
    input wire [31:0] in_c0_exe19317,
    input wire [31:0] in_c0_exe1938417,
    input wire [31:0] in_c0_exe20318,
    input wire [31:0] in_c0_exe2038518,
    input wire [31:0] in_c0_exe21,
    input wire [31:0] in_c0_exe2138619,
    input wire [31:0] in_c0_exe22,
    input wire [0:0] in_c0_exe2238720,
    input wire [31:0] in_c0_exe23,
    input wire [31:0] in_c0_exe2300,
    input wire [63:0] in_c0_exe23671,
    input wire [31:0] in_c0_exe24,
    input wire [31:0] in_c0_exe3301,
    input wire [0:0] in_c0_exe33682,
    input wire [31:0] in_c0_exe4302,
    input wire [0:0] in_c0_exe43693,
    input wire [31:0] in_c0_exe5303,
    input wire [31:0] in_c0_exe6304,
    input wire [31:0] in_c0_exe63714,
    input wire [31:0] in_c0_exe7305,
    input wire [0:0] in_c0_exe73725,
    input wire [31:0] in_c0_exe8306,
    input wire [31:0] in_c0_exe83736,
    input wire [31:0] in_c0_exe9307,
    input wire [31:0] in_c0_exe93747,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10308,
    output wire [31:0] out_c0_exe103758,
    output wire [31:0] out_c0_exe11309,
    output wire [0:0] out_c0_exe113769,
    output wire [31:0] out_c0_exe12310,
    output wire [0:0] out_c0_exe1237710,
    output wire [31:0] out_c0_exe1299,
    output wire [31:0] out_c0_exe13311,
    output wire [31:0] out_c0_exe1337811,
    output wire [31:0] out_c0_exe14312,
    output wire [31:0] out_c0_exe1437912,
    output wire [31:0] out_c0_exe15313,
    output wire [0:0] out_c0_exe1538013,
    output wire [31:0] out_c0_exe16314,
    output wire [0:0] out_c0_exe1638114,
    output wire [31:0] out_c0_exe17315,
    output wire [0:0] out_c0_exe1738215,
    output wire [31:0] out_c0_exe18316,
    output wire [32:0] out_c0_exe1838316,
    output wire [31:0] out_c0_exe19317,
    output wire [31:0] out_c0_exe1938417,
    output wire [31:0] out_c0_exe20318,
    output wire [31:0] out_c0_exe2038518,
    output wire [31:0] out_c0_exe21,
    output wire [31:0] out_c0_exe2138619,
    output wire [31:0] out_c0_exe22,
    output wire [0:0] out_c0_exe2238720,
    output wire [31:0] out_c0_exe23,
    output wire [31:0] out_c0_exe2300,
    output wire [63:0] out_c0_exe23671,
    output wire [31:0] out_c0_exe24,
    output wire [31:0] out_c0_exe3301,
    output wire [0:0] out_c0_exe33682,
    output wire [31:0] out_c0_exe4302,
    output wire [0:0] out_c0_exe43693,
    output wire [31:0] out_c0_exe5303,
    output wire [31:0] out_c0_exe6304,
    output wire [31:0] out_c0_exe63714,
    output wire [31:0] out_c0_exe7305,
    output wire [0:0] out_c0_exe73725,
    output wire [31:0] out_c0_exe8306,
    output wire [31:0] out_c0_exe83736,
    output wire [31:0] out_c0_exe9307,
    output wire [31:0] out_c0_exe93747,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10308(GPOUT,48)
    assign out_c0_exe10308 = in_c0_exe10308;

    // out_c0_exe103758(GPOUT,49)
    assign out_c0_exe103758 = in_c0_exe103758;

    // out_c0_exe11309(GPOUT,50)
    assign out_c0_exe11309 = in_c0_exe11309;

    // out_c0_exe113769(GPOUT,51)
    assign out_c0_exe113769 = in_c0_exe113769;

    // out_c0_exe12310(GPOUT,52)
    assign out_c0_exe12310 = in_c0_exe12310;

    // out_c0_exe1237710(GPOUT,53)
    assign out_c0_exe1237710 = in_c0_exe1237710;

    // out_c0_exe1299(GPOUT,54)
    assign out_c0_exe1299 = in_c0_exe1299;

    // out_c0_exe13311(GPOUT,55)
    assign out_c0_exe13311 = in_c0_exe13311;

    // out_c0_exe1337811(GPOUT,56)
    assign out_c0_exe1337811 = in_c0_exe1337811;

    // out_c0_exe14312(GPOUT,57)
    assign out_c0_exe14312 = in_c0_exe14312;

    // out_c0_exe1437912(GPOUT,58)
    assign out_c0_exe1437912 = in_c0_exe1437912;

    // out_c0_exe15313(GPOUT,59)
    assign out_c0_exe15313 = in_c0_exe15313;

    // out_c0_exe1538013(GPOUT,60)
    assign out_c0_exe1538013 = in_c0_exe1538013;

    // out_c0_exe16314(GPOUT,61)
    assign out_c0_exe16314 = in_c0_exe16314;

    // out_c0_exe1638114(GPOUT,62)
    assign out_c0_exe1638114 = in_c0_exe1638114;

    // out_c0_exe17315(GPOUT,63)
    assign out_c0_exe17315 = in_c0_exe17315;

    // out_c0_exe1738215(GPOUT,64)
    assign out_c0_exe1738215 = in_c0_exe1738215;

    // out_c0_exe18316(GPOUT,65)
    assign out_c0_exe18316 = in_c0_exe18316;

    // out_c0_exe1838316(GPOUT,66)
    assign out_c0_exe1838316 = in_c0_exe1838316;

    // out_c0_exe19317(GPOUT,67)
    assign out_c0_exe19317 = in_c0_exe19317;

    // out_c0_exe1938417(GPOUT,68)
    assign out_c0_exe1938417 = in_c0_exe1938417;

    // out_c0_exe20318(GPOUT,69)
    assign out_c0_exe20318 = in_c0_exe20318;

    // out_c0_exe2038518(GPOUT,70)
    assign out_c0_exe2038518 = in_c0_exe2038518;

    // out_c0_exe21(GPOUT,71)
    assign out_c0_exe21 = in_c0_exe21;

    // out_c0_exe2138619(GPOUT,72)
    assign out_c0_exe2138619 = in_c0_exe2138619;

    // out_c0_exe22(GPOUT,73)
    assign out_c0_exe22 = in_c0_exe22;

    // out_c0_exe2238720(GPOUT,74)
    assign out_c0_exe2238720 = in_c0_exe2238720;

    // out_c0_exe23(GPOUT,75)
    assign out_c0_exe23 = in_c0_exe23;

    // out_c0_exe2300(GPOUT,76)
    assign out_c0_exe2300 = in_c0_exe2300;

    // out_c0_exe23671(GPOUT,77)
    assign out_c0_exe23671 = in_c0_exe23671;

    // out_c0_exe24(GPOUT,78)
    assign out_c0_exe24 = in_c0_exe24;

    // out_c0_exe3301(GPOUT,79)
    assign out_c0_exe3301 = in_c0_exe3301;

    // out_c0_exe33682(GPOUT,80)
    assign out_c0_exe33682 = in_c0_exe33682;

    // out_c0_exe4302(GPOUT,81)
    assign out_c0_exe4302 = in_c0_exe4302;

    // out_c0_exe43693(GPOUT,82)
    assign out_c0_exe43693 = in_c0_exe43693;

    // out_c0_exe5303(GPOUT,83)
    assign out_c0_exe5303 = in_c0_exe5303;

    // out_c0_exe6304(GPOUT,84)
    assign out_c0_exe6304 = in_c0_exe6304;

    // out_c0_exe63714(GPOUT,85)
    assign out_c0_exe63714 = in_c0_exe63714;

    // out_c0_exe7305(GPOUT,86)
    assign out_c0_exe7305 = in_c0_exe7305;

    // out_c0_exe73725(GPOUT,87)
    assign out_c0_exe73725 = in_c0_exe73725;

    // out_c0_exe8306(GPOUT,88)
    assign out_c0_exe8306 = in_c0_exe8306;

    // out_c0_exe83736(GPOUT,89)
    assign out_c0_exe83736 = in_c0_exe83736;

    // out_c0_exe9307(GPOUT,90)
    assign out_c0_exe9307 = in_c0_exe9307;

    // out_c0_exe93747(GPOUT,91)
    assign out_c0_exe93747 = in_c0_exe93747;

    // stall_out(LOGICAL,94)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,92)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,93)
    assign out_valid_out_0 = in_valid_in;

endmodule
