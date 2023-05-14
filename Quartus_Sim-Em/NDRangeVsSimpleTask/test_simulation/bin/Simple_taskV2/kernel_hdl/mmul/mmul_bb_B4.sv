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

// SystemVerilog created from mmul_bb_B4
// SystemVerilog created on Tue May  9 13:46:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_bb_B4 (
    input wire [63:0] in_A,
    input wire [63:0] in_B,
    input wire [63:0] in_C,
    input wire [31:0] in_N,
    input wire [31:0] in_N_sync_buffer316_0,
    input wire [31:0] in_N_sync_buffer316_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_i_027_pop618_0,
    input wire [31:0] in_i_027_pop618_1,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_2_0,
    input wire [511:0] in_lm9_mmul_avm_readdata,
    input wire [0:0] in_lm9_mmul_avm_readdatavalid,
    input wire [0:0] in_lm9_mmul_avm_waitrequest,
    input wire [0:0] in_lm9_mmul_avm_writeack,
    input wire [511:0] in_lm_mmul_avm_readdata,
    input wire [0:0] in_lm_mmul_avm_readdatavalid,
    input wire [0:0] in_lm_mmul_avm_waitrequest,
    input wire [0:0] in_lm_mmul_avm_writeack,
    input wire [0:0] in_notcmp917_0,
    input wire [0:0] in_notcmp917_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe233,
    output wire [0:0] out_c0_exe8,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [30:0] out_lm9_mmul_avm_address,
    output wire [4:0] out_lm9_mmul_avm_burstcount,
    output wire [63:0] out_lm9_mmul_avm_byteenable,
    output wire [0:0] out_lm9_mmul_avm_enable,
    output wire [0:0] out_lm9_mmul_avm_read,
    output wire [0:0] out_lm9_mmul_avm_write,
    output wire [511:0] out_lm9_mmul_avm_writedata,
    output wire [30:0] out_lm_mmul_avm_address,
    output wire [4:0] out_lm_mmul_avm_burstcount,
    output wire [63:0] out_lm_mmul_avm_byteenable,
    output wire [0:0] out_lm_mmul_avm_enable,
    output wire [0:0] out_lm_mmul_avm_read,
    output wire [0:0] out_lm_mmul_avm_write,
    output wire [511:0] out_lm_mmul_avm_writedata,
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

    wire [0:0] bb_mmul_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out;
    wire [0:0] bb_mmul_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out;
    wire [31:0] bb_mmul_B4_stall_region_out_c0_exe233;
    wire [0:0] bb_mmul_B4_stall_region_out_c0_exe7;
    wire [0:0] bb_mmul_B4_stall_region_out_c0_exe8;
    wire [31:0] bb_mmul_B4_stall_region_out_c1_exe1;
    wire [30:0] bb_mmul_B4_stall_region_out_lm9_mmul_avm_address;
    wire [4:0] bb_mmul_B4_stall_region_out_lm9_mmul_avm_burstcount;
    wire [63:0] bb_mmul_B4_stall_region_out_lm9_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B4_stall_region_out_lm9_mmul_avm_enable;
    wire [0:0] bb_mmul_B4_stall_region_out_lm9_mmul_avm_read;
    wire [0:0] bb_mmul_B4_stall_region_out_lm9_mmul_avm_write;
    wire [511:0] bb_mmul_B4_stall_region_out_lm9_mmul_avm_writedata;
    wire [30:0] bb_mmul_B4_stall_region_out_lm_mmul_avm_address;
    wire [4:0] bb_mmul_B4_stall_region_out_lm_mmul_avm_burstcount;
    wire [63:0] bb_mmul_B4_stall_region_out_lm_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B4_stall_region_out_lm_mmul_avm_enable;
    wire [0:0] bb_mmul_B4_stall_region_out_lm_mmul_avm_read;
    wire [0:0] bb_mmul_B4_stall_region_out_lm_mmul_avm_write;
    wire [511:0] bb_mmul_B4_stall_region_out_lm_mmul_avm_writedata;
    wire [0:0] bb_mmul_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_mmul_B4_stall_region_out_stall_out;
    wire [0:0] bb_mmul_B4_stall_region_out_valid_out;
    wire [31:0] mmul_B4_branch_out_c0_exe233;
    wire [0:0] mmul_B4_branch_out_c0_exe8;
    wire [31:0] mmul_B4_branch_out_c1_exe1;
    wire [0:0] mmul_B4_branch_out_stall_out;
    wire [0:0] mmul_B4_branch_out_valid_out_0;
    wire [0:0] mmul_B4_branch_out_valid_out_1;
    wire [31:0] mmul_B4_merge_out_N_sync_buffer316;
    wire [0:0] mmul_B4_merge_out_forked;
    wire [31:0] mmul_B4_merge_out_i_027_pop618;
    wire [0:0] mmul_B4_merge_out_notcmp917;
    wire [0:0] mmul_B4_merge_out_stall_out_0;
    wire [0:0] mmul_B4_merge_out_stall_out_1;
    wire [0:0] mmul_B4_merge_out_valid_out;


    // mmul_B4_merge(BLACKBOX,31)
    mmul_B4_merge themmul_B4_merge (
        .in_N_sync_buffer316_0(in_N_sync_buffer316_0),
        .in_N_sync_buffer316_1(in_N_sync_buffer316_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_i_027_pop618_0(in_i_027_pop618_0),
        .in_i_027_pop618_1(in_i_027_pop618_1),
        .in_notcmp917_0(in_notcmp917_0),
        .in_notcmp917_1(in_notcmp917_1),
        .in_stall_in(bb_mmul_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_N_sync_buffer316(mmul_B4_merge_out_N_sync_buffer316),
        .out_forked(mmul_B4_merge_out_forked),
        .out_i_027_pop618(mmul_B4_merge_out_i_027_pop618),
        .out_notcmp917(mmul_B4_merge_out_notcmp917),
        .out_stall_out_0(mmul_B4_merge_out_stall_out_0),
        .out_stall_out_1(mmul_B4_merge_out_stall_out_1),
        .out_valid_out(mmul_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B4_stall_region(BLACKBOX,2)
    mmul_bb_B4_stall_region thebb_mmul_B4_stall_region (
        .in_A(in_A),
        .in_B(in_B),
        .in_N(in_N),
        .in_N_sync_buffer316(mmul_B4_merge_out_N_sync_buffer316),
        .in_flush(in_flush),
        .in_forked(mmul_B4_merge_out_forked),
        .in_i_027_pop618(mmul_B4_merge_out_i_027_pop618),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_lm9_mmul_avm_readdata(in_lm9_mmul_avm_readdata),
        .in_lm9_mmul_avm_readdatavalid(in_lm9_mmul_avm_readdatavalid),
        .in_lm9_mmul_avm_waitrequest(in_lm9_mmul_avm_waitrequest),
        .in_lm9_mmul_avm_writeack(in_lm9_mmul_avm_writeack),
        .in_lm_mmul_avm_readdata(in_lm_mmul_avm_readdata),
        .in_lm_mmul_avm_readdatavalid(in_lm_mmul_avm_readdatavalid),
        .in_lm_mmul_avm_waitrequest(in_lm_mmul_avm_waitrequest),
        .in_lm_mmul_avm_writeack(in_lm_mmul_avm_writeack),
        .in_notcmp917(mmul_B4_merge_out_notcmp917),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(mmul_B4_branch_out_stall_out),
        .in_valid_in(mmul_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out(bb_mmul_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out(bb_mmul_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out),
        .out_c0_exe233(bb_mmul_B4_stall_region_out_c0_exe233),
        .out_c0_exe7(bb_mmul_B4_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_mmul_B4_stall_region_out_c0_exe8),
        .out_c1_exe1(bb_mmul_B4_stall_region_out_c1_exe1),
        .out_lm9_mmul_avm_address(bb_mmul_B4_stall_region_out_lm9_mmul_avm_address),
        .out_lm9_mmul_avm_burstcount(bb_mmul_B4_stall_region_out_lm9_mmul_avm_burstcount),
        .out_lm9_mmul_avm_byteenable(bb_mmul_B4_stall_region_out_lm9_mmul_avm_byteenable),
        .out_lm9_mmul_avm_enable(bb_mmul_B4_stall_region_out_lm9_mmul_avm_enable),
        .out_lm9_mmul_avm_read(bb_mmul_B4_stall_region_out_lm9_mmul_avm_read),
        .out_lm9_mmul_avm_write(bb_mmul_B4_stall_region_out_lm9_mmul_avm_write),
        .out_lm9_mmul_avm_writedata(bb_mmul_B4_stall_region_out_lm9_mmul_avm_writedata),
        .out_lm_mmul_avm_address(bb_mmul_B4_stall_region_out_lm_mmul_avm_address),
        .out_lm_mmul_avm_burstcount(bb_mmul_B4_stall_region_out_lm_mmul_avm_burstcount),
        .out_lm_mmul_avm_byteenable(bb_mmul_B4_stall_region_out_lm_mmul_avm_byteenable),
        .out_lm_mmul_avm_enable(bb_mmul_B4_stall_region_out_lm_mmul_avm_enable),
        .out_lm_mmul_avm_read(bb_mmul_B4_stall_region_out_lm_mmul_avm_read),
        .out_lm_mmul_avm_write(bb_mmul_B4_stall_region_out_lm_mmul_avm_write),
        .out_lm_mmul_avm_writedata(bb_mmul_B4_stall_region_out_lm_mmul_avm_writedata),
        .out_pipeline_valid_out(bb_mmul_B4_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_mmul_B4_stall_region_out_stall_out),
        .out_valid_out(bb_mmul_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // mmul_B4_branch(BLACKBOX,30)
    mmul_B4_branch themmul_B4_branch (
        .in_c0_exe233(bb_mmul_B4_stall_region_out_c0_exe233),
        .in_c0_exe7(bb_mmul_B4_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_mmul_B4_stall_region_out_c0_exe8),
        .in_c1_exe1(bb_mmul_B4_stall_region_out_c1_exe1),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_mmul_B4_stall_region_out_valid_out),
        .out_c0_exe233(mmul_B4_branch_out_c0_exe233),
        .out_c0_exe8(mmul_B4_branch_out_c0_exe8),
        .out_c1_exe1(mmul_B4_branch_out_c1_exe1),
        .out_stall_out(mmul_B4_branch_out_stall_out),
        .out_valid_out_0(mmul_B4_branch_out_valid_out_0),
        .out_valid_out_1(mmul_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe233(GPOUT,32)
    assign out_c0_exe233 = mmul_B4_branch_out_c0_exe233;

    // out_c0_exe8(GPOUT,33)
    assign out_c0_exe8 = mmul_B4_branch_out_c0_exe8;

    // out_c1_exe1(GPOUT,34)
    assign out_c1_exe1 = mmul_B4_branch_out_c1_exe1;

    // out_exiting_stall_out(GPOUT,35)
    assign out_exiting_stall_out = bb_mmul_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,36)
    assign out_exiting_valid_out = bb_mmul_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out;

    // out_lm9_mmul_avm_address(GPOUT,37)
    assign out_lm9_mmul_avm_address = bb_mmul_B4_stall_region_out_lm9_mmul_avm_address;

    // out_lm9_mmul_avm_burstcount(GPOUT,38)
    assign out_lm9_mmul_avm_burstcount = bb_mmul_B4_stall_region_out_lm9_mmul_avm_burstcount;

    // out_lm9_mmul_avm_byteenable(GPOUT,39)
    assign out_lm9_mmul_avm_byteenable = bb_mmul_B4_stall_region_out_lm9_mmul_avm_byteenable;

    // out_lm9_mmul_avm_enable(GPOUT,40)
    assign out_lm9_mmul_avm_enable = bb_mmul_B4_stall_region_out_lm9_mmul_avm_enable;

    // out_lm9_mmul_avm_read(GPOUT,41)
    assign out_lm9_mmul_avm_read = bb_mmul_B4_stall_region_out_lm9_mmul_avm_read;

    // out_lm9_mmul_avm_write(GPOUT,42)
    assign out_lm9_mmul_avm_write = bb_mmul_B4_stall_region_out_lm9_mmul_avm_write;

    // out_lm9_mmul_avm_writedata(GPOUT,43)
    assign out_lm9_mmul_avm_writedata = bb_mmul_B4_stall_region_out_lm9_mmul_avm_writedata;

    // out_lm_mmul_avm_address(GPOUT,44)
    assign out_lm_mmul_avm_address = bb_mmul_B4_stall_region_out_lm_mmul_avm_address;

    // out_lm_mmul_avm_burstcount(GPOUT,45)
    assign out_lm_mmul_avm_burstcount = bb_mmul_B4_stall_region_out_lm_mmul_avm_burstcount;

    // out_lm_mmul_avm_byteenable(GPOUT,46)
    assign out_lm_mmul_avm_byteenable = bb_mmul_B4_stall_region_out_lm_mmul_avm_byteenable;

    // out_lm_mmul_avm_enable(GPOUT,47)
    assign out_lm_mmul_avm_enable = bb_mmul_B4_stall_region_out_lm_mmul_avm_enable;

    // out_lm_mmul_avm_read(GPOUT,48)
    assign out_lm_mmul_avm_read = bb_mmul_B4_stall_region_out_lm_mmul_avm_read;

    // out_lm_mmul_avm_write(GPOUT,49)
    assign out_lm_mmul_avm_write = bb_mmul_B4_stall_region_out_lm_mmul_avm_write;

    // out_lm_mmul_avm_writedata(GPOUT,50)
    assign out_lm_mmul_avm_writedata = bb_mmul_B4_stall_region_out_lm_mmul_avm_writedata;

    // out_stall_in_0(GPOUT,51)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,52)
    assign out_stall_out_0 = mmul_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,53)
    assign out_stall_out_1 = mmul_B4_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,54)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,55)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,56)
    assign out_valid_out_0 = mmul_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,57)
    assign out_valid_out_1 = mmul_B4_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,59)
    assign out_pipeline_valid_out = bb_mmul_B4_stall_region_out_pipeline_valid_out;

endmodule
