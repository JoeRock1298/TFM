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
// SystemVerilog created on Wed May 10 11:59:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_bb_B5 (
    input wire [63:0] in_A,
    input wire [63:0] in_B,
    input wire [63:0] in_C,
    input wire [31:0] in_N,
    input wire [0:0] in_c0_exe105_0,
    input wire [0:0] in_c0_exe116_0,
    input wire [0:0] in_c0_exe2681_0,
    input wire [31:0] in_c0_exe3692_0,
    input wire [31:0] in_c0_exe6723_0,
    input wire [31:0] in_c1_exe17_0,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [511:0] in_unnamed_mmul5_mmul_avm_readdata,
    input wire [0:0] in_unnamed_mmul5_mmul_avm_readdatavalid,
    input wire [0:0] in_unnamed_mmul5_mmul_avm_waitrequest,
    input wire [0:0] in_unnamed_mmul5_mmul_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe105,
    output wire [0:0] out_lsu_unnamed_mmul5_o_active,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [30:0] out_unnamed_mmul5_mmul_avm_address,
    output wire [4:0] out_unnamed_mmul5_mmul_avm_burstcount,
    output wire [63:0] out_unnamed_mmul5_mmul_avm_byteenable,
    output wire [0:0] out_unnamed_mmul5_mmul_avm_enable,
    output wire [0:0] out_unnamed_mmul5_mmul_avm_read,
    output wire [0:0] out_unnamed_mmul5_mmul_avm_write,
    output wire [511:0] out_unnamed_mmul5_mmul_avm_writedata,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_mmul_B5_stall_region_out_c0_exe105;
    wire [0:0] bb_mmul_B5_stall_region_out_c0_exe116;
    wire [0:0] bb_mmul_B5_stall_region_out_lsu_unnamed_mmul5_o_active;
    wire [0:0] bb_mmul_B5_stall_region_out_stall_out;
    wire [30:0] bb_mmul_B5_stall_region_out_unnamed_mmul5_mmul_avm_address;
    wire [4:0] bb_mmul_B5_stall_region_out_unnamed_mmul5_mmul_avm_burstcount;
    wire [63:0] bb_mmul_B5_stall_region_out_unnamed_mmul5_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B5_stall_region_out_unnamed_mmul5_mmul_avm_enable;
    wire [0:0] bb_mmul_B5_stall_region_out_unnamed_mmul5_mmul_avm_read;
    wire [0:0] bb_mmul_B5_stall_region_out_unnamed_mmul5_mmul_avm_write;
    wire [511:0] bb_mmul_B5_stall_region_out_unnamed_mmul5_mmul_avm_writedata;
    wire [0:0] bb_mmul_B5_stall_region_out_valid_out;
    wire [0:0] mmul_B5_branch_out_c0_exe105;
    wire [0:0] mmul_B5_branch_out_stall_out;
    wire [0:0] mmul_B5_branch_out_valid_out_0;
    wire [0:0] mmul_B5_branch_out_valid_out_1;
    wire [0:0] mmul_B5_merge_out_c0_exe105;
    wire [0:0] mmul_B5_merge_out_c0_exe116;
    wire [0:0] mmul_B5_merge_out_c0_exe2681;
    wire [31:0] mmul_B5_merge_out_c0_exe3692;
    wire [31:0] mmul_B5_merge_out_c0_exe6723;
    wire [31:0] mmul_B5_merge_out_c1_exe17;
    wire [0:0] mmul_B5_merge_out_stall_out_0;
    wire [0:0] mmul_B5_merge_out_valid_out;


    // mmul_B5_merge(BLACKBOX,22)
    mmul_B5_merge themmul_B5_merge (
        .in_c0_exe105_0(in_c0_exe105_0),
        .in_c0_exe116_0(in_c0_exe116_0),
        .in_c0_exe2681_0(in_c0_exe2681_0),
        .in_c0_exe3692_0(in_c0_exe3692_0),
        .in_c0_exe6723_0(in_c0_exe6723_0),
        .in_c1_exe17_0(in_c1_exe17_0),
        .in_stall_in(bb_mmul_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe105(mmul_B5_merge_out_c0_exe105),
        .out_c0_exe116(mmul_B5_merge_out_c0_exe116),
        .out_c0_exe2681(mmul_B5_merge_out_c0_exe2681),
        .out_c0_exe3692(mmul_B5_merge_out_c0_exe3692),
        .out_c0_exe6723(mmul_B5_merge_out_c0_exe6723),
        .out_c1_exe17(mmul_B5_merge_out_c1_exe17),
        .out_stall_out_0(mmul_B5_merge_out_stall_out_0),
        .out_valid_out(mmul_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B5_stall_region(BLACKBOX,2)
    mmul_bb_B5_stall_region thebb_mmul_B5_stall_region (
        .in_C(in_C),
        .in_c0_exe105(mmul_B5_merge_out_c0_exe105),
        .in_c0_exe116(mmul_B5_merge_out_c0_exe116),
        .in_c0_exe2681(mmul_B5_merge_out_c0_exe2681),
        .in_c0_exe3692(mmul_B5_merge_out_c0_exe3692),
        .in_c0_exe6723(mmul_B5_merge_out_c0_exe6723),
        .in_c1_exe17(mmul_B5_merge_out_c1_exe17),
        .in_flush(in_flush),
        .in_stall_in(mmul_B5_branch_out_stall_out),
        .in_unnamed_mmul5_mmul_avm_readdata(in_unnamed_mmul5_mmul_avm_readdata),
        .in_unnamed_mmul5_mmul_avm_readdatavalid(in_unnamed_mmul5_mmul_avm_readdatavalid),
        .in_unnamed_mmul5_mmul_avm_waitrequest(in_unnamed_mmul5_mmul_avm_waitrequest),
        .in_unnamed_mmul5_mmul_avm_writeack(in_unnamed_mmul5_mmul_avm_writeack),
        .in_valid_in(mmul_B5_merge_out_valid_out),
        .out_c0_exe105(bb_mmul_B5_stall_region_out_c0_exe105),
        .out_c0_exe116(bb_mmul_B5_stall_region_out_c0_exe116),
        .out_lsu_unnamed_mmul5_o_active(bb_mmul_B5_stall_region_out_lsu_unnamed_mmul5_o_active),
        .out_stall_out(bb_mmul_B5_stall_region_out_stall_out),
        .out_unnamed_mmul5_mmul_avm_address(bb_mmul_B5_stall_region_out_unnamed_mmul5_mmul_avm_address),
        .out_unnamed_mmul5_mmul_avm_burstcount(bb_mmul_B5_stall_region_out_unnamed_mmul5_mmul_avm_burstcount),
        .out_unnamed_mmul5_mmul_avm_byteenable(bb_mmul_B5_stall_region_out_unnamed_mmul5_mmul_avm_byteenable),
        .out_unnamed_mmul5_mmul_avm_enable(bb_mmul_B5_stall_region_out_unnamed_mmul5_mmul_avm_enable),
        .out_unnamed_mmul5_mmul_avm_read(bb_mmul_B5_stall_region_out_unnamed_mmul5_mmul_avm_read),
        .out_unnamed_mmul5_mmul_avm_write(bb_mmul_B5_stall_region_out_unnamed_mmul5_mmul_avm_write),
        .out_unnamed_mmul5_mmul_avm_writedata(bb_mmul_B5_stall_region_out_unnamed_mmul5_mmul_avm_writedata),
        .out_valid_out(bb_mmul_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // mmul_B5_branch(BLACKBOX,21)
    mmul_B5_branch themmul_B5_branch (
        .in_c0_exe105(bb_mmul_B5_stall_region_out_c0_exe105),
        .in_c0_exe116(bb_mmul_B5_stall_region_out_c0_exe116),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_mmul_B5_stall_region_out_valid_out),
        .out_c0_exe105(mmul_B5_branch_out_c0_exe105),
        .out_stall_out(mmul_B5_branch_out_stall_out),
        .out_valid_out_0(mmul_B5_branch_out_valid_out_0),
        .out_valid_out_1(mmul_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe105(GPOUT,23)
    assign out_c0_exe105 = mmul_B5_branch_out_c0_exe105;

    // out_lsu_unnamed_mmul5_o_active(GPOUT,24)
    assign out_lsu_unnamed_mmul5_o_active = bb_mmul_B5_stall_region_out_lsu_unnamed_mmul5_o_active;

    // out_stall_in_0(GPOUT,25)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,26)
    assign out_stall_out_0 = mmul_B5_merge_out_stall_out_0;

    // out_unnamed_mmul5_mmul_avm_address(GPOUT,27)
    assign out_unnamed_mmul5_mmul_avm_address = bb_mmul_B5_stall_region_out_unnamed_mmul5_mmul_avm_address;

    // out_unnamed_mmul5_mmul_avm_burstcount(GPOUT,28)
    assign out_unnamed_mmul5_mmul_avm_burstcount = bb_mmul_B5_stall_region_out_unnamed_mmul5_mmul_avm_burstcount;

    // out_unnamed_mmul5_mmul_avm_byteenable(GPOUT,29)
    assign out_unnamed_mmul5_mmul_avm_byteenable = bb_mmul_B5_stall_region_out_unnamed_mmul5_mmul_avm_byteenable;

    // out_unnamed_mmul5_mmul_avm_enable(GPOUT,30)
    assign out_unnamed_mmul5_mmul_avm_enable = bb_mmul_B5_stall_region_out_unnamed_mmul5_mmul_avm_enable;

    // out_unnamed_mmul5_mmul_avm_read(GPOUT,31)
    assign out_unnamed_mmul5_mmul_avm_read = bb_mmul_B5_stall_region_out_unnamed_mmul5_mmul_avm_read;

    // out_unnamed_mmul5_mmul_avm_write(GPOUT,32)
    assign out_unnamed_mmul5_mmul_avm_write = bb_mmul_B5_stall_region_out_unnamed_mmul5_mmul_avm_write;

    // out_unnamed_mmul5_mmul_avm_writedata(GPOUT,33)
    assign out_unnamed_mmul5_mmul_avm_writedata = bb_mmul_B5_stall_region_out_unnamed_mmul5_mmul_avm_writedata;

    // out_valid_out_0(GPOUT,34)
    assign out_valid_out_0 = mmul_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,35)
    assign out_valid_out_1 = mmul_B5_branch_out_valid_out_1;

endmodule
