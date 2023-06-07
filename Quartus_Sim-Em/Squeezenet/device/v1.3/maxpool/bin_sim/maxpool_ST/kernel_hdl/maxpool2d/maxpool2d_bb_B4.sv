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

// SystemVerilog created from maxpool2d_bb_B4
// SystemVerilog created on Sat Jun  3 13:01:56 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_bb_B4 (
    input wire [0:0] in_c0_exe103405_0,
    input wire [31:0] in_input_size,
    input wire [31:0] in_output_size,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_maxpool2d_B4_stall_region_out_c0_exe103405;
    wire [0:0] bb_maxpool2d_B4_stall_region_out_stall_out;
    wire [0:0] bb_maxpool2d_B4_stall_region_out_valid_out;
    wire [0:0] maxpool2d_B4_branch_out_stall_out;
    wire [0:0] maxpool2d_B4_branch_out_valid_out_0;
    wire [0:0] maxpool2d_B4_branch_out_valid_out_1;
    wire [0:0] maxpool2d_B4_merge_out_c0_exe103405;
    wire [0:0] maxpool2d_B4_merge_out_stall_out_0;
    wire [0:0] maxpool2d_B4_merge_out_valid_out;


    // out_stall_in_0(GPOUT,11)
    assign out_stall_in_0 = in_stall_in_0;

    // maxpool2d_B4_branch(BLACKBOX,9)
    maxpool2d_B4_branch themaxpool2d_B4_branch (
        .in_c0_exe103405(bb_maxpool2d_B4_stall_region_out_c0_exe103405),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_maxpool2d_B4_stall_region_out_valid_out),
        .out_stall_out(maxpool2d_B4_branch_out_stall_out),
        .out_valid_out_0(maxpool2d_B4_branch_out_valid_out_0),
        .out_valid_out_1(maxpool2d_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B4_stall_region(BLACKBOX,2)
    maxpool2d_bb_B4_stall_region thebb_maxpool2d_B4_stall_region (
        .in_c0_exe103405(maxpool2d_B4_merge_out_c0_exe103405),
        .in_stall_in(maxpool2d_B4_branch_out_stall_out),
        .in_valid_in(maxpool2d_B4_merge_out_valid_out),
        .out_c0_exe103405(bb_maxpool2d_B4_stall_region_out_c0_exe103405),
        .out_stall_out(bb_maxpool2d_B4_stall_region_out_stall_out),
        .out_valid_out(bb_maxpool2d_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // maxpool2d_B4_merge(BLACKBOX,10)
    maxpool2d_B4_merge themaxpool2d_B4_merge (
        .in_c0_exe103405_0(in_c0_exe103405_0),
        .in_stall_in(bb_maxpool2d_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe103405(maxpool2d_B4_merge_out_c0_exe103405),
        .out_stall_out_0(maxpool2d_B4_merge_out_stall_out_0),
        .out_valid_out(maxpool2d_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out_0(GPOUT,12)
    assign out_stall_out_0 = maxpool2d_B4_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,13)
    assign out_valid_out_0 = maxpool2d_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,14)
    assign out_valid_out_1 = maxpool2d_B4_branch_out_valid_out_1;

endmodule
