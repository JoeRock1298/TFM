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

// SystemVerilog created from mmul_loop_capacity_FIFO
// SystemVerilog created on Sat May  6 18:14:24 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_loop_capacity_FIFO (
    input wire [576:0] in_data_in,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_almost_full,
    output wire [576:0] out_data_out,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [576:0] loop_capacity_FIFO_data_in;
    wire [0:0] loop_capacity_FIFO_stall_in;
    wire loop_capacity_FIFO_stall_in_bitsignaltemp;
    wire [0:0] loop_capacity_FIFO_valid_in;
    wire loop_capacity_FIFO_valid_in_bitsignaltemp;
    wire [0:0] loop_capacity_FIFO_almost_full;
    wire loop_capacity_FIFO_almost_full_bitsignaltemp;
    wire [576:0] loop_capacity_FIFO_data_out;
    wire [0:0] loop_capacity_FIFO_stall_out;
    wire loop_capacity_FIFO_stall_out_bitsignaltemp;
    wire [0:0] loop_capacity_FIFO_valid_out;
    wire loop_capacity_FIFO_valid_out_bitsignaltemp;


    // loop_capacity_FIFO(EXTIFACE,5)
    assign loop_capacity_FIFO_data_in = in_data_in;
    assign loop_capacity_FIFO_stall_in = in_stall_in;
    assign loop_capacity_FIFO_valid_in = in_valid_in;
    assign loop_capacity_FIFO_stall_in_bitsignaltemp = loop_capacity_FIFO_stall_in[0];
    assign loop_capacity_FIFO_valid_in_bitsignaltemp = loop_capacity_FIFO_valid_in[0];
    assign loop_capacity_FIFO_almost_full[0] = loop_capacity_FIFO_almost_full_bitsignaltemp;
    assign loop_capacity_FIFO_stall_out[0] = loop_capacity_FIFO_stall_out_bitsignaltemp;
    assign loop_capacity_FIFO_valid_out[0] = loop_capacity_FIFO_valid_out_bitsignaltemp;
    acl_data_fifo #(
        .ASYNC_RESET(1),
        .DATA_WIDTH(577),
        .DEPTH(114),
        .IMPL("ram"),
        .SYNCHRONIZE_RESET(0)
    ) theloop_capacity_FIFO (
        .data_in(in_data_in),
        .stall_in(loop_capacity_FIFO_stall_in_bitsignaltemp),
        .valid_in(loop_capacity_FIFO_valid_in_bitsignaltemp),
        .almost_full(loop_capacity_FIFO_almost_full_bitsignaltemp),
        .data_out(loop_capacity_FIFO_data_out),
        .stall_out(loop_capacity_FIFO_stall_out_bitsignaltemp),
        .valid_out(loop_capacity_FIFO_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_almost_full(GPOUT,6)
    assign out_almost_full = loop_capacity_FIFO_almost_full;

    // out_data_out(GPOUT,7)
    assign out_data_out = loop_capacity_FIFO_data_out;

    // out_stall_out(GPOUT,8)
    assign out_stall_out = loop_capacity_FIFO_stall_out;

    // out_valid_out(GPOUT,9)
    assign out_valid_out = loop_capacity_FIFO_valid_out;

endmodule
