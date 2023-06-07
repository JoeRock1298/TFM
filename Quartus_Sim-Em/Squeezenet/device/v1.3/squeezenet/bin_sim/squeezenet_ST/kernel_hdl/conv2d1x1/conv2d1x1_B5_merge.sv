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
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B5_merge (
    input wire [0:0] in_c0_exe101515_0,
    input wire [0:0] in_c0_exe111526_0,
    input wire [31:0] in_c0_exe31441_0,
    input wire [0:0] in_c0_exe81492_0,
    input wire [31:0] in_c0_exe91503_0,
    input wire [31:0] in_c1_exe17_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe101515,
    output wire [0:0] out_c0_exe111526,
    output wire [31:0] out_c0_exe31441,
    output wire [0:0] out_c0_exe81492,
    output wire [31:0] out_c0_exe91503,
    output wire [31:0] out_c1_exe17,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe101515(GPOUT,10)
    assign out_c0_exe101515 = in_c0_exe101515_0;

    // out_c0_exe111526(GPOUT,11)
    assign out_c0_exe111526 = in_c0_exe111526_0;

    // out_c0_exe31441(GPOUT,12)
    assign out_c0_exe31441 = in_c0_exe31441_0;

    // out_c0_exe81492(GPOUT,13)
    assign out_c0_exe81492 = in_c0_exe81492_0;

    // out_c0_exe91503(GPOUT,14)
    assign out_c0_exe91503 = in_c0_exe91503_0;

    // out_c1_exe17(GPOUT,15)
    assign out_c1_exe17 = in_c1_exe17_0;

    // stall_out(LOGICAL,18)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,16)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,17)
    assign out_valid_out = in_valid_in_0;

endmodule
