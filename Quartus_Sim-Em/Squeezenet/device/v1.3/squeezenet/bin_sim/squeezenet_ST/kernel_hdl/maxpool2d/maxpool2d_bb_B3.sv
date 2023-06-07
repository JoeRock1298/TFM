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

// SystemVerilog created from maxpool2d_bb_B3
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_bb_B3 (
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [63:0] in_input_im_addr_041_replace_phi69_0,
    input wire [63:0] in_input_im_addr_041_replace_phi69_1,
    input wire [31:0] in_input_size,
    input wire [0:0] in_intel_reserved_ffwd_1_0,
    input wire [32:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_notcmp2776_0,
    input wire [0:0] in_notcmp2776_1,
    input wire [63:0] in_output_im_addr_042_replace_phi62_0,
    input wire [63:0] in_output_im_addr_042_replace_phi62_1,
    input wire [31:0] in_output_size,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10,
    output wire [31:0] out_c0_exe1172,
    output wire [31:0] out_c0_exe2173,
    output wire [0:0] out_c0_exe4175,
    output wire [63:0] out_c0_exe5,
    output wire [63:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [63:0] out_c0_exe8,
    output wire [63:0] out_c0_exe9,
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

    wire [0:0] bb_maxpool2d_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_maxpool2d2_exiting_stall_out;
    wire [0:0] bb_maxpool2d_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_maxpool2d2_exiting_valid_out;
    wire [0:0] bb_maxpool2d_B3_stall_region_out_c0_exe10;
    wire [31:0] bb_maxpool2d_B3_stall_region_out_c0_exe1172;
    wire [31:0] bb_maxpool2d_B3_stall_region_out_c0_exe2173;
    wire [0:0] bb_maxpool2d_B3_stall_region_out_c0_exe4175;
    wire [63:0] bb_maxpool2d_B3_stall_region_out_c0_exe5;
    wire [63:0] bb_maxpool2d_B3_stall_region_out_c0_exe6;
    wire [0:0] bb_maxpool2d_B3_stall_region_out_c0_exe7;
    wire [63:0] bb_maxpool2d_B3_stall_region_out_c0_exe8;
    wire [63:0] bb_maxpool2d_B3_stall_region_out_c0_exe9;
    wire [0:0] bb_maxpool2d_B3_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_maxpool2d_B3_stall_region_out_stall_out;
    wire [0:0] bb_maxpool2d_B3_stall_region_out_valid_out;
    wire [0:0] maxpool2d_B3_branch_out_c0_exe10;
    wire [31:0] maxpool2d_B3_branch_out_c0_exe1172;
    wire [31:0] maxpool2d_B3_branch_out_c0_exe2173;
    wire [0:0] maxpool2d_B3_branch_out_c0_exe4175;
    wire [63:0] maxpool2d_B3_branch_out_c0_exe5;
    wire [63:0] maxpool2d_B3_branch_out_c0_exe6;
    wire [0:0] maxpool2d_B3_branch_out_c0_exe7;
    wire [63:0] maxpool2d_B3_branch_out_c0_exe8;
    wire [63:0] maxpool2d_B3_branch_out_c0_exe9;
    wire [0:0] maxpool2d_B3_branch_out_stall_out;
    wire [0:0] maxpool2d_B3_branch_out_valid_out_0;
    wire [0:0] maxpool2d_B3_merge_out_forked;
    wire [63:0] maxpool2d_B3_merge_out_input_im_addr_041_replace_phi69;
    wire [0:0] maxpool2d_B3_merge_out_notcmp2776;
    wire [63:0] maxpool2d_B3_merge_out_output_im_addr_042_replace_phi62;
    wire [0:0] maxpool2d_B3_merge_out_stall_out_0;
    wire [0:0] maxpool2d_B3_merge_out_stall_out_1;
    wire [0:0] maxpool2d_B3_merge_out_valid_out;


    // maxpool2d_B3_merge(BLACKBOX,19)
    maxpool2d_B3_merge themaxpool2d_B3_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_input_im_addr_041_replace_phi69_0(in_input_im_addr_041_replace_phi69_0),
        .in_input_im_addr_041_replace_phi69_1(in_input_im_addr_041_replace_phi69_1),
        .in_notcmp2776_0(in_notcmp2776_0),
        .in_notcmp2776_1(in_notcmp2776_1),
        .in_output_im_addr_042_replace_phi62_0(in_output_im_addr_042_replace_phi62_0),
        .in_output_im_addr_042_replace_phi62_1(in_output_im_addr_042_replace_phi62_1),
        .in_stall_in(bb_maxpool2d_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(maxpool2d_B3_merge_out_forked),
        .out_input_im_addr_041_replace_phi69(maxpool2d_B3_merge_out_input_im_addr_041_replace_phi69),
        .out_notcmp2776(maxpool2d_B3_merge_out_notcmp2776),
        .out_output_im_addr_042_replace_phi62(maxpool2d_B3_merge_out_output_im_addr_042_replace_phi62),
        .out_stall_out_0(maxpool2d_B3_merge_out_stall_out_0),
        .out_stall_out_1(maxpool2d_B3_merge_out_stall_out_1),
        .out_valid_out(maxpool2d_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B3_stall_region(BLACKBOX,2)
    maxpool2d_bb_B3_stall_region thebb_maxpool2d_B3_stall_region (
        .in_forked(maxpool2d_B3_merge_out_forked),
        .in_input_im_addr_041_replace_phi69(maxpool2d_B3_merge_out_input_im_addr_041_replace_phi69),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_notcmp2776(maxpool2d_B3_merge_out_notcmp2776),
        .in_output_im_addr_042_replace_phi62(maxpool2d_B3_merge_out_output_im_addr_042_replace_phi62),
        .in_output_size(in_output_size),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(maxpool2d_B3_branch_out_stall_out),
        .in_valid_in(maxpool2d_B3_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_maxpool2d2_exiting_stall_out(bb_maxpool2d_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_maxpool2d2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_maxpool2d2_exiting_valid_out(bb_maxpool2d_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_maxpool2d2_exiting_valid_out),
        .out_c0_exe10(bb_maxpool2d_B3_stall_region_out_c0_exe10),
        .out_c0_exe1172(bb_maxpool2d_B3_stall_region_out_c0_exe1172),
        .out_c0_exe2173(bb_maxpool2d_B3_stall_region_out_c0_exe2173),
        .out_c0_exe4175(bb_maxpool2d_B3_stall_region_out_c0_exe4175),
        .out_c0_exe5(bb_maxpool2d_B3_stall_region_out_c0_exe5),
        .out_c0_exe6(bb_maxpool2d_B3_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_maxpool2d_B3_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_maxpool2d_B3_stall_region_out_c0_exe8),
        .out_c0_exe9(bb_maxpool2d_B3_stall_region_out_c0_exe9),
        .out_pipeline_valid_out(bb_maxpool2d_B3_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_maxpool2d_B3_stall_region_out_stall_out),
        .out_valid_out(bb_maxpool2d_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // maxpool2d_B3_branch(BLACKBOX,18)
    maxpool2d_B3_branch themaxpool2d_B3_branch (
        .in_c0_exe10(bb_maxpool2d_B3_stall_region_out_c0_exe10),
        .in_c0_exe1172(bb_maxpool2d_B3_stall_region_out_c0_exe1172),
        .in_c0_exe2173(bb_maxpool2d_B3_stall_region_out_c0_exe2173),
        .in_c0_exe4175(bb_maxpool2d_B3_stall_region_out_c0_exe4175),
        .in_c0_exe5(bb_maxpool2d_B3_stall_region_out_c0_exe5),
        .in_c0_exe6(bb_maxpool2d_B3_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_maxpool2d_B3_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_maxpool2d_B3_stall_region_out_c0_exe8),
        .in_c0_exe9(bb_maxpool2d_B3_stall_region_out_c0_exe9),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_maxpool2d_B3_stall_region_out_valid_out),
        .out_c0_exe10(maxpool2d_B3_branch_out_c0_exe10),
        .out_c0_exe1172(maxpool2d_B3_branch_out_c0_exe1172),
        .out_c0_exe2173(maxpool2d_B3_branch_out_c0_exe2173),
        .out_c0_exe4175(maxpool2d_B3_branch_out_c0_exe4175),
        .out_c0_exe5(maxpool2d_B3_branch_out_c0_exe5),
        .out_c0_exe6(maxpool2d_B3_branch_out_c0_exe6),
        .out_c0_exe7(maxpool2d_B3_branch_out_c0_exe7),
        .out_c0_exe8(maxpool2d_B3_branch_out_c0_exe8),
        .out_c0_exe9(maxpool2d_B3_branch_out_c0_exe9),
        .out_stall_out(maxpool2d_B3_branch_out_stall_out),
        .out_valid_out_0(maxpool2d_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10(GPOUT,20)
    assign out_c0_exe10 = maxpool2d_B3_branch_out_c0_exe10;

    // out_c0_exe1172(GPOUT,21)
    assign out_c0_exe1172 = maxpool2d_B3_branch_out_c0_exe1172;

    // out_c0_exe2173(GPOUT,22)
    assign out_c0_exe2173 = maxpool2d_B3_branch_out_c0_exe2173;

    // out_c0_exe4175(GPOUT,23)
    assign out_c0_exe4175 = maxpool2d_B3_branch_out_c0_exe4175;

    // out_c0_exe5(GPOUT,24)
    assign out_c0_exe5 = maxpool2d_B3_branch_out_c0_exe5;

    // out_c0_exe6(GPOUT,25)
    assign out_c0_exe6 = maxpool2d_B3_branch_out_c0_exe6;

    // out_c0_exe7(GPOUT,26)
    assign out_c0_exe7 = maxpool2d_B3_branch_out_c0_exe7;

    // out_c0_exe8(GPOUT,27)
    assign out_c0_exe8 = maxpool2d_B3_branch_out_c0_exe8;

    // out_c0_exe9(GPOUT,28)
    assign out_c0_exe9 = maxpool2d_B3_branch_out_c0_exe9;

    // out_exiting_stall_out(GPOUT,29)
    assign out_exiting_stall_out = bb_maxpool2d_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_maxpool2d2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,30)
    assign out_exiting_valid_out = bb_maxpool2d_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_maxpool2d2_exiting_valid_out;

    // out_stall_out_0(GPOUT,31)
    assign out_stall_out_0 = maxpool2d_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,32)
    assign out_stall_out_1 = maxpool2d_B3_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,33)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,34)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,35)
    assign out_valid_out_0 = maxpool2d_B3_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,37)
    assign out_pipeline_valid_out = bb_maxpool2d_B3_stall_region_out_pipeline_valid_out;

endmodule
