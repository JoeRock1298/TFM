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

// SystemVerilog created from conv2d1x1_B2_branch
// SystemVerilog created on Wed May 24 18:10:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B2_branch (
    input wire [63:0] in_acl_global_id_134,
    input wire [31:0] in_c0_exe149,
    input wire [63:0] in_c0_exe16,
    input wire [63:0] in_c0_exe29,
    input wire [31:0] in_c0_exe412,
    input wire [63:0] in_c0_exe516,
    input wire [0:0] in_c0_exe619,
    input wire [0:0] in_c0_exe721,
    input wire [0:0] in_c0_exe824,
    input wire [0:0] in_c0_exe928,
    input wire [31:0] in_j_070,
    input wire [31:0] in_l_grpid_02,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_conv2d1x13,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_acl_global_id_134,
    output wire [31:0] out_c0_exe149,
    output wire [63:0] out_c0_exe16,
    output wire [63:0] out_c0_exe29,
    output wire [31:0] out_c0_exe412,
    output wire [63:0] out_c0_exe516,
    output wire [0:0] out_c0_exe619,
    output wire [0:0] out_c0_exe721,
    output wire [0:0] out_c0_exe824,
    output wire [0:0] out_c0_exe928,
    output wire [31:0] out_j_070,
    output wire [31:0] out_l_grpid_02,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_conv2d1x13,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_acl_global_id_134(GPOUT,17)
    assign out_acl_global_id_134 = in_acl_global_id_134;

    // out_c0_exe149(GPOUT,18)
    assign out_c0_exe149 = in_c0_exe149;

    // out_c0_exe16(GPOUT,19)
    assign out_c0_exe16 = in_c0_exe16;

    // out_c0_exe29(GPOUT,20)
    assign out_c0_exe29 = in_c0_exe29;

    // out_c0_exe412(GPOUT,21)
    assign out_c0_exe412 = in_c0_exe412;

    // out_c0_exe516(GPOUT,22)
    assign out_c0_exe516 = in_c0_exe516;

    // out_c0_exe619(GPOUT,23)
    assign out_c0_exe619 = in_c0_exe619;

    // out_c0_exe721(GPOUT,24)
    assign out_c0_exe721 = in_c0_exe721;

    // out_c0_exe824(GPOUT,25)
    assign out_c0_exe824 = in_c0_exe824;

    // out_c0_exe928(GPOUT,26)
    assign out_c0_exe928 = in_c0_exe928;

    // out_j_070(GPOUT,27)
    assign out_j_070 = in_j_070;

    // out_l_grpid_02(GPOUT,28)
    assign out_l_grpid_02 = in_l_grpid_02;

    // stall_out(LOGICAL,32)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,29)
    assign out_stall_out = stall_out_q;

    // out_unnamed_conv2d1x13(GPOUT,30)
    assign out_unnamed_conv2d1x13 = in_unnamed_conv2d1x13;

    // out_valid_out_0(GPOUT,31)
    assign out_valid_out_0 = in_valid_in;

endmodule
