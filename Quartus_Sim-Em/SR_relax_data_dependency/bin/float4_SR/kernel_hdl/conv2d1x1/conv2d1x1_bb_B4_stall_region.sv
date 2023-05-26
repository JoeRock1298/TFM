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

// SystemVerilog created from conv2d1x1_bb_B4_stall_region
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B4_stall_region (
    input wire [511:0] in_lm96_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm96_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm96_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm96_conv2d1x1_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_input_channels,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    input wire [32:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_filter_bias,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked17,
    input wire [31:0] in_spec_select152,
    input wire [31:0] in_spec_select323158,
    input wire [31:0] in_spec_select324164,
    input wire [31:0] in_spec_select325170,
    input wire [31:0] in_spec_select326176,
    input wire [31:0] in_spec_select327182,
    input wire [31:0] in_spec_select328188,
    input wire [31:0] in_spec_select329194,
    input wire [31:0] in_spec_select330200,
    input wire [31:0] in_spec_select331206,
    input wire [31:0] in_spec_select332212,
    input wire [31:0] in_spec_select333218,
    input wire [31:0] in_spec_select334224,
    input wire [31:0] in_spec_select335230,
    input wire [31:0] in_spec_select336236,
    input wire [31:0] in_unnamed_conv2d1x16,
    input wire [0:0] in_valid_in,
    output wire [30:0] out_lm96_conv2d1x1_avm_address,
    output wire [0:0] out_lm96_conv2d1x1_avm_enable,
    output wire [0:0] out_lm96_conv2d1x1_avm_read,
    output wire [0:0] out_lm96_conv2d1x1_avm_write,
    output wire [511:0] out_lm96_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm96_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm96_conv2d1x1_avm_burstcount,
    output wire [0:0] out_c0_exe10403,
    output wire [0:0] out_c0_exe11404,
    output wire [31:0] out_c0_exe12405,
    output wire [31:0] out_c0_exe13406,
    output wire [31:0] out_c0_exe14407,
    output wire [31:0] out_c0_exe15408,
    output wire [31:0] out_c0_exe16409,
    output wire [31:0] out_c0_exe17410,
    output wire [31:0] out_c0_exe18411,
    output wire [31:0] out_c0_exe19,
    output wire [31:0] out_c0_exe20,
    output wire [31:0] out_c0_exe21,
    output wire [31:0] out_c0_exe22,
    output wire [31:0] out_c0_exe23,
    output wire [31:0] out_c0_exe2395,
    output wire [31:0] out_c0_exe24,
    output wire [31:0] out_c0_exe25,
    output wire [31:0] out_c0_exe26,
    output wire [31:0] out_c0_exe27,
    output wire [0:0] out_c0_exe28,
    output wire [31:0] out_c0_exe29,
    output wire [31:0] out_c0_exe30,
    output wire [31:0] out_c0_exe31,
    output wire [31:0] out_c0_exe32,
    output wire [31:0] out_c0_exe33,
    output wire [0:0] out_c0_exe3396,
    output wire [31:0] out_c0_exe34,
    output wire [31:0] out_c0_exe35,
    output wire [31:0] out_c0_exe36,
    output wire [31:0] out_c0_exe37,
    output wire [31:0] out_c0_exe38,
    output wire [31:0] out_c0_exe39,
    output wire [31:0] out_c0_exe40,
    output wire [31:0] out_c0_exe41,
    output wire [31:0] out_c0_exe42,
    output wire [31:0] out_c0_exe43,
    output wire [0:0] out_c0_exe4397,
    output wire [31:0] out_c0_exe44,
    output wire [0:0] out_c0_exe5398,
    output wire [32:0] out_c0_exe6399,
    output wire [31:0] out_c0_exe8401,
    output wire [31:0] out_c0_exe9402,
    output wire [31:0] out_lm96,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [30:0] i_llvm_fpga_mem_lm96_conv2d1x13_out_lm96_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm96_conv2d1x13_out_lm96_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm96_conv2d1x13_out_lm96_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm96_conv2d1x13_out_lm96_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm96_conv2d1x13_out_lm96_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm96_conv2d1x13_out_lm96_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm96_conv2d1x13_out_lm96_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm96_conv2d1x13_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm96_conv2d1x13_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm96_conv2d1x13_out_o_valid;
    wire [0:0] conv2d1x1_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv2d1x1_B4_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [31:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [31:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [31:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [31:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [31:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [31:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [31:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [31:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [31:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_5_tpl;
    wire [32:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_6_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_11_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_12_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_13_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_14_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_15_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_16_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_17_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_18_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_19_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_20_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_21_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_22_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_23_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_24_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_25_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_26_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_27_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_28_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_29_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_30_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_31_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_32_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_33_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_34_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_35_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_36_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_37_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_38_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_39_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_40_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_41_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_42_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_43_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_44_tpl;
    wire [1158:0] join_for_coalesced_delay_0_q;
    wire [32:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [31:0] sel_for_coalesced_delay_0_f;
    wire [31:0] sel_for_coalesced_delay_0_g;
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
    wire [31:0] sel_for_coalesced_delay_0_x;
    wire [31:0] sel_for_coalesced_delay_0_y;
    wire [31:0] sel_for_coalesced_delay_0_z;
    wire [31:0] sel_for_coalesced_delay_0_aa;
    wire [31:0] sel_for_coalesced_delay_0_bb;
    wire [31:0] sel_for_coalesced_delay_0_cc;
    wire [31:0] sel_for_coalesced_delay_0_dd;
    wire [31:0] sel_for_coalesced_delay_0_ee;
    wire [31:0] sel_for_coalesced_delay_0_ff;
    wire [31:0] sel_for_coalesced_delay_0_gg;
    wire [31:0] sel_for_coalesced_delay_0_hh;
    wire [31:0] sel_for_coalesced_delay_0_ii;
    wire [31:0] sel_for_coalesced_delay_0_jj;
    wire [31:0] sel_for_coalesced_delay_0_kk;
    wire [0:0] sel_for_coalesced_delay_0_ll;
    wire [0:0] sel_for_coalesced_delay_0_mm;
    wire [0:0] sel_for_coalesced_delay_0_nn;
    wire [0:0] sel_for_coalesced_delay_0_oo;
    wire [0:0] sel_for_coalesced_delay_0_pp;
    wire [0:0] sel_for_coalesced_delay_0_qq;
    reg [1158:0] coalesced_delay_0_0_q;
    reg [1158:0] coalesced_delay_0_1_q;
    reg [1158:0] coalesced_delay_0_2_q;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm96_conv2d1x13_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm96_conv2d1x13_b;
    wire [512:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [31:0] bubble_select_stall_entry_m;
    wire [31:0] bubble_select_stall_entry_n;
    wire [31:0] bubble_select_stall_entry_o;
    wire [31:0] bubble_select_stall_entry_p;
    wire [31:0] bubble_select_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_r;
    wire [512:0] bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_g;
    wire [31:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_i;
    wire [31:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_j;
    wire [31:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_k;
    wire [31:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_l;
    wire [31:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_m;
    wire [31:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_n;
    wire [31:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_o;
    wire [31:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_p;
    wire [31:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_r;
    wire [1223:0] bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_f;
    wire [32:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_g;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_l;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_m;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_n;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_o;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_p;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_r;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_s;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_t;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_u;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_v;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_w;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_x;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_y;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_z;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_aa;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_bb;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_cc;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_dd;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_ee;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_ff;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_gg;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_hh;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_ii;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_jj;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_kk;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_ll;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_mm;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_nn;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_oo;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_pp;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_qq;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_rr;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_ss;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_V1;
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
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_V0;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_stall_in_bitsignaltemp;
    wire [31:0] bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_data_in;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_stall_out_bitsignaltemp;
    wire [31:0] bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_data_out;


    // bubble_join_stall_entry(BITJOIN,85)
    assign bubble_join_stall_entry_q = {in_unnamed_conv2d1x16, in_spec_select336236, in_spec_select335230, in_spec_select334224, in_spec_select333218, in_spec_select332212, in_spec_select331206, in_spec_select330200, in_spec_select329194, in_spec_select328188, in_spec_select327182, in_spec_select326176, in_spec_select325170, in_spec_select324164, in_spec_select323158, in_spec_select152, in_forked17};

    // bubble_select_stall_entry(BITSELECT,86)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[96:65]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[128:97]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[160:129]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[192:161]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[224:193]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[256:225]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[288:257]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[320:289]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[352:321]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[384:353]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[416:385]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[448:417]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[480:449]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[512:481]);

    // SE_stall_entry(STALLENABLE,97)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv2d1x1_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // conv2d1x1_B4_merge_reg_aunroll_x(BLACKBOX,28)@0
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
    conv2d1x1_B4_merge_reg theconv2d1x1_B4_merge_reg_aunroll_x (
        .in_stall_in(SE_out_conv2d1x1_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_c),
        .in_data_in_2_tpl(bubble_select_stall_entry_r),
        .in_data_in_3_tpl(bubble_select_stall_entry_d),
        .in_data_in_4_tpl(bubble_select_stall_entry_e),
        .in_data_in_5_tpl(bubble_select_stall_entry_f),
        .in_data_in_6_tpl(bubble_select_stall_entry_g),
        .in_data_in_7_tpl(bubble_select_stall_entry_h),
        .in_data_in_8_tpl(bubble_select_stall_entry_i),
        .in_data_in_9_tpl(bubble_select_stall_entry_j),
        .in_data_in_10_tpl(bubble_select_stall_entry_k),
        .in_data_in_11_tpl(bubble_select_stall_entry_l),
        .in_data_in_12_tpl(bubble_select_stall_entry_m),
        .in_data_in_13_tpl(bubble_select_stall_entry_n),
        .in_data_in_14_tpl(bubble_select_stall_entry_o),
        .in_data_in_15_tpl(bubble_select_stall_entry_p),
        .in_data_in_16_tpl(bubble_select_stall_entry_q),
        .out_stall_out(conv2d1x1_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv2d1x1_B4_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_16_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_conv2d1x1_B4_merge_reg_aunroll_x(BITJOIN,89)
    assign bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q = {conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_16_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_15_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_14_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_13_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_12_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_11_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_10_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_9_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_8_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_7_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_6_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_5_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_4_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_3_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_2_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_1_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv2d1x1_B4_merge_reg_aunroll_x(BITSELECT,90)
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[64:33]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[96:65]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_f = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[128:97]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_g = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[160:129]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_h = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[192:161]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_i = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[224:193]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_j = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[256:225]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_k = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[288:257]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_l = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[320:289]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_m = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[352:321]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_n = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[384:353]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_o = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[416:385]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_p = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[448:417]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_q = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[480:449]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_r = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[512:481]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_conv2d1x1_B4_merge_reg_aunroll_x(STALLENABLE,100)
    // Valid signal propagation
    assign SE_out_conv2d1x1_B4_merge_reg_aunroll_x_V0 = SE_out_conv2d1x1_B4_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_conv2d1x1_B4_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_o_stall | ~ (SE_out_conv2d1x1_B4_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_conv2d1x1_B4_merge_reg_aunroll_x_wireValid = conv2d1x1_B4_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_llvm_fpga_mem_lm96_conv2d1x13(STALLENABLE,96)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_fromReg0 <= SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_fromReg1 <= SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_backStall) & SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_wireValid) | SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_consumed1 = (~ (bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_stall_out) & SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_wireValid) | SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_StallValid = SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_backStall & SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_toReg0 = SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_StallValid & SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_toReg1 = SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_StallValid & SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_or0 = SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_consumed1 & SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_or0);
    assign SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_backStall = SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_V0 = SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_V1 = SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_wireValid = i_llvm_fpga_mem_lm96_conv2d1x13_out_o_valid;

    // bubble_join_i_llvm_fpga_mem_lm96_conv2d1x13(BITJOIN,81)
    assign bubble_join_i_llvm_fpga_mem_lm96_conv2d1x13_q = i_llvm_fpga_mem_lm96_conv2d1x13_out_o_readdata;

    // bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg(STALLFIFO,130)
    assign bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_valid_in = SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_V1;
    assign bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_backStall;
    assign bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_data_in = bubble_join_i_llvm_fpga_mem_lm96_conv2d1x13_q;
    assign bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(32),
        .IMPL("zl_reg")
    ) thebubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_llvm_fpga_mem_lm96_conv2d1x13_q),
        .valid_out(bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data(STALLENABLE,109)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_V0 = SE_out_bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_and0 = bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_and1 = SE_coalesced_delay_0_2_V0 & SE_out_bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_and0;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_wireValid = SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_V0 & SE_out_bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_and1;

    // SE_coalesced_delay_0_2(STALLENABLE,107)
    // Valid signal propagation
    assign SE_coalesced_delay_0_2_V0 = SE_coalesced_delay_0_2_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_2_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_backStall & SE_coalesced_delay_0_2_R_v_0;
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

    // SE_coalesced_delay_0_1(STALLENABLE,106)
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

    // SE_coalesced_delay_0_0(STALLENABLE,105)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_coalesced_delay_0_1_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_V1;
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

    // bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x(BITJOIN,93)
    assign bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q = {i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_44_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_43_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_42_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_41_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_40_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_39_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_38_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_37_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_36_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_35_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_34_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_33_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_32_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_31_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_30_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_29_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_28_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_27_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_26_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_25_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_24_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_23_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_22_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_21_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_20_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_19_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_18_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_17_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_16_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_15_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_14_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_13_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_12_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_11_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_10_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_9_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_8_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_7_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_6_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_5_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_4_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_3_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_2_tpl, i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x(BITSELECT,94)
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[32:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[33:33]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[34:34]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[35:35]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[68:36]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[132:69]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[164:133]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[196:165]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[197:197]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[198:198]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[230:199]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[262:231]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[294:263]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[326:295]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[358:327]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[390:359]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[422:391]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_t = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[454:423]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_u = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[486:455]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_v = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[518:487]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_w = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[550:519]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_x = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[582:551]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_y = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[614:583]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_z = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[646:615]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_aa = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[678:647]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_bb = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[710:679]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_cc = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[711:711]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_dd = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[743:712]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_ee = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[775:744]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_ff = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[807:776]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_gg = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[839:808]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_hh = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[871:840]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_ii = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[903:872]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_jj = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[935:904]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_kk = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[967:936]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_ll = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[999:968]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_mm = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[1031:1000]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_nn = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[1063:1032]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_oo = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[1095:1064]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_pp = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[1127:1096]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_qq = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[1159:1128]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_rr = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[1191:1160]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_ss = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q[1223:1192]);

    // i_llvm_fpga_mem_lm96_conv2d1x13(BLACKBOX,7)@11
    // in in_i_stall@20000000
    // out out_lm96_conv2d1x1_avm_address@20000000
    // out out_lm96_conv2d1x1_avm_burstcount@20000000
    // out out_lm96_conv2d1x1_avm_byteenable@20000000
    // out out_lm96_conv2d1x1_avm_enable@20000000
    // out out_lm96_conv2d1x1_avm_read@20000000
    // out out_lm96_conv2d1x1_avm_write@20000000
    // out out_lm96_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@14
    // out out_o_stall@20000000
    // out out_o_valid@14
    conv2d1x1_i_llvm_fpga_mem_lm96_0 thei_llvm_fpga_mem_lm96_conv2d1x13 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_h),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm96_conv2d1x13_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_V0),
        .in_lm96_conv2d1x1_avm_readdata(in_lm96_conv2d1x1_avm_readdata),
        .in_lm96_conv2d1x1_avm_readdatavalid(in_lm96_conv2d1x1_avm_readdatavalid),
        .in_lm96_conv2d1x1_avm_waitrequest(in_lm96_conv2d1x1_avm_waitrequest),
        .in_lm96_conv2d1x1_avm_writeack(in_lm96_conv2d1x1_avm_writeack),
        .out_lm96_conv2d1x1_avm_address(i_llvm_fpga_mem_lm96_conv2d1x13_out_lm96_conv2d1x1_avm_address),
        .out_lm96_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm96_conv2d1x13_out_lm96_conv2d1x1_avm_burstcount),
        .out_lm96_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm96_conv2d1x13_out_lm96_conv2d1x1_avm_byteenable),
        .out_lm96_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm96_conv2d1x13_out_lm96_conv2d1x1_avm_enable),
        .out_lm96_conv2d1x1_avm_read(i_llvm_fpga_mem_lm96_conv2d1x13_out_lm96_conv2d1x1_avm_read),
        .out_lm96_conv2d1x1_avm_write(i_llvm_fpga_mem_lm96_conv2d1x13_out_lm96_conv2d1x1_avm_write),
        .out_lm96_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm96_conv2d1x13_out_lm96_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm96_conv2d1x13_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm96_conv2d1x13_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm96_conv2d1x13_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x(STALLENABLE,102)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_lm96_conv2d1x13_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_consumed1 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_wireValid = i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x(BLACKBOX,31)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@11
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit393_0_tpl@11
    // out out_c0_exit393_1_tpl@11
    // out out_c0_exit393_2_tpl@11
    // out out_c0_exit393_3_tpl@11
    // out out_c0_exit393_4_tpl@11
    // out out_c0_exit393_5_tpl@11
    // out out_c0_exit393_6_tpl@11
    // out out_c0_exit393_7_tpl@11
    // out out_c0_exit393_8_tpl@11
    // out out_c0_exit393_9_tpl@11
    // out out_c0_exit393_10_tpl@11
    // out out_c0_exit393_11_tpl@11
    // out out_c0_exit393_12_tpl@11
    // out out_c0_exit393_13_tpl@11
    // out out_c0_exit393_14_tpl@11
    // out out_c0_exit393_15_tpl@11
    // out out_c0_exit393_16_tpl@11
    // out out_c0_exit393_17_tpl@11
    // out out_c0_exit393_18_tpl@11
    // out out_c0_exit393_19_tpl@11
    // out out_c0_exit393_20_tpl@11
    // out out_c0_exit393_21_tpl@11
    // out out_c0_exit393_22_tpl@11
    // out out_c0_exit393_23_tpl@11
    // out out_c0_exit393_24_tpl@11
    // out out_c0_exit393_25_tpl@11
    // out out_c0_exit393_26_tpl@11
    // out out_c0_exit393_27_tpl@11
    // out out_c0_exit393_28_tpl@11
    // out out_c0_exit393_29_tpl@11
    // out out_c0_exit393_30_tpl@11
    // out out_c0_exit393_31_tpl@11
    // out out_c0_exit393_32_tpl@11
    // out out_c0_exit393_33_tpl@11
    // out out_c0_exit393_34_tpl@11
    // out out_c0_exit393_35_tpl@11
    // out out_c0_exit393_36_tpl@11
    // out out_c0_exit393_37_tpl@11
    // out out_c0_exit393_38_tpl@11
    // out out_c0_exit393_39_tpl@11
    // out out_c0_exit393_40_tpl@11
    // out out_c0_exit393_41_tpl@11
    // out out_c0_exit393_42_tpl@11
    // out out_c0_exit393_43_tpl@11
    // out out_c0_exit393_44_tpl@11
    conv2d1x1_i_sfc_s_c0_in_for_body4_s_c0_enter37357_conv2d1x11 thei_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x (
        .in_filter_bias(in_filter_bias),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_backStall),
        .in_i_valid(SE_out_conv2d1x1_B4_merge_reg_aunroll_x_V0),
        .in_input_channels(in_input_channels),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni17_0_tpl(GND_q),
        .in_c0_eni17_1_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_b),
        .in_c0_eni17_2_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_c),
        .in_c0_eni17_3_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_d),
        .in_c0_eni17_4_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_e),
        .in_c0_eni17_5_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_f),
        .in_c0_eni17_6_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_g),
        .in_c0_eni17_7_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_h),
        .in_c0_eni17_8_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_i),
        .in_c0_eni17_9_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_j),
        .in_c0_eni17_10_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_k),
        .in_c0_eni17_11_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_l),
        .in_c0_eni17_12_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_m),
        .in_c0_eni17_13_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_n),
        .in_c0_eni17_14_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_o),
        .in_c0_eni17_15_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_p),
        .in_c0_eni17_16_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_q),
        .in_c0_eni17_17_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_r),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_stall_out(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_valid_out(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit393_0_tpl(),
        .out_c0_exit393_1_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_1_tpl),
        .out_c0_exit393_2_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_2_tpl),
        .out_c0_exit393_3_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_3_tpl),
        .out_c0_exit393_4_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_4_tpl),
        .out_c0_exit393_5_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_5_tpl),
        .out_c0_exit393_6_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_6_tpl),
        .out_c0_exit393_7_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_7_tpl),
        .out_c0_exit393_8_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_8_tpl),
        .out_c0_exit393_9_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_9_tpl),
        .out_c0_exit393_10_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_10_tpl),
        .out_c0_exit393_11_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_11_tpl),
        .out_c0_exit393_12_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_12_tpl),
        .out_c0_exit393_13_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_13_tpl),
        .out_c0_exit393_14_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_14_tpl),
        .out_c0_exit393_15_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_15_tpl),
        .out_c0_exit393_16_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_16_tpl),
        .out_c0_exit393_17_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_17_tpl),
        .out_c0_exit393_18_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_18_tpl),
        .out_c0_exit393_19_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_19_tpl),
        .out_c0_exit393_20_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_20_tpl),
        .out_c0_exit393_21_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_21_tpl),
        .out_c0_exit393_22_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_22_tpl),
        .out_c0_exit393_23_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_23_tpl),
        .out_c0_exit393_24_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_24_tpl),
        .out_c0_exit393_25_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_25_tpl),
        .out_c0_exit393_26_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_26_tpl),
        .out_c0_exit393_27_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_27_tpl),
        .out_c0_exit393_28_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_28_tpl),
        .out_c0_exit393_29_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_29_tpl),
        .out_c0_exit393_30_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_30_tpl),
        .out_c0_exit393_31_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_31_tpl),
        .out_c0_exit393_32_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_32_tpl),
        .out_c0_exit393_33_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_33_tpl),
        .out_c0_exit393_34_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_34_tpl),
        .out_c0_exit393_35_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_35_tpl),
        .out_c0_exit393_36_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_36_tpl),
        .out_c0_exit393_37_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_37_tpl),
        .out_c0_exit393_38_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_38_tpl),
        .out_c0_exit393_39_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_39_tpl),
        .out_c0_exit393_40_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_40_tpl),
        .out_c0_exit393_41_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_41_tpl),
        .out_c0_exit393_42_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_42_tpl),
        .out_c0_exit393_43_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_43_tpl),
        .out_c0_exit393_44_tpl(i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_c0_exit393_44_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_valid_out = i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_stall_out = i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_conv2d1x14_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,15)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,26)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,29)
    assign out_lm96_conv2d1x1_avm_address = i_llvm_fpga_mem_lm96_conv2d1x13_out_lm96_conv2d1x1_avm_address;
    assign out_lm96_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm96_conv2d1x13_out_lm96_conv2d1x1_avm_enable;
    assign out_lm96_conv2d1x1_avm_read = i_llvm_fpga_mem_lm96_conv2d1x13_out_lm96_conv2d1x1_avm_read;
    assign out_lm96_conv2d1x1_avm_write = i_llvm_fpga_mem_lm96_conv2d1x13_out_lm96_conv2d1x1_avm_write;
    assign out_lm96_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm96_conv2d1x13_out_lm96_conv2d1x1_avm_writedata;
    assign out_lm96_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm96_conv2d1x13_out_lm96_conv2d1x1_avm_byteenable;
    assign out_lm96_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm96_conv2d1x13_out_lm96_conv2d1x1_avm_burstcount;

    // bubble_select_i_llvm_fpga_mem_lm96_conv2d1x13(BITSELECT,82)
    assign bubble_select_i_llvm_fpga_mem_lm96_conv2d1x13_b = $unsigned(bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_reg_data_out[31:0]);

    // join_for_coalesced_delay_0(BITJOIN,75)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_d, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_l, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_cc, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_w, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_v, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_u, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_t, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_s, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_r, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_q, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_p, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_o, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_n, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_m, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_x, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_ss, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_rr, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_qq, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_pp, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_oo, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_nn, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_mm, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_ll, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_y, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_jj, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_ii, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_hh, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_gg, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_ff, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_ee, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_dd, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_bb, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_aa, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_z, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_kk, bubble_select_i_sfc_s_c0_in_for_body4_conv2d1x1s_c0_enter37357_conv2d1x11_aunroll_x_g};

    // coalesced_delay_0_0(REG,77)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(1159'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,78)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(1159'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(coalesced_delay_0_0_q);
        end
    end

    // coalesced_delay_0_2(REG,79)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_2_q <= $unsigned(1159'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(coalesced_delay_0_1_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,76)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_2_q[32:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_2_q[64:33]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_2_q[96:65]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_2_q[128:97]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_2_q[160:129]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_2_q[192:161]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_2_q[224:193]);
    assign sel_for_coalesced_delay_0_i = $unsigned(coalesced_delay_0_2_q[256:225]);
    assign sel_for_coalesced_delay_0_j = $unsigned(coalesced_delay_0_2_q[288:257]);
    assign sel_for_coalesced_delay_0_k = $unsigned(coalesced_delay_0_2_q[320:289]);
    assign sel_for_coalesced_delay_0_l = $unsigned(coalesced_delay_0_2_q[352:321]);
    assign sel_for_coalesced_delay_0_m = $unsigned(coalesced_delay_0_2_q[384:353]);
    assign sel_for_coalesced_delay_0_n = $unsigned(coalesced_delay_0_2_q[416:385]);
    assign sel_for_coalesced_delay_0_o = $unsigned(coalesced_delay_0_2_q[448:417]);
    assign sel_for_coalesced_delay_0_p = $unsigned(coalesced_delay_0_2_q[480:449]);
    assign sel_for_coalesced_delay_0_q = $unsigned(coalesced_delay_0_2_q[512:481]);
    assign sel_for_coalesced_delay_0_r = $unsigned(coalesced_delay_0_2_q[544:513]);
    assign sel_for_coalesced_delay_0_s = $unsigned(coalesced_delay_0_2_q[576:545]);
    assign sel_for_coalesced_delay_0_t = $unsigned(coalesced_delay_0_2_q[608:577]);
    assign sel_for_coalesced_delay_0_u = $unsigned(coalesced_delay_0_2_q[640:609]);
    assign sel_for_coalesced_delay_0_v = $unsigned(coalesced_delay_0_2_q[672:641]);
    assign sel_for_coalesced_delay_0_w = $unsigned(coalesced_delay_0_2_q[704:673]);
    assign sel_for_coalesced_delay_0_x = $unsigned(coalesced_delay_0_2_q[736:705]);
    assign sel_for_coalesced_delay_0_y = $unsigned(coalesced_delay_0_2_q[768:737]);
    assign sel_for_coalesced_delay_0_z = $unsigned(coalesced_delay_0_2_q[800:769]);
    assign sel_for_coalesced_delay_0_aa = $unsigned(coalesced_delay_0_2_q[832:801]);
    assign sel_for_coalesced_delay_0_bb = $unsigned(coalesced_delay_0_2_q[864:833]);
    assign sel_for_coalesced_delay_0_cc = $unsigned(coalesced_delay_0_2_q[896:865]);
    assign sel_for_coalesced_delay_0_dd = $unsigned(coalesced_delay_0_2_q[928:897]);
    assign sel_for_coalesced_delay_0_ee = $unsigned(coalesced_delay_0_2_q[960:929]);
    assign sel_for_coalesced_delay_0_ff = $unsigned(coalesced_delay_0_2_q[992:961]);
    assign sel_for_coalesced_delay_0_gg = $unsigned(coalesced_delay_0_2_q[1024:993]);
    assign sel_for_coalesced_delay_0_hh = $unsigned(coalesced_delay_0_2_q[1056:1025]);
    assign sel_for_coalesced_delay_0_ii = $unsigned(coalesced_delay_0_2_q[1088:1057]);
    assign sel_for_coalesced_delay_0_jj = $unsigned(coalesced_delay_0_2_q[1120:1089]);
    assign sel_for_coalesced_delay_0_kk = $unsigned(coalesced_delay_0_2_q[1152:1121]);
    assign sel_for_coalesced_delay_0_ll = $unsigned(coalesced_delay_0_2_q[1153:1153]);
    assign sel_for_coalesced_delay_0_mm = $unsigned(coalesced_delay_0_2_q[1154:1154]);
    assign sel_for_coalesced_delay_0_nn = $unsigned(coalesced_delay_0_2_q[1155:1155]);
    assign sel_for_coalesced_delay_0_oo = $unsigned(coalesced_delay_0_2_q[1156:1156]);
    assign sel_for_coalesced_delay_0_pp = $unsigned(coalesced_delay_0_2_q[1157:1157]);
    assign sel_for_coalesced_delay_0_qq = $unsigned(coalesced_delay_0_2_q[1158:1158]);

    // dupName_0_sync_out_x(GPOUT,30)@14
    assign out_c0_exe10403 = sel_for_coalesced_delay_0_nn;
    assign out_c0_exe11404 = sel_for_coalesced_delay_0_mm;
    assign out_c0_exe12405 = sel_for_coalesced_delay_0_z;
    assign out_c0_exe13406 = sel_for_coalesced_delay_0_aa;
    assign out_c0_exe14407 = sel_for_coalesced_delay_0_bb;
    assign out_c0_exe15408 = sel_for_coalesced_delay_0_cc;
    assign out_c0_exe16409 = sel_for_coalesced_delay_0_dd;
    assign out_c0_exe17410 = sel_for_coalesced_delay_0_ee;
    assign out_c0_exe18411 = sel_for_coalesced_delay_0_ff;
    assign out_c0_exe19 = sel_for_coalesced_delay_0_gg;
    assign out_c0_exe20 = sel_for_coalesced_delay_0_hh;
    assign out_c0_exe21 = sel_for_coalesced_delay_0_ii;
    assign out_c0_exe22 = sel_for_coalesced_delay_0_jj;
    assign out_c0_exe23 = sel_for_coalesced_delay_0_w;
    assign out_c0_exe2395 = sel_for_coalesced_delay_0_kk;
    assign out_c0_exe24 = sel_for_coalesced_delay_0_n;
    assign out_c0_exe25 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe26 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe27 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe28 = sel_for_coalesced_delay_0_ll;
    assign out_c0_exe29 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe30 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe31 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe32 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe33 = sel_for_coalesced_delay_0_k;
    assign out_c0_exe3396 = sel_for_coalesced_delay_0_qq;
    assign out_c0_exe34 = sel_for_coalesced_delay_0_l;
    assign out_c0_exe35 = sel_for_coalesced_delay_0_m;
    assign out_c0_exe36 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe37 = sel_for_coalesced_delay_0_o;
    assign out_c0_exe38 = sel_for_coalesced_delay_0_p;
    assign out_c0_exe39 = sel_for_coalesced_delay_0_q;
    assign out_c0_exe40 = sel_for_coalesced_delay_0_r;
    assign out_c0_exe41 = sel_for_coalesced_delay_0_s;
    assign out_c0_exe42 = sel_for_coalesced_delay_0_t;
    assign out_c0_exe43 = sel_for_coalesced_delay_0_u;
    assign out_c0_exe4397 = sel_for_coalesced_delay_0_pp;
    assign out_c0_exe44 = sel_for_coalesced_delay_0_v;
    assign out_c0_exe5398 = sel_for_coalesced_delay_0_oo;
    assign out_c0_exe6399 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe8401 = sel_for_coalesced_delay_0_x;
    assign out_c0_exe9402 = sel_for_coalesced_delay_0_y;
    assign out_lm96 = bubble_select_i_llvm_fpga_mem_lm96_conv2d1x13_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_mem_lm96_conv2d1x13_data_V0;

endmodule
