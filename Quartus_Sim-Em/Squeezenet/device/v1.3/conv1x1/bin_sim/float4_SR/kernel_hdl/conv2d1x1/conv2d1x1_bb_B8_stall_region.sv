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

// SystemVerilog created from conv2d1x1_bb_B8_stall_region
// SystemVerilog created on Wed May 24 11:22:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B8_stall_region (
    input wire [511:0] in_lm148_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm148_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm148_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm148_conv2d1x1_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_filter_weight,
    input wire [0:0] in_flush,
    input wire [63:0] in_input_im,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_ap_pop_ext7140,
    input wire [0:0] in_forked,
    input wire [31:0] in_ij_068_pop1366_pop36160,
    input wire [31:0] in_lm52_pop30150,
    input wire [31:0] in_lm95,
    input wire [31:0] in_mul100105,
    input wire [31:0] in_mul10058_pop32154,
    input wire [31:0] in_mul21100,
    input wire [31:0] in_mul2155_pop31152,
    input wire [31:0] in_mul49_pop26146,
    input wire [31:0] in_mul90,
    input wire [0:0] in_notcmp3864_pop35158,
    input wire [0:0] in_notcmp43110,
    input wire [0:0] in_notcmp4361_pop33156,
    input wire [0:0] in_pop27142,
    input wire [0:0] in_pop28144,
    input wire [0:0] in_pop29148,
    input wire [31:0] in_pre74_e125,
    input wire [31:0] in_pre75_e126,
    input wire [31:0] in_pre76_e127,
    input wire [31:0] in_pre77_e128,
    input wire [31:0] in_pre78_e129,
    input wire [31:0] in_pre79_e130,
    input wire [31:0] in_pre80_e131,
    input wire [31:0] in_pre81_e132,
    input wire [31:0] in_pre82_e133,
    input wire [31:0] in_pre83_e134,
    input wire [31:0] in_pre84_e135,
    input wire [31:0] in_pre85_e136,
    input wire [31:0] in_pre86_e137,
    input wire [31:0] in_pre87_e138,
    input wire [31:0] in_pre88_e139,
    input wire [31:0] in_pre_e124,
    input wire [0:0] in_unnamed_conv2d1x117,
    input wire [0:0] in_unnamed_conv2d1x118,
    input wire [0:0] in_unnamed_conv2d1x119,
    input wire [32:0] in_unnamed_conv2d1x120,
    input wire [0:0] in_valid_in,
    input wire [511:0] in_lm150_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm150_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm150_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm150_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm148_conv2d1x1_avm_address,
    output wire [0:0] out_lm148_conv2d1x1_avm_enable,
    output wire [0:0] out_lm148_conv2d1x1_avm_read,
    output wire [0:0] out_lm148_conv2d1x1_avm_write,
    output wire [511:0] out_lm148_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm148_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm148_conv2d1x1_avm_burstcount,
    output wire [0:0] out_c0_exe12450,
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
    output wire [0:0] out_valid_out,
    input wire [511:0] in_lm151_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm151_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm151_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm151_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm150_conv2d1x1_avm_address,
    output wire [0:0] out_lm150_conv2d1x1_avm_enable,
    output wire [0:0] out_lm150_conv2d1x1_avm_read,
    output wire [0:0] out_lm150_conv2d1x1_avm_write,
    output wire [511:0] out_lm150_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm150_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm150_conv2d1x1_avm_burstcount,
    input wire [511:0] in_lm153_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm153_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm153_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm153_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm151_conv2d1x1_avm_address,
    output wire [0:0] out_lm151_conv2d1x1_avm_enable,
    output wire [0:0] out_lm151_conv2d1x1_avm_read,
    output wire [0:0] out_lm151_conv2d1x1_avm_write,
    output wire [511:0] out_lm151_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm151_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm151_conv2d1x1_avm_burstcount,
    input wire [511:0] in_lm155_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm155_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm155_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm155_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm153_conv2d1x1_avm_address,
    output wire [0:0] out_lm153_conv2d1x1_avm_enable,
    output wire [0:0] out_lm153_conv2d1x1_avm_read,
    output wire [0:0] out_lm153_conv2d1x1_avm_write,
    output wire [511:0] out_lm153_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm153_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm153_conv2d1x1_avm_burstcount,
    output wire [30:0] out_lm155_conv2d1x1_avm_address,
    output wire [0:0] out_lm155_conv2d1x1_avm_enable,
    output wire [0:0] out_lm155_conv2d1x1_avm_read,
    output wire [0:0] out_lm155_conv2d1x1_avm_write,
    output wire [511:0] out_lm155_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm155_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm155_conv2d1x1_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [30:0] i_llvm_fpga_mem_lm148_conv2d1x13_out_lm148_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm148_conv2d1x13_out_lm148_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm148_conv2d1x13_out_lm148_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm148_conv2d1x13_out_lm148_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm148_conv2d1x13_out_lm148_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm148_conv2d1x13_out_lm148_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm148_conv2d1x13_out_lm148_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm148_conv2d1x13_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm148_conv2d1x13_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm148_conv2d1x13_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm151_conv2d1x15_out_lm151_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm151_conv2d1x15_out_lm151_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm151_conv2d1x15_out_lm151_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm151_conv2d1x15_out_lm151_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm151_conv2d1x15_out_lm151_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm151_conv2d1x15_out_lm151_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm151_conv2d1x15_out_lm151_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm151_conv2d1x15_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm151_conv2d1x15_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm151_conv2d1x15_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm153_conv2d1x16_out_lm153_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm153_conv2d1x16_out_lm153_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm153_conv2d1x16_out_lm153_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm153_conv2d1x16_out_lm153_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm153_conv2d1x16_out_lm153_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm153_conv2d1x16_out_lm153_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm153_conv2d1x16_out_lm153_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm153_conv2d1x16_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm153_conv2d1x16_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm153_conv2d1x16_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm155_conv2d1x17_out_lm155_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm155_conv2d1x17_out_lm155_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm155_conv2d1x17_out_lm155_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm155_conv2d1x17_out_lm155_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm155_conv2d1x17_out_lm155_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm155_conv2d1x17_out_lm155_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm155_conv2d1x17_out_lm155_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm155_conv2d1x17_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm155_conv2d1x17_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm155_conv2d1x17_out_o_valid;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [32:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_17_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_18_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_19_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_20_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_21_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_22_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_23_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_24_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_25_tpl;
    wire [63:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_26_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_27_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_28_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_29_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_30_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_31_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_32_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_33_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_34_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_35_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_36_tpl;
    wire [30:0] i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_lm150_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_lm150_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_lm150_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_lm150_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_lm150_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_lm150_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_lm150_conv2d1x1_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_o_readdata_0_tpl;
    wire [31:0] i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_o_readdata_1_tpl;
    wire [31:0] i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_o_readdata_2_tpl;
    wire [31:0] i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_o_readdata_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_5_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_7_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_8_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_9_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_10_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_12_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_13_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_14_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_15_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_16_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_17_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_18_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_28_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_29_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_30_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_31_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_32_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_33_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_34_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_35_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_36_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_37_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_38_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_39_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_40_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_41_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_42_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_43_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_1_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_2_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_3_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_4_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_5_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_6_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_7_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_8_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_9_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_10_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_11_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_12_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_13_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_14_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_15_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_16_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_17_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_18_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_19_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_20_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_21_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_22_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_23_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_24_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_25_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_26_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_27_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_28_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_29_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_30_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_31_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_32_tpl;
    wire [515:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [31:0] sel_for_coalesced_delay_0_f;
    wire [31:0] sel_for_coalesced_delay_0_g;
    wire [31:0] sel_for_coalesced_delay_0_h;
    wire [31:0] sel_for_coalesced_delay_0_i;
    wire [31:0] sel_for_coalesced_delay_0_j;
    wire [31:0] sel_for_coalesced_delay_0_k;
    wire [31:0] sel_for_coalesced_delay_0_l;
    wire [31:0] sel_for_coalesced_delay_0_m;
    wire [31:0] sel_for_coalesced_delay_0_n;
    wire [31:0] sel_for_coalesced_delay_0_o;
    wire [31:0] sel_for_coalesced_delay_0_p;
    wire [31:0] sel_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_r;
    wire [0:0] sel_for_coalesced_delay_0_s;
    wire [0:0] sel_for_coalesced_delay_0_t;
    wire [0:0] sel_for_coalesced_delay_0_u;
    wire [163:0] join_for_coalesced_delay_1_q;
    wire [63:0] sel_for_coalesced_delay_1_b;
    wire [31:0] sel_for_coalesced_delay_1_c;
    wire [31:0] sel_for_coalesced_delay_1_d;
    wire [31:0] sel_for_coalesced_delay_1_e;
    wire [0:0] sel_for_coalesced_delay_1_f;
    wire [0:0] sel_for_coalesced_delay_1_g;
    wire [0:0] sel_for_coalesced_delay_1_h;
    wire [0:0] sel_for_coalesced_delay_1_i;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_valid_in;
    wire redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_stall_in;
    wire redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_data_in;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_valid_out;
    wire redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_stall_out;
    wire redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [515:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [515:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [163:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [163:0] coalesced_delay_1_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm148_conv2d1x13_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm148_conv2d1x13_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm151_conv2d1x15_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm151_conv2d1x15_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm153_conv2d1x16_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm153_conv2d1x16_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm155_conv2d1x17_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm155_conv2d1x17_b;
    wire [906:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [0:0] bubble_select_stall_entry_o;
    wire [0:0] bubble_select_stall_entry_p;
    wire [0:0] bubble_select_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_r;
    wire [31:0] bubble_select_stall_entry_s;
    wire [31:0] bubble_select_stall_entry_t;
    wire [31:0] bubble_select_stall_entry_u;
    wire [31:0] bubble_select_stall_entry_v;
    wire [31:0] bubble_select_stall_entry_w;
    wire [31:0] bubble_select_stall_entry_x;
    wire [31:0] bubble_select_stall_entry_y;
    wire [31:0] bubble_select_stall_entry_z;
    wire [31:0] bubble_select_stall_entry_aa;
    wire [31:0] bubble_select_stall_entry_bb;
    wire [31:0] bubble_select_stall_entry_cc;
    wire [31:0] bubble_select_stall_entry_dd;
    wire [31:0] bubble_select_stall_entry_ee;
    wire [31:0] bubble_select_stall_entry_ff;
    wire [31:0] bubble_select_stall_entry_gg;
    wire [31:0] bubble_select_stall_entry_hh;
    wire [0:0] bubble_select_stall_entry_ii;
    wire [0:0] bubble_select_stall_entry_jj;
    wire [0:0] bubble_select_stall_entry_kk;
    wire [32:0] bubble_select_stall_entry_ll;
    wire [906:0] bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_f;
    wire [32:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_g;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_i;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_k;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_l;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_m;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_n;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_p;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_r;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_s;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_t;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_u;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_v;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_w;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_x;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_y;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_z;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_aa;
    wire [63:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_bb;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_cc;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_dd;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ee;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ff;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_gg;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_hh;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ii;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_jj;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_kk;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ll;
    wire [127:0] bubble_join_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_b;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_c;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_d;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_e;
    wire [1000:0] bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_f;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_h;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_i;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_j;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_k;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_m;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_n;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_o;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_p;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_r;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_s;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_t;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_u;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_v;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_w;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_x;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_y;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_z;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_aa;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_bb;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_cc;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_dd;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_ee;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_ff;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_gg;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_hh;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_ii;
    wire [1023:0] bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_j;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_k;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_l;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_m;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_n;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_o;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_p;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_r;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_s;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_t;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_u;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_v;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_w;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_x;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_y;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_z;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_aa;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_bb;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_cc;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_dd;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_ee;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_ff;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_gg;
    wire [0:0] bubble_join_redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_q;
    wire [0:0] bubble_select_redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_b;
    wire [515:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [515:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [163:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [163:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_conv2d1x1_B8_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv2d1x1_B8_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv2d1x1_B8_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_and1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_and2;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_and3;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_and4;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_toReg4;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_toReg5;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_toReg6;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg6;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed6;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_or3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_or4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_or5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_V3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_V4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_V5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_V6;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;


    // bubble_join_stall_entry(BITJOIN,104)
    assign bubble_join_stall_entry_q = {in_unnamed_conv2d1x120, in_unnamed_conv2d1x119, in_unnamed_conv2d1x118, in_unnamed_conv2d1x117, in_pre_e124, in_pre88_e139, in_pre87_e138, in_pre86_e137, in_pre85_e136, in_pre84_e135, in_pre83_e134, in_pre82_e133, in_pre81_e132, in_pre80_e131, in_pre79_e130, in_pre78_e129, in_pre77_e128, in_pre76_e127, in_pre75_e126, in_pre74_e125, in_pop29148, in_pop28144, in_pop27142, in_notcmp4361_pop33156, in_notcmp43110, in_notcmp3864_pop35158, in_mul90, in_mul49_pop26146, in_mul2155_pop31152, in_mul21100, in_mul10058_pop32154, in_mul100105, in_lm95, in_lm52_pop30150, in_ij_068_pop1366_pop36160, in_forked, in_ap_pop_ext7140};

    // bubble_select_stall_entry(BITSELECT,105)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[96:65]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[128:97]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[160:129]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[192:161]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[224:193]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[256:225]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[288:257]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[320:289]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[352:321]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[353:353]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[354:354]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[355:355]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[356:356]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[357:357]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[358:358]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[390:359]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[422:391]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[454:423]);
    assign bubble_select_stall_entry_v = $unsigned(bubble_join_stall_entry_q[486:455]);
    assign bubble_select_stall_entry_w = $unsigned(bubble_join_stall_entry_q[518:487]);
    assign bubble_select_stall_entry_x = $unsigned(bubble_join_stall_entry_q[550:519]);
    assign bubble_select_stall_entry_y = $unsigned(bubble_join_stall_entry_q[582:551]);
    assign bubble_select_stall_entry_z = $unsigned(bubble_join_stall_entry_q[614:583]);
    assign bubble_select_stall_entry_aa = $unsigned(bubble_join_stall_entry_q[646:615]);
    assign bubble_select_stall_entry_bb = $unsigned(bubble_join_stall_entry_q[678:647]);
    assign bubble_select_stall_entry_cc = $unsigned(bubble_join_stall_entry_q[710:679]);
    assign bubble_select_stall_entry_dd = $unsigned(bubble_join_stall_entry_q[742:711]);
    assign bubble_select_stall_entry_ee = $unsigned(bubble_join_stall_entry_q[774:743]);
    assign bubble_select_stall_entry_ff = $unsigned(bubble_join_stall_entry_q[806:775]);
    assign bubble_select_stall_entry_gg = $unsigned(bubble_join_stall_entry_q[838:807]);
    assign bubble_select_stall_entry_hh = $unsigned(bubble_join_stall_entry_q[870:839]);
    assign bubble_select_stall_entry_ii = $unsigned(bubble_join_stall_entry_q[871:871]);
    assign bubble_select_stall_entry_jj = $unsigned(bubble_join_stall_entry_q[872:872]);
    assign bubble_select_stall_entry_kk = $unsigned(bubble_join_stall_entry_q[873:873]);
    assign bubble_select_stall_entry_ll = $unsigned(bubble_join_stall_entry_q[906:874]);

    // SE_stall_entry(STALLENABLE,138)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv2d1x1_B8_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // conv2d1x1_B8_merge_reg_aunroll_x(BLACKBOX,39)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    // out out_data_out_7_tpl@1
    // out out_data_out_8_tpl@1
    // out out_data_out_9_tpl@1
    // out out_data_out_10_tpl@1
    // out out_data_out_11_tpl@1
    // out out_data_out_12_tpl@1
    // out out_data_out_13_tpl@1
    // out out_data_out_14_tpl@1
    // out out_data_out_15_tpl@1
    // out out_data_out_16_tpl@1
    // out out_data_out_17_tpl@1
    // out out_data_out_18_tpl@1
    // out out_data_out_19_tpl@1
    // out out_data_out_20_tpl@1
    // out out_data_out_21_tpl@1
    // out out_data_out_22_tpl@1
    // out out_data_out_23_tpl@1
    // out out_data_out_24_tpl@1
    // out out_data_out_25_tpl@1
    // out out_data_out_26_tpl@1
    // out out_data_out_27_tpl@1
    // out out_data_out_28_tpl@1
    // out out_data_out_29_tpl@1
    // out out_data_out_30_tpl@1
    // out out_data_out_31_tpl@1
    // out out_data_out_32_tpl@1
    // out out_data_out_33_tpl@1
    // out out_data_out_34_tpl@1
    // out out_data_out_35_tpl@1
    // out out_data_out_36_tpl@1
    conv2d1x1_B8_merge_reg theconv2d1x1_B8_merge_reg_aunroll_x (
        .in_stall_in(SE_out_conv2d1x1_B8_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_l),
        .in_data_in_2_tpl(bubble_select_stall_entry_ii),
        .in_data_in_3_tpl(bubble_select_stall_entry_jj),
        .in_data_in_4_tpl(bubble_select_stall_entry_kk),
        .in_data_in_5_tpl(bubble_select_stall_entry_ll),
        .in_data_in_6_tpl(bubble_select_stall_entry_f),
        .in_data_in_7_tpl(bubble_select_stall_entry_i),
        .in_data_in_8_tpl(bubble_select_stall_entry_g),
        .in_data_in_9_tpl(bubble_select_stall_entry_n),
        .in_data_in_10_tpl(bubble_select_stall_entry_hh),
        .in_data_in_11_tpl(bubble_select_stall_entry_s),
        .in_data_in_12_tpl(bubble_select_stall_entry_t),
        .in_data_in_13_tpl(bubble_select_stall_entry_u),
        .in_data_in_14_tpl(bubble_select_stall_entry_v),
        .in_data_in_15_tpl(bubble_select_stall_entry_w),
        .in_data_in_16_tpl(bubble_select_stall_entry_x),
        .in_data_in_17_tpl(bubble_select_stall_entry_y),
        .in_data_in_18_tpl(bubble_select_stall_entry_z),
        .in_data_in_19_tpl(bubble_select_stall_entry_aa),
        .in_data_in_20_tpl(bubble_select_stall_entry_bb),
        .in_data_in_21_tpl(bubble_select_stall_entry_cc),
        .in_data_in_22_tpl(bubble_select_stall_entry_dd),
        .in_data_in_23_tpl(bubble_select_stall_entry_ee),
        .in_data_in_24_tpl(bubble_select_stall_entry_ff),
        .in_data_in_25_tpl(bubble_select_stall_entry_gg),
        .in_data_in_26_tpl(bubble_select_stall_entry_b),
        .in_data_in_27_tpl(bubble_select_stall_entry_p),
        .in_data_in_28_tpl(bubble_select_stall_entry_q),
        .in_data_in_29_tpl(bubble_select_stall_entry_k),
        .in_data_in_30_tpl(bubble_select_stall_entry_r),
        .in_data_in_31_tpl(bubble_select_stall_entry_e),
        .in_data_in_32_tpl(bubble_select_stall_entry_j),
        .in_data_in_33_tpl(bubble_select_stall_entry_h),
        .in_data_in_34_tpl(bubble_select_stall_entry_o),
        .in_data_in_35_tpl(bubble_select_stall_entry_m),
        .in_data_in_36_tpl(bubble_select_stall_entry_d),
        .out_stall_out(conv2d1x1_B8_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv2d1x1_B8_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_21_tpl),
        .out_data_out_22_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_22_tpl),
        .out_data_out_23_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_23_tpl),
        .out_data_out_24_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_24_tpl),
        .out_data_out_25_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_25_tpl),
        .out_data_out_26_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_26_tpl),
        .out_data_out_27_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_27_tpl),
        .out_data_out_28_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_28_tpl),
        .out_data_out_29_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_29_tpl),
        .out_data_out_30_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_30_tpl),
        .out_data_out_31_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_31_tpl),
        .out_data_out_32_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_32_tpl),
        .out_data_out_33_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_33_tpl),
        .out_data_out_34_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_34_tpl),
        .out_data_out_35_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_35_tpl),
        .out_data_out_36_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_36_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_conv2d1x1_B8_merge_reg_aunroll_x(BITJOIN,108)
    assign bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q = {conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_36_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_35_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_34_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_33_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_32_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_31_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_30_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_29_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_28_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_27_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_26_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_25_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_24_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_23_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_22_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_21_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_20_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_19_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_18_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_17_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_16_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_15_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_14_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_13_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_12_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_11_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_10_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_9_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_8_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_7_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_6_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_5_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_4_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_3_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_2_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_1_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv2d1x1_B8_merge_reg_aunroll_x(BITSELECT,109)
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[33:33]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[34:34]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_f = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[35:35]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_g = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[68:36]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_h = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[100:69]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_i = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[132:101]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_j = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[164:133]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_k = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[165:165]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_l = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[197:166]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_m = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[229:198]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_n = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[261:230]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[293:262]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_p = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[325:294]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_q = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[357:326]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_r = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[389:358]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_s = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[421:390]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_t = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[453:422]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_u = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[485:454]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_v = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[517:486]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_w = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[549:518]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_x = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[581:550]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_y = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[613:582]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_z = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[645:614]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_aa = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[677:646]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_bb = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[741:678]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_cc = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[742:742]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_dd = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[743:743]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ee = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[775:744]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ff = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[776:776]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_gg = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[808:777]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_hh = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[840:809]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ii = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[872:841]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_jj = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[873:873]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_kk = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[874:874]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ll = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[906:875]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_conv2d1x1_B8_merge_reg_aunroll_x(STALLENABLE,141)
    // Valid signal propagation
    assign SE_out_conv2d1x1_B8_merge_reg_aunroll_x_V0 = SE_out_conv2d1x1_B8_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_conv2d1x1_B8_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_o_stall | ~ (SE_out_conv2d1x1_B8_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_conv2d1x1_B8_merge_reg_aunroll_x_wireValid = conv2d1x1_B8_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x(BITJOIN,115)
    assign bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q = {i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_43_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_42_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_41_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_40_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_39_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_38_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_37_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_36_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_35_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_34_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_33_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_32_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_31_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_30_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_29_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_28_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_18_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_17_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_16_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_15_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_14_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_13_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_12_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_11_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_10_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_9_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_8_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_7_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_6_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_5_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_3_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_2_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x(BITSELECT,116)
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[2:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[3:3]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[35:4]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[99:36]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[100:100]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[164:101]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[228:165]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[292:229]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[356:293]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[357:357]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[389:358]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[421:390]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[422:422]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[423:423]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[487:424]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[488:488]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_t = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[520:489]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_u = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[552:521]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_v = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[584:553]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_w = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[616:585]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_x = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[648:617]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_y = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[680:649]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_z = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[712:681]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_aa = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[744:713]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_bb = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[776:745]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_cc = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[808:777]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_dd = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[840:809]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_ee = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[872:841]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_ff = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[904:873]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_gg = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[936:905]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_hh = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[968:937]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_ii = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q[1000:969]);

    // join_for_coalesced_delay_1(BITJOIN,86)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_q, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_p, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_m, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_d, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_o, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_n, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_r};

    // bubble_join_i_llvm_fpga_mem_lm155_conv2d1x17(BITJOIN,101)
    assign bubble_join_i_llvm_fpga_mem_lm155_conv2d1x17_q = i_llvm_fpga_mem_lm155_conv2d1x17_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm155_conv2d1x17(BITSELECT,102)
    assign bubble_select_i_llvm_fpga_mem_lm155_conv2d1x17_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm155_conv2d1x17_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm153_conv2d1x16(BITJOIN,98)
    assign bubble_join_i_llvm_fpga_mem_lm153_conv2d1x16_q = i_llvm_fpga_mem_lm153_conv2d1x16_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm153_conv2d1x16(BITSELECT,99)
    assign bubble_select_i_llvm_fpga_mem_lm153_conv2d1x16_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm153_conv2d1x16_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm151_conv2d1x15(BITJOIN,95)
    assign bubble_join_i_llvm_fpga_mem_lm151_conv2d1x15_q = i_llvm_fpga_mem_lm151_conv2d1x15_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm151_conv2d1x15(BITSELECT,96)
    assign bubble_select_i_llvm_fpga_mem_lm151_conv2d1x15_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm151_conv2d1x15_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm148_conv2d1x13(BITJOIN,92)
    assign bubble_join_i_llvm_fpga_mem_lm148_conv2d1x13_q = i_llvm_fpga_mem_lm148_conv2d1x13_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm148_conv2d1x13(BITSELECT,93)
    assign bubble_select_i_llvm_fpga_mem_lm148_conv2d1x13_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm148_conv2d1x13_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x(BITJOIN,112)
    assign bubble_join_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_q = {i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_o_readdata_3_tpl, i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_o_readdata_2_tpl, i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_o_readdata_1_tpl, i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_o_readdata_0_tpl};

    // bubble_select_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x(BITSELECT,113)
    assign bubble_select_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_q[31:0]);
    assign bubble_select_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_c = $unsigned(bubble_join_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_q[63:32]);
    assign bubble_select_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_d = $unsigned(bubble_join_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_q[95:64]);
    assign bubble_select_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_e = $unsigned(bubble_join_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_q[127:96]);

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,155)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_0_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_0_fifo_fromReg0 <= SE_out_coalesced_delay_0_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_0_fifo_fromReg1 <= SE_out_coalesced_delay_0_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
    // Consuming
    assign SE_out_coalesced_delay_0_fifo_StallValid = SE_out_coalesced_delay_0_fifo_backStall & SE_out_coalesced_delay_0_fifo_wireValid;
    assign SE_out_coalesced_delay_0_fifo_toReg0 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_toReg1 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_or0 = SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_wireStall = ~ (SE_out_coalesced_delay_0_fifo_consumed1 & SE_out_coalesced_delay_0_fifo_or0);
    assign SE_out_coalesced_delay_0_fifo_backStall = SE_out_coalesced_delay_0_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg0);
    assign SE_out_coalesced_delay_0_fifo_V1 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_wireValid = coalesced_delay_0_fifo_valid_out;

    // SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x(STALLENABLE,143)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_V0 = SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_backStall = i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_and0 = i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_and1 = i_llvm_fpga_mem_lm155_conv2d1x17_out_o_valid & SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_and0;
    assign SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_and2 = i_llvm_fpga_mem_lm153_conv2d1x16_out_o_valid & SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_and1;
    assign SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_and3 = i_llvm_fpga_mem_lm151_conv2d1x15_out_o_valid & SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_and2;
    assign SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_and4 = i_llvm_fpga_mem_lm148_conv2d1x13_out_o_valid & SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_and3;
    assign SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_wireValid = SE_out_coalesced_delay_0_fifo_V0 & SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_and4;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,125)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,126)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[515:0]);

    // sel_for_coalesced_delay_0(BITSELECT,84)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[95:64]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[127:96]);
    assign sel_for_coalesced_delay_0_f = $unsigned(bubble_select_coalesced_delay_0_fifo_b[159:128]);
    assign sel_for_coalesced_delay_0_g = $unsigned(bubble_select_coalesced_delay_0_fifo_b[191:160]);
    assign sel_for_coalesced_delay_0_h = $unsigned(bubble_select_coalesced_delay_0_fifo_b[223:192]);
    assign sel_for_coalesced_delay_0_i = $unsigned(bubble_select_coalesced_delay_0_fifo_b[255:224]);
    assign sel_for_coalesced_delay_0_j = $unsigned(bubble_select_coalesced_delay_0_fifo_b[287:256]);
    assign sel_for_coalesced_delay_0_k = $unsigned(bubble_select_coalesced_delay_0_fifo_b[319:288]);
    assign sel_for_coalesced_delay_0_l = $unsigned(bubble_select_coalesced_delay_0_fifo_b[351:320]);
    assign sel_for_coalesced_delay_0_m = $unsigned(bubble_select_coalesced_delay_0_fifo_b[383:352]);
    assign sel_for_coalesced_delay_0_n = $unsigned(bubble_select_coalesced_delay_0_fifo_b[415:384]);
    assign sel_for_coalesced_delay_0_o = $unsigned(bubble_select_coalesced_delay_0_fifo_b[447:416]);
    assign sel_for_coalesced_delay_0_p = $unsigned(bubble_select_coalesced_delay_0_fifo_b[479:448]);
    assign sel_for_coalesced_delay_0_q = $unsigned(bubble_select_coalesced_delay_0_fifo_b[511:480]);
    assign sel_for_coalesced_delay_0_r = $unsigned(bubble_select_coalesced_delay_0_fifo_b[512:512]);
    assign sel_for_coalesced_delay_0_s = $unsigned(bubble_select_coalesced_delay_0_fifo_b[513:513]);
    assign sel_for_coalesced_delay_0_t = $unsigned(bubble_select_coalesced_delay_0_fifo_b[514:514]);
    assign sel_for_coalesced_delay_0_u = $unsigned(bubble_select_coalesced_delay_0_fifo_b[515:515]);

    // i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x(BLACKBOX,52)@138
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@146
    // out out_c1_exit_0_tpl@146
    // out out_c1_exit_1_tpl@146
    // out out_c1_exit_2_tpl@146
    // out out_c1_exit_3_tpl@146
    // out out_c1_exit_4_tpl@146
    // out out_c1_exit_5_tpl@146
    // out out_c1_exit_6_tpl@146
    // out out_c1_exit_7_tpl@146
    // out out_c1_exit_8_tpl@146
    // out out_c1_exit_9_tpl@146
    // out out_c1_exit_10_tpl@146
    // out out_c1_exit_11_tpl@146
    // out out_c1_exit_12_tpl@146
    // out out_c1_exit_13_tpl@146
    // out out_c1_exit_14_tpl@146
    // out out_c1_exit_15_tpl@146
    // out out_c1_exit_16_tpl@146
    // out out_c1_exit_17_tpl@146
    // out out_c1_exit_18_tpl@146
    // out out_c1_exit_19_tpl@146
    // out out_c1_exit_20_tpl@146
    // out out_c1_exit_21_tpl@146
    // out out_c1_exit_22_tpl@146
    // out out_c1_exit_23_tpl@146
    // out out_c1_exit_24_tpl@146
    // out out_c1_exit_25_tpl@146
    // out out_c1_exit_26_tpl@146
    // out out_c1_exit_27_tpl@146
    // out out_c1_exit_28_tpl@146
    // out out_c1_exit_29_tpl@146
    // out out_c1_exit_30_tpl@146
    // out out_c1_exit_31_tpl@146
    // out out_c1_exit_32_tpl@146
    conv2d1x1_i_sfc_s_c1_in_for_body14_s_c1_enter_conv2d1x19 thei_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x (
        .in_c0_exe1439(sel_for_coalesced_delay_0_r),
        .in_c0_exe18456(sel_for_coalesced_delay_0_s),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_V0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_c1_eni25_0_tpl(GND_q),
        .in_c1_eni25_0_16_tpl(bubble_select_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_b),
        .in_c1_eni25_1_tpl(sel_for_coalesced_delay_0_m),
        .in_c1_eni25_1_16_tpl(bubble_select_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_c),
        .in_c1_eni25_2_tpl(sel_for_coalesced_delay_0_s),
        .in_c1_eni25_2_16_tpl(bubble_select_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_d),
        .in_c1_eni25_3_tpl(sel_for_coalesced_delay_0_l),
        .in_c1_eni25_3_16_tpl(bubble_select_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_e),
        .in_c1_eni25_4_tpl(sel_for_coalesced_delay_0_b),
        .in_c1_eni25_5_tpl(sel_for_coalesced_delay_0_k),
        .in_c1_eni25_6_tpl(sel_for_coalesced_delay_0_j),
        .in_c1_eni25_7_tpl(sel_for_coalesced_delay_0_i),
        .in_c1_eni25_8_tpl(sel_for_coalesced_delay_0_h),
        .in_c1_eni25_9_tpl(sel_for_coalesced_delay_0_g),
        .in_c1_eni25_10_tpl(sel_for_coalesced_delay_0_f),
        .in_c1_eni25_11_tpl(sel_for_coalesced_delay_0_e),
        .in_c1_eni25_12_tpl(sel_for_coalesced_delay_0_d),
        .in_c1_eni25_13_tpl(sel_for_coalesced_delay_0_c),
        .in_c1_eni25_14_tpl(sel_for_coalesced_delay_0_r),
        .in_c1_eni25_15_tpl(sel_for_coalesced_delay_0_t),
        .in_c1_eni25_17_tpl(sel_for_coalesced_delay_0_q),
        .in_c1_eni25_18_tpl(bubble_select_i_llvm_fpga_mem_lm148_conv2d1x13_b),
        .in_c1_eni25_19_tpl(sel_for_coalesced_delay_0_p),
        .in_c1_eni25_20_tpl(bubble_select_i_llvm_fpga_mem_lm151_conv2d1x15_b),
        .in_c1_eni25_21_tpl(sel_for_coalesced_delay_0_o),
        .in_c1_eni25_22_tpl(bubble_select_i_llvm_fpga_mem_lm153_conv2d1x16_b),
        .in_c1_eni25_23_tpl(sel_for_coalesced_delay_0_n),
        .in_c1_eni25_24_tpl(bubble_select_i_llvm_fpga_mem_lm155_conv2d1x17_b),
        .in_c1_eni25_25_tpl(sel_for_coalesced_delay_0_u),
        .out_o_stall(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_1_tpl),
        .out_c1_exit_2_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_2_tpl),
        .out_c1_exit_3_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_3_tpl),
        .out_c1_exit_4_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_4_tpl),
        .out_c1_exit_5_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_5_tpl),
        .out_c1_exit_6_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_6_tpl),
        .out_c1_exit_7_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_7_tpl),
        .out_c1_exit_8_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_8_tpl),
        .out_c1_exit_9_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_9_tpl),
        .out_c1_exit_10_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_10_tpl),
        .out_c1_exit_11_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_11_tpl),
        .out_c1_exit_12_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_12_tpl),
        .out_c1_exit_13_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_13_tpl),
        .out_c1_exit_14_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_14_tpl),
        .out_c1_exit_15_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_15_tpl),
        .out_c1_exit_16_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_16_tpl),
        .out_c1_exit_17_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_17_tpl),
        .out_c1_exit_18_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_18_tpl),
        .out_c1_exit_19_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_19_tpl),
        .out_c1_exit_20_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_20_tpl),
        .out_c1_exit_21_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_21_tpl),
        .out_c1_exit_22_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_22_tpl),
        .out_c1_exit_23_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_23_tpl),
        .out_c1_exit_24_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_24_tpl),
        .out_c1_exit_25_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_25_tpl),
        .out_c1_exit_26_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_26_tpl),
        .out_c1_exit_27_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_27_tpl),
        .out_c1_exit_28_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_28_tpl),
        .out_c1_exit_29_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_29_tpl),
        .out_c1_exit_30_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_30_tpl),
        .out_c1_exit_31_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_31_tpl),
        .out_c1_exit_32_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_32_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo(STALLFIFO,88)
    assign redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_valid_in = SE_out_coalesced_delay_0_fifo_V1;
    assign redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_data_in = sel_for_coalesced_delay_0_t;
    assign redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_valid_in_bitsignaltemp = redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_valid_in[0];
    assign redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_stall_in_bitsignaltemp = redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_stall_in[0];
    assign redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_valid_out[0] = redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_valid_out_bitsignaltemp;
    assign redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_stall_out[0] = redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(9),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo (
        .valid_in(redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_valid_in_bitsignaltemp),
        .stall_in(redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_stall_in_bitsignaltemp),
        .data_in(sel_for_coalesced_delay_0_t),
        .valid_out(redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_valid_out_bitsignaltemp),
        .stall_out(redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_stall_out_bitsignaltemp),
        .data_out(redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,157)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_and1 = redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_valid_out & SE_out_coalesced_delay_1_fifo_and0;
    assign SE_out_coalesced_delay_1_fifo_wireValid = i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_o_valid & SE_out_coalesced_delay_1_fifo_and1;

    // coalesced_delay_1_fifo(STALLFIFO,90)
    assign coalesced_delay_1_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_V6;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(138),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(164),
        .IMPL("ram")
    ) thecoalesced_delay_1_fifo (
        .valid_in(coalesced_delay_1_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_1_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_1_q),
        .valid_out(coalesced_delay_1_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_1_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_1_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,83)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_s, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_t, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_u, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_v, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_w, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_x, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_y, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_aa, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_bb, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_cc, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_dd, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_ee, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_ff, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_gg, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_hh, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_ii, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_z};

    // coalesced_delay_0_fifo(STALLFIFO,89)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_V5;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(130),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(516),
        .IMPL("ram")
    ) thecoalesced_delay_0_fifo (
        .valid_in(coalesced_delay_0_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_0_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_0_q),
        .valid_out(coalesced_delay_0_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_0_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_0_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x(BLACKBOX,50)@9
    // in in_i_stall@20000000
    // out out_lm150_conv2d1x1_avm_address@20000000
    // out out_lm150_conv2d1x1_avm_burstcount@20000000
    // out out_lm150_conv2d1x1_avm_byteenable@20000000
    // out out_lm150_conv2d1x1_avm_enable@20000000
    // out out_lm150_conv2d1x1_avm_read@20000000
    // out out_lm150_conv2d1x1_avm_write@20000000
    // out out_lm150_conv2d1x1_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@138
    // out out_o_readdata_0_tpl@138
    // out out_o_readdata_1_tpl@138
    // out out_o_readdata_2_tpl@138
    // out out_o_readdata_3_tpl@138
    conv2d1x1_i_llvm_fpga_mem_lm150_0 thei_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_i),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_h),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_V4),
        .in_lm150_conv2d1x1_avm_readdata(in_lm150_conv2d1x1_avm_readdata),
        .in_lm150_conv2d1x1_avm_readdatavalid(in_lm150_conv2d1x1_avm_readdatavalid),
        .in_lm150_conv2d1x1_avm_waitrequest(in_lm150_conv2d1x1_avm_waitrequest),
        .in_lm150_conv2d1x1_avm_writeack(in_lm150_conv2d1x1_avm_writeack),
        .out_lm150_conv2d1x1_avm_address(i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_lm150_conv2d1x1_avm_address),
        .out_lm150_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_lm150_conv2d1x1_avm_burstcount),
        .out_lm150_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_lm150_conv2d1x1_avm_byteenable),
        .out_lm150_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_lm150_conv2d1x1_avm_enable),
        .out_lm150_conv2d1x1_avm_read(i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_lm150_conv2d1x1_avm_read),
        .out_lm150_conv2d1x1_avm_write(i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_lm150_conv2d1x1_avm_write),
        .out_lm150_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_lm150_conv2d1x1_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_o_valid),
        .out_o_readdata_0_tpl(i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_o_readdata_0_tpl),
        .out_o_readdata_1_tpl(i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_o_readdata_1_tpl),
        .out_o_readdata_2_tpl(i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_o_readdata_2_tpl),
        .out_o_readdata_3_tpl(i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_o_readdata_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm155_conv2d1x17(BLACKBOX,10)@9
    // in in_i_stall@20000000
    // out out_lm155_conv2d1x1_avm_address@20000000
    // out out_lm155_conv2d1x1_avm_burstcount@20000000
    // out out_lm155_conv2d1x1_avm_byteenable@20000000
    // out out_lm155_conv2d1x1_avm_enable@20000000
    // out out_lm155_conv2d1x1_avm_read@20000000
    // out out_lm155_conv2d1x1_avm_write@20000000
    // out out_lm155_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@138
    // out out_o_stall@20000000
    // out out_o_valid@138
    conv2d1x1_i_llvm_fpga_mem_lm155_0 thei_llvm_fpga_mem_lm155_conv2d1x17 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_l),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_h),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_V3),
        .in_lm155_conv2d1x1_avm_readdata(in_lm155_conv2d1x1_avm_readdata),
        .in_lm155_conv2d1x1_avm_readdatavalid(in_lm155_conv2d1x1_avm_readdatavalid),
        .in_lm155_conv2d1x1_avm_waitrequest(in_lm155_conv2d1x1_avm_waitrequest),
        .in_lm155_conv2d1x1_avm_writeack(in_lm155_conv2d1x1_avm_writeack),
        .out_lm155_conv2d1x1_avm_address(i_llvm_fpga_mem_lm155_conv2d1x17_out_lm155_conv2d1x1_avm_address),
        .out_lm155_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm155_conv2d1x17_out_lm155_conv2d1x1_avm_burstcount),
        .out_lm155_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm155_conv2d1x17_out_lm155_conv2d1x1_avm_byteenable),
        .out_lm155_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm155_conv2d1x17_out_lm155_conv2d1x1_avm_enable),
        .out_lm155_conv2d1x1_avm_read(i_llvm_fpga_mem_lm155_conv2d1x17_out_lm155_conv2d1x1_avm_read),
        .out_lm155_conv2d1x1_avm_write(i_llvm_fpga_mem_lm155_conv2d1x17_out_lm155_conv2d1x1_avm_write),
        .out_lm155_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm155_conv2d1x17_out_lm155_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm155_conv2d1x17_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm155_conv2d1x17_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm155_conv2d1x17_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm153_conv2d1x16(BLACKBOX,9)@9
    // in in_i_stall@20000000
    // out out_lm153_conv2d1x1_avm_address@20000000
    // out out_lm153_conv2d1x1_avm_burstcount@20000000
    // out out_lm153_conv2d1x1_avm_byteenable@20000000
    // out out_lm153_conv2d1x1_avm_enable@20000000
    // out out_lm153_conv2d1x1_avm_read@20000000
    // out out_lm153_conv2d1x1_avm_write@20000000
    // out out_lm153_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@138
    // out out_o_stall@20000000
    // out out_o_valid@138
    conv2d1x1_i_llvm_fpga_mem_lm153_0 thei_llvm_fpga_mem_lm153_conv2d1x16 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_k),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_h),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_V2),
        .in_lm153_conv2d1x1_avm_readdata(in_lm153_conv2d1x1_avm_readdata),
        .in_lm153_conv2d1x1_avm_readdatavalid(in_lm153_conv2d1x1_avm_readdatavalid),
        .in_lm153_conv2d1x1_avm_waitrequest(in_lm153_conv2d1x1_avm_waitrequest),
        .in_lm153_conv2d1x1_avm_writeack(in_lm153_conv2d1x1_avm_writeack),
        .out_lm153_conv2d1x1_avm_address(i_llvm_fpga_mem_lm153_conv2d1x16_out_lm153_conv2d1x1_avm_address),
        .out_lm153_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm153_conv2d1x16_out_lm153_conv2d1x1_avm_burstcount),
        .out_lm153_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm153_conv2d1x16_out_lm153_conv2d1x1_avm_byteenable),
        .out_lm153_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm153_conv2d1x16_out_lm153_conv2d1x1_avm_enable),
        .out_lm153_conv2d1x1_avm_read(i_llvm_fpga_mem_lm153_conv2d1x16_out_lm153_conv2d1x1_avm_read),
        .out_lm153_conv2d1x1_avm_write(i_llvm_fpga_mem_lm153_conv2d1x16_out_lm153_conv2d1x1_avm_write),
        .out_lm153_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm153_conv2d1x16_out_lm153_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm153_conv2d1x16_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm153_conv2d1x16_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm153_conv2d1x16_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm151_conv2d1x15(BLACKBOX,8)@9
    // in in_i_stall@20000000
    // out out_lm151_conv2d1x1_avm_address@20000000
    // out out_lm151_conv2d1x1_avm_burstcount@20000000
    // out out_lm151_conv2d1x1_avm_byteenable@20000000
    // out out_lm151_conv2d1x1_avm_enable@20000000
    // out out_lm151_conv2d1x1_avm_read@20000000
    // out out_lm151_conv2d1x1_avm_write@20000000
    // out out_lm151_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@138
    // out out_o_stall@20000000
    // out out_o_valid@138
    conv2d1x1_i_llvm_fpga_mem_lm151_0 thei_llvm_fpga_mem_lm151_conv2d1x15 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_j),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_h),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_V1),
        .in_lm151_conv2d1x1_avm_readdata(in_lm151_conv2d1x1_avm_readdata),
        .in_lm151_conv2d1x1_avm_readdatavalid(in_lm151_conv2d1x1_avm_readdatavalid),
        .in_lm151_conv2d1x1_avm_waitrequest(in_lm151_conv2d1x1_avm_waitrequest),
        .in_lm151_conv2d1x1_avm_writeack(in_lm151_conv2d1x1_avm_writeack),
        .out_lm151_conv2d1x1_avm_address(i_llvm_fpga_mem_lm151_conv2d1x15_out_lm151_conv2d1x1_avm_address),
        .out_lm151_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm151_conv2d1x15_out_lm151_conv2d1x1_avm_burstcount),
        .out_lm151_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm151_conv2d1x15_out_lm151_conv2d1x1_avm_byteenable),
        .out_lm151_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm151_conv2d1x15_out_lm151_conv2d1x1_avm_enable),
        .out_lm151_conv2d1x1_avm_read(i_llvm_fpga_mem_lm151_conv2d1x15_out_lm151_conv2d1x1_avm_read),
        .out_lm151_conv2d1x1_avm_write(i_llvm_fpga_mem_lm151_conv2d1x15_out_lm151_conv2d1x1_avm_write),
        .out_lm151_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm151_conv2d1x15_out_lm151_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm151_conv2d1x15_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm151_conv2d1x15_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm151_conv2d1x15_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm148_conv2d1x13(BLACKBOX,7)@9
    // in in_i_stall@20000000
    // out out_lm148_conv2d1x1_avm_address@20000000
    // out out_lm148_conv2d1x1_avm_burstcount@20000000
    // out out_lm148_conv2d1x1_avm_byteenable@20000000
    // out out_lm148_conv2d1x1_avm_enable@20000000
    // out out_lm148_conv2d1x1_avm_read@20000000
    // out out_lm148_conv2d1x1_avm_write@20000000
    // out out_lm148_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@138
    // out out_o_stall@20000000
    // out out_o_valid@138
    conv2d1x1_i_llvm_fpga_mem_lm148_0 thei_llvm_fpga_mem_lm148_conv2d1x13 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_g),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_h),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_V0),
        .in_lm148_conv2d1x1_avm_readdata(in_lm148_conv2d1x1_avm_readdata),
        .in_lm148_conv2d1x1_avm_readdatavalid(in_lm148_conv2d1x1_avm_readdatavalid),
        .in_lm148_conv2d1x1_avm_waitrequest(in_lm148_conv2d1x1_avm_waitrequest),
        .in_lm148_conv2d1x1_avm_writeack(in_lm148_conv2d1x1_avm_writeack),
        .out_lm148_conv2d1x1_avm_address(i_llvm_fpga_mem_lm148_conv2d1x13_out_lm148_conv2d1x1_avm_address),
        .out_lm148_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm148_conv2d1x13_out_lm148_conv2d1x1_avm_burstcount),
        .out_lm148_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm148_conv2d1x13_out_lm148_conv2d1x1_avm_byteenable),
        .out_lm148_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm148_conv2d1x13_out_lm148_conv2d1x1_avm_enable),
        .out_lm148_conv2d1x1_avm_read(i_llvm_fpga_mem_lm148_conv2d1x13_out_lm148_conv2d1x1_avm_read),
        .out_lm148_conv2d1x1_avm_write(i_llvm_fpga_mem_lm148_conv2d1x13_out_lm148_conv2d1x1_avm_write),
        .out_lm148_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm148_conv2d1x13_out_lm148_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm148_conv2d1x13_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm148_conv2d1x13_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm148_conv2d1x13_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x(STALLENABLE,145)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg3 <= '0;
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg4 <= '0;
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg5 <= '0;
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg6 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_toReg3;
            // Successor 4
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg4 <= SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_toReg4;
            // Successor 5
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg5 <= SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_toReg5;
            // Successor 6
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg6 <= SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_toReg6;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_lm148_conv2d1x13_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed1 = (~ (i_llvm_fpga_mem_lm151_conv2d1x15_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed2 = (~ (i_llvm_fpga_mem_lm153_conv2d1x16_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed3 = (~ (i_llvm_fpga_mem_lm155_conv2d1x17_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg3;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed4 = (~ (i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg4;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed5 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg5;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed6 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg6;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed3;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_toReg4 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed4;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_toReg5 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed5;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_toReg6 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed6;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_or3 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_or2;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_or4 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed4 & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_or3;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_or5 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed5 & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_or4;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_consumed6 & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_or5);
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg3);
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_V4 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg4);
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_V5 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg5);
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_V6 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_fromReg6);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_wireValid = i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x(BLACKBOX,51)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit438_0_tpl@9
    // out out_c0_exit438_1_tpl@9
    // out out_c0_exit438_2_tpl@9
    // out out_c0_exit438_3_tpl@9
    // out out_c0_exit438_4_tpl@9
    // out out_c0_exit438_5_tpl@9
    // out out_c0_exit438_6_tpl@9
    // out out_c0_exit438_7_tpl@9
    // out out_c0_exit438_8_tpl@9
    // out out_c0_exit438_9_tpl@9
    // out out_c0_exit438_10_tpl@9
    // out out_c0_exit438_11_tpl@9
    // out out_c0_exit438_12_tpl@9
    // out out_c0_exit438_13_tpl@9
    // out out_c0_exit438_14_tpl@9
    // out out_c0_exit438_15_tpl@9
    // out out_c0_exit438_16_tpl@9
    // out out_c0_exit438_17_tpl@9
    // out out_c0_exit438_18_tpl@9
    // out out_c0_exit438_19_tpl@9
    // out out_c0_exit438_20_tpl@9
    // out out_c0_exit438_21_tpl@9
    // out out_c0_exit438_22_tpl@9
    // out out_c0_exit438_23_tpl@9
    // out out_c0_exit438_24_tpl@9
    // out out_c0_exit438_25_tpl@9
    // out out_c0_exit438_26_tpl@9
    // out out_c0_exit438_27_tpl@9
    // out out_c0_exit438_28_tpl@9
    // out out_c0_exit438_29_tpl@9
    // out out_c0_exit438_30_tpl@9
    // out out_c0_exit438_31_tpl@9
    // out out_c0_exit438_32_tpl@9
    // out out_c0_exit438_33_tpl@9
    // out out_c0_exit438_34_tpl@9
    // out out_c0_exit438_35_tpl@9
    // out out_c0_exit438_36_tpl@9
    // out out_c0_exit438_37_tpl@9
    // out out_c0_exit438_38_tpl@9
    // out out_c0_exit438_39_tpl@9
    // out out_c0_exit438_40_tpl@9
    // out out_c0_exit438_41_tpl@9
    // out out_c0_exit438_42_tpl@9
    // out out_c0_exit438_43_tpl@9
    conv2d1x1_i_sfc_s_c0_in_for_body14_s_c0_enter39465_conv2d1x11 thei_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x (
        .in_filter_weight(in_filter_weight),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_backStall),
        .in_i_valid(SE_out_conv2d1x1_B8_merge_reg_aunroll_x_V0),
        .in_input_im(in_input_im),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni37_0_tpl(GND_q),
        .in_c0_eni37_1_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_b),
        .in_c0_eni37_2_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ff),
        .in_c0_eni37_3_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_cc),
        .in_c0_eni37_4_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ee),
        .in_c0_eni37_5_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ll),
        .in_c0_eni37_6_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_hh),
        .in_c0_eni37_7_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_dd),
        .in_c0_eni37_8_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_gg),
        .in_c0_eni37_9_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ii),
        .in_c0_eni37_10_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_jj),
        .in_c0_eni37_11_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_kk),
        .in_c0_eni37_12_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_bb),
        .in_c0_eni37_13_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_c),
        .in_c0_eni37_14_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_d),
        .in_c0_eni37_15_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_e),
        .in_c0_eni37_16_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_f),
        .in_c0_eni37_17_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_g),
        .in_c0_eni37_18_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_h),
        .in_c0_eni37_19_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_i),
        .in_c0_eni37_20_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_j),
        .in_c0_eni37_21_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_k),
        .in_c0_eni37_22_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_l),
        .in_c0_eni37_23_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_m),
        .in_c0_eni37_24_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_n),
        .in_c0_eni37_25_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o),
        .in_c0_eni37_26_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_p),
        .in_c0_eni37_27_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_q),
        .in_c0_eni37_28_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_r),
        .in_c0_eni37_29_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_s),
        .in_c0_eni37_30_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_t),
        .in_c0_eni37_31_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_u),
        .in_c0_eni37_32_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_v),
        .in_c0_eni37_33_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_w),
        .in_c0_eni37_34_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_x),
        .in_c0_eni37_35_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_y),
        .in_c0_eni37_36_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_z),
        .in_c0_eni37_37_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_aa),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit438_0_tpl(),
        .out_c0_exit438_1_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_1_tpl),
        .out_c0_exit438_2_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_2_tpl),
        .out_c0_exit438_3_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_3_tpl),
        .out_c0_exit438_4_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl),
        .out_c0_exit438_5_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_5_tpl),
        .out_c0_exit438_6_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_6_tpl),
        .out_c0_exit438_7_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_7_tpl),
        .out_c0_exit438_8_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_8_tpl),
        .out_c0_exit438_9_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_9_tpl),
        .out_c0_exit438_10_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_10_tpl),
        .out_c0_exit438_11_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_11_tpl),
        .out_c0_exit438_12_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_12_tpl),
        .out_c0_exit438_13_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_13_tpl),
        .out_c0_exit438_14_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_14_tpl),
        .out_c0_exit438_15_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_15_tpl),
        .out_c0_exit438_16_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_16_tpl),
        .out_c0_exit438_17_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_17_tpl),
        .out_c0_exit438_18_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_18_tpl),
        .out_c0_exit438_19_tpl(),
        .out_c0_exit438_20_tpl(),
        .out_c0_exit438_21_tpl(),
        .out_c0_exit438_22_tpl(),
        .out_c0_exit438_23_tpl(),
        .out_c0_exit438_24_tpl(),
        .out_c0_exit438_25_tpl(),
        .out_c0_exit438_26_tpl(),
        .out_c0_exit438_27_tpl(),
        .out_c0_exit438_28_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_28_tpl),
        .out_c0_exit438_29_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_29_tpl),
        .out_c0_exit438_30_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_30_tpl),
        .out_c0_exit438_31_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_31_tpl),
        .out_c0_exit438_32_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_32_tpl),
        .out_c0_exit438_33_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_33_tpl),
        .out_c0_exit438_34_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_34_tpl),
        .out_c0_exit438_35_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_35_tpl),
        .out_c0_exit438_36_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_36_tpl),
        .out_c0_exit438_37_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_37_tpl),
        .out_c0_exit438_38_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_38_tpl),
        .out_c0_exit438_39_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_39_tpl),
        .out_c0_exit438_40_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_40_tpl),
        .out_c0_exit438_41_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_41_tpl),
        .out_c0_exit438_42_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_42_tpl),
        .out_c0_exit438_43_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_43_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out = i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out = i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,28)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,37)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,41)
    assign out_lm148_conv2d1x1_avm_address = i_llvm_fpga_mem_lm148_conv2d1x13_out_lm148_conv2d1x1_avm_address;
    assign out_lm148_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm148_conv2d1x13_out_lm148_conv2d1x1_avm_enable;
    assign out_lm148_conv2d1x1_avm_read = i_llvm_fpga_mem_lm148_conv2d1x13_out_lm148_conv2d1x1_avm_read;
    assign out_lm148_conv2d1x1_avm_write = i_llvm_fpga_mem_lm148_conv2d1x13_out_lm148_conv2d1x1_avm_write;
    assign out_lm148_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm148_conv2d1x13_out_lm148_conv2d1x1_avm_writedata;
    assign out_lm148_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm148_conv2d1x13_out_lm148_conv2d1x1_avm_byteenable;
    assign out_lm148_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm148_conv2d1x13_out_lm148_conv2d1x1_avm_burstcount;

    // bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x(BITJOIN,118)
    assign bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q = {i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_32_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_31_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_30_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_29_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_28_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_27_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_26_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_25_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_24_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_23_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_22_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_21_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_20_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_19_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_18_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_17_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_16_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_15_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_14_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_13_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_12_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_11_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_10_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_9_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_8_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_7_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_6_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_5_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_4_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_3_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_2_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_1_tpl};

    // bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x(BITSELECT,119)
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_c = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[63:32]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_d = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[95:64]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_e = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[127:96]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_f = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[159:128]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_g = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[191:160]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_h = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[223:192]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_i = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[255:224]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_j = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[287:256]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_k = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[319:288]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_l = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[351:320]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_m = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[383:352]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_n = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[415:384]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_o = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[447:416]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_p = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[479:448]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[511:480]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_r = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[543:512]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_s = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[575:544]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_t = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[607:576]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_u = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[639:608]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_v = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[671:640]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_w = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[703:672]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_x = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[735:704]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_y = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[767:736]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_z = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[799:768]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_aa = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[831:800]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_bb = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[863:832]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_cc = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[895:864]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_dd = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[927:896]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_ee = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[959:928]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_ff = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[991:960]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_gg = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[1023:992]);

    // bubble_join_redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo(BITJOIN,122)
    assign bubble_join_redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_q = redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_data_out;

    // bubble_select_redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo(BITSELECT,123)
    assign bubble_select_redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_b = $unsigned(bubble_join_redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_q[0:0]);

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,128)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,129)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[163:0]);

    // sel_for_coalesced_delay_1(BITSELECT,87)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[95:64]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[127:96]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[159:128]);
    assign sel_for_coalesced_delay_1_f = $unsigned(bubble_select_coalesced_delay_1_fifo_b[160:160]);
    assign sel_for_coalesced_delay_1_g = $unsigned(bubble_select_coalesced_delay_1_fifo_b[161:161]);
    assign sel_for_coalesced_delay_1_h = $unsigned(bubble_select_coalesced_delay_1_fifo_b[162:162]);
    assign sel_for_coalesced_delay_1_i = $unsigned(bubble_select_coalesced_delay_1_fifo_b[163:163]);

    // dupName_0_sync_out_x(GPOUT,42)@146
    assign out_c0_exe12450 = sel_for_coalesced_delay_1_g;
    assign out_c0_exe13451 = sel_for_coalesced_delay_1_d;
    assign out_c0_exe14452 = sel_for_coalesced_delay_1_e;
    assign out_c0_exe15453 = sel_for_coalesced_delay_1_h;
    assign out_c0_exe16454 = sel_for_coalesced_delay_1_i;
    assign out_c0_exe17455 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe3441 = sel_for_coalesced_delay_1_f;
    assign out_c0_exe4442 = bubble_select_redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter39465_conv2d1x11_aunroll_x_out_c0_exit438_4_tpl_137_fifo_b;
    assign out_c0_exe5443 = sel_for_coalesced_delay_1_c;
    assign out_c1_exe1 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_b;
    assign out_c1_exe10 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_k;
    assign out_c1_exe11 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_l;
    assign out_c1_exe12 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_m;
    assign out_c1_exe13 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_n;
    assign out_c1_exe14 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_o;
    assign out_c1_exe15 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_p;
    assign out_c1_exe16 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q;
    assign out_c1_exe17 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_r;
    assign out_c1_exe18 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_s;
    assign out_c1_exe19 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_t;
    assign out_c1_exe2 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_c;
    assign out_c1_exe20 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_u;
    assign out_c1_exe21 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_v;
    assign out_c1_exe22 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_w;
    assign out_c1_exe23 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_x;
    assign out_c1_exe24 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_y;
    assign out_c1_exe25 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_z;
    assign out_c1_exe26 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_aa;
    assign out_c1_exe27 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_bb;
    assign out_c1_exe28 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_cc;
    assign out_c1_exe29 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_dd;
    assign out_c1_exe3 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_d;
    assign out_c1_exe30 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_ee;
    assign out_c1_exe31 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_ff;
    assign out_c1_exe32 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_gg;
    assign out_c1_exe4 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_e;
    assign out_c1_exe5 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_f;
    assign out_c1_exe6 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_g;
    assign out_c1_exe7 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_h;
    assign out_c1_exe8 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_i;
    assign out_c1_exe9 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_j;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,44)
    assign out_lm150_conv2d1x1_avm_address = i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_lm150_conv2d1x1_avm_address;
    assign out_lm150_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_lm150_conv2d1x1_avm_enable;
    assign out_lm150_conv2d1x1_avm_read = i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_lm150_conv2d1x1_avm_read;
    assign out_lm150_conv2d1x1_avm_write = i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_lm150_conv2d1x1_avm_write;
    assign out_lm150_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_lm150_conv2d1x1_avm_writedata;
    assign out_lm150_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_lm150_conv2d1x1_avm_byteenable;
    assign out_lm150_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm150_conv2d1x14_vunroll_x_out_lm150_conv2d1x1_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,46)
    assign out_lm151_conv2d1x1_avm_address = i_llvm_fpga_mem_lm151_conv2d1x15_out_lm151_conv2d1x1_avm_address;
    assign out_lm151_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm151_conv2d1x15_out_lm151_conv2d1x1_avm_enable;
    assign out_lm151_conv2d1x1_avm_read = i_llvm_fpga_mem_lm151_conv2d1x15_out_lm151_conv2d1x1_avm_read;
    assign out_lm151_conv2d1x1_avm_write = i_llvm_fpga_mem_lm151_conv2d1x15_out_lm151_conv2d1x1_avm_write;
    assign out_lm151_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm151_conv2d1x15_out_lm151_conv2d1x1_avm_writedata;
    assign out_lm151_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm151_conv2d1x15_out_lm151_conv2d1x1_avm_byteenable;
    assign out_lm151_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm151_conv2d1x15_out_lm151_conv2d1x1_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,48)
    assign out_lm153_conv2d1x1_avm_address = i_llvm_fpga_mem_lm153_conv2d1x16_out_lm153_conv2d1x1_avm_address;
    assign out_lm153_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm153_conv2d1x16_out_lm153_conv2d1x1_avm_enable;
    assign out_lm153_conv2d1x1_avm_read = i_llvm_fpga_mem_lm153_conv2d1x16_out_lm153_conv2d1x1_avm_read;
    assign out_lm153_conv2d1x1_avm_write = i_llvm_fpga_mem_lm153_conv2d1x16_out_lm153_conv2d1x1_avm_write;
    assign out_lm153_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm153_conv2d1x16_out_lm153_conv2d1x1_avm_writedata;
    assign out_lm153_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm153_conv2d1x16_out_lm153_conv2d1x1_avm_byteenable;
    assign out_lm153_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm153_conv2d1x16_out_lm153_conv2d1x1_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,49)
    assign out_lm155_conv2d1x1_avm_address = i_llvm_fpga_mem_lm155_conv2d1x17_out_lm155_conv2d1x1_avm_address;
    assign out_lm155_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm155_conv2d1x17_out_lm155_conv2d1x1_avm_enable;
    assign out_lm155_conv2d1x1_avm_read = i_llvm_fpga_mem_lm155_conv2d1x17_out_lm155_conv2d1x1_avm_read;
    assign out_lm155_conv2d1x1_avm_write = i_llvm_fpga_mem_lm155_conv2d1x17_out_lm155_conv2d1x1_avm_write;
    assign out_lm155_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm155_conv2d1x17_out_lm155_conv2d1x1_avm_writedata;
    assign out_lm155_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm155_conv2d1x17_out_lm155_conv2d1x1_avm_byteenable;
    assign out_lm155_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm155_conv2d1x17_out_lm155_conv2d1x1_avm_burstcount;

endmodule
