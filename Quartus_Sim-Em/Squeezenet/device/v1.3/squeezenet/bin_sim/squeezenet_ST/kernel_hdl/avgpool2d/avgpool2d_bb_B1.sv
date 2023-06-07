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

// SystemVerilog created from avgpool2d_bb_B1
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpool2d_bb_B1 (
    input wire [0:0] in_forked6_0,
    input wire [0:0] in_forked6_1,
    input wire [63:0] in_input_im,
    input wire [63:0] in_output_im,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe2,
    output wire [31:0] out_c0_exe3,
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

    wire [0:0] avgpool2d_B1_branch_out_c0_exe2;
    wire [31:0] avgpool2d_B1_branch_out_c0_exe3;
    wire [0:0] avgpool2d_B1_branch_out_stall_out;
    wire [0:0] avgpool2d_B1_branch_out_valid_out_0;
    wire [0:0] avgpool2d_B1_merge_out_forked6;
    wire [0:0] avgpool2d_B1_merge_out_stall_out_0;
    wire [0:0] avgpool2d_B1_merge_out_stall_out_1;
    wire [0:0] avgpool2d_B1_merge_out_valid_out;
    wire [0:0] bb_avgpool2d_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going3_avgpool2d2_exiting_stall_out;
    wire [0:0] bb_avgpool2d_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going3_avgpool2d2_exiting_valid_out;
    wire [0:0] bb_avgpool2d_B1_stall_region_out_c0_exe2;
    wire [31:0] bb_avgpool2d_B1_stall_region_out_c0_exe3;
    wire [0:0] bb_avgpool2d_B1_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_avgpool2d_B1_stall_region_out_stall_out;
    wire [0:0] bb_avgpool2d_B1_stall_region_out_valid_out;


    // avgpool2d_B1_merge(BLACKBOX,3)
    avgpool2d_B1_merge theavgpool2d_B1_merge (
        .in_forked6_0(in_forked6_0),
        .in_forked6_1(in_forked6_1),
        .in_stall_in(bb_avgpool2d_B1_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked6(avgpool2d_B1_merge_out_forked6),
        .out_stall_out_0(avgpool2d_B1_merge_out_stall_out_0),
        .out_stall_out_1(avgpool2d_B1_merge_out_stall_out_1),
        .out_valid_out(avgpool2d_B1_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpool2d_B1_stall_region(BLACKBOX,4)
    avgpool2d_bb_B1_stall_region thebb_avgpool2d_B1_stall_region (
        .in_forked6(avgpool2d_B1_merge_out_forked6),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(avgpool2d_B1_branch_out_stall_out),
        .in_valid_in(avgpool2d_B1_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going3_avgpool2d2_exiting_stall_out(bb_avgpool2d_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going3_avgpool2d2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going3_avgpool2d2_exiting_valid_out(bb_avgpool2d_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going3_avgpool2d2_exiting_valid_out),
        .out_c0_exe2(bb_avgpool2d_B1_stall_region_out_c0_exe2),
        .out_c0_exe3(bb_avgpool2d_B1_stall_region_out_c0_exe3),
        .out_pipeline_valid_out(bb_avgpool2d_B1_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_avgpool2d_B1_stall_region_out_stall_out),
        .out_valid_out(bb_avgpool2d_B1_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // avgpool2d_B1_branch(BLACKBOX,2)
    avgpool2d_B1_branch theavgpool2d_B1_branch (
        .in_c0_exe2(bb_avgpool2d_B1_stall_region_out_c0_exe2),
        .in_c0_exe3(bb_avgpool2d_B1_stall_region_out_c0_exe3),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_avgpool2d_B1_stall_region_out_valid_out),
        .out_c0_exe2(avgpool2d_B1_branch_out_c0_exe2),
        .out_c0_exe3(avgpool2d_B1_branch_out_c0_exe3),
        .out_stall_out(avgpool2d_B1_branch_out_stall_out),
        .out_valid_out_0(avgpool2d_B1_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2(GPOUT,12)
    assign out_c0_exe2 = avgpool2d_B1_branch_out_c0_exe2;

    // out_c0_exe3(GPOUT,13)
    assign out_c0_exe3 = avgpool2d_B1_branch_out_c0_exe3;

    // out_exiting_stall_out(GPOUT,14)
    assign out_exiting_stall_out = bb_avgpool2d_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going3_avgpool2d2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,15)
    assign out_exiting_valid_out = bb_avgpool2d_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going3_avgpool2d2_exiting_valid_out;

    // out_stall_out_0(GPOUT,16)
    assign out_stall_out_0 = avgpool2d_B1_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,17)
    assign out_stall_out_1 = avgpool2d_B1_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,18)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,19)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,20)
    assign out_valid_out_0 = avgpool2d_B1_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,22)
    assign out_pipeline_valid_out = bb_avgpool2d_B1_stall_region_out_pipeline_valid_out;

endmodule
