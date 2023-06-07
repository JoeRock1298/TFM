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
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_function (
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
    input wire [511:0] in_lm11_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm11_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm11_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm11_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm12_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm12_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm12_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm12_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm14_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm14_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm14_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm14_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm16_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm16_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm16_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm16_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm_conv2d1x1_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [511:0] in_unnamed_conv2d1x10_conv2d1x1_avm_readdata,
    input wire [0:0] in_unnamed_conv2d1x10_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv2d1x10_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d1x10_conv2d1x1_avm_writeack,
    input wire [511:0] in_unnamed_conv2d1x15_conv2d1x1_avm_readdata,
    input wire [0:0] in_unnamed_conv2d1x15_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv2d1x15_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d1x15_conv2d1x1_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [30:0] out_lm11_conv2d1x1_avm_address,
    output wire [4:0] out_lm11_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm11_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm11_conv2d1x1_avm_enable,
    output wire [0:0] out_lm11_conv2d1x1_avm_read,
    output wire [0:0] out_lm11_conv2d1x1_avm_write,
    output wire [511:0] out_lm11_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm12_conv2d1x1_avm_address,
    output wire [4:0] out_lm12_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm12_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm12_conv2d1x1_avm_enable,
    output wire [0:0] out_lm12_conv2d1x1_avm_read,
    output wire [0:0] out_lm12_conv2d1x1_avm_write,
    output wire [511:0] out_lm12_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm14_conv2d1x1_avm_address,
    output wire [4:0] out_lm14_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm14_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm14_conv2d1x1_avm_enable,
    output wire [0:0] out_lm14_conv2d1x1_avm_read,
    output wire [0:0] out_lm14_conv2d1x1_avm_write,
    output wire [511:0] out_lm14_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm16_conv2d1x1_avm_address,
    output wire [4:0] out_lm16_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm16_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm16_conv2d1x1_avm_enable,
    output wire [0:0] out_lm16_conv2d1x1_avm_read,
    output wire [0:0] out_lm16_conv2d1x1_avm_write,
    output wire [511:0] out_lm16_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm_conv2d1x1_avm_address,
    output wire [4:0] out_lm_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm_conv2d1x1_avm_enable,
    output wire [0:0] out_lm_conv2d1x1_avm_read,
    output wire [0:0] out_lm_conv2d1x1_avm_write,
    output wire [511:0] out_lm_conv2d1x1_avm_writedata,
    output wire [0:0] out_o_active_unnamed_conv2d1x15,
    output wire [0:0] out_stall_out,
    output wire [30:0] out_unnamed_conv2d1x10_conv2d1x1_avm_address,
    output wire [4:0] out_unnamed_conv2d1x10_conv2d1x1_avm_burstcount,
    output wire [63:0] out_unnamed_conv2d1x10_conv2d1x1_avm_byteenable,
    output wire [0:0] out_unnamed_conv2d1x10_conv2d1x1_avm_enable,
    output wire [0:0] out_unnamed_conv2d1x10_conv2d1x1_avm_read,
    output wire [0:0] out_unnamed_conv2d1x10_conv2d1x1_avm_write,
    output wire [511:0] out_unnamed_conv2d1x10_conv2d1x1_avm_writedata,
    output wire [30:0] out_unnamed_conv2d1x15_conv2d1x1_avm_address,
    output wire [4:0] out_unnamed_conv2d1x15_conv2d1x1_avm_burstcount,
    output wire [63:0] out_unnamed_conv2d1x15_conv2d1x1_avm_byteenable,
    output wire [0:0] out_unnamed_conv2d1x15_conv2d1x1_avm_enable,
    output wire [0:0] out_unnamed_conv2d1x15_conv2d1x1_avm_read,
    output wire [0:0] out_unnamed_conv2d1x15_conv2d1x1_avm_write,
    output wire [511:0] out_unnamed_conv2d1x15_conv2d1x1_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] bb_conv2d1x1_B0_out_acl_global_id_1;
    wire [63:0] bb_conv2d1x1_B0_out_c0_exe1;
    wire [31:0] bb_conv2d1x1_B0_out_c0_exe3;
    wire [63:0] bb_conv2d1x1_B0_out_c0_exe4;
    wire [0:0] bb_conv2d1x1_B0_out_c0_exe5;
    wire [0:0] bb_conv2d1x1_B0_out_c0_exe6;
    wire [0:0] bb_conv2d1x1_B0_out_c0_exe7;
    wire [0:0] bb_conv2d1x1_B0_out_c0_exe8;
    wire [0:0] bb_conv2d1x1_B0_out_c0_exe9;
    wire [0:0] bb_conv2d1x1_B0_out_stall_out_0;
    wire [31:0] bb_conv2d1x1_B0_out_unnamed_conv2d1x10;
    wire [30:0] bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B0_out_valid_out_0;
    wire [0:0] bb_conv2d1x1_B1_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B1_out_valid_out_0;
    wire [63:0] bb_conv2d1x1_B2_out_acl_global_id_130;
    wire [63:0] bb_conv2d1x1_B2_out_c0_exe12;
    wire [31:0] bb_conv2d1x1_B2_out_c0_exe149;
    wire [31:0] bb_conv2d1x1_B2_out_c0_exe35;
    wire [63:0] bb_conv2d1x1_B2_out_c0_exe49;
    wire [0:0] bb_conv2d1x1_B2_out_c0_exe512;
    wire [0:0] bb_conv2d1x1_B2_out_c0_exe614;
    wire [0:0] bb_conv2d1x1_B2_out_c0_exe717;
    wire [0:0] bb_conv2d1x1_B2_out_c0_exe821;
    wire [0:0] bb_conv2d1x1_B2_out_c0_exe923;
    wire [31:0] bb_conv2d1x1_B2_out_j_059;
    wire [0:0] bb_conv2d1x1_B2_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B2_out_stall_out_1;
    wire [31:0] bb_conv2d1x1_B2_out_unnamed_conv2d1x12;
    wire [0:0] bb_conv2d1x1_B2_out_valid_in_0;
    wire [0:0] bb_conv2d1x1_B2_out_valid_in_1;
    wire [0:0] bb_conv2d1x1_B2_out_valid_out_0;
    wire [63:0] bb_conv2d1x1_B3_out_acl_global_id_131;
    wire [63:0] bb_conv2d1x1_B3_out_c0_exe13;
    wire [31:0] bb_conv2d1x1_B3_out_c0_exe36;
    wire [63:0] bb_conv2d1x1_B3_out_c0_exe47;
    wire [0:0] bb_conv2d1x1_B3_out_c0_exe510;
    wire [0:0] bb_conv2d1x1_B3_out_c0_exe615;
    wire [0:0] bb_conv2d1x1_B3_out_c0_exe718;
    wire [0:0] bb_conv2d1x1_B3_out_c0_exe819;
    wire [0:0] bb_conv2d1x1_B3_out_c0_exe924;
    wire [31:0] bb_conv2d1x1_B3_out_inc64;
    wire [0:0] bb_conv2d1x1_B3_out_lsu_unnamed_conv2d1x15_o_active;
    wire [0:0] bb_conv2d1x1_B3_out_stall_in_0;
    wire [0:0] bb_conv2d1x1_B3_out_stall_out_0;
    wire [31:0] bb_conv2d1x1_B3_out_unnamed_conv2d1x13;
    wire [30:0] bb_conv2d1x1_B3_out_unnamed_conv2d1x15_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B3_out_unnamed_conv2d1x15_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B3_out_unnamed_conv2d1x15_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B3_out_unnamed_conv2d1x15_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B3_out_unnamed_conv2d1x15_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B3_out_unnamed_conv2d1x15_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B3_out_unnamed_conv2d1x15_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B3_out_valid_out_0;
    wire [0:0] bb_conv2d1x1_B3_out_valid_out_1;
    wire [63:0] bb_conv2d1x1_B4_out_acl_global_id_132;
    wire [63:0] bb_conv2d1x1_B4_out_c0_exe11;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe14927;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe34;
    wire [63:0] bb_conv2d1x1_B4_out_c0_exe48;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe511;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe572;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe613;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe716;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe820;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe922;
    wire [31:0] bb_conv2d1x1_B4_out_c1_exe1;
    wire [31:0] bb_conv2d1x1_B4_out_j_05926;
    wire [30:0] bb_conv2d1x1_B4_out_lm11_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B4_out_lm11_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B4_out_lm11_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B4_out_lm11_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B4_out_lm11_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B4_out_lm11_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B4_out_lm11_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B4_out_lm12_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B4_out_lm12_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B4_out_lm12_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B4_out_lm12_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B4_out_lm12_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B4_out_lm12_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B4_out_lm12_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B4_out_lm14_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B4_out_lm14_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B4_out_lm14_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B4_out_lm14_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B4_out_lm14_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B4_out_lm14_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B4_out_lm14_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B4_out_lm16_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B4_out_lm16_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B4_out_lm16_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B4_out_lm16_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B4_out_lm16_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B4_out_lm16_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B4_out_lm16_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B4_out_lm_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B4_out_lm_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B4_out_lm_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B4_out_lm_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B4_out_lm_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B4_out_lm_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B4_out_lm_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B4_out_stall_in_0;
    wire [0:0] bb_conv2d1x1_B4_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B4_out_stall_out_1;
    wire [31:0] bb_conv2d1x1_B4_out_unnamed_conv2d1x16;
    wire [0:0] bb_conv2d1x1_B4_out_valid_in_0;
    wire [0:0] bb_conv2d1x1_B4_out_valid_in_1;
    wire [0:0] bb_conv2d1x1_B4_out_valid_out_0;
    wire [0:0] bb_conv2d1x1_B4_out_valid_out_1;
    wire [31:0] c_i32_015_q;
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
    wire [0:0] loop_limiter_conv2d1x10_out_o_stall;
    wire [0:0] loop_limiter_conv2d1x10_out_o_valid;
    wire [0:0] loop_limiter_conv2d1x11_out_o_stall;
    wire [0:0] loop_limiter_conv2d1x11_out_o_valid;
    wire [0:0] bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [63:0] bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [63:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [63:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [63:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_12_tpl;
    wire [63:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [63:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [63:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_13_tpl;


    // bb_conv2d1x1_B4_sr_0_aunroll_x(BLACKBOX,119)
    conv2d1x1_bb_B4_sr_0 thebb_conv2d1x1_B4_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B4_out_stall_out_0),
        .in_i_valid(bb_conv2d1x1_B4_out_valid_out_1),
        .in_i_data_0_tpl(bb_conv2d1x1_B4_out_c0_exe572),
        .in_i_data_1_tpl(bb_conv2d1x1_B4_out_c1_exe1),
        .in_i_data_2_tpl(bb_conv2d1x1_B4_out_c0_exe11),
        .in_i_data_3_tpl(bb_conv2d1x1_B4_out_c0_exe34),
        .in_i_data_4_tpl(bb_conv2d1x1_B4_out_c0_exe48),
        .in_i_data_5_tpl(bb_conv2d1x1_B4_out_c0_exe511),
        .in_i_data_6_tpl(bb_conv2d1x1_B4_out_c0_exe613),
        .in_i_data_7_tpl(bb_conv2d1x1_B4_out_c0_exe716),
        .in_i_data_8_tpl(bb_conv2d1x1_B4_out_c0_exe820),
        .in_i_data_9_tpl(bb_conv2d1x1_B4_out_c0_exe922),
        .in_i_data_10_tpl(bb_conv2d1x1_B4_out_unnamed_conv2d1x16),
        .in_i_data_11_tpl(bb_conv2d1x1_B4_out_j_05926),
        .in_i_data_12_tpl(bb_conv2d1x1_B4_out_c0_exe14927),
        .in_i_data_13_tpl(bb_conv2d1x1_B4_out_acl_global_id_132),
        .out_o_stall(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_13_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B4(BLACKBOX,6)
    conv2d1x1_bb_B4 thebb_conv2d1x1_B4 (
        .in_acl_global_id_132_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_13_tpl),
        .in_acl_global_id_132_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_c0_exe11_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe11_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe14927_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_12_tpl),
        .in_c0_exe14927_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_c0_exe34_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe34_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe48_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe48_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe511_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe511_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe613_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe613_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe716_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe716_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe820_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe820_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe922_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe922_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_flush(in_start),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_j_05926_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_j_05926_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_k_057_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_k_057_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_lm11_conv2d1x1_avm_readdata(in_lm11_conv2d1x1_avm_readdata),
        .in_lm11_conv2d1x1_avm_readdatavalid(in_lm11_conv2d1x1_avm_readdatavalid),
        .in_lm11_conv2d1x1_avm_waitrequest(in_lm11_conv2d1x1_avm_waitrequest),
        .in_lm11_conv2d1x1_avm_writeack(in_lm11_conv2d1x1_avm_writeack),
        .in_lm12_conv2d1x1_avm_readdata(in_lm12_conv2d1x1_avm_readdata),
        .in_lm12_conv2d1x1_avm_readdatavalid(in_lm12_conv2d1x1_avm_readdatavalid),
        .in_lm12_conv2d1x1_avm_waitrequest(in_lm12_conv2d1x1_avm_waitrequest),
        .in_lm12_conv2d1x1_avm_writeack(in_lm12_conv2d1x1_avm_writeack),
        .in_lm14_conv2d1x1_avm_readdata(in_lm14_conv2d1x1_avm_readdata),
        .in_lm14_conv2d1x1_avm_readdatavalid(in_lm14_conv2d1x1_avm_readdatavalid),
        .in_lm14_conv2d1x1_avm_waitrequest(in_lm14_conv2d1x1_avm_waitrequest),
        .in_lm14_conv2d1x1_avm_writeack(in_lm14_conv2d1x1_avm_writeack),
        .in_lm16_conv2d1x1_avm_readdata(in_lm16_conv2d1x1_avm_readdata),
        .in_lm16_conv2d1x1_avm_readdatavalid(in_lm16_conv2d1x1_avm_readdatavalid),
        .in_lm16_conv2d1x1_avm_waitrequest(in_lm16_conv2d1x1_avm_waitrequest),
        .in_lm16_conv2d1x1_avm_writeack(in_lm16_conv2d1x1_avm_writeack),
        .in_lm_conv2d1x1_avm_readdata(in_lm_conv2d1x1_avm_readdata),
        .in_lm_conv2d1x1_avm_readdatavalid(in_lm_conv2d1x1_avm_readdatavalid),
        .in_lm_conv2d1x1_avm_waitrequest(in_lm_conv2d1x1_avm_waitrequest),
        .in_lm_conv2d1x1_avm_writeack(in_lm_conv2d1x1_avm_writeack),
        .in_stall_in_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_stall),
        .in_tmp_056_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_tmp_056_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_unnamed_conv2d1x16_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_unnamed_conv2d1x16_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_valid_in_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_valid),
        .out_acl_global_id_132(bb_conv2d1x1_B4_out_acl_global_id_132),
        .out_c0_exe11(bb_conv2d1x1_B4_out_c0_exe11),
        .out_c0_exe14927(bb_conv2d1x1_B4_out_c0_exe14927),
        .out_c0_exe34(bb_conv2d1x1_B4_out_c0_exe34),
        .out_c0_exe48(bb_conv2d1x1_B4_out_c0_exe48),
        .out_c0_exe511(bb_conv2d1x1_B4_out_c0_exe511),
        .out_c0_exe572(bb_conv2d1x1_B4_out_c0_exe572),
        .out_c0_exe613(bb_conv2d1x1_B4_out_c0_exe613),
        .out_c0_exe716(bb_conv2d1x1_B4_out_c0_exe716),
        .out_c0_exe820(bb_conv2d1x1_B4_out_c0_exe820),
        .out_c0_exe922(bb_conv2d1x1_B4_out_c0_exe922),
        .out_c1_exe1(bb_conv2d1x1_B4_out_c1_exe1),
        .out_j_05926(bb_conv2d1x1_B4_out_j_05926),
        .out_lm11_conv2d1x1_avm_address(bb_conv2d1x1_B4_out_lm11_conv2d1x1_avm_address),
        .out_lm11_conv2d1x1_avm_burstcount(bb_conv2d1x1_B4_out_lm11_conv2d1x1_avm_burstcount),
        .out_lm11_conv2d1x1_avm_byteenable(bb_conv2d1x1_B4_out_lm11_conv2d1x1_avm_byteenable),
        .out_lm11_conv2d1x1_avm_enable(bb_conv2d1x1_B4_out_lm11_conv2d1x1_avm_enable),
        .out_lm11_conv2d1x1_avm_read(bb_conv2d1x1_B4_out_lm11_conv2d1x1_avm_read),
        .out_lm11_conv2d1x1_avm_write(bb_conv2d1x1_B4_out_lm11_conv2d1x1_avm_write),
        .out_lm11_conv2d1x1_avm_writedata(bb_conv2d1x1_B4_out_lm11_conv2d1x1_avm_writedata),
        .out_lm12_conv2d1x1_avm_address(bb_conv2d1x1_B4_out_lm12_conv2d1x1_avm_address),
        .out_lm12_conv2d1x1_avm_burstcount(bb_conv2d1x1_B4_out_lm12_conv2d1x1_avm_burstcount),
        .out_lm12_conv2d1x1_avm_byteenable(bb_conv2d1x1_B4_out_lm12_conv2d1x1_avm_byteenable),
        .out_lm12_conv2d1x1_avm_enable(bb_conv2d1x1_B4_out_lm12_conv2d1x1_avm_enable),
        .out_lm12_conv2d1x1_avm_read(bb_conv2d1x1_B4_out_lm12_conv2d1x1_avm_read),
        .out_lm12_conv2d1x1_avm_write(bb_conv2d1x1_B4_out_lm12_conv2d1x1_avm_write),
        .out_lm12_conv2d1x1_avm_writedata(bb_conv2d1x1_B4_out_lm12_conv2d1x1_avm_writedata),
        .out_lm14_conv2d1x1_avm_address(bb_conv2d1x1_B4_out_lm14_conv2d1x1_avm_address),
        .out_lm14_conv2d1x1_avm_burstcount(bb_conv2d1x1_B4_out_lm14_conv2d1x1_avm_burstcount),
        .out_lm14_conv2d1x1_avm_byteenable(bb_conv2d1x1_B4_out_lm14_conv2d1x1_avm_byteenable),
        .out_lm14_conv2d1x1_avm_enable(bb_conv2d1x1_B4_out_lm14_conv2d1x1_avm_enable),
        .out_lm14_conv2d1x1_avm_read(bb_conv2d1x1_B4_out_lm14_conv2d1x1_avm_read),
        .out_lm14_conv2d1x1_avm_write(bb_conv2d1x1_B4_out_lm14_conv2d1x1_avm_write),
        .out_lm14_conv2d1x1_avm_writedata(bb_conv2d1x1_B4_out_lm14_conv2d1x1_avm_writedata),
        .out_lm16_conv2d1x1_avm_address(bb_conv2d1x1_B4_out_lm16_conv2d1x1_avm_address),
        .out_lm16_conv2d1x1_avm_burstcount(bb_conv2d1x1_B4_out_lm16_conv2d1x1_avm_burstcount),
        .out_lm16_conv2d1x1_avm_byteenable(bb_conv2d1x1_B4_out_lm16_conv2d1x1_avm_byteenable),
        .out_lm16_conv2d1x1_avm_enable(bb_conv2d1x1_B4_out_lm16_conv2d1x1_avm_enable),
        .out_lm16_conv2d1x1_avm_read(bb_conv2d1x1_B4_out_lm16_conv2d1x1_avm_read),
        .out_lm16_conv2d1x1_avm_write(bb_conv2d1x1_B4_out_lm16_conv2d1x1_avm_write),
        .out_lm16_conv2d1x1_avm_writedata(bb_conv2d1x1_B4_out_lm16_conv2d1x1_avm_writedata),
        .out_lm_conv2d1x1_avm_address(bb_conv2d1x1_B4_out_lm_conv2d1x1_avm_address),
        .out_lm_conv2d1x1_avm_burstcount(bb_conv2d1x1_B4_out_lm_conv2d1x1_avm_burstcount),
        .out_lm_conv2d1x1_avm_byteenable(bb_conv2d1x1_B4_out_lm_conv2d1x1_avm_byteenable),
        .out_lm_conv2d1x1_avm_enable(bb_conv2d1x1_B4_out_lm_conv2d1x1_avm_enable),
        .out_lm_conv2d1x1_avm_read(bb_conv2d1x1_B4_out_lm_conv2d1x1_avm_read),
        .out_lm_conv2d1x1_avm_write(bb_conv2d1x1_B4_out_lm_conv2d1x1_avm_write),
        .out_lm_conv2d1x1_avm_writedata(bb_conv2d1x1_B4_out_lm_conv2d1x1_avm_writedata),
        .out_stall_in_0(bb_conv2d1x1_B4_out_stall_in_0),
        .out_stall_out_0(bb_conv2d1x1_B4_out_stall_out_0),
        .out_stall_out_1(bb_conv2d1x1_B4_out_stall_out_1),
        .out_unnamed_conv2d1x16(bb_conv2d1x1_B4_out_unnamed_conv2d1x16),
        .out_valid_in_0(bb_conv2d1x1_B4_out_valid_in_0),
        .out_valid_in_1(bb_conv2d1x1_B4_out_valid_in_1),
        .out_valid_out_0(bb_conv2d1x1_B4_out_valid_out_0),
        .out_valid_out_1(bb_conv2d1x1_B4_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B3_sr_0_aunroll_x(BLACKBOX,118)
    conv2d1x1_bb_B3_sr_0 thebb_conv2d1x1_B3_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B3_out_stall_out_0),
        .in_i_valid(bb_conv2d1x1_B4_out_valid_out_0),
        .in_i_data_0_tpl(bb_conv2d1x1_B4_out_c0_exe11),
        .in_i_data_1_tpl(bb_conv2d1x1_B4_out_c0_exe34),
        .in_i_data_2_tpl(bb_conv2d1x1_B4_out_c0_exe48),
        .in_i_data_3_tpl(bb_conv2d1x1_B4_out_c0_exe511),
        .in_i_data_4_tpl(bb_conv2d1x1_B4_out_c0_exe613),
        .in_i_data_5_tpl(bb_conv2d1x1_B4_out_c0_exe716),
        .in_i_data_6_tpl(bb_conv2d1x1_B4_out_c0_exe820),
        .in_i_data_7_tpl(bb_conv2d1x1_B4_out_c0_exe922),
        .in_i_data_8_tpl(bb_conv2d1x1_B4_out_unnamed_conv2d1x16),
        .in_i_data_9_tpl(bb_conv2d1x1_B4_out_j_05926),
        .in_i_data_10_tpl(bb_conv2d1x1_B4_out_c0_exe14927),
        .in_i_data_11_tpl(bb_conv2d1x1_B4_out_c1_exe1),
        .in_i_data_12_tpl(bb_conv2d1x1_B4_out_acl_global_id_132),
        .out_o_stall(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_12_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_015(CONSTANT,12)
    assign c_i32_015_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_conv2d1x1_B4_sr_1_aunroll_x(BLACKBOX,120)
    conv2d1x1_bb_B4_sr_1 thebb_conv2d1x1_B4_sr_1_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B4_out_stall_out_1),
        .in_i_valid(loop_limiter_conv2d1x11_out_o_valid),
        .in_i_data_0_tpl(c_i32_015_q),
        .in_i_data_1_tpl(bb_conv2d1x1_B2_out_unnamed_conv2d1x12),
        .in_i_data_2_tpl(bb_conv2d1x1_B2_out_c0_exe12),
        .in_i_data_3_tpl(bb_conv2d1x1_B2_out_c0_exe35),
        .in_i_data_4_tpl(bb_conv2d1x1_B2_out_c0_exe49),
        .in_i_data_5_tpl(bb_conv2d1x1_B2_out_c0_exe512),
        .in_i_data_6_tpl(bb_conv2d1x1_B2_out_c0_exe614),
        .in_i_data_7_tpl(bb_conv2d1x1_B2_out_c0_exe717),
        .in_i_data_8_tpl(bb_conv2d1x1_B2_out_c0_exe821),
        .in_i_data_9_tpl(bb_conv2d1x1_B2_out_c0_exe923),
        .in_i_data_10_tpl(bb_conv2d1x1_B2_out_unnamed_conv2d1x12),
        .in_i_data_11_tpl(bb_conv2d1x1_B2_out_j_059),
        .in_i_data_12_tpl(bb_conv2d1x1_B2_out_c0_exe149),
        .in_i_data_13_tpl(bb_conv2d1x1_B2_out_acl_global_id_130),
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
        .out_o_data_10_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_13_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv2d1x11(BLACKBOX,62)
    conv2d1x1_loop_limiter_1 theloop_limiter_conv2d1x11 (
        .in_i_stall(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_conv2d1x1_B2_out_valid_out_0),
        .in_i_valid_exit(bb_conv2d1x1_B4_out_valid_out_0),
        .out_o_stall(loop_limiter_conv2d1x11_out_o_stall),
        .out_o_valid(loop_limiter_conv2d1x11_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B0(BLACKBOX,2)
    conv2d1x1_bb_B0 thebb_conv2d1x1_B0 (
        .in_acl_global_id_0_0(in_arg_acl_global_id_0),
        .in_acl_global_id_1_0(in_arg_acl_global_id_1),
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight(in_arg_filter_weight),
        .in_flush(in_start),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_output_im(in_arg_output_im),
        .in_stall_in_0(loop_limiter_conv2d1x10_out_o_stall),
        .in_unnamed_conv2d1x10_conv2d1x1_avm_readdata(in_unnamed_conv2d1x10_conv2d1x1_avm_readdata),
        .in_unnamed_conv2d1x10_conv2d1x1_avm_readdatavalid(in_unnamed_conv2d1x10_conv2d1x1_avm_readdatavalid),
        .in_unnamed_conv2d1x10_conv2d1x1_avm_waitrequest(in_unnamed_conv2d1x10_conv2d1x1_avm_waitrequest),
        .in_unnamed_conv2d1x10_conv2d1x1_avm_writeack(in_unnamed_conv2d1x10_conv2d1x1_avm_writeack),
        .in_valid_in_0(in_valid_in),
        .out_acl_global_id_1(bb_conv2d1x1_B0_out_acl_global_id_1),
        .out_c0_exe1(bb_conv2d1x1_B0_out_c0_exe1),
        .out_c0_exe3(bb_conv2d1x1_B0_out_c0_exe3),
        .out_c0_exe4(bb_conv2d1x1_B0_out_c0_exe4),
        .out_c0_exe5(bb_conv2d1x1_B0_out_c0_exe5),
        .out_c0_exe6(bb_conv2d1x1_B0_out_c0_exe6),
        .out_c0_exe7(bb_conv2d1x1_B0_out_c0_exe7),
        .out_c0_exe8(bb_conv2d1x1_B0_out_c0_exe8),
        .out_c0_exe9(bb_conv2d1x1_B0_out_c0_exe9),
        .out_stall_out_0(bb_conv2d1x1_B0_out_stall_out_0),
        .out_unnamed_conv2d1x10(bb_conv2d1x1_B0_out_unnamed_conv2d1x10),
        .out_unnamed_conv2d1x10_conv2d1x1_avm_address(bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_address),
        .out_unnamed_conv2d1x10_conv2d1x1_avm_burstcount(bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_burstcount),
        .out_unnamed_conv2d1x10_conv2d1x1_avm_byteenable(bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_byteenable),
        .out_unnamed_conv2d1x10_conv2d1x1_avm_enable(bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_enable),
        .out_unnamed_conv2d1x10_conv2d1x1_avm_read(bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_read),
        .out_unnamed_conv2d1x10_conv2d1x1_avm_write(bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_write),
        .out_unnamed_conv2d1x10_conv2d1x1_avm_writedata(bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_writedata),
        .out_valid_out_0(bb_conv2d1x1_B0_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B2_sr_1_aunroll_x(BLACKBOX,117)
    conv2d1x1_bb_B2_sr_1 thebb_conv2d1x1_B2_sr_1_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_conv2d1x10_out_o_valid),
        .in_i_data_0_tpl(c_i32_015_q),
        .in_i_data_1_tpl(bb_conv2d1x1_B0_out_c0_exe1),
        .in_i_data_2_tpl(bb_conv2d1x1_B0_out_c0_exe3),
        .in_i_data_3_tpl(bb_conv2d1x1_B0_out_c0_exe4),
        .in_i_data_4_tpl(bb_conv2d1x1_B0_out_c0_exe5),
        .in_i_data_5_tpl(bb_conv2d1x1_B0_out_c0_exe6),
        .in_i_data_6_tpl(bb_conv2d1x1_B0_out_c0_exe7),
        .in_i_data_7_tpl(bb_conv2d1x1_B0_out_c0_exe8),
        .in_i_data_8_tpl(bb_conv2d1x1_B0_out_c0_exe9),
        .in_i_data_9_tpl(bb_conv2d1x1_B0_out_unnamed_conv2d1x10),
        .in_i_data_10_tpl(bb_conv2d1x1_B0_out_acl_global_id_1),
        .out_o_stall(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_10_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B2_sr_0_aunroll_x(BLACKBOX,116)
    conv2d1x1_bb_B2_sr_0 thebb_conv2d1x1_B2_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B2_out_stall_out_0),
        .in_i_valid(bb_conv2d1x1_B3_out_valid_out_0),
        .in_i_data_0_tpl(bb_conv2d1x1_B3_out_inc64),
        .in_i_data_1_tpl(bb_conv2d1x1_B3_out_c0_exe13),
        .in_i_data_2_tpl(bb_conv2d1x1_B3_out_c0_exe36),
        .in_i_data_3_tpl(bb_conv2d1x1_B3_out_c0_exe47),
        .in_i_data_4_tpl(bb_conv2d1x1_B3_out_c0_exe510),
        .in_i_data_5_tpl(bb_conv2d1x1_B3_out_c0_exe615),
        .in_i_data_6_tpl(bb_conv2d1x1_B3_out_c0_exe718),
        .in_i_data_7_tpl(bb_conv2d1x1_B3_out_c0_exe819),
        .in_i_data_8_tpl(bb_conv2d1x1_B3_out_c0_exe924),
        .in_i_data_9_tpl(bb_conv2d1x1_B3_out_unnamed_conv2d1x13),
        .in_i_data_10_tpl(bb_conv2d1x1_B3_out_acl_global_id_131),
        .out_o_stall(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_10_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B2(BLACKBOX,4)
    conv2d1x1_bb_B2 thebb_conv2d1x1_B2 (
        .in_acl_global_id_130_0(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_acl_global_id_130_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe12_0(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe12_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe35_0(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe35_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe49_0(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe49_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe512_0(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe512_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe614_0(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe614_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe717_0(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe717_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe821_0(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe821_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe923_0(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe923_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_j_059_0(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_j_059_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(loop_limiter_conv2d1x11_out_o_stall),
        .in_unnamed_conv2d1x12_0(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_unnamed_conv2d1x12_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_valid_in_0(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_valid),
        .out_acl_global_id_130(bb_conv2d1x1_B2_out_acl_global_id_130),
        .out_c0_exe12(bb_conv2d1x1_B2_out_c0_exe12),
        .out_c0_exe149(bb_conv2d1x1_B2_out_c0_exe149),
        .out_c0_exe35(bb_conv2d1x1_B2_out_c0_exe35),
        .out_c0_exe49(bb_conv2d1x1_B2_out_c0_exe49),
        .out_c0_exe512(bb_conv2d1x1_B2_out_c0_exe512),
        .out_c0_exe614(bb_conv2d1x1_B2_out_c0_exe614),
        .out_c0_exe717(bb_conv2d1x1_B2_out_c0_exe717),
        .out_c0_exe821(bb_conv2d1x1_B2_out_c0_exe821),
        .out_c0_exe923(bb_conv2d1x1_B2_out_c0_exe923),
        .out_j_059(bb_conv2d1x1_B2_out_j_059),
        .out_stall_out_0(bb_conv2d1x1_B2_out_stall_out_0),
        .out_stall_out_1(bb_conv2d1x1_B2_out_stall_out_1),
        .out_unnamed_conv2d1x12(bb_conv2d1x1_B2_out_unnamed_conv2d1x12),
        .out_valid_in_0(bb_conv2d1x1_B2_out_valid_in_0),
        .out_valid_in_1(bb_conv2d1x1_B2_out_valid_in_1),
        .out_valid_out_0(bb_conv2d1x1_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B1(BLACKBOX,3)
    conv2d1x1_bb_B1 thebb_conv2d1x1_B1 (
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_conv2d1x1_B1_out_stall_out_0),
        .out_valid_out_0(bb_conv2d1x1_B1_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B1_sr_0_aunroll_x(BLACKBOX,115)
    conv2d1x1_bb_B1_sr_0 thebb_conv2d1x1_B1_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B1_out_stall_out_0),
        .in_i_valid(bb_conv2d1x1_B3_out_valid_out_1),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B3(BLACKBOX,5)
    conv2d1x1_bb_B3 thebb_conv2d1x1_B3 (
        .in_acl_global_id_131_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_12_tpl),
        .in_c0_exe13_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe14928_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe36_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe47_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe510_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe615_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe718_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe819_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe924_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c1_exe129_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_flush(in_start),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_j_05925_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_stall_in_0(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_stall),
        .in_unnamed_conv2d1x13_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_unnamed_conv2d1x15_conv2d1x1_avm_readdata(in_unnamed_conv2d1x15_conv2d1x1_avm_readdata),
        .in_unnamed_conv2d1x15_conv2d1x1_avm_readdatavalid(in_unnamed_conv2d1x15_conv2d1x1_avm_readdatavalid),
        .in_unnamed_conv2d1x15_conv2d1x1_avm_waitrequest(in_unnamed_conv2d1x15_conv2d1x1_avm_waitrequest),
        .in_unnamed_conv2d1x15_conv2d1x1_avm_writeack(in_unnamed_conv2d1x15_conv2d1x1_avm_writeack),
        .in_valid_in_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_valid),
        .out_acl_global_id_131(bb_conv2d1x1_B3_out_acl_global_id_131),
        .out_c0_exe13(bb_conv2d1x1_B3_out_c0_exe13),
        .out_c0_exe36(bb_conv2d1x1_B3_out_c0_exe36),
        .out_c0_exe47(bb_conv2d1x1_B3_out_c0_exe47),
        .out_c0_exe510(bb_conv2d1x1_B3_out_c0_exe510),
        .out_c0_exe615(bb_conv2d1x1_B3_out_c0_exe615),
        .out_c0_exe718(bb_conv2d1x1_B3_out_c0_exe718),
        .out_c0_exe819(bb_conv2d1x1_B3_out_c0_exe819),
        .out_c0_exe924(bb_conv2d1x1_B3_out_c0_exe924),
        .out_inc64(bb_conv2d1x1_B3_out_inc64),
        .out_lsu_unnamed_conv2d1x15_o_active(bb_conv2d1x1_B3_out_lsu_unnamed_conv2d1x15_o_active),
        .out_stall_in_0(bb_conv2d1x1_B3_out_stall_in_0),
        .out_stall_out_0(bb_conv2d1x1_B3_out_stall_out_0),
        .out_unnamed_conv2d1x13(bb_conv2d1x1_B3_out_unnamed_conv2d1x13),
        .out_unnamed_conv2d1x15_conv2d1x1_avm_address(bb_conv2d1x1_B3_out_unnamed_conv2d1x15_conv2d1x1_avm_address),
        .out_unnamed_conv2d1x15_conv2d1x1_avm_burstcount(bb_conv2d1x1_B3_out_unnamed_conv2d1x15_conv2d1x1_avm_burstcount),
        .out_unnamed_conv2d1x15_conv2d1x1_avm_byteenable(bb_conv2d1x1_B3_out_unnamed_conv2d1x15_conv2d1x1_avm_byteenable),
        .out_unnamed_conv2d1x15_conv2d1x1_avm_enable(bb_conv2d1x1_B3_out_unnamed_conv2d1x15_conv2d1x1_avm_enable),
        .out_unnamed_conv2d1x15_conv2d1x1_avm_read(bb_conv2d1x1_B3_out_unnamed_conv2d1x15_conv2d1x1_avm_read),
        .out_unnamed_conv2d1x15_conv2d1x1_avm_write(bb_conv2d1x1_B3_out_unnamed_conv2d1x15_conv2d1x1_avm_write),
        .out_unnamed_conv2d1x15_conv2d1x1_avm_writedata(bb_conv2d1x1_B3_out_unnamed_conv2d1x15_conv2d1x1_avm_writedata),
        .out_valid_out_0(bb_conv2d1x1_B3_out_valid_out_0),
        .out_valid_out_1(bb_conv2d1x1_B3_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv2d1x10(BLACKBOX,61)
    conv2d1x1_loop_limiter_0 theloop_limiter_conv2d1x10 (
        .in_i_stall(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_conv2d1x1_B0_out_valid_out_0),
        .in_i_valid_exit(bb_conv2d1x1_B3_out_valid_out_1),
        .out_o_stall(loop_limiter_conv2d1x10_out_o_stall),
        .out_o_valid(loop_limiter_conv2d1x10_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // conv2d1x1_B2_x(EXTIFACE,14)
    assign conv2d1x1_B2_x_i_capture = GND_q;
    assign conv2d1x1_B2_x_i_clear = GND_q;
    assign conv2d1x1_B2_x_i_enable = VCC_q;
    assign conv2d1x1_B2_x_i_shift = GND_q;
    assign conv2d1x1_B2_x_i_stall_pred = loop_limiter_conv2d1x10_out_o_stall;
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

    // conv2d1x1_B4_x(EXTIFACE,15)
    assign conv2d1x1_B4_x_i_capture = GND_q;
    assign conv2d1x1_B4_x_i_clear = GND_q;
    assign conv2d1x1_B4_x_i_enable = VCC_q;
    assign conv2d1x1_B4_x_i_shift = GND_q;
    assign conv2d1x1_B4_x_i_stall_pred = loop_limiter_conv2d1x11_out_o_stall;
    assign conv2d1x1_B4_x_i_stall_succ = bb_conv2d1x1_B4_out_stall_in_0;
    assign conv2d1x1_B4_x_i_valid_loop = bb_conv2d1x1_B4_out_valid_in_0;
    assign conv2d1x1_B4_x_i_valid_pred = bb_conv2d1x1_B4_out_valid_in_1;
    assign conv2d1x1_B4_x_i_valid_succ = bb_conv2d1x1_B4_out_valid_out_0;
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

    // out_lm11_conv2d1x1_avm_address(GPOUT,63)
    assign out_lm11_conv2d1x1_avm_address = bb_conv2d1x1_B4_out_lm11_conv2d1x1_avm_address;

    // out_lm11_conv2d1x1_avm_burstcount(GPOUT,64)
    assign out_lm11_conv2d1x1_avm_burstcount = bb_conv2d1x1_B4_out_lm11_conv2d1x1_avm_burstcount;

    // out_lm11_conv2d1x1_avm_byteenable(GPOUT,65)
    assign out_lm11_conv2d1x1_avm_byteenable = bb_conv2d1x1_B4_out_lm11_conv2d1x1_avm_byteenable;

    // out_lm11_conv2d1x1_avm_enable(GPOUT,66)
    assign out_lm11_conv2d1x1_avm_enable = bb_conv2d1x1_B4_out_lm11_conv2d1x1_avm_enable;

    // out_lm11_conv2d1x1_avm_read(GPOUT,67)
    assign out_lm11_conv2d1x1_avm_read = bb_conv2d1x1_B4_out_lm11_conv2d1x1_avm_read;

    // out_lm11_conv2d1x1_avm_write(GPOUT,68)
    assign out_lm11_conv2d1x1_avm_write = bb_conv2d1x1_B4_out_lm11_conv2d1x1_avm_write;

    // out_lm11_conv2d1x1_avm_writedata(GPOUT,69)
    assign out_lm11_conv2d1x1_avm_writedata = bb_conv2d1x1_B4_out_lm11_conv2d1x1_avm_writedata;

    // out_lm12_conv2d1x1_avm_address(GPOUT,70)
    assign out_lm12_conv2d1x1_avm_address = bb_conv2d1x1_B4_out_lm12_conv2d1x1_avm_address;

    // out_lm12_conv2d1x1_avm_burstcount(GPOUT,71)
    assign out_lm12_conv2d1x1_avm_burstcount = bb_conv2d1x1_B4_out_lm12_conv2d1x1_avm_burstcount;

    // out_lm12_conv2d1x1_avm_byteenable(GPOUT,72)
    assign out_lm12_conv2d1x1_avm_byteenable = bb_conv2d1x1_B4_out_lm12_conv2d1x1_avm_byteenable;

    // out_lm12_conv2d1x1_avm_enable(GPOUT,73)
    assign out_lm12_conv2d1x1_avm_enable = bb_conv2d1x1_B4_out_lm12_conv2d1x1_avm_enable;

    // out_lm12_conv2d1x1_avm_read(GPOUT,74)
    assign out_lm12_conv2d1x1_avm_read = bb_conv2d1x1_B4_out_lm12_conv2d1x1_avm_read;

    // out_lm12_conv2d1x1_avm_write(GPOUT,75)
    assign out_lm12_conv2d1x1_avm_write = bb_conv2d1x1_B4_out_lm12_conv2d1x1_avm_write;

    // out_lm12_conv2d1x1_avm_writedata(GPOUT,76)
    assign out_lm12_conv2d1x1_avm_writedata = bb_conv2d1x1_B4_out_lm12_conv2d1x1_avm_writedata;

    // out_lm14_conv2d1x1_avm_address(GPOUT,77)
    assign out_lm14_conv2d1x1_avm_address = bb_conv2d1x1_B4_out_lm14_conv2d1x1_avm_address;

    // out_lm14_conv2d1x1_avm_burstcount(GPOUT,78)
    assign out_lm14_conv2d1x1_avm_burstcount = bb_conv2d1x1_B4_out_lm14_conv2d1x1_avm_burstcount;

    // out_lm14_conv2d1x1_avm_byteenable(GPOUT,79)
    assign out_lm14_conv2d1x1_avm_byteenable = bb_conv2d1x1_B4_out_lm14_conv2d1x1_avm_byteenable;

    // out_lm14_conv2d1x1_avm_enable(GPOUT,80)
    assign out_lm14_conv2d1x1_avm_enable = bb_conv2d1x1_B4_out_lm14_conv2d1x1_avm_enable;

    // out_lm14_conv2d1x1_avm_read(GPOUT,81)
    assign out_lm14_conv2d1x1_avm_read = bb_conv2d1x1_B4_out_lm14_conv2d1x1_avm_read;

    // out_lm14_conv2d1x1_avm_write(GPOUT,82)
    assign out_lm14_conv2d1x1_avm_write = bb_conv2d1x1_B4_out_lm14_conv2d1x1_avm_write;

    // out_lm14_conv2d1x1_avm_writedata(GPOUT,83)
    assign out_lm14_conv2d1x1_avm_writedata = bb_conv2d1x1_B4_out_lm14_conv2d1x1_avm_writedata;

    // out_lm16_conv2d1x1_avm_address(GPOUT,84)
    assign out_lm16_conv2d1x1_avm_address = bb_conv2d1x1_B4_out_lm16_conv2d1x1_avm_address;

    // out_lm16_conv2d1x1_avm_burstcount(GPOUT,85)
    assign out_lm16_conv2d1x1_avm_burstcount = bb_conv2d1x1_B4_out_lm16_conv2d1x1_avm_burstcount;

    // out_lm16_conv2d1x1_avm_byteenable(GPOUT,86)
    assign out_lm16_conv2d1x1_avm_byteenable = bb_conv2d1x1_B4_out_lm16_conv2d1x1_avm_byteenable;

    // out_lm16_conv2d1x1_avm_enable(GPOUT,87)
    assign out_lm16_conv2d1x1_avm_enable = bb_conv2d1x1_B4_out_lm16_conv2d1x1_avm_enable;

    // out_lm16_conv2d1x1_avm_read(GPOUT,88)
    assign out_lm16_conv2d1x1_avm_read = bb_conv2d1x1_B4_out_lm16_conv2d1x1_avm_read;

    // out_lm16_conv2d1x1_avm_write(GPOUT,89)
    assign out_lm16_conv2d1x1_avm_write = bb_conv2d1x1_B4_out_lm16_conv2d1x1_avm_write;

    // out_lm16_conv2d1x1_avm_writedata(GPOUT,90)
    assign out_lm16_conv2d1x1_avm_writedata = bb_conv2d1x1_B4_out_lm16_conv2d1x1_avm_writedata;

    // out_lm_conv2d1x1_avm_address(GPOUT,91)
    assign out_lm_conv2d1x1_avm_address = bb_conv2d1x1_B4_out_lm_conv2d1x1_avm_address;

    // out_lm_conv2d1x1_avm_burstcount(GPOUT,92)
    assign out_lm_conv2d1x1_avm_burstcount = bb_conv2d1x1_B4_out_lm_conv2d1x1_avm_burstcount;

    // out_lm_conv2d1x1_avm_byteenable(GPOUT,93)
    assign out_lm_conv2d1x1_avm_byteenable = bb_conv2d1x1_B4_out_lm_conv2d1x1_avm_byteenable;

    // out_lm_conv2d1x1_avm_enable(GPOUT,94)
    assign out_lm_conv2d1x1_avm_enable = bb_conv2d1x1_B4_out_lm_conv2d1x1_avm_enable;

    // out_lm_conv2d1x1_avm_read(GPOUT,95)
    assign out_lm_conv2d1x1_avm_read = bb_conv2d1x1_B4_out_lm_conv2d1x1_avm_read;

    // out_lm_conv2d1x1_avm_write(GPOUT,96)
    assign out_lm_conv2d1x1_avm_write = bb_conv2d1x1_B4_out_lm_conv2d1x1_avm_write;

    // out_lm_conv2d1x1_avm_writedata(GPOUT,97)
    assign out_lm_conv2d1x1_avm_writedata = bb_conv2d1x1_B4_out_lm_conv2d1x1_avm_writedata;

    // out_o_active_unnamed_conv2d1x15(GPOUT,98)
    assign out_o_active_unnamed_conv2d1x15 = bb_conv2d1x1_B3_out_lsu_unnamed_conv2d1x15_o_active;

    // out_stall_out(GPOUT,99)
    assign out_stall_out = bb_conv2d1x1_B0_out_stall_out_0;

    // out_unnamed_conv2d1x10_conv2d1x1_avm_address(GPOUT,100)
    assign out_unnamed_conv2d1x10_conv2d1x1_avm_address = bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_address;

    // out_unnamed_conv2d1x10_conv2d1x1_avm_burstcount(GPOUT,101)
    assign out_unnamed_conv2d1x10_conv2d1x1_avm_burstcount = bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_burstcount;

    // out_unnamed_conv2d1x10_conv2d1x1_avm_byteenable(GPOUT,102)
    assign out_unnamed_conv2d1x10_conv2d1x1_avm_byteenable = bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_byteenable;

    // out_unnamed_conv2d1x10_conv2d1x1_avm_enable(GPOUT,103)
    assign out_unnamed_conv2d1x10_conv2d1x1_avm_enable = bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_enable;

    // out_unnamed_conv2d1x10_conv2d1x1_avm_read(GPOUT,104)
    assign out_unnamed_conv2d1x10_conv2d1x1_avm_read = bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_read;

    // out_unnamed_conv2d1x10_conv2d1x1_avm_write(GPOUT,105)
    assign out_unnamed_conv2d1x10_conv2d1x1_avm_write = bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_write;

    // out_unnamed_conv2d1x10_conv2d1x1_avm_writedata(GPOUT,106)
    assign out_unnamed_conv2d1x10_conv2d1x1_avm_writedata = bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_writedata;

    // out_unnamed_conv2d1x15_conv2d1x1_avm_address(GPOUT,107)
    assign out_unnamed_conv2d1x15_conv2d1x1_avm_address = bb_conv2d1x1_B3_out_unnamed_conv2d1x15_conv2d1x1_avm_address;

    // out_unnamed_conv2d1x15_conv2d1x1_avm_burstcount(GPOUT,108)
    assign out_unnamed_conv2d1x15_conv2d1x1_avm_burstcount = bb_conv2d1x1_B3_out_unnamed_conv2d1x15_conv2d1x1_avm_burstcount;

    // out_unnamed_conv2d1x15_conv2d1x1_avm_byteenable(GPOUT,109)
    assign out_unnamed_conv2d1x15_conv2d1x1_avm_byteenable = bb_conv2d1x1_B3_out_unnamed_conv2d1x15_conv2d1x1_avm_byteenable;

    // out_unnamed_conv2d1x15_conv2d1x1_avm_enable(GPOUT,110)
    assign out_unnamed_conv2d1x15_conv2d1x1_avm_enable = bb_conv2d1x1_B3_out_unnamed_conv2d1x15_conv2d1x1_avm_enable;

    // out_unnamed_conv2d1x15_conv2d1x1_avm_read(GPOUT,111)
    assign out_unnamed_conv2d1x15_conv2d1x1_avm_read = bb_conv2d1x1_B3_out_unnamed_conv2d1x15_conv2d1x1_avm_read;

    // out_unnamed_conv2d1x15_conv2d1x1_avm_write(GPOUT,112)
    assign out_unnamed_conv2d1x15_conv2d1x1_avm_write = bb_conv2d1x1_B3_out_unnamed_conv2d1x15_conv2d1x1_avm_write;

    // out_unnamed_conv2d1x15_conv2d1x1_avm_writedata(GPOUT,113)
    assign out_unnamed_conv2d1x15_conv2d1x1_avm_writedata = bb_conv2d1x1_B3_out_unnamed_conv2d1x15_conv2d1x1_avm_writedata;

    // out_valid_out(GPOUT,114)
    assign out_valid_out = bb_conv2d1x1_B1_out_valid_out_0;

endmodule
