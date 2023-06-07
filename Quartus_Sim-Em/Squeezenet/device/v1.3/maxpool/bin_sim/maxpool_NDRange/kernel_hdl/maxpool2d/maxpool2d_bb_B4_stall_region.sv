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

// SystemVerilog created from maxpool2d_bb_B4_stall_region
// SystemVerilog created on Sat Jun  3 12:58:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_bb_B4_stall_region (
    input wire [511:0] in_unnamed_maxpool2d1_maxpool2d_avm_readdata,
    input wire [0:0] in_unnamed_maxpool2d1_maxpool2d_avm_writeack,
    input wire [0:0] in_unnamed_maxpool2d1_maxpool2d_avm_waitrequest,
    input wire [0:0] in_unnamed_maxpool2d1_maxpool2d_avm_readdatavalid,
    output wire [30:0] out_unnamed_maxpool2d1_maxpool2d_avm_address,
    output wire [0:0] out_unnamed_maxpool2d1_maxpool2d_avm_enable,
    output wire [0:0] out_unnamed_maxpool2d1_maxpool2d_avm_read,
    output wire [0:0] out_unnamed_maxpool2d1_maxpool2d_avm_write,
    output wire [511:0] out_unnamed_maxpool2d1_maxpool2d_avm_writedata,
    output wire [63:0] out_unnamed_maxpool2d1_maxpool2d_avm_byteenable,
    output wire [4:0] out_unnamed_maxpool2d1_maxpool2d_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [31:0] in_output_size,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe12818,
    input wire [63:0] in_c0_exe13,
    input wire [63:0] in_c0_exe24,
    input wire [0:0] in_c0_exe39,
    input wire [0:0] in_c0_exe412,
    input wire [31:0] in_c1_exe121,
    input wire [31:0] in_i_03813,
    input wire [31:0] in_j_03615,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_lsu_unnamed_maxpool2d1_o_active,
    output wire [63:0] out_c0_exe13,
    output wire [63:0] out_c0_exe24,
    output wire [0:0] out_c0_exe39,
    output wire [0:0] out_c0_exe412,
    output wire [0:0] out_for_cond_cleanup_LC_COND,
    output wire [31:0] out_i_038_LC_OuterPHI,
    output wire [31:0] out_j_036_LC_InnerPHI,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_019_q;
    wire [31:0] c_i32_117_q;
    wire [32:0] i_add33_maxpool2d0_a;
    wire [32:0] i_add33_maxpool2d0_b;
    logic [32:0] i_add33_maxpool2d0_o;
    wire [32:0] i_add33_maxpool2d0_q;
    wire [33:0] i_cmp8_maxpool2d6_a;
    wire [33:0] i_cmp8_maxpool2d6_b;
    logic [33:0] i_cmp8_maxpool2d6_o;
    wire [0:0] i_cmp8_maxpool2d6_c;
    wire [33:0] i_cmp_maxpool2d11_a;
    wire [33:0] i_cmp_maxpool2d11_b;
    logic [33:0] i_cmp_maxpool2d11_o;
    wire [0:0] i_cmp_maxpool2d11_c;
    wire [0:0] i_for_cond_cleanup_lc_cond_maxpool2d16_q;
    wire [0:0] i_i_038_lc_outerphi_maxpool2d15_s;
    reg [31:0] i_i_038_lc_outerphi_maxpool2d15_q;
    wire [32:0] i_inc37_maxpool2d4_a;
    wire [32:0] i_inc37_maxpool2d4_b;
    logic [32:0] i_inc37_maxpool2d4_o;
    wire [32:0] i_inc37_maxpool2d4_q;
    wire [32:0] i_inc40_maxpool2d9_a;
    wire [32:0] i_inc40_maxpool2d9_b;
    logic [32:0] i_inc40_maxpool2d9_o;
    wire [32:0] i_inc40_maxpool2d9_q;
    wire [0:0] i_j_036_lc_innerphi_maxpool2d14_s;
    reg [31:0] i_j_036_lc_innerphi_maxpool2d14_q;
    wire [0:0] i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_lsu_unnamed_maxpool2d1_o_active;
    wire [0:0] i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_unnamed_maxpool2d1_maxpool2d_avm_address;
    wire [4:0] i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_unnamed_maxpool2d1_maxpool2d_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_unnamed_maxpool2d1_maxpool2d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_unnamed_maxpool2d1_maxpool2d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_unnamed_maxpool2d1_maxpool2d_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_unnamed_maxpool2d1_maxpool2d_avm_write;
    wire [511:0] i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_unnamed_maxpool2d1_maxpool2d_avm_writedata;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_out_valid_out;
    wire [0:0] i_unnamed_maxpool2d13_q;
    wire [0:0] i_unnamed_maxpool2d8_q;
    wire [31:0] bgTrunc_i_add33_maxpool2d0_sel_x_b;
    wire [31:0] bgTrunc_i_inc37_maxpool2d4_sel_x_b;
    wire [31:0] bgTrunc_i_inc40_maxpool2d9_sel_x_b;
    wire [64:0] i_arrayidx354_maxpool2d0_add_x_a;
    wire [64:0] i_arrayidx354_maxpool2d0_add_x_b;
    logic [64:0] i_arrayidx354_maxpool2d0_add_x_o;
    wire [64:0] i_arrayidx354_maxpool2d0_add_x_q;
    wire [1:0] i_arrayidx354_maxpool2d0_c_i2_01_x_q;
    wire [61:0] i_arrayidx354_maxpool2d0_narrow_x_b;
    wire [63:0] i_arrayidx354_maxpool2d0_shift_join_x_q;
    wire [63:0] i_arrayidx354_maxpool2d0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom34_maxpool2d1_sel_x_b;
    wire [96:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [32:0] join_for_coalesced_delay_1_q;
    wire [31:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [64:0] join_for_coalesced_delay_2_q;
    wire [63:0] sel_for_coalesced_delay_2_b;
    wire [0:0] sel_for_coalesced_delay_2_c;
    reg [31:0] redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_q;
    reg [31:0] redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_q;
    reg [31:0] redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_q;
    reg [31:0] redist2_bgTrunc_i_add33_maxpool2d0_sel_x_b_1_0_q;
    reg [63:0] redist3_stall_entry_o5_3_0_q;
    reg [63:0] redist3_stall_entry_o5_3_1_q;
    reg [63:0] redist3_stall_entry_o5_3_2_q;
    reg [0:0] redist7_stall_entry_o7_3_0_q;
    reg [0:0] redist12_i_unnamed_maxpool2d8_q_1_0_q;
    reg [96:0] coalesced_delay_0_0_q;
    reg [32:0] coalesced_delay_1_0_q;
    reg [32:0] coalesced_delay_1_1_q;
    reg [64:0] coalesced_delay_2_0_q;
    reg [64:0] coalesced_delay_2_1_q;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_b;
    wire [257:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [63:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [0:0] SE_i_cmp8_maxpool2d6_wireValid;
    wire [0:0] SE_i_cmp8_maxpool2d6_wireStall;
    wire [0:0] SE_i_cmp8_maxpool2d6_StallValid;
    wire [0:0] SE_i_cmp8_maxpool2d6_toReg0;
    reg [0:0] SE_i_cmp8_maxpool2d6_fromReg0;
    wire [0:0] SE_i_cmp8_maxpool2d6_consumed0;
    wire [0:0] SE_i_cmp8_maxpool2d6_toReg1;
    reg [0:0] SE_i_cmp8_maxpool2d6_fromReg1;
    wire [0:0] SE_i_cmp8_maxpool2d6_consumed1;
    wire [0:0] SE_i_cmp8_maxpool2d6_and0;
    wire [0:0] SE_i_cmp8_maxpool2d6_or0;
    wire [0:0] SE_i_cmp8_maxpool2d6_backStall;
    wire [0:0] SE_i_cmp8_maxpool2d6_V0;
    wire [0:0] SE_i_cmp8_maxpool2d6_V1;
    reg [0:0] SE_i_cmp_maxpool2d11_R_v_0;
    wire [0:0] SE_i_cmp_maxpool2d11_v_s_0;
    wire [0:0] SE_i_cmp_maxpool2d11_s_tv_0;
    wire [0:0] SE_i_cmp_maxpool2d11_backEN;
    wire [0:0] SE_i_cmp_maxpool2d11_and0;
    wire [0:0] SE_i_cmp_maxpool2d11_backStall;
    wire [0:0] SE_i_cmp_maxpool2d11_V0;
    reg [0:0] SE_i_i_038_lc_outerphi_maxpool2d15_R_v_0;
    wire [0:0] SE_i_i_038_lc_outerphi_maxpool2d15_v_s_0;
    wire [0:0] SE_i_i_038_lc_outerphi_maxpool2d15_s_tv_0;
    wire [0:0] SE_i_i_038_lc_outerphi_maxpool2d15_backEN;
    wire [0:0] SE_i_i_038_lc_outerphi_maxpool2d15_and0;
    wire [0:0] SE_i_i_038_lc_outerphi_maxpool2d15_backStall;
    wire [0:0] SE_i_i_038_lc_outerphi_maxpool2d15_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_or0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_V1;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_or0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_V1;
    wire [0:0] SE_i_unnamed_maxpool2d13_wireValid;
    wire [0:0] SE_i_unnamed_maxpool2d13_and0;
    wire [0:0] SE_i_unnamed_maxpool2d13_and1;
    wire [0:0] SE_i_unnamed_maxpool2d13_and2;
    wire [0:0] SE_i_unnamed_maxpool2d13_and3;
    wire [0:0] SE_i_unnamed_maxpool2d13_and4;
    wire [0:0] SE_i_unnamed_maxpool2d13_and5;
    wire [0:0] SE_i_unnamed_maxpool2d13_backStall;
    wire [0:0] SE_i_unnamed_maxpool2d13_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    reg [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_R_v_0;
    reg [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_R_v_1;
    wire [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_s_tv_1;
    wire [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_or0;
    wire [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_V0;
    wire [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_V1;
    reg [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_0;
    reg [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_1;
    reg [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_2;
    reg [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_3;
    wire [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_s_tv_1;
    wire [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_s_tv_2;
    wire [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_s_tv_3;
    wire [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_or0;
    wire [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_or1;
    wire [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_or2;
    wire [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_V0;
    wire [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_V1;
    wire [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_V2;
    wire [0:0] SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_V3;
    reg [0:0] SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_R_v_0;
    wire [0:0] SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_v_s_0;
    wire [0:0] SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_s_tv_0;
    wire [0:0] SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_backEN;
    wire [0:0] SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_backStall;
    wire [0:0] SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_V0;
    reg [0:0] SE_redist12_i_unnamed_maxpool2d8_q_1_0_R_v_0;
    wire [0:0] SE_redist12_i_unnamed_maxpool2d8_q_1_0_v_s_0;
    wire [0:0] SE_redist12_i_unnamed_maxpool2d8_q_1_0_s_tv_0;
    wire [0:0] SE_redist12_i_unnamed_maxpool2d8_q_1_0_backEN;
    wire [0:0] SE_redist12_i_unnamed_maxpool2d8_q_1_0_backStall;
    wire [0:0] SE_redist12_i_unnamed_maxpool2d8_q_1_0_V0;
    wire [0:0] SE_out_bubble_out_stall_entry_1_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_1_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_1_V0;
    wire [0:0] SE_out_bubble_out_stall_entry_2_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_2_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_2_V0;
    reg [0:0] bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_1_reg_V0;
    wire [0:0] bubble_out_stall_entry_1_reg_valid_in;
    wire bubble_out_stall_entry_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_1_reg_stall_in;
    wire bubble_out_stall_entry_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_1_reg_valid_out;
    wire bubble_out_stall_entry_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_1_reg_stall_out;
    wire bubble_out_stall_entry_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_2_reg_valid_in;
    wire bubble_out_stall_entry_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_2_reg_stall_in;
    wire bubble_out_stall_entry_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_2_reg_valid_out;
    wire bubble_out_stall_entry_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_2_reg_stall_out;
    wire bubble_out_stall_entry_2_reg_stall_out_bitsignaltemp;


    // bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_1_reg(STALLENABLE,183)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_1_reg_V0 = bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_1_reg_s_tv_0 = SE_i_unnamed_maxpool2d13_backStall & bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_1_reg_v_s_0 = bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_1_reg_backEN & SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_1_reg_R_v_0 & bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_1_reg_v_s_0;
            end

        end
    end

    // bubble_out_stall_entry_2_reg(STALLFIFO,185)
    assign bubble_out_stall_entry_2_reg_valid_in = SE_stall_entry_V1;
    assign bubble_out_stall_entry_2_reg_stall_in = SE_out_bubble_out_stall_entry_2_backStall;
    assign bubble_out_stall_entry_2_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_2_reg_valid_in[0];
    assign bubble_out_stall_entry_2_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_2_reg_stall_in[0];
    assign bubble_out_stall_entry_2_reg_valid_out[0] = bubble_out_stall_entry_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_2_reg_stall_out[0] = bubble_out_stall_entry_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_stall_entry_2_reg (
        .valid_in(bubble_out_stall_entry_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_stall_entry_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_stall_entry_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_stall_entry_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_stall_entry_2(STALLENABLE,179)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_2_V0 = SE_out_bubble_out_stall_entry_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_2_backStall = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_out_stall_out | ~ (SE_out_bubble_out_stall_entry_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_2_wireValid = bubble_out_stall_entry_2_reg_valid_out;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10(BLACKBOX,24)@2
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    maxpool2d_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_0 thei_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10 (
        .in_buffer_in(in_output_size),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_backStall),
        .in_valid_in(SE_out_bubble_out_stall_entry_2_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10(STALLENABLE,125)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_fromReg0 <= '0;
            SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_fromReg0 <= SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_fromReg1 <= SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_consumed0 = (~ (bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_1_reg_backStall) & SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_wireValid) | SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_fromReg0;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_consumed1 = (~ (SE_i_cmp_maxpool2d11_backStall) & SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_wireValid) | SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_StallValid = SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_backStall & SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_wireValid;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_toReg0 = SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_StallValid & SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_consumed0;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_toReg1 = SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_StallValid & SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_or0 = SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_consumed0;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_wireStall = ~ (SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_consumed1 & SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_or0);
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_backStall = SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_wireValid & ~ (SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_fromReg0);
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_V1 = SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_wireValid & ~ (SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_wireValid = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_out_valid_out;

    // SE_i_cmp_maxpool2d11(STALLENABLE,114)
    // Valid signal propagation
    assign SE_i_cmp_maxpool2d11_V0 = SE_i_cmp_maxpool2d11_R_v_0;
    // Stall signal propagation
    assign SE_i_cmp_maxpool2d11_s_tv_0 = SE_i_unnamed_maxpool2d13_backStall & SE_i_cmp_maxpool2d11_R_v_0;
    // Backward Enable generation
    assign SE_i_cmp_maxpool2d11_backEN = ~ (SE_i_cmp_maxpool2d11_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp_maxpool2d11_and0 = SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_V3 & SE_i_cmp_maxpool2d11_backEN;
    assign SE_i_cmp_maxpool2d11_v_s_0 = SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_V1 & SE_i_cmp_maxpool2d11_and0;
    // Backward Stall generation
    assign SE_i_cmp_maxpool2d11_backStall = ~ (SE_i_cmp_maxpool2d11_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp_maxpool2d11_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp_maxpool2d11_backEN == 1'b0)
            begin
                SE_i_cmp_maxpool2d11_R_v_0 <= SE_i_cmp_maxpool2d11_R_v_0 & SE_i_cmp_maxpool2d11_s_tv_0;
            end
            else
            begin
                SE_i_cmp_maxpool2d11_R_v_0 <= SE_i_cmp_maxpool2d11_v_s_0;
            end

        end
    end

    // SE_i_i_038_lc_outerphi_maxpool2d15(STALLENABLE,116)
    // Valid signal propagation
    assign SE_i_i_038_lc_outerphi_maxpool2d15_V0 = SE_i_i_038_lc_outerphi_maxpool2d15_R_v_0;
    // Stall signal propagation
    assign SE_i_i_038_lc_outerphi_maxpool2d15_s_tv_0 = SE_i_unnamed_maxpool2d13_backStall & SE_i_i_038_lc_outerphi_maxpool2d15_R_v_0;
    // Backward Enable generation
    assign SE_i_i_038_lc_outerphi_maxpool2d15_backEN = ~ (SE_i_i_038_lc_outerphi_maxpool2d15_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_i_038_lc_outerphi_maxpool2d15_and0 = SE_i_cmp8_maxpool2d6_V0 & SE_i_i_038_lc_outerphi_maxpool2d15_backEN;
    assign SE_i_i_038_lc_outerphi_maxpool2d15_v_s_0 = SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_V2 & SE_i_i_038_lc_outerphi_maxpool2d15_and0;
    // Backward Stall generation
    assign SE_i_i_038_lc_outerphi_maxpool2d15_backStall = ~ (SE_i_i_038_lc_outerphi_maxpool2d15_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_i_038_lc_outerphi_maxpool2d15_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_i_038_lc_outerphi_maxpool2d15_backEN == 1'b0)
            begin
                SE_i_i_038_lc_outerphi_maxpool2d15_R_v_0 <= SE_i_i_038_lc_outerphi_maxpool2d15_R_v_0 & SE_i_i_038_lc_outerphi_maxpool2d15_s_tv_0;
            end
            else
            begin
                SE_i_i_038_lc_outerphi_maxpool2d15_R_v_0 <= SE_i_i_038_lc_outerphi_maxpool2d15_v_s_0;
            end

        end
    end

    // SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0(STALLENABLE,146)
    // Valid signal propagation
    assign SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_V0 = SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_R_v_0;
    // Stall signal propagation
    assign SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_s_tv_0 = SE_i_unnamed_maxpool2d13_backStall & SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_R_v_0;
    // Backward Enable generation
    assign SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_backEN = ~ (SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_v_s_0 = SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_backEN & SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_V1;
    // Backward Stall generation
    assign SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_backStall = ~ (SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_backEN == 1'b0)
            begin
                SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_R_v_0 <= SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_R_v_0 & SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_s_tv_0;
            end
            else
            begin
                SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_R_v_0 <= SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_v_s_0;
            end

        end
    end

    // SE_redist12_i_unnamed_maxpool2d8_q_1_0(STALLENABLE,152)
    // Valid signal propagation
    assign SE_redist12_i_unnamed_maxpool2d8_q_1_0_V0 = SE_redist12_i_unnamed_maxpool2d8_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist12_i_unnamed_maxpool2d8_q_1_0_s_tv_0 = SE_i_unnamed_maxpool2d13_backStall & SE_redist12_i_unnamed_maxpool2d8_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist12_i_unnamed_maxpool2d8_q_1_0_backEN = ~ (SE_redist12_i_unnamed_maxpool2d8_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist12_i_unnamed_maxpool2d8_q_1_0_v_s_0 = SE_redist12_i_unnamed_maxpool2d8_q_1_0_backEN & SE_i_cmp8_maxpool2d6_V1;
    // Backward Stall generation
    assign SE_redist12_i_unnamed_maxpool2d8_q_1_0_backStall = ~ (SE_redist12_i_unnamed_maxpool2d8_q_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist12_i_unnamed_maxpool2d8_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist12_i_unnamed_maxpool2d8_q_1_0_backEN == 1'b0)
            begin
                SE_redist12_i_unnamed_maxpool2d8_q_1_0_R_v_0 <= SE_redist12_i_unnamed_maxpool2d8_q_1_0_R_v_0 & SE_redist12_i_unnamed_maxpool2d8_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist12_i_unnamed_maxpool2d8_q_1_0_R_v_0 <= SE_redist12_i_unnamed_maxpool2d8_q_1_0_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_1_reg(STALLENABLE,182)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_1_reg_V0 = bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_1_reg_s_tv_0 = SE_i_unnamed_maxpool2d13_backStall & bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_1_reg_v_s_0 = bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_1_reg_backEN & SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_1_reg_R_v_0 & bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_1_reg_v_s_0;
            end

        end
    end

    // bubble_out_stall_entry_1_reg(STALLFIFO,184)
    assign bubble_out_stall_entry_1_reg_valid_in = SE_stall_entry_V0;
    assign bubble_out_stall_entry_1_reg_stall_in = SE_out_bubble_out_stall_entry_1_backStall;
    assign bubble_out_stall_entry_1_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_1_reg_valid_in[0];
    assign bubble_out_stall_entry_1_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_1_reg_stall_in[0];
    assign bubble_out_stall_entry_1_reg_valid_out[0] = bubble_out_stall_entry_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_1_reg_stall_out[0] = bubble_out_stall_entry_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_stall_entry_1_reg (
        .valid_in(bubble_out_stall_entry_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_stall_entry_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_stall_entry_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_stall_entry_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_stall_entry_1(STALLENABLE,177)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_1_V0 = SE_out_bubble_out_stall_entry_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_1_backStall = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_out_stall_out | ~ (SE_out_bubble_out_stall_entry_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_1_wireValid = bubble_out_stall_entry_1_reg_valid_out;

    // i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5(BLACKBOX,23)@2
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    maxpool2d_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_0 thei_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5 (
        .in_buffer_in(in_output_size),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_backStall),
        .in_valid_in(SE_out_bubble_out_stall_entry_1_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5(STALLENABLE,123)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_fromReg0 <= '0;
            SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_fromReg0 <= SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_fromReg1 <= SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_consumed0 = (~ (bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_1_reg_backStall) & SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_wireValid) | SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_fromReg0;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_consumed1 = (~ (SE_i_cmp8_maxpool2d6_backStall) & SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_wireValid) | SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_StallValid = SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_backStall & SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_wireValid;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_toReg0 = SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_StallValid & SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_consumed0;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_toReg1 = SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_StallValid & SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_or0 = SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_consumed0;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_wireStall = ~ (SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_consumed1 & SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_or0);
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_backStall = SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_wireValid & ~ (SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_fromReg0);
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_V1 = SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_wireValid & ~ (SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_wireValid = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_out_valid_out;

    // SE_i_cmp8_maxpool2d6(STALLENABLE,113)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp8_maxpool2d6_fromReg0 <= '0;
            SE_i_cmp8_maxpool2d6_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_cmp8_maxpool2d6_fromReg0 <= SE_i_cmp8_maxpool2d6_toReg0;
            // Successor 1
            SE_i_cmp8_maxpool2d6_fromReg1 <= SE_i_cmp8_maxpool2d6_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_cmp8_maxpool2d6_consumed0 = (~ (SE_i_i_038_lc_outerphi_maxpool2d15_backStall) & SE_i_cmp8_maxpool2d6_wireValid) | SE_i_cmp8_maxpool2d6_fromReg0;
    assign SE_i_cmp8_maxpool2d6_consumed1 = (~ (SE_redist12_i_unnamed_maxpool2d8_q_1_0_backStall) & SE_i_cmp8_maxpool2d6_wireValid) | SE_i_cmp8_maxpool2d6_fromReg1;
    // Consuming
    assign SE_i_cmp8_maxpool2d6_StallValid = SE_i_cmp8_maxpool2d6_backStall & SE_i_cmp8_maxpool2d6_wireValid;
    assign SE_i_cmp8_maxpool2d6_toReg0 = SE_i_cmp8_maxpool2d6_StallValid & SE_i_cmp8_maxpool2d6_consumed0;
    assign SE_i_cmp8_maxpool2d6_toReg1 = SE_i_cmp8_maxpool2d6_StallValid & SE_i_cmp8_maxpool2d6_consumed1;
    // Backward Stall generation
    assign SE_i_cmp8_maxpool2d6_or0 = SE_i_cmp8_maxpool2d6_consumed0;
    assign SE_i_cmp8_maxpool2d6_wireStall = ~ (SE_i_cmp8_maxpool2d6_consumed1 & SE_i_cmp8_maxpool2d6_or0);
    assign SE_i_cmp8_maxpool2d6_backStall = SE_i_cmp8_maxpool2d6_wireStall;
    // Valid signal propagation
    assign SE_i_cmp8_maxpool2d6_V0 = SE_i_cmp8_maxpool2d6_wireValid & ~ (SE_i_cmp8_maxpool2d6_fromReg0);
    assign SE_i_cmp8_maxpool2d6_V1 = SE_i_cmp8_maxpool2d6_wireValid & ~ (SE_i_cmp8_maxpool2d6_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_cmp8_maxpool2d6_and0 = SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_V0;
    assign SE_i_cmp8_maxpool2d6_wireValid = SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_V1 & SE_i_cmp8_maxpool2d6_and0;

    // SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1(STALLENABLE,145)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_V0 = SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_0;
    assign SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_V1 = SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_1;
    assign SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_V2 = SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_2;
    assign SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_V3 = SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_3;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_s_tv_0 = SE_i_cmp8_maxpool2d6_backStall & SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_0;
    assign SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_s_tv_1 = SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_backStall & SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_1;
    assign SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_s_tv_2 = SE_i_i_038_lc_outerphi_maxpool2d15_backStall & SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_2;
    assign SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_s_tv_3 = SE_i_cmp_maxpool2d11_backStall & SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_3;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_or0 = SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_s_tv_0;
    assign SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_or1 = SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_s_tv_1 | SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_or0;
    assign SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_or2 = SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_s_tv_2 | SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_or1;
    assign SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_backEN = ~ (SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_s_tv_3 | SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_or2);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_v_s_0 = SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_backEN & SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_V0;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_backStall = ~ (SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_0 <= 1'b0;
            SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_1 <= 1'b0;
            SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_2 <= 1'b0;
            SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_3 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_0 <= SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_0 & SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_0 <= SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_v_s_0;
            end

            if (SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_1 <= SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_1 & SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_s_tv_1;
            end
            else
            begin
                SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_1 <= SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_v_s_0;
            end

            if (SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_2 <= SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_2 & SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_s_tv_2;
            end
            else
            begin
                SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_2 <= SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_v_s_0;
            end

            if (SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_3 <= SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_3 & SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_s_tv_3;
            end
            else
            begin
                SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_R_v_3 <= SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_v_s_0;
            end

        end
    end

    // SE_stall_entry(STALLENABLE,128)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (bubble_out_stall_entry_1_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (bubble_out_stall_entry_2_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed2 & SE_stall_entry_or1);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0(STALLENABLE,144)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_V0 = SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_R_v_0;
    assign SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_V1 = SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_R_v_1;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_s_tv_0 = SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_backStall & SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_R_v_0;
    assign SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_s_tv_1 = i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_o_stall & SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_R_v_1;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_or0 = SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_s_tv_0;
    assign SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_backEN = ~ (SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_s_tv_1 | SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_v_s_0 = SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_backEN & SE_stall_entry_V2;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_backStall = ~ (SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_R_v_0 <= 1'b0;
            SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_R_v_0 <= SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_R_v_0 & SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_R_v_0 <= SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_v_s_0;
            end

            if (SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_R_v_1 <= SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_R_v_1 & SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_s_tv_1;
            end
            else
            begin
                SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_R_v_1 <= SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_v_s_0;
            end

        end
    end

    // SE_i_unnamed_maxpool2d13(STALLENABLE,126)
    // Valid signal propagation
    assign SE_i_unnamed_maxpool2d13_V0 = SE_i_unnamed_maxpool2d13_wireValid;
    // Backward Stall generation
    assign SE_i_unnamed_maxpool2d13_backStall = in_stall_in | ~ (SE_i_unnamed_maxpool2d13_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_unnamed_maxpool2d13_and0 = SE_i_cmp_maxpool2d11_V0;
    assign SE_i_unnamed_maxpool2d13_and1 = SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_V0 & SE_i_unnamed_maxpool2d13_and0;
    assign SE_i_unnamed_maxpool2d13_and2 = bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_1_reg_V0 & SE_i_unnamed_maxpool2d13_and1;
    assign SE_i_unnamed_maxpool2d13_and3 = bubble_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_1_reg_V0 & SE_i_unnamed_maxpool2d13_and2;
    assign SE_i_unnamed_maxpool2d13_and4 = i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_o_valid & SE_i_unnamed_maxpool2d13_and3;
    assign SE_i_unnamed_maxpool2d13_and5 = SE_redist12_i_unnamed_maxpool2d8_q_1_0_V0 & SE_i_unnamed_maxpool2d13_and4;
    assign SE_i_unnamed_maxpool2d13_wireValid = SE_i_i_038_lc_outerphi_maxpool2d15_V0 & SE_i_unnamed_maxpool2d13_and5;

    // bubble_join_stall_entry(BITJOIN,107)
    assign bubble_join_stall_entry_q = {in_j_03615, in_i_03813, in_c1_exe121, in_c0_exe412, in_c0_exe39, in_c0_exe24, in_c0_exe13, in_c0_exe12818};

    // bubble_select_stall_entry(BITSELECT,108)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[95:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[159:96]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[160:160]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[161:161]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[193:162]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[225:194]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[257:226]);

    // join_for_coalesced_delay_0(BITJOIN,75)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_f, bubble_select_stall_entry_g, bubble_select_stall_entry_d};

    // coalesced_delay_0_0(REG,92)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(97'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,76)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[95:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[96:96]);

    // i_add33_maxpool2d0(ADD,12)@0
    assign i_add33_maxpool2d0_a = {1'b0, bubble_select_stall_entry_i};
    assign i_add33_maxpool2d0_b = {1'b0, bubble_select_stall_entry_b};
    assign i_add33_maxpool2d0_o = $unsigned(i_add33_maxpool2d0_a) + $unsigned(i_add33_maxpool2d0_b);
    assign i_add33_maxpool2d0_q = i_add33_maxpool2d0_o[32:0];

    // bgTrunc_i_add33_maxpool2d0_sel_x(BITSELECT,45)@0
    assign bgTrunc_i_add33_maxpool2d0_sel_x_b = i_add33_maxpool2d0_q[31:0];

    // redist2_bgTrunc_i_add33_maxpool2d0_sel_x_b_1_0(REG,86)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_bgTrunc_i_add33_maxpool2d0_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_backEN == 1'b1)
        begin
            redist2_bgTrunc_i_add33_maxpool2d0_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_add33_maxpool2d0_sel_x_b);
        end
    end

    // i_idxprom34_maxpool2d1_sel_x(BITSELECT,56)@1
    assign i_idxprom34_maxpool2d1_sel_x_b = $unsigned({{32{redist2_bgTrunc_i_add33_maxpool2d0_sel_x_b_1_0_q[31]}}, redist2_bgTrunc_i_add33_maxpool2d0_sel_x_b_1_0_q[31:0]});

    // i_arrayidx354_maxpool2d0_narrow_x(BITSELECT,52)@1
    assign i_arrayidx354_maxpool2d0_narrow_x_b = i_idxprom34_maxpool2d1_sel_x_b[61:0];

    // i_arrayidx354_maxpool2d0_c_i2_01_x(CONSTANT,51)
    assign i_arrayidx354_maxpool2d0_c_i2_01_x_q = $unsigned(2'b00);

    // i_arrayidx354_maxpool2d0_shift_join_x(BITJOIN,53)@1
    assign i_arrayidx354_maxpool2d0_shift_join_x_q = {i_arrayidx354_maxpool2d0_narrow_x_b, i_arrayidx354_maxpool2d0_c_i2_01_x_q};

    // i_arrayidx354_maxpool2d0_add_x(ADD,50)@1
    assign i_arrayidx354_maxpool2d0_add_x_a = {1'b0, sel_for_coalesced_delay_0_b};
    assign i_arrayidx354_maxpool2d0_add_x_b = {1'b0, i_arrayidx354_maxpool2d0_shift_join_x_q};
    assign i_arrayidx354_maxpool2d0_add_x_o = $unsigned(i_arrayidx354_maxpool2d0_add_x_a) + $unsigned(i_arrayidx354_maxpool2d0_add_x_b);
    assign i_arrayidx354_maxpool2d0_add_x_q = i_arrayidx354_maxpool2d0_add_x_o[64:0];

    // i_arrayidx354_maxpool2d0_dupName_0_trunc_sel_x(BITSELECT,55)@1
    assign i_arrayidx354_maxpool2d0_dupName_0_trunc_sel_x_b = i_arrayidx354_maxpool2d0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3(BLACKBOX,22)@1
    // in in_i_stall@20000000
    // out out_lsu_unnamed_maxpool2d1_o_active@20000000
    // out out_o_stall@20000000
    // out out_o_valid@3
    // out out_unnamed_maxpool2d1_maxpool2d_avm_address@20000000
    // out out_unnamed_maxpool2d1_maxpool2d_avm_burstcount@20000000
    // out out_unnamed_maxpool2d1_maxpool2d_avm_byteenable@20000000
    // out out_unnamed_maxpool2d1_maxpool2d_avm_enable@20000000
    // out out_unnamed_maxpool2d1_maxpool2d_avm_read@20000000
    // out out_unnamed_maxpool2d1_maxpool2d_avm_write@20000000
    // out out_unnamed_maxpool2d1_maxpool2d_avm_writedata@20000000
    maxpool2d_i_llvm_fpga_mem_unnamed_1_maxpool2d0 thei_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx354_maxpool2d0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(sel_for_coalesced_delay_0_d),
        .in_i_stall(SE_i_unnamed_maxpool2d13_backStall),
        .in_i_valid(SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_V1),
        .in_i_writedata(sel_for_coalesced_delay_0_c),
        .in_unnamed_maxpool2d1_maxpool2d_avm_readdata(in_unnamed_maxpool2d1_maxpool2d_avm_readdata),
        .in_unnamed_maxpool2d1_maxpool2d_avm_readdatavalid(in_unnamed_maxpool2d1_maxpool2d_avm_readdatavalid),
        .in_unnamed_maxpool2d1_maxpool2d_avm_waitrequest(in_unnamed_maxpool2d1_maxpool2d_avm_waitrequest),
        .in_unnamed_maxpool2d1_maxpool2d_avm_writeack(in_unnamed_maxpool2d1_maxpool2d_avm_writeack),
        .out_lsu_unnamed_maxpool2d1_o_active(i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_lsu_unnamed_maxpool2d1_o_active),
        .out_o_stall(i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_o_valid),
        .out_unnamed_maxpool2d1_maxpool2d_avm_address(i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_unnamed_maxpool2d1_maxpool2d_avm_address),
        .out_unnamed_maxpool2d1_maxpool2d_avm_burstcount(i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_unnamed_maxpool2d1_maxpool2d_avm_burstcount),
        .out_unnamed_maxpool2d1_maxpool2d_avm_byteenable(i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_unnamed_maxpool2d1_maxpool2d_avm_byteenable),
        .out_unnamed_maxpool2d1_maxpool2d_avm_enable(i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_unnamed_maxpool2d1_maxpool2d_avm_enable),
        .out_unnamed_maxpool2d1_maxpool2d_avm_read(i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_unnamed_maxpool2d1_maxpool2d_avm_read),
        .out_unnamed_maxpool2d1_maxpool2d_avm_write(i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_unnamed_maxpool2d1_maxpool2d_avm_write),
        .out_unnamed_maxpool2d1_maxpool2d_avm_writedata(i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_unnamed_maxpool2d1_maxpool2d_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,11)
    assign out_unnamed_maxpool2d1_maxpool2d_avm_address = i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_unnamed_maxpool2d1_maxpool2d_avm_address;
    assign out_unnamed_maxpool2d1_maxpool2d_avm_enable = i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_unnamed_maxpool2d1_maxpool2d_avm_enable;
    assign out_unnamed_maxpool2d1_maxpool2d_avm_read = i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_unnamed_maxpool2d1_maxpool2d_avm_read;
    assign out_unnamed_maxpool2d1_maxpool2d_avm_write = i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_unnamed_maxpool2d1_maxpool2d_avm_write;
    assign out_unnamed_maxpool2d1_maxpool2d_avm_writedata = i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_unnamed_maxpool2d1_maxpool2d_avm_writedata;
    assign out_unnamed_maxpool2d1_maxpool2d_avm_byteenable = i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_unnamed_maxpool2d1_maxpool2d_avm_byteenable;
    assign out_unnamed_maxpool2d1_maxpool2d_avm_burstcount = i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_unnamed_maxpool2d1_maxpool2d_avm_burstcount;

    // sync_out(GPOUT,43)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,48)
    assign out_lsu_unnamed_maxpool2d1_o_active = i_llvm_fpga_mem_unnamed_maxpool2d1_maxpool2d3_out_lsu_unnamed_maxpool2d1_o_active;

    // c_i32_117(CONSTANT,7)
    assign c_i32_117_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc37_maxpool2d4(ADD,19)@0
    assign i_inc37_maxpool2d4_a = {1'b0, bubble_select_stall_entry_i};
    assign i_inc37_maxpool2d4_b = {1'b0, c_i32_117_q};
    assign i_inc37_maxpool2d4_o = $unsigned(i_inc37_maxpool2d4_a) + $unsigned(i_inc37_maxpool2d4_b);
    assign i_inc37_maxpool2d4_q = i_inc37_maxpool2d4_o[32:0];

    // bgTrunc_i_inc37_maxpool2d4_sel_x(BITSELECT,46)@0
    assign bgTrunc_i_inc37_maxpool2d4_sel_x_b = i_inc37_maxpool2d4_q[31:0];

    // redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0(REG,83)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_q <= $unsigned(bgTrunc_i_inc37_maxpool2d4_sel_x_b);
        end
    end

    // redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1(REG,84)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_q <= $unsigned(redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_q);
        end
    end

    // redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0(REG,85)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_backEN == 1'b1)
        begin
            redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_q <= $unsigned(redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_q);
        end
    end

    // c_i32_019(CONSTANT,6)
    assign c_i32_019_q = $unsigned(32'b00000000000000000000000000000000);

    // bubble_join_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5(BITJOIN,99)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_q = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5(BITSELECT,100)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_q[31:0]);

    // i_cmp8_maxpool2d6(COMPARE,13)@2
    assign i_cmp8_maxpool2d6_a = $unsigned({{2{redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_q[31]}}, redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_q});
    assign i_cmp8_maxpool2d6_b = $unsigned({{2{bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_b[31]}}, bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d5_b});
    assign i_cmp8_maxpool2d6_o = $unsigned($signed(i_cmp8_maxpool2d6_a) - $signed(i_cmp8_maxpool2d6_b));
    assign i_cmp8_maxpool2d6_c[0] = i_cmp8_maxpool2d6_o[33];

    // join_for_coalesced_delay_1(BITJOIN,78)
    assign join_for_coalesced_delay_1_q = {bubble_select_stall_entry_e, bubble_select_stall_entry_h};

    // coalesced_delay_1_0(REG,93)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_0_q <= $unsigned(33'b000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_backEN == 1'b1)
        begin
            coalesced_delay_1_0_q <= $unsigned(join_for_coalesced_delay_1_q);
        end
    end

    // coalesced_delay_1_1(REG,94)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_1_q <= $unsigned(33'b000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_backEN == 1'b1)
        begin
            coalesced_delay_1_1_q <= $unsigned(coalesced_delay_1_0_q);
        end
    end

    // sel_for_coalesced_delay_1(BITSELECT,79)
    assign sel_for_coalesced_delay_1_b = $unsigned(coalesced_delay_1_1_q[31:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(coalesced_delay_1_1_q[32:32]);

    // i_unnamed_maxpool2d8(LOGICAL,26)@2
    assign i_unnamed_maxpool2d8_q = sel_for_coalesced_delay_1_c & i_cmp8_maxpool2d6_c;

    // redist12_i_unnamed_maxpool2d8_q_1_0(REG,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_unnamed_maxpool2d8_q_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist12_i_unnamed_maxpool2d8_q_1_0_backEN == 1'b1)
        begin
            redist12_i_unnamed_maxpool2d8_q_1_0_q <= $unsigned(i_unnamed_maxpool2d8_q);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_j_036_lc_innerphi_maxpool2d14(MUX,21)@3
    assign i_j_036_lc_innerphi_maxpool2d14_s = redist12_i_unnamed_maxpool2d8_q_1_0_q;
    always @(i_j_036_lc_innerphi_maxpool2d14_s or c_i32_019_q or redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_q)
    begin
        unique case (i_j_036_lc_innerphi_maxpool2d14_s)
            1'b0 : i_j_036_lc_innerphi_maxpool2d14_q = c_i32_019_q;
            1'b1 : i_j_036_lc_innerphi_maxpool2d14_q = redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_q;
            default : i_j_036_lc_innerphi_maxpool2d14_q = 32'b0;
        endcase
    end

    // i_inc40_maxpool2d9(ADD,20)@2
    assign i_inc40_maxpool2d9_a = {1'b0, sel_for_coalesced_delay_1_b};
    assign i_inc40_maxpool2d9_b = {1'b0, c_i32_117_q};
    assign i_inc40_maxpool2d9_o = $unsigned(i_inc40_maxpool2d9_a) + $unsigned(i_inc40_maxpool2d9_b);
    assign i_inc40_maxpool2d9_q = i_inc40_maxpool2d9_o[32:0];

    // bgTrunc_i_inc40_maxpool2d9_sel_x(BITSELECT,47)@2
    assign bgTrunc_i_inc40_maxpool2d9_sel_x_b = i_inc40_maxpool2d9_q[31:0];

    // i_i_038_lc_outerphi_maxpool2d15(MUX,16)@2 + 1
    assign i_i_038_lc_outerphi_maxpool2d15_s = i_unnamed_maxpool2d8_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_i_038_lc_outerphi_maxpool2d15_q <= 32'b0;
        end
        else if (SE_i_i_038_lc_outerphi_maxpool2d15_backEN == 1'b1)
        begin
            unique case (i_i_038_lc_outerphi_maxpool2d15_s)
                1'b0 : i_i_038_lc_outerphi_maxpool2d15_q <= bgTrunc_i_inc40_maxpool2d9_sel_x_b;
                1'b1 : i_i_038_lc_outerphi_maxpool2d15_q <= sel_for_coalesced_delay_1_b;
                default : i_i_038_lc_outerphi_maxpool2d15_q <= 32'b0;
            endcase
        end
    end

    // bubble_join_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10(BITJOIN,103)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_q = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10(BITSELECT,104)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_q[31:0]);

    // i_cmp_maxpool2d11(COMPARE,14)@2 + 1
    assign i_cmp_maxpool2d11_a = $unsigned({{2{bgTrunc_i_inc40_maxpool2d9_sel_x_b[31]}}, bgTrunc_i_inc40_maxpool2d9_sel_x_b});
    assign i_cmp_maxpool2d11_b = $unsigned({{2{bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_b[31]}}, bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d10_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp_maxpool2d11_o <= 34'b0;
        end
        else if (SE_i_cmp_maxpool2d11_backEN == 1'b1)
        begin
            i_cmp_maxpool2d11_o <= $unsigned($signed(i_cmp_maxpool2d11_a) - $signed(i_cmp_maxpool2d11_b));
        end
    end
    assign i_cmp_maxpool2d11_c[0] = i_cmp_maxpool2d11_o[33];

    // i_unnamed_maxpool2d13(LOGICAL,25)@3
    assign i_unnamed_maxpool2d13_q = redist7_stall_entry_o7_3_0_q & i_cmp_maxpool2d11_c;

    // i_for_cond_cleanup_lc_cond_maxpool2d16(LOGICAL,15)@3
    assign i_for_cond_cleanup_lc_cond_maxpool2d16_q = redist12_i_unnamed_maxpool2d8_q_1_0_q | i_unnamed_maxpool2d13_q;

    // redist7_stall_entry_o7_3_0(REG,90)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_stall_entry_o7_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_backEN == 1'b1)
        begin
            redist7_stall_entry_o7_3_0_q <= $unsigned(sel_for_coalesced_delay_1_c);
        end
    end

    // join_for_coalesced_delay_2(BITJOIN,81)
    assign join_for_coalesced_delay_2_q = {sel_for_coalesced_delay_0_d, sel_for_coalesced_delay_0_b};

    // coalesced_delay_2_0(REG,95)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_2_0_q <= $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_backEN == 1'b1)
        begin
            coalesced_delay_2_0_q <= $unsigned(join_for_coalesced_delay_2_q);
        end
    end

    // coalesced_delay_2_1(REG,96)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_2_1_q <= $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_backEN == 1'b1)
        begin
            coalesced_delay_2_1_q <= $unsigned(coalesced_delay_2_0_q);
        end
    end

    // sel_for_coalesced_delay_2(BITSELECT,82)
    assign sel_for_coalesced_delay_2_b = $unsigned(coalesced_delay_2_1_q[63:0]);
    assign sel_for_coalesced_delay_2_c = $unsigned(coalesced_delay_2_1_q[64:64]);

    // redist3_stall_entry_o5_3_0(REG,87)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_stall_entry_o5_3_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_0_backEN == 1'b1)
        begin
            redist3_stall_entry_o5_3_0_q <= $unsigned(bubble_select_stall_entry_c);
        end
    end

    // redist3_stall_entry_o5_3_1(REG,88)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_stall_entry_o5_3_1_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc37_maxpool2d4_sel_x_b_2_1_backEN == 1'b1)
        begin
            redist3_stall_entry_o5_3_1_q <= $unsigned(redist3_stall_entry_o5_3_0_q);
        end
    end

    // redist3_stall_entry_o5_3_2(REG,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_stall_entry_o5_3_2_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist1_bgTrunc_i_inc37_maxpool2d4_sel_x_b_3_0_backEN == 1'b1)
        begin
            redist3_stall_entry_o5_3_2_q <= $unsigned(redist3_stall_entry_o5_3_1_q);
        end
    end

    // dupName_0_sync_out_x(GPOUT,49)@3
    assign out_c0_exe13 = redist3_stall_entry_o5_3_2_q;
    assign out_c0_exe24 = sel_for_coalesced_delay_2_b;
    assign out_c0_exe39 = redist7_stall_entry_o7_3_0_q;
    assign out_c0_exe412 = sel_for_coalesced_delay_2_c;
    assign out_for_cond_cleanup_LC_COND = i_for_cond_cleanup_lc_cond_maxpool2d16_q;
    assign out_i_038_LC_OuterPHI = i_i_038_lc_outerphi_maxpool2d15_q;
    assign out_j_036_LC_InnerPHI = i_j_036_lc_innerphi_maxpool2d14_q;
    assign out_valid_out = SE_i_unnamed_maxpool2d13_V0;

endmodule
