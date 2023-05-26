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

// SystemVerilog created from double_add_1_bb_B1
// SystemVerilog created on Tue May 23 13:55:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_1_bb_B1 (
    output wire [0:0] out_feedback_out_0,
    input wire [0:0] in_feedback_stall_in_0,
    output wire [0:0] out_feedback_valid_out_0,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [511:0] in_memdep_double_add_1_avm_readdata,
    input wire [0:0] in_memdep_double_add_1_avm_readdatavalid,
    input wire [0:0] in_memdep_double_add_1_avm_waitrequest,
    input wire [0:0] in_memdep_double_add_1_avm_writeack,
    input wire [63:0] in_result,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [30:0] out_memdep_double_add_1_avm_address,
    output wire [4:0] out_memdep_double_add_1_avm_burstcount,
    output wire [63:0] out_memdep_double_add_1_avm_byteenable,
    output wire [0:0] out_memdep_double_add_1_avm_enable,
    output wire [0:0] out_memdep_double_add_1_avm_read,
    output wire [0:0] out_memdep_double_add_1_avm_write,
    output wire [511:0] out_memdep_double_add_1_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_double_add_1_B1_stall_region_out_feedback_out_0;
    wire [0:0] bb_double_add_1_B1_stall_region_out_feedback_valid_out_0;
    wire [0:0] bb_double_add_1_B1_stall_region_out_lsu_memdep_o_active;
    wire [30:0] bb_double_add_1_B1_stall_region_out_memdep_double_add_1_avm_address;
    wire [4:0] bb_double_add_1_B1_stall_region_out_memdep_double_add_1_avm_burstcount;
    wire [63:0] bb_double_add_1_B1_stall_region_out_memdep_double_add_1_avm_byteenable;
    wire [0:0] bb_double_add_1_B1_stall_region_out_memdep_double_add_1_avm_enable;
    wire [0:0] bb_double_add_1_B1_stall_region_out_memdep_double_add_1_avm_read;
    wire [0:0] bb_double_add_1_B1_stall_region_out_memdep_double_add_1_avm_write;
    wire [511:0] bb_double_add_1_B1_stall_region_out_memdep_double_add_1_avm_writedata;
    wire [0:0] bb_double_add_1_B1_stall_region_out_stall_out;
    wire [0:0] bb_double_add_1_B1_stall_region_out_valid_out;
    wire [0:0] double_add_1_B1_branch_out_stall_out;
    wire [0:0] double_add_1_B1_branch_out_valid_out_0;
    wire [0:0] double_add_1_B1_merge_out_stall_out_0;
    wire [0:0] double_add_1_B1_merge_out_valid_out;


    // double_add_1_B1_merge(BLACKBOX,4)
    double_add_1_B1_merge thedouble_add_1_B1_merge (
        .in_stall_in(bb_double_add_1_B1_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(double_add_1_B1_merge_out_stall_out_0),
        .out_valid_out(double_add_1_B1_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // double_add_1_B1_branch(BLACKBOX,3)
    double_add_1_B1_branch thedouble_add_1_B1_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_double_add_1_B1_stall_region_out_valid_out),
        .out_stall_out(double_add_1_B1_branch_out_stall_out),
        .out_valid_out_0(double_add_1_B1_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_double_add_1_B1_stall_region(BLACKBOX,2)
    double_add_1_bb_B1_stall_region thebb_double_add_1_B1_stall_region (
        .in_feedback_stall_in_0(in_feedback_stall_in_0),
        .in_flush(in_flush),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_memdep_double_add_1_avm_readdata(in_memdep_double_add_1_avm_readdata),
        .in_memdep_double_add_1_avm_readdatavalid(in_memdep_double_add_1_avm_readdatavalid),
        .in_memdep_double_add_1_avm_waitrequest(in_memdep_double_add_1_avm_waitrequest),
        .in_memdep_double_add_1_avm_writeack(in_memdep_double_add_1_avm_writeack),
        .in_result(in_result),
        .in_stall_in(double_add_1_B1_branch_out_stall_out),
        .in_valid_in(double_add_1_B1_merge_out_valid_out),
        .out_feedback_out_0(bb_double_add_1_B1_stall_region_out_feedback_out_0),
        .out_feedback_valid_out_0(bb_double_add_1_B1_stall_region_out_feedback_valid_out_0),
        .out_lsu_memdep_o_active(bb_double_add_1_B1_stall_region_out_lsu_memdep_o_active),
        .out_memdep_double_add_1_avm_address(bb_double_add_1_B1_stall_region_out_memdep_double_add_1_avm_address),
        .out_memdep_double_add_1_avm_burstcount(bb_double_add_1_B1_stall_region_out_memdep_double_add_1_avm_burstcount),
        .out_memdep_double_add_1_avm_byteenable(bb_double_add_1_B1_stall_region_out_memdep_double_add_1_avm_byteenable),
        .out_memdep_double_add_1_avm_enable(bb_double_add_1_B1_stall_region_out_memdep_double_add_1_avm_enable),
        .out_memdep_double_add_1_avm_read(bb_double_add_1_B1_stall_region_out_memdep_double_add_1_avm_read),
        .out_memdep_double_add_1_avm_write(bb_double_add_1_B1_stall_region_out_memdep_double_add_1_avm_write),
        .out_memdep_double_add_1_avm_writedata(bb_double_add_1_B1_stall_region_out_memdep_double_add_1_avm_writedata),
        .out_stall_out(bb_double_add_1_B1_stall_region_out_stall_out),
        .out_valid_out(bb_double_add_1_B1_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_0_sync(GPOUT,5)
    assign out_feedback_out_0 = bb_double_add_1_B1_stall_region_out_feedback_out_0;

    // feedback_valid_out_0_sync(GPOUT,7)
    assign out_feedback_valid_out_0 = bb_double_add_1_B1_stall_region_out_feedback_valid_out_0;

    // out_lsu_memdep_o_active(GPOUT,18)
    assign out_lsu_memdep_o_active = bb_double_add_1_B1_stall_region_out_lsu_memdep_o_active;

    // out_memdep_double_add_1_avm_address(GPOUT,19)
    assign out_memdep_double_add_1_avm_address = bb_double_add_1_B1_stall_region_out_memdep_double_add_1_avm_address;

    // out_memdep_double_add_1_avm_burstcount(GPOUT,20)
    assign out_memdep_double_add_1_avm_burstcount = bb_double_add_1_B1_stall_region_out_memdep_double_add_1_avm_burstcount;

    // out_memdep_double_add_1_avm_byteenable(GPOUT,21)
    assign out_memdep_double_add_1_avm_byteenable = bb_double_add_1_B1_stall_region_out_memdep_double_add_1_avm_byteenable;

    // out_memdep_double_add_1_avm_enable(GPOUT,22)
    assign out_memdep_double_add_1_avm_enable = bb_double_add_1_B1_stall_region_out_memdep_double_add_1_avm_enable;

    // out_memdep_double_add_1_avm_read(GPOUT,23)
    assign out_memdep_double_add_1_avm_read = bb_double_add_1_B1_stall_region_out_memdep_double_add_1_avm_read;

    // out_memdep_double_add_1_avm_write(GPOUT,24)
    assign out_memdep_double_add_1_avm_write = bb_double_add_1_B1_stall_region_out_memdep_double_add_1_avm_write;

    // out_memdep_double_add_1_avm_writedata(GPOUT,25)
    assign out_memdep_double_add_1_avm_writedata = bb_double_add_1_B1_stall_region_out_memdep_double_add_1_avm_writedata;

    // out_stall_out_0(GPOUT,26)
    assign out_stall_out_0 = double_add_1_B1_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,27)
    assign out_valid_out_0 = double_add_1_B1_branch_out_valid_out_0;

endmodule
