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

// SystemVerilog created from mmul_bb_B2_stall_region
// SystemVerilog created on Wed May 10 11:34:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_bb_B2_stall_region (
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
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [32:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_j_m,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire [511:0] in_lm5_mmul_avm_readdata,
    input wire [0:0] in_lm5_mmul_avm_writeack,
    input wire [0:0] in_lm5_mmul_avm_waitrequest,
    input wire [0:0] in_lm5_mmul_avm_readdatavalid,
    output wire [30:0] out_lm_mmul_avm_address,
    output wire [0:0] out_lm_mmul_avm_enable,
    output wire [0:0] out_lm_mmul_avm_read,
    output wire [0:0] out_lm_mmul_avm_write,
    output wire [511:0] out_lm_mmul_avm_writedata,
    output wire [63:0] out_lm_mmul_avm_byteenable,
    output wire [4:0] out_lm_mmul_avm_burstcount,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_valid_out,
    output wire [30:0] out_lm5_mmul_avm_address,
    output wire [0:0] out_lm5_mmul_avm_enable,
    output wire [0:0] out_lm5_mmul_avm_read,
    output wire [0:0] out_lm5_mmul_avm_write,
    output wire [511:0] out_lm5_mmul_avm_writedata,
    output wire [63:0] out_lm5_mmul_avm_byteenable,
    output wire [4:0] out_lm5_mmul_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [30:0] i_llvm_fpga_mem_lm5_mmul4_out_lm5_mmul_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm5_mmul4_out_lm5_mmul_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm5_mmul4_out_lm5_mmul_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm5_mmul4_out_lm5_mmul_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm5_mmul4_out_lm5_mmul_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm5_mmul4_out_lm5_mmul_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm5_mmul4_out_lm5_mmul_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm5_mmul4_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm5_mmul4_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm5_mmul4_out_o_valid;
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
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_2_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_4_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_8_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body_mmuls_c1_enter_mmul6_aunroll_x_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_sfc_s_c1_in_for_body_mmuls_c1_enter_mmul6_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body_mmuls_c1_enter_mmul6_aunroll_x_out_o_valid;
    wire [0:0] mmul_B2_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] mmul_B2_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] mmul_B2_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [3:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_valid_in;
    wire redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_stall_in;
    wire redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_data_in;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_valid_out;
    wire redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_stall_out;
    wire redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_data_out;
    wire [0:0] redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_valid_in;
    wire redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_stall_in;
    wire redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_data_in;
    wire [0:0] redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_valid_out;
    wire redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_stall_out;
    wire redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [3:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [3:0] coalesced_delay_0_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm5_mmul4_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm5_mmul4_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm_mmul3_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm_mmul3_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [133:0] bubble_join_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_e;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_i;
    wire [0:0] bubble_join_mmul_B2_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_mmul_B2_merge_reg_aunroll_x_b;
    wire [0:0] bubble_join_redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_q;
    wire [0:0] bubble_select_redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_b;
    wire [31:0] bubble_join_redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_q;
    wire [31:0] bubble_select_redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_b;
    wire [3:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [3:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_mmul3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_mmul3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_mmul3_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_V3;
    wire [0:0] SE_out_mmul_B2_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_mmul_B2_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_mmul_B2_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_wireValid;
    wire [0:0] SE_out_redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_and0;
    wire [0:0] SE_out_redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_backStall;
    wire [0:0] SE_out_redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_mmul3_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_mmul3_data_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_mmul3_data_V0;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_stall_in_bitsignaltemp;
    wire [31:0] bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_data_in;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_stall_out_bitsignaltemp;
    wire [31:0] bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_data_out;


    // bubble_join_stall_entry(BITJOIN,61)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,62)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,85)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = mmul_B2_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // mmul_B2_merge_reg_aunroll_x(BLACKBOX,41)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    mmul_B2_merge_reg themmul_B2_merge_reg_aunroll_x (
        .in_stall_in(SE_out_mmul_B2_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(mmul_B2_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(mmul_B2_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(mmul_B2_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_mmul_B2_merge_reg_aunroll_x(BITJOIN,69)
    assign bubble_join_mmul_B2_merge_reg_aunroll_x_q = mmul_B2_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_mmul_B2_merge_reg_aunroll_x(BITSELECT,70)
    assign bubble_select_mmul_B2_merge_reg_aunroll_x_b = $unsigned(bubble_join_mmul_B2_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_mmul_B2_merge_reg_aunroll_x(STALLENABLE,92)
    // Valid signal propagation
    assign SE_out_mmul_B2_merge_reg_aunroll_x_V0 = SE_out_mmul_B2_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_mmul_B2_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_o_stall | ~ (SE_out_mmul_B2_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_mmul_B2_merge_reg_aunroll_x_wireValid = mmul_B2_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x(BITJOIN,65)
    assign bubble_join_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_q = {i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_8_tpl, i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl, i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_6_tpl, i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_5_tpl, i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_4_tpl, i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_3_tpl, i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_2_tpl, i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x(BITSELECT,66)
    assign bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_q[65:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_q[66:66]);
    assign bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_q[130:67]);
    assign bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_q[131:131]);
    assign bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_q[132:132]);
    assign bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_q[133:133]);

    // join_for_coalesced_delay_0(BITJOIN,49)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_b};

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,79)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,80)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[3:0]);

    // sel_for_coalesced_delay_0(BITSELECT,50)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[2:2]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[3:3]);

    // bubble_join_i_llvm_fpga_mem_lm5_mmul4(BITJOIN,55)
    assign bubble_join_i_llvm_fpga_mem_lm5_mmul4_q = i_llvm_fpga_mem_lm5_mmul4_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm5_mmul4(BITSELECT,56)
    assign bubble_select_i_llvm_fpga_mem_lm5_mmul4_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm5_mmul4_q[31:0]);

    // bubble_join_redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo(BITJOIN,76)
    assign bubble_join_redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_q = redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_data_out;

    // bubble_select_redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo(BITSELECT,77)
    assign bubble_select_redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_b = $unsigned(bubble_join_redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_q[31:0]);

    // SE_out_redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo(STALLENABLE,96)
    // Valid signal propagation
    assign SE_out_redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_V0 = SE_out_redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_backStall = in_stall_in | ~ (SE_out_redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_and0 = redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_valid_out;
    assign SE_out_redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_wireValid = i_sfc_s_c1_in_for_body_mmuls_c1_enter_mmul6_aunroll_x_out_o_valid & SE_out_redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_and0;

    // i_sfc_s_c1_in_for_body_mmuls_c1_enter_mmul6_aunroll_x(BLACKBOX,40)@169
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@177
    // out out_c1_exit_0_tpl@177
    mmul_i_sfc_s_c1_in_for_body_s_c1_enter_mmul6 thei_sfc_s_c1_in_for_body_mmuls_c1_enter_mmul6_aunroll_x (
        .in_i_stall(SE_out_redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .in_c1_eni6_0_tpl(GND_q),
        .in_c1_eni6_1_tpl(bubble_select_redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_b),
        .in_c1_eni6_2_tpl(bubble_select_i_llvm_fpga_mem_lm5_mmul4_b),
        .in_c1_eni6_3_tpl(sel_for_coalesced_delay_0_e),
        .in_c1_eni6_4_tpl(sel_for_coalesced_delay_0_c),
        .in_c1_eni6_5_tpl(sel_for_coalesced_delay_0_d),
        .in_c1_eni6_6_tpl(sel_for_coalesced_delay_0_b),
        .out_intel_reserved_ffwd_3_0(i_sfc_s_c1_in_for_body_mmuls_c1_enter_mmul6_aunroll_x_out_intel_reserved_ffwd_3_0),
        .out_o_stall(i_sfc_s_c1_in_for_body_mmuls_c1_enter_mmul6_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body_mmuls_c1_enter_mmul6_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm_mmul3(BITJOIN,58)
    assign bubble_join_i_llvm_fpga_mem_lm_mmul3_q = i_llvm_fpga_mem_lm_mmul3_out_o_readdata;

    // SE_out_i_llvm_fpga_mem_lm_mmul3(STALLENABLE,84)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm_mmul3_V0 = SE_out_i_llvm_fpga_mem_lm_mmul3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm_mmul3_backStall = bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_stall_out | ~ (SE_out_i_llvm_fpga_mem_lm_mmul3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm_mmul3_wireValid = i_llvm_fpga_mem_lm_mmul3_out_o_valid;

    // bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg(STALLFIFO,139)
    assign bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_valid_in = SE_out_i_llvm_fpga_mem_lm_mmul3_V0;
    assign bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm_mmul3_data_backStall;
    assign bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_data_in = bubble_join_i_llvm_fpga_mem_lm_mmul3_q;
    assign bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(32),
        .IMPL("zl_reg")
    ) thebubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_llvm_fpga_mem_lm_mmul3_q),
        .valid_out(bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_select_i_llvm_fpga_mem_lm_mmul3(BITSELECT,59)
    assign bubble_select_i_llvm_fpga_mem_lm_mmul3_b = $unsigned(bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_data_out[31:0]);

    // SE_out_bubble_out_i_llvm_fpga_mem_lm_mmul3_data(STALLENABLE,106)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_mmul3_data_V0 = SE_out_bubble_out_i_llvm_fpga_mem_lm_mmul3_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_mmul3_data_backStall = redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_stall_out | ~ (SE_out_bubble_out_i_llvm_fpga_mem_lm_mmul3_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_mmul3_data_wireValid = bubble_out_i_llvm_fpga_mem_lm_mmul3_data_reg_valid_out;

    // redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo(STALLFIFO,52)
    assign redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_valid_in = SE_out_bubble_out_i_llvm_fpga_mem_lm_mmul3_data_V0;
    assign redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_data_in = bubble_select_i_llvm_fpga_mem_lm_mmul3_b;
    assign redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_valid_in_bitsignaltemp = redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_valid_in[0];
    assign redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_stall_in_bitsignaltemp = redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_stall_in[0];
    assign redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_valid_out[0] = redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_valid_out_bitsignaltemp;
    assign redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_stall_out[0] = redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(158),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo (
        .valid_in(redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_valid_in_bitsignaltemp),
        .stall_in(redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_mem_lm_mmul3_b),
        .valid_out(redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_valid_out_bitsignaltemp),
        .stall_out(redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_stall_out_bitsignaltemp),
        .data_out(redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,100)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_sfc_s_c1_in_for_body_mmuls_c1_enter_mmul6_aunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = redist5_i_llvm_fpga_mem_lm_mmul3_out_o_readdata_157_fifo_valid_out & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_lm5_mmul4_out_o_valid & SE_out_coalesced_delay_0_fifo_and1;

    // coalesced_delay_0_fifo(STALLFIFO,53)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_V3;
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
        .DATA_WIDTH(4),
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

    // redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo(STALLFIFO,51)
    assign redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_V2;
    assign redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_stall_in = SE_out_redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_backStall;
    assign redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_data_in = bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_h;
    assign redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_valid_in_bitsignaltemp = redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_valid_in[0];
    assign redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_stall_in_bitsignaltemp = redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_stall_in[0];
    assign redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_valid_out[0] = redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_valid_out_bitsignaltemp;
    assign redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_stall_out[0] = redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(169),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo (
        .valid_in(redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_valid_in_bitsignaltemp),
        .stall_in(redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_h),
        .valid_out(redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_valid_out_bitsignaltemp),
        .stall_out(redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_stall_out_bitsignaltemp),
        .data_out(redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm_mmul3(BLACKBOX,8)@9
    // in in_i_stall@20000000
    // out out_lm_mmul_avm_address@20000000
    // out out_lm_mmul_avm_burstcount@20000000
    // out out_lm_mmul_avm_byteenable@20000000
    // out out_lm_mmul_avm_enable@20000000
    // out out_lm_mmul_avm_read@20000000
    // out out_lm_mmul_avm_write@20000000
    // out out_lm_mmul_avm_writedata@20000000
    // out out_o_readdata@12
    // out out_o_stall@20000000
    // out out_o_valid@12
    mmul_i_llvm_fpga_mem_lm_0 thei_llvm_fpga_mem_lm_mmul3 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_d),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_e),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm_mmul3_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_V1),
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

    // i_llvm_fpga_mem_lm5_mmul4(BLACKBOX,7)@9
    // in in_i_stall@20000000
    // out out_lm5_mmul_avm_address@20000000
    // out out_lm5_mmul_avm_burstcount@20000000
    // out out_lm5_mmul_avm_byteenable@20000000
    // out out_lm5_mmul_avm_enable@20000000
    // out out_lm5_mmul_avm_read@20000000
    // out out_lm5_mmul_avm_write@20000000
    // out out_lm5_mmul_avm_writedata@20000000
    // out out_o_readdata@169
    // out out_o_stall@20000000
    // out out_o_valid@169
    mmul_i_llvm_fpga_mem_lm5_0 thei_llvm_fpga_mem_lm5_mmul4 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_f),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_e),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_V0),
        .in_lm5_mmul_avm_readdata(in_lm5_mmul_avm_readdata),
        .in_lm5_mmul_avm_readdatavalid(in_lm5_mmul_avm_readdatavalid),
        .in_lm5_mmul_avm_waitrequest(in_lm5_mmul_avm_waitrequest),
        .in_lm5_mmul_avm_writeack(in_lm5_mmul_avm_writeack),
        .out_lm5_mmul_avm_address(i_llvm_fpga_mem_lm5_mmul4_out_lm5_mmul_avm_address),
        .out_lm5_mmul_avm_burstcount(i_llvm_fpga_mem_lm5_mmul4_out_lm5_mmul_avm_burstcount),
        .out_lm5_mmul_avm_byteenable(i_llvm_fpga_mem_lm5_mmul4_out_lm5_mmul_avm_byteenable),
        .out_lm5_mmul_avm_enable(i_llvm_fpga_mem_lm5_mmul4_out_lm5_mmul_avm_enable),
        .out_lm5_mmul_avm_read(i_llvm_fpga_mem_lm5_mmul4_out_lm5_mmul_avm_read),
        .out_lm5_mmul_avm_write(i_llvm_fpga_mem_lm5_mmul4_out_lm5_mmul_avm_write),
        .out_lm5_mmul_avm_writedata(i_llvm_fpga_mem_lm5_mmul4_out_lm5_mmul_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm5_mmul4_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm5_mmul4_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm5_mmul4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x(STALLENABLE,88)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_lm5_mmul4_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_consumed1 = (~ (i_llvm_fpga_mem_lm_mmul3_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_consumed2 = (~ (redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_consumed3 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_or2);
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x(BLACKBOX,39)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit14_0_tpl@9
    // out out_c0_exit14_1_tpl@9
    // out out_c0_exit14_2_tpl@9
    // out out_c0_exit14_3_tpl@9
    // out out_c0_exit14_4_tpl@9
    // out out_c0_exit14_5_tpl@9
    // out out_c0_exit14_6_tpl@9
    // out out_c0_exit14_7_tpl@9
    // out out_c0_exit14_8_tpl@9
    mmul_i_sfc_s_c0_in_for_body_s_c0_enter131_mmul1 thei_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x (
        .in_A(in_A),
        .in_B(in_B),
        .in_N(in_N),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_backStall),
        .in_i_valid(SE_out_mmul_B2_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_j_m(in_j_m),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_mmul_B2_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out(i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out(i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit14_0_tpl(),
        .out_c0_exit14_1_tpl(i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_1_tpl),
        .out_c0_exit14_2_tpl(i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_2_tpl),
        .out_c0_exit14_3_tpl(i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_3_tpl),
        .out_c0_exit14_4_tpl(i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_4_tpl),
        .out_c0_exit14_5_tpl(i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_5_tpl),
        .out_c0_exit14_6_tpl(i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_6_tpl),
        .out_c0_exit14_7_tpl(i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl),
        .out_c0_exit14_8_tpl(i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_8_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out = i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out = i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,20)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,29)
    assign out_intel_reserved_ffwd_3_0 = i_sfc_s_c1_in_for_body_mmuls_c1_enter_mmul6_aunroll_x_out_intel_reserved_ffwd_3_0;

    // sync_out(GPOUT,33)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,36)
    assign out_lm_mmul_avm_address = i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_address;
    assign out_lm_mmul_avm_enable = i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_enable;
    assign out_lm_mmul_avm_read = i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_read;
    assign out_lm_mmul_avm_write = i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_write;
    assign out_lm_mmul_avm_writedata = i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_writedata;
    assign out_lm_mmul_avm_byteenable = i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_byteenable;
    assign out_lm_mmul_avm_burstcount = i_llvm_fpga_mem_lm_mmul3_out_lm_mmul_avm_burstcount;

    // bubble_join_redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo(BITJOIN,73)
    assign bubble_join_redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_q = redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_data_out;

    // bubble_select_redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo(BITSELECT,74)
    assign bubble_select_redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_b = $unsigned(bubble_join_redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,37)@177
    assign out_c0_exe7 = bubble_select_redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_b;
    assign out_valid_out = SE_out_redist3_i_sfc_s_c0_in_for_body_mmuls_c0_enter131_mmul1_aunroll_x_out_c0_exit14_7_tpl_168_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,38)
    assign out_lm5_mmul_avm_address = i_llvm_fpga_mem_lm5_mmul4_out_lm5_mmul_avm_address;
    assign out_lm5_mmul_avm_enable = i_llvm_fpga_mem_lm5_mmul4_out_lm5_mmul_avm_enable;
    assign out_lm5_mmul_avm_read = i_llvm_fpga_mem_lm5_mmul4_out_lm5_mmul_avm_read;
    assign out_lm5_mmul_avm_write = i_llvm_fpga_mem_lm5_mmul4_out_lm5_mmul_avm_write;
    assign out_lm5_mmul_avm_writedata = i_llvm_fpga_mem_lm5_mmul4_out_lm5_mmul_avm_writedata;
    assign out_lm5_mmul_avm_byteenable = i_llvm_fpga_mem_lm5_mmul4_out_lm5_mmul_avm_byteenable;
    assign out_lm5_mmul_avm_burstcount = i_llvm_fpga_mem_lm5_mmul4_out_lm5_mmul_avm_burstcount;

endmodule
