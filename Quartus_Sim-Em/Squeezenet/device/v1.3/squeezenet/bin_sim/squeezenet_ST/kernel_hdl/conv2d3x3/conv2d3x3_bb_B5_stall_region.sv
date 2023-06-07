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

// SystemVerilog created from conv2d3x3_bb_B5_stall_region
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B5_stall_region (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_conv2d3x33_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_conv2d3x33_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_pad,
    input wire [31:0] in_stride,
    input wire [0:0] in_intel_reserved_ffwd_4_0,
    input wire [32:0] in_intel_reserved_ffwd_6_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_add239,
    input wire [0:0] in_cmp26257,
    input wire [0:0] in_cmp26_1284,
    input wire [0:0] in_cmp26_2311,
    input wire [0:0] in_cmp27266,
    input wire [0:0] in_cmp27_1293,
    input wire [0:0] in_cmp27_2320,
    input wire [63:0] in_filter_weight_addr_067_replace_phi205,
    input wire [63:0] in_filter_weight_addr_067_replace_phi85_pop19338,
    input wire [0:0] in_forked35,
    input wire [31:0] in_lm25227,
    input wire [31:0] in_lm2597_pop21356,
    input wire [31:0] in_mul56248,
    input wire [0:0] in_notcmp77329,
    input wire [0:0] in_notcmp81103_pop22365,
    input wire [0:0] in_notcmp81238,
    input wire [63:0] in_output_im_addr_068_replace_phi216,
    input wire [63:0] in_output_im_addr_068_replace_phi91_pop20347,
    input wire [31:0] in_sub_1275,
    input wire [31:0] in_sub_2302,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10605,
    output wire [31:0] out_c0_exe11606,
    output wire [0:0] out_c0_exe12607,
    output wire [0:0] out_c0_exe13608,
    output wire [31:0] out_c0_exe14609,
    output wire [0:0] out_c0_exe15610,
    output wire [31:0] out_c0_exe1596,
    output wire [0:0] out_c0_exe16611,
    output wire [31:0] out_c0_exe17612,
    output wire [0:0] out_c0_exe18613,
    output wire [0:0] out_c0_exe19614,
    output wire [0:0] out_c0_exe20615,
    output wire [63:0] out_c0_exe21,
    output wire [63:0] out_c0_exe22,
    output wire [31:0] out_c0_exe23,
    output wire [0:0] out_c0_exe24,
    output wire [31:0] out_c0_exe25,
    output wire [31:0] out_c0_exe2597,
    output wire [31:0] out_c0_exe26,
    output wire [0:0] out_c0_exe27,
    output wire [0:0] out_c0_exe28,
    output wire [31:0] out_c0_exe29,
    output wire [0:0] out_c0_exe30,
    output wire [0:0] out_c0_exe31,
    output wire [31:0] out_c0_exe32,
    output wire [0:0] out_c0_exe33,
    output wire [0:0] out_c0_exe34,
    output wire [0:0] out_c0_exe35,
    output wire [63:0] out_c0_exe36,
    output wire [63:0] out_c0_exe37,
    output wire [31:0] out_c0_exe38,
    output wire [0:0] out_c0_exe39,
    output wire [0:0] out_c0_exe4599,
    output wire [31:0] out_c0_exe5600,
    output wire [63:0] out_c0_exe6601,
    output wire [63:0] out_c0_exe7602,
    output wire [31:0] out_c0_exe8603,
    output wire [0:0] out_c0_exe9604,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] conv2d3x3_B5_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv2d3x3_B5_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [63:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [63:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [31:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [0:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [0:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [31:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [0:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [0:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [0:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [63:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [63:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_17_tpl;
    wire [31:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_18_tpl;
    wire [0:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_19_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_conv2d3x33_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_conv2d3x33_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_5_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_6_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_10_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_13_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_14_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_15_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_16_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_17_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_18_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_19_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_20_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_21_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_22_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_23_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_24_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_25_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_26_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_27_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_28_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_29_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_30_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_31_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_32_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_33_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_34_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_35_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_36_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_37_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_38_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_39_tpl;
    wire [457:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [63:0] bubble_select_stall_entry_i;
    wire [63:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [31:0] bubble_select_stall_entry_m;
    wire [31:0] bubble_select_stall_entry_n;
    wire [0:0] bubble_select_stall_entry_o;
    wire [0:0] bubble_select_stall_entry_p;
    wire [0:0] bubble_select_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_r;
    wire [63:0] bubble_select_stall_entry_s;
    wire [31:0] bubble_select_stall_entry_t;
    wire [31:0] bubble_select_stall_entry_u;
    wire [457:0] bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_b;
    wire [63:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_c;
    wire [63:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_g;
    wire [31:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_h;
    wire [0:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_j;
    wire [31:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_k;
    wire [0:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_l;
    wire [0:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_m;
    wire [31:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_n;
    wire [0:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_o;
    wire [0:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_p;
    wire [0:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_q;
    wire [63:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_r;
    wire [63:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_s;
    wire [31:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_t;
    wire [0:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_u;
    wire [849:0] bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_e;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_f;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_j;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_m;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_n;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_o;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_p;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_r;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_s;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_t;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_u;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_v;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_w;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_x;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_y;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_z;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_aa;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_bb;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_cc;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_dd;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_ee;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_ff;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_gg;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_hh;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_ii;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_jj;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_kk;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_ll;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_mm;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_conv2d3x3_B5_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv2d3x3_B5_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv2d3x3_B5_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,25)
    assign bubble_join_stall_entry_q = {in_sub_2302, in_sub_1275, in_output_im_addr_068_replace_phi91_pop20347, in_output_im_addr_068_replace_phi216, in_notcmp81238, in_notcmp81103_pop22365, in_notcmp77329, in_mul56248, in_lm2597_pop21356, in_lm25227, in_forked35, in_filter_weight_addr_067_replace_phi85_pop19338, in_filter_weight_addr_067_replace_phi205, in_cmp27_2320, in_cmp27_1293, in_cmp27266, in_cmp26_2311, in_cmp26_1284, in_cmp26257, in_add239};

    // bubble_select_stall_entry(BITSELECT,26)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[35:35]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[36:36]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[37:37]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[101:38]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[165:102]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[166:166]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[198:167]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[230:199]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[262:231]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[263:263]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[264:264]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[265:265]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[329:266]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[393:330]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[425:394]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[457:426]);

    // SE_stall_entry(STALLENABLE,35)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv2d3x3_B5_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // conv2d3x3_B5_merge_reg_aunroll_x(BLACKBOX,21)@0
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
    conv2d3x3_B5_merge_reg theconv2d3x3_B5_merge_reg_aunroll_x (
        .in_stall_in(SE_out_conv2d3x3_B5_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_k),
        .in_data_in_1_tpl(bubble_select_stall_entry_i),
        .in_data_in_2_tpl(bubble_select_stall_entry_r),
        .in_data_in_3_tpl(bubble_select_stall_entry_l),
        .in_data_in_4_tpl(bubble_select_stall_entry_q),
        .in_data_in_5_tpl(bubble_select_stall_entry_b),
        .in_data_in_6_tpl(bubble_select_stall_entry_n),
        .in_data_in_7_tpl(bubble_select_stall_entry_c),
        .in_data_in_8_tpl(bubble_select_stall_entry_f),
        .in_data_in_9_tpl(bubble_select_stall_entry_t),
        .in_data_in_10_tpl(bubble_select_stall_entry_d),
        .in_data_in_11_tpl(bubble_select_stall_entry_g),
        .in_data_in_12_tpl(bubble_select_stall_entry_u),
        .in_data_in_13_tpl(bubble_select_stall_entry_e),
        .in_data_in_14_tpl(bubble_select_stall_entry_h),
        .in_data_in_15_tpl(bubble_select_stall_entry_o),
        .in_data_in_16_tpl(bubble_select_stall_entry_j),
        .in_data_in_17_tpl(bubble_select_stall_entry_s),
        .in_data_in_18_tpl(bubble_select_stall_entry_m),
        .in_data_in_19_tpl(bubble_select_stall_entry_p),
        .out_stall_out(conv2d3x3_B5_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv2d3x3_B5_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_19_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_conv2d3x3_B5_merge_reg_aunroll_x(BITJOIN,29)
    assign bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q = {conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_19_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_18_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_17_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_16_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_14_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_13_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_12_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_11_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_10_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_9_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_8_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_7_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_6_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_5_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_4_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_3_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_2_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv2d3x3_B5_merge_reg_aunroll_x(BITSELECT,30)
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[64:1]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[128:65]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[160:129]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_f = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[161:161]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_g = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[193:162]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_h = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[225:194]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_i = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[226:226]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_j = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[227:227]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_k = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[259:228]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_l = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[260:260]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_m = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[261:261]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_n = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[293:262]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_o = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[294:294]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_p = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[295:295]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_q = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[296:296]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_r = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[360:297]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_s = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[424:361]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_t = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[456:425]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_u = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[457:457]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_conv2d3x3_B5_merge_reg_aunroll_x(STALLENABLE,38)
    // Valid signal propagation
    assign SE_out_conv2d3x3_B5_merge_reg_aunroll_x_V0 = SE_out_conv2d3x3_B5_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_conv2d3x3_B5_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_o_stall | ~ (SE_out_conv2d3x3_B5_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_conv2d3x3_B5_merge_reg_aunroll_x_wireValid = conv2d3x3_B5_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x(STALLENABLE,40)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x(BLACKBOX,23)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_conv2d3x33_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_conv2d3x33_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit595_0_tpl@5
    // out out_c0_exit595_1_tpl@5
    // out out_c0_exit595_2_tpl@5
    // out out_c0_exit595_3_tpl@5
    // out out_c0_exit595_4_tpl@5
    // out out_c0_exit595_5_tpl@5
    // out out_c0_exit595_6_tpl@5
    // out out_c0_exit595_7_tpl@5
    // out out_c0_exit595_8_tpl@5
    // out out_c0_exit595_9_tpl@5
    // out out_c0_exit595_10_tpl@5
    // out out_c0_exit595_11_tpl@5
    // out out_c0_exit595_12_tpl@5
    // out out_c0_exit595_13_tpl@5
    // out out_c0_exit595_14_tpl@5
    // out out_c0_exit595_15_tpl@5
    // out out_c0_exit595_16_tpl@5
    // out out_c0_exit595_17_tpl@5
    // out out_c0_exit595_18_tpl@5
    // out out_c0_exit595_19_tpl@5
    // out out_c0_exit595_20_tpl@5
    // out out_c0_exit595_21_tpl@5
    // out out_c0_exit595_22_tpl@5
    // out out_c0_exit595_23_tpl@5
    // out out_c0_exit595_24_tpl@5
    // out out_c0_exit595_25_tpl@5
    // out out_c0_exit595_26_tpl@5
    // out out_c0_exit595_27_tpl@5
    // out out_c0_exit595_28_tpl@5
    // out out_c0_exit595_29_tpl@5
    // out out_c0_exit595_30_tpl@5
    // out out_c0_exit595_31_tpl@5
    // out out_c0_exit595_32_tpl@5
    // out out_c0_exit595_33_tpl@5
    // out out_c0_exit595_34_tpl@5
    // out out_c0_exit595_35_tpl@5
    // out out_c0_exit595_36_tpl@5
    // out out_c0_exit595_37_tpl@5
    // out out_c0_exit595_38_tpl@5
    // out out_c0_exit595_39_tpl@5
    conv2d3x3_i_sfc_s_c0_in_for_cond10_prehe0000ter569155_conv2d3x31 thei_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_backStall),
        .in_i_valid(SE_out_conv2d3x3_B5_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_pad(in_pad),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stride(in_stride),
        .in_c0_eni20_0_tpl(GND_q),
        .in_c0_eni20_1_tpl(bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_b),
        .in_c0_eni20_2_tpl(bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_r),
        .in_c0_eni20_3_tpl(bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_s),
        .in_c0_eni20_4_tpl(bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_t),
        .in_c0_eni20_5_tpl(bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_u),
        .in_c0_eni20_6_tpl(bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_g),
        .in_c0_eni20_7_tpl(bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_h),
        .in_c0_eni20_8_tpl(bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_i),
        .in_c0_eni20_9_tpl(bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_j),
        .in_c0_eni20_10_tpl(bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_k),
        .in_c0_eni20_11_tpl(bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_l),
        .in_c0_eni20_12_tpl(bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_m),
        .in_c0_eni20_13_tpl(bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_n),
        .in_c0_eni20_14_tpl(bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_o),
        .in_c0_eni20_15_tpl(bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_p),
        .in_c0_eni20_16_tpl(bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_q),
        .in_c0_eni20_17_tpl(bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_c),
        .in_c0_eni20_18_tpl(bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_d),
        .in_c0_eni20_19_tpl(bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_e),
        .in_c0_eni20_20_tpl(bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_f),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_conv2d3x33_exiting_stall_out(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_conv2d3x33_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_conv2d3x33_exiting_valid_out(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_conv2d3x33_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit595_0_tpl(),
        .out_c0_exit595_1_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_1_tpl),
        .out_c0_exit595_2_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_2_tpl),
        .out_c0_exit595_3_tpl(),
        .out_c0_exit595_4_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_4_tpl),
        .out_c0_exit595_5_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_5_tpl),
        .out_c0_exit595_6_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_6_tpl),
        .out_c0_exit595_7_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_7_tpl),
        .out_c0_exit595_8_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_8_tpl),
        .out_c0_exit595_9_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_9_tpl),
        .out_c0_exit595_10_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_10_tpl),
        .out_c0_exit595_11_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_11_tpl),
        .out_c0_exit595_12_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_12_tpl),
        .out_c0_exit595_13_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_13_tpl),
        .out_c0_exit595_14_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_14_tpl),
        .out_c0_exit595_15_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_15_tpl),
        .out_c0_exit595_16_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_16_tpl),
        .out_c0_exit595_17_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_17_tpl),
        .out_c0_exit595_18_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_18_tpl),
        .out_c0_exit595_19_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_19_tpl),
        .out_c0_exit595_20_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_20_tpl),
        .out_c0_exit595_21_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_21_tpl),
        .out_c0_exit595_22_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_22_tpl),
        .out_c0_exit595_23_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_23_tpl),
        .out_c0_exit595_24_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_24_tpl),
        .out_c0_exit595_25_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_25_tpl),
        .out_c0_exit595_26_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_26_tpl),
        .out_c0_exit595_27_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_27_tpl),
        .out_c0_exit595_28_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_28_tpl),
        .out_c0_exit595_29_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_29_tpl),
        .out_c0_exit595_30_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_30_tpl),
        .out_c0_exit595_31_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_31_tpl),
        .out_c0_exit595_32_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_32_tpl),
        .out_c0_exit595_33_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_33_tpl),
        .out_c0_exit595_34_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_34_tpl),
        .out_c0_exit595_35_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_35_tpl),
        .out_c0_exit595_36_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_36_tpl),
        .out_c0_exit595_37_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_37_tpl),
        .out_c0_exit595_38_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_38_tpl),
        .out_c0_exit595_39_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_39_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_conv2d3x33_exiting_valid_out = i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_conv2d3x33_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_conv2d3x33_exiting_stall_out = i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_conv2d3x33_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,11)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,19)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x(BITJOIN,33)
    assign bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q = {i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_39_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_38_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_37_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_36_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_35_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_34_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_33_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_32_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_31_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_30_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_29_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_28_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_27_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_26_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_25_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_24_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_23_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_22_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_21_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_20_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_19_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_18_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_17_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_16_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_15_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_14_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_13_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_12_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_11_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_10_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_9_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_8_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_7_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_6_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_5_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_4_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_2_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_out_c0_exit595_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x(BITSELECT,34)
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[63:32]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[64:64]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[96:65]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[160:97]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[224:161]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[256:225]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[257:257]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[289:258]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[321:290]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[322:322]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[323:323]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[355:324]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[356:356]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[357:357]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[389:358]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[390:390]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[391:391]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_t = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[392:392]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_u = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[456:393]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_v = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[520:457]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_w = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[552:521]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_x = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[553:553]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_y = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[585:554]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_z = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[617:586]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_aa = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[618:618]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_bb = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[619:619]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_cc = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[651:620]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_dd = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[652:652]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_ee = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[653:653]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_ff = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[685:654]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_gg = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[686:686]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_hh = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[687:687]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_ii = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[688:688]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_jj = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[752:689]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_kk = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[816:753]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_ll = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[848:817]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_mm = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q[849:849]);

    // dupName_0_sync_out_x(GPOUT,22)@5
    assign out_c0_exe10605 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_j;
    assign out_c0_exe11606 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_k;
    assign out_c0_exe12607 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_l;
    assign out_c0_exe13608 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_m;
    assign out_c0_exe14609 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_n;
    assign out_c0_exe15610 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_o;
    assign out_c0_exe1596 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_b;
    assign out_c0_exe16611 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_p;
    assign out_c0_exe17612 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_q;
    assign out_c0_exe18613 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_r;
    assign out_c0_exe19614 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_s;
    assign out_c0_exe20615 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_t;
    assign out_c0_exe21 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_u;
    assign out_c0_exe22 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_v;
    assign out_c0_exe23 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_w;
    assign out_c0_exe24 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_x;
    assign out_c0_exe25 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_y;
    assign out_c0_exe2597 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_c;
    assign out_c0_exe26 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_z;
    assign out_c0_exe27 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_aa;
    assign out_c0_exe28 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_bb;
    assign out_c0_exe29 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_cc;
    assign out_c0_exe30 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_dd;
    assign out_c0_exe31 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_ee;
    assign out_c0_exe32 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_ff;
    assign out_c0_exe33 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_gg;
    assign out_c0_exe34 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_hh;
    assign out_c0_exe35 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_ii;
    assign out_c0_exe36 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_jj;
    assign out_c0_exe37 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_kk;
    assign out_c0_exe38 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_ll;
    assign out_c0_exe39 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_mm;
    assign out_c0_exe4599 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_d;
    assign out_c0_exe5600 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_e;
    assign out_c0_exe6601 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_f;
    assign out_c0_exe7602 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_g;
    assign out_c0_exe8603 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_h;
    assign out_c0_exe9604 = bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_i;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2d3x3s_c0_enter569155_conv2d3x31_aunroll_x_V0;

endmodule
