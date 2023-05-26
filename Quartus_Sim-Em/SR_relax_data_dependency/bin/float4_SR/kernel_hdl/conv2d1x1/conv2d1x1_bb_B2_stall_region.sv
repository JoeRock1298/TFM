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

// SystemVerilog created from conv2d1x1_bb_B2_stall_region
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B2_stall_region (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_conv2d1x18_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_conv2d1x18_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked29,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10,
    output wire [31:0] out_c0_exe11,
    output wire [31:0] out_c0_exe12,
    output wire [31:0] out_c0_exe13,
    output wire [31:0] out_c0_exe14,
    output wire [31:0] out_c0_exe15,
    output wire [31:0] out_c0_exe16,
    output wire [31:0] out_c0_exe17,
    output wire [0:0] out_c0_exe18,
    output wire [31:0] out_c0_exe2,
    output wire [31:0] out_c0_exe3,
    output wire [31:0] out_c0_exe4,
    output wire [31:0] out_c0_exe5,
    output wire [31:0] out_c0_exe6,
    output wire [31:0] out_c0_exe7,
    output wire [31:0] out_c0_exe8,
    output wire [31:0] out_c0_exe9,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] conv2d1x1_B2_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv2d1x1_B2_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_conv2d1x18_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_conv2d1x18_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_10_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_11_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_12_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_13_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_14_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_15_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_16_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_17_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_18_tpl;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_conv2d1x1_B2_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_b;
    wire [512:0] bubble_join_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_j;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_k;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_l;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_m;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_n;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_o;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_p;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_r;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_conv2d1x1_B2_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv2d1x1_B2_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv2d1x1_B2_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,21)
    assign bubble_join_stall_entry_q = in_forked29;

    // bubble_select_stall_entry(BITSELECT,22)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,31)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv2d1x1_B2_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // conv2d1x1_B2_merge_reg_aunroll_x(BLACKBOX,17)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    conv2d1x1_B2_merge_reg theconv2d1x1_B2_merge_reg_aunroll_x (
        .in_stall_in(SE_out_conv2d1x1_B2_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(conv2d1x1_B2_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv2d1x1_B2_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_conv2d1x1_B2_merge_reg_aunroll_x(BITJOIN,25)
    assign bubble_join_conv2d1x1_B2_merge_reg_aunroll_x_q = conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_conv2d1x1_B2_merge_reg_aunroll_x(BITSELECT,26)
    assign bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv2d1x1_B2_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_conv2d1x1_B2_merge_reg_aunroll_x(STALLENABLE,34)
    // Valid signal propagation
    assign SE_out_conv2d1x1_B2_merge_reg_aunroll_x_V0 = SE_out_conv2d1x1_B2_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_conv2d1x1_B2_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_o_stall | ~ (SE_out_conv2d1x1_B2_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_conv2d1x1_B2_merge_reg_aunroll_x_wireValid = conv2d1x1_B2_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x(STALLENABLE,36)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_wireValid = i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x(BLACKBOX,19)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_conv2d1x18_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_conv2d1x18_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit_0_tpl@5
    // out out_c0_exit_1_tpl@5
    // out out_c0_exit_2_tpl@5
    // out out_c0_exit_3_tpl@5
    // out out_c0_exit_4_tpl@5
    // out out_c0_exit_5_tpl@5
    // out out_c0_exit_6_tpl@5
    // out out_c0_exit_7_tpl@5
    // out out_c0_exit_8_tpl@5
    // out out_c0_exit_9_tpl@5
    // out out_c0_exit_10_tpl@5
    // out out_c0_exit_11_tpl@5
    // out out_c0_exit_12_tpl@5
    // out out_c0_exit_13_tpl@5
    // out out_c0_exit_14_tpl@5
    // out out_c0_exit_15_tpl@5
    // out out_c0_exit_16_tpl@5
    // out out_c0_exit_17_tpl@5
    // out out_c0_exit_18_tpl@5
    conv2d1x1_i_sfc_s_c0_in_for_body_s_c0_enter58_conv2d1x11 thei_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_backStall),
        .in_i_valid(SE_out_conv2d1x1_B2_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_conv2d1x18_exiting_stall_out(i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_conv2d1x18_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_conv2d1x18_exiting_valid_out(i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_conv2d1x18_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_2_tpl),
        .out_c0_exit_3_tpl(i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_3_tpl),
        .out_c0_exit_4_tpl(i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_4_tpl),
        .out_c0_exit_5_tpl(i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_5_tpl),
        .out_c0_exit_6_tpl(i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_6_tpl),
        .out_c0_exit_7_tpl(i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_7_tpl),
        .out_c0_exit_8_tpl(i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_8_tpl),
        .out_c0_exit_9_tpl(i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_9_tpl),
        .out_c0_exit_10_tpl(i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_10_tpl),
        .out_c0_exit_11_tpl(i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_11_tpl),
        .out_c0_exit_12_tpl(i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_12_tpl),
        .out_c0_exit_13_tpl(i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_13_tpl),
        .out_c0_exit_14_tpl(i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_14_tpl),
        .out_c0_exit_15_tpl(i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_15_tpl),
        .out_c0_exit_16_tpl(i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_16_tpl),
        .out_c0_exit_17_tpl(i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_17_tpl),
        .out_c0_exit_18_tpl(i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_18_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_conv2d1x18_exiting_valid_out = i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_conv2d1x18_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_conv2d1x18_exiting_stall_out = i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_conv2d1x18_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,11)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,15)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x(BITJOIN,29)
    assign bubble_join_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_q = {i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_18_tpl, i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_17_tpl, i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_16_tpl, i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_15_tpl, i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_14_tpl, i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_13_tpl, i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_12_tpl, i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_11_tpl, i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_10_tpl, i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_9_tpl, i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_8_tpl, i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_7_tpl, i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_6_tpl, i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_5_tpl, i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_4_tpl, i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_3_tpl, i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_out_c0_exit_2_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x(BITSELECT,30)
    assign bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_q[63:32]);
    assign bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_q[95:64]);
    assign bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_q[127:96]);
    assign bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_q[159:128]);
    assign bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_q[191:160]);
    assign bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_q[223:192]);
    assign bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_q[255:224]);
    assign bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_q[287:256]);
    assign bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_q[319:288]);
    assign bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_q[351:320]);
    assign bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_q[383:352]);
    assign bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_q[415:384]);
    assign bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_q[447:416]);
    assign bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_q[479:448]);
    assign bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_q[511:480]);
    assign bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_q[512:512]);

    // dupName_0_sync_out_x(GPOUT,18)@5
    assign out_c0_exe10 = bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_j;
    assign out_c0_exe11 = bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_k;
    assign out_c0_exe12 = bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_l;
    assign out_c0_exe13 = bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_m;
    assign out_c0_exe14 = bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_n;
    assign out_c0_exe15 = bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_o;
    assign out_c0_exe16 = bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_p;
    assign out_c0_exe17 = bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_q;
    assign out_c0_exe18 = bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_r;
    assign out_c0_exe2 = bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_b;
    assign out_c0_exe3 = bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_c;
    assign out_c0_exe4 = bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_d;
    assign out_c0_exe5 = bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_e;
    assign out_c0_exe6 = bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_f;
    assign out_c0_exe7 = bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_g;
    assign out_c0_exe8 = bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_h;
    assign out_c0_exe9 = bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_i;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter58_conv2d1x11_aunroll_x_V0;

endmodule
