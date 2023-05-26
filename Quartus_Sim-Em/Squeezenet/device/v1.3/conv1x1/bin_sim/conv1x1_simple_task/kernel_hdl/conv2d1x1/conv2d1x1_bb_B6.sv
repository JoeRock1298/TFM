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

// SystemVerilog created from conv2d1x1_bb_B6
// SystemVerilog created on Wed May 17 13:49:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B6 (
    input wire [63:0] in_filter_bias,
    input wire [63:0] in_filter_weight_addr_053_replace_phi37_pop1474_0,
    input wire [63:0] in_filter_weight_addr_053_replace_phi37_pop1474_1,
    input wire [63:0] in_filter_weight_addr_053_replace_phi61_0,
    input wire [63:0] in_filter_weight_addr_053_replace_phi61_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_ij_049_pop1272_0,
    input wire [31:0] in_ij_049_pop1272_1,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    input wire [511:0] in_lm19_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm19_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm19_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm19_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm21_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm21_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm21_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm21_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm22_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm22_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm22_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm22_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm24_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm24_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm24_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm24_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm26_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm26_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm26_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm26_conv2d1x1_avm_writeack,
    input wire [31:0] in_lm42_pop1878_0,
    input wire [31:0] in_lm42_pop1878_1,
    input wire [31:0] in_lm67_0,
    input wire [31:0] in_lm67_1,
    input wire [31:0] in_mul39_pop1575_0,
    input wire [31:0] in_mul39_pop1575_1,
    input wire [31:0] in_mul64_0,
    input wire [31:0] in_mul64_1,
    input wire [0:0] in_notcmp2571_0,
    input wire [0:0] in_notcmp2571_1,
    input wire [0:0] in_notcmp3044_pop1979_0,
    input wire [0:0] in_notcmp3044_pop1979_1,
    input wire [0:0] in_notcmp3070_0,
    input wire [0:0] in_notcmp3070_1,
    input wire [63:0] in_output_im_addr_054_replace_phi35_pop1373_0,
    input wire [63:0] in_output_im_addr_054_replace_phi35_pop1373_1,
    input wire [63:0] in_output_im_addr_054_replace_phi58_0,
    input wire [63:0] in_output_im_addr_054_replace_phi58_1,
    input wire [0:0] in_pop1676_0,
    input wire [0:0] in_pop1676_1,
    input wire [0:0] in_pop1777_0,
    input wire [0:0] in_pop1777_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_unnamed_conv2d1x113_0,
    input wire [0:0] in_unnamed_conv2d1x113_1,
    input wire [0:0] in_unnamed_conv2d1x114_0,
    input wire [0:0] in_unnamed_conv2d1x114_1,
    input wire [32:0] in_unnamed_conv2d1x115_0,
    input wire [32:0] in_unnamed_conv2d1x115_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_c0_exe11169,
    output wire [0:0] out_c0_exe12170,
    output wire [0:0] out_c0_exe13171,
    output wire [0:0] out_c0_exe14172,
    output wire [31:0] out_c0_exe3161,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [30:0] out_lm19_conv2d1x1_avm_address,
    output wire [4:0] out_lm19_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm19_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm19_conv2d1x1_avm_enable,
    output wire [0:0] out_lm19_conv2d1x1_avm_read,
    output wire [0:0] out_lm19_conv2d1x1_avm_write,
    output wire [511:0] out_lm19_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm21_conv2d1x1_avm_address,
    output wire [4:0] out_lm21_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm21_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm21_conv2d1x1_avm_enable,
    output wire [0:0] out_lm21_conv2d1x1_avm_read,
    output wire [0:0] out_lm21_conv2d1x1_avm_write,
    output wire [511:0] out_lm21_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm22_conv2d1x1_avm_address,
    output wire [4:0] out_lm22_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm22_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm22_conv2d1x1_avm_enable,
    output wire [0:0] out_lm22_conv2d1x1_avm_read,
    output wire [0:0] out_lm22_conv2d1x1_avm_write,
    output wire [511:0] out_lm22_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm24_conv2d1x1_avm_address,
    output wire [4:0] out_lm24_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm24_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm24_conv2d1x1_avm_enable,
    output wire [0:0] out_lm24_conv2d1x1_avm_read,
    output wire [0:0] out_lm24_conv2d1x1_avm_write,
    output wire [511:0] out_lm24_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm26_conv2d1x1_avm_address,
    output wire [4:0] out_lm26_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm26_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm26_conv2d1x1_avm_enable,
    output wire [0:0] out_lm26_conv2d1x1_avm_read,
    output wire [0:0] out_lm26_conv2d1x1_avm_write,
    output wire [511:0] out_lm26_conv2d1x1_avm_writedata,
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

    wire [0:0] bb_conv2d1x1_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe10168;
    wire [63:0] bb_conv2d1x1_B6_stall_region_out_c0_exe11169;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe12170;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe13171;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe14172;
    wire [31:0] bb_conv2d1x1_B6_stall_region_out_c0_exe3161;
    wire [31:0] bb_conv2d1x1_B6_stall_region_out_c1_exe1;
    wire [30:0] bb_conv2d1x1_B6_stall_region_out_lm19_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B6_stall_region_out_lm19_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B6_stall_region_out_lm19_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_lm19_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_lm19_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_lm19_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B6_stall_region_out_lm19_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B6_stall_region_out_lm21_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B6_stall_region_out_lm21_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B6_stall_region_out_lm21_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_lm21_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_lm21_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_lm21_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B6_stall_region_out_lm21_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B6_stall_region_out_lm22_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B6_stall_region_out_lm22_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B6_stall_region_out_lm22_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_lm22_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_lm22_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_lm22_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B6_stall_region_out_lm22_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B6_stall_region_out_lm24_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B6_stall_region_out_lm24_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B6_stall_region_out_lm24_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_lm24_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_lm24_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_lm24_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B6_stall_region_out_lm24_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B6_stall_region_out_lm26_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B6_stall_region_out_lm26_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B6_stall_region_out_lm26_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_lm26_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_lm26_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_lm26_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B6_stall_region_out_lm26_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_stall_out;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_valid_out;
    wire [63:0] conv2d1x1_B6_branch_out_c0_exe11169;
    wire [0:0] conv2d1x1_B6_branch_out_c0_exe12170;
    wire [0:0] conv2d1x1_B6_branch_out_c0_exe13171;
    wire [0:0] conv2d1x1_B6_branch_out_c0_exe14172;
    wire [31:0] conv2d1x1_B6_branch_out_c0_exe3161;
    wire [31:0] conv2d1x1_B6_branch_out_c1_exe1;
    wire [0:0] conv2d1x1_B6_branch_out_stall_out;
    wire [0:0] conv2d1x1_B6_branch_out_valid_out_0;
    wire [0:0] conv2d1x1_B6_branch_out_valid_out_1;
    wire [63:0] conv2d1x1_B6_merge_out_filter_weight_addr_053_replace_phi37_pop1474;
    wire [63:0] conv2d1x1_B6_merge_out_filter_weight_addr_053_replace_phi61;
    wire [0:0] conv2d1x1_B6_merge_out_forked;
    wire [31:0] conv2d1x1_B6_merge_out_ij_049_pop1272;
    wire [31:0] conv2d1x1_B6_merge_out_lm42_pop1878;
    wire [31:0] conv2d1x1_B6_merge_out_lm67;
    wire [31:0] conv2d1x1_B6_merge_out_mul39_pop1575;
    wire [31:0] conv2d1x1_B6_merge_out_mul64;
    wire [0:0] conv2d1x1_B6_merge_out_notcmp2571;
    wire [0:0] conv2d1x1_B6_merge_out_notcmp3044_pop1979;
    wire [0:0] conv2d1x1_B6_merge_out_notcmp3070;
    wire [63:0] conv2d1x1_B6_merge_out_output_im_addr_054_replace_phi35_pop1373;
    wire [63:0] conv2d1x1_B6_merge_out_output_im_addr_054_replace_phi58;
    wire [0:0] conv2d1x1_B6_merge_out_pop1676;
    wire [0:0] conv2d1x1_B6_merge_out_pop1777;
    wire [0:0] conv2d1x1_B6_merge_out_stall_out_0;
    wire [0:0] conv2d1x1_B6_merge_out_stall_out_1;
    wire [0:0] conv2d1x1_B6_merge_out_unnamed_conv2d1x113;
    wire [0:0] conv2d1x1_B6_merge_out_unnamed_conv2d1x114;
    wire [32:0] conv2d1x1_B6_merge_out_unnamed_conv2d1x115;
    wire [0:0] conv2d1x1_B6_merge_out_valid_out;


    // conv2d1x1_B6_merge(BLACKBOX,4)
    conv2d1x1_B6_merge theconv2d1x1_B6_merge (
        .in_filter_weight_addr_053_replace_phi37_pop1474_0(in_filter_weight_addr_053_replace_phi37_pop1474_0),
        .in_filter_weight_addr_053_replace_phi37_pop1474_1(in_filter_weight_addr_053_replace_phi37_pop1474_1),
        .in_filter_weight_addr_053_replace_phi61_0(in_filter_weight_addr_053_replace_phi61_0),
        .in_filter_weight_addr_053_replace_phi61_1(in_filter_weight_addr_053_replace_phi61_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_ij_049_pop1272_0(in_ij_049_pop1272_0),
        .in_ij_049_pop1272_1(in_ij_049_pop1272_1),
        .in_lm42_pop1878_0(in_lm42_pop1878_0),
        .in_lm42_pop1878_1(in_lm42_pop1878_1),
        .in_lm67_0(in_lm67_0),
        .in_lm67_1(in_lm67_1),
        .in_mul39_pop1575_0(in_mul39_pop1575_0),
        .in_mul39_pop1575_1(in_mul39_pop1575_1),
        .in_mul64_0(in_mul64_0),
        .in_mul64_1(in_mul64_1),
        .in_notcmp2571_0(in_notcmp2571_0),
        .in_notcmp2571_1(in_notcmp2571_1),
        .in_notcmp3044_pop1979_0(in_notcmp3044_pop1979_0),
        .in_notcmp3044_pop1979_1(in_notcmp3044_pop1979_1),
        .in_notcmp3070_0(in_notcmp3070_0),
        .in_notcmp3070_1(in_notcmp3070_1),
        .in_output_im_addr_054_replace_phi35_pop1373_0(in_output_im_addr_054_replace_phi35_pop1373_0),
        .in_output_im_addr_054_replace_phi35_pop1373_1(in_output_im_addr_054_replace_phi35_pop1373_1),
        .in_output_im_addr_054_replace_phi58_0(in_output_im_addr_054_replace_phi58_0),
        .in_output_im_addr_054_replace_phi58_1(in_output_im_addr_054_replace_phi58_1),
        .in_pop1676_0(in_pop1676_0),
        .in_pop1676_1(in_pop1676_1),
        .in_pop1777_0(in_pop1777_0),
        .in_pop1777_1(in_pop1777_1),
        .in_stall_in(bb_conv2d1x1_B6_stall_region_out_stall_out),
        .in_unnamed_conv2d1x113_0(in_unnamed_conv2d1x113_0),
        .in_unnamed_conv2d1x113_1(in_unnamed_conv2d1x113_1),
        .in_unnamed_conv2d1x114_0(in_unnamed_conv2d1x114_0),
        .in_unnamed_conv2d1x114_1(in_unnamed_conv2d1x114_1),
        .in_unnamed_conv2d1x115_0(in_unnamed_conv2d1x115_0),
        .in_unnamed_conv2d1x115_1(in_unnamed_conv2d1x115_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_filter_weight_addr_053_replace_phi37_pop1474(conv2d1x1_B6_merge_out_filter_weight_addr_053_replace_phi37_pop1474),
        .out_filter_weight_addr_053_replace_phi61(conv2d1x1_B6_merge_out_filter_weight_addr_053_replace_phi61),
        .out_forked(conv2d1x1_B6_merge_out_forked),
        .out_ij_049_pop1272(conv2d1x1_B6_merge_out_ij_049_pop1272),
        .out_lm42_pop1878(conv2d1x1_B6_merge_out_lm42_pop1878),
        .out_lm67(conv2d1x1_B6_merge_out_lm67),
        .out_mul39_pop1575(conv2d1x1_B6_merge_out_mul39_pop1575),
        .out_mul64(conv2d1x1_B6_merge_out_mul64),
        .out_notcmp2571(conv2d1x1_B6_merge_out_notcmp2571),
        .out_notcmp3044_pop1979(conv2d1x1_B6_merge_out_notcmp3044_pop1979),
        .out_notcmp3070(conv2d1x1_B6_merge_out_notcmp3070),
        .out_output_im_addr_054_replace_phi35_pop1373(conv2d1x1_B6_merge_out_output_im_addr_054_replace_phi35_pop1373),
        .out_output_im_addr_054_replace_phi58(conv2d1x1_B6_merge_out_output_im_addr_054_replace_phi58),
        .out_pop1676(conv2d1x1_B6_merge_out_pop1676),
        .out_pop1777(conv2d1x1_B6_merge_out_pop1777),
        .out_stall_out_0(conv2d1x1_B6_merge_out_stall_out_0),
        .out_stall_out_1(conv2d1x1_B6_merge_out_stall_out_1),
        .out_unnamed_conv2d1x113(conv2d1x1_B6_merge_out_unnamed_conv2d1x113),
        .out_unnamed_conv2d1x114(conv2d1x1_B6_merge_out_unnamed_conv2d1x114),
        .out_unnamed_conv2d1x115(conv2d1x1_B6_merge_out_unnamed_conv2d1x115),
        .out_valid_out(conv2d1x1_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B6_stall_region(BLACKBOX,2)
    conv2d1x1_bb_B6_stall_region thebb_conv2d1x1_B6_stall_region (
        .in_filter_weight_addr_053_replace_phi37_pop1474(conv2d1x1_B6_merge_out_filter_weight_addr_053_replace_phi37_pop1474),
        .in_filter_weight_addr_053_replace_phi61(conv2d1x1_B6_merge_out_filter_weight_addr_053_replace_phi61),
        .in_flush(in_flush),
        .in_forked(conv2d1x1_B6_merge_out_forked),
        .in_ij_049_pop1272(conv2d1x1_B6_merge_out_ij_049_pop1272),
        .in_input_im(in_input_im),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_lm19_conv2d1x1_avm_readdata(in_lm19_conv2d1x1_avm_readdata),
        .in_lm19_conv2d1x1_avm_readdatavalid(in_lm19_conv2d1x1_avm_readdatavalid),
        .in_lm19_conv2d1x1_avm_waitrequest(in_lm19_conv2d1x1_avm_waitrequest),
        .in_lm19_conv2d1x1_avm_writeack(in_lm19_conv2d1x1_avm_writeack),
        .in_lm21_conv2d1x1_avm_readdata(in_lm21_conv2d1x1_avm_readdata),
        .in_lm21_conv2d1x1_avm_readdatavalid(in_lm21_conv2d1x1_avm_readdatavalid),
        .in_lm21_conv2d1x1_avm_waitrequest(in_lm21_conv2d1x1_avm_waitrequest),
        .in_lm21_conv2d1x1_avm_writeack(in_lm21_conv2d1x1_avm_writeack),
        .in_lm22_conv2d1x1_avm_readdata(in_lm22_conv2d1x1_avm_readdata),
        .in_lm22_conv2d1x1_avm_readdatavalid(in_lm22_conv2d1x1_avm_readdatavalid),
        .in_lm22_conv2d1x1_avm_waitrequest(in_lm22_conv2d1x1_avm_waitrequest),
        .in_lm22_conv2d1x1_avm_writeack(in_lm22_conv2d1x1_avm_writeack),
        .in_lm24_conv2d1x1_avm_readdata(in_lm24_conv2d1x1_avm_readdata),
        .in_lm24_conv2d1x1_avm_readdatavalid(in_lm24_conv2d1x1_avm_readdatavalid),
        .in_lm24_conv2d1x1_avm_waitrequest(in_lm24_conv2d1x1_avm_waitrequest),
        .in_lm24_conv2d1x1_avm_writeack(in_lm24_conv2d1x1_avm_writeack),
        .in_lm26_conv2d1x1_avm_readdata(in_lm26_conv2d1x1_avm_readdata),
        .in_lm26_conv2d1x1_avm_readdatavalid(in_lm26_conv2d1x1_avm_readdatavalid),
        .in_lm26_conv2d1x1_avm_waitrequest(in_lm26_conv2d1x1_avm_waitrequest),
        .in_lm26_conv2d1x1_avm_writeack(in_lm26_conv2d1x1_avm_writeack),
        .in_lm42_pop1878(conv2d1x1_B6_merge_out_lm42_pop1878),
        .in_lm67(conv2d1x1_B6_merge_out_lm67),
        .in_mul39_pop1575(conv2d1x1_B6_merge_out_mul39_pop1575),
        .in_mul64(conv2d1x1_B6_merge_out_mul64),
        .in_notcmp2571(conv2d1x1_B6_merge_out_notcmp2571),
        .in_notcmp3044_pop1979(conv2d1x1_B6_merge_out_notcmp3044_pop1979),
        .in_notcmp3070(conv2d1x1_B6_merge_out_notcmp3070),
        .in_output_im_addr_054_replace_phi35_pop1373(conv2d1x1_B6_merge_out_output_im_addr_054_replace_phi35_pop1373),
        .in_output_im_addr_054_replace_phi58(conv2d1x1_B6_merge_out_output_im_addr_054_replace_phi58),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_pop1676(conv2d1x1_B6_merge_out_pop1676),
        .in_pop1777(conv2d1x1_B6_merge_out_pop1777),
        .in_stall_in(conv2d1x1_B6_branch_out_stall_out),
        .in_unnamed_conv2d1x113(conv2d1x1_B6_merge_out_unnamed_conv2d1x113),
        .in_unnamed_conv2d1x114(conv2d1x1_B6_merge_out_unnamed_conv2d1x114),
        .in_unnamed_conv2d1x115(conv2d1x1_B6_merge_out_unnamed_conv2d1x115),
        .in_valid_in(conv2d1x1_B6_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out(bb_conv2d1x1_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out(bb_conv2d1x1_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out),
        .out_c0_exe10168(bb_conv2d1x1_B6_stall_region_out_c0_exe10168),
        .out_c0_exe11169(bb_conv2d1x1_B6_stall_region_out_c0_exe11169),
        .out_c0_exe12170(bb_conv2d1x1_B6_stall_region_out_c0_exe12170),
        .out_c0_exe13171(bb_conv2d1x1_B6_stall_region_out_c0_exe13171),
        .out_c0_exe14172(bb_conv2d1x1_B6_stall_region_out_c0_exe14172),
        .out_c0_exe3161(bb_conv2d1x1_B6_stall_region_out_c0_exe3161),
        .out_c1_exe1(bb_conv2d1x1_B6_stall_region_out_c1_exe1),
        .out_lm19_conv2d1x1_avm_address(bb_conv2d1x1_B6_stall_region_out_lm19_conv2d1x1_avm_address),
        .out_lm19_conv2d1x1_avm_burstcount(bb_conv2d1x1_B6_stall_region_out_lm19_conv2d1x1_avm_burstcount),
        .out_lm19_conv2d1x1_avm_byteenable(bb_conv2d1x1_B6_stall_region_out_lm19_conv2d1x1_avm_byteenable),
        .out_lm19_conv2d1x1_avm_enable(bb_conv2d1x1_B6_stall_region_out_lm19_conv2d1x1_avm_enable),
        .out_lm19_conv2d1x1_avm_read(bb_conv2d1x1_B6_stall_region_out_lm19_conv2d1x1_avm_read),
        .out_lm19_conv2d1x1_avm_write(bb_conv2d1x1_B6_stall_region_out_lm19_conv2d1x1_avm_write),
        .out_lm19_conv2d1x1_avm_writedata(bb_conv2d1x1_B6_stall_region_out_lm19_conv2d1x1_avm_writedata),
        .out_lm21_conv2d1x1_avm_address(bb_conv2d1x1_B6_stall_region_out_lm21_conv2d1x1_avm_address),
        .out_lm21_conv2d1x1_avm_burstcount(bb_conv2d1x1_B6_stall_region_out_lm21_conv2d1x1_avm_burstcount),
        .out_lm21_conv2d1x1_avm_byteenable(bb_conv2d1x1_B6_stall_region_out_lm21_conv2d1x1_avm_byteenable),
        .out_lm21_conv2d1x1_avm_enable(bb_conv2d1x1_B6_stall_region_out_lm21_conv2d1x1_avm_enable),
        .out_lm21_conv2d1x1_avm_read(bb_conv2d1x1_B6_stall_region_out_lm21_conv2d1x1_avm_read),
        .out_lm21_conv2d1x1_avm_write(bb_conv2d1x1_B6_stall_region_out_lm21_conv2d1x1_avm_write),
        .out_lm21_conv2d1x1_avm_writedata(bb_conv2d1x1_B6_stall_region_out_lm21_conv2d1x1_avm_writedata),
        .out_lm22_conv2d1x1_avm_address(bb_conv2d1x1_B6_stall_region_out_lm22_conv2d1x1_avm_address),
        .out_lm22_conv2d1x1_avm_burstcount(bb_conv2d1x1_B6_stall_region_out_lm22_conv2d1x1_avm_burstcount),
        .out_lm22_conv2d1x1_avm_byteenable(bb_conv2d1x1_B6_stall_region_out_lm22_conv2d1x1_avm_byteenable),
        .out_lm22_conv2d1x1_avm_enable(bb_conv2d1x1_B6_stall_region_out_lm22_conv2d1x1_avm_enable),
        .out_lm22_conv2d1x1_avm_read(bb_conv2d1x1_B6_stall_region_out_lm22_conv2d1x1_avm_read),
        .out_lm22_conv2d1x1_avm_write(bb_conv2d1x1_B6_stall_region_out_lm22_conv2d1x1_avm_write),
        .out_lm22_conv2d1x1_avm_writedata(bb_conv2d1x1_B6_stall_region_out_lm22_conv2d1x1_avm_writedata),
        .out_lm24_conv2d1x1_avm_address(bb_conv2d1x1_B6_stall_region_out_lm24_conv2d1x1_avm_address),
        .out_lm24_conv2d1x1_avm_burstcount(bb_conv2d1x1_B6_stall_region_out_lm24_conv2d1x1_avm_burstcount),
        .out_lm24_conv2d1x1_avm_byteenable(bb_conv2d1x1_B6_stall_region_out_lm24_conv2d1x1_avm_byteenable),
        .out_lm24_conv2d1x1_avm_enable(bb_conv2d1x1_B6_stall_region_out_lm24_conv2d1x1_avm_enable),
        .out_lm24_conv2d1x1_avm_read(bb_conv2d1x1_B6_stall_region_out_lm24_conv2d1x1_avm_read),
        .out_lm24_conv2d1x1_avm_write(bb_conv2d1x1_B6_stall_region_out_lm24_conv2d1x1_avm_write),
        .out_lm24_conv2d1x1_avm_writedata(bb_conv2d1x1_B6_stall_region_out_lm24_conv2d1x1_avm_writedata),
        .out_lm26_conv2d1x1_avm_address(bb_conv2d1x1_B6_stall_region_out_lm26_conv2d1x1_avm_address),
        .out_lm26_conv2d1x1_avm_burstcount(bb_conv2d1x1_B6_stall_region_out_lm26_conv2d1x1_avm_burstcount),
        .out_lm26_conv2d1x1_avm_byteenable(bb_conv2d1x1_B6_stall_region_out_lm26_conv2d1x1_avm_byteenable),
        .out_lm26_conv2d1x1_avm_enable(bb_conv2d1x1_B6_stall_region_out_lm26_conv2d1x1_avm_enable),
        .out_lm26_conv2d1x1_avm_read(bb_conv2d1x1_B6_stall_region_out_lm26_conv2d1x1_avm_read),
        .out_lm26_conv2d1x1_avm_write(bb_conv2d1x1_B6_stall_region_out_lm26_conv2d1x1_avm_write),
        .out_lm26_conv2d1x1_avm_writedata(bb_conv2d1x1_B6_stall_region_out_lm26_conv2d1x1_avm_writedata),
        .out_pipeline_valid_out(bb_conv2d1x1_B6_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv2d1x1_B6_stall_region_out_stall_out),
        .out_valid_out(bb_conv2d1x1_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B6_branch(BLACKBOX,3)
    conv2d1x1_B6_branch theconv2d1x1_B6_branch (
        .in_c0_exe10168(bb_conv2d1x1_B6_stall_region_out_c0_exe10168),
        .in_c0_exe11169(bb_conv2d1x1_B6_stall_region_out_c0_exe11169),
        .in_c0_exe12170(bb_conv2d1x1_B6_stall_region_out_c0_exe12170),
        .in_c0_exe13171(bb_conv2d1x1_B6_stall_region_out_c0_exe13171),
        .in_c0_exe14172(bb_conv2d1x1_B6_stall_region_out_c0_exe14172),
        .in_c0_exe3161(bb_conv2d1x1_B6_stall_region_out_c0_exe3161),
        .in_c1_exe1(bb_conv2d1x1_B6_stall_region_out_c1_exe1),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv2d1x1_B6_stall_region_out_valid_out),
        .out_c0_exe11169(conv2d1x1_B6_branch_out_c0_exe11169),
        .out_c0_exe12170(conv2d1x1_B6_branch_out_c0_exe12170),
        .out_c0_exe13171(conv2d1x1_B6_branch_out_c0_exe13171),
        .out_c0_exe14172(conv2d1x1_B6_branch_out_c0_exe14172),
        .out_c0_exe3161(conv2d1x1_B6_branch_out_c0_exe3161),
        .out_c1_exe1(conv2d1x1_B6_branch_out_c1_exe1),
        .out_stall_out(conv2d1x1_B6_branch_out_stall_out),
        .out_valid_out_0(conv2d1x1_B6_branch_out_valid_out_0),
        .out_valid_out_1(conv2d1x1_B6_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe11169(GPOUT,70)
    assign out_c0_exe11169 = conv2d1x1_B6_branch_out_c0_exe11169;

    // out_c0_exe12170(GPOUT,71)
    assign out_c0_exe12170 = conv2d1x1_B6_branch_out_c0_exe12170;

    // out_c0_exe13171(GPOUT,72)
    assign out_c0_exe13171 = conv2d1x1_B6_branch_out_c0_exe13171;

    // out_c0_exe14172(GPOUT,73)
    assign out_c0_exe14172 = conv2d1x1_B6_branch_out_c0_exe14172;

    // out_c0_exe3161(GPOUT,74)
    assign out_c0_exe3161 = conv2d1x1_B6_branch_out_c0_exe3161;

    // out_c1_exe1(GPOUT,75)
    assign out_c1_exe1 = conv2d1x1_B6_branch_out_c1_exe1;

    // out_exiting_stall_out(GPOUT,76)
    assign out_exiting_stall_out = bb_conv2d1x1_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,77)
    assign out_exiting_valid_out = bb_conv2d1x1_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out;

    // out_lm19_conv2d1x1_avm_address(GPOUT,78)
    assign out_lm19_conv2d1x1_avm_address = bb_conv2d1x1_B6_stall_region_out_lm19_conv2d1x1_avm_address;

    // out_lm19_conv2d1x1_avm_burstcount(GPOUT,79)
    assign out_lm19_conv2d1x1_avm_burstcount = bb_conv2d1x1_B6_stall_region_out_lm19_conv2d1x1_avm_burstcount;

    // out_lm19_conv2d1x1_avm_byteenable(GPOUT,80)
    assign out_lm19_conv2d1x1_avm_byteenable = bb_conv2d1x1_B6_stall_region_out_lm19_conv2d1x1_avm_byteenable;

    // out_lm19_conv2d1x1_avm_enable(GPOUT,81)
    assign out_lm19_conv2d1x1_avm_enable = bb_conv2d1x1_B6_stall_region_out_lm19_conv2d1x1_avm_enable;

    // out_lm19_conv2d1x1_avm_read(GPOUT,82)
    assign out_lm19_conv2d1x1_avm_read = bb_conv2d1x1_B6_stall_region_out_lm19_conv2d1x1_avm_read;

    // out_lm19_conv2d1x1_avm_write(GPOUT,83)
    assign out_lm19_conv2d1x1_avm_write = bb_conv2d1x1_B6_stall_region_out_lm19_conv2d1x1_avm_write;

    // out_lm19_conv2d1x1_avm_writedata(GPOUT,84)
    assign out_lm19_conv2d1x1_avm_writedata = bb_conv2d1x1_B6_stall_region_out_lm19_conv2d1x1_avm_writedata;

    // out_lm21_conv2d1x1_avm_address(GPOUT,85)
    assign out_lm21_conv2d1x1_avm_address = bb_conv2d1x1_B6_stall_region_out_lm21_conv2d1x1_avm_address;

    // out_lm21_conv2d1x1_avm_burstcount(GPOUT,86)
    assign out_lm21_conv2d1x1_avm_burstcount = bb_conv2d1x1_B6_stall_region_out_lm21_conv2d1x1_avm_burstcount;

    // out_lm21_conv2d1x1_avm_byteenable(GPOUT,87)
    assign out_lm21_conv2d1x1_avm_byteenable = bb_conv2d1x1_B6_stall_region_out_lm21_conv2d1x1_avm_byteenable;

    // out_lm21_conv2d1x1_avm_enable(GPOUT,88)
    assign out_lm21_conv2d1x1_avm_enable = bb_conv2d1x1_B6_stall_region_out_lm21_conv2d1x1_avm_enable;

    // out_lm21_conv2d1x1_avm_read(GPOUT,89)
    assign out_lm21_conv2d1x1_avm_read = bb_conv2d1x1_B6_stall_region_out_lm21_conv2d1x1_avm_read;

    // out_lm21_conv2d1x1_avm_write(GPOUT,90)
    assign out_lm21_conv2d1x1_avm_write = bb_conv2d1x1_B6_stall_region_out_lm21_conv2d1x1_avm_write;

    // out_lm21_conv2d1x1_avm_writedata(GPOUT,91)
    assign out_lm21_conv2d1x1_avm_writedata = bb_conv2d1x1_B6_stall_region_out_lm21_conv2d1x1_avm_writedata;

    // out_lm22_conv2d1x1_avm_address(GPOUT,92)
    assign out_lm22_conv2d1x1_avm_address = bb_conv2d1x1_B6_stall_region_out_lm22_conv2d1x1_avm_address;

    // out_lm22_conv2d1x1_avm_burstcount(GPOUT,93)
    assign out_lm22_conv2d1x1_avm_burstcount = bb_conv2d1x1_B6_stall_region_out_lm22_conv2d1x1_avm_burstcount;

    // out_lm22_conv2d1x1_avm_byteenable(GPOUT,94)
    assign out_lm22_conv2d1x1_avm_byteenable = bb_conv2d1x1_B6_stall_region_out_lm22_conv2d1x1_avm_byteenable;

    // out_lm22_conv2d1x1_avm_enable(GPOUT,95)
    assign out_lm22_conv2d1x1_avm_enable = bb_conv2d1x1_B6_stall_region_out_lm22_conv2d1x1_avm_enable;

    // out_lm22_conv2d1x1_avm_read(GPOUT,96)
    assign out_lm22_conv2d1x1_avm_read = bb_conv2d1x1_B6_stall_region_out_lm22_conv2d1x1_avm_read;

    // out_lm22_conv2d1x1_avm_write(GPOUT,97)
    assign out_lm22_conv2d1x1_avm_write = bb_conv2d1x1_B6_stall_region_out_lm22_conv2d1x1_avm_write;

    // out_lm22_conv2d1x1_avm_writedata(GPOUT,98)
    assign out_lm22_conv2d1x1_avm_writedata = bb_conv2d1x1_B6_stall_region_out_lm22_conv2d1x1_avm_writedata;

    // out_lm24_conv2d1x1_avm_address(GPOUT,99)
    assign out_lm24_conv2d1x1_avm_address = bb_conv2d1x1_B6_stall_region_out_lm24_conv2d1x1_avm_address;

    // out_lm24_conv2d1x1_avm_burstcount(GPOUT,100)
    assign out_lm24_conv2d1x1_avm_burstcount = bb_conv2d1x1_B6_stall_region_out_lm24_conv2d1x1_avm_burstcount;

    // out_lm24_conv2d1x1_avm_byteenable(GPOUT,101)
    assign out_lm24_conv2d1x1_avm_byteenable = bb_conv2d1x1_B6_stall_region_out_lm24_conv2d1x1_avm_byteenable;

    // out_lm24_conv2d1x1_avm_enable(GPOUT,102)
    assign out_lm24_conv2d1x1_avm_enable = bb_conv2d1x1_B6_stall_region_out_lm24_conv2d1x1_avm_enable;

    // out_lm24_conv2d1x1_avm_read(GPOUT,103)
    assign out_lm24_conv2d1x1_avm_read = bb_conv2d1x1_B6_stall_region_out_lm24_conv2d1x1_avm_read;

    // out_lm24_conv2d1x1_avm_write(GPOUT,104)
    assign out_lm24_conv2d1x1_avm_write = bb_conv2d1x1_B6_stall_region_out_lm24_conv2d1x1_avm_write;

    // out_lm24_conv2d1x1_avm_writedata(GPOUT,105)
    assign out_lm24_conv2d1x1_avm_writedata = bb_conv2d1x1_B6_stall_region_out_lm24_conv2d1x1_avm_writedata;

    // out_lm26_conv2d1x1_avm_address(GPOUT,106)
    assign out_lm26_conv2d1x1_avm_address = bb_conv2d1x1_B6_stall_region_out_lm26_conv2d1x1_avm_address;

    // out_lm26_conv2d1x1_avm_burstcount(GPOUT,107)
    assign out_lm26_conv2d1x1_avm_burstcount = bb_conv2d1x1_B6_stall_region_out_lm26_conv2d1x1_avm_burstcount;

    // out_lm26_conv2d1x1_avm_byteenable(GPOUT,108)
    assign out_lm26_conv2d1x1_avm_byteenable = bb_conv2d1x1_B6_stall_region_out_lm26_conv2d1x1_avm_byteenable;

    // out_lm26_conv2d1x1_avm_enable(GPOUT,109)
    assign out_lm26_conv2d1x1_avm_enable = bb_conv2d1x1_B6_stall_region_out_lm26_conv2d1x1_avm_enable;

    // out_lm26_conv2d1x1_avm_read(GPOUT,110)
    assign out_lm26_conv2d1x1_avm_read = bb_conv2d1x1_B6_stall_region_out_lm26_conv2d1x1_avm_read;

    // out_lm26_conv2d1x1_avm_write(GPOUT,111)
    assign out_lm26_conv2d1x1_avm_write = bb_conv2d1x1_B6_stall_region_out_lm26_conv2d1x1_avm_write;

    // out_lm26_conv2d1x1_avm_writedata(GPOUT,112)
    assign out_lm26_conv2d1x1_avm_writedata = bb_conv2d1x1_B6_stall_region_out_lm26_conv2d1x1_avm_writedata;

    // out_stall_in_0(GPOUT,113)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,114)
    assign out_stall_out_0 = conv2d1x1_B6_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,115)
    assign out_stall_out_1 = conv2d1x1_B6_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,116)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,117)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,118)
    assign out_valid_out_0 = conv2d1x1_B6_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,119)
    assign out_valid_out_1 = conv2d1x1_B6_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,121)
    assign out_pipeline_valid_out = bb_conv2d1x1_B6_stall_region_out_pipeline_valid_out;

endmodule
