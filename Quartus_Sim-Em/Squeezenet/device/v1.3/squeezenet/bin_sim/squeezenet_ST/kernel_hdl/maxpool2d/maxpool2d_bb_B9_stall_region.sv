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

// SystemVerilog created from maxpool2d_bb_B9_stall_region
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_bb_B9_stall_region (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe103408,
    input wire [31:0] in_c0_exe1134110,
    input wire [0:0] in_c0_exe1234213,
    input wire [0:0] in_c0_exe1334315,
    input wire [31:0] in_c0_exe1434417,
    input wire [0:0] in_c0_exe1534518,
    input wire [0:0] in_c0_exe53352,
    input wire [63:0] in_c0_exe93394,
    input wire [31:0] in_c1_exe120,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe103408,
    output wire [31:0] out_c0_exe1134110,
    output wire [0:0] out_c0_exe1234213,
    output wire [0:0] out_c0_exe1334315,
    output wire [31:0] out_c0_exe1434417,
    output wire [0:0] out_c0_exe1534518,
    output wire [0:0] out_c0_exe53352,
    output wire [63:0] out_c0_exe93394,
    output wire [31:0] out_c1_exe120,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [164:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [63:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;


    // SE_stall_entry(STALLENABLE,13)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = in_stall_in | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,7)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_stall_entry(BITJOIN,11)
    assign bubble_join_stall_entry_q = {in_c1_exe120, in_c0_exe93394, in_c0_exe53352, in_c0_exe1534518, in_c0_exe1434417, in_c0_exe1334315, in_c0_exe1234213, in_c0_exe1134110, in_c0_exe103408};

    // bubble_select_stall_entry(BITSELECT,12)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[66:35]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[67:67]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[68:68]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[132:69]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[164:133]);

    // dupName_0_sync_out_x(GPOUT,9)@0
    assign out_c0_exe103408 = bubble_select_stall_entry_b;
    assign out_c0_exe1134110 = bubble_select_stall_entry_c;
    assign out_c0_exe1234213 = bubble_select_stall_entry_d;
    assign out_c0_exe1334315 = bubble_select_stall_entry_e;
    assign out_c0_exe1434417 = bubble_select_stall_entry_f;
    assign out_c0_exe1534518 = bubble_select_stall_entry_g;
    assign out_c0_exe53352 = bubble_select_stall_entry_h;
    assign out_c0_exe93394 = bubble_select_stall_entry_i;
    assign out_c1_exe120 = bubble_select_stall_entry_j;
    assign out_valid_out = SE_stall_entry_V0;

endmodule
