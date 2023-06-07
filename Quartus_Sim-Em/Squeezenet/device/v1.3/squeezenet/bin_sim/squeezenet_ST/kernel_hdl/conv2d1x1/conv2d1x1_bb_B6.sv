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
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B6 (
    input wire [63:0] in_filter_bias,
    input wire [63:0] in_filter_weight,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_ij_028_pop1055_0,
    input wire [31:0] in_ij_028_pop1055_1,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    input wire [511:0] in_lm18_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm18_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm18_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm18_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm20_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm20_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm20_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm20_conv2d1x1_avm_writeack,
    input wire [31:0] in_lm29_pop1459_0,
    input wire [31:0] in_lm29_pop1459_1,
    input wire [31:0] in_lm44_0,
    input wire [31:0] in_lm44_1,
    input wire [31:0] in_mul1331_pop1560_0,
    input wire [31:0] in_mul1331_pop1560_1,
    input wire [31:0] in_mul1347_0,
    input wire [31:0] in_mul1347_1,
    input wire [31:0] in_mul2333_pop1661_0,
    input wire [31:0] in_mul2333_pop1661_1,
    input wire [31:0] in_mul2350_0,
    input wire [31:0] in_mul2350_1,
    input wire [31:0] in_mul27_pop1156_0,
    input wire [31:0] in_mul27_pop1156_1,
    input wire [31:0] in_mul41_0,
    input wire [31:0] in_mul41_1,
    input wire [0:0] in_notcmp1754_0,
    input wire [0:0] in_notcmp1754_1,
    input wire [0:0] in_notcmp2235_pop1762_0,
    input wire [0:0] in_notcmp2235_pop1762_1,
    input wire [0:0] in_notcmp2253_0,
    input wire [0:0] in_notcmp2253_1,
    input wire [63:0] in_output_im,
    input wire [0:0] in_pop1257_0,
    input wire [0:0] in_pop1257_1,
    input wire [0:0] in_pop1358_0,
    input wire [0:0] in_pop1358_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_unnamed_conv2d1x111_0,
    input wire [0:0] in_unnamed_conv2d1x111_1,
    input wire [0:0] in_unnamed_conv2d1x112_0,
    input wire [0:0] in_unnamed_conv2d1x112_1,
    input wire [32:0] in_unnamed_conv2d1x113_0,
    input wire [32:0] in_unnamed_conv2d1x113_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10151,
    output wire [0:0] out_c0_exe11152,
    output wire [31:0] out_c0_exe3144,
    output wire [0:0] out_c0_exe8149,
    output wire [31:0] out_c0_exe9150,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [30:0] out_lm18_conv2d1x1_avm_address,
    output wire [4:0] out_lm18_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm18_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm18_conv2d1x1_avm_enable,
    output wire [0:0] out_lm18_conv2d1x1_avm_read,
    output wire [0:0] out_lm18_conv2d1x1_avm_write,
    output wire [511:0] out_lm18_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm20_conv2d1x1_avm_address,
    output wire [4:0] out_lm20_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm20_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm20_conv2d1x1_avm_enable,
    output wire [0:0] out_lm20_conv2d1x1_avm_read,
    output wire [0:0] out_lm20_conv2d1x1_avm_write,
    output wire [511:0] out_lm20_conv2d1x1_avm_writedata,
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
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe10151;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe11152;
    wire [31:0] bb_conv2d1x1_B6_stall_region_out_c0_exe3144;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe7148;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe8149;
    wire [31:0] bb_conv2d1x1_B6_stall_region_out_c0_exe9150;
    wire [31:0] bb_conv2d1x1_B6_stall_region_out_c1_exe1;
    wire [30:0] bb_conv2d1x1_B6_stall_region_out_lm18_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B6_stall_region_out_lm18_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B6_stall_region_out_lm18_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_lm18_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_lm18_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_lm18_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B6_stall_region_out_lm18_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B6_stall_region_out_lm20_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B6_stall_region_out_lm20_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B6_stall_region_out_lm20_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_lm20_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_lm20_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_lm20_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B6_stall_region_out_lm20_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_stall_out;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_valid_out;
    wire [0:0] conv2d1x1_B6_branch_out_c0_exe10151;
    wire [0:0] conv2d1x1_B6_branch_out_c0_exe11152;
    wire [31:0] conv2d1x1_B6_branch_out_c0_exe3144;
    wire [0:0] conv2d1x1_B6_branch_out_c0_exe8149;
    wire [31:0] conv2d1x1_B6_branch_out_c0_exe9150;
    wire [31:0] conv2d1x1_B6_branch_out_c1_exe1;
    wire [0:0] conv2d1x1_B6_branch_out_stall_out;
    wire [0:0] conv2d1x1_B6_branch_out_valid_out_0;
    wire [0:0] conv2d1x1_B6_branch_out_valid_out_1;
    wire [0:0] conv2d1x1_B6_merge_out_forked;
    wire [31:0] conv2d1x1_B6_merge_out_ij_028_pop1055;
    wire [31:0] conv2d1x1_B6_merge_out_lm29_pop1459;
    wire [31:0] conv2d1x1_B6_merge_out_lm44;
    wire [31:0] conv2d1x1_B6_merge_out_mul1331_pop1560;
    wire [31:0] conv2d1x1_B6_merge_out_mul1347;
    wire [31:0] conv2d1x1_B6_merge_out_mul2333_pop1661;
    wire [31:0] conv2d1x1_B6_merge_out_mul2350;
    wire [31:0] conv2d1x1_B6_merge_out_mul27_pop1156;
    wire [31:0] conv2d1x1_B6_merge_out_mul41;
    wire [0:0] conv2d1x1_B6_merge_out_notcmp1754;
    wire [0:0] conv2d1x1_B6_merge_out_notcmp2235_pop1762;
    wire [0:0] conv2d1x1_B6_merge_out_notcmp2253;
    wire [0:0] conv2d1x1_B6_merge_out_pop1257;
    wire [0:0] conv2d1x1_B6_merge_out_pop1358;
    wire [0:0] conv2d1x1_B6_merge_out_stall_out_0;
    wire [0:0] conv2d1x1_B6_merge_out_stall_out_1;
    wire [0:0] conv2d1x1_B6_merge_out_unnamed_conv2d1x111;
    wire [0:0] conv2d1x1_B6_merge_out_unnamed_conv2d1x112;
    wire [32:0] conv2d1x1_B6_merge_out_unnamed_conv2d1x113;
    wire [0:0] conv2d1x1_B6_merge_out_valid_out;


    // conv2d1x1_B6_merge(BLACKBOX,4)
    conv2d1x1_B6_merge theconv2d1x1_B6_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_ij_028_pop1055_0(in_ij_028_pop1055_0),
        .in_ij_028_pop1055_1(in_ij_028_pop1055_1),
        .in_lm29_pop1459_0(in_lm29_pop1459_0),
        .in_lm29_pop1459_1(in_lm29_pop1459_1),
        .in_lm44_0(in_lm44_0),
        .in_lm44_1(in_lm44_1),
        .in_mul1331_pop1560_0(in_mul1331_pop1560_0),
        .in_mul1331_pop1560_1(in_mul1331_pop1560_1),
        .in_mul1347_0(in_mul1347_0),
        .in_mul1347_1(in_mul1347_1),
        .in_mul2333_pop1661_0(in_mul2333_pop1661_0),
        .in_mul2333_pop1661_1(in_mul2333_pop1661_1),
        .in_mul2350_0(in_mul2350_0),
        .in_mul2350_1(in_mul2350_1),
        .in_mul27_pop1156_0(in_mul27_pop1156_0),
        .in_mul27_pop1156_1(in_mul27_pop1156_1),
        .in_mul41_0(in_mul41_0),
        .in_mul41_1(in_mul41_1),
        .in_notcmp1754_0(in_notcmp1754_0),
        .in_notcmp1754_1(in_notcmp1754_1),
        .in_notcmp2235_pop1762_0(in_notcmp2235_pop1762_0),
        .in_notcmp2235_pop1762_1(in_notcmp2235_pop1762_1),
        .in_notcmp2253_0(in_notcmp2253_0),
        .in_notcmp2253_1(in_notcmp2253_1),
        .in_pop1257_0(in_pop1257_0),
        .in_pop1257_1(in_pop1257_1),
        .in_pop1358_0(in_pop1358_0),
        .in_pop1358_1(in_pop1358_1),
        .in_stall_in(bb_conv2d1x1_B6_stall_region_out_stall_out),
        .in_unnamed_conv2d1x111_0(in_unnamed_conv2d1x111_0),
        .in_unnamed_conv2d1x111_1(in_unnamed_conv2d1x111_1),
        .in_unnamed_conv2d1x112_0(in_unnamed_conv2d1x112_0),
        .in_unnamed_conv2d1x112_1(in_unnamed_conv2d1x112_1),
        .in_unnamed_conv2d1x113_0(in_unnamed_conv2d1x113_0),
        .in_unnamed_conv2d1x113_1(in_unnamed_conv2d1x113_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(conv2d1x1_B6_merge_out_forked),
        .out_ij_028_pop1055(conv2d1x1_B6_merge_out_ij_028_pop1055),
        .out_lm29_pop1459(conv2d1x1_B6_merge_out_lm29_pop1459),
        .out_lm44(conv2d1x1_B6_merge_out_lm44),
        .out_mul1331_pop1560(conv2d1x1_B6_merge_out_mul1331_pop1560),
        .out_mul1347(conv2d1x1_B6_merge_out_mul1347),
        .out_mul2333_pop1661(conv2d1x1_B6_merge_out_mul2333_pop1661),
        .out_mul2350(conv2d1x1_B6_merge_out_mul2350),
        .out_mul27_pop1156(conv2d1x1_B6_merge_out_mul27_pop1156),
        .out_mul41(conv2d1x1_B6_merge_out_mul41),
        .out_notcmp1754(conv2d1x1_B6_merge_out_notcmp1754),
        .out_notcmp2235_pop1762(conv2d1x1_B6_merge_out_notcmp2235_pop1762),
        .out_notcmp2253(conv2d1x1_B6_merge_out_notcmp2253),
        .out_pop1257(conv2d1x1_B6_merge_out_pop1257),
        .out_pop1358(conv2d1x1_B6_merge_out_pop1358),
        .out_stall_out_0(conv2d1x1_B6_merge_out_stall_out_0),
        .out_stall_out_1(conv2d1x1_B6_merge_out_stall_out_1),
        .out_unnamed_conv2d1x111(conv2d1x1_B6_merge_out_unnamed_conv2d1x111),
        .out_unnamed_conv2d1x112(conv2d1x1_B6_merge_out_unnamed_conv2d1x112),
        .out_unnamed_conv2d1x113(conv2d1x1_B6_merge_out_unnamed_conv2d1x113),
        .out_valid_out(conv2d1x1_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B6_stall_region(BLACKBOX,2)
    conv2d1x1_bb_B6_stall_region thebb_conv2d1x1_B6_stall_region (
        .in_filter_weight(in_filter_weight),
        .in_flush(in_flush),
        .in_forked(conv2d1x1_B6_merge_out_forked),
        .in_ij_028_pop1055(conv2d1x1_B6_merge_out_ij_028_pop1055),
        .in_input_im(in_input_im),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_lm18_conv2d1x1_avm_readdata(in_lm18_conv2d1x1_avm_readdata),
        .in_lm18_conv2d1x1_avm_readdatavalid(in_lm18_conv2d1x1_avm_readdatavalid),
        .in_lm18_conv2d1x1_avm_waitrequest(in_lm18_conv2d1x1_avm_waitrequest),
        .in_lm18_conv2d1x1_avm_writeack(in_lm18_conv2d1x1_avm_writeack),
        .in_lm20_conv2d1x1_avm_readdata(in_lm20_conv2d1x1_avm_readdata),
        .in_lm20_conv2d1x1_avm_readdatavalid(in_lm20_conv2d1x1_avm_readdatavalid),
        .in_lm20_conv2d1x1_avm_waitrequest(in_lm20_conv2d1x1_avm_waitrequest),
        .in_lm20_conv2d1x1_avm_writeack(in_lm20_conv2d1x1_avm_writeack),
        .in_lm29_pop1459(conv2d1x1_B6_merge_out_lm29_pop1459),
        .in_lm44(conv2d1x1_B6_merge_out_lm44),
        .in_mul1331_pop1560(conv2d1x1_B6_merge_out_mul1331_pop1560),
        .in_mul1347(conv2d1x1_B6_merge_out_mul1347),
        .in_mul2333_pop1661(conv2d1x1_B6_merge_out_mul2333_pop1661),
        .in_mul2350(conv2d1x1_B6_merge_out_mul2350),
        .in_mul27_pop1156(conv2d1x1_B6_merge_out_mul27_pop1156),
        .in_mul41(conv2d1x1_B6_merge_out_mul41),
        .in_notcmp1754(conv2d1x1_B6_merge_out_notcmp1754),
        .in_notcmp2235_pop1762(conv2d1x1_B6_merge_out_notcmp2235_pop1762),
        .in_notcmp2253(conv2d1x1_B6_merge_out_notcmp2253),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_pop1257(conv2d1x1_B6_merge_out_pop1257),
        .in_pop1358(conv2d1x1_B6_merge_out_pop1358),
        .in_stall_in(conv2d1x1_B6_branch_out_stall_out),
        .in_unnamed_conv2d1x111(conv2d1x1_B6_merge_out_unnamed_conv2d1x111),
        .in_unnamed_conv2d1x112(conv2d1x1_B6_merge_out_unnamed_conv2d1x112),
        .in_unnamed_conv2d1x113(conv2d1x1_B6_merge_out_unnamed_conv2d1x113),
        .in_valid_in(conv2d1x1_B6_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out(bb_conv2d1x1_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out(bb_conv2d1x1_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out),
        .out_c0_exe10151(bb_conv2d1x1_B6_stall_region_out_c0_exe10151),
        .out_c0_exe11152(bb_conv2d1x1_B6_stall_region_out_c0_exe11152),
        .out_c0_exe3144(bb_conv2d1x1_B6_stall_region_out_c0_exe3144),
        .out_c0_exe7148(bb_conv2d1x1_B6_stall_region_out_c0_exe7148),
        .out_c0_exe8149(bb_conv2d1x1_B6_stall_region_out_c0_exe8149),
        .out_c0_exe9150(bb_conv2d1x1_B6_stall_region_out_c0_exe9150),
        .out_c1_exe1(bb_conv2d1x1_B6_stall_region_out_c1_exe1),
        .out_lm18_conv2d1x1_avm_address(bb_conv2d1x1_B6_stall_region_out_lm18_conv2d1x1_avm_address),
        .out_lm18_conv2d1x1_avm_burstcount(bb_conv2d1x1_B6_stall_region_out_lm18_conv2d1x1_avm_burstcount),
        .out_lm18_conv2d1x1_avm_byteenable(bb_conv2d1x1_B6_stall_region_out_lm18_conv2d1x1_avm_byteenable),
        .out_lm18_conv2d1x1_avm_enable(bb_conv2d1x1_B6_stall_region_out_lm18_conv2d1x1_avm_enable),
        .out_lm18_conv2d1x1_avm_read(bb_conv2d1x1_B6_stall_region_out_lm18_conv2d1x1_avm_read),
        .out_lm18_conv2d1x1_avm_write(bb_conv2d1x1_B6_stall_region_out_lm18_conv2d1x1_avm_write),
        .out_lm18_conv2d1x1_avm_writedata(bb_conv2d1x1_B6_stall_region_out_lm18_conv2d1x1_avm_writedata),
        .out_lm20_conv2d1x1_avm_address(bb_conv2d1x1_B6_stall_region_out_lm20_conv2d1x1_avm_address),
        .out_lm20_conv2d1x1_avm_burstcount(bb_conv2d1x1_B6_stall_region_out_lm20_conv2d1x1_avm_burstcount),
        .out_lm20_conv2d1x1_avm_byteenable(bb_conv2d1x1_B6_stall_region_out_lm20_conv2d1x1_avm_byteenable),
        .out_lm20_conv2d1x1_avm_enable(bb_conv2d1x1_B6_stall_region_out_lm20_conv2d1x1_avm_enable),
        .out_lm20_conv2d1x1_avm_read(bb_conv2d1x1_B6_stall_region_out_lm20_conv2d1x1_avm_read),
        .out_lm20_conv2d1x1_avm_write(bb_conv2d1x1_B6_stall_region_out_lm20_conv2d1x1_avm_write),
        .out_lm20_conv2d1x1_avm_writedata(bb_conv2d1x1_B6_stall_region_out_lm20_conv2d1x1_avm_writedata),
        .out_pipeline_valid_out(bb_conv2d1x1_B6_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv2d1x1_B6_stall_region_out_stall_out),
        .out_valid_out(bb_conv2d1x1_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B6_branch(BLACKBOX,3)
    conv2d1x1_B6_branch theconv2d1x1_B6_branch (
        .in_c0_exe10151(bb_conv2d1x1_B6_stall_region_out_c0_exe10151),
        .in_c0_exe11152(bb_conv2d1x1_B6_stall_region_out_c0_exe11152),
        .in_c0_exe3144(bb_conv2d1x1_B6_stall_region_out_c0_exe3144),
        .in_c0_exe7148(bb_conv2d1x1_B6_stall_region_out_c0_exe7148),
        .in_c0_exe8149(bb_conv2d1x1_B6_stall_region_out_c0_exe8149),
        .in_c0_exe9150(bb_conv2d1x1_B6_stall_region_out_c0_exe9150),
        .in_c1_exe1(bb_conv2d1x1_B6_stall_region_out_c1_exe1),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv2d1x1_B6_stall_region_out_valid_out),
        .out_c0_exe10151(conv2d1x1_B6_branch_out_c0_exe10151),
        .out_c0_exe11152(conv2d1x1_B6_branch_out_c0_exe11152),
        .out_c0_exe3144(conv2d1x1_B6_branch_out_c0_exe3144),
        .out_c0_exe8149(conv2d1x1_B6_branch_out_c0_exe8149),
        .out_c0_exe9150(conv2d1x1_B6_branch_out_c0_exe9150),
        .out_c1_exe1(conv2d1x1_B6_branch_out_c1_exe1),
        .out_stall_out(conv2d1x1_B6_branch_out_stall_out),
        .out_valid_out_0(conv2d1x1_B6_branch_out_valid_out_0),
        .out_valid_out_1(conv2d1x1_B6_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10151(GPOUT,60)
    assign out_c0_exe10151 = conv2d1x1_B6_branch_out_c0_exe10151;

    // out_c0_exe11152(GPOUT,61)
    assign out_c0_exe11152 = conv2d1x1_B6_branch_out_c0_exe11152;

    // out_c0_exe3144(GPOUT,62)
    assign out_c0_exe3144 = conv2d1x1_B6_branch_out_c0_exe3144;

    // out_c0_exe8149(GPOUT,63)
    assign out_c0_exe8149 = conv2d1x1_B6_branch_out_c0_exe8149;

    // out_c0_exe9150(GPOUT,64)
    assign out_c0_exe9150 = conv2d1x1_B6_branch_out_c0_exe9150;

    // out_c1_exe1(GPOUT,65)
    assign out_c1_exe1 = conv2d1x1_B6_branch_out_c1_exe1;

    // out_exiting_stall_out(GPOUT,66)
    assign out_exiting_stall_out = bb_conv2d1x1_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,67)
    assign out_exiting_valid_out = bb_conv2d1x1_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out;

    // out_lm18_conv2d1x1_avm_address(GPOUT,68)
    assign out_lm18_conv2d1x1_avm_address = bb_conv2d1x1_B6_stall_region_out_lm18_conv2d1x1_avm_address;

    // out_lm18_conv2d1x1_avm_burstcount(GPOUT,69)
    assign out_lm18_conv2d1x1_avm_burstcount = bb_conv2d1x1_B6_stall_region_out_lm18_conv2d1x1_avm_burstcount;

    // out_lm18_conv2d1x1_avm_byteenable(GPOUT,70)
    assign out_lm18_conv2d1x1_avm_byteenable = bb_conv2d1x1_B6_stall_region_out_lm18_conv2d1x1_avm_byteenable;

    // out_lm18_conv2d1x1_avm_enable(GPOUT,71)
    assign out_lm18_conv2d1x1_avm_enable = bb_conv2d1x1_B6_stall_region_out_lm18_conv2d1x1_avm_enable;

    // out_lm18_conv2d1x1_avm_read(GPOUT,72)
    assign out_lm18_conv2d1x1_avm_read = bb_conv2d1x1_B6_stall_region_out_lm18_conv2d1x1_avm_read;

    // out_lm18_conv2d1x1_avm_write(GPOUT,73)
    assign out_lm18_conv2d1x1_avm_write = bb_conv2d1x1_B6_stall_region_out_lm18_conv2d1x1_avm_write;

    // out_lm18_conv2d1x1_avm_writedata(GPOUT,74)
    assign out_lm18_conv2d1x1_avm_writedata = bb_conv2d1x1_B6_stall_region_out_lm18_conv2d1x1_avm_writedata;

    // out_lm20_conv2d1x1_avm_address(GPOUT,75)
    assign out_lm20_conv2d1x1_avm_address = bb_conv2d1x1_B6_stall_region_out_lm20_conv2d1x1_avm_address;

    // out_lm20_conv2d1x1_avm_burstcount(GPOUT,76)
    assign out_lm20_conv2d1x1_avm_burstcount = bb_conv2d1x1_B6_stall_region_out_lm20_conv2d1x1_avm_burstcount;

    // out_lm20_conv2d1x1_avm_byteenable(GPOUT,77)
    assign out_lm20_conv2d1x1_avm_byteenable = bb_conv2d1x1_B6_stall_region_out_lm20_conv2d1x1_avm_byteenable;

    // out_lm20_conv2d1x1_avm_enable(GPOUT,78)
    assign out_lm20_conv2d1x1_avm_enable = bb_conv2d1x1_B6_stall_region_out_lm20_conv2d1x1_avm_enable;

    // out_lm20_conv2d1x1_avm_read(GPOUT,79)
    assign out_lm20_conv2d1x1_avm_read = bb_conv2d1x1_B6_stall_region_out_lm20_conv2d1x1_avm_read;

    // out_lm20_conv2d1x1_avm_write(GPOUT,80)
    assign out_lm20_conv2d1x1_avm_write = bb_conv2d1x1_B6_stall_region_out_lm20_conv2d1x1_avm_write;

    // out_lm20_conv2d1x1_avm_writedata(GPOUT,81)
    assign out_lm20_conv2d1x1_avm_writedata = bb_conv2d1x1_B6_stall_region_out_lm20_conv2d1x1_avm_writedata;

    // out_stall_in_0(GPOUT,82)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,83)
    assign out_stall_out_0 = conv2d1x1_B6_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,84)
    assign out_stall_out_1 = conv2d1x1_B6_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,85)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,86)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,87)
    assign out_valid_out_0 = conv2d1x1_B6_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,88)
    assign out_valid_out_1 = conv2d1x1_B6_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,90)
    assign out_pipeline_valid_out = bb_conv2d1x1_B6_stall_region_out_pipeline_valid_out;

endmodule
