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

// SystemVerilog created from maxpool2d_bb_B1
// SystemVerilog created on Sat Jun  3 12:58:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_bb_B1 (
    input wire [63:0] in_c0_exe12_0,
    input wire [63:0] in_c0_exe12_1,
    input wire [63:0] in_c0_exe26_0,
    input wire [63:0] in_c0_exe26_1,
    input wire [0:0] in_c0_exe38_0,
    input wire [0:0] in_c0_exe38_1,
    input wire [0:0] in_c0_exe411_0,
    input wire [0:0] in_c0_exe411_1,
    input wire [31:0] in_i_038_0,
    input wire [31:0] in_i_038_1,
    input wire [31:0] in_input_size,
    input wire [31:0] in_j_036_0,
    input wire [31:0] in_j_036_1,
    input wire [31:0] in_output_size,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_c0_exe12,
    output wire [31:0] out_c0_exe128,
    output wire [63:0] out_c0_exe26,
    output wire [0:0] out_c0_exe38,
    output wire [0:0] out_c0_exe411,
    output wire [31:0] out_i_038,
    output wire [31:0] out_j_036,
    output wire [31:0] out_mul22,
    output wire [31:0] out_mul24,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [63:0] bb_maxpool2d_B1_stall_region_out_c0_exe12;
    wire [31:0] bb_maxpool2d_B1_stall_region_out_c0_exe128;
    wire [63:0] bb_maxpool2d_B1_stall_region_out_c0_exe26;
    wire [0:0] bb_maxpool2d_B1_stall_region_out_c0_exe38;
    wire [0:0] bb_maxpool2d_B1_stall_region_out_c0_exe411;
    wire [31:0] bb_maxpool2d_B1_stall_region_out_i_038;
    wire [31:0] bb_maxpool2d_B1_stall_region_out_j_036;
    wire [31:0] bb_maxpool2d_B1_stall_region_out_mul22;
    wire [31:0] bb_maxpool2d_B1_stall_region_out_mul24;
    wire [0:0] bb_maxpool2d_B1_stall_region_out_stall_out;
    wire [0:0] bb_maxpool2d_B1_stall_region_out_valid_out;
    wire [63:0] maxpool2d_B1_branch_out_c0_exe12;
    wire [31:0] maxpool2d_B1_branch_out_c0_exe128;
    wire [63:0] maxpool2d_B1_branch_out_c0_exe26;
    wire [0:0] maxpool2d_B1_branch_out_c0_exe38;
    wire [0:0] maxpool2d_B1_branch_out_c0_exe411;
    wire [31:0] maxpool2d_B1_branch_out_i_038;
    wire [31:0] maxpool2d_B1_branch_out_j_036;
    wire [31:0] maxpool2d_B1_branch_out_mul22;
    wire [31:0] maxpool2d_B1_branch_out_mul24;
    wire [0:0] maxpool2d_B1_branch_out_stall_out;
    wire [0:0] maxpool2d_B1_branch_out_valid_out_0;
    wire [63:0] maxpool2d_B1_merge_out_c0_exe12;
    wire [63:0] maxpool2d_B1_merge_out_c0_exe26;
    wire [0:0] maxpool2d_B1_merge_out_c0_exe38;
    wire [0:0] maxpool2d_B1_merge_out_c0_exe411;
    wire [31:0] maxpool2d_B1_merge_out_i_038;
    wire [31:0] maxpool2d_B1_merge_out_j_036;
    wire [0:0] maxpool2d_B1_merge_out_stall_out_0;
    wire [0:0] maxpool2d_B1_merge_out_stall_out_1;
    wire [0:0] maxpool2d_B1_merge_out_valid_out;


    // maxpool2d_B1_merge(BLACKBOX,21)
    maxpool2d_B1_merge themaxpool2d_B1_merge (
        .in_c0_exe12_0(in_c0_exe12_0),
        .in_c0_exe12_1(in_c0_exe12_1),
        .in_c0_exe26_0(in_c0_exe26_0),
        .in_c0_exe26_1(in_c0_exe26_1),
        .in_c0_exe38_0(in_c0_exe38_0),
        .in_c0_exe38_1(in_c0_exe38_1),
        .in_c0_exe411_0(in_c0_exe411_0),
        .in_c0_exe411_1(in_c0_exe411_1),
        .in_i_038_0(in_i_038_0),
        .in_i_038_1(in_i_038_1),
        .in_j_036_0(in_j_036_0),
        .in_j_036_1(in_j_036_1),
        .in_stall_in(bb_maxpool2d_B1_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_c0_exe12(maxpool2d_B1_merge_out_c0_exe12),
        .out_c0_exe26(maxpool2d_B1_merge_out_c0_exe26),
        .out_c0_exe38(maxpool2d_B1_merge_out_c0_exe38),
        .out_c0_exe411(maxpool2d_B1_merge_out_c0_exe411),
        .out_i_038(maxpool2d_B1_merge_out_i_038),
        .out_j_036(maxpool2d_B1_merge_out_j_036),
        .out_stall_out_0(maxpool2d_B1_merge_out_stall_out_0),
        .out_stall_out_1(maxpool2d_B1_merge_out_stall_out_1),
        .out_valid_out(maxpool2d_B1_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B1_stall_region(BLACKBOX,2)
    maxpool2d_bb_B1_stall_region thebb_maxpool2d_B1_stall_region (
        .in_c0_exe12(maxpool2d_B1_merge_out_c0_exe12),
        .in_c0_exe26(maxpool2d_B1_merge_out_c0_exe26),
        .in_c0_exe38(maxpool2d_B1_merge_out_c0_exe38),
        .in_c0_exe411(maxpool2d_B1_merge_out_c0_exe411),
        .in_i_038(maxpool2d_B1_merge_out_i_038),
        .in_j_036(maxpool2d_B1_merge_out_j_036),
        .in_output_size(in_output_size),
        .in_stall_in(maxpool2d_B1_branch_out_stall_out),
        .in_valid_in(maxpool2d_B1_merge_out_valid_out),
        .out_c0_exe12(bb_maxpool2d_B1_stall_region_out_c0_exe12),
        .out_c0_exe128(bb_maxpool2d_B1_stall_region_out_c0_exe128),
        .out_c0_exe26(bb_maxpool2d_B1_stall_region_out_c0_exe26),
        .out_c0_exe38(bb_maxpool2d_B1_stall_region_out_c0_exe38),
        .out_c0_exe411(bb_maxpool2d_B1_stall_region_out_c0_exe411),
        .out_i_038(bb_maxpool2d_B1_stall_region_out_i_038),
        .out_j_036(bb_maxpool2d_B1_stall_region_out_j_036),
        .out_mul22(bb_maxpool2d_B1_stall_region_out_mul22),
        .out_mul24(bb_maxpool2d_B1_stall_region_out_mul24),
        .out_stall_out(bb_maxpool2d_B1_stall_region_out_stall_out),
        .out_valid_out(bb_maxpool2d_B1_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // maxpool2d_B1_branch(BLACKBOX,20)
    maxpool2d_B1_branch themaxpool2d_B1_branch (
        .in_c0_exe12(bb_maxpool2d_B1_stall_region_out_c0_exe12),
        .in_c0_exe128(bb_maxpool2d_B1_stall_region_out_c0_exe128),
        .in_c0_exe26(bb_maxpool2d_B1_stall_region_out_c0_exe26),
        .in_c0_exe38(bb_maxpool2d_B1_stall_region_out_c0_exe38),
        .in_c0_exe411(bb_maxpool2d_B1_stall_region_out_c0_exe411),
        .in_i_038(bb_maxpool2d_B1_stall_region_out_i_038),
        .in_j_036(bb_maxpool2d_B1_stall_region_out_j_036),
        .in_mul22(bb_maxpool2d_B1_stall_region_out_mul22),
        .in_mul24(bb_maxpool2d_B1_stall_region_out_mul24),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_maxpool2d_B1_stall_region_out_valid_out),
        .out_c0_exe12(maxpool2d_B1_branch_out_c0_exe12),
        .out_c0_exe128(maxpool2d_B1_branch_out_c0_exe128),
        .out_c0_exe26(maxpool2d_B1_branch_out_c0_exe26),
        .out_c0_exe38(maxpool2d_B1_branch_out_c0_exe38),
        .out_c0_exe411(maxpool2d_B1_branch_out_c0_exe411),
        .out_i_038(maxpool2d_B1_branch_out_i_038),
        .out_j_036(maxpool2d_B1_branch_out_j_036),
        .out_mul22(maxpool2d_B1_branch_out_mul22),
        .out_mul24(maxpool2d_B1_branch_out_mul24),
        .out_stall_out(maxpool2d_B1_branch_out_stall_out),
        .out_valid_out_0(maxpool2d_B1_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe12(GPOUT,22)
    assign out_c0_exe12 = maxpool2d_B1_branch_out_c0_exe12;

    // out_c0_exe128(GPOUT,23)
    assign out_c0_exe128 = maxpool2d_B1_branch_out_c0_exe128;

    // out_c0_exe26(GPOUT,24)
    assign out_c0_exe26 = maxpool2d_B1_branch_out_c0_exe26;

    // out_c0_exe38(GPOUT,25)
    assign out_c0_exe38 = maxpool2d_B1_branch_out_c0_exe38;

    // out_c0_exe411(GPOUT,26)
    assign out_c0_exe411 = maxpool2d_B1_branch_out_c0_exe411;

    // out_i_038(GPOUT,27)
    assign out_i_038 = maxpool2d_B1_branch_out_i_038;

    // out_j_036(GPOUT,28)
    assign out_j_036 = maxpool2d_B1_branch_out_j_036;

    // out_mul22(GPOUT,29)
    assign out_mul22 = maxpool2d_B1_branch_out_mul22;

    // out_mul24(GPOUT,30)
    assign out_mul24 = maxpool2d_B1_branch_out_mul24;

    // out_stall_out_0(GPOUT,31)
    assign out_stall_out_0 = maxpool2d_B1_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,32)
    assign out_stall_out_1 = maxpool2d_B1_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,33)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,34)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,35)
    assign out_valid_out_0 = maxpool2d_B1_branch_out_valid_out_0;

endmodule
