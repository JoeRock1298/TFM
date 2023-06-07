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

// SystemVerilog created from conv2d3x3_bb_B7
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B7 (
    input wire [31:0] in_add110_0,
    input wire [31:0] in_add110_1,
    input wire [31:0] in_add247_0,
    input wire [31:0] in_add247_1,
    input wire [0:0] in_cmp26120_0,
    input wire [0:0] in_cmp26120_1,
    input wire [0:0] in_cmp26265_0,
    input wire [0:0] in_cmp26265_1,
    input wire [0:0] in_cmp26_1135_0,
    input wire [0:0] in_cmp26_1135_1,
    input wire [0:0] in_cmp26_1292_0,
    input wire [0:0] in_cmp26_1292_1,
    input wire [0:0] in_cmp26_2150_0,
    input wire [0:0] in_cmp26_2150_1,
    input wire [0:0] in_cmp26_2319_0,
    input wire [0:0] in_cmp26_2319_1,
    input wire [0:0] in_cmp27125_0,
    input wire [0:0] in_cmp27125_1,
    input wire [0:0] in_cmp27274_0,
    input wire [0:0] in_cmp27274_1,
    input wire [0:0] in_cmp27_1140_0,
    input wire [0:0] in_cmp27_1140_1,
    input wire [0:0] in_cmp27_1301_0,
    input wire [0:0] in_cmp27_1301_1,
    input wire [0:0] in_cmp27_2155_0,
    input wire [0:0] in_cmp27_2155_1,
    input wire [0:0] in_cmp27_2328_0,
    input wire [0:0] in_cmp27_2328_1,
    input wire [63:0] in_filter_bias,
    input wire [63:0] in_filter_weight_addr_067_replace_phi204_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi204_1,
    input wire [63:0] in_filter_weight_addr_067_replace_phi85_pop19346_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi85_pop19346_1,
    input wire [63:0] in_filter_weight_addr_067_replace_phi87_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi87_1,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_intel_reserved_ffwd_4_0,
    input wire [31:0] in_j_061_pop24179_0,
    input wire [31:0] in_j_061_pop24179_1,
    input wire [31:0] in_k_059_0,
    input wire [31:0] in_k_059_1,
    input wire [31:0] in_lm25226_0,
    input wire [31:0] in_lm25226_1,
    input wire [31:0] in_lm2597_pop21364_0,
    input wire [31:0] in_lm2597_pop21364_1,
    input wire [31:0] in_lm2599_0,
    input wire [31:0] in_lm2599_1,
    input wire [31:0] in_mul56115_0,
    input wire [31:0] in_mul56115_1,
    input wire [31:0] in_mul56256_0,
    input wire [31:0] in_mul56256_1,
    input wire [0:0] in_notcmp73175_0,
    input wire [0:0] in_notcmp73175_1,
    input wire [0:0] in_notcmp77160_0,
    input wire [0:0] in_notcmp77160_1,
    input wire [0:0] in_notcmp77337_0,
    input wire [0:0] in_notcmp77337_1,
    input wire [0:0] in_notcmp81103_pop22373_0,
    input wire [0:0] in_notcmp81103_pop22373_1,
    input wire [0:0] in_notcmp81105_0,
    input wire [0:0] in_notcmp81105_1,
    input wire [0:0] in_notcmp81237_0,
    input wire [0:0] in_notcmp81237_1,
    input wire [63:0] in_output_im_addr_068_replace_phi215_0,
    input wire [63:0] in_output_im_addr_068_replace_phi215_1,
    input wire [63:0] in_output_im_addr_068_replace_phi91_pop20355_0,
    input wire [63:0] in_output_im_addr_068_replace_phi91_pop20355_1,
    input wire [63:0] in_output_im_addr_068_replace_phi93_0,
    input wire [63:0] in_output_im_addr_068_replace_phi93_1,
    input wire [31:0] in_output_size,
    input wire [31:0] in_pad,
    input wire [31:0] in_pad_sync_buffer171_0,
    input wire [31:0] in_pad_sync_buffer171_1,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_stride,
    input wire [31:0] in_stride_sync_buffer167_0,
    input wire [31:0] in_stride_sync_buffer167_1,
    input wire [31:0] in_sub_1130_0,
    input wire [31:0] in_sub_1130_1,
    input wire [31:0] in_sub_1283_0,
    input wire [31:0] in_sub_1283_1,
    input wire [31:0] in_sub_2145_0,
    input wire [31:0] in_sub_2145_1,
    input wire [31:0] in_sub_2310_0,
    input wire [31:0] in_sub_2310_1,
    input wire [31:0] in_tmp_058_0,
    input wire [31:0] in_tmp_058_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_add110,
    output wire [31:0] out_add247,
    output wire [0:0] out_c0_exe1627,
    output wire [31:0] out_c0_exe2628,
    output wire [31:0] out_c0_exe3629,
    output wire [31:0] out_c0_exe4630,
    output wire [0:0] out_c0_exe5631,
    output wire [0:0] out_cmp26120,
    output wire [0:0] out_cmp26265,
    output wire [0:0] out_cmp26_1135,
    output wire [0:0] out_cmp26_1292,
    output wire [0:0] out_cmp26_2150,
    output wire [0:0] out_cmp26_2319,
    output wire [0:0] out_cmp27125,
    output wire [0:0] out_cmp27274,
    output wire [0:0] out_cmp27_1140,
    output wire [0:0] out_cmp27_1301,
    output wire [0:0] out_cmp27_2155,
    output wire [0:0] out_cmp27_2328,
    output wire [63:0] out_filter_weight_addr_067_replace_phi204,
    output wire [63:0] out_filter_weight_addr_067_replace_phi85_pop19346,
    output wire [63:0] out_filter_weight_addr_067_replace_phi87,
    output wire [31:0] out_j_061_pop24179,
    output wire [31:0] out_k_059,
    output wire [31:0] out_lm25226,
    output wire [31:0] out_lm2597_pop21364,
    output wire [31:0] out_lm2599,
    output wire [31:0] out_mul56115,
    output wire [31:0] out_mul56256,
    output wire [0:0] out_notcmp73175,
    output wire [0:0] out_notcmp77160,
    output wire [0:0] out_notcmp77337,
    output wire [0:0] out_notcmp81103_pop22373,
    output wire [0:0] out_notcmp81105,
    output wire [0:0] out_notcmp81237,
    output wire [63:0] out_output_im_addr_068_replace_phi215,
    output wire [63:0] out_output_im_addr_068_replace_phi91_pop20355,
    output wire [63:0] out_output_im_addr_068_replace_phi93,
    output wire [31:0] out_pad_sync_buffer171,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_stride_sync_buffer167,
    output wire [31:0] out_sub_1130,
    output wire [31:0] out_sub_1283,
    output wire [31:0] out_sub_2145,
    output wire [31:0] out_sub_2310,
    output wire [31:0] out_tmp_058,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_conv2d3x3_B7_stall_region_out_add110;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_add247;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_c0_exe1627;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_c0_exe2628;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_c0_exe3629;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_c0_exe4630;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_c0_exe5631;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_cmp26120;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_cmp26265;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_cmp26_1135;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_cmp26_1292;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_cmp26_2150;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_cmp26_2319;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_cmp27125;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_cmp27274;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_cmp27_1140;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_cmp27_1301;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_cmp27_2155;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_cmp27_2328;
    wire [63:0] bb_conv2d3x3_B7_stall_region_out_filter_weight_addr_067_replace_phi204;
    wire [63:0] bb_conv2d3x3_B7_stall_region_out_filter_weight_addr_067_replace_phi85_pop19346;
    wire [63:0] bb_conv2d3x3_B7_stall_region_out_filter_weight_addr_067_replace_phi87;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_j_061_pop24179;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_k_059;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_lm25226;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_lm2597_pop21364;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_lm2599;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_mul56115;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_mul56256;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_notcmp73175;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_notcmp77160;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_notcmp77337;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_notcmp81103_pop22373;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_notcmp81105;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_notcmp81237;
    wire [63:0] bb_conv2d3x3_B7_stall_region_out_output_im_addr_068_replace_phi215;
    wire [63:0] bb_conv2d3x3_B7_stall_region_out_output_im_addr_068_replace_phi91_pop20355;
    wire [63:0] bb_conv2d3x3_B7_stall_region_out_output_im_addr_068_replace_phi93;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_pad_sync_buffer171;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_stall_out;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_stride_sync_buffer167;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_sub_1130;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_sub_1283;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_sub_2145;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_sub_2310;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_tmp_058;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_valid_out;
    wire [31:0] conv2d3x3_B7_branch_out_add110;
    wire [31:0] conv2d3x3_B7_branch_out_add247;
    wire [0:0] conv2d3x3_B7_branch_out_c0_exe1627;
    wire [31:0] conv2d3x3_B7_branch_out_c0_exe2628;
    wire [31:0] conv2d3x3_B7_branch_out_c0_exe3629;
    wire [31:0] conv2d3x3_B7_branch_out_c0_exe4630;
    wire [0:0] conv2d3x3_B7_branch_out_c0_exe5631;
    wire [0:0] conv2d3x3_B7_branch_out_cmp26120;
    wire [0:0] conv2d3x3_B7_branch_out_cmp26265;
    wire [0:0] conv2d3x3_B7_branch_out_cmp26_1135;
    wire [0:0] conv2d3x3_B7_branch_out_cmp26_1292;
    wire [0:0] conv2d3x3_B7_branch_out_cmp26_2150;
    wire [0:0] conv2d3x3_B7_branch_out_cmp26_2319;
    wire [0:0] conv2d3x3_B7_branch_out_cmp27125;
    wire [0:0] conv2d3x3_B7_branch_out_cmp27274;
    wire [0:0] conv2d3x3_B7_branch_out_cmp27_1140;
    wire [0:0] conv2d3x3_B7_branch_out_cmp27_1301;
    wire [0:0] conv2d3x3_B7_branch_out_cmp27_2155;
    wire [0:0] conv2d3x3_B7_branch_out_cmp27_2328;
    wire [63:0] conv2d3x3_B7_branch_out_filter_weight_addr_067_replace_phi204;
    wire [63:0] conv2d3x3_B7_branch_out_filter_weight_addr_067_replace_phi85_pop19346;
    wire [63:0] conv2d3x3_B7_branch_out_filter_weight_addr_067_replace_phi87;
    wire [31:0] conv2d3x3_B7_branch_out_j_061_pop24179;
    wire [31:0] conv2d3x3_B7_branch_out_k_059;
    wire [31:0] conv2d3x3_B7_branch_out_lm25226;
    wire [31:0] conv2d3x3_B7_branch_out_lm2597_pop21364;
    wire [31:0] conv2d3x3_B7_branch_out_lm2599;
    wire [31:0] conv2d3x3_B7_branch_out_mul56115;
    wire [31:0] conv2d3x3_B7_branch_out_mul56256;
    wire [0:0] conv2d3x3_B7_branch_out_notcmp73175;
    wire [0:0] conv2d3x3_B7_branch_out_notcmp77160;
    wire [0:0] conv2d3x3_B7_branch_out_notcmp77337;
    wire [0:0] conv2d3x3_B7_branch_out_notcmp81103_pop22373;
    wire [0:0] conv2d3x3_B7_branch_out_notcmp81105;
    wire [0:0] conv2d3x3_B7_branch_out_notcmp81237;
    wire [63:0] conv2d3x3_B7_branch_out_output_im_addr_068_replace_phi215;
    wire [63:0] conv2d3x3_B7_branch_out_output_im_addr_068_replace_phi91_pop20355;
    wire [63:0] conv2d3x3_B7_branch_out_output_im_addr_068_replace_phi93;
    wire [31:0] conv2d3x3_B7_branch_out_pad_sync_buffer171;
    wire [0:0] conv2d3x3_B7_branch_out_stall_out;
    wire [31:0] conv2d3x3_B7_branch_out_stride_sync_buffer167;
    wire [31:0] conv2d3x3_B7_branch_out_sub_1130;
    wire [31:0] conv2d3x3_B7_branch_out_sub_1283;
    wire [31:0] conv2d3x3_B7_branch_out_sub_2145;
    wire [31:0] conv2d3x3_B7_branch_out_sub_2310;
    wire [31:0] conv2d3x3_B7_branch_out_tmp_058;
    wire [0:0] conv2d3x3_B7_branch_out_valid_out_0;
    wire [31:0] conv2d3x3_B7_merge_out_add110;
    wire [31:0] conv2d3x3_B7_merge_out_add247;
    wire [0:0] conv2d3x3_B7_merge_out_cmp26120;
    wire [0:0] conv2d3x3_B7_merge_out_cmp26265;
    wire [0:0] conv2d3x3_B7_merge_out_cmp26_1135;
    wire [0:0] conv2d3x3_B7_merge_out_cmp26_1292;
    wire [0:0] conv2d3x3_B7_merge_out_cmp26_2150;
    wire [0:0] conv2d3x3_B7_merge_out_cmp26_2319;
    wire [0:0] conv2d3x3_B7_merge_out_cmp27125;
    wire [0:0] conv2d3x3_B7_merge_out_cmp27274;
    wire [0:0] conv2d3x3_B7_merge_out_cmp27_1140;
    wire [0:0] conv2d3x3_B7_merge_out_cmp27_1301;
    wire [0:0] conv2d3x3_B7_merge_out_cmp27_2155;
    wire [0:0] conv2d3x3_B7_merge_out_cmp27_2328;
    wire [63:0] conv2d3x3_B7_merge_out_filter_weight_addr_067_replace_phi204;
    wire [63:0] conv2d3x3_B7_merge_out_filter_weight_addr_067_replace_phi85_pop19346;
    wire [63:0] conv2d3x3_B7_merge_out_filter_weight_addr_067_replace_phi87;
    wire [31:0] conv2d3x3_B7_merge_out_j_061_pop24179;
    wire [31:0] conv2d3x3_B7_merge_out_k_059;
    wire [31:0] conv2d3x3_B7_merge_out_lm25226;
    wire [31:0] conv2d3x3_B7_merge_out_lm2597_pop21364;
    wire [31:0] conv2d3x3_B7_merge_out_lm2599;
    wire [31:0] conv2d3x3_B7_merge_out_mul56115;
    wire [31:0] conv2d3x3_B7_merge_out_mul56256;
    wire [0:0] conv2d3x3_B7_merge_out_notcmp73175;
    wire [0:0] conv2d3x3_B7_merge_out_notcmp77160;
    wire [0:0] conv2d3x3_B7_merge_out_notcmp77337;
    wire [0:0] conv2d3x3_B7_merge_out_notcmp81103_pop22373;
    wire [0:0] conv2d3x3_B7_merge_out_notcmp81105;
    wire [0:0] conv2d3x3_B7_merge_out_notcmp81237;
    wire [63:0] conv2d3x3_B7_merge_out_output_im_addr_068_replace_phi215;
    wire [63:0] conv2d3x3_B7_merge_out_output_im_addr_068_replace_phi91_pop20355;
    wire [63:0] conv2d3x3_B7_merge_out_output_im_addr_068_replace_phi93;
    wire [31:0] conv2d3x3_B7_merge_out_pad_sync_buffer171;
    wire [0:0] conv2d3x3_B7_merge_out_stall_out_0;
    wire [0:0] conv2d3x3_B7_merge_out_stall_out_1;
    wire [31:0] conv2d3x3_B7_merge_out_stride_sync_buffer167;
    wire [31:0] conv2d3x3_B7_merge_out_sub_1130;
    wire [31:0] conv2d3x3_B7_merge_out_sub_1283;
    wire [31:0] conv2d3x3_B7_merge_out_sub_2145;
    wire [31:0] conv2d3x3_B7_merge_out_sub_2310;
    wire [31:0] conv2d3x3_B7_merge_out_tmp_058;
    wire [0:0] conv2d3x3_B7_merge_out_valid_out;


    // conv2d3x3_B7_merge(BLACKBOX,4)
    conv2d3x3_B7_merge theconv2d3x3_B7_merge (
        .in_add110_0(in_add110_0),
        .in_add110_1(in_add110_1),
        .in_add247_0(in_add247_0),
        .in_add247_1(in_add247_1),
        .in_cmp26120_0(in_cmp26120_0),
        .in_cmp26120_1(in_cmp26120_1),
        .in_cmp26265_0(in_cmp26265_0),
        .in_cmp26265_1(in_cmp26265_1),
        .in_cmp26_1135_0(in_cmp26_1135_0),
        .in_cmp26_1135_1(in_cmp26_1135_1),
        .in_cmp26_1292_0(in_cmp26_1292_0),
        .in_cmp26_1292_1(in_cmp26_1292_1),
        .in_cmp26_2150_0(in_cmp26_2150_0),
        .in_cmp26_2150_1(in_cmp26_2150_1),
        .in_cmp26_2319_0(in_cmp26_2319_0),
        .in_cmp26_2319_1(in_cmp26_2319_1),
        .in_cmp27125_0(in_cmp27125_0),
        .in_cmp27125_1(in_cmp27125_1),
        .in_cmp27274_0(in_cmp27274_0),
        .in_cmp27274_1(in_cmp27274_1),
        .in_cmp27_1140_0(in_cmp27_1140_0),
        .in_cmp27_1140_1(in_cmp27_1140_1),
        .in_cmp27_1301_0(in_cmp27_1301_0),
        .in_cmp27_1301_1(in_cmp27_1301_1),
        .in_cmp27_2155_0(in_cmp27_2155_0),
        .in_cmp27_2155_1(in_cmp27_2155_1),
        .in_cmp27_2328_0(in_cmp27_2328_0),
        .in_cmp27_2328_1(in_cmp27_2328_1),
        .in_filter_weight_addr_067_replace_phi204_0(in_filter_weight_addr_067_replace_phi204_0),
        .in_filter_weight_addr_067_replace_phi204_1(in_filter_weight_addr_067_replace_phi204_1),
        .in_filter_weight_addr_067_replace_phi85_pop19346_0(in_filter_weight_addr_067_replace_phi85_pop19346_0),
        .in_filter_weight_addr_067_replace_phi85_pop19346_1(in_filter_weight_addr_067_replace_phi85_pop19346_1),
        .in_filter_weight_addr_067_replace_phi87_0(in_filter_weight_addr_067_replace_phi87_0),
        .in_filter_weight_addr_067_replace_phi87_1(in_filter_weight_addr_067_replace_phi87_1),
        .in_j_061_pop24179_0(in_j_061_pop24179_0),
        .in_j_061_pop24179_1(in_j_061_pop24179_1),
        .in_k_059_0(in_k_059_0),
        .in_k_059_1(in_k_059_1),
        .in_lm25226_0(in_lm25226_0),
        .in_lm25226_1(in_lm25226_1),
        .in_lm2597_pop21364_0(in_lm2597_pop21364_0),
        .in_lm2597_pop21364_1(in_lm2597_pop21364_1),
        .in_lm2599_0(in_lm2599_0),
        .in_lm2599_1(in_lm2599_1),
        .in_mul56115_0(in_mul56115_0),
        .in_mul56115_1(in_mul56115_1),
        .in_mul56256_0(in_mul56256_0),
        .in_mul56256_1(in_mul56256_1),
        .in_notcmp73175_0(in_notcmp73175_0),
        .in_notcmp73175_1(in_notcmp73175_1),
        .in_notcmp77160_0(in_notcmp77160_0),
        .in_notcmp77160_1(in_notcmp77160_1),
        .in_notcmp77337_0(in_notcmp77337_0),
        .in_notcmp77337_1(in_notcmp77337_1),
        .in_notcmp81103_pop22373_0(in_notcmp81103_pop22373_0),
        .in_notcmp81103_pop22373_1(in_notcmp81103_pop22373_1),
        .in_notcmp81105_0(in_notcmp81105_0),
        .in_notcmp81105_1(in_notcmp81105_1),
        .in_notcmp81237_0(in_notcmp81237_0),
        .in_notcmp81237_1(in_notcmp81237_1),
        .in_output_im_addr_068_replace_phi215_0(in_output_im_addr_068_replace_phi215_0),
        .in_output_im_addr_068_replace_phi215_1(in_output_im_addr_068_replace_phi215_1),
        .in_output_im_addr_068_replace_phi91_pop20355_0(in_output_im_addr_068_replace_phi91_pop20355_0),
        .in_output_im_addr_068_replace_phi91_pop20355_1(in_output_im_addr_068_replace_phi91_pop20355_1),
        .in_output_im_addr_068_replace_phi93_0(in_output_im_addr_068_replace_phi93_0),
        .in_output_im_addr_068_replace_phi93_1(in_output_im_addr_068_replace_phi93_1),
        .in_pad_sync_buffer171_0(in_pad_sync_buffer171_0),
        .in_pad_sync_buffer171_1(in_pad_sync_buffer171_1),
        .in_stall_in(bb_conv2d3x3_B7_stall_region_out_stall_out),
        .in_stride_sync_buffer167_0(in_stride_sync_buffer167_0),
        .in_stride_sync_buffer167_1(in_stride_sync_buffer167_1),
        .in_sub_1130_0(in_sub_1130_0),
        .in_sub_1130_1(in_sub_1130_1),
        .in_sub_1283_0(in_sub_1283_0),
        .in_sub_1283_1(in_sub_1283_1),
        .in_sub_2145_0(in_sub_2145_0),
        .in_sub_2145_1(in_sub_2145_1),
        .in_sub_2310_0(in_sub_2310_0),
        .in_sub_2310_1(in_sub_2310_1),
        .in_tmp_058_0(in_tmp_058_0),
        .in_tmp_058_1(in_tmp_058_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add110(conv2d3x3_B7_merge_out_add110),
        .out_add247(conv2d3x3_B7_merge_out_add247),
        .out_cmp26120(conv2d3x3_B7_merge_out_cmp26120),
        .out_cmp26265(conv2d3x3_B7_merge_out_cmp26265),
        .out_cmp26_1135(conv2d3x3_B7_merge_out_cmp26_1135),
        .out_cmp26_1292(conv2d3x3_B7_merge_out_cmp26_1292),
        .out_cmp26_2150(conv2d3x3_B7_merge_out_cmp26_2150),
        .out_cmp26_2319(conv2d3x3_B7_merge_out_cmp26_2319),
        .out_cmp27125(conv2d3x3_B7_merge_out_cmp27125),
        .out_cmp27274(conv2d3x3_B7_merge_out_cmp27274),
        .out_cmp27_1140(conv2d3x3_B7_merge_out_cmp27_1140),
        .out_cmp27_1301(conv2d3x3_B7_merge_out_cmp27_1301),
        .out_cmp27_2155(conv2d3x3_B7_merge_out_cmp27_2155),
        .out_cmp27_2328(conv2d3x3_B7_merge_out_cmp27_2328),
        .out_filter_weight_addr_067_replace_phi204(conv2d3x3_B7_merge_out_filter_weight_addr_067_replace_phi204),
        .out_filter_weight_addr_067_replace_phi85_pop19346(conv2d3x3_B7_merge_out_filter_weight_addr_067_replace_phi85_pop19346),
        .out_filter_weight_addr_067_replace_phi87(conv2d3x3_B7_merge_out_filter_weight_addr_067_replace_phi87),
        .out_j_061_pop24179(conv2d3x3_B7_merge_out_j_061_pop24179),
        .out_k_059(conv2d3x3_B7_merge_out_k_059),
        .out_lm25226(conv2d3x3_B7_merge_out_lm25226),
        .out_lm2597_pop21364(conv2d3x3_B7_merge_out_lm2597_pop21364),
        .out_lm2599(conv2d3x3_B7_merge_out_lm2599),
        .out_mul56115(conv2d3x3_B7_merge_out_mul56115),
        .out_mul56256(conv2d3x3_B7_merge_out_mul56256),
        .out_notcmp73175(conv2d3x3_B7_merge_out_notcmp73175),
        .out_notcmp77160(conv2d3x3_B7_merge_out_notcmp77160),
        .out_notcmp77337(conv2d3x3_B7_merge_out_notcmp77337),
        .out_notcmp81103_pop22373(conv2d3x3_B7_merge_out_notcmp81103_pop22373),
        .out_notcmp81105(conv2d3x3_B7_merge_out_notcmp81105),
        .out_notcmp81237(conv2d3x3_B7_merge_out_notcmp81237),
        .out_output_im_addr_068_replace_phi215(conv2d3x3_B7_merge_out_output_im_addr_068_replace_phi215),
        .out_output_im_addr_068_replace_phi91_pop20355(conv2d3x3_B7_merge_out_output_im_addr_068_replace_phi91_pop20355),
        .out_output_im_addr_068_replace_phi93(conv2d3x3_B7_merge_out_output_im_addr_068_replace_phi93),
        .out_pad_sync_buffer171(conv2d3x3_B7_merge_out_pad_sync_buffer171),
        .out_stall_out_0(conv2d3x3_B7_merge_out_stall_out_0),
        .out_stall_out_1(conv2d3x3_B7_merge_out_stall_out_1),
        .out_stride_sync_buffer167(conv2d3x3_B7_merge_out_stride_sync_buffer167),
        .out_sub_1130(conv2d3x3_B7_merge_out_sub_1130),
        .out_sub_1283(conv2d3x3_B7_merge_out_sub_1283),
        .out_sub_2145(conv2d3x3_B7_merge_out_sub_2145),
        .out_sub_2310(conv2d3x3_B7_merge_out_sub_2310),
        .out_tmp_058(conv2d3x3_B7_merge_out_tmp_058),
        .out_valid_out(conv2d3x3_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B7_stall_region(BLACKBOX,2)
    conv2d3x3_bb_B7_stall_region thebb_conv2d3x3_B7_stall_region (
        .in_add110(conv2d3x3_B7_merge_out_add110),
        .in_add247(conv2d3x3_B7_merge_out_add247),
        .in_cmp26120(conv2d3x3_B7_merge_out_cmp26120),
        .in_cmp26265(conv2d3x3_B7_merge_out_cmp26265),
        .in_cmp26_1135(conv2d3x3_B7_merge_out_cmp26_1135),
        .in_cmp26_1292(conv2d3x3_B7_merge_out_cmp26_1292),
        .in_cmp26_2150(conv2d3x3_B7_merge_out_cmp26_2150),
        .in_cmp26_2319(conv2d3x3_B7_merge_out_cmp26_2319),
        .in_cmp27125(conv2d3x3_B7_merge_out_cmp27125),
        .in_cmp27274(conv2d3x3_B7_merge_out_cmp27274),
        .in_cmp27_1140(conv2d3x3_B7_merge_out_cmp27_1140),
        .in_cmp27_1301(conv2d3x3_B7_merge_out_cmp27_1301),
        .in_cmp27_2155(conv2d3x3_B7_merge_out_cmp27_2155),
        .in_cmp27_2328(conv2d3x3_B7_merge_out_cmp27_2328),
        .in_filter_weight_addr_067_replace_phi204(conv2d3x3_B7_merge_out_filter_weight_addr_067_replace_phi204),
        .in_filter_weight_addr_067_replace_phi85_pop19346(conv2d3x3_B7_merge_out_filter_weight_addr_067_replace_phi85_pop19346),
        .in_filter_weight_addr_067_replace_phi87(conv2d3x3_B7_merge_out_filter_weight_addr_067_replace_phi87),
        .in_input_channels(in_input_channels),
        .in_input_size(in_input_size),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_j_061_pop24179(conv2d3x3_B7_merge_out_j_061_pop24179),
        .in_k_059(conv2d3x3_B7_merge_out_k_059),
        .in_lm25226(conv2d3x3_B7_merge_out_lm25226),
        .in_lm2597_pop21364(conv2d3x3_B7_merge_out_lm2597_pop21364),
        .in_lm2599(conv2d3x3_B7_merge_out_lm2599),
        .in_mul56115(conv2d3x3_B7_merge_out_mul56115),
        .in_mul56256(conv2d3x3_B7_merge_out_mul56256),
        .in_notcmp73175(conv2d3x3_B7_merge_out_notcmp73175),
        .in_notcmp77160(conv2d3x3_B7_merge_out_notcmp77160),
        .in_notcmp77337(conv2d3x3_B7_merge_out_notcmp77337),
        .in_notcmp81103_pop22373(conv2d3x3_B7_merge_out_notcmp81103_pop22373),
        .in_notcmp81105(conv2d3x3_B7_merge_out_notcmp81105),
        .in_notcmp81237(conv2d3x3_B7_merge_out_notcmp81237),
        .in_output_im_addr_068_replace_phi215(conv2d3x3_B7_merge_out_output_im_addr_068_replace_phi215),
        .in_output_im_addr_068_replace_phi91_pop20355(conv2d3x3_B7_merge_out_output_im_addr_068_replace_phi91_pop20355),
        .in_output_im_addr_068_replace_phi93(conv2d3x3_B7_merge_out_output_im_addr_068_replace_phi93),
        .in_pad_sync_buffer171(conv2d3x3_B7_merge_out_pad_sync_buffer171),
        .in_stall_in(conv2d3x3_B7_branch_out_stall_out),
        .in_stride_sync_buffer167(conv2d3x3_B7_merge_out_stride_sync_buffer167),
        .in_sub_1130(conv2d3x3_B7_merge_out_sub_1130),
        .in_sub_1283(conv2d3x3_B7_merge_out_sub_1283),
        .in_sub_2145(conv2d3x3_B7_merge_out_sub_2145),
        .in_sub_2310(conv2d3x3_B7_merge_out_sub_2310),
        .in_tmp_058(conv2d3x3_B7_merge_out_tmp_058),
        .in_valid_in(conv2d3x3_B7_merge_out_valid_out),
        .out_add110(bb_conv2d3x3_B7_stall_region_out_add110),
        .out_add247(bb_conv2d3x3_B7_stall_region_out_add247),
        .out_c0_exe1627(bb_conv2d3x3_B7_stall_region_out_c0_exe1627),
        .out_c0_exe2628(bb_conv2d3x3_B7_stall_region_out_c0_exe2628),
        .out_c0_exe3629(bb_conv2d3x3_B7_stall_region_out_c0_exe3629),
        .out_c0_exe4630(bb_conv2d3x3_B7_stall_region_out_c0_exe4630),
        .out_c0_exe5631(bb_conv2d3x3_B7_stall_region_out_c0_exe5631),
        .out_cmp26120(bb_conv2d3x3_B7_stall_region_out_cmp26120),
        .out_cmp26265(bb_conv2d3x3_B7_stall_region_out_cmp26265),
        .out_cmp26_1135(bb_conv2d3x3_B7_stall_region_out_cmp26_1135),
        .out_cmp26_1292(bb_conv2d3x3_B7_stall_region_out_cmp26_1292),
        .out_cmp26_2150(bb_conv2d3x3_B7_stall_region_out_cmp26_2150),
        .out_cmp26_2319(bb_conv2d3x3_B7_stall_region_out_cmp26_2319),
        .out_cmp27125(bb_conv2d3x3_B7_stall_region_out_cmp27125),
        .out_cmp27274(bb_conv2d3x3_B7_stall_region_out_cmp27274),
        .out_cmp27_1140(bb_conv2d3x3_B7_stall_region_out_cmp27_1140),
        .out_cmp27_1301(bb_conv2d3x3_B7_stall_region_out_cmp27_1301),
        .out_cmp27_2155(bb_conv2d3x3_B7_stall_region_out_cmp27_2155),
        .out_cmp27_2328(bb_conv2d3x3_B7_stall_region_out_cmp27_2328),
        .out_filter_weight_addr_067_replace_phi204(bb_conv2d3x3_B7_stall_region_out_filter_weight_addr_067_replace_phi204),
        .out_filter_weight_addr_067_replace_phi85_pop19346(bb_conv2d3x3_B7_stall_region_out_filter_weight_addr_067_replace_phi85_pop19346),
        .out_filter_weight_addr_067_replace_phi87(bb_conv2d3x3_B7_stall_region_out_filter_weight_addr_067_replace_phi87),
        .out_j_061_pop24179(bb_conv2d3x3_B7_stall_region_out_j_061_pop24179),
        .out_k_059(bb_conv2d3x3_B7_stall_region_out_k_059),
        .out_lm25226(bb_conv2d3x3_B7_stall_region_out_lm25226),
        .out_lm2597_pop21364(bb_conv2d3x3_B7_stall_region_out_lm2597_pop21364),
        .out_lm2599(bb_conv2d3x3_B7_stall_region_out_lm2599),
        .out_mul56115(bb_conv2d3x3_B7_stall_region_out_mul56115),
        .out_mul56256(bb_conv2d3x3_B7_stall_region_out_mul56256),
        .out_notcmp73175(bb_conv2d3x3_B7_stall_region_out_notcmp73175),
        .out_notcmp77160(bb_conv2d3x3_B7_stall_region_out_notcmp77160),
        .out_notcmp77337(bb_conv2d3x3_B7_stall_region_out_notcmp77337),
        .out_notcmp81103_pop22373(bb_conv2d3x3_B7_stall_region_out_notcmp81103_pop22373),
        .out_notcmp81105(bb_conv2d3x3_B7_stall_region_out_notcmp81105),
        .out_notcmp81237(bb_conv2d3x3_B7_stall_region_out_notcmp81237),
        .out_output_im_addr_068_replace_phi215(bb_conv2d3x3_B7_stall_region_out_output_im_addr_068_replace_phi215),
        .out_output_im_addr_068_replace_phi91_pop20355(bb_conv2d3x3_B7_stall_region_out_output_im_addr_068_replace_phi91_pop20355),
        .out_output_im_addr_068_replace_phi93(bb_conv2d3x3_B7_stall_region_out_output_im_addr_068_replace_phi93),
        .out_pad_sync_buffer171(bb_conv2d3x3_B7_stall_region_out_pad_sync_buffer171),
        .out_stall_out(bb_conv2d3x3_B7_stall_region_out_stall_out),
        .out_stride_sync_buffer167(bb_conv2d3x3_B7_stall_region_out_stride_sync_buffer167),
        .out_sub_1130(bb_conv2d3x3_B7_stall_region_out_sub_1130),
        .out_sub_1283(bb_conv2d3x3_B7_stall_region_out_sub_1283),
        .out_sub_2145(bb_conv2d3x3_B7_stall_region_out_sub_2145),
        .out_sub_2310(bb_conv2d3x3_B7_stall_region_out_sub_2310),
        .out_tmp_058(bb_conv2d3x3_B7_stall_region_out_tmp_058),
        .out_valid_out(bb_conv2d3x3_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d3x3_B7_branch(BLACKBOX,3)
    conv2d3x3_B7_branch theconv2d3x3_B7_branch (
        .in_add110(bb_conv2d3x3_B7_stall_region_out_add110),
        .in_add247(bb_conv2d3x3_B7_stall_region_out_add247),
        .in_c0_exe1627(bb_conv2d3x3_B7_stall_region_out_c0_exe1627),
        .in_c0_exe2628(bb_conv2d3x3_B7_stall_region_out_c0_exe2628),
        .in_c0_exe3629(bb_conv2d3x3_B7_stall_region_out_c0_exe3629),
        .in_c0_exe4630(bb_conv2d3x3_B7_stall_region_out_c0_exe4630),
        .in_c0_exe5631(bb_conv2d3x3_B7_stall_region_out_c0_exe5631),
        .in_cmp26120(bb_conv2d3x3_B7_stall_region_out_cmp26120),
        .in_cmp26265(bb_conv2d3x3_B7_stall_region_out_cmp26265),
        .in_cmp26_1135(bb_conv2d3x3_B7_stall_region_out_cmp26_1135),
        .in_cmp26_1292(bb_conv2d3x3_B7_stall_region_out_cmp26_1292),
        .in_cmp26_2150(bb_conv2d3x3_B7_stall_region_out_cmp26_2150),
        .in_cmp26_2319(bb_conv2d3x3_B7_stall_region_out_cmp26_2319),
        .in_cmp27125(bb_conv2d3x3_B7_stall_region_out_cmp27125),
        .in_cmp27274(bb_conv2d3x3_B7_stall_region_out_cmp27274),
        .in_cmp27_1140(bb_conv2d3x3_B7_stall_region_out_cmp27_1140),
        .in_cmp27_1301(bb_conv2d3x3_B7_stall_region_out_cmp27_1301),
        .in_cmp27_2155(bb_conv2d3x3_B7_stall_region_out_cmp27_2155),
        .in_cmp27_2328(bb_conv2d3x3_B7_stall_region_out_cmp27_2328),
        .in_filter_weight_addr_067_replace_phi204(bb_conv2d3x3_B7_stall_region_out_filter_weight_addr_067_replace_phi204),
        .in_filter_weight_addr_067_replace_phi85_pop19346(bb_conv2d3x3_B7_stall_region_out_filter_weight_addr_067_replace_phi85_pop19346),
        .in_filter_weight_addr_067_replace_phi87(bb_conv2d3x3_B7_stall_region_out_filter_weight_addr_067_replace_phi87),
        .in_j_061_pop24179(bb_conv2d3x3_B7_stall_region_out_j_061_pop24179),
        .in_k_059(bb_conv2d3x3_B7_stall_region_out_k_059),
        .in_lm25226(bb_conv2d3x3_B7_stall_region_out_lm25226),
        .in_lm2597_pop21364(bb_conv2d3x3_B7_stall_region_out_lm2597_pop21364),
        .in_lm2599(bb_conv2d3x3_B7_stall_region_out_lm2599),
        .in_mul56115(bb_conv2d3x3_B7_stall_region_out_mul56115),
        .in_mul56256(bb_conv2d3x3_B7_stall_region_out_mul56256),
        .in_notcmp73175(bb_conv2d3x3_B7_stall_region_out_notcmp73175),
        .in_notcmp77160(bb_conv2d3x3_B7_stall_region_out_notcmp77160),
        .in_notcmp77337(bb_conv2d3x3_B7_stall_region_out_notcmp77337),
        .in_notcmp81103_pop22373(bb_conv2d3x3_B7_stall_region_out_notcmp81103_pop22373),
        .in_notcmp81105(bb_conv2d3x3_B7_stall_region_out_notcmp81105),
        .in_notcmp81237(bb_conv2d3x3_B7_stall_region_out_notcmp81237),
        .in_output_im_addr_068_replace_phi215(bb_conv2d3x3_B7_stall_region_out_output_im_addr_068_replace_phi215),
        .in_output_im_addr_068_replace_phi91_pop20355(bb_conv2d3x3_B7_stall_region_out_output_im_addr_068_replace_phi91_pop20355),
        .in_output_im_addr_068_replace_phi93(bb_conv2d3x3_B7_stall_region_out_output_im_addr_068_replace_phi93),
        .in_pad_sync_buffer171(bb_conv2d3x3_B7_stall_region_out_pad_sync_buffer171),
        .in_stall_in_0(in_stall_in_0),
        .in_stride_sync_buffer167(bb_conv2d3x3_B7_stall_region_out_stride_sync_buffer167),
        .in_sub_1130(bb_conv2d3x3_B7_stall_region_out_sub_1130),
        .in_sub_1283(bb_conv2d3x3_B7_stall_region_out_sub_1283),
        .in_sub_2145(bb_conv2d3x3_B7_stall_region_out_sub_2145),
        .in_sub_2310(bb_conv2d3x3_B7_stall_region_out_sub_2310),
        .in_tmp_058(bb_conv2d3x3_B7_stall_region_out_tmp_058),
        .in_valid_in(bb_conv2d3x3_B7_stall_region_out_valid_out),
        .out_add110(conv2d3x3_B7_branch_out_add110),
        .out_add247(conv2d3x3_B7_branch_out_add247),
        .out_c0_exe1627(conv2d3x3_B7_branch_out_c0_exe1627),
        .out_c0_exe2628(conv2d3x3_B7_branch_out_c0_exe2628),
        .out_c0_exe3629(conv2d3x3_B7_branch_out_c0_exe3629),
        .out_c0_exe4630(conv2d3x3_B7_branch_out_c0_exe4630),
        .out_c0_exe5631(conv2d3x3_B7_branch_out_c0_exe5631),
        .out_cmp26120(conv2d3x3_B7_branch_out_cmp26120),
        .out_cmp26265(conv2d3x3_B7_branch_out_cmp26265),
        .out_cmp26_1135(conv2d3x3_B7_branch_out_cmp26_1135),
        .out_cmp26_1292(conv2d3x3_B7_branch_out_cmp26_1292),
        .out_cmp26_2150(conv2d3x3_B7_branch_out_cmp26_2150),
        .out_cmp26_2319(conv2d3x3_B7_branch_out_cmp26_2319),
        .out_cmp27125(conv2d3x3_B7_branch_out_cmp27125),
        .out_cmp27274(conv2d3x3_B7_branch_out_cmp27274),
        .out_cmp27_1140(conv2d3x3_B7_branch_out_cmp27_1140),
        .out_cmp27_1301(conv2d3x3_B7_branch_out_cmp27_1301),
        .out_cmp27_2155(conv2d3x3_B7_branch_out_cmp27_2155),
        .out_cmp27_2328(conv2d3x3_B7_branch_out_cmp27_2328),
        .out_filter_weight_addr_067_replace_phi204(conv2d3x3_B7_branch_out_filter_weight_addr_067_replace_phi204),
        .out_filter_weight_addr_067_replace_phi85_pop19346(conv2d3x3_B7_branch_out_filter_weight_addr_067_replace_phi85_pop19346),
        .out_filter_weight_addr_067_replace_phi87(conv2d3x3_B7_branch_out_filter_weight_addr_067_replace_phi87),
        .out_j_061_pop24179(conv2d3x3_B7_branch_out_j_061_pop24179),
        .out_k_059(conv2d3x3_B7_branch_out_k_059),
        .out_lm25226(conv2d3x3_B7_branch_out_lm25226),
        .out_lm2597_pop21364(conv2d3x3_B7_branch_out_lm2597_pop21364),
        .out_lm2599(conv2d3x3_B7_branch_out_lm2599),
        .out_mul56115(conv2d3x3_B7_branch_out_mul56115),
        .out_mul56256(conv2d3x3_B7_branch_out_mul56256),
        .out_notcmp73175(conv2d3x3_B7_branch_out_notcmp73175),
        .out_notcmp77160(conv2d3x3_B7_branch_out_notcmp77160),
        .out_notcmp77337(conv2d3x3_B7_branch_out_notcmp77337),
        .out_notcmp81103_pop22373(conv2d3x3_B7_branch_out_notcmp81103_pop22373),
        .out_notcmp81105(conv2d3x3_B7_branch_out_notcmp81105),
        .out_notcmp81237(conv2d3x3_B7_branch_out_notcmp81237),
        .out_output_im_addr_068_replace_phi215(conv2d3x3_B7_branch_out_output_im_addr_068_replace_phi215),
        .out_output_im_addr_068_replace_phi91_pop20355(conv2d3x3_B7_branch_out_output_im_addr_068_replace_phi91_pop20355),
        .out_output_im_addr_068_replace_phi93(conv2d3x3_B7_branch_out_output_im_addr_068_replace_phi93),
        .out_pad_sync_buffer171(conv2d3x3_B7_branch_out_pad_sync_buffer171),
        .out_stall_out(conv2d3x3_B7_branch_out_stall_out),
        .out_stride_sync_buffer167(conv2d3x3_B7_branch_out_stride_sync_buffer167),
        .out_sub_1130(conv2d3x3_B7_branch_out_sub_1130),
        .out_sub_1283(conv2d3x3_B7_branch_out_sub_1283),
        .out_sub_2145(conv2d3x3_B7_branch_out_sub_2145),
        .out_sub_2310(conv2d3x3_B7_branch_out_sub_2310),
        .out_tmp_058(conv2d3x3_B7_branch_out_tmp_058),
        .out_valid_out_0(conv2d3x3_B7_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_add110(GPOUT,97)
    assign out_add110 = conv2d3x3_B7_branch_out_add110;

    // out_add247(GPOUT,98)
    assign out_add247 = conv2d3x3_B7_branch_out_add247;

    // out_c0_exe1627(GPOUT,99)
    assign out_c0_exe1627 = conv2d3x3_B7_branch_out_c0_exe1627;

    // out_c0_exe2628(GPOUT,100)
    assign out_c0_exe2628 = conv2d3x3_B7_branch_out_c0_exe2628;

    // out_c0_exe3629(GPOUT,101)
    assign out_c0_exe3629 = conv2d3x3_B7_branch_out_c0_exe3629;

    // out_c0_exe4630(GPOUT,102)
    assign out_c0_exe4630 = conv2d3x3_B7_branch_out_c0_exe4630;

    // out_c0_exe5631(GPOUT,103)
    assign out_c0_exe5631 = conv2d3x3_B7_branch_out_c0_exe5631;

    // out_cmp26120(GPOUT,104)
    assign out_cmp26120 = conv2d3x3_B7_branch_out_cmp26120;

    // out_cmp26265(GPOUT,105)
    assign out_cmp26265 = conv2d3x3_B7_branch_out_cmp26265;

    // out_cmp26_1135(GPOUT,106)
    assign out_cmp26_1135 = conv2d3x3_B7_branch_out_cmp26_1135;

    // out_cmp26_1292(GPOUT,107)
    assign out_cmp26_1292 = conv2d3x3_B7_branch_out_cmp26_1292;

    // out_cmp26_2150(GPOUT,108)
    assign out_cmp26_2150 = conv2d3x3_B7_branch_out_cmp26_2150;

    // out_cmp26_2319(GPOUT,109)
    assign out_cmp26_2319 = conv2d3x3_B7_branch_out_cmp26_2319;

    // out_cmp27125(GPOUT,110)
    assign out_cmp27125 = conv2d3x3_B7_branch_out_cmp27125;

    // out_cmp27274(GPOUT,111)
    assign out_cmp27274 = conv2d3x3_B7_branch_out_cmp27274;

    // out_cmp27_1140(GPOUT,112)
    assign out_cmp27_1140 = conv2d3x3_B7_branch_out_cmp27_1140;

    // out_cmp27_1301(GPOUT,113)
    assign out_cmp27_1301 = conv2d3x3_B7_branch_out_cmp27_1301;

    // out_cmp27_2155(GPOUT,114)
    assign out_cmp27_2155 = conv2d3x3_B7_branch_out_cmp27_2155;

    // out_cmp27_2328(GPOUT,115)
    assign out_cmp27_2328 = conv2d3x3_B7_branch_out_cmp27_2328;

    // out_filter_weight_addr_067_replace_phi204(GPOUT,116)
    assign out_filter_weight_addr_067_replace_phi204 = conv2d3x3_B7_branch_out_filter_weight_addr_067_replace_phi204;

    // out_filter_weight_addr_067_replace_phi85_pop19346(GPOUT,117)
    assign out_filter_weight_addr_067_replace_phi85_pop19346 = conv2d3x3_B7_branch_out_filter_weight_addr_067_replace_phi85_pop19346;

    // out_filter_weight_addr_067_replace_phi87(GPOUT,118)
    assign out_filter_weight_addr_067_replace_phi87 = conv2d3x3_B7_branch_out_filter_weight_addr_067_replace_phi87;

    // out_j_061_pop24179(GPOUT,119)
    assign out_j_061_pop24179 = conv2d3x3_B7_branch_out_j_061_pop24179;

    // out_k_059(GPOUT,120)
    assign out_k_059 = conv2d3x3_B7_branch_out_k_059;

    // out_lm25226(GPOUT,121)
    assign out_lm25226 = conv2d3x3_B7_branch_out_lm25226;

    // out_lm2597_pop21364(GPOUT,122)
    assign out_lm2597_pop21364 = conv2d3x3_B7_branch_out_lm2597_pop21364;

    // out_lm2599(GPOUT,123)
    assign out_lm2599 = conv2d3x3_B7_branch_out_lm2599;

    // out_mul56115(GPOUT,124)
    assign out_mul56115 = conv2d3x3_B7_branch_out_mul56115;

    // out_mul56256(GPOUT,125)
    assign out_mul56256 = conv2d3x3_B7_branch_out_mul56256;

    // out_notcmp73175(GPOUT,126)
    assign out_notcmp73175 = conv2d3x3_B7_branch_out_notcmp73175;

    // out_notcmp77160(GPOUT,127)
    assign out_notcmp77160 = conv2d3x3_B7_branch_out_notcmp77160;

    // out_notcmp77337(GPOUT,128)
    assign out_notcmp77337 = conv2d3x3_B7_branch_out_notcmp77337;

    // out_notcmp81103_pop22373(GPOUT,129)
    assign out_notcmp81103_pop22373 = conv2d3x3_B7_branch_out_notcmp81103_pop22373;

    // out_notcmp81105(GPOUT,130)
    assign out_notcmp81105 = conv2d3x3_B7_branch_out_notcmp81105;

    // out_notcmp81237(GPOUT,131)
    assign out_notcmp81237 = conv2d3x3_B7_branch_out_notcmp81237;

    // out_output_im_addr_068_replace_phi215(GPOUT,132)
    assign out_output_im_addr_068_replace_phi215 = conv2d3x3_B7_branch_out_output_im_addr_068_replace_phi215;

    // out_output_im_addr_068_replace_phi91_pop20355(GPOUT,133)
    assign out_output_im_addr_068_replace_phi91_pop20355 = conv2d3x3_B7_branch_out_output_im_addr_068_replace_phi91_pop20355;

    // out_output_im_addr_068_replace_phi93(GPOUT,134)
    assign out_output_im_addr_068_replace_phi93 = conv2d3x3_B7_branch_out_output_im_addr_068_replace_phi93;

    // out_pad_sync_buffer171(GPOUT,135)
    assign out_pad_sync_buffer171 = conv2d3x3_B7_branch_out_pad_sync_buffer171;

    // out_stall_out_0(GPOUT,136)
    assign out_stall_out_0 = conv2d3x3_B7_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,137)
    assign out_stall_out_1 = conv2d3x3_B7_merge_out_stall_out_1;

    // out_stride_sync_buffer167(GPOUT,138)
    assign out_stride_sync_buffer167 = conv2d3x3_B7_branch_out_stride_sync_buffer167;

    // out_sub_1130(GPOUT,139)
    assign out_sub_1130 = conv2d3x3_B7_branch_out_sub_1130;

    // out_sub_1283(GPOUT,140)
    assign out_sub_1283 = conv2d3x3_B7_branch_out_sub_1283;

    // out_sub_2145(GPOUT,141)
    assign out_sub_2145 = conv2d3x3_B7_branch_out_sub_2145;

    // out_sub_2310(GPOUT,142)
    assign out_sub_2310 = conv2d3x3_B7_branch_out_sub_2310;

    // out_tmp_058(GPOUT,143)
    assign out_tmp_058 = conv2d3x3_B7_branch_out_tmp_058;

    // out_valid_in_0(GPOUT,144)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,145)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,146)
    assign out_valid_out_0 = conv2d3x3_B7_branch_out_valid_out_0;

endmodule
