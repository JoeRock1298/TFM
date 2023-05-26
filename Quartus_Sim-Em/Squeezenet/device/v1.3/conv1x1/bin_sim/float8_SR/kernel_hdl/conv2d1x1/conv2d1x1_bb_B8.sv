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
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B8 (
    input wire [63:0] in_ap_pop_ext5168_0,
    input wire [63:0] in_ap_pop_ext5168_1,
    input wire [31:0] in_arrayidx131_10_promoted_e162_0,
    input wire [31:0] in_arrayidx131_10_promoted_e162_1,
    input wire [31:0] in_arrayidx131_11_promoted_e163_0,
    input wire [31:0] in_arrayidx131_11_promoted_e163_1,
    input wire [31:0] in_arrayidx131_12_promoted_e164_0,
    input wire [31:0] in_arrayidx131_12_promoted_e164_1,
    input wire [31:0] in_arrayidx131_13_promoted_e165_0,
    input wire [31:0] in_arrayidx131_13_promoted_e165_1,
    input wire [31:0] in_arrayidx131_14_promoted_e166_0,
    input wire [31:0] in_arrayidx131_14_promoted_e166_1,
    input wire [31:0] in_arrayidx131_15_promoted_e167_0,
    input wire [31:0] in_arrayidx131_15_promoted_e167_1,
    input wire [31:0] in_arrayidx131_3_promoted_e155_0,
    input wire [31:0] in_arrayidx131_3_promoted_e155_1,
    input wire [31:0] in_arrayidx131_4_promoted_e156_0,
    input wire [31:0] in_arrayidx131_4_promoted_e156_1,
    input wire [31:0] in_arrayidx131_5_promoted_e157_0,
    input wire [31:0] in_arrayidx131_5_promoted_e157_1,
    input wire [31:0] in_arrayidx131_6_promoted_e158_0,
    input wire [31:0] in_arrayidx131_6_promoted_e158_1,
    input wire [31:0] in_arrayidx131_7_promoted_e159_0,
    input wire [31:0] in_arrayidx131_7_promoted_e159_1,
    input wire [31:0] in_arrayidx131_8_promoted_e160_0,
    input wire [31:0] in_arrayidx131_8_promoted_e160_1,
    input wire [31:0] in_arrayidx131_9_promoted_e161_0,
    input wire [31:0] in_arrayidx131_9_promoted_e161_1,
    input wire [63:0] in_filter_bias,
    input wire [63:0] in_filter_weight,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_ij_0104_pop1374_pop36188_0,
    input wire [31:0] in_ij_0104_pop1374_pop36188_1,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_lm115_0,
    input wire [31:0] in_lm115_1,
    input wire [511:0] in_lm220_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm220_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm220_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm220_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm222_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm222_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm222_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm222_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm223_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm223_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm223_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm223_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm225_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm225_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm225_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm225_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm227_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm227_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm227_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm227_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm229_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm229_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm229_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm229_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm231_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm231_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm231_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm231_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm233_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm233_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm233_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm233_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm235_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm235_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm235_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm235_conv2d1x1_avm_writeack,
    input wire [31:0] in_lm60_pop30178_0,
    input wire [31:0] in_lm60_pop30178_1,
    input wire [31:0] in_mul110_0,
    input wire [31:0] in_mul110_1,
    input wire [31:0] in_mul156125_0,
    input wire [31:0] in_mul156125_1,
    input wire [31:0] in_mul15666_pop32182_0,
    input wire [31:0] in_mul15666_pop32182_1,
    input wire [31:0] in_mul21120_0,
    input wire [31:0] in_mul21120_1,
    input wire [31:0] in_mul2163_pop31180_0,
    input wire [31:0] in_mul2163_pop31180_1,
    input wire [31:0] in_mul57_pop26174_0,
    input wire [31:0] in_mul57_pop26174_1,
    input wire [0:0] in_notcmp4672_pop35186_0,
    input wire [0:0] in_notcmp4672_pop35186_1,
    input wire [0:0] in_notcmp51130_0,
    input wire [0:0] in_notcmp51130_1,
    input wire [0:0] in_notcmp5169_pop33184_0,
    input wire [0:0] in_notcmp5169_pop33184_1,
    input wire [63:0] in_output_im,
    input wire [0:0] in_pop27170_0,
    input wire [0:0] in_pop27170_1,
    input wire [0:0] in_pop28172_0,
    input wire [0:0] in_pop28172_1,
    input wire [0:0] in_pop29176_0,
    input wire [0:0] in_pop29176_1,
    input wire [31:0] in_pre109_e145_0,
    input wire [31:0] in_pre109_e145_1,
    input wire [31:0] in_pre110_e146_0,
    input wire [31:0] in_pre110_e146_1,
    input wire [31:0] in_pre111_e147_0,
    input wire [31:0] in_pre111_e147_1,
    input wire [31:0] in_pre112_e148_0,
    input wire [31:0] in_pre112_e148_1,
    input wire [31:0] in_pre113_e149_0,
    input wire [31:0] in_pre113_e149_1,
    input wire [31:0] in_pre114_e150_0,
    input wire [31:0] in_pre114_e150_1,
    input wire [31:0] in_pre115_e151_0,
    input wire [31:0] in_pre115_e151_1,
    input wire [31:0] in_pre116_e152_0,
    input wire [31:0] in_pre116_e152_1,
    input wire [31:0] in_pre117_e153_0,
    input wire [31:0] in_pre117_e153_1,
    input wire [31:0] in_pre118_e154_0,
    input wire [31:0] in_pre118_e154_1,
    input wire [31:0] in_pre_e144_0,
    input wire [31:0] in_pre_e144_1,
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
    output wire [31:0] out_c0_exe17531,
    output wire [31:0] out_c0_exe18532,
    output wire [0:0] out_c0_exe19533,
    output wire [0:0] out_c0_exe20534,
    output wire [63:0] out_c0_exe21535,
    output wire [0:0] out_c0_exe3517,
    output wire [0:0] out_c0_exe4518,
    output wire [31:0] out_c0_exe5519,
    output wire [31:0] out_c1_exe10,
    output wire [31:0] out_c1_exe11,
    output wire [31:0] out_c1_exe12,
    output wire [31:0] out_c1_exe13,
    output wire [31:0] out_c1_exe14,
    output wire [31:0] out_c1_exe15,
    output wire [31:0] out_c1_exe1592,
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
    output wire [31:0] out_c1_exe33,
    output wire [31:0] out_c1_exe34,
    output wire [31:0] out_c1_exe35,
    output wire [31:0] out_c1_exe36,
    output wire [31:0] out_c1_exe37,
    output wire [31:0] out_c1_exe38,
    output wire [31:0] out_c1_exe39,
    output wire [31:0] out_c1_exe4,
    output wire [31:0] out_c1_exe40,
    output wire [31:0] out_c1_exe41,
    output wire [31:0] out_c1_exe42,
    output wire [31:0] out_c1_exe43,
    output wire [31:0] out_c1_exe44,
    output wire [31:0] out_c1_exe45,
    output wire [31:0] out_c1_exe46,
    output wire [31:0] out_c1_exe47,
    output wire [31:0] out_c1_exe48,
    output wire [31:0] out_c1_exe5,
    output wire [31:0] out_c1_exe6,
    output wire [31:0] out_c1_exe7,
    output wire [31:0] out_c1_exe8,
    output wire [31:0] out_c1_exe9,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [30:0] out_lm220_conv2d1x1_avm_address,
    output wire [4:0] out_lm220_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm220_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm220_conv2d1x1_avm_enable,
    output wire [0:0] out_lm220_conv2d1x1_avm_read,
    output wire [0:0] out_lm220_conv2d1x1_avm_write,
    output wire [511:0] out_lm220_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm222_conv2d1x1_avm_address,
    output wire [4:0] out_lm222_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm222_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm222_conv2d1x1_avm_enable,
    output wire [0:0] out_lm222_conv2d1x1_avm_read,
    output wire [0:0] out_lm222_conv2d1x1_avm_write,
    output wire [511:0] out_lm222_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm223_conv2d1x1_avm_address,
    output wire [4:0] out_lm223_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm223_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm223_conv2d1x1_avm_enable,
    output wire [0:0] out_lm223_conv2d1x1_avm_read,
    output wire [0:0] out_lm223_conv2d1x1_avm_write,
    output wire [511:0] out_lm223_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm225_conv2d1x1_avm_address,
    output wire [4:0] out_lm225_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm225_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm225_conv2d1x1_avm_enable,
    output wire [0:0] out_lm225_conv2d1x1_avm_read,
    output wire [0:0] out_lm225_conv2d1x1_avm_write,
    output wire [511:0] out_lm225_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm227_conv2d1x1_avm_address,
    output wire [4:0] out_lm227_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm227_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm227_conv2d1x1_avm_enable,
    output wire [0:0] out_lm227_conv2d1x1_avm_read,
    output wire [0:0] out_lm227_conv2d1x1_avm_write,
    output wire [511:0] out_lm227_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm229_conv2d1x1_avm_address,
    output wire [4:0] out_lm229_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm229_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm229_conv2d1x1_avm_enable,
    output wire [0:0] out_lm229_conv2d1x1_avm_read,
    output wire [0:0] out_lm229_conv2d1x1_avm_write,
    output wire [511:0] out_lm229_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm231_conv2d1x1_avm_address,
    output wire [4:0] out_lm231_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm231_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm231_conv2d1x1_avm_enable,
    output wire [0:0] out_lm231_conv2d1x1_avm_read,
    output wire [0:0] out_lm231_conv2d1x1_avm_write,
    output wire [511:0] out_lm231_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm233_conv2d1x1_avm_address,
    output wire [4:0] out_lm233_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm233_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm233_conv2d1x1_avm_enable,
    output wire [0:0] out_lm233_conv2d1x1_avm_read,
    output wire [0:0] out_lm233_conv2d1x1_avm_write,
    output wire [511:0] out_lm233_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm235_conv2d1x1_avm_address,
    output wire [4:0] out_lm235_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm235_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm235_conv2d1x1_avm_enable,
    output wire [0:0] out_lm235_conv2d1x1_avm_read,
    output wire [0:0] out_lm235_conv2d1x1_avm_write,
    output wire [511:0] out_lm235_conv2d1x1_avm_writedata,
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
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_c0_exe16530;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c0_exe17531;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c0_exe18532;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_c0_exe19533;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_c0_exe20534;
    wire [63:0] bb_conv2d1x1_B8_stall_region_out_c0_exe21535;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_c0_exe3517;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_c0_exe4518;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c0_exe5519;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe10;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe11;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe12;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe13;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe14;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe15;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe1592;
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
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe33;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe34;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe35;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe36;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe37;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe38;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe39;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe4;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe40;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe41;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe42;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe43;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe44;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe45;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe46;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe47;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe48;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe5;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe6;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe7;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe8;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe9;
    wire [30:0] bb_conv2d1x1_B8_stall_region_out_lm220_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_stall_region_out_lm220_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_stall_region_out_lm220_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm220_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm220_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm220_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_stall_region_out_lm220_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B8_stall_region_out_lm222_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_stall_region_out_lm222_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_stall_region_out_lm222_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm222_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm222_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm222_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_stall_region_out_lm222_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B8_stall_region_out_lm223_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_stall_region_out_lm223_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_stall_region_out_lm223_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm223_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm223_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm223_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_stall_region_out_lm223_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B8_stall_region_out_lm225_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_stall_region_out_lm225_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_stall_region_out_lm225_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm225_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm225_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm225_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_stall_region_out_lm225_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B8_stall_region_out_lm227_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_stall_region_out_lm227_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_stall_region_out_lm227_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm227_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm227_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm227_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_stall_region_out_lm227_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B8_stall_region_out_lm229_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_stall_region_out_lm229_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_stall_region_out_lm229_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm229_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm229_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm229_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_stall_region_out_lm229_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B8_stall_region_out_lm231_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_stall_region_out_lm231_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_stall_region_out_lm231_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm231_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm231_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm231_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_stall_region_out_lm231_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B8_stall_region_out_lm233_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_stall_region_out_lm233_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_stall_region_out_lm233_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm233_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm233_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm233_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_stall_region_out_lm233_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B8_stall_region_out_lm235_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_stall_region_out_lm235_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_stall_region_out_lm235_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm235_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm235_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm235_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_stall_region_out_lm235_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_stall_out;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_valid_out;
    wire [31:0] conv2d1x1_B8_branch_out_c0_exe17531;
    wire [31:0] conv2d1x1_B8_branch_out_c0_exe18532;
    wire [0:0] conv2d1x1_B8_branch_out_c0_exe19533;
    wire [0:0] conv2d1x1_B8_branch_out_c0_exe20534;
    wire [63:0] conv2d1x1_B8_branch_out_c0_exe21535;
    wire [0:0] conv2d1x1_B8_branch_out_c0_exe3517;
    wire [0:0] conv2d1x1_B8_branch_out_c0_exe4518;
    wire [31:0] conv2d1x1_B8_branch_out_c0_exe5519;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe10;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe11;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe12;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe13;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe14;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe15;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe1592;
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
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe33;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe34;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe35;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe36;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe37;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe38;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe39;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe4;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe40;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe41;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe42;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe43;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe44;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe45;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe46;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe47;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe48;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe5;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe6;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe7;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe8;
    wire [31:0] conv2d1x1_B8_branch_out_c1_exe9;
    wire [0:0] conv2d1x1_B8_branch_out_stall_out;
    wire [0:0] conv2d1x1_B8_branch_out_valid_out_0;
    wire [0:0] conv2d1x1_B8_branch_out_valid_out_1;
    wire [63:0] conv2d1x1_B8_merge_out_ap_pop_ext5168;
    wire [31:0] conv2d1x1_B8_merge_out_arrayidx131_10_promoted_e162;
    wire [31:0] conv2d1x1_B8_merge_out_arrayidx131_11_promoted_e163;
    wire [31:0] conv2d1x1_B8_merge_out_arrayidx131_12_promoted_e164;
    wire [31:0] conv2d1x1_B8_merge_out_arrayidx131_13_promoted_e165;
    wire [31:0] conv2d1x1_B8_merge_out_arrayidx131_14_promoted_e166;
    wire [31:0] conv2d1x1_B8_merge_out_arrayidx131_15_promoted_e167;
    wire [31:0] conv2d1x1_B8_merge_out_arrayidx131_3_promoted_e155;
    wire [31:0] conv2d1x1_B8_merge_out_arrayidx131_4_promoted_e156;
    wire [31:0] conv2d1x1_B8_merge_out_arrayidx131_5_promoted_e157;
    wire [31:0] conv2d1x1_B8_merge_out_arrayidx131_6_promoted_e158;
    wire [31:0] conv2d1x1_B8_merge_out_arrayidx131_7_promoted_e159;
    wire [31:0] conv2d1x1_B8_merge_out_arrayidx131_8_promoted_e160;
    wire [31:0] conv2d1x1_B8_merge_out_arrayidx131_9_promoted_e161;
    wire [0:0] conv2d1x1_B8_merge_out_forked;
    wire [31:0] conv2d1x1_B8_merge_out_ij_0104_pop1374_pop36188;
    wire [31:0] conv2d1x1_B8_merge_out_lm115;
    wire [31:0] conv2d1x1_B8_merge_out_lm60_pop30178;
    wire [31:0] conv2d1x1_B8_merge_out_mul110;
    wire [31:0] conv2d1x1_B8_merge_out_mul156125;
    wire [31:0] conv2d1x1_B8_merge_out_mul15666_pop32182;
    wire [31:0] conv2d1x1_B8_merge_out_mul21120;
    wire [31:0] conv2d1x1_B8_merge_out_mul2163_pop31180;
    wire [31:0] conv2d1x1_B8_merge_out_mul57_pop26174;
    wire [0:0] conv2d1x1_B8_merge_out_notcmp4672_pop35186;
    wire [0:0] conv2d1x1_B8_merge_out_notcmp51130;
    wire [0:0] conv2d1x1_B8_merge_out_notcmp5169_pop33184;
    wire [0:0] conv2d1x1_B8_merge_out_pop27170;
    wire [0:0] conv2d1x1_B8_merge_out_pop28172;
    wire [0:0] conv2d1x1_B8_merge_out_pop29176;
    wire [31:0] conv2d1x1_B8_merge_out_pre109_e145;
    wire [31:0] conv2d1x1_B8_merge_out_pre110_e146;
    wire [31:0] conv2d1x1_B8_merge_out_pre111_e147;
    wire [31:0] conv2d1x1_B8_merge_out_pre112_e148;
    wire [31:0] conv2d1x1_B8_merge_out_pre113_e149;
    wire [31:0] conv2d1x1_B8_merge_out_pre114_e150;
    wire [31:0] conv2d1x1_B8_merge_out_pre115_e151;
    wire [31:0] conv2d1x1_B8_merge_out_pre116_e152;
    wire [31:0] conv2d1x1_B8_merge_out_pre117_e153;
    wire [31:0] conv2d1x1_B8_merge_out_pre118_e154;
    wire [31:0] conv2d1x1_B8_merge_out_pre_e144;
    wire [0:0] conv2d1x1_B8_merge_out_stall_out_0;
    wire [0:0] conv2d1x1_B8_merge_out_stall_out_1;
    wire [0:0] conv2d1x1_B8_merge_out_unnamed_conv2d1x117;
    wire [0:0] conv2d1x1_B8_merge_out_unnamed_conv2d1x118;
    wire [0:0] conv2d1x1_B8_merge_out_unnamed_conv2d1x119;
    wire [32:0] conv2d1x1_B8_merge_out_unnamed_conv2d1x120;
    wire [0:0] conv2d1x1_B8_merge_out_valid_out;


    // conv2d1x1_B8_merge(BLACKBOX,4)
    conv2d1x1_B8_merge theconv2d1x1_B8_merge (
        .in_ap_pop_ext5168_0(in_ap_pop_ext5168_0),
        .in_ap_pop_ext5168_1(in_ap_pop_ext5168_1),
        .in_arrayidx131_10_promoted_e162_0(in_arrayidx131_10_promoted_e162_0),
        .in_arrayidx131_10_promoted_e162_1(in_arrayidx131_10_promoted_e162_1),
        .in_arrayidx131_11_promoted_e163_0(in_arrayidx131_11_promoted_e163_0),
        .in_arrayidx131_11_promoted_e163_1(in_arrayidx131_11_promoted_e163_1),
        .in_arrayidx131_12_promoted_e164_0(in_arrayidx131_12_promoted_e164_0),
        .in_arrayidx131_12_promoted_e164_1(in_arrayidx131_12_promoted_e164_1),
        .in_arrayidx131_13_promoted_e165_0(in_arrayidx131_13_promoted_e165_0),
        .in_arrayidx131_13_promoted_e165_1(in_arrayidx131_13_promoted_e165_1),
        .in_arrayidx131_14_promoted_e166_0(in_arrayidx131_14_promoted_e166_0),
        .in_arrayidx131_14_promoted_e166_1(in_arrayidx131_14_promoted_e166_1),
        .in_arrayidx131_15_promoted_e167_0(in_arrayidx131_15_promoted_e167_0),
        .in_arrayidx131_15_promoted_e167_1(in_arrayidx131_15_promoted_e167_1),
        .in_arrayidx131_3_promoted_e155_0(in_arrayidx131_3_promoted_e155_0),
        .in_arrayidx131_3_promoted_e155_1(in_arrayidx131_3_promoted_e155_1),
        .in_arrayidx131_4_promoted_e156_0(in_arrayidx131_4_promoted_e156_0),
        .in_arrayidx131_4_promoted_e156_1(in_arrayidx131_4_promoted_e156_1),
        .in_arrayidx131_5_promoted_e157_0(in_arrayidx131_5_promoted_e157_0),
        .in_arrayidx131_5_promoted_e157_1(in_arrayidx131_5_promoted_e157_1),
        .in_arrayidx131_6_promoted_e158_0(in_arrayidx131_6_promoted_e158_0),
        .in_arrayidx131_6_promoted_e158_1(in_arrayidx131_6_promoted_e158_1),
        .in_arrayidx131_7_promoted_e159_0(in_arrayidx131_7_promoted_e159_0),
        .in_arrayidx131_7_promoted_e159_1(in_arrayidx131_7_promoted_e159_1),
        .in_arrayidx131_8_promoted_e160_0(in_arrayidx131_8_promoted_e160_0),
        .in_arrayidx131_8_promoted_e160_1(in_arrayidx131_8_promoted_e160_1),
        .in_arrayidx131_9_promoted_e161_0(in_arrayidx131_9_promoted_e161_0),
        .in_arrayidx131_9_promoted_e161_1(in_arrayidx131_9_promoted_e161_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_ij_0104_pop1374_pop36188_0(in_ij_0104_pop1374_pop36188_0),
        .in_ij_0104_pop1374_pop36188_1(in_ij_0104_pop1374_pop36188_1),
        .in_lm115_0(in_lm115_0),
        .in_lm115_1(in_lm115_1),
        .in_lm60_pop30178_0(in_lm60_pop30178_0),
        .in_lm60_pop30178_1(in_lm60_pop30178_1),
        .in_mul110_0(in_mul110_0),
        .in_mul110_1(in_mul110_1),
        .in_mul156125_0(in_mul156125_0),
        .in_mul156125_1(in_mul156125_1),
        .in_mul15666_pop32182_0(in_mul15666_pop32182_0),
        .in_mul15666_pop32182_1(in_mul15666_pop32182_1),
        .in_mul21120_0(in_mul21120_0),
        .in_mul21120_1(in_mul21120_1),
        .in_mul2163_pop31180_0(in_mul2163_pop31180_0),
        .in_mul2163_pop31180_1(in_mul2163_pop31180_1),
        .in_mul57_pop26174_0(in_mul57_pop26174_0),
        .in_mul57_pop26174_1(in_mul57_pop26174_1),
        .in_notcmp4672_pop35186_0(in_notcmp4672_pop35186_0),
        .in_notcmp4672_pop35186_1(in_notcmp4672_pop35186_1),
        .in_notcmp51130_0(in_notcmp51130_0),
        .in_notcmp51130_1(in_notcmp51130_1),
        .in_notcmp5169_pop33184_0(in_notcmp5169_pop33184_0),
        .in_notcmp5169_pop33184_1(in_notcmp5169_pop33184_1),
        .in_pop27170_0(in_pop27170_0),
        .in_pop27170_1(in_pop27170_1),
        .in_pop28172_0(in_pop28172_0),
        .in_pop28172_1(in_pop28172_1),
        .in_pop29176_0(in_pop29176_0),
        .in_pop29176_1(in_pop29176_1),
        .in_pre109_e145_0(in_pre109_e145_0),
        .in_pre109_e145_1(in_pre109_e145_1),
        .in_pre110_e146_0(in_pre110_e146_0),
        .in_pre110_e146_1(in_pre110_e146_1),
        .in_pre111_e147_0(in_pre111_e147_0),
        .in_pre111_e147_1(in_pre111_e147_1),
        .in_pre112_e148_0(in_pre112_e148_0),
        .in_pre112_e148_1(in_pre112_e148_1),
        .in_pre113_e149_0(in_pre113_e149_0),
        .in_pre113_e149_1(in_pre113_e149_1),
        .in_pre114_e150_0(in_pre114_e150_0),
        .in_pre114_e150_1(in_pre114_e150_1),
        .in_pre115_e151_0(in_pre115_e151_0),
        .in_pre115_e151_1(in_pre115_e151_1),
        .in_pre116_e152_0(in_pre116_e152_0),
        .in_pre116_e152_1(in_pre116_e152_1),
        .in_pre117_e153_0(in_pre117_e153_0),
        .in_pre117_e153_1(in_pre117_e153_1),
        .in_pre118_e154_0(in_pre118_e154_0),
        .in_pre118_e154_1(in_pre118_e154_1),
        .in_pre_e144_0(in_pre_e144_0),
        .in_pre_e144_1(in_pre_e144_1),
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
        .out_ap_pop_ext5168(conv2d1x1_B8_merge_out_ap_pop_ext5168),
        .out_arrayidx131_10_promoted_e162(conv2d1x1_B8_merge_out_arrayidx131_10_promoted_e162),
        .out_arrayidx131_11_promoted_e163(conv2d1x1_B8_merge_out_arrayidx131_11_promoted_e163),
        .out_arrayidx131_12_promoted_e164(conv2d1x1_B8_merge_out_arrayidx131_12_promoted_e164),
        .out_arrayidx131_13_promoted_e165(conv2d1x1_B8_merge_out_arrayidx131_13_promoted_e165),
        .out_arrayidx131_14_promoted_e166(conv2d1x1_B8_merge_out_arrayidx131_14_promoted_e166),
        .out_arrayidx131_15_promoted_e167(conv2d1x1_B8_merge_out_arrayidx131_15_promoted_e167),
        .out_arrayidx131_3_promoted_e155(conv2d1x1_B8_merge_out_arrayidx131_3_promoted_e155),
        .out_arrayidx131_4_promoted_e156(conv2d1x1_B8_merge_out_arrayidx131_4_promoted_e156),
        .out_arrayidx131_5_promoted_e157(conv2d1x1_B8_merge_out_arrayidx131_5_promoted_e157),
        .out_arrayidx131_6_promoted_e158(conv2d1x1_B8_merge_out_arrayidx131_6_promoted_e158),
        .out_arrayidx131_7_promoted_e159(conv2d1x1_B8_merge_out_arrayidx131_7_promoted_e159),
        .out_arrayidx131_8_promoted_e160(conv2d1x1_B8_merge_out_arrayidx131_8_promoted_e160),
        .out_arrayidx131_9_promoted_e161(conv2d1x1_B8_merge_out_arrayidx131_9_promoted_e161),
        .out_forked(conv2d1x1_B8_merge_out_forked),
        .out_ij_0104_pop1374_pop36188(conv2d1x1_B8_merge_out_ij_0104_pop1374_pop36188),
        .out_lm115(conv2d1x1_B8_merge_out_lm115),
        .out_lm60_pop30178(conv2d1x1_B8_merge_out_lm60_pop30178),
        .out_mul110(conv2d1x1_B8_merge_out_mul110),
        .out_mul156125(conv2d1x1_B8_merge_out_mul156125),
        .out_mul15666_pop32182(conv2d1x1_B8_merge_out_mul15666_pop32182),
        .out_mul21120(conv2d1x1_B8_merge_out_mul21120),
        .out_mul2163_pop31180(conv2d1x1_B8_merge_out_mul2163_pop31180),
        .out_mul57_pop26174(conv2d1x1_B8_merge_out_mul57_pop26174),
        .out_notcmp4672_pop35186(conv2d1x1_B8_merge_out_notcmp4672_pop35186),
        .out_notcmp51130(conv2d1x1_B8_merge_out_notcmp51130),
        .out_notcmp5169_pop33184(conv2d1x1_B8_merge_out_notcmp5169_pop33184),
        .out_pop27170(conv2d1x1_B8_merge_out_pop27170),
        .out_pop28172(conv2d1x1_B8_merge_out_pop28172),
        .out_pop29176(conv2d1x1_B8_merge_out_pop29176),
        .out_pre109_e145(conv2d1x1_B8_merge_out_pre109_e145),
        .out_pre110_e146(conv2d1x1_B8_merge_out_pre110_e146),
        .out_pre111_e147(conv2d1x1_B8_merge_out_pre111_e147),
        .out_pre112_e148(conv2d1x1_B8_merge_out_pre112_e148),
        .out_pre113_e149(conv2d1x1_B8_merge_out_pre113_e149),
        .out_pre114_e150(conv2d1x1_B8_merge_out_pre114_e150),
        .out_pre115_e151(conv2d1x1_B8_merge_out_pre115_e151),
        .out_pre116_e152(conv2d1x1_B8_merge_out_pre116_e152),
        .out_pre117_e153(conv2d1x1_B8_merge_out_pre117_e153),
        .out_pre118_e154(conv2d1x1_B8_merge_out_pre118_e154),
        .out_pre_e144(conv2d1x1_B8_merge_out_pre_e144),
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
        .in_ap_pop_ext5168(conv2d1x1_B8_merge_out_ap_pop_ext5168),
        .in_arrayidx131_10_promoted_e162(conv2d1x1_B8_merge_out_arrayidx131_10_promoted_e162),
        .in_arrayidx131_11_promoted_e163(conv2d1x1_B8_merge_out_arrayidx131_11_promoted_e163),
        .in_arrayidx131_12_promoted_e164(conv2d1x1_B8_merge_out_arrayidx131_12_promoted_e164),
        .in_arrayidx131_13_promoted_e165(conv2d1x1_B8_merge_out_arrayidx131_13_promoted_e165),
        .in_arrayidx131_14_promoted_e166(conv2d1x1_B8_merge_out_arrayidx131_14_promoted_e166),
        .in_arrayidx131_15_promoted_e167(conv2d1x1_B8_merge_out_arrayidx131_15_promoted_e167),
        .in_arrayidx131_3_promoted_e155(conv2d1x1_B8_merge_out_arrayidx131_3_promoted_e155),
        .in_arrayidx131_4_promoted_e156(conv2d1x1_B8_merge_out_arrayidx131_4_promoted_e156),
        .in_arrayidx131_5_promoted_e157(conv2d1x1_B8_merge_out_arrayidx131_5_promoted_e157),
        .in_arrayidx131_6_promoted_e158(conv2d1x1_B8_merge_out_arrayidx131_6_promoted_e158),
        .in_arrayidx131_7_promoted_e159(conv2d1x1_B8_merge_out_arrayidx131_7_promoted_e159),
        .in_arrayidx131_8_promoted_e160(conv2d1x1_B8_merge_out_arrayidx131_8_promoted_e160),
        .in_arrayidx131_9_promoted_e161(conv2d1x1_B8_merge_out_arrayidx131_9_promoted_e161),
        .in_filter_weight(in_filter_weight),
        .in_flush(in_flush),
        .in_forked(conv2d1x1_B8_merge_out_forked),
        .in_ij_0104_pop1374_pop36188(conv2d1x1_B8_merge_out_ij_0104_pop1374_pop36188),
        .in_input_im(in_input_im),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_lm115(conv2d1x1_B8_merge_out_lm115),
        .in_lm220_conv2d1x1_avm_readdata(in_lm220_conv2d1x1_avm_readdata),
        .in_lm220_conv2d1x1_avm_readdatavalid(in_lm220_conv2d1x1_avm_readdatavalid),
        .in_lm220_conv2d1x1_avm_waitrequest(in_lm220_conv2d1x1_avm_waitrequest),
        .in_lm220_conv2d1x1_avm_writeack(in_lm220_conv2d1x1_avm_writeack),
        .in_lm222_conv2d1x1_avm_readdata(in_lm222_conv2d1x1_avm_readdata),
        .in_lm222_conv2d1x1_avm_readdatavalid(in_lm222_conv2d1x1_avm_readdatavalid),
        .in_lm222_conv2d1x1_avm_waitrequest(in_lm222_conv2d1x1_avm_waitrequest),
        .in_lm222_conv2d1x1_avm_writeack(in_lm222_conv2d1x1_avm_writeack),
        .in_lm223_conv2d1x1_avm_readdata(in_lm223_conv2d1x1_avm_readdata),
        .in_lm223_conv2d1x1_avm_readdatavalid(in_lm223_conv2d1x1_avm_readdatavalid),
        .in_lm223_conv2d1x1_avm_waitrequest(in_lm223_conv2d1x1_avm_waitrequest),
        .in_lm223_conv2d1x1_avm_writeack(in_lm223_conv2d1x1_avm_writeack),
        .in_lm225_conv2d1x1_avm_readdata(in_lm225_conv2d1x1_avm_readdata),
        .in_lm225_conv2d1x1_avm_readdatavalid(in_lm225_conv2d1x1_avm_readdatavalid),
        .in_lm225_conv2d1x1_avm_waitrequest(in_lm225_conv2d1x1_avm_waitrequest),
        .in_lm225_conv2d1x1_avm_writeack(in_lm225_conv2d1x1_avm_writeack),
        .in_lm227_conv2d1x1_avm_readdata(in_lm227_conv2d1x1_avm_readdata),
        .in_lm227_conv2d1x1_avm_readdatavalid(in_lm227_conv2d1x1_avm_readdatavalid),
        .in_lm227_conv2d1x1_avm_waitrequest(in_lm227_conv2d1x1_avm_waitrequest),
        .in_lm227_conv2d1x1_avm_writeack(in_lm227_conv2d1x1_avm_writeack),
        .in_lm229_conv2d1x1_avm_readdata(in_lm229_conv2d1x1_avm_readdata),
        .in_lm229_conv2d1x1_avm_readdatavalid(in_lm229_conv2d1x1_avm_readdatavalid),
        .in_lm229_conv2d1x1_avm_waitrequest(in_lm229_conv2d1x1_avm_waitrequest),
        .in_lm229_conv2d1x1_avm_writeack(in_lm229_conv2d1x1_avm_writeack),
        .in_lm231_conv2d1x1_avm_readdata(in_lm231_conv2d1x1_avm_readdata),
        .in_lm231_conv2d1x1_avm_readdatavalid(in_lm231_conv2d1x1_avm_readdatavalid),
        .in_lm231_conv2d1x1_avm_waitrequest(in_lm231_conv2d1x1_avm_waitrequest),
        .in_lm231_conv2d1x1_avm_writeack(in_lm231_conv2d1x1_avm_writeack),
        .in_lm233_conv2d1x1_avm_readdata(in_lm233_conv2d1x1_avm_readdata),
        .in_lm233_conv2d1x1_avm_readdatavalid(in_lm233_conv2d1x1_avm_readdatavalid),
        .in_lm233_conv2d1x1_avm_waitrequest(in_lm233_conv2d1x1_avm_waitrequest),
        .in_lm233_conv2d1x1_avm_writeack(in_lm233_conv2d1x1_avm_writeack),
        .in_lm235_conv2d1x1_avm_readdata(in_lm235_conv2d1x1_avm_readdata),
        .in_lm235_conv2d1x1_avm_readdatavalid(in_lm235_conv2d1x1_avm_readdatavalid),
        .in_lm235_conv2d1x1_avm_waitrequest(in_lm235_conv2d1x1_avm_waitrequest),
        .in_lm235_conv2d1x1_avm_writeack(in_lm235_conv2d1x1_avm_writeack),
        .in_lm60_pop30178(conv2d1x1_B8_merge_out_lm60_pop30178),
        .in_mul110(conv2d1x1_B8_merge_out_mul110),
        .in_mul156125(conv2d1x1_B8_merge_out_mul156125),
        .in_mul15666_pop32182(conv2d1x1_B8_merge_out_mul15666_pop32182),
        .in_mul21120(conv2d1x1_B8_merge_out_mul21120),
        .in_mul2163_pop31180(conv2d1x1_B8_merge_out_mul2163_pop31180),
        .in_mul57_pop26174(conv2d1x1_B8_merge_out_mul57_pop26174),
        .in_notcmp4672_pop35186(conv2d1x1_B8_merge_out_notcmp4672_pop35186),
        .in_notcmp51130(conv2d1x1_B8_merge_out_notcmp51130),
        .in_notcmp5169_pop33184(conv2d1x1_B8_merge_out_notcmp5169_pop33184),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_pop27170(conv2d1x1_B8_merge_out_pop27170),
        .in_pop28172(conv2d1x1_B8_merge_out_pop28172),
        .in_pop29176(conv2d1x1_B8_merge_out_pop29176),
        .in_pre109_e145(conv2d1x1_B8_merge_out_pre109_e145),
        .in_pre110_e146(conv2d1x1_B8_merge_out_pre110_e146),
        .in_pre111_e147(conv2d1x1_B8_merge_out_pre111_e147),
        .in_pre112_e148(conv2d1x1_B8_merge_out_pre112_e148),
        .in_pre113_e149(conv2d1x1_B8_merge_out_pre113_e149),
        .in_pre114_e150(conv2d1x1_B8_merge_out_pre114_e150),
        .in_pre115_e151(conv2d1x1_B8_merge_out_pre115_e151),
        .in_pre116_e152(conv2d1x1_B8_merge_out_pre116_e152),
        .in_pre117_e153(conv2d1x1_B8_merge_out_pre117_e153),
        .in_pre118_e154(conv2d1x1_B8_merge_out_pre118_e154),
        .in_pre_e144(conv2d1x1_B8_merge_out_pre_e144),
        .in_stall_in(conv2d1x1_B8_branch_out_stall_out),
        .in_unnamed_conv2d1x117(conv2d1x1_B8_merge_out_unnamed_conv2d1x117),
        .in_unnamed_conv2d1x118(conv2d1x1_B8_merge_out_unnamed_conv2d1x118),
        .in_unnamed_conv2d1x119(conv2d1x1_B8_merge_out_unnamed_conv2d1x119),
        .in_unnamed_conv2d1x120(conv2d1x1_B8_merge_out_unnamed_conv2d1x120),
        .in_valid_in(conv2d1x1_B8_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out(bb_conv2d1x1_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out(bb_conv2d1x1_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out),
        .out_c0_exe16530(bb_conv2d1x1_B8_stall_region_out_c0_exe16530),
        .out_c0_exe17531(bb_conv2d1x1_B8_stall_region_out_c0_exe17531),
        .out_c0_exe18532(bb_conv2d1x1_B8_stall_region_out_c0_exe18532),
        .out_c0_exe19533(bb_conv2d1x1_B8_stall_region_out_c0_exe19533),
        .out_c0_exe20534(bb_conv2d1x1_B8_stall_region_out_c0_exe20534),
        .out_c0_exe21535(bb_conv2d1x1_B8_stall_region_out_c0_exe21535),
        .out_c0_exe3517(bb_conv2d1x1_B8_stall_region_out_c0_exe3517),
        .out_c0_exe4518(bb_conv2d1x1_B8_stall_region_out_c0_exe4518),
        .out_c0_exe5519(bb_conv2d1x1_B8_stall_region_out_c0_exe5519),
        .out_c1_exe10(bb_conv2d1x1_B8_stall_region_out_c1_exe10),
        .out_c1_exe11(bb_conv2d1x1_B8_stall_region_out_c1_exe11),
        .out_c1_exe12(bb_conv2d1x1_B8_stall_region_out_c1_exe12),
        .out_c1_exe13(bb_conv2d1x1_B8_stall_region_out_c1_exe13),
        .out_c1_exe14(bb_conv2d1x1_B8_stall_region_out_c1_exe14),
        .out_c1_exe15(bb_conv2d1x1_B8_stall_region_out_c1_exe15),
        .out_c1_exe1592(bb_conv2d1x1_B8_stall_region_out_c1_exe1592),
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
        .out_c1_exe33(bb_conv2d1x1_B8_stall_region_out_c1_exe33),
        .out_c1_exe34(bb_conv2d1x1_B8_stall_region_out_c1_exe34),
        .out_c1_exe35(bb_conv2d1x1_B8_stall_region_out_c1_exe35),
        .out_c1_exe36(bb_conv2d1x1_B8_stall_region_out_c1_exe36),
        .out_c1_exe37(bb_conv2d1x1_B8_stall_region_out_c1_exe37),
        .out_c1_exe38(bb_conv2d1x1_B8_stall_region_out_c1_exe38),
        .out_c1_exe39(bb_conv2d1x1_B8_stall_region_out_c1_exe39),
        .out_c1_exe4(bb_conv2d1x1_B8_stall_region_out_c1_exe4),
        .out_c1_exe40(bb_conv2d1x1_B8_stall_region_out_c1_exe40),
        .out_c1_exe41(bb_conv2d1x1_B8_stall_region_out_c1_exe41),
        .out_c1_exe42(bb_conv2d1x1_B8_stall_region_out_c1_exe42),
        .out_c1_exe43(bb_conv2d1x1_B8_stall_region_out_c1_exe43),
        .out_c1_exe44(bb_conv2d1x1_B8_stall_region_out_c1_exe44),
        .out_c1_exe45(bb_conv2d1x1_B8_stall_region_out_c1_exe45),
        .out_c1_exe46(bb_conv2d1x1_B8_stall_region_out_c1_exe46),
        .out_c1_exe47(bb_conv2d1x1_B8_stall_region_out_c1_exe47),
        .out_c1_exe48(bb_conv2d1x1_B8_stall_region_out_c1_exe48),
        .out_c1_exe5(bb_conv2d1x1_B8_stall_region_out_c1_exe5),
        .out_c1_exe6(bb_conv2d1x1_B8_stall_region_out_c1_exe6),
        .out_c1_exe7(bb_conv2d1x1_B8_stall_region_out_c1_exe7),
        .out_c1_exe8(bb_conv2d1x1_B8_stall_region_out_c1_exe8),
        .out_c1_exe9(bb_conv2d1x1_B8_stall_region_out_c1_exe9),
        .out_lm220_conv2d1x1_avm_address(bb_conv2d1x1_B8_stall_region_out_lm220_conv2d1x1_avm_address),
        .out_lm220_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_stall_region_out_lm220_conv2d1x1_avm_burstcount),
        .out_lm220_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_stall_region_out_lm220_conv2d1x1_avm_byteenable),
        .out_lm220_conv2d1x1_avm_enable(bb_conv2d1x1_B8_stall_region_out_lm220_conv2d1x1_avm_enable),
        .out_lm220_conv2d1x1_avm_read(bb_conv2d1x1_B8_stall_region_out_lm220_conv2d1x1_avm_read),
        .out_lm220_conv2d1x1_avm_write(bb_conv2d1x1_B8_stall_region_out_lm220_conv2d1x1_avm_write),
        .out_lm220_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_stall_region_out_lm220_conv2d1x1_avm_writedata),
        .out_lm222_conv2d1x1_avm_address(bb_conv2d1x1_B8_stall_region_out_lm222_conv2d1x1_avm_address),
        .out_lm222_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_stall_region_out_lm222_conv2d1x1_avm_burstcount),
        .out_lm222_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_stall_region_out_lm222_conv2d1x1_avm_byteenable),
        .out_lm222_conv2d1x1_avm_enable(bb_conv2d1x1_B8_stall_region_out_lm222_conv2d1x1_avm_enable),
        .out_lm222_conv2d1x1_avm_read(bb_conv2d1x1_B8_stall_region_out_lm222_conv2d1x1_avm_read),
        .out_lm222_conv2d1x1_avm_write(bb_conv2d1x1_B8_stall_region_out_lm222_conv2d1x1_avm_write),
        .out_lm222_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_stall_region_out_lm222_conv2d1x1_avm_writedata),
        .out_lm223_conv2d1x1_avm_address(bb_conv2d1x1_B8_stall_region_out_lm223_conv2d1x1_avm_address),
        .out_lm223_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_stall_region_out_lm223_conv2d1x1_avm_burstcount),
        .out_lm223_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_stall_region_out_lm223_conv2d1x1_avm_byteenable),
        .out_lm223_conv2d1x1_avm_enable(bb_conv2d1x1_B8_stall_region_out_lm223_conv2d1x1_avm_enable),
        .out_lm223_conv2d1x1_avm_read(bb_conv2d1x1_B8_stall_region_out_lm223_conv2d1x1_avm_read),
        .out_lm223_conv2d1x1_avm_write(bb_conv2d1x1_B8_stall_region_out_lm223_conv2d1x1_avm_write),
        .out_lm223_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_stall_region_out_lm223_conv2d1x1_avm_writedata),
        .out_lm225_conv2d1x1_avm_address(bb_conv2d1x1_B8_stall_region_out_lm225_conv2d1x1_avm_address),
        .out_lm225_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_stall_region_out_lm225_conv2d1x1_avm_burstcount),
        .out_lm225_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_stall_region_out_lm225_conv2d1x1_avm_byteenable),
        .out_lm225_conv2d1x1_avm_enable(bb_conv2d1x1_B8_stall_region_out_lm225_conv2d1x1_avm_enable),
        .out_lm225_conv2d1x1_avm_read(bb_conv2d1x1_B8_stall_region_out_lm225_conv2d1x1_avm_read),
        .out_lm225_conv2d1x1_avm_write(bb_conv2d1x1_B8_stall_region_out_lm225_conv2d1x1_avm_write),
        .out_lm225_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_stall_region_out_lm225_conv2d1x1_avm_writedata),
        .out_lm227_conv2d1x1_avm_address(bb_conv2d1x1_B8_stall_region_out_lm227_conv2d1x1_avm_address),
        .out_lm227_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_stall_region_out_lm227_conv2d1x1_avm_burstcount),
        .out_lm227_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_stall_region_out_lm227_conv2d1x1_avm_byteenable),
        .out_lm227_conv2d1x1_avm_enable(bb_conv2d1x1_B8_stall_region_out_lm227_conv2d1x1_avm_enable),
        .out_lm227_conv2d1x1_avm_read(bb_conv2d1x1_B8_stall_region_out_lm227_conv2d1x1_avm_read),
        .out_lm227_conv2d1x1_avm_write(bb_conv2d1x1_B8_stall_region_out_lm227_conv2d1x1_avm_write),
        .out_lm227_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_stall_region_out_lm227_conv2d1x1_avm_writedata),
        .out_lm229_conv2d1x1_avm_address(bb_conv2d1x1_B8_stall_region_out_lm229_conv2d1x1_avm_address),
        .out_lm229_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_stall_region_out_lm229_conv2d1x1_avm_burstcount),
        .out_lm229_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_stall_region_out_lm229_conv2d1x1_avm_byteenable),
        .out_lm229_conv2d1x1_avm_enable(bb_conv2d1x1_B8_stall_region_out_lm229_conv2d1x1_avm_enable),
        .out_lm229_conv2d1x1_avm_read(bb_conv2d1x1_B8_stall_region_out_lm229_conv2d1x1_avm_read),
        .out_lm229_conv2d1x1_avm_write(bb_conv2d1x1_B8_stall_region_out_lm229_conv2d1x1_avm_write),
        .out_lm229_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_stall_region_out_lm229_conv2d1x1_avm_writedata),
        .out_lm231_conv2d1x1_avm_address(bb_conv2d1x1_B8_stall_region_out_lm231_conv2d1x1_avm_address),
        .out_lm231_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_stall_region_out_lm231_conv2d1x1_avm_burstcount),
        .out_lm231_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_stall_region_out_lm231_conv2d1x1_avm_byteenable),
        .out_lm231_conv2d1x1_avm_enable(bb_conv2d1x1_B8_stall_region_out_lm231_conv2d1x1_avm_enable),
        .out_lm231_conv2d1x1_avm_read(bb_conv2d1x1_B8_stall_region_out_lm231_conv2d1x1_avm_read),
        .out_lm231_conv2d1x1_avm_write(bb_conv2d1x1_B8_stall_region_out_lm231_conv2d1x1_avm_write),
        .out_lm231_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_stall_region_out_lm231_conv2d1x1_avm_writedata),
        .out_lm233_conv2d1x1_avm_address(bb_conv2d1x1_B8_stall_region_out_lm233_conv2d1x1_avm_address),
        .out_lm233_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_stall_region_out_lm233_conv2d1x1_avm_burstcount),
        .out_lm233_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_stall_region_out_lm233_conv2d1x1_avm_byteenable),
        .out_lm233_conv2d1x1_avm_enable(bb_conv2d1x1_B8_stall_region_out_lm233_conv2d1x1_avm_enable),
        .out_lm233_conv2d1x1_avm_read(bb_conv2d1x1_B8_stall_region_out_lm233_conv2d1x1_avm_read),
        .out_lm233_conv2d1x1_avm_write(bb_conv2d1x1_B8_stall_region_out_lm233_conv2d1x1_avm_write),
        .out_lm233_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_stall_region_out_lm233_conv2d1x1_avm_writedata),
        .out_lm235_conv2d1x1_avm_address(bb_conv2d1x1_B8_stall_region_out_lm235_conv2d1x1_avm_address),
        .out_lm235_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_stall_region_out_lm235_conv2d1x1_avm_burstcount),
        .out_lm235_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_stall_region_out_lm235_conv2d1x1_avm_byteenable),
        .out_lm235_conv2d1x1_avm_enable(bb_conv2d1x1_B8_stall_region_out_lm235_conv2d1x1_avm_enable),
        .out_lm235_conv2d1x1_avm_read(bb_conv2d1x1_B8_stall_region_out_lm235_conv2d1x1_avm_read),
        .out_lm235_conv2d1x1_avm_write(bb_conv2d1x1_B8_stall_region_out_lm235_conv2d1x1_avm_write),
        .out_lm235_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_stall_region_out_lm235_conv2d1x1_avm_writedata),
        .out_pipeline_valid_out(bb_conv2d1x1_B8_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv2d1x1_B8_stall_region_out_stall_out),
        .out_valid_out(bb_conv2d1x1_B8_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B8_branch(BLACKBOX,3)
    conv2d1x1_B8_branch theconv2d1x1_B8_branch (
        .in_c0_exe16530(bb_conv2d1x1_B8_stall_region_out_c0_exe16530),
        .in_c0_exe17531(bb_conv2d1x1_B8_stall_region_out_c0_exe17531),
        .in_c0_exe18532(bb_conv2d1x1_B8_stall_region_out_c0_exe18532),
        .in_c0_exe19533(bb_conv2d1x1_B8_stall_region_out_c0_exe19533),
        .in_c0_exe20534(bb_conv2d1x1_B8_stall_region_out_c0_exe20534),
        .in_c0_exe21535(bb_conv2d1x1_B8_stall_region_out_c0_exe21535),
        .in_c0_exe3517(bb_conv2d1x1_B8_stall_region_out_c0_exe3517),
        .in_c0_exe4518(bb_conv2d1x1_B8_stall_region_out_c0_exe4518),
        .in_c0_exe5519(bb_conv2d1x1_B8_stall_region_out_c0_exe5519),
        .in_c1_exe10(bb_conv2d1x1_B8_stall_region_out_c1_exe10),
        .in_c1_exe11(bb_conv2d1x1_B8_stall_region_out_c1_exe11),
        .in_c1_exe12(bb_conv2d1x1_B8_stall_region_out_c1_exe12),
        .in_c1_exe13(bb_conv2d1x1_B8_stall_region_out_c1_exe13),
        .in_c1_exe14(bb_conv2d1x1_B8_stall_region_out_c1_exe14),
        .in_c1_exe15(bb_conv2d1x1_B8_stall_region_out_c1_exe15),
        .in_c1_exe1592(bb_conv2d1x1_B8_stall_region_out_c1_exe1592),
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
        .in_c1_exe33(bb_conv2d1x1_B8_stall_region_out_c1_exe33),
        .in_c1_exe34(bb_conv2d1x1_B8_stall_region_out_c1_exe34),
        .in_c1_exe35(bb_conv2d1x1_B8_stall_region_out_c1_exe35),
        .in_c1_exe36(bb_conv2d1x1_B8_stall_region_out_c1_exe36),
        .in_c1_exe37(bb_conv2d1x1_B8_stall_region_out_c1_exe37),
        .in_c1_exe38(bb_conv2d1x1_B8_stall_region_out_c1_exe38),
        .in_c1_exe39(bb_conv2d1x1_B8_stall_region_out_c1_exe39),
        .in_c1_exe4(bb_conv2d1x1_B8_stall_region_out_c1_exe4),
        .in_c1_exe40(bb_conv2d1x1_B8_stall_region_out_c1_exe40),
        .in_c1_exe41(bb_conv2d1x1_B8_stall_region_out_c1_exe41),
        .in_c1_exe42(bb_conv2d1x1_B8_stall_region_out_c1_exe42),
        .in_c1_exe43(bb_conv2d1x1_B8_stall_region_out_c1_exe43),
        .in_c1_exe44(bb_conv2d1x1_B8_stall_region_out_c1_exe44),
        .in_c1_exe45(bb_conv2d1x1_B8_stall_region_out_c1_exe45),
        .in_c1_exe46(bb_conv2d1x1_B8_stall_region_out_c1_exe46),
        .in_c1_exe47(bb_conv2d1x1_B8_stall_region_out_c1_exe47),
        .in_c1_exe48(bb_conv2d1x1_B8_stall_region_out_c1_exe48),
        .in_c1_exe5(bb_conv2d1x1_B8_stall_region_out_c1_exe5),
        .in_c1_exe6(bb_conv2d1x1_B8_stall_region_out_c1_exe6),
        .in_c1_exe7(bb_conv2d1x1_B8_stall_region_out_c1_exe7),
        .in_c1_exe8(bb_conv2d1x1_B8_stall_region_out_c1_exe8),
        .in_c1_exe9(bb_conv2d1x1_B8_stall_region_out_c1_exe9),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv2d1x1_B8_stall_region_out_valid_out),
        .out_c0_exe17531(conv2d1x1_B8_branch_out_c0_exe17531),
        .out_c0_exe18532(conv2d1x1_B8_branch_out_c0_exe18532),
        .out_c0_exe19533(conv2d1x1_B8_branch_out_c0_exe19533),
        .out_c0_exe20534(conv2d1x1_B8_branch_out_c0_exe20534),
        .out_c0_exe21535(conv2d1x1_B8_branch_out_c0_exe21535),
        .out_c0_exe3517(conv2d1x1_B8_branch_out_c0_exe3517),
        .out_c0_exe4518(conv2d1x1_B8_branch_out_c0_exe4518),
        .out_c0_exe5519(conv2d1x1_B8_branch_out_c0_exe5519),
        .out_c1_exe10(conv2d1x1_B8_branch_out_c1_exe10),
        .out_c1_exe11(conv2d1x1_B8_branch_out_c1_exe11),
        .out_c1_exe12(conv2d1x1_B8_branch_out_c1_exe12),
        .out_c1_exe13(conv2d1x1_B8_branch_out_c1_exe13),
        .out_c1_exe14(conv2d1x1_B8_branch_out_c1_exe14),
        .out_c1_exe15(conv2d1x1_B8_branch_out_c1_exe15),
        .out_c1_exe1592(conv2d1x1_B8_branch_out_c1_exe1592),
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
        .out_c1_exe33(conv2d1x1_B8_branch_out_c1_exe33),
        .out_c1_exe34(conv2d1x1_B8_branch_out_c1_exe34),
        .out_c1_exe35(conv2d1x1_B8_branch_out_c1_exe35),
        .out_c1_exe36(conv2d1x1_B8_branch_out_c1_exe36),
        .out_c1_exe37(conv2d1x1_B8_branch_out_c1_exe37),
        .out_c1_exe38(conv2d1x1_B8_branch_out_c1_exe38),
        .out_c1_exe39(conv2d1x1_B8_branch_out_c1_exe39),
        .out_c1_exe4(conv2d1x1_B8_branch_out_c1_exe4),
        .out_c1_exe40(conv2d1x1_B8_branch_out_c1_exe40),
        .out_c1_exe41(conv2d1x1_B8_branch_out_c1_exe41),
        .out_c1_exe42(conv2d1x1_B8_branch_out_c1_exe42),
        .out_c1_exe43(conv2d1x1_B8_branch_out_c1_exe43),
        .out_c1_exe44(conv2d1x1_B8_branch_out_c1_exe44),
        .out_c1_exe45(conv2d1x1_B8_branch_out_c1_exe45),
        .out_c1_exe46(conv2d1x1_B8_branch_out_c1_exe46),
        .out_c1_exe47(conv2d1x1_B8_branch_out_c1_exe47),
        .out_c1_exe48(conv2d1x1_B8_branch_out_c1_exe48),
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

    // out_c0_exe17531(GPOUT,143)
    assign out_c0_exe17531 = conv2d1x1_B8_branch_out_c0_exe17531;

    // out_c0_exe18532(GPOUT,144)
    assign out_c0_exe18532 = conv2d1x1_B8_branch_out_c0_exe18532;

    // out_c0_exe19533(GPOUT,145)
    assign out_c0_exe19533 = conv2d1x1_B8_branch_out_c0_exe19533;

    // out_c0_exe20534(GPOUT,146)
    assign out_c0_exe20534 = conv2d1x1_B8_branch_out_c0_exe20534;

    // out_c0_exe21535(GPOUT,147)
    assign out_c0_exe21535 = conv2d1x1_B8_branch_out_c0_exe21535;

    // out_c0_exe3517(GPOUT,148)
    assign out_c0_exe3517 = conv2d1x1_B8_branch_out_c0_exe3517;

    // out_c0_exe4518(GPOUT,149)
    assign out_c0_exe4518 = conv2d1x1_B8_branch_out_c0_exe4518;

    // out_c0_exe5519(GPOUT,150)
    assign out_c0_exe5519 = conv2d1x1_B8_branch_out_c0_exe5519;

    // out_c1_exe10(GPOUT,151)
    assign out_c1_exe10 = conv2d1x1_B8_branch_out_c1_exe10;

    // out_c1_exe11(GPOUT,152)
    assign out_c1_exe11 = conv2d1x1_B8_branch_out_c1_exe11;

    // out_c1_exe12(GPOUT,153)
    assign out_c1_exe12 = conv2d1x1_B8_branch_out_c1_exe12;

    // out_c1_exe13(GPOUT,154)
    assign out_c1_exe13 = conv2d1x1_B8_branch_out_c1_exe13;

    // out_c1_exe14(GPOUT,155)
    assign out_c1_exe14 = conv2d1x1_B8_branch_out_c1_exe14;

    // out_c1_exe15(GPOUT,156)
    assign out_c1_exe15 = conv2d1x1_B8_branch_out_c1_exe15;

    // out_c1_exe1592(GPOUT,157)
    assign out_c1_exe1592 = conv2d1x1_B8_branch_out_c1_exe1592;

    // out_c1_exe16(GPOUT,158)
    assign out_c1_exe16 = conv2d1x1_B8_branch_out_c1_exe16;

    // out_c1_exe17(GPOUT,159)
    assign out_c1_exe17 = conv2d1x1_B8_branch_out_c1_exe17;

    // out_c1_exe18(GPOUT,160)
    assign out_c1_exe18 = conv2d1x1_B8_branch_out_c1_exe18;

    // out_c1_exe19(GPOUT,161)
    assign out_c1_exe19 = conv2d1x1_B8_branch_out_c1_exe19;

    // out_c1_exe2(GPOUT,162)
    assign out_c1_exe2 = conv2d1x1_B8_branch_out_c1_exe2;

    // out_c1_exe20(GPOUT,163)
    assign out_c1_exe20 = conv2d1x1_B8_branch_out_c1_exe20;

    // out_c1_exe21(GPOUT,164)
    assign out_c1_exe21 = conv2d1x1_B8_branch_out_c1_exe21;

    // out_c1_exe22(GPOUT,165)
    assign out_c1_exe22 = conv2d1x1_B8_branch_out_c1_exe22;

    // out_c1_exe23(GPOUT,166)
    assign out_c1_exe23 = conv2d1x1_B8_branch_out_c1_exe23;

    // out_c1_exe24(GPOUT,167)
    assign out_c1_exe24 = conv2d1x1_B8_branch_out_c1_exe24;

    // out_c1_exe25(GPOUT,168)
    assign out_c1_exe25 = conv2d1x1_B8_branch_out_c1_exe25;

    // out_c1_exe26(GPOUT,169)
    assign out_c1_exe26 = conv2d1x1_B8_branch_out_c1_exe26;

    // out_c1_exe27(GPOUT,170)
    assign out_c1_exe27 = conv2d1x1_B8_branch_out_c1_exe27;

    // out_c1_exe28(GPOUT,171)
    assign out_c1_exe28 = conv2d1x1_B8_branch_out_c1_exe28;

    // out_c1_exe29(GPOUT,172)
    assign out_c1_exe29 = conv2d1x1_B8_branch_out_c1_exe29;

    // out_c1_exe3(GPOUT,173)
    assign out_c1_exe3 = conv2d1x1_B8_branch_out_c1_exe3;

    // out_c1_exe30(GPOUT,174)
    assign out_c1_exe30 = conv2d1x1_B8_branch_out_c1_exe30;

    // out_c1_exe31(GPOUT,175)
    assign out_c1_exe31 = conv2d1x1_B8_branch_out_c1_exe31;

    // out_c1_exe32(GPOUT,176)
    assign out_c1_exe32 = conv2d1x1_B8_branch_out_c1_exe32;

    // out_c1_exe33(GPOUT,177)
    assign out_c1_exe33 = conv2d1x1_B8_branch_out_c1_exe33;

    // out_c1_exe34(GPOUT,178)
    assign out_c1_exe34 = conv2d1x1_B8_branch_out_c1_exe34;

    // out_c1_exe35(GPOUT,179)
    assign out_c1_exe35 = conv2d1x1_B8_branch_out_c1_exe35;

    // out_c1_exe36(GPOUT,180)
    assign out_c1_exe36 = conv2d1x1_B8_branch_out_c1_exe36;

    // out_c1_exe37(GPOUT,181)
    assign out_c1_exe37 = conv2d1x1_B8_branch_out_c1_exe37;

    // out_c1_exe38(GPOUT,182)
    assign out_c1_exe38 = conv2d1x1_B8_branch_out_c1_exe38;

    // out_c1_exe39(GPOUT,183)
    assign out_c1_exe39 = conv2d1x1_B8_branch_out_c1_exe39;

    // out_c1_exe4(GPOUT,184)
    assign out_c1_exe4 = conv2d1x1_B8_branch_out_c1_exe4;

    // out_c1_exe40(GPOUT,185)
    assign out_c1_exe40 = conv2d1x1_B8_branch_out_c1_exe40;

    // out_c1_exe41(GPOUT,186)
    assign out_c1_exe41 = conv2d1x1_B8_branch_out_c1_exe41;

    // out_c1_exe42(GPOUT,187)
    assign out_c1_exe42 = conv2d1x1_B8_branch_out_c1_exe42;

    // out_c1_exe43(GPOUT,188)
    assign out_c1_exe43 = conv2d1x1_B8_branch_out_c1_exe43;

    // out_c1_exe44(GPOUT,189)
    assign out_c1_exe44 = conv2d1x1_B8_branch_out_c1_exe44;

    // out_c1_exe45(GPOUT,190)
    assign out_c1_exe45 = conv2d1x1_B8_branch_out_c1_exe45;

    // out_c1_exe46(GPOUT,191)
    assign out_c1_exe46 = conv2d1x1_B8_branch_out_c1_exe46;

    // out_c1_exe47(GPOUT,192)
    assign out_c1_exe47 = conv2d1x1_B8_branch_out_c1_exe47;

    // out_c1_exe48(GPOUT,193)
    assign out_c1_exe48 = conv2d1x1_B8_branch_out_c1_exe48;

    // out_c1_exe5(GPOUT,194)
    assign out_c1_exe5 = conv2d1x1_B8_branch_out_c1_exe5;

    // out_c1_exe6(GPOUT,195)
    assign out_c1_exe6 = conv2d1x1_B8_branch_out_c1_exe6;

    // out_c1_exe7(GPOUT,196)
    assign out_c1_exe7 = conv2d1x1_B8_branch_out_c1_exe7;

    // out_c1_exe8(GPOUT,197)
    assign out_c1_exe8 = conv2d1x1_B8_branch_out_c1_exe8;

    // out_c1_exe9(GPOUT,198)
    assign out_c1_exe9 = conv2d1x1_B8_branch_out_c1_exe9;

    // out_exiting_stall_out(GPOUT,199)
    assign out_exiting_stall_out = bb_conv2d1x1_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,200)
    assign out_exiting_valid_out = bb_conv2d1x1_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out;

    // out_lm220_conv2d1x1_avm_address(GPOUT,201)
    assign out_lm220_conv2d1x1_avm_address = bb_conv2d1x1_B8_stall_region_out_lm220_conv2d1x1_avm_address;

    // out_lm220_conv2d1x1_avm_burstcount(GPOUT,202)
    assign out_lm220_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_stall_region_out_lm220_conv2d1x1_avm_burstcount;

    // out_lm220_conv2d1x1_avm_byteenable(GPOUT,203)
    assign out_lm220_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_stall_region_out_lm220_conv2d1x1_avm_byteenable;

    // out_lm220_conv2d1x1_avm_enable(GPOUT,204)
    assign out_lm220_conv2d1x1_avm_enable = bb_conv2d1x1_B8_stall_region_out_lm220_conv2d1x1_avm_enable;

    // out_lm220_conv2d1x1_avm_read(GPOUT,205)
    assign out_lm220_conv2d1x1_avm_read = bb_conv2d1x1_B8_stall_region_out_lm220_conv2d1x1_avm_read;

    // out_lm220_conv2d1x1_avm_write(GPOUT,206)
    assign out_lm220_conv2d1x1_avm_write = bb_conv2d1x1_B8_stall_region_out_lm220_conv2d1x1_avm_write;

    // out_lm220_conv2d1x1_avm_writedata(GPOUT,207)
    assign out_lm220_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_stall_region_out_lm220_conv2d1x1_avm_writedata;

    // out_lm222_conv2d1x1_avm_address(GPOUT,208)
    assign out_lm222_conv2d1x1_avm_address = bb_conv2d1x1_B8_stall_region_out_lm222_conv2d1x1_avm_address;

    // out_lm222_conv2d1x1_avm_burstcount(GPOUT,209)
    assign out_lm222_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_stall_region_out_lm222_conv2d1x1_avm_burstcount;

    // out_lm222_conv2d1x1_avm_byteenable(GPOUT,210)
    assign out_lm222_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_stall_region_out_lm222_conv2d1x1_avm_byteenable;

    // out_lm222_conv2d1x1_avm_enable(GPOUT,211)
    assign out_lm222_conv2d1x1_avm_enable = bb_conv2d1x1_B8_stall_region_out_lm222_conv2d1x1_avm_enable;

    // out_lm222_conv2d1x1_avm_read(GPOUT,212)
    assign out_lm222_conv2d1x1_avm_read = bb_conv2d1x1_B8_stall_region_out_lm222_conv2d1x1_avm_read;

    // out_lm222_conv2d1x1_avm_write(GPOUT,213)
    assign out_lm222_conv2d1x1_avm_write = bb_conv2d1x1_B8_stall_region_out_lm222_conv2d1x1_avm_write;

    // out_lm222_conv2d1x1_avm_writedata(GPOUT,214)
    assign out_lm222_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_stall_region_out_lm222_conv2d1x1_avm_writedata;

    // out_lm223_conv2d1x1_avm_address(GPOUT,215)
    assign out_lm223_conv2d1x1_avm_address = bb_conv2d1x1_B8_stall_region_out_lm223_conv2d1x1_avm_address;

    // out_lm223_conv2d1x1_avm_burstcount(GPOUT,216)
    assign out_lm223_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_stall_region_out_lm223_conv2d1x1_avm_burstcount;

    // out_lm223_conv2d1x1_avm_byteenable(GPOUT,217)
    assign out_lm223_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_stall_region_out_lm223_conv2d1x1_avm_byteenable;

    // out_lm223_conv2d1x1_avm_enable(GPOUT,218)
    assign out_lm223_conv2d1x1_avm_enable = bb_conv2d1x1_B8_stall_region_out_lm223_conv2d1x1_avm_enable;

    // out_lm223_conv2d1x1_avm_read(GPOUT,219)
    assign out_lm223_conv2d1x1_avm_read = bb_conv2d1x1_B8_stall_region_out_lm223_conv2d1x1_avm_read;

    // out_lm223_conv2d1x1_avm_write(GPOUT,220)
    assign out_lm223_conv2d1x1_avm_write = bb_conv2d1x1_B8_stall_region_out_lm223_conv2d1x1_avm_write;

    // out_lm223_conv2d1x1_avm_writedata(GPOUT,221)
    assign out_lm223_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_stall_region_out_lm223_conv2d1x1_avm_writedata;

    // out_lm225_conv2d1x1_avm_address(GPOUT,222)
    assign out_lm225_conv2d1x1_avm_address = bb_conv2d1x1_B8_stall_region_out_lm225_conv2d1x1_avm_address;

    // out_lm225_conv2d1x1_avm_burstcount(GPOUT,223)
    assign out_lm225_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_stall_region_out_lm225_conv2d1x1_avm_burstcount;

    // out_lm225_conv2d1x1_avm_byteenable(GPOUT,224)
    assign out_lm225_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_stall_region_out_lm225_conv2d1x1_avm_byteenable;

    // out_lm225_conv2d1x1_avm_enable(GPOUT,225)
    assign out_lm225_conv2d1x1_avm_enable = bb_conv2d1x1_B8_stall_region_out_lm225_conv2d1x1_avm_enable;

    // out_lm225_conv2d1x1_avm_read(GPOUT,226)
    assign out_lm225_conv2d1x1_avm_read = bb_conv2d1x1_B8_stall_region_out_lm225_conv2d1x1_avm_read;

    // out_lm225_conv2d1x1_avm_write(GPOUT,227)
    assign out_lm225_conv2d1x1_avm_write = bb_conv2d1x1_B8_stall_region_out_lm225_conv2d1x1_avm_write;

    // out_lm225_conv2d1x1_avm_writedata(GPOUT,228)
    assign out_lm225_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_stall_region_out_lm225_conv2d1x1_avm_writedata;

    // out_lm227_conv2d1x1_avm_address(GPOUT,229)
    assign out_lm227_conv2d1x1_avm_address = bb_conv2d1x1_B8_stall_region_out_lm227_conv2d1x1_avm_address;

    // out_lm227_conv2d1x1_avm_burstcount(GPOUT,230)
    assign out_lm227_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_stall_region_out_lm227_conv2d1x1_avm_burstcount;

    // out_lm227_conv2d1x1_avm_byteenable(GPOUT,231)
    assign out_lm227_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_stall_region_out_lm227_conv2d1x1_avm_byteenable;

    // out_lm227_conv2d1x1_avm_enable(GPOUT,232)
    assign out_lm227_conv2d1x1_avm_enable = bb_conv2d1x1_B8_stall_region_out_lm227_conv2d1x1_avm_enable;

    // out_lm227_conv2d1x1_avm_read(GPOUT,233)
    assign out_lm227_conv2d1x1_avm_read = bb_conv2d1x1_B8_stall_region_out_lm227_conv2d1x1_avm_read;

    // out_lm227_conv2d1x1_avm_write(GPOUT,234)
    assign out_lm227_conv2d1x1_avm_write = bb_conv2d1x1_B8_stall_region_out_lm227_conv2d1x1_avm_write;

    // out_lm227_conv2d1x1_avm_writedata(GPOUT,235)
    assign out_lm227_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_stall_region_out_lm227_conv2d1x1_avm_writedata;

    // out_lm229_conv2d1x1_avm_address(GPOUT,236)
    assign out_lm229_conv2d1x1_avm_address = bb_conv2d1x1_B8_stall_region_out_lm229_conv2d1x1_avm_address;

    // out_lm229_conv2d1x1_avm_burstcount(GPOUT,237)
    assign out_lm229_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_stall_region_out_lm229_conv2d1x1_avm_burstcount;

    // out_lm229_conv2d1x1_avm_byteenable(GPOUT,238)
    assign out_lm229_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_stall_region_out_lm229_conv2d1x1_avm_byteenable;

    // out_lm229_conv2d1x1_avm_enable(GPOUT,239)
    assign out_lm229_conv2d1x1_avm_enable = bb_conv2d1x1_B8_stall_region_out_lm229_conv2d1x1_avm_enable;

    // out_lm229_conv2d1x1_avm_read(GPOUT,240)
    assign out_lm229_conv2d1x1_avm_read = bb_conv2d1x1_B8_stall_region_out_lm229_conv2d1x1_avm_read;

    // out_lm229_conv2d1x1_avm_write(GPOUT,241)
    assign out_lm229_conv2d1x1_avm_write = bb_conv2d1x1_B8_stall_region_out_lm229_conv2d1x1_avm_write;

    // out_lm229_conv2d1x1_avm_writedata(GPOUT,242)
    assign out_lm229_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_stall_region_out_lm229_conv2d1x1_avm_writedata;

    // out_lm231_conv2d1x1_avm_address(GPOUT,243)
    assign out_lm231_conv2d1x1_avm_address = bb_conv2d1x1_B8_stall_region_out_lm231_conv2d1x1_avm_address;

    // out_lm231_conv2d1x1_avm_burstcount(GPOUT,244)
    assign out_lm231_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_stall_region_out_lm231_conv2d1x1_avm_burstcount;

    // out_lm231_conv2d1x1_avm_byteenable(GPOUT,245)
    assign out_lm231_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_stall_region_out_lm231_conv2d1x1_avm_byteenable;

    // out_lm231_conv2d1x1_avm_enable(GPOUT,246)
    assign out_lm231_conv2d1x1_avm_enable = bb_conv2d1x1_B8_stall_region_out_lm231_conv2d1x1_avm_enable;

    // out_lm231_conv2d1x1_avm_read(GPOUT,247)
    assign out_lm231_conv2d1x1_avm_read = bb_conv2d1x1_B8_stall_region_out_lm231_conv2d1x1_avm_read;

    // out_lm231_conv2d1x1_avm_write(GPOUT,248)
    assign out_lm231_conv2d1x1_avm_write = bb_conv2d1x1_B8_stall_region_out_lm231_conv2d1x1_avm_write;

    // out_lm231_conv2d1x1_avm_writedata(GPOUT,249)
    assign out_lm231_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_stall_region_out_lm231_conv2d1x1_avm_writedata;

    // out_lm233_conv2d1x1_avm_address(GPOUT,250)
    assign out_lm233_conv2d1x1_avm_address = bb_conv2d1x1_B8_stall_region_out_lm233_conv2d1x1_avm_address;

    // out_lm233_conv2d1x1_avm_burstcount(GPOUT,251)
    assign out_lm233_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_stall_region_out_lm233_conv2d1x1_avm_burstcount;

    // out_lm233_conv2d1x1_avm_byteenable(GPOUT,252)
    assign out_lm233_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_stall_region_out_lm233_conv2d1x1_avm_byteenable;

    // out_lm233_conv2d1x1_avm_enable(GPOUT,253)
    assign out_lm233_conv2d1x1_avm_enable = bb_conv2d1x1_B8_stall_region_out_lm233_conv2d1x1_avm_enable;

    // out_lm233_conv2d1x1_avm_read(GPOUT,254)
    assign out_lm233_conv2d1x1_avm_read = bb_conv2d1x1_B8_stall_region_out_lm233_conv2d1x1_avm_read;

    // out_lm233_conv2d1x1_avm_write(GPOUT,255)
    assign out_lm233_conv2d1x1_avm_write = bb_conv2d1x1_B8_stall_region_out_lm233_conv2d1x1_avm_write;

    // out_lm233_conv2d1x1_avm_writedata(GPOUT,256)
    assign out_lm233_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_stall_region_out_lm233_conv2d1x1_avm_writedata;

    // out_lm235_conv2d1x1_avm_address(GPOUT,257)
    assign out_lm235_conv2d1x1_avm_address = bb_conv2d1x1_B8_stall_region_out_lm235_conv2d1x1_avm_address;

    // out_lm235_conv2d1x1_avm_burstcount(GPOUT,258)
    assign out_lm235_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_stall_region_out_lm235_conv2d1x1_avm_burstcount;

    // out_lm235_conv2d1x1_avm_byteenable(GPOUT,259)
    assign out_lm235_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_stall_region_out_lm235_conv2d1x1_avm_byteenable;

    // out_lm235_conv2d1x1_avm_enable(GPOUT,260)
    assign out_lm235_conv2d1x1_avm_enable = bb_conv2d1x1_B8_stall_region_out_lm235_conv2d1x1_avm_enable;

    // out_lm235_conv2d1x1_avm_read(GPOUT,261)
    assign out_lm235_conv2d1x1_avm_read = bb_conv2d1x1_B8_stall_region_out_lm235_conv2d1x1_avm_read;

    // out_lm235_conv2d1x1_avm_write(GPOUT,262)
    assign out_lm235_conv2d1x1_avm_write = bb_conv2d1x1_B8_stall_region_out_lm235_conv2d1x1_avm_write;

    // out_lm235_conv2d1x1_avm_writedata(GPOUT,263)
    assign out_lm235_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_stall_region_out_lm235_conv2d1x1_avm_writedata;

    // out_stall_in_0(GPOUT,264)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,265)
    assign out_stall_out_0 = conv2d1x1_B8_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,266)
    assign out_stall_out_1 = conv2d1x1_B8_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,267)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,268)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,269)
    assign out_valid_out_0 = conv2d1x1_B8_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,270)
    assign out_valid_out_1 = conv2d1x1_B8_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,272)
    assign out_pipeline_valid_out = bb_conv2d1x1_B8_stall_region_out_pipeline_valid_out;

endmodule
