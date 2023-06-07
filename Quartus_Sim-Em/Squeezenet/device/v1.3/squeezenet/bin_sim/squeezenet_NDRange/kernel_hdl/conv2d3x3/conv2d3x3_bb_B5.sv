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

// SystemVerilog created from conv2d3x3_bb_B5
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B5 (
    input wire [0:0] in_c0_exe1081_0,
    input wire [0:0] in_c0_exe1081_1,
    input wire [63:0] in_c0_exe111_0,
    input wire [63:0] in_c0_exe111_1,
    input wire [31:0] in_c0_exe1186151_0,
    input wire [31:0] in_c0_exe1186151_1,
    input wire [0:0] in_c0_exe1190_0,
    input wire [0:0] in_c0_exe1190_1,
    input wire [31:0] in_c0_exe1195167_0,
    input wire [31:0] in_c0_exe1195167_1,
    input wire [31:0] in_c0_exe12101_0,
    input wire [31:0] in_c0_exe12101_1,
    input wire [0:0] in_c0_exe13111_0,
    input wire [0:0] in_c0_exe13111_1,
    input wire [0:0] in_c0_exe14120_0,
    input wire [0:0] in_c0_exe14120_1,
    input wire [0:0] in_c0_exe15130_0,
    input wire [0:0] in_c0_exe15130_1,
    input wire [0:0] in_c0_exe16140_0,
    input wire [0:0] in_c0_exe16140_1,
    input wire [31:0] in_c0_exe2196168_0,
    input wire [31:0] in_c0_exe2196168_1,
    input wire [63:0] in_c0_exe322_0,
    input wire [63:0] in_c0_exe322_1,
    input wire [0:0] in_c0_exe431_0,
    input wire [0:0] in_c0_exe431_1,
    input wire [31:0] in_c0_exe542_0,
    input wire [31:0] in_c0_exe542_1,
    input wire [31:0] in_c0_exe649_0,
    input wire [31:0] in_c0_exe649_1,
    input wire [0:0] in_c0_exe752_0,
    input wire [0:0] in_c0_exe752_1,
    input wire [0:0] in_c0_exe861_0,
    input wire [0:0] in_c0_exe861_1,
    input wire [31:0] in_c0_exe971_0,
    input wire [31:0] in_c0_exe971_1,
    input wire [0:0] in_flush,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [31:0] in_j_062149_0,
    input wire [31:0] in_j_062149_1,
    input wire [31:0] in_k_059163_0,
    input wire [31:0] in_k_059163_1,
    input wire [511:0] in_lm13_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm13_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_lm13_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm13_conv2d3x3_avm_writeack,
    input wire [511:0] in_lm_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_lm_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm_conv2d3x3_avm_writeack,
    input wire [31:0] in_m_053_0,
    input wire [31:0] in_m_053_1,
    input wire [31:0] in_mul46_add4172_0,
    input wire [31:0] in_mul46_add4172_1,
    input wire [31:0] in_output_size,
    input wire [31:0] in_pad,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_stride,
    input wire [31:0] in_tmp_252_0,
    input wire [31:0] in_tmp_252_1,
    input wire [31:0] in_unnamed_conv2d3x37_0,
    input wire [31:0] in_unnamed_conv2d3x37_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe1081,
    output wire [63:0] out_c0_exe111,
    output wire [31:0] out_c0_exe1186151,
    output wire [0:0] out_c0_exe1190,
    output wire [31:0] out_c0_exe1195167,
    output wire [31:0] out_c0_exe12101,
    output wire [31:0] out_c0_exe1214,
    output wire [0:0] out_c0_exe13111,
    output wire [0:0] out_c0_exe14120,
    output wire [0:0] out_c0_exe15130,
    output wire [0:0] out_c0_exe16140,
    output wire [31:0] out_c0_exe2196168,
    output wire [63:0] out_c0_exe322,
    output wire [0:0] out_c0_exe431,
    output wire [31:0] out_c0_exe542,
    output wire [31:0] out_c0_exe649,
    output wire [0:0] out_c0_exe752,
    output wire [0:0] out_c0_exe861,
    output wire [31:0] out_c0_exe971,
    output wire [31:0] out_inc,
    output wire [31:0] out_j_062149,
    output wire [31:0] out_k_059163,
    output wire [30:0] out_lm13_conv2d3x3_avm_address,
    output wire [4:0] out_lm13_conv2d3x3_avm_burstcount,
    output wire [63:0] out_lm13_conv2d3x3_avm_byteenable,
    output wire [0:0] out_lm13_conv2d3x3_avm_enable,
    output wire [0:0] out_lm13_conv2d3x3_avm_read,
    output wire [0:0] out_lm13_conv2d3x3_avm_write,
    output wire [511:0] out_lm13_conv2d3x3_avm_writedata,
    output wire [30:0] out_lm_conv2d3x3_avm_address,
    output wire [4:0] out_lm_conv2d3x3_avm_burstcount,
    output wire [63:0] out_lm_conv2d3x3_avm_byteenable,
    output wire [0:0] out_lm_conv2d3x3_avm_enable,
    output wire [0:0] out_lm_conv2d3x3_avm_read,
    output wire [0:0] out_lm_conv2d3x3_avm_write,
    output wire [511:0] out_lm_conv2d3x3_avm_writedata,
    output wire [31:0] out_mul46_add4172,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_conv2d3x37,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv2d3x3_B5_stall_region_out_c0_exe1081;
    wire [63:0] bb_conv2d3x3_B5_stall_region_out_c0_exe111;
    wire [31:0] bb_conv2d3x3_B5_stall_region_out_c0_exe1186151;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_c0_exe1190;
    wire [31:0] bb_conv2d3x3_B5_stall_region_out_c0_exe1195167;
    wire [31:0] bb_conv2d3x3_B5_stall_region_out_c0_exe12101;
    wire [31:0] bb_conv2d3x3_B5_stall_region_out_c0_exe1214;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_c0_exe13111;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_c0_exe14120;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_c0_exe15130;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_c0_exe16140;
    wire [31:0] bb_conv2d3x3_B5_stall_region_out_c0_exe2196168;
    wire [63:0] bb_conv2d3x3_B5_stall_region_out_c0_exe322;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_c0_exe431;
    wire [31:0] bb_conv2d3x3_B5_stall_region_out_c0_exe542;
    wire [31:0] bb_conv2d3x3_B5_stall_region_out_c0_exe649;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_c0_exe752;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_c0_exe861;
    wire [31:0] bb_conv2d3x3_B5_stall_region_out_c0_exe971;
    wire [31:0] bb_conv2d3x3_B5_stall_region_out_inc;
    wire [31:0] bb_conv2d3x3_B5_stall_region_out_j_062149;
    wire [31:0] bb_conv2d3x3_B5_stall_region_out_k_059163;
    wire [30:0] bb_conv2d3x3_B5_stall_region_out_lm13_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B5_stall_region_out_lm13_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B5_stall_region_out_lm13_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_lm13_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_lm13_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_lm13_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B5_stall_region_out_lm13_conv2d3x3_avm_writedata;
    wire [30:0] bb_conv2d3x3_B5_stall_region_out_lm_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B5_stall_region_out_lm_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B5_stall_region_out_lm_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_lm_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_lm_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_lm_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B5_stall_region_out_lm_conv2d3x3_avm_writedata;
    wire [31:0] bb_conv2d3x3_B5_stall_region_out_mul46_add4172;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_stall_out;
    wire [31:0] bb_conv2d3x3_B5_stall_region_out_unnamed_conv2d3x37;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_unnamed_conv2d3x38;
    wire [0:0] bb_conv2d3x3_B5_stall_region_out_valid_out;
    wire [0:0] conv2d3x3_B5_branch_out_c0_exe1081;
    wire [63:0] conv2d3x3_B5_branch_out_c0_exe111;
    wire [31:0] conv2d3x3_B5_branch_out_c0_exe1186151;
    wire [0:0] conv2d3x3_B5_branch_out_c0_exe1190;
    wire [31:0] conv2d3x3_B5_branch_out_c0_exe1195167;
    wire [31:0] conv2d3x3_B5_branch_out_c0_exe12101;
    wire [31:0] conv2d3x3_B5_branch_out_c0_exe1214;
    wire [0:0] conv2d3x3_B5_branch_out_c0_exe13111;
    wire [0:0] conv2d3x3_B5_branch_out_c0_exe14120;
    wire [0:0] conv2d3x3_B5_branch_out_c0_exe15130;
    wire [0:0] conv2d3x3_B5_branch_out_c0_exe16140;
    wire [31:0] conv2d3x3_B5_branch_out_c0_exe2196168;
    wire [63:0] conv2d3x3_B5_branch_out_c0_exe322;
    wire [0:0] conv2d3x3_B5_branch_out_c0_exe431;
    wire [31:0] conv2d3x3_B5_branch_out_c0_exe542;
    wire [31:0] conv2d3x3_B5_branch_out_c0_exe649;
    wire [0:0] conv2d3x3_B5_branch_out_c0_exe752;
    wire [0:0] conv2d3x3_B5_branch_out_c0_exe861;
    wire [31:0] conv2d3x3_B5_branch_out_c0_exe971;
    wire [31:0] conv2d3x3_B5_branch_out_inc;
    wire [31:0] conv2d3x3_B5_branch_out_j_062149;
    wire [31:0] conv2d3x3_B5_branch_out_k_059163;
    wire [31:0] conv2d3x3_B5_branch_out_mul46_add4172;
    wire [0:0] conv2d3x3_B5_branch_out_stall_out;
    wire [31:0] conv2d3x3_B5_branch_out_unnamed_conv2d3x37;
    wire [0:0] conv2d3x3_B5_branch_out_valid_out_0;
    wire [0:0] conv2d3x3_B5_branch_out_valid_out_1;
    wire [0:0] conv2d3x3_B5_merge_out_c0_exe1081;
    wire [63:0] conv2d3x3_B5_merge_out_c0_exe111;
    wire [31:0] conv2d3x3_B5_merge_out_c0_exe1186151;
    wire [0:0] conv2d3x3_B5_merge_out_c0_exe1190;
    wire [31:0] conv2d3x3_B5_merge_out_c0_exe1195167;
    wire [31:0] conv2d3x3_B5_merge_out_c0_exe12101;
    wire [0:0] conv2d3x3_B5_merge_out_c0_exe13111;
    wire [0:0] conv2d3x3_B5_merge_out_c0_exe14120;
    wire [0:0] conv2d3x3_B5_merge_out_c0_exe15130;
    wire [0:0] conv2d3x3_B5_merge_out_c0_exe16140;
    wire [31:0] conv2d3x3_B5_merge_out_c0_exe2196168;
    wire [63:0] conv2d3x3_B5_merge_out_c0_exe322;
    wire [0:0] conv2d3x3_B5_merge_out_c0_exe431;
    wire [31:0] conv2d3x3_B5_merge_out_c0_exe542;
    wire [31:0] conv2d3x3_B5_merge_out_c0_exe649;
    wire [0:0] conv2d3x3_B5_merge_out_c0_exe752;
    wire [0:0] conv2d3x3_B5_merge_out_c0_exe861;
    wire [31:0] conv2d3x3_B5_merge_out_c0_exe971;
    wire [31:0] conv2d3x3_B5_merge_out_j_062149;
    wire [31:0] conv2d3x3_B5_merge_out_k_059163;
    wire [31:0] conv2d3x3_B5_merge_out_m_053;
    wire [31:0] conv2d3x3_B5_merge_out_mul46_add4172;
    wire [0:0] conv2d3x3_B5_merge_out_stall_out_0;
    wire [0:0] conv2d3x3_B5_merge_out_stall_out_1;
    wire [31:0] conv2d3x3_B5_merge_out_tmp_252;
    wire [31:0] conv2d3x3_B5_merge_out_unnamed_conv2d3x37;
    wire [0:0] conv2d3x3_B5_merge_out_valid_out;


    // conv2d3x3_B5_merge(BLACKBOX,4)
    conv2d3x3_B5_merge theconv2d3x3_B5_merge (
        .in_c0_exe1081_0(in_c0_exe1081_0),
        .in_c0_exe1081_1(in_c0_exe1081_1),
        .in_c0_exe111_0(in_c0_exe111_0),
        .in_c0_exe111_1(in_c0_exe111_1),
        .in_c0_exe1186151_0(in_c0_exe1186151_0),
        .in_c0_exe1186151_1(in_c0_exe1186151_1),
        .in_c0_exe1190_0(in_c0_exe1190_0),
        .in_c0_exe1190_1(in_c0_exe1190_1),
        .in_c0_exe1195167_0(in_c0_exe1195167_0),
        .in_c0_exe1195167_1(in_c0_exe1195167_1),
        .in_c0_exe12101_0(in_c0_exe12101_0),
        .in_c0_exe12101_1(in_c0_exe12101_1),
        .in_c0_exe13111_0(in_c0_exe13111_0),
        .in_c0_exe13111_1(in_c0_exe13111_1),
        .in_c0_exe14120_0(in_c0_exe14120_0),
        .in_c0_exe14120_1(in_c0_exe14120_1),
        .in_c0_exe15130_0(in_c0_exe15130_0),
        .in_c0_exe15130_1(in_c0_exe15130_1),
        .in_c0_exe16140_0(in_c0_exe16140_0),
        .in_c0_exe16140_1(in_c0_exe16140_1),
        .in_c0_exe2196168_0(in_c0_exe2196168_0),
        .in_c0_exe2196168_1(in_c0_exe2196168_1),
        .in_c0_exe322_0(in_c0_exe322_0),
        .in_c0_exe322_1(in_c0_exe322_1),
        .in_c0_exe431_0(in_c0_exe431_0),
        .in_c0_exe431_1(in_c0_exe431_1),
        .in_c0_exe542_0(in_c0_exe542_0),
        .in_c0_exe542_1(in_c0_exe542_1),
        .in_c0_exe649_0(in_c0_exe649_0),
        .in_c0_exe649_1(in_c0_exe649_1),
        .in_c0_exe752_0(in_c0_exe752_0),
        .in_c0_exe752_1(in_c0_exe752_1),
        .in_c0_exe861_0(in_c0_exe861_0),
        .in_c0_exe861_1(in_c0_exe861_1),
        .in_c0_exe971_0(in_c0_exe971_0),
        .in_c0_exe971_1(in_c0_exe971_1),
        .in_j_062149_0(in_j_062149_0),
        .in_j_062149_1(in_j_062149_1),
        .in_k_059163_0(in_k_059163_0),
        .in_k_059163_1(in_k_059163_1),
        .in_m_053_0(in_m_053_0),
        .in_m_053_1(in_m_053_1),
        .in_mul46_add4172_0(in_mul46_add4172_0),
        .in_mul46_add4172_1(in_mul46_add4172_1),
        .in_stall_in(bb_conv2d3x3_B5_stall_region_out_stall_out),
        .in_tmp_252_0(in_tmp_252_0),
        .in_tmp_252_1(in_tmp_252_1),
        .in_unnamed_conv2d3x37_0(in_unnamed_conv2d3x37_0),
        .in_unnamed_conv2d3x37_1(in_unnamed_conv2d3x37_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_c0_exe1081(conv2d3x3_B5_merge_out_c0_exe1081),
        .out_c0_exe111(conv2d3x3_B5_merge_out_c0_exe111),
        .out_c0_exe1186151(conv2d3x3_B5_merge_out_c0_exe1186151),
        .out_c0_exe1190(conv2d3x3_B5_merge_out_c0_exe1190),
        .out_c0_exe1195167(conv2d3x3_B5_merge_out_c0_exe1195167),
        .out_c0_exe12101(conv2d3x3_B5_merge_out_c0_exe12101),
        .out_c0_exe13111(conv2d3x3_B5_merge_out_c0_exe13111),
        .out_c0_exe14120(conv2d3x3_B5_merge_out_c0_exe14120),
        .out_c0_exe15130(conv2d3x3_B5_merge_out_c0_exe15130),
        .out_c0_exe16140(conv2d3x3_B5_merge_out_c0_exe16140),
        .out_c0_exe2196168(conv2d3x3_B5_merge_out_c0_exe2196168),
        .out_c0_exe322(conv2d3x3_B5_merge_out_c0_exe322),
        .out_c0_exe431(conv2d3x3_B5_merge_out_c0_exe431),
        .out_c0_exe542(conv2d3x3_B5_merge_out_c0_exe542),
        .out_c0_exe649(conv2d3x3_B5_merge_out_c0_exe649),
        .out_c0_exe752(conv2d3x3_B5_merge_out_c0_exe752),
        .out_c0_exe861(conv2d3x3_B5_merge_out_c0_exe861),
        .out_c0_exe971(conv2d3x3_B5_merge_out_c0_exe971),
        .out_j_062149(conv2d3x3_B5_merge_out_j_062149),
        .out_k_059163(conv2d3x3_B5_merge_out_k_059163),
        .out_m_053(conv2d3x3_B5_merge_out_m_053),
        .out_mul46_add4172(conv2d3x3_B5_merge_out_mul46_add4172),
        .out_stall_out_0(conv2d3x3_B5_merge_out_stall_out_0),
        .out_stall_out_1(conv2d3x3_B5_merge_out_stall_out_1),
        .out_tmp_252(conv2d3x3_B5_merge_out_tmp_252),
        .out_unnamed_conv2d3x37(conv2d3x3_B5_merge_out_unnamed_conv2d3x37),
        .out_valid_out(conv2d3x3_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B5_stall_region(BLACKBOX,2)
    conv2d3x3_bb_B5_stall_region thebb_conv2d3x3_B5_stall_region (
        .in_c0_exe1081(conv2d3x3_B5_merge_out_c0_exe1081),
        .in_c0_exe111(conv2d3x3_B5_merge_out_c0_exe111),
        .in_c0_exe1186151(conv2d3x3_B5_merge_out_c0_exe1186151),
        .in_c0_exe1190(conv2d3x3_B5_merge_out_c0_exe1190),
        .in_c0_exe1195167(conv2d3x3_B5_merge_out_c0_exe1195167),
        .in_c0_exe12101(conv2d3x3_B5_merge_out_c0_exe12101),
        .in_c0_exe13111(conv2d3x3_B5_merge_out_c0_exe13111),
        .in_c0_exe14120(conv2d3x3_B5_merge_out_c0_exe14120),
        .in_c0_exe15130(conv2d3x3_B5_merge_out_c0_exe15130),
        .in_c0_exe16140(conv2d3x3_B5_merge_out_c0_exe16140),
        .in_c0_exe2196168(conv2d3x3_B5_merge_out_c0_exe2196168),
        .in_c0_exe322(conv2d3x3_B5_merge_out_c0_exe322),
        .in_c0_exe431(conv2d3x3_B5_merge_out_c0_exe431),
        .in_c0_exe542(conv2d3x3_B5_merge_out_c0_exe542),
        .in_c0_exe649(conv2d3x3_B5_merge_out_c0_exe649),
        .in_c0_exe752(conv2d3x3_B5_merge_out_c0_exe752),
        .in_c0_exe861(conv2d3x3_B5_merge_out_c0_exe861),
        .in_c0_exe971(conv2d3x3_B5_merge_out_c0_exe971),
        .in_flush(in_flush),
        .in_input_im(in_input_im),
        .in_input_size(in_input_size),
        .in_j_062149(conv2d3x3_B5_merge_out_j_062149),
        .in_k_059163(conv2d3x3_B5_merge_out_k_059163),
        .in_lm13_conv2d3x3_avm_readdata(in_lm13_conv2d3x3_avm_readdata),
        .in_lm13_conv2d3x3_avm_readdatavalid(in_lm13_conv2d3x3_avm_readdatavalid),
        .in_lm13_conv2d3x3_avm_waitrequest(in_lm13_conv2d3x3_avm_waitrequest),
        .in_lm13_conv2d3x3_avm_writeack(in_lm13_conv2d3x3_avm_writeack),
        .in_lm_conv2d3x3_avm_readdata(in_lm_conv2d3x3_avm_readdata),
        .in_lm_conv2d3x3_avm_readdatavalid(in_lm_conv2d3x3_avm_readdatavalid),
        .in_lm_conv2d3x3_avm_waitrequest(in_lm_conv2d3x3_avm_waitrequest),
        .in_lm_conv2d3x3_avm_writeack(in_lm_conv2d3x3_avm_writeack),
        .in_m_053(conv2d3x3_B5_merge_out_m_053),
        .in_mul46_add4172(conv2d3x3_B5_merge_out_mul46_add4172),
        .in_stall_in(conv2d3x3_B5_branch_out_stall_out),
        .in_tmp_252(conv2d3x3_B5_merge_out_tmp_252),
        .in_unnamed_conv2d3x37(conv2d3x3_B5_merge_out_unnamed_conv2d3x37),
        .in_valid_in(conv2d3x3_B5_merge_out_valid_out),
        .out_c0_exe1081(bb_conv2d3x3_B5_stall_region_out_c0_exe1081),
        .out_c0_exe111(bb_conv2d3x3_B5_stall_region_out_c0_exe111),
        .out_c0_exe1186151(bb_conv2d3x3_B5_stall_region_out_c0_exe1186151),
        .out_c0_exe1190(bb_conv2d3x3_B5_stall_region_out_c0_exe1190),
        .out_c0_exe1195167(bb_conv2d3x3_B5_stall_region_out_c0_exe1195167),
        .out_c0_exe12101(bb_conv2d3x3_B5_stall_region_out_c0_exe12101),
        .out_c0_exe1214(bb_conv2d3x3_B5_stall_region_out_c0_exe1214),
        .out_c0_exe13111(bb_conv2d3x3_B5_stall_region_out_c0_exe13111),
        .out_c0_exe14120(bb_conv2d3x3_B5_stall_region_out_c0_exe14120),
        .out_c0_exe15130(bb_conv2d3x3_B5_stall_region_out_c0_exe15130),
        .out_c0_exe16140(bb_conv2d3x3_B5_stall_region_out_c0_exe16140),
        .out_c0_exe2196168(bb_conv2d3x3_B5_stall_region_out_c0_exe2196168),
        .out_c0_exe322(bb_conv2d3x3_B5_stall_region_out_c0_exe322),
        .out_c0_exe431(bb_conv2d3x3_B5_stall_region_out_c0_exe431),
        .out_c0_exe542(bb_conv2d3x3_B5_stall_region_out_c0_exe542),
        .out_c0_exe649(bb_conv2d3x3_B5_stall_region_out_c0_exe649),
        .out_c0_exe752(bb_conv2d3x3_B5_stall_region_out_c0_exe752),
        .out_c0_exe861(bb_conv2d3x3_B5_stall_region_out_c0_exe861),
        .out_c0_exe971(bb_conv2d3x3_B5_stall_region_out_c0_exe971),
        .out_inc(bb_conv2d3x3_B5_stall_region_out_inc),
        .out_j_062149(bb_conv2d3x3_B5_stall_region_out_j_062149),
        .out_k_059163(bb_conv2d3x3_B5_stall_region_out_k_059163),
        .out_lm13_conv2d3x3_avm_address(bb_conv2d3x3_B5_stall_region_out_lm13_conv2d3x3_avm_address),
        .out_lm13_conv2d3x3_avm_burstcount(bb_conv2d3x3_B5_stall_region_out_lm13_conv2d3x3_avm_burstcount),
        .out_lm13_conv2d3x3_avm_byteenable(bb_conv2d3x3_B5_stall_region_out_lm13_conv2d3x3_avm_byteenable),
        .out_lm13_conv2d3x3_avm_enable(bb_conv2d3x3_B5_stall_region_out_lm13_conv2d3x3_avm_enable),
        .out_lm13_conv2d3x3_avm_read(bb_conv2d3x3_B5_stall_region_out_lm13_conv2d3x3_avm_read),
        .out_lm13_conv2d3x3_avm_write(bb_conv2d3x3_B5_stall_region_out_lm13_conv2d3x3_avm_write),
        .out_lm13_conv2d3x3_avm_writedata(bb_conv2d3x3_B5_stall_region_out_lm13_conv2d3x3_avm_writedata),
        .out_lm_conv2d3x3_avm_address(bb_conv2d3x3_B5_stall_region_out_lm_conv2d3x3_avm_address),
        .out_lm_conv2d3x3_avm_burstcount(bb_conv2d3x3_B5_stall_region_out_lm_conv2d3x3_avm_burstcount),
        .out_lm_conv2d3x3_avm_byteenable(bb_conv2d3x3_B5_stall_region_out_lm_conv2d3x3_avm_byteenable),
        .out_lm_conv2d3x3_avm_enable(bb_conv2d3x3_B5_stall_region_out_lm_conv2d3x3_avm_enable),
        .out_lm_conv2d3x3_avm_read(bb_conv2d3x3_B5_stall_region_out_lm_conv2d3x3_avm_read),
        .out_lm_conv2d3x3_avm_write(bb_conv2d3x3_B5_stall_region_out_lm_conv2d3x3_avm_write),
        .out_lm_conv2d3x3_avm_writedata(bb_conv2d3x3_B5_stall_region_out_lm_conv2d3x3_avm_writedata),
        .out_mul46_add4172(bb_conv2d3x3_B5_stall_region_out_mul46_add4172),
        .out_stall_out(bb_conv2d3x3_B5_stall_region_out_stall_out),
        .out_unnamed_conv2d3x37(bb_conv2d3x3_B5_stall_region_out_unnamed_conv2d3x37),
        .out_unnamed_conv2d3x38(bb_conv2d3x3_B5_stall_region_out_unnamed_conv2d3x38),
        .out_valid_out(bb_conv2d3x3_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d3x3_B5_branch(BLACKBOX,3)
    conv2d3x3_B5_branch theconv2d3x3_B5_branch (
        .in_c0_exe1081(bb_conv2d3x3_B5_stall_region_out_c0_exe1081),
        .in_c0_exe111(bb_conv2d3x3_B5_stall_region_out_c0_exe111),
        .in_c0_exe1186151(bb_conv2d3x3_B5_stall_region_out_c0_exe1186151),
        .in_c0_exe1190(bb_conv2d3x3_B5_stall_region_out_c0_exe1190),
        .in_c0_exe1195167(bb_conv2d3x3_B5_stall_region_out_c0_exe1195167),
        .in_c0_exe12101(bb_conv2d3x3_B5_stall_region_out_c0_exe12101),
        .in_c0_exe1214(bb_conv2d3x3_B5_stall_region_out_c0_exe1214),
        .in_c0_exe13111(bb_conv2d3x3_B5_stall_region_out_c0_exe13111),
        .in_c0_exe14120(bb_conv2d3x3_B5_stall_region_out_c0_exe14120),
        .in_c0_exe15130(bb_conv2d3x3_B5_stall_region_out_c0_exe15130),
        .in_c0_exe16140(bb_conv2d3x3_B5_stall_region_out_c0_exe16140),
        .in_c0_exe2196168(bb_conv2d3x3_B5_stall_region_out_c0_exe2196168),
        .in_c0_exe322(bb_conv2d3x3_B5_stall_region_out_c0_exe322),
        .in_c0_exe431(bb_conv2d3x3_B5_stall_region_out_c0_exe431),
        .in_c0_exe542(bb_conv2d3x3_B5_stall_region_out_c0_exe542),
        .in_c0_exe649(bb_conv2d3x3_B5_stall_region_out_c0_exe649),
        .in_c0_exe752(bb_conv2d3x3_B5_stall_region_out_c0_exe752),
        .in_c0_exe861(bb_conv2d3x3_B5_stall_region_out_c0_exe861),
        .in_c0_exe971(bb_conv2d3x3_B5_stall_region_out_c0_exe971),
        .in_inc(bb_conv2d3x3_B5_stall_region_out_inc),
        .in_j_062149(bb_conv2d3x3_B5_stall_region_out_j_062149),
        .in_k_059163(bb_conv2d3x3_B5_stall_region_out_k_059163),
        .in_mul46_add4172(bb_conv2d3x3_B5_stall_region_out_mul46_add4172),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_unnamed_conv2d3x37(bb_conv2d3x3_B5_stall_region_out_unnamed_conv2d3x37),
        .in_unnamed_conv2d3x38(bb_conv2d3x3_B5_stall_region_out_unnamed_conv2d3x38),
        .in_valid_in(bb_conv2d3x3_B5_stall_region_out_valid_out),
        .out_c0_exe1081(conv2d3x3_B5_branch_out_c0_exe1081),
        .out_c0_exe111(conv2d3x3_B5_branch_out_c0_exe111),
        .out_c0_exe1186151(conv2d3x3_B5_branch_out_c0_exe1186151),
        .out_c0_exe1190(conv2d3x3_B5_branch_out_c0_exe1190),
        .out_c0_exe1195167(conv2d3x3_B5_branch_out_c0_exe1195167),
        .out_c0_exe12101(conv2d3x3_B5_branch_out_c0_exe12101),
        .out_c0_exe1214(conv2d3x3_B5_branch_out_c0_exe1214),
        .out_c0_exe13111(conv2d3x3_B5_branch_out_c0_exe13111),
        .out_c0_exe14120(conv2d3x3_B5_branch_out_c0_exe14120),
        .out_c0_exe15130(conv2d3x3_B5_branch_out_c0_exe15130),
        .out_c0_exe16140(conv2d3x3_B5_branch_out_c0_exe16140),
        .out_c0_exe2196168(conv2d3x3_B5_branch_out_c0_exe2196168),
        .out_c0_exe322(conv2d3x3_B5_branch_out_c0_exe322),
        .out_c0_exe431(conv2d3x3_B5_branch_out_c0_exe431),
        .out_c0_exe542(conv2d3x3_B5_branch_out_c0_exe542),
        .out_c0_exe649(conv2d3x3_B5_branch_out_c0_exe649),
        .out_c0_exe752(conv2d3x3_B5_branch_out_c0_exe752),
        .out_c0_exe861(conv2d3x3_B5_branch_out_c0_exe861),
        .out_c0_exe971(conv2d3x3_B5_branch_out_c0_exe971),
        .out_inc(conv2d3x3_B5_branch_out_inc),
        .out_j_062149(conv2d3x3_B5_branch_out_j_062149),
        .out_k_059163(conv2d3x3_B5_branch_out_k_059163),
        .out_mul46_add4172(conv2d3x3_B5_branch_out_mul46_add4172),
        .out_stall_out(conv2d3x3_B5_branch_out_stall_out),
        .out_unnamed_conv2d3x37(conv2d3x3_B5_branch_out_unnamed_conv2d3x37),
        .out_valid_out_0(conv2d3x3_B5_branch_out_valid_out_0),
        .out_valid_out_1(conv2d3x3_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1081(GPOUT,72)
    assign out_c0_exe1081 = conv2d3x3_B5_branch_out_c0_exe1081;

    // out_c0_exe111(GPOUT,73)
    assign out_c0_exe111 = conv2d3x3_B5_branch_out_c0_exe111;

    // out_c0_exe1186151(GPOUT,74)
    assign out_c0_exe1186151 = conv2d3x3_B5_branch_out_c0_exe1186151;

    // out_c0_exe1190(GPOUT,75)
    assign out_c0_exe1190 = conv2d3x3_B5_branch_out_c0_exe1190;

    // out_c0_exe1195167(GPOUT,76)
    assign out_c0_exe1195167 = conv2d3x3_B5_branch_out_c0_exe1195167;

    // out_c0_exe12101(GPOUT,77)
    assign out_c0_exe12101 = conv2d3x3_B5_branch_out_c0_exe12101;

    // out_c0_exe1214(GPOUT,78)
    assign out_c0_exe1214 = conv2d3x3_B5_branch_out_c0_exe1214;

    // out_c0_exe13111(GPOUT,79)
    assign out_c0_exe13111 = conv2d3x3_B5_branch_out_c0_exe13111;

    // out_c0_exe14120(GPOUT,80)
    assign out_c0_exe14120 = conv2d3x3_B5_branch_out_c0_exe14120;

    // out_c0_exe15130(GPOUT,81)
    assign out_c0_exe15130 = conv2d3x3_B5_branch_out_c0_exe15130;

    // out_c0_exe16140(GPOUT,82)
    assign out_c0_exe16140 = conv2d3x3_B5_branch_out_c0_exe16140;

    // out_c0_exe2196168(GPOUT,83)
    assign out_c0_exe2196168 = conv2d3x3_B5_branch_out_c0_exe2196168;

    // out_c0_exe322(GPOUT,84)
    assign out_c0_exe322 = conv2d3x3_B5_branch_out_c0_exe322;

    // out_c0_exe431(GPOUT,85)
    assign out_c0_exe431 = conv2d3x3_B5_branch_out_c0_exe431;

    // out_c0_exe542(GPOUT,86)
    assign out_c0_exe542 = conv2d3x3_B5_branch_out_c0_exe542;

    // out_c0_exe649(GPOUT,87)
    assign out_c0_exe649 = conv2d3x3_B5_branch_out_c0_exe649;

    // out_c0_exe752(GPOUT,88)
    assign out_c0_exe752 = conv2d3x3_B5_branch_out_c0_exe752;

    // out_c0_exe861(GPOUT,89)
    assign out_c0_exe861 = conv2d3x3_B5_branch_out_c0_exe861;

    // out_c0_exe971(GPOUT,90)
    assign out_c0_exe971 = conv2d3x3_B5_branch_out_c0_exe971;

    // out_inc(GPOUT,91)
    assign out_inc = conv2d3x3_B5_branch_out_inc;

    // out_j_062149(GPOUT,92)
    assign out_j_062149 = conv2d3x3_B5_branch_out_j_062149;

    // out_k_059163(GPOUT,93)
    assign out_k_059163 = conv2d3x3_B5_branch_out_k_059163;

    // out_lm13_conv2d3x3_avm_address(GPOUT,94)
    assign out_lm13_conv2d3x3_avm_address = bb_conv2d3x3_B5_stall_region_out_lm13_conv2d3x3_avm_address;

    // out_lm13_conv2d3x3_avm_burstcount(GPOUT,95)
    assign out_lm13_conv2d3x3_avm_burstcount = bb_conv2d3x3_B5_stall_region_out_lm13_conv2d3x3_avm_burstcount;

    // out_lm13_conv2d3x3_avm_byteenable(GPOUT,96)
    assign out_lm13_conv2d3x3_avm_byteenable = bb_conv2d3x3_B5_stall_region_out_lm13_conv2d3x3_avm_byteenable;

    // out_lm13_conv2d3x3_avm_enable(GPOUT,97)
    assign out_lm13_conv2d3x3_avm_enable = bb_conv2d3x3_B5_stall_region_out_lm13_conv2d3x3_avm_enable;

    // out_lm13_conv2d3x3_avm_read(GPOUT,98)
    assign out_lm13_conv2d3x3_avm_read = bb_conv2d3x3_B5_stall_region_out_lm13_conv2d3x3_avm_read;

    // out_lm13_conv2d3x3_avm_write(GPOUT,99)
    assign out_lm13_conv2d3x3_avm_write = bb_conv2d3x3_B5_stall_region_out_lm13_conv2d3x3_avm_write;

    // out_lm13_conv2d3x3_avm_writedata(GPOUT,100)
    assign out_lm13_conv2d3x3_avm_writedata = bb_conv2d3x3_B5_stall_region_out_lm13_conv2d3x3_avm_writedata;

    // out_lm_conv2d3x3_avm_address(GPOUT,101)
    assign out_lm_conv2d3x3_avm_address = bb_conv2d3x3_B5_stall_region_out_lm_conv2d3x3_avm_address;

    // out_lm_conv2d3x3_avm_burstcount(GPOUT,102)
    assign out_lm_conv2d3x3_avm_burstcount = bb_conv2d3x3_B5_stall_region_out_lm_conv2d3x3_avm_burstcount;

    // out_lm_conv2d3x3_avm_byteenable(GPOUT,103)
    assign out_lm_conv2d3x3_avm_byteenable = bb_conv2d3x3_B5_stall_region_out_lm_conv2d3x3_avm_byteenable;

    // out_lm_conv2d3x3_avm_enable(GPOUT,104)
    assign out_lm_conv2d3x3_avm_enable = bb_conv2d3x3_B5_stall_region_out_lm_conv2d3x3_avm_enable;

    // out_lm_conv2d3x3_avm_read(GPOUT,105)
    assign out_lm_conv2d3x3_avm_read = bb_conv2d3x3_B5_stall_region_out_lm_conv2d3x3_avm_read;

    // out_lm_conv2d3x3_avm_write(GPOUT,106)
    assign out_lm_conv2d3x3_avm_write = bb_conv2d3x3_B5_stall_region_out_lm_conv2d3x3_avm_write;

    // out_lm_conv2d3x3_avm_writedata(GPOUT,107)
    assign out_lm_conv2d3x3_avm_writedata = bb_conv2d3x3_B5_stall_region_out_lm_conv2d3x3_avm_writedata;

    // out_mul46_add4172(GPOUT,108)
    assign out_mul46_add4172 = conv2d3x3_B5_branch_out_mul46_add4172;

    // out_stall_in_0(GPOUT,109)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,110)
    assign out_stall_out_0 = conv2d3x3_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,111)
    assign out_stall_out_1 = conv2d3x3_B5_merge_out_stall_out_1;

    // out_unnamed_conv2d3x37(GPOUT,112)
    assign out_unnamed_conv2d3x37 = conv2d3x3_B5_branch_out_unnamed_conv2d3x37;

    // out_valid_in_0(GPOUT,113)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,114)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,115)
    assign out_valid_out_0 = conv2d3x3_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,116)
    assign out_valid_out_1 = conv2d3x3_B5_branch_out_valid_out_1;

endmodule
