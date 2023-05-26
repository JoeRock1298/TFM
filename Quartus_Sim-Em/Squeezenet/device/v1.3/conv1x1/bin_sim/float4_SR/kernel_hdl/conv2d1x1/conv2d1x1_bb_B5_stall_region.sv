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

// SystemVerilog created from conv2d1x1_bb_B5_stall_region
// SystemVerilog created on Wed May 24 11:22:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B5_stall_region (
    input wire [511:0] in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_readdata,
    input wire [0:0] in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writeack,
    input wire [0:0] in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_readdatavalid,
    output wire [31:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_address,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_enable,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_read,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_write,
    output wire [511:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writedata,
    output wire [63:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe103218,
    input wire [0:0] in_c0_exe113229,
    input wire [0:0] in_c0_exe1232310,
    input wire [31:0] in_c0_exe1332411,
    input wire [31:0] in_c0_exe1432512,
    input wire [0:0] in_c0_exe1532613,
    input wire [0:0] in_c0_exe1632714,
    input wire [0:0] in_c0_exe1732815,
    input wire [32:0] in_c0_exe1832916,
    input wire [31:0] in_c0_exe1933017,
    input wire [31:0] in_c0_exe2033118,
    input wire [31:0] in_c0_exe2119,
    input wire [0:0] in_c0_exe2220,
    input wire [63:0] in_c0_exe23131,
    input wire [0:0] in_c0_exe33142,
    input wire [0:0] in_c0_exe43153,
    input wire [31:0] in_c0_exe63174,
    input wire [0:0] in_c0_exe73185,
    input wire [31:0] in_c0_exe83196,
    input wire [31:0] in_c0_exe93207,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10260,
    output wire [31:0] out_c0_exe103218,
    output wire [31:0] out_c0_exe11261,
    output wire [0:0] out_c0_exe113229,
    output wire [31:0] out_c0_exe12262,
    output wire [0:0] out_c0_exe1232310,
    output wire [31:0] out_c0_exe1251,
    output wire [31:0] out_c0_exe13263,
    output wire [31:0] out_c0_exe1332411,
    output wire [31:0] out_c0_exe14264,
    output wire [31:0] out_c0_exe1432512,
    output wire [31:0] out_c0_exe15265,
    output wire [0:0] out_c0_exe1532613,
    output wire [31:0] out_c0_exe16266,
    output wire [0:0] out_c0_exe1632714,
    output wire [0:0] out_c0_exe1732815,
    output wire [32:0] out_c0_exe1832916,
    output wire [31:0] out_c0_exe1933017,
    output wire [31:0] out_c0_exe2033118,
    output wire [31:0] out_c0_exe2119,
    output wire [0:0] out_c0_exe2220,
    output wire [31:0] out_c0_exe2252,
    output wire [63:0] out_c0_exe23131,
    output wire [31:0] out_c0_exe3253,
    output wire [0:0] out_c0_exe33142,
    output wire [31:0] out_c0_exe4254,
    output wire [0:0] out_c0_exe43153,
    output wire [31:0] out_c0_exe5255,
    output wire [31:0] out_c0_exe6256,
    output wire [31:0] out_c0_exe63174,
    output wire [31:0] out_c0_exe7257,
    output wire [0:0] out_c0_exe73185,
    output wire [31:0] out_c0_exe8258,
    output wire [31:0] out_c0_exe83196,
    output wire [31:0] out_c0_exe9259,
    output wire [31:0] out_c0_exe93207,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_burstcount;
    wire [63:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_write;
    wire [511:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_10_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_11_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_12_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_13_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_14_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_15_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_16_tpl;
    wire [393:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [32:0] sel_for_coalesced_delay_0_c;
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
    wire [393:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [393:0] coalesced_delay_0_fifo_data_out;
    wire [393:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [32:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [31:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [63:0] bubble_select_stall_entry_o;
    wire [0:0] bubble_select_stall_entry_p;
    wire [0:0] bubble_select_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_r;
    wire [0:0] bubble_select_stall_entry_s;
    wire [31:0] bubble_select_stall_entry_t;
    wire [31:0] bubble_select_stall_entry_u;
    wire [511:0] bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_j;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_k;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_l;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_m;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_n;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_o;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_p;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_q;
    wire [393:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [393:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;


    // bubble_join_stall_entry(BITJOIN,42)
    assign bubble_join_stall_entry_q = {in_c0_exe93207, in_c0_exe83196, in_c0_exe73185, in_c0_exe63174, in_c0_exe43153, in_c0_exe33142, in_c0_exe23131, in_c0_exe2220, in_c0_exe2119, in_c0_exe2033118, in_c0_exe1933017, in_c0_exe1832916, in_c0_exe1732815, in_c0_exe1632714, in_c0_exe1532613, in_c0_exe1432512, in_c0_exe1332411, in_c0_exe1232310, in_c0_exe113229, in_c0_exe103218};

    // bubble_select_stall_entry(BITSELECT,43)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[65:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[97:66]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[98:98]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[99:99]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[100:100]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[133:101]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[165:134]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[197:166]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[229:198]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[230:230]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[294:231]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[295:295]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[296:296]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[328:297]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[329:329]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[361:330]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[393:362]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // join_for_coalesced_delay_0(BITJOIN,38)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_c, bubble_select_stall_entry_d, bubble_select_stall_entry_s, bubble_select_stall_entry_q, bubble_select_stall_entry_p, bubble_select_stall_entry_n, bubble_select_stall_entry_g, bubble_select_stall_entry_h, bubble_select_stall_entry_i, bubble_select_stall_entry_e, bubble_select_stall_entry_f, bubble_select_stall_entry_k, bubble_select_stall_entry_b, bubble_select_stall_entry_m, bubble_select_stall_entry_r, bubble_select_stall_entry_t, bubble_select_stall_entry_u, bubble_select_stall_entry_l, bubble_select_stall_entry_j, bubble_select_stall_entry_o};

    // coalesced_delay_0_fifo(STALLFIFO,40)
    assign coalesced_delay_0_fifo_valid_in = SE_stall_entry_V1;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(10),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(394),
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

    // SE_stall_entry(STALLENABLE,52)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (coalesced_delay_0_fifo_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed1 & SE_stall_entry_or0);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,59)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;

    // i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x(BLACKBOX,16)@0
    // in in_i_stall@20000000
    // out out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_address@20000000
    // out out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_burstcount@20000000
    // out out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_byteenable@20000000
    // out out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_enable@20000000
    // out out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_read@20000000
    // out out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_write@20000000
    // out out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_c0_exit250_0_tpl@9
    // out out_c0_exit250_1_tpl@9
    // out out_c0_exit250_2_tpl@9
    // out out_c0_exit250_3_tpl@9
    // out out_c0_exit250_4_tpl@9
    // out out_c0_exit250_5_tpl@9
    // out out_c0_exit250_6_tpl@9
    // out out_c0_exit250_7_tpl@9
    // out out_c0_exit250_8_tpl@9
    // out out_c0_exit250_9_tpl@9
    // out out_c0_exit250_10_tpl@9
    // out out_c0_exit250_11_tpl@9
    // out out_c0_exit250_12_tpl@9
    // out out_c0_exit250_13_tpl@9
    // out out_c0_exit250_14_tpl@9
    // out out_c0_exit250_15_tpl@9
    // out out_c0_exit250_16_tpl@9
    conv2d1x1_i_sfc_s_c0_in_for_cond11_prehe0000_enter232_conv2d1x11 thei_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_readdata(in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_readdata),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_readdatavalid(in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_readdatavalid),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_waitrequest(in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_waitrequest),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writeack(in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writeack),
        .in_c0_eni1231_0_tpl(GND_q),
        .in_c0_eni1231_1_tpl(bubble_select_stall_entry_o),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_address(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_address),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_burstcount(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_burstcount),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_byteenable(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_byteenable),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_enable(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_enable),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_read(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_read),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_write(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_write),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writedata(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_o_valid),
        .out_c0_exit250_0_tpl(),
        .out_c0_exit250_1_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_1_tpl),
        .out_c0_exit250_2_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_2_tpl),
        .out_c0_exit250_3_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_3_tpl),
        .out_c0_exit250_4_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_4_tpl),
        .out_c0_exit250_5_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_5_tpl),
        .out_c0_exit250_6_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_6_tpl),
        .out_c0_exit250_7_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_7_tpl),
        .out_c0_exit250_8_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_8_tpl),
        .out_c0_exit250_9_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_9_tpl),
        .out_c0_exit250_10_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_10_tpl),
        .out_c0_exit250_11_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_11_tpl),
        .out_c0_exit250_12_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_12_tpl),
        .out_c0_exit250_13_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_13_tpl),
        .out_c0_exit250_14_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_14_tpl),
        .out_c0_exit250_15_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_15_tpl),
        .out_c0_exit250_16_tpl(i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_16_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_address = i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_address;
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_enable = i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_enable;
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_read = i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_read;
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_write = i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_write;
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writedata = i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writedata;
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_byteenable = i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_byteenable;
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_burstcount = i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_burstcount;

    // sync_out(GPOUT,13)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,50)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,51)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[393:0]);

    // sel_for_coalesced_delay_0(BITSELECT,39)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[96:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[128:97]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[160:129]);
    assign sel_for_coalesced_delay_0_f = $unsigned(bubble_select_coalesced_delay_0_fifo_b[192:161]);
    assign sel_for_coalesced_delay_0_g = $unsigned(bubble_select_coalesced_delay_0_fifo_b[224:193]);
    assign sel_for_coalesced_delay_0_h = $unsigned(bubble_select_coalesced_delay_0_fifo_b[256:225]);
    assign sel_for_coalesced_delay_0_i = $unsigned(bubble_select_coalesced_delay_0_fifo_b[288:257]);
    assign sel_for_coalesced_delay_0_j = $unsigned(bubble_select_coalesced_delay_0_fifo_b[320:289]);
    assign sel_for_coalesced_delay_0_k = $unsigned(bubble_select_coalesced_delay_0_fifo_b[352:321]);
    assign sel_for_coalesced_delay_0_l = $unsigned(bubble_select_coalesced_delay_0_fifo_b[384:353]);
    assign sel_for_coalesced_delay_0_m = $unsigned(bubble_select_coalesced_delay_0_fifo_b[385:385]);
    assign sel_for_coalesced_delay_0_n = $unsigned(bubble_select_coalesced_delay_0_fifo_b[386:386]);
    assign sel_for_coalesced_delay_0_o = $unsigned(bubble_select_coalesced_delay_0_fifo_b[387:387]);
    assign sel_for_coalesced_delay_0_p = $unsigned(bubble_select_coalesced_delay_0_fifo_b[388:388]);
    assign sel_for_coalesced_delay_0_q = $unsigned(bubble_select_coalesced_delay_0_fifo_b[389:389]);
    assign sel_for_coalesced_delay_0_r = $unsigned(bubble_select_coalesced_delay_0_fifo_b[390:390]);
    assign sel_for_coalesced_delay_0_s = $unsigned(bubble_select_coalesced_delay_0_fifo_b[391:391]);
    assign sel_for_coalesced_delay_0_t = $unsigned(bubble_select_coalesced_delay_0_fifo_b[392:392]);
    assign sel_for_coalesced_delay_0_u = $unsigned(bubble_select_coalesced_delay_0_fifo_b[393:393]);

    // bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x(BITJOIN,46)
    assign bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_q = {i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_16_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_15_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_14_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_13_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_12_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_11_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_10_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_9_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_8_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_7_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_6_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_5_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_4_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_3_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_2_tpl, i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_out_c0_exit250_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x(BITSELECT,47)
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_q[63:32]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_q[95:64]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_q[127:96]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_q[159:128]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_q[191:160]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_q[223:192]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_q[255:224]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_q[287:256]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_q[319:288]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_q[351:320]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_q[383:352]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_q[415:384]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_q[447:416]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_q[479:448]);
    assign bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_q[511:480]);

    // dupName_0_sync_out_x(GPOUT,15)@9
    assign out_c0_exe10260 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_k;
    assign out_c0_exe103218 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe11261 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_l;
    assign out_c0_exe113229 = sel_for_coalesced_delay_0_u;
    assign out_c0_exe12262 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_m;
    assign out_c0_exe1232310 = sel_for_coalesced_delay_0_t;
    assign out_c0_exe1251 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_b;
    assign out_c0_exe13263 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_n;
    assign out_c0_exe1332411 = sel_for_coalesced_delay_0_l;
    assign out_c0_exe14264 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_o;
    assign out_c0_exe1432512 = sel_for_coalesced_delay_0_k;
    assign out_c0_exe15265 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_p;
    assign out_c0_exe1532613 = sel_for_coalesced_delay_0_o;
    assign out_c0_exe16266 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_q;
    assign out_c0_exe1632714 = sel_for_coalesced_delay_0_n;
    assign out_c0_exe1732815 = sel_for_coalesced_delay_0_m;
    assign out_c0_exe1832916 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe1933017 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe2033118 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe2119 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe2220 = sel_for_coalesced_delay_0_p;
    assign out_c0_exe2252 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_c;
    assign out_c0_exe23131 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe3253 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_d;
    assign out_c0_exe33142 = sel_for_coalesced_delay_0_q;
    assign out_c0_exe4254 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_e;
    assign out_c0_exe43153 = sel_for_coalesced_delay_0_r;
    assign out_c0_exe5255 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_f;
    assign out_c0_exe6256 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_g;
    assign out_c0_exe63174 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe7257 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_h;
    assign out_c0_exe73185 = sel_for_coalesced_delay_0_s;
    assign out_c0_exe8258 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_i;
    assign out_c0_exe83196 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe9259 = bubble_select_i_sfc_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter232_conv2d1x11_aunroll_x_j;
    assign out_c0_exe93207 = sel_for_coalesced_delay_0_e;
    assign out_valid_out = SE_out_coalesced_delay_0_fifo_V0;

endmodule
