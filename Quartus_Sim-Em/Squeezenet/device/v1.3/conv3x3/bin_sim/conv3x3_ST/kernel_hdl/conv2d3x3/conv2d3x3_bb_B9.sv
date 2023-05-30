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

// SystemVerilog created from conv2d3x3_bb_B9
// SystemVerilog created on Tue May 30 12:33:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B9 (
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
    input wire [63:0] in_filter_bias,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [31:0] in_output_size,
    input wire [31:0] in_pad,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_stride,
    input wire [0:0] in_valid_in_0,
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
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe117418;
    wire [63:0] bb_conv2d3x3_B9_stall_region_out_c0_exe137439;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_c0_exe1649;
    wire [63:0] bb_conv2d3x3_B9_stall_region_out_c0_exe1674610;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_c0_exe1774711;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe1874812;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_c0_exe1974913;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_c0_exe2075014;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_c0_exe2175115;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe2275216;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe2375317;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_c0_exe2475418;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe2575519;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe2675620;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_c0_exe27321;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe2775721;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe2875822;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_c0_exe2975923;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_c0_exe3076024;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe3176125;
    wire [63:0] bb_conv2d3x3_B9_stall_region_out_c0_exe3376326;
    wire [63:0] bb_conv2d3x3_B9_stall_region_out_c0_exe3476427;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_c0_exe3576528;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe3676629;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_c0_exe37332;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_c0_exe3776730;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_c0_exe3876831;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe3976932;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe4033;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_c0_exe4134;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe4235;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe4336;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_c0_exe4437;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe4538;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe4639;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_c0_exe47343;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe4740;
    wire [63:0] bb_conv2d3x3_B9_stall_region_out_c0_exe4841;
    wire [63:0] bb_conv2d3x3_B9_stall_region_out_c0_exe4942;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_c0_exe5043;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe5144;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_c0_exe57354;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_c0_exe67365;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe87386;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe97397;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_c1_exe145;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_stall_out;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_valid_out;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe117418;
    wire [63:0] conv2d3x3_B9_branch_out_c0_exe137439;
    wire [31:0] conv2d3x3_B9_branch_out_c0_exe1649;
    wire [63:0] conv2d3x3_B9_branch_out_c0_exe1674610;
    wire [31:0] conv2d3x3_B9_branch_out_c0_exe1774711;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe1874812;
    wire [31:0] conv2d3x3_B9_branch_out_c0_exe1974913;
    wire [31:0] conv2d3x3_B9_branch_out_c0_exe2075014;
    wire [31:0] conv2d3x3_B9_branch_out_c0_exe2175115;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe2275216;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe2375317;
    wire [31:0] conv2d3x3_B9_branch_out_c0_exe2475418;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe2575519;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe2675620;
    wire [31:0] conv2d3x3_B9_branch_out_c0_exe27321;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe2775721;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe2875822;
    wire [31:0] conv2d3x3_B9_branch_out_c0_exe2975923;
    wire [31:0] conv2d3x3_B9_branch_out_c0_exe3076024;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe3176125;
    wire [63:0] conv2d3x3_B9_branch_out_c0_exe3376326;
    wire [63:0] conv2d3x3_B9_branch_out_c0_exe3476427;
    wire [31:0] conv2d3x3_B9_branch_out_c0_exe3576528;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe3676629;
    wire [31:0] conv2d3x3_B9_branch_out_c0_exe37332;
    wire [31:0] conv2d3x3_B9_branch_out_c0_exe3776730;
    wire [31:0] conv2d3x3_B9_branch_out_c0_exe3876831;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe3976932;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe4033;
    wire [31:0] conv2d3x3_B9_branch_out_c0_exe4134;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe4235;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe4336;
    wire [31:0] conv2d3x3_B9_branch_out_c0_exe4437;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe4538;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe4639;
    wire [31:0] conv2d3x3_B9_branch_out_c0_exe47343;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe4740;
    wire [63:0] conv2d3x3_B9_branch_out_c0_exe4841;
    wire [63:0] conv2d3x3_B9_branch_out_c0_exe4942;
    wire [31:0] conv2d3x3_B9_branch_out_c0_exe5043;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe5144;
    wire [31:0] conv2d3x3_B9_branch_out_c0_exe57354;
    wire [31:0] conv2d3x3_B9_branch_out_c0_exe67365;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe87386;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe97397;
    wire [31:0] conv2d3x3_B9_branch_out_c1_exe145;
    wire [0:0] conv2d3x3_B9_branch_out_stall_out;
    wire [0:0] conv2d3x3_B9_branch_out_valid_out_0;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe117418;
    wire [63:0] conv2d3x3_B9_merge_out_c0_exe137439;
    wire [63:0] conv2d3x3_B9_merge_out_c0_exe1674610;
    wire [31:0] conv2d3x3_B9_merge_out_c0_exe1774711;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe1874812;
    wire [31:0] conv2d3x3_B9_merge_out_c0_exe1974913;
    wire [31:0] conv2d3x3_B9_merge_out_c0_exe2075014;
    wire [31:0] conv2d3x3_B9_merge_out_c0_exe2175115;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe2275216;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe2375317;
    wire [31:0] conv2d3x3_B9_merge_out_c0_exe2475418;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe2575519;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe2675620;
    wire [31:0] conv2d3x3_B9_merge_out_c0_exe27321;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe2775721;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe2875822;
    wire [31:0] conv2d3x3_B9_merge_out_c0_exe2975923;
    wire [31:0] conv2d3x3_B9_merge_out_c0_exe3076024;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe3176125;
    wire [63:0] conv2d3x3_B9_merge_out_c0_exe3376326;
    wire [63:0] conv2d3x3_B9_merge_out_c0_exe3476427;
    wire [31:0] conv2d3x3_B9_merge_out_c0_exe3576528;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe3676629;
    wire [31:0] conv2d3x3_B9_merge_out_c0_exe37332;
    wire [31:0] conv2d3x3_B9_merge_out_c0_exe3776730;
    wire [31:0] conv2d3x3_B9_merge_out_c0_exe3876831;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe3976932;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe4033;
    wire [31:0] conv2d3x3_B9_merge_out_c0_exe4134;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe4235;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe4336;
    wire [31:0] conv2d3x3_B9_merge_out_c0_exe4437;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe4538;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe4639;
    wire [31:0] conv2d3x3_B9_merge_out_c0_exe47343;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe4740;
    wire [63:0] conv2d3x3_B9_merge_out_c0_exe4841;
    wire [63:0] conv2d3x3_B9_merge_out_c0_exe4942;
    wire [31:0] conv2d3x3_B9_merge_out_c0_exe5043;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe5144;
    wire [31:0] conv2d3x3_B9_merge_out_c0_exe57354;
    wire [31:0] conv2d3x3_B9_merge_out_c0_exe67365;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe87386;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe97397;
    wire [31:0] conv2d3x3_B9_merge_out_c1_exe145;
    wire [0:0] conv2d3x3_B9_merge_out_stall_out_0;
    wire [0:0] conv2d3x3_B9_merge_out_valid_out;


    // conv2d3x3_B9_merge(BLACKBOX,4)
    conv2d3x3_B9_merge theconv2d3x3_B9_merge (
        .in_c0_exe117418_0(in_c0_exe117418_0),
        .in_c0_exe137439_0(in_c0_exe137439_0),
        .in_c0_exe1674610_0(in_c0_exe1674610_0),
        .in_c0_exe1774711_0(in_c0_exe1774711_0),
        .in_c0_exe1874812_0(in_c0_exe1874812_0),
        .in_c0_exe1974913_0(in_c0_exe1974913_0),
        .in_c0_exe2075014_0(in_c0_exe2075014_0),
        .in_c0_exe2175115_0(in_c0_exe2175115_0),
        .in_c0_exe2275216_0(in_c0_exe2275216_0),
        .in_c0_exe2375317_0(in_c0_exe2375317_0),
        .in_c0_exe2475418_0(in_c0_exe2475418_0),
        .in_c0_exe2575519_0(in_c0_exe2575519_0),
        .in_c0_exe2675620_0(in_c0_exe2675620_0),
        .in_c0_exe27321_0(in_c0_exe27321_0),
        .in_c0_exe2775721_0(in_c0_exe2775721_0),
        .in_c0_exe2875822_0(in_c0_exe2875822_0),
        .in_c0_exe2975923_0(in_c0_exe2975923_0),
        .in_c0_exe3076024_0(in_c0_exe3076024_0),
        .in_c0_exe3176125_0(in_c0_exe3176125_0),
        .in_c0_exe3376326_0(in_c0_exe3376326_0),
        .in_c0_exe3476427_0(in_c0_exe3476427_0),
        .in_c0_exe3576528_0(in_c0_exe3576528_0),
        .in_c0_exe3676629_0(in_c0_exe3676629_0),
        .in_c0_exe37332_0(in_c0_exe37332_0),
        .in_c0_exe3776730_0(in_c0_exe3776730_0),
        .in_c0_exe3876831_0(in_c0_exe3876831_0),
        .in_c0_exe3976932_0(in_c0_exe3976932_0),
        .in_c0_exe4033_0(in_c0_exe4033_0),
        .in_c0_exe4134_0(in_c0_exe4134_0),
        .in_c0_exe4235_0(in_c0_exe4235_0),
        .in_c0_exe4336_0(in_c0_exe4336_0),
        .in_c0_exe4437_0(in_c0_exe4437_0),
        .in_c0_exe4538_0(in_c0_exe4538_0),
        .in_c0_exe4639_0(in_c0_exe4639_0),
        .in_c0_exe47343_0(in_c0_exe47343_0),
        .in_c0_exe4740_0(in_c0_exe4740_0),
        .in_c0_exe4841_0(in_c0_exe4841_0),
        .in_c0_exe4942_0(in_c0_exe4942_0),
        .in_c0_exe5043_0(in_c0_exe5043_0),
        .in_c0_exe5144_0(in_c0_exe5144_0),
        .in_c0_exe57354_0(in_c0_exe57354_0),
        .in_c0_exe67365_0(in_c0_exe67365_0),
        .in_c0_exe87386_0(in_c0_exe87386_0),
        .in_c0_exe97397_0(in_c0_exe97397_0),
        .in_c1_exe145_0(in_c1_exe145_0),
        .in_stall_in(bb_conv2d3x3_B9_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe117418(conv2d3x3_B9_merge_out_c0_exe117418),
        .out_c0_exe137439(conv2d3x3_B9_merge_out_c0_exe137439),
        .out_c0_exe1674610(conv2d3x3_B9_merge_out_c0_exe1674610),
        .out_c0_exe1774711(conv2d3x3_B9_merge_out_c0_exe1774711),
        .out_c0_exe1874812(conv2d3x3_B9_merge_out_c0_exe1874812),
        .out_c0_exe1974913(conv2d3x3_B9_merge_out_c0_exe1974913),
        .out_c0_exe2075014(conv2d3x3_B9_merge_out_c0_exe2075014),
        .out_c0_exe2175115(conv2d3x3_B9_merge_out_c0_exe2175115),
        .out_c0_exe2275216(conv2d3x3_B9_merge_out_c0_exe2275216),
        .out_c0_exe2375317(conv2d3x3_B9_merge_out_c0_exe2375317),
        .out_c0_exe2475418(conv2d3x3_B9_merge_out_c0_exe2475418),
        .out_c0_exe2575519(conv2d3x3_B9_merge_out_c0_exe2575519),
        .out_c0_exe2675620(conv2d3x3_B9_merge_out_c0_exe2675620),
        .out_c0_exe27321(conv2d3x3_B9_merge_out_c0_exe27321),
        .out_c0_exe2775721(conv2d3x3_B9_merge_out_c0_exe2775721),
        .out_c0_exe2875822(conv2d3x3_B9_merge_out_c0_exe2875822),
        .out_c0_exe2975923(conv2d3x3_B9_merge_out_c0_exe2975923),
        .out_c0_exe3076024(conv2d3x3_B9_merge_out_c0_exe3076024),
        .out_c0_exe3176125(conv2d3x3_B9_merge_out_c0_exe3176125),
        .out_c0_exe3376326(conv2d3x3_B9_merge_out_c0_exe3376326),
        .out_c0_exe3476427(conv2d3x3_B9_merge_out_c0_exe3476427),
        .out_c0_exe3576528(conv2d3x3_B9_merge_out_c0_exe3576528),
        .out_c0_exe3676629(conv2d3x3_B9_merge_out_c0_exe3676629),
        .out_c0_exe37332(conv2d3x3_B9_merge_out_c0_exe37332),
        .out_c0_exe3776730(conv2d3x3_B9_merge_out_c0_exe3776730),
        .out_c0_exe3876831(conv2d3x3_B9_merge_out_c0_exe3876831),
        .out_c0_exe3976932(conv2d3x3_B9_merge_out_c0_exe3976932),
        .out_c0_exe4033(conv2d3x3_B9_merge_out_c0_exe4033),
        .out_c0_exe4134(conv2d3x3_B9_merge_out_c0_exe4134),
        .out_c0_exe4235(conv2d3x3_B9_merge_out_c0_exe4235),
        .out_c0_exe4336(conv2d3x3_B9_merge_out_c0_exe4336),
        .out_c0_exe4437(conv2d3x3_B9_merge_out_c0_exe4437),
        .out_c0_exe4538(conv2d3x3_B9_merge_out_c0_exe4538),
        .out_c0_exe4639(conv2d3x3_B9_merge_out_c0_exe4639),
        .out_c0_exe47343(conv2d3x3_B9_merge_out_c0_exe47343),
        .out_c0_exe4740(conv2d3x3_B9_merge_out_c0_exe4740),
        .out_c0_exe4841(conv2d3x3_B9_merge_out_c0_exe4841),
        .out_c0_exe4942(conv2d3x3_B9_merge_out_c0_exe4942),
        .out_c0_exe5043(conv2d3x3_B9_merge_out_c0_exe5043),
        .out_c0_exe5144(conv2d3x3_B9_merge_out_c0_exe5144),
        .out_c0_exe57354(conv2d3x3_B9_merge_out_c0_exe57354),
        .out_c0_exe67365(conv2d3x3_B9_merge_out_c0_exe67365),
        .out_c0_exe87386(conv2d3x3_B9_merge_out_c0_exe87386),
        .out_c0_exe97397(conv2d3x3_B9_merge_out_c0_exe97397),
        .out_c1_exe145(conv2d3x3_B9_merge_out_c1_exe145),
        .out_stall_out_0(conv2d3x3_B9_merge_out_stall_out_0),
        .out_valid_out(conv2d3x3_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B9_stall_region(BLACKBOX,2)
    conv2d3x3_bb_B9_stall_region thebb_conv2d3x3_B9_stall_region (
        .in_c0_exe117418(conv2d3x3_B9_merge_out_c0_exe117418),
        .in_c0_exe137439(conv2d3x3_B9_merge_out_c0_exe137439),
        .in_c0_exe1674610(conv2d3x3_B9_merge_out_c0_exe1674610),
        .in_c0_exe1774711(conv2d3x3_B9_merge_out_c0_exe1774711),
        .in_c0_exe1874812(conv2d3x3_B9_merge_out_c0_exe1874812),
        .in_c0_exe1974913(conv2d3x3_B9_merge_out_c0_exe1974913),
        .in_c0_exe2075014(conv2d3x3_B9_merge_out_c0_exe2075014),
        .in_c0_exe2175115(conv2d3x3_B9_merge_out_c0_exe2175115),
        .in_c0_exe2275216(conv2d3x3_B9_merge_out_c0_exe2275216),
        .in_c0_exe2375317(conv2d3x3_B9_merge_out_c0_exe2375317),
        .in_c0_exe2475418(conv2d3x3_B9_merge_out_c0_exe2475418),
        .in_c0_exe2575519(conv2d3x3_B9_merge_out_c0_exe2575519),
        .in_c0_exe2675620(conv2d3x3_B9_merge_out_c0_exe2675620),
        .in_c0_exe27321(conv2d3x3_B9_merge_out_c0_exe27321),
        .in_c0_exe2775721(conv2d3x3_B9_merge_out_c0_exe2775721),
        .in_c0_exe2875822(conv2d3x3_B9_merge_out_c0_exe2875822),
        .in_c0_exe2975923(conv2d3x3_B9_merge_out_c0_exe2975923),
        .in_c0_exe3076024(conv2d3x3_B9_merge_out_c0_exe3076024),
        .in_c0_exe3176125(conv2d3x3_B9_merge_out_c0_exe3176125),
        .in_c0_exe3376326(conv2d3x3_B9_merge_out_c0_exe3376326),
        .in_c0_exe3476427(conv2d3x3_B9_merge_out_c0_exe3476427),
        .in_c0_exe3576528(conv2d3x3_B9_merge_out_c0_exe3576528),
        .in_c0_exe3676629(conv2d3x3_B9_merge_out_c0_exe3676629),
        .in_c0_exe37332(conv2d3x3_B9_merge_out_c0_exe37332),
        .in_c0_exe3776730(conv2d3x3_B9_merge_out_c0_exe3776730),
        .in_c0_exe3876831(conv2d3x3_B9_merge_out_c0_exe3876831),
        .in_c0_exe3976932(conv2d3x3_B9_merge_out_c0_exe3976932),
        .in_c0_exe4033(conv2d3x3_B9_merge_out_c0_exe4033),
        .in_c0_exe4134(conv2d3x3_B9_merge_out_c0_exe4134),
        .in_c0_exe4235(conv2d3x3_B9_merge_out_c0_exe4235),
        .in_c0_exe4336(conv2d3x3_B9_merge_out_c0_exe4336),
        .in_c0_exe4437(conv2d3x3_B9_merge_out_c0_exe4437),
        .in_c0_exe4538(conv2d3x3_B9_merge_out_c0_exe4538),
        .in_c0_exe4639(conv2d3x3_B9_merge_out_c0_exe4639),
        .in_c0_exe47343(conv2d3x3_B9_merge_out_c0_exe47343),
        .in_c0_exe4740(conv2d3x3_B9_merge_out_c0_exe4740),
        .in_c0_exe4841(conv2d3x3_B9_merge_out_c0_exe4841),
        .in_c0_exe4942(conv2d3x3_B9_merge_out_c0_exe4942),
        .in_c0_exe5043(conv2d3x3_B9_merge_out_c0_exe5043),
        .in_c0_exe5144(conv2d3x3_B9_merge_out_c0_exe5144),
        .in_c0_exe57354(conv2d3x3_B9_merge_out_c0_exe57354),
        .in_c0_exe67365(conv2d3x3_B9_merge_out_c0_exe67365),
        .in_c0_exe87386(conv2d3x3_B9_merge_out_c0_exe87386),
        .in_c0_exe97397(conv2d3x3_B9_merge_out_c0_exe97397),
        .in_c1_exe145(conv2d3x3_B9_merge_out_c1_exe145),
        .in_input_size(in_input_size),
        .in_stall_in(conv2d3x3_B9_branch_out_stall_out),
        .in_valid_in(conv2d3x3_B9_merge_out_valid_out),
        .out_c0_exe117418(bb_conv2d3x3_B9_stall_region_out_c0_exe117418),
        .out_c0_exe137439(bb_conv2d3x3_B9_stall_region_out_c0_exe137439),
        .out_c0_exe1649(bb_conv2d3x3_B9_stall_region_out_c0_exe1649),
        .out_c0_exe1674610(bb_conv2d3x3_B9_stall_region_out_c0_exe1674610),
        .out_c0_exe1774711(bb_conv2d3x3_B9_stall_region_out_c0_exe1774711),
        .out_c0_exe1874812(bb_conv2d3x3_B9_stall_region_out_c0_exe1874812),
        .out_c0_exe1974913(bb_conv2d3x3_B9_stall_region_out_c0_exe1974913),
        .out_c0_exe2075014(bb_conv2d3x3_B9_stall_region_out_c0_exe2075014),
        .out_c0_exe2175115(bb_conv2d3x3_B9_stall_region_out_c0_exe2175115),
        .out_c0_exe2275216(bb_conv2d3x3_B9_stall_region_out_c0_exe2275216),
        .out_c0_exe2375317(bb_conv2d3x3_B9_stall_region_out_c0_exe2375317),
        .out_c0_exe2475418(bb_conv2d3x3_B9_stall_region_out_c0_exe2475418),
        .out_c0_exe2575519(bb_conv2d3x3_B9_stall_region_out_c0_exe2575519),
        .out_c0_exe2675620(bb_conv2d3x3_B9_stall_region_out_c0_exe2675620),
        .out_c0_exe27321(bb_conv2d3x3_B9_stall_region_out_c0_exe27321),
        .out_c0_exe2775721(bb_conv2d3x3_B9_stall_region_out_c0_exe2775721),
        .out_c0_exe2875822(bb_conv2d3x3_B9_stall_region_out_c0_exe2875822),
        .out_c0_exe2975923(bb_conv2d3x3_B9_stall_region_out_c0_exe2975923),
        .out_c0_exe3076024(bb_conv2d3x3_B9_stall_region_out_c0_exe3076024),
        .out_c0_exe3176125(bb_conv2d3x3_B9_stall_region_out_c0_exe3176125),
        .out_c0_exe3376326(bb_conv2d3x3_B9_stall_region_out_c0_exe3376326),
        .out_c0_exe3476427(bb_conv2d3x3_B9_stall_region_out_c0_exe3476427),
        .out_c0_exe3576528(bb_conv2d3x3_B9_stall_region_out_c0_exe3576528),
        .out_c0_exe3676629(bb_conv2d3x3_B9_stall_region_out_c0_exe3676629),
        .out_c0_exe37332(bb_conv2d3x3_B9_stall_region_out_c0_exe37332),
        .out_c0_exe3776730(bb_conv2d3x3_B9_stall_region_out_c0_exe3776730),
        .out_c0_exe3876831(bb_conv2d3x3_B9_stall_region_out_c0_exe3876831),
        .out_c0_exe3976932(bb_conv2d3x3_B9_stall_region_out_c0_exe3976932),
        .out_c0_exe4033(bb_conv2d3x3_B9_stall_region_out_c0_exe4033),
        .out_c0_exe4134(bb_conv2d3x3_B9_stall_region_out_c0_exe4134),
        .out_c0_exe4235(bb_conv2d3x3_B9_stall_region_out_c0_exe4235),
        .out_c0_exe4336(bb_conv2d3x3_B9_stall_region_out_c0_exe4336),
        .out_c0_exe4437(bb_conv2d3x3_B9_stall_region_out_c0_exe4437),
        .out_c0_exe4538(bb_conv2d3x3_B9_stall_region_out_c0_exe4538),
        .out_c0_exe4639(bb_conv2d3x3_B9_stall_region_out_c0_exe4639),
        .out_c0_exe47343(bb_conv2d3x3_B9_stall_region_out_c0_exe47343),
        .out_c0_exe4740(bb_conv2d3x3_B9_stall_region_out_c0_exe4740),
        .out_c0_exe4841(bb_conv2d3x3_B9_stall_region_out_c0_exe4841),
        .out_c0_exe4942(bb_conv2d3x3_B9_stall_region_out_c0_exe4942),
        .out_c0_exe5043(bb_conv2d3x3_B9_stall_region_out_c0_exe5043),
        .out_c0_exe5144(bb_conv2d3x3_B9_stall_region_out_c0_exe5144),
        .out_c0_exe57354(bb_conv2d3x3_B9_stall_region_out_c0_exe57354),
        .out_c0_exe67365(bb_conv2d3x3_B9_stall_region_out_c0_exe67365),
        .out_c0_exe87386(bb_conv2d3x3_B9_stall_region_out_c0_exe87386),
        .out_c0_exe97397(bb_conv2d3x3_B9_stall_region_out_c0_exe97397),
        .out_c1_exe145(bb_conv2d3x3_B9_stall_region_out_c1_exe145),
        .out_stall_out(bb_conv2d3x3_B9_stall_region_out_stall_out),
        .out_valid_out(bb_conv2d3x3_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d3x3_B9_branch(BLACKBOX,3)
    conv2d3x3_B9_branch theconv2d3x3_B9_branch (
        .in_c0_exe117418(bb_conv2d3x3_B9_stall_region_out_c0_exe117418),
        .in_c0_exe137439(bb_conv2d3x3_B9_stall_region_out_c0_exe137439),
        .in_c0_exe1649(bb_conv2d3x3_B9_stall_region_out_c0_exe1649),
        .in_c0_exe1674610(bb_conv2d3x3_B9_stall_region_out_c0_exe1674610),
        .in_c0_exe1774711(bb_conv2d3x3_B9_stall_region_out_c0_exe1774711),
        .in_c0_exe1874812(bb_conv2d3x3_B9_stall_region_out_c0_exe1874812),
        .in_c0_exe1974913(bb_conv2d3x3_B9_stall_region_out_c0_exe1974913),
        .in_c0_exe2075014(bb_conv2d3x3_B9_stall_region_out_c0_exe2075014),
        .in_c0_exe2175115(bb_conv2d3x3_B9_stall_region_out_c0_exe2175115),
        .in_c0_exe2275216(bb_conv2d3x3_B9_stall_region_out_c0_exe2275216),
        .in_c0_exe2375317(bb_conv2d3x3_B9_stall_region_out_c0_exe2375317),
        .in_c0_exe2475418(bb_conv2d3x3_B9_stall_region_out_c0_exe2475418),
        .in_c0_exe2575519(bb_conv2d3x3_B9_stall_region_out_c0_exe2575519),
        .in_c0_exe2675620(bb_conv2d3x3_B9_stall_region_out_c0_exe2675620),
        .in_c0_exe27321(bb_conv2d3x3_B9_stall_region_out_c0_exe27321),
        .in_c0_exe2775721(bb_conv2d3x3_B9_stall_region_out_c0_exe2775721),
        .in_c0_exe2875822(bb_conv2d3x3_B9_stall_region_out_c0_exe2875822),
        .in_c0_exe2975923(bb_conv2d3x3_B9_stall_region_out_c0_exe2975923),
        .in_c0_exe3076024(bb_conv2d3x3_B9_stall_region_out_c0_exe3076024),
        .in_c0_exe3176125(bb_conv2d3x3_B9_stall_region_out_c0_exe3176125),
        .in_c0_exe3376326(bb_conv2d3x3_B9_stall_region_out_c0_exe3376326),
        .in_c0_exe3476427(bb_conv2d3x3_B9_stall_region_out_c0_exe3476427),
        .in_c0_exe3576528(bb_conv2d3x3_B9_stall_region_out_c0_exe3576528),
        .in_c0_exe3676629(bb_conv2d3x3_B9_stall_region_out_c0_exe3676629),
        .in_c0_exe37332(bb_conv2d3x3_B9_stall_region_out_c0_exe37332),
        .in_c0_exe3776730(bb_conv2d3x3_B9_stall_region_out_c0_exe3776730),
        .in_c0_exe3876831(bb_conv2d3x3_B9_stall_region_out_c0_exe3876831),
        .in_c0_exe3976932(bb_conv2d3x3_B9_stall_region_out_c0_exe3976932),
        .in_c0_exe4033(bb_conv2d3x3_B9_stall_region_out_c0_exe4033),
        .in_c0_exe4134(bb_conv2d3x3_B9_stall_region_out_c0_exe4134),
        .in_c0_exe4235(bb_conv2d3x3_B9_stall_region_out_c0_exe4235),
        .in_c0_exe4336(bb_conv2d3x3_B9_stall_region_out_c0_exe4336),
        .in_c0_exe4437(bb_conv2d3x3_B9_stall_region_out_c0_exe4437),
        .in_c0_exe4538(bb_conv2d3x3_B9_stall_region_out_c0_exe4538),
        .in_c0_exe4639(bb_conv2d3x3_B9_stall_region_out_c0_exe4639),
        .in_c0_exe47343(bb_conv2d3x3_B9_stall_region_out_c0_exe47343),
        .in_c0_exe4740(bb_conv2d3x3_B9_stall_region_out_c0_exe4740),
        .in_c0_exe4841(bb_conv2d3x3_B9_stall_region_out_c0_exe4841),
        .in_c0_exe4942(bb_conv2d3x3_B9_stall_region_out_c0_exe4942),
        .in_c0_exe5043(bb_conv2d3x3_B9_stall_region_out_c0_exe5043),
        .in_c0_exe5144(bb_conv2d3x3_B9_stall_region_out_c0_exe5144),
        .in_c0_exe57354(bb_conv2d3x3_B9_stall_region_out_c0_exe57354),
        .in_c0_exe67365(bb_conv2d3x3_B9_stall_region_out_c0_exe67365),
        .in_c0_exe87386(bb_conv2d3x3_B9_stall_region_out_c0_exe87386),
        .in_c0_exe97397(bb_conv2d3x3_B9_stall_region_out_c0_exe97397),
        .in_c1_exe145(bb_conv2d3x3_B9_stall_region_out_c1_exe145),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_conv2d3x3_B9_stall_region_out_valid_out),
        .out_c0_exe117418(conv2d3x3_B9_branch_out_c0_exe117418),
        .out_c0_exe137439(conv2d3x3_B9_branch_out_c0_exe137439),
        .out_c0_exe1649(conv2d3x3_B9_branch_out_c0_exe1649),
        .out_c0_exe1674610(conv2d3x3_B9_branch_out_c0_exe1674610),
        .out_c0_exe1774711(conv2d3x3_B9_branch_out_c0_exe1774711),
        .out_c0_exe1874812(conv2d3x3_B9_branch_out_c0_exe1874812),
        .out_c0_exe1974913(conv2d3x3_B9_branch_out_c0_exe1974913),
        .out_c0_exe2075014(conv2d3x3_B9_branch_out_c0_exe2075014),
        .out_c0_exe2175115(conv2d3x3_B9_branch_out_c0_exe2175115),
        .out_c0_exe2275216(conv2d3x3_B9_branch_out_c0_exe2275216),
        .out_c0_exe2375317(conv2d3x3_B9_branch_out_c0_exe2375317),
        .out_c0_exe2475418(conv2d3x3_B9_branch_out_c0_exe2475418),
        .out_c0_exe2575519(conv2d3x3_B9_branch_out_c0_exe2575519),
        .out_c0_exe2675620(conv2d3x3_B9_branch_out_c0_exe2675620),
        .out_c0_exe27321(conv2d3x3_B9_branch_out_c0_exe27321),
        .out_c0_exe2775721(conv2d3x3_B9_branch_out_c0_exe2775721),
        .out_c0_exe2875822(conv2d3x3_B9_branch_out_c0_exe2875822),
        .out_c0_exe2975923(conv2d3x3_B9_branch_out_c0_exe2975923),
        .out_c0_exe3076024(conv2d3x3_B9_branch_out_c0_exe3076024),
        .out_c0_exe3176125(conv2d3x3_B9_branch_out_c0_exe3176125),
        .out_c0_exe3376326(conv2d3x3_B9_branch_out_c0_exe3376326),
        .out_c0_exe3476427(conv2d3x3_B9_branch_out_c0_exe3476427),
        .out_c0_exe3576528(conv2d3x3_B9_branch_out_c0_exe3576528),
        .out_c0_exe3676629(conv2d3x3_B9_branch_out_c0_exe3676629),
        .out_c0_exe37332(conv2d3x3_B9_branch_out_c0_exe37332),
        .out_c0_exe3776730(conv2d3x3_B9_branch_out_c0_exe3776730),
        .out_c0_exe3876831(conv2d3x3_B9_branch_out_c0_exe3876831),
        .out_c0_exe3976932(conv2d3x3_B9_branch_out_c0_exe3976932),
        .out_c0_exe4033(conv2d3x3_B9_branch_out_c0_exe4033),
        .out_c0_exe4134(conv2d3x3_B9_branch_out_c0_exe4134),
        .out_c0_exe4235(conv2d3x3_B9_branch_out_c0_exe4235),
        .out_c0_exe4336(conv2d3x3_B9_branch_out_c0_exe4336),
        .out_c0_exe4437(conv2d3x3_B9_branch_out_c0_exe4437),
        .out_c0_exe4538(conv2d3x3_B9_branch_out_c0_exe4538),
        .out_c0_exe4639(conv2d3x3_B9_branch_out_c0_exe4639),
        .out_c0_exe47343(conv2d3x3_B9_branch_out_c0_exe47343),
        .out_c0_exe4740(conv2d3x3_B9_branch_out_c0_exe4740),
        .out_c0_exe4841(conv2d3x3_B9_branch_out_c0_exe4841),
        .out_c0_exe4942(conv2d3x3_B9_branch_out_c0_exe4942),
        .out_c0_exe5043(conv2d3x3_B9_branch_out_c0_exe5043),
        .out_c0_exe5144(conv2d3x3_B9_branch_out_c0_exe5144),
        .out_c0_exe57354(conv2d3x3_B9_branch_out_c0_exe57354),
        .out_c0_exe67365(conv2d3x3_B9_branch_out_c0_exe67365),
        .out_c0_exe87386(conv2d3x3_B9_branch_out_c0_exe87386),
        .out_c0_exe97397(conv2d3x3_B9_branch_out_c0_exe97397),
        .out_c1_exe145(conv2d3x3_B9_branch_out_c1_exe145),
        .out_stall_out(conv2d3x3_B9_branch_out_stall_out),
        .out_valid_out_0(conv2d3x3_B9_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe117418(GPOUT,59)
    assign out_c0_exe117418 = conv2d3x3_B9_branch_out_c0_exe117418;

    // out_c0_exe137439(GPOUT,60)
    assign out_c0_exe137439 = conv2d3x3_B9_branch_out_c0_exe137439;

    // out_c0_exe1649(GPOUT,61)
    assign out_c0_exe1649 = conv2d3x3_B9_branch_out_c0_exe1649;

    // out_c0_exe1674610(GPOUT,62)
    assign out_c0_exe1674610 = conv2d3x3_B9_branch_out_c0_exe1674610;

    // out_c0_exe1774711(GPOUT,63)
    assign out_c0_exe1774711 = conv2d3x3_B9_branch_out_c0_exe1774711;

    // out_c0_exe1874812(GPOUT,64)
    assign out_c0_exe1874812 = conv2d3x3_B9_branch_out_c0_exe1874812;

    // out_c0_exe1974913(GPOUT,65)
    assign out_c0_exe1974913 = conv2d3x3_B9_branch_out_c0_exe1974913;

    // out_c0_exe2075014(GPOUT,66)
    assign out_c0_exe2075014 = conv2d3x3_B9_branch_out_c0_exe2075014;

    // out_c0_exe2175115(GPOUT,67)
    assign out_c0_exe2175115 = conv2d3x3_B9_branch_out_c0_exe2175115;

    // out_c0_exe2275216(GPOUT,68)
    assign out_c0_exe2275216 = conv2d3x3_B9_branch_out_c0_exe2275216;

    // out_c0_exe2375317(GPOUT,69)
    assign out_c0_exe2375317 = conv2d3x3_B9_branch_out_c0_exe2375317;

    // out_c0_exe2475418(GPOUT,70)
    assign out_c0_exe2475418 = conv2d3x3_B9_branch_out_c0_exe2475418;

    // out_c0_exe2575519(GPOUT,71)
    assign out_c0_exe2575519 = conv2d3x3_B9_branch_out_c0_exe2575519;

    // out_c0_exe2675620(GPOUT,72)
    assign out_c0_exe2675620 = conv2d3x3_B9_branch_out_c0_exe2675620;

    // out_c0_exe27321(GPOUT,73)
    assign out_c0_exe27321 = conv2d3x3_B9_branch_out_c0_exe27321;

    // out_c0_exe2775721(GPOUT,74)
    assign out_c0_exe2775721 = conv2d3x3_B9_branch_out_c0_exe2775721;

    // out_c0_exe2875822(GPOUT,75)
    assign out_c0_exe2875822 = conv2d3x3_B9_branch_out_c0_exe2875822;

    // out_c0_exe2975923(GPOUT,76)
    assign out_c0_exe2975923 = conv2d3x3_B9_branch_out_c0_exe2975923;

    // out_c0_exe3076024(GPOUT,77)
    assign out_c0_exe3076024 = conv2d3x3_B9_branch_out_c0_exe3076024;

    // out_c0_exe3176125(GPOUT,78)
    assign out_c0_exe3176125 = conv2d3x3_B9_branch_out_c0_exe3176125;

    // out_c0_exe3376326(GPOUT,79)
    assign out_c0_exe3376326 = conv2d3x3_B9_branch_out_c0_exe3376326;

    // out_c0_exe3476427(GPOUT,80)
    assign out_c0_exe3476427 = conv2d3x3_B9_branch_out_c0_exe3476427;

    // out_c0_exe3576528(GPOUT,81)
    assign out_c0_exe3576528 = conv2d3x3_B9_branch_out_c0_exe3576528;

    // out_c0_exe3676629(GPOUT,82)
    assign out_c0_exe3676629 = conv2d3x3_B9_branch_out_c0_exe3676629;

    // out_c0_exe37332(GPOUT,83)
    assign out_c0_exe37332 = conv2d3x3_B9_branch_out_c0_exe37332;

    // out_c0_exe3776730(GPOUT,84)
    assign out_c0_exe3776730 = conv2d3x3_B9_branch_out_c0_exe3776730;

    // out_c0_exe3876831(GPOUT,85)
    assign out_c0_exe3876831 = conv2d3x3_B9_branch_out_c0_exe3876831;

    // out_c0_exe3976932(GPOUT,86)
    assign out_c0_exe3976932 = conv2d3x3_B9_branch_out_c0_exe3976932;

    // out_c0_exe4033(GPOUT,87)
    assign out_c0_exe4033 = conv2d3x3_B9_branch_out_c0_exe4033;

    // out_c0_exe4134(GPOUT,88)
    assign out_c0_exe4134 = conv2d3x3_B9_branch_out_c0_exe4134;

    // out_c0_exe4235(GPOUT,89)
    assign out_c0_exe4235 = conv2d3x3_B9_branch_out_c0_exe4235;

    // out_c0_exe4336(GPOUT,90)
    assign out_c0_exe4336 = conv2d3x3_B9_branch_out_c0_exe4336;

    // out_c0_exe4437(GPOUT,91)
    assign out_c0_exe4437 = conv2d3x3_B9_branch_out_c0_exe4437;

    // out_c0_exe4538(GPOUT,92)
    assign out_c0_exe4538 = conv2d3x3_B9_branch_out_c0_exe4538;

    // out_c0_exe4639(GPOUT,93)
    assign out_c0_exe4639 = conv2d3x3_B9_branch_out_c0_exe4639;

    // out_c0_exe47343(GPOUT,94)
    assign out_c0_exe47343 = conv2d3x3_B9_branch_out_c0_exe47343;

    // out_c0_exe4740(GPOUT,95)
    assign out_c0_exe4740 = conv2d3x3_B9_branch_out_c0_exe4740;

    // out_c0_exe4841(GPOUT,96)
    assign out_c0_exe4841 = conv2d3x3_B9_branch_out_c0_exe4841;

    // out_c0_exe4942(GPOUT,97)
    assign out_c0_exe4942 = conv2d3x3_B9_branch_out_c0_exe4942;

    // out_c0_exe5043(GPOUT,98)
    assign out_c0_exe5043 = conv2d3x3_B9_branch_out_c0_exe5043;

    // out_c0_exe5144(GPOUT,99)
    assign out_c0_exe5144 = conv2d3x3_B9_branch_out_c0_exe5144;

    // out_c0_exe57354(GPOUT,100)
    assign out_c0_exe57354 = conv2d3x3_B9_branch_out_c0_exe57354;

    // out_c0_exe67365(GPOUT,101)
    assign out_c0_exe67365 = conv2d3x3_B9_branch_out_c0_exe67365;

    // out_c0_exe87386(GPOUT,102)
    assign out_c0_exe87386 = conv2d3x3_B9_branch_out_c0_exe87386;

    // out_c0_exe97397(GPOUT,103)
    assign out_c0_exe97397 = conv2d3x3_B9_branch_out_c0_exe97397;

    // out_c1_exe145(GPOUT,104)
    assign out_c1_exe145 = conv2d3x3_B9_branch_out_c1_exe145;

    // out_stall_out_0(GPOUT,105)
    assign out_stall_out_0 = conv2d3x3_B9_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,106)
    assign out_valid_out_0 = conv2d3x3_B9_branch_out_valid_out_0;

endmodule
