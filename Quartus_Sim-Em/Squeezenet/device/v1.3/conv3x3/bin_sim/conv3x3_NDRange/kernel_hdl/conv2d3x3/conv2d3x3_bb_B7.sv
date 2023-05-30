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

// SystemVerilog created from conv2d3x3_bb_B7
// SystemVerilog created on Tue May 30 12:30:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B7 (
    input wire [31:0] in_add48_1_le175_0,
    input wire [31:0] in_add48_1_le175_1,
    input wire [0:0] in_c0_exe1079_0,
    input wire [0:0] in_c0_exe1079_1,
    input wire [31:0] in_c0_exe1186156_0,
    input wire [31:0] in_c0_exe1186156_1,
    input wire [0:0] in_c0_exe1188_0,
    input wire [0:0] in_c0_exe1188_1,
    input wire [31:0] in_c0_exe1195165_0,
    input wire [31:0] in_c0_exe1195165_1,
    input wire [31:0] in_c0_exe1222174_0,
    input wire [31:0] in_c0_exe1222174_1,
    input wire [31:0] in_c0_exe1299_0,
    input wire [31:0] in_c0_exe1299_1,
    input wire [0:0] in_c0_exe13109_0,
    input wire [0:0] in_c0_exe13109_1,
    input wire [0:0] in_c0_exe14118_0,
    input wire [0:0] in_c0_exe14118_1,
    input wire [0:0] in_c0_exe15128_0,
    input wire [0:0] in_c0_exe15128_1,
    input wire [0:0] in_c0_exe16138_0,
    input wire [0:0] in_c0_exe16138_1,
    input wire [63:0] in_c0_exe19_0,
    input wire [63:0] in_c0_exe19_1,
    input wire [63:0] in_c0_exe320_0,
    input wire [63:0] in_c0_exe320_1,
    input wire [0:0] in_c0_exe429_0,
    input wire [0:0] in_c0_exe429_1,
    input wire [31:0] in_c0_exe540_0,
    input wire [31:0] in_c0_exe540_1,
    input wire [31:0] in_c0_exe647_0,
    input wire [31:0] in_c0_exe647_1,
    input wire [0:0] in_c0_exe759_0,
    input wire [0:0] in_c0_exe759_1,
    input wire [0:0] in_c0_exe868_0,
    input wire [0:0] in_c0_exe868_1,
    input wire [31:0] in_c0_exe978_0,
    input wire [31:0] in_c0_exe978_1,
    input wire [0:0] in_flush,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [31:0] in_j_062147_0,
    input wire [31:0] in_j_062147_1,
    input wire [31:0] in_k_059161_0,
    input wire [31:0] in_k_059161_1,
    input wire [511:0] in_lm18_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm18_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_lm18_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm18_conv2d3x3_avm_writeack,
    input wire [511:0] in_lm20_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm20_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_lm20_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm20_conv2d3x3_avm_writeack,
    input wire [31:0] in_m_053_1_0,
    input wire [31:0] in_m_053_1_1,
    input wire [31:0] in_mul46_add4170_0,
    input wire [31:0] in_mul46_add4170_1,
    input wire [31:0] in_output_size,
    input wire [31:0] in_pad,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_stride,
    input wire [31:0] in_tmp_252_1_0,
    input wire [31:0] in_tmp_252_1_1,
    input wire [31:0] in_unnamed_conv2d3x310_0,
    input wire [31:0] in_unnamed_conv2d3x310_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_add48_1_le175,
    output wire [0:0] out_c0_exe1079,
    output wire [31:0] out_c0_exe1186156,
    output wire [0:0] out_c0_exe1188,
    output wire [31:0] out_c0_exe1195165,
    output wire [31:0] out_c0_exe1222174,
    output wire [31:0] out_c0_exe1234,
    output wire [31:0] out_c0_exe1299,
    output wire [0:0] out_c0_exe13109,
    output wire [0:0] out_c0_exe14118,
    output wire [0:0] out_c0_exe15128,
    output wire [0:0] out_c0_exe16138,
    output wire [63:0] out_c0_exe19,
    output wire [63:0] out_c0_exe320,
    output wire [0:0] out_c0_exe429,
    output wire [31:0] out_c0_exe540,
    output wire [31:0] out_c0_exe647,
    output wire [0:0] out_c0_exe759,
    output wire [0:0] out_c0_exe868,
    output wire [31:0] out_c0_exe978,
    output wire [31:0] out_inc_1,
    output wire [31:0] out_j_062147,
    output wire [31:0] out_k_059161,
    output wire [30:0] out_lm18_conv2d3x3_avm_address,
    output wire [4:0] out_lm18_conv2d3x3_avm_burstcount,
    output wire [63:0] out_lm18_conv2d3x3_avm_byteenable,
    output wire [0:0] out_lm18_conv2d3x3_avm_enable,
    output wire [0:0] out_lm18_conv2d3x3_avm_read,
    output wire [0:0] out_lm18_conv2d3x3_avm_write,
    output wire [511:0] out_lm18_conv2d3x3_avm_writedata,
    output wire [30:0] out_lm20_conv2d3x3_avm_address,
    output wire [4:0] out_lm20_conv2d3x3_avm_burstcount,
    output wire [63:0] out_lm20_conv2d3x3_avm_byteenable,
    output wire [0:0] out_lm20_conv2d3x3_avm_enable,
    output wire [0:0] out_lm20_conv2d3x3_avm_read,
    output wire [0:0] out_lm20_conv2d3x3_avm_write,
    output wire [511:0] out_lm20_conv2d3x3_avm_writedata,
    output wire [31:0] out_mul46_add4170,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_conv2d3x310,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_conv2d3x3_B7_stall_region_out_add48_1_le175;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_c0_exe1079;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_c0_exe1186156;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_c0_exe1188;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_c0_exe1195165;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_c0_exe1222174;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_c0_exe1234;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_c0_exe1299;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_c0_exe13109;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_c0_exe14118;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_c0_exe15128;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_c0_exe16138;
    wire [63:0] bb_conv2d3x3_B7_stall_region_out_c0_exe19;
    wire [63:0] bb_conv2d3x3_B7_stall_region_out_c0_exe320;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_c0_exe429;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_c0_exe540;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_c0_exe647;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_c0_exe759;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_c0_exe868;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_c0_exe978;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_inc_1;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_j_062147;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_k_059161;
    wire [30:0] bb_conv2d3x3_B7_stall_region_out_lm18_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B7_stall_region_out_lm18_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B7_stall_region_out_lm18_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_lm18_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_lm18_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_lm18_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B7_stall_region_out_lm18_conv2d3x3_avm_writedata;
    wire [30:0] bb_conv2d3x3_B7_stall_region_out_lm20_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B7_stall_region_out_lm20_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B7_stall_region_out_lm20_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_lm20_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_lm20_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_lm20_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B7_stall_region_out_lm20_conv2d3x3_avm_writedata;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_mul46_add4170;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_stall_out;
    wire [31:0] bb_conv2d3x3_B7_stall_region_out_unnamed_conv2d3x310;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_unnamed_conv2d3x311;
    wire [0:0] bb_conv2d3x3_B7_stall_region_out_valid_out;
    wire [31:0] conv2d3x3_B7_branch_out_add48_1_le175;
    wire [0:0] conv2d3x3_B7_branch_out_c0_exe1079;
    wire [31:0] conv2d3x3_B7_branch_out_c0_exe1186156;
    wire [0:0] conv2d3x3_B7_branch_out_c0_exe1188;
    wire [31:0] conv2d3x3_B7_branch_out_c0_exe1195165;
    wire [31:0] conv2d3x3_B7_branch_out_c0_exe1222174;
    wire [31:0] conv2d3x3_B7_branch_out_c0_exe1234;
    wire [31:0] conv2d3x3_B7_branch_out_c0_exe1299;
    wire [0:0] conv2d3x3_B7_branch_out_c0_exe13109;
    wire [0:0] conv2d3x3_B7_branch_out_c0_exe14118;
    wire [0:0] conv2d3x3_B7_branch_out_c0_exe15128;
    wire [0:0] conv2d3x3_B7_branch_out_c0_exe16138;
    wire [63:0] conv2d3x3_B7_branch_out_c0_exe19;
    wire [63:0] conv2d3x3_B7_branch_out_c0_exe320;
    wire [0:0] conv2d3x3_B7_branch_out_c0_exe429;
    wire [31:0] conv2d3x3_B7_branch_out_c0_exe540;
    wire [31:0] conv2d3x3_B7_branch_out_c0_exe647;
    wire [0:0] conv2d3x3_B7_branch_out_c0_exe759;
    wire [0:0] conv2d3x3_B7_branch_out_c0_exe868;
    wire [31:0] conv2d3x3_B7_branch_out_c0_exe978;
    wire [31:0] conv2d3x3_B7_branch_out_inc_1;
    wire [31:0] conv2d3x3_B7_branch_out_j_062147;
    wire [31:0] conv2d3x3_B7_branch_out_k_059161;
    wire [31:0] conv2d3x3_B7_branch_out_mul46_add4170;
    wire [0:0] conv2d3x3_B7_branch_out_stall_out;
    wire [31:0] conv2d3x3_B7_branch_out_unnamed_conv2d3x310;
    wire [0:0] conv2d3x3_B7_branch_out_valid_out_0;
    wire [0:0] conv2d3x3_B7_branch_out_valid_out_1;
    wire [31:0] conv2d3x3_B7_merge_out_add48_1_le175;
    wire [0:0] conv2d3x3_B7_merge_out_c0_exe1079;
    wire [31:0] conv2d3x3_B7_merge_out_c0_exe1186156;
    wire [0:0] conv2d3x3_B7_merge_out_c0_exe1188;
    wire [31:0] conv2d3x3_B7_merge_out_c0_exe1195165;
    wire [31:0] conv2d3x3_B7_merge_out_c0_exe1222174;
    wire [31:0] conv2d3x3_B7_merge_out_c0_exe1299;
    wire [0:0] conv2d3x3_B7_merge_out_c0_exe13109;
    wire [0:0] conv2d3x3_B7_merge_out_c0_exe14118;
    wire [0:0] conv2d3x3_B7_merge_out_c0_exe15128;
    wire [0:0] conv2d3x3_B7_merge_out_c0_exe16138;
    wire [63:0] conv2d3x3_B7_merge_out_c0_exe19;
    wire [63:0] conv2d3x3_B7_merge_out_c0_exe320;
    wire [0:0] conv2d3x3_B7_merge_out_c0_exe429;
    wire [31:0] conv2d3x3_B7_merge_out_c0_exe540;
    wire [31:0] conv2d3x3_B7_merge_out_c0_exe647;
    wire [0:0] conv2d3x3_B7_merge_out_c0_exe759;
    wire [0:0] conv2d3x3_B7_merge_out_c0_exe868;
    wire [31:0] conv2d3x3_B7_merge_out_c0_exe978;
    wire [31:0] conv2d3x3_B7_merge_out_j_062147;
    wire [31:0] conv2d3x3_B7_merge_out_k_059161;
    wire [31:0] conv2d3x3_B7_merge_out_m_053_1;
    wire [31:0] conv2d3x3_B7_merge_out_mul46_add4170;
    wire [0:0] conv2d3x3_B7_merge_out_stall_out_0;
    wire [0:0] conv2d3x3_B7_merge_out_stall_out_1;
    wire [31:0] conv2d3x3_B7_merge_out_tmp_252_1;
    wire [31:0] conv2d3x3_B7_merge_out_unnamed_conv2d3x310;
    wire [0:0] conv2d3x3_B7_merge_out_valid_out;


    // conv2d3x3_B7_merge(BLACKBOX,4)
    conv2d3x3_B7_merge theconv2d3x3_B7_merge (
        .in_add48_1_le175_0(in_add48_1_le175_0),
        .in_add48_1_le175_1(in_add48_1_le175_1),
        .in_c0_exe1079_0(in_c0_exe1079_0),
        .in_c0_exe1079_1(in_c0_exe1079_1),
        .in_c0_exe1186156_0(in_c0_exe1186156_0),
        .in_c0_exe1186156_1(in_c0_exe1186156_1),
        .in_c0_exe1188_0(in_c0_exe1188_0),
        .in_c0_exe1188_1(in_c0_exe1188_1),
        .in_c0_exe1195165_0(in_c0_exe1195165_0),
        .in_c0_exe1195165_1(in_c0_exe1195165_1),
        .in_c0_exe1222174_0(in_c0_exe1222174_0),
        .in_c0_exe1222174_1(in_c0_exe1222174_1),
        .in_c0_exe1299_0(in_c0_exe1299_0),
        .in_c0_exe1299_1(in_c0_exe1299_1),
        .in_c0_exe13109_0(in_c0_exe13109_0),
        .in_c0_exe13109_1(in_c0_exe13109_1),
        .in_c0_exe14118_0(in_c0_exe14118_0),
        .in_c0_exe14118_1(in_c0_exe14118_1),
        .in_c0_exe15128_0(in_c0_exe15128_0),
        .in_c0_exe15128_1(in_c0_exe15128_1),
        .in_c0_exe16138_0(in_c0_exe16138_0),
        .in_c0_exe16138_1(in_c0_exe16138_1),
        .in_c0_exe19_0(in_c0_exe19_0),
        .in_c0_exe19_1(in_c0_exe19_1),
        .in_c0_exe320_0(in_c0_exe320_0),
        .in_c0_exe320_1(in_c0_exe320_1),
        .in_c0_exe429_0(in_c0_exe429_0),
        .in_c0_exe429_1(in_c0_exe429_1),
        .in_c0_exe540_0(in_c0_exe540_0),
        .in_c0_exe540_1(in_c0_exe540_1),
        .in_c0_exe647_0(in_c0_exe647_0),
        .in_c0_exe647_1(in_c0_exe647_1),
        .in_c0_exe759_0(in_c0_exe759_0),
        .in_c0_exe759_1(in_c0_exe759_1),
        .in_c0_exe868_0(in_c0_exe868_0),
        .in_c0_exe868_1(in_c0_exe868_1),
        .in_c0_exe978_0(in_c0_exe978_0),
        .in_c0_exe978_1(in_c0_exe978_1),
        .in_j_062147_0(in_j_062147_0),
        .in_j_062147_1(in_j_062147_1),
        .in_k_059161_0(in_k_059161_0),
        .in_k_059161_1(in_k_059161_1),
        .in_m_053_1_0(in_m_053_1_0),
        .in_m_053_1_1(in_m_053_1_1),
        .in_mul46_add4170_0(in_mul46_add4170_0),
        .in_mul46_add4170_1(in_mul46_add4170_1),
        .in_stall_in(bb_conv2d3x3_B7_stall_region_out_stall_out),
        .in_tmp_252_1_0(in_tmp_252_1_0),
        .in_tmp_252_1_1(in_tmp_252_1_1),
        .in_unnamed_conv2d3x310_0(in_unnamed_conv2d3x310_0),
        .in_unnamed_conv2d3x310_1(in_unnamed_conv2d3x310_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add48_1_le175(conv2d3x3_B7_merge_out_add48_1_le175),
        .out_c0_exe1079(conv2d3x3_B7_merge_out_c0_exe1079),
        .out_c0_exe1186156(conv2d3x3_B7_merge_out_c0_exe1186156),
        .out_c0_exe1188(conv2d3x3_B7_merge_out_c0_exe1188),
        .out_c0_exe1195165(conv2d3x3_B7_merge_out_c0_exe1195165),
        .out_c0_exe1222174(conv2d3x3_B7_merge_out_c0_exe1222174),
        .out_c0_exe1299(conv2d3x3_B7_merge_out_c0_exe1299),
        .out_c0_exe13109(conv2d3x3_B7_merge_out_c0_exe13109),
        .out_c0_exe14118(conv2d3x3_B7_merge_out_c0_exe14118),
        .out_c0_exe15128(conv2d3x3_B7_merge_out_c0_exe15128),
        .out_c0_exe16138(conv2d3x3_B7_merge_out_c0_exe16138),
        .out_c0_exe19(conv2d3x3_B7_merge_out_c0_exe19),
        .out_c0_exe320(conv2d3x3_B7_merge_out_c0_exe320),
        .out_c0_exe429(conv2d3x3_B7_merge_out_c0_exe429),
        .out_c0_exe540(conv2d3x3_B7_merge_out_c0_exe540),
        .out_c0_exe647(conv2d3x3_B7_merge_out_c0_exe647),
        .out_c0_exe759(conv2d3x3_B7_merge_out_c0_exe759),
        .out_c0_exe868(conv2d3x3_B7_merge_out_c0_exe868),
        .out_c0_exe978(conv2d3x3_B7_merge_out_c0_exe978),
        .out_j_062147(conv2d3x3_B7_merge_out_j_062147),
        .out_k_059161(conv2d3x3_B7_merge_out_k_059161),
        .out_m_053_1(conv2d3x3_B7_merge_out_m_053_1),
        .out_mul46_add4170(conv2d3x3_B7_merge_out_mul46_add4170),
        .out_stall_out_0(conv2d3x3_B7_merge_out_stall_out_0),
        .out_stall_out_1(conv2d3x3_B7_merge_out_stall_out_1),
        .out_tmp_252_1(conv2d3x3_B7_merge_out_tmp_252_1),
        .out_unnamed_conv2d3x310(conv2d3x3_B7_merge_out_unnamed_conv2d3x310),
        .out_valid_out(conv2d3x3_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B7_stall_region(BLACKBOX,2)
    conv2d3x3_bb_B7_stall_region thebb_conv2d3x3_B7_stall_region (
        .in_add48_1_le175(conv2d3x3_B7_merge_out_add48_1_le175),
        .in_c0_exe1079(conv2d3x3_B7_merge_out_c0_exe1079),
        .in_c0_exe1186156(conv2d3x3_B7_merge_out_c0_exe1186156),
        .in_c0_exe1188(conv2d3x3_B7_merge_out_c0_exe1188),
        .in_c0_exe1195165(conv2d3x3_B7_merge_out_c0_exe1195165),
        .in_c0_exe1222174(conv2d3x3_B7_merge_out_c0_exe1222174),
        .in_c0_exe1299(conv2d3x3_B7_merge_out_c0_exe1299),
        .in_c0_exe13109(conv2d3x3_B7_merge_out_c0_exe13109),
        .in_c0_exe14118(conv2d3x3_B7_merge_out_c0_exe14118),
        .in_c0_exe15128(conv2d3x3_B7_merge_out_c0_exe15128),
        .in_c0_exe16138(conv2d3x3_B7_merge_out_c0_exe16138),
        .in_c0_exe19(conv2d3x3_B7_merge_out_c0_exe19),
        .in_c0_exe320(conv2d3x3_B7_merge_out_c0_exe320),
        .in_c0_exe429(conv2d3x3_B7_merge_out_c0_exe429),
        .in_c0_exe540(conv2d3x3_B7_merge_out_c0_exe540),
        .in_c0_exe647(conv2d3x3_B7_merge_out_c0_exe647),
        .in_c0_exe759(conv2d3x3_B7_merge_out_c0_exe759),
        .in_c0_exe868(conv2d3x3_B7_merge_out_c0_exe868),
        .in_c0_exe978(conv2d3x3_B7_merge_out_c0_exe978),
        .in_flush(in_flush),
        .in_input_im(in_input_im),
        .in_input_size(in_input_size),
        .in_j_062147(conv2d3x3_B7_merge_out_j_062147),
        .in_k_059161(conv2d3x3_B7_merge_out_k_059161),
        .in_lm18_conv2d3x3_avm_readdata(in_lm18_conv2d3x3_avm_readdata),
        .in_lm18_conv2d3x3_avm_readdatavalid(in_lm18_conv2d3x3_avm_readdatavalid),
        .in_lm18_conv2d3x3_avm_waitrequest(in_lm18_conv2d3x3_avm_waitrequest),
        .in_lm18_conv2d3x3_avm_writeack(in_lm18_conv2d3x3_avm_writeack),
        .in_lm20_conv2d3x3_avm_readdata(in_lm20_conv2d3x3_avm_readdata),
        .in_lm20_conv2d3x3_avm_readdatavalid(in_lm20_conv2d3x3_avm_readdatavalid),
        .in_lm20_conv2d3x3_avm_waitrequest(in_lm20_conv2d3x3_avm_waitrequest),
        .in_lm20_conv2d3x3_avm_writeack(in_lm20_conv2d3x3_avm_writeack),
        .in_m_053_1(conv2d3x3_B7_merge_out_m_053_1),
        .in_mul46_add4170(conv2d3x3_B7_merge_out_mul46_add4170),
        .in_stall_in(conv2d3x3_B7_branch_out_stall_out),
        .in_tmp_252_1(conv2d3x3_B7_merge_out_tmp_252_1),
        .in_unnamed_conv2d3x310(conv2d3x3_B7_merge_out_unnamed_conv2d3x310),
        .in_valid_in(conv2d3x3_B7_merge_out_valid_out),
        .out_add48_1_le175(bb_conv2d3x3_B7_stall_region_out_add48_1_le175),
        .out_c0_exe1079(bb_conv2d3x3_B7_stall_region_out_c0_exe1079),
        .out_c0_exe1186156(bb_conv2d3x3_B7_stall_region_out_c0_exe1186156),
        .out_c0_exe1188(bb_conv2d3x3_B7_stall_region_out_c0_exe1188),
        .out_c0_exe1195165(bb_conv2d3x3_B7_stall_region_out_c0_exe1195165),
        .out_c0_exe1222174(bb_conv2d3x3_B7_stall_region_out_c0_exe1222174),
        .out_c0_exe1234(bb_conv2d3x3_B7_stall_region_out_c0_exe1234),
        .out_c0_exe1299(bb_conv2d3x3_B7_stall_region_out_c0_exe1299),
        .out_c0_exe13109(bb_conv2d3x3_B7_stall_region_out_c0_exe13109),
        .out_c0_exe14118(bb_conv2d3x3_B7_stall_region_out_c0_exe14118),
        .out_c0_exe15128(bb_conv2d3x3_B7_stall_region_out_c0_exe15128),
        .out_c0_exe16138(bb_conv2d3x3_B7_stall_region_out_c0_exe16138),
        .out_c0_exe19(bb_conv2d3x3_B7_stall_region_out_c0_exe19),
        .out_c0_exe320(bb_conv2d3x3_B7_stall_region_out_c0_exe320),
        .out_c0_exe429(bb_conv2d3x3_B7_stall_region_out_c0_exe429),
        .out_c0_exe540(bb_conv2d3x3_B7_stall_region_out_c0_exe540),
        .out_c0_exe647(bb_conv2d3x3_B7_stall_region_out_c0_exe647),
        .out_c0_exe759(bb_conv2d3x3_B7_stall_region_out_c0_exe759),
        .out_c0_exe868(bb_conv2d3x3_B7_stall_region_out_c0_exe868),
        .out_c0_exe978(bb_conv2d3x3_B7_stall_region_out_c0_exe978),
        .out_inc_1(bb_conv2d3x3_B7_stall_region_out_inc_1),
        .out_j_062147(bb_conv2d3x3_B7_stall_region_out_j_062147),
        .out_k_059161(bb_conv2d3x3_B7_stall_region_out_k_059161),
        .out_lm18_conv2d3x3_avm_address(bb_conv2d3x3_B7_stall_region_out_lm18_conv2d3x3_avm_address),
        .out_lm18_conv2d3x3_avm_burstcount(bb_conv2d3x3_B7_stall_region_out_lm18_conv2d3x3_avm_burstcount),
        .out_lm18_conv2d3x3_avm_byteenable(bb_conv2d3x3_B7_stall_region_out_lm18_conv2d3x3_avm_byteenable),
        .out_lm18_conv2d3x3_avm_enable(bb_conv2d3x3_B7_stall_region_out_lm18_conv2d3x3_avm_enable),
        .out_lm18_conv2d3x3_avm_read(bb_conv2d3x3_B7_stall_region_out_lm18_conv2d3x3_avm_read),
        .out_lm18_conv2d3x3_avm_write(bb_conv2d3x3_B7_stall_region_out_lm18_conv2d3x3_avm_write),
        .out_lm18_conv2d3x3_avm_writedata(bb_conv2d3x3_B7_stall_region_out_lm18_conv2d3x3_avm_writedata),
        .out_lm20_conv2d3x3_avm_address(bb_conv2d3x3_B7_stall_region_out_lm20_conv2d3x3_avm_address),
        .out_lm20_conv2d3x3_avm_burstcount(bb_conv2d3x3_B7_stall_region_out_lm20_conv2d3x3_avm_burstcount),
        .out_lm20_conv2d3x3_avm_byteenable(bb_conv2d3x3_B7_stall_region_out_lm20_conv2d3x3_avm_byteenable),
        .out_lm20_conv2d3x3_avm_enable(bb_conv2d3x3_B7_stall_region_out_lm20_conv2d3x3_avm_enable),
        .out_lm20_conv2d3x3_avm_read(bb_conv2d3x3_B7_stall_region_out_lm20_conv2d3x3_avm_read),
        .out_lm20_conv2d3x3_avm_write(bb_conv2d3x3_B7_stall_region_out_lm20_conv2d3x3_avm_write),
        .out_lm20_conv2d3x3_avm_writedata(bb_conv2d3x3_B7_stall_region_out_lm20_conv2d3x3_avm_writedata),
        .out_mul46_add4170(bb_conv2d3x3_B7_stall_region_out_mul46_add4170),
        .out_stall_out(bb_conv2d3x3_B7_stall_region_out_stall_out),
        .out_unnamed_conv2d3x310(bb_conv2d3x3_B7_stall_region_out_unnamed_conv2d3x310),
        .out_unnamed_conv2d3x311(bb_conv2d3x3_B7_stall_region_out_unnamed_conv2d3x311),
        .out_valid_out(bb_conv2d3x3_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d3x3_B7_branch(BLACKBOX,3)
    conv2d3x3_B7_branch theconv2d3x3_B7_branch (
        .in_add48_1_le175(bb_conv2d3x3_B7_stall_region_out_add48_1_le175),
        .in_c0_exe1079(bb_conv2d3x3_B7_stall_region_out_c0_exe1079),
        .in_c0_exe1186156(bb_conv2d3x3_B7_stall_region_out_c0_exe1186156),
        .in_c0_exe1188(bb_conv2d3x3_B7_stall_region_out_c0_exe1188),
        .in_c0_exe1195165(bb_conv2d3x3_B7_stall_region_out_c0_exe1195165),
        .in_c0_exe1222174(bb_conv2d3x3_B7_stall_region_out_c0_exe1222174),
        .in_c0_exe1234(bb_conv2d3x3_B7_stall_region_out_c0_exe1234),
        .in_c0_exe1299(bb_conv2d3x3_B7_stall_region_out_c0_exe1299),
        .in_c0_exe13109(bb_conv2d3x3_B7_stall_region_out_c0_exe13109),
        .in_c0_exe14118(bb_conv2d3x3_B7_stall_region_out_c0_exe14118),
        .in_c0_exe15128(bb_conv2d3x3_B7_stall_region_out_c0_exe15128),
        .in_c0_exe16138(bb_conv2d3x3_B7_stall_region_out_c0_exe16138),
        .in_c0_exe19(bb_conv2d3x3_B7_stall_region_out_c0_exe19),
        .in_c0_exe320(bb_conv2d3x3_B7_stall_region_out_c0_exe320),
        .in_c0_exe429(bb_conv2d3x3_B7_stall_region_out_c0_exe429),
        .in_c0_exe540(bb_conv2d3x3_B7_stall_region_out_c0_exe540),
        .in_c0_exe647(bb_conv2d3x3_B7_stall_region_out_c0_exe647),
        .in_c0_exe759(bb_conv2d3x3_B7_stall_region_out_c0_exe759),
        .in_c0_exe868(bb_conv2d3x3_B7_stall_region_out_c0_exe868),
        .in_c0_exe978(bb_conv2d3x3_B7_stall_region_out_c0_exe978),
        .in_inc_1(bb_conv2d3x3_B7_stall_region_out_inc_1),
        .in_j_062147(bb_conv2d3x3_B7_stall_region_out_j_062147),
        .in_k_059161(bb_conv2d3x3_B7_stall_region_out_k_059161),
        .in_mul46_add4170(bb_conv2d3x3_B7_stall_region_out_mul46_add4170),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_unnamed_conv2d3x310(bb_conv2d3x3_B7_stall_region_out_unnamed_conv2d3x310),
        .in_unnamed_conv2d3x311(bb_conv2d3x3_B7_stall_region_out_unnamed_conv2d3x311),
        .in_valid_in(bb_conv2d3x3_B7_stall_region_out_valid_out),
        .out_add48_1_le175(conv2d3x3_B7_branch_out_add48_1_le175),
        .out_c0_exe1079(conv2d3x3_B7_branch_out_c0_exe1079),
        .out_c0_exe1186156(conv2d3x3_B7_branch_out_c0_exe1186156),
        .out_c0_exe1188(conv2d3x3_B7_branch_out_c0_exe1188),
        .out_c0_exe1195165(conv2d3x3_B7_branch_out_c0_exe1195165),
        .out_c0_exe1222174(conv2d3x3_B7_branch_out_c0_exe1222174),
        .out_c0_exe1234(conv2d3x3_B7_branch_out_c0_exe1234),
        .out_c0_exe1299(conv2d3x3_B7_branch_out_c0_exe1299),
        .out_c0_exe13109(conv2d3x3_B7_branch_out_c0_exe13109),
        .out_c0_exe14118(conv2d3x3_B7_branch_out_c0_exe14118),
        .out_c0_exe15128(conv2d3x3_B7_branch_out_c0_exe15128),
        .out_c0_exe16138(conv2d3x3_B7_branch_out_c0_exe16138),
        .out_c0_exe19(conv2d3x3_B7_branch_out_c0_exe19),
        .out_c0_exe320(conv2d3x3_B7_branch_out_c0_exe320),
        .out_c0_exe429(conv2d3x3_B7_branch_out_c0_exe429),
        .out_c0_exe540(conv2d3x3_B7_branch_out_c0_exe540),
        .out_c0_exe647(conv2d3x3_B7_branch_out_c0_exe647),
        .out_c0_exe759(conv2d3x3_B7_branch_out_c0_exe759),
        .out_c0_exe868(conv2d3x3_B7_branch_out_c0_exe868),
        .out_c0_exe978(conv2d3x3_B7_branch_out_c0_exe978),
        .out_inc_1(conv2d3x3_B7_branch_out_inc_1),
        .out_j_062147(conv2d3x3_B7_branch_out_j_062147),
        .out_k_059161(conv2d3x3_B7_branch_out_k_059161),
        .out_mul46_add4170(conv2d3x3_B7_branch_out_mul46_add4170),
        .out_stall_out(conv2d3x3_B7_branch_out_stall_out),
        .out_unnamed_conv2d3x310(conv2d3x3_B7_branch_out_unnamed_conv2d3x310),
        .out_valid_out_0(conv2d3x3_B7_branch_out_valid_out_0),
        .out_valid_out_1(conv2d3x3_B7_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_add48_1_le175(GPOUT,74)
    assign out_add48_1_le175 = conv2d3x3_B7_branch_out_add48_1_le175;

    // out_c0_exe1079(GPOUT,75)
    assign out_c0_exe1079 = conv2d3x3_B7_branch_out_c0_exe1079;

    // out_c0_exe1186156(GPOUT,76)
    assign out_c0_exe1186156 = conv2d3x3_B7_branch_out_c0_exe1186156;

    // out_c0_exe1188(GPOUT,77)
    assign out_c0_exe1188 = conv2d3x3_B7_branch_out_c0_exe1188;

    // out_c0_exe1195165(GPOUT,78)
    assign out_c0_exe1195165 = conv2d3x3_B7_branch_out_c0_exe1195165;

    // out_c0_exe1222174(GPOUT,79)
    assign out_c0_exe1222174 = conv2d3x3_B7_branch_out_c0_exe1222174;

    // out_c0_exe1234(GPOUT,80)
    assign out_c0_exe1234 = conv2d3x3_B7_branch_out_c0_exe1234;

    // out_c0_exe1299(GPOUT,81)
    assign out_c0_exe1299 = conv2d3x3_B7_branch_out_c0_exe1299;

    // out_c0_exe13109(GPOUT,82)
    assign out_c0_exe13109 = conv2d3x3_B7_branch_out_c0_exe13109;

    // out_c0_exe14118(GPOUT,83)
    assign out_c0_exe14118 = conv2d3x3_B7_branch_out_c0_exe14118;

    // out_c0_exe15128(GPOUT,84)
    assign out_c0_exe15128 = conv2d3x3_B7_branch_out_c0_exe15128;

    // out_c0_exe16138(GPOUT,85)
    assign out_c0_exe16138 = conv2d3x3_B7_branch_out_c0_exe16138;

    // out_c0_exe19(GPOUT,86)
    assign out_c0_exe19 = conv2d3x3_B7_branch_out_c0_exe19;

    // out_c0_exe320(GPOUT,87)
    assign out_c0_exe320 = conv2d3x3_B7_branch_out_c0_exe320;

    // out_c0_exe429(GPOUT,88)
    assign out_c0_exe429 = conv2d3x3_B7_branch_out_c0_exe429;

    // out_c0_exe540(GPOUT,89)
    assign out_c0_exe540 = conv2d3x3_B7_branch_out_c0_exe540;

    // out_c0_exe647(GPOUT,90)
    assign out_c0_exe647 = conv2d3x3_B7_branch_out_c0_exe647;

    // out_c0_exe759(GPOUT,91)
    assign out_c0_exe759 = conv2d3x3_B7_branch_out_c0_exe759;

    // out_c0_exe868(GPOUT,92)
    assign out_c0_exe868 = conv2d3x3_B7_branch_out_c0_exe868;

    // out_c0_exe978(GPOUT,93)
    assign out_c0_exe978 = conv2d3x3_B7_branch_out_c0_exe978;

    // out_inc_1(GPOUT,94)
    assign out_inc_1 = conv2d3x3_B7_branch_out_inc_1;

    // out_j_062147(GPOUT,95)
    assign out_j_062147 = conv2d3x3_B7_branch_out_j_062147;

    // out_k_059161(GPOUT,96)
    assign out_k_059161 = conv2d3x3_B7_branch_out_k_059161;

    // out_lm18_conv2d3x3_avm_address(GPOUT,97)
    assign out_lm18_conv2d3x3_avm_address = bb_conv2d3x3_B7_stall_region_out_lm18_conv2d3x3_avm_address;

    // out_lm18_conv2d3x3_avm_burstcount(GPOUT,98)
    assign out_lm18_conv2d3x3_avm_burstcount = bb_conv2d3x3_B7_stall_region_out_lm18_conv2d3x3_avm_burstcount;

    // out_lm18_conv2d3x3_avm_byteenable(GPOUT,99)
    assign out_lm18_conv2d3x3_avm_byteenable = bb_conv2d3x3_B7_stall_region_out_lm18_conv2d3x3_avm_byteenable;

    // out_lm18_conv2d3x3_avm_enable(GPOUT,100)
    assign out_lm18_conv2d3x3_avm_enable = bb_conv2d3x3_B7_stall_region_out_lm18_conv2d3x3_avm_enable;

    // out_lm18_conv2d3x3_avm_read(GPOUT,101)
    assign out_lm18_conv2d3x3_avm_read = bb_conv2d3x3_B7_stall_region_out_lm18_conv2d3x3_avm_read;

    // out_lm18_conv2d3x3_avm_write(GPOUT,102)
    assign out_lm18_conv2d3x3_avm_write = bb_conv2d3x3_B7_stall_region_out_lm18_conv2d3x3_avm_write;

    // out_lm18_conv2d3x3_avm_writedata(GPOUT,103)
    assign out_lm18_conv2d3x3_avm_writedata = bb_conv2d3x3_B7_stall_region_out_lm18_conv2d3x3_avm_writedata;

    // out_lm20_conv2d3x3_avm_address(GPOUT,104)
    assign out_lm20_conv2d3x3_avm_address = bb_conv2d3x3_B7_stall_region_out_lm20_conv2d3x3_avm_address;

    // out_lm20_conv2d3x3_avm_burstcount(GPOUT,105)
    assign out_lm20_conv2d3x3_avm_burstcount = bb_conv2d3x3_B7_stall_region_out_lm20_conv2d3x3_avm_burstcount;

    // out_lm20_conv2d3x3_avm_byteenable(GPOUT,106)
    assign out_lm20_conv2d3x3_avm_byteenable = bb_conv2d3x3_B7_stall_region_out_lm20_conv2d3x3_avm_byteenable;

    // out_lm20_conv2d3x3_avm_enable(GPOUT,107)
    assign out_lm20_conv2d3x3_avm_enable = bb_conv2d3x3_B7_stall_region_out_lm20_conv2d3x3_avm_enable;

    // out_lm20_conv2d3x3_avm_read(GPOUT,108)
    assign out_lm20_conv2d3x3_avm_read = bb_conv2d3x3_B7_stall_region_out_lm20_conv2d3x3_avm_read;

    // out_lm20_conv2d3x3_avm_write(GPOUT,109)
    assign out_lm20_conv2d3x3_avm_write = bb_conv2d3x3_B7_stall_region_out_lm20_conv2d3x3_avm_write;

    // out_lm20_conv2d3x3_avm_writedata(GPOUT,110)
    assign out_lm20_conv2d3x3_avm_writedata = bb_conv2d3x3_B7_stall_region_out_lm20_conv2d3x3_avm_writedata;

    // out_mul46_add4170(GPOUT,111)
    assign out_mul46_add4170 = conv2d3x3_B7_branch_out_mul46_add4170;

    // out_stall_in_0(GPOUT,112)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,113)
    assign out_stall_out_0 = conv2d3x3_B7_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,114)
    assign out_stall_out_1 = conv2d3x3_B7_merge_out_stall_out_1;

    // out_unnamed_conv2d3x310(GPOUT,115)
    assign out_unnamed_conv2d3x310 = conv2d3x3_B7_branch_out_unnamed_conv2d3x310;

    // out_valid_in_0(GPOUT,116)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,117)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,118)
    assign out_valid_out_0 = conv2d3x3_B7_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,119)
    assign out_valid_out_1 = conv2d3x3_B7_branch_out_valid_out_1;

endmodule
