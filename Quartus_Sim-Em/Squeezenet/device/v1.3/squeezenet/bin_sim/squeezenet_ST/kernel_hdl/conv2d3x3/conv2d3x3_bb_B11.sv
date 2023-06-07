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

// SystemVerilog created from conv2d3x3_bb_B11
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B11 (
    input wire [31:0] in_acl_6417_0,
    input wire [31:0] in_acl_6417_1,
    input wire [31:0] in_add111_pop49425_0,
    input wire [31:0] in_add111_pop49425_1,
    input wire [31:0] in_add24407_0,
    input wire [31:0] in_add24407_1,
    input wire [31:0] in_add244_0,
    input wire [31:0] in_add244_1,
    input wire [31:0] in_add35_1398_0,
    input wire [31:0] in_add35_1398_1,
    input wire [0:0] in_cmp26121_pop51409_0,
    input wire [0:0] in_cmp26121_pop51409_1,
    input wire [0:0] in_cmp26262_0,
    input wire [0:0] in_cmp26262_1,
    input wire [0:0] in_cmp26_1136_pop54431_0,
    input wire [0:0] in_cmp26_1136_pop54431_1,
    input wire [0:0] in_cmp26_1289_0,
    input wire [0:0] in_cmp26_1289_1,
    input wire [0:0] in_cmp26_2151_pop57437_0,
    input wire [0:0] in_cmp26_2151_pop57437_1,
    input wire [0:0] in_cmp26_2316_0,
    input wire [0:0] in_cmp26_2316_1,
    input wire [0:0] in_cmp27126_pop52411_0,
    input wire [0:0] in_cmp27126_pop52411_1,
    input wire [0:0] in_cmp27271_0,
    input wire [0:0] in_cmp27271_1,
    input wire [0:0] in_cmp27_1141_pop55433_0,
    input wire [0:0] in_cmp27_1141_pop55433_1,
    input wire [0:0] in_cmp27_1298_0,
    input wire [0:0] in_cmp27_1298_1,
    input wire [0:0] in_cmp27_2156_pop58439_0,
    input wire [0:0] in_cmp27_2156_pop58439_1,
    input wire [0:0] in_cmp27_2325_0,
    input wire [0:0] in_cmp27_2325_1,
    input wire [63:0] in_filter_bias,
    input wire [63:0] in_filter_weight_addr_067_replace_phi201_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi201_1,
    input wire [63:0] in_filter_weight_addr_067_replace_phi85_pop19343_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi85_pop19343_1,
    input wire [63:0] in_filter_weight_addr_067_replace_phi88_pop45415_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi88_pop45415_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked40_0,
    input wire [0:0] in_forked40_1,
    input wire [31:0] in_inc50184_pop68447_0,
    input wire [31:0] in_inc50184_pop68447_1,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [31:0] in_j_061_pop24176_pop63403_0,
    input wire [31:0] in_j_061_pop24176_pop63403_1,
    input wire [511:0] in_lm13_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm13_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_lm13_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm13_conv2d3x3_avm_writeack,
    input wire [511:0] in_lm15_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm15_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_lm15_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm15_conv2d3x3_avm_writeack,
    input wire [31:0] in_lm25100_pop47421_0,
    input wire [31:0] in_lm25100_pop47421_1,
    input wire [31:0] in_lm25223_0,
    input wire [31:0] in_lm25223_1,
    input wire [31:0] in_lm2597_pop21361_0,
    input wire [31:0] in_lm2597_pop21361_1,
    input wire [31:0] in_mul32181_pop66445_0,
    input wire [31:0] in_mul32181_pop66445_1,
    input wire [31:0] in_mul39_add4399_0,
    input wire [31:0] in_mul39_add4399_1,
    input wire [31:0] in_mul56116_pop50427_0,
    input wire [31:0] in_mul56116_pop50427_1,
    input wire [31:0] in_mul56253_0,
    input wire [31:0] in_mul56253_1,
    input wire [0:0] in_notcmp73172_pop62443_0,
    input wire [0:0] in_notcmp73172_pop62443_1,
    input wire [0:0] in_notcmp77161_pop59441_0,
    input wire [0:0] in_notcmp77161_pop59441_1,
    input wire [0:0] in_notcmp77334_0,
    input wire [0:0] in_notcmp77334_1,
    input wire [0:0] in_notcmp81103_pop22370_0,
    input wire [0:0] in_notcmp81103_pop22370_1,
    input wire [0:0] in_notcmp81106_pop48423_0,
    input wire [0:0] in_notcmp81106_pop48423_1,
    input wire [0:0] in_notcmp81234_0,
    input wire [0:0] in_notcmp81234_1,
    input wire [63:0] in_output_im_addr_068_replace_phi212_0,
    input wire [63:0] in_output_im_addr_068_replace_phi212_1,
    input wire [63:0] in_output_im_addr_068_replace_phi91_pop20352_0,
    input wire [63:0] in_output_im_addr_068_replace_phi91_pop20352_1,
    input wire [63:0] in_output_im_addr_068_replace_phi94_pop46419_0,
    input wire [63:0] in_output_im_addr_068_replace_phi94_pop46419_1,
    input wire [31:0] in_output_size,
    input wire [31:0] in_pad,
    input wire [31:0] in_pad_sync_buffer168_pop61405_0,
    input wire [31:0] in_pad_sync_buffer168_pop61405_1,
    input wire [0:0] in_pop65413_0,
    input wire [0:0] in_pop65413_1,
    input wire [0:0] in_pop69449_0,
    input wire [0:0] in_pop69449_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_stride,
    input wire [31:0] in_stride_sync_buffer164_pop60401_0,
    input wire [31:0] in_stride_sync_buffer164_pop60401_1,
    input wire [31:0] in_sub_1131_pop53429_0,
    input wire [31:0] in_sub_1131_pop53429_1,
    input wire [31:0] in_sub_1280_0,
    input wire [31:0] in_sub_1280_1,
    input wire [31:0] in_sub_2146_pop56435_0,
    input wire [31:0] in_sub_2146_pop56435_1,
    input wire [31:0] in_sub_2307_0,
    input wire [31:0] in_sub_2307_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_c0_exe10925,
    output wire [63:0] out_c0_exe13928,
    output wire [31:0] out_c0_exe14929,
    output wire [0:0] out_c0_exe15930,
    output wire [31:0] out_c0_exe16931,
    output wire [31:0] out_c0_exe17932,
    output wire [0:0] out_c0_exe18933,
    output wire [0:0] out_c0_exe19934,
    output wire [31:0] out_c0_exe20935,
    output wire [31:0] out_c0_exe21936,
    output wire [0:0] out_c0_exe22937,
    output wire [0:0] out_c0_exe23938,
    output wire [0:0] out_c0_exe24939,
    output wire [31:0] out_c0_exe25940,
    output wire [31:0] out_c0_exe26941,
    output wire [0:0] out_c0_exe27942,
    output wire [31:0] out_c0_exe28943,
    output wire [31:0] out_c0_exe2917,
    output wire [31:0] out_c0_exe29944,
    output wire [31:0] out_c0_exe30945,
    output wire [0:0] out_c0_exe31946,
    output wire [63:0] out_c0_exe33948,
    output wire [63:0] out_c0_exe34949,
    output wire [31:0] out_c0_exe35950,
    output wire [0:0] out_c0_exe36951,
    output wire [31:0] out_c0_exe37952,
    output wire [31:0] out_c0_exe38953,
    output wire [31:0] out_c0_exe3918,
    output wire [0:0] out_c0_exe39954,
    output wire [0:0] out_c0_exe40955,
    output wire [31:0] out_c0_exe41956,
    output wire [0:0] out_c0_exe42957,
    output wire [0:0] out_c0_exe43958,
    output wire [31:0] out_c0_exe44959,
    output wire [0:0] out_c0_exe45960,
    output wire [0:0] out_c0_exe46961,
    output wire [0:0] out_c0_exe47962,
    output wire [63:0] out_c0_exe48963,
    output wire [63:0] out_c0_exe49964,
    output wire [31:0] out_c0_exe50965,
    output wire [0:0] out_c0_exe51966,
    output wire [0:0] out_c0_exe5920,
    output wire [0:0] out_c0_exe6921,
    output wire [0:0] out_c0_exe8923,
    output wire [31:0] out_c1_exe1983,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [30:0] out_lm13_conv2d3x3_avm_address,
    output wire [4:0] out_lm13_conv2d3x3_avm_burstcount,
    output wire [63:0] out_lm13_conv2d3x3_avm_byteenable,
    output wire [0:0] out_lm13_conv2d3x3_avm_enable,
    output wire [0:0] out_lm13_conv2d3x3_avm_read,
    output wire [0:0] out_lm13_conv2d3x3_avm_write,
    output wire [511:0] out_lm13_conv2d3x3_avm_writedata,
    output wire [30:0] out_lm15_conv2d3x3_avm_address,
    output wire [4:0] out_lm15_conv2d3x3_avm_burstcount,
    output wire [63:0] out_lm15_conv2d3x3_avm_byteenable,
    output wire [0:0] out_lm15_conv2d3x3_avm_enable,
    output wire [0:0] out_lm15_conv2d3x3_avm_read,
    output wire [0:0] out_lm15_conv2d3x3_avm_write,
    output wire [511:0] out_lm15_conv2d3x3_avm_writedata,
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

    wire [0:0] bb_conv2d3x3_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv2d3x38_exiting_stall_out;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv2d3x38_exiting_valid_out;
    wire [63:0] bb_conv2d3x3_B11_stall_region_out_c0_exe10925;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_c0_exe12927;
    wire [63:0] bb_conv2d3x3_B11_stall_region_out_c0_exe13928;
    wire [31:0] bb_conv2d3x3_B11_stall_region_out_c0_exe14929;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_c0_exe15930;
    wire [31:0] bb_conv2d3x3_B11_stall_region_out_c0_exe16931;
    wire [31:0] bb_conv2d3x3_B11_stall_region_out_c0_exe17932;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_c0_exe18933;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_c0_exe19934;
    wire [31:0] bb_conv2d3x3_B11_stall_region_out_c0_exe20935;
    wire [31:0] bb_conv2d3x3_B11_stall_region_out_c0_exe21936;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_c0_exe22937;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_c0_exe23938;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_c0_exe24939;
    wire [31:0] bb_conv2d3x3_B11_stall_region_out_c0_exe25940;
    wire [31:0] bb_conv2d3x3_B11_stall_region_out_c0_exe26941;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_c0_exe27942;
    wire [31:0] bb_conv2d3x3_B11_stall_region_out_c0_exe28943;
    wire [31:0] bb_conv2d3x3_B11_stall_region_out_c0_exe2917;
    wire [31:0] bb_conv2d3x3_B11_stall_region_out_c0_exe29944;
    wire [31:0] bb_conv2d3x3_B11_stall_region_out_c0_exe30945;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_c0_exe31946;
    wire [63:0] bb_conv2d3x3_B11_stall_region_out_c0_exe33948;
    wire [63:0] bb_conv2d3x3_B11_stall_region_out_c0_exe34949;
    wire [31:0] bb_conv2d3x3_B11_stall_region_out_c0_exe35950;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_c0_exe36951;
    wire [31:0] bb_conv2d3x3_B11_stall_region_out_c0_exe37952;
    wire [31:0] bb_conv2d3x3_B11_stall_region_out_c0_exe38953;
    wire [31:0] bb_conv2d3x3_B11_stall_region_out_c0_exe3918;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_c0_exe39954;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_c0_exe40955;
    wire [31:0] bb_conv2d3x3_B11_stall_region_out_c0_exe41956;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_c0_exe42957;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_c0_exe43958;
    wire [31:0] bb_conv2d3x3_B11_stall_region_out_c0_exe44959;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_c0_exe45960;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_c0_exe46961;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_c0_exe47962;
    wire [63:0] bb_conv2d3x3_B11_stall_region_out_c0_exe48963;
    wire [63:0] bb_conv2d3x3_B11_stall_region_out_c0_exe49964;
    wire [31:0] bb_conv2d3x3_B11_stall_region_out_c0_exe50965;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_c0_exe51966;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_c0_exe5920;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_c0_exe6921;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_c0_exe8923;
    wire [31:0] bb_conv2d3x3_B11_stall_region_out_c1_exe1983;
    wire [30:0] bb_conv2d3x3_B11_stall_region_out_lm13_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B11_stall_region_out_lm13_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B11_stall_region_out_lm13_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_lm13_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_lm13_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_lm13_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B11_stall_region_out_lm13_conv2d3x3_avm_writedata;
    wire [30:0] bb_conv2d3x3_B11_stall_region_out_lm15_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B11_stall_region_out_lm15_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B11_stall_region_out_lm15_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_lm15_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_lm15_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_lm15_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B11_stall_region_out_lm15_conv2d3x3_avm_writedata;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_stall_out;
    wire [0:0] bb_conv2d3x3_B11_stall_region_out_valid_out;
    wire [63:0] conv2d3x3_B11_branch_out_c0_exe10925;
    wire [63:0] conv2d3x3_B11_branch_out_c0_exe13928;
    wire [31:0] conv2d3x3_B11_branch_out_c0_exe14929;
    wire [0:0] conv2d3x3_B11_branch_out_c0_exe15930;
    wire [31:0] conv2d3x3_B11_branch_out_c0_exe16931;
    wire [31:0] conv2d3x3_B11_branch_out_c0_exe17932;
    wire [0:0] conv2d3x3_B11_branch_out_c0_exe18933;
    wire [0:0] conv2d3x3_B11_branch_out_c0_exe19934;
    wire [31:0] conv2d3x3_B11_branch_out_c0_exe20935;
    wire [31:0] conv2d3x3_B11_branch_out_c0_exe21936;
    wire [0:0] conv2d3x3_B11_branch_out_c0_exe22937;
    wire [0:0] conv2d3x3_B11_branch_out_c0_exe23938;
    wire [0:0] conv2d3x3_B11_branch_out_c0_exe24939;
    wire [31:0] conv2d3x3_B11_branch_out_c0_exe25940;
    wire [31:0] conv2d3x3_B11_branch_out_c0_exe26941;
    wire [0:0] conv2d3x3_B11_branch_out_c0_exe27942;
    wire [31:0] conv2d3x3_B11_branch_out_c0_exe28943;
    wire [31:0] conv2d3x3_B11_branch_out_c0_exe2917;
    wire [31:0] conv2d3x3_B11_branch_out_c0_exe29944;
    wire [31:0] conv2d3x3_B11_branch_out_c0_exe30945;
    wire [0:0] conv2d3x3_B11_branch_out_c0_exe31946;
    wire [63:0] conv2d3x3_B11_branch_out_c0_exe33948;
    wire [63:0] conv2d3x3_B11_branch_out_c0_exe34949;
    wire [31:0] conv2d3x3_B11_branch_out_c0_exe35950;
    wire [0:0] conv2d3x3_B11_branch_out_c0_exe36951;
    wire [31:0] conv2d3x3_B11_branch_out_c0_exe37952;
    wire [31:0] conv2d3x3_B11_branch_out_c0_exe38953;
    wire [31:0] conv2d3x3_B11_branch_out_c0_exe3918;
    wire [0:0] conv2d3x3_B11_branch_out_c0_exe39954;
    wire [0:0] conv2d3x3_B11_branch_out_c0_exe40955;
    wire [31:0] conv2d3x3_B11_branch_out_c0_exe41956;
    wire [0:0] conv2d3x3_B11_branch_out_c0_exe42957;
    wire [0:0] conv2d3x3_B11_branch_out_c0_exe43958;
    wire [31:0] conv2d3x3_B11_branch_out_c0_exe44959;
    wire [0:0] conv2d3x3_B11_branch_out_c0_exe45960;
    wire [0:0] conv2d3x3_B11_branch_out_c0_exe46961;
    wire [0:0] conv2d3x3_B11_branch_out_c0_exe47962;
    wire [63:0] conv2d3x3_B11_branch_out_c0_exe48963;
    wire [63:0] conv2d3x3_B11_branch_out_c0_exe49964;
    wire [31:0] conv2d3x3_B11_branch_out_c0_exe50965;
    wire [0:0] conv2d3x3_B11_branch_out_c0_exe51966;
    wire [0:0] conv2d3x3_B11_branch_out_c0_exe5920;
    wire [0:0] conv2d3x3_B11_branch_out_c0_exe6921;
    wire [0:0] conv2d3x3_B11_branch_out_c0_exe8923;
    wire [31:0] conv2d3x3_B11_branch_out_c1_exe1983;
    wire [0:0] conv2d3x3_B11_branch_out_stall_out;
    wire [0:0] conv2d3x3_B11_branch_out_valid_out_0;
    wire [0:0] conv2d3x3_B11_branch_out_valid_out_1;
    wire [31:0] conv2d3x3_B11_merge_out_acl_6417;
    wire [31:0] conv2d3x3_B11_merge_out_add111_pop49425;
    wire [31:0] conv2d3x3_B11_merge_out_add244;
    wire [31:0] conv2d3x3_B11_merge_out_add24407;
    wire [31:0] conv2d3x3_B11_merge_out_add35_1398;
    wire [0:0] conv2d3x3_B11_merge_out_cmp26121_pop51409;
    wire [0:0] conv2d3x3_B11_merge_out_cmp26262;
    wire [0:0] conv2d3x3_B11_merge_out_cmp26_1136_pop54431;
    wire [0:0] conv2d3x3_B11_merge_out_cmp26_1289;
    wire [0:0] conv2d3x3_B11_merge_out_cmp26_2151_pop57437;
    wire [0:0] conv2d3x3_B11_merge_out_cmp26_2316;
    wire [0:0] conv2d3x3_B11_merge_out_cmp27126_pop52411;
    wire [0:0] conv2d3x3_B11_merge_out_cmp27271;
    wire [0:0] conv2d3x3_B11_merge_out_cmp27_1141_pop55433;
    wire [0:0] conv2d3x3_B11_merge_out_cmp27_1298;
    wire [0:0] conv2d3x3_B11_merge_out_cmp27_2156_pop58439;
    wire [0:0] conv2d3x3_B11_merge_out_cmp27_2325;
    wire [63:0] conv2d3x3_B11_merge_out_filter_weight_addr_067_replace_phi201;
    wire [63:0] conv2d3x3_B11_merge_out_filter_weight_addr_067_replace_phi85_pop19343;
    wire [63:0] conv2d3x3_B11_merge_out_filter_weight_addr_067_replace_phi88_pop45415;
    wire [0:0] conv2d3x3_B11_merge_out_forked40;
    wire [31:0] conv2d3x3_B11_merge_out_inc50184_pop68447;
    wire [31:0] conv2d3x3_B11_merge_out_j_061_pop24176_pop63403;
    wire [31:0] conv2d3x3_B11_merge_out_lm25100_pop47421;
    wire [31:0] conv2d3x3_B11_merge_out_lm25223;
    wire [31:0] conv2d3x3_B11_merge_out_lm2597_pop21361;
    wire [31:0] conv2d3x3_B11_merge_out_mul32181_pop66445;
    wire [31:0] conv2d3x3_B11_merge_out_mul39_add4399;
    wire [31:0] conv2d3x3_B11_merge_out_mul56116_pop50427;
    wire [31:0] conv2d3x3_B11_merge_out_mul56253;
    wire [0:0] conv2d3x3_B11_merge_out_notcmp73172_pop62443;
    wire [0:0] conv2d3x3_B11_merge_out_notcmp77161_pop59441;
    wire [0:0] conv2d3x3_B11_merge_out_notcmp77334;
    wire [0:0] conv2d3x3_B11_merge_out_notcmp81103_pop22370;
    wire [0:0] conv2d3x3_B11_merge_out_notcmp81106_pop48423;
    wire [0:0] conv2d3x3_B11_merge_out_notcmp81234;
    wire [63:0] conv2d3x3_B11_merge_out_output_im_addr_068_replace_phi212;
    wire [63:0] conv2d3x3_B11_merge_out_output_im_addr_068_replace_phi91_pop20352;
    wire [63:0] conv2d3x3_B11_merge_out_output_im_addr_068_replace_phi94_pop46419;
    wire [31:0] conv2d3x3_B11_merge_out_pad_sync_buffer168_pop61405;
    wire [0:0] conv2d3x3_B11_merge_out_pop65413;
    wire [0:0] conv2d3x3_B11_merge_out_pop69449;
    wire [0:0] conv2d3x3_B11_merge_out_stall_out_0;
    wire [0:0] conv2d3x3_B11_merge_out_stall_out_1;
    wire [31:0] conv2d3x3_B11_merge_out_stride_sync_buffer164_pop60401;
    wire [31:0] conv2d3x3_B11_merge_out_sub_1131_pop53429;
    wire [31:0] conv2d3x3_B11_merge_out_sub_1280;
    wire [31:0] conv2d3x3_B11_merge_out_sub_2146_pop56435;
    wire [31:0] conv2d3x3_B11_merge_out_sub_2307;
    wire [0:0] conv2d3x3_B11_merge_out_valid_out;


    // conv2d3x3_B11_merge(BLACKBOX,4)
    conv2d3x3_B11_merge theconv2d3x3_B11_merge (
        .in_acl_6417_0(in_acl_6417_0),
        .in_acl_6417_1(in_acl_6417_1),
        .in_add111_pop49425_0(in_add111_pop49425_0),
        .in_add111_pop49425_1(in_add111_pop49425_1),
        .in_add24407_0(in_add24407_0),
        .in_add24407_1(in_add24407_1),
        .in_add244_0(in_add244_0),
        .in_add244_1(in_add244_1),
        .in_add35_1398_0(in_add35_1398_0),
        .in_add35_1398_1(in_add35_1398_1),
        .in_cmp26121_pop51409_0(in_cmp26121_pop51409_0),
        .in_cmp26121_pop51409_1(in_cmp26121_pop51409_1),
        .in_cmp26262_0(in_cmp26262_0),
        .in_cmp26262_1(in_cmp26262_1),
        .in_cmp26_1136_pop54431_0(in_cmp26_1136_pop54431_0),
        .in_cmp26_1136_pop54431_1(in_cmp26_1136_pop54431_1),
        .in_cmp26_1289_0(in_cmp26_1289_0),
        .in_cmp26_1289_1(in_cmp26_1289_1),
        .in_cmp26_2151_pop57437_0(in_cmp26_2151_pop57437_0),
        .in_cmp26_2151_pop57437_1(in_cmp26_2151_pop57437_1),
        .in_cmp26_2316_0(in_cmp26_2316_0),
        .in_cmp26_2316_1(in_cmp26_2316_1),
        .in_cmp27126_pop52411_0(in_cmp27126_pop52411_0),
        .in_cmp27126_pop52411_1(in_cmp27126_pop52411_1),
        .in_cmp27271_0(in_cmp27271_0),
        .in_cmp27271_1(in_cmp27271_1),
        .in_cmp27_1141_pop55433_0(in_cmp27_1141_pop55433_0),
        .in_cmp27_1141_pop55433_1(in_cmp27_1141_pop55433_1),
        .in_cmp27_1298_0(in_cmp27_1298_0),
        .in_cmp27_1298_1(in_cmp27_1298_1),
        .in_cmp27_2156_pop58439_0(in_cmp27_2156_pop58439_0),
        .in_cmp27_2156_pop58439_1(in_cmp27_2156_pop58439_1),
        .in_cmp27_2325_0(in_cmp27_2325_0),
        .in_cmp27_2325_1(in_cmp27_2325_1),
        .in_filter_weight_addr_067_replace_phi201_0(in_filter_weight_addr_067_replace_phi201_0),
        .in_filter_weight_addr_067_replace_phi201_1(in_filter_weight_addr_067_replace_phi201_1),
        .in_filter_weight_addr_067_replace_phi85_pop19343_0(in_filter_weight_addr_067_replace_phi85_pop19343_0),
        .in_filter_weight_addr_067_replace_phi85_pop19343_1(in_filter_weight_addr_067_replace_phi85_pop19343_1),
        .in_filter_weight_addr_067_replace_phi88_pop45415_0(in_filter_weight_addr_067_replace_phi88_pop45415_0),
        .in_filter_weight_addr_067_replace_phi88_pop45415_1(in_filter_weight_addr_067_replace_phi88_pop45415_1),
        .in_forked40_0(in_forked40_0),
        .in_forked40_1(in_forked40_1),
        .in_inc50184_pop68447_0(in_inc50184_pop68447_0),
        .in_inc50184_pop68447_1(in_inc50184_pop68447_1),
        .in_j_061_pop24176_pop63403_0(in_j_061_pop24176_pop63403_0),
        .in_j_061_pop24176_pop63403_1(in_j_061_pop24176_pop63403_1),
        .in_lm25100_pop47421_0(in_lm25100_pop47421_0),
        .in_lm25100_pop47421_1(in_lm25100_pop47421_1),
        .in_lm25223_0(in_lm25223_0),
        .in_lm25223_1(in_lm25223_1),
        .in_lm2597_pop21361_0(in_lm2597_pop21361_0),
        .in_lm2597_pop21361_1(in_lm2597_pop21361_1),
        .in_mul32181_pop66445_0(in_mul32181_pop66445_0),
        .in_mul32181_pop66445_1(in_mul32181_pop66445_1),
        .in_mul39_add4399_0(in_mul39_add4399_0),
        .in_mul39_add4399_1(in_mul39_add4399_1),
        .in_mul56116_pop50427_0(in_mul56116_pop50427_0),
        .in_mul56116_pop50427_1(in_mul56116_pop50427_1),
        .in_mul56253_0(in_mul56253_0),
        .in_mul56253_1(in_mul56253_1),
        .in_notcmp73172_pop62443_0(in_notcmp73172_pop62443_0),
        .in_notcmp73172_pop62443_1(in_notcmp73172_pop62443_1),
        .in_notcmp77161_pop59441_0(in_notcmp77161_pop59441_0),
        .in_notcmp77161_pop59441_1(in_notcmp77161_pop59441_1),
        .in_notcmp77334_0(in_notcmp77334_0),
        .in_notcmp77334_1(in_notcmp77334_1),
        .in_notcmp81103_pop22370_0(in_notcmp81103_pop22370_0),
        .in_notcmp81103_pop22370_1(in_notcmp81103_pop22370_1),
        .in_notcmp81106_pop48423_0(in_notcmp81106_pop48423_0),
        .in_notcmp81106_pop48423_1(in_notcmp81106_pop48423_1),
        .in_notcmp81234_0(in_notcmp81234_0),
        .in_notcmp81234_1(in_notcmp81234_1),
        .in_output_im_addr_068_replace_phi212_0(in_output_im_addr_068_replace_phi212_0),
        .in_output_im_addr_068_replace_phi212_1(in_output_im_addr_068_replace_phi212_1),
        .in_output_im_addr_068_replace_phi91_pop20352_0(in_output_im_addr_068_replace_phi91_pop20352_0),
        .in_output_im_addr_068_replace_phi91_pop20352_1(in_output_im_addr_068_replace_phi91_pop20352_1),
        .in_output_im_addr_068_replace_phi94_pop46419_0(in_output_im_addr_068_replace_phi94_pop46419_0),
        .in_output_im_addr_068_replace_phi94_pop46419_1(in_output_im_addr_068_replace_phi94_pop46419_1),
        .in_pad_sync_buffer168_pop61405_0(in_pad_sync_buffer168_pop61405_0),
        .in_pad_sync_buffer168_pop61405_1(in_pad_sync_buffer168_pop61405_1),
        .in_pop65413_0(in_pop65413_0),
        .in_pop65413_1(in_pop65413_1),
        .in_pop69449_0(in_pop69449_0),
        .in_pop69449_1(in_pop69449_1),
        .in_stall_in(bb_conv2d3x3_B11_stall_region_out_stall_out),
        .in_stride_sync_buffer164_pop60401_0(in_stride_sync_buffer164_pop60401_0),
        .in_stride_sync_buffer164_pop60401_1(in_stride_sync_buffer164_pop60401_1),
        .in_sub_1131_pop53429_0(in_sub_1131_pop53429_0),
        .in_sub_1131_pop53429_1(in_sub_1131_pop53429_1),
        .in_sub_1280_0(in_sub_1280_0),
        .in_sub_1280_1(in_sub_1280_1),
        .in_sub_2146_pop56435_0(in_sub_2146_pop56435_0),
        .in_sub_2146_pop56435_1(in_sub_2146_pop56435_1),
        .in_sub_2307_0(in_sub_2307_0),
        .in_sub_2307_1(in_sub_2307_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_acl_6417(conv2d3x3_B11_merge_out_acl_6417),
        .out_add111_pop49425(conv2d3x3_B11_merge_out_add111_pop49425),
        .out_add244(conv2d3x3_B11_merge_out_add244),
        .out_add24407(conv2d3x3_B11_merge_out_add24407),
        .out_add35_1398(conv2d3x3_B11_merge_out_add35_1398),
        .out_cmp26121_pop51409(conv2d3x3_B11_merge_out_cmp26121_pop51409),
        .out_cmp26262(conv2d3x3_B11_merge_out_cmp26262),
        .out_cmp26_1136_pop54431(conv2d3x3_B11_merge_out_cmp26_1136_pop54431),
        .out_cmp26_1289(conv2d3x3_B11_merge_out_cmp26_1289),
        .out_cmp26_2151_pop57437(conv2d3x3_B11_merge_out_cmp26_2151_pop57437),
        .out_cmp26_2316(conv2d3x3_B11_merge_out_cmp26_2316),
        .out_cmp27126_pop52411(conv2d3x3_B11_merge_out_cmp27126_pop52411),
        .out_cmp27271(conv2d3x3_B11_merge_out_cmp27271),
        .out_cmp27_1141_pop55433(conv2d3x3_B11_merge_out_cmp27_1141_pop55433),
        .out_cmp27_1298(conv2d3x3_B11_merge_out_cmp27_1298),
        .out_cmp27_2156_pop58439(conv2d3x3_B11_merge_out_cmp27_2156_pop58439),
        .out_cmp27_2325(conv2d3x3_B11_merge_out_cmp27_2325),
        .out_filter_weight_addr_067_replace_phi201(conv2d3x3_B11_merge_out_filter_weight_addr_067_replace_phi201),
        .out_filter_weight_addr_067_replace_phi85_pop19343(conv2d3x3_B11_merge_out_filter_weight_addr_067_replace_phi85_pop19343),
        .out_filter_weight_addr_067_replace_phi88_pop45415(conv2d3x3_B11_merge_out_filter_weight_addr_067_replace_phi88_pop45415),
        .out_forked40(conv2d3x3_B11_merge_out_forked40),
        .out_inc50184_pop68447(conv2d3x3_B11_merge_out_inc50184_pop68447),
        .out_j_061_pop24176_pop63403(conv2d3x3_B11_merge_out_j_061_pop24176_pop63403),
        .out_lm25100_pop47421(conv2d3x3_B11_merge_out_lm25100_pop47421),
        .out_lm25223(conv2d3x3_B11_merge_out_lm25223),
        .out_lm2597_pop21361(conv2d3x3_B11_merge_out_lm2597_pop21361),
        .out_mul32181_pop66445(conv2d3x3_B11_merge_out_mul32181_pop66445),
        .out_mul39_add4399(conv2d3x3_B11_merge_out_mul39_add4399),
        .out_mul56116_pop50427(conv2d3x3_B11_merge_out_mul56116_pop50427),
        .out_mul56253(conv2d3x3_B11_merge_out_mul56253),
        .out_notcmp73172_pop62443(conv2d3x3_B11_merge_out_notcmp73172_pop62443),
        .out_notcmp77161_pop59441(conv2d3x3_B11_merge_out_notcmp77161_pop59441),
        .out_notcmp77334(conv2d3x3_B11_merge_out_notcmp77334),
        .out_notcmp81103_pop22370(conv2d3x3_B11_merge_out_notcmp81103_pop22370),
        .out_notcmp81106_pop48423(conv2d3x3_B11_merge_out_notcmp81106_pop48423),
        .out_notcmp81234(conv2d3x3_B11_merge_out_notcmp81234),
        .out_output_im_addr_068_replace_phi212(conv2d3x3_B11_merge_out_output_im_addr_068_replace_phi212),
        .out_output_im_addr_068_replace_phi91_pop20352(conv2d3x3_B11_merge_out_output_im_addr_068_replace_phi91_pop20352),
        .out_output_im_addr_068_replace_phi94_pop46419(conv2d3x3_B11_merge_out_output_im_addr_068_replace_phi94_pop46419),
        .out_pad_sync_buffer168_pop61405(conv2d3x3_B11_merge_out_pad_sync_buffer168_pop61405),
        .out_pop65413(conv2d3x3_B11_merge_out_pop65413),
        .out_pop69449(conv2d3x3_B11_merge_out_pop69449),
        .out_stall_out_0(conv2d3x3_B11_merge_out_stall_out_0),
        .out_stall_out_1(conv2d3x3_B11_merge_out_stall_out_1),
        .out_stride_sync_buffer164_pop60401(conv2d3x3_B11_merge_out_stride_sync_buffer164_pop60401),
        .out_sub_1131_pop53429(conv2d3x3_B11_merge_out_sub_1131_pop53429),
        .out_sub_1280(conv2d3x3_B11_merge_out_sub_1280),
        .out_sub_2146_pop56435(conv2d3x3_B11_merge_out_sub_2146_pop56435),
        .out_sub_2307(conv2d3x3_B11_merge_out_sub_2307),
        .out_valid_out(conv2d3x3_B11_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B11_stall_region(BLACKBOX,2)
    conv2d3x3_bb_B11_stall_region thebb_conv2d3x3_B11_stall_region (
        .in_acl_6417(conv2d3x3_B11_merge_out_acl_6417),
        .in_add111_pop49425(conv2d3x3_B11_merge_out_add111_pop49425),
        .in_add244(conv2d3x3_B11_merge_out_add244),
        .in_add24407(conv2d3x3_B11_merge_out_add24407),
        .in_add35_1398(conv2d3x3_B11_merge_out_add35_1398),
        .in_cmp26121_pop51409(conv2d3x3_B11_merge_out_cmp26121_pop51409),
        .in_cmp26262(conv2d3x3_B11_merge_out_cmp26262),
        .in_cmp26_1136_pop54431(conv2d3x3_B11_merge_out_cmp26_1136_pop54431),
        .in_cmp26_1289(conv2d3x3_B11_merge_out_cmp26_1289),
        .in_cmp26_2151_pop57437(conv2d3x3_B11_merge_out_cmp26_2151_pop57437),
        .in_cmp26_2316(conv2d3x3_B11_merge_out_cmp26_2316),
        .in_cmp27126_pop52411(conv2d3x3_B11_merge_out_cmp27126_pop52411),
        .in_cmp27271(conv2d3x3_B11_merge_out_cmp27271),
        .in_cmp27_1141_pop55433(conv2d3x3_B11_merge_out_cmp27_1141_pop55433),
        .in_cmp27_1298(conv2d3x3_B11_merge_out_cmp27_1298),
        .in_cmp27_2156_pop58439(conv2d3x3_B11_merge_out_cmp27_2156_pop58439),
        .in_cmp27_2325(conv2d3x3_B11_merge_out_cmp27_2325),
        .in_filter_weight_addr_067_replace_phi201(conv2d3x3_B11_merge_out_filter_weight_addr_067_replace_phi201),
        .in_filter_weight_addr_067_replace_phi85_pop19343(conv2d3x3_B11_merge_out_filter_weight_addr_067_replace_phi85_pop19343),
        .in_filter_weight_addr_067_replace_phi88_pop45415(conv2d3x3_B11_merge_out_filter_weight_addr_067_replace_phi88_pop45415),
        .in_flush(in_flush),
        .in_forked40(conv2d3x3_B11_merge_out_forked40),
        .in_inc50184_pop68447(conv2d3x3_B11_merge_out_inc50184_pop68447),
        .in_input_im(in_input_im),
        .in_input_size(in_input_size),
        .in_j_061_pop24176_pop63403(conv2d3x3_B11_merge_out_j_061_pop24176_pop63403),
        .in_lm13_conv2d3x3_avm_readdata(in_lm13_conv2d3x3_avm_readdata),
        .in_lm13_conv2d3x3_avm_readdatavalid(in_lm13_conv2d3x3_avm_readdatavalid),
        .in_lm13_conv2d3x3_avm_waitrequest(in_lm13_conv2d3x3_avm_waitrequest),
        .in_lm13_conv2d3x3_avm_writeack(in_lm13_conv2d3x3_avm_writeack),
        .in_lm15_conv2d3x3_avm_readdata(in_lm15_conv2d3x3_avm_readdata),
        .in_lm15_conv2d3x3_avm_readdatavalid(in_lm15_conv2d3x3_avm_readdatavalid),
        .in_lm15_conv2d3x3_avm_waitrequest(in_lm15_conv2d3x3_avm_waitrequest),
        .in_lm15_conv2d3x3_avm_writeack(in_lm15_conv2d3x3_avm_writeack),
        .in_lm25100_pop47421(conv2d3x3_B11_merge_out_lm25100_pop47421),
        .in_lm25223(conv2d3x3_B11_merge_out_lm25223),
        .in_lm2597_pop21361(conv2d3x3_B11_merge_out_lm2597_pop21361),
        .in_mul32181_pop66445(conv2d3x3_B11_merge_out_mul32181_pop66445),
        .in_mul39_add4399(conv2d3x3_B11_merge_out_mul39_add4399),
        .in_mul56116_pop50427(conv2d3x3_B11_merge_out_mul56116_pop50427),
        .in_mul56253(conv2d3x3_B11_merge_out_mul56253),
        .in_notcmp73172_pop62443(conv2d3x3_B11_merge_out_notcmp73172_pop62443),
        .in_notcmp77161_pop59441(conv2d3x3_B11_merge_out_notcmp77161_pop59441),
        .in_notcmp77334(conv2d3x3_B11_merge_out_notcmp77334),
        .in_notcmp81103_pop22370(conv2d3x3_B11_merge_out_notcmp81103_pop22370),
        .in_notcmp81106_pop48423(conv2d3x3_B11_merge_out_notcmp81106_pop48423),
        .in_notcmp81234(conv2d3x3_B11_merge_out_notcmp81234),
        .in_output_im_addr_068_replace_phi212(conv2d3x3_B11_merge_out_output_im_addr_068_replace_phi212),
        .in_output_im_addr_068_replace_phi91_pop20352(conv2d3x3_B11_merge_out_output_im_addr_068_replace_phi91_pop20352),
        .in_output_im_addr_068_replace_phi94_pop46419(conv2d3x3_B11_merge_out_output_im_addr_068_replace_phi94_pop46419),
        .in_pad_sync_buffer168_pop61405(conv2d3x3_B11_merge_out_pad_sync_buffer168_pop61405),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_pop65413(conv2d3x3_B11_merge_out_pop65413),
        .in_pop69449(conv2d3x3_B11_merge_out_pop69449),
        .in_stall_in(conv2d3x3_B11_branch_out_stall_out),
        .in_stride_sync_buffer164_pop60401(conv2d3x3_B11_merge_out_stride_sync_buffer164_pop60401),
        .in_sub_1131_pop53429(conv2d3x3_B11_merge_out_sub_1131_pop53429),
        .in_sub_1280(conv2d3x3_B11_merge_out_sub_1280),
        .in_sub_2146_pop56435(conv2d3x3_B11_merge_out_sub_2146_pop56435),
        .in_sub_2307(conv2d3x3_B11_merge_out_sub_2307),
        .in_valid_in(conv2d3x3_B11_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv2d3x38_exiting_stall_out(bb_conv2d3x3_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv2d3x38_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv2d3x38_exiting_valid_out(bb_conv2d3x3_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv2d3x38_exiting_valid_out),
        .out_c0_exe10925(bb_conv2d3x3_B11_stall_region_out_c0_exe10925),
        .out_c0_exe12927(bb_conv2d3x3_B11_stall_region_out_c0_exe12927),
        .out_c0_exe13928(bb_conv2d3x3_B11_stall_region_out_c0_exe13928),
        .out_c0_exe14929(bb_conv2d3x3_B11_stall_region_out_c0_exe14929),
        .out_c0_exe15930(bb_conv2d3x3_B11_stall_region_out_c0_exe15930),
        .out_c0_exe16931(bb_conv2d3x3_B11_stall_region_out_c0_exe16931),
        .out_c0_exe17932(bb_conv2d3x3_B11_stall_region_out_c0_exe17932),
        .out_c0_exe18933(bb_conv2d3x3_B11_stall_region_out_c0_exe18933),
        .out_c0_exe19934(bb_conv2d3x3_B11_stall_region_out_c0_exe19934),
        .out_c0_exe20935(bb_conv2d3x3_B11_stall_region_out_c0_exe20935),
        .out_c0_exe21936(bb_conv2d3x3_B11_stall_region_out_c0_exe21936),
        .out_c0_exe22937(bb_conv2d3x3_B11_stall_region_out_c0_exe22937),
        .out_c0_exe23938(bb_conv2d3x3_B11_stall_region_out_c0_exe23938),
        .out_c0_exe24939(bb_conv2d3x3_B11_stall_region_out_c0_exe24939),
        .out_c0_exe25940(bb_conv2d3x3_B11_stall_region_out_c0_exe25940),
        .out_c0_exe26941(bb_conv2d3x3_B11_stall_region_out_c0_exe26941),
        .out_c0_exe27942(bb_conv2d3x3_B11_stall_region_out_c0_exe27942),
        .out_c0_exe28943(bb_conv2d3x3_B11_stall_region_out_c0_exe28943),
        .out_c0_exe2917(bb_conv2d3x3_B11_stall_region_out_c0_exe2917),
        .out_c0_exe29944(bb_conv2d3x3_B11_stall_region_out_c0_exe29944),
        .out_c0_exe30945(bb_conv2d3x3_B11_stall_region_out_c0_exe30945),
        .out_c0_exe31946(bb_conv2d3x3_B11_stall_region_out_c0_exe31946),
        .out_c0_exe33948(bb_conv2d3x3_B11_stall_region_out_c0_exe33948),
        .out_c0_exe34949(bb_conv2d3x3_B11_stall_region_out_c0_exe34949),
        .out_c0_exe35950(bb_conv2d3x3_B11_stall_region_out_c0_exe35950),
        .out_c0_exe36951(bb_conv2d3x3_B11_stall_region_out_c0_exe36951),
        .out_c0_exe37952(bb_conv2d3x3_B11_stall_region_out_c0_exe37952),
        .out_c0_exe38953(bb_conv2d3x3_B11_stall_region_out_c0_exe38953),
        .out_c0_exe3918(bb_conv2d3x3_B11_stall_region_out_c0_exe3918),
        .out_c0_exe39954(bb_conv2d3x3_B11_stall_region_out_c0_exe39954),
        .out_c0_exe40955(bb_conv2d3x3_B11_stall_region_out_c0_exe40955),
        .out_c0_exe41956(bb_conv2d3x3_B11_stall_region_out_c0_exe41956),
        .out_c0_exe42957(bb_conv2d3x3_B11_stall_region_out_c0_exe42957),
        .out_c0_exe43958(bb_conv2d3x3_B11_stall_region_out_c0_exe43958),
        .out_c0_exe44959(bb_conv2d3x3_B11_stall_region_out_c0_exe44959),
        .out_c0_exe45960(bb_conv2d3x3_B11_stall_region_out_c0_exe45960),
        .out_c0_exe46961(bb_conv2d3x3_B11_stall_region_out_c0_exe46961),
        .out_c0_exe47962(bb_conv2d3x3_B11_stall_region_out_c0_exe47962),
        .out_c0_exe48963(bb_conv2d3x3_B11_stall_region_out_c0_exe48963),
        .out_c0_exe49964(bb_conv2d3x3_B11_stall_region_out_c0_exe49964),
        .out_c0_exe50965(bb_conv2d3x3_B11_stall_region_out_c0_exe50965),
        .out_c0_exe51966(bb_conv2d3x3_B11_stall_region_out_c0_exe51966),
        .out_c0_exe5920(bb_conv2d3x3_B11_stall_region_out_c0_exe5920),
        .out_c0_exe6921(bb_conv2d3x3_B11_stall_region_out_c0_exe6921),
        .out_c0_exe8923(bb_conv2d3x3_B11_stall_region_out_c0_exe8923),
        .out_c1_exe1983(bb_conv2d3x3_B11_stall_region_out_c1_exe1983),
        .out_lm13_conv2d3x3_avm_address(bb_conv2d3x3_B11_stall_region_out_lm13_conv2d3x3_avm_address),
        .out_lm13_conv2d3x3_avm_burstcount(bb_conv2d3x3_B11_stall_region_out_lm13_conv2d3x3_avm_burstcount),
        .out_lm13_conv2d3x3_avm_byteenable(bb_conv2d3x3_B11_stall_region_out_lm13_conv2d3x3_avm_byteenable),
        .out_lm13_conv2d3x3_avm_enable(bb_conv2d3x3_B11_stall_region_out_lm13_conv2d3x3_avm_enable),
        .out_lm13_conv2d3x3_avm_read(bb_conv2d3x3_B11_stall_region_out_lm13_conv2d3x3_avm_read),
        .out_lm13_conv2d3x3_avm_write(bb_conv2d3x3_B11_stall_region_out_lm13_conv2d3x3_avm_write),
        .out_lm13_conv2d3x3_avm_writedata(bb_conv2d3x3_B11_stall_region_out_lm13_conv2d3x3_avm_writedata),
        .out_lm15_conv2d3x3_avm_address(bb_conv2d3x3_B11_stall_region_out_lm15_conv2d3x3_avm_address),
        .out_lm15_conv2d3x3_avm_burstcount(bb_conv2d3x3_B11_stall_region_out_lm15_conv2d3x3_avm_burstcount),
        .out_lm15_conv2d3x3_avm_byteenable(bb_conv2d3x3_B11_stall_region_out_lm15_conv2d3x3_avm_byteenable),
        .out_lm15_conv2d3x3_avm_enable(bb_conv2d3x3_B11_stall_region_out_lm15_conv2d3x3_avm_enable),
        .out_lm15_conv2d3x3_avm_read(bb_conv2d3x3_B11_stall_region_out_lm15_conv2d3x3_avm_read),
        .out_lm15_conv2d3x3_avm_write(bb_conv2d3x3_B11_stall_region_out_lm15_conv2d3x3_avm_write),
        .out_lm15_conv2d3x3_avm_writedata(bb_conv2d3x3_B11_stall_region_out_lm15_conv2d3x3_avm_writedata),
        .out_pipeline_valid_out(bb_conv2d3x3_B11_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv2d3x3_B11_stall_region_out_stall_out),
        .out_valid_out(bb_conv2d3x3_B11_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d3x3_B11_branch(BLACKBOX,3)
    conv2d3x3_B11_branch theconv2d3x3_B11_branch (
        .in_c0_exe10925(bb_conv2d3x3_B11_stall_region_out_c0_exe10925),
        .in_c0_exe12927(bb_conv2d3x3_B11_stall_region_out_c0_exe12927),
        .in_c0_exe13928(bb_conv2d3x3_B11_stall_region_out_c0_exe13928),
        .in_c0_exe14929(bb_conv2d3x3_B11_stall_region_out_c0_exe14929),
        .in_c0_exe15930(bb_conv2d3x3_B11_stall_region_out_c0_exe15930),
        .in_c0_exe16931(bb_conv2d3x3_B11_stall_region_out_c0_exe16931),
        .in_c0_exe17932(bb_conv2d3x3_B11_stall_region_out_c0_exe17932),
        .in_c0_exe18933(bb_conv2d3x3_B11_stall_region_out_c0_exe18933),
        .in_c0_exe19934(bb_conv2d3x3_B11_stall_region_out_c0_exe19934),
        .in_c0_exe20935(bb_conv2d3x3_B11_stall_region_out_c0_exe20935),
        .in_c0_exe21936(bb_conv2d3x3_B11_stall_region_out_c0_exe21936),
        .in_c0_exe22937(bb_conv2d3x3_B11_stall_region_out_c0_exe22937),
        .in_c0_exe23938(bb_conv2d3x3_B11_stall_region_out_c0_exe23938),
        .in_c0_exe24939(bb_conv2d3x3_B11_stall_region_out_c0_exe24939),
        .in_c0_exe25940(bb_conv2d3x3_B11_stall_region_out_c0_exe25940),
        .in_c0_exe26941(bb_conv2d3x3_B11_stall_region_out_c0_exe26941),
        .in_c0_exe27942(bb_conv2d3x3_B11_stall_region_out_c0_exe27942),
        .in_c0_exe28943(bb_conv2d3x3_B11_stall_region_out_c0_exe28943),
        .in_c0_exe2917(bb_conv2d3x3_B11_stall_region_out_c0_exe2917),
        .in_c0_exe29944(bb_conv2d3x3_B11_stall_region_out_c0_exe29944),
        .in_c0_exe30945(bb_conv2d3x3_B11_stall_region_out_c0_exe30945),
        .in_c0_exe31946(bb_conv2d3x3_B11_stall_region_out_c0_exe31946),
        .in_c0_exe33948(bb_conv2d3x3_B11_stall_region_out_c0_exe33948),
        .in_c0_exe34949(bb_conv2d3x3_B11_stall_region_out_c0_exe34949),
        .in_c0_exe35950(bb_conv2d3x3_B11_stall_region_out_c0_exe35950),
        .in_c0_exe36951(bb_conv2d3x3_B11_stall_region_out_c0_exe36951),
        .in_c0_exe37952(bb_conv2d3x3_B11_stall_region_out_c0_exe37952),
        .in_c0_exe38953(bb_conv2d3x3_B11_stall_region_out_c0_exe38953),
        .in_c0_exe3918(bb_conv2d3x3_B11_stall_region_out_c0_exe3918),
        .in_c0_exe39954(bb_conv2d3x3_B11_stall_region_out_c0_exe39954),
        .in_c0_exe40955(bb_conv2d3x3_B11_stall_region_out_c0_exe40955),
        .in_c0_exe41956(bb_conv2d3x3_B11_stall_region_out_c0_exe41956),
        .in_c0_exe42957(bb_conv2d3x3_B11_stall_region_out_c0_exe42957),
        .in_c0_exe43958(bb_conv2d3x3_B11_stall_region_out_c0_exe43958),
        .in_c0_exe44959(bb_conv2d3x3_B11_stall_region_out_c0_exe44959),
        .in_c0_exe45960(bb_conv2d3x3_B11_stall_region_out_c0_exe45960),
        .in_c0_exe46961(bb_conv2d3x3_B11_stall_region_out_c0_exe46961),
        .in_c0_exe47962(bb_conv2d3x3_B11_stall_region_out_c0_exe47962),
        .in_c0_exe48963(bb_conv2d3x3_B11_stall_region_out_c0_exe48963),
        .in_c0_exe49964(bb_conv2d3x3_B11_stall_region_out_c0_exe49964),
        .in_c0_exe50965(bb_conv2d3x3_B11_stall_region_out_c0_exe50965),
        .in_c0_exe51966(bb_conv2d3x3_B11_stall_region_out_c0_exe51966),
        .in_c0_exe5920(bb_conv2d3x3_B11_stall_region_out_c0_exe5920),
        .in_c0_exe6921(bb_conv2d3x3_B11_stall_region_out_c0_exe6921),
        .in_c0_exe8923(bb_conv2d3x3_B11_stall_region_out_c0_exe8923),
        .in_c1_exe1983(bb_conv2d3x3_B11_stall_region_out_c1_exe1983),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv2d3x3_B11_stall_region_out_valid_out),
        .out_c0_exe10925(conv2d3x3_B11_branch_out_c0_exe10925),
        .out_c0_exe13928(conv2d3x3_B11_branch_out_c0_exe13928),
        .out_c0_exe14929(conv2d3x3_B11_branch_out_c0_exe14929),
        .out_c0_exe15930(conv2d3x3_B11_branch_out_c0_exe15930),
        .out_c0_exe16931(conv2d3x3_B11_branch_out_c0_exe16931),
        .out_c0_exe17932(conv2d3x3_B11_branch_out_c0_exe17932),
        .out_c0_exe18933(conv2d3x3_B11_branch_out_c0_exe18933),
        .out_c0_exe19934(conv2d3x3_B11_branch_out_c0_exe19934),
        .out_c0_exe20935(conv2d3x3_B11_branch_out_c0_exe20935),
        .out_c0_exe21936(conv2d3x3_B11_branch_out_c0_exe21936),
        .out_c0_exe22937(conv2d3x3_B11_branch_out_c0_exe22937),
        .out_c0_exe23938(conv2d3x3_B11_branch_out_c0_exe23938),
        .out_c0_exe24939(conv2d3x3_B11_branch_out_c0_exe24939),
        .out_c0_exe25940(conv2d3x3_B11_branch_out_c0_exe25940),
        .out_c0_exe26941(conv2d3x3_B11_branch_out_c0_exe26941),
        .out_c0_exe27942(conv2d3x3_B11_branch_out_c0_exe27942),
        .out_c0_exe28943(conv2d3x3_B11_branch_out_c0_exe28943),
        .out_c0_exe2917(conv2d3x3_B11_branch_out_c0_exe2917),
        .out_c0_exe29944(conv2d3x3_B11_branch_out_c0_exe29944),
        .out_c0_exe30945(conv2d3x3_B11_branch_out_c0_exe30945),
        .out_c0_exe31946(conv2d3x3_B11_branch_out_c0_exe31946),
        .out_c0_exe33948(conv2d3x3_B11_branch_out_c0_exe33948),
        .out_c0_exe34949(conv2d3x3_B11_branch_out_c0_exe34949),
        .out_c0_exe35950(conv2d3x3_B11_branch_out_c0_exe35950),
        .out_c0_exe36951(conv2d3x3_B11_branch_out_c0_exe36951),
        .out_c0_exe37952(conv2d3x3_B11_branch_out_c0_exe37952),
        .out_c0_exe38953(conv2d3x3_B11_branch_out_c0_exe38953),
        .out_c0_exe3918(conv2d3x3_B11_branch_out_c0_exe3918),
        .out_c0_exe39954(conv2d3x3_B11_branch_out_c0_exe39954),
        .out_c0_exe40955(conv2d3x3_B11_branch_out_c0_exe40955),
        .out_c0_exe41956(conv2d3x3_B11_branch_out_c0_exe41956),
        .out_c0_exe42957(conv2d3x3_B11_branch_out_c0_exe42957),
        .out_c0_exe43958(conv2d3x3_B11_branch_out_c0_exe43958),
        .out_c0_exe44959(conv2d3x3_B11_branch_out_c0_exe44959),
        .out_c0_exe45960(conv2d3x3_B11_branch_out_c0_exe45960),
        .out_c0_exe46961(conv2d3x3_B11_branch_out_c0_exe46961),
        .out_c0_exe47962(conv2d3x3_B11_branch_out_c0_exe47962),
        .out_c0_exe48963(conv2d3x3_B11_branch_out_c0_exe48963),
        .out_c0_exe49964(conv2d3x3_B11_branch_out_c0_exe49964),
        .out_c0_exe50965(conv2d3x3_B11_branch_out_c0_exe50965),
        .out_c0_exe51966(conv2d3x3_B11_branch_out_c0_exe51966),
        .out_c0_exe5920(conv2d3x3_B11_branch_out_c0_exe5920),
        .out_c0_exe6921(conv2d3x3_B11_branch_out_c0_exe6921),
        .out_c0_exe8923(conv2d3x3_B11_branch_out_c0_exe8923),
        .out_c1_exe1983(conv2d3x3_B11_branch_out_c1_exe1983),
        .out_stall_out(conv2d3x3_B11_branch_out_stall_out),
        .out_valid_out_0(conv2d3x3_B11_branch_out_valid_out_0),
        .out_valid_out_1(conv2d3x3_B11_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10925(GPOUT,119)
    assign out_c0_exe10925 = conv2d3x3_B11_branch_out_c0_exe10925;

    // out_c0_exe13928(GPOUT,120)
    assign out_c0_exe13928 = conv2d3x3_B11_branch_out_c0_exe13928;

    // out_c0_exe14929(GPOUT,121)
    assign out_c0_exe14929 = conv2d3x3_B11_branch_out_c0_exe14929;

    // out_c0_exe15930(GPOUT,122)
    assign out_c0_exe15930 = conv2d3x3_B11_branch_out_c0_exe15930;

    // out_c0_exe16931(GPOUT,123)
    assign out_c0_exe16931 = conv2d3x3_B11_branch_out_c0_exe16931;

    // out_c0_exe17932(GPOUT,124)
    assign out_c0_exe17932 = conv2d3x3_B11_branch_out_c0_exe17932;

    // out_c0_exe18933(GPOUT,125)
    assign out_c0_exe18933 = conv2d3x3_B11_branch_out_c0_exe18933;

    // out_c0_exe19934(GPOUT,126)
    assign out_c0_exe19934 = conv2d3x3_B11_branch_out_c0_exe19934;

    // out_c0_exe20935(GPOUT,127)
    assign out_c0_exe20935 = conv2d3x3_B11_branch_out_c0_exe20935;

    // out_c0_exe21936(GPOUT,128)
    assign out_c0_exe21936 = conv2d3x3_B11_branch_out_c0_exe21936;

    // out_c0_exe22937(GPOUT,129)
    assign out_c0_exe22937 = conv2d3x3_B11_branch_out_c0_exe22937;

    // out_c0_exe23938(GPOUT,130)
    assign out_c0_exe23938 = conv2d3x3_B11_branch_out_c0_exe23938;

    // out_c0_exe24939(GPOUT,131)
    assign out_c0_exe24939 = conv2d3x3_B11_branch_out_c0_exe24939;

    // out_c0_exe25940(GPOUT,132)
    assign out_c0_exe25940 = conv2d3x3_B11_branch_out_c0_exe25940;

    // out_c0_exe26941(GPOUT,133)
    assign out_c0_exe26941 = conv2d3x3_B11_branch_out_c0_exe26941;

    // out_c0_exe27942(GPOUT,134)
    assign out_c0_exe27942 = conv2d3x3_B11_branch_out_c0_exe27942;

    // out_c0_exe28943(GPOUT,135)
    assign out_c0_exe28943 = conv2d3x3_B11_branch_out_c0_exe28943;

    // out_c0_exe2917(GPOUT,136)
    assign out_c0_exe2917 = conv2d3x3_B11_branch_out_c0_exe2917;

    // out_c0_exe29944(GPOUT,137)
    assign out_c0_exe29944 = conv2d3x3_B11_branch_out_c0_exe29944;

    // out_c0_exe30945(GPOUT,138)
    assign out_c0_exe30945 = conv2d3x3_B11_branch_out_c0_exe30945;

    // out_c0_exe31946(GPOUT,139)
    assign out_c0_exe31946 = conv2d3x3_B11_branch_out_c0_exe31946;

    // out_c0_exe33948(GPOUT,140)
    assign out_c0_exe33948 = conv2d3x3_B11_branch_out_c0_exe33948;

    // out_c0_exe34949(GPOUT,141)
    assign out_c0_exe34949 = conv2d3x3_B11_branch_out_c0_exe34949;

    // out_c0_exe35950(GPOUT,142)
    assign out_c0_exe35950 = conv2d3x3_B11_branch_out_c0_exe35950;

    // out_c0_exe36951(GPOUT,143)
    assign out_c0_exe36951 = conv2d3x3_B11_branch_out_c0_exe36951;

    // out_c0_exe37952(GPOUT,144)
    assign out_c0_exe37952 = conv2d3x3_B11_branch_out_c0_exe37952;

    // out_c0_exe38953(GPOUT,145)
    assign out_c0_exe38953 = conv2d3x3_B11_branch_out_c0_exe38953;

    // out_c0_exe3918(GPOUT,146)
    assign out_c0_exe3918 = conv2d3x3_B11_branch_out_c0_exe3918;

    // out_c0_exe39954(GPOUT,147)
    assign out_c0_exe39954 = conv2d3x3_B11_branch_out_c0_exe39954;

    // out_c0_exe40955(GPOUT,148)
    assign out_c0_exe40955 = conv2d3x3_B11_branch_out_c0_exe40955;

    // out_c0_exe41956(GPOUT,149)
    assign out_c0_exe41956 = conv2d3x3_B11_branch_out_c0_exe41956;

    // out_c0_exe42957(GPOUT,150)
    assign out_c0_exe42957 = conv2d3x3_B11_branch_out_c0_exe42957;

    // out_c0_exe43958(GPOUT,151)
    assign out_c0_exe43958 = conv2d3x3_B11_branch_out_c0_exe43958;

    // out_c0_exe44959(GPOUT,152)
    assign out_c0_exe44959 = conv2d3x3_B11_branch_out_c0_exe44959;

    // out_c0_exe45960(GPOUT,153)
    assign out_c0_exe45960 = conv2d3x3_B11_branch_out_c0_exe45960;

    // out_c0_exe46961(GPOUT,154)
    assign out_c0_exe46961 = conv2d3x3_B11_branch_out_c0_exe46961;

    // out_c0_exe47962(GPOUT,155)
    assign out_c0_exe47962 = conv2d3x3_B11_branch_out_c0_exe47962;

    // out_c0_exe48963(GPOUT,156)
    assign out_c0_exe48963 = conv2d3x3_B11_branch_out_c0_exe48963;

    // out_c0_exe49964(GPOUT,157)
    assign out_c0_exe49964 = conv2d3x3_B11_branch_out_c0_exe49964;

    // out_c0_exe50965(GPOUT,158)
    assign out_c0_exe50965 = conv2d3x3_B11_branch_out_c0_exe50965;

    // out_c0_exe51966(GPOUT,159)
    assign out_c0_exe51966 = conv2d3x3_B11_branch_out_c0_exe51966;

    // out_c0_exe5920(GPOUT,160)
    assign out_c0_exe5920 = conv2d3x3_B11_branch_out_c0_exe5920;

    // out_c0_exe6921(GPOUT,161)
    assign out_c0_exe6921 = conv2d3x3_B11_branch_out_c0_exe6921;

    // out_c0_exe8923(GPOUT,162)
    assign out_c0_exe8923 = conv2d3x3_B11_branch_out_c0_exe8923;

    // out_c1_exe1983(GPOUT,163)
    assign out_c1_exe1983 = conv2d3x3_B11_branch_out_c1_exe1983;

    // out_exiting_stall_out(GPOUT,164)
    assign out_exiting_stall_out = bb_conv2d3x3_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv2d3x38_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,165)
    assign out_exiting_valid_out = bb_conv2d3x3_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv2d3x38_exiting_valid_out;

    // out_lm13_conv2d3x3_avm_address(GPOUT,166)
    assign out_lm13_conv2d3x3_avm_address = bb_conv2d3x3_B11_stall_region_out_lm13_conv2d3x3_avm_address;

    // out_lm13_conv2d3x3_avm_burstcount(GPOUT,167)
    assign out_lm13_conv2d3x3_avm_burstcount = bb_conv2d3x3_B11_stall_region_out_lm13_conv2d3x3_avm_burstcount;

    // out_lm13_conv2d3x3_avm_byteenable(GPOUT,168)
    assign out_lm13_conv2d3x3_avm_byteenable = bb_conv2d3x3_B11_stall_region_out_lm13_conv2d3x3_avm_byteenable;

    // out_lm13_conv2d3x3_avm_enable(GPOUT,169)
    assign out_lm13_conv2d3x3_avm_enable = bb_conv2d3x3_B11_stall_region_out_lm13_conv2d3x3_avm_enable;

    // out_lm13_conv2d3x3_avm_read(GPOUT,170)
    assign out_lm13_conv2d3x3_avm_read = bb_conv2d3x3_B11_stall_region_out_lm13_conv2d3x3_avm_read;

    // out_lm13_conv2d3x3_avm_write(GPOUT,171)
    assign out_lm13_conv2d3x3_avm_write = bb_conv2d3x3_B11_stall_region_out_lm13_conv2d3x3_avm_write;

    // out_lm13_conv2d3x3_avm_writedata(GPOUT,172)
    assign out_lm13_conv2d3x3_avm_writedata = bb_conv2d3x3_B11_stall_region_out_lm13_conv2d3x3_avm_writedata;

    // out_lm15_conv2d3x3_avm_address(GPOUT,173)
    assign out_lm15_conv2d3x3_avm_address = bb_conv2d3x3_B11_stall_region_out_lm15_conv2d3x3_avm_address;

    // out_lm15_conv2d3x3_avm_burstcount(GPOUT,174)
    assign out_lm15_conv2d3x3_avm_burstcount = bb_conv2d3x3_B11_stall_region_out_lm15_conv2d3x3_avm_burstcount;

    // out_lm15_conv2d3x3_avm_byteenable(GPOUT,175)
    assign out_lm15_conv2d3x3_avm_byteenable = bb_conv2d3x3_B11_stall_region_out_lm15_conv2d3x3_avm_byteenable;

    // out_lm15_conv2d3x3_avm_enable(GPOUT,176)
    assign out_lm15_conv2d3x3_avm_enable = bb_conv2d3x3_B11_stall_region_out_lm15_conv2d3x3_avm_enable;

    // out_lm15_conv2d3x3_avm_read(GPOUT,177)
    assign out_lm15_conv2d3x3_avm_read = bb_conv2d3x3_B11_stall_region_out_lm15_conv2d3x3_avm_read;

    // out_lm15_conv2d3x3_avm_write(GPOUT,178)
    assign out_lm15_conv2d3x3_avm_write = bb_conv2d3x3_B11_stall_region_out_lm15_conv2d3x3_avm_write;

    // out_lm15_conv2d3x3_avm_writedata(GPOUT,179)
    assign out_lm15_conv2d3x3_avm_writedata = bb_conv2d3x3_B11_stall_region_out_lm15_conv2d3x3_avm_writedata;

    // out_stall_in_0(GPOUT,180)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,181)
    assign out_stall_out_0 = conv2d3x3_B11_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,182)
    assign out_stall_out_1 = conv2d3x3_B11_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,183)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,184)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,185)
    assign out_valid_out_0 = conv2d3x3_B11_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,186)
    assign out_valid_out_1 = conv2d3x3_B11_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,188)
    assign out_pipeline_valid_out = bb_conv2d3x3_B11_stall_region_out_pipeline_valid_out;

endmodule
