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

// SystemVerilog created from mmul_bb_B0
// SystemVerilog created on Sat May  6 18:14:24 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_bb_B0 (
    input wire [63:0] in_A,
    input wire [63:0] in_B,
    input wire [63:0] in_C,
    input wire [31:0] in_N,
    input wire [63:0] in_acl_global_id_0_0,
    input wire [63:0] in_acl_global_id_1_0,
    input wire [31:0] in_acl_group_id_0_0,
    input wire [31:0] in_acl_group_id_1_0,
    input wire [31:0] in_acl_local_id_0_0,
    input wire [31:0] in_acl_local_id_1_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_acl_global_id_0,
    output wire [63:0] out_acl_global_id_1,
    output wire [31:0] out_acl_local_id_0,
    output wire [31:0] out_c0_exe1,
    output wire [31:0] out_c0_exe2,
    output wire [0:0] out_c0_exe3,
    output wire [31:0] out_c0_exe4,
    output wire [31:0] out_c0_exe5,
    output wire [31:0] out_c0_exe6,
    output wire [63:0] out_c0_exe7,
    output wire [63:0] out_c0_exe8,
    output wire [63:0] out_c0_exe9,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [63:0] bb_mmul_B0_stall_region_out_acl_global_id_0;
    wire [63:0] bb_mmul_B0_stall_region_out_acl_global_id_1;
    wire [31:0] bb_mmul_B0_stall_region_out_acl_local_id_0;
    wire [31:0] bb_mmul_B0_stall_region_out_c0_exe1;
    wire [31:0] bb_mmul_B0_stall_region_out_c0_exe2;
    wire [0:0] bb_mmul_B0_stall_region_out_c0_exe3;
    wire [31:0] bb_mmul_B0_stall_region_out_c0_exe4;
    wire [31:0] bb_mmul_B0_stall_region_out_c0_exe5;
    wire [31:0] bb_mmul_B0_stall_region_out_c0_exe6;
    wire [63:0] bb_mmul_B0_stall_region_out_c0_exe7;
    wire [63:0] bb_mmul_B0_stall_region_out_c0_exe8;
    wire [63:0] bb_mmul_B0_stall_region_out_c0_exe9;
    wire [0:0] bb_mmul_B0_stall_region_out_stall_out;
    wire [0:0] bb_mmul_B0_stall_region_out_valid_out;
    wire [63:0] mmul_B0_branch_out_acl_global_id_0;
    wire [63:0] mmul_B0_branch_out_acl_global_id_1;
    wire [31:0] mmul_B0_branch_out_acl_local_id_0;
    wire [31:0] mmul_B0_branch_out_c0_exe1;
    wire [31:0] mmul_B0_branch_out_c0_exe2;
    wire [0:0] mmul_B0_branch_out_c0_exe3;
    wire [31:0] mmul_B0_branch_out_c0_exe4;
    wire [31:0] mmul_B0_branch_out_c0_exe5;
    wire [31:0] mmul_B0_branch_out_c0_exe6;
    wire [63:0] mmul_B0_branch_out_c0_exe7;
    wire [63:0] mmul_B0_branch_out_c0_exe8;
    wire [63:0] mmul_B0_branch_out_c0_exe9;
    wire [0:0] mmul_B0_branch_out_stall_out;
    wire [0:0] mmul_B0_branch_out_valid_out_0;
    wire [63:0] mmul_B0_merge_out_acl_global_id_0;
    wire [63:0] mmul_B0_merge_out_acl_global_id_1;
    wire [31:0] mmul_B0_merge_out_acl_group_id_0;
    wire [31:0] mmul_B0_merge_out_acl_group_id_1;
    wire [31:0] mmul_B0_merge_out_acl_local_id_0;
    wire [31:0] mmul_B0_merge_out_acl_local_id_1;
    wire [0:0] mmul_B0_merge_out_stall_out_0;
    wire [0:0] mmul_B0_merge_out_valid_out;


    // mmul_B0_merge(BLACKBOX,16)
    mmul_B0_merge themmul_B0_merge (
        .in_acl_global_id_0_0(in_acl_global_id_0_0),
        .in_acl_global_id_1_0(in_acl_global_id_1_0),
        .in_acl_group_id_0_0(in_acl_group_id_0_0),
        .in_acl_group_id_1_0(in_acl_group_id_1_0),
        .in_acl_local_id_0_0(in_acl_local_id_0_0),
        .in_acl_local_id_1_0(in_acl_local_id_1_0),
        .in_stall_in(bb_mmul_B0_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_acl_global_id_0(mmul_B0_merge_out_acl_global_id_0),
        .out_acl_global_id_1(mmul_B0_merge_out_acl_global_id_1),
        .out_acl_group_id_0(mmul_B0_merge_out_acl_group_id_0),
        .out_acl_group_id_1(mmul_B0_merge_out_acl_group_id_1),
        .out_acl_local_id_0(mmul_B0_merge_out_acl_local_id_0),
        .out_acl_local_id_1(mmul_B0_merge_out_acl_local_id_1),
        .out_stall_out_0(mmul_B0_merge_out_stall_out_0),
        .out_valid_out(mmul_B0_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B0_stall_region(BLACKBOX,2)
    mmul_bb_B0_stall_region thebb_mmul_B0_stall_region (
        .in_N(in_N),
        .in_acl_global_id_0(mmul_B0_merge_out_acl_global_id_0),
        .in_acl_global_id_1(mmul_B0_merge_out_acl_global_id_1),
        .in_acl_group_id_0(mmul_B0_merge_out_acl_group_id_0),
        .in_acl_group_id_1(mmul_B0_merge_out_acl_group_id_1),
        .in_acl_local_id_0(mmul_B0_merge_out_acl_local_id_0),
        .in_acl_local_id_1(mmul_B0_merge_out_acl_local_id_1),
        .in_stall_in(mmul_B0_branch_out_stall_out),
        .in_valid_in(mmul_B0_merge_out_valid_out),
        .out_acl_global_id_0(bb_mmul_B0_stall_region_out_acl_global_id_0),
        .out_acl_global_id_1(bb_mmul_B0_stall_region_out_acl_global_id_1),
        .out_acl_local_id_0(bb_mmul_B0_stall_region_out_acl_local_id_0),
        .out_c0_exe1(bb_mmul_B0_stall_region_out_c0_exe1),
        .out_c0_exe2(bb_mmul_B0_stall_region_out_c0_exe2),
        .out_c0_exe3(bb_mmul_B0_stall_region_out_c0_exe3),
        .out_c0_exe4(bb_mmul_B0_stall_region_out_c0_exe4),
        .out_c0_exe5(bb_mmul_B0_stall_region_out_c0_exe5),
        .out_c0_exe6(bb_mmul_B0_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_mmul_B0_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_mmul_B0_stall_region_out_c0_exe8),
        .out_c0_exe9(bb_mmul_B0_stall_region_out_c0_exe9),
        .out_stall_out(bb_mmul_B0_stall_region_out_stall_out),
        .out_valid_out(bb_mmul_B0_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // mmul_B0_branch(BLACKBOX,15)
    mmul_B0_branch themmul_B0_branch (
        .in_acl_global_id_0(bb_mmul_B0_stall_region_out_acl_global_id_0),
        .in_acl_global_id_1(bb_mmul_B0_stall_region_out_acl_global_id_1),
        .in_acl_local_id_0(bb_mmul_B0_stall_region_out_acl_local_id_0),
        .in_c0_exe1(bb_mmul_B0_stall_region_out_c0_exe1),
        .in_c0_exe2(bb_mmul_B0_stall_region_out_c0_exe2),
        .in_c0_exe3(bb_mmul_B0_stall_region_out_c0_exe3),
        .in_c0_exe4(bb_mmul_B0_stall_region_out_c0_exe4),
        .in_c0_exe5(bb_mmul_B0_stall_region_out_c0_exe5),
        .in_c0_exe6(bb_mmul_B0_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_mmul_B0_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_mmul_B0_stall_region_out_c0_exe8),
        .in_c0_exe9(bb_mmul_B0_stall_region_out_c0_exe9),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_mmul_B0_stall_region_out_valid_out),
        .out_acl_global_id_0(mmul_B0_branch_out_acl_global_id_0),
        .out_acl_global_id_1(mmul_B0_branch_out_acl_global_id_1),
        .out_acl_local_id_0(mmul_B0_branch_out_acl_local_id_0),
        .out_c0_exe1(mmul_B0_branch_out_c0_exe1),
        .out_c0_exe2(mmul_B0_branch_out_c0_exe2),
        .out_c0_exe3(mmul_B0_branch_out_c0_exe3),
        .out_c0_exe4(mmul_B0_branch_out_c0_exe4),
        .out_c0_exe5(mmul_B0_branch_out_c0_exe5),
        .out_c0_exe6(mmul_B0_branch_out_c0_exe6),
        .out_c0_exe7(mmul_B0_branch_out_c0_exe7),
        .out_c0_exe8(mmul_B0_branch_out_c0_exe8),
        .out_c0_exe9(mmul_B0_branch_out_c0_exe9),
        .out_stall_out(mmul_B0_branch_out_stall_out),
        .out_valid_out_0(mmul_B0_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_acl_global_id_0(GPOUT,17)
    assign out_acl_global_id_0 = mmul_B0_branch_out_acl_global_id_0;

    // out_acl_global_id_1(GPOUT,18)
    assign out_acl_global_id_1 = mmul_B0_branch_out_acl_global_id_1;

    // out_acl_local_id_0(GPOUT,19)
    assign out_acl_local_id_0 = mmul_B0_branch_out_acl_local_id_0;

    // out_c0_exe1(GPOUT,20)
    assign out_c0_exe1 = mmul_B0_branch_out_c0_exe1;

    // out_c0_exe2(GPOUT,21)
    assign out_c0_exe2 = mmul_B0_branch_out_c0_exe2;

    // out_c0_exe3(GPOUT,22)
    assign out_c0_exe3 = mmul_B0_branch_out_c0_exe3;

    // out_c0_exe4(GPOUT,23)
    assign out_c0_exe4 = mmul_B0_branch_out_c0_exe4;

    // out_c0_exe5(GPOUT,24)
    assign out_c0_exe5 = mmul_B0_branch_out_c0_exe5;

    // out_c0_exe6(GPOUT,25)
    assign out_c0_exe6 = mmul_B0_branch_out_c0_exe6;

    // out_c0_exe7(GPOUT,26)
    assign out_c0_exe7 = mmul_B0_branch_out_c0_exe7;

    // out_c0_exe8(GPOUT,27)
    assign out_c0_exe8 = mmul_B0_branch_out_c0_exe8;

    // out_c0_exe9(GPOUT,28)
    assign out_c0_exe9 = mmul_B0_branch_out_c0_exe9;

    // out_stall_out_0(GPOUT,29)
    assign out_stall_out_0 = mmul_B0_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,30)
    assign out_valid_out_0 = mmul_B0_branch_out_valid_out_0;

endmodule
