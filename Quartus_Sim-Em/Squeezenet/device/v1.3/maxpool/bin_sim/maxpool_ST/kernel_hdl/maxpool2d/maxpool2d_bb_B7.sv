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

// SystemVerilog created from maxpool2d_bb_B7
// SystemVerilog created on Sat Jun  3 13:01:56 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_bb_B7 (
    input wire [0:0] in_forked31_0,
    input wire [0:0] in_forked31_1,
    input wire [63:0] in_input_im_addr_041_replace_phi36_pop17107_0,
    input wire [63:0] in_input_im_addr_041_replace_phi36_pop17107_1,
    input wire [63:0] in_input_im_addr_041_replace_phi37_pop22122_0,
    input wire [63:0] in_input_im_addr_041_replace_phi37_pop22122_1,
    input wire [63:0] in_input_im_addr_041_replace_phi74_0,
    input wire [63:0] in_input_im_addr_041_replace_phi74_1,
    input wire [31:0] in_input_size,
    input wire [0:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_j_034_pop20116_0,
    input wire [31:0] in_j_034_pop20116_1,
    input wire [31:0] in_mul2547_pop25131_0,
    input wire [31:0] in_mul2547_pop25131_1,
    input wire [31:0] in_mul2592_0,
    input wire [31:0] in_mul2592_1,
    input wire [31:0] in_mul44_pop24128_0,
    input wire [31:0] in_mul44_pop24128_1,
    input wire [31:0] in_mul87_0,
    input wire [31:0] in_mul87_1,
    input wire [0:0] in_notcmp19113_0,
    input wire [0:0] in_notcmp19113_1,
    input wire [0:0] in_notcmp2350_pop26134_0,
    input wire [0:0] in_notcmp2350_pop26134_1,
    input wire [0:0] in_notcmp2397_0,
    input wire [0:0] in_notcmp2397_1,
    input wire [0:0] in_notcmp2740_pop18112_0,
    input wire [0:0] in_notcmp2740_pop18112_1,
    input wire [0:0] in_notcmp2741_pop23125_0,
    input wire [0:0] in_notcmp2741_pop23125_1,
    input wire [0:0] in_notcmp2781_0,
    input wire [0:0] in_notcmp2781_1,
    input wire [63:0] in_output_im_addr_042_replace_phi32_pop16102_0,
    input wire [63:0] in_output_im_addr_042_replace_phi32_pop16102_1,
    input wire [63:0] in_output_im_addr_042_replace_phi33_pop21119_0,
    input wire [63:0] in_output_im_addr_042_replace_phi33_pop21119_1,
    input wire [63:0] in_output_im_addr_042_replace_phi67_0,
    input wire [63:0] in_output_im_addr_042_replace_phi67_1,
    input wire [31:0] in_output_size,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10255,
    output wire [0:0] out_c0_exe11256,
    output wire [0:0] out_c0_exe12257,
    output wire [31:0] out_c0_exe1246,
    output wire [63:0] out_c0_exe13258,
    output wire [63:0] out_c0_exe14259,
    output wire [0:0] out_c0_exe15260,
    output wire [31:0] out_c0_exe16261,
    output wire [31:0] out_c0_exe17262,
    output wire [0:0] out_c0_exe18263,
    output wire [63:0] out_c0_exe19,
    output wire [63:0] out_c0_exe20,
    output wire [0:0] out_c0_exe21,
    output wire [0:0] out_c0_exe22,
    output wire [31:0] out_c0_exe2247,
    output wire [31:0] out_c0_exe23,
    output wire [63:0] out_c0_exe24,
    output wire [63:0] out_c0_exe25,
    output wire [0:0] out_c0_exe26,
    output wire [31:0] out_c0_exe27,
    output wire [31:0] out_c0_exe28,
    output wire [0:0] out_c0_exe29,
    output wire [31:0] out_c0_exe3248,
    output wire [0:0] out_c0_exe4249,
    output wire [0:0] out_c0_exe5250,
    output wire [63:0] out_c0_exe6251,
    output wire [63:0] out_c0_exe7252,
    output wire [0:0] out_c0_exe8253,
    output wire [31:0] out_c0_exe9254,
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

    wire [0:0] bb_maxpool2d_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_maxpool2d2_exiting_stall_out;
    wire [0:0] bb_maxpool2d_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_maxpool2d2_exiting_valid_out;
    wire [0:0] bb_maxpool2d_B7_stall_region_out_c0_exe10255;
    wire [0:0] bb_maxpool2d_B7_stall_region_out_c0_exe11256;
    wire [0:0] bb_maxpool2d_B7_stall_region_out_c0_exe12257;
    wire [31:0] bb_maxpool2d_B7_stall_region_out_c0_exe1246;
    wire [63:0] bb_maxpool2d_B7_stall_region_out_c0_exe13258;
    wire [63:0] bb_maxpool2d_B7_stall_region_out_c0_exe14259;
    wire [0:0] bb_maxpool2d_B7_stall_region_out_c0_exe15260;
    wire [31:0] bb_maxpool2d_B7_stall_region_out_c0_exe16261;
    wire [31:0] bb_maxpool2d_B7_stall_region_out_c0_exe17262;
    wire [0:0] bb_maxpool2d_B7_stall_region_out_c0_exe18263;
    wire [63:0] bb_maxpool2d_B7_stall_region_out_c0_exe19;
    wire [63:0] bb_maxpool2d_B7_stall_region_out_c0_exe20;
    wire [0:0] bb_maxpool2d_B7_stall_region_out_c0_exe21;
    wire [0:0] bb_maxpool2d_B7_stall_region_out_c0_exe22;
    wire [31:0] bb_maxpool2d_B7_stall_region_out_c0_exe2247;
    wire [31:0] bb_maxpool2d_B7_stall_region_out_c0_exe23;
    wire [63:0] bb_maxpool2d_B7_stall_region_out_c0_exe24;
    wire [63:0] bb_maxpool2d_B7_stall_region_out_c0_exe25;
    wire [0:0] bb_maxpool2d_B7_stall_region_out_c0_exe26;
    wire [31:0] bb_maxpool2d_B7_stall_region_out_c0_exe27;
    wire [31:0] bb_maxpool2d_B7_stall_region_out_c0_exe28;
    wire [0:0] bb_maxpool2d_B7_stall_region_out_c0_exe29;
    wire [31:0] bb_maxpool2d_B7_stall_region_out_c0_exe3248;
    wire [0:0] bb_maxpool2d_B7_stall_region_out_c0_exe4249;
    wire [0:0] bb_maxpool2d_B7_stall_region_out_c0_exe5250;
    wire [63:0] bb_maxpool2d_B7_stall_region_out_c0_exe6251;
    wire [63:0] bb_maxpool2d_B7_stall_region_out_c0_exe7252;
    wire [0:0] bb_maxpool2d_B7_stall_region_out_c0_exe8253;
    wire [31:0] bb_maxpool2d_B7_stall_region_out_c0_exe9254;
    wire [0:0] bb_maxpool2d_B7_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_maxpool2d_B7_stall_region_out_stall_out;
    wire [0:0] bb_maxpool2d_B7_stall_region_out_valid_out;
    wire [0:0] maxpool2d_B7_branch_out_c0_exe10255;
    wire [0:0] maxpool2d_B7_branch_out_c0_exe11256;
    wire [0:0] maxpool2d_B7_branch_out_c0_exe12257;
    wire [31:0] maxpool2d_B7_branch_out_c0_exe1246;
    wire [63:0] maxpool2d_B7_branch_out_c0_exe13258;
    wire [63:0] maxpool2d_B7_branch_out_c0_exe14259;
    wire [0:0] maxpool2d_B7_branch_out_c0_exe15260;
    wire [31:0] maxpool2d_B7_branch_out_c0_exe16261;
    wire [31:0] maxpool2d_B7_branch_out_c0_exe17262;
    wire [0:0] maxpool2d_B7_branch_out_c0_exe18263;
    wire [63:0] maxpool2d_B7_branch_out_c0_exe19;
    wire [63:0] maxpool2d_B7_branch_out_c0_exe20;
    wire [0:0] maxpool2d_B7_branch_out_c0_exe21;
    wire [0:0] maxpool2d_B7_branch_out_c0_exe22;
    wire [31:0] maxpool2d_B7_branch_out_c0_exe2247;
    wire [31:0] maxpool2d_B7_branch_out_c0_exe23;
    wire [63:0] maxpool2d_B7_branch_out_c0_exe24;
    wire [63:0] maxpool2d_B7_branch_out_c0_exe25;
    wire [0:0] maxpool2d_B7_branch_out_c0_exe26;
    wire [31:0] maxpool2d_B7_branch_out_c0_exe27;
    wire [31:0] maxpool2d_B7_branch_out_c0_exe28;
    wire [0:0] maxpool2d_B7_branch_out_c0_exe29;
    wire [31:0] maxpool2d_B7_branch_out_c0_exe3248;
    wire [0:0] maxpool2d_B7_branch_out_c0_exe4249;
    wire [0:0] maxpool2d_B7_branch_out_c0_exe5250;
    wire [63:0] maxpool2d_B7_branch_out_c0_exe6251;
    wire [63:0] maxpool2d_B7_branch_out_c0_exe7252;
    wire [0:0] maxpool2d_B7_branch_out_c0_exe8253;
    wire [31:0] maxpool2d_B7_branch_out_c0_exe9254;
    wire [0:0] maxpool2d_B7_branch_out_stall_out;
    wire [0:0] maxpool2d_B7_branch_out_valid_out_0;
    wire [0:0] maxpool2d_B7_merge_out_forked31;
    wire [63:0] maxpool2d_B7_merge_out_input_im_addr_041_replace_phi36_pop17107;
    wire [63:0] maxpool2d_B7_merge_out_input_im_addr_041_replace_phi37_pop22122;
    wire [63:0] maxpool2d_B7_merge_out_input_im_addr_041_replace_phi74;
    wire [31:0] maxpool2d_B7_merge_out_j_034_pop20116;
    wire [31:0] maxpool2d_B7_merge_out_mul2547_pop25131;
    wire [31:0] maxpool2d_B7_merge_out_mul2592;
    wire [31:0] maxpool2d_B7_merge_out_mul44_pop24128;
    wire [31:0] maxpool2d_B7_merge_out_mul87;
    wire [0:0] maxpool2d_B7_merge_out_notcmp19113;
    wire [0:0] maxpool2d_B7_merge_out_notcmp2350_pop26134;
    wire [0:0] maxpool2d_B7_merge_out_notcmp2397;
    wire [0:0] maxpool2d_B7_merge_out_notcmp2740_pop18112;
    wire [0:0] maxpool2d_B7_merge_out_notcmp2741_pop23125;
    wire [0:0] maxpool2d_B7_merge_out_notcmp2781;
    wire [63:0] maxpool2d_B7_merge_out_output_im_addr_042_replace_phi32_pop16102;
    wire [63:0] maxpool2d_B7_merge_out_output_im_addr_042_replace_phi33_pop21119;
    wire [63:0] maxpool2d_B7_merge_out_output_im_addr_042_replace_phi67;
    wire [0:0] maxpool2d_B7_merge_out_stall_out_0;
    wire [0:0] maxpool2d_B7_merge_out_stall_out_1;
    wire [0:0] maxpool2d_B7_merge_out_valid_out;


    // maxpool2d_B7_merge(BLACKBOX,46)
    maxpool2d_B7_merge themaxpool2d_B7_merge (
        .in_forked31_0(in_forked31_0),
        .in_forked31_1(in_forked31_1),
        .in_input_im_addr_041_replace_phi36_pop17107_0(in_input_im_addr_041_replace_phi36_pop17107_0),
        .in_input_im_addr_041_replace_phi36_pop17107_1(in_input_im_addr_041_replace_phi36_pop17107_1),
        .in_input_im_addr_041_replace_phi37_pop22122_0(in_input_im_addr_041_replace_phi37_pop22122_0),
        .in_input_im_addr_041_replace_phi37_pop22122_1(in_input_im_addr_041_replace_phi37_pop22122_1),
        .in_input_im_addr_041_replace_phi74_0(in_input_im_addr_041_replace_phi74_0),
        .in_input_im_addr_041_replace_phi74_1(in_input_im_addr_041_replace_phi74_1),
        .in_j_034_pop20116_0(in_j_034_pop20116_0),
        .in_j_034_pop20116_1(in_j_034_pop20116_1),
        .in_mul2547_pop25131_0(in_mul2547_pop25131_0),
        .in_mul2547_pop25131_1(in_mul2547_pop25131_1),
        .in_mul2592_0(in_mul2592_0),
        .in_mul2592_1(in_mul2592_1),
        .in_mul44_pop24128_0(in_mul44_pop24128_0),
        .in_mul44_pop24128_1(in_mul44_pop24128_1),
        .in_mul87_0(in_mul87_0),
        .in_mul87_1(in_mul87_1),
        .in_notcmp19113_0(in_notcmp19113_0),
        .in_notcmp19113_1(in_notcmp19113_1),
        .in_notcmp2350_pop26134_0(in_notcmp2350_pop26134_0),
        .in_notcmp2350_pop26134_1(in_notcmp2350_pop26134_1),
        .in_notcmp2397_0(in_notcmp2397_0),
        .in_notcmp2397_1(in_notcmp2397_1),
        .in_notcmp2740_pop18112_0(in_notcmp2740_pop18112_0),
        .in_notcmp2740_pop18112_1(in_notcmp2740_pop18112_1),
        .in_notcmp2741_pop23125_0(in_notcmp2741_pop23125_0),
        .in_notcmp2741_pop23125_1(in_notcmp2741_pop23125_1),
        .in_notcmp2781_0(in_notcmp2781_0),
        .in_notcmp2781_1(in_notcmp2781_1),
        .in_output_im_addr_042_replace_phi32_pop16102_0(in_output_im_addr_042_replace_phi32_pop16102_0),
        .in_output_im_addr_042_replace_phi32_pop16102_1(in_output_im_addr_042_replace_phi32_pop16102_1),
        .in_output_im_addr_042_replace_phi33_pop21119_0(in_output_im_addr_042_replace_phi33_pop21119_0),
        .in_output_im_addr_042_replace_phi33_pop21119_1(in_output_im_addr_042_replace_phi33_pop21119_1),
        .in_output_im_addr_042_replace_phi67_0(in_output_im_addr_042_replace_phi67_0),
        .in_output_im_addr_042_replace_phi67_1(in_output_im_addr_042_replace_phi67_1),
        .in_stall_in(bb_maxpool2d_B7_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked31(maxpool2d_B7_merge_out_forked31),
        .out_input_im_addr_041_replace_phi36_pop17107(maxpool2d_B7_merge_out_input_im_addr_041_replace_phi36_pop17107),
        .out_input_im_addr_041_replace_phi37_pop22122(maxpool2d_B7_merge_out_input_im_addr_041_replace_phi37_pop22122),
        .out_input_im_addr_041_replace_phi74(maxpool2d_B7_merge_out_input_im_addr_041_replace_phi74),
        .out_j_034_pop20116(maxpool2d_B7_merge_out_j_034_pop20116),
        .out_mul2547_pop25131(maxpool2d_B7_merge_out_mul2547_pop25131),
        .out_mul2592(maxpool2d_B7_merge_out_mul2592),
        .out_mul44_pop24128(maxpool2d_B7_merge_out_mul44_pop24128),
        .out_mul87(maxpool2d_B7_merge_out_mul87),
        .out_notcmp19113(maxpool2d_B7_merge_out_notcmp19113),
        .out_notcmp2350_pop26134(maxpool2d_B7_merge_out_notcmp2350_pop26134),
        .out_notcmp2397(maxpool2d_B7_merge_out_notcmp2397),
        .out_notcmp2740_pop18112(maxpool2d_B7_merge_out_notcmp2740_pop18112),
        .out_notcmp2741_pop23125(maxpool2d_B7_merge_out_notcmp2741_pop23125),
        .out_notcmp2781(maxpool2d_B7_merge_out_notcmp2781),
        .out_output_im_addr_042_replace_phi32_pop16102(maxpool2d_B7_merge_out_output_im_addr_042_replace_phi32_pop16102),
        .out_output_im_addr_042_replace_phi33_pop21119(maxpool2d_B7_merge_out_output_im_addr_042_replace_phi33_pop21119),
        .out_output_im_addr_042_replace_phi67(maxpool2d_B7_merge_out_output_im_addr_042_replace_phi67),
        .out_stall_out_0(maxpool2d_B7_merge_out_stall_out_0),
        .out_stall_out_1(maxpool2d_B7_merge_out_stall_out_1),
        .out_valid_out(maxpool2d_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B7_stall_region(BLACKBOX,2)
    maxpool2d_bb_B7_stall_region thebb_maxpool2d_B7_stall_region (
        .in_forked31(maxpool2d_B7_merge_out_forked31),
        .in_input_im_addr_041_replace_phi36_pop17107(maxpool2d_B7_merge_out_input_im_addr_041_replace_phi36_pop17107),
        .in_input_im_addr_041_replace_phi37_pop22122(maxpool2d_B7_merge_out_input_im_addr_041_replace_phi37_pop22122),
        .in_input_im_addr_041_replace_phi74(maxpool2d_B7_merge_out_input_im_addr_041_replace_phi74),
        .in_input_size(in_input_size),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_j_034_pop20116(maxpool2d_B7_merge_out_j_034_pop20116),
        .in_mul2547_pop25131(maxpool2d_B7_merge_out_mul2547_pop25131),
        .in_mul2592(maxpool2d_B7_merge_out_mul2592),
        .in_mul44_pop24128(maxpool2d_B7_merge_out_mul44_pop24128),
        .in_mul87(maxpool2d_B7_merge_out_mul87),
        .in_notcmp19113(maxpool2d_B7_merge_out_notcmp19113),
        .in_notcmp2350_pop26134(maxpool2d_B7_merge_out_notcmp2350_pop26134),
        .in_notcmp2397(maxpool2d_B7_merge_out_notcmp2397),
        .in_notcmp2740_pop18112(maxpool2d_B7_merge_out_notcmp2740_pop18112),
        .in_notcmp2741_pop23125(maxpool2d_B7_merge_out_notcmp2741_pop23125),
        .in_notcmp2781(maxpool2d_B7_merge_out_notcmp2781),
        .in_output_im_addr_042_replace_phi32_pop16102(maxpool2d_B7_merge_out_output_im_addr_042_replace_phi32_pop16102),
        .in_output_im_addr_042_replace_phi33_pop21119(maxpool2d_B7_merge_out_output_im_addr_042_replace_phi33_pop21119),
        .in_output_im_addr_042_replace_phi67(maxpool2d_B7_merge_out_output_im_addr_042_replace_phi67),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(maxpool2d_B7_branch_out_stall_out),
        .in_valid_in(maxpool2d_B7_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_maxpool2d2_exiting_stall_out(bb_maxpool2d_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_maxpool2d2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_maxpool2d2_exiting_valid_out(bb_maxpool2d_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_maxpool2d2_exiting_valid_out),
        .out_c0_exe10255(bb_maxpool2d_B7_stall_region_out_c0_exe10255),
        .out_c0_exe11256(bb_maxpool2d_B7_stall_region_out_c0_exe11256),
        .out_c0_exe12257(bb_maxpool2d_B7_stall_region_out_c0_exe12257),
        .out_c0_exe1246(bb_maxpool2d_B7_stall_region_out_c0_exe1246),
        .out_c0_exe13258(bb_maxpool2d_B7_stall_region_out_c0_exe13258),
        .out_c0_exe14259(bb_maxpool2d_B7_stall_region_out_c0_exe14259),
        .out_c0_exe15260(bb_maxpool2d_B7_stall_region_out_c0_exe15260),
        .out_c0_exe16261(bb_maxpool2d_B7_stall_region_out_c0_exe16261),
        .out_c0_exe17262(bb_maxpool2d_B7_stall_region_out_c0_exe17262),
        .out_c0_exe18263(bb_maxpool2d_B7_stall_region_out_c0_exe18263),
        .out_c0_exe19(bb_maxpool2d_B7_stall_region_out_c0_exe19),
        .out_c0_exe20(bb_maxpool2d_B7_stall_region_out_c0_exe20),
        .out_c0_exe21(bb_maxpool2d_B7_stall_region_out_c0_exe21),
        .out_c0_exe22(bb_maxpool2d_B7_stall_region_out_c0_exe22),
        .out_c0_exe2247(bb_maxpool2d_B7_stall_region_out_c0_exe2247),
        .out_c0_exe23(bb_maxpool2d_B7_stall_region_out_c0_exe23),
        .out_c0_exe24(bb_maxpool2d_B7_stall_region_out_c0_exe24),
        .out_c0_exe25(bb_maxpool2d_B7_stall_region_out_c0_exe25),
        .out_c0_exe26(bb_maxpool2d_B7_stall_region_out_c0_exe26),
        .out_c0_exe27(bb_maxpool2d_B7_stall_region_out_c0_exe27),
        .out_c0_exe28(bb_maxpool2d_B7_stall_region_out_c0_exe28),
        .out_c0_exe29(bb_maxpool2d_B7_stall_region_out_c0_exe29),
        .out_c0_exe3248(bb_maxpool2d_B7_stall_region_out_c0_exe3248),
        .out_c0_exe4249(bb_maxpool2d_B7_stall_region_out_c0_exe4249),
        .out_c0_exe5250(bb_maxpool2d_B7_stall_region_out_c0_exe5250),
        .out_c0_exe6251(bb_maxpool2d_B7_stall_region_out_c0_exe6251),
        .out_c0_exe7252(bb_maxpool2d_B7_stall_region_out_c0_exe7252),
        .out_c0_exe8253(bb_maxpool2d_B7_stall_region_out_c0_exe8253),
        .out_c0_exe9254(bb_maxpool2d_B7_stall_region_out_c0_exe9254),
        .out_pipeline_valid_out(bb_maxpool2d_B7_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_maxpool2d_B7_stall_region_out_stall_out),
        .out_valid_out(bb_maxpool2d_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // maxpool2d_B7_branch(BLACKBOX,45)
    maxpool2d_B7_branch themaxpool2d_B7_branch (
        .in_c0_exe10255(bb_maxpool2d_B7_stall_region_out_c0_exe10255),
        .in_c0_exe11256(bb_maxpool2d_B7_stall_region_out_c0_exe11256),
        .in_c0_exe12257(bb_maxpool2d_B7_stall_region_out_c0_exe12257),
        .in_c0_exe1246(bb_maxpool2d_B7_stall_region_out_c0_exe1246),
        .in_c0_exe13258(bb_maxpool2d_B7_stall_region_out_c0_exe13258),
        .in_c0_exe14259(bb_maxpool2d_B7_stall_region_out_c0_exe14259),
        .in_c0_exe15260(bb_maxpool2d_B7_stall_region_out_c0_exe15260),
        .in_c0_exe16261(bb_maxpool2d_B7_stall_region_out_c0_exe16261),
        .in_c0_exe17262(bb_maxpool2d_B7_stall_region_out_c0_exe17262),
        .in_c0_exe18263(bb_maxpool2d_B7_stall_region_out_c0_exe18263),
        .in_c0_exe19(bb_maxpool2d_B7_stall_region_out_c0_exe19),
        .in_c0_exe20(bb_maxpool2d_B7_stall_region_out_c0_exe20),
        .in_c0_exe21(bb_maxpool2d_B7_stall_region_out_c0_exe21),
        .in_c0_exe22(bb_maxpool2d_B7_stall_region_out_c0_exe22),
        .in_c0_exe2247(bb_maxpool2d_B7_stall_region_out_c0_exe2247),
        .in_c0_exe23(bb_maxpool2d_B7_stall_region_out_c0_exe23),
        .in_c0_exe24(bb_maxpool2d_B7_stall_region_out_c0_exe24),
        .in_c0_exe25(bb_maxpool2d_B7_stall_region_out_c0_exe25),
        .in_c0_exe26(bb_maxpool2d_B7_stall_region_out_c0_exe26),
        .in_c0_exe27(bb_maxpool2d_B7_stall_region_out_c0_exe27),
        .in_c0_exe28(bb_maxpool2d_B7_stall_region_out_c0_exe28),
        .in_c0_exe29(bb_maxpool2d_B7_stall_region_out_c0_exe29),
        .in_c0_exe3248(bb_maxpool2d_B7_stall_region_out_c0_exe3248),
        .in_c0_exe4249(bb_maxpool2d_B7_stall_region_out_c0_exe4249),
        .in_c0_exe5250(bb_maxpool2d_B7_stall_region_out_c0_exe5250),
        .in_c0_exe6251(bb_maxpool2d_B7_stall_region_out_c0_exe6251),
        .in_c0_exe7252(bb_maxpool2d_B7_stall_region_out_c0_exe7252),
        .in_c0_exe8253(bb_maxpool2d_B7_stall_region_out_c0_exe8253),
        .in_c0_exe9254(bb_maxpool2d_B7_stall_region_out_c0_exe9254),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_maxpool2d_B7_stall_region_out_valid_out),
        .out_c0_exe10255(maxpool2d_B7_branch_out_c0_exe10255),
        .out_c0_exe11256(maxpool2d_B7_branch_out_c0_exe11256),
        .out_c0_exe12257(maxpool2d_B7_branch_out_c0_exe12257),
        .out_c0_exe1246(maxpool2d_B7_branch_out_c0_exe1246),
        .out_c0_exe13258(maxpool2d_B7_branch_out_c0_exe13258),
        .out_c0_exe14259(maxpool2d_B7_branch_out_c0_exe14259),
        .out_c0_exe15260(maxpool2d_B7_branch_out_c0_exe15260),
        .out_c0_exe16261(maxpool2d_B7_branch_out_c0_exe16261),
        .out_c0_exe17262(maxpool2d_B7_branch_out_c0_exe17262),
        .out_c0_exe18263(maxpool2d_B7_branch_out_c0_exe18263),
        .out_c0_exe19(maxpool2d_B7_branch_out_c0_exe19),
        .out_c0_exe20(maxpool2d_B7_branch_out_c0_exe20),
        .out_c0_exe21(maxpool2d_B7_branch_out_c0_exe21),
        .out_c0_exe22(maxpool2d_B7_branch_out_c0_exe22),
        .out_c0_exe2247(maxpool2d_B7_branch_out_c0_exe2247),
        .out_c0_exe23(maxpool2d_B7_branch_out_c0_exe23),
        .out_c0_exe24(maxpool2d_B7_branch_out_c0_exe24),
        .out_c0_exe25(maxpool2d_B7_branch_out_c0_exe25),
        .out_c0_exe26(maxpool2d_B7_branch_out_c0_exe26),
        .out_c0_exe27(maxpool2d_B7_branch_out_c0_exe27),
        .out_c0_exe28(maxpool2d_B7_branch_out_c0_exe28),
        .out_c0_exe29(maxpool2d_B7_branch_out_c0_exe29),
        .out_c0_exe3248(maxpool2d_B7_branch_out_c0_exe3248),
        .out_c0_exe4249(maxpool2d_B7_branch_out_c0_exe4249),
        .out_c0_exe5250(maxpool2d_B7_branch_out_c0_exe5250),
        .out_c0_exe6251(maxpool2d_B7_branch_out_c0_exe6251),
        .out_c0_exe7252(maxpool2d_B7_branch_out_c0_exe7252),
        .out_c0_exe8253(maxpool2d_B7_branch_out_c0_exe8253),
        .out_c0_exe9254(maxpool2d_B7_branch_out_c0_exe9254),
        .out_stall_out(maxpool2d_B7_branch_out_stall_out),
        .out_valid_out_0(maxpool2d_B7_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10255(GPOUT,47)
    assign out_c0_exe10255 = maxpool2d_B7_branch_out_c0_exe10255;

    // out_c0_exe11256(GPOUT,48)
    assign out_c0_exe11256 = maxpool2d_B7_branch_out_c0_exe11256;

    // out_c0_exe12257(GPOUT,49)
    assign out_c0_exe12257 = maxpool2d_B7_branch_out_c0_exe12257;

    // out_c0_exe1246(GPOUT,50)
    assign out_c0_exe1246 = maxpool2d_B7_branch_out_c0_exe1246;

    // out_c0_exe13258(GPOUT,51)
    assign out_c0_exe13258 = maxpool2d_B7_branch_out_c0_exe13258;

    // out_c0_exe14259(GPOUT,52)
    assign out_c0_exe14259 = maxpool2d_B7_branch_out_c0_exe14259;

    // out_c0_exe15260(GPOUT,53)
    assign out_c0_exe15260 = maxpool2d_B7_branch_out_c0_exe15260;

    // out_c0_exe16261(GPOUT,54)
    assign out_c0_exe16261 = maxpool2d_B7_branch_out_c0_exe16261;

    // out_c0_exe17262(GPOUT,55)
    assign out_c0_exe17262 = maxpool2d_B7_branch_out_c0_exe17262;

    // out_c0_exe18263(GPOUT,56)
    assign out_c0_exe18263 = maxpool2d_B7_branch_out_c0_exe18263;

    // out_c0_exe19(GPOUT,57)
    assign out_c0_exe19 = maxpool2d_B7_branch_out_c0_exe19;

    // out_c0_exe20(GPOUT,58)
    assign out_c0_exe20 = maxpool2d_B7_branch_out_c0_exe20;

    // out_c0_exe21(GPOUT,59)
    assign out_c0_exe21 = maxpool2d_B7_branch_out_c0_exe21;

    // out_c0_exe22(GPOUT,60)
    assign out_c0_exe22 = maxpool2d_B7_branch_out_c0_exe22;

    // out_c0_exe2247(GPOUT,61)
    assign out_c0_exe2247 = maxpool2d_B7_branch_out_c0_exe2247;

    // out_c0_exe23(GPOUT,62)
    assign out_c0_exe23 = maxpool2d_B7_branch_out_c0_exe23;

    // out_c0_exe24(GPOUT,63)
    assign out_c0_exe24 = maxpool2d_B7_branch_out_c0_exe24;

    // out_c0_exe25(GPOUT,64)
    assign out_c0_exe25 = maxpool2d_B7_branch_out_c0_exe25;

    // out_c0_exe26(GPOUT,65)
    assign out_c0_exe26 = maxpool2d_B7_branch_out_c0_exe26;

    // out_c0_exe27(GPOUT,66)
    assign out_c0_exe27 = maxpool2d_B7_branch_out_c0_exe27;

    // out_c0_exe28(GPOUT,67)
    assign out_c0_exe28 = maxpool2d_B7_branch_out_c0_exe28;

    // out_c0_exe29(GPOUT,68)
    assign out_c0_exe29 = maxpool2d_B7_branch_out_c0_exe29;

    // out_c0_exe3248(GPOUT,69)
    assign out_c0_exe3248 = maxpool2d_B7_branch_out_c0_exe3248;

    // out_c0_exe4249(GPOUT,70)
    assign out_c0_exe4249 = maxpool2d_B7_branch_out_c0_exe4249;

    // out_c0_exe5250(GPOUT,71)
    assign out_c0_exe5250 = maxpool2d_B7_branch_out_c0_exe5250;

    // out_c0_exe6251(GPOUT,72)
    assign out_c0_exe6251 = maxpool2d_B7_branch_out_c0_exe6251;

    // out_c0_exe7252(GPOUT,73)
    assign out_c0_exe7252 = maxpool2d_B7_branch_out_c0_exe7252;

    // out_c0_exe8253(GPOUT,74)
    assign out_c0_exe8253 = maxpool2d_B7_branch_out_c0_exe8253;

    // out_c0_exe9254(GPOUT,75)
    assign out_c0_exe9254 = maxpool2d_B7_branch_out_c0_exe9254;

    // out_exiting_stall_out(GPOUT,76)
    assign out_exiting_stall_out = bb_maxpool2d_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_maxpool2d2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,77)
    assign out_exiting_valid_out = bb_maxpool2d_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_maxpool2d2_exiting_valid_out;

    // out_stall_out_0(GPOUT,78)
    assign out_stall_out_0 = maxpool2d_B7_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,79)
    assign out_stall_out_1 = maxpool2d_B7_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,80)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,81)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,82)
    assign out_valid_out_0 = maxpool2d_B7_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,84)
    assign out_pipeline_valid_out = bb_maxpool2d_B7_stall_region_out_pipeline_valid_out;

endmodule
