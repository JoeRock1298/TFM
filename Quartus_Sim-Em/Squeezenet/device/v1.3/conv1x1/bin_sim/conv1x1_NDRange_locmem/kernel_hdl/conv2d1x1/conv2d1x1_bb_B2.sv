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
// SystemVerilog created on Wed May 24 18:10:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B2 (
    input wire [63:0] in_acl_global_id_134_0,
    input wire [63:0] in_acl_global_id_134_1,
    input wire [63:0] in_c0_exe16_0,
    input wire [63:0] in_c0_exe16_1,
    input wire [63:0] in_c0_exe29_0,
    input wire [63:0] in_c0_exe29_1,
    input wire [31:0] in_c0_exe412_0,
    input wire [31:0] in_c0_exe412_1,
    input wire [63:0] in_c0_exe516_0,
    input wire [63:0] in_c0_exe516_1,
    input wire [0:0] in_c0_exe619_0,
    input wire [0:0] in_c0_exe619_1,
    input wire [0:0] in_c0_exe721_0,
    input wire [0:0] in_c0_exe721_1,
    input wire [0:0] in_c0_exe824_0,
    input wire [0:0] in_c0_exe824_1,
    input wire [0:0] in_c0_exe928_0,
    input wire [0:0] in_c0_exe928_1,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [31:0] in_j_070_0,
    input wire [31:0] in_j_070_1,
    input wire [31:0] in_l_grpid_02_0,
    input wire [31:0] in_l_grpid_02_1,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_conv2d1x13_0,
    input wire [31:0] in_unnamed_conv2d1x13_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_acl_global_id_134,
    output wire [31:0] out_c0_exe149,
    output wire [63:0] out_c0_exe16,
    output wire [63:0] out_c0_exe29,
    output wire [31:0] out_c0_exe412,
    output wire [63:0] out_c0_exe516,
    output wire [0:0] out_c0_exe619,
    output wire [0:0] out_c0_exe721,
    output wire [0:0] out_c0_exe824,
    output wire [0:0] out_c0_exe928,
    output wire [31:0] out_j_070,
    output wire [31:0] out_l_grpid_02,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_conv2d1x13,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [63:0] bb_conv2d1x1_B2_stall_region_out_acl_global_id_134;
    wire [31:0] bb_conv2d1x1_B2_stall_region_out_c0_exe149;
    wire [63:0] bb_conv2d1x1_B2_stall_region_out_c0_exe16;
    wire [63:0] bb_conv2d1x1_B2_stall_region_out_c0_exe29;
    wire [31:0] bb_conv2d1x1_B2_stall_region_out_c0_exe412;
    wire [63:0] bb_conv2d1x1_B2_stall_region_out_c0_exe516;
    wire [0:0] bb_conv2d1x1_B2_stall_region_out_c0_exe619;
    wire [0:0] bb_conv2d1x1_B2_stall_region_out_c0_exe721;
    wire [0:0] bb_conv2d1x1_B2_stall_region_out_c0_exe824;
    wire [0:0] bb_conv2d1x1_B2_stall_region_out_c0_exe928;
    wire [31:0] bb_conv2d1x1_B2_stall_region_out_j_070;
    wire [31:0] bb_conv2d1x1_B2_stall_region_out_l_grpid_02;
    wire [0:0] bb_conv2d1x1_B2_stall_region_out_stall_out;
    wire [31:0] bb_conv2d1x1_B2_stall_region_out_unnamed_conv2d1x13;
    wire [0:0] bb_conv2d1x1_B2_stall_region_out_valid_out;
    wire [63:0] conv2d1x1_B2_branch_out_acl_global_id_134;
    wire [31:0] conv2d1x1_B2_branch_out_c0_exe149;
    wire [63:0] conv2d1x1_B2_branch_out_c0_exe16;
    wire [63:0] conv2d1x1_B2_branch_out_c0_exe29;
    wire [31:0] conv2d1x1_B2_branch_out_c0_exe412;
    wire [63:0] conv2d1x1_B2_branch_out_c0_exe516;
    wire [0:0] conv2d1x1_B2_branch_out_c0_exe619;
    wire [0:0] conv2d1x1_B2_branch_out_c0_exe721;
    wire [0:0] conv2d1x1_B2_branch_out_c0_exe824;
    wire [0:0] conv2d1x1_B2_branch_out_c0_exe928;
    wire [31:0] conv2d1x1_B2_branch_out_j_070;
    wire [31:0] conv2d1x1_B2_branch_out_l_grpid_02;
    wire [0:0] conv2d1x1_B2_branch_out_stall_out;
    wire [31:0] conv2d1x1_B2_branch_out_unnamed_conv2d1x13;
    wire [0:0] conv2d1x1_B2_branch_out_valid_out_0;
    wire [63:0] conv2d1x1_B2_merge_out_acl_global_id_134;
    wire [63:0] conv2d1x1_B2_merge_out_c0_exe16;
    wire [63:0] conv2d1x1_B2_merge_out_c0_exe29;
    wire [31:0] conv2d1x1_B2_merge_out_c0_exe412;
    wire [63:0] conv2d1x1_B2_merge_out_c0_exe516;
    wire [0:0] conv2d1x1_B2_merge_out_c0_exe619;
    wire [0:0] conv2d1x1_B2_merge_out_c0_exe721;
    wire [0:0] conv2d1x1_B2_merge_out_c0_exe824;
    wire [0:0] conv2d1x1_B2_merge_out_c0_exe928;
    wire [31:0] conv2d1x1_B2_merge_out_j_070;
    wire [31:0] conv2d1x1_B2_merge_out_l_grpid_02;
    wire [0:0] conv2d1x1_B2_merge_out_stall_out_0;
    wire [0:0] conv2d1x1_B2_merge_out_stall_out_1;
    wire [31:0] conv2d1x1_B2_merge_out_unnamed_conv2d1x13;
    wire [0:0] conv2d1x1_B2_merge_out_valid_out;


    // conv2d1x1_B2_merge(BLACKBOX,4)
    conv2d1x1_B2_merge theconv2d1x1_B2_merge (
        .in_acl_global_id_134_0(in_acl_global_id_134_0),
        .in_acl_global_id_134_1(in_acl_global_id_134_1),
        .in_c0_exe16_0(in_c0_exe16_0),
        .in_c0_exe16_1(in_c0_exe16_1),
        .in_c0_exe29_0(in_c0_exe29_0),
        .in_c0_exe29_1(in_c0_exe29_1),
        .in_c0_exe412_0(in_c0_exe412_0),
        .in_c0_exe412_1(in_c0_exe412_1),
        .in_c0_exe516_0(in_c0_exe516_0),
        .in_c0_exe516_1(in_c0_exe516_1),
        .in_c0_exe619_0(in_c0_exe619_0),
        .in_c0_exe619_1(in_c0_exe619_1),
        .in_c0_exe721_0(in_c0_exe721_0),
        .in_c0_exe721_1(in_c0_exe721_1),
        .in_c0_exe824_0(in_c0_exe824_0),
        .in_c0_exe824_1(in_c0_exe824_1),
        .in_c0_exe928_0(in_c0_exe928_0),
        .in_c0_exe928_1(in_c0_exe928_1),
        .in_j_070_0(in_j_070_0),
        .in_j_070_1(in_j_070_1),
        .in_l_grpid_02_0(in_l_grpid_02_0),
        .in_l_grpid_02_1(in_l_grpid_02_1),
        .in_stall_in(bb_conv2d1x1_B2_stall_region_out_stall_out),
        .in_unnamed_conv2d1x13_0(in_unnamed_conv2d1x13_0),
        .in_unnamed_conv2d1x13_1(in_unnamed_conv2d1x13_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_acl_global_id_134(conv2d1x1_B2_merge_out_acl_global_id_134),
        .out_c0_exe16(conv2d1x1_B2_merge_out_c0_exe16),
        .out_c0_exe29(conv2d1x1_B2_merge_out_c0_exe29),
        .out_c0_exe412(conv2d1x1_B2_merge_out_c0_exe412),
        .out_c0_exe516(conv2d1x1_B2_merge_out_c0_exe516),
        .out_c0_exe619(conv2d1x1_B2_merge_out_c0_exe619),
        .out_c0_exe721(conv2d1x1_B2_merge_out_c0_exe721),
        .out_c0_exe824(conv2d1x1_B2_merge_out_c0_exe824),
        .out_c0_exe928(conv2d1x1_B2_merge_out_c0_exe928),
        .out_j_070(conv2d1x1_B2_merge_out_j_070),
        .out_l_grpid_02(conv2d1x1_B2_merge_out_l_grpid_02),
        .out_stall_out_0(conv2d1x1_B2_merge_out_stall_out_0),
        .out_stall_out_1(conv2d1x1_B2_merge_out_stall_out_1),
        .out_unnamed_conv2d1x13(conv2d1x1_B2_merge_out_unnamed_conv2d1x13),
        .out_valid_out(conv2d1x1_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B2_stall_region(BLACKBOX,2)
    conv2d1x1_bb_B2_stall_region thebb_conv2d1x1_B2_stall_region (
        .in_acl_global_id_134(conv2d1x1_B2_merge_out_acl_global_id_134),
        .in_c0_exe16(conv2d1x1_B2_merge_out_c0_exe16),
        .in_c0_exe29(conv2d1x1_B2_merge_out_c0_exe29),
        .in_c0_exe412(conv2d1x1_B2_merge_out_c0_exe412),
        .in_c0_exe516(conv2d1x1_B2_merge_out_c0_exe516),
        .in_c0_exe619(conv2d1x1_B2_merge_out_c0_exe619),
        .in_c0_exe721(conv2d1x1_B2_merge_out_c0_exe721),
        .in_c0_exe824(conv2d1x1_B2_merge_out_c0_exe824),
        .in_c0_exe928(conv2d1x1_B2_merge_out_c0_exe928),
        .in_input_size(in_input_size),
        .in_j_070(conv2d1x1_B2_merge_out_j_070),
        .in_l_grpid_02(conv2d1x1_B2_merge_out_l_grpid_02),
        .in_stall_in(conv2d1x1_B2_branch_out_stall_out),
        .in_unnamed_conv2d1x13(conv2d1x1_B2_merge_out_unnamed_conv2d1x13),
        .in_valid_in(conv2d1x1_B2_merge_out_valid_out),
        .out_acl_global_id_134(bb_conv2d1x1_B2_stall_region_out_acl_global_id_134),
        .out_c0_exe149(bb_conv2d1x1_B2_stall_region_out_c0_exe149),
        .out_c0_exe16(bb_conv2d1x1_B2_stall_region_out_c0_exe16),
        .out_c0_exe29(bb_conv2d1x1_B2_stall_region_out_c0_exe29),
        .out_c0_exe412(bb_conv2d1x1_B2_stall_region_out_c0_exe412),
        .out_c0_exe516(bb_conv2d1x1_B2_stall_region_out_c0_exe516),
        .out_c0_exe619(bb_conv2d1x1_B2_stall_region_out_c0_exe619),
        .out_c0_exe721(bb_conv2d1x1_B2_stall_region_out_c0_exe721),
        .out_c0_exe824(bb_conv2d1x1_B2_stall_region_out_c0_exe824),
        .out_c0_exe928(bb_conv2d1x1_B2_stall_region_out_c0_exe928),
        .out_j_070(bb_conv2d1x1_B2_stall_region_out_j_070),
        .out_l_grpid_02(bb_conv2d1x1_B2_stall_region_out_l_grpid_02),
        .out_stall_out(bb_conv2d1x1_B2_stall_region_out_stall_out),
        .out_unnamed_conv2d1x13(bb_conv2d1x1_B2_stall_region_out_unnamed_conv2d1x13),
        .out_valid_out(bb_conv2d1x1_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B2_branch(BLACKBOX,3)
    conv2d1x1_B2_branch theconv2d1x1_B2_branch (
        .in_acl_global_id_134(bb_conv2d1x1_B2_stall_region_out_acl_global_id_134),
        .in_c0_exe149(bb_conv2d1x1_B2_stall_region_out_c0_exe149),
        .in_c0_exe16(bb_conv2d1x1_B2_stall_region_out_c0_exe16),
        .in_c0_exe29(bb_conv2d1x1_B2_stall_region_out_c0_exe29),
        .in_c0_exe412(bb_conv2d1x1_B2_stall_region_out_c0_exe412),
        .in_c0_exe516(bb_conv2d1x1_B2_stall_region_out_c0_exe516),
        .in_c0_exe619(bb_conv2d1x1_B2_stall_region_out_c0_exe619),
        .in_c0_exe721(bb_conv2d1x1_B2_stall_region_out_c0_exe721),
        .in_c0_exe824(bb_conv2d1x1_B2_stall_region_out_c0_exe824),
        .in_c0_exe928(bb_conv2d1x1_B2_stall_region_out_c0_exe928),
        .in_j_070(bb_conv2d1x1_B2_stall_region_out_j_070),
        .in_l_grpid_02(bb_conv2d1x1_B2_stall_region_out_l_grpid_02),
        .in_stall_in_0(in_stall_in_0),
        .in_unnamed_conv2d1x13(bb_conv2d1x1_B2_stall_region_out_unnamed_conv2d1x13),
        .in_valid_in(bb_conv2d1x1_B2_stall_region_out_valid_out),
        .out_acl_global_id_134(conv2d1x1_B2_branch_out_acl_global_id_134),
        .out_c0_exe149(conv2d1x1_B2_branch_out_c0_exe149),
        .out_c0_exe16(conv2d1x1_B2_branch_out_c0_exe16),
        .out_c0_exe29(conv2d1x1_B2_branch_out_c0_exe29),
        .out_c0_exe412(conv2d1x1_B2_branch_out_c0_exe412),
        .out_c0_exe516(conv2d1x1_B2_branch_out_c0_exe516),
        .out_c0_exe619(conv2d1x1_B2_branch_out_c0_exe619),
        .out_c0_exe721(conv2d1x1_B2_branch_out_c0_exe721),
        .out_c0_exe824(conv2d1x1_B2_branch_out_c0_exe824),
        .out_c0_exe928(conv2d1x1_B2_branch_out_c0_exe928),
        .out_j_070(conv2d1x1_B2_branch_out_j_070),
        .out_l_grpid_02(conv2d1x1_B2_branch_out_l_grpid_02),
        .out_stall_out(conv2d1x1_B2_branch_out_stall_out),
        .out_unnamed_conv2d1x13(conv2d1x1_B2_branch_out_unnamed_conv2d1x13),
        .out_valid_out_0(conv2d1x1_B2_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_acl_global_id_134(GPOUT,35)
    assign out_acl_global_id_134 = conv2d1x1_B2_branch_out_acl_global_id_134;

    // out_c0_exe149(GPOUT,36)
    assign out_c0_exe149 = conv2d1x1_B2_branch_out_c0_exe149;

    // out_c0_exe16(GPOUT,37)
    assign out_c0_exe16 = conv2d1x1_B2_branch_out_c0_exe16;

    // out_c0_exe29(GPOUT,38)
    assign out_c0_exe29 = conv2d1x1_B2_branch_out_c0_exe29;

    // out_c0_exe412(GPOUT,39)
    assign out_c0_exe412 = conv2d1x1_B2_branch_out_c0_exe412;

    // out_c0_exe516(GPOUT,40)
    assign out_c0_exe516 = conv2d1x1_B2_branch_out_c0_exe516;

    // out_c0_exe619(GPOUT,41)
    assign out_c0_exe619 = conv2d1x1_B2_branch_out_c0_exe619;

    // out_c0_exe721(GPOUT,42)
    assign out_c0_exe721 = conv2d1x1_B2_branch_out_c0_exe721;

    // out_c0_exe824(GPOUT,43)
    assign out_c0_exe824 = conv2d1x1_B2_branch_out_c0_exe824;

    // out_c0_exe928(GPOUT,44)
    assign out_c0_exe928 = conv2d1x1_B2_branch_out_c0_exe928;

    // out_j_070(GPOUT,45)
    assign out_j_070 = conv2d1x1_B2_branch_out_j_070;

    // out_l_grpid_02(GPOUT,46)
    assign out_l_grpid_02 = conv2d1x1_B2_branch_out_l_grpid_02;

    // out_stall_out_0(GPOUT,47)
    assign out_stall_out_0 = conv2d1x1_B2_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,48)
    assign out_stall_out_1 = conv2d1x1_B2_merge_out_stall_out_1;

    // out_unnamed_conv2d1x13(GPOUT,49)
    assign out_unnamed_conv2d1x13 = conv2d1x1_B2_branch_out_unnamed_conv2d1x13;

    // out_valid_in_0(GPOUT,50)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,51)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,52)
    assign out_valid_out_0 = conv2d1x1_B2_branch_out_valid_out_0;

endmodule
