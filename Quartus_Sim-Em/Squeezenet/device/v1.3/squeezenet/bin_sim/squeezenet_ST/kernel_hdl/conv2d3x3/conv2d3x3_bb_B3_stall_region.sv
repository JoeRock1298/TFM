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

// SystemVerilog created from conv2d3x3_bb_B3_stall_region
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B3_stall_region (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_output_size,
    input wire [31:0] in_pad,
    input wire [31:0] in_stride,
    input wire [31:0] in_input_size,
    input wire [0:0] in_intel_reserved_ffwd_4_0,
    input wire [32:0] in_intel_reserved_ffwd_6_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_filter_weight_addr_067_replace_phi195,
    input wire [0:0] in_forked34,
    input wire [31:0] in_lm25217,
    input wire [0:0] in_notcmp81228,
    input wire [63:0] in_output_im_addr_068_replace_phi206,
    input wire [0:0] in_valid_in,
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
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] conv2d3x3_B3_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv2d3x3_B3_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [63:0] conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [63:0] conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_12_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_13_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_14_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_15_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_16_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_17_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_18_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_19_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_20_tpl;
    wire [161:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [63:0] bubble_select_stall_entry_f;
    wire [161:0] bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_b;
    wire [63:0] bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_c;
    wire [63:0] bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_f;
    wire [456:0] bubble_join_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_l;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_m;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_n;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_o;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_p;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_r;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_s;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_t;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_conv2d3x3_B3_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv2d3x3_B3_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv2d3x3_B3_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,27)
    assign bubble_join_stall_entry_q = {in_output_im_addr_068_replace_phi206, in_notcmp81228, in_lm25217, in_forked34, in_filter_weight_addr_067_replace_phi195};

    // bubble_select_stall_entry(BITSELECT,28)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[96:65]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[97:97]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[161:98]);

    // SE_stall_entry(STALLENABLE,37)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv2d3x3_B3_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // conv2d3x3_B3_merge_reg_aunroll_x(BLACKBOX,23)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    conv2d3x3_B3_merge_reg theconv2d3x3_B3_merge_reg_aunroll_x (
        .in_stall_in(SE_out_conv2d3x3_B3_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_b),
        .in_data_in_2_tpl(bubble_select_stall_entry_f),
        .in_data_in_3_tpl(bubble_select_stall_entry_d),
        .in_data_in_4_tpl(bubble_select_stall_entry_e),
        .out_stall_out(conv2d3x3_B3_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv2d3x3_B3_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_conv2d3x3_B3_merge_reg_aunroll_x(BITJOIN,31)
    assign bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q = {conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_4_tpl, conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_3_tpl, conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_2_tpl, conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_1_tpl, conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv2d3x3_B3_merge_reg_aunroll_x(BITSELECT,32)
    assign bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q[64:1]);
    assign bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q[128:65]);
    assign bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q[160:129]);
    assign bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_f = $unsigned(bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q[161:161]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_conv2d3x3_B3_merge_reg_aunroll_x(STALLENABLE,40)
    // Valid signal propagation
    assign SE_out_conv2d3x3_B3_merge_reg_aunroll_x_V0 = SE_out_conv2d3x3_B3_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_conv2d3x3_B3_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_o_stall | ~ (SE_out_conv2d3x3_B3_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_conv2d3x3_B3_merge_reg_aunroll_x_wireValid = conv2d3x3_B3_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x(STALLENABLE,42)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x(BLACKBOX,25)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@10
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit557_0_tpl@10
    // out out_c0_exit557_1_tpl@10
    // out out_c0_exit557_2_tpl@10
    // out out_c0_exit557_3_tpl@10
    // out out_c0_exit557_4_tpl@10
    // out out_c0_exit557_5_tpl@10
    // out out_c0_exit557_6_tpl@10
    // out out_c0_exit557_7_tpl@10
    // out out_c0_exit557_8_tpl@10
    // out out_c0_exit557_9_tpl@10
    // out out_c0_exit557_10_tpl@10
    // out out_c0_exit557_11_tpl@10
    // out out_c0_exit557_12_tpl@10
    // out out_c0_exit557_13_tpl@10
    // out out_c0_exit557_14_tpl@10
    // out out_c0_exit557_15_tpl@10
    // out out_c0_exit557_16_tpl@10
    // out out_c0_exit557_17_tpl@10
    // out out_c0_exit557_18_tpl@10
    // out out_c0_exit557_19_tpl@10
    // out out_c0_exit557_20_tpl@10
    conv2d3x3_i_sfc_s_c0_in_for_cond10_prehe0000ter549154_conv2d3x31 thei_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_backStall),
        .in_i_valid(SE_out_conv2d3x3_B3_merge_reg_aunroll_x_V0),
        .in_input_size(in_input_size),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_output_size(in_output_size),
        .in_pad(in_pad),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stride(in_stride),
        .in_c0_eni5_0_tpl(GND_q),
        .in_c0_eni5_1_tpl(bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_b),
        .in_c0_eni5_2_tpl(bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_c),
        .in_c0_eni5_3_tpl(bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_d),
        .in_c0_eni5_4_tpl(bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_e),
        .in_c0_eni5_5_tpl(bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_f),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_stall_out(i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_valid_out(i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit557_0_tpl(),
        .out_c0_exit557_1_tpl(i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_1_tpl),
        .out_c0_exit557_2_tpl(i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_2_tpl),
        .out_c0_exit557_3_tpl(i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_3_tpl),
        .out_c0_exit557_4_tpl(i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_4_tpl),
        .out_c0_exit557_5_tpl(i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_5_tpl),
        .out_c0_exit557_6_tpl(i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_6_tpl),
        .out_c0_exit557_7_tpl(i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_7_tpl),
        .out_c0_exit557_8_tpl(i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_8_tpl),
        .out_c0_exit557_9_tpl(i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_9_tpl),
        .out_c0_exit557_10_tpl(i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_10_tpl),
        .out_c0_exit557_11_tpl(),
        .out_c0_exit557_12_tpl(i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_12_tpl),
        .out_c0_exit557_13_tpl(i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_13_tpl),
        .out_c0_exit557_14_tpl(i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_14_tpl),
        .out_c0_exit557_15_tpl(i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_15_tpl),
        .out_c0_exit557_16_tpl(i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_16_tpl),
        .out_c0_exit557_17_tpl(i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_17_tpl),
        .out_c0_exit557_18_tpl(i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_18_tpl),
        .out_c0_exit557_19_tpl(i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_19_tpl),
        .out_c0_exit557_20_tpl(i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_20_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_valid_out = i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_stall_out = i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,11)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,21)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x(BITJOIN,35)
    assign bubble_join_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_q = {i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_20_tpl, i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_19_tpl, i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_18_tpl, i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_17_tpl, i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_16_tpl, i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_15_tpl, i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_14_tpl, i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_13_tpl, i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_12_tpl, i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_10_tpl, i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_9_tpl, i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_8_tpl, i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_7_tpl, i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_6_tpl, i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_5_tpl, i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_4_tpl, i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_3_tpl, i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_2_tpl, i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_out_c0_exit557_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x(BITSELECT,36)
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_q[63:32]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_q[64:64]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_q[65:65]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_q[97:66]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_q[98:98]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_q[99:99]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_q[131:100]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_q[132:132]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_q[133:133]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_q[134:134]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_q[198:135]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_q[262:199]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_q[294:263]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_q[295:295]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_q[359:296]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_q[423:360]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_q[455:424]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_t = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_q[456:456]);

    // dupName_0_sync_out_x(GPOUT,24)@10
    assign out_c0_exe10 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_k;
    assign out_c0_exe12 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_l;
    assign out_c0_exe13 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_m;
    assign out_c0_exe14 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_n;
    assign out_c0_exe15 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_o;
    assign out_c0_exe1558 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_b;
    assign out_c0_exe16 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_p;
    assign out_c0_exe17 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_q;
    assign out_c0_exe18 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_r;
    assign out_c0_exe19 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_s;
    assign out_c0_exe20 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_t;
    assign out_c0_exe2559 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_c;
    assign out_c0_exe3560 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_d;
    assign out_c0_exe4561 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_e;
    assign out_c0_exe5562 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_f;
    assign out_c0_exe6563 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_g;
    assign out_c0_exe7 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_h;
    assign out_c0_exe8 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_i;
    assign out_c0_exe9 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_j;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond10_preheader_lr_ph_conv2d3x3s_c0_enter549154_conv2d3x31_aunroll_x_V0;

endmodule
