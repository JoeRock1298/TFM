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

// SystemVerilog created from maxpool2d_bb_B8
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_bb_B8 (
    input wire [0:0] in_c0_exe103407_0,
    input wire [31:0] in_c0_exe113419_0,
    input wire [0:0] in_c0_exe1234212_0,
    input wire [0:0] in_c0_exe1334314_0,
    input wire [31:0] in_c0_exe1434416_0,
    input wire [0:0] in_c0_exe53351_0,
    input wire [63:0] in_c0_exe93393_0,
    input wire [31:0] in_c1_exe119_0,
    input wire [0:0] in_flush,
    input wire [31:0] in_input_size,
    input wire [31:0] in_output_size,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [511:0] in_unnamed_maxpool2d13_maxpool2d_avm_readdata,
    input wire [0:0] in_unnamed_maxpool2d13_maxpool2d_avm_readdatavalid,
    input wire [0:0] in_unnamed_maxpool2d13_maxpool2d_avm_waitrequest,
    input wire [0:0] in_unnamed_maxpool2d13_maxpool2d_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe103407,
    output wire [0:0] out_c0_exe1234212,
    output wire [0:0] out_lsu_unnamed_maxpool2d13_o_active,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [30:0] out_unnamed_maxpool2d13_maxpool2d_avm_address,
    output wire [4:0] out_unnamed_maxpool2d13_maxpool2d_avm_burstcount,
    output wire [63:0] out_unnamed_maxpool2d13_maxpool2d_avm_byteenable,
    output wire [0:0] out_unnamed_maxpool2d13_maxpool2d_avm_enable,
    output wire [0:0] out_unnamed_maxpool2d13_maxpool2d_avm_read,
    output wire [0:0] out_unnamed_maxpool2d13_maxpool2d_avm_write,
    output wire [511:0] out_unnamed_maxpool2d13_maxpool2d_avm_writedata,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_maxpool2d_B8_stall_region_out_c0_exe103407;
    wire [0:0] bb_maxpool2d_B8_stall_region_out_c0_exe1234212;
    wire [0:0] bb_maxpool2d_B8_stall_region_out_c0_exe1334314;
    wire [0:0] bb_maxpool2d_B8_stall_region_out_lsu_unnamed_maxpool2d13_o_active;
    wire [0:0] bb_maxpool2d_B8_stall_region_out_stall_out;
    wire [30:0] bb_maxpool2d_B8_stall_region_out_unnamed_maxpool2d13_maxpool2d_avm_address;
    wire [4:0] bb_maxpool2d_B8_stall_region_out_unnamed_maxpool2d13_maxpool2d_avm_burstcount;
    wire [63:0] bb_maxpool2d_B8_stall_region_out_unnamed_maxpool2d13_maxpool2d_avm_byteenable;
    wire [0:0] bb_maxpool2d_B8_stall_region_out_unnamed_maxpool2d13_maxpool2d_avm_enable;
    wire [0:0] bb_maxpool2d_B8_stall_region_out_unnamed_maxpool2d13_maxpool2d_avm_read;
    wire [0:0] bb_maxpool2d_B8_stall_region_out_unnamed_maxpool2d13_maxpool2d_avm_write;
    wire [511:0] bb_maxpool2d_B8_stall_region_out_unnamed_maxpool2d13_maxpool2d_avm_writedata;
    wire [0:0] bb_maxpool2d_B8_stall_region_out_valid_out;
    wire [0:0] maxpool2d_B8_branch_out_c0_exe103407;
    wire [0:0] maxpool2d_B8_branch_out_c0_exe1234212;
    wire [0:0] maxpool2d_B8_branch_out_stall_out;
    wire [0:0] maxpool2d_B8_branch_out_valid_out_0;
    wire [0:0] maxpool2d_B8_branch_out_valid_out_1;
    wire [0:0] maxpool2d_B8_merge_out_c0_exe103407;
    wire [31:0] maxpool2d_B8_merge_out_c0_exe113419;
    wire [0:0] maxpool2d_B8_merge_out_c0_exe1234212;
    wire [0:0] maxpool2d_B8_merge_out_c0_exe1334314;
    wire [31:0] maxpool2d_B8_merge_out_c0_exe1434416;
    wire [0:0] maxpool2d_B8_merge_out_c0_exe53351;
    wire [63:0] maxpool2d_B8_merge_out_c0_exe93393;
    wire [31:0] maxpool2d_B8_merge_out_c1_exe119;
    wire [0:0] maxpool2d_B8_merge_out_stall_out_0;
    wire [0:0] maxpool2d_B8_merge_out_valid_out;


    // maxpool2d_B8_merge(BLACKBOX,22)
    maxpool2d_B8_merge themaxpool2d_B8_merge (
        .in_c0_exe103407_0(in_c0_exe103407_0),
        .in_c0_exe113419_0(in_c0_exe113419_0),
        .in_c0_exe1234212_0(in_c0_exe1234212_0),
        .in_c0_exe1334314_0(in_c0_exe1334314_0),
        .in_c0_exe1434416_0(in_c0_exe1434416_0),
        .in_c0_exe53351_0(in_c0_exe53351_0),
        .in_c0_exe93393_0(in_c0_exe93393_0),
        .in_c1_exe119_0(in_c1_exe119_0),
        .in_stall_in(bb_maxpool2d_B8_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe103407(maxpool2d_B8_merge_out_c0_exe103407),
        .out_c0_exe113419(maxpool2d_B8_merge_out_c0_exe113419),
        .out_c0_exe1234212(maxpool2d_B8_merge_out_c0_exe1234212),
        .out_c0_exe1334314(maxpool2d_B8_merge_out_c0_exe1334314),
        .out_c0_exe1434416(maxpool2d_B8_merge_out_c0_exe1434416),
        .out_c0_exe53351(maxpool2d_B8_merge_out_c0_exe53351),
        .out_c0_exe93393(maxpool2d_B8_merge_out_c0_exe93393),
        .out_c1_exe119(maxpool2d_B8_merge_out_c1_exe119),
        .out_stall_out_0(maxpool2d_B8_merge_out_stall_out_0),
        .out_valid_out(maxpool2d_B8_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B8_stall_region(BLACKBOX,2)
    maxpool2d_bb_B8_stall_region thebb_maxpool2d_B8_stall_region (
        .in_c0_exe103407(maxpool2d_B8_merge_out_c0_exe103407),
        .in_c0_exe113419(maxpool2d_B8_merge_out_c0_exe113419),
        .in_c0_exe1234212(maxpool2d_B8_merge_out_c0_exe1234212),
        .in_c0_exe1334314(maxpool2d_B8_merge_out_c0_exe1334314),
        .in_c0_exe1434416(maxpool2d_B8_merge_out_c0_exe1434416),
        .in_c0_exe53351(maxpool2d_B8_merge_out_c0_exe53351),
        .in_c0_exe93393(maxpool2d_B8_merge_out_c0_exe93393),
        .in_c1_exe119(maxpool2d_B8_merge_out_c1_exe119),
        .in_flush(in_flush),
        .in_stall_in(maxpool2d_B8_branch_out_stall_out),
        .in_unnamed_maxpool2d13_maxpool2d_avm_readdata(in_unnamed_maxpool2d13_maxpool2d_avm_readdata),
        .in_unnamed_maxpool2d13_maxpool2d_avm_readdatavalid(in_unnamed_maxpool2d13_maxpool2d_avm_readdatavalid),
        .in_unnamed_maxpool2d13_maxpool2d_avm_waitrequest(in_unnamed_maxpool2d13_maxpool2d_avm_waitrequest),
        .in_unnamed_maxpool2d13_maxpool2d_avm_writeack(in_unnamed_maxpool2d13_maxpool2d_avm_writeack),
        .in_valid_in(maxpool2d_B8_merge_out_valid_out),
        .out_c0_exe103407(bb_maxpool2d_B8_stall_region_out_c0_exe103407),
        .out_c0_exe1234212(bb_maxpool2d_B8_stall_region_out_c0_exe1234212),
        .out_c0_exe1334314(bb_maxpool2d_B8_stall_region_out_c0_exe1334314),
        .out_lsu_unnamed_maxpool2d13_o_active(bb_maxpool2d_B8_stall_region_out_lsu_unnamed_maxpool2d13_o_active),
        .out_stall_out(bb_maxpool2d_B8_stall_region_out_stall_out),
        .out_unnamed_maxpool2d13_maxpool2d_avm_address(bb_maxpool2d_B8_stall_region_out_unnamed_maxpool2d13_maxpool2d_avm_address),
        .out_unnamed_maxpool2d13_maxpool2d_avm_burstcount(bb_maxpool2d_B8_stall_region_out_unnamed_maxpool2d13_maxpool2d_avm_burstcount),
        .out_unnamed_maxpool2d13_maxpool2d_avm_byteenable(bb_maxpool2d_B8_stall_region_out_unnamed_maxpool2d13_maxpool2d_avm_byteenable),
        .out_unnamed_maxpool2d13_maxpool2d_avm_enable(bb_maxpool2d_B8_stall_region_out_unnamed_maxpool2d13_maxpool2d_avm_enable),
        .out_unnamed_maxpool2d13_maxpool2d_avm_read(bb_maxpool2d_B8_stall_region_out_unnamed_maxpool2d13_maxpool2d_avm_read),
        .out_unnamed_maxpool2d13_maxpool2d_avm_write(bb_maxpool2d_B8_stall_region_out_unnamed_maxpool2d13_maxpool2d_avm_write),
        .out_unnamed_maxpool2d13_maxpool2d_avm_writedata(bb_maxpool2d_B8_stall_region_out_unnamed_maxpool2d13_maxpool2d_avm_writedata),
        .out_valid_out(bb_maxpool2d_B8_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // maxpool2d_B8_branch(BLACKBOX,21)
    maxpool2d_B8_branch themaxpool2d_B8_branch (
        .in_c0_exe103407(bb_maxpool2d_B8_stall_region_out_c0_exe103407),
        .in_c0_exe1234212(bb_maxpool2d_B8_stall_region_out_c0_exe1234212),
        .in_c0_exe1334314(bb_maxpool2d_B8_stall_region_out_c0_exe1334314),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_maxpool2d_B8_stall_region_out_valid_out),
        .out_c0_exe103407(maxpool2d_B8_branch_out_c0_exe103407),
        .out_c0_exe1234212(maxpool2d_B8_branch_out_c0_exe1234212),
        .out_stall_out(maxpool2d_B8_branch_out_stall_out),
        .out_valid_out_0(maxpool2d_B8_branch_out_valid_out_0),
        .out_valid_out_1(maxpool2d_B8_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe103407(GPOUT,23)
    assign out_c0_exe103407 = maxpool2d_B8_branch_out_c0_exe103407;

    // out_c0_exe1234212(GPOUT,24)
    assign out_c0_exe1234212 = maxpool2d_B8_branch_out_c0_exe1234212;

    // out_lsu_unnamed_maxpool2d13_o_active(GPOUT,25)
    assign out_lsu_unnamed_maxpool2d13_o_active = bb_maxpool2d_B8_stall_region_out_lsu_unnamed_maxpool2d13_o_active;

    // out_stall_in_0(GPOUT,26)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,27)
    assign out_stall_out_0 = maxpool2d_B8_merge_out_stall_out_0;

    // out_unnamed_maxpool2d13_maxpool2d_avm_address(GPOUT,28)
    assign out_unnamed_maxpool2d13_maxpool2d_avm_address = bb_maxpool2d_B8_stall_region_out_unnamed_maxpool2d13_maxpool2d_avm_address;

    // out_unnamed_maxpool2d13_maxpool2d_avm_burstcount(GPOUT,29)
    assign out_unnamed_maxpool2d13_maxpool2d_avm_burstcount = bb_maxpool2d_B8_stall_region_out_unnamed_maxpool2d13_maxpool2d_avm_burstcount;

    // out_unnamed_maxpool2d13_maxpool2d_avm_byteenable(GPOUT,30)
    assign out_unnamed_maxpool2d13_maxpool2d_avm_byteenable = bb_maxpool2d_B8_stall_region_out_unnamed_maxpool2d13_maxpool2d_avm_byteenable;

    // out_unnamed_maxpool2d13_maxpool2d_avm_enable(GPOUT,31)
    assign out_unnamed_maxpool2d13_maxpool2d_avm_enable = bb_maxpool2d_B8_stall_region_out_unnamed_maxpool2d13_maxpool2d_avm_enable;

    // out_unnamed_maxpool2d13_maxpool2d_avm_read(GPOUT,32)
    assign out_unnamed_maxpool2d13_maxpool2d_avm_read = bb_maxpool2d_B8_stall_region_out_unnamed_maxpool2d13_maxpool2d_avm_read;

    // out_unnamed_maxpool2d13_maxpool2d_avm_write(GPOUT,33)
    assign out_unnamed_maxpool2d13_maxpool2d_avm_write = bb_maxpool2d_B8_stall_region_out_unnamed_maxpool2d13_maxpool2d_avm_write;

    // out_unnamed_maxpool2d13_maxpool2d_avm_writedata(GPOUT,34)
    assign out_unnamed_maxpool2d13_maxpool2d_avm_writedata = bb_maxpool2d_B8_stall_region_out_unnamed_maxpool2d13_maxpool2d_avm_writedata;

    // out_valid_out_0(GPOUT,35)
    assign out_valid_out_0 = maxpool2d_B8_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,36)
    assign out_valid_out_1 = maxpool2d_B8_branch_out_valid_out_1;

endmodule
