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

// SystemVerilog created from maxpool2d_bb_B5_stall_region
// SystemVerilog created on Sat Jun  3 13:01:56 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_bb_B5_stall_region (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going20_maxpool2d2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going20_maxpool2d2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_1_0,
    input wire [32:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked9,
    input wire [63:0] in_input_im_addr_041_replace_phi36_pop17103,
    input wire [63:0] in_input_im_addr_041_replace_phi75,
    input wire [31:0] in_mul2588,
    input wire [31:0] in_mul83,
    input wire [0:0] in_notcmp2393,
    input wire [0:0] in_notcmp2740_pop18108,
    input wire [0:0] in_notcmp2782,
    input wire [63:0] in_output_im_addr_042_replace_phi32_pop1698,
    input wire [63:0] in_output_im_addr_042_replace_phi68,
    input wire [0:0] in_valid_in,
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
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going20_maxpool2d2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going20_maxpool2d2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_4_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_9_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_10_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_12_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_13_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_14_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_15_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_16_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_17_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_18_tpl;
    wire [0:0] maxpool2d_B5_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] maxpool2d_B5_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] maxpool2d_B5_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [63:0] maxpool2d_B5_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [63:0] maxpool2d_B5_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] maxpool2d_B5_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] maxpool2d_B5_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] maxpool2d_B5_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] maxpool2d_B5_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [63:0] maxpool2d_B5_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [63:0] maxpool2d_B5_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] maxpool2d_B5_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [323:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [63:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [63:0] bubble_select_stall_entry_j;
    wire [63:0] bubble_select_stall_entry_k;
    wire [549:0] bubble_join_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_i;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_j;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_l;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_m;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_n;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_o;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_p;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_r;
    wire [323:0] bubble_join_maxpool2d_B5_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_maxpool2d_B5_merge_reg_aunroll_x_b;
    wire [63:0] bubble_select_maxpool2d_B5_merge_reg_aunroll_x_c;
    wire [63:0] bubble_select_maxpool2d_B5_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_maxpool2d_B5_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_maxpool2d_B5_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_maxpool2d_B5_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_maxpool2d_B5_merge_reg_aunroll_x_h;
    wire [63:0] bubble_select_maxpool2d_B5_merge_reg_aunroll_x_i;
    wire [63:0] bubble_select_maxpool2d_B5_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_maxpool2d_B5_merge_reg_aunroll_x_k;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_V0;
    wire [0:0] SE_out_maxpool2d_B5_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_maxpool2d_B5_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_maxpool2d_B5_merge_reg_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,23)
    assign bubble_join_stall_entry_q = {in_output_im_addr_042_replace_phi68, in_output_im_addr_042_replace_phi32_pop1698, in_notcmp2782, in_notcmp2740_pop18108, in_notcmp2393, in_mul83, in_mul2588, in_input_im_addr_041_replace_phi75, in_input_im_addr_041_replace_phi36_pop17103, in_forked9};

    // bubble_select_stall_entry(BITSELECT,24)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[128:65]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[160:129]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[192:161]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[193:193]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[194:194]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[195:195]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[259:196]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[323:260]);

    // SE_stall_entry(STALLENABLE,33)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = maxpool2d_B5_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // maxpool2d_B5_merge_reg_aunroll_x(BLACKBOX,21)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    // out out_data_out_7_tpl@1
    // out out_data_out_8_tpl@1
    // out out_data_out_9_tpl@1
    maxpool2d_B5_merge_reg themaxpool2d_B5_merge_reg_aunroll_x (
        .in_stall_in(SE_out_maxpool2d_B5_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_k),
        .in_data_in_2_tpl(bubble_select_stall_entry_d),
        .in_data_in_3_tpl(bubble_select_stall_entry_i),
        .in_data_in_4_tpl(bubble_select_stall_entry_f),
        .in_data_in_5_tpl(bubble_select_stall_entry_e),
        .in_data_in_6_tpl(bubble_select_stall_entry_g),
        .in_data_in_7_tpl(bubble_select_stall_entry_j),
        .in_data_in_8_tpl(bubble_select_stall_entry_c),
        .in_data_in_9_tpl(bubble_select_stall_entry_h),
        .out_stall_out(maxpool2d_B5_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(maxpool2d_B5_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(maxpool2d_B5_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(maxpool2d_B5_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(maxpool2d_B5_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(maxpool2d_B5_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(maxpool2d_B5_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(maxpool2d_B5_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(maxpool2d_B5_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(maxpool2d_B5_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(maxpool2d_B5_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(maxpool2d_B5_merge_reg_aunroll_x_out_data_out_9_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_maxpool2d_B5_merge_reg_aunroll_x(BITJOIN,30)
    assign bubble_join_maxpool2d_B5_merge_reg_aunroll_x_q = {maxpool2d_B5_merge_reg_aunroll_x_out_data_out_9_tpl, maxpool2d_B5_merge_reg_aunroll_x_out_data_out_8_tpl, maxpool2d_B5_merge_reg_aunroll_x_out_data_out_7_tpl, maxpool2d_B5_merge_reg_aunroll_x_out_data_out_6_tpl, maxpool2d_B5_merge_reg_aunroll_x_out_data_out_5_tpl, maxpool2d_B5_merge_reg_aunroll_x_out_data_out_4_tpl, maxpool2d_B5_merge_reg_aunroll_x_out_data_out_3_tpl, maxpool2d_B5_merge_reg_aunroll_x_out_data_out_2_tpl, maxpool2d_B5_merge_reg_aunroll_x_out_data_out_1_tpl, maxpool2d_B5_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_maxpool2d_B5_merge_reg_aunroll_x(BITSELECT,31)
    assign bubble_select_maxpool2d_B5_merge_reg_aunroll_x_b = $unsigned(bubble_join_maxpool2d_B5_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_maxpool2d_B5_merge_reg_aunroll_x_c = $unsigned(bubble_join_maxpool2d_B5_merge_reg_aunroll_x_q[64:1]);
    assign bubble_select_maxpool2d_B5_merge_reg_aunroll_x_d = $unsigned(bubble_join_maxpool2d_B5_merge_reg_aunroll_x_q[128:65]);
    assign bubble_select_maxpool2d_B5_merge_reg_aunroll_x_e = $unsigned(bubble_join_maxpool2d_B5_merge_reg_aunroll_x_q[129:129]);
    assign bubble_select_maxpool2d_B5_merge_reg_aunroll_x_f = $unsigned(bubble_join_maxpool2d_B5_merge_reg_aunroll_x_q[161:130]);
    assign bubble_select_maxpool2d_B5_merge_reg_aunroll_x_g = $unsigned(bubble_join_maxpool2d_B5_merge_reg_aunroll_x_q[193:162]);
    assign bubble_select_maxpool2d_B5_merge_reg_aunroll_x_h = $unsigned(bubble_join_maxpool2d_B5_merge_reg_aunroll_x_q[194:194]);
    assign bubble_select_maxpool2d_B5_merge_reg_aunroll_x_i = $unsigned(bubble_join_maxpool2d_B5_merge_reg_aunroll_x_q[258:195]);
    assign bubble_select_maxpool2d_B5_merge_reg_aunroll_x_j = $unsigned(bubble_join_maxpool2d_B5_merge_reg_aunroll_x_q[322:259]);
    assign bubble_select_maxpool2d_B5_merge_reg_aunroll_x_k = $unsigned(bubble_join_maxpool2d_B5_merge_reg_aunroll_x_q[323:323]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_maxpool2d_B5_merge_reg_aunroll_x(STALLENABLE,38)
    // Valid signal propagation
    assign SE_out_maxpool2d_B5_merge_reg_aunroll_x_V0 = SE_out_maxpool2d_B5_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_maxpool2d_B5_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_o_stall | ~ (SE_out_maxpool2d_B5_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_maxpool2d_B5_merge_reg_aunroll_x_wireValid = maxpool2d_B5_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x(STALLENABLE,36)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x(BLACKBOX,20)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going20_maxpool2d2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going20_maxpool2d2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit195_0_tpl@5
    // out out_c0_exit195_1_tpl@5
    // out out_c0_exit195_2_tpl@5
    // out out_c0_exit195_3_tpl@5
    // out out_c0_exit195_4_tpl@5
    // out out_c0_exit195_5_tpl@5
    // out out_c0_exit195_6_tpl@5
    // out out_c0_exit195_7_tpl@5
    // out out_c0_exit195_8_tpl@5
    // out out_c0_exit195_9_tpl@5
    // out out_c0_exit195_10_tpl@5
    // out out_c0_exit195_11_tpl@5
    // out out_c0_exit195_12_tpl@5
    // out out_c0_exit195_13_tpl@5
    // out out_c0_exit195_14_tpl@5
    // out out_c0_exit195_15_tpl@5
    // out out_c0_exit195_16_tpl@5
    // out out_c0_exit195_17_tpl@5
    // out out_c0_exit195_18_tpl@5
    maxpool2d_i_sfc_s_c0_in_for_cond9_prehea0000nter18023_maxpool2d1 thei_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_backStall),
        .in_i_valid(SE_out_maxpool2d_B5_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni10_0_tpl(GND_q),
        .in_c0_eni10_1_tpl(bubble_select_maxpool2d_B5_merge_reg_aunroll_x_b),
        .in_c0_eni10_2_tpl(bubble_select_maxpool2d_B5_merge_reg_aunroll_x_i),
        .in_c0_eni10_3_tpl(bubble_select_maxpool2d_B5_merge_reg_aunroll_x_j),
        .in_c0_eni10_4_tpl(bubble_select_maxpool2d_B5_merge_reg_aunroll_x_k),
        .in_c0_eni10_5_tpl(bubble_select_maxpool2d_B5_merge_reg_aunroll_x_f),
        .in_c0_eni10_6_tpl(bubble_select_maxpool2d_B5_merge_reg_aunroll_x_g),
        .in_c0_eni10_7_tpl(bubble_select_maxpool2d_B5_merge_reg_aunroll_x_h),
        .in_c0_eni10_8_tpl(bubble_select_maxpool2d_B5_merge_reg_aunroll_x_c),
        .in_c0_eni10_9_tpl(bubble_select_maxpool2d_B5_merge_reg_aunroll_x_d),
        .in_c0_eni10_10_tpl(bubble_select_maxpool2d_B5_merge_reg_aunroll_x_e),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going20_maxpool2d2_exiting_stall_out(i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going20_maxpool2d2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going20_maxpool2d2_exiting_valid_out(i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going20_maxpool2d2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit195_0_tpl(),
        .out_c0_exit195_1_tpl(),
        .out_c0_exit195_2_tpl(i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_2_tpl),
        .out_c0_exit195_3_tpl(i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_3_tpl),
        .out_c0_exit195_4_tpl(i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_4_tpl),
        .out_c0_exit195_5_tpl(i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_5_tpl),
        .out_c0_exit195_6_tpl(i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_6_tpl),
        .out_c0_exit195_7_tpl(i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_7_tpl),
        .out_c0_exit195_8_tpl(i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_8_tpl),
        .out_c0_exit195_9_tpl(i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_9_tpl),
        .out_c0_exit195_10_tpl(i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_10_tpl),
        .out_c0_exit195_11_tpl(i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_11_tpl),
        .out_c0_exit195_12_tpl(i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_12_tpl),
        .out_c0_exit195_13_tpl(i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_13_tpl),
        .out_c0_exit195_14_tpl(i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_14_tpl),
        .out_c0_exit195_15_tpl(i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_15_tpl),
        .out_c0_exit195_16_tpl(i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_16_tpl),
        .out_c0_exit195_17_tpl(i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_17_tpl),
        .out_c0_exit195_18_tpl(i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_18_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going20_maxpool2d2_exiting_valid_out = i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going20_maxpool2d2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going20_maxpool2d2_exiting_stall_out = i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going20_maxpool2d2_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,11)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,17)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x(BITJOIN,27)
    assign bubble_join_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_q = {i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_18_tpl, i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_17_tpl, i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_16_tpl, i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_15_tpl, i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_14_tpl, i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_13_tpl, i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_12_tpl, i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_11_tpl, i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_10_tpl, i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_9_tpl, i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_8_tpl, i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_7_tpl, i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_6_tpl, i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_5_tpl, i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_4_tpl, i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_3_tpl, i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_out_c0_exit195_2_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x(BITSELECT,28)
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_q[32:1]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_q[96:33]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_q[160:97]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_q[161:161]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_q[193:162]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_q[225:194]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_q[226:226]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_q[290:227]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_q[354:291]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_q[355:355]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_q[387:356]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_q[419:388]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_q[420:420]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_q[484:421]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_q[548:485]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_q[549:549]);

    // dupName_0_sync_out_x(GPOUT,19)@5
    assign out_c0_exe10205 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_j;
    assign out_c0_exe11 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_k;
    assign out_c0_exe12 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_l;
    assign out_c0_exe13 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_m;
    assign out_c0_exe14 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_n;
    assign out_c0_exe15 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_o;
    assign out_c0_exe16 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_p;
    assign out_c0_exe17 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_q;
    assign out_c0_exe18 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_r;
    assign out_c0_exe2197 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_b;
    assign out_c0_exe3198 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_c;
    assign out_c0_exe4199 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_d;
    assign out_c0_exe5200 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_e;
    assign out_c0_exe6201 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_f;
    assign out_c0_exe7202 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_g;
    assign out_c0_exe8203 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_h;
    assign out_c0_exe9204 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_i;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond9_preheader_maxpool2ds_c0_enter18023_maxpool2d1_aunroll_x_V0;

endmodule
