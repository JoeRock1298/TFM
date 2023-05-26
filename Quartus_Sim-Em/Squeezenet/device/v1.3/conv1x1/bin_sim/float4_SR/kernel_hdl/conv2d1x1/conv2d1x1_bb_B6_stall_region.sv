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

// SystemVerilog created from conv2d1x1_bb_B6_stall_region
// SystemVerilog created on Wed May 24 11:22:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B6_stall_region (
    input wire [511:0] in_unnamed_conv2d1x115_conv2d1x1_avm_readdata,
    input wire [0:0] in_unnamed_conv2d1x115_conv2d1x1_avm_writeack,
    input wire [0:0] in_unnamed_conv2d1x115_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d1x115_conv2d1x1_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [9:0] in_ap_pop113,
    input wire [0:0] in_forked23,
    input wire [31:0] in_ij_068_pop13116,
    input wire [31:0] in_lm51_pop18120,
    input wire [31:0] in_lm97,
    input wire [31:0] in_mul100107,
    input wire [31:0] in_mul10057_pop20122,
    input wire [31:0] in_mul21102,
    input wire [31:0] in_mul2154_pop19121,
    input wire [31:0] in_mul48_pop14117,
    input wire [31:0] in_mul92,
    input wire [0:0] in_notcmp38115,
    input wire [0:0] in_notcmp43112,
    input wire [0:0] in_notcmp4360_pop21123,
    input wire [0:0] in_pop15118,
    input wire [0:0] in_pop16114,
    input wire [0:0] in_pop17119,
    input wire [0:0] in_unnamed_conv2d1x111,
    input wire [0:0] in_unnamed_conv2d1x112,
    input wire [0:0] in_unnamed_conv2d1x113,
    input wire [32:0] in_unnamed_conv2d1x114,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_unnamed_conv2d1x115_conv2d1x1_avm_address,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_enable,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_read,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_write,
    output wire [511:0] out_unnamed_conv2d1x115_conv2d1x1_avm_writedata,
    output wire [63:0] out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount,
    output wire [31:0] out_c0_exe10321,
    output wire [0:0] out_c0_exe11322,
    output wire [0:0] out_c0_exe12323,
    output wire [31:0] out_c0_exe13324,
    output wire [31:0] out_c0_exe14325,
    output wire [0:0] out_c0_exe15326,
    output wire [0:0] out_c0_exe16327,
    output wire [0:0] out_c0_exe17328,
    output wire [32:0] out_c0_exe18329,
    output wire [31:0] out_c0_exe19330,
    output wire [31:0] out_c0_exe20331,
    output wire [31:0] out_c0_exe21,
    output wire [0:0] out_c0_exe22,
    output wire [63:0] out_c0_exe2313,
    output wire [0:0] out_c0_exe3314,
    output wire [0:0] out_c0_exe4315,
    output wire [0:0] out_c0_exe5316,
    output wire [31:0] out_c0_exe6317,
    output wire [0:0] out_c0_exe7318,
    output wire [31:0] out_c0_exe8319,
    output wire [31:0] out_c0_exe9320,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [32:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [31:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [9:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [31:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [31:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [31:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_17_tpl;
    wire [31:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_18_tpl;
    wire [31:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_19_tpl;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_20_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount;
    wire [63:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_write;
    wire [511:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_writedata;
    wire [63:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_12_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_13_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_14_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_15_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_16_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_17_tpl;
    wire [32:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_18_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_19_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_20_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_21_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_22_tpl;
    wire [340:0] bubble_join_stall_entry_q;
    wire [9:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [0:0] bubble_select_stall_entry_o;
    wire [0:0] bubble_select_stall_entry_p;
    wire [0:0] bubble_select_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_r;
    wire [0:0] bubble_select_stall_entry_s;
    wire [0:0] bubble_select_stall_entry_t;
    wire [0:0] bubble_select_stall_entry_u;
    wire [32:0] bubble_select_stall_entry_v;
    wire [340:0] bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_f;
    wire [32:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_g;
    wire [31:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_i;
    wire [31:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_k;
    wire [9:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_l;
    wire [0:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_m;
    wire [0:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_n;
    wire [31:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_o;
    wire [31:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_p;
    wire [0:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_r;
    wire [31:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_s;
    wire [31:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_t;
    wire [31:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_u;
    wire [0:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_v;
    wire [394:0] bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_l;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_m;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_n;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_o;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_p;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_q;
    wire [32:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_r;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_s;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_t;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_u;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_v;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_conv2d1x1_B6_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv2d1x1_B6_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv2d1x1_B6_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,24)
    assign bubble_join_stall_entry_q = {in_unnamed_conv2d1x114, in_unnamed_conv2d1x113, in_unnamed_conv2d1x112, in_unnamed_conv2d1x111, in_pop17119, in_pop16114, in_pop15118, in_notcmp4360_pop21123, in_notcmp43112, in_notcmp38115, in_mul92, in_mul48_pop14117, in_mul2154_pop19121, in_mul21102, in_mul10057_pop20122, in_mul100107, in_lm97, in_lm51_pop18120, in_ij_068_pop13116, in_forked23, in_ap_pop113};

    // bubble_select_stall_entry(BITSELECT,25)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[9:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[10:10]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[42:11]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[74:43]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[106:75]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[138:107]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[170:139]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[202:171]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[234:203]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[266:235]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[298:267]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[299:299]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[300:300]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[301:301]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[302:302]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[303:303]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[304:304]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[305:305]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[306:306]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[307:307]);
    assign bubble_select_stall_entry_v = $unsigned(bubble_join_stall_entry_q[340:308]);

    // SE_stall_entry(STALLENABLE,34)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv2d1x1_B6_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // conv2d1x1_B6_merge_reg_aunroll_x(BLACKBOX,19)@0
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
    conv2d1x1_B6_merge_reg theconv2d1x1_B6_merge_reg_aunroll_x (
        .in_stall_in(SE_out_conv2d1x1_B6_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_l),
        .in_data_in_2_tpl(bubble_select_stall_entry_s),
        .in_data_in_3_tpl(bubble_select_stall_entry_t),
        .in_data_in_4_tpl(bubble_select_stall_entry_u),
        .in_data_in_5_tpl(bubble_select_stall_entry_v),
        .in_data_in_6_tpl(bubble_select_stall_entry_f),
        .in_data_in_7_tpl(bubble_select_stall_entry_i),
        .in_data_in_8_tpl(bubble_select_stall_entry_g),
        .in_data_in_9_tpl(bubble_select_stall_entry_n),
        .in_data_in_10_tpl(bubble_select_stall_entry_b),
        .in_data_in_11_tpl(bubble_select_stall_entry_q),
        .in_data_in_12_tpl(bubble_select_stall_entry_m),
        .in_data_in_13_tpl(bubble_select_stall_entry_d),
        .in_data_in_14_tpl(bubble_select_stall_entry_k),
        .in_data_in_15_tpl(bubble_select_stall_entry_p),
        .in_data_in_16_tpl(bubble_select_stall_entry_r),
        .in_data_in_17_tpl(bubble_select_stall_entry_e),
        .in_data_in_18_tpl(bubble_select_stall_entry_j),
        .in_data_in_19_tpl(bubble_select_stall_entry_h),
        .in_data_in_20_tpl(bubble_select_stall_entry_o),
        .out_stall_out(conv2d1x1_B6_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv2d1x1_B6_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_20_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_conv2d1x1_B6_merge_reg_aunroll_x(BITJOIN,28)
    assign bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q = {conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_20_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_19_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_18_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_17_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_16_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_15_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_14_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_13_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_12_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_11_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_10_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_9_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_8_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_7_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_6_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_5_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_4_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_3_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_2_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_1_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv2d1x1_B6_merge_reg_aunroll_x(BITSELECT,29)
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[33:33]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[34:34]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_f = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[35:35]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_g = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[68:36]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_h = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[100:69]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_i = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[132:101]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_j = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[164:133]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_k = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[165:165]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_l = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[175:166]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_m = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[176:176]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_n = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[177:177]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_o = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[209:178]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_p = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[241:210]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_q = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[242:242]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_r = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[243:243]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_s = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[275:244]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_t = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[307:276]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_u = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[339:308]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_v = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[340:340]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_conv2d1x1_B6_merge_reg_aunroll_x(STALLENABLE,37)
    // Valid signal propagation
    assign SE_out_conv2d1x1_B6_merge_reg_aunroll_x_V0 = SE_out_conv2d1x1_B6_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_conv2d1x1_B6_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_o_stall | ~ (SE_out_conv2d1x1_B6_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_conv2d1x1_B6_merge_reg_aunroll_x_wireValid = conv2d1x1_B6_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x(STALLENABLE,39)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_wireValid = i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x(BLACKBOX,22)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@6
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_conv2d1x115_conv2d1x1_avm_address@20000000
    // out out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount@20000000
    // out out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable@20000000
    // out out_unnamed_conv2d1x115_conv2d1x1_avm_enable@20000000
    // out out_unnamed_conv2d1x115_conv2d1x1_avm_read@20000000
    // out out_unnamed_conv2d1x115_conv2d1x1_avm_write@20000000
    // out out_unnamed_conv2d1x115_conv2d1x1_avm_writedata@20000000
    // out out_c0_exit311_0_tpl@6
    // out out_c0_exit311_1_tpl@6
    // out out_c0_exit311_2_tpl@6
    // out out_c0_exit311_3_tpl@6
    // out out_c0_exit311_4_tpl@6
    // out out_c0_exit311_5_tpl@6
    // out out_c0_exit311_6_tpl@6
    // out out_c0_exit311_7_tpl@6
    // out out_c0_exit311_8_tpl@6
    // out out_c0_exit311_9_tpl@6
    // out out_c0_exit311_10_tpl@6
    // out out_c0_exit311_11_tpl@6
    // out out_c0_exit311_12_tpl@6
    // out out_c0_exit311_13_tpl@6
    // out out_c0_exit311_14_tpl@6
    // out out_c0_exit311_15_tpl@6
    // out out_c0_exit311_16_tpl@6
    // out out_c0_exit311_17_tpl@6
    // out out_c0_exit311_18_tpl@6
    // out out_c0_exit311_19_tpl@6
    // out out_c0_exit311_20_tpl@6
    // out out_c0_exit311_21_tpl@6
    // out out_c0_exit311_22_tpl@6
    conv2d1x1_i_sfc_s_c0_in_for_body8_s_c0_enter28064_conv2d1x11 thei_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_backStall),
        .in_i_valid(SE_out_conv2d1x1_B6_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_readdata(in_unnamed_conv2d1x115_conv2d1x1_avm_readdata),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_readdatavalid(in_unnamed_conv2d1x115_conv2d1x1_avm_readdatavalid),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_waitrequest(in_unnamed_conv2d1x115_conv2d1x1_avm_waitrequest),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_writeack(in_unnamed_conv2d1x115_conv2d1x1_avm_writeack),
        .in_c0_eni21_0_tpl(GND_q),
        .in_c0_eni21_1_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_b),
        .in_c0_eni21_2_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_l),
        .in_c0_eni21_3_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_q),
        .in_c0_eni21_4_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_m),
        .in_c0_eni21_5_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_p),
        .in_c0_eni21_6_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_r),
        .in_c0_eni21_7_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_s),
        .in_c0_eni21_8_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_t),
        .in_c0_eni21_9_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_u),
        .in_c0_eni21_10_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_v),
        .in_c0_eni21_11_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_n),
        .in_c0_eni21_12_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_o),
        .in_c0_eni21_13_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_c),
        .in_c0_eni21_14_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_d),
        .in_c0_eni21_15_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_e),
        .in_c0_eni21_16_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_f),
        .in_c0_eni21_17_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_g),
        .in_c0_eni21_18_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_h),
        .in_c0_eni21_19_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_i),
        .in_c0_eni21_20_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_j),
        .in_c0_eni21_21_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_k),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_stall_out(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_valid_out(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_address(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_address),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_enable(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_enable),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_read(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_read),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_write(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_write),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_writedata(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_writedata),
        .out_c0_exit311_0_tpl(),
        .out_c0_exit311_1_tpl(),
        .out_c0_exit311_2_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_2_tpl),
        .out_c0_exit311_3_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_3_tpl),
        .out_c0_exit311_4_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_4_tpl),
        .out_c0_exit311_5_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_5_tpl),
        .out_c0_exit311_6_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_6_tpl),
        .out_c0_exit311_7_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_7_tpl),
        .out_c0_exit311_8_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_8_tpl),
        .out_c0_exit311_9_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_9_tpl),
        .out_c0_exit311_10_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_10_tpl),
        .out_c0_exit311_11_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_11_tpl),
        .out_c0_exit311_12_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_12_tpl),
        .out_c0_exit311_13_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_13_tpl),
        .out_c0_exit311_14_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_14_tpl),
        .out_c0_exit311_15_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_15_tpl),
        .out_c0_exit311_16_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_16_tpl),
        .out_c0_exit311_17_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_17_tpl),
        .out_c0_exit311_18_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_18_tpl),
        .out_c0_exit311_19_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_19_tpl),
        .out_c0_exit311_20_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_20_tpl),
        .out_c0_exit311_21_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_21_tpl),
        .out_c0_exit311_22_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_22_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_valid_out = i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_stall_out = i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,12)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,17)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,20)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_address = i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_address;
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_enable = i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_enable;
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_read = i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_read;
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_write = i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_write;
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_writedata = i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_writedata;
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable = i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable;
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount = i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount;

    // bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x(BITJOIN,32)
    assign bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_q = {i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_22_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_21_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_20_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_19_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_18_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_17_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_16_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_15_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_14_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_13_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_12_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_11_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_10_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_9_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_8_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_7_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_6_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_5_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_4_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_3_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_out_c0_exit311_2_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x(BITSELECT,33)
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_q[64:64]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_q[65:65]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_q[66:66]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_q[98:67]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_q[99:99]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_q[131:100]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_q[163:132]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_q[195:164]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_q[196:196]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_q[197:197]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_q[229:198]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_q[261:230]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_q[262:262]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_q[263:263]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_q[264:264]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_q[297:265]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_q[329:298]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_t = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_q[361:330]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_u = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_q[393:362]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_v = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_q[394:394]);

    // dupName_0_sync_out_x(GPOUT,21)@6
    assign out_c0_exe10321 = bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_j;
    assign out_c0_exe11322 = bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_k;
    assign out_c0_exe12323 = bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_l;
    assign out_c0_exe13324 = bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_m;
    assign out_c0_exe14325 = bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_n;
    assign out_c0_exe15326 = bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_o;
    assign out_c0_exe16327 = bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_p;
    assign out_c0_exe17328 = bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_q;
    assign out_c0_exe18329 = bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_r;
    assign out_c0_exe19330 = bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_s;
    assign out_c0_exe20331 = bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_t;
    assign out_c0_exe21 = bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_u;
    assign out_c0_exe22 = bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_v;
    assign out_c0_exe2313 = bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_b;
    assign out_c0_exe3314 = bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_c;
    assign out_c0_exe4315 = bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_d;
    assign out_c0_exe5316 = bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_e;
    assign out_c0_exe6317 = bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_f;
    assign out_c0_exe7318 = bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_g;
    assign out_c0_exe8319 = bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_h;
    assign out_c0_exe9320 = bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_i;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter28064_conv2d1x11_aunroll_x_V0;

endmodule
