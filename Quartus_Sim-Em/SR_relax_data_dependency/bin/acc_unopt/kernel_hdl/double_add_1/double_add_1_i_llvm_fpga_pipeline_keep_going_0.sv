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

// SystemVerilog created from double_add_1_i_llvm_fpga_pipeline_keep_going_0
// SystemVerilog created on Tue May 23 13:55:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_1_i_llvm_fpga_pipeline_keep_going_0 (
    output wire [0:0] out_exiting_stall_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_data_in,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_initeration_in,
    input wire [0:0] in_initeration_valid_in,
    input wire [0:0] in_not_exitcond_in,
    input wire [0:0] in_not_exitcond_valid_in,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_initeration_stall_out,
    output wire [0:0] out_not_exitcond_stall_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_data_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_11_data_in;
    wire i_llvm_fpga_pipeline_keep_going_double_add_11_data_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_11_initeration_in;
    wire i_llvm_fpga_pipeline_keep_going_double_add_11_initeration_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_11_initeration_valid_in;
    wire i_llvm_fpga_pipeline_keep_going_double_add_11_initeration_valid_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_11_not_exitcond_in;
    wire i_llvm_fpga_pipeline_keep_going_double_add_11_not_exitcond_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_11_not_exitcond_valid_in;
    wire i_llvm_fpga_pipeline_keep_going_double_add_11_not_exitcond_valid_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_11_pipeline_stall_in;
    wire i_llvm_fpga_pipeline_keep_going_double_add_11_pipeline_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_11_stall_in;
    wire i_llvm_fpga_pipeline_keep_going_double_add_11_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_11_valid_in;
    wire i_llvm_fpga_pipeline_keep_going_double_add_11_valid_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_11_data_out;
    wire i_llvm_fpga_pipeline_keep_going_double_add_11_data_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_11_exiting_valid_out;
    wire i_llvm_fpga_pipeline_keep_going_double_add_11_exiting_valid_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_11_initeration_stall_out;
    wire i_llvm_fpga_pipeline_keep_going_double_add_11_initeration_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_11_not_exitcond_stall_out;
    wire i_llvm_fpga_pipeline_keep_going_double_add_11_not_exitcond_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_11_pipeline_valid_out;
    wire i_llvm_fpga_pipeline_keep_going_double_add_11_pipeline_valid_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_11_stall_out;
    wire i_llvm_fpga_pipeline_keep_going_double_add_11_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_11_valid_out;
    wire i_llvm_fpga_pipeline_keep_going_double_add_11_valid_out_bitsignaltemp;
    wire [0:0] passthru_buffer_in;
    wire passthru_buffer_in_bitsignaltemp;
    wire [0:0] passthru_buffer_out;
    wire passthru_buffer_out_bitsignaltemp;


    // passthru(EXTIFACE,3)@20000000
    assign passthru_buffer_in = in_pipeline_stall_in;
    assign passthru_buffer_in_bitsignaltemp = passthru_buffer_in[0];
    assign passthru_buffer_out[0] = passthru_buffer_out_bitsignaltemp;
    acl_dspba_buffer #(
        .WIDTH(1)
    ) thepassthru (
        .buffer_in(passthru_buffer_in_bitsignaltemp),
        .buffer_out(passthru_buffer_out_bitsignaltemp)
    );

    // regfree_osync(GPOUT,4)
    assign out_exiting_stall_out = passthru_buffer_out;

    // i_llvm_fpga_pipeline_keep_going_double_add_11(EXTIFACE,2)@10
    assign i_llvm_fpga_pipeline_keep_going_double_add_11_data_in = in_data_in;
    assign i_llvm_fpga_pipeline_keep_going_double_add_11_initeration_in = in_initeration_in;
    assign i_llvm_fpga_pipeline_keep_going_double_add_11_initeration_valid_in = in_initeration_valid_in;
    assign i_llvm_fpga_pipeline_keep_going_double_add_11_not_exitcond_in = in_not_exitcond_in;
    assign i_llvm_fpga_pipeline_keep_going_double_add_11_not_exitcond_valid_in = in_not_exitcond_valid_in;
    assign i_llvm_fpga_pipeline_keep_going_double_add_11_pipeline_stall_in = in_pipeline_stall_in;
    assign i_llvm_fpga_pipeline_keep_going_double_add_11_stall_in = in_stall_in;
    assign i_llvm_fpga_pipeline_keep_going_double_add_11_valid_in = in_valid_in;
    assign i_llvm_fpga_pipeline_keep_going_double_add_11_data_in_bitsignaltemp = i_llvm_fpga_pipeline_keep_going_double_add_11_data_in[0];
    assign i_llvm_fpga_pipeline_keep_going_double_add_11_initeration_in_bitsignaltemp = i_llvm_fpga_pipeline_keep_going_double_add_11_initeration_in[0];
    assign i_llvm_fpga_pipeline_keep_going_double_add_11_initeration_valid_in_bitsignaltemp = i_llvm_fpga_pipeline_keep_going_double_add_11_initeration_valid_in[0];
    assign i_llvm_fpga_pipeline_keep_going_double_add_11_not_exitcond_in_bitsignaltemp = i_llvm_fpga_pipeline_keep_going_double_add_11_not_exitcond_in[0];
    assign i_llvm_fpga_pipeline_keep_going_double_add_11_not_exitcond_valid_in_bitsignaltemp = i_llvm_fpga_pipeline_keep_going_double_add_11_not_exitcond_valid_in[0];
    assign i_llvm_fpga_pipeline_keep_going_double_add_11_pipeline_stall_in_bitsignaltemp = i_llvm_fpga_pipeline_keep_going_double_add_11_pipeline_stall_in[0];
    assign i_llvm_fpga_pipeline_keep_going_double_add_11_stall_in_bitsignaltemp = i_llvm_fpga_pipeline_keep_going_double_add_11_stall_in[0];
    assign i_llvm_fpga_pipeline_keep_going_double_add_11_valid_in_bitsignaltemp = i_llvm_fpga_pipeline_keep_going_double_add_11_valid_in[0];
    assign i_llvm_fpga_pipeline_keep_going_double_add_11_data_out[0] = i_llvm_fpga_pipeline_keep_going_double_add_11_data_out_bitsignaltemp;
    assign i_llvm_fpga_pipeline_keep_going_double_add_11_exiting_valid_out[0] = i_llvm_fpga_pipeline_keep_going_double_add_11_exiting_valid_out_bitsignaltemp;
    assign i_llvm_fpga_pipeline_keep_going_double_add_11_initeration_stall_out[0] = i_llvm_fpga_pipeline_keep_going_double_add_11_initeration_stall_out_bitsignaltemp;
    assign i_llvm_fpga_pipeline_keep_going_double_add_11_not_exitcond_stall_out[0] = i_llvm_fpga_pipeline_keep_going_double_add_11_not_exitcond_stall_out_bitsignaltemp;
    assign i_llvm_fpga_pipeline_keep_going_double_add_11_pipeline_valid_out[0] = i_llvm_fpga_pipeline_keep_going_double_add_11_pipeline_valid_out_bitsignaltemp;
    assign i_llvm_fpga_pipeline_keep_going_double_add_11_stall_out[0] = i_llvm_fpga_pipeline_keep_going_double_add_11_stall_out_bitsignaltemp;
    assign i_llvm_fpga_pipeline_keep_going_double_add_11_valid_out[0] = i_llvm_fpga_pipeline_keep_going_double_add_11_valid_out_bitsignaltemp;
    acl_pipeline #(
        .FIFO_DEPTH(1),
        .ASYNC_RESET(1),
        .ENABLED(0),
        .STYLE("SPECULATIVE"),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_pipeline_keep_going_double_add_11 (
        .data_in(i_llvm_fpga_pipeline_keep_going_double_add_11_data_in_bitsignaltemp),
        .initeration_in(i_llvm_fpga_pipeline_keep_going_double_add_11_initeration_in_bitsignaltemp),
        .initeration_valid_in(i_llvm_fpga_pipeline_keep_going_double_add_11_initeration_valid_in_bitsignaltemp),
        .not_exitcond_in(i_llvm_fpga_pipeline_keep_going_double_add_11_not_exitcond_in_bitsignaltemp),
        .not_exitcond_valid_in(i_llvm_fpga_pipeline_keep_going_double_add_11_not_exitcond_valid_in_bitsignaltemp),
        .pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_double_add_11_pipeline_stall_in_bitsignaltemp),
        .stall_in(i_llvm_fpga_pipeline_keep_going_double_add_11_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_pipeline_keep_going_double_add_11_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_pipeline_keep_going_double_add_11_data_out_bitsignaltemp),
        .exiting_valid_out(i_llvm_fpga_pipeline_keep_going_double_add_11_exiting_valid_out_bitsignaltemp),
        .initeration_stall_out(i_llvm_fpga_pipeline_keep_going_double_add_11_initeration_stall_out_bitsignaltemp),
        .not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_double_add_11_not_exitcond_stall_out_bitsignaltemp),
        .pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_double_add_11_pipeline_valid_out_bitsignaltemp),
        .stall_out(i_llvm_fpga_pipeline_keep_going_double_add_11_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_pipeline_keep_going_double_add_11_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,6)@10
    assign out_stall_out = i_llvm_fpga_pipeline_keep_going_double_add_11_stall_out;

    // unsched_sync_out(GPOUT,9)
    assign out_initeration_stall_out = i_llvm_fpga_pipeline_keep_going_double_add_11_initeration_stall_out;
    assign out_not_exitcond_stall_out = i_llvm_fpga_pipeline_keep_going_double_add_11_not_exitcond_stall_out;
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_double_add_11_pipeline_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,10)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_double_add_11_exiting_valid_out;

    // dupName_0_sync_out_x(GPOUT,11)@10
    assign out_data_out = i_llvm_fpga_pipeline_keep_going_double_add_11_data_out;
    assign out_valid_out = i_llvm_fpga_pipeline_keep_going_double_add_11_valid_out;

endmodule