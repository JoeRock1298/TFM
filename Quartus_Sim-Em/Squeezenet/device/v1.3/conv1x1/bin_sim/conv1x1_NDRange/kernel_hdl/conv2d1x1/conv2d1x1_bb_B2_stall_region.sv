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

// SystemVerilog created from conv2d1x1_bb_B2_stall_region
// SystemVerilog created on Wed May 17 11:22:46 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B2_stall_region (
    input wire [31:0] in_input_size,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_acl_global_id_130,
    input wire [63:0] in_c0_exe12,
    input wire [31:0] in_c0_exe35,
    input wire [63:0] in_c0_exe49,
    input wire [0:0] in_c0_exe512,
    input wire [0:0] in_c0_exe614,
    input wire [0:0] in_c0_exe717,
    input wire [0:0] in_c0_exe821,
    input wire [0:0] in_c0_exe923,
    input wire [31:0] in_j_059,
    input wire [31:0] in_unnamed_conv2d1x12,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_acl_global_id_130,
    output wire [63:0] out_c0_exe12,
    output wire [31:0] out_c0_exe149,
    output wire [31:0] out_c0_exe35,
    output wire [63:0] out_c0_exe49,
    output wire [0:0] out_c0_exe512,
    output wire [0:0] out_c0_exe614,
    output wire [0:0] out_c0_exe717,
    output wire [0:0] out_c0_exe821,
    output wire [0:0] out_c0_exe923,
    output wire [31:0] out_j_059,
    output wire [31:0] out_unnamed_conv2d1x12,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] conv2d1x1_B2_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv2d1x1_B2_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [63:0] conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [63:0] conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [31:0] conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [63:0] conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter4533_conv2d1x11_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter4533_conv2d1x11_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter4533_conv2d1x11_aunroll_x_out_c0_exit48_1_tpl;
    wire [292:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [63:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [31:0] sel_for_coalesced_delay_0_f;
    wire [31:0] sel_for_coalesced_delay_0_g;
    wire [0:0] sel_for_coalesced_delay_0_h;
    wire [0:0] sel_for_coalesced_delay_0_i;
    wire [0:0] sel_for_coalesced_delay_0_j;
    wire [0:0] sel_for_coalesced_delay_0_k;
    wire [0:0] sel_for_coalesced_delay_0_l;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [292:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [292:0] coalesced_delay_0_fifo_data_out;
    wire [292:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [63:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [292:0] bubble_join_conv2d1x1_B2_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_b;
    wire [63:0] bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_d;
    wire [63:0] bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_h;
    wire [0:0] bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_j;
    wire [31:0] bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_k;
    wire [63:0] bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_l;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter4533_conv2d1x11_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter4533_conv2d1x11_aunroll_x_b;
    wire [292:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [292:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_conv2d1x1_B2_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv2d1x1_B2_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_conv2d1x1_B2_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_conv2d1x1_B2_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_conv2d1x1_B2_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_conv2d1x1_B2_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_conv2d1x1_B2_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_conv2d1x1_B2_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_conv2d1x1_B2_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_conv2d1x1_B2_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_conv2d1x1_B2_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv2d1x1_B2_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_conv2d1x1_B2_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;


    // bubble_join_stall_entry(BITJOIN,34)
    assign bubble_join_stall_entry_q = {in_unnamed_conv2d1x12, in_j_059, in_c0_exe923, in_c0_exe821, in_c0_exe717, in_c0_exe614, in_c0_exe512, in_c0_exe49, in_c0_exe35, in_c0_exe12, in_acl_global_id_130};

    // bubble_select_stall_entry(BITSELECT,35)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[127:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[159:128]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[223:160]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[224:224]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[225:225]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[226:226]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[227:227]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[228:228]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[260:229]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[292:261]);

    // bubble_join_conv2d1x1_B2_merge_reg_aunroll_x(BITJOIN,38)
    assign bubble_join_conv2d1x1_B2_merge_reg_aunroll_x_q = {conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_10_tpl, conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_9_tpl, conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_8_tpl, conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_7_tpl, conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_6_tpl, conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_5_tpl, conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_4_tpl, conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_3_tpl, conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_2_tpl, conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_1_tpl, conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv2d1x1_B2_merge_reg_aunroll_x(BITSELECT,39)
    assign bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv2d1x1_B2_merge_reg_aunroll_x_q[31:0]);
    assign bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv2d1x1_B2_merge_reg_aunroll_x_q[95:32]);
    assign bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv2d1x1_B2_merge_reg_aunroll_x_q[127:96]);
    assign bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv2d1x1_B2_merge_reg_aunroll_x_q[191:128]);
    assign bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_f = $unsigned(bubble_join_conv2d1x1_B2_merge_reg_aunroll_x_q[192:192]);
    assign bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_g = $unsigned(bubble_join_conv2d1x1_B2_merge_reg_aunroll_x_q[193:193]);
    assign bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_h = $unsigned(bubble_join_conv2d1x1_B2_merge_reg_aunroll_x_q[194:194]);
    assign bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_i = $unsigned(bubble_join_conv2d1x1_B2_merge_reg_aunroll_x_q[195:195]);
    assign bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_j = $unsigned(bubble_join_conv2d1x1_B2_merge_reg_aunroll_x_q[196:196]);
    assign bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_k = $unsigned(bubble_join_conv2d1x1_B2_merge_reg_aunroll_x_q[228:197]);
    assign bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_l = $unsigned(bubble_join_conv2d1x1_B2_merge_reg_aunroll_x_q[292:229]);

    // join_for_coalesced_delay_0(BITJOIN,30)
    assign join_for_coalesced_delay_0_q = {bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_j, bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_i, bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_h, bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_g, bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_f, bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_k, bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_d, bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_b, bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_l, bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_e, bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_c};

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,56)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter4533_conv2d1x11_aunroll_x_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;

    // coalesced_delay_0_fifo(STALLFIFO,32)
    assign coalesced_delay_0_fifo_valid_in = SE_out_conv2d1x1_B2_merge_reg_aunroll_x_V1;
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
        .DATA_WIDTH(293),
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

    // i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter4533_conv2d1x11_aunroll_x(BLACKBOX,17)@1
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_c0_exit48_0_tpl@9
    // out out_c0_exit48_1_tpl@9
    conv2d1x1_i_sfc_s_c0_in_for_body_s_c0_enter4533_conv2d1x11 thei_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter4533_conv2d1x11_aunroll_x (
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_conv2d1x1_B2_merge_reg_aunroll_x_V0),
        .in_input_size(in_input_size),
        .in_c0_eni2_0_tpl(GND_q),
        .in_c0_eni2_1_tpl(bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_l),
        .in_c0_eni2_2_tpl(bubble_select_conv2d1x1_B2_merge_reg_aunroll_x_b),
        .out_o_stall(i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter4533_conv2d1x11_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter4533_conv2d1x11_aunroll_x_out_o_valid),
        .out_c0_exit48_0_tpl(),
        .out_c0_exit48_1_tpl(i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter4533_conv2d1x11_aunroll_x_out_c0_exit48_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_conv2d1x1_B2_merge_reg_aunroll_x(STALLENABLE,50)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_conv2d1x1_B2_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_conv2d1x1_B2_merge_reg_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_conv2d1x1_B2_merge_reg_aunroll_x_fromReg0 <= SE_out_conv2d1x1_B2_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_conv2d1x1_B2_merge_reg_aunroll_x_fromReg1 <= SE_out_conv2d1x1_B2_merge_reg_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_conv2d1x1_B2_merge_reg_aunroll_x_consumed0 = (~ (i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter4533_conv2d1x11_aunroll_x_out_o_stall) & SE_out_conv2d1x1_B2_merge_reg_aunroll_x_wireValid) | SE_out_conv2d1x1_B2_merge_reg_aunroll_x_fromReg0;
    assign SE_out_conv2d1x1_B2_merge_reg_aunroll_x_consumed1 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_conv2d1x1_B2_merge_reg_aunroll_x_wireValid) | SE_out_conv2d1x1_B2_merge_reg_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_conv2d1x1_B2_merge_reg_aunroll_x_StallValid = SE_out_conv2d1x1_B2_merge_reg_aunroll_x_backStall & SE_out_conv2d1x1_B2_merge_reg_aunroll_x_wireValid;
    assign SE_out_conv2d1x1_B2_merge_reg_aunroll_x_toReg0 = SE_out_conv2d1x1_B2_merge_reg_aunroll_x_StallValid & SE_out_conv2d1x1_B2_merge_reg_aunroll_x_consumed0;
    assign SE_out_conv2d1x1_B2_merge_reg_aunroll_x_toReg1 = SE_out_conv2d1x1_B2_merge_reg_aunroll_x_StallValid & SE_out_conv2d1x1_B2_merge_reg_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_conv2d1x1_B2_merge_reg_aunroll_x_or0 = SE_out_conv2d1x1_B2_merge_reg_aunroll_x_consumed0;
    assign SE_out_conv2d1x1_B2_merge_reg_aunroll_x_wireStall = ~ (SE_out_conv2d1x1_B2_merge_reg_aunroll_x_consumed1 & SE_out_conv2d1x1_B2_merge_reg_aunroll_x_or0);
    assign SE_out_conv2d1x1_B2_merge_reg_aunroll_x_backStall = SE_out_conv2d1x1_B2_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_conv2d1x1_B2_merge_reg_aunroll_x_V0 = SE_out_conv2d1x1_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv2d1x1_B2_merge_reg_aunroll_x_fromReg0);
    assign SE_out_conv2d1x1_B2_merge_reg_aunroll_x_V1 = SE_out_conv2d1x1_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv2d1x1_B2_merge_reg_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_conv2d1x1_B2_merge_reg_aunroll_x_wireValid = conv2d1x1_B2_merge_reg_aunroll_x_out_valid_out;

    // conv2d1x1_B2_merge_reg_aunroll_x(BLACKBOX,15)@0
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
    conv2d1x1_B2_merge_reg theconv2d1x1_B2_merge_reg_aunroll_x (
        .in_stall_in(SE_out_conv2d1x1_B2_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_k),
        .in_data_in_1_tpl(bubble_select_stall_entry_c),
        .in_data_in_2_tpl(bubble_select_stall_entry_d),
        .in_data_in_3_tpl(bubble_select_stall_entry_e),
        .in_data_in_4_tpl(bubble_select_stall_entry_f),
        .in_data_in_5_tpl(bubble_select_stall_entry_g),
        .in_data_in_6_tpl(bubble_select_stall_entry_h),
        .in_data_in_7_tpl(bubble_select_stall_entry_i),
        .in_data_in_8_tpl(bubble_select_stall_entry_j),
        .in_data_in_9_tpl(bubble_select_stall_entry_l),
        .in_data_in_10_tpl(bubble_select_stall_entry_b),
        .out_stall_out(conv2d1x1_B2_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv2d1x1_B2_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(conv2d1x1_B2_merge_reg_aunroll_x_out_data_out_10_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,47)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv2d1x1_B2_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,13)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter4533_conv2d1x11_aunroll_x(BITJOIN,41)
    assign bubble_join_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter4533_conv2d1x11_aunroll_x_q = i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter4533_conv2d1x11_aunroll_x_out_c0_exit48_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter4533_conv2d1x11_aunroll_x(BITSELECT,42)
    assign bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter4533_conv2d1x11_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter4533_conv2d1x11_aunroll_x_q[31:0]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,45)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,46)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[292:0]);

    // sel_for_coalesced_delay_0(BITSELECT,31)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[191:128]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[223:192]);
    assign sel_for_coalesced_delay_0_f = $unsigned(bubble_select_coalesced_delay_0_fifo_b[255:224]);
    assign sel_for_coalesced_delay_0_g = $unsigned(bubble_select_coalesced_delay_0_fifo_b[287:256]);
    assign sel_for_coalesced_delay_0_h = $unsigned(bubble_select_coalesced_delay_0_fifo_b[288:288]);
    assign sel_for_coalesced_delay_0_i = $unsigned(bubble_select_coalesced_delay_0_fifo_b[289:289]);
    assign sel_for_coalesced_delay_0_j = $unsigned(bubble_select_coalesced_delay_0_fifo_b[290:290]);
    assign sel_for_coalesced_delay_0_k = $unsigned(bubble_select_coalesced_delay_0_fifo_b[291:291]);
    assign sel_for_coalesced_delay_0_l = $unsigned(bubble_select_coalesced_delay_0_fifo_b[292:292]);

    // dupName_0_sync_out_x(GPOUT,16)@9
    assign out_acl_global_id_130 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe12 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe149 = bubble_select_i_sfc_s_c0_in_for_body_conv2d1x1s_c0_enter4533_conv2d1x11_aunroll_x_b;
    assign out_c0_exe35 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe49 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe512 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe614 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe717 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe821 = sel_for_coalesced_delay_0_k;
    assign out_c0_exe923 = sel_for_coalesced_delay_0_l;
    assign out_j_059 = sel_for_coalesced_delay_0_e;
    assign out_unnamed_conv2d1x12 = sel_for_coalesced_delay_0_g;
    assign out_valid_out = SE_out_coalesced_delay_0_fifo_V0;

endmodule
