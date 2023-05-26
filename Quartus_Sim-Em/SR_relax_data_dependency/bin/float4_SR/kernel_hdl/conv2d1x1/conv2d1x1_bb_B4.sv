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
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B4 (
    input wire [63:0] in_filter_bias,
    input wire [63:0] in_filter_weight,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked17_0,
    input wire [0:0] in_forked17_1,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    input wire [32:0] in_intel_reserved_ffwd_4_0,
    input wire [511:0] in_lm96_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm96_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm96_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm96_conv2d1x1_avm_writeack,
    input wire [63:0] in_output_im,
    input wire [31:0] in_spec_select152_0,
    input wire [31:0] in_spec_select152_1,
    input wire [31:0] in_spec_select323158_0,
    input wire [31:0] in_spec_select323158_1,
    input wire [31:0] in_spec_select324164_0,
    input wire [31:0] in_spec_select324164_1,
    input wire [31:0] in_spec_select325170_0,
    input wire [31:0] in_spec_select325170_1,
    input wire [31:0] in_spec_select326176_0,
    input wire [31:0] in_spec_select326176_1,
    input wire [31:0] in_spec_select327182_0,
    input wire [31:0] in_spec_select327182_1,
    input wire [31:0] in_spec_select328188_0,
    input wire [31:0] in_spec_select328188_1,
    input wire [31:0] in_spec_select329194_0,
    input wire [31:0] in_spec_select329194_1,
    input wire [31:0] in_spec_select330200_0,
    input wire [31:0] in_spec_select330200_1,
    input wire [31:0] in_spec_select331206_0,
    input wire [31:0] in_spec_select331206_1,
    input wire [31:0] in_spec_select332212_0,
    input wire [31:0] in_spec_select332212_1,
    input wire [31:0] in_spec_select333218_0,
    input wire [31:0] in_spec_select333218_1,
    input wire [31:0] in_spec_select334224_0,
    input wire [31:0] in_spec_select334224_1,
    input wire [31:0] in_spec_select335230_0,
    input wire [31:0] in_spec_select335230_1,
    input wire [31:0] in_spec_select336236_0,
    input wire [31:0] in_spec_select336236_1,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_conv2d1x16_0,
    input wire [31:0] in_unnamed_conv2d1x16_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10403,
    output wire [0:0] out_c0_exe11404,
    output wire [31:0] out_c0_exe12405,
    output wire [31:0] out_c0_exe13406,
    output wire [31:0] out_c0_exe14407,
    output wire [31:0] out_c0_exe15408,
    output wire [31:0] out_c0_exe16409,
    output wire [31:0] out_c0_exe17410,
    output wire [31:0] out_c0_exe18411,
    output wire [31:0] out_c0_exe19,
    output wire [31:0] out_c0_exe20,
    output wire [31:0] out_c0_exe21,
    output wire [31:0] out_c0_exe22,
    output wire [31:0] out_c0_exe23,
    output wire [31:0] out_c0_exe2395,
    output wire [31:0] out_c0_exe24,
    output wire [31:0] out_c0_exe25,
    output wire [31:0] out_c0_exe26,
    output wire [31:0] out_c0_exe27,
    output wire [0:0] out_c0_exe28,
    output wire [31:0] out_c0_exe29,
    output wire [31:0] out_c0_exe30,
    output wire [31:0] out_c0_exe31,
    output wire [31:0] out_c0_exe32,
    output wire [31:0] out_c0_exe33,
    output wire [0:0] out_c0_exe3396,
    output wire [31:0] out_c0_exe34,
    output wire [31:0] out_c0_exe35,
    output wire [31:0] out_c0_exe36,
    output wire [31:0] out_c0_exe37,
    output wire [31:0] out_c0_exe38,
    output wire [31:0] out_c0_exe39,
    output wire [31:0] out_c0_exe40,
    output wire [31:0] out_c0_exe41,
    output wire [31:0] out_c0_exe42,
    output wire [31:0] out_c0_exe43,
    output wire [0:0] out_c0_exe4397,
    output wire [31:0] out_c0_exe44,
    output wire [0:0] out_c0_exe5398,
    output wire [32:0] out_c0_exe6399,
    output wire [31:0] out_c0_exe8401,
    output wire [31:0] out_c0_exe9402,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_lm96,
    output wire [30:0] out_lm96_conv2d1x1_avm_address,
    output wire [4:0] out_lm96_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm96_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm96_conv2d1x1_avm_enable,
    output wire [0:0] out_lm96_conv2d1x1_avm_read,
    output wire [0:0] out_lm96_conv2d1x1_avm_write,
    output wire [511:0] out_lm96_conv2d1x1_avm_writedata,
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

    wire [0:0] bb_conv2d1x1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_stall_out;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_valid_out;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_c0_exe10403;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_c0_exe11404;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe12405;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe13406;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe14407;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe15408;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe16409;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe17410;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe18411;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe19;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe20;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe21;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe22;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe23;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe2395;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe24;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe25;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe26;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe27;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_c0_exe28;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe29;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe30;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe31;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe32;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe33;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_c0_exe3396;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe34;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe35;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe36;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe37;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe38;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe39;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe40;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe41;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe42;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe43;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_c0_exe4397;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe44;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_c0_exe5398;
    wire [32:0] bb_conv2d1x1_B4_stall_region_out_c0_exe6399;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe8401;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe9402;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_lm96;
    wire [30:0] bb_conv2d1x1_B4_stall_region_out_lm96_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B4_stall_region_out_lm96_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B4_stall_region_out_lm96_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_lm96_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_lm96_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_lm96_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B4_stall_region_out_lm96_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_stall_out;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_valid_out;
    wire [0:0] conv2d1x1_B4_branch_out_c0_exe10403;
    wire [0:0] conv2d1x1_B4_branch_out_c0_exe11404;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe12405;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe13406;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe14407;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe15408;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe16409;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe17410;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe18411;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe19;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe20;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe21;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe22;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe23;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe2395;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe24;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe25;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe26;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe27;
    wire [0:0] conv2d1x1_B4_branch_out_c0_exe28;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe29;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe30;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe31;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe32;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe33;
    wire [0:0] conv2d1x1_B4_branch_out_c0_exe3396;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe34;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe35;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe36;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe37;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe38;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe39;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe40;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe41;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe42;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe43;
    wire [0:0] conv2d1x1_B4_branch_out_c0_exe4397;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe44;
    wire [0:0] conv2d1x1_B4_branch_out_c0_exe5398;
    wire [32:0] conv2d1x1_B4_branch_out_c0_exe6399;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe8401;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe9402;
    wire [31:0] conv2d1x1_B4_branch_out_lm96;
    wire [0:0] conv2d1x1_B4_branch_out_stall_out;
    wire [0:0] conv2d1x1_B4_branch_out_valid_out_0;
    wire [0:0] conv2d1x1_B4_merge_out_forked17;
    wire [31:0] conv2d1x1_B4_merge_out_spec_select152;
    wire [31:0] conv2d1x1_B4_merge_out_spec_select323158;
    wire [31:0] conv2d1x1_B4_merge_out_spec_select324164;
    wire [31:0] conv2d1x1_B4_merge_out_spec_select325170;
    wire [31:0] conv2d1x1_B4_merge_out_spec_select326176;
    wire [31:0] conv2d1x1_B4_merge_out_spec_select327182;
    wire [31:0] conv2d1x1_B4_merge_out_spec_select328188;
    wire [31:0] conv2d1x1_B4_merge_out_spec_select329194;
    wire [31:0] conv2d1x1_B4_merge_out_spec_select330200;
    wire [31:0] conv2d1x1_B4_merge_out_spec_select331206;
    wire [31:0] conv2d1x1_B4_merge_out_spec_select332212;
    wire [31:0] conv2d1x1_B4_merge_out_spec_select333218;
    wire [31:0] conv2d1x1_B4_merge_out_spec_select334224;
    wire [31:0] conv2d1x1_B4_merge_out_spec_select335230;
    wire [31:0] conv2d1x1_B4_merge_out_spec_select336236;
    wire [0:0] conv2d1x1_B4_merge_out_stall_out_0;
    wire [0:0] conv2d1x1_B4_merge_out_stall_out_1;
    wire [31:0] conv2d1x1_B4_merge_out_unnamed_conv2d1x16;
    wire [0:0] conv2d1x1_B4_merge_out_valid_out;


    // conv2d1x1_B4_merge(BLACKBOX,4)
    conv2d1x1_B4_merge theconv2d1x1_B4_merge (
        .in_forked17_0(in_forked17_0),
        .in_forked17_1(in_forked17_1),
        .in_spec_select152_0(in_spec_select152_0),
        .in_spec_select152_1(in_spec_select152_1),
        .in_spec_select323158_0(in_spec_select323158_0),
        .in_spec_select323158_1(in_spec_select323158_1),
        .in_spec_select324164_0(in_spec_select324164_0),
        .in_spec_select324164_1(in_spec_select324164_1),
        .in_spec_select325170_0(in_spec_select325170_0),
        .in_spec_select325170_1(in_spec_select325170_1),
        .in_spec_select326176_0(in_spec_select326176_0),
        .in_spec_select326176_1(in_spec_select326176_1),
        .in_spec_select327182_0(in_spec_select327182_0),
        .in_spec_select327182_1(in_spec_select327182_1),
        .in_spec_select328188_0(in_spec_select328188_0),
        .in_spec_select328188_1(in_spec_select328188_1),
        .in_spec_select329194_0(in_spec_select329194_0),
        .in_spec_select329194_1(in_spec_select329194_1),
        .in_spec_select330200_0(in_spec_select330200_0),
        .in_spec_select330200_1(in_spec_select330200_1),
        .in_spec_select331206_0(in_spec_select331206_0),
        .in_spec_select331206_1(in_spec_select331206_1),
        .in_spec_select332212_0(in_spec_select332212_0),
        .in_spec_select332212_1(in_spec_select332212_1),
        .in_spec_select333218_0(in_spec_select333218_0),
        .in_spec_select333218_1(in_spec_select333218_1),
        .in_spec_select334224_0(in_spec_select334224_0),
        .in_spec_select334224_1(in_spec_select334224_1),
        .in_spec_select335230_0(in_spec_select335230_0),
        .in_spec_select335230_1(in_spec_select335230_1),
        .in_spec_select336236_0(in_spec_select336236_0),
        .in_spec_select336236_1(in_spec_select336236_1),
        .in_stall_in(bb_conv2d1x1_B4_stall_region_out_stall_out),
        .in_unnamed_conv2d1x16_0(in_unnamed_conv2d1x16_0),
        .in_unnamed_conv2d1x16_1(in_unnamed_conv2d1x16_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked17(conv2d1x1_B4_merge_out_forked17),
        .out_spec_select152(conv2d1x1_B4_merge_out_spec_select152),
        .out_spec_select323158(conv2d1x1_B4_merge_out_spec_select323158),
        .out_spec_select324164(conv2d1x1_B4_merge_out_spec_select324164),
        .out_spec_select325170(conv2d1x1_B4_merge_out_spec_select325170),
        .out_spec_select326176(conv2d1x1_B4_merge_out_spec_select326176),
        .out_spec_select327182(conv2d1x1_B4_merge_out_spec_select327182),
        .out_spec_select328188(conv2d1x1_B4_merge_out_spec_select328188),
        .out_spec_select329194(conv2d1x1_B4_merge_out_spec_select329194),
        .out_spec_select330200(conv2d1x1_B4_merge_out_spec_select330200),
        .out_spec_select331206(conv2d1x1_B4_merge_out_spec_select331206),
        .out_spec_select332212(conv2d1x1_B4_merge_out_spec_select332212),
        .out_spec_select333218(conv2d1x1_B4_merge_out_spec_select333218),
        .out_spec_select334224(conv2d1x1_B4_merge_out_spec_select334224),
        .out_spec_select335230(conv2d1x1_B4_merge_out_spec_select335230),
        .out_spec_select336236(conv2d1x1_B4_merge_out_spec_select336236),
        .out_stall_out_0(conv2d1x1_B4_merge_out_stall_out_0),
        .out_stall_out_1(conv2d1x1_B4_merge_out_stall_out_1),
        .out_unnamed_conv2d1x16(conv2d1x1_B4_merge_out_unnamed_conv2d1x16),
        .out_valid_out(conv2d1x1_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B4_stall_region(BLACKBOX,2)
    conv2d1x1_bb_B4_stall_region thebb_conv2d1x1_B4_stall_region (
        .in_filter_bias(in_filter_bias),
        .in_flush(in_flush),
        .in_forked17(conv2d1x1_B4_merge_out_forked17),
        .in_input_channels(in_input_channels),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_lm96_conv2d1x1_avm_readdata(in_lm96_conv2d1x1_avm_readdata),
        .in_lm96_conv2d1x1_avm_readdatavalid(in_lm96_conv2d1x1_avm_readdatavalid),
        .in_lm96_conv2d1x1_avm_waitrequest(in_lm96_conv2d1x1_avm_waitrequest),
        .in_lm96_conv2d1x1_avm_writeack(in_lm96_conv2d1x1_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_spec_select152(conv2d1x1_B4_merge_out_spec_select152),
        .in_spec_select323158(conv2d1x1_B4_merge_out_spec_select323158),
        .in_spec_select324164(conv2d1x1_B4_merge_out_spec_select324164),
        .in_spec_select325170(conv2d1x1_B4_merge_out_spec_select325170),
        .in_spec_select326176(conv2d1x1_B4_merge_out_spec_select326176),
        .in_spec_select327182(conv2d1x1_B4_merge_out_spec_select327182),
        .in_spec_select328188(conv2d1x1_B4_merge_out_spec_select328188),
        .in_spec_select329194(conv2d1x1_B4_merge_out_spec_select329194),
        .in_spec_select330200(conv2d1x1_B4_merge_out_spec_select330200),
        .in_spec_select331206(conv2d1x1_B4_merge_out_spec_select331206),
        .in_spec_select332212(conv2d1x1_B4_merge_out_spec_select332212),
        .in_spec_select333218(conv2d1x1_B4_merge_out_spec_select333218),
        .in_spec_select334224(conv2d1x1_B4_merge_out_spec_select334224),
        .in_spec_select335230(conv2d1x1_B4_merge_out_spec_select335230),
        .in_spec_select336236(conv2d1x1_B4_merge_out_spec_select336236),
        .in_stall_in(conv2d1x1_B4_branch_out_stall_out),
        .in_unnamed_conv2d1x16(conv2d1x1_B4_merge_out_unnamed_conv2d1x16),
        .in_valid_in(conv2d1x1_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_stall_out(bb_conv2d1x1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_valid_out(bb_conv2d1x1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_valid_out),
        .out_c0_exe10403(bb_conv2d1x1_B4_stall_region_out_c0_exe10403),
        .out_c0_exe11404(bb_conv2d1x1_B4_stall_region_out_c0_exe11404),
        .out_c0_exe12405(bb_conv2d1x1_B4_stall_region_out_c0_exe12405),
        .out_c0_exe13406(bb_conv2d1x1_B4_stall_region_out_c0_exe13406),
        .out_c0_exe14407(bb_conv2d1x1_B4_stall_region_out_c0_exe14407),
        .out_c0_exe15408(bb_conv2d1x1_B4_stall_region_out_c0_exe15408),
        .out_c0_exe16409(bb_conv2d1x1_B4_stall_region_out_c0_exe16409),
        .out_c0_exe17410(bb_conv2d1x1_B4_stall_region_out_c0_exe17410),
        .out_c0_exe18411(bb_conv2d1x1_B4_stall_region_out_c0_exe18411),
        .out_c0_exe19(bb_conv2d1x1_B4_stall_region_out_c0_exe19),
        .out_c0_exe20(bb_conv2d1x1_B4_stall_region_out_c0_exe20),
        .out_c0_exe21(bb_conv2d1x1_B4_stall_region_out_c0_exe21),
        .out_c0_exe22(bb_conv2d1x1_B4_stall_region_out_c0_exe22),
        .out_c0_exe23(bb_conv2d1x1_B4_stall_region_out_c0_exe23),
        .out_c0_exe2395(bb_conv2d1x1_B4_stall_region_out_c0_exe2395),
        .out_c0_exe24(bb_conv2d1x1_B4_stall_region_out_c0_exe24),
        .out_c0_exe25(bb_conv2d1x1_B4_stall_region_out_c0_exe25),
        .out_c0_exe26(bb_conv2d1x1_B4_stall_region_out_c0_exe26),
        .out_c0_exe27(bb_conv2d1x1_B4_stall_region_out_c0_exe27),
        .out_c0_exe28(bb_conv2d1x1_B4_stall_region_out_c0_exe28),
        .out_c0_exe29(bb_conv2d1x1_B4_stall_region_out_c0_exe29),
        .out_c0_exe30(bb_conv2d1x1_B4_stall_region_out_c0_exe30),
        .out_c0_exe31(bb_conv2d1x1_B4_stall_region_out_c0_exe31),
        .out_c0_exe32(bb_conv2d1x1_B4_stall_region_out_c0_exe32),
        .out_c0_exe33(bb_conv2d1x1_B4_stall_region_out_c0_exe33),
        .out_c0_exe3396(bb_conv2d1x1_B4_stall_region_out_c0_exe3396),
        .out_c0_exe34(bb_conv2d1x1_B4_stall_region_out_c0_exe34),
        .out_c0_exe35(bb_conv2d1x1_B4_stall_region_out_c0_exe35),
        .out_c0_exe36(bb_conv2d1x1_B4_stall_region_out_c0_exe36),
        .out_c0_exe37(bb_conv2d1x1_B4_stall_region_out_c0_exe37),
        .out_c0_exe38(bb_conv2d1x1_B4_stall_region_out_c0_exe38),
        .out_c0_exe39(bb_conv2d1x1_B4_stall_region_out_c0_exe39),
        .out_c0_exe40(bb_conv2d1x1_B4_stall_region_out_c0_exe40),
        .out_c0_exe41(bb_conv2d1x1_B4_stall_region_out_c0_exe41),
        .out_c0_exe42(bb_conv2d1x1_B4_stall_region_out_c0_exe42),
        .out_c0_exe43(bb_conv2d1x1_B4_stall_region_out_c0_exe43),
        .out_c0_exe4397(bb_conv2d1x1_B4_stall_region_out_c0_exe4397),
        .out_c0_exe44(bb_conv2d1x1_B4_stall_region_out_c0_exe44),
        .out_c0_exe5398(bb_conv2d1x1_B4_stall_region_out_c0_exe5398),
        .out_c0_exe6399(bb_conv2d1x1_B4_stall_region_out_c0_exe6399),
        .out_c0_exe8401(bb_conv2d1x1_B4_stall_region_out_c0_exe8401),
        .out_c0_exe9402(bb_conv2d1x1_B4_stall_region_out_c0_exe9402),
        .out_lm96(bb_conv2d1x1_B4_stall_region_out_lm96),
        .out_lm96_conv2d1x1_avm_address(bb_conv2d1x1_B4_stall_region_out_lm96_conv2d1x1_avm_address),
        .out_lm96_conv2d1x1_avm_burstcount(bb_conv2d1x1_B4_stall_region_out_lm96_conv2d1x1_avm_burstcount),
        .out_lm96_conv2d1x1_avm_byteenable(bb_conv2d1x1_B4_stall_region_out_lm96_conv2d1x1_avm_byteenable),
        .out_lm96_conv2d1x1_avm_enable(bb_conv2d1x1_B4_stall_region_out_lm96_conv2d1x1_avm_enable),
        .out_lm96_conv2d1x1_avm_read(bb_conv2d1x1_B4_stall_region_out_lm96_conv2d1x1_avm_read),
        .out_lm96_conv2d1x1_avm_write(bb_conv2d1x1_B4_stall_region_out_lm96_conv2d1x1_avm_write),
        .out_lm96_conv2d1x1_avm_writedata(bb_conv2d1x1_B4_stall_region_out_lm96_conv2d1x1_avm_writedata),
        .out_pipeline_valid_out(bb_conv2d1x1_B4_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv2d1x1_B4_stall_region_out_stall_out),
        .out_valid_out(bb_conv2d1x1_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B4_branch(BLACKBOX,3)
    conv2d1x1_B4_branch theconv2d1x1_B4_branch (
        .in_c0_exe10403(bb_conv2d1x1_B4_stall_region_out_c0_exe10403),
        .in_c0_exe11404(bb_conv2d1x1_B4_stall_region_out_c0_exe11404),
        .in_c0_exe12405(bb_conv2d1x1_B4_stall_region_out_c0_exe12405),
        .in_c0_exe13406(bb_conv2d1x1_B4_stall_region_out_c0_exe13406),
        .in_c0_exe14407(bb_conv2d1x1_B4_stall_region_out_c0_exe14407),
        .in_c0_exe15408(bb_conv2d1x1_B4_stall_region_out_c0_exe15408),
        .in_c0_exe16409(bb_conv2d1x1_B4_stall_region_out_c0_exe16409),
        .in_c0_exe17410(bb_conv2d1x1_B4_stall_region_out_c0_exe17410),
        .in_c0_exe18411(bb_conv2d1x1_B4_stall_region_out_c0_exe18411),
        .in_c0_exe19(bb_conv2d1x1_B4_stall_region_out_c0_exe19),
        .in_c0_exe20(bb_conv2d1x1_B4_stall_region_out_c0_exe20),
        .in_c0_exe21(bb_conv2d1x1_B4_stall_region_out_c0_exe21),
        .in_c0_exe22(bb_conv2d1x1_B4_stall_region_out_c0_exe22),
        .in_c0_exe23(bb_conv2d1x1_B4_stall_region_out_c0_exe23),
        .in_c0_exe2395(bb_conv2d1x1_B4_stall_region_out_c0_exe2395),
        .in_c0_exe24(bb_conv2d1x1_B4_stall_region_out_c0_exe24),
        .in_c0_exe25(bb_conv2d1x1_B4_stall_region_out_c0_exe25),
        .in_c0_exe26(bb_conv2d1x1_B4_stall_region_out_c0_exe26),
        .in_c0_exe27(bb_conv2d1x1_B4_stall_region_out_c0_exe27),
        .in_c0_exe28(bb_conv2d1x1_B4_stall_region_out_c0_exe28),
        .in_c0_exe29(bb_conv2d1x1_B4_stall_region_out_c0_exe29),
        .in_c0_exe30(bb_conv2d1x1_B4_stall_region_out_c0_exe30),
        .in_c0_exe31(bb_conv2d1x1_B4_stall_region_out_c0_exe31),
        .in_c0_exe32(bb_conv2d1x1_B4_stall_region_out_c0_exe32),
        .in_c0_exe33(bb_conv2d1x1_B4_stall_region_out_c0_exe33),
        .in_c0_exe3396(bb_conv2d1x1_B4_stall_region_out_c0_exe3396),
        .in_c0_exe34(bb_conv2d1x1_B4_stall_region_out_c0_exe34),
        .in_c0_exe35(bb_conv2d1x1_B4_stall_region_out_c0_exe35),
        .in_c0_exe36(bb_conv2d1x1_B4_stall_region_out_c0_exe36),
        .in_c0_exe37(bb_conv2d1x1_B4_stall_region_out_c0_exe37),
        .in_c0_exe38(bb_conv2d1x1_B4_stall_region_out_c0_exe38),
        .in_c0_exe39(bb_conv2d1x1_B4_stall_region_out_c0_exe39),
        .in_c0_exe40(bb_conv2d1x1_B4_stall_region_out_c0_exe40),
        .in_c0_exe41(bb_conv2d1x1_B4_stall_region_out_c0_exe41),
        .in_c0_exe42(bb_conv2d1x1_B4_stall_region_out_c0_exe42),
        .in_c0_exe43(bb_conv2d1x1_B4_stall_region_out_c0_exe43),
        .in_c0_exe4397(bb_conv2d1x1_B4_stall_region_out_c0_exe4397),
        .in_c0_exe44(bb_conv2d1x1_B4_stall_region_out_c0_exe44),
        .in_c0_exe5398(bb_conv2d1x1_B4_stall_region_out_c0_exe5398),
        .in_c0_exe6399(bb_conv2d1x1_B4_stall_region_out_c0_exe6399),
        .in_c0_exe8401(bb_conv2d1x1_B4_stall_region_out_c0_exe8401),
        .in_c0_exe9402(bb_conv2d1x1_B4_stall_region_out_c0_exe9402),
        .in_lm96(bb_conv2d1x1_B4_stall_region_out_lm96),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_conv2d1x1_B4_stall_region_out_valid_out),
        .out_c0_exe10403(conv2d1x1_B4_branch_out_c0_exe10403),
        .out_c0_exe11404(conv2d1x1_B4_branch_out_c0_exe11404),
        .out_c0_exe12405(conv2d1x1_B4_branch_out_c0_exe12405),
        .out_c0_exe13406(conv2d1x1_B4_branch_out_c0_exe13406),
        .out_c0_exe14407(conv2d1x1_B4_branch_out_c0_exe14407),
        .out_c0_exe15408(conv2d1x1_B4_branch_out_c0_exe15408),
        .out_c0_exe16409(conv2d1x1_B4_branch_out_c0_exe16409),
        .out_c0_exe17410(conv2d1x1_B4_branch_out_c0_exe17410),
        .out_c0_exe18411(conv2d1x1_B4_branch_out_c0_exe18411),
        .out_c0_exe19(conv2d1x1_B4_branch_out_c0_exe19),
        .out_c0_exe20(conv2d1x1_B4_branch_out_c0_exe20),
        .out_c0_exe21(conv2d1x1_B4_branch_out_c0_exe21),
        .out_c0_exe22(conv2d1x1_B4_branch_out_c0_exe22),
        .out_c0_exe23(conv2d1x1_B4_branch_out_c0_exe23),
        .out_c0_exe2395(conv2d1x1_B4_branch_out_c0_exe2395),
        .out_c0_exe24(conv2d1x1_B4_branch_out_c0_exe24),
        .out_c0_exe25(conv2d1x1_B4_branch_out_c0_exe25),
        .out_c0_exe26(conv2d1x1_B4_branch_out_c0_exe26),
        .out_c0_exe27(conv2d1x1_B4_branch_out_c0_exe27),
        .out_c0_exe28(conv2d1x1_B4_branch_out_c0_exe28),
        .out_c0_exe29(conv2d1x1_B4_branch_out_c0_exe29),
        .out_c0_exe30(conv2d1x1_B4_branch_out_c0_exe30),
        .out_c0_exe31(conv2d1x1_B4_branch_out_c0_exe31),
        .out_c0_exe32(conv2d1x1_B4_branch_out_c0_exe32),
        .out_c0_exe33(conv2d1x1_B4_branch_out_c0_exe33),
        .out_c0_exe3396(conv2d1x1_B4_branch_out_c0_exe3396),
        .out_c0_exe34(conv2d1x1_B4_branch_out_c0_exe34),
        .out_c0_exe35(conv2d1x1_B4_branch_out_c0_exe35),
        .out_c0_exe36(conv2d1x1_B4_branch_out_c0_exe36),
        .out_c0_exe37(conv2d1x1_B4_branch_out_c0_exe37),
        .out_c0_exe38(conv2d1x1_B4_branch_out_c0_exe38),
        .out_c0_exe39(conv2d1x1_B4_branch_out_c0_exe39),
        .out_c0_exe40(conv2d1x1_B4_branch_out_c0_exe40),
        .out_c0_exe41(conv2d1x1_B4_branch_out_c0_exe41),
        .out_c0_exe42(conv2d1x1_B4_branch_out_c0_exe42),
        .out_c0_exe43(conv2d1x1_B4_branch_out_c0_exe43),
        .out_c0_exe4397(conv2d1x1_B4_branch_out_c0_exe4397),
        .out_c0_exe44(conv2d1x1_B4_branch_out_c0_exe44),
        .out_c0_exe5398(conv2d1x1_B4_branch_out_c0_exe5398),
        .out_c0_exe6399(conv2d1x1_B4_branch_out_c0_exe6399),
        .out_c0_exe8401(conv2d1x1_B4_branch_out_c0_exe8401),
        .out_c0_exe9402(conv2d1x1_B4_branch_out_c0_exe9402),
        .out_lm96(conv2d1x1_B4_branch_out_lm96),
        .out_stall_out(conv2d1x1_B4_branch_out_stall_out),
        .out_valid_out_0(conv2d1x1_B4_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10403(GPOUT,56)
    assign out_c0_exe10403 = conv2d1x1_B4_branch_out_c0_exe10403;

    // out_c0_exe11404(GPOUT,57)
    assign out_c0_exe11404 = conv2d1x1_B4_branch_out_c0_exe11404;

    // out_c0_exe12405(GPOUT,58)
    assign out_c0_exe12405 = conv2d1x1_B4_branch_out_c0_exe12405;

    // out_c0_exe13406(GPOUT,59)
    assign out_c0_exe13406 = conv2d1x1_B4_branch_out_c0_exe13406;

    // out_c0_exe14407(GPOUT,60)
    assign out_c0_exe14407 = conv2d1x1_B4_branch_out_c0_exe14407;

    // out_c0_exe15408(GPOUT,61)
    assign out_c0_exe15408 = conv2d1x1_B4_branch_out_c0_exe15408;

    // out_c0_exe16409(GPOUT,62)
    assign out_c0_exe16409 = conv2d1x1_B4_branch_out_c0_exe16409;

    // out_c0_exe17410(GPOUT,63)
    assign out_c0_exe17410 = conv2d1x1_B4_branch_out_c0_exe17410;

    // out_c0_exe18411(GPOUT,64)
    assign out_c0_exe18411 = conv2d1x1_B4_branch_out_c0_exe18411;

    // out_c0_exe19(GPOUT,65)
    assign out_c0_exe19 = conv2d1x1_B4_branch_out_c0_exe19;

    // out_c0_exe20(GPOUT,66)
    assign out_c0_exe20 = conv2d1x1_B4_branch_out_c0_exe20;

    // out_c0_exe21(GPOUT,67)
    assign out_c0_exe21 = conv2d1x1_B4_branch_out_c0_exe21;

    // out_c0_exe22(GPOUT,68)
    assign out_c0_exe22 = conv2d1x1_B4_branch_out_c0_exe22;

    // out_c0_exe23(GPOUT,69)
    assign out_c0_exe23 = conv2d1x1_B4_branch_out_c0_exe23;

    // out_c0_exe2395(GPOUT,70)
    assign out_c0_exe2395 = conv2d1x1_B4_branch_out_c0_exe2395;

    // out_c0_exe24(GPOUT,71)
    assign out_c0_exe24 = conv2d1x1_B4_branch_out_c0_exe24;

    // out_c0_exe25(GPOUT,72)
    assign out_c0_exe25 = conv2d1x1_B4_branch_out_c0_exe25;

    // out_c0_exe26(GPOUT,73)
    assign out_c0_exe26 = conv2d1x1_B4_branch_out_c0_exe26;

    // out_c0_exe27(GPOUT,74)
    assign out_c0_exe27 = conv2d1x1_B4_branch_out_c0_exe27;

    // out_c0_exe28(GPOUT,75)
    assign out_c0_exe28 = conv2d1x1_B4_branch_out_c0_exe28;

    // out_c0_exe29(GPOUT,76)
    assign out_c0_exe29 = conv2d1x1_B4_branch_out_c0_exe29;

    // out_c0_exe30(GPOUT,77)
    assign out_c0_exe30 = conv2d1x1_B4_branch_out_c0_exe30;

    // out_c0_exe31(GPOUT,78)
    assign out_c0_exe31 = conv2d1x1_B4_branch_out_c0_exe31;

    // out_c0_exe32(GPOUT,79)
    assign out_c0_exe32 = conv2d1x1_B4_branch_out_c0_exe32;

    // out_c0_exe33(GPOUT,80)
    assign out_c0_exe33 = conv2d1x1_B4_branch_out_c0_exe33;

    // out_c0_exe3396(GPOUT,81)
    assign out_c0_exe3396 = conv2d1x1_B4_branch_out_c0_exe3396;

    // out_c0_exe34(GPOUT,82)
    assign out_c0_exe34 = conv2d1x1_B4_branch_out_c0_exe34;

    // out_c0_exe35(GPOUT,83)
    assign out_c0_exe35 = conv2d1x1_B4_branch_out_c0_exe35;

    // out_c0_exe36(GPOUT,84)
    assign out_c0_exe36 = conv2d1x1_B4_branch_out_c0_exe36;

    // out_c0_exe37(GPOUT,85)
    assign out_c0_exe37 = conv2d1x1_B4_branch_out_c0_exe37;

    // out_c0_exe38(GPOUT,86)
    assign out_c0_exe38 = conv2d1x1_B4_branch_out_c0_exe38;

    // out_c0_exe39(GPOUT,87)
    assign out_c0_exe39 = conv2d1x1_B4_branch_out_c0_exe39;

    // out_c0_exe40(GPOUT,88)
    assign out_c0_exe40 = conv2d1x1_B4_branch_out_c0_exe40;

    // out_c0_exe41(GPOUT,89)
    assign out_c0_exe41 = conv2d1x1_B4_branch_out_c0_exe41;

    // out_c0_exe42(GPOUT,90)
    assign out_c0_exe42 = conv2d1x1_B4_branch_out_c0_exe42;

    // out_c0_exe43(GPOUT,91)
    assign out_c0_exe43 = conv2d1x1_B4_branch_out_c0_exe43;

    // out_c0_exe4397(GPOUT,92)
    assign out_c0_exe4397 = conv2d1x1_B4_branch_out_c0_exe4397;

    // out_c0_exe44(GPOUT,93)
    assign out_c0_exe44 = conv2d1x1_B4_branch_out_c0_exe44;

    // out_c0_exe5398(GPOUT,94)
    assign out_c0_exe5398 = conv2d1x1_B4_branch_out_c0_exe5398;

    // out_c0_exe6399(GPOUT,95)
    assign out_c0_exe6399 = conv2d1x1_B4_branch_out_c0_exe6399;

    // out_c0_exe8401(GPOUT,96)
    assign out_c0_exe8401 = conv2d1x1_B4_branch_out_c0_exe8401;

    // out_c0_exe9402(GPOUT,97)
    assign out_c0_exe9402 = conv2d1x1_B4_branch_out_c0_exe9402;

    // out_exiting_stall_out(GPOUT,98)
    assign out_exiting_stall_out = bb_conv2d1x1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,99)
    assign out_exiting_valid_out = bb_conv2d1x1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_valid_out;

    // out_lm96(GPOUT,100)
    assign out_lm96 = conv2d1x1_B4_branch_out_lm96;

    // out_lm96_conv2d1x1_avm_address(GPOUT,101)
    assign out_lm96_conv2d1x1_avm_address = bb_conv2d1x1_B4_stall_region_out_lm96_conv2d1x1_avm_address;

    // out_lm96_conv2d1x1_avm_burstcount(GPOUT,102)
    assign out_lm96_conv2d1x1_avm_burstcount = bb_conv2d1x1_B4_stall_region_out_lm96_conv2d1x1_avm_burstcount;

    // out_lm96_conv2d1x1_avm_byteenable(GPOUT,103)
    assign out_lm96_conv2d1x1_avm_byteenable = bb_conv2d1x1_B4_stall_region_out_lm96_conv2d1x1_avm_byteenable;

    // out_lm96_conv2d1x1_avm_enable(GPOUT,104)
    assign out_lm96_conv2d1x1_avm_enable = bb_conv2d1x1_B4_stall_region_out_lm96_conv2d1x1_avm_enable;

    // out_lm96_conv2d1x1_avm_read(GPOUT,105)
    assign out_lm96_conv2d1x1_avm_read = bb_conv2d1x1_B4_stall_region_out_lm96_conv2d1x1_avm_read;

    // out_lm96_conv2d1x1_avm_write(GPOUT,106)
    assign out_lm96_conv2d1x1_avm_write = bb_conv2d1x1_B4_stall_region_out_lm96_conv2d1x1_avm_write;

    // out_lm96_conv2d1x1_avm_writedata(GPOUT,107)
    assign out_lm96_conv2d1x1_avm_writedata = bb_conv2d1x1_B4_stall_region_out_lm96_conv2d1x1_avm_writedata;

    // out_stall_out_0(GPOUT,108)
    assign out_stall_out_0 = conv2d1x1_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,109)
    assign out_stall_out_1 = conv2d1x1_B4_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,110)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,111)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,112)
    assign out_valid_out_0 = conv2d1x1_B4_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,114)
    assign out_pipeline_valid_out = bb_conv2d1x1_B4_stall_region_out_pipeline_valid_out;

endmodule
