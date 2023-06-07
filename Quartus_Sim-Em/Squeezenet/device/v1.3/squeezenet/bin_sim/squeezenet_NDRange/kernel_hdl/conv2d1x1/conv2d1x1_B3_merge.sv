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

// SystemVerilog created from conv2d1x1_B3_merge
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B3_merge (
    input wire [63:0] in_acl_global_id_131_0,
    input wire [63:0] in_c0_exe13_0,
    input wire [31:0] in_c0_exe14928_0,
    input wire [31:0] in_c0_exe36_0,
    input wire [63:0] in_c0_exe47_0,
    input wire [0:0] in_c0_exe510_0,
    input wire [0:0] in_c0_exe615_0,
    input wire [0:0] in_c0_exe718_0,
    input wire [0:0] in_c0_exe819_0,
    input wire [0:0] in_c0_exe924_0,
    input wire [31:0] in_c1_exe129_0,
    input wire [31:0] in_j_05925_0,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_conv2d1x13_0,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_acl_global_id_131,
    output wire [63:0] out_c0_exe13,
    output wire [31:0] out_c0_exe14928,
    output wire [31:0] out_c0_exe36,
    output wire [63:0] out_c0_exe47,
    output wire [0:0] out_c0_exe510,
    output wire [0:0] out_c0_exe615,
    output wire [0:0] out_c0_exe718,
    output wire [0:0] out_c0_exe819,
    output wire [0:0] out_c0_exe924,
    output wire [31:0] out_c1_exe129,
    output wire [31:0] out_j_05925,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_conv2d1x13,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_acl_global_id_131(GPOUT,17)
    assign out_acl_global_id_131 = in_acl_global_id_131_0;

    // out_c0_exe13(GPOUT,18)
    assign out_c0_exe13 = in_c0_exe13_0;

    // out_c0_exe14928(GPOUT,19)
    assign out_c0_exe14928 = in_c0_exe14928_0;

    // out_c0_exe36(GPOUT,20)
    assign out_c0_exe36 = in_c0_exe36_0;

    // out_c0_exe47(GPOUT,21)
    assign out_c0_exe47 = in_c0_exe47_0;

    // out_c0_exe510(GPOUT,22)
    assign out_c0_exe510 = in_c0_exe510_0;

    // out_c0_exe615(GPOUT,23)
    assign out_c0_exe615 = in_c0_exe615_0;

    // out_c0_exe718(GPOUT,24)
    assign out_c0_exe718 = in_c0_exe718_0;

    // out_c0_exe819(GPOUT,25)
    assign out_c0_exe819 = in_c0_exe819_0;

    // out_c0_exe924(GPOUT,26)
    assign out_c0_exe924 = in_c0_exe924_0;

    // out_c1_exe129(GPOUT,27)
    assign out_c1_exe129 = in_c1_exe129_0;

    // out_j_05925(GPOUT,28)
    assign out_j_05925 = in_j_05925_0;

    // stall_out(LOGICAL,32)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,29)
    assign out_stall_out_0 = stall_out_q;

    // out_unnamed_conv2d1x13(GPOUT,30)
    assign out_unnamed_conv2d1x13 = in_unnamed_conv2d1x13_0;

    // out_valid_out(GPOUT,31)
    assign out_valid_out = in_valid_in_0;

endmodule
