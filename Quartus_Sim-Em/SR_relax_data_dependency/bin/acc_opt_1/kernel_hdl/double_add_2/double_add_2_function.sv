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

// SystemVerilog created from double_add_2_function
// SystemVerilog created on Tue May 23 14:04:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_2_function (
    input wire [31:0] in_arg_N,
    input wire [63:0] in_arg_acl_global_size_0,
    input wire [63:0] in_arg_acl_global_size_1,
    input wire [63:0] in_arg_acl_global_size_2,
    input wire [31:0] in_arg_acl_local_size_0,
    input wire [31:0] in_arg_acl_local_size_1,
    input wire [31:0] in_arg_acl_local_size_2,
    input wire [63:0] in_arg_arr,
    input wire [63:0] in_arg_result,
    input wire [63:0] in_lm102_double_add_2_avm_readdata,
    input wire [0:0] in_lm102_double_add_2_avm_readdatavalid,
    input wire [0:0] in_lm102_double_add_2_avm_waitrequest,
    input wire [0:0] in_lm102_double_add_2_avm_writeack,
    input wire [511:0] in_lm7_double_add_2_avm_readdata,
    input wire [0:0] in_lm7_double_add_2_avm_readdatavalid,
    input wire [0:0] in_lm7_double_add_2_avm_waitrequest,
    input wire [0:0] in_lm7_double_add_2_avm_writeack,
    input wire [63:0] in_memdep_3_double_add_2_avm_readdata,
    input wire [0:0] in_memdep_3_double_add_2_avm_readdatavalid,
    input wire [0:0] in_memdep_3_double_add_2_avm_waitrequest,
    input wire [0:0] in_memdep_3_double_add_2_avm_writeack,
    input wire [63:0] in_memdep_4_double_add_2_avm_readdata,
    input wire [0:0] in_memdep_4_double_add_2_avm_readdatavalid,
    input wire [0:0] in_memdep_4_double_add_2_avm_waitrequest,
    input wire [0:0] in_memdep_4_double_add_2_avm_writeack,
    input wire [511:0] in_memdep_double_add_2_avm_readdata,
    input wire [0:0] in_memdep_double_add_2_avm_readdatavalid,
    input wire [0:0] in_memdep_double_add_2_avm_waitrequest,
    input wire [0:0] in_memdep_double_add_2_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [63:0] in_unmaskedload1_double_add_2_avm_readdata,
    input wire [0:0] in_unmaskedload1_double_add_2_avm_readdatavalid,
    input wire [0:0] in_unmaskedload1_double_add_2_avm_waitrequest,
    input wire [0:0] in_unmaskedload1_double_add_2_avm_writeack,
    input wire [63:0] in_unnamed_double_add_22_double_add_2_avm_readdata,
    input wire [0:0] in_unnamed_double_add_22_double_add_2_avm_readdatavalid,
    input wire [0:0] in_unnamed_double_add_22_double_add_2_avm_waitrequest,
    input wire [0:0] in_unnamed_double_add_22_double_add_2_avm_writeack,
    input wire [63:0] in_unnamed_double_add_29_double_add_2_avm_readdata,
    input wire [0:0] in_unnamed_double_add_29_double_add_2_avm_readdatavalid,
    input wire [0:0] in_unnamed_double_add_29_double_add_2_avm_waitrequest,
    input wire [0:0] in_unnamed_double_add_29_double_add_2_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_lm102_double_add_2_avm_address,
    output wire [0:0] out_lm102_double_add_2_avm_burstcount,
    output wire [7:0] out_lm102_double_add_2_avm_byteenable,
    output wire [0:0] out_lm102_double_add_2_avm_enable,
    output wire [0:0] out_lm102_double_add_2_avm_read,
    output wire [0:0] out_lm102_double_add_2_avm_write,
    output wire [63:0] out_lm102_double_add_2_avm_writedata,
    output wire [30:0] out_lm7_double_add_2_avm_address,
    output wire [4:0] out_lm7_double_add_2_avm_burstcount,
    output wire [63:0] out_lm7_double_add_2_avm_byteenable,
    output wire [0:0] out_lm7_double_add_2_avm_enable,
    output wire [0:0] out_lm7_double_add_2_avm_read,
    output wire [0:0] out_lm7_double_add_2_avm_write,
    output wire [511:0] out_lm7_double_add_2_avm_writedata,
    output wire [31:0] out_memdep_3_double_add_2_avm_address,
    output wire [0:0] out_memdep_3_double_add_2_avm_burstcount,
    output wire [7:0] out_memdep_3_double_add_2_avm_byteenable,
    output wire [0:0] out_memdep_3_double_add_2_avm_enable,
    output wire [0:0] out_memdep_3_double_add_2_avm_read,
    output wire [0:0] out_memdep_3_double_add_2_avm_write,
    output wire [63:0] out_memdep_3_double_add_2_avm_writedata,
    output wire [31:0] out_memdep_4_double_add_2_avm_address,
    output wire [0:0] out_memdep_4_double_add_2_avm_burstcount,
    output wire [7:0] out_memdep_4_double_add_2_avm_byteenable,
    output wire [0:0] out_memdep_4_double_add_2_avm_enable,
    output wire [0:0] out_memdep_4_double_add_2_avm_read,
    output wire [0:0] out_memdep_4_double_add_2_avm_write,
    output wire [63:0] out_memdep_4_double_add_2_avm_writedata,
    output wire [30:0] out_memdep_double_add_2_avm_address,
    output wire [4:0] out_memdep_double_add_2_avm_burstcount,
    output wire [63:0] out_memdep_double_add_2_avm_byteenable,
    output wire [0:0] out_memdep_double_add_2_avm_enable,
    output wire [0:0] out_memdep_double_add_2_avm_read,
    output wire [0:0] out_memdep_double_add_2_avm_write,
    output wire [511:0] out_memdep_double_add_2_avm_writedata,
    output wire [0:0] out_o_active_memdep,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unmaskedload1_double_add_2_avm_address,
    output wire [0:0] out_unmaskedload1_double_add_2_avm_burstcount,
    output wire [7:0] out_unmaskedload1_double_add_2_avm_byteenable,
    output wire [0:0] out_unmaskedload1_double_add_2_avm_enable,
    output wire [0:0] out_unmaskedload1_double_add_2_avm_read,
    output wire [0:0] out_unmaskedload1_double_add_2_avm_write,
    output wire [63:0] out_unmaskedload1_double_add_2_avm_writedata,
    output wire [31:0] out_unnamed_double_add_22_double_add_2_avm_address,
    output wire [0:0] out_unnamed_double_add_22_double_add_2_avm_burstcount,
    output wire [7:0] out_unnamed_double_add_22_double_add_2_avm_byteenable,
    output wire [0:0] out_unnamed_double_add_22_double_add_2_avm_enable,
    output wire [0:0] out_unnamed_double_add_22_double_add_2_avm_read,
    output wire [0:0] out_unnamed_double_add_22_double_add_2_avm_write,
    output wire [63:0] out_unnamed_double_add_22_double_add_2_avm_writedata,
    output wire [31:0] out_unnamed_double_add_29_double_add_2_avm_address,
    output wire [0:0] out_unnamed_double_add_29_double_add_2_avm_burstcount,
    output wire [7:0] out_unnamed_double_add_29_double_add_2_avm_byteenable,
    output wire [0:0] out_unnamed_double_add_29_double_add_2_avm_enable,
    output wire [0:0] out_unnamed_double_add_29_double_add_2_avm_read,
    output wire [0:0] out_unnamed_double_add_29_double_add_2_avm_write,
    output wire [63:0] out_unnamed_double_add_29_double_add_2_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_double_add_2_B0_out_feedback_stall_out_0;
    wire [0:0] bb_double_add_2_B0_out_stall_out_0;
    wire [0:0] bb_double_add_2_B0_out_valid_out_0;
    wire [0:0] bb_double_add_2_B1_out_intel_reserved_ffwd_0_0;
    wire [32:0] bb_double_add_2_B1_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_double_add_2_B1_out_stall_out_0;
    wire [0:0] bb_double_add_2_B1_out_valid_out_0;
    wire [0:0] bb_double_add_2_B2_out_pipeline_valid_out;
    wire [0:0] bb_double_add_2_B2_out_stall_in_0;
    wire [0:0] bb_double_add_2_B2_out_stall_out_0;
    wire [0:0] bb_double_add_2_B2_out_stall_out_1;
    wire [31:0] bb_double_add_2_B2_out_unnamed_double_add_22_double_add_2_avm_address;
    wire [0:0] bb_double_add_2_B2_out_unnamed_double_add_22_double_add_2_avm_burstcount;
    wire [7:0] bb_double_add_2_B2_out_unnamed_double_add_22_double_add_2_avm_byteenable;
    wire [0:0] bb_double_add_2_B2_out_unnamed_double_add_22_double_add_2_avm_enable;
    wire [0:0] bb_double_add_2_B2_out_unnamed_double_add_22_double_add_2_avm_read;
    wire [0:0] bb_double_add_2_B2_out_unnamed_double_add_22_double_add_2_avm_write;
    wire [63:0] bb_double_add_2_B2_out_unnamed_double_add_22_double_add_2_avm_writedata;
    wire [0:0] bb_double_add_2_B2_out_valid_in_0;
    wire [0:0] bb_double_add_2_B2_out_valid_in_1;
    wire [0:0] bb_double_add_2_B2_out_valid_out_0;
    wire [0:0] bb_double_add_2_B3_out_stall_out_0;
    wire [0:0] bb_double_add_2_B3_out_valid_out_0;
    wire [0:0] bb_double_add_2_B4_out_c0_exe160;
    wire [0:0] bb_double_add_2_B4_out_c0_exe3;
    wire [0:0] bb_double_add_2_B4_out_c0_exe4;
    wire [0:0] bb_double_add_2_B4_out_feedback_stall_out_17;
    wire [30:0] bb_double_add_2_B4_out_lm7_double_add_2_avm_address;
    wire [4:0] bb_double_add_2_B4_out_lm7_double_add_2_avm_burstcount;
    wire [63:0] bb_double_add_2_B4_out_lm7_double_add_2_avm_byteenable;
    wire [0:0] bb_double_add_2_B4_out_lm7_double_add_2_avm_enable;
    wire [0:0] bb_double_add_2_B4_out_lm7_double_add_2_avm_read;
    wire [0:0] bb_double_add_2_B4_out_lm7_double_add_2_avm_write;
    wire [511:0] bb_double_add_2_B4_out_lm7_double_add_2_avm_writedata;
    wire [31:0] bb_double_add_2_B4_out_memdep_3_double_add_2_avm_address;
    wire [0:0] bb_double_add_2_B4_out_memdep_3_double_add_2_avm_burstcount;
    wire [7:0] bb_double_add_2_B4_out_memdep_3_double_add_2_avm_byteenable;
    wire [0:0] bb_double_add_2_B4_out_memdep_3_double_add_2_avm_enable;
    wire [0:0] bb_double_add_2_B4_out_memdep_3_double_add_2_avm_read;
    wire [0:0] bb_double_add_2_B4_out_memdep_3_double_add_2_avm_write;
    wire [63:0] bb_double_add_2_B4_out_memdep_3_double_add_2_avm_writedata;
    wire [0:0] bb_double_add_2_B4_out_memdep_phi5_pop17;
    wire [0:0] bb_double_add_2_B4_out_pipeline_valid_out;
    wire [0:0] bb_double_add_2_B4_out_stall_out_0;
    wire [0:0] bb_double_add_2_B4_out_stall_out_1;
    wire [31:0] bb_double_add_2_B4_out_unmaskedload1_double_add_2_avm_address;
    wire [0:0] bb_double_add_2_B4_out_unmaskedload1_double_add_2_avm_burstcount;
    wire [7:0] bb_double_add_2_B4_out_unmaskedload1_double_add_2_avm_byteenable;
    wire [0:0] bb_double_add_2_B4_out_unmaskedload1_double_add_2_avm_enable;
    wire [0:0] bb_double_add_2_B4_out_unmaskedload1_double_add_2_avm_read;
    wire [0:0] bb_double_add_2_B4_out_unmaskedload1_double_add_2_avm_write;
    wire [63:0] bb_double_add_2_B4_out_unmaskedload1_double_add_2_avm_writedata;
    wire [0:0] bb_double_add_2_B4_out_valid_in_0;
    wire [0:0] bb_double_add_2_B4_out_valid_in_1;
    wire [0:0] bb_double_add_2_B4_out_valid_out_0;
    wire [0:0] bb_double_add_2_B5_out_feedback_out_17;
    wire [0:0] bb_double_add_2_B5_out_feedback_valid_out_17;
    wire [0:0] bb_double_add_2_B5_out_stall_in_0;
    wire [0:0] bb_double_add_2_B5_out_stall_out_0;
    wire [0:0] bb_double_add_2_B5_out_valid_out_0;
    wire [0:0] bb_double_add_2_B6_out_c0_exe272;
    wire [0:0] bb_double_add_2_B6_out_c0_exe575;
    wire [0:0] bb_double_add_2_B6_out_c0_exe6;
    wire [0:0] bb_double_add_2_B6_out_exiting_stall_out;
    wire [0:0] bb_double_add_2_B6_out_exiting_valid_out;
    wire [31:0] bb_double_add_2_B6_out_lm102_double_add_2_avm_address;
    wire [0:0] bb_double_add_2_B6_out_lm102_double_add_2_avm_burstcount;
    wire [7:0] bb_double_add_2_B6_out_lm102_double_add_2_avm_byteenable;
    wire [0:0] bb_double_add_2_B6_out_lm102_double_add_2_avm_enable;
    wire [0:0] bb_double_add_2_B6_out_lm102_double_add_2_avm_read;
    wire [0:0] bb_double_add_2_B6_out_lm102_double_add_2_avm_write;
    wire [63:0] bb_double_add_2_B6_out_lm102_double_add_2_avm_writedata;
    wire [31:0] bb_double_add_2_B6_out_memdep_4_double_add_2_avm_address;
    wire [0:0] bb_double_add_2_B6_out_memdep_4_double_add_2_avm_burstcount;
    wire [7:0] bb_double_add_2_B6_out_memdep_4_double_add_2_avm_byteenable;
    wire [0:0] bb_double_add_2_B6_out_memdep_4_double_add_2_avm_enable;
    wire [0:0] bb_double_add_2_B6_out_memdep_4_double_add_2_avm_read;
    wire [0:0] bb_double_add_2_B6_out_memdep_4_double_add_2_avm_write;
    wire [63:0] bb_double_add_2_B6_out_memdep_4_double_add_2_avm_writedata;
    wire [0:0] bb_double_add_2_B6_out_pipeline_valid_out;
    wire [0:0] bb_double_add_2_B6_out_stall_in_0;
    wire [0:0] bb_double_add_2_B6_out_stall_out_0;
    wire [0:0] bb_double_add_2_B6_out_stall_out_1;
    wire [0:0] bb_double_add_2_B6_out_valid_in_0;
    wire [0:0] bb_double_add_2_B6_out_valid_in_1;
    wire [0:0] bb_double_add_2_B6_out_valid_out_0;
    wire [0:0] bb_double_add_2_B7_out_feedback_out_0;
    wire [0:0] bb_double_add_2_B7_out_feedback_valid_out_0;
    wire [0:0] bb_double_add_2_B7_out_lsu_memdep_o_active;
    wire [30:0] bb_double_add_2_B7_out_memdep_double_add_2_avm_address;
    wire [4:0] bb_double_add_2_B7_out_memdep_double_add_2_avm_burstcount;
    wire [63:0] bb_double_add_2_B7_out_memdep_double_add_2_avm_byteenable;
    wire [0:0] bb_double_add_2_B7_out_memdep_double_add_2_avm_enable;
    wire [0:0] bb_double_add_2_B7_out_memdep_double_add_2_avm_read;
    wire [0:0] bb_double_add_2_B7_out_memdep_double_add_2_avm_write;
    wire [511:0] bb_double_add_2_B7_out_memdep_double_add_2_avm_writedata;
    wire [0:0] bb_double_add_2_B7_out_stall_out_0;
    wire [0:0] bb_double_add_2_B7_out_valid_out_0;
    wire [63:0] bb_double_add_2_B8_out_intel_reserved_ffwd_2_0;
    wire [0:0] bb_double_add_2_B8_out_pipeline_valid_out;
    wire [0:0] bb_double_add_2_B8_out_stall_in_0;
    wire [0:0] bb_double_add_2_B8_out_stall_out_0;
    wire [0:0] bb_double_add_2_B8_out_stall_out_1;
    wire [31:0] bb_double_add_2_B8_out_unnamed_double_add_29_double_add_2_avm_address;
    wire [0:0] bb_double_add_2_B8_out_unnamed_double_add_29_double_add_2_avm_burstcount;
    wire [7:0] bb_double_add_2_B8_out_unnamed_double_add_29_double_add_2_avm_byteenable;
    wire [0:0] bb_double_add_2_B8_out_unnamed_double_add_29_double_add_2_avm_enable;
    wire [0:0] bb_double_add_2_B8_out_unnamed_double_add_29_double_add_2_avm_read;
    wire [0:0] bb_double_add_2_B8_out_unnamed_double_add_29_double_add_2_avm_write;
    wire [63:0] bb_double_add_2_B8_out_unnamed_double_add_29_double_add_2_avm_writedata;
    wire [0:0] bb_double_add_2_B8_out_valid_in_0;
    wire [0:0] bb_double_add_2_B8_out_valid_in_1;
    wire [0:0] bb_double_add_2_B8_out_valid_out_0;
    wire [1:0] c_i2_037_q;
    wire [0:0] double_add_2_B2_x_i_capture;
    wire double_add_2_B2_x_i_capture_bitsignaltemp;
    wire [0:0] double_add_2_B2_x_i_clear;
    wire double_add_2_B2_x_i_clear_bitsignaltemp;
    wire [0:0] double_add_2_B2_x_i_enable;
    wire double_add_2_B2_x_i_enable_bitsignaltemp;
    wire [0:0] double_add_2_B2_x_i_shift;
    wire double_add_2_B2_x_i_shift_bitsignaltemp;
    wire [0:0] double_add_2_B2_x_i_stall_pred;
    wire double_add_2_B2_x_i_stall_pred_bitsignaltemp;
    wire [0:0] double_add_2_B2_x_i_stall_succ;
    wire double_add_2_B2_x_i_stall_succ_bitsignaltemp;
    wire [0:0] double_add_2_B2_x_i_valid_loop;
    wire double_add_2_B2_x_i_valid_loop_bitsignaltemp;
    wire [0:0] double_add_2_B2_x_i_valid_pred;
    wire double_add_2_B2_x_i_valid_pred_bitsignaltemp;
    wire [0:0] double_add_2_B2_x_i_valid_succ;
    wire double_add_2_B2_x_i_valid_succ_bitsignaltemp;
    wire [0:0] double_add_2_B4_x_i_capture;
    wire double_add_2_B4_x_i_capture_bitsignaltemp;
    wire [0:0] double_add_2_B4_x_i_clear;
    wire double_add_2_B4_x_i_clear_bitsignaltemp;
    wire [0:0] double_add_2_B4_x_i_enable;
    wire double_add_2_B4_x_i_enable_bitsignaltemp;
    wire [0:0] double_add_2_B4_x_i_shift;
    wire double_add_2_B4_x_i_shift_bitsignaltemp;
    wire [0:0] double_add_2_B4_x_i_stall_pred;
    wire double_add_2_B4_x_i_stall_pred_bitsignaltemp;
    wire [0:0] double_add_2_B4_x_i_stall_succ;
    wire double_add_2_B4_x_i_stall_succ_bitsignaltemp;
    wire [0:0] double_add_2_B4_x_i_valid_loop;
    wire double_add_2_B4_x_i_valid_loop_bitsignaltemp;
    wire [0:0] double_add_2_B4_x_i_valid_pred;
    wire double_add_2_B4_x_i_valid_pred_bitsignaltemp;
    wire [0:0] double_add_2_B4_x_i_valid_succ;
    wire double_add_2_B4_x_i_valid_succ_bitsignaltemp;
    wire [0:0] double_add_2_B6_x_i_capture;
    wire double_add_2_B6_x_i_capture_bitsignaltemp;
    wire [0:0] double_add_2_B6_x_i_clear;
    wire double_add_2_B6_x_i_clear_bitsignaltemp;
    wire [0:0] double_add_2_B6_x_i_enable;
    wire double_add_2_B6_x_i_enable_bitsignaltemp;
    wire [0:0] double_add_2_B6_x_i_shift;
    wire double_add_2_B6_x_i_shift_bitsignaltemp;
    wire [0:0] double_add_2_B6_x_i_stall_pred;
    wire double_add_2_B6_x_i_stall_pred_bitsignaltemp;
    wire [0:0] double_add_2_B6_x_i_stall_succ;
    wire double_add_2_B6_x_i_stall_succ_bitsignaltemp;
    wire [0:0] double_add_2_B6_x_i_valid_loop;
    wire double_add_2_B6_x_i_valid_loop_bitsignaltemp;
    wire [0:0] double_add_2_B6_x_i_valid_pred;
    wire double_add_2_B6_x_i_valid_pred_bitsignaltemp;
    wire [0:0] double_add_2_B6_x_i_valid_succ;
    wire double_add_2_B6_x_i_valid_succ_bitsignaltemp;
    wire [0:0] double_add_2_B8_x_i_capture;
    wire double_add_2_B8_x_i_capture_bitsignaltemp;
    wire [0:0] double_add_2_B8_x_i_clear;
    wire double_add_2_B8_x_i_clear_bitsignaltemp;
    wire [0:0] double_add_2_B8_x_i_enable;
    wire double_add_2_B8_x_i_enable_bitsignaltemp;
    wire [0:0] double_add_2_B8_x_i_shift;
    wire double_add_2_B8_x_i_shift_bitsignaltemp;
    wire [0:0] double_add_2_B8_x_i_stall_pred;
    wire double_add_2_B8_x_i_stall_pred_bitsignaltemp;
    wire [0:0] double_add_2_B8_x_i_stall_succ;
    wire double_add_2_B8_x_i_stall_succ_bitsignaltemp;
    wire [0:0] double_add_2_B8_x_i_valid_loop;
    wire double_add_2_B8_x_i_valid_loop_bitsignaltemp;
    wire [0:0] double_add_2_B8_x_i_valid_pred;
    wire double_add_2_B8_x_i_valid_pred_bitsignaltemp;
    wire [0:0] double_add_2_B8_x_i_valid_succ;
    wire double_add_2_B8_x_i_valid_succ_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_double_add_26_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_double_add_26_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_double_add_26_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_double_add_26_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_double_add_22_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_double_add_22_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_double_add_22_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_double_add_22_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going34_double_add_26_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going34_double_add_26_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going34_double_add_26_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going34_double_add_26_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_26_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_26_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_26_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_26_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_double_add_20_out_o_stall;
    wire [0:0] loop_limiter_double_add_20_out_o_valid;
    wire [0:0] bb_double_add_2_B1_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_double_add_2_B1_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_double_add_2_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_double_add_2_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_double_add_2_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_double_add_2_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_double_add_2_B3_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_double_add_2_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_double_add_2_B4_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_double_add_2_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_double_add_2_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_double_add_2_B5_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_double_add_2_B5_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_double_add_2_B5_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_double_add_2_B5_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_double_add_2_B6_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_double_add_2_B6_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_double_add_2_B6_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_double_add_2_B6_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_double_add_2_B6_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_double_add_2_B6_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_double_add_2_B6_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_double_add_2_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_double_add_2_B7_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_double_add_2_B8_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_double_add_2_B8_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_double_add_2_B8_sr_1_aunroll_x_out_o_data_0_tpl;


    // c_i2_037(CONSTANT,42)
    assign c_i2_037_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going34_double_add_26_valid_fifo(BLACKBOX,55)
    double_add_2_i_llvm_fpga_pipeline_keep_going34_6_valid_fifo thei_llvm_fpga_pipeline_keep_going34_double_add_26_valid_fifo (
        .in_data_in(c_i2_037_q),
        .in_stall_in(bb_double_add_2_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going34_double_add_26_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going34_double_add_26_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going34_double_add_26_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going27_double_add_22_valid_fifo(BLACKBOX,53)
    double_add_2_i_llvm_fpga_pipeline_keep_going27_2_valid_fifo thei_llvm_fpga_pipeline_keep_going27_double_add_22_valid_fifo (
        .in_data_in(c_i2_037_q),
        .in_stall_in(bb_double_add_2_B4_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going27_double_add_22_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going27_double_add_22_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going27_double_add_22_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going13_double_add_26_valid_fifo(BLACKBOX,51)
    double_add_2_i_llvm_fpga_pipeline_keep_going13_6_valid_fifo thei_llvm_fpga_pipeline_keep_going13_double_add_26_valid_fifo (
        .in_data_in(c_i2_037_q),
        .in_stall_in(bb_double_add_2_B6_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going13_double_add_26_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going13_double_add_26_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going13_double_add_26_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_double_add_2_B5_sr_0_aunroll_x(BLACKBOX,166)
    double_add_2_bb_B5_sr_0 thebb_double_add_2_B5_sr_0_aunroll_x (
        .in_i_stall(bb_double_add_2_B5_out_stall_out_0),
        .in_i_valid(bb_double_add_2_B6_out_valid_out_0),
        .in_i_data_0_tpl(bb_double_add_2_B6_out_c0_exe272),
        .in_i_data_1_tpl(bb_double_add_2_B6_out_c0_exe575),
        .in_i_data_2_tpl(bb_double_add_2_B6_out_c0_exe6),
        .out_o_stall(bb_double_add_2_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_double_add_2_B5_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_double_add_2_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_double_add_2_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_double_add_2_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going13_double_add_26_sr(BLACKBOX,50)
    double_add_2_i_llvm_fpga_pipeline_keep_going13_6_sr thei_llvm_fpga_pipeline_keep_going13_double_add_26_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going13_double_add_26_valid_fifo_out_stall_out),
        .in_i_valid(bb_double_add_2_B6_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going13_double_add_26_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going13_double_add_26_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_double_add_2_B6(BLACKBOX,8)
    double_add_2_bb_B6 thebb_double_add_2_B6 (
        .in_arr(in_arg_arr),
        .in_flush(in_start),
        .in_forked10_0(GND_q),
        .in_forked10_1(bb_double_add_2_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_0_0(bb_double_add_2_B1_out_intel_reserved_ffwd_0_0),
        .in_lm102_double_add_2_avm_readdata(in_lm102_double_add_2_avm_readdata),
        .in_lm102_double_add_2_avm_readdatavalid(in_lm102_double_add_2_avm_readdatavalid),
        .in_lm102_double_add_2_avm_waitrequest(in_lm102_double_add_2_avm_waitrequest),
        .in_lm102_double_add_2_avm_writeack(in_lm102_double_add_2_avm_writeack),
        .in_memdep_4_double_add_2_avm_readdata(in_memdep_4_double_add_2_avm_readdata),
        .in_memdep_4_double_add_2_avm_readdatavalid(in_memdep_4_double_add_2_avm_readdatavalid),
        .in_memdep_4_double_add_2_avm_waitrequest(in_memdep_4_double_add_2_avm_waitrequest),
        .in_memdep_4_double_add_2_avm_writeack(in_memdep_4_double_add_2_avm_writeack),
        .in_memdep_phi5_pop1748_0(GND_q),
        .in_memdep_phi5_pop1748_1(bb_double_add_2_B6_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp2649_0(GND_q),
        .in_notcmp2649_1(bb_double_add_2_B6_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going13_double_add_26_sr_out_o_stall),
        .in_result(in_arg_result),
        .in_stall_in_0(bb_double_add_2_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_double_add_26_0(GND_q),
        .in_unnamed_double_add_26_1(bb_double_add_2_B6_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_unnamed_double_add_27_0(GND_q),
        .in_unnamed_double_add_27_1(bb_double_add_2_B6_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going13_double_add_26_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_double_add_2_B6_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe272(bb_double_add_2_B6_out_c0_exe272),
        .out_c0_exe575(bb_double_add_2_B6_out_c0_exe575),
        .out_c0_exe6(bb_double_add_2_B6_out_c0_exe6),
        .out_exiting_stall_out(bb_double_add_2_B6_out_exiting_stall_out),
        .out_exiting_valid_out(bb_double_add_2_B6_out_exiting_valid_out),
        .out_lm102_double_add_2_avm_address(bb_double_add_2_B6_out_lm102_double_add_2_avm_address),
        .out_lm102_double_add_2_avm_burstcount(bb_double_add_2_B6_out_lm102_double_add_2_avm_burstcount),
        .out_lm102_double_add_2_avm_byteenable(bb_double_add_2_B6_out_lm102_double_add_2_avm_byteenable),
        .out_lm102_double_add_2_avm_enable(bb_double_add_2_B6_out_lm102_double_add_2_avm_enable),
        .out_lm102_double_add_2_avm_read(bb_double_add_2_B6_out_lm102_double_add_2_avm_read),
        .out_lm102_double_add_2_avm_write(bb_double_add_2_B6_out_lm102_double_add_2_avm_write),
        .out_lm102_double_add_2_avm_writedata(bb_double_add_2_B6_out_lm102_double_add_2_avm_writedata),
        .out_memdep_4_double_add_2_avm_address(bb_double_add_2_B6_out_memdep_4_double_add_2_avm_address),
        .out_memdep_4_double_add_2_avm_burstcount(bb_double_add_2_B6_out_memdep_4_double_add_2_avm_burstcount),
        .out_memdep_4_double_add_2_avm_byteenable(bb_double_add_2_B6_out_memdep_4_double_add_2_avm_byteenable),
        .out_memdep_4_double_add_2_avm_enable(bb_double_add_2_B6_out_memdep_4_double_add_2_avm_enable),
        .out_memdep_4_double_add_2_avm_read(bb_double_add_2_B6_out_memdep_4_double_add_2_avm_read),
        .out_memdep_4_double_add_2_avm_write(bb_double_add_2_B6_out_memdep_4_double_add_2_avm_write),
        .out_memdep_4_double_add_2_avm_writedata(bb_double_add_2_B6_out_memdep_4_double_add_2_avm_writedata),
        .out_pipeline_valid_out(bb_double_add_2_B6_out_pipeline_valid_out),
        .out_stall_in_0(bb_double_add_2_B6_out_stall_in_0),
        .out_stall_out_0(bb_double_add_2_B6_out_stall_out_0),
        .out_stall_out_1(bb_double_add_2_B6_out_stall_out_1),
        .out_valid_in_0(bb_double_add_2_B6_out_valid_in_0),
        .out_valid_in_1(bb_double_add_2_B6_out_valid_in_1),
        .out_valid_out_0(bb_double_add_2_B6_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_double_add_2_B6_sr_1_aunroll_x(BLACKBOX,167)
    double_add_2_bb_B6_sr_1 thebb_double_add_2_B6_sr_1_aunroll_x (
        .in_i_stall(bb_double_add_2_B6_out_stall_out_1),
        .in_i_valid(loop_limiter_double_add_20_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_double_add_2_B4_out_c0_exe160),
        .in_i_data_2_tpl(bb_double_add_2_B4_out_memdep_phi5_pop17),
        .in_i_data_3_tpl(bb_double_add_2_B4_out_c0_exe3),
        .in_i_data_4_tpl(bb_double_add_2_B4_out_c0_exe4),
        .out_o_stall(bb_double_add_2_B6_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_double_add_2_B6_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_double_add_2_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_double_add_2_B6_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_double_add_2_B6_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_double_add_2_B6_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_double_add_2_B6_sr_1_aunroll_x_out_o_data_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_double_add_20(BLACKBOX,102)
    double_add_2_loop_limiter_0 theloop_limiter_double_add_20 (
        .in_i_stall(bb_double_add_2_B6_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_double_add_2_B6_out_exiting_stall_out),
        .in_i_valid(bb_double_add_2_B4_out_valid_out_0),
        .in_i_valid_exit(bb_double_add_2_B6_out_exiting_valid_out),
        .out_o_stall(loop_limiter_double_add_20_out_o_stall),
        .out_o_valid(loop_limiter_double_add_20_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going27_double_add_22_sr(BLACKBOX,52)
    double_add_2_i_llvm_fpga_pipeline_keep_going27_2_sr thei_llvm_fpga_pipeline_keep_going27_double_add_22_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going27_double_add_22_valid_fifo_out_stall_out),
        .in_i_valid(bb_double_add_2_B4_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going27_double_add_22_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going27_double_add_22_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_double_add_26_valid_fifo(BLACKBOX,57)
    double_add_2_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_double_add_26_valid_fifo (
        .in_data_in(c_i2_037_q),
        .in_stall_in(bb_double_add_2_B8_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_double_add_26_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_double_add_26_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_double_add_26_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_double_add_2_B0(BLACKBOX,2)
    double_add_2_bb_B0 thebb_double_add_2_B0 (
        .in_N(in_arg_N),
        .in_arr(in_arg_arr),
        .in_feedback_in_0(bb_double_add_2_B7_out_feedback_out_0),
        .in_feedback_valid_in_0(bb_double_add_2_B7_out_feedback_valid_out_0),
        .in_result(in_arg_result),
        .in_stall_in_0(bb_double_add_2_B2_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_feedback_stall_out_0(bb_double_add_2_B0_out_feedback_stall_out_0),
        .out_stall_out_0(bb_double_add_2_B0_out_stall_out_0),
        .out_valid_out_0(bb_double_add_2_B0_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_double_add_2_B7(BLACKBOX,9)
    double_add_2_bb_B7 thebb_double_add_2_B7 (
        .in_feedback_stall_in_0(bb_double_add_2_B0_out_feedback_stall_out_0),
        .in_flush(in_start),
        .in_intel_reserved_ffwd_2_0(bb_double_add_2_B8_out_intel_reserved_ffwd_2_0),
        .in_memdep_double_add_2_avm_readdata(in_memdep_double_add_2_avm_readdata),
        .in_memdep_double_add_2_avm_readdatavalid(in_memdep_double_add_2_avm_readdatavalid),
        .in_memdep_double_add_2_avm_waitrequest(in_memdep_double_add_2_avm_waitrequest),
        .in_memdep_double_add_2_avm_writeack(in_memdep_double_add_2_avm_writeack),
        .in_result(in_arg_result),
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(bb_double_add_2_B7_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_0(bb_double_add_2_B7_out_feedback_out_0),
        .out_feedback_valid_out_0(bb_double_add_2_B7_out_feedback_valid_out_0),
        .out_lsu_memdep_o_active(bb_double_add_2_B7_out_lsu_memdep_o_active),
        .out_memdep_double_add_2_avm_address(bb_double_add_2_B7_out_memdep_double_add_2_avm_address),
        .out_memdep_double_add_2_avm_burstcount(bb_double_add_2_B7_out_memdep_double_add_2_avm_burstcount),
        .out_memdep_double_add_2_avm_byteenable(bb_double_add_2_B7_out_memdep_double_add_2_avm_byteenable),
        .out_memdep_double_add_2_avm_enable(bb_double_add_2_B7_out_memdep_double_add_2_avm_enable),
        .out_memdep_double_add_2_avm_read(bb_double_add_2_B7_out_memdep_double_add_2_avm_read),
        .out_memdep_double_add_2_avm_write(bb_double_add_2_B7_out_memdep_double_add_2_avm_write),
        .out_memdep_double_add_2_avm_writedata(bb_double_add_2_B7_out_memdep_double_add_2_avm_writedata),
        .out_stall_out_0(bb_double_add_2_B7_out_stall_out_0),
        .out_valid_out_0(bb_double_add_2_B7_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_double_add_2_B7_sr_0_aunroll_x(BLACKBOX,168)
    double_add_2_bb_B7_sr_0 thebb_double_add_2_B7_sr_0_aunroll_x (
        .in_i_stall(bb_double_add_2_B7_out_stall_out_0),
        .in_i_valid(bb_double_add_2_B8_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_double_add_2_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_double_add_2_B7_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_double_add_26_sr(BLACKBOX,56)
    double_add_2_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_double_add_26_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_double_add_26_valid_fifo_out_stall_out),
        .in_i_valid(bb_double_add_2_B8_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_double_add_26_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_double_add_26_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_double_add_2_B8(BLACKBOX,10)
    double_add_2_bb_B8 thebb_double_add_2_B8 (
        .in_flush(in_start),
        .in_forked7_0(GND_q),
        .in_forked7_1(bb_double_add_2_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_double_add_26_sr_out_o_stall),
        .in_result(in_arg_result),
        .in_stall_in_0(bb_double_add_2_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_double_add_29_double_add_2_avm_readdata(in_unnamed_double_add_29_double_add_2_avm_readdata),
        .in_unnamed_double_add_29_double_add_2_avm_readdatavalid(in_unnamed_double_add_29_double_add_2_avm_readdatavalid),
        .in_unnamed_double_add_29_double_add_2_avm_waitrequest(in_unnamed_double_add_29_double_add_2_avm_waitrequest),
        .in_unnamed_double_add_29_double_add_2_avm_writeack(in_unnamed_double_add_29_double_add_2_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_double_add_26_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_double_add_2_B8_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_intel_reserved_ffwd_2_0(bb_double_add_2_B8_out_intel_reserved_ffwd_2_0),
        .out_pipeline_valid_out(bb_double_add_2_B8_out_pipeline_valid_out),
        .out_stall_in_0(bb_double_add_2_B8_out_stall_in_0),
        .out_stall_out_0(bb_double_add_2_B8_out_stall_out_0),
        .out_stall_out_1(bb_double_add_2_B8_out_stall_out_1),
        .out_unnamed_double_add_29_double_add_2_avm_address(bb_double_add_2_B8_out_unnamed_double_add_29_double_add_2_avm_address),
        .out_unnamed_double_add_29_double_add_2_avm_burstcount(bb_double_add_2_B8_out_unnamed_double_add_29_double_add_2_avm_burstcount),
        .out_unnamed_double_add_29_double_add_2_avm_byteenable(bb_double_add_2_B8_out_unnamed_double_add_29_double_add_2_avm_byteenable),
        .out_unnamed_double_add_29_double_add_2_avm_enable(bb_double_add_2_B8_out_unnamed_double_add_29_double_add_2_avm_enable),
        .out_unnamed_double_add_29_double_add_2_avm_read(bb_double_add_2_B8_out_unnamed_double_add_29_double_add_2_avm_read),
        .out_unnamed_double_add_29_double_add_2_avm_write(bb_double_add_2_B8_out_unnamed_double_add_29_double_add_2_avm_write),
        .out_unnamed_double_add_29_double_add_2_avm_writedata(bb_double_add_2_B8_out_unnamed_double_add_29_double_add_2_avm_writedata),
        .out_valid_in_0(bb_double_add_2_B8_out_valid_in_0),
        .out_valid_in_1(bb_double_add_2_B8_out_valid_in_1),
        .out_valid_out_0(bb_double_add_2_B8_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_double_add_2_B8_sr_1_aunroll_x(BLACKBOX,169)
    double_add_2_bb_B8_sr_1 thebb_double_add_2_B8_sr_1_aunroll_x (
        .in_i_stall(bb_double_add_2_B8_out_stall_out_1),
        .in_i_valid(bb_double_add_2_B3_out_valid_out_0),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_double_add_2_B8_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_double_add_2_B8_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_double_add_2_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_double_add_2_B3(BLACKBOX,5)
    double_add_2_bb_B3 thebb_double_add_2_B3 (
        .in_result(in_arg_result),
        .in_stall_in_0(bb_double_add_2_B8_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_double_add_2_B3_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_double_add_2_B3_out_stall_out_0),
        .out_valid_out_0(bb_double_add_2_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_double_add_2_B3_sr_0_aunroll_x(BLACKBOX,164)
    double_add_2_bb_B3_sr_0 thebb_double_add_2_B3_sr_0_aunroll_x (
        .in_i_stall(bb_double_add_2_B3_out_stall_out_0),
        .in_i_valid(bb_double_add_2_B5_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_double_add_2_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_double_add_2_B3_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_double_add_2_B5(BLACKBOX,7)
    double_add_2_bb_B5 thebb_double_add_2_B5 (
        .in_arr(in_arg_arr),
        .in_c0_exe2721_0(bb_double_add_2_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe5752_0(bb_double_add_2_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe63_0(bb_double_add_2_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_feedback_stall_in_17(bb_double_add_2_B4_out_feedback_stall_out_17),
        .in_result(in_arg_result),
        .in_stall_in_0(bb_double_add_2_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_double_add_2_B5_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_17(bb_double_add_2_B5_out_feedback_out_17),
        .out_feedback_valid_out_17(bb_double_add_2_B5_out_feedback_valid_out_17),
        .out_stall_in_0(bb_double_add_2_B5_out_stall_in_0),
        .out_stall_out_0(bb_double_add_2_B5_out_stall_out_0),
        .out_valid_out_0(bb_double_add_2_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_double_add_2_B4(BLACKBOX,6)
    double_add_2_bb_B4 thebb_double_add_2_B4 (
        .in_arr(in_arg_arr),
        .in_feedback_in_17(bb_double_add_2_B5_out_feedback_out_17),
        .in_feedback_valid_in_17(bb_double_add_2_B5_out_feedback_valid_out_17),
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_double_add_2_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_0_0(bb_double_add_2_B1_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_double_add_2_B1_out_intel_reserved_ffwd_1_0),
        .in_lm7_double_add_2_avm_readdata(in_lm7_double_add_2_avm_readdata),
        .in_lm7_double_add_2_avm_readdatavalid(in_lm7_double_add_2_avm_readdatavalid),
        .in_lm7_double_add_2_avm_waitrequest(in_lm7_double_add_2_avm_waitrequest),
        .in_lm7_double_add_2_avm_writeack(in_lm7_double_add_2_avm_writeack),
        .in_memdep_3_double_add_2_avm_readdata(in_memdep_3_double_add_2_avm_readdata),
        .in_memdep_3_double_add_2_avm_readdatavalid(in_memdep_3_double_add_2_avm_readdatavalid),
        .in_memdep_3_double_add_2_avm_waitrequest(in_memdep_3_double_add_2_avm_waitrequest),
        .in_memdep_3_double_add_2_avm_writeack(in_memdep_3_double_add_2_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going27_double_add_22_sr_out_o_stall),
        .in_result(in_arg_result),
        .in_stall_in_0(loop_limiter_double_add_20_out_o_stall),
        .in_unmaskedload1_double_add_2_avm_readdata(in_unmaskedload1_double_add_2_avm_readdata),
        .in_unmaskedload1_double_add_2_avm_readdatavalid(in_unmaskedload1_double_add_2_avm_readdatavalid),
        .in_unmaskedload1_double_add_2_avm_waitrequest(in_unmaskedload1_double_add_2_avm_waitrequest),
        .in_unmaskedload1_double_add_2_avm_writeack(in_unmaskedload1_double_add_2_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going27_double_add_22_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_double_add_2_B4_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe160(bb_double_add_2_B4_out_c0_exe160),
        .out_c0_exe3(bb_double_add_2_B4_out_c0_exe3),
        .out_c0_exe4(bb_double_add_2_B4_out_c0_exe4),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_17(bb_double_add_2_B4_out_feedback_stall_out_17),
        .out_lm7_double_add_2_avm_address(bb_double_add_2_B4_out_lm7_double_add_2_avm_address),
        .out_lm7_double_add_2_avm_burstcount(bb_double_add_2_B4_out_lm7_double_add_2_avm_burstcount),
        .out_lm7_double_add_2_avm_byteenable(bb_double_add_2_B4_out_lm7_double_add_2_avm_byteenable),
        .out_lm7_double_add_2_avm_enable(bb_double_add_2_B4_out_lm7_double_add_2_avm_enable),
        .out_lm7_double_add_2_avm_read(bb_double_add_2_B4_out_lm7_double_add_2_avm_read),
        .out_lm7_double_add_2_avm_write(bb_double_add_2_B4_out_lm7_double_add_2_avm_write),
        .out_lm7_double_add_2_avm_writedata(bb_double_add_2_B4_out_lm7_double_add_2_avm_writedata),
        .out_memdep_3_double_add_2_avm_address(bb_double_add_2_B4_out_memdep_3_double_add_2_avm_address),
        .out_memdep_3_double_add_2_avm_burstcount(bb_double_add_2_B4_out_memdep_3_double_add_2_avm_burstcount),
        .out_memdep_3_double_add_2_avm_byteenable(bb_double_add_2_B4_out_memdep_3_double_add_2_avm_byteenable),
        .out_memdep_3_double_add_2_avm_enable(bb_double_add_2_B4_out_memdep_3_double_add_2_avm_enable),
        .out_memdep_3_double_add_2_avm_read(bb_double_add_2_B4_out_memdep_3_double_add_2_avm_read),
        .out_memdep_3_double_add_2_avm_write(bb_double_add_2_B4_out_memdep_3_double_add_2_avm_write),
        .out_memdep_3_double_add_2_avm_writedata(bb_double_add_2_B4_out_memdep_3_double_add_2_avm_writedata),
        .out_memdep_phi5_pop17(bb_double_add_2_B4_out_memdep_phi5_pop17),
        .out_pipeline_valid_out(bb_double_add_2_B4_out_pipeline_valid_out),
        .out_stall_out_0(bb_double_add_2_B4_out_stall_out_0),
        .out_stall_out_1(bb_double_add_2_B4_out_stall_out_1),
        .out_unmaskedload1_double_add_2_avm_address(bb_double_add_2_B4_out_unmaskedload1_double_add_2_avm_address),
        .out_unmaskedload1_double_add_2_avm_burstcount(bb_double_add_2_B4_out_unmaskedload1_double_add_2_avm_burstcount),
        .out_unmaskedload1_double_add_2_avm_byteenable(bb_double_add_2_B4_out_unmaskedload1_double_add_2_avm_byteenable),
        .out_unmaskedload1_double_add_2_avm_enable(bb_double_add_2_B4_out_unmaskedload1_double_add_2_avm_enable),
        .out_unmaskedload1_double_add_2_avm_read(bb_double_add_2_B4_out_unmaskedload1_double_add_2_avm_read),
        .out_unmaskedload1_double_add_2_avm_write(bb_double_add_2_B4_out_unmaskedload1_double_add_2_avm_write),
        .out_unmaskedload1_double_add_2_avm_writedata(bb_double_add_2_B4_out_unmaskedload1_double_add_2_avm_writedata),
        .out_valid_in_0(bb_double_add_2_B4_out_valid_in_0),
        .out_valid_in_1(bb_double_add_2_B4_out_valid_in_1),
        .out_valid_out_0(bb_double_add_2_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_double_add_2_B4_sr_1_aunroll_x(BLACKBOX,165)
    double_add_2_bb_B4_sr_1 thebb_double_add_2_B4_sr_1_aunroll_x (
        .in_i_stall(bb_double_add_2_B4_out_stall_out_1),
        .in_i_valid(bb_double_add_2_B1_out_valid_out_0),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_double_add_2_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_double_add_2_B4_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_double_add_2_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_double_add_2_B1(BLACKBOX,3)
    double_add_2_bb_B1 thebb_double_add_2_B1 (
        .in_N(in_arg_N),
        .in_arr(in_arg_arr),
        .in_result(in_arg_result),
        .in_stall_in_0(bb_double_add_2_B4_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_double_add_2_B1_sr_0_aunroll_x_out_o_valid),
        .out_intel_reserved_ffwd_0_0(bb_double_add_2_B1_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_double_add_2_B1_out_intel_reserved_ffwd_1_0),
        .out_stall_out_0(bb_double_add_2_B1_out_stall_out_0),
        .out_valid_out_0(bb_double_add_2_B1_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_double_add_2_B1_sr_0_aunroll_x(BLACKBOX,162)
    double_add_2_bb_B1_sr_0 thebb_double_add_2_B1_sr_0_aunroll_x (
        .in_i_stall(bb_double_add_2_B1_out_stall_out_0),
        .in_i_valid(bb_double_add_2_B2_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_double_add_2_B1_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_double_add_2_B1_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going34_double_add_26_sr(BLACKBOX,54)
    double_add_2_i_llvm_fpga_pipeline_keep_going34_6_sr thei_llvm_fpga_pipeline_keep_going34_double_add_26_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going34_double_add_26_valid_fifo_out_stall_out),
        .in_i_valid(bb_double_add_2_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going34_double_add_26_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going34_double_add_26_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_double_add_2_B2(BLACKBOX,4)
    double_add_2_bb_B2 thebb_double_add_2_B2 (
        .in_N(in_arg_N),
        .in_arr(in_arg_arr),
        .in_flush(in_start),
        .in_forked31_0(GND_q),
        .in_forked31_1(bb_double_add_2_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going34_double_add_26_sr_out_o_stall),
        .in_result(in_arg_result),
        .in_stall_in_0(bb_double_add_2_B1_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_double_add_22_double_add_2_avm_readdata(in_unnamed_double_add_22_double_add_2_avm_readdata),
        .in_unnamed_double_add_22_double_add_2_avm_readdatavalid(in_unnamed_double_add_22_double_add_2_avm_readdatavalid),
        .in_unnamed_double_add_22_double_add_2_avm_waitrequest(in_unnamed_double_add_22_double_add_2_avm_waitrequest),
        .in_unnamed_double_add_22_double_add_2_avm_writeack(in_unnamed_double_add_22_double_add_2_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going34_double_add_26_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_double_add_2_B2_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_pipeline_valid_out(bb_double_add_2_B2_out_pipeline_valid_out),
        .out_stall_in_0(bb_double_add_2_B2_out_stall_in_0),
        .out_stall_out_0(bb_double_add_2_B2_out_stall_out_0),
        .out_stall_out_1(bb_double_add_2_B2_out_stall_out_1),
        .out_unnamed_double_add_22_double_add_2_avm_address(bb_double_add_2_B2_out_unnamed_double_add_22_double_add_2_avm_address),
        .out_unnamed_double_add_22_double_add_2_avm_burstcount(bb_double_add_2_B2_out_unnamed_double_add_22_double_add_2_avm_burstcount),
        .out_unnamed_double_add_22_double_add_2_avm_byteenable(bb_double_add_2_B2_out_unnamed_double_add_22_double_add_2_avm_byteenable),
        .out_unnamed_double_add_22_double_add_2_avm_enable(bb_double_add_2_B2_out_unnamed_double_add_22_double_add_2_avm_enable),
        .out_unnamed_double_add_22_double_add_2_avm_read(bb_double_add_2_B2_out_unnamed_double_add_22_double_add_2_avm_read),
        .out_unnamed_double_add_22_double_add_2_avm_write(bb_double_add_2_B2_out_unnamed_double_add_22_double_add_2_avm_write),
        .out_unnamed_double_add_22_double_add_2_avm_writedata(bb_double_add_2_B2_out_unnamed_double_add_22_double_add_2_avm_writedata),
        .out_valid_in_0(bb_double_add_2_B2_out_valid_in_0),
        .out_valid_in_1(bb_double_add_2_B2_out_valid_in_1),
        .out_valid_out_0(bb_double_add_2_B2_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_double_add_2_B2_sr_1_aunroll_x(BLACKBOX,163)
    double_add_2_bb_B2_sr_1 thebb_double_add_2_B2_sr_1_aunroll_x (
        .in_i_stall(bb_double_add_2_B2_out_stall_out_1),
        .in_i_valid(bb_double_add_2_B0_out_valid_out_0),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_double_add_2_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_double_add_2_B2_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_double_add_2_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // double_add_2_B2_x(EXTIFACE,46)
    assign double_add_2_B2_x_i_capture = GND_q;
    assign double_add_2_B2_x_i_clear = GND_q;
    assign double_add_2_B2_x_i_enable = VCC_q;
    assign double_add_2_B2_x_i_shift = GND_q;
    assign double_add_2_B2_x_i_stall_pred = bb_double_add_2_B2_sr_1_aunroll_x_out_o_stall;
    assign double_add_2_B2_x_i_stall_succ = bb_double_add_2_B2_out_stall_in_0;
    assign double_add_2_B2_x_i_valid_loop = bb_double_add_2_B2_out_valid_in_0;
    assign double_add_2_B2_x_i_valid_pred = bb_double_add_2_B2_out_valid_in_1;
    assign double_add_2_B2_x_i_valid_succ = bb_double_add_2_B2_out_valid_out_0;
    assign double_add_2_B2_x_i_capture_bitsignaltemp = double_add_2_B2_x_i_capture[0];
    assign double_add_2_B2_x_i_clear_bitsignaltemp = double_add_2_B2_x_i_clear[0];
    assign double_add_2_B2_x_i_enable_bitsignaltemp = double_add_2_B2_x_i_enable[0];
    assign double_add_2_B2_x_i_shift_bitsignaltemp = double_add_2_B2_x_i_shift[0];
    assign double_add_2_B2_x_i_stall_pred_bitsignaltemp = double_add_2_B2_x_i_stall_pred[0];
    assign double_add_2_B2_x_i_stall_succ_bitsignaltemp = double_add_2_B2_x_i_stall_succ[0];
    assign double_add_2_B2_x_i_valid_loop_bitsignaltemp = double_add_2_B2_x_i_valid_loop[0];
    assign double_add_2_B2_x_i_valid_pred_bitsignaltemp = double_add_2_B2_x_i_valid_pred[0];
    assign double_add_2_B2_x_i_valid_succ_bitsignaltemp = double_add_2_B2_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("double_add_2.B2")
    ) thedouble_add_2_B2_x (
        .i_capture(double_add_2_B2_x_i_capture_bitsignaltemp),
        .i_clear(double_add_2_B2_x_i_clear_bitsignaltemp),
        .i_enable(double_add_2_B2_x_i_enable_bitsignaltemp),
        .i_shift(double_add_2_B2_x_i_shift_bitsignaltemp),
        .i_stall_pred(double_add_2_B2_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(double_add_2_B2_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(double_add_2_B2_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(double_add_2_B2_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(double_add_2_B2_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // double_add_2_B4_x(EXTIFACE,47)
    assign double_add_2_B4_x_i_capture = GND_q;
    assign double_add_2_B4_x_i_clear = GND_q;
    assign double_add_2_B4_x_i_enable = VCC_q;
    assign double_add_2_B4_x_i_shift = GND_q;
    assign double_add_2_B4_x_i_stall_pred = bb_double_add_2_B4_sr_1_aunroll_x_out_o_stall;
    assign double_add_2_B4_x_i_stall_succ = bb_double_add_2_B5_out_stall_in_0;
    assign double_add_2_B4_x_i_valid_loop = bb_double_add_2_B4_out_valid_in_0;
    assign double_add_2_B4_x_i_valid_pred = bb_double_add_2_B4_out_valid_in_1;
    assign double_add_2_B4_x_i_valid_succ = bb_double_add_2_B5_out_valid_out_0;
    assign double_add_2_B4_x_i_capture_bitsignaltemp = double_add_2_B4_x_i_capture[0];
    assign double_add_2_B4_x_i_clear_bitsignaltemp = double_add_2_B4_x_i_clear[0];
    assign double_add_2_B4_x_i_enable_bitsignaltemp = double_add_2_B4_x_i_enable[0];
    assign double_add_2_B4_x_i_shift_bitsignaltemp = double_add_2_B4_x_i_shift[0];
    assign double_add_2_B4_x_i_stall_pred_bitsignaltemp = double_add_2_B4_x_i_stall_pred[0];
    assign double_add_2_B4_x_i_stall_succ_bitsignaltemp = double_add_2_B4_x_i_stall_succ[0];
    assign double_add_2_B4_x_i_valid_loop_bitsignaltemp = double_add_2_B4_x_i_valid_loop[0];
    assign double_add_2_B4_x_i_valid_pred_bitsignaltemp = double_add_2_B4_x_i_valid_pred[0];
    assign double_add_2_B4_x_i_valid_succ_bitsignaltemp = double_add_2_B4_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("double_add_2.B4")
    ) thedouble_add_2_B4_x (
        .i_capture(double_add_2_B4_x_i_capture_bitsignaltemp),
        .i_clear(double_add_2_B4_x_i_clear_bitsignaltemp),
        .i_enable(double_add_2_B4_x_i_enable_bitsignaltemp),
        .i_shift(double_add_2_B4_x_i_shift_bitsignaltemp),
        .i_stall_pred(double_add_2_B4_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(double_add_2_B4_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(double_add_2_B4_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(double_add_2_B4_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(double_add_2_B4_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // double_add_2_B6_x(EXTIFACE,48)
    assign double_add_2_B6_x_i_capture = GND_q;
    assign double_add_2_B6_x_i_clear = GND_q;
    assign double_add_2_B6_x_i_enable = VCC_q;
    assign double_add_2_B6_x_i_shift = GND_q;
    assign double_add_2_B6_x_i_stall_pred = loop_limiter_double_add_20_out_o_stall;
    assign double_add_2_B6_x_i_stall_succ = bb_double_add_2_B6_out_stall_in_0;
    assign double_add_2_B6_x_i_valid_loop = bb_double_add_2_B6_out_valid_in_0;
    assign double_add_2_B6_x_i_valid_pred = bb_double_add_2_B6_out_valid_in_1;
    assign double_add_2_B6_x_i_valid_succ = bb_double_add_2_B6_out_valid_out_0;
    assign double_add_2_B6_x_i_capture_bitsignaltemp = double_add_2_B6_x_i_capture[0];
    assign double_add_2_B6_x_i_clear_bitsignaltemp = double_add_2_B6_x_i_clear[0];
    assign double_add_2_B6_x_i_enable_bitsignaltemp = double_add_2_B6_x_i_enable[0];
    assign double_add_2_B6_x_i_shift_bitsignaltemp = double_add_2_B6_x_i_shift[0];
    assign double_add_2_B6_x_i_stall_pred_bitsignaltemp = double_add_2_B6_x_i_stall_pred[0];
    assign double_add_2_B6_x_i_stall_succ_bitsignaltemp = double_add_2_B6_x_i_stall_succ[0];
    assign double_add_2_B6_x_i_valid_loop_bitsignaltemp = double_add_2_B6_x_i_valid_loop[0];
    assign double_add_2_B6_x_i_valid_pred_bitsignaltemp = double_add_2_B6_x_i_valid_pred[0];
    assign double_add_2_B6_x_i_valid_succ_bitsignaltemp = double_add_2_B6_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("double_add_2.B6")
    ) thedouble_add_2_B6_x (
        .i_capture(double_add_2_B6_x_i_capture_bitsignaltemp),
        .i_clear(double_add_2_B6_x_i_clear_bitsignaltemp),
        .i_enable(double_add_2_B6_x_i_enable_bitsignaltemp),
        .i_shift(double_add_2_B6_x_i_shift_bitsignaltemp),
        .i_stall_pred(double_add_2_B6_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(double_add_2_B6_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(double_add_2_B6_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(double_add_2_B6_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(double_add_2_B6_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // double_add_2_B8_x(EXTIFACE,49)
    assign double_add_2_B8_x_i_capture = GND_q;
    assign double_add_2_B8_x_i_clear = GND_q;
    assign double_add_2_B8_x_i_enable = VCC_q;
    assign double_add_2_B8_x_i_shift = GND_q;
    assign double_add_2_B8_x_i_stall_pred = bb_double_add_2_B8_sr_1_aunroll_x_out_o_stall;
    assign double_add_2_B8_x_i_stall_succ = bb_double_add_2_B8_out_stall_in_0;
    assign double_add_2_B8_x_i_valid_loop = bb_double_add_2_B8_out_valid_in_0;
    assign double_add_2_B8_x_i_valid_pred = bb_double_add_2_B8_out_valid_in_1;
    assign double_add_2_B8_x_i_valid_succ = bb_double_add_2_B8_out_valid_out_0;
    assign double_add_2_B8_x_i_capture_bitsignaltemp = double_add_2_B8_x_i_capture[0];
    assign double_add_2_B8_x_i_clear_bitsignaltemp = double_add_2_B8_x_i_clear[0];
    assign double_add_2_B8_x_i_enable_bitsignaltemp = double_add_2_B8_x_i_enable[0];
    assign double_add_2_B8_x_i_shift_bitsignaltemp = double_add_2_B8_x_i_shift[0];
    assign double_add_2_B8_x_i_stall_pred_bitsignaltemp = double_add_2_B8_x_i_stall_pred[0];
    assign double_add_2_B8_x_i_stall_succ_bitsignaltemp = double_add_2_B8_x_i_stall_succ[0];
    assign double_add_2_B8_x_i_valid_loop_bitsignaltemp = double_add_2_B8_x_i_valid_loop[0];
    assign double_add_2_B8_x_i_valid_pred_bitsignaltemp = double_add_2_B8_x_i_valid_pred[0];
    assign double_add_2_B8_x_i_valid_succ_bitsignaltemp = double_add_2_B8_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("double_add_2.B8")
    ) thedouble_add_2_B8_x (
        .i_capture(double_add_2_B8_x_i_capture_bitsignaltemp),
        .i_clear(double_add_2_B8_x_i_clear_bitsignaltemp),
        .i_enable(double_add_2_B8_x_i_enable_bitsignaltemp),
        .i_shift(double_add_2_B8_x_i_shift_bitsignaltemp),
        .i_stall_pred(double_add_2_B8_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(double_add_2_B8_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(double_add_2_B8_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(double_add_2_B8_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(double_add_2_B8_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_lm102_double_add_2_avm_address(GPOUT,103)
    assign out_lm102_double_add_2_avm_address = bb_double_add_2_B6_out_lm102_double_add_2_avm_address;

    // out_lm102_double_add_2_avm_burstcount(GPOUT,104)
    assign out_lm102_double_add_2_avm_burstcount = bb_double_add_2_B6_out_lm102_double_add_2_avm_burstcount;

    // out_lm102_double_add_2_avm_byteenable(GPOUT,105)
    assign out_lm102_double_add_2_avm_byteenable = bb_double_add_2_B6_out_lm102_double_add_2_avm_byteenable;

    // out_lm102_double_add_2_avm_enable(GPOUT,106)
    assign out_lm102_double_add_2_avm_enable = bb_double_add_2_B6_out_lm102_double_add_2_avm_enable;

    // out_lm102_double_add_2_avm_read(GPOUT,107)
    assign out_lm102_double_add_2_avm_read = bb_double_add_2_B6_out_lm102_double_add_2_avm_read;

    // out_lm102_double_add_2_avm_write(GPOUT,108)
    assign out_lm102_double_add_2_avm_write = bb_double_add_2_B6_out_lm102_double_add_2_avm_write;

    // out_lm102_double_add_2_avm_writedata(GPOUT,109)
    assign out_lm102_double_add_2_avm_writedata = bb_double_add_2_B6_out_lm102_double_add_2_avm_writedata;

    // out_lm7_double_add_2_avm_address(GPOUT,110)
    assign out_lm7_double_add_2_avm_address = bb_double_add_2_B4_out_lm7_double_add_2_avm_address;

    // out_lm7_double_add_2_avm_burstcount(GPOUT,111)
    assign out_lm7_double_add_2_avm_burstcount = bb_double_add_2_B4_out_lm7_double_add_2_avm_burstcount;

    // out_lm7_double_add_2_avm_byteenable(GPOUT,112)
    assign out_lm7_double_add_2_avm_byteenable = bb_double_add_2_B4_out_lm7_double_add_2_avm_byteenable;

    // out_lm7_double_add_2_avm_enable(GPOUT,113)
    assign out_lm7_double_add_2_avm_enable = bb_double_add_2_B4_out_lm7_double_add_2_avm_enable;

    // out_lm7_double_add_2_avm_read(GPOUT,114)
    assign out_lm7_double_add_2_avm_read = bb_double_add_2_B4_out_lm7_double_add_2_avm_read;

    // out_lm7_double_add_2_avm_write(GPOUT,115)
    assign out_lm7_double_add_2_avm_write = bb_double_add_2_B4_out_lm7_double_add_2_avm_write;

    // out_lm7_double_add_2_avm_writedata(GPOUT,116)
    assign out_lm7_double_add_2_avm_writedata = bb_double_add_2_B4_out_lm7_double_add_2_avm_writedata;

    // out_memdep_3_double_add_2_avm_address(GPOUT,117)
    assign out_memdep_3_double_add_2_avm_address = bb_double_add_2_B4_out_memdep_3_double_add_2_avm_address;

    // out_memdep_3_double_add_2_avm_burstcount(GPOUT,118)
    assign out_memdep_3_double_add_2_avm_burstcount = bb_double_add_2_B4_out_memdep_3_double_add_2_avm_burstcount;

    // out_memdep_3_double_add_2_avm_byteenable(GPOUT,119)
    assign out_memdep_3_double_add_2_avm_byteenable = bb_double_add_2_B4_out_memdep_3_double_add_2_avm_byteenable;

    // out_memdep_3_double_add_2_avm_enable(GPOUT,120)
    assign out_memdep_3_double_add_2_avm_enable = bb_double_add_2_B4_out_memdep_3_double_add_2_avm_enable;

    // out_memdep_3_double_add_2_avm_read(GPOUT,121)
    assign out_memdep_3_double_add_2_avm_read = bb_double_add_2_B4_out_memdep_3_double_add_2_avm_read;

    // out_memdep_3_double_add_2_avm_write(GPOUT,122)
    assign out_memdep_3_double_add_2_avm_write = bb_double_add_2_B4_out_memdep_3_double_add_2_avm_write;

    // out_memdep_3_double_add_2_avm_writedata(GPOUT,123)
    assign out_memdep_3_double_add_2_avm_writedata = bb_double_add_2_B4_out_memdep_3_double_add_2_avm_writedata;

    // out_memdep_4_double_add_2_avm_address(GPOUT,124)
    assign out_memdep_4_double_add_2_avm_address = bb_double_add_2_B6_out_memdep_4_double_add_2_avm_address;

    // out_memdep_4_double_add_2_avm_burstcount(GPOUT,125)
    assign out_memdep_4_double_add_2_avm_burstcount = bb_double_add_2_B6_out_memdep_4_double_add_2_avm_burstcount;

    // out_memdep_4_double_add_2_avm_byteenable(GPOUT,126)
    assign out_memdep_4_double_add_2_avm_byteenable = bb_double_add_2_B6_out_memdep_4_double_add_2_avm_byteenable;

    // out_memdep_4_double_add_2_avm_enable(GPOUT,127)
    assign out_memdep_4_double_add_2_avm_enable = bb_double_add_2_B6_out_memdep_4_double_add_2_avm_enable;

    // out_memdep_4_double_add_2_avm_read(GPOUT,128)
    assign out_memdep_4_double_add_2_avm_read = bb_double_add_2_B6_out_memdep_4_double_add_2_avm_read;

    // out_memdep_4_double_add_2_avm_write(GPOUT,129)
    assign out_memdep_4_double_add_2_avm_write = bb_double_add_2_B6_out_memdep_4_double_add_2_avm_write;

    // out_memdep_4_double_add_2_avm_writedata(GPOUT,130)
    assign out_memdep_4_double_add_2_avm_writedata = bb_double_add_2_B6_out_memdep_4_double_add_2_avm_writedata;

    // out_memdep_double_add_2_avm_address(GPOUT,131)
    assign out_memdep_double_add_2_avm_address = bb_double_add_2_B7_out_memdep_double_add_2_avm_address;

    // out_memdep_double_add_2_avm_burstcount(GPOUT,132)
    assign out_memdep_double_add_2_avm_burstcount = bb_double_add_2_B7_out_memdep_double_add_2_avm_burstcount;

    // out_memdep_double_add_2_avm_byteenable(GPOUT,133)
    assign out_memdep_double_add_2_avm_byteenable = bb_double_add_2_B7_out_memdep_double_add_2_avm_byteenable;

    // out_memdep_double_add_2_avm_enable(GPOUT,134)
    assign out_memdep_double_add_2_avm_enable = bb_double_add_2_B7_out_memdep_double_add_2_avm_enable;

    // out_memdep_double_add_2_avm_read(GPOUT,135)
    assign out_memdep_double_add_2_avm_read = bb_double_add_2_B7_out_memdep_double_add_2_avm_read;

    // out_memdep_double_add_2_avm_write(GPOUT,136)
    assign out_memdep_double_add_2_avm_write = bb_double_add_2_B7_out_memdep_double_add_2_avm_write;

    // out_memdep_double_add_2_avm_writedata(GPOUT,137)
    assign out_memdep_double_add_2_avm_writedata = bb_double_add_2_B7_out_memdep_double_add_2_avm_writedata;

    // out_o_active_memdep(GPOUT,138)
    assign out_o_active_memdep = bb_double_add_2_B7_out_lsu_memdep_o_active;

    // out_stall_out(GPOUT,139)
    assign out_stall_out = bb_double_add_2_B0_out_stall_out_0;

    // out_unmaskedload1_double_add_2_avm_address(GPOUT,140)
    assign out_unmaskedload1_double_add_2_avm_address = bb_double_add_2_B4_out_unmaskedload1_double_add_2_avm_address;

    // out_unmaskedload1_double_add_2_avm_burstcount(GPOUT,141)
    assign out_unmaskedload1_double_add_2_avm_burstcount = bb_double_add_2_B4_out_unmaskedload1_double_add_2_avm_burstcount;

    // out_unmaskedload1_double_add_2_avm_byteenable(GPOUT,142)
    assign out_unmaskedload1_double_add_2_avm_byteenable = bb_double_add_2_B4_out_unmaskedload1_double_add_2_avm_byteenable;

    // out_unmaskedload1_double_add_2_avm_enable(GPOUT,143)
    assign out_unmaskedload1_double_add_2_avm_enable = bb_double_add_2_B4_out_unmaskedload1_double_add_2_avm_enable;

    // out_unmaskedload1_double_add_2_avm_read(GPOUT,144)
    assign out_unmaskedload1_double_add_2_avm_read = bb_double_add_2_B4_out_unmaskedload1_double_add_2_avm_read;

    // out_unmaskedload1_double_add_2_avm_write(GPOUT,145)
    assign out_unmaskedload1_double_add_2_avm_write = bb_double_add_2_B4_out_unmaskedload1_double_add_2_avm_write;

    // out_unmaskedload1_double_add_2_avm_writedata(GPOUT,146)
    assign out_unmaskedload1_double_add_2_avm_writedata = bb_double_add_2_B4_out_unmaskedload1_double_add_2_avm_writedata;

    // out_unnamed_double_add_22_double_add_2_avm_address(GPOUT,147)
    assign out_unnamed_double_add_22_double_add_2_avm_address = bb_double_add_2_B2_out_unnamed_double_add_22_double_add_2_avm_address;

    // out_unnamed_double_add_22_double_add_2_avm_burstcount(GPOUT,148)
    assign out_unnamed_double_add_22_double_add_2_avm_burstcount = bb_double_add_2_B2_out_unnamed_double_add_22_double_add_2_avm_burstcount;

    // out_unnamed_double_add_22_double_add_2_avm_byteenable(GPOUT,149)
    assign out_unnamed_double_add_22_double_add_2_avm_byteenable = bb_double_add_2_B2_out_unnamed_double_add_22_double_add_2_avm_byteenable;

    // out_unnamed_double_add_22_double_add_2_avm_enable(GPOUT,150)
    assign out_unnamed_double_add_22_double_add_2_avm_enable = bb_double_add_2_B2_out_unnamed_double_add_22_double_add_2_avm_enable;

    // out_unnamed_double_add_22_double_add_2_avm_read(GPOUT,151)
    assign out_unnamed_double_add_22_double_add_2_avm_read = bb_double_add_2_B2_out_unnamed_double_add_22_double_add_2_avm_read;

    // out_unnamed_double_add_22_double_add_2_avm_write(GPOUT,152)
    assign out_unnamed_double_add_22_double_add_2_avm_write = bb_double_add_2_B2_out_unnamed_double_add_22_double_add_2_avm_write;

    // out_unnamed_double_add_22_double_add_2_avm_writedata(GPOUT,153)
    assign out_unnamed_double_add_22_double_add_2_avm_writedata = bb_double_add_2_B2_out_unnamed_double_add_22_double_add_2_avm_writedata;

    // out_unnamed_double_add_29_double_add_2_avm_address(GPOUT,154)
    assign out_unnamed_double_add_29_double_add_2_avm_address = bb_double_add_2_B8_out_unnamed_double_add_29_double_add_2_avm_address;

    // out_unnamed_double_add_29_double_add_2_avm_burstcount(GPOUT,155)
    assign out_unnamed_double_add_29_double_add_2_avm_burstcount = bb_double_add_2_B8_out_unnamed_double_add_29_double_add_2_avm_burstcount;

    // out_unnamed_double_add_29_double_add_2_avm_byteenable(GPOUT,156)
    assign out_unnamed_double_add_29_double_add_2_avm_byteenable = bb_double_add_2_B8_out_unnamed_double_add_29_double_add_2_avm_byteenable;

    // out_unnamed_double_add_29_double_add_2_avm_enable(GPOUT,157)
    assign out_unnamed_double_add_29_double_add_2_avm_enable = bb_double_add_2_B8_out_unnamed_double_add_29_double_add_2_avm_enable;

    // out_unnamed_double_add_29_double_add_2_avm_read(GPOUT,158)
    assign out_unnamed_double_add_29_double_add_2_avm_read = bb_double_add_2_B8_out_unnamed_double_add_29_double_add_2_avm_read;

    // out_unnamed_double_add_29_double_add_2_avm_write(GPOUT,159)
    assign out_unnamed_double_add_29_double_add_2_avm_write = bb_double_add_2_B8_out_unnamed_double_add_29_double_add_2_avm_write;

    // out_unnamed_double_add_29_double_add_2_avm_writedata(GPOUT,160)
    assign out_unnamed_double_add_29_double_add_2_avm_writedata = bb_double_add_2_B8_out_unnamed_double_add_29_double_add_2_avm_writedata;

    // out_valid_out(GPOUT,161)
    assign out_valid_out = bb_double_add_2_B7_out_valid_out_0;

endmodule
