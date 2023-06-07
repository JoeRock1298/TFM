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

// SystemVerilog created from maxpool2d_bb_B4
// SystemVerilog created on Sat Jun  3 12:58:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_bb_B4 (
    input wire [31:0] in_c0_exe12818_0,
    input wire [63:0] in_c0_exe13_0,
    input wire [63:0] in_c0_exe24_0,
    input wire [0:0] in_c0_exe39_0,
    input wire [0:0] in_c0_exe412_0,
    input wire [31:0] in_c1_exe121_0,
    input wire [0:0] in_flush,
    input wire [31:0] in_i_03813_0,
    input wire [31:0] in_input_size,
    input wire [31:0] in_j_03615_0,
    input wire [31:0] in_output_size,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [511:0] in_unnamed_maxpool2d1_maxpool2d_avm_readdata,
    input wire [0:0] in_unnamed_maxpool2d1_maxpool2d_avm_readdatavalid,
    input wire [0:0] in_unnamed_maxpool2d1_maxpool2d_avm_waitrequest,
    input wire [0:0] in_unnamed_maxpool2d1_maxpool2d_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_c0_exe13,
    output wire [63:0] out_c0_exe24,
    output wire [0:0] out_c0_exe39,
    output wire [0:0] out_c0_exe412,
    output wire [31:0] out_i_038_LC_OuterPHI,
    output wire [31:0] out_j_036_LC_InnerPHI,
    output wire [0:0] out_lsu_unnamed_maxpool2d1_o_active,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [30:0] out_unnamed_maxpool2d1_maxpool2d_avm_address,
    output wire [4:0] out_unnamed_maxpool2d1_maxpool2d_avm_burstcount,
    output wire [63:0] out_unnamed_maxpool2d1_maxpool2d_avm_byteenable,
    output wire [0:0] out_unnamed_maxpool2d1_maxpool2d_avm_enable,
    output wire [0:0] out_unnamed_maxpool2d1_maxpool2d_avm_read,
    output wire [0:0] out_unnamed_maxpool2d1_maxpool2d_avm_write,
    output wire [511:0] out_unnamed_maxpool2d1_maxpool2d_avm_writedata,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [63:0] bb_maxpool2d_B4_stall_region_out_c0_exe13;
    wire [63:0] bb_maxpool2d_B4_stall_region_out_c0_exe24;
    wire [0:0] bb_maxpool2d_B4_stall_region_out_c0_exe39;
    wire [0:0] bb_maxpool2d_B4_stall_region_out_c0_exe412;
    wire [0:0] bb_maxpool2d_B4_stall_region_out_for_cond_cleanup_LC_COND;
    wire [31:0] bb_maxpool2d_B4_stall_region_out_i_038_LC_OuterPHI;
    wire [31:0] bb_maxpool2d_B4_stall_region_out_j_036_LC_InnerPHI;
    wire [0:0] bb_maxpool2d_B4_stall_region_out_lsu_unnamed_maxpool2d1_o_active;
    wire [0:0] bb_maxpool2d_B4_stall_region_out_stall_out;
    wire [30:0] bb_maxpool2d_B4_stall_region_out_unnamed_maxpool2d1_maxpool2d_avm_address;
    wire [4:0] bb_maxpool2d_B4_stall_region_out_unnamed_maxpool2d1_maxpool2d_avm_burstcount;
    wire [63:0] bb_maxpool2d_B4_stall_region_out_unnamed_maxpool2d1_maxpool2d_avm_byteenable;
    wire [0:0] bb_maxpool2d_B4_stall_region_out_unnamed_maxpool2d1_maxpool2d_avm_enable;
    wire [0:0] bb_maxpool2d_B4_stall_region_out_unnamed_maxpool2d1_maxpool2d_avm_read;
    wire [0:0] bb_maxpool2d_B4_stall_region_out_unnamed_maxpool2d1_maxpool2d_avm_write;
    wire [511:0] bb_maxpool2d_B4_stall_region_out_unnamed_maxpool2d1_maxpool2d_avm_writedata;
    wire [0:0] bb_maxpool2d_B4_stall_region_out_valid_out;
    wire [63:0] maxpool2d_B4_branch_out_c0_exe13;
    wire [63:0] maxpool2d_B4_branch_out_c0_exe24;
    wire [0:0] maxpool2d_B4_branch_out_c0_exe39;
    wire [0:0] maxpool2d_B4_branch_out_c0_exe412;
    wire [31:0] maxpool2d_B4_branch_out_i_038_LC_OuterPHI;
    wire [31:0] maxpool2d_B4_branch_out_j_036_LC_InnerPHI;
    wire [0:0] maxpool2d_B4_branch_out_stall_out;
    wire [0:0] maxpool2d_B4_branch_out_valid_out_0;
    wire [0:0] maxpool2d_B4_branch_out_valid_out_1;
    wire [31:0] maxpool2d_B4_merge_out_c0_exe12818;
    wire [63:0] maxpool2d_B4_merge_out_c0_exe13;
    wire [63:0] maxpool2d_B4_merge_out_c0_exe24;
    wire [0:0] maxpool2d_B4_merge_out_c0_exe39;
    wire [0:0] maxpool2d_B4_merge_out_c0_exe412;
    wire [31:0] maxpool2d_B4_merge_out_c1_exe121;
    wire [31:0] maxpool2d_B4_merge_out_i_03813;
    wire [31:0] maxpool2d_B4_merge_out_j_03615;
    wire [0:0] maxpool2d_B4_merge_out_stall_out_0;
    wire [0:0] maxpool2d_B4_merge_out_valid_out;


    // maxpool2d_B4_merge(BLACKBOX,22)
    maxpool2d_B4_merge themaxpool2d_B4_merge (
        .in_c0_exe12818_0(in_c0_exe12818_0),
        .in_c0_exe13_0(in_c0_exe13_0),
        .in_c0_exe24_0(in_c0_exe24_0),
        .in_c0_exe39_0(in_c0_exe39_0),
        .in_c0_exe412_0(in_c0_exe412_0),
        .in_c1_exe121_0(in_c1_exe121_0),
        .in_i_03813_0(in_i_03813_0),
        .in_j_03615_0(in_j_03615_0),
        .in_stall_in(bb_maxpool2d_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe12818(maxpool2d_B4_merge_out_c0_exe12818),
        .out_c0_exe13(maxpool2d_B4_merge_out_c0_exe13),
        .out_c0_exe24(maxpool2d_B4_merge_out_c0_exe24),
        .out_c0_exe39(maxpool2d_B4_merge_out_c0_exe39),
        .out_c0_exe412(maxpool2d_B4_merge_out_c0_exe412),
        .out_c1_exe121(maxpool2d_B4_merge_out_c1_exe121),
        .out_i_03813(maxpool2d_B4_merge_out_i_03813),
        .out_j_03615(maxpool2d_B4_merge_out_j_03615),
        .out_stall_out_0(maxpool2d_B4_merge_out_stall_out_0),
        .out_valid_out(maxpool2d_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B4_stall_region(BLACKBOX,2)
    maxpool2d_bb_B4_stall_region thebb_maxpool2d_B4_stall_region (
        .in_c0_exe12818(maxpool2d_B4_merge_out_c0_exe12818),
        .in_c0_exe13(maxpool2d_B4_merge_out_c0_exe13),
        .in_c0_exe24(maxpool2d_B4_merge_out_c0_exe24),
        .in_c0_exe39(maxpool2d_B4_merge_out_c0_exe39),
        .in_c0_exe412(maxpool2d_B4_merge_out_c0_exe412),
        .in_c1_exe121(maxpool2d_B4_merge_out_c1_exe121),
        .in_flush(in_flush),
        .in_i_03813(maxpool2d_B4_merge_out_i_03813),
        .in_j_03615(maxpool2d_B4_merge_out_j_03615),
        .in_output_size(in_output_size),
        .in_stall_in(maxpool2d_B4_branch_out_stall_out),
        .in_unnamed_maxpool2d1_maxpool2d_avm_readdata(in_unnamed_maxpool2d1_maxpool2d_avm_readdata),
        .in_unnamed_maxpool2d1_maxpool2d_avm_readdatavalid(in_unnamed_maxpool2d1_maxpool2d_avm_readdatavalid),
        .in_unnamed_maxpool2d1_maxpool2d_avm_waitrequest(in_unnamed_maxpool2d1_maxpool2d_avm_waitrequest),
        .in_unnamed_maxpool2d1_maxpool2d_avm_writeack(in_unnamed_maxpool2d1_maxpool2d_avm_writeack),
        .in_valid_in(maxpool2d_B4_merge_out_valid_out),
        .out_c0_exe13(bb_maxpool2d_B4_stall_region_out_c0_exe13),
        .out_c0_exe24(bb_maxpool2d_B4_stall_region_out_c0_exe24),
        .out_c0_exe39(bb_maxpool2d_B4_stall_region_out_c0_exe39),
        .out_c0_exe412(bb_maxpool2d_B4_stall_region_out_c0_exe412),
        .out_for_cond_cleanup_LC_COND(bb_maxpool2d_B4_stall_region_out_for_cond_cleanup_LC_COND),
        .out_i_038_LC_OuterPHI(bb_maxpool2d_B4_stall_region_out_i_038_LC_OuterPHI),
        .out_j_036_LC_InnerPHI(bb_maxpool2d_B4_stall_region_out_j_036_LC_InnerPHI),
        .out_lsu_unnamed_maxpool2d1_o_active(bb_maxpool2d_B4_stall_region_out_lsu_unnamed_maxpool2d1_o_active),
        .out_stall_out(bb_maxpool2d_B4_stall_region_out_stall_out),
        .out_unnamed_maxpool2d1_maxpool2d_avm_address(bb_maxpool2d_B4_stall_region_out_unnamed_maxpool2d1_maxpool2d_avm_address),
        .out_unnamed_maxpool2d1_maxpool2d_avm_burstcount(bb_maxpool2d_B4_stall_region_out_unnamed_maxpool2d1_maxpool2d_avm_burstcount),
        .out_unnamed_maxpool2d1_maxpool2d_avm_byteenable(bb_maxpool2d_B4_stall_region_out_unnamed_maxpool2d1_maxpool2d_avm_byteenable),
        .out_unnamed_maxpool2d1_maxpool2d_avm_enable(bb_maxpool2d_B4_stall_region_out_unnamed_maxpool2d1_maxpool2d_avm_enable),
        .out_unnamed_maxpool2d1_maxpool2d_avm_read(bb_maxpool2d_B4_stall_region_out_unnamed_maxpool2d1_maxpool2d_avm_read),
        .out_unnamed_maxpool2d1_maxpool2d_avm_write(bb_maxpool2d_B4_stall_region_out_unnamed_maxpool2d1_maxpool2d_avm_write),
        .out_unnamed_maxpool2d1_maxpool2d_avm_writedata(bb_maxpool2d_B4_stall_region_out_unnamed_maxpool2d1_maxpool2d_avm_writedata),
        .out_valid_out(bb_maxpool2d_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // maxpool2d_B4_branch(BLACKBOX,21)
    maxpool2d_B4_branch themaxpool2d_B4_branch (
        .in_c0_exe13(bb_maxpool2d_B4_stall_region_out_c0_exe13),
        .in_c0_exe24(bb_maxpool2d_B4_stall_region_out_c0_exe24),
        .in_c0_exe39(bb_maxpool2d_B4_stall_region_out_c0_exe39),
        .in_c0_exe412(bb_maxpool2d_B4_stall_region_out_c0_exe412),
        .in_for_cond_cleanup_LC_COND(bb_maxpool2d_B4_stall_region_out_for_cond_cleanup_LC_COND),
        .in_i_038_LC_OuterPHI(bb_maxpool2d_B4_stall_region_out_i_038_LC_OuterPHI),
        .in_j_036_LC_InnerPHI(bb_maxpool2d_B4_stall_region_out_j_036_LC_InnerPHI),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_maxpool2d_B4_stall_region_out_valid_out),
        .out_c0_exe13(maxpool2d_B4_branch_out_c0_exe13),
        .out_c0_exe24(maxpool2d_B4_branch_out_c0_exe24),
        .out_c0_exe39(maxpool2d_B4_branch_out_c0_exe39),
        .out_c0_exe412(maxpool2d_B4_branch_out_c0_exe412),
        .out_i_038_LC_OuterPHI(maxpool2d_B4_branch_out_i_038_LC_OuterPHI),
        .out_j_036_LC_InnerPHI(maxpool2d_B4_branch_out_j_036_LC_InnerPHI),
        .out_stall_out(maxpool2d_B4_branch_out_stall_out),
        .out_valid_out_0(maxpool2d_B4_branch_out_valid_out_0),
        .out_valid_out_1(maxpool2d_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe13(GPOUT,23)
    assign out_c0_exe13 = maxpool2d_B4_branch_out_c0_exe13;

    // out_c0_exe24(GPOUT,24)
    assign out_c0_exe24 = maxpool2d_B4_branch_out_c0_exe24;

    // out_c0_exe39(GPOUT,25)
    assign out_c0_exe39 = maxpool2d_B4_branch_out_c0_exe39;

    // out_c0_exe412(GPOUT,26)
    assign out_c0_exe412 = maxpool2d_B4_branch_out_c0_exe412;

    // out_i_038_LC_OuterPHI(GPOUT,27)
    assign out_i_038_LC_OuterPHI = maxpool2d_B4_branch_out_i_038_LC_OuterPHI;

    // out_j_036_LC_InnerPHI(GPOUT,28)
    assign out_j_036_LC_InnerPHI = maxpool2d_B4_branch_out_j_036_LC_InnerPHI;

    // out_lsu_unnamed_maxpool2d1_o_active(GPOUT,29)
    assign out_lsu_unnamed_maxpool2d1_o_active = bb_maxpool2d_B4_stall_region_out_lsu_unnamed_maxpool2d1_o_active;

    // out_stall_in_0(GPOUT,30)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,31)
    assign out_stall_out_0 = maxpool2d_B4_merge_out_stall_out_0;

    // out_unnamed_maxpool2d1_maxpool2d_avm_address(GPOUT,32)
    assign out_unnamed_maxpool2d1_maxpool2d_avm_address = bb_maxpool2d_B4_stall_region_out_unnamed_maxpool2d1_maxpool2d_avm_address;

    // out_unnamed_maxpool2d1_maxpool2d_avm_burstcount(GPOUT,33)
    assign out_unnamed_maxpool2d1_maxpool2d_avm_burstcount = bb_maxpool2d_B4_stall_region_out_unnamed_maxpool2d1_maxpool2d_avm_burstcount;

    // out_unnamed_maxpool2d1_maxpool2d_avm_byteenable(GPOUT,34)
    assign out_unnamed_maxpool2d1_maxpool2d_avm_byteenable = bb_maxpool2d_B4_stall_region_out_unnamed_maxpool2d1_maxpool2d_avm_byteenable;

    // out_unnamed_maxpool2d1_maxpool2d_avm_enable(GPOUT,35)
    assign out_unnamed_maxpool2d1_maxpool2d_avm_enable = bb_maxpool2d_B4_stall_region_out_unnamed_maxpool2d1_maxpool2d_avm_enable;

    // out_unnamed_maxpool2d1_maxpool2d_avm_read(GPOUT,36)
    assign out_unnamed_maxpool2d1_maxpool2d_avm_read = bb_maxpool2d_B4_stall_region_out_unnamed_maxpool2d1_maxpool2d_avm_read;

    // out_unnamed_maxpool2d1_maxpool2d_avm_write(GPOUT,37)
    assign out_unnamed_maxpool2d1_maxpool2d_avm_write = bb_maxpool2d_B4_stall_region_out_unnamed_maxpool2d1_maxpool2d_avm_write;

    // out_unnamed_maxpool2d1_maxpool2d_avm_writedata(GPOUT,38)
    assign out_unnamed_maxpool2d1_maxpool2d_avm_writedata = bb_maxpool2d_B4_stall_region_out_unnamed_maxpool2d1_maxpool2d_avm_writedata;

    // out_valid_out_0(GPOUT,39)
    assign out_valid_out_0 = maxpool2d_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,40)
    assign out_valid_out_1 = maxpool2d_B4_branch_out_valid_out_1;

endmodule
