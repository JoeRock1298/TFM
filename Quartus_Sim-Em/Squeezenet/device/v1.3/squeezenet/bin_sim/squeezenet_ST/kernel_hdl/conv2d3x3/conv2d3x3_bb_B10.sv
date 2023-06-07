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

// SystemVerilog created from conv2d3x3_bb_B10
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B10 (
    input wire [31:0] in_add110380_0,
    input wire [31:0] in_add110380_1,
    input wire [31:0] in_add246_0,
    input wire [31:0] in_add246_1,
    input wire [31:0] in_add35396_0,
    input wire [31:0] in_add35396_1,
    input wire [0:0] in_cmp26120382_0,
    input wire [0:0] in_cmp26120382_1,
    input wire [0:0] in_cmp26264_0,
    input wire [0:0] in_cmp26264_1,
    input wire [0:0] in_cmp26_1135385_0,
    input wire [0:0] in_cmp26_1135385_1,
    input wire [0:0] in_cmp26_1291_0,
    input wire [0:0] in_cmp26_1291_1,
    input wire [0:0] in_cmp26_2150388_0,
    input wire [0:0] in_cmp26_2150388_1,
    input wire [0:0] in_cmp26_2318_0,
    input wire [0:0] in_cmp26_2318_1,
    input wire [0:0] in_cmp27125383_0,
    input wire [0:0] in_cmp27125383_1,
    input wire [0:0] in_cmp27273_0,
    input wire [0:0] in_cmp27273_1,
    input wire [0:0] in_cmp27_1140386_0,
    input wire [0:0] in_cmp27_1140386_1,
    input wire [0:0] in_cmp27_1300_0,
    input wire [0:0] in_cmp27_1300_1,
    input wire [0:0] in_cmp27_2155389_0,
    input wire [0:0] in_cmp27_2155389_1,
    input wire [0:0] in_cmp27_2327_0,
    input wire [0:0] in_cmp27_2327_1,
    input wire [63:0] in_filter_bias,
    input wire [63:0] in_filter_weight_addr_067_replace_phi203_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi203_1,
    input wire [63:0] in_filter_weight_addr_067_replace_phi85_pop19345_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi85_pop19345_1,
    input wire [63:0] in_filter_weight_addr_067_replace_phi87376_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi87376_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked57_0,
    input wire [0:0] in_forked57_1,
    input wire [31:0] in_inc50397_0,
    input wire [31:0] in_inc50397_1,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [31:0] in_j_061_pop24179394_0,
    input wire [31:0] in_j_061_pop24179394_1,
    input wire [31:0] in_k_059374_0,
    input wire [31:0] in_k_059374_1,
    input wire [31:0] in_lm25225_0,
    input wire [31:0] in_lm25225_1,
    input wire [31:0] in_lm2597_pop21363_0,
    input wire [31:0] in_lm2597_pop21363_1,
    input wire [31:0] in_lm2599378_0,
    input wire [31:0] in_lm2599378_1,
    input wire [511:0] in_lm8_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm8_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_lm8_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm8_conv2d3x3_avm_writeack,
    input wire [511:0] in_lm_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_lm_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm_conv2d3x3_avm_writeack,
    input wire [31:0] in_mul32395_0,
    input wire [31:0] in_mul32395_1,
    input wire [31:0] in_mul56115381_0,
    input wire [31:0] in_mul56115381_1,
    input wire [31:0] in_mul56255_0,
    input wire [31:0] in_mul56255_1,
    input wire [0:0] in_notcmp73175393_0,
    input wire [0:0] in_notcmp73175393_1,
    input wire [0:0] in_notcmp77160390_0,
    input wire [0:0] in_notcmp77160390_1,
    input wire [0:0] in_notcmp77336_0,
    input wire [0:0] in_notcmp77336_1,
    input wire [0:0] in_notcmp81103_pop22372_0,
    input wire [0:0] in_notcmp81103_pop22372_1,
    input wire [0:0] in_notcmp81105379_0,
    input wire [0:0] in_notcmp81105379_1,
    input wire [0:0] in_notcmp81236_0,
    input wire [0:0] in_notcmp81236_1,
    input wire [63:0] in_output_im_addr_068_replace_phi214_0,
    input wire [63:0] in_output_im_addr_068_replace_phi214_1,
    input wire [63:0] in_output_im_addr_068_replace_phi91_pop20354_0,
    input wire [63:0] in_output_im_addr_068_replace_phi91_pop20354_1,
    input wire [63:0] in_output_im_addr_068_replace_phi93377_0,
    input wire [63:0] in_output_im_addr_068_replace_phi93377_1,
    input wire [31:0] in_output_size,
    input wire [31:0] in_pad,
    input wire [31:0] in_pad_sync_buffer171392_0,
    input wire [31:0] in_pad_sync_buffer171392_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_stride,
    input wire [31:0] in_stride_sync_buffer167391_0,
    input wire [31:0] in_stride_sync_buffer167391_1,
    input wire [31:0] in_sub_1130384_0,
    input wire [31:0] in_sub_1130384_1,
    input wire [31:0] in_sub_1282_0,
    input wire [31:0] in_sub_1282_1,
    input wire [31:0] in_sub_2145387_0,
    input wire [31:0] in_sub_2145387_1,
    input wire [31:0] in_sub_2309_0,
    input wire [31:0] in_sub_2309_1,
    input wire [31:0] in_tmp_058375_0,
    input wire [31:0] in_tmp_058375_1,
    input wire [0:0] in_unnamed_conv2d3x320_0,
    input wire [0:0] in_unnamed_conv2d3x320_1,
    input wire [0:0] in_unnamed_conv2d3x321_0,
    input wire [0:0] in_unnamed_conv2d3x321_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe11741,
    output wire [63:0] out_c0_exe13743,
    output wire [63:0] out_c0_exe16746,
    output wire [31:0] out_c0_exe17747,
    output wire [0:0] out_c0_exe18748,
    output wire [31:0] out_c0_exe19749,
    output wire [31:0] out_c0_exe20750,
    output wire [31:0] out_c0_exe21751,
    output wire [0:0] out_c0_exe22752,
    output wire [0:0] out_c0_exe23753,
    output wire [31:0] out_c0_exe24754,
    output wire [0:0] out_c0_exe25755,
    output wire [0:0] out_c0_exe26756,
    output wire [31:0] out_c0_exe2732,
    output wire [0:0] out_c0_exe27757,
    output wire [0:0] out_c0_exe28758,
    output wire [31:0] out_c0_exe29759,
    output wire [31:0] out_c0_exe30760,
    output wire [0:0] out_c0_exe31761,
    output wire [63:0] out_c0_exe33763,
    output wire [63:0] out_c0_exe34764,
    output wire [31:0] out_c0_exe35765,
    output wire [0:0] out_c0_exe36766,
    output wire [31:0] out_c0_exe3733,
    output wire [31:0] out_c0_exe37767,
    output wire [31:0] out_c0_exe38768,
    output wire [0:0] out_c0_exe39769,
    output wire [0:0] out_c0_exe40,
    output wire [31:0] out_c0_exe41,
    output wire [0:0] out_c0_exe42,
    output wire [0:0] out_c0_exe43,
    output wire [31:0] out_c0_exe44,
    output wire [0:0] out_c0_exe45,
    output wire [0:0] out_c0_exe46,
    output wire [0:0] out_c0_exe47,
    output wire [31:0] out_c0_exe4734,
    output wire [63:0] out_c0_exe48,
    output wire [63:0] out_c0_exe49,
    output wire [31:0] out_c0_exe50,
    output wire [0:0] out_c0_exe51,
    output wire [31:0] out_c0_exe5735,
    output wire [31:0] out_c0_exe6736,
    output wire [0:0] out_c0_exe8738,
    output wire [0:0] out_c0_exe9739,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [30:0] out_lm8_conv2d3x3_avm_address,
    output wire [4:0] out_lm8_conv2d3x3_avm_burstcount,
    output wire [63:0] out_lm8_conv2d3x3_avm_byteenable,
    output wire [0:0] out_lm8_conv2d3x3_avm_enable,
    output wire [0:0] out_lm8_conv2d3x3_avm_read,
    output wire [0:0] out_lm8_conv2d3x3_avm_write,
    output wire [511:0] out_lm8_conv2d3x3_avm_writedata,
    output wire [30:0] out_lm_conv2d3x3_avm_address,
    output wire [4:0] out_lm_conv2d3x3_avm_burstcount,
    output wire [63:0] out_lm_conv2d3x3_avm_byteenable,
    output wire [0:0] out_lm_conv2d3x3_avm_enable,
    output wire [0:0] out_lm_conv2d3x3_avm_read,
    output wire [0:0] out_lm_conv2d3x3_avm_write,
    output wire [511:0] out_lm_conv2d3x3_avm_writedata,
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

    wire [0:0] bb_conv2d3x3_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_exiting_stall_out;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_exiting_valid_out;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe11741;
    wire [63:0] bb_conv2d3x3_B10_stall_region_out_c0_exe13743;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe15745;
    wire [63:0] bb_conv2d3x3_B10_stall_region_out_c0_exe16746;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_c0_exe17747;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe18748;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_c0_exe19749;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_c0_exe20750;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_c0_exe21751;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe22752;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe23753;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_c0_exe24754;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe25755;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe26756;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_c0_exe2732;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe27757;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe28758;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_c0_exe29759;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_c0_exe30760;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe31761;
    wire [63:0] bb_conv2d3x3_B10_stall_region_out_c0_exe33763;
    wire [63:0] bb_conv2d3x3_B10_stall_region_out_c0_exe34764;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_c0_exe35765;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe36766;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_c0_exe3733;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_c0_exe37767;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_c0_exe38768;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe39769;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe40;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_c0_exe41;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe42;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe43;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_c0_exe44;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe45;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe46;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe47;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_c0_exe4734;
    wire [63:0] bb_conv2d3x3_B10_stall_region_out_c0_exe48;
    wire [63:0] bb_conv2d3x3_B10_stall_region_out_c0_exe49;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_c0_exe50;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe51;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_c0_exe5735;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_c0_exe6736;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe8738;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_c0_exe9739;
    wire [31:0] bb_conv2d3x3_B10_stall_region_out_c1_exe1;
    wire [30:0] bb_conv2d3x3_B10_stall_region_out_lm8_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B10_stall_region_out_lm8_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B10_stall_region_out_lm8_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_lm8_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_lm8_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_lm8_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B10_stall_region_out_lm8_conv2d3x3_avm_writedata;
    wire [30:0] bb_conv2d3x3_B10_stall_region_out_lm_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B10_stall_region_out_lm_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B10_stall_region_out_lm_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_lm_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_lm_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_lm_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B10_stall_region_out_lm_conv2d3x3_avm_writedata;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_stall_out;
    wire [0:0] bb_conv2d3x3_B10_stall_region_out_valid_out;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe11741;
    wire [63:0] conv2d3x3_B10_branch_out_c0_exe13743;
    wire [63:0] conv2d3x3_B10_branch_out_c0_exe16746;
    wire [31:0] conv2d3x3_B10_branch_out_c0_exe17747;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe18748;
    wire [31:0] conv2d3x3_B10_branch_out_c0_exe19749;
    wire [31:0] conv2d3x3_B10_branch_out_c0_exe20750;
    wire [31:0] conv2d3x3_B10_branch_out_c0_exe21751;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe22752;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe23753;
    wire [31:0] conv2d3x3_B10_branch_out_c0_exe24754;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe25755;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe26756;
    wire [31:0] conv2d3x3_B10_branch_out_c0_exe2732;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe27757;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe28758;
    wire [31:0] conv2d3x3_B10_branch_out_c0_exe29759;
    wire [31:0] conv2d3x3_B10_branch_out_c0_exe30760;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe31761;
    wire [63:0] conv2d3x3_B10_branch_out_c0_exe33763;
    wire [63:0] conv2d3x3_B10_branch_out_c0_exe34764;
    wire [31:0] conv2d3x3_B10_branch_out_c0_exe35765;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe36766;
    wire [31:0] conv2d3x3_B10_branch_out_c0_exe3733;
    wire [31:0] conv2d3x3_B10_branch_out_c0_exe37767;
    wire [31:0] conv2d3x3_B10_branch_out_c0_exe38768;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe39769;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe40;
    wire [31:0] conv2d3x3_B10_branch_out_c0_exe41;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe42;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe43;
    wire [31:0] conv2d3x3_B10_branch_out_c0_exe44;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe45;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe46;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe47;
    wire [31:0] conv2d3x3_B10_branch_out_c0_exe4734;
    wire [63:0] conv2d3x3_B10_branch_out_c0_exe48;
    wire [63:0] conv2d3x3_B10_branch_out_c0_exe49;
    wire [31:0] conv2d3x3_B10_branch_out_c0_exe50;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe51;
    wire [31:0] conv2d3x3_B10_branch_out_c0_exe5735;
    wire [31:0] conv2d3x3_B10_branch_out_c0_exe6736;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe8738;
    wire [0:0] conv2d3x3_B10_branch_out_c0_exe9739;
    wire [31:0] conv2d3x3_B10_branch_out_c1_exe1;
    wire [0:0] conv2d3x3_B10_branch_out_stall_out;
    wire [0:0] conv2d3x3_B10_branch_out_valid_out_0;
    wire [0:0] conv2d3x3_B10_branch_out_valid_out_1;
    wire [31:0] conv2d3x3_B10_merge_out_add110380;
    wire [31:0] conv2d3x3_B10_merge_out_add246;
    wire [31:0] conv2d3x3_B10_merge_out_add35396;
    wire [0:0] conv2d3x3_B10_merge_out_cmp26120382;
    wire [0:0] conv2d3x3_B10_merge_out_cmp26264;
    wire [0:0] conv2d3x3_B10_merge_out_cmp26_1135385;
    wire [0:0] conv2d3x3_B10_merge_out_cmp26_1291;
    wire [0:0] conv2d3x3_B10_merge_out_cmp26_2150388;
    wire [0:0] conv2d3x3_B10_merge_out_cmp26_2318;
    wire [0:0] conv2d3x3_B10_merge_out_cmp27125383;
    wire [0:0] conv2d3x3_B10_merge_out_cmp27273;
    wire [0:0] conv2d3x3_B10_merge_out_cmp27_1140386;
    wire [0:0] conv2d3x3_B10_merge_out_cmp27_1300;
    wire [0:0] conv2d3x3_B10_merge_out_cmp27_2155389;
    wire [0:0] conv2d3x3_B10_merge_out_cmp27_2327;
    wire [63:0] conv2d3x3_B10_merge_out_filter_weight_addr_067_replace_phi203;
    wire [63:0] conv2d3x3_B10_merge_out_filter_weight_addr_067_replace_phi85_pop19345;
    wire [63:0] conv2d3x3_B10_merge_out_filter_weight_addr_067_replace_phi87376;
    wire [0:0] conv2d3x3_B10_merge_out_forked57;
    wire [31:0] conv2d3x3_B10_merge_out_inc50397;
    wire [31:0] conv2d3x3_B10_merge_out_j_061_pop24179394;
    wire [31:0] conv2d3x3_B10_merge_out_k_059374;
    wire [31:0] conv2d3x3_B10_merge_out_lm25225;
    wire [31:0] conv2d3x3_B10_merge_out_lm2597_pop21363;
    wire [31:0] conv2d3x3_B10_merge_out_lm2599378;
    wire [31:0] conv2d3x3_B10_merge_out_mul32395;
    wire [31:0] conv2d3x3_B10_merge_out_mul56115381;
    wire [31:0] conv2d3x3_B10_merge_out_mul56255;
    wire [0:0] conv2d3x3_B10_merge_out_notcmp73175393;
    wire [0:0] conv2d3x3_B10_merge_out_notcmp77160390;
    wire [0:0] conv2d3x3_B10_merge_out_notcmp77336;
    wire [0:0] conv2d3x3_B10_merge_out_notcmp81103_pop22372;
    wire [0:0] conv2d3x3_B10_merge_out_notcmp81105379;
    wire [0:0] conv2d3x3_B10_merge_out_notcmp81236;
    wire [63:0] conv2d3x3_B10_merge_out_output_im_addr_068_replace_phi214;
    wire [63:0] conv2d3x3_B10_merge_out_output_im_addr_068_replace_phi91_pop20354;
    wire [63:0] conv2d3x3_B10_merge_out_output_im_addr_068_replace_phi93377;
    wire [31:0] conv2d3x3_B10_merge_out_pad_sync_buffer171392;
    wire [0:0] conv2d3x3_B10_merge_out_stall_out_0;
    wire [0:0] conv2d3x3_B10_merge_out_stall_out_1;
    wire [31:0] conv2d3x3_B10_merge_out_stride_sync_buffer167391;
    wire [31:0] conv2d3x3_B10_merge_out_sub_1130384;
    wire [31:0] conv2d3x3_B10_merge_out_sub_1282;
    wire [31:0] conv2d3x3_B10_merge_out_sub_2145387;
    wire [31:0] conv2d3x3_B10_merge_out_sub_2309;
    wire [31:0] conv2d3x3_B10_merge_out_tmp_058375;
    wire [0:0] conv2d3x3_B10_merge_out_unnamed_conv2d3x320;
    wire [0:0] conv2d3x3_B10_merge_out_unnamed_conv2d3x321;
    wire [0:0] conv2d3x3_B10_merge_out_valid_out;


    // conv2d3x3_B10_merge(BLACKBOX,4)
    conv2d3x3_B10_merge theconv2d3x3_B10_merge (
        .in_add110380_0(in_add110380_0),
        .in_add110380_1(in_add110380_1),
        .in_add246_0(in_add246_0),
        .in_add246_1(in_add246_1),
        .in_add35396_0(in_add35396_0),
        .in_add35396_1(in_add35396_1),
        .in_cmp26120382_0(in_cmp26120382_0),
        .in_cmp26120382_1(in_cmp26120382_1),
        .in_cmp26264_0(in_cmp26264_0),
        .in_cmp26264_1(in_cmp26264_1),
        .in_cmp26_1135385_0(in_cmp26_1135385_0),
        .in_cmp26_1135385_1(in_cmp26_1135385_1),
        .in_cmp26_1291_0(in_cmp26_1291_0),
        .in_cmp26_1291_1(in_cmp26_1291_1),
        .in_cmp26_2150388_0(in_cmp26_2150388_0),
        .in_cmp26_2150388_1(in_cmp26_2150388_1),
        .in_cmp26_2318_0(in_cmp26_2318_0),
        .in_cmp26_2318_1(in_cmp26_2318_1),
        .in_cmp27125383_0(in_cmp27125383_0),
        .in_cmp27125383_1(in_cmp27125383_1),
        .in_cmp27273_0(in_cmp27273_0),
        .in_cmp27273_1(in_cmp27273_1),
        .in_cmp27_1140386_0(in_cmp27_1140386_0),
        .in_cmp27_1140386_1(in_cmp27_1140386_1),
        .in_cmp27_1300_0(in_cmp27_1300_0),
        .in_cmp27_1300_1(in_cmp27_1300_1),
        .in_cmp27_2155389_0(in_cmp27_2155389_0),
        .in_cmp27_2155389_1(in_cmp27_2155389_1),
        .in_cmp27_2327_0(in_cmp27_2327_0),
        .in_cmp27_2327_1(in_cmp27_2327_1),
        .in_filter_weight_addr_067_replace_phi203_0(in_filter_weight_addr_067_replace_phi203_0),
        .in_filter_weight_addr_067_replace_phi203_1(in_filter_weight_addr_067_replace_phi203_1),
        .in_filter_weight_addr_067_replace_phi85_pop19345_0(in_filter_weight_addr_067_replace_phi85_pop19345_0),
        .in_filter_weight_addr_067_replace_phi85_pop19345_1(in_filter_weight_addr_067_replace_phi85_pop19345_1),
        .in_filter_weight_addr_067_replace_phi87376_0(in_filter_weight_addr_067_replace_phi87376_0),
        .in_filter_weight_addr_067_replace_phi87376_1(in_filter_weight_addr_067_replace_phi87376_1),
        .in_forked57_0(in_forked57_0),
        .in_forked57_1(in_forked57_1),
        .in_inc50397_0(in_inc50397_0),
        .in_inc50397_1(in_inc50397_1),
        .in_j_061_pop24179394_0(in_j_061_pop24179394_0),
        .in_j_061_pop24179394_1(in_j_061_pop24179394_1),
        .in_k_059374_0(in_k_059374_0),
        .in_k_059374_1(in_k_059374_1),
        .in_lm25225_0(in_lm25225_0),
        .in_lm25225_1(in_lm25225_1),
        .in_lm2597_pop21363_0(in_lm2597_pop21363_0),
        .in_lm2597_pop21363_1(in_lm2597_pop21363_1),
        .in_lm2599378_0(in_lm2599378_0),
        .in_lm2599378_1(in_lm2599378_1),
        .in_mul32395_0(in_mul32395_0),
        .in_mul32395_1(in_mul32395_1),
        .in_mul56115381_0(in_mul56115381_0),
        .in_mul56115381_1(in_mul56115381_1),
        .in_mul56255_0(in_mul56255_0),
        .in_mul56255_1(in_mul56255_1),
        .in_notcmp73175393_0(in_notcmp73175393_0),
        .in_notcmp73175393_1(in_notcmp73175393_1),
        .in_notcmp77160390_0(in_notcmp77160390_0),
        .in_notcmp77160390_1(in_notcmp77160390_1),
        .in_notcmp77336_0(in_notcmp77336_0),
        .in_notcmp77336_1(in_notcmp77336_1),
        .in_notcmp81103_pop22372_0(in_notcmp81103_pop22372_0),
        .in_notcmp81103_pop22372_1(in_notcmp81103_pop22372_1),
        .in_notcmp81105379_0(in_notcmp81105379_0),
        .in_notcmp81105379_1(in_notcmp81105379_1),
        .in_notcmp81236_0(in_notcmp81236_0),
        .in_notcmp81236_1(in_notcmp81236_1),
        .in_output_im_addr_068_replace_phi214_0(in_output_im_addr_068_replace_phi214_0),
        .in_output_im_addr_068_replace_phi214_1(in_output_im_addr_068_replace_phi214_1),
        .in_output_im_addr_068_replace_phi91_pop20354_0(in_output_im_addr_068_replace_phi91_pop20354_0),
        .in_output_im_addr_068_replace_phi91_pop20354_1(in_output_im_addr_068_replace_phi91_pop20354_1),
        .in_output_im_addr_068_replace_phi93377_0(in_output_im_addr_068_replace_phi93377_0),
        .in_output_im_addr_068_replace_phi93377_1(in_output_im_addr_068_replace_phi93377_1),
        .in_pad_sync_buffer171392_0(in_pad_sync_buffer171392_0),
        .in_pad_sync_buffer171392_1(in_pad_sync_buffer171392_1),
        .in_stall_in(bb_conv2d3x3_B10_stall_region_out_stall_out),
        .in_stride_sync_buffer167391_0(in_stride_sync_buffer167391_0),
        .in_stride_sync_buffer167391_1(in_stride_sync_buffer167391_1),
        .in_sub_1130384_0(in_sub_1130384_0),
        .in_sub_1130384_1(in_sub_1130384_1),
        .in_sub_1282_0(in_sub_1282_0),
        .in_sub_1282_1(in_sub_1282_1),
        .in_sub_2145387_0(in_sub_2145387_0),
        .in_sub_2145387_1(in_sub_2145387_1),
        .in_sub_2309_0(in_sub_2309_0),
        .in_sub_2309_1(in_sub_2309_1),
        .in_tmp_058375_0(in_tmp_058375_0),
        .in_tmp_058375_1(in_tmp_058375_1),
        .in_unnamed_conv2d3x320_0(in_unnamed_conv2d3x320_0),
        .in_unnamed_conv2d3x320_1(in_unnamed_conv2d3x320_1),
        .in_unnamed_conv2d3x321_0(in_unnamed_conv2d3x321_0),
        .in_unnamed_conv2d3x321_1(in_unnamed_conv2d3x321_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add110380(conv2d3x3_B10_merge_out_add110380),
        .out_add246(conv2d3x3_B10_merge_out_add246),
        .out_add35396(conv2d3x3_B10_merge_out_add35396),
        .out_cmp26120382(conv2d3x3_B10_merge_out_cmp26120382),
        .out_cmp26264(conv2d3x3_B10_merge_out_cmp26264),
        .out_cmp26_1135385(conv2d3x3_B10_merge_out_cmp26_1135385),
        .out_cmp26_1291(conv2d3x3_B10_merge_out_cmp26_1291),
        .out_cmp26_2150388(conv2d3x3_B10_merge_out_cmp26_2150388),
        .out_cmp26_2318(conv2d3x3_B10_merge_out_cmp26_2318),
        .out_cmp27125383(conv2d3x3_B10_merge_out_cmp27125383),
        .out_cmp27273(conv2d3x3_B10_merge_out_cmp27273),
        .out_cmp27_1140386(conv2d3x3_B10_merge_out_cmp27_1140386),
        .out_cmp27_1300(conv2d3x3_B10_merge_out_cmp27_1300),
        .out_cmp27_2155389(conv2d3x3_B10_merge_out_cmp27_2155389),
        .out_cmp27_2327(conv2d3x3_B10_merge_out_cmp27_2327),
        .out_filter_weight_addr_067_replace_phi203(conv2d3x3_B10_merge_out_filter_weight_addr_067_replace_phi203),
        .out_filter_weight_addr_067_replace_phi85_pop19345(conv2d3x3_B10_merge_out_filter_weight_addr_067_replace_phi85_pop19345),
        .out_filter_weight_addr_067_replace_phi87376(conv2d3x3_B10_merge_out_filter_weight_addr_067_replace_phi87376),
        .out_forked57(conv2d3x3_B10_merge_out_forked57),
        .out_inc50397(conv2d3x3_B10_merge_out_inc50397),
        .out_j_061_pop24179394(conv2d3x3_B10_merge_out_j_061_pop24179394),
        .out_k_059374(conv2d3x3_B10_merge_out_k_059374),
        .out_lm25225(conv2d3x3_B10_merge_out_lm25225),
        .out_lm2597_pop21363(conv2d3x3_B10_merge_out_lm2597_pop21363),
        .out_lm2599378(conv2d3x3_B10_merge_out_lm2599378),
        .out_mul32395(conv2d3x3_B10_merge_out_mul32395),
        .out_mul56115381(conv2d3x3_B10_merge_out_mul56115381),
        .out_mul56255(conv2d3x3_B10_merge_out_mul56255),
        .out_notcmp73175393(conv2d3x3_B10_merge_out_notcmp73175393),
        .out_notcmp77160390(conv2d3x3_B10_merge_out_notcmp77160390),
        .out_notcmp77336(conv2d3x3_B10_merge_out_notcmp77336),
        .out_notcmp81103_pop22372(conv2d3x3_B10_merge_out_notcmp81103_pop22372),
        .out_notcmp81105379(conv2d3x3_B10_merge_out_notcmp81105379),
        .out_notcmp81236(conv2d3x3_B10_merge_out_notcmp81236),
        .out_output_im_addr_068_replace_phi214(conv2d3x3_B10_merge_out_output_im_addr_068_replace_phi214),
        .out_output_im_addr_068_replace_phi91_pop20354(conv2d3x3_B10_merge_out_output_im_addr_068_replace_phi91_pop20354),
        .out_output_im_addr_068_replace_phi93377(conv2d3x3_B10_merge_out_output_im_addr_068_replace_phi93377),
        .out_pad_sync_buffer171392(conv2d3x3_B10_merge_out_pad_sync_buffer171392),
        .out_stall_out_0(conv2d3x3_B10_merge_out_stall_out_0),
        .out_stall_out_1(conv2d3x3_B10_merge_out_stall_out_1),
        .out_stride_sync_buffer167391(conv2d3x3_B10_merge_out_stride_sync_buffer167391),
        .out_sub_1130384(conv2d3x3_B10_merge_out_sub_1130384),
        .out_sub_1282(conv2d3x3_B10_merge_out_sub_1282),
        .out_sub_2145387(conv2d3x3_B10_merge_out_sub_2145387),
        .out_sub_2309(conv2d3x3_B10_merge_out_sub_2309),
        .out_tmp_058375(conv2d3x3_B10_merge_out_tmp_058375),
        .out_unnamed_conv2d3x320(conv2d3x3_B10_merge_out_unnamed_conv2d3x320),
        .out_unnamed_conv2d3x321(conv2d3x3_B10_merge_out_unnamed_conv2d3x321),
        .out_valid_out(conv2d3x3_B10_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B10_stall_region(BLACKBOX,2)
    conv2d3x3_bb_B10_stall_region thebb_conv2d3x3_B10_stall_region (
        .in_add110380(conv2d3x3_B10_merge_out_add110380),
        .in_add246(conv2d3x3_B10_merge_out_add246),
        .in_add35396(conv2d3x3_B10_merge_out_add35396),
        .in_cmp26120382(conv2d3x3_B10_merge_out_cmp26120382),
        .in_cmp26264(conv2d3x3_B10_merge_out_cmp26264),
        .in_cmp26_1135385(conv2d3x3_B10_merge_out_cmp26_1135385),
        .in_cmp26_1291(conv2d3x3_B10_merge_out_cmp26_1291),
        .in_cmp26_2150388(conv2d3x3_B10_merge_out_cmp26_2150388),
        .in_cmp26_2318(conv2d3x3_B10_merge_out_cmp26_2318),
        .in_cmp27125383(conv2d3x3_B10_merge_out_cmp27125383),
        .in_cmp27273(conv2d3x3_B10_merge_out_cmp27273),
        .in_cmp27_1140386(conv2d3x3_B10_merge_out_cmp27_1140386),
        .in_cmp27_1300(conv2d3x3_B10_merge_out_cmp27_1300),
        .in_cmp27_2155389(conv2d3x3_B10_merge_out_cmp27_2155389),
        .in_cmp27_2327(conv2d3x3_B10_merge_out_cmp27_2327),
        .in_filter_weight_addr_067_replace_phi203(conv2d3x3_B10_merge_out_filter_weight_addr_067_replace_phi203),
        .in_filter_weight_addr_067_replace_phi85_pop19345(conv2d3x3_B10_merge_out_filter_weight_addr_067_replace_phi85_pop19345),
        .in_filter_weight_addr_067_replace_phi87376(conv2d3x3_B10_merge_out_filter_weight_addr_067_replace_phi87376),
        .in_flush(in_flush),
        .in_forked57(conv2d3x3_B10_merge_out_forked57),
        .in_inc50397(conv2d3x3_B10_merge_out_inc50397),
        .in_input_im(in_input_im),
        .in_input_size(in_input_size),
        .in_j_061_pop24179394(conv2d3x3_B10_merge_out_j_061_pop24179394),
        .in_k_059374(conv2d3x3_B10_merge_out_k_059374),
        .in_lm25225(conv2d3x3_B10_merge_out_lm25225),
        .in_lm2597_pop21363(conv2d3x3_B10_merge_out_lm2597_pop21363),
        .in_lm2599378(conv2d3x3_B10_merge_out_lm2599378),
        .in_lm8_conv2d3x3_avm_readdata(in_lm8_conv2d3x3_avm_readdata),
        .in_lm8_conv2d3x3_avm_readdatavalid(in_lm8_conv2d3x3_avm_readdatavalid),
        .in_lm8_conv2d3x3_avm_waitrequest(in_lm8_conv2d3x3_avm_waitrequest),
        .in_lm8_conv2d3x3_avm_writeack(in_lm8_conv2d3x3_avm_writeack),
        .in_lm_conv2d3x3_avm_readdata(in_lm_conv2d3x3_avm_readdata),
        .in_lm_conv2d3x3_avm_readdatavalid(in_lm_conv2d3x3_avm_readdatavalid),
        .in_lm_conv2d3x3_avm_waitrequest(in_lm_conv2d3x3_avm_waitrequest),
        .in_lm_conv2d3x3_avm_writeack(in_lm_conv2d3x3_avm_writeack),
        .in_mul32395(conv2d3x3_B10_merge_out_mul32395),
        .in_mul56115381(conv2d3x3_B10_merge_out_mul56115381),
        .in_mul56255(conv2d3x3_B10_merge_out_mul56255),
        .in_notcmp73175393(conv2d3x3_B10_merge_out_notcmp73175393),
        .in_notcmp77160390(conv2d3x3_B10_merge_out_notcmp77160390),
        .in_notcmp77336(conv2d3x3_B10_merge_out_notcmp77336),
        .in_notcmp81103_pop22372(conv2d3x3_B10_merge_out_notcmp81103_pop22372),
        .in_notcmp81105379(conv2d3x3_B10_merge_out_notcmp81105379),
        .in_notcmp81236(conv2d3x3_B10_merge_out_notcmp81236),
        .in_output_im_addr_068_replace_phi214(conv2d3x3_B10_merge_out_output_im_addr_068_replace_phi214),
        .in_output_im_addr_068_replace_phi91_pop20354(conv2d3x3_B10_merge_out_output_im_addr_068_replace_phi91_pop20354),
        .in_output_im_addr_068_replace_phi93377(conv2d3x3_B10_merge_out_output_im_addr_068_replace_phi93377),
        .in_pad_sync_buffer171392(conv2d3x3_B10_merge_out_pad_sync_buffer171392),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(conv2d3x3_B10_branch_out_stall_out),
        .in_stride_sync_buffer167391(conv2d3x3_B10_merge_out_stride_sync_buffer167391),
        .in_sub_1130384(conv2d3x3_B10_merge_out_sub_1130384),
        .in_sub_1282(conv2d3x3_B10_merge_out_sub_1282),
        .in_sub_2145387(conv2d3x3_B10_merge_out_sub_2145387),
        .in_sub_2309(conv2d3x3_B10_merge_out_sub_2309),
        .in_tmp_058375(conv2d3x3_B10_merge_out_tmp_058375),
        .in_unnamed_conv2d3x320(conv2d3x3_B10_merge_out_unnamed_conv2d3x320),
        .in_unnamed_conv2d3x321(conv2d3x3_B10_merge_out_unnamed_conv2d3x321),
        .in_valid_in(conv2d3x3_B10_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_exiting_stall_out(bb_conv2d3x3_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_exiting_valid_out(bb_conv2d3x3_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_exiting_valid_out),
        .out_c0_exe11741(bb_conv2d3x3_B10_stall_region_out_c0_exe11741),
        .out_c0_exe13743(bb_conv2d3x3_B10_stall_region_out_c0_exe13743),
        .out_c0_exe15745(bb_conv2d3x3_B10_stall_region_out_c0_exe15745),
        .out_c0_exe16746(bb_conv2d3x3_B10_stall_region_out_c0_exe16746),
        .out_c0_exe17747(bb_conv2d3x3_B10_stall_region_out_c0_exe17747),
        .out_c0_exe18748(bb_conv2d3x3_B10_stall_region_out_c0_exe18748),
        .out_c0_exe19749(bb_conv2d3x3_B10_stall_region_out_c0_exe19749),
        .out_c0_exe20750(bb_conv2d3x3_B10_stall_region_out_c0_exe20750),
        .out_c0_exe21751(bb_conv2d3x3_B10_stall_region_out_c0_exe21751),
        .out_c0_exe22752(bb_conv2d3x3_B10_stall_region_out_c0_exe22752),
        .out_c0_exe23753(bb_conv2d3x3_B10_stall_region_out_c0_exe23753),
        .out_c0_exe24754(bb_conv2d3x3_B10_stall_region_out_c0_exe24754),
        .out_c0_exe25755(bb_conv2d3x3_B10_stall_region_out_c0_exe25755),
        .out_c0_exe26756(bb_conv2d3x3_B10_stall_region_out_c0_exe26756),
        .out_c0_exe2732(bb_conv2d3x3_B10_stall_region_out_c0_exe2732),
        .out_c0_exe27757(bb_conv2d3x3_B10_stall_region_out_c0_exe27757),
        .out_c0_exe28758(bb_conv2d3x3_B10_stall_region_out_c0_exe28758),
        .out_c0_exe29759(bb_conv2d3x3_B10_stall_region_out_c0_exe29759),
        .out_c0_exe30760(bb_conv2d3x3_B10_stall_region_out_c0_exe30760),
        .out_c0_exe31761(bb_conv2d3x3_B10_stall_region_out_c0_exe31761),
        .out_c0_exe33763(bb_conv2d3x3_B10_stall_region_out_c0_exe33763),
        .out_c0_exe34764(bb_conv2d3x3_B10_stall_region_out_c0_exe34764),
        .out_c0_exe35765(bb_conv2d3x3_B10_stall_region_out_c0_exe35765),
        .out_c0_exe36766(bb_conv2d3x3_B10_stall_region_out_c0_exe36766),
        .out_c0_exe3733(bb_conv2d3x3_B10_stall_region_out_c0_exe3733),
        .out_c0_exe37767(bb_conv2d3x3_B10_stall_region_out_c0_exe37767),
        .out_c0_exe38768(bb_conv2d3x3_B10_stall_region_out_c0_exe38768),
        .out_c0_exe39769(bb_conv2d3x3_B10_stall_region_out_c0_exe39769),
        .out_c0_exe40(bb_conv2d3x3_B10_stall_region_out_c0_exe40),
        .out_c0_exe41(bb_conv2d3x3_B10_stall_region_out_c0_exe41),
        .out_c0_exe42(bb_conv2d3x3_B10_stall_region_out_c0_exe42),
        .out_c0_exe43(bb_conv2d3x3_B10_stall_region_out_c0_exe43),
        .out_c0_exe44(bb_conv2d3x3_B10_stall_region_out_c0_exe44),
        .out_c0_exe45(bb_conv2d3x3_B10_stall_region_out_c0_exe45),
        .out_c0_exe46(bb_conv2d3x3_B10_stall_region_out_c0_exe46),
        .out_c0_exe47(bb_conv2d3x3_B10_stall_region_out_c0_exe47),
        .out_c0_exe4734(bb_conv2d3x3_B10_stall_region_out_c0_exe4734),
        .out_c0_exe48(bb_conv2d3x3_B10_stall_region_out_c0_exe48),
        .out_c0_exe49(bb_conv2d3x3_B10_stall_region_out_c0_exe49),
        .out_c0_exe50(bb_conv2d3x3_B10_stall_region_out_c0_exe50),
        .out_c0_exe51(bb_conv2d3x3_B10_stall_region_out_c0_exe51),
        .out_c0_exe5735(bb_conv2d3x3_B10_stall_region_out_c0_exe5735),
        .out_c0_exe6736(bb_conv2d3x3_B10_stall_region_out_c0_exe6736),
        .out_c0_exe8738(bb_conv2d3x3_B10_stall_region_out_c0_exe8738),
        .out_c0_exe9739(bb_conv2d3x3_B10_stall_region_out_c0_exe9739),
        .out_c1_exe1(bb_conv2d3x3_B10_stall_region_out_c1_exe1),
        .out_lm8_conv2d3x3_avm_address(bb_conv2d3x3_B10_stall_region_out_lm8_conv2d3x3_avm_address),
        .out_lm8_conv2d3x3_avm_burstcount(bb_conv2d3x3_B10_stall_region_out_lm8_conv2d3x3_avm_burstcount),
        .out_lm8_conv2d3x3_avm_byteenable(bb_conv2d3x3_B10_stall_region_out_lm8_conv2d3x3_avm_byteenable),
        .out_lm8_conv2d3x3_avm_enable(bb_conv2d3x3_B10_stall_region_out_lm8_conv2d3x3_avm_enable),
        .out_lm8_conv2d3x3_avm_read(bb_conv2d3x3_B10_stall_region_out_lm8_conv2d3x3_avm_read),
        .out_lm8_conv2d3x3_avm_write(bb_conv2d3x3_B10_stall_region_out_lm8_conv2d3x3_avm_write),
        .out_lm8_conv2d3x3_avm_writedata(bb_conv2d3x3_B10_stall_region_out_lm8_conv2d3x3_avm_writedata),
        .out_lm_conv2d3x3_avm_address(bb_conv2d3x3_B10_stall_region_out_lm_conv2d3x3_avm_address),
        .out_lm_conv2d3x3_avm_burstcount(bb_conv2d3x3_B10_stall_region_out_lm_conv2d3x3_avm_burstcount),
        .out_lm_conv2d3x3_avm_byteenable(bb_conv2d3x3_B10_stall_region_out_lm_conv2d3x3_avm_byteenable),
        .out_lm_conv2d3x3_avm_enable(bb_conv2d3x3_B10_stall_region_out_lm_conv2d3x3_avm_enable),
        .out_lm_conv2d3x3_avm_read(bb_conv2d3x3_B10_stall_region_out_lm_conv2d3x3_avm_read),
        .out_lm_conv2d3x3_avm_write(bb_conv2d3x3_B10_stall_region_out_lm_conv2d3x3_avm_write),
        .out_lm_conv2d3x3_avm_writedata(bb_conv2d3x3_B10_stall_region_out_lm_conv2d3x3_avm_writedata),
        .out_pipeline_valid_out(bb_conv2d3x3_B10_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv2d3x3_B10_stall_region_out_stall_out),
        .out_valid_out(bb_conv2d3x3_B10_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d3x3_B10_branch(BLACKBOX,3)
    conv2d3x3_B10_branch theconv2d3x3_B10_branch (
        .in_c0_exe11741(bb_conv2d3x3_B10_stall_region_out_c0_exe11741),
        .in_c0_exe13743(bb_conv2d3x3_B10_stall_region_out_c0_exe13743),
        .in_c0_exe15745(bb_conv2d3x3_B10_stall_region_out_c0_exe15745),
        .in_c0_exe16746(bb_conv2d3x3_B10_stall_region_out_c0_exe16746),
        .in_c0_exe17747(bb_conv2d3x3_B10_stall_region_out_c0_exe17747),
        .in_c0_exe18748(bb_conv2d3x3_B10_stall_region_out_c0_exe18748),
        .in_c0_exe19749(bb_conv2d3x3_B10_stall_region_out_c0_exe19749),
        .in_c0_exe20750(bb_conv2d3x3_B10_stall_region_out_c0_exe20750),
        .in_c0_exe21751(bb_conv2d3x3_B10_stall_region_out_c0_exe21751),
        .in_c0_exe22752(bb_conv2d3x3_B10_stall_region_out_c0_exe22752),
        .in_c0_exe23753(bb_conv2d3x3_B10_stall_region_out_c0_exe23753),
        .in_c0_exe24754(bb_conv2d3x3_B10_stall_region_out_c0_exe24754),
        .in_c0_exe25755(bb_conv2d3x3_B10_stall_region_out_c0_exe25755),
        .in_c0_exe26756(bb_conv2d3x3_B10_stall_region_out_c0_exe26756),
        .in_c0_exe2732(bb_conv2d3x3_B10_stall_region_out_c0_exe2732),
        .in_c0_exe27757(bb_conv2d3x3_B10_stall_region_out_c0_exe27757),
        .in_c0_exe28758(bb_conv2d3x3_B10_stall_region_out_c0_exe28758),
        .in_c0_exe29759(bb_conv2d3x3_B10_stall_region_out_c0_exe29759),
        .in_c0_exe30760(bb_conv2d3x3_B10_stall_region_out_c0_exe30760),
        .in_c0_exe31761(bb_conv2d3x3_B10_stall_region_out_c0_exe31761),
        .in_c0_exe33763(bb_conv2d3x3_B10_stall_region_out_c0_exe33763),
        .in_c0_exe34764(bb_conv2d3x3_B10_stall_region_out_c0_exe34764),
        .in_c0_exe35765(bb_conv2d3x3_B10_stall_region_out_c0_exe35765),
        .in_c0_exe36766(bb_conv2d3x3_B10_stall_region_out_c0_exe36766),
        .in_c0_exe3733(bb_conv2d3x3_B10_stall_region_out_c0_exe3733),
        .in_c0_exe37767(bb_conv2d3x3_B10_stall_region_out_c0_exe37767),
        .in_c0_exe38768(bb_conv2d3x3_B10_stall_region_out_c0_exe38768),
        .in_c0_exe39769(bb_conv2d3x3_B10_stall_region_out_c0_exe39769),
        .in_c0_exe40(bb_conv2d3x3_B10_stall_region_out_c0_exe40),
        .in_c0_exe41(bb_conv2d3x3_B10_stall_region_out_c0_exe41),
        .in_c0_exe42(bb_conv2d3x3_B10_stall_region_out_c0_exe42),
        .in_c0_exe43(bb_conv2d3x3_B10_stall_region_out_c0_exe43),
        .in_c0_exe44(bb_conv2d3x3_B10_stall_region_out_c0_exe44),
        .in_c0_exe45(bb_conv2d3x3_B10_stall_region_out_c0_exe45),
        .in_c0_exe46(bb_conv2d3x3_B10_stall_region_out_c0_exe46),
        .in_c0_exe47(bb_conv2d3x3_B10_stall_region_out_c0_exe47),
        .in_c0_exe4734(bb_conv2d3x3_B10_stall_region_out_c0_exe4734),
        .in_c0_exe48(bb_conv2d3x3_B10_stall_region_out_c0_exe48),
        .in_c0_exe49(bb_conv2d3x3_B10_stall_region_out_c0_exe49),
        .in_c0_exe50(bb_conv2d3x3_B10_stall_region_out_c0_exe50),
        .in_c0_exe51(bb_conv2d3x3_B10_stall_region_out_c0_exe51),
        .in_c0_exe5735(bb_conv2d3x3_B10_stall_region_out_c0_exe5735),
        .in_c0_exe6736(bb_conv2d3x3_B10_stall_region_out_c0_exe6736),
        .in_c0_exe8738(bb_conv2d3x3_B10_stall_region_out_c0_exe8738),
        .in_c0_exe9739(bb_conv2d3x3_B10_stall_region_out_c0_exe9739),
        .in_c1_exe1(bb_conv2d3x3_B10_stall_region_out_c1_exe1),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv2d3x3_B10_stall_region_out_valid_out),
        .out_c0_exe11741(conv2d3x3_B10_branch_out_c0_exe11741),
        .out_c0_exe13743(conv2d3x3_B10_branch_out_c0_exe13743),
        .out_c0_exe16746(conv2d3x3_B10_branch_out_c0_exe16746),
        .out_c0_exe17747(conv2d3x3_B10_branch_out_c0_exe17747),
        .out_c0_exe18748(conv2d3x3_B10_branch_out_c0_exe18748),
        .out_c0_exe19749(conv2d3x3_B10_branch_out_c0_exe19749),
        .out_c0_exe20750(conv2d3x3_B10_branch_out_c0_exe20750),
        .out_c0_exe21751(conv2d3x3_B10_branch_out_c0_exe21751),
        .out_c0_exe22752(conv2d3x3_B10_branch_out_c0_exe22752),
        .out_c0_exe23753(conv2d3x3_B10_branch_out_c0_exe23753),
        .out_c0_exe24754(conv2d3x3_B10_branch_out_c0_exe24754),
        .out_c0_exe25755(conv2d3x3_B10_branch_out_c0_exe25755),
        .out_c0_exe26756(conv2d3x3_B10_branch_out_c0_exe26756),
        .out_c0_exe2732(conv2d3x3_B10_branch_out_c0_exe2732),
        .out_c0_exe27757(conv2d3x3_B10_branch_out_c0_exe27757),
        .out_c0_exe28758(conv2d3x3_B10_branch_out_c0_exe28758),
        .out_c0_exe29759(conv2d3x3_B10_branch_out_c0_exe29759),
        .out_c0_exe30760(conv2d3x3_B10_branch_out_c0_exe30760),
        .out_c0_exe31761(conv2d3x3_B10_branch_out_c0_exe31761),
        .out_c0_exe33763(conv2d3x3_B10_branch_out_c0_exe33763),
        .out_c0_exe34764(conv2d3x3_B10_branch_out_c0_exe34764),
        .out_c0_exe35765(conv2d3x3_B10_branch_out_c0_exe35765),
        .out_c0_exe36766(conv2d3x3_B10_branch_out_c0_exe36766),
        .out_c0_exe3733(conv2d3x3_B10_branch_out_c0_exe3733),
        .out_c0_exe37767(conv2d3x3_B10_branch_out_c0_exe37767),
        .out_c0_exe38768(conv2d3x3_B10_branch_out_c0_exe38768),
        .out_c0_exe39769(conv2d3x3_B10_branch_out_c0_exe39769),
        .out_c0_exe40(conv2d3x3_B10_branch_out_c0_exe40),
        .out_c0_exe41(conv2d3x3_B10_branch_out_c0_exe41),
        .out_c0_exe42(conv2d3x3_B10_branch_out_c0_exe42),
        .out_c0_exe43(conv2d3x3_B10_branch_out_c0_exe43),
        .out_c0_exe44(conv2d3x3_B10_branch_out_c0_exe44),
        .out_c0_exe45(conv2d3x3_B10_branch_out_c0_exe45),
        .out_c0_exe46(conv2d3x3_B10_branch_out_c0_exe46),
        .out_c0_exe47(conv2d3x3_B10_branch_out_c0_exe47),
        .out_c0_exe4734(conv2d3x3_B10_branch_out_c0_exe4734),
        .out_c0_exe48(conv2d3x3_B10_branch_out_c0_exe48),
        .out_c0_exe49(conv2d3x3_B10_branch_out_c0_exe49),
        .out_c0_exe50(conv2d3x3_B10_branch_out_c0_exe50),
        .out_c0_exe51(conv2d3x3_B10_branch_out_c0_exe51),
        .out_c0_exe5735(conv2d3x3_B10_branch_out_c0_exe5735),
        .out_c0_exe6736(conv2d3x3_B10_branch_out_c0_exe6736),
        .out_c0_exe8738(conv2d3x3_B10_branch_out_c0_exe8738),
        .out_c0_exe9739(conv2d3x3_B10_branch_out_c0_exe9739),
        .out_c1_exe1(conv2d3x3_B10_branch_out_c1_exe1),
        .out_stall_out(conv2d3x3_B10_branch_out_stall_out),
        .out_valid_out_0(conv2d3x3_B10_branch_out_valid_out_0),
        .out_valid_out_1(conv2d3x3_B10_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe11741(GPOUT,117)
    assign out_c0_exe11741 = conv2d3x3_B10_branch_out_c0_exe11741;

    // out_c0_exe13743(GPOUT,118)
    assign out_c0_exe13743 = conv2d3x3_B10_branch_out_c0_exe13743;

    // out_c0_exe16746(GPOUT,119)
    assign out_c0_exe16746 = conv2d3x3_B10_branch_out_c0_exe16746;

    // out_c0_exe17747(GPOUT,120)
    assign out_c0_exe17747 = conv2d3x3_B10_branch_out_c0_exe17747;

    // out_c0_exe18748(GPOUT,121)
    assign out_c0_exe18748 = conv2d3x3_B10_branch_out_c0_exe18748;

    // out_c0_exe19749(GPOUT,122)
    assign out_c0_exe19749 = conv2d3x3_B10_branch_out_c0_exe19749;

    // out_c0_exe20750(GPOUT,123)
    assign out_c0_exe20750 = conv2d3x3_B10_branch_out_c0_exe20750;

    // out_c0_exe21751(GPOUT,124)
    assign out_c0_exe21751 = conv2d3x3_B10_branch_out_c0_exe21751;

    // out_c0_exe22752(GPOUT,125)
    assign out_c0_exe22752 = conv2d3x3_B10_branch_out_c0_exe22752;

    // out_c0_exe23753(GPOUT,126)
    assign out_c0_exe23753 = conv2d3x3_B10_branch_out_c0_exe23753;

    // out_c0_exe24754(GPOUT,127)
    assign out_c0_exe24754 = conv2d3x3_B10_branch_out_c0_exe24754;

    // out_c0_exe25755(GPOUT,128)
    assign out_c0_exe25755 = conv2d3x3_B10_branch_out_c0_exe25755;

    // out_c0_exe26756(GPOUT,129)
    assign out_c0_exe26756 = conv2d3x3_B10_branch_out_c0_exe26756;

    // out_c0_exe2732(GPOUT,130)
    assign out_c0_exe2732 = conv2d3x3_B10_branch_out_c0_exe2732;

    // out_c0_exe27757(GPOUT,131)
    assign out_c0_exe27757 = conv2d3x3_B10_branch_out_c0_exe27757;

    // out_c0_exe28758(GPOUT,132)
    assign out_c0_exe28758 = conv2d3x3_B10_branch_out_c0_exe28758;

    // out_c0_exe29759(GPOUT,133)
    assign out_c0_exe29759 = conv2d3x3_B10_branch_out_c0_exe29759;

    // out_c0_exe30760(GPOUT,134)
    assign out_c0_exe30760 = conv2d3x3_B10_branch_out_c0_exe30760;

    // out_c0_exe31761(GPOUT,135)
    assign out_c0_exe31761 = conv2d3x3_B10_branch_out_c0_exe31761;

    // out_c0_exe33763(GPOUT,136)
    assign out_c0_exe33763 = conv2d3x3_B10_branch_out_c0_exe33763;

    // out_c0_exe34764(GPOUT,137)
    assign out_c0_exe34764 = conv2d3x3_B10_branch_out_c0_exe34764;

    // out_c0_exe35765(GPOUT,138)
    assign out_c0_exe35765 = conv2d3x3_B10_branch_out_c0_exe35765;

    // out_c0_exe36766(GPOUT,139)
    assign out_c0_exe36766 = conv2d3x3_B10_branch_out_c0_exe36766;

    // out_c0_exe3733(GPOUT,140)
    assign out_c0_exe3733 = conv2d3x3_B10_branch_out_c0_exe3733;

    // out_c0_exe37767(GPOUT,141)
    assign out_c0_exe37767 = conv2d3x3_B10_branch_out_c0_exe37767;

    // out_c0_exe38768(GPOUT,142)
    assign out_c0_exe38768 = conv2d3x3_B10_branch_out_c0_exe38768;

    // out_c0_exe39769(GPOUT,143)
    assign out_c0_exe39769 = conv2d3x3_B10_branch_out_c0_exe39769;

    // out_c0_exe40(GPOUT,144)
    assign out_c0_exe40 = conv2d3x3_B10_branch_out_c0_exe40;

    // out_c0_exe41(GPOUT,145)
    assign out_c0_exe41 = conv2d3x3_B10_branch_out_c0_exe41;

    // out_c0_exe42(GPOUT,146)
    assign out_c0_exe42 = conv2d3x3_B10_branch_out_c0_exe42;

    // out_c0_exe43(GPOUT,147)
    assign out_c0_exe43 = conv2d3x3_B10_branch_out_c0_exe43;

    // out_c0_exe44(GPOUT,148)
    assign out_c0_exe44 = conv2d3x3_B10_branch_out_c0_exe44;

    // out_c0_exe45(GPOUT,149)
    assign out_c0_exe45 = conv2d3x3_B10_branch_out_c0_exe45;

    // out_c0_exe46(GPOUT,150)
    assign out_c0_exe46 = conv2d3x3_B10_branch_out_c0_exe46;

    // out_c0_exe47(GPOUT,151)
    assign out_c0_exe47 = conv2d3x3_B10_branch_out_c0_exe47;

    // out_c0_exe4734(GPOUT,152)
    assign out_c0_exe4734 = conv2d3x3_B10_branch_out_c0_exe4734;

    // out_c0_exe48(GPOUT,153)
    assign out_c0_exe48 = conv2d3x3_B10_branch_out_c0_exe48;

    // out_c0_exe49(GPOUT,154)
    assign out_c0_exe49 = conv2d3x3_B10_branch_out_c0_exe49;

    // out_c0_exe50(GPOUT,155)
    assign out_c0_exe50 = conv2d3x3_B10_branch_out_c0_exe50;

    // out_c0_exe51(GPOUT,156)
    assign out_c0_exe51 = conv2d3x3_B10_branch_out_c0_exe51;

    // out_c0_exe5735(GPOUT,157)
    assign out_c0_exe5735 = conv2d3x3_B10_branch_out_c0_exe5735;

    // out_c0_exe6736(GPOUT,158)
    assign out_c0_exe6736 = conv2d3x3_B10_branch_out_c0_exe6736;

    // out_c0_exe8738(GPOUT,159)
    assign out_c0_exe8738 = conv2d3x3_B10_branch_out_c0_exe8738;

    // out_c0_exe9739(GPOUT,160)
    assign out_c0_exe9739 = conv2d3x3_B10_branch_out_c0_exe9739;

    // out_c1_exe1(GPOUT,161)
    assign out_c1_exe1 = conv2d3x3_B10_branch_out_c1_exe1;

    // out_exiting_stall_out(GPOUT,162)
    assign out_exiting_stall_out = bb_conv2d3x3_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,163)
    assign out_exiting_valid_out = bb_conv2d3x3_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_exiting_valid_out;

    // out_lm8_conv2d3x3_avm_address(GPOUT,164)
    assign out_lm8_conv2d3x3_avm_address = bb_conv2d3x3_B10_stall_region_out_lm8_conv2d3x3_avm_address;

    // out_lm8_conv2d3x3_avm_burstcount(GPOUT,165)
    assign out_lm8_conv2d3x3_avm_burstcount = bb_conv2d3x3_B10_stall_region_out_lm8_conv2d3x3_avm_burstcount;

    // out_lm8_conv2d3x3_avm_byteenable(GPOUT,166)
    assign out_lm8_conv2d3x3_avm_byteenable = bb_conv2d3x3_B10_stall_region_out_lm8_conv2d3x3_avm_byteenable;

    // out_lm8_conv2d3x3_avm_enable(GPOUT,167)
    assign out_lm8_conv2d3x3_avm_enable = bb_conv2d3x3_B10_stall_region_out_lm8_conv2d3x3_avm_enable;

    // out_lm8_conv2d3x3_avm_read(GPOUT,168)
    assign out_lm8_conv2d3x3_avm_read = bb_conv2d3x3_B10_stall_region_out_lm8_conv2d3x3_avm_read;

    // out_lm8_conv2d3x3_avm_write(GPOUT,169)
    assign out_lm8_conv2d3x3_avm_write = bb_conv2d3x3_B10_stall_region_out_lm8_conv2d3x3_avm_write;

    // out_lm8_conv2d3x3_avm_writedata(GPOUT,170)
    assign out_lm8_conv2d3x3_avm_writedata = bb_conv2d3x3_B10_stall_region_out_lm8_conv2d3x3_avm_writedata;

    // out_lm_conv2d3x3_avm_address(GPOUT,171)
    assign out_lm_conv2d3x3_avm_address = bb_conv2d3x3_B10_stall_region_out_lm_conv2d3x3_avm_address;

    // out_lm_conv2d3x3_avm_burstcount(GPOUT,172)
    assign out_lm_conv2d3x3_avm_burstcount = bb_conv2d3x3_B10_stall_region_out_lm_conv2d3x3_avm_burstcount;

    // out_lm_conv2d3x3_avm_byteenable(GPOUT,173)
    assign out_lm_conv2d3x3_avm_byteenable = bb_conv2d3x3_B10_stall_region_out_lm_conv2d3x3_avm_byteenable;

    // out_lm_conv2d3x3_avm_enable(GPOUT,174)
    assign out_lm_conv2d3x3_avm_enable = bb_conv2d3x3_B10_stall_region_out_lm_conv2d3x3_avm_enable;

    // out_lm_conv2d3x3_avm_read(GPOUT,175)
    assign out_lm_conv2d3x3_avm_read = bb_conv2d3x3_B10_stall_region_out_lm_conv2d3x3_avm_read;

    // out_lm_conv2d3x3_avm_write(GPOUT,176)
    assign out_lm_conv2d3x3_avm_write = bb_conv2d3x3_B10_stall_region_out_lm_conv2d3x3_avm_write;

    // out_lm_conv2d3x3_avm_writedata(GPOUT,177)
    assign out_lm_conv2d3x3_avm_writedata = bb_conv2d3x3_B10_stall_region_out_lm_conv2d3x3_avm_writedata;

    // out_stall_in_0(GPOUT,178)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,179)
    assign out_stall_out_0 = conv2d3x3_B10_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,180)
    assign out_stall_out_1 = conv2d3x3_B10_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,181)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,182)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,183)
    assign out_valid_out_0 = conv2d3x3_B10_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,184)
    assign out_valid_out_1 = conv2d3x3_B10_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,186)
    assign out_pipeline_valid_out = bb_conv2d3x3_B10_stall_region_out_pipeline_valid_out;

endmodule
