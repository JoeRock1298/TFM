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

// SystemVerilog created from conv2d1x1_bb_B0
// SystemVerilog created on Wed May 17 13:49:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B0 (
    input wire [0:0] in_feedback_in_0,
    output wire [0:0] out_feedback_stall_out_0,
    input wire [0:0] in_feedback_valid_in_0,
    input wire [63:0] in_filter_bias,
    input wire [31:0] in_filter_size,
    input wire [63:0] in_filter_weight,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [63:0] in_output_im,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_intel_reserved_ffwd_0_0,
    output wire [31:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_intel_reserved_ffwd_2_0,
    output wire [32:0] out_intel_reserved_ffwd_3_0,
    output wire [32:0] out_intel_reserved_ffwd_4_0,
    output wire [63:0] out_intel_reserved_ffwd_5_0,
    output wire [63:0] out_intel_reserved_ffwd_6_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv2d1x1_B0_stall_region_out_feedback_stall_out_0;
    wire [0:0] bb_conv2d1x1_B0_stall_region_out_intel_reserved_ffwd_0_0;
    wire [31:0] bb_conv2d1x1_B0_stall_region_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_conv2d1x1_B0_stall_region_out_intel_reserved_ffwd_2_0;
    wire [32:0] bb_conv2d1x1_B0_stall_region_out_intel_reserved_ffwd_3_0;
    wire [32:0] bb_conv2d1x1_B0_stall_region_out_intel_reserved_ffwd_4_0;
    wire [63:0] bb_conv2d1x1_B0_stall_region_out_intel_reserved_ffwd_5_0;
    wire [63:0] bb_conv2d1x1_B0_stall_region_out_intel_reserved_ffwd_6_0;
    wire [0:0] bb_conv2d1x1_B0_stall_region_out_stall_out;
    wire [0:0] bb_conv2d1x1_B0_stall_region_out_valid_out;
    wire [0:0] conv2d1x1_B0_branch_out_stall_out;
    wire [0:0] conv2d1x1_B0_branch_out_valid_out_0;
    wire [0:0] conv2d1x1_B0_merge_out_stall_out_0;
    wire [0:0] conv2d1x1_B0_merge_out_valid_out;


    // conv2d1x1_B0_merge(BLACKBOX,4)
    conv2d1x1_B0_merge theconv2d1x1_B0_merge (
        .in_stall_in(bb_conv2d1x1_B0_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(conv2d1x1_B0_merge_out_stall_out_0),
        .out_valid_out(conv2d1x1_B0_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B0_branch(BLACKBOX,3)
    conv2d1x1_B0_branch theconv2d1x1_B0_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_conv2d1x1_B0_stall_region_out_valid_out),
        .out_stall_out(conv2d1x1_B0_branch_out_stall_out),
        .out_valid_out_0(conv2d1x1_B0_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B0_stall_region(BLACKBOX,2)
    conv2d1x1_bb_B0_stall_region thebb_conv2d1x1_B0_stall_region (
        .in_feedback_in_0(in_feedback_in_0),
        .in_feedback_valid_in_0(in_feedback_valid_in_0),
        .in_filter_size(in_filter_size),
        .in_filter_weight(in_filter_weight),
        .in_input_channels(in_input_channels),
        .in_input_size(in_input_size),
        .in_output_im(in_output_im),
        .in_stall_in(conv2d1x1_B0_branch_out_stall_out),
        .in_valid_in(conv2d1x1_B0_merge_out_valid_out),
        .out_feedback_stall_out_0(bb_conv2d1x1_B0_stall_region_out_feedback_stall_out_0),
        .out_intel_reserved_ffwd_0_0(bb_conv2d1x1_B0_stall_region_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_conv2d1x1_B0_stall_region_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_conv2d1x1_B0_stall_region_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_conv2d1x1_B0_stall_region_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_conv2d1x1_B0_stall_region_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_conv2d1x1_B0_stall_region_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_conv2d1x1_B0_stall_region_out_intel_reserved_ffwd_6_0),
        .out_stall_out(bb_conv2d1x1_B0_stall_region_out_stall_out),
        .out_valid_out(bb_conv2d1x1_B0_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_0_sync(GPOUT,6)
    assign out_feedback_stall_out_0 = bb_conv2d1x1_B0_stall_region_out_feedback_stall_out_0;

    // out_intel_reserved_ffwd_0_0(GPOUT,17)
    assign out_intel_reserved_ffwd_0_0 = bb_conv2d1x1_B0_stall_region_out_intel_reserved_ffwd_0_0;

    // out_intel_reserved_ffwd_1_0(GPOUT,18)
    assign out_intel_reserved_ffwd_1_0 = bb_conv2d1x1_B0_stall_region_out_intel_reserved_ffwd_1_0;

    // out_intel_reserved_ffwd_2_0(GPOUT,19)
    assign out_intel_reserved_ffwd_2_0 = bb_conv2d1x1_B0_stall_region_out_intel_reserved_ffwd_2_0;

    // out_intel_reserved_ffwd_3_0(GPOUT,20)
    assign out_intel_reserved_ffwd_3_0 = bb_conv2d1x1_B0_stall_region_out_intel_reserved_ffwd_3_0;

    // out_intel_reserved_ffwd_4_0(GPOUT,21)
    assign out_intel_reserved_ffwd_4_0 = bb_conv2d1x1_B0_stall_region_out_intel_reserved_ffwd_4_0;

    // out_intel_reserved_ffwd_5_0(GPOUT,22)
    assign out_intel_reserved_ffwd_5_0 = bb_conv2d1x1_B0_stall_region_out_intel_reserved_ffwd_5_0;

    // out_intel_reserved_ffwd_6_0(GPOUT,23)
    assign out_intel_reserved_ffwd_6_0 = bb_conv2d1x1_B0_stall_region_out_intel_reserved_ffwd_6_0;

    // out_stall_out_0(GPOUT,24)
    assign out_stall_out_0 = conv2d1x1_B0_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,25)
    assign out_valid_out_0 = conv2d1x1_B0_branch_out_valid_out_0;

endmodule
