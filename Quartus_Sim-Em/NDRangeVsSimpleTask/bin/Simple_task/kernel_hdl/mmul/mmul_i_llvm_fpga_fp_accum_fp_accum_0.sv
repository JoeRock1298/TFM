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

// SystemVerilog created from mmul_i_llvm_fpga_fp_accum_fp_accum_0
// SystemVerilog created on Wed May  3 13:07:53 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_i_llvm_fpga_fp_accum_fp_accum_0 (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_c1_ene3,
    input wire [0:0] in_c1_ene4,
    input wire [31:0] in_i_dataa,
    input wire [31:0] in_i_datab,
    input wire [0:0] in_i_valid,
    output wire [31:0] out_o_result,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_fp_accum_fp_accum_mmul1_clear_accumulator;
    wire i_llvm_fpga_fp_accum_fp_accum_mmul1_clear_accumulator_bitsignaltemp;
    wire [31:0] i_llvm_fpga_fp_accum_fp_accum_mmul1_dataa;
    wire [31:0] i_llvm_fpga_fp_accum_fp_accum_mmul1_datab;
    wire [0:0] i_llvm_fpga_fp_accum_fp_accum_mmul1_keep_going;
    wire i_llvm_fpga_fp_accum_fp_accum_mmul1_keep_going_bitsignaltemp;
    wire [0:0] i_llvm_fpga_fp_accum_fp_accum_mmul1_pop_feedback_n;
    wire i_llvm_fpga_fp_accum_fp_accum_mmul1_pop_feedback_n_bitsignaltemp;
    wire [0:0] i_llvm_fpga_fp_accum_fp_accum_mmul1_predicate;
    wire i_llvm_fpga_fp_accum_fp_accum_mmul1_predicate_bitsignaltemp;
    wire [0:0] i_llvm_fpga_fp_accum_fp_accum_mmul1_stall_in;
    wire i_llvm_fpga_fp_accum_fp_accum_mmul1_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_fp_accum_fp_accum_mmul1_valid_in;
    wire i_llvm_fpga_fp_accum_fp_accum_mmul1_valid_in_bitsignaltemp;
    wire [31:0] i_llvm_fpga_fp_accum_fp_accum_mmul1_result;
    wire [0:0] i_llvm_fpga_fp_accum_fp_accum_mmul1_stall_out;
    wire i_llvm_fpga_fp_accum_fp_accum_mmul1_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_fp_accum_fp_accum_mmul1_valid_out;
    wire i_llvm_fpga_fp_accum_fp_accum_mmul1_valid_out_bitsignaltemp;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_fp_accum_fp_accum_mmul1(EXTIFACE,5)@170 + 4
    assign i_llvm_fpga_fp_accum_fp_accum_mmul1_clear_accumulator = GND_q;
    assign i_llvm_fpga_fp_accum_fp_accum_mmul1_dataa = in_i_dataa;
    assign i_llvm_fpga_fp_accum_fp_accum_mmul1_datab = in_i_datab;
    assign i_llvm_fpga_fp_accum_fp_accum_mmul1_keep_going = in_c1_ene4;
    assign i_llvm_fpga_fp_accum_fp_accum_mmul1_pop_feedback_n = in_c1_ene3;
    assign i_llvm_fpga_fp_accum_fp_accum_mmul1_predicate = GND_q;
    assign i_llvm_fpga_fp_accum_fp_accum_mmul1_stall_in = in_i_stall;
    assign i_llvm_fpga_fp_accum_fp_accum_mmul1_valid_in = in_i_valid;
    assign i_llvm_fpga_fp_accum_fp_accum_mmul1_clear_accumulator_bitsignaltemp = i_llvm_fpga_fp_accum_fp_accum_mmul1_clear_accumulator[0];
    assign i_llvm_fpga_fp_accum_fp_accum_mmul1_keep_going_bitsignaltemp = i_llvm_fpga_fp_accum_fp_accum_mmul1_keep_going[0];
    assign i_llvm_fpga_fp_accum_fp_accum_mmul1_pop_feedback_n_bitsignaltemp = i_llvm_fpga_fp_accum_fp_accum_mmul1_pop_feedback_n[0];
    assign i_llvm_fpga_fp_accum_fp_accum_mmul1_predicate_bitsignaltemp = i_llvm_fpga_fp_accum_fp_accum_mmul1_predicate[0];
    assign i_llvm_fpga_fp_accum_fp_accum_mmul1_stall_in_bitsignaltemp = i_llvm_fpga_fp_accum_fp_accum_mmul1_stall_in[0];
    assign i_llvm_fpga_fp_accum_fp_accum_mmul1_valid_in_bitsignaltemp = i_llvm_fpga_fp_accum_fp_accum_mmul1_valid_in[0];
    assign i_llvm_fpga_fp_accum_fp_accum_mmul1_stall_out[0] = i_llvm_fpga_fp_accum_fp_accum_mmul1_stall_out_bitsignaltemp;
    assign i_llvm_fpga_fp_accum_fp_accum_mmul1_valid_out[0] = i_llvm_fpga_fp_accum_fp_accum_mmul1_valid_out_bitsignaltemp;
    acl_fp_accum_a10 #(
        .FEEDBACK_CAPACITY(1),
        .IS_STALL_FREE(1),
        .SUBTRACTOR(0),
        .USING_MULTIPLIER(1)
    ) thei_llvm_fpga_fp_accum_fp_accum_mmul1 (
        .clear_accumulator(i_llvm_fpga_fp_accum_fp_accum_mmul1_clear_accumulator_bitsignaltemp),
        .dataa(in_i_dataa),
        .datab(in_i_datab),
        .keep_going(i_llvm_fpga_fp_accum_fp_accum_mmul1_keep_going_bitsignaltemp),
        .pop_feedback_n(i_llvm_fpga_fp_accum_fp_accum_mmul1_pop_feedback_n_bitsignaltemp),
        .predicate(i_llvm_fpga_fp_accum_fp_accum_mmul1_predicate_bitsignaltemp),
        .stall_in(i_llvm_fpga_fp_accum_fp_accum_mmul1_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_fp_accum_fp_accum_mmul1_valid_in_bitsignaltemp),
        .result(i_llvm_fpga_fp_accum_fp_accum_mmul1_result),
        .stall_out(i_llvm_fpga_fp_accum_fp_accum_mmul1_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_fp_accum_fp_accum_mmul1_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,8)@174
    assign out_o_stall = i_llvm_fpga_fp_accum_fp_accum_mmul1_stall_out;

    // dupName_0_sync_out_x(GPOUT,10)@174
    assign out_o_result = i_llvm_fpga_fp_accum_fp_accum_mmul1_result;
    assign out_o_valid = i_llvm_fpga_fp_accum_fp_accum_mmul1_valid_out;

endmodule
