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

// SystemVerilog created from double_add_2_bb_B4
// SystemVerilog created on Tue May 23 13:58:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_2_bb_B4 (
    input wire [63:0] in_arr,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_10_0,
    input wire [63:0] in_intel_reserved_ffwd_11_0,
    input wire [63:0] in_intel_reserved_ffwd_12_0,
    input wire [63:0] in_intel_reserved_ffwd_13_0,
    input wire [32:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_intel_reserved_ffwd_5_0,
    input wire [63:0] in_intel_reserved_ffwd_6_0,
    input wire [63:0] in_intel_reserved_ffwd_7_0,
    input wire [63:0] in_intel_reserved_ffwd_8_0,
    input wire [63:0] in_intel_reserved_ffwd_9_0,
    input wire [511:0] in_lm_double_add_2_avm_readdata,
    input wire [0:0] in_lm_double_add_2_avm_readdatavalid,
    input wire [0:0] in_lm_double_add_2_avm_waitrequest,
    input wire [0:0] in_lm_double_add_2_avm_writeack,
    input wire [63:0] in_result,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_14_0,
    output wire [63:0] out_intel_reserved_ffwd_15_0,
    output wire [63:0] out_intel_reserved_ffwd_16_0,
    output wire [63:0] out_intel_reserved_ffwd_17_0,
    output wire [63:0] out_intel_reserved_ffwd_18_0,
    output wire [63:0] out_intel_reserved_ffwd_19_0,
    output wire [63:0] out_intel_reserved_ffwd_20_0,
    output wire [63:0] out_intel_reserved_ffwd_21_0,
    output wire [63:0] out_intel_reserved_ffwd_22_0,
    output wire [63:0] out_intel_reserved_ffwd_23_0,
    output wire [63:0] out_intel_reserved_ffwd_24_0,
    output wire [63:0] out_intel_reserved_ffwd_25_0,
    output wire [30:0] out_lm_double_add_2_avm_address,
    output wire [4:0] out_lm_double_add_2_avm_burstcount,
    output wire [63:0] out_lm_double_add_2_avm_byteenable,
    output wire [0:0] out_lm_double_add_2_avm_enable,
    output wire [0:0] out_lm_double_add_2_avm_read,
    output wire [0:0] out_lm_double_add_2_avm_write,
    output wire [511:0] out_lm_double_add_2_avm_writedata,
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

    wire [0:0] bb_double_add_2_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_stall_out;
    wire [0:0] bb_double_add_2_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_valid_out;
    wire [0:0] bb_double_add_2_B4_stall_region_out_c1_exe5;
    wire [63:0] bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_14_0;
    wire [63:0] bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_15_0;
    wire [63:0] bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_16_0;
    wire [63:0] bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_17_0;
    wire [63:0] bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_18_0;
    wire [63:0] bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_19_0;
    wire [63:0] bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_20_0;
    wire [63:0] bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_21_0;
    wire [63:0] bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_22_0;
    wire [63:0] bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_23_0;
    wire [63:0] bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_24_0;
    wire [63:0] bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_25_0;
    wire [30:0] bb_double_add_2_B4_stall_region_out_lm_double_add_2_avm_address;
    wire [4:0] bb_double_add_2_B4_stall_region_out_lm_double_add_2_avm_burstcount;
    wire [63:0] bb_double_add_2_B4_stall_region_out_lm_double_add_2_avm_byteenable;
    wire [0:0] bb_double_add_2_B4_stall_region_out_lm_double_add_2_avm_enable;
    wire [0:0] bb_double_add_2_B4_stall_region_out_lm_double_add_2_avm_read;
    wire [0:0] bb_double_add_2_B4_stall_region_out_lm_double_add_2_avm_write;
    wire [511:0] bb_double_add_2_B4_stall_region_out_lm_double_add_2_avm_writedata;
    wire [0:0] bb_double_add_2_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_double_add_2_B4_stall_region_out_stall_out;
    wire [0:0] bb_double_add_2_B4_stall_region_out_valid_out;
    wire [0:0] double_add_2_B4_branch_out_stall_out;
    wire [0:0] double_add_2_B4_branch_out_valid_out_0;
    wire [0:0] double_add_2_B4_branch_out_valid_out_1;
    wire [0:0] double_add_2_B4_merge_out_forked;
    wire [0:0] double_add_2_B4_merge_out_stall_out_0;
    wire [0:0] double_add_2_B4_merge_out_stall_out_1;
    wire [0:0] double_add_2_B4_merge_out_valid_out;


    // double_add_2_B4_branch(BLACKBOX,3)
    double_add_2_B4_branch thedouble_add_2_B4_branch (
        .in_c1_exe5(bb_double_add_2_B4_stall_region_out_c1_exe5),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_double_add_2_B4_stall_region_out_valid_out),
        .out_stall_out(double_add_2_B4_branch_out_stall_out),
        .out_valid_out_0(double_add_2_B4_branch_out_valid_out_0),
        .out_valid_out_1(double_add_2_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // double_add_2_B4_merge(BLACKBOX,4)
    double_add_2_B4_merge thedouble_add_2_B4_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_stall_in(bb_double_add_2_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(double_add_2_B4_merge_out_forked),
        .out_stall_out_0(double_add_2_B4_merge_out_stall_out_0),
        .out_stall_out_1(double_add_2_B4_merge_out_stall_out_1),
        .out_valid_out(double_add_2_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_double_add_2_B4_stall_region(BLACKBOX,2)
    double_add_2_bb_B4_stall_region thebb_double_add_2_B4_stall_region (
        .in_arr(in_arr),
        .in_flush(in_flush),
        .in_forked(double_add_2_B4_merge_out_forked),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_lm_double_add_2_avm_readdata(in_lm_double_add_2_avm_readdata),
        .in_lm_double_add_2_avm_readdatavalid(in_lm_double_add_2_avm_readdatavalid),
        .in_lm_double_add_2_avm_waitrequest(in_lm_double_add_2_avm_waitrequest),
        .in_lm_double_add_2_avm_writeack(in_lm_double_add_2_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(double_add_2_B4_branch_out_stall_out),
        .in_valid_in(double_add_2_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_stall_out(bb_double_add_2_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_valid_out(bb_double_add_2_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_valid_out),
        .out_c1_exe5(bb_double_add_2_B4_stall_region_out_c1_exe5),
        .out_intel_reserved_ffwd_14_0(bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_20_0(bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_22_0(bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_24_0),
        .out_intel_reserved_ffwd_25_0(bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_25_0),
        .out_lm_double_add_2_avm_address(bb_double_add_2_B4_stall_region_out_lm_double_add_2_avm_address),
        .out_lm_double_add_2_avm_burstcount(bb_double_add_2_B4_stall_region_out_lm_double_add_2_avm_burstcount),
        .out_lm_double_add_2_avm_byteenable(bb_double_add_2_B4_stall_region_out_lm_double_add_2_avm_byteenable),
        .out_lm_double_add_2_avm_enable(bb_double_add_2_B4_stall_region_out_lm_double_add_2_avm_enable),
        .out_lm_double_add_2_avm_read(bb_double_add_2_B4_stall_region_out_lm_double_add_2_avm_read),
        .out_lm_double_add_2_avm_write(bb_double_add_2_B4_stall_region_out_lm_double_add_2_avm_write),
        .out_lm_double_add_2_avm_writedata(bb_double_add_2_B4_stall_region_out_lm_double_add_2_avm_writedata),
        .out_pipeline_valid_out(bb_double_add_2_B4_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_double_add_2_B4_stall_region_out_stall_out),
        .out_valid_out(bb_double_add_2_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,32)
    assign out_exiting_stall_out = bb_double_add_2_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,33)
    assign out_exiting_valid_out = bb_double_add_2_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_valid_out;

    // out_intel_reserved_ffwd_14_0(GPOUT,34)
    assign out_intel_reserved_ffwd_14_0 = bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_14_0;

    // out_intel_reserved_ffwd_15_0(GPOUT,35)
    assign out_intel_reserved_ffwd_15_0 = bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_15_0;

    // out_intel_reserved_ffwd_16_0(GPOUT,36)
    assign out_intel_reserved_ffwd_16_0 = bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_16_0;

    // out_intel_reserved_ffwd_17_0(GPOUT,37)
    assign out_intel_reserved_ffwd_17_0 = bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_17_0;

    // out_intel_reserved_ffwd_18_0(GPOUT,38)
    assign out_intel_reserved_ffwd_18_0 = bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_18_0;

    // out_intel_reserved_ffwd_19_0(GPOUT,39)
    assign out_intel_reserved_ffwd_19_0 = bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_19_0;

    // out_intel_reserved_ffwd_20_0(GPOUT,40)
    assign out_intel_reserved_ffwd_20_0 = bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_20_0;

    // out_intel_reserved_ffwd_21_0(GPOUT,41)
    assign out_intel_reserved_ffwd_21_0 = bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_21_0;

    // out_intel_reserved_ffwd_22_0(GPOUT,42)
    assign out_intel_reserved_ffwd_22_0 = bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_22_0;

    // out_intel_reserved_ffwd_23_0(GPOUT,43)
    assign out_intel_reserved_ffwd_23_0 = bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_23_0;

    // out_intel_reserved_ffwd_24_0(GPOUT,44)
    assign out_intel_reserved_ffwd_24_0 = bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_24_0;

    // out_intel_reserved_ffwd_25_0(GPOUT,45)
    assign out_intel_reserved_ffwd_25_0 = bb_double_add_2_B4_stall_region_out_intel_reserved_ffwd_25_0;

    // out_lm_double_add_2_avm_address(GPOUT,46)
    assign out_lm_double_add_2_avm_address = bb_double_add_2_B4_stall_region_out_lm_double_add_2_avm_address;

    // out_lm_double_add_2_avm_burstcount(GPOUT,47)
    assign out_lm_double_add_2_avm_burstcount = bb_double_add_2_B4_stall_region_out_lm_double_add_2_avm_burstcount;

    // out_lm_double_add_2_avm_byteenable(GPOUT,48)
    assign out_lm_double_add_2_avm_byteenable = bb_double_add_2_B4_stall_region_out_lm_double_add_2_avm_byteenable;

    // out_lm_double_add_2_avm_enable(GPOUT,49)
    assign out_lm_double_add_2_avm_enable = bb_double_add_2_B4_stall_region_out_lm_double_add_2_avm_enable;

    // out_lm_double_add_2_avm_read(GPOUT,50)
    assign out_lm_double_add_2_avm_read = bb_double_add_2_B4_stall_region_out_lm_double_add_2_avm_read;

    // out_lm_double_add_2_avm_write(GPOUT,51)
    assign out_lm_double_add_2_avm_write = bb_double_add_2_B4_stall_region_out_lm_double_add_2_avm_write;

    // out_lm_double_add_2_avm_writedata(GPOUT,52)
    assign out_lm_double_add_2_avm_writedata = bb_double_add_2_B4_stall_region_out_lm_double_add_2_avm_writedata;

    // out_stall_in_0(GPOUT,53)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,54)
    assign out_stall_out_0 = double_add_2_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,55)
    assign out_stall_out_1 = double_add_2_B4_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,56)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,57)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,58)
    assign out_valid_out_0 = double_add_2_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,59)
    assign out_valid_out_1 = double_add_2_B4_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,61)
    assign out_pipeline_valid_out = bb_double_add_2_B4_stall_region_out_pipeline_valid_out;

endmodule
