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

// SystemVerilog created from conv2d3x3_bb_B1_stall_region
// SystemVerilog created on Tue May 30 12:30:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B1_stall_region (
    input wire [31:0] in_pad,
    input wire [31:0] in_stride,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe1083,
    input wire [63:0] in_c0_exe113,
    input wire [0:0] in_c0_exe1192,
    input wire [31:0] in_c0_exe12103,
    input wire [0:0] in_c0_exe13113,
    input wire [0:0] in_c0_exe14122,
    input wire [0:0] in_c0_exe15132,
    input wire [0:0] in_c0_exe16142,
    input wire [63:0] in_c0_exe324,
    input wire [0:0] in_c0_exe433,
    input wire [31:0] in_c0_exe535,
    input wire [31:0] in_c0_exe651,
    input wire [0:0] in_c0_exe754,
    input wire [0:0] in_c0_exe863,
    input wire [31:0] in_c0_exe973,
    input wire [31:0] in_j_062,
    input wire [31:0] in_unnamed_conv2d3x32,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe1083,
    output wire [63:0] out_c0_exe113,
    output wire [31:0] out_c0_exe1186,
    output wire [0:0] out_c0_exe1192,
    output wire [31:0] out_c0_exe12103,
    output wire [0:0] out_c0_exe13113,
    output wire [0:0] out_c0_exe14122,
    output wire [0:0] out_c0_exe15132,
    output wire [0:0] out_c0_exe16142,
    output wire [63:0] out_c0_exe324,
    output wire [0:0] out_c0_exe433,
    output wire [31:0] out_c0_exe535,
    output wire [31:0] out_c0_exe651,
    output wire [0:0] out_c0_exe754,
    output wire [0:0] out_c0_exe863,
    output wire [31:0] out_c0_exe973,
    output wire [31:0] out_j_062,
    output wire [31:0] out_unnamed_conv2d3x32,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] conv2d3x3_B1_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv2d3x3_B1_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [63:0] conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [63:0] conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [31:0] conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [0:0] conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [31:0] conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [0:0] conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [0:0] conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [0:0] conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [0:0] conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [31:0] conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_conv2d3x3s_c0_enter182181_conv2d3x31_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_conv2d3x3s_c0_enter182181_conv2d3x31_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_cond9_preheader_conv2d3x3s_c0_enter182181_conv2d3x31_aunroll_x_out_c0_exit185_1_tpl;
    wire [328:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [31:0] sel_for_coalesced_delay_0_f;
    wire [31:0] sel_for_coalesced_delay_0_g;
    wire [31:0] sel_for_coalesced_delay_0_h;
    wire [31:0] sel_for_coalesced_delay_0_i;
    wire [0:0] sel_for_coalesced_delay_0_j;
    wire [0:0] sel_for_coalesced_delay_0_k;
    wire [0:0] sel_for_coalesced_delay_0_l;
    wire [0:0] sel_for_coalesced_delay_0_m;
    wire [0:0] sel_for_coalesced_delay_0_n;
    wire [0:0] sel_for_coalesced_delay_0_o;
    wire [0:0] sel_for_coalesced_delay_0_p;
    wire [0:0] sel_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_r;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [328:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [328:0] coalesced_delay_0_fifo_data_out;
    wire [328:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [63:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [31:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [0:0] bubble_select_stall_entry_o;
    wire [31:0] bubble_select_stall_entry_p;
    wire [31:0] bubble_select_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_r;
    wire [328:0] bubble_join_conv2d3x3_B1_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_b;
    wire [63:0] bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_c;
    wire [63:0] bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_h;
    wire [0:0] bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_i;
    wire [31:0] bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_k;
    wire [0:0] bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_l;
    wire [31:0] bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_m;
    wire [0:0] bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_n;
    wire [0:0] bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_o;
    wire [0:0] bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_p;
    wire [0:0] bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_r;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_cond9_preheader_conv2d3x3s_c0_enter182181_conv2d3x31_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_conv2d3x3s_c0_enter182181_conv2d3x31_aunroll_x_b;
    wire [328:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [328:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_conv2d3x3_B1_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv2d3x3_B1_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_conv2d3x3_B1_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_conv2d3x3_B1_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_conv2d3x3_B1_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_conv2d3x3_B1_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_conv2d3x3_B1_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_conv2d3x3_B1_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_conv2d3x3_B1_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_conv2d3x3_B1_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_conv2d3x3_B1_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv2d3x3_B1_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_conv2d3x3_B1_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;


    // bubble_join_stall_entry(BITJOIN,41)
    assign bubble_join_stall_entry_q = {in_unnamed_conv2d3x32, in_j_062, in_c0_exe973, in_c0_exe863, in_c0_exe754, in_c0_exe651, in_c0_exe535, in_c0_exe433, in_c0_exe324, in_c0_exe16142, in_c0_exe15132, in_c0_exe14122, in_c0_exe13113, in_c0_exe12103, in_c0_exe1192, in_c0_exe113, in_c0_exe1083};

    // bubble_select_stall_entry(BITSELECT,42)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[65:65]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[97:66]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[98:98]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[99:99]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[100:100]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[101:101]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[165:102]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[166:166]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[198:167]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[230:199]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[231:231]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[232:232]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[264:233]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[296:265]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[328:297]);

    // bubble_join_conv2d3x3_B1_merge_reg_aunroll_x(BITJOIN,45)
    assign bubble_join_conv2d3x3_B1_merge_reg_aunroll_x_q = {conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_16_tpl, conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_15_tpl, conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_14_tpl, conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_13_tpl, conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_12_tpl, conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_11_tpl, conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_10_tpl, conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_9_tpl, conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_8_tpl, conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_7_tpl, conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_6_tpl, conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_5_tpl, conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_4_tpl, conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_3_tpl, conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_2_tpl, conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_1_tpl, conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv2d3x3_B1_merge_reg_aunroll_x(BITSELECT,46)
    assign bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv2d3x3_B1_merge_reg_aunroll_x_q[31:0]);
    assign bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv2d3x3_B1_merge_reg_aunroll_x_q[95:32]);
    assign bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv2d3x3_B1_merge_reg_aunroll_x_q[159:96]);
    assign bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv2d3x3_B1_merge_reg_aunroll_x_q[160:160]);
    assign bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_f = $unsigned(bubble_join_conv2d3x3_B1_merge_reg_aunroll_x_q[192:161]);
    assign bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_g = $unsigned(bubble_join_conv2d3x3_B1_merge_reg_aunroll_x_q[224:193]);
    assign bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_h = $unsigned(bubble_join_conv2d3x3_B1_merge_reg_aunroll_x_q[225:225]);
    assign bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_i = $unsigned(bubble_join_conv2d3x3_B1_merge_reg_aunroll_x_q[226:226]);
    assign bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_j = $unsigned(bubble_join_conv2d3x3_B1_merge_reg_aunroll_x_q[258:227]);
    assign bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_k = $unsigned(bubble_join_conv2d3x3_B1_merge_reg_aunroll_x_q[259:259]);
    assign bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_l = $unsigned(bubble_join_conv2d3x3_B1_merge_reg_aunroll_x_q[260:260]);
    assign bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_m = $unsigned(bubble_join_conv2d3x3_B1_merge_reg_aunroll_x_q[292:261]);
    assign bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_n = $unsigned(bubble_join_conv2d3x3_B1_merge_reg_aunroll_x_q[293:293]);
    assign bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_o = $unsigned(bubble_join_conv2d3x3_B1_merge_reg_aunroll_x_q[294:294]);
    assign bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_p = $unsigned(bubble_join_conv2d3x3_B1_merge_reg_aunroll_x_q[295:295]);
    assign bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_q = $unsigned(bubble_join_conv2d3x3_B1_merge_reg_aunroll_x_q[296:296]);
    assign bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_r = $unsigned(bubble_join_conv2d3x3_B1_merge_reg_aunroll_x_q[328:297]);

    // join_for_coalesced_delay_0(BITJOIN,37)
    assign join_for_coalesced_delay_0_q = {bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_e, bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_q, bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_p, bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_o, bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_n, bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_l, bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_k, bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_i, bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_h, bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_f, bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_g, bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_j, bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_m, bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_b, bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_r, bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_d, bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_c};

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,63)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_sfc_s_c0_in_for_cond9_preheader_conv2d3x3s_c0_enter182181_conv2d3x31_aunroll_x_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;

    // coalesced_delay_0_fifo(STALLFIFO,39)
    assign coalesced_delay_0_fifo_valid_in = SE_out_conv2d3x3_B1_merge_reg_aunroll_x_V1;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(9),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(329),
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

    // i_sfc_s_c0_in_for_cond9_preheader_conv2d3x3s_c0_enter182181_conv2d3x31_aunroll_x(BLACKBOX,18)@1
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_c0_exit185_0_tpl@9
    // out out_c0_exit185_1_tpl@9
    conv2d3x3_i_sfc_s_c0_in_for_cond9_prehea0000ter182181_conv2d3x31 thei_sfc_s_c0_in_for_cond9_preheader_conv2d3x3s_c0_enter182181_conv2d3x31_aunroll_x (
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_conv2d3x3_B1_merge_reg_aunroll_x_V0),
        .in_pad(in_pad),
        .in_stride(in_stride),
        .in_c0_eni1181_0_tpl(GND_q),
        .in_c0_eni1181_1_tpl(bubble_select_conv2d3x3_B1_merge_reg_aunroll_x_b),
        .out_o_stall(i_sfc_s_c0_in_for_cond9_preheader_conv2d3x3s_c0_enter182181_conv2d3x31_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond9_preheader_conv2d3x3s_c0_enter182181_conv2d3x31_aunroll_x_out_o_valid),
        .out_c0_exit185_0_tpl(),
        .out_c0_exit185_1_tpl(i_sfc_s_c0_in_for_cond9_preheader_conv2d3x3s_c0_enter182181_conv2d3x31_aunroll_x_out_c0_exit185_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_conv2d3x3_B1_merge_reg_aunroll_x(STALLENABLE,57)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_conv2d3x3_B1_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_conv2d3x3_B1_merge_reg_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_conv2d3x3_B1_merge_reg_aunroll_x_fromReg0 <= SE_out_conv2d3x3_B1_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_conv2d3x3_B1_merge_reg_aunroll_x_fromReg1 <= SE_out_conv2d3x3_B1_merge_reg_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_conv2d3x3_B1_merge_reg_aunroll_x_consumed0 = (~ (i_sfc_s_c0_in_for_cond9_preheader_conv2d3x3s_c0_enter182181_conv2d3x31_aunroll_x_out_o_stall) & SE_out_conv2d3x3_B1_merge_reg_aunroll_x_wireValid) | SE_out_conv2d3x3_B1_merge_reg_aunroll_x_fromReg0;
    assign SE_out_conv2d3x3_B1_merge_reg_aunroll_x_consumed1 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_conv2d3x3_B1_merge_reg_aunroll_x_wireValid) | SE_out_conv2d3x3_B1_merge_reg_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_conv2d3x3_B1_merge_reg_aunroll_x_StallValid = SE_out_conv2d3x3_B1_merge_reg_aunroll_x_backStall & SE_out_conv2d3x3_B1_merge_reg_aunroll_x_wireValid;
    assign SE_out_conv2d3x3_B1_merge_reg_aunroll_x_toReg0 = SE_out_conv2d3x3_B1_merge_reg_aunroll_x_StallValid & SE_out_conv2d3x3_B1_merge_reg_aunroll_x_consumed0;
    assign SE_out_conv2d3x3_B1_merge_reg_aunroll_x_toReg1 = SE_out_conv2d3x3_B1_merge_reg_aunroll_x_StallValid & SE_out_conv2d3x3_B1_merge_reg_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_conv2d3x3_B1_merge_reg_aunroll_x_or0 = SE_out_conv2d3x3_B1_merge_reg_aunroll_x_consumed0;
    assign SE_out_conv2d3x3_B1_merge_reg_aunroll_x_wireStall = ~ (SE_out_conv2d3x3_B1_merge_reg_aunroll_x_consumed1 & SE_out_conv2d3x3_B1_merge_reg_aunroll_x_or0);
    assign SE_out_conv2d3x3_B1_merge_reg_aunroll_x_backStall = SE_out_conv2d3x3_B1_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_conv2d3x3_B1_merge_reg_aunroll_x_V0 = SE_out_conv2d3x3_B1_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv2d3x3_B1_merge_reg_aunroll_x_fromReg0);
    assign SE_out_conv2d3x3_B1_merge_reg_aunroll_x_V1 = SE_out_conv2d3x3_B1_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv2d3x3_B1_merge_reg_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_conv2d3x3_B1_merge_reg_aunroll_x_wireValid = conv2d3x3_B1_merge_reg_aunroll_x_out_valid_out;

    // conv2d3x3_B1_merge_reg_aunroll_x(BLACKBOX,16)@0
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
    conv2d3x3_B1_merge_reg theconv2d3x3_B1_merge_reg_aunroll_x (
        .in_stall_in(SE_out_conv2d3x3_B1_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_q),
        .in_data_in_1_tpl(bubble_select_stall_entry_c),
        .in_data_in_2_tpl(bubble_select_stall_entry_j),
        .in_data_in_3_tpl(bubble_select_stall_entry_k),
        .in_data_in_4_tpl(bubble_select_stall_entry_l),
        .in_data_in_5_tpl(bubble_select_stall_entry_m),
        .in_data_in_6_tpl(bubble_select_stall_entry_n),
        .in_data_in_7_tpl(bubble_select_stall_entry_o),
        .in_data_in_8_tpl(bubble_select_stall_entry_p),
        .in_data_in_9_tpl(bubble_select_stall_entry_b),
        .in_data_in_10_tpl(bubble_select_stall_entry_d),
        .in_data_in_11_tpl(bubble_select_stall_entry_e),
        .in_data_in_12_tpl(bubble_select_stall_entry_f),
        .in_data_in_13_tpl(bubble_select_stall_entry_g),
        .in_data_in_14_tpl(bubble_select_stall_entry_h),
        .in_data_in_15_tpl(bubble_select_stall_entry_i),
        .in_data_in_16_tpl(bubble_select_stall_entry_r),
        .out_stall_out(conv2d3x3_B1_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv2d3x3_B1_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(conv2d3x3_B1_merge_reg_aunroll_x_out_data_out_16_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,54)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv2d3x3_B1_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,14)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_cond9_preheader_conv2d3x3s_c0_enter182181_conv2d3x31_aunroll_x(BITJOIN,48)
    assign bubble_join_i_sfc_s_c0_in_for_cond9_preheader_conv2d3x3s_c0_enter182181_conv2d3x31_aunroll_x_q = i_sfc_s_c0_in_for_cond9_preheader_conv2d3x3s_c0_enter182181_conv2d3x31_aunroll_x_out_c0_exit185_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_cond9_preheader_conv2d3x3s_c0_enter182181_conv2d3x31_aunroll_x(BITSELECT,49)
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_conv2d3x3s_c0_enter182181_conv2d3x31_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_conv2d3x3s_c0_enter182181_conv2d3x31_aunroll_x_q[31:0]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,52)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,53)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[328:0]);

    // sel_for_coalesced_delay_0(BITSELECT,38)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[159:128]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[191:160]);
    assign sel_for_coalesced_delay_0_f = $unsigned(bubble_select_coalesced_delay_0_fifo_b[223:192]);
    assign sel_for_coalesced_delay_0_g = $unsigned(bubble_select_coalesced_delay_0_fifo_b[255:224]);
    assign sel_for_coalesced_delay_0_h = $unsigned(bubble_select_coalesced_delay_0_fifo_b[287:256]);
    assign sel_for_coalesced_delay_0_i = $unsigned(bubble_select_coalesced_delay_0_fifo_b[319:288]);
    assign sel_for_coalesced_delay_0_j = $unsigned(bubble_select_coalesced_delay_0_fifo_b[320:320]);
    assign sel_for_coalesced_delay_0_k = $unsigned(bubble_select_coalesced_delay_0_fifo_b[321:321]);
    assign sel_for_coalesced_delay_0_l = $unsigned(bubble_select_coalesced_delay_0_fifo_b[322:322]);
    assign sel_for_coalesced_delay_0_m = $unsigned(bubble_select_coalesced_delay_0_fifo_b[323:323]);
    assign sel_for_coalesced_delay_0_n = $unsigned(bubble_select_coalesced_delay_0_fifo_b[324:324]);
    assign sel_for_coalesced_delay_0_o = $unsigned(bubble_select_coalesced_delay_0_fifo_b[325:325]);
    assign sel_for_coalesced_delay_0_p = $unsigned(bubble_select_coalesced_delay_0_fifo_b[326:326]);
    assign sel_for_coalesced_delay_0_q = $unsigned(bubble_select_coalesced_delay_0_fifo_b[327:327]);
    assign sel_for_coalesced_delay_0_r = $unsigned(bubble_select_coalesced_delay_0_fifo_b[328:328]);

    // dupName_0_sync_out_x(GPOUT,17)@9
    assign out_c0_exe1083 = sel_for_coalesced_delay_0_l;
    assign out_c0_exe113 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe1186 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_conv2d3x3s_c0_enter182181_conv2d3x31_aunroll_x_b;
    assign out_c0_exe1192 = sel_for_coalesced_delay_0_m;
    assign out_c0_exe12103 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe13113 = sel_for_coalesced_delay_0_n;
    assign out_c0_exe14122 = sel_for_coalesced_delay_0_o;
    assign out_c0_exe15132 = sel_for_coalesced_delay_0_p;
    assign out_c0_exe16142 = sel_for_coalesced_delay_0_q;
    assign out_c0_exe324 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe433 = sel_for_coalesced_delay_0_r;
    assign out_c0_exe535 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe651 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe754 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe863 = sel_for_coalesced_delay_0_k;
    assign out_c0_exe973 = sel_for_coalesced_delay_0_g;
    assign out_j_062 = sel_for_coalesced_delay_0_e;
    assign out_unnamed_conv2d3x32 = sel_for_coalesced_delay_0_d;
    assign out_valid_out = SE_out_coalesced_delay_0_fifo_V0;

endmodule
