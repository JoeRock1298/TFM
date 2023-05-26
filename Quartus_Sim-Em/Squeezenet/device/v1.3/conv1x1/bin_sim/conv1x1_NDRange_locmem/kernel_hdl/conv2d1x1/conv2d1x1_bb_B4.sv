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

// SystemVerilog created from conv2d1x1_bb_B4
// SystemVerilog created on Wed May 24 18:10:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B4 (
    input wire [63:0] in_acl_global_id_135_0,
    input wire [31:0] in_c0_exe14931_0,
    input wire [63:0] in_c0_exe17_0,
    input wire [63:0] in_c0_exe210_0,
    input wire [31:0] in_c0_exe413_0,
    input wire [63:0] in_c0_exe514_0,
    input wire [0:0] in_c0_exe617_0,
    input wire [0:0] in_c0_exe722_0,
    input wire [0:0] in_c0_exe825_0,
    input wire [0:0] in_c0_exe926_0,
    input wire [31:0] in_c1_exe133_0,
    input wire [0:0] in_flush,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [31:0] in_j_07029_0,
    input wire [31:0] in_l_grpid_03_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_conv2d1x15_0,
    input wire [511:0] in_unnamed_conv2d1x17_conv2d1x1_avm_readdata,
    input wire [0:0] in_unnamed_conv2d1x17_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv2d1x17_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d1x17_conv2d1x1_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_acl_global_id_135,
    output wire [63:0] out_c0_exe17,
    output wire [63:0] out_c0_exe210,
    output wire [31:0] out_c0_exe413,
    output wire [63:0] out_c0_exe514,
    output wire [0:0] out_c0_exe617,
    output wire [0:0] out_c0_exe722,
    output wire [0:0] out_c0_exe825,
    output wire [0:0] out_c0_exe926,
    output wire [31:0] out_inc87,
    output wire [31:0] out_l_grpid_03,
    output wire [0:0] out_lsu_unnamed_conv2d1x17_o_active,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_conv2d1x15,
    output wire [30:0] out_unnamed_conv2d1x17_conv2d1x1_avm_address,
    output wire [4:0] out_unnamed_conv2d1x17_conv2d1x1_avm_burstcount,
    output wire [63:0] out_unnamed_conv2d1x17_conv2d1x1_avm_byteenable,
    output wire [0:0] out_unnamed_conv2d1x17_conv2d1x1_avm_enable,
    output wire [0:0] out_unnamed_conv2d1x17_conv2d1x1_avm_read,
    output wire [0:0] out_unnamed_conv2d1x17_conv2d1x1_avm_write,
    output wire [511:0] out_unnamed_conv2d1x17_conv2d1x1_avm_writedata,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [63:0] bb_conv2d1x1_B4_stall_region_out_acl_global_id_135;
    wire [63:0] bb_conv2d1x1_B4_stall_region_out_c0_exe17;
    wire [63:0] bb_conv2d1x1_B4_stall_region_out_c0_exe210;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe413;
    wire [63:0] bb_conv2d1x1_B4_stall_region_out_c0_exe514;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_c0_exe617;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_c0_exe722;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_c0_exe825;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_c0_exe926;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_inc87;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_l_grpid_03;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_lsu_unnamed_conv2d1x17_o_active;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_stall_out;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x15;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x16;
    wire [30:0] bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x17_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x17_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x17_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x17_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x17_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x17_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x17_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_valid_out;
    wire [63:0] conv2d1x1_B4_branch_out_acl_global_id_135;
    wire [63:0] conv2d1x1_B4_branch_out_c0_exe17;
    wire [63:0] conv2d1x1_B4_branch_out_c0_exe210;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe413;
    wire [63:0] conv2d1x1_B4_branch_out_c0_exe514;
    wire [0:0] conv2d1x1_B4_branch_out_c0_exe617;
    wire [0:0] conv2d1x1_B4_branch_out_c0_exe722;
    wire [0:0] conv2d1x1_B4_branch_out_c0_exe825;
    wire [0:0] conv2d1x1_B4_branch_out_c0_exe926;
    wire [31:0] conv2d1x1_B4_branch_out_inc87;
    wire [31:0] conv2d1x1_B4_branch_out_l_grpid_03;
    wire [0:0] conv2d1x1_B4_branch_out_stall_out;
    wire [31:0] conv2d1x1_B4_branch_out_unnamed_conv2d1x15;
    wire [0:0] conv2d1x1_B4_branch_out_valid_out_0;
    wire [0:0] conv2d1x1_B4_branch_out_valid_out_1;
    wire [63:0] conv2d1x1_B4_merge_out_acl_global_id_135;
    wire [31:0] conv2d1x1_B4_merge_out_c0_exe14931;
    wire [63:0] conv2d1x1_B4_merge_out_c0_exe17;
    wire [63:0] conv2d1x1_B4_merge_out_c0_exe210;
    wire [31:0] conv2d1x1_B4_merge_out_c0_exe413;
    wire [63:0] conv2d1x1_B4_merge_out_c0_exe514;
    wire [0:0] conv2d1x1_B4_merge_out_c0_exe617;
    wire [0:0] conv2d1x1_B4_merge_out_c0_exe722;
    wire [0:0] conv2d1x1_B4_merge_out_c0_exe825;
    wire [0:0] conv2d1x1_B4_merge_out_c0_exe926;
    wire [31:0] conv2d1x1_B4_merge_out_c1_exe133;
    wire [31:0] conv2d1x1_B4_merge_out_j_07029;
    wire [31:0] conv2d1x1_B4_merge_out_l_grpid_03;
    wire [0:0] conv2d1x1_B4_merge_out_stall_out_0;
    wire [31:0] conv2d1x1_B4_merge_out_unnamed_conv2d1x15;
    wire [0:0] conv2d1x1_B4_merge_out_valid_out;


    // conv2d1x1_B4_merge(BLACKBOX,4)
    conv2d1x1_B4_merge theconv2d1x1_B4_merge (
        .in_acl_global_id_135_0(in_acl_global_id_135_0),
        .in_c0_exe14931_0(in_c0_exe14931_0),
        .in_c0_exe17_0(in_c0_exe17_0),
        .in_c0_exe210_0(in_c0_exe210_0),
        .in_c0_exe413_0(in_c0_exe413_0),
        .in_c0_exe514_0(in_c0_exe514_0),
        .in_c0_exe617_0(in_c0_exe617_0),
        .in_c0_exe722_0(in_c0_exe722_0),
        .in_c0_exe825_0(in_c0_exe825_0),
        .in_c0_exe926_0(in_c0_exe926_0),
        .in_c1_exe133_0(in_c1_exe133_0),
        .in_j_07029_0(in_j_07029_0),
        .in_l_grpid_03_0(in_l_grpid_03_0),
        .in_stall_in(bb_conv2d1x1_B4_stall_region_out_stall_out),
        .in_unnamed_conv2d1x15_0(in_unnamed_conv2d1x15_0),
        .in_valid_in_0(in_valid_in_0),
        .out_acl_global_id_135(conv2d1x1_B4_merge_out_acl_global_id_135),
        .out_c0_exe14931(conv2d1x1_B4_merge_out_c0_exe14931),
        .out_c0_exe17(conv2d1x1_B4_merge_out_c0_exe17),
        .out_c0_exe210(conv2d1x1_B4_merge_out_c0_exe210),
        .out_c0_exe413(conv2d1x1_B4_merge_out_c0_exe413),
        .out_c0_exe514(conv2d1x1_B4_merge_out_c0_exe514),
        .out_c0_exe617(conv2d1x1_B4_merge_out_c0_exe617),
        .out_c0_exe722(conv2d1x1_B4_merge_out_c0_exe722),
        .out_c0_exe825(conv2d1x1_B4_merge_out_c0_exe825),
        .out_c0_exe926(conv2d1x1_B4_merge_out_c0_exe926),
        .out_c1_exe133(conv2d1x1_B4_merge_out_c1_exe133),
        .out_j_07029(conv2d1x1_B4_merge_out_j_07029),
        .out_l_grpid_03(conv2d1x1_B4_merge_out_l_grpid_03),
        .out_stall_out_0(conv2d1x1_B4_merge_out_stall_out_0),
        .out_unnamed_conv2d1x15(conv2d1x1_B4_merge_out_unnamed_conv2d1x15),
        .out_valid_out(conv2d1x1_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B4_stall_region(BLACKBOX,2)
    conv2d1x1_bb_B4_stall_region thebb_conv2d1x1_B4_stall_region (
        .in_acl_global_id_135(conv2d1x1_B4_merge_out_acl_global_id_135),
        .in_c0_exe14931(conv2d1x1_B4_merge_out_c0_exe14931),
        .in_c0_exe17(conv2d1x1_B4_merge_out_c0_exe17),
        .in_c0_exe210(conv2d1x1_B4_merge_out_c0_exe210),
        .in_c0_exe413(conv2d1x1_B4_merge_out_c0_exe413),
        .in_c0_exe514(conv2d1x1_B4_merge_out_c0_exe514),
        .in_c0_exe617(conv2d1x1_B4_merge_out_c0_exe617),
        .in_c0_exe722(conv2d1x1_B4_merge_out_c0_exe722),
        .in_c0_exe825(conv2d1x1_B4_merge_out_c0_exe825),
        .in_c0_exe926(conv2d1x1_B4_merge_out_c0_exe926),
        .in_c1_exe133(conv2d1x1_B4_merge_out_c1_exe133),
        .in_flush(in_flush),
        .in_input_size(in_input_size),
        .in_j_07029(conv2d1x1_B4_merge_out_j_07029),
        .in_l_grpid_03(conv2d1x1_B4_merge_out_l_grpid_03),
        .in_stall_in(conv2d1x1_B4_branch_out_stall_out),
        .in_unnamed_conv2d1x15(conv2d1x1_B4_merge_out_unnamed_conv2d1x15),
        .in_unnamed_conv2d1x17_conv2d1x1_avm_readdata(in_unnamed_conv2d1x17_conv2d1x1_avm_readdata),
        .in_unnamed_conv2d1x17_conv2d1x1_avm_readdatavalid(in_unnamed_conv2d1x17_conv2d1x1_avm_readdatavalid),
        .in_unnamed_conv2d1x17_conv2d1x1_avm_waitrequest(in_unnamed_conv2d1x17_conv2d1x1_avm_waitrequest),
        .in_unnamed_conv2d1x17_conv2d1x1_avm_writeack(in_unnamed_conv2d1x17_conv2d1x1_avm_writeack),
        .in_valid_in(conv2d1x1_B4_merge_out_valid_out),
        .out_acl_global_id_135(bb_conv2d1x1_B4_stall_region_out_acl_global_id_135),
        .out_c0_exe17(bb_conv2d1x1_B4_stall_region_out_c0_exe17),
        .out_c0_exe210(bb_conv2d1x1_B4_stall_region_out_c0_exe210),
        .out_c0_exe413(bb_conv2d1x1_B4_stall_region_out_c0_exe413),
        .out_c0_exe514(bb_conv2d1x1_B4_stall_region_out_c0_exe514),
        .out_c0_exe617(bb_conv2d1x1_B4_stall_region_out_c0_exe617),
        .out_c0_exe722(bb_conv2d1x1_B4_stall_region_out_c0_exe722),
        .out_c0_exe825(bb_conv2d1x1_B4_stall_region_out_c0_exe825),
        .out_c0_exe926(bb_conv2d1x1_B4_stall_region_out_c0_exe926),
        .out_inc87(bb_conv2d1x1_B4_stall_region_out_inc87),
        .out_l_grpid_03(bb_conv2d1x1_B4_stall_region_out_l_grpid_03),
        .out_lsu_unnamed_conv2d1x17_o_active(bb_conv2d1x1_B4_stall_region_out_lsu_unnamed_conv2d1x17_o_active),
        .out_stall_out(bb_conv2d1x1_B4_stall_region_out_stall_out),
        .out_unnamed_conv2d1x15(bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x15),
        .out_unnamed_conv2d1x16(bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x16),
        .out_unnamed_conv2d1x17_conv2d1x1_avm_address(bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x17_conv2d1x1_avm_address),
        .out_unnamed_conv2d1x17_conv2d1x1_avm_burstcount(bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x17_conv2d1x1_avm_burstcount),
        .out_unnamed_conv2d1x17_conv2d1x1_avm_byteenable(bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x17_conv2d1x1_avm_byteenable),
        .out_unnamed_conv2d1x17_conv2d1x1_avm_enable(bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x17_conv2d1x1_avm_enable),
        .out_unnamed_conv2d1x17_conv2d1x1_avm_read(bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x17_conv2d1x1_avm_read),
        .out_unnamed_conv2d1x17_conv2d1x1_avm_write(bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x17_conv2d1x1_avm_write),
        .out_unnamed_conv2d1x17_conv2d1x1_avm_writedata(bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x17_conv2d1x1_avm_writedata),
        .out_valid_out(bb_conv2d1x1_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B4_branch(BLACKBOX,3)
    conv2d1x1_B4_branch theconv2d1x1_B4_branch (
        .in_acl_global_id_135(bb_conv2d1x1_B4_stall_region_out_acl_global_id_135),
        .in_c0_exe17(bb_conv2d1x1_B4_stall_region_out_c0_exe17),
        .in_c0_exe210(bb_conv2d1x1_B4_stall_region_out_c0_exe210),
        .in_c0_exe413(bb_conv2d1x1_B4_stall_region_out_c0_exe413),
        .in_c0_exe514(bb_conv2d1x1_B4_stall_region_out_c0_exe514),
        .in_c0_exe617(bb_conv2d1x1_B4_stall_region_out_c0_exe617),
        .in_c0_exe722(bb_conv2d1x1_B4_stall_region_out_c0_exe722),
        .in_c0_exe825(bb_conv2d1x1_B4_stall_region_out_c0_exe825),
        .in_c0_exe926(bb_conv2d1x1_B4_stall_region_out_c0_exe926),
        .in_inc87(bb_conv2d1x1_B4_stall_region_out_inc87),
        .in_l_grpid_03(bb_conv2d1x1_B4_stall_region_out_l_grpid_03),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_unnamed_conv2d1x15(bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x15),
        .in_unnamed_conv2d1x16(bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x16),
        .in_valid_in(bb_conv2d1x1_B4_stall_region_out_valid_out),
        .out_acl_global_id_135(conv2d1x1_B4_branch_out_acl_global_id_135),
        .out_c0_exe17(conv2d1x1_B4_branch_out_c0_exe17),
        .out_c0_exe210(conv2d1x1_B4_branch_out_c0_exe210),
        .out_c0_exe413(conv2d1x1_B4_branch_out_c0_exe413),
        .out_c0_exe514(conv2d1x1_B4_branch_out_c0_exe514),
        .out_c0_exe617(conv2d1x1_B4_branch_out_c0_exe617),
        .out_c0_exe722(conv2d1x1_B4_branch_out_c0_exe722),
        .out_c0_exe825(conv2d1x1_B4_branch_out_c0_exe825),
        .out_c0_exe926(conv2d1x1_B4_branch_out_c0_exe926),
        .out_inc87(conv2d1x1_B4_branch_out_inc87),
        .out_l_grpid_03(conv2d1x1_B4_branch_out_l_grpid_03),
        .out_stall_out(conv2d1x1_B4_branch_out_stall_out),
        .out_unnamed_conv2d1x15(conv2d1x1_B4_branch_out_unnamed_conv2d1x15),
        .out_valid_out_0(conv2d1x1_B4_branch_out_valid_out_0),
        .out_valid_out_1(conv2d1x1_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_acl_global_id_135(GPOUT,30)
    assign out_acl_global_id_135 = conv2d1x1_B4_branch_out_acl_global_id_135;

    // out_c0_exe17(GPOUT,31)
    assign out_c0_exe17 = conv2d1x1_B4_branch_out_c0_exe17;

    // out_c0_exe210(GPOUT,32)
    assign out_c0_exe210 = conv2d1x1_B4_branch_out_c0_exe210;

    // out_c0_exe413(GPOUT,33)
    assign out_c0_exe413 = conv2d1x1_B4_branch_out_c0_exe413;

    // out_c0_exe514(GPOUT,34)
    assign out_c0_exe514 = conv2d1x1_B4_branch_out_c0_exe514;

    // out_c0_exe617(GPOUT,35)
    assign out_c0_exe617 = conv2d1x1_B4_branch_out_c0_exe617;

    // out_c0_exe722(GPOUT,36)
    assign out_c0_exe722 = conv2d1x1_B4_branch_out_c0_exe722;

    // out_c0_exe825(GPOUT,37)
    assign out_c0_exe825 = conv2d1x1_B4_branch_out_c0_exe825;

    // out_c0_exe926(GPOUT,38)
    assign out_c0_exe926 = conv2d1x1_B4_branch_out_c0_exe926;

    // out_inc87(GPOUT,39)
    assign out_inc87 = conv2d1x1_B4_branch_out_inc87;

    // out_l_grpid_03(GPOUT,40)
    assign out_l_grpid_03 = conv2d1x1_B4_branch_out_l_grpid_03;

    // out_lsu_unnamed_conv2d1x17_o_active(GPOUT,41)
    assign out_lsu_unnamed_conv2d1x17_o_active = bb_conv2d1x1_B4_stall_region_out_lsu_unnamed_conv2d1x17_o_active;

    // out_stall_in_0(GPOUT,42)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,43)
    assign out_stall_out_0 = conv2d1x1_B4_merge_out_stall_out_0;

    // out_unnamed_conv2d1x15(GPOUT,44)
    assign out_unnamed_conv2d1x15 = conv2d1x1_B4_branch_out_unnamed_conv2d1x15;

    // out_unnamed_conv2d1x17_conv2d1x1_avm_address(GPOUT,45)
    assign out_unnamed_conv2d1x17_conv2d1x1_avm_address = bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x17_conv2d1x1_avm_address;

    // out_unnamed_conv2d1x17_conv2d1x1_avm_burstcount(GPOUT,46)
    assign out_unnamed_conv2d1x17_conv2d1x1_avm_burstcount = bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x17_conv2d1x1_avm_burstcount;

    // out_unnamed_conv2d1x17_conv2d1x1_avm_byteenable(GPOUT,47)
    assign out_unnamed_conv2d1x17_conv2d1x1_avm_byteenable = bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x17_conv2d1x1_avm_byteenable;

    // out_unnamed_conv2d1x17_conv2d1x1_avm_enable(GPOUT,48)
    assign out_unnamed_conv2d1x17_conv2d1x1_avm_enable = bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x17_conv2d1x1_avm_enable;

    // out_unnamed_conv2d1x17_conv2d1x1_avm_read(GPOUT,49)
    assign out_unnamed_conv2d1x17_conv2d1x1_avm_read = bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x17_conv2d1x1_avm_read;

    // out_unnamed_conv2d1x17_conv2d1x1_avm_write(GPOUT,50)
    assign out_unnamed_conv2d1x17_conv2d1x1_avm_write = bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x17_conv2d1x1_avm_write;

    // out_unnamed_conv2d1x17_conv2d1x1_avm_writedata(GPOUT,51)
    assign out_unnamed_conv2d1x17_conv2d1x1_avm_writedata = bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x17_conv2d1x1_avm_writedata;

    // out_valid_out_0(GPOUT,52)
    assign out_valid_out_0 = conv2d1x1_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,53)
    assign out_valid_out_1 = conv2d1x1_B4_branch_out_valid_out_1;

endmodule
