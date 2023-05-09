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

// SystemVerilog created from mmul_bb_B3_stall_region
// SystemVerilog created on Fri May  5 14:23:33 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_bb_B3_stall_region (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked9,
    input wire [31:0] in_mul26,
    input wire [0:0] in_notcmp1629,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe250,
    output wire [31:0] out_c0_exe351,
    output wire [31:0] out_c0_exe4,
    output wire [0:0] out_c0_exe5,
    output wire [31:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_c0_exit48_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_c0_exit48_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_c0_exit48_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_c0_exit48_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_c0_exit48_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_c0_exit48_7_tpl;
    wire [0:0] mmul_B3_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] mmul_B3_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] mmul_B3_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] mmul_B3_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] mmul_B3_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [33:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [98:0] bubble_join_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_g;
    wire [33:0] bubble_join_mmul_B3_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_mmul_B3_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_mmul_B3_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_mmul_B3_merge_reg_aunroll_x_d;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_V0;
    wire [0:0] SE_out_mmul_B3_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_mmul_B3_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_mmul_B3_merge_reg_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,23)
    assign bubble_join_stall_entry_q = {in_notcmp1629, in_mul26, in_forked9};

    // bubble_select_stall_entry(BITSELECT,24)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);

    // SE_stall_entry(STALLENABLE,33)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = mmul_B3_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // mmul_B3_merge_reg_aunroll_x(BLACKBOX,21)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    mmul_B3_merge_reg themmul_B3_merge_reg_aunroll_x (
        .in_stall_in(SE_out_mmul_B3_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_c),
        .in_data_in_2_tpl(bubble_select_stall_entry_d),
        .out_stall_out(mmul_B3_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(mmul_B3_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(mmul_B3_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(mmul_B3_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(mmul_B3_merge_reg_aunroll_x_out_data_out_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_mmul_B3_merge_reg_aunroll_x(BITJOIN,30)
    assign bubble_join_mmul_B3_merge_reg_aunroll_x_q = {mmul_B3_merge_reg_aunroll_x_out_data_out_2_tpl, mmul_B3_merge_reg_aunroll_x_out_data_out_1_tpl, mmul_B3_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_mmul_B3_merge_reg_aunroll_x(BITSELECT,31)
    assign bubble_select_mmul_B3_merge_reg_aunroll_x_b = $unsigned(bubble_join_mmul_B3_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_mmul_B3_merge_reg_aunroll_x_c = $unsigned(bubble_join_mmul_B3_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_mmul_B3_merge_reg_aunroll_x_d = $unsigned(bubble_join_mmul_B3_merge_reg_aunroll_x_q[33:33]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_mmul_B3_merge_reg_aunroll_x(STALLENABLE,38)
    // Valid signal propagation
    assign SE_out_mmul_B3_merge_reg_aunroll_x_V0 = SE_out_mmul_B3_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_mmul_B3_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_o_stall | ~ (SE_out_mmul_B3_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_mmul_B3_merge_reg_aunroll_x_wireValid = mmul_B3_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x(STALLENABLE,36)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x(BLACKBOX,20)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit48_0_tpl@5
    // out out_c0_exit48_1_tpl@5
    // out out_c0_exit48_2_tpl@5
    // out out_c0_exit48_3_tpl@5
    // out out_c0_exit48_4_tpl@5
    // out out_c0_exit48_5_tpl@5
    // out out_c0_exit48_6_tpl@5
    // out out_c0_exit48_7_tpl@5
    mmul_i_sfc_s_c0_in_for_body8_preheader_s_c0_enter439_mmul1 thei_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_backStall),
        .in_i_valid(SE_out_mmul_B3_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni3_0_tpl(GND_q),
        .in_c0_eni3_1_tpl(bubble_select_mmul_B3_merge_reg_aunroll_x_b),
        .in_c0_eni3_2_tpl(bubble_select_mmul_B3_merge_reg_aunroll_x_c),
        .in_c0_eni3_3_tpl(bubble_select_mmul_B3_merge_reg_aunroll_x_d),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_stall_out(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_valid_out(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit48_0_tpl(),
        .out_c0_exit48_1_tpl(),
        .out_c0_exit48_2_tpl(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_c0_exit48_2_tpl),
        .out_c0_exit48_3_tpl(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_c0_exit48_3_tpl),
        .out_c0_exit48_4_tpl(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_c0_exit48_4_tpl),
        .out_c0_exit48_5_tpl(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_c0_exit48_5_tpl),
        .out_c0_exit48_6_tpl(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_c0_exit48_6_tpl),
        .out_c0_exit48_7_tpl(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_c0_exit48_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_valid_out = i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_stall_out = i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,11)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,17)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x(BITJOIN,27)
    assign bubble_join_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_q = {i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_c0_exit48_7_tpl, i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_c0_exit48_6_tpl, i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_c0_exit48_5_tpl, i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_c0_exit48_4_tpl, i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_c0_exit48_3_tpl, i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_out_c0_exit48_2_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x(BITSELECT,28)
    assign bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_q[32:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_q[64:33]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_q[65:65]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_q[97:66]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_q[98:98]);

    // dupName_0_sync_out_x(GPOUT,19)@5
    assign out_c0_exe250 = bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_b;
    assign out_c0_exe351 = bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_c;
    assign out_c0_exe4 = bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_d;
    assign out_c0_exe5 = bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_e;
    assign out_c0_exe6 = bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_f;
    assign out_c0_exe7 = bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_g;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter439_mmul1_aunroll_x_V0;

endmodule
