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

// SystemVerilog created from conv2d3x3_bb_B9
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B9 (
    input wire [31:0] in_add48_2178_0,
    input wire [31:0] in_add48_2178_1,
    input wire [0:0] in_c0_exe1086_0,
    input wire [0:0] in_c0_exe1086_1,
    input wire [31:0] in_c0_exe1186154_0,
    input wire [31:0] in_c0_exe1186154_1,
    input wire [0:0] in_c0_exe1196_0,
    input wire [0:0] in_c0_exe1196_1,
    input wire [31:0] in_c0_exe12106_0,
    input wire [31:0] in_c0_exe12106_1,
    input wire [31:0] in_c0_exe1242177_0,
    input wire [31:0] in_c0_exe1242177_1,
    input wire [0:0] in_c0_exe13107_0,
    input wire [0:0] in_c0_exe13107_1,
    input wire [0:0] in_c0_exe14116_0,
    input wire [0:0] in_c0_exe14116_1,
    input wire [0:0] in_c0_exe15126_0,
    input wire [0:0] in_c0_exe15126_1,
    input wire [0:0] in_c0_exe16136_0,
    input wire [0:0] in_c0_exe16136_1,
    input wire [63:0] in_c0_exe17_0,
    input wire [63:0] in_c0_exe17_1,
    input wire [63:0] in_c0_exe318_0,
    input wire [63:0] in_c0_exe318_1,
    input wire [0:0] in_c0_exe427_0,
    input wire [0:0] in_c0_exe427_1,
    input wire [31:0] in_c0_exe538_0,
    input wire [31:0] in_c0_exe538_1,
    input wire [31:0] in_c0_exe645_0,
    input wire [31:0] in_c0_exe645_1,
    input wire [0:0] in_c0_exe757_0,
    input wire [0:0] in_c0_exe757_1,
    input wire [0:0] in_c0_exe866_0,
    input wire [0:0] in_c0_exe866_1,
    input wire [31:0] in_c0_exe976_0,
    input wire [31:0] in_c0_exe976_1,
    input wire [0:0] in_flush,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [31:0] in_j_062145_0,
    input wire [31:0] in_j_062145_1,
    input wire [31:0] in_k_059159_0,
    input wire [31:0] in_k_059159_1,
    input wire [511:0] in_lm25_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm25_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_lm25_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm25_conv2d3x3_avm_writeack,
    input wire [511:0] in_lm27_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm27_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_lm27_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm27_conv2d3x3_avm_writeack,
    input wire [31:0] in_m_053_2_0,
    input wire [31:0] in_m_053_2_1,
    input wire [31:0] in_output_size,
    input wire [31:0] in_pad,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_stride,
    input wire [31:0] in_tmp_252_2_0,
    input wire [31:0] in_tmp_252_2_1,
    input wire [31:0] in_unnamed_conv2d3x313_0,
    input wire [31:0] in_unnamed_conv2d3x313_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_add48_2178,
    output wire [0:0] out_c0_exe1086,
    output wire [31:0] out_c0_exe1186154,
    output wire [0:0] out_c0_exe1196,
    output wire [31:0] out_c0_exe12106,
    output wire [31:0] out_c0_exe1242177,
    output wire [31:0] out_c0_exe1254,
    output wire [0:0] out_c0_exe13107,
    output wire [0:0] out_c0_exe14116,
    output wire [0:0] out_c0_exe15126,
    output wire [0:0] out_c0_exe16136,
    output wire [63:0] out_c0_exe17,
    output wire [63:0] out_c0_exe318,
    output wire [0:0] out_c0_exe427,
    output wire [31:0] out_c0_exe538,
    output wire [31:0] out_c0_exe645,
    output wire [0:0] out_c0_exe757,
    output wire [0:0] out_c0_exe866,
    output wire [31:0] out_c0_exe976,
    output wire [31:0] out_inc_2,
    output wire [31:0] out_j_062145,
    output wire [31:0] out_k_059159,
    output wire [30:0] out_lm25_conv2d3x3_avm_address,
    output wire [4:0] out_lm25_conv2d3x3_avm_burstcount,
    output wire [63:0] out_lm25_conv2d3x3_avm_byteenable,
    output wire [0:0] out_lm25_conv2d3x3_avm_enable,
    output wire [0:0] out_lm25_conv2d3x3_avm_read,
    output wire [0:0] out_lm25_conv2d3x3_avm_write,
    output wire [511:0] out_lm25_conv2d3x3_avm_writedata,
    output wire [30:0] out_lm27_conv2d3x3_avm_address,
    output wire [4:0] out_lm27_conv2d3x3_avm_burstcount,
    output wire [63:0] out_lm27_conv2d3x3_avm_byteenable,
    output wire [0:0] out_lm27_conv2d3x3_avm_enable,
    output wire [0:0] out_lm27_conv2d3x3_avm_read,
    output wire [0:0] out_lm27_conv2d3x3_avm_write,
    output wire [511:0] out_lm27_conv2d3x3_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_conv2d3x313,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_conv2d3x3_B9_stall_region_out_add48_2178;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe1086;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_c0_exe1186154;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe1196;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_c0_exe12106;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_c0_exe1242177;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_c0_exe1254;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe13107;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe14116;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe15126;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe16136;
    wire [63:0] bb_conv2d3x3_B9_stall_region_out_c0_exe17;
    wire [63:0] bb_conv2d3x3_B9_stall_region_out_c0_exe318;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe427;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_c0_exe538;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_c0_exe645;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe757;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_c0_exe866;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_c0_exe976;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_inc_2;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_j_062145;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_k_059159;
    wire [30:0] bb_conv2d3x3_B9_stall_region_out_lm25_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B9_stall_region_out_lm25_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B9_stall_region_out_lm25_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_lm25_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_lm25_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_lm25_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B9_stall_region_out_lm25_conv2d3x3_avm_writedata;
    wire [30:0] bb_conv2d3x3_B9_stall_region_out_lm27_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B9_stall_region_out_lm27_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B9_stall_region_out_lm27_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_lm27_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_lm27_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_lm27_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B9_stall_region_out_lm27_conv2d3x3_avm_writedata;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_stall_out;
    wire [31:0] bb_conv2d3x3_B9_stall_region_out_unnamed_conv2d3x313;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_unnamed_conv2d3x314;
    wire [0:0] bb_conv2d3x3_B9_stall_region_out_valid_out;
    wire [31:0] conv2d3x3_B9_branch_out_add48_2178;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe1086;
    wire [31:0] conv2d3x3_B9_branch_out_c0_exe1186154;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe1196;
    wire [31:0] conv2d3x3_B9_branch_out_c0_exe12106;
    wire [31:0] conv2d3x3_B9_branch_out_c0_exe1242177;
    wire [31:0] conv2d3x3_B9_branch_out_c0_exe1254;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe13107;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe14116;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe15126;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe16136;
    wire [63:0] conv2d3x3_B9_branch_out_c0_exe17;
    wire [63:0] conv2d3x3_B9_branch_out_c0_exe318;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe427;
    wire [31:0] conv2d3x3_B9_branch_out_c0_exe538;
    wire [31:0] conv2d3x3_B9_branch_out_c0_exe645;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe757;
    wire [0:0] conv2d3x3_B9_branch_out_c0_exe866;
    wire [31:0] conv2d3x3_B9_branch_out_c0_exe976;
    wire [31:0] conv2d3x3_B9_branch_out_inc_2;
    wire [31:0] conv2d3x3_B9_branch_out_j_062145;
    wire [31:0] conv2d3x3_B9_branch_out_k_059159;
    wire [0:0] conv2d3x3_B9_branch_out_stall_out;
    wire [31:0] conv2d3x3_B9_branch_out_unnamed_conv2d3x313;
    wire [0:0] conv2d3x3_B9_branch_out_valid_out_0;
    wire [0:0] conv2d3x3_B9_branch_out_valid_out_1;
    wire [31:0] conv2d3x3_B9_merge_out_add48_2178;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe1086;
    wire [31:0] conv2d3x3_B9_merge_out_c0_exe1186154;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe1196;
    wire [31:0] conv2d3x3_B9_merge_out_c0_exe12106;
    wire [31:0] conv2d3x3_B9_merge_out_c0_exe1242177;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe13107;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe14116;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe15126;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe16136;
    wire [63:0] conv2d3x3_B9_merge_out_c0_exe17;
    wire [63:0] conv2d3x3_B9_merge_out_c0_exe318;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe427;
    wire [31:0] conv2d3x3_B9_merge_out_c0_exe538;
    wire [31:0] conv2d3x3_B9_merge_out_c0_exe645;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe757;
    wire [0:0] conv2d3x3_B9_merge_out_c0_exe866;
    wire [31:0] conv2d3x3_B9_merge_out_c0_exe976;
    wire [31:0] conv2d3x3_B9_merge_out_j_062145;
    wire [31:0] conv2d3x3_B9_merge_out_k_059159;
    wire [31:0] conv2d3x3_B9_merge_out_m_053_2;
    wire [0:0] conv2d3x3_B9_merge_out_stall_out_0;
    wire [0:0] conv2d3x3_B9_merge_out_stall_out_1;
    wire [31:0] conv2d3x3_B9_merge_out_tmp_252_2;
    wire [31:0] conv2d3x3_B9_merge_out_unnamed_conv2d3x313;
    wire [0:0] conv2d3x3_B9_merge_out_valid_out;


    // conv2d3x3_B9_merge(BLACKBOX,4)
    conv2d3x3_B9_merge theconv2d3x3_B9_merge (
        .in_add48_2178_0(in_add48_2178_0),
        .in_add48_2178_1(in_add48_2178_1),
        .in_c0_exe1086_0(in_c0_exe1086_0),
        .in_c0_exe1086_1(in_c0_exe1086_1),
        .in_c0_exe1186154_0(in_c0_exe1186154_0),
        .in_c0_exe1186154_1(in_c0_exe1186154_1),
        .in_c0_exe1196_0(in_c0_exe1196_0),
        .in_c0_exe1196_1(in_c0_exe1196_1),
        .in_c0_exe12106_0(in_c0_exe12106_0),
        .in_c0_exe12106_1(in_c0_exe12106_1),
        .in_c0_exe1242177_0(in_c0_exe1242177_0),
        .in_c0_exe1242177_1(in_c0_exe1242177_1),
        .in_c0_exe13107_0(in_c0_exe13107_0),
        .in_c0_exe13107_1(in_c0_exe13107_1),
        .in_c0_exe14116_0(in_c0_exe14116_0),
        .in_c0_exe14116_1(in_c0_exe14116_1),
        .in_c0_exe15126_0(in_c0_exe15126_0),
        .in_c0_exe15126_1(in_c0_exe15126_1),
        .in_c0_exe16136_0(in_c0_exe16136_0),
        .in_c0_exe16136_1(in_c0_exe16136_1),
        .in_c0_exe17_0(in_c0_exe17_0),
        .in_c0_exe17_1(in_c0_exe17_1),
        .in_c0_exe318_0(in_c0_exe318_0),
        .in_c0_exe318_1(in_c0_exe318_1),
        .in_c0_exe427_0(in_c0_exe427_0),
        .in_c0_exe427_1(in_c0_exe427_1),
        .in_c0_exe538_0(in_c0_exe538_0),
        .in_c0_exe538_1(in_c0_exe538_1),
        .in_c0_exe645_0(in_c0_exe645_0),
        .in_c0_exe645_1(in_c0_exe645_1),
        .in_c0_exe757_0(in_c0_exe757_0),
        .in_c0_exe757_1(in_c0_exe757_1),
        .in_c0_exe866_0(in_c0_exe866_0),
        .in_c0_exe866_1(in_c0_exe866_1),
        .in_c0_exe976_0(in_c0_exe976_0),
        .in_c0_exe976_1(in_c0_exe976_1),
        .in_j_062145_0(in_j_062145_0),
        .in_j_062145_1(in_j_062145_1),
        .in_k_059159_0(in_k_059159_0),
        .in_k_059159_1(in_k_059159_1),
        .in_m_053_2_0(in_m_053_2_0),
        .in_m_053_2_1(in_m_053_2_1),
        .in_stall_in(bb_conv2d3x3_B9_stall_region_out_stall_out),
        .in_tmp_252_2_0(in_tmp_252_2_0),
        .in_tmp_252_2_1(in_tmp_252_2_1),
        .in_unnamed_conv2d3x313_0(in_unnamed_conv2d3x313_0),
        .in_unnamed_conv2d3x313_1(in_unnamed_conv2d3x313_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add48_2178(conv2d3x3_B9_merge_out_add48_2178),
        .out_c0_exe1086(conv2d3x3_B9_merge_out_c0_exe1086),
        .out_c0_exe1186154(conv2d3x3_B9_merge_out_c0_exe1186154),
        .out_c0_exe1196(conv2d3x3_B9_merge_out_c0_exe1196),
        .out_c0_exe12106(conv2d3x3_B9_merge_out_c0_exe12106),
        .out_c0_exe1242177(conv2d3x3_B9_merge_out_c0_exe1242177),
        .out_c0_exe13107(conv2d3x3_B9_merge_out_c0_exe13107),
        .out_c0_exe14116(conv2d3x3_B9_merge_out_c0_exe14116),
        .out_c0_exe15126(conv2d3x3_B9_merge_out_c0_exe15126),
        .out_c0_exe16136(conv2d3x3_B9_merge_out_c0_exe16136),
        .out_c0_exe17(conv2d3x3_B9_merge_out_c0_exe17),
        .out_c0_exe318(conv2d3x3_B9_merge_out_c0_exe318),
        .out_c0_exe427(conv2d3x3_B9_merge_out_c0_exe427),
        .out_c0_exe538(conv2d3x3_B9_merge_out_c0_exe538),
        .out_c0_exe645(conv2d3x3_B9_merge_out_c0_exe645),
        .out_c0_exe757(conv2d3x3_B9_merge_out_c0_exe757),
        .out_c0_exe866(conv2d3x3_B9_merge_out_c0_exe866),
        .out_c0_exe976(conv2d3x3_B9_merge_out_c0_exe976),
        .out_j_062145(conv2d3x3_B9_merge_out_j_062145),
        .out_k_059159(conv2d3x3_B9_merge_out_k_059159),
        .out_m_053_2(conv2d3x3_B9_merge_out_m_053_2),
        .out_stall_out_0(conv2d3x3_B9_merge_out_stall_out_0),
        .out_stall_out_1(conv2d3x3_B9_merge_out_stall_out_1),
        .out_tmp_252_2(conv2d3x3_B9_merge_out_tmp_252_2),
        .out_unnamed_conv2d3x313(conv2d3x3_B9_merge_out_unnamed_conv2d3x313),
        .out_valid_out(conv2d3x3_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B9_stall_region(BLACKBOX,2)
    conv2d3x3_bb_B9_stall_region thebb_conv2d3x3_B9_stall_region (
        .in_add48_2178(conv2d3x3_B9_merge_out_add48_2178),
        .in_c0_exe1086(conv2d3x3_B9_merge_out_c0_exe1086),
        .in_c0_exe1186154(conv2d3x3_B9_merge_out_c0_exe1186154),
        .in_c0_exe1196(conv2d3x3_B9_merge_out_c0_exe1196),
        .in_c0_exe12106(conv2d3x3_B9_merge_out_c0_exe12106),
        .in_c0_exe1242177(conv2d3x3_B9_merge_out_c0_exe1242177),
        .in_c0_exe13107(conv2d3x3_B9_merge_out_c0_exe13107),
        .in_c0_exe14116(conv2d3x3_B9_merge_out_c0_exe14116),
        .in_c0_exe15126(conv2d3x3_B9_merge_out_c0_exe15126),
        .in_c0_exe16136(conv2d3x3_B9_merge_out_c0_exe16136),
        .in_c0_exe17(conv2d3x3_B9_merge_out_c0_exe17),
        .in_c0_exe318(conv2d3x3_B9_merge_out_c0_exe318),
        .in_c0_exe427(conv2d3x3_B9_merge_out_c0_exe427),
        .in_c0_exe538(conv2d3x3_B9_merge_out_c0_exe538),
        .in_c0_exe645(conv2d3x3_B9_merge_out_c0_exe645),
        .in_c0_exe757(conv2d3x3_B9_merge_out_c0_exe757),
        .in_c0_exe866(conv2d3x3_B9_merge_out_c0_exe866),
        .in_c0_exe976(conv2d3x3_B9_merge_out_c0_exe976),
        .in_flush(in_flush),
        .in_input_im(in_input_im),
        .in_input_size(in_input_size),
        .in_j_062145(conv2d3x3_B9_merge_out_j_062145),
        .in_k_059159(conv2d3x3_B9_merge_out_k_059159),
        .in_lm25_conv2d3x3_avm_readdata(in_lm25_conv2d3x3_avm_readdata),
        .in_lm25_conv2d3x3_avm_readdatavalid(in_lm25_conv2d3x3_avm_readdatavalid),
        .in_lm25_conv2d3x3_avm_waitrequest(in_lm25_conv2d3x3_avm_waitrequest),
        .in_lm25_conv2d3x3_avm_writeack(in_lm25_conv2d3x3_avm_writeack),
        .in_lm27_conv2d3x3_avm_readdata(in_lm27_conv2d3x3_avm_readdata),
        .in_lm27_conv2d3x3_avm_readdatavalid(in_lm27_conv2d3x3_avm_readdatavalid),
        .in_lm27_conv2d3x3_avm_waitrequest(in_lm27_conv2d3x3_avm_waitrequest),
        .in_lm27_conv2d3x3_avm_writeack(in_lm27_conv2d3x3_avm_writeack),
        .in_m_053_2(conv2d3x3_B9_merge_out_m_053_2),
        .in_stall_in(conv2d3x3_B9_branch_out_stall_out),
        .in_tmp_252_2(conv2d3x3_B9_merge_out_tmp_252_2),
        .in_unnamed_conv2d3x313(conv2d3x3_B9_merge_out_unnamed_conv2d3x313),
        .in_valid_in(conv2d3x3_B9_merge_out_valid_out),
        .out_add48_2178(bb_conv2d3x3_B9_stall_region_out_add48_2178),
        .out_c0_exe1086(bb_conv2d3x3_B9_stall_region_out_c0_exe1086),
        .out_c0_exe1186154(bb_conv2d3x3_B9_stall_region_out_c0_exe1186154),
        .out_c0_exe1196(bb_conv2d3x3_B9_stall_region_out_c0_exe1196),
        .out_c0_exe12106(bb_conv2d3x3_B9_stall_region_out_c0_exe12106),
        .out_c0_exe1242177(bb_conv2d3x3_B9_stall_region_out_c0_exe1242177),
        .out_c0_exe1254(bb_conv2d3x3_B9_stall_region_out_c0_exe1254),
        .out_c0_exe13107(bb_conv2d3x3_B9_stall_region_out_c0_exe13107),
        .out_c0_exe14116(bb_conv2d3x3_B9_stall_region_out_c0_exe14116),
        .out_c0_exe15126(bb_conv2d3x3_B9_stall_region_out_c0_exe15126),
        .out_c0_exe16136(bb_conv2d3x3_B9_stall_region_out_c0_exe16136),
        .out_c0_exe17(bb_conv2d3x3_B9_stall_region_out_c0_exe17),
        .out_c0_exe318(bb_conv2d3x3_B9_stall_region_out_c0_exe318),
        .out_c0_exe427(bb_conv2d3x3_B9_stall_region_out_c0_exe427),
        .out_c0_exe538(bb_conv2d3x3_B9_stall_region_out_c0_exe538),
        .out_c0_exe645(bb_conv2d3x3_B9_stall_region_out_c0_exe645),
        .out_c0_exe757(bb_conv2d3x3_B9_stall_region_out_c0_exe757),
        .out_c0_exe866(bb_conv2d3x3_B9_stall_region_out_c0_exe866),
        .out_c0_exe976(bb_conv2d3x3_B9_stall_region_out_c0_exe976),
        .out_inc_2(bb_conv2d3x3_B9_stall_region_out_inc_2),
        .out_j_062145(bb_conv2d3x3_B9_stall_region_out_j_062145),
        .out_k_059159(bb_conv2d3x3_B9_stall_region_out_k_059159),
        .out_lm25_conv2d3x3_avm_address(bb_conv2d3x3_B9_stall_region_out_lm25_conv2d3x3_avm_address),
        .out_lm25_conv2d3x3_avm_burstcount(bb_conv2d3x3_B9_stall_region_out_lm25_conv2d3x3_avm_burstcount),
        .out_lm25_conv2d3x3_avm_byteenable(bb_conv2d3x3_B9_stall_region_out_lm25_conv2d3x3_avm_byteenable),
        .out_lm25_conv2d3x3_avm_enable(bb_conv2d3x3_B9_stall_region_out_lm25_conv2d3x3_avm_enable),
        .out_lm25_conv2d3x3_avm_read(bb_conv2d3x3_B9_stall_region_out_lm25_conv2d3x3_avm_read),
        .out_lm25_conv2d3x3_avm_write(bb_conv2d3x3_B9_stall_region_out_lm25_conv2d3x3_avm_write),
        .out_lm25_conv2d3x3_avm_writedata(bb_conv2d3x3_B9_stall_region_out_lm25_conv2d3x3_avm_writedata),
        .out_lm27_conv2d3x3_avm_address(bb_conv2d3x3_B9_stall_region_out_lm27_conv2d3x3_avm_address),
        .out_lm27_conv2d3x3_avm_burstcount(bb_conv2d3x3_B9_stall_region_out_lm27_conv2d3x3_avm_burstcount),
        .out_lm27_conv2d3x3_avm_byteenable(bb_conv2d3x3_B9_stall_region_out_lm27_conv2d3x3_avm_byteenable),
        .out_lm27_conv2d3x3_avm_enable(bb_conv2d3x3_B9_stall_region_out_lm27_conv2d3x3_avm_enable),
        .out_lm27_conv2d3x3_avm_read(bb_conv2d3x3_B9_stall_region_out_lm27_conv2d3x3_avm_read),
        .out_lm27_conv2d3x3_avm_write(bb_conv2d3x3_B9_stall_region_out_lm27_conv2d3x3_avm_write),
        .out_lm27_conv2d3x3_avm_writedata(bb_conv2d3x3_B9_stall_region_out_lm27_conv2d3x3_avm_writedata),
        .out_stall_out(bb_conv2d3x3_B9_stall_region_out_stall_out),
        .out_unnamed_conv2d3x313(bb_conv2d3x3_B9_stall_region_out_unnamed_conv2d3x313),
        .out_unnamed_conv2d3x314(bb_conv2d3x3_B9_stall_region_out_unnamed_conv2d3x314),
        .out_valid_out(bb_conv2d3x3_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d3x3_B9_branch(BLACKBOX,3)
    conv2d3x3_B9_branch theconv2d3x3_B9_branch (
        .in_add48_2178(bb_conv2d3x3_B9_stall_region_out_add48_2178),
        .in_c0_exe1086(bb_conv2d3x3_B9_stall_region_out_c0_exe1086),
        .in_c0_exe1186154(bb_conv2d3x3_B9_stall_region_out_c0_exe1186154),
        .in_c0_exe1196(bb_conv2d3x3_B9_stall_region_out_c0_exe1196),
        .in_c0_exe12106(bb_conv2d3x3_B9_stall_region_out_c0_exe12106),
        .in_c0_exe1242177(bb_conv2d3x3_B9_stall_region_out_c0_exe1242177),
        .in_c0_exe1254(bb_conv2d3x3_B9_stall_region_out_c0_exe1254),
        .in_c0_exe13107(bb_conv2d3x3_B9_stall_region_out_c0_exe13107),
        .in_c0_exe14116(bb_conv2d3x3_B9_stall_region_out_c0_exe14116),
        .in_c0_exe15126(bb_conv2d3x3_B9_stall_region_out_c0_exe15126),
        .in_c0_exe16136(bb_conv2d3x3_B9_stall_region_out_c0_exe16136),
        .in_c0_exe17(bb_conv2d3x3_B9_stall_region_out_c0_exe17),
        .in_c0_exe318(bb_conv2d3x3_B9_stall_region_out_c0_exe318),
        .in_c0_exe427(bb_conv2d3x3_B9_stall_region_out_c0_exe427),
        .in_c0_exe538(bb_conv2d3x3_B9_stall_region_out_c0_exe538),
        .in_c0_exe645(bb_conv2d3x3_B9_stall_region_out_c0_exe645),
        .in_c0_exe757(bb_conv2d3x3_B9_stall_region_out_c0_exe757),
        .in_c0_exe866(bb_conv2d3x3_B9_stall_region_out_c0_exe866),
        .in_c0_exe976(bb_conv2d3x3_B9_stall_region_out_c0_exe976),
        .in_inc_2(bb_conv2d3x3_B9_stall_region_out_inc_2),
        .in_j_062145(bb_conv2d3x3_B9_stall_region_out_j_062145),
        .in_k_059159(bb_conv2d3x3_B9_stall_region_out_k_059159),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_unnamed_conv2d3x313(bb_conv2d3x3_B9_stall_region_out_unnamed_conv2d3x313),
        .in_unnamed_conv2d3x314(bb_conv2d3x3_B9_stall_region_out_unnamed_conv2d3x314),
        .in_valid_in(bb_conv2d3x3_B9_stall_region_out_valid_out),
        .out_add48_2178(conv2d3x3_B9_branch_out_add48_2178),
        .out_c0_exe1086(conv2d3x3_B9_branch_out_c0_exe1086),
        .out_c0_exe1186154(conv2d3x3_B9_branch_out_c0_exe1186154),
        .out_c0_exe1196(conv2d3x3_B9_branch_out_c0_exe1196),
        .out_c0_exe12106(conv2d3x3_B9_branch_out_c0_exe12106),
        .out_c0_exe1242177(conv2d3x3_B9_branch_out_c0_exe1242177),
        .out_c0_exe1254(conv2d3x3_B9_branch_out_c0_exe1254),
        .out_c0_exe13107(conv2d3x3_B9_branch_out_c0_exe13107),
        .out_c0_exe14116(conv2d3x3_B9_branch_out_c0_exe14116),
        .out_c0_exe15126(conv2d3x3_B9_branch_out_c0_exe15126),
        .out_c0_exe16136(conv2d3x3_B9_branch_out_c0_exe16136),
        .out_c0_exe17(conv2d3x3_B9_branch_out_c0_exe17),
        .out_c0_exe318(conv2d3x3_B9_branch_out_c0_exe318),
        .out_c0_exe427(conv2d3x3_B9_branch_out_c0_exe427),
        .out_c0_exe538(conv2d3x3_B9_branch_out_c0_exe538),
        .out_c0_exe645(conv2d3x3_B9_branch_out_c0_exe645),
        .out_c0_exe757(conv2d3x3_B9_branch_out_c0_exe757),
        .out_c0_exe866(conv2d3x3_B9_branch_out_c0_exe866),
        .out_c0_exe976(conv2d3x3_B9_branch_out_c0_exe976),
        .out_inc_2(conv2d3x3_B9_branch_out_inc_2),
        .out_j_062145(conv2d3x3_B9_branch_out_j_062145),
        .out_k_059159(conv2d3x3_B9_branch_out_k_059159),
        .out_stall_out(conv2d3x3_B9_branch_out_stall_out),
        .out_unnamed_conv2d3x313(conv2d3x3_B9_branch_out_unnamed_conv2d3x313),
        .out_valid_out_0(conv2d3x3_B9_branch_out_valid_out_0),
        .out_valid_out_1(conv2d3x3_B9_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_add48_2178(GPOUT,70)
    assign out_add48_2178 = conv2d3x3_B9_branch_out_add48_2178;

    // out_c0_exe1086(GPOUT,71)
    assign out_c0_exe1086 = conv2d3x3_B9_branch_out_c0_exe1086;

    // out_c0_exe1186154(GPOUT,72)
    assign out_c0_exe1186154 = conv2d3x3_B9_branch_out_c0_exe1186154;

    // out_c0_exe1196(GPOUT,73)
    assign out_c0_exe1196 = conv2d3x3_B9_branch_out_c0_exe1196;

    // out_c0_exe12106(GPOUT,74)
    assign out_c0_exe12106 = conv2d3x3_B9_branch_out_c0_exe12106;

    // out_c0_exe1242177(GPOUT,75)
    assign out_c0_exe1242177 = conv2d3x3_B9_branch_out_c0_exe1242177;

    // out_c0_exe1254(GPOUT,76)
    assign out_c0_exe1254 = conv2d3x3_B9_branch_out_c0_exe1254;

    // out_c0_exe13107(GPOUT,77)
    assign out_c0_exe13107 = conv2d3x3_B9_branch_out_c0_exe13107;

    // out_c0_exe14116(GPOUT,78)
    assign out_c0_exe14116 = conv2d3x3_B9_branch_out_c0_exe14116;

    // out_c0_exe15126(GPOUT,79)
    assign out_c0_exe15126 = conv2d3x3_B9_branch_out_c0_exe15126;

    // out_c0_exe16136(GPOUT,80)
    assign out_c0_exe16136 = conv2d3x3_B9_branch_out_c0_exe16136;

    // out_c0_exe17(GPOUT,81)
    assign out_c0_exe17 = conv2d3x3_B9_branch_out_c0_exe17;

    // out_c0_exe318(GPOUT,82)
    assign out_c0_exe318 = conv2d3x3_B9_branch_out_c0_exe318;

    // out_c0_exe427(GPOUT,83)
    assign out_c0_exe427 = conv2d3x3_B9_branch_out_c0_exe427;

    // out_c0_exe538(GPOUT,84)
    assign out_c0_exe538 = conv2d3x3_B9_branch_out_c0_exe538;

    // out_c0_exe645(GPOUT,85)
    assign out_c0_exe645 = conv2d3x3_B9_branch_out_c0_exe645;

    // out_c0_exe757(GPOUT,86)
    assign out_c0_exe757 = conv2d3x3_B9_branch_out_c0_exe757;

    // out_c0_exe866(GPOUT,87)
    assign out_c0_exe866 = conv2d3x3_B9_branch_out_c0_exe866;

    // out_c0_exe976(GPOUT,88)
    assign out_c0_exe976 = conv2d3x3_B9_branch_out_c0_exe976;

    // out_inc_2(GPOUT,89)
    assign out_inc_2 = conv2d3x3_B9_branch_out_inc_2;

    // out_j_062145(GPOUT,90)
    assign out_j_062145 = conv2d3x3_B9_branch_out_j_062145;

    // out_k_059159(GPOUT,91)
    assign out_k_059159 = conv2d3x3_B9_branch_out_k_059159;

    // out_lm25_conv2d3x3_avm_address(GPOUT,92)
    assign out_lm25_conv2d3x3_avm_address = bb_conv2d3x3_B9_stall_region_out_lm25_conv2d3x3_avm_address;

    // out_lm25_conv2d3x3_avm_burstcount(GPOUT,93)
    assign out_lm25_conv2d3x3_avm_burstcount = bb_conv2d3x3_B9_stall_region_out_lm25_conv2d3x3_avm_burstcount;

    // out_lm25_conv2d3x3_avm_byteenable(GPOUT,94)
    assign out_lm25_conv2d3x3_avm_byteenable = bb_conv2d3x3_B9_stall_region_out_lm25_conv2d3x3_avm_byteenable;

    // out_lm25_conv2d3x3_avm_enable(GPOUT,95)
    assign out_lm25_conv2d3x3_avm_enable = bb_conv2d3x3_B9_stall_region_out_lm25_conv2d3x3_avm_enable;

    // out_lm25_conv2d3x3_avm_read(GPOUT,96)
    assign out_lm25_conv2d3x3_avm_read = bb_conv2d3x3_B9_stall_region_out_lm25_conv2d3x3_avm_read;

    // out_lm25_conv2d3x3_avm_write(GPOUT,97)
    assign out_lm25_conv2d3x3_avm_write = bb_conv2d3x3_B9_stall_region_out_lm25_conv2d3x3_avm_write;

    // out_lm25_conv2d3x3_avm_writedata(GPOUT,98)
    assign out_lm25_conv2d3x3_avm_writedata = bb_conv2d3x3_B9_stall_region_out_lm25_conv2d3x3_avm_writedata;

    // out_lm27_conv2d3x3_avm_address(GPOUT,99)
    assign out_lm27_conv2d3x3_avm_address = bb_conv2d3x3_B9_stall_region_out_lm27_conv2d3x3_avm_address;

    // out_lm27_conv2d3x3_avm_burstcount(GPOUT,100)
    assign out_lm27_conv2d3x3_avm_burstcount = bb_conv2d3x3_B9_stall_region_out_lm27_conv2d3x3_avm_burstcount;

    // out_lm27_conv2d3x3_avm_byteenable(GPOUT,101)
    assign out_lm27_conv2d3x3_avm_byteenable = bb_conv2d3x3_B9_stall_region_out_lm27_conv2d3x3_avm_byteenable;

    // out_lm27_conv2d3x3_avm_enable(GPOUT,102)
    assign out_lm27_conv2d3x3_avm_enable = bb_conv2d3x3_B9_stall_region_out_lm27_conv2d3x3_avm_enable;

    // out_lm27_conv2d3x3_avm_read(GPOUT,103)
    assign out_lm27_conv2d3x3_avm_read = bb_conv2d3x3_B9_stall_region_out_lm27_conv2d3x3_avm_read;

    // out_lm27_conv2d3x3_avm_write(GPOUT,104)
    assign out_lm27_conv2d3x3_avm_write = bb_conv2d3x3_B9_stall_region_out_lm27_conv2d3x3_avm_write;

    // out_lm27_conv2d3x3_avm_writedata(GPOUT,105)
    assign out_lm27_conv2d3x3_avm_writedata = bb_conv2d3x3_B9_stall_region_out_lm27_conv2d3x3_avm_writedata;

    // out_stall_in_0(GPOUT,106)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,107)
    assign out_stall_out_0 = conv2d3x3_B9_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,108)
    assign out_stall_out_1 = conv2d3x3_B9_merge_out_stall_out_1;

    // out_unnamed_conv2d3x313(GPOUT,109)
    assign out_unnamed_conv2d3x313 = conv2d3x3_B9_branch_out_unnamed_conv2d3x313;

    // out_valid_in_0(GPOUT,110)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,111)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,112)
    assign out_valid_out_0 = conv2d3x3_B9_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,113)
    assign out_valid_out_1 = conv2d3x3_B9_branch_out_valid_out_1;

endmodule
