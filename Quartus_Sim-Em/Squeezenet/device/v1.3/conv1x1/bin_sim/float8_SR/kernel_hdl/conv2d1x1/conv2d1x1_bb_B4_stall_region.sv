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

// SystemVerilog created from conv2d1x1_bb_B4_stall_region
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B4_stall_region (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv2d1x12_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv2d1x12_exiting_stall_out,
    input wire [15:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked55,
    input wire [31:0] in_lm113,
    input wire [31:0] in_mul108,
    input wire [31:0] in_mul156123,
    input wire [31:0] in_mul21118,
    input wire [0:0] in_notcmp51128,
    input wire [32:0] in_unnamed_conv2d1x110,
    input wire [0:0] in_unnamed_conv2d1x17,
    input wire [0:0] in_unnamed_conv2d1x18,
    input wire [0:0] in_unnamed_conv2d1x19,
    input wire [0:0] in_valid_in,
    output wire [9:0] out_ap_pop,
    output wire [31:0] out_c0_exe10273,
    output wire [0:0] out_c0_exe11274,
    output wire [31:0] out_c0_exe12,
    output wire [0:0] out_c0_exe1264,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [0:0] out_c0_exe15,
    output wire [32:0] out_c0_exe16,
    output wire [31:0] out_c0_exe17,
    output wire [31:0] out_c0_exe18,
    output wire [31:0] out_c0_exe19,
    output wire [0:0] out_c0_exe20,
    output wire [0:0] out_c0_exe3266,
    output wire [31:0] out_c0_exe4267,
    output wire [31:0] out_c0_exe5268,
    output wire [0:0] out_c0_exe6269,
    output wire [0:0] out_c0_exe7270,
    output wire [31:0] out_c0_exe8271,
    output wire [31:0] out_c0_exe9272,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [9:0] c_i10_undef9_q;
    wire [9:0] i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_out_valid_out;
    wire [0:0] conv2d1x1_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv2d1x1_B4_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [32:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [31:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv2d1x12_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv2d1x12_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_11_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_13_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_14_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_15_tpl;
    wire [32:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_16_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_17_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_18_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_19_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_20_tpl;
    wire [329:0] join_for_coalesced_delay_0_q;
    wire [32:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [31:0] sel_for_coalesced_delay_0_f;
    wire [31:0] sel_for_coalesced_delay_0_g;
    wire [31:0] sel_for_coalesced_delay_0_h;
    wire [31:0] sel_for_coalesced_delay_0_i;
    wire [31:0] sel_for_coalesced_delay_0_j;
    wire [31:0] sel_for_coalesced_delay_0_k;
    wire [0:0] sel_for_coalesced_delay_0_l;
    wire [0:0] sel_for_coalesced_delay_0_m;
    wire [0:0] sel_for_coalesced_delay_0_n;
    wire [0:0] sel_for_coalesced_delay_0_o;
    wire [0:0] sel_for_coalesced_delay_0_p;
    wire [0:0] sel_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_r;
    wire [0:0] sel_for_coalesced_delay_0_s;
    wire [0:0] sel_for_coalesced_delay_0_t;
    reg [329:0] coalesced_delay_0_0_q;
    wire [9:0] bubble_join_i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_q;
    wire [9:0] bubble_select_i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_b;
    wire [165:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [32:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [165:0] bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_f;
    wire [32:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_g;
    wire [31:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_i;
    wire [31:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_k;
    wire [329:0] bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_k;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_m;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_n;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_o;
    wire [32:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_p;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_r;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_s;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_t;
    wire [0:0] SE_out_i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_V1;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;


    // bubble_join_stall_entry(BITJOIN,55)
    assign bubble_join_stall_entry_q = {in_unnamed_conv2d1x19, in_unnamed_conv2d1x18, in_unnamed_conv2d1x17, in_unnamed_conv2d1x110, in_notcmp51128, in_mul21118, in_mul156123, in_mul108, in_lm113, in_forked55};

    // bubble_select_stall_entry(BITSELECT,56)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[96:65]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[128:97]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[129:129]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[162:130]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[163:163]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[164:164]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[165:165]);

    // SE_stall_entry(STALLENABLE,68)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv2d1x1_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // conv2d1x1_B4_merge_reg_aunroll_x(BLACKBOX,24)@0
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
    conv2d1x1_B4_merge_reg theconv2d1x1_B4_merge_reg_aunroll_x (
        .in_stall_in(SE_out_conv2d1x1_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_d),
        .in_data_in_2_tpl(bubble_select_stall_entry_i),
        .in_data_in_3_tpl(bubble_select_stall_entry_j),
        .in_data_in_4_tpl(bubble_select_stall_entry_k),
        .in_data_in_5_tpl(bubble_select_stall_entry_h),
        .in_data_in_6_tpl(bubble_select_stall_entry_c),
        .in_data_in_7_tpl(bubble_select_stall_entry_f),
        .in_data_in_8_tpl(bubble_select_stall_entry_e),
        .in_data_in_9_tpl(bubble_select_stall_entry_g),
        .out_stall_out(conv2d1x1_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv2d1x1_B4_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_9_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_conv2d1x1_B4_merge_reg_aunroll_x(BITJOIN,59)
    assign bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q = {conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_9_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_8_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_7_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_6_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_5_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_4_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_3_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_2_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_1_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv2d1x1_B4_merge_reg_aunroll_x(BITSELECT,60)
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[33:33]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[34:34]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_f = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[35:35]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_g = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[68:36]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_h = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[100:69]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_i = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[132:101]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_j = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[164:133]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_k = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[165:165]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_conv2d1x1_B4_merge_reg_aunroll_x(STALLENABLE,71)
    // Valid signal propagation
    assign SE_out_conv2d1x1_B4_merge_reg_aunroll_x_V0 = SE_out_conv2d1x1_B4_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_conv2d1x1_B4_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_o_stall | ~ (SE_out_conv2d1x1_B4_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_conv2d1x1_B4_merge_reg_aunroll_x_wireValid = conv2d1x1_B4_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_llvm_fpga_pop_i10_ap_pop_conv2d1x13(STALLENABLE,67)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_V0 = SE_out_i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_and0 = i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_wireValid = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_and0;

    // SE_coalesced_delay_0_0(STALLENABLE,76)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_V1;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // c_i10_undef9(CONSTANT,2)
    assign c_i10_undef9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_pop_i10_ap_pop_conv2d1x13(BLACKBOX,10)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    conv2d1x1_i_llvm_fpga_pop_i10_ap_pop_0 thei_llvm_fpga_pop_i10_ap_pop_conv2d1x13 (
        .in_data_in(c_i10_undef9_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x(STALLENABLE,73)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_consumed0 = (~ (i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_out_stall_out) & SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_consumed1 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_wireValid = i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x(BLACKBOX,26)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv2d1x12_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv2d1x12_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit263_0_tpl@5
    // out out_c0_exit263_1_tpl@5
    // out out_c0_exit263_2_tpl@5
    // out out_c0_exit263_3_tpl@5
    // out out_c0_exit263_4_tpl@5
    // out out_c0_exit263_5_tpl@5
    // out out_c0_exit263_6_tpl@5
    // out out_c0_exit263_7_tpl@5
    // out out_c0_exit263_8_tpl@5
    // out out_c0_exit263_9_tpl@5
    // out out_c0_exit263_10_tpl@5
    // out out_c0_exit263_11_tpl@5
    // out out_c0_exit263_12_tpl@5
    // out out_c0_exit263_13_tpl@5
    // out out_c0_exit263_14_tpl@5
    // out out_c0_exit263_15_tpl@5
    // out out_c0_exit263_16_tpl@5
    // out out_c0_exit263_17_tpl@5
    // out out_c0_exit263_18_tpl@5
    // out out_c0_exit263_19_tpl@5
    // out out_c0_exit263_20_tpl@5
    conv2d1x1_i_sfc_s_c0_in_for_body4_s_c0_enter25079_conv2d1x11 thei_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_backStall),
        .in_i_valid(SE_out_conv2d1x1_B4_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni10_0_tpl(GND_q),
        .in_c0_eni10_1_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_g),
        .in_c0_eni10_2_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_b),
        .in_c0_eni10_3_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_e),
        .in_c0_eni10_4_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_c),
        .in_c0_eni10_5_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_d),
        .in_c0_eni10_6_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_f),
        .in_c0_eni10_7_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_h),
        .in_c0_eni10_8_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_i),
        .in_c0_eni10_9_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_j),
        .in_c0_eni10_10_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_k),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv2d1x12_exiting_stall_out(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv2d1x12_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv2d1x12_exiting_valid_out(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv2d1x12_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit263_0_tpl(),
        .out_c0_exit263_1_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_1_tpl),
        .out_c0_exit263_2_tpl(),
        .out_c0_exit263_3_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_3_tpl),
        .out_c0_exit263_4_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_4_tpl),
        .out_c0_exit263_5_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_5_tpl),
        .out_c0_exit263_6_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_6_tpl),
        .out_c0_exit263_7_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_7_tpl),
        .out_c0_exit263_8_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_8_tpl),
        .out_c0_exit263_9_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_9_tpl),
        .out_c0_exit263_10_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_10_tpl),
        .out_c0_exit263_11_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_11_tpl),
        .out_c0_exit263_12_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_12_tpl),
        .out_c0_exit263_13_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_13_tpl),
        .out_c0_exit263_14_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_14_tpl),
        .out_c0_exit263_15_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_15_tpl),
        .out_c0_exit263_16_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_16_tpl),
        .out_c0_exit263_17_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_17_tpl),
        .out_c0_exit263_18_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_18_tpl),
        .out_c0_exit263_19_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_19_tpl),
        .out_c0_exit263_20_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_20_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv2d1x12_exiting_valid_out = i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv2d1x12_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv2d1x12_exiting_stall_out = i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv2d1x12_exiting_stall_out;

    // feedback_stall_out_1_sync(GPOUT,8)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_out_feedback_stall_out_1;

    // pipeline_valid_out_sync(GPOUT,18)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,22)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x(BITJOIN,63)
    assign bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_q = {i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_20_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_19_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_18_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_17_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_16_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_15_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_14_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_13_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_12_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_11_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_10_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_9_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_8_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_7_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_6_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_5_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_4_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_3_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_out_c0_exit263_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x(BITSELECT,64)
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_q[33:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_q[65:34]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_q[66:66]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_q[67:67]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_q[99:68]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_q[131:100]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_q[163:132]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_q[164:164]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_q[196:165]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_q[197:197]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_q[198:198]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_q[199:199]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_q[232:200]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_q[264:233]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_q[296:265]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_q[328:297]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_t = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_q[329:329]);

    // join_for_coalesced_delay_0(BITJOIN,47)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_m, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_n, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_o, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_t, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_l, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_q, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_r, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_s, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_d, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter25079_conv2d1x11_aunroll_x_p};

    // coalesced_delay_0_0(REG,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(330'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,48)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[32:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[64:33]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[96:65]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_0_q[128:97]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_0_q[160:129]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_0_q[192:161]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_0_q[224:193]);
    assign sel_for_coalesced_delay_0_i = $unsigned(coalesced_delay_0_0_q[256:225]);
    assign sel_for_coalesced_delay_0_j = $unsigned(coalesced_delay_0_0_q[288:257]);
    assign sel_for_coalesced_delay_0_k = $unsigned(coalesced_delay_0_0_q[320:289]);
    assign sel_for_coalesced_delay_0_l = $unsigned(coalesced_delay_0_0_q[321:321]);
    assign sel_for_coalesced_delay_0_m = $unsigned(coalesced_delay_0_0_q[322:322]);
    assign sel_for_coalesced_delay_0_n = $unsigned(coalesced_delay_0_0_q[323:323]);
    assign sel_for_coalesced_delay_0_o = $unsigned(coalesced_delay_0_0_q[324:324]);
    assign sel_for_coalesced_delay_0_p = $unsigned(coalesced_delay_0_0_q[325:325]);
    assign sel_for_coalesced_delay_0_q = $unsigned(coalesced_delay_0_0_q[326:326]);
    assign sel_for_coalesced_delay_0_r = $unsigned(coalesced_delay_0_0_q[327:327]);
    assign sel_for_coalesced_delay_0_s = $unsigned(coalesced_delay_0_0_q[328:328]);
    assign sel_for_coalesced_delay_0_t = $unsigned(coalesced_delay_0_0_q[329:329]);

    // bubble_join_i_llvm_fpga_pop_i10_ap_pop_conv2d1x13(BITJOIN,51)
    assign bubble_join_i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_q = i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i10_ap_pop_conv2d1x13(BITSELECT,52)
    assign bubble_select_i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_b = $unsigned(bubble_join_i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_q[9:0]);

    // dupName_0_sync_out_x(GPOUT,25)@6
    assign out_ap_pop = bubble_select_i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_b;
    assign out_c0_exe10273 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe11274 = sel_for_coalesced_delay_0_l;
    assign out_c0_exe12 = sel_for_coalesced_delay_0_k;
    assign out_c0_exe1264 = sel_for_coalesced_delay_0_q;
    assign out_c0_exe13 = sel_for_coalesced_delay_0_p;
    assign out_c0_exe14 = sel_for_coalesced_delay_0_o;
    assign out_c0_exe15 = sel_for_coalesced_delay_0_n;
    assign out_c0_exe16 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe17 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe18 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe19 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe20 = sel_for_coalesced_delay_0_m;
    assign out_c0_exe3266 = sel_for_coalesced_delay_0_t;
    assign out_c0_exe4267 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe5268 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe6269 = sel_for_coalesced_delay_0_s;
    assign out_c0_exe7270 = sel_for_coalesced_delay_0_r;
    assign out_c0_exe8271 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe9272 = sel_for_coalesced_delay_0_h;
    assign out_valid_out = SE_out_i_llvm_fpga_pop_i10_ap_pop_conv2d1x13_V0;

endmodule
