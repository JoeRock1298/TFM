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

// SystemVerilog created from conv2d3x3_bb_B3_stall_region
// SystemVerilog created on Tue May 30 12:30:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B3_stall_region (
    input wire [31:0] in_input_size,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe1082,
    input wire [63:0] in_c0_exe112,
    input wire [31:0] in_c0_exe1186152,
    input wire [0:0] in_c0_exe1191,
    input wire [31:0] in_c0_exe12102,
    input wire [0:0] in_c0_exe13112,
    input wire [0:0] in_c0_exe14121,
    input wire [0:0] in_c0_exe15131,
    input wire [0:0] in_c0_exe16141,
    input wire [63:0] in_c0_exe323,
    input wire [0:0] in_c0_exe432,
    input wire [31:0] in_c0_exe534,
    input wire [31:0] in_c0_exe650,
    input wire [0:0] in_c0_exe753,
    input wire [0:0] in_c0_exe862,
    input wire [31:0] in_c0_exe972,
    input wire [31:0] in_j_062150,
    input wire [31:0] in_k_059,
    input wire [31:0] in_tmp_058,
    input wire [31:0] in_unnamed_conv2d3x33,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe1082,
    output wire [63:0] out_c0_exe112,
    output wire [31:0] out_c0_exe1186152,
    output wire [0:0] out_c0_exe1191,
    output wire [31:0] out_c0_exe1195,
    output wire [31:0] out_c0_exe12102,
    output wire [0:0] out_c0_exe13112,
    output wire [0:0] out_c0_exe14121,
    output wire [0:0] out_c0_exe15131,
    output wire [0:0] out_c0_exe16141,
    output wire [31:0] out_c0_exe2196,
    output wire [63:0] out_c0_exe323,
    output wire [0:0] out_c0_exe432,
    output wire [31:0] out_c0_exe534,
    output wire [31:0] out_c0_exe650,
    output wire [0:0] out_c0_exe753,
    output wire [0:0] out_c0_exe862,
    output wire [31:0] out_c0_exe972,
    output wire [31:0] out_j_062150,
    output wire [31:0] out_k_059,
    output wire [31:0] out_mul46_add4,
    output wire [31:0] out_tmp_058,
    output wire [31:0] out_unnamed_conv2d3x33,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [32:0] i_mul46_add4_conv2d3x34_a;
    wire [32:0] i_mul46_add4_conv2d3x34_b;
    logic [32:0] i_mul46_add4_conv2d3x34_o;
    wire [32:0] i_mul46_add4_conv2d3x34_q;
    wire [2:0] i_unnamed_conv2d3x30_vt_const_2_q;
    wire [31:0] i_unnamed_conv2d3x30_vt_join_q;
    wire [28:0] i_unnamed_conv2d3x30_vt_select_31_b;
    wire [31:0] bgTrunc_i_mul46_add4_conv2d3x34_sel_x_b;
    wire [0:0] conv2d3x3_B3_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv2d3x3_B3_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [63:0] conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [63:0] conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [31:0] conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [0:0] conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [0:0] conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [31:0] conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [0:0] conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [0:0] conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [0:0] conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [0:0] conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [31:0] conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_17_tpl;
    wire [31:0] conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_18_tpl;
    wire [31:0] conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_19_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter189182_conv2d3x32_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter189182_conv2d3x32_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter189182_conv2d3x32_aunroll_x_out_c0_exit194_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter189182_conv2d3x32_aunroll_x_out_c0_exit194_2_tpl;
    wire [30:0] leftShiftStage0Idx1Rng1_uid35_dupName_0_i_unnamed_conv2d3x30_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid35_dupName_0_i_unnamed_conv2d3x30_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid36_dupName_0_i_unnamed_conv2d3x30_shift_x_q;
    wire [0:0] leftShiftStage0_uid38_dupName_0_i_unnamed_conv2d3x30_shift_x_s;
    reg [31:0] leftShiftStage0_uid38_dupName_0_i_unnamed_conv2d3x30_shift_x_q;
    wire [1:0] leftShiftStage1Idx1Pad2_uid39_dupName_0_i_unnamed_conv2d3x30_shift_x_q;
    wire [29:0] leftShiftStage1Idx1Rng2_uid40_dupName_0_i_unnamed_conv2d3x30_shift_x_in;
    wire [29:0] leftShiftStage1Idx1Rng2_uid40_dupName_0_i_unnamed_conv2d3x30_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid41_dupName_0_i_unnamed_conv2d3x30_shift_x_q;
    wire [0:0] leftShiftStage1_uid43_dupName_0_i_unnamed_conv2d3x30_shift_x_s;
    reg [31:0] leftShiftStage1_uid43_dupName_0_i_unnamed_conv2d3x30_shift_x_q;
    wire [424:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [31:0] sel_for_coalesced_delay_0_f;
    wire [31:0] sel_for_coalesced_delay_0_g;
    wire [31:0] sel_for_coalesced_delay_0_h;
    wire [31:0] sel_for_coalesced_delay_0_i;
    wire [31:0] sel_for_coalesced_delay_0_j;
    wire [31:0] sel_for_coalesced_delay_0_k;
    wire [31:0] sel_for_coalesced_delay_0_l;
    wire [0:0] sel_for_coalesced_delay_0_m;
    wire [0:0] sel_for_coalesced_delay_0_n;
    wire [0:0] sel_for_coalesced_delay_0_o;
    wire [0:0] sel_for_coalesced_delay_0_p;
    wire [0:0] sel_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_r;
    wire [0:0] sel_for_coalesced_delay_0_s;
    wire [0:0] sel_for_coalesced_delay_0_t;
    wire [0:0] sel_for_coalesced_delay_0_u;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [424:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [424:0] coalesced_delay_0_fifo_data_out;
    wire [424:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [63:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [31:0] bubble_select_stall_entry_m;
    wire [31:0] bubble_select_stall_entry_n;
    wire [0:0] bubble_select_stall_entry_o;
    wire [0:0] bubble_select_stall_entry_p;
    wire [31:0] bubble_select_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_r;
    wire [31:0] bubble_select_stall_entry_s;
    wire [31:0] bubble_select_stall_entry_t;
    wire [31:0] bubble_select_stall_entry_u;
    wire [424:0] bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_c;
    wire [63:0] bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_d;
    wire [63:0] bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_g;
    wire [31:0] bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_h;
    wire [0:0] bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_j;
    wire [31:0] bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_k;
    wire [0:0] bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_l;
    wire [0:0] bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_m;
    wire [31:0] bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_n;
    wire [0:0] bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_o;
    wire [0:0] bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_p;
    wire [0:0] bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_r;
    wire [31:0] bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_s;
    wire [31:0] bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_t;
    wire [31:0] bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_u;
    wire [63:0] bubble_join_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter189182_conv2d3x32_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter189182_conv2d3x32_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter189182_conv2d3x32_aunroll_x_c;
    wire [424:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [424:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_conv2d3x3_B3_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv2d3x3_B3_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_conv2d3x3_B3_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_conv2d3x3_B3_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_conv2d3x3_B3_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_conv2d3x3_B3_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_conv2d3x3_B3_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_conv2d3x3_B3_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_conv2d3x3_B3_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_conv2d3x3_B3_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_conv2d3x3_B3_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv2d3x3_B3_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_conv2d3x3_B3_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;


    // bubble_join_stall_entry(BITJOIN,69)
    assign bubble_join_stall_entry_q = {in_unnamed_conv2d3x33, in_tmp_058, in_k_059, in_j_062150, in_c0_exe972, in_c0_exe862, in_c0_exe753, in_c0_exe650, in_c0_exe534, in_c0_exe432, in_c0_exe323, in_c0_exe16141, in_c0_exe15131, in_c0_exe14121, in_c0_exe13112, in_c0_exe12102, in_c0_exe1191, in_c0_exe1186152, in_c0_exe112, in_c0_exe1082};

    // bubble_select_stall_entry(BITSELECT,70)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[96:65]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[97:97]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[129:98]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[130:130]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[131:131]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[132:132]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[133:133]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[197:134]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[198:198]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[230:199]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[262:231]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[263:263]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[264:264]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[296:265]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[328:297]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[360:329]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[392:361]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[424:393]);

    // bubble_join_conv2d3x3_B3_merge_reg_aunroll_x(BITJOIN,73)
    assign bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q = {conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_19_tpl, conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_18_tpl, conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_17_tpl, conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_16_tpl, conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_15_tpl, conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_14_tpl, conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_13_tpl, conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_12_tpl, conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_11_tpl, conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_10_tpl, conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_9_tpl, conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_8_tpl, conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_7_tpl, conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_6_tpl, conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_5_tpl, conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_4_tpl, conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_3_tpl, conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_2_tpl, conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_1_tpl, conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv2d3x3_B3_merge_reg_aunroll_x(BITSELECT,74)
    assign bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q[31:0]);
    assign bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q[63:32]);
    assign bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q[127:64]);
    assign bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q[191:128]);
    assign bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_f = $unsigned(bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q[192:192]);
    assign bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_g = $unsigned(bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q[224:193]);
    assign bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_h = $unsigned(bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q[256:225]);
    assign bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_i = $unsigned(bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q[257:257]);
    assign bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_j = $unsigned(bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q[258:258]);
    assign bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_k = $unsigned(bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q[290:259]);
    assign bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_l = $unsigned(bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q[291:291]);
    assign bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_m = $unsigned(bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q[292:292]);
    assign bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_n = $unsigned(bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q[324:293]);
    assign bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_o = $unsigned(bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q[325:325]);
    assign bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_p = $unsigned(bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q[326:326]);
    assign bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_q = $unsigned(bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q[327:327]);
    assign bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_r = $unsigned(bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q[328:328]);
    assign bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_s = $unsigned(bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q[360:329]);
    assign bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_t = $unsigned(bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q[392:361]);
    assign bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_u = $unsigned(bubble_join_conv2d3x3_B3_merge_reg_aunroll_x_q[424:393]);

    // join_for_coalesced_delay_0(BITJOIN,65)
    assign join_for_coalesced_delay_0_q = {bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_f, bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_r, bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_q, bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_p, bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_o, bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_m, bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_l, bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_i, bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_j, bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_b, bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_g, bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_h, bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_k, bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_n, bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_s, bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_t, bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_u, bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_c, bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_e, bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_d};

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,101)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter189182_conv2d3x32_aunroll_x_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;

    // coalesced_delay_0_fifo(STALLFIFO,67)
    assign coalesced_delay_0_fifo_valid_in = SE_out_conv2d3x3_B3_merge_reg_aunroll_x_V1;
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
        .DATA_WIDTH(425),
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

    // i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter189182_conv2d3x32_aunroll_x(BLACKBOX,24)@1
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@12
    // out out_c0_exit194_0_tpl@12
    // out out_c0_exit194_1_tpl@12
    // out out_c0_exit194_2_tpl@12
    conv2d3x3_i_sfc_s_c0_in_for_cond14_prehe0000ter189182_conv2d3x32 thei_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter189182_conv2d3x32_aunroll_x (
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_conv2d3x3_B3_merge_reg_aunroll_x_V0),
        .in_input_size(in_input_size),
        .in_c0_eni2188_0_tpl(GND_q),
        .in_c0_eni2188_1_tpl(bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_b),
        .in_c0_eni2188_2_tpl(bubble_select_conv2d3x3_B3_merge_reg_aunroll_x_g),
        .out_o_stall(i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter189182_conv2d3x32_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter189182_conv2d3x32_aunroll_x_out_o_valid),
        .out_c0_exit194_0_tpl(),
        .out_c0_exit194_1_tpl(i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter189182_conv2d3x32_aunroll_x_out_c0_exit194_1_tpl),
        .out_c0_exit194_2_tpl(i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter189182_conv2d3x32_aunroll_x_out_c0_exit194_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_conv2d3x3_B3_merge_reg_aunroll_x(STALLENABLE,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_conv2d3x3_B3_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_conv2d3x3_B3_merge_reg_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_conv2d3x3_B3_merge_reg_aunroll_x_fromReg0 <= SE_out_conv2d3x3_B3_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_conv2d3x3_B3_merge_reg_aunroll_x_fromReg1 <= SE_out_conv2d3x3_B3_merge_reg_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_conv2d3x3_B3_merge_reg_aunroll_x_consumed0 = (~ (i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter189182_conv2d3x32_aunroll_x_out_o_stall) & SE_out_conv2d3x3_B3_merge_reg_aunroll_x_wireValid) | SE_out_conv2d3x3_B3_merge_reg_aunroll_x_fromReg0;
    assign SE_out_conv2d3x3_B3_merge_reg_aunroll_x_consumed1 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_conv2d3x3_B3_merge_reg_aunroll_x_wireValid) | SE_out_conv2d3x3_B3_merge_reg_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_conv2d3x3_B3_merge_reg_aunroll_x_StallValid = SE_out_conv2d3x3_B3_merge_reg_aunroll_x_backStall & SE_out_conv2d3x3_B3_merge_reg_aunroll_x_wireValid;
    assign SE_out_conv2d3x3_B3_merge_reg_aunroll_x_toReg0 = SE_out_conv2d3x3_B3_merge_reg_aunroll_x_StallValid & SE_out_conv2d3x3_B3_merge_reg_aunroll_x_consumed0;
    assign SE_out_conv2d3x3_B3_merge_reg_aunroll_x_toReg1 = SE_out_conv2d3x3_B3_merge_reg_aunroll_x_StallValid & SE_out_conv2d3x3_B3_merge_reg_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_conv2d3x3_B3_merge_reg_aunroll_x_or0 = SE_out_conv2d3x3_B3_merge_reg_aunroll_x_consumed0;
    assign SE_out_conv2d3x3_B3_merge_reg_aunroll_x_wireStall = ~ (SE_out_conv2d3x3_B3_merge_reg_aunroll_x_consumed1 & SE_out_conv2d3x3_B3_merge_reg_aunroll_x_or0);
    assign SE_out_conv2d3x3_B3_merge_reg_aunroll_x_backStall = SE_out_conv2d3x3_B3_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_conv2d3x3_B3_merge_reg_aunroll_x_V0 = SE_out_conv2d3x3_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv2d3x3_B3_merge_reg_aunroll_x_fromReg0);
    assign SE_out_conv2d3x3_B3_merge_reg_aunroll_x_V1 = SE_out_conv2d3x3_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv2d3x3_B3_merge_reg_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_conv2d3x3_B3_merge_reg_aunroll_x_wireValid = conv2d3x3_B3_merge_reg_aunroll_x_out_valid_out;

    // conv2d3x3_B3_merge_reg_aunroll_x(BLACKBOX,22)@0
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
    conv2d3x3_B3_merge_reg theconv2d3x3_B3_merge_reg_aunroll_x (
        .in_stall_in(SE_out_conv2d3x3_B3_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_s),
        .in_data_in_1_tpl(bubble_select_stall_entry_t),
        .in_data_in_2_tpl(bubble_select_stall_entry_c),
        .in_data_in_3_tpl(bubble_select_stall_entry_k),
        .in_data_in_4_tpl(bubble_select_stall_entry_l),
        .in_data_in_5_tpl(bubble_select_stall_entry_m),
        .in_data_in_6_tpl(bubble_select_stall_entry_n),
        .in_data_in_7_tpl(bubble_select_stall_entry_o),
        .in_data_in_8_tpl(bubble_select_stall_entry_p),
        .in_data_in_9_tpl(bubble_select_stall_entry_q),
        .in_data_in_10_tpl(bubble_select_stall_entry_b),
        .in_data_in_11_tpl(bubble_select_stall_entry_e),
        .in_data_in_12_tpl(bubble_select_stall_entry_f),
        .in_data_in_13_tpl(bubble_select_stall_entry_g),
        .in_data_in_14_tpl(bubble_select_stall_entry_h),
        .in_data_in_15_tpl(bubble_select_stall_entry_i),
        .in_data_in_16_tpl(bubble_select_stall_entry_j),
        .in_data_in_17_tpl(bubble_select_stall_entry_u),
        .in_data_in_18_tpl(bubble_select_stall_entry_r),
        .in_data_in_19_tpl(bubble_select_stall_entry_d),
        .out_stall_out(conv2d3x3_B3_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv2d3x3_B3_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(conv2d3x3_B3_merge_reg_aunroll_x_out_data_out_19_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,85)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv2d3x3_B3_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,19)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // leftShiftStage1Idx1Rng2_uid40_dupName_0_i_unnamed_conv2d3x30_shift_x(BITSELECT,39)@12
    assign leftShiftStage1Idx1Rng2_uid40_dupName_0_i_unnamed_conv2d3x30_shift_x_in = leftShiftStage0_uid38_dupName_0_i_unnamed_conv2d3x30_shift_x_q[29:0];
    assign leftShiftStage1Idx1Rng2_uid40_dupName_0_i_unnamed_conv2d3x30_shift_x_b = leftShiftStage1Idx1Rng2_uid40_dupName_0_i_unnamed_conv2d3x30_shift_x_in[29:0];

    // leftShiftStage1Idx1Pad2_uid39_dupName_0_i_unnamed_conv2d3x30_shift_x(CONSTANT,38)
    assign leftShiftStage1Idx1Pad2_uid39_dupName_0_i_unnamed_conv2d3x30_shift_x_q = $unsigned(2'b00);

    // leftShiftStage1Idx1_uid41_dupName_0_i_unnamed_conv2d3x30_shift_x(BITJOIN,40)@12
    assign leftShiftStage1Idx1_uid41_dupName_0_i_unnamed_conv2d3x30_shift_x_q = {leftShiftStage1Idx1Rng2_uid40_dupName_0_i_unnamed_conv2d3x30_shift_x_b, leftShiftStage1Idx1Pad2_uid39_dupName_0_i_unnamed_conv2d3x30_shift_x_q};

    // leftShiftStage0Idx1Rng1_uid35_dupName_0_i_unnamed_conv2d3x30_shift_x(BITSELECT,34)@12
    assign leftShiftStage0Idx1Rng1_uid35_dupName_0_i_unnamed_conv2d3x30_shift_x_in = sel_for_coalesced_delay_0_l[30:0];
    assign leftShiftStage0Idx1Rng1_uid35_dupName_0_i_unnamed_conv2d3x30_shift_x_b = leftShiftStage0Idx1Rng1_uid35_dupName_0_i_unnamed_conv2d3x30_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid36_dupName_0_i_unnamed_conv2d3x30_shift_x(BITJOIN,35)@12
    assign leftShiftStage0Idx1_uid36_dupName_0_i_unnamed_conv2d3x30_shift_x_q = {leftShiftStage0Idx1Rng1_uid35_dupName_0_i_unnamed_conv2d3x30_shift_x_b, GND_q};

    // leftShiftStage0_uid38_dupName_0_i_unnamed_conv2d3x30_shift_x(MUX,37)@12
    assign leftShiftStage0_uid38_dupName_0_i_unnamed_conv2d3x30_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid38_dupName_0_i_unnamed_conv2d3x30_shift_x_s or sel_for_coalesced_delay_0_l or leftShiftStage0Idx1_uid36_dupName_0_i_unnamed_conv2d3x30_shift_x_q)
    begin
        unique case (leftShiftStage0_uid38_dupName_0_i_unnamed_conv2d3x30_shift_x_s)
            1'b0 : leftShiftStage0_uid38_dupName_0_i_unnamed_conv2d3x30_shift_x_q = sel_for_coalesced_delay_0_l;
            1'b1 : leftShiftStage0_uid38_dupName_0_i_unnamed_conv2d3x30_shift_x_q = leftShiftStage0Idx1_uid36_dupName_0_i_unnamed_conv2d3x30_shift_x_q;
            default : leftShiftStage0_uid38_dupName_0_i_unnamed_conv2d3x30_shift_x_q = 32'b0;
        endcase
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // leftShiftStage1_uid43_dupName_0_i_unnamed_conv2d3x30_shift_x(MUX,42)@12
    assign leftShiftStage1_uid43_dupName_0_i_unnamed_conv2d3x30_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid43_dupName_0_i_unnamed_conv2d3x30_shift_x_s or leftShiftStage0_uid38_dupName_0_i_unnamed_conv2d3x30_shift_x_q or leftShiftStage1Idx1_uid41_dupName_0_i_unnamed_conv2d3x30_shift_x_q)
    begin
        unique case (leftShiftStage1_uid43_dupName_0_i_unnamed_conv2d3x30_shift_x_s)
            1'b0 : leftShiftStage1_uid43_dupName_0_i_unnamed_conv2d3x30_shift_x_q = leftShiftStage0_uid38_dupName_0_i_unnamed_conv2d3x30_shift_x_q;
            1'b1 : leftShiftStage1_uid43_dupName_0_i_unnamed_conv2d3x30_shift_x_q = leftShiftStage1Idx1_uid41_dupName_0_i_unnamed_conv2d3x30_shift_x_q;
            default : leftShiftStage1_uid43_dupName_0_i_unnamed_conv2d3x30_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_conv2d3x30_vt_select_31(BITSELECT,10)@12
    assign i_unnamed_conv2d3x30_vt_select_31_b = leftShiftStage1_uid43_dupName_0_i_unnamed_conv2d3x30_shift_x_q[31:3];

    // i_unnamed_conv2d3x30_vt_const_2(CONSTANT,8)
    assign i_unnamed_conv2d3x30_vt_const_2_q = $unsigned(3'b000);

    // i_unnamed_conv2d3x30_vt_join(BITJOIN,9)@12
    assign i_unnamed_conv2d3x30_vt_join_q = {i_unnamed_conv2d3x30_vt_select_31_b, i_unnamed_conv2d3x30_vt_const_2_q};

    // i_mul46_add4_conv2d3x34(ADD,7)@12
    assign i_mul46_add4_conv2d3x34_a = {1'b0, sel_for_coalesced_delay_0_l};
    assign i_mul46_add4_conv2d3x34_b = {1'b0, i_unnamed_conv2d3x30_vt_join_q};
    assign i_mul46_add4_conv2d3x34_o = $unsigned(i_mul46_add4_conv2d3x34_a) + $unsigned(i_mul46_add4_conv2d3x34_b);
    assign i_mul46_add4_conv2d3x34_q = i_mul46_add4_conv2d3x34_o[32:0];

    // bgTrunc_i_mul46_add4_conv2d3x34_sel_x(BITSELECT,21)@12
    assign bgTrunc_i_mul46_add4_conv2d3x34_sel_x_b = i_mul46_add4_conv2d3x34_q[31:0];

    // bubble_join_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter189182_conv2d3x32_aunroll_x(BITJOIN,76)
    assign bubble_join_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter189182_conv2d3x32_aunroll_x_q = {i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter189182_conv2d3x32_aunroll_x_out_c0_exit194_2_tpl, i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter189182_conv2d3x32_aunroll_x_out_c0_exit194_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter189182_conv2d3x32_aunroll_x(BITSELECT,77)
    assign bubble_select_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter189182_conv2d3x32_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter189182_conv2d3x32_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter189182_conv2d3x32_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter189182_conv2d3x32_aunroll_x_q[63:32]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,80)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,81)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[424:0]);

    // sel_for_coalesced_delay_0(BITSELECT,66)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[159:128]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[191:160]);
    assign sel_for_coalesced_delay_0_f = $unsigned(bubble_select_coalesced_delay_0_fifo_b[223:192]);
    assign sel_for_coalesced_delay_0_g = $unsigned(bubble_select_coalesced_delay_0_fifo_b[255:224]);
    assign sel_for_coalesced_delay_0_h = $unsigned(bubble_select_coalesced_delay_0_fifo_b[287:256]);
    assign sel_for_coalesced_delay_0_i = $unsigned(bubble_select_coalesced_delay_0_fifo_b[319:288]);
    assign sel_for_coalesced_delay_0_j = $unsigned(bubble_select_coalesced_delay_0_fifo_b[351:320]);
    assign sel_for_coalesced_delay_0_k = $unsigned(bubble_select_coalesced_delay_0_fifo_b[383:352]);
    assign sel_for_coalesced_delay_0_l = $unsigned(bubble_select_coalesced_delay_0_fifo_b[415:384]);
    assign sel_for_coalesced_delay_0_m = $unsigned(bubble_select_coalesced_delay_0_fifo_b[416:416]);
    assign sel_for_coalesced_delay_0_n = $unsigned(bubble_select_coalesced_delay_0_fifo_b[417:417]);
    assign sel_for_coalesced_delay_0_o = $unsigned(bubble_select_coalesced_delay_0_fifo_b[418:418]);
    assign sel_for_coalesced_delay_0_p = $unsigned(bubble_select_coalesced_delay_0_fifo_b[419:419]);
    assign sel_for_coalesced_delay_0_q = $unsigned(bubble_select_coalesced_delay_0_fifo_b[420:420]);
    assign sel_for_coalesced_delay_0_r = $unsigned(bubble_select_coalesced_delay_0_fifo_b[421:421]);
    assign sel_for_coalesced_delay_0_s = $unsigned(bubble_select_coalesced_delay_0_fifo_b[422:422]);
    assign sel_for_coalesced_delay_0_t = $unsigned(bubble_select_coalesced_delay_0_fifo_b[423:423]);
    assign sel_for_coalesced_delay_0_u = $unsigned(bubble_select_coalesced_delay_0_fifo_b[424:424]);

    // dupName_0_sync_out_x(GPOUT,23)@12
    assign out_c0_exe1082 = sel_for_coalesced_delay_0_o;
    assign out_c0_exe112 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe1186152 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe1191 = sel_for_coalesced_delay_0_p;
    assign out_c0_exe1195 = bubble_select_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter189182_conv2d3x32_aunroll_x_b;
    assign out_c0_exe12102 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe13112 = sel_for_coalesced_delay_0_q;
    assign out_c0_exe14121 = sel_for_coalesced_delay_0_r;
    assign out_c0_exe15131 = sel_for_coalesced_delay_0_s;
    assign out_c0_exe16141 = sel_for_coalesced_delay_0_t;
    assign out_c0_exe2196 = bubble_select_i_sfc_s_c0_in_for_cond14_preheader_conv2d3x3s_c0_enter189182_conv2d3x32_aunroll_x_c;
    assign out_c0_exe323 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe432 = sel_for_coalesced_delay_0_u;
    assign out_c0_exe534 = sel_for_coalesced_delay_0_k;
    assign out_c0_exe650 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe753 = sel_for_coalesced_delay_0_n;
    assign out_c0_exe862 = sel_for_coalesced_delay_0_m;
    assign out_c0_exe972 = sel_for_coalesced_delay_0_i;
    assign out_j_062150 = sel_for_coalesced_delay_0_f;
    assign out_k_059 = sel_for_coalesced_delay_0_l;
    assign out_mul46_add4 = bgTrunc_i_mul46_add4_conv2d3x34_sel_x_b;
    assign out_tmp_058 = sel_for_coalesced_delay_0_d;
    assign out_unnamed_conv2d3x33 = sel_for_coalesced_delay_0_g;
    assign out_valid_out = SE_out_coalesced_delay_0_fifo_V0;

endmodule
