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
// SystemVerilog created on Wed May 24 12:36:13 2023


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
    input wire [511:0] in_lm_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm_conv2d1x1_avm_writeack,
    input wire [1023:0] in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdata,
    input wire [0:0] in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writeack,
    input wire [1023:0] in_memdep_13_conv2d1x1_avm_readdata,
    input wire [0:0] in_memdep_13_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_memdep_13_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_memdep_13_conv2d1x1_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [1023:0] in_unnamed_conv2d1x115_conv2d1x1_avm_readdata,
    input wire [0:0] in_unnamed_conv2d1x115_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv2d1x115_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d1x115_conv2d1x1_avm_writeack,
    input wire [511:0] in_unnamed_conv2d1x116_conv2d1x1_avm_readdata,
    input wire [0:0] in_unnamed_conv2d1x116_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv2d1x116_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d1x116_conv2d1x1_avm_writeack,
    input wire [0:0] in_valid_in,
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
    output wire [30:0] out_lm_conv2d1x1_avm_address,
    output wire [4:0] out_lm_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm_conv2d1x1_avm_enable,
    output wire [0:0] out_lm_conv2d1x1_avm_read,
    output wire [0:0] out_lm_conv2d1x1_avm_write,
    output wire [511:0] out_lm_conv2d1x1_avm_writedata,
    output wire [31:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount,
    output wire [127:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write,
    output wire [1023:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata,
    output wire [31:0] out_memdep_13_conv2d1x1_avm_address,
    output wire [0:0] out_memdep_13_conv2d1x1_avm_burstcount,
    output wire [127:0] out_memdep_13_conv2d1x1_avm_byteenable,
    output wire [0:0] out_memdep_13_conv2d1x1_avm_enable,
    output wire [0:0] out_memdep_13_conv2d1x1_avm_read,
    output wire [0:0] out_memdep_13_conv2d1x1_avm_write,
    output wire [1023:0] out_memdep_13_conv2d1x1_avm_writedata,
    output wire [0:0] out_o_active_unnamed_conv2d1x116,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_conv2d1x115_conv2d1x1_avm_address,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount,
    output wire [127:0] out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_enable,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_read,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_write,
    output wire [1023:0] out_unnamed_conv2d1x115_conv2d1x1_avm_writedata,
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
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe10273;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe11274;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe12;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe1264;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe13;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe14;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe15;
    wire [32:0] bb_conv2d1x1_B4_out_c0_exe16;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe17;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe18;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe19;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe20;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe3266;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe4267;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe5268;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe6269;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe7270;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe8271;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe9272;
    wire [0:0] bb_conv2d1x1_B4_out_exiting_stall_out;
    wire [0:0] bb_conv2d1x1_B4_out_exiting_valid_out;
    wire [0:0] bb_conv2d1x1_B4_out_feedback_stall_out_1;
    wire [0:0] bb_conv2d1x1_B4_out_pipeline_valid_out;
    wire [0:0] bb_conv2d1x1_B4_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B4_out_stall_out_1;
    wire [0:0] bb_conv2d1x1_B4_out_valid_in_0;
    wire [0:0] bb_conv2d1x1_B4_out_valid_in_1;
    wire [0:0] bb_conv2d1x1_B4_out_valid_out_0;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe10308;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe103758;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe11309;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe113769;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe12310;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe1237710;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe1299;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe13311;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe1337811;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe14312;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe1437912;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe15313;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe1538013;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe16314;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe1638114;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe17315;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe1738215;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe18316;
    wire [32:0] bb_conv2d1x1_B5_out_c0_exe1838316;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe19317;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe1938417;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe20318;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe2038518;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe21;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe2138619;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe22;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe2238720;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe23;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe2300;
    wire [63:0] bb_conv2d1x1_B5_out_c0_exe23671;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe24;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe3301;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe33682;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe4302;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe43693;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe5303;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe6304;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe63714;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe7305;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe73725;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe8306;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe83736;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe9307;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe93747;
    wire [31:0] bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address;
    wire [0:0] bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount;
    wire [127:0] bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write;
    wire [1023:0] bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B5_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B5_out_valid_out_0;
    wire [31:0] bb_conv2d1x1_B6_out_c0_exe10375;
    wire [0:0] bb_conv2d1x1_B6_out_c0_exe11376;
    wire [0:0] bb_conv2d1x1_B6_out_c0_exe12377;
    wire [31:0] bb_conv2d1x1_B6_out_c0_exe13378;
    wire [31:0] bb_conv2d1x1_B6_out_c0_exe14379;
    wire [0:0] bb_conv2d1x1_B6_out_c0_exe15380;
    wire [0:0] bb_conv2d1x1_B6_out_c0_exe16381;
    wire [0:0] bb_conv2d1x1_B6_out_c0_exe17382;
    wire [32:0] bb_conv2d1x1_B6_out_c0_exe18383;
    wire [31:0] bb_conv2d1x1_B6_out_c0_exe19384;
    wire [31:0] bb_conv2d1x1_B6_out_c0_exe20385;
    wire [31:0] bb_conv2d1x1_B6_out_c0_exe21386;
    wire [0:0] bb_conv2d1x1_B6_out_c0_exe22387;
    wire [63:0] bb_conv2d1x1_B6_out_c0_exe2367;
    wire [0:0] bb_conv2d1x1_B6_out_c0_exe3368;
    wire [0:0] bb_conv2d1x1_B6_out_c0_exe4369;
    wire [31:0] bb_conv2d1x1_B6_out_c0_exe6371;
    wire [0:0] bb_conv2d1x1_B6_out_c0_exe7372;
    wire [31:0] bb_conv2d1x1_B6_out_c0_exe8373;
    wire [31:0] bb_conv2d1x1_B6_out_c0_exe9374;
    wire [0:0] bb_conv2d1x1_B6_out_exiting_stall_out;
    wire [0:0] bb_conv2d1x1_B6_out_exiting_valid_out;
    wire [0:0] bb_conv2d1x1_B6_out_pipeline_valid_out;
    wire [0:0] bb_conv2d1x1_B6_out_stall_in_0;
    wire [0:0] bb_conv2d1x1_B6_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B6_out_stall_out_1;
    wire [31:0] bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_address;
    wire [0:0] bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount;
    wire [127:0] bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_write;
    wire [1023:0] bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B6_out_valid_in_0;
    wire [0:0] bb_conv2d1x1_B6_out_valid_in_1;
    wire [0:0] bb_conv2d1x1_B6_out_valid_out_0;
    wire [0:0] bb_conv2d1x1_B7_out_c0_exe1953327;
    wire [15:0] bb_conv2d1x1_B7_out_feedback_out_1;
    wire [0:0] bb_conv2d1x1_B7_out_feedback_valid_out_1;
    wire [0:0] bb_conv2d1x1_B7_out_lsu_unnamed_conv2d1x116_o_active;
    wire [31:0] bb_conv2d1x1_B7_out_memdep_13_conv2d1x1_avm_address;
    wire [0:0] bb_conv2d1x1_B7_out_memdep_13_conv2d1x1_avm_burstcount;
    wire [127:0] bb_conv2d1x1_B7_out_memdep_13_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B7_out_memdep_13_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B7_out_memdep_13_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B7_out_memdep_13_conv2d1x1_avm_write;
    wire [1023:0] bb_conv2d1x1_B7_out_memdep_13_conv2d1x1_avm_writedata;
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
    wire [31:0] bb_conv2d1x1_B8_out_c0_exe17531;
    wire [31:0] bb_conv2d1x1_B8_out_c0_exe18532;
    wire [0:0] bb_conv2d1x1_B8_out_c0_exe19533;
    wire [0:0] bb_conv2d1x1_B8_out_c0_exe20534;
    wire [63:0] bb_conv2d1x1_B8_out_c0_exe21535;
    wire [0:0] bb_conv2d1x1_B8_out_c0_exe3517;
    wire [0:0] bb_conv2d1x1_B8_out_c0_exe4518;
    wire [31:0] bb_conv2d1x1_B8_out_c0_exe5519;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe10;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe11;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe12;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe13;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe14;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe15;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe1592;
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
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe33;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe34;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe35;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe36;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe37;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe38;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe39;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe4;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe40;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe41;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe42;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe43;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe44;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe45;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe46;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe47;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe48;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe5;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe6;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe7;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe8;
    wire [31:0] bb_conv2d1x1_B8_out_c1_exe9;
    wire [0:0] bb_conv2d1x1_B8_out_exiting_stall_out;
    wire [0:0] bb_conv2d1x1_B8_out_exiting_valid_out;
    wire [30:0] bb_conv2d1x1_B8_out_lm220_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_out_lm220_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_out_lm220_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_out_lm220_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_out_lm220_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_out_lm220_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_out_lm220_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B8_out_lm222_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_out_lm222_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_out_lm222_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_out_lm222_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_out_lm222_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_out_lm222_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_out_lm222_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B8_out_lm223_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_out_lm223_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_out_lm223_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_out_lm223_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_out_lm223_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_out_lm223_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_out_lm223_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B8_out_lm225_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_out_lm225_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_out_lm225_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_out_lm225_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_out_lm225_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_out_lm225_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_out_lm225_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B8_out_lm227_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_out_lm227_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_out_lm227_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_out_lm227_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_out_lm227_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_out_lm227_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_out_lm227_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B8_out_lm229_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_out_lm229_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_out_lm229_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_out_lm229_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_out_lm229_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_out_lm229_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_out_lm229_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B8_out_lm231_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_out_lm231_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_out_lm231_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_out_lm231_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_out_lm231_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_out_lm231_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_out_lm231_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B8_out_lm233_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_out_lm233_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_out_lm233_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_out_lm233_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_out_lm233_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_out_lm233_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_out_lm233_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B8_out_lm235_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_out_lm235_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_out_lm235_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_out_lm235_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_out_lm235_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_out_lm235_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_out_lm235_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B8_out_pipeline_valid_out;
    wire [0:0] bb_conv2d1x1_B8_out_stall_in_0;
    wire [0:0] bb_conv2d1x1_B8_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B8_out_stall_out_1;
    wire [0:0] bb_conv2d1x1_B8_out_valid_in_0;
    wire [0:0] bb_conv2d1x1_B8_out_valid_in_1;
    wire [0:0] bb_conv2d1x1_B8_out_valid_out_0;
    wire [31:0] c_float_undef173_q;
    wire [9:0] c_i10_undef81_q;
    wire [1:0] c_i2_0253_q;
    wire [31:0] c_i32_undef163_q;
    wire [32:0] c_i33_undef171_q;
    wire [63:0] c_i64_undef229_q;
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
    wire [0:0] i_llvm_fpga_pipeline_keep_going34_conv2d1x16_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going34_conv2d1x16_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going34_conv2d1x16_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going34_conv2d1x16_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_conv2d1x12_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_conv2d1x12_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_conv2d1x12_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_conv2d1x12_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going52_conv2d1x12_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going52_conv2d1x12_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going52_conv2d1x12_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going52_conv2d1x12_valid_fifo_out_valid_out;
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
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_40_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_41_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_42_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_43_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_44_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_45_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_46_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_47_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_48_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_49_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_50_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_51_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_52_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_53_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_54_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_55_tpl;
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
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_26_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_27_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_28_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_29_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_30_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_31_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_32_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_33_tpl;
    wire [63:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_34_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_35_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_36_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_37_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_38_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_39_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_40_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_41_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_42_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_43_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_44_tpl;


    // c_i2_0253(CONSTANT,88)
    assign c_i2_0253_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going52_conv2d1x12_valid_fifo(BLACKBOX,122)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going52_2_valid_fifo thei_llvm_fpga_pipeline_keep_going52_conv2d1x12_valid_fifo (
        .in_data_in(c_i2_0253_q),
        .in_stall_in(bb_conv2d1x1_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going52_conv2d1x12_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going52_conv2d1x12_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going52_conv2d1x12_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going48_conv2d1x12_valid_fifo(BLACKBOX,120)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going48_2_valid_fifo thei_llvm_fpga_pipeline_keep_going48_conv2d1x12_valid_fifo (
        .in_data_in(c_i2_0253_q),
        .in_stall_in(bb_conv2d1x1_B4_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going48_conv2d1x12_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going48_conv2d1x12_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going48_conv2d1x12_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef171(CONSTANT,109)
    assign c_i33_undef171_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pipeline_keep_going34_conv2d1x16_valid_fifo(BLACKBOX,118)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going34_6_valid_fifo thei_llvm_fpga_pipeline_keep_going34_conv2d1x16_valid_fifo (
        .in_data_in(c_i2_0253_q),
        .in_stall_in(bb_conv2d1x1_B6_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going34_conv2d1x16_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going34_conv2d1x16_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going34_conv2d1x16_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_conv2d1x16_valid_fifo(BLACKBOX,124)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_conv2d1x16_valid_fifo (
        .in_data_in(c_i2_0253_q),
        .in_stall_in(bb_conv2d1x1_B8_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_conv2d1x16_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_conv2d1x16_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_conv2d1x16_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B7_sr_0_aunroll_x(BLACKBOX,307)
    conv2d1x1_bb_B7_sr_0 thebb_conv2d1x1_B7_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B7_out_stall_out_0),
        .in_i_valid(bb_conv2d1x1_B8_out_valid_out_0),
        .in_i_data_0_tpl(bb_conv2d1x1_B8_out_c0_exe3517),
        .in_i_data_1_tpl(bb_conv2d1x1_B8_out_c0_exe4518),
        .in_i_data_2_tpl(bb_conv2d1x1_B8_out_c0_exe5519),
        .in_i_data_3_tpl(bb_conv2d1x1_B8_out_c0_exe17531),
        .in_i_data_4_tpl(bb_conv2d1x1_B8_out_c0_exe18532),
        .in_i_data_5_tpl(bb_conv2d1x1_B8_out_c0_exe19533),
        .in_i_data_6_tpl(bb_conv2d1x1_B8_out_c0_exe20534),
        .in_i_data_7_tpl(bb_conv2d1x1_B8_out_c0_exe21535),
        .in_i_data_8_tpl(bb_conv2d1x1_B8_out_c1_exe1592),
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
        .in_i_data_40_tpl(bb_conv2d1x1_B8_out_c1_exe33),
        .in_i_data_41_tpl(bb_conv2d1x1_B8_out_c1_exe34),
        .in_i_data_42_tpl(bb_conv2d1x1_B8_out_c1_exe35),
        .in_i_data_43_tpl(bb_conv2d1x1_B8_out_c1_exe36),
        .in_i_data_44_tpl(bb_conv2d1x1_B8_out_c1_exe37),
        .in_i_data_45_tpl(bb_conv2d1x1_B8_out_c1_exe38),
        .in_i_data_46_tpl(bb_conv2d1x1_B8_out_c1_exe39),
        .in_i_data_47_tpl(bb_conv2d1x1_B8_out_c1_exe40),
        .in_i_data_48_tpl(bb_conv2d1x1_B8_out_c1_exe41),
        .in_i_data_49_tpl(bb_conv2d1x1_B8_out_c1_exe42),
        .in_i_data_50_tpl(bb_conv2d1x1_B8_out_c1_exe43),
        .in_i_data_51_tpl(bb_conv2d1x1_B8_out_c1_exe44),
        .in_i_data_52_tpl(bb_conv2d1x1_B8_out_c1_exe45),
        .in_i_data_53_tpl(bb_conv2d1x1_B8_out_c1_exe46),
        .in_i_data_54_tpl(bb_conv2d1x1_B8_out_c1_exe47),
        .in_i_data_55_tpl(bb_conv2d1x1_B8_out_c1_exe48),
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
        .out_o_data_40_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_40_tpl),
        .out_o_data_41_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_41_tpl),
        .out_o_data_42_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_42_tpl),
        .out_o_data_43_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_43_tpl),
        .out_o_data_44_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_44_tpl),
        .out_o_data_45_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_45_tpl),
        .out_o_data_46_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_46_tpl),
        .out_o_data_47_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_47_tpl),
        .out_o_data_48_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_48_tpl),
        .out_o_data_49_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_49_tpl),
        .out_o_data_50_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_50_tpl),
        .out_o_data_51_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_51_tpl),
        .out_o_data_52_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_52_tpl),
        .out_o_data_53_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_53_tpl),
        .out_o_data_54_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_54_tpl),
        .out_o_data_55_tpl(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_55_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_conv2d1x16_sr(BLACKBOX,123)
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

    // c_i64_undef229(CONSTANT,112)
    assign c_i64_undef229_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bb_conv2d1x1_B8(BLACKBOX,10)
    conv2d1x1_bb_B8 thebb_conv2d1x1_B8 (
        .in_ap_pop_ext5168_0(c_i64_undef229_q),
        .in_ap_pop_ext5168_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_34_tpl),
        .in_arrayidx131_10_promoted_e162_0(c_float_undef173_q),
        .in_arrayidx131_10_promoted_e162_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_28_tpl),
        .in_arrayidx131_11_promoted_e163_0(c_float_undef173_q),
        .in_arrayidx131_11_promoted_e163_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_29_tpl),
        .in_arrayidx131_12_promoted_e164_0(c_float_undef173_q),
        .in_arrayidx131_12_promoted_e164_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_30_tpl),
        .in_arrayidx131_13_promoted_e165_0(c_float_undef173_q),
        .in_arrayidx131_13_promoted_e165_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_31_tpl),
        .in_arrayidx131_14_promoted_e166_0(c_float_undef173_q),
        .in_arrayidx131_14_promoted_e166_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_32_tpl),
        .in_arrayidx131_15_promoted_e167_0(c_float_undef173_q),
        .in_arrayidx131_15_promoted_e167_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_33_tpl),
        .in_arrayidx131_3_promoted_e155_0(c_float_undef173_q),
        .in_arrayidx131_3_promoted_e155_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_21_tpl),
        .in_arrayidx131_4_promoted_e156_0(c_float_undef173_q),
        .in_arrayidx131_4_promoted_e156_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_22_tpl),
        .in_arrayidx131_5_promoted_e157_0(c_float_undef173_q),
        .in_arrayidx131_5_promoted_e157_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_23_tpl),
        .in_arrayidx131_6_promoted_e158_0(c_float_undef173_q),
        .in_arrayidx131_6_promoted_e158_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_24_tpl),
        .in_arrayidx131_7_promoted_e159_0(c_float_undef173_q),
        .in_arrayidx131_7_promoted_e159_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_25_tpl),
        .in_arrayidx131_8_promoted_e160_0(c_float_undef173_q),
        .in_arrayidx131_8_promoted_e160_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_26_tpl),
        .in_arrayidx131_9_promoted_e161_0(c_float_undef173_q),
        .in_arrayidx131_9_promoted_e161_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_27_tpl),
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight(in_arg_filter_weight),
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_ij_0104_pop1374_pop36188_0(c_i32_undef163_q),
        .in_ij_0104_pop1374_pop36188_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_44_tpl),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_intel_reserved_ffwd_2_0(bb_conv2d1x1_B0_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(bb_conv2d1x1_B0_out_intel_reserved_ffwd_3_0),
        .in_lm115_0(c_float_undef173_q),
        .in_lm115_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_6_tpl),
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
        .in_lm60_pop30178_0(c_float_undef173_q),
        .in_lm60_pop30178_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_39_tpl),
        .in_mul110_0(c_i32_undef163_q),
        .in_mul110_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_mul156125_0(c_i32_undef163_q),
        .in_mul156125_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_mul15666_pop32182_0(c_i32_undef163_q),
        .in_mul15666_pop32182_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_41_tpl),
        .in_mul21120_0(c_i32_undef163_q),
        .in_mul21120_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_mul2163_pop31180_0(c_i32_undef163_q),
        .in_mul2163_pop31180_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_40_tpl),
        .in_mul57_pop26174_0(c_i32_undef163_q),
        .in_mul57_pop26174_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_37_tpl),
        .in_notcmp4672_pop35186_0(GND_q),
        .in_notcmp4672_pop35186_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_43_tpl),
        .in_notcmp51130_0(GND_q),
        .in_notcmp51130_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_notcmp5169_pop33184_0(GND_q),
        .in_notcmp5169_pop33184_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_42_tpl),
        .in_output_im(in_arg_output_im),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_conv2d1x16_sr_out_o_stall),
        .in_pop27170_0(GND_q),
        .in_pop27170_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_35_tpl),
        .in_pop28172_0(GND_q),
        .in_pop28172_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_36_tpl),
        .in_pop29176_0(GND_q),
        .in_pop29176_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_38_tpl),
        .in_pre109_e145_0(c_float_undef173_q),
        .in_pre109_e145_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_pre110_e146_0(c_float_undef173_q),
        .in_pre110_e146_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_pre111_e147_0(c_float_undef173_q),
        .in_pre111_e147_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_pre112_e148_0(c_float_undef173_q),
        .in_pre112_e148_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_pre113_e149_0(c_float_undef173_q),
        .in_pre113_e149_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_pre114_e150_0(c_float_undef173_q),
        .in_pre114_e150_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_pre115_e151_0(c_float_undef173_q),
        .in_pre115_e151_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_pre116_e152_0(c_float_undef173_q),
        .in_pre116_e152_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_pre117_e153_0(c_float_undef173_q),
        .in_pre117_e153_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_19_tpl),
        .in_pre118_e154_0(c_float_undef173_q),
        .in_pre118_e154_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_20_tpl),
        .in_pre_e144_0(c_float_undef173_q),
        .in_pre_e144_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_stall_in_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_conv2d1x117_0(GND_q),
        .in_unnamed_conv2d1x117_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_unnamed_conv2d1x118_0(GND_q),
        .in_unnamed_conv2d1x118_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_unnamed_conv2d1x119_0(GND_q),
        .in_unnamed_conv2d1x119_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_unnamed_conv2d1x120_0(c_i33_undef171_q),
        .in_unnamed_conv2d1x120_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_conv2d1x16_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe17531(bb_conv2d1x1_B8_out_c0_exe17531),
        .out_c0_exe18532(bb_conv2d1x1_B8_out_c0_exe18532),
        .out_c0_exe19533(bb_conv2d1x1_B8_out_c0_exe19533),
        .out_c0_exe20534(bb_conv2d1x1_B8_out_c0_exe20534),
        .out_c0_exe21535(bb_conv2d1x1_B8_out_c0_exe21535),
        .out_c0_exe3517(bb_conv2d1x1_B8_out_c0_exe3517),
        .out_c0_exe4518(bb_conv2d1x1_B8_out_c0_exe4518),
        .out_c0_exe5519(bb_conv2d1x1_B8_out_c0_exe5519),
        .out_c1_exe10(bb_conv2d1x1_B8_out_c1_exe10),
        .out_c1_exe11(bb_conv2d1x1_B8_out_c1_exe11),
        .out_c1_exe12(bb_conv2d1x1_B8_out_c1_exe12),
        .out_c1_exe13(bb_conv2d1x1_B8_out_c1_exe13),
        .out_c1_exe14(bb_conv2d1x1_B8_out_c1_exe14),
        .out_c1_exe15(bb_conv2d1x1_B8_out_c1_exe15),
        .out_c1_exe1592(bb_conv2d1x1_B8_out_c1_exe1592),
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
        .out_c1_exe33(bb_conv2d1x1_B8_out_c1_exe33),
        .out_c1_exe34(bb_conv2d1x1_B8_out_c1_exe34),
        .out_c1_exe35(bb_conv2d1x1_B8_out_c1_exe35),
        .out_c1_exe36(bb_conv2d1x1_B8_out_c1_exe36),
        .out_c1_exe37(bb_conv2d1x1_B8_out_c1_exe37),
        .out_c1_exe38(bb_conv2d1x1_B8_out_c1_exe38),
        .out_c1_exe39(bb_conv2d1x1_B8_out_c1_exe39),
        .out_c1_exe4(bb_conv2d1x1_B8_out_c1_exe4),
        .out_c1_exe40(bb_conv2d1x1_B8_out_c1_exe40),
        .out_c1_exe41(bb_conv2d1x1_B8_out_c1_exe41),
        .out_c1_exe42(bb_conv2d1x1_B8_out_c1_exe42),
        .out_c1_exe43(bb_conv2d1x1_B8_out_c1_exe43),
        .out_c1_exe44(bb_conv2d1x1_B8_out_c1_exe44),
        .out_c1_exe45(bb_conv2d1x1_B8_out_c1_exe45),
        .out_c1_exe46(bb_conv2d1x1_B8_out_c1_exe46),
        .out_c1_exe47(bb_conv2d1x1_B8_out_c1_exe47),
        .out_c1_exe48(bb_conv2d1x1_B8_out_c1_exe48),
        .out_c1_exe5(bb_conv2d1x1_B8_out_c1_exe5),
        .out_c1_exe6(bb_conv2d1x1_B8_out_c1_exe6),
        .out_c1_exe7(bb_conv2d1x1_B8_out_c1_exe7),
        .out_c1_exe8(bb_conv2d1x1_B8_out_c1_exe8),
        .out_c1_exe9(bb_conv2d1x1_B8_out_c1_exe9),
        .out_exiting_stall_out(bb_conv2d1x1_B8_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv2d1x1_B8_out_exiting_valid_out),
        .out_lm220_conv2d1x1_avm_address(bb_conv2d1x1_B8_out_lm220_conv2d1x1_avm_address),
        .out_lm220_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_out_lm220_conv2d1x1_avm_burstcount),
        .out_lm220_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_out_lm220_conv2d1x1_avm_byteenable),
        .out_lm220_conv2d1x1_avm_enable(bb_conv2d1x1_B8_out_lm220_conv2d1x1_avm_enable),
        .out_lm220_conv2d1x1_avm_read(bb_conv2d1x1_B8_out_lm220_conv2d1x1_avm_read),
        .out_lm220_conv2d1x1_avm_write(bb_conv2d1x1_B8_out_lm220_conv2d1x1_avm_write),
        .out_lm220_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_out_lm220_conv2d1x1_avm_writedata),
        .out_lm222_conv2d1x1_avm_address(bb_conv2d1x1_B8_out_lm222_conv2d1x1_avm_address),
        .out_lm222_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_out_lm222_conv2d1x1_avm_burstcount),
        .out_lm222_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_out_lm222_conv2d1x1_avm_byteenable),
        .out_lm222_conv2d1x1_avm_enable(bb_conv2d1x1_B8_out_lm222_conv2d1x1_avm_enable),
        .out_lm222_conv2d1x1_avm_read(bb_conv2d1x1_B8_out_lm222_conv2d1x1_avm_read),
        .out_lm222_conv2d1x1_avm_write(bb_conv2d1x1_B8_out_lm222_conv2d1x1_avm_write),
        .out_lm222_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_out_lm222_conv2d1x1_avm_writedata),
        .out_lm223_conv2d1x1_avm_address(bb_conv2d1x1_B8_out_lm223_conv2d1x1_avm_address),
        .out_lm223_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_out_lm223_conv2d1x1_avm_burstcount),
        .out_lm223_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_out_lm223_conv2d1x1_avm_byteenable),
        .out_lm223_conv2d1x1_avm_enable(bb_conv2d1x1_B8_out_lm223_conv2d1x1_avm_enable),
        .out_lm223_conv2d1x1_avm_read(bb_conv2d1x1_B8_out_lm223_conv2d1x1_avm_read),
        .out_lm223_conv2d1x1_avm_write(bb_conv2d1x1_B8_out_lm223_conv2d1x1_avm_write),
        .out_lm223_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_out_lm223_conv2d1x1_avm_writedata),
        .out_lm225_conv2d1x1_avm_address(bb_conv2d1x1_B8_out_lm225_conv2d1x1_avm_address),
        .out_lm225_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_out_lm225_conv2d1x1_avm_burstcount),
        .out_lm225_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_out_lm225_conv2d1x1_avm_byteenable),
        .out_lm225_conv2d1x1_avm_enable(bb_conv2d1x1_B8_out_lm225_conv2d1x1_avm_enable),
        .out_lm225_conv2d1x1_avm_read(bb_conv2d1x1_B8_out_lm225_conv2d1x1_avm_read),
        .out_lm225_conv2d1x1_avm_write(bb_conv2d1x1_B8_out_lm225_conv2d1x1_avm_write),
        .out_lm225_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_out_lm225_conv2d1x1_avm_writedata),
        .out_lm227_conv2d1x1_avm_address(bb_conv2d1x1_B8_out_lm227_conv2d1x1_avm_address),
        .out_lm227_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_out_lm227_conv2d1x1_avm_burstcount),
        .out_lm227_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_out_lm227_conv2d1x1_avm_byteenable),
        .out_lm227_conv2d1x1_avm_enable(bb_conv2d1x1_B8_out_lm227_conv2d1x1_avm_enable),
        .out_lm227_conv2d1x1_avm_read(bb_conv2d1x1_B8_out_lm227_conv2d1x1_avm_read),
        .out_lm227_conv2d1x1_avm_write(bb_conv2d1x1_B8_out_lm227_conv2d1x1_avm_write),
        .out_lm227_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_out_lm227_conv2d1x1_avm_writedata),
        .out_lm229_conv2d1x1_avm_address(bb_conv2d1x1_B8_out_lm229_conv2d1x1_avm_address),
        .out_lm229_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_out_lm229_conv2d1x1_avm_burstcount),
        .out_lm229_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_out_lm229_conv2d1x1_avm_byteenable),
        .out_lm229_conv2d1x1_avm_enable(bb_conv2d1x1_B8_out_lm229_conv2d1x1_avm_enable),
        .out_lm229_conv2d1x1_avm_read(bb_conv2d1x1_B8_out_lm229_conv2d1x1_avm_read),
        .out_lm229_conv2d1x1_avm_write(bb_conv2d1x1_B8_out_lm229_conv2d1x1_avm_write),
        .out_lm229_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_out_lm229_conv2d1x1_avm_writedata),
        .out_lm231_conv2d1x1_avm_address(bb_conv2d1x1_B8_out_lm231_conv2d1x1_avm_address),
        .out_lm231_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_out_lm231_conv2d1x1_avm_burstcount),
        .out_lm231_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_out_lm231_conv2d1x1_avm_byteenable),
        .out_lm231_conv2d1x1_avm_enable(bb_conv2d1x1_B8_out_lm231_conv2d1x1_avm_enable),
        .out_lm231_conv2d1x1_avm_read(bb_conv2d1x1_B8_out_lm231_conv2d1x1_avm_read),
        .out_lm231_conv2d1x1_avm_write(bb_conv2d1x1_B8_out_lm231_conv2d1x1_avm_write),
        .out_lm231_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_out_lm231_conv2d1x1_avm_writedata),
        .out_lm233_conv2d1x1_avm_address(bb_conv2d1x1_B8_out_lm233_conv2d1x1_avm_address),
        .out_lm233_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_out_lm233_conv2d1x1_avm_burstcount),
        .out_lm233_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_out_lm233_conv2d1x1_avm_byteenable),
        .out_lm233_conv2d1x1_avm_enable(bb_conv2d1x1_B8_out_lm233_conv2d1x1_avm_enable),
        .out_lm233_conv2d1x1_avm_read(bb_conv2d1x1_B8_out_lm233_conv2d1x1_avm_read),
        .out_lm233_conv2d1x1_avm_write(bb_conv2d1x1_B8_out_lm233_conv2d1x1_avm_write),
        .out_lm233_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_out_lm233_conv2d1x1_avm_writedata),
        .out_lm235_conv2d1x1_avm_address(bb_conv2d1x1_B8_out_lm235_conv2d1x1_avm_address),
        .out_lm235_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_out_lm235_conv2d1x1_avm_burstcount),
        .out_lm235_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_out_lm235_conv2d1x1_avm_byteenable),
        .out_lm235_conv2d1x1_avm_enable(bb_conv2d1x1_B8_out_lm235_conv2d1x1_avm_enable),
        .out_lm235_conv2d1x1_avm_read(bb_conv2d1x1_B8_out_lm235_conv2d1x1_avm_read),
        .out_lm235_conv2d1x1_avm_write(bb_conv2d1x1_B8_out_lm235_conv2d1x1_avm_write),
        .out_lm235_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_out_lm235_conv2d1x1_avm_writedata),
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

    // bb_conv2d1x1_B8_sr_1_aunroll_x(BLACKBOX,308)
    conv2d1x1_bb_B8_sr_1 thebb_conv2d1x1_B8_sr_1_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B8_out_stall_out_1),
        .in_i_valid(loop_limiter_conv2d1x12_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_conv2d1x1_B5_out_c0_exe1437912),
        .in_i_data_2_tpl(bb_conv2d1x1_B5_out_c0_exe1538013),
        .in_i_data_3_tpl(bb_conv2d1x1_B5_out_c0_exe1638114),
        .in_i_data_4_tpl(bb_conv2d1x1_B5_out_c0_exe1738215),
        .in_i_data_5_tpl(bb_conv2d1x1_B5_out_c0_exe1838316),
        .in_i_data_6_tpl(bb_conv2d1x1_B5_out_c0_exe1938417),
        .in_i_data_7_tpl(bb_conv2d1x1_B5_out_c0_exe2038518),
        .in_i_data_8_tpl(bb_conv2d1x1_B5_out_c0_exe2138619),
        .in_i_data_9_tpl(bb_conv2d1x1_B5_out_c0_exe2238720),
        .in_i_data_10_tpl(bb_conv2d1x1_B5_out_c0_exe1299),
        .in_i_data_11_tpl(bb_conv2d1x1_B5_out_c0_exe2300),
        .in_i_data_12_tpl(bb_conv2d1x1_B5_out_c0_exe3301),
        .in_i_data_13_tpl(bb_conv2d1x1_B5_out_c0_exe4302),
        .in_i_data_14_tpl(bb_conv2d1x1_B5_out_c0_exe5303),
        .in_i_data_15_tpl(bb_conv2d1x1_B5_out_c0_exe6304),
        .in_i_data_16_tpl(bb_conv2d1x1_B5_out_c0_exe7305),
        .in_i_data_17_tpl(bb_conv2d1x1_B5_out_c0_exe8306),
        .in_i_data_18_tpl(bb_conv2d1x1_B5_out_c0_exe9307),
        .in_i_data_19_tpl(bb_conv2d1x1_B5_out_c0_exe10308),
        .in_i_data_20_tpl(bb_conv2d1x1_B5_out_c0_exe11309),
        .in_i_data_21_tpl(bb_conv2d1x1_B5_out_c0_exe12310),
        .in_i_data_22_tpl(bb_conv2d1x1_B5_out_c0_exe13311),
        .in_i_data_23_tpl(bb_conv2d1x1_B5_out_c0_exe14312),
        .in_i_data_24_tpl(bb_conv2d1x1_B5_out_c0_exe15313),
        .in_i_data_25_tpl(bb_conv2d1x1_B5_out_c0_exe16314),
        .in_i_data_26_tpl(bb_conv2d1x1_B5_out_c0_exe17315),
        .in_i_data_27_tpl(bb_conv2d1x1_B5_out_c0_exe18316),
        .in_i_data_28_tpl(bb_conv2d1x1_B5_out_c0_exe19317),
        .in_i_data_29_tpl(bb_conv2d1x1_B5_out_c0_exe20318),
        .in_i_data_30_tpl(bb_conv2d1x1_B5_out_c0_exe21),
        .in_i_data_31_tpl(bb_conv2d1x1_B5_out_c0_exe22),
        .in_i_data_32_tpl(bb_conv2d1x1_B5_out_c0_exe23),
        .in_i_data_33_tpl(bb_conv2d1x1_B5_out_c0_exe24),
        .in_i_data_34_tpl(bb_conv2d1x1_B5_out_c0_exe23671),
        .in_i_data_35_tpl(bb_conv2d1x1_B5_out_c0_exe33682),
        .in_i_data_36_tpl(bb_conv2d1x1_B5_out_c0_exe43693),
        .in_i_data_37_tpl(bb_conv2d1x1_B5_out_c0_exe63714),
        .in_i_data_38_tpl(bb_conv2d1x1_B5_out_c0_exe73725),
        .in_i_data_39_tpl(bb_conv2d1x1_B5_out_c0_exe83736),
        .in_i_data_40_tpl(bb_conv2d1x1_B5_out_c0_exe93747),
        .in_i_data_41_tpl(bb_conv2d1x1_B5_out_c0_exe103758),
        .in_i_data_42_tpl(bb_conv2d1x1_B5_out_c0_exe113769),
        .in_i_data_43_tpl(bb_conv2d1x1_B5_out_c0_exe1237710),
        .in_i_data_44_tpl(bb_conv2d1x1_B5_out_c0_exe1337811),
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
        .out_o_data_37_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_37_tpl),
        .out_o_data_38_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_38_tpl),
        .out_o_data_39_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_39_tpl),
        .out_o_data_40_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_40_tpl),
        .out_o_data_41_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_41_tpl),
        .out_o_data_42_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_42_tpl),
        .out_o_data_43_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_43_tpl),
        .out_o_data_44_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_44_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv2d1x12(BLACKBOX,199)
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
        .in_c0_exe103758_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe113769_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe1237710_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe1337811_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe1437912_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe1538013_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_12_tpl),
        .in_c0_exe1638114_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_13_tpl),
        .in_c0_exe1738215_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_14_tpl),
        .in_c0_exe1838316_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_15_tpl),
        .in_c0_exe1938417_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_16_tpl),
        .in_c0_exe2038518_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_17_tpl),
        .in_c0_exe2138619_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_18_tpl),
        .in_c0_exe2238720_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_19_tpl),
        .in_c0_exe23671_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe33682_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe43693_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe63714_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe73725_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe83736_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe93747_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight(in_arg_filter_weight),
        .in_flush(in_start),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdata(in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdata),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdatavalid(in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdatavalid),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_waitrequest(in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_waitrequest),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writeack(in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writeack),
        .in_output_im(in_arg_output_im),
        .in_stall_in_0(loop_limiter_conv2d1x12_out_o_stall),
        .in_valid_in_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe10308(bb_conv2d1x1_B5_out_c0_exe10308),
        .out_c0_exe103758(bb_conv2d1x1_B5_out_c0_exe103758),
        .out_c0_exe11309(bb_conv2d1x1_B5_out_c0_exe11309),
        .out_c0_exe113769(bb_conv2d1x1_B5_out_c0_exe113769),
        .out_c0_exe12310(bb_conv2d1x1_B5_out_c0_exe12310),
        .out_c0_exe1237710(bb_conv2d1x1_B5_out_c0_exe1237710),
        .out_c0_exe1299(bb_conv2d1x1_B5_out_c0_exe1299),
        .out_c0_exe13311(bb_conv2d1x1_B5_out_c0_exe13311),
        .out_c0_exe1337811(bb_conv2d1x1_B5_out_c0_exe1337811),
        .out_c0_exe14312(bb_conv2d1x1_B5_out_c0_exe14312),
        .out_c0_exe1437912(bb_conv2d1x1_B5_out_c0_exe1437912),
        .out_c0_exe15313(bb_conv2d1x1_B5_out_c0_exe15313),
        .out_c0_exe1538013(bb_conv2d1x1_B5_out_c0_exe1538013),
        .out_c0_exe16314(bb_conv2d1x1_B5_out_c0_exe16314),
        .out_c0_exe1638114(bb_conv2d1x1_B5_out_c0_exe1638114),
        .out_c0_exe17315(bb_conv2d1x1_B5_out_c0_exe17315),
        .out_c0_exe1738215(bb_conv2d1x1_B5_out_c0_exe1738215),
        .out_c0_exe18316(bb_conv2d1x1_B5_out_c0_exe18316),
        .out_c0_exe1838316(bb_conv2d1x1_B5_out_c0_exe1838316),
        .out_c0_exe19317(bb_conv2d1x1_B5_out_c0_exe19317),
        .out_c0_exe1938417(bb_conv2d1x1_B5_out_c0_exe1938417),
        .out_c0_exe20318(bb_conv2d1x1_B5_out_c0_exe20318),
        .out_c0_exe2038518(bb_conv2d1x1_B5_out_c0_exe2038518),
        .out_c0_exe21(bb_conv2d1x1_B5_out_c0_exe21),
        .out_c0_exe2138619(bb_conv2d1x1_B5_out_c0_exe2138619),
        .out_c0_exe22(bb_conv2d1x1_B5_out_c0_exe22),
        .out_c0_exe2238720(bb_conv2d1x1_B5_out_c0_exe2238720),
        .out_c0_exe23(bb_conv2d1x1_B5_out_c0_exe23),
        .out_c0_exe2300(bb_conv2d1x1_B5_out_c0_exe2300),
        .out_c0_exe23671(bb_conv2d1x1_B5_out_c0_exe23671),
        .out_c0_exe24(bb_conv2d1x1_B5_out_c0_exe24),
        .out_c0_exe3301(bb_conv2d1x1_B5_out_c0_exe3301),
        .out_c0_exe33682(bb_conv2d1x1_B5_out_c0_exe33682),
        .out_c0_exe4302(bb_conv2d1x1_B5_out_c0_exe4302),
        .out_c0_exe43693(bb_conv2d1x1_B5_out_c0_exe43693),
        .out_c0_exe5303(bb_conv2d1x1_B5_out_c0_exe5303),
        .out_c0_exe6304(bb_conv2d1x1_B5_out_c0_exe6304),
        .out_c0_exe63714(bb_conv2d1x1_B5_out_c0_exe63714),
        .out_c0_exe7305(bb_conv2d1x1_B5_out_c0_exe7305),
        .out_c0_exe73725(bb_conv2d1x1_B5_out_c0_exe73725),
        .out_c0_exe8306(bb_conv2d1x1_B5_out_c0_exe8306),
        .out_c0_exe83736(bb_conv2d1x1_B5_out_c0_exe83736),
        .out_c0_exe9307(bb_conv2d1x1_B5_out_c0_exe9307),
        .out_c0_exe93747(bb_conv2d1x1_B5_out_c0_exe93747),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address(bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount(bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable(bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable(bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read(bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write(bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata(bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata),
        .out_stall_out_0(bb_conv2d1x1_B5_out_stall_out_0),
        .out_valid_out_0(bb_conv2d1x1_B5_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B5_sr_0_aunroll_x(BLACKBOX,305)
    conv2d1x1_bb_B5_sr_0 thebb_conv2d1x1_B5_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B5_out_stall_out_0),
        .in_i_valid(bb_conv2d1x1_B6_out_valid_out_0),
        .in_i_data_0_tpl(bb_conv2d1x1_B6_out_c0_exe2367),
        .in_i_data_1_tpl(bb_conv2d1x1_B6_out_c0_exe3368),
        .in_i_data_2_tpl(bb_conv2d1x1_B6_out_c0_exe4369),
        .in_i_data_3_tpl(bb_conv2d1x1_B6_out_c0_exe6371),
        .in_i_data_4_tpl(bb_conv2d1x1_B6_out_c0_exe7372),
        .in_i_data_5_tpl(bb_conv2d1x1_B6_out_c0_exe8373),
        .in_i_data_6_tpl(bb_conv2d1x1_B6_out_c0_exe9374),
        .in_i_data_7_tpl(bb_conv2d1x1_B6_out_c0_exe10375),
        .in_i_data_8_tpl(bb_conv2d1x1_B6_out_c0_exe11376),
        .in_i_data_9_tpl(bb_conv2d1x1_B6_out_c0_exe12377),
        .in_i_data_10_tpl(bb_conv2d1x1_B6_out_c0_exe13378),
        .in_i_data_11_tpl(bb_conv2d1x1_B6_out_c0_exe14379),
        .in_i_data_12_tpl(bb_conv2d1x1_B6_out_c0_exe15380),
        .in_i_data_13_tpl(bb_conv2d1x1_B6_out_c0_exe16381),
        .in_i_data_14_tpl(bb_conv2d1x1_B6_out_c0_exe17382),
        .in_i_data_15_tpl(bb_conv2d1x1_B6_out_c0_exe18383),
        .in_i_data_16_tpl(bb_conv2d1x1_B6_out_c0_exe19384),
        .in_i_data_17_tpl(bb_conv2d1x1_B6_out_c0_exe20385),
        .in_i_data_18_tpl(bb_conv2d1x1_B6_out_c0_exe21386),
        .in_i_data_19_tpl(bb_conv2d1x1_B6_out_c0_exe22387),
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

    // i_llvm_fpga_pipeline_keep_going34_conv2d1x16_sr(BLACKBOX,117)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going34_6_sr thei_llvm_fpga_pipeline_keep_going34_conv2d1x16_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going34_conv2d1x16_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv2d1x1_B6_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going34_conv2d1x16_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going34_conv2d1x16_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i10_undef81(CONSTANT,40)
    assign c_i10_undef81_q = $unsigned(10'b0000000000);

    // bb_conv2d1x1_B6(BLACKBOX,8)
    conv2d1x1_bb_B6 thebb_conv2d1x1_B6 (
        .in_ap_pop133_0(c_i10_undef81_q),
        .in_ap_pop133_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight(in_arg_filter_weight),
        .in_flush(in_start),
        .in_forked31_0(GND_q),
        .in_forked31_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_ij_0104_pop13136_0(c_i32_undef163_q),
        .in_ij_0104_pop13136_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_lm117_0(c_float_undef173_q),
        .in_lm117_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_lm59_pop18140_0(c_float_undef173_q),
        .in_lm59_pop18140_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_mul112_0(c_i32_undef163_q),
        .in_mul112_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_mul156127_0(c_i32_undef163_q),
        .in_mul156127_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_mul15665_pop20142_0(c_i32_undef163_q),
        .in_mul15665_pop20142_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_19_tpl),
        .in_mul21122_0(c_i32_undef163_q),
        .in_mul21122_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_mul2162_pop19141_0(c_i32_undef163_q),
        .in_mul2162_pop19141_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_mul56_pop14137_0(c_i32_undef163_q),
        .in_mul56_pop14137_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_notcmp46135_0(GND_q),
        .in_notcmp46135_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_notcmp51132_0(GND_q),
        .in_notcmp51132_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_notcmp5168_pop21143_0(GND_q),
        .in_notcmp5168_pop21143_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_20_tpl),
        .in_output_im(in_arg_output_im),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going34_conv2d1x16_sr_out_o_stall),
        .in_pop15138_0(GND_q),
        .in_pop15138_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_pop16134_0(GND_q),
        .in_pop16134_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_pop17139_0(GND_q),
        .in_pop17139_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_stall_in_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_conv2d1x111_0(GND_q),
        .in_unnamed_conv2d1x111_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_unnamed_conv2d1x112_0(GND_q),
        .in_unnamed_conv2d1x112_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_unnamed_conv2d1x113_0(GND_q),
        .in_unnamed_conv2d1x113_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_unnamed_conv2d1x114_0(c_i33_undef171_q),
        .in_unnamed_conv2d1x114_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_readdata(in_unnamed_conv2d1x115_conv2d1x1_avm_readdata),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_readdatavalid(in_unnamed_conv2d1x115_conv2d1x1_avm_readdatavalid),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_waitrequest(in_unnamed_conv2d1x115_conv2d1x1_avm_waitrequest),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_writeack(in_unnamed_conv2d1x115_conv2d1x1_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going34_conv2d1x16_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10375(bb_conv2d1x1_B6_out_c0_exe10375),
        .out_c0_exe11376(bb_conv2d1x1_B6_out_c0_exe11376),
        .out_c0_exe12377(bb_conv2d1x1_B6_out_c0_exe12377),
        .out_c0_exe13378(bb_conv2d1x1_B6_out_c0_exe13378),
        .out_c0_exe14379(bb_conv2d1x1_B6_out_c0_exe14379),
        .out_c0_exe15380(bb_conv2d1x1_B6_out_c0_exe15380),
        .out_c0_exe16381(bb_conv2d1x1_B6_out_c0_exe16381),
        .out_c0_exe17382(bb_conv2d1x1_B6_out_c0_exe17382),
        .out_c0_exe18383(bb_conv2d1x1_B6_out_c0_exe18383),
        .out_c0_exe19384(bb_conv2d1x1_B6_out_c0_exe19384),
        .out_c0_exe20385(bb_conv2d1x1_B6_out_c0_exe20385),
        .out_c0_exe21386(bb_conv2d1x1_B6_out_c0_exe21386),
        .out_c0_exe22387(bb_conv2d1x1_B6_out_c0_exe22387),
        .out_c0_exe2367(bb_conv2d1x1_B6_out_c0_exe2367),
        .out_c0_exe3368(bb_conv2d1x1_B6_out_c0_exe3368),
        .out_c0_exe4369(bb_conv2d1x1_B6_out_c0_exe4369),
        .out_c0_exe6371(bb_conv2d1x1_B6_out_c0_exe6371),
        .out_c0_exe7372(bb_conv2d1x1_B6_out_c0_exe7372),
        .out_c0_exe8373(bb_conv2d1x1_B6_out_c0_exe8373),
        .out_c0_exe9374(bb_conv2d1x1_B6_out_c0_exe9374),
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

    // bb_conv2d1x1_B6_sr_1_aunroll_x(BLACKBOX,306)
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
        .in_i_data_11_tpl(bb_conv2d1x1_B4_out_c0_exe1264),
        .in_i_data_12_tpl(bb_conv2d1x1_B4_out_c0_exe3266),
        .in_i_data_13_tpl(bb_conv2d1x1_B4_out_c0_exe4267),
        .in_i_data_14_tpl(bb_conv2d1x1_B4_out_c0_exe5268),
        .in_i_data_15_tpl(bb_conv2d1x1_B4_out_c0_exe6269),
        .in_i_data_16_tpl(bb_conv2d1x1_B4_out_c0_exe7270),
        .in_i_data_17_tpl(bb_conv2d1x1_B4_out_c0_exe8271),
        .in_i_data_18_tpl(bb_conv2d1x1_B4_out_c0_exe9272),
        .in_i_data_19_tpl(bb_conv2d1x1_B4_out_c0_exe10273),
        .in_i_data_20_tpl(bb_conv2d1x1_B4_out_c0_exe11274),
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

    // loop_limiter_conv2d1x11(BLACKBOX,198)
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

    // i_llvm_fpga_pipeline_keep_going48_conv2d1x12_sr(BLACKBOX,119)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going48_2_sr thei_llvm_fpga_pipeline_keep_going48_conv2d1x12_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going48_conv2d1x12_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv2d1x1_B4_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going48_conv2d1x12_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going48_conv2d1x12_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef163(CONSTANT,92)
    assign c_i32_undef163_q = $unsigned(32'b00000000000000000000000000000000);

    // c_float_undef173(FLOATCONSTANT,11)
    assign c_float_undef173_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_conv2d1x1_B3_sr_0_aunroll_x(BLACKBOX,303)
    conv2d1x1_bb_B3_sr_0 thebb_conv2d1x1_B3_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B3_out_stall_out_0),
        .in_i_valid(bb_conv2d1x1_B7_out_valid_out_0),
        .in_i_data_0_tpl(bb_conv2d1x1_B7_out_c0_exe1953327),
        .out_o_stall(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B7(BLACKBOX,9)
    conv2d1x1_bb_B7 thebb_conv2d1x1_B7 (
        .in_c0_exe1753124_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe1853225_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe1953327_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe2053428_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe2153529_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe351721_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe451822_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe551923_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c1_exe1039_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_17_tpl),
        .in_c1_exe1140_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_18_tpl),
        .in_c1_exe1241_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_19_tpl),
        .in_c1_exe1342_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_20_tpl),
        .in_c1_exe1443_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_21_tpl),
        .in_c1_exe1544_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_22_tpl),
        .in_c1_exe159230_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_8_tpl),
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
        .in_c1_exe3362_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_40_tpl),
        .in_c1_exe3463_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_41_tpl),
        .in_c1_exe3564_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_42_tpl),
        .in_c1_exe3665_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_43_tpl),
        .in_c1_exe3766_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_44_tpl),
        .in_c1_exe3867_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_45_tpl),
        .in_c1_exe3968_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_46_tpl),
        .in_c1_exe4069_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_47_tpl),
        .in_c1_exe4170_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_48_tpl),
        .in_c1_exe4271_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_49_tpl),
        .in_c1_exe433_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_c1_exe4372_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_50_tpl),
        .in_c1_exe4473_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_51_tpl),
        .in_c1_exe4574_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_52_tpl),
        .in_c1_exe4675_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_53_tpl),
        .in_c1_exe4776_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_54_tpl),
        .in_c1_exe4877_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_data_55_tpl),
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
        .in_memdep_13_conv2d1x1_avm_readdata(in_memdep_13_conv2d1x1_avm_readdata),
        .in_memdep_13_conv2d1x1_avm_readdatavalid(in_memdep_13_conv2d1x1_avm_readdatavalid),
        .in_memdep_13_conv2d1x1_avm_waitrequest(in_memdep_13_conv2d1x1_avm_waitrequest),
        .in_memdep_13_conv2d1x1_avm_writeack(in_memdep_13_conv2d1x1_avm_writeack),
        .in_output_im(in_arg_output_im),
        .in_stall_in_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_conv2d1x116_conv2d1x1_avm_readdata(in_unnamed_conv2d1x116_conv2d1x1_avm_readdata),
        .in_unnamed_conv2d1x116_conv2d1x1_avm_readdatavalid(in_unnamed_conv2d1x116_conv2d1x1_avm_readdatavalid),
        .in_unnamed_conv2d1x116_conv2d1x1_avm_waitrequest(in_unnamed_conv2d1x116_conv2d1x1_avm_waitrequest),
        .in_unnamed_conv2d1x116_conv2d1x1_avm_writeack(in_unnamed_conv2d1x116_conv2d1x1_avm_writeack),
        .in_valid_in_0(bb_conv2d1x1_B7_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe1953327(bb_conv2d1x1_B7_out_c0_exe1953327),
        .out_feedback_out_1(bb_conv2d1x1_B7_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_conv2d1x1_B7_out_feedback_valid_out_1),
        .out_lsu_unnamed_conv2d1x116_o_active(bb_conv2d1x1_B7_out_lsu_unnamed_conv2d1x116_o_active),
        .out_memdep_13_conv2d1x1_avm_address(bb_conv2d1x1_B7_out_memdep_13_conv2d1x1_avm_address),
        .out_memdep_13_conv2d1x1_avm_burstcount(bb_conv2d1x1_B7_out_memdep_13_conv2d1x1_avm_burstcount),
        .out_memdep_13_conv2d1x1_avm_byteenable(bb_conv2d1x1_B7_out_memdep_13_conv2d1x1_avm_byteenable),
        .out_memdep_13_conv2d1x1_avm_enable(bb_conv2d1x1_B7_out_memdep_13_conv2d1x1_avm_enable),
        .out_memdep_13_conv2d1x1_avm_read(bb_conv2d1x1_B7_out_memdep_13_conv2d1x1_avm_read),
        .out_memdep_13_conv2d1x1_avm_write(bb_conv2d1x1_B7_out_memdep_13_conv2d1x1_avm_write),
        .out_memdep_13_conv2d1x1_avm_writedata(bb_conv2d1x1_B7_out_memdep_13_conv2d1x1_avm_writedata),
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
        .in_forked55_0(GND_q),
        .in_forked55_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_lm113_0(c_float_undef173_q),
        .in_lm113_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_mul108_0(c_i32_undef163_q),
        .in_mul108_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_mul156123_0(c_i32_undef163_q),
        .in_mul156123_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_mul21118_0(c_i32_undef163_q),
        .in_mul21118_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_notcmp51128_0(GND_q),
        .in_notcmp51128_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_output_im(in_arg_output_im),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going48_conv2d1x12_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_conv2d1x11_out_o_stall),
        .in_unnamed_conv2d1x110_0(c_i33_undef171_q),
        .in_unnamed_conv2d1x110_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_unnamed_conv2d1x17_0(GND_q),
        .in_unnamed_conv2d1x17_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_unnamed_conv2d1x18_0(GND_q),
        .in_unnamed_conv2d1x18_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_unnamed_conv2d1x19_0(GND_q),
        .in_unnamed_conv2d1x19_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going48_conv2d1x12_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_valid),
        .out_ap_pop(bb_conv2d1x1_B4_out_ap_pop),
        .out_c0_exe10273(bb_conv2d1x1_B4_out_c0_exe10273),
        .out_c0_exe11274(bb_conv2d1x1_B4_out_c0_exe11274),
        .out_c0_exe12(bb_conv2d1x1_B4_out_c0_exe12),
        .out_c0_exe1264(bb_conv2d1x1_B4_out_c0_exe1264),
        .out_c0_exe13(bb_conv2d1x1_B4_out_c0_exe13),
        .out_c0_exe14(bb_conv2d1x1_B4_out_c0_exe14),
        .out_c0_exe15(bb_conv2d1x1_B4_out_c0_exe15),
        .out_c0_exe16(bb_conv2d1x1_B4_out_c0_exe16),
        .out_c0_exe17(bb_conv2d1x1_B4_out_c0_exe17),
        .out_c0_exe18(bb_conv2d1x1_B4_out_c0_exe18),
        .out_c0_exe19(bb_conv2d1x1_B4_out_c0_exe19),
        .out_c0_exe20(bb_conv2d1x1_B4_out_c0_exe20),
        .out_c0_exe3266(bb_conv2d1x1_B4_out_c0_exe3266),
        .out_c0_exe4267(bb_conv2d1x1_B4_out_c0_exe4267),
        .out_c0_exe5268(bb_conv2d1x1_B4_out_c0_exe5268),
        .out_c0_exe6269(bb_conv2d1x1_B4_out_c0_exe6269),
        .out_c0_exe7270(bb_conv2d1x1_B4_out_c0_exe7270),
        .out_c0_exe8271(bb_conv2d1x1_B4_out_c0_exe8271),
        .out_c0_exe9272(bb_conv2d1x1_B4_out_c0_exe9272),
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

    // bb_conv2d1x1_B4_sr_1_aunroll_x(BLACKBOX,304)
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

    // loop_limiter_conv2d1x10(BLACKBOX,197)
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

    // i_llvm_fpga_pipeline_keep_going52_conv2d1x12_sr(BLACKBOX,121)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going52_2_sr thei_llvm_fpga_pipeline_keep_going52_conv2d1x12_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going52_conv2d1x12_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv2d1x1_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going52_conv2d1x12_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going52_conv2d1x12_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B1_sr_0_aunroll_x(BLACKBOX,301)
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
        .in_forked21_0(GND_q),
        .in_forked21_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_0_tpl),
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
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going52_conv2d1x12_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_conv2d1x10_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going52_conv2d1x12_valid_fifo_out_valid_out),
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
        .in_c0_exe1953326_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_0_tpl),
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

    // bb_conv2d1x1_B2_sr_1_aunroll_x(BLACKBOX,302)
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

    // conv2d1x1_B2_x(EXTIFACE,113)
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

    // conv2d1x1_B4_x(EXTIFACE,114)
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

    // conv2d1x1_B6_x(EXTIFACE,115)
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

    // conv2d1x1_B8_x(EXTIFACE,116)
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

    // out_lm220_conv2d1x1_avm_address(GPOUT,200)
    assign out_lm220_conv2d1x1_avm_address = bb_conv2d1x1_B8_out_lm220_conv2d1x1_avm_address;

    // out_lm220_conv2d1x1_avm_burstcount(GPOUT,201)
    assign out_lm220_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_out_lm220_conv2d1x1_avm_burstcount;

    // out_lm220_conv2d1x1_avm_byteenable(GPOUT,202)
    assign out_lm220_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_out_lm220_conv2d1x1_avm_byteenable;

    // out_lm220_conv2d1x1_avm_enable(GPOUT,203)
    assign out_lm220_conv2d1x1_avm_enable = bb_conv2d1x1_B8_out_lm220_conv2d1x1_avm_enable;

    // out_lm220_conv2d1x1_avm_read(GPOUT,204)
    assign out_lm220_conv2d1x1_avm_read = bb_conv2d1x1_B8_out_lm220_conv2d1x1_avm_read;

    // out_lm220_conv2d1x1_avm_write(GPOUT,205)
    assign out_lm220_conv2d1x1_avm_write = bb_conv2d1x1_B8_out_lm220_conv2d1x1_avm_write;

    // out_lm220_conv2d1x1_avm_writedata(GPOUT,206)
    assign out_lm220_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_out_lm220_conv2d1x1_avm_writedata;

    // out_lm222_conv2d1x1_avm_address(GPOUT,207)
    assign out_lm222_conv2d1x1_avm_address = bb_conv2d1x1_B8_out_lm222_conv2d1x1_avm_address;

    // out_lm222_conv2d1x1_avm_burstcount(GPOUT,208)
    assign out_lm222_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_out_lm222_conv2d1x1_avm_burstcount;

    // out_lm222_conv2d1x1_avm_byteenable(GPOUT,209)
    assign out_lm222_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_out_lm222_conv2d1x1_avm_byteenable;

    // out_lm222_conv2d1x1_avm_enable(GPOUT,210)
    assign out_lm222_conv2d1x1_avm_enable = bb_conv2d1x1_B8_out_lm222_conv2d1x1_avm_enable;

    // out_lm222_conv2d1x1_avm_read(GPOUT,211)
    assign out_lm222_conv2d1x1_avm_read = bb_conv2d1x1_B8_out_lm222_conv2d1x1_avm_read;

    // out_lm222_conv2d1x1_avm_write(GPOUT,212)
    assign out_lm222_conv2d1x1_avm_write = bb_conv2d1x1_B8_out_lm222_conv2d1x1_avm_write;

    // out_lm222_conv2d1x1_avm_writedata(GPOUT,213)
    assign out_lm222_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_out_lm222_conv2d1x1_avm_writedata;

    // out_lm223_conv2d1x1_avm_address(GPOUT,214)
    assign out_lm223_conv2d1x1_avm_address = bb_conv2d1x1_B8_out_lm223_conv2d1x1_avm_address;

    // out_lm223_conv2d1x1_avm_burstcount(GPOUT,215)
    assign out_lm223_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_out_lm223_conv2d1x1_avm_burstcount;

    // out_lm223_conv2d1x1_avm_byteenable(GPOUT,216)
    assign out_lm223_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_out_lm223_conv2d1x1_avm_byteenable;

    // out_lm223_conv2d1x1_avm_enable(GPOUT,217)
    assign out_lm223_conv2d1x1_avm_enable = bb_conv2d1x1_B8_out_lm223_conv2d1x1_avm_enable;

    // out_lm223_conv2d1x1_avm_read(GPOUT,218)
    assign out_lm223_conv2d1x1_avm_read = bb_conv2d1x1_B8_out_lm223_conv2d1x1_avm_read;

    // out_lm223_conv2d1x1_avm_write(GPOUT,219)
    assign out_lm223_conv2d1x1_avm_write = bb_conv2d1x1_B8_out_lm223_conv2d1x1_avm_write;

    // out_lm223_conv2d1x1_avm_writedata(GPOUT,220)
    assign out_lm223_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_out_lm223_conv2d1x1_avm_writedata;

    // out_lm225_conv2d1x1_avm_address(GPOUT,221)
    assign out_lm225_conv2d1x1_avm_address = bb_conv2d1x1_B8_out_lm225_conv2d1x1_avm_address;

    // out_lm225_conv2d1x1_avm_burstcount(GPOUT,222)
    assign out_lm225_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_out_lm225_conv2d1x1_avm_burstcount;

    // out_lm225_conv2d1x1_avm_byteenable(GPOUT,223)
    assign out_lm225_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_out_lm225_conv2d1x1_avm_byteenable;

    // out_lm225_conv2d1x1_avm_enable(GPOUT,224)
    assign out_lm225_conv2d1x1_avm_enable = bb_conv2d1x1_B8_out_lm225_conv2d1x1_avm_enable;

    // out_lm225_conv2d1x1_avm_read(GPOUT,225)
    assign out_lm225_conv2d1x1_avm_read = bb_conv2d1x1_B8_out_lm225_conv2d1x1_avm_read;

    // out_lm225_conv2d1x1_avm_write(GPOUT,226)
    assign out_lm225_conv2d1x1_avm_write = bb_conv2d1x1_B8_out_lm225_conv2d1x1_avm_write;

    // out_lm225_conv2d1x1_avm_writedata(GPOUT,227)
    assign out_lm225_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_out_lm225_conv2d1x1_avm_writedata;

    // out_lm227_conv2d1x1_avm_address(GPOUT,228)
    assign out_lm227_conv2d1x1_avm_address = bb_conv2d1x1_B8_out_lm227_conv2d1x1_avm_address;

    // out_lm227_conv2d1x1_avm_burstcount(GPOUT,229)
    assign out_lm227_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_out_lm227_conv2d1x1_avm_burstcount;

    // out_lm227_conv2d1x1_avm_byteenable(GPOUT,230)
    assign out_lm227_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_out_lm227_conv2d1x1_avm_byteenable;

    // out_lm227_conv2d1x1_avm_enable(GPOUT,231)
    assign out_lm227_conv2d1x1_avm_enable = bb_conv2d1x1_B8_out_lm227_conv2d1x1_avm_enable;

    // out_lm227_conv2d1x1_avm_read(GPOUT,232)
    assign out_lm227_conv2d1x1_avm_read = bb_conv2d1x1_B8_out_lm227_conv2d1x1_avm_read;

    // out_lm227_conv2d1x1_avm_write(GPOUT,233)
    assign out_lm227_conv2d1x1_avm_write = bb_conv2d1x1_B8_out_lm227_conv2d1x1_avm_write;

    // out_lm227_conv2d1x1_avm_writedata(GPOUT,234)
    assign out_lm227_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_out_lm227_conv2d1x1_avm_writedata;

    // out_lm229_conv2d1x1_avm_address(GPOUT,235)
    assign out_lm229_conv2d1x1_avm_address = bb_conv2d1x1_B8_out_lm229_conv2d1x1_avm_address;

    // out_lm229_conv2d1x1_avm_burstcount(GPOUT,236)
    assign out_lm229_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_out_lm229_conv2d1x1_avm_burstcount;

    // out_lm229_conv2d1x1_avm_byteenable(GPOUT,237)
    assign out_lm229_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_out_lm229_conv2d1x1_avm_byteenable;

    // out_lm229_conv2d1x1_avm_enable(GPOUT,238)
    assign out_lm229_conv2d1x1_avm_enable = bb_conv2d1x1_B8_out_lm229_conv2d1x1_avm_enable;

    // out_lm229_conv2d1x1_avm_read(GPOUT,239)
    assign out_lm229_conv2d1x1_avm_read = bb_conv2d1x1_B8_out_lm229_conv2d1x1_avm_read;

    // out_lm229_conv2d1x1_avm_write(GPOUT,240)
    assign out_lm229_conv2d1x1_avm_write = bb_conv2d1x1_B8_out_lm229_conv2d1x1_avm_write;

    // out_lm229_conv2d1x1_avm_writedata(GPOUT,241)
    assign out_lm229_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_out_lm229_conv2d1x1_avm_writedata;

    // out_lm231_conv2d1x1_avm_address(GPOUT,242)
    assign out_lm231_conv2d1x1_avm_address = bb_conv2d1x1_B8_out_lm231_conv2d1x1_avm_address;

    // out_lm231_conv2d1x1_avm_burstcount(GPOUT,243)
    assign out_lm231_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_out_lm231_conv2d1x1_avm_burstcount;

    // out_lm231_conv2d1x1_avm_byteenable(GPOUT,244)
    assign out_lm231_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_out_lm231_conv2d1x1_avm_byteenable;

    // out_lm231_conv2d1x1_avm_enable(GPOUT,245)
    assign out_lm231_conv2d1x1_avm_enable = bb_conv2d1x1_B8_out_lm231_conv2d1x1_avm_enable;

    // out_lm231_conv2d1x1_avm_read(GPOUT,246)
    assign out_lm231_conv2d1x1_avm_read = bb_conv2d1x1_B8_out_lm231_conv2d1x1_avm_read;

    // out_lm231_conv2d1x1_avm_write(GPOUT,247)
    assign out_lm231_conv2d1x1_avm_write = bb_conv2d1x1_B8_out_lm231_conv2d1x1_avm_write;

    // out_lm231_conv2d1x1_avm_writedata(GPOUT,248)
    assign out_lm231_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_out_lm231_conv2d1x1_avm_writedata;

    // out_lm233_conv2d1x1_avm_address(GPOUT,249)
    assign out_lm233_conv2d1x1_avm_address = bb_conv2d1x1_B8_out_lm233_conv2d1x1_avm_address;

    // out_lm233_conv2d1x1_avm_burstcount(GPOUT,250)
    assign out_lm233_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_out_lm233_conv2d1x1_avm_burstcount;

    // out_lm233_conv2d1x1_avm_byteenable(GPOUT,251)
    assign out_lm233_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_out_lm233_conv2d1x1_avm_byteenable;

    // out_lm233_conv2d1x1_avm_enable(GPOUT,252)
    assign out_lm233_conv2d1x1_avm_enable = bb_conv2d1x1_B8_out_lm233_conv2d1x1_avm_enable;

    // out_lm233_conv2d1x1_avm_read(GPOUT,253)
    assign out_lm233_conv2d1x1_avm_read = bb_conv2d1x1_B8_out_lm233_conv2d1x1_avm_read;

    // out_lm233_conv2d1x1_avm_write(GPOUT,254)
    assign out_lm233_conv2d1x1_avm_write = bb_conv2d1x1_B8_out_lm233_conv2d1x1_avm_write;

    // out_lm233_conv2d1x1_avm_writedata(GPOUT,255)
    assign out_lm233_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_out_lm233_conv2d1x1_avm_writedata;

    // out_lm235_conv2d1x1_avm_address(GPOUT,256)
    assign out_lm235_conv2d1x1_avm_address = bb_conv2d1x1_B8_out_lm235_conv2d1x1_avm_address;

    // out_lm235_conv2d1x1_avm_burstcount(GPOUT,257)
    assign out_lm235_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_out_lm235_conv2d1x1_avm_burstcount;

    // out_lm235_conv2d1x1_avm_byteenable(GPOUT,258)
    assign out_lm235_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_out_lm235_conv2d1x1_avm_byteenable;

    // out_lm235_conv2d1x1_avm_enable(GPOUT,259)
    assign out_lm235_conv2d1x1_avm_enable = bb_conv2d1x1_B8_out_lm235_conv2d1x1_avm_enable;

    // out_lm235_conv2d1x1_avm_read(GPOUT,260)
    assign out_lm235_conv2d1x1_avm_read = bb_conv2d1x1_B8_out_lm235_conv2d1x1_avm_read;

    // out_lm235_conv2d1x1_avm_write(GPOUT,261)
    assign out_lm235_conv2d1x1_avm_write = bb_conv2d1x1_B8_out_lm235_conv2d1x1_avm_write;

    // out_lm235_conv2d1x1_avm_writedata(GPOUT,262)
    assign out_lm235_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_out_lm235_conv2d1x1_avm_writedata;

    // out_lm_conv2d1x1_avm_address(GPOUT,263)
    assign out_lm_conv2d1x1_avm_address = bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_address;

    // out_lm_conv2d1x1_avm_burstcount(GPOUT,264)
    assign out_lm_conv2d1x1_avm_burstcount = bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_burstcount;

    // out_lm_conv2d1x1_avm_byteenable(GPOUT,265)
    assign out_lm_conv2d1x1_avm_byteenable = bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_byteenable;

    // out_lm_conv2d1x1_avm_enable(GPOUT,266)
    assign out_lm_conv2d1x1_avm_enable = bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_enable;

    // out_lm_conv2d1x1_avm_read(GPOUT,267)
    assign out_lm_conv2d1x1_avm_read = bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_read;

    // out_lm_conv2d1x1_avm_write(GPOUT,268)
    assign out_lm_conv2d1x1_avm_write = bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_write;

    // out_lm_conv2d1x1_avm_writedata(GPOUT,269)
    assign out_lm_conv2d1x1_avm_writedata = bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_writedata;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address(GPOUT,270)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address = bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount(GPOUT,271)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount = bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable(GPOUT,272)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable = bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable(GPOUT,273)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable = bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read(GPOUT,274)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read = bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write(GPOUT,275)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write = bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata(GPOUT,276)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata = bb_conv2d1x1_B5_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata;

    // out_memdep_13_conv2d1x1_avm_address(GPOUT,277)
    assign out_memdep_13_conv2d1x1_avm_address = bb_conv2d1x1_B7_out_memdep_13_conv2d1x1_avm_address;

    // out_memdep_13_conv2d1x1_avm_burstcount(GPOUT,278)
    assign out_memdep_13_conv2d1x1_avm_burstcount = bb_conv2d1x1_B7_out_memdep_13_conv2d1x1_avm_burstcount;

    // out_memdep_13_conv2d1x1_avm_byteenable(GPOUT,279)
    assign out_memdep_13_conv2d1x1_avm_byteenable = bb_conv2d1x1_B7_out_memdep_13_conv2d1x1_avm_byteenable;

    // out_memdep_13_conv2d1x1_avm_enable(GPOUT,280)
    assign out_memdep_13_conv2d1x1_avm_enable = bb_conv2d1x1_B7_out_memdep_13_conv2d1x1_avm_enable;

    // out_memdep_13_conv2d1x1_avm_read(GPOUT,281)
    assign out_memdep_13_conv2d1x1_avm_read = bb_conv2d1x1_B7_out_memdep_13_conv2d1x1_avm_read;

    // out_memdep_13_conv2d1x1_avm_write(GPOUT,282)
    assign out_memdep_13_conv2d1x1_avm_write = bb_conv2d1x1_B7_out_memdep_13_conv2d1x1_avm_write;

    // out_memdep_13_conv2d1x1_avm_writedata(GPOUT,283)
    assign out_memdep_13_conv2d1x1_avm_writedata = bb_conv2d1x1_B7_out_memdep_13_conv2d1x1_avm_writedata;

    // out_o_active_unnamed_conv2d1x116(GPOUT,284)
    assign out_o_active_unnamed_conv2d1x116 = bb_conv2d1x1_B7_out_lsu_unnamed_conv2d1x116_o_active;

    // out_stall_out(GPOUT,285)
    assign out_stall_out = bb_conv2d1x1_B0_out_stall_out_0;

    // out_unnamed_conv2d1x115_conv2d1x1_avm_address(GPOUT,286)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_address = bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_address;

    // out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount(GPOUT,287)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount = bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount;

    // out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable(GPOUT,288)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable = bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable;

    // out_unnamed_conv2d1x115_conv2d1x1_avm_enable(GPOUT,289)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_enable = bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_enable;

    // out_unnamed_conv2d1x115_conv2d1x1_avm_read(GPOUT,290)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_read = bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_read;

    // out_unnamed_conv2d1x115_conv2d1x1_avm_write(GPOUT,291)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_write = bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_write;

    // out_unnamed_conv2d1x115_conv2d1x1_avm_writedata(GPOUT,292)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_writedata = bb_conv2d1x1_B6_out_unnamed_conv2d1x115_conv2d1x1_avm_writedata;

    // out_unnamed_conv2d1x116_conv2d1x1_avm_address(GPOUT,293)
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_address = bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_address;

    // out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount(GPOUT,294)
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount = bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount;

    // out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable(GPOUT,295)
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable = bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable;

    // out_unnamed_conv2d1x116_conv2d1x1_avm_enable(GPOUT,296)
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_enable = bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_enable;

    // out_unnamed_conv2d1x116_conv2d1x1_avm_read(GPOUT,297)
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_read = bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_read;

    // out_unnamed_conv2d1x116_conv2d1x1_avm_write(GPOUT,298)
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_write = bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_write;

    // out_unnamed_conv2d1x116_conv2d1x1_avm_writedata(GPOUT,299)
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_writedata = bb_conv2d1x1_B7_out_unnamed_conv2d1x116_conv2d1x1_avm_writedata;

    // out_valid_out(GPOUT,300)
    assign out_valid_out = bb_conv2d1x1_B1_out_valid_out_0;

endmodule
