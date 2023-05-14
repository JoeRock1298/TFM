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

// SystemVerilog created from mmul_bb_B1
// SystemVerilog created on Tue May  9 13:20:54 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_bb_B1 (
    input wire [63:0] in_A,
    input wire [63:0] in_B,
    input wire [63:0] in_C,
    input wire [31:0] in_N,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe1,
    output wire [0:0] out_c0_exe3,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_mmul_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_mmul2_exiting_stall_out;
    wire [0:0] bb_mmul_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_mmul2_exiting_valid_out;
    wire [31:0] bb_mmul_B1_stall_region_out_c0_exe1;
    wire [0:0] bb_mmul_B1_stall_region_out_c0_exe3;
    wire [0:0] bb_mmul_B1_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_mmul_B1_stall_region_out_stall_out;
    wire [0:0] bb_mmul_B1_stall_region_out_valid_out;
    wire [31:0] mmul_B1_branch_out_c0_exe1;
    wire [0:0] mmul_B1_branch_out_c0_exe3;
    wire [0:0] mmul_B1_branch_out_stall_out;
    wire [0:0] mmul_B1_branch_out_valid_out_0;
    wire [0:0] mmul_B1_merge_out_forked;
    wire [0:0] mmul_B1_merge_out_stall_out_0;
    wire [0:0] mmul_B1_merge_out_stall_out_1;
    wire [0:0] mmul_B1_merge_out_valid_out;


    // mmul_B1_merge(BLACKBOX,15)
    mmul_B1_merge themmul_B1_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_stall_in(bb_mmul_B1_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(mmul_B1_merge_out_forked),
        .out_stall_out_0(mmul_B1_merge_out_stall_out_0),
        .out_stall_out_1(mmul_B1_merge_out_stall_out_1),
        .out_valid_out(mmul_B1_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B1_stall_region(BLACKBOX,2)
    mmul_bb_B1_stall_region thebb_mmul_B1_stall_region (
        .in_N(in_N),
        .in_forked(mmul_B1_merge_out_forked),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(mmul_B1_branch_out_stall_out),
        .in_valid_in(mmul_B1_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_mmul2_exiting_stall_out(bb_mmul_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_mmul2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_mmul2_exiting_valid_out(bb_mmul_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_mmul2_exiting_valid_out),
        .out_c0_exe1(bb_mmul_B1_stall_region_out_c0_exe1),
        .out_c0_exe3(bb_mmul_B1_stall_region_out_c0_exe3),
        .out_pipeline_valid_out(bb_mmul_B1_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_mmul_B1_stall_region_out_stall_out),
        .out_valid_out(bb_mmul_B1_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // mmul_B1_branch(BLACKBOX,14)
    mmul_B1_branch themmul_B1_branch (
        .in_c0_exe1(bb_mmul_B1_stall_region_out_c0_exe1),
        .in_c0_exe3(bb_mmul_B1_stall_region_out_c0_exe3),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_mmul_B1_stall_region_out_valid_out),
        .out_c0_exe1(mmul_B1_branch_out_c0_exe1),
        .out_c0_exe3(mmul_B1_branch_out_c0_exe3),
        .out_stall_out(mmul_B1_branch_out_stall_out),
        .out_valid_out_0(mmul_B1_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1(GPOUT,16)
    assign out_c0_exe1 = mmul_B1_branch_out_c0_exe1;

    // out_c0_exe3(GPOUT,17)
    assign out_c0_exe3 = mmul_B1_branch_out_c0_exe3;

    // out_exiting_stall_out(GPOUT,18)
    assign out_exiting_stall_out = bb_mmul_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_mmul2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,19)
    assign out_exiting_valid_out = bb_mmul_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_mmul2_exiting_valid_out;

    // out_stall_out_0(GPOUT,20)
    assign out_stall_out_0 = mmul_B1_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,21)
    assign out_stall_out_1 = mmul_B1_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,22)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,23)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,24)
    assign out_valid_out_0 = mmul_B1_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,26)
    assign out_pipeline_valid_out = bb_mmul_B1_stall_region_out_pipeline_valid_out;

endmodule
