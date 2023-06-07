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

// SystemVerilog created from avgpool2d_bb_B3
// SystemVerilog created on Mon Jun  5 12:30:27 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpool2d_bb_B3 (
    input wire [31:0] in_c0_exe3291_0,
    input wire [0:0] in_c0_exe72_0,
    input wire [31:0] in_c1_exe13_0,
    input wire [0:0] in_flush,
    input wire [63:0] in_input_im,
    input wire [63:0] in_output_im,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [511:0] in_unnamed_avgpool2d1_avgpool2d_avm_readdata,
    input wire [0:0] in_unnamed_avgpool2d1_avgpool2d_avm_readdatavalid,
    input wire [0:0] in_unnamed_avgpool2d1_avgpool2d_avm_waitrequest,
    input wire [0:0] in_unnamed_avgpool2d1_avgpool2d_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_lsu_unnamed_avgpool2d1_o_active,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [30:0] out_unnamed_avgpool2d1_avgpool2d_avm_address,
    output wire [4:0] out_unnamed_avgpool2d1_avgpool2d_avm_burstcount,
    output wire [63:0] out_unnamed_avgpool2d1_avgpool2d_avm_byteenable,
    output wire [0:0] out_unnamed_avgpool2d1_avgpool2d_avm_enable,
    output wire [0:0] out_unnamed_avgpool2d1_avgpool2d_avm_read,
    output wire [0:0] out_unnamed_avgpool2d1_avgpool2d_avm_write,
    output wire [511:0] out_unnamed_avgpool2d1_avgpool2d_avm_writedata,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] avgpool2d_B3_branch_out_stall_out;
    wire [0:0] avgpool2d_B3_branch_out_valid_out_0;
    wire [0:0] avgpool2d_B3_branch_out_valid_out_1;
    wire [31:0] avgpool2d_B3_merge_out_c0_exe3291;
    wire [0:0] avgpool2d_B3_merge_out_c0_exe72;
    wire [31:0] avgpool2d_B3_merge_out_c1_exe13;
    wire [0:0] avgpool2d_B3_merge_out_stall_out_0;
    wire [0:0] avgpool2d_B3_merge_out_valid_out;
    wire [0:0] bb_avgpool2d_B3_stall_region_out_c0_exe72;
    wire [0:0] bb_avgpool2d_B3_stall_region_out_lsu_unnamed_avgpool2d1_o_active;
    wire [0:0] bb_avgpool2d_B3_stall_region_out_stall_out;
    wire [30:0] bb_avgpool2d_B3_stall_region_out_unnamed_avgpool2d1_avgpool2d_avm_address;
    wire [4:0] bb_avgpool2d_B3_stall_region_out_unnamed_avgpool2d1_avgpool2d_avm_burstcount;
    wire [63:0] bb_avgpool2d_B3_stall_region_out_unnamed_avgpool2d1_avgpool2d_avm_byteenable;
    wire [0:0] bb_avgpool2d_B3_stall_region_out_unnamed_avgpool2d1_avgpool2d_avm_enable;
    wire [0:0] bb_avgpool2d_B3_stall_region_out_unnamed_avgpool2d1_avgpool2d_avm_read;
    wire [0:0] bb_avgpool2d_B3_stall_region_out_unnamed_avgpool2d1_avgpool2d_avm_write;
    wire [511:0] bb_avgpool2d_B3_stall_region_out_unnamed_avgpool2d1_avgpool2d_avm_writedata;
    wire [0:0] bb_avgpool2d_B3_stall_region_out_valid_out;


    // avgpool2d_B3_branch(BLACKBOX,2)
    avgpool2d_B3_branch theavgpool2d_B3_branch (
        .in_c0_exe72(bb_avgpool2d_B3_stall_region_out_c0_exe72),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_avgpool2d_B3_stall_region_out_valid_out),
        .out_stall_out(avgpool2d_B3_branch_out_stall_out),
        .out_valid_out_0(avgpool2d_B3_branch_out_valid_out_0),
        .out_valid_out_1(avgpool2d_B3_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // avgpool2d_B3_merge(BLACKBOX,3)
    avgpool2d_B3_merge theavgpool2d_B3_merge (
        .in_c0_exe3291_0(in_c0_exe3291_0),
        .in_c0_exe72_0(in_c0_exe72_0),
        .in_c1_exe13_0(in_c1_exe13_0),
        .in_stall_in(bb_avgpool2d_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe3291(avgpool2d_B3_merge_out_c0_exe3291),
        .out_c0_exe72(avgpool2d_B3_merge_out_c0_exe72),
        .out_c1_exe13(avgpool2d_B3_merge_out_c1_exe13),
        .out_stall_out_0(avgpool2d_B3_merge_out_stall_out_0),
        .out_valid_out(avgpool2d_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpool2d_B3_stall_region(BLACKBOX,4)
    avgpool2d_bb_B3_stall_region thebb_avgpool2d_B3_stall_region (
        .in_c0_exe3291(avgpool2d_B3_merge_out_c0_exe3291),
        .in_c0_exe72(avgpool2d_B3_merge_out_c0_exe72),
        .in_c1_exe13(avgpool2d_B3_merge_out_c1_exe13),
        .in_flush(in_flush),
        .in_output_im(in_output_im),
        .in_stall_in(avgpool2d_B3_branch_out_stall_out),
        .in_unnamed_avgpool2d1_avgpool2d_avm_readdata(in_unnamed_avgpool2d1_avgpool2d_avm_readdata),
        .in_unnamed_avgpool2d1_avgpool2d_avm_readdatavalid(in_unnamed_avgpool2d1_avgpool2d_avm_readdatavalid),
        .in_unnamed_avgpool2d1_avgpool2d_avm_waitrequest(in_unnamed_avgpool2d1_avgpool2d_avm_waitrequest),
        .in_unnamed_avgpool2d1_avgpool2d_avm_writeack(in_unnamed_avgpool2d1_avgpool2d_avm_writeack),
        .in_valid_in(avgpool2d_B3_merge_out_valid_out),
        .out_c0_exe72(bb_avgpool2d_B3_stall_region_out_c0_exe72),
        .out_lsu_unnamed_avgpool2d1_o_active(bb_avgpool2d_B3_stall_region_out_lsu_unnamed_avgpool2d1_o_active),
        .out_stall_out(bb_avgpool2d_B3_stall_region_out_stall_out),
        .out_unnamed_avgpool2d1_avgpool2d_avm_address(bb_avgpool2d_B3_stall_region_out_unnamed_avgpool2d1_avgpool2d_avm_address),
        .out_unnamed_avgpool2d1_avgpool2d_avm_burstcount(bb_avgpool2d_B3_stall_region_out_unnamed_avgpool2d1_avgpool2d_avm_burstcount),
        .out_unnamed_avgpool2d1_avgpool2d_avm_byteenable(bb_avgpool2d_B3_stall_region_out_unnamed_avgpool2d1_avgpool2d_avm_byteenable),
        .out_unnamed_avgpool2d1_avgpool2d_avm_enable(bb_avgpool2d_B3_stall_region_out_unnamed_avgpool2d1_avgpool2d_avm_enable),
        .out_unnamed_avgpool2d1_avgpool2d_avm_read(bb_avgpool2d_B3_stall_region_out_unnamed_avgpool2d1_avgpool2d_avm_read),
        .out_unnamed_avgpool2d1_avgpool2d_avm_write(bb_avgpool2d_B3_stall_region_out_unnamed_avgpool2d1_avgpool2d_avm_write),
        .out_unnamed_avgpool2d1_avgpool2d_avm_writedata(bb_avgpool2d_B3_stall_region_out_unnamed_avgpool2d1_avgpool2d_avm_writedata),
        .out_valid_out(bb_avgpool2d_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_lsu_unnamed_avgpool2d1_o_active(GPOUT,18)
    assign out_lsu_unnamed_avgpool2d1_o_active = bb_avgpool2d_B3_stall_region_out_lsu_unnamed_avgpool2d1_o_active;

    // out_stall_in_0(GPOUT,19)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,20)
    assign out_stall_out_0 = avgpool2d_B3_merge_out_stall_out_0;

    // out_unnamed_avgpool2d1_avgpool2d_avm_address(GPOUT,21)
    assign out_unnamed_avgpool2d1_avgpool2d_avm_address = bb_avgpool2d_B3_stall_region_out_unnamed_avgpool2d1_avgpool2d_avm_address;

    // out_unnamed_avgpool2d1_avgpool2d_avm_burstcount(GPOUT,22)
    assign out_unnamed_avgpool2d1_avgpool2d_avm_burstcount = bb_avgpool2d_B3_stall_region_out_unnamed_avgpool2d1_avgpool2d_avm_burstcount;

    // out_unnamed_avgpool2d1_avgpool2d_avm_byteenable(GPOUT,23)
    assign out_unnamed_avgpool2d1_avgpool2d_avm_byteenable = bb_avgpool2d_B3_stall_region_out_unnamed_avgpool2d1_avgpool2d_avm_byteenable;

    // out_unnamed_avgpool2d1_avgpool2d_avm_enable(GPOUT,24)
    assign out_unnamed_avgpool2d1_avgpool2d_avm_enable = bb_avgpool2d_B3_stall_region_out_unnamed_avgpool2d1_avgpool2d_avm_enable;

    // out_unnamed_avgpool2d1_avgpool2d_avm_read(GPOUT,25)
    assign out_unnamed_avgpool2d1_avgpool2d_avm_read = bb_avgpool2d_B3_stall_region_out_unnamed_avgpool2d1_avgpool2d_avm_read;

    // out_unnamed_avgpool2d1_avgpool2d_avm_write(GPOUT,26)
    assign out_unnamed_avgpool2d1_avgpool2d_avm_write = bb_avgpool2d_B3_stall_region_out_unnamed_avgpool2d1_avgpool2d_avm_write;

    // out_unnamed_avgpool2d1_avgpool2d_avm_writedata(GPOUT,27)
    assign out_unnamed_avgpool2d1_avgpool2d_avm_writedata = bb_avgpool2d_B3_stall_region_out_unnamed_avgpool2d1_avgpool2d_avm_writedata;

    // out_valid_out_0(GPOUT,28)
    assign out_valid_out_0 = avgpool2d_B3_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,29)
    assign out_valid_out_1 = avgpool2d_B3_branch_out_valid_out_1;

endmodule
