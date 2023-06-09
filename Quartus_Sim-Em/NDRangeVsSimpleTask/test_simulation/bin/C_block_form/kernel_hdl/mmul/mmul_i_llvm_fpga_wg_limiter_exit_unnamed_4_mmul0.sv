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

// SystemVerilog created from mmul_i_llvm_fpga_wg_limiter_exit_unnamed_4_mmul0
// SystemVerilog created on Sat May  6 18:14:24 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_i_llvm_fpga_wg_limiter_exit_unnamed_4_mmul0 (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_data_in,
    input wire [0:0] in_exit_stall_out,
    input wire [0:0] in_exit_valid_out,
    input wire [0:0] in_lim_exit_dep,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_data_out,
    output wire [0:0] out_exit_stall_in,
    output wire [0:0] out_exit_valid_in,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [31:0] wgl_exit_storage_out_data_out;
    wire [0:0] wgl_exit_storage_out_stall_out;
    wire [0:0] wgl_exit_storage_out_valid_out;


    // sync_out(GPOUT,3)@20000000
    assign out_stall_out = in_exit_stall_out;

    // wgl_exit_storage(BLACKBOX,5)@20000000
    // out out_data_out@20000001
    // out out_valid_out@20000001
    mmul_wgl_exit_storage thewgl_exit_storage (
        .in_data_in(in_data_in),
        .in_stall_in(in_stall_in),
        .in_valid_in(in_exit_valid_out),
        .out_data_out(wgl_exit_storage_out_data_out),
        .out_stall_out(wgl_exit_storage_out_stall_out),
        .out_valid_out(wgl_exit_storage_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_x(GPOUT,6)@299
    assign out_data_out = wgl_exit_storage_out_data_out;
    assign out_exit_stall_in = wgl_exit_storage_out_stall_out;
    assign out_exit_valid_in = in_valid_in;
    assign out_valid_out = wgl_exit_storage_out_valid_out;

endmodule
