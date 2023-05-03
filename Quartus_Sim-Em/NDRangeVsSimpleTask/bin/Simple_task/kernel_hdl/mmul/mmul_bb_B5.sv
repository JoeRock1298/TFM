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

// SystemVerilog created from mmul_bb_B5
// SystemVerilog created on Wed May  3 13:07:53 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_bb_B5 (
    output wire [0:0] out_feedback_out_12,
    input wire [0:0] in_feedback_stall_in_12,
    output wire [0:0] out_feedback_valid_out_12,
    input wire [63:0] in_A,
    input wire [63:0] in_B,
    input wire [63:0] in_C,
    input wire [31:0] in_N,
    input wire [0:0] in_c0_exe111016_0,
    input wire [0:0] in_c0_exe121028_0,
    input wire [0:0] in_c0_exe139_0,
    input wire [0:0] in_c0_exe1410_0,
    input wire [0:0] in_c0_exe2922_0,
    input wire [31:0] in_c0_exe3933_0,
    input wire [31:0] in_c0_exe7974_0,
    input wire [31:0] in_c1_exe111_0,
    input wire [0:0] in_flush,
    input wire [511:0] in_memdep_mmul_avm_readdata,
    input wire [0:0] in_memdep_mmul_avm_readdatavalid,
    input wire [0:0] in_memdep_mmul_avm_waitrequest,
    input wire [0:0] in_memdep_mmul_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe111016,
    output wire [0:0] out_c0_exe121028,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [0:0] out_memdep,
    output wire [30:0] out_memdep_mmul_avm_address,
    output wire [4:0] out_memdep_mmul_avm_burstcount,
    output wire [63:0] out_memdep_mmul_avm_byteenable,
    output wire [0:0] out_memdep_mmul_avm_enable,
    output wire [0:0] out_memdep_mmul_avm_read,
    output wire [0:0] out_memdep_mmul_avm_write,
    output wire [511:0] out_memdep_mmul_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_mmul_B5_stall_region_out_c0_exe111016;
    wire [0:0] bb_mmul_B5_stall_region_out_c0_exe121028;
    wire [0:0] bb_mmul_B5_stall_region_out_c0_exe1410;
    wire [0:0] bb_mmul_B5_stall_region_out_feedback_out_12;
    wire [0:0] bb_mmul_B5_stall_region_out_feedback_valid_out_12;
    wire [0:0] bb_mmul_B5_stall_region_out_lsu_memdep_o_active;
    wire [0:0] bb_mmul_B5_stall_region_out_memdep;
    wire [30:0] bb_mmul_B5_stall_region_out_memdep_mmul_avm_address;
    wire [4:0] bb_mmul_B5_stall_region_out_memdep_mmul_avm_burstcount;
    wire [63:0] bb_mmul_B5_stall_region_out_memdep_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B5_stall_region_out_memdep_mmul_avm_enable;
    wire [0:0] bb_mmul_B5_stall_region_out_memdep_mmul_avm_read;
    wire [0:0] bb_mmul_B5_stall_region_out_memdep_mmul_avm_write;
    wire [511:0] bb_mmul_B5_stall_region_out_memdep_mmul_avm_writedata;
    wire [0:0] bb_mmul_B5_stall_region_out_stall_out;
    wire [0:0] bb_mmul_B5_stall_region_out_valid_out;
    wire [0:0] mmul_B5_branch_out_c0_exe111016;
    wire [0:0] mmul_B5_branch_out_c0_exe121028;
    wire [0:0] mmul_B5_branch_out_memdep;
    wire [0:0] mmul_B5_branch_out_stall_out;
    wire [0:0] mmul_B5_branch_out_valid_out_0;
    wire [0:0] mmul_B5_branch_out_valid_out_1;
    wire [0:0] mmul_B5_merge_out_c0_exe111016;
    wire [0:0] mmul_B5_merge_out_c0_exe121028;
    wire [0:0] mmul_B5_merge_out_c0_exe139;
    wire [0:0] mmul_B5_merge_out_c0_exe1410;
    wire [0:0] mmul_B5_merge_out_c0_exe2922;
    wire [31:0] mmul_B5_merge_out_c0_exe3933;
    wire [31:0] mmul_B5_merge_out_c0_exe7974;
    wire [31:0] mmul_B5_merge_out_c1_exe111;
    wire [0:0] mmul_B5_merge_out_stall_out_0;
    wire [0:0] mmul_B5_merge_out_valid_out;


    // mmul_B5_branch(BLACKBOX,26)
    mmul_B5_branch themmul_B5_branch (
        .in_c0_exe111016(bb_mmul_B5_stall_region_out_c0_exe111016),
        .in_c0_exe121028(bb_mmul_B5_stall_region_out_c0_exe121028),
        .in_c0_exe1410(bb_mmul_B5_stall_region_out_c0_exe1410),
        .in_memdep(bb_mmul_B5_stall_region_out_memdep),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_mmul_B5_stall_region_out_valid_out),
        .out_c0_exe111016(mmul_B5_branch_out_c0_exe111016),
        .out_c0_exe121028(mmul_B5_branch_out_c0_exe121028),
        .out_memdep(mmul_B5_branch_out_memdep),
        .out_stall_out(mmul_B5_branch_out_stall_out),
        .out_valid_out_0(mmul_B5_branch_out_valid_out_0),
        .out_valid_out_1(mmul_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // mmul_B5_merge(BLACKBOX,27)
    mmul_B5_merge themmul_B5_merge (
        .in_c0_exe111016_0(in_c0_exe111016_0),
        .in_c0_exe121028_0(in_c0_exe121028_0),
        .in_c0_exe139_0(in_c0_exe139_0),
        .in_c0_exe1410_0(in_c0_exe1410_0),
        .in_c0_exe2922_0(in_c0_exe2922_0),
        .in_c0_exe3933_0(in_c0_exe3933_0),
        .in_c0_exe7974_0(in_c0_exe7974_0),
        .in_c1_exe111_0(in_c1_exe111_0),
        .in_stall_in(bb_mmul_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe111016(mmul_B5_merge_out_c0_exe111016),
        .out_c0_exe121028(mmul_B5_merge_out_c0_exe121028),
        .out_c0_exe139(mmul_B5_merge_out_c0_exe139),
        .out_c0_exe1410(mmul_B5_merge_out_c0_exe1410),
        .out_c0_exe2922(mmul_B5_merge_out_c0_exe2922),
        .out_c0_exe3933(mmul_B5_merge_out_c0_exe3933),
        .out_c0_exe7974(mmul_B5_merge_out_c0_exe7974),
        .out_c1_exe111(mmul_B5_merge_out_c1_exe111),
        .out_stall_out_0(mmul_B5_merge_out_stall_out_0),
        .out_valid_out(mmul_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B5_stall_region(BLACKBOX,2)
    mmul_bb_B5_stall_region thebb_mmul_B5_stall_region (
        .in_C(in_C),
        .in_c0_exe111016(mmul_B5_merge_out_c0_exe111016),
        .in_c0_exe121028(mmul_B5_merge_out_c0_exe121028),
        .in_c0_exe139(mmul_B5_merge_out_c0_exe139),
        .in_c0_exe1410(mmul_B5_merge_out_c0_exe1410),
        .in_c0_exe2922(mmul_B5_merge_out_c0_exe2922),
        .in_c0_exe3933(mmul_B5_merge_out_c0_exe3933),
        .in_c0_exe7974(mmul_B5_merge_out_c0_exe7974),
        .in_c1_exe111(mmul_B5_merge_out_c1_exe111),
        .in_feedback_stall_in_12(in_feedback_stall_in_12),
        .in_flush(in_flush),
        .in_memdep_mmul_avm_readdata(in_memdep_mmul_avm_readdata),
        .in_memdep_mmul_avm_readdatavalid(in_memdep_mmul_avm_readdatavalid),
        .in_memdep_mmul_avm_waitrequest(in_memdep_mmul_avm_waitrequest),
        .in_memdep_mmul_avm_writeack(in_memdep_mmul_avm_writeack),
        .in_stall_in(mmul_B5_branch_out_stall_out),
        .in_valid_in(mmul_B5_merge_out_valid_out),
        .out_c0_exe111016(bb_mmul_B5_stall_region_out_c0_exe111016),
        .out_c0_exe121028(bb_mmul_B5_stall_region_out_c0_exe121028),
        .out_c0_exe1410(bb_mmul_B5_stall_region_out_c0_exe1410),
        .out_feedback_out_12(bb_mmul_B5_stall_region_out_feedback_out_12),
        .out_feedback_valid_out_12(bb_mmul_B5_stall_region_out_feedback_valid_out_12),
        .out_lsu_memdep_o_active(bb_mmul_B5_stall_region_out_lsu_memdep_o_active),
        .out_memdep(bb_mmul_B5_stall_region_out_memdep),
        .out_memdep_mmul_avm_address(bb_mmul_B5_stall_region_out_memdep_mmul_avm_address),
        .out_memdep_mmul_avm_burstcount(bb_mmul_B5_stall_region_out_memdep_mmul_avm_burstcount),
        .out_memdep_mmul_avm_byteenable(bb_mmul_B5_stall_region_out_memdep_mmul_avm_byteenable),
        .out_memdep_mmul_avm_enable(bb_mmul_B5_stall_region_out_memdep_mmul_avm_enable),
        .out_memdep_mmul_avm_read(bb_mmul_B5_stall_region_out_memdep_mmul_avm_read),
        .out_memdep_mmul_avm_write(bb_mmul_B5_stall_region_out_memdep_mmul_avm_write),
        .out_memdep_mmul_avm_writedata(bb_mmul_B5_stall_region_out_memdep_mmul_avm_writedata),
        .out_stall_out(bb_mmul_B5_stall_region_out_stall_out),
        .out_valid_out(bb_mmul_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_12_sync(GPOUT,3)
    assign out_feedback_out_12 = bb_mmul_B5_stall_region_out_feedback_out_12;

    // feedback_valid_out_12_sync(GPOUT,5)
    assign out_feedback_valid_out_12 = bb_mmul_B5_stall_region_out_feedback_valid_out_12;

    // out_c0_exe111016(GPOUT,28)
    assign out_c0_exe111016 = mmul_B5_branch_out_c0_exe111016;

    // out_c0_exe121028(GPOUT,29)
    assign out_c0_exe121028 = mmul_B5_branch_out_c0_exe121028;

    // out_lsu_memdep_o_active(GPOUT,30)
    assign out_lsu_memdep_o_active = bb_mmul_B5_stall_region_out_lsu_memdep_o_active;

    // out_memdep(GPOUT,31)
    assign out_memdep = mmul_B5_branch_out_memdep;

    // out_memdep_mmul_avm_address(GPOUT,32)
    assign out_memdep_mmul_avm_address = bb_mmul_B5_stall_region_out_memdep_mmul_avm_address;

    // out_memdep_mmul_avm_burstcount(GPOUT,33)
    assign out_memdep_mmul_avm_burstcount = bb_mmul_B5_stall_region_out_memdep_mmul_avm_burstcount;

    // out_memdep_mmul_avm_byteenable(GPOUT,34)
    assign out_memdep_mmul_avm_byteenable = bb_mmul_B5_stall_region_out_memdep_mmul_avm_byteenable;

    // out_memdep_mmul_avm_enable(GPOUT,35)
    assign out_memdep_mmul_avm_enable = bb_mmul_B5_stall_region_out_memdep_mmul_avm_enable;

    // out_memdep_mmul_avm_read(GPOUT,36)
    assign out_memdep_mmul_avm_read = bb_mmul_B5_stall_region_out_memdep_mmul_avm_read;

    // out_memdep_mmul_avm_write(GPOUT,37)
    assign out_memdep_mmul_avm_write = bb_mmul_B5_stall_region_out_memdep_mmul_avm_write;

    // out_memdep_mmul_avm_writedata(GPOUT,38)
    assign out_memdep_mmul_avm_writedata = bb_mmul_B5_stall_region_out_memdep_mmul_avm_writedata;

    // out_stall_in_0(GPOUT,39)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,40)
    assign out_stall_out_0 = mmul_B5_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,41)
    assign out_valid_out_0 = mmul_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,42)
    assign out_valid_out_1 = mmul_B5_branch_out_valid_out_1;

endmodule
