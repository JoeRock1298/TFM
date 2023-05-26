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

// SystemVerilog created from conv2d1x1_function
// SystemVerilog created on Wed May 24 11:22:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_function (
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
    input wire [511:0] in_lm_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm_conv2d1x1_avm_writeack,
    input wire [511:0] in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_readdata,
    input wire [0:0] in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writeack,
    input wire [511:0] in_memdep_15_conv2d1x1_avm_readdata,
    input wire [0:0] in_memdep_15_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_memdep_15_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_memdep_15_conv2d1x1_avm_writeack,
    input wire [511:0] in_memdep_4_conv2d1x1_avm_readdata,
    input wire [0:0] in_memdep_4_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_memdep_4_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_memdep_4_conv2d1x1_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [511:0] in_unnamed_conv2d1x115_conv2d1x1_avm_readdata,
    input wire [0:0] in_unnamed_conv2d1x115_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv2d1x115_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d1x115_conv2d1x1_avm_writeack,
    input wire [511:0] in_unnamed_conv2d1x116_conv2d1x1_avm_readdata,
    input wire [0:0] in_unnamed_conv2d1x116_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv2d1x116_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d1x116_conv2d1x1_avm_writeack,
    input wire [0:0] in_valid_in,
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
    output wire [30:0] out_lm_conv2d1x1_avm_address,
    output wire [4:0] out_lm_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm_conv2d1x1_avm_enable,
    output wire [0:0] out_lm_conv2d1x1_avm_read,
    output wire [0:0] out_lm_conv2d1x1_avm_write,
    output wire [511:0] out_lm_conv2d1x1_avm_writedata,
    output wire [31:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_address,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_burstcount,
    output wire [63:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_enable,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_read,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_write,
    output wire [511:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writedata,
    output wire [31:0] out_memdep_15_conv2d1x1_avm_address,
    output wire [0:0] out_memdep_15_conv2d1x1_avm_burstcount,
    output wire [63:0] out_memdep_15_conv2d1x1_avm_byteenable,
    output wire [0:0] out_memdep_15_conv2d1x1_avm_enable,
    output wire [0:0] out_memdep_15_conv2d1x1_avm_read,
    output wire [0:0] out_memdep_15_conv2d1x1_avm_write,
    output wire [511:0] out_memdep_15_conv2d1x1_avm_writedata,
    output wire [31:0] out_memdep_4_conv2d1x1_avm_address,
    output wire [0:0] out_memdep_4_conv2d1x1_avm_burstcount,
    output wire [63:0] out_memdep_4_conv2d1x1_avm_byteenable,
    output wire [0:0] out_memdep_4_conv2d1x1_avm_enable,
    output wire [0:0] out_memdep_4_conv2d1x1_avm_read,
    output wire [0:0] out_memdep_4_conv2d1x1_avm_write,
    output wire [511:0] out_memdep_4_conv2d1x1_avm_writedata,
    output wire [0:0] out_o_active_unnamed_conv2d1x116,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_conv2d1x115_conv2d1x1_avm_address,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount,
    output wire [63:0] out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_enable,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_read,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_write,
    output wire [511:0] out_unnamed_conv2d1x115_conv2d1x1_avm_writedata,
    output wire [30:0] out_unnamed_conv2d1x116_conv2d1x1_avm_address,
    output wire [4:0] out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount,
    output wire [63:0] out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable,
    output wire [0:0] out_unnamed_conv2d1x116_conv2d1x1_avm_enable,
    output wire [0:0] out_unnamed_conv2d1x116_conv2d1x1_avm_read,
    output wire [0:0] out_unnamed_conv2d1x116_conv2d1x1_avm_write,
    output wire [511:0] out_unnamed_conv2d1x116_conv2d1x1_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_conv2d1x1_B0_out_feedback_stall_out_0;
    wire [0:0] bb_conv2d1x1_B0_out_intel_reserved_ffwd_0_0;
    wire [31:0] bb_conv2d1x1_B0_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_conv2d1x1_B0_out_intel_reserved_ffwd_2_0;
    wire [32:0] bb_conv2d1x1_B0_out_intel_reserved_ffwd_3_0;
    wire [32:0] bb_conv2d1x1_B0_out_intel_reserved_ffwd_4_0;
    wire [0:0] bb_conv2d1x1_B0_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B0_out_valid_out_0;
    wire [0:0] bb_conv2d1x1_B1_out_feedback_out_0;
    wire [0:0] bb_conv2d1x1_B1_out_feedback_valid_out_0;
    wire [0:0] bb_conv2d1x1_B1_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B1_out_valid_out_0;
    wire [0:0] bb_conv2d1x1_B2_out_c0_exe11;
    wire [31:0] bb_conv2d1x1_B2_out_c0_exe2;
    wire [0:0] bb_conv2d1x1_B2_out_c0_exe3;
    wire [0:0] bb_conv2d1x1_B2_out_c0_exe4;
    wire [0:0] bb_conv2d1x1_B2_out_c0_exe5;
    wire [32:0] bb_conv2d1x1_B2_out_c0_exe6;
    wire [31:0] bb_conv2d1x1_B2_out_c0_exe8;
    wire [31:0] bb_conv2d1x1_B2_out_c0_exe9;
    wire [31:0] bb_conv2d1x1_B2_out_lm;
    wire [30:0] bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B2_out_pipeline_valid_out;
    wire [0:0] bb_conv2d1x1_B2_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B2_out_stall_out_1;
    wire [0:0] bb_conv2d1x1_B2_out_valid_in_0;
    wire [0:0] bb_conv2d1x1_B2_out_valid_in_1;
    wire [0:0] bb_conv2d1x1_B2_out_valid_out_0;
    wire [0:0] bb_conv2d1x1_B3_out_stall_in_0;
    wire [0:0] bb_conv2d1x1_B3_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B3_out_valid_out_0;
    wire [9:0] bb_conv2d1x1_B4_out_ap_pop;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe10229;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe11230;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe12;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe1220;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe13;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe14;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe15;
    wire [32:0] bb_conv2d1x1_B4_out_c0_exe16;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe17;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe18;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe19;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe20;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe3222;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe4223;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe5224;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe6225;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe7226;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe8227;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe9228;
    wire [0:0] bb_conv2d1x1_B4_out_exiting_stall_out;
    wire [0:0] bb_conv2d1x1_B4_out_exiting_valid_out;
    wire [0:0] bb_conv2d1x1_B4_out_feedback_stall_out_1;
    wire [0:0] bb_conv2d1x1_B4_out_pipeline_valid_out;
    wire [0:0] bb_conv2d1x1_B4_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B4_out_stall_out_1;
    wire [0:0] bb_conv2d1x1_B4_out_valid_in_0;
    wire [0:0] bb_conv2d1x1_B4_out_valid_in_1;
    wire [0:0] bb_conv2d1x1_B4_out_valid_out_0;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe10260;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe103218;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe11261;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe113229;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe12262;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe1232310;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe1251;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe13263;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe1332411;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe14264;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe1432512;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe15265;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe1532613;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe16266;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe1632714;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe1732815;
    wire [32:0] bb_conv2d1x1_B5_out_c0_exe1832916;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe1933017;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe2033118;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe2119;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe2220;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe2252;
    wire [63:0] bb_conv2d1x1_B5_out_c0_exe23131;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe3253;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe33142;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe4254;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe43153;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe5255;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe6256;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe63174;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe7257;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe73185;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe8258;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe83196;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe9259;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe93207;
    wire [31:0] bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_address;
    wire [0:0] bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B5_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B5_out_valid_out_0;
    wire [31:0] bb_conv2d1x1_B6_out_c0_exe10321;
    wire [0:0] bb_conv2d1x1_B6_out_c0_exe11322;
    wire [0:0] bb_conv2d1x1_B6_out_c0_exe12323;
    wire [31:0] bb_conv2d1x1_B6_out_c0_exe13324;
    wire [31:0] bb_conv2d1x1_B6_out_c0_exe14325;
    wire [0:0] bb_conv2d1x1_B6_out_c0_exe15326;
    wire [0:0] bb_conv2d1x1_B6_out_c0_exe16327;
    wire [0:0] bb_conv2d1x1_B6_out_c0_exe17328;
    wire [32:0] bb_conv2d1x1_B6_out_c0_exe18329;
    wire [31:0] bb_conv2d1x1_B6_out_c0_exe19330;
    wire [31:0] bb_conv2d1x1_B6_out_c0_exe20331;
    wire [31:0] bb_conv2d1x1_B6_out_c0_exe21;
    wire [0:0] bb_conv2d1x1_B6_out_c0_exe22;
    wire [63:0] bb_conv2d1x1_B6_out_c0_exe2313;
    wire [0:0] bb_conv2d1x1_B6_out_c0_exe3314;
    wire [0:0] bb_conv2d1x1_B6_out_c0_exe4315;
    wire [31:0] bb_conv2d1x1_B6_out_c0_exe6317;
    wire [0:0] bb_conv2d1x1_B6_out_c0_exe7318;
    wire [31:0] bb_conv2d1x1_B6_out_c0_exe8319;
    wire [31:0] bb_conv2d1x1_B6_out_c0_exe9320;
    wire [0:0] bb_conv2d1x1_B6_out_exiting_stall_out;
    wire [0:0] bb_conv2d1x1_B6_out_exiting_valid_out;
    wire [0:0] bb_conv2d1x1_B6_out_pipeline_valid_out;
    wire [0:0] bb_conv2d1x1_B6_out_stall_in_0;
    wire [0:0] bb_conv2d1x1_B6_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B6_out_stall_out_1;
    wire [31:0] bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_address;
    wire [0:0] bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B6_out_valid_in_0;
    wire [0:0] bb_conv2d1x1_B6_out_valid_in_1;
    wire [0:0] bb_conv2d1x1_B6_out_valid_out_0;
    wire [0:0] bb_conv2d1x1_B7_out_c0_exe1545327;
    wire [15:0] bb_conv2d1x1_B7_out_feedback_out_1;
    wire [0:0] bb_conv2d1x1_B7_out_feedback_valid_out_1;
    wire [0:0] bb_conv2d1x1_B7_out_lsu_unnamed_conv2d1x116_o_active;
    wire [31:0] bb_conv2d1x1_B7_out_memdep_15_conv2d1x1_avm_address;
    wire [0:0] bb_conv2d1x1_B7_out_memdep_15_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B7_out_memdep_15_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B7_out_memdep_15_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B7_out_memdep_15_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B7_out_memdep_15_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B7_out_memdep_15_conv2d1x1_avm_writedata;
    wire [31:0] bb_conv2d1x1_B7_out_memdep_4_conv2d1x1_avm_address;
    wire [0:0] bb_conv2d1x1_B7_out_memdep_4_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B7_out_memdep_4_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B7_out_memdep_4_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B7_out_memdep_4_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B7_out_memdep_4_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B7_out_memdep_4_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B7_out_stall_in_0;
    wire [0:0] bb_conv2d1x1_B7_out_stall_out_0;
    wire [30:0] bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B7_out_valid_out_0;
    wire [31:0] bb_conv2d1x1_B8_out_c0_exe13451;
    wire [31:0] bb_conv2d1x1_B8_out_c0_exe14452;
    wire [0:0] bb_conv2d1x1_B8_out_c0_exe15453;
    wire [0:0] bb_conv2d1x1_B8_out_c0_exe16454;
    wire [63:0] bb_conv2d1x1_B8_out_c0_exe17455;
    wire [0:0] bb_conv2d1x1_B8_out_c0_exe3441;
    wire [0:0] bb_conv2d1x1_B8_out_c0_exe4442;
    wire [31:0] bb_conv2d1x1_B8_out_c0_exe5443;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe1;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe10;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe11;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe12;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe13;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe14;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe15;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe16;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe17;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe18;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe19;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe2;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe20;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe21;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe22;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe23;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe24;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe25;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe26;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe27;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe28;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe29;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe3;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe30;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe31;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe32;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe4;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe5;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe6;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe7;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe8;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe9;
    wire [0:0] bb_conv2d1x1_B8_out_exiting_stall_out;
    wire [0:0] bb_conv2d1x1_B8_out_exiting_valid_out;
    wire [30:0] bb_conv2d1x1_B8_out_lm148_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_out_lm148_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_out_lm148_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_out_lm148_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_out_lm148_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_out_lm148_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_out_lm148_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B8_out_lm150_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_out_lm150_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_out_lm150_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_out_lm150_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_out_lm150_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_out_lm150_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_out_lm150_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B8_out_lm151_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_out_lm151_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_out_lm151_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_out_lm151_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_out_lm151_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_out_lm151_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_out_lm151_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B8_out_lm153_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_out_lm153_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_out_lm153_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_out_lm153_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_out_lm153_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_out_lm153_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_out_lm153_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B8_out_lm155_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_out_lm155_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_out_lm155_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_out_lm155_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_out_lm155_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_out_lm155_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_out_lm155_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B8_out_pipeline_valid_out;
    wire [0:0] bb_conv2d1x1_B8_out_stall_in_0;
    wire [0:0] bb_conv2d1x1_B8_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B8_out_stall_out_1;
    wire [0:0] bb_conv2d1x1_B8_out_valid_in_0;
    wire [0:0] bb_conv2d1x1_B8_out_valid_in_1;
    wire [0:0] bb_conv2d1x1_B8_out_valid_out_0;
    wire [31:0] c_float_undef157_q;
    wire [9:0] c_i10_undef81_q;
    wire [1:0] c_i2_0221_q;
    wire [31:0] c_i32_undef147_q;
    wire [32:0] c_i33_undef155_q;
    wire [63:0] c_i64_undef197_q;
    wire [0:0] conv2d1x1_B2_x_i_capture;
    wire conv2d1x1_B2_x_i_capture_bitsignaltemp;
    wire [0:0] conv2d1x1_B2_x_i_clear;
    wire conv2d1x1_B2_x_i_clear_bitsignaltemp;
    wire [0:0] conv2d1x1_B2_x_i_enable;
    wire conv2d1x1_B2_x_i_enable_bitsignaltemp;
    wire [0:0] conv2d1x1_B2_x_i_shift;
    wire conv2d1x1_B2_x_i_shift_bitsignaltemp;
    wire [0:0] conv2d1x1_B2_x_i_stall_pred;
    wire conv2d1x1_B2_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv2d1x1_B2_x_i_stall_succ;
    wire conv2d1x1_B2_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv2d1x1_B2_x_i_valid_loop;
    wire conv2d1x1_B2_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv2d1x1_B2_x_i_valid_pred;
    wire conv2d1x1_B2_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv2d1x1_B2_x_i_valid_succ;
    wire conv2d1x1_B2_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv2d1x1_B4_x_i_capture;
    wire conv2d1x1_B4_x_i_capture_bitsignaltemp;
    wire [0:0] conv2d1x1_B4_x_i_clear;
    wire conv2d1x1_B4_x_i_clear_bitsignaltemp;
    wire [0:0] conv2d1x1_B4_x_i_enable;
    wire conv2d1x1_B4_x_i_enable_bitsignaltemp;
    wire [0:0] conv2d1x1_B4_x_i_shift;
    wire conv2d1x1_B4_x_i_shift_bitsignaltemp;
    wire [0:0] conv2d1x1_B4_x_i_stall_pred;
    wire conv2d1x1_B4_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv2d1x1_B4_x_i_stall_succ;
    wire conv2d1x1_B4_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv2d1x1_B4_x_i_valid_loop;
    wire conv2d1x1_B4_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv2d1x1_B4_x_i_valid_pred;
    wire conv2d1x1_B4_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv2d1x1_B4_x_i_valid_succ;
    wire conv2d1x1_B4_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv2d1x1_B6_x_i_capture;
    wire conv2d1x1_B6_x_i_capture_bitsignaltemp;
    wire [0:0] conv2d1x1_B6_x_i_clear;
    wire conv2d1x1_B6_x_i_clear_bitsignaltemp;
    wire [0:0] conv2d1x1_B6_x_i_enable;
    wire conv2d1x1_B6_x_i_enable_bitsignaltemp;
    wire [0:0] conv2d1x1_B6_x_i_shift;
    wire conv2d1x1_B6_x_i_shift_bitsignaltemp;
    wire [0:0] conv2d1x1_B6_x_i_stall_pred;
    wire conv2d1x1_B6_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv2d1x1_B6_x_i_stall_succ;
    wire conv2d1x1_B6_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv2d1x1_B6_x_i_valid_loop;
    wire conv2d1x1_B6_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv2d1x1_B6_x_i_valid_pred;
    wire conv2d1x1_B6_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv2d1x1_B6_x_i_valid_succ;
    wire conv2d1x1_B6_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv2d1x1_B8_x_i_capture;
    wire conv2d1x1_B8_x_i_capture_bitsignaltemp;
    wire [0:0] conv2d1x1_B8_x_i_clear;
    wire conv2d1x1_B8_x_i_clear_bitsignaltemp;
    wire [0:0] conv2d1x1_B8_x_i_enable;
    wire conv2d1x1_B8_x_i_enable_bitsignaltemp;
    wire [0:0] conv2d1x1_B8_x_i_shift;
    wire conv2d1x1_B8_x_i_shift_bitsignaltemp;
    wire [0:0] conv2d1x1_B8_x_i_stall_pred;
    wire conv2d1x1_B8_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv2d1x1_B8_x_i_stall_succ;
    wire conv2d1x1_B8_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv2d1x1_B8_x_i_valid_loop;
    wire conv2d1x1_B8_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv2d1x1_B8_x_i_valid_pred;
    wire conv2d1x1_B8_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv2d1x1_B8_x_i_valid_succ;
    wire conv2d1x1_B8_x_i_valid_succ_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_conv2d1x16_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_conv2d1x16_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_conv2d1x16_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_conv2d1x16_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going40_conv2d1x12_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going40_conv2d1x12_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going40_conv2d1x12_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going40_conv2d1x12_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going44_conv2d1x12_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going44_conv2d1x12_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going44_conv2d1x12_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going44_conv2d1x12_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_conv2d1x10_out_o_stall;
    wire [0:0] loop_limiter_conv2d1x10_out_o_valid;
    wire [0:0] loop_limiter_conv2d1x11_out_o_stall;
    wire [0:0] loop_limiter_conv2d1x11_out_o_valid;
    wire [0:0] loop_limiter_conv2d1x12_out_o_stall;
    wire [0:0] loop_limiter_conv2d1x12_out_o_valid;
    wire [0:0] bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [32:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_14_tpl;
    wire [32:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_15_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_16_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_18_tpl;
    wire [0:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_19_tpl;
    wire [0:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [32:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [9:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [31:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [0:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [31:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_18_tpl;
    wire [31:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_19_tpl;
    wire [0:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_20_tpl;
    wire [0:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [63:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_13_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_14_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_15_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_16_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_18_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_19_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_20_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_21_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_22_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_23_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_24_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_25_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_26_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_27_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_28_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_29_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_30_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_31_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_32_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_33_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_34_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_35_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_36_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_37_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_38_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_39_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [32:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_18_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_19_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_20_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_21_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_22_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_23_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_24_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_25_tpl;
    wire [63:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_26_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_27_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_28_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_29_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_30_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_31_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_32_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_33_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_34_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_35_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_36_tpl;


    // c_i2_0221(CONSTANT,80)
    assign c_i2_0221_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going44_conv2d1x12_valid_fifo(BLACKBOX,114)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going44_2_valid_fifo thei_llvm_fpga_pipeline_keep_going44_conv2d1x12_valid_fifo (
        .in_data_in(c_i2_0221_q),
        .in_stall_in(bb_conv2d1x1_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going44_conv2d1x12_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going44_conv2d1x12_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going44_conv2d1x12_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going40_conv2d1x12_valid_fifo(BLACKBOX,112)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going40_2_valid_fifo thei_llvm_fpga_pipeline_keep_going40_conv2d1x12_valid_fifo (
        .in_data_in(c_i2_0221_q),
        .in_stall_in(bb_conv2d1x1_B4_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going40_conv2d1x12_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going40_conv2d1x12_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going40_conv2d1x12_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef155(CONSTANT,101)
    assign c_i33_undef155_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pipeline_keep_going26_conv2d1x16_valid_fifo(BLACKBOX,110)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going26_6_valid_fifo thei_llvm_fpga_pipeline_keep_going26_conv2d1x16_valid_fifo (
        .in_data_in(c_i2_0221_q),
        .in_stall_in(bb_conv2d1x1_B6_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going26_conv2d1x16_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going26_conv2d1x16_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going26_conv2d1x16_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_conv2d1x16_valid_fifo(BLACKBOX,116)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_conv2d1x16_valid_fifo (
        .in_data_in(c_i2_0221_q),
        .in_stall_in(bb_conv2d1x1_B8_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_conv2d1x16_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_conv2d1x16_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_conv2d1x16_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B7_sr_0_aunroll_x(BLACKBOX,266)
    conv2d1x1_bb_B7_sr_0 thebb_conv2d1x1_B7_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B7_out_stall_out_0),
        .in_i_valid(bb_conv2d1x1_B8_out_valid_out_0),
        .in_i_data_0_tpl(bb_conv2d1x1_B8_out_c0_exe3441),
        .in_i_data_1_tpl(bb_conv2d1x1_B8_out_c0_exe4442),
        .in_i_data_2_tpl(bb_conv2d1x1_B8_out_c0_exe5443),
        .in_i_data_3_tpl(bb_conv2d1x1_B8_out_c0_exe13451),
        .in_i_data_4_tpl(bb_conv2d1x1_B8_out_c0_exe14452),
        .in_i_data_5_tpl(bb_conv2d1x1_B8_out_c0_exe15453),
        .in_i_data_6_tpl(bb_conv2d1x1_B8_out_c0_exe16454),
        .in_i_data_7_tpl(bb_conv2d1x1_B8_out_c0_exe17455),
        .in_i_data_8_tpl(bb_conv2d1x1_B8_out_c1_exe1),
        .in_i_data_9_tpl(bb_conv2d1x1_B8_out_c1_exe2),
        .in_i_data_10_tpl(bb_conv2d1x1_B8_out_c1_exe3),
        .in_i_data_11_tpl(bb_conv2d1x1_B8_out_c1_exe4),
        .in_i_data_12_tpl(bb_conv2d1x1_B8_out_c1_exe5),
        .in_i_data_13_tpl(bb_conv2d1x1_B8_out_c1_exe6),
        .in_i_data_14_tpl(bb_conv2d1x1_B8_out_c1_exe7),
        .in_i_data_15_tpl(bb_conv2d1x1_B8_out_c1_exe8),
        .in_i_data_16_tpl(bb_conv2d1x1_B8_out_c1_exe9),
        .in_i_data_17_tpl(bb_conv2d1x1_B8_out_c1_exe10),
        .in_i_data_18_tpl(bb_conv2d1x1_B8_out_c1_exe11),
        .in_i_data_19_tpl(bb_conv2d1x1_B8_out_c1_exe12),
        .in_i_data_20_tpl(bb_conv2d1x1_B8_out_c1_exe13),
        .in_i_data_21_tpl(bb_conv2d1x1_B8_out_c1_exe14),
        .in_i_data_22_tpl(bb_conv2d1x1_B8_out_c1_exe15),
        .in_i_data_23_tpl(bb_conv2d1x1_B8_out_c1_exe16),
        .in_i_data_24_tpl(bb_conv2d1x1_B8_out_c1_exe17),
        .in_i_data_25_tpl(bb_conv2d1x1_B8_out_c1_exe18),
        .in_i_data_26_tpl(bb_conv2d1x1_B8_out_c1_exe19),
        .in_i_data_27_tpl(bb_conv2d1x1_B8_out_c1_exe20),
        .in_i_data_28_tpl(bb_conv2d1x1_B8_out_c1_exe21),
        .in_i_data_29_tpl(bb_conv2d1x1_B8_out_c1_exe22),
        .in_i_data_30_tpl(bb_conv2d1x1_B8_out_c1_exe23),
        .in_i_data_31_tpl(bb_conv2d1x1_B8_out_c1_exe24),
        .in_i_data_32_tpl(bb_conv2d1x1_B8_out_c1_exe25),
        .in_i_data_33_tpl(bb_conv2d1x1_B8_out_c1_exe26),
        .in_i_data_34_tpl(bb_conv2d1x1_B8_out_c1_exe27),
        .in_i_data_35_tpl(bb_conv2d1x1_B8_out_c1_exe28),
        .in_i_data_36_tpl(bb_conv2d1x1_B8_out_c1_exe29),
        .in_i_data_37_tpl(bb_conv2d1x1_B8_out_c1_exe30),
        .in_i_data_38_tpl(bb_conv2d1x1_B8_out_c1_exe31),
        .in_i_data_39_tpl(bb_conv2d1x1_B8_out_c1_exe32),
        .out_o_stall(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_21_tpl),
        .out_o_data_22_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_22_tpl),
        .out_o_data_23_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_23_tpl),
        .out_o_data_24_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_24_tpl),
        .out_o_data_25_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_25_tpl),
        .out_o_data_26_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_26_tpl),
        .out_o_data_27_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_27_tpl),
        .out_o_data_28_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_28_tpl),
        .out_o_data_29_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_29_tpl),
        .out_o_data_30_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_30_tpl),
        .out_o_data_31_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_31_tpl),
        .out_o_data_32_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_32_tpl),
        .out_o_data_33_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_33_tpl),
        .out_o_data_34_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_34_tpl),
        .out_o_data_35_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_35_tpl),
        .out_o_data_36_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_36_tpl),
        .out_o_data_37_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_37_tpl),
        .out_o_data_38_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_38_tpl),
        .out_o_data_39_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_39_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_conv2d1x16_sr(BLACKBOX,115)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_conv2d1x16_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_conv2d1x16_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv2d1x1_B8_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_conv2d1x16_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_conv2d1x16_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i64_undef197(CONSTANT,104)
    assign c_i64_undef197_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bb_conv2d1x1_B8(BLACKBOX,10)
    conv2d1x1_bb_B8 thebb_conv2d1x1_B8 (
        .in_ap_pop_ext7140_0(c_i64_undef197_q),
        .in_ap_pop_ext7140_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_26_tpl),
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight(in_arg_filter_weight),
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_ij_068_pop1366_pop36160_0(c_i32_undef147_q),
        .in_ij_068_pop1366_pop36160_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_36_tpl),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_intel_reserved_ffwd_2_0(bb_conv2d1x1_B0_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(bb_conv2d1x1_B0_out_intel_reserved_ffwd_3_0),
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
        .in_lm52_pop30150_0(c_float_undef157_q),
        .in_lm52_pop30150_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_31_tpl),
        .in_lm95_0(c_float_undef157_q),
        .in_lm95_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_mul100105_0(c_i32_undef147_q),
        .in_mul100105_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_mul10058_pop32154_0(c_i32_undef147_q),
        .in_mul10058_pop32154_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_33_tpl),
        .in_mul21100_0(c_i32_undef147_q),
        .in_mul21100_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_mul2155_pop31152_0(c_i32_undef147_q),
        .in_mul2155_pop31152_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_32_tpl),
        .in_mul49_pop26146_0(c_i32_undef147_q),
        .in_mul49_pop26146_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_29_tpl),
        .in_mul90_0(c_i32_undef147_q),
        .in_mul90_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp3864_pop35158_0(GND_q),
        .in_notcmp3864_pop35158_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_35_tpl),
        .in_notcmp43110_0(GND_q),
        .in_notcmp43110_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_notcmp4361_pop33156_0(GND_q),
        .in_notcmp4361_pop33156_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_34_tpl),
        .in_output_im(in_arg_output_im),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_conv2d1x16_sr_out_o_stall),
        .in_pop27142_0(GND_q),
        .in_pop27142_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_27_tpl),
        .in_pop28144_0(GND_q),
        .in_pop28144_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_28_tpl),
        .in_pop29148_0(GND_q),
        .in_pop29148_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_30_tpl),
        .in_pre74_e125_0(c_float_undef157_q),
        .in_pre74_e125_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_pre75_e126_0(c_float_undef157_q),
        .in_pre75_e126_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_pre76_e127_0(c_float_undef157_q),
        .in_pre76_e127_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_pre77_e128_0(c_float_undef157_q),
        .in_pre77_e128_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_pre78_e129_0(c_float_undef157_q),
        .in_pre78_e129_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_pre79_e130_0(c_float_undef157_q),
        .in_pre79_e130_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_pre80_e131_0(c_float_undef157_q),
        .in_pre80_e131_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_pre81_e132_0(c_float_undef157_q),
        .in_pre81_e132_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_pre82_e133_0(c_float_undef157_q),
        .in_pre82_e133_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_19_tpl),
        .in_pre83_e134_0(c_float_undef157_q),
        .in_pre83_e134_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_20_tpl),
        .in_pre84_e135_0(c_float_undef157_q),
        .in_pre84_e135_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_21_tpl),
        .in_pre85_e136_0(c_float_undef157_q),
        .in_pre85_e136_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_22_tpl),
        .in_pre86_e137_0(c_float_undef157_q),
        .in_pre86_e137_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_23_tpl),
        .in_pre87_e138_0(c_float_undef157_q),
        .in_pre87_e138_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_24_tpl),
        .in_pre88_e139_0(c_float_undef157_q),
        .in_pre88_e139_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_25_tpl),
        .in_pre_e124_0(c_float_undef157_q),
        .in_pre_e124_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_stall_in_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_conv2d1x117_0(GND_q),
        .in_unnamed_conv2d1x117_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_unnamed_conv2d1x118_0(GND_q),
        .in_unnamed_conv2d1x118_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_unnamed_conv2d1x119_0(GND_q),
        .in_unnamed_conv2d1x119_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_unnamed_conv2d1x120_0(c_i33_undef155_q),
        .in_unnamed_conv2d1x120_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_conv2d1x16_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe13451(bb_conv2d1x1_B8_out_c0_exe13451),
        .out_c0_exe14452(bb_conv2d1x1_B8_out_c0_exe14452),
        .out_c0_exe15453(bb_conv2d1x1_B8_out_c0_exe15453),
        .out_c0_exe16454(bb_conv2d1x1_B8_out_c0_exe16454),
        .out_c0_exe17455(bb_conv2d1x1_B8_out_c0_exe17455),
        .out_c0_exe3441(bb_conv2d1x1_B8_out_c0_exe3441),
        .out_c0_exe4442(bb_conv2d1x1_B8_out_c0_exe4442),
        .out_c0_exe5443(bb_conv2d1x1_B8_out_c0_exe5443),
        .out_c1_exe1(bb_conv2d1x1_B8_out_c1_exe1),
        .out_c1_exe10(bb_conv2d1x1_B8_out_c1_exe10),
        .out_c1_exe11(bb_conv2d1x1_B8_out_c1_exe11),
        .out_c1_exe12(bb_conv2d1x1_B8_out_c1_exe12),
        .out_c1_exe13(bb_conv2d1x1_B8_out_c1_exe13),
        .out_c1_exe14(bb_conv2d1x1_B8_out_c1_exe14),
        .out_c1_exe15(bb_conv2d1x1_B8_out_c1_exe15),
        .out_c1_exe16(bb_conv2d1x1_B8_out_c1_exe16),
        .out_c1_exe17(bb_conv2d1x1_B8_out_c1_exe17),
        .out_c1_exe18(bb_conv2d1x1_B8_out_c1_exe18),
        .out_c1_exe19(bb_conv2d1x1_B8_out_c1_exe19),
        .out_c1_exe2(bb_conv2d1x1_B8_out_c1_exe2),
        .out_c1_exe20(bb_conv2d1x1_B8_out_c1_exe20),
        .out_c1_exe21(bb_conv2d1x1_B8_out_c1_exe21),
        .out_c1_exe22(bb_conv2d1x1_B8_out_c1_exe22),
        .out_c1_exe23(bb_conv2d1x1_B8_out_c1_exe23),
        .out_c1_exe24(bb_conv2d1x1_B8_out_c1_exe24),
        .out_c1_exe25(bb_conv2d1x1_B8_out_c1_exe25),
        .out_c1_exe26(bb_conv2d1x1_B8_out_c1_exe26),
        .out_c1_exe27(bb_conv2d1x1_B8_out_c1_exe27),
        .out_c1_exe28(bb_conv2d1x1_B8_out_c1_exe28),
        .out_c1_exe29(bb_conv2d1x1_B8_out_c1_exe29),
        .out_c1_exe3(bb_conv2d1x1_B8_out_c1_exe3),
        .out_c1_exe30(bb_conv2d1x1_B8_out_c1_exe30),
        .out_c1_exe31(bb_conv2d1x1_B8_out_c1_exe31),
        .out_c1_exe32(bb_conv2d1x1_B8_out_c1_exe32),
        .out_c1_exe4(bb_conv2d1x1_B8_out_c1_exe4),
        .out_c1_exe5(bb_conv2d1x1_B8_out_c1_exe5),
        .out_c1_exe6(bb_conv2d1x1_B8_out_c1_exe6),
        .out_c1_exe7(bb_conv2d1x1_B8_out_c1_exe7),
        .out_c1_exe8(bb_conv2d1x1_B8_out_c1_exe8),
        .out_c1_exe9(bb_conv2d1x1_B8_out_c1_exe9),
        .out_exiting_stall_out(bb_conv2d1x1_B8_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv2d1x1_B8_out_exiting_valid_out),
        .out_lm148_conv2d1x1_avm_address(bb_conv2d1x1_B8_out_lm148_conv2d1x1_avm_address),
        .out_lm148_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_out_lm148_conv2d1x1_avm_burstcount),
        .out_lm148_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_out_lm148_conv2d1x1_avm_byteenable),
        .out_lm148_conv2d1x1_avm_enable(bb_conv2d1x1_B8_out_lm148_conv2d1x1_avm_enable),
        .out_lm148_conv2d1x1_avm_read(bb_conv2d1x1_B8_out_lm148_conv2d1x1_avm_read),
        .out_lm148_conv2d1x1_avm_write(bb_conv2d1x1_B8_out_lm148_conv2d1x1_avm_write),
        .out_lm148_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_out_lm148_conv2d1x1_avm_writedata),
        .out_lm150_conv2d1x1_avm_address(bb_conv2d1x1_B8_out_lm150_conv2d1x1_avm_address),
        .out_lm150_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_out_lm150_conv2d1x1_avm_burstcount),
        .out_lm150_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_out_lm150_conv2d1x1_avm_byteenable),
        .out_lm150_conv2d1x1_avm_enable(bb_conv2d1x1_B8_out_lm150_conv2d1x1_avm_enable),
        .out_lm150_conv2d1x1_avm_read(bb_conv2d1x1_B8_out_lm150_conv2d1x1_avm_read),
        .out_lm150_conv2d1x1_avm_write(bb_conv2d1x1_B8_out_lm150_conv2d1x1_avm_write),
        .out_lm150_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_out_lm150_conv2d1x1_avm_writedata),
        .out_lm151_conv2d1x1_avm_address(bb_conv2d1x1_B8_out_lm151_conv2d1x1_avm_address),
        .out_lm151_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_out_lm151_conv2d1x1_avm_burstcount),
        .out_lm151_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_out_lm151_conv2d1x1_avm_byteenable),
        .out_lm151_conv2d1x1_avm_enable(bb_conv2d1x1_B8_out_lm151_conv2d1x1_avm_enable),
        .out_lm151_conv2d1x1_avm_read(bb_conv2d1x1_B8_out_lm151_conv2d1x1_avm_read),
        .out_lm151_conv2d1x1_avm_write(bb_conv2d1x1_B8_out_lm151_conv2d1x1_avm_write),
        .out_lm151_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_out_lm151_conv2d1x1_avm_writedata),
        .out_lm153_conv2d1x1_avm_address(bb_conv2d1x1_B8_out_lm153_conv2d1x1_avm_address),
        .out_lm153_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_out_lm153_conv2d1x1_avm_burstcount),
        .out_lm153_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_out_lm153_conv2d1x1_avm_byteenable),
        .out_lm153_conv2d1x1_avm_enable(bb_conv2d1x1_B8_out_lm153_conv2d1x1_avm_enable),
        .out_lm153_conv2d1x1_avm_read(bb_conv2d1x1_B8_out_lm153_conv2d1x1_avm_read),
        .out_lm153_conv2d1x1_avm_write(bb_conv2d1x1_B8_out_lm153_conv2d1x1_avm_write),
        .out_lm153_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_out_lm153_conv2d1x1_avm_writedata),
        .out_lm155_conv2d1x1_avm_address(bb_conv2d1x1_B8_out_lm155_conv2d1x1_avm_address),
        .out_lm155_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_out_lm155_conv2d1x1_avm_burstcount),
        .out_lm155_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_out_lm155_conv2d1x1_avm_byteenable),
        .out_lm155_conv2d1x1_avm_enable(bb_conv2d1x1_B8_out_lm155_conv2d1x1_avm_enable),
        .out_lm155_conv2d1x1_avm_read(bb_conv2d1x1_B8_out_lm155_conv2d1x1_avm_read),
        .out_lm155_conv2d1x1_avm_write(bb_conv2d1x1_B8_out_lm155_conv2d1x1_avm_write),
        .out_lm155_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_out_lm155_conv2d1x1_avm_writedata),
        .out_pipeline_valid_out(bb_conv2d1x1_B8_out_pipeline_valid_out),
        .out_stall_in_0(bb_conv2d1x1_B8_out_stall_in_0),
        .out_stall_out_0(bb_conv2d1x1_B8_out_stall_out_0),
        .out_stall_out_1(bb_conv2d1x1_B8_out_stall_out_1),
        .out_valid_in_0(bb_conv2d1x1_B8_out_valid_in_0),
        .out_valid_in_1(bb_conv2d1x1_B8_out_valid_in_1),
        .out_valid_out_0(bb_conv2d1x1_B8_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B8_sr_1_aunroll_x(BLACKBOX,267)
    conv2d1x1_bb_B8_sr_1 thebb_conv2d1x1_B8_sr_1_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B8_out_stall_out_1),
        .in_i_valid(loop_limiter_conv2d1x12_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_conv2d1x1_B5_out_c0_exe1432512),
        .in_i_data_2_tpl(bb_conv2d1x1_B5_out_c0_exe1532613),
        .in_i_data_3_tpl(bb_conv2d1x1_B5_out_c0_exe1632714),
        .in_i_data_4_tpl(bb_conv2d1x1_B5_out_c0_exe1732815),
        .in_i_data_5_tpl(bb_conv2d1x1_B5_out_c0_exe1832916),
        .in_i_data_6_tpl(bb_conv2d1x1_B5_out_c0_exe1933017),
        .in_i_data_7_tpl(bb_conv2d1x1_B5_out_c0_exe2033118),
        .in_i_data_8_tpl(bb_conv2d1x1_B5_out_c0_exe2119),
        .in_i_data_9_tpl(bb_conv2d1x1_B5_out_c0_exe2220),
        .in_i_data_10_tpl(bb_conv2d1x1_B5_out_c0_exe1251),
        .in_i_data_11_tpl(bb_conv2d1x1_B5_out_c0_exe2252),
        .in_i_data_12_tpl(bb_conv2d1x1_B5_out_c0_exe3253),
        .in_i_data_13_tpl(bb_conv2d1x1_B5_out_c0_exe4254),
        .in_i_data_14_tpl(bb_conv2d1x1_B5_out_c0_exe5255),
        .in_i_data_15_tpl(bb_conv2d1x1_B5_out_c0_exe6256),
        .in_i_data_16_tpl(bb_conv2d1x1_B5_out_c0_exe7257),
        .in_i_data_17_tpl(bb_conv2d1x1_B5_out_c0_exe8258),
        .in_i_data_18_tpl(bb_conv2d1x1_B5_out_c0_exe9259),
        .in_i_data_19_tpl(bb_conv2d1x1_B5_out_c0_exe10260),
        .in_i_data_20_tpl(bb_conv2d1x1_B5_out_c0_exe11261),
        .in_i_data_21_tpl(bb_conv2d1x1_B5_out_c0_exe12262),
        .in_i_data_22_tpl(bb_conv2d1x1_B5_out_c0_exe13263),
        .in_i_data_23_tpl(bb_conv2d1x1_B5_out_c0_exe14264),
        .in_i_data_24_tpl(bb_conv2d1x1_B5_out_c0_exe15265),
        .in_i_data_25_tpl(bb_conv2d1x1_B5_out_c0_exe16266),
        .in_i_data_26_tpl(bb_conv2d1x1_B5_out_c0_exe23131),
        .in_i_data_27_tpl(bb_conv2d1x1_B5_out_c0_exe33142),
        .in_i_data_28_tpl(bb_conv2d1x1_B5_out_c0_exe43153),
        .in_i_data_29_tpl(bb_conv2d1x1_B5_out_c0_exe63174),
        .in_i_data_30_tpl(bb_conv2d1x1_B5_out_c0_exe73185),
        .in_i_data_31_tpl(bb_conv2d1x1_B5_out_c0_exe83196),
        .in_i_data_32_tpl(bb_conv2d1x1_B5_out_c0_exe93207),
        .in_i_data_33_tpl(bb_conv2d1x1_B5_out_c0_exe103218),
        .in_i_data_34_tpl(bb_conv2d1x1_B5_out_c0_exe113229),
        .in_i_data_35_tpl(bb_conv2d1x1_B5_out_c0_exe1232310),
        .in_i_data_36_tpl(bb_conv2d1x1_B5_out_c0_exe1332411),
        .out_o_stall(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_21_tpl),
        .out_o_data_22_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_22_tpl),
        .out_o_data_23_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_23_tpl),
        .out_o_data_24_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_24_tpl),
        .out_o_data_25_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_25_tpl),
        .out_o_data_26_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_26_tpl),
        .out_o_data_27_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_27_tpl),
        .out_o_data_28_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_28_tpl),
        .out_o_data_29_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_29_tpl),
        .out_o_data_30_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_30_tpl),
        .out_o_data_31_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_31_tpl),
        .out_o_data_32_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_32_tpl),
        .out_o_data_33_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_33_tpl),
        .out_o_data_34_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_34_tpl),
        .out_o_data_35_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_35_tpl),
        .out_o_data_36_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_36_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv2d1x12(BLACKBOX,179)
    conv2d1x1_loop_limiter_2 theloop_limiter_conv2d1x12 (
        .in_i_stall(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2d1x1_B8_out_exiting_stall_out),
        .in_i_valid(bb_conv2d1x1_B5_out_valid_out_0),
        .in_i_valid_exit(bb_conv2d1x1_B8_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv2d1x12_out_o_stall),
        .out_o_valid(loop_limiter_conv2d1x12_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B5(BLACKBOX,7)
    conv2d1x1_bb_B5 thebb_conv2d1x1_B5 (
        .in_c0_exe103218_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe113229_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe1232310_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe1332411_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe1432512_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe1532613_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_12_tpl),
        .in_c0_exe1632714_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_13_tpl),
        .in_c0_exe1732815_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_14_tpl),
        .in_c0_exe1832916_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_15_tpl),
        .in_c0_exe1933017_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_16_tpl),
        .in_c0_exe2033118_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_17_tpl),
        .in_c0_exe2119_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_18_tpl),
        .in_c0_exe2220_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_19_tpl),
        .in_c0_exe23131_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe33142_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe43153_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe63174_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe73185_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe83196_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe93207_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight(in_arg_filter_weight),
        .in_flush(in_start),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_readdata(in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_readdata),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_readdatavalid(in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_readdatavalid),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_waitrequest(in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_waitrequest),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writeack(in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writeack),
        .in_output_im(in_arg_output_im),
        .in_stall_in_0(loop_limiter_conv2d1x12_out_o_stall),
        .in_valid_in_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe10260(bb_conv2d1x1_B5_out_c0_exe10260),
        .out_c0_exe103218(bb_conv2d1x1_B5_out_c0_exe103218),
        .out_c0_exe11261(bb_conv2d1x1_B5_out_c0_exe11261),
        .out_c0_exe113229(bb_conv2d1x1_B5_out_c0_exe113229),
        .out_c0_exe12262(bb_conv2d1x1_B5_out_c0_exe12262),
        .out_c0_exe1232310(bb_conv2d1x1_B5_out_c0_exe1232310),
        .out_c0_exe1251(bb_conv2d1x1_B5_out_c0_exe1251),
        .out_c0_exe13263(bb_conv2d1x1_B5_out_c0_exe13263),
        .out_c0_exe1332411(bb_conv2d1x1_B5_out_c0_exe1332411),
        .out_c0_exe14264(bb_conv2d1x1_B5_out_c0_exe14264),
        .out_c0_exe1432512(bb_conv2d1x1_B5_out_c0_exe1432512),
        .out_c0_exe15265(bb_conv2d1x1_B5_out_c0_exe15265),
        .out_c0_exe1532613(bb_conv2d1x1_B5_out_c0_exe1532613),
        .out_c0_exe16266(bb_conv2d1x1_B5_out_c0_exe16266),
        .out_c0_exe1632714(bb_conv2d1x1_B5_out_c0_exe1632714),
        .out_c0_exe1732815(bb_conv2d1x1_B5_out_c0_exe1732815),
        .out_c0_exe1832916(bb_conv2d1x1_B5_out_c0_exe1832916),
        .out_c0_exe1933017(bb_conv2d1x1_B5_out_c0_exe1933017),
        .out_c0_exe2033118(bb_conv2d1x1_B5_out_c0_exe2033118),
        .out_c0_exe2119(bb_conv2d1x1_B5_out_c0_exe2119),
        .out_c0_exe2220(bb_conv2d1x1_B5_out_c0_exe2220),
        .out_c0_exe2252(bb_conv2d1x1_B5_out_c0_exe2252),
        .out_c0_exe23131(bb_conv2d1x1_B5_out_c0_exe23131),
        .out_c0_exe3253(bb_conv2d1x1_B5_out_c0_exe3253),
        .out_c0_exe33142(bb_conv2d1x1_B5_out_c0_exe33142),
        .out_c0_exe4254(bb_conv2d1x1_B5_out_c0_exe4254),
        .out_c0_exe43153(bb_conv2d1x1_B5_out_c0_exe43153),
        .out_c0_exe5255(bb_conv2d1x1_B5_out_c0_exe5255),
        .out_c0_exe6256(bb_conv2d1x1_B5_out_c0_exe6256),
        .out_c0_exe63174(bb_conv2d1x1_B5_out_c0_exe63174),
        .out_c0_exe7257(bb_conv2d1x1_B5_out_c0_exe7257),
        .out_c0_exe73185(bb_conv2d1x1_B5_out_c0_exe73185),
        .out_c0_exe8258(bb_conv2d1x1_B5_out_c0_exe8258),
        .out_c0_exe83196(bb_conv2d1x1_B5_out_c0_exe83196),
        .out_c0_exe9259(bb_conv2d1x1_B5_out_c0_exe9259),
        .out_c0_exe93207(bb_conv2d1x1_B5_out_c0_exe93207),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_address(bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_address),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_burstcount(bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_burstcount),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_byteenable(bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_byteenable),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_enable(bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_enable),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_read(bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_read),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_write(bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_write),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writedata(bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writedata),
        .out_stall_out_0(bb_conv2d1x1_B5_out_stall_out_0),
        .out_valid_out_0(bb_conv2d1x1_B5_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B5_sr_0_aunroll_x(BLACKBOX,264)
    conv2d1x1_bb_B5_sr_0 thebb_conv2d1x1_B5_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B5_out_stall_out_0),
        .in_i_valid(bb_conv2d1x1_B6_out_valid_out_0),
        .in_i_data_0_tpl(bb_conv2d1x1_B6_out_c0_exe2313),
        .in_i_data_1_tpl(bb_conv2d1x1_B6_out_c0_exe3314),
        .in_i_data_2_tpl(bb_conv2d1x1_B6_out_c0_exe4315),
        .in_i_data_3_tpl(bb_conv2d1x1_B6_out_c0_exe6317),
        .in_i_data_4_tpl(bb_conv2d1x1_B6_out_c0_exe7318),
        .in_i_data_5_tpl(bb_conv2d1x1_B6_out_c0_exe8319),
        .in_i_data_6_tpl(bb_conv2d1x1_B6_out_c0_exe9320),
        .in_i_data_7_tpl(bb_conv2d1x1_B6_out_c0_exe10321),
        .in_i_data_8_tpl(bb_conv2d1x1_B6_out_c0_exe11322),
        .in_i_data_9_tpl(bb_conv2d1x1_B6_out_c0_exe12323),
        .in_i_data_10_tpl(bb_conv2d1x1_B6_out_c0_exe13324),
        .in_i_data_11_tpl(bb_conv2d1x1_B6_out_c0_exe14325),
        .in_i_data_12_tpl(bb_conv2d1x1_B6_out_c0_exe15326),
        .in_i_data_13_tpl(bb_conv2d1x1_B6_out_c0_exe16327),
        .in_i_data_14_tpl(bb_conv2d1x1_B6_out_c0_exe17328),
        .in_i_data_15_tpl(bb_conv2d1x1_B6_out_c0_exe18329),
        .in_i_data_16_tpl(bb_conv2d1x1_B6_out_c0_exe19330),
        .in_i_data_17_tpl(bb_conv2d1x1_B6_out_c0_exe20331),
        .in_i_data_18_tpl(bb_conv2d1x1_B6_out_c0_exe21),
        .in_i_data_19_tpl(bb_conv2d1x1_B6_out_c0_exe22),
        .out_o_stall(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_19_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going26_conv2d1x16_sr(BLACKBOX,109)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going26_6_sr thei_llvm_fpga_pipeline_keep_going26_conv2d1x16_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going26_conv2d1x16_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv2d1x1_B6_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going26_conv2d1x16_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going26_conv2d1x16_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i10_undef81(CONSTANT,32)
    assign c_i10_undef81_q = $unsigned(10'b0000000000);

    // bb_conv2d1x1_B6(BLACKBOX,8)
    conv2d1x1_bb_B6 thebb_conv2d1x1_B6 (
        .in_ap_pop113_0(c_i10_undef81_q),
        .in_ap_pop113_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight(in_arg_filter_weight),
        .in_flush(in_start),
        .in_forked23_0(GND_q),
        .in_forked23_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_ij_068_pop13116_0(c_i32_undef147_q),
        .in_ij_068_pop13116_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_lm51_pop18120_0(c_float_undef157_q),
        .in_lm51_pop18120_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_lm97_0(c_float_undef157_q),
        .in_lm97_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_mul100107_0(c_i32_undef147_q),
        .in_mul100107_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_mul10057_pop20122_0(c_i32_undef147_q),
        .in_mul10057_pop20122_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_19_tpl),
        .in_mul21102_0(c_i32_undef147_q),
        .in_mul21102_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_mul2154_pop19121_0(c_i32_undef147_q),
        .in_mul2154_pop19121_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_mul48_pop14117_0(c_i32_undef147_q),
        .in_mul48_pop14117_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_mul92_0(c_i32_undef147_q),
        .in_mul92_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp38115_0(GND_q),
        .in_notcmp38115_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_notcmp43112_0(GND_q),
        .in_notcmp43112_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_notcmp4360_pop21123_0(GND_q),
        .in_notcmp4360_pop21123_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_20_tpl),
        .in_output_im(in_arg_output_im),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going26_conv2d1x16_sr_out_o_stall),
        .in_pop15118_0(GND_q),
        .in_pop15118_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_pop16114_0(GND_q),
        .in_pop16114_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_pop17119_0(GND_q),
        .in_pop17119_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_stall_in_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_conv2d1x111_0(GND_q),
        .in_unnamed_conv2d1x111_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_unnamed_conv2d1x112_0(GND_q),
        .in_unnamed_conv2d1x112_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_unnamed_conv2d1x113_0(GND_q),
        .in_unnamed_conv2d1x113_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_unnamed_conv2d1x114_0(c_i33_undef155_q),
        .in_unnamed_conv2d1x114_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_readdata(in_unnamed_conv2d1x115_conv2d1x1_avm_readdata),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_readdatavalid(in_unnamed_conv2d1x115_conv2d1x1_avm_readdatavalid),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_waitrequest(in_unnamed_conv2d1x115_conv2d1x1_avm_waitrequest),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_writeack(in_unnamed_conv2d1x115_conv2d1x1_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going26_conv2d1x16_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10321(bb_conv2d1x1_B6_out_c0_exe10321),
        .out_c0_exe11322(bb_conv2d1x1_B6_out_c0_exe11322),
        .out_c0_exe12323(bb_conv2d1x1_B6_out_c0_exe12323),
        .out_c0_exe13324(bb_conv2d1x1_B6_out_c0_exe13324),
        .out_c0_exe14325(bb_conv2d1x1_B6_out_c0_exe14325),
        .out_c0_exe15326(bb_conv2d1x1_B6_out_c0_exe15326),
        .out_c0_exe16327(bb_conv2d1x1_B6_out_c0_exe16327),
        .out_c0_exe17328(bb_conv2d1x1_B6_out_c0_exe17328),
        .out_c0_exe18329(bb_conv2d1x1_B6_out_c0_exe18329),
        .out_c0_exe19330(bb_conv2d1x1_B6_out_c0_exe19330),
        .out_c0_exe20331(bb_conv2d1x1_B6_out_c0_exe20331),
        .out_c0_exe21(bb_conv2d1x1_B6_out_c0_exe21),
        .out_c0_exe22(bb_conv2d1x1_B6_out_c0_exe22),
        .out_c0_exe2313(bb_conv2d1x1_B6_out_c0_exe2313),
        .out_c0_exe3314(bb_conv2d1x1_B6_out_c0_exe3314),
        .out_c0_exe4315(bb_conv2d1x1_B6_out_c0_exe4315),
        .out_c0_exe6317(bb_conv2d1x1_B6_out_c0_exe6317),
        .out_c0_exe7318(bb_conv2d1x1_B6_out_c0_exe7318),
        .out_c0_exe8319(bb_conv2d1x1_B6_out_c0_exe8319),
        .out_c0_exe9320(bb_conv2d1x1_B6_out_c0_exe9320),
        .out_exiting_stall_out(bb_conv2d1x1_B6_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv2d1x1_B6_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_conv2d1x1_B6_out_pipeline_valid_out),
        .out_stall_in_0(bb_conv2d1x1_B6_out_stall_in_0),
        .out_stall_out_0(bb_conv2d1x1_B6_out_stall_out_0),
        .out_stall_out_1(bb_conv2d1x1_B6_out_stall_out_1),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_address(bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_address),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount(bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable(bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_enable(bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_enable),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_read(bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_read),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_write(bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_write),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_writedata(bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_writedata),
        .out_valid_in_0(bb_conv2d1x1_B6_out_valid_in_0),
        .out_valid_in_1(bb_conv2d1x1_B6_out_valid_in_1),
        .out_valid_out_0(bb_conv2d1x1_B6_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B6_sr_1_aunroll_x(BLACKBOX,265)
    conv2d1x1_bb_B6_sr_1 thebb_conv2d1x1_B6_sr_1_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B6_out_stall_out_1),
        .in_i_valid(loop_limiter_conv2d1x11_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_conv2d1x1_B4_out_c0_exe12),
        .in_i_data_2_tpl(bb_conv2d1x1_B4_out_c0_exe13),
        .in_i_data_3_tpl(bb_conv2d1x1_B4_out_c0_exe14),
        .in_i_data_4_tpl(bb_conv2d1x1_B4_out_c0_exe15),
        .in_i_data_5_tpl(bb_conv2d1x1_B4_out_c0_exe16),
        .in_i_data_6_tpl(bb_conv2d1x1_B4_out_c0_exe17),
        .in_i_data_7_tpl(bb_conv2d1x1_B4_out_c0_exe18),
        .in_i_data_8_tpl(bb_conv2d1x1_B4_out_c0_exe19),
        .in_i_data_9_tpl(bb_conv2d1x1_B4_out_c0_exe20),
        .in_i_data_10_tpl(bb_conv2d1x1_B4_out_ap_pop),
        .in_i_data_11_tpl(bb_conv2d1x1_B4_out_c0_exe1220),
        .in_i_data_12_tpl(bb_conv2d1x1_B4_out_c0_exe3222),
        .in_i_data_13_tpl(bb_conv2d1x1_B4_out_c0_exe4223),
        .in_i_data_14_tpl(bb_conv2d1x1_B4_out_c0_exe5224),
        .in_i_data_15_tpl(bb_conv2d1x1_B4_out_c0_exe6225),
        .in_i_data_16_tpl(bb_conv2d1x1_B4_out_c0_exe7226),
        .in_i_data_17_tpl(bb_conv2d1x1_B4_out_c0_exe8227),
        .in_i_data_18_tpl(bb_conv2d1x1_B4_out_c0_exe9228),
        .in_i_data_19_tpl(bb_conv2d1x1_B4_out_c0_exe10229),
        .in_i_data_20_tpl(bb_conv2d1x1_B4_out_c0_exe11230),
        .out_o_stall(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_20_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv2d1x11(BLACKBOX,178)
    conv2d1x1_loop_limiter_1 theloop_limiter_conv2d1x11 (
        .in_i_stall(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2d1x1_B6_out_exiting_stall_out),
        .in_i_valid(bb_conv2d1x1_B4_out_valid_out_0),
        .in_i_valid_exit(bb_conv2d1x1_B6_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv2d1x11_out_o_stall),
        .out_o_valid(loop_limiter_conv2d1x11_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going40_conv2d1x12_sr(BLACKBOX,111)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going40_2_sr thei_llvm_fpga_pipeline_keep_going40_conv2d1x12_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going40_conv2d1x12_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv2d1x1_B4_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going40_conv2d1x12_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going40_conv2d1x12_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef147(CONSTANT,84)
    assign c_i32_undef147_q = $unsigned(32'b00000000000000000000000000000000);

    // c_float_undef157(FLOATCONSTANT,11)
    assign c_float_undef157_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_conv2d1x1_B3_sr_0_aunroll_x(BLACKBOX,262)
    conv2d1x1_bb_B3_sr_0 thebb_conv2d1x1_B3_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B3_out_stall_out_0),
        .in_i_valid(bb_conv2d1x1_B7_out_valid_out_0),
        .in_i_data_0_tpl(bb_conv2d1x1_B7_out_c0_exe1545327),
        .out_o_stall(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B7(BLACKBOX,9)
    conv2d1x1_bb_B7 thebb_conv2d1x1_B7 (
        .in_c0_exe1345124_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe1445225_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe1545327_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe1645428_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe1745529_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe344121_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe444222_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe544323_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c1_exe1039_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_17_tpl),
        .in_c1_exe1140_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_18_tpl),
        .in_c1_exe1241_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_19_tpl),
        .in_c1_exe130_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c1_exe1342_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_20_tpl),
        .in_c1_exe1443_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_21_tpl),
        .in_c1_exe1544_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_22_tpl),
        .in_c1_exe1645_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_23_tpl),
        .in_c1_exe1746_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_24_tpl),
        .in_c1_exe1847_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_25_tpl),
        .in_c1_exe1948_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_26_tpl),
        .in_c1_exe2049_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_27_tpl),
        .in_c1_exe2150_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_28_tpl),
        .in_c1_exe2251_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_29_tpl),
        .in_c1_exe231_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c1_exe2352_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_30_tpl),
        .in_c1_exe2453_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_31_tpl),
        .in_c1_exe2554_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_32_tpl),
        .in_c1_exe2655_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_33_tpl),
        .in_c1_exe2756_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_34_tpl),
        .in_c1_exe2857_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_35_tpl),
        .in_c1_exe2958_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_36_tpl),
        .in_c1_exe3059_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_37_tpl),
        .in_c1_exe3160_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_38_tpl),
        .in_c1_exe3261_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_39_tpl),
        .in_c1_exe332_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_c1_exe433_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_c1_exe534_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_12_tpl),
        .in_c1_exe635_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_13_tpl),
        .in_c1_exe736_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_14_tpl),
        .in_c1_exe837_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_15_tpl),
        .in_c1_exe938_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_16_tpl),
        .in_feedback_stall_in_1(bb_conv2d1x1_B4_out_feedback_stall_out_1),
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight(in_arg_filter_weight),
        .in_flush(in_start),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_memdep_15_conv2d1x1_avm_readdata(in_memdep_15_conv2d1x1_avm_readdata),
        .in_memdep_15_conv2d1x1_avm_readdatavalid(in_memdep_15_conv2d1x1_avm_readdatavalid),
        .in_memdep_15_conv2d1x1_avm_waitrequest(in_memdep_15_conv2d1x1_avm_waitrequest),
        .in_memdep_15_conv2d1x1_avm_writeack(in_memdep_15_conv2d1x1_avm_writeack),
        .in_memdep_4_conv2d1x1_avm_readdata(in_memdep_4_conv2d1x1_avm_readdata),
        .in_memdep_4_conv2d1x1_avm_readdatavalid(in_memdep_4_conv2d1x1_avm_readdatavalid),
        .in_memdep_4_conv2d1x1_avm_waitrequest(in_memdep_4_conv2d1x1_avm_waitrequest),
        .in_memdep_4_conv2d1x1_avm_writeack(in_memdep_4_conv2d1x1_avm_writeack),
        .in_output_im(in_arg_output_im),
        .in_stall_in_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_conv2d1x116_conv2d1x1_avm_readdata(in_unnamed_conv2d1x116_conv2d1x1_avm_readdata),
        .in_unnamed_conv2d1x116_conv2d1x1_avm_readdatavalid(in_unnamed_conv2d1x116_conv2d1x1_avm_readdatavalid),
        .in_unnamed_conv2d1x116_conv2d1x1_avm_waitrequest(in_unnamed_conv2d1x116_conv2d1x1_avm_waitrequest),
        .in_unnamed_conv2d1x116_conv2d1x1_avm_writeack(in_unnamed_conv2d1x116_conv2d1x1_avm_writeack),
        .in_valid_in_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe1545327(bb_conv2d1x1_B7_out_c0_exe1545327),
        .out_feedback_out_1(bb_conv2d1x1_B7_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_conv2d1x1_B7_out_feedback_valid_out_1),
        .out_lsu_unnamed_conv2d1x116_o_active(bb_conv2d1x1_B7_out_lsu_unnamed_conv2d1x116_o_active),
        .out_memdep_15_conv2d1x1_avm_address(bb_conv2d1x1_B7_out_memdep_15_conv2d1x1_avm_address),
        .out_memdep_15_conv2d1x1_avm_burstcount(bb_conv2d1x1_B7_out_memdep_15_conv2d1x1_avm_burstcount),
        .out_memdep_15_conv2d1x1_avm_byteenable(bb_conv2d1x1_B7_out_memdep_15_conv2d1x1_avm_byteenable),
        .out_memdep_15_conv2d1x1_avm_enable(bb_conv2d1x1_B7_out_memdep_15_conv2d1x1_avm_enable),
        .out_memdep_15_conv2d1x1_avm_read(bb_conv2d1x1_B7_out_memdep_15_conv2d1x1_avm_read),
        .out_memdep_15_conv2d1x1_avm_write(bb_conv2d1x1_B7_out_memdep_15_conv2d1x1_avm_write),
        .out_memdep_15_conv2d1x1_avm_writedata(bb_conv2d1x1_B7_out_memdep_15_conv2d1x1_avm_writedata),
        .out_memdep_4_conv2d1x1_avm_address(bb_conv2d1x1_B7_out_memdep_4_conv2d1x1_avm_address),
        .out_memdep_4_conv2d1x1_avm_burstcount(bb_conv2d1x1_B7_out_memdep_4_conv2d1x1_avm_burstcount),
        .out_memdep_4_conv2d1x1_avm_byteenable(bb_conv2d1x1_B7_out_memdep_4_conv2d1x1_avm_byteenable),
        .out_memdep_4_conv2d1x1_avm_enable(bb_conv2d1x1_B7_out_memdep_4_conv2d1x1_avm_enable),
        .out_memdep_4_conv2d1x1_avm_read(bb_conv2d1x1_B7_out_memdep_4_conv2d1x1_avm_read),
        .out_memdep_4_conv2d1x1_avm_write(bb_conv2d1x1_B7_out_memdep_4_conv2d1x1_avm_write),
        .out_memdep_4_conv2d1x1_avm_writedata(bb_conv2d1x1_B7_out_memdep_4_conv2d1x1_avm_writedata),
        .out_stall_in_0(bb_conv2d1x1_B7_out_stall_in_0),
        .out_stall_out_0(bb_conv2d1x1_B7_out_stall_out_0),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_address(bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_address),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount(bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable(bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_enable(bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_enable),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_read(bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_read),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_write(bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_write),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_writedata(bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_writedata),
        .out_valid_out_0(bb_conv2d1x1_B7_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B4(BLACKBOX,6)
    conv2d1x1_bb_B4 thebb_conv2d1x1_B4 (
        .in_feedback_in_1(bb_conv2d1x1_B7_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_conv2d1x1_B7_out_feedback_valid_out_1),
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight(in_arg_filter_weight),
        .in_forked47_0(GND_q),
        .in_forked47_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_lm93_0(c_float_undef157_q),
        .in_lm93_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_mul100103_0(c_i32_undef147_q),
        .in_mul100103_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_mul2198_0(c_i32_undef147_q),
        .in_mul2198_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_mul88_0(c_i32_undef147_q),
        .in_mul88_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp43108_0(GND_q),
        .in_notcmp43108_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_output_im(in_arg_output_im),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going40_conv2d1x12_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_conv2d1x11_out_o_stall),
        .in_unnamed_conv2d1x110_0(c_i33_undef155_q),
        .in_unnamed_conv2d1x110_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_unnamed_conv2d1x17_0(GND_q),
        .in_unnamed_conv2d1x17_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_unnamed_conv2d1x18_0(GND_q),
        .in_unnamed_conv2d1x18_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_unnamed_conv2d1x19_0(GND_q),
        .in_unnamed_conv2d1x19_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going40_conv2d1x12_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_valid),
        .out_ap_pop(bb_conv2d1x1_B4_out_ap_pop),
        .out_c0_exe10229(bb_conv2d1x1_B4_out_c0_exe10229),
        .out_c0_exe11230(bb_conv2d1x1_B4_out_c0_exe11230),
        .out_c0_exe12(bb_conv2d1x1_B4_out_c0_exe12),
        .out_c0_exe1220(bb_conv2d1x1_B4_out_c0_exe1220),
        .out_c0_exe13(bb_conv2d1x1_B4_out_c0_exe13),
        .out_c0_exe14(bb_conv2d1x1_B4_out_c0_exe14),
        .out_c0_exe15(bb_conv2d1x1_B4_out_c0_exe15),
        .out_c0_exe16(bb_conv2d1x1_B4_out_c0_exe16),
        .out_c0_exe17(bb_conv2d1x1_B4_out_c0_exe17),
        .out_c0_exe18(bb_conv2d1x1_B4_out_c0_exe18),
        .out_c0_exe19(bb_conv2d1x1_B4_out_c0_exe19),
        .out_c0_exe20(bb_conv2d1x1_B4_out_c0_exe20),
        .out_c0_exe3222(bb_conv2d1x1_B4_out_c0_exe3222),
        .out_c0_exe4223(bb_conv2d1x1_B4_out_c0_exe4223),
        .out_c0_exe5224(bb_conv2d1x1_B4_out_c0_exe5224),
        .out_c0_exe6225(bb_conv2d1x1_B4_out_c0_exe6225),
        .out_c0_exe7226(bb_conv2d1x1_B4_out_c0_exe7226),
        .out_c0_exe8227(bb_conv2d1x1_B4_out_c0_exe8227),
        .out_c0_exe9228(bb_conv2d1x1_B4_out_c0_exe9228),
        .out_exiting_stall_out(bb_conv2d1x1_B4_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv2d1x1_B4_out_exiting_valid_out),
        .out_feedback_stall_out_1(bb_conv2d1x1_B4_out_feedback_stall_out_1),
        .out_pipeline_valid_out(bb_conv2d1x1_B4_out_pipeline_valid_out),
        .out_stall_out_0(bb_conv2d1x1_B4_out_stall_out_0),
        .out_stall_out_1(bb_conv2d1x1_B4_out_stall_out_1),
        .out_valid_in_0(bb_conv2d1x1_B4_out_valid_in_0),
        .out_valid_in_1(bb_conv2d1x1_B4_out_valid_in_1),
        .out_valid_out_0(bb_conv2d1x1_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B4_sr_1_aunroll_x(BLACKBOX,263)
    conv2d1x1_bb_B4_sr_1 thebb_conv2d1x1_B4_sr_1_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B4_out_stall_out_1),
        .in_i_valid(loop_limiter_conv2d1x10_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_conv2d1x1_B2_out_c0_exe2),
        .in_i_data_2_tpl(bb_conv2d1x1_B2_out_c0_exe3),
        .in_i_data_3_tpl(bb_conv2d1x1_B2_out_c0_exe4),
        .in_i_data_4_tpl(bb_conv2d1x1_B2_out_c0_exe5),
        .in_i_data_5_tpl(bb_conv2d1x1_B2_out_c0_exe6),
        .in_i_data_6_tpl(bb_conv2d1x1_B2_out_lm),
        .in_i_data_7_tpl(bb_conv2d1x1_B2_out_c0_exe8),
        .in_i_data_8_tpl(bb_conv2d1x1_B2_out_c0_exe9),
        .in_i_data_9_tpl(bb_conv2d1x1_B2_out_c0_exe11),
        .out_o_stall(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_9_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv2d1x10(BLACKBOX,177)
    conv2d1x1_loop_limiter_0 theloop_limiter_conv2d1x10 (
        .in_i_stall(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2d1x1_B4_out_exiting_stall_out),
        .in_i_valid(bb_conv2d1x1_B2_out_valid_out_0),
        .in_i_valid_exit(bb_conv2d1x1_B4_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv2d1x10_out_o_stall),
        .out_o_valid(loop_limiter_conv2d1x10_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going44_conv2d1x12_sr(BLACKBOX,113)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going44_2_sr thei_llvm_fpga_pipeline_keep_going44_conv2d1x12_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going44_conv2d1x12_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv2d1x1_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going44_conv2d1x12_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going44_conv2d1x12_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B1_sr_0_aunroll_x(BLACKBOX,260)
    conv2d1x1_bb_B1_sr_0 thebb_conv2d1x1_B1_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B1_out_stall_out_0),
        .in_i_valid(bb_conv2d1x1_B3_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B1(BLACKBOX,3)
    conv2d1x1_bb_B1 thebb_conv2d1x1_B1 (
        .in_feedback_stall_in_0(bb_conv2d1x1_B0_out_feedback_stall_out_0),
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_0(bb_conv2d1x1_B1_out_feedback_out_0),
        .out_feedback_valid_out_0(bb_conv2d1x1_B1_out_feedback_valid_out_0),
        .out_stall_out_0(bb_conv2d1x1_B1_out_stall_out_0),
        .out_valid_out_0(bb_conv2d1x1_B1_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B0(BLACKBOX,2)
    conv2d1x1_bb_B0 thebb_conv2d1x1_B0 (
        .in_feedback_in_0(bb_conv2d1x1_B1_out_feedback_out_0),
        .in_feedback_valid_in_0(bb_conv2d1x1_B1_out_feedback_valid_out_0),
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_size(in_arg_filter_size),
        .in_filter_weight(in_arg_filter_weight),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_output_im(in_arg_output_im),
        .in_stall_in_0(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_feedback_stall_out_0(bb_conv2d1x1_B0_out_feedback_stall_out_0),
        .out_intel_reserved_ffwd_0_0(bb_conv2d1x1_B0_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_conv2d1x1_B0_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_conv2d1x1_B0_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_conv2d1x1_B0_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_conv2d1x1_B0_out_intel_reserved_ffwd_4_0),
        .out_stall_out_0(bb_conv2d1x1_B0_out_stall_out_0),
        .out_valid_out_0(bb_conv2d1x1_B0_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B2(BLACKBOX,4)
    conv2d1x1_bb_B2 thebb_conv2d1x1_B2 (
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight(in_arg_filter_weight),
        .in_flush(in_start),
        .in_forked17_0(GND_q),
        .in_forked17_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_intel_reserved_ffwd_0_0(bb_conv2d1x1_B0_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_conv2d1x1_B0_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(bb_conv2d1x1_B0_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_4_0(bb_conv2d1x1_B0_out_intel_reserved_ffwd_4_0),
        .in_lm_conv2d1x1_avm_readdata(in_lm_conv2d1x1_avm_readdata),
        .in_lm_conv2d1x1_avm_readdatavalid(in_lm_conv2d1x1_avm_readdatavalid),
        .in_lm_conv2d1x1_avm_waitrequest(in_lm_conv2d1x1_avm_waitrequest),
        .in_lm_conv2d1x1_avm_writeack(in_lm_conv2d1x1_avm_writeack),
        .in_output_im(in_arg_output_im),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going44_conv2d1x12_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_conv2d1x10_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going44_conv2d1x12_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe11(bb_conv2d1x1_B2_out_c0_exe11),
        .out_c0_exe2(bb_conv2d1x1_B2_out_c0_exe2),
        .out_c0_exe3(bb_conv2d1x1_B2_out_c0_exe3),
        .out_c0_exe4(bb_conv2d1x1_B2_out_c0_exe4),
        .out_c0_exe5(bb_conv2d1x1_B2_out_c0_exe5),
        .out_c0_exe6(bb_conv2d1x1_B2_out_c0_exe6),
        .out_c0_exe8(bb_conv2d1x1_B2_out_c0_exe8),
        .out_c0_exe9(bb_conv2d1x1_B2_out_c0_exe9),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_lm(bb_conv2d1x1_B2_out_lm),
        .out_lm_conv2d1x1_avm_address(bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_address),
        .out_lm_conv2d1x1_avm_burstcount(bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_burstcount),
        .out_lm_conv2d1x1_avm_byteenable(bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_byteenable),
        .out_lm_conv2d1x1_avm_enable(bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_enable),
        .out_lm_conv2d1x1_avm_read(bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_read),
        .out_lm_conv2d1x1_avm_write(bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_write),
        .out_lm_conv2d1x1_avm_writedata(bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_writedata),
        .out_pipeline_valid_out(bb_conv2d1x1_B2_out_pipeline_valid_out),
        .out_stall_out_0(bb_conv2d1x1_B2_out_stall_out_0),
        .out_stall_out_1(bb_conv2d1x1_B2_out_stall_out_1),
        .out_valid_in_0(bb_conv2d1x1_B2_out_valid_in_0),
        .out_valid_in_1(bb_conv2d1x1_B2_out_valid_in_1),
        .out_valid_out_0(bb_conv2d1x1_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B3(BLACKBOX,5)
    conv2d1x1_bb_B3 thebb_conv2d1x1_B3 (
        .in_c0_exe1545326_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight(in_arg_filter_weight),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_output_im(in_arg_output_im),
        .in_stall_in_0(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_conv2d1x1_B3_out_stall_in_0),
        .out_stall_out_0(bb_conv2d1x1_B3_out_stall_out_0),
        .out_valid_out_0(bb_conv2d1x1_B3_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B2_sr_1_aunroll_x(BLACKBOX,261)
    conv2d1x1_bb_B2_sr_1 thebb_conv2d1x1_B2_sr_1_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B2_out_stall_out_1),
        .in_i_valid(bb_conv2d1x1_B0_out_valid_out_0),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // conv2d1x1_B2_x(EXTIFACE,105)
    assign conv2d1x1_B2_x_i_capture = GND_q;
    assign conv2d1x1_B2_x_i_clear = GND_q;
    assign conv2d1x1_B2_x_i_enable = VCC_q;
    assign conv2d1x1_B2_x_i_shift = GND_q;
    assign conv2d1x1_B2_x_i_stall_pred = bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_stall;
    assign conv2d1x1_B2_x_i_stall_succ = bb_conv2d1x1_B3_out_stall_in_0;
    assign conv2d1x1_B2_x_i_valid_loop = bb_conv2d1x1_B2_out_valid_in_0;
    assign conv2d1x1_B2_x_i_valid_pred = bb_conv2d1x1_B2_out_valid_in_1;
    assign conv2d1x1_B2_x_i_valid_succ = bb_conv2d1x1_B3_out_valid_out_0;
    assign conv2d1x1_B2_x_i_capture_bitsignaltemp = conv2d1x1_B2_x_i_capture[0];
    assign conv2d1x1_B2_x_i_clear_bitsignaltemp = conv2d1x1_B2_x_i_clear[0];
    assign conv2d1x1_B2_x_i_enable_bitsignaltemp = conv2d1x1_B2_x_i_enable[0];
    assign conv2d1x1_B2_x_i_shift_bitsignaltemp = conv2d1x1_B2_x_i_shift[0];
    assign conv2d1x1_B2_x_i_stall_pred_bitsignaltemp = conv2d1x1_B2_x_i_stall_pred[0];
    assign conv2d1x1_B2_x_i_stall_succ_bitsignaltemp = conv2d1x1_B2_x_i_stall_succ[0];
    assign conv2d1x1_B2_x_i_valid_loop_bitsignaltemp = conv2d1x1_B2_x_i_valid_loop[0];
    assign conv2d1x1_B2_x_i_valid_pred_bitsignaltemp = conv2d1x1_B2_x_i_valid_pred[0];
    assign conv2d1x1_B2_x_i_valid_succ_bitsignaltemp = conv2d1x1_B2_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv2d1x1.B2")
    ) theconv2d1x1_B2_x (
        .i_capture(conv2d1x1_B2_x_i_capture_bitsignaltemp),
        .i_clear(conv2d1x1_B2_x_i_clear_bitsignaltemp),
        .i_enable(conv2d1x1_B2_x_i_enable_bitsignaltemp),
        .i_shift(conv2d1x1_B2_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv2d1x1_B2_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv2d1x1_B2_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv2d1x1_B2_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv2d1x1_B2_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv2d1x1_B2_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B4_x(EXTIFACE,106)
    assign conv2d1x1_B4_x_i_capture = GND_q;
    assign conv2d1x1_B4_x_i_clear = GND_q;
    assign conv2d1x1_B4_x_i_enable = VCC_q;
    assign conv2d1x1_B4_x_i_shift = GND_q;
    assign conv2d1x1_B4_x_i_stall_pred = loop_limiter_conv2d1x10_out_o_stall;
    assign conv2d1x1_B4_x_i_stall_succ = bb_conv2d1x1_B7_out_stall_in_0;
    assign conv2d1x1_B4_x_i_valid_loop = bb_conv2d1x1_B4_out_valid_in_0;
    assign conv2d1x1_B4_x_i_valid_pred = bb_conv2d1x1_B4_out_valid_in_1;
    assign conv2d1x1_B4_x_i_valid_succ = bb_conv2d1x1_B7_out_valid_out_0;
    assign conv2d1x1_B4_x_i_capture_bitsignaltemp = conv2d1x1_B4_x_i_capture[0];
    assign conv2d1x1_B4_x_i_clear_bitsignaltemp = conv2d1x1_B4_x_i_clear[0];
    assign conv2d1x1_B4_x_i_enable_bitsignaltemp = conv2d1x1_B4_x_i_enable[0];
    assign conv2d1x1_B4_x_i_shift_bitsignaltemp = conv2d1x1_B4_x_i_shift[0];
    assign conv2d1x1_B4_x_i_stall_pred_bitsignaltemp = conv2d1x1_B4_x_i_stall_pred[0];
    assign conv2d1x1_B4_x_i_stall_succ_bitsignaltemp = conv2d1x1_B4_x_i_stall_succ[0];
    assign conv2d1x1_B4_x_i_valid_loop_bitsignaltemp = conv2d1x1_B4_x_i_valid_loop[0];
    assign conv2d1x1_B4_x_i_valid_pred_bitsignaltemp = conv2d1x1_B4_x_i_valid_pred[0];
    assign conv2d1x1_B4_x_i_valid_succ_bitsignaltemp = conv2d1x1_B4_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv2d1x1.B4")
    ) theconv2d1x1_B4_x (
        .i_capture(conv2d1x1_B4_x_i_capture_bitsignaltemp),
        .i_clear(conv2d1x1_B4_x_i_clear_bitsignaltemp),
        .i_enable(conv2d1x1_B4_x_i_enable_bitsignaltemp),
        .i_shift(conv2d1x1_B4_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv2d1x1_B4_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv2d1x1_B4_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv2d1x1_B4_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv2d1x1_B4_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv2d1x1_B4_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B6_x(EXTIFACE,107)
    assign conv2d1x1_B6_x_i_capture = GND_q;
    assign conv2d1x1_B6_x_i_clear = GND_q;
    assign conv2d1x1_B6_x_i_enable = VCC_q;
    assign conv2d1x1_B6_x_i_shift = GND_q;
    assign conv2d1x1_B6_x_i_stall_pred = loop_limiter_conv2d1x11_out_o_stall;
    assign conv2d1x1_B6_x_i_stall_succ = bb_conv2d1x1_B6_out_stall_in_0;
    assign conv2d1x1_B6_x_i_valid_loop = bb_conv2d1x1_B6_out_valid_in_0;
    assign conv2d1x1_B6_x_i_valid_pred = bb_conv2d1x1_B6_out_valid_in_1;
    assign conv2d1x1_B6_x_i_valid_succ = bb_conv2d1x1_B6_out_valid_out_0;
    assign conv2d1x1_B6_x_i_capture_bitsignaltemp = conv2d1x1_B6_x_i_capture[0];
    assign conv2d1x1_B6_x_i_clear_bitsignaltemp = conv2d1x1_B6_x_i_clear[0];
    assign conv2d1x1_B6_x_i_enable_bitsignaltemp = conv2d1x1_B6_x_i_enable[0];
    assign conv2d1x1_B6_x_i_shift_bitsignaltemp = conv2d1x1_B6_x_i_shift[0];
    assign conv2d1x1_B6_x_i_stall_pred_bitsignaltemp = conv2d1x1_B6_x_i_stall_pred[0];
    assign conv2d1x1_B6_x_i_stall_succ_bitsignaltemp = conv2d1x1_B6_x_i_stall_succ[0];
    assign conv2d1x1_B6_x_i_valid_loop_bitsignaltemp = conv2d1x1_B6_x_i_valid_loop[0];
    assign conv2d1x1_B6_x_i_valid_pred_bitsignaltemp = conv2d1x1_B6_x_i_valid_pred[0];
    assign conv2d1x1_B6_x_i_valid_succ_bitsignaltemp = conv2d1x1_B6_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv2d1x1.B6")
    ) theconv2d1x1_B6_x (
        .i_capture(conv2d1x1_B6_x_i_capture_bitsignaltemp),
        .i_clear(conv2d1x1_B6_x_i_clear_bitsignaltemp),
        .i_enable(conv2d1x1_B6_x_i_enable_bitsignaltemp),
        .i_shift(conv2d1x1_B6_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv2d1x1_B6_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv2d1x1_B6_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv2d1x1_B6_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv2d1x1_B6_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv2d1x1_B6_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B8_x(EXTIFACE,108)
    assign conv2d1x1_B8_x_i_capture = GND_q;
    assign conv2d1x1_B8_x_i_clear = GND_q;
    assign conv2d1x1_B8_x_i_enable = VCC_q;
    assign conv2d1x1_B8_x_i_shift = GND_q;
    assign conv2d1x1_B8_x_i_stall_pred = loop_limiter_conv2d1x12_out_o_stall;
    assign conv2d1x1_B8_x_i_stall_succ = bb_conv2d1x1_B8_out_stall_in_0;
    assign conv2d1x1_B8_x_i_valid_loop = bb_conv2d1x1_B8_out_valid_in_0;
    assign conv2d1x1_B8_x_i_valid_pred = bb_conv2d1x1_B8_out_valid_in_1;
    assign conv2d1x1_B8_x_i_valid_succ = bb_conv2d1x1_B8_out_valid_out_0;
    assign conv2d1x1_B8_x_i_capture_bitsignaltemp = conv2d1x1_B8_x_i_capture[0];
    assign conv2d1x1_B8_x_i_clear_bitsignaltemp = conv2d1x1_B8_x_i_clear[0];
    assign conv2d1x1_B8_x_i_enable_bitsignaltemp = conv2d1x1_B8_x_i_enable[0];
    assign conv2d1x1_B8_x_i_shift_bitsignaltemp = conv2d1x1_B8_x_i_shift[0];
    assign conv2d1x1_B8_x_i_stall_pred_bitsignaltemp = conv2d1x1_B8_x_i_stall_pred[0];
    assign conv2d1x1_B8_x_i_stall_succ_bitsignaltemp = conv2d1x1_B8_x_i_stall_succ[0];
    assign conv2d1x1_B8_x_i_valid_loop_bitsignaltemp = conv2d1x1_B8_x_i_valid_loop[0];
    assign conv2d1x1_B8_x_i_valid_pred_bitsignaltemp = conv2d1x1_B8_x_i_valid_pred[0];
    assign conv2d1x1_B8_x_i_valid_succ_bitsignaltemp = conv2d1x1_B8_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv2d1x1.B8")
    ) theconv2d1x1_B8_x (
        .i_capture(conv2d1x1_B8_x_i_capture_bitsignaltemp),
        .i_clear(conv2d1x1_B8_x_i_clear_bitsignaltemp),
        .i_enable(conv2d1x1_B8_x_i_enable_bitsignaltemp),
        .i_shift(conv2d1x1_B8_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv2d1x1_B8_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv2d1x1_B8_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv2d1x1_B8_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv2d1x1_B8_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv2d1x1_B8_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_lm148_conv2d1x1_avm_address(GPOUT,180)
    assign out_lm148_conv2d1x1_avm_address = bb_conv2d1x1_B8_out_lm148_conv2d1x1_avm_address;

    // out_lm148_conv2d1x1_avm_burstcount(GPOUT,181)
    assign out_lm148_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_out_lm148_conv2d1x1_avm_burstcount;

    // out_lm148_conv2d1x1_avm_byteenable(GPOUT,182)
    assign out_lm148_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_out_lm148_conv2d1x1_avm_byteenable;

    // out_lm148_conv2d1x1_avm_enable(GPOUT,183)
    assign out_lm148_conv2d1x1_avm_enable = bb_conv2d1x1_B8_out_lm148_conv2d1x1_avm_enable;

    // out_lm148_conv2d1x1_avm_read(GPOUT,184)
    assign out_lm148_conv2d1x1_avm_read = bb_conv2d1x1_B8_out_lm148_conv2d1x1_avm_read;

    // out_lm148_conv2d1x1_avm_write(GPOUT,185)
    assign out_lm148_conv2d1x1_avm_write = bb_conv2d1x1_B8_out_lm148_conv2d1x1_avm_write;

    // out_lm148_conv2d1x1_avm_writedata(GPOUT,186)
    assign out_lm148_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_out_lm148_conv2d1x1_avm_writedata;

    // out_lm150_conv2d1x1_avm_address(GPOUT,187)
    assign out_lm150_conv2d1x1_avm_address = bb_conv2d1x1_B8_out_lm150_conv2d1x1_avm_address;

    // out_lm150_conv2d1x1_avm_burstcount(GPOUT,188)
    assign out_lm150_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_out_lm150_conv2d1x1_avm_burstcount;

    // out_lm150_conv2d1x1_avm_byteenable(GPOUT,189)
    assign out_lm150_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_out_lm150_conv2d1x1_avm_byteenable;

    // out_lm150_conv2d1x1_avm_enable(GPOUT,190)
    assign out_lm150_conv2d1x1_avm_enable = bb_conv2d1x1_B8_out_lm150_conv2d1x1_avm_enable;

    // out_lm150_conv2d1x1_avm_read(GPOUT,191)
    assign out_lm150_conv2d1x1_avm_read = bb_conv2d1x1_B8_out_lm150_conv2d1x1_avm_read;

    // out_lm150_conv2d1x1_avm_write(GPOUT,192)
    assign out_lm150_conv2d1x1_avm_write = bb_conv2d1x1_B8_out_lm150_conv2d1x1_avm_write;

    // out_lm150_conv2d1x1_avm_writedata(GPOUT,193)
    assign out_lm150_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_out_lm150_conv2d1x1_avm_writedata;

    // out_lm151_conv2d1x1_avm_address(GPOUT,194)
    assign out_lm151_conv2d1x1_avm_address = bb_conv2d1x1_B8_out_lm151_conv2d1x1_avm_address;

    // out_lm151_conv2d1x1_avm_burstcount(GPOUT,195)
    assign out_lm151_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_out_lm151_conv2d1x1_avm_burstcount;

    // out_lm151_conv2d1x1_avm_byteenable(GPOUT,196)
    assign out_lm151_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_out_lm151_conv2d1x1_avm_byteenable;

    // out_lm151_conv2d1x1_avm_enable(GPOUT,197)
    assign out_lm151_conv2d1x1_avm_enable = bb_conv2d1x1_B8_out_lm151_conv2d1x1_avm_enable;

    // out_lm151_conv2d1x1_avm_read(GPOUT,198)
    assign out_lm151_conv2d1x1_avm_read = bb_conv2d1x1_B8_out_lm151_conv2d1x1_avm_read;

    // out_lm151_conv2d1x1_avm_write(GPOUT,199)
    assign out_lm151_conv2d1x1_avm_write = bb_conv2d1x1_B8_out_lm151_conv2d1x1_avm_write;

    // out_lm151_conv2d1x1_avm_writedata(GPOUT,200)
    assign out_lm151_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_out_lm151_conv2d1x1_avm_writedata;

    // out_lm153_conv2d1x1_avm_address(GPOUT,201)
    assign out_lm153_conv2d1x1_avm_address = bb_conv2d1x1_B8_out_lm153_conv2d1x1_avm_address;

    // out_lm153_conv2d1x1_avm_burstcount(GPOUT,202)
    assign out_lm153_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_out_lm153_conv2d1x1_avm_burstcount;

    // out_lm153_conv2d1x1_avm_byteenable(GPOUT,203)
    assign out_lm153_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_out_lm153_conv2d1x1_avm_byteenable;

    // out_lm153_conv2d1x1_avm_enable(GPOUT,204)
    assign out_lm153_conv2d1x1_avm_enable = bb_conv2d1x1_B8_out_lm153_conv2d1x1_avm_enable;

    // out_lm153_conv2d1x1_avm_read(GPOUT,205)
    assign out_lm153_conv2d1x1_avm_read = bb_conv2d1x1_B8_out_lm153_conv2d1x1_avm_read;

    // out_lm153_conv2d1x1_avm_write(GPOUT,206)
    assign out_lm153_conv2d1x1_avm_write = bb_conv2d1x1_B8_out_lm153_conv2d1x1_avm_write;

    // out_lm153_conv2d1x1_avm_writedata(GPOUT,207)
    assign out_lm153_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_out_lm153_conv2d1x1_avm_writedata;

    // out_lm155_conv2d1x1_avm_address(GPOUT,208)
    assign out_lm155_conv2d1x1_avm_address = bb_conv2d1x1_B8_out_lm155_conv2d1x1_avm_address;

    // out_lm155_conv2d1x1_avm_burstcount(GPOUT,209)
    assign out_lm155_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_out_lm155_conv2d1x1_avm_burstcount;

    // out_lm155_conv2d1x1_avm_byteenable(GPOUT,210)
    assign out_lm155_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_out_lm155_conv2d1x1_avm_byteenable;

    // out_lm155_conv2d1x1_avm_enable(GPOUT,211)
    assign out_lm155_conv2d1x1_avm_enable = bb_conv2d1x1_B8_out_lm155_conv2d1x1_avm_enable;

    // out_lm155_conv2d1x1_avm_read(GPOUT,212)
    assign out_lm155_conv2d1x1_avm_read = bb_conv2d1x1_B8_out_lm155_conv2d1x1_avm_read;

    // out_lm155_conv2d1x1_avm_write(GPOUT,213)
    assign out_lm155_conv2d1x1_avm_write = bb_conv2d1x1_B8_out_lm155_conv2d1x1_avm_write;

    // out_lm155_conv2d1x1_avm_writedata(GPOUT,214)
    assign out_lm155_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_out_lm155_conv2d1x1_avm_writedata;

    // out_lm_conv2d1x1_avm_address(GPOUT,215)
    assign out_lm_conv2d1x1_avm_address = bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_address;

    // out_lm_conv2d1x1_avm_burstcount(GPOUT,216)
    assign out_lm_conv2d1x1_avm_burstcount = bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_burstcount;

    // out_lm_conv2d1x1_avm_byteenable(GPOUT,217)
    assign out_lm_conv2d1x1_avm_byteenable = bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_byteenable;

    // out_lm_conv2d1x1_avm_enable(GPOUT,218)
    assign out_lm_conv2d1x1_avm_enable = bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_enable;

    // out_lm_conv2d1x1_avm_read(GPOUT,219)
    assign out_lm_conv2d1x1_avm_read = bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_read;

    // out_lm_conv2d1x1_avm_write(GPOUT,220)
    assign out_lm_conv2d1x1_avm_write = bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_write;

    // out_lm_conv2d1x1_avm_writedata(GPOUT,221)
    assign out_lm_conv2d1x1_avm_writedata = bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_writedata;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_address(GPOUT,222)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_address = bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_address;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_burstcount(GPOUT,223)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_burstcount = bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_burstcount;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_byteenable(GPOUT,224)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_byteenable = bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_byteenable;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_enable(GPOUT,225)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_enable = bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_enable;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_read(GPOUT,226)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_read = bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_read;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_write(GPOUT,227)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_write = bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_write;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writedata(GPOUT,228)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writedata = bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writedata;

    // out_memdep_15_conv2d1x1_avm_address(GPOUT,229)
    assign out_memdep_15_conv2d1x1_avm_address = bb_conv2d1x1_B7_out_memdep_15_conv2d1x1_avm_address;

    // out_memdep_15_conv2d1x1_avm_burstcount(GPOUT,230)
    assign out_memdep_15_conv2d1x1_avm_burstcount = bb_conv2d1x1_B7_out_memdep_15_conv2d1x1_avm_burstcount;

    // out_memdep_15_conv2d1x1_avm_byteenable(GPOUT,231)
    assign out_memdep_15_conv2d1x1_avm_byteenable = bb_conv2d1x1_B7_out_memdep_15_conv2d1x1_avm_byteenable;

    // out_memdep_15_conv2d1x1_avm_enable(GPOUT,232)
    assign out_memdep_15_conv2d1x1_avm_enable = bb_conv2d1x1_B7_out_memdep_15_conv2d1x1_avm_enable;

    // out_memdep_15_conv2d1x1_avm_read(GPOUT,233)
    assign out_memdep_15_conv2d1x1_avm_read = bb_conv2d1x1_B7_out_memdep_15_conv2d1x1_avm_read;

    // out_memdep_15_conv2d1x1_avm_write(GPOUT,234)
    assign out_memdep_15_conv2d1x1_avm_write = bb_conv2d1x1_B7_out_memdep_15_conv2d1x1_avm_write;

    // out_memdep_15_conv2d1x1_avm_writedata(GPOUT,235)
    assign out_memdep_15_conv2d1x1_avm_writedata = bb_conv2d1x1_B7_out_memdep_15_conv2d1x1_avm_writedata;

    // out_memdep_4_conv2d1x1_avm_address(GPOUT,236)
    assign out_memdep_4_conv2d1x1_avm_address = bb_conv2d1x1_B7_out_memdep_4_conv2d1x1_avm_address;

    // out_memdep_4_conv2d1x1_avm_burstcount(GPOUT,237)
    assign out_memdep_4_conv2d1x1_avm_burstcount = bb_conv2d1x1_B7_out_memdep_4_conv2d1x1_avm_burstcount;

    // out_memdep_4_conv2d1x1_avm_byteenable(GPOUT,238)
    assign out_memdep_4_conv2d1x1_avm_byteenable = bb_conv2d1x1_B7_out_memdep_4_conv2d1x1_avm_byteenable;

    // out_memdep_4_conv2d1x1_avm_enable(GPOUT,239)
    assign out_memdep_4_conv2d1x1_avm_enable = bb_conv2d1x1_B7_out_memdep_4_conv2d1x1_avm_enable;

    // out_memdep_4_conv2d1x1_avm_read(GPOUT,240)
    assign out_memdep_4_conv2d1x1_avm_read = bb_conv2d1x1_B7_out_memdep_4_conv2d1x1_avm_read;

    // out_memdep_4_conv2d1x1_avm_write(GPOUT,241)
    assign out_memdep_4_conv2d1x1_avm_write = bb_conv2d1x1_B7_out_memdep_4_conv2d1x1_avm_write;

    // out_memdep_4_conv2d1x1_avm_writedata(GPOUT,242)
    assign out_memdep_4_conv2d1x1_avm_writedata = bb_conv2d1x1_B7_out_memdep_4_conv2d1x1_avm_writedata;

    // out_o_active_unnamed_conv2d1x116(GPOUT,243)
    assign out_o_active_unnamed_conv2d1x116 = bb_conv2d1x1_B7_out_lsu_unnamed_conv2d1x116_o_active;

    // out_stall_out(GPOUT,244)
    assign out_stall_out = bb_conv2d1x1_B0_out_stall_out_0;

    // out_unnamed_conv2d1x115_conv2d1x1_avm_address(GPOUT,245)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_address = bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_address;

    // out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount(GPOUT,246)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount = bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount;

    // out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable(GPOUT,247)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable = bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable;

    // out_unnamed_conv2d1x115_conv2d1x1_avm_enable(GPOUT,248)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_enable = bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_enable;

    // out_unnamed_conv2d1x115_conv2d1x1_avm_read(GPOUT,249)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_read = bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_read;

    // out_unnamed_conv2d1x115_conv2d1x1_avm_write(GPOUT,250)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_write = bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_write;

    // out_unnamed_conv2d1x115_conv2d1x1_avm_writedata(GPOUT,251)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_writedata = bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_writedata;

    // out_unnamed_conv2d1x116_conv2d1x1_avm_address(GPOUT,252)
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_address = bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_address;

    // out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount(GPOUT,253)
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount = bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount;

    // out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable(GPOUT,254)
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable = bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable;

    // out_unnamed_conv2d1x116_conv2d1x1_avm_enable(GPOUT,255)
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_enable = bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_enable;

    // out_unnamed_conv2d1x116_conv2d1x1_avm_read(GPOUT,256)
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_read = bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_read;

    // out_unnamed_conv2d1x116_conv2d1x1_avm_write(GPOUT,257)
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_write = bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_write;

    // out_unnamed_conv2d1x116_conv2d1x1_avm_writedata(GPOUT,258)
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_writedata = bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_writedata;

    // out_valid_out(GPOUT,259)
    assign out_valid_out = bb_conv2d1x1_B1_out_valid_out_0;

endmodule
