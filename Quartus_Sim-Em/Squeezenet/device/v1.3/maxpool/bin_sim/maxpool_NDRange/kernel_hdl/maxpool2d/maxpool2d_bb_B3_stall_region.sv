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

// SystemVerilog created from maxpool2d_bb_B3_stall_region
// SystemVerilog created on Sat Jun  3 12:58:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_bb_B3_stall_region (
    input wire [511:0] in_lm_maxpool2d_avm_readdata,
    input wire [0:0] in_lm_maxpool2d_avm_writeack,
    input wire [0:0] in_lm_maxpool2d_avm_waitrequest,
    input wire [0:0] in_lm_maxpool2d_avm_readdatavalid,
    output wire [30:0] out_lm_maxpool2d_avm_address,
    output wire [0:0] out_lm_maxpool2d_avm_enable,
    output wire [0:0] out_lm_maxpool2d_avm_read,
    output wire [0:0] out_lm_maxpool2d_avm_write,
    output wire [511:0] out_lm_maxpool2d_avm_writedata,
    output wire [63:0] out_lm_maxpool2d_avm_byteenable,
    output wire [4:0] out_lm_maxpool2d_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [31:0] in_input_size,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_c0_exe11,
    input wire [31:0] in_c0_exe12819,
    input wire [63:0] in_c0_exe25,
    input wire [0:0] in_c0_exe37,
    input wire [0:0] in_c0_exe410,
    input wire [31:0] in_i_03814,
    input wire [31:0] in_j_03616,
    input wire [31:0] in_k_034,
    input wire [31:0] in_l_032,
    input wire [31:0] in_mul2217,
    input wire [31:0] in_mul2420,
    input wire [31:0] in_tmp_131,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_c0_exe11,
    output wire [31:0] out_c0_exe12819,
    output wire [63:0] out_c0_exe25,
    output wire [0:0] out_c0_exe37,
    output wire [0:0] out_c0_exe410,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_for_cond_cleanup15_LC_COND,
    output wire [31:0] out_i_03814,
    output wire [31:0] out_j_03616,
    output wire [31:0] out_k_034_LC_OuterPHI,
    output wire [31:0] out_l_032_LC_InnerPHI,
    output wire [31:0] out_mul2217,
    output wire [31:0] out_mul2420,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_019_q;
    wire [31:0] c_i32_116_q;
    wire [31:0] c_i32_320_q;
    wire [33:0] i_cmp13_maxpool2d5_a;
    wire [33:0] i_cmp13_maxpool2d5_b;
    logic [33:0] i_cmp13_maxpool2d5_o;
    wire [0:0] i_cmp13_maxpool2d5_c;
    wire [33:0] i_cmp18_maxpool2d6_a;
    wire [33:0] i_cmp18_maxpool2d6_b;
    logic [33:0] i_cmp18_maxpool2d6_o;
    wire [0:0] i_cmp18_maxpool2d6_c;
    wire [0:0] i_for_cond_cleanup15_lc_cond_maxpool2d15_q;
    wire [32:0] i_inc30_maxpool2d0_a;
    wire [32:0] i_inc30_maxpool2d0_b;
    logic [32:0] i_inc30_maxpool2d0_o;
    wire [32:0] i_inc30_maxpool2d0_q;
    wire [32:0] i_inc_maxpool2d1_a;
    wire [32:0] i_inc_maxpool2d1_b;
    logic [32:0] i_inc_maxpool2d1_o;
    wire [32:0] i_inc_maxpool2d1_q;
    wire [0:0] i_k_034_lc_outerphi_maxpool2d14_s;
    reg [31:0] i_k_034_lc_outerphi_maxpool2d14_q;
    wire [0:0] i_l_032_lc_innerphi_maxpool2d13_s;
    reg [31:0] i_l_032_lc_innerphi_maxpool2d13_q;
    wire [30:0] i_llvm_fpga_mem_lm_maxpool2d7_out_lm_maxpool2d_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm_maxpool2d7_out_lm_maxpool2d_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm_maxpool2d7_out_lm_maxpool2d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm_maxpool2d7_out_lm_maxpool2d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm_maxpool2d7_out_lm_maxpool2d_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm_maxpool2d7_out_lm_maxpool2d_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm_maxpool2d7_out_lm_maxpool2d_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm_maxpool2d7_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm_maxpool2d7_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm_maxpool2d7_out_o_valid;
    wire [0:0] i_unnamed_maxpool2d8_q;
    wire [0:0] i_unnamed_maxpool2d9_q;
    wire [31:0] bgTrunc_i_inc30_maxpool2d0_sel_x_b;
    wire [31:0] bgTrunc_i_inc_maxpool2d1_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_out_c0_exit33_1_tpl;
    wire [0:0] i_sfc_s_c1_in_for_cond17_preheader_maxpool2ds_c1_enter_maxpool2d11_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_cond17_preheader_maxpool2ds_c1_enter_maxpool2d11_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_for_cond17_preheader_maxpool2ds_c1_enter_maxpool2d11_aunroll_x_out_c1_exit_1_tpl;
    wire [0:0] maxpool2d_B3_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] maxpool2d_B3_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] maxpool2d_B3_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] maxpool2d_B3_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [63:0] maxpool2d_B3_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [63:0] maxpool2d_B3_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] maxpool2d_B3_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] maxpool2d_B3_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [31:0] maxpool2d_B3_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [31:0] maxpool2d_B3_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [31:0] maxpool2d_B3_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [31:0] maxpool2d_B3_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [32:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [287:0] join_for_coalesced_delay_1_q;
    wire [63:0] sel_for_coalesced_delay_1_b;
    wire [63:0] sel_for_coalesced_delay_1_c;
    wire [31:0] sel_for_coalesced_delay_1_d;
    wire [31:0] sel_for_coalesced_delay_1_e;
    wire [31:0] sel_for_coalesced_delay_1_f;
    wire [31:0] sel_for_coalesced_delay_1_g;
    wire [31:0] sel_for_coalesced_delay_1_h;
    wire [0:0] redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_valid_in;
    wire redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_stall_in;
    wire redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_data_in;
    wire [0:0] redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_valid_out;
    wire redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_stall_out;
    wire redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_data_out;
    reg [0:0] redist5_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_5_tpl_157_0_q;
    wire [0:0] redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_valid_in;
    wire redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_stall_in;
    wire redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_data_in;
    wire [0:0] redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_valid_out;
    wire redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_stall_out;
    wire redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_data_out;
    wire [0:0] redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_valid_in;
    wire redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_stall_in;
    wire redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_data_in;
    wire [0:0] redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_valid_out;
    wire redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_stall_out;
    wire redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_data_out;
    wire [0:0] redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_valid_in;
    wire redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_stall_in;
    wire redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_data_in;
    wire [0:0] redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_valid_out;
    wire redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_stall_out;
    wire redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_data_out;
    reg [31:0] redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_q;
    reg [0:0] redist15_i_unnamed_maxpool2d9_q_1_0_q;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [32:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [32:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [287:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [287:0] coalesced_delay_1_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm_maxpool2d7_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm_maxpool2d7_b;
    wire [385:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [63:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [31:0] bubble_select_stall_entry_m;
    wire [63:0] bubble_join_i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_b;
    wire [31:0] bubble_join_i_sfc_s_c1_in_for_cond17_preheader_maxpool2ds_c1_enter_maxpool2d11_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_cond17_preheader_maxpool2ds_c1_enter_maxpool2d11_aunroll_x_b;
    wire [385:0] bubble_join_maxpool2d_B3_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_maxpool2d_B3_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_maxpool2d_B3_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_maxpool2d_B3_merge_reg_aunroll_x_d;
    wire [63:0] bubble_select_maxpool2d_B3_merge_reg_aunroll_x_e;
    wire [63:0] bubble_select_maxpool2d_B3_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_maxpool2d_B3_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_maxpool2d_B3_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_maxpool2d_B3_merge_reg_aunroll_x_i;
    wire [31:0] bubble_select_maxpool2d_B3_merge_reg_aunroll_x_j;
    wire [31:0] bubble_select_maxpool2d_B3_merge_reg_aunroll_x_k;
    wire [31:0] bubble_select_maxpool2d_B3_merge_reg_aunroll_x_l;
    wire [31:0] bubble_select_maxpool2d_B3_merge_reg_aunroll_x_m;
    wire [31:0] bubble_join_redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_q;
    wire [31:0] bubble_select_redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_b;
    wire [0:0] bubble_join_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_q;
    wire [0:0] bubble_select_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_b;
    wire [0:0] bubble_join_redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_q;
    wire [0:0] bubble_select_redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_b;
    wire [31:0] bubble_join_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_q;
    wire [31:0] bubble_select_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_b;
    wire [32:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [32:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [287:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [287:0] bubble_select_coalesced_delay_1_fifo_b;
    reg [0:0] SE_i_cmp13_maxpool2d5_R_v_0;
    wire [0:0] SE_i_cmp13_maxpool2d5_v_s_0;
    wire [0:0] SE_i_cmp13_maxpool2d5_s_tv_0;
    wire [0:0] SE_i_cmp13_maxpool2d5_backEN;
    wire [0:0] SE_i_cmp13_maxpool2d5_backStall;
    wire [0:0] SE_i_cmp13_maxpool2d5_V0;
    wire [0:0] SE_i_cmp18_maxpool2d6_wireValid;
    wire [0:0] SE_i_cmp18_maxpool2d6_wireStall;
    wire [0:0] SE_i_cmp18_maxpool2d6_StallValid;
    wire [0:0] SE_i_cmp18_maxpool2d6_toReg0;
    reg [0:0] SE_i_cmp18_maxpool2d6_fromReg0;
    wire [0:0] SE_i_cmp18_maxpool2d6_consumed0;
    wire [0:0] SE_i_cmp18_maxpool2d6_toReg1;
    reg [0:0] SE_i_cmp18_maxpool2d6_fromReg1;
    wire [0:0] SE_i_cmp18_maxpool2d6_consumed1;
    wire [0:0] SE_i_cmp18_maxpool2d6_and0;
    wire [0:0] SE_i_cmp18_maxpool2d6_or0;
    wire [0:0] SE_i_cmp18_maxpool2d6_backStall;
    wire [0:0] SE_i_cmp18_maxpool2d6_V0;
    wire [0:0] SE_i_cmp18_maxpool2d6_V1;
    reg [0:0] SE_i_k_034_lc_outerphi_maxpool2d14_R_v_0;
    wire [0:0] SE_i_k_034_lc_outerphi_maxpool2d14_v_s_0;
    wire [0:0] SE_i_k_034_lc_outerphi_maxpool2d14_s_tv_0;
    wire [0:0] SE_i_k_034_lc_outerphi_maxpool2d14_backEN;
    wire [0:0] SE_i_k_034_lc_outerphi_maxpool2d14_and0;
    wire [0:0] SE_i_k_034_lc_outerphi_maxpool2d14_backStall;
    wire [0:0] SE_i_k_034_lc_outerphi_maxpool2d14_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_maxpool2d7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_maxpool2d7_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_maxpool2d7_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_maxpool2d7_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm_maxpool2d7_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_maxpool2d7_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_maxpool2d7_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm_maxpool2d7_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_maxpool2d7_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_maxpool2d7_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_maxpool2d7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_maxpool2d7_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_maxpool2d7_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_V0;
    wire [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_maxpool2d_B3_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_wireValid;
    wire [0:0] SE_out_redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_and0;
    wire [0:0] SE_out_redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_backStall;
    wire [0:0] SE_out_redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_V0;
    wire [0:0] SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_wireValid;
    wire [0:0] SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_wireStall;
    wire [0:0] SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_StallValid;
    wire [0:0] SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_toReg0;
    reg [0:0] SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_fromReg0;
    wire [0:0] SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_consumed0;
    wire [0:0] SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_toReg1;
    reg [0:0] SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_fromReg1;
    wire [0:0] SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_consumed1;
    wire [0:0] SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_or0;
    wire [0:0] SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_backStall;
    wire [0:0] SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_V0;
    wire [0:0] SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_V1;
    wire [0:0] SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_wireValid;
    wire [0:0] SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_wireStall;
    wire [0:0] SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_StallValid;
    wire [0:0] SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_toReg0;
    reg [0:0] SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_fromReg0;
    wire [0:0] SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_consumed0;
    wire [0:0] SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_toReg1;
    reg [0:0] SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_fromReg1;
    wire [0:0] SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_consumed1;
    wire [0:0] SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_or0;
    wire [0:0] SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_backStall;
    wire [0:0] SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_V0;
    wire [0:0] SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_V1;
    reg [0:0] SE_redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_R_v_0;
    wire [0:0] SE_redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_v_s_0;
    wire [0:0] SE_redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_s_tv_0;
    wire [0:0] SE_redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_backEN;
    wire [0:0] SE_redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_backStall;
    wire [0:0] SE_redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_V0;
    reg [0:0] SE_redist15_i_unnamed_maxpool2d9_q_1_0_R_v_0;
    wire [0:0] SE_redist15_i_unnamed_maxpool2d9_q_1_0_v_s_0;
    wire [0:0] SE_redist15_i_unnamed_maxpool2d9_q_1_0_s_tv_0;
    wire [0:0] SE_redist15_i_unnamed_maxpool2d9_q_1_0_backEN;
    wire [0:0] SE_redist15_i_unnamed_maxpool2d9_q_1_0_backStall;
    wire [0:0] SE_redist15_i_unnamed_maxpool2d9_q_1_0_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg2;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_and6;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_V0;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_reg_stall_out_bitsignaltemp;


    // bubble_join_stall_entry(BITJOIN,81)
    assign bubble_join_stall_entry_q = {in_tmp_131, in_mul2420, in_mul2217, in_l_032, in_k_034, in_j_03616, in_i_03814, in_c0_exe410, in_c0_exe37, in_c0_exe25, in_c0_exe12819, in_c0_exe11};

    // bubble_select_stall_entry(BITSELECT,82)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[95:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[159:96]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[160:160]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[161:161]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[193:162]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[225:194]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[257:226]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[289:258]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[321:290]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[353:322]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[385:354]);

    // SE_stall_entry(STALLENABLE,122)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = maxpool2d_B3_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // maxpool2d_B3_merge_reg_aunroll_x(BLACKBOX,42)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    // out out_data_out_7_tpl@1
    // out out_data_out_8_tpl@1
    // out out_data_out_9_tpl@1
    // out out_data_out_10_tpl@1
    // out out_data_out_11_tpl@1
    maxpool2d_B3_merge_reg themaxpool2d_B3_merge_reg_aunroll_x (
        .in_stall_in(SE_out_maxpool2d_B3_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_i),
        .in_data_in_1_tpl(bubble_select_stall_entry_j),
        .in_data_in_2_tpl(bubble_select_stall_entry_m),
        .in_data_in_3_tpl(bubble_select_stall_entry_b),
        .in_data_in_4_tpl(bubble_select_stall_entry_d),
        .in_data_in_5_tpl(bubble_select_stall_entry_e),
        .in_data_in_6_tpl(bubble_select_stall_entry_f),
        .in_data_in_7_tpl(bubble_select_stall_entry_g),
        .in_data_in_8_tpl(bubble_select_stall_entry_h),
        .in_data_in_9_tpl(bubble_select_stall_entry_k),
        .in_data_in_10_tpl(bubble_select_stall_entry_c),
        .in_data_in_11_tpl(bubble_select_stall_entry_l),
        .out_stall_out(maxpool2d_B3_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(maxpool2d_B3_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(maxpool2d_B3_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(maxpool2d_B3_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(maxpool2d_B3_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(maxpool2d_B3_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(maxpool2d_B3_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(maxpool2d_B3_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(maxpool2d_B3_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(maxpool2d_B3_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(maxpool2d_B3_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(maxpool2d_B3_merge_reg_aunroll_x_out_data_out_11_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_maxpool2d_B3_merge_reg_aunroll_x(BITJOIN,91)
    assign bubble_join_maxpool2d_B3_merge_reg_aunroll_x_q = {maxpool2d_B3_merge_reg_aunroll_x_out_data_out_11_tpl, maxpool2d_B3_merge_reg_aunroll_x_out_data_out_10_tpl, maxpool2d_B3_merge_reg_aunroll_x_out_data_out_9_tpl, maxpool2d_B3_merge_reg_aunroll_x_out_data_out_8_tpl, maxpool2d_B3_merge_reg_aunroll_x_out_data_out_7_tpl, maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl, maxpool2d_B3_merge_reg_aunroll_x_out_data_out_5_tpl, maxpool2d_B3_merge_reg_aunroll_x_out_data_out_4_tpl, maxpool2d_B3_merge_reg_aunroll_x_out_data_out_3_tpl, maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl, maxpool2d_B3_merge_reg_aunroll_x_out_data_out_1_tpl, maxpool2d_B3_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_maxpool2d_B3_merge_reg_aunroll_x(BITSELECT,92)
    assign bubble_select_maxpool2d_B3_merge_reg_aunroll_x_b = $unsigned(bubble_join_maxpool2d_B3_merge_reg_aunroll_x_q[31:0]);
    assign bubble_select_maxpool2d_B3_merge_reg_aunroll_x_c = $unsigned(bubble_join_maxpool2d_B3_merge_reg_aunroll_x_q[63:32]);
    assign bubble_select_maxpool2d_B3_merge_reg_aunroll_x_d = $unsigned(bubble_join_maxpool2d_B3_merge_reg_aunroll_x_q[95:64]);
    assign bubble_select_maxpool2d_B3_merge_reg_aunroll_x_e = $unsigned(bubble_join_maxpool2d_B3_merge_reg_aunroll_x_q[159:96]);
    assign bubble_select_maxpool2d_B3_merge_reg_aunroll_x_f = $unsigned(bubble_join_maxpool2d_B3_merge_reg_aunroll_x_q[223:160]);
    assign bubble_select_maxpool2d_B3_merge_reg_aunroll_x_g = $unsigned(bubble_join_maxpool2d_B3_merge_reg_aunroll_x_q[224:224]);
    assign bubble_select_maxpool2d_B3_merge_reg_aunroll_x_h = $unsigned(bubble_join_maxpool2d_B3_merge_reg_aunroll_x_q[225:225]);
    assign bubble_select_maxpool2d_B3_merge_reg_aunroll_x_i = $unsigned(bubble_join_maxpool2d_B3_merge_reg_aunroll_x_q[257:226]);
    assign bubble_select_maxpool2d_B3_merge_reg_aunroll_x_j = $unsigned(bubble_join_maxpool2d_B3_merge_reg_aunroll_x_q[289:258]);
    assign bubble_select_maxpool2d_B3_merge_reg_aunroll_x_k = $unsigned(bubble_join_maxpool2d_B3_merge_reg_aunroll_x_q[321:290]);
    assign bubble_select_maxpool2d_B3_merge_reg_aunroll_x_l = $unsigned(bubble_join_maxpool2d_B3_merge_reg_aunroll_x_q[353:322]);
    assign bubble_select_maxpool2d_B3_merge_reg_aunroll_x_m = $unsigned(bubble_join_maxpool2d_B3_merge_reg_aunroll_x_q[385:354]);

    // join_for_coalesced_delay_0(BITJOIN,62)
    assign join_for_coalesced_delay_0_q = {bubble_select_maxpool2d_B3_merge_reg_aunroll_x_g, bubble_select_maxpool2d_B3_merge_reg_aunroll_x_b};

    // c_i32_116(CONSTANT,6)
    assign c_i32_116_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_maxpool2d1(ADD,16)@1
    assign i_inc_maxpool2d1_a = {1'b0, bubble_select_maxpool2d_B3_merge_reg_aunroll_x_c};
    assign i_inc_maxpool2d1_b = {1'b0, c_i32_116_q};
    assign i_inc_maxpool2d1_o = $unsigned(i_inc_maxpool2d1_a) + $unsigned(i_inc_maxpool2d1_b);
    assign i_inc_maxpool2d1_q = i_inc_maxpool2d1_o[32:0];

    // bgTrunc_i_inc_maxpool2d1_sel_x(BITSELECT,38)@1
    assign bgTrunc_i_inc_maxpool2d1_sel_x_b = i_inc_maxpool2d1_q[31:0];

    // SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo(STALLENABLE,144)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_fromReg0 <= '0;
            SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_fromReg0 <= SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_toReg0;
            // Successor 1
            SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_fromReg1 <= SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_consumed0 = (~ (SE_i_cmp18_maxpool2d6_backStall) & SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_wireValid) | SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_fromReg0;
    assign SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_consumed1 = (~ (SE_redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_backStall) & SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_wireValid) | SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_fromReg1;
    // Consuming
    assign SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_StallValid = SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_backStall & SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_wireValid;
    assign SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_toReg0 = SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_StallValid & SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_consumed0;
    assign SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_toReg1 = SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_StallValid & SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_or0 = SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_consumed0;
    assign SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_wireStall = ~ (SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_consumed1 & SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_or0);
    assign SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_backStall = SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_V0 = SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_wireValid & ~ (SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_fromReg0);
    assign SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_V1 = SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_wireValid & ~ (SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_wireValid = redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_valid_out;

    // redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo(STALLFIFO,71)
    assign redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_valid_in = SE_out_maxpool2d_B3_merge_reg_aunroll_x_V5;
    assign redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_stall_in = SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_backStall;
    assign redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_data_in = bgTrunc_i_inc_maxpool2d1_sel_x_b;
    assign redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_valid_in_bitsignaltemp = redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_valid_in[0];
    assign redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_stall_in_bitsignaltemp = redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_stall_in[0];
    assign redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_valid_out[0] = redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_valid_out_bitsignaltemp;
    assign redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_stall_out[0] = redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(157),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo (
        .valid_in(redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_valid_in_bitsignaltemp),
        .stall_in(redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_stall_in_bitsignaltemp),
        .data_in(bgTrunc_i_inc_maxpool2d1_sel_x_b),
        .valid_out(redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_valid_out_bitsignaltemp),
        .stall_out(redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_stall_out_bitsignaltemp),
        .data_out(redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo(STALLENABLE,137)
    // Valid signal propagation
    assign SE_out_redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_V0 = SE_out_redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_backStall = i_sfc_s_c1_in_for_cond17_preheader_maxpool2ds_c1_enter_maxpool2d11_aunroll_x_out_o_stall | ~ (SE_out_redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_and0 = redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_valid_out;
    assign SE_out_redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_wireValid = SE_out_i_llvm_fpga_mem_lm_maxpool2d7_V1 & SE_out_redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_and0;

    // redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo(STALLFIFO,67)
    assign redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_valid_in = SE_out_maxpool2d_B3_merge_reg_aunroll_x_V1;
    assign redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_stall_in = SE_out_redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_backStall;
    assign redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_data_in = bubble_select_maxpool2d_B3_merge_reg_aunroll_x_d;
    assign redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_valid_in_bitsignaltemp = redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_valid_in[0];
    assign redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_stall_in_bitsignaltemp = redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_stall_in[0];
    assign redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_valid_out[0] = redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_valid_out_bitsignaltemp;
    assign redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_stall_out[0] = redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(154),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo (
        .valid_in(redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_valid_in_bitsignaltemp),
        .stall_in(redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_maxpool2d_B3_merge_reg_aunroll_x_d),
        .valid_out(redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_valid_out_bitsignaltemp),
        .stall_out(redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_stall_out_bitsignaltemp),
        .data_out(redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_maxpool2d_B3_merge_reg_aunroll_x(STALLENABLE,131)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg5 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg0 <= SE_out_maxpool2d_B3_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg1 <= SE_out_maxpool2d_B3_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg2 <= SE_out_maxpool2d_B3_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg3 <= SE_out_maxpool2d_B3_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg4 <= SE_out_maxpool2d_B3_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg5 <= SE_out_maxpool2d_B3_merge_reg_aunroll_x_toReg5;
        end
    end
    // Input Stall processing
    assign SE_out_maxpool2d_B3_merge_reg_aunroll_x_consumed0 = (~ (i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_out_o_stall) & SE_out_maxpool2d_B3_merge_reg_aunroll_x_wireValid) | SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg0;
    assign SE_out_maxpool2d_B3_merge_reg_aunroll_x_consumed1 = (~ (redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_stall_out) & SE_out_maxpool2d_B3_merge_reg_aunroll_x_wireValid) | SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg1;
    assign SE_out_maxpool2d_B3_merge_reg_aunroll_x_consumed2 = (~ (redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_stall_out) & SE_out_maxpool2d_B3_merge_reg_aunroll_x_wireValid) | SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg2;
    assign SE_out_maxpool2d_B3_merge_reg_aunroll_x_consumed3 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_maxpool2d_B3_merge_reg_aunroll_x_wireValid) | SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg3;
    assign SE_out_maxpool2d_B3_merge_reg_aunroll_x_consumed4 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_maxpool2d_B3_merge_reg_aunroll_x_wireValid) | SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg4;
    assign SE_out_maxpool2d_B3_merge_reg_aunroll_x_consumed5 = (~ (redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_stall_out) & SE_out_maxpool2d_B3_merge_reg_aunroll_x_wireValid) | SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg5;
    // Consuming
    assign SE_out_maxpool2d_B3_merge_reg_aunroll_x_StallValid = SE_out_maxpool2d_B3_merge_reg_aunroll_x_backStall & SE_out_maxpool2d_B3_merge_reg_aunroll_x_wireValid;
    assign SE_out_maxpool2d_B3_merge_reg_aunroll_x_toReg0 = SE_out_maxpool2d_B3_merge_reg_aunroll_x_StallValid & SE_out_maxpool2d_B3_merge_reg_aunroll_x_consumed0;
    assign SE_out_maxpool2d_B3_merge_reg_aunroll_x_toReg1 = SE_out_maxpool2d_B3_merge_reg_aunroll_x_StallValid & SE_out_maxpool2d_B3_merge_reg_aunroll_x_consumed1;
    assign SE_out_maxpool2d_B3_merge_reg_aunroll_x_toReg2 = SE_out_maxpool2d_B3_merge_reg_aunroll_x_StallValid & SE_out_maxpool2d_B3_merge_reg_aunroll_x_consumed2;
    assign SE_out_maxpool2d_B3_merge_reg_aunroll_x_toReg3 = SE_out_maxpool2d_B3_merge_reg_aunroll_x_StallValid & SE_out_maxpool2d_B3_merge_reg_aunroll_x_consumed3;
    assign SE_out_maxpool2d_B3_merge_reg_aunroll_x_toReg4 = SE_out_maxpool2d_B3_merge_reg_aunroll_x_StallValid & SE_out_maxpool2d_B3_merge_reg_aunroll_x_consumed4;
    assign SE_out_maxpool2d_B3_merge_reg_aunroll_x_toReg5 = SE_out_maxpool2d_B3_merge_reg_aunroll_x_StallValid & SE_out_maxpool2d_B3_merge_reg_aunroll_x_consumed5;
    // Backward Stall generation
    assign SE_out_maxpool2d_B3_merge_reg_aunroll_x_or0 = SE_out_maxpool2d_B3_merge_reg_aunroll_x_consumed0;
    assign SE_out_maxpool2d_B3_merge_reg_aunroll_x_or1 = SE_out_maxpool2d_B3_merge_reg_aunroll_x_consumed1 & SE_out_maxpool2d_B3_merge_reg_aunroll_x_or0;
    assign SE_out_maxpool2d_B3_merge_reg_aunroll_x_or2 = SE_out_maxpool2d_B3_merge_reg_aunroll_x_consumed2 & SE_out_maxpool2d_B3_merge_reg_aunroll_x_or1;
    assign SE_out_maxpool2d_B3_merge_reg_aunroll_x_or3 = SE_out_maxpool2d_B3_merge_reg_aunroll_x_consumed3 & SE_out_maxpool2d_B3_merge_reg_aunroll_x_or2;
    assign SE_out_maxpool2d_B3_merge_reg_aunroll_x_or4 = SE_out_maxpool2d_B3_merge_reg_aunroll_x_consumed4 & SE_out_maxpool2d_B3_merge_reg_aunroll_x_or3;
    assign SE_out_maxpool2d_B3_merge_reg_aunroll_x_wireStall = ~ (SE_out_maxpool2d_B3_merge_reg_aunroll_x_consumed5 & SE_out_maxpool2d_B3_merge_reg_aunroll_x_or4);
    assign SE_out_maxpool2d_B3_merge_reg_aunroll_x_backStall = SE_out_maxpool2d_B3_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_maxpool2d_B3_merge_reg_aunroll_x_V0 = SE_out_maxpool2d_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg0);
    assign SE_out_maxpool2d_B3_merge_reg_aunroll_x_V1 = SE_out_maxpool2d_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg1);
    assign SE_out_maxpool2d_B3_merge_reg_aunroll_x_V2 = SE_out_maxpool2d_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg2);
    assign SE_out_maxpool2d_B3_merge_reg_aunroll_x_V3 = SE_out_maxpool2d_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg3);
    assign SE_out_maxpool2d_B3_merge_reg_aunroll_x_V4 = SE_out_maxpool2d_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg4);
    assign SE_out_maxpool2d_B3_merge_reg_aunroll_x_V5 = SE_out_maxpool2d_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_maxpool2d_B3_merge_reg_aunroll_x_fromReg5);
    // Computing multiple Valid(s)
    assign SE_out_maxpool2d_B3_merge_reg_aunroll_x_wireValid = maxpool2d_B3_merge_reg_aunroll_x_out_valid_out;

    // coalesced_delay_0_fifo(STALLFIFO,74)
    assign coalesced_delay_0_fifo_valid_in = SE_out_maxpool2d_B3_merge_reg_aunroll_x_V3;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(157),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(33),
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

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,148)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_0_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg1 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_0_fifo_fromReg0 <= SE_out_coalesced_delay_0_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_0_fifo_fromReg1 <= SE_out_coalesced_delay_0_fifo_toReg1;
            // Successor 2
            SE_out_coalesced_delay_0_fifo_fromReg2 <= SE_out_coalesced_delay_0_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (SE_i_k_034_lc_outerphi_maxpool2d14_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (SE_i_cmp18_maxpool2d6_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
    assign SE_out_coalesced_delay_0_fifo_consumed2 = (~ (SE_i_cmp13_maxpool2d5_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg2;
    // Consuming
    assign SE_out_coalesced_delay_0_fifo_StallValid = SE_out_coalesced_delay_0_fifo_backStall & SE_out_coalesced_delay_0_fifo_wireValid;
    assign SE_out_coalesced_delay_0_fifo_toReg0 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_toReg1 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed1;
    assign SE_out_coalesced_delay_0_fifo_toReg2 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_or0 = SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_or1 = SE_out_coalesced_delay_0_fifo_consumed1 & SE_out_coalesced_delay_0_fifo_or0;
    assign SE_out_coalesced_delay_0_fifo_wireStall = ~ (SE_out_coalesced_delay_0_fifo_consumed2 & SE_out_coalesced_delay_0_fifo_or1);
    assign SE_out_coalesced_delay_0_fifo_backStall = SE_out_coalesced_delay_0_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg0);
    assign SE_out_coalesced_delay_0_fifo_V1 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg1);
    assign SE_out_coalesced_delay_0_fifo_V2 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_wireValid = coalesced_delay_0_fifo_valid_out;

    // SE_i_cmp18_maxpool2d6(STALLENABLE,112)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp18_maxpool2d6_fromReg0 <= '0;
            SE_i_cmp18_maxpool2d6_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_cmp18_maxpool2d6_fromReg0 <= SE_i_cmp18_maxpool2d6_toReg0;
            // Successor 1
            SE_i_cmp18_maxpool2d6_fromReg1 <= SE_i_cmp18_maxpool2d6_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_cmp18_maxpool2d6_consumed0 = (~ (SE_i_k_034_lc_outerphi_maxpool2d14_backStall) & SE_i_cmp18_maxpool2d6_wireValid) | SE_i_cmp18_maxpool2d6_fromReg0;
    assign SE_i_cmp18_maxpool2d6_consumed1 = (~ (SE_redist15_i_unnamed_maxpool2d9_q_1_0_backStall) & SE_i_cmp18_maxpool2d6_wireValid) | SE_i_cmp18_maxpool2d6_fromReg1;
    // Consuming
    assign SE_i_cmp18_maxpool2d6_StallValid = SE_i_cmp18_maxpool2d6_backStall & SE_i_cmp18_maxpool2d6_wireValid;
    assign SE_i_cmp18_maxpool2d6_toReg0 = SE_i_cmp18_maxpool2d6_StallValid & SE_i_cmp18_maxpool2d6_consumed0;
    assign SE_i_cmp18_maxpool2d6_toReg1 = SE_i_cmp18_maxpool2d6_StallValid & SE_i_cmp18_maxpool2d6_consumed1;
    // Backward Stall generation
    assign SE_i_cmp18_maxpool2d6_or0 = SE_i_cmp18_maxpool2d6_consumed0;
    assign SE_i_cmp18_maxpool2d6_wireStall = ~ (SE_i_cmp18_maxpool2d6_consumed1 & SE_i_cmp18_maxpool2d6_or0);
    assign SE_i_cmp18_maxpool2d6_backStall = SE_i_cmp18_maxpool2d6_wireStall;
    // Valid signal propagation
    assign SE_i_cmp18_maxpool2d6_V0 = SE_i_cmp18_maxpool2d6_wireValid & ~ (SE_i_cmp18_maxpool2d6_fromReg0);
    assign SE_i_cmp18_maxpool2d6_V1 = SE_i_cmp18_maxpool2d6_wireValid & ~ (SE_i_cmp18_maxpool2d6_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_cmp18_maxpool2d6_and0 = SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_V0;
    assign SE_i_cmp18_maxpool2d6_wireValid = SE_out_coalesced_delay_0_fifo_V1 & SE_i_cmp18_maxpool2d6_and0;

    // SE_i_k_034_lc_outerphi_maxpool2d14(STALLENABLE,116)
    // Valid signal propagation
    assign SE_i_k_034_lc_outerphi_maxpool2d14_V0 = SE_i_k_034_lc_outerphi_maxpool2d14_R_v_0;
    // Stall signal propagation
    assign SE_i_k_034_lc_outerphi_maxpool2d14_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_backStall & SE_i_k_034_lc_outerphi_maxpool2d14_R_v_0;
    // Backward Enable generation
    assign SE_i_k_034_lc_outerphi_maxpool2d14_backEN = ~ (SE_i_k_034_lc_outerphi_maxpool2d14_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_k_034_lc_outerphi_maxpool2d14_and0 = SE_i_cmp18_maxpool2d6_V0 & SE_i_k_034_lc_outerphi_maxpool2d14_backEN;
    assign SE_i_k_034_lc_outerphi_maxpool2d14_v_s_0 = SE_out_coalesced_delay_0_fifo_V0 & SE_i_k_034_lc_outerphi_maxpool2d14_and0;
    // Backward Stall generation
    assign SE_i_k_034_lc_outerphi_maxpool2d14_backStall = ~ (SE_i_k_034_lc_outerphi_maxpool2d14_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_k_034_lc_outerphi_maxpool2d14_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_k_034_lc_outerphi_maxpool2d14_backEN == 1'b0)
            begin
                SE_i_k_034_lc_outerphi_maxpool2d14_R_v_0 <= SE_i_k_034_lc_outerphi_maxpool2d14_R_v_0 & SE_i_k_034_lc_outerphi_maxpool2d14_s_tv_0;
            end
            else
            begin
                SE_i_k_034_lc_outerphi_maxpool2d14_R_v_0 <= SE_i_k_034_lc_outerphi_maxpool2d14_v_s_0;
            end

        end
    end

    // SE_redist15_i_unnamed_maxpool2d9_q_1_0(STALLENABLE,146)
    // Valid signal propagation
    assign SE_redist15_i_unnamed_maxpool2d9_q_1_0_V0 = SE_redist15_i_unnamed_maxpool2d9_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist15_i_unnamed_maxpool2d9_q_1_0_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_backStall & SE_redist15_i_unnamed_maxpool2d9_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist15_i_unnamed_maxpool2d9_q_1_0_backEN = ~ (SE_redist15_i_unnamed_maxpool2d9_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist15_i_unnamed_maxpool2d9_q_1_0_v_s_0 = SE_redist15_i_unnamed_maxpool2d9_q_1_0_backEN & SE_i_cmp18_maxpool2d6_V1;
    // Backward Stall generation
    assign SE_redist15_i_unnamed_maxpool2d9_q_1_0_backStall = ~ (SE_redist15_i_unnamed_maxpool2d9_q_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist15_i_unnamed_maxpool2d9_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist15_i_unnamed_maxpool2d9_q_1_0_backEN == 1'b0)
            begin
                SE_redist15_i_unnamed_maxpool2d9_q_1_0_R_v_0 <= SE_redist15_i_unnamed_maxpool2d9_q_1_0_R_v_0 & SE_redist15_i_unnamed_maxpool2d9_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist15_i_unnamed_maxpool2d9_q_1_0_R_v_0 <= SE_redist15_i_unnamed_maxpool2d9_q_1_0_v_s_0;
            end

        end
    end

    // SE_redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0(STALLENABLE,145)
    // Valid signal propagation
    assign SE_redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_V0 = SE_redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_R_v_0;
    // Stall signal propagation
    assign SE_redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_backStall & SE_redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_R_v_0;
    // Backward Enable generation
    assign SE_redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_backEN = ~ (SE_redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_v_s_0 = SE_redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_backEN & SE_out_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_V1;
    // Backward Stall generation
    assign SE_redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_backStall = ~ (SE_redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_backEN == 1'b0)
            begin
                SE_redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_R_v_0 <= SE_redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_R_v_0 & SE_redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_s_tv_0;
            end
            else
            begin
                SE_redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_R_v_0 <= SE_redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_v_s_0;
            end

        end
    end

    // SE_i_cmp13_maxpool2d5(STALLENABLE,111)
    // Valid signal propagation
    assign SE_i_cmp13_maxpool2d5_V0 = SE_i_cmp13_maxpool2d5_R_v_0;
    // Stall signal propagation
    assign SE_i_cmp13_maxpool2d5_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_backStall & SE_i_cmp13_maxpool2d5_R_v_0;
    // Backward Enable generation
    assign SE_i_cmp13_maxpool2d5_backEN = ~ (SE_i_cmp13_maxpool2d5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp13_maxpool2d5_v_s_0 = SE_i_cmp13_maxpool2d5_backEN & SE_out_coalesced_delay_0_fifo_V2;
    // Backward Stall generation
    assign SE_i_cmp13_maxpool2d5_backStall = ~ (SE_i_cmp13_maxpool2d5_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp13_maxpool2d5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp13_maxpool2d5_backEN == 1'b0)
            begin
                SE_i_cmp13_maxpool2d5_R_v_0 <= SE_i_cmp13_maxpool2d5_R_v_0 & SE_i_cmp13_maxpool2d5_s_tv_0;
            end
            else
            begin
                SE_i_cmp13_maxpool2d5_R_v_0 <= SE_i_cmp13_maxpool2d5_v_s_0;
            end

        end
    end

    // bubble_join_redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo(BITJOIN,94)
    assign bubble_join_redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_q = redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_data_out;

    // bubble_select_redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo(BITSELECT,95)
    assign bubble_select_redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_b = $unsigned(bubble_join_redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm_maxpool2d7(BITJOIN,77)
    assign bubble_join_i_llvm_fpga_mem_lm_maxpool2d7_q = i_llvm_fpga_mem_lm_maxpool2d7_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm_maxpool2d7(BITSELECT,78)
    assign bubble_select_i_llvm_fpga_mem_lm_maxpool2d7_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm_maxpool2d7_q[31:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c1_in_for_cond17_preheader_maxpool2ds_c1_enter_maxpool2d11_aunroll_x(BLACKBOX,41)@154
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@158
    // out out_c1_exit_0_tpl@158
    // out out_c1_exit_1_tpl@158
    maxpool2d_i_sfc_s_c1_in_for_cond17_prehe0000c1_enter_maxpool2d11 thei_sfc_s_c1_in_for_cond17_preheader_maxpool2ds_c1_enter_maxpool2d11_aunroll_x (
        .in_i_stall(SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_backStall),
        .in_i_valid(SE_out_redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_V0),
        .in_c1_eni2_0_tpl(GND_q),
        .in_c1_eni2_1_tpl(bubble_select_i_llvm_fpga_mem_lm_maxpool2d7_b),
        .in_c1_eni2_2_tpl(bubble_select_redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_b),
        .out_o_stall(i_sfc_s_c1_in_for_cond17_preheader_maxpool2ds_c1_enter_maxpool2d11_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_cond17_preheader_maxpool2ds_c1_enter_maxpool2d11_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_for_cond17_preheader_maxpool2ds_c1_enter_maxpool2d11_aunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_1(BITJOIN,65)
    assign join_for_coalesced_delay_1_q = {bubble_select_maxpool2d_B3_merge_reg_aunroll_x_m, bubble_select_maxpool2d_B3_merge_reg_aunroll_x_l, bubble_select_maxpool2d_B3_merge_reg_aunroll_x_k, bubble_select_maxpool2d_B3_merge_reg_aunroll_x_j, bubble_select_maxpool2d_B3_merge_reg_aunroll_x_i, bubble_select_maxpool2d_B3_merge_reg_aunroll_x_f, bubble_select_maxpool2d_B3_merge_reg_aunroll_x_e};

    // coalesced_delay_1_fifo(STALLFIFO,75)
    assign coalesced_delay_1_fifo_valid_in = SE_out_maxpool2d_B3_merge_reg_aunroll_x_V4;
    assign coalesced_delay_1_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(158),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(288),
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

    // bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_reg(STALLFIFO,199)
    assign bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_reg_valid_in = SE_out_i_llvm_fpga_mem_lm_maxpool2d7_V0;
    assign bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(5),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1(STALLENABLE,156)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_V0 = SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_and0 = bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_and1 = coalesced_delay_1_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_and2 = redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_and3 = i_sfc_s_c1_in_for_cond17_preheader_maxpool2ds_c1_enter_maxpool2d11_aunroll_x_out_o_valid & SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_and4 = SE_i_cmp13_maxpool2d5_V0 & SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_and5 = SE_redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_V0 & SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_and6 = SE_redist15_i_unnamed_maxpool2d9_q_1_0_V0 & SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_and5;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_wireValid = SE_i_k_034_lc_outerphi_maxpool2d14_V0 & SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_and6;

    // redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo(STALLFIFO,70)
    assign redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_valid_in = SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_V1;
    assign redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_backStall;
    assign redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_data_in = bubble_select_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_b;
    assign redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_valid_in_bitsignaltemp = redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_valid_in[0];
    assign redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_stall_in_bitsignaltemp = redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_stall_in[0];
    assign redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_valid_out[0] = redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_valid_out_bitsignaltemp;
    assign redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_stall_out[0] = redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(149),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo (
        .valid_in(redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_valid_in_bitsignaltemp),
        .stall_in(redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_b),
        .valid_out(redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_valid_out_bitsignaltemp),
        .stall_out(redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_stall_out_bitsignaltemp),
        .data_out(redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo(STALLFIFO,69)
    assign redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_valid_in = SE_out_maxpool2d_B3_merge_reg_aunroll_x_V2;
    assign redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_stall_in = SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_backStall;
    assign redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_data_in = bubble_select_maxpool2d_B3_merge_reg_aunroll_x_h;
    assign redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_valid_in_bitsignaltemp = redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_valid_in[0];
    assign redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_stall_in_bitsignaltemp = redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_stall_in[0];
    assign redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_valid_out[0] = redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_valid_out_bitsignaltemp;
    assign redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_stall_out[0] = redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(10),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo (
        .valid_in(redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_valid_in_bitsignaltemp),
        .stall_in(redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_maxpool2d_B3_merge_reg_aunroll_x_h),
        .valid_out(redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_valid_out_bitsignaltemp),
        .stall_out(redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_stall_out_bitsignaltemp),
        .data_out(redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo(STALLENABLE,140)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_fromReg0 <= '0;
            SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_fromReg0 <= SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_toReg0;
            // Successor 1
            SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_fromReg1 <= SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_consumed0 = (~ (SE_out_i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_backStall) & SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_wireValid) | SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_fromReg0;
    assign SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_consumed1 = (~ (redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_stall_out) & SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_wireValid) | SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_fromReg1;
    // Consuming
    assign SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_StallValid = SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_backStall & SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_wireValid;
    assign SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_toReg0 = SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_StallValid & SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_consumed0;
    assign SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_toReg1 = SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_StallValid & SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_or0 = SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_consumed0;
    assign SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_wireStall = ~ (SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_consumed1 & SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_or0);
    assign SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_backStall = SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_V0 = SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_wireValid & ~ (SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_fromReg0);
    assign SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_V1 = SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_wireValid & ~ (SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_wireValid = redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_valid_out;

    // i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x(BLACKBOX,40)@1
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@10
    // out out_c0_exit33_0_tpl@10
    // out out_c0_exit33_1_tpl@10
    maxpool2d_i_sfc_s_c0_in_for_cond17_prehe0000enter3023_maxpool2d3 thei_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_backStall),
        .in_i_valid(SE_out_maxpool2d_B3_merge_reg_aunroll_x_V0),
        .in_input_size(in_input_size),
        .in_c0_eni5_0_tpl(GND_q),
        .in_c0_eni5_1_tpl(bubble_select_maxpool2d_B3_merge_reg_aunroll_x_b),
        .in_c0_eni5_2_tpl(bubble_select_maxpool2d_B3_merge_reg_aunroll_x_k),
        .in_c0_eni5_3_tpl(bubble_select_maxpool2d_B3_merge_reg_aunroll_x_m),
        .in_c0_eni5_4_tpl(bubble_select_maxpool2d_B3_merge_reg_aunroll_x_c),
        .in_c0_eni5_5_tpl(bubble_select_maxpool2d_B3_merge_reg_aunroll_x_e),
        .out_o_stall(i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_out_o_valid),
        .out_c0_exit33_0_tpl(),
        .out_c0_exit33_1_tpl(i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_out_c0_exit33_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x(STALLENABLE,127)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_backStall = i_llvm_fpga_mem_lm_maxpool2d7_out_o_stall | ~ (SE_out_i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_and0 = i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_wireValid = SE_out_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_V0 & SE_out_i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_and0;

    // SE_out_i_llvm_fpga_mem_lm_maxpool2d7(STALLENABLE,119)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm_maxpool2d7_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm_maxpool2d7_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm_maxpool2d7_fromReg0 <= SE_out_i_llvm_fpga_mem_lm_maxpool2d7_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm_maxpool2d7_fromReg1 <= SE_out_i_llvm_fpga_mem_lm_maxpool2d7_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm_maxpool2d7_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_reg_stall_out) & SE_out_i_llvm_fpga_mem_lm_maxpool2d7_wireValid) | SE_out_i_llvm_fpga_mem_lm_maxpool2d7_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm_maxpool2d7_consumed1 = (~ (SE_out_redist1_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_2_tpl_153_fifo_backStall) & SE_out_i_llvm_fpga_mem_lm_maxpool2d7_wireValid) | SE_out_i_llvm_fpga_mem_lm_maxpool2d7_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm_maxpool2d7_StallValid = SE_out_i_llvm_fpga_mem_lm_maxpool2d7_backStall & SE_out_i_llvm_fpga_mem_lm_maxpool2d7_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm_maxpool2d7_toReg0 = SE_out_i_llvm_fpga_mem_lm_maxpool2d7_StallValid & SE_out_i_llvm_fpga_mem_lm_maxpool2d7_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm_maxpool2d7_toReg1 = SE_out_i_llvm_fpga_mem_lm_maxpool2d7_StallValid & SE_out_i_llvm_fpga_mem_lm_maxpool2d7_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm_maxpool2d7_or0 = SE_out_i_llvm_fpga_mem_lm_maxpool2d7_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm_maxpool2d7_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm_maxpool2d7_consumed1 & SE_out_i_llvm_fpga_mem_lm_maxpool2d7_or0);
    assign SE_out_i_llvm_fpga_mem_lm_maxpool2d7_backStall = SE_out_i_llvm_fpga_mem_lm_maxpool2d7_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm_maxpool2d7_V0 = SE_out_i_llvm_fpga_mem_lm_maxpool2d7_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm_maxpool2d7_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm_maxpool2d7_V1 = SE_out_i_llvm_fpga_mem_lm_maxpool2d7_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm_maxpool2d7_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm_maxpool2d7_wireValid = i_llvm_fpga_mem_lm_maxpool2d7_out_o_valid;

    // bubble_join_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo(BITJOIN,97)
    assign bubble_join_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_q = redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_data_out;

    // bubble_select_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo(BITSELECT,98)
    assign bubble_select_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_b = $unsigned(bubble_join_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_q[0:0]);

    // bubble_join_i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x(BITJOIN,85)
    assign bubble_join_i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_q = i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_out_c0_exit33_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x(BITSELECT,86)
    assign bubble_select_i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_q[63:0]);

    // i_llvm_fpga_mem_lm_maxpool2d7(BLACKBOX,19)@10
    // in in_i_stall@20000000
    // out out_lm_maxpool2d_avm_address@20000000
    // out out_lm_maxpool2d_avm_burstcount@20000000
    // out out_lm_maxpool2d_avm_byteenable@20000000
    // out out_lm_maxpool2d_avm_enable@20000000
    // out out_lm_maxpool2d_avm_read@20000000
    // out out_lm_maxpool2d_avm_write@20000000
    // out out_lm_maxpool2d_avm_writedata@20000000
    // out out_o_readdata@154
    // out out_o_stall@20000000
    // out out_o_valid@154
    maxpool2d_i_llvm_fpga_mem_lm_0 thei_llvm_fpga_mem_lm_maxpool2d7 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_b),
        .in_i_predicate(bubble_select_redist6_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm_maxpool2d7_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_cond17_preheader_maxpool2ds_c0_enter3023_maxpool2d3_aunroll_x_V0),
        .in_lm_maxpool2d_avm_readdata(in_lm_maxpool2d_avm_readdata),
        .in_lm_maxpool2d_avm_readdatavalid(in_lm_maxpool2d_avm_readdatavalid),
        .in_lm_maxpool2d_avm_waitrequest(in_lm_maxpool2d_avm_waitrequest),
        .in_lm_maxpool2d_avm_writeack(in_lm_maxpool2d_avm_writeack),
        .out_lm_maxpool2d_avm_address(i_llvm_fpga_mem_lm_maxpool2d7_out_lm_maxpool2d_avm_address),
        .out_lm_maxpool2d_avm_burstcount(i_llvm_fpga_mem_lm_maxpool2d7_out_lm_maxpool2d_avm_burstcount),
        .out_lm_maxpool2d_avm_byteenable(i_llvm_fpga_mem_lm_maxpool2d7_out_lm_maxpool2d_avm_byteenable),
        .out_lm_maxpool2d_avm_enable(i_llvm_fpga_mem_lm_maxpool2d7_out_lm_maxpool2d_avm_enable),
        .out_lm_maxpool2d_avm_read(i_llvm_fpga_mem_lm_maxpool2d7_out_lm_maxpool2d_avm_read),
        .out_lm_maxpool2d_avm_write(i_llvm_fpga_mem_lm_maxpool2d7_out_lm_maxpool2d_avm_write),
        .out_lm_maxpool2d_avm_writedata(i_llvm_fpga_mem_lm_maxpool2d7_out_lm_maxpool2d_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm_maxpool2d7_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm_maxpool2d7_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm_maxpool2d7_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,11)
    assign out_lm_maxpool2d_avm_address = i_llvm_fpga_mem_lm_maxpool2d7_out_lm_maxpool2d_avm_address;
    assign out_lm_maxpool2d_avm_enable = i_llvm_fpga_mem_lm_maxpool2d7_out_lm_maxpool2d_avm_enable;
    assign out_lm_maxpool2d_avm_read = i_llvm_fpga_mem_lm_maxpool2d7_out_lm_maxpool2d_avm_read;
    assign out_lm_maxpool2d_avm_write = i_llvm_fpga_mem_lm_maxpool2d7_out_lm_maxpool2d_avm_write;
    assign out_lm_maxpool2d_avm_writedata = i_llvm_fpga_mem_lm_maxpool2d7_out_lm_maxpool2d_avm_writedata;
    assign out_lm_maxpool2d_avm_byteenable = i_llvm_fpga_mem_lm_maxpool2d7_out_lm_maxpool2d_avm_byteenable;
    assign out_lm_maxpool2d_avm_burstcount = i_llvm_fpga_mem_lm_maxpool2d7_out_lm_maxpool2d_avm_burstcount;

    // sync_out(GPOUT,35)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo(BITJOIN,103)
    assign bubble_join_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_q = redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_data_out;

    // bubble_select_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo(BITSELECT,104)
    assign bubble_select_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_b = $unsigned(bubble_join_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_q[31:0]);

    // redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0(REG,72)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_backEN == 1'b1)
        begin
            redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_q <= $unsigned(bubble_select_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_b);
        end
    end

    // c_i32_019(CONSTANT,5)
    assign c_i32_019_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_320(CONSTANT,7)
    assign c_i32_320_q = $unsigned(32'b00000000000000000000000000000011);

    // i_cmp18_maxpool2d6(COMPARE,13)@157
    assign i_cmp18_maxpool2d6_a = {2'b00, bubble_select_redist13_bgTrunc_i_inc_maxpool2d1_sel_x_b_156_fifo_b};
    assign i_cmp18_maxpool2d6_b = {2'b00, c_i32_320_q};
    assign i_cmp18_maxpool2d6_o = $unsigned(i_cmp18_maxpool2d6_a) - $unsigned(i_cmp18_maxpool2d6_b);
    assign i_cmp18_maxpool2d6_c[0] = i_cmp18_maxpool2d6_o[33];

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,106)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,107)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[32:0]);

    // sel_for_coalesced_delay_0(BITSELECT,63)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[32:32]);

    // i_unnamed_maxpool2d9(LOGICAL,21)@157
    assign i_unnamed_maxpool2d9_q = sel_for_coalesced_delay_0_c & i_cmp18_maxpool2d6_c;

    // redist15_i_unnamed_maxpool2d9_q_1_0(REG,73)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_unnamed_maxpool2d9_q_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist15_i_unnamed_maxpool2d9_q_1_0_backEN == 1'b1)
        begin
            redist15_i_unnamed_maxpool2d9_q_1_0_q <= $unsigned(i_unnamed_maxpool2d9_q);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_l_032_lc_innerphi_maxpool2d13(MUX,18)@158
    assign i_l_032_lc_innerphi_maxpool2d13_s = redist15_i_unnamed_maxpool2d9_q_1_0_q;
    always @(i_l_032_lc_innerphi_maxpool2d13_s or c_i32_019_q or redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_q)
    begin
        unique case (i_l_032_lc_innerphi_maxpool2d13_s)
            1'b0 : i_l_032_lc_innerphi_maxpool2d13_q = c_i32_019_q;
            1'b1 : i_l_032_lc_innerphi_maxpool2d13_q = redist14_bgTrunc_i_inc_maxpool2d1_sel_x_b_157_0_q;
            default : i_l_032_lc_innerphi_maxpool2d13_q = 32'b0;
        endcase
    end

    // i_inc30_maxpool2d0(ADD,15)@157
    assign i_inc30_maxpool2d0_a = {1'b0, sel_for_coalesced_delay_0_b};
    assign i_inc30_maxpool2d0_b = {1'b0, c_i32_116_q};
    assign i_inc30_maxpool2d0_o = $unsigned(i_inc30_maxpool2d0_a) + $unsigned(i_inc30_maxpool2d0_b);
    assign i_inc30_maxpool2d0_q = i_inc30_maxpool2d0_o[32:0];

    // bgTrunc_i_inc30_maxpool2d0_sel_x(BITSELECT,37)@157
    assign bgTrunc_i_inc30_maxpool2d0_sel_x_b = i_inc30_maxpool2d0_q[31:0];

    // i_k_034_lc_outerphi_maxpool2d14(MUX,17)@157 + 1
    assign i_k_034_lc_outerphi_maxpool2d14_s = i_unnamed_maxpool2d9_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_k_034_lc_outerphi_maxpool2d14_q <= 32'b0;
        end
        else if (SE_i_k_034_lc_outerphi_maxpool2d14_backEN == 1'b1)
        begin
            unique case (i_k_034_lc_outerphi_maxpool2d14_s)
                1'b0 : i_k_034_lc_outerphi_maxpool2d14_q <= bgTrunc_i_inc30_maxpool2d0_sel_x_b;
                1'b1 : i_k_034_lc_outerphi_maxpool2d14_q <= sel_for_coalesced_delay_0_b;
                default : i_k_034_lc_outerphi_maxpool2d14_q <= 32'b0;
            endcase
        end
    end

    // i_cmp13_maxpool2d5(COMPARE,12)@157 + 1
    assign i_cmp13_maxpool2d5_a = {2'b00, bgTrunc_i_inc30_maxpool2d0_sel_x_b};
    assign i_cmp13_maxpool2d5_b = {2'b00, c_i32_320_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp13_maxpool2d5_o <= 34'b0;
        end
        else if (SE_i_cmp13_maxpool2d5_backEN == 1'b1)
        begin
            i_cmp13_maxpool2d5_o <= $unsigned(i_cmp13_maxpool2d5_a) - $unsigned(i_cmp13_maxpool2d5_b);
        end
    end
    assign i_cmp13_maxpool2d5_c[0] = i_cmp13_maxpool2d5_o[33];

    // i_unnamed_maxpool2d8(LOGICAL,20)@158
    assign i_unnamed_maxpool2d8_q = redist5_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_5_tpl_157_0_q & i_cmp13_maxpool2d5_c;

    // i_for_cond_cleanup15_lc_cond_maxpool2d15(LOGICAL,14)@158
    assign i_for_cond_cleanup15_lc_cond_maxpool2d15_q = redist15_i_unnamed_maxpool2d9_q_1_0_q | i_unnamed_maxpool2d8_q;

    // bubble_join_i_sfc_s_c1_in_for_cond17_preheader_maxpool2ds_c1_enter_maxpool2d11_aunroll_x(BITJOIN,88)
    assign bubble_join_i_sfc_s_c1_in_for_cond17_preheader_maxpool2ds_c1_enter_maxpool2d11_aunroll_x_q = i_sfc_s_c1_in_for_cond17_preheader_maxpool2ds_c1_enter_maxpool2d11_aunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_for_cond17_preheader_maxpool2ds_c1_enter_maxpool2d11_aunroll_x(BITSELECT,89)
    assign bubble_select_i_sfc_s_c1_in_for_cond17_preheader_maxpool2ds_c1_enter_maxpool2d11_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_cond17_preheader_maxpool2ds_c1_enter_maxpool2d11_aunroll_x_q[31:0]);

    // bubble_join_redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo(BITJOIN,100)
    assign bubble_join_redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_q = redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_data_out;

    // bubble_select_redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo(BITSELECT,101)
    assign bubble_select_redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_b = $unsigned(bubble_join_redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_q[0:0]);

    // redist5_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_5_tpl_157_0(REG,68)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_5_tpl_157_0_q <= $unsigned(1'b0);
        end
        else if (SE_i_cmp13_maxpool2d5_backEN == 1'b1)
        begin
            redist5_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_5_tpl_157_0_q <= $unsigned(sel_for_coalesced_delay_0_c);
        end
    end

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,109)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,110)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[287:0]);

    // sel_for_coalesced_delay_1(BITSELECT,66)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[127:64]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[159:128]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[191:160]);
    assign sel_for_coalesced_delay_1_f = $unsigned(bubble_select_coalesced_delay_1_fifo_b[223:192]);
    assign sel_for_coalesced_delay_1_g = $unsigned(bubble_select_coalesced_delay_1_fifo_b[255:224]);
    assign sel_for_coalesced_delay_1_h = $unsigned(bubble_select_coalesced_delay_1_fifo_b[287:256]);

    // dupName_0_sync_out_x(GPOUT,39)@158
    assign out_c0_exe11 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe12819 = sel_for_coalesced_delay_1_g;
    assign out_c0_exe25 = sel_for_coalesced_delay_1_c;
    assign out_c0_exe37 = redist5_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_5_tpl_157_0_q;
    assign out_c0_exe410 = bubble_select_redist7_maxpool2d_B3_merge_reg_aunroll_x_out_data_out_6_tpl_157_fifo_b;
    assign out_c1_exe1 = bubble_select_i_sfc_s_c1_in_for_cond17_preheader_maxpool2ds_c1_enter_maxpool2d11_aunroll_x_b;
    assign out_for_cond_cleanup15_LC_COND = i_for_cond_cleanup15_lc_cond_maxpool2d15_q;
    assign out_i_03814 = sel_for_coalesced_delay_1_d;
    assign out_j_03616 = sel_for_coalesced_delay_1_e;
    assign out_k_034_LC_OuterPHI = i_k_034_lc_outerphi_maxpool2d14_q;
    assign out_l_032_LC_InnerPHI = i_l_032_lc_innerphi_maxpool2d13_q;
    assign out_mul2217 = sel_for_coalesced_delay_1_f;
    assign out_mul2420 = sel_for_coalesced_delay_1_h;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_mem_lm_maxpool2d7_1_V0;

endmodule
