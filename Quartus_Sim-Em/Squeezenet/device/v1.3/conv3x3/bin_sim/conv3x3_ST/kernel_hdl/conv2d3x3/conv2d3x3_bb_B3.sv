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

// SystemVerilog created from conv2d3x3_bb_B3
// SystemVerilog created on Tue May 30 12:33:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B3 (
    input wire [63:0] in_filter_bias,
    input wire [63:0] in_filter_weight_addr_067_replace_phi195_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi195_1,
    input wire [0:0] in_forked34_0,
    input wire [0:0] in_forked34_1,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [0:0] in_intel_reserved_ffwd_4_0,
    input wire [32:0] in_intel_reserved_ffwd_6_0,
    input wire [31:0] in_lm25217_0,
    input wire [31:0] in_lm25217_1,
    input wire [0:0] in_notcmp81228_0,
    input wire [0:0] in_notcmp81228_1,
    input wire [63:0] in_output_im_addr_068_replace_phi206_0,
    input wire [63:0] in_output_im_addr_068_replace_phi206_1,
    input wire [31:0] in_output_size,
    input wire [31:0] in_pad,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_stride,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10,
    output wire [0:0] out_c0_exe12,
    output wire [63:0] out_c0_exe13,
    output wire [63:0] out_c0_exe14,
    output wire [31:0] out_c0_exe15,
    output wire [31:0] out_c0_exe1558,
    output wire [0:0] out_c0_exe16,
    output wire [63:0] out_c0_exe17,
    output wire [63:0] out_c0_exe18,
    output wire [31:0] out_c0_exe19,
    output wire [0:0] out_c0_exe20,
    output wire [31:0] out_c0_exe2559,
    output wire [0:0] out_c0_exe3560,
    output wire [0:0] out_c0_exe4561,
    output wire [31:0] out_c0_exe5562,
    output wire [0:0] out_c0_exe6563,
    output wire [0:0] out_c0_exe7,
    output wire [31:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
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

    wire [0:0] bb_conv2d3x3_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_stall_out;
    wire [0:0] bb_conv2d3x3_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_valid_out;
    wire [0:0] bb_conv2d3x3_B3_stall_region_out_c0_exe10;
    wire [0:0] bb_conv2d3x3_B3_stall_region_out_c0_exe12;
    wire [63:0] bb_conv2d3x3_B3_stall_region_out_c0_exe13;
    wire [63:0] bb_conv2d3x3_B3_stall_region_out_c0_exe14;
    wire [31:0] bb_conv2d3x3_B3_stall_region_out_c0_exe15;
    wire [31:0] bb_conv2d3x3_B3_stall_region_out_c0_exe1558;
    wire [0:0] bb_conv2d3x3_B3_stall_region_out_c0_exe16;
    wire [63:0] bb_conv2d3x3_B3_stall_region_out_c0_exe17;
    wire [63:0] bb_conv2d3x3_B3_stall_region_out_c0_exe18;
    wire [31:0] bb_conv2d3x3_B3_stall_region_out_c0_exe19;
    wire [0:0] bb_conv2d3x3_B3_stall_region_out_c0_exe20;
    wire [31:0] bb_conv2d3x3_B3_stall_region_out_c0_exe2559;
    wire [0:0] bb_conv2d3x3_B3_stall_region_out_c0_exe3560;
    wire [0:0] bb_conv2d3x3_B3_stall_region_out_c0_exe4561;
    wire [31:0] bb_conv2d3x3_B3_stall_region_out_c0_exe5562;
    wire [0:0] bb_conv2d3x3_B3_stall_region_out_c0_exe6563;
    wire [0:0] bb_conv2d3x3_B3_stall_region_out_c0_exe7;
    wire [31:0] bb_conv2d3x3_B3_stall_region_out_c0_exe8;
    wire [0:0] bb_conv2d3x3_B3_stall_region_out_c0_exe9;
    wire [0:0] bb_conv2d3x3_B3_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv2d3x3_B3_stall_region_out_stall_out;
    wire [0:0] bb_conv2d3x3_B3_stall_region_out_valid_out;
    wire [0:0] conv2d3x3_B3_branch_out_c0_exe10;
    wire [0:0] conv2d3x3_B3_branch_out_c0_exe12;
    wire [63:0] conv2d3x3_B3_branch_out_c0_exe13;
    wire [63:0] conv2d3x3_B3_branch_out_c0_exe14;
    wire [31:0] conv2d3x3_B3_branch_out_c0_exe15;
    wire [31:0] conv2d3x3_B3_branch_out_c0_exe1558;
    wire [0:0] conv2d3x3_B3_branch_out_c0_exe16;
    wire [63:0] conv2d3x3_B3_branch_out_c0_exe17;
    wire [63:0] conv2d3x3_B3_branch_out_c0_exe18;
    wire [31:0] conv2d3x3_B3_branch_out_c0_exe19;
    wire [0:0] conv2d3x3_B3_branch_out_c0_exe20;
    wire [31:0] conv2d3x3_B3_branch_out_c0_exe2559;
    wire [0:0] conv2d3x3_B3_branch_out_c0_exe3560;
    wire [0:0] conv2d3x3_B3_branch_out_c0_exe4561;
    wire [31:0] conv2d3x3_B3_branch_out_c0_exe5562;
    wire [0:0] conv2d3x3_B3_branch_out_c0_exe6563;
    wire [0:0] conv2d3x3_B3_branch_out_c0_exe7;
    wire [31:0] conv2d3x3_B3_branch_out_c0_exe8;
    wire [0:0] conv2d3x3_B3_branch_out_c0_exe9;
    wire [0:0] conv2d3x3_B3_branch_out_stall_out;
    wire [0:0] conv2d3x3_B3_branch_out_valid_out_0;
    wire [63:0] conv2d3x3_B3_merge_out_filter_weight_addr_067_replace_phi195;
    wire [0:0] conv2d3x3_B3_merge_out_forked34;
    wire [31:0] conv2d3x3_B3_merge_out_lm25217;
    wire [0:0] conv2d3x3_B3_merge_out_notcmp81228;
    wire [63:0] conv2d3x3_B3_merge_out_output_im_addr_068_replace_phi206;
    wire [0:0] conv2d3x3_B3_merge_out_stall_out_0;
    wire [0:0] conv2d3x3_B3_merge_out_stall_out_1;
    wire [0:0] conv2d3x3_B3_merge_out_valid_out;


    // conv2d3x3_B3_merge(BLACKBOX,4)
    conv2d3x3_B3_merge theconv2d3x3_B3_merge (
        .in_filter_weight_addr_067_replace_phi195_0(in_filter_weight_addr_067_replace_phi195_0),
        .in_filter_weight_addr_067_replace_phi195_1(in_filter_weight_addr_067_replace_phi195_1),
        .in_forked34_0(in_forked34_0),
        .in_forked34_1(in_forked34_1),
        .in_lm25217_0(in_lm25217_0),
        .in_lm25217_1(in_lm25217_1),
        .in_notcmp81228_0(in_notcmp81228_0),
        .in_notcmp81228_1(in_notcmp81228_1),
        .in_output_im_addr_068_replace_phi206_0(in_output_im_addr_068_replace_phi206_0),
        .in_output_im_addr_068_replace_phi206_1(in_output_im_addr_068_replace_phi206_1),
        .in_stall_in(bb_conv2d3x3_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_filter_weight_addr_067_replace_phi195(conv2d3x3_B3_merge_out_filter_weight_addr_067_replace_phi195),
        .out_forked34(conv2d3x3_B3_merge_out_forked34),
        .out_lm25217(conv2d3x3_B3_merge_out_lm25217),
        .out_notcmp81228(conv2d3x3_B3_merge_out_notcmp81228),
        .out_output_im_addr_068_replace_phi206(conv2d3x3_B3_merge_out_output_im_addr_068_replace_phi206),
        .out_stall_out_0(conv2d3x3_B3_merge_out_stall_out_0),
        .out_stall_out_1(conv2d3x3_B3_merge_out_stall_out_1),
        .out_valid_out(conv2d3x3_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B3_stall_region(BLACKBOX,2)
    conv2d3x3_bb_B3_stall_region thebb_conv2d3x3_B3_stall_region (
        .in_filter_weight_addr_067_replace_phi195(conv2d3x3_B3_merge_out_filter_weight_addr_067_replace_phi195),
        .in_forked34(conv2d3x3_B3_merge_out_forked34),
        .in_input_size(in_input_size),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_lm25217(conv2d3x3_B3_merge_out_lm25217),
        .in_notcmp81228(conv2d3x3_B3_merge_out_notcmp81228),
        .in_output_im_addr_068_replace_phi206(conv2d3x3_B3_merge_out_output_im_addr_068_replace_phi206),
        .in_output_size(in_output_size),
        .in_pad(in_pad),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(conv2d3x3_B3_branch_out_stall_out),
        .in_stride(in_stride),
        .in_valid_in(conv2d3x3_B3_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_stall_out(bb_conv2d3x3_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_valid_out(bb_conv2d3x3_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_valid_out),
        .out_c0_exe10(bb_conv2d3x3_B3_stall_region_out_c0_exe10),
        .out_c0_exe12(bb_conv2d3x3_B3_stall_region_out_c0_exe12),
        .out_c0_exe13(bb_conv2d3x3_B3_stall_region_out_c0_exe13),
        .out_c0_exe14(bb_conv2d3x3_B3_stall_region_out_c0_exe14),
        .out_c0_exe15(bb_conv2d3x3_B3_stall_region_out_c0_exe15),
        .out_c0_exe1558(bb_conv2d3x3_B3_stall_region_out_c0_exe1558),
        .out_c0_exe16(bb_conv2d3x3_B3_stall_region_out_c0_exe16),
        .out_c0_exe17(bb_conv2d3x3_B3_stall_region_out_c0_exe17),
        .out_c0_exe18(bb_conv2d3x3_B3_stall_region_out_c0_exe18),
        .out_c0_exe19(bb_conv2d3x3_B3_stall_region_out_c0_exe19),
        .out_c0_exe20(bb_conv2d3x3_B3_stall_region_out_c0_exe20),
        .out_c0_exe2559(bb_conv2d3x3_B3_stall_region_out_c0_exe2559),
        .out_c0_exe3560(bb_conv2d3x3_B3_stall_region_out_c0_exe3560),
        .out_c0_exe4561(bb_conv2d3x3_B3_stall_region_out_c0_exe4561),
        .out_c0_exe5562(bb_conv2d3x3_B3_stall_region_out_c0_exe5562),
        .out_c0_exe6563(bb_conv2d3x3_B3_stall_region_out_c0_exe6563),
        .out_c0_exe7(bb_conv2d3x3_B3_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_conv2d3x3_B3_stall_region_out_c0_exe8),
        .out_c0_exe9(bb_conv2d3x3_B3_stall_region_out_c0_exe9),
        .out_pipeline_valid_out(bb_conv2d3x3_B3_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv2d3x3_B3_stall_region_out_stall_out),
        .out_valid_out(bb_conv2d3x3_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d3x3_B3_branch(BLACKBOX,3)
    conv2d3x3_B3_branch theconv2d3x3_B3_branch (
        .in_c0_exe10(bb_conv2d3x3_B3_stall_region_out_c0_exe10),
        .in_c0_exe12(bb_conv2d3x3_B3_stall_region_out_c0_exe12),
        .in_c0_exe13(bb_conv2d3x3_B3_stall_region_out_c0_exe13),
        .in_c0_exe14(bb_conv2d3x3_B3_stall_region_out_c0_exe14),
        .in_c0_exe15(bb_conv2d3x3_B3_stall_region_out_c0_exe15),
        .in_c0_exe1558(bb_conv2d3x3_B3_stall_region_out_c0_exe1558),
        .in_c0_exe16(bb_conv2d3x3_B3_stall_region_out_c0_exe16),
        .in_c0_exe17(bb_conv2d3x3_B3_stall_region_out_c0_exe17),
        .in_c0_exe18(bb_conv2d3x3_B3_stall_region_out_c0_exe18),
        .in_c0_exe19(bb_conv2d3x3_B3_stall_region_out_c0_exe19),
        .in_c0_exe20(bb_conv2d3x3_B3_stall_region_out_c0_exe20),
        .in_c0_exe2559(bb_conv2d3x3_B3_stall_region_out_c0_exe2559),
        .in_c0_exe3560(bb_conv2d3x3_B3_stall_region_out_c0_exe3560),
        .in_c0_exe4561(bb_conv2d3x3_B3_stall_region_out_c0_exe4561),
        .in_c0_exe5562(bb_conv2d3x3_B3_stall_region_out_c0_exe5562),
        .in_c0_exe6563(bb_conv2d3x3_B3_stall_region_out_c0_exe6563),
        .in_c0_exe7(bb_conv2d3x3_B3_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_conv2d3x3_B3_stall_region_out_c0_exe8),
        .in_c0_exe9(bb_conv2d3x3_B3_stall_region_out_c0_exe9),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_conv2d3x3_B3_stall_region_out_valid_out),
        .out_c0_exe10(conv2d3x3_B3_branch_out_c0_exe10),
        .out_c0_exe12(conv2d3x3_B3_branch_out_c0_exe12),
        .out_c0_exe13(conv2d3x3_B3_branch_out_c0_exe13),
        .out_c0_exe14(conv2d3x3_B3_branch_out_c0_exe14),
        .out_c0_exe15(conv2d3x3_B3_branch_out_c0_exe15),
        .out_c0_exe1558(conv2d3x3_B3_branch_out_c0_exe1558),
        .out_c0_exe16(conv2d3x3_B3_branch_out_c0_exe16),
        .out_c0_exe17(conv2d3x3_B3_branch_out_c0_exe17),
        .out_c0_exe18(conv2d3x3_B3_branch_out_c0_exe18),
        .out_c0_exe19(conv2d3x3_B3_branch_out_c0_exe19),
        .out_c0_exe20(conv2d3x3_B3_branch_out_c0_exe20),
        .out_c0_exe2559(conv2d3x3_B3_branch_out_c0_exe2559),
        .out_c0_exe3560(conv2d3x3_B3_branch_out_c0_exe3560),
        .out_c0_exe4561(conv2d3x3_B3_branch_out_c0_exe4561),
        .out_c0_exe5562(conv2d3x3_B3_branch_out_c0_exe5562),
        .out_c0_exe6563(conv2d3x3_B3_branch_out_c0_exe6563),
        .out_c0_exe7(conv2d3x3_B3_branch_out_c0_exe7),
        .out_c0_exe8(conv2d3x3_B3_branch_out_c0_exe8),
        .out_c0_exe9(conv2d3x3_B3_branch_out_c0_exe9),
        .out_stall_out(conv2d3x3_B3_branch_out_stall_out),
        .out_valid_out_0(conv2d3x3_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10(GPOUT,27)
    assign out_c0_exe10 = conv2d3x3_B3_branch_out_c0_exe10;

    // out_c0_exe12(GPOUT,28)
    assign out_c0_exe12 = conv2d3x3_B3_branch_out_c0_exe12;

    // out_c0_exe13(GPOUT,29)
    assign out_c0_exe13 = conv2d3x3_B3_branch_out_c0_exe13;

    // out_c0_exe14(GPOUT,30)
    assign out_c0_exe14 = conv2d3x3_B3_branch_out_c0_exe14;

    // out_c0_exe15(GPOUT,31)
    assign out_c0_exe15 = conv2d3x3_B3_branch_out_c0_exe15;

    // out_c0_exe1558(GPOUT,32)
    assign out_c0_exe1558 = conv2d3x3_B3_branch_out_c0_exe1558;

    // out_c0_exe16(GPOUT,33)
    assign out_c0_exe16 = conv2d3x3_B3_branch_out_c0_exe16;

    // out_c0_exe17(GPOUT,34)
    assign out_c0_exe17 = conv2d3x3_B3_branch_out_c0_exe17;

    // out_c0_exe18(GPOUT,35)
    assign out_c0_exe18 = conv2d3x3_B3_branch_out_c0_exe18;

    // out_c0_exe19(GPOUT,36)
    assign out_c0_exe19 = conv2d3x3_B3_branch_out_c0_exe19;

    // out_c0_exe20(GPOUT,37)
    assign out_c0_exe20 = conv2d3x3_B3_branch_out_c0_exe20;

    // out_c0_exe2559(GPOUT,38)
    assign out_c0_exe2559 = conv2d3x3_B3_branch_out_c0_exe2559;

    // out_c0_exe3560(GPOUT,39)
    assign out_c0_exe3560 = conv2d3x3_B3_branch_out_c0_exe3560;

    // out_c0_exe4561(GPOUT,40)
    assign out_c0_exe4561 = conv2d3x3_B3_branch_out_c0_exe4561;

    // out_c0_exe5562(GPOUT,41)
    assign out_c0_exe5562 = conv2d3x3_B3_branch_out_c0_exe5562;

    // out_c0_exe6563(GPOUT,42)
    assign out_c0_exe6563 = conv2d3x3_B3_branch_out_c0_exe6563;

    // out_c0_exe7(GPOUT,43)
    assign out_c0_exe7 = conv2d3x3_B3_branch_out_c0_exe7;

    // out_c0_exe8(GPOUT,44)
    assign out_c0_exe8 = conv2d3x3_B3_branch_out_c0_exe8;

    // out_c0_exe9(GPOUT,45)
    assign out_c0_exe9 = conv2d3x3_B3_branch_out_c0_exe9;

    // out_exiting_stall_out(GPOUT,46)
    assign out_exiting_stall_out = bb_conv2d3x3_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,47)
    assign out_exiting_valid_out = bb_conv2d3x3_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_valid_out;

    // out_stall_out_0(GPOUT,48)
    assign out_stall_out_0 = conv2d3x3_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,49)
    assign out_stall_out_1 = conv2d3x3_B3_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,50)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,51)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,52)
    assign out_valid_out_0 = conv2d3x3_B3_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,54)
    assign out_pipeline_valid_out = bb_conv2d3x3_B3_stall_region_out_pipeline_valid_out;

endmodule
