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

// SystemVerilog created from conv2d1x1_bb_B3
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B3 (
    input wire [63:0] in_acl_global_id_131_0,
    input wire [63:0] in_c0_exe13_0,
    input wire [31:0] in_c0_exe14928_0,
    input wire [31:0] in_c0_exe36_0,
    input wire [63:0] in_c0_exe47_0,
    input wire [0:0] in_c0_exe510_0,
    input wire [0:0] in_c0_exe615_0,
    input wire [0:0] in_c0_exe718_0,
    input wire [0:0] in_c0_exe819_0,
    input wire [0:0] in_c0_exe924_0,
    input wire [31:0] in_c1_exe129_0,
    input wire [0:0] in_flush,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [31:0] in_j_05925_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_conv2d1x13_0,
    input wire [511:0] in_unnamed_conv2d1x15_conv2d1x1_avm_readdata,
    input wire [0:0] in_unnamed_conv2d1x15_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv2d1x15_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d1x15_conv2d1x1_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_acl_global_id_131,
    output wire [63:0] out_c0_exe13,
    output wire [31:0] out_c0_exe36,
    output wire [63:0] out_c0_exe47,
    output wire [0:0] out_c0_exe510,
    output wire [0:0] out_c0_exe615,
    output wire [0:0] out_c0_exe718,
    output wire [0:0] out_c0_exe819,
    output wire [0:0] out_c0_exe924,
    output wire [31:0] out_inc64,
    output wire [0:0] out_lsu_unnamed_conv2d1x15_o_active,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_conv2d1x13,
    output wire [30:0] out_unnamed_conv2d1x15_conv2d1x1_avm_address,
    output wire [4:0] out_unnamed_conv2d1x15_conv2d1x1_avm_burstcount,
    output wire [63:0] out_unnamed_conv2d1x15_conv2d1x1_avm_byteenable,
    output wire [0:0] out_unnamed_conv2d1x15_conv2d1x1_avm_enable,
    output wire [0:0] out_unnamed_conv2d1x15_conv2d1x1_avm_read,
    output wire [0:0] out_unnamed_conv2d1x15_conv2d1x1_avm_write,
    output wire [511:0] out_unnamed_conv2d1x15_conv2d1x1_avm_writedata,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [63:0] bb_conv2d1x1_B3_stall_region_out_acl_global_id_131;
    wire [63:0] bb_conv2d1x1_B3_stall_region_out_c0_exe13;
    wire [31:0] bb_conv2d1x1_B3_stall_region_out_c0_exe36;
    wire [63:0] bb_conv2d1x1_B3_stall_region_out_c0_exe47;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_c0_exe510;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_c0_exe615;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_c0_exe718;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_c0_exe819;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_c0_exe924;
    wire [31:0] bb_conv2d1x1_B3_stall_region_out_inc64;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_lsu_unnamed_conv2d1x15_o_active;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_stall_out;
    wire [31:0] bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x13;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x14;
    wire [30:0] bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x15_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x15_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x15_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x15_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x15_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x15_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x15_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_valid_out;
    wire [63:0] conv2d1x1_B3_branch_out_acl_global_id_131;
    wire [63:0] conv2d1x1_B3_branch_out_c0_exe13;
    wire [31:0] conv2d1x1_B3_branch_out_c0_exe36;
    wire [63:0] conv2d1x1_B3_branch_out_c0_exe47;
    wire [0:0] conv2d1x1_B3_branch_out_c0_exe510;
    wire [0:0] conv2d1x1_B3_branch_out_c0_exe615;
    wire [0:0] conv2d1x1_B3_branch_out_c0_exe718;
    wire [0:0] conv2d1x1_B3_branch_out_c0_exe819;
    wire [0:0] conv2d1x1_B3_branch_out_c0_exe924;
    wire [31:0] conv2d1x1_B3_branch_out_inc64;
    wire [0:0] conv2d1x1_B3_branch_out_stall_out;
    wire [31:0] conv2d1x1_B3_branch_out_unnamed_conv2d1x13;
    wire [0:0] conv2d1x1_B3_branch_out_valid_out_0;
    wire [0:0] conv2d1x1_B3_branch_out_valid_out_1;
    wire [63:0] conv2d1x1_B3_merge_out_acl_global_id_131;
    wire [63:0] conv2d1x1_B3_merge_out_c0_exe13;
    wire [31:0] conv2d1x1_B3_merge_out_c0_exe14928;
    wire [31:0] conv2d1x1_B3_merge_out_c0_exe36;
    wire [63:0] conv2d1x1_B3_merge_out_c0_exe47;
    wire [0:0] conv2d1x1_B3_merge_out_c0_exe510;
    wire [0:0] conv2d1x1_B3_merge_out_c0_exe615;
    wire [0:0] conv2d1x1_B3_merge_out_c0_exe718;
    wire [0:0] conv2d1x1_B3_merge_out_c0_exe819;
    wire [0:0] conv2d1x1_B3_merge_out_c0_exe924;
    wire [31:0] conv2d1x1_B3_merge_out_c1_exe129;
    wire [31:0] conv2d1x1_B3_merge_out_j_05925;
    wire [0:0] conv2d1x1_B3_merge_out_stall_out_0;
    wire [31:0] conv2d1x1_B3_merge_out_unnamed_conv2d1x13;
    wire [0:0] conv2d1x1_B3_merge_out_valid_out;


    // conv2d1x1_B3_merge(BLACKBOX,4)
    conv2d1x1_B3_merge theconv2d1x1_B3_merge (
        .in_acl_global_id_131_0(in_acl_global_id_131_0),
        .in_c0_exe13_0(in_c0_exe13_0),
        .in_c0_exe14928_0(in_c0_exe14928_0),
        .in_c0_exe36_0(in_c0_exe36_0),
        .in_c0_exe47_0(in_c0_exe47_0),
        .in_c0_exe510_0(in_c0_exe510_0),
        .in_c0_exe615_0(in_c0_exe615_0),
        .in_c0_exe718_0(in_c0_exe718_0),
        .in_c0_exe819_0(in_c0_exe819_0),
        .in_c0_exe924_0(in_c0_exe924_0),
        .in_c1_exe129_0(in_c1_exe129_0),
        .in_j_05925_0(in_j_05925_0),
        .in_stall_in(bb_conv2d1x1_B3_stall_region_out_stall_out),
        .in_unnamed_conv2d1x13_0(in_unnamed_conv2d1x13_0),
        .in_valid_in_0(in_valid_in_0),
        .out_acl_global_id_131(conv2d1x1_B3_merge_out_acl_global_id_131),
        .out_c0_exe13(conv2d1x1_B3_merge_out_c0_exe13),
        .out_c0_exe14928(conv2d1x1_B3_merge_out_c0_exe14928),
        .out_c0_exe36(conv2d1x1_B3_merge_out_c0_exe36),
        .out_c0_exe47(conv2d1x1_B3_merge_out_c0_exe47),
        .out_c0_exe510(conv2d1x1_B3_merge_out_c0_exe510),
        .out_c0_exe615(conv2d1x1_B3_merge_out_c0_exe615),
        .out_c0_exe718(conv2d1x1_B3_merge_out_c0_exe718),
        .out_c0_exe819(conv2d1x1_B3_merge_out_c0_exe819),
        .out_c0_exe924(conv2d1x1_B3_merge_out_c0_exe924),
        .out_c1_exe129(conv2d1x1_B3_merge_out_c1_exe129),
        .out_j_05925(conv2d1x1_B3_merge_out_j_05925),
        .out_stall_out_0(conv2d1x1_B3_merge_out_stall_out_0),
        .out_unnamed_conv2d1x13(conv2d1x1_B3_merge_out_unnamed_conv2d1x13),
        .out_valid_out(conv2d1x1_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B3_stall_region(BLACKBOX,2)
    conv2d1x1_bb_B3_stall_region thebb_conv2d1x1_B3_stall_region (
        .in_acl_global_id_131(conv2d1x1_B3_merge_out_acl_global_id_131),
        .in_c0_exe13(conv2d1x1_B3_merge_out_c0_exe13),
        .in_c0_exe14928(conv2d1x1_B3_merge_out_c0_exe14928),
        .in_c0_exe36(conv2d1x1_B3_merge_out_c0_exe36),
        .in_c0_exe47(conv2d1x1_B3_merge_out_c0_exe47),
        .in_c0_exe510(conv2d1x1_B3_merge_out_c0_exe510),
        .in_c0_exe615(conv2d1x1_B3_merge_out_c0_exe615),
        .in_c0_exe718(conv2d1x1_B3_merge_out_c0_exe718),
        .in_c0_exe819(conv2d1x1_B3_merge_out_c0_exe819),
        .in_c0_exe924(conv2d1x1_B3_merge_out_c0_exe924),
        .in_c1_exe129(conv2d1x1_B3_merge_out_c1_exe129),
        .in_flush(in_flush),
        .in_input_size(in_input_size),
        .in_j_05925(conv2d1x1_B3_merge_out_j_05925),
        .in_stall_in(conv2d1x1_B3_branch_out_stall_out),
        .in_unnamed_conv2d1x13(conv2d1x1_B3_merge_out_unnamed_conv2d1x13),
        .in_unnamed_conv2d1x15_conv2d1x1_avm_readdata(in_unnamed_conv2d1x15_conv2d1x1_avm_readdata),
        .in_unnamed_conv2d1x15_conv2d1x1_avm_readdatavalid(in_unnamed_conv2d1x15_conv2d1x1_avm_readdatavalid),
        .in_unnamed_conv2d1x15_conv2d1x1_avm_waitrequest(in_unnamed_conv2d1x15_conv2d1x1_avm_waitrequest),
        .in_unnamed_conv2d1x15_conv2d1x1_avm_writeack(in_unnamed_conv2d1x15_conv2d1x1_avm_writeack),
        .in_valid_in(conv2d1x1_B3_merge_out_valid_out),
        .out_acl_global_id_131(bb_conv2d1x1_B3_stall_region_out_acl_global_id_131),
        .out_c0_exe13(bb_conv2d1x1_B3_stall_region_out_c0_exe13),
        .out_c0_exe36(bb_conv2d1x1_B3_stall_region_out_c0_exe36),
        .out_c0_exe47(bb_conv2d1x1_B3_stall_region_out_c0_exe47),
        .out_c0_exe510(bb_conv2d1x1_B3_stall_region_out_c0_exe510),
        .out_c0_exe615(bb_conv2d1x1_B3_stall_region_out_c0_exe615),
        .out_c0_exe718(bb_conv2d1x1_B3_stall_region_out_c0_exe718),
        .out_c0_exe819(bb_conv2d1x1_B3_stall_region_out_c0_exe819),
        .out_c0_exe924(bb_conv2d1x1_B3_stall_region_out_c0_exe924),
        .out_inc64(bb_conv2d1x1_B3_stall_region_out_inc64),
        .out_lsu_unnamed_conv2d1x15_o_active(bb_conv2d1x1_B3_stall_region_out_lsu_unnamed_conv2d1x15_o_active),
        .out_stall_out(bb_conv2d1x1_B3_stall_region_out_stall_out),
        .out_unnamed_conv2d1x13(bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x13),
        .out_unnamed_conv2d1x14(bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x14),
        .out_unnamed_conv2d1x15_conv2d1x1_avm_address(bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x15_conv2d1x1_avm_address),
        .out_unnamed_conv2d1x15_conv2d1x1_avm_burstcount(bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x15_conv2d1x1_avm_burstcount),
        .out_unnamed_conv2d1x15_conv2d1x1_avm_byteenable(bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x15_conv2d1x1_avm_byteenable),
        .out_unnamed_conv2d1x15_conv2d1x1_avm_enable(bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x15_conv2d1x1_avm_enable),
        .out_unnamed_conv2d1x15_conv2d1x1_avm_read(bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x15_conv2d1x1_avm_read),
        .out_unnamed_conv2d1x15_conv2d1x1_avm_write(bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x15_conv2d1x1_avm_write),
        .out_unnamed_conv2d1x15_conv2d1x1_avm_writedata(bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x15_conv2d1x1_avm_writedata),
        .out_valid_out(bb_conv2d1x1_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B3_branch(BLACKBOX,3)
    conv2d1x1_B3_branch theconv2d1x1_B3_branch (
        .in_acl_global_id_131(bb_conv2d1x1_B3_stall_region_out_acl_global_id_131),
        .in_c0_exe13(bb_conv2d1x1_B3_stall_region_out_c0_exe13),
        .in_c0_exe36(bb_conv2d1x1_B3_stall_region_out_c0_exe36),
        .in_c0_exe47(bb_conv2d1x1_B3_stall_region_out_c0_exe47),
        .in_c0_exe510(bb_conv2d1x1_B3_stall_region_out_c0_exe510),
        .in_c0_exe615(bb_conv2d1x1_B3_stall_region_out_c0_exe615),
        .in_c0_exe718(bb_conv2d1x1_B3_stall_region_out_c0_exe718),
        .in_c0_exe819(bb_conv2d1x1_B3_stall_region_out_c0_exe819),
        .in_c0_exe924(bb_conv2d1x1_B3_stall_region_out_c0_exe924),
        .in_inc64(bb_conv2d1x1_B3_stall_region_out_inc64),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_unnamed_conv2d1x13(bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x13),
        .in_unnamed_conv2d1x14(bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x14),
        .in_valid_in(bb_conv2d1x1_B3_stall_region_out_valid_out),
        .out_acl_global_id_131(conv2d1x1_B3_branch_out_acl_global_id_131),
        .out_c0_exe13(conv2d1x1_B3_branch_out_c0_exe13),
        .out_c0_exe36(conv2d1x1_B3_branch_out_c0_exe36),
        .out_c0_exe47(conv2d1x1_B3_branch_out_c0_exe47),
        .out_c0_exe510(conv2d1x1_B3_branch_out_c0_exe510),
        .out_c0_exe615(conv2d1x1_B3_branch_out_c0_exe615),
        .out_c0_exe718(conv2d1x1_B3_branch_out_c0_exe718),
        .out_c0_exe819(conv2d1x1_B3_branch_out_c0_exe819),
        .out_c0_exe924(conv2d1x1_B3_branch_out_c0_exe924),
        .out_inc64(conv2d1x1_B3_branch_out_inc64),
        .out_stall_out(conv2d1x1_B3_branch_out_stall_out),
        .out_unnamed_conv2d1x13(conv2d1x1_B3_branch_out_unnamed_conv2d1x13),
        .out_valid_out_0(conv2d1x1_B3_branch_out_valid_out_0),
        .out_valid_out_1(conv2d1x1_B3_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_acl_global_id_131(GPOUT,29)
    assign out_acl_global_id_131 = conv2d1x1_B3_branch_out_acl_global_id_131;

    // out_c0_exe13(GPOUT,30)
    assign out_c0_exe13 = conv2d1x1_B3_branch_out_c0_exe13;

    // out_c0_exe36(GPOUT,31)
    assign out_c0_exe36 = conv2d1x1_B3_branch_out_c0_exe36;

    // out_c0_exe47(GPOUT,32)
    assign out_c0_exe47 = conv2d1x1_B3_branch_out_c0_exe47;

    // out_c0_exe510(GPOUT,33)
    assign out_c0_exe510 = conv2d1x1_B3_branch_out_c0_exe510;

    // out_c0_exe615(GPOUT,34)
    assign out_c0_exe615 = conv2d1x1_B3_branch_out_c0_exe615;

    // out_c0_exe718(GPOUT,35)
    assign out_c0_exe718 = conv2d1x1_B3_branch_out_c0_exe718;

    // out_c0_exe819(GPOUT,36)
    assign out_c0_exe819 = conv2d1x1_B3_branch_out_c0_exe819;

    // out_c0_exe924(GPOUT,37)
    assign out_c0_exe924 = conv2d1x1_B3_branch_out_c0_exe924;

    // out_inc64(GPOUT,38)
    assign out_inc64 = conv2d1x1_B3_branch_out_inc64;

    // out_lsu_unnamed_conv2d1x15_o_active(GPOUT,39)
    assign out_lsu_unnamed_conv2d1x15_o_active = bb_conv2d1x1_B3_stall_region_out_lsu_unnamed_conv2d1x15_o_active;

    // out_stall_in_0(GPOUT,40)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,41)
    assign out_stall_out_0 = conv2d1x1_B3_merge_out_stall_out_0;

    // out_unnamed_conv2d1x13(GPOUT,42)
    assign out_unnamed_conv2d1x13 = conv2d1x1_B3_branch_out_unnamed_conv2d1x13;

    // out_unnamed_conv2d1x15_conv2d1x1_avm_address(GPOUT,43)
    assign out_unnamed_conv2d1x15_conv2d1x1_avm_address = bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x15_conv2d1x1_avm_address;

    // out_unnamed_conv2d1x15_conv2d1x1_avm_burstcount(GPOUT,44)
    assign out_unnamed_conv2d1x15_conv2d1x1_avm_burstcount = bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x15_conv2d1x1_avm_burstcount;

    // out_unnamed_conv2d1x15_conv2d1x1_avm_byteenable(GPOUT,45)
    assign out_unnamed_conv2d1x15_conv2d1x1_avm_byteenable = bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x15_conv2d1x1_avm_byteenable;

    // out_unnamed_conv2d1x15_conv2d1x1_avm_enable(GPOUT,46)
    assign out_unnamed_conv2d1x15_conv2d1x1_avm_enable = bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x15_conv2d1x1_avm_enable;

    // out_unnamed_conv2d1x15_conv2d1x1_avm_read(GPOUT,47)
    assign out_unnamed_conv2d1x15_conv2d1x1_avm_read = bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x15_conv2d1x1_avm_read;

    // out_unnamed_conv2d1x15_conv2d1x1_avm_write(GPOUT,48)
    assign out_unnamed_conv2d1x15_conv2d1x1_avm_write = bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x15_conv2d1x1_avm_write;

    // out_unnamed_conv2d1x15_conv2d1x1_avm_writedata(GPOUT,49)
    assign out_unnamed_conv2d1x15_conv2d1x1_avm_writedata = bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x15_conv2d1x1_avm_writedata;

    // out_valid_out_0(GPOUT,50)
    assign out_valid_out_0 = conv2d1x1_B3_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,51)
    assign out_valid_out_1 = conv2d1x1_B3_branch_out_valid_out_1;

endmodule
