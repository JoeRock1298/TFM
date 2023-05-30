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

// SystemVerilog created from conv2d3x3_function
// SystemVerilog created on Tue May 30 12:33:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_function (
    input wire [63:0] in_arg_acl_global_size_0,
    input wire [63:0] in_arg_acl_global_size_1,
    input wire [63:0] in_arg_acl_global_size_2,
    input wire [31:0] in_arg_acl_local_size_0,
    input wire [31:0] in_arg_acl_local_size_1,
    input wire [31:0] in_arg_acl_local_size_2,
    input wire [63:0] in_arg_filter_bias,
    input wire [31:0] in_arg_filter_size,
    input wire [63:0] in_arg_filter_weight,
    input wire [31:0] in_arg_input_channels,
    input wire [63:0] in_arg_input_im,
    input wire [31:0] in_arg_input_size,
    input wire [63:0] in_arg_output_im,
    input wire [31:0] in_arg_output_size,
    input wire [31:0] in_arg_pad,
    input wire [31:0] in_arg_start_channel,
    input wire [31:0] in_arg_stride,
    input wire [511:0] in_lm13_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm13_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_lm13_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm13_conv2d3x3_avm_writeack,
    input wire [511:0] in_lm15_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm15_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_lm15_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm15_conv2d3x3_avm_writeack,
    input wire [511:0] in_lm20_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm20_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_lm20_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm20_conv2d3x3_avm_writeack,
    input wire [511:0] in_lm22_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm22_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_lm22_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm22_conv2d3x3_avm_writeack,
    input wire [511:0] in_lm25_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm25_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_lm25_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm25_conv2d3x3_avm_writeack,
    input wire [511:0] in_lm8_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm8_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_lm8_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm8_conv2d3x3_avm_writeack,
    input wire [511:0] in_lm_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_lm_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm_conv2d3x3_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [511:0] in_unnamed_conv2d3x319_conv2d3x3_avm_readdata,
    input wire [0:0] in_unnamed_conv2d3x319_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv2d3x319_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d3x319_conv2d3x3_avm_writeack,
    input wire [0:0] in_valid_in,
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
    output wire [30:0] out_lm20_conv2d3x3_avm_address,
    output wire [4:0] out_lm20_conv2d3x3_avm_burstcount,
    output wire [63:0] out_lm20_conv2d3x3_avm_byteenable,
    output wire [0:0] out_lm20_conv2d3x3_avm_enable,
    output wire [0:0] out_lm20_conv2d3x3_avm_read,
    output wire [0:0] out_lm20_conv2d3x3_avm_write,
    output wire [511:0] out_lm20_conv2d3x3_avm_writedata,
    output wire [30:0] out_lm22_conv2d3x3_avm_address,
    output wire [4:0] out_lm22_conv2d3x3_avm_burstcount,
    output wire [63:0] out_lm22_conv2d3x3_avm_byteenable,
    output wire [0:0] out_lm22_conv2d3x3_avm_enable,
    output wire [0:0] out_lm22_conv2d3x3_avm_read,
    output wire [0:0] out_lm22_conv2d3x3_avm_write,
    output wire [511:0] out_lm22_conv2d3x3_avm_writedata,
    output wire [30:0] out_lm25_conv2d3x3_avm_address,
    output wire [4:0] out_lm25_conv2d3x3_avm_burstcount,
    output wire [63:0] out_lm25_conv2d3x3_avm_byteenable,
    output wire [0:0] out_lm25_conv2d3x3_avm_enable,
    output wire [0:0] out_lm25_conv2d3x3_avm_read,
    output wire [0:0] out_lm25_conv2d3x3_avm_write,
    output wire [511:0] out_lm25_conv2d3x3_avm_writedata,
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
    output wire [0:0] out_o_active_unnamed_conv2d3x319,
    output wire [0:0] out_stall_out,
    output wire [30:0] out_unnamed_conv2d3x319_conv2d3x3_avm_address,
    output wire [4:0] out_unnamed_conv2d3x319_conv2d3x3_avm_burstcount,
    output wire [63:0] out_unnamed_conv2d3x319_conv2d3x3_avm_byteenable,
    output wire [0:0] out_unnamed_conv2d3x319_conv2d3x3_avm_enable,
    output wire [0:0] out_unnamed_conv2d3x319_conv2d3x3_avm_read,
    output wire [0:0] out_unnamed_conv2d3x319_conv2d3x3_avm_write,
    output wire [511:0] out_unnamed_conv2d3x319_conv2d3x3_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_conv2d3x3_B0_out_feedback_stall_out_0;
    wire [0:0] bb_conv2d3x3_B0_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_conv2d3x3_B0_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_conv2d3x3_B0_out_intel_reserved_ffwd_2_0;
    wire [31:0] bb_conv2d3x3_B0_out_intel_reserved_ffwd_3_0;
    wire [0:0] bb_conv2d3x3_B0_out_intel_reserved_ffwd_4_0;
    wire [0:0] bb_conv2d3x3_B0_out_intel_reserved_ffwd_5_0;
    wire [32:0] bb_conv2d3x3_B0_out_intel_reserved_ffwd_6_0;
    wire [32:0] bb_conv2d3x3_B0_out_intel_reserved_ffwd_7_0;
    wire [63:0] bb_conv2d3x3_B0_out_intel_reserved_ffwd_8_0;
    wire [0:0] bb_conv2d3x3_B0_out_stall_out_0;
    wire [0:0] bb_conv2d3x3_B0_out_valid_out_0;
    wire [0:0] bb_conv2d3x3_B1_out_feedback_out_0;
    wire [0:0] bb_conv2d3x3_B1_out_feedback_valid_out_0;
    wire [0:0] bb_conv2d3x3_B1_out_stall_out_0;
    wire [0:0] bb_conv2d3x3_B1_out_valid_out_0;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe11741;
    wire [63:0] bb_conv2d3x3_B10_out_c0_exe13743;
    wire [63:0] bb_conv2d3x3_B10_out_c0_exe16746;
    wire [31:0] bb_conv2d3x3_B10_out_c0_exe17747;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe18748;
    wire [31:0] bb_conv2d3x3_B10_out_c0_exe19749;
    wire [31:0] bb_conv2d3x3_B10_out_c0_exe20750;
    wire [31:0] bb_conv2d3x3_B10_out_c0_exe21751;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe22752;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe23753;
    wire [31:0] bb_conv2d3x3_B10_out_c0_exe24754;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe25755;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe26756;
    wire [31:0] bb_conv2d3x3_B10_out_c0_exe2732;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe27757;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe28758;
    wire [31:0] bb_conv2d3x3_B10_out_c0_exe29759;
    wire [31:0] bb_conv2d3x3_B10_out_c0_exe30760;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe31761;
    wire [63:0] bb_conv2d3x3_B10_out_c0_exe33763;
    wire [63:0] bb_conv2d3x3_B10_out_c0_exe34764;
    wire [31:0] bb_conv2d3x3_B10_out_c0_exe35765;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe36766;
    wire [31:0] bb_conv2d3x3_B10_out_c0_exe3733;
    wire [31:0] bb_conv2d3x3_B10_out_c0_exe37767;
    wire [31:0] bb_conv2d3x3_B10_out_c0_exe38768;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe39769;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe40;
    wire [31:0] bb_conv2d3x3_B10_out_c0_exe41;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe42;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe43;
    wire [31:0] bb_conv2d3x3_B10_out_c0_exe44;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe45;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe46;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe47;
    wire [31:0] bb_conv2d3x3_B10_out_c0_exe4734;
    wire [63:0] bb_conv2d3x3_B10_out_c0_exe48;
    wire [63:0] bb_conv2d3x3_B10_out_c0_exe49;
    wire [31:0] bb_conv2d3x3_B10_out_c0_exe50;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe51;
    wire [31:0] bb_conv2d3x3_B10_out_c0_exe5735;
    wire [31:0] bb_conv2d3x3_B10_out_c0_exe6736;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe8738;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe9739;
    wire [31:0] bb_conv2d3x3_B10_out_c1_exe1;
    wire [0:0] bb_conv2d3x3_B10_out_exiting_stall_out;
    wire [0:0] bb_conv2d3x3_B10_out_exiting_valid_out;
    wire [30:0] bb_conv2d3x3_B10_out_lm8_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B10_out_lm8_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B10_out_lm8_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B10_out_lm8_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B10_out_lm8_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B10_out_lm8_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B10_out_lm8_conv2d3x3_avm_writedata;
    wire [30:0] bb_conv2d3x3_B10_out_lm_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B10_out_lm_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B10_out_lm_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B10_out_lm_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B10_out_lm_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B10_out_lm_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B10_out_lm_conv2d3x3_avm_writedata;
    wire [0:0] bb_conv2d3x3_B10_out_pipeline_valid_out;
    wire [0:0] bb_conv2d3x3_B10_out_stall_in_0;
    wire [0:0] bb_conv2d3x3_B10_out_stall_out_0;
    wire [0:0] bb_conv2d3x3_B10_out_stall_out_1;
    wire [0:0] bb_conv2d3x3_B10_out_valid_in_0;
    wire [0:0] bb_conv2d3x3_B10_out_valid_in_1;
    wire [0:0] bb_conv2d3x3_B10_out_valid_out_0;
    wire [63:0] bb_conv2d3x3_B11_out_c0_exe10925;
    wire [63:0] bb_conv2d3x3_B11_out_c0_exe13928;
    wire [31:0] bb_conv2d3x3_B11_out_c0_exe14929;
    wire [0:0] bb_conv2d3x3_B11_out_c0_exe15930;
    wire [31:0] bb_conv2d3x3_B11_out_c0_exe16931;
    wire [31:0] bb_conv2d3x3_B11_out_c0_exe17932;
    wire [0:0] bb_conv2d3x3_B11_out_c0_exe18933;
    wire [0:0] bb_conv2d3x3_B11_out_c0_exe19934;
    wire [31:0] bb_conv2d3x3_B11_out_c0_exe20935;
    wire [31:0] bb_conv2d3x3_B11_out_c0_exe21936;
    wire [0:0] bb_conv2d3x3_B11_out_c0_exe22937;
    wire [0:0] bb_conv2d3x3_B11_out_c0_exe23938;
    wire [0:0] bb_conv2d3x3_B11_out_c0_exe24939;
    wire [31:0] bb_conv2d3x3_B11_out_c0_exe25940;
    wire [31:0] bb_conv2d3x3_B11_out_c0_exe26941;
    wire [0:0] bb_conv2d3x3_B11_out_c0_exe27942;
    wire [31:0] bb_conv2d3x3_B11_out_c0_exe28943;
    wire [31:0] bb_conv2d3x3_B11_out_c0_exe2917;
    wire [31:0] bb_conv2d3x3_B11_out_c0_exe29944;
    wire [31:0] bb_conv2d3x3_B11_out_c0_exe30945;
    wire [0:0] bb_conv2d3x3_B11_out_c0_exe31946;
    wire [63:0] bb_conv2d3x3_B11_out_c0_exe33948;
    wire [63:0] bb_conv2d3x3_B11_out_c0_exe34949;
    wire [31:0] bb_conv2d3x3_B11_out_c0_exe35950;
    wire [0:0] bb_conv2d3x3_B11_out_c0_exe36951;
    wire [31:0] bb_conv2d3x3_B11_out_c0_exe37952;
    wire [31:0] bb_conv2d3x3_B11_out_c0_exe38953;
    wire [31:0] bb_conv2d3x3_B11_out_c0_exe3918;
    wire [0:0] bb_conv2d3x3_B11_out_c0_exe39954;
    wire [0:0] bb_conv2d3x3_B11_out_c0_exe40955;
    wire [31:0] bb_conv2d3x3_B11_out_c0_exe41956;
    wire [0:0] bb_conv2d3x3_B11_out_c0_exe42957;
    wire [0:0] bb_conv2d3x3_B11_out_c0_exe43958;
    wire [31:0] bb_conv2d3x3_B11_out_c0_exe44959;
    wire [0:0] bb_conv2d3x3_B11_out_c0_exe45960;
    wire [0:0] bb_conv2d3x3_B11_out_c0_exe46961;
    wire [0:0] bb_conv2d3x3_B11_out_c0_exe47962;
    wire [63:0] bb_conv2d3x3_B11_out_c0_exe48963;
    wire [63:0] bb_conv2d3x3_B11_out_c0_exe49964;
    wire [31:0] bb_conv2d3x3_B11_out_c0_exe50965;
    wire [0:0] bb_conv2d3x3_B11_out_c0_exe51966;
    wire [0:0] bb_conv2d3x3_B11_out_c0_exe5920;
    wire [0:0] bb_conv2d3x3_B11_out_c0_exe6921;
    wire [0:0] bb_conv2d3x3_B11_out_c0_exe8923;
    wire [31:0] bb_conv2d3x3_B11_out_c1_exe1983;
    wire [0:0] bb_conv2d3x3_B11_out_exiting_stall_out;
    wire [0:0] bb_conv2d3x3_B11_out_exiting_valid_out;
    wire [30:0] bb_conv2d3x3_B11_out_lm13_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B11_out_lm13_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B11_out_lm13_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B11_out_lm13_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B11_out_lm13_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B11_out_lm13_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B11_out_lm13_conv2d3x3_avm_writedata;
    wire [30:0] bb_conv2d3x3_B11_out_lm15_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B11_out_lm15_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B11_out_lm15_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B11_out_lm15_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B11_out_lm15_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B11_out_lm15_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B11_out_lm15_conv2d3x3_avm_writedata;
    wire [0:0] bb_conv2d3x3_B11_out_pipeline_valid_out;
    wire [0:0] bb_conv2d3x3_B11_out_stall_in_0;
    wire [0:0] bb_conv2d3x3_B11_out_stall_out_0;
    wire [0:0] bb_conv2d3x3_B11_out_stall_out_1;
    wire [0:0] bb_conv2d3x3_B11_out_valid_in_0;
    wire [0:0] bb_conv2d3x3_B11_out_valid_in_1;
    wire [0:0] bb_conv2d3x3_B11_out_valid_out_0;
    wire [31:0] bb_conv2d3x3_B12_out_add41_2;
    wire [63:0] bb_conv2d3x3_B12_out_c0_exe1092551;
    wire [63:0] bb_conv2d3x3_B12_out_c0_exe1392852;
    wire [31:0] bb_conv2d3x3_B12_out_c0_exe1492953;
    wire [0:0] bb_conv2d3x3_B12_out_c0_exe1593054;
    wire [31:0] bb_conv2d3x3_B12_out_c0_exe1693155;
    wire [31:0] bb_conv2d3x3_B12_out_c0_exe1793256;
    wire [0:0] bb_conv2d3x3_B12_out_c0_exe1893357;
    wire [31:0] bb_conv2d3x3_B12_out_c0_exe1991;
    wire [0:0] bb_conv2d3x3_B12_out_c0_exe1993458;
    wire [31:0] bb_conv2d3x3_B12_out_c0_exe2093559;
    wire [31:0] bb_conv2d3x3_B12_out_c0_exe2193660;
    wire [0:0] bb_conv2d3x3_B12_out_c0_exe2293761;
    wire [0:0] bb_conv2d3x3_B12_out_c0_exe2393862;
    wire [0:0] bb_conv2d3x3_B12_out_c0_exe2493963;
    wire [31:0] bb_conv2d3x3_B12_out_c0_exe2594064;
    wire [31:0] bb_conv2d3x3_B12_out_c0_exe2694165;
    wire [0:0] bb_conv2d3x3_B12_out_c0_exe2794266;
    wire [31:0] bb_conv2d3x3_B12_out_c0_exe2894367;
    wire [31:0] bb_conv2d3x3_B12_out_c0_exe3094569;
    wire [0:0] bb_conv2d3x3_B12_out_c0_exe3194670;
    wire [63:0] bb_conv2d3x3_B12_out_c0_exe3394871;
    wire [63:0] bb_conv2d3x3_B12_out_c0_exe3494972;
    wire [31:0] bb_conv2d3x3_B12_out_c0_exe3595073;
    wire [0:0] bb_conv2d3x3_B12_out_c0_exe3695174;
    wire [31:0] bb_conv2d3x3_B12_out_c0_exe3795275;
    wire [31:0] bb_conv2d3x3_B12_out_c0_exe3895376;
    wire [31:0] bb_conv2d3x3_B12_out_c0_exe391847;
    wire [0:0] bb_conv2d3x3_B12_out_c0_exe3995477;
    wire [0:0] bb_conv2d3x3_B12_out_c0_exe4095578;
    wire [31:0] bb_conv2d3x3_B12_out_c0_exe4195679;
    wire [0:0] bb_conv2d3x3_B12_out_c0_exe4295780;
    wire [0:0] bb_conv2d3x3_B12_out_c0_exe4395881;
    wire [31:0] bb_conv2d3x3_B12_out_c0_exe4495982;
    wire [0:0] bb_conv2d3x3_B12_out_c0_exe4596083;
    wire [0:0] bb_conv2d3x3_B12_out_c0_exe4696184;
    wire [0:0] bb_conv2d3x3_B12_out_c0_exe4796285;
    wire [63:0] bb_conv2d3x3_B12_out_c0_exe4896386;
    wire [63:0] bb_conv2d3x3_B12_out_c0_exe4996487;
    wire [31:0] bb_conv2d3x3_B12_out_c0_exe5096588;
    wire [0:0] bb_conv2d3x3_B12_out_c0_exe5196689;
    wire [0:0] bb_conv2d3x3_B12_out_c0_exe592048;
    wire [0:0] bb_conv2d3x3_B12_out_c0_exe692149;
    wire [0:0] bb_conv2d3x3_B12_out_c0_exe892350;
    wire [31:0] bb_conv2d3x3_B12_out_c1_exe198390;
    wire [0:0] bb_conv2d3x3_B12_out_stall_out_0;
    wire [0:0] bb_conv2d3x3_B12_out_valid_out_0;
    wire [63:0] bb_conv2d3x3_B13_out_c0_exe111148;
    wire [63:0] bb_conv2d3x3_B13_out_c0_exe121149;
    wire [31:0] bb_conv2d3x3_B13_out_c0_exe131150;
    wire [31:0] bb_conv2d3x3_B13_out_c0_exe141151;
    wire [0:0] bb_conv2d3x3_B13_out_c0_exe151152;
    wire [0:0] bb_conv2d3x3_B13_out_c0_exe161153;
    wire [31:0] bb_conv2d3x3_B13_out_c0_exe171154;
    wire [31:0] bb_conv2d3x3_B13_out_c0_exe181155;
    wire [31:0] bb_conv2d3x3_B13_out_c0_exe191156;
    wire [0:0] bb_conv2d3x3_B13_out_c0_exe201157;
    wire [0:0] bb_conv2d3x3_B13_out_c0_exe211158;
    wire [31:0] bb_conv2d3x3_B13_out_c0_exe221159;
    wire [0:0] bb_conv2d3x3_B13_out_c0_exe231160;
    wire [0:0] bb_conv2d3x3_B13_out_c0_exe241161;
    wire [31:0] bb_conv2d3x3_B13_out_c0_exe251162;
    wire [0:0] bb_conv2d3x3_B13_out_c0_exe261163;
    wire [0:0] bb_conv2d3x3_B13_out_c0_exe271164;
    wire [31:0] bb_conv2d3x3_B13_out_c0_exe281165;
    wire [31:0] bb_conv2d3x3_B13_out_c0_exe291166;
    wire [0:0] bb_conv2d3x3_B13_out_c0_exe301167;
    wire [0:0] bb_conv2d3x3_B13_out_c0_exe311168;
    wire [0:0] bb_conv2d3x3_B13_out_c0_exe31140;
    wire [31:0] bb_conv2d3x3_B13_out_c0_exe321169;
    wire [31:0] bb_conv2d3x3_B13_out_c0_exe331170;
    wire [31:0] bb_conv2d3x3_B13_out_c0_exe341171;
    wire [0:0] bb_conv2d3x3_B13_out_c0_exe351172;
    wire [63:0] bb_conv2d3x3_B13_out_c0_exe371174;
    wire [63:0] bb_conv2d3x3_B13_out_c0_exe381175;
    wire [31:0] bb_conv2d3x3_B13_out_c0_exe391176;
    wire [0:0] bb_conv2d3x3_B13_out_c0_exe401177;
    wire [31:0] bb_conv2d3x3_B13_out_c0_exe411178;
    wire [0:0] bb_conv2d3x3_B13_out_c0_exe41141;
    wire [31:0] bb_conv2d3x3_B13_out_c0_exe421179;
    wire [0:0] bb_conv2d3x3_B13_out_c0_exe431180;
    wire [0:0] bb_conv2d3x3_B13_out_c0_exe441181;
    wire [31:0] bb_conv2d3x3_B13_out_c0_exe451182;
    wire [0:0] bb_conv2d3x3_B13_out_c0_exe461183;
    wire [0:0] bb_conv2d3x3_B13_out_c0_exe471184;
    wire [31:0] bb_conv2d3x3_B13_out_c0_exe481185;
    wire [0:0] bb_conv2d3x3_B13_out_c0_exe491186;
    wire [0:0] bb_conv2d3x3_B13_out_c0_exe501187;
    wire [0:0] bb_conv2d3x3_B13_out_c0_exe511188;
    wire [63:0] bb_conv2d3x3_B13_out_c0_exe521189;
    wire [63:0] bb_conv2d3x3_B13_out_c0_exe53;
    wire [31:0] bb_conv2d3x3_B13_out_c0_exe54;
    wire [0:0] bb_conv2d3x3_B13_out_c0_exe55;
    wire [0:0] bb_conv2d3x3_B13_out_c0_exe61143;
    wire [63:0] bb_conv2d3x3_B13_out_c0_exe81145;
    wire [31:0] bb_conv2d3x3_B13_out_c1_exe11205;
    wire [31:0] bb_conv2d3x3_B13_out_c1_exe2;
    wire [0:0] bb_conv2d3x3_B13_out_exiting_stall_out;
    wire [0:0] bb_conv2d3x3_B13_out_exiting_valid_out;
    wire [30:0] bb_conv2d3x3_B13_out_lm20_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B13_out_lm20_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B13_out_lm20_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B13_out_lm20_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B13_out_lm20_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B13_out_lm20_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B13_out_lm20_conv2d3x3_avm_writedata;
    wire [30:0] bb_conv2d3x3_B13_out_lm22_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B13_out_lm22_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B13_out_lm22_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B13_out_lm22_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B13_out_lm22_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B13_out_lm22_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B13_out_lm22_conv2d3x3_avm_writedata;
    wire [0:0] bb_conv2d3x3_B13_out_pipeline_valid_out;
    wire [0:0] bb_conv2d3x3_B13_out_stall_in_0;
    wire [0:0] bb_conv2d3x3_B13_out_stall_out_0;
    wire [0:0] bb_conv2d3x3_B13_out_stall_out_1;
    wire [0:0] bb_conv2d3x3_B13_out_valid_in_0;
    wire [0:0] bb_conv2d3x3_B13_out_valid_in_1;
    wire [0:0] bb_conv2d3x3_B13_out_valid_out_0;
    wire [63:0] bb_conv2d3x3_B14_out_c0_exe11114897;
    wire [63:0] bb_conv2d3x3_B14_out_c0_exe12114998;
    wire [31:0] bb_conv2d3x3_B14_out_c0_exe131150100;
    wire [31:0] bb_conv2d3x3_B14_out_c0_exe141151101;
    wire [0:0] bb_conv2d3x3_B14_out_c0_exe151152105;
    wire [0:0] bb_conv2d3x3_B14_out_c0_exe161153106;
    wire [31:0] bb_conv2d3x3_B14_out_c0_exe171154107;
    wire [31:0] bb_conv2d3x3_B14_out_c0_exe181155109;
    wire [31:0] bb_conv2d3x3_B14_out_c0_exe191156110;
    wire [0:0] bb_conv2d3x3_B14_out_c0_exe201157111;
    wire [0:0] bb_conv2d3x3_B14_out_c0_exe211158112;
    wire [31:0] bb_conv2d3x3_B14_out_c0_exe221159113;
    wire [0:0] bb_conv2d3x3_B14_out_c0_exe231160114;
    wire [0:0] bb_conv2d3x3_B14_out_c0_exe241161115;
    wire [31:0] bb_conv2d3x3_B14_out_c0_exe251162116;
    wire [0:0] bb_conv2d3x3_B14_out_c0_exe261163119;
    wire [0:0] bb_conv2d3x3_B14_out_c0_exe271164120;
    wire [31:0] bb_conv2d3x3_B14_out_c0_exe281165121;
    wire [31:0] bb_conv2d3x3_B14_out_c0_exe291166122;
    wire [0:0] bb_conv2d3x3_B14_out_c0_exe301167124;
    wire [0:0] bb_conv2d3x3_B14_out_c0_exe311168125;
    wire [0:0] bb_conv2d3x3_B14_out_c0_exe3114091;
    wire [31:0] bb_conv2d3x3_B14_out_c0_exe321169127;
    wire [31:0] bb_conv2d3x3_B14_out_c0_exe331170128;
    wire [31:0] bb_conv2d3x3_B14_out_c0_exe341171129;
    wire [63:0] bb_conv2d3x3_B14_out_c0_exe371174131;
    wire [63:0] bb_conv2d3x3_B14_out_c0_exe381175132;
    wire [31:0] bb_conv2d3x3_B14_out_c0_exe391176133;
    wire [0:0] bb_conv2d3x3_B14_out_c0_exe401177134;
    wire [31:0] bb_conv2d3x3_B14_out_c0_exe411178135;
    wire [0:0] bb_conv2d3x3_B14_out_c0_exe4114192;
    wire [31:0] bb_conv2d3x3_B14_out_c0_exe421179136;
    wire [0:0] bb_conv2d3x3_B14_out_c0_exe431180137;
    wire [0:0] bb_conv2d3x3_B14_out_c0_exe441181138;
    wire [31:0] bb_conv2d3x3_B14_out_c0_exe451182139;
    wire [0:0] bb_conv2d3x3_B14_out_c0_exe461183140;
    wire [0:0] bb_conv2d3x3_B14_out_c0_exe471184141;
    wire [31:0] bb_conv2d3x3_B14_out_c0_exe481185142;
    wire [0:0] bb_conv2d3x3_B14_out_c0_exe491186143;
    wire [0:0] bb_conv2d3x3_B14_out_c0_exe501187144;
    wire [0:0] bb_conv2d3x3_B14_out_c0_exe511188145;
    wire [63:0] bb_conv2d3x3_B14_out_c0_exe521189146;
    wire [63:0] bb_conv2d3x3_B14_out_c0_exe53147;
    wire [31:0] bb_conv2d3x3_B14_out_c0_exe54148;
    wire [0:0] bb_conv2d3x3_B14_out_c0_exe55149;
    wire [0:0] bb_conv2d3x3_B14_out_c0_exe6114394;
    wire [63:0] bb_conv2d3x3_B14_out_c0_exe8114595;
    wire [31:0] bb_conv2d3x3_B14_out_c1_exe11205151;
    wire [31:0] bb_conv2d3x3_B14_out_c1_exe2152;
    wire [0:0] bb_conv2d3x3_B14_out_stall_in_0;
    wire [0:0] bb_conv2d3x3_B14_out_stall_out_0;
    wire [0:0] bb_conv2d3x3_B14_out_valid_out_0;
    wire [0:0] bb_conv2d3x3_B14_out_valid_out_1;
    wire [63:0] bb_conv2d3x3_B2_out_c0_exe1;
    wire [63:0] bb_conv2d3x3_B2_out_c0_exe2;
    wire [0:0] bb_conv2d3x3_B2_out_c0_exe6;
    wire [31:0] bb_conv2d3x3_B2_out_lm25;
    wire [30:0] bb_conv2d3x3_B2_out_lm25_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B2_out_lm25_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B2_out_lm25_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B2_out_lm25_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B2_out_lm25_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B2_out_lm25_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B2_out_lm25_conv2d3x3_avm_writedata;
    wire [0:0] bb_conv2d3x3_B2_out_pipeline_valid_out;
    wire [0:0] bb_conv2d3x3_B2_out_stall_out_0;
    wire [0:0] bb_conv2d3x3_B2_out_stall_out_1;
    wire [0:0] bb_conv2d3x3_B2_out_valid_in_0;
    wire [0:0] bb_conv2d3x3_B2_out_valid_in_1;
    wire [0:0] bb_conv2d3x3_B2_out_valid_out_0;
    wire [0:0] bb_conv2d3x3_B3_out_c0_exe10;
    wire [0:0] bb_conv2d3x3_B3_out_c0_exe12;
    wire [63:0] bb_conv2d3x3_B3_out_c0_exe13;
    wire [63:0] bb_conv2d3x3_B3_out_c0_exe14;
    wire [31:0] bb_conv2d3x3_B3_out_c0_exe15;
    wire [31:0] bb_conv2d3x3_B3_out_c0_exe1558;
    wire [0:0] bb_conv2d3x3_B3_out_c0_exe16;
    wire [63:0] bb_conv2d3x3_B3_out_c0_exe17;
    wire [63:0] bb_conv2d3x3_B3_out_c0_exe18;
    wire [31:0] bb_conv2d3x3_B3_out_c0_exe19;
    wire [0:0] bb_conv2d3x3_B3_out_c0_exe20;
    wire [31:0] bb_conv2d3x3_B3_out_c0_exe2559;
    wire [0:0] bb_conv2d3x3_B3_out_c0_exe3560;
    wire [0:0] bb_conv2d3x3_B3_out_c0_exe4561;
    wire [31:0] bb_conv2d3x3_B3_out_c0_exe5562;
    wire [0:0] bb_conv2d3x3_B3_out_c0_exe6563;
    wire [0:0] bb_conv2d3x3_B3_out_c0_exe7;
    wire [31:0] bb_conv2d3x3_B3_out_c0_exe8;
    wire [0:0] bb_conv2d3x3_B3_out_c0_exe9;
    wire [0:0] bb_conv2d3x3_B3_out_exiting_stall_out;
    wire [0:0] bb_conv2d3x3_B3_out_exiting_valid_out;
    wire [0:0] bb_conv2d3x3_B3_out_pipeline_valid_out;
    wire [0:0] bb_conv2d3x3_B3_out_stall_out_0;
    wire [0:0] bb_conv2d3x3_B3_out_stall_out_1;
    wire [0:0] bb_conv2d3x3_B3_out_valid_in_0;
    wire [0:0] bb_conv2d3x3_B3_out_valid_in_1;
    wire [0:0] bb_conv2d3x3_B3_out_valid_out_0;
    wire [0:0] bb_conv2d3x3_B4_out_stall_in_0;
    wire [0:0] bb_conv2d3x3_B4_out_stall_out_0;
    wire [0:0] bb_conv2d3x3_B4_out_valid_out_0;
    wire [31:0] bb_conv2d3x3_B5_out_c0_exe10605;
    wire [31:0] bb_conv2d3x3_B5_out_c0_exe11606;
    wire [0:0] bb_conv2d3x3_B5_out_c0_exe12607;
    wire [0:0] bb_conv2d3x3_B5_out_c0_exe13608;
    wire [31:0] bb_conv2d3x3_B5_out_c0_exe14609;
    wire [0:0] bb_conv2d3x3_B5_out_c0_exe15610;
    wire [31:0] bb_conv2d3x3_B5_out_c0_exe1596;
    wire [0:0] bb_conv2d3x3_B5_out_c0_exe16611;
    wire [31:0] bb_conv2d3x3_B5_out_c0_exe17612;
    wire [0:0] bb_conv2d3x3_B5_out_c0_exe18613;
    wire [0:0] bb_conv2d3x3_B5_out_c0_exe19614;
    wire [0:0] bb_conv2d3x3_B5_out_c0_exe20615;
    wire [63:0] bb_conv2d3x3_B5_out_c0_exe21;
    wire [63:0] bb_conv2d3x3_B5_out_c0_exe22;
    wire [31:0] bb_conv2d3x3_B5_out_c0_exe23;
    wire [0:0] bb_conv2d3x3_B5_out_c0_exe24;
    wire [31:0] bb_conv2d3x3_B5_out_c0_exe25;
    wire [31:0] bb_conv2d3x3_B5_out_c0_exe2597;
    wire [31:0] bb_conv2d3x3_B5_out_c0_exe26;
    wire [0:0] bb_conv2d3x3_B5_out_c0_exe27;
    wire [0:0] bb_conv2d3x3_B5_out_c0_exe28;
    wire [31:0] bb_conv2d3x3_B5_out_c0_exe29;
    wire [0:0] bb_conv2d3x3_B5_out_c0_exe30;
    wire [0:0] bb_conv2d3x3_B5_out_c0_exe31;
    wire [31:0] bb_conv2d3x3_B5_out_c0_exe32;
    wire [0:0] bb_conv2d3x3_B5_out_c0_exe33;
    wire [0:0] bb_conv2d3x3_B5_out_c0_exe34;
    wire [0:0] bb_conv2d3x3_B5_out_c0_exe35;
    wire [63:0] bb_conv2d3x3_B5_out_c0_exe36;
    wire [63:0] bb_conv2d3x3_B5_out_c0_exe37;
    wire [31:0] bb_conv2d3x3_B5_out_c0_exe38;
    wire [0:0] bb_conv2d3x3_B5_out_c0_exe39;
    wire [0:0] bb_conv2d3x3_B5_out_c0_exe4599;
    wire [31:0] bb_conv2d3x3_B5_out_c0_exe5600;
    wire [63:0] bb_conv2d3x3_B5_out_c0_exe6601;
    wire [63:0] bb_conv2d3x3_B5_out_c0_exe7602;
    wire [31:0] bb_conv2d3x3_B5_out_c0_exe8603;
    wire [0:0] bb_conv2d3x3_B5_out_c0_exe9604;
    wire [0:0] bb_conv2d3x3_B5_out_exiting_stall_out;
    wire [0:0] bb_conv2d3x3_B5_out_exiting_valid_out;
    wire [0:0] bb_conv2d3x3_B5_out_pipeline_valid_out;
    wire [0:0] bb_conv2d3x3_B5_out_stall_out_0;
    wire [0:0] bb_conv2d3x3_B5_out_stall_out_1;
    wire [0:0] bb_conv2d3x3_B5_out_valid_in_0;
    wire [0:0] bb_conv2d3x3_B5_out_valid_in_1;
    wire [0:0] bb_conv2d3x3_B5_out_valid_out_0;
    wire [0:0] bb_conv2d3x3_B6_out_c0_exe151152103;
    wire [0:0] bb_conv2d3x3_B6_out_stall_in_0;
    wire [0:0] bb_conv2d3x3_B6_out_stall_out_0;
    wire [0:0] bb_conv2d3x3_B6_out_valid_out_0;
    wire [31:0] bb_conv2d3x3_B7_out_add110;
    wire [31:0] bb_conv2d3x3_B7_out_add247;
    wire [0:0] bb_conv2d3x3_B7_out_c0_exe1627;
    wire [31:0] bb_conv2d3x3_B7_out_c0_exe2628;
    wire [31:0] bb_conv2d3x3_B7_out_c0_exe3629;
    wire [31:0] bb_conv2d3x3_B7_out_c0_exe4630;
    wire [0:0] bb_conv2d3x3_B7_out_c0_exe5631;
    wire [0:0] bb_conv2d3x3_B7_out_cmp26120;
    wire [0:0] bb_conv2d3x3_B7_out_cmp26265;
    wire [0:0] bb_conv2d3x3_B7_out_cmp26_1135;
    wire [0:0] bb_conv2d3x3_B7_out_cmp26_1292;
    wire [0:0] bb_conv2d3x3_B7_out_cmp26_2150;
    wire [0:0] bb_conv2d3x3_B7_out_cmp26_2319;
    wire [0:0] bb_conv2d3x3_B7_out_cmp27125;
    wire [0:0] bb_conv2d3x3_B7_out_cmp27274;
    wire [0:0] bb_conv2d3x3_B7_out_cmp27_1140;
    wire [0:0] bb_conv2d3x3_B7_out_cmp27_1301;
    wire [0:0] bb_conv2d3x3_B7_out_cmp27_2155;
    wire [0:0] bb_conv2d3x3_B7_out_cmp27_2328;
    wire [63:0] bb_conv2d3x3_B7_out_filter_weight_addr_067_replace_phi204;
    wire [63:0] bb_conv2d3x3_B7_out_filter_weight_addr_067_replace_phi85_pop19346;
    wire [63:0] bb_conv2d3x3_B7_out_filter_weight_addr_067_replace_phi87;
    wire [31:0] bb_conv2d3x3_B7_out_j_061_pop24179;
    wire [31:0] bb_conv2d3x3_B7_out_k_059;
    wire [31:0] bb_conv2d3x3_B7_out_lm25226;
    wire [31:0] bb_conv2d3x3_B7_out_lm2597_pop21364;
    wire [31:0] bb_conv2d3x3_B7_out_lm2599;
    wire [31:0] bb_conv2d3x3_B7_out_mul56115;
    wire [31:0] bb_conv2d3x3_B7_out_mul56256;
    wire [0:0] bb_conv2d3x3_B7_out_notcmp73175;
    wire [0:0] bb_conv2d3x3_B7_out_notcmp77160;
    wire [0:0] bb_conv2d3x3_B7_out_notcmp77337;
    wire [0:0] bb_conv2d3x3_B7_out_notcmp81103_pop22373;
    wire [0:0] bb_conv2d3x3_B7_out_notcmp81105;
    wire [0:0] bb_conv2d3x3_B7_out_notcmp81237;
    wire [63:0] bb_conv2d3x3_B7_out_output_im_addr_068_replace_phi215;
    wire [63:0] bb_conv2d3x3_B7_out_output_im_addr_068_replace_phi91_pop20355;
    wire [63:0] bb_conv2d3x3_B7_out_output_im_addr_068_replace_phi93;
    wire [31:0] bb_conv2d3x3_B7_out_pad_sync_buffer171;
    wire [0:0] bb_conv2d3x3_B7_out_stall_out_0;
    wire [0:0] bb_conv2d3x3_B7_out_stall_out_1;
    wire [31:0] bb_conv2d3x3_B7_out_stride_sync_buffer167;
    wire [31:0] bb_conv2d3x3_B7_out_sub_1130;
    wire [31:0] bb_conv2d3x3_B7_out_sub_1283;
    wire [31:0] bb_conv2d3x3_B7_out_sub_2145;
    wire [31:0] bb_conv2d3x3_B7_out_sub_2310;
    wire [31:0] bb_conv2d3x3_B7_out_tmp_058;
    wire [0:0] bb_conv2d3x3_B7_out_valid_in_0;
    wire [0:0] bb_conv2d3x3_B7_out_valid_in_1;
    wire [0:0] bb_conv2d3x3_B7_out_valid_out_0;
    wire [0:0] bb_conv2d3x3_B8_out_c0_exe151152104;
    wire [0:0] bb_conv2d3x3_B8_out_c0_exe261163118;
    wire [0:0] bb_conv2d3x3_B8_out_lsu_unnamed_conv2d3x319_o_active;
    wire [0:0] bb_conv2d3x3_B8_out_stall_in_0;
    wire [0:0] bb_conv2d3x3_B8_out_stall_out_0;
    wire [30:0] bb_conv2d3x3_B8_out_unnamed_conv2d3x319_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B8_out_unnamed_conv2d3x319_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B8_out_unnamed_conv2d3x319_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B8_out_unnamed_conv2d3x319_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B8_out_unnamed_conv2d3x319_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B8_out_unnamed_conv2d3x319_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B8_out_unnamed_conv2d3x319_conv2d3x3_avm_writedata;
    wire [0:0] bb_conv2d3x3_B8_out_valid_out_0;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe117418;
    wire [63:0] bb_conv2d3x3_B9_out_c0_exe137439;
    wire [31:0] bb_conv2d3x3_B9_out_c0_exe1649;
    wire [63:0] bb_conv2d3x3_B9_out_c0_exe1674610;
    wire [31:0] bb_conv2d3x3_B9_out_c0_exe1774711;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe1874812;
    wire [31:0] bb_conv2d3x3_B9_out_c0_exe1974913;
    wire [31:0] bb_conv2d3x3_B9_out_c0_exe2075014;
    wire [31:0] bb_conv2d3x3_B9_out_c0_exe2175115;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe2275216;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe2375317;
    wire [31:0] bb_conv2d3x3_B9_out_c0_exe2475418;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe2575519;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe2675620;
    wire [31:0] bb_conv2d3x3_B9_out_c0_exe27321;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe2775721;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe2875822;
    wire [31:0] bb_conv2d3x3_B9_out_c0_exe2975923;
    wire [31:0] bb_conv2d3x3_B9_out_c0_exe3076024;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe3176125;
    wire [63:0] bb_conv2d3x3_B9_out_c0_exe3376326;
    wire [63:0] bb_conv2d3x3_B9_out_c0_exe3476427;
    wire [31:0] bb_conv2d3x3_B9_out_c0_exe3576528;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe3676629;
    wire [31:0] bb_conv2d3x3_B9_out_c0_exe37332;
    wire [31:0] bb_conv2d3x3_B9_out_c0_exe3776730;
    wire [31:0] bb_conv2d3x3_B9_out_c0_exe3876831;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe3976932;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe4033;
    wire [31:0] bb_conv2d3x3_B9_out_c0_exe4134;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe4235;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe4336;
    wire [31:0] bb_conv2d3x3_B9_out_c0_exe4437;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe4538;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe4639;
    wire [31:0] bb_conv2d3x3_B9_out_c0_exe47343;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe4740;
    wire [63:0] bb_conv2d3x3_B9_out_c0_exe4841;
    wire [63:0] bb_conv2d3x3_B9_out_c0_exe4942;
    wire [31:0] bb_conv2d3x3_B9_out_c0_exe5043;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe5144;
    wire [31:0] bb_conv2d3x3_B9_out_c0_exe57354;
    wire [31:0] bb_conv2d3x3_B9_out_c0_exe67365;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe87386;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe97397;
    wire [31:0] bb_conv2d3x3_B9_out_c1_exe145;
    wire [0:0] bb_conv2d3x3_B9_out_stall_out_0;
    wire [0:0] bb_conv2d3x3_B9_out_valid_out_0;
    wire [63:0] c_float_addrspace_1024_undef215_q;
    wire [31:0] c_float_undef219_q;
    wire [1:0] c_i2_0592_q;
    wire [31:0] c_i32_079_q;
    wire [0:0] conv2d3x3_B10_x_i_capture;
    wire conv2d3x3_B10_x_i_capture_bitsignaltemp;
    wire [0:0] conv2d3x3_B10_x_i_clear;
    wire conv2d3x3_B10_x_i_clear_bitsignaltemp;
    wire [0:0] conv2d3x3_B10_x_i_enable;
    wire conv2d3x3_B10_x_i_enable_bitsignaltemp;
    wire [0:0] conv2d3x3_B10_x_i_shift;
    wire conv2d3x3_B10_x_i_shift_bitsignaltemp;
    wire [0:0] conv2d3x3_B10_x_i_stall_pred;
    wire conv2d3x3_B10_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv2d3x3_B10_x_i_stall_succ;
    wire conv2d3x3_B10_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv2d3x3_B10_x_i_valid_loop;
    wire conv2d3x3_B10_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv2d3x3_B10_x_i_valid_pred;
    wire conv2d3x3_B10_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv2d3x3_B10_x_i_valid_succ;
    wire conv2d3x3_B10_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv2d3x3_B11_x_i_capture;
    wire conv2d3x3_B11_x_i_capture_bitsignaltemp;
    wire [0:0] conv2d3x3_B11_x_i_clear;
    wire conv2d3x3_B11_x_i_clear_bitsignaltemp;
    wire [0:0] conv2d3x3_B11_x_i_enable;
    wire conv2d3x3_B11_x_i_enable_bitsignaltemp;
    wire [0:0] conv2d3x3_B11_x_i_shift;
    wire conv2d3x3_B11_x_i_shift_bitsignaltemp;
    wire [0:0] conv2d3x3_B11_x_i_stall_pred;
    wire conv2d3x3_B11_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv2d3x3_B11_x_i_stall_succ;
    wire conv2d3x3_B11_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv2d3x3_B11_x_i_valid_loop;
    wire conv2d3x3_B11_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv2d3x3_B11_x_i_valid_pred;
    wire conv2d3x3_B11_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv2d3x3_B11_x_i_valid_succ;
    wire conv2d3x3_B11_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv2d3x3_B13_x_i_capture;
    wire conv2d3x3_B13_x_i_capture_bitsignaltemp;
    wire [0:0] conv2d3x3_B13_x_i_clear;
    wire conv2d3x3_B13_x_i_clear_bitsignaltemp;
    wire [0:0] conv2d3x3_B13_x_i_enable;
    wire conv2d3x3_B13_x_i_enable_bitsignaltemp;
    wire [0:0] conv2d3x3_B13_x_i_shift;
    wire conv2d3x3_B13_x_i_shift_bitsignaltemp;
    wire [0:0] conv2d3x3_B13_x_i_stall_pred;
    wire conv2d3x3_B13_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv2d3x3_B13_x_i_stall_succ;
    wire conv2d3x3_B13_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv2d3x3_B13_x_i_valid_loop;
    wire conv2d3x3_B13_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv2d3x3_B13_x_i_valid_pred;
    wire conv2d3x3_B13_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv2d3x3_B13_x_i_valid_succ;
    wire conv2d3x3_B13_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv2d3x3_B2_x_i_capture;
    wire conv2d3x3_B2_x_i_capture_bitsignaltemp;
    wire [0:0] conv2d3x3_B2_x_i_clear;
    wire conv2d3x3_B2_x_i_clear_bitsignaltemp;
    wire [0:0] conv2d3x3_B2_x_i_enable;
    wire conv2d3x3_B2_x_i_enable_bitsignaltemp;
    wire [0:0] conv2d3x3_B2_x_i_shift;
    wire conv2d3x3_B2_x_i_shift_bitsignaltemp;
    wire [0:0] conv2d3x3_B2_x_i_stall_pred;
    wire conv2d3x3_B2_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv2d3x3_B2_x_i_stall_succ;
    wire conv2d3x3_B2_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv2d3x3_B2_x_i_valid_loop;
    wire conv2d3x3_B2_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv2d3x3_B2_x_i_valid_pred;
    wire conv2d3x3_B2_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv2d3x3_B2_x_i_valid_succ;
    wire conv2d3x3_B2_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv2d3x3_B3_x_i_capture;
    wire conv2d3x3_B3_x_i_capture_bitsignaltemp;
    wire [0:0] conv2d3x3_B3_x_i_clear;
    wire conv2d3x3_B3_x_i_clear_bitsignaltemp;
    wire [0:0] conv2d3x3_B3_x_i_enable;
    wire conv2d3x3_B3_x_i_enable_bitsignaltemp;
    wire [0:0] conv2d3x3_B3_x_i_shift;
    wire conv2d3x3_B3_x_i_shift_bitsignaltemp;
    wire [0:0] conv2d3x3_B3_x_i_stall_pred;
    wire conv2d3x3_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv2d3x3_B3_x_i_stall_succ;
    wire conv2d3x3_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv2d3x3_B3_x_i_valid_loop;
    wire conv2d3x3_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv2d3x3_B3_x_i_valid_pred;
    wire conv2d3x3_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv2d3x3_B3_x_i_valid_succ;
    wire conv2d3x3_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv2d3x3_B5_x_i_capture;
    wire conv2d3x3_B5_x_i_capture_bitsignaltemp;
    wire [0:0] conv2d3x3_B5_x_i_clear;
    wire conv2d3x3_B5_x_i_clear_bitsignaltemp;
    wire [0:0] conv2d3x3_B5_x_i_enable;
    wire conv2d3x3_B5_x_i_enable_bitsignaltemp;
    wire [0:0] conv2d3x3_B5_x_i_shift;
    wire conv2d3x3_B5_x_i_shift_bitsignaltemp;
    wire [0:0] conv2d3x3_B5_x_i_stall_pred;
    wire conv2d3x3_B5_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv2d3x3_B5_x_i_stall_succ;
    wire conv2d3x3_B5_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv2d3x3_B5_x_i_valid_loop;
    wire conv2d3x3_B5_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv2d3x3_B5_x_i_valid_pred;
    wire conv2d3x3_B5_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv2d3x3_B5_x_i_valid_succ;
    wire conv2d3x3_B5_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv2d3x3_B7_x_i_capture;
    wire conv2d3x3_B7_x_i_capture_bitsignaltemp;
    wire [0:0] conv2d3x3_B7_x_i_clear;
    wire conv2d3x3_B7_x_i_clear_bitsignaltemp;
    wire [0:0] conv2d3x3_B7_x_i_enable;
    wire conv2d3x3_B7_x_i_enable_bitsignaltemp;
    wire [0:0] conv2d3x3_B7_x_i_shift;
    wire conv2d3x3_B7_x_i_shift_bitsignaltemp;
    wire [0:0] conv2d3x3_B7_x_i_stall_pred;
    wire conv2d3x3_B7_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv2d3x3_B7_x_i_stall_succ;
    wire conv2d3x3_B7_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv2d3x3_B7_x_i_valid_loop;
    wire conv2d3x3_B7_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv2d3x3_B7_x_i_valid_pred;
    wire conv2d3x3_B7_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv2d3x3_B7_x_i_valid_succ;
    wire conv2d3x3_B7_x_i_valid_succ_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_conv2d3x38_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_conv2d3x38_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_conv2d3x38_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_conv2d3x38_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going60_conv2d3x38_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going60_conv2d3x38_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going60_conv2d3x38_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going60_conv2d3x38_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going74_conv2d3x33_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going74_conv2d3x33_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going74_conv2d3x33_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going74_conv2d3x33_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going78_conv2d3x32_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going78_conv2d3x32_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going78_conv2d3x32_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going78_conv2d3x32_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going82_conv2d3x32_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going82_conv2d3x32_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going82_conv2d3x32_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going82_conv2d3x32_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d3x38_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d3x38_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d3x38_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d3x38_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_conv2d3x30_out_o_stall;
    wire [0:0] loop_limiter_conv2d3x30_out_o_valid;
    wire [0:0] loop_limiter_conv2d3x31_out_o_stall;
    wire [0:0] loop_limiter_conv2d3x31_out_o_valid;
    wire [0:0] loop_limiter_conv2d3x32_out_o_stall;
    wire [0:0] loop_limiter_conv2d3x32_out_o_valid;
    wire [0:0] loop_limiter_conv2d3x33_out_o_stall;
    wire [0:0] loop_limiter_conv2d3x33_out_o_valid;
    wire [0:0] loop_limiter_conv2d3x34_out_o_stall;
    wire [0:0] loop_limiter_conv2d3x34_out_o_valid;
    wire [0:0] loop_limiter_conv2d3x35_out_o_stall;
    wire [0:0] loop_limiter_conv2d3x35_out_o_valid;
    wire [0:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [63:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [63:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_18_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_19_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_20_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_21_tpl;
    wire [63:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_22_tpl;
    wire [63:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_23_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_24_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_25_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_26_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_27_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_28_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_29_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_30_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_31_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_32_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_33_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_34_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_35_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_36_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_37_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_38_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_39_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_40_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_41_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_42_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_43_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_44_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_45_tpl;
    wire [0:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [63:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [63:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_18_tpl;
    wire [0:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_19_tpl;
    wire [31:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_20_tpl;
    wire [31:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_21_tpl;
    wire [31:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_22_tpl;
    wire [31:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_23_tpl;
    wire [31:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_24_tpl;
    wire [31:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_25_tpl;
    wire [0:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_26_tpl;
    wire [0:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_27_tpl;
    wire [0:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_28_tpl;
    wire [63:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_29_tpl;
    wire [31:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_30_tpl;
    wire [63:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_31_tpl;
    wire [31:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_32_tpl;
    wire [0:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_33_tpl;
    wire [31:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_34_tpl;
    wire [31:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_35_tpl;
    wire [31:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_36_tpl;
    wire [0:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_37_tpl;
    wire [0:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_38_tpl;
    wire [31:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_39_tpl;
    wire [0:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_40_tpl;
    wire [0:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_41_tpl;
    wire [0:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_42_tpl;
    wire [0:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_43_tpl;
    wire [31:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_44_tpl;
    wire [31:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_45_tpl;
    wire [0:0] bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_46_tpl;
    wire [0:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [63:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [63:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_13_tpl;
    wire [31:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_15_tpl;
    wire [0:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_16_tpl;
    wire [0:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_18_tpl;
    wire [31:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_19_tpl;
    wire [0:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_20_tpl;
    wire [31:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_21_tpl;
    wire [31:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_22_tpl;
    wire [31:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_23_tpl;
    wire [0:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_24_tpl;
    wire [63:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_25_tpl;
    wire [63:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_26_tpl;
    wire [31:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_27_tpl;
    wire [0:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_28_tpl;
    wire [31:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_29_tpl;
    wire [31:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_30_tpl;
    wire [0:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_31_tpl;
    wire [0:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_32_tpl;
    wire [31:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_33_tpl;
    wire [0:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_34_tpl;
    wire [0:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_35_tpl;
    wire [31:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_36_tpl;
    wire [0:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_37_tpl;
    wire [0:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_38_tpl;
    wire [0:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_39_tpl;
    wire [63:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_40_tpl;
    wire [63:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_41_tpl;
    wire [31:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_42_tpl;
    wire [0:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_43_tpl;
    wire [31:0] bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_44_tpl;
    wire [0:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [63:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [63:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_18_tpl;
    wire [0:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_19_tpl;
    wire [31:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_20_tpl;
    wire [0:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_21_tpl;
    wire [0:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_22_tpl;
    wire [0:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_23_tpl;
    wire [63:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_24_tpl;
    wire [31:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_25_tpl;
    wire [63:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_26_tpl;
    wire [31:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_27_tpl;
    wire [0:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_28_tpl;
    wire [31:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_29_tpl;
    wire [31:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_30_tpl;
    wire [0:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_31_tpl;
    wire [0:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_32_tpl;
    wire [31:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_33_tpl;
    wire [31:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_34_tpl;
    wire [0:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_35_tpl;
    wire [0:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_36_tpl;
    wire [0:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_37_tpl;
    wire [31:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_38_tpl;
    wire [31:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_39_tpl;
    wire [0:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_40_tpl;
    wire [31:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_41_tpl;
    wire [31:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_42_tpl;
    wire [0:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_43_tpl;
    wire [31:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_44_tpl;
    wire [31:0] bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_45_tpl;
    wire [0:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [63:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [63:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_14_tpl;
    wire [31:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_15_tpl;
    wire [0:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_16_tpl;
    wire [0:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_18_tpl;
    wire [0:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_19_tpl;
    wire [0:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_20_tpl;
    wire [31:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_21_tpl;
    wire [31:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_22_tpl;
    wire [0:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_23_tpl;
    wire [0:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_24_tpl;
    wire [31:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_25_tpl;
    wire [31:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_26_tpl;
    wire [31:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_27_tpl;
    wire [0:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_28_tpl;
    wire [63:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_29_tpl;
    wire [63:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_30_tpl;
    wire [31:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_31_tpl;
    wire [0:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_32_tpl;
    wire [31:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_33_tpl;
    wire [31:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_34_tpl;
    wire [0:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_35_tpl;
    wire [0:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_36_tpl;
    wire [31:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_37_tpl;
    wire [0:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_38_tpl;
    wire [0:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_39_tpl;
    wire [31:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_40_tpl;
    wire [0:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_41_tpl;
    wire [0:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_42_tpl;
    wire [0:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_43_tpl;
    wire [63:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_44_tpl;
    wire [63:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_45_tpl;
    wire [31:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_46_tpl;
    wire [0:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_47_tpl;
    wire [31:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_48_tpl;
    wire [31:0] bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_49_tpl;
    wire [0:0] bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d3x3_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d3x3_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [63:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [63:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_18_tpl;
    wire [0:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_19_tpl;
    wire [0:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_15_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_16_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_18_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_19_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_20_tpl;
    wire [63:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_21_tpl;
    wire [63:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_22_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_23_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_24_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_25_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_26_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_27_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_28_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_29_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_30_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_31_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_32_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_33_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_34_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_35_tpl;
    wire [63:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_36_tpl;
    wire [63:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_37_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_38_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_39_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_18_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_19_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_20_tpl;
    wire [63:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_21_tpl;
    wire [63:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_22_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_23_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_24_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_25_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_26_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_27_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_28_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_29_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_30_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_31_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_32_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_33_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_34_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_35_tpl;
    wire [63:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_36_tpl;
    wire [63:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_37_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_38_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_39_tpl;
    wire [0:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [63:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [63:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_13_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_15_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_16_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_17_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_18_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_19_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_20_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_21_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_22_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_23_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_24_tpl;
    wire [63:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_25_tpl;
    wire [63:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_26_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_27_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_28_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_29_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_30_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_31_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_32_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_33_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_34_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_35_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_36_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_37_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_38_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_39_tpl;
    wire [63:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_40_tpl;
    wire [63:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_41_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_42_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_43_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_44_tpl;


    // c_i2_0592(CONSTANT,165)
    assign c_i2_0592_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going60_conv2d3x38_valid_fifo(BLACKBOX,232)
    conv2d3x3_i_llvm_fpga_pipeline_keep_going60_8_valid_fifo thei_llvm_fpga_pipeline_keep_going60_conv2d3x38_valid_fifo (
        .in_data_in(c_i2_0592_q),
        .in_stall_in(bb_conv2d3x3_B10_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going60_conv2d3x38_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going60_conv2d3x38_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going60_conv2d3x38_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going43_conv2d3x38_valid_fifo(BLACKBOX,230)
    conv2d3x3_i_llvm_fpga_pipeline_keep_going43_8_valid_fifo thei_llvm_fpga_pipeline_keep_going43_conv2d3x38_valid_fifo (
        .in_data_in(c_i2_0592_q),
        .in_stall_in(bb_conv2d3x3_B11_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going43_conv2d3x38_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going43_conv2d3x38_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going43_conv2d3x38_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_conv2d3x38_valid_fifo(BLACKBOX,240)
    conv2d3x3_i_llvm_fpga_pipeline_keep_going_8_valid_fifo thei_llvm_fpga_pipeline_keep_going_conv2d3x38_valid_fifo (
        .in_data_in(c_i2_0592_q),
        .in_stall_in(bb_conv2d3x3_B13_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_conv2d3x38_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_conv2d3x38_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_conv2d3x38_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B1(BLACKBOX,3)
    conv2d3x3_bb_B1 thebb_conv2d3x3_B1 (
        .in_feedback_stall_in_0(bb_conv2d3x3_B0_out_feedback_stall_out_0),
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_0(bb_conv2d3x3_B1_out_feedback_out_0),
        .out_feedback_valid_out_0(bb_conv2d3x3_B1_out_feedback_valid_out_0),
        .out_stall_out_0(bb_conv2d3x3_B1_out_stall_out_0),
        .out_valid_out_0(bb_conv2d3x3_B1_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B1_sr_0_aunroll_x(BLACKBOX,363)
    conv2d3x3_bb_B1_sr_0 thebb_conv2d3x3_B1_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B1_out_stall_out_0),
        .in_i_valid(bb_conv2d3x3_B4_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B4(BLACKBOX,11)
    conv2d3x3_bb_B4 thebb_conv2d3x3_B4 (
        .in_c0_exe151152102_0(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_filter_bias(in_arg_filter_bias),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_output_size(in_arg_output_size),
        .in_pad(in_arg_pad),
        .in_stall_in_0(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_stride(in_arg_stride),
        .in_valid_in_0(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_conv2d3x3_B4_out_stall_in_0),
        .out_stall_out_0(bb_conv2d3x3_B4_out_stall_out_0),
        .out_valid_out_0(bb_conv2d3x3_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B4_sr_0_aunroll_x(BLACKBOX,366)
    conv2d3x3_bb_B4_sr_0 thebb_conv2d3x3_B4_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B4_out_stall_out_0),
        .in_i_valid(bb_conv2d3x3_B6_out_valid_out_0),
        .in_i_data_0_tpl(bb_conv2d3x3_B6_out_c0_exe151152103),
        .out_o_stall(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B6(BLACKBOX,13)
    conv2d3x3_bb_B6 thebb_conv2d3x3_B6 (
        .in_c0_exe151152103_0(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe261163117_0(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_filter_bias(in_arg_filter_bias),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_output_size(in_arg_output_size),
        .in_pad(in_arg_pad),
        .in_stall_in_0(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_stride(in_arg_stride),
        .in_valid_in_0(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe151152103(bb_conv2d3x3_B6_out_c0_exe151152103),
        .out_stall_in_0(bb_conv2d3x3_B6_out_stall_in_0),
        .out_stall_out_0(bb_conv2d3x3_B6_out_stall_out_0),
        .out_valid_out_0(bb_conv2d3x3_B6_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B6_sr_0_aunroll_x(BLACKBOX,368)
    conv2d3x3_bb_B6_sr_0 thebb_conv2d3x3_B6_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B6_out_stall_out_0),
        .in_i_valid(bb_conv2d3x3_B8_out_valid_out_0),
        .in_i_data_0_tpl(bb_conv2d3x3_B8_out_c0_exe151152104),
        .in_i_data_1_tpl(bb_conv2d3x3_B8_out_c0_exe261163118),
        .out_o_stall(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going82_conv2d3x32_valid_fifo(BLACKBOX,238)
    conv2d3x3_i_llvm_fpga_pipeline_keep_going82_2_valid_fifo thei_llvm_fpga_pipeline_keep_going82_conv2d3x32_valid_fifo (
        .in_data_in(c_i2_0592_q),
        .in_stall_in(bb_conv2d3x3_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going82_conv2d3x32_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going82_conv2d3x32_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going82_conv2d3x32_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going78_conv2d3x32_valid_fifo(BLACKBOX,236)
    conv2d3x3_i_llvm_fpga_pipeline_keep_going78_2_valid_fifo thei_llvm_fpga_pipeline_keep_going78_conv2d3x32_valid_fifo (
        .in_data_in(c_i2_0592_q),
        .in_stall_in(bb_conv2d3x3_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going78_conv2d3x32_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going78_conv2d3x32_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going78_conv2d3x32_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going74_conv2d3x33_valid_fifo(BLACKBOX,234)
    conv2d3x3_i_llvm_fpga_pipeline_keep_going74_3_valid_fifo thei_llvm_fpga_pipeline_keep_going74_conv2d3x33_valid_fifo (
        .in_data_in(c_i2_0592_q),
        .in_stall_in(bb_conv2d3x3_B5_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going74_conv2d3x33_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going74_conv2d3x33_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going74_conv2d3x33_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B7(BLACKBOX,14)
    conv2d3x3_bb_B7 thebb_conv2d3x3_B7 (
        .in_add110_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_add110_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_add247_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_25_tpl),
        .in_add247_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_25_tpl),
        .in_cmp26120_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_cmp26120_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_cmp26265_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_27_tpl),
        .in_cmp26265_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_27_tpl),
        .in_cmp26_1135_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_cmp26_1135_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_cmp26_1292_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_30_tpl),
        .in_cmp26_1292_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_30_tpl),
        .in_cmp26_2150_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_14_tpl),
        .in_cmp26_2150_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_cmp26_2319_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_33_tpl),
        .in_cmp26_2319_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_33_tpl),
        .in_cmp27125_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_cmp27125_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_cmp27274_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_28_tpl),
        .in_cmp27274_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_28_tpl),
        .in_cmp27_1140_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_12_tpl),
        .in_cmp27_1140_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_cmp27_1301_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_31_tpl),
        .in_cmp27_1301_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_31_tpl),
        .in_cmp27_2155_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_15_tpl),
        .in_cmp27_2155_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_cmp27_2328_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_34_tpl),
        .in_cmp27_2328_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_34_tpl),
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight_addr_067_replace_phi204_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_21_tpl),
        .in_filter_weight_addr_067_replace_phi204_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_21_tpl),
        .in_filter_weight_addr_067_replace_phi85_pop19346_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_36_tpl),
        .in_filter_weight_addr_067_replace_phi85_pop19346_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_36_tpl),
        .in_filter_weight_addr_067_replace_phi87_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_filter_weight_addr_067_replace_phi87_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_intel_reserved_ffwd_2_0(bb_conv2d3x3_B0_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_4_0(bb_conv2d3x3_B0_out_intel_reserved_ffwd_4_0),
        .in_j_061_pop24179_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_20_tpl),
        .in_j_061_pop24179_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_20_tpl),
        .in_k_059_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_k_059_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_lm25226_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_23_tpl),
        .in_lm25226_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_23_tpl),
        .in_lm2597_pop21364_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_38_tpl),
        .in_lm2597_pop21364_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_38_tpl),
        .in_lm2599_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_lm2599_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_mul56115_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_mul56115_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_mul56256_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_26_tpl),
        .in_mul56256_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_26_tpl),
        .in_notcmp73175_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_19_tpl),
        .in_notcmp73175_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_19_tpl),
        .in_notcmp77160_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_16_tpl),
        .in_notcmp77160_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_notcmp77337_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_35_tpl),
        .in_notcmp77337_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_35_tpl),
        .in_notcmp81103_pop22373_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_39_tpl),
        .in_notcmp81103_pop22373_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_39_tpl),
        .in_notcmp81105_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_notcmp81105_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_notcmp81237_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_24_tpl),
        .in_notcmp81237_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_24_tpl),
        .in_output_im_addr_068_replace_phi215_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_22_tpl),
        .in_output_im_addr_068_replace_phi215_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_22_tpl),
        .in_output_im_addr_068_replace_phi91_pop20355_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_37_tpl),
        .in_output_im_addr_068_replace_phi91_pop20355_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_37_tpl),
        .in_output_im_addr_068_replace_phi93_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_output_im_addr_068_replace_phi93_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_output_size(in_arg_output_size),
        .in_pad(in_arg_pad),
        .in_pad_sync_buffer171_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_18_tpl),
        .in_pad_sync_buffer171_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_stall_in_0(loop_limiter_conv2d3x33_out_o_stall),
        .in_stride(in_arg_stride),
        .in_stride_sync_buffer167_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_17_tpl),
        .in_stride_sync_buffer167_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_sub_1130_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_sub_1130_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_sub_1283_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_29_tpl),
        .in_sub_1283_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_29_tpl),
        .in_sub_2145_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_13_tpl),
        .in_sub_2145_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_sub_2310_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_32_tpl),
        .in_sub_2310_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_32_tpl),
        .in_tmp_058_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_tmp_058_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_valid_in_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_valid),
        .out_add110(bb_conv2d3x3_B7_out_add110),
        .out_add247(bb_conv2d3x3_B7_out_add247),
        .out_c0_exe1627(bb_conv2d3x3_B7_out_c0_exe1627),
        .out_c0_exe2628(bb_conv2d3x3_B7_out_c0_exe2628),
        .out_c0_exe3629(bb_conv2d3x3_B7_out_c0_exe3629),
        .out_c0_exe4630(bb_conv2d3x3_B7_out_c0_exe4630),
        .out_c0_exe5631(bb_conv2d3x3_B7_out_c0_exe5631),
        .out_cmp26120(bb_conv2d3x3_B7_out_cmp26120),
        .out_cmp26265(bb_conv2d3x3_B7_out_cmp26265),
        .out_cmp26_1135(bb_conv2d3x3_B7_out_cmp26_1135),
        .out_cmp26_1292(bb_conv2d3x3_B7_out_cmp26_1292),
        .out_cmp26_2150(bb_conv2d3x3_B7_out_cmp26_2150),
        .out_cmp26_2319(bb_conv2d3x3_B7_out_cmp26_2319),
        .out_cmp27125(bb_conv2d3x3_B7_out_cmp27125),
        .out_cmp27274(bb_conv2d3x3_B7_out_cmp27274),
        .out_cmp27_1140(bb_conv2d3x3_B7_out_cmp27_1140),
        .out_cmp27_1301(bb_conv2d3x3_B7_out_cmp27_1301),
        .out_cmp27_2155(bb_conv2d3x3_B7_out_cmp27_2155),
        .out_cmp27_2328(bb_conv2d3x3_B7_out_cmp27_2328),
        .out_filter_weight_addr_067_replace_phi204(bb_conv2d3x3_B7_out_filter_weight_addr_067_replace_phi204),
        .out_filter_weight_addr_067_replace_phi85_pop19346(bb_conv2d3x3_B7_out_filter_weight_addr_067_replace_phi85_pop19346),
        .out_filter_weight_addr_067_replace_phi87(bb_conv2d3x3_B7_out_filter_weight_addr_067_replace_phi87),
        .out_j_061_pop24179(bb_conv2d3x3_B7_out_j_061_pop24179),
        .out_k_059(bb_conv2d3x3_B7_out_k_059),
        .out_lm25226(bb_conv2d3x3_B7_out_lm25226),
        .out_lm2597_pop21364(bb_conv2d3x3_B7_out_lm2597_pop21364),
        .out_lm2599(bb_conv2d3x3_B7_out_lm2599),
        .out_mul56115(bb_conv2d3x3_B7_out_mul56115),
        .out_mul56256(bb_conv2d3x3_B7_out_mul56256),
        .out_notcmp73175(bb_conv2d3x3_B7_out_notcmp73175),
        .out_notcmp77160(bb_conv2d3x3_B7_out_notcmp77160),
        .out_notcmp77337(bb_conv2d3x3_B7_out_notcmp77337),
        .out_notcmp81103_pop22373(bb_conv2d3x3_B7_out_notcmp81103_pop22373),
        .out_notcmp81105(bb_conv2d3x3_B7_out_notcmp81105),
        .out_notcmp81237(bb_conv2d3x3_B7_out_notcmp81237),
        .out_output_im_addr_068_replace_phi215(bb_conv2d3x3_B7_out_output_im_addr_068_replace_phi215),
        .out_output_im_addr_068_replace_phi91_pop20355(bb_conv2d3x3_B7_out_output_im_addr_068_replace_phi91_pop20355),
        .out_output_im_addr_068_replace_phi93(bb_conv2d3x3_B7_out_output_im_addr_068_replace_phi93),
        .out_pad_sync_buffer171(bb_conv2d3x3_B7_out_pad_sync_buffer171),
        .out_stall_out_0(bb_conv2d3x3_B7_out_stall_out_0),
        .out_stall_out_1(bb_conv2d3x3_B7_out_stall_out_1),
        .out_stride_sync_buffer167(bb_conv2d3x3_B7_out_stride_sync_buffer167),
        .out_sub_1130(bb_conv2d3x3_B7_out_sub_1130),
        .out_sub_1283(bb_conv2d3x3_B7_out_sub_1283),
        .out_sub_2145(bb_conv2d3x3_B7_out_sub_2145),
        .out_sub_2310(bb_conv2d3x3_B7_out_sub_2310),
        .out_tmp_058(bb_conv2d3x3_B7_out_tmp_058),
        .out_valid_in_0(bb_conv2d3x3_B7_out_valid_in_0),
        .out_valid_in_1(bb_conv2d3x3_B7_out_valid_in_1),
        .out_valid_out_0(bb_conv2d3x3_B7_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B7_sr_1_aunroll_x(BLACKBOX,370)
    conv2d3x3_bb_B7_sr_1 thebb_conv2d3x3_B7_sr_1_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B7_out_stall_out_1),
        .in_i_valid(loop_limiter_conv2d3x32_out_o_valid),
        .in_i_data_0_tpl(c_i32_079_q),
        .in_i_data_1_tpl(bb_conv2d3x3_B5_out_c0_exe8603),
        .in_i_data_2_tpl(bb_conv2d3x3_B5_out_c0_exe6601),
        .in_i_data_3_tpl(bb_conv2d3x3_B5_out_c0_exe7602),
        .in_i_data_4_tpl(bb_conv2d3x3_B5_out_c0_exe8603),
        .in_i_data_5_tpl(bb_conv2d3x3_B5_out_c0_exe9604),
        .in_i_data_6_tpl(bb_conv2d3x3_B5_out_c0_exe10605),
        .in_i_data_7_tpl(bb_conv2d3x3_B5_out_c0_exe11606),
        .in_i_data_8_tpl(bb_conv2d3x3_B5_out_c0_exe12607),
        .in_i_data_9_tpl(bb_conv2d3x3_B5_out_c0_exe13608),
        .in_i_data_10_tpl(bb_conv2d3x3_B5_out_c0_exe14609),
        .in_i_data_11_tpl(bb_conv2d3x3_B5_out_c0_exe15610),
        .in_i_data_12_tpl(bb_conv2d3x3_B5_out_c0_exe16611),
        .in_i_data_13_tpl(bb_conv2d3x3_B5_out_c0_exe17612),
        .in_i_data_14_tpl(bb_conv2d3x3_B5_out_c0_exe18613),
        .in_i_data_15_tpl(bb_conv2d3x3_B5_out_c0_exe19614),
        .in_i_data_16_tpl(bb_conv2d3x3_B5_out_c0_exe20615),
        .in_i_data_17_tpl(bb_conv2d3x3_B5_out_c0_exe1596),
        .in_i_data_18_tpl(bb_conv2d3x3_B5_out_c0_exe2597),
        .in_i_data_19_tpl(bb_conv2d3x3_B5_out_c0_exe4599),
        .in_i_data_20_tpl(bb_conv2d3x3_B5_out_c0_exe5600),
        .in_i_data_21_tpl(bb_conv2d3x3_B5_out_c0_exe21),
        .in_i_data_22_tpl(bb_conv2d3x3_B5_out_c0_exe22),
        .in_i_data_23_tpl(bb_conv2d3x3_B5_out_c0_exe23),
        .in_i_data_24_tpl(bb_conv2d3x3_B5_out_c0_exe24),
        .in_i_data_25_tpl(bb_conv2d3x3_B5_out_c0_exe25),
        .in_i_data_26_tpl(bb_conv2d3x3_B5_out_c0_exe26),
        .in_i_data_27_tpl(bb_conv2d3x3_B5_out_c0_exe27),
        .in_i_data_28_tpl(bb_conv2d3x3_B5_out_c0_exe28),
        .in_i_data_29_tpl(bb_conv2d3x3_B5_out_c0_exe29),
        .in_i_data_30_tpl(bb_conv2d3x3_B5_out_c0_exe30),
        .in_i_data_31_tpl(bb_conv2d3x3_B5_out_c0_exe31),
        .in_i_data_32_tpl(bb_conv2d3x3_B5_out_c0_exe32),
        .in_i_data_33_tpl(bb_conv2d3x3_B5_out_c0_exe33),
        .in_i_data_34_tpl(bb_conv2d3x3_B5_out_c0_exe34),
        .in_i_data_35_tpl(bb_conv2d3x3_B5_out_c0_exe35),
        .in_i_data_36_tpl(bb_conv2d3x3_B5_out_c0_exe36),
        .in_i_data_37_tpl(bb_conv2d3x3_B5_out_c0_exe37),
        .in_i_data_38_tpl(bb_conv2d3x3_B5_out_c0_exe38),
        .in_i_data_39_tpl(bb_conv2d3x3_B5_out_c0_exe39),
        .out_o_stall(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_21_tpl),
        .out_o_data_22_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_22_tpl),
        .out_o_data_23_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_23_tpl),
        .out_o_data_24_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_24_tpl),
        .out_o_data_25_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_25_tpl),
        .out_o_data_26_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_26_tpl),
        .out_o_data_27_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_27_tpl),
        .out_o_data_28_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_28_tpl),
        .out_o_data_29_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_29_tpl),
        .out_o_data_30_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_30_tpl),
        .out_o_data_31_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_31_tpl),
        .out_o_data_32_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_32_tpl),
        .out_o_data_33_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_33_tpl),
        .out_o_data_34_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_34_tpl),
        .out_o_data_35_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_35_tpl),
        .out_o_data_36_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_36_tpl),
        .out_o_data_37_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_37_tpl),
        .out_o_data_38_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_38_tpl),
        .out_o_data_39_tpl(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_39_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv2d3x32(BLACKBOX,295)
    conv2d3x3_loop_limiter_2 theloop_limiter_conv2d3x32 (
        .in_i_stall(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_conv2d3x3_B5_out_valid_out_0),
        .in_i_valid_exit(bb_conv2d3x3_B14_out_valid_out_1),
        .out_o_stall(loop_limiter_conv2d3x32_out_o_stall),
        .out_o_valid(loop_limiter_conv2d3x32_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going74_conv2d3x33_sr(BLACKBOX,233)
    conv2d3x3_i_llvm_fpga_pipeline_keep_going74_3_sr thei_llvm_fpga_pipeline_keep_going74_conv2d3x33_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going74_conv2d3x33_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv2d3x3_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going74_conv2d3x33_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going74_conv2d3x33_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B5(BLACKBOX,12)
    conv2d3x3_bb_B5 thebb_conv2d3x3_B5 (
        .in_add239_0(c_i32_079_q),
        .in_add239_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_cmp26257_0(GND_q),
        .in_cmp26257_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_cmp26_1284_0(GND_q),
        .in_cmp26_1284_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_cmp26_2311_0(GND_q),
        .in_cmp26_2311_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_cmp27266_0(GND_q),
        .in_cmp27266_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_cmp27_1293_0(GND_q),
        .in_cmp27_1293_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_cmp27_2320_0(GND_q),
        .in_cmp27_2320_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight_addr_067_replace_phi205_0(c_float_addrspace_1024_undef215_q),
        .in_filter_weight_addr_067_replace_phi205_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_filter_weight_addr_067_replace_phi85_pop19338_0(c_float_addrspace_1024_undef215_q),
        .in_filter_weight_addr_067_replace_phi85_pop19338_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_forked35_0(GND_q),
        .in_forked35_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_intel_reserved_ffwd_4_0(bb_conv2d3x3_B0_out_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_6_0(bb_conv2d3x3_B0_out_intel_reserved_ffwd_6_0),
        .in_lm25227_0(c_float_undef219_q),
        .in_lm25227_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_lm2597_pop21356_0(c_float_undef219_q),
        .in_lm2597_pop21356_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_mul56248_0(c_i32_079_q),
        .in_mul56248_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_notcmp77329_0(GND_q),
        .in_notcmp77329_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_notcmp81103_pop22365_0(GND_q),
        .in_notcmp81103_pop22365_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_19_tpl),
        .in_notcmp81238_0(GND_q),
        .in_notcmp81238_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_output_im_addr_068_replace_phi216_0(c_float_addrspace_1024_undef215_q),
        .in_output_im_addr_068_replace_phi216_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_output_im_addr_068_replace_phi91_pop20347_0(c_float_addrspace_1024_undef215_q),
        .in_output_im_addr_068_replace_phi91_pop20347_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_output_size(in_arg_output_size),
        .in_pad(in_arg_pad),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going74_conv2d3x33_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_conv2d3x32_out_o_stall),
        .in_stride(in_arg_stride),
        .in_sub_1275_0(c_i32_079_q),
        .in_sub_1275_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_sub_2302_0(c_i32_079_q),
        .in_sub_2302_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going74_conv2d3x33_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10605(bb_conv2d3x3_B5_out_c0_exe10605),
        .out_c0_exe11606(bb_conv2d3x3_B5_out_c0_exe11606),
        .out_c0_exe12607(bb_conv2d3x3_B5_out_c0_exe12607),
        .out_c0_exe13608(bb_conv2d3x3_B5_out_c0_exe13608),
        .out_c0_exe14609(bb_conv2d3x3_B5_out_c0_exe14609),
        .out_c0_exe15610(bb_conv2d3x3_B5_out_c0_exe15610),
        .out_c0_exe1596(bb_conv2d3x3_B5_out_c0_exe1596),
        .out_c0_exe16611(bb_conv2d3x3_B5_out_c0_exe16611),
        .out_c0_exe17612(bb_conv2d3x3_B5_out_c0_exe17612),
        .out_c0_exe18613(bb_conv2d3x3_B5_out_c0_exe18613),
        .out_c0_exe19614(bb_conv2d3x3_B5_out_c0_exe19614),
        .out_c0_exe20615(bb_conv2d3x3_B5_out_c0_exe20615),
        .out_c0_exe21(bb_conv2d3x3_B5_out_c0_exe21),
        .out_c0_exe22(bb_conv2d3x3_B5_out_c0_exe22),
        .out_c0_exe23(bb_conv2d3x3_B5_out_c0_exe23),
        .out_c0_exe24(bb_conv2d3x3_B5_out_c0_exe24),
        .out_c0_exe25(bb_conv2d3x3_B5_out_c0_exe25),
        .out_c0_exe2597(bb_conv2d3x3_B5_out_c0_exe2597),
        .out_c0_exe26(bb_conv2d3x3_B5_out_c0_exe26),
        .out_c0_exe27(bb_conv2d3x3_B5_out_c0_exe27),
        .out_c0_exe28(bb_conv2d3x3_B5_out_c0_exe28),
        .out_c0_exe29(bb_conv2d3x3_B5_out_c0_exe29),
        .out_c0_exe30(bb_conv2d3x3_B5_out_c0_exe30),
        .out_c0_exe31(bb_conv2d3x3_B5_out_c0_exe31),
        .out_c0_exe32(bb_conv2d3x3_B5_out_c0_exe32),
        .out_c0_exe33(bb_conv2d3x3_B5_out_c0_exe33),
        .out_c0_exe34(bb_conv2d3x3_B5_out_c0_exe34),
        .out_c0_exe35(bb_conv2d3x3_B5_out_c0_exe35),
        .out_c0_exe36(bb_conv2d3x3_B5_out_c0_exe36),
        .out_c0_exe37(bb_conv2d3x3_B5_out_c0_exe37),
        .out_c0_exe38(bb_conv2d3x3_B5_out_c0_exe38),
        .out_c0_exe39(bb_conv2d3x3_B5_out_c0_exe39),
        .out_c0_exe4599(bb_conv2d3x3_B5_out_c0_exe4599),
        .out_c0_exe5600(bb_conv2d3x3_B5_out_c0_exe5600),
        .out_c0_exe6601(bb_conv2d3x3_B5_out_c0_exe6601),
        .out_c0_exe7602(bb_conv2d3x3_B5_out_c0_exe7602),
        .out_c0_exe8603(bb_conv2d3x3_B5_out_c0_exe8603),
        .out_c0_exe9604(bb_conv2d3x3_B5_out_c0_exe9604),
        .out_exiting_stall_out(bb_conv2d3x3_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv2d3x3_B5_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_conv2d3x3_B5_out_pipeline_valid_out),
        .out_stall_out_0(bb_conv2d3x3_B5_out_stall_out_0),
        .out_stall_out_1(bb_conv2d3x3_B5_out_stall_out_1),
        .out_valid_in_0(bb_conv2d3x3_B5_out_valid_in_0),
        .out_valid_in_1(bb_conv2d3x3_B5_out_valid_in_1),
        .out_valid_out_0(bb_conv2d3x3_B5_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B5_sr_1_aunroll_x(BLACKBOX,367)
    conv2d3x3_bb_B5_sr_1 thebb_conv2d3x3_B5_sr_1_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_conv2d3x31_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_conv2d3x3_B3_out_c0_exe17),
        .in_i_data_2_tpl(bb_conv2d3x3_B3_out_c0_exe18),
        .in_i_data_3_tpl(bb_conv2d3x3_B3_out_c0_exe19),
        .in_i_data_4_tpl(bb_conv2d3x3_B3_out_c0_exe20),
        .in_i_data_5_tpl(bb_conv2d3x3_B3_out_c0_exe1558),
        .in_i_data_6_tpl(bb_conv2d3x3_B3_out_c0_exe2559),
        .in_i_data_7_tpl(bb_conv2d3x3_B3_out_c0_exe3560),
        .in_i_data_8_tpl(bb_conv2d3x3_B3_out_c0_exe4561),
        .in_i_data_9_tpl(bb_conv2d3x3_B3_out_c0_exe5562),
        .in_i_data_10_tpl(bb_conv2d3x3_B3_out_c0_exe6563),
        .in_i_data_11_tpl(bb_conv2d3x3_B3_out_c0_exe7),
        .in_i_data_12_tpl(bb_conv2d3x3_B3_out_c0_exe8),
        .in_i_data_13_tpl(bb_conv2d3x3_B3_out_c0_exe9),
        .in_i_data_14_tpl(bb_conv2d3x3_B3_out_c0_exe10),
        .in_i_data_15_tpl(bb_conv2d3x3_B3_out_c0_exe12),
        .in_i_data_16_tpl(bb_conv2d3x3_B3_out_c0_exe13),
        .in_i_data_17_tpl(bb_conv2d3x3_B3_out_c0_exe14),
        .in_i_data_18_tpl(bb_conv2d3x3_B3_out_c0_exe15),
        .in_i_data_19_tpl(bb_conv2d3x3_B3_out_c0_exe16),
        .out_o_stall(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_19_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv2d3x31(BLACKBOX,294)
    conv2d3x3_loop_limiter_1 theloop_limiter_conv2d3x31 (
        .in_i_stall(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2d3x3_B5_out_exiting_stall_out),
        .in_i_valid(bb_conv2d3x3_B3_out_valid_out_0),
        .in_i_valid_exit(bb_conv2d3x3_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv2d3x31_out_o_stall),
        .out_o_valid(loop_limiter_conv2d3x31_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going78_conv2d3x32_sr(BLACKBOX,235)
    conv2d3x3_i_llvm_fpga_pipeline_keep_going78_2_sr thei_llvm_fpga_pipeline_keep_going78_conv2d3x32_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going78_conv2d3x32_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv2d3x3_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going78_conv2d3x32_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going78_conv2d3x32_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B3(BLACKBOX,10)
    conv2d3x3_bb_B3 thebb_conv2d3x3_B3 (
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight_addr_067_replace_phi195_0(c_float_addrspace_1024_undef215_q),
        .in_filter_weight_addr_067_replace_phi195_1(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_forked34_0(GND_q),
        .in_forked34_1(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_intel_reserved_ffwd_4_0(bb_conv2d3x3_B0_out_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_6_0(bb_conv2d3x3_B0_out_intel_reserved_ffwd_6_0),
        .in_lm25217_0(c_float_undef219_q),
        .in_lm25217_1(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_notcmp81228_0(GND_q),
        .in_notcmp81228_1(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_output_im_addr_068_replace_phi206_0(c_float_addrspace_1024_undef215_q),
        .in_output_im_addr_068_replace_phi206_1(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_output_size(in_arg_output_size),
        .in_pad(in_arg_pad),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going78_conv2d3x32_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_conv2d3x31_out_o_stall),
        .in_stride(in_arg_stride),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going78_conv2d3x32_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_conv2d3x3_B3_out_c0_exe10),
        .out_c0_exe12(bb_conv2d3x3_B3_out_c0_exe12),
        .out_c0_exe13(bb_conv2d3x3_B3_out_c0_exe13),
        .out_c0_exe14(bb_conv2d3x3_B3_out_c0_exe14),
        .out_c0_exe15(bb_conv2d3x3_B3_out_c0_exe15),
        .out_c0_exe1558(bb_conv2d3x3_B3_out_c0_exe1558),
        .out_c0_exe16(bb_conv2d3x3_B3_out_c0_exe16),
        .out_c0_exe17(bb_conv2d3x3_B3_out_c0_exe17),
        .out_c0_exe18(bb_conv2d3x3_B3_out_c0_exe18),
        .out_c0_exe19(bb_conv2d3x3_B3_out_c0_exe19),
        .out_c0_exe20(bb_conv2d3x3_B3_out_c0_exe20),
        .out_c0_exe2559(bb_conv2d3x3_B3_out_c0_exe2559),
        .out_c0_exe3560(bb_conv2d3x3_B3_out_c0_exe3560),
        .out_c0_exe4561(bb_conv2d3x3_B3_out_c0_exe4561),
        .out_c0_exe5562(bb_conv2d3x3_B3_out_c0_exe5562),
        .out_c0_exe6563(bb_conv2d3x3_B3_out_c0_exe6563),
        .out_c0_exe7(bb_conv2d3x3_B3_out_c0_exe7),
        .out_c0_exe8(bb_conv2d3x3_B3_out_c0_exe8),
        .out_c0_exe9(bb_conv2d3x3_B3_out_c0_exe9),
        .out_exiting_stall_out(bb_conv2d3x3_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv2d3x3_B3_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_conv2d3x3_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_conv2d3x3_B3_out_stall_out_0),
        .out_stall_out_1(bb_conv2d3x3_B3_out_stall_out_1),
        .out_valid_in_0(bb_conv2d3x3_B3_out_valid_in_0),
        .out_valid_in_1(bb_conv2d3x3_B3_out_valid_in_1),
        .out_valid_out_0(bb_conv2d3x3_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B3_sr_1_aunroll_x(BLACKBOX,365)
    conv2d3x3_bb_B3_sr_1 thebb_conv2d3x3_B3_sr_1_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_conv2d3x30_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_conv2d3x3_B2_out_c0_exe1),
        .in_i_data_2_tpl(bb_conv2d3x3_B2_out_c0_exe2),
        .in_i_data_3_tpl(bb_conv2d3x3_B2_out_lm25),
        .in_i_data_4_tpl(bb_conv2d3x3_B2_out_c0_exe6),
        .out_o_stall(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv2d3x30(BLACKBOX,293)
    conv2d3x3_loop_limiter_0 theloop_limiter_conv2d3x30 (
        .in_i_stall(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2d3x3_B3_out_exiting_stall_out),
        .in_i_valid(bb_conv2d3x3_B2_out_valid_out_0),
        .in_i_valid_exit(bb_conv2d3x3_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv2d3x30_out_o_stall),
        .out_o_valid(loop_limiter_conv2d3x30_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going82_conv2d3x32_sr(BLACKBOX,237)
    conv2d3x3_i_llvm_fpga_pipeline_keep_going82_2_sr thei_llvm_fpga_pipeline_keep_going82_conv2d3x32_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going82_conv2d3x32_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv2d3x3_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going82_conv2d3x32_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going82_conv2d3x32_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B2(BLACKBOX,9)
    conv2d3x3_bb_B2 thebb_conv2d3x3_B2 (
        .in_filter_bias(in_arg_filter_bias),
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_conv2d3x3_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_intel_reserved_ffwd_0_0(bb_conv2d3x3_B0_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_conv2d3x3_B0_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_3_0(bb_conv2d3x3_B0_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_7_0(bb_conv2d3x3_B0_out_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(bb_conv2d3x3_B0_out_intel_reserved_ffwd_8_0),
        .in_lm25_conv2d3x3_avm_readdata(in_lm25_conv2d3x3_avm_readdata),
        .in_lm25_conv2d3x3_avm_readdatavalid(in_lm25_conv2d3x3_avm_readdatavalid),
        .in_lm25_conv2d3x3_avm_waitrequest(in_lm25_conv2d3x3_avm_waitrequest),
        .in_lm25_conv2d3x3_avm_writeack(in_lm25_conv2d3x3_avm_writeack),
        .in_output_size(in_arg_output_size),
        .in_pad(in_arg_pad),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going82_conv2d3x32_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_conv2d3x30_out_o_stall),
        .in_stride(in_arg_stride),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going82_conv2d3x32_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv2d3x3_B2_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1(bb_conv2d3x3_B2_out_c0_exe1),
        .out_c0_exe2(bb_conv2d3x3_B2_out_c0_exe2),
        .out_c0_exe6(bb_conv2d3x3_B2_out_c0_exe6),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_lm25(bb_conv2d3x3_B2_out_lm25),
        .out_lm25_conv2d3x3_avm_address(bb_conv2d3x3_B2_out_lm25_conv2d3x3_avm_address),
        .out_lm25_conv2d3x3_avm_burstcount(bb_conv2d3x3_B2_out_lm25_conv2d3x3_avm_burstcount),
        .out_lm25_conv2d3x3_avm_byteenable(bb_conv2d3x3_B2_out_lm25_conv2d3x3_avm_byteenable),
        .out_lm25_conv2d3x3_avm_enable(bb_conv2d3x3_B2_out_lm25_conv2d3x3_avm_enable),
        .out_lm25_conv2d3x3_avm_read(bb_conv2d3x3_B2_out_lm25_conv2d3x3_avm_read),
        .out_lm25_conv2d3x3_avm_write(bb_conv2d3x3_B2_out_lm25_conv2d3x3_avm_write),
        .out_lm25_conv2d3x3_avm_writedata(bb_conv2d3x3_B2_out_lm25_conv2d3x3_avm_writedata),
        .out_pipeline_valid_out(bb_conv2d3x3_B2_out_pipeline_valid_out),
        .out_stall_out_0(bb_conv2d3x3_B2_out_stall_out_0),
        .out_stall_out_1(bb_conv2d3x3_B2_out_stall_out_1),
        .out_valid_in_0(bb_conv2d3x3_B2_out_valid_in_0),
        .out_valid_in_1(bb_conv2d3x3_B2_out_valid_in_1),
        .out_valid_out_0(bb_conv2d3x3_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B2_sr_1_aunroll_x(BLACKBOX,364)
    conv2d3x3_bb_B2_sr_1 thebb_conv2d3x3_B2_sr_1_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B2_out_stall_out_1),
        .in_i_valid(bb_conv2d3x3_B0_out_valid_out_0),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_conv2d3x3_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d3x3_B2_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d3x3_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B0(BLACKBOX,2)
    conv2d3x3_bb_B0 thebb_conv2d3x3_B0 (
        .in_feedback_in_0(bb_conv2d3x3_B1_out_feedback_out_0),
        .in_feedback_valid_in_0(bb_conv2d3x3_B1_out_feedback_valid_out_0),
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_size(in_arg_filter_size),
        .in_filter_weight(in_arg_filter_weight),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_output_im(in_arg_output_im),
        .in_output_size(in_arg_output_size),
        .in_pad(in_arg_pad),
        .in_stall_in_0(bb_conv2d3x3_B2_sr_1_aunroll_x_out_o_stall),
        .in_start_channel(in_arg_start_channel),
        .in_stride(in_arg_stride),
        .in_valid_in_0(in_valid_in),
        .out_feedback_stall_out_0(bb_conv2d3x3_B0_out_feedback_stall_out_0),
        .out_intel_reserved_ffwd_0_0(bb_conv2d3x3_B0_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_conv2d3x3_B0_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_conv2d3x3_B0_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_conv2d3x3_B0_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_conv2d3x3_B0_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_conv2d3x3_B0_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_conv2d3x3_B0_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_conv2d3x3_B0_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_conv2d3x3_B0_out_intel_reserved_ffwd_8_0),
        .out_stall_out_0(bb_conv2d3x3_B0_out_stall_out_0),
        .out_valid_out_0(bb_conv2d3x3_B0_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B8(BLACKBOX,15)
    conv2d3x3_bb_B8 thebb_conv2d3x3_B8 (
        .in_c0_exe11114896_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe13115099_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe151152104_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe181155108_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe261163118_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe301167123_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe321169126_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe6114393_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c1_exe11205150_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_filter_bias(in_arg_filter_bias),
        .in_flush(in_start),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_intel_reserved_ffwd_5_0(bb_conv2d3x3_B0_out_intel_reserved_ffwd_5_0),
        .in_output_size(in_arg_output_size),
        .in_pad(in_arg_pad),
        .in_stall_in_0(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_stride(in_arg_stride),
        .in_unnamed_conv2d3x319_conv2d3x3_avm_readdata(in_unnamed_conv2d3x319_conv2d3x3_avm_readdata),
        .in_unnamed_conv2d3x319_conv2d3x3_avm_readdatavalid(in_unnamed_conv2d3x319_conv2d3x3_avm_readdatavalid),
        .in_unnamed_conv2d3x319_conv2d3x3_avm_waitrequest(in_unnamed_conv2d3x319_conv2d3x3_avm_waitrequest),
        .in_unnamed_conv2d3x319_conv2d3x3_avm_writeack(in_unnamed_conv2d3x319_conv2d3x3_avm_writeack),
        .in_valid_in_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe151152104(bb_conv2d3x3_B8_out_c0_exe151152104),
        .out_c0_exe261163118(bb_conv2d3x3_B8_out_c0_exe261163118),
        .out_lsu_unnamed_conv2d3x319_o_active(bb_conv2d3x3_B8_out_lsu_unnamed_conv2d3x319_o_active),
        .out_stall_in_0(bb_conv2d3x3_B8_out_stall_in_0),
        .out_stall_out_0(bb_conv2d3x3_B8_out_stall_out_0),
        .out_unnamed_conv2d3x319_conv2d3x3_avm_address(bb_conv2d3x3_B8_out_unnamed_conv2d3x319_conv2d3x3_avm_address),
        .out_unnamed_conv2d3x319_conv2d3x3_avm_burstcount(bb_conv2d3x3_B8_out_unnamed_conv2d3x319_conv2d3x3_avm_burstcount),
        .out_unnamed_conv2d3x319_conv2d3x3_avm_byteenable(bb_conv2d3x3_B8_out_unnamed_conv2d3x319_conv2d3x3_avm_byteenable),
        .out_unnamed_conv2d3x319_conv2d3x3_avm_enable(bb_conv2d3x3_B8_out_unnamed_conv2d3x319_conv2d3x3_avm_enable),
        .out_unnamed_conv2d3x319_conv2d3x3_avm_read(bb_conv2d3x3_B8_out_unnamed_conv2d3x319_conv2d3x3_avm_read),
        .out_unnamed_conv2d3x319_conv2d3x3_avm_write(bb_conv2d3x3_B8_out_unnamed_conv2d3x319_conv2d3x3_avm_write),
        .out_unnamed_conv2d3x319_conv2d3x3_avm_writedata(bb_conv2d3x3_B8_out_unnamed_conv2d3x319_conv2d3x3_avm_writedata),
        .out_valid_out_0(bb_conv2d3x3_B8_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B8_sr_0_aunroll_x(BLACKBOX,371)
    conv2d3x3_bb_B8_sr_0 thebb_conv2d3x3_B8_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B8_out_stall_out_0),
        .in_i_valid(bb_conv2d3x3_B14_out_valid_out_1),
        .in_i_data_0_tpl(bb_conv2d3x3_B14_out_c0_exe6114394),
        .in_i_data_1_tpl(bb_conv2d3x3_B14_out_c0_exe11114897),
        .in_i_data_2_tpl(bb_conv2d3x3_B14_out_c0_exe131150100),
        .in_i_data_3_tpl(bb_conv2d3x3_B14_out_c0_exe151152105),
        .in_i_data_4_tpl(bb_conv2d3x3_B14_out_c0_exe181155109),
        .in_i_data_5_tpl(bb_conv2d3x3_B14_out_c0_exe261163119),
        .in_i_data_6_tpl(bb_conv2d3x3_B14_out_c0_exe301167124),
        .in_i_data_7_tpl(bb_conv2d3x3_B14_out_c0_exe321169127),
        .in_i_data_8_tpl(bb_conv2d3x3_B14_out_c1_exe11205151),
        .out_o_stall(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_8_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B7_sr_0_aunroll_x(BLACKBOX,369)
    conv2d3x3_bb_B7_sr_0 thebb_conv2d3x3_B7_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B7_out_stall_out_0),
        .in_i_valid(bb_conv2d3x3_B14_out_valid_out_0),
        .in_i_data_0_tpl(bb_conv2d3x3_B14_out_c0_exe341171129),
        .in_i_data_1_tpl(bb_conv2d3x3_B14_out_c1_exe2152),
        .in_i_data_2_tpl(bb_conv2d3x3_B14_out_c0_exe8114595),
        .in_i_data_3_tpl(bb_conv2d3x3_B14_out_c0_exe12114998),
        .in_i_data_4_tpl(bb_conv2d3x3_B14_out_c0_exe141151101),
        .in_i_data_5_tpl(bb_conv2d3x3_B14_out_c0_exe161153106),
        .in_i_data_6_tpl(bb_conv2d3x3_B14_out_c0_exe171154107),
        .in_i_data_7_tpl(bb_conv2d3x3_B14_out_c0_exe191156110),
        .in_i_data_8_tpl(bb_conv2d3x3_B14_out_c0_exe201157111),
        .in_i_data_9_tpl(bb_conv2d3x3_B14_out_c0_exe211158112),
        .in_i_data_10_tpl(bb_conv2d3x3_B14_out_c0_exe221159113),
        .in_i_data_11_tpl(bb_conv2d3x3_B14_out_c0_exe231160114),
        .in_i_data_12_tpl(bb_conv2d3x3_B14_out_c0_exe241161115),
        .in_i_data_13_tpl(bb_conv2d3x3_B14_out_c0_exe251162116),
        .in_i_data_14_tpl(bb_conv2d3x3_B14_out_c0_exe3114091),
        .in_i_data_15_tpl(bb_conv2d3x3_B14_out_c0_exe4114192),
        .in_i_data_16_tpl(bb_conv2d3x3_B14_out_c0_exe271164120),
        .in_i_data_17_tpl(bb_conv2d3x3_B14_out_c0_exe281165121),
        .in_i_data_18_tpl(bb_conv2d3x3_B14_out_c0_exe291166122),
        .in_i_data_19_tpl(bb_conv2d3x3_B14_out_c0_exe311168125),
        .in_i_data_20_tpl(bb_conv2d3x3_B14_out_c0_exe331170128),
        .in_i_data_21_tpl(bb_conv2d3x3_B14_out_c0_exe371174131),
        .in_i_data_22_tpl(bb_conv2d3x3_B14_out_c0_exe381175132),
        .in_i_data_23_tpl(bb_conv2d3x3_B14_out_c0_exe391176133),
        .in_i_data_24_tpl(bb_conv2d3x3_B14_out_c0_exe401177134),
        .in_i_data_25_tpl(bb_conv2d3x3_B14_out_c0_exe411178135),
        .in_i_data_26_tpl(bb_conv2d3x3_B14_out_c0_exe421179136),
        .in_i_data_27_tpl(bb_conv2d3x3_B14_out_c0_exe431180137),
        .in_i_data_28_tpl(bb_conv2d3x3_B14_out_c0_exe441181138),
        .in_i_data_29_tpl(bb_conv2d3x3_B14_out_c0_exe451182139),
        .in_i_data_30_tpl(bb_conv2d3x3_B14_out_c0_exe461183140),
        .in_i_data_31_tpl(bb_conv2d3x3_B14_out_c0_exe471184141),
        .in_i_data_32_tpl(bb_conv2d3x3_B14_out_c0_exe481185142),
        .in_i_data_33_tpl(bb_conv2d3x3_B14_out_c0_exe491186143),
        .in_i_data_34_tpl(bb_conv2d3x3_B14_out_c0_exe501187144),
        .in_i_data_35_tpl(bb_conv2d3x3_B14_out_c0_exe511188145),
        .in_i_data_36_tpl(bb_conv2d3x3_B14_out_c0_exe521189146),
        .in_i_data_37_tpl(bb_conv2d3x3_B14_out_c0_exe53147),
        .in_i_data_38_tpl(bb_conv2d3x3_B14_out_c0_exe54148),
        .in_i_data_39_tpl(bb_conv2d3x3_B14_out_c0_exe55149),
        .out_o_stall(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_21_tpl),
        .out_o_data_22_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_22_tpl),
        .out_o_data_23_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_23_tpl),
        .out_o_data_24_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_24_tpl),
        .out_o_data_25_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_25_tpl),
        .out_o_data_26_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_26_tpl),
        .out_o_data_27_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_27_tpl),
        .out_o_data_28_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_28_tpl),
        .out_o_data_29_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_29_tpl),
        .out_o_data_30_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_30_tpl),
        .out_o_data_31_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_31_tpl),
        .out_o_data_32_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_32_tpl),
        .out_o_data_33_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_33_tpl),
        .out_o_data_34_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_34_tpl),
        .out_o_data_35_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_35_tpl),
        .out_o_data_36_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_36_tpl),
        .out_o_data_37_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_37_tpl),
        .out_o_data_38_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_38_tpl),
        .out_o_data_39_tpl(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_39_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B14(BLACKBOX,8)
    conv2d3x3_bb_B14 thebb_conv2d3x3_B14 (
        .in_c0_exe11114897_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe12114998_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe131150100_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe141151101_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe151152105_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe161153106_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe171154107_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe181155109_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe191156110_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_12_tpl),
        .in_c0_exe201157111_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_13_tpl),
        .in_c0_exe211158112_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_14_tpl),
        .in_c0_exe221159113_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_15_tpl),
        .in_c0_exe231160114_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_16_tpl),
        .in_c0_exe241161115_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_17_tpl),
        .in_c0_exe251162116_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_18_tpl),
        .in_c0_exe261163119_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_19_tpl),
        .in_c0_exe271164120_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_20_tpl),
        .in_c0_exe281165121_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_21_tpl),
        .in_c0_exe291166122_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_22_tpl),
        .in_c0_exe301167124_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_23_tpl),
        .in_c0_exe311168125_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_24_tpl),
        .in_c0_exe3114091_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe321169127_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_25_tpl),
        .in_c0_exe331170128_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_26_tpl),
        .in_c0_exe341171129_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_27_tpl),
        .in_c0_exe351172130_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_28_tpl),
        .in_c0_exe371174131_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_29_tpl),
        .in_c0_exe381175132_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_30_tpl),
        .in_c0_exe391176133_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_31_tpl),
        .in_c0_exe401177134_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_32_tpl),
        .in_c0_exe411178135_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_33_tpl),
        .in_c0_exe4114192_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe421179136_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_34_tpl),
        .in_c0_exe431180137_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_35_tpl),
        .in_c0_exe441181138_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_36_tpl),
        .in_c0_exe451182139_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_37_tpl),
        .in_c0_exe461183140_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_38_tpl),
        .in_c0_exe471184141_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_39_tpl),
        .in_c0_exe481185142_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_40_tpl),
        .in_c0_exe491186143_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_41_tpl),
        .in_c0_exe501187144_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_42_tpl),
        .in_c0_exe511188145_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_43_tpl),
        .in_c0_exe521189146_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_44_tpl),
        .in_c0_exe53147_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_45_tpl),
        .in_c0_exe54148_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_46_tpl),
        .in_c0_exe55149_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_47_tpl),
        .in_c0_exe6114394_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe8114595_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c1_exe11205151_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_48_tpl),
        .in_c1_exe2152_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_49_tpl),
        .in_filter_bias(in_arg_filter_bias),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_output_size(in_arg_output_size),
        .in_pad(in_arg_pad),
        .in_stall_in_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_stall),
        .in_stride(in_arg_stride),
        .in_valid_in_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe11114897(bb_conv2d3x3_B14_out_c0_exe11114897),
        .out_c0_exe12114998(bb_conv2d3x3_B14_out_c0_exe12114998),
        .out_c0_exe131150100(bb_conv2d3x3_B14_out_c0_exe131150100),
        .out_c0_exe141151101(bb_conv2d3x3_B14_out_c0_exe141151101),
        .out_c0_exe151152105(bb_conv2d3x3_B14_out_c0_exe151152105),
        .out_c0_exe161153106(bb_conv2d3x3_B14_out_c0_exe161153106),
        .out_c0_exe171154107(bb_conv2d3x3_B14_out_c0_exe171154107),
        .out_c0_exe181155109(bb_conv2d3x3_B14_out_c0_exe181155109),
        .out_c0_exe191156110(bb_conv2d3x3_B14_out_c0_exe191156110),
        .out_c0_exe201157111(bb_conv2d3x3_B14_out_c0_exe201157111),
        .out_c0_exe211158112(bb_conv2d3x3_B14_out_c0_exe211158112),
        .out_c0_exe221159113(bb_conv2d3x3_B14_out_c0_exe221159113),
        .out_c0_exe231160114(bb_conv2d3x3_B14_out_c0_exe231160114),
        .out_c0_exe241161115(bb_conv2d3x3_B14_out_c0_exe241161115),
        .out_c0_exe251162116(bb_conv2d3x3_B14_out_c0_exe251162116),
        .out_c0_exe261163119(bb_conv2d3x3_B14_out_c0_exe261163119),
        .out_c0_exe271164120(bb_conv2d3x3_B14_out_c0_exe271164120),
        .out_c0_exe281165121(bb_conv2d3x3_B14_out_c0_exe281165121),
        .out_c0_exe291166122(bb_conv2d3x3_B14_out_c0_exe291166122),
        .out_c0_exe301167124(bb_conv2d3x3_B14_out_c0_exe301167124),
        .out_c0_exe311168125(bb_conv2d3x3_B14_out_c0_exe311168125),
        .out_c0_exe3114091(bb_conv2d3x3_B14_out_c0_exe3114091),
        .out_c0_exe321169127(bb_conv2d3x3_B14_out_c0_exe321169127),
        .out_c0_exe331170128(bb_conv2d3x3_B14_out_c0_exe331170128),
        .out_c0_exe341171129(bb_conv2d3x3_B14_out_c0_exe341171129),
        .out_c0_exe371174131(bb_conv2d3x3_B14_out_c0_exe371174131),
        .out_c0_exe381175132(bb_conv2d3x3_B14_out_c0_exe381175132),
        .out_c0_exe391176133(bb_conv2d3x3_B14_out_c0_exe391176133),
        .out_c0_exe401177134(bb_conv2d3x3_B14_out_c0_exe401177134),
        .out_c0_exe411178135(bb_conv2d3x3_B14_out_c0_exe411178135),
        .out_c0_exe4114192(bb_conv2d3x3_B14_out_c0_exe4114192),
        .out_c0_exe421179136(bb_conv2d3x3_B14_out_c0_exe421179136),
        .out_c0_exe431180137(bb_conv2d3x3_B14_out_c0_exe431180137),
        .out_c0_exe441181138(bb_conv2d3x3_B14_out_c0_exe441181138),
        .out_c0_exe451182139(bb_conv2d3x3_B14_out_c0_exe451182139),
        .out_c0_exe461183140(bb_conv2d3x3_B14_out_c0_exe461183140),
        .out_c0_exe471184141(bb_conv2d3x3_B14_out_c0_exe471184141),
        .out_c0_exe481185142(bb_conv2d3x3_B14_out_c0_exe481185142),
        .out_c0_exe491186143(bb_conv2d3x3_B14_out_c0_exe491186143),
        .out_c0_exe501187144(bb_conv2d3x3_B14_out_c0_exe501187144),
        .out_c0_exe511188145(bb_conv2d3x3_B14_out_c0_exe511188145),
        .out_c0_exe521189146(bb_conv2d3x3_B14_out_c0_exe521189146),
        .out_c0_exe53147(bb_conv2d3x3_B14_out_c0_exe53147),
        .out_c0_exe54148(bb_conv2d3x3_B14_out_c0_exe54148),
        .out_c0_exe55149(bb_conv2d3x3_B14_out_c0_exe55149),
        .out_c0_exe6114394(bb_conv2d3x3_B14_out_c0_exe6114394),
        .out_c0_exe8114595(bb_conv2d3x3_B14_out_c0_exe8114595),
        .out_c1_exe11205151(bb_conv2d3x3_B14_out_c1_exe11205151),
        .out_c1_exe2152(bb_conv2d3x3_B14_out_c1_exe2152),
        .out_stall_in_0(bb_conv2d3x3_B14_out_stall_in_0),
        .out_stall_out_0(bb_conv2d3x3_B14_out_stall_out_0),
        .out_valid_out_0(bb_conv2d3x3_B14_out_valid_out_0),
        .out_valid_out_1(bb_conv2d3x3_B14_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B14_sr_0_aunroll_x(BLACKBOX,362)
    conv2d3x3_bb_B14_sr_0 thebb_conv2d3x3_B14_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B14_out_stall_out_0),
        .in_i_valid(bb_conv2d3x3_B13_out_valid_out_0),
        .in_i_data_0_tpl(bb_conv2d3x3_B13_out_c0_exe31140),
        .in_i_data_1_tpl(bb_conv2d3x3_B13_out_c0_exe41141),
        .in_i_data_2_tpl(bb_conv2d3x3_B13_out_c0_exe61143),
        .in_i_data_3_tpl(bb_conv2d3x3_B13_out_c0_exe81145),
        .in_i_data_4_tpl(bb_conv2d3x3_B13_out_c0_exe111148),
        .in_i_data_5_tpl(bb_conv2d3x3_B13_out_c0_exe121149),
        .in_i_data_6_tpl(bb_conv2d3x3_B13_out_c0_exe131150),
        .in_i_data_7_tpl(bb_conv2d3x3_B13_out_c0_exe141151),
        .in_i_data_8_tpl(bb_conv2d3x3_B13_out_c0_exe151152),
        .in_i_data_9_tpl(bb_conv2d3x3_B13_out_c0_exe161153),
        .in_i_data_10_tpl(bb_conv2d3x3_B13_out_c0_exe171154),
        .in_i_data_11_tpl(bb_conv2d3x3_B13_out_c0_exe181155),
        .in_i_data_12_tpl(bb_conv2d3x3_B13_out_c0_exe191156),
        .in_i_data_13_tpl(bb_conv2d3x3_B13_out_c0_exe201157),
        .in_i_data_14_tpl(bb_conv2d3x3_B13_out_c0_exe211158),
        .in_i_data_15_tpl(bb_conv2d3x3_B13_out_c0_exe221159),
        .in_i_data_16_tpl(bb_conv2d3x3_B13_out_c0_exe231160),
        .in_i_data_17_tpl(bb_conv2d3x3_B13_out_c0_exe241161),
        .in_i_data_18_tpl(bb_conv2d3x3_B13_out_c0_exe251162),
        .in_i_data_19_tpl(bb_conv2d3x3_B13_out_c0_exe261163),
        .in_i_data_20_tpl(bb_conv2d3x3_B13_out_c0_exe271164),
        .in_i_data_21_tpl(bb_conv2d3x3_B13_out_c0_exe281165),
        .in_i_data_22_tpl(bb_conv2d3x3_B13_out_c0_exe291166),
        .in_i_data_23_tpl(bb_conv2d3x3_B13_out_c0_exe301167),
        .in_i_data_24_tpl(bb_conv2d3x3_B13_out_c0_exe311168),
        .in_i_data_25_tpl(bb_conv2d3x3_B13_out_c0_exe321169),
        .in_i_data_26_tpl(bb_conv2d3x3_B13_out_c0_exe331170),
        .in_i_data_27_tpl(bb_conv2d3x3_B13_out_c0_exe341171),
        .in_i_data_28_tpl(bb_conv2d3x3_B13_out_c0_exe351172),
        .in_i_data_29_tpl(bb_conv2d3x3_B13_out_c0_exe371174),
        .in_i_data_30_tpl(bb_conv2d3x3_B13_out_c0_exe381175),
        .in_i_data_31_tpl(bb_conv2d3x3_B13_out_c0_exe391176),
        .in_i_data_32_tpl(bb_conv2d3x3_B13_out_c0_exe401177),
        .in_i_data_33_tpl(bb_conv2d3x3_B13_out_c0_exe411178),
        .in_i_data_34_tpl(bb_conv2d3x3_B13_out_c0_exe421179),
        .in_i_data_35_tpl(bb_conv2d3x3_B13_out_c0_exe431180),
        .in_i_data_36_tpl(bb_conv2d3x3_B13_out_c0_exe441181),
        .in_i_data_37_tpl(bb_conv2d3x3_B13_out_c0_exe451182),
        .in_i_data_38_tpl(bb_conv2d3x3_B13_out_c0_exe461183),
        .in_i_data_39_tpl(bb_conv2d3x3_B13_out_c0_exe471184),
        .in_i_data_40_tpl(bb_conv2d3x3_B13_out_c0_exe481185),
        .in_i_data_41_tpl(bb_conv2d3x3_B13_out_c0_exe491186),
        .in_i_data_42_tpl(bb_conv2d3x3_B13_out_c0_exe501187),
        .in_i_data_43_tpl(bb_conv2d3x3_B13_out_c0_exe511188),
        .in_i_data_44_tpl(bb_conv2d3x3_B13_out_c0_exe521189),
        .in_i_data_45_tpl(bb_conv2d3x3_B13_out_c0_exe53),
        .in_i_data_46_tpl(bb_conv2d3x3_B13_out_c0_exe54),
        .in_i_data_47_tpl(bb_conv2d3x3_B13_out_c0_exe55),
        .in_i_data_48_tpl(bb_conv2d3x3_B13_out_c1_exe11205),
        .in_i_data_49_tpl(bb_conv2d3x3_B13_out_c1_exe2),
        .out_o_stall(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_21_tpl),
        .out_o_data_22_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_22_tpl),
        .out_o_data_23_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_23_tpl),
        .out_o_data_24_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_24_tpl),
        .out_o_data_25_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_25_tpl),
        .out_o_data_26_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_26_tpl),
        .out_o_data_27_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_27_tpl),
        .out_o_data_28_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_28_tpl),
        .out_o_data_29_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_29_tpl),
        .out_o_data_30_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_30_tpl),
        .out_o_data_31_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_31_tpl),
        .out_o_data_32_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_32_tpl),
        .out_o_data_33_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_33_tpl),
        .out_o_data_34_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_34_tpl),
        .out_o_data_35_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_35_tpl),
        .out_o_data_36_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_36_tpl),
        .out_o_data_37_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_37_tpl),
        .out_o_data_38_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_38_tpl),
        .out_o_data_39_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_39_tpl),
        .out_o_data_40_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_40_tpl),
        .out_o_data_41_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_41_tpl),
        .out_o_data_42_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_42_tpl),
        .out_o_data_43_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_43_tpl),
        .out_o_data_44_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_44_tpl),
        .out_o_data_45_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_45_tpl),
        .out_o_data_46_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_46_tpl),
        .out_o_data_47_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_47_tpl),
        .out_o_data_48_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_48_tpl),
        .out_o_data_49_tpl(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_data_49_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_conv2d3x38_sr(BLACKBOX,239)
    conv2d3x3_i_llvm_fpga_pipeline_keep_going_8_sr thei_llvm_fpga_pipeline_keep_going_conv2d3x38_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_conv2d3x38_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv2d3x3_B13_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_conv2d3x38_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_conv2d3x38_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B13(BLACKBOX,7)
    conv2d3x3_bb_B13 thebb_conv2d3x3_B13 (
        .in_acl_11462_0(c_float_undef219_q),
        .in_acl_11462_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_25_tpl),
        .in_add112_pop79470_0(c_i32_079_q),
        .in_add112_pop79470_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_29_tpl),
        .in_add24189_pop100452_0(c_i32_079_q),
        .in_add24189_pop100452_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_20_tpl),
        .in_add242_0(c_i32_079_q),
        .in_add242_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_add35_2501_0(c_i32_079_q),
        .in_add35_2501_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_44_tpl),
        .in_add41_2502_0(c_i32_079_q),
        .in_add41_2502_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_45_tpl),
        .in_cmp26122_pop81474_0(GND_q),
        .in_cmp26122_pop81474_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_31_tpl),
        .in_cmp26260_0(GND_q),
        .in_cmp26260_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_cmp26_1137_pop84454_0(GND_q),
        .in_cmp26_1137_pop84454_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_21_tpl),
        .in_cmp26_1287_0(GND_q),
        .in_cmp26_1287_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_cmp26_2152_pop87482_0(GND_q),
        .in_cmp26_2152_pop87482_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_35_tpl),
        .in_cmp26_2314_0(GND_q),
        .in_cmp26_2314_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_cmp27127_pop82476_0(GND_q),
        .in_cmp27127_pop82476_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_32_tpl),
        .in_cmp27269_0(GND_q),
        .in_cmp27269_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_cmp27_1142_pop85456_0(GND_q),
        .in_cmp27_1142_pop85456_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_22_tpl),
        .in_cmp27_1296_0(GND_q),
        .in_cmp27_1296_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_cmp27_2157_pop88484_0(GND_q),
        .in_cmp27_2157_pop88484_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_36_tpl),
        .in_cmp27_2323_0(GND_q),
        .in_cmp27_2323_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight_addr_067_replace_phi199_0(c_float_addrspace_1024_undef215_q),
        .in_filter_weight_addr_067_replace_phi199_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_filter_weight_addr_067_replace_phi85_pop19341_0(c_float_addrspace_1024_undef215_q),
        .in_filter_weight_addr_067_replace_phi85_pop19341_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_filter_weight_addr_067_replace_phi89_pop75460_0(c_float_addrspace_1024_undef215_q),
        .in_filter_weight_addr_067_replace_phi89_pop75460_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_24_tpl),
        .in_flush(in_start),
        .in_forked37_0(GND_q),
        .in_forked37_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_inc50185_pop96497_0(c_i32_079_q),
        .in_inc50185_pop96497_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_42_tpl),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_j_061_pop24177_pop93494_0(c_i32_079_q),
        .in_j_061_pop24177_pop93494_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_41_tpl),
        .in_lm20_conv2d3x3_avm_readdata(in_lm20_conv2d3x3_avm_readdata),
        .in_lm20_conv2d3x3_avm_readdatavalid(in_lm20_conv2d3x3_avm_readdatavalid),
        .in_lm20_conv2d3x3_avm_waitrequest(in_lm20_conv2d3x3_avm_waitrequest),
        .in_lm20_conv2d3x3_avm_writeack(in_lm20_conv2d3x3_avm_writeack),
        .in_lm22_conv2d3x3_avm_readdata(in_lm22_conv2d3x3_avm_readdata),
        .in_lm22_conv2d3x3_avm_readdatavalid(in_lm22_conv2d3x3_avm_readdatavalid),
        .in_lm22_conv2d3x3_avm_waitrequest(in_lm22_conv2d3x3_avm_waitrequest),
        .in_lm22_conv2d3x3_avm_writeack(in_lm22_conv2d3x3_avm_writeack),
        .in_lm25101_pop77466_0(c_float_undef219_q),
        .in_lm25101_pop77466_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_27_tpl),
        .in_lm25221_0(c_float_undef219_q),
        .in_lm25221_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_lm2597_pop21359_0(c_float_undef219_q),
        .in_lm2597_pop21359_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_mul56117_pop80472_0(c_i32_079_q),
        .in_mul56117_pop80472_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_30_tpl),
        .in_mul56251_0(c_i32_079_q),
        .in_mul56251_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_notcmp73173_pop92492_0(GND_q),
        .in_notcmp73173_pop92492_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_40_tpl),
        .in_notcmp77162_pop89486_0(GND_q),
        .in_notcmp77162_pop89486_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_37_tpl),
        .in_notcmp77332_0(GND_q),
        .in_notcmp77332_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_notcmp81103_pop22368_0(GND_q),
        .in_notcmp81103_pop22368_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_19_tpl),
        .in_notcmp81107_pop78468_0(GND_q),
        .in_notcmp81107_pop78468_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_28_tpl),
        .in_notcmp81232_0(GND_q),
        .in_notcmp81232_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_output_im_addr_068_replace_phi210_0(c_float_addrspace_1024_undef215_q),
        .in_output_im_addr_068_replace_phi210_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_output_im_addr_068_replace_phi91_pop20350_0(c_float_addrspace_1024_undef215_q),
        .in_output_im_addr_068_replace_phi91_pop20350_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_output_im_addr_068_replace_phi95_pop76464_0(c_float_addrspace_1024_undef215_q),
        .in_output_im_addr_068_replace_phi95_pop76464_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_26_tpl),
        .in_output_size(in_arg_output_size),
        .in_pad(in_arg_pad),
        .in_pad_sync_buffer169_pop91490_0(c_i32_079_q),
        .in_pad_sync_buffer169_pop91490_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_39_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_conv2d3x38_sr_out_o_stall),
        .in_pop94458_0(GND_q),
        .in_pop94458_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_23_tpl),
        .in_pop97499_0(GND_q),
        .in_pop97499_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_43_tpl),
        .in_stall_in_0(bb_conv2d3x3_B14_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_stride(in_arg_stride),
        .in_stride_sync_buffer165_pop90488_0(c_i32_079_q),
        .in_stride_sync_buffer165_pop90488_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_38_tpl),
        .in_sub_1132_pop83478_0(c_i32_079_q),
        .in_sub_1132_pop83478_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_33_tpl),
        .in_sub_1278_0(c_i32_079_q),
        .in_sub_1278_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_sub_2147_pop86480_0(c_i32_079_q),
        .in_sub_2147_pop86480_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_34_tpl),
        .in_sub_2305_0(c_i32_079_q),
        .in_sub_2305_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_conv2d3x38_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe111148(bb_conv2d3x3_B13_out_c0_exe111148),
        .out_c0_exe121149(bb_conv2d3x3_B13_out_c0_exe121149),
        .out_c0_exe131150(bb_conv2d3x3_B13_out_c0_exe131150),
        .out_c0_exe141151(bb_conv2d3x3_B13_out_c0_exe141151),
        .out_c0_exe151152(bb_conv2d3x3_B13_out_c0_exe151152),
        .out_c0_exe161153(bb_conv2d3x3_B13_out_c0_exe161153),
        .out_c0_exe171154(bb_conv2d3x3_B13_out_c0_exe171154),
        .out_c0_exe181155(bb_conv2d3x3_B13_out_c0_exe181155),
        .out_c0_exe191156(bb_conv2d3x3_B13_out_c0_exe191156),
        .out_c0_exe201157(bb_conv2d3x3_B13_out_c0_exe201157),
        .out_c0_exe211158(bb_conv2d3x3_B13_out_c0_exe211158),
        .out_c0_exe221159(bb_conv2d3x3_B13_out_c0_exe221159),
        .out_c0_exe231160(bb_conv2d3x3_B13_out_c0_exe231160),
        .out_c0_exe241161(bb_conv2d3x3_B13_out_c0_exe241161),
        .out_c0_exe251162(bb_conv2d3x3_B13_out_c0_exe251162),
        .out_c0_exe261163(bb_conv2d3x3_B13_out_c0_exe261163),
        .out_c0_exe271164(bb_conv2d3x3_B13_out_c0_exe271164),
        .out_c0_exe281165(bb_conv2d3x3_B13_out_c0_exe281165),
        .out_c0_exe291166(bb_conv2d3x3_B13_out_c0_exe291166),
        .out_c0_exe301167(bb_conv2d3x3_B13_out_c0_exe301167),
        .out_c0_exe311168(bb_conv2d3x3_B13_out_c0_exe311168),
        .out_c0_exe31140(bb_conv2d3x3_B13_out_c0_exe31140),
        .out_c0_exe321169(bb_conv2d3x3_B13_out_c0_exe321169),
        .out_c0_exe331170(bb_conv2d3x3_B13_out_c0_exe331170),
        .out_c0_exe341171(bb_conv2d3x3_B13_out_c0_exe341171),
        .out_c0_exe351172(bb_conv2d3x3_B13_out_c0_exe351172),
        .out_c0_exe371174(bb_conv2d3x3_B13_out_c0_exe371174),
        .out_c0_exe381175(bb_conv2d3x3_B13_out_c0_exe381175),
        .out_c0_exe391176(bb_conv2d3x3_B13_out_c0_exe391176),
        .out_c0_exe401177(bb_conv2d3x3_B13_out_c0_exe401177),
        .out_c0_exe411178(bb_conv2d3x3_B13_out_c0_exe411178),
        .out_c0_exe41141(bb_conv2d3x3_B13_out_c0_exe41141),
        .out_c0_exe421179(bb_conv2d3x3_B13_out_c0_exe421179),
        .out_c0_exe431180(bb_conv2d3x3_B13_out_c0_exe431180),
        .out_c0_exe441181(bb_conv2d3x3_B13_out_c0_exe441181),
        .out_c0_exe451182(bb_conv2d3x3_B13_out_c0_exe451182),
        .out_c0_exe461183(bb_conv2d3x3_B13_out_c0_exe461183),
        .out_c0_exe471184(bb_conv2d3x3_B13_out_c0_exe471184),
        .out_c0_exe481185(bb_conv2d3x3_B13_out_c0_exe481185),
        .out_c0_exe491186(bb_conv2d3x3_B13_out_c0_exe491186),
        .out_c0_exe501187(bb_conv2d3x3_B13_out_c0_exe501187),
        .out_c0_exe511188(bb_conv2d3x3_B13_out_c0_exe511188),
        .out_c0_exe521189(bb_conv2d3x3_B13_out_c0_exe521189),
        .out_c0_exe53(bb_conv2d3x3_B13_out_c0_exe53),
        .out_c0_exe54(bb_conv2d3x3_B13_out_c0_exe54),
        .out_c0_exe55(bb_conv2d3x3_B13_out_c0_exe55),
        .out_c0_exe61143(bb_conv2d3x3_B13_out_c0_exe61143),
        .out_c0_exe81145(bb_conv2d3x3_B13_out_c0_exe81145),
        .out_c1_exe11205(bb_conv2d3x3_B13_out_c1_exe11205),
        .out_c1_exe2(bb_conv2d3x3_B13_out_c1_exe2),
        .out_exiting_stall_out(bb_conv2d3x3_B13_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv2d3x3_B13_out_exiting_valid_out),
        .out_lm20_conv2d3x3_avm_address(bb_conv2d3x3_B13_out_lm20_conv2d3x3_avm_address),
        .out_lm20_conv2d3x3_avm_burstcount(bb_conv2d3x3_B13_out_lm20_conv2d3x3_avm_burstcount),
        .out_lm20_conv2d3x3_avm_byteenable(bb_conv2d3x3_B13_out_lm20_conv2d3x3_avm_byteenable),
        .out_lm20_conv2d3x3_avm_enable(bb_conv2d3x3_B13_out_lm20_conv2d3x3_avm_enable),
        .out_lm20_conv2d3x3_avm_read(bb_conv2d3x3_B13_out_lm20_conv2d3x3_avm_read),
        .out_lm20_conv2d3x3_avm_write(bb_conv2d3x3_B13_out_lm20_conv2d3x3_avm_write),
        .out_lm20_conv2d3x3_avm_writedata(bb_conv2d3x3_B13_out_lm20_conv2d3x3_avm_writedata),
        .out_lm22_conv2d3x3_avm_address(bb_conv2d3x3_B13_out_lm22_conv2d3x3_avm_address),
        .out_lm22_conv2d3x3_avm_burstcount(bb_conv2d3x3_B13_out_lm22_conv2d3x3_avm_burstcount),
        .out_lm22_conv2d3x3_avm_byteenable(bb_conv2d3x3_B13_out_lm22_conv2d3x3_avm_byteenable),
        .out_lm22_conv2d3x3_avm_enable(bb_conv2d3x3_B13_out_lm22_conv2d3x3_avm_enable),
        .out_lm22_conv2d3x3_avm_read(bb_conv2d3x3_B13_out_lm22_conv2d3x3_avm_read),
        .out_lm22_conv2d3x3_avm_write(bb_conv2d3x3_B13_out_lm22_conv2d3x3_avm_write),
        .out_lm22_conv2d3x3_avm_writedata(bb_conv2d3x3_B13_out_lm22_conv2d3x3_avm_writedata),
        .out_pipeline_valid_out(bb_conv2d3x3_B13_out_pipeline_valid_out),
        .out_stall_in_0(bb_conv2d3x3_B13_out_stall_in_0),
        .out_stall_out_0(bb_conv2d3x3_B13_out_stall_out_0),
        .out_stall_out_1(bb_conv2d3x3_B13_out_stall_out_1),
        .out_valid_in_0(bb_conv2d3x3_B13_out_valid_in_0),
        .out_valid_in_1(bb_conv2d3x3_B13_out_valid_in_1),
        .out_valid_out_0(bb_conv2d3x3_B13_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B13_sr_1_aunroll_x(BLACKBOX,361)
    conv2d3x3_bb_B13_sr_1 thebb_conv2d3x3_B13_sr_1_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B13_out_stall_out_1),
        .in_i_valid(loop_limiter_conv2d3x35_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_conv2d3x3_B12_out_c0_exe3394871),
        .in_i_data_2_tpl(bb_conv2d3x3_B12_out_c0_exe3494972),
        .in_i_data_3_tpl(bb_conv2d3x3_B12_out_c0_exe3595073),
        .in_i_data_4_tpl(bb_conv2d3x3_B12_out_c0_exe3695174),
        .in_i_data_5_tpl(bb_conv2d3x3_B12_out_c0_exe3795275),
        .in_i_data_6_tpl(bb_conv2d3x3_B12_out_c0_exe3895376),
        .in_i_data_7_tpl(bb_conv2d3x3_B12_out_c0_exe3995477),
        .in_i_data_8_tpl(bb_conv2d3x3_B12_out_c0_exe4095578),
        .in_i_data_9_tpl(bb_conv2d3x3_B12_out_c0_exe4195679),
        .in_i_data_10_tpl(bb_conv2d3x3_B12_out_c0_exe4295780),
        .in_i_data_11_tpl(bb_conv2d3x3_B12_out_c0_exe4395881),
        .in_i_data_12_tpl(bb_conv2d3x3_B12_out_c0_exe4495982),
        .in_i_data_13_tpl(bb_conv2d3x3_B12_out_c0_exe4596083),
        .in_i_data_14_tpl(bb_conv2d3x3_B12_out_c0_exe4696184),
        .in_i_data_15_tpl(bb_conv2d3x3_B12_out_c0_exe4796285),
        .in_i_data_16_tpl(bb_conv2d3x3_B12_out_c0_exe4896386),
        .in_i_data_17_tpl(bb_conv2d3x3_B12_out_c0_exe4996487),
        .in_i_data_18_tpl(bb_conv2d3x3_B12_out_c0_exe5096588),
        .in_i_data_19_tpl(bb_conv2d3x3_B12_out_c0_exe5196689),
        .in_i_data_20_tpl(bb_conv2d3x3_B12_out_c0_exe391847),
        .in_i_data_21_tpl(bb_conv2d3x3_B12_out_c0_exe592048),
        .in_i_data_22_tpl(bb_conv2d3x3_B12_out_c0_exe692149),
        .in_i_data_23_tpl(bb_conv2d3x3_B12_out_c0_exe892350),
        .in_i_data_24_tpl(bb_conv2d3x3_B12_out_c0_exe1092551),
        .in_i_data_25_tpl(bb_conv2d3x3_B12_out_c1_exe198390),
        .in_i_data_26_tpl(bb_conv2d3x3_B12_out_c0_exe1392852),
        .in_i_data_27_tpl(bb_conv2d3x3_B12_out_c0_exe1492953),
        .in_i_data_28_tpl(bb_conv2d3x3_B12_out_c0_exe1593054),
        .in_i_data_29_tpl(bb_conv2d3x3_B12_out_c0_exe1693155),
        .in_i_data_30_tpl(bb_conv2d3x3_B12_out_c0_exe1793256),
        .in_i_data_31_tpl(bb_conv2d3x3_B12_out_c0_exe1893357),
        .in_i_data_32_tpl(bb_conv2d3x3_B12_out_c0_exe1993458),
        .in_i_data_33_tpl(bb_conv2d3x3_B12_out_c0_exe2093559),
        .in_i_data_34_tpl(bb_conv2d3x3_B12_out_c0_exe2193660),
        .in_i_data_35_tpl(bb_conv2d3x3_B12_out_c0_exe2293761),
        .in_i_data_36_tpl(bb_conv2d3x3_B12_out_c0_exe2393862),
        .in_i_data_37_tpl(bb_conv2d3x3_B12_out_c0_exe2493963),
        .in_i_data_38_tpl(bb_conv2d3x3_B12_out_c0_exe2594064),
        .in_i_data_39_tpl(bb_conv2d3x3_B12_out_c0_exe2694165),
        .in_i_data_40_tpl(bb_conv2d3x3_B12_out_c0_exe2794266),
        .in_i_data_41_tpl(bb_conv2d3x3_B12_out_c0_exe2894367),
        .in_i_data_42_tpl(bb_conv2d3x3_B12_out_c0_exe3094569),
        .in_i_data_43_tpl(bb_conv2d3x3_B12_out_c0_exe3194670),
        .in_i_data_44_tpl(bb_conv2d3x3_B12_out_c0_exe1991),
        .in_i_data_45_tpl(bb_conv2d3x3_B12_out_add41_2),
        .out_o_stall(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_21_tpl),
        .out_o_data_22_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_22_tpl),
        .out_o_data_23_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_23_tpl),
        .out_o_data_24_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_24_tpl),
        .out_o_data_25_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_25_tpl),
        .out_o_data_26_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_26_tpl),
        .out_o_data_27_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_27_tpl),
        .out_o_data_28_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_28_tpl),
        .out_o_data_29_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_29_tpl),
        .out_o_data_30_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_30_tpl),
        .out_o_data_31_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_31_tpl),
        .out_o_data_32_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_32_tpl),
        .out_o_data_33_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_33_tpl),
        .out_o_data_34_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_34_tpl),
        .out_o_data_35_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_35_tpl),
        .out_o_data_36_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_36_tpl),
        .out_o_data_37_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_37_tpl),
        .out_o_data_38_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_38_tpl),
        .out_o_data_39_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_39_tpl),
        .out_o_data_40_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_40_tpl),
        .out_o_data_41_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_41_tpl),
        .out_o_data_42_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_42_tpl),
        .out_o_data_43_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_43_tpl),
        .out_o_data_44_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_44_tpl),
        .out_o_data_45_tpl(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_data_45_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv2d3x35(BLACKBOX,298)
    conv2d3x3_loop_limiter_5 theloop_limiter_conv2d3x35 (
        .in_i_stall(bb_conv2d3x3_B13_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2d3x3_B13_out_exiting_stall_out),
        .in_i_valid(bb_conv2d3x3_B12_out_valid_out_0),
        .in_i_valid_exit(bb_conv2d3x3_B13_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv2d3x35_out_o_stall),
        .out_o_valid(loop_limiter_conv2d3x35_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B12(BLACKBOX,6)
    conv2d3x3_bb_B12 thebb_conv2d3x3_B12 (
        .in_c0_exe1092551_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe1392852_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe1492953_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe1593054_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe1693155_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe1793256_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe1893357_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe1993458_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_12_tpl),
        .in_c0_exe2093559_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_13_tpl),
        .in_c0_exe2193660_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_14_tpl),
        .in_c0_exe2293761_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_15_tpl),
        .in_c0_exe2393862_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_16_tpl),
        .in_c0_exe2493963_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_17_tpl),
        .in_c0_exe2594064_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_18_tpl),
        .in_c0_exe2694165_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_19_tpl),
        .in_c0_exe2794266_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_20_tpl),
        .in_c0_exe2894367_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_21_tpl),
        .in_c0_exe291746_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe2994468_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_22_tpl),
        .in_c0_exe3094569_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_23_tpl),
        .in_c0_exe3194670_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_24_tpl),
        .in_c0_exe3394871_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_25_tpl),
        .in_c0_exe3494972_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_26_tpl),
        .in_c0_exe3595073_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_27_tpl),
        .in_c0_exe3695174_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_28_tpl),
        .in_c0_exe3795275_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_29_tpl),
        .in_c0_exe3895376_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_30_tpl),
        .in_c0_exe391847_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe3995477_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_31_tpl),
        .in_c0_exe4095578_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_32_tpl),
        .in_c0_exe4195679_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_33_tpl),
        .in_c0_exe4295780_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_34_tpl),
        .in_c0_exe4395881_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_35_tpl),
        .in_c0_exe4495982_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_36_tpl),
        .in_c0_exe4596083_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_37_tpl),
        .in_c0_exe4696184_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_38_tpl),
        .in_c0_exe4796285_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_39_tpl),
        .in_c0_exe4896386_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_40_tpl),
        .in_c0_exe4996487_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_41_tpl),
        .in_c0_exe5096588_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_42_tpl),
        .in_c0_exe5196689_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_43_tpl),
        .in_c0_exe592048_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe692149_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe892350_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c1_exe198390_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_44_tpl),
        .in_filter_bias(in_arg_filter_bias),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_output_size(in_arg_output_size),
        .in_pad(in_arg_pad),
        .in_stall_in_0(loop_limiter_conv2d3x35_out_o_stall),
        .in_stride(in_arg_stride),
        .in_valid_in_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_valid),
        .out_add41_2(bb_conv2d3x3_B12_out_add41_2),
        .out_c0_exe1092551(bb_conv2d3x3_B12_out_c0_exe1092551),
        .out_c0_exe1392852(bb_conv2d3x3_B12_out_c0_exe1392852),
        .out_c0_exe1492953(bb_conv2d3x3_B12_out_c0_exe1492953),
        .out_c0_exe1593054(bb_conv2d3x3_B12_out_c0_exe1593054),
        .out_c0_exe1693155(bb_conv2d3x3_B12_out_c0_exe1693155),
        .out_c0_exe1793256(bb_conv2d3x3_B12_out_c0_exe1793256),
        .out_c0_exe1893357(bb_conv2d3x3_B12_out_c0_exe1893357),
        .out_c0_exe1991(bb_conv2d3x3_B12_out_c0_exe1991),
        .out_c0_exe1993458(bb_conv2d3x3_B12_out_c0_exe1993458),
        .out_c0_exe2093559(bb_conv2d3x3_B12_out_c0_exe2093559),
        .out_c0_exe2193660(bb_conv2d3x3_B12_out_c0_exe2193660),
        .out_c0_exe2293761(bb_conv2d3x3_B12_out_c0_exe2293761),
        .out_c0_exe2393862(bb_conv2d3x3_B12_out_c0_exe2393862),
        .out_c0_exe2493963(bb_conv2d3x3_B12_out_c0_exe2493963),
        .out_c0_exe2594064(bb_conv2d3x3_B12_out_c0_exe2594064),
        .out_c0_exe2694165(bb_conv2d3x3_B12_out_c0_exe2694165),
        .out_c0_exe2794266(bb_conv2d3x3_B12_out_c0_exe2794266),
        .out_c0_exe2894367(bb_conv2d3x3_B12_out_c0_exe2894367),
        .out_c0_exe3094569(bb_conv2d3x3_B12_out_c0_exe3094569),
        .out_c0_exe3194670(bb_conv2d3x3_B12_out_c0_exe3194670),
        .out_c0_exe3394871(bb_conv2d3x3_B12_out_c0_exe3394871),
        .out_c0_exe3494972(bb_conv2d3x3_B12_out_c0_exe3494972),
        .out_c0_exe3595073(bb_conv2d3x3_B12_out_c0_exe3595073),
        .out_c0_exe3695174(bb_conv2d3x3_B12_out_c0_exe3695174),
        .out_c0_exe3795275(bb_conv2d3x3_B12_out_c0_exe3795275),
        .out_c0_exe3895376(bb_conv2d3x3_B12_out_c0_exe3895376),
        .out_c0_exe391847(bb_conv2d3x3_B12_out_c0_exe391847),
        .out_c0_exe3995477(bb_conv2d3x3_B12_out_c0_exe3995477),
        .out_c0_exe4095578(bb_conv2d3x3_B12_out_c0_exe4095578),
        .out_c0_exe4195679(bb_conv2d3x3_B12_out_c0_exe4195679),
        .out_c0_exe4295780(bb_conv2d3x3_B12_out_c0_exe4295780),
        .out_c0_exe4395881(bb_conv2d3x3_B12_out_c0_exe4395881),
        .out_c0_exe4495982(bb_conv2d3x3_B12_out_c0_exe4495982),
        .out_c0_exe4596083(bb_conv2d3x3_B12_out_c0_exe4596083),
        .out_c0_exe4696184(bb_conv2d3x3_B12_out_c0_exe4696184),
        .out_c0_exe4796285(bb_conv2d3x3_B12_out_c0_exe4796285),
        .out_c0_exe4896386(bb_conv2d3x3_B12_out_c0_exe4896386),
        .out_c0_exe4996487(bb_conv2d3x3_B12_out_c0_exe4996487),
        .out_c0_exe5096588(bb_conv2d3x3_B12_out_c0_exe5096588),
        .out_c0_exe5196689(bb_conv2d3x3_B12_out_c0_exe5196689),
        .out_c0_exe592048(bb_conv2d3x3_B12_out_c0_exe592048),
        .out_c0_exe692149(bb_conv2d3x3_B12_out_c0_exe692149),
        .out_c0_exe892350(bb_conv2d3x3_B12_out_c0_exe892350),
        .out_c1_exe198390(bb_conv2d3x3_B12_out_c1_exe198390),
        .out_stall_out_0(bb_conv2d3x3_B12_out_stall_out_0),
        .out_valid_out_0(bb_conv2d3x3_B12_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B12_sr_0_aunroll_x(BLACKBOX,360)
    conv2d3x3_bb_B12_sr_0 thebb_conv2d3x3_B12_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B12_out_stall_out_0),
        .in_i_valid(bb_conv2d3x3_B11_out_valid_out_0),
        .in_i_data_0_tpl(bb_conv2d3x3_B11_out_c0_exe2917),
        .in_i_data_1_tpl(bb_conv2d3x3_B11_out_c0_exe3918),
        .in_i_data_2_tpl(bb_conv2d3x3_B11_out_c0_exe5920),
        .in_i_data_3_tpl(bb_conv2d3x3_B11_out_c0_exe6921),
        .in_i_data_4_tpl(bb_conv2d3x3_B11_out_c0_exe8923),
        .in_i_data_5_tpl(bb_conv2d3x3_B11_out_c0_exe10925),
        .in_i_data_6_tpl(bb_conv2d3x3_B11_out_c0_exe13928),
        .in_i_data_7_tpl(bb_conv2d3x3_B11_out_c0_exe14929),
        .in_i_data_8_tpl(bb_conv2d3x3_B11_out_c0_exe15930),
        .in_i_data_9_tpl(bb_conv2d3x3_B11_out_c0_exe16931),
        .in_i_data_10_tpl(bb_conv2d3x3_B11_out_c0_exe17932),
        .in_i_data_11_tpl(bb_conv2d3x3_B11_out_c0_exe18933),
        .in_i_data_12_tpl(bb_conv2d3x3_B11_out_c0_exe19934),
        .in_i_data_13_tpl(bb_conv2d3x3_B11_out_c0_exe20935),
        .in_i_data_14_tpl(bb_conv2d3x3_B11_out_c0_exe21936),
        .in_i_data_15_tpl(bb_conv2d3x3_B11_out_c0_exe22937),
        .in_i_data_16_tpl(bb_conv2d3x3_B11_out_c0_exe23938),
        .in_i_data_17_tpl(bb_conv2d3x3_B11_out_c0_exe24939),
        .in_i_data_18_tpl(bb_conv2d3x3_B11_out_c0_exe25940),
        .in_i_data_19_tpl(bb_conv2d3x3_B11_out_c0_exe26941),
        .in_i_data_20_tpl(bb_conv2d3x3_B11_out_c0_exe27942),
        .in_i_data_21_tpl(bb_conv2d3x3_B11_out_c0_exe28943),
        .in_i_data_22_tpl(bb_conv2d3x3_B11_out_c0_exe29944),
        .in_i_data_23_tpl(bb_conv2d3x3_B11_out_c0_exe30945),
        .in_i_data_24_tpl(bb_conv2d3x3_B11_out_c0_exe31946),
        .in_i_data_25_tpl(bb_conv2d3x3_B11_out_c0_exe33948),
        .in_i_data_26_tpl(bb_conv2d3x3_B11_out_c0_exe34949),
        .in_i_data_27_tpl(bb_conv2d3x3_B11_out_c0_exe35950),
        .in_i_data_28_tpl(bb_conv2d3x3_B11_out_c0_exe36951),
        .in_i_data_29_tpl(bb_conv2d3x3_B11_out_c0_exe37952),
        .in_i_data_30_tpl(bb_conv2d3x3_B11_out_c0_exe38953),
        .in_i_data_31_tpl(bb_conv2d3x3_B11_out_c0_exe39954),
        .in_i_data_32_tpl(bb_conv2d3x3_B11_out_c0_exe40955),
        .in_i_data_33_tpl(bb_conv2d3x3_B11_out_c0_exe41956),
        .in_i_data_34_tpl(bb_conv2d3x3_B11_out_c0_exe42957),
        .in_i_data_35_tpl(bb_conv2d3x3_B11_out_c0_exe43958),
        .in_i_data_36_tpl(bb_conv2d3x3_B11_out_c0_exe44959),
        .in_i_data_37_tpl(bb_conv2d3x3_B11_out_c0_exe45960),
        .in_i_data_38_tpl(bb_conv2d3x3_B11_out_c0_exe46961),
        .in_i_data_39_tpl(bb_conv2d3x3_B11_out_c0_exe47962),
        .in_i_data_40_tpl(bb_conv2d3x3_B11_out_c0_exe48963),
        .in_i_data_41_tpl(bb_conv2d3x3_B11_out_c0_exe49964),
        .in_i_data_42_tpl(bb_conv2d3x3_B11_out_c0_exe50965),
        .in_i_data_43_tpl(bb_conv2d3x3_B11_out_c0_exe51966),
        .in_i_data_44_tpl(bb_conv2d3x3_B11_out_c1_exe1983),
        .out_o_stall(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_21_tpl),
        .out_o_data_22_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_22_tpl),
        .out_o_data_23_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_23_tpl),
        .out_o_data_24_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_24_tpl),
        .out_o_data_25_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_25_tpl),
        .out_o_data_26_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_26_tpl),
        .out_o_data_27_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_27_tpl),
        .out_o_data_28_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_28_tpl),
        .out_o_data_29_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_29_tpl),
        .out_o_data_30_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_30_tpl),
        .out_o_data_31_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_31_tpl),
        .out_o_data_32_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_32_tpl),
        .out_o_data_33_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_33_tpl),
        .out_o_data_34_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_34_tpl),
        .out_o_data_35_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_35_tpl),
        .out_o_data_36_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_36_tpl),
        .out_o_data_37_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_37_tpl),
        .out_o_data_38_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_38_tpl),
        .out_o_data_39_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_39_tpl),
        .out_o_data_40_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_40_tpl),
        .out_o_data_41_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_41_tpl),
        .out_o_data_42_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_42_tpl),
        .out_o_data_43_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_43_tpl),
        .out_o_data_44_tpl(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_data_44_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going43_conv2d3x38_sr(BLACKBOX,229)
    conv2d3x3_i_llvm_fpga_pipeline_keep_going43_8_sr thei_llvm_fpga_pipeline_keep_going43_conv2d3x38_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going43_conv2d3x38_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv2d3x3_B11_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going43_conv2d3x38_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going43_conv2d3x38_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B11(BLACKBOX,5)
    conv2d3x3_bb_B11 thebb_conv2d3x3_B11 (
        .in_acl_6417_0(c_float_undef219_q),
        .in_acl_6417_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_30_tpl),
        .in_add111_pop49425_0(c_i32_079_q),
        .in_add111_pop49425_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_34_tpl),
        .in_add24407_0(c_i32_079_q),
        .in_add24407_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_25_tpl),
        .in_add244_0(c_i32_079_q),
        .in_add244_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_add35_1398_0(c_i32_079_q),
        .in_add35_1398_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_20_tpl),
        .in_cmp26121_pop51409_0(GND_q),
        .in_cmp26121_pop51409_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_26_tpl),
        .in_cmp26262_0(GND_q),
        .in_cmp26262_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_cmp26_1136_pop54431_0(GND_q),
        .in_cmp26_1136_pop54431_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_37_tpl),
        .in_cmp26_1289_0(GND_q),
        .in_cmp26_1289_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_cmp26_2151_pop57437_0(GND_q),
        .in_cmp26_2151_pop57437_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_40_tpl),
        .in_cmp26_2316_0(GND_q),
        .in_cmp26_2316_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_cmp27126_pop52411_0(GND_q),
        .in_cmp27126_pop52411_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_27_tpl),
        .in_cmp27271_0(GND_q),
        .in_cmp27271_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_cmp27_1141_pop55433_0(GND_q),
        .in_cmp27_1141_pop55433_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_38_tpl),
        .in_cmp27_1298_0(GND_q),
        .in_cmp27_1298_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_cmp27_2156_pop58439_0(GND_q),
        .in_cmp27_2156_pop58439_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_41_tpl),
        .in_cmp27_2325_0(GND_q),
        .in_cmp27_2325_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight_addr_067_replace_phi201_0(c_float_addrspace_1024_undef215_q),
        .in_filter_weight_addr_067_replace_phi201_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_filter_weight_addr_067_replace_phi85_pop19343_0(c_float_addrspace_1024_undef215_q),
        .in_filter_weight_addr_067_replace_phi85_pop19343_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_filter_weight_addr_067_replace_phi88_pop45415_0(c_float_addrspace_1024_undef215_q),
        .in_filter_weight_addr_067_replace_phi88_pop45415_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_29_tpl),
        .in_flush(in_start),
        .in_forked40_0(GND_q),
        .in_forked40_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_inc50184_pop68447_0(c_i32_079_q),
        .in_inc50184_pop68447_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_45_tpl),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_j_061_pop24176_pop63403_0(c_i32_079_q),
        .in_j_061_pop24176_pop63403_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_23_tpl),
        .in_lm13_conv2d3x3_avm_readdata(in_lm13_conv2d3x3_avm_readdata),
        .in_lm13_conv2d3x3_avm_readdatavalid(in_lm13_conv2d3x3_avm_readdatavalid),
        .in_lm13_conv2d3x3_avm_waitrequest(in_lm13_conv2d3x3_avm_waitrequest),
        .in_lm13_conv2d3x3_avm_writeack(in_lm13_conv2d3x3_avm_writeack),
        .in_lm15_conv2d3x3_avm_readdata(in_lm15_conv2d3x3_avm_readdata),
        .in_lm15_conv2d3x3_avm_readdatavalid(in_lm15_conv2d3x3_avm_readdatavalid),
        .in_lm15_conv2d3x3_avm_waitrequest(in_lm15_conv2d3x3_avm_waitrequest),
        .in_lm15_conv2d3x3_avm_writeack(in_lm15_conv2d3x3_avm_writeack),
        .in_lm25100_pop47421_0(c_float_undef219_q),
        .in_lm25100_pop47421_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_32_tpl),
        .in_lm25223_0(c_float_undef219_q),
        .in_lm25223_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_lm2597_pop21361_0(c_float_undef219_q),
        .in_lm2597_pop21361_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_mul32181_pop66445_0(c_i32_079_q),
        .in_mul32181_pop66445_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_44_tpl),
        .in_mul39_add4399_0(c_i32_079_q),
        .in_mul39_add4399_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_21_tpl),
        .in_mul56116_pop50427_0(c_i32_079_q),
        .in_mul56116_pop50427_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_35_tpl),
        .in_mul56253_0(c_i32_079_q),
        .in_mul56253_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_notcmp73172_pop62443_0(GND_q),
        .in_notcmp73172_pop62443_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_43_tpl),
        .in_notcmp77161_pop59441_0(GND_q),
        .in_notcmp77161_pop59441_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_42_tpl),
        .in_notcmp77334_0(GND_q),
        .in_notcmp77334_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_notcmp81103_pop22370_0(GND_q),
        .in_notcmp81103_pop22370_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_19_tpl),
        .in_notcmp81106_pop48423_0(GND_q),
        .in_notcmp81106_pop48423_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_33_tpl),
        .in_notcmp81234_0(GND_q),
        .in_notcmp81234_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_output_im_addr_068_replace_phi212_0(c_float_addrspace_1024_undef215_q),
        .in_output_im_addr_068_replace_phi212_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_output_im_addr_068_replace_phi91_pop20352_0(c_float_addrspace_1024_undef215_q),
        .in_output_im_addr_068_replace_phi91_pop20352_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_output_im_addr_068_replace_phi94_pop46419_0(c_float_addrspace_1024_undef215_q),
        .in_output_im_addr_068_replace_phi94_pop46419_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_31_tpl),
        .in_output_size(in_arg_output_size),
        .in_pad(in_arg_pad),
        .in_pad_sync_buffer168_pop61405_0(c_i32_079_q),
        .in_pad_sync_buffer168_pop61405_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_24_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going43_conv2d3x38_sr_out_o_stall),
        .in_pop65413_0(GND_q),
        .in_pop65413_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_28_tpl),
        .in_pop69449_0(GND_q),
        .in_pop69449_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_46_tpl),
        .in_stall_in_0(bb_conv2d3x3_B12_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_stride(in_arg_stride),
        .in_stride_sync_buffer164_pop60401_0(c_i32_079_q),
        .in_stride_sync_buffer164_pop60401_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_22_tpl),
        .in_sub_1131_pop53429_0(c_i32_079_q),
        .in_sub_1131_pop53429_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_36_tpl),
        .in_sub_1280_0(c_i32_079_q),
        .in_sub_1280_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_sub_2146_pop56435_0(c_i32_079_q),
        .in_sub_2146_pop56435_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_39_tpl),
        .in_sub_2307_0(c_i32_079_q),
        .in_sub_2307_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going43_conv2d3x38_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10925(bb_conv2d3x3_B11_out_c0_exe10925),
        .out_c0_exe13928(bb_conv2d3x3_B11_out_c0_exe13928),
        .out_c0_exe14929(bb_conv2d3x3_B11_out_c0_exe14929),
        .out_c0_exe15930(bb_conv2d3x3_B11_out_c0_exe15930),
        .out_c0_exe16931(bb_conv2d3x3_B11_out_c0_exe16931),
        .out_c0_exe17932(bb_conv2d3x3_B11_out_c0_exe17932),
        .out_c0_exe18933(bb_conv2d3x3_B11_out_c0_exe18933),
        .out_c0_exe19934(bb_conv2d3x3_B11_out_c0_exe19934),
        .out_c0_exe20935(bb_conv2d3x3_B11_out_c0_exe20935),
        .out_c0_exe21936(bb_conv2d3x3_B11_out_c0_exe21936),
        .out_c0_exe22937(bb_conv2d3x3_B11_out_c0_exe22937),
        .out_c0_exe23938(bb_conv2d3x3_B11_out_c0_exe23938),
        .out_c0_exe24939(bb_conv2d3x3_B11_out_c0_exe24939),
        .out_c0_exe25940(bb_conv2d3x3_B11_out_c0_exe25940),
        .out_c0_exe26941(bb_conv2d3x3_B11_out_c0_exe26941),
        .out_c0_exe27942(bb_conv2d3x3_B11_out_c0_exe27942),
        .out_c0_exe28943(bb_conv2d3x3_B11_out_c0_exe28943),
        .out_c0_exe2917(bb_conv2d3x3_B11_out_c0_exe2917),
        .out_c0_exe29944(bb_conv2d3x3_B11_out_c0_exe29944),
        .out_c0_exe30945(bb_conv2d3x3_B11_out_c0_exe30945),
        .out_c0_exe31946(bb_conv2d3x3_B11_out_c0_exe31946),
        .out_c0_exe33948(bb_conv2d3x3_B11_out_c0_exe33948),
        .out_c0_exe34949(bb_conv2d3x3_B11_out_c0_exe34949),
        .out_c0_exe35950(bb_conv2d3x3_B11_out_c0_exe35950),
        .out_c0_exe36951(bb_conv2d3x3_B11_out_c0_exe36951),
        .out_c0_exe37952(bb_conv2d3x3_B11_out_c0_exe37952),
        .out_c0_exe38953(bb_conv2d3x3_B11_out_c0_exe38953),
        .out_c0_exe3918(bb_conv2d3x3_B11_out_c0_exe3918),
        .out_c0_exe39954(bb_conv2d3x3_B11_out_c0_exe39954),
        .out_c0_exe40955(bb_conv2d3x3_B11_out_c0_exe40955),
        .out_c0_exe41956(bb_conv2d3x3_B11_out_c0_exe41956),
        .out_c0_exe42957(bb_conv2d3x3_B11_out_c0_exe42957),
        .out_c0_exe43958(bb_conv2d3x3_B11_out_c0_exe43958),
        .out_c0_exe44959(bb_conv2d3x3_B11_out_c0_exe44959),
        .out_c0_exe45960(bb_conv2d3x3_B11_out_c0_exe45960),
        .out_c0_exe46961(bb_conv2d3x3_B11_out_c0_exe46961),
        .out_c0_exe47962(bb_conv2d3x3_B11_out_c0_exe47962),
        .out_c0_exe48963(bb_conv2d3x3_B11_out_c0_exe48963),
        .out_c0_exe49964(bb_conv2d3x3_B11_out_c0_exe49964),
        .out_c0_exe50965(bb_conv2d3x3_B11_out_c0_exe50965),
        .out_c0_exe51966(bb_conv2d3x3_B11_out_c0_exe51966),
        .out_c0_exe5920(bb_conv2d3x3_B11_out_c0_exe5920),
        .out_c0_exe6921(bb_conv2d3x3_B11_out_c0_exe6921),
        .out_c0_exe8923(bb_conv2d3x3_B11_out_c0_exe8923),
        .out_c1_exe1983(bb_conv2d3x3_B11_out_c1_exe1983),
        .out_exiting_stall_out(bb_conv2d3x3_B11_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv2d3x3_B11_out_exiting_valid_out),
        .out_lm13_conv2d3x3_avm_address(bb_conv2d3x3_B11_out_lm13_conv2d3x3_avm_address),
        .out_lm13_conv2d3x3_avm_burstcount(bb_conv2d3x3_B11_out_lm13_conv2d3x3_avm_burstcount),
        .out_lm13_conv2d3x3_avm_byteenable(bb_conv2d3x3_B11_out_lm13_conv2d3x3_avm_byteenable),
        .out_lm13_conv2d3x3_avm_enable(bb_conv2d3x3_B11_out_lm13_conv2d3x3_avm_enable),
        .out_lm13_conv2d3x3_avm_read(bb_conv2d3x3_B11_out_lm13_conv2d3x3_avm_read),
        .out_lm13_conv2d3x3_avm_write(bb_conv2d3x3_B11_out_lm13_conv2d3x3_avm_write),
        .out_lm13_conv2d3x3_avm_writedata(bb_conv2d3x3_B11_out_lm13_conv2d3x3_avm_writedata),
        .out_lm15_conv2d3x3_avm_address(bb_conv2d3x3_B11_out_lm15_conv2d3x3_avm_address),
        .out_lm15_conv2d3x3_avm_burstcount(bb_conv2d3x3_B11_out_lm15_conv2d3x3_avm_burstcount),
        .out_lm15_conv2d3x3_avm_byteenable(bb_conv2d3x3_B11_out_lm15_conv2d3x3_avm_byteenable),
        .out_lm15_conv2d3x3_avm_enable(bb_conv2d3x3_B11_out_lm15_conv2d3x3_avm_enable),
        .out_lm15_conv2d3x3_avm_read(bb_conv2d3x3_B11_out_lm15_conv2d3x3_avm_read),
        .out_lm15_conv2d3x3_avm_write(bb_conv2d3x3_B11_out_lm15_conv2d3x3_avm_write),
        .out_lm15_conv2d3x3_avm_writedata(bb_conv2d3x3_B11_out_lm15_conv2d3x3_avm_writedata),
        .out_pipeline_valid_out(bb_conv2d3x3_B11_out_pipeline_valid_out),
        .out_stall_in_0(bb_conv2d3x3_B11_out_stall_in_0),
        .out_stall_out_0(bb_conv2d3x3_B11_out_stall_out_0),
        .out_stall_out_1(bb_conv2d3x3_B11_out_stall_out_1),
        .out_valid_in_0(bb_conv2d3x3_B11_out_valid_in_0),
        .out_valid_in_1(bb_conv2d3x3_B11_out_valid_in_1),
        .out_valid_out_0(bb_conv2d3x3_B11_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B11_sr_1_aunroll_x(BLACKBOX,359)
    conv2d3x3_bb_B11_sr_1 thebb_conv2d3x3_B11_sr_1_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B11_out_stall_out_1),
        .in_i_valid(loop_limiter_conv2d3x34_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_conv2d3x3_B9_out_c0_exe3376326),
        .in_i_data_2_tpl(bb_conv2d3x3_B9_out_c0_exe3476427),
        .in_i_data_3_tpl(bb_conv2d3x3_B9_out_c0_exe3576528),
        .in_i_data_4_tpl(bb_conv2d3x3_B9_out_c0_exe3676629),
        .in_i_data_5_tpl(bb_conv2d3x3_B9_out_c0_exe3776730),
        .in_i_data_6_tpl(bb_conv2d3x3_B9_out_c0_exe3876831),
        .in_i_data_7_tpl(bb_conv2d3x3_B9_out_c0_exe3976932),
        .in_i_data_8_tpl(bb_conv2d3x3_B9_out_c0_exe4033),
        .in_i_data_9_tpl(bb_conv2d3x3_B9_out_c0_exe4134),
        .in_i_data_10_tpl(bb_conv2d3x3_B9_out_c0_exe4235),
        .in_i_data_11_tpl(bb_conv2d3x3_B9_out_c0_exe4336),
        .in_i_data_12_tpl(bb_conv2d3x3_B9_out_c0_exe4437),
        .in_i_data_13_tpl(bb_conv2d3x3_B9_out_c0_exe4538),
        .in_i_data_14_tpl(bb_conv2d3x3_B9_out_c0_exe4639),
        .in_i_data_15_tpl(bb_conv2d3x3_B9_out_c0_exe4740),
        .in_i_data_16_tpl(bb_conv2d3x3_B9_out_c0_exe4841),
        .in_i_data_17_tpl(bb_conv2d3x3_B9_out_c0_exe4942),
        .in_i_data_18_tpl(bb_conv2d3x3_B9_out_c0_exe5043),
        .in_i_data_19_tpl(bb_conv2d3x3_B9_out_c0_exe5144),
        .in_i_data_20_tpl(bb_conv2d3x3_B9_out_c0_exe1649),
        .in_i_data_21_tpl(bb_conv2d3x3_B9_out_c0_exe27321),
        .in_i_data_22_tpl(bb_conv2d3x3_B9_out_c0_exe37332),
        .in_i_data_23_tpl(bb_conv2d3x3_B9_out_c0_exe47343),
        .in_i_data_24_tpl(bb_conv2d3x3_B9_out_c0_exe57354),
        .in_i_data_25_tpl(bb_conv2d3x3_B9_out_c0_exe67365),
        .in_i_data_26_tpl(bb_conv2d3x3_B9_out_c0_exe87386),
        .in_i_data_27_tpl(bb_conv2d3x3_B9_out_c0_exe97397),
        .in_i_data_28_tpl(bb_conv2d3x3_B9_out_c0_exe117418),
        .in_i_data_29_tpl(bb_conv2d3x3_B9_out_c0_exe137439),
        .in_i_data_30_tpl(bb_conv2d3x3_B9_out_c1_exe145),
        .in_i_data_31_tpl(bb_conv2d3x3_B9_out_c0_exe1674610),
        .in_i_data_32_tpl(bb_conv2d3x3_B9_out_c0_exe1774711),
        .in_i_data_33_tpl(bb_conv2d3x3_B9_out_c0_exe1874812),
        .in_i_data_34_tpl(bb_conv2d3x3_B9_out_c0_exe1974913),
        .in_i_data_35_tpl(bb_conv2d3x3_B9_out_c0_exe2075014),
        .in_i_data_36_tpl(bb_conv2d3x3_B9_out_c0_exe2175115),
        .in_i_data_37_tpl(bb_conv2d3x3_B9_out_c0_exe2275216),
        .in_i_data_38_tpl(bb_conv2d3x3_B9_out_c0_exe2375317),
        .in_i_data_39_tpl(bb_conv2d3x3_B9_out_c0_exe2475418),
        .in_i_data_40_tpl(bb_conv2d3x3_B9_out_c0_exe2575519),
        .in_i_data_41_tpl(bb_conv2d3x3_B9_out_c0_exe2675620),
        .in_i_data_42_tpl(bb_conv2d3x3_B9_out_c0_exe2775721),
        .in_i_data_43_tpl(bb_conv2d3x3_B9_out_c0_exe2875822),
        .in_i_data_44_tpl(bb_conv2d3x3_B9_out_c0_exe2975923),
        .in_i_data_45_tpl(bb_conv2d3x3_B9_out_c0_exe3076024),
        .in_i_data_46_tpl(bb_conv2d3x3_B9_out_c0_exe3176125),
        .out_o_stall(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_21_tpl),
        .out_o_data_22_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_22_tpl),
        .out_o_data_23_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_23_tpl),
        .out_o_data_24_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_24_tpl),
        .out_o_data_25_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_25_tpl),
        .out_o_data_26_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_26_tpl),
        .out_o_data_27_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_27_tpl),
        .out_o_data_28_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_28_tpl),
        .out_o_data_29_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_29_tpl),
        .out_o_data_30_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_30_tpl),
        .out_o_data_31_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_31_tpl),
        .out_o_data_32_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_32_tpl),
        .out_o_data_33_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_33_tpl),
        .out_o_data_34_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_34_tpl),
        .out_o_data_35_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_35_tpl),
        .out_o_data_36_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_36_tpl),
        .out_o_data_37_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_37_tpl),
        .out_o_data_38_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_38_tpl),
        .out_o_data_39_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_39_tpl),
        .out_o_data_40_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_40_tpl),
        .out_o_data_41_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_41_tpl),
        .out_o_data_42_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_42_tpl),
        .out_o_data_43_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_43_tpl),
        .out_o_data_44_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_44_tpl),
        .out_o_data_45_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_45_tpl),
        .out_o_data_46_tpl(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_data_46_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv2d3x34(BLACKBOX,297)
    conv2d3x3_loop_limiter_4 theloop_limiter_conv2d3x34 (
        .in_i_stall(bb_conv2d3x3_B11_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2d3x3_B11_out_exiting_stall_out),
        .in_i_valid(bb_conv2d3x3_B9_out_valid_out_0),
        .in_i_valid_exit(bb_conv2d3x3_B11_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv2d3x34_out_o_stall),
        .out_o_valid(loop_limiter_conv2d3x34_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B9(BLACKBOX,16)
    conv2d3x3_bb_B9 thebb_conv2d3x3_B9 (
        .in_c0_exe117418_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe137439_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe1674610_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe1774711_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe1874812_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe1974913_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_12_tpl),
        .in_c0_exe2075014_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_13_tpl),
        .in_c0_exe2175115_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_14_tpl),
        .in_c0_exe2275216_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_15_tpl),
        .in_c0_exe2375317_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_16_tpl),
        .in_c0_exe2475418_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_17_tpl),
        .in_c0_exe2575519_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_18_tpl),
        .in_c0_exe2675620_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_19_tpl),
        .in_c0_exe27321_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe2775721_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_20_tpl),
        .in_c0_exe2875822_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_21_tpl),
        .in_c0_exe2975923_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_22_tpl),
        .in_c0_exe3076024_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_23_tpl),
        .in_c0_exe3176125_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_24_tpl),
        .in_c0_exe3376326_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_25_tpl),
        .in_c0_exe3476427_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_26_tpl),
        .in_c0_exe3576528_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_27_tpl),
        .in_c0_exe3676629_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_28_tpl),
        .in_c0_exe37332_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe3776730_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_29_tpl),
        .in_c0_exe3876831_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_30_tpl),
        .in_c0_exe3976932_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_31_tpl),
        .in_c0_exe4033_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_32_tpl),
        .in_c0_exe4134_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_33_tpl),
        .in_c0_exe4235_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_34_tpl),
        .in_c0_exe4336_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_35_tpl),
        .in_c0_exe4437_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_36_tpl),
        .in_c0_exe4538_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_37_tpl),
        .in_c0_exe4639_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_38_tpl),
        .in_c0_exe47343_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe4740_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_39_tpl),
        .in_c0_exe4841_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_40_tpl),
        .in_c0_exe4942_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_41_tpl),
        .in_c0_exe5043_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_42_tpl),
        .in_c0_exe5144_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_43_tpl),
        .in_c0_exe57354_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe67365_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe87386_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe97397_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c1_exe145_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_44_tpl),
        .in_filter_bias(in_arg_filter_bias),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_output_size(in_arg_output_size),
        .in_pad(in_arg_pad),
        .in_stall_in_0(loop_limiter_conv2d3x34_out_o_stall),
        .in_stride(in_arg_stride),
        .in_valid_in_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe117418(bb_conv2d3x3_B9_out_c0_exe117418),
        .out_c0_exe137439(bb_conv2d3x3_B9_out_c0_exe137439),
        .out_c0_exe1649(bb_conv2d3x3_B9_out_c0_exe1649),
        .out_c0_exe1674610(bb_conv2d3x3_B9_out_c0_exe1674610),
        .out_c0_exe1774711(bb_conv2d3x3_B9_out_c0_exe1774711),
        .out_c0_exe1874812(bb_conv2d3x3_B9_out_c0_exe1874812),
        .out_c0_exe1974913(bb_conv2d3x3_B9_out_c0_exe1974913),
        .out_c0_exe2075014(bb_conv2d3x3_B9_out_c0_exe2075014),
        .out_c0_exe2175115(bb_conv2d3x3_B9_out_c0_exe2175115),
        .out_c0_exe2275216(bb_conv2d3x3_B9_out_c0_exe2275216),
        .out_c0_exe2375317(bb_conv2d3x3_B9_out_c0_exe2375317),
        .out_c0_exe2475418(bb_conv2d3x3_B9_out_c0_exe2475418),
        .out_c0_exe2575519(bb_conv2d3x3_B9_out_c0_exe2575519),
        .out_c0_exe2675620(bb_conv2d3x3_B9_out_c0_exe2675620),
        .out_c0_exe27321(bb_conv2d3x3_B9_out_c0_exe27321),
        .out_c0_exe2775721(bb_conv2d3x3_B9_out_c0_exe2775721),
        .out_c0_exe2875822(bb_conv2d3x3_B9_out_c0_exe2875822),
        .out_c0_exe2975923(bb_conv2d3x3_B9_out_c0_exe2975923),
        .out_c0_exe3076024(bb_conv2d3x3_B9_out_c0_exe3076024),
        .out_c0_exe3176125(bb_conv2d3x3_B9_out_c0_exe3176125),
        .out_c0_exe3376326(bb_conv2d3x3_B9_out_c0_exe3376326),
        .out_c0_exe3476427(bb_conv2d3x3_B9_out_c0_exe3476427),
        .out_c0_exe3576528(bb_conv2d3x3_B9_out_c0_exe3576528),
        .out_c0_exe3676629(bb_conv2d3x3_B9_out_c0_exe3676629),
        .out_c0_exe37332(bb_conv2d3x3_B9_out_c0_exe37332),
        .out_c0_exe3776730(bb_conv2d3x3_B9_out_c0_exe3776730),
        .out_c0_exe3876831(bb_conv2d3x3_B9_out_c0_exe3876831),
        .out_c0_exe3976932(bb_conv2d3x3_B9_out_c0_exe3976932),
        .out_c0_exe4033(bb_conv2d3x3_B9_out_c0_exe4033),
        .out_c0_exe4134(bb_conv2d3x3_B9_out_c0_exe4134),
        .out_c0_exe4235(bb_conv2d3x3_B9_out_c0_exe4235),
        .out_c0_exe4336(bb_conv2d3x3_B9_out_c0_exe4336),
        .out_c0_exe4437(bb_conv2d3x3_B9_out_c0_exe4437),
        .out_c0_exe4538(bb_conv2d3x3_B9_out_c0_exe4538),
        .out_c0_exe4639(bb_conv2d3x3_B9_out_c0_exe4639),
        .out_c0_exe47343(bb_conv2d3x3_B9_out_c0_exe47343),
        .out_c0_exe4740(bb_conv2d3x3_B9_out_c0_exe4740),
        .out_c0_exe4841(bb_conv2d3x3_B9_out_c0_exe4841),
        .out_c0_exe4942(bb_conv2d3x3_B9_out_c0_exe4942),
        .out_c0_exe5043(bb_conv2d3x3_B9_out_c0_exe5043),
        .out_c0_exe5144(bb_conv2d3x3_B9_out_c0_exe5144),
        .out_c0_exe57354(bb_conv2d3x3_B9_out_c0_exe57354),
        .out_c0_exe67365(bb_conv2d3x3_B9_out_c0_exe67365),
        .out_c0_exe87386(bb_conv2d3x3_B9_out_c0_exe87386),
        .out_c0_exe97397(bb_conv2d3x3_B9_out_c0_exe97397),
        .out_c1_exe145(bb_conv2d3x3_B9_out_c1_exe145),
        .out_stall_out_0(bb_conv2d3x3_B9_out_stall_out_0),
        .out_valid_out_0(bb_conv2d3x3_B9_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B9_sr_0_aunroll_x(BLACKBOX,372)
    conv2d3x3_bb_B9_sr_0 thebb_conv2d3x3_B9_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B9_out_stall_out_0),
        .in_i_valid(bb_conv2d3x3_B10_out_valid_out_0),
        .in_i_data_0_tpl(bb_conv2d3x3_B10_out_c0_exe2732),
        .in_i_data_1_tpl(bb_conv2d3x3_B10_out_c0_exe3733),
        .in_i_data_2_tpl(bb_conv2d3x3_B10_out_c0_exe4734),
        .in_i_data_3_tpl(bb_conv2d3x3_B10_out_c0_exe5735),
        .in_i_data_4_tpl(bb_conv2d3x3_B10_out_c0_exe6736),
        .in_i_data_5_tpl(bb_conv2d3x3_B10_out_c0_exe8738),
        .in_i_data_6_tpl(bb_conv2d3x3_B10_out_c0_exe9739),
        .in_i_data_7_tpl(bb_conv2d3x3_B10_out_c0_exe11741),
        .in_i_data_8_tpl(bb_conv2d3x3_B10_out_c0_exe13743),
        .in_i_data_9_tpl(bb_conv2d3x3_B10_out_c0_exe16746),
        .in_i_data_10_tpl(bb_conv2d3x3_B10_out_c0_exe17747),
        .in_i_data_11_tpl(bb_conv2d3x3_B10_out_c0_exe18748),
        .in_i_data_12_tpl(bb_conv2d3x3_B10_out_c0_exe19749),
        .in_i_data_13_tpl(bb_conv2d3x3_B10_out_c0_exe20750),
        .in_i_data_14_tpl(bb_conv2d3x3_B10_out_c0_exe21751),
        .in_i_data_15_tpl(bb_conv2d3x3_B10_out_c0_exe22752),
        .in_i_data_16_tpl(bb_conv2d3x3_B10_out_c0_exe23753),
        .in_i_data_17_tpl(bb_conv2d3x3_B10_out_c0_exe24754),
        .in_i_data_18_tpl(bb_conv2d3x3_B10_out_c0_exe25755),
        .in_i_data_19_tpl(bb_conv2d3x3_B10_out_c0_exe26756),
        .in_i_data_20_tpl(bb_conv2d3x3_B10_out_c0_exe27757),
        .in_i_data_21_tpl(bb_conv2d3x3_B10_out_c0_exe28758),
        .in_i_data_22_tpl(bb_conv2d3x3_B10_out_c0_exe29759),
        .in_i_data_23_tpl(bb_conv2d3x3_B10_out_c0_exe30760),
        .in_i_data_24_tpl(bb_conv2d3x3_B10_out_c0_exe31761),
        .in_i_data_25_tpl(bb_conv2d3x3_B10_out_c0_exe33763),
        .in_i_data_26_tpl(bb_conv2d3x3_B10_out_c0_exe34764),
        .in_i_data_27_tpl(bb_conv2d3x3_B10_out_c0_exe35765),
        .in_i_data_28_tpl(bb_conv2d3x3_B10_out_c0_exe36766),
        .in_i_data_29_tpl(bb_conv2d3x3_B10_out_c0_exe37767),
        .in_i_data_30_tpl(bb_conv2d3x3_B10_out_c0_exe38768),
        .in_i_data_31_tpl(bb_conv2d3x3_B10_out_c0_exe39769),
        .in_i_data_32_tpl(bb_conv2d3x3_B10_out_c0_exe40),
        .in_i_data_33_tpl(bb_conv2d3x3_B10_out_c0_exe41),
        .in_i_data_34_tpl(bb_conv2d3x3_B10_out_c0_exe42),
        .in_i_data_35_tpl(bb_conv2d3x3_B10_out_c0_exe43),
        .in_i_data_36_tpl(bb_conv2d3x3_B10_out_c0_exe44),
        .in_i_data_37_tpl(bb_conv2d3x3_B10_out_c0_exe45),
        .in_i_data_38_tpl(bb_conv2d3x3_B10_out_c0_exe46),
        .in_i_data_39_tpl(bb_conv2d3x3_B10_out_c0_exe47),
        .in_i_data_40_tpl(bb_conv2d3x3_B10_out_c0_exe48),
        .in_i_data_41_tpl(bb_conv2d3x3_B10_out_c0_exe49),
        .in_i_data_42_tpl(bb_conv2d3x3_B10_out_c0_exe50),
        .in_i_data_43_tpl(bb_conv2d3x3_B10_out_c0_exe51),
        .in_i_data_44_tpl(bb_conv2d3x3_B10_out_c1_exe1),
        .out_o_stall(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_21_tpl),
        .out_o_data_22_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_22_tpl),
        .out_o_data_23_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_23_tpl),
        .out_o_data_24_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_24_tpl),
        .out_o_data_25_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_25_tpl),
        .out_o_data_26_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_26_tpl),
        .out_o_data_27_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_27_tpl),
        .out_o_data_28_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_28_tpl),
        .out_o_data_29_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_29_tpl),
        .out_o_data_30_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_30_tpl),
        .out_o_data_31_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_31_tpl),
        .out_o_data_32_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_32_tpl),
        .out_o_data_33_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_33_tpl),
        .out_o_data_34_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_34_tpl),
        .out_o_data_35_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_35_tpl),
        .out_o_data_36_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_36_tpl),
        .out_o_data_37_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_37_tpl),
        .out_o_data_38_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_38_tpl),
        .out_o_data_39_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_39_tpl),
        .out_o_data_40_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_40_tpl),
        .out_o_data_41_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_41_tpl),
        .out_o_data_42_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_42_tpl),
        .out_o_data_43_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_43_tpl),
        .out_o_data_44_tpl(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_44_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going60_conv2d3x38_sr(BLACKBOX,231)
    conv2d3x3_i_llvm_fpga_pipeline_keep_going60_8_sr thei_llvm_fpga_pipeline_keep_going60_conv2d3x38_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going60_conv2d3x38_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv2d3x3_B10_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going60_conv2d3x38_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going60_conv2d3x38_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_float_undef219(FLOATCONSTANT,41)
    assign c_float_undef219_q = $unsigned(32'b00000000000000000000000000000000);

    // c_float_addrspace_1024_undef215(CONSTANT,17)
    assign c_float_addrspace_1024_undef215_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bb_conv2d3x3_B10_sr_1_aunroll_x(BLACKBOX,358)
    conv2d3x3_bb_B10_sr_1 thebb_conv2d3x3_B10_sr_1_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B10_out_stall_out_1),
        .in_i_valid(loop_limiter_conv2d3x33_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_conv2d3x3_B7_out_filter_weight_addr_067_replace_phi204),
        .in_i_data_2_tpl(bb_conv2d3x3_B7_out_output_im_addr_068_replace_phi215),
        .in_i_data_3_tpl(bb_conv2d3x3_B7_out_lm25226),
        .in_i_data_4_tpl(bb_conv2d3x3_B7_out_notcmp81237),
        .in_i_data_5_tpl(bb_conv2d3x3_B7_out_add247),
        .in_i_data_6_tpl(bb_conv2d3x3_B7_out_mul56256),
        .in_i_data_7_tpl(bb_conv2d3x3_B7_out_cmp26265),
        .in_i_data_8_tpl(bb_conv2d3x3_B7_out_cmp27274),
        .in_i_data_9_tpl(bb_conv2d3x3_B7_out_sub_1283),
        .in_i_data_10_tpl(bb_conv2d3x3_B7_out_cmp26_1292),
        .in_i_data_11_tpl(bb_conv2d3x3_B7_out_cmp27_1301),
        .in_i_data_12_tpl(bb_conv2d3x3_B7_out_sub_2310),
        .in_i_data_13_tpl(bb_conv2d3x3_B7_out_cmp26_2319),
        .in_i_data_14_tpl(bb_conv2d3x3_B7_out_cmp27_2328),
        .in_i_data_15_tpl(bb_conv2d3x3_B7_out_notcmp77337),
        .in_i_data_16_tpl(bb_conv2d3x3_B7_out_filter_weight_addr_067_replace_phi85_pop19346),
        .in_i_data_17_tpl(bb_conv2d3x3_B7_out_output_im_addr_068_replace_phi91_pop20355),
        .in_i_data_18_tpl(bb_conv2d3x3_B7_out_lm2597_pop21364),
        .in_i_data_19_tpl(bb_conv2d3x3_B7_out_notcmp81103_pop22373),
        .in_i_data_20_tpl(bb_conv2d3x3_B7_out_k_059),
        .in_i_data_21_tpl(bb_conv2d3x3_B7_out_tmp_058),
        .in_i_data_22_tpl(bb_conv2d3x3_B7_out_filter_weight_addr_067_replace_phi87),
        .in_i_data_23_tpl(bb_conv2d3x3_B7_out_output_im_addr_068_replace_phi93),
        .in_i_data_24_tpl(bb_conv2d3x3_B7_out_lm2599),
        .in_i_data_25_tpl(bb_conv2d3x3_B7_out_notcmp81105),
        .in_i_data_26_tpl(bb_conv2d3x3_B7_out_add110),
        .in_i_data_27_tpl(bb_conv2d3x3_B7_out_mul56115),
        .in_i_data_28_tpl(bb_conv2d3x3_B7_out_cmp26120),
        .in_i_data_29_tpl(bb_conv2d3x3_B7_out_cmp27125),
        .in_i_data_30_tpl(bb_conv2d3x3_B7_out_sub_1130),
        .in_i_data_31_tpl(bb_conv2d3x3_B7_out_cmp26_1135),
        .in_i_data_32_tpl(bb_conv2d3x3_B7_out_cmp27_1140),
        .in_i_data_33_tpl(bb_conv2d3x3_B7_out_sub_2145),
        .in_i_data_34_tpl(bb_conv2d3x3_B7_out_cmp26_2150),
        .in_i_data_35_tpl(bb_conv2d3x3_B7_out_cmp27_2155),
        .in_i_data_36_tpl(bb_conv2d3x3_B7_out_notcmp77160),
        .in_i_data_37_tpl(bb_conv2d3x3_B7_out_stride_sync_buffer167),
        .in_i_data_38_tpl(bb_conv2d3x3_B7_out_pad_sync_buffer171),
        .in_i_data_39_tpl(bb_conv2d3x3_B7_out_notcmp73175),
        .in_i_data_40_tpl(bb_conv2d3x3_B7_out_j_061_pop24179),
        .in_i_data_41_tpl(bb_conv2d3x3_B7_out_c0_exe1627),
        .in_i_data_42_tpl(bb_conv2d3x3_B7_out_c0_exe2628),
        .in_i_data_43_tpl(bb_conv2d3x3_B7_out_c0_exe3629),
        .in_i_data_44_tpl(bb_conv2d3x3_B7_out_c0_exe4630),
        .in_i_data_45_tpl(bb_conv2d3x3_B7_out_c0_exe5631),
        .out_o_stall(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_21_tpl),
        .out_o_data_22_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_22_tpl),
        .out_o_data_23_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_23_tpl),
        .out_o_data_24_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_24_tpl),
        .out_o_data_25_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_25_tpl),
        .out_o_data_26_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_26_tpl),
        .out_o_data_27_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_27_tpl),
        .out_o_data_28_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_28_tpl),
        .out_o_data_29_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_29_tpl),
        .out_o_data_30_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_30_tpl),
        .out_o_data_31_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_31_tpl),
        .out_o_data_32_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_32_tpl),
        .out_o_data_33_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_33_tpl),
        .out_o_data_34_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_34_tpl),
        .out_o_data_35_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_35_tpl),
        .out_o_data_36_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_36_tpl),
        .out_o_data_37_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_37_tpl),
        .out_o_data_38_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_38_tpl),
        .out_o_data_39_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_39_tpl),
        .out_o_data_40_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_40_tpl),
        .out_o_data_41_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_41_tpl),
        .out_o_data_42_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_42_tpl),
        .out_o_data_43_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_43_tpl),
        .out_o_data_44_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_44_tpl),
        .out_o_data_45_tpl(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_45_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_079(CONSTANT,171)
    assign c_i32_079_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_conv2d3x3_B10(BLACKBOX,4)
    conv2d3x3_bb_B10 thebb_conv2d3x3_B10 (
        .in_add110380_0(c_i32_079_q),
        .in_add110380_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_26_tpl),
        .in_add246_0(c_i32_079_q),
        .in_add246_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_add35396_0(c_i32_079_q),
        .in_add35396_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_43_tpl),
        .in_cmp26120382_0(GND_q),
        .in_cmp26120382_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_28_tpl),
        .in_cmp26264_0(GND_q),
        .in_cmp26264_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_cmp26_1135385_0(GND_q),
        .in_cmp26_1135385_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_31_tpl),
        .in_cmp26_1291_0(GND_q),
        .in_cmp26_1291_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_cmp26_2150388_0(GND_q),
        .in_cmp26_2150388_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_34_tpl),
        .in_cmp26_2318_0(GND_q),
        .in_cmp26_2318_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_cmp27125383_0(GND_q),
        .in_cmp27125383_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_29_tpl),
        .in_cmp27273_0(GND_q),
        .in_cmp27273_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_cmp27_1140386_0(GND_q),
        .in_cmp27_1140386_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_32_tpl),
        .in_cmp27_1300_0(GND_q),
        .in_cmp27_1300_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_cmp27_2155389_0(GND_q),
        .in_cmp27_2155389_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_35_tpl),
        .in_cmp27_2327_0(GND_q),
        .in_cmp27_2327_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight_addr_067_replace_phi203_0(c_float_addrspace_1024_undef215_q),
        .in_filter_weight_addr_067_replace_phi203_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_filter_weight_addr_067_replace_phi85_pop19345_0(c_float_addrspace_1024_undef215_q),
        .in_filter_weight_addr_067_replace_phi85_pop19345_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_filter_weight_addr_067_replace_phi87376_0(c_float_addrspace_1024_undef215_q),
        .in_filter_weight_addr_067_replace_phi87376_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_22_tpl),
        .in_flush(in_start),
        .in_forked57_0(GND_q),
        .in_forked57_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_inc50397_0(c_i32_079_q),
        .in_inc50397_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_44_tpl),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_j_061_pop24179394_0(c_i32_079_q),
        .in_j_061_pop24179394_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_40_tpl),
        .in_k_059374_0(c_i32_079_q),
        .in_k_059374_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_20_tpl),
        .in_lm25225_0(c_float_undef219_q),
        .in_lm25225_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_lm2597_pop21363_0(c_float_undef219_q),
        .in_lm2597_pop21363_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_lm2599378_0(c_float_undef219_q),
        .in_lm2599378_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_24_tpl),
        .in_lm8_conv2d3x3_avm_readdata(in_lm8_conv2d3x3_avm_readdata),
        .in_lm8_conv2d3x3_avm_readdatavalid(in_lm8_conv2d3x3_avm_readdatavalid),
        .in_lm8_conv2d3x3_avm_waitrequest(in_lm8_conv2d3x3_avm_waitrequest),
        .in_lm8_conv2d3x3_avm_writeack(in_lm8_conv2d3x3_avm_writeack),
        .in_lm_conv2d3x3_avm_readdata(in_lm_conv2d3x3_avm_readdata),
        .in_lm_conv2d3x3_avm_readdatavalid(in_lm_conv2d3x3_avm_readdatavalid),
        .in_lm_conv2d3x3_avm_waitrequest(in_lm_conv2d3x3_avm_waitrequest),
        .in_lm_conv2d3x3_avm_writeack(in_lm_conv2d3x3_avm_writeack),
        .in_mul32395_0(c_i32_079_q),
        .in_mul32395_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_42_tpl),
        .in_mul56115381_0(c_i32_079_q),
        .in_mul56115381_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_27_tpl),
        .in_mul56255_0(c_i32_079_q),
        .in_mul56255_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_notcmp73175393_0(GND_q),
        .in_notcmp73175393_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_39_tpl),
        .in_notcmp77160390_0(GND_q),
        .in_notcmp77160390_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_36_tpl),
        .in_notcmp77336_0(GND_q),
        .in_notcmp77336_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_notcmp81103_pop22372_0(GND_q),
        .in_notcmp81103_pop22372_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_19_tpl),
        .in_notcmp81105379_0(GND_q),
        .in_notcmp81105379_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_25_tpl),
        .in_notcmp81236_0(GND_q),
        .in_notcmp81236_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_output_im_addr_068_replace_phi214_0(c_float_addrspace_1024_undef215_q),
        .in_output_im_addr_068_replace_phi214_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_output_im_addr_068_replace_phi91_pop20354_0(c_float_addrspace_1024_undef215_q),
        .in_output_im_addr_068_replace_phi91_pop20354_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_output_im_addr_068_replace_phi93377_0(c_float_addrspace_1024_undef215_q),
        .in_output_im_addr_068_replace_phi93377_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_23_tpl),
        .in_output_size(in_arg_output_size),
        .in_pad(in_arg_pad),
        .in_pad_sync_buffer171392_0(c_i32_079_q),
        .in_pad_sync_buffer171392_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_38_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going60_conv2d3x38_sr_out_o_stall),
        .in_stall_in_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_stride(in_arg_stride),
        .in_stride_sync_buffer167391_0(c_i32_079_q),
        .in_stride_sync_buffer167391_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_37_tpl),
        .in_sub_1130384_0(c_i32_079_q),
        .in_sub_1130384_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_30_tpl),
        .in_sub_1282_0(c_i32_079_q),
        .in_sub_1282_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_sub_2145387_0(c_i32_079_q),
        .in_sub_2145387_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_33_tpl),
        .in_sub_2309_0(c_i32_079_q),
        .in_sub_2309_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_tmp_058375_0(c_float_undef219_q),
        .in_tmp_058375_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_21_tpl),
        .in_unnamed_conv2d3x320_0(GND_q),
        .in_unnamed_conv2d3x320_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_41_tpl),
        .in_unnamed_conv2d3x321_0(GND_q),
        .in_unnamed_conv2d3x321_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_data_45_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going60_conv2d3x38_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe11741(bb_conv2d3x3_B10_out_c0_exe11741),
        .out_c0_exe13743(bb_conv2d3x3_B10_out_c0_exe13743),
        .out_c0_exe16746(bb_conv2d3x3_B10_out_c0_exe16746),
        .out_c0_exe17747(bb_conv2d3x3_B10_out_c0_exe17747),
        .out_c0_exe18748(bb_conv2d3x3_B10_out_c0_exe18748),
        .out_c0_exe19749(bb_conv2d3x3_B10_out_c0_exe19749),
        .out_c0_exe20750(bb_conv2d3x3_B10_out_c0_exe20750),
        .out_c0_exe21751(bb_conv2d3x3_B10_out_c0_exe21751),
        .out_c0_exe22752(bb_conv2d3x3_B10_out_c0_exe22752),
        .out_c0_exe23753(bb_conv2d3x3_B10_out_c0_exe23753),
        .out_c0_exe24754(bb_conv2d3x3_B10_out_c0_exe24754),
        .out_c0_exe25755(bb_conv2d3x3_B10_out_c0_exe25755),
        .out_c0_exe26756(bb_conv2d3x3_B10_out_c0_exe26756),
        .out_c0_exe2732(bb_conv2d3x3_B10_out_c0_exe2732),
        .out_c0_exe27757(bb_conv2d3x3_B10_out_c0_exe27757),
        .out_c0_exe28758(bb_conv2d3x3_B10_out_c0_exe28758),
        .out_c0_exe29759(bb_conv2d3x3_B10_out_c0_exe29759),
        .out_c0_exe30760(bb_conv2d3x3_B10_out_c0_exe30760),
        .out_c0_exe31761(bb_conv2d3x3_B10_out_c0_exe31761),
        .out_c0_exe33763(bb_conv2d3x3_B10_out_c0_exe33763),
        .out_c0_exe34764(bb_conv2d3x3_B10_out_c0_exe34764),
        .out_c0_exe35765(bb_conv2d3x3_B10_out_c0_exe35765),
        .out_c0_exe36766(bb_conv2d3x3_B10_out_c0_exe36766),
        .out_c0_exe3733(bb_conv2d3x3_B10_out_c0_exe3733),
        .out_c0_exe37767(bb_conv2d3x3_B10_out_c0_exe37767),
        .out_c0_exe38768(bb_conv2d3x3_B10_out_c0_exe38768),
        .out_c0_exe39769(bb_conv2d3x3_B10_out_c0_exe39769),
        .out_c0_exe40(bb_conv2d3x3_B10_out_c0_exe40),
        .out_c0_exe41(bb_conv2d3x3_B10_out_c0_exe41),
        .out_c0_exe42(bb_conv2d3x3_B10_out_c0_exe42),
        .out_c0_exe43(bb_conv2d3x3_B10_out_c0_exe43),
        .out_c0_exe44(bb_conv2d3x3_B10_out_c0_exe44),
        .out_c0_exe45(bb_conv2d3x3_B10_out_c0_exe45),
        .out_c0_exe46(bb_conv2d3x3_B10_out_c0_exe46),
        .out_c0_exe47(bb_conv2d3x3_B10_out_c0_exe47),
        .out_c0_exe4734(bb_conv2d3x3_B10_out_c0_exe4734),
        .out_c0_exe48(bb_conv2d3x3_B10_out_c0_exe48),
        .out_c0_exe49(bb_conv2d3x3_B10_out_c0_exe49),
        .out_c0_exe50(bb_conv2d3x3_B10_out_c0_exe50),
        .out_c0_exe51(bb_conv2d3x3_B10_out_c0_exe51),
        .out_c0_exe5735(bb_conv2d3x3_B10_out_c0_exe5735),
        .out_c0_exe6736(bb_conv2d3x3_B10_out_c0_exe6736),
        .out_c0_exe8738(bb_conv2d3x3_B10_out_c0_exe8738),
        .out_c0_exe9739(bb_conv2d3x3_B10_out_c0_exe9739),
        .out_c1_exe1(bb_conv2d3x3_B10_out_c1_exe1),
        .out_exiting_stall_out(bb_conv2d3x3_B10_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv2d3x3_B10_out_exiting_valid_out),
        .out_lm8_conv2d3x3_avm_address(bb_conv2d3x3_B10_out_lm8_conv2d3x3_avm_address),
        .out_lm8_conv2d3x3_avm_burstcount(bb_conv2d3x3_B10_out_lm8_conv2d3x3_avm_burstcount),
        .out_lm8_conv2d3x3_avm_byteenable(bb_conv2d3x3_B10_out_lm8_conv2d3x3_avm_byteenable),
        .out_lm8_conv2d3x3_avm_enable(bb_conv2d3x3_B10_out_lm8_conv2d3x3_avm_enable),
        .out_lm8_conv2d3x3_avm_read(bb_conv2d3x3_B10_out_lm8_conv2d3x3_avm_read),
        .out_lm8_conv2d3x3_avm_write(bb_conv2d3x3_B10_out_lm8_conv2d3x3_avm_write),
        .out_lm8_conv2d3x3_avm_writedata(bb_conv2d3x3_B10_out_lm8_conv2d3x3_avm_writedata),
        .out_lm_conv2d3x3_avm_address(bb_conv2d3x3_B10_out_lm_conv2d3x3_avm_address),
        .out_lm_conv2d3x3_avm_burstcount(bb_conv2d3x3_B10_out_lm_conv2d3x3_avm_burstcount),
        .out_lm_conv2d3x3_avm_byteenable(bb_conv2d3x3_B10_out_lm_conv2d3x3_avm_byteenable),
        .out_lm_conv2d3x3_avm_enable(bb_conv2d3x3_B10_out_lm_conv2d3x3_avm_enable),
        .out_lm_conv2d3x3_avm_read(bb_conv2d3x3_B10_out_lm_conv2d3x3_avm_read),
        .out_lm_conv2d3x3_avm_write(bb_conv2d3x3_B10_out_lm_conv2d3x3_avm_write),
        .out_lm_conv2d3x3_avm_writedata(bb_conv2d3x3_B10_out_lm_conv2d3x3_avm_writedata),
        .out_pipeline_valid_out(bb_conv2d3x3_B10_out_pipeline_valid_out),
        .out_stall_in_0(bb_conv2d3x3_B10_out_stall_in_0),
        .out_stall_out_0(bb_conv2d3x3_B10_out_stall_out_0),
        .out_stall_out_1(bb_conv2d3x3_B10_out_stall_out_1),
        .out_valid_in_0(bb_conv2d3x3_B10_out_valid_in_0),
        .out_valid_in_1(bb_conv2d3x3_B10_out_valid_in_1),
        .out_valid_out_0(bb_conv2d3x3_B10_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv2d3x33(BLACKBOX,296)
    conv2d3x3_loop_limiter_3 theloop_limiter_conv2d3x33 (
        .in_i_stall(bb_conv2d3x3_B10_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2d3x3_B10_out_exiting_stall_out),
        .in_i_valid(bb_conv2d3x3_B7_out_valid_out_0),
        .in_i_valid_exit(bb_conv2d3x3_B10_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv2d3x33_out_o_stall),
        .out_o_valid(loop_limiter_conv2d3x33_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // conv2d3x3_B10_x(EXTIFACE,222)
    assign conv2d3x3_B10_x_i_capture = GND_q;
    assign conv2d3x3_B10_x_i_clear = GND_q;
    assign conv2d3x3_B10_x_i_enable = VCC_q;
    assign conv2d3x3_B10_x_i_shift = GND_q;
    assign conv2d3x3_B10_x_i_stall_pred = loop_limiter_conv2d3x33_out_o_stall;
    assign conv2d3x3_B10_x_i_stall_succ = bb_conv2d3x3_B10_out_stall_in_0;
    assign conv2d3x3_B10_x_i_valid_loop = bb_conv2d3x3_B10_out_valid_in_0;
    assign conv2d3x3_B10_x_i_valid_pred = bb_conv2d3x3_B10_out_valid_in_1;
    assign conv2d3x3_B10_x_i_valid_succ = bb_conv2d3x3_B10_out_valid_out_0;
    assign conv2d3x3_B10_x_i_capture_bitsignaltemp = conv2d3x3_B10_x_i_capture[0];
    assign conv2d3x3_B10_x_i_clear_bitsignaltemp = conv2d3x3_B10_x_i_clear[0];
    assign conv2d3x3_B10_x_i_enable_bitsignaltemp = conv2d3x3_B10_x_i_enable[0];
    assign conv2d3x3_B10_x_i_shift_bitsignaltemp = conv2d3x3_B10_x_i_shift[0];
    assign conv2d3x3_B10_x_i_stall_pred_bitsignaltemp = conv2d3x3_B10_x_i_stall_pred[0];
    assign conv2d3x3_B10_x_i_stall_succ_bitsignaltemp = conv2d3x3_B10_x_i_stall_succ[0];
    assign conv2d3x3_B10_x_i_valid_loop_bitsignaltemp = conv2d3x3_B10_x_i_valid_loop[0];
    assign conv2d3x3_B10_x_i_valid_pred_bitsignaltemp = conv2d3x3_B10_x_i_valid_pred[0];
    assign conv2d3x3_B10_x_i_valid_succ_bitsignaltemp = conv2d3x3_B10_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv2d3x3.B10")
    ) theconv2d3x3_B10_x (
        .i_capture(conv2d3x3_B10_x_i_capture_bitsignaltemp),
        .i_clear(conv2d3x3_B10_x_i_clear_bitsignaltemp),
        .i_enable(conv2d3x3_B10_x_i_enable_bitsignaltemp),
        .i_shift(conv2d3x3_B10_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv2d3x3_B10_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv2d3x3_B10_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv2d3x3_B10_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv2d3x3_B10_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv2d3x3_B10_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d3x3_B11_x(EXTIFACE,223)
    assign conv2d3x3_B11_x_i_capture = GND_q;
    assign conv2d3x3_B11_x_i_clear = GND_q;
    assign conv2d3x3_B11_x_i_enable = VCC_q;
    assign conv2d3x3_B11_x_i_shift = GND_q;
    assign conv2d3x3_B11_x_i_stall_pred = loop_limiter_conv2d3x34_out_o_stall;
    assign conv2d3x3_B11_x_i_stall_succ = bb_conv2d3x3_B11_out_stall_in_0;
    assign conv2d3x3_B11_x_i_valid_loop = bb_conv2d3x3_B11_out_valid_in_0;
    assign conv2d3x3_B11_x_i_valid_pred = bb_conv2d3x3_B11_out_valid_in_1;
    assign conv2d3x3_B11_x_i_valid_succ = bb_conv2d3x3_B11_out_valid_out_0;
    assign conv2d3x3_B11_x_i_capture_bitsignaltemp = conv2d3x3_B11_x_i_capture[0];
    assign conv2d3x3_B11_x_i_clear_bitsignaltemp = conv2d3x3_B11_x_i_clear[0];
    assign conv2d3x3_B11_x_i_enable_bitsignaltemp = conv2d3x3_B11_x_i_enable[0];
    assign conv2d3x3_B11_x_i_shift_bitsignaltemp = conv2d3x3_B11_x_i_shift[0];
    assign conv2d3x3_B11_x_i_stall_pred_bitsignaltemp = conv2d3x3_B11_x_i_stall_pred[0];
    assign conv2d3x3_B11_x_i_stall_succ_bitsignaltemp = conv2d3x3_B11_x_i_stall_succ[0];
    assign conv2d3x3_B11_x_i_valid_loop_bitsignaltemp = conv2d3x3_B11_x_i_valid_loop[0];
    assign conv2d3x3_B11_x_i_valid_pred_bitsignaltemp = conv2d3x3_B11_x_i_valid_pred[0];
    assign conv2d3x3_B11_x_i_valid_succ_bitsignaltemp = conv2d3x3_B11_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv2d3x3.B11")
    ) theconv2d3x3_B11_x (
        .i_capture(conv2d3x3_B11_x_i_capture_bitsignaltemp),
        .i_clear(conv2d3x3_B11_x_i_clear_bitsignaltemp),
        .i_enable(conv2d3x3_B11_x_i_enable_bitsignaltemp),
        .i_shift(conv2d3x3_B11_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv2d3x3_B11_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv2d3x3_B11_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv2d3x3_B11_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv2d3x3_B11_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv2d3x3_B11_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d3x3_B13_x(EXTIFACE,224)
    assign conv2d3x3_B13_x_i_capture = GND_q;
    assign conv2d3x3_B13_x_i_clear = GND_q;
    assign conv2d3x3_B13_x_i_enable = VCC_q;
    assign conv2d3x3_B13_x_i_shift = GND_q;
    assign conv2d3x3_B13_x_i_stall_pred = loop_limiter_conv2d3x35_out_o_stall;
    assign conv2d3x3_B13_x_i_stall_succ = bb_conv2d3x3_B13_out_stall_in_0;
    assign conv2d3x3_B13_x_i_valid_loop = bb_conv2d3x3_B13_out_valid_in_0;
    assign conv2d3x3_B13_x_i_valid_pred = bb_conv2d3x3_B13_out_valid_in_1;
    assign conv2d3x3_B13_x_i_valid_succ = bb_conv2d3x3_B13_out_valid_out_0;
    assign conv2d3x3_B13_x_i_capture_bitsignaltemp = conv2d3x3_B13_x_i_capture[0];
    assign conv2d3x3_B13_x_i_clear_bitsignaltemp = conv2d3x3_B13_x_i_clear[0];
    assign conv2d3x3_B13_x_i_enable_bitsignaltemp = conv2d3x3_B13_x_i_enable[0];
    assign conv2d3x3_B13_x_i_shift_bitsignaltemp = conv2d3x3_B13_x_i_shift[0];
    assign conv2d3x3_B13_x_i_stall_pred_bitsignaltemp = conv2d3x3_B13_x_i_stall_pred[0];
    assign conv2d3x3_B13_x_i_stall_succ_bitsignaltemp = conv2d3x3_B13_x_i_stall_succ[0];
    assign conv2d3x3_B13_x_i_valid_loop_bitsignaltemp = conv2d3x3_B13_x_i_valid_loop[0];
    assign conv2d3x3_B13_x_i_valid_pred_bitsignaltemp = conv2d3x3_B13_x_i_valid_pred[0];
    assign conv2d3x3_B13_x_i_valid_succ_bitsignaltemp = conv2d3x3_B13_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv2d3x3.B13")
    ) theconv2d3x3_B13_x (
        .i_capture(conv2d3x3_B13_x_i_capture_bitsignaltemp),
        .i_clear(conv2d3x3_B13_x_i_clear_bitsignaltemp),
        .i_enable(conv2d3x3_B13_x_i_enable_bitsignaltemp),
        .i_shift(conv2d3x3_B13_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv2d3x3_B13_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv2d3x3_B13_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv2d3x3_B13_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv2d3x3_B13_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv2d3x3_B13_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d3x3_B2_x(EXTIFACE,225)
    assign conv2d3x3_B2_x_i_capture = GND_q;
    assign conv2d3x3_B2_x_i_clear = GND_q;
    assign conv2d3x3_B2_x_i_enable = VCC_q;
    assign conv2d3x3_B2_x_i_shift = GND_q;
    assign conv2d3x3_B2_x_i_stall_pred = bb_conv2d3x3_B2_sr_1_aunroll_x_out_o_stall;
    assign conv2d3x3_B2_x_i_stall_succ = bb_conv2d3x3_B4_out_stall_in_0;
    assign conv2d3x3_B2_x_i_valid_loop = bb_conv2d3x3_B2_out_valid_in_0;
    assign conv2d3x3_B2_x_i_valid_pred = bb_conv2d3x3_B2_out_valid_in_1;
    assign conv2d3x3_B2_x_i_valid_succ = bb_conv2d3x3_B4_out_valid_out_0;
    assign conv2d3x3_B2_x_i_capture_bitsignaltemp = conv2d3x3_B2_x_i_capture[0];
    assign conv2d3x3_B2_x_i_clear_bitsignaltemp = conv2d3x3_B2_x_i_clear[0];
    assign conv2d3x3_B2_x_i_enable_bitsignaltemp = conv2d3x3_B2_x_i_enable[0];
    assign conv2d3x3_B2_x_i_shift_bitsignaltemp = conv2d3x3_B2_x_i_shift[0];
    assign conv2d3x3_B2_x_i_stall_pred_bitsignaltemp = conv2d3x3_B2_x_i_stall_pred[0];
    assign conv2d3x3_B2_x_i_stall_succ_bitsignaltemp = conv2d3x3_B2_x_i_stall_succ[0];
    assign conv2d3x3_B2_x_i_valid_loop_bitsignaltemp = conv2d3x3_B2_x_i_valid_loop[0];
    assign conv2d3x3_B2_x_i_valid_pred_bitsignaltemp = conv2d3x3_B2_x_i_valid_pred[0];
    assign conv2d3x3_B2_x_i_valid_succ_bitsignaltemp = conv2d3x3_B2_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv2d3x3.B2")
    ) theconv2d3x3_B2_x (
        .i_capture(conv2d3x3_B2_x_i_capture_bitsignaltemp),
        .i_clear(conv2d3x3_B2_x_i_clear_bitsignaltemp),
        .i_enable(conv2d3x3_B2_x_i_enable_bitsignaltemp),
        .i_shift(conv2d3x3_B2_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv2d3x3_B2_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv2d3x3_B2_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv2d3x3_B2_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv2d3x3_B2_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv2d3x3_B2_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d3x3_B3_x(EXTIFACE,226)
    assign conv2d3x3_B3_x_i_capture = GND_q;
    assign conv2d3x3_B3_x_i_clear = GND_q;
    assign conv2d3x3_B3_x_i_enable = VCC_q;
    assign conv2d3x3_B3_x_i_shift = GND_q;
    assign conv2d3x3_B3_x_i_stall_pred = loop_limiter_conv2d3x30_out_o_stall;
    assign conv2d3x3_B3_x_i_stall_succ = bb_conv2d3x3_B6_out_stall_in_0;
    assign conv2d3x3_B3_x_i_valid_loop = bb_conv2d3x3_B3_out_valid_in_0;
    assign conv2d3x3_B3_x_i_valid_pred = bb_conv2d3x3_B3_out_valid_in_1;
    assign conv2d3x3_B3_x_i_valid_succ = bb_conv2d3x3_B6_out_valid_out_0;
    assign conv2d3x3_B3_x_i_capture_bitsignaltemp = conv2d3x3_B3_x_i_capture[0];
    assign conv2d3x3_B3_x_i_clear_bitsignaltemp = conv2d3x3_B3_x_i_clear[0];
    assign conv2d3x3_B3_x_i_enable_bitsignaltemp = conv2d3x3_B3_x_i_enable[0];
    assign conv2d3x3_B3_x_i_shift_bitsignaltemp = conv2d3x3_B3_x_i_shift[0];
    assign conv2d3x3_B3_x_i_stall_pred_bitsignaltemp = conv2d3x3_B3_x_i_stall_pred[0];
    assign conv2d3x3_B3_x_i_stall_succ_bitsignaltemp = conv2d3x3_B3_x_i_stall_succ[0];
    assign conv2d3x3_B3_x_i_valid_loop_bitsignaltemp = conv2d3x3_B3_x_i_valid_loop[0];
    assign conv2d3x3_B3_x_i_valid_pred_bitsignaltemp = conv2d3x3_B3_x_i_valid_pred[0];
    assign conv2d3x3_B3_x_i_valid_succ_bitsignaltemp = conv2d3x3_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv2d3x3.B3")
    ) theconv2d3x3_B3_x (
        .i_capture(conv2d3x3_B3_x_i_capture_bitsignaltemp),
        .i_clear(conv2d3x3_B3_x_i_clear_bitsignaltemp),
        .i_enable(conv2d3x3_B3_x_i_enable_bitsignaltemp),
        .i_shift(conv2d3x3_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv2d3x3_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv2d3x3_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv2d3x3_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv2d3x3_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv2d3x3_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d3x3_B5_x(EXTIFACE,227)
    assign conv2d3x3_B5_x_i_capture = GND_q;
    assign conv2d3x3_B5_x_i_clear = GND_q;
    assign conv2d3x3_B5_x_i_enable = VCC_q;
    assign conv2d3x3_B5_x_i_shift = GND_q;
    assign conv2d3x3_B5_x_i_stall_pred = loop_limiter_conv2d3x31_out_o_stall;
    assign conv2d3x3_B5_x_i_stall_succ = bb_conv2d3x3_B8_out_stall_in_0;
    assign conv2d3x3_B5_x_i_valid_loop = bb_conv2d3x3_B5_out_valid_in_0;
    assign conv2d3x3_B5_x_i_valid_pred = bb_conv2d3x3_B5_out_valid_in_1;
    assign conv2d3x3_B5_x_i_valid_succ = bb_conv2d3x3_B8_out_valid_out_0;
    assign conv2d3x3_B5_x_i_capture_bitsignaltemp = conv2d3x3_B5_x_i_capture[0];
    assign conv2d3x3_B5_x_i_clear_bitsignaltemp = conv2d3x3_B5_x_i_clear[0];
    assign conv2d3x3_B5_x_i_enable_bitsignaltemp = conv2d3x3_B5_x_i_enable[0];
    assign conv2d3x3_B5_x_i_shift_bitsignaltemp = conv2d3x3_B5_x_i_shift[0];
    assign conv2d3x3_B5_x_i_stall_pred_bitsignaltemp = conv2d3x3_B5_x_i_stall_pred[0];
    assign conv2d3x3_B5_x_i_stall_succ_bitsignaltemp = conv2d3x3_B5_x_i_stall_succ[0];
    assign conv2d3x3_B5_x_i_valid_loop_bitsignaltemp = conv2d3x3_B5_x_i_valid_loop[0];
    assign conv2d3x3_B5_x_i_valid_pred_bitsignaltemp = conv2d3x3_B5_x_i_valid_pred[0];
    assign conv2d3x3_B5_x_i_valid_succ_bitsignaltemp = conv2d3x3_B5_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv2d3x3.B5")
    ) theconv2d3x3_B5_x (
        .i_capture(conv2d3x3_B5_x_i_capture_bitsignaltemp),
        .i_clear(conv2d3x3_B5_x_i_clear_bitsignaltemp),
        .i_enable(conv2d3x3_B5_x_i_enable_bitsignaltemp),
        .i_shift(conv2d3x3_B5_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv2d3x3_B5_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv2d3x3_B5_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv2d3x3_B5_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv2d3x3_B5_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv2d3x3_B5_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d3x3_B7_x(EXTIFACE,228)
    assign conv2d3x3_B7_x_i_capture = GND_q;
    assign conv2d3x3_B7_x_i_clear = GND_q;
    assign conv2d3x3_B7_x_i_enable = VCC_q;
    assign conv2d3x3_B7_x_i_shift = GND_q;
    assign conv2d3x3_B7_x_i_stall_pred = loop_limiter_conv2d3x32_out_o_stall;
    assign conv2d3x3_B7_x_i_stall_succ = bb_conv2d3x3_B14_out_stall_in_0;
    assign conv2d3x3_B7_x_i_valid_loop = bb_conv2d3x3_B7_out_valid_in_0;
    assign conv2d3x3_B7_x_i_valid_pred = bb_conv2d3x3_B7_out_valid_in_1;
    assign conv2d3x3_B7_x_i_valid_succ = bb_conv2d3x3_B14_out_valid_out_0;
    assign conv2d3x3_B7_x_i_capture_bitsignaltemp = conv2d3x3_B7_x_i_capture[0];
    assign conv2d3x3_B7_x_i_clear_bitsignaltemp = conv2d3x3_B7_x_i_clear[0];
    assign conv2d3x3_B7_x_i_enable_bitsignaltemp = conv2d3x3_B7_x_i_enable[0];
    assign conv2d3x3_B7_x_i_shift_bitsignaltemp = conv2d3x3_B7_x_i_shift[0];
    assign conv2d3x3_B7_x_i_stall_pred_bitsignaltemp = conv2d3x3_B7_x_i_stall_pred[0];
    assign conv2d3x3_B7_x_i_stall_succ_bitsignaltemp = conv2d3x3_B7_x_i_stall_succ[0];
    assign conv2d3x3_B7_x_i_valid_loop_bitsignaltemp = conv2d3x3_B7_x_i_valid_loop[0];
    assign conv2d3x3_B7_x_i_valid_pred_bitsignaltemp = conv2d3x3_B7_x_i_valid_pred[0];
    assign conv2d3x3_B7_x_i_valid_succ_bitsignaltemp = conv2d3x3_B7_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv2d3x3.B7")
    ) theconv2d3x3_B7_x (
        .i_capture(conv2d3x3_B7_x_i_capture_bitsignaltemp),
        .i_clear(conv2d3x3_B7_x_i_clear_bitsignaltemp),
        .i_enable(conv2d3x3_B7_x_i_enable_bitsignaltemp),
        .i_shift(conv2d3x3_B7_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv2d3x3_B7_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv2d3x3_B7_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv2d3x3_B7_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv2d3x3_B7_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv2d3x3_B7_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_lm13_conv2d3x3_avm_address(GPOUT,299)
    assign out_lm13_conv2d3x3_avm_address = bb_conv2d3x3_B11_out_lm13_conv2d3x3_avm_address;

    // out_lm13_conv2d3x3_avm_burstcount(GPOUT,300)
    assign out_lm13_conv2d3x3_avm_burstcount = bb_conv2d3x3_B11_out_lm13_conv2d3x3_avm_burstcount;

    // out_lm13_conv2d3x3_avm_byteenable(GPOUT,301)
    assign out_lm13_conv2d3x3_avm_byteenable = bb_conv2d3x3_B11_out_lm13_conv2d3x3_avm_byteenable;

    // out_lm13_conv2d3x3_avm_enable(GPOUT,302)
    assign out_lm13_conv2d3x3_avm_enable = bb_conv2d3x3_B11_out_lm13_conv2d3x3_avm_enable;

    // out_lm13_conv2d3x3_avm_read(GPOUT,303)
    assign out_lm13_conv2d3x3_avm_read = bb_conv2d3x3_B11_out_lm13_conv2d3x3_avm_read;

    // out_lm13_conv2d3x3_avm_write(GPOUT,304)
    assign out_lm13_conv2d3x3_avm_write = bb_conv2d3x3_B11_out_lm13_conv2d3x3_avm_write;

    // out_lm13_conv2d3x3_avm_writedata(GPOUT,305)
    assign out_lm13_conv2d3x3_avm_writedata = bb_conv2d3x3_B11_out_lm13_conv2d3x3_avm_writedata;

    // out_lm15_conv2d3x3_avm_address(GPOUT,306)
    assign out_lm15_conv2d3x3_avm_address = bb_conv2d3x3_B11_out_lm15_conv2d3x3_avm_address;

    // out_lm15_conv2d3x3_avm_burstcount(GPOUT,307)
    assign out_lm15_conv2d3x3_avm_burstcount = bb_conv2d3x3_B11_out_lm15_conv2d3x3_avm_burstcount;

    // out_lm15_conv2d3x3_avm_byteenable(GPOUT,308)
    assign out_lm15_conv2d3x3_avm_byteenable = bb_conv2d3x3_B11_out_lm15_conv2d3x3_avm_byteenable;

    // out_lm15_conv2d3x3_avm_enable(GPOUT,309)
    assign out_lm15_conv2d3x3_avm_enable = bb_conv2d3x3_B11_out_lm15_conv2d3x3_avm_enable;

    // out_lm15_conv2d3x3_avm_read(GPOUT,310)
    assign out_lm15_conv2d3x3_avm_read = bb_conv2d3x3_B11_out_lm15_conv2d3x3_avm_read;

    // out_lm15_conv2d3x3_avm_write(GPOUT,311)
    assign out_lm15_conv2d3x3_avm_write = bb_conv2d3x3_B11_out_lm15_conv2d3x3_avm_write;

    // out_lm15_conv2d3x3_avm_writedata(GPOUT,312)
    assign out_lm15_conv2d3x3_avm_writedata = bb_conv2d3x3_B11_out_lm15_conv2d3x3_avm_writedata;

    // out_lm20_conv2d3x3_avm_address(GPOUT,313)
    assign out_lm20_conv2d3x3_avm_address = bb_conv2d3x3_B13_out_lm20_conv2d3x3_avm_address;

    // out_lm20_conv2d3x3_avm_burstcount(GPOUT,314)
    assign out_lm20_conv2d3x3_avm_burstcount = bb_conv2d3x3_B13_out_lm20_conv2d3x3_avm_burstcount;

    // out_lm20_conv2d3x3_avm_byteenable(GPOUT,315)
    assign out_lm20_conv2d3x3_avm_byteenable = bb_conv2d3x3_B13_out_lm20_conv2d3x3_avm_byteenable;

    // out_lm20_conv2d3x3_avm_enable(GPOUT,316)
    assign out_lm20_conv2d3x3_avm_enable = bb_conv2d3x3_B13_out_lm20_conv2d3x3_avm_enable;

    // out_lm20_conv2d3x3_avm_read(GPOUT,317)
    assign out_lm20_conv2d3x3_avm_read = bb_conv2d3x3_B13_out_lm20_conv2d3x3_avm_read;

    // out_lm20_conv2d3x3_avm_write(GPOUT,318)
    assign out_lm20_conv2d3x3_avm_write = bb_conv2d3x3_B13_out_lm20_conv2d3x3_avm_write;

    // out_lm20_conv2d3x3_avm_writedata(GPOUT,319)
    assign out_lm20_conv2d3x3_avm_writedata = bb_conv2d3x3_B13_out_lm20_conv2d3x3_avm_writedata;

    // out_lm22_conv2d3x3_avm_address(GPOUT,320)
    assign out_lm22_conv2d3x3_avm_address = bb_conv2d3x3_B13_out_lm22_conv2d3x3_avm_address;

    // out_lm22_conv2d3x3_avm_burstcount(GPOUT,321)
    assign out_lm22_conv2d3x3_avm_burstcount = bb_conv2d3x3_B13_out_lm22_conv2d3x3_avm_burstcount;

    // out_lm22_conv2d3x3_avm_byteenable(GPOUT,322)
    assign out_lm22_conv2d3x3_avm_byteenable = bb_conv2d3x3_B13_out_lm22_conv2d3x3_avm_byteenable;

    // out_lm22_conv2d3x3_avm_enable(GPOUT,323)
    assign out_lm22_conv2d3x3_avm_enable = bb_conv2d3x3_B13_out_lm22_conv2d3x3_avm_enable;

    // out_lm22_conv2d3x3_avm_read(GPOUT,324)
    assign out_lm22_conv2d3x3_avm_read = bb_conv2d3x3_B13_out_lm22_conv2d3x3_avm_read;

    // out_lm22_conv2d3x3_avm_write(GPOUT,325)
    assign out_lm22_conv2d3x3_avm_write = bb_conv2d3x3_B13_out_lm22_conv2d3x3_avm_write;

    // out_lm22_conv2d3x3_avm_writedata(GPOUT,326)
    assign out_lm22_conv2d3x3_avm_writedata = bb_conv2d3x3_B13_out_lm22_conv2d3x3_avm_writedata;

    // out_lm25_conv2d3x3_avm_address(GPOUT,327)
    assign out_lm25_conv2d3x3_avm_address = bb_conv2d3x3_B2_out_lm25_conv2d3x3_avm_address;

    // out_lm25_conv2d3x3_avm_burstcount(GPOUT,328)
    assign out_lm25_conv2d3x3_avm_burstcount = bb_conv2d3x3_B2_out_lm25_conv2d3x3_avm_burstcount;

    // out_lm25_conv2d3x3_avm_byteenable(GPOUT,329)
    assign out_lm25_conv2d3x3_avm_byteenable = bb_conv2d3x3_B2_out_lm25_conv2d3x3_avm_byteenable;

    // out_lm25_conv2d3x3_avm_enable(GPOUT,330)
    assign out_lm25_conv2d3x3_avm_enable = bb_conv2d3x3_B2_out_lm25_conv2d3x3_avm_enable;

    // out_lm25_conv2d3x3_avm_read(GPOUT,331)
    assign out_lm25_conv2d3x3_avm_read = bb_conv2d3x3_B2_out_lm25_conv2d3x3_avm_read;

    // out_lm25_conv2d3x3_avm_write(GPOUT,332)
    assign out_lm25_conv2d3x3_avm_write = bb_conv2d3x3_B2_out_lm25_conv2d3x3_avm_write;

    // out_lm25_conv2d3x3_avm_writedata(GPOUT,333)
    assign out_lm25_conv2d3x3_avm_writedata = bb_conv2d3x3_B2_out_lm25_conv2d3x3_avm_writedata;

    // out_lm8_conv2d3x3_avm_address(GPOUT,334)
    assign out_lm8_conv2d3x3_avm_address = bb_conv2d3x3_B10_out_lm8_conv2d3x3_avm_address;

    // out_lm8_conv2d3x3_avm_burstcount(GPOUT,335)
    assign out_lm8_conv2d3x3_avm_burstcount = bb_conv2d3x3_B10_out_lm8_conv2d3x3_avm_burstcount;

    // out_lm8_conv2d3x3_avm_byteenable(GPOUT,336)
    assign out_lm8_conv2d3x3_avm_byteenable = bb_conv2d3x3_B10_out_lm8_conv2d3x3_avm_byteenable;

    // out_lm8_conv2d3x3_avm_enable(GPOUT,337)
    assign out_lm8_conv2d3x3_avm_enable = bb_conv2d3x3_B10_out_lm8_conv2d3x3_avm_enable;

    // out_lm8_conv2d3x3_avm_read(GPOUT,338)
    assign out_lm8_conv2d3x3_avm_read = bb_conv2d3x3_B10_out_lm8_conv2d3x3_avm_read;

    // out_lm8_conv2d3x3_avm_write(GPOUT,339)
    assign out_lm8_conv2d3x3_avm_write = bb_conv2d3x3_B10_out_lm8_conv2d3x3_avm_write;

    // out_lm8_conv2d3x3_avm_writedata(GPOUT,340)
    assign out_lm8_conv2d3x3_avm_writedata = bb_conv2d3x3_B10_out_lm8_conv2d3x3_avm_writedata;

    // out_lm_conv2d3x3_avm_address(GPOUT,341)
    assign out_lm_conv2d3x3_avm_address = bb_conv2d3x3_B10_out_lm_conv2d3x3_avm_address;

    // out_lm_conv2d3x3_avm_burstcount(GPOUT,342)
    assign out_lm_conv2d3x3_avm_burstcount = bb_conv2d3x3_B10_out_lm_conv2d3x3_avm_burstcount;

    // out_lm_conv2d3x3_avm_byteenable(GPOUT,343)
    assign out_lm_conv2d3x3_avm_byteenable = bb_conv2d3x3_B10_out_lm_conv2d3x3_avm_byteenable;

    // out_lm_conv2d3x3_avm_enable(GPOUT,344)
    assign out_lm_conv2d3x3_avm_enable = bb_conv2d3x3_B10_out_lm_conv2d3x3_avm_enable;

    // out_lm_conv2d3x3_avm_read(GPOUT,345)
    assign out_lm_conv2d3x3_avm_read = bb_conv2d3x3_B10_out_lm_conv2d3x3_avm_read;

    // out_lm_conv2d3x3_avm_write(GPOUT,346)
    assign out_lm_conv2d3x3_avm_write = bb_conv2d3x3_B10_out_lm_conv2d3x3_avm_write;

    // out_lm_conv2d3x3_avm_writedata(GPOUT,347)
    assign out_lm_conv2d3x3_avm_writedata = bb_conv2d3x3_B10_out_lm_conv2d3x3_avm_writedata;

    // out_o_active_unnamed_conv2d3x319(GPOUT,348)
    assign out_o_active_unnamed_conv2d3x319 = bb_conv2d3x3_B8_out_lsu_unnamed_conv2d3x319_o_active;

    // out_stall_out(GPOUT,349)
    assign out_stall_out = bb_conv2d3x3_B0_out_stall_out_0;

    // out_unnamed_conv2d3x319_conv2d3x3_avm_address(GPOUT,350)
    assign out_unnamed_conv2d3x319_conv2d3x3_avm_address = bb_conv2d3x3_B8_out_unnamed_conv2d3x319_conv2d3x3_avm_address;

    // out_unnamed_conv2d3x319_conv2d3x3_avm_burstcount(GPOUT,351)
    assign out_unnamed_conv2d3x319_conv2d3x3_avm_burstcount = bb_conv2d3x3_B8_out_unnamed_conv2d3x319_conv2d3x3_avm_burstcount;

    // out_unnamed_conv2d3x319_conv2d3x3_avm_byteenable(GPOUT,352)
    assign out_unnamed_conv2d3x319_conv2d3x3_avm_byteenable = bb_conv2d3x3_B8_out_unnamed_conv2d3x319_conv2d3x3_avm_byteenable;

    // out_unnamed_conv2d3x319_conv2d3x3_avm_enable(GPOUT,353)
    assign out_unnamed_conv2d3x319_conv2d3x3_avm_enable = bb_conv2d3x3_B8_out_unnamed_conv2d3x319_conv2d3x3_avm_enable;

    // out_unnamed_conv2d3x319_conv2d3x3_avm_read(GPOUT,354)
    assign out_unnamed_conv2d3x319_conv2d3x3_avm_read = bb_conv2d3x3_B8_out_unnamed_conv2d3x319_conv2d3x3_avm_read;

    // out_unnamed_conv2d3x319_conv2d3x3_avm_write(GPOUT,355)
    assign out_unnamed_conv2d3x319_conv2d3x3_avm_write = bb_conv2d3x3_B8_out_unnamed_conv2d3x319_conv2d3x3_avm_write;

    // out_unnamed_conv2d3x319_conv2d3x3_avm_writedata(GPOUT,356)
    assign out_unnamed_conv2d3x319_conv2d3x3_avm_writedata = bb_conv2d3x3_B8_out_unnamed_conv2d3x319_conv2d3x3_avm_writedata;

    // out_valid_out(GPOUT,357)
    assign out_valid_out = bb_conv2d3x3_B1_out_valid_out_0;

endmodule
