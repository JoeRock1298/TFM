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

// SystemVerilog created from double_add_2_bb_B6
// SystemVerilog created on Tue May 23 14:04:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_2_bb_B6 (
    input wire [63:0] in_arr,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked10_0,
    input wire [0:0] in_forked10_1,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_lm102_double_add_2_avm_readdata,
    input wire [0:0] in_lm102_double_add_2_avm_readdatavalid,
    input wire [0:0] in_lm102_double_add_2_avm_waitrequest,
    input wire [0:0] in_lm102_double_add_2_avm_writeack,
    input wire [63:0] in_memdep_4_double_add_2_avm_readdata,
    input wire [0:0] in_memdep_4_double_add_2_avm_readdatavalid,
    input wire [0:0] in_memdep_4_double_add_2_avm_waitrequest,
    input wire [0:0] in_memdep_4_double_add_2_avm_writeack,
    input wire [0:0] in_memdep_phi5_pop1748_0,
    input wire [0:0] in_memdep_phi5_pop1748_1,
    input wire [0:0] in_notcmp2649_0,
    input wire [0:0] in_notcmp2649_1,
    input wire [63:0] in_result,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_unnamed_double_add_26_0,
    input wire [0:0] in_unnamed_double_add_26_1,
    input wire [0:0] in_unnamed_double_add_27_0,
    input wire [0:0] in_unnamed_double_add_27_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe272,
    output wire [0:0] out_c0_exe575,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_lm102_double_add_2_avm_address,
    output wire [0:0] out_lm102_double_add_2_avm_burstcount,
    output wire [7:0] out_lm102_double_add_2_avm_byteenable,
    output wire [0:0] out_lm102_double_add_2_avm_enable,
    output wire [0:0] out_lm102_double_add_2_avm_read,
    output wire [0:0] out_lm102_double_add_2_avm_write,
    output wire [63:0] out_lm102_double_add_2_avm_writedata,
    output wire [31:0] out_memdep_4_double_add_2_avm_address,
    output wire [0:0] out_memdep_4_double_add_2_avm_burstcount,
    output wire [7:0] out_memdep_4_double_add_2_avm_byteenable,
    output wire [0:0] out_memdep_4_double_add_2_avm_enable,
    output wire [0:0] out_memdep_4_double_add_2_avm_read,
    output wire [0:0] out_memdep_4_double_add_2_avm_write,
    output wire [63:0] out_memdep_4_double_add_2_avm_writedata,
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

    wire [0:0] bb_double_add_2_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_double_add_26_exiting_stall_out;
    wire [0:0] bb_double_add_2_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_double_add_26_exiting_valid_out;
    wire [0:0] bb_double_add_2_B6_stall_region_out_c0_exe272;
    wire [0:0] bb_double_add_2_B6_stall_region_out_c0_exe474;
    wire [0:0] bb_double_add_2_B6_stall_region_out_c0_exe575;
    wire [0:0] bb_double_add_2_B6_stall_region_out_c0_exe6;
    wire [31:0] bb_double_add_2_B6_stall_region_out_lm102_double_add_2_avm_address;
    wire [0:0] bb_double_add_2_B6_stall_region_out_lm102_double_add_2_avm_burstcount;
    wire [7:0] bb_double_add_2_B6_stall_region_out_lm102_double_add_2_avm_byteenable;
    wire [0:0] bb_double_add_2_B6_stall_region_out_lm102_double_add_2_avm_enable;
    wire [0:0] bb_double_add_2_B6_stall_region_out_lm102_double_add_2_avm_read;
    wire [0:0] bb_double_add_2_B6_stall_region_out_lm102_double_add_2_avm_write;
    wire [63:0] bb_double_add_2_B6_stall_region_out_lm102_double_add_2_avm_writedata;
    wire [31:0] bb_double_add_2_B6_stall_region_out_memdep_4_double_add_2_avm_address;
    wire [0:0] bb_double_add_2_B6_stall_region_out_memdep_4_double_add_2_avm_burstcount;
    wire [7:0] bb_double_add_2_B6_stall_region_out_memdep_4_double_add_2_avm_byteenable;
    wire [0:0] bb_double_add_2_B6_stall_region_out_memdep_4_double_add_2_avm_enable;
    wire [0:0] bb_double_add_2_B6_stall_region_out_memdep_4_double_add_2_avm_read;
    wire [0:0] bb_double_add_2_B6_stall_region_out_memdep_4_double_add_2_avm_write;
    wire [63:0] bb_double_add_2_B6_stall_region_out_memdep_4_double_add_2_avm_writedata;
    wire [0:0] bb_double_add_2_B6_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_double_add_2_B6_stall_region_out_stall_out;
    wire [0:0] bb_double_add_2_B6_stall_region_out_valid_out;
    wire [0:0] double_add_2_B6_branch_out_c0_exe272;
    wire [0:0] double_add_2_B6_branch_out_c0_exe575;
    wire [0:0] double_add_2_B6_branch_out_c0_exe6;
    wire [0:0] double_add_2_B6_branch_out_stall_out;
    wire [0:0] double_add_2_B6_branch_out_valid_out_0;
    wire [0:0] double_add_2_B6_branch_out_valid_out_1;
    wire [0:0] double_add_2_B6_merge_out_forked10;
    wire [0:0] double_add_2_B6_merge_out_memdep_phi5_pop1748;
    wire [0:0] double_add_2_B6_merge_out_notcmp2649;
    wire [0:0] double_add_2_B6_merge_out_stall_out_0;
    wire [0:0] double_add_2_B6_merge_out_stall_out_1;
    wire [0:0] double_add_2_B6_merge_out_unnamed_double_add_26;
    wire [0:0] double_add_2_B6_merge_out_unnamed_double_add_27;
    wire [0:0] double_add_2_B6_merge_out_valid_out;


    // double_add_2_B6_merge(BLACKBOX,4)
    double_add_2_B6_merge thedouble_add_2_B6_merge (
        .in_forked10_0(in_forked10_0),
        .in_forked10_1(in_forked10_1),
        .in_memdep_phi5_pop1748_0(in_memdep_phi5_pop1748_0),
        .in_memdep_phi5_pop1748_1(in_memdep_phi5_pop1748_1),
        .in_notcmp2649_0(in_notcmp2649_0),
        .in_notcmp2649_1(in_notcmp2649_1),
        .in_stall_in(bb_double_add_2_B6_stall_region_out_stall_out),
        .in_unnamed_double_add_26_0(in_unnamed_double_add_26_0),
        .in_unnamed_double_add_26_1(in_unnamed_double_add_26_1),
        .in_unnamed_double_add_27_0(in_unnamed_double_add_27_0),
        .in_unnamed_double_add_27_1(in_unnamed_double_add_27_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked10(double_add_2_B6_merge_out_forked10),
        .out_memdep_phi5_pop1748(double_add_2_B6_merge_out_memdep_phi5_pop1748),
        .out_notcmp2649(double_add_2_B6_merge_out_notcmp2649),
        .out_stall_out_0(double_add_2_B6_merge_out_stall_out_0),
        .out_stall_out_1(double_add_2_B6_merge_out_stall_out_1),
        .out_unnamed_double_add_26(double_add_2_B6_merge_out_unnamed_double_add_26),
        .out_unnamed_double_add_27(double_add_2_B6_merge_out_unnamed_double_add_27),
        .out_valid_out(double_add_2_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_double_add_2_B6_stall_region(BLACKBOX,2)
    double_add_2_bb_B6_stall_region thebb_double_add_2_B6_stall_region (
        .in_flush(in_flush),
        .in_forked10(double_add_2_B6_merge_out_forked10),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_lm102_double_add_2_avm_readdata(in_lm102_double_add_2_avm_readdata),
        .in_lm102_double_add_2_avm_readdatavalid(in_lm102_double_add_2_avm_readdatavalid),
        .in_lm102_double_add_2_avm_waitrequest(in_lm102_double_add_2_avm_waitrequest),
        .in_lm102_double_add_2_avm_writeack(in_lm102_double_add_2_avm_writeack),
        .in_memdep_4_double_add_2_avm_readdata(in_memdep_4_double_add_2_avm_readdata),
        .in_memdep_4_double_add_2_avm_readdatavalid(in_memdep_4_double_add_2_avm_readdatavalid),
        .in_memdep_4_double_add_2_avm_waitrequest(in_memdep_4_double_add_2_avm_waitrequest),
        .in_memdep_4_double_add_2_avm_writeack(in_memdep_4_double_add_2_avm_writeack),
        .in_memdep_phi5_pop1748(double_add_2_B6_merge_out_memdep_phi5_pop1748),
        .in_notcmp2649(double_add_2_B6_merge_out_notcmp2649),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(double_add_2_B6_branch_out_stall_out),
        .in_unnamed_double_add_26(double_add_2_B6_merge_out_unnamed_double_add_26),
        .in_unnamed_double_add_27(double_add_2_B6_merge_out_unnamed_double_add_27),
        .in_valid_in(double_add_2_B6_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_double_add_26_exiting_stall_out(bb_double_add_2_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_double_add_26_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_double_add_26_exiting_valid_out(bb_double_add_2_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_double_add_26_exiting_valid_out),
        .out_c0_exe272(bb_double_add_2_B6_stall_region_out_c0_exe272),
        .out_c0_exe474(bb_double_add_2_B6_stall_region_out_c0_exe474),
        .out_c0_exe575(bb_double_add_2_B6_stall_region_out_c0_exe575),
        .out_c0_exe6(bb_double_add_2_B6_stall_region_out_c0_exe6),
        .out_lm102_double_add_2_avm_address(bb_double_add_2_B6_stall_region_out_lm102_double_add_2_avm_address),
        .out_lm102_double_add_2_avm_burstcount(bb_double_add_2_B6_stall_region_out_lm102_double_add_2_avm_burstcount),
        .out_lm102_double_add_2_avm_byteenable(bb_double_add_2_B6_stall_region_out_lm102_double_add_2_avm_byteenable),
        .out_lm102_double_add_2_avm_enable(bb_double_add_2_B6_stall_region_out_lm102_double_add_2_avm_enable),
        .out_lm102_double_add_2_avm_read(bb_double_add_2_B6_stall_region_out_lm102_double_add_2_avm_read),
        .out_lm102_double_add_2_avm_write(bb_double_add_2_B6_stall_region_out_lm102_double_add_2_avm_write),
        .out_lm102_double_add_2_avm_writedata(bb_double_add_2_B6_stall_region_out_lm102_double_add_2_avm_writedata),
        .out_memdep_4_double_add_2_avm_address(bb_double_add_2_B6_stall_region_out_memdep_4_double_add_2_avm_address),
        .out_memdep_4_double_add_2_avm_burstcount(bb_double_add_2_B6_stall_region_out_memdep_4_double_add_2_avm_burstcount),
        .out_memdep_4_double_add_2_avm_byteenable(bb_double_add_2_B6_stall_region_out_memdep_4_double_add_2_avm_byteenable),
        .out_memdep_4_double_add_2_avm_enable(bb_double_add_2_B6_stall_region_out_memdep_4_double_add_2_avm_enable),
        .out_memdep_4_double_add_2_avm_read(bb_double_add_2_B6_stall_region_out_memdep_4_double_add_2_avm_read),
        .out_memdep_4_double_add_2_avm_write(bb_double_add_2_B6_stall_region_out_memdep_4_double_add_2_avm_write),
        .out_memdep_4_double_add_2_avm_writedata(bb_double_add_2_B6_stall_region_out_memdep_4_double_add_2_avm_writedata),
        .out_pipeline_valid_out(bb_double_add_2_B6_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_double_add_2_B6_stall_region_out_stall_out),
        .out_valid_out(bb_double_add_2_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // double_add_2_B6_branch(BLACKBOX,3)
    double_add_2_B6_branch thedouble_add_2_B6_branch (
        .in_c0_exe272(bb_double_add_2_B6_stall_region_out_c0_exe272),
        .in_c0_exe474(bb_double_add_2_B6_stall_region_out_c0_exe474),
        .in_c0_exe575(bb_double_add_2_B6_stall_region_out_c0_exe575),
        .in_c0_exe6(bb_double_add_2_B6_stall_region_out_c0_exe6),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_double_add_2_B6_stall_region_out_valid_out),
        .out_c0_exe272(double_add_2_B6_branch_out_c0_exe272),
        .out_c0_exe575(double_add_2_B6_branch_out_c0_exe575),
        .out_c0_exe6(double_add_2_B6_branch_out_c0_exe6),
        .out_stall_out(double_add_2_B6_branch_out_stall_out),
        .out_valid_out_0(double_add_2_B6_branch_out_valid_out_0),
        .out_valid_out_1(double_add_2_B6_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe272(GPOUT,31)
    assign out_c0_exe272 = double_add_2_B6_branch_out_c0_exe272;

    // out_c0_exe575(GPOUT,32)
    assign out_c0_exe575 = double_add_2_B6_branch_out_c0_exe575;

    // out_c0_exe6(GPOUT,33)
    assign out_c0_exe6 = double_add_2_B6_branch_out_c0_exe6;

    // out_exiting_stall_out(GPOUT,34)
    assign out_exiting_stall_out = bb_double_add_2_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_double_add_26_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,35)
    assign out_exiting_valid_out = bb_double_add_2_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_double_add_26_exiting_valid_out;

    // out_lm102_double_add_2_avm_address(GPOUT,36)
    assign out_lm102_double_add_2_avm_address = bb_double_add_2_B6_stall_region_out_lm102_double_add_2_avm_address;

    // out_lm102_double_add_2_avm_burstcount(GPOUT,37)
    assign out_lm102_double_add_2_avm_burstcount = bb_double_add_2_B6_stall_region_out_lm102_double_add_2_avm_burstcount;

    // out_lm102_double_add_2_avm_byteenable(GPOUT,38)
    assign out_lm102_double_add_2_avm_byteenable = bb_double_add_2_B6_stall_region_out_lm102_double_add_2_avm_byteenable;

    // out_lm102_double_add_2_avm_enable(GPOUT,39)
    assign out_lm102_double_add_2_avm_enable = bb_double_add_2_B6_stall_region_out_lm102_double_add_2_avm_enable;

    // out_lm102_double_add_2_avm_read(GPOUT,40)
    assign out_lm102_double_add_2_avm_read = bb_double_add_2_B6_stall_region_out_lm102_double_add_2_avm_read;

    // out_lm102_double_add_2_avm_write(GPOUT,41)
    assign out_lm102_double_add_2_avm_write = bb_double_add_2_B6_stall_region_out_lm102_double_add_2_avm_write;

    // out_lm102_double_add_2_avm_writedata(GPOUT,42)
    assign out_lm102_double_add_2_avm_writedata = bb_double_add_2_B6_stall_region_out_lm102_double_add_2_avm_writedata;

    // out_memdep_4_double_add_2_avm_address(GPOUT,43)
    assign out_memdep_4_double_add_2_avm_address = bb_double_add_2_B6_stall_region_out_memdep_4_double_add_2_avm_address;

    // out_memdep_4_double_add_2_avm_burstcount(GPOUT,44)
    assign out_memdep_4_double_add_2_avm_burstcount = bb_double_add_2_B6_stall_region_out_memdep_4_double_add_2_avm_burstcount;

    // out_memdep_4_double_add_2_avm_byteenable(GPOUT,45)
    assign out_memdep_4_double_add_2_avm_byteenable = bb_double_add_2_B6_stall_region_out_memdep_4_double_add_2_avm_byteenable;

    // out_memdep_4_double_add_2_avm_enable(GPOUT,46)
    assign out_memdep_4_double_add_2_avm_enable = bb_double_add_2_B6_stall_region_out_memdep_4_double_add_2_avm_enable;

    // out_memdep_4_double_add_2_avm_read(GPOUT,47)
    assign out_memdep_4_double_add_2_avm_read = bb_double_add_2_B6_stall_region_out_memdep_4_double_add_2_avm_read;

    // out_memdep_4_double_add_2_avm_write(GPOUT,48)
    assign out_memdep_4_double_add_2_avm_write = bb_double_add_2_B6_stall_region_out_memdep_4_double_add_2_avm_write;

    // out_memdep_4_double_add_2_avm_writedata(GPOUT,49)
    assign out_memdep_4_double_add_2_avm_writedata = bb_double_add_2_B6_stall_region_out_memdep_4_double_add_2_avm_writedata;

    // out_stall_in_0(GPOUT,50)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,51)
    assign out_stall_out_0 = double_add_2_B6_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,52)
    assign out_stall_out_1 = double_add_2_B6_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,53)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,54)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,55)
    assign out_valid_out_0 = double_add_2_B6_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,56)
    assign out_valid_out_1 = double_add_2_B6_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,58)
    assign out_pipeline_valid_out = bb_double_add_2_B6_stall_region_out_pipeline_valid_out;

endmodule
