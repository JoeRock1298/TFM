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

// SystemVerilog created from mmul_i_llvm_fpga_simple_barrier_unnamed_6_mmul0
// SystemVerilog created on Sat May  6 18:14:24 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_i_llvm_fpga_simple_barrier_unnamed_6_mmul0 (
    input wire [31:0] in_workgroup_size,
    input wire [0:0] in_stall_exit,
    output wire [0:0] out_stall_entry,
    input wire [0:0] in_data_entry,
    input wire [0:0] in_valid_entry,
    output wire [0:0] out_data_exit,
    output wire [0:0] out_valid_exit,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc4_in;
    wire [0:0] adapt_scalar_trunc4_q;
    wire [6:0] c_i7_03_q;
    wire [7:0] element_extension2_q;
    wire [7:0] i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_data_entry;
    wire [0:0] i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_stall_exit;
    wire i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_stall_exit_bitsignaltemp;
    wire [0:0] i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_valid_entry;
    wire i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_valid_entry_bitsignaltemp;
    wire [7:0] i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_workgroup_size;
    wire [7:0] i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_data_exit;
    wire [0:0] i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_stall_entry;
    wire i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_stall_entry_bitsignaltemp;
    wire [0:0] i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_valid_exit;
    wire i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_valid_exit_bitsignaltemp;
    wire [7:0] wgs_trunc_in;
    wire [7:0] wgs_trunc_q;


    // wgs_trunc(ROUND,10)
    assign wgs_trunc_in = in_workgroup_size[7:0];
    assign wgs_trunc_q = wgs_trunc_in[7:0];

    // c_i7_03(CONSTANT,3)
    assign c_i7_03_q = $unsigned(7'b0000000);

    // element_extension2(BITJOIN,4)
    assign element_extension2_q = {c_i7_03_q, in_data_entry};

    // i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1(EXTIFACE,5)
    assign i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_data_entry = element_extension2_q;
    assign i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_stall_exit = in_stall_exit;
    assign i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_valid_entry = in_valid_entry;
    assign i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_workgroup_size = wgs_trunc_q;
    assign i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_stall_exit_bitsignaltemp = i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_stall_exit[0];
    assign i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_valid_entry_bitsignaltemp = i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_valid_entry[0];
    assign i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_stall_entry[0] = i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_stall_entry_bitsignaltemp;
    assign i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_valid_exit[0] = i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_valid_exit_bitsignaltemp;
    acl_barrier_simple_with_stallout #(
        .ASYNC_RESET(1),
        .DATA_WIDTH(8),
        .DEPTH(128),
        .SYNCHRONIZE_RESET(0),
        .WORKGROUP_SIZE_BITS(8)
    ) thei_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1 (
        .data_entry(element_extension2_q),
        .stall_exit(i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_stall_exit_bitsignaltemp),
        .valid_entry(i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_valid_entry_bitsignaltemp),
        .workgroup_size(wgs_trunc_q),
        .data_exit(i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_data_exit),
        .stall_entry(i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_stall_entry_bitsignaltemp),
        .valid_exit(i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_valid_exit_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,8)@20000000
    assign out_stall_entry = i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_stall_entry;

    // adapt_scalar_trunc4(ROUND,2)
    assign adapt_scalar_trunc4_in = i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_data_exit[0:0];
    assign adapt_scalar_trunc4_q = adapt_scalar_trunc4_in[0:0];

    // dupName_0_sync_out_x(GPOUT,11)@528
    assign out_data_exit = adapt_scalar_trunc4_q;
    assign out_valid_exit = i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul1_valid_exit;

endmodule
