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

// SystemVerilog created from double_add_2_bb_B4_stall_region
// SystemVerilog created on Tue May 23 13:58:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_2_bb_B4_stall_region (
    input wire [511:0] in_lm_double_add_2_avm_readdata,
    input wire [0:0] in_lm_double_add_2_avm_writeack,
    input wire [0:0] in_lm_double_add_2_avm_waitrequest,
    input wire [0:0] in_lm_double_add_2_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_arr,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_10_0,
    input wire [63:0] in_intel_reserved_ffwd_11_0,
    input wire [63:0] in_intel_reserved_ffwd_12_0,
    input wire [63:0] in_intel_reserved_ffwd_13_0,
    input wire [32:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_intel_reserved_ffwd_5_0,
    input wire [63:0] in_intel_reserved_ffwd_6_0,
    input wire [63:0] in_intel_reserved_ffwd_7_0,
    input wire [63:0] in_intel_reserved_ffwd_8_0,
    input wire [63:0] in_intel_reserved_ffwd_9_0,
    output wire [63:0] out_intel_reserved_ffwd_14_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    output wire [30:0] out_lm_double_add_2_avm_address,
    output wire [0:0] out_lm_double_add_2_avm_enable,
    output wire [0:0] out_lm_double_add_2_avm_read,
    output wire [0:0] out_lm_double_add_2_avm_write,
    output wire [511:0] out_lm_double_add_2_avm_writedata,
    output wire [63:0] out_lm_double_add_2_avm_byteenable,
    output wire [4:0] out_lm_double_add_2_avm_burstcount,
    output wire [63:0] out_intel_reserved_ffwd_15_0,
    output wire [0:0] out_c1_exe5,
    output wire [0:0] out_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_16_0,
    output wire [63:0] out_intel_reserved_ffwd_17_0,
    output wire [63:0] out_intel_reserved_ffwd_18_0,
    output wire [63:0] out_intel_reserved_ffwd_19_0,
    output wire [63:0] out_intel_reserved_ffwd_20_0,
    output wire [63:0] out_intel_reserved_ffwd_21_0,
    output wire [63:0] out_intel_reserved_ffwd_22_0,
    output wire [63:0] out_intel_reserved_ffwd_23_0,
    output wire [63:0] out_intel_reserved_ffwd_24_0,
    output wire [63:0] out_intel_reserved_ffwd_25_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [30:0] i_llvm_fpga_mem_lm_double_add_23_out_lm_double_add_2_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm_double_add_23_out_lm_double_add_2_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm_double_add_23_out_lm_double_add_2_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm_double_add_23_out_lm_double_add_2_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm_double_add_23_out_lm_double_add_2_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm_double_add_23_out_lm_double_add_2_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm_double_add_23_out_lm_double_add_2_avm_writedata;
    wire [63:0] i_llvm_fpga_mem_lm_double_add_23_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm_double_add_23_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm_double_add_23_out_o_valid;
    wire [0:0] double_add_2_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] double_add_2_B4_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] double_add_2_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_14_0;
    wire [63:0] i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_15_0;
    wire [63:0] i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_16_0;
    wire [63:0] i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_17_0;
    wire [63:0] i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_18_0;
    wire [63:0] i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_19_0;
    wire [63:0] i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_20_0;
    wire [63:0] i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_21_0;
    wire [63:0] i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_22_0;
    wire [63:0] i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_23_0;
    wire [63:0] i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_24_0;
    wire [63:0] i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_25_0;
    wire [0:0] i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_stall_out;
    wire [0:0] i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_valid_out;
    wire [0:0] i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_1_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_2_tpl;
    wire [63:0] i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_3_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_4_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_6_tpl;
    wire [2:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_valid_in;
    wire redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_stall_in;
    wire redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_data_in;
    wire [0:0] redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_valid_out;
    wire redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_stall_out;
    wire redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_data_out;
    reg [2:0] coalesced_delay_0_0_q;
    reg [2:0] coalesced_delay_0_1_q;
    reg [2:0] coalesced_delay_0_2_q;
    wire [63:0] bubble_join_i_llvm_fpga_mem_lm_double_add_23_q;
    wire [63:0] bubble_select_i_llvm_fpga_mem_lm_double_add_23_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_double_add_2_B4_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_double_add_2_B4_merge_reg_aunroll_x_b;
    wire [68:0] bubble_join_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_g;
    wire [0:0] bubble_join_redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_q;
    wire [0:0] bubble_select_redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_double_add_23_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_double_add_23_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_double_add_23_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_double_add_2_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_double_add_2_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_double_add_2_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_V2;
    wire [0:0] SE_out_redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_wireValid;
    wire [0:0] SE_out_redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_and0;
    wire [0:0] SE_out_redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_backStall;
    wire [0:0] SE_out_redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    reg [0:0] SE_coalesced_delay_0_1_R_v_0;
    wire [0:0] SE_coalesced_delay_0_1_v_s_0;
    wire [0:0] SE_coalesced_delay_0_1_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_1_backEN;
    wire [0:0] SE_coalesced_delay_0_1_backStall;
    wire [0:0] SE_coalesced_delay_0_1_V0;
    reg [0:0] SE_coalesced_delay_0_2_R_v_0;
    wire [0:0] SE_coalesced_delay_0_2_v_s_0;
    wire [0:0] SE_coalesced_delay_0_2_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_2_backEN;
    wire [0:0] SE_coalesced_delay_0_2_backStall;
    wire [0:0] SE_coalesced_delay_0_2_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_V0;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_stall_in_bitsignaltemp;
    wire [63:0] bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_data_in;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_stall_out_bitsignaltemp;
    wire [63:0] bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_data_out;


    // bubble_join_stall_entry(BITJOIN,71)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,72)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,87)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = double_add_2_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // double_add_2_B4_merge_reg_aunroll_x(BLACKBOX,40)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    double_add_2_B4_merge_reg thedouble_add_2_B4_merge_reg_aunroll_x (
        .in_stall_in(SE_out_double_add_2_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(double_add_2_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(double_add_2_B4_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(double_add_2_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_double_add_2_B4_merge_reg_aunroll_x(BITJOIN,75)
    assign bubble_join_double_add_2_B4_merge_reg_aunroll_x_q = double_add_2_B4_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_double_add_2_B4_merge_reg_aunroll_x(BITSELECT,76)
    assign bubble_select_double_add_2_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_double_add_2_B4_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_double_add_2_B4_merge_reg_aunroll_x(STALLENABLE,90)
    // Valid signal propagation
    assign SE_out_double_add_2_B4_merge_reg_aunroll_x_V0 = SE_out_double_add_2_B4_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_double_add_2_B4_merge_reg_aunroll_x_backStall = i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_o_stall | ~ (SE_out_double_add_2_B4_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_double_add_2_B4_merge_reg_aunroll_x_wireValid = double_add_2_B4_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x(BITJOIN,80)
    assign bubble_join_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_q = {i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_6_tpl, i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl, i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_4_tpl, i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_3_tpl, i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_2_tpl, i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_1_tpl};

    // bubble_select_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x(BITSELECT,81)
    assign bubble_select_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_q[65:2]);
    assign bubble_select_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_q[66:66]);
    assign bubble_select_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_q[67:67]);
    assign bubble_select_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_q[68:68]);

    // bubble_join_i_llvm_fpga_mem_lm_double_add_23(BITJOIN,68)
    assign bubble_join_i_llvm_fpga_mem_lm_double_add_23_q = i_llvm_fpga_mem_lm_double_add_23_out_o_readdata;

    // SE_out_i_llvm_fpga_mem_lm_double_add_23(STALLENABLE,86)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm_double_add_23_V0 = SE_out_i_llvm_fpga_mem_lm_double_add_23_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm_double_add_23_backStall = bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_stall_out | ~ (SE_out_i_llvm_fpga_mem_lm_double_add_23_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm_double_add_23_wireValid = i_llvm_fpga_mem_lm_double_add_23_out_o_valid;

    // bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg(STALLFIFO,128)
    assign bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_valid_in = SE_out_i_llvm_fpga_mem_lm_double_add_23_V0;
    assign bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_backStall;
    assign bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_data_in = bubble_join_i_llvm_fpga_mem_lm_double_add_23_q;
    assign bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(64),
        .IMPL("zl_reg")
    ) thebubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_llvm_fpga_mem_lm_double_add_23_q),
        .valid_out(bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_select_i_llvm_fpga_mem_lm_double_add_23(BITSELECT,69)
    assign bubble_select_i_llvm_fpga_mem_lm_double_add_23_b = $unsigned(bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_data_out[63:0]);

    // SE_coalesced_delay_0_1(STALLENABLE,100)
    // Valid signal propagation
    assign SE_coalesced_delay_0_1_V0 = SE_coalesced_delay_0_1_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_1_s_tv_0 = SE_coalesced_delay_0_2_backStall & SE_coalesced_delay_0_1_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_1_backEN = ~ (SE_coalesced_delay_0_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_1_v_s_0 = SE_coalesced_delay_0_1_backEN & SE_coalesced_delay_0_0_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_1_backStall = ~ (SE_coalesced_delay_0_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_1_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_R_v_0 & SE_coalesced_delay_0_1_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_2(STALLENABLE,101)
    // Valid signal propagation
    assign SE_coalesced_delay_0_2_V0 = SE_coalesced_delay_0_2_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_2_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_backStall & SE_coalesced_delay_0_2_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_2_backEN = ~ (SE_coalesced_delay_0_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_2_v_s_0 = SE_coalesced_delay_0_2_backEN & SE_coalesced_delay_0_1_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_2_backStall = ~ (SE_coalesced_delay_0_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_2_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_R_v_0 & SE_coalesced_delay_0_2_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_i_llvm_fpga_mem_lm_double_add_23_data(STALLENABLE,103)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_V0 = SE_out_bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_backStall = i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_o_stall | ~ (SE_out_bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_and0 = bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_wireValid = SE_coalesced_delay_0_2_V0 & SE_out_bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_and0;

    // join_for_coalesced_delay_0(BITJOIN,61)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_g, bubble_select_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_c, bubble_select_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_b};

    // coalesced_delay_0_0(REG,64)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(3'b000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,65)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(3'b000);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(coalesced_delay_0_0_q);
        end
    end

    // coalesced_delay_0_2(REG,66)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_2_q <= $unsigned(3'b000);
        end
        else if (SE_coalesced_delay_0_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(coalesced_delay_0_1_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,62)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_2_q[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_2_q[1:1]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_2_q[2:2]);

    // i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x(BLACKBOX,54)@8
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_14_0@20000000
    // out out_intel_reserved_ffwd_15_0@20000000
    // out out_intel_reserved_ffwd_16_0@20000000
    // out out_intel_reserved_ffwd_17_0@20000000
    // out out_intel_reserved_ffwd_18_0@20000000
    // out out_intel_reserved_ffwd_19_0@20000000
    // out out_intel_reserved_ffwd_20_0@20000000
    // out out_intel_reserved_ffwd_21_0@20000000
    // out out_intel_reserved_ffwd_22_0@20000000
    // out out_intel_reserved_ffwd_23_0@20000000
    // out out_intel_reserved_ffwd_24_0@20000000
    // out out_intel_reserved_ffwd_25_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@22
    // out out_c0_exit110_0_tpl@22
    double_add_2_i_sfc_s_c0_in_for_body5_s_c0_enter108_double_add_25 thei_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x (
        .in_c1_exe2(sel_for_coalesced_delay_0_c),
        .in_c1_exe6(sel_for_coalesced_delay_0_d),
        .in_i_stall(SE_out_redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_backStall),
        .in_i_valid(SE_out_bubble_out_i_llvm_fpga_mem_lm_double_add_23_data_V0),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_c0_eni4_0_tpl(GND_q),
        .in_c0_eni4_1_tpl(sel_for_coalesced_delay_0_d),
        .in_c0_eni4_2_tpl(sel_for_coalesced_delay_0_c),
        .in_c0_eni4_3_tpl(bubble_select_i_llvm_fpga_mem_lm_double_add_23_b),
        .in_c0_eni4_4_tpl(sel_for_coalesced_delay_0_b),
        .out_intel_reserved_ffwd_14_0(i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_20_0(i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_22_0(i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_24_0),
        .out_intel_reserved_ffwd_25_0(i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_25_0),
        .out_o_stall(i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_o_valid),
        .out_c0_exit110_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo(STALLENABLE,98)
    // Valid signal propagation
    assign SE_out_redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_V0 = SE_out_redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_backStall = in_stall_in | ~ (SE_out_redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_and0 = redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_valid_out;
    assign SE_out_redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_wireValid = i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_o_valid & SE_out_redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_and0;

    // redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo(STALLFIFO,63)
    assign redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_valid_in = SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_V2;
    assign redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_stall_in = SE_out_redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_backStall;
    assign redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_data_in = bubble_select_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_f;
    assign redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_valid_in_bitsignaltemp = redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_valid_in[0];
    assign redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_stall_in_bitsignaltemp = redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_stall_in[0];
    assign redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_valid_out[0] = redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_valid_out_bitsignaltemp;
    assign redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_stall_out[0] = redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(18),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo (
        .valid_in(redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_valid_in_bitsignaltemp),
        .stall_in(redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_f),
        .valid_out(redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_valid_out_bitsignaltemp),
        .stall_out(redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_stall_out_bitsignaltemp),
        .data_out(redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_coalesced_delay_0_0(STALLENABLE,99)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_coalesced_delay_0_1_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_V1;
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

    // i_llvm_fpga_mem_lm_double_add_23(BLACKBOX,7)@5
    // in in_i_stall@20000000
    // out out_lm_double_add_2_avm_address@20000000
    // out out_lm_double_add_2_avm_burstcount@20000000
    // out out_lm_double_add_2_avm_byteenable@20000000
    // out out_lm_double_add_2_avm_enable@20000000
    // out out_lm_double_add_2_avm_read@20000000
    // out out_lm_double_add_2_avm_write@20000000
    // out out_lm_double_add_2_avm_writedata@20000000
    // out out_o_readdata@8
    // out out_o_stall@20000000
    // out out_o_valid@8
    double_add_2_i_llvm_fpga_mem_lm_0 thei_llvm_fpga_mem_lm_double_add_23 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_d),
        .in_i_predicate(bubble_select_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_e),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm_double_add_23_backStall),
        .in_i_valid(SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_V0),
        .in_lm_double_add_2_avm_readdata(in_lm_double_add_2_avm_readdata),
        .in_lm_double_add_2_avm_readdatavalid(in_lm_double_add_2_avm_readdatavalid),
        .in_lm_double_add_2_avm_waitrequest(in_lm_double_add_2_avm_waitrequest),
        .in_lm_double_add_2_avm_writeack(in_lm_double_add_2_avm_writeack),
        .out_lm_double_add_2_avm_address(i_llvm_fpga_mem_lm_double_add_23_out_lm_double_add_2_avm_address),
        .out_lm_double_add_2_avm_burstcount(i_llvm_fpga_mem_lm_double_add_23_out_lm_double_add_2_avm_burstcount),
        .out_lm_double_add_2_avm_byteenable(i_llvm_fpga_mem_lm_double_add_23_out_lm_double_add_2_avm_byteenable),
        .out_lm_double_add_2_avm_enable(i_llvm_fpga_mem_lm_double_add_23_out_lm_double_add_2_avm_enable),
        .out_lm_double_add_2_avm_read(i_llvm_fpga_mem_lm_double_add_23_out_lm_double_add_2_avm_read),
        .out_lm_double_add_2_avm_write(i_llvm_fpga_mem_lm_double_add_23_out_lm_double_add_2_avm_write),
        .out_lm_double_add_2_avm_writedata(i_llvm_fpga_mem_lm_double_add_23_out_lm_double_add_2_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm_double_add_23_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm_double_add_23_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm_double_add_23_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x(STALLENABLE,94)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_lm_double_add_23_out_o_stall) & SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_consumed1 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_consumed2 = (~ (redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_stall_out) & SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_StallValid = SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_backStall & SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_toReg0 = SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_toReg1 = SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_toReg2 = SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_or0 = SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_or1 = SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_consumed1 & SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_or0;
    assign SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_consumed2 & SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_or1);
    assign SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_backStall = SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_V1 = SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_V2 = SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_wireValid = i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_o_valid;

    // i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x(BLACKBOX,55)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    // out out_c1_exit_0_tpl@5
    // out out_c1_exit_1_tpl@5
    // out out_c1_exit_2_tpl@5
    // out out_c1_exit_3_tpl@5
    // out out_c1_exit_4_tpl@5
    // out out_c1_exit_5_tpl@5
    // out out_c1_exit_6_tpl@5
    double_add_2_i_sfc_s_c1_in_for_body5_s_c1_enter1_double_add_21 thei_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x (
        .in_arr(in_arr),
        .in_i_stall(SE_out_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_backStall),
        .in_i_valid(SE_out_double_add_2_B4_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c1_eni1_0_tpl(GND_q),
        .in_c1_eni1_1_tpl(bubble_select_double_add_2_B4_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_stall_out(i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_valid_out(i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_valid_out),
        .out_o_stall(i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_pipeline_valid_out),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_1_tpl),
        .out_c1_exit_2_tpl(i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_2_tpl),
        .out_c1_exit_3_tpl(i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_3_tpl),
        .out_c1_exit_4_tpl(i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_4_tpl),
        .out_c1_exit_5_tpl(i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl),
        .out_c1_exit_6_tpl(i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_6_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_valid_out = i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_stall_out = i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,17)
    assign out_pipeline_valid_out = i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,34)
    assign out_intel_reserved_ffwd_14_0 = i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_14_0;

    // sync_out(GPOUT,38)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,41)
    assign out_lm_double_add_2_avm_address = i_llvm_fpga_mem_lm_double_add_23_out_lm_double_add_2_avm_address;
    assign out_lm_double_add_2_avm_enable = i_llvm_fpga_mem_lm_double_add_23_out_lm_double_add_2_avm_enable;
    assign out_lm_double_add_2_avm_read = i_llvm_fpga_mem_lm_double_add_23_out_lm_double_add_2_avm_read;
    assign out_lm_double_add_2_avm_write = i_llvm_fpga_mem_lm_double_add_23_out_lm_double_add_2_avm_write;
    assign out_lm_double_add_2_avm_writedata = i_llvm_fpga_mem_lm_double_add_23_out_lm_double_add_2_avm_writedata;
    assign out_lm_double_add_2_avm_byteenable = i_llvm_fpga_mem_lm_double_add_23_out_lm_double_add_2_avm_byteenable;
    assign out_lm_double_add_2_avm_burstcount = i_llvm_fpga_mem_lm_double_add_23_out_lm_double_add_2_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,42)
    assign out_intel_reserved_ffwd_15_0 = i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_15_0;

    // bubble_join_redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo(BITJOIN,83)
    assign bubble_join_redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_q = redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_data_out;

    // bubble_select_redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo(BITSELECT,84)
    assign bubble_select_redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_b = $unsigned(bubble_join_redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,43)@22
    assign out_c1_exe5 = bubble_select_redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_b;
    assign out_valid_out = SE_out_redist2_i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter1_double_add_21_aunroll_x_out_c1_exit_5_tpl_17_fifo_V0;

    // dupName_1_regfree_osync_x(GPOUT,44)
    assign out_intel_reserved_ffwd_16_0 = i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_16_0;

    // dupName_2_regfree_osync_x(GPOUT,45)
    assign out_intel_reserved_ffwd_17_0 = i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_17_0;

    // dupName_3_regfree_osync_x(GPOUT,46)
    assign out_intel_reserved_ffwd_18_0 = i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_18_0;

    // dupName_4_regfree_osync_x(GPOUT,47)
    assign out_intel_reserved_ffwd_19_0 = i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_19_0;

    // dupName_5_regfree_osync_x(GPOUT,48)
    assign out_intel_reserved_ffwd_20_0 = i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_20_0;

    // dupName_6_regfree_osync_x(GPOUT,49)
    assign out_intel_reserved_ffwd_21_0 = i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_21_0;

    // dupName_7_regfree_osync_x(GPOUT,50)
    assign out_intel_reserved_ffwd_22_0 = i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_22_0;

    // dupName_8_regfree_osync_x(GPOUT,51)
    assign out_intel_reserved_ffwd_23_0 = i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_23_0;

    // dupName_9_regfree_osync_x(GPOUT,52)
    assign out_intel_reserved_ffwd_24_0 = i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_24_0;

    // dupName_10_regfree_osync_x(GPOUT,53)
    assign out_intel_reserved_ffwd_25_0 = i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter108_double_add_25_aunroll_x_out_intel_reserved_ffwd_25_0;

endmodule
