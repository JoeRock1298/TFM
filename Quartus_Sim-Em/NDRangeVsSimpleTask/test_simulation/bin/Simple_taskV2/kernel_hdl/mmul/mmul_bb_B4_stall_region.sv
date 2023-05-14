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

// SystemVerilog created from mmul_bb_B4_stall_region
// SystemVerilog created on Tue May  9 13:46:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_bb_B4_stall_region (
    input wire [511:0] in_lm_mmul_avm_readdata,
    input wire [0:0] in_lm_mmul_avm_writeack,
    input wire [0:0] in_lm_mmul_avm_waitrequest,
    input wire [0:0] in_lm_mmul_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_A,
    input wire [63:0] in_B,
    input wire [31:0] in_N,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_N_sync_buffer316,
    input wire [0:0] in_forked,
    input wire [31:0] in_i_027_pop618,
    input wire [0:0] in_notcmp917,
    input wire [0:0] in_valid_in,
    input wire [511:0] in_lm9_mmul_avm_readdata,
    input wire [0:0] in_lm9_mmul_avm_writeack,
    input wire [0:0] in_lm9_mmul_avm_waitrequest,
    input wire [0:0] in_lm9_mmul_avm_readdatavalid,
    output wire [30:0] out_lm_mmul_avm_address,
    output wire [0:0] out_lm_mmul_avm_enable,
    output wire [0:0] out_lm_mmul_avm_read,
    output wire [0:0] out_lm_mmul_avm_write,
    output wire [511:0] out_lm_mmul_avm_writedata,
    output wire [63:0] out_lm_mmul_avm_byteenable,
    output wire [4:0] out_lm_mmul_avm_burstcount,
    output wire [31:0] out_c0_exe233,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_valid_out,
    output wire [30:0] out_lm9_mmul_avm_address,
    output wire [0:0] out_lm9_mmul_avm_enable,
    output wire [0:0] out_lm9_mmul_avm_read,
    output wire [0:0] out_lm9_mmul_avm_write,
    output wire [511:0] out_lm9_mmul_avm_writedata,
    output wire [63:0] out_lm9_mmul_avm_byteenable,
    output wire [4:0] out_lm9_mmul_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [30:0] i_llvm_fpga_mem_lm9_mmul4_out_lm9_mmul_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm9_mmul4_out_lm9_mmul_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm9_mmul4_out_lm9_mmul_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm9_mmul4_out_lm9_mmul_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm9_mmul4_out_lm9_mmul_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm9_mmul4_out_lm9_mmul_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm9_mmul4_out_lm9_mmul_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm9_mmul4_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm9_mmul4_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm9_mmul4_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm_mmul3_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm_mmul3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm_mmul3_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_c0_exit31_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_c0_exit31_2_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_c0_exit31_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_c0_exit31_4_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_c0_exit31_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_c0_exit31_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_c0_exit31_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_c0_exit31_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_c0_exit31_9_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body4_mmuls_c1_enter_mmul6_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body4_mmuls_c1_enter_mmul6_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_for_body4_mmuls_c1_enter_mmul6_aunroll_x_out_c1_exit_1_tpl;
    wire [0:0] mmul_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] mmul_B4_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] mmul_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] mmul_B4_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] mmul_B4_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] mmul_B4_merge_reg_aunroll_x_out_data_out_3_tpl;
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
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm9_mmul4_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm9_mmul4_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm_mmul3_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm_mmul3_b;
    wire [65:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [165:0] bubble_join_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_e;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_j;
    wire [31:0] bubble_join_i_sfc_s_c1_in_for_body4_mmuls_c1_enter_mmul6_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body4_mmuls_c1_enter_mmul6_aunroll_x_b;
    wire [65:0] bubble_join_mmul_B4_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_mmul_B4_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_mmul_B4_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_mmul_B4_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_mmul_B4_merge_reg_aunroll_x_e;
    wire [2:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [2:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [33:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [33:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_V3;
    wire [0:0] SE_out_mmul_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_mmul_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_mmul_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;


    // bubble_join_stall_entry(BITJOIN,60)
    assign bubble_join_stall_entry_q = {in_notcmp917, in_i_027_pop618, in_forked, in_N_sync_buffer316};

    // bubble_select_stall_entry(BITSELECT,61)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[65:65]);

    // SE_stall_entry(STALLENABLE,84)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = mmul_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // mmul_B4_merge_reg_aunroll_x(BLACKBOX,38)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    mmul_B4_merge_reg themmul_B4_merge_reg_aunroll_x (
        .in_stall_in(SE_out_mmul_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_b),
        .in_data_in_2_tpl(bubble_select_stall_entry_e),
        .in_data_in_3_tpl(bubble_select_stall_entry_d),
        .out_stall_out(mmul_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(mmul_B4_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(mmul_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(mmul_B4_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(mmul_B4_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(mmul_B4_merge_reg_aunroll_x_out_data_out_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_mmul_B4_merge_reg_aunroll_x(BITJOIN,71)
    assign bubble_join_mmul_B4_merge_reg_aunroll_x_q = {mmul_B4_merge_reg_aunroll_x_out_data_out_3_tpl, mmul_B4_merge_reg_aunroll_x_out_data_out_2_tpl, mmul_B4_merge_reg_aunroll_x_out_data_out_1_tpl, mmul_B4_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_mmul_B4_merge_reg_aunroll_x(BITSELECT,72)
    assign bubble_select_mmul_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_mmul_B4_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_mmul_B4_merge_reg_aunroll_x_c = $unsigned(bubble_join_mmul_B4_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_mmul_B4_merge_reg_aunroll_x_d = $unsigned(bubble_join_mmul_B4_merge_reg_aunroll_x_q[33:33]);
    assign bubble_select_mmul_B4_merge_reg_aunroll_x_e = $unsigned(bubble_join_mmul_B4_merge_reg_aunroll_x_q[65:34]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_mmul_B4_merge_reg_aunroll_x(STALLENABLE,91)
    // Valid signal propagation
    assign SE_out_mmul_B4_merge_reg_aunroll_x_V0 = SE_out_mmul_B4_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_mmul_B4_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_o_stall | ~ (SE_out_mmul_B4_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_mmul_B4_merge_reg_aunroll_x_wireValid = mmul_B4_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x(BITJOIN,64)
    assign bubble_join_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_q = {i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_c0_exit31_9_tpl, i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_c0_exit31_8_tpl, i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_c0_exit31_7_tpl, i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_c0_exit31_6_tpl, i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_c0_exit31_5_tpl, i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_c0_exit31_4_tpl, i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_c0_exit31_3_tpl, i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_c0_exit31_2_tpl, i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_c0_exit31_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x(BITSELECT,65)
    assign bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_q[32:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_q[96:33]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_q[97:97]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_q[161:98]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_q[162:162]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_q[163:163]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_q[164:164]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_q[165:165]);

    // join_for_coalesced_delay_1(BITJOIN,49)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_c};

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,75)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,76)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[2:0]);

    // sel_for_coalesced_delay_0(BITSELECT,47)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[2:2]);

    // bubble_join_i_llvm_fpga_mem_lm9_mmul4(BITJOIN,54)
    assign bubble_join_i_llvm_fpga_mem_lm9_mmul4_q = i_llvm_fpga_mem_lm9_mmul4_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm9_mmul4(BITSELECT,55)
    assign bubble_select_i_llvm_fpga_mem_lm9_mmul4_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm9_mmul4_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm_mmul3(BITJOIN,57)
    assign bubble_join_i_llvm_fpga_mem_lm_mmul3_q = i_llvm_fpga_mem_lm_mmul3_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm_mmul3(BITSELECT,58)
    assign bubble_select_i_llvm_fpga_mem_lm_mmul3_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm_mmul3_q[31:0]);

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,97)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_sfc_s_c1_in_for_body4_mmuls_c1_enter_mmul6_aunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = i_llvm_fpga_mem_lm_mmul3_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_lm9_mmul4_out_o_valid & SE_out_coalesced_delay_0_fifo_and1;

    // i_sfc_s_c1_in_for_body4_mmuls_c1_enter_mmul6_aunroll_x(BLACKBOX,37)@216
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@224
    // out out_c1_exit_0_tpl@224
    // out out_c1_exit_1_tpl@224
    mmul_i_sfc_s_c1_in_for_body4_s_c1_enter_mmul6 thei_sfc_s_c1_in_for_body4_mmuls_c1_enter_mmul6_aunroll_x (
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_c1_eni5_0_tpl(GND_q),
        .in_c1_eni5_1_tpl(bubble_select_i_llvm_fpga_mem_lm_mmul3_b),
        .in_c1_eni5_2_tpl(bubble_select_i_llvm_fpga_mem_lm9_mmul4_b),
        .in_c1_eni5_3_tpl(sel_for_coalesced_delay_0_d),
        .in_c1_eni5_4_tpl(sel_for_coalesced_delay_0_b),
        .in_c1_eni5_5_tpl(sel_for_coalesced_delay_0_c),
        .out_o_stall(i_sfc_s_c1_in_for_body4_mmuls_c1_enter_mmul6_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body4_mmuls_c1_enter_mmul6_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_for_body4_mmuls_c1_enter_mmul6_aunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,99)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_wireValid = i_sfc_s_c1_in_for_body4_mmuls_c1_enter_mmul6_aunroll_x_out_o_valid & SE_out_coalesced_delay_1_fifo_and0;

    // coalesced_delay_1_fifo(STALLFIFO,52)
    assign coalesced_delay_1_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_V3;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(169),
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

    // join_for_coalesced_delay_0(BITJOIN,46)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_b};

    // coalesced_delay_0_fifo(STALLFIFO,51)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_V2;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(161),
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

    // i_llvm_fpga_mem_lm_mmul3(BLACKBOX,8)@56
    // in in_i_stall@20000000
    // out out_lm_mmul_avm_address@20000000
    // out out_lm_mmul_avm_burstcount@20000000
    // out out_lm_mmul_avm_byteenable@20000000
    // out out_lm_mmul_avm_enable@20000000
    // out out_lm_mmul_avm_read@20000000
    // out out_lm_mmul_avm_write@20000000
    // out out_lm_mmul_avm_writedata@20000000
    // out out_o_readdata@216
    // out out_o_stall@20000000
    // out out_o_valid@216
    mmul_i_llvm_fpga_mem_lm_0 thei_llvm_fpga_mem_lm_mmul3 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_d),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_e),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_V1),
        .in_lm_mmul_avm_readdata(in_lm_mmul_avm_readdata),
        .in_lm_mmul_avm_readdatavalid(in_lm_mmul_avm_readdatavalid),
        .in_lm_mmul_avm_waitrequest(in_lm_mmul_avm_waitrequest),
        .in_lm_mmul_avm_writeack(in_lm_mmul_avm_writeack),
        .out_lm_mmul_avm_address(i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_address),
        .out_lm_mmul_avm_burstcount(i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_burstcount),
        .out_lm_mmul_avm_byteenable(i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_byteenable),
        .out_lm_mmul_avm_enable(i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_enable),
        .out_lm_mmul_avm_read(i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_read),
        .out_lm_mmul_avm_write(i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_write),
        .out_lm_mmul_avm_writedata(i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm_mmul3_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm_mmul3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm_mmul3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm9_mmul4(BLACKBOX,7)@56
    // in in_i_stall@20000000
    // out out_lm9_mmul_avm_address@20000000
    // out out_lm9_mmul_avm_burstcount@20000000
    // out out_lm9_mmul_avm_byteenable@20000000
    // out out_lm9_mmul_avm_enable@20000000
    // out out_lm9_mmul_avm_read@20000000
    // out out_lm9_mmul_avm_write@20000000
    // out out_lm9_mmul_avm_writedata@20000000
    // out out_o_readdata@216
    // out out_o_stall@20000000
    // out out_o_valid@216
    mmul_i_llvm_fpga_mem_lm9_0 thei_llvm_fpga_mem_lm9_mmul4 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_f),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_e),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_V0),
        .in_lm9_mmul_avm_readdata(in_lm9_mmul_avm_readdata),
        .in_lm9_mmul_avm_readdatavalid(in_lm9_mmul_avm_readdatavalid),
        .in_lm9_mmul_avm_waitrequest(in_lm9_mmul_avm_waitrequest),
        .in_lm9_mmul_avm_writeack(in_lm9_mmul_avm_writeack),
        .out_lm9_mmul_avm_address(i_llvm_fpga_mem_lm9_mmul4_out_lm9_mmul_avm_address),
        .out_lm9_mmul_avm_burstcount(i_llvm_fpga_mem_lm9_mmul4_out_lm9_mmul_avm_burstcount),
        .out_lm9_mmul_avm_byteenable(i_llvm_fpga_mem_lm9_mmul4_out_lm9_mmul_avm_byteenable),
        .out_lm9_mmul_avm_enable(i_llvm_fpga_mem_lm9_mmul4_out_lm9_mmul_avm_enable),
        .out_lm9_mmul_avm_read(i_llvm_fpga_mem_lm9_mmul4_out_lm9_mmul_avm_read),
        .out_lm9_mmul_avm_write(i_llvm_fpga_mem_lm9_mmul4_out_lm9_mmul_avm_write),
        .out_lm9_mmul_avm_writedata(i_llvm_fpga_mem_lm9_mmul4_out_lm9_mmul_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm9_mmul4_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm9_mmul4_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm9_mmul4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x(STALLENABLE,87)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_lm9_mmul4_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_consumed1 = (~ (i_llvm_fpga_mem_lm_mmul3_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_consumed2 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_consumed3 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_or2);
    assign SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x(BLACKBOX,36)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@56
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit31_0_tpl@56
    // out out_c0_exit31_1_tpl@56
    // out out_c0_exit31_2_tpl@56
    // out out_c0_exit31_3_tpl@56
    // out out_c0_exit31_4_tpl@56
    // out out_c0_exit31_5_tpl@56
    // out out_c0_exit31_6_tpl@56
    // out out_c0_exit31_7_tpl@56
    // out out_c0_exit31_8_tpl@56
    // out out_c0_exit31_9_tpl@56
    mmul_i_sfc_s_c0_in_for_body4_s_c0_enter255_mmul1 thei_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x (
        .in_A(in_A),
        .in_B(in_B),
        .in_N(in_N),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_backStall),
        .in_i_valid(SE_out_mmul_B4_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni4_0_tpl(GND_q),
        .in_c0_eni4_1_tpl(bubble_select_mmul_B4_merge_reg_aunroll_x_b),
        .in_c0_eni4_2_tpl(bubble_select_mmul_B4_merge_reg_aunroll_x_c),
        .in_c0_eni4_3_tpl(bubble_select_mmul_B4_merge_reg_aunroll_x_e),
        .in_c0_eni4_4_tpl(bubble_select_mmul_B4_merge_reg_aunroll_x_d),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out(i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out(i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit31_0_tpl(),
        .out_c0_exit31_1_tpl(i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_c0_exit31_1_tpl),
        .out_c0_exit31_2_tpl(i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_c0_exit31_2_tpl),
        .out_c0_exit31_3_tpl(i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_c0_exit31_3_tpl),
        .out_c0_exit31_4_tpl(i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_c0_exit31_4_tpl),
        .out_c0_exit31_5_tpl(i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_c0_exit31_5_tpl),
        .out_c0_exit31_6_tpl(i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_c0_exit31_6_tpl),
        .out_c0_exit31_7_tpl(i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_c0_exit31_7_tpl),
        .out_c0_exit31_8_tpl(i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_c0_exit31_8_tpl),
        .out_c0_exit31_9_tpl(i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_c0_exit31_9_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out = i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out = i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,20)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body4_mmuls_c0_enter255_mmul1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,30)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,33)
    assign out_lm_mmul_avm_address = i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_address;
    assign out_lm_mmul_avm_enable = i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_enable;
    assign out_lm_mmul_avm_read = i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_read;
    assign out_lm_mmul_avm_write = i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_write;
    assign out_lm_mmul_avm_writedata = i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_writedata;
    assign out_lm_mmul_avm_byteenable = i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_byteenable;
    assign out_lm_mmul_avm_burstcount = i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_burstcount;

    // bubble_join_i_sfc_s_c1_in_for_body4_mmuls_c1_enter_mmul6_aunroll_x(BITJOIN,67)
    assign bubble_join_i_sfc_s_c1_in_for_body4_mmuls_c1_enter_mmul6_aunroll_x_q = i_sfc_s_c1_in_for_body4_mmuls_c1_enter_mmul6_aunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_for_body4_mmuls_c1_enter_mmul6_aunroll_x(BITSELECT,68)
    assign bubble_select_i_sfc_s_c1_in_for_body4_mmuls_c1_enter_mmul6_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_body4_mmuls_c1_enter_mmul6_aunroll_x_q[31:0]);

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,78)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,79)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[33:0]);

    // sel_for_coalesced_delay_1(BITSELECT,50)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[31:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[32:32]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[33:33]);

    // dupName_0_sync_out_x(GPOUT,34)@224
    assign out_c0_exe233 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe7 = sel_for_coalesced_delay_1_c;
    assign out_c0_exe8 = sel_for_coalesced_delay_1_d;
    assign out_c1_exe1 = bubble_select_i_sfc_s_c1_in_for_body4_mmuls_c1_enter_mmul6_aunroll_x_b;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,35)
    assign out_lm9_mmul_avm_address = i_llvm_fpga_mem_lm9_mmul4_out_lm9_mmul_avm_address;
    assign out_lm9_mmul_avm_enable = i_llvm_fpga_mem_lm9_mmul4_out_lm9_mmul_avm_enable;
    assign out_lm9_mmul_avm_read = i_llvm_fpga_mem_lm9_mmul4_out_lm9_mmul_avm_read;
    assign out_lm9_mmul_avm_write = i_llvm_fpga_mem_lm9_mmul4_out_lm9_mmul_avm_write;
    assign out_lm9_mmul_avm_writedata = i_llvm_fpga_mem_lm9_mmul4_out_lm9_mmul_avm_writedata;
    assign out_lm9_mmul_avm_byteenable = i_llvm_fpga_mem_lm9_mmul4_out_lm9_mmul_avm_byteenable;
    assign out_lm9_mmul_avm_burstcount = i_llvm_fpga_mem_lm9_mmul4_out_lm9_mmul_avm_burstcount;

endmodule
