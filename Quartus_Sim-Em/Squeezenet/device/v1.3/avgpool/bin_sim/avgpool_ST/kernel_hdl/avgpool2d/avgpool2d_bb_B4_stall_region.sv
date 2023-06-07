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

// SystemVerilog created from avgpool2d_bb_B4_stall_region
// SystemVerilog created on Mon Jun  5 12:30:27 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpool2d_bb_B4_stall_region (
    input wire [511:0] in_unnamed_avgpool2d2_avgpool2d_avm_readdata,
    input wire [0:0] in_unnamed_avgpool2d2_avgpool2d_avm_writeack,
    input wire [0:0] in_unnamed_avgpool2d2_avgpool2d_avm_waitrequest,
    input wire [0:0] in_unnamed_avgpool2d2_avgpool2d_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpool2d6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpool2d6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_input_im,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_class_index_012_pop610,
    input wire [0:0] in_forked,
    input wire [0:0] in_notcmp19,
    input wire [0:0] in_valid_in,
    output wire [30:0] out_unnamed_avgpool2d2_avgpool2d_avm_address,
    output wire [0:0] out_unnamed_avgpool2d2_avgpool2d_avm_enable,
    output wire [0:0] out_unnamed_avgpool2d2_avgpool2d_avm_read,
    output wire [0:0] out_unnamed_avgpool2d2_avgpool2d_avm_write,
    output wire [511:0] out_unnamed_avgpool2d2_avgpool2d_avm_writedata,
    output wire [63:0] out_unnamed_avgpool2d2_avgpool2d_avm_byteenable,
    output wire [4:0] out_unnamed_avgpool2d2_avgpool2d_avm_burstcount,
    output wire [31:0] out_c0_exe329,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_unnamed_avgpool2d2_avgpool2d_avm_address;
    wire [4:0] i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_unnamed_avgpool2d2_avgpool2d_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_unnamed_avgpool2d2_avgpool2d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_unnamed_avgpool2d2_avgpool2d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_unnamed_avgpool2d2_avgpool2d_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_unnamed_avgpool2d2_avgpool2d_avm_write;
    wire [511:0] i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_unnamed_avgpool2d2_avgpool2d_avm_writedata;
    wire [0:0] avgpool2d_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] avgpool2d_B4_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] avgpool2d_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] avgpool2d_B4_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] avgpool2d_B4_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpool2d6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpool2d6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_c0_exit26_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_c0_exit26_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_c0_exit26_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_c0_exit26_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_c0_exit26_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_c0_exit26_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_c0_exit26_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_c0_exit26_8_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body4_avgpool2ds_c1_enter_avgpool2d5_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body4_avgpool2ds_c1_enter_avgpool2d5_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_for_body4_avgpool2ds_c1_enter_avgpool2d5_aunroll_x_out_c1_exit_1_tpl;
    wire [2:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [33:0] join_for_coalesced_delay_1_q;
    wire [31:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] sel_for_coalesced_delay_1_d;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [2:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [2:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [33:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [33:0] coalesced_delay_1_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_b;
    wire [33:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [33:0] bubble_join_avgpool2d_B4_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_avgpool2d_B4_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_avgpool2d_B4_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_avgpool2d_B4_merge_reg_aunroll_x_d;
    wire [101:0] bubble_join_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_i;
    wire [31:0] bubble_join_i_sfc_s_c1_in_for_body4_avgpool2ds_c1_enter_avgpool2d5_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body4_avgpool2ds_c1_enter_avgpool2d5_aunroll_x_b;
    wire [2:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [2:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [33:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [33:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_avgpool2d_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_avgpool2d_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_avgpool2d_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_V2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
    wire [0:0] bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_1_reg_stall_out_bitsignaltemp;


    // bubble_join_stall_entry(BITJOIN,49)
    assign bubble_join_stall_entry_q = {in_notcmp19, in_forked, in_class_index_012_pop610};

    // bubble_select_stall_entry(BITSELECT,50)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);

    // SE_stall_entry(STALLENABLE,70)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = avgpool2d_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // avgpool2d_B4_merge_reg_aunroll_x(BLACKBOX,25)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    avgpool2d_B4_merge_reg theavgpool2d_B4_merge_reg_aunroll_x (
        .in_stall_in(SE_out_avgpool2d_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_d),
        .in_data_in_2_tpl(bubble_select_stall_entry_b),
        .out_stall_out(avgpool2d_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(avgpool2d_B4_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(avgpool2d_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(avgpool2d_B4_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(avgpool2d_B4_merge_reg_aunroll_x_out_data_out_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_avgpool2d_B4_merge_reg_aunroll_x(BITJOIN,53)
    assign bubble_join_avgpool2d_B4_merge_reg_aunroll_x_q = {avgpool2d_B4_merge_reg_aunroll_x_out_data_out_2_tpl, avgpool2d_B4_merge_reg_aunroll_x_out_data_out_1_tpl, avgpool2d_B4_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_avgpool2d_B4_merge_reg_aunroll_x(BITSELECT,54)
    assign bubble_select_avgpool2d_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_avgpool2d_B4_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_avgpool2d_B4_merge_reg_aunroll_x_c = $unsigned(bubble_join_avgpool2d_B4_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_avgpool2d_B4_merge_reg_aunroll_x_d = $unsigned(bubble_join_avgpool2d_B4_merge_reg_aunroll_x_q[33:2]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_avgpool2d_B4_merge_reg_aunroll_x(STALLENABLE,73)
    // Valid signal propagation
    assign SE_out_avgpool2d_B4_merge_reg_aunroll_x_V0 = SE_out_avgpool2d_B4_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_avgpool2d_B4_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_o_stall | ~ (SE_out_avgpool2d_B4_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_avgpool2d_B4_merge_reg_aunroll_x_wireValid = avgpool2d_B4_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x(BITJOIN,57)
    assign bubble_join_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_q = {i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_c0_exit26_8_tpl, i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_c0_exit26_7_tpl, i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_c0_exit26_6_tpl, i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_c0_exit26_5_tpl, i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_c0_exit26_4_tpl, i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_c0_exit26_3_tpl, i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_c0_exit26_2_tpl, i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_c0_exit26_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x(BITSELECT,58)
    assign bubble_select_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_q[33:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_q[97:34]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_q[98:98]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_q[99:99]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_q[100:100]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_q[101:101]);

    // join_for_coalesced_delay_1(BITJOIN,40)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_d};

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,83)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_sfc_s_c1_in_for_body4_avgpool2ds_c1_enter_avgpool2d5_aunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_wireValid = SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_V1 & SE_out_coalesced_delay_0_fifo_and0;

    // SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3(STALLENABLE,69)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_fromReg0 <= SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_fromReg1 <= SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_1_reg_stall_out) & SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_fromReg0;
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_consumed1 = (~ (SE_out_coalesced_delay_0_fifo_backStall) & SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_StallValid = SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_backStall & SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_wireValid;
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_toReg0 = SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_StallValid & SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_toReg1 = SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_StallValid & SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_or0 = SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_wireStall = ~ (SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_consumed1 & SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_or0);
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_backStall = SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_V0 = SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_fromReg0);
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_V1 = SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_wireValid = i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_o_valid;

    // bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_1_reg(STALLFIFO,120)
    assign bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_1_reg_valid_in = SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_V0;
    assign bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_1_reg_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(9),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,63)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,64)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[2:0]);

    // sel_for_coalesced_delay_0(BITSELECT,38)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[2:2]);

    // bubble_join_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3(BITJOIN,45)
    assign bubble_join_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_q = i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3(BITSELECT,46)
    assign bubble_select_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_q[31:0]);

    // i_sfc_s_c1_in_for_body4_avgpool2ds_c1_enter_avgpool2d5_aunroll_x(BLACKBOX,29)@152
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@160
    // out out_c1_exit_0_tpl@160
    // out out_c1_exit_1_tpl@160
    avgpool2d_i_sfc_s_c1_in_for_body4_s_c1_enter_avgpool2d5 thei_sfc_s_c1_in_for_body4_avgpool2ds_c1_enter_avgpool2d5_aunroll_x (
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .in_c1_eni4_0_tpl(GND_q),
        .in_c1_eni4_1_tpl(bubble_select_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_b),
        .in_c1_eni4_2_tpl(sel_for_coalesced_delay_0_d),
        .in_c1_eni4_3_tpl(sel_for_coalesced_delay_0_b),
        .in_c1_eni4_4_tpl(sel_for_coalesced_delay_0_c),
        .out_o_stall(i_sfc_s_c1_in_for_body4_avgpool2ds_c1_enter_avgpool2d5_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body4_avgpool2ds_c1_enter_avgpool2d5_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_for_body4_avgpool2ds_c1_enter_avgpool2d5_aunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,85)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_and1 = i_sfc_s_c1_in_for_body4_avgpool2ds_c1_enter_avgpool2d5_aunroll_x_out_o_valid & SE_out_coalesced_delay_1_fifo_and0;
    assign SE_out_coalesced_delay_1_fifo_wireValid = bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_1_reg_valid_out & SE_out_coalesced_delay_1_fifo_and1;

    // coalesced_delay_1_fifo(STALLFIFO,43)
    assign coalesced_delay_1_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_V2;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(153),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(34),
        .IMPL("ram")
    ) thecoalesced_delay_1_fifo (
        .valid_in(coalesced_delay_1_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_1_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_1_q),
        .valid_out(coalesced_delay_1_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_1_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_1_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,37)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_c};

    // coalesced_delay_0_fifo(STALLFIFO,42)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_V1;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(145),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(3),
        .IMPL("ram")
    ) thecoalesced_delay_0_fifo (
        .valid_in(coalesced_delay_0_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_0_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_0_q),
        .valid_out(coalesced_delay_0_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_0_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_0_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3(BLACKBOX,7)@8
    // in in_i_stall@20000000
    // out out_o_readdata@152
    // out out_o_stall@20000000
    // out out_o_valid@152
    // out out_unnamed_avgpool2d2_avgpool2d_avm_address@20000000
    // out out_unnamed_avgpool2d2_avgpool2d_avm_burstcount@20000000
    // out out_unnamed_avgpool2d2_avgpool2d_avm_byteenable@20000000
    // out out_unnamed_avgpool2d2_avgpool2d_avm_enable@20000000
    // out out_unnamed_avgpool2d2_avgpool2d_avm_read@20000000
    // out out_unnamed_avgpool2d2_avgpool2d_avm_write@20000000
    // out out_unnamed_avgpool2d2_avgpool2d_avm_writedata@20000000
    avgpool2d_i_llvm_fpga_mem_unnamed_2_avgpool2d0 thei_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_e),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_V0),
        .in_unnamed_avgpool2d2_avgpool2d_avm_readdata(in_unnamed_avgpool2d2_avgpool2d_avm_readdata),
        .in_unnamed_avgpool2d2_avgpool2d_avm_readdatavalid(in_unnamed_avgpool2d2_avgpool2d_avm_readdatavalid),
        .in_unnamed_avgpool2d2_avgpool2d_avm_waitrequest(in_unnamed_avgpool2d2_avgpool2d_avm_waitrequest),
        .in_unnamed_avgpool2d2_avgpool2d_avm_writeack(in_unnamed_avgpool2d2_avgpool2d_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_o_valid),
        .out_unnamed_avgpool2d2_avgpool2d_avm_address(i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_unnamed_avgpool2d2_avgpool2d_avm_address),
        .out_unnamed_avgpool2d2_avgpool2d_avm_burstcount(i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_unnamed_avgpool2d2_avgpool2d_avm_burstcount),
        .out_unnamed_avgpool2d2_avgpool2d_avm_byteenable(i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_unnamed_avgpool2d2_avgpool2d_avm_byteenable),
        .out_unnamed_avgpool2d2_avgpool2d_avm_enable(i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_unnamed_avgpool2d2_avgpool2d_avm_enable),
        .out_unnamed_avgpool2d2_avgpool2d_avm_read(i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_unnamed_avgpool2d2_avgpool2d_avm_read),
        .out_unnamed_avgpool2d2_avgpool2d_avm_write(i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_unnamed_avgpool2d2_avgpool2d_avm_write),
        .out_unnamed_avgpool2d2_avgpool2d_avm_writedata(i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_unnamed_avgpool2d2_avgpool2d_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x(STALLENABLE,75)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_consumed1 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_consumed2 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_or1);
    assign SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x(BLACKBOX,28)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpool2d6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpool2d6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit26_0_tpl@8
    // out out_c0_exit26_1_tpl@8
    // out out_c0_exit26_2_tpl@8
    // out out_c0_exit26_3_tpl@8
    // out out_c0_exit26_4_tpl@8
    // out out_c0_exit26_5_tpl@8
    // out out_c0_exit26_6_tpl@8
    // out out_c0_exit26_7_tpl@8
    // out out_c0_exit26_8_tpl@8
    avgpool2d_i_sfc_s_c0_in_for_body4_s_c0_enter215_avgpool2d1 thei_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_backStall),
        .in_i_valid(SE_out_avgpool2d_B4_merge_reg_aunroll_x_V0),
        .in_input_im(in_input_im),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni3_0_tpl(GND_q),
        .in_c0_eni3_1_tpl(bubble_select_avgpool2d_B4_merge_reg_aunroll_x_b),
        .in_c0_eni3_2_tpl(bubble_select_avgpool2d_B4_merge_reg_aunroll_x_d),
        .in_c0_eni3_3_tpl(bubble_select_avgpool2d_B4_merge_reg_aunroll_x_c),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpool2d6_exiting_stall_out(i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpool2d6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpool2d6_exiting_valid_out(i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpool2d6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit26_0_tpl(),
        .out_c0_exit26_1_tpl(i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_c0_exit26_1_tpl),
        .out_c0_exit26_2_tpl(i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_c0_exit26_2_tpl),
        .out_c0_exit26_3_tpl(i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_c0_exit26_3_tpl),
        .out_c0_exit26_4_tpl(i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_c0_exit26_4_tpl),
        .out_c0_exit26_5_tpl(i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_c0_exit26_5_tpl),
        .out_c0_exit26_6_tpl(i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_c0_exit26_6_tpl),
        .out_c0_exit26_7_tpl(i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_c0_exit26_7_tpl),
        .out_c0_exit26_8_tpl(i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_c0_exit26_8_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpool2d6_exiting_valid_out = i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpool2d6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpool2d6_exiting_stall_out = i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpool2d6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,17)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,23)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,26)
    assign out_unnamed_avgpool2d2_avgpool2d_avm_address = i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_unnamed_avgpool2d2_avgpool2d_avm_address;
    assign out_unnamed_avgpool2d2_avgpool2d_avm_enable = i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_unnamed_avgpool2d2_avgpool2d_avm_enable;
    assign out_unnamed_avgpool2d2_avgpool2d_avm_read = i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_unnamed_avgpool2d2_avgpool2d_avm_read;
    assign out_unnamed_avgpool2d2_avgpool2d_avm_write = i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_unnamed_avgpool2d2_avgpool2d_avm_write;
    assign out_unnamed_avgpool2d2_avgpool2d_avm_writedata = i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_unnamed_avgpool2d2_avgpool2d_avm_writedata;
    assign out_unnamed_avgpool2d2_avgpool2d_avm_byteenable = i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_unnamed_avgpool2d2_avgpool2d_avm_byteenable;
    assign out_unnamed_avgpool2d2_avgpool2d_avm_burstcount = i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d3_out_unnamed_avgpool2d2_avgpool2d_avm_burstcount;

    // bubble_join_i_sfc_s_c1_in_for_body4_avgpool2ds_c1_enter_avgpool2d5_aunroll_x(BITJOIN,60)
    assign bubble_join_i_sfc_s_c1_in_for_body4_avgpool2ds_c1_enter_avgpool2d5_aunroll_x_q = i_sfc_s_c1_in_for_body4_avgpool2ds_c1_enter_avgpool2d5_aunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_for_body4_avgpool2ds_c1_enter_avgpool2d5_aunroll_x(BITSELECT,61)
    assign bubble_select_i_sfc_s_c1_in_for_body4_avgpool2ds_c1_enter_avgpool2d5_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_body4_avgpool2ds_c1_enter_avgpool2d5_aunroll_x_q[31:0]);

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,66)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,67)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[33:0]);

    // sel_for_coalesced_delay_1(BITSELECT,41)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[31:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[32:32]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[33:33]);

    // dupName_0_sync_out_x(GPOUT,27)@160
    assign out_c0_exe329 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe6 = sel_for_coalesced_delay_1_c;
    assign out_c0_exe7 = sel_for_coalesced_delay_1_d;
    assign out_c1_exe1 = bubble_select_i_sfc_s_c1_in_for_body4_avgpool2ds_c1_enter_avgpool2d5_aunroll_x_b;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V0;

endmodule
