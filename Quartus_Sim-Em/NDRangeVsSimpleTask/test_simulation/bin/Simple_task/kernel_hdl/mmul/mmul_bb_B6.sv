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

// SystemVerilog created from mmul_bb_B6
// SystemVerilog created on Tue May  9 13:20:54 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_bb_B6 (
    input wire [63:0] in_A,
    input wire [63:0] in_B,
    input wire [63:0] in_C,
    input wire [31:0] in_N,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked10_0,
    input wire [0:0] in_forked10_1,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_j_025_pop1033_0,
    input wire [31:0] in_j_025_pop1033_1,
    input wire [511:0] in_lm7_mmul_avm_readdata,
    input wire [0:0] in_lm7_mmul_avm_readdatavalid,
    input wire [0:0] in_lm7_mmul_avm_waitrequest,
    input wire [0:0] in_lm7_mmul_avm_writeack,
    input wire [511:0] in_lm_mmul_avm_readdata,
    input wire [0:0] in_lm_mmul_avm_readdatavalid,
    input wire [0:0] in_lm_mmul_avm_waitrequest,
    input wire [0:0] in_lm_mmul_avm_writeack,
    input wire [31:0] in_mul20_pop1134_0,
    input wire [31:0] in_mul20_pop1134_1,
    input wire [31:0] in_mul28_0,
    input wire [31:0] in_mul28_1,
    input wire [0:0] in_notcmp1232_0,
    input wire [0:0] in_notcmp1232_1,
    input wire [0:0] in_notcmp1622_pop1235_0,
    input wire [0:0] in_notcmp1622_pop1235_1,
    input wire [0:0] in_notcmp1631_0,
    input wire [0:0] in_notcmp1631_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10,
    output wire [0:0] out_c0_exe11,
    output wire [0:0] out_c0_exe268,
    output wire [31:0] out_c0_exe369,
    output wire [31:0] out_c0_exe672,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [30:0] out_lm7_mmul_avm_address,
    output wire [4:0] out_lm7_mmul_avm_burstcount,
    output wire [63:0] out_lm7_mmul_avm_byteenable,
    output wire [0:0] out_lm7_mmul_avm_enable,
    output wire [0:0] out_lm7_mmul_avm_read,
    output wire [0:0] out_lm7_mmul_avm_write,
    output wire [511:0] out_lm7_mmul_avm_writedata,
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

    wire [0:0] bb_mmul_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out;
    wire [0:0] bb_mmul_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out;
    wire [0:0] bb_mmul_B6_stall_region_out_c0_exe10;
    wire [0:0] bb_mmul_B6_stall_region_out_c0_exe11;
    wire [0:0] bb_mmul_B6_stall_region_out_c0_exe268;
    wire [31:0] bb_mmul_B6_stall_region_out_c0_exe369;
    wire [31:0] bb_mmul_B6_stall_region_out_c0_exe672;
    wire [0:0] bb_mmul_B6_stall_region_out_c0_exe9;
    wire [31:0] bb_mmul_B6_stall_region_out_c1_exe1;
    wire [30:0] bb_mmul_B6_stall_region_out_lm7_mmul_avm_address;
    wire [4:0] bb_mmul_B6_stall_region_out_lm7_mmul_avm_burstcount;
    wire [63:0] bb_mmul_B6_stall_region_out_lm7_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B6_stall_region_out_lm7_mmul_avm_enable;
    wire [0:0] bb_mmul_B6_stall_region_out_lm7_mmul_avm_read;
    wire [0:0] bb_mmul_B6_stall_region_out_lm7_mmul_avm_write;
    wire [511:0] bb_mmul_B6_stall_region_out_lm7_mmul_avm_writedata;
    wire [30:0] bb_mmul_B6_stall_region_out_lm_mmul_avm_address;
    wire [4:0] bb_mmul_B6_stall_region_out_lm_mmul_avm_burstcount;
    wire [63:0] bb_mmul_B6_stall_region_out_lm_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B6_stall_region_out_lm_mmul_avm_enable;
    wire [0:0] bb_mmul_B6_stall_region_out_lm_mmul_avm_read;
    wire [0:0] bb_mmul_B6_stall_region_out_lm_mmul_avm_write;
    wire [511:0] bb_mmul_B6_stall_region_out_lm_mmul_avm_writedata;
    wire [0:0] bb_mmul_B6_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_mmul_B6_stall_region_out_stall_out;
    wire [0:0] bb_mmul_B6_stall_region_out_valid_out;
    wire [0:0] mmul_B6_branch_out_c0_exe10;
    wire [0:0] mmul_B6_branch_out_c0_exe11;
    wire [0:0] mmul_B6_branch_out_c0_exe268;
    wire [31:0] mmul_B6_branch_out_c0_exe369;
    wire [31:0] mmul_B6_branch_out_c0_exe672;
    wire [31:0] mmul_B6_branch_out_c1_exe1;
    wire [0:0] mmul_B6_branch_out_stall_out;
    wire [0:0] mmul_B6_branch_out_valid_out_0;
    wire [0:0] mmul_B6_branch_out_valid_out_1;
    wire [0:0] mmul_B6_merge_out_forked10;
    wire [31:0] mmul_B6_merge_out_j_025_pop1033;
    wire [31:0] mmul_B6_merge_out_mul20_pop1134;
    wire [31:0] mmul_B6_merge_out_mul28;
    wire [0:0] mmul_B6_merge_out_notcmp1232;
    wire [0:0] mmul_B6_merge_out_notcmp1622_pop1235;
    wire [0:0] mmul_B6_merge_out_notcmp1631;
    wire [0:0] mmul_B6_merge_out_stall_out_0;
    wire [0:0] mmul_B6_merge_out_stall_out_1;
    wire [0:0] mmul_B6_merge_out_valid_out;


    // mmul_B6_merge(BLACKBOX,37)
    mmul_B6_merge themmul_B6_merge (
        .in_forked10_0(in_forked10_0),
        .in_forked10_1(in_forked10_1),
        .in_j_025_pop1033_0(in_j_025_pop1033_0),
        .in_j_025_pop1033_1(in_j_025_pop1033_1),
        .in_mul20_pop1134_0(in_mul20_pop1134_0),
        .in_mul20_pop1134_1(in_mul20_pop1134_1),
        .in_mul28_0(in_mul28_0),
        .in_mul28_1(in_mul28_1),
        .in_notcmp1232_0(in_notcmp1232_0),
        .in_notcmp1232_1(in_notcmp1232_1),
        .in_notcmp1622_pop1235_0(in_notcmp1622_pop1235_0),
        .in_notcmp1622_pop1235_1(in_notcmp1622_pop1235_1),
        .in_notcmp1631_0(in_notcmp1631_0),
        .in_notcmp1631_1(in_notcmp1631_1),
        .in_stall_in(bb_mmul_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked10(mmul_B6_merge_out_forked10),
        .out_j_025_pop1033(mmul_B6_merge_out_j_025_pop1033),
        .out_mul20_pop1134(mmul_B6_merge_out_mul20_pop1134),
        .out_mul28(mmul_B6_merge_out_mul28),
        .out_notcmp1232(mmul_B6_merge_out_notcmp1232),
        .out_notcmp1622_pop1235(mmul_B6_merge_out_notcmp1622_pop1235),
        .out_notcmp1631(mmul_B6_merge_out_notcmp1631),
        .out_stall_out_0(mmul_B6_merge_out_stall_out_0),
        .out_stall_out_1(mmul_B6_merge_out_stall_out_1),
        .out_valid_out(mmul_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B6_stall_region(BLACKBOX,2)
    mmul_bb_B6_stall_region thebb_mmul_B6_stall_region (
        .in_A(in_A),
        .in_B(in_B),
        .in_N(in_N),
        .in_flush(in_flush),
        .in_forked10(mmul_B6_merge_out_forked10),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_j_025_pop1033(mmul_B6_merge_out_j_025_pop1033),
        .in_lm7_mmul_avm_readdata(in_lm7_mmul_avm_readdata),
        .in_lm7_mmul_avm_readdatavalid(in_lm7_mmul_avm_readdatavalid),
        .in_lm7_mmul_avm_waitrequest(in_lm7_mmul_avm_waitrequest),
        .in_lm7_mmul_avm_writeack(in_lm7_mmul_avm_writeack),
        .in_lm_mmul_avm_readdata(in_lm_mmul_avm_readdata),
        .in_lm_mmul_avm_readdatavalid(in_lm_mmul_avm_readdatavalid),
        .in_lm_mmul_avm_waitrequest(in_lm_mmul_avm_waitrequest),
        .in_lm_mmul_avm_writeack(in_lm_mmul_avm_writeack),
        .in_mul20_pop1134(mmul_B6_merge_out_mul20_pop1134),
        .in_mul28(mmul_B6_merge_out_mul28),
        .in_notcmp1232(mmul_B6_merge_out_notcmp1232),
        .in_notcmp1622_pop1235(mmul_B6_merge_out_notcmp1622_pop1235),
        .in_notcmp1631(mmul_B6_merge_out_notcmp1631),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(mmul_B6_branch_out_stall_out),
        .in_valid_in(mmul_B6_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out(bb_mmul_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out(bb_mmul_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out),
        .out_c0_exe10(bb_mmul_B6_stall_region_out_c0_exe10),
        .out_c0_exe11(bb_mmul_B6_stall_region_out_c0_exe11),
        .out_c0_exe268(bb_mmul_B6_stall_region_out_c0_exe268),
        .out_c0_exe369(bb_mmul_B6_stall_region_out_c0_exe369),
        .out_c0_exe672(bb_mmul_B6_stall_region_out_c0_exe672),
        .out_c0_exe9(bb_mmul_B6_stall_region_out_c0_exe9),
        .out_c1_exe1(bb_mmul_B6_stall_region_out_c1_exe1),
        .out_lm7_mmul_avm_address(bb_mmul_B6_stall_region_out_lm7_mmul_avm_address),
        .out_lm7_mmul_avm_burstcount(bb_mmul_B6_stall_region_out_lm7_mmul_avm_burstcount),
        .out_lm7_mmul_avm_byteenable(bb_mmul_B6_stall_region_out_lm7_mmul_avm_byteenable),
        .out_lm7_mmul_avm_enable(bb_mmul_B6_stall_region_out_lm7_mmul_avm_enable),
        .out_lm7_mmul_avm_read(bb_mmul_B6_stall_region_out_lm7_mmul_avm_read),
        .out_lm7_mmul_avm_write(bb_mmul_B6_stall_region_out_lm7_mmul_avm_write),
        .out_lm7_mmul_avm_writedata(bb_mmul_B6_stall_region_out_lm7_mmul_avm_writedata),
        .out_lm_mmul_avm_address(bb_mmul_B6_stall_region_out_lm_mmul_avm_address),
        .out_lm_mmul_avm_burstcount(bb_mmul_B6_stall_region_out_lm_mmul_avm_burstcount),
        .out_lm_mmul_avm_byteenable(bb_mmul_B6_stall_region_out_lm_mmul_avm_byteenable),
        .out_lm_mmul_avm_enable(bb_mmul_B6_stall_region_out_lm_mmul_avm_enable),
        .out_lm_mmul_avm_read(bb_mmul_B6_stall_region_out_lm_mmul_avm_read),
        .out_lm_mmul_avm_write(bb_mmul_B6_stall_region_out_lm_mmul_avm_write),
        .out_lm_mmul_avm_writedata(bb_mmul_B6_stall_region_out_lm_mmul_avm_writedata),
        .out_pipeline_valid_out(bb_mmul_B6_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_mmul_B6_stall_region_out_stall_out),
        .out_valid_out(bb_mmul_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // mmul_B6_branch(BLACKBOX,36)
    mmul_B6_branch themmul_B6_branch (
        .in_c0_exe10(bb_mmul_B6_stall_region_out_c0_exe10),
        .in_c0_exe11(bb_mmul_B6_stall_region_out_c0_exe11),
        .in_c0_exe268(bb_mmul_B6_stall_region_out_c0_exe268),
        .in_c0_exe369(bb_mmul_B6_stall_region_out_c0_exe369),
        .in_c0_exe672(bb_mmul_B6_stall_region_out_c0_exe672),
        .in_c0_exe9(bb_mmul_B6_stall_region_out_c0_exe9),
        .in_c1_exe1(bb_mmul_B6_stall_region_out_c1_exe1),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_mmul_B6_stall_region_out_valid_out),
        .out_c0_exe10(mmul_B6_branch_out_c0_exe10),
        .out_c0_exe11(mmul_B6_branch_out_c0_exe11),
        .out_c0_exe268(mmul_B6_branch_out_c0_exe268),
        .out_c0_exe369(mmul_B6_branch_out_c0_exe369),
        .out_c0_exe672(mmul_B6_branch_out_c0_exe672),
        .out_c1_exe1(mmul_B6_branch_out_c1_exe1),
        .out_stall_out(mmul_B6_branch_out_stall_out),
        .out_valid_out_0(mmul_B6_branch_out_valid_out_0),
        .out_valid_out_1(mmul_B6_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10(GPOUT,38)
    assign out_c0_exe10 = mmul_B6_branch_out_c0_exe10;

    // out_c0_exe11(GPOUT,39)
    assign out_c0_exe11 = mmul_B6_branch_out_c0_exe11;

    // out_c0_exe268(GPOUT,40)
    assign out_c0_exe268 = mmul_B6_branch_out_c0_exe268;

    // out_c0_exe369(GPOUT,41)
    assign out_c0_exe369 = mmul_B6_branch_out_c0_exe369;

    // out_c0_exe672(GPOUT,42)
    assign out_c0_exe672 = mmul_B6_branch_out_c0_exe672;

    // out_c1_exe1(GPOUT,43)
    assign out_c1_exe1 = mmul_B6_branch_out_c1_exe1;

    // out_exiting_stall_out(GPOUT,44)
    assign out_exiting_stall_out = bb_mmul_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,45)
    assign out_exiting_valid_out = bb_mmul_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out;

    // out_lm7_mmul_avm_address(GPOUT,46)
    assign out_lm7_mmul_avm_address = bb_mmul_B6_stall_region_out_lm7_mmul_avm_address;

    // out_lm7_mmul_avm_burstcount(GPOUT,47)
    assign out_lm7_mmul_avm_burstcount = bb_mmul_B6_stall_region_out_lm7_mmul_avm_burstcount;

    // out_lm7_mmul_avm_byteenable(GPOUT,48)
    assign out_lm7_mmul_avm_byteenable = bb_mmul_B6_stall_region_out_lm7_mmul_avm_byteenable;

    // out_lm7_mmul_avm_enable(GPOUT,49)
    assign out_lm7_mmul_avm_enable = bb_mmul_B6_stall_region_out_lm7_mmul_avm_enable;

    // out_lm7_mmul_avm_read(GPOUT,50)
    assign out_lm7_mmul_avm_read = bb_mmul_B6_stall_region_out_lm7_mmul_avm_read;

    // out_lm7_mmul_avm_write(GPOUT,51)
    assign out_lm7_mmul_avm_write = bb_mmul_B6_stall_region_out_lm7_mmul_avm_write;

    // out_lm7_mmul_avm_writedata(GPOUT,52)
    assign out_lm7_mmul_avm_writedata = bb_mmul_B6_stall_region_out_lm7_mmul_avm_writedata;

    // out_lm_mmul_avm_address(GPOUT,53)
    assign out_lm_mmul_avm_address = bb_mmul_B6_stall_region_out_lm_mmul_avm_address;

    // out_lm_mmul_avm_burstcount(GPOUT,54)
    assign out_lm_mmul_avm_burstcount = bb_mmul_B6_stall_region_out_lm_mmul_avm_burstcount;

    // out_lm_mmul_avm_byteenable(GPOUT,55)
    assign out_lm_mmul_avm_byteenable = bb_mmul_B6_stall_region_out_lm_mmul_avm_byteenable;

    // out_lm_mmul_avm_enable(GPOUT,56)
    assign out_lm_mmul_avm_enable = bb_mmul_B6_stall_region_out_lm_mmul_avm_enable;

    // out_lm_mmul_avm_read(GPOUT,57)
    assign out_lm_mmul_avm_read = bb_mmul_B6_stall_region_out_lm_mmul_avm_read;

    // out_lm_mmul_avm_write(GPOUT,58)
    assign out_lm_mmul_avm_write = bb_mmul_B6_stall_region_out_lm_mmul_avm_write;

    // out_lm_mmul_avm_writedata(GPOUT,59)
    assign out_lm_mmul_avm_writedata = bb_mmul_B6_stall_region_out_lm_mmul_avm_writedata;

    // out_stall_in_0(GPOUT,60)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,61)
    assign out_stall_out_0 = mmul_B6_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,62)
    assign out_stall_out_1 = mmul_B6_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,63)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,64)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,65)
    assign out_valid_out_0 = mmul_B6_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,66)
    assign out_valid_out_1 = mmul_B6_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,68)
    assign out_pipeline_valid_out = bb_mmul_B6_stall_region_out_pipeline_valid_out;

endmodule
