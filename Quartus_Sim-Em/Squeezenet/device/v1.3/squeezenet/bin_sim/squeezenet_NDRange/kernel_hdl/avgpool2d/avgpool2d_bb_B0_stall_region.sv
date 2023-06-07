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

// SystemVerilog created from avgpool2d_bb_B0_stall_region
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpool2d_bb_B0_stall_region (
    input wire [63:0] in_input_im,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_acl_global_id_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe1,
    output wire [63:0] out_c0_exe2,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] avgpool2d_B0_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] avgpool2d_B0_merge_reg_aunroll_x_out_valid_out;
    wire [63:0] avgpool2d_B0_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_out_c0_exit_1_tpl;
    wire [63:0] i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_out_c0_exit_2_tpl;
    wire [63:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_join_avgpool2d_B0_merge_reg_aunroll_x_q;
    wire [63:0] bubble_select_avgpool2d_B0_merge_reg_aunroll_x_b;
    wire [95:0] bubble_join_i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_c;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_avgpool2d_B0_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_avgpool2d_B0_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_avgpool2d_B0_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,19)
    assign bubble_join_stall_entry_q = in_acl_global_id_0;

    // bubble_select_stall_entry(BITSELECT,20)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);

    // bubble_join_avgpool2d_B0_merge_reg_aunroll_x(BITJOIN,23)
    assign bubble_join_avgpool2d_B0_merge_reg_aunroll_x_q = avgpool2d_B0_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_avgpool2d_B0_merge_reg_aunroll_x(BITSELECT,24)
    assign bubble_select_avgpool2d_B0_merge_reg_aunroll_x_b = $unsigned(bubble_join_avgpool2d_B0_merge_reg_aunroll_x_q[63:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x(STALLENABLE,34)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_wireValid = i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x(BLACKBOX,17)@1
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_c0_exit_0_tpl@5
    // out out_c0_exit_1_tpl@5
    // out out_c0_exit_2_tpl@5
    avgpool2d_i_sfc_s_c0_in_entry_s_c0_enter_avgpool2d1 thei_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_backStall),
        .in_i_valid(SE_out_avgpool2d_B0_merge_reg_aunroll_x_V0),
        .in_input_im(in_input_im),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_avgpool2d_B0_merge_reg_aunroll_x_b),
        .out_o_stall(i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_out_o_valid),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_out_c0_exit_1_tpl),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_out_c0_exit_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_avgpool2d_B0_merge_reg_aunroll_x(STALLENABLE,32)
    // Valid signal propagation
    assign SE_out_avgpool2d_B0_merge_reg_aunroll_x_V0 = SE_out_avgpool2d_B0_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_avgpool2d_B0_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_out_o_stall | ~ (SE_out_avgpool2d_B0_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_avgpool2d_B0_merge_reg_aunroll_x_wireValid = avgpool2d_B0_merge_reg_aunroll_x_out_valid_out;

    // avgpool2d_B0_merge_reg_aunroll_x(BLACKBOX,15)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    avgpool2d_B0_merge_reg theavgpool2d_B0_merge_reg_aunroll_x (
        .in_stall_in(SE_out_avgpool2d_B0_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(avgpool2d_B0_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(avgpool2d_B0_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(avgpool2d_B0_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,29)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = avgpool2d_B0_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,13)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x(BITJOIN,26)
    assign bubble_join_i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_q = {i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_out_c0_exit_2_tpl, i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_out_c0_exit_1_tpl};

    // bubble_select_i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x(BITSELECT,27)
    assign bubble_select_i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_q[95:32]);

    // dupName_0_sync_out_x(GPOUT,16)@5
    assign out_c0_exe1 = bubble_select_i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_b;
    assign out_c0_exe2 = bubble_select_i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_c;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_entry_avgpool2ds_c0_enter_avgpool2d1_aunroll_x_V0;

endmodule
