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

// SystemVerilog created from conv2d3x3_B9_merge
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B9_merge (
    input wire [0:0] in_c0_exe117418_0,
    input wire [63:0] in_c0_exe137439_0,
    input wire [63:0] in_c0_exe1674610_0,
    input wire [31:0] in_c0_exe1774711_0,
    input wire [0:0] in_c0_exe1874812_0,
    input wire [31:0] in_c0_exe1974913_0,
    input wire [31:0] in_c0_exe2075014_0,
    input wire [31:0] in_c0_exe2175115_0,
    input wire [0:0] in_c0_exe2275216_0,
    input wire [0:0] in_c0_exe2375317_0,
    input wire [31:0] in_c0_exe2475418_0,
    input wire [0:0] in_c0_exe2575519_0,
    input wire [0:0] in_c0_exe2675620_0,
    input wire [31:0] in_c0_exe27321_0,
    input wire [0:0] in_c0_exe2775721_0,
    input wire [0:0] in_c0_exe2875822_0,
    input wire [31:0] in_c0_exe2975923_0,
    input wire [31:0] in_c0_exe3076024_0,
    input wire [0:0] in_c0_exe3176125_0,
    input wire [63:0] in_c0_exe3376326_0,
    input wire [63:0] in_c0_exe3476427_0,
    input wire [31:0] in_c0_exe3576528_0,
    input wire [0:0] in_c0_exe3676629_0,
    input wire [31:0] in_c0_exe37332_0,
    input wire [31:0] in_c0_exe3776730_0,
    input wire [31:0] in_c0_exe3876831_0,
    input wire [0:0] in_c0_exe3976932_0,
    input wire [0:0] in_c0_exe4033_0,
    input wire [31:0] in_c0_exe4134_0,
    input wire [0:0] in_c0_exe4235_0,
    input wire [0:0] in_c0_exe4336_0,
    input wire [31:0] in_c0_exe4437_0,
    input wire [0:0] in_c0_exe4538_0,
    input wire [0:0] in_c0_exe4639_0,
    input wire [31:0] in_c0_exe47343_0,
    input wire [0:0] in_c0_exe4740_0,
    input wire [63:0] in_c0_exe4841_0,
    input wire [63:0] in_c0_exe4942_0,
    input wire [31:0] in_c0_exe5043_0,
    input wire [0:0] in_c0_exe5144_0,
    input wire [31:0] in_c0_exe57354_0,
    input wire [31:0] in_c0_exe67365_0,
    input wire [0:0] in_c0_exe87386_0,
    input wire [0:0] in_c0_exe97397_0,
    input wire [31:0] in_c1_exe145_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe117418,
    output wire [63:0] out_c0_exe137439,
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
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe117418(GPOUT,49)
    assign out_c0_exe117418 = in_c0_exe117418_0;

    // out_c0_exe137439(GPOUT,50)
    assign out_c0_exe137439 = in_c0_exe137439_0;

    // out_c0_exe1674610(GPOUT,51)
    assign out_c0_exe1674610 = in_c0_exe1674610_0;

    // out_c0_exe1774711(GPOUT,52)
    assign out_c0_exe1774711 = in_c0_exe1774711_0;

    // out_c0_exe1874812(GPOUT,53)
    assign out_c0_exe1874812 = in_c0_exe1874812_0;

    // out_c0_exe1974913(GPOUT,54)
    assign out_c0_exe1974913 = in_c0_exe1974913_0;

    // out_c0_exe2075014(GPOUT,55)
    assign out_c0_exe2075014 = in_c0_exe2075014_0;

    // out_c0_exe2175115(GPOUT,56)
    assign out_c0_exe2175115 = in_c0_exe2175115_0;

    // out_c0_exe2275216(GPOUT,57)
    assign out_c0_exe2275216 = in_c0_exe2275216_0;

    // out_c0_exe2375317(GPOUT,58)
    assign out_c0_exe2375317 = in_c0_exe2375317_0;

    // out_c0_exe2475418(GPOUT,59)
    assign out_c0_exe2475418 = in_c0_exe2475418_0;

    // out_c0_exe2575519(GPOUT,60)
    assign out_c0_exe2575519 = in_c0_exe2575519_0;

    // out_c0_exe2675620(GPOUT,61)
    assign out_c0_exe2675620 = in_c0_exe2675620_0;

    // out_c0_exe27321(GPOUT,62)
    assign out_c0_exe27321 = in_c0_exe27321_0;

    // out_c0_exe2775721(GPOUT,63)
    assign out_c0_exe2775721 = in_c0_exe2775721_0;

    // out_c0_exe2875822(GPOUT,64)
    assign out_c0_exe2875822 = in_c0_exe2875822_0;

    // out_c0_exe2975923(GPOUT,65)
    assign out_c0_exe2975923 = in_c0_exe2975923_0;

    // out_c0_exe3076024(GPOUT,66)
    assign out_c0_exe3076024 = in_c0_exe3076024_0;

    // out_c0_exe3176125(GPOUT,67)
    assign out_c0_exe3176125 = in_c0_exe3176125_0;

    // out_c0_exe3376326(GPOUT,68)
    assign out_c0_exe3376326 = in_c0_exe3376326_0;

    // out_c0_exe3476427(GPOUT,69)
    assign out_c0_exe3476427 = in_c0_exe3476427_0;

    // out_c0_exe3576528(GPOUT,70)
    assign out_c0_exe3576528 = in_c0_exe3576528_0;

    // out_c0_exe3676629(GPOUT,71)
    assign out_c0_exe3676629 = in_c0_exe3676629_0;

    // out_c0_exe37332(GPOUT,72)
    assign out_c0_exe37332 = in_c0_exe37332_0;

    // out_c0_exe3776730(GPOUT,73)
    assign out_c0_exe3776730 = in_c0_exe3776730_0;

    // out_c0_exe3876831(GPOUT,74)
    assign out_c0_exe3876831 = in_c0_exe3876831_0;

    // out_c0_exe3976932(GPOUT,75)
    assign out_c0_exe3976932 = in_c0_exe3976932_0;

    // out_c0_exe4033(GPOUT,76)
    assign out_c0_exe4033 = in_c0_exe4033_0;

    // out_c0_exe4134(GPOUT,77)
    assign out_c0_exe4134 = in_c0_exe4134_0;

    // out_c0_exe4235(GPOUT,78)
    assign out_c0_exe4235 = in_c0_exe4235_0;

    // out_c0_exe4336(GPOUT,79)
    assign out_c0_exe4336 = in_c0_exe4336_0;

    // out_c0_exe4437(GPOUT,80)
    assign out_c0_exe4437 = in_c0_exe4437_0;

    // out_c0_exe4538(GPOUT,81)
    assign out_c0_exe4538 = in_c0_exe4538_0;

    // out_c0_exe4639(GPOUT,82)
    assign out_c0_exe4639 = in_c0_exe4639_0;

    // out_c0_exe47343(GPOUT,83)
    assign out_c0_exe47343 = in_c0_exe47343_0;

    // out_c0_exe4740(GPOUT,84)
    assign out_c0_exe4740 = in_c0_exe4740_0;

    // out_c0_exe4841(GPOUT,85)
    assign out_c0_exe4841 = in_c0_exe4841_0;

    // out_c0_exe4942(GPOUT,86)
    assign out_c0_exe4942 = in_c0_exe4942_0;

    // out_c0_exe5043(GPOUT,87)
    assign out_c0_exe5043 = in_c0_exe5043_0;

    // out_c0_exe5144(GPOUT,88)
    assign out_c0_exe5144 = in_c0_exe5144_0;

    // out_c0_exe57354(GPOUT,89)
    assign out_c0_exe57354 = in_c0_exe57354_0;

    // out_c0_exe67365(GPOUT,90)
    assign out_c0_exe67365 = in_c0_exe67365_0;

    // out_c0_exe87386(GPOUT,91)
    assign out_c0_exe87386 = in_c0_exe87386_0;

    // out_c0_exe97397(GPOUT,92)
    assign out_c0_exe97397 = in_c0_exe97397_0;

    // out_c1_exe145(GPOUT,93)
    assign out_c1_exe145 = in_c1_exe145_0;

    // stall_out(LOGICAL,96)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,94)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,95)
    assign out_valid_out = in_valid_in_0;

endmodule
