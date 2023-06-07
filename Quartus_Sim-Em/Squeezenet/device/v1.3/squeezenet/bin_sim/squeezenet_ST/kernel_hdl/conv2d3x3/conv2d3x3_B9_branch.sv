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

// SystemVerilog created from conv2d3x3_B9_branch
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B9_branch (
    input wire [0:0] in_c0_exe117418,
    input wire [63:0] in_c0_exe137439,
    input wire [31:0] in_c0_exe1649,
    input wire [63:0] in_c0_exe1674610,
    input wire [31:0] in_c0_exe1774711,
    input wire [0:0] in_c0_exe1874812,
    input wire [31:0] in_c0_exe1974913,
    input wire [31:0] in_c0_exe2075014,
    input wire [31:0] in_c0_exe2175115,
    input wire [0:0] in_c0_exe2275216,
    input wire [0:0] in_c0_exe2375317,
    input wire [31:0] in_c0_exe2475418,
    input wire [0:0] in_c0_exe2575519,
    input wire [0:0] in_c0_exe2675620,
    input wire [31:0] in_c0_exe27321,
    input wire [0:0] in_c0_exe2775721,
    input wire [0:0] in_c0_exe2875822,
    input wire [31:0] in_c0_exe2975923,
    input wire [31:0] in_c0_exe3076024,
    input wire [0:0] in_c0_exe3176125,
    input wire [63:0] in_c0_exe3376326,
    input wire [63:0] in_c0_exe3476427,
    input wire [31:0] in_c0_exe3576528,
    input wire [0:0] in_c0_exe3676629,
    input wire [31:0] in_c0_exe37332,
    input wire [31:0] in_c0_exe3776730,
    input wire [31:0] in_c0_exe3876831,
    input wire [0:0] in_c0_exe3976932,
    input wire [0:0] in_c0_exe4033,
    input wire [31:0] in_c0_exe4134,
    input wire [0:0] in_c0_exe4235,
    input wire [0:0] in_c0_exe4336,
    input wire [31:0] in_c0_exe4437,
    input wire [0:0] in_c0_exe4538,
    input wire [0:0] in_c0_exe4639,
    input wire [31:0] in_c0_exe47343,
    input wire [0:0] in_c0_exe4740,
    input wire [63:0] in_c0_exe4841,
    input wire [63:0] in_c0_exe4942,
    input wire [31:0] in_c0_exe5043,
    input wire [0:0] in_c0_exe5144,
    input wire [31:0] in_c0_exe57354,
    input wire [31:0] in_c0_exe67365,
    input wire [0:0] in_c0_exe87386,
    input wire [0:0] in_c0_exe97397,
    input wire [31:0] in_c1_exe145,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe117418,
    output wire [63:0] out_c0_exe137439,
    output wire [31:0] out_c0_exe1649,
    output wire [63:0] out_c0_exe1674610,
    output wire [31:0] out_c0_exe1774711,
    output wire [0:0] out_c0_exe1874812,
    output wire [31:0] out_c0_exe1974913,
    output wire [31:0] out_c0_exe2075014,
    output wire [31:0] out_c0_exe2175115,
    output wire [0:0] out_c0_exe2275216,
    output wire [0:0] out_c0_exe2375317,
    output wire [31:0] out_c0_exe2475418,
    output wire [0:0] out_c0_exe2575519,
    output wire [0:0] out_c0_exe2675620,
    output wire [31:0] out_c0_exe27321,
    output wire [0:0] out_c0_exe2775721,
    output wire [0:0] out_c0_exe2875822,
    output wire [31:0] out_c0_exe2975923,
    output wire [31:0] out_c0_exe3076024,
    output wire [0:0] out_c0_exe3176125,
    output wire [63:0] out_c0_exe3376326,
    output wire [63:0] out_c0_exe3476427,
    output wire [31:0] out_c0_exe3576528,
    output wire [0:0] out_c0_exe3676629,
    output wire [31:0] out_c0_exe37332,
    output wire [31:0] out_c0_exe3776730,
    output wire [31:0] out_c0_exe3876831,
    output wire [0:0] out_c0_exe3976932,
    output wire [0:0] out_c0_exe4033,
    output wire [31:0] out_c0_exe4134,
    output wire [0:0] out_c0_exe4235,
    output wire [0:0] out_c0_exe4336,
    output wire [31:0] out_c0_exe4437,
    output wire [0:0] out_c0_exe4538,
    output wire [0:0] out_c0_exe4639,
    output wire [31:0] out_c0_exe47343,
    output wire [0:0] out_c0_exe4740,
    output wire [63:0] out_c0_exe4841,
    output wire [63:0] out_c0_exe4942,
    output wire [31:0] out_c0_exe5043,
    output wire [0:0] out_c0_exe5144,
    output wire [31:0] out_c0_exe57354,
    output wire [31:0] out_c0_exe67365,
    output wire [0:0] out_c0_exe87386,
    output wire [0:0] out_c0_exe97397,
    output wire [31:0] out_c1_exe145,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe117418(GPOUT,50)
    assign out_c0_exe117418 = in_c0_exe117418;

    // out_c0_exe137439(GPOUT,51)
    assign out_c0_exe137439 = in_c0_exe137439;

    // out_c0_exe1649(GPOUT,52)
    assign out_c0_exe1649 = in_c0_exe1649;

    // out_c0_exe1674610(GPOUT,53)
    assign out_c0_exe1674610 = in_c0_exe1674610;

    // out_c0_exe1774711(GPOUT,54)
    assign out_c0_exe1774711 = in_c0_exe1774711;

    // out_c0_exe1874812(GPOUT,55)
    assign out_c0_exe1874812 = in_c0_exe1874812;

    // out_c0_exe1974913(GPOUT,56)
    assign out_c0_exe1974913 = in_c0_exe1974913;

    // out_c0_exe2075014(GPOUT,57)
    assign out_c0_exe2075014 = in_c0_exe2075014;

    // out_c0_exe2175115(GPOUT,58)
    assign out_c0_exe2175115 = in_c0_exe2175115;

    // out_c0_exe2275216(GPOUT,59)
    assign out_c0_exe2275216 = in_c0_exe2275216;

    // out_c0_exe2375317(GPOUT,60)
    assign out_c0_exe2375317 = in_c0_exe2375317;

    // out_c0_exe2475418(GPOUT,61)
    assign out_c0_exe2475418 = in_c0_exe2475418;

    // out_c0_exe2575519(GPOUT,62)
    assign out_c0_exe2575519 = in_c0_exe2575519;

    // out_c0_exe2675620(GPOUT,63)
    assign out_c0_exe2675620 = in_c0_exe2675620;

    // out_c0_exe27321(GPOUT,64)
    assign out_c0_exe27321 = in_c0_exe27321;

    // out_c0_exe2775721(GPOUT,65)
    assign out_c0_exe2775721 = in_c0_exe2775721;

    // out_c0_exe2875822(GPOUT,66)
    assign out_c0_exe2875822 = in_c0_exe2875822;

    // out_c0_exe2975923(GPOUT,67)
    assign out_c0_exe2975923 = in_c0_exe2975923;

    // out_c0_exe3076024(GPOUT,68)
    assign out_c0_exe3076024 = in_c0_exe3076024;

    // out_c0_exe3176125(GPOUT,69)
    assign out_c0_exe3176125 = in_c0_exe3176125;

    // out_c0_exe3376326(GPOUT,70)
    assign out_c0_exe3376326 = in_c0_exe3376326;

    // out_c0_exe3476427(GPOUT,71)
    assign out_c0_exe3476427 = in_c0_exe3476427;

    // out_c0_exe3576528(GPOUT,72)
    assign out_c0_exe3576528 = in_c0_exe3576528;

    // out_c0_exe3676629(GPOUT,73)
    assign out_c0_exe3676629 = in_c0_exe3676629;

    // out_c0_exe37332(GPOUT,74)
    assign out_c0_exe37332 = in_c0_exe37332;

    // out_c0_exe3776730(GPOUT,75)
    assign out_c0_exe3776730 = in_c0_exe3776730;

    // out_c0_exe3876831(GPOUT,76)
    assign out_c0_exe3876831 = in_c0_exe3876831;

    // out_c0_exe3976932(GPOUT,77)
    assign out_c0_exe3976932 = in_c0_exe3976932;

    // out_c0_exe4033(GPOUT,78)
    assign out_c0_exe4033 = in_c0_exe4033;

    // out_c0_exe4134(GPOUT,79)
    assign out_c0_exe4134 = in_c0_exe4134;

    // out_c0_exe4235(GPOUT,80)
    assign out_c0_exe4235 = in_c0_exe4235;

    // out_c0_exe4336(GPOUT,81)
    assign out_c0_exe4336 = in_c0_exe4336;

    // out_c0_exe4437(GPOUT,82)
    assign out_c0_exe4437 = in_c0_exe4437;

    // out_c0_exe4538(GPOUT,83)
    assign out_c0_exe4538 = in_c0_exe4538;

    // out_c0_exe4639(GPOUT,84)
    assign out_c0_exe4639 = in_c0_exe4639;

    // out_c0_exe47343(GPOUT,85)
    assign out_c0_exe47343 = in_c0_exe47343;

    // out_c0_exe4740(GPOUT,86)
    assign out_c0_exe4740 = in_c0_exe4740;

    // out_c0_exe4841(GPOUT,87)
    assign out_c0_exe4841 = in_c0_exe4841;

    // out_c0_exe4942(GPOUT,88)
    assign out_c0_exe4942 = in_c0_exe4942;

    // out_c0_exe5043(GPOUT,89)
    assign out_c0_exe5043 = in_c0_exe5043;

    // out_c0_exe5144(GPOUT,90)
    assign out_c0_exe5144 = in_c0_exe5144;

    // out_c0_exe57354(GPOUT,91)
    assign out_c0_exe57354 = in_c0_exe57354;

    // out_c0_exe67365(GPOUT,92)
    assign out_c0_exe67365 = in_c0_exe67365;

    // out_c0_exe87386(GPOUT,93)
    assign out_c0_exe87386 = in_c0_exe87386;

    // out_c0_exe97397(GPOUT,94)
    assign out_c0_exe97397 = in_c0_exe97397;

    // out_c1_exe145(GPOUT,95)
    assign out_c1_exe145 = in_c1_exe145;

    // stall_out(LOGICAL,98)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,96)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,97)
    assign out_valid_out_0 = in_valid_in;

endmodule
