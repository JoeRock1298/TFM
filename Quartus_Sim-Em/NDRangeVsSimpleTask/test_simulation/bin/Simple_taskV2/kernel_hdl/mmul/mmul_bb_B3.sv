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

// SystemVerilog created from mmul_bb_B3
// SystemVerilog created on Tue May  9 13:46:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_bb_B3 (
    input wire [63:0] in_A,
    input wire [63:0] in_B,
    input wire [63:0] in_C,
    input wire [31:0] in_N,
    input wire [31:0] in_c0_exe2331_0,
    input wire [0:0] in_c0_exe82_0,
    input wire [31:0] in_c1_exe13_0,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [511:0] in_unnamed_mmul9_mmul_avm_readdata,
    input wire [0:0] in_unnamed_mmul9_mmul_avm_readdatavalid,
    input wire [0:0] in_unnamed_mmul9_mmul_avm_waitrequest,
    input wire [0:0] in_unnamed_mmul9_mmul_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_lsu_unnamed_mmul9_o_active,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [30:0] out_unnamed_mmul9_mmul_avm_address,
    output wire [4:0] out_unnamed_mmul9_mmul_avm_burstcount,
    output wire [63:0] out_unnamed_mmul9_mmul_avm_byteenable,
    output wire [0:0] out_unnamed_mmul9_mmul_avm_enable,
    output wire [0:0] out_unnamed_mmul9_mmul_avm_read,
    output wire [0:0] out_unnamed_mmul9_mmul_avm_write,
    output wire [511:0] out_unnamed_mmul9_mmul_avm_writedata,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_mmul_B3_stall_region_out_c0_exe82;
    wire [0:0] bb_mmul_B3_stall_region_out_lsu_unnamed_mmul9_o_active;
    wire [0:0] bb_mmul_B3_stall_region_out_stall_out;
    wire [30:0] bb_mmul_B3_stall_region_out_unnamed_mmul9_mmul_avm_address;
    wire [4:0] bb_mmul_B3_stall_region_out_unnamed_mmul9_mmul_avm_burstcount;
    wire [63:0] bb_mmul_B3_stall_region_out_unnamed_mmul9_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B3_stall_region_out_unnamed_mmul9_mmul_avm_enable;
    wire [0:0] bb_mmul_B3_stall_region_out_unnamed_mmul9_mmul_avm_read;
    wire [0:0] bb_mmul_B3_stall_region_out_unnamed_mmul9_mmul_avm_write;
    wire [511:0] bb_mmul_B3_stall_region_out_unnamed_mmul9_mmul_avm_writedata;
    wire [0:0] bb_mmul_B3_stall_region_out_valid_out;
    wire [0:0] mmul_B3_branch_out_stall_out;
    wire [0:0] mmul_B3_branch_out_valid_out_0;
    wire [0:0] mmul_B3_branch_out_valid_out_1;
    wire [31:0] mmul_B3_merge_out_c0_exe2331;
    wire [0:0] mmul_B3_merge_out_c0_exe82;
    wire [31:0] mmul_B3_merge_out_c1_exe13;
    wire [0:0] mmul_B3_merge_out_stall_out_0;
    wire [0:0] mmul_B3_merge_out_valid_out;


    // mmul_B3_branch(BLACKBOX,19)
    mmul_B3_branch themmul_B3_branch (
        .in_c0_exe82(bb_mmul_B3_stall_region_out_c0_exe82),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_mmul_B3_stall_region_out_valid_out),
        .out_stall_out(mmul_B3_branch_out_stall_out),
        .out_valid_out_0(mmul_B3_branch_out_valid_out_0),
        .out_valid_out_1(mmul_B3_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // mmul_B3_merge(BLACKBOX,20)
    mmul_B3_merge themmul_B3_merge (
        .in_c0_exe2331_0(in_c0_exe2331_0),
        .in_c0_exe82_0(in_c0_exe82_0),
        .in_c1_exe13_0(in_c1_exe13_0),
        .in_stall_in(bb_mmul_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe2331(mmul_B3_merge_out_c0_exe2331),
        .out_c0_exe82(mmul_B3_merge_out_c0_exe82),
        .out_c1_exe13(mmul_B3_merge_out_c1_exe13),
        .out_stall_out_0(mmul_B3_merge_out_stall_out_0),
        .out_valid_out(mmul_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B3_stall_region(BLACKBOX,2)
    mmul_bb_B3_stall_region thebb_mmul_B3_stall_region (
        .in_C(in_C),
        .in_c0_exe2331(mmul_B3_merge_out_c0_exe2331),
        .in_c0_exe82(mmul_B3_merge_out_c0_exe82),
        .in_c1_exe13(mmul_B3_merge_out_c1_exe13),
        .in_flush(in_flush),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(mmul_B3_branch_out_stall_out),
        .in_unnamed_mmul9_mmul_avm_readdata(in_unnamed_mmul9_mmul_avm_readdata),
        .in_unnamed_mmul9_mmul_avm_readdatavalid(in_unnamed_mmul9_mmul_avm_readdatavalid),
        .in_unnamed_mmul9_mmul_avm_waitrequest(in_unnamed_mmul9_mmul_avm_waitrequest),
        .in_unnamed_mmul9_mmul_avm_writeack(in_unnamed_mmul9_mmul_avm_writeack),
        .in_valid_in(mmul_B3_merge_out_valid_out),
        .out_c0_exe82(bb_mmul_B3_stall_region_out_c0_exe82),
        .out_lsu_unnamed_mmul9_o_active(bb_mmul_B3_stall_region_out_lsu_unnamed_mmul9_o_active),
        .out_stall_out(bb_mmul_B3_stall_region_out_stall_out),
        .out_unnamed_mmul9_mmul_avm_address(bb_mmul_B3_stall_region_out_unnamed_mmul9_mmul_avm_address),
        .out_unnamed_mmul9_mmul_avm_burstcount(bb_mmul_B3_stall_region_out_unnamed_mmul9_mmul_avm_burstcount),
        .out_unnamed_mmul9_mmul_avm_byteenable(bb_mmul_B3_stall_region_out_unnamed_mmul9_mmul_avm_byteenable),
        .out_unnamed_mmul9_mmul_avm_enable(bb_mmul_B3_stall_region_out_unnamed_mmul9_mmul_avm_enable),
        .out_unnamed_mmul9_mmul_avm_read(bb_mmul_B3_stall_region_out_unnamed_mmul9_mmul_avm_read),
        .out_unnamed_mmul9_mmul_avm_write(bb_mmul_B3_stall_region_out_unnamed_mmul9_mmul_avm_write),
        .out_unnamed_mmul9_mmul_avm_writedata(bb_mmul_B3_stall_region_out_unnamed_mmul9_mmul_avm_writedata),
        .out_valid_out(bb_mmul_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_lsu_unnamed_mmul9_o_active(GPOUT,21)
    assign out_lsu_unnamed_mmul9_o_active = bb_mmul_B3_stall_region_out_lsu_unnamed_mmul9_o_active;

    // out_stall_in_0(GPOUT,22)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,23)
    assign out_stall_out_0 = mmul_B3_merge_out_stall_out_0;

    // out_unnamed_mmul9_mmul_avm_address(GPOUT,24)
    assign out_unnamed_mmul9_mmul_avm_address = bb_mmul_B3_stall_region_out_unnamed_mmul9_mmul_avm_address;

    // out_unnamed_mmul9_mmul_avm_burstcount(GPOUT,25)
    assign out_unnamed_mmul9_mmul_avm_burstcount = bb_mmul_B3_stall_region_out_unnamed_mmul9_mmul_avm_burstcount;

    // out_unnamed_mmul9_mmul_avm_byteenable(GPOUT,26)
    assign out_unnamed_mmul9_mmul_avm_byteenable = bb_mmul_B3_stall_region_out_unnamed_mmul9_mmul_avm_byteenable;

    // out_unnamed_mmul9_mmul_avm_enable(GPOUT,27)
    assign out_unnamed_mmul9_mmul_avm_enable = bb_mmul_B3_stall_region_out_unnamed_mmul9_mmul_avm_enable;

    // out_unnamed_mmul9_mmul_avm_read(GPOUT,28)
    assign out_unnamed_mmul9_mmul_avm_read = bb_mmul_B3_stall_region_out_unnamed_mmul9_mmul_avm_read;

    // out_unnamed_mmul9_mmul_avm_write(GPOUT,29)
    assign out_unnamed_mmul9_mmul_avm_write = bb_mmul_B3_stall_region_out_unnamed_mmul9_mmul_avm_write;

    // out_unnamed_mmul9_mmul_avm_writedata(GPOUT,30)
    assign out_unnamed_mmul9_mmul_avm_writedata = bb_mmul_B3_stall_region_out_unnamed_mmul9_mmul_avm_writedata;

    // out_valid_out_0(GPOUT,31)
    assign out_valid_out_0 = mmul_B3_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,32)
    assign out_valid_out_1 = mmul_B3_branch_out_valid_out_1;

endmodule
