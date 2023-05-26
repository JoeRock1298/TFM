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

// SystemVerilog created from double_add_2_bb_B3_stall_region
// SystemVerilog created on Tue May 23 13:58:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_2_bb_B3_stall_region (
    input wire [511:0] in_memdep_double_add_2_avm_readdata,
    input wire [0:0] in_memdep_double_add_2_avm_writeack,
    input wire [0:0] in_memdep_double_add_2_avm_waitrequest,
    input wire [0:0] in_memdep_double_add_2_avm_readdatavalid,
    output wire [30:0] out_memdep_double_add_2_avm_address,
    output wire [0:0] out_memdep_double_add_2_avm_enable,
    output wire [0:0] out_memdep_double_add_2_avm_read,
    output wire [0:0] out_memdep_double_add_2_avm_write,
    output wire [511:0] out_memdep_double_add_2_avm_writedata,
    output wire [63:0] out_memdep_double_add_2_avm_byteenable,
    output wire [4:0] out_memdep_double_add_2_avm_burstcount,
    output wire [0:0] out_feedback_out_0,
    input wire [0:0] in_feedback_stall_in_0,
    output wire [0:0] out_feedback_valid_out_0,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_10_0,
    input wire [63:0] in_intel_reserved_ffwd_11_0,
    input wire [63:0] in_intel_reserved_ffwd_12_0,
    input wire [63:0] in_intel_reserved_ffwd_13_0,
    input wire [63:0] in_intel_reserved_ffwd_14_0,
    input wire [63:0] in_intel_reserved_ffwd_15_0,
    input wire [63:0] in_intel_reserved_ffwd_16_0,
    input wire [63:0] in_intel_reserved_ffwd_17_0,
    input wire [63:0] in_intel_reserved_ffwd_18_0,
    input wire [63:0] in_intel_reserved_ffwd_19_0,
    input wire [63:0] in_intel_reserved_ffwd_20_0,
    input wire [63:0] in_intel_reserved_ffwd_21_0,
    input wire [63:0] in_intel_reserved_ffwd_22_0,
    input wire [63:0] in_intel_reserved_ffwd_23_0,
    input wire [63:0] in_intel_reserved_ffwd_24_0,
    input wire [63:0] in_intel_reserved_ffwd_25_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_intel_reserved_ffwd_5_0,
    input wire [63:0] in_intel_reserved_ffwd_6_0,
    input wire [63:0] in_intel_reserved_ffwd_7_0,
    input wire [63:0] in_intel_reserved_ffwd_8_0,
    input wire [63:0] in_intel_reserved_ffwd_9_0,
    input wire [63:0] in_result,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_mem_memdep_double_add_22_out_lsu_memdep_o_active;
    wire [30:0] i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_address;
    wire [4:0] i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_write;
    wire [511:0] i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_double_add_22_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_double_add_22_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_double_add_22_out_o_writeack;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_double_add_23_out_feedback_out_0;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_double_add_23_out_feedback_valid_out_0;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_double_add_23_out_stall_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_double_add_23_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_out_c0_exit104_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_out_c0_exit104_2_tpl;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_double_add_22_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_double_add_22_b;
    wire [127:0] bubble_join_i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_c;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_double_add_22_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_double_add_22_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_double_add_22_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_double_add_22_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_double_add_22_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_double_add_22_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_double_add_22_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_double_add_22_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_double_add_22_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_double_add_22_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_double_add_22_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_double_add_22_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_double_add_22_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_double_add_23_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_double_add_23_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_V0;


    // SE_stall_entry(STALLENABLE,65)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x(BLACKBOX,52)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@135
    // out out_c0_exit104_0_tpl@135
    // out out_c0_exit104_1_tpl@135
    // out out_c0_exit104_2_tpl@135
    double_add_2_i_sfc_s_c0_in_for_cond26_pr0000ter101_double_add_20 thei_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_intel_reserved_ffwd_25_0(in_intel_reserved_ffwd_25_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_result(in_result),
        .in_unnamed_double_add_215_0_tpl(GND_q),
        .out_o_stall(i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_out_o_valid),
        .out_c0_exit104_0_tpl(),
        .out_c0_exit104_1_tpl(i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_out_c0_exit104_1_tpl),
        .out_c0_exit104_2_tpl(i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_out_c0_exit104_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x(STALLENABLE,68)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_backStall = i_llvm_fpga_mem_memdep_double_add_22_out_o_stall | ~ (SE_out_i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_out_o_valid;

    // SE_out_i_llvm_fpga_push_token_i1_throttle_push_double_add_23(STALLENABLE,64)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_double_add_23_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_double_add_23_wireValid = i_llvm_fpga_push_token_i1_throttle_push_double_add_23_out_valid_out;

    // bubble_join_i_llvm_fpga_mem_memdep_double_add_22(BITJOIN,54)
    assign bubble_join_i_llvm_fpga_mem_memdep_double_add_22_q = i_llvm_fpga_mem_memdep_double_add_22_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_double_add_22(BITSELECT,55)
    assign bubble_select_i_llvm_fpga_mem_memdep_double_add_22_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_double_add_22_q[0:0]);

    // i_llvm_fpga_push_token_i1_throttle_push_double_add_23(BLACKBOX,11)@136
    // in in_stall_in@20000000
    // out out_data_out@137
    // out out_feedback_out_0@20000000
    // out out_feedback_valid_out_0@20000000
    // out out_stall_out@20000000
    // out out_valid_out@137
    double_add_2_i_llvm_fpga_push_token_i1_throttle_push_0 thei_llvm_fpga_push_token_i1_throttle_push_double_add_23 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_double_add_22_b),
        .in_feedback_stall_in_0(in_feedback_stall_in_0),
        .in_stall_in(SE_out_i_llvm_fpga_push_token_i1_throttle_push_double_add_23_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_memdep_double_add_22_V1),
        .out_data_out(),
        .out_feedback_out_0(i_llvm_fpga_push_token_i1_throttle_push_double_add_23_out_feedback_out_0),
        .out_feedback_valid_out_0(i_llvm_fpga_push_token_i1_throttle_push_double_add_23_out_feedback_valid_out_0),
        .out_stall_out(i_llvm_fpga_push_token_i1_throttle_push_double_add_23_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_token_i1_throttle_push_double_add_23_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_double_add_22(STALLENABLE,62)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_double_add_22_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_double_add_22_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_double_add_22_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_double_add_22_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_double_add_22_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_double_add_22_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_double_add_22_consumed0 = (~ (in_stall_in) & SE_out_i_llvm_fpga_mem_memdep_double_add_22_wireValid) | SE_out_i_llvm_fpga_mem_memdep_double_add_22_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_double_add_22_consumed1 = (~ (i_llvm_fpga_push_token_i1_throttle_push_double_add_23_out_stall_out) & SE_out_i_llvm_fpga_mem_memdep_double_add_22_wireValid) | SE_out_i_llvm_fpga_mem_memdep_double_add_22_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_double_add_22_StallValid = SE_out_i_llvm_fpga_mem_memdep_double_add_22_backStall & SE_out_i_llvm_fpga_mem_memdep_double_add_22_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_double_add_22_toReg0 = SE_out_i_llvm_fpga_mem_memdep_double_add_22_StallValid & SE_out_i_llvm_fpga_mem_memdep_double_add_22_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_double_add_22_toReg1 = SE_out_i_llvm_fpga_mem_memdep_double_add_22_StallValid & SE_out_i_llvm_fpga_mem_memdep_double_add_22_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_double_add_22_or0 = SE_out_i_llvm_fpga_mem_memdep_double_add_22_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_double_add_22_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_double_add_22_consumed1 & SE_out_i_llvm_fpga_mem_memdep_double_add_22_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_double_add_22_backStall = SE_out_i_llvm_fpga_mem_memdep_double_add_22_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_double_add_22_V0 = SE_out_i_llvm_fpga_mem_memdep_double_add_22_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_double_add_22_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_double_add_22_V1 = SE_out_i_llvm_fpga_mem_memdep_double_add_22_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_double_add_22_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_double_add_22_wireValid = i_llvm_fpga_mem_memdep_double_add_22_out_o_valid;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x(BITJOIN,59)
    assign bubble_join_i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_q = {i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_out_c0_exit104_2_tpl, i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_out_c0_exit104_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x(BITSELECT,60)
    assign bubble_select_i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_q[127:64]);

    // i_llvm_fpga_mem_memdep_double_add_22(BLACKBOX,10)@135
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_double_add_2_avm_address@20000000
    // out out_memdep_double_add_2_avm_burstcount@20000000
    // out out_memdep_double_add_2_avm_byteenable@20000000
    // out out_memdep_double_add_2_avm_enable@20000000
    // out out_memdep_double_add_2_avm_read@20000000
    // out out_memdep_double_add_2_avm_write@20000000
    // out out_memdep_double_add_2_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@136
    // out out_o_writeack@136
    double_add_2_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_double_add_22 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_c),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_double_add_22_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c0_in_for_cond26_preheader_double_add_2s_c0_enter101_double_add_20_aunroll_x_b),
        .in_memdep_double_add_2_avm_readdata(in_memdep_double_add_2_avm_readdata),
        .in_memdep_double_add_2_avm_readdatavalid(in_memdep_double_add_2_avm_readdatavalid),
        .in_memdep_double_add_2_avm_waitrequest(in_memdep_double_add_2_avm_waitrequest),
        .in_memdep_double_add_2_avm_writeack(in_memdep_double_add_2_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_double_add_22_out_lsu_memdep_o_active),
        .out_memdep_double_add_2_avm_address(i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_address),
        .out_memdep_double_add_2_avm_burstcount(i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_burstcount),
        .out_memdep_double_add_2_avm_byteenable(i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_byteenable),
        .out_memdep_double_add_2_avm_enable(i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_enable),
        .out_memdep_double_add_2_avm_read(i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_read),
        .out_memdep_double_add_2_avm_write(i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_write),
        .out_memdep_double_add_2_avm_writedata(i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_double_add_22_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_double_add_22_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_double_add_22_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_memdep_double_add_2_avm_address = i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_address;
    assign out_memdep_double_add_2_avm_enable = i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_enable;
    assign out_memdep_double_add_2_avm_read = i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_read;
    assign out_memdep_double_add_2_avm_write = i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_write;
    assign out_memdep_double_add_2_avm_writedata = i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_writedata;
    assign out_memdep_double_add_2_avm_byteenable = i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_byteenable;
    assign out_memdep_double_add_2_avm_burstcount = i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_burstcount;

    // feedback_out_0_sync(GPOUT,7)
    assign out_feedback_out_0 = i_llvm_fpga_push_token_i1_throttle_push_double_add_23_out_feedback_out_0;

    // feedback_valid_out_0_sync(GPOUT,9)
    assign out_feedback_valid_out_0 = i_llvm_fpga_push_token_i1_throttle_push_double_add_23_out_feedback_valid_out_0;

    // sync_out(GPOUT,48)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,50)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_double_add_22_out_lsu_memdep_o_active;

    // dupName_0_sync_out_x(GPOUT,51)@136
    assign out_valid_out = SE_out_i_llvm_fpga_mem_memdep_double_add_22_V0;

endmodule
