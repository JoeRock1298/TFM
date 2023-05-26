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

// SystemVerilog created from double_add_2_bb_B6_stall_region
// SystemVerilog created on Tue May 23 14:04:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_2_bb_B6_stall_region (
    input wire [63:0] in_lm102_double_add_2_avm_readdata,
    input wire [0:0] in_lm102_double_add_2_avm_writeack,
    input wire [0:0] in_lm102_double_add_2_avm_waitrequest,
    input wire [0:0] in_lm102_double_add_2_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_double_add_26_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_double_add_26_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked10,
    input wire [0:0] in_memdep_phi5_pop1748,
    input wire [0:0] in_notcmp2649,
    input wire [0:0] in_unnamed_double_add_26,
    input wire [0:0] in_unnamed_double_add_27,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_memdep_4_double_add_2_avm_readdata,
    input wire [0:0] in_memdep_4_double_add_2_avm_writeack,
    input wire [0:0] in_memdep_4_double_add_2_avm_waitrequest,
    input wire [0:0] in_memdep_4_double_add_2_avm_readdatavalid,
    output wire [31:0] out_lm102_double_add_2_avm_address,
    output wire [0:0] out_lm102_double_add_2_avm_enable,
    output wire [0:0] out_lm102_double_add_2_avm_read,
    output wire [0:0] out_lm102_double_add_2_avm_write,
    output wire [63:0] out_lm102_double_add_2_avm_writedata,
    output wire [7:0] out_lm102_double_add_2_avm_byteenable,
    output wire [0:0] out_lm102_double_add_2_avm_burstcount,
    output wire [0:0] out_c0_exe272,
    output wire [0:0] out_c0_exe474,
    output wire [0:0] out_c0_exe575,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_memdep_4_double_add_2_avm_address,
    output wire [0:0] out_memdep_4_double_add_2_avm_enable,
    output wire [0:0] out_memdep_4_double_add_2_avm_read,
    output wire [0:0] out_memdep_4_double_add_2_avm_write,
    output wire [63:0] out_memdep_4_double_add_2_avm_writedata,
    output wire [7:0] out_memdep_4_double_add_2_avm_byteenable,
    output wire [0:0] out_memdep_4_double_add_2_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] double_add_2_B6_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] double_add_2_B6_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] double_add_2_B6_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] double_add_2_B6_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] double_add_2_B6_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] double_add_2_B6_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] double_add_2_B6_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_double_add_26_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_double_add_26_exiting_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_lm102_double_add_2_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_lm102_double_add_2_avm_burstcount;
    wire [7:0] i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_lm102_double_add_2_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_lm102_double_add_2_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_lm102_double_add_2_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_lm102_double_add_2_avm_write;
    wire [63:0] i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_lm102_double_add_2_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_memdep_4_double_add_2_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_memdep_4_double_add_2_avm_burstcount;
    wire [7:0] i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_memdep_4_double_add_2_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_memdep_4_double_add_2_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_memdep_4_double_add_2_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_memdep_4_double_add_2_avm_write;
    wire [63:0] i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_memdep_4_double_add_2_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_c0_exit70_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_c0_exit70_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_c0_exit70_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_c0_exit70_6_tpl;
    wire [4:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [4:0] bubble_join_double_add_2_B6_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_double_add_2_B6_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_double_add_2_B6_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_double_add_2_B6_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_double_add_2_B6_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_double_add_2_B6_merge_reg_aunroll_x_f;
    wire [3:0] bubble_join_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_e;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_double_add_2_B6_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_double_add_2_B6_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_double_add_2_B6_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,27)
    assign bubble_join_stall_entry_q = {in_unnamed_double_add_27, in_unnamed_double_add_26, in_notcmp2649, in_memdep_phi5_pop1748, in_forked10};

    // bubble_select_stall_entry(BITSELECT,28)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[3:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[4:4]);

    // SE_stall_entry(STALLENABLE,37)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = double_add_2_B6_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // double_add_2_B6_merge_reg_aunroll_x(BLACKBOX,20)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    double_add_2_B6_merge_reg thedouble_add_2_B6_merge_reg_aunroll_x (
        .in_stall_in(SE_out_double_add_2_B6_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_e),
        .in_data_in_2_tpl(bubble_select_stall_entry_c),
        .in_data_in_3_tpl(bubble_select_stall_entry_f),
        .in_data_in_4_tpl(bubble_select_stall_entry_d),
        .out_stall_out(double_add_2_B6_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(double_add_2_B6_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(double_add_2_B6_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(double_add_2_B6_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(double_add_2_B6_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(double_add_2_B6_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(double_add_2_B6_merge_reg_aunroll_x_out_data_out_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_double_add_2_B6_merge_reg_aunroll_x(BITJOIN,31)
    assign bubble_join_double_add_2_B6_merge_reg_aunroll_x_q = {double_add_2_B6_merge_reg_aunroll_x_out_data_out_4_tpl, double_add_2_B6_merge_reg_aunroll_x_out_data_out_3_tpl, double_add_2_B6_merge_reg_aunroll_x_out_data_out_2_tpl, double_add_2_B6_merge_reg_aunroll_x_out_data_out_1_tpl, double_add_2_B6_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_double_add_2_B6_merge_reg_aunroll_x(BITSELECT,32)
    assign bubble_select_double_add_2_B6_merge_reg_aunroll_x_b = $unsigned(bubble_join_double_add_2_B6_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_double_add_2_B6_merge_reg_aunroll_x_c = $unsigned(bubble_join_double_add_2_B6_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_double_add_2_B6_merge_reg_aunroll_x_d = $unsigned(bubble_join_double_add_2_B6_merge_reg_aunroll_x_q[2:2]);
    assign bubble_select_double_add_2_B6_merge_reg_aunroll_x_e = $unsigned(bubble_join_double_add_2_B6_merge_reg_aunroll_x_q[3:3]);
    assign bubble_select_double_add_2_B6_merge_reg_aunroll_x_f = $unsigned(bubble_join_double_add_2_B6_merge_reg_aunroll_x_q[4:4]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_double_add_2_B6_merge_reg_aunroll_x(STALLENABLE,40)
    // Valid signal propagation
    assign SE_out_double_add_2_B6_merge_reg_aunroll_x_V0 = SE_out_double_add_2_B6_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_double_add_2_B6_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_o_stall | ~ (SE_out_double_add_2_B6_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_double_add_2_B6_merge_reg_aunroll_x_wireValid = double_add_2_B6_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x(STALLENABLE,42)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_wireValid = i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x(BLACKBOX,25)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_double_add_26_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_double_add_26_exiting_valid_out@20000000
    // out out_lm102_double_add_2_avm_address@20000000
    // out out_lm102_double_add_2_avm_burstcount@20000000
    // out out_lm102_double_add_2_avm_byteenable@20000000
    // out out_lm102_double_add_2_avm_enable@20000000
    // out out_lm102_double_add_2_avm_read@20000000
    // out out_lm102_double_add_2_avm_write@20000000
    // out out_lm102_double_add_2_avm_writedata@20000000
    // out out_memdep_4_double_add_2_avm_address@20000000
    // out out_memdep_4_double_add_2_avm_burstcount@20000000
    // out out_memdep_4_double_add_2_avm_byteenable@20000000
    // out out_memdep_4_double_add_2_avm_enable@20000000
    // out out_memdep_4_double_add_2_avm_read@20000000
    // out out_memdep_4_double_add_2_avm_write@20000000
    // out out_memdep_4_double_add_2_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@12
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit70_0_tpl@12
    // out out_c0_exit70_1_tpl@12
    // out out_c0_exit70_2_tpl@12
    // out out_c0_exit70_3_tpl@12
    // out out_c0_exit70_4_tpl@12
    // out out_c0_exit70_5_tpl@12
    // out out_c0_exit70_6_tpl@12
    double_add_2_i_sfc_s_c0_in_for_body13_s_0000ter637_double_add_21 thei_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_backStall),
        .in_i_valid(SE_out_double_add_2_B6_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_lm102_double_add_2_avm_readdata(in_lm102_double_add_2_avm_readdata),
        .in_lm102_double_add_2_avm_readdatavalid(in_lm102_double_add_2_avm_readdatavalid),
        .in_lm102_double_add_2_avm_waitrequest(in_lm102_double_add_2_avm_waitrequest),
        .in_lm102_double_add_2_avm_writeack(in_lm102_double_add_2_avm_writeack),
        .in_memdep_4_double_add_2_avm_readdata(in_memdep_4_double_add_2_avm_readdata),
        .in_memdep_4_double_add_2_avm_readdatavalid(in_memdep_4_double_add_2_avm_readdatavalid),
        .in_memdep_4_double_add_2_avm_waitrequest(in_memdep_4_double_add_2_avm_waitrequest),
        .in_memdep_4_double_add_2_avm_writeack(in_memdep_4_double_add_2_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni5_0_tpl(GND_q),
        .in_c0_eni5_1_tpl(bubble_select_double_add_2_B6_merge_reg_aunroll_x_b),
        .in_c0_eni5_2_tpl(bubble_select_double_add_2_B6_merge_reg_aunroll_x_c),
        .in_c0_eni5_3_tpl(bubble_select_double_add_2_B6_merge_reg_aunroll_x_d),
        .in_c0_eni5_4_tpl(bubble_select_double_add_2_B6_merge_reg_aunroll_x_e),
        .in_c0_eni5_5_tpl(bubble_select_double_add_2_B6_merge_reg_aunroll_x_f),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_double_add_26_exiting_stall_out(i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_double_add_26_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_double_add_26_exiting_valid_out(i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_double_add_26_exiting_valid_out),
        .out_lm102_double_add_2_avm_address(i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_lm102_double_add_2_avm_address),
        .out_lm102_double_add_2_avm_burstcount(i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_lm102_double_add_2_avm_burstcount),
        .out_lm102_double_add_2_avm_byteenable(i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_lm102_double_add_2_avm_byteenable),
        .out_lm102_double_add_2_avm_enable(i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_lm102_double_add_2_avm_enable),
        .out_lm102_double_add_2_avm_read(i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_lm102_double_add_2_avm_read),
        .out_lm102_double_add_2_avm_write(i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_lm102_double_add_2_avm_write),
        .out_lm102_double_add_2_avm_writedata(i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_lm102_double_add_2_avm_writedata),
        .out_memdep_4_double_add_2_avm_address(i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_memdep_4_double_add_2_avm_address),
        .out_memdep_4_double_add_2_avm_burstcount(i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_memdep_4_double_add_2_avm_burstcount),
        .out_memdep_4_double_add_2_avm_byteenable(i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_memdep_4_double_add_2_avm_byteenable),
        .out_memdep_4_double_add_2_avm_enable(i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_memdep_4_double_add_2_avm_enable),
        .out_memdep_4_double_add_2_avm_read(i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_memdep_4_double_add_2_avm_read),
        .out_memdep_4_double_add_2_avm_write(i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_memdep_4_double_add_2_avm_write),
        .out_memdep_4_double_add_2_avm_writedata(i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_memdep_4_double_add_2_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit70_0_tpl(),
        .out_c0_exit70_1_tpl(),
        .out_c0_exit70_2_tpl(i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_c0_exit70_2_tpl),
        .out_c0_exit70_3_tpl(),
        .out_c0_exit70_4_tpl(i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_c0_exit70_4_tpl),
        .out_c0_exit70_5_tpl(i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_c0_exit70_5_tpl),
        .out_c0_exit70_6_tpl(i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_c0_exit70_6_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_double_add_26_exiting_valid_out = i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_double_add_26_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_double_add_26_exiting_stall_out = i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_double_add_26_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,12)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,18)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,22)
    assign out_lm102_double_add_2_avm_address = i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_lm102_double_add_2_avm_address;
    assign out_lm102_double_add_2_avm_enable = i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_lm102_double_add_2_avm_enable;
    assign out_lm102_double_add_2_avm_read = i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_lm102_double_add_2_avm_read;
    assign out_lm102_double_add_2_avm_write = i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_lm102_double_add_2_avm_write;
    assign out_lm102_double_add_2_avm_writedata = i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_lm102_double_add_2_avm_writedata;
    assign out_lm102_double_add_2_avm_byteenable = i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_lm102_double_add_2_avm_byteenable;
    assign out_lm102_double_add_2_avm_burstcount = i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_lm102_double_add_2_avm_burstcount;

    // bubble_join_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x(BITJOIN,35)
    assign bubble_join_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_q = {i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_c0_exit70_6_tpl, i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_c0_exit70_5_tpl, i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_c0_exit70_4_tpl, i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_c0_exit70_2_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x(BITSELECT,36)
    assign bubble_select_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_q[2:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_q[3:3]);

    // dupName_0_sync_out_x(GPOUT,23)@12
    assign out_c0_exe272 = bubble_select_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_b;
    assign out_c0_exe474 = bubble_select_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_c;
    assign out_c0_exe575 = bubble_select_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_d;
    assign out_c0_exe6 = bubble_select_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_e;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,24)
    assign out_memdep_4_double_add_2_avm_address = i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_memdep_4_double_add_2_avm_address;
    assign out_memdep_4_double_add_2_avm_enable = i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_memdep_4_double_add_2_avm_enable;
    assign out_memdep_4_double_add_2_avm_read = i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_memdep_4_double_add_2_avm_read;
    assign out_memdep_4_double_add_2_avm_write = i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_memdep_4_double_add_2_avm_write;
    assign out_memdep_4_double_add_2_avm_writedata = i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_memdep_4_double_add_2_avm_writedata;
    assign out_memdep_4_double_add_2_avm_byteenable = i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_memdep_4_double_add_2_avm_byteenable;
    assign out_memdep_4_double_add_2_avm_burstcount = i_sfc_s_c0_in_for_body13_double_add_2s_c0_enter637_double_add_21_aunroll_x_out_memdep_4_double_add_2_avm_burstcount;

endmodule
