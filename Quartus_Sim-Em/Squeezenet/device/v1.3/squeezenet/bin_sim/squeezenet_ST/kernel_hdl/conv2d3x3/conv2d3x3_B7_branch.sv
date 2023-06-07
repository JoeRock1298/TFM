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

// SystemVerilog created from conv2d3x3_B7_branch
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B7_branch (
    input wire [31:0] in_add110,
    input wire [31:0] in_add247,
    input wire [0:0] in_c0_exe1627,
    input wire [31:0] in_c0_exe2628,
    input wire [31:0] in_c0_exe3629,
    input wire [31:0] in_c0_exe4630,
    input wire [0:0] in_c0_exe5631,
    input wire [0:0] in_cmp26120,
    input wire [0:0] in_cmp26265,
    input wire [0:0] in_cmp26_1135,
    input wire [0:0] in_cmp26_1292,
    input wire [0:0] in_cmp26_2150,
    input wire [0:0] in_cmp26_2319,
    input wire [0:0] in_cmp27125,
    input wire [0:0] in_cmp27274,
    input wire [0:0] in_cmp27_1140,
    input wire [0:0] in_cmp27_1301,
    input wire [0:0] in_cmp27_2155,
    input wire [0:0] in_cmp27_2328,
    input wire [63:0] in_filter_weight_addr_067_replace_phi204,
    input wire [63:0] in_filter_weight_addr_067_replace_phi85_pop19346,
    input wire [63:0] in_filter_weight_addr_067_replace_phi87,
    input wire [31:0] in_j_061_pop24179,
    input wire [31:0] in_k_059,
    input wire [31:0] in_lm25226,
    input wire [31:0] in_lm2597_pop21364,
    input wire [31:0] in_lm2599,
    input wire [31:0] in_mul56115,
    input wire [31:0] in_mul56256,
    input wire [0:0] in_notcmp73175,
    input wire [0:0] in_notcmp77160,
    input wire [0:0] in_notcmp77337,
    input wire [0:0] in_notcmp81103_pop22373,
    input wire [0:0] in_notcmp81105,
    input wire [0:0] in_notcmp81237,
    input wire [63:0] in_output_im_addr_068_replace_phi215,
    input wire [63:0] in_output_im_addr_068_replace_phi91_pop20355,
    input wire [63:0] in_output_im_addr_068_replace_phi93,
    input wire [31:0] in_pad_sync_buffer171,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_stride_sync_buffer167,
    input wire [31:0] in_sub_1130,
    input wire [31:0] in_sub_1283,
    input wire [31:0] in_sub_2145,
    input wire [31:0] in_sub_2310,
    input wire [31:0] in_tmp_058,
    input wire [0:0] in_valid_in,
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
    output wire [0:0] out_stall_out,
    output wire [31:0] out_stride_sync_buffer167,
    output wire [31:0] out_sub_1130,
    output wire [31:0] out_sub_1283,
    output wire [31:0] out_sub_2145,
    output wire [31:0] out_sub_2310,
    output wire [31:0] out_tmp_058,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_add110(GPOUT,49)
    assign out_add110 = in_add110;

    // out_add247(GPOUT,50)
    assign out_add247 = in_add247;

    // out_c0_exe1627(GPOUT,51)
    assign out_c0_exe1627 = in_c0_exe1627;

    // out_c0_exe2628(GPOUT,52)
    assign out_c0_exe2628 = in_c0_exe2628;

    // out_c0_exe3629(GPOUT,53)
    assign out_c0_exe3629 = in_c0_exe3629;

    // out_c0_exe4630(GPOUT,54)
    assign out_c0_exe4630 = in_c0_exe4630;

    // out_c0_exe5631(GPOUT,55)
    assign out_c0_exe5631 = in_c0_exe5631;

    // out_cmp26120(GPOUT,56)
    assign out_cmp26120 = in_cmp26120;

    // out_cmp26265(GPOUT,57)
    assign out_cmp26265 = in_cmp26265;

    // out_cmp26_1135(GPOUT,58)
    assign out_cmp26_1135 = in_cmp26_1135;

    // out_cmp26_1292(GPOUT,59)
    assign out_cmp26_1292 = in_cmp26_1292;

    // out_cmp26_2150(GPOUT,60)
    assign out_cmp26_2150 = in_cmp26_2150;

    // out_cmp26_2319(GPOUT,61)
    assign out_cmp26_2319 = in_cmp26_2319;

    // out_cmp27125(GPOUT,62)
    assign out_cmp27125 = in_cmp27125;

    // out_cmp27274(GPOUT,63)
    assign out_cmp27274 = in_cmp27274;

    // out_cmp27_1140(GPOUT,64)
    assign out_cmp27_1140 = in_cmp27_1140;

    // out_cmp27_1301(GPOUT,65)
    assign out_cmp27_1301 = in_cmp27_1301;

    // out_cmp27_2155(GPOUT,66)
    assign out_cmp27_2155 = in_cmp27_2155;

    // out_cmp27_2328(GPOUT,67)
    assign out_cmp27_2328 = in_cmp27_2328;

    // out_filter_weight_addr_067_replace_phi204(GPOUT,68)
    assign out_filter_weight_addr_067_replace_phi204 = in_filter_weight_addr_067_replace_phi204;

    // out_filter_weight_addr_067_replace_phi85_pop19346(GPOUT,69)
    assign out_filter_weight_addr_067_replace_phi85_pop19346 = in_filter_weight_addr_067_replace_phi85_pop19346;

    // out_filter_weight_addr_067_replace_phi87(GPOUT,70)
    assign out_filter_weight_addr_067_replace_phi87 = in_filter_weight_addr_067_replace_phi87;

    // out_j_061_pop24179(GPOUT,71)
    assign out_j_061_pop24179 = in_j_061_pop24179;

    // out_k_059(GPOUT,72)
    assign out_k_059 = in_k_059;

    // out_lm25226(GPOUT,73)
    assign out_lm25226 = in_lm25226;

    // out_lm2597_pop21364(GPOUT,74)
    assign out_lm2597_pop21364 = in_lm2597_pop21364;

    // out_lm2599(GPOUT,75)
    assign out_lm2599 = in_lm2599;

    // out_mul56115(GPOUT,76)
    assign out_mul56115 = in_mul56115;

    // out_mul56256(GPOUT,77)
    assign out_mul56256 = in_mul56256;

    // out_notcmp73175(GPOUT,78)
    assign out_notcmp73175 = in_notcmp73175;

    // out_notcmp77160(GPOUT,79)
    assign out_notcmp77160 = in_notcmp77160;

    // out_notcmp77337(GPOUT,80)
    assign out_notcmp77337 = in_notcmp77337;

    // out_notcmp81103_pop22373(GPOUT,81)
    assign out_notcmp81103_pop22373 = in_notcmp81103_pop22373;

    // out_notcmp81105(GPOUT,82)
    assign out_notcmp81105 = in_notcmp81105;

    // out_notcmp81237(GPOUT,83)
    assign out_notcmp81237 = in_notcmp81237;

    // out_output_im_addr_068_replace_phi215(GPOUT,84)
    assign out_output_im_addr_068_replace_phi215 = in_output_im_addr_068_replace_phi215;

    // out_output_im_addr_068_replace_phi91_pop20355(GPOUT,85)
    assign out_output_im_addr_068_replace_phi91_pop20355 = in_output_im_addr_068_replace_phi91_pop20355;

    // out_output_im_addr_068_replace_phi93(GPOUT,86)
    assign out_output_im_addr_068_replace_phi93 = in_output_im_addr_068_replace_phi93;

    // out_pad_sync_buffer171(GPOUT,87)
    assign out_pad_sync_buffer171 = in_pad_sync_buffer171;

    // stall_out(LOGICAL,96)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,88)
    assign out_stall_out = stall_out_q;

    // out_stride_sync_buffer167(GPOUT,89)
    assign out_stride_sync_buffer167 = in_stride_sync_buffer167;

    // out_sub_1130(GPOUT,90)
    assign out_sub_1130 = in_sub_1130;

    // out_sub_1283(GPOUT,91)
    assign out_sub_1283 = in_sub_1283;

    // out_sub_2145(GPOUT,92)
    assign out_sub_2145 = in_sub_2145;

    // out_sub_2310(GPOUT,93)
    assign out_sub_2310 = in_sub_2310;

    // out_tmp_058(GPOUT,94)
    assign out_tmp_058 = in_tmp_058;

    // out_valid_out_0(GPOUT,95)
    assign out_valid_out_0 = in_valid_in;

endmodule
