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

// SystemVerilog created from mmul_bb_B3
// SystemVerilog created on Wed May  3 13:07:53 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_bb_B3 (
    input wire [0:0] in_feedback_in_12,
    output wire [0:0] out_feedback_stall_out_12,
    input wire [0:0] in_feedback_valid_in_12,
    input wire [63:0] in_A,
    input wire [63:0] in_B,
    input wire [63:0] in_C,
    input wire [31:0] in_N,
    input wire [0:0] in_forked9_0,
    input wire [0:0] in_forked9_1,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_memdep_phi17_pop935_0,
    input wire [0:0] in_memdep_phi17_pop935_1,
    input wire [31:0] in_mul29_0,
    input wire [31:0] in_mul29_1,
    input wire [0:0] in_notcmp1632_0,
    input wire [0:0] in_notcmp1632_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_unnamed_mmul4_0,
    input wire [0:0] in_unnamed_mmul4_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10,
    output wire [0:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [0:0] out_c0_exe163,
    output wire [0:0] out_c0_exe264,
    output wire [31:0] out_c0_exe365,
    output wire [31:0] out_c0_exe466,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [31:0] out_c0_exe9,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_memdep_phi_pop12,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_mmul_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_stall_out;
    wire [0:0] bb_mmul_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_valid_out;
    wire [0:0] bb_mmul_B3_stall_region_out_c0_exe10;
    wire [0:0] bb_mmul_B3_stall_region_out_c0_exe11;
    wire [0:0] bb_mmul_B3_stall_region_out_c0_exe12;
    wire [0:0] bb_mmul_B3_stall_region_out_c0_exe163;
    wire [0:0] bb_mmul_B3_stall_region_out_c0_exe264;
    wire [31:0] bb_mmul_B3_stall_region_out_c0_exe365;
    wire [31:0] bb_mmul_B3_stall_region_out_c0_exe466;
    wire [0:0] bb_mmul_B3_stall_region_out_c0_exe5;
    wire [0:0] bb_mmul_B3_stall_region_out_c0_exe6;
    wire [0:0] bb_mmul_B3_stall_region_out_c0_exe7;
    wire [31:0] bb_mmul_B3_stall_region_out_c0_exe9;
    wire [0:0] bb_mmul_B3_stall_region_out_feedback_stall_out_12;
    wire [0:0] bb_mmul_B3_stall_region_out_memdep_phi_pop12;
    wire [0:0] bb_mmul_B3_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_mmul_B3_stall_region_out_stall_out;
    wire [0:0] bb_mmul_B3_stall_region_out_valid_out;
    wire [0:0] mmul_B3_branch_out_c0_exe10;
    wire [0:0] mmul_B3_branch_out_c0_exe11;
    wire [0:0] mmul_B3_branch_out_c0_exe12;
    wire [0:0] mmul_B3_branch_out_c0_exe163;
    wire [0:0] mmul_B3_branch_out_c0_exe264;
    wire [31:0] mmul_B3_branch_out_c0_exe365;
    wire [31:0] mmul_B3_branch_out_c0_exe466;
    wire [0:0] mmul_B3_branch_out_c0_exe5;
    wire [0:0] mmul_B3_branch_out_c0_exe6;
    wire [0:0] mmul_B3_branch_out_c0_exe7;
    wire [31:0] mmul_B3_branch_out_c0_exe9;
    wire [0:0] mmul_B3_branch_out_memdep_phi_pop12;
    wire [0:0] mmul_B3_branch_out_stall_out;
    wire [0:0] mmul_B3_branch_out_valid_out_0;
    wire [0:0] mmul_B3_merge_out_forked9;
    wire [0:0] mmul_B3_merge_out_memdep_phi17_pop935;
    wire [31:0] mmul_B3_merge_out_mul29;
    wire [0:0] mmul_B3_merge_out_notcmp1632;
    wire [0:0] mmul_B3_merge_out_stall_out_0;
    wire [0:0] mmul_B3_merge_out_stall_out_1;
    wire [0:0] mmul_B3_merge_out_unnamed_mmul4;
    wire [0:0] mmul_B3_merge_out_valid_out;


    // mmul_B3_branch(BLACKBOX,25)
    mmul_B3_branch themmul_B3_branch (
        .in_c0_exe10(bb_mmul_B3_stall_region_out_c0_exe10),
        .in_c0_exe11(bb_mmul_B3_stall_region_out_c0_exe11),
        .in_c0_exe12(bb_mmul_B3_stall_region_out_c0_exe12),
        .in_c0_exe163(bb_mmul_B3_stall_region_out_c0_exe163),
        .in_c0_exe264(bb_mmul_B3_stall_region_out_c0_exe264),
        .in_c0_exe365(bb_mmul_B3_stall_region_out_c0_exe365),
        .in_c0_exe466(bb_mmul_B3_stall_region_out_c0_exe466),
        .in_c0_exe5(bb_mmul_B3_stall_region_out_c0_exe5),
        .in_c0_exe6(bb_mmul_B3_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_mmul_B3_stall_region_out_c0_exe7),
        .in_c0_exe9(bb_mmul_B3_stall_region_out_c0_exe9),
        .in_memdep_phi_pop12(bb_mmul_B3_stall_region_out_memdep_phi_pop12),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_mmul_B3_stall_region_out_valid_out),
        .out_c0_exe10(mmul_B3_branch_out_c0_exe10),
        .out_c0_exe11(mmul_B3_branch_out_c0_exe11),
        .out_c0_exe12(mmul_B3_branch_out_c0_exe12),
        .out_c0_exe163(mmul_B3_branch_out_c0_exe163),
        .out_c0_exe264(mmul_B3_branch_out_c0_exe264),
        .out_c0_exe365(mmul_B3_branch_out_c0_exe365),
        .out_c0_exe466(mmul_B3_branch_out_c0_exe466),
        .out_c0_exe5(mmul_B3_branch_out_c0_exe5),
        .out_c0_exe6(mmul_B3_branch_out_c0_exe6),
        .out_c0_exe7(mmul_B3_branch_out_c0_exe7),
        .out_c0_exe9(mmul_B3_branch_out_c0_exe9),
        .out_memdep_phi_pop12(mmul_B3_branch_out_memdep_phi_pop12),
        .out_stall_out(mmul_B3_branch_out_stall_out),
        .out_valid_out_0(mmul_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // mmul_B3_merge(BLACKBOX,26)
    mmul_B3_merge themmul_B3_merge (
        .in_forked9_0(in_forked9_0),
        .in_forked9_1(in_forked9_1),
        .in_memdep_phi17_pop935_0(in_memdep_phi17_pop935_0),
        .in_memdep_phi17_pop935_1(in_memdep_phi17_pop935_1),
        .in_mul29_0(in_mul29_0),
        .in_mul29_1(in_mul29_1),
        .in_notcmp1632_0(in_notcmp1632_0),
        .in_notcmp1632_1(in_notcmp1632_1),
        .in_stall_in(bb_mmul_B3_stall_region_out_stall_out),
        .in_unnamed_mmul4_0(in_unnamed_mmul4_0),
        .in_unnamed_mmul4_1(in_unnamed_mmul4_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked9(mmul_B3_merge_out_forked9),
        .out_memdep_phi17_pop935(mmul_B3_merge_out_memdep_phi17_pop935),
        .out_mul29(mmul_B3_merge_out_mul29),
        .out_notcmp1632(mmul_B3_merge_out_notcmp1632),
        .out_stall_out_0(mmul_B3_merge_out_stall_out_0),
        .out_stall_out_1(mmul_B3_merge_out_stall_out_1),
        .out_unnamed_mmul4(mmul_B3_merge_out_unnamed_mmul4),
        .out_valid_out(mmul_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B3_stall_region(BLACKBOX,2)
    mmul_bb_B3_stall_region thebb_mmul_B3_stall_region (
        .in_feedback_in_12(in_feedback_in_12),
        .in_feedback_valid_in_12(in_feedback_valid_in_12),
        .in_forked9(mmul_B3_merge_out_forked9),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_memdep_phi17_pop935(mmul_B3_merge_out_memdep_phi17_pop935),
        .in_mul29(mmul_B3_merge_out_mul29),
        .in_notcmp1632(mmul_B3_merge_out_notcmp1632),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(mmul_B3_branch_out_stall_out),
        .in_unnamed_mmul4(mmul_B3_merge_out_unnamed_mmul4),
        .in_valid_in(mmul_B3_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_stall_out(bb_mmul_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_valid_out(bb_mmul_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_valid_out),
        .out_c0_exe10(bb_mmul_B3_stall_region_out_c0_exe10),
        .out_c0_exe11(bb_mmul_B3_stall_region_out_c0_exe11),
        .out_c0_exe12(bb_mmul_B3_stall_region_out_c0_exe12),
        .out_c0_exe163(bb_mmul_B3_stall_region_out_c0_exe163),
        .out_c0_exe264(bb_mmul_B3_stall_region_out_c0_exe264),
        .out_c0_exe365(bb_mmul_B3_stall_region_out_c0_exe365),
        .out_c0_exe466(bb_mmul_B3_stall_region_out_c0_exe466),
        .out_c0_exe5(bb_mmul_B3_stall_region_out_c0_exe5),
        .out_c0_exe6(bb_mmul_B3_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_mmul_B3_stall_region_out_c0_exe7),
        .out_c0_exe9(bb_mmul_B3_stall_region_out_c0_exe9),
        .out_feedback_stall_out_12(bb_mmul_B3_stall_region_out_feedback_stall_out_12),
        .out_memdep_phi_pop12(bb_mmul_B3_stall_region_out_memdep_phi_pop12),
        .out_pipeline_valid_out(bb_mmul_B3_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_mmul_B3_stall_region_out_stall_out),
        .out_valid_out(bb_mmul_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_12_sync(GPOUT,4)
    assign out_feedback_stall_out_12 = bb_mmul_B3_stall_region_out_feedback_stall_out_12;

    // out_c0_exe10(GPOUT,27)
    assign out_c0_exe10 = mmul_B3_branch_out_c0_exe10;

    // out_c0_exe11(GPOUT,28)
    assign out_c0_exe11 = mmul_B3_branch_out_c0_exe11;

    // out_c0_exe12(GPOUT,29)
    assign out_c0_exe12 = mmul_B3_branch_out_c0_exe12;

    // out_c0_exe163(GPOUT,30)
    assign out_c0_exe163 = mmul_B3_branch_out_c0_exe163;

    // out_c0_exe264(GPOUT,31)
    assign out_c0_exe264 = mmul_B3_branch_out_c0_exe264;

    // out_c0_exe365(GPOUT,32)
    assign out_c0_exe365 = mmul_B3_branch_out_c0_exe365;

    // out_c0_exe466(GPOUT,33)
    assign out_c0_exe466 = mmul_B3_branch_out_c0_exe466;

    // out_c0_exe5(GPOUT,34)
    assign out_c0_exe5 = mmul_B3_branch_out_c0_exe5;

    // out_c0_exe6(GPOUT,35)
    assign out_c0_exe6 = mmul_B3_branch_out_c0_exe6;

    // out_c0_exe7(GPOUT,36)
    assign out_c0_exe7 = mmul_B3_branch_out_c0_exe7;

    // out_c0_exe9(GPOUT,37)
    assign out_c0_exe9 = mmul_B3_branch_out_c0_exe9;

    // out_exiting_stall_out(GPOUT,38)
    assign out_exiting_stall_out = bb_mmul_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,39)
    assign out_exiting_valid_out = bb_mmul_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_valid_out;

    // out_memdep_phi_pop12(GPOUT,40)
    assign out_memdep_phi_pop12 = mmul_B3_branch_out_memdep_phi_pop12;

    // out_stall_out_0(GPOUT,41)
    assign out_stall_out_0 = mmul_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,42)
    assign out_stall_out_1 = mmul_B3_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,43)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,44)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,45)
    assign out_valid_out_0 = mmul_B3_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,47)
    assign out_pipeline_valid_out = bb_mmul_B3_stall_region_out_pipeline_valid_out;

endmodule
