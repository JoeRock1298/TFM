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
// SystemVerilog created on Tue Jun  6 18:48:20 2023


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
    input wire [511:0] in_lm18_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm18_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm18_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm18_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm20_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm20_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm20_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm20_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm_conv2d1x1_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [511:0] in_unnamed_conv2d1x110_conv2d1x1_avm_readdata,
    input wire [0:0] in_unnamed_conv2d1x110_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv2d1x110_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d1x110_conv2d1x1_avm_writeack,
    input wire [0:0] in_valid_in,
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
    output wire [30:0] out_lm_conv2d1x1_avm_address,
    output wire [4:0] out_lm_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm_conv2d1x1_avm_enable,
    output wire [0:0] out_lm_conv2d1x1_avm_read,
    output wire [0:0] out_lm_conv2d1x1_avm_write,
    output wire [511:0] out_lm_conv2d1x1_avm_writedata,
    output wire [0:0] out_o_active_unnamed_conv2d1x110,
    output wire [0:0] out_stall_out,
    output wire [30:0] out_unnamed_conv2d1x110_conv2d1x1_avm_address,
    output wire [4:0] out_unnamed_conv2d1x110_conv2d1x1_avm_burstcount,
    output wire [63:0] out_unnamed_conv2d1x110_conv2d1x1_avm_byteenable,
    output wire [0:0] out_unnamed_conv2d1x110_conv2d1x1_avm_enable,
    output wire [0:0] out_unnamed_conv2d1x110_conv2d1x1_avm_read,
    output wire [0:0] out_unnamed_conv2d1x110_conv2d1x1_avm_write,
    output wire [511:0] out_unnamed_conv2d1x110_conv2d1x1_avm_writedata,
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
    wire [0:0] bb_conv2d1x1_B2_out_c0_exe10;
    wire [31:0] bb_conv2d1x1_B2_out_c0_exe2;
    wire [0:0] bb_conv2d1x1_B2_out_c0_exe3;
    wire [0:0] bb_conv2d1x1_B2_out_c0_exe4;
    wire [32:0] bb_conv2d1x1_B2_out_c0_exe5;
    wire [31:0] bb_conv2d1x1_B2_out_c0_exe7;
    wire [31:0] bb_conv2d1x1_B2_out_c0_exe8;
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
    wire [0:0] bb_conv2d1x1_B3_out_c0_exe1095;
    wire [31:0] bb_conv2d1x1_B3_out_c0_exe11;
    wire [0:0] bb_conv2d1x1_B3_out_c0_exe12;
    wire [0:0] bb_conv2d1x1_B3_out_c0_exe13;
    wire [32:0] bb_conv2d1x1_B3_out_c0_exe14;
    wire [31:0] bb_conv2d1x1_B3_out_c0_exe15;
    wire [31:0] bb_conv2d1x1_B3_out_c0_exe16;
    wire [31:0] bb_conv2d1x1_B3_out_c0_exe17;
    wire [0:0] bb_conv2d1x1_B3_out_c0_exe18;
    wire [0:0] bb_conv2d1x1_B3_out_c0_exe287;
    wire [31:0] bb_conv2d1x1_B3_out_c0_exe388;
    wire [31:0] bb_conv2d1x1_B3_out_c0_exe489;
    wire [0:0] bb_conv2d1x1_B3_out_c0_exe590;
    wire [0:0] bb_conv2d1x1_B3_out_c0_exe691;
    wire [31:0] bb_conv2d1x1_B3_out_c0_exe792;
    wire [31:0] bb_conv2d1x1_B3_out_c0_exe893;
    wire [31:0] bb_conv2d1x1_B3_out_c0_exe994;
    wire [0:0] bb_conv2d1x1_B3_out_exiting_stall_out;
    wire [0:0] bb_conv2d1x1_B3_out_exiting_valid_out;
    wire [0:0] bb_conv2d1x1_B3_out_pipeline_valid_out;
    wire [0:0] bb_conv2d1x1_B3_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B3_out_stall_out_1;
    wire [0:0] bb_conv2d1x1_B3_out_valid_in_0;
    wire [0:0] bb_conv2d1x1_B3_out_valid_in_1;
    wire [0:0] bb_conv2d1x1_B3_out_valid_out_0;
    wire [0:0] bb_conv2d1x1_B4_out_stall_in_0;
    wire [0:0] bb_conv2d1x1_B4_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B4_out_valid_out_0;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe101515;
    wire [0:0] bb_conv2d1x1_B5_out_lsu_unnamed_conv2d1x110_o_active;
    wire [0:0] bb_conv2d1x1_B5_out_stall_in_0;
    wire [0:0] bb_conv2d1x1_B5_out_stall_out_0;
    wire [30:0] bb_conv2d1x1_B5_out_unnamed_conv2d1x110_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B5_out_unnamed_conv2d1x110_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B5_out_unnamed_conv2d1x110_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B5_out_unnamed_conv2d1x110_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B5_out_unnamed_conv2d1x110_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B5_out_unnamed_conv2d1x110_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B5_out_unnamed_conv2d1x110_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B5_out_valid_out_0;
    wire [0:0] bb_conv2d1x1_B6_out_c0_exe10151;
    wire [0:0] bb_conv2d1x1_B6_out_c0_exe11152;
    wire [31:0] bb_conv2d1x1_B6_out_c0_exe3144;
    wire [0:0] bb_conv2d1x1_B6_out_c0_exe8149;
    wire [31:0] bb_conv2d1x1_B6_out_c0_exe9150;
    wire [31:0] bb_conv2d1x1_B6_out_c1_exe1;
    wire [0:0] bb_conv2d1x1_B6_out_exiting_stall_out;
    wire [0:0] bb_conv2d1x1_B6_out_exiting_valid_out;
    wire [30:0] bb_conv2d1x1_B6_out_lm18_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B6_out_lm18_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B6_out_lm18_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B6_out_lm18_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B6_out_lm18_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B6_out_lm18_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B6_out_lm18_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B6_out_lm20_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B6_out_lm20_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B6_out_lm20_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B6_out_lm20_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B6_out_lm20_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B6_out_lm20_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B6_out_lm20_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B6_out_pipeline_valid_out;
    wire [0:0] bb_conv2d1x1_B6_out_stall_in_0;
    wire [0:0] bb_conv2d1x1_B6_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B6_out_stall_out_1;
    wire [0:0] bb_conv2d1x1_B6_out_valid_in_0;
    wire [0:0] bb_conv2d1x1_B6_out_valid_in_1;
    wire [0:0] bb_conv2d1x1_B6_out_valid_out_0;
    wire [31:0] c_float_undef28_q;
    wire [1:0] c_i2_083_q;
    wire [31:0] c_i32_undef20_q;
    wire [32:0] c_i33_undef26_q;
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
    wire [0:0] conv2d1x1_B3_x_i_capture;
    wire conv2d1x1_B3_x_i_capture_bitsignaltemp;
    wire [0:0] conv2d1x1_B3_x_i_clear;
    wire conv2d1x1_B3_x_i_clear_bitsignaltemp;
    wire [0:0] conv2d1x1_B3_x_i_enable;
    wire conv2d1x1_B3_x_i_enable_bitsignaltemp;
    wire [0:0] conv2d1x1_B3_x_i_shift;
    wire conv2d1x1_B3_x_i_shift_bitsignaltemp;
    wire [0:0] conv2d1x1_B3_x_i_stall_pred;
    wire conv2d1x1_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv2d1x1_B3_x_i_stall_succ;
    wire conv2d1x1_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv2d1x1_B3_x_i_valid_loop;
    wire conv2d1x1_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv2d1x1_B3_x_i_valid_pred;
    wire conv2d1x1_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv2d1x1_B3_x_i_valid_succ;
    wire conv2d1x1_B3_x_i_valid_succ_bitsignaltemp;
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
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_conv2d1x12_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_conv2d1x12_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_conv2d1x12_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_conv2d1x12_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_conv2d1x12_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_conv2d1x12_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_conv2d1x12_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_conv2d1x12_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x16_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_conv2d1x10_out_o_stall;
    wire [0:0] loop_limiter_conv2d1x10_out_o_valid;
    wire [0:0] loop_limiter_conv2d1x11_out_o_stall;
    wire [0:0] loop_limiter_conv2d1x11_out_o_valid;
    wire [0:0] bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [32:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [32:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [31:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [31:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [31:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [0:0] bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_17_tpl;


    // c_i2_083(CONSTANT,41)
    assign c_i2_083_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going23_conv2d1x12_valid_fifo(BLACKBOX,62)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going23_2_valid_fifo thei_llvm_fpga_pipeline_keep_going23_conv2d1x12_valid_fifo (
        .in_data_in(c_i2_083_q),
        .in_stall_in(bb_conv2d1x1_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going23_conv2d1x12_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going23_conv2d1x12_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going23_conv2d1x12_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going19_conv2d1x12_valid_fifo(BLACKBOX,60)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going19_2_valid_fifo thei_llvm_fpga_pipeline_keep_going19_conv2d1x12_valid_fifo (
        .in_data_in(c_i2_083_q),
        .in_stall_in(bb_conv2d1x1_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going19_conv2d1x12_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going19_conv2d1x12_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going19_conv2d1x12_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef26(CONSTANT,54)
    assign c_i33_undef26_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pipeline_keep_going_conv2d1x16_valid_fifo(BLACKBOX,64)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_conv2d1x16_valid_fifo (
        .in_data_in(c_i2_083_q),
        .in_stall_in(bb_conv2d1x1_B6_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_conv2d1x16_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_conv2d1x16_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_conv2d1x16_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B4_sr_0_aunroll_x(BLACKBOX,133)
    conv2d1x1_bb_B4_sr_0 thebb_conv2d1x1_B4_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B4_out_stall_out_0),
        .in_i_valid(bb_conv2d1x1_B5_out_valid_out_0),
        .in_i_data_0_tpl(bb_conv2d1x1_B5_out_c0_exe101515),
        .out_o_stall(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B5(BLACKBOX,7)
    conv2d1x1_bb_B5 thebb_conv2d1x1_B5 (
        .in_c0_exe101515_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe111526_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe31441_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe81492_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe91503_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c1_exe17_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight(in_arg_filter_weight),
        .in_flush(in_start),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_output_im(in_arg_output_im),
        .in_stall_in_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_conv2d1x110_conv2d1x1_avm_readdata(in_unnamed_conv2d1x110_conv2d1x1_avm_readdata),
        .in_unnamed_conv2d1x110_conv2d1x1_avm_readdatavalid(in_unnamed_conv2d1x110_conv2d1x1_avm_readdatavalid),
        .in_unnamed_conv2d1x110_conv2d1x1_avm_waitrequest(in_unnamed_conv2d1x110_conv2d1x1_avm_waitrequest),
        .in_unnamed_conv2d1x110_conv2d1x1_avm_writeack(in_unnamed_conv2d1x110_conv2d1x1_avm_writeack),
        .in_valid_in_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe101515(bb_conv2d1x1_B5_out_c0_exe101515),
        .out_lsu_unnamed_conv2d1x110_o_active(bb_conv2d1x1_B5_out_lsu_unnamed_conv2d1x110_o_active),
        .out_stall_in_0(bb_conv2d1x1_B5_out_stall_in_0),
        .out_stall_out_0(bb_conv2d1x1_B5_out_stall_out_0),
        .out_unnamed_conv2d1x110_conv2d1x1_avm_address(bb_conv2d1x1_B5_out_unnamed_conv2d1x110_conv2d1x1_avm_address),
        .out_unnamed_conv2d1x110_conv2d1x1_avm_burstcount(bb_conv2d1x1_B5_out_unnamed_conv2d1x110_conv2d1x1_avm_burstcount),
        .out_unnamed_conv2d1x110_conv2d1x1_avm_byteenable(bb_conv2d1x1_B5_out_unnamed_conv2d1x110_conv2d1x1_avm_byteenable),
        .out_unnamed_conv2d1x110_conv2d1x1_avm_enable(bb_conv2d1x1_B5_out_unnamed_conv2d1x110_conv2d1x1_avm_enable),
        .out_unnamed_conv2d1x110_conv2d1x1_avm_read(bb_conv2d1x1_B5_out_unnamed_conv2d1x110_conv2d1x1_avm_read),
        .out_unnamed_conv2d1x110_conv2d1x1_avm_write(bb_conv2d1x1_B5_out_unnamed_conv2d1x110_conv2d1x1_avm_write),
        .out_unnamed_conv2d1x110_conv2d1x1_avm_writedata(bb_conv2d1x1_B5_out_unnamed_conv2d1x110_conv2d1x1_avm_writedata),
        .out_valid_out_0(bb_conv2d1x1_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B5_sr_0_aunroll_x(BLACKBOX,134)
    conv2d1x1_bb_B5_sr_0 thebb_conv2d1x1_B5_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B5_out_stall_out_0),
        .in_i_valid(bb_conv2d1x1_B6_out_valid_out_0),
        .in_i_data_0_tpl(bb_conv2d1x1_B6_out_c0_exe3144),
        .in_i_data_1_tpl(bb_conv2d1x1_B6_out_c0_exe8149),
        .in_i_data_2_tpl(bb_conv2d1x1_B6_out_c0_exe9150),
        .in_i_data_3_tpl(bb_conv2d1x1_B6_out_c0_exe10151),
        .in_i_data_4_tpl(bb_conv2d1x1_B6_out_c0_exe11152),
        .in_i_data_5_tpl(bb_conv2d1x1_B6_out_c1_exe1),
        .out_o_stall(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_data_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_conv2d1x16_sr(BLACKBOX,63)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_conv2d1x16_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_conv2d1x16_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv2d1x1_B6_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_conv2d1x16_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_conv2d1x16_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B6(BLACKBOX,8)
    conv2d1x1_bb_B6 thebb_conv2d1x1_B6 (
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight(in_arg_filter_weight),
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_ij_028_pop1055_0(c_i32_undef20_q),
        .in_ij_028_pop1055_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_intel_reserved_ffwd_3_0(bb_conv2d1x1_B0_out_intel_reserved_ffwd_3_0),
        .in_lm18_conv2d1x1_avm_readdata(in_lm18_conv2d1x1_avm_readdata),
        .in_lm18_conv2d1x1_avm_readdatavalid(in_lm18_conv2d1x1_avm_readdatavalid),
        .in_lm18_conv2d1x1_avm_waitrequest(in_lm18_conv2d1x1_avm_waitrequest),
        .in_lm18_conv2d1x1_avm_writeack(in_lm18_conv2d1x1_avm_writeack),
        .in_lm20_conv2d1x1_avm_readdata(in_lm20_conv2d1x1_avm_readdata),
        .in_lm20_conv2d1x1_avm_readdatavalid(in_lm20_conv2d1x1_avm_readdatavalid),
        .in_lm20_conv2d1x1_avm_waitrequest(in_lm20_conv2d1x1_avm_waitrequest),
        .in_lm20_conv2d1x1_avm_writeack(in_lm20_conv2d1x1_avm_writeack),
        .in_lm29_pop1459_0(c_float_undef28_q),
        .in_lm29_pop1459_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_lm44_0(c_float_undef28_q),
        .in_lm44_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_mul1331_pop1560_0(c_i32_undef20_q),
        .in_mul1331_pop1560_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_mul1347_0(c_i32_undef20_q),
        .in_mul1347_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_mul2333_pop1661_0(c_i32_undef20_q),
        .in_mul2333_pop1661_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_mul2350_0(c_i32_undef20_q),
        .in_mul2350_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_mul27_pop1156_0(c_i32_undef20_q),
        .in_mul27_pop1156_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_mul41_0(c_i32_undef20_q),
        .in_mul41_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp1754_0(GND_q),
        .in_notcmp1754_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_notcmp2235_pop1762_0(GND_q),
        .in_notcmp2235_pop1762_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_notcmp2253_0(GND_q),
        .in_notcmp2253_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_output_im(in_arg_output_im),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_conv2d1x16_sr_out_o_stall),
        .in_pop1257_0(GND_q),
        .in_pop1257_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_pop1358_0(GND_q),
        .in_pop1358_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_stall_in_0(bb_conv2d1x1_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_conv2d1x111_0(GND_q),
        .in_unnamed_conv2d1x111_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_unnamed_conv2d1x112_0(GND_q),
        .in_unnamed_conv2d1x112_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_unnamed_conv2d1x113_0(c_i33_undef26_q),
        .in_unnamed_conv2d1x113_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_conv2d1x16_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10151(bb_conv2d1x1_B6_out_c0_exe10151),
        .out_c0_exe11152(bb_conv2d1x1_B6_out_c0_exe11152),
        .out_c0_exe3144(bb_conv2d1x1_B6_out_c0_exe3144),
        .out_c0_exe8149(bb_conv2d1x1_B6_out_c0_exe8149),
        .out_c0_exe9150(bb_conv2d1x1_B6_out_c0_exe9150),
        .out_c1_exe1(bb_conv2d1x1_B6_out_c1_exe1),
        .out_exiting_stall_out(bb_conv2d1x1_B6_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv2d1x1_B6_out_exiting_valid_out),
        .out_lm18_conv2d1x1_avm_address(bb_conv2d1x1_B6_out_lm18_conv2d1x1_avm_address),
        .out_lm18_conv2d1x1_avm_burstcount(bb_conv2d1x1_B6_out_lm18_conv2d1x1_avm_burstcount),
        .out_lm18_conv2d1x1_avm_byteenable(bb_conv2d1x1_B6_out_lm18_conv2d1x1_avm_byteenable),
        .out_lm18_conv2d1x1_avm_enable(bb_conv2d1x1_B6_out_lm18_conv2d1x1_avm_enable),
        .out_lm18_conv2d1x1_avm_read(bb_conv2d1x1_B6_out_lm18_conv2d1x1_avm_read),
        .out_lm18_conv2d1x1_avm_write(bb_conv2d1x1_B6_out_lm18_conv2d1x1_avm_write),
        .out_lm18_conv2d1x1_avm_writedata(bb_conv2d1x1_B6_out_lm18_conv2d1x1_avm_writedata),
        .out_lm20_conv2d1x1_avm_address(bb_conv2d1x1_B6_out_lm20_conv2d1x1_avm_address),
        .out_lm20_conv2d1x1_avm_burstcount(bb_conv2d1x1_B6_out_lm20_conv2d1x1_avm_burstcount),
        .out_lm20_conv2d1x1_avm_byteenable(bb_conv2d1x1_B6_out_lm20_conv2d1x1_avm_byteenable),
        .out_lm20_conv2d1x1_avm_enable(bb_conv2d1x1_B6_out_lm20_conv2d1x1_avm_enable),
        .out_lm20_conv2d1x1_avm_read(bb_conv2d1x1_B6_out_lm20_conv2d1x1_avm_read),
        .out_lm20_conv2d1x1_avm_write(bb_conv2d1x1_B6_out_lm20_conv2d1x1_avm_write),
        .out_lm20_conv2d1x1_avm_writedata(bb_conv2d1x1_B6_out_lm20_conv2d1x1_avm_writedata),
        .out_pipeline_valid_out(bb_conv2d1x1_B6_out_pipeline_valid_out),
        .out_stall_in_0(bb_conv2d1x1_B6_out_stall_in_0),
        .out_stall_out_0(bb_conv2d1x1_B6_out_stall_out_0),
        .out_stall_out_1(bb_conv2d1x1_B6_out_stall_out_1),
        .out_valid_in_0(bb_conv2d1x1_B6_out_valid_in_0),
        .out_valid_in_1(bb_conv2d1x1_B6_out_valid_in_1),
        .out_valid_out_0(bb_conv2d1x1_B6_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B6_sr_1_aunroll_x(BLACKBOX,135)
    conv2d1x1_bb_B6_sr_1 thebb_conv2d1x1_B6_sr_1_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B6_out_stall_out_1),
        .in_i_valid(loop_limiter_conv2d1x11_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_conv2d1x1_B3_out_c0_exe11),
        .in_i_data_2_tpl(bb_conv2d1x1_B3_out_c0_exe12),
        .in_i_data_3_tpl(bb_conv2d1x1_B3_out_c0_exe13),
        .in_i_data_4_tpl(bb_conv2d1x1_B3_out_c0_exe14),
        .in_i_data_5_tpl(bb_conv2d1x1_B3_out_c0_exe15),
        .in_i_data_6_tpl(bb_conv2d1x1_B3_out_c0_exe16),
        .in_i_data_7_tpl(bb_conv2d1x1_B3_out_c0_exe17),
        .in_i_data_8_tpl(bb_conv2d1x1_B3_out_c0_exe18),
        .in_i_data_9_tpl(bb_conv2d1x1_B3_out_c0_exe287),
        .in_i_data_10_tpl(bb_conv2d1x1_B3_out_c0_exe388),
        .in_i_data_11_tpl(bb_conv2d1x1_B3_out_c0_exe489),
        .in_i_data_12_tpl(bb_conv2d1x1_B3_out_c0_exe590),
        .in_i_data_13_tpl(bb_conv2d1x1_B3_out_c0_exe691),
        .in_i_data_14_tpl(bb_conv2d1x1_B3_out_c0_exe792),
        .in_i_data_15_tpl(bb_conv2d1x1_B3_out_c0_exe893),
        .in_i_data_16_tpl(bb_conv2d1x1_B3_out_c0_exe994),
        .in_i_data_17_tpl(bb_conv2d1x1_B3_out_c0_exe1095),
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
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv2d1x11(BLACKBOX,98)
    conv2d1x1_loop_limiter_1 theloop_limiter_conv2d1x11 (
        .in_i_stall(bb_conv2d1x1_B6_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2d1x1_B6_out_exiting_stall_out),
        .in_i_valid(bb_conv2d1x1_B3_out_valid_out_0),
        .in_i_valid_exit(bb_conv2d1x1_B6_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv2d1x11_out_o_stall),
        .out_o_valid(loop_limiter_conv2d1x11_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going19_conv2d1x12_sr(BLACKBOX,59)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going19_2_sr thei_llvm_fpga_pipeline_keep_going19_conv2d1x12_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going19_conv2d1x12_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv2d1x1_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going19_conv2d1x12_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going19_conv2d1x12_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef20(CONSTANT,44)
    assign c_i32_undef20_q = $unsigned(32'b00000000000000000000000000000000);

    // c_float_undef28(FLOATCONSTANT,9)
    assign c_float_undef28_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_conv2d1x1_B3(BLACKBOX,5)
    conv2d1x1_bb_B3 thebb_conv2d1x1_B3 (
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight(in_arg_filter_weight),
        .in_forked26_0(GND_q),
        .in_forked26_1(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_intel_reserved_ffwd_0_0(bb_conv2d1x1_B0_out_intel_reserved_ffwd_0_0),
        .in_lm42_0(c_float_undef28_q),
        .in_lm42_1(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_mul1345_0(c_i32_undef20_q),
        .in_mul1345_1(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_mul2348_0(c_i32_undef20_q),
        .in_mul2348_1(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_mul39_0(c_i32_undef20_q),
        .in_mul39_1(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp2251_0(GND_q),
        .in_notcmp2251_1(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_output_im(in_arg_output_im),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going19_conv2d1x12_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_conv2d1x11_out_o_stall),
        .in_unnamed_conv2d1x17_0(GND_q),
        .in_unnamed_conv2d1x17_1(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_unnamed_conv2d1x18_0(GND_q),
        .in_unnamed_conv2d1x18_1(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_unnamed_conv2d1x19_0(c_i33_undef26_q),
        .in_unnamed_conv2d1x19_1(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going19_conv2d1x12_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1095(bb_conv2d1x1_B3_out_c0_exe1095),
        .out_c0_exe11(bb_conv2d1x1_B3_out_c0_exe11),
        .out_c0_exe12(bb_conv2d1x1_B3_out_c0_exe12),
        .out_c0_exe13(bb_conv2d1x1_B3_out_c0_exe13),
        .out_c0_exe14(bb_conv2d1x1_B3_out_c0_exe14),
        .out_c0_exe15(bb_conv2d1x1_B3_out_c0_exe15),
        .out_c0_exe16(bb_conv2d1x1_B3_out_c0_exe16),
        .out_c0_exe17(bb_conv2d1x1_B3_out_c0_exe17),
        .out_c0_exe18(bb_conv2d1x1_B3_out_c0_exe18),
        .out_c0_exe287(bb_conv2d1x1_B3_out_c0_exe287),
        .out_c0_exe388(bb_conv2d1x1_B3_out_c0_exe388),
        .out_c0_exe489(bb_conv2d1x1_B3_out_c0_exe489),
        .out_c0_exe590(bb_conv2d1x1_B3_out_c0_exe590),
        .out_c0_exe691(bb_conv2d1x1_B3_out_c0_exe691),
        .out_c0_exe792(bb_conv2d1x1_B3_out_c0_exe792),
        .out_c0_exe893(bb_conv2d1x1_B3_out_c0_exe893),
        .out_c0_exe994(bb_conv2d1x1_B3_out_c0_exe994),
        .out_exiting_stall_out(bb_conv2d1x1_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv2d1x1_B3_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_conv2d1x1_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_conv2d1x1_B3_out_stall_out_0),
        .out_stall_out_1(bb_conv2d1x1_B3_out_stall_out_1),
        .out_valid_in_0(bb_conv2d1x1_B3_out_valid_in_0),
        .out_valid_in_1(bb_conv2d1x1_B3_out_valid_in_1),
        .out_valid_out_0(bb_conv2d1x1_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B3_sr_1_aunroll_x(BLACKBOX,132)
    conv2d1x1_bb_B3_sr_1 thebb_conv2d1x1_B3_sr_1_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_conv2d1x10_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_conv2d1x1_B2_out_c0_exe2),
        .in_i_data_2_tpl(bb_conv2d1x1_B2_out_c0_exe3),
        .in_i_data_3_tpl(bb_conv2d1x1_B2_out_c0_exe4),
        .in_i_data_4_tpl(bb_conv2d1x1_B2_out_c0_exe5),
        .in_i_data_5_tpl(bb_conv2d1x1_B2_out_lm),
        .in_i_data_6_tpl(bb_conv2d1x1_B2_out_c0_exe7),
        .in_i_data_7_tpl(bb_conv2d1x1_B2_out_c0_exe8),
        .in_i_data_8_tpl(bb_conv2d1x1_B2_out_c0_exe10),
        .out_o_stall(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_8_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv2d1x10(BLACKBOX,97)
    conv2d1x1_loop_limiter_0 theloop_limiter_conv2d1x10 (
        .in_i_stall(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2d1x1_B3_out_exiting_stall_out),
        .in_i_valid(bb_conv2d1x1_B2_out_valid_out_0),
        .in_i_valid_exit(bb_conv2d1x1_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv2d1x10_out_o_stall),
        .out_o_valid(loop_limiter_conv2d1x10_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going23_conv2d1x12_sr(BLACKBOX,61)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going23_2_sr thei_llvm_fpga_pipeline_keep_going23_conv2d1x12_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going23_conv2d1x12_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv2d1x1_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going23_conv2d1x12_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going23_conv2d1x12_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B1_sr_0_aunroll_x(BLACKBOX,130)
    conv2d1x1_bb_B1_sr_0 thebb_conv2d1x1_B1_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B1_out_stall_out_0),
        .in_i_valid(bb_conv2d1x1_B4_out_valid_out_0),
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
        .in_forked15_0(GND_q),
        .in_forked15_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_0_tpl),
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
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going23_conv2d1x12_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_conv2d1x10_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going23_conv2d1x12_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_conv2d1x1_B2_out_c0_exe10),
        .out_c0_exe2(bb_conv2d1x1_B2_out_c0_exe2),
        .out_c0_exe3(bb_conv2d1x1_B2_out_c0_exe3),
        .out_c0_exe4(bb_conv2d1x1_B2_out_c0_exe4),
        .out_c0_exe5(bb_conv2d1x1_B2_out_c0_exe5),
        .out_c0_exe7(bb_conv2d1x1_B2_out_c0_exe7),
        .out_c0_exe8(bb_conv2d1x1_B2_out_c0_exe8),
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

    // bb_conv2d1x1_B4(BLACKBOX,6)
    conv2d1x1_bb_B4 thebb_conv2d1x1_B4 (
        .in_c0_exe101514_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight(in_arg_filter_weight),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_output_im(in_arg_output_im),
        .in_stall_in_0(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_conv2d1x1_B4_out_stall_in_0),
        .out_stall_out_0(bb_conv2d1x1_B4_out_stall_out_0),
        .out_valid_out_0(bb_conv2d1x1_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B2_sr_1_aunroll_x(BLACKBOX,131)
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

    // conv2d1x1_B2_x(EXTIFACE,56)
    assign conv2d1x1_B2_x_i_capture = GND_q;
    assign conv2d1x1_B2_x_i_clear = GND_q;
    assign conv2d1x1_B2_x_i_enable = VCC_q;
    assign conv2d1x1_B2_x_i_shift = GND_q;
    assign conv2d1x1_B2_x_i_stall_pred = bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_stall;
    assign conv2d1x1_B2_x_i_stall_succ = bb_conv2d1x1_B4_out_stall_in_0;
    assign conv2d1x1_B2_x_i_valid_loop = bb_conv2d1x1_B2_out_valid_in_0;
    assign conv2d1x1_B2_x_i_valid_pred = bb_conv2d1x1_B2_out_valid_in_1;
    assign conv2d1x1_B2_x_i_valid_succ = bb_conv2d1x1_B4_out_valid_out_0;
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

    // conv2d1x1_B3_x(EXTIFACE,57)
    assign conv2d1x1_B3_x_i_capture = GND_q;
    assign conv2d1x1_B3_x_i_clear = GND_q;
    assign conv2d1x1_B3_x_i_enable = VCC_q;
    assign conv2d1x1_B3_x_i_shift = GND_q;
    assign conv2d1x1_B3_x_i_stall_pred = loop_limiter_conv2d1x10_out_o_stall;
    assign conv2d1x1_B3_x_i_stall_succ = bb_conv2d1x1_B5_out_stall_in_0;
    assign conv2d1x1_B3_x_i_valid_loop = bb_conv2d1x1_B3_out_valid_in_0;
    assign conv2d1x1_B3_x_i_valid_pred = bb_conv2d1x1_B3_out_valid_in_1;
    assign conv2d1x1_B3_x_i_valid_succ = bb_conv2d1x1_B5_out_valid_out_0;
    assign conv2d1x1_B3_x_i_capture_bitsignaltemp = conv2d1x1_B3_x_i_capture[0];
    assign conv2d1x1_B3_x_i_clear_bitsignaltemp = conv2d1x1_B3_x_i_clear[0];
    assign conv2d1x1_B3_x_i_enable_bitsignaltemp = conv2d1x1_B3_x_i_enable[0];
    assign conv2d1x1_B3_x_i_shift_bitsignaltemp = conv2d1x1_B3_x_i_shift[0];
    assign conv2d1x1_B3_x_i_stall_pred_bitsignaltemp = conv2d1x1_B3_x_i_stall_pred[0];
    assign conv2d1x1_B3_x_i_stall_succ_bitsignaltemp = conv2d1x1_B3_x_i_stall_succ[0];
    assign conv2d1x1_B3_x_i_valid_loop_bitsignaltemp = conv2d1x1_B3_x_i_valid_loop[0];
    assign conv2d1x1_B3_x_i_valid_pred_bitsignaltemp = conv2d1x1_B3_x_i_valid_pred[0];
    assign conv2d1x1_B3_x_i_valid_succ_bitsignaltemp = conv2d1x1_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv2d1x1.B3")
    ) theconv2d1x1_B3_x (
        .i_capture(conv2d1x1_B3_x_i_capture_bitsignaltemp),
        .i_clear(conv2d1x1_B3_x_i_clear_bitsignaltemp),
        .i_enable(conv2d1x1_B3_x_i_enable_bitsignaltemp),
        .i_shift(conv2d1x1_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv2d1x1_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv2d1x1_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv2d1x1_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv2d1x1_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv2d1x1_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B6_x(EXTIFACE,58)
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

    // out_lm18_conv2d1x1_avm_address(GPOUT,99)
    assign out_lm18_conv2d1x1_avm_address = bb_conv2d1x1_B6_out_lm18_conv2d1x1_avm_address;

    // out_lm18_conv2d1x1_avm_burstcount(GPOUT,100)
    assign out_lm18_conv2d1x1_avm_burstcount = bb_conv2d1x1_B6_out_lm18_conv2d1x1_avm_burstcount;

    // out_lm18_conv2d1x1_avm_byteenable(GPOUT,101)
    assign out_lm18_conv2d1x1_avm_byteenable = bb_conv2d1x1_B6_out_lm18_conv2d1x1_avm_byteenable;

    // out_lm18_conv2d1x1_avm_enable(GPOUT,102)
    assign out_lm18_conv2d1x1_avm_enable = bb_conv2d1x1_B6_out_lm18_conv2d1x1_avm_enable;

    // out_lm18_conv2d1x1_avm_read(GPOUT,103)
    assign out_lm18_conv2d1x1_avm_read = bb_conv2d1x1_B6_out_lm18_conv2d1x1_avm_read;

    // out_lm18_conv2d1x1_avm_write(GPOUT,104)
    assign out_lm18_conv2d1x1_avm_write = bb_conv2d1x1_B6_out_lm18_conv2d1x1_avm_write;

    // out_lm18_conv2d1x1_avm_writedata(GPOUT,105)
    assign out_lm18_conv2d1x1_avm_writedata = bb_conv2d1x1_B6_out_lm18_conv2d1x1_avm_writedata;

    // out_lm20_conv2d1x1_avm_address(GPOUT,106)
    assign out_lm20_conv2d1x1_avm_address = bb_conv2d1x1_B6_out_lm20_conv2d1x1_avm_address;

    // out_lm20_conv2d1x1_avm_burstcount(GPOUT,107)
    assign out_lm20_conv2d1x1_avm_burstcount = bb_conv2d1x1_B6_out_lm20_conv2d1x1_avm_burstcount;

    // out_lm20_conv2d1x1_avm_byteenable(GPOUT,108)
    assign out_lm20_conv2d1x1_avm_byteenable = bb_conv2d1x1_B6_out_lm20_conv2d1x1_avm_byteenable;

    // out_lm20_conv2d1x1_avm_enable(GPOUT,109)
    assign out_lm20_conv2d1x1_avm_enable = bb_conv2d1x1_B6_out_lm20_conv2d1x1_avm_enable;

    // out_lm20_conv2d1x1_avm_read(GPOUT,110)
    assign out_lm20_conv2d1x1_avm_read = bb_conv2d1x1_B6_out_lm20_conv2d1x1_avm_read;

    // out_lm20_conv2d1x1_avm_write(GPOUT,111)
    assign out_lm20_conv2d1x1_avm_write = bb_conv2d1x1_B6_out_lm20_conv2d1x1_avm_write;

    // out_lm20_conv2d1x1_avm_writedata(GPOUT,112)
    assign out_lm20_conv2d1x1_avm_writedata = bb_conv2d1x1_B6_out_lm20_conv2d1x1_avm_writedata;

    // out_lm_conv2d1x1_avm_address(GPOUT,113)
    assign out_lm_conv2d1x1_avm_address = bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_address;

    // out_lm_conv2d1x1_avm_burstcount(GPOUT,114)
    assign out_lm_conv2d1x1_avm_burstcount = bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_burstcount;

    // out_lm_conv2d1x1_avm_byteenable(GPOUT,115)
    assign out_lm_conv2d1x1_avm_byteenable = bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_byteenable;

    // out_lm_conv2d1x1_avm_enable(GPOUT,116)
    assign out_lm_conv2d1x1_avm_enable = bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_enable;

    // out_lm_conv2d1x1_avm_read(GPOUT,117)
    assign out_lm_conv2d1x1_avm_read = bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_read;

    // out_lm_conv2d1x1_avm_write(GPOUT,118)
    assign out_lm_conv2d1x1_avm_write = bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_write;

    // out_lm_conv2d1x1_avm_writedata(GPOUT,119)
    assign out_lm_conv2d1x1_avm_writedata = bb_conv2d1x1_B2_out_lm_conv2d1x1_avm_writedata;

    // out_o_active_unnamed_conv2d1x110(GPOUT,120)
    assign out_o_active_unnamed_conv2d1x110 = bb_conv2d1x1_B5_out_lsu_unnamed_conv2d1x110_o_active;

    // out_stall_out(GPOUT,121)
    assign out_stall_out = bb_conv2d1x1_B0_out_stall_out_0;

    // out_unnamed_conv2d1x110_conv2d1x1_avm_address(GPOUT,122)
    assign out_unnamed_conv2d1x110_conv2d1x1_avm_address = bb_conv2d1x1_B5_out_unnamed_conv2d1x110_conv2d1x1_avm_address;

    // out_unnamed_conv2d1x110_conv2d1x1_avm_burstcount(GPOUT,123)
    assign out_unnamed_conv2d1x110_conv2d1x1_avm_burstcount = bb_conv2d1x1_B5_out_unnamed_conv2d1x110_conv2d1x1_avm_burstcount;

    // out_unnamed_conv2d1x110_conv2d1x1_avm_byteenable(GPOUT,124)
    assign out_unnamed_conv2d1x110_conv2d1x1_avm_byteenable = bb_conv2d1x1_B5_out_unnamed_conv2d1x110_conv2d1x1_avm_byteenable;

    // out_unnamed_conv2d1x110_conv2d1x1_avm_enable(GPOUT,125)
    assign out_unnamed_conv2d1x110_conv2d1x1_avm_enable = bb_conv2d1x1_B5_out_unnamed_conv2d1x110_conv2d1x1_avm_enable;

    // out_unnamed_conv2d1x110_conv2d1x1_avm_read(GPOUT,126)
    assign out_unnamed_conv2d1x110_conv2d1x1_avm_read = bb_conv2d1x1_B5_out_unnamed_conv2d1x110_conv2d1x1_avm_read;

    // out_unnamed_conv2d1x110_conv2d1x1_avm_write(GPOUT,127)
    assign out_unnamed_conv2d1x110_conv2d1x1_avm_write = bb_conv2d1x1_B5_out_unnamed_conv2d1x110_conv2d1x1_avm_write;

    // out_unnamed_conv2d1x110_conv2d1x1_avm_writedata(GPOUT,128)
    assign out_unnamed_conv2d1x110_conv2d1x1_avm_writedata = bb_conv2d1x1_B5_out_unnamed_conv2d1x110_conv2d1x1_avm_writedata;

    // out_valid_out(GPOUT,129)
    assign out_valid_out = bb_conv2d1x1_B1_out_valid_out_0;

endmodule
