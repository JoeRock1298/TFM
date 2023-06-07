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

// SystemVerilog created from avgpool2d_bb_B4
// SystemVerilog created on Mon Jun  5 12:30:27 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpool2d_bb_B4 (
    input wire [31:0] in_class_index_012_pop610_0,
    input wire [31:0] in_class_index_012_pop610_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [63:0] in_input_im,
    input wire [0:0] in_notcmp19_0,
    input wire [0:0] in_notcmp19_1,
    input wire [63:0] in_output_im,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [511:0] in_unnamed_avgpool2d2_avgpool2d_avm_readdata,
    input wire [0:0] in_unnamed_avgpool2d2_avgpool2d_avm_readdatavalid,
    input wire [0:0] in_unnamed_avgpool2d2_avgpool2d_avm_waitrequest,
    input wire [0:0] in_unnamed_avgpool2d2_avgpool2d_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe329,
    output wire [0:0] out_c0_exe7,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [30:0] out_unnamed_avgpool2d2_avgpool2d_avm_address,
    output wire [4:0] out_unnamed_avgpool2d2_avgpool2d_avm_burstcount,
    output wire [63:0] out_unnamed_avgpool2d2_avgpool2d_avm_byteenable,
    output wire [0:0] out_unnamed_avgpool2d2_avgpool2d_avm_enable,
    output wire [0:0] out_unnamed_avgpool2d2_avgpool2d_avm_read,
    output wire [0:0] out_unnamed_avgpool2d2_avgpool2d_avm_write,
    output wire [511:0] out_unnamed_avgpool2d2_avgpool2d_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [31:0] avgpool2d_B4_branch_out_c0_exe329;
    wire [0:0] avgpool2d_B4_branch_out_c0_exe7;
    wire [31:0] avgpool2d_B4_branch_out_c1_exe1;
    wire [0:0] avgpool2d_B4_branch_out_stall_out;
    wire [0:0] avgpool2d_B4_branch_out_valid_out_0;
    wire [0:0] avgpool2d_B4_branch_out_valid_out_1;
    wire [31:0] avgpool2d_B4_merge_out_class_index_012_pop610;
    wire [0:0] avgpool2d_B4_merge_out_forked;
    wire [0:0] avgpool2d_B4_merge_out_notcmp19;
    wire [0:0] avgpool2d_B4_merge_out_stall_out_0;
    wire [0:0] avgpool2d_B4_merge_out_stall_out_1;
    wire [0:0] avgpool2d_B4_merge_out_valid_out;
    wire [0:0] bb_avgpool2d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpool2d6_exiting_stall_out;
    wire [0:0] bb_avgpool2d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpool2d6_exiting_valid_out;
    wire [31:0] bb_avgpool2d_B4_stall_region_out_c0_exe329;
    wire [0:0] bb_avgpool2d_B4_stall_region_out_c0_exe6;
    wire [0:0] bb_avgpool2d_B4_stall_region_out_c0_exe7;
    wire [31:0] bb_avgpool2d_B4_stall_region_out_c1_exe1;
    wire [0:0] bb_avgpool2d_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_avgpool2d_B4_stall_region_out_stall_out;
    wire [30:0] bb_avgpool2d_B4_stall_region_out_unnamed_avgpool2d2_avgpool2d_avm_address;
    wire [4:0] bb_avgpool2d_B4_stall_region_out_unnamed_avgpool2d2_avgpool2d_avm_burstcount;
    wire [63:0] bb_avgpool2d_B4_stall_region_out_unnamed_avgpool2d2_avgpool2d_avm_byteenable;
    wire [0:0] bb_avgpool2d_B4_stall_region_out_unnamed_avgpool2d2_avgpool2d_avm_enable;
    wire [0:0] bb_avgpool2d_B4_stall_region_out_unnamed_avgpool2d2_avgpool2d_avm_read;
    wire [0:0] bb_avgpool2d_B4_stall_region_out_unnamed_avgpool2d2_avgpool2d_avm_write;
    wire [511:0] bb_avgpool2d_B4_stall_region_out_unnamed_avgpool2d2_avgpool2d_avm_writedata;
    wire [0:0] bb_avgpool2d_B4_stall_region_out_valid_out;


    // avgpool2d_B4_merge(BLACKBOX,3)
    avgpool2d_B4_merge theavgpool2d_B4_merge (
        .in_class_index_012_pop610_0(in_class_index_012_pop610_0),
        .in_class_index_012_pop610_1(in_class_index_012_pop610_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_notcmp19_0(in_notcmp19_0),
        .in_notcmp19_1(in_notcmp19_1),
        .in_stall_in(bb_avgpool2d_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_class_index_012_pop610(avgpool2d_B4_merge_out_class_index_012_pop610),
        .out_forked(avgpool2d_B4_merge_out_forked),
        .out_notcmp19(avgpool2d_B4_merge_out_notcmp19),
        .out_stall_out_0(avgpool2d_B4_merge_out_stall_out_0),
        .out_stall_out_1(avgpool2d_B4_merge_out_stall_out_1),
        .out_valid_out(avgpool2d_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpool2d_B4_stall_region(BLACKBOX,4)
    avgpool2d_bb_B4_stall_region thebb_avgpool2d_B4_stall_region (
        .in_class_index_012_pop610(avgpool2d_B4_merge_out_class_index_012_pop610),
        .in_flush(in_flush),
        .in_forked(avgpool2d_B4_merge_out_forked),
        .in_input_im(in_input_im),
        .in_notcmp19(avgpool2d_B4_merge_out_notcmp19),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(avgpool2d_B4_branch_out_stall_out),
        .in_unnamed_avgpool2d2_avgpool2d_avm_readdata(in_unnamed_avgpool2d2_avgpool2d_avm_readdata),
        .in_unnamed_avgpool2d2_avgpool2d_avm_readdatavalid(in_unnamed_avgpool2d2_avgpool2d_avm_readdatavalid),
        .in_unnamed_avgpool2d2_avgpool2d_avm_waitrequest(in_unnamed_avgpool2d2_avgpool2d_avm_waitrequest),
        .in_unnamed_avgpool2d2_avgpool2d_avm_writeack(in_unnamed_avgpool2d2_avgpool2d_avm_writeack),
        .in_valid_in(avgpool2d_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpool2d6_exiting_stall_out(bb_avgpool2d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpool2d6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpool2d6_exiting_valid_out(bb_avgpool2d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpool2d6_exiting_valid_out),
        .out_c0_exe329(bb_avgpool2d_B4_stall_region_out_c0_exe329),
        .out_c0_exe6(bb_avgpool2d_B4_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_avgpool2d_B4_stall_region_out_c0_exe7),
        .out_c1_exe1(bb_avgpool2d_B4_stall_region_out_c1_exe1),
        .out_pipeline_valid_out(bb_avgpool2d_B4_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_avgpool2d_B4_stall_region_out_stall_out),
        .out_unnamed_avgpool2d2_avgpool2d_avm_address(bb_avgpool2d_B4_stall_region_out_unnamed_avgpool2d2_avgpool2d_avm_address),
        .out_unnamed_avgpool2d2_avgpool2d_avm_burstcount(bb_avgpool2d_B4_stall_region_out_unnamed_avgpool2d2_avgpool2d_avm_burstcount),
        .out_unnamed_avgpool2d2_avgpool2d_avm_byteenable(bb_avgpool2d_B4_stall_region_out_unnamed_avgpool2d2_avgpool2d_avm_byteenable),
        .out_unnamed_avgpool2d2_avgpool2d_avm_enable(bb_avgpool2d_B4_stall_region_out_unnamed_avgpool2d2_avgpool2d_avm_enable),
        .out_unnamed_avgpool2d2_avgpool2d_avm_read(bb_avgpool2d_B4_stall_region_out_unnamed_avgpool2d2_avgpool2d_avm_read),
        .out_unnamed_avgpool2d2_avgpool2d_avm_write(bb_avgpool2d_B4_stall_region_out_unnamed_avgpool2d2_avgpool2d_avm_write),
        .out_unnamed_avgpool2d2_avgpool2d_avm_writedata(bb_avgpool2d_B4_stall_region_out_unnamed_avgpool2d2_avgpool2d_avm_writedata),
        .out_valid_out(bb_avgpool2d_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // avgpool2d_B4_branch(BLACKBOX,2)
    avgpool2d_B4_branch theavgpool2d_B4_branch (
        .in_c0_exe329(bb_avgpool2d_B4_stall_region_out_c0_exe329),
        .in_c0_exe6(bb_avgpool2d_B4_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_avgpool2d_B4_stall_region_out_c0_exe7),
        .in_c1_exe1(bb_avgpool2d_B4_stall_region_out_c1_exe1),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_avgpool2d_B4_stall_region_out_valid_out),
        .out_c0_exe329(avgpool2d_B4_branch_out_c0_exe329),
        .out_c0_exe7(avgpool2d_B4_branch_out_c0_exe7),
        .out_c1_exe1(avgpool2d_B4_branch_out_c1_exe1),
        .out_stall_out(avgpool2d_B4_branch_out_stall_out),
        .out_valid_out_0(avgpool2d_B4_branch_out_valid_out_0),
        .out_valid_out_1(avgpool2d_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe329(GPOUT,22)
    assign out_c0_exe329 = avgpool2d_B4_branch_out_c0_exe329;

    // out_c0_exe7(GPOUT,23)
    assign out_c0_exe7 = avgpool2d_B4_branch_out_c0_exe7;

    // out_c1_exe1(GPOUT,24)
    assign out_c1_exe1 = avgpool2d_B4_branch_out_c1_exe1;

    // out_exiting_stall_out(GPOUT,25)
    assign out_exiting_stall_out = bb_avgpool2d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpool2d6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,26)
    assign out_exiting_valid_out = bb_avgpool2d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpool2d6_exiting_valid_out;

    // out_stall_in_0(GPOUT,27)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,28)
    assign out_stall_out_0 = avgpool2d_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,29)
    assign out_stall_out_1 = avgpool2d_B4_merge_out_stall_out_1;

    // out_unnamed_avgpool2d2_avgpool2d_avm_address(GPOUT,30)
    assign out_unnamed_avgpool2d2_avgpool2d_avm_address = bb_avgpool2d_B4_stall_region_out_unnamed_avgpool2d2_avgpool2d_avm_address;

    // out_unnamed_avgpool2d2_avgpool2d_avm_burstcount(GPOUT,31)
    assign out_unnamed_avgpool2d2_avgpool2d_avm_burstcount = bb_avgpool2d_B4_stall_region_out_unnamed_avgpool2d2_avgpool2d_avm_burstcount;

    // out_unnamed_avgpool2d2_avgpool2d_avm_byteenable(GPOUT,32)
    assign out_unnamed_avgpool2d2_avgpool2d_avm_byteenable = bb_avgpool2d_B4_stall_region_out_unnamed_avgpool2d2_avgpool2d_avm_byteenable;

    // out_unnamed_avgpool2d2_avgpool2d_avm_enable(GPOUT,33)
    assign out_unnamed_avgpool2d2_avgpool2d_avm_enable = bb_avgpool2d_B4_stall_region_out_unnamed_avgpool2d2_avgpool2d_avm_enable;

    // out_unnamed_avgpool2d2_avgpool2d_avm_read(GPOUT,34)
    assign out_unnamed_avgpool2d2_avgpool2d_avm_read = bb_avgpool2d_B4_stall_region_out_unnamed_avgpool2d2_avgpool2d_avm_read;

    // out_unnamed_avgpool2d2_avgpool2d_avm_write(GPOUT,35)
    assign out_unnamed_avgpool2d2_avgpool2d_avm_write = bb_avgpool2d_B4_stall_region_out_unnamed_avgpool2d2_avgpool2d_avm_write;

    // out_unnamed_avgpool2d2_avgpool2d_avm_writedata(GPOUT,36)
    assign out_unnamed_avgpool2d2_avgpool2d_avm_writedata = bb_avgpool2d_B4_stall_region_out_unnamed_avgpool2d2_avgpool2d_avm_writedata;

    // out_valid_in_0(GPOUT,37)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,38)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,39)
    assign out_valid_out_0 = avgpool2d_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,40)
    assign out_valid_out_1 = avgpool2d_B4_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,42)
    assign out_pipeline_valid_out = bb_avgpool2d_B4_stall_region_out_pipeline_valid_out;

endmodule
