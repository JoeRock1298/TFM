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

// SystemVerilog created from double_add_2_bb_B2_stall_region
// SystemVerilog created on Tue May 23 13:58:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_2_bb_B2_stall_region (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_double_add_28_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_double_add_28_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_10_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked75,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_intel_reserved_ffwd_11_0,
    output wire [0:0] out_c0_exe2,
    output wire [0:0] out_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_12_0,
    output wire [63:0] out_intel_reserved_ffwd_13_0,
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    output wire [63:0] out_intel_reserved_ffwd_3_0,
    output wire [63:0] out_intel_reserved_ffwd_4_0,
    output wire [63:0] out_intel_reserved_ffwd_5_0,
    output wire [63:0] out_intel_reserved_ffwd_6_0,
    output wire [63:0] out_intel_reserved_ffwd_7_0,
    output wire [63:0] out_intel_reserved_ffwd_8_0,
    output wire [63:0] out_intel_reserved_ffwd_9_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] double_add_2_B2_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] double_add_2_B2_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] double_add_2_B2_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_double_add_28_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_double_add_28_exiting_valid_out;
    wire [63:0] i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_10_0;
    wire [63:0] i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_11_0;
    wire [63:0] i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_12_0;
    wire [63:0] i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_13_0;
    wire [63:0] i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_2_0;
    wire [63:0] i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_3_0;
    wire [63:0] i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_4_0;
    wire [63:0] i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_5_0;
    wire [63:0] i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_6_0;
    wire [63:0] i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_7_0;
    wire [63:0] i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_8_0;
    wire [63:0] i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_9_0;
    wire [0:0] i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_double_add_2_B2_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_double_add_2_B2_merge_reg_aunroll_x_b;
    wire [0:0] bubble_join_i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_double_add_2_B2_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_double_add_2_B2_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_double_add_2_B2_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,33)
    assign bubble_join_stall_entry_q = in_forked75;

    // bubble_select_stall_entry(BITSELECT,34)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,43)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = double_add_2_B2_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // double_add_2_B2_merge_reg_aunroll_x(BLACKBOX,18)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    double_add_2_B2_merge_reg thedouble_add_2_B2_merge_reg_aunroll_x (
        .in_stall_in(SE_out_double_add_2_B2_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(double_add_2_B2_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(double_add_2_B2_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(double_add_2_B2_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_double_add_2_B2_merge_reg_aunroll_x(BITJOIN,37)
    assign bubble_join_double_add_2_B2_merge_reg_aunroll_x_q = double_add_2_B2_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_double_add_2_B2_merge_reg_aunroll_x(BITSELECT,38)
    assign bubble_select_double_add_2_B2_merge_reg_aunroll_x_b = $unsigned(bubble_join_double_add_2_B2_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_double_add_2_B2_merge_reg_aunroll_x(STALLENABLE,46)
    // Valid signal propagation
    assign SE_out_double_add_2_B2_merge_reg_aunroll_x_V0 = SE_out_double_add_2_B2_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_double_add_2_B2_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_o_stall | ~ (SE_out_double_add_2_B2_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_double_add_2_B2_merge_reg_aunroll_x_wireValid = double_add_2_B2_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x(STALLENABLE,48)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_wireValid = i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x(BLACKBOX,31)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_double_add_28_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_double_add_28_exiting_valid_out@20000000
    // out out_intel_reserved_ffwd_10_0@20000000
    // out out_intel_reserved_ffwd_11_0@20000000
    // out out_intel_reserved_ffwd_12_0@20000000
    // out out_intel_reserved_ffwd_13_0@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_intel_reserved_ffwd_6_0@20000000
    // out out_intel_reserved_ffwd_7_0@20000000
    // out out_intel_reserved_ffwd_8_0@20000000
    // out out_intel_reserved_ffwd_9_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit_0_tpl@5
    // out out_c0_exit_1_tpl@5
    // out out_c0_exit_2_tpl@5
    double_add_2_i_sfc_s_c0_in_for_body_s_c0_enter2_double_add_21 thei_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_backStall),
        .in_i_valid(SE_out_double_add_2_B2_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_double_add_2_B2_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_double_add_28_exiting_stall_out(i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_double_add_28_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_double_add_28_exiting_valid_out(i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_double_add_28_exiting_valid_out),
        .out_intel_reserved_ffwd_10_0(i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_11_0(i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_13_0(i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_2_0(i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_9_0),
        .out_o_stall(i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_c0_exit_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_double_add_28_exiting_valid_out = i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_double_add_28_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_double_add_28_exiting_stall_out = i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_double_add_28_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,11)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,12)
    assign out_intel_reserved_ffwd_10_0 = i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_10_0;

    // sync_out(GPOUT,16)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,19)
    assign out_intel_reserved_ffwd_11_0 = i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_11_0;

    // bubble_join_i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x(BITJOIN,41)
    assign bubble_join_i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_q = i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_c0_exit_2_tpl;

    // bubble_select_i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x(BITSELECT,42)
    assign bubble_select_i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,20)@5
    assign out_c0_exe2 = bubble_select_i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_b;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_V0;

    // dupName_1_regfree_osync_x(GPOUT,21)
    assign out_intel_reserved_ffwd_12_0 = i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_12_0;

    // dupName_2_regfree_osync_x(GPOUT,22)
    assign out_intel_reserved_ffwd_13_0 = i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_13_0;

    // dupName_3_regfree_osync_x(GPOUT,23)
    assign out_intel_reserved_ffwd_2_0 = i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_2_0;

    // dupName_4_regfree_osync_x(GPOUT,24)
    assign out_intel_reserved_ffwd_3_0 = i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_3_0;

    // dupName_5_regfree_osync_x(GPOUT,25)
    assign out_intel_reserved_ffwd_4_0 = i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_4_0;

    // dupName_6_regfree_osync_x(GPOUT,26)
    assign out_intel_reserved_ffwd_5_0 = i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_5_0;

    // dupName_7_regfree_osync_x(GPOUT,27)
    assign out_intel_reserved_ffwd_6_0 = i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_6_0;

    // dupName_8_regfree_osync_x(GPOUT,28)
    assign out_intel_reserved_ffwd_7_0 = i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_7_0;

    // dupName_9_regfree_osync_x(GPOUT,29)
    assign out_intel_reserved_ffwd_8_0 = i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_8_0;

    // dupName_10_regfree_osync_x(GPOUT,30)
    assign out_intel_reserved_ffwd_9_0 = i_sfc_s_c0_in_for_body_double_add_2s_c0_enter2_double_add_21_aunroll_x_out_intel_reserved_ffwd_9_0;

endmodule
