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

// SystemVerilog created from mmul_bb_B2
// SystemVerilog created on Sat May  6 18:14:24 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_bb_B2 (
    input wire [63:0] in_C,
    input wire [31:0] in_N,
    input wire [63:0] in_acl_global_id_076_0,
    input wire [63:0] in_acl_global_id_178_0,
    input wire [31:0] in_c0_exe214175_0,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in_0,
    input wire [511:0] in_unnamed_mmul7_mmul_avm_readdata,
    input wire [0:0] in_unnamed_mmul7_mmul_avm_readdatavalid,
    input wire [0:0] in_unnamed_mmul7_mmul_avm_waitrequest,
    input wire [0:0] in_unnamed_mmul7_mmul_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_lsu_unnamed_mmul7_o_active,
    output wire [0:0] out_stall_out_0,
    output wire [30:0] out_unnamed_mmul7_mmul_avm_address,
    output wire [4:0] out_unnamed_mmul7_mmul_avm_burstcount,
    output wire [63:0] out_unnamed_mmul7_mmul_avm_byteenable,
    output wire [0:0] out_unnamed_mmul7_mmul_avm_enable,
    output wire [0:0] out_unnamed_mmul7_mmul_avm_read,
    output wire [0:0] out_unnamed_mmul7_mmul_avm_write,
    output wire [511:0] out_unnamed_mmul7_mmul_avm_writedata,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_mmul_B2_stall_region_out_lsu_unnamed_mmul7_o_active;
    wire [0:0] bb_mmul_B2_stall_region_out_stall_out;
    wire [30:0] bb_mmul_B2_stall_region_out_unnamed_mmul7_mmul_avm_address;
    wire [4:0] bb_mmul_B2_stall_region_out_unnamed_mmul7_mmul_avm_burstcount;
    wire [63:0] bb_mmul_B2_stall_region_out_unnamed_mmul7_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B2_stall_region_out_unnamed_mmul7_mmul_avm_enable;
    wire [0:0] bb_mmul_B2_stall_region_out_unnamed_mmul7_mmul_avm_read;
    wire [0:0] bb_mmul_B2_stall_region_out_unnamed_mmul7_mmul_avm_write;
    wire [511:0] bb_mmul_B2_stall_region_out_unnamed_mmul7_mmul_avm_writedata;
    wire [0:0] bb_mmul_B2_stall_region_out_valid_out;
    wire [0:0] mmul_B2_branch_out_stall_out;
    wire [0:0] mmul_B2_branch_out_valid_out_0;
    wire [63:0] mmul_B2_merge_out_acl_global_id_076;
    wire [63:0] mmul_B2_merge_out_acl_global_id_178;
    wire [31:0] mmul_B2_merge_out_c0_exe214175;
    wire [0:0] mmul_B2_merge_out_stall_out_0;
    wire [0:0] mmul_B2_merge_out_valid_out;


    // mmul_B2_branch(BLACKBOX,15)
    mmul_B2_branch themmul_B2_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_mmul_B2_stall_region_out_valid_out),
        .out_stall_out(mmul_B2_branch_out_stall_out),
        .out_valid_out_0(mmul_B2_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // mmul_B2_merge(BLACKBOX,16)
    mmul_B2_merge themmul_B2_merge (
        .in_acl_global_id_076_0(in_acl_global_id_076_0),
        .in_acl_global_id_178_0(in_acl_global_id_178_0),
        .in_c0_exe214175_0(in_c0_exe214175_0),
        .in_stall_in(bb_mmul_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_acl_global_id_076(mmul_B2_merge_out_acl_global_id_076),
        .out_acl_global_id_178(mmul_B2_merge_out_acl_global_id_178),
        .out_c0_exe214175(mmul_B2_merge_out_c0_exe214175),
        .out_stall_out_0(mmul_B2_merge_out_stall_out_0),
        .out_valid_out(mmul_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B2_stall_region(BLACKBOX,2)
    mmul_bb_B2_stall_region thebb_mmul_B2_stall_region (
        .in_C(in_C),
        .in_N(in_N),
        .in_acl_global_id_076(mmul_B2_merge_out_acl_global_id_076),
        .in_acl_global_id_178(mmul_B2_merge_out_acl_global_id_178),
        .in_c0_exe214175(mmul_B2_merge_out_c0_exe214175),
        .in_flush(in_flush),
        .in_stall_in(mmul_B2_branch_out_stall_out),
        .in_unnamed_mmul7_mmul_avm_readdata(in_unnamed_mmul7_mmul_avm_readdata),
        .in_unnamed_mmul7_mmul_avm_readdatavalid(in_unnamed_mmul7_mmul_avm_readdatavalid),
        .in_unnamed_mmul7_mmul_avm_waitrequest(in_unnamed_mmul7_mmul_avm_waitrequest),
        .in_unnamed_mmul7_mmul_avm_writeack(in_unnamed_mmul7_mmul_avm_writeack),
        .in_valid_in(mmul_B2_merge_out_valid_out),
        .out_lsu_unnamed_mmul7_o_active(bb_mmul_B2_stall_region_out_lsu_unnamed_mmul7_o_active),
        .out_stall_out(bb_mmul_B2_stall_region_out_stall_out),
        .out_unnamed_mmul7_mmul_avm_address(bb_mmul_B2_stall_region_out_unnamed_mmul7_mmul_avm_address),
        .out_unnamed_mmul7_mmul_avm_burstcount(bb_mmul_B2_stall_region_out_unnamed_mmul7_mmul_avm_burstcount),
        .out_unnamed_mmul7_mmul_avm_byteenable(bb_mmul_B2_stall_region_out_unnamed_mmul7_mmul_avm_byteenable),
        .out_unnamed_mmul7_mmul_avm_enable(bb_mmul_B2_stall_region_out_unnamed_mmul7_mmul_avm_enable),
        .out_unnamed_mmul7_mmul_avm_read(bb_mmul_B2_stall_region_out_unnamed_mmul7_mmul_avm_read),
        .out_unnamed_mmul7_mmul_avm_write(bb_mmul_B2_stall_region_out_unnamed_mmul7_mmul_avm_write),
        .out_unnamed_mmul7_mmul_avm_writedata(bb_mmul_B2_stall_region_out_unnamed_mmul7_mmul_avm_writedata),
        .out_valid_out(bb_mmul_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_lsu_unnamed_mmul7_o_active(GPOUT,17)
    assign out_lsu_unnamed_mmul7_o_active = bb_mmul_B2_stall_region_out_lsu_unnamed_mmul7_o_active;

    // out_stall_out_0(GPOUT,18)
    assign out_stall_out_0 = mmul_B2_merge_out_stall_out_0;

    // out_unnamed_mmul7_mmul_avm_address(GPOUT,19)
    assign out_unnamed_mmul7_mmul_avm_address = bb_mmul_B2_stall_region_out_unnamed_mmul7_mmul_avm_address;

    // out_unnamed_mmul7_mmul_avm_burstcount(GPOUT,20)
    assign out_unnamed_mmul7_mmul_avm_burstcount = bb_mmul_B2_stall_region_out_unnamed_mmul7_mmul_avm_burstcount;

    // out_unnamed_mmul7_mmul_avm_byteenable(GPOUT,21)
    assign out_unnamed_mmul7_mmul_avm_byteenable = bb_mmul_B2_stall_region_out_unnamed_mmul7_mmul_avm_byteenable;

    // out_unnamed_mmul7_mmul_avm_enable(GPOUT,22)
    assign out_unnamed_mmul7_mmul_avm_enable = bb_mmul_B2_stall_region_out_unnamed_mmul7_mmul_avm_enable;

    // out_unnamed_mmul7_mmul_avm_read(GPOUT,23)
    assign out_unnamed_mmul7_mmul_avm_read = bb_mmul_B2_stall_region_out_unnamed_mmul7_mmul_avm_read;

    // out_unnamed_mmul7_mmul_avm_write(GPOUT,24)
    assign out_unnamed_mmul7_mmul_avm_write = bb_mmul_B2_stall_region_out_unnamed_mmul7_mmul_avm_write;

    // out_unnamed_mmul7_mmul_avm_writedata(GPOUT,25)
    assign out_unnamed_mmul7_mmul_avm_writedata = bb_mmul_B2_stall_region_out_unnamed_mmul7_mmul_avm_writedata;

    // out_valid_out_0(GPOUT,26)
    assign out_valid_out_0 = mmul_B2_branch_out_valid_out_0;

endmodule
