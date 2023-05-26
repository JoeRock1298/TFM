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

// SystemVerilog created from conv2d1x1_B4_merge
// SystemVerilog created on Wed May 24 18:10:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B4_merge (
    input wire [63:0] in_acl_global_id_135_0,
    input wire [31:0] in_c0_exe14931_0,
    input wire [63:0] in_c0_exe17_0,
    input wire [63:0] in_c0_exe210_0,
    input wire [31:0] in_c0_exe413_0,
    input wire [63:0] in_c0_exe514_0,
    input wire [0:0] in_c0_exe617_0,
    input wire [0:0] in_c0_exe722_0,
    input wire [0:0] in_c0_exe825_0,
    input wire [0:0] in_c0_exe926_0,
    input wire [31:0] in_c1_exe133_0,
    input wire [31:0] in_j_07029_0,
    input wire [31:0] in_l_grpid_03_0,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_conv2d1x15_0,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_acl_global_id_135,
    output wire [31:0] out_c0_exe14931,
    output wire [63:0] out_c0_exe17,
    output wire [63:0] out_c0_exe210,
    output wire [31:0] out_c0_exe413,
    output wire [63:0] out_c0_exe514,
    output wire [0:0] out_c0_exe617,
    output wire [0:0] out_c0_exe722,
    output wire [0:0] out_c0_exe825,
    output wire [0:0] out_c0_exe926,
    output wire [31:0] out_c1_exe133,
    output wire [31:0] out_j_07029,
    output wire [31:0] out_l_grpid_03,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_conv2d1x15,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_acl_global_id_135(GPOUT,18)
    assign out_acl_global_id_135 = in_acl_global_id_135_0;

    // out_c0_exe14931(GPOUT,19)
    assign out_c0_exe14931 = in_c0_exe14931_0;

    // out_c0_exe17(GPOUT,20)
    assign out_c0_exe17 = in_c0_exe17_0;

    // out_c0_exe210(GPOUT,21)
    assign out_c0_exe210 = in_c0_exe210_0;

    // out_c0_exe413(GPOUT,22)
    assign out_c0_exe413 = in_c0_exe413_0;

    // out_c0_exe514(GPOUT,23)
    assign out_c0_exe514 = in_c0_exe514_0;

    // out_c0_exe617(GPOUT,24)
    assign out_c0_exe617 = in_c0_exe617_0;

    // out_c0_exe722(GPOUT,25)
    assign out_c0_exe722 = in_c0_exe722_0;

    // out_c0_exe825(GPOUT,26)
    assign out_c0_exe825 = in_c0_exe825_0;

    // out_c0_exe926(GPOUT,27)
    assign out_c0_exe926 = in_c0_exe926_0;

    // out_c1_exe133(GPOUT,28)
    assign out_c1_exe133 = in_c1_exe133_0;

    // out_j_07029(GPOUT,29)
    assign out_j_07029 = in_j_07029_0;

    // out_l_grpid_03(GPOUT,30)
    assign out_l_grpid_03 = in_l_grpid_03_0;

    // stall_out(LOGICAL,34)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,31)
    assign out_stall_out_0 = stall_out_q;

    // out_unnamed_conv2d1x15(GPOUT,32)
    assign out_unnamed_conv2d1x15 = in_unnamed_conv2d1x15_0;

    // out_valid_out(GPOUT,33)
    assign out_valid_out = in_valid_in_0;

endmodule
