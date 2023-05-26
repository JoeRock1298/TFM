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

// SystemVerilog created from conv2d1x1_B5_merge
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B5_merge (
    input wire [31:0] in_c0_exe103758_0,
    input wire [0:0] in_c0_exe113769_0,
    input wire [0:0] in_c0_exe1237710_0,
    input wire [31:0] in_c0_exe1337811_0,
    input wire [31:0] in_c0_exe1437912_0,
    input wire [0:0] in_c0_exe1538013_0,
    input wire [0:0] in_c0_exe1638114_0,
    input wire [0:0] in_c0_exe1738215_0,
    input wire [32:0] in_c0_exe1838316_0,
    input wire [31:0] in_c0_exe1938417_0,
    input wire [31:0] in_c0_exe2038518_0,
    input wire [31:0] in_c0_exe2138619_0,
    input wire [0:0] in_c0_exe2238720_0,
    input wire [63:0] in_c0_exe23671_0,
    input wire [0:0] in_c0_exe33682_0,
    input wire [0:0] in_c0_exe43693_0,
    input wire [31:0] in_c0_exe63714_0,
    input wire [0:0] in_c0_exe73725_0,
    input wire [31:0] in_c0_exe83736_0,
    input wire [31:0] in_c0_exe93747_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe103758,
    output wire [0:0] out_c0_exe113769,
    output wire [0:0] out_c0_exe1237710,
    output wire [31:0] out_c0_exe1337811,
    output wire [31:0] out_c0_exe1437912,
    output wire [0:0] out_c0_exe1538013,
    output wire [0:0] out_c0_exe1638114,
    output wire [0:0] out_c0_exe1738215,
    output wire [32:0] out_c0_exe1838316,
    output wire [31:0] out_c0_exe1938417,
    output wire [31:0] out_c0_exe2038518,
    output wire [31:0] out_c0_exe2138619,
    output wire [0:0] out_c0_exe2238720,
    output wire [63:0] out_c0_exe23671,
    output wire [0:0] out_c0_exe33682,
    output wire [0:0] out_c0_exe43693,
    output wire [31:0] out_c0_exe63714,
    output wire [0:0] out_c0_exe73725,
    output wire [31:0] out_c0_exe83736,
    output wire [31:0] out_c0_exe93747,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe103758(GPOUT,24)
    assign out_c0_exe103758 = in_c0_exe103758_0;

    // out_c0_exe113769(GPOUT,25)
    assign out_c0_exe113769 = in_c0_exe113769_0;

    // out_c0_exe1237710(GPOUT,26)
    assign out_c0_exe1237710 = in_c0_exe1237710_0;

    // out_c0_exe1337811(GPOUT,27)
    assign out_c0_exe1337811 = in_c0_exe1337811_0;

    // out_c0_exe1437912(GPOUT,28)
    assign out_c0_exe1437912 = in_c0_exe1437912_0;

    // out_c0_exe1538013(GPOUT,29)
    assign out_c0_exe1538013 = in_c0_exe1538013_0;

    // out_c0_exe1638114(GPOUT,30)
    assign out_c0_exe1638114 = in_c0_exe1638114_0;

    // out_c0_exe1738215(GPOUT,31)
    assign out_c0_exe1738215 = in_c0_exe1738215_0;

    // out_c0_exe1838316(GPOUT,32)
    assign out_c0_exe1838316 = in_c0_exe1838316_0;

    // out_c0_exe1938417(GPOUT,33)
    assign out_c0_exe1938417 = in_c0_exe1938417_0;

    // out_c0_exe2038518(GPOUT,34)
    assign out_c0_exe2038518 = in_c0_exe2038518_0;

    // out_c0_exe2138619(GPOUT,35)
    assign out_c0_exe2138619 = in_c0_exe2138619_0;

    // out_c0_exe2238720(GPOUT,36)
    assign out_c0_exe2238720 = in_c0_exe2238720_0;

    // out_c0_exe23671(GPOUT,37)
    assign out_c0_exe23671 = in_c0_exe23671_0;

    // out_c0_exe33682(GPOUT,38)
    assign out_c0_exe33682 = in_c0_exe33682_0;

    // out_c0_exe43693(GPOUT,39)
    assign out_c0_exe43693 = in_c0_exe43693_0;

    // out_c0_exe63714(GPOUT,40)
    assign out_c0_exe63714 = in_c0_exe63714_0;

    // out_c0_exe73725(GPOUT,41)
    assign out_c0_exe73725 = in_c0_exe73725_0;

    // out_c0_exe83736(GPOUT,42)
    assign out_c0_exe83736 = in_c0_exe83736_0;

    // out_c0_exe93747(GPOUT,43)
    assign out_c0_exe93747 = in_c0_exe93747_0;

    // stall_out(LOGICAL,46)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,44)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,45)
    assign out_valid_out = in_valid_in_0;

endmodule
