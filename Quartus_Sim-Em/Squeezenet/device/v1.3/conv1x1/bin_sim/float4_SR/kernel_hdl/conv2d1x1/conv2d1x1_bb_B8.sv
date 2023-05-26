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

// SystemVerilog created from conv2d1x1_bb_B8
// SystemVerilog created on Wed May 24 11:22:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B8 (
    input wire [63:0] in_ap_pop_ext7140_0,
    input wire [63:0] in_ap_pop_ext7140_1,
    input wire [63:0] in_filter_bias,
    input wire [63:0] in_filter_weight,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_ij_068_pop1366_pop36160_0,
    input wire [31:0] in_ij_068_pop1366_pop36160_1,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    input wire [511:0] in_lm148_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm148_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm148_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm148_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm150_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm150_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm150_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm150_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm151_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm151_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm151_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm151_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm153_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm153_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm153_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm153_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm155_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm155_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm155_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm155_conv2d1x1_avm_writeack,
    input wire [31:0] in_lm52_pop30150_0,
    input wire [31:0] in_lm52_pop30150_1,
    input wire [31:0] in_lm95_0,
    input wire [31:0] in_lm95_1,
    input wire [31:0] in_mul100105_0,
    input wire [31:0] in_mul100105_1,
    input wire [31:0] in_mul10058_pop32154_0,
    input wire [31:0] in_mul10058_pop32154_1,
    input wire [31:0] in_mul21100_0,
    input wire [31:0] in_mul21100_1,
    input wire [31:0] in_mul2155_pop31152_0,
    input wire [31:0] in_mul2155_pop31152_1,
    input wire [31:0] in_mul49_pop26146_0,
    input wire [31:0] in_mul49_pop26146_1,
    input wire [31:0] in_mul90_0,
    input wire [31:0] in_mul90_1,
    input wire [0:0] in_notcmp3864_pop35158_0,
    input wire [0:0] in_notcmp3864_pop35158_1,
    input wire [0:0] in_notcmp43110_0,
    input wire [0:0] in_notcmp43110_1,
    input wire [0:0] in_notcmp4361_pop33156_0,
    input wire [0:0] in_notcmp4361_pop33156_1,
    input wire [63:0] in_output_im,
    input wire [0:0] in_pop27142_0,
    input wire [0:0] in_pop27142_1,
    input wire [0:0] in_pop28144_0,
    input wire [0:0] in_pop28144_1,
    input wire [0:0] in_pop29148_0,
    input wire [0:0] in_pop29148_1,
    input wire [31:0] in_pre74_e125_0,
    input wire [31:0] in_pre74_e125_1,
    input wire [31:0] in_pre75_e126_0,
    input wire [31:0] in_pre75_e126_1,
    input wire [31:0] in_pre76_e127_0,
    input wire [31:0] in_pre76_e127_1,
    input wire [31:0] in_pre77_e128_0,
    input wire [31:0] in_pre77_e128_1,
    input wire [31:0] in_pre78_e129_0,
    input wire [31:0] in_pre78_e129_1,
    input wire [31:0] in_pre79_e130_0,
    input wire [31:0] in_pre79_e130_1,
    input wire [31:0] in_pre80_e131_0,
    input wire [31:0] in_pre80_e131_1,
    input wire [31:0] in_pre81_e132_0,
    input wire [31:0] in_pre81_e132_1,
    input wire [31:0] in_pre82_e133_0,
    input wire [31:0] in_pre82_e133_1,
    input wire [31:0] in_pre83_e134_0,
    input wire [31:0] in_pre83_e134_1,
    input wire [31:0] in_pre84_e135_0,
    input wire [31:0] in_pre84_e135_1,
    input wire [31:0] in_pre85_e136_0,
    input wire [31:0] in_pre85_e136_1,
    input wire [31:0] in_pre86_e137_0,
    input wire [31:0] in_pre86_e137_1,
    input wire [31:0] in_pre87_e138_0,
    input wire [31:0] in_pre87_e138_1,
    input wire [31:0] in_pre88_e139_0,
    input wire [31:0] in_pre88_e139_1,
    input wire [31:0] in_pre_e124_0,
    input wire [31:0] in_pre_e124_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_unnamed_conv2d1x117_0,
    input wire [0:0] in_unnamed_conv2d1x117_1,
    input wire [0:0] in_unnamed_conv2d1x118_0,
    input wire [0:0] in_unnamed_conv2d1x118_1,
    input wire [0:0] in_unnamed_conv2d1x119_0,
    input wire [0:0] in_unnamed_conv2d1x119_1,
    input wire [32:0] in_unnamed_conv2d1x120_0,
    input wire [32:0] in_unnamed_conv2d1x120_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe13451,
    output wire [31:0] out_c0_exe14452,
    output wire [0:0] out_c0_exe15453,
    output wire [0:0] out_c0_exe16454,
    output wire [63:0] out_c0_exe17455,
    output wire [0:0] out_c0_exe3441,
    output wire [0:0] out_c0_exe4442,
    output wire [31:0] out_c0_exe5443,
    output wire [31:0] out_c1_exe1,
    output wire [31:0] out_c1_exe10,
    output wire [31:0] out_c1_exe11,
    output wire [31:0] out_c1_exe12,
    output wire [31:0] out_c1_exe13,
    output wire [31:0] out_c1_exe14,
    output wire [31:0] out_c1_exe15,
    output wire [31:0] out_c1_exe16,
    output wire [31:0] out_c1_exe17,
    output wire [31:0] out_c1_exe18,
    output wire [31:0] out_c1_exe19,
    output wire [31:0] out_c1_exe2,
    output wire [31:0] out_c1_exe20,
    output wire [31:0] out_c1_exe21,
    output wire [31:0] out_c1_exe22,
    output wire [31:0] out_c1_exe23,
    output wire [31:0] out_c1_exe24,
    output wire [31:0] out_c1_exe25,
    output wire [31:0] out_c1_exe26,
    output wire [31:0] out_c1_exe27,
    output wire [31:0] out_c1_exe28,
    output wire [31:0] out_c1_exe29,
    output wire [31:0] out_c1_exe3,
    output wire [31:0] out_c1_exe30,
    output wire [31:0] out_c1_exe31,
    output wire [31:0] out_c1_exe32,
    output wire [31:0] out_c1_exe4,
    output wire [31:0] out_c1_exe5,
    output wire [31:0] out_c1_exe6,
    output wire [31:0] out_c1_exe7,
    output wire [31:0] out_c1_exe8,
    output wire [31:0] out_c1_exe9,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [30:0] out_lm148_conv2d1x1_avm_address,
    output wire [4:0] out_lm148_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm148_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm148_conv2d1x1_avm_enable,
    output wire [0:0] out_lm148_conv2d1x1_avm_read,
    output wire [0:0] out_lm148_conv2d1x1_avm_write,
    output wire [511:0] out_lm148_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm150_conv2d1x1_avm_address,
    output wire [4:0] out_lm150_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm150_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm150_conv2d1x1_avm_enable,
    output wire [0:0] out_lm150_conv2d1x1_avm_read,
    output wire [0:0] out_lm150_conv2d1x1_avm_write,
    output wire [511:0] out_lm150_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm151_conv2d1x1_avm_address,
    output wire [4:0] out_lm151_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm151_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm151_conv2d1x1_avm_enable,
    output wire [0:0] out_lm151_conv2d1x1_avm_read,
    output wire [0:0] out_lm151_conv2d1x1_avm_write,
    output wire [511:0] out_lm151_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm153_conv2d1x1_avm_address,
    output wire [4:0] out_lm153_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm153_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm153_conv2d1x1_avm_enable,
    output wire [0:0] out_lm153_conv2d1x1_avm_read,
    output wire [0:0] out_lm153_conv2d1x1_avm_write,
    output wire [511:0] out_lm153_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm155_conv2d1x1_avm_address,
    output wire [4:0] out_lm155_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm155_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm155_conv2d1x1_avm_enable,
    output wire [0:0] out_lm155_conv2d1x1_avm_read,
    output wire [0:0] out_lm155_conv2d1x1_avm_write,
    output wire [511:0] out_lm155_conv2d1x1_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv2d1x1_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_c0_exe12450;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c0_exe13451;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c0_exe14452;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_c0_exe15453;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_c0_exe16454;
    wire [63:0] bb_conv2d1x1_B8_stall_region_out_c0_exe17455;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_c0_exe3441;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_c0_exe4442;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c0_exe5443;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe1;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe10;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe11;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe12;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe13;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe14;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe15;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe16;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe17;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe18;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe19;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe2;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe20;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe21;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe22;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe23;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe24;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe25;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe26;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe27;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe28;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe29;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe3;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe30;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe31;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe32;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe4;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe5;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe6;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe7;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe8;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe9;
    wire [30:0] bb_conv2d1x1_B8_stall_region_out_lm148_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_stall_region_out_lm148_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_stall_region_out_lm148_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm148_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm148_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm148_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_stall_region_out_lm148_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B8_stall_region_out_lm150_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_stall_region_out_lm150_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_stall_region_out_lm150_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm150_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm150_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm150_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_stall_region_out_lm150_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B8_stall_region_out_lm151_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_stall_region_out_lm151_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_stall_region_out_lm151_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm151_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm151_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm151_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_stall_region_out_lm151_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B8_stall_region_out_lm153_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_stall_region_out_lm153_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_stall_region_out_lm153_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm153_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm153_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm153_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_stall_region_out_lm153_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B8_stall_region_out_lm155_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_stall_region_out_lm155_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_stall_region_out_lm155_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm155_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm155_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm155_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_stall_region_out_lm155_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_stall_out;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_valid_out;
    wire [31:0] conv2d1x1_B8_branch_out_c0_exe13451;
    wire [31:0] conv2d1x1_B8_branch_out_c0_exe14452;
    wire [0:0] conv2d1x1_B8_branch_out_c0_exe15453;
    wire [0:0] conv2d1x1_B8_branch_out_c0_exe16454;
    wire [63:0] conv2d1x1_B8_branch_out_c0_exe17455;
    wire [0:0] conv2d1x1_B8_branch_out_c0_exe3441;
    wire [0:0] conv2d1x1_B8_branch_out_c0_exe4442;
    wire [31:0] conv2d1x1_B8_branch_out_c0_exe5443;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe1;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe10;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe11;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe12;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe13;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe14;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe15;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe16;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe17;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe18;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe19;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe2;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe20;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe21;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe22;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe23;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe24;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe25;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe26;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe27;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe28;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe29;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe3;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe30;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe31;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe32;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe4;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe5;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe6;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe7;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe8;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe9;
    wire [0:0] conv2d1x1_B8_branch_out_stall_out;
    wire [0:0] conv2d1x1_B8_branch_out_valid_out_0;
    wire [0:0] conv2d1x1_B8_branch_out_valid_out_1;
    wire [63:0] conv2d1x1_B8_merge_out_ap_pop_ext7140;
    wire [0:0] conv2d1x1_B8_merge_out_forked;
    wire [31:0] conv2d1x1_B8_merge_out_ij_068_pop1366_pop36160;
    wire [31:0] conv2d1x1_B8_merge_out_lm52_pop30150;
    wire [31:0] conv2d1x1_B8_merge_out_lm95;
    wire [31:0] conv2d1x1_B8_merge_out_mul100105;
    wire [31:0] conv2d1x1_B8_merge_out_mul10058_pop32154;
    wire [31:0] conv2d1x1_B8_merge_out_mul21100;
    wire [31:0] conv2d1x1_B8_merge_out_mul2155_pop31152;
    wire [31:0] conv2d1x1_B8_merge_out_mul49_pop26146;
    wire [31:0] conv2d1x1_B8_merge_out_mul90;
    wire [0:0] conv2d1x1_B8_merge_out_notcmp3864_pop35158;
    wire [0:0] conv2d1x1_B8_merge_out_notcmp43110;
    wire [0:0] conv2d1x1_B8_merge_out_notcmp4361_pop33156;
    wire [0:0] conv2d1x1_B8_merge_out_pop27142;
    wire [0:0] conv2d1x1_B8_merge_out_pop28144;
    wire [0:0] conv2d1x1_B8_merge_out_pop29148;
    wire [31:0] conv2d1x1_B8_merge_out_pre74_e125;
    wire [31:0] conv2d1x1_B8_merge_out_pre75_e126;
    wire [31:0] conv2d1x1_B8_merge_out_pre76_e127;
    wire [31:0] conv2d1x1_B8_merge_out_pre77_e128;
    wire [31:0] conv2d1x1_B8_merge_out_pre78_e129;
    wire [31:0] conv2d1x1_B8_merge_out_pre79_e130;
    wire [31:0] conv2d1x1_B8_merge_out_pre80_e131;
    wire [31:0] conv2d1x1_B8_merge_out_pre81_e132;
    wire [31:0] conv2d1x1_B8_merge_out_pre82_e133;
    wire [31:0] conv2d1x1_B8_merge_out_pre83_e134;
    wire [31:0] conv2d1x1_B8_merge_out_pre84_e135;
    wire [31:0] conv2d1x1_B8_merge_out_pre85_e136;
    wire [31:0] conv2d1x1_B8_merge_out_pre86_e137;
    wire [31:0] conv2d1x1_B8_merge_out_pre87_e138;
    wire [31:0] conv2d1x1_B8_merge_out_pre88_e139;
    wire [31:0] conv2d1x1_B8_merge_out_pre_e124;
    wire [0:0] conv2d1x1_B8_merge_out_stall_out_0;
    wire [0:0] conv2d1x1_B8_merge_out_stall_out_1;
    wire [0:0] conv2d1x1_B8_merge_out_unnamed_conv2d1x117;
    wire [0:0] conv2d1x1_B8_merge_out_unnamed_conv2d1x118;
    wire [0:0] conv2d1x1_B8_merge_out_unnamed_conv2d1x119;
    wire [32:0] conv2d1x1_B8_merge_out_unnamed_conv2d1x120;
    wire [0:0] conv2d1x1_B8_merge_out_valid_out;


    // conv2d1x1_B8_merge(BLACKBOX,4)
    conv2d1x1_B8_merge theconv2d1x1_B8_merge (
        .in_ap_pop_ext7140_0(in_ap_pop_ext7140_0),
        .in_ap_pop_ext7140_1(in_ap_pop_ext7140_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_ij_068_pop1366_pop36160_0(in_ij_068_pop1366_pop36160_0),
        .in_ij_068_pop1366_pop36160_1(in_ij_068_pop1366_pop36160_1),
        .in_lm52_pop30150_0(in_lm52_pop30150_0),
        .in_lm52_pop30150_1(in_lm52_pop30150_1),
        .in_lm95_0(in_lm95_0),
        .in_lm95_1(in_lm95_1),
        .in_mul100105_0(in_mul100105_0),
        .in_mul100105_1(in_mul100105_1),
        .in_mul10058_pop32154_0(in_mul10058_pop32154_0),
        .in_mul10058_pop32154_1(in_mul10058_pop32154_1),
        .in_mul21100_0(in_mul21100_0),
        .in_mul21100_1(in_mul21100_1),
        .in_mul2155_pop31152_0(in_mul2155_pop31152_0),
        .in_mul2155_pop31152_1(in_mul2155_pop31152_1),
        .in_mul49_pop26146_0(in_mul49_pop26146_0),
        .in_mul49_pop26146_1(in_mul49_pop26146_1),
        .in_mul90_0(in_mul90_0),
        .in_mul90_1(in_mul90_1),
        .in_notcmp3864_pop35158_0(in_notcmp3864_pop35158_0),
        .in_notcmp3864_pop35158_1(in_notcmp3864_pop35158_1),
        .in_notcmp43110_0(in_notcmp43110_0),
        .in_notcmp43110_1(in_notcmp43110_1),
        .in_notcmp4361_pop33156_0(in_notcmp4361_pop33156_0),
        .in_notcmp4361_pop33156_1(in_notcmp4361_pop33156_1),
        .in_pop27142_0(in_pop27142_0),
        .in_pop27142_1(in_pop27142_1),
        .in_pop28144_0(in_pop28144_0),
        .in_pop28144_1(in_pop28144_1),
        .in_pop29148_0(in_pop29148_0),
        .in_pop29148_1(in_pop29148_1),
        .in_pre74_e125_0(in_pre74_e125_0),
        .in_pre74_e125_1(in_pre74_e125_1),
        .in_pre75_e126_0(in_pre75_e126_0),
        .in_pre75_e126_1(in_pre75_e126_1),
        .in_pre76_e127_0(in_pre76_e127_0),
        .in_pre76_e127_1(in_pre76_e127_1),
        .in_pre77_e128_0(in_pre77_e128_0),
        .in_pre77_e128_1(in_pre77_e128_1),
        .in_pre78_e129_0(in_pre78_e129_0),
        .in_pre78_e129_1(in_pre78_e129_1),
        .in_pre79_e130_0(in_pre79_e130_0),
        .in_pre79_e130_1(in_pre79_e130_1),
        .in_pre80_e131_0(in_pre80_e131_0),
        .in_pre80_e131_1(in_pre80_e131_1),
        .in_pre81_e132_0(in_pre81_e132_0),
        .in_pre81_e132_1(in_pre81_e132_1),
        .in_pre82_e133_0(in_pre82_e133_0),
        .in_pre82_e133_1(in_pre82_e133_1),
        .in_pre83_e134_0(in_pre83_e134_0),
        .in_pre83_e134_1(in_pre83_e134_1),
        .in_pre84_e135_0(in_pre84_e135_0),
        .in_pre84_e135_1(in_pre84_e135_1),
        .in_pre85_e136_0(in_pre85_e136_0),
        .in_pre85_e136_1(in_pre85_e136_1),
        .in_pre86_e137_0(in_pre86_e137_0),
        .in_pre86_e137_1(in_pre86_e137_1),
        .in_pre87_e138_0(in_pre87_e138_0),
        .in_pre87_e138_1(in_pre87_e138_1),
        .in_pre88_e139_0(in_pre88_e139_0),
        .in_pre88_e139_1(in_pre88_e139_1),
        .in_pre_e124_0(in_pre_e124_0),
        .in_pre_e124_1(in_pre_e124_1),
        .in_stall_in(bb_conv2d1x1_B8_stall_region_out_stall_out),
        .in_unnamed_conv2d1x117_0(in_unnamed_conv2d1x117_0),
        .in_unnamed_conv2d1x117_1(in_unnamed_conv2d1x117_1),
        .in_unnamed_conv2d1x118_0(in_unnamed_conv2d1x118_0),
        .in_unnamed_conv2d1x118_1(in_unnamed_conv2d1x118_1),
        .in_unnamed_conv2d1x119_0(in_unnamed_conv2d1x119_0),
        .in_unnamed_conv2d1x119_1(in_unnamed_conv2d1x119_1),
        .in_unnamed_conv2d1x120_0(in_unnamed_conv2d1x120_0),
        .in_unnamed_conv2d1x120_1(in_unnamed_conv2d1x120_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_ap_pop_ext7140(conv2d1x1_B8_merge_out_ap_pop_ext7140),
        .out_forked(conv2d1x1_B8_merge_out_forked),
        .out_ij_068_pop1366_pop36160(conv2d1x1_B8_merge_out_ij_068_pop1366_pop36160),
        .out_lm52_pop30150(conv2d1x1_B8_merge_out_lm52_pop30150),
        .out_lm95(conv2d1x1_B8_merge_out_lm95),
        .out_mul100105(conv2d1x1_B8_merge_out_mul100105),
        .out_mul10058_pop32154(conv2d1x1_B8_merge_out_mul10058_pop32154),
        .out_mul21100(conv2d1x1_B8_merge_out_mul21100),
        .out_mul2155_pop31152(conv2d1x1_B8_merge_out_mul2155_pop31152),
        .out_mul49_pop26146(conv2d1x1_B8_merge_out_mul49_pop26146),
        .out_mul90(conv2d1x1_B8_merge_out_mul90),
        .out_notcmp3864_pop35158(conv2d1x1_B8_merge_out_notcmp3864_pop35158),
        .out_notcmp43110(conv2d1x1_B8_merge_out_notcmp43110),
        .out_notcmp4361_pop33156(conv2d1x1_B8_merge_out_notcmp4361_pop33156),
        .out_pop27142(conv2d1x1_B8_merge_out_pop27142),
        .out_pop28144(conv2d1x1_B8_merge_out_pop28144),
        .out_pop29148(conv2d1x1_B8_merge_out_pop29148),
        .out_pre74_e125(conv2d1x1_B8_merge_out_pre74_e125),
        .out_pre75_e126(conv2d1x1_B8_merge_out_pre75_e126),
        .out_pre76_e127(conv2d1x1_B8_merge_out_pre76_e127),
        .out_pre77_e128(conv2d1x1_B8_merge_out_pre77_e128),
        .out_pre78_e129(conv2d1x1_B8_merge_out_pre78_e129),
        .out_pre79_e130(conv2d1x1_B8_merge_out_pre79_e130),
        .out_pre80_e131(conv2d1x1_B8_merge_out_pre80_e131),
        .out_pre81_e132(conv2d1x1_B8_merge_out_pre81_e132),
        .out_pre82_e133(conv2d1x1_B8_merge_out_pre82_e133),
        .out_pre83_e134(conv2d1x1_B8_merge_out_pre83_e134),
        .out_pre84_e135(conv2d1x1_B8_merge_out_pre84_e135),
        .out_pre85_e136(conv2d1x1_B8_merge_out_pre85_e136),
        .out_pre86_e137(conv2d1x1_B8_merge_out_pre86_e137),
        .out_pre87_e138(conv2d1x1_B8_merge_out_pre87_e138),
        .out_pre88_e139(conv2d1x1_B8_merge_out_pre88_e139),
        .out_pre_e124(conv2d1x1_B8_merge_out_pre_e124),
        .out_stall_out_0(conv2d1x1_B8_merge_out_stall_out_0),
        .out_stall_out_1(conv2d1x1_B8_merge_out_stall_out_1),
        .out_unnamed_conv2d1x117(conv2d1x1_B8_merge_out_unnamed_conv2d1x117),
        .out_unnamed_conv2d1x118(conv2d1x1_B8_merge_out_unnamed_conv2d1x118),
        .out_unnamed_conv2d1x119(conv2d1x1_B8_merge_out_unnamed_conv2d1x119),
        .out_unnamed_conv2d1x120(conv2d1x1_B8_merge_out_unnamed_conv2d1x120),
        .out_valid_out(conv2d1x1_B8_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B8_stall_region(BLACKBOX,2)
    conv2d1x1_bb_B8_stall_region thebb_conv2d1x1_B8_stall_region (
        .in_ap_pop_ext7140(conv2d1x1_B8_merge_out_ap_pop_ext7140),
        .in_filter_weight(in_filter_weight),
        .in_flush(in_flush),
        .in_forked(conv2d1x1_B8_merge_out_forked),
        .in_ij_068_pop1366_pop36160(conv2d1x1_B8_merge_out_ij_068_pop1366_pop36160),
        .in_input_im(in_input_im),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_lm148_conv2d1x1_avm_readdata(in_lm148_conv2d1x1_avm_readdata),
        .in_lm148_conv2d1x1_avm_readdatavalid(in_lm148_conv2d1x1_avm_readdatavalid),
        .in_lm148_conv2d1x1_avm_waitrequest(in_lm148_conv2d1x1_avm_waitrequest),
        .in_lm148_conv2d1x1_avm_writeack(in_lm148_conv2d1x1_avm_writeack),
        .in_lm150_conv2d1x1_avm_readdata(in_lm150_conv2d1x1_avm_readdata),
        .in_lm150_conv2d1x1_avm_readdatavalid(in_lm150_conv2d1x1_avm_readdatavalid),
        .in_lm150_conv2d1x1_avm_waitrequest(in_lm150_conv2d1x1_avm_waitrequest),
        .in_lm150_conv2d1x1_avm_writeack(in_lm150_conv2d1x1_avm_writeack),
        .in_lm151_conv2d1x1_avm_readdata(in_lm151_conv2d1x1_avm_readdata),
        .in_lm151_conv2d1x1_avm_readdatavalid(in_lm151_conv2d1x1_avm_readdatavalid),
        .in_lm151_conv2d1x1_avm_waitrequest(in_lm151_conv2d1x1_avm_waitrequest),
        .in_lm151_conv2d1x1_avm_writeack(in_lm151_conv2d1x1_avm_writeack),
        .in_lm153_conv2d1x1_avm_readdata(in_lm153_conv2d1x1_avm_readdata),
        .in_lm153_conv2d1x1_avm_readdatavalid(in_lm153_conv2d1x1_avm_readdatavalid),
        .in_lm153_conv2d1x1_avm_waitrequest(in_lm153_conv2d1x1_avm_waitrequest),
        .in_lm153_conv2d1x1_avm_writeack(in_lm153_conv2d1x1_avm_writeack),
        .in_lm155_conv2d1x1_avm_readdata(in_lm155_conv2d1x1_avm_readdata),
        .in_lm155_conv2d1x1_avm_readdatavalid(in_lm155_conv2d1x1_avm_readdatavalid),
        .in_lm155_conv2d1x1_avm_waitrequest(in_lm155_conv2d1x1_avm_waitrequest),
        .in_lm155_conv2d1x1_avm_writeack(in_lm155_conv2d1x1_avm_writeack),
        .in_lm52_pop30150(conv2d1x1_B8_merge_out_lm52_pop30150),
        .in_lm95(conv2d1x1_B8_merge_out_lm95),
        .in_mul100105(conv2d1x1_B8_merge_out_mul100105),
        .in_mul10058_pop32154(conv2d1x1_B8_merge_out_mul10058_pop32154),
        .in_mul21100(conv2d1x1_B8_merge_out_mul21100),
        .in_mul2155_pop31152(conv2d1x1_B8_merge_out_mul2155_pop31152),
        .in_mul49_pop26146(conv2d1x1_B8_merge_out_mul49_pop26146),
        .in_mul90(conv2d1x1_B8_merge_out_mul90),
        .in_notcmp3864_pop35158(conv2d1x1_B8_merge_out_notcmp3864_pop35158),
        .in_notcmp43110(conv2d1x1_B8_merge_out_notcmp43110),
        .in_notcmp4361_pop33156(conv2d1x1_B8_merge_out_notcmp4361_pop33156),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_pop27142(conv2d1x1_B8_merge_out_pop27142),
        .in_pop28144(conv2d1x1_B8_merge_out_pop28144),
        .in_pop29148(conv2d1x1_B8_merge_out_pop29148),
        .in_pre74_e125(conv2d1x1_B8_merge_out_pre74_e125),
        .in_pre75_e126(conv2d1x1_B8_merge_out_pre75_e126),
        .in_pre76_e127(conv2d1x1_B8_merge_out_pre76_e127),
        .in_pre77_e128(conv2d1x1_B8_merge_out_pre77_e128),
        .in_pre78_e129(conv2d1x1_B8_merge_out_pre78_e129),
        .in_pre79_e130(conv2d1x1_B8_merge_out_pre79_e130),
        .in_pre80_e131(conv2d1x1_B8_merge_out_pre80_e131),
        .in_pre81_e132(conv2d1x1_B8_merge_out_pre81_e132),
        .in_pre82_e133(conv2d1x1_B8_merge_out_pre82_e133),
        .in_pre83_e134(conv2d1x1_B8_merge_out_pre83_e134),
        .in_pre84_e135(conv2d1x1_B8_merge_out_pre84_e135),
        .in_pre85_e136(conv2d1x1_B8_merge_out_pre85_e136),
        .in_pre86_e137(conv2d1x1_B8_merge_out_pre86_e137),
        .in_pre87_e138(conv2d1x1_B8_merge_out_pre87_e138),
        .in_pre88_e139(conv2d1x1_B8_merge_out_pre88_e139),
        .in_pre_e124(conv2d1x1_B8_merge_out_pre_e124),
        .in_stall_in(conv2d1x1_B8_branch_out_stall_out),
        .in_unnamed_conv2d1x117(conv2d1x1_B8_merge_out_unnamed_conv2d1x117),
        .in_unnamed_conv2d1x118(conv2d1x1_B8_merge_out_unnamed_conv2d1x118),
        .in_unnamed_conv2d1x119(conv2d1x1_B8_merge_out_unnamed_conv2d1x119),
        .in_unnamed_conv2d1x120(conv2d1x1_B8_merge_out_unnamed_conv2d1x120),
        .in_valid_in(conv2d1x1_B8_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out(bb_conv2d1x1_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out(bb_conv2d1x1_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out),
        .out_c0_exe12450(bb_conv2d1x1_B8_stall_region_out_c0_exe12450),
        .out_c0_exe13451(bb_conv2d1x1_B8_stall_region_out_c0_exe13451),
        .out_c0_exe14452(bb_conv2d1x1_B8_stall_region_out_c0_exe14452),
        .out_c0_exe15453(bb_conv2d1x1_B8_stall_region_out_c0_exe15453),
        .out_c0_exe16454(bb_conv2d1x1_B8_stall_region_out_c0_exe16454),
        .out_c0_exe17455(bb_conv2d1x1_B8_stall_region_out_c0_exe17455),
        .out_c0_exe3441(bb_conv2d1x1_B8_stall_region_out_c0_exe3441),
        .out_c0_exe4442(bb_conv2d1x1_B8_stall_region_out_c0_exe4442),
        .out_c0_exe5443(bb_conv2d1x1_B8_stall_region_out_c0_exe5443),
        .out_c1_exe1(bb_conv2d1x1_B8_stall_region_out_c1_exe1),
        .out_c1_exe10(bb_conv2d1x1_B8_stall_region_out_c1_exe10),
        .out_c1_exe11(bb_conv2d1x1_B8_stall_region_out_c1_exe11),
        .out_c1_exe12(bb_conv2d1x1_B8_stall_region_out_c1_exe12),
        .out_c1_exe13(bb_conv2d1x1_B8_stall_region_out_c1_exe13),
        .out_c1_exe14(bb_conv2d1x1_B8_stall_region_out_c1_exe14),
        .out_c1_exe15(bb_conv2d1x1_B8_stall_region_out_c1_exe15),
        .out_c1_exe16(bb_conv2d1x1_B8_stall_region_out_c1_exe16),
        .out_c1_exe17(bb_conv2d1x1_B8_stall_region_out_c1_exe17),
        .out_c1_exe18(bb_conv2d1x1_B8_stall_region_out_c1_exe18),
        .out_c1_exe19(bb_conv2d1x1_B8_stall_region_out_c1_exe19),
        .out_c1_exe2(bb_conv2d1x1_B8_stall_region_out_c1_exe2),
        .out_c1_exe20(bb_conv2d1x1_B8_stall_region_out_c1_exe20),
        .out_c1_exe21(bb_conv2d1x1_B8_stall_region_out_c1_exe21),
        .out_c1_exe22(bb_conv2d1x1_B8_stall_region_out_c1_exe22),
        .out_c1_exe23(bb_conv2d1x1_B8_stall_region_out_c1_exe23),
        .out_c1_exe24(bb_conv2d1x1_B8_stall_region_out_c1_exe24),
        .out_c1_exe25(bb_conv2d1x1_B8_stall_region_out_c1_exe25),
        .out_c1_exe26(bb_conv2d1x1_B8_stall_region_out_c1_exe26),
        .out_c1_exe27(bb_conv2d1x1_B8_stall_region_out_c1_exe27),
        .out_c1_exe28(bb_conv2d1x1_B8_stall_region_out_c1_exe28),
        .out_c1_exe29(bb_conv2d1x1_B8_stall_region_out_c1_exe29),
        .out_c1_exe3(bb_conv2d1x1_B8_stall_region_out_c1_exe3),
        .out_c1_exe30(bb_conv2d1x1_B8_stall_region_out_c1_exe30),
        .out_c1_exe31(bb_conv2d1x1_B8_stall_region_out_c1_exe31),
        .out_c1_exe32(bb_conv2d1x1_B8_stall_region_out_c1_exe32),
        .out_c1_exe4(bb_conv2d1x1_B8_stall_region_out_c1_exe4),
        .out_c1_exe5(bb_conv2d1x1_B8_stall_region_out_c1_exe5),
        .out_c1_exe6(bb_conv2d1x1_B8_stall_region_out_c1_exe6),
        .out_c1_exe7(bb_conv2d1x1_B8_stall_region_out_c1_exe7),
        .out_c1_exe8(bb_conv2d1x1_B8_stall_region_out_c1_exe8),
        .out_c1_exe9(bb_conv2d1x1_B8_stall_region_out_c1_exe9),
        .out_lm148_conv2d1x1_avm_address(bb_conv2d1x1_B8_stall_region_out_lm148_conv2d1x1_avm_address),
        .out_lm148_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_stall_region_out_lm148_conv2d1x1_avm_burstcount),
        .out_lm148_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_stall_region_out_lm148_conv2d1x1_avm_byteenable),
        .out_lm148_conv2d1x1_avm_enable(bb_conv2d1x1_B8_stall_region_out_lm148_conv2d1x1_avm_enable),
        .out_lm148_conv2d1x1_avm_read(bb_conv2d1x1_B8_stall_region_out_lm148_conv2d1x1_avm_read),
        .out_lm148_conv2d1x1_avm_write(bb_conv2d1x1_B8_stall_region_out_lm148_conv2d1x1_avm_write),
        .out_lm148_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_stall_region_out_lm148_conv2d1x1_avm_writedata),
        .out_lm150_conv2d1x1_avm_address(bb_conv2d1x1_B8_stall_region_out_lm150_conv2d1x1_avm_address),
        .out_lm150_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_stall_region_out_lm150_conv2d1x1_avm_burstcount),
        .out_lm150_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_stall_region_out_lm150_conv2d1x1_avm_byteenable),
        .out_lm150_conv2d1x1_avm_enable(bb_conv2d1x1_B8_stall_region_out_lm150_conv2d1x1_avm_enable),
        .out_lm150_conv2d1x1_avm_read(bb_conv2d1x1_B8_stall_region_out_lm150_conv2d1x1_avm_read),
        .out_lm150_conv2d1x1_avm_write(bb_conv2d1x1_B8_stall_region_out_lm150_conv2d1x1_avm_write),
        .out_lm150_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_stall_region_out_lm150_conv2d1x1_avm_writedata),
        .out_lm151_conv2d1x1_avm_address(bb_conv2d1x1_B8_stall_region_out_lm151_conv2d1x1_avm_address),
        .out_lm151_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_stall_region_out_lm151_conv2d1x1_avm_burstcount),
        .out_lm151_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_stall_region_out_lm151_conv2d1x1_avm_byteenable),
        .out_lm151_conv2d1x1_avm_enable(bb_conv2d1x1_B8_stall_region_out_lm151_conv2d1x1_avm_enable),
        .out_lm151_conv2d1x1_avm_read(bb_conv2d1x1_B8_stall_region_out_lm151_conv2d1x1_avm_read),
        .out_lm151_conv2d1x1_avm_write(bb_conv2d1x1_B8_stall_region_out_lm151_conv2d1x1_avm_write),
        .out_lm151_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_stall_region_out_lm151_conv2d1x1_avm_writedata),
        .out_lm153_conv2d1x1_avm_address(bb_conv2d1x1_B8_stall_region_out_lm153_conv2d1x1_avm_address),
        .out_lm153_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_stall_region_out_lm153_conv2d1x1_avm_burstcount),
        .out_lm153_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_stall_region_out_lm153_conv2d1x1_avm_byteenable),
        .out_lm153_conv2d1x1_avm_enable(bb_conv2d1x1_B8_stall_region_out_lm153_conv2d1x1_avm_enable),
        .out_lm153_conv2d1x1_avm_read(bb_conv2d1x1_B8_stall_region_out_lm153_conv2d1x1_avm_read),
        .out_lm153_conv2d1x1_avm_write(bb_conv2d1x1_B8_stall_region_out_lm153_conv2d1x1_avm_write),
        .out_lm153_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_stall_region_out_lm153_conv2d1x1_avm_writedata),
        .out_lm155_conv2d1x1_avm_address(bb_conv2d1x1_B8_stall_region_out_lm155_conv2d1x1_avm_address),
        .out_lm155_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_stall_region_out_lm155_conv2d1x1_avm_burstcount),
        .out_lm155_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_stall_region_out_lm155_conv2d1x1_avm_byteenable),
        .out_lm155_conv2d1x1_avm_enable(bb_conv2d1x1_B8_stall_region_out_lm155_conv2d1x1_avm_enable),
        .out_lm155_conv2d1x1_avm_read(bb_conv2d1x1_B8_stall_region_out_lm155_conv2d1x1_avm_read),
        .out_lm155_conv2d1x1_avm_write(bb_conv2d1x1_B8_stall_region_out_lm155_conv2d1x1_avm_write),
        .out_lm155_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_stall_region_out_lm155_conv2d1x1_avm_writedata),
        .out_pipeline_valid_out(bb_conv2d1x1_B8_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv2d1x1_B8_stall_region_out_stall_out),
        .out_valid_out(bb_conv2d1x1_B8_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B8_branch(BLACKBOX,3)
    conv2d1x1_B8_branch theconv2d1x1_B8_branch (
        .in_c0_exe12450(bb_conv2d1x1_B8_stall_region_out_c0_exe12450),
        .in_c0_exe13451(bb_conv2d1x1_B8_stall_region_out_c0_exe13451),
        .in_c0_exe14452(bb_conv2d1x1_B8_stall_region_out_c0_exe14452),
        .in_c0_exe15453(bb_conv2d1x1_B8_stall_region_out_c0_exe15453),
        .in_c0_exe16454(bb_conv2d1x1_B8_stall_region_out_c0_exe16454),
        .in_c0_exe17455(bb_conv2d1x1_B8_stall_region_out_c0_exe17455),
        .in_c0_exe3441(bb_conv2d1x1_B8_stall_region_out_c0_exe3441),
        .in_c0_exe4442(bb_conv2d1x1_B8_stall_region_out_c0_exe4442),
        .in_c0_exe5443(bb_conv2d1x1_B8_stall_region_out_c0_exe5443),
        .in_c1_exe1(bb_conv2d1x1_B8_stall_region_out_c1_exe1),
        .in_c1_exe10(bb_conv2d1x1_B8_stall_region_out_c1_exe10),
        .in_c1_exe11(bb_conv2d1x1_B8_stall_region_out_c1_exe11),
        .in_c1_exe12(bb_conv2d1x1_B8_stall_region_out_c1_exe12),
        .in_c1_exe13(bb_conv2d1x1_B8_stall_region_out_c1_exe13),
        .in_c1_exe14(bb_conv2d1x1_B8_stall_region_out_c1_exe14),
        .in_c1_exe15(bb_conv2d1x1_B8_stall_region_out_c1_exe15),
        .in_c1_exe16(bb_conv2d1x1_B8_stall_region_out_c1_exe16),
        .in_c1_exe17(bb_conv2d1x1_B8_stall_region_out_c1_exe17),
        .in_c1_exe18(bb_conv2d1x1_B8_stall_region_out_c1_exe18),
        .in_c1_exe19(bb_conv2d1x1_B8_stall_region_out_c1_exe19),
        .in_c1_exe2(bb_conv2d1x1_B8_stall_region_out_c1_exe2),
        .in_c1_exe20(bb_conv2d1x1_B8_stall_region_out_c1_exe20),
        .in_c1_exe21(bb_conv2d1x1_B8_stall_region_out_c1_exe21),
        .in_c1_exe22(bb_conv2d1x1_B8_stall_region_out_c1_exe22),
        .in_c1_exe23(bb_conv2d1x1_B8_stall_region_out_c1_exe23),
        .in_c1_exe24(bb_conv2d1x1_B8_stall_region_out_c1_exe24),
        .in_c1_exe25(bb_conv2d1x1_B8_stall_region_out_c1_exe25),
        .in_c1_exe26(bb_conv2d1x1_B8_stall_region_out_c1_exe26),
        .in_c1_exe27(bb_conv2d1x1_B8_stall_region_out_c1_exe27),
        .in_c1_exe28(bb_conv2d1x1_B8_stall_region_out_c1_exe28),
        .in_c1_exe29(bb_conv2d1x1_B8_stall_region_out_c1_exe29),
        .in_c1_exe3(bb_conv2d1x1_B8_stall_region_out_c1_exe3),
        .in_c1_exe30(bb_conv2d1x1_B8_stall_region_out_c1_exe30),
        .in_c1_exe31(bb_conv2d1x1_B8_stall_region_out_c1_exe31),
        .in_c1_exe32(bb_conv2d1x1_B8_stall_region_out_c1_exe32),
        .in_c1_exe4(bb_conv2d1x1_B8_stall_region_out_c1_exe4),
        .in_c1_exe5(bb_conv2d1x1_B8_stall_region_out_c1_exe5),
        .in_c1_exe6(bb_conv2d1x1_B8_stall_region_out_c1_exe6),
        .in_c1_exe7(bb_conv2d1x1_B8_stall_region_out_c1_exe7),
        .in_c1_exe8(bb_conv2d1x1_B8_stall_region_out_c1_exe8),
        .in_c1_exe9(bb_conv2d1x1_B8_stall_region_out_c1_exe9),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv2d1x1_B8_stall_region_out_valid_out),
        .out_c0_exe13451(conv2d1x1_B8_branch_out_c0_exe13451),
        .out_c0_exe14452(conv2d1x1_B8_branch_out_c0_exe14452),
        .out_c0_exe15453(conv2d1x1_B8_branch_out_c0_exe15453),
        .out_c0_exe16454(conv2d1x1_B8_branch_out_c0_exe16454),
        .out_c0_exe17455(conv2d1x1_B8_branch_out_c0_exe17455),
        .out_c0_exe3441(conv2d1x1_B8_branch_out_c0_exe3441),
        .out_c0_exe4442(conv2d1x1_B8_branch_out_c0_exe4442),
        .out_c0_exe5443(conv2d1x1_B8_branch_out_c0_exe5443),
        .out_c1_exe1(conv2d1x1_B8_branch_out_c1_exe1),
        .out_c1_exe10(conv2d1x1_B8_branch_out_c1_exe10),
        .out_c1_exe11(conv2d1x1_B8_branch_out_c1_exe11),
        .out_c1_exe12(conv2d1x1_B8_branch_out_c1_exe12),
        .out_c1_exe13(conv2d1x1_B8_branch_out_c1_exe13),
        .out_c1_exe14(conv2d1x1_B8_branch_out_c1_exe14),
        .out_c1_exe15(conv2d1x1_B8_branch_out_c1_exe15),
        .out_c1_exe16(conv2d1x1_B8_branch_out_c1_exe16),
        .out_c1_exe17(conv2d1x1_B8_branch_out_c1_exe17),
        .out_c1_exe18(conv2d1x1_B8_branch_out_c1_exe18),
        .out_c1_exe19(conv2d1x1_B8_branch_out_c1_exe19),
        .out_c1_exe2(conv2d1x1_B8_branch_out_c1_exe2),
        .out_c1_exe20(conv2d1x1_B8_branch_out_c1_exe20),
        .out_c1_exe21(conv2d1x1_B8_branch_out_c1_exe21),
        .out_c1_exe22(conv2d1x1_B8_branch_out_c1_exe22),
        .out_c1_exe23(conv2d1x1_B8_branch_out_c1_exe23),
        .out_c1_exe24(conv2d1x1_B8_branch_out_c1_exe24),
        .out_c1_exe25(conv2d1x1_B8_branch_out_c1_exe25),
        .out_c1_exe26(conv2d1x1_B8_branch_out_c1_exe26),
        .out_c1_exe27(conv2d1x1_B8_branch_out_c1_exe27),
        .out_c1_exe28(conv2d1x1_B8_branch_out_c1_exe28),
        .out_c1_exe29(conv2d1x1_B8_branch_out_c1_exe29),
        .out_c1_exe3(conv2d1x1_B8_branch_out_c1_exe3),
        .out_c1_exe30(conv2d1x1_B8_branch_out_c1_exe30),
        .out_c1_exe31(conv2d1x1_B8_branch_out_c1_exe31),
        .out_c1_exe32(conv2d1x1_B8_branch_out_c1_exe32),
        .out_c1_exe4(conv2d1x1_B8_branch_out_c1_exe4),
        .out_c1_exe5(conv2d1x1_B8_branch_out_c1_exe5),
        .out_c1_exe6(conv2d1x1_B8_branch_out_c1_exe6),
        .out_c1_exe7(conv2d1x1_B8_branch_out_c1_exe7),
        .out_c1_exe8(conv2d1x1_B8_branch_out_c1_exe8),
        .out_c1_exe9(conv2d1x1_B8_branch_out_c1_exe9),
        .out_stall_out(conv2d1x1_B8_branch_out_stall_out),
        .out_valid_out_0(conv2d1x1_B8_branch_out_valid_out_0),
        .out_valid_out_1(conv2d1x1_B8_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe13451(GPOUT,111)
    assign out_c0_exe13451 = conv2d1x1_B8_branch_out_c0_exe13451;

    // out_c0_exe14452(GPOUT,112)
    assign out_c0_exe14452 = conv2d1x1_B8_branch_out_c0_exe14452;

    // out_c0_exe15453(GPOUT,113)
    assign out_c0_exe15453 = conv2d1x1_B8_branch_out_c0_exe15453;

    // out_c0_exe16454(GPOUT,114)
    assign out_c0_exe16454 = conv2d1x1_B8_branch_out_c0_exe16454;

    // out_c0_exe17455(GPOUT,115)
    assign out_c0_exe17455 = conv2d1x1_B8_branch_out_c0_exe17455;

    // out_c0_exe3441(GPOUT,116)
    assign out_c0_exe3441 = conv2d1x1_B8_branch_out_c0_exe3441;

    // out_c0_exe4442(GPOUT,117)
    assign out_c0_exe4442 = conv2d1x1_B8_branch_out_c0_exe4442;

    // out_c0_exe5443(GPOUT,118)
    assign out_c0_exe5443 = conv2d1x1_B8_branch_out_c0_exe5443;

    // out_c1_exe1(GPOUT,119)
    assign out_c1_exe1 = conv2d1x1_B8_branch_out_c1_exe1;

    // out_c1_exe10(GPOUT,120)
    assign out_c1_exe10 = conv2d1x1_B8_branch_out_c1_exe10;

    // out_c1_exe11(GPOUT,121)
    assign out_c1_exe11 = conv2d1x1_B8_branch_out_c1_exe11;

    // out_c1_exe12(GPOUT,122)
    assign out_c1_exe12 = conv2d1x1_B8_branch_out_c1_exe12;

    // out_c1_exe13(GPOUT,123)
    assign out_c1_exe13 = conv2d1x1_B8_branch_out_c1_exe13;

    // out_c1_exe14(GPOUT,124)
    assign out_c1_exe14 = conv2d1x1_B8_branch_out_c1_exe14;

    // out_c1_exe15(GPOUT,125)
    assign out_c1_exe15 = conv2d1x1_B8_branch_out_c1_exe15;

    // out_c1_exe16(GPOUT,126)
    assign out_c1_exe16 = conv2d1x1_B8_branch_out_c1_exe16;

    // out_c1_exe17(GPOUT,127)
    assign out_c1_exe17 = conv2d1x1_B8_branch_out_c1_exe17;

    // out_c1_exe18(GPOUT,128)
    assign out_c1_exe18 = conv2d1x1_B8_branch_out_c1_exe18;

    // out_c1_exe19(GPOUT,129)
    assign out_c1_exe19 = conv2d1x1_B8_branch_out_c1_exe19;

    // out_c1_exe2(GPOUT,130)
    assign out_c1_exe2 = conv2d1x1_B8_branch_out_c1_exe2;

    // out_c1_exe20(GPOUT,131)
    assign out_c1_exe20 = conv2d1x1_B8_branch_out_c1_exe20;

    // out_c1_exe21(GPOUT,132)
    assign out_c1_exe21 = conv2d1x1_B8_branch_out_c1_exe21;

    // out_c1_exe22(GPOUT,133)
    assign out_c1_exe22 = conv2d1x1_B8_branch_out_c1_exe22;

    // out_c1_exe23(GPOUT,134)
    assign out_c1_exe23 = conv2d1x1_B8_branch_out_c1_exe23;

    // out_c1_exe24(GPOUT,135)
    assign out_c1_exe24 = conv2d1x1_B8_branch_out_c1_exe24;

    // out_c1_exe25(GPOUT,136)
    assign out_c1_exe25 = conv2d1x1_B8_branch_out_c1_exe25;

    // out_c1_exe26(GPOUT,137)
    assign out_c1_exe26 = conv2d1x1_B8_branch_out_c1_exe26;

    // out_c1_exe27(GPOUT,138)
    assign out_c1_exe27 = conv2d1x1_B8_branch_out_c1_exe27;

    // out_c1_exe28(GPOUT,139)
    assign out_c1_exe28 = conv2d1x1_B8_branch_out_c1_exe28;

    // out_c1_exe29(GPOUT,140)
    assign out_c1_exe29 = conv2d1x1_B8_branch_out_c1_exe29;

    // out_c1_exe3(GPOUT,141)
    assign out_c1_exe3 = conv2d1x1_B8_branch_out_c1_exe3;

    // out_c1_exe30(GPOUT,142)
    assign out_c1_exe30 = conv2d1x1_B8_branch_out_c1_exe30;

    // out_c1_exe31(GPOUT,143)
    assign out_c1_exe31 = conv2d1x1_B8_branch_out_c1_exe31;

    // out_c1_exe32(GPOUT,144)
    assign out_c1_exe32 = conv2d1x1_B8_branch_out_c1_exe32;

    // out_c1_exe4(GPOUT,145)
    assign out_c1_exe4 = conv2d1x1_B8_branch_out_c1_exe4;

    // out_c1_exe5(GPOUT,146)
    assign out_c1_exe5 = conv2d1x1_B8_branch_out_c1_exe5;

    // out_c1_exe6(GPOUT,147)
    assign out_c1_exe6 = conv2d1x1_B8_branch_out_c1_exe6;

    // out_c1_exe7(GPOUT,148)
    assign out_c1_exe7 = conv2d1x1_B8_branch_out_c1_exe7;

    // out_c1_exe8(GPOUT,149)
    assign out_c1_exe8 = conv2d1x1_B8_branch_out_c1_exe8;

    // out_c1_exe9(GPOUT,150)
    assign out_c1_exe9 = conv2d1x1_B8_branch_out_c1_exe9;

    // out_exiting_stall_out(GPOUT,151)
    assign out_exiting_stall_out = bb_conv2d1x1_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,152)
    assign out_exiting_valid_out = bb_conv2d1x1_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out;

    // out_lm148_conv2d1x1_avm_address(GPOUT,153)
    assign out_lm148_conv2d1x1_avm_address = bb_conv2d1x1_B8_stall_region_out_lm148_conv2d1x1_avm_address;

    // out_lm148_conv2d1x1_avm_burstcount(GPOUT,154)
    assign out_lm148_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_stall_region_out_lm148_conv2d1x1_avm_burstcount;

    // out_lm148_conv2d1x1_avm_byteenable(GPOUT,155)
    assign out_lm148_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_stall_region_out_lm148_conv2d1x1_avm_byteenable;

    // out_lm148_conv2d1x1_avm_enable(GPOUT,156)
    assign out_lm148_conv2d1x1_avm_enable = bb_conv2d1x1_B8_stall_region_out_lm148_conv2d1x1_avm_enable;

    // out_lm148_conv2d1x1_avm_read(GPOUT,157)
    assign out_lm148_conv2d1x1_avm_read = bb_conv2d1x1_B8_stall_region_out_lm148_conv2d1x1_avm_read;

    // out_lm148_conv2d1x1_avm_write(GPOUT,158)
    assign out_lm148_conv2d1x1_avm_write = bb_conv2d1x1_B8_stall_region_out_lm148_conv2d1x1_avm_write;

    // out_lm148_conv2d1x1_avm_writedata(GPOUT,159)
    assign out_lm148_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_stall_region_out_lm148_conv2d1x1_avm_writedata;

    // out_lm150_conv2d1x1_avm_address(GPOUT,160)
    assign out_lm150_conv2d1x1_avm_address = bb_conv2d1x1_B8_stall_region_out_lm150_conv2d1x1_avm_address;

    // out_lm150_conv2d1x1_avm_burstcount(GPOUT,161)
    assign out_lm150_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_stall_region_out_lm150_conv2d1x1_avm_burstcount;

    // out_lm150_conv2d1x1_avm_byteenable(GPOUT,162)
    assign out_lm150_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_stall_region_out_lm150_conv2d1x1_avm_byteenable;

    // out_lm150_conv2d1x1_avm_enable(GPOUT,163)
    assign out_lm150_conv2d1x1_avm_enable = bb_conv2d1x1_B8_stall_region_out_lm150_conv2d1x1_avm_enable;

    // out_lm150_conv2d1x1_avm_read(GPOUT,164)
    assign out_lm150_conv2d1x1_avm_read = bb_conv2d1x1_B8_stall_region_out_lm150_conv2d1x1_avm_read;

    // out_lm150_conv2d1x1_avm_write(GPOUT,165)
    assign out_lm150_conv2d1x1_avm_write = bb_conv2d1x1_B8_stall_region_out_lm150_conv2d1x1_avm_write;

    // out_lm150_conv2d1x1_avm_writedata(GPOUT,166)
    assign out_lm150_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_stall_region_out_lm150_conv2d1x1_avm_writedata;

    // out_lm151_conv2d1x1_avm_address(GPOUT,167)
    assign out_lm151_conv2d1x1_avm_address = bb_conv2d1x1_B8_stall_region_out_lm151_conv2d1x1_avm_address;

    // out_lm151_conv2d1x1_avm_burstcount(GPOUT,168)
    assign out_lm151_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_stall_region_out_lm151_conv2d1x1_avm_burstcount;

    // out_lm151_conv2d1x1_avm_byteenable(GPOUT,169)
    assign out_lm151_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_stall_region_out_lm151_conv2d1x1_avm_byteenable;

    // out_lm151_conv2d1x1_avm_enable(GPOUT,170)
    assign out_lm151_conv2d1x1_avm_enable = bb_conv2d1x1_B8_stall_region_out_lm151_conv2d1x1_avm_enable;

    // out_lm151_conv2d1x1_avm_read(GPOUT,171)
    assign out_lm151_conv2d1x1_avm_read = bb_conv2d1x1_B8_stall_region_out_lm151_conv2d1x1_avm_read;

    // out_lm151_conv2d1x1_avm_write(GPOUT,172)
    assign out_lm151_conv2d1x1_avm_write = bb_conv2d1x1_B8_stall_region_out_lm151_conv2d1x1_avm_write;

    // out_lm151_conv2d1x1_avm_writedata(GPOUT,173)
    assign out_lm151_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_stall_region_out_lm151_conv2d1x1_avm_writedata;

    // out_lm153_conv2d1x1_avm_address(GPOUT,174)
    assign out_lm153_conv2d1x1_avm_address = bb_conv2d1x1_B8_stall_region_out_lm153_conv2d1x1_avm_address;

    // out_lm153_conv2d1x1_avm_burstcount(GPOUT,175)
    assign out_lm153_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_stall_region_out_lm153_conv2d1x1_avm_burstcount;

    // out_lm153_conv2d1x1_avm_byteenable(GPOUT,176)
    assign out_lm153_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_stall_region_out_lm153_conv2d1x1_avm_byteenable;

    // out_lm153_conv2d1x1_avm_enable(GPOUT,177)
    assign out_lm153_conv2d1x1_avm_enable = bb_conv2d1x1_B8_stall_region_out_lm153_conv2d1x1_avm_enable;

    // out_lm153_conv2d1x1_avm_read(GPOUT,178)
    assign out_lm153_conv2d1x1_avm_read = bb_conv2d1x1_B8_stall_region_out_lm153_conv2d1x1_avm_read;

    // out_lm153_conv2d1x1_avm_write(GPOUT,179)
    assign out_lm153_conv2d1x1_avm_write = bb_conv2d1x1_B8_stall_region_out_lm153_conv2d1x1_avm_write;

    // out_lm153_conv2d1x1_avm_writedata(GPOUT,180)
    assign out_lm153_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_stall_region_out_lm153_conv2d1x1_avm_writedata;

    // out_lm155_conv2d1x1_avm_address(GPOUT,181)
    assign out_lm155_conv2d1x1_avm_address = bb_conv2d1x1_B8_stall_region_out_lm155_conv2d1x1_avm_address;

    // out_lm155_conv2d1x1_avm_burstcount(GPOUT,182)
    assign out_lm155_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_stall_region_out_lm155_conv2d1x1_avm_burstcount;

    // out_lm155_conv2d1x1_avm_byteenable(GPOUT,183)
    assign out_lm155_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_stall_region_out_lm155_conv2d1x1_avm_byteenable;

    // out_lm155_conv2d1x1_avm_enable(GPOUT,184)
    assign out_lm155_conv2d1x1_avm_enable = bb_conv2d1x1_B8_stall_region_out_lm155_conv2d1x1_avm_enable;

    // out_lm155_conv2d1x1_avm_read(GPOUT,185)
    assign out_lm155_conv2d1x1_avm_read = bb_conv2d1x1_B8_stall_region_out_lm155_conv2d1x1_avm_read;

    // out_lm155_conv2d1x1_avm_write(GPOUT,186)
    assign out_lm155_conv2d1x1_avm_write = bb_conv2d1x1_B8_stall_region_out_lm155_conv2d1x1_avm_write;

    // out_lm155_conv2d1x1_avm_writedata(GPOUT,187)
    assign out_lm155_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_stall_region_out_lm155_conv2d1x1_avm_writedata;

    // out_stall_in_0(GPOUT,188)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,189)
    assign out_stall_out_0 = conv2d1x1_B8_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,190)
    assign out_stall_out_1 = conv2d1x1_B8_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,191)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,192)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,193)
    assign out_valid_out_0 = conv2d1x1_B8_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,194)
    assign out_valid_out_1 = conv2d1x1_B8_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,196)
    assign out_pipeline_valid_out = bb_conv2d1x1_B8_stall_region_out_pipeline_valid_out;

endmodule
