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

// SystemVerilog created from maxpool2d_bb_B5
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_bb_B5 (
    input wire [0:0] in_forked9_0,
    input wire [0:0] in_forked9_1,
    input wire [63:0] in_input_im_addr_041_replace_phi36_pop17103_0,
    input wire [63:0] in_input_im_addr_041_replace_phi36_pop17103_1,
    input wire [63:0] in_input_im_addr_041_replace_phi75_0,
    input wire [63:0] in_input_im_addr_041_replace_phi75_1,
    input wire [31:0] in_input_size,
    input wire [0:0] in_intel_reserved_ffwd_1_0,
    input wire [32:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_mul2588_0,
    input wire [31:0] in_mul2588_1,
    input wire [31:0] in_mul83_0,
    input wire [31:0] in_mul83_1,
    input wire [0:0] in_notcmp2393_0,
    input wire [0:0] in_notcmp2393_1,
    input wire [0:0] in_notcmp2740_pop18108_0,
    input wire [0:0] in_notcmp2740_pop18108_1,
    input wire [0:0] in_notcmp2782_0,
    input wire [0:0] in_notcmp2782_1,
    input wire [63:0] in_output_im_addr_042_replace_phi32_pop1698_0,
    input wire [63:0] in_output_im_addr_042_replace_phi32_pop1698_1,
    input wire [63:0] in_output_im_addr_042_replace_phi68_0,
    input wire [63:0] in_output_im_addr_042_replace_phi68_1,
    input wire [31:0] in_output_size,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_c0_exe10205,
    output wire [63:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [31:0] out_c0_exe13,
    output wire [31:0] out_c0_exe14,
    output wire [0:0] out_c0_exe15,
    output wire [63:0] out_c0_exe16,
    output wire [63:0] out_c0_exe17,
    output wire [0:0] out_c0_exe18,
    output wire [0:0] out_c0_exe2197,
    output wire [31:0] out_c0_exe3198,
    output wire [63:0] out_c0_exe4199,
    output wire [63:0] out_c0_exe5200,
    output wire [0:0] out_c0_exe6201,
    output wire [31:0] out_c0_exe7202,
    output wire [31:0] out_c0_exe8203,
    output wire [0:0] out_c0_exe9204,
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

    wire [0:0] bb_maxpool2d_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going20_maxpool2d2_exiting_stall_out;
    wire [0:0] bb_maxpool2d_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going20_maxpool2d2_exiting_valid_out;
    wire [63:0] bb_maxpool2d_B5_stall_region_out_c0_exe10205;
    wire [63:0] bb_maxpool2d_B5_stall_region_out_c0_exe11;
    wire [0:0] bb_maxpool2d_B5_stall_region_out_c0_exe12;
    wire [31:0] bb_maxpool2d_B5_stall_region_out_c0_exe13;
    wire [31:0] bb_maxpool2d_B5_stall_region_out_c0_exe14;
    wire [0:0] bb_maxpool2d_B5_stall_region_out_c0_exe15;
    wire [63:0] bb_maxpool2d_B5_stall_region_out_c0_exe16;
    wire [63:0] bb_maxpool2d_B5_stall_region_out_c0_exe17;
    wire [0:0] bb_maxpool2d_B5_stall_region_out_c0_exe18;
    wire [0:0] bb_maxpool2d_B5_stall_region_out_c0_exe2197;
    wire [31:0] bb_maxpool2d_B5_stall_region_out_c0_exe3198;
    wire [63:0] bb_maxpool2d_B5_stall_region_out_c0_exe4199;
    wire [63:0] bb_maxpool2d_B5_stall_region_out_c0_exe5200;
    wire [0:0] bb_maxpool2d_B5_stall_region_out_c0_exe6201;
    wire [31:0] bb_maxpool2d_B5_stall_region_out_c0_exe7202;
    wire [31:0] bb_maxpool2d_B5_stall_region_out_c0_exe8203;
    wire [0:0] bb_maxpool2d_B5_stall_region_out_c0_exe9204;
    wire [0:0] bb_maxpool2d_B5_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_maxpool2d_B5_stall_region_out_stall_out;
    wire [0:0] bb_maxpool2d_B5_stall_region_out_valid_out;
    wire [63:0] maxpool2d_B5_branch_out_c0_exe10205;
    wire [63:0] maxpool2d_B5_branch_out_c0_exe11;
    wire [0:0] maxpool2d_B5_branch_out_c0_exe12;
    wire [31:0] maxpool2d_B5_branch_out_c0_exe13;
    wire [31:0] maxpool2d_B5_branch_out_c0_exe14;
    wire [0:0] maxpool2d_B5_branch_out_c0_exe15;
    wire [63:0] maxpool2d_B5_branch_out_c0_exe16;
    wire [63:0] maxpool2d_B5_branch_out_c0_exe17;
    wire [0:0] maxpool2d_B5_branch_out_c0_exe18;
    wire [0:0] maxpool2d_B5_branch_out_c0_exe2197;
    wire [31:0] maxpool2d_B5_branch_out_c0_exe3198;
    wire [63:0] maxpool2d_B5_branch_out_c0_exe4199;
    wire [63:0] maxpool2d_B5_branch_out_c0_exe5200;
    wire [0:0] maxpool2d_B5_branch_out_c0_exe6201;
    wire [31:0] maxpool2d_B5_branch_out_c0_exe7202;
    wire [31:0] maxpool2d_B5_branch_out_c0_exe8203;
    wire [0:0] maxpool2d_B5_branch_out_c0_exe9204;
    wire [0:0] maxpool2d_B5_branch_out_stall_out;
    wire [0:0] maxpool2d_B5_branch_out_valid_out_0;
    wire [0:0] maxpool2d_B5_merge_out_forked9;
    wire [63:0] maxpool2d_B5_merge_out_input_im_addr_041_replace_phi36_pop17103;
    wire [63:0] maxpool2d_B5_merge_out_input_im_addr_041_replace_phi75;
    wire [31:0] maxpool2d_B5_merge_out_mul2588;
    wire [31:0] maxpool2d_B5_merge_out_mul83;
    wire [0:0] maxpool2d_B5_merge_out_notcmp2393;
    wire [0:0] maxpool2d_B5_merge_out_notcmp2740_pop18108;
    wire [0:0] maxpool2d_B5_merge_out_notcmp2782;
    wire [63:0] maxpool2d_B5_merge_out_output_im_addr_042_replace_phi32_pop1698;
    wire [63:0] maxpool2d_B5_merge_out_output_im_addr_042_replace_phi68;
    wire [0:0] maxpool2d_B5_merge_out_stall_out_0;
    wire [0:0] maxpool2d_B5_merge_out_stall_out_1;
    wire [0:0] maxpool2d_B5_merge_out_valid_out;


    // maxpool2d_B5_merge(BLACKBOX,31)
    maxpool2d_B5_merge themaxpool2d_B5_merge (
        .in_forked9_0(in_forked9_0),
        .in_forked9_1(in_forked9_1),
        .in_input_im_addr_041_replace_phi36_pop17103_0(in_input_im_addr_041_replace_phi36_pop17103_0),
        .in_input_im_addr_041_replace_phi36_pop17103_1(in_input_im_addr_041_replace_phi36_pop17103_1),
        .in_input_im_addr_041_replace_phi75_0(in_input_im_addr_041_replace_phi75_0),
        .in_input_im_addr_041_replace_phi75_1(in_input_im_addr_041_replace_phi75_1),
        .in_mul2588_0(in_mul2588_0),
        .in_mul2588_1(in_mul2588_1),
        .in_mul83_0(in_mul83_0),
        .in_mul83_1(in_mul83_1),
        .in_notcmp2393_0(in_notcmp2393_0),
        .in_notcmp2393_1(in_notcmp2393_1),
        .in_notcmp2740_pop18108_0(in_notcmp2740_pop18108_0),
        .in_notcmp2740_pop18108_1(in_notcmp2740_pop18108_1),
        .in_notcmp2782_0(in_notcmp2782_0),
        .in_notcmp2782_1(in_notcmp2782_1),
        .in_output_im_addr_042_replace_phi32_pop1698_0(in_output_im_addr_042_replace_phi32_pop1698_0),
        .in_output_im_addr_042_replace_phi32_pop1698_1(in_output_im_addr_042_replace_phi32_pop1698_1),
        .in_output_im_addr_042_replace_phi68_0(in_output_im_addr_042_replace_phi68_0),
        .in_output_im_addr_042_replace_phi68_1(in_output_im_addr_042_replace_phi68_1),
        .in_stall_in(bb_maxpool2d_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked9(maxpool2d_B5_merge_out_forked9),
        .out_input_im_addr_041_replace_phi36_pop17103(maxpool2d_B5_merge_out_input_im_addr_041_replace_phi36_pop17103),
        .out_input_im_addr_041_replace_phi75(maxpool2d_B5_merge_out_input_im_addr_041_replace_phi75),
        .out_mul2588(maxpool2d_B5_merge_out_mul2588),
        .out_mul83(maxpool2d_B5_merge_out_mul83),
        .out_notcmp2393(maxpool2d_B5_merge_out_notcmp2393),
        .out_notcmp2740_pop18108(maxpool2d_B5_merge_out_notcmp2740_pop18108),
        .out_notcmp2782(maxpool2d_B5_merge_out_notcmp2782),
        .out_output_im_addr_042_replace_phi32_pop1698(maxpool2d_B5_merge_out_output_im_addr_042_replace_phi32_pop1698),
        .out_output_im_addr_042_replace_phi68(maxpool2d_B5_merge_out_output_im_addr_042_replace_phi68),
        .out_stall_out_0(maxpool2d_B5_merge_out_stall_out_0),
        .out_stall_out_1(maxpool2d_B5_merge_out_stall_out_1),
        .out_valid_out(maxpool2d_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B5_stall_region(BLACKBOX,2)
    maxpool2d_bb_B5_stall_region thebb_maxpool2d_B5_stall_region (
        .in_forked9(maxpool2d_B5_merge_out_forked9),
        .in_input_im_addr_041_replace_phi36_pop17103(maxpool2d_B5_merge_out_input_im_addr_041_replace_phi36_pop17103),
        .in_input_im_addr_041_replace_phi75(maxpool2d_B5_merge_out_input_im_addr_041_replace_phi75),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_mul2588(maxpool2d_B5_merge_out_mul2588),
        .in_mul83(maxpool2d_B5_merge_out_mul83),
        .in_notcmp2393(maxpool2d_B5_merge_out_notcmp2393),
        .in_notcmp2740_pop18108(maxpool2d_B5_merge_out_notcmp2740_pop18108),
        .in_notcmp2782(maxpool2d_B5_merge_out_notcmp2782),
        .in_output_im_addr_042_replace_phi32_pop1698(maxpool2d_B5_merge_out_output_im_addr_042_replace_phi32_pop1698),
        .in_output_im_addr_042_replace_phi68(maxpool2d_B5_merge_out_output_im_addr_042_replace_phi68),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(maxpool2d_B5_branch_out_stall_out),
        .in_valid_in(maxpool2d_B5_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going20_maxpool2d2_exiting_stall_out(bb_maxpool2d_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going20_maxpool2d2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going20_maxpool2d2_exiting_valid_out(bb_maxpool2d_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going20_maxpool2d2_exiting_valid_out),
        .out_c0_exe10205(bb_maxpool2d_B5_stall_region_out_c0_exe10205),
        .out_c0_exe11(bb_maxpool2d_B5_stall_region_out_c0_exe11),
        .out_c0_exe12(bb_maxpool2d_B5_stall_region_out_c0_exe12),
        .out_c0_exe13(bb_maxpool2d_B5_stall_region_out_c0_exe13),
        .out_c0_exe14(bb_maxpool2d_B5_stall_region_out_c0_exe14),
        .out_c0_exe15(bb_maxpool2d_B5_stall_region_out_c0_exe15),
        .out_c0_exe16(bb_maxpool2d_B5_stall_region_out_c0_exe16),
        .out_c0_exe17(bb_maxpool2d_B5_stall_region_out_c0_exe17),
        .out_c0_exe18(bb_maxpool2d_B5_stall_region_out_c0_exe18),
        .out_c0_exe2197(bb_maxpool2d_B5_stall_region_out_c0_exe2197),
        .out_c0_exe3198(bb_maxpool2d_B5_stall_region_out_c0_exe3198),
        .out_c0_exe4199(bb_maxpool2d_B5_stall_region_out_c0_exe4199),
        .out_c0_exe5200(bb_maxpool2d_B5_stall_region_out_c0_exe5200),
        .out_c0_exe6201(bb_maxpool2d_B5_stall_region_out_c0_exe6201),
        .out_c0_exe7202(bb_maxpool2d_B5_stall_region_out_c0_exe7202),
        .out_c0_exe8203(bb_maxpool2d_B5_stall_region_out_c0_exe8203),
        .out_c0_exe9204(bb_maxpool2d_B5_stall_region_out_c0_exe9204),
        .out_pipeline_valid_out(bb_maxpool2d_B5_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_maxpool2d_B5_stall_region_out_stall_out),
        .out_valid_out(bb_maxpool2d_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // maxpool2d_B5_branch(BLACKBOX,30)
    maxpool2d_B5_branch themaxpool2d_B5_branch (
        .in_c0_exe10205(bb_maxpool2d_B5_stall_region_out_c0_exe10205),
        .in_c0_exe11(bb_maxpool2d_B5_stall_region_out_c0_exe11),
        .in_c0_exe12(bb_maxpool2d_B5_stall_region_out_c0_exe12),
        .in_c0_exe13(bb_maxpool2d_B5_stall_region_out_c0_exe13),
        .in_c0_exe14(bb_maxpool2d_B5_stall_region_out_c0_exe14),
        .in_c0_exe15(bb_maxpool2d_B5_stall_region_out_c0_exe15),
        .in_c0_exe16(bb_maxpool2d_B5_stall_region_out_c0_exe16),
        .in_c0_exe17(bb_maxpool2d_B5_stall_region_out_c0_exe17),
        .in_c0_exe18(bb_maxpool2d_B5_stall_region_out_c0_exe18),
        .in_c0_exe2197(bb_maxpool2d_B5_stall_region_out_c0_exe2197),
        .in_c0_exe3198(bb_maxpool2d_B5_stall_region_out_c0_exe3198),
        .in_c0_exe4199(bb_maxpool2d_B5_stall_region_out_c0_exe4199),
        .in_c0_exe5200(bb_maxpool2d_B5_stall_region_out_c0_exe5200),
        .in_c0_exe6201(bb_maxpool2d_B5_stall_region_out_c0_exe6201),
        .in_c0_exe7202(bb_maxpool2d_B5_stall_region_out_c0_exe7202),
        .in_c0_exe8203(bb_maxpool2d_B5_stall_region_out_c0_exe8203),
        .in_c0_exe9204(bb_maxpool2d_B5_stall_region_out_c0_exe9204),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_maxpool2d_B5_stall_region_out_valid_out),
        .out_c0_exe10205(maxpool2d_B5_branch_out_c0_exe10205),
        .out_c0_exe11(maxpool2d_B5_branch_out_c0_exe11),
        .out_c0_exe12(maxpool2d_B5_branch_out_c0_exe12),
        .out_c0_exe13(maxpool2d_B5_branch_out_c0_exe13),
        .out_c0_exe14(maxpool2d_B5_branch_out_c0_exe14),
        .out_c0_exe15(maxpool2d_B5_branch_out_c0_exe15),
        .out_c0_exe16(maxpool2d_B5_branch_out_c0_exe16),
        .out_c0_exe17(maxpool2d_B5_branch_out_c0_exe17),
        .out_c0_exe18(maxpool2d_B5_branch_out_c0_exe18),
        .out_c0_exe2197(maxpool2d_B5_branch_out_c0_exe2197),
        .out_c0_exe3198(maxpool2d_B5_branch_out_c0_exe3198),
        .out_c0_exe4199(maxpool2d_B5_branch_out_c0_exe4199),
        .out_c0_exe5200(maxpool2d_B5_branch_out_c0_exe5200),
        .out_c0_exe6201(maxpool2d_B5_branch_out_c0_exe6201),
        .out_c0_exe7202(maxpool2d_B5_branch_out_c0_exe7202),
        .out_c0_exe8203(maxpool2d_B5_branch_out_c0_exe8203),
        .out_c0_exe9204(maxpool2d_B5_branch_out_c0_exe9204),
        .out_stall_out(maxpool2d_B5_branch_out_stall_out),
        .out_valid_out_0(maxpool2d_B5_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10205(GPOUT,32)
    assign out_c0_exe10205 = maxpool2d_B5_branch_out_c0_exe10205;

    // out_c0_exe11(GPOUT,33)
    assign out_c0_exe11 = maxpool2d_B5_branch_out_c0_exe11;

    // out_c0_exe12(GPOUT,34)
    assign out_c0_exe12 = maxpool2d_B5_branch_out_c0_exe12;

    // out_c0_exe13(GPOUT,35)
    assign out_c0_exe13 = maxpool2d_B5_branch_out_c0_exe13;

    // out_c0_exe14(GPOUT,36)
    assign out_c0_exe14 = maxpool2d_B5_branch_out_c0_exe14;

    // out_c0_exe15(GPOUT,37)
    assign out_c0_exe15 = maxpool2d_B5_branch_out_c0_exe15;

    // out_c0_exe16(GPOUT,38)
    assign out_c0_exe16 = maxpool2d_B5_branch_out_c0_exe16;

    // out_c0_exe17(GPOUT,39)
    assign out_c0_exe17 = maxpool2d_B5_branch_out_c0_exe17;

    // out_c0_exe18(GPOUT,40)
    assign out_c0_exe18 = maxpool2d_B5_branch_out_c0_exe18;

    // out_c0_exe2197(GPOUT,41)
    assign out_c0_exe2197 = maxpool2d_B5_branch_out_c0_exe2197;

    // out_c0_exe3198(GPOUT,42)
    assign out_c0_exe3198 = maxpool2d_B5_branch_out_c0_exe3198;

    // out_c0_exe4199(GPOUT,43)
    assign out_c0_exe4199 = maxpool2d_B5_branch_out_c0_exe4199;

    // out_c0_exe5200(GPOUT,44)
    assign out_c0_exe5200 = maxpool2d_B5_branch_out_c0_exe5200;

    // out_c0_exe6201(GPOUT,45)
    assign out_c0_exe6201 = maxpool2d_B5_branch_out_c0_exe6201;

    // out_c0_exe7202(GPOUT,46)
    assign out_c0_exe7202 = maxpool2d_B5_branch_out_c0_exe7202;

    // out_c0_exe8203(GPOUT,47)
    assign out_c0_exe8203 = maxpool2d_B5_branch_out_c0_exe8203;

    // out_c0_exe9204(GPOUT,48)
    assign out_c0_exe9204 = maxpool2d_B5_branch_out_c0_exe9204;

    // out_exiting_stall_out(GPOUT,49)
    assign out_exiting_stall_out = bb_maxpool2d_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going20_maxpool2d2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,50)
    assign out_exiting_valid_out = bb_maxpool2d_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going20_maxpool2d2_exiting_valid_out;

    // out_stall_out_0(GPOUT,51)
    assign out_stall_out_0 = maxpool2d_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,52)
    assign out_stall_out_1 = maxpool2d_B5_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,53)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,54)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,55)
    assign out_valid_out_0 = maxpool2d_B5_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,57)
    assign out_pipeline_valid_out = bb_maxpool2d_B5_stall_region_out_pipeline_valid_out;

endmodule
