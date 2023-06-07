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

// SystemVerilog created from maxpool2d_bb_B9
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_bb_B9 (
    input wire [0:0] in_c0_exe103408_0,
    input wire [31:0] in_c0_exe1134110_0,
    input wire [0:0] in_c0_exe1234213_0,
    input wire [0:0] in_c0_exe1334315_0,
    input wire [31:0] in_c0_exe1434417_0,
    input wire [0:0] in_c0_exe1534518_0,
    input wire [0:0] in_c0_exe53352_0,
    input wire [63:0] in_c0_exe93394_0,
    input wire [31:0] in_c1_exe120_0,
    input wire [31:0] in_input_size,
    input wire [31:0] in_output_size,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe103408,
    output wire [31:0] out_c0_exe1134110,
    output wire [0:0] out_c0_exe1234213,
    output wire [0:0] out_c0_exe1334315,
    output wire [31:0] out_c0_exe1434417,
    output wire [0:0] out_c0_exe53352,
    output wire [63:0] out_c0_exe93394,
    output wire [31:0] out_c1_exe120,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_maxpool2d_B9_stall_region_out_c0_exe103408;
    wire [31:0] bb_maxpool2d_B9_stall_region_out_c0_exe1134110;
    wire [0:0] bb_maxpool2d_B9_stall_region_out_c0_exe1234213;
    wire [0:0] bb_maxpool2d_B9_stall_region_out_c0_exe1334315;
    wire [31:0] bb_maxpool2d_B9_stall_region_out_c0_exe1434417;
    wire [0:0] bb_maxpool2d_B9_stall_region_out_c0_exe1534518;
    wire [0:0] bb_maxpool2d_B9_stall_region_out_c0_exe53352;
    wire [63:0] bb_maxpool2d_B9_stall_region_out_c0_exe93394;
    wire [31:0] bb_maxpool2d_B9_stall_region_out_c1_exe120;
    wire [0:0] bb_maxpool2d_B9_stall_region_out_stall_out;
    wire [0:0] bb_maxpool2d_B9_stall_region_out_valid_out;
    wire [0:0] maxpool2d_B9_branch_out_c0_exe103408;
    wire [31:0] maxpool2d_B9_branch_out_c0_exe1134110;
    wire [0:0] maxpool2d_B9_branch_out_c0_exe1234213;
    wire [0:0] maxpool2d_B9_branch_out_c0_exe1334315;
    wire [31:0] maxpool2d_B9_branch_out_c0_exe1434417;
    wire [0:0] maxpool2d_B9_branch_out_c0_exe53352;
    wire [63:0] maxpool2d_B9_branch_out_c0_exe93394;
    wire [31:0] maxpool2d_B9_branch_out_c1_exe120;
    wire [0:0] maxpool2d_B9_branch_out_stall_out;
    wire [0:0] maxpool2d_B9_branch_out_valid_out_0;
    wire [0:0] maxpool2d_B9_branch_out_valid_out_1;
    wire [0:0] maxpool2d_B9_merge_out_c0_exe103408;
    wire [31:0] maxpool2d_B9_merge_out_c0_exe1134110;
    wire [0:0] maxpool2d_B9_merge_out_c0_exe1234213;
    wire [0:0] maxpool2d_B9_merge_out_c0_exe1334315;
    wire [31:0] maxpool2d_B9_merge_out_c0_exe1434417;
    wire [0:0] maxpool2d_B9_merge_out_c0_exe1534518;
    wire [0:0] maxpool2d_B9_merge_out_c0_exe53352;
    wire [63:0] maxpool2d_B9_merge_out_c0_exe93394;
    wire [31:0] maxpool2d_B9_merge_out_c1_exe120;
    wire [0:0] maxpool2d_B9_merge_out_stall_out_0;
    wire [0:0] maxpool2d_B9_merge_out_valid_out;


    // maxpool2d_B9_merge(BLACKBOX,18)
    maxpool2d_B9_merge themaxpool2d_B9_merge (
        .in_c0_exe103408_0(in_c0_exe103408_0),
        .in_c0_exe1134110_0(in_c0_exe1134110_0),
        .in_c0_exe1234213_0(in_c0_exe1234213_0),
        .in_c0_exe1334315_0(in_c0_exe1334315_0),
        .in_c0_exe1434417_0(in_c0_exe1434417_0),
        .in_c0_exe1534518_0(in_c0_exe1534518_0),
        .in_c0_exe53352_0(in_c0_exe53352_0),
        .in_c0_exe93394_0(in_c0_exe93394_0),
        .in_c1_exe120_0(in_c1_exe120_0),
        .in_stall_in(bb_maxpool2d_B9_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe103408(maxpool2d_B9_merge_out_c0_exe103408),
        .out_c0_exe1134110(maxpool2d_B9_merge_out_c0_exe1134110),
        .out_c0_exe1234213(maxpool2d_B9_merge_out_c0_exe1234213),
        .out_c0_exe1334315(maxpool2d_B9_merge_out_c0_exe1334315),
        .out_c0_exe1434417(maxpool2d_B9_merge_out_c0_exe1434417),
        .out_c0_exe1534518(maxpool2d_B9_merge_out_c0_exe1534518),
        .out_c0_exe53352(maxpool2d_B9_merge_out_c0_exe53352),
        .out_c0_exe93394(maxpool2d_B9_merge_out_c0_exe93394),
        .out_c1_exe120(maxpool2d_B9_merge_out_c1_exe120),
        .out_stall_out_0(maxpool2d_B9_merge_out_stall_out_0),
        .out_valid_out(maxpool2d_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B9_stall_region(BLACKBOX,2)
    maxpool2d_bb_B9_stall_region thebb_maxpool2d_B9_stall_region (
        .in_c0_exe103408(maxpool2d_B9_merge_out_c0_exe103408),
        .in_c0_exe1134110(maxpool2d_B9_merge_out_c0_exe1134110),
        .in_c0_exe1234213(maxpool2d_B9_merge_out_c0_exe1234213),
        .in_c0_exe1334315(maxpool2d_B9_merge_out_c0_exe1334315),
        .in_c0_exe1434417(maxpool2d_B9_merge_out_c0_exe1434417),
        .in_c0_exe1534518(maxpool2d_B9_merge_out_c0_exe1534518),
        .in_c0_exe53352(maxpool2d_B9_merge_out_c0_exe53352),
        .in_c0_exe93394(maxpool2d_B9_merge_out_c0_exe93394),
        .in_c1_exe120(maxpool2d_B9_merge_out_c1_exe120),
        .in_stall_in(maxpool2d_B9_branch_out_stall_out),
        .in_valid_in(maxpool2d_B9_merge_out_valid_out),
        .out_c0_exe103408(bb_maxpool2d_B9_stall_region_out_c0_exe103408),
        .out_c0_exe1134110(bb_maxpool2d_B9_stall_region_out_c0_exe1134110),
        .out_c0_exe1234213(bb_maxpool2d_B9_stall_region_out_c0_exe1234213),
        .out_c0_exe1334315(bb_maxpool2d_B9_stall_region_out_c0_exe1334315),
        .out_c0_exe1434417(bb_maxpool2d_B9_stall_region_out_c0_exe1434417),
        .out_c0_exe1534518(bb_maxpool2d_B9_stall_region_out_c0_exe1534518),
        .out_c0_exe53352(bb_maxpool2d_B9_stall_region_out_c0_exe53352),
        .out_c0_exe93394(bb_maxpool2d_B9_stall_region_out_c0_exe93394),
        .out_c1_exe120(bb_maxpool2d_B9_stall_region_out_c1_exe120),
        .out_stall_out(bb_maxpool2d_B9_stall_region_out_stall_out),
        .out_valid_out(bb_maxpool2d_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // maxpool2d_B9_branch(BLACKBOX,17)
    maxpool2d_B9_branch themaxpool2d_B9_branch (
        .in_c0_exe103408(bb_maxpool2d_B9_stall_region_out_c0_exe103408),
        .in_c0_exe1134110(bb_maxpool2d_B9_stall_region_out_c0_exe1134110),
        .in_c0_exe1234213(bb_maxpool2d_B9_stall_region_out_c0_exe1234213),
        .in_c0_exe1334315(bb_maxpool2d_B9_stall_region_out_c0_exe1334315),
        .in_c0_exe1434417(bb_maxpool2d_B9_stall_region_out_c0_exe1434417),
        .in_c0_exe1534518(bb_maxpool2d_B9_stall_region_out_c0_exe1534518),
        .in_c0_exe53352(bb_maxpool2d_B9_stall_region_out_c0_exe53352),
        .in_c0_exe93394(bb_maxpool2d_B9_stall_region_out_c0_exe93394),
        .in_c1_exe120(bb_maxpool2d_B9_stall_region_out_c1_exe120),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_maxpool2d_B9_stall_region_out_valid_out),
        .out_c0_exe103408(maxpool2d_B9_branch_out_c0_exe103408),
        .out_c0_exe1134110(maxpool2d_B9_branch_out_c0_exe1134110),
        .out_c0_exe1234213(maxpool2d_B9_branch_out_c0_exe1234213),
        .out_c0_exe1334315(maxpool2d_B9_branch_out_c0_exe1334315),
        .out_c0_exe1434417(maxpool2d_B9_branch_out_c0_exe1434417),
        .out_c0_exe53352(maxpool2d_B9_branch_out_c0_exe53352),
        .out_c0_exe93394(maxpool2d_B9_branch_out_c0_exe93394),
        .out_c1_exe120(maxpool2d_B9_branch_out_c1_exe120),
        .out_stall_out(maxpool2d_B9_branch_out_stall_out),
        .out_valid_out_0(maxpool2d_B9_branch_out_valid_out_0),
        .out_valid_out_1(maxpool2d_B9_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe103408(GPOUT,19)
    assign out_c0_exe103408 = maxpool2d_B9_branch_out_c0_exe103408;

    // out_c0_exe1134110(GPOUT,20)
    assign out_c0_exe1134110 = maxpool2d_B9_branch_out_c0_exe1134110;

    // out_c0_exe1234213(GPOUT,21)
    assign out_c0_exe1234213 = maxpool2d_B9_branch_out_c0_exe1234213;

    // out_c0_exe1334315(GPOUT,22)
    assign out_c0_exe1334315 = maxpool2d_B9_branch_out_c0_exe1334315;

    // out_c0_exe1434417(GPOUT,23)
    assign out_c0_exe1434417 = maxpool2d_B9_branch_out_c0_exe1434417;

    // out_c0_exe53352(GPOUT,24)
    assign out_c0_exe53352 = maxpool2d_B9_branch_out_c0_exe53352;

    // out_c0_exe93394(GPOUT,25)
    assign out_c0_exe93394 = maxpool2d_B9_branch_out_c0_exe93394;

    // out_c1_exe120(GPOUT,26)
    assign out_c1_exe120 = maxpool2d_B9_branch_out_c1_exe120;

    // out_stall_in_0(GPOUT,27)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,28)
    assign out_stall_out_0 = maxpool2d_B9_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,29)
    assign out_valid_out_0 = maxpool2d_B9_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,30)
    assign out_valid_out_1 = maxpool2d_B9_branch_out_valid_out_1;

endmodule
