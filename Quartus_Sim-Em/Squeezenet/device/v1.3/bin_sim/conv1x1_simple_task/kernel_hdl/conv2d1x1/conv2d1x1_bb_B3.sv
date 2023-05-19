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
// SystemVerilog created on Wed May 17 13:49:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B3 (
    input wire [63:0] in_filter_bias,
    input wire [63:0] in_filter_weight_addr_053_replace_phi59_0,
    input wire [63:0] in_filter_weight_addr_053_replace_phi59_1,
    input wire [0:0] in_forked34_0,
    input wire [0:0] in_forked34_1,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_lm65_0,
    input wire [31:0] in_lm65_1,
    input wire [31:0] in_mul62_0,
    input wire [31:0] in_mul62_1,
    input wire [0:0] in_notcmp3068_0,
    input wire [0:0] in_notcmp3068_1,
    input wire [63:0] in_output_im_addr_054_replace_phi56_0,
    input wire [63:0] in_output_im_addr_054_replace_phi56_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_unnamed_conv2d1x110_0,
    input wire [0:0] in_unnamed_conv2d1x110_1,
    input wire [32:0] in_unnamed_conv2d1x111_0,
    input wire [32:0] in_unnamed_conv2d1x111_1,
    input wire [0:0] in_unnamed_conv2d1x19_0,
    input wire [0:0] in_unnamed_conv2d1x19_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10112,
    output wire [63:0] out_c0_exe11,
    output wire [63:0] out_c0_exe12,
    output wire [31:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [0:0] out_c0_exe15,
    output wire [32:0] out_c0_exe16,
    output wire [31:0] out_c0_exe17,
    output wire [0:0] out_c0_exe18,
    output wire [0:0] out_c0_exe2104,
    output wire [31:0] out_c0_exe3105,
    output wire [63:0] out_c0_exe4106,
    output wire [63:0] out_c0_exe5107,
    output wire [31:0] out_c0_exe6108,
    output wire [0:0] out_c0_exe7109,
    output wire [0:0] out_c0_exe8110,
    output wire [31:0] out_c0_exe9111,
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

    wire [0:0] bb_conv2d1x1_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_conv2d1x12_exiting_stall_out;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_conv2d1x12_exiting_valid_out;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_c0_exe10112;
    wire [63:0] bb_conv2d1x1_B3_stall_region_out_c0_exe11;
    wire [63:0] bb_conv2d1x1_B3_stall_region_out_c0_exe12;
    wire [31:0] bb_conv2d1x1_B3_stall_region_out_c0_exe13;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_c0_exe14;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_c0_exe15;
    wire [32:0] bb_conv2d1x1_B3_stall_region_out_c0_exe16;
    wire [31:0] bb_conv2d1x1_B3_stall_region_out_c0_exe17;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_c0_exe18;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_c0_exe2104;
    wire [31:0] bb_conv2d1x1_B3_stall_region_out_c0_exe3105;
    wire [63:0] bb_conv2d1x1_B3_stall_region_out_c0_exe4106;
    wire [63:0] bb_conv2d1x1_B3_stall_region_out_c0_exe5107;
    wire [31:0] bb_conv2d1x1_B3_stall_region_out_c0_exe6108;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_c0_exe7109;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_c0_exe8110;
    wire [31:0] bb_conv2d1x1_B3_stall_region_out_c0_exe9111;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_stall_out;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_valid_out;
    wire [0:0] conv2d1x1_B3_branch_out_c0_exe10112;
    wire [63:0] conv2d1x1_B3_branch_out_c0_exe11;
    wire [63:0] conv2d1x1_B3_branch_out_c0_exe12;
    wire [31:0] conv2d1x1_B3_branch_out_c0_exe13;
    wire [0:0] conv2d1x1_B3_branch_out_c0_exe14;
    wire [0:0] conv2d1x1_B3_branch_out_c0_exe15;
    wire [32:0] conv2d1x1_B3_branch_out_c0_exe16;
    wire [31:0] conv2d1x1_B3_branch_out_c0_exe17;
    wire [0:0] conv2d1x1_B3_branch_out_c0_exe18;
    wire [0:0] conv2d1x1_B3_branch_out_c0_exe2104;
    wire [31:0] conv2d1x1_B3_branch_out_c0_exe3105;
    wire [63:0] conv2d1x1_B3_branch_out_c0_exe4106;
    wire [63:0] conv2d1x1_B3_branch_out_c0_exe5107;
    wire [31:0] conv2d1x1_B3_branch_out_c0_exe6108;
    wire [0:0] conv2d1x1_B3_branch_out_c0_exe7109;
    wire [0:0] conv2d1x1_B3_branch_out_c0_exe8110;
    wire [31:0] conv2d1x1_B3_branch_out_c0_exe9111;
    wire [0:0] conv2d1x1_B3_branch_out_stall_out;
    wire [0:0] conv2d1x1_B3_branch_out_valid_out_0;
    wire [63:0] conv2d1x1_B3_merge_out_filter_weight_addr_053_replace_phi59;
    wire [0:0] conv2d1x1_B3_merge_out_forked34;
    wire [31:0] conv2d1x1_B3_merge_out_lm65;
    wire [31:0] conv2d1x1_B3_merge_out_mul62;
    wire [0:0] conv2d1x1_B3_merge_out_notcmp3068;
    wire [63:0] conv2d1x1_B3_merge_out_output_im_addr_054_replace_phi56;
    wire [0:0] conv2d1x1_B3_merge_out_stall_out_0;
    wire [0:0] conv2d1x1_B3_merge_out_stall_out_1;
    wire [0:0] conv2d1x1_B3_merge_out_unnamed_conv2d1x110;
    wire [32:0] conv2d1x1_B3_merge_out_unnamed_conv2d1x111;
    wire [0:0] conv2d1x1_B3_merge_out_unnamed_conv2d1x19;
    wire [0:0] conv2d1x1_B3_merge_out_valid_out;


    // conv2d1x1_B3_merge(BLACKBOX,4)
    conv2d1x1_B3_merge theconv2d1x1_B3_merge (
        .in_filter_weight_addr_053_replace_phi59_0(in_filter_weight_addr_053_replace_phi59_0),
        .in_filter_weight_addr_053_replace_phi59_1(in_filter_weight_addr_053_replace_phi59_1),
        .in_forked34_0(in_forked34_0),
        .in_forked34_1(in_forked34_1),
        .in_lm65_0(in_lm65_0),
        .in_lm65_1(in_lm65_1),
        .in_mul62_0(in_mul62_0),
        .in_mul62_1(in_mul62_1),
        .in_notcmp3068_0(in_notcmp3068_0),
        .in_notcmp3068_1(in_notcmp3068_1),
        .in_output_im_addr_054_replace_phi56_0(in_output_im_addr_054_replace_phi56_0),
        .in_output_im_addr_054_replace_phi56_1(in_output_im_addr_054_replace_phi56_1),
        .in_stall_in(bb_conv2d1x1_B3_stall_region_out_stall_out),
        .in_unnamed_conv2d1x110_0(in_unnamed_conv2d1x110_0),
        .in_unnamed_conv2d1x110_1(in_unnamed_conv2d1x110_1),
        .in_unnamed_conv2d1x111_0(in_unnamed_conv2d1x111_0),
        .in_unnamed_conv2d1x111_1(in_unnamed_conv2d1x111_1),
        .in_unnamed_conv2d1x19_0(in_unnamed_conv2d1x19_0),
        .in_unnamed_conv2d1x19_1(in_unnamed_conv2d1x19_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_filter_weight_addr_053_replace_phi59(conv2d1x1_B3_merge_out_filter_weight_addr_053_replace_phi59),
        .out_forked34(conv2d1x1_B3_merge_out_forked34),
        .out_lm65(conv2d1x1_B3_merge_out_lm65),
        .out_mul62(conv2d1x1_B3_merge_out_mul62),
        .out_notcmp3068(conv2d1x1_B3_merge_out_notcmp3068),
        .out_output_im_addr_054_replace_phi56(conv2d1x1_B3_merge_out_output_im_addr_054_replace_phi56),
        .out_stall_out_0(conv2d1x1_B3_merge_out_stall_out_0),
        .out_stall_out_1(conv2d1x1_B3_merge_out_stall_out_1),
        .out_unnamed_conv2d1x110(conv2d1x1_B3_merge_out_unnamed_conv2d1x110),
        .out_unnamed_conv2d1x111(conv2d1x1_B3_merge_out_unnamed_conv2d1x111),
        .out_unnamed_conv2d1x19(conv2d1x1_B3_merge_out_unnamed_conv2d1x19),
        .out_valid_out(conv2d1x1_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B3_stall_region(BLACKBOX,2)
    conv2d1x1_bb_B3_stall_region thebb_conv2d1x1_B3_stall_region (
        .in_filter_weight_addr_053_replace_phi59(conv2d1x1_B3_merge_out_filter_weight_addr_053_replace_phi59),
        .in_forked34(conv2d1x1_B3_merge_out_forked34),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_lm65(conv2d1x1_B3_merge_out_lm65),
        .in_mul62(conv2d1x1_B3_merge_out_mul62),
        .in_notcmp3068(conv2d1x1_B3_merge_out_notcmp3068),
        .in_output_im_addr_054_replace_phi56(conv2d1x1_B3_merge_out_output_im_addr_054_replace_phi56),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(conv2d1x1_B3_branch_out_stall_out),
        .in_unnamed_conv2d1x110(conv2d1x1_B3_merge_out_unnamed_conv2d1x110),
        .in_unnamed_conv2d1x111(conv2d1x1_B3_merge_out_unnamed_conv2d1x111),
        .in_unnamed_conv2d1x19(conv2d1x1_B3_merge_out_unnamed_conv2d1x19),
        .in_valid_in(conv2d1x1_B3_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_conv2d1x12_exiting_stall_out(bb_conv2d1x1_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_conv2d1x12_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_conv2d1x12_exiting_valid_out(bb_conv2d1x1_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_conv2d1x12_exiting_valid_out),
        .out_c0_exe10112(bb_conv2d1x1_B3_stall_region_out_c0_exe10112),
        .out_c0_exe11(bb_conv2d1x1_B3_stall_region_out_c0_exe11),
        .out_c0_exe12(bb_conv2d1x1_B3_stall_region_out_c0_exe12),
        .out_c0_exe13(bb_conv2d1x1_B3_stall_region_out_c0_exe13),
        .out_c0_exe14(bb_conv2d1x1_B3_stall_region_out_c0_exe14),
        .out_c0_exe15(bb_conv2d1x1_B3_stall_region_out_c0_exe15),
        .out_c0_exe16(bb_conv2d1x1_B3_stall_region_out_c0_exe16),
        .out_c0_exe17(bb_conv2d1x1_B3_stall_region_out_c0_exe17),
        .out_c0_exe18(bb_conv2d1x1_B3_stall_region_out_c0_exe18),
        .out_c0_exe2104(bb_conv2d1x1_B3_stall_region_out_c0_exe2104),
        .out_c0_exe3105(bb_conv2d1x1_B3_stall_region_out_c0_exe3105),
        .out_c0_exe4106(bb_conv2d1x1_B3_stall_region_out_c0_exe4106),
        .out_c0_exe5107(bb_conv2d1x1_B3_stall_region_out_c0_exe5107),
        .out_c0_exe6108(bb_conv2d1x1_B3_stall_region_out_c0_exe6108),
        .out_c0_exe7109(bb_conv2d1x1_B3_stall_region_out_c0_exe7109),
        .out_c0_exe8110(bb_conv2d1x1_B3_stall_region_out_c0_exe8110),
        .out_c0_exe9111(bb_conv2d1x1_B3_stall_region_out_c0_exe9111),
        .out_pipeline_valid_out(bb_conv2d1x1_B3_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv2d1x1_B3_stall_region_out_stall_out),
        .out_valid_out(bb_conv2d1x1_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B3_branch(BLACKBOX,3)
    conv2d1x1_B3_branch theconv2d1x1_B3_branch (
        .in_c0_exe10112(bb_conv2d1x1_B3_stall_region_out_c0_exe10112),
        .in_c0_exe11(bb_conv2d1x1_B3_stall_region_out_c0_exe11),
        .in_c0_exe12(bb_conv2d1x1_B3_stall_region_out_c0_exe12),
        .in_c0_exe13(bb_conv2d1x1_B3_stall_region_out_c0_exe13),
        .in_c0_exe14(bb_conv2d1x1_B3_stall_region_out_c0_exe14),
        .in_c0_exe15(bb_conv2d1x1_B3_stall_region_out_c0_exe15),
        .in_c0_exe16(bb_conv2d1x1_B3_stall_region_out_c0_exe16),
        .in_c0_exe17(bb_conv2d1x1_B3_stall_region_out_c0_exe17),
        .in_c0_exe18(bb_conv2d1x1_B3_stall_region_out_c0_exe18),
        .in_c0_exe2104(bb_conv2d1x1_B3_stall_region_out_c0_exe2104),
        .in_c0_exe3105(bb_conv2d1x1_B3_stall_region_out_c0_exe3105),
        .in_c0_exe4106(bb_conv2d1x1_B3_stall_region_out_c0_exe4106),
        .in_c0_exe5107(bb_conv2d1x1_B3_stall_region_out_c0_exe5107),
        .in_c0_exe6108(bb_conv2d1x1_B3_stall_region_out_c0_exe6108),
        .in_c0_exe7109(bb_conv2d1x1_B3_stall_region_out_c0_exe7109),
        .in_c0_exe8110(bb_conv2d1x1_B3_stall_region_out_c0_exe8110),
        .in_c0_exe9111(bb_conv2d1x1_B3_stall_region_out_c0_exe9111),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_conv2d1x1_B3_stall_region_out_valid_out),
        .out_c0_exe10112(conv2d1x1_B3_branch_out_c0_exe10112),
        .out_c0_exe11(conv2d1x1_B3_branch_out_c0_exe11),
        .out_c0_exe12(conv2d1x1_B3_branch_out_c0_exe12),
        .out_c0_exe13(conv2d1x1_B3_branch_out_c0_exe13),
        .out_c0_exe14(conv2d1x1_B3_branch_out_c0_exe14),
        .out_c0_exe15(conv2d1x1_B3_branch_out_c0_exe15),
        .out_c0_exe16(conv2d1x1_B3_branch_out_c0_exe16),
        .out_c0_exe17(conv2d1x1_B3_branch_out_c0_exe17),
        .out_c0_exe18(conv2d1x1_B3_branch_out_c0_exe18),
        .out_c0_exe2104(conv2d1x1_B3_branch_out_c0_exe2104),
        .out_c0_exe3105(conv2d1x1_B3_branch_out_c0_exe3105),
        .out_c0_exe4106(conv2d1x1_B3_branch_out_c0_exe4106),
        .out_c0_exe5107(conv2d1x1_B3_branch_out_c0_exe5107),
        .out_c0_exe6108(conv2d1x1_B3_branch_out_c0_exe6108),
        .out_c0_exe7109(conv2d1x1_B3_branch_out_c0_exe7109),
        .out_c0_exe8110(conv2d1x1_B3_branch_out_c0_exe8110),
        .out_c0_exe9111(conv2d1x1_B3_branch_out_c0_exe9111),
        .out_stall_out(conv2d1x1_B3_branch_out_stall_out),
        .out_valid_out_0(conv2d1x1_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10112(GPOUT,30)
    assign out_c0_exe10112 = conv2d1x1_B3_branch_out_c0_exe10112;

    // out_c0_exe11(GPOUT,31)
    assign out_c0_exe11 = conv2d1x1_B3_branch_out_c0_exe11;

    // out_c0_exe12(GPOUT,32)
    assign out_c0_exe12 = conv2d1x1_B3_branch_out_c0_exe12;

    // out_c0_exe13(GPOUT,33)
    assign out_c0_exe13 = conv2d1x1_B3_branch_out_c0_exe13;

    // out_c0_exe14(GPOUT,34)
    assign out_c0_exe14 = conv2d1x1_B3_branch_out_c0_exe14;

    // out_c0_exe15(GPOUT,35)
    assign out_c0_exe15 = conv2d1x1_B3_branch_out_c0_exe15;

    // out_c0_exe16(GPOUT,36)
    assign out_c0_exe16 = conv2d1x1_B3_branch_out_c0_exe16;

    // out_c0_exe17(GPOUT,37)
    assign out_c0_exe17 = conv2d1x1_B3_branch_out_c0_exe17;

    // out_c0_exe18(GPOUT,38)
    assign out_c0_exe18 = conv2d1x1_B3_branch_out_c0_exe18;

    // out_c0_exe2104(GPOUT,39)
    assign out_c0_exe2104 = conv2d1x1_B3_branch_out_c0_exe2104;

    // out_c0_exe3105(GPOUT,40)
    assign out_c0_exe3105 = conv2d1x1_B3_branch_out_c0_exe3105;

    // out_c0_exe4106(GPOUT,41)
    assign out_c0_exe4106 = conv2d1x1_B3_branch_out_c0_exe4106;

    // out_c0_exe5107(GPOUT,42)
    assign out_c0_exe5107 = conv2d1x1_B3_branch_out_c0_exe5107;

    // out_c0_exe6108(GPOUT,43)
    assign out_c0_exe6108 = conv2d1x1_B3_branch_out_c0_exe6108;

    // out_c0_exe7109(GPOUT,44)
    assign out_c0_exe7109 = conv2d1x1_B3_branch_out_c0_exe7109;

    // out_c0_exe8110(GPOUT,45)
    assign out_c0_exe8110 = conv2d1x1_B3_branch_out_c0_exe8110;

    // out_c0_exe9111(GPOUT,46)
    assign out_c0_exe9111 = conv2d1x1_B3_branch_out_c0_exe9111;

    // out_exiting_stall_out(GPOUT,47)
    assign out_exiting_stall_out = bb_conv2d1x1_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_conv2d1x12_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,48)
    assign out_exiting_valid_out = bb_conv2d1x1_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_conv2d1x12_exiting_valid_out;

    // out_stall_out_0(GPOUT,49)
    assign out_stall_out_0 = conv2d1x1_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,50)
    assign out_stall_out_1 = conv2d1x1_B3_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,51)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,52)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,53)
    assign out_valid_out_0 = conv2d1x1_B3_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,55)
    assign out_pipeline_valid_out = bb_conv2d1x1_B3_stall_region_out_pipeline_valid_out;

endmodule
