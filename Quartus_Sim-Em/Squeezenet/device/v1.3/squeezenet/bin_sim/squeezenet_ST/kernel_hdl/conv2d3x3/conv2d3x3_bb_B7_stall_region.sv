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

// SystemVerilog created from conv2d3x3_bb_B7_stall_region
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B7_stall_region (
    input wire [0:0] in_intel_reserved_ffwd_4_0,
    input wire [31:0] in_input_channels,
    input wire [31:0] in_input_size,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_add110,
    input wire [31:0] in_add247,
    input wire [0:0] in_cmp26120,
    input wire [0:0] in_cmp26265,
    input wire [0:0] in_cmp26_1135,
    input wire [0:0] in_cmp26_1292,
    input wire [0:0] in_cmp26_2150,
    input wire [0:0] in_cmp26_2319,
    input wire [0:0] in_cmp27125,
    input wire [0:0] in_cmp27274,
    input wire [0:0] in_cmp27_1140,
    input wire [0:0] in_cmp27_1301,
    input wire [0:0] in_cmp27_2155,
    input wire [0:0] in_cmp27_2328,
    input wire [63:0] in_filter_weight_addr_067_replace_phi204,
    input wire [63:0] in_filter_weight_addr_067_replace_phi85_pop19346,
    input wire [63:0] in_filter_weight_addr_067_replace_phi87,
    input wire [31:0] in_j_061_pop24179,
    input wire [31:0] in_k_059,
    input wire [31:0] in_lm25226,
    input wire [31:0] in_lm2597_pop21364,
    input wire [31:0] in_lm2599,
    input wire [31:0] in_mul56115,
    input wire [31:0] in_mul56256,
    input wire [0:0] in_notcmp73175,
    input wire [0:0] in_notcmp77160,
    input wire [0:0] in_notcmp77337,
    input wire [0:0] in_notcmp81103_pop22373,
    input wire [0:0] in_notcmp81105,
    input wire [0:0] in_notcmp81237,
    input wire [63:0] in_output_im_addr_068_replace_phi215,
    input wire [63:0] in_output_im_addr_068_replace_phi91_pop20355,
    input wire [63:0] in_output_im_addr_068_replace_phi93,
    input wire [31:0] in_pad_sync_buffer171,
    input wire [31:0] in_stride_sync_buffer167,
    input wire [31:0] in_sub_1130,
    input wire [31:0] in_sub_1283,
    input wire [31:0] in_sub_2145,
    input wire [31:0] in_sub_2310,
    input wire [31:0] in_tmp_058,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_add110,
    output wire [31:0] out_add247,
    output wire [0:0] out_c0_exe1627,
    output wire [31:0] out_c0_exe2628,
    output wire [31:0] out_c0_exe3629,
    output wire [31:0] out_c0_exe4630,
    output wire [0:0] out_c0_exe5631,
    output wire [0:0] out_cmp26120,
    output wire [0:0] out_cmp26265,
    output wire [0:0] out_cmp26_1135,
    output wire [0:0] out_cmp26_1292,
    output wire [0:0] out_cmp26_2150,
    output wire [0:0] out_cmp26_2319,
    output wire [0:0] out_cmp27125,
    output wire [0:0] out_cmp27274,
    output wire [0:0] out_cmp27_1140,
    output wire [0:0] out_cmp27_1301,
    output wire [0:0] out_cmp27_2155,
    output wire [0:0] out_cmp27_2328,
    output wire [63:0] out_filter_weight_addr_067_replace_phi204,
    output wire [63:0] out_filter_weight_addr_067_replace_phi85_pop19346,
    output wire [63:0] out_filter_weight_addr_067_replace_phi87,
    output wire [31:0] out_j_061_pop24179,
    output wire [31:0] out_k_059,
    output wire [31:0] out_lm25226,
    output wire [31:0] out_lm2597_pop21364,
    output wire [31:0] out_lm2599,
    output wire [31:0] out_mul56115,
    output wire [31:0] out_mul56256,
    output wire [0:0] out_notcmp73175,
    output wire [0:0] out_notcmp77160,
    output wire [0:0] out_notcmp77337,
    output wire [0:0] out_notcmp81103_pop22373,
    output wire [0:0] out_notcmp81105,
    output wire [0:0] out_notcmp81237,
    output wire [63:0] out_output_im_addr_068_replace_phi215,
    output wire [63:0] out_output_im_addr_068_replace_phi91_pop20355,
    output wire [63:0] out_output_im_addr_068_replace_phi93,
    output wire [31:0] out_pad_sync_buffer171,
    output wire [31:0] out_stride_sync_buffer167,
    output wire [31:0] out_sub_1130,
    output wire [31:0] out_sub_1283,
    output wire [31:0] out_sub_2145,
    output wire [31:0] out_sub_2310,
    output wire [31:0] out_tmp_058,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] conv2d3x3_B7_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv2d3x3_B7_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [63:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [63:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [31:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [0:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [0:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [31:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [0:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [0:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [0:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [31:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_17_tpl;
    wire [31:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_18_tpl;
    wire [0:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_19_tpl;
    wire [31:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_20_tpl;
    wire [63:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_21_tpl;
    wire [63:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_22_tpl;
    wire [31:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_23_tpl;
    wire [0:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_24_tpl;
    wire [31:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_25_tpl;
    wire [31:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_26_tpl;
    wire [0:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_27_tpl;
    wire [0:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_28_tpl;
    wire [31:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_29_tpl;
    wire [0:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_30_tpl;
    wire [0:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_31_tpl;
    wire [31:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_32_tpl;
    wire [0:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_33_tpl;
    wire [0:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_34_tpl;
    wire [0:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_35_tpl;
    wire [63:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_36_tpl;
    wire [63:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_37_tpl;
    wire [31:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_38_tpl;
    wire [0:0] conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_39_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_out_c0_exit626_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_out_c0_exit626_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_out_c0_exit626_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_out_c0_exit626_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_out_c0_exit626_5_tpl;
    wire [913:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [63:0] sel_for_coalesced_delay_0_d;
    wire [63:0] sel_for_coalesced_delay_0_e;
    wire [63:0] sel_for_coalesced_delay_0_f;
    wire [63:0] sel_for_coalesced_delay_0_g;
    wire [31:0] sel_for_coalesced_delay_0_h;
    wire [31:0] sel_for_coalesced_delay_0_i;
    wire [31:0] sel_for_coalesced_delay_0_j;
    wire [31:0] sel_for_coalesced_delay_0_k;
    wire [31:0] sel_for_coalesced_delay_0_l;
    wire [31:0] sel_for_coalesced_delay_0_m;
    wire [31:0] sel_for_coalesced_delay_0_n;
    wire [31:0] sel_for_coalesced_delay_0_o;
    wire [31:0] sel_for_coalesced_delay_0_p;
    wire [31:0] sel_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_r;
    wire [31:0] sel_for_coalesced_delay_0_s;
    wire [31:0] sel_for_coalesced_delay_0_t;
    wire [31:0] sel_for_coalesced_delay_0_u;
    wire [31:0] sel_for_coalesced_delay_0_v;
    wire [31:0] sel_for_coalesced_delay_0_w;
    wire [0:0] sel_for_coalesced_delay_0_x;
    wire [0:0] sel_for_coalesced_delay_0_y;
    wire [0:0] sel_for_coalesced_delay_0_z;
    wire [0:0] sel_for_coalesced_delay_0_aa;
    wire [0:0] sel_for_coalesced_delay_0_bb;
    wire [0:0] sel_for_coalesced_delay_0_cc;
    wire [0:0] sel_for_coalesced_delay_0_dd;
    wire [0:0] sel_for_coalesced_delay_0_ee;
    wire [0:0] sel_for_coalesced_delay_0_ff;
    wire [0:0] sel_for_coalesced_delay_0_gg;
    wire [0:0] sel_for_coalesced_delay_0_hh;
    wire [0:0] sel_for_coalesced_delay_0_ii;
    wire [0:0] sel_for_coalesced_delay_0_jj;
    wire [0:0] sel_for_coalesced_delay_0_kk;
    wire [0:0] sel_for_coalesced_delay_0_ll;
    wire [0:0] sel_for_coalesced_delay_0_mm;
    wire [0:0] sel_for_coalesced_delay_0_nn;
    wire [0:0] sel_for_coalesced_delay_0_oo;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [913:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [913:0] coalesced_delay_0_fifo_data_out;
    wire [913:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [0:0] bubble_select_stall_entry_o;
    wire [63:0] bubble_select_stall_entry_p;
    wire [63:0] bubble_select_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_r;
    wire [31:0] bubble_select_stall_entry_s;
    wire [31:0] bubble_select_stall_entry_t;
    wire [31:0] bubble_select_stall_entry_u;
    wire [31:0] bubble_select_stall_entry_v;
    wire [31:0] bubble_select_stall_entry_w;
    wire [31:0] bubble_select_stall_entry_x;
    wire [31:0] bubble_select_stall_entry_y;
    wire [0:0] bubble_select_stall_entry_z;
    wire [0:0] bubble_select_stall_entry_aa;
    wire [0:0] bubble_select_stall_entry_bb;
    wire [0:0] bubble_select_stall_entry_cc;
    wire [0:0] bubble_select_stall_entry_dd;
    wire [0:0] bubble_select_stall_entry_ee;
    wire [63:0] bubble_select_stall_entry_ff;
    wire [63:0] bubble_select_stall_entry_gg;
    wire [63:0] bubble_select_stall_entry_hh;
    wire [31:0] bubble_select_stall_entry_ii;
    wire [31:0] bubble_select_stall_entry_jj;
    wire [31:0] bubble_select_stall_entry_kk;
    wire [31:0] bubble_select_stall_entry_ll;
    wire [31:0] bubble_select_stall_entry_mm;
    wire [31:0] bubble_select_stall_entry_nn;
    wire [31:0] bubble_select_stall_entry_oo;
    wire [913:0] bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_c;
    wire [63:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_d;
    wire [63:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_g;
    wire [31:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_k;
    wire [31:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_l;
    wire [0:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_m;
    wire [0:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_n;
    wire [31:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_o;
    wire [0:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_p;
    wire [0:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_r;
    wire [31:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_s;
    wire [31:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_t;
    wire [0:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_u;
    wire [31:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_v;
    wire [63:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_w;
    wire [63:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_x;
    wire [31:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_y;
    wire [0:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_z;
    wire [31:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_aa;
    wire [31:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_bb;
    wire [0:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_cc;
    wire [0:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_dd;
    wire [31:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_ee;
    wire [0:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_ff;
    wire [0:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_gg;
    wire [31:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_hh;
    wire [0:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_ii;
    wire [0:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_jj;
    wire [0:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_kk;
    wire [63:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_ll;
    wire [63:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_mm;
    wire [31:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_nn;
    wire [0:0] bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_oo;
    wire [97:0] bubble_join_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_f;
    wire [913:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [913:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_conv2d3x3_B7_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv2d3x3_B7_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_conv2d3x3_B7_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_conv2d3x3_B7_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_conv2d3x3_B7_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_conv2d3x3_B7_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_conv2d3x3_B7_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_conv2d3x3_B7_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_conv2d3x3_B7_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_conv2d3x3_B7_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_conv2d3x3_B7_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv2d3x3_B7_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_conv2d3x3_B7_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;


    // bubble_join_stall_entry(BITJOIN,66)
    assign bubble_join_stall_entry_q = {in_tmp_058, in_sub_2310, in_sub_2145, in_sub_1283, in_sub_1130, in_stride_sync_buffer167, in_pad_sync_buffer171, in_output_im_addr_068_replace_phi93, in_output_im_addr_068_replace_phi91_pop20355, in_output_im_addr_068_replace_phi215, in_notcmp81237, in_notcmp81105, in_notcmp81103_pop22373, in_notcmp77337, in_notcmp77160, in_notcmp73175, in_mul56256, in_mul56115, in_lm2599, in_lm2597_pop21364, in_lm25226, in_k_059, in_j_061_pop24179, in_filter_weight_addr_067_replace_phi87, in_filter_weight_addr_067_replace_phi85_pop19346, in_filter_weight_addr_067_replace_phi204, in_cmp27_2328, in_cmp27_2155, in_cmp27_1301, in_cmp27_1140, in_cmp27274, in_cmp27125, in_cmp26_2319, in_cmp26_2150, in_cmp26_1292, in_cmp26_1135, in_cmp26265, in_cmp26120, in_add247, in_add110};

    // bubble_select_stall_entry(BITSELECT,67)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[63:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:64]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[65:65]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[66:66]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[67:67]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[68:68]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[69:69]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[70:70]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[71:71]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[72:72]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[73:73]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[74:74]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[75:75]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[139:76]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[203:140]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[267:204]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[299:268]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[331:300]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[363:332]);
    assign bubble_select_stall_entry_v = $unsigned(bubble_join_stall_entry_q[395:364]);
    assign bubble_select_stall_entry_w = $unsigned(bubble_join_stall_entry_q[427:396]);
    assign bubble_select_stall_entry_x = $unsigned(bubble_join_stall_entry_q[459:428]);
    assign bubble_select_stall_entry_y = $unsigned(bubble_join_stall_entry_q[491:460]);
    assign bubble_select_stall_entry_z = $unsigned(bubble_join_stall_entry_q[492:492]);
    assign bubble_select_stall_entry_aa = $unsigned(bubble_join_stall_entry_q[493:493]);
    assign bubble_select_stall_entry_bb = $unsigned(bubble_join_stall_entry_q[494:494]);
    assign bubble_select_stall_entry_cc = $unsigned(bubble_join_stall_entry_q[495:495]);
    assign bubble_select_stall_entry_dd = $unsigned(bubble_join_stall_entry_q[496:496]);
    assign bubble_select_stall_entry_ee = $unsigned(bubble_join_stall_entry_q[497:497]);
    assign bubble_select_stall_entry_ff = $unsigned(bubble_join_stall_entry_q[561:498]);
    assign bubble_select_stall_entry_gg = $unsigned(bubble_join_stall_entry_q[625:562]);
    assign bubble_select_stall_entry_hh = $unsigned(bubble_join_stall_entry_q[689:626]);
    assign bubble_select_stall_entry_ii = $unsigned(bubble_join_stall_entry_q[721:690]);
    assign bubble_select_stall_entry_jj = $unsigned(bubble_join_stall_entry_q[753:722]);
    assign bubble_select_stall_entry_kk = $unsigned(bubble_join_stall_entry_q[785:754]);
    assign bubble_select_stall_entry_ll = $unsigned(bubble_join_stall_entry_q[817:786]);
    assign bubble_select_stall_entry_mm = $unsigned(bubble_join_stall_entry_q[849:818]);
    assign bubble_select_stall_entry_nn = $unsigned(bubble_join_stall_entry_q[881:850]);
    assign bubble_select_stall_entry_oo = $unsigned(bubble_join_stall_entry_q[913:882]);

    // bubble_join_conv2d3x3_B7_merge_reg_aunroll_x(BITJOIN,70)
    assign bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q = {conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_39_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_38_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_37_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_36_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_35_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_34_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_33_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_32_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_31_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_30_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_29_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_28_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_27_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_26_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_25_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_24_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_23_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_22_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_21_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_20_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_19_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_18_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_17_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_16_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_15_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_14_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_13_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_12_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_11_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_10_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_9_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_8_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_7_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_6_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_5_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_4_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_3_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_2_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_1_tpl, conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv2d3x3_B7_merge_reg_aunroll_x(BITSELECT,71)
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[31:0]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[63:32]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[127:64]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[191:128]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_f = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[223:192]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_g = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[224:224]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_h = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[256:225]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_i = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[288:257]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_j = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[289:289]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_k = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[290:290]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_l = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[322:291]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_m = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[323:323]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_n = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[324:324]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_o = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[356:325]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_p = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[357:357]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_q = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[358:358]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_r = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[359:359]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_s = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[391:360]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_t = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[423:392]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_u = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[424:424]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_v = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[456:425]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_w = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[520:457]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_x = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[584:521]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_y = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[616:585]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_z = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[617:617]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_aa = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[649:618]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_bb = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[681:650]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_cc = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[682:682]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_dd = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[683:683]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_ee = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[715:684]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_ff = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[716:716]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_gg = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[717:717]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_hh = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[749:718]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_ii = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[750:750]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_jj = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[751:751]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_kk = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[752:752]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_ll = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[816:753]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_mm = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[880:817]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_nn = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[912:881]);
    assign bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_oo = $unsigned(bubble_join_conv2d3x3_B7_merge_reg_aunroll_x_q[913:913]);

    // join_for_coalesced_delay_0(BITJOIN,62)
    assign join_for_coalesced_delay_0_q = {bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_q, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_p, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_u, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_n, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_m, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_z, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_k, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_j, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_cc, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_r, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_ff, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_gg, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_ii, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_jj, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_kk, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_g, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_oo, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_dd, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_i, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_h, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_l, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_o, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_f, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_b, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_s, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_t, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_v, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_y, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_aa, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_bb, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_ee, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_hh, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_nn, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_c, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_w, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_x, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_ll, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_mm, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_e, bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_d};

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,88)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;

    // coalesced_delay_0_fifo(STALLFIFO,64)
    assign coalesced_delay_0_fifo_valid_in = SE_out_conv2d3x3_B7_merge_reg_aunroll_x_V1;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(12),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(914),
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

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x(BLACKBOX,20)@1
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@12
    // out out_c0_exit626_0_tpl@12
    // out out_c0_exit626_1_tpl@12
    // out out_c0_exit626_2_tpl@12
    // out out_c0_exit626_3_tpl@12
    // out out_c0_exit626_4_tpl@12
    // out out_c0_exit626_5_tpl@12
    conv2d3x3_i_sfc_s_c0_in_for_cond14_prehe0000ter618156_conv2d3x31 thei_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x (
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_conv2d3x3_B7_merge_reg_aunroll_x_V0),
        .in_input_channels(in_input_channels),
        .in_input_size(in_input_size),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_c0_eni2617_0_tpl(GND_q),
        .in_c0_eni2617_1_tpl(bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_b),
        .in_c0_eni2617_2_tpl(bubble_select_conv2d3x3_B7_merge_reg_aunroll_x_h),
        .out_o_stall(i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_out_o_valid),
        .out_c0_exit626_0_tpl(),
        .out_c0_exit626_1_tpl(i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_out_c0_exit626_1_tpl),
        .out_c0_exit626_2_tpl(i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_out_c0_exit626_2_tpl),
        .out_c0_exit626_3_tpl(i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_out_c0_exit626_3_tpl),
        .out_c0_exit626_4_tpl(i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_out_c0_exit626_4_tpl),
        .out_c0_exit626_5_tpl(i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_out_c0_exit626_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_conv2d3x3_B7_merge_reg_aunroll_x(STALLENABLE,82)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_conv2d3x3_B7_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_conv2d3x3_B7_merge_reg_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_conv2d3x3_B7_merge_reg_aunroll_x_fromReg0 <= SE_out_conv2d3x3_B7_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_conv2d3x3_B7_merge_reg_aunroll_x_fromReg1 <= SE_out_conv2d3x3_B7_merge_reg_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_conv2d3x3_B7_merge_reg_aunroll_x_consumed0 = (~ (i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_out_o_stall) & SE_out_conv2d3x3_B7_merge_reg_aunroll_x_wireValid) | SE_out_conv2d3x3_B7_merge_reg_aunroll_x_fromReg0;
    assign SE_out_conv2d3x3_B7_merge_reg_aunroll_x_consumed1 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_conv2d3x3_B7_merge_reg_aunroll_x_wireValid) | SE_out_conv2d3x3_B7_merge_reg_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_conv2d3x3_B7_merge_reg_aunroll_x_StallValid = SE_out_conv2d3x3_B7_merge_reg_aunroll_x_backStall & SE_out_conv2d3x3_B7_merge_reg_aunroll_x_wireValid;
    assign SE_out_conv2d3x3_B7_merge_reg_aunroll_x_toReg0 = SE_out_conv2d3x3_B7_merge_reg_aunroll_x_StallValid & SE_out_conv2d3x3_B7_merge_reg_aunroll_x_consumed0;
    assign SE_out_conv2d3x3_B7_merge_reg_aunroll_x_toReg1 = SE_out_conv2d3x3_B7_merge_reg_aunroll_x_StallValid & SE_out_conv2d3x3_B7_merge_reg_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_conv2d3x3_B7_merge_reg_aunroll_x_or0 = SE_out_conv2d3x3_B7_merge_reg_aunroll_x_consumed0;
    assign SE_out_conv2d3x3_B7_merge_reg_aunroll_x_wireStall = ~ (SE_out_conv2d3x3_B7_merge_reg_aunroll_x_consumed1 & SE_out_conv2d3x3_B7_merge_reg_aunroll_x_or0);
    assign SE_out_conv2d3x3_B7_merge_reg_aunroll_x_backStall = SE_out_conv2d3x3_B7_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_conv2d3x3_B7_merge_reg_aunroll_x_V0 = SE_out_conv2d3x3_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv2d3x3_B7_merge_reg_aunroll_x_fromReg0);
    assign SE_out_conv2d3x3_B7_merge_reg_aunroll_x_V1 = SE_out_conv2d3x3_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv2d3x3_B7_merge_reg_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_conv2d3x3_B7_merge_reg_aunroll_x_wireValid = conv2d3x3_B7_merge_reg_aunroll_x_out_valid_out;

    // conv2d3x3_B7_merge_reg_aunroll_x(BLACKBOX,18)@0
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
    // out out_data_out_12_tpl@1
    // out out_data_out_13_tpl@1
    // out out_data_out_14_tpl@1
    // out out_data_out_15_tpl@1
    // out out_data_out_16_tpl@1
    // out out_data_out_17_tpl@1
    // out out_data_out_18_tpl@1
    // out out_data_out_19_tpl@1
    // out out_data_out_20_tpl@1
    // out out_data_out_21_tpl@1
    // out out_data_out_22_tpl@1
    // out out_data_out_23_tpl@1
    // out out_data_out_24_tpl@1
    // out out_data_out_25_tpl@1
    // out out_data_out_26_tpl@1
    // out out_data_out_27_tpl@1
    // out out_data_out_28_tpl@1
    // out out_data_out_29_tpl@1
    // out out_data_out_30_tpl@1
    // out out_data_out_31_tpl@1
    // out out_data_out_32_tpl@1
    // out out_data_out_33_tpl@1
    // out out_data_out_34_tpl@1
    // out out_data_out_35_tpl@1
    // out out_data_out_36_tpl@1
    // out out_data_out_37_tpl@1
    // out out_data_out_38_tpl@1
    // out out_data_out_39_tpl@1
    conv2d3x3_B7_merge_reg theconv2d3x3_B7_merge_reg_aunroll_x (
        .in_stall_in(SE_out_conv2d3x3_B7_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_t),
        .in_data_in_1_tpl(bubble_select_stall_entry_oo),
        .in_data_in_2_tpl(bubble_select_stall_entry_r),
        .in_data_in_3_tpl(bubble_select_stall_entry_hh),
        .in_data_in_4_tpl(bubble_select_stall_entry_w),
        .in_data_in_5_tpl(bubble_select_stall_entry_dd),
        .in_data_in_6_tpl(bubble_select_stall_entry_b),
        .in_data_in_7_tpl(bubble_select_stall_entry_x),
        .in_data_in_8_tpl(bubble_select_stall_entry_d),
        .in_data_in_9_tpl(bubble_select_stall_entry_j),
        .in_data_in_10_tpl(bubble_select_stall_entry_kk),
        .in_data_in_11_tpl(bubble_select_stall_entry_f),
        .in_data_in_12_tpl(bubble_select_stall_entry_l),
        .in_data_in_13_tpl(bubble_select_stall_entry_mm),
        .in_data_in_14_tpl(bubble_select_stall_entry_h),
        .in_data_in_15_tpl(bubble_select_stall_entry_n),
        .in_data_in_16_tpl(bubble_select_stall_entry_aa),
        .in_data_in_17_tpl(bubble_select_stall_entry_jj),
        .in_data_in_18_tpl(bubble_select_stall_entry_ii),
        .in_data_in_19_tpl(bubble_select_stall_entry_z),
        .in_data_in_20_tpl(bubble_select_stall_entry_s),
        .in_data_in_21_tpl(bubble_select_stall_entry_p),
        .in_data_in_22_tpl(bubble_select_stall_entry_ff),
        .in_data_in_23_tpl(bubble_select_stall_entry_u),
        .in_data_in_24_tpl(bubble_select_stall_entry_ee),
        .in_data_in_25_tpl(bubble_select_stall_entry_c),
        .in_data_in_26_tpl(bubble_select_stall_entry_y),
        .in_data_in_27_tpl(bubble_select_stall_entry_e),
        .in_data_in_28_tpl(bubble_select_stall_entry_k),
        .in_data_in_29_tpl(bubble_select_stall_entry_ll),
        .in_data_in_30_tpl(bubble_select_stall_entry_g),
        .in_data_in_31_tpl(bubble_select_stall_entry_m),
        .in_data_in_32_tpl(bubble_select_stall_entry_nn),
        .in_data_in_33_tpl(bubble_select_stall_entry_i),
        .in_data_in_34_tpl(bubble_select_stall_entry_o),
        .in_data_in_35_tpl(bubble_select_stall_entry_bb),
        .in_data_in_36_tpl(bubble_select_stall_entry_q),
        .in_data_in_37_tpl(bubble_select_stall_entry_gg),
        .in_data_in_38_tpl(bubble_select_stall_entry_v),
        .in_data_in_39_tpl(bubble_select_stall_entry_cc),
        .out_stall_out(conv2d3x3_B7_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv2d3x3_B7_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_21_tpl),
        .out_data_out_22_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_22_tpl),
        .out_data_out_23_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_23_tpl),
        .out_data_out_24_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_24_tpl),
        .out_data_out_25_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_25_tpl),
        .out_data_out_26_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_26_tpl),
        .out_data_out_27_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_27_tpl),
        .out_data_out_28_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_28_tpl),
        .out_data_out_29_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_29_tpl),
        .out_data_out_30_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_30_tpl),
        .out_data_out_31_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_31_tpl),
        .out_data_out_32_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_32_tpl),
        .out_data_out_33_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_33_tpl),
        .out_data_out_34_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_34_tpl),
        .out_data_out_35_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_35_tpl),
        .out_data_out_36_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_36_tpl),
        .out_data_out_37_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_37_tpl),
        .out_data_out_38_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_38_tpl),
        .out_data_out_39_tpl(conv2d3x3_B7_merge_reg_aunroll_x_out_data_out_39_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,79)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv2d3x3_B7_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,16)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x(BITJOIN,73)
    assign bubble_join_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_q = {i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_out_c0_exit626_5_tpl, i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_out_c0_exit626_4_tpl, i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_out_c0_exit626_3_tpl, i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_out_c0_exit626_2_tpl, i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_out_c0_exit626_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x(BITSELECT,74)
    assign bubble_select_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_q[32:1]);
    assign bubble_select_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_q[64:33]);
    assign bubble_select_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_q[96:65]);
    assign bubble_select_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_q[97:97]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,77)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,78)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[913:0]);

    // sel_for_coalesced_delay_0(BITSELECT,63)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[191:128]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[255:192]);
    assign sel_for_coalesced_delay_0_f = $unsigned(bubble_select_coalesced_delay_0_fifo_b[319:256]);
    assign sel_for_coalesced_delay_0_g = $unsigned(bubble_select_coalesced_delay_0_fifo_b[383:320]);
    assign sel_for_coalesced_delay_0_h = $unsigned(bubble_select_coalesced_delay_0_fifo_b[415:384]);
    assign sel_for_coalesced_delay_0_i = $unsigned(bubble_select_coalesced_delay_0_fifo_b[447:416]);
    assign sel_for_coalesced_delay_0_j = $unsigned(bubble_select_coalesced_delay_0_fifo_b[479:448]);
    assign sel_for_coalesced_delay_0_k = $unsigned(bubble_select_coalesced_delay_0_fifo_b[511:480]);
    assign sel_for_coalesced_delay_0_l = $unsigned(bubble_select_coalesced_delay_0_fifo_b[543:512]);
    assign sel_for_coalesced_delay_0_m = $unsigned(bubble_select_coalesced_delay_0_fifo_b[575:544]);
    assign sel_for_coalesced_delay_0_n = $unsigned(bubble_select_coalesced_delay_0_fifo_b[607:576]);
    assign sel_for_coalesced_delay_0_o = $unsigned(bubble_select_coalesced_delay_0_fifo_b[639:608]);
    assign sel_for_coalesced_delay_0_p = $unsigned(bubble_select_coalesced_delay_0_fifo_b[671:640]);
    assign sel_for_coalesced_delay_0_q = $unsigned(bubble_select_coalesced_delay_0_fifo_b[703:672]);
    assign sel_for_coalesced_delay_0_r = $unsigned(bubble_select_coalesced_delay_0_fifo_b[735:704]);
    assign sel_for_coalesced_delay_0_s = $unsigned(bubble_select_coalesced_delay_0_fifo_b[767:736]);
    assign sel_for_coalesced_delay_0_t = $unsigned(bubble_select_coalesced_delay_0_fifo_b[799:768]);
    assign sel_for_coalesced_delay_0_u = $unsigned(bubble_select_coalesced_delay_0_fifo_b[831:800]);
    assign sel_for_coalesced_delay_0_v = $unsigned(bubble_select_coalesced_delay_0_fifo_b[863:832]);
    assign sel_for_coalesced_delay_0_w = $unsigned(bubble_select_coalesced_delay_0_fifo_b[895:864]);
    assign sel_for_coalesced_delay_0_x = $unsigned(bubble_select_coalesced_delay_0_fifo_b[896:896]);
    assign sel_for_coalesced_delay_0_y = $unsigned(bubble_select_coalesced_delay_0_fifo_b[897:897]);
    assign sel_for_coalesced_delay_0_z = $unsigned(bubble_select_coalesced_delay_0_fifo_b[898:898]);
    assign sel_for_coalesced_delay_0_aa = $unsigned(bubble_select_coalesced_delay_0_fifo_b[899:899]);
    assign sel_for_coalesced_delay_0_bb = $unsigned(bubble_select_coalesced_delay_0_fifo_b[900:900]);
    assign sel_for_coalesced_delay_0_cc = $unsigned(bubble_select_coalesced_delay_0_fifo_b[901:901]);
    assign sel_for_coalesced_delay_0_dd = $unsigned(bubble_select_coalesced_delay_0_fifo_b[902:902]);
    assign sel_for_coalesced_delay_0_ee = $unsigned(bubble_select_coalesced_delay_0_fifo_b[903:903]);
    assign sel_for_coalesced_delay_0_ff = $unsigned(bubble_select_coalesced_delay_0_fifo_b[904:904]);
    assign sel_for_coalesced_delay_0_gg = $unsigned(bubble_select_coalesced_delay_0_fifo_b[905:905]);
    assign sel_for_coalesced_delay_0_hh = $unsigned(bubble_select_coalesced_delay_0_fifo_b[906:906]);
    assign sel_for_coalesced_delay_0_ii = $unsigned(bubble_select_coalesced_delay_0_fifo_b[907:907]);
    assign sel_for_coalesced_delay_0_jj = $unsigned(bubble_select_coalesced_delay_0_fifo_b[908:908]);
    assign sel_for_coalesced_delay_0_kk = $unsigned(bubble_select_coalesced_delay_0_fifo_b[909:909]);
    assign sel_for_coalesced_delay_0_ll = $unsigned(bubble_select_coalesced_delay_0_fifo_b[910:910]);
    assign sel_for_coalesced_delay_0_mm = $unsigned(bubble_select_coalesced_delay_0_fifo_b[911:911]);
    assign sel_for_coalesced_delay_0_nn = $unsigned(bubble_select_coalesced_delay_0_fifo_b[912:912]);
    assign sel_for_coalesced_delay_0_oo = $unsigned(bubble_select_coalesced_delay_0_fifo_b[913:913]);

    // dupName_0_sync_out_x(GPOUT,19)@12
    assign out_add110 = sel_for_coalesced_delay_0_v;
    assign out_add247 = sel_for_coalesced_delay_0_m;
    assign out_c0_exe1627 = bubble_select_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_b;
    assign out_c0_exe2628 = bubble_select_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_c;
    assign out_c0_exe3629 = bubble_select_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_d;
    assign out_c0_exe4630 = bubble_select_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_e;
    assign out_c0_exe5631 = bubble_select_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter618156_conv2d3x31_aunroll_x_f;
    assign out_cmp26120 = sel_for_coalesced_delay_0_hh;
    assign out_cmp26265 = sel_for_coalesced_delay_0_gg;
    assign out_cmp26_1135 = sel_for_coalesced_delay_0_kk;
    assign out_cmp26_1292 = sel_for_coalesced_delay_0_ee;
    assign out_cmp26_2150 = sel_for_coalesced_delay_0_nn;
    assign out_cmp26_2319 = sel_for_coalesced_delay_0_cc;
    assign out_cmp27125 = sel_for_coalesced_delay_0_ii;
    assign out_cmp27274 = sel_for_coalesced_delay_0_x;
    assign out_cmp27_1140 = sel_for_coalesced_delay_0_ll;
    assign out_cmp27_1301 = sel_for_coalesced_delay_0_dd;
    assign out_cmp27_2155 = sel_for_coalesced_delay_0_oo;
    assign out_cmp27_2328 = sel_for_coalesced_delay_0_bb;
    assign out_filter_weight_addr_067_replace_phi204 = sel_for_coalesced_delay_0_g;
    assign out_filter_weight_addr_067_replace_phi85_pop19346 = sel_for_coalesced_delay_0_e;
    assign out_filter_weight_addr_067_replace_phi87 = sel_for_coalesced_delay_0_b;
    assign out_j_061_pop24179 = sel_for_coalesced_delay_0_o;
    assign out_k_059 = sel_for_coalesced_delay_0_r;
    assign out_lm25226 = sel_for_coalesced_delay_0_n;
    assign out_lm2597_pop21364 = sel_for_coalesced_delay_0_i;
    assign out_lm2599 = sel_for_coalesced_delay_0_s;
    assign out_mul56115 = sel_for_coalesced_delay_0_w;
    assign out_mul56256 = sel_for_coalesced_delay_0_l;
    assign out_notcmp73175 = sel_for_coalesced_delay_0_mm;
    assign out_notcmp77160 = sel_for_coalesced_delay_0_ff;
    assign out_notcmp77337 = sel_for_coalesced_delay_0_aa;
    assign out_notcmp81103_pop22373 = sel_for_coalesced_delay_0_y;
    assign out_notcmp81105 = sel_for_coalesced_delay_0_z;
    assign out_notcmp81237 = sel_for_coalesced_delay_0_jj;
    assign out_output_im_addr_068_replace_phi215 = sel_for_coalesced_delay_0_f;
    assign out_output_im_addr_068_replace_phi91_pop20355 = sel_for_coalesced_delay_0_d;
    assign out_output_im_addr_068_replace_phi93 = sel_for_coalesced_delay_0_c;
    assign out_pad_sync_buffer171 = sel_for_coalesced_delay_0_p;
    assign out_stride_sync_buffer167 = sel_for_coalesced_delay_0_q;
    assign out_sub_1130 = sel_for_coalesced_delay_0_u;
    assign out_sub_1283 = sel_for_coalesced_delay_0_k;
    assign out_sub_2145 = sel_for_coalesced_delay_0_t;
    assign out_sub_2310 = sel_for_coalesced_delay_0_j;
    assign out_tmp_058 = sel_for_coalesced_delay_0_h;
    assign out_valid_out = SE_out_coalesced_delay_0_fifo_V0;

endmodule
