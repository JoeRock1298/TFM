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
// SystemVerilog created on Tue May 23 14:04:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_2_bb_B4 (
    input wire [0:0] in_feedback_in_17,
    output wire [0:0] out_feedback_stall_out_17,
    input wire [0:0] in_feedback_valid_in_17,
    input wire [63:0] in_arr,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_1_0,
    input wire [511:0] in_lm7_double_add_2_avm_readdata,
    input wire [0:0] in_lm7_double_add_2_avm_readdatavalid,
    input wire [0:0] in_lm7_double_add_2_avm_waitrequest,
    input wire [0:0] in_lm7_double_add_2_avm_writeack,
    input wire [63:0] in_memdep_3_double_add_2_avm_readdata,
    input wire [0:0] in_memdep_3_double_add_2_avm_readdatavalid,
    input wire [0:0] in_memdep_3_double_add_2_avm_waitrequest,
    input wire [0:0] in_memdep_3_double_add_2_avm_writeack,
    input wire [63:0] in_result,
    input wire [0:0] in_stall_in_0,
    input wire [63:0] in_unmaskedload1_double_add_2_avm_readdata,
    input wire [0:0] in_unmaskedload1_double_add_2_avm_readdatavalid,
    input wire [0:0] in_unmaskedload1_double_add_2_avm_waitrequest,
    input wire [0:0] in_unmaskedload1_double_add_2_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe160,
    output wire [0:0] out_c0_exe3,
    output wire [0:0] out_c0_exe4,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [30:0] out_lm7_double_add_2_avm_address,
    output wire [4:0] out_lm7_double_add_2_avm_burstcount,
    output wire [63:0] out_lm7_double_add_2_avm_byteenable,
    output wire [0:0] out_lm7_double_add_2_avm_enable,
    output wire [0:0] out_lm7_double_add_2_avm_read,
    output wire [0:0] out_lm7_double_add_2_avm_write,
    output wire [511:0] out_lm7_double_add_2_avm_writedata,
    output wire [31:0] out_memdep_3_double_add_2_avm_address,
    output wire [0:0] out_memdep_3_double_add_2_avm_burstcount,
    output wire [7:0] out_memdep_3_double_add_2_avm_byteenable,
    output wire [0:0] out_memdep_3_double_add_2_avm_enable,
    output wire [0:0] out_memdep_3_double_add_2_avm_read,
    output wire [0:0] out_memdep_3_double_add_2_avm_write,
    output wire [63:0] out_memdep_3_double_add_2_avm_writedata,
    output wire [0:0] out_memdep_phi5_pop17,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unmaskedload1_double_add_2_avm_address,
    output wire [0:0] out_unmaskedload1_double_add_2_avm_burstcount,
    output wire [7:0] out_unmaskedload1_double_add_2_avm_byteenable,
    output wire [0:0] out_unmaskedload1_double_add_2_avm_enable,
    output wire [0:0] out_unmaskedload1_double_add_2_avm_read,
    output wire [0:0] out_unmaskedload1_double_add_2_avm_write,
    output wire [63:0] out_unmaskedload1_double_add_2_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_double_add_2_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_double_add_22_exiting_stall_out;
    wire [0:0] bb_double_add_2_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_double_add_22_exiting_valid_out;
    wire [0:0] bb_double_add_2_B4_stall_region_out_c0_exe160;
    wire [0:0] bb_double_add_2_B4_stall_region_out_c0_exe3;
    wire [0:0] bb_double_add_2_B4_stall_region_out_c0_exe4;
    wire [0:0] bb_double_add_2_B4_stall_region_out_feedback_stall_out_17;
    wire [30:0] bb_double_add_2_B4_stall_region_out_lm7_double_add_2_avm_address;
    wire [4:0] bb_double_add_2_B4_stall_region_out_lm7_double_add_2_avm_burstcount;
    wire [63:0] bb_double_add_2_B4_stall_region_out_lm7_double_add_2_avm_byteenable;
    wire [0:0] bb_double_add_2_B4_stall_region_out_lm7_double_add_2_avm_enable;
    wire [0:0] bb_double_add_2_B4_stall_region_out_lm7_double_add_2_avm_read;
    wire [0:0] bb_double_add_2_B4_stall_region_out_lm7_double_add_2_avm_write;
    wire [511:0] bb_double_add_2_B4_stall_region_out_lm7_double_add_2_avm_writedata;
    wire [31:0] bb_double_add_2_B4_stall_region_out_memdep_3_double_add_2_avm_address;
    wire [0:0] bb_double_add_2_B4_stall_region_out_memdep_3_double_add_2_avm_burstcount;
    wire [7:0] bb_double_add_2_B4_stall_region_out_memdep_3_double_add_2_avm_byteenable;
    wire [0:0] bb_double_add_2_B4_stall_region_out_memdep_3_double_add_2_avm_enable;
    wire [0:0] bb_double_add_2_B4_stall_region_out_memdep_3_double_add_2_avm_read;
    wire [0:0] bb_double_add_2_B4_stall_region_out_memdep_3_double_add_2_avm_write;
    wire [63:0] bb_double_add_2_B4_stall_region_out_memdep_3_double_add_2_avm_writedata;
    wire [0:0] bb_double_add_2_B4_stall_region_out_memdep_phi5_pop17;
    wire [0:0] bb_double_add_2_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_double_add_2_B4_stall_region_out_stall_out;
    wire [31:0] bb_double_add_2_B4_stall_region_out_unmaskedload1_double_add_2_avm_address;
    wire [0:0] bb_double_add_2_B4_stall_region_out_unmaskedload1_double_add_2_avm_burstcount;
    wire [7:0] bb_double_add_2_B4_stall_region_out_unmaskedload1_double_add_2_avm_byteenable;
    wire [0:0] bb_double_add_2_B4_stall_region_out_unmaskedload1_double_add_2_avm_enable;
    wire [0:0] bb_double_add_2_B4_stall_region_out_unmaskedload1_double_add_2_avm_read;
    wire [0:0] bb_double_add_2_B4_stall_region_out_unmaskedload1_double_add_2_avm_write;
    wire [63:0] bb_double_add_2_B4_stall_region_out_unmaskedload1_double_add_2_avm_writedata;
    wire [0:0] bb_double_add_2_B4_stall_region_out_valid_out;
    wire [0:0] double_add_2_B4_branch_out_c0_exe160;
    wire [0:0] double_add_2_B4_branch_out_c0_exe3;
    wire [0:0] double_add_2_B4_branch_out_c0_exe4;
    wire [0:0] double_add_2_B4_branch_out_memdep_phi5_pop17;
    wire [0:0] double_add_2_B4_branch_out_stall_out;
    wire [0:0] double_add_2_B4_branch_out_valid_out_0;
    wire [0:0] double_add_2_B4_merge_out_forked;
    wire [0:0] double_add_2_B4_merge_out_stall_out_0;
    wire [0:0] double_add_2_B4_merge_out_stall_out_1;
    wire [0:0] double_add_2_B4_merge_out_valid_out;


    // double_add_2_B4_branch(BLACKBOX,3)
    double_add_2_B4_branch thedouble_add_2_B4_branch (
        .in_c0_exe160(bb_double_add_2_B4_stall_region_out_c0_exe160),
        .in_c0_exe3(bb_double_add_2_B4_stall_region_out_c0_exe3),
        .in_c0_exe4(bb_double_add_2_B4_stall_region_out_c0_exe4),
        .in_memdep_phi5_pop17(bb_double_add_2_B4_stall_region_out_memdep_phi5_pop17),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_double_add_2_B4_stall_region_out_valid_out),
        .out_c0_exe160(double_add_2_B4_branch_out_c0_exe160),
        .out_c0_exe3(double_add_2_B4_branch_out_c0_exe3),
        .out_c0_exe4(double_add_2_B4_branch_out_c0_exe4),
        .out_memdep_phi5_pop17(double_add_2_B4_branch_out_memdep_phi5_pop17),
        .out_stall_out(double_add_2_B4_branch_out_stall_out),
        .out_valid_out_0(double_add_2_B4_branch_out_valid_out_0),
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
        .in_feedback_in_17(in_feedback_in_17),
        .in_feedback_valid_in_17(in_feedback_valid_in_17),
        .in_flush(in_flush),
        .in_forked(double_add_2_B4_merge_out_forked),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_lm7_double_add_2_avm_readdata(in_lm7_double_add_2_avm_readdata),
        .in_lm7_double_add_2_avm_readdatavalid(in_lm7_double_add_2_avm_readdatavalid),
        .in_lm7_double_add_2_avm_waitrequest(in_lm7_double_add_2_avm_waitrequest),
        .in_lm7_double_add_2_avm_writeack(in_lm7_double_add_2_avm_writeack),
        .in_memdep_3_double_add_2_avm_readdata(in_memdep_3_double_add_2_avm_readdata),
        .in_memdep_3_double_add_2_avm_readdatavalid(in_memdep_3_double_add_2_avm_readdatavalid),
        .in_memdep_3_double_add_2_avm_waitrequest(in_memdep_3_double_add_2_avm_waitrequest),
        .in_memdep_3_double_add_2_avm_writeack(in_memdep_3_double_add_2_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(double_add_2_B4_branch_out_stall_out),
        .in_unmaskedload1_double_add_2_avm_readdata(in_unmaskedload1_double_add_2_avm_readdata),
        .in_unmaskedload1_double_add_2_avm_readdatavalid(in_unmaskedload1_double_add_2_avm_readdatavalid),
        .in_unmaskedload1_double_add_2_avm_waitrequest(in_unmaskedload1_double_add_2_avm_waitrequest),
        .in_unmaskedload1_double_add_2_avm_writeack(in_unmaskedload1_double_add_2_avm_writeack),
        .in_valid_in(double_add_2_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_double_add_22_exiting_stall_out(bb_double_add_2_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_double_add_22_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_double_add_22_exiting_valid_out(bb_double_add_2_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_double_add_22_exiting_valid_out),
        .out_c0_exe160(bb_double_add_2_B4_stall_region_out_c0_exe160),
        .out_c0_exe3(bb_double_add_2_B4_stall_region_out_c0_exe3),
        .out_c0_exe4(bb_double_add_2_B4_stall_region_out_c0_exe4),
        .out_feedback_stall_out_17(bb_double_add_2_B4_stall_region_out_feedback_stall_out_17),
        .out_lm7_double_add_2_avm_address(bb_double_add_2_B4_stall_region_out_lm7_double_add_2_avm_address),
        .out_lm7_double_add_2_avm_burstcount(bb_double_add_2_B4_stall_region_out_lm7_double_add_2_avm_burstcount),
        .out_lm7_double_add_2_avm_byteenable(bb_double_add_2_B4_stall_region_out_lm7_double_add_2_avm_byteenable),
        .out_lm7_double_add_2_avm_enable(bb_double_add_2_B4_stall_region_out_lm7_double_add_2_avm_enable),
        .out_lm7_double_add_2_avm_read(bb_double_add_2_B4_stall_region_out_lm7_double_add_2_avm_read),
        .out_lm7_double_add_2_avm_write(bb_double_add_2_B4_stall_region_out_lm7_double_add_2_avm_write),
        .out_lm7_double_add_2_avm_writedata(bb_double_add_2_B4_stall_region_out_lm7_double_add_2_avm_writedata),
        .out_memdep_3_double_add_2_avm_address(bb_double_add_2_B4_stall_region_out_memdep_3_double_add_2_avm_address),
        .out_memdep_3_double_add_2_avm_burstcount(bb_double_add_2_B4_stall_region_out_memdep_3_double_add_2_avm_burstcount),
        .out_memdep_3_double_add_2_avm_byteenable(bb_double_add_2_B4_stall_region_out_memdep_3_double_add_2_avm_byteenable),
        .out_memdep_3_double_add_2_avm_enable(bb_double_add_2_B4_stall_region_out_memdep_3_double_add_2_avm_enable),
        .out_memdep_3_double_add_2_avm_read(bb_double_add_2_B4_stall_region_out_memdep_3_double_add_2_avm_read),
        .out_memdep_3_double_add_2_avm_write(bb_double_add_2_B4_stall_region_out_memdep_3_double_add_2_avm_write),
        .out_memdep_3_double_add_2_avm_writedata(bb_double_add_2_B4_stall_region_out_memdep_3_double_add_2_avm_writedata),
        .out_memdep_phi5_pop17(bb_double_add_2_B4_stall_region_out_memdep_phi5_pop17),
        .out_pipeline_valid_out(bb_double_add_2_B4_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_double_add_2_B4_stall_region_out_stall_out),
        .out_unmaskedload1_double_add_2_avm_address(bb_double_add_2_B4_stall_region_out_unmaskedload1_double_add_2_avm_address),
        .out_unmaskedload1_double_add_2_avm_burstcount(bb_double_add_2_B4_stall_region_out_unmaskedload1_double_add_2_avm_burstcount),
        .out_unmaskedload1_double_add_2_avm_byteenable(bb_double_add_2_B4_stall_region_out_unmaskedload1_double_add_2_avm_byteenable),
        .out_unmaskedload1_double_add_2_avm_enable(bb_double_add_2_B4_stall_region_out_unmaskedload1_double_add_2_avm_enable),
        .out_unmaskedload1_double_add_2_avm_read(bb_double_add_2_B4_stall_region_out_unmaskedload1_double_add_2_avm_read),
        .out_unmaskedload1_double_add_2_avm_write(bb_double_add_2_B4_stall_region_out_unmaskedload1_double_add_2_avm_write),
        .out_unmaskedload1_double_add_2_avm_writedata(bb_double_add_2_B4_stall_region_out_unmaskedload1_double_add_2_avm_writedata),
        .out_valid_out(bb_double_add_2_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_17_sync(GPOUT,6)
    assign out_feedback_stall_out_17 = bb_double_add_2_B4_stall_region_out_feedback_stall_out_17;

    // out_c0_exe160(GPOUT,30)
    assign out_c0_exe160 = double_add_2_B4_branch_out_c0_exe160;

    // out_c0_exe3(GPOUT,31)
    assign out_c0_exe3 = double_add_2_B4_branch_out_c0_exe3;

    // out_c0_exe4(GPOUT,32)
    assign out_c0_exe4 = double_add_2_B4_branch_out_c0_exe4;

    // out_exiting_stall_out(GPOUT,33)
    assign out_exiting_stall_out = bb_double_add_2_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_double_add_22_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,34)
    assign out_exiting_valid_out = bb_double_add_2_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_double_add_22_exiting_valid_out;

    // out_lm7_double_add_2_avm_address(GPOUT,35)
    assign out_lm7_double_add_2_avm_address = bb_double_add_2_B4_stall_region_out_lm7_double_add_2_avm_address;

    // out_lm7_double_add_2_avm_burstcount(GPOUT,36)
    assign out_lm7_double_add_2_avm_burstcount = bb_double_add_2_B4_stall_region_out_lm7_double_add_2_avm_burstcount;

    // out_lm7_double_add_2_avm_byteenable(GPOUT,37)
    assign out_lm7_double_add_2_avm_byteenable = bb_double_add_2_B4_stall_region_out_lm7_double_add_2_avm_byteenable;

    // out_lm7_double_add_2_avm_enable(GPOUT,38)
    assign out_lm7_double_add_2_avm_enable = bb_double_add_2_B4_stall_region_out_lm7_double_add_2_avm_enable;

    // out_lm7_double_add_2_avm_read(GPOUT,39)
    assign out_lm7_double_add_2_avm_read = bb_double_add_2_B4_stall_region_out_lm7_double_add_2_avm_read;

    // out_lm7_double_add_2_avm_write(GPOUT,40)
    assign out_lm7_double_add_2_avm_write = bb_double_add_2_B4_stall_region_out_lm7_double_add_2_avm_write;

    // out_lm7_double_add_2_avm_writedata(GPOUT,41)
    assign out_lm7_double_add_2_avm_writedata = bb_double_add_2_B4_stall_region_out_lm7_double_add_2_avm_writedata;

    // out_memdep_3_double_add_2_avm_address(GPOUT,42)
    assign out_memdep_3_double_add_2_avm_address = bb_double_add_2_B4_stall_region_out_memdep_3_double_add_2_avm_address;

    // out_memdep_3_double_add_2_avm_burstcount(GPOUT,43)
    assign out_memdep_3_double_add_2_avm_burstcount = bb_double_add_2_B4_stall_region_out_memdep_3_double_add_2_avm_burstcount;

    // out_memdep_3_double_add_2_avm_byteenable(GPOUT,44)
    assign out_memdep_3_double_add_2_avm_byteenable = bb_double_add_2_B4_stall_region_out_memdep_3_double_add_2_avm_byteenable;

    // out_memdep_3_double_add_2_avm_enable(GPOUT,45)
    assign out_memdep_3_double_add_2_avm_enable = bb_double_add_2_B4_stall_region_out_memdep_3_double_add_2_avm_enable;

    // out_memdep_3_double_add_2_avm_read(GPOUT,46)
    assign out_memdep_3_double_add_2_avm_read = bb_double_add_2_B4_stall_region_out_memdep_3_double_add_2_avm_read;

    // out_memdep_3_double_add_2_avm_write(GPOUT,47)
    assign out_memdep_3_double_add_2_avm_write = bb_double_add_2_B4_stall_region_out_memdep_3_double_add_2_avm_write;

    // out_memdep_3_double_add_2_avm_writedata(GPOUT,48)
    assign out_memdep_3_double_add_2_avm_writedata = bb_double_add_2_B4_stall_region_out_memdep_3_double_add_2_avm_writedata;

    // out_memdep_phi5_pop17(GPOUT,49)
    assign out_memdep_phi5_pop17 = double_add_2_B4_branch_out_memdep_phi5_pop17;

    // out_stall_out_0(GPOUT,50)
    assign out_stall_out_0 = double_add_2_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,51)
    assign out_stall_out_1 = double_add_2_B4_merge_out_stall_out_1;

    // out_unmaskedload1_double_add_2_avm_address(GPOUT,52)
    assign out_unmaskedload1_double_add_2_avm_address = bb_double_add_2_B4_stall_region_out_unmaskedload1_double_add_2_avm_address;

    // out_unmaskedload1_double_add_2_avm_burstcount(GPOUT,53)
    assign out_unmaskedload1_double_add_2_avm_burstcount = bb_double_add_2_B4_stall_region_out_unmaskedload1_double_add_2_avm_burstcount;

    // out_unmaskedload1_double_add_2_avm_byteenable(GPOUT,54)
    assign out_unmaskedload1_double_add_2_avm_byteenable = bb_double_add_2_B4_stall_region_out_unmaskedload1_double_add_2_avm_byteenable;

    // out_unmaskedload1_double_add_2_avm_enable(GPOUT,55)
    assign out_unmaskedload1_double_add_2_avm_enable = bb_double_add_2_B4_stall_region_out_unmaskedload1_double_add_2_avm_enable;

    // out_unmaskedload1_double_add_2_avm_read(GPOUT,56)
    assign out_unmaskedload1_double_add_2_avm_read = bb_double_add_2_B4_stall_region_out_unmaskedload1_double_add_2_avm_read;

    // out_unmaskedload1_double_add_2_avm_write(GPOUT,57)
    assign out_unmaskedload1_double_add_2_avm_write = bb_double_add_2_B4_stall_region_out_unmaskedload1_double_add_2_avm_write;

    // out_unmaskedload1_double_add_2_avm_writedata(GPOUT,58)
    assign out_unmaskedload1_double_add_2_avm_writedata = bb_double_add_2_B4_stall_region_out_unmaskedload1_double_add_2_avm_writedata;

    // out_valid_in_0(GPOUT,59)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,60)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,61)
    assign out_valid_out_0 = double_add_2_B4_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,63)
    assign out_pipeline_valid_out = bb_double_add_2_B4_stall_region_out_pipeline_valid_out;

endmodule
