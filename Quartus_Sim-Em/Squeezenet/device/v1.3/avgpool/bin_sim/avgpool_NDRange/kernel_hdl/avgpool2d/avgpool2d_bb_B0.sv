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

// SystemVerilog created from avgpool2d_bb_B0
// SystemVerilog created on Mon Jun  5 12:24:15 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpool2d_bb_B0 (
    input wire [63:0] in_acl_global_id_0_0,
    input wire [63:0] in_input_im,
    input wire [63:0] in_output_im,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe1,
    output wire [63:0] out_c0_exe2,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [31:0] avgpool2d_B0_branch_out_c0_exe1;
    wire [63:0] avgpool2d_B0_branch_out_c0_exe2;
    wire [0:0] avgpool2d_B0_branch_out_stall_out;
    wire [0:0] avgpool2d_B0_branch_out_valid_out_0;
    wire [63:0] avgpool2d_B0_merge_out_acl_global_id_0;
    wire [0:0] avgpool2d_B0_merge_out_stall_out_0;
    wire [0:0] avgpool2d_B0_merge_out_valid_out;
    wire [31:0] bb_avgpool2d_B0_stall_region_out_c0_exe1;
    wire [63:0] bb_avgpool2d_B0_stall_region_out_c0_exe2;
    wire [0:0] bb_avgpool2d_B0_stall_region_out_stall_out;
    wire [0:0] bb_avgpool2d_B0_stall_region_out_valid_out;


    // avgpool2d_B0_merge(BLACKBOX,3)
    avgpool2d_B0_merge theavgpool2d_B0_merge (
        .in_acl_global_id_0_0(in_acl_global_id_0_0),
        .in_stall_in(bb_avgpool2d_B0_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_acl_global_id_0(avgpool2d_B0_merge_out_acl_global_id_0),
        .out_stall_out_0(avgpool2d_B0_merge_out_stall_out_0),
        .out_valid_out(avgpool2d_B0_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpool2d_B0_stall_region(BLACKBOX,4)
    avgpool2d_bb_B0_stall_region thebb_avgpool2d_B0_stall_region (
        .in_acl_global_id_0(avgpool2d_B0_merge_out_acl_global_id_0),
        .in_input_im(in_input_im),
        .in_stall_in(avgpool2d_B0_branch_out_stall_out),
        .in_valid_in(avgpool2d_B0_merge_out_valid_out),
        .out_c0_exe1(bb_avgpool2d_B0_stall_region_out_c0_exe1),
        .out_c0_exe2(bb_avgpool2d_B0_stall_region_out_c0_exe2),
        .out_stall_out(bb_avgpool2d_B0_stall_region_out_stall_out),
        .out_valid_out(bb_avgpool2d_B0_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // avgpool2d_B0_branch(BLACKBOX,2)
    avgpool2d_B0_branch theavgpool2d_B0_branch (
        .in_c0_exe1(bb_avgpool2d_B0_stall_region_out_c0_exe1),
        .in_c0_exe2(bb_avgpool2d_B0_stall_region_out_c0_exe2),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_avgpool2d_B0_stall_region_out_valid_out),
        .out_c0_exe1(avgpool2d_B0_branch_out_c0_exe1),
        .out_c0_exe2(avgpool2d_B0_branch_out_c0_exe2),
        .out_stall_out(avgpool2d_B0_branch_out_stall_out),
        .out_valid_out_0(avgpool2d_B0_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1(GPOUT,10)
    assign out_c0_exe1 = avgpool2d_B0_branch_out_c0_exe1;

    // out_c0_exe2(GPOUT,11)
    assign out_c0_exe2 = avgpool2d_B0_branch_out_c0_exe2;

    // out_stall_out_0(GPOUT,12)
    assign out_stall_out_0 = avgpool2d_B0_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,13)
    assign out_valid_out_0 = avgpool2d_B0_branch_out_valid_out_0;

endmodule
