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

// SystemVerilog created from maxpool2d_bb_B7_stall_region
// SystemVerilog created on Sat Jun  3 13:01:56 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_bb_B7_stall_region (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_maxpool2d2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_maxpool2d2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_input_size,
    input wire [0:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked31,
    input wire [63:0] in_input_im_addr_041_replace_phi36_pop17107,
    input wire [63:0] in_input_im_addr_041_replace_phi37_pop22122,
    input wire [63:0] in_input_im_addr_041_replace_phi74,
    input wire [31:0] in_j_034_pop20116,
    input wire [31:0] in_mul2547_pop25131,
    input wire [31:0] in_mul2592,
    input wire [31:0] in_mul44_pop24128,
    input wire [31:0] in_mul87,
    input wire [0:0] in_notcmp19113,
    input wire [0:0] in_notcmp2350_pop26134,
    input wire [0:0] in_notcmp2397,
    input wire [0:0] in_notcmp2740_pop18112,
    input wire [0:0] in_notcmp2741_pop23125,
    input wire [0:0] in_notcmp2781,
    input wire [63:0] in_output_im_addr_042_replace_phi32_pop16102,
    input wire [63:0] in_output_im_addr_042_replace_phi33_pop21119,
    input wire [63:0] in_output_im_addr_042_replace_phi67,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10255,
    output wire [0:0] out_c0_exe11256,
    output wire [0:0] out_c0_exe12257,
    output wire [31:0] out_c0_exe1246,
    output wire [63:0] out_c0_exe13258,
    output wire [63:0] out_c0_exe14259,
    output wire [0:0] out_c0_exe15260,
    output wire [31:0] out_c0_exe16261,
    output wire [31:0] out_c0_exe17262,
    output wire [0:0] out_c0_exe18263,
    output wire [63:0] out_c0_exe19,
    output wire [63:0] out_c0_exe20,
    output wire [0:0] out_c0_exe21,
    output wire [0:0] out_c0_exe22,
    output wire [31:0] out_c0_exe2247,
    output wire [31:0] out_c0_exe23,
    output wire [63:0] out_c0_exe24,
    output wire [63:0] out_c0_exe25,
    output wire [0:0] out_c0_exe26,
    output wire [31:0] out_c0_exe27,
    output wire [31:0] out_c0_exe28,
    output wire [0:0] out_c0_exe29,
    output wire [31:0] out_c0_exe3248,
    output wire [0:0] out_c0_exe4249,
    output wire [0:0] out_c0_exe5250,
    output wire [63:0] out_c0_exe6251,
    output wire [63:0] out_c0_exe7252,
    output wire [0:0] out_c0_exe8253,
    output wire [31:0] out_c0_exe9254,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_maxpool2d2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_maxpool2d2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_5_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_6_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_12_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_13_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_14_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_15_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_16_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_17_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_18_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_19_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_20_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_21_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_22_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_23_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_24_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_25_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_26_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_27_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_28_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_29_tpl;
    wire [0:0] maxpool2d_B7_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] maxpool2d_B7_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] maxpool2d_B7_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [63:0] maxpool2d_B7_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [63:0] maxpool2d_B7_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] maxpool2d_B7_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] maxpool2d_B7_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] maxpool2d_B7_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] maxpool2d_B7_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [63:0] maxpool2d_B7_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [63:0] maxpool2d_B7_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] maxpool2d_B7_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [0:0] maxpool2d_B7_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [31:0] maxpool2d_B7_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [63:0] maxpool2d_B7_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [63:0] maxpool2d_B7_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [0:0] maxpool2d_B7_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [31:0] maxpool2d_B7_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [31:0] maxpool2d_B7_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [0:0] maxpool2d_B7_merge_reg_aunroll_x_out_data_out_17_tpl;
    wire [550:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [63:0] bubble_select_stall_entry_d;
    wire [63:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [0:0] bubble_select_stall_entry_o;
    wire [0:0] bubble_select_stall_entry_p;
    wire [63:0] bubble_select_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_r;
    wire [63:0] bubble_select_stall_entry_s;
    wire [811:0] bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_f;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_g;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_m;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_n;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_o;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_p;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_r;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_s;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_t;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_u;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_v;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_w;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_x;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_y;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_z;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_aa;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_bb;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_cc;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_dd;
    wire [550:0] bubble_join_maxpool2d_B7_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_maxpool2d_B7_merge_reg_aunroll_x_b;
    wire [63:0] bubble_select_maxpool2d_B7_merge_reg_aunroll_x_c;
    wire [63:0] bubble_select_maxpool2d_B7_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_maxpool2d_B7_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_maxpool2d_B7_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_maxpool2d_B7_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_maxpool2d_B7_merge_reg_aunroll_x_h;
    wire [63:0] bubble_select_maxpool2d_B7_merge_reg_aunroll_x_i;
    wire [63:0] bubble_select_maxpool2d_B7_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_maxpool2d_B7_merge_reg_aunroll_x_k;
    wire [0:0] bubble_select_maxpool2d_B7_merge_reg_aunroll_x_l;
    wire [31:0] bubble_select_maxpool2d_B7_merge_reg_aunroll_x_m;
    wire [63:0] bubble_select_maxpool2d_B7_merge_reg_aunroll_x_n;
    wire [63:0] bubble_select_maxpool2d_B7_merge_reg_aunroll_x_o;
    wire [0:0] bubble_select_maxpool2d_B7_merge_reg_aunroll_x_p;
    wire [31:0] bubble_select_maxpool2d_B7_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_maxpool2d_B7_merge_reg_aunroll_x_r;
    wire [0:0] bubble_select_maxpool2d_B7_merge_reg_aunroll_x_s;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_V0;
    wire [0:0] SE_out_maxpool2d_B7_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_maxpool2d_B7_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_maxpool2d_B7_merge_reg_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,23)
    assign bubble_join_stall_entry_q = {in_output_im_addr_042_replace_phi67, in_output_im_addr_042_replace_phi33_pop21119, in_output_im_addr_042_replace_phi32_pop16102, in_notcmp2781, in_notcmp2741_pop23125, in_notcmp2740_pop18112, in_notcmp2397, in_notcmp2350_pop26134, in_notcmp19113, in_mul87, in_mul44_pop24128, in_mul2592, in_mul2547_pop25131, in_j_034_pop20116, in_input_im_addr_041_replace_phi74, in_input_im_addr_041_replace_phi37_pop22122, in_input_im_addr_041_replace_phi36_pop17107, in_forked31};

    // bubble_select_stall_entry(BITSELECT,24)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[128:65]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[192:129]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[224:193]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[256:225]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[288:257]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[320:289]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[352:321]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[353:353]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[354:354]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[355:355]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[356:356]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[357:357]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[358:358]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[422:359]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[486:423]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[550:487]);

    // SE_stall_entry(STALLENABLE,33)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = maxpool2d_B7_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // maxpool2d_B7_merge_reg_aunroll_x(BLACKBOX,21)@0
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
    maxpool2d_B7_merge_reg themaxpool2d_B7_merge_reg_aunroll_x (
        .in_stall_in(SE_out_maxpool2d_B7_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_s),
        .in_data_in_2_tpl(bubble_select_stall_entry_e),
        .in_data_in_3_tpl(bubble_select_stall_entry_p),
        .in_data_in_4_tpl(bubble_select_stall_entry_j),
        .in_data_in_5_tpl(bubble_select_stall_entry_h),
        .in_data_in_6_tpl(bubble_select_stall_entry_m),
        .in_data_in_7_tpl(bubble_select_stall_entry_q),
        .in_data_in_8_tpl(bubble_select_stall_entry_c),
        .in_data_in_9_tpl(bubble_select_stall_entry_n),
        .in_data_in_10_tpl(bubble_select_stall_entry_k),
        .in_data_in_11_tpl(bubble_select_stall_entry_f),
        .in_data_in_12_tpl(bubble_select_stall_entry_r),
        .in_data_in_13_tpl(bubble_select_stall_entry_d),
        .in_data_in_14_tpl(bubble_select_stall_entry_o),
        .in_data_in_15_tpl(bubble_select_stall_entry_i),
        .in_data_in_16_tpl(bubble_select_stall_entry_g),
        .in_data_in_17_tpl(bubble_select_stall_entry_l),
        .out_stall_out(maxpool2d_B7_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(maxpool2d_B7_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(maxpool2d_B7_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(maxpool2d_B7_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(maxpool2d_B7_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(maxpool2d_B7_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(maxpool2d_B7_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(maxpool2d_B7_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(maxpool2d_B7_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(maxpool2d_B7_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(maxpool2d_B7_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(maxpool2d_B7_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(maxpool2d_B7_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(maxpool2d_B7_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(maxpool2d_B7_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(maxpool2d_B7_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(maxpool2d_B7_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(maxpool2d_B7_merge_reg_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(maxpool2d_B7_merge_reg_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(maxpool2d_B7_merge_reg_aunroll_x_out_data_out_17_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_maxpool2d_B7_merge_reg_aunroll_x(BITJOIN,30)
    assign bubble_join_maxpool2d_B7_merge_reg_aunroll_x_q = {maxpool2d_B7_merge_reg_aunroll_x_out_data_out_17_tpl, maxpool2d_B7_merge_reg_aunroll_x_out_data_out_16_tpl, maxpool2d_B7_merge_reg_aunroll_x_out_data_out_15_tpl, maxpool2d_B7_merge_reg_aunroll_x_out_data_out_14_tpl, maxpool2d_B7_merge_reg_aunroll_x_out_data_out_13_tpl, maxpool2d_B7_merge_reg_aunroll_x_out_data_out_12_tpl, maxpool2d_B7_merge_reg_aunroll_x_out_data_out_11_tpl, maxpool2d_B7_merge_reg_aunroll_x_out_data_out_10_tpl, maxpool2d_B7_merge_reg_aunroll_x_out_data_out_9_tpl, maxpool2d_B7_merge_reg_aunroll_x_out_data_out_8_tpl, maxpool2d_B7_merge_reg_aunroll_x_out_data_out_7_tpl, maxpool2d_B7_merge_reg_aunroll_x_out_data_out_6_tpl, maxpool2d_B7_merge_reg_aunroll_x_out_data_out_5_tpl, maxpool2d_B7_merge_reg_aunroll_x_out_data_out_4_tpl, maxpool2d_B7_merge_reg_aunroll_x_out_data_out_3_tpl, maxpool2d_B7_merge_reg_aunroll_x_out_data_out_2_tpl, maxpool2d_B7_merge_reg_aunroll_x_out_data_out_1_tpl, maxpool2d_B7_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_maxpool2d_B7_merge_reg_aunroll_x(BITSELECT,31)
    assign bubble_select_maxpool2d_B7_merge_reg_aunroll_x_b = $unsigned(bubble_join_maxpool2d_B7_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_maxpool2d_B7_merge_reg_aunroll_x_c = $unsigned(bubble_join_maxpool2d_B7_merge_reg_aunroll_x_q[64:1]);
    assign bubble_select_maxpool2d_B7_merge_reg_aunroll_x_d = $unsigned(bubble_join_maxpool2d_B7_merge_reg_aunroll_x_q[128:65]);
    assign bubble_select_maxpool2d_B7_merge_reg_aunroll_x_e = $unsigned(bubble_join_maxpool2d_B7_merge_reg_aunroll_x_q[129:129]);
    assign bubble_select_maxpool2d_B7_merge_reg_aunroll_x_f = $unsigned(bubble_join_maxpool2d_B7_merge_reg_aunroll_x_q[161:130]);
    assign bubble_select_maxpool2d_B7_merge_reg_aunroll_x_g = $unsigned(bubble_join_maxpool2d_B7_merge_reg_aunroll_x_q[193:162]);
    assign bubble_select_maxpool2d_B7_merge_reg_aunroll_x_h = $unsigned(bubble_join_maxpool2d_B7_merge_reg_aunroll_x_q[194:194]);
    assign bubble_select_maxpool2d_B7_merge_reg_aunroll_x_i = $unsigned(bubble_join_maxpool2d_B7_merge_reg_aunroll_x_q[258:195]);
    assign bubble_select_maxpool2d_B7_merge_reg_aunroll_x_j = $unsigned(bubble_join_maxpool2d_B7_merge_reg_aunroll_x_q[322:259]);
    assign bubble_select_maxpool2d_B7_merge_reg_aunroll_x_k = $unsigned(bubble_join_maxpool2d_B7_merge_reg_aunroll_x_q[323:323]);
    assign bubble_select_maxpool2d_B7_merge_reg_aunroll_x_l = $unsigned(bubble_join_maxpool2d_B7_merge_reg_aunroll_x_q[324:324]);
    assign bubble_select_maxpool2d_B7_merge_reg_aunroll_x_m = $unsigned(bubble_join_maxpool2d_B7_merge_reg_aunroll_x_q[356:325]);
    assign bubble_select_maxpool2d_B7_merge_reg_aunroll_x_n = $unsigned(bubble_join_maxpool2d_B7_merge_reg_aunroll_x_q[420:357]);
    assign bubble_select_maxpool2d_B7_merge_reg_aunroll_x_o = $unsigned(bubble_join_maxpool2d_B7_merge_reg_aunroll_x_q[484:421]);
    assign bubble_select_maxpool2d_B7_merge_reg_aunroll_x_p = $unsigned(bubble_join_maxpool2d_B7_merge_reg_aunroll_x_q[485:485]);
    assign bubble_select_maxpool2d_B7_merge_reg_aunroll_x_q = $unsigned(bubble_join_maxpool2d_B7_merge_reg_aunroll_x_q[517:486]);
    assign bubble_select_maxpool2d_B7_merge_reg_aunroll_x_r = $unsigned(bubble_join_maxpool2d_B7_merge_reg_aunroll_x_q[549:518]);
    assign bubble_select_maxpool2d_B7_merge_reg_aunroll_x_s = $unsigned(bubble_join_maxpool2d_B7_merge_reg_aunroll_x_q[550:550]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_maxpool2d_B7_merge_reg_aunroll_x(STALLENABLE,38)
    // Valid signal propagation
    assign SE_out_maxpool2d_B7_merge_reg_aunroll_x_V0 = SE_out_maxpool2d_B7_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_maxpool2d_B7_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_o_stall | ~ (SE_out_maxpool2d_B7_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_maxpool2d_B7_merge_reg_aunroll_x_wireValid = maxpool2d_B7_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x(STALLENABLE,36)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x(BLACKBOX,20)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_maxpool2d2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_maxpool2d2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit245_0_tpl@9
    // out out_c0_exit245_1_tpl@9
    // out out_c0_exit245_2_tpl@9
    // out out_c0_exit245_3_tpl@9
    // out out_c0_exit245_4_tpl@9
    // out out_c0_exit245_5_tpl@9
    // out out_c0_exit245_6_tpl@9
    // out out_c0_exit245_7_tpl@9
    // out out_c0_exit245_8_tpl@9
    // out out_c0_exit245_9_tpl@9
    // out out_c0_exit245_10_tpl@9
    // out out_c0_exit245_11_tpl@9
    // out out_c0_exit245_12_tpl@9
    // out out_c0_exit245_13_tpl@9
    // out out_c0_exit245_14_tpl@9
    // out out_c0_exit245_15_tpl@9
    // out out_c0_exit245_16_tpl@9
    // out out_c0_exit245_17_tpl@9
    // out out_c0_exit245_18_tpl@9
    // out out_c0_exit245_19_tpl@9
    // out out_c0_exit245_20_tpl@9
    // out out_c0_exit245_21_tpl@9
    // out out_c0_exit245_22_tpl@9
    // out out_c0_exit245_23_tpl@9
    // out out_c0_exit245_24_tpl@9
    // out out_c0_exit245_25_tpl@9
    // out out_c0_exit245_26_tpl@9
    // out out_c0_exit245_27_tpl@9
    // out out_c0_exit245_28_tpl@9
    // out out_c0_exit245_29_tpl@9
    maxpool2d_i_sfc_s_c0_in_for_cond13_prehe0000nter21624_maxpool2d1 thei_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_backStall),
        .in_i_valid(SE_out_maxpool2d_B7_merge_reg_aunroll_x_V0),
        .in_input_size(in_input_size),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni18_0_tpl(GND_q),
        .in_c0_eni18_1_tpl(bubble_select_maxpool2d_B7_merge_reg_aunroll_x_m),
        .in_c0_eni18_2_tpl(bubble_select_maxpool2d_B7_merge_reg_aunroll_x_b),
        .in_c0_eni18_3_tpl(bubble_select_maxpool2d_B7_merge_reg_aunroll_x_q),
        .in_c0_eni18_4_tpl(bubble_select_maxpool2d_B7_merge_reg_aunroll_x_n),
        .in_c0_eni18_5_tpl(bubble_select_maxpool2d_B7_merge_reg_aunroll_x_o),
        .in_c0_eni18_6_tpl(bubble_select_maxpool2d_B7_merge_reg_aunroll_x_p),
        .in_c0_eni18_7_tpl(bubble_select_maxpool2d_B7_merge_reg_aunroll_x_r),
        .in_c0_eni18_8_tpl(bubble_select_maxpool2d_B7_merge_reg_aunroll_x_s),
        .in_c0_eni18_9_tpl(bubble_select_maxpool2d_B7_merge_reg_aunroll_x_l),
        .in_c0_eni18_10_tpl(bubble_select_maxpool2d_B7_merge_reg_aunroll_x_c),
        .in_c0_eni18_11_tpl(bubble_select_maxpool2d_B7_merge_reg_aunroll_x_d),
        .in_c0_eni18_12_tpl(bubble_select_maxpool2d_B7_merge_reg_aunroll_x_e),
        .in_c0_eni18_13_tpl(bubble_select_maxpool2d_B7_merge_reg_aunroll_x_f),
        .in_c0_eni18_14_tpl(bubble_select_maxpool2d_B7_merge_reg_aunroll_x_g),
        .in_c0_eni18_15_tpl(bubble_select_maxpool2d_B7_merge_reg_aunroll_x_h),
        .in_c0_eni18_16_tpl(bubble_select_maxpool2d_B7_merge_reg_aunroll_x_i),
        .in_c0_eni18_17_tpl(bubble_select_maxpool2d_B7_merge_reg_aunroll_x_j),
        .in_c0_eni18_18_tpl(bubble_select_maxpool2d_B7_merge_reg_aunroll_x_k),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_maxpool2d2_exiting_stall_out(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_maxpool2d2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_maxpool2d2_exiting_valid_out(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_maxpool2d2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit245_0_tpl(),
        .out_c0_exit245_1_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_1_tpl),
        .out_c0_exit245_2_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_2_tpl),
        .out_c0_exit245_3_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_3_tpl),
        .out_c0_exit245_4_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_4_tpl),
        .out_c0_exit245_5_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_5_tpl),
        .out_c0_exit245_6_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_6_tpl),
        .out_c0_exit245_7_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_7_tpl),
        .out_c0_exit245_8_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_8_tpl),
        .out_c0_exit245_9_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_9_tpl),
        .out_c0_exit245_10_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_10_tpl),
        .out_c0_exit245_11_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_11_tpl),
        .out_c0_exit245_12_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_12_tpl),
        .out_c0_exit245_13_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_13_tpl),
        .out_c0_exit245_14_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_14_tpl),
        .out_c0_exit245_15_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_15_tpl),
        .out_c0_exit245_16_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_16_tpl),
        .out_c0_exit245_17_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_17_tpl),
        .out_c0_exit245_18_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_18_tpl),
        .out_c0_exit245_19_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_19_tpl),
        .out_c0_exit245_20_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_20_tpl),
        .out_c0_exit245_21_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_21_tpl),
        .out_c0_exit245_22_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_22_tpl),
        .out_c0_exit245_23_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_23_tpl),
        .out_c0_exit245_24_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_24_tpl),
        .out_c0_exit245_25_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_25_tpl),
        .out_c0_exit245_26_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_26_tpl),
        .out_c0_exit245_27_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_27_tpl),
        .out_c0_exit245_28_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_28_tpl),
        .out_c0_exit245_29_tpl(i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_29_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_maxpool2d2_exiting_valid_out = i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_maxpool2d2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_maxpool2d2_exiting_stall_out = i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_maxpool2d2_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,11)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,17)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x(BITJOIN,27)
    assign bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q = {i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_29_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_28_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_27_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_26_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_25_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_24_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_23_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_22_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_21_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_20_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_19_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_18_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_17_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_16_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_15_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_14_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_13_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_12_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_11_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_10_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_9_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_8_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_7_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_6_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_5_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_4_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_3_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_2_tpl, i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_out_c0_exit245_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x(BITSELECT,28)
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[63:32]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[95:64]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[96:96]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[97:97]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[161:98]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[225:162]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[226:226]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[258:227]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[259:259]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[260:260]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[261:261]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[325:262]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[389:326]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[390:390]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[422:391]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[454:423]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[455:455]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_t = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[519:456]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_u = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[583:520]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_v = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[584:584]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_w = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[585:585]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_x = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[617:586]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_y = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[681:618]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_z = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[745:682]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_aa = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[746:746]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_bb = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[778:747]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_cc = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[810:779]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_dd = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q[811:811]);

    // dupName_0_sync_out_x(GPOUT,19)@9
    assign out_c0_exe10255 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_k;
    assign out_c0_exe11256 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_l;
    assign out_c0_exe12257 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_m;
    assign out_c0_exe1246 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_b;
    assign out_c0_exe13258 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_n;
    assign out_c0_exe14259 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_o;
    assign out_c0_exe15260 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_p;
    assign out_c0_exe16261 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_q;
    assign out_c0_exe17262 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_r;
    assign out_c0_exe18263 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_s;
    assign out_c0_exe19 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_t;
    assign out_c0_exe20 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_u;
    assign out_c0_exe21 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_v;
    assign out_c0_exe22 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_w;
    assign out_c0_exe2247 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_c;
    assign out_c0_exe23 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_x;
    assign out_c0_exe24 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_y;
    assign out_c0_exe25 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_z;
    assign out_c0_exe26 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_aa;
    assign out_c0_exe27 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_bb;
    assign out_c0_exe28 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_cc;
    assign out_c0_exe29 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_dd;
    assign out_c0_exe3248 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_d;
    assign out_c0_exe4249 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_e;
    assign out_c0_exe5250 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_f;
    assign out_c0_exe6251 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_g;
    assign out_c0_exe7252 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_h;
    assign out_c0_exe8253 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_i;
    assign out_c0_exe9254 = bubble_select_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_j;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond13_preheader_maxpool2ds_c0_enter21624_maxpool2d1_aunroll_x_V0;

endmodule
