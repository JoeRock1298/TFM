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

// SystemVerilog created from conv2d3x3_bb_B5
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B5 (
    input wire [31:0] in_add239_0,
    input wire [31:0] in_add239_1,
    input wire [0:0] in_cmp26257_0,
    input wire [0:0] in_cmp26257_1,
    input wire [0:0] in_cmp26_1284_0,
    input wire [0:0] in_cmp26_1284_1,
    input wire [0:0] in_cmp26_2311_0,
    input wire [0:0] in_cmp26_2311_1,
    input wire [0:0] in_cmp27266_0,
    input wire [0:0] in_cmp27266_1,
    input wire [0:0] in_cmp27_1293_0,
    input wire [0:0] in_cmp27_1293_1,
    input wire [0:0] in_cmp27_2320_0,
    input wire [0:0] in_cmp27_2320_1,
    input wire [63:0] in_filter_bias,
    input wire [63:0] in_filter_weight_addr_067_replace_phi205_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi205_1,
    input wire [63:0] in_filter_weight_addr_067_replace_phi85_pop19338_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi85_pop19338_1,
    input wire [0:0] in_forked35_0,
    input wire [0:0] in_forked35_1,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [0:0] in_intel_reserved_ffwd_4_0,
    input wire [32:0] in_intel_reserved_ffwd_6_0,
    input wire [31:0] in_lm25227_0,
    input wire [31:0] in_lm25227_1,
    input wire [31:0] in_lm2597_pop21356_0,
    input wire [31:0] in_lm2597_pop21356_1,
    input wire [31:0] in_mul56248_0,
    input wire [31:0] in_mul56248_1,
    input wire [0:0] in_notcmp77329_0,
    input wire [0:0] in_notcmp77329_1,
    input wire [0:0] in_notcmp81103_pop22365_0,
    input wire [0:0] in_notcmp81103_pop22365_1,
    input wire [0:0] in_notcmp81238_0,
    input wire [0:0] in_notcmp81238_1,
    input wire [63:0] in_output_im_addr_068_replace_phi216_0,
    input wire [63:0] in_output_im_addr_068_replace_phi216_1,
    input wire [63:0] in_output_im_addr_068_replace_phi91_pop20347_0,
    input wire [63:0] in_output_im_addr_068_replace_phi91_pop20347_1,
    input wire [31:0] in_output_size,
    input wire [31:0] in_pad,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_stride,
    input wire [31:0] in_sub_1275_0,
    input wire [31:0] in_sub_1275_1,
    input wire [31:0] in_sub_2302_0,
    input wire [31:0] in_sub_2302_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe10605,
    output wire [31:0] out_c0_exe11606,
    output wire [0:0] out_c0_exe12607,
    output wire [0:0] out_c0_exe13608,
    output wire [31:0] out_c0_exe14609,
    output wire [0:0] out_c0_exe15610,
    output wire [31:0] out_c0_exe1596,
    output wire [0:0] out_c0_exe16611,
    output wire [31:0] out_c0_exe17612,
    output wire [0:0] out_c0_exe18613,
    output wire [0:0] out_c0_exe19614,
    output wire [0:0] out_c0_exe20615,
    output wire [63:0] out_c0_exe21,
    output wire [63:0] out_c0_exe22,
    output wire [31:0] out_c0_exe23,
    output wire [0:0] out_c0_exe24,
    output wire [31:0] out_c0_exe25,
    output wire [31:0] out_c0_exe2597,
    output wire [31:0] out_c0_exe26,
    output wire [0:0] out_c0_exe27,
    output wire [0:0] out_c0_exe28,
    output wire [31:0] out_c0_exe29,
    output wire [0:0] out_c0_exe30,
    output wire [0:0] out_c0_exe31,
    output wire [31:0] out_c0_exe32,
    output wire [0:0] out_c0_exe33,
    output wire [0:0] out_c0_exe34,
    output wire [0:0] out_c0_exe35,
    output wire [63:0] out_c0_exe36,
    output wire [63:0] out_c0_exe37,
    output wire [31:0] out_c0_exe38,
    output wire [0:0] out_c0_exe39,
    output wire [0:0] out_c0_exe4599,
    output wire [31:0] out_c0_exe5600,
    output wire [63:0] out_c0_exe6601,
    output wire [63:0] out_c0_exe7602,
    output wire [31:0] out_c0_exe8603,
    output wire [0:0] out_c0_exe9604,
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

    wire [0:0] bb_conv2d3x3_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_conv2d3x33_exiting_stall_out;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_conv2d3x33_exiting_valid_out;
    wire [31:0] bb_conv2d3x3_B5_stall_region_out_c0_exe10605;
    wire [31:0] bb_conv2d3x3_B5_stall_region_out_c0_exe11606;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_c0_exe12607;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_c0_exe13608;
    wire [31:0] bb_conv2d3x3_B5_stall_region_out_c0_exe14609;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_c0_exe15610;
    wire [31:0] bb_conv2d3x3_B5_stall_region_out_c0_exe1596;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_c0_exe16611;
    wire [31:0] bb_conv2d3x3_B5_stall_region_out_c0_exe17612;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_c0_exe18613;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_c0_exe19614;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_c0_exe20615;
    wire [63:0] bb_conv2d3x3_B5_stall_region_out_c0_exe21;
    wire [63:0] bb_conv2d3x3_B5_stall_region_out_c0_exe22;
    wire [31:0] bb_conv2d3x3_B5_stall_region_out_c0_exe23;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_c0_exe24;
    wire [31:0] bb_conv2d3x3_B5_stall_region_out_c0_exe25;
    wire [31:0] bb_conv2d3x3_B5_stall_region_out_c0_exe2597;
    wire [31:0] bb_conv2d3x3_B5_stall_region_out_c0_exe26;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_c0_exe27;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_c0_exe28;
    wire [31:0] bb_conv2d3x3_B5_stall_region_out_c0_exe29;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_c0_exe30;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_c0_exe31;
    wire [31:0] bb_conv2d3x3_B5_stall_region_out_c0_exe32;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_c0_exe33;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_c0_exe34;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_c0_exe35;
    wire [63:0] bb_conv2d3x3_B5_stall_region_out_c0_exe36;
    wire [63:0] bb_conv2d3x3_B5_stall_region_out_c0_exe37;
    wire [31:0] bb_conv2d3x3_B5_stall_region_out_c0_exe38;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_c0_exe39;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_c0_exe4599;
    wire [31:0] bb_conv2d3x3_B5_stall_region_out_c0_exe5600;
    wire [63:0] bb_conv2d3x3_B5_stall_region_out_c0_exe6601;
    wire [63:0] bb_conv2d3x3_B5_stall_region_out_c0_exe7602;
    wire [31:0] bb_conv2d3x3_B5_stall_region_out_c0_exe8603;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_c0_exe9604;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_stall_out;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_valid_out;
    wire [31:0] conv2d3x3_B5_branch_out_c0_exe10605;
    wire [31:0] conv2d3x3_B5_branch_out_c0_exe11606;
    wire [0:0] conv2d3x3_B5_branch_out_c0_exe12607;
    wire [0:0] conv2d3x3_B5_branch_out_c0_exe13608;
    wire [31:0] conv2d3x3_B5_branch_out_c0_exe14609;
    wire [0:0] conv2d3x3_B5_branch_out_c0_exe15610;
    wire [31:0] conv2d3x3_B5_branch_out_c0_exe1596;
    wire [0:0] conv2d3x3_B5_branch_out_c0_exe16611;
    wire [31:0] conv2d3x3_B5_branch_out_c0_exe17612;
    wire [0:0] conv2d3x3_B5_branch_out_c0_exe18613;
    wire [0:0] conv2d3x3_B5_branch_out_c0_exe19614;
    wire [0:0] conv2d3x3_B5_branch_out_c0_exe20615;
    wire [63:0] conv2d3x3_B5_branch_out_c0_exe21;
    wire [63:0] conv2d3x3_B5_branch_out_c0_exe22;
    wire [31:0] conv2d3x3_B5_branch_out_c0_exe23;
    wire [0:0] conv2d3x3_B5_branch_out_c0_exe24;
    wire [31:0] conv2d3x3_B5_branch_out_c0_exe25;
    wire [31:0] conv2d3x3_B5_branch_out_c0_exe2597;
    wire [31:0] conv2d3x3_B5_branch_out_c0_exe26;
    wire [0:0] conv2d3x3_B5_branch_out_c0_exe27;
    wire [0:0] conv2d3x3_B5_branch_out_c0_exe28;
    wire [31:0] conv2d3x3_B5_branch_out_c0_exe29;
    wire [0:0] conv2d3x3_B5_branch_out_c0_exe30;
    wire [0:0] conv2d3x3_B5_branch_out_c0_exe31;
    wire [31:0] conv2d3x3_B5_branch_out_c0_exe32;
    wire [0:0] conv2d3x3_B5_branch_out_c0_exe33;
    wire [0:0] conv2d3x3_B5_branch_out_c0_exe34;
    wire [0:0] conv2d3x3_B5_branch_out_c0_exe35;
    wire [63:0] conv2d3x3_B5_branch_out_c0_exe36;
    wire [63:0] conv2d3x3_B5_branch_out_c0_exe37;
    wire [31:0] conv2d3x3_B5_branch_out_c0_exe38;
    wire [0:0] conv2d3x3_B5_branch_out_c0_exe39;
    wire [0:0] conv2d3x3_B5_branch_out_c0_exe4599;
    wire [31:0] conv2d3x3_B5_branch_out_c0_exe5600;
    wire [63:0] conv2d3x3_B5_branch_out_c0_exe6601;
    wire [63:0] conv2d3x3_B5_branch_out_c0_exe7602;
    wire [31:0] conv2d3x3_B5_branch_out_c0_exe8603;
    wire [0:0] conv2d3x3_B5_branch_out_c0_exe9604;
    wire [0:0] conv2d3x3_B5_branch_out_stall_out;
    wire [0:0] conv2d3x3_B5_branch_out_valid_out_0;
    wire [31:0] conv2d3x3_B5_merge_out_add239;
    wire [0:0] conv2d3x3_B5_merge_out_cmp26257;
    wire [0:0] conv2d3x3_B5_merge_out_cmp26_1284;
    wire [0:0] conv2d3x3_B5_merge_out_cmp26_2311;
    wire [0:0] conv2d3x3_B5_merge_out_cmp27266;
    wire [0:0] conv2d3x3_B5_merge_out_cmp27_1293;
    wire [0:0] conv2d3x3_B5_merge_out_cmp27_2320;
    wire [63:0] conv2d3x3_B5_merge_out_filter_weight_addr_067_replace_phi205;
    wire [63:0] conv2d3x3_B5_merge_out_filter_weight_addr_067_replace_phi85_pop19338;
    wire [0:0] conv2d3x3_B5_merge_out_forked35;
    wire [31:0] conv2d3x3_B5_merge_out_lm25227;
    wire [31:0] conv2d3x3_B5_merge_out_lm2597_pop21356;
    wire [31:0] conv2d3x3_B5_merge_out_mul56248;
    wire [0:0] conv2d3x3_B5_merge_out_notcmp77329;
    wire [0:0] conv2d3x3_B5_merge_out_notcmp81103_pop22365;
    wire [0:0] conv2d3x3_B5_merge_out_notcmp81238;
    wire [63:0] conv2d3x3_B5_merge_out_output_im_addr_068_replace_phi216;
    wire [63:0] conv2d3x3_B5_merge_out_output_im_addr_068_replace_phi91_pop20347;
    wire [0:0] conv2d3x3_B5_merge_out_stall_out_0;
    wire [0:0] conv2d3x3_B5_merge_out_stall_out_1;
    wire [31:0] conv2d3x3_B5_merge_out_sub_1275;
    wire [31:0] conv2d3x3_B5_merge_out_sub_2302;
    wire [0:0] conv2d3x3_B5_merge_out_valid_out;


    // conv2d3x3_B5_merge(BLACKBOX,4)
    conv2d3x3_B5_merge theconv2d3x3_B5_merge (
        .in_add239_0(in_add239_0),
        .in_add239_1(in_add239_1),
        .in_cmp26257_0(in_cmp26257_0),
        .in_cmp26257_1(in_cmp26257_1),
        .in_cmp26_1284_0(in_cmp26_1284_0),
        .in_cmp26_1284_1(in_cmp26_1284_1),
        .in_cmp26_2311_0(in_cmp26_2311_0),
        .in_cmp26_2311_1(in_cmp26_2311_1),
        .in_cmp27266_0(in_cmp27266_0),
        .in_cmp27266_1(in_cmp27266_1),
        .in_cmp27_1293_0(in_cmp27_1293_0),
        .in_cmp27_1293_1(in_cmp27_1293_1),
        .in_cmp27_2320_0(in_cmp27_2320_0),
        .in_cmp27_2320_1(in_cmp27_2320_1),
        .in_filter_weight_addr_067_replace_phi205_0(in_filter_weight_addr_067_replace_phi205_0),
        .in_filter_weight_addr_067_replace_phi205_1(in_filter_weight_addr_067_replace_phi205_1),
        .in_filter_weight_addr_067_replace_phi85_pop19338_0(in_filter_weight_addr_067_replace_phi85_pop19338_0),
        .in_filter_weight_addr_067_replace_phi85_pop19338_1(in_filter_weight_addr_067_replace_phi85_pop19338_1),
        .in_forked35_0(in_forked35_0),
        .in_forked35_1(in_forked35_1),
        .in_lm25227_0(in_lm25227_0),
        .in_lm25227_1(in_lm25227_1),
        .in_lm2597_pop21356_0(in_lm2597_pop21356_0),
        .in_lm2597_pop21356_1(in_lm2597_pop21356_1),
        .in_mul56248_0(in_mul56248_0),
        .in_mul56248_1(in_mul56248_1),
        .in_notcmp77329_0(in_notcmp77329_0),
        .in_notcmp77329_1(in_notcmp77329_1),
        .in_notcmp81103_pop22365_0(in_notcmp81103_pop22365_0),
        .in_notcmp81103_pop22365_1(in_notcmp81103_pop22365_1),
        .in_notcmp81238_0(in_notcmp81238_0),
        .in_notcmp81238_1(in_notcmp81238_1),
        .in_output_im_addr_068_replace_phi216_0(in_output_im_addr_068_replace_phi216_0),
        .in_output_im_addr_068_replace_phi216_1(in_output_im_addr_068_replace_phi216_1),
        .in_output_im_addr_068_replace_phi91_pop20347_0(in_output_im_addr_068_replace_phi91_pop20347_0),
        .in_output_im_addr_068_replace_phi91_pop20347_1(in_output_im_addr_068_replace_phi91_pop20347_1),
        .in_stall_in(bb_conv2d3x3_B5_stall_region_out_stall_out),
        .in_sub_1275_0(in_sub_1275_0),
        .in_sub_1275_1(in_sub_1275_1),
        .in_sub_2302_0(in_sub_2302_0),
        .in_sub_2302_1(in_sub_2302_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add239(conv2d3x3_B5_merge_out_add239),
        .out_cmp26257(conv2d3x3_B5_merge_out_cmp26257),
        .out_cmp26_1284(conv2d3x3_B5_merge_out_cmp26_1284),
        .out_cmp26_2311(conv2d3x3_B5_merge_out_cmp26_2311),
        .out_cmp27266(conv2d3x3_B5_merge_out_cmp27266),
        .out_cmp27_1293(conv2d3x3_B5_merge_out_cmp27_1293),
        .out_cmp27_2320(conv2d3x3_B5_merge_out_cmp27_2320),
        .out_filter_weight_addr_067_replace_phi205(conv2d3x3_B5_merge_out_filter_weight_addr_067_replace_phi205),
        .out_filter_weight_addr_067_replace_phi85_pop19338(conv2d3x3_B5_merge_out_filter_weight_addr_067_replace_phi85_pop19338),
        .out_forked35(conv2d3x3_B5_merge_out_forked35),
        .out_lm25227(conv2d3x3_B5_merge_out_lm25227),
        .out_lm2597_pop21356(conv2d3x3_B5_merge_out_lm2597_pop21356),
        .out_mul56248(conv2d3x3_B5_merge_out_mul56248),
        .out_notcmp77329(conv2d3x3_B5_merge_out_notcmp77329),
        .out_notcmp81103_pop22365(conv2d3x3_B5_merge_out_notcmp81103_pop22365),
        .out_notcmp81238(conv2d3x3_B5_merge_out_notcmp81238),
        .out_output_im_addr_068_replace_phi216(conv2d3x3_B5_merge_out_output_im_addr_068_replace_phi216),
        .out_output_im_addr_068_replace_phi91_pop20347(conv2d3x3_B5_merge_out_output_im_addr_068_replace_phi91_pop20347),
        .out_stall_out_0(conv2d3x3_B5_merge_out_stall_out_0),
        .out_stall_out_1(conv2d3x3_B5_merge_out_stall_out_1),
        .out_sub_1275(conv2d3x3_B5_merge_out_sub_1275),
        .out_sub_2302(conv2d3x3_B5_merge_out_sub_2302),
        .out_valid_out(conv2d3x3_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B5_stall_region(BLACKBOX,2)
    conv2d3x3_bb_B5_stall_region thebb_conv2d3x3_B5_stall_region (
        .in_add239(conv2d3x3_B5_merge_out_add239),
        .in_cmp26257(conv2d3x3_B5_merge_out_cmp26257),
        .in_cmp26_1284(conv2d3x3_B5_merge_out_cmp26_1284),
        .in_cmp26_2311(conv2d3x3_B5_merge_out_cmp26_2311),
        .in_cmp27266(conv2d3x3_B5_merge_out_cmp27266),
        .in_cmp27_1293(conv2d3x3_B5_merge_out_cmp27_1293),
        .in_cmp27_2320(conv2d3x3_B5_merge_out_cmp27_2320),
        .in_filter_weight_addr_067_replace_phi205(conv2d3x3_B5_merge_out_filter_weight_addr_067_replace_phi205),
        .in_filter_weight_addr_067_replace_phi85_pop19338(conv2d3x3_B5_merge_out_filter_weight_addr_067_replace_phi85_pop19338),
        .in_forked35(conv2d3x3_B5_merge_out_forked35),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_lm25227(conv2d3x3_B5_merge_out_lm25227),
        .in_lm2597_pop21356(conv2d3x3_B5_merge_out_lm2597_pop21356),
        .in_mul56248(conv2d3x3_B5_merge_out_mul56248),
        .in_notcmp77329(conv2d3x3_B5_merge_out_notcmp77329),
        .in_notcmp81103_pop22365(conv2d3x3_B5_merge_out_notcmp81103_pop22365),
        .in_notcmp81238(conv2d3x3_B5_merge_out_notcmp81238),
        .in_output_im_addr_068_replace_phi216(conv2d3x3_B5_merge_out_output_im_addr_068_replace_phi216),
        .in_output_im_addr_068_replace_phi91_pop20347(conv2d3x3_B5_merge_out_output_im_addr_068_replace_phi91_pop20347),
        .in_pad(in_pad),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(conv2d3x3_B5_branch_out_stall_out),
        .in_stride(in_stride),
        .in_sub_1275(conv2d3x3_B5_merge_out_sub_1275),
        .in_sub_2302(conv2d3x3_B5_merge_out_sub_2302),
        .in_valid_in(conv2d3x3_B5_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_conv2d3x33_exiting_stall_out(bb_conv2d3x3_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_conv2d3x33_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_conv2d3x33_exiting_valid_out(bb_conv2d3x3_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_conv2d3x33_exiting_valid_out),
        .out_c0_exe10605(bb_conv2d3x3_B5_stall_region_out_c0_exe10605),
        .out_c0_exe11606(bb_conv2d3x3_B5_stall_region_out_c0_exe11606),
        .out_c0_exe12607(bb_conv2d3x3_B5_stall_region_out_c0_exe12607),
        .out_c0_exe13608(bb_conv2d3x3_B5_stall_region_out_c0_exe13608),
        .out_c0_exe14609(bb_conv2d3x3_B5_stall_region_out_c0_exe14609),
        .out_c0_exe15610(bb_conv2d3x3_B5_stall_region_out_c0_exe15610),
        .out_c0_exe1596(bb_conv2d3x3_B5_stall_region_out_c0_exe1596),
        .out_c0_exe16611(bb_conv2d3x3_B5_stall_region_out_c0_exe16611),
        .out_c0_exe17612(bb_conv2d3x3_B5_stall_region_out_c0_exe17612),
        .out_c0_exe18613(bb_conv2d3x3_B5_stall_region_out_c0_exe18613),
        .out_c0_exe19614(bb_conv2d3x3_B5_stall_region_out_c0_exe19614),
        .out_c0_exe20615(bb_conv2d3x3_B5_stall_region_out_c0_exe20615),
        .out_c0_exe21(bb_conv2d3x3_B5_stall_region_out_c0_exe21),
        .out_c0_exe22(bb_conv2d3x3_B5_stall_region_out_c0_exe22),
        .out_c0_exe23(bb_conv2d3x3_B5_stall_region_out_c0_exe23),
        .out_c0_exe24(bb_conv2d3x3_B5_stall_region_out_c0_exe24),
        .out_c0_exe25(bb_conv2d3x3_B5_stall_region_out_c0_exe25),
        .out_c0_exe2597(bb_conv2d3x3_B5_stall_region_out_c0_exe2597),
        .out_c0_exe26(bb_conv2d3x3_B5_stall_region_out_c0_exe26),
        .out_c0_exe27(bb_conv2d3x3_B5_stall_region_out_c0_exe27),
        .out_c0_exe28(bb_conv2d3x3_B5_stall_region_out_c0_exe28),
        .out_c0_exe29(bb_conv2d3x3_B5_stall_region_out_c0_exe29),
        .out_c0_exe30(bb_conv2d3x3_B5_stall_region_out_c0_exe30),
        .out_c0_exe31(bb_conv2d3x3_B5_stall_region_out_c0_exe31),
        .out_c0_exe32(bb_conv2d3x3_B5_stall_region_out_c0_exe32),
        .out_c0_exe33(bb_conv2d3x3_B5_stall_region_out_c0_exe33),
        .out_c0_exe34(bb_conv2d3x3_B5_stall_region_out_c0_exe34),
        .out_c0_exe35(bb_conv2d3x3_B5_stall_region_out_c0_exe35),
        .out_c0_exe36(bb_conv2d3x3_B5_stall_region_out_c0_exe36),
        .out_c0_exe37(bb_conv2d3x3_B5_stall_region_out_c0_exe37),
        .out_c0_exe38(bb_conv2d3x3_B5_stall_region_out_c0_exe38),
        .out_c0_exe39(bb_conv2d3x3_B5_stall_region_out_c0_exe39),
        .out_c0_exe4599(bb_conv2d3x3_B5_stall_region_out_c0_exe4599),
        .out_c0_exe5600(bb_conv2d3x3_B5_stall_region_out_c0_exe5600),
        .out_c0_exe6601(bb_conv2d3x3_B5_stall_region_out_c0_exe6601),
        .out_c0_exe7602(bb_conv2d3x3_B5_stall_region_out_c0_exe7602),
        .out_c0_exe8603(bb_conv2d3x3_B5_stall_region_out_c0_exe8603),
        .out_c0_exe9604(bb_conv2d3x3_B5_stall_region_out_c0_exe9604),
        .out_pipeline_valid_out(bb_conv2d3x3_B5_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv2d3x3_B5_stall_region_out_stall_out),
        .out_valid_out(bb_conv2d3x3_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d3x3_B5_branch(BLACKBOX,3)
    conv2d3x3_B5_branch theconv2d3x3_B5_branch (
        .in_c0_exe10605(bb_conv2d3x3_B5_stall_region_out_c0_exe10605),
        .in_c0_exe11606(bb_conv2d3x3_B5_stall_region_out_c0_exe11606),
        .in_c0_exe12607(bb_conv2d3x3_B5_stall_region_out_c0_exe12607),
        .in_c0_exe13608(bb_conv2d3x3_B5_stall_region_out_c0_exe13608),
        .in_c0_exe14609(bb_conv2d3x3_B5_stall_region_out_c0_exe14609),
        .in_c0_exe15610(bb_conv2d3x3_B5_stall_region_out_c0_exe15610),
        .in_c0_exe1596(bb_conv2d3x3_B5_stall_region_out_c0_exe1596),
        .in_c0_exe16611(bb_conv2d3x3_B5_stall_region_out_c0_exe16611),
        .in_c0_exe17612(bb_conv2d3x3_B5_stall_region_out_c0_exe17612),
        .in_c0_exe18613(bb_conv2d3x3_B5_stall_region_out_c0_exe18613),
        .in_c0_exe19614(bb_conv2d3x3_B5_stall_region_out_c0_exe19614),
        .in_c0_exe20615(bb_conv2d3x3_B5_stall_region_out_c0_exe20615),
        .in_c0_exe21(bb_conv2d3x3_B5_stall_region_out_c0_exe21),
        .in_c0_exe22(bb_conv2d3x3_B5_stall_region_out_c0_exe22),
        .in_c0_exe23(bb_conv2d3x3_B5_stall_region_out_c0_exe23),
        .in_c0_exe24(bb_conv2d3x3_B5_stall_region_out_c0_exe24),
        .in_c0_exe25(bb_conv2d3x3_B5_stall_region_out_c0_exe25),
        .in_c0_exe2597(bb_conv2d3x3_B5_stall_region_out_c0_exe2597),
        .in_c0_exe26(bb_conv2d3x3_B5_stall_region_out_c0_exe26),
        .in_c0_exe27(bb_conv2d3x3_B5_stall_region_out_c0_exe27),
        .in_c0_exe28(bb_conv2d3x3_B5_stall_region_out_c0_exe28),
        .in_c0_exe29(bb_conv2d3x3_B5_stall_region_out_c0_exe29),
        .in_c0_exe30(bb_conv2d3x3_B5_stall_region_out_c0_exe30),
        .in_c0_exe31(bb_conv2d3x3_B5_stall_region_out_c0_exe31),
        .in_c0_exe32(bb_conv2d3x3_B5_stall_region_out_c0_exe32),
        .in_c0_exe33(bb_conv2d3x3_B5_stall_region_out_c0_exe33),
        .in_c0_exe34(bb_conv2d3x3_B5_stall_region_out_c0_exe34),
        .in_c0_exe35(bb_conv2d3x3_B5_stall_region_out_c0_exe35),
        .in_c0_exe36(bb_conv2d3x3_B5_stall_region_out_c0_exe36),
        .in_c0_exe37(bb_conv2d3x3_B5_stall_region_out_c0_exe37),
        .in_c0_exe38(bb_conv2d3x3_B5_stall_region_out_c0_exe38),
        .in_c0_exe39(bb_conv2d3x3_B5_stall_region_out_c0_exe39),
        .in_c0_exe4599(bb_conv2d3x3_B5_stall_region_out_c0_exe4599),
        .in_c0_exe5600(bb_conv2d3x3_B5_stall_region_out_c0_exe5600),
        .in_c0_exe6601(bb_conv2d3x3_B5_stall_region_out_c0_exe6601),
        .in_c0_exe7602(bb_conv2d3x3_B5_stall_region_out_c0_exe7602),
        .in_c0_exe8603(bb_conv2d3x3_B5_stall_region_out_c0_exe8603),
        .in_c0_exe9604(bb_conv2d3x3_B5_stall_region_out_c0_exe9604),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_conv2d3x3_B5_stall_region_out_valid_out),
        .out_c0_exe10605(conv2d3x3_B5_branch_out_c0_exe10605),
        .out_c0_exe11606(conv2d3x3_B5_branch_out_c0_exe11606),
        .out_c0_exe12607(conv2d3x3_B5_branch_out_c0_exe12607),
        .out_c0_exe13608(conv2d3x3_B5_branch_out_c0_exe13608),
        .out_c0_exe14609(conv2d3x3_B5_branch_out_c0_exe14609),
        .out_c0_exe15610(conv2d3x3_B5_branch_out_c0_exe15610),
        .out_c0_exe1596(conv2d3x3_B5_branch_out_c0_exe1596),
        .out_c0_exe16611(conv2d3x3_B5_branch_out_c0_exe16611),
        .out_c0_exe17612(conv2d3x3_B5_branch_out_c0_exe17612),
        .out_c0_exe18613(conv2d3x3_B5_branch_out_c0_exe18613),
        .out_c0_exe19614(conv2d3x3_B5_branch_out_c0_exe19614),
        .out_c0_exe20615(conv2d3x3_B5_branch_out_c0_exe20615),
        .out_c0_exe21(conv2d3x3_B5_branch_out_c0_exe21),
        .out_c0_exe22(conv2d3x3_B5_branch_out_c0_exe22),
        .out_c0_exe23(conv2d3x3_B5_branch_out_c0_exe23),
        .out_c0_exe24(conv2d3x3_B5_branch_out_c0_exe24),
        .out_c0_exe25(conv2d3x3_B5_branch_out_c0_exe25),
        .out_c0_exe2597(conv2d3x3_B5_branch_out_c0_exe2597),
        .out_c0_exe26(conv2d3x3_B5_branch_out_c0_exe26),
        .out_c0_exe27(conv2d3x3_B5_branch_out_c0_exe27),
        .out_c0_exe28(conv2d3x3_B5_branch_out_c0_exe28),
        .out_c0_exe29(conv2d3x3_B5_branch_out_c0_exe29),
        .out_c0_exe30(conv2d3x3_B5_branch_out_c0_exe30),
        .out_c0_exe31(conv2d3x3_B5_branch_out_c0_exe31),
        .out_c0_exe32(conv2d3x3_B5_branch_out_c0_exe32),
        .out_c0_exe33(conv2d3x3_B5_branch_out_c0_exe33),
        .out_c0_exe34(conv2d3x3_B5_branch_out_c0_exe34),
        .out_c0_exe35(conv2d3x3_B5_branch_out_c0_exe35),
        .out_c0_exe36(conv2d3x3_B5_branch_out_c0_exe36),
        .out_c0_exe37(conv2d3x3_B5_branch_out_c0_exe37),
        .out_c0_exe38(conv2d3x3_B5_branch_out_c0_exe38),
        .out_c0_exe39(conv2d3x3_B5_branch_out_c0_exe39),
        .out_c0_exe4599(conv2d3x3_B5_branch_out_c0_exe4599),
        .out_c0_exe5600(conv2d3x3_B5_branch_out_c0_exe5600),
        .out_c0_exe6601(conv2d3x3_B5_branch_out_c0_exe6601),
        .out_c0_exe7602(conv2d3x3_B5_branch_out_c0_exe7602),
        .out_c0_exe8603(conv2d3x3_B5_branch_out_c0_exe8603),
        .out_c0_exe9604(conv2d3x3_B5_branch_out_c0_exe9604),
        .out_stall_out(conv2d3x3_B5_branch_out_stall_out),
        .out_valid_out_0(conv2d3x3_B5_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10605(GPOUT,57)
    assign out_c0_exe10605 = conv2d3x3_B5_branch_out_c0_exe10605;

    // out_c0_exe11606(GPOUT,58)
    assign out_c0_exe11606 = conv2d3x3_B5_branch_out_c0_exe11606;

    // out_c0_exe12607(GPOUT,59)
    assign out_c0_exe12607 = conv2d3x3_B5_branch_out_c0_exe12607;

    // out_c0_exe13608(GPOUT,60)
    assign out_c0_exe13608 = conv2d3x3_B5_branch_out_c0_exe13608;

    // out_c0_exe14609(GPOUT,61)
    assign out_c0_exe14609 = conv2d3x3_B5_branch_out_c0_exe14609;

    // out_c0_exe15610(GPOUT,62)
    assign out_c0_exe15610 = conv2d3x3_B5_branch_out_c0_exe15610;

    // out_c0_exe1596(GPOUT,63)
    assign out_c0_exe1596 = conv2d3x3_B5_branch_out_c0_exe1596;

    // out_c0_exe16611(GPOUT,64)
    assign out_c0_exe16611 = conv2d3x3_B5_branch_out_c0_exe16611;

    // out_c0_exe17612(GPOUT,65)
    assign out_c0_exe17612 = conv2d3x3_B5_branch_out_c0_exe17612;

    // out_c0_exe18613(GPOUT,66)
    assign out_c0_exe18613 = conv2d3x3_B5_branch_out_c0_exe18613;

    // out_c0_exe19614(GPOUT,67)
    assign out_c0_exe19614 = conv2d3x3_B5_branch_out_c0_exe19614;

    // out_c0_exe20615(GPOUT,68)
    assign out_c0_exe20615 = conv2d3x3_B5_branch_out_c0_exe20615;

    // out_c0_exe21(GPOUT,69)
    assign out_c0_exe21 = conv2d3x3_B5_branch_out_c0_exe21;

    // out_c0_exe22(GPOUT,70)
    assign out_c0_exe22 = conv2d3x3_B5_branch_out_c0_exe22;

    // out_c0_exe23(GPOUT,71)
    assign out_c0_exe23 = conv2d3x3_B5_branch_out_c0_exe23;

    // out_c0_exe24(GPOUT,72)
    assign out_c0_exe24 = conv2d3x3_B5_branch_out_c0_exe24;

    // out_c0_exe25(GPOUT,73)
    assign out_c0_exe25 = conv2d3x3_B5_branch_out_c0_exe25;

    // out_c0_exe2597(GPOUT,74)
    assign out_c0_exe2597 = conv2d3x3_B5_branch_out_c0_exe2597;

    // out_c0_exe26(GPOUT,75)
    assign out_c0_exe26 = conv2d3x3_B5_branch_out_c0_exe26;

    // out_c0_exe27(GPOUT,76)
    assign out_c0_exe27 = conv2d3x3_B5_branch_out_c0_exe27;

    // out_c0_exe28(GPOUT,77)
    assign out_c0_exe28 = conv2d3x3_B5_branch_out_c0_exe28;

    // out_c0_exe29(GPOUT,78)
    assign out_c0_exe29 = conv2d3x3_B5_branch_out_c0_exe29;

    // out_c0_exe30(GPOUT,79)
    assign out_c0_exe30 = conv2d3x3_B5_branch_out_c0_exe30;

    // out_c0_exe31(GPOUT,80)
    assign out_c0_exe31 = conv2d3x3_B5_branch_out_c0_exe31;

    // out_c0_exe32(GPOUT,81)
    assign out_c0_exe32 = conv2d3x3_B5_branch_out_c0_exe32;

    // out_c0_exe33(GPOUT,82)
    assign out_c0_exe33 = conv2d3x3_B5_branch_out_c0_exe33;

    // out_c0_exe34(GPOUT,83)
    assign out_c0_exe34 = conv2d3x3_B5_branch_out_c0_exe34;

    // out_c0_exe35(GPOUT,84)
    assign out_c0_exe35 = conv2d3x3_B5_branch_out_c0_exe35;

    // out_c0_exe36(GPOUT,85)
    assign out_c0_exe36 = conv2d3x3_B5_branch_out_c0_exe36;

    // out_c0_exe37(GPOUT,86)
    assign out_c0_exe37 = conv2d3x3_B5_branch_out_c0_exe37;

    // out_c0_exe38(GPOUT,87)
    assign out_c0_exe38 = conv2d3x3_B5_branch_out_c0_exe38;

    // out_c0_exe39(GPOUT,88)
    assign out_c0_exe39 = conv2d3x3_B5_branch_out_c0_exe39;

    // out_c0_exe4599(GPOUT,89)
    assign out_c0_exe4599 = conv2d3x3_B5_branch_out_c0_exe4599;

    // out_c0_exe5600(GPOUT,90)
    assign out_c0_exe5600 = conv2d3x3_B5_branch_out_c0_exe5600;

    // out_c0_exe6601(GPOUT,91)
    assign out_c0_exe6601 = conv2d3x3_B5_branch_out_c0_exe6601;

    // out_c0_exe7602(GPOUT,92)
    assign out_c0_exe7602 = conv2d3x3_B5_branch_out_c0_exe7602;

    // out_c0_exe8603(GPOUT,93)
    assign out_c0_exe8603 = conv2d3x3_B5_branch_out_c0_exe8603;

    // out_c0_exe9604(GPOUT,94)
    assign out_c0_exe9604 = conv2d3x3_B5_branch_out_c0_exe9604;

    // out_exiting_stall_out(GPOUT,95)
    assign out_exiting_stall_out = bb_conv2d3x3_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_conv2d3x33_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,96)
    assign out_exiting_valid_out = bb_conv2d3x3_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_conv2d3x33_exiting_valid_out;

    // out_stall_out_0(GPOUT,97)
    assign out_stall_out_0 = conv2d3x3_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,98)
    assign out_stall_out_1 = conv2d3x3_B5_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,99)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,100)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,101)
    assign out_valid_out_0 = conv2d3x3_B5_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,103)
    assign out_pipeline_valid_out = bb_conv2d3x3_B5_stall_region_out_pipeline_valid_out;

endmodule
