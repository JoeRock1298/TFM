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

// SystemVerilog created from maxpool2d_function
// SystemVerilog created on Tue Jun  6 18:48:21 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_function (
    input wire [63:0] in_arg_acl_global_size_0,
    input wire [63:0] in_arg_acl_global_size_1,
    input wire [63:0] in_arg_acl_global_size_2,
    input wire [31:0] in_arg_acl_local_size_0,
    input wire [31:0] in_arg_acl_local_size_1,
    input wire [31:0] in_arg_acl_local_size_2,
    input wire [31:0] in_arg_channel_size,
    input wire [63:0] in_arg_input_im,
    input wire [31:0] in_arg_input_size,
    input wire [63:0] in_arg_output_im,
    input wire [31:0] in_arg_output_size,
    input wire [511:0] in_lm_maxpool2d_avm_readdata,
    input wire [0:0] in_lm_maxpool2d_avm_readdatavalid,
    input wire [0:0] in_lm_maxpool2d_avm_waitrequest,
    input wire [0:0] in_lm_maxpool2d_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [511:0] in_unnamed_maxpool2d13_maxpool2d_avm_readdata,
    input wire [0:0] in_unnamed_maxpool2d13_maxpool2d_avm_readdatavalid,
    input wire [0:0] in_unnamed_maxpool2d13_maxpool2d_avm_waitrequest,
    input wire [0:0] in_unnamed_maxpool2d13_maxpool2d_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [30:0] out_lm_maxpool2d_avm_address,
    output wire [4:0] out_lm_maxpool2d_avm_burstcount,
    output wire [63:0] out_lm_maxpool2d_avm_byteenable,
    output wire [0:0] out_lm_maxpool2d_avm_enable,
    output wire [0:0] out_lm_maxpool2d_avm_read,
    output wire [0:0] out_lm_maxpool2d_avm_write,
    output wire [511:0] out_lm_maxpool2d_avm_writedata,
    output wire [0:0] out_o_active_unnamed_maxpool2d13,
    output wire [0:0] out_stall_out,
    output wire [30:0] out_unnamed_maxpool2d13_maxpool2d_avm_address,
    output wire [4:0] out_unnamed_maxpool2d13_maxpool2d_avm_burstcount,
    output wire [63:0] out_unnamed_maxpool2d13_maxpool2d_avm_byteenable,
    output wire [0:0] out_unnamed_maxpool2d13_maxpool2d_avm_enable,
    output wire [0:0] out_unnamed_maxpool2d13_maxpool2d_avm_read,
    output wire [0:0] out_unnamed_maxpool2d13_maxpool2d_avm_write,
    output wire [511:0] out_unnamed_maxpool2d13_maxpool2d_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_maxpool2d_B0_out_feedback_stall_out_0;
    wire [0:0] bb_maxpool2d_B0_out_intel_reserved_ffwd_0_0;
    wire [0:0] bb_maxpool2d_B0_out_intel_reserved_ffwd_1_0;
    wire [32:0] bb_maxpool2d_B0_out_intel_reserved_ffwd_2_0;
    wire [32:0] bb_maxpool2d_B0_out_intel_reserved_ffwd_3_0;
    wire [63:0] bb_maxpool2d_B0_out_intel_reserved_ffwd_4_0;
    wire [63:0] bb_maxpool2d_B0_out_intel_reserved_ffwd_5_0;
    wire [0:0] bb_maxpool2d_B0_out_stall_out_0;
    wire [0:0] bb_maxpool2d_B0_out_valid_out_0;
    wire [63:0] bb_maxpool2d_B1_out_c0_exe1;
    wire [63:0] bb_maxpool2d_B1_out_c0_exe2;
    wire [0:0] bb_maxpool2d_B1_out_c0_exe4;
    wire [0:0] bb_maxpool2d_B1_out_pipeline_valid_out;
    wire [0:0] bb_maxpool2d_B1_out_stall_out_0;
    wire [0:0] bb_maxpool2d_B1_out_stall_out_1;
    wire [0:0] bb_maxpool2d_B1_out_valid_in_0;
    wire [0:0] bb_maxpool2d_B1_out_valid_in_1;
    wire [0:0] bb_maxpool2d_B1_out_valid_out_0;
    wire [0:0] bb_maxpool2d_B10_out_c0_exe10340;
    wire [31:0] bb_maxpool2d_B10_out_c0_exe11341;
    wire [0:0] bb_maxpool2d_B10_out_c0_exe12342;
    wire [0:0] bb_maxpool2d_B10_out_c0_exe13343;
    wire [31:0] bb_maxpool2d_B10_out_c0_exe14344;
    wire [0:0] bb_maxpool2d_B10_out_c0_exe15345;
    wire [0:0] bb_maxpool2d_B10_out_c0_exe5335;
    wire [63:0] bb_maxpool2d_B10_out_c0_exe9339;
    wire [31:0] bb_maxpool2d_B10_out_c1_exe1;
    wire [0:0] bb_maxpool2d_B10_out_exiting_stall_out;
    wire [0:0] bb_maxpool2d_B10_out_exiting_valid_out;
    wire [30:0] bb_maxpool2d_B10_out_lm_maxpool2d_avm_address;
    wire [4:0] bb_maxpool2d_B10_out_lm_maxpool2d_avm_burstcount;
    wire [63:0] bb_maxpool2d_B10_out_lm_maxpool2d_avm_byteenable;
    wire [0:0] bb_maxpool2d_B10_out_lm_maxpool2d_avm_enable;
    wire [0:0] bb_maxpool2d_B10_out_lm_maxpool2d_avm_read;
    wire [0:0] bb_maxpool2d_B10_out_lm_maxpool2d_avm_write;
    wire [511:0] bb_maxpool2d_B10_out_lm_maxpool2d_avm_writedata;
    wire [0:0] bb_maxpool2d_B10_out_pipeline_valid_out;
    wire [0:0] bb_maxpool2d_B10_out_stall_in_0;
    wire [0:0] bb_maxpool2d_B10_out_stall_out_0;
    wire [0:0] bb_maxpool2d_B10_out_stall_out_1;
    wire [0:0] bb_maxpool2d_B10_out_valid_in_0;
    wire [0:0] bb_maxpool2d_B10_out_valid_in_1;
    wire [0:0] bb_maxpool2d_B10_out_valid_out_0;
    wire [0:0] bb_maxpool2d_B2_out_feedback_out_0;
    wire [0:0] bb_maxpool2d_B2_out_feedback_valid_out_0;
    wire [0:0] bb_maxpool2d_B2_out_stall_out_0;
    wire [0:0] bb_maxpool2d_B2_out_valid_out_0;
    wire [0:0] bb_maxpool2d_B3_out_c0_exe10;
    wire [31:0] bb_maxpool2d_B3_out_c0_exe1172;
    wire [31:0] bb_maxpool2d_B3_out_c0_exe2173;
    wire [0:0] bb_maxpool2d_B3_out_c0_exe4175;
    wire [63:0] bb_maxpool2d_B3_out_c0_exe5;
    wire [63:0] bb_maxpool2d_B3_out_c0_exe6;
    wire [0:0] bb_maxpool2d_B3_out_c0_exe7;
    wire [63:0] bb_maxpool2d_B3_out_c0_exe8;
    wire [63:0] bb_maxpool2d_B3_out_c0_exe9;
    wire [0:0] bb_maxpool2d_B3_out_exiting_stall_out;
    wire [0:0] bb_maxpool2d_B3_out_exiting_valid_out;
    wire [0:0] bb_maxpool2d_B3_out_pipeline_valid_out;
    wire [0:0] bb_maxpool2d_B3_out_stall_out_0;
    wire [0:0] bb_maxpool2d_B3_out_stall_out_1;
    wire [0:0] bb_maxpool2d_B3_out_valid_in_0;
    wire [0:0] bb_maxpool2d_B3_out_valid_in_1;
    wire [0:0] bb_maxpool2d_B3_out_valid_out_0;
    wire [0:0] bb_maxpool2d_B4_out_stall_in_0;
    wire [0:0] bb_maxpool2d_B4_out_stall_out_0;
    wire [0:0] bb_maxpool2d_B4_out_valid_out_0;
    wire [63:0] bb_maxpool2d_B5_out_c0_exe10205;
    wire [63:0] bb_maxpool2d_B5_out_c0_exe11;
    wire [0:0] bb_maxpool2d_B5_out_c0_exe12;
    wire [31:0] bb_maxpool2d_B5_out_c0_exe13;
    wire [31:0] bb_maxpool2d_B5_out_c0_exe14;
    wire [0:0] bb_maxpool2d_B5_out_c0_exe15;
    wire [63:0] bb_maxpool2d_B5_out_c0_exe16;
    wire [63:0] bb_maxpool2d_B5_out_c0_exe17;
    wire [0:0] bb_maxpool2d_B5_out_c0_exe18;
    wire [0:0] bb_maxpool2d_B5_out_c0_exe2197;
    wire [31:0] bb_maxpool2d_B5_out_c0_exe3198;
    wire [63:0] bb_maxpool2d_B5_out_c0_exe4199;
    wire [63:0] bb_maxpool2d_B5_out_c0_exe5200;
    wire [0:0] bb_maxpool2d_B5_out_c0_exe6201;
    wire [31:0] bb_maxpool2d_B5_out_c0_exe7202;
    wire [31:0] bb_maxpool2d_B5_out_c0_exe8203;
    wire [0:0] bb_maxpool2d_B5_out_c0_exe9204;
    wire [0:0] bb_maxpool2d_B5_out_exiting_stall_out;
    wire [0:0] bb_maxpool2d_B5_out_exiting_valid_out;
    wire [0:0] bb_maxpool2d_B5_out_pipeline_valid_out;
    wire [0:0] bb_maxpool2d_B5_out_stall_out_0;
    wire [0:0] bb_maxpool2d_B5_out_stall_out_1;
    wire [0:0] bb_maxpool2d_B5_out_valid_in_0;
    wire [0:0] bb_maxpool2d_B5_out_valid_in_1;
    wire [0:0] bb_maxpool2d_B5_out_valid_out_0;
    wire [0:0] bb_maxpool2d_B6_out_c0_exe103406;
    wire [0:0] bb_maxpool2d_B6_out_stall_in_0;
    wire [0:0] bb_maxpool2d_B6_out_stall_out_0;
    wire [0:0] bb_maxpool2d_B6_out_valid_out_0;
    wire [0:0] bb_maxpool2d_B7_out_c0_exe10255;
    wire [0:0] bb_maxpool2d_B7_out_c0_exe11256;
    wire [0:0] bb_maxpool2d_B7_out_c0_exe12257;
    wire [31:0] bb_maxpool2d_B7_out_c0_exe1246;
    wire [63:0] bb_maxpool2d_B7_out_c0_exe13258;
    wire [63:0] bb_maxpool2d_B7_out_c0_exe14259;
    wire [0:0] bb_maxpool2d_B7_out_c0_exe15260;
    wire [31:0] bb_maxpool2d_B7_out_c0_exe16261;
    wire [31:0] bb_maxpool2d_B7_out_c0_exe17262;
    wire [0:0] bb_maxpool2d_B7_out_c0_exe18263;
    wire [63:0] bb_maxpool2d_B7_out_c0_exe19;
    wire [63:0] bb_maxpool2d_B7_out_c0_exe20;
    wire [0:0] bb_maxpool2d_B7_out_c0_exe21;
    wire [0:0] bb_maxpool2d_B7_out_c0_exe22;
    wire [31:0] bb_maxpool2d_B7_out_c0_exe2247;
    wire [31:0] bb_maxpool2d_B7_out_c0_exe23;
    wire [63:0] bb_maxpool2d_B7_out_c0_exe24;
    wire [63:0] bb_maxpool2d_B7_out_c0_exe25;
    wire [0:0] bb_maxpool2d_B7_out_c0_exe26;
    wire [31:0] bb_maxpool2d_B7_out_c0_exe27;
    wire [31:0] bb_maxpool2d_B7_out_c0_exe28;
    wire [0:0] bb_maxpool2d_B7_out_c0_exe29;
    wire [31:0] bb_maxpool2d_B7_out_c0_exe3248;
    wire [0:0] bb_maxpool2d_B7_out_c0_exe4249;
    wire [0:0] bb_maxpool2d_B7_out_c0_exe5250;
    wire [63:0] bb_maxpool2d_B7_out_c0_exe6251;
    wire [63:0] bb_maxpool2d_B7_out_c0_exe7252;
    wire [0:0] bb_maxpool2d_B7_out_c0_exe8253;
    wire [31:0] bb_maxpool2d_B7_out_c0_exe9254;
    wire [0:0] bb_maxpool2d_B7_out_exiting_stall_out;
    wire [0:0] bb_maxpool2d_B7_out_exiting_valid_out;
    wire [0:0] bb_maxpool2d_B7_out_pipeline_valid_out;
    wire [0:0] bb_maxpool2d_B7_out_stall_out_0;
    wire [0:0] bb_maxpool2d_B7_out_stall_out_1;
    wire [0:0] bb_maxpool2d_B7_out_valid_in_0;
    wire [0:0] bb_maxpool2d_B7_out_valid_in_1;
    wire [0:0] bb_maxpool2d_B7_out_valid_out_0;
    wire [0:0] bb_maxpool2d_B8_out_c0_exe103407;
    wire [0:0] bb_maxpool2d_B8_out_c0_exe1234212;
    wire [0:0] bb_maxpool2d_B8_out_lsu_unnamed_maxpool2d13_o_active;
    wire [0:0] bb_maxpool2d_B8_out_stall_in_0;
    wire [0:0] bb_maxpool2d_B8_out_stall_out_0;
    wire [30:0] bb_maxpool2d_B8_out_unnamed_maxpool2d13_maxpool2d_avm_address;
    wire [4:0] bb_maxpool2d_B8_out_unnamed_maxpool2d13_maxpool2d_avm_burstcount;
    wire [63:0] bb_maxpool2d_B8_out_unnamed_maxpool2d13_maxpool2d_avm_byteenable;
    wire [0:0] bb_maxpool2d_B8_out_unnamed_maxpool2d13_maxpool2d_avm_enable;
    wire [0:0] bb_maxpool2d_B8_out_unnamed_maxpool2d13_maxpool2d_avm_read;
    wire [0:0] bb_maxpool2d_B8_out_unnamed_maxpool2d13_maxpool2d_avm_write;
    wire [511:0] bb_maxpool2d_B8_out_unnamed_maxpool2d13_maxpool2d_avm_writedata;
    wire [0:0] bb_maxpool2d_B8_out_valid_out_0;
    wire [0:0] bb_maxpool2d_B9_out_c0_exe103408;
    wire [31:0] bb_maxpool2d_B9_out_c0_exe1134110;
    wire [0:0] bb_maxpool2d_B9_out_c0_exe1234213;
    wire [0:0] bb_maxpool2d_B9_out_c0_exe1334315;
    wire [31:0] bb_maxpool2d_B9_out_c0_exe1434417;
    wire [0:0] bb_maxpool2d_B9_out_c0_exe53352;
    wire [63:0] bb_maxpool2d_B9_out_c0_exe93394;
    wire [31:0] bb_maxpool2d_B9_out_c1_exe120;
    wire [0:0] bb_maxpool2d_B9_out_stall_in_0;
    wire [0:0] bb_maxpool2d_B9_out_stall_out_0;
    wire [0:0] bb_maxpool2d_B9_out_valid_out_0;
    wire [63:0] c_float_addrspace_1024_undef108_q;
    wire [1:0] c_i2_0168_q;
    wire [31:0] c_i32_undef114_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going16_maxpool2d2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going16_maxpool2d2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going16_maxpool2d2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going16_maxpool2d2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going20_maxpool2d2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going20_maxpool2d2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going20_maxpool2d2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going20_maxpool2d2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going24_maxpool2d2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going24_maxpool2d2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going24_maxpool2d2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going24_maxpool2d2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_maxpool2d2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_maxpool2d2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_maxpool2d2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_maxpool2d2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_maxpool2d9_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_maxpool2d9_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_maxpool2d9_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_maxpool2d9_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_maxpool2d0_out_o_stall;
    wire [0:0] loop_limiter_maxpool2d0_out_o_valid;
    wire [0:0] loop_limiter_maxpool2d1_out_o_stall;
    wire [0:0] loop_limiter_maxpool2d1_out_o_valid;
    wire [0:0] loop_limiter_maxpool2d2_out_o_stall;
    wire [0:0] loop_limiter_maxpool2d2_out_o_valid;
    wire [0:0] loop_limiter_maxpool2d3_out_o_stall;
    wire [0:0] loop_limiter_maxpool2d3_out_o_valid;
    wire [0:0] maxpool2d_B1_x_i_capture;
    wire maxpool2d_B1_x_i_capture_bitsignaltemp;
    wire [0:0] maxpool2d_B1_x_i_clear;
    wire maxpool2d_B1_x_i_clear_bitsignaltemp;
    wire [0:0] maxpool2d_B1_x_i_enable;
    wire maxpool2d_B1_x_i_enable_bitsignaltemp;
    wire [0:0] maxpool2d_B1_x_i_shift;
    wire maxpool2d_B1_x_i_shift_bitsignaltemp;
    wire [0:0] maxpool2d_B1_x_i_stall_pred;
    wire maxpool2d_B1_x_i_stall_pred_bitsignaltemp;
    wire [0:0] maxpool2d_B1_x_i_stall_succ;
    wire maxpool2d_B1_x_i_stall_succ_bitsignaltemp;
    wire [0:0] maxpool2d_B1_x_i_valid_loop;
    wire maxpool2d_B1_x_i_valid_loop_bitsignaltemp;
    wire [0:0] maxpool2d_B1_x_i_valid_pred;
    wire maxpool2d_B1_x_i_valid_pred_bitsignaltemp;
    wire [0:0] maxpool2d_B1_x_i_valid_succ;
    wire maxpool2d_B1_x_i_valid_succ_bitsignaltemp;
    wire [0:0] maxpool2d_B10_x_i_capture;
    wire maxpool2d_B10_x_i_capture_bitsignaltemp;
    wire [0:0] maxpool2d_B10_x_i_clear;
    wire maxpool2d_B10_x_i_clear_bitsignaltemp;
    wire [0:0] maxpool2d_B10_x_i_enable;
    wire maxpool2d_B10_x_i_enable_bitsignaltemp;
    wire [0:0] maxpool2d_B10_x_i_shift;
    wire maxpool2d_B10_x_i_shift_bitsignaltemp;
    wire [0:0] maxpool2d_B10_x_i_stall_pred;
    wire maxpool2d_B10_x_i_stall_pred_bitsignaltemp;
    wire [0:0] maxpool2d_B10_x_i_stall_succ;
    wire maxpool2d_B10_x_i_stall_succ_bitsignaltemp;
    wire [0:0] maxpool2d_B10_x_i_valid_loop;
    wire maxpool2d_B10_x_i_valid_loop_bitsignaltemp;
    wire [0:0] maxpool2d_B10_x_i_valid_pred;
    wire maxpool2d_B10_x_i_valid_pred_bitsignaltemp;
    wire [0:0] maxpool2d_B10_x_i_valid_succ;
    wire maxpool2d_B10_x_i_valid_succ_bitsignaltemp;
    wire [0:0] maxpool2d_B3_x_i_capture;
    wire maxpool2d_B3_x_i_capture_bitsignaltemp;
    wire [0:0] maxpool2d_B3_x_i_clear;
    wire maxpool2d_B3_x_i_clear_bitsignaltemp;
    wire [0:0] maxpool2d_B3_x_i_enable;
    wire maxpool2d_B3_x_i_enable_bitsignaltemp;
    wire [0:0] maxpool2d_B3_x_i_shift;
    wire maxpool2d_B3_x_i_shift_bitsignaltemp;
    wire [0:0] maxpool2d_B3_x_i_stall_pred;
    wire maxpool2d_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] maxpool2d_B3_x_i_stall_succ;
    wire maxpool2d_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] maxpool2d_B3_x_i_valid_loop;
    wire maxpool2d_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] maxpool2d_B3_x_i_valid_pred;
    wire maxpool2d_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] maxpool2d_B3_x_i_valid_succ;
    wire maxpool2d_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] maxpool2d_B5_x_i_capture;
    wire maxpool2d_B5_x_i_capture_bitsignaltemp;
    wire [0:0] maxpool2d_B5_x_i_clear;
    wire maxpool2d_B5_x_i_clear_bitsignaltemp;
    wire [0:0] maxpool2d_B5_x_i_enable;
    wire maxpool2d_B5_x_i_enable_bitsignaltemp;
    wire [0:0] maxpool2d_B5_x_i_shift;
    wire maxpool2d_B5_x_i_shift_bitsignaltemp;
    wire [0:0] maxpool2d_B5_x_i_stall_pred;
    wire maxpool2d_B5_x_i_stall_pred_bitsignaltemp;
    wire [0:0] maxpool2d_B5_x_i_stall_succ;
    wire maxpool2d_B5_x_i_stall_succ_bitsignaltemp;
    wire [0:0] maxpool2d_B5_x_i_valid_loop;
    wire maxpool2d_B5_x_i_valid_loop_bitsignaltemp;
    wire [0:0] maxpool2d_B5_x_i_valid_pred;
    wire maxpool2d_B5_x_i_valid_pred_bitsignaltemp;
    wire [0:0] maxpool2d_B5_x_i_valid_succ;
    wire maxpool2d_B5_x_i_valid_succ_bitsignaltemp;
    wire [0:0] maxpool2d_B7_x_i_capture;
    wire maxpool2d_B7_x_i_capture_bitsignaltemp;
    wire [0:0] maxpool2d_B7_x_i_clear;
    wire maxpool2d_B7_x_i_clear_bitsignaltemp;
    wire [0:0] maxpool2d_B7_x_i_enable;
    wire maxpool2d_B7_x_i_enable_bitsignaltemp;
    wire [0:0] maxpool2d_B7_x_i_shift;
    wire maxpool2d_B7_x_i_shift_bitsignaltemp;
    wire [0:0] maxpool2d_B7_x_i_stall_pred;
    wire maxpool2d_B7_x_i_stall_pred_bitsignaltemp;
    wire [0:0] maxpool2d_B7_x_i_stall_succ;
    wire maxpool2d_B7_x_i_stall_succ_bitsignaltemp;
    wire [0:0] maxpool2d_B7_x_i_valid_loop;
    wire maxpool2d_B7_x_i_valid_loop_bitsignaltemp;
    wire [0:0] maxpool2d_B7_x_i_valid_pred;
    wire maxpool2d_B7_x_i_valid_pred_bitsignaltemp;
    wire [0:0] maxpool2d_B7_x_i_valid_succ;
    wire maxpool2d_B7_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [63:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [63:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [63:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [63:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [31:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [31:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [0:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [0:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_18_tpl;
    wire [31:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_19_tpl;
    wire [31:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_20_tpl;
    wire [31:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_21_tpl;
    wire [0:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_22_tpl;
    wire [0:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_23_tpl;
    wire [63:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_24_tpl;
    wire [63:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_25_tpl;
    wire [0:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_26_tpl;
    wire [31:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_27_tpl;
    wire [0:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_28_tpl;
    wire [0:0] bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_29_tpl;
    wire [0:0] bb_maxpool2d_B1_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_maxpool2d_B1_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_maxpool2d_B1_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_maxpool2d_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_maxpool2d_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_maxpool2d_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_maxpool2d_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_maxpool2d_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_maxpool2d_B4_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_maxpool2d_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_maxpool2d_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_maxpool2d_B5_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [63:0] bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [63:0] bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_maxpool2d_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_maxpool2d_B6_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_maxpool2d_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_maxpool2d_B6_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_maxpool2d_B7_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_maxpool2d_B7_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [63:0] bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [63:0] bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [63:0] bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [63:0] bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [31:0] bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [31:0] bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [0:0] bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [0:0] bb_maxpool2d_B8_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_maxpool2d_B8_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_maxpool2d_B8_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_maxpool2d_B8_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_maxpool2d_B8_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_maxpool2d_B8_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_maxpool2d_B8_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_maxpool2d_B8_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_maxpool2d_B8_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_maxpool2d_B8_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_maxpool2d_B9_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_maxpool2d_B9_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_maxpool2d_B9_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_maxpool2d_B9_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_maxpool2d_B9_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_maxpool2d_B9_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_maxpool2d_B9_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_maxpool2d_B9_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_maxpool2d_B9_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_maxpool2d_B9_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_maxpool2d_B9_sr_0_aunroll_x_out_o_data_8_tpl;


    // c_i2_0168(CONSTANT,86)
    assign c_i2_0168_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going28_maxpool2d2_valid_fifo(BLACKBOX,114)
    maxpool2d_i_llvm_fpga_pipeline_keep_going28_2_valid_fifo thei_llvm_fpga_pipeline_keep_going28_maxpool2d2_valid_fifo (
        .in_data_in(c_i2_0168_q),
        .in_stall_in(bb_maxpool2d_B1_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going28_maxpool2d2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going28_maxpool2d2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going28_maxpool2d2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going24_maxpool2d2_valid_fifo(BLACKBOX,112)
    maxpool2d_i_llvm_fpga_pipeline_keep_going24_2_valid_fifo thei_llvm_fpga_pipeline_keep_going24_maxpool2d2_valid_fifo (
        .in_data_in(c_i2_0168_q),
        .in_stall_in(bb_maxpool2d_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going24_maxpool2d2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going24_maxpool2d2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going24_maxpool2d2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going20_maxpool2d2_valid_fifo(BLACKBOX,110)
    maxpool2d_i_llvm_fpga_pipeline_keep_going20_2_valid_fifo thei_llvm_fpga_pipeline_keep_going20_maxpool2d2_valid_fifo (
        .in_data_in(c_i2_0168_q),
        .in_stall_in(bb_maxpool2d_B5_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going20_maxpool2d2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going20_maxpool2d2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going20_maxpool2d2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going16_maxpool2d2_valid_fifo(BLACKBOX,108)
    maxpool2d_i_llvm_fpga_pipeline_keep_going16_2_valid_fifo thei_llvm_fpga_pipeline_keep_going16_maxpool2d2_valid_fifo (
        .in_data_in(c_i2_0168_q),
        .in_stall_in(bb_maxpool2d_B7_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going16_maxpool2d2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going16_maxpool2d2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going16_maxpool2d2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_maxpool2d9_valid_fifo(BLACKBOX,116)
    maxpool2d_i_llvm_fpga_pipeline_keep_going_9_valid_fifo thei_llvm_fpga_pipeline_keep_going_maxpool2d9_valid_fifo (
        .in_data_in(c_i2_0168_q),
        .in_stall_in(bb_maxpool2d_B10_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_maxpool2d9_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_maxpool2d9_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_maxpool2d9_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B4_sr_0_aunroll_x(BLACKBOX,169)
    maxpool2d_bb_B4_sr_0 thebb_maxpool2d_B4_sr_0_aunroll_x (
        .in_i_stall(bb_maxpool2d_B4_out_stall_out_0),
        .in_i_valid(bb_maxpool2d_B6_out_valid_out_0),
        .in_i_data_0_tpl(bb_maxpool2d_B6_out_c0_exe103406),
        .out_o_stall(bb_maxpool2d_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_maxpool2d_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_maxpool2d_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B6(BLACKBOX,9)
    maxpool2d_bb_B6 thebb_maxpool2d_B6 (
        .in_c0_exe103406_0(bb_maxpool2d_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe1234211_0(bb_maxpool2d_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_input_size(in_arg_input_size),
        .in_output_size(in_arg_output_size),
        .in_stall_in_0(bb_maxpool2d_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_maxpool2d_B6_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe103406(bb_maxpool2d_B6_out_c0_exe103406),
        .out_stall_in_0(bb_maxpool2d_B6_out_stall_in_0),
        .out_stall_out_0(bb_maxpool2d_B6_out_stall_out_0),
        .out_valid_out_0(bb_maxpool2d_B6_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B6_sr_0_aunroll_x(BLACKBOX,171)
    maxpool2d_bb_B6_sr_0 thebb_maxpool2d_B6_sr_0_aunroll_x (
        .in_i_stall(bb_maxpool2d_B6_out_stall_out_0),
        .in_i_valid(bb_maxpool2d_B8_out_valid_out_0),
        .in_i_data_0_tpl(bb_maxpool2d_B8_out_c0_exe103407),
        .in_i_data_1_tpl(bb_maxpool2d_B8_out_c0_exe1234212),
        .out_o_stall(bb_maxpool2d_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_maxpool2d_B6_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_maxpool2d_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_maxpool2d_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B8(BLACKBOX,11)
    maxpool2d_bb_B8 thebb_maxpool2d_B8 (
        .in_c0_exe103407_0(bb_maxpool2d_B8_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe113419_0(bb_maxpool2d_B8_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe1234212_0(bb_maxpool2d_B8_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe1334314_0(bb_maxpool2d_B8_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe1434416_0(bb_maxpool2d_B8_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe53351_0(bb_maxpool2d_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe93393_0(bb_maxpool2d_B8_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c1_exe119_0(bb_maxpool2d_B8_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_flush(in_start),
        .in_input_size(in_arg_input_size),
        .in_output_size(in_arg_output_size),
        .in_stall_in_0(bb_maxpool2d_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_maxpool2d13_maxpool2d_avm_readdata(in_unnamed_maxpool2d13_maxpool2d_avm_readdata),
        .in_unnamed_maxpool2d13_maxpool2d_avm_readdatavalid(in_unnamed_maxpool2d13_maxpool2d_avm_readdatavalid),
        .in_unnamed_maxpool2d13_maxpool2d_avm_waitrequest(in_unnamed_maxpool2d13_maxpool2d_avm_waitrequest),
        .in_unnamed_maxpool2d13_maxpool2d_avm_writeack(in_unnamed_maxpool2d13_maxpool2d_avm_writeack),
        .in_valid_in_0(bb_maxpool2d_B8_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe103407(bb_maxpool2d_B8_out_c0_exe103407),
        .out_c0_exe1234212(bb_maxpool2d_B8_out_c0_exe1234212),
        .out_lsu_unnamed_maxpool2d13_o_active(bb_maxpool2d_B8_out_lsu_unnamed_maxpool2d13_o_active),
        .out_stall_in_0(bb_maxpool2d_B8_out_stall_in_0),
        .out_stall_out_0(bb_maxpool2d_B8_out_stall_out_0),
        .out_unnamed_maxpool2d13_maxpool2d_avm_address(bb_maxpool2d_B8_out_unnamed_maxpool2d13_maxpool2d_avm_address),
        .out_unnamed_maxpool2d13_maxpool2d_avm_burstcount(bb_maxpool2d_B8_out_unnamed_maxpool2d13_maxpool2d_avm_burstcount),
        .out_unnamed_maxpool2d13_maxpool2d_avm_byteenable(bb_maxpool2d_B8_out_unnamed_maxpool2d13_maxpool2d_avm_byteenable),
        .out_unnamed_maxpool2d13_maxpool2d_avm_enable(bb_maxpool2d_B8_out_unnamed_maxpool2d13_maxpool2d_avm_enable),
        .out_unnamed_maxpool2d13_maxpool2d_avm_read(bb_maxpool2d_B8_out_unnamed_maxpool2d13_maxpool2d_avm_read),
        .out_unnamed_maxpool2d13_maxpool2d_avm_write(bb_maxpool2d_B8_out_unnamed_maxpool2d13_maxpool2d_avm_write),
        .out_unnamed_maxpool2d13_maxpool2d_avm_writedata(bb_maxpool2d_B8_out_unnamed_maxpool2d13_maxpool2d_avm_writedata),
        .out_valid_out_0(bb_maxpool2d_B8_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B8_sr_0_aunroll_x(BLACKBOX,173)
    maxpool2d_bb_B8_sr_0 thebb_maxpool2d_B8_sr_0_aunroll_x (
        .in_i_stall(bb_maxpool2d_B8_out_stall_out_0),
        .in_i_valid(bb_maxpool2d_B9_out_valid_out_0),
        .in_i_data_0_tpl(bb_maxpool2d_B9_out_c0_exe53352),
        .in_i_data_1_tpl(bb_maxpool2d_B9_out_c0_exe93394),
        .in_i_data_2_tpl(bb_maxpool2d_B9_out_c0_exe103408),
        .in_i_data_3_tpl(bb_maxpool2d_B9_out_c0_exe1134110),
        .in_i_data_4_tpl(bb_maxpool2d_B9_out_c0_exe1234213),
        .in_i_data_5_tpl(bb_maxpool2d_B9_out_c0_exe1334315),
        .in_i_data_6_tpl(bb_maxpool2d_B9_out_c0_exe1434417),
        .in_i_data_7_tpl(bb_maxpool2d_B9_out_c1_exe120),
        .out_o_stall(bb_maxpool2d_B8_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_maxpool2d_B8_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_maxpool2d_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_maxpool2d_B8_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_maxpool2d_B8_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_maxpool2d_B8_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_maxpool2d_B8_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_maxpool2d_B8_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_maxpool2d_B8_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_maxpool2d_B8_sr_0_aunroll_x_out_o_data_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B9(BLACKBOX,12)
    maxpool2d_bb_B9 thebb_maxpool2d_B9 (
        .in_c0_exe103408_0(bb_maxpool2d_B9_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe1134110_0(bb_maxpool2d_B9_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe1234213_0(bb_maxpool2d_B9_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe1334315_0(bb_maxpool2d_B9_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe1434417_0(bb_maxpool2d_B9_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe1534518_0(bb_maxpool2d_B9_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe53352_0(bb_maxpool2d_B9_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe93394_0(bb_maxpool2d_B9_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c1_exe120_0(bb_maxpool2d_B9_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_input_size(in_arg_input_size),
        .in_output_size(in_arg_output_size),
        .in_stall_in_0(bb_maxpool2d_B8_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_maxpool2d_B9_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe103408(bb_maxpool2d_B9_out_c0_exe103408),
        .out_c0_exe1134110(bb_maxpool2d_B9_out_c0_exe1134110),
        .out_c0_exe1234213(bb_maxpool2d_B9_out_c0_exe1234213),
        .out_c0_exe1334315(bb_maxpool2d_B9_out_c0_exe1334315),
        .out_c0_exe1434417(bb_maxpool2d_B9_out_c0_exe1434417),
        .out_c0_exe53352(bb_maxpool2d_B9_out_c0_exe53352),
        .out_c0_exe93394(bb_maxpool2d_B9_out_c0_exe93394),
        .out_c1_exe120(bb_maxpool2d_B9_out_c1_exe120),
        .out_stall_in_0(bb_maxpool2d_B9_out_stall_in_0),
        .out_stall_out_0(bb_maxpool2d_B9_out_stall_out_0),
        .out_valid_out_0(bb_maxpool2d_B9_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B9_sr_0_aunroll_x(BLACKBOX,174)
    maxpool2d_bb_B9_sr_0 thebb_maxpool2d_B9_sr_0_aunroll_x (
        .in_i_stall(bb_maxpool2d_B9_out_stall_out_0),
        .in_i_valid(bb_maxpool2d_B10_out_valid_out_0),
        .in_i_data_0_tpl(bb_maxpool2d_B10_out_c0_exe5335),
        .in_i_data_1_tpl(bb_maxpool2d_B10_out_c0_exe9339),
        .in_i_data_2_tpl(bb_maxpool2d_B10_out_c0_exe10340),
        .in_i_data_3_tpl(bb_maxpool2d_B10_out_c0_exe11341),
        .in_i_data_4_tpl(bb_maxpool2d_B10_out_c0_exe12342),
        .in_i_data_5_tpl(bb_maxpool2d_B10_out_c0_exe13343),
        .in_i_data_6_tpl(bb_maxpool2d_B10_out_c0_exe14344),
        .in_i_data_7_tpl(bb_maxpool2d_B10_out_c0_exe15345),
        .in_i_data_8_tpl(bb_maxpool2d_B10_out_c1_exe1),
        .out_o_stall(bb_maxpool2d_B9_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_maxpool2d_B9_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_maxpool2d_B9_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_maxpool2d_B9_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_maxpool2d_B9_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_maxpool2d_B9_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_maxpool2d_B9_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_maxpool2d_B9_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_maxpool2d_B9_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_maxpool2d_B9_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_maxpool2d_B9_sr_0_aunroll_x_out_o_data_8_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_maxpool2d9_sr(BLACKBOX,115)
    maxpool2d_i_llvm_fpga_pipeline_keep_going_9_sr thei_llvm_fpga_pipeline_keep_going_maxpool2d9_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_maxpool2d9_valid_fifo_out_stall_out),
        .in_i_valid(bb_maxpool2d_B10_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_maxpool2d9_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_maxpool2d9_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B10(BLACKBOX,4)
    maxpool2d_bb_B10 thebb_maxpool2d_B10 (
        .in_add19140_0(c_i32_undef114_q),
        .in_add19140_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_21_tpl),
        .in_flush(in_start),
        .in_forked13_0(GND_q),
        .in_forked13_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_forked31137_0(GND_q),
        .in_forked31137_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_input_im_addr_041_replace_phi36_pop17106_0(c_float_addrspace_1024_undef108_q),
        .in_input_im_addr_041_replace_phi36_pop17106_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_input_im_addr_041_replace_phi37_pop22124_0(c_float_addrspace_1024_undef108_q),
        .in_input_im_addr_041_replace_phi37_pop22124_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_input_im_addr_041_replace_phi38_pop30143_0(c_float_addrspace_1024_undef108_q),
        .in_input_im_addr_041_replace_phi38_pop30143_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_25_tpl),
        .in_input_im_addr_041_replace_phi73_0(c_float_addrspace_1024_undef108_q),
        .in_input_im_addr_041_replace_phi73_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_input_size(in_arg_input_size),
        .in_intel_reserved_ffwd_1_0(bb_maxpool2d_B0_out_intel_reserved_ffwd_1_0),
        .in_j_034_pop20118_0(c_i32_undef114_q),
        .in_j_034_pop20118_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_j_034_pop2055_pop36138_0(c_i32_undef114_q),
        .in_j_034_pop2055_pop36138_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_19_tpl),
        .in_lm_maxpool2d_avm_readdata(in_lm_maxpool2d_avm_readdata),
        .in_lm_maxpool2d_avm_readdatavalid(in_lm_maxpool2d_avm_readdatavalid),
        .in_lm_maxpool2d_avm_waitrequest(in_lm_maxpool2d_avm_waitrequest),
        .in_lm_maxpool2d_avm_writeack(in_lm_maxpool2d_avm_writeack),
        .in_mul2547_pop25133_0(c_i32_undef114_q),
        .in_mul2547_pop25133_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_mul2548_pop33145_0(c_i32_undef114_q),
        .in_mul2548_pop33145_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_27_tpl),
        .in_mul2591_0(c_i32_undef114_q),
        .in_mul2591_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_mul44_pop24130_0(c_i32_undef114_q),
        .in_mul44_pop24130_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_mul45_pop32139_0(c_i32_undef114_q),
        .in_mul45_pop32139_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_20_tpl),
        .in_mul86_0(c_i32_undef114_q),
        .in_mul86_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_notcmp14141_0(GND_q),
        .in_notcmp14141_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_23_tpl),
        .in_notcmp19115_0(GND_q),
        .in_notcmp19115_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_notcmp1953_pop35147_0(GND_q),
        .in_notcmp1953_pop35147_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_29_tpl),
        .in_notcmp2350_pop26136_0(GND_q),
        .in_notcmp2350_pop26136_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_notcmp2351_pop34146_0(GND_q),
        .in_notcmp2351_pop34146_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_28_tpl),
        .in_notcmp2396_0(GND_q),
        .in_notcmp2396_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_notcmp2740_pop18111_0(GND_q),
        .in_notcmp2740_pop18111_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_notcmp2741_pop23127_0(GND_q),
        .in_notcmp2741_pop23127_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_notcmp2742_pop31144_0(GND_q),
        .in_notcmp2742_pop31144_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_26_tpl),
        .in_notcmp2780_0(GND_q),
        .in_notcmp2780_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_output_im_addr_042_replace_phi32_pop16101_0(c_float_addrspace_1024_undef108_q),
        .in_output_im_addr_042_replace_phi32_pop16101_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_output_im_addr_042_replace_phi33_pop21121_0(c_float_addrspace_1024_undef108_q),
        .in_output_im_addr_042_replace_phi33_pop21121_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_output_im_addr_042_replace_phi34_pop29142_0(c_float_addrspace_1024_undef108_q),
        .in_output_im_addr_042_replace_phi34_pop29142_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_24_tpl),
        .in_output_im_addr_042_replace_phi66_0(c_float_addrspace_1024_undef108_q),
        .in_output_im_addr_042_replace_phi66_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_output_size(in_arg_output_size),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_maxpool2d9_sr_out_o_stall),
        .in_stall_in_0(bb_maxpool2d_B9_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_maxpool2d14_0(GND_q),
        .in_unnamed_maxpool2d14_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_22_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_maxpool2d9_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10340(bb_maxpool2d_B10_out_c0_exe10340),
        .out_c0_exe11341(bb_maxpool2d_B10_out_c0_exe11341),
        .out_c0_exe12342(bb_maxpool2d_B10_out_c0_exe12342),
        .out_c0_exe13343(bb_maxpool2d_B10_out_c0_exe13343),
        .out_c0_exe14344(bb_maxpool2d_B10_out_c0_exe14344),
        .out_c0_exe15345(bb_maxpool2d_B10_out_c0_exe15345),
        .out_c0_exe5335(bb_maxpool2d_B10_out_c0_exe5335),
        .out_c0_exe9339(bb_maxpool2d_B10_out_c0_exe9339),
        .out_c1_exe1(bb_maxpool2d_B10_out_c1_exe1),
        .out_exiting_stall_out(bb_maxpool2d_B10_out_exiting_stall_out),
        .out_exiting_valid_out(bb_maxpool2d_B10_out_exiting_valid_out),
        .out_lm_maxpool2d_avm_address(bb_maxpool2d_B10_out_lm_maxpool2d_avm_address),
        .out_lm_maxpool2d_avm_burstcount(bb_maxpool2d_B10_out_lm_maxpool2d_avm_burstcount),
        .out_lm_maxpool2d_avm_byteenable(bb_maxpool2d_B10_out_lm_maxpool2d_avm_byteenable),
        .out_lm_maxpool2d_avm_enable(bb_maxpool2d_B10_out_lm_maxpool2d_avm_enable),
        .out_lm_maxpool2d_avm_read(bb_maxpool2d_B10_out_lm_maxpool2d_avm_read),
        .out_lm_maxpool2d_avm_write(bb_maxpool2d_B10_out_lm_maxpool2d_avm_write),
        .out_lm_maxpool2d_avm_writedata(bb_maxpool2d_B10_out_lm_maxpool2d_avm_writedata),
        .out_pipeline_valid_out(bb_maxpool2d_B10_out_pipeline_valid_out),
        .out_stall_in_0(bb_maxpool2d_B10_out_stall_in_0),
        .out_stall_out_0(bb_maxpool2d_B10_out_stall_out_0),
        .out_stall_out_1(bb_maxpool2d_B10_out_stall_out_1),
        .out_valid_in_0(bb_maxpool2d_B10_out_valid_in_0),
        .out_valid_in_1(bb_maxpool2d_B10_out_valid_in_1),
        .out_valid_out_0(bb_maxpool2d_B10_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B10_sr_1_aunroll_x(BLACKBOX,165)
    maxpool2d_bb_B10_sr_1 thebb_maxpool2d_B10_sr_1_aunroll_x (
        .in_i_stall(bb_maxpool2d_B10_out_stall_out_1),
        .in_i_valid(loop_limiter_maxpool2d3_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_maxpool2d_B7_out_c0_exe13258),
        .in_i_data_2_tpl(bb_maxpool2d_B7_out_c0_exe14259),
        .in_i_data_3_tpl(bb_maxpool2d_B7_out_c0_exe15260),
        .in_i_data_4_tpl(bb_maxpool2d_B7_out_c0_exe16261),
        .in_i_data_5_tpl(bb_maxpool2d_B7_out_c0_exe17262),
        .in_i_data_6_tpl(bb_maxpool2d_B7_out_c0_exe18263),
        .in_i_data_7_tpl(bb_maxpool2d_B7_out_c0_exe19),
        .in_i_data_8_tpl(bb_maxpool2d_B7_out_c0_exe20),
        .in_i_data_9_tpl(bb_maxpool2d_B7_out_c0_exe21),
        .in_i_data_10_tpl(bb_maxpool2d_B7_out_c0_exe22),
        .in_i_data_11_tpl(bb_maxpool2d_B7_out_c0_exe23),
        .in_i_data_12_tpl(bb_maxpool2d_B7_out_c0_exe24),
        .in_i_data_13_tpl(bb_maxpool2d_B7_out_c0_exe25),
        .in_i_data_14_tpl(bb_maxpool2d_B7_out_c0_exe26),
        .in_i_data_15_tpl(bb_maxpool2d_B7_out_c0_exe27),
        .in_i_data_16_tpl(bb_maxpool2d_B7_out_c0_exe28),
        .in_i_data_17_tpl(bb_maxpool2d_B7_out_c0_exe29),
        .in_i_data_18_tpl(bb_maxpool2d_B7_out_c0_exe12257),
        .in_i_data_19_tpl(bb_maxpool2d_B7_out_c0_exe1246),
        .in_i_data_20_tpl(bb_maxpool2d_B7_out_c0_exe2247),
        .in_i_data_21_tpl(bb_maxpool2d_B7_out_c0_exe3248),
        .in_i_data_22_tpl(bb_maxpool2d_B7_out_c0_exe4249),
        .in_i_data_23_tpl(bb_maxpool2d_B7_out_c0_exe5250),
        .in_i_data_24_tpl(bb_maxpool2d_B7_out_c0_exe6251),
        .in_i_data_25_tpl(bb_maxpool2d_B7_out_c0_exe7252),
        .in_i_data_26_tpl(bb_maxpool2d_B7_out_c0_exe8253),
        .in_i_data_27_tpl(bb_maxpool2d_B7_out_c0_exe9254),
        .in_i_data_28_tpl(bb_maxpool2d_B7_out_c0_exe10255),
        .in_i_data_29_tpl(bb_maxpool2d_B7_out_c0_exe11256),
        .out_o_stall(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_21_tpl),
        .out_o_data_22_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_22_tpl),
        .out_o_data_23_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_23_tpl),
        .out_o_data_24_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_24_tpl),
        .out_o_data_25_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_25_tpl),
        .out_o_data_26_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_26_tpl),
        .out_o_data_27_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_27_tpl),
        .out_o_data_28_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_28_tpl),
        .out_o_data_29_tpl(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_data_29_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_maxpool2d3(BLACKBOX,142)
    maxpool2d_loop_limiter_3 theloop_limiter_maxpool2d3 (
        .in_i_stall(bb_maxpool2d_B10_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_maxpool2d_B10_out_exiting_stall_out),
        .in_i_valid(bb_maxpool2d_B7_out_valid_out_0),
        .in_i_valid_exit(bb_maxpool2d_B10_out_exiting_valid_out),
        .out_o_stall(loop_limiter_maxpool2d3_out_o_stall),
        .out_o_valid(loop_limiter_maxpool2d3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going16_maxpool2d2_sr(BLACKBOX,107)
    maxpool2d_i_llvm_fpga_pipeline_keep_going16_2_sr thei_llvm_fpga_pipeline_keep_going16_maxpool2d2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going16_maxpool2d2_valid_fifo_out_stall_out),
        .in_i_valid(bb_maxpool2d_B7_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going16_maxpool2d2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going16_maxpool2d2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B7(BLACKBOX,10)
    maxpool2d_bb_B7 thebb_maxpool2d_B7 (
        .in_forked31_0(GND_q),
        .in_forked31_1(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_input_im_addr_041_replace_phi36_pop17107_0(c_float_addrspace_1024_undef108_q),
        .in_input_im_addr_041_replace_phi36_pop17107_1(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_input_im_addr_041_replace_phi37_pop22122_0(c_float_addrspace_1024_undef108_q),
        .in_input_im_addr_041_replace_phi37_pop22122_1(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_input_im_addr_041_replace_phi74_0(c_float_addrspace_1024_undef108_q),
        .in_input_im_addr_041_replace_phi74_1(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_input_size(in_arg_input_size),
        .in_intel_reserved_ffwd_1_0(bb_maxpool2d_B0_out_intel_reserved_ffwd_1_0),
        .in_j_034_pop20116_0(c_i32_undef114_q),
        .in_j_034_pop20116_1(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_mul2547_pop25131_0(c_i32_undef114_q),
        .in_mul2547_pop25131_1(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_mul2592_0(c_i32_undef114_q),
        .in_mul2592_1(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_mul44_pop24128_0(c_i32_undef114_q),
        .in_mul44_pop24128_1(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_mul87_0(c_i32_undef114_q),
        .in_mul87_1(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_notcmp19113_0(GND_q),
        .in_notcmp19113_1(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_notcmp2350_pop26134_0(GND_q),
        .in_notcmp2350_pop26134_1(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_notcmp2397_0(GND_q),
        .in_notcmp2397_1(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_notcmp2740_pop18112_0(GND_q),
        .in_notcmp2740_pop18112_1(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_notcmp2741_pop23125_0(GND_q),
        .in_notcmp2741_pop23125_1(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_notcmp2781_0(GND_q),
        .in_notcmp2781_1(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_output_im_addr_042_replace_phi32_pop16102_0(c_float_addrspace_1024_undef108_q),
        .in_output_im_addr_042_replace_phi32_pop16102_1(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_output_im_addr_042_replace_phi33_pop21119_0(c_float_addrspace_1024_undef108_q),
        .in_output_im_addr_042_replace_phi33_pop21119_1(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_output_im_addr_042_replace_phi67_0(c_float_addrspace_1024_undef108_q),
        .in_output_im_addr_042_replace_phi67_1(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_output_size(in_arg_output_size),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going16_maxpool2d2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_maxpool2d3_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going16_maxpool2d2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10255(bb_maxpool2d_B7_out_c0_exe10255),
        .out_c0_exe11256(bb_maxpool2d_B7_out_c0_exe11256),
        .out_c0_exe12257(bb_maxpool2d_B7_out_c0_exe12257),
        .out_c0_exe1246(bb_maxpool2d_B7_out_c0_exe1246),
        .out_c0_exe13258(bb_maxpool2d_B7_out_c0_exe13258),
        .out_c0_exe14259(bb_maxpool2d_B7_out_c0_exe14259),
        .out_c0_exe15260(bb_maxpool2d_B7_out_c0_exe15260),
        .out_c0_exe16261(bb_maxpool2d_B7_out_c0_exe16261),
        .out_c0_exe17262(bb_maxpool2d_B7_out_c0_exe17262),
        .out_c0_exe18263(bb_maxpool2d_B7_out_c0_exe18263),
        .out_c0_exe19(bb_maxpool2d_B7_out_c0_exe19),
        .out_c0_exe20(bb_maxpool2d_B7_out_c0_exe20),
        .out_c0_exe21(bb_maxpool2d_B7_out_c0_exe21),
        .out_c0_exe22(bb_maxpool2d_B7_out_c0_exe22),
        .out_c0_exe2247(bb_maxpool2d_B7_out_c0_exe2247),
        .out_c0_exe23(bb_maxpool2d_B7_out_c0_exe23),
        .out_c0_exe24(bb_maxpool2d_B7_out_c0_exe24),
        .out_c0_exe25(bb_maxpool2d_B7_out_c0_exe25),
        .out_c0_exe26(bb_maxpool2d_B7_out_c0_exe26),
        .out_c0_exe27(bb_maxpool2d_B7_out_c0_exe27),
        .out_c0_exe28(bb_maxpool2d_B7_out_c0_exe28),
        .out_c0_exe29(bb_maxpool2d_B7_out_c0_exe29),
        .out_c0_exe3248(bb_maxpool2d_B7_out_c0_exe3248),
        .out_c0_exe4249(bb_maxpool2d_B7_out_c0_exe4249),
        .out_c0_exe5250(bb_maxpool2d_B7_out_c0_exe5250),
        .out_c0_exe6251(bb_maxpool2d_B7_out_c0_exe6251),
        .out_c0_exe7252(bb_maxpool2d_B7_out_c0_exe7252),
        .out_c0_exe8253(bb_maxpool2d_B7_out_c0_exe8253),
        .out_c0_exe9254(bb_maxpool2d_B7_out_c0_exe9254),
        .out_exiting_stall_out(bb_maxpool2d_B7_out_exiting_stall_out),
        .out_exiting_valid_out(bb_maxpool2d_B7_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_maxpool2d_B7_out_pipeline_valid_out),
        .out_stall_out_0(bb_maxpool2d_B7_out_stall_out_0),
        .out_stall_out_1(bb_maxpool2d_B7_out_stall_out_1),
        .out_valid_in_0(bb_maxpool2d_B7_out_valid_in_0),
        .out_valid_in_1(bb_maxpool2d_B7_out_valid_in_1),
        .out_valid_out_0(bb_maxpool2d_B7_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B7_sr_1_aunroll_x(BLACKBOX,172)
    maxpool2d_bb_B7_sr_1 thebb_maxpool2d_B7_sr_1_aunroll_x (
        .in_i_stall(bb_maxpool2d_B7_out_stall_out_1),
        .in_i_valid(loop_limiter_maxpool2d2_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_maxpool2d_B5_out_c0_exe10205),
        .in_i_data_2_tpl(bb_maxpool2d_B5_out_c0_exe11),
        .in_i_data_3_tpl(bb_maxpool2d_B5_out_c0_exe12),
        .in_i_data_4_tpl(bb_maxpool2d_B5_out_c0_exe13),
        .in_i_data_5_tpl(bb_maxpool2d_B5_out_c0_exe14),
        .in_i_data_6_tpl(bb_maxpool2d_B5_out_c0_exe15),
        .in_i_data_7_tpl(bb_maxpool2d_B5_out_c0_exe16),
        .in_i_data_8_tpl(bb_maxpool2d_B5_out_c0_exe17),
        .in_i_data_9_tpl(bb_maxpool2d_B5_out_c0_exe18),
        .in_i_data_10_tpl(bb_maxpool2d_B5_out_c0_exe2197),
        .in_i_data_11_tpl(bb_maxpool2d_B5_out_c0_exe3198),
        .in_i_data_12_tpl(bb_maxpool2d_B5_out_c0_exe4199),
        .in_i_data_13_tpl(bb_maxpool2d_B5_out_c0_exe5200),
        .in_i_data_14_tpl(bb_maxpool2d_B5_out_c0_exe6201),
        .in_i_data_15_tpl(bb_maxpool2d_B5_out_c0_exe7202),
        .in_i_data_16_tpl(bb_maxpool2d_B5_out_c0_exe8203),
        .in_i_data_17_tpl(bb_maxpool2d_B5_out_c0_exe9204),
        .out_o_stall(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_data_17_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_maxpool2d2(BLACKBOX,141)
    maxpool2d_loop_limiter_2 theloop_limiter_maxpool2d2 (
        .in_i_stall(bb_maxpool2d_B7_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_maxpool2d_B7_out_exiting_stall_out),
        .in_i_valid(bb_maxpool2d_B5_out_valid_out_0),
        .in_i_valid_exit(bb_maxpool2d_B7_out_exiting_valid_out),
        .out_o_stall(loop_limiter_maxpool2d2_out_o_stall),
        .out_o_valid(loop_limiter_maxpool2d2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going20_maxpool2d2_sr(BLACKBOX,109)
    maxpool2d_i_llvm_fpga_pipeline_keep_going20_2_sr thei_llvm_fpga_pipeline_keep_going20_maxpool2d2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going20_maxpool2d2_valid_fifo_out_stall_out),
        .in_i_valid(bb_maxpool2d_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going20_maxpool2d2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going20_maxpool2d2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef114(CONSTANT,91)
    assign c_i32_undef114_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_maxpool2d_B5(BLACKBOX,8)
    maxpool2d_bb_B5 thebb_maxpool2d_B5 (
        .in_forked9_0(GND_q),
        .in_forked9_1(bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_input_im_addr_041_replace_phi36_pop17103_0(c_float_addrspace_1024_undef108_q),
        .in_input_im_addr_041_replace_phi36_pop17103_1(bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_input_im_addr_041_replace_phi75_0(c_float_addrspace_1024_undef108_q),
        .in_input_im_addr_041_replace_phi75_1(bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_input_size(in_arg_input_size),
        .in_intel_reserved_ffwd_1_0(bb_maxpool2d_B0_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(bb_maxpool2d_B0_out_intel_reserved_ffwd_2_0),
        .in_mul2588_0(c_i32_undef114_q),
        .in_mul2588_1(bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_mul83_0(c_i32_undef114_q),
        .in_mul83_1(bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_notcmp2393_0(GND_q),
        .in_notcmp2393_1(bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_notcmp2740_pop18108_0(GND_q),
        .in_notcmp2740_pop18108_1(bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_notcmp2782_0(GND_q),
        .in_notcmp2782_1(bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_output_im_addr_042_replace_phi32_pop1698_0(c_float_addrspace_1024_undef108_q),
        .in_output_im_addr_042_replace_phi32_pop1698_1(bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_output_im_addr_042_replace_phi68_0(c_float_addrspace_1024_undef108_q),
        .in_output_im_addr_042_replace_phi68_1(bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_output_size(in_arg_output_size),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going20_maxpool2d2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_maxpool2d2_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going20_maxpool2d2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_maxpool2d_B5_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10205(bb_maxpool2d_B5_out_c0_exe10205),
        .out_c0_exe11(bb_maxpool2d_B5_out_c0_exe11),
        .out_c0_exe12(bb_maxpool2d_B5_out_c0_exe12),
        .out_c0_exe13(bb_maxpool2d_B5_out_c0_exe13),
        .out_c0_exe14(bb_maxpool2d_B5_out_c0_exe14),
        .out_c0_exe15(bb_maxpool2d_B5_out_c0_exe15),
        .out_c0_exe16(bb_maxpool2d_B5_out_c0_exe16),
        .out_c0_exe17(bb_maxpool2d_B5_out_c0_exe17),
        .out_c0_exe18(bb_maxpool2d_B5_out_c0_exe18),
        .out_c0_exe2197(bb_maxpool2d_B5_out_c0_exe2197),
        .out_c0_exe3198(bb_maxpool2d_B5_out_c0_exe3198),
        .out_c0_exe4199(bb_maxpool2d_B5_out_c0_exe4199),
        .out_c0_exe5200(bb_maxpool2d_B5_out_c0_exe5200),
        .out_c0_exe6201(bb_maxpool2d_B5_out_c0_exe6201),
        .out_c0_exe7202(bb_maxpool2d_B5_out_c0_exe7202),
        .out_c0_exe8203(bb_maxpool2d_B5_out_c0_exe8203),
        .out_c0_exe9204(bb_maxpool2d_B5_out_c0_exe9204),
        .out_exiting_stall_out(bb_maxpool2d_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_maxpool2d_B5_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_maxpool2d_B5_out_pipeline_valid_out),
        .out_stall_out_0(bb_maxpool2d_B5_out_stall_out_0),
        .out_stall_out_1(bb_maxpool2d_B5_out_stall_out_1),
        .out_valid_in_0(bb_maxpool2d_B5_out_valid_in_0),
        .out_valid_in_1(bb_maxpool2d_B5_out_valid_in_1),
        .out_valid_out_0(bb_maxpool2d_B5_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B5_sr_1_aunroll_x(BLACKBOX,170)
    maxpool2d_bb_B5_sr_1 thebb_maxpool2d_B5_sr_1_aunroll_x (
        .in_i_stall(bb_maxpool2d_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_maxpool2d1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_maxpool2d_B3_out_c0_exe8),
        .in_i_data_2_tpl(bb_maxpool2d_B3_out_c0_exe9),
        .in_i_data_3_tpl(bb_maxpool2d_B3_out_c0_exe10),
        .in_i_data_4_tpl(bb_maxpool2d_B3_out_c0_exe1172),
        .in_i_data_5_tpl(bb_maxpool2d_B3_out_c0_exe2173),
        .in_i_data_6_tpl(bb_maxpool2d_B3_out_c0_exe4175),
        .in_i_data_7_tpl(bb_maxpool2d_B3_out_c0_exe5),
        .in_i_data_8_tpl(bb_maxpool2d_B3_out_c0_exe6),
        .in_i_data_9_tpl(bb_maxpool2d_B3_out_c0_exe7),
        .out_o_stall(bb_maxpool2d_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_maxpool2d_B5_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_maxpool2d_B5_sr_1_aunroll_x_out_o_data_9_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_maxpool2d1(BLACKBOX,140)
    maxpool2d_loop_limiter_1 theloop_limiter_maxpool2d1 (
        .in_i_stall(bb_maxpool2d_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_maxpool2d_B5_out_exiting_stall_out),
        .in_i_valid(bb_maxpool2d_B3_out_valid_out_0),
        .in_i_valid_exit(bb_maxpool2d_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_maxpool2d1_out_o_stall),
        .out_o_valid(loop_limiter_maxpool2d1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going24_maxpool2d2_sr(BLACKBOX,111)
    maxpool2d_i_llvm_fpga_pipeline_keep_going24_2_sr thei_llvm_fpga_pipeline_keep_going24_maxpool2d2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going24_maxpool2d2_valid_fifo_out_stall_out),
        .in_i_valid(bb_maxpool2d_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going24_maxpool2d2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going24_maxpool2d2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_float_addrspace_1024_undef108(CONSTANT,13)
    assign c_float_addrspace_1024_undef108_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bb_maxpool2d_B3(BLACKBOX,6)
    maxpool2d_bb_B3 thebb_maxpool2d_B3 (
        .in_forked_0(GND_q),
        .in_forked_1(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_input_im_addr_041_replace_phi69_0(c_float_addrspace_1024_undef108_q),
        .in_input_im_addr_041_replace_phi69_1(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_input_size(in_arg_input_size),
        .in_intel_reserved_ffwd_1_0(bb_maxpool2d_B0_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(bb_maxpool2d_B0_out_intel_reserved_ffwd_2_0),
        .in_notcmp2776_0(GND_q),
        .in_notcmp2776_1(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_output_im_addr_042_replace_phi62_0(c_float_addrspace_1024_undef108_q),
        .in_output_im_addr_042_replace_phi62_1(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_output_size(in_arg_output_size),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going24_maxpool2d2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_maxpool2d1_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going24_maxpool2d2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_maxpool2d_B3_out_c0_exe10),
        .out_c0_exe1172(bb_maxpool2d_B3_out_c0_exe1172),
        .out_c0_exe2173(bb_maxpool2d_B3_out_c0_exe2173),
        .out_c0_exe4175(bb_maxpool2d_B3_out_c0_exe4175),
        .out_c0_exe5(bb_maxpool2d_B3_out_c0_exe5),
        .out_c0_exe6(bb_maxpool2d_B3_out_c0_exe6),
        .out_c0_exe7(bb_maxpool2d_B3_out_c0_exe7),
        .out_c0_exe8(bb_maxpool2d_B3_out_c0_exe8),
        .out_c0_exe9(bb_maxpool2d_B3_out_c0_exe9),
        .out_exiting_stall_out(bb_maxpool2d_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_maxpool2d_B3_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_maxpool2d_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_maxpool2d_B3_out_stall_out_0),
        .out_stall_out_1(bb_maxpool2d_B3_out_stall_out_1),
        .out_valid_in_0(bb_maxpool2d_B3_out_valid_in_0),
        .out_valid_in_1(bb_maxpool2d_B3_out_valid_in_1),
        .out_valid_out_0(bb_maxpool2d_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B3_sr_1_aunroll_x(BLACKBOX,168)
    maxpool2d_bb_B3_sr_1 thebb_maxpool2d_B3_sr_1_aunroll_x (
        .in_i_stall(bb_maxpool2d_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_maxpool2d0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_maxpool2d_B1_out_c0_exe1),
        .in_i_data_2_tpl(bb_maxpool2d_B1_out_c0_exe2),
        .in_i_data_3_tpl(bb_maxpool2d_B1_out_c0_exe4),
        .out_o_stall(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_maxpool2d0(BLACKBOX,139)
    maxpool2d_loop_limiter_0 theloop_limiter_maxpool2d0 (
        .in_i_stall(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_maxpool2d_B3_out_exiting_stall_out),
        .in_i_valid(bb_maxpool2d_B1_out_valid_out_0),
        .in_i_valid_exit(bb_maxpool2d_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_maxpool2d0_out_o_stall),
        .out_o_valid(loop_limiter_maxpool2d0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going28_maxpool2d2_sr(BLACKBOX,113)
    maxpool2d_i_llvm_fpga_pipeline_keep_going28_2_sr thei_llvm_fpga_pipeline_keep_going28_maxpool2d2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going28_maxpool2d2_valid_fifo_out_stall_out),
        .in_i_valid(bb_maxpool2d_B1_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going28_maxpool2d2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going28_maxpool2d2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B2_sr_0_aunroll_x(BLACKBOX,167)
    maxpool2d_bb_B2_sr_0 thebb_maxpool2d_B2_sr_0_aunroll_x (
        .in_i_stall(bb_maxpool2d_B2_out_stall_out_0),
        .in_i_valid(bb_maxpool2d_B4_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_maxpool2d_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_maxpool2d_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B2(BLACKBOX,5)
    maxpool2d_bb_B2 thebb_maxpool2d_B2 (
        .in_feedback_stall_in_0(bb_maxpool2d_B0_out_feedback_stall_out_0),
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(bb_maxpool2d_B2_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_0(bb_maxpool2d_B2_out_feedback_out_0),
        .out_feedback_valid_out_0(bb_maxpool2d_B2_out_feedback_valid_out_0),
        .out_stall_out_0(bb_maxpool2d_B2_out_stall_out_0),
        .out_valid_out_0(bb_maxpool2d_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B0(BLACKBOX,2)
    maxpool2d_bb_B0 thebb_maxpool2d_B0 (
        .in_channel_size(in_arg_channel_size),
        .in_feedback_in_0(bb_maxpool2d_B2_out_feedback_out_0),
        .in_feedback_valid_in_0(bb_maxpool2d_B2_out_feedback_valid_out_0),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_output_im(in_arg_output_im),
        .in_output_size(in_arg_output_size),
        .in_stall_in_0(bb_maxpool2d_B1_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_feedback_stall_out_0(bb_maxpool2d_B0_out_feedback_stall_out_0),
        .out_intel_reserved_ffwd_0_0(bb_maxpool2d_B0_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_maxpool2d_B0_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_maxpool2d_B0_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_maxpool2d_B0_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_maxpool2d_B0_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_maxpool2d_B0_out_intel_reserved_ffwd_5_0),
        .out_stall_out_0(bb_maxpool2d_B0_out_stall_out_0),
        .out_valid_out_0(bb_maxpool2d_B0_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B1(BLACKBOX,3)
    maxpool2d_bb_B1 thebb_maxpool2d_B1 (
        .in_forked10_0(GND_q),
        .in_forked10_1(bb_maxpool2d_B1_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_input_size(in_arg_input_size),
        .in_intel_reserved_ffwd_0_0(bb_maxpool2d_B0_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_3_0(bb_maxpool2d_B0_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(bb_maxpool2d_B0_out_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(bb_maxpool2d_B0_out_intel_reserved_ffwd_5_0),
        .in_output_size(in_arg_output_size),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going28_maxpool2d2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_maxpool2d0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going28_maxpool2d2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_maxpool2d_B1_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1(bb_maxpool2d_B1_out_c0_exe1),
        .out_c0_exe2(bb_maxpool2d_B1_out_c0_exe2),
        .out_c0_exe4(bb_maxpool2d_B1_out_c0_exe4),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_pipeline_valid_out(bb_maxpool2d_B1_out_pipeline_valid_out),
        .out_stall_out_0(bb_maxpool2d_B1_out_stall_out_0),
        .out_stall_out_1(bb_maxpool2d_B1_out_stall_out_1),
        .out_valid_in_0(bb_maxpool2d_B1_out_valid_in_0),
        .out_valid_in_1(bb_maxpool2d_B1_out_valid_in_1),
        .out_valid_out_0(bb_maxpool2d_B1_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B4(BLACKBOX,7)
    maxpool2d_bb_B4 thebb_maxpool2d_B4 (
        .in_c0_exe103405_0(bb_maxpool2d_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_input_size(in_arg_input_size),
        .in_output_size(in_arg_output_size),
        .in_stall_in_0(bb_maxpool2d_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_maxpool2d_B4_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_maxpool2d_B4_out_stall_in_0),
        .out_stall_out_0(bb_maxpool2d_B4_out_stall_out_0),
        .out_valid_out_0(bb_maxpool2d_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B1_sr_1_aunroll_x(BLACKBOX,166)
    maxpool2d_bb_B1_sr_1 thebb_maxpool2d_B1_sr_1_aunroll_x (
        .in_i_stall(bb_maxpool2d_B1_out_stall_out_1),
        .in_i_valid(bb_maxpool2d_B0_out_valid_out_0),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_maxpool2d_B1_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_maxpool2d_B1_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_maxpool2d_B1_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // maxpool2d_B1_x(EXTIFACE,143)
    assign maxpool2d_B1_x_i_capture = GND_q;
    assign maxpool2d_B1_x_i_clear = GND_q;
    assign maxpool2d_B1_x_i_enable = VCC_q;
    assign maxpool2d_B1_x_i_shift = GND_q;
    assign maxpool2d_B1_x_i_stall_pred = bb_maxpool2d_B1_sr_1_aunroll_x_out_o_stall;
    assign maxpool2d_B1_x_i_stall_succ = bb_maxpool2d_B4_out_stall_in_0;
    assign maxpool2d_B1_x_i_valid_loop = bb_maxpool2d_B1_out_valid_in_0;
    assign maxpool2d_B1_x_i_valid_pred = bb_maxpool2d_B1_out_valid_in_1;
    assign maxpool2d_B1_x_i_valid_succ = bb_maxpool2d_B4_out_valid_out_0;
    assign maxpool2d_B1_x_i_capture_bitsignaltemp = maxpool2d_B1_x_i_capture[0];
    assign maxpool2d_B1_x_i_clear_bitsignaltemp = maxpool2d_B1_x_i_clear[0];
    assign maxpool2d_B1_x_i_enable_bitsignaltemp = maxpool2d_B1_x_i_enable[0];
    assign maxpool2d_B1_x_i_shift_bitsignaltemp = maxpool2d_B1_x_i_shift[0];
    assign maxpool2d_B1_x_i_stall_pred_bitsignaltemp = maxpool2d_B1_x_i_stall_pred[0];
    assign maxpool2d_B1_x_i_stall_succ_bitsignaltemp = maxpool2d_B1_x_i_stall_succ[0];
    assign maxpool2d_B1_x_i_valid_loop_bitsignaltemp = maxpool2d_B1_x_i_valid_loop[0];
    assign maxpool2d_B1_x_i_valid_pred_bitsignaltemp = maxpool2d_B1_x_i_valid_pred[0];
    assign maxpool2d_B1_x_i_valid_succ_bitsignaltemp = maxpool2d_B1_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("maxpool2d.B1")
    ) themaxpool2d_B1_x (
        .i_capture(maxpool2d_B1_x_i_capture_bitsignaltemp),
        .i_clear(maxpool2d_B1_x_i_clear_bitsignaltemp),
        .i_enable(maxpool2d_B1_x_i_enable_bitsignaltemp),
        .i_shift(maxpool2d_B1_x_i_shift_bitsignaltemp),
        .i_stall_pred(maxpool2d_B1_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(maxpool2d_B1_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(maxpool2d_B1_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(maxpool2d_B1_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(maxpool2d_B1_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // maxpool2d_B10_x(EXTIFACE,144)
    assign maxpool2d_B10_x_i_capture = GND_q;
    assign maxpool2d_B10_x_i_clear = GND_q;
    assign maxpool2d_B10_x_i_enable = VCC_q;
    assign maxpool2d_B10_x_i_shift = GND_q;
    assign maxpool2d_B10_x_i_stall_pred = loop_limiter_maxpool2d3_out_o_stall;
    assign maxpool2d_B10_x_i_stall_succ = bb_maxpool2d_B10_out_stall_in_0;
    assign maxpool2d_B10_x_i_valid_loop = bb_maxpool2d_B10_out_valid_in_0;
    assign maxpool2d_B10_x_i_valid_pred = bb_maxpool2d_B10_out_valid_in_1;
    assign maxpool2d_B10_x_i_valid_succ = bb_maxpool2d_B10_out_valid_out_0;
    assign maxpool2d_B10_x_i_capture_bitsignaltemp = maxpool2d_B10_x_i_capture[0];
    assign maxpool2d_B10_x_i_clear_bitsignaltemp = maxpool2d_B10_x_i_clear[0];
    assign maxpool2d_B10_x_i_enable_bitsignaltemp = maxpool2d_B10_x_i_enable[0];
    assign maxpool2d_B10_x_i_shift_bitsignaltemp = maxpool2d_B10_x_i_shift[0];
    assign maxpool2d_B10_x_i_stall_pred_bitsignaltemp = maxpool2d_B10_x_i_stall_pred[0];
    assign maxpool2d_B10_x_i_stall_succ_bitsignaltemp = maxpool2d_B10_x_i_stall_succ[0];
    assign maxpool2d_B10_x_i_valid_loop_bitsignaltemp = maxpool2d_B10_x_i_valid_loop[0];
    assign maxpool2d_B10_x_i_valid_pred_bitsignaltemp = maxpool2d_B10_x_i_valid_pred[0];
    assign maxpool2d_B10_x_i_valid_succ_bitsignaltemp = maxpool2d_B10_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("maxpool2d.B10")
    ) themaxpool2d_B10_x (
        .i_capture(maxpool2d_B10_x_i_capture_bitsignaltemp),
        .i_clear(maxpool2d_B10_x_i_clear_bitsignaltemp),
        .i_enable(maxpool2d_B10_x_i_enable_bitsignaltemp),
        .i_shift(maxpool2d_B10_x_i_shift_bitsignaltemp),
        .i_stall_pred(maxpool2d_B10_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(maxpool2d_B10_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(maxpool2d_B10_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(maxpool2d_B10_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(maxpool2d_B10_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // maxpool2d_B3_x(EXTIFACE,145)
    assign maxpool2d_B3_x_i_capture = GND_q;
    assign maxpool2d_B3_x_i_clear = GND_q;
    assign maxpool2d_B3_x_i_enable = VCC_q;
    assign maxpool2d_B3_x_i_shift = GND_q;
    assign maxpool2d_B3_x_i_stall_pred = loop_limiter_maxpool2d0_out_o_stall;
    assign maxpool2d_B3_x_i_stall_succ = bb_maxpool2d_B6_out_stall_in_0;
    assign maxpool2d_B3_x_i_valid_loop = bb_maxpool2d_B3_out_valid_in_0;
    assign maxpool2d_B3_x_i_valid_pred = bb_maxpool2d_B3_out_valid_in_1;
    assign maxpool2d_B3_x_i_valid_succ = bb_maxpool2d_B6_out_valid_out_0;
    assign maxpool2d_B3_x_i_capture_bitsignaltemp = maxpool2d_B3_x_i_capture[0];
    assign maxpool2d_B3_x_i_clear_bitsignaltemp = maxpool2d_B3_x_i_clear[0];
    assign maxpool2d_B3_x_i_enable_bitsignaltemp = maxpool2d_B3_x_i_enable[0];
    assign maxpool2d_B3_x_i_shift_bitsignaltemp = maxpool2d_B3_x_i_shift[0];
    assign maxpool2d_B3_x_i_stall_pred_bitsignaltemp = maxpool2d_B3_x_i_stall_pred[0];
    assign maxpool2d_B3_x_i_stall_succ_bitsignaltemp = maxpool2d_B3_x_i_stall_succ[0];
    assign maxpool2d_B3_x_i_valid_loop_bitsignaltemp = maxpool2d_B3_x_i_valid_loop[0];
    assign maxpool2d_B3_x_i_valid_pred_bitsignaltemp = maxpool2d_B3_x_i_valid_pred[0];
    assign maxpool2d_B3_x_i_valid_succ_bitsignaltemp = maxpool2d_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("maxpool2d.B3")
    ) themaxpool2d_B3_x (
        .i_capture(maxpool2d_B3_x_i_capture_bitsignaltemp),
        .i_clear(maxpool2d_B3_x_i_clear_bitsignaltemp),
        .i_enable(maxpool2d_B3_x_i_enable_bitsignaltemp),
        .i_shift(maxpool2d_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(maxpool2d_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(maxpool2d_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(maxpool2d_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(maxpool2d_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(maxpool2d_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // maxpool2d_B5_x(EXTIFACE,146)
    assign maxpool2d_B5_x_i_capture = GND_q;
    assign maxpool2d_B5_x_i_clear = GND_q;
    assign maxpool2d_B5_x_i_enable = VCC_q;
    assign maxpool2d_B5_x_i_shift = GND_q;
    assign maxpool2d_B5_x_i_stall_pred = loop_limiter_maxpool2d1_out_o_stall;
    assign maxpool2d_B5_x_i_stall_succ = bb_maxpool2d_B8_out_stall_in_0;
    assign maxpool2d_B5_x_i_valid_loop = bb_maxpool2d_B5_out_valid_in_0;
    assign maxpool2d_B5_x_i_valid_pred = bb_maxpool2d_B5_out_valid_in_1;
    assign maxpool2d_B5_x_i_valid_succ = bb_maxpool2d_B8_out_valid_out_0;
    assign maxpool2d_B5_x_i_capture_bitsignaltemp = maxpool2d_B5_x_i_capture[0];
    assign maxpool2d_B5_x_i_clear_bitsignaltemp = maxpool2d_B5_x_i_clear[0];
    assign maxpool2d_B5_x_i_enable_bitsignaltemp = maxpool2d_B5_x_i_enable[0];
    assign maxpool2d_B5_x_i_shift_bitsignaltemp = maxpool2d_B5_x_i_shift[0];
    assign maxpool2d_B5_x_i_stall_pred_bitsignaltemp = maxpool2d_B5_x_i_stall_pred[0];
    assign maxpool2d_B5_x_i_stall_succ_bitsignaltemp = maxpool2d_B5_x_i_stall_succ[0];
    assign maxpool2d_B5_x_i_valid_loop_bitsignaltemp = maxpool2d_B5_x_i_valid_loop[0];
    assign maxpool2d_B5_x_i_valid_pred_bitsignaltemp = maxpool2d_B5_x_i_valid_pred[0];
    assign maxpool2d_B5_x_i_valid_succ_bitsignaltemp = maxpool2d_B5_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("maxpool2d.B5")
    ) themaxpool2d_B5_x (
        .i_capture(maxpool2d_B5_x_i_capture_bitsignaltemp),
        .i_clear(maxpool2d_B5_x_i_clear_bitsignaltemp),
        .i_enable(maxpool2d_B5_x_i_enable_bitsignaltemp),
        .i_shift(maxpool2d_B5_x_i_shift_bitsignaltemp),
        .i_stall_pred(maxpool2d_B5_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(maxpool2d_B5_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(maxpool2d_B5_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(maxpool2d_B5_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(maxpool2d_B5_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // maxpool2d_B7_x(EXTIFACE,147)
    assign maxpool2d_B7_x_i_capture = GND_q;
    assign maxpool2d_B7_x_i_clear = GND_q;
    assign maxpool2d_B7_x_i_enable = VCC_q;
    assign maxpool2d_B7_x_i_shift = GND_q;
    assign maxpool2d_B7_x_i_stall_pred = loop_limiter_maxpool2d2_out_o_stall;
    assign maxpool2d_B7_x_i_stall_succ = bb_maxpool2d_B9_out_stall_in_0;
    assign maxpool2d_B7_x_i_valid_loop = bb_maxpool2d_B7_out_valid_in_0;
    assign maxpool2d_B7_x_i_valid_pred = bb_maxpool2d_B7_out_valid_in_1;
    assign maxpool2d_B7_x_i_valid_succ = bb_maxpool2d_B9_out_valid_out_0;
    assign maxpool2d_B7_x_i_capture_bitsignaltemp = maxpool2d_B7_x_i_capture[0];
    assign maxpool2d_B7_x_i_clear_bitsignaltemp = maxpool2d_B7_x_i_clear[0];
    assign maxpool2d_B7_x_i_enable_bitsignaltemp = maxpool2d_B7_x_i_enable[0];
    assign maxpool2d_B7_x_i_shift_bitsignaltemp = maxpool2d_B7_x_i_shift[0];
    assign maxpool2d_B7_x_i_stall_pred_bitsignaltemp = maxpool2d_B7_x_i_stall_pred[0];
    assign maxpool2d_B7_x_i_stall_succ_bitsignaltemp = maxpool2d_B7_x_i_stall_succ[0];
    assign maxpool2d_B7_x_i_valid_loop_bitsignaltemp = maxpool2d_B7_x_i_valid_loop[0];
    assign maxpool2d_B7_x_i_valid_pred_bitsignaltemp = maxpool2d_B7_x_i_valid_pred[0];
    assign maxpool2d_B7_x_i_valid_succ_bitsignaltemp = maxpool2d_B7_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("maxpool2d.B7")
    ) themaxpool2d_B7_x (
        .i_capture(maxpool2d_B7_x_i_capture_bitsignaltemp),
        .i_clear(maxpool2d_B7_x_i_clear_bitsignaltemp),
        .i_enable(maxpool2d_B7_x_i_enable_bitsignaltemp),
        .i_shift(maxpool2d_B7_x_i_shift_bitsignaltemp),
        .i_stall_pred(maxpool2d_B7_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(maxpool2d_B7_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(maxpool2d_B7_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(maxpool2d_B7_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(maxpool2d_B7_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_lm_maxpool2d_avm_address(GPOUT,148)
    assign out_lm_maxpool2d_avm_address = bb_maxpool2d_B10_out_lm_maxpool2d_avm_address;

    // out_lm_maxpool2d_avm_burstcount(GPOUT,149)
    assign out_lm_maxpool2d_avm_burstcount = bb_maxpool2d_B10_out_lm_maxpool2d_avm_burstcount;

    // out_lm_maxpool2d_avm_byteenable(GPOUT,150)
    assign out_lm_maxpool2d_avm_byteenable = bb_maxpool2d_B10_out_lm_maxpool2d_avm_byteenable;

    // out_lm_maxpool2d_avm_enable(GPOUT,151)
    assign out_lm_maxpool2d_avm_enable = bb_maxpool2d_B10_out_lm_maxpool2d_avm_enable;

    // out_lm_maxpool2d_avm_read(GPOUT,152)
    assign out_lm_maxpool2d_avm_read = bb_maxpool2d_B10_out_lm_maxpool2d_avm_read;

    // out_lm_maxpool2d_avm_write(GPOUT,153)
    assign out_lm_maxpool2d_avm_write = bb_maxpool2d_B10_out_lm_maxpool2d_avm_write;

    // out_lm_maxpool2d_avm_writedata(GPOUT,154)
    assign out_lm_maxpool2d_avm_writedata = bb_maxpool2d_B10_out_lm_maxpool2d_avm_writedata;

    // out_o_active_unnamed_maxpool2d13(GPOUT,155)
    assign out_o_active_unnamed_maxpool2d13 = bb_maxpool2d_B8_out_lsu_unnamed_maxpool2d13_o_active;

    // out_stall_out(GPOUT,156)
    assign out_stall_out = bb_maxpool2d_B0_out_stall_out_0;

    // out_unnamed_maxpool2d13_maxpool2d_avm_address(GPOUT,157)
    assign out_unnamed_maxpool2d13_maxpool2d_avm_address = bb_maxpool2d_B8_out_unnamed_maxpool2d13_maxpool2d_avm_address;

    // out_unnamed_maxpool2d13_maxpool2d_avm_burstcount(GPOUT,158)
    assign out_unnamed_maxpool2d13_maxpool2d_avm_burstcount = bb_maxpool2d_B8_out_unnamed_maxpool2d13_maxpool2d_avm_burstcount;

    // out_unnamed_maxpool2d13_maxpool2d_avm_byteenable(GPOUT,159)
    assign out_unnamed_maxpool2d13_maxpool2d_avm_byteenable = bb_maxpool2d_B8_out_unnamed_maxpool2d13_maxpool2d_avm_byteenable;

    // out_unnamed_maxpool2d13_maxpool2d_avm_enable(GPOUT,160)
    assign out_unnamed_maxpool2d13_maxpool2d_avm_enable = bb_maxpool2d_B8_out_unnamed_maxpool2d13_maxpool2d_avm_enable;

    // out_unnamed_maxpool2d13_maxpool2d_avm_read(GPOUT,161)
    assign out_unnamed_maxpool2d13_maxpool2d_avm_read = bb_maxpool2d_B8_out_unnamed_maxpool2d13_maxpool2d_avm_read;

    // out_unnamed_maxpool2d13_maxpool2d_avm_write(GPOUT,162)
    assign out_unnamed_maxpool2d13_maxpool2d_avm_write = bb_maxpool2d_B8_out_unnamed_maxpool2d13_maxpool2d_avm_write;

    // out_unnamed_maxpool2d13_maxpool2d_avm_writedata(GPOUT,163)
    assign out_unnamed_maxpool2d13_maxpool2d_avm_writedata = bb_maxpool2d_B8_out_unnamed_maxpool2d13_maxpool2d_avm_writedata;

    // out_valid_out(GPOUT,164)
    assign out_valid_out = bb_maxpool2d_B2_out_valid_out_0;

endmodule
