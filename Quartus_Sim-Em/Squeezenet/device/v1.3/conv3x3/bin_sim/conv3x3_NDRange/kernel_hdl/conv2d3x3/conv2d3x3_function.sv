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
// SystemVerilog created on Tue May 30 12:30:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_function (
    input wire [63:0] in_arg_acl_global_id_0,
    input wire [63:0] in_arg_acl_global_id_1,
    input wire [63:0] in_arg_acl_global_size_0,
    input wire [63:0] in_arg_acl_global_size_1,
    input wire [63:0] in_arg_acl_global_size_2,
    input wire [31:0] in_arg_acl_local_size_0,
    input wire [31:0] in_arg_acl_local_size_1,
    input wire [31:0] in_arg_acl_local_size_2,
    input wire [63:0] in_arg_filter_bias,
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
    input wire [511:0] in_lm18_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm18_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_lm18_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm18_conv2d3x3_avm_writeack,
    input wire [511:0] in_lm20_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm20_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_lm20_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm20_conv2d3x3_avm_writeack,
    input wire [511:0] in_lm25_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm25_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_lm25_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm25_conv2d3x3_avm_writeack,
    input wire [511:0] in_lm27_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm27_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_lm27_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm27_conv2d3x3_avm_writeack,
    input wire [511:0] in_lm_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_lm_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm_conv2d3x3_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [511:0] in_unnamed_conv2d3x30_conv2d3x3_avm_readdata,
    input wire [0:0] in_unnamed_conv2d3x30_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv2d3x30_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d3x30_conv2d3x3_avm_writeack,
    input wire [511:0] in_unnamed_conv2d3x36_conv2d3x3_avm_readdata,
    input wire [0:0] in_unnamed_conv2d3x36_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv2d3x36_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d3x36_conv2d3x3_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [30:0] out_lm13_conv2d3x3_avm_address,
    output wire [4:0] out_lm13_conv2d3x3_avm_burstcount,
    output wire [63:0] out_lm13_conv2d3x3_avm_byteenable,
    output wire [0:0] out_lm13_conv2d3x3_avm_enable,
    output wire [0:0] out_lm13_conv2d3x3_avm_read,
    output wire [0:0] out_lm13_conv2d3x3_avm_write,
    output wire [511:0] out_lm13_conv2d3x3_avm_writedata,
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
    output wire [30:0] out_lm_conv2d3x3_avm_address,
    output wire [4:0] out_lm_conv2d3x3_avm_burstcount,
    output wire [63:0] out_lm_conv2d3x3_avm_byteenable,
    output wire [0:0] out_lm_conv2d3x3_avm_enable,
    output wire [0:0] out_lm_conv2d3x3_avm_read,
    output wire [0:0] out_lm_conv2d3x3_avm_write,
    output wire [511:0] out_lm_conv2d3x3_avm_writedata,
    output wire [0:0] out_o_active_unnamed_conv2d3x36,
    output wire [0:0] out_stall_out,
    output wire [30:0] out_unnamed_conv2d3x30_conv2d3x3_avm_address,
    output wire [4:0] out_unnamed_conv2d3x30_conv2d3x3_avm_burstcount,
    output wire [63:0] out_unnamed_conv2d3x30_conv2d3x3_avm_byteenable,
    output wire [0:0] out_unnamed_conv2d3x30_conv2d3x3_avm_enable,
    output wire [0:0] out_unnamed_conv2d3x30_conv2d3x3_avm_read,
    output wire [0:0] out_unnamed_conv2d3x30_conv2d3x3_avm_write,
    output wire [511:0] out_unnamed_conv2d3x30_conv2d3x3_avm_writedata,
    output wire [30:0] out_unnamed_conv2d3x36_conv2d3x3_avm_address,
    output wire [4:0] out_unnamed_conv2d3x36_conv2d3x3_avm_burstcount,
    output wire [63:0] out_unnamed_conv2d3x36_conv2d3x3_avm_byteenable,
    output wire [0:0] out_unnamed_conv2d3x36_conv2d3x3_avm_enable,
    output wire [0:0] out_unnamed_conv2d3x36_conv2d3x3_avm_read,
    output wire [0:0] out_unnamed_conv2d3x36_conv2d3x3_avm_write,
    output wire [511:0] out_unnamed_conv2d3x36_conv2d3x3_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] bb_conv2d3x3_B0_out_c0_exe1;
    wire [0:0] bb_conv2d3x3_B0_out_c0_exe10;
    wire [0:0] bb_conv2d3x3_B0_out_c0_exe11;
    wire [31:0] bb_conv2d3x3_B0_out_c0_exe12;
    wire [0:0] bb_conv2d3x3_B0_out_c0_exe13;
    wire [0:0] bb_conv2d3x3_B0_out_c0_exe14;
    wire [0:0] bb_conv2d3x3_B0_out_c0_exe15;
    wire [0:0] bb_conv2d3x3_B0_out_c0_exe16;
    wire [63:0] bb_conv2d3x3_B0_out_c0_exe3;
    wire [0:0] bb_conv2d3x3_B0_out_c0_exe4;
    wire [31:0] bb_conv2d3x3_B0_out_c0_exe5;
    wire [31:0] bb_conv2d3x3_B0_out_c0_exe6;
    wire [0:0] bb_conv2d3x3_B0_out_c0_exe7;
    wire [0:0] bb_conv2d3x3_B0_out_c0_exe8;
    wire [31:0] bb_conv2d3x3_B0_out_c0_exe9;
    wire [0:0] bb_conv2d3x3_B0_out_stall_out_0;
    wire [31:0] bb_conv2d3x3_B0_out_unnamed_conv2d3x30;
    wire [30:0] bb_conv2d3x3_B0_out_unnamed_conv2d3x30_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B0_out_unnamed_conv2d3x30_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B0_out_unnamed_conv2d3x30_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B0_out_unnamed_conv2d3x30_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B0_out_unnamed_conv2d3x30_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B0_out_unnamed_conv2d3x30_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B0_out_unnamed_conv2d3x30_conv2d3x3_avm_writedata;
    wire [0:0] bb_conv2d3x3_B0_out_valid_out_0;
    wire [0:0] bb_conv2d3x3_B1_out_c0_exe1083;
    wire [63:0] bb_conv2d3x3_B1_out_c0_exe113;
    wire [31:0] bb_conv2d3x3_B1_out_c0_exe1186;
    wire [0:0] bb_conv2d3x3_B1_out_c0_exe1192;
    wire [31:0] bb_conv2d3x3_B1_out_c0_exe12103;
    wire [0:0] bb_conv2d3x3_B1_out_c0_exe13113;
    wire [0:0] bb_conv2d3x3_B1_out_c0_exe14122;
    wire [0:0] bb_conv2d3x3_B1_out_c0_exe15132;
    wire [0:0] bb_conv2d3x3_B1_out_c0_exe16142;
    wire [63:0] bb_conv2d3x3_B1_out_c0_exe324;
    wire [0:0] bb_conv2d3x3_B1_out_c0_exe433;
    wire [31:0] bb_conv2d3x3_B1_out_c0_exe535;
    wire [31:0] bb_conv2d3x3_B1_out_c0_exe651;
    wire [0:0] bb_conv2d3x3_B1_out_c0_exe754;
    wire [0:0] bb_conv2d3x3_B1_out_c0_exe863;
    wire [31:0] bb_conv2d3x3_B1_out_c0_exe973;
    wire [31:0] bb_conv2d3x3_B1_out_j_062;
    wire [0:0] bb_conv2d3x3_B1_out_stall_out_0;
    wire [0:0] bb_conv2d3x3_B1_out_stall_out_1;
    wire [31:0] bb_conv2d3x3_B1_out_unnamed_conv2d3x32;
    wire [0:0] bb_conv2d3x3_B1_out_valid_in_0;
    wire [0:0] bb_conv2d3x3_B1_out_valid_in_1;
    wire [0:0] bb_conv2d3x3_B1_out_valid_out_0;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe1085;
    wire [63:0] bb_conv2d3x3_B10_out_c0_exe115;
    wire [31:0] bb_conv2d3x3_B10_out_c0_exe1186153;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe1194;
    wire [31:0] bb_conv2d3x3_B10_out_c0_exe12105;
    wire [31:0] bb_conv2d3x3_B10_out_c0_exe1254179;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe13115;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe14124;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe15125;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe16135;
    wire [63:0] bb_conv2d3x3_B10_out_c0_exe317;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe426;
    wire [31:0] bb_conv2d3x3_B10_out_c0_exe537;
    wire [31:0] bb_conv2d3x3_B10_out_c0_exe644;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe756;
    wire [0:0] bb_conv2d3x3_B10_out_c0_exe865;
    wire [31:0] bb_conv2d3x3_B10_out_c0_exe975;
    wire [31:0] bb_conv2d3x3_B10_out_inc57;
    wire [31:0] bb_conv2d3x3_B10_out_j_062144;
    wire [0:0] bb_conv2d3x3_B10_out_stall_in_0;
    wire [0:0] bb_conv2d3x3_B10_out_stall_out_0;
    wire [31:0] bb_conv2d3x3_B10_out_unnamed_conv2d3x315;
    wire [0:0] bb_conv2d3x3_B10_out_valid_out_0;
    wire [0:0] bb_conv2d3x3_B10_out_valid_out_1;
    wire [0:0] bb_conv2d3x3_B2_out_stall_out_0;
    wire [0:0] bb_conv2d3x3_B2_out_valid_out_0;
    wire [0:0] bb_conv2d3x3_B3_out_c0_exe1082;
    wire [63:0] bb_conv2d3x3_B3_out_c0_exe112;
    wire [31:0] bb_conv2d3x3_B3_out_c0_exe1186152;
    wire [0:0] bb_conv2d3x3_B3_out_c0_exe1191;
    wire [31:0] bb_conv2d3x3_B3_out_c0_exe1195;
    wire [31:0] bb_conv2d3x3_B3_out_c0_exe12102;
    wire [0:0] bb_conv2d3x3_B3_out_c0_exe13112;
    wire [0:0] bb_conv2d3x3_B3_out_c0_exe14121;
    wire [0:0] bb_conv2d3x3_B3_out_c0_exe15131;
    wire [0:0] bb_conv2d3x3_B3_out_c0_exe16141;
    wire [31:0] bb_conv2d3x3_B3_out_c0_exe2196;
    wire [63:0] bb_conv2d3x3_B3_out_c0_exe323;
    wire [0:0] bb_conv2d3x3_B3_out_c0_exe432;
    wire [31:0] bb_conv2d3x3_B3_out_c0_exe534;
    wire [31:0] bb_conv2d3x3_B3_out_c0_exe650;
    wire [0:0] bb_conv2d3x3_B3_out_c0_exe753;
    wire [0:0] bb_conv2d3x3_B3_out_c0_exe862;
    wire [31:0] bb_conv2d3x3_B3_out_c0_exe972;
    wire [31:0] bb_conv2d3x3_B3_out_j_062150;
    wire [31:0] bb_conv2d3x3_B3_out_k_059;
    wire [31:0] bb_conv2d3x3_B3_out_mul46_add4;
    wire [0:0] bb_conv2d3x3_B3_out_stall_out_0;
    wire [0:0] bb_conv2d3x3_B3_out_stall_out_1;
    wire [31:0] bb_conv2d3x3_B3_out_tmp_058;
    wire [31:0] bb_conv2d3x3_B3_out_unnamed_conv2d3x33;
    wire [0:0] bb_conv2d3x3_B3_out_valid_in_0;
    wire [0:0] bb_conv2d3x3_B3_out_valid_in_1;
    wire [0:0] bb_conv2d3x3_B3_out_valid_out_0;
    wire [0:0] bb_conv2d3x3_B4_out_c0_exe1084;
    wire [63:0] bb_conv2d3x3_B4_out_c0_exe114;
    wire [0:0] bb_conv2d3x3_B4_out_c0_exe1193;
    wire [31:0] bb_conv2d3x3_B4_out_c0_exe12104;
    wire [0:0] bb_conv2d3x3_B4_out_c0_exe13114;
    wire [0:0] bb_conv2d3x3_B4_out_c0_exe14123;
    wire [0:0] bb_conv2d3x3_B4_out_c0_exe15133;
    wire [0:0] bb_conv2d3x3_B4_out_c0_exe16134;
    wire [63:0] bb_conv2d3x3_B4_out_c0_exe316;
    wire [0:0] bb_conv2d3x3_B4_out_c0_exe425;
    wire [31:0] bb_conv2d3x3_B4_out_c0_exe536;
    wire [31:0] bb_conv2d3x3_B4_out_c0_exe643;
    wire [0:0] bb_conv2d3x3_B4_out_c0_exe755;
    wire [0:0] bb_conv2d3x3_B4_out_c0_exe864;
    wire [31:0] bb_conv2d3x3_B4_out_c0_exe974;
    wire [31:0] bb_conv2d3x3_B4_out_inc69;
    wire [0:0] bb_conv2d3x3_B4_out_lsu_unnamed_conv2d3x36_o_active;
    wire [0:0] bb_conv2d3x3_B4_out_stall_in_0;
    wire [0:0] bb_conv2d3x3_B4_out_stall_out_0;
    wire [31:0] bb_conv2d3x3_B4_out_unnamed_conv2d3x34;
    wire [30:0] bb_conv2d3x3_B4_out_unnamed_conv2d3x36_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B4_out_unnamed_conv2d3x36_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B4_out_unnamed_conv2d3x36_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B4_out_unnamed_conv2d3x36_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B4_out_unnamed_conv2d3x36_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B4_out_unnamed_conv2d3x36_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B4_out_unnamed_conv2d3x36_conv2d3x3_avm_writedata;
    wire [0:0] bb_conv2d3x3_B4_out_valid_out_0;
    wire [0:0] bb_conv2d3x3_B4_out_valid_out_1;
    wire [0:0] bb_conv2d3x3_B5_out_c0_exe1081;
    wire [63:0] bb_conv2d3x3_B5_out_c0_exe111;
    wire [31:0] bb_conv2d3x3_B5_out_c0_exe1186151;
    wire [0:0] bb_conv2d3x3_B5_out_c0_exe1190;
    wire [31:0] bb_conv2d3x3_B5_out_c0_exe1195167;
    wire [31:0] bb_conv2d3x3_B5_out_c0_exe12101;
    wire [31:0] bb_conv2d3x3_B5_out_c0_exe1214;
    wire [0:0] bb_conv2d3x3_B5_out_c0_exe13111;
    wire [0:0] bb_conv2d3x3_B5_out_c0_exe14120;
    wire [0:0] bb_conv2d3x3_B5_out_c0_exe15130;
    wire [0:0] bb_conv2d3x3_B5_out_c0_exe16140;
    wire [31:0] bb_conv2d3x3_B5_out_c0_exe2196168;
    wire [63:0] bb_conv2d3x3_B5_out_c0_exe322;
    wire [0:0] bb_conv2d3x3_B5_out_c0_exe431;
    wire [31:0] bb_conv2d3x3_B5_out_c0_exe542;
    wire [31:0] bb_conv2d3x3_B5_out_c0_exe649;
    wire [0:0] bb_conv2d3x3_B5_out_c0_exe752;
    wire [0:0] bb_conv2d3x3_B5_out_c0_exe861;
    wire [31:0] bb_conv2d3x3_B5_out_c0_exe971;
    wire [31:0] bb_conv2d3x3_B5_out_inc;
    wire [31:0] bb_conv2d3x3_B5_out_j_062149;
    wire [31:0] bb_conv2d3x3_B5_out_k_059163;
    wire [30:0] bb_conv2d3x3_B5_out_lm13_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B5_out_lm13_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B5_out_lm13_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B5_out_lm13_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B5_out_lm13_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B5_out_lm13_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B5_out_lm13_conv2d3x3_avm_writedata;
    wire [30:0] bb_conv2d3x3_B5_out_lm_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B5_out_lm_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B5_out_lm_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B5_out_lm_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B5_out_lm_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B5_out_lm_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B5_out_lm_conv2d3x3_avm_writedata;
    wire [31:0] bb_conv2d3x3_B5_out_mul46_add4172;
    wire [0:0] bb_conv2d3x3_B5_out_stall_in_0;
    wire [0:0] bb_conv2d3x3_B5_out_stall_out_0;
    wire [0:0] bb_conv2d3x3_B5_out_stall_out_1;
    wire [31:0] bb_conv2d3x3_B5_out_unnamed_conv2d3x37;
    wire [0:0] bb_conv2d3x3_B5_out_valid_in_0;
    wire [0:0] bb_conv2d3x3_B5_out_valid_in_1;
    wire [0:0] bb_conv2d3x3_B5_out_valid_out_0;
    wire [0:0] bb_conv2d3x3_B5_out_valid_out_1;
    wire [31:0] bb_conv2d3x3_B6_out_add48_1_le;
    wire [0:0] bb_conv2d3x3_B6_out_c0_exe1080;
    wire [63:0] bb_conv2d3x3_B6_out_c0_exe110;
    wire [31:0] bb_conv2d3x3_B6_out_c0_exe1186157;
    wire [0:0] bb_conv2d3x3_B6_out_c0_exe1189;
    wire [31:0] bb_conv2d3x3_B6_out_c0_exe1195166;
    wire [31:0] bb_conv2d3x3_B6_out_c0_exe12100;
    wire [31:0] bb_conv2d3x3_B6_out_c0_exe1214173;
    wire [31:0] bb_conv2d3x3_B6_out_c0_exe1222;
    wire [0:0] bb_conv2d3x3_B6_out_c0_exe13110;
    wire [0:0] bb_conv2d3x3_B6_out_c0_exe14119;
    wire [0:0] bb_conv2d3x3_B6_out_c0_exe15129;
    wire [0:0] bb_conv2d3x3_B6_out_c0_exe16139;
    wire [63:0] bb_conv2d3x3_B6_out_c0_exe321;
    wire [0:0] bb_conv2d3x3_B6_out_c0_exe430;
    wire [31:0] bb_conv2d3x3_B6_out_c0_exe541;
    wire [31:0] bb_conv2d3x3_B6_out_c0_exe648;
    wire [0:0] bb_conv2d3x3_B6_out_c0_exe760;
    wire [0:0] bb_conv2d3x3_B6_out_c0_exe869;
    wire [31:0] bb_conv2d3x3_B6_out_c0_exe970;
    wire [31:0] bb_conv2d3x3_B6_out_j_062148;
    wire [31:0] bb_conv2d3x3_B6_out_k_059162;
    wire [31:0] bb_conv2d3x3_B6_out_mul46_add4171;
    wire [0:0] bb_conv2d3x3_B6_out_stall_out_0;
    wire [31:0] bb_conv2d3x3_B6_out_unnamed_conv2d3x39;
    wire [0:0] bb_conv2d3x3_B6_out_valid_out_0;
    wire [31:0] bb_conv2d3x3_B7_out_add48_1_le175;
    wire [0:0] bb_conv2d3x3_B7_out_c0_exe1079;
    wire [31:0] bb_conv2d3x3_B7_out_c0_exe1186156;
    wire [0:0] bb_conv2d3x3_B7_out_c0_exe1188;
    wire [31:0] bb_conv2d3x3_B7_out_c0_exe1195165;
    wire [31:0] bb_conv2d3x3_B7_out_c0_exe1222174;
    wire [31:0] bb_conv2d3x3_B7_out_c0_exe1234;
    wire [31:0] bb_conv2d3x3_B7_out_c0_exe1299;
    wire [0:0] bb_conv2d3x3_B7_out_c0_exe13109;
    wire [0:0] bb_conv2d3x3_B7_out_c0_exe14118;
    wire [0:0] bb_conv2d3x3_B7_out_c0_exe15128;
    wire [0:0] bb_conv2d3x3_B7_out_c0_exe16138;
    wire [63:0] bb_conv2d3x3_B7_out_c0_exe19;
    wire [63:0] bb_conv2d3x3_B7_out_c0_exe320;
    wire [0:0] bb_conv2d3x3_B7_out_c0_exe429;
    wire [31:0] bb_conv2d3x3_B7_out_c0_exe540;
    wire [31:0] bb_conv2d3x3_B7_out_c0_exe647;
    wire [0:0] bb_conv2d3x3_B7_out_c0_exe759;
    wire [0:0] bb_conv2d3x3_B7_out_c0_exe868;
    wire [31:0] bb_conv2d3x3_B7_out_c0_exe978;
    wire [31:0] bb_conv2d3x3_B7_out_inc_1;
    wire [31:0] bb_conv2d3x3_B7_out_j_062147;
    wire [31:0] bb_conv2d3x3_B7_out_k_059161;
    wire [30:0] bb_conv2d3x3_B7_out_lm18_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B7_out_lm18_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B7_out_lm18_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B7_out_lm18_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B7_out_lm18_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B7_out_lm18_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B7_out_lm18_conv2d3x3_avm_writedata;
    wire [30:0] bb_conv2d3x3_B7_out_lm20_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B7_out_lm20_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B7_out_lm20_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B7_out_lm20_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B7_out_lm20_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B7_out_lm20_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B7_out_lm20_conv2d3x3_avm_writedata;
    wire [31:0] bb_conv2d3x3_B7_out_mul46_add4170;
    wire [0:0] bb_conv2d3x3_B7_out_stall_in_0;
    wire [0:0] bb_conv2d3x3_B7_out_stall_out_0;
    wire [0:0] bb_conv2d3x3_B7_out_stall_out_1;
    wire [31:0] bb_conv2d3x3_B7_out_unnamed_conv2d3x310;
    wire [0:0] bb_conv2d3x3_B7_out_valid_in_0;
    wire [0:0] bb_conv2d3x3_B7_out_valid_in_1;
    wire [0:0] bb_conv2d3x3_B7_out_valid_out_0;
    wire [0:0] bb_conv2d3x3_B7_out_valid_out_1;
    wire [31:0] bb_conv2d3x3_B8_out_add48_2;
    wire [0:0] bb_conv2d3x3_B8_out_c0_exe1087;
    wire [31:0] bb_conv2d3x3_B8_out_c0_exe1186155;
    wire [0:0] bb_conv2d3x3_B8_out_c0_exe1197;
    wire [31:0] bb_conv2d3x3_B8_out_c0_exe1234176;
    wire [31:0] bb_conv2d3x3_B8_out_c0_exe1242;
    wire [31:0] bb_conv2d3x3_B8_out_c0_exe1298;
    wire [0:0] bb_conv2d3x3_B8_out_c0_exe13108;
    wire [0:0] bb_conv2d3x3_B8_out_c0_exe14117;
    wire [0:0] bb_conv2d3x3_B8_out_c0_exe15127;
    wire [0:0] bb_conv2d3x3_B8_out_c0_exe16137;
    wire [63:0] bb_conv2d3x3_B8_out_c0_exe18;
    wire [63:0] bb_conv2d3x3_B8_out_c0_exe319;
    wire [0:0] bb_conv2d3x3_B8_out_c0_exe428;
    wire [31:0] bb_conv2d3x3_B8_out_c0_exe539;
    wire [31:0] bb_conv2d3x3_B8_out_c0_exe646;
    wire [0:0] bb_conv2d3x3_B8_out_c0_exe758;
    wire [0:0] bb_conv2d3x3_B8_out_c0_exe867;
    wire [31:0] bb_conv2d3x3_B8_out_c0_exe977;
    wire [31:0] bb_conv2d3x3_B8_out_j_062146;
    wire [31:0] bb_conv2d3x3_B8_out_k_059160;
    wire [0:0] bb_conv2d3x3_B8_out_stall_out_0;
    wire [31:0] bb_conv2d3x3_B8_out_unnamed_conv2d3x312;
    wire [0:0] bb_conv2d3x3_B8_out_valid_out_0;
    wire [31:0] bb_conv2d3x3_B9_out_add48_2178;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe1086;
    wire [31:0] bb_conv2d3x3_B9_out_c0_exe1186154;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe1196;
    wire [31:0] bb_conv2d3x3_B9_out_c0_exe12106;
    wire [31:0] bb_conv2d3x3_B9_out_c0_exe1242177;
    wire [31:0] bb_conv2d3x3_B9_out_c0_exe1254;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe13107;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe14116;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe15126;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe16136;
    wire [63:0] bb_conv2d3x3_B9_out_c0_exe17;
    wire [63:0] bb_conv2d3x3_B9_out_c0_exe318;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe427;
    wire [31:0] bb_conv2d3x3_B9_out_c0_exe538;
    wire [31:0] bb_conv2d3x3_B9_out_c0_exe645;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe757;
    wire [0:0] bb_conv2d3x3_B9_out_c0_exe866;
    wire [31:0] bb_conv2d3x3_B9_out_c0_exe976;
    wire [31:0] bb_conv2d3x3_B9_out_inc_2;
    wire [31:0] bb_conv2d3x3_B9_out_j_062145;
    wire [31:0] bb_conv2d3x3_B9_out_k_059159;
    wire [30:0] bb_conv2d3x3_B9_out_lm25_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B9_out_lm25_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B9_out_lm25_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B9_out_lm25_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B9_out_lm25_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B9_out_lm25_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B9_out_lm25_conv2d3x3_avm_writedata;
    wire [30:0] bb_conv2d3x3_B9_out_lm27_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B9_out_lm27_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B9_out_lm27_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B9_out_lm27_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B9_out_lm27_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B9_out_lm27_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B9_out_lm27_conv2d3x3_avm_writedata;
    wire [0:0] bb_conv2d3x3_B9_out_stall_in_0;
    wire [0:0] bb_conv2d3x3_B9_out_stall_out_0;
    wire [0:0] bb_conv2d3x3_B9_out_stall_out_1;
    wire [31:0] bb_conv2d3x3_B9_out_unnamed_conv2d3x313;
    wire [0:0] bb_conv2d3x3_B9_out_valid_in_0;
    wire [0:0] bb_conv2d3x3_B9_out_valid_in_1;
    wire [0:0] bb_conv2d3x3_B9_out_valid_out_0;
    wire [0:0] bb_conv2d3x3_B9_out_valid_out_1;
    wire [31:0] c_i32_0143_q;
    wire [0:0] conv2d3x3_B1_x_i_capture;
    wire conv2d3x3_B1_x_i_capture_bitsignaltemp;
    wire [0:0] conv2d3x3_B1_x_i_clear;
    wire conv2d3x3_B1_x_i_clear_bitsignaltemp;
    wire [0:0] conv2d3x3_B1_x_i_enable;
    wire conv2d3x3_B1_x_i_enable_bitsignaltemp;
    wire [0:0] conv2d3x3_B1_x_i_shift;
    wire conv2d3x3_B1_x_i_shift_bitsignaltemp;
    wire [0:0] conv2d3x3_B1_x_i_stall_pred;
    wire conv2d3x3_B1_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv2d3x3_B1_x_i_stall_succ;
    wire conv2d3x3_B1_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv2d3x3_B1_x_i_valid_loop;
    wire conv2d3x3_B1_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv2d3x3_B1_x_i_valid_pred;
    wire conv2d3x3_B1_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv2d3x3_B1_x_i_valid_succ;
    wire conv2d3x3_B1_x_i_valid_succ_bitsignaltemp;
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
    wire [0:0] conv2d3x3_B9_x_i_capture;
    wire conv2d3x3_B9_x_i_capture_bitsignaltemp;
    wire [0:0] conv2d3x3_B9_x_i_clear;
    wire conv2d3x3_B9_x_i_clear_bitsignaltemp;
    wire [0:0] conv2d3x3_B9_x_i_enable;
    wire conv2d3x3_B9_x_i_enable_bitsignaltemp;
    wire [0:0] conv2d3x3_B9_x_i_shift;
    wire conv2d3x3_B9_x_i_shift_bitsignaltemp;
    wire [0:0] conv2d3x3_B9_x_i_stall_pred;
    wire conv2d3x3_B9_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv2d3x3_B9_x_i_stall_succ;
    wire conv2d3x3_B9_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv2d3x3_B9_x_i_valid_loop;
    wire conv2d3x3_B9_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv2d3x3_B9_x_i_valid_pred;
    wire conv2d3x3_B9_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv2d3x3_B9_x_i_valid_succ;
    wire conv2d3x3_B9_x_i_valid_succ_bitsignaltemp;
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
    wire [0:0] bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_14_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_15_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_16_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_18_tpl;
    wire [31:0] bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_19_tpl;
    wire [0:0] bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_15_tpl;
    wire [31:0] bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_16_tpl;
    wire [0:0] bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [31:0] bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [0:0] bb_conv2d3x3_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_15_tpl;
    wire [0:0] bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_16_tpl;
    wire [31:0] bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_18_tpl;
    wire [31:0] bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_19_tpl;
    wire [0:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [0:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [31:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_18_tpl;
    wire [31:0] bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_19_tpl;
    wire [0:0] bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_14_tpl;
    wire [31:0] bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_15_tpl;
    wire [31:0] bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_16_tpl;
    wire [31:0] bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_17_tpl;
    wire [0:0] bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_15_tpl;
    wire [0:0] bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_16_tpl;
    wire [31:0] bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_18_tpl;
    wire [31:0] bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_19_tpl;
    wire [31:0] bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_20_tpl;
    wire [31:0] bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_21_tpl;
    wire [31:0] bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_22_tpl;
    wire [31:0] bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_23_tpl;
    wire [0:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_3_tpl;
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
    wire [0:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [31:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_18_tpl;
    wire [31:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_19_tpl;
    wire [31:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_20_tpl;
    wire [31:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_21_tpl;
    wire [31:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_22_tpl;
    wire [31:0] bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_23_tpl;
    wire [0:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_14_tpl;
    wire [31:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_15_tpl;
    wire [31:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_16_tpl;
    wire [31:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_18_tpl;
    wire [31:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_19_tpl;
    wire [31:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_20_tpl;
    wire [31:0] bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_21_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_15_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_16_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_18_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_19_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_20_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_21_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_22_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_23_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_24_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [0:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_18_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_19_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_20_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_21_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_22_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_23_tpl;
    wire [31:0] bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_24_tpl;
    wire [0:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_14_tpl;
    wire [31:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_15_tpl;
    wire [31:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_16_tpl;
    wire [31:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_18_tpl;
    wire [31:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_19_tpl;
    wire [31:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_20_tpl;
    wire [31:0] bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_21_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_15_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_16_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_18_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_19_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_20_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_21_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_22_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [0:0] bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_18_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_19_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_20_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_21_tpl;
    wire [31:0] bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_22_tpl;


    // bb_conv2d3x3_B5_sr_0_aunroll_x(BLACKBOX,158)
    conv2d3x3_bb_B5_sr_0 thebb_conv2d3x3_B5_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B5_out_stall_out_0),
        .in_i_valid(bb_conv2d3x3_B5_out_valid_out_0),
        .in_i_data_0_tpl(bb_conv2d3x3_B5_out_inc),
        .in_i_data_1_tpl(bb_conv2d3x3_B5_out_c0_exe1214),
        .in_i_data_2_tpl(bb_conv2d3x3_B5_out_c0_exe111),
        .in_i_data_3_tpl(bb_conv2d3x3_B5_out_c0_exe322),
        .in_i_data_4_tpl(bb_conv2d3x3_B5_out_c0_exe431),
        .in_i_data_5_tpl(bb_conv2d3x3_B5_out_c0_exe542),
        .in_i_data_6_tpl(bb_conv2d3x3_B5_out_c0_exe649),
        .in_i_data_7_tpl(bb_conv2d3x3_B5_out_c0_exe752),
        .in_i_data_8_tpl(bb_conv2d3x3_B5_out_c0_exe861),
        .in_i_data_9_tpl(bb_conv2d3x3_B5_out_c0_exe971),
        .in_i_data_10_tpl(bb_conv2d3x3_B5_out_c0_exe1081),
        .in_i_data_11_tpl(bb_conv2d3x3_B5_out_c0_exe1190),
        .in_i_data_12_tpl(bb_conv2d3x3_B5_out_c0_exe12101),
        .in_i_data_13_tpl(bb_conv2d3x3_B5_out_c0_exe13111),
        .in_i_data_14_tpl(bb_conv2d3x3_B5_out_c0_exe14120),
        .in_i_data_15_tpl(bb_conv2d3x3_B5_out_c0_exe15130),
        .in_i_data_16_tpl(bb_conv2d3x3_B5_out_c0_exe16140),
        .in_i_data_17_tpl(bb_conv2d3x3_B5_out_unnamed_conv2d3x37),
        .in_i_data_18_tpl(bb_conv2d3x3_B5_out_j_062149),
        .in_i_data_19_tpl(bb_conv2d3x3_B5_out_c0_exe1186151),
        .in_i_data_20_tpl(bb_conv2d3x3_B5_out_k_059163),
        .in_i_data_21_tpl(bb_conv2d3x3_B5_out_c0_exe1195167),
        .in_i_data_22_tpl(bb_conv2d3x3_B5_out_c0_exe2196168),
        .in_i_data_23_tpl(bb_conv2d3x3_B5_out_mul46_add4172),
        .out_o_stall(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_21_tpl),
        .out_o_data_22_tpl(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_22_tpl),
        .out_o_data_23_tpl(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_23_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B5(BLACKBOX,8)
    conv2d3x3_bb_B5 thebb_conv2d3x3_B5 (
        .in_c0_exe1081_0(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe1081_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe111_0(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe111_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe1186151_0(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_19_tpl),
        .in_c0_exe1186151_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_19_tpl),
        .in_c0_exe1190_0(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe1190_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe1195167_0(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_21_tpl),
        .in_c0_exe1195167_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_21_tpl),
        .in_c0_exe12101_0(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_12_tpl),
        .in_c0_exe12101_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_c0_exe13111_0(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_13_tpl),
        .in_c0_exe13111_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_c0_exe14120_0(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_14_tpl),
        .in_c0_exe14120_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_c0_exe15130_0(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_15_tpl),
        .in_c0_exe15130_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_c0_exe16140_0(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_16_tpl),
        .in_c0_exe16140_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_c0_exe2196168_0(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_22_tpl),
        .in_c0_exe2196168_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_22_tpl),
        .in_c0_exe322_0(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe322_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe431_0(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe431_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe542_0(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe542_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe649_0(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe649_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe752_0(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe752_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe861_0(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe861_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe971_0(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe971_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_flush(in_start),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_j_062149_0(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_18_tpl),
        .in_j_062149_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_k_059163_0(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_20_tpl),
        .in_k_059163_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_20_tpl),
        .in_lm13_conv2d3x3_avm_readdata(in_lm13_conv2d3x3_avm_readdata),
        .in_lm13_conv2d3x3_avm_readdatavalid(in_lm13_conv2d3x3_avm_readdatavalid),
        .in_lm13_conv2d3x3_avm_waitrequest(in_lm13_conv2d3x3_avm_waitrequest),
        .in_lm13_conv2d3x3_avm_writeack(in_lm13_conv2d3x3_avm_writeack),
        .in_lm_conv2d3x3_avm_readdata(in_lm_conv2d3x3_avm_readdata),
        .in_lm_conv2d3x3_avm_readdatavalid(in_lm_conv2d3x3_avm_readdatavalid),
        .in_lm_conv2d3x3_avm_waitrequest(in_lm_conv2d3x3_avm_waitrequest),
        .in_lm_conv2d3x3_avm_writeack(in_lm_conv2d3x3_avm_writeack),
        .in_m_053_0(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_m_053_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_mul46_add4172_0(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_23_tpl),
        .in_mul46_add4172_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_23_tpl),
        .in_output_size(in_arg_output_size),
        .in_pad(in_arg_pad),
        .in_stall_in_0(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_stall),
        .in_stride(in_arg_stride),
        .in_tmp_252_0(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_tmp_252_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_unnamed_conv2d3x37_0(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_data_17_tpl),
        .in_unnamed_conv2d3x37_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_valid_in_0(bb_conv2d3x3_B5_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1081(bb_conv2d3x3_B5_out_c0_exe1081),
        .out_c0_exe111(bb_conv2d3x3_B5_out_c0_exe111),
        .out_c0_exe1186151(bb_conv2d3x3_B5_out_c0_exe1186151),
        .out_c0_exe1190(bb_conv2d3x3_B5_out_c0_exe1190),
        .out_c0_exe1195167(bb_conv2d3x3_B5_out_c0_exe1195167),
        .out_c0_exe12101(bb_conv2d3x3_B5_out_c0_exe12101),
        .out_c0_exe1214(bb_conv2d3x3_B5_out_c0_exe1214),
        .out_c0_exe13111(bb_conv2d3x3_B5_out_c0_exe13111),
        .out_c0_exe14120(bb_conv2d3x3_B5_out_c0_exe14120),
        .out_c0_exe15130(bb_conv2d3x3_B5_out_c0_exe15130),
        .out_c0_exe16140(bb_conv2d3x3_B5_out_c0_exe16140),
        .out_c0_exe2196168(bb_conv2d3x3_B5_out_c0_exe2196168),
        .out_c0_exe322(bb_conv2d3x3_B5_out_c0_exe322),
        .out_c0_exe431(bb_conv2d3x3_B5_out_c0_exe431),
        .out_c0_exe542(bb_conv2d3x3_B5_out_c0_exe542),
        .out_c0_exe649(bb_conv2d3x3_B5_out_c0_exe649),
        .out_c0_exe752(bb_conv2d3x3_B5_out_c0_exe752),
        .out_c0_exe861(bb_conv2d3x3_B5_out_c0_exe861),
        .out_c0_exe971(bb_conv2d3x3_B5_out_c0_exe971),
        .out_inc(bb_conv2d3x3_B5_out_inc),
        .out_j_062149(bb_conv2d3x3_B5_out_j_062149),
        .out_k_059163(bb_conv2d3x3_B5_out_k_059163),
        .out_lm13_conv2d3x3_avm_address(bb_conv2d3x3_B5_out_lm13_conv2d3x3_avm_address),
        .out_lm13_conv2d3x3_avm_burstcount(bb_conv2d3x3_B5_out_lm13_conv2d3x3_avm_burstcount),
        .out_lm13_conv2d3x3_avm_byteenable(bb_conv2d3x3_B5_out_lm13_conv2d3x3_avm_byteenable),
        .out_lm13_conv2d3x3_avm_enable(bb_conv2d3x3_B5_out_lm13_conv2d3x3_avm_enable),
        .out_lm13_conv2d3x3_avm_read(bb_conv2d3x3_B5_out_lm13_conv2d3x3_avm_read),
        .out_lm13_conv2d3x3_avm_write(bb_conv2d3x3_B5_out_lm13_conv2d3x3_avm_write),
        .out_lm13_conv2d3x3_avm_writedata(bb_conv2d3x3_B5_out_lm13_conv2d3x3_avm_writedata),
        .out_lm_conv2d3x3_avm_address(bb_conv2d3x3_B5_out_lm_conv2d3x3_avm_address),
        .out_lm_conv2d3x3_avm_burstcount(bb_conv2d3x3_B5_out_lm_conv2d3x3_avm_burstcount),
        .out_lm_conv2d3x3_avm_byteenable(bb_conv2d3x3_B5_out_lm_conv2d3x3_avm_byteenable),
        .out_lm_conv2d3x3_avm_enable(bb_conv2d3x3_B5_out_lm_conv2d3x3_avm_enable),
        .out_lm_conv2d3x3_avm_read(bb_conv2d3x3_B5_out_lm_conv2d3x3_avm_read),
        .out_lm_conv2d3x3_avm_write(bb_conv2d3x3_B5_out_lm_conv2d3x3_avm_write),
        .out_lm_conv2d3x3_avm_writedata(bb_conv2d3x3_B5_out_lm_conv2d3x3_avm_writedata),
        .out_mul46_add4172(bb_conv2d3x3_B5_out_mul46_add4172),
        .out_stall_in_0(bb_conv2d3x3_B5_out_stall_in_0),
        .out_stall_out_0(bb_conv2d3x3_B5_out_stall_out_0),
        .out_stall_out_1(bb_conv2d3x3_B5_out_stall_out_1),
        .out_unnamed_conv2d3x37(bb_conv2d3x3_B5_out_unnamed_conv2d3x37),
        .out_valid_in_0(bb_conv2d3x3_B5_out_valid_in_0),
        .out_valid_in_1(bb_conv2d3x3_B5_out_valid_in_1),
        .out_valid_out_0(bb_conv2d3x3_B5_out_valid_out_0),
        .out_valid_out_1(bb_conv2d3x3_B5_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B7_sr_0_aunroll_x(BLACKBOX,161)
    conv2d3x3_bb_B7_sr_0 thebb_conv2d3x3_B7_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B7_out_stall_out_0),
        .in_i_valid(bb_conv2d3x3_B7_out_valid_out_0),
        .in_i_data_0_tpl(bb_conv2d3x3_B7_out_inc_1),
        .in_i_data_1_tpl(bb_conv2d3x3_B7_out_c0_exe1234),
        .in_i_data_2_tpl(bb_conv2d3x3_B7_out_c0_exe19),
        .in_i_data_3_tpl(bb_conv2d3x3_B7_out_c0_exe320),
        .in_i_data_4_tpl(bb_conv2d3x3_B7_out_c0_exe429),
        .in_i_data_5_tpl(bb_conv2d3x3_B7_out_c0_exe540),
        .in_i_data_6_tpl(bb_conv2d3x3_B7_out_c0_exe647),
        .in_i_data_7_tpl(bb_conv2d3x3_B7_out_c0_exe759),
        .in_i_data_8_tpl(bb_conv2d3x3_B7_out_c0_exe868),
        .in_i_data_9_tpl(bb_conv2d3x3_B7_out_c0_exe978),
        .in_i_data_10_tpl(bb_conv2d3x3_B7_out_c0_exe1079),
        .in_i_data_11_tpl(bb_conv2d3x3_B7_out_c0_exe1188),
        .in_i_data_12_tpl(bb_conv2d3x3_B7_out_c0_exe1299),
        .in_i_data_13_tpl(bb_conv2d3x3_B7_out_c0_exe13109),
        .in_i_data_14_tpl(bb_conv2d3x3_B7_out_c0_exe14118),
        .in_i_data_15_tpl(bb_conv2d3x3_B7_out_c0_exe15128),
        .in_i_data_16_tpl(bb_conv2d3x3_B7_out_c0_exe16138),
        .in_i_data_17_tpl(bb_conv2d3x3_B7_out_unnamed_conv2d3x310),
        .in_i_data_18_tpl(bb_conv2d3x3_B7_out_j_062147),
        .in_i_data_19_tpl(bb_conv2d3x3_B7_out_c0_exe1186156),
        .in_i_data_20_tpl(bb_conv2d3x3_B7_out_k_059161),
        .in_i_data_21_tpl(bb_conv2d3x3_B7_out_c0_exe1195165),
        .in_i_data_22_tpl(bb_conv2d3x3_B7_out_mul46_add4170),
        .in_i_data_23_tpl(bb_conv2d3x3_B7_out_c0_exe1222174),
        .in_i_data_24_tpl(bb_conv2d3x3_B7_out_add48_1_le175),
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
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B7(BLACKBOX,10)
    conv2d3x3_bb_B7 thebb_conv2d3x3_B7 (
        .in_add48_1_le175_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_24_tpl),
        .in_add48_1_le175_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_24_tpl),
        .in_c0_exe1079_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe1079_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe1186156_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_19_tpl),
        .in_c0_exe1186156_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_19_tpl),
        .in_c0_exe1188_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe1188_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe1195165_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_21_tpl),
        .in_c0_exe1195165_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_21_tpl),
        .in_c0_exe1222174_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_23_tpl),
        .in_c0_exe1222174_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_23_tpl),
        .in_c0_exe1299_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_12_tpl),
        .in_c0_exe1299_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_c0_exe13109_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_13_tpl),
        .in_c0_exe13109_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_c0_exe14118_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_14_tpl),
        .in_c0_exe14118_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_c0_exe15128_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_15_tpl),
        .in_c0_exe15128_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_c0_exe16138_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_16_tpl),
        .in_c0_exe16138_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_c0_exe19_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe19_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe320_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe320_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe429_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe429_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe540_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe540_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe647_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe647_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe759_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe759_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe868_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe868_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe978_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe978_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_flush(in_start),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_j_062147_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_18_tpl),
        .in_j_062147_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_k_059161_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_20_tpl),
        .in_k_059161_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_20_tpl),
        .in_lm18_conv2d3x3_avm_readdata(in_lm18_conv2d3x3_avm_readdata),
        .in_lm18_conv2d3x3_avm_readdatavalid(in_lm18_conv2d3x3_avm_readdatavalid),
        .in_lm18_conv2d3x3_avm_waitrequest(in_lm18_conv2d3x3_avm_waitrequest),
        .in_lm18_conv2d3x3_avm_writeack(in_lm18_conv2d3x3_avm_writeack),
        .in_lm20_conv2d3x3_avm_readdata(in_lm20_conv2d3x3_avm_readdata),
        .in_lm20_conv2d3x3_avm_readdatavalid(in_lm20_conv2d3x3_avm_readdatavalid),
        .in_lm20_conv2d3x3_avm_waitrequest(in_lm20_conv2d3x3_avm_waitrequest),
        .in_lm20_conv2d3x3_avm_writeack(in_lm20_conv2d3x3_avm_writeack),
        .in_m_053_1_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_m_053_1_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_mul46_add4170_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_22_tpl),
        .in_mul46_add4170_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_22_tpl),
        .in_output_size(in_arg_output_size),
        .in_pad(in_arg_pad),
        .in_stall_in_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_stall),
        .in_stride(in_arg_stride),
        .in_tmp_252_1_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_tmp_252_1_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_unnamed_conv2d3x310_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_data_17_tpl),
        .in_unnamed_conv2d3x310_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_valid_in_0(bb_conv2d3x3_B7_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_valid),
        .out_add48_1_le175(bb_conv2d3x3_B7_out_add48_1_le175),
        .out_c0_exe1079(bb_conv2d3x3_B7_out_c0_exe1079),
        .out_c0_exe1186156(bb_conv2d3x3_B7_out_c0_exe1186156),
        .out_c0_exe1188(bb_conv2d3x3_B7_out_c0_exe1188),
        .out_c0_exe1195165(bb_conv2d3x3_B7_out_c0_exe1195165),
        .out_c0_exe1222174(bb_conv2d3x3_B7_out_c0_exe1222174),
        .out_c0_exe1234(bb_conv2d3x3_B7_out_c0_exe1234),
        .out_c0_exe1299(bb_conv2d3x3_B7_out_c0_exe1299),
        .out_c0_exe13109(bb_conv2d3x3_B7_out_c0_exe13109),
        .out_c0_exe14118(bb_conv2d3x3_B7_out_c0_exe14118),
        .out_c0_exe15128(bb_conv2d3x3_B7_out_c0_exe15128),
        .out_c0_exe16138(bb_conv2d3x3_B7_out_c0_exe16138),
        .out_c0_exe19(bb_conv2d3x3_B7_out_c0_exe19),
        .out_c0_exe320(bb_conv2d3x3_B7_out_c0_exe320),
        .out_c0_exe429(bb_conv2d3x3_B7_out_c0_exe429),
        .out_c0_exe540(bb_conv2d3x3_B7_out_c0_exe540),
        .out_c0_exe647(bb_conv2d3x3_B7_out_c0_exe647),
        .out_c0_exe759(bb_conv2d3x3_B7_out_c0_exe759),
        .out_c0_exe868(bb_conv2d3x3_B7_out_c0_exe868),
        .out_c0_exe978(bb_conv2d3x3_B7_out_c0_exe978),
        .out_inc_1(bb_conv2d3x3_B7_out_inc_1),
        .out_j_062147(bb_conv2d3x3_B7_out_j_062147),
        .out_k_059161(bb_conv2d3x3_B7_out_k_059161),
        .out_lm18_conv2d3x3_avm_address(bb_conv2d3x3_B7_out_lm18_conv2d3x3_avm_address),
        .out_lm18_conv2d3x3_avm_burstcount(bb_conv2d3x3_B7_out_lm18_conv2d3x3_avm_burstcount),
        .out_lm18_conv2d3x3_avm_byteenable(bb_conv2d3x3_B7_out_lm18_conv2d3x3_avm_byteenable),
        .out_lm18_conv2d3x3_avm_enable(bb_conv2d3x3_B7_out_lm18_conv2d3x3_avm_enable),
        .out_lm18_conv2d3x3_avm_read(bb_conv2d3x3_B7_out_lm18_conv2d3x3_avm_read),
        .out_lm18_conv2d3x3_avm_write(bb_conv2d3x3_B7_out_lm18_conv2d3x3_avm_write),
        .out_lm18_conv2d3x3_avm_writedata(bb_conv2d3x3_B7_out_lm18_conv2d3x3_avm_writedata),
        .out_lm20_conv2d3x3_avm_address(bb_conv2d3x3_B7_out_lm20_conv2d3x3_avm_address),
        .out_lm20_conv2d3x3_avm_burstcount(bb_conv2d3x3_B7_out_lm20_conv2d3x3_avm_burstcount),
        .out_lm20_conv2d3x3_avm_byteenable(bb_conv2d3x3_B7_out_lm20_conv2d3x3_avm_byteenable),
        .out_lm20_conv2d3x3_avm_enable(bb_conv2d3x3_B7_out_lm20_conv2d3x3_avm_enable),
        .out_lm20_conv2d3x3_avm_read(bb_conv2d3x3_B7_out_lm20_conv2d3x3_avm_read),
        .out_lm20_conv2d3x3_avm_write(bb_conv2d3x3_B7_out_lm20_conv2d3x3_avm_write),
        .out_lm20_conv2d3x3_avm_writedata(bb_conv2d3x3_B7_out_lm20_conv2d3x3_avm_writedata),
        .out_mul46_add4170(bb_conv2d3x3_B7_out_mul46_add4170),
        .out_stall_in_0(bb_conv2d3x3_B7_out_stall_in_0),
        .out_stall_out_0(bb_conv2d3x3_B7_out_stall_out_0),
        .out_stall_out_1(bb_conv2d3x3_B7_out_stall_out_1),
        .out_unnamed_conv2d3x310(bb_conv2d3x3_B7_out_unnamed_conv2d3x310),
        .out_valid_in_0(bb_conv2d3x3_B7_out_valid_in_0),
        .out_valid_in_1(bb_conv2d3x3_B7_out_valid_in_1),
        .out_valid_out_0(bb_conv2d3x3_B7_out_valid_out_0),
        .out_valid_out_1(bb_conv2d3x3_B7_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B9_sr_0_aunroll_x(BLACKBOX,164)
    conv2d3x3_bb_B9_sr_0 thebb_conv2d3x3_B9_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B9_out_stall_out_0),
        .in_i_valid(bb_conv2d3x3_B9_out_valid_out_0),
        .in_i_data_0_tpl(bb_conv2d3x3_B9_out_inc_2),
        .in_i_data_1_tpl(bb_conv2d3x3_B9_out_c0_exe1254),
        .in_i_data_2_tpl(bb_conv2d3x3_B9_out_c0_exe17),
        .in_i_data_3_tpl(bb_conv2d3x3_B9_out_c0_exe318),
        .in_i_data_4_tpl(bb_conv2d3x3_B9_out_c0_exe427),
        .in_i_data_5_tpl(bb_conv2d3x3_B9_out_c0_exe538),
        .in_i_data_6_tpl(bb_conv2d3x3_B9_out_c0_exe645),
        .in_i_data_7_tpl(bb_conv2d3x3_B9_out_c0_exe757),
        .in_i_data_8_tpl(bb_conv2d3x3_B9_out_c0_exe866),
        .in_i_data_9_tpl(bb_conv2d3x3_B9_out_c0_exe976),
        .in_i_data_10_tpl(bb_conv2d3x3_B9_out_c0_exe1086),
        .in_i_data_11_tpl(bb_conv2d3x3_B9_out_c0_exe1196),
        .in_i_data_12_tpl(bb_conv2d3x3_B9_out_c0_exe12106),
        .in_i_data_13_tpl(bb_conv2d3x3_B9_out_c0_exe13107),
        .in_i_data_14_tpl(bb_conv2d3x3_B9_out_c0_exe14116),
        .in_i_data_15_tpl(bb_conv2d3x3_B9_out_c0_exe15126),
        .in_i_data_16_tpl(bb_conv2d3x3_B9_out_c0_exe16136),
        .in_i_data_17_tpl(bb_conv2d3x3_B9_out_unnamed_conv2d3x313),
        .in_i_data_18_tpl(bb_conv2d3x3_B9_out_j_062145),
        .in_i_data_19_tpl(bb_conv2d3x3_B9_out_c0_exe1186154),
        .in_i_data_20_tpl(bb_conv2d3x3_B9_out_k_059159),
        .in_i_data_21_tpl(bb_conv2d3x3_B9_out_c0_exe1242177),
        .in_i_data_22_tpl(bb_conv2d3x3_B9_out_add48_2178),
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
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B9(BLACKBOX,12)
    conv2d3x3_bb_B9 thebb_conv2d3x3_B9 (
        .in_add48_2178_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_22_tpl),
        .in_add48_2178_1(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_22_tpl),
        .in_c0_exe1086_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe1086_1(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe1186154_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_19_tpl),
        .in_c0_exe1186154_1(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_19_tpl),
        .in_c0_exe1196_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe1196_1(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe12106_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_12_tpl),
        .in_c0_exe12106_1(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_c0_exe1242177_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_21_tpl),
        .in_c0_exe1242177_1(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_21_tpl),
        .in_c0_exe13107_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_13_tpl),
        .in_c0_exe13107_1(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_c0_exe14116_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_14_tpl),
        .in_c0_exe14116_1(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_c0_exe15126_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_15_tpl),
        .in_c0_exe15126_1(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_c0_exe16136_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_16_tpl),
        .in_c0_exe16136_1(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_c0_exe17_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe17_1(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe318_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe318_1(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe427_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe427_1(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe538_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe538_1(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe645_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe645_1(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe757_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe757_1(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe866_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe866_1(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe976_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe976_1(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_flush(in_start),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_j_062145_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_18_tpl),
        .in_j_062145_1(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_k_059159_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_20_tpl),
        .in_k_059159_1(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_20_tpl),
        .in_lm25_conv2d3x3_avm_readdata(in_lm25_conv2d3x3_avm_readdata),
        .in_lm25_conv2d3x3_avm_readdatavalid(in_lm25_conv2d3x3_avm_readdatavalid),
        .in_lm25_conv2d3x3_avm_waitrequest(in_lm25_conv2d3x3_avm_waitrequest),
        .in_lm25_conv2d3x3_avm_writeack(in_lm25_conv2d3x3_avm_writeack),
        .in_lm27_conv2d3x3_avm_readdata(in_lm27_conv2d3x3_avm_readdata),
        .in_lm27_conv2d3x3_avm_readdatavalid(in_lm27_conv2d3x3_avm_readdatavalid),
        .in_lm27_conv2d3x3_avm_waitrequest(in_lm27_conv2d3x3_avm_waitrequest),
        .in_lm27_conv2d3x3_avm_writeack(in_lm27_conv2d3x3_avm_writeack),
        .in_m_053_2_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_m_053_2_1(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_output_size(in_arg_output_size),
        .in_pad(in_arg_pad),
        .in_stall_in_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_stall),
        .in_stride(in_arg_stride),
        .in_tmp_252_2_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_tmp_252_2_1(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_unnamed_conv2d3x313_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_data_17_tpl),
        .in_unnamed_conv2d3x313_1(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_valid_in_0(bb_conv2d3x3_B9_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_valid),
        .out_add48_2178(bb_conv2d3x3_B9_out_add48_2178),
        .out_c0_exe1086(bb_conv2d3x3_B9_out_c0_exe1086),
        .out_c0_exe1186154(bb_conv2d3x3_B9_out_c0_exe1186154),
        .out_c0_exe1196(bb_conv2d3x3_B9_out_c0_exe1196),
        .out_c0_exe12106(bb_conv2d3x3_B9_out_c0_exe12106),
        .out_c0_exe1242177(bb_conv2d3x3_B9_out_c0_exe1242177),
        .out_c0_exe1254(bb_conv2d3x3_B9_out_c0_exe1254),
        .out_c0_exe13107(bb_conv2d3x3_B9_out_c0_exe13107),
        .out_c0_exe14116(bb_conv2d3x3_B9_out_c0_exe14116),
        .out_c0_exe15126(bb_conv2d3x3_B9_out_c0_exe15126),
        .out_c0_exe16136(bb_conv2d3x3_B9_out_c0_exe16136),
        .out_c0_exe17(bb_conv2d3x3_B9_out_c0_exe17),
        .out_c0_exe318(bb_conv2d3x3_B9_out_c0_exe318),
        .out_c0_exe427(bb_conv2d3x3_B9_out_c0_exe427),
        .out_c0_exe538(bb_conv2d3x3_B9_out_c0_exe538),
        .out_c0_exe645(bb_conv2d3x3_B9_out_c0_exe645),
        .out_c0_exe757(bb_conv2d3x3_B9_out_c0_exe757),
        .out_c0_exe866(bb_conv2d3x3_B9_out_c0_exe866),
        .out_c0_exe976(bb_conv2d3x3_B9_out_c0_exe976),
        .out_inc_2(bb_conv2d3x3_B9_out_inc_2),
        .out_j_062145(bb_conv2d3x3_B9_out_j_062145),
        .out_k_059159(bb_conv2d3x3_B9_out_k_059159),
        .out_lm25_conv2d3x3_avm_address(bb_conv2d3x3_B9_out_lm25_conv2d3x3_avm_address),
        .out_lm25_conv2d3x3_avm_burstcount(bb_conv2d3x3_B9_out_lm25_conv2d3x3_avm_burstcount),
        .out_lm25_conv2d3x3_avm_byteenable(bb_conv2d3x3_B9_out_lm25_conv2d3x3_avm_byteenable),
        .out_lm25_conv2d3x3_avm_enable(bb_conv2d3x3_B9_out_lm25_conv2d3x3_avm_enable),
        .out_lm25_conv2d3x3_avm_read(bb_conv2d3x3_B9_out_lm25_conv2d3x3_avm_read),
        .out_lm25_conv2d3x3_avm_write(bb_conv2d3x3_B9_out_lm25_conv2d3x3_avm_write),
        .out_lm25_conv2d3x3_avm_writedata(bb_conv2d3x3_B9_out_lm25_conv2d3x3_avm_writedata),
        .out_lm27_conv2d3x3_avm_address(bb_conv2d3x3_B9_out_lm27_conv2d3x3_avm_address),
        .out_lm27_conv2d3x3_avm_burstcount(bb_conv2d3x3_B9_out_lm27_conv2d3x3_avm_burstcount),
        .out_lm27_conv2d3x3_avm_byteenable(bb_conv2d3x3_B9_out_lm27_conv2d3x3_avm_byteenable),
        .out_lm27_conv2d3x3_avm_enable(bb_conv2d3x3_B9_out_lm27_conv2d3x3_avm_enable),
        .out_lm27_conv2d3x3_avm_read(bb_conv2d3x3_B9_out_lm27_conv2d3x3_avm_read),
        .out_lm27_conv2d3x3_avm_write(bb_conv2d3x3_B9_out_lm27_conv2d3x3_avm_write),
        .out_lm27_conv2d3x3_avm_writedata(bb_conv2d3x3_B9_out_lm27_conv2d3x3_avm_writedata),
        .out_stall_in_0(bb_conv2d3x3_B9_out_stall_in_0),
        .out_stall_out_0(bb_conv2d3x3_B9_out_stall_out_0),
        .out_stall_out_1(bb_conv2d3x3_B9_out_stall_out_1),
        .out_unnamed_conv2d3x313(bb_conv2d3x3_B9_out_unnamed_conv2d3x313),
        .out_valid_in_0(bb_conv2d3x3_B9_out_valid_in_0),
        .out_valid_in_1(bb_conv2d3x3_B9_out_valid_in_1),
        .out_valid_out_0(bb_conv2d3x3_B9_out_valid_out_0),
        .out_valid_out_1(bb_conv2d3x3_B9_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_0143(CONSTANT,24)
    assign c_i32_0143_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_conv2d3x3_B9_sr_1_aunroll_x(BLACKBOX,165)
    conv2d3x3_bb_B9_sr_1 thebb_conv2d3x3_B9_sr_1_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B9_out_stall_out_1),
        .in_i_valid(loop_limiter_conv2d3x34_out_o_valid),
        .in_i_data_0_tpl(c_i32_0143_q),
        .in_i_data_1_tpl(bb_conv2d3x3_B8_out_c0_exe1234176),
        .in_i_data_2_tpl(bb_conv2d3x3_B8_out_c0_exe18),
        .in_i_data_3_tpl(bb_conv2d3x3_B8_out_c0_exe319),
        .in_i_data_4_tpl(bb_conv2d3x3_B8_out_c0_exe428),
        .in_i_data_5_tpl(bb_conv2d3x3_B8_out_c0_exe539),
        .in_i_data_6_tpl(bb_conv2d3x3_B8_out_c0_exe646),
        .in_i_data_7_tpl(bb_conv2d3x3_B8_out_c0_exe758),
        .in_i_data_8_tpl(bb_conv2d3x3_B8_out_c0_exe867),
        .in_i_data_9_tpl(bb_conv2d3x3_B8_out_c0_exe977),
        .in_i_data_10_tpl(bb_conv2d3x3_B8_out_c0_exe1087),
        .in_i_data_11_tpl(bb_conv2d3x3_B8_out_c0_exe1197),
        .in_i_data_12_tpl(bb_conv2d3x3_B8_out_c0_exe1298),
        .in_i_data_13_tpl(bb_conv2d3x3_B8_out_c0_exe13108),
        .in_i_data_14_tpl(bb_conv2d3x3_B8_out_c0_exe14117),
        .in_i_data_15_tpl(bb_conv2d3x3_B8_out_c0_exe15127),
        .in_i_data_16_tpl(bb_conv2d3x3_B8_out_c0_exe16137),
        .in_i_data_17_tpl(bb_conv2d3x3_B8_out_unnamed_conv2d3x312),
        .in_i_data_18_tpl(bb_conv2d3x3_B8_out_j_062146),
        .in_i_data_19_tpl(bb_conv2d3x3_B8_out_c0_exe1186155),
        .in_i_data_20_tpl(bb_conv2d3x3_B8_out_k_059160),
        .in_i_data_21_tpl(bb_conv2d3x3_B8_out_c0_exe1242),
        .in_i_data_22_tpl(bb_conv2d3x3_B8_out_add48_2),
        .out_o_stall(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_21_tpl),
        .out_o_data_22_tpl(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_data_22_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv2d3x34(BLACKBOX,91)
    conv2d3x3_loop_limiter_4 theloop_limiter_conv2d3x34 (
        .in_i_stall(bb_conv2d3x3_B9_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_conv2d3x3_B8_out_valid_out_0),
        .in_i_valid_exit(bb_conv2d3x3_B9_out_valid_out_1),
        .out_o_stall(loop_limiter_conv2d3x34_out_o_stall),
        .out_o_valid(loop_limiter_conv2d3x34_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B8(BLACKBOX,11)
    conv2d3x3_bb_B8 thebb_conv2d3x3_B8 (
        .in_c0_exe1087_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe1186155_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_17_tpl),
        .in_c0_exe1195164_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_19_tpl),
        .in_c0_exe1197_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe1234176_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_21_tpl),
        .in_c0_exe1298_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe13108_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe14117_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_12_tpl),
        .in_c0_exe15127_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_13_tpl),
        .in_c0_exe16137_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_14_tpl),
        .in_c0_exe18_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe319_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe428_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe539_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe646_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe758_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe867_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe977_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_j_062146_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_16_tpl),
        .in_k_059160_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_18_tpl),
        .in_mul46_add4169_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_20_tpl),
        .in_output_size(in_arg_output_size),
        .in_pad(in_arg_pad),
        .in_stall_in_0(loop_limiter_conv2d3x34_out_o_stall),
        .in_stride(in_arg_stride),
        .in_unnamed_conv2d3x312_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_15_tpl),
        .in_valid_in_0(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_valid),
        .out_add48_2(bb_conv2d3x3_B8_out_add48_2),
        .out_c0_exe1087(bb_conv2d3x3_B8_out_c0_exe1087),
        .out_c0_exe1186155(bb_conv2d3x3_B8_out_c0_exe1186155),
        .out_c0_exe1197(bb_conv2d3x3_B8_out_c0_exe1197),
        .out_c0_exe1234176(bb_conv2d3x3_B8_out_c0_exe1234176),
        .out_c0_exe1242(bb_conv2d3x3_B8_out_c0_exe1242),
        .out_c0_exe1298(bb_conv2d3x3_B8_out_c0_exe1298),
        .out_c0_exe13108(bb_conv2d3x3_B8_out_c0_exe13108),
        .out_c0_exe14117(bb_conv2d3x3_B8_out_c0_exe14117),
        .out_c0_exe15127(bb_conv2d3x3_B8_out_c0_exe15127),
        .out_c0_exe16137(bb_conv2d3x3_B8_out_c0_exe16137),
        .out_c0_exe18(bb_conv2d3x3_B8_out_c0_exe18),
        .out_c0_exe319(bb_conv2d3x3_B8_out_c0_exe319),
        .out_c0_exe428(bb_conv2d3x3_B8_out_c0_exe428),
        .out_c0_exe539(bb_conv2d3x3_B8_out_c0_exe539),
        .out_c0_exe646(bb_conv2d3x3_B8_out_c0_exe646),
        .out_c0_exe758(bb_conv2d3x3_B8_out_c0_exe758),
        .out_c0_exe867(bb_conv2d3x3_B8_out_c0_exe867),
        .out_c0_exe977(bb_conv2d3x3_B8_out_c0_exe977),
        .out_j_062146(bb_conv2d3x3_B8_out_j_062146),
        .out_k_059160(bb_conv2d3x3_B8_out_k_059160),
        .out_stall_out_0(bb_conv2d3x3_B8_out_stall_out_0),
        .out_unnamed_conv2d3x312(bb_conv2d3x3_B8_out_unnamed_conv2d3x312),
        .out_valid_out_0(bb_conv2d3x3_B8_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B8_sr_0_aunroll_x(BLACKBOX,163)
    conv2d3x3_bb_B8_sr_0 thebb_conv2d3x3_B8_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B8_out_stall_out_0),
        .in_i_valid(bb_conv2d3x3_B7_out_valid_out_1),
        .in_i_data_0_tpl(bb_conv2d3x3_B7_out_c0_exe19),
        .in_i_data_1_tpl(bb_conv2d3x3_B7_out_c0_exe320),
        .in_i_data_2_tpl(bb_conv2d3x3_B7_out_c0_exe429),
        .in_i_data_3_tpl(bb_conv2d3x3_B7_out_c0_exe540),
        .in_i_data_4_tpl(bb_conv2d3x3_B7_out_c0_exe647),
        .in_i_data_5_tpl(bb_conv2d3x3_B7_out_c0_exe759),
        .in_i_data_6_tpl(bb_conv2d3x3_B7_out_c0_exe868),
        .in_i_data_7_tpl(bb_conv2d3x3_B7_out_c0_exe978),
        .in_i_data_8_tpl(bb_conv2d3x3_B7_out_c0_exe1079),
        .in_i_data_9_tpl(bb_conv2d3x3_B7_out_c0_exe1188),
        .in_i_data_10_tpl(bb_conv2d3x3_B7_out_c0_exe1299),
        .in_i_data_11_tpl(bb_conv2d3x3_B7_out_c0_exe13109),
        .in_i_data_12_tpl(bb_conv2d3x3_B7_out_c0_exe14118),
        .in_i_data_13_tpl(bb_conv2d3x3_B7_out_c0_exe15128),
        .in_i_data_14_tpl(bb_conv2d3x3_B7_out_c0_exe16138),
        .in_i_data_15_tpl(bb_conv2d3x3_B7_out_unnamed_conv2d3x310),
        .in_i_data_16_tpl(bb_conv2d3x3_B7_out_j_062147),
        .in_i_data_17_tpl(bb_conv2d3x3_B7_out_c0_exe1186156),
        .in_i_data_18_tpl(bb_conv2d3x3_B7_out_k_059161),
        .in_i_data_19_tpl(bb_conv2d3x3_B7_out_c0_exe1195165),
        .in_i_data_20_tpl(bb_conv2d3x3_B7_out_mul46_add4170),
        .in_i_data_21_tpl(bb_conv2d3x3_B7_out_c0_exe1234),
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
        .out_o_data_9_tpl(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_data_21_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B7_sr_1_aunroll_x(BLACKBOX,162)
    conv2d3x3_bb_B7_sr_1 thebb_conv2d3x3_B7_sr_1_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B7_out_stall_out_1),
        .in_i_valid(loop_limiter_conv2d3x33_out_o_valid),
        .in_i_data_0_tpl(c_i32_0143_q),
        .in_i_data_1_tpl(bb_conv2d3x3_B6_out_c0_exe1214173),
        .in_i_data_2_tpl(bb_conv2d3x3_B6_out_c0_exe110),
        .in_i_data_3_tpl(bb_conv2d3x3_B6_out_c0_exe321),
        .in_i_data_4_tpl(bb_conv2d3x3_B6_out_c0_exe430),
        .in_i_data_5_tpl(bb_conv2d3x3_B6_out_c0_exe541),
        .in_i_data_6_tpl(bb_conv2d3x3_B6_out_c0_exe648),
        .in_i_data_7_tpl(bb_conv2d3x3_B6_out_c0_exe760),
        .in_i_data_8_tpl(bb_conv2d3x3_B6_out_c0_exe869),
        .in_i_data_9_tpl(bb_conv2d3x3_B6_out_c0_exe970),
        .in_i_data_10_tpl(bb_conv2d3x3_B6_out_c0_exe1080),
        .in_i_data_11_tpl(bb_conv2d3x3_B6_out_c0_exe1189),
        .in_i_data_12_tpl(bb_conv2d3x3_B6_out_c0_exe12100),
        .in_i_data_13_tpl(bb_conv2d3x3_B6_out_c0_exe13110),
        .in_i_data_14_tpl(bb_conv2d3x3_B6_out_c0_exe14119),
        .in_i_data_15_tpl(bb_conv2d3x3_B6_out_c0_exe15129),
        .in_i_data_16_tpl(bb_conv2d3x3_B6_out_c0_exe16139),
        .in_i_data_17_tpl(bb_conv2d3x3_B6_out_unnamed_conv2d3x39),
        .in_i_data_18_tpl(bb_conv2d3x3_B6_out_j_062148),
        .in_i_data_19_tpl(bb_conv2d3x3_B6_out_c0_exe1186157),
        .in_i_data_20_tpl(bb_conv2d3x3_B6_out_k_059162),
        .in_i_data_21_tpl(bb_conv2d3x3_B6_out_c0_exe1195166),
        .in_i_data_22_tpl(bb_conv2d3x3_B6_out_mul46_add4171),
        .in_i_data_23_tpl(bb_conv2d3x3_B6_out_c0_exe1222),
        .in_i_data_24_tpl(bb_conv2d3x3_B6_out_add48_1_le),
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
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv2d3x33(BLACKBOX,90)
    conv2d3x3_loop_limiter_3 theloop_limiter_conv2d3x33 (
        .in_i_stall(bb_conv2d3x3_B7_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2d3x3_B8_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_conv2d3x3_B6_out_valid_out_0),
        .in_i_valid_exit(bb_conv2d3x3_B7_out_valid_out_1),
        .out_o_stall(loop_limiter_conv2d3x33_out_o_stall),
        .out_o_valid(loop_limiter_conv2d3x33_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B6(BLACKBOX,9)
    conv2d3x3_bb_B6 thebb_conv2d3x3_B6 (
        .in_c0_exe1080_0(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe110_0(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe1186157_0(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_17_tpl),
        .in_c0_exe1189_0(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe1195166_0(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_19_tpl),
        .in_c0_exe12100_0(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe1214173_0(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_21_tpl),
        .in_c0_exe13110_0(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe14119_0(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_12_tpl),
        .in_c0_exe15129_0(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_13_tpl),
        .in_c0_exe16139_0(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_14_tpl),
        .in_c0_exe321_0(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe430_0(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe541_0(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe648_0(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe760_0(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe869_0(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe970_0(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_j_062148_0(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_16_tpl),
        .in_k_059162_0(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_18_tpl),
        .in_mul46_add4171_0(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_20_tpl),
        .in_output_size(in_arg_output_size),
        .in_pad(in_arg_pad),
        .in_stall_in_0(loop_limiter_conv2d3x33_out_o_stall),
        .in_stride(in_arg_stride),
        .in_unnamed_conv2d3x39_0(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_15_tpl),
        .in_valid_in_0(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_valid),
        .out_add48_1_le(bb_conv2d3x3_B6_out_add48_1_le),
        .out_c0_exe1080(bb_conv2d3x3_B6_out_c0_exe1080),
        .out_c0_exe110(bb_conv2d3x3_B6_out_c0_exe110),
        .out_c0_exe1186157(bb_conv2d3x3_B6_out_c0_exe1186157),
        .out_c0_exe1189(bb_conv2d3x3_B6_out_c0_exe1189),
        .out_c0_exe1195166(bb_conv2d3x3_B6_out_c0_exe1195166),
        .out_c0_exe12100(bb_conv2d3x3_B6_out_c0_exe12100),
        .out_c0_exe1214173(bb_conv2d3x3_B6_out_c0_exe1214173),
        .out_c0_exe1222(bb_conv2d3x3_B6_out_c0_exe1222),
        .out_c0_exe13110(bb_conv2d3x3_B6_out_c0_exe13110),
        .out_c0_exe14119(bb_conv2d3x3_B6_out_c0_exe14119),
        .out_c0_exe15129(bb_conv2d3x3_B6_out_c0_exe15129),
        .out_c0_exe16139(bb_conv2d3x3_B6_out_c0_exe16139),
        .out_c0_exe321(bb_conv2d3x3_B6_out_c0_exe321),
        .out_c0_exe430(bb_conv2d3x3_B6_out_c0_exe430),
        .out_c0_exe541(bb_conv2d3x3_B6_out_c0_exe541),
        .out_c0_exe648(bb_conv2d3x3_B6_out_c0_exe648),
        .out_c0_exe760(bb_conv2d3x3_B6_out_c0_exe760),
        .out_c0_exe869(bb_conv2d3x3_B6_out_c0_exe869),
        .out_c0_exe970(bb_conv2d3x3_B6_out_c0_exe970),
        .out_j_062148(bb_conv2d3x3_B6_out_j_062148),
        .out_k_059162(bb_conv2d3x3_B6_out_k_059162),
        .out_mul46_add4171(bb_conv2d3x3_B6_out_mul46_add4171),
        .out_stall_out_0(bb_conv2d3x3_B6_out_stall_out_0),
        .out_unnamed_conv2d3x39(bb_conv2d3x3_B6_out_unnamed_conv2d3x39),
        .out_valid_out_0(bb_conv2d3x3_B6_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B6_sr_0_aunroll_x(BLACKBOX,160)
    conv2d3x3_bb_B6_sr_0 thebb_conv2d3x3_B6_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B6_out_stall_out_0),
        .in_i_valid(bb_conv2d3x3_B5_out_valid_out_1),
        .in_i_data_0_tpl(bb_conv2d3x3_B5_out_c0_exe111),
        .in_i_data_1_tpl(bb_conv2d3x3_B5_out_c0_exe322),
        .in_i_data_2_tpl(bb_conv2d3x3_B5_out_c0_exe431),
        .in_i_data_3_tpl(bb_conv2d3x3_B5_out_c0_exe542),
        .in_i_data_4_tpl(bb_conv2d3x3_B5_out_c0_exe649),
        .in_i_data_5_tpl(bb_conv2d3x3_B5_out_c0_exe752),
        .in_i_data_6_tpl(bb_conv2d3x3_B5_out_c0_exe861),
        .in_i_data_7_tpl(bb_conv2d3x3_B5_out_c0_exe971),
        .in_i_data_8_tpl(bb_conv2d3x3_B5_out_c0_exe1081),
        .in_i_data_9_tpl(bb_conv2d3x3_B5_out_c0_exe1190),
        .in_i_data_10_tpl(bb_conv2d3x3_B5_out_c0_exe12101),
        .in_i_data_11_tpl(bb_conv2d3x3_B5_out_c0_exe13111),
        .in_i_data_12_tpl(bb_conv2d3x3_B5_out_c0_exe14120),
        .in_i_data_13_tpl(bb_conv2d3x3_B5_out_c0_exe15130),
        .in_i_data_14_tpl(bb_conv2d3x3_B5_out_c0_exe16140),
        .in_i_data_15_tpl(bb_conv2d3x3_B5_out_unnamed_conv2d3x37),
        .in_i_data_16_tpl(bb_conv2d3x3_B5_out_j_062149),
        .in_i_data_17_tpl(bb_conv2d3x3_B5_out_c0_exe1186151),
        .in_i_data_18_tpl(bb_conv2d3x3_B5_out_k_059163),
        .in_i_data_19_tpl(bb_conv2d3x3_B5_out_c0_exe1195167),
        .in_i_data_20_tpl(bb_conv2d3x3_B5_out_mul46_add4172),
        .in_i_data_21_tpl(bb_conv2d3x3_B5_out_c0_exe1214),
        .out_o_stall(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_data_21_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B5_sr_1_aunroll_x(BLACKBOX,159)
    conv2d3x3_bb_B5_sr_1 thebb_conv2d3x3_B5_sr_1_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_conv2d3x32_out_o_valid),
        .in_i_data_0_tpl(c_i32_0143_q),
        .in_i_data_1_tpl(bb_conv2d3x3_B3_out_tmp_058),
        .in_i_data_2_tpl(bb_conv2d3x3_B3_out_c0_exe112),
        .in_i_data_3_tpl(bb_conv2d3x3_B3_out_c0_exe323),
        .in_i_data_4_tpl(bb_conv2d3x3_B3_out_c0_exe432),
        .in_i_data_5_tpl(bb_conv2d3x3_B3_out_c0_exe534),
        .in_i_data_6_tpl(bb_conv2d3x3_B3_out_c0_exe650),
        .in_i_data_7_tpl(bb_conv2d3x3_B3_out_c0_exe753),
        .in_i_data_8_tpl(bb_conv2d3x3_B3_out_c0_exe862),
        .in_i_data_9_tpl(bb_conv2d3x3_B3_out_c0_exe972),
        .in_i_data_10_tpl(bb_conv2d3x3_B3_out_c0_exe1082),
        .in_i_data_11_tpl(bb_conv2d3x3_B3_out_c0_exe1191),
        .in_i_data_12_tpl(bb_conv2d3x3_B3_out_c0_exe12102),
        .in_i_data_13_tpl(bb_conv2d3x3_B3_out_c0_exe13112),
        .in_i_data_14_tpl(bb_conv2d3x3_B3_out_c0_exe14121),
        .in_i_data_15_tpl(bb_conv2d3x3_B3_out_c0_exe15131),
        .in_i_data_16_tpl(bb_conv2d3x3_B3_out_c0_exe16141),
        .in_i_data_17_tpl(bb_conv2d3x3_B3_out_unnamed_conv2d3x33),
        .in_i_data_18_tpl(bb_conv2d3x3_B3_out_j_062150),
        .in_i_data_19_tpl(bb_conv2d3x3_B3_out_c0_exe1186152),
        .in_i_data_20_tpl(bb_conv2d3x3_B3_out_k_059),
        .in_i_data_21_tpl(bb_conv2d3x3_B3_out_c0_exe1195),
        .in_i_data_22_tpl(bb_conv2d3x3_B3_out_c0_exe2196),
        .in_i_data_23_tpl(bb_conv2d3x3_B3_out_mul46_add4),
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
        .out_o_data_20_tpl(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_21_tpl),
        .out_o_data_22_tpl(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_22_tpl),
        .out_o_data_23_tpl(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_data_23_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv2d3x32(BLACKBOX,89)
    conv2d3x3_loop_limiter_2 theloop_limiter_conv2d3x32 (
        .in_i_stall(bb_conv2d3x3_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2d3x3_B6_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_conv2d3x3_B3_out_valid_out_0),
        .in_i_valid_exit(bb_conv2d3x3_B5_out_valid_out_1),
        .out_o_stall(loop_limiter_conv2d3x32_out_o_stall),
        .out_o_valid(loop_limiter_conv2d3x32_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B3(BLACKBOX,6)
    conv2d3x3_bb_B3 thebb_conv2d3x3_B3 (
        .in_c0_exe1082_0(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe1082_1(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe112_0(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe112_1(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe1186152_0(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_19_tpl),
        .in_c0_exe1186152_1(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_19_tpl),
        .in_c0_exe1191_0(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe1191_1(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe12102_0(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_12_tpl),
        .in_c0_exe12102_1(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_c0_exe13112_0(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_13_tpl),
        .in_c0_exe13112_1(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_c0_exe14121_0(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_14_tpl),
        .in_c0_exe14121_1(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_c0_exe15131_0(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_15_tpl),
        .in_c0_exe15131_1(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_c0_exe16141_0(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_16_tpl),
        .in_c0_exe16141_1(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_c0_exe323_0(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe323_1(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe432_0(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe432_1(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe534_0(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe534_1(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe650_0(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe650_1(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe753_0(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe753_1(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe862_0(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe862_1(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe972_0(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe972_1(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_j_062150_0(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_18_tpl),
        .in_j_062150_1(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_k_059_0(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_k_059_1(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_output_size(in_arg_output_size),
        .in_pad(in_arg_pad),
        .in_stall_in_0(loop_limiter_conv2d3x32_out_o_stall),
        .in_stride(in_arg_stride),
        .in_tmp_058_0(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_tmp_058_1(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_unnamed_conv2d3x33_0(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_17_tpl),
        .in_unnamed_conv2d3x33_1(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_valid_in_0(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1082(bb_conv2d3x3_B3_out_c0_exe1082),
        .out_c0_exe112(bb_conv2d3x3_B3_out_c0_exe112),
        .out_c0_exe1186152(bb_conv2d3x3_B3_out_c0_exe1186152),
        .out_c0_exe1191(bb_conv2d3x3_B3_out_c0_exe1191),
        .out_c0_exe1195(bb_conv2d3x3_B3_out_c0_exe1195),
        .out_c0_exe12102(bb_conv2d3x3_B3_out_c0_exe12102),
        .out_c0_exe13112(bb_conv2d3x3_B3_out_c0_exe13112),
        .out_c0_exe14121(bb_conv2d3x3_B3_out_c0_exe14121),
        .out_c0_exe15131(bb_conv2d3x3_B3_out_c0_exe15131),
        .out_c0_exe16141(bb_conv2d3x3_B3_out_c0_exe16141),
        .out_c0_exe2196(bb_conv2d3x3_B3_out_c0_exe2196),
        .out_c0_exe323(bb_conv2d3x3_B3_out_c0_exe323),
        .out_c0_exe432(bb_conv2d3x3_B3_out_c0_exe432),
        .out_c0_exe534(bb_conv2d3x3_B3_out_c0_exe534),
        .out_c0_exe650(bb_conv2d3x3_B3_out_c0_exe650),
        .out_c0_exe753(bb_conv2d3x3_B3_out_c0_exe753),
        .out_c0_exe862(bb_conv2d3x3_B3_out_c0_exe862),
        .out_c0_exe972(bb_conv2d3x3_B3_out_c0_exe972),
        .out_j_062150(bb_conv2d3x3_B3_out_j_062150),
        .out_k_059(bb_conv2d3x3_B3_out_k_059),
        .out_mul46_add4(bb_conv2d3x3_B3_out_mul46_add4),
        .out_stall_out_0(bb_conv2d3x3_B3_out_stall_out_0),
        .out_stall_out_1(bb_conv2d3x3_B3_out_stall_out_1),
        .out_tmp_058(bb_conv2d3x3_B3_out_tmp_058),
        .out_unnamed_conv2d3x33(bb_conv2d3x3_B3_out_unnamed_conv2d3x33),
        .out_valid_in_0(bb_conv2d3x3_B3_out_valid_in_0),
        .out_valid_in_1(bb_conv2d3x3_B3_out_valid_in_1),
        .out_valid_out_0(bb_conv2d3x3_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B3_sr_0_aunroll_x(BLACKBOX,155)
    conv2d3x3_bb_B3_sr_0 thebb_conv2d3x3_B3_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B3_out_stall_out_0),
        .in_i_valid(bb_conv2d3x3_B10_out_valid_out_0),
        .in_i_data_0_tpl(bb_conv2d3x3_B10_out_inc57),
        .in_i_data_1_tpl(bb_conv2d3x3_B10_out_c0_exe1254179),
        .in_i_data_2_tpl(bb_conv2d3x3_B10_out_c0_exe115),
        .in_i_data_3_tpl(bb_conv2d3x3_B10_out_c0_exe317),
        .in_i_data_4_tpl(bb_conv2d3x3_B10_out_c0_exe426),
        .in_i_data_5_tpl(bb_conv2d3x3_B10_out_c0_exe537),
        .in_i_data_6_tpl(bb_conv2d3x3_B10_out_c0_exe644),
        .in_i_data_7_tpl(bb_conv2d3x3_B10_out_c0_exe756),
        .in_i_data_8_tpl(bb_conv2d3x3_B10_out_c0_exe865),
        .in_i_data_9_tpl(bb_conv2d3x3_B10_out_c0_exe975),
        .in_i_data_10_tpl(bb_conv2d3x3_B10_out_c0_exe1085),
        .in_i_data_11_tpl(bb_conv2d3x3_B10_out_c0_exe1194),
        .in_i_data_12_tpl(bb_conv2d3x3_B10_out_c0_exe12105),
        .in_i_data_13_tpl(bb_conv2d3x3_B10_out_c0_exe13115),
        .in_i_data_14_tpl(bb_conv2d3x3_B10_out_c0_exe14124),
        .in_i_data_15_tpl(bb_conv2d3x3_B10_out_c0_exe15125),
        .in_i_data_16_tpl(bb_conv2d3x3_B10_out_c0_exe16135),
        .in_i_data_17_tpl(bb_conv2d3x3_B10_out_unnamed_conv2d3x315),
        .in_i_data_18_tpl(bb_conv2d3x3_B10_out_j_062144),
        .in_i_data_19_tpl(bb_conv2d3x3_B10_out_c0_exe1186153),
        .out_o_stall(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_data_19_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B10_sr_0_aunroll_x(BLACKBOX,151)
    conv2d3x3_bb_B10_sr_0 thebb_conv2d3x3_B10_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B10_out_stall_out_0),
        .in_i_valid(bb_conv2d3x3_B9_out_valid_out_1),
        .in_i_data_0_tpl(bb_conv2d3x3_B9_out_c0_exe17),
        .in_i_data_1_tpl(bb_conv2d3x3_B9_out_c0_exe318),
        .in_i_data_2_tpl(bb_conv2d3x3_B9_out_c0_exe427),
        .in_i_data_3_tpl(bb_conv2d3x3_B9_out_c0_exe538),
        .in_i_data_4_tpl(bb_conv2d3x3_B9_out_c0_exe645),
        .in_i_data_5_tpl(bb_conv2d3x3_B9_out_c0_exe757),
        .in_i_data_6_tpl(bb_conv2d3x3_B9_out_c0_exe866),
        .in_i_data_7_tpl(bb_conv2d3x3_B9_out_c0_exe976),
        .in_i_data_8_tpl(bb_conv2d3x3_B9_out_c0_exe1086),
        .in_i_data_9_tpl(bb_conv2d3x3_B9_out_c0_exe1196),
        .in_i_data_10_tpl(bb_conv2d3x3_B9_out_c0_exe12106),
        .in_i_data_11_tpl(bb_conv2d3x3_B9_out_c0_exe13107),
        .in_i_data_12_tpl(bb_conv2d3x3_B9_out_c0_exe14116),
        .in_i_data_13_tpl(bb_conv2d3x3_B9_out_c0_exe15126),
        .in_i_data_14_tpl(bb_conv2d3x3_B9_out_c0_exe16136),
        .in_i_data_15_tpl(bb_conv2d3x3_B9_out_unnamed_conv2d3x313),
        .in_i_data_16_tpl(bb_conv2d3x3_B9_out_j_062145),
        .in_i_data_17_tpl(bb_conv2d3x3_B9_out_c0_exe1186154),
        .in_i_data_18_tpl(bb_conv2d3x3_B9_out_k_059159),
        .in_i_data_19_tpl(bb_conv2d3x3_B9_out_c0_exe1254),
        .out_o_stall(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_19_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B10(BLACKBOX,4)
    conv2d3x3_bb_B10 thebb_conv2d3x3_B10 (
        .in_c0_exe1085_0(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe115_0(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe1186153_0(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_17_tpl),
        .in_c0_exe1194_0(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe12105_0(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe1254179_0(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_19_tpl),
        .in_c0_exe13115_0(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe14124_0(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_12_tpl),
        .in_c0_exe15125_0(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_13_tpl),
        .in_c0_exe16135_0(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_14_tpl),
        .in_c0_exe317_0(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe426_0(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe537_0(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe644_0(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe756_0(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe865_0(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe975_0(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_j_062144_0(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_16_tpl),
        .in_k_059158_0(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_18_tpl),
        .in_output_size(in_arg_output_size),
        .in_pad(in_arg_pad),
        .in_stall_in_0(bb_conv2d3x3_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_stall),
        .in_stride(in_arg_stride),
        .in_unnamed_conv2d3x315_0(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_data_15_tpl),
        .in_valid_in_0(bb_conv2d3x3_B10_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe1085(bb_conv2d3x3_B10_out_c0_exe1085),
        .out_c0_exe115(bb_conv2d3x3_B10_out_c0_exe115),
        .out_c0_exe1186153(bb_conv2d3x3_B10_out_c0_exe1186153),
        .out_c0_exe1194(bb_conv2d3x3_B10_out_c0_exe1194),
        .out_c0_exe12105(bb_conv2d3x3_B10_out_c0_exe12105),
        .out_c0_exe1254179(bb_conv2d3x3_B10_out_c0_exe1254179),
        .out_c0_exe13115(bb_conv2d3x3_B10_out_c0_exe13115),
        .out_c0_exe14124(bb_conv2d3x3_B10_out_c0_exe14124),
        .out_c0_exe15125(bb_conv2d3x3_B10_out_c0_exe15125),
        .out_c0_exe16135(bb_conv2d3x3_B10_out_c0_exe16135),
        .out_c0_exe317(bb_conv2d3x3_B10_out_c0_exe317),
        .out_c0_exe426(bb_conv2d3x3_B10_out_c0_exe426),
        .out_c0_exe537(bb_conv2d3x3_B10_out_c0_exe537),
        .out_c0_exe644(bb_conv2d3x3_B10_out_c0_exe644),
        .out_c0_exe756(bb_conv2d3x3_B10_out_c0_exe756),
        .out_c0_exe865(bb_conv2d3x3_B10_out_c0_exe865),
        .out_c0_exe975(bb_conv2d3x3_B10_out_c0_exe975),
        .out_inc57(bb_conv2d3x3_B10_out_inc57),
        .out_j_062144(bb_conv2d3x3_B10_out_j_062144),
        .out_stall_in_0(bb_conv2d3x3_B10_out_stall_in_0),
        .out_stall_out_0(bb_conv2d3x3_B10_out_stall_out_0),
        .out_unnamed_conv2d3x315(bb_conv2d3x3_B10_out_unnamed_conv2d3x315),
        .out_valid_out_0(bb_conv2d3x3_B10_out_valid_out_0),
        .out_valid_out_1(bb_conv2d3x3_B10_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B4_sr_0_aunroll_x(BLACKBOX,157)
    conv2d3x3_bb_B4_sr_0 thebb_conv2d3x3_B4_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B4_out_stall_out_0),
        .in_i_valid(bb_conv2d3x3_B10_out_valid_out_1),
        .in_i_data_0_tpl(bb_conv2d3x3_B10_out_c0_exe115),
        .in_i_data_1_tpl(bb_conv2d3x3_B10_out_c0_exe317),
        .in_i_data_2_tpl(bb_conv2d3x3_B10_out_c0_exe426),
        .in_i_data_3_tpl(bb_conv2d3x3_B10_out_c0_exe537),
        .in_i_data_4_tpl(bb_conv2d3x3_B10_out_c0_exe644),
        .in_i_data_5_tpl(bb_conv2d3x3_B10_out_c0_exe756),
        .in_i_data_6_tpl(bb_conv2d3x3_B10_out_c0_exe865),
        .in_i_data_7_tpl(bb_conv2d3x3_B10_out_c0_exe975),
        .in_i_data_8_tpl(bb_conv2d3x3_B10_out_c0_exe1085),
        .in_i_data_9_tpl(bb_conv2d3x3_B10_out_c0_exe1194),
        .in_i_data_10_tpl(bb_conv2d3x3_B10_out_c0_exe12105),
        .in_i_data_11_tpl(bb_conv2d3x3_B10_out_c0_exe13115),
        .in_i_data_12_tpl(bb_conv2d3x3_B10_out_c0_exe14124),
        .in_i_data_13_tpl(bb_conv2d3x3_B10_out_c0_exe15125),
        .in_i_data_14_tpl(bb_conv2d3x3_B10_out_c0_exe16135),
        .in_i_data_15_tpl(bb_conv2d3x3_B10_out_unnamed_conv2d3x315),
        .in_i_data_16_tpl(bb_conv2d3x3_B10_out_j_062144),
        .in_i_data_17_tpl(bb_conv2d3x3_B10_out_c0_exe1254179),
        .out_o_stall(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_17_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B3_sr_1_aunroll_x(BLACKBOX,156)
    conv2d3x3_bb_B3_sr_1 thebb_conv2d3x3_B3_sr_1_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_conv2d3x31_out_o_valid),
        .in_i_data_0_tpl(c_i32_0143_q),
        .in_i_data_1_tpl(bb_conv2d3x3_B1_out_unnamed_conv2d3x32),
        .in_i_data_2_tpl(bb_conv2d3x3_B1_out_c0_exe113),
        .in_i_data_3_tpl(bb_conv2d3x3_B1_out_c0_exe324),
        .in_i_data_4_tpl(bb_conv2d3x3_B1_out_c0_exe433),
        .in_i_data_5_tpl(bb_conv2d3x3_B1_out_c0_exe535),
        .in_i_data_6_tpl(bb_conv2d3x3_B1_out_c0_exe651),
        .in_i_data_7_tpl(bb_conv2d3x3_B1_out_c0_exe754),
        .in_i_data_8_tpl(bb_conv2d3x3_B1_out_c0_exe863),
        .in_i_data_9_tpl(bb_conv2d3x3_B1_out_c0_exe973),
        .in_i_data_10_tpl(bb_conv2d3x3_B1_out_c0_exe1083),
        .in_i_data_11_tpl(bb_conv2d3x3_B1_out_c0_exe1192),
        .in_i_data_12_tpl(bb_conv2d3x3_B1_out_c0_exe12103),
        .in_i_data_13_tpl(bb_conv2d3x3_B1_out_c0_exe13113),
        .in_i_data_14_tpl(bb_conv2d3x3_B1_out_c0_exe14122),
        .in_i_data_15_tpl(bb_conv2d3x3_B1_out_c0_exe15132),
        .in_i_data_16_tpl(bb_conv2d3x3_B1_out_c0_exe16142),
        .in_i_data_17_tpl(bb_conv2d3x3_B1_out_unnamed_conv2d3x32),
        .in_i_data_18_tpl(bb_conv2d3x3_B1_out_j_062),
        .in_i_data_19_tpl(bb_conv2d3x3_B1_out_c0_exe1186),
        .out_o_stall(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_data_19_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv2d3x31(BLACKBOX,88)
    conv2d3x3_loop_limiter_1 theloop_limiter_conv2d3x31 (
        .in_i_stall(bb_conv2d3x3_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_conv2d3x3_B1_out_valid_out_0),
        .in_i_valid_exit(bb_conv2d3x3_B10_out_valid_out_1),
        .out_o_stall(loop_limiter_conv2d3x31_out_o_stall),
        .out_o_valid(loop_limiter_conv2d3x31_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B0(BLACKBOX,2)
    conv2d3x3_bb_B0 thebb_conv2d3x3_B0 (
        .in_acl_global_id_0_0(in_arg_acl_global_id_0),
        .in_acl_global_id_1_0(in_arg_acl_global_id_1),
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight(in_arg_filter_weight),
        .in_flush(in_start),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_output_im(in_arg_output_im),
        .in_output_size(in_arg_output_size),
        .in_pad(in_arg_pad),
        .in_stall_in_0(loop_limiter_conv2d3x30_out_o_stall),
        .in_start_channel(in_arg_start_channel),
        .in_stride(in_arg_stride),
        .in_unnamed_conv2d3x30_conv2d3x3_avm_readdata(in_unnamed_conv2d3x30_conv2d3x3_avm_readdata),
        .in_unnamed_conv2d3x30_conv2d3x3_avm_readdatavalid(in_unnamed_conv2d3x30_conv2d3x3_avm_readdatavalid),
        .in_unnamed_conv2d3x30_conv2d3x3_avm_waitrequest(in_unnamed_conv2d3x30_conv2d3x3_avm_waitrequest),
        .in_unnamed_conv2d3x30_conv2d3x3_avm_writeack(in_unnamed_conv2d3x30_conv2d3x3_avm_writeack),
        .in_valid_in_0(in_valid_in),
        .out_c0_exe1(bb_conv2d3x3_B0_out_c0_exe1),
        .out_c0_exe10(bb_conv2d3x3_B0_out_c0_exe10),
        .out_c0_exe11(bb_conv2d3x3_B0_out_c0_exe11),
        .out_c0_exe12(bb_conv2d3x3_B0_out_c0_exe12),
        .out_c0_exe13(bb_conv2d3x3_B0_out_c0_exe13),
        .out_c0_exe14(bb_conv2d3x3_B0_out_c0_exe14),
        .out_c0_exe15(bb_conv2d3x3_B0_out_c0_exe15),
        .out_c0_exe16(bb_conv2d3x3_B0_out_c0_exe16),
        .out_c0_exe3(bb_conv2d3x3_B0_out_c0_exe3),
        .out_c0_exe4(bb_conv2d3x3_B0_out_c0_exe4),
        .out_c0_exe5(bb_conv2d3x3_B0_out_c0_exe5),
        .out_c0_exe6(bb_conv2d3x3_B0_out_c0_exe6),
        .out_c0_exe7(bb_conv2d3x3_B0_out_c0_exe7),
        .out_c0_exe8(bb_conv2d3x3_B0_out_c0_exe8),
        .out_c0_exe9(bb_conv2d3x3_B0_out_c0_exe9),
        .out_stall_out_0(bb_conv2d3x3_B0_out_stall_out_0),
        .out_unnamed_conv2d3x30(bb_conv2d3x3_B0_out_unnamed_conv2d3x30),
        .out_unnamed_conv2d3x30_conv2d3x3_avm_address(bb_conv2d3x3_B0_out_unnamed_conv2d3x30_conv2d3x3_avm_address),
        .out_unnamed_conv2d3x30_conv2d3x3_avm_burstcount(bb_conv2d3x3_B0_out_unnamed_conv2d3x30_conv2d3x3_avm_burstcount),
        .out_unnamed_conv2d3x30_conv2d3x3_avm_byteenable(bb_conv2d3x3_B0_out_unnamed_conv2d3x30_conv2d3x3_avm_byteenable),
        .out_unnamed_conv2d3x30_conv2d3x3_avm_enable(bb_conv2d3x3_B0_out_unnamed_conv2d3x30_conv2d3x3_avm_enable),
        .out_unnamed_conv2d3x30_conv2d3x3_avm_read(bb_conv2d3x3_B0_out_unnamed_conv2d3x30_conv2d3x3_avm_read),
        .out_unnamed_conv2d3x30_conv2d3x3_avm_write(bb_conv2d3x3_B0_out_unnamed_conv2d3x30_conv2d3x3_avm_write),
        .out_unnamed_conv2d3x30_conv2d3x3_avm_writedata(bb_conv2d3x3_B0_out_unnamed_conv2d3x30_conv2d3x3_avm_writedata),
        .out_valid_out_0(bb_conv2d3x3_B0_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B1_sr_1_aunroll_x(BLACKBOX,153)
    conv2d3x3_bb_B1_sr_1 thebb_conv2d3x3_B1_sr_1_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B1_out_stall_out_1),
        .in_i_valid(loop_limiter_conv2d3x30_out_o_valid),
        .in_i_data_0_tpl(c_i32_0143_q),
        .in_i_data_1_tpl(bb_conv2d3x3_B0_out_c0_exe1),
        .in_i_data_2_tpl(bb_conv2d3x3_B0_out_c0_exe3),
        .in_i_data_3_tpl(bb_conv2d3x3_B0_out_c0_exe4),
        .in_i_data_4_tpl(bb_conv2d3x3_B0_out_c0_exe5),
        .in_i_data_5_tpl(bb_conv2d3x3_B0_out_c0_exe6),
        .in_i_data_6_tpl(bb_conv2d3x3_B0_out_c0_exe7),
        .in_i_data_7_tpl(bb_conv2d3x3_B0_out_c0_exe8),
        .in_i_data_8_tpl(bb_conv2d3x3_B0_out_c0_exe9),
        .in_i_data_9_tpl(bb_conv2d3x3_B0_out_c0_exe10),
        .in_i_data_10_tpl(bb_conv2d3x3_B0_out_c0_exe11),
        .in_i_data_11_tpl(bb_conv2d3x3_B0_out_c0_exe12),
        .in_i_data_12_tpl(bb_conv2d3x3_B0_out_c0_exe13),
        .in_i_data_13_tpl(bb_conv2d3x3_B0_out_c0_exe14),
        .in_i_data_14_tpl(bb_conv2d3x3_B0_out_c0_exe15),
        .in_i_data_15_tpl(bb_conv2d3x3_B0_out_c0_exe16),
        .in_i_data_16_tpl(bb_conv2d3x3_B0_out_unnamed_conv2d3x30),
        .out_o_stall(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_16_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B1_sr_0_aunroll_x(BLACKBOX,152)
    conv2d3x3_bb_B1_sr_0 thebb_conv2d3x3_B1_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B1_out_stall_out_0),
        .in_i_valid(bb_conv2d3x3_B4_out_valid_out_0),
        .in_i_data_0_tpl(bb_conv2d3x3_B4_out_inc69),
        .in_i_data_1_tpl(bb_conv2d3x3_B4_out_c0_exe114),
        .in_i_data_2_tpl(bb_conv2d3x3_B4_out_c0_exe316),
        .in_i_data_3_tpl(bb_conv2d3x3_B4_out_c0_exe425),
        .in_i_data_4_tpl(bb_conv2d3x3_B4_out_c0_exe536),
        .in_i_data_5_tpl(bb_conv2d3x3_B4_out_c0_exe643),
        .in_i_data_6_tpl(bb_conv2d3x3_B4_out_c0_exe755),
        .in_i_data_7_tpl(bb_conv2d3x3_B4_out_c0_exe864),
        .in_i_data_8_tpl(bb_conv2d3x3_B4_out_c0_exe974),
        .in_i_data_9_tpl(bb_conv2d3x3_B4_out_c0_exe1084),
        .in_i_data_10_tpl(bb_conv2d3x3_B4_out_c0_exe1193),
        .in_i_data_11_tpl(bb_conv2d3x3_B4_out_c0_exe12104),
        .in_i_data_12_tpl(bb_conv2d3x3_B4_out_c0_exe13114),
        .in_i_data_13_tpl(bb_conv2d3x3_B4_out_c0_exe14123),
        .in_i_data_14_tpl(bb_conv2d3x3_B4_out_c0_exe15133),
        .in_i_data_15_tpl(bb_conv2d3x3_B4_out_c0_exe16134),
        .in_i_data_16_tpl(bb_conv2d3x3_B4_out_unnamed_conv2d3x34),
        .out_o_stall(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_16_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B1(BLACKBOX,3)
    conv2d3x3_bb_B1 thebb_conv2d3x3_B1 (
        .in_c0_exe1083_0(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe1083_1(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe113_0(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe113_1(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe1192_0(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe1192_1(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe12103_0(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe12103_1(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe13113_0(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_12_tpl),
        .in_c0_exe13113_1(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_c0_exe14122_0(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_13_tpl),
        .in_c0_exe14122_1(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_c0_exe15132_0(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_14_tpl),
        .in_c0_exe15132_1(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_c0_exe16142_0(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_15_tpl),
        .in_c0_exe16142_1(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_c0_exe324_0(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe324_1(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe433_0(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe433_1(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe535_0(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe535_1(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe651_0(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe651_1(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe754_0(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe754_1(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe863_0(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe863_1(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe973_0(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe973_1(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_j_062_0(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_j_062_1(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_output_size(in_arg_output_size),
        .in_pad(in_arg_pad),
        .in_stall_in_0(loop_limiter_conv2d3x31_out_o_stall),
        .in_stride(in_arg_stride),
        .in_unnamed_conv2d3x32_0(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_data_16_tpl),
        .in_unnamed_conv2d3x32_1(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_valid_in_0(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1083(bb_conv2d3x3_B1_out_c0_exe1083),
        .out_c0_exe113(bb_conv2d3x3_B1_out_c0_exe113),
        .out_c0_exe1186(bb_conv2d3x3_B1_out_c0_exe1186),
        .out_c0_exe1192(bb_conv2d3x3_B1_out_c0_exe1192),
        .out_c0_exe12103(bb_conv2d3x3_B1_out_c0_exe12103),
        .out_c0_exe13113(bb_conv2d3x3_B1_out_c0_exe13113),
        .out_c0_exe14122(bb_conv2d3x3_B1_out_c0_exe14122),
        .out_c0_exe15132(bb_conv2d3x3_B1_out_c0_exe15132),
        .out_c0_exe16142(bb_conv2d3x3_B1_out_c0_exe16142),
        .out_c0_exe324(bb_conv2d3x3_B1_out_c0_exe324),
        .out_c0_exe433(bb_conv2d3x3_B1_out_c0_exe433),
        .out_c0_exe535(bb_conv2d3x3_B1_out_c0_exe535),
        .out_c0_exe651(bb_conv2d3x3_B1_out_c0_exe651),
        .out_c0_exe754(bb_conv2d3x3_B1_out_c0_exe754),
        .out_c0_exe863(bb_conv2d3x3_B1_out_c0_exe863),
        .out_c0_exe973(bb_conv2d3x3_B1_out_c0_exe973),
        .out_j_062(bb_conv2d3x3_B1_out_j_062),
        .out_stall_out_0(bb_conv2d3x3_B1_out_stall_out_0),
        .out_stall_out_1(bb_conv2d3x3_B1_out_stall_out_1),
        .out_unnamed_conv2d3x32(bb_conv2d3x3_B1_out_unnamed_conv2d3x32),
        .out_valid_in_0(bb_conv2d3x3_B1_out_valid_in_0),
        .out_valid_in_1(bb_conv2d3x3_B1_out_valid_in_1),
        .out_valid_out_0(bb_conv2d3x3_B1_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B2(BLACKBOX,5)
    conv2d3x3_bb_B2 thebb_conv2d3x3_B2 (
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(bb_conv2d3x3_B2_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_conv2d3x3_B2_out_stall_out_0),
        .out_valid_out_0(bb_conv2d3x3_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B2_sr_0_aunroll_x(BLACKBOX,154)
    conv2d3x3_bb_B2_sr_0 thebb_conv2d3x3_B2_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d3x3_B2_out_stall_out_0),
        .in_i_valid(bb_conv2d3x3_B4_out_valid_out_1),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_conv2d3x3_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d3x3_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B4(BLACKBOX,7)
    conv2d3x3_bb_B4 thebb_conv2d3x3_B4 (
        .in_c0_exe1084_0(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe114_0(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe1193_0(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe12104_0(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe1254180_0(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_17_tpl),
        .in_c0_exe13114_0(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe14123_0(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_12_tpl),
        .in_c0_exe15133_0(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_13_tpl),
        .in_c0_exe16134_0(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_14_tpl),
        .in_c0_exe316_0(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe425_0(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe536_0(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe643_0(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe755_0(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe864_0(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe974_0(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_flush(in_start),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_j_062143_0(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_16_tpl),
        .in_output_size(in_arg_output_size),
        .in_pad(in_arg_pad),
        .in_stall_in_0(bb_conv2d3x3_B1_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_conv2d3x3_B2_sr_0_aunroll_x_out_o_stall),
        .in_stride(in_arg_stride),
        .in_unnamed_conv2d3x34_0(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_data_15_tpl),
        .in_unnamed_conv2d3x36_conv2d3x3_avm_readdata(in_unnamed_conv2d3x36_conv2d3x3_avm_readdata),
        .in_unnamed_conv2d3x36_conv2d3x3_avm_readdatavalid(in_unnamed_conv2d3x36_conv2d3x3_avm_readdatavalid),
        .in_unnamed_conv2d3x36_conv2d3x3_avm_waitrequest(in_unnamed_conv2d3x36_conv2d3x3_avm_waitrequest),
        .in_unnamed_conv2d3x36_conv2d3x3_avm_writeack(in_unnamed_conv2d3x36_conv2d3x3_avm_writeack),
        .in_valid_in_0(bb_conv2d3x3_B4_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe1084(bb_conv2d3x3_B4_out_c0_exe1084),
        .out_c0_exe114(bb_conv2d3x3_B4_out_c0_exe114),
        .out_c0_exe1193(bb_conv2d3x3_B4_out_c0_exe1193),
        .out_c0_exe12104(bb_conv2d3x3_B4_out_c0_exe12104),
        .out_c0_exe13114(bb_conv2d3x3_B4_out_c0_exe13114),
        .out_c0_exe14123(bb_conv2d3x3_B4_out_c0_exe14123),
        .out_c0_exe15133(bb_conv2d3x3_B4_out_c0_exe15133),
        .out_c0_exe16134(bb_conv2d3x3_B4_out_c0_exe16134),
        .out_c0_exe316(bb_conv2d3x3_B4_out_c0_exe316),
        .out_c0_exe425(bb_conv2d3x3_B4_out_c0_exe425),
        .out_c0_exe536(bb_conv2d3x3_B4_out_c0_exe536),
        .out_c0_exe643(bb_conv2d3x3_B4_out_c0_exe643),
        .out_c0_exe755(bb_conv2d3x3_B4_out_c0_exe755),
        .out_c0_exe864(bb_conv2d3x3_B4_out_c0_exe864),
        .out_c0_exe974(bb_conv2d3x3_B4_out_c0_exe974),
        .out_inc69(bb_conv2d3x3_B4_out_inc69),
        .out_lsu_unnamed_conv2d3x36_o_active(bb_conv2d3x3_B4_out_lsu_unnamed_conv2d3x36_o_active),
        .out_stall_in_0(bb_conv2d3x3_B4_out_stall_in_0),
        .out_stall_out_0(bb_conv2d3x3_B4_out_stall_out_0),
        .out_unnamed_conv2d3x34(bb_conv2d3x3_B4_out_unnamed_conv2d3x34),
        .out_unnamed_conv2d3x36_conv2d3x3_avm_address(bb_conv2d3x3_B4_out_unnamed_conv2d3x36_conv2d3x3_avm_address),
        .out_unnamed_conv2d3x36_conv2d3x3_avm_burstcount(bb_conv2d3x3_B4_out_unnamed_conv2d3x36_conv2d3x3_avm_burstcount),
        .out_unnamed_conv2d3x36_conv2d3x3_avm_byteenable(bb_conv2d3x3_B4_out_unnamed_conv2d3x36_conv2d3x3_avm_byteenable),
        .out_unnamed_conv2d3x36_conv2d3x3_avm_enable(bb_conv2d3x3_B4_out_unnamed_conv2d3x36_conv2d3x3_avm_enable),
        .out_unnamed_conv2d3x36_conv2d3x3_avm_read(bb_conv2d3x3_B4_out_unnamed_conv2d3x36_conv2d3x3_avm_read),
        .out_unnamed_conv2d3x36_conv2d3x3_avm_write(bb_conv2d3x3_B4_out_unnamed_conv2d3x36_conv2d3x3_avm_write),
        .out_unnamed_conv2d3x36_conv2d3x3_avm_writedata(bb_conv2d3x3_B4_out_unnamed_conv2d3x36_conv2d3x3_avm_writedata),
        .out_valid_out_0(bb_conv2d3x3_B4_out_valid_out_0),
        .out_valid_out_1(bb_conv2d3x3_B4_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv2d3x30(BLACKBOX,87)
    conv2d3x3_loop_limiter_0 theloop_limiter_conv2d3x30 (
        .in_i_stall(bb_conv2d3x3_B1_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2d3x3_B2_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_conv2d3x3_B0_out_valid_out_0),
        .in_i_valid_exit(bb_conv2d3x3_B4_out_valid_out_1),
        .out_o_stall(loop_limiter_conv2d3x30_out_o_stall),
        .out_o_valid(loop_limiter_conv2d3x30_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // conv2d3x3_B1_x(EXTIFACE,29)
    assign conv2d3x3_B1_x_i_capture = GND_q;
    assign conv2d3x3_B1_x_i_clear = GND_q;
    assign conv2d3x3_B1_x_i_enable = VCC_q;
    assign conv2d3x3_B1_x_i_shift = GND_q;
    assign conv2d3x3_B1_x_i_stall_pred = loop_limiter_conv2d3x30_out_o_stall;
    assign conv2d3x3_B1_x_i_stall_succ = bb_conv2d3x3_B4_out_stall_in_0;
    assign conv2d3x3_B1_x_i_valid_loop = bb_conv2d3x3_B1_out_valid_in_0;
    assign conv2d3x3_B1_x_i_valid_pred = bb_conv2d3x3_B1_out_valid_in_1;
    assign conv2d3x3_B1_x_i_valid_succ = bb_conv2d3x3_B4_out_valid_out_0;
    assign conv2d3x3_B1_x_i_capture_bitsignaltemp = conv2d3x3_B1_x_i_capture[0];
    assign conv2d3x3_B1_x_i_clear_bitsignaltemp = conv2d3x3_B1_x_i_clear[0];
    assign conv2d3x3_B1_x_i_enable_bitsignaltemp = conv2d3x3_B1_x_i_enable[0];
    assign conv2d3x3_B1_x_i_shift_bitsignaltemp = conv2d3x3_B1_x_i_shift[0];
    assign conv2d3x3_B1_x_i_stall_pred_bitsignaltemp = conv2d3x3_B1_x_i_stall_pred[0];
    assign conv2d3x3_B1_x_i_stall_succ_bitsignaltemp = conv2d3x3_B1_x_i_stall_succ[0];
    assign conv2d3x3_B1_x_i_valid_loop_bitsignaltemp = conv2d3x3_B1_x_i_valid_loop[0];
    assign conv2d3x3_B1_x_i_valid_pred_bitsignaltemp = conv2d3x3_B1_x_i_valid_pred[0];
    assign conv2d3x3_B1_x_i_valid_succ_bitsignaltemp = conv2d3x3_B1_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv2d3x3.B1")
    ) theconv2d3x3_B1_x (
        .i_capture(conv2d3x3_B1_x_i_capture_bitsignaltemp),
        .i_clear(conv2d3x3_B1_x_i_clear_bitsignaltemp),
        .i_enable(conv2d3x3_B1_x_i_enable_bitsignaltemp),
        .i_shift(conv2d3x3_B1_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv2d3x3_B1_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv2d3x3_B1_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv2d3x3_B1_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv2d3x3_B1_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv2d3x3_B1_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d3x3_B3_x(EXTIFACE,30)
    assign conv2d3x3_B3_x_i_capture = GND_q;
    assign conv2d3x3_B3_x_i_clear = GND_q;
    assign conv2d3x3_B3_x_i_enable = VCC_q;
    assign conv2d3x3_B3_x_i_shift = GND_q;
    assign conv2d3x3_B3_x_i_stall_pred = loop_limiter_conv2d3x31_out_o_stall;
    assign conv2d3x3_B3_x_i_stall_succ = bb_conv2d3x3_B10_out_stall_in_0;
    assign conv2d3x3_B3_x_i_valid_loop = bb_conv2d3x3_B3_out_valid_in_0;
    assign conv2d3x3_B3_x_i_valid_pred = bb_conv2d3x3_B3_out_valid_in_1;
    assign conv2d3x3_B3_x_i_valid_succ = bb_conv2d3x3_B10_out_valid_out_0;
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

    // conv2d3x3_B5_x(EXTIFACE,31)
    assign conv2d3x3_B5_x_i_capture = GND_q;
    assign conv2d3x3_B5_x_i_clear = GND_q;
    assign conv2d3x3_B5_x_i_enable = VCC_q;
    assign conv2d3x3_B5_x_i_shift = GND_q;
    assign conv2d3x3_B5_x_i_stall_pred = loop_limiter_conv2d3x32_out_o_stall;
    assign conv2d3x3_B5_x_i_stall_succ = bb_conv2d3x3_B5_out_stall_in_0;
    assign conv2d3x3_B5_x_i_valid_loop = bb_conv2d3x3_B5_out_valid_in_0;
    assign conv2d3x3_B5_x_i_valid_pred = bb_conv2d3x3_B5_out_valid_in_1;
    assign conv2d3x3_B5_x_i_valid_succ = bb_conv2d3x3_B5_out_valid_out_0;
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

    // conv2d3x3_B7_x(EXTIFACE,32)
    assign conv2d3x3_B7_x_i_capture = GND_q;
    assign conv2d3x3_B7_x_i_clear = GND_q;
    assign conv2d3x3_B7_x_i_enable = VCC_q;
    assign conv2d3x3_B7_x_i_shift = GND_q;
    assign conv2d3x3_B7_x_i_stall_pred = loop_limiter_conv2d3x33_out_o_stall;
    assign conv2d3x3_B7_x_i_stall_succ = bb_conv2d3x3_B7_out_stall_in_0;
    assign conv2d3x3_B7_x_i_valid_loop = bb_conv2d3x3_B7_out_valid_in_0;
    assign conv2d3x3_B7_x_i_valid_pred = bb_conv2d3x3_B7_out_valid_in_1;
    assign conv2d3x3_B7_x_i_valid_succ = bb_conv2d3x3_B7_out_valid_out_0;
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

    // conv2d3x3_B9_x(EXTIFACE,33)
    assign conv2d3x3_B9_x_i_capture = GND_q;
    assign conv2d3x3_B9_x_i_clear = GND_q;
    assign conv2d3x3_B9_x_i_enable = VCC_q;
    assign conv2d3x3_B9_x_i_shift = GND_q;
    assign conv2d3x3_B9_x_i_stall_pred = loop_limiter_conv2d3x34_out_o_stall;
    assign conv2d3x3_B9_x_i_stall_succ = bb_conv2d3x3_B9_out_stall_in_0;
    assign conv2d3x3_B9_x_i_valid_loop = bb_conv2d3x3_B9_out_valid_in_0;
    assign conv2d3x3_B9_x_i_valid_pred = bb_conv2d3x3_B9_out_valid_in_1;
    assign conv2d3x3_B9_x_i_valid_succ = bb_conv2d3x3_B9_out_valid_out_0;
    assign conv2d3x3_B9_x_i_capture_bitsignaltemp = conv2d3x3_B9_x_i_capture[0];
    assign conv2d3x3_B9_x_i_clear_bitsignaltemp = conv2d3x3_B9_x_i_clear[0];
    assign conv2d3x3_B9_x_i_enable_bitsignaltemp = conv2d3x3_B9_x_i_enable[0];
    assign conv2d3x3_B9_x_i_shift_bitsignaltemp = conv2d3x3_B9_x_i_shift[0];
    assign conv2d3x3_B9_x_i_stall_pred_bitsignaltemp = conv2d3x3_B9_x_i_stall_pred[0];
    assign conv2d3x3_B9_x_i_stall_succ_bitsignaltemp = conv2d3x3_B9_x_i_stall_succ[0];
    assign conv2d3x3_B9_x_i_valid_loop_bitsignaltemp = conv2d3x3_B9_x_i_valid_loop[0];
    assign conv2d3x3_B9_x_i_valid_pred_bitsignaltemp = conv2d3x3_B9_x_i_valid_pred[0];
    assign conv2d3x3_B9_x_i_valid_succ_bitsignaltemp = conv2d3x3_B9_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv2d3x3.B9")
    ) theconv2d3x3_B9_x (
        .i_capture(conv2d3x3_B9_x_i_capture_bitsignaltemp),
        .i_clear(conv2d3x3_B9_x_i_clear_bitsignaltemp),
        .i_enable(conv2d3x3_B9_x_i_enable_bitsignaltemp),
        .i_shift(conv2d3x3_B9_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv2d3x3_B9_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv2d3x3_B9_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv2d3x3_B9_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv2d3x3_B9_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv2d3x3_B9_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_lm13_conv2d3x3_avm_address(GPOUT,92)
    assign out_lm13_conv2d3x3_avm_address = bb_conv2d3x3_B5_out_lm13_conv2d3x3_avm_address;

    // out_lm13_conv2d3x3_avm_burstcount(GPOUT,93)
    assign out_lm13_conv2d3x3_avm_burstcount = bb_conv2d3x3_B5_out_lm13_conv2d3x3_avm_burstcount;

    // out_lm13_conv2d3x3_avm_byteenable(GPOUT,94)
    assign out_lm13_conv2d3x3_avm_byteenable = bb_conv2d3x3_B5_out_lm13_conv2d3x3_avm_byteenable;

    // out_lm13_conv2d3x3_avm_enable(GPOUT,95)
    assign out_lm13_conv2d3x3_avm_enable = bb_conv2d3x3_B5_out_lm13_conv2d3x3_avm_enable;

    // out_lm13_conv2d3x3_avm_read(GPOUT,96)
    assign out_lm13_conv2d3x3_avm_read = bb_conv2d3x3_B5_out_lm13_conv2d3x3_avm_read;

    // out_lm13_conv2d3x3_avm_write(GPOUT,97)
    assign out_lm13_conv2d3x3_avm_write = bb_conv2d3x3_B5_out_lm13_conv2d3x3_avm_write;

    // out_lm13_conv2d3x3_avm_writedata(GPOUT,98)
    assign out_lm13_conv2d3x3_avm_writedata = bb_conv2d3x3_B5_out_lm13_conv2d3x3_avm_writedata;

    // out_lm18_conv2d3x3_avm_address(GPOUT,99)
    assign out_lm18_conv2d3x3_avm_address = bb_conv2d3x3_B7_out_lm18_conv2d3x3_avm_address;

    // out_lm18_conv2d3x3_avm_burstcount(GPOUT,100)
    assign out_lm18_conv2d3x3_avm_burstcount = bb_conv2d3x3_B7_out_lm18_conv2d3x3_avm_burstcount;

    // out_lm18_conv2d3x3_avm_byteenable(GPOUT,101)
    assign out_lm18_conv2d3x3_avm_byteenable = bb_conv2d3x3_B7_out_lm18_conv2d3x3_avm_byteenable;

    // out_lm18_conv2d3x3_avm_enable(GPOUT,102)
    assign out_lm18_conv2d3x3_avm_enable = bb_conv2d3x3_B7_out_lm18_conv2d3x3_avm_enable;

    // out_lm18_conv2d3x3_avm_read(GPOUT,103)
    assign out_lm18_conv2d3x3_avm_read = bb_conv2d3x3_B7_out_lm18_conv2d3x3_avm_read;

    // out_lm18_conv2d3x3_avm_write(GPOUT,104)
    assign out_lm18_conv2d3x3_avm_write = bb_conv2d3x3_B7_out_lm18_conv2d3x3_avm_write;

    // out_lm18_conv2d3x3_avm_writedata(GPOUT,105)
    assign out_lm18_conv2d3x3_avm_writedata = bb_conv2d3x3_B7_out_lm18_conv2d3x3_avm_writedata;

    // out_lm20_conv2d3x3_avm_address(GPOUT,106)
    assign out_lm20_conv2d3x3_avm_address = bb_conv2d3x3_B7_out_lm20_conv2d3x3_avm_address;

    // out_lm20_conv2d3x3_avm_burstcount(GPOUT,107)
    assign out_lm20_conv2d3x3_avm_burstcount = bb_conv2d3x3_B7_out_lm20_conv2d3x3_avm_burstcount;

    // out_lm20_conv2d3x3_avm_byteenable(GPOUT,108)
    assign out_lm20_conv2d3x3_avm_byteenable = bb_conv2d3x3_B7_out_lm20_conv2d3x3_avm_byteenable;

    // out_lm20_conv2d3x3_avm_enable(GPOUT,109)
    assign out_lm20_conv2d3x3_avm_enable = bb_conv2d3x3_B7_out_lm20_conv2d3x3_avm_enable;

    // out_lm20_conv2d3x3_avm_read(GPOUT,110)
    assign out_lm20_conv2d3x3_avm_read = bb_conv2d3x3_B7_out_lm20_conv2d3x3_avm_read;

    // out_lm20_conv2d3x3_avm_write(GPOUT,111)
    assign out_lm20_conv2d3x3_avm_write = bb_conv2d3x3_B7_out_lm20_conv2d3x3_avm_write;

    // out_lm20_conv2d3x3_avm_writedata(GPOUT,112)
    assign out_lm20_conv2d3x3_avm_writedata = bb_conv2d3x3_B7_out_lm20_conv2d3x3_avm_writedata;

    // out_lm25_conv2d3x3_avm_address(GPOUT,113)
    assign out_lm25_conv2d3x3_avm_address = bb_conv2d3x3_B9_out_lm25_conv2d3x3_avm_address;

    // out_lm25_conv2d3x3_avm_burstcount(GPOUT,114)
    assign out_lm25_conv2d3x3_avm_burstcount = bb_conv2d3x3_B9_out_lm25_conv2d3x3_avm_burstcount;

    // out_lm25_conv2d3x3_avm_byteenable(GPOUT,115)
    assign out_lm25_conv2d3x3_avm_byteenable = bb_conv2d3x3_B9_out_lm25_conv2d3x3_avm_byteenable;

    // out_lm25_conv2d3x3_avm_enable(GPOUT,116)
    assign out_lm25_conv2d3x3_avm_enable = bb_conv2d3x3_B9_out_lm25_conv2d3x3_avm_enable;

    // out_lm25_conv2d3x3_avm_read(GPOUT,117)
    assign out_lm25_conv2d3x3_avm_read = bb_conv2d3x3_B9_out_lm25_conv2d3x3_avm_read;

    // out_lm25_conv2d3x3_avm_write(GPOUT,118)
    assign out_lm25_conv2d3x3_avm_write = bb_conv2d3x3_B9_out_lm25_conv2d3x3_avm_write;

    // out_lm25_conv2d3x3_avm_writedata(GPOUT,119)
    assign out_lm25_conv2d3x3_avm_writedata = bb_conv2d3x3_B9_out_lm25_conv2d3x3_avm_writedata;

    // out_lm27_conv2d3x3_avm_address(GPOUT,120)
    assign out_lm27_conv2d3x3_avm_address = bb_conv2d3x3_B9_out_lm27_conv2d3x3_avm_address;

    // out_lm27_conv2d3x3_avm_burstcount(GPOUT,121)
    assign out_lm27_conv2d3x3_avm_burstcount = bb_conv2d3x3_B9_out_lm27_conv2d3x3_avm_burstcount;

    // out_lm27_conv2d3x3_avm_byteenable(GPOUT,122)
    assign out_lm27_conv2d3x3_avm_byteenable = bb_conv2d3x3_B9_out_lm27_conv2d3x3_avm_byteenable;

    // out_lm27_conv2d3x3_avm_enable(GPOUT,123)
    assign out_lm27_conv2d3x3_avm_enable = bb_conv2d3x3_B9_out_lm27_conv2d3x3_avm_enable;

    // out_lm27_conv2d3x3_avm_read(GPOUT,124)
    assign out_lm27_conv2d3x3_avm_read = bb_conv2d3x3_B9_out_lm27_conv2d3x3_avm_read;

    // out_lm27_conv2d3x3_avm_write(GPOUT,125)
    assign out_lm27_conv2d3x3_avm_write = bb_conv2d3x3_B9_out_lm27_conv2d3x3_avm_write;

    // out_lm27_conv2d3x3_avm_writedata(GPOUT,126)
    assign out_lm27_conv2d3x3_avm_writedata = bb_conv2d3x3_B9_out_lm27_conv2d3x3_avm_writedata;

    // out_lm_conv2d3x3_avm_address(GPOUT,127)
    assign out_lm_conv2d3x3_avm_address = bb_conv2d3x3_B5_out_lm_conv2d3x3_avm_address;

    // out_lm_conv2d3x3_avm_burstcount(GPOUT,128)
    assign out_lm_conv2d3x3_avm_burstcount = bb_conv2d3x3_B5_out_lm_conv2d3x3_avm_burstcount;

    // out_lm_conv2d3x3_avm_byteenable(GPOUT,129)
    assign out_lm_conv2d3x3_avm_byteenable = bb_conv2d3x3_B5_out_lm_conv2d3x3_avm_byteenable;

    // out_lm_conv2d3x3_avm_enable(GPOUT,130)
    assign out_lm_conv2d3x3_avm_enable = bb_conv2d3x3_B5_out_lm_conv2d3x3_avm_enable;

    // out_lm_conv2d3x3_avm_read(GPOUT,131)
    assign out_lm_conv2d3x3_avm_read = bb_conv2d3x3_B5_out_lm_conv2d3x3_avm_read;

    // out_lm_conv2d3x3_avm_write(GPOUT,132)
    assign out_lm_conv2d3x3_avm_write = bb_conv2d3x3_B5_out_lm_conv2d3x3_avm_write;

    // out_lm_conv2d3x3_avm_writedata(GPOUT,133)
    assign out_lm_conv2d3x3_avm_writedata = bb_conv2d3x3_B5_out_lm_conv2d3x3_avm_writedata;

    // out_o_active_unnamed_conv2d3x36(GPOUT,134)
    assign out_o_active_unnamed_conv2d3x36 = bb_conv2d3x3_B4_out_lsu_unnamed_conv2d3x36_o_active;

    // out_stall_out(GPOUT,135)
    assign out_stall_out = bb_conv2d3x3_B0_out_stall_out_0;

    // out_unnamed_conv2d3x30_conv2d3x3_avm_address(GPOUT,136)
    assign out_unnamed_conv2d3x30_conv2d3x3_avm_address = bb_conv2d3x3_B0_out_unnamed_conv2d3x30_conv2d3x3_avm_address;

    // out_unnamed_conv2d3x30_conv2d3x3_avm_burstcount(GPOUT,137)
    assign out_unnamed_conv2d3x30_conv2d3x3_avm_burstcount = bb_conv2d3x3_B0_out_unnamed_conv2d3x30_conv2d3x3_avm_burstcount;

    // out_unnamed_conv2d3x30_conv2d3x3_avm_byteenable(GPOUT,138)
    assign out_unnamed_conv2d3x30_conv2d3x3_avm_byteenable = bb_conv2d3x3_B0_out_unnamed_conv2d3x30_conv2d3x3_avm_byteenable;

    // out_unnamed_conv2d3x30_conv2d3x3_avm_enable(GPOUT,139)
    assign out_unnamed_conv2d3x30_conv2d3x3_avm_enable = bb_conv2d3x3_B0_out_unnamed_conv2d3x30_conv2d3x3_avm_enable;

    // out_unnamed_conv2d3x30_conv2d3x3_avm_read(GPOUT,140)
    assign out_unnamed_conv2d3x30_conv2d3x3_avm_read = bb_conv2d3x3_B0_out_unnamed_conv2d3x30_conv2d3x3_avm_read;

    // out_unnamed_conv2d3x30_conv2d3x3_avm_write(GPOUT,141)
    assign out_unnamed_conv2d3x30_conv2d3x3_avm_write = bb_conv2d3x3_B0_out_unnamed_conv2d3x30_conv2d3x3_avm_write;

    // out_unnamed_conv2d3x30_conv2d3x3_avm_writedata(GPOUT,142)
    assign out_unnamed_conv2d3x30_conv2d3x3_avm_writedata = bb_conv2d3x3_B0_out_unnamed_conv2d3x30_conv2d3x3_avm_writedata;

    // out_unnamed_conv2d3x36_conv2d3x3_avm_address(GPOUT,143)
    assign out_unnamed_conv2d3x36_conv2d3x3_avm_address = bb_conv2d3x3_B4_out_unnamed_conv2d3x36_conv2d3x3_avm_address;

    // out_unnamed_conv2d3x36_conv2d3x3_avm_burstcount(GPOUT,144)
    assign out_unnamed_conv2d3x36_conv2d3x3_avm_burstcount = bb_conv2d3x3_B4_out_unnamed_conv2d3x36_conv2d3x3_avm_burstcount;

    // out_unnamed_conv2d3x36_conv2d3x3_avm_byteenable(GPOUT,145)
    assign out_unnamed_conv2d3x36_conv2d3x3_avm_byteenable = bb_conv2d3x3_B4_out_unnamed_conv2d3x36_conv2d3x3_avm_byteenable;

    // out_unnamed_conv2d3x36_conv2d3x3_avm_enable(GPOUT,146)
    assign out_unnamed_conv2d3x36_conv2d3x3_avm_enable = bb_conv2d3x3_B4_out_unnamed_conv2d3x36_conv2d3x3_avm_enable;

    // out_unnamed_conv2d3x36_conv2d3x3_avm_read(GPOUT,147)
    assign out_unnamed_conv2d3x36_conv2d3x3_avm_read = bb_conv2d3x3_B4_out_unnamed_conv2d3x36_conv2d3x3_avm_read;

    // out_unnamed_conv2d3x36_conv2d3x3_avm_write(GPOUT,148)
    assign out_unnamed_conv2d3x36_conv2d3x3_avm_write = bb_conv2d3x3_B4_out_unnamed_conv2d3x36_conv2d3x3_avm_write;

    // out_unnamed_conv2d3x36_conv2d3x3_avm_writedata(GPOUT,149)
    assign out_unnamed_conv2d3x36_conv2d3x3_avm_writedata = bb_conv2d3x3_B4_out_unnamed_conv2d3x36_conv2d3x3_avm_writedata;

    // out_valid_out(GPOUT,150)
    assign out_valid_out = bb_conv2d3x3_B2_out_valid_out_0;

endmodule
