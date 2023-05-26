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

// SystemVerilog created from conv2d1x1_bb_B4
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B4 (
    input wire [15:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [63:0] in_filter_bias,
    input wire [63:0] in_filter_weight,
    input wire [0:0] in_forked55_0,
    input wire [0:0] in_forked55_1,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_lm113_0,
    input wire [31:0] in_lm113_1,
    input wire [31:0] in_mul108_0,
    input wire [31:0] in_mul108_1,
    input wire [31:0] in_mul156123_0,
    input wire [31:0] in_mul156123_1,
    input wire [31:0] in_mul21118_0,
    input wire [31:0] in_mul21118_1,
    input wire [0:0] in_notcmp51128_0,
    input wire [0:0] in_notcmp51128_1,
    input wire [63:0] in_output_im,
    input wire [0:0] in_stall_in_0,
    input wire [32:0] in_unnamed_conv2d1x110_0,
    input wire [32:0] in_unnamed_conv2d1x110_1,
    input wire [0:0] in_unnamed_conv2d1x17_0,
    input wire [0:0] in_unnamed_conv2d1x17_1,
    input wire [0:0] in_unnamed_conv2d1x18_0,
    input wire [0:0] in_unnamed_conv2d1x18_1,
    input wire [0:0] in_unnamed_conv2d1x19_0,
    input wire [0:0] in_unnamed_conv2d1x19_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [9:0] out_ap_pop,
    output wire [31:0] out_c0_exe10273,
    output wire [0:0] out_c0_exe11274,
    output wire [31:0] out_c0_exe12,
    output wire [0:0] out_c0_exe1264,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [0:0] out_c0_exe15,
    output wire [32:0] out_c0_exe16,
    output wire [31:0] out_c0_exe17,
    output wire [31:0] out_c0_exe18,
    output wire [31:0] out_c0_exe19,
    output wire [0:0] out_c0_exe20,
    output wire [0:0] out_c0_exe3266,
    output wire [31:0] out_c0_exe4267,
    output wire [31:0] out_c0_exe5268,
    output wire [0:0] out_c0_exe6269,
    output wire [0:0] out_c0_exe7270,
    output wire [31:0] out_c0_exe8271,
    output wire [31:0] out_c0_exe9272,
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

    wire [0:0] bb_conv2d1x1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv2d1x12_exiting_stall_out;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv2d1x12_exiting_valid_out;
    wire [9:0] bb_conv2d1x1_B4_stall_region_out_ap_pop;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe10273;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_c0_exe11274;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe12;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_c0_exe1264;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_c0_exe13;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_c0_exe14;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_c0_exe15;
    wire [32:0] bb_conv2d1x1_B4_stall_region_out_c0_exe16;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe17;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe18;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe19;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_c0_exe20;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_c0_exe3266;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe4267;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe5268;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_c0_exe6269;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_c0_exe7270;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe8271;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe9272;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_feedback_stall_out_1;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_stall_out;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_valid_out;
    wire [9:0] conv2d1x1_B4_branch_out_ap_pop;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe10273;
    wire [0:0] conv2d1x1_B4_branch_out_c0_exe11274;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe12;
    wire [0:0] conv2d1x1_B4_branch_out_c0_exe1264;
    wire [0:0] conv2d1x1_B4_branch_out_c0_exe13;
    wire [0:0] conv2d1x1_B4_branch_out_c0_exe14;
    wire [0:0] conv2d1x1_B4_branch_out_c0_exe15;
    wire [32:0] conv2d1x1_B4_branch_out_c0_exe16;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe17;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe18;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe19;
    wire [0:0] conv2d1x1_B4_branch_out_c0_exe20;
    wire [0:0] conv2d1x1_B4_branch_out_c0_exe3266;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe4267;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe5268;
    wire [0:0] conv2d1x1_B4_branch_out_c0_exe6269;
    wire [0:0] conv2d1x1_B4_branch_out_c0_exe7270;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe8271;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe9272;
    wire [0:0] conv2d1x1_B4_branch_out_stall_out;
    wire [0:0] conv2d1x1_B4_branch_out_valid_out_0;
    wire [0:0] conv2d1x1_B4_merge_out_forked55;
    wire [31:0] conv2d1x1_B4_merge_out_lm113;
    wire [31:0] conv2d1x1_B4_merge_out_mul108;
    wire [31:0] conv2d1x1_B4_merge_out_mul156123;
    wire [31:0] conv2d1x1_B4_merge_out_mul21118;
    wire [0:0] conv2d1x1_B4_merge_out_notcmp51128;
    wire [0:0] conv2d1x1_B4_merge_out_stall_out_0;
    wire [0:0] conv2d1x1_B4_merge_out_stall_out_1;
    wire [32:0] conv2d1x1_B4_merge_out_unnamed_conv2d1x110;
    wire [0:0] conv2d1x1_B4_merge_out_unnamed_conv2d1x17;
    wire [0:0] conv2d1x1_B4_merge_out_unnamed_conv2d1x18;
    wire [0:0] conv2d1x1_B4_merge_out_unnamed_conv2d1x19;
    wire [0:0] conv2d1x1_B4_merge_out_valid_out;


    // conv2d1x1_B4_branch(BLACKBOX,3)
    conv2d1x1_B4_branch theconv2d1x1_B4_branch (
        .in_ap_pop(bb_conv2d1x1_B4_stall_region_out_ap_pop),
        .in_c0_exe10273(bb_conv2d1x1_B4_stall_region_out_c0_exe10273),
        .in_c0_exe11274(bb_conv2d1x1_B4_stall_region_out_c0_exe11274),
        .in_c0_exe12(bb_conv2d1x1_B4_stall_region_out_c0_exe12),
        .in_c0_exe1264(bb_conv2d1x1_B4_stall_region_out_c0_exe1264),
        .in_c0_exe13(bb_conv2d1x1_B4_stall_region_out_c0_exe13),
        .in_c0_exe14(bb_conv2d1x1_B4_stall_region_out_c0_exe14),
        .in_c0_exe15(bb_conv2d1x1_B4_stall_region_out_c0_exe15),
        .in_c0_exe16(bb_conv2d1x1_B4_stall_region_out_c0_exe16),
        .in_c0_exe17(bb_conv2d1x1_B4_stall_region_out_c0_exe17),
        .in_c0_exe18(bb_conv2d1x1_B4_stall_region_out_c0_exe18),
        .in_c0_exe19(bb_conv2d1x1_B4_stall_region_out_c0_exe19),
        .in_c0_exe20(bb_conv2d1x1_B4_stall_region_out_c0_exe20),
        .in_c0_exe3266(bb_conv2d1x1_B4_stall_region_out_c0_exe3266),
        .in_c0_exe4267(bb_conv2d1x1_B4_stall_region_out_c0_exe4267),
        .in_c0_exe5268(bb_conv2d1x1_B4_stall_region_out_c0_exe5268),
        .in_c0_exe6269(bb_conv2d1x1_B4_stall_region_out_c0_exe6269),
        .in_c0_exe7270(bb_conv2d1x1_B4_stall_region_out_c0_exe7270),
        .in_c0_exe8271(bb_conv2d1x1_B4_stall_region_out_c0_exe8271),
        .in_c0_exe9272(bb_conv2d1x1_B4_stall_region_out_c0_exe9272),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_conv2d1x1_B4_stall_region_out_valid_out),
        .out_ap_pop(conv2d1x1_B4_branch_out_ap_pop),
        .out_c0_exe10273(conv2d1x1_B4_branch_out_c0_exe10273),
        .out_c0_exe11274(conv2d1x1_B4_branch_out_c0_exe11274),
        .out_c0_exe12(conv2d1x1_B4_branch_out_c0_exe12),
        .out_c0_exe1264(conv2d1x1_B4_branch_out_c0_exe1264),
        .out_c0_exe13(conv2d1x1_B4_branch_out_c0_exe13),
        .out_c0_exe14(conv2d1x1_B4_branch_out_c0_exe14),
        .out_c0_exe15(conv2d1x1_B4_branch_out_c0_exe15),
        .out_c0_exe16(conv2d1x1_B4_branch_out_c0_exe16),
        .out_c0_exe17(conv2d1x1_B4_branch_out_c0_exe17),
        .out_c0_exe18(conv2d1x1_B4_branch_out_c0_exe18),
        .out_c0_exe19(conv2d1x1_B4_branch_out_c0_exe19),
        .out_c0_exe20(conv2d1x1_B4_branch_out_c0_exe20),
        .out_c0_exe3266(conv2d1x1_B4_branch_out_c0_exe3266),
        .out_c0_exe4267(conv2d1x1_B4_branch_out_c0_exe4267),
        .out_c0_exe5268(conv2d1x1_B4_branch_out_c0_exe5268),
        .out_c0_exe6269(conv2d1x1_B4_branch_out_c0_exe6269),
        .out_c0_exe7270(conv2d1x1_B4_branch_out_c0_exe7270),
        .out_c0_exe8271(conv2d1x1_B4_branch_out_c0_exe8271),
        .out_c0_exe9272(conv2d1x1_B4_branch_out_c0_exe9272),
        .out_stall_out(conv2d1x1_B4_branch_out_stall_out),
        .out_valid_out_0(conv2d1x1_B4_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B4_merge(BLACKBOX,4)
    conv2d1x1_B4_merge theconv2d1x1_B4_merge (
        .in_forked55_0(in_forked55_0),
        .in_forked55_1(in_forked55_1),
        .in_lm113_0(in_lm113_0),
        .in_lm113_1(in_lm113_1),
        .in_mul108_0(in_mul108_0),
        .in_mul108_1(in_mul108_1),
        .in_mul156123_0(in_mul156123_0),
        .in_mul156123_1(in_mul156123_1),
        .in_mul21118_0(in_mul21118_0),
        .in_mul21118_1(in_mul21118_1),
        .in_notcmp51128_0(in_notcmp51128_0),
        .in_notcmp51128_1(in_notcmp51128_1),
        .in_stall_in(bb_conv2d1x1_B4_stall_region_out_stall_out),
        .in_unnamed_conv2d1x110_0(in_unnamed_conv2d1x110_0),
        .in_unnamed_conv2d1x110_1(in_unnamed_conv2d1x110_1),
        .in_unnamed_conv2d1x17_0(in_unnamed_conv2d1x17_0),
        .in_unnamed_conv2d1x17_1(in_unnamed_conv2d1x17_1),
        .in_unnamed_conv2d1x18_0(in_unnamed_conv2d1x18_0),
        .in_unnamed_conv2d1x18_1(in_unnamed_conv2d1x18_1),
        .in_unnamed_conv2d1x19_0(in_unnamed_conv2d1x19_0),
        .in_unnamed_conv2d1x19_1(in_unnamed_conv2d1x19_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked55(conv2d1x1_B4_merge_out_forked55),
        .out_lm113(conv2d1x1_B4_merge_out_lm113),
        .out_mul108(conv2d1x1_B4_merge_out_mul108),
        .out_mul156123(conv2d1x1_B4_merge_out_mul156123),
        .out_mul21118(conv2d1x1_B4_merge_out_mul21118),
        .out_notcmp51128(conv2d1x1_B4_merge_out_notcmp51128),
        .out_stall_out_0(conv2d1x1_B4_merge_out_stall_out_0),
        .out_stall_out_1(conv2d1x1_B4_merge_out_stall_out_1),
        .out_unnamed_conv2d1x110(conv2d1x1_B4_merge_out_unnamed_conv2d1x110),
        .out_unnamed_conv2d1x17(conv2d1x1_B4_merge_out_unnamed_conv2d1x17),
        .out_unnamed_conv2d1x18(conv2d1x1_B4_merge_out_unnamed_conv2d1x18),
        .out_unnamed_conv2d1x19(conv2d1x1_B4_merge_out_unnamed_conv2d1x19),
        .out_valid_out(conv2d1x1_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B4_stall_region(BLACKBOX,2)
    conv2d1x1_bb_B4_stall_region thebb_conv2d1x1_B4_stall_region (
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_forked55(conv2d1x1_B4_merge_out_forked55),
        .in_lm113(conv2d1x1_B4_merge_out_lm113),
        .in_mul108(conv2d1x1_B4_merge_out_mul108),
        .in_mul156123(conv2d1x1_B4_merge_out_mul156123),
        .in_mul21118(conv2d1x1_B4_merge_out_mul21118),
        .in_notcmp51128(conv2d1x1_B4_merge_out_notcmp51128),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(conv2d1x1_B4_branch_out_stall_out),
        .in_unnamed_conv2d1x110(conv2d1x1_B4_merge_out_unnamed_conv2d1x110),
        .in_unnamed_conv2d1x17(conv2d1x1_B4_merge_out_unnamed_conv2d1x17),
        .in_unnamed_conv2d1x18(conv2d1x1_B4_merge_out_unnamed_conv2d1x18),
        .in_unnamed_conv2d1x19(conv2d1x1_B4_merge_out_unnamed_conv2d1x19),
        .in_valid_in(conv2d1x1_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv2d1x12_exiting_stall_out(bb_conv2d1x1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv2d1x12_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv2d1x12_exiting_valid_out(bb_conv2d1x1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv2d1x12_exiting_valid_out),
        .out_ap_pop(bb_conv2d1x1_B4_stall_region_out_ap_pop),
        .out_c0_exe10273(bb_conv2d1x1_B4_stall_region_out_c0_exe10273),
        .out_c0_exe11274(bb_conv2d1x1_B4_stall_region_out_c0_exe11274),
        .out_c0_exe12(bb_conv2d1x1_B4_stall_region_out_c0_exe12),
        .out_c0_exe1264(bb_conv2d1x1_B4_stall_region_out_c0_exe1264),
        .out_c0_exe13(bb_conv2d1x1_B4_stall_region_out_c0_exe13),
        .out_c0_exe14(bb_conv2d1x1_B4_stall_region_out_c0_exe14),
        .out_c0_exe15(bb_conv2d1x1_B4_stall_region_out_c0_exe15),
        .out_c0_exe16(bb_conv2d1x1_B4_stall_region_out_c0_exe16),
        .out_c0_exe17(bb_conv2d1x1_B4_stall_region_out_c0_exe17),
        .out_c0_exe18(bb_conv2d1x1_B4_stall_region_out_c0_exe18),
        .out_c0_exe19(bb_conv2d1x1_B4_stall_region_out_c0_exe19),
        .out_c0_exe20(bb_conv2d1x1_B4_stall_region_out_c0_exe20),
        .out_c0_exe3266(bb_conv2d1x1_B4_stall_region_out_c0_exe3266),
        .out_c0_exe4267(bb_conv2d1x1_B4_stall_region_out_c0_exe4267),
        .out_c0_exe5268(bb_conv2d1x1_B4_stall_region_out_c0_exe5268),
        .out_c0_exe6269(bb_conv2d1x1_B4_stall_region_out_c0_exe6269),
        .out_c0_exe7270(bb_conv2d1x1_B4_stall_region_out_c0_exe7270),
        .out_c0_exe8271(bb_conv2d1x1_B4_stall_region_out_c0_exe8271),
        .out_c0_exe9272(bb_conv2d1x1_B4_stall_region_out_c0_exe9272),
        .out_feedback_stall_out_1(bb_conv2d1x1_B4_stall_region_out_feedback_stall_out_1),
        .out_pipeline_valid_out(bb_conv2d1x1_B4_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv2d1x1_B4_stall_region_out_stall_out),
        .out_valid_out(bb_conv2d1x1_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_1_sync(GPOUT,6)
    assign out_feedback_stall_out_1 = bb_conv2d1x1_B4_stall_region_out_feedback_stall_out_1;

    // out_ap_pop(GPOUT,36)
    assign out_ap_pop = conv2d1x1_B4_branch_out_ap_pop;

    // out_c0_exe10273(GPOUT,37)
    assign out_c0_exe10273 = conv2d1x1_B4_branch_out_c0_exe10273;

    // out_c0_exe11274(GPOUT,38)
    assign out_c0_exe11274 = conv2d1x1_B4_branch_out_c0_exe11274;

    // out_c0_exe12(GPOUT,39)
    assign out_c0_exe12 = conv2d1x1_B4_branch_out_c0_exe12;

    // out_c0_exe1264(GPOUT,40)
    assign out_c0_exe1264 = conv2d1x1_B4_branch_out_c0_exe1264;

    // out_c0_exe13(GPOUT,41)
    assign out_c0_exe13 = conv2d1x1_B4_branch_out_c0_exe13;

    // out_c0_exe14(GPOUT,42)
    assign out_c0_exe14 = conv2d1x1_B4_branch_out_c0_exe14;

    // out_c0_exe15(GPOUT,43)
    assign out_c0_exe15 = conv2d1x1_B4_branch_out_c0_exe15;

    // out_c0_exe16(GPOUT,44)
    assign out_c0_exe16 = conv2d1x1_B4_branch_out_c0_exe16;

    // out_c0_exe17(GPOUT,45)
    assign out_c0_exe17 = conv2d1x1_B4_branch_out_c0_exe17;

    // out_c0_exe18(GPOUT,46)
    assign out_c0_exe18 = conv2d1x1_B4_branch_out_c0_exe18;

    // out_c0_exe19(GPOUT,47)
    assign out_c0_exe19 = conv2d1x1_B4_branch_out_c0_exe19;

    // out_c0_exe20(GPOUT,48)
    assign out_c0_exe20 = conv2d1x1_B4_branch_out_c0_exe20;

    // out_c0_exe3266(GPOUT,49)
    assign out_c0_exe3266 = conv2d1x1_B4_branch_out_c0_exe3266;

    // out_c0_exe4267(GPOUT,50)
    assign out_c0_exe4267 = conv2d1x1_B4_branch_out_c0_exe4267;

    // out_c0_exe5268(GPOUT,51)
    assign out_c0_exe5268 = conv2d1x1_B4_branch_out_c0_exe5268;

    // out_c0_exe6269(GPOUT,52)
    assign out_c0_exe6269 = conv2d1x1_B4_branch_out_c0_exe6269;

    // out_c0_exe7270(GPOUT,53)
    assign out_c0_exe7270 = conv2d1x1_B4_branch_out_c0_exe7270;

    // out_c0_exe8271(GPOUT,54)
    assign out_c0_exe8271 = conv2d1x1_B4_branch_out_c0_exe8271;

    // out_c0_exe9272(GPOUT,55)
    assign out_c0_exe9272 = conv2d1x1_B4_branch_out_c0_exe9272;

    // out_exiting_stall_out(GPOUT,56)
    assign out_exiting_stall_out = bb_conv2d1x1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv2d1x12_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,57)
    assign out_exiting_valid_out = bb_conv2d1x1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv2d1x12_exiting_valid_out;

    // out_stall_out_0(GPOUT,58)
    assign out_stall_out_0 = conv2d1x1_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,59)
    assign out_stall_out_1 = conv2d1x1_B4_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,60)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,61)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,62)
    assign out_valid_out_0 = conv2d1x1_B4_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,64)
    assign out_pipeline_valid_out = bb_conv2d1x1_B4_stall_region_out_pipeline_valid_out;

endmodule
