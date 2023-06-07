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

// SystemVerilog created from conv2d1x1_bb_B3
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B3 (
    input wire [63:0] in_filter_bias,
    input wire [63:0] in_filter_weight,
    input wire [0:0] in_forked26_0,
    input wire [0:0] in_forked26_1,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_lm42_0,
    input wire [31:0] in_lm42_1,
    input wire [31:0] in_mul1345_0,
    input wire [31:0] in_mul1345_1,
    input wire [31:0] in_mul2348_0,
    input wire [31:0] in_mul2348_1,
    input wire [31:0] in_mul39_0,
    input wire [31:0] in_mul39_1,
    input wire [0:0] in_notcmp2251_0,
    input wire [0:0] in_notcmp2251_1,
    input wire [63:0] in_output_im,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_unnamed_conv2d1x17_0,
    input wire [0:0] in_unnamed_conv2d1x17_1,
    input wire [0:0] in_unnamed_conv2d1x18_0,
    input wire [0:0] in_unnamed_conv2d1x18_1,
    input wire [32:0] in_unnamed_conv2d1x19_0,
    input wire [32:0] in_unnamed_conv2d1x19_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe1095,
    output wire [31:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [0:0] out_c0_exe13,
    output wire [32:0] out_c0_exe14,
    output wire [31:0] out_c0_exe15,
    output wire [31:0] out_c0_exe16,
    output wire [31:0] out_c0_exe17,
    output wire [0:0] out_c0_exe18,
    output wire [0:0] out_c0_exe287,
    output wire [31:0] out_c0_exe388,
    output wire [31:0] out_c0_exe489,
    output wire [0:0] out_c0_exe590,
    output wire [0:0] out_c0_exe691,
    output wire [31:0] out_c0_exe792,
    output wire [31:0] out_c0_exe893,
    output wire [31:0] out_c0_exe994,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
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

    wire [0:0] bb_conv2d1x1_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_conv2d1x12_exiting_stall_out;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_conv2d1x12_exiting_valid_out;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_c0_exe1095;
    wire [31:0] bb_conv2d1x1_B3_stall_region_out_c0_exe11;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_c0_exe12;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_c0_exe13;
    wire [32:0] bb_conv2d1x1_B3_stall_region_out_c0_exe14;
    wire [31:0] bb_conv2d1x1_B3_stall_region_out_c0_exe15;
    wire [31:0] bb_conv2d1x1_B3_stall_region_out_c0_exe16;
    wire [31:0] bb_conv2d1x1_B3_stall_region_out_c0_exe17;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_c0_exe18;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_c0_exe287;
    wire [31:0] bb_conv2d1x1_B3_stall_region_out_c0_exe388;
    wire [31:0] bb_conv2d1x1_B3_stall_region_out_c0_exe489;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_c0_exe590;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_c0_exe691;
    wire [31:0] bb_conv2d1x1_B3_stall_region_out_c0_exe792;
    wire [31:0] bb_conv2d1x1_B3_stall_region_out_c0_exe893;
    wire [31:0] bb_conv2d1x1_B3_stall_region_out_c0_exe994;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_stall_out;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_valid_out;
    wire [0:0] conv2d1x1_B3_branch_out_c0_exe1095;
    wire [31:0] conv2d1x1_B3_branch_out_c0_exe11;
    wire [0:0] conv2d1x1_B3_branch_out_c0_exe12;
    wire [0:0] conv2d1x1_B3_branch_out_c0_exe13;
    wire [32:0] conv2d1x1_B3_branch_out_c0_exe14;
    wire [31:0] conv2d1x1_B3_branch_out_c0_exe15;
    wire [31:0] conv2d1x1_B3_branch_out_c0_exe16;
    wire [31:0] conv2d1x1_B3_branch_out_c0_exe17;
    wire [0:0] conv2d1x1_B3_branch_out_c0_exe18;
    wire [0:0] conv2d1x1_B3_branch_out_c0_exe287;
    wire [31:0] conv2d1x1_B3_branch_out_c0_exe388;
    wire [31:0] conv2d1x1_B3_branch_out_c0_exe489;
    wire [0:0] conv2d1x1_B3_branch_out_c0_exe590;
    wire [0:0] conv2d1x1_B3_branch_out_c0_exe691;
    wire [31:0] conv2d1x1_B3_branch_out_c0_exe792;
    wire [31:0] conv2d1x1_B3_branch_out_c0_exe893;
    wire [31:0] conv2d1x1_B3_branch_out_c0_exe994;
    wire [0:0] conv2d1x1_B3_branch_out_stall_out;
    wire [0:0] conv2d1x1_B3_branch_out_valid_out_0;
    wire [0:0] conv2d1x1_B3_merge_out_forked26;
    wire [31:0] conv2d1x1_B3_merge_out_lm42;
    wire [31:0] conv2d1x1_B3_merge_out_mul1345;
    wire [31:0] conv2d1x1_B3_merge_out_mul2348;
    wire [31:0] conv2d1x1_B3_merge_out_mul39;
    wire [0:0] conv2d1x1_B3_merge_out_notcmp2251;
    wire [0:0] conv2d1x1_B3_merge_out_stall_out_0;
    wire [0:0] conv2d1x1_B3_merge_out_stall_out_1;
    wire [0:0] conv2d1x1_B3_merge_out_unnamed_conv2d1x17;
    wire [0:0] conv2d1x1_B3_merge_out_unnamed_conv2d1x18;
    wire [32:0] conv2d1x1_B3_merge_out_unnamed_conv2d1x19;
    wire [0:0] conv2d1x1_B3_merge_out_valid_out;


    // conv2d1x1_B3_merge(BLACKBOX,4)
    conv2d1x1_B3_merge theconv2d1x1_B3_merge (
        .in_forked26_0(in_forked26_0),
        .in_forked26_1(in_forked26_1),
        .in_lm42_0(in_lm42_0),
        .in_lm42_1(in_lm42_1),
        .in_mul1345_0(in_mul1345_0),
        .in_mul1345_1(in_mul1345_1),
        .in_mul2348_0(in_mul2348_0),
        .in_mul2348_1(in_mul2348_1),
        .in_mul39_0(in_mul39_0),
        .in_mul39_1(in_mul39_1),
        .in_notcmp2251_0(in_notcmp2251_0),
        .in_notcmp2251_1(in_notcmp2251_1),
        .in_stall_in(bb_conv2d1x1_B3_stall_region_out_stall_out),
        .in_unnamed_conv2d1x17_0(in_unnamed_conv2d1x17_0),
        .in_unnamed_conv2d1x17_1(in_unnamed_conv2d1x17_1),
        .in_unnamed_conv2d1x18_0(in_unnamed_conv2d1x18_0),
        .in_unnamed_conv2d1x18_1(in_unnamed_conv2d1x18_1),
        .in_unnamed_conv2d1x19_0(in_unnamed_conv2d1x19_0),
        .in_unnamed_conv2d1x19_1(in_unnamed_conv2d1x19_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked26(conv2d1x1_B3_merge_out_forked26),
        .out_lm42(conv2d1x1_B3_merge_out_lm42),
        .out_mul1345(conv2d1x1_B3_merge_out_mul1345),
        .out_mul2348(conv2d1x1_B3_merge_out_mul2348),
        .out_mul39(conv2d1x1_B3_merge_out_mul39),
        .out_notcmp2251(conv2d1x1_B3_merge_out_notcmp2251),
        .out_stall_out_0(conv2d1x1_B3_merge_out_stall_out_0),
        .out_stall_out_1(conv2d1x1_B3_merge_out_stall_out_1),
        .out_unnamed_conv2d1x17(conv2d1x1_B3_merge_out_unnamed_conv2d1x17),
        .out_unnamed_conv2d1x18(conv2d1x1_B3_merge_out_unnamed_conv2d1x18),
        .out_unnamed_conv2d1x19(conv2d1x1_B3_merge_out_unnamed_conv2d1x19),
        .out_valid_out(conv2d1x1_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B3_stall_region(BLACKBOX,2)
    conv2d1x1_bb_B3_stall_region thebb_conv2d1x1_B3_stall_region (
        .in_forked26(conv2d1x1_B3_merge_out_forked26),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_lm42(conv2d1x1_B3_merge_out_lm42),
        .in_mul1345(conv2d1x1_B3_merge_out_mul1345),
        .in_mul2348(conv2d1x1_B3_merge_out_mul2348),
        .in_mul39(conv2d1x1_B3_merge_out_mul39),
        .in_notcmp2251(conv2d1x1_B3_merge_out_notcmp2251),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(conv2d1x1_B3_branch_out_stall_out),
        .in_unnamed_conv2d1x17(conv2d1x1_B3_merge_out_unnamed_conv2d1x17),
        .in_unnamed_conv2d1x18(conv2d1x1_B3_merge_out_unnamed_conv2d1x18),
        .in_unnamed_conv2d1x19(conv2d1x1_B3_merge_out_unnamed_conv2d1x19),
        .in_valid_in(conv2d1x1_B3_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_conv2d1x12_exiting_stall_out(bb_conv2d1x1_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_conv2d1x12_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_conv2d1x12_exiting_valid_out(bb_conv2d1x1_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_conv2d1x12_exiting_valid_out),
        .out_c0_exe1095(bb_conv2d1x1_B3_stall_region_out_c0_exe1095),
        .out_c0_exe11(bb_conv2d1x1_B3_stall_region_out_c0_exe11),
        .out_c0_exe12(bb_conv2d1x1_B3_stall_region_out_c0_exe12),
        .out_c0_exe13(bb_conv2d1x1_B3_stall_region_out_c0_exe13),
        .out_c0_exe14(bb_conv2d1x1_B3_stall_region_out_c0_exe14),
        .out_c0_exe15(bb_conv2d1x1_B3_stall_region_out_c0_exe15),
        .out_c0_exe16(bb_conv2d1x1_B3_stall_region_out_c0_exe16),
        .out_c0_exe17(bb_conv2d1x1_B3_stall_region_out_c0_exe17),
        .out_c0_exe18(bb_conv2d1x1_B3_stall_region_out_c0_exe18),
        .out_c0_exe287(bb_conv2d1x1_B3_stall_region_out_c0_exe287),
        .out_c0_exe388(bb_conv2d1x1_B3_stall_region_out_c0_exe388),
        .out_c0_exe489(bb_conv2d1x1_B3_stall_region_out_c0_exe489),
        .out_c0_exe590(bb_conv2d1x1_B3_stall_region_out_c0_exe590),
        .out_c0_exe691(bb_conv2d1x1_B3_stall_region_out_c0_exe691),
        .out_c0_exe792(bb_conv2d1x1_B3_stall_region_out_c0_exe792),
        .out_c0_exe893(bb_conv2d1x1_B3_stall_region_out_c0_exe893),
        .out_c0_exe994(bb_conv2d1x1_B3_stall_region_out_c0_exe994),
        .out_pipeline_valid_out(bb_conv2d1x1_B3_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv2d1x1_B3_stall_region_out_stall_out),
        .out_valid_out(bb_conv2d1x1_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B3_branch(BLACKBOX,3)
    conv2d1x1_B3_branch theconv2d1x1_B3_branch (
        .in_c0_exe1095(bb_conv2d1x1_B3_stall_region_out_c0_exe1095),
        .in_c0_exe11(bb_conv2d1x1_B3_stall_region_out_c0_exe11),
        .in_c0_exe12(bb_conv2d1x1_B3_stall_region_out_c0_exe12),
        .in_c0_exe13(bb_conv2d1x1_B3_stall_region_out_c0_exe13),
        .in_c0_exe14(bb_conv2d1x1_B3_stall_region_out_c0_exe14),
        .in_c0_exe15(bb_conv2d1x1_B3_stall_region_out_c0_exe15),
        .in_c0_exe16(bb_conv2d1x1_B3_stall_region_out_c0_exe16),
        .in_c0_exe17(bb_conv2d1x1_B3_stall_region_out_c0_exe17),
        .in_c0_exe18(bb_conv2d1x1_B3_stall_region_out_c0_exe18),
        .in_c0_exe287(bb_conv2d1x1_B3_stall_region_out_c0_exe287),
        .in_c0_exe388(bb_conv2d1x1_B3_stall_region_out_c0_exe388),
        .in_c0_exe489(bb_conv2d1x1_B3_stall_region_out_c0_exe489),
        .in_c0_exe590(bb_conv2d1x1_B3_stall_region_out_c0_exe590),
        .in_c0_exe691(bb_conv2d1x1_B3_stall_region_out_c0_exe691),
        .in_c0_exe792(bb_conv2d1x1_B3_stall_region_out_c0_exe792),
        .in_c0_exe893(bb_conv2d1x1_B3_stall_region_out_c0_exe893),
        .in_c0_exe994(bb_conv2d1x1_B3_stall_region_out_c0_exe994),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_conv2d1x1_B3_stall_region_out_valid_out),
        .out_c0_exe1095(conv2d1x1_B3_branch_out_c0_exe1095),
        .out_c0_exe11(conv2d1x1_B3_branch_out_c0_exe11),
        .out_c0_exe12(conv2d1x1_B3_branch_out_c0_exe12),
        .out_c0_exe13(conv2d1x1_B3_branch_out_c0_exe13),
        .out_c0_exe14(conv2d1x1_B3_branch_out_c0_exe14),
        .out_c0_exe15(conv2d1x1_B3_branch_out_c0_exe15),
        .out_c0_exe16(conv2d1x1_B3_branch_out_c0_exe16),
        .out_c0_exe17(conv2d1x1_B3_branch_out_c0_exe17),
        .out_c0_exe18(conv2d1x1_B3_branch_out_c0_exe18),
        .out_c0_exe287(conv2d1x1_B3_branch_out_c0_exe287),
        .out_c0_exe388(conv2d1x1_B3_branch_out_c0_exe388),
        .out_c0_exe489(conv2d1x1_B3_branch_out_c0_exe489),
        .out_c0_exe590(conv2d1x1_B3_branch_out_c0_exe590),
        .out_c0_exe691(conv2d1x1_B3_branch_out_c0_exe691),
        .out_c0_exe792(conv2d1x1_B3_branch_out_c0_exe792),
        .out_c0_exe893(conv2d1x1_B3_branch_out_c0_exe893),
        .out_c0_exe994(conv2d1x1_B3_branch_out_c0_exe994),
        .out_stall_out(conv2d1x1_B3_branch_out_stall_out),
        .out_valid_out_0(conv2d1x1_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1095(GPOUT,32)
    assign out_c0_exe1095 = conv2d1x1_B3_branch_out_c0_exe1095;

    // out_c0_exe11(GPOUT,33)
    assign out_c0_exe11 = conv2d1x1_B3_branch_out_c0_exe11;

    // out_c0_exe12(GPOUT,34)
    assign out_c0_exe12 = conv2d1x1_B3_branch_out_c0_exe12;

    // out_c0_exe13(GPOUT,35)
    assign out_c0_exe13 = conv2d1x1_B3_branch_out_c0_exe13;

    // out_c0_exe14(GPOUT,36)
    assign out_c0_exe14 = conv2d1x1_B3_branch_out_c0_exe14;

    // out_c0_exe15(GPOUT,37)
    assign out_c0_exe15 = conv2d1x1_B3_branch_out_c0_exe15;

    // out_c0_exe16(GPOUT,38)
    assign out_c0_exe16 = conv2d1x1_B3_branch_out_c0_exe16;

    // out_c0_exe17(GPOUT,39)
    assign out_c0_exe17 = conv2d1x1_B3_branch_out_c0_exe17;

    // out_c0_exe18(GPOUT,40)
    assign out_c0_exe18 = conv2d1x1_B3_branch_out_c0_exe18;

    // out_c0_exe287(GPOUT,41)
    assign out_c0_exe287 = conv2d1x1_B3_branch_out_c0_exe287;

    // out_c0_exe388(GPOUT,42)
    assign out_c0_exe388 = conv2d1x1_B3_branch_out_c0_exe388;

    // out_c0_exe489(GPOUT,43)
    assign out_c0_exe489 = conv2d1x1_B3_branch_out_c0_exe489;

    // out_c0_exe590(GPOUT,44)
    assign out_c0_exe590 = conv2d1x1_B3_branch_out_c0_exe590;

    // out_c0_exe691(GPOUT,45)
    assign out_c0_exe691 = conv2d1x1_B3_branch_out_c0_exe691;

    // out_c0_exe792(GPOUT,46)
    assign out_c0_exe792 = conv2d1x1_B3_branch_out_c0_exe792;

    // out_c0_exe893(GPOUT,47)
    assign out_c0_exe893 = conv2d1x1_B3_branch_out_c0_exe893;

    // out_c0_exe994(GPOUT,48)
    assign out_c0_exe994 = conv2d1x1_B3_branch_out_c0_exe994;

    // out_exiting_stall_out(GPOUT,49)
    assign out_exiting_stall_out = bb_conv2d1x1_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_conv2d1x12_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,50)
    assign out_exiting_valid_out = bb_conv2d1x1_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_conv2d1x12_exiting_valid_out;

    // out_stall_out_0(GPOUT,51)
    assign out_stall_out_0 = conv2d1x1_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,52)
    assign out_stall_out_1 = conv2d1x1_B3_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,53)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,54)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,55)
    assign out_valid_out_0 = conv2d1x1_B3_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,57)
    assign out_pipeline_valid_out = bb_conv2d1x1_B3_stall_region_out_pipeline_valid_out;

endmodule
