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

// SystemVerilog created from double_add_2_bb_B5
// SystemVerilog created on Tue May 23 14:04:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_2_bb_B5 (
    output wire [0:0] out_feedback_out_17,
    input wire [0:0] in_feedback_stall_in_17,
    output wire [0:0] out_feedback_valid_out_17,
    input wire [63:0] in_arr,
    input wire [0:0] in_c0_exe2721_0,
    input wire [0:0] in_c0_exe5752_0,
    input wire [0:0] in_c0_exe63_0,
    input wire [63:0] in_result,
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

    wire [0:0] bb_double_add_2_B5_stall_region_out_c0_exe63;
    wire [0:0] bb_double_add_2_B5_stall_region_out_feedback_out_17;
    wire [0:0] bb_double_add_2_B5_stall_region_out_feedback_valid_out_17;
    wire [0:0] bb_double_add_2_B5_stall_region_out_stall_out;
    wire [0:0] bb_double_add_2_B5_stall_region_out_valid_out;
    wire [0:0] double_add_2_B5_branch_out_stall_out;
    wire [0:0] double_add_2_B5_branch_out_valid_out_0;
    wire [0:0] double_add_2_B5_branch_out_valid_out_1;
    wire [0:0] double_add_2_B5_merge_out_c0_exe2721;
    wire [0:0] double_add_2_B5_merge_out_c0_exe5752;
    wire [0:0] double_add_2_B5_merge_out_c0_exe63;
    wire [0:0] double_add_2_B5_merge_out_stall_out_0;
    wire [0:0] double_add_2_B5_merge_out_valid_out;


    // double_add_2_B5_branch(BLACKBOX,3)
    double_add_2_B5_branch thedouble_add_2_B5_branch (
        .in_c0_exe63(bb_double_add_2_B5_stall_region_out_c0_exe63),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_double_add_2_B5_stall_region_out_valid_out),
        .out_stall_out(double_add_2_B5_branch_out_stall_out),
        .out_valid_out_0(double_add_2_B5_branch_out_valid_out_0),
        .out_valid_out_1(double_add_2_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // double_add_2_B5_merge(BLACKBOX,4)
    double_add_2_B5_merge thedouble_add_2_B5_merge (
        .in_c0_exe2721_0(in_c0_exe2721_0),
        .in_c0_exe5752_0(in_c0_exe5752_0),
        .in_c0_exe63_0(in_c0_exe63_0),
        .in_stall_in(bb_double_add_2_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe2721(double_add_2_B5_merge_out_c0_exe2721),
        .out_c0_exe5752(double_add_2_B5_merge_out_c0_exe5752),
        .out_c0_exe63(double_add_2_B5_merge_out_c0_exe63),
        .out_stall_out_0(double_add_2_B5_merge_out_stall_out_0),
        .out_valid_out(double_add_2_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_double_add_2_B5_stall_region(BLACKBOX,2)
    double_add_2_bb_B5_stall_region thebb_double_add_2_B5_stall_region (
        .in_c0_exe2721(double_add_2_B5_merge_out_c0_exe2721),
        .in_c0_exe5752(double_add_2_B5_merge_out_c0_exe5752),
        .in_c0_exe63(double_add_2_B5_merge_out_c0_exe63),
        .in_feedback_stall_in_17(in_feedback_stall_in_17),
        .in_stall_in(double_add_2_B5_branch_out_stall_out),
        .in_valid_in(double_add_2_B5_merge_out_valid_out),
        .out_c0_exe63(bb_double_add_2_B5_stall_region_out_c0_exe63),
        .out_feedback_out_17(bb_double_add_2_B5_stall_region_out_feedback_out_17),
        .out_feedback_valid_out_17(bb_double_add_2_B5_stall_region_out_feedback_valid_out_17),
        .out_stall_out(bb_double_add_2_B5_stall_region_out_stall_out),
        .out_valid_out(bb_double_add_2_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_17_sync(GPOUT,5)
    assign out_feedback_out_17 = bb_double_add_2_B5_stall_region_out_feedback_out_17;

    // feedback_valid_out_17_sync(GPOUT,7)
    assign out_feedback_valid_out_17 = bb_double_add_2_B5_stall_region_out_feedback_valid_out_17;

    // out_stall_in_0(GPOUT,16)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,17)
    assign out_stall_out_0 = double_add_2_B5_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,18)
    assign out_valid_out_0 = double_add_2_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,19)
    assign out_valid_out_1 = double_add_2_B5_branch_out_valid_out_1;

endmodule
