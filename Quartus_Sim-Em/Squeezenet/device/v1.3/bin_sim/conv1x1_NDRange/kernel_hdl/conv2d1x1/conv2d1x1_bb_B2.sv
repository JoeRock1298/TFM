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

// SystemVerilog created from conv2d1x1_bb_B2
// SystemVerilog created on Wed May 17 11:22:46 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B2 (
    input wire [63:0] in_acl_global_id_130_0,
    input wire [63:0] in_acl_global_id_130_1,
    input wire [63:0] in_c0_exe12_0,
    input wire [63:0] in_c0_exe12_1,
    input wire [31:0] in_c0_exe35_0,
    input wire [31:0] in_c0_exe35_1,
    input wire [63:0] in_c0_exe49_0,
    input wire [63:0] in_c0_exe49_1,
    input wire [0:0] in_c0_exe512_0,
    input wire [0:0] in_c0_exe512_1,
    input wire [0:0] in_c0_exe614_0,
    input wire [0:0] in_c0_exe614_1,
    input wire [0:0] in_c0_exe717_0,
    input wire [0:0] in_c0_exe717_1,
    input wire [0:0] in_c0_exe821_0,
    input wire [0:0] in_c0_exe821_1,
    input wire [0:0] in_c0_exe923_0,
    input wire [0:0] in_c0_exe923_1,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [31:0] in_j_059_0,
    input wire [31:0] in_j_059_1,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_conv2d1x12_0,
    input wire [31:0] in_unnamed_conv2d1x12_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_acl_global_id_130,
    output wire [63:0] out_c0_exe12,
    output wire [31:0] out_c0_exe149,
    output wire [31:0] out_c0_exe35,
    output wire [63:0] out_c0_exe49,
    output wire [0:0] out_c0_exe512,
    output wire [0:0] out_c0_exe614,
    output wire [0:0] out_c0_exe717,
    output wire [0:0] out_c0_exe821,
    output wire [0:0] out_c0_exe923,
    output wire [31:0] out_j_059,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_conv2d1x12,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [63:0] bb_conv2d1x1_B2_stall_region_out_acl_global_id_130;
    wire [63:0] bb_conv2d1x1_B2_stall_region_out_c0_exe12;
    wire [31:0] bb_conv2d1x1_B2_stall_region_out_c0_exe149;
    wire [31:0] bb_conv2d1x1_B2_stall_region_out_c0_exe35;
    wire [63:0] bb_conv2d1x1_B2_stall_region_out_c0_exe49;
    wire [0:0] bb_conv2d1x1_B2_stall_region_out_c0_exe512;
    wire [0:0] bb_conv2d1x1_B2_stall_region_out_c0_exe614;
    wire [0:0] bb_conv2d1x1_B2_stall_region_out_c0_exe717;
    wire [0:0] bb_conv2d1x1_B2_stall_region_out_c0_exe821;
    wire [0:0] bb_conv2d1x1_B2_stall_region_out_c0_exe923;
    wire [31:0] bb_conv2d1x1_B2_stall_region_out_j_059;
    wire [0:0] bb_conv2d1x1_B2_stall_region_out_stall_out;
    wire [31:0] bb_conv2d1x1_B2_stall_region_out_unnamed_conv2d1x12;
    wire [0:0] bb_conv2d1x1_B2_stall_region_out_valid_out;
    wire [63:0] conv2d1x1_B2_branch_out_acl_global_id_130;
    wire [63:0] conv2d1x1_B2_branch_out_c0_exe12;
    wire [31:0] conv2d1x1_B2_branch_out_c0_exe149;
    wire [31:0] conv2d1x1_B2_branch_out_c0_exe35;
    wire [63:0] conv2d1x1_B2_branch_out_c0_exe49;
    wire [0:0] conv2d1x1_B2_branch_out_c0_exe512;
    wire [0:0] conv2d1x1_B2_branch_out_c0_exe614;
    wire [0:0] conv2d1x1_B2_branch_out_c0_exe717;
    wire [0:0] conv2d1x1_B2_branch_out_c0_exe821;
    wire [0:0] conv2d1x1_B2_branch_out_c0_exe923;
    wire [31:0] conv2d1x1_B2_branch_out_j_059;
    wire [0:0] conv2d1x1_B2_branch_out_stall_out;
    wire [31:0] conv2d1x1_B2_branch_out_unnamed_conv2d1x12;
    wire [0:0] conv2d1x1_B2_branch_out_valid_out_0;
    wire [63:0] conv2d1x1_B2_merge_out_acl_global_id_130;
    wire [63:0] conv2d1x1_B2_merge_out_c0_exe12;
    wire [31:0] conv2d1x1_B2_merge_out_c0_exe35;
    wire [63:0] conv2d1x1_B2_merge_out_c0_exe49;
    wire [0:0] conv2d1x1_B2_merge_out_c0_exe512;
    wire [0:0] conv2d1x1_B2_merge_out_c0_exe614;
    wire [0:0] conv2d1x1_B2_merge_out_c0_exe717;
    wire [0:0] conv2d1x1_B2_merge_out_c0_exe821;
    wire [0:0] conv2d1x1_B2_merge_out_c0_exe923;
    wire [31:0] conv2d1x1_B2_merge_out_j_059;
    wire [0:0] conv2d1x1_B2_merge_out_stall_out_0;
    wire [0:0] conv2d1x1_B2_merge_out_stall_out_1;
    wire [31:0] conv2d1x1_B2_merge_out_unnamed_conv2d1x12;
    wire [0:0] conv2d1x1_B2_merge_out_valid_out;


    // conv2d1x1_B2_merge(BLACKBOX,4)
    conv2d1x1_B2_merge theconv2d1x1_B2_merge (
        .in_acl_global_id_130_0(in_acl_global_id_130_0),
        .in_acl_global_id_130_1(in_acl_global_id_130_1),
        .in_c0_exe12_0(in_c0_exe12_0),
        .in_c0_exe12_1(in_c0_exe12_1),
        .in_c0_exe35_0(in_c0_exe35_0),
        .in_c0_exe35_1(in_c0_exe35_1),
        .in_c0_exe49_0(in_c0_exe49_0),
        .in_c0_exe49_1(in_c0_exe49_1),
        .in_c0_exe512_0(in_c0_exe512_0),
        .in_c0_exe512_1(in_c0_exe512_1),
        .in_c0_exe614_0(in_c0_exe614_0),
        .in_c0_exe614_1(in_c0_exe614_1),
        .in_c0_exe717_0(in_c0_exe717_0),
        .in_c0_exe717_1(in_c0_exe717_1),
        .in_c0_exe821_0(in_c0_exe821_0),
        .in_c0_exe821_1(in_c0_exe821_1),
        .in_c0_exe923_0(in_c0_exe923_0),
        .in_c0_exe923_1(in_c0_exe923_1),
        .in_j_059_0(in_j_059_0),
        .in_j_059_1(in_j_059_1),
        .in_stall_in(bb_conv2d1x1_B2_stall_region_out_stall_out),
        .in_unnamed_conv2d1x12_0(in_unnamed_conv2d1x12_0),
        .in_unnamed_conv2d1x12_1(in_unnamed_conv2d1x12_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_acl_global_id_130(conv2d1x1_B2_merge_out_acl_global_id_130),
        .out_c0_exe12(conv2d1x1_B2_merge_out_c0_exe12),
        .out_c0_exe35(conv2d1x1_B2_merge_out_c0_exe35),
        .out_c0_exe49(conv2d1x1_B2_merge_out_c0_exe49),
        .out_c0_exe512(conv2d1x1_B2_merge_out_c0_exe512),
        .out_c0_exe614(conv2d1x1_B2_merge_out_c0_exe614),
        .out_c0_exe717(conv2d1x1_B2_merge_out_c0_exe717),
        .out_c0_exe821(conv2d1x1_B2_merge_out_c0_exe821),
        .out_c0_exe923(conv2d1x1_B2_merge_out_c0_exe923),
        .out_j_059(conv2d1x1_B2_merge_out_j_059),
        .out_stall_out_0(conv2d1x1_B2_merge_out_stall_out_0),
        .out_stall_out_1(conv2d1x1_B2_merge_out_stall_out_1),
        .out_unnamed_conv2d1x12(conv2d1x1_B2_merge_out_unnamed_conv2d1x12),
        .out_valid_out(conv2d1x1_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B2_stall_region(BLACKBOX,2)
    conv2d1x1_bb_B2_stall_region thebb_conv2d1x1_B2_stall_region (
        .in_acl_global_id_130(conv2d1x1_B2_merge_out_acl_global_id_130),
        .in_c0_exe12(conv2d1x1_B2_merge_out_c0_exe12),
        .in_c0_exe35(conv2d1x1_B2_merge_out_c0_exe35),
        .in_c0_exe49(conv2d1x1_B2_merge_out_c0_exe49),
        .in_c0_exe512(conv2d1x1_B2_merge_out_c0_exe512),
        .in_c0_exe614(conv2d1x1_B2_merge_out_c0_exe614),
        .in_c0_exe717(conv2d1x1_B2_merge_out_c0_exe717),
        .in_c0_exe821(conv2d1x1_B2_merge_out_c0_exe821),
        .in_c0_exe923(conv2d1x1_B2_merge_out_c0_exe923),
        .in_input_size(in_input_size),
        .in_j_059(conv2d1x1_B2_merge_out_j_059),
        .in_stall_in(conv2d1x1_B2_branch_out_stall_out),
        .in_unnamed_conv2d1x12(conv2d1x1_B2_merge_out_unnamed_conv2d1x12),
        .in_valid_in(conv2d1x1_B2_merge_out_valid_out),
        .out_acl_global_id_130(bb_conv2d1x1_B2_stall_region_out_acl_global_id_130),
        .out_c0_exe12(bb_conv2d1x1_B2_stall_region_out_c0_exe12),
        .out_c0_exe149(bb_conv2d1x1_B2_stall_region_out_c0_exe149),
        .out_c0_exe35(bb_conv2d1x1_B2_stall_region_out_c0_exe35),
        .out_c0_exe49(bb_conv2d1x1_B2_stall_region_out_c0_exe49),
        .out_c0_exe512(bb_conv2d1x1_B2_stall_region_out_c0_exe512),
        .out_c0_exe614(bb_conv2d1x1_B2_stall_region_out_c0_exe614),
        .out_c0_exe717(bb_conv2d1x1_B2_stall_region_out_c0_exe717),
        .out_c0_exe821(bb_conv2d1x1_B2_stall_region_out_c0_exe821),
        .out_c0_exe923(bb_conv2d1x1_B2_stall_region_out_c0_exe923),
        .out_j_059(bb_conv2d1x1_B2_stall_region_out_j_059),
        .out_stall_out(bb_conv2d1x1_B2_stall_region_out_stall_out),
        .out_unnamed_conv2d1x12(bb_conv2d1x1_B2_stall_region_out_unnamed_conv2d1x12),
        .out_valid_out(bb_conv2d1x1_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B2_branch(BLACKBOX,3)
    conv2d1x1_B2_branch theconv2d1x1_B2_branch (
        .in_acl_global_id_130(bb_conv2d1x1_B2_stall_region_out_acl_global_id_130),
        .in_c0_exe12(bb_conv2d1x1_B2_stall_region_out_c0_exe12),
        .in_c0_exe149(bb_conv2d1x1_B2_stall_region_out_c0_exe149),
        .in_c0_exe35(bb_conv2d1x1_B2_stall_region_out_c0_exe35),
        .in_c0_exe49(bb_conv2d1x1_B2_stall_region_out_c0_exe49),
        .in_c0_exe512(bb_conv2d1x1_B2_stall_region_out_c0_exe512),
        .in_c0_exe614(bb_conv2d1x1_B2_stall_region_out_c0_exe614),
        .in_c0_exe717(bb_conv2d1x1_B2_stall_region_out_c0_exe717),
        .in_c0_exe821(bb_conv2d1x1_B2_stall_region_out_c0_exe821),
        .in_c0_exe923(bb_conv2d1x1_B2_stall_region_out_c0_exe923),
        .in_j_059(bb_conv2d1x1_B2_stall_region_out_j_059),
        .in_stall_in_0(in_stall_in_0),
        .in_unnamed_conv2d1x12(bb_conv2d1x1_B2_stall_region_out_unnamed_conv2d1x12),
        .in_valid_in(bb_conv2d1x1_B2_stall_region_out_valid_out),
        .out_acl_global_id_130(conv2d1x1_B2_branch_out_acl_global_id_130),
        .out_c0_exe12(conv2d1x1_B2_branch_out_c0_exe12),
        .out_c0_exe149(conv2d1x1_B2_branch_out_c0_exe149),
        .out_c0_exe35(conv2d1x1_B2_branch_out_c0_exe35),
        .out_c0_exe49(conv2d1x1_B2_branch_out_c0_exe49),
        .out_c0_exe512(conv2d1x1_B2_branch_out_c0_exe512),
        .out_c0_exe614(conv2d1x1_B2_branch_out_c0_exe614),
        .out_c0_exe717(conv2d1x1_B2_branch_out_c0_exe717),
        .out_c0_exe821(conv2d1x1_B2_branch_out_c0_exe821),
        .out_c0_exe923(conv2d1x1_B2_branch_out_c0_exe923),
        .out_j_059(conv2d1x1_B2_branch_out_j_059),
        .out_stall_out(conv2d1x1_B2_branch_out_stall_out),
        .out_unnamed_conv2d1x12(conv2d1x1_B2_branch_out_unnamed_conv2d1x12),
        .out_valid_out_0(conv2d1x1_B2_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_acl_global_id_130(GPOUT,33)
    assign out_acl_global_id_130 = conv2d1x1_B2_branch_out_acl_global_id_130;

    // out_c0_exe12(GPOUT,34)
    assign out_c0_exe12 = conv2d1x1_B2_branch_out_c0_exe12;

    // out_c0_exe149(GPOUT,35)
    assign out_c0_exe149 = conv2d1x1_B2_branch_out_c0_exe149;

    // out_c0_exe35(GPOUT,36)
    assign out_c0_exe35 = conv2d1x1_B2_branch_out_c0_exe35;

    // out_c0_exe49(GPOUT,37)
    assign out_c0_exe49 = conv2d1x1_B2_branch_out_c0_exe49;

    // out_c0_exe512(GPOUT,38)
    assign out_c0_exe512 = conv2d1x1_B2_branch_out_c0_exe512;

    // out_c0_exe614(GPOUT,39)
    assign out_c0_exe614 = conv2d1x1_B2_branch_out_c0_exe614;

    // out_c0_exe717(GPOUT,40)
    assign out_c0_exe717 = conv2d1x1_B2_branch_out_c0_exe717;

    // out_c0_exe821(GPOUT,41)
    assign out_c0_exe821 = conv2d1x1_B2_branch_out_c0_exe821;

    // out_c0_exe923(GPOUT,42)
    assign out_c0_exe923 = conv2d1x1_B2_branch_out_c0_exe923;

    // out_j_059(GPOUT,43)
    assign out_j_059 = conv2d1x1_B2_branch_out_j_059;

    // out_stall_out_0(GPOUT,44)
    assign out_stall_out_0 = conv2d1x1_B2_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,45)
    assign out_stall_out_1 = conv2d1x1_B2_merge_out_stall_out_1;

    // out_unnamed_conv2d1x12(GPOUT,46)
    assign out_unnamed_conv2d1x12 = conv2d1x1_B2_branch_out_unnamed_conv2d1x12;

    // out_valid_in_0(GPOUT,47)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,48)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,49)
    assign out_valid_out_0 = conv2d1x1_B2_branch_out_valid_out_0;

endmodule
