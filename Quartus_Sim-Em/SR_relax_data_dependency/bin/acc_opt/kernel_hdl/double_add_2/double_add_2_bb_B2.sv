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

// SystemVerilog created from double_add_2_bb_B2
// SystemVerilog created on Tue May 23 13:58:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_2_bb_B2 (
    input wire [31:0] in_N,
    input wire [63:0] in_arr,
    input wire [0:0] in_forked75_0,
    input wire [0:0] in_forked75_1,
    input wire [63:0] in_result,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_10_0,
    output wire [63:0] out_intel_reserved_ffwd_11_0,
    output wire [63:0] out_intel_reserved_ffwd_12_0,
    output wire [63:0] out_intel_reserved_ffwd_13_0,
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    output wire [63:0] out_intel_reserved_ffwd_3_0,
    output wire [63:0] out_intel_reserved_ffwd_4_0,
    output wire [63:0] out_intel_reserved_ffwd_5_0,
    output wire [63:0] out_intel_reserved_ffwd_6_0,
    output wire [63:0] out_intel_reserved_ffwd_7_0,
    output wire [63:0] out_intel_reserved_ffwd_8_0,
    output wire [63:0] out_intel_reserved_ffwd_9_0,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_double_add_2_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_double_add_28_exiting_stall_out;
    wire [0:0] bb_double_add_2_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_double_add_28_exiting_valid_out;
    wire [0:0] bb_double_add_2_B2_stall_region_out_c0_exe2;
    wire [63:0] bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_10_0;
    wire [63:0] bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_11_0;
    wire [63:0] bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_12_0;
    wire [63:0] bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_13_0;
    wire [63:0] bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_2_0;
    wire [63:0] bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_3_0;
    wire [63:0] bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_4_0;
    wire [63:0] bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_5_0;
    wire [63:0] bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_6_0;
    wire [63:0] bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_7_0;
    wire [63:0] bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_8_0;
    wire [63:0] bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_double_add_2_B2_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_double_add_2_B2_stall_region_out_stall_out;
    wire [0:0] bb_double_add_2_B2_stall_region_out_valid_out;
    wire [0:0] double_add_2_B2_branch_out_stall_out;
    wire [0:0] double_add_2_B2_branch_out_valid_out_0;
    wire [0:0] double_add_2_B2_branch_out_valid_out_1;
    wire [0:0] double_add_2_B2_merge_out_forked75;
    wire [0:0] double_add_2_B2_merge_out_stall_out_0;
    wire [0:0] double_add_2_B2_merge_out_stall_out_1;
    wire [0:0] double_add_2_B2_merge_out_valid_out;


    // double_add_2_B2_branch(BLACKBOX,3)
    double_add_2_B2_branch thedouble_add_2_B2_branch (
        .in_c0_exe2(bb_double_add_2_B2_stall_region_out_c0_exe2),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_double_add_2_B2_stall_region_out_valid_out),
        .out_stall_out(double_add_2_B2_branch_out_stall_out),
        .out_valid_out_0(double_add_2_B2_branch_out_valid_out_0),
        .out_valid_out_1(double_add_2_B2_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // double_add_2_B2_merge(BLACKBOX,4)
    double_add_2_B2_merge thedouble_add_2_B2_merge (
        .in_forked75_0(in_forked75_0),
        .in_forked75_1(in_forked75_1),
        .in_stall_in(bb_double_add_2_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked75(double_add_2_B2_merge_out_forked75),
        .out_stall_out_0(double_add_2_B2_merge_out_stall_out_0),
        .out_stall_out_1(double_add_2_B2_merge_out_stall_out_1),
        .out_valid_out(double_add_2_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_double_add_2_B2_stall_region(BLACKBOX,2)
    double_add_2_bb_B2_stall_region thebb_double_add_2_B2_stall_region (
        .in_forked75(double_add_2_B2_merge_out_forked75),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(double_add_2_B2_branch_out_stall_out),
        .in_valid_in(double_add_2_B2_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_double_add_28_exiting_stall_out(bb_double_add_2_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_double_add_28_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_double_add_28_exiting_valid_out(bb_double_add_2_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_double_add_28_exiting_valid_out),
        .out_c0_exe2(bb_double_add_2_B2_stall_region_out_c0_exe2),
        .out_intel_reserved_ffwd_10_0(bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_11_0(bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_13_0(bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_2_0(bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_9_0),
        .out_pipeline_valid_out(bb_double_add_2_B2_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_double_add_2_B2_stall_region_out_stall_out),
        .out_valid_out(bb_double_add_2_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,14)
    assign out_exiting_stall_out = bb_double_add_2_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_double_add_28_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,15)
    assign out_exiting_valid_out = bb_double_add_2_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_double_add_28_exiting_valid_out;

    // out_intel_reserved_ffwd_10_0(GPOUT,16)
    assign out_intel_reserved_ffwd_10_0 = bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_10_0;

    // out_intel_reserved_ffwd_11_0(GPOUT,17)
    assign out_intel_reserved_ffwd_11_0 = bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_11_0;

    // out_intel_reserved_ffwd_12_0(GPOUT,18)
    assign out_intel_reserved_ffwd_12_0 = bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_12_0;

    // out_intel_reserved_ffwd_13_0(GPOUT,19)
    assign out_intel_reserved_ffwd_13_0 = bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_13_0;

    // out_intel_reserved_ffwd_2_0(GPOUT,20)
    assign out_intel_reserved_ffwd_2_0 = bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_2_0;

    // out_intel_reserved_ffwd_3_0(GPOUT,21)
    assign out_intel_reserved_ffwd_3_0 = bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_3_0;

    // out_intel_reserved_ffwd_4_0(GPOUT,22)
    assign out_intel_reserved_ffwd_4_0 = bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_4_0;

    // out_intel_reserved_ffwd_5_0(GPOUT,23)
    assign out_intel_reserved_ffwd_5_0 = bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_5_0;

    // out_intel_reserved_ffwd_6_0(GPOUT,24)
    assign out_intel_reserved_ffwd_6_0 = bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_6_0;

    // out_intel_reserved_ffwd_7_0(GPOUT,25)
    assign out_intel_reserved_ffwd_7_0 = bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_7_0;

    // out_intel_reserved_ffwd_8_0(GPOUT,26)
    assign out_intel_reserved_ffwd_8_0 = bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_8_0;

    // out_intel_reserved_ffwd_9_0(GPOUT,27)
    assign out_intel_reserved_ffwd_9_0 = bb_double_add_2_B2_stall_region_out_intel_reserved_ffwd_9_0;

    // out_stall_in_0(GPOUT,28)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,29)
    assign out_stall_out_0 = double_add_2_B2_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,30)
    assign out_stall_out_1 = double_add_2_B2_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,31)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,32)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,33)
    assign out_valid_out_0 = double_add_2_B2_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,34)
    assign out_valid_out_1 = double_add_2_B2_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,36)
    assign out_pipeline_valid_out = bb_double_add_2_B2_stall_region_out_pipeline_valid_out;

endmodule
