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
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B2_branch (
    input wire [63:0] in_acl_global_id_130,
    input wire [63:0] in_c0_exe12,
    input wire [31:0] in_c0_exe149,
    input wire [31:0] in_c0_exe35,
    input wire [63:0] in_c0_exe49,
    input wire [0:0] in_c0_exe512,
    input wire [0:0] in_c0_exe614,
    input wire [0:0] in_c0_exe717,
    input wire [0:0] in_c0_exe821,
    input wire [0:0] in_c0_exe923,
    input wire [31:0] in_j_059,
    input wire [0:0] in_stall_in_0,
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
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_conv2d1x12,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_acl_global_id_130(GPOUT,16)
    assign out_acl_global_id_130 = in_acl_global_id_130;

    // out_c0_exe12(GPOUT,17)
    assign out_c0_exe12 = in_c0_exe12;

    // out_c0_exe149(GPOUT,18)
    assign out_c0_exe149 = in_c0_exe149;

    // out_c0_exe35(GPOUT,19)
    assign out_c0_exe35 = in_c0_exe35;

    // out_c0_exe49(GPOUT,20)
    assign out_c0_exe49 = in_c0_exe49;

    // out_c0_exe512(GPOUT,21)
    assign out_c0_exe512 = in_c0_exe512;

    // out_c0_exe614(GPOUT,22)
    assign out_c0_exe614 = in_c0_exe614;

    // out_c0_exe717(GPOUT,23)
    assign out_c0_exe717 = in_c0_exe717;

    // out_c0_exe821(GPOUT,24)
    assign out_c0_exe821 = in_c0_exe821;

    // out_c0_exe923(GPOUT,25)
    assign out_c0_exe923 = in_c0_exe923;

    // out_j_059(GPOUT,26)
    assign out_j_059 = in_j_059;

    // stall_out(LOGICAL,30)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,27)
    assign out_stall_out = stall_out_q;

    // out_unnamed_conv2d1x12(GPOUT,28)
    assign out_unnamed_conv2d1x12 = in_unnamed_conv2d1x12;

    // out_valid_out_0(GPOUT,29)
    assign out_valid_out_0 = in_valid_in;

endmodule
