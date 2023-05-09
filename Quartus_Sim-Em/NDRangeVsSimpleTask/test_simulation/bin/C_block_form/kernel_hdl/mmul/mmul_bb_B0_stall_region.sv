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

// SystemVerilog created from mmul_bb_B0_stall_region
// SystemVerilog created on Sat May  6 18:14:24 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_bb_B0_stall_region (
    input wire [31:0] in_N,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_acl_global_id_0,
    input wire [63:0] in_acl_global_id_1,
    input wire [31:0] in_acl_group_id_0,
    input wire [31:0] in_acl_group_id_1,
    input wire [31:0] in_acl_local_id_0,
    input wire [31:0] in_acl_local_id_1,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_acl_global_id_0,
    output wire [63:0] out_acl_global_id_1,
    output wire [31:0] out_acl_local_id_0,
    output wire [31:0] out_c0_exe1,
    output wire [31:0] out_c0_exe2,
    output wire [0:0] out_c0_exe3,
    output wire [31:0] out_c0_exe4,
    output wire [31:0] out_c0_exe5,
    output wire [31:0] out_c0_exe6,
    output wire [63:0] out_c0_exe7,
    output wire [63:0] out_c0_exe8,
    output wire [63:0] out_c0_exe9,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_c0_exit_1_tpl;
    wire [31:0] i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_c0_exit_3_tpl;
    wire [31:0] i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_c0_exit_4_tpl;
    wire [31:0] i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_c0_exit_5_tpl;
    wire [31:0] i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_c0_exit_6_tpl;
    wire [63:0] i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_c0_exit_7_tpl;
    wire [63:0] i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_c0_exit_8_tpl;
    wire [63:0] i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_c0_exit_9_tpl;
    wire [0:0] mmul_B0_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] mmul_B0_merge_reg_aunroll_x_out_valid_out;
    wire [63:0] mmul_B0_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [63:0] mmul_B0_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] mmul_B0_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] mmul_B0_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] mmul_B0_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] mmul_B0_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [159:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [159:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [159:0] coalesced_delay_0_fifo_data_out;
    wire [255:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [352:0] bubble_join_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_g;
    wire [63:0] bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_h;
    wire [63:0] bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_i;
    wire [63:0] bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_j;
    wire [255:0] bubble_join_mmul_B0_merge_reg_aunroll_x_q;
    wire [63:0] bubble_select_mmul_B0_merge_reg_aunroll_x_b;
    wire [63:0] bubble_select_mmul_B0_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_mmul_B0_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_mmul_B0_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_mmul_B0_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_mmul_B0_merge_reg_aunroll_x_g;
    wire [159:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [159:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_mmul_B0_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_mmul_B0_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_mmul_B0_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_mmul_B0_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_mmul_B0_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_mmul_B0_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_mmul_B0_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_mmul_B0_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_mmul_B0_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_mmul_B0_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_mmul_B0_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_mmul_B0_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_mmul_B0_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;


    // bubble_join_stall_entry(BITJOIN,26)
    assign bubble_join_stall_entry_q = {in_acl_local_id_1, in_acl_local_id_0, in_acl_group_id_1, in_acl_group_id_0, in_acl_global_id_1, in_acl_global_id_0};

    // bubble_select_stall_entry(BITSELECT,27)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[127:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[159:128]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[191:160]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[223:192]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[255:224]);

    // bubble_join_mmul_B0_merge_reg_aunroll_x(BITJOIN,34)
    assign bubble_join_mmul_B0_merge_reg_aunroll_x_q = {mmul_B0_merge_reg_aunroll_x_out_data_out_5_tpl, mmul_B0_merge_reg_aunroll_x_out_data_out_4_tpl, mmul_B0_merge_reg_aunroll_x_out_data_out_3_tpl, mmul_B0_merge_reg_aunroll_x_out_data_out_2_tpl, mmul_B0_merge_reg_aunroll_x_out_data_out_1_tpl, mmul_B0_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_mmul_B0_merge_reg_aunroll_x(BITSELECT,35)
    assign bubble_select_mmul_B0_merge_reg_aunroll_x_b = $unsigned(bubble_join_mmul_B0_merge_reg_aunroll_x_q[63:0]);
    assign bubble_select_mmul_B0_merge_reg_aunroll_x_c = $unsigned(bubble_join_mmul_B0_merge_reg_aunroll_x_q[127:64]);
    assign bubble_select_mmul_B0_merge_reg_aunroll_x_d = $unsigned(bubble_join_mmul_B0_merge_reg_aunroll_x_q[159:128]);
    assign bubble_select_mmul_B0_merge_reg_aunroll_x_e = $unsigned(bubble_join_mmul_B0_merge_reg_aunroll_x_q[191:160]);
    assign bubble_select_mmul_B0_merge_reg_aunroll_x_f = $unsigned(bubble_join_mmul_B0_merge_reg_aunroll_x_q[223:192]);
    assign bubble_select_mmul_B0_merge_reg_aunroll_x_g = $unsigned(bubble_join_mmul_B0_merge_reg_aunroll_x_q[255:224]);

    // join_for_coalesced_delay_0(BITJOIN,22)
    assign join_for_coalesced_delay_0_q = {bubble_select_mmul_B0_merge_reg_aunroll_x_d, bubble_select_mmul_B0_merge_reg_aunroll_x_c, bubble_select_mmul_B0_merge_reg_aunroll_x_b};

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,48)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;

    // coalesced_delay_0_fifo(STALLFIFO,24)
    assign coalesced_delay_0_fifo_valid_in = SE_out_mmul_B0_merge_reg_aunroll_x_V1;
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
        .DATA_WIDTH(160),
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

    // i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x(BLACKBOX,16)@1
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_c0_exit_0_tpl@9
    // out out_c0_exit_1_tpl@9
    // out out_c0_exit_2_tpl@9
    // out out_c0_exit_3_tpl@9
    // out out_c0_exit_4_tpl@9
    // out out_c0_exit_5_tpl@9
    // out out_c0_exit_6_tpl@9
    // out out_c0_exit_7_tpl@9
    // out out_c0_exit_8_tpl@9
    // out out_c0_exit_9_tpl@9
    mmul_i_sfc_s_c0_in_entry_s_c0_enter_mmul1 thei_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x (
        .in_N(in_N),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_mmul_B0_merge_reg_aunroll_x_V0),
        .in_c0_eni4_0_tpl(GND_q),
        .in_c0_eni4_1_tpl(bubble_select_mmul_B0_merge_reg_aunroll_x_f),
        .in_c0_eni4_2_tpl(bubble_select_mmul_B0_merge_reg_aunroll_x_g),
        .in_c0_eni4_3_tpl(bubble_select_mmul_B0_merge_reg_aunroll_x_e),
        .in_c0_eni4_4_tpl(bubble_select_mmul_B0_merge_reg_aunroll_x_d),
        .out_o_stall(i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_o_valid),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_c0_exit_1_tpl),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_c0_exit_2_tpl),
        .out_c0_exit_3_tpl(i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_c0_exit_3_tpl),
        .out_c0_exit_4_tpl(i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_c0_exit_4_tpl),
        .out_c0_exit_5_tpl(i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_c0_exit_5_tpl),
        .out_c0_exit_6_tpl(i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_c0_exit_6_tpl),
        .out_c0_exit_7_tpl(i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_c0_exit_7_tpl),
        .out_c0_exit_8_tpl(i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_c0_exit_8_tpl),
        .out_c0_exit_9_tpl(i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_c0_exit_9_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_mmul_B0_merge_reg_aunroll_x(STALLENABLE,44)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_mmul_B0_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_mmul_B0_merge_reg_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_mmul_B0_merge_reg_aunroll_x_fromReg0 <= SE_out_mmul_B0_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_mmul_B0_merge_reg_aunroll_x_fromReg1 <= SE_out_mmul_B0_merge_reg_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_mmul_B0_merge_reg_aunroll_x_consumed0 = (~ (i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_o_stall) & SE_out_mmul_B0_merge_reg_aunroll_x_wireValid) | SE_out_mmul_B0_merge_reg_aunroll_x_fromReg0;
    assign SE_out_mmul_B0_merge_reg_aunroll_x_consumed1 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_mmul_B0_merge_reg_aunroll_x_wireValid) | SE_out_mmul_B0_merge_reg_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_mmul_B0_merge_reg_aunroll_x_StallValid = SE_out_mmul_B0_merge_reg_aunroll_x_backStall & SE_out_mmul_B0_merge_reg_aunroll_x_wireValid;
    assign SE_out_mmul_B0_merge_reg_aunroll_x_toReg0 = SE_out_mmul_B0_merge_reg_aunroll_x_StallValid & SE_out_mmul_B0_merge_reg_aunroll_x_consumed0;
    assign SE_out_mmul_B0_merge_reg_aunroll_x_toReg1 = SE_out_mmul_B0_merge_reg_aunroll_x_StallValid & SE_out_mmul_B0_merge_reg_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_mmul_B0_merge_reg_aunroll_x_or0 = SE_out_mmul_B0_merge_reg_aunroll_x_consumed0;
    assign SE_out_mmul_B0_merge_reg_aunroll_x_wireStall = ~ (SE_out_mmul_B0_merge_reg_aunroll_x_consumed1 & SE_out_mmul_B0_merge_reg_aunroll_x_or0);
    assign SE_out_mmul_B0_merge_reg_aunroll_x_backStall = SE_out_mmul_B0_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_mmul_B0_merge_reg_aunroll_x_V0 = SE_out_mmul_B0_merge_reg_aunroll_x_wireValid & ~ (SE_out_mmul_B0_merge_reg_aunroll_x_fromReg0);
    assign SE_out_mmul_B0_merge_reg_aunroll_x_V1 = SE_out_mmul_B0_merge_reg_aunroll_x_wireValid & ~ (SE_out_mmul_B0_merge_reg_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_mmul_B0_merge_reg_aunroll_x_wireValid = mmul_B0_merge_reg_aunroll_x_out_valid_out;

    // mmul_B0_merge_reg_aunroll_x(BLACKBOX,17)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    mmul_B0_merge_reg themmul_B0_merge_reg_aunroll_x (
        .in_stall_in(SE_out_mmul_B0_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_c),
        .in_data_in_2_tpl(bubble_select_stall_entry_f),
        .in_data_in_3_tpl(bubble_select_stall_entry_g),
        .in_data_in_4_tpl(bubble_select_stall_entry_d),
        .in_data_in_5_tpl(bubble_select_stall_entry_e),
        .out_stall_out(mmul_B0_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(mmul_B0_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(mmul_B0_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(mmul_B0_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(mmul_B0_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(mmul_B0_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(mmul_B0_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(mmul_B0_merge_reg_aunroll_x_out_data_out_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,39)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = mmul_B0_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,13)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x(BITJOIN,30)
    assign bubble_join_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_q = {i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_c0_exit_9_tpl, i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_c0_exit_8_tpl, i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_c0_exit_7_tpl, i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_c0_exit_6_tpl, i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_c0_exit_5_tpl, i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_c0_exit_4_tpl, i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_c0_exit_3_tpl, i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_c0_exit_2_tpl, i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_out_c0_exit_1_tpl};

    // bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x(BITSELECT,31)
    assign bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_q[63:32]);
    assign bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_q[64:64]);
    assign bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_q[96:65]);
    assign bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_q[128:97]);
    assign bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_q[160:129]);
    assign bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_q[224:161]);
    assign bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_q[288:225]);
    assign bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_q[352:289]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,37)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,38)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[159:0]);

    // sel_for_coalesced_delay_0(BITSELECT,23)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[159:128]);

    // dupName_0_sync_out_x(GPOUT,15)@9
    assign out_acl_global_id_0 = sel_for_coalesced_delay_0_b;
    assign out_acl_global_id_1 = sel_for_coalesced_delay_0_c;
    assign out_acl_local_id_0 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe1 = bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_b;
    assign out_c0_exe2 = bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_c;
    assign out_c0_exe3 = bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_d;
    assign out_c0_exe4 = bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_e;
    assign out_c0_exe5 = bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_f;
    assign out_c0_exe6 = bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_g;
    assign out_c0_exe7 = bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_h;
    assign out_c0_exe8 = bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_i;
    assign out_c0_exe9 = bubble_select_i_sfc_s_c0_in_entry_mmuls_c0_enter_mmul1_aunroll_x_j;
    assign out_valid_out = SE_out_coalesced_delay_0_fifo_V0;

endmodule
