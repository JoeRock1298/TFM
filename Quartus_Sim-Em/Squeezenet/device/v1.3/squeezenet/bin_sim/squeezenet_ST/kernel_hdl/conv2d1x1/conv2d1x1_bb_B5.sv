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

// SystemVerilog created from conv2d1x1_bb_B5
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B5 (
    input wire [0:0] in_c0_exe101515_0,
    input wire [0:0] in_c0_exe111526_0,
    input wire [31:0] in_c0_exe31441_0,
    input wire [0:0] in_c0_exe81492_0,
    input wire [31:0] in_c0_exe91503_0,
    input wire [31:0] in_c1_exe17_0,
    input wire [63:0] in_filter_bias,
    input wire [63:0] in_filter_weight,
    input wire [0:0] in_flush,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [63:0] in_output_im,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [511:0] in_unnamed_conv2d1x110_conv2d1x1_avm_readdata,
    input wire [0:0] in_unnamed_conv2d1x110_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv2d1x110_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d1x110_conv2d1x1_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe101515,
    output wire [0:0] out_lsu_unnamed_conv2d1x110_o_active,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [30:0] out_unnamed_conv2d1x110_conv2d1x1_avm_address,
    output wire [4:0] out_unnamed_conv2d1x110_conv2d1x1_avm_burstcount,
    output wire [63:0] out_unnamed_conv2d1x110_conv2d1x1_avm_byteenable,
    output wire [0:0] out_unnamed_conv2d1x110_conv2d1x1_avm_enable,
    output wire [0:0] out_unnamed_conv2d1x110_conv2d1x1_avm_read,
    output wire [0:0] out_unnamed_conv2d1x110_conv2d1x1_avm_write,
    output wire [511:0] out_unnamed_conv2d1x110_conv2d1x1_avm_writedata,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe101515;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe111526;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_lsu_unnamed_conv2d1x110_o_active;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_stall_out;
    wire [30:0] bb_conv2d1x1_B5_stall_region_out_unnamed_conv2d1x110_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B5_stall_region_out_unnamed_conv2d1x110_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B5_stall_region_out_unnamed_conv2d1x110_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_unnamed_conv2d1x110_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_unnamed_conv2d1x110_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_unnamed_conv2d1x110_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B5_stall_region_out_unnamed_conv2d1x110_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_valid_out;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe101515;
    wire [0:0] conv2d1x1_B5_branch_out_stall_out;
    wire [0:0] conv2d1x1_B5_branch_out_valid_out_0;
    wire [0:0] conv2d1x1_B5_branch_out_valid_out_1;
    wire [0:0] conv2d1x1_B5_merge_out_c0_exe101515;
    wire [0:0] conv2d1x1_B5_merge_out_c0_exe111526;
    wire [31:0] conv2d1x1_B5_merge_out_c0_exe31441;
    wire [0:0] conv2d1x1_B5_merge_out_c0_exe81492;
    wire [31:0] conv2d1x1_B5_merge_out_c0_exe91503;
    wire [31:0] conv2d1x1_B5_merge_out_c1_exe17;
    wire [0:0] conv2d1x1_B5_merge_out_stall_out_0;
    wire [0:0] conv2d1x1_B5_merge_out_valid_out;


    // conv2d1x1_B5_merge(BLACKBOX,4)
    conv2d1x1_B5_merge theconv2d1x1_B5_merge (
        .in_c0_exe101515_0(in_c0_exe101515_0),
        .in_c0_exe111526_0(in_c0_exe111526_0),
        .in_c0_exe31441_0(in_c0_exe31441_0),
        .in_c0_exe81492_0(in_c0_exe81492_0),
        .in_c0_exe91503_0(in_c0_exe91503_0),
        .in_c1_exe17_0(in_c1_exe17_0),
        .in_stall_in(bb_conv2d1x1_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe101515(conv2d1x1_B5_merge_out_c0_exe101515),
        .out_c0_exe111526(conv2d1x1_B5_merge_out_c0_exe111526),
        .out_c0_exe31441(conv2d1x1_B5_merge_out_c0_exe31441),
        .out_c0_exe81492(conv2d1x1_B5_merge_out_c0_exe81492),
        .out_c0_exe91503(conv2d1x1_B5_merge_out_c0_exe91503),
        .out_c1_exe17(conv2d1x1_B5_merge_out_c1_exe17),
        .out_stall_out_0(conv2d1x1_B5_merge_out_stall_out_0),
        .out_valid_out(conv2d1x1_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B5_stall_region(BLACKBOX,2)
    conv2d1x1_bb_B5_stall_region thebb_conv2d1x1_B5_stall_region (
        .in_c0_exe101515(conv2d1x1_B5_merge_out_c0_exe101515),
        .in_c0_exe111526(conv2d1x1_B5_merge_out_c0_exe111526),
        .in_c0_exe31441(conv2d1x1_B5_merge_out_c0_exe31441),
        .in_c0_exe81492(conv2d1x1_B5_merge_out_c0_exe81492),
        .in_c0_exe91503(conv2d1x1_B5_merge_out_c0_exe91503),
        .in_c1_exe17(conv2d1x1_B5_merge_out_c1_exe17),
        .in_flush(in_flush),
        .in_output_im(in_output_im),
        .in_stall_in(conv2d1x1_B5_branch_out_stall_out),
        .in_unnamed_conv2d1x110_conv2d1x1_avm_readdata(in_unnamed_conv2d1x110_conv2d1x1_avm_readdata),
        .in_unnamed_conv2d1x110_conv2d1x1_avm_readdatavalid(in_unnamed_conv2d1x110_conv2d1x1_avm_readdatavalid),
        .in_unnamed_conv2d1x110_conv2d1x1_avm_waitrequest(in_unnamed_conv2d1x110_conv2d1x1_avm_waitrequest),
        .in_unnamed_conv2d1x110_conv2d1x1_avm_writeack(in_unnamed_conv2d1x110_conv2d1x1_avm_writeack),
        .in_valid_in(conv2d1x1_B5_merge_out_valid_out),
        .out_c0_exe101515(bb_conv2d1x1_B5_stall_region_out_c0_exe101515),
        .out_c0_exe111526(bb_conv2d1x1_B5_stall_region_out_c0_exe111526),
        .out_lsu_unnamed_conv2d1x110_o_active(bb_conv2d1x1_B5_stall_region_out_lsu_unnamed_conv2d1x110_o_active),
        .out_stall_out(bb_conv2d1x1_B5_stall_region_out_stall_out),
        .out_unnamed_conv2d1x110_conv2d1x1_avm_address(bb_conv2d1x1_B5_stall_region_out_unnamed_conv2d1x110_conv2d1x1_avm_address),
        .out_unnamed_conv2d1x110_conv2d1x1_avm_burstcount(bb_conv2d1x1_B5_stall_region_out_unnamed_conv2d1x110_conv2d1x1_avm_burstcount),
        .out_unnamed_conv2d1x110_conv2d1x1_avm_byteenable(bb_conv2d1x1_B5_stall_region_out_unnamed_conv2d1x110_conv2d1x1_avm_byteenable),
        .out_unnamed_conv2d1x110_conv2d1x1_avm_enable(bb_conv2d1x1_B5_stall_region_out_unnamed_conv2d1x110_conv2d1x1_avm_enable),
        .out_unnamed_conv2d1x110_conv2d1x1_avm_read(bb_conv2d1x1_B5_stall_region_out_unnamed_conv2d1x110_conv2d1x1_avm_read),
        .out_unnamed_conv2d1x110_conv2d1x1_avm_write(bb_conv2d1x1_B5_stall_region_out_unnamed_conv2d1x110_conv2d1x1_avm_write),
        .out_unnamed_conv2d1x110_conv2d1x1_avm_writedata(bb_conv2d1x1_B5_stall_region_out_unnamed_conv2d1x110_conv2d1x1_avm_writedata),
        .out_valid_out(bb_conv2d1x1_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B5_branch(BLACKBOX,3)
    conv2d1x1_B5_branch theconv2d1x1_B5_branch (
        .in_c0_exe101515(bb_conv2d1x1_B5_stall_region_out_c0_exe101515),
        .in_c0_exe111526(bb_conv2d1x1_B5_stall_region_out_c0_exe111526),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv2d1x1_B5_stall_region_out_valid_out),
        .out_c0_exe101515(conv2d1x1_B5_branch_out_c0_exe101515),
        .out_stall_out(conv2d1x1_B5_branch_out_stall_out),
        .out_valid_out_0(conv2d1x1_B5_branch_out_valid_out_0),
        .out_valid_out_1(conv2d1x1_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe101515(GPOUT,24)
    assign out_c0_exe101515 = conv2d1x1_B5_branch_out_c0_exe101515;

    // out_lsu_unnamed_conv2d1x110_o_active(GPOUT,25)
    assign out_lsu_unnamed_conv2d1x110_o_active = bb_conv2d1x1_B5_stall_region_out_lsu_unnamed_conv2d1x110_o_active;

    // out_stall_in_0(GPOUT,26)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,27)
    assign out_stall_out_0 = conv2d1x1_B5_merge_out_stall_out_0;

    // out_unnamed_conv2d1x110_conv2d1x1_avm_address(GPOUT,28)
    assign out_unnamed_conv2d1x110_conv2d1x1_avm_address = bb_conv2d1x1_B5_stall_region_out_unnamed_conv2d1x110_conv2d1x1_avm_address;

    // out_unnamed_conv2d1x110_conv2d1x1_avm_burstcount(GPOUT,29)
    assign out_unnamed_conv2d1x110_conv2d1x1_avm_burstcount = bb_conv2d1x1_B5_stall_region_out_unnamed_conv2d1x110_conv2d1x1_avm_burstcount;

    // out_unnamed_conv2d1x110_conv2d1x1_avm_byteenable(GPOUT,30)
    assign out_unnamed_conv2d1x110_conv2d1x1_avm_byteenable = bb_conv2d1x1_B5_stall_region_out_unnamed_conv2d1x110_conv2d1x1_avm_byteenable;

    // out_unnamed_conv2d1x110_conv2d1x1_avm_enable(GPOUT,31)
    assign out_unnamed_conv2d1x110_conv2d1x1_avm_enable = bb_conv2d1x1_B5_stall_region_out_unnamed_conv2d1x110_conv2d1x1_avm_enable;

    // out_unnamed_conv2d1x110_conv2d1x1_avm_read(GPOUT,32)
    assign out_unnamed_conv2d1x110_conv2d1x1_avm_read = bb_conv2d1x1_B5_stall_region_out_unnamed_conv2d1x110_conv2d1x1_avm_read;

    // out_unnamed_conv2d1x110_conv2d1x1_avm_write(GPOUT,33)
    assign out_unnamed_conv2d1x110_conv2d1x1_avm_write = bb_conv2d1x1_B5_stall_region_out_unnamed_conv2d1x110_conv2d1x1_avm_write;

    // out_unnamed_conv2d1x110_conv2d1x1_avm_writedata(GPOUT,34)
    assign out_unnamed_conv2d1x110_conv2d1x1_avm_writedata = bb_conv2d1x1_B5_stall_region_out_unnamed_conv2d1x110_conv2d1x1_avm_writedata;

    // out_valid_out_0(GPOUT,35)
    assign out_valid_out_0 = conv2d1x1_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,36)
    assign out_valid_out_1 = conv2d1x1_B5_branch_out_valid_out_1;

endmodule
