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
// SystemVerilog created on Tue May 23 14:04:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_2_bb_B4_stall_region (
    input wire [511:0] in_lm7_double_add_2_avm_readdata,
    input wire [0:0] in_lm7_double_add_2_avm_writeack,
    input wire [0:0] in_lm7_double_add_2_avm_waitrequest,
    input wire [0:0] in_lm7_double_add_2_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_double_add_22_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_double_add_22_exiting_stall_out,
    input wire [0:0] in_feedback_in_17,
    output wire [0:0] out_feedback_stall_out_17,
    input wire [0:0] in_feedback_valid_in_17,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_arr,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_unmaskedload1_double_add_2_avm_readdata,
    input wire [0:0] in_unmaskedload1_double_add_2_avm_writeack,
    input wire [0:0] in_unmaskedload1_double_add_2_avm_waitrequest,
    input wire [0:0] in_unmaskedload1_double_add_2_avm_readdatavalid,
    output wire [30:0] out_lm7_double_add_2_avm_address,
    output wire [0:0] out_lm7_double_add_2_avm_enable,
    output wire [0:0] out_lm7_double_add_2_avm_read,
    output wire [0:0] out_lm7_double_add_2_avm_write,
    output wire [511:0] out_lm7_double_add_2_avm_writedata,
    output wire [63:0] out_lm7_double_add_2_avm_byteenable,
    output wire [4:0] out_lm7_double_add_2_avm_burstcount,
    output wire [0:0] out_c0_exe160,
    output wire [0:0] out_c0_exe3,
    output wire [0:0] out_c0_exe4,
    output wire [0:0] out_memdep_phi5_pop17,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_memdep_3_double_add_2_avm_readdata,
    input wire [0:0] in_memdep_3_double_add_2_avm_writeack,
    input wire [0:0] in_memdep_3_double_add_2_avm_waitrequest,
    input wire [0:0] in_memdep_3_double_add_2_avm_readdatavalid,
    output wire [31:0] out_unmaskedload1_double_add_2_avm_address,
    output wire [0:0] out_unmaskedload1_double_add_2_avm_enable,
    output wire [0:0] out_unmaskedload1_double_add_2_avm_read,
    output wire [0:0] out_unmaskedload1_double_add_2_avm_write,
    output wire [63:0] out_unmaskedload1_double_add_2_avm_writedata,
    output wire [7:0] out_unmaskedload1_double_add_2_avm_byteenable,
    output wire [0:0] out_unmaskedload1_double_add_2_avm_burstcount,
    output wire [31:0] out_memdep_3_double_add_2_avm_address,
    output wire [0:0] out_memdep_3_double_add_2_avm_enable,
    output wire [0:0] out_memdep_3_double_add_2_avm_read,
    output wire [0:0] out_memdep_3_double_add_2_avm_write,
    output wire [63:0] out_memdep_3_double_add_2_avm_writedata,
    output wire [7:0] out_memdep_3_double_add_2_avm_byteenable,
    output wire [0:0] out_memdep_3_double_add_2_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [30:0] i_llvm_fpga_mem_lm7_double_add_24_out_lm7_double_add_2_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm7_double_add_24_out_lm7_double_add_2_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm7_double_add_24_out_lm7_double_add_2_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm7_double_add_24_out_lm7_double_add_2_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm7_double_add_24_out_lm7_double_add_2_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm7_double_add_24_out_lm7_double_add_2_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm7_double_add_24_out_lm7_double_add_2_avm_writedata;
    wire [63:0] i_llvm_fpga_mem_lm7_double_add_24_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm7_double_add_24_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm7_double_add_24_out_o_valid;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_out_valid_out;
    wire [0:0] double_add_2_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] double_add_2_B4_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] double_add_2_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_double_add_22_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_double_add_22_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_5_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_memdep_3_double_add_2_avm_address;
    wire [0:0] i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_memdep_3_double_add_2_avm_burstcount;
    wire [7:0] i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_memdep_3_double_add_2_avm_byteenable;
    wire [0:0] i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_memdep_3_double_add_2_avm_enable;
    wire [0:0] i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_memdep_3_double_add_2_avm_read;
    wire [0:0] i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_memdep_3_double_add_2_avm_write;
    wire [63:0] i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_memdep_3_double_add_2_avm_writedata;
    wire [0:0] i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_unmaskedload1_double_add_2_avm_address;
    wire [0:0] i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_unmaskedload1_double_add_2_avm_burstcount;
    wire [7:0] i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_unmaskedload1_double_add_2_avm_byteenable;
    wire [0:0] i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_unmaskedload1_double_add_2_avm_enable;
    wire [0:0] i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_unmaskedload1_double_add_2_avm_read;
    wire [0:0] i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_unmaskedload1_double_add_2_avm_write;
    wire [63:0] i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_unmaskedload1_double_add_2_avm_writedata;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [1:0] join_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    reg [0:0] redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_q;
    reg [0:0] redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_q;
    reg [0:0] redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_q;
    reg [0:0] redist4_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_5_tpl_2_0_q;
    reg [0:0] redist4_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_5_tpl_2_1_q;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [1:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [1:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [1:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [1:0] coalesced_delay_1_fifo_data_out;
    wire [63:0] bubble_join_i_llvm_fpga_mem_lm7_double_add_24_q;
    wire [63:0] bubble_select_i_llvm_fpga_mem_lm7_double_add_24_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_double_add_2_B4_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_double_add_2_B4_merge_reg_aunroll_x_b;
    wire [67:0] bubble_join_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_f;
    wire [1:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [1:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm7_double_add_24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm7_double_add_24_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm7_double_add_24_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_double_add_2_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_double_add_2_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_double_add_2_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_V2;
    wire [0:0] SE_join_for_coalesced_delay_1_wireValid;
    wire [0:0] SE_join_for_coalesced_delay_1_and0;
    wire [0:0] SE_join_for_coalesced_delay_1_backStall;
    wire [0:0] SE_join_for_coalesced_delay_1_V0;
    reg [0:0] SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_R_v_0;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_V0;
    reg [0:0] SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_R_v_0;
    reg [0:0] SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_R_v_1;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_s_tv_1;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_or0;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_V0;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_V1;
    reg [0:0] SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_R_v_0;
    reg [0:0] SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_R_v_1;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_s_tv_1;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_or0;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_V0;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_V1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_V0;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_stall_in_bitsignaltemp;
    wire [63:0] bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_data_in;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_stall_out_bitsignaltemp;
    wire [63:0] bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_data_out;


    // bubble_join_stall_entry(BITJOIN,68)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,69)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,89)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = double_add_2_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // double_add_2_B4_merge_reg_aunroll_x(BLACKBOX,33)@0
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

    // bubble_join_double_add_2_B4_merge_reg_aunroll_x(BITJOIN,72)
    assign bubble_join_double_add_2_B4_merge_reg_aunroll_x_q = double_add_2_B4_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_double_add_2_B4_merge_reg_aunroll_x(BITSELECT,73)
    assign bubble_select_double_add_2_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_double_add_2_B4_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_double_add_2_B4_merge_reg_aunroll_x(STALLENABLE,92)
    // Valid signal propagation
    assign SE_out_double_add_2_B4_merge_reg_aunroll_x_V0 = SE_out_double_add_2_B4_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_double_add_2_B4_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_o_stall | ~ (SE_out_double_add_2_B4_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_double_add_2_B4_merge_reg_aunroll_x_wireValid = double_add_2_B4_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x(BITJOIN,76)
    assign bubble_join_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_q = {i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_5_tpl, i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_4_tpl, i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_3_tpl, i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_2_tpl, i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x(BITSELECT,77)
    assign bubble_select_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_q[64:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_q[65:65]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_q[66:66]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_q[67:67]);

    // join_for_coalesced_delay_0(BITJOIN,49)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_d};

    // redist4_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_5_tpl_2_0(REG,57)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_5_tpl_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_backEN == 1'b1)
        begin
            redist4_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_5_tpl_2_0_q <= $unsigned(bubble_select_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_f);
        end
    end

    // redist4_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_5_tpl_2_1(REG,58)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_5_tpl_2_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_backEN == 1'b1)
        begin
            redist4_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_5_tpl_2_1_q <= $unsigned(redist4_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_5_tpl_2_0_q);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23(BLACKBOX,11)@7
    // in in_stall_in@20000000
    // out out_data_out@8
    // out out_feedback_stall_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@8
    double_add_2_i_llvm_fpga_pop_i1_memdep_phi5_pop17_0 thei_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23 (
        .in_data_in(GND_q),
        .in_dir(redist4_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_5_tpl_2_1_q),
        .in_feedback_in_17(in_feedback_in_17),
        .in_feedback_valid_in_17(in_feedback_valid_in_17),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_backStall),
        .in_valid_in(SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_out_feedback_stall_out_17),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23(STALLENABLE,88)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_consumed1 = (~ (SE_join_for_coalesced_delay_1_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_wireValid = i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_out_valid_out;

    // SE_join_for_coalesced_delay_1(STALLENABLE,99)
    // Valid signal propagation
    assign SE_join_for_coalesced_delay_1_V0 = SE_join_for_coalesced_delay_1_wireValid;
    // Backward Stall generation
    assign SE_join_for_coalesced_delay_1_backStall = coalesced_delay_1_fifo_stall_out | ~ (SE_join_for_coalesced_delay_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_join_for_coalesced_delay_1_and0 = SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_V1;
    assign SE_join_for_coalesced_delay_1_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_V1 & SE_join_for_coalesced_delay_1_and0;

    // SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1(STALLENABLE,102)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_V0 = SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_R_v_0;
    assign SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_V1 = SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_R_v_1;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_s_tv_0 = SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_backStall & SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_R_v_0;
    assign SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_s_tv_1 = i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_out_stall_out & SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_R_v_1;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_or0 = SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_s_tv_0;
    assign SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_backEN = ~ (SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_s_tv_1 | SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_v_s_0 = SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_backEN & SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_V0;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_backStall = ~ (SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_R_v_0 <= 1'b0;
            SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_R_v_0 <= SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_R_v_0 & SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_R_v_0 <= SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_v_s_0;
            end

            if (SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_R_v_1 <= SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_R_v_1 & SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_s_tv_1;
            end
            else
            begin
                SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_R_v_1 <= SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_v_s_0;
            end

        end
    end

    // SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2(STALLENABLE,103)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_V0 = SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_R_v_0;
    assign SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_V1 = SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_R_v_1;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_backStall & SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_R_v_0;
    assign SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_s_tv_1 = SE_join_for_coalesced_delay_1_backStall & SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_R_v_1;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_or0 = SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_s_tv_0;
    assign SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_backEN = ~ (SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_s_tv_1 | SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_v_s_0 = SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_backEN & SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_V0;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_backStall = ~ (SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_R_v_0 <= 1'b0;
            SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_R_v_0 <= SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_R_v_0 & SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_R_v_0 <= SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_v_s_0;
            end

            if (SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_R_v_1 <= SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_R_v_1 & SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_s_tv_1;
            end
            else
            begin
                SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_R_v_1 <= SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_v_s_0;
            end

        end
    end

    // redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0(REG,54)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_q <= $unsigned(bubble_select_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_b);
        end
    end

    // redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1(REG,55)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_q <= $unsigned(redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_q);
        end
    end

    // redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2(REG,56)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_q <= $unsigned(redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_q);
        end
    end

    // bubble_join_i_llvm_fpga_mem_lm7_double_add_24(BITJOIN,62)
    assign bubble_join_i_llvm_fpga_mem_lm7_double_add_24_q = i_llvm_fpga_mem_lm7_double_add_24_out_o_readdata;

    // SE_out_i_llvm_fpga_mem_lm7_double_add_24(STALLENABLE,86)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm7_double_add_24_V0 = SE_out_i_llvm_fpga_mem_lm7_double_add_24_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm7_double_add_24_backStall = bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_stall_out | ~ (SE_out_i_llvm_fpga_mem_lm7_double_add_24_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm7_double_add_24_wireValid = i_llvm_fpga_mem_lm7_double_add_24_out_o_valid;

    // bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg(STALLFIFO,144)
    assign bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_valid_in = SE_out_i_llvm_fpga_mem_lm7_double_add_24_V0;
    assign bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_backStall;
    assign bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_data_in = bubble_join_i_llvm_fpga_mem_lm7_double_add_24_q;
    assign bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(64),
        .IMPL("zl_reg")
    ) thebubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_llvm_fpga_mem_lm7_double_add_24_q),
        .valid_out(bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_select_i_llvm_fpga_mem_lm7_double_add_24(BITSELECT,63)
    assign bubble_select_i_llvm_fpga_mem_lm7_double_add_24_b = $unsigned(bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_data_out[63:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23(BITJOIN,65)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_q = i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23(BITSELECT,66)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_q[0:0]);

    // SE_out_bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data(STALLENABLE,111)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_V0 = SE_out_bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_backStall = i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_o_stall | ~ (SE_out_bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_and0 = bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_and1 = SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_V0 & SE_out_bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_and0;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_V0 & SE_out_bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_and1;

    // i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x(BLACKBOX,41)@8
    // in in_i_stall@20000000
    // out out_memdep_3_double_add_2_avm_address@20000000
    // out out_memdep_3_double_add_2_avm_burstcount@20000000
    // out out_memdep_3_double_add_2_avm_byteenable@20000000
    // out out_memdep_3_double_add_2_avm_enable@20000000
    // out out_memdep_3_double_add_2_avm_read@20000000
    // out out_memdep_3_double_add_2_avm_write@20000000
    // out out_memdep_3_double_add_2_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@28
    // out out_unmaskedload1_double_add_2_avm_address@20000000
    // out out_unmaskedload1_double_add_2_avm_burstcount@20000000
    // out out_unmaskedload1_double_add_2_avm_byteenable@20000000
    // out out_unmaskedload1_double_add_2_avm_enable@20000000
    // out out_unmaskedload1_double_add_2_avm_read@20000000
    // out out_unmaskedload1_double_add_2_avm_write@20000000
    // out out_unmaskedload1_double_add_2_avm_writedata@20000000
    // out out_c1_exit_0_tpl@28
    double_add_2_i_sfc_s_c1_in_for_body5_s_c1_enter_double_add_26 thei_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_bubble_out_i_llvm_fpga_mem_lm7_double_add_24_data_V0),
        .in_memdep_3_double_add_2_avm_readdata(in_memdep_3_double_add_2_avm_readdata),
        .in_memdep_3_double_add_2_avm_readdatavalid(in_memdep_3_double_add_2_avm_readdatavalid),
        .in_memdep_3_double_add_2_avm_waitrequest(in_memdep_3_double_add_2_avm_waitrequest),
        .in_memdep_3_double_add_2_avm_writeack(in_memdep_3_double_add_2_avm_writeack),
        .in_unmaskedload1_double_add_2_avm_readdata(in_unmaskedload1_double_add_2_avm_readdata),
        .in_unmaskedload1_double_add_2_avm_readdatavalid(in_unmaskedload1_double_add_2_avm_readdatavalid),
        .in_unmaskedload1_double_add_2_avm_waitrequest(in_unmaskedload1_double_add_2_avm_waitrequest),
        .in_unmaskedload1_double_add_2_avm_writeack(in_unmaskedload1_double_add_2_avm_writeack),
        .in_c1_eni4_0_tpl(GND_q),
        .in_c1_eni4_1_tpl(bubble_select_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_b),
        .in_c1_eni4_2_tpl(bubble_select_i_llvm_fpga_mem_lm7_double_add_24_b),
        .in_c1_eni4_3_tpl(bubble_select_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_b),
        .in_c1_eni4_4_tpl(redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_q),
        .out_memdep_3_double_add_2_avm_address(i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_memdep_3_double_add_2_avm_address),
        .out_memdep_3_double_add_2_avm_burstcount(i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_memdep_3_double_add_2_avm_burstcount),
        .out_memdep_3_double_add_2_avm_byteenable(i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_memdep_3_double_add_2_avm_byteenable),
        .out_memdep_3_double_add_2_avm_enable(i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_memdep_3_double_add_2_avm_enable),
        .out_memdep_3_double_add_2_avm_read(i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_memdep_3_double_add_2_avm_read),
        .out_memdep_3_double_add_2_avm_write(i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_memdep_3_double_add_2_avm_write),
        .out_memdep_3_double_add_2_avm_writedata(i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_memdep_3_double_add_2_avm_writedata),
        .out_o_stall(i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_o_valid),
        .out_unmaskedload1_double_add_2_avm_address(i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_unmaskedload1_double_add_2_avm_address),
        .out_unmaskedload1_double_add_2_avm_burstcount(i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_unmaskedload1_double_add_2_avm_burstcount),
        .out_unmaskedload1_double_add_2_avm_byteenable(i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_unmaskedload1_double_add_2_avm_byteenable),
        .out_unmaskedload1_double_add_2_avm_enable(i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_unmaskedload1_double_add_2_avm_enable),
        .out_unmaskedload1_double_add_2_avm_read(i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_unmaskedload1_double_add_2_avm_read),
        .out_unmaskedload1_double_add_2_avm_write(i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_unmaskedload1_double_add_2_avm_write),
        .out_unmaskedload1_double_add_2_avm_writedata(i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_unmaskedload1_double_add_2_avm_writedata),
        .out_c1_exit_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_1(BITJOIN,52)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_b, redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_2_q};

    // coalesced_delay_1_fifo(STALLFIFO,60)
    assign coalesced_delay_1_fifo_valid_in = SE_join_for_coalesced_delay_1_V0;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(21),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(2),
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

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,109)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_and1 = coalesced_delay_0_fifo_valid_out & SE_out_coalesced_delay_1_fifo_and0;
    assign SE_out_coalesced_delay_1_fifo_wireValid = i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_o_valid & SE_out_coalesced_delay_1_fifo_and1;

    // coalesced_delay_0_fifo(STALLFIFO,59)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_V2;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(24),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(2),
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

    // i_llvm_fpga_mem_lm7_double_add_24(BLACKBOX,10)@5
    // in in_i_stall@20000000
    // out out_lm7_double_add_2_avm_address@20000000
    // out out_lm7_double_add_2_avm_burstcount@20000000
    // out out_lm7_double_add_2_avm_byteenable@20000000
    // out out_lm7_double_add_2_avm_enable@20000000
    // out out_lm7_double_add_2_avm_read@20000000
    // out out_lm7_double_add_2_avm_write@20000000
    // out out_lm7_double_add_2_avm_writedata@20000000
    // out out_o_readdata@8
    // out out_o_stall@20000000
    // out out_o_valid@8
    double_add_2_i_llvm_fpga_mem_lm7_0 thei_llvm_fpga_mem_lm7_double_add_24 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_c),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm7_double_add_24_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_V1),
        .in_lm7_double_add_2_avm_readdata(in_lm7_double_add_2_avm_readdata),
        .in_lm7_double_add_2_avm_readdatavalid(in_lm7_double_add_2_avm_readdatavalid),
        .in_lm7_double_add_2_avm_waitrequest(in_lm7_double_add_2_avm_waitrequest),
        .in_lm7_double_add_2_avm_writeack(in_lm7_double_add_2_avm_writeack),
        .out_lm7_double_add_2_avm_address(i_llvm_fpga_mem_lm7_double_add_24_out_lm7_double_add_2_avm_address),
        .out_lm7_double_add_2_avm_burstcount(i_llvm_fpga_mem_lm7_double_add_24_out_lm7_double_add_2_avm_burstcount),
        .out_lm7_double_add_2_avm_byteenable(i_llvm_fpga_mem_lm7_double_add_24_out_lm7_double_add_2_avm_byteenable),
        .out_lm7_double_add_2_avm_enable(i_llvm_fpga_mem_lm7_double_add_24_out_lm7_double_add_2_avm_enable),
        .out_lm7_double_add_2_avm_read(i_llvm_fpga_mem_lm7_double_add_24_out_lm7_double_add_2_avm_read),
        .out_lm7_double_add_2_avm_write(i_llvm_fpga_mem_lm7_double_add_24_out_lm7_double_add_2_avm_write),
        .out_lm7_double_add_2_avm_writedata(i_llvm_fpga_mem_lm7_double_add_24_out_lm7_double_add_2_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm7_double_add_24_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm7_double_add_24_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm7_double_add_24_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0(STALLENABLE,101)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_V0 = SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_s_tv_0 = SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_1_backStall & SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_backEN = ~ (SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_v_s_0 = SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_backEN & SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_V0;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_backStall = ~ (SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_R_v_0 <= SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_R_v_0 & SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_R_v_0 <= SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_v_s_0;
            end

        end
    end

    // SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x(STALLENABLE,94)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_consumed0 = (~ (SE_redist0_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl_3_0_backStall) & SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_consumed1 = (~ (i_llvm_fpga_mem_lm7_double_add_24_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_consumed2 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_or1);
    assign SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_wireValid = i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x(BLACKBOX,40)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_double_add_22_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_double_add_22_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit59_0_tpl@5
    // out out_c0_exit59_1_tpl@5
    // out out_c0_exit59_2_tpl@5
    // out out_c0_exit59_3_tpl@5
    // out out_c0_exit59_4_tpl@5
    // out out_c0_exit59_5_tpl@5
    double_add_2_i_sfc_s_c0_in_for_body5_s_c0_enter555_double_add_21 thei_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x (
        .in_arr(in_arr),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_backStall),
        .in_i_valid(SE_out_double_add_2_B4_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni154_0_tpl(GND_q),
        .in_c0_eni154_1_tpl(bubble_select_double_add_2_B4_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_double_add_22_exiting_stall_out(i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_double_add_22_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_double_add_22_exiting_valid_out(i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_double_add_22_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit59_0_tpl(),
        .out_c0_exit59_1_tpl(i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_1_tpl),
        .out_c0_exit59_2_tpl(i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_2_tpl),
        .out_c0_exit59_3_tpl(i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_3_tpl),
        .out_c0_exit59_4_tpl(i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_4_tpl),
        .out_c0_exit59_5_tpl(i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_c0_exit59_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_double_add_22_exiting_valid_out = i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_double_add_22_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_double_add_22_exiting_stall_out = i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_double_add_22_exiting_stall_out;

    // feedback_stall_out_17_sync(GPOUT,8)
    assign out_feedback_stall_out_17 = i_llvm_fpga_pop_i1_memdep_phi5_pop17_double_add_23_out_feedback_stall_out_17;

    // pipeline_valid_out_sync(GPOUT,23)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body5_double_add_2s_c0_enter555_double_add_21_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,31)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,35)
    assign out_lm7_double_add_2_avm_address = i_llvm_fpga_mem_lm7_double_add_24_out_lm7_double_add_2_avm_address;
    assign out_lm7_double_add_2_avm_enable = i_llvm_fpga_mem_lm7_double_add_24_out_lm7_double_add_2_avm_enable;
    assign out_lm7_double_add_2_avm_read = i_llvm_fpga_mem_lm7_double_add_24_out_lm7_double_add_2_avm_read;
    assign out_lm7_double_add_2_avm_write = i_llvm_fpga_mem_lm7_double_add_24_out_lm7_double_add_2_avm_write;
    assign out_lm7_double_add_2_avm_writedata = i_llvm_fpga_mem_lm7_double_add_24_out_lm7_double_add_2_avm_writedata;
    assign out_lm7_double_add_2_avm_byteenable = i_llvm_fpga_mem_lm7_double_add_24_out_lm7_double_add_2_avm_byteenable;
    assign out_lm7_double_add_2_avm_burstcount = i_llvm_fpga_mem_lm7_double_add_24_out_lm7_double_add_2_avm_burstcount;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,80)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,81)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[1:0]);

    // sel_for_coalesced_delay_0(BITSELECT,50)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,83)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,84)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[1:0]);

    // sel_for_coalesced_delay_1(BITSELECT,53)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[0:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1:1]);

    // dupName_0_sync_out_x(GPOUT,36)@28
    assign out_c0_exe160 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe3 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe4 = sel_for_coalesced_delay_0_c;
    assign out_memdep_phi5_pop17 = sel_for_coalesced_delay_1_c;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,38)
    assign out_unmaskedload1_double_add_2_avm_address = i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_unmaskedload1_double_add_2_avm_address;
    assign out_unmaskedload1_double_add_2_avm_enable = i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_unmaskedload1_double_add_2_avm_enable;
    assign out_unmaskedload1_double_add_2_avm_read = i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_unmaskedload1_double_add_2_avm_read;
    assign out_unmaskedload1_double_add_2_avm_write = i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_unmaskedload1_double_add_2_avm_write;
    assign out_unmaskedload1_double_add_2_avm_writedata = i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_unmaskedload1_double_add_2_avm_writedata;
    assign out_unmaskedload1_double_add_2_avm_byteenable = i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_unmaskedload1_double_add_2_avm_byteenable;
    assign out_unmaskedload1_double_add_2_avm_burstcount = i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_unmaskedload1_double_add_2_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,39)
    assign out_memdep_3_double_add_2_avm_address = i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_memdep_3_double_add_2_avm_address;
    assign out_memdep_3_double_add_2_avm_enable = i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_memdep_3_double_add_2_avm_enable;
    assign out_memdep_3_double_add_2_avm_read = i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_memdep_3_double_add_2_avm_read;
    assign out_memdep_3_double_add_2_avm_write = i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_memdep_3_double_add_2_avm_write;
    assign out_memdep_3_double_add_2_avm_writedata = i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_memdep_3_double_add_2_avm_writedata;
    assign out_memdep_3_double_add_2_avm_byteenable = i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_memdep_3_double_add_2_avm_byteenable;
    assign out_memdep_3_double_add_2_avm_burstcount = i_sfc_s_c1_in_for_body5_double_add_2s_c1_enter_double_add_26_aunroll_x_out_memdep_3_double_add_2_avm_burstcount;

endmodule
