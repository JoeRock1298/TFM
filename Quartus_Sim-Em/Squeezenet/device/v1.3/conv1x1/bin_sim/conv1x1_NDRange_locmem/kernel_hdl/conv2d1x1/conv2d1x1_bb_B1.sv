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

// SystemVerilog created from conv2d1x1_bb_B1
// SystemVerilog created on Wed May 24 18:10:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B1 (
    input wire [31:0] in_l_grpid_04_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_wgl_0_exit_exit_stall_out,
    input wire [0:0] in_wgl_0_exit_exit_valid_out,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_wgl_0_exit_exit_stall_in,
    output wire [0:0] out_wgl_0_exit_exit_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv2d1x1_B1_stall_region_out_stall_out;
    wire [0:0] bb_conv2d1x1_B1_stall_region_out_valid_out;
    wire [0:0] bb_conv2d1x1_B1_stall_region_out_wgl_0_exit_exit_stall_in;
    wire [0:0] bb_conv2d1x1_B1_stall_region_out_wgl_0_exit_exit_valid_in;
    wire [0:0] conv2d1x1_B1_branch_out_stall_out;
    wire [0:0] conv2d1x1_B1_branch_out_valid_out_0;
    wire [31:0] conv2d1x1_B1_merge_out_l_grpid_04;
    wire [0:0] conv2d1x1_B1_merge_out_stall_out_0;
    wire [0:0] conv2d1x1_B1_merge_out_valid_out;


    // conv2d1x1_B1_branch(BLACKBOX,3)
    conv2d1x1_B1_branch theconv2d1x1_B1_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_conv2d1x1_B1_stall_region_out_valid_out),
        .out_stall_out(conv2d1x1_B1_branch_out_stall_out),
        .out_valid_out_0(conv2d1x1_B1_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B1_stall_region(BLACKBOX,2)
    conv2d1x1_bb_B1_stall_region thebb_conv2d1x1_B1_stall_region (
        .in_l_grpid_04(conv2d1x1_B1_merge_out_l_grpid_04),
        .in_stall_in(conv2d1x1_B1_branch_out_stall_out),
        .in_valid_in(conv2d1x1_B1_merge_out_valid_out),
        .in_wgl_0_exit_exit_stall_out(in_wgl_0_exit_exit_stall_out),
        .in_wgl_0_exit_exit_valid_out(in_wgl_0_exit_exit_valid_out),
        .out_stall_out(bb_conv2d1x1_B1_stall_region_out_stall_out),
        .out_valid_out(bb_conv2d1x1_B1_stall_region_out_valid_out),
        .out_wgl_0_exit_exit_stall_in(bb_conv2d1x1_B1_stall_region_out_wgl_0_exit_exit_stall_in),
        .out_wgl_0_exit_exit_valid_in(bb_conv2d1x1_B1_stall_region_out_wgl_0_exit_exit_valid_in),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B1_merge(BLACKBOX,4)
    conv2d1x1_B1_merge theconv2d1x1_B1_merge (
        .in_l_grpid_04_0(in_l_grpid_04_0),
        .in_stall_in(bb_conv2d1x1_B1_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_l_grpid_04(conv2d1x1_B1_merge_out_l_grpid_04),
        .out_stall_out_0(conv2d1x1_B1_merge_out_stall_out_0),
        .out_valid_out(conv2d1x1_B1_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out_0(GPOUT,10)
    assign out_stall_out_0 = conv2d1x1_B1_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,11)
    assign out_valid_out_0 = conv2d1x1_B1_branch_out_valid_out_0;

    // out_wgl_0_exit_exit_stall_in(GPOUT,12)
    assign out_wgl_0_exit_exit_stall_in = bb_conv2d1x1_B1_stall_region_out_wgl_0_exit_exit_stall_in;

    // out_wgl_0_exit_exit_valid_in(GPOUT,13)
    assign out_wgl_0_exit_exit_valid_in = bb_conv2d1x1_B1_stall_region_out_wgl_0_exit_exit_valid_in;

endmodule
