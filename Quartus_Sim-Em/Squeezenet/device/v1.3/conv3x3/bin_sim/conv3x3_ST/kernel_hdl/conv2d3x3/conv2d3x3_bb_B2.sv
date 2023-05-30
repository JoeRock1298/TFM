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

// SystemVerilog created from conv2d3x3_bb_B2
// SystemVerilog created on Tue May 30 12:33:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B2 (
    input wire [63:0] in_filter_bias,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [32:0] in_intel_reserved_ffwd_7_0,
    input wire [63:0] in_intel_reserved_ffwd_8_0,
    input wire [511:0] in_lm25_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm25_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_lm25_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm25_conv2d3x3_avm_writeack,
    input wire [31:0] in_output_size,
    input wire [31:0] in_pad,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_stride,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_c0_exe1,
    output wire [63:0] out_c0_exe2,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_lm25,
    output wire [30:0] out_lm25_conv2d3x3_avm_address,
    output wire [4:0] out_lm25_conv2d3x3_avm_burstcount,
    output wire [63:0] out_lm25_conv2d3x3_avm_byteenable,
    output wire [0:0] out_lm25_conv2d3x3_avm_enable,
    output wire [0:0] out_lm25_conv2d3x3_avm_read,
    output wire [0:0] out_lm25_conv2d3x3_avm_write,
    output wire [511:0] out_lm25_conv2d3x3_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv2d3x3_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_conv2d3x32_exiting_stall_out;
    wire [0:0] bb_conv2d3x3_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_conv2d3x32_exiting_valid_out;
    wire [63:0] bb_conv2d3x3_B2_stall_region_out_c0_exe1;
    wire [63:0] bb_conv2d3x3_B2_stall_region_out_c0_exe2;
    wire [0:0] bb_conv2d3x3_B2_stall_region_out_c0_exe6;
    wire [31:0] bb_conv2d3x3_B2_stall_region_out_lm25;
    wire [30:0] bb_conv2d3x3_B2_stall_region_out_lm25_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B2_stall_region_out_lm25_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B2_stall_region_out_lm25_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B2_stall_region_out_lm25_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B2_stall_region_out_lm25_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B2_stall_region_out_lm25_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B2_stall_region_out_lm25_conv2d3x3_avm_writedata;
    wire [0:0] bb_conv2d3x3_B2_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv2d3x3_B2_stall_region_out_stall_out;
    wire [0:0] bb_conv2d3x3_B2_stall_region_out_valid_out;
    wire [63:0] conv2d3x3_B2_branch_out_c0_exe1;
    wire [63:0] conv2d3x3_B2_branch_out_c0_exe2;
    wire [0:0] conv2d3x3_B2_branch_out_c0_exe6;
    wire [31:0] conv2d3x3_B2_branch_out_lm25;
    wire [0:0] conv2d3x3_B2_branch_out_stall_out;
    wire [0:0] conv2d3x3_B2_branch_out_valid_out_0;
    wire [0:0] conv2d3x3_B2_merge_out_forked;
    wire [0:0] conv2d3x3_B2_merge_out_stall_out_0;
    wire [0:0] conv2d3x3_B2_merge_out_stall_out_1;
    wire [0:0] conv2d3x3_B2_merge_out_valid_out;


    // conv2d3x3_B2_merge(BLACKBOX,4)
    conv2d3x3_B2_merge theconv2d3x3_B2_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_stall_in(bb_conv2d3x3_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(conv2d3x3_B2_merge_out_forked),
        .out_stall_out_0(conv2d3x3_B2_merge_out_stall_out_0),
        .out_stall_out_1(conv2d3x3_B2_merge_out_stall_out_1),
        .out_valid_out(conv2d3x3_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B2_stall_region(BLACKBOX,2)
    conv2d3x3_bb_B2_stall_region thebb_conv2d3x3_B2_stall_region (
        .in_filter_bias(in_filter_bias),
        .in_flush(in_flush),
        .in_forked(conv2d3x3_B2_merge_out_forked),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_lm25_conv2d3x3_avm_readdata(in_lm25_conv2d3x3_avm_readdata),
        .in_lm25_conv2d3x3_avm_readdatavalid(in_lm25_conv2d3x3_avm_readdatavalid),
        .in_lm25_conv2d3x3_avm_waitrequest(in_lm25_conv2d3x3_avm_waitrequest),
        .in_lm25_conv2d3x3_avm_writeack(in_lm25_conv2d3x3_avm_writeack),
        .in_output_size(in_output_size),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(conv2d3x3_B2_branch_out_stall_out),
        .in_valid_in(conv2d3x3_B2_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_conv2d3x32_exiting_stall_out(bb_conv2d3x3_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_conv2d3x32_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_conv2d3x32_exiting_valid_out(bb_conv2d3x3_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_conv2d3x32_exiting_valid_out),
        .out_c0_exe1(bb_conv2d3x3_B2_stall_region_out_c0_exe1),
        .out_c0_exe2(bb_conv2d3x3_B2_stall_region_out_c0_exe2),
        .out_c0_exe6(bb_conv2d3x3_B2_stall_region_out_c0_exe6),
        .out_lm25(bb_conv2d3x3_B2_stall_region_out_lm25),
        .out_lm25_conv2d3x3_avm_address(bb_conv2d3x3_B2_stall_region_out_lm25_conv2d3x3_avm_address),
        .out_lm25_conv2d3x3_avm_burstcount(bb_conv2d3x3_B2_stall_region_out_lm25_conv2d3x3_avm_burstcount),
        .out_lm25_conv2d3x3_avm_byteenable(bb_conv2d3x3_B2_stall_region_out_lm25_conv2d3x3_avm_byteenable),
        .out_lm25_conv2d3x3_avm_enable(bb_conv2d3x3_B2_stall_region_out_lm25_conv2d3x3_avm_enable),
        .out_lm25_conv2d3x3_avm_read(bb_conv2d3x3_B2_stall_region_out_lm25_conv2d3x3_avm_read),
        .out_lm25_conv2d3x3_avm_write(bb_conv2d3x3_B2_stall_region_out_lm25_conv2d3x3_avm_write),
        .out_lm25_conv2d3x3_avm_writedata(bb_conv2d3x3_B2_stall_region_out_lm25_conv2d3x3_avm_writedata),
        .out_pipeline_valid_out(bb_conv2d3x3_B2_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv2d3x3_B2_stall_region_out_stall_out),
        .out_valid_out(bb_conv2d3x3_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d3x3_B2_branch(BLACKBOX,3)
    conv2d3x3_B2_branch theconv2d3x3_B2_branch (
        .in_c0_exe1(bb_conv2d3x3_B2_stall_region_out_c0_exe1),
        .in_c0_exe2(bb_conv2d3x3_B2_stall_region_out_c0_exe2),
        .in_c0_exe6(bb_conv2d3x3_B2_stall_region_out_c0_exe6),
        .in_lm25(bb_conv2d3x3_B2_stall_region_out_lm25),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_conv2d3x3_B2_stall_region_out_valid_out),
        .out_c0_exe1(conv2d3x3_B2_branch_out_c0_exe1),
        .out_c0_exe2(conv2d3x3_B2_branch_out_c0_exe2),
        .out_c0_exe6(conv2d3x3_B2_branch_out_c0_exe6),
        .out_lm25(conv2d3x3_B2_branch_out_lm25),
        .out_stall_out(conv2d3x3_B2_branch_out_stall_out),
        .out_valid_out_0(conv2d3x3_B2_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1(GPOUT,27)
    assign out_c0_exe1 = conv2d3x3_B2_branch_out_c0_exe1;

    // out_c0_exe2(GPOUT,28)
    assign out_c0_exe2 = conv2d3x3_B2_branch_out_c0_exe2;

    // out_c0_exe6(GPOUT,29)
    assign out_c0_exe6 = conv2d3x3_B2_branch_out_c0_exe6;

    // out_exiting_stall_out(GPOUT,30)
    assign out_exiting_stall_out = bb_conv2d3x3_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_conv2d3x32_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,31)
    assign out_exiting_valid_out = bb_conv2d3x3_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_conv2d3x32_exiting_valid_out;

    // out_lm25(GPOUT,32)
    assign out_lm25 = conv2d3x3_B2_branch_out_lm25;

    // out_lm25_conv2d3x3_avm_address(GPOUT,33)
    assign out_lm25_conv2d3x3_avm_address = bb_conv2d3x3_B2_stall_region_out_lm25_conv2d3x3_avm_address;

    // out_lm25_conv2d3x3_avm_burstcount(GPOUT,34)
    assign out_lm25_conv2d3x3_avm_burstcount = bb_conv2d3x3_B2_stall_region_out_lm25_conv2d3x3_avm_burstcount;

    // out_lm25_conv2d3x3_avm_byteenable(GPOUT,35)
    assign out_lm25_conv2d3x3_avm_byteenable = bb_conv2d3x3_B2_stall_region_out_lm25_conv2d3x3_avm_byteenable;

    // out_lm25_conv2d3x3_avm_enable(GPOUT,36)
    assign out_lm25_conv2d3x3_avm_enable = bb_conv2d3x3_B2_stall_region_out_lm25_conv2d3x3_avm_enable;

    // out_lm25_conv2d3x3_avm_read(GPOUT,37)
    assign out_lm25_conv2d3x3_avm_read = bb_conv2d3x3_B2_stall_region_out_lm25_conv2d3x3_avm_read;

    // out_lm25_conv2d3x3_avm_write(GPOUT,38)
    assign out_lm25_conv2d3x3_avm_write = bb_conv2d3x3_B2_stall_region_out_lm25_conv2d3x3_avm_write;

    // out_lm25_conv2d3x3_avm_writedata(GPOUT,39)
    assign out_lm25_conv2d3x3_avm_writedata = bb_conv2d3x3_B2_stall_region_out_lm25_conv2d3x3_avm_writedata;

    // out_stall_out_0(GPOUT,40)
    assign out_stall_out_0 = conv2d3x3_B2_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,41)
    assign out_stall_out_1 = conv2d3x3_B2_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,42)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,43)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,44)
    assign out_valid_out_0 = conv2d3x3_B2_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,46)
    assign out_pipeline_valid_out = bb_conv2d3x3_B2_stall_region_out_pipeline_valid_out;

endmodule
