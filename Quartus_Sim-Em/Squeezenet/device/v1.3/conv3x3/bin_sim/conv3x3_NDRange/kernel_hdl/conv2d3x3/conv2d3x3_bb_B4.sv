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

// SystemVerilog created from conv2d3x3_bb_B4
// SystemVerilog created on Tue May 30 12:30:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B4 (
    input wire [0:0] in_c0_exe1084_0,
    input wire [63:0] in_c0_exe114_0,
    input wire [0:0] in_c0_exe1193_0,
    input wire [31:0] in_c0_exe12104_0,
    input wire [31:0] in_c0_exe1254180_0,
    input wire [0:0] in_c0_exe13114_0,
    input wire [0:0] in_c0_exe14123_0,
    input wire [0:0] in_c0_exe15133_0,
    input wire [0:0] in_c0_exe16134_0,
    input wire [63:0] in_c0_exe316_0,
    input wire [0:0] in_c0_exe425_0,
    input wire [31:0] in_c0_exe536_0,
    input wire [31:0] in_c0_exe643_0,
    input wire [0:0] in_c0_exe755_0,
    input wire [0:0] in_c0_exe864_0,
    input wire [31:0] in_c0_exe974_0,
    input wire [0:0] in_flush,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [31:0] in_j_062143_0,
    input wire [31:0] in_output_size,
    input wire [31:0] in_pad,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_stride,
    input wire [31:0] in_unnamed_conv2d3x34_0,
    input wire [511:0] in_unnamed_conv2d3x36_conv2d3x3_avm_readdata,
    input wire [0:0] in_unnamed_conv2d3x36_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv2d3x36_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d3x36_conv2d3x3_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe1084,
    output wire [63:0] out_c0_exe114,
    output wire [0:0] out_c0_exe1193,
    output wire [31:0] out_c0_exe12104,
    output wire [0:0] out_c0_exe13114,
    output wire [0:0] out_c0_exe14123,
    output wire [0:0] out_c0_exe15133,
    output wire [0:0] out_c0_exe16134,
    output wire [63:0] out_c0_exe316,
    output wire [0:0] out_c0_exe425,
    output wire [31:0] out_c0_exe536,
    output wire [31:0] out_c0_exe643,
    output wire [0:0] out_c0_exe755,
    output wire [0:0] out_c0_exe864,
    output wire [31:0] out_c0_exe974,
    output wire [31:0] out_inc69,
    output wire [0:0] out_lsu_unnamed_conv2d3x36_o_active,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_conv2d3x34,
    output wire [30:0] out_unnamed_conv2d3x36_conv2d3x3_avm_address,
    output wire [4:0] out_unnamed_conv2d3x36_conv2d3x3_avm_burstcount,
    output wire [63:0] out_unnamed_conv2d3x36_conv2d3x3_avm_byteenable,
    output wire [0:0] out_unnamed_conv2d3x36_conv2d3x3_avm_enable,
    output wire [0:0] out_unnamed_conv2d3x36_conv2d3x3_avm_read,
    output wire [0:0] out_unnamed_conv2d3x36_conv2d3x3_avm_write,
    output wire [511:0] out_unnamed_conv2d3x36_conv2d3x3_avm_writedata,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv2d3x3_B4_stall_region_out_c0_exe1084;
    wire [63:0] bb_conv2d3x3_B4_stall_region_out_c0_exe114;
    wire [0:0] bb_conv2d3x3_B4_stall_region_out_c0_exe1193;
    wire [31:0] bb_conv2d3x3_B4_stall_region_out_c0_exe12104;
    wire [0:0] bb_conv2d3x3_B4_stall_region_out_c0_exe13114;
    wire [0:0] bb_conv2d3x3_B4_stall_region_out_c0_exe14123;
    wire [0:0] bb_conv2d3x3_B4_stall_region_out_c0_exe15133;
    wire [0:0] bb_conv2d3x3_B4_stall_region_out_c0_exe16134;
    wire [63:0] bb_conv2d3x3_B4_stall_region_out_c0_exe316;
    wire [0:0] bb_conv2d3x3_B4_stall_region_out_c0_exe425;
    wire [31:0] bb_conv2d3x3_B4_stall_region_out_c0_exe536;
    wire [31:0] bb_conv2d3x3_B4_stall_region_out_c0_exe643;
    wire [0:0] bb_conv2d3x3_B4_stall_region_out_c0_exe755;
    wire [0:0] bb_conv2d3x3_B4_stall_region_out_c0_exe864;
    wire [31:0] bb_conv2d3x3_B4_stall_region_out_c0_exe974;
    wire [31:0] bb_conv2d3x3_B4_stall_region_out_inc69;
    wire [0:0] bb_conv2d3x3_B4_stall_region_out_lsu_unnamed_conv2d3x36_o_active;
    wire [0:0] bb_conv2d3x3_B4_stall_region_out_stall_out;
    wire [31:0] bb_conv2d3x3_B4_stall_region_out_unnamed_conv2d3x34;
    wire [0:0] bb_conv2d3x3_B4_stall_region_out_unnamed_conv2d3x35;
    wire [30:0] bb_conv2d3x3_B4_stall_region_out_unnamed_conv2d3x36_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B4_stall_region_out_unnamed_conv2d3x36_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B4_stall_region_out_unnamed_conv2d3x36_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B4_stall_region_out_unnamed_conv2d3x36_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B4_stall_region_out_unnamed_conv2d3x36_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B4_stall_region_out_unnamed_conv2d3x36_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B4_stall_region_out_unnamed_conv2d3x36_conv2d3x3_avm_writedata;
    wire [0:0] bb_conv2d3x3_B4_stall_region_out_valid_out;
    wire [0:0] conv2d3x3_B4_branch_out_c0_exe1084;
    wire [63:0] conv2d3x3_B4_branch_out_c0_exe114;
    wire [0:0] conv2d3x3_B4_branch_out_c0_exe1193;
    wire [31:0] conv2d3x3_B4_branch_out_c0_exe12104;
    wire [0:0] conv2d3x3_B4_branch_out_c0_exe13114;
    wire [0:0] conv2d3x3_B4_branch_out_c0_exe14123;
    wire [0:0] conv2d3x3_B4_branch_out_c0_exe15133;
    wire [0:0] conv2d3x3_B4_branch_out_c0_exe16134;
    wire [63:0] conv2d3x3_B4_branch_out_c0_exe316;
    wire [0:0] conv2d3x3_B4_branch_out_c0_exe425;
    wire [31:0] conv2d3x3_B4_branch_out_c0_exe536;
    wire [31:0] conv2d3x3_B4_branch_out_c0_exe643;
    wire [0:0] conv2d3x3_B4_branch_out_c0_exe755;
    wire [0:0] conv2d3x3_B4_branch_out_c0_exe864;
    wire [31:0] conv2d3x3_B4_branch_out_c0_exe974;
    wire [31:0] conv2d3x3_B4_branch_out_inc69;
    wire [0:0] conv2d3x3_B4_branch_out_stall_out;
    wire [31:0] conv2d3x3_B4_branch_out_unnamed_conv2d3x34;
    wire [0:0] conv2d3x3_B4_branch_out_valid_out_0;
    wire [0:0] conv2d3x3_B4_branch_out_valid_out_1;
    wire [0:0] conv2d3x3_B4_merge_out_c0_exe1084;
    wire [63:0] conv2d3x3_B4_merge_out_c0_exe114;
    wire [0:0] conv2d3x3_B4_merge_out_c0_exe1193;
    wire [31:0] conv2d3x3_B4_merge_out_c0_exe12104;
    wire [31:0] conv2d3x3_B4_merge_out_c0_exe1254180;
    wire [0:0] conv2d3x3_B4_merge_out_c0_exe13114;
    wire [0:0] conv2d3x3_B4_merge_out_c0_exe14123;
    wire [0:0] conv2d3x3_B4_merge_out_c0_exe15133;
    wire [0:0] conv2d3x3_B4_merge_out_c0_exe16134;
    wire [63:0] conv2d3x3_B4_merge_out_c0_exe316;
    wire [0:0] conv2d3x3_B4_merge_out_c0_exe425;
    wire [31:0] conv2d3x3_B4_merge_out_c0_exe536;
    wire [31:0] conv2d3x3_B4_merge_out_c0_exe643;
    wire [0:0] conv2d3x3_B4_merge_out_c0_exe755;
    wire [0:0] conv2d3x3_B4_merge_out_c0_exe864;
    wire [31:0] conv2d3x3_B4_merge_out_c0_exe974;
    wire [31:0] conv2d3x3_B4_merge_out_j_062143;
    wire [0:0] conv2d3x3_B4_merge_out_stall_out_0;
    wire [31:0] conv2d3x3_B4_merge_out_unnamed_conv2d3x34;
    wire [0:0] conv2d3x3_B4_merge_out_valid_out;


    // conv2d3x3_B4_merge(BLACKBOX,4)
    conv2d3x3_B4_merge theconv2d3x3_B4_merge (
        .in_c0_exe1084_0(in_c0_exe1084_0),
        .in_c0_exe114_0(in_c0_exe114_0),
        .in_c0_exe1193_0(in_c0_exe1193_0),
        .in_c0_exe12104_0(in_c0_exe12104_0),
        .in_c0_exe1254180_0(in_c0_exe1254180_0),
        .in_c0_exe13114_0(in_c0_exe13114_0),
        .in_c0_exe14123_0(in_c0_exe14123_0),
        .in_c0_exe15133_0(in_c0_exe15133_0),
        .in_c0_exe16134_0(in_c0_exe16134_0),
        .in_c0_exe316_0(in_c0_exe316_0),
        .in_c0_exe425_0(in_c0_exe425_0),
        .in_c0_exe536_0(in_c0_exe536_0),
        .in_c0_exe643_0(in_c0_exe643_0),
        .in_c0_exe755_0(in_c0_exe755_0),
        .in_c0_exe864_0(in_c0_exe864_0),
        .in_c0_exe974_0(in_c0_exe974_0),
        .in_j_062143_0(in_j_062143_0),
        .in_stall_in(bb_conv2d3x3_B4_stall_region_out_stall_out),
        .in_unnamed_conv2d3x34_0(in_unnamed_conv2d3x34_0),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe1084(conv2d3x3_B4_merge_out_c0_exe1084),
        .out_c0_exe114(conv2d3x3_B4_merge_out_c0_exe114),
        .out_c0_exe1193(conv2d3x3_B4_merge_out_c0_exe1193),
        .out_c0_exe12104(conv2d3x3_B4_merge_out_c0_exe12104),
        .out_c0_exe1254180(conv2d3x3_B4_merge_out_c0_exe1254180),
        .out_c0_exe13114(conv2d3x3_B4_merge_out_c0_exe13114),
        .out_c0_exe14123(conv2d3x3_B4_merge_out_c0_exe14123),
        .out_c0_exe15133(conv2d3x3_B4_merge_out_c0_exe15133),
        .out_c0_exe16134(conv2d3x3_B4_merge_out_c0_exe16134),
        .out_c0_exe316(conv2d3x3_B4_merge_out_c0_exe316),
        .out_c0_exe425(conv2d3x3_B4_merge_out_c0_exe425),
        .out_c0_exe536(conv2d3x3_B4_merge_out_c0_exe536),
        .out_c0_exe643(conv2d3x3_B4_merge_out_c0_exe643),
        .out_c0_exe755(conv2d3x3_B4_merge_out_c0_exe755),
        .out_c0_exe864(conv2d3x3_B4_merge_out_c0_exe864),
        .out_c0_exe974(conv2d3x3_B4_merge_out_c0_exe974),
        .out_j_062143(conv2d3x3_B4_merge_out_j_062143),
        .out_stall_out_0(conv2d3x3_B4_merge_out_stall_out_0),
        .out_unnamed_conv2d3x34(conv2d3x3_B4_merge_out_unnamed_conv2d3x34),
        .out_valid_out(conv2d3x3_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B4_stall_region(BLACKBOX,2)
    conv2d3x3_bb_B4_stall_region thebb_conv2d3x3_B4_stall_region (
        .in_c0_exe1084(conv2d3x3_B4_merge_out_c0_exe1084),
        .in_c0_exe114(conv2d3x3_B4_merge_out_c0_exe114),
        .in_c0_exe1193(conv2d3x3_B4_merge_out_c0_exe1193),
        .in_c0_exe12104(conv2d3x3_B4_merge_out_c0_exe12104),
        .in_c0_exe1254180(conv2d3x3_B4_merge_out_c0_exe1254180),
        .in_c0_exe13114(conv2d3x3_B4_merge_out_c0_exe13114),
        .in_c0_exe14123(conv2d3x3_B4_merge_out_c0_exe14123),
        .in_c0_exe15133(conv2d3x3_B4_merge_out_c0_exe15133),
        .in_c0_exe16134(conv2d3x3_B4_merge_out_c0_exe16134),
        .in_c0_exe316(conv2d3x3_B4_merge_out_c0_exe316),
        .in_c0_exe425(conv2d3x3_B4_merge_out_c0_exe425),
        .in_c0_exe536(conv2d3x3_B4_merge_out_c0_exe536),
        .in_c0_exe643(conv2d3x3_B4_merge_out_c0_exe643),
        .in_c0_exe755(conv2d3x3_B4_merge_out_c0_exe755),
        .in_c0_exe864(conv2d3x3_B4_merge_out_c0_exe864),
        .in_c0_exe974(conv2d3x3_B4_merge_out_c0_exe974),
        .in_flush(in_flush),
        .in_j_062143(conv2d3x3_B4_merge_out_j_062143),
        .in_output_size(in_output_size),
        .in_stall_in(conv2d3x3_B4_branch_out_stall_out),
        .in_unnamed_conv2d3x34(conv2d3x3_B4_merge_out_unnamed_conv2d3x34),
        .in_unnamed_conv2d3x36_conv2d3x3_avm_readdata(in_unnamed_conv2d3x36_conv2d3x3_avm_readdata),
        .in_unnamed_conv2d3x36_conv2d3x3_avm_readdatavalid(in_unnamed_conv2d3x36_conv2d3x3_avm_readdatavalid),
        .in_unnamed_conv2d3x36_conv2d3x3_avm_waitrequest(in_unnamed_conv2d3x36_conv2d3x3_avm_waitrequest),
        .in_unnamed_conv2d3x36_conv2d3x3_avm_writeack(in_unnamed_conv2d3x36_conv2d3x3_avm_writeack),
        .in_valid_in(conv2d3x3_B4_merge_out_valid_out),
        .out_c0_exe1084(bb_conv2d3x3_B4_stall_region_out_c0_exe1084),
        .out_c0_exe114(bb_conv2d3x3_B4_stall_region_out_c0_exe114),
        .out_c0_exe1193(bb_conv2d3x3_B4_stall_region_out_c0_exe1193),
        .out_c0_exe12104(bb_conv2d3x3_B4_stall_region_out_c0_exe12104),
        .out_c0_exe13114(bb_conv2d3x3_B4_stall_region_out_c0_exe13114),
        .out_c0_exe14123(bb_conv2d3x3_B4_stall_region_out_c0_exe14123),
        .out_c0_exe15133(bb_conv2d3x3_B4_stall_region_out_c0_exe15133),
        .out_c0_exe16134(bb_conv2d3x3_B4_stall_region_out_c0_exe16134),
        .out_c0_exe316(bb_conv2d3x3_B4_stall_region_out_c0_exe316),
        .out_c0_exe425(bb_conv2d3x3_B4_stall_region_out_c0_exe425),
        .out_c0_exe536(bb_conv2d3x3_B4_stall_region_out_c0_exe536),
        .out_c0_exe643(bb_conv2d3x3_B4_stall_region_out_c0_exe643),
        .out_c0_exe755(bb_conv2d3x3_B4_stall_region_out_c0_exe755),
        .out_c0_exe864(bb_conv2d3x3_B4_stall_region_out_c0_exe864),
        .out_c0_exe974(bb_conv2d3x3_B4_stall_region_out_c0_exe974),
        .out_inc69(bb_conv2d3x3_B4_stall_region_out_inc69),
        .out_lsu_unnamed_conv2d3x36_o_active(bb_conv2d3x3_B4_stall_region_out_lsu_unnamed_conv2d3x36_o_active),
        .out_stall_out(bb_conv2d3x3_B4_stall_region_out_stall_out),
        .out_unnamed_conv2d3x34(bb_conv2d3x3_B4_stall_region_out_unnamed_conv2d3x34),
        .out_unnamed_conv2d3x35(bb_conv2d3x3_B4_stall_region_out_unnamed_conv2d3x35),
        .out_unnamed_conv2d3x36_conv2d3x3_avm_address(bb_conv2d3x3_B4_stall_region_out_unnamed_conv2d3x36_conv2d3x3_avm_address),
        .out_unnamed_conv2d3x36_conv2d3x3_avm_burstcount(bb_conv2d3x3_B4_stall_region_out_unnamed_conv2d3x36_conv2d3x3_avm_burstcount),
        .out_unnamed_conv2d3x36_conv2d3x3_avm_byteenable(bb_conv2d3x3_B4_stall_region_out_unnamed_conv2d3x36_conv2d3x3_avm_byteenable),
        .out_unnamed_conv2d3x36_conv2d3x3_avm_enable(bb_conv2d3x3_B4_stall_region_out_unnamed_conv2d3x36_conv2d3x3_avm_enable),
        .out_unnamed_conv2d3x36_conv2d3x3_avm_read(bb_conv2d3x3_B4_stall_region_out_unnamed_conv2d3x36_conv2d3x3_avm_read),
        .out_unnamed_conv2d3x36_conv2d3x3_avm_write(bb_conv2d3x3_B4_stall_region_out_unnamed_conv2d3x36_conv2d3x3_avm_write),
        .out_unnamed_conv2d3x36_conv2d3x3_avm_writedata(bb_conv2d3x3_B4_stall_region_out_unnamed_conv2d3x36_conv2d3x3_avm_writedata),
        .out_valid_out(bb_conv2d3x3_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d3x3_B4_branch(BLACKBOX,3)
    conv2d3x3_B4_branch theconv2d3x3_B4_branch (
        .in_c0_exe1084(bb_conv2d3x3_B4_stall_region_out_c0_exe1084),
        .in_c0_exe114(bb_conv2d3x3_B4_stall_region_out_c0_exe114),
        .in_c0_exe1193(bb_conv2d3x3_B4_stall_region_out_c0_exe1193),
        .in_c0_exe12104(bb_conv2d3x3_B4_stall_region_out_c0_exe12104),
        .in_c0_exe13114(bb_conv2d3x3_B4_stall_region_out_c0_exe13114),
        .in_c0_exe14123(bb_conv2d3x3_B4_stall_region_out_c0_exe14123),
        .in_c0_exe15133(bb_conv2d3x3_B4_stall_region_out_c0_exe15133),
        .in_c0_exe16134(bb_conv2d3x3_B4_stall_region_out_c0_exe16134),
        .in_c0_exe316(bb_conv2d3x3_B4_stall_region_out_c0_exe316),
        .in_c0_exe425(bb_conv2d3x3_B4_stall_region_out_c0_exe425),
        .in_c0_exe536(bb_conv2d3x3_B4_stall_region_out_c0_exe536),
        .in_c0_exe643(bb_conv2d3x3_B4_stall_region_out_c0_exe643),
        .in_c0_exe755(bb_conv2d3x3_B4_stall_region_out_c0_exe755),
        .in_c0_exe864(bb_conv2d3x3_B4_stall_region_out_c0_exe864),
        .in_c0_exe974(bb_conv2d3x3_B4_stall_region_out_c0_exe974),
        .in_inc69(bb_conv2d3x3_B4_stall_region_out_inc69),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_unnamed_conv2d3x34(bb_conv2d3x3_B4_stall_region_out_unnamed_conv2d3x34),
        .in_unnamed_conv2d3x35(bb_conv2d3x3_B4_stall_region_out_unnamed_conv2d3x35),
        .in_valid_in(bb_conv2d3x3_B4_stall_region_out_valid_out),
        .out_c0_exe1084(conv2d3x3_B4_branch_out_c0_exe1084),
        .out_c0_exe114(conv2d3x3_B4_branch_out_c0_exe114),
        .out_c0_exe1193(conv2d3x3_B4_branch_out_c0_exe1193),
        .out_c0_exe12104(conv2d3x3_B4_branch_out_c0_exe12104),
        .out_c0_exe13114(conv2d3x3_B4_branch_out_c0_exe13114),
        .out_c0_exe14123(conv2d3x3_B4_branch_out_c0_exe14123),
        .out_c0_exe15133(conv2d3x3_B4_branch_out_c0_exe15133),
        .out_c0_exe16134(conv2d3x3_B4_branch_out_c0_exe16134),
        .out_c0_exe316(conv2d3x3_B4_branch_out_c0_exe316),
        .out_c0_exe425(conv2d3x3_B4_branch_out_c0_exe425),
        .out_c0_exe536(conv2d3x3_B4_branch_out_c0_exe536),
        .out_c0_exe643(conv2d3x3_B4_branch_out_c0_exe643),
        .out_c0_exe755(conv2d3x3_B4_branch_out_c0_exe755),
        .out_c0_exe864(conv2d3x3_B4_branch_out_c0_exe864),
        .out_c0_exe974(conv2d3x3_B4_branch_out_c0_exe974),
        .out_inc69(conv2d3x3_B4_branch_out_inc69),
        .out_stall_out(conv2d3x3_B4_branch_out_stall_out),
        .out_unnamed_conv2d3x34(conv2d3x3_B4_branch_out_unnamed_conv2d3x34),
        .out_valid_out_0(conv2d3x3_B4_branch_out_valid_out_0),
        .out_valid_out_1(conv2d3x3_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1084(GPOUT,37)
    assign out_c0_exe1084 = conv2d3x3_B4_branch_out_c0_exe1084;

    // out_c0_exe114(GPOUT,38)
    assign out_c0_exe114 = conv2d3x3_B4_branch_out_c0_exe114;

    // out_c0_exe1193(GPOUT,39)
    assign out_c0_exe1193 = conv2d3x3_B4_branch_out_c0_exe1193;

    // out_c0_exe12104(GPOUT,40)
    assign out_c0_exe12104 = conv2d3x3_B4_branch_out_c0_exe12104;

    // out_c0_exe13114(GPOUT,41)
    assign out_c0_exe13114 = conv2d3x3_B4_branch_out_c0_exe13114;

    // out_c0_exe14123(GPOUT,42)
    assign out_c0_exe14123 = conv2d3x3_B4_branch_out_c0_exe14123;

    // out_c0_exe15133(GPOUT,43)
    assign out_c0_exe15133 = conv2d3x3_B4_branch_out_c0_exe15133;

    // out_c0_exe16134(GPOUT,44)
    assign out_c0_exe16134 = conv2d3x3_B4_branch_out_c0_exe16134;

    // out_c0_exe316(GPOUT,45)
    assign out_c0_exe316 = conv2d3x3_B4_branch_out_c0_exe316;

    // out_c0_exe425(GPOUT,46)
    assign out_c0_exe425 = conv2d3x3_B4_branch_out_c0_exe425;

    // out_c0_exe536(GPOUT,47)
    assign out_c0_exe536 = conv2d3x3_B4_branch_out_c0_exe536;

    // out_c0_exe643(GPOUT,48)
    assign out_c0_exe643 = conv2d3x3_B4_branch_out_c0_exe643;

    // out_c0_exe755(GPOUT,49)
    assign out_c0_exe755 = conv2d3x3_B4_branch_out_c0_exe755;

    // out_c0_exe864(GPOUT,50)
    assign out_c0_exe864 = conv2d3x3_B4_branch_out_c0_exe864;

    // out_c0_exe974(GPOUT,51)
    assign out_c0_exe974 = conv2d3x3_B4_branch_out_c0_exe974;

    // out_inc69(GPOUT,52)
    assign out_inc69 = conv2d3x3_B4_branch_out_inc69;

    // out_lsu_unnamed_conv2d3x36_o_active(GPOUT,53)
    assign out_lsu_unnamed_conv2d3x36_o_active = bb_conv2d3x3_B4_stall_region_out_lsu_unnamed_conv2d3x36_o_active;

    // out_stall_in_0(GPOUT,54)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,55)
    assign out_stall_out_0 = conv2d3x3_B4_merge_out_stall_out_0;

    // out_unnamed_conv2d3x34(GPOUT,56)
    assign out_unnamed_conv2d3x34 = conv2d3x3_B4_branch_out_unnamed_conv2d3x34;

    // out_unnamed_conv2d3x36_conv2d3x3_avm_address(GPOUT,57)
    assign out_unnamed_conv2d3x36_conv2d3x3_avm_address = bb_conv2d3x3_B4_stall_region_out_unnamed_conv2d3x36_conv2d3x3_avm_address;

    // out_unnamed_conv2d3x36_conv2d3x3_avm_burstcount(GPOUT,58)
    assign out_unnamed_conv2d3x36_conv2d3x3_avm_burstcount = bb_conv2d3x3_B4_stall_region_out_unnamed_conv2d3x36_conv2d3x3_avm_burstcount;

    // out_unnamed_conv2d3x36_conv2d3x3_avm_byteenable(GPOUT,59)
    assign out_unnamed_conv2d3x36_conv2d3x3_avm_byteenable = bb_conv2d3x3_B4_stall_region_out_unnamed_conv2d3x36_conv2d3x3_avm_byteenable;

    // out_unnamed_conv2d3x36_conv2d3x3_avm_enable(GPOUT,60)
    assign out_unnamed_conv2d3x36_conv2d3x3_avm_enable = bb_conv2d3x3_B4_stall_region_out_unnamed_conv2d3x36_conv2d3x3_avm_enable;

    // out_unnamed_conv2d3x36_conv2d3x3_avm_read(GPOUT,61)
    assign out_unnamed_conv2d3x36_conv2d3x3_avm_read = bb_conv2d3x3_B4_stall_region_out_unnamed_conv2d3x36_conv2d3x3_avm_read;

    // out_unnamed_conv2d3x36_conv2d3x3_avm_write(GPOUT,62)
    assign out_unnamed_conv2d3x36_conv2d3x3_avm_write = bb_conv2d3x3_B4_stall_region_out_unnamed_conv2d3x36_conv2d3x3_avm_write;

    // out_unnamed_conv2d3x36_conv2d3x3_avm_writedata(GPOUT,63)
    assign out_unnamed_conv2d3x36_conv2d3x3_avm_writedata = bb_conv2d3x3_B4_stall_region_out_unnamed_conv2d3x36_conv2d3x3_avm_writedata;

    // out_valid_out_0(GPOUT,64)
    assign out_valid_out_0 = conv2d3x3_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,65)
    assign out_valid_out_1 = conv2d3x3_B4_branch_out_valid_out_1;

endmodule
