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
// SystemVerilog created on Sat Jun  3 12:58:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_function (
    input wire [63:0] in_arg_acl_global_id_0,
    input wire [63:0] in_arg_acl_global_size_0,
    input wire [63:0] in_arg_acl_global_size_1,
    input wire [63:0] in_arg_acl_global_size_2,
    input wire [31:0] in_arg_acl_local_size_0,
    input wire [31:0] in_arg_acl_local_size_1,
    input wire [31:0] in_arg_acl_local_size_2,
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
    input wire [511:0] in_unnamed_maxpool2d1_maxpool2d_avm_readdata,
    input wire [0:0] in_unnamed_maxpool2d1_maxpool2d_avm_readdatavalid,
    input wire [0:0] in_unnamed_maxpool2d1_maxpool2d_avm_waitrequest,
    input wire [0:0] in_unnamed_maxpool2d1_maxpool2d_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [30:0] out_lm_maxpool2d_avm_address,
    output wire [4:0] out_lm_maxpool2d_avm_burstcount,
    output wire [63:0] out_lm_maxpool2d_avm_byteenable,
    output wire [0:0] out_lm_maxpool2d_avm_enable,
    output wire [0:0] out_lm_maxpool2d_avm_read,
    output wire [0:0] out_lm_maxpool2d_avm_write,
    output wire [511:0] out_lm_maxpool2d_avm_writedata,
    output wire [0:0] out_o_active_unnamed_maxpool2d1,
    output wire [0:0] out_stall_out,
    output wire [30:0] out_unnamed_maxpool2d1_maxpool2d_avm_address,
    output wire [4:0] out_unnamed_maxpool2d1_maxpool2d_avm_burstcount,
    output wire [63:0] out_unnamed_maxpool2d1_maxpool2d_avm_byteenable,
    output wire [0:0] out_unnamed_maxpool2d1_maxpool2d_avm_enable,
    output wire [0:0] out_unnamed_maxpool2d1_maxpool2d_avm_read,
    output wire [0:0] out_unnamed_maxpool2d1_maxpool2d_avm_write,
    output wire [511:0] out_unnamed_maxpool2d1_maxpool2d_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] bb_maxpool2d_B0_out_c0_exe1;
    wire [63:0] bb_maxpool2d_B0_out_c0_exe2;
    wire [0:0] bb_maxpool2d_B0_out_c0_exe3;
    wire [0:0] bb_maxpool2d_B0_out_c0_exe4;
    wire [0:0] bb_maxpool2d_B0_out_stall_out_0;
    wire [0:0] bb_maxpool2d_B0_out_valid_out_0;
    wire [63:0] bb_maxpool2d_B1_out_c0_exe12;
    wire [31:0] bb_maxpool2d_B1_out_c0_exe128;
    wire [63:0] bb_maxpool2d_B1_out_c0_exe26;
    wire [0:0] bb_maxpool2d_B1_out_c0_exe38;
    wire [0:0] bb_maxpool2d_B1_out_c0_exe411;
    wire [31:0] bb_maxpool2d_B1_out_i_038;
    wire [31:0] bb_maxpool2d_B1_out_j_036;
    wire [31:0] bb_maxpool2d_B1_out_mul22;
    wire [31:0] bb_maxpool2d_B1_out_mul24;
    wire [0:0] bb_maxpool2d_B1_out_stall_out_0;
    wire [0:0] bb_maxpool2d_B1_out_stall_out_1;
    wire [0:0] bb_maxpool2d_B1_out_valid_in_0;
    wire [0:0] bb_maxpool2d_B1_out_valid_in_1;
    wire [0:0] bb_maxpool2d_B1_out_valid_out_0;
    wire [0:0] bb_maxpool2d_B2_out_stall_out_0;
    wire [0:0] bb_maxpool2d_B2_out_valid_out_0;
    wire [63:0] bb_maxpool2d_B3_out_c0_exe11;
    wire [31:0] bb_maxpool2d_B3_out_c0_exe12819;
    wire [63:0] bb_maxpool2d_B3_out_c0_exe25;
    wire [0:0] bb_maxpool2d_B3_out_c0_exe37;
    wire [0:0] bb_maxpool2d_B3_out_c0_exe410;
    wire [31:0] bb_maxpool2d_B3_out_c1_exe1;
    wire [31:0] bb_maxpool2d_B3_out_i_03814;
    wire [31:0] bb_maxpool2d_B3_out_j_03616;
    wire [31:0] bb_maxpool2d_B3_out_k_034_LC_OuterPHI;
    wire [31:0] bb_maxpool2d_B3_out_l_032_LC_InnerPHI;
    wire [30:0] bb_maxpool2d_B3_out_lm_maxpool2d_avm_address;
    wire [4:0] bb_maxpool2d_B3_out_lm_maxpool2d_avm_burstcount;
    wire [63:0] bb_maxpool2d_B3_out_lm_maxpool2d_avm_byteenable;
    wire [0:0] bb_maxpool2d_B3_out_lm_maxpool2d_avm_enable;
    wire [0:0] bb_maxpool2d_B3_out_lm_maxpool2d_avm_read;
    wire [0:0] bb_maxpool2d_B3_out_lm_maxpool2d_avm_write;
    wire [511:0] bb_maxpool2d_B3_out_lm_maxpool2d_avm_writedata;
    wire [31:0] bb_maxpool2d_B3_out_mul2217;
    wire [31:0] bb_maxpool2d_B3_out_mul2420;
    wire [0:0] bb_maxpool2d_B3_out_stall_in_0;
    wire [0:0] bb_maxpool2d_B3_out_stall_out_0;
    wire [0:0] bb_maxpool2d_B3_out_stall_out_1;
    wire [0:0] bb_maxpool2d_B3_out_valid_in_0;
    wire [0:0] bb_maxpool2d_B3_out_valid_in_1;
    wire [0:0] bb_maxpool2d_B3_out_valid_out_0;
    wire [0:0] bb_maxpool2d_B3_out_valid_out_1;
    wire [63:0] bb_maxpool2d_B4_out_c0_exe13;
    wire [63:0] bb_maxpool2d_B4_out_c0_exe24;
    wire [0:0] bb_maxpool2d_B4_out_c0_exe39;
    wire [0:0] bb_maxpool2d_B4_out_c0_exe412;
    wire [31:0] bb_maxpool2d_B4_out_i_038_LC_OuterPHI;
    wire [31:0] bb_maxpool2d_B4_out_j_036_LC_InnerPHI;
    wire [0:0] bb_maxpool2d_B4_out_lsu_unnamed_maxpool2d1_o_active;
    wire [0:0] bb_maxpool2d_B4_out_stall_in_0;
    wire [0:0] bb_maxpool2d_B4_out_stall_out_0;
    wire [30:0] bb_maxpool2d_B4_out_unnamed_maxpool2d1_maxpool2d_avm_address;
    wire [4:0] bb_maxpool2d_B4_out_unnamed_maxpool2d1_maxpool2d_avm_burstcount;
    wire [63:0] bb_maxpool2d_B4_out_unnamed_maxpool2d1_maxpool2d_avm_byteenable;
    wire [0:0] bb_maxpool2d_B4_out_unnamed_maxpool2d1_maxpool2d_avm_enable;
    wire [0:0] bb_maxpool2d_B4_out_unnamed_maxpool2d1_maxpool2d_avm_read;
    wire [0:0] bb_maxpool2d_B4_out_unnamed_maxpool2d1_maxpool2d_avm_write;
    wire [511:0] bb_maxpool2d_B4_out_unnamed_maxpool2d1_maxpool2d_avm_writedata;
    wire [0:0] bb_maxpool2d_B4_out_valid_out_0;
    wire [0:0] bb_maxpool2d_B4_out_valid_out_1;
    wire [31:0] c_float_0_000000e_0032_q;
    wire [31:0] c_i32_012_q;
    wire [0:0] loop_limiter_maxpool2d0_out_o_stall;
    wire [0:0] loop_limiter_maxpool2d0_out_o_valid;
    wire [0:0] loop_limiter_maxpool2d1_out_o_stall;
    wire [0:0] loop_limiter_maxpool2d1_out_o_valid;
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
    wire [0:0] bb_maxpool2d_B1_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_maxpool2d_B1_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_maxpool2d_B1_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_maxpool2d_B1_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_maxpool2d_B1_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_maxpool2d_B1_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_maxpool2d_B1_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_maxpool2d_B1_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_maxpool2d_B1_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_maxpool2d_B1_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_maxpool2d_B1_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_maxpool2d_B1_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_maxpool2d_B1_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_maxpool2d_B1_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_maxpool2d_B1_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_maxpool2d_B1_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_maxpool2d_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_maxpool2d_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_maxpool2d_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_maxpool2d_B3_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [63:0] bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_maxpool2d_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_maxpool2d_B3_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [63:0] bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_maxpool2d_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_maxpool2d_B4_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_maxpool2d_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_maxpool2d_B4_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_maxpool2d_B4_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_maxpool2d_B4_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_maxpool2d_B4_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_maxpool2d_B4_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_maxpool2d_B4_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_maxpool2d_B4_sr_0_aunroll_x_out_o_data_7_tpl;


    // bb_maxpool2d_B3_sr_0_aunroll_x(BLACKBOX,63)
    maxpool2d_bb_B3_sr_0 thebb_maxpool2d_B3_sr_0_aunroll_x (
        .in_i_stall(bb_maxpool2d_B3_out_stall_out_0),
        .in_i_valid(bb_maxpool2d_B3_out_valid_out_0),
        .in_i_data_0_tpl(bb_maxpool2d_B3_out_k_034_LC_OuterPHI),
        .in_i_data_1_tpl(bb_maxpool2d_B3_out_l_032_LC_InnerPHI),
        .in_i_data_2_tpl(bb_maxpool2d_B3_out_c1_exe1),
        .in_i_data_3_tpl(bb_maxpool2d_B3_out_c0_exe11),
        .in_i_data_4_tpl(bb_maxpool2d_B3_out_c0_exe25),
        .in_i_data_5_tpl(bb_maxpool2d_B3_out_c0_exe37),
        .in_i_data_6_tpl(bb_maxpool2d_B3_out_c0_exe410),
        .in_i_data_7_tpl(bb_maxpool2d_B3_out_i_03814),
        .in_i_data_8_tpl(bb_maxpool2d_B3_out_j_03616),
        .in_i_data_9_tpl(bb_maxpool2d_B3_out_mul2217),
        .in_i_data_10_tpl(bb_maxpool2d_B3_out_c0_exe12819),
        .in_i_data_11_tpl(bb_maxpool2d_B3_out_mul2420),
        .out_o_stall(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_11_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B3(BLACKBOX,5)
    maxpool2d_bb_B3 thebb_maxpool2d_B3 (
        .in_c0_exe11_0(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe11_1(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe12819_0(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe12819_1(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe25_0(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe25_1(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe37_0(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe37_1(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe410_0(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe410_1(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_flush(in_start),
        .in_i_03814_0(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_i_03814_1(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_input_size(in_arg_input_size),
        .in_j_03616_0(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_j_03616_1(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_k_034_0(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_k_034_1(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_l_032_0(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_l_032_1(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_lm_maxpool2d_avm_readdata(in_lm_maxpool2d_avm_readdata),
        .in_lm_maxpool2d_avm_readdatavalid(in_lm_maxpool2d_avm_readdatavalid),
        .in_lm_maxpool2d_avm_waitrequest(in_lm_maxpool2d_avm_waitrequest),
        .in_lm_maxpool2d_avm_writeack(in_lm_maxpool2d_avm_writeack),
        .in_mul2217_0(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_mul2217_1(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_mul2420_0(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_mul2420_1(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_output_size(in_arg_output_size),
        .in_stall_in_0(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_maxpool2d_B4_sr_0_aunroll_x_out_o_stall),
        .in_tmp_131_0(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_tmp_131_1(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_valid_in_0(bb_maxpool2d_B3_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe11(bb_maxpool2d_B3_out_c0_exe11),
        .out_c0_exe12819(bb_maxpool2d_B3_out_c0_exe12819),
        .out_c0_exe25(bb_maxpool2d_B3_out_c0_exe25),
        .out_c0_exe37(bb_maxpool2d_B3_out_c0_exe37),
        .out_c0_exe410(bb_maxpool2d_B3_out_c0_exe410),
        .out_c1_exe1(bb_maxpool2d_B3_out_c1_exe1),
        .out_i_03814(bb_maxpool2d_B3_out_i_03814),
        .out_j_03616(bb_maxpool2d_B3_out_j_03616),
        .out_k_034_LC_OuterPHI(bb_maxpool2d_B3_out_k_034_LC_OuterPHI),
        .out_l_032_LC_InnerPHI(bb_maxpool2d_B3_out_l_032_LC_InnerPHI),
        .out_lm_maxpool2d_avm_address(bb_maxpool2d_B3_out_lm_maxpool2d_avm_address),
        .out_lm_maxpool2d_avm_burstcount(bb_maxpool2d_B3_out_lm_maxpool2d_avm_burstcount),
        .out_lm_maxpool2d_avm_byteenable(bb_maxpool2d_B3_out_lm_maxpool2d_avm_byteenable),
        .out_lm_maxpool2d_avm_enable(bb_maxpool2d_B3_out_lm_maxpool2d_avm_enable),
        .out_lm_maxpool2d_avm_read(bb_maxpool2d_B3_out_lm_maxpool2d_avm_read),
        .out_lm_maxpool2d_avm_write(bb_maxpool2d_B3_out_lm_maxpool2d_avm_write),
        .out_lm_maxpool2d_avm_writedata(bb_maxpool2d_B3_out_lm_maxpool2d_avm_writedata),
        .out_mul2217(bb_maxpool2d_B3_out_mul2217),
        .out_mul2420(bb_maxpool2d_B3_out_mul2420),
        .out_stall_in_0(bb_maxpool2d_B3_out_stall_in_0),
        .out_stall_out_0(bb_maxpool2d_B3_out_stall_out_0),
        .out_stall_out_1(bb_maxpool2d_B3_out_stall_out_1),
        .out_valid_in_0(bb_maxpool2d_B3_out_valid_in_0),
        .out_valid_in_1(bb_maxpool2d_B3_out_valid_in_1),
        .out_valid_out_0(bb_maxpool2d_B3_out_valid_out_0),
        .out_valid_out_1(bb_maxpool2d_B3_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B4_sr_0_aunroll_x(BLACKBOX,65)
    maxpool2d_bb_B4_sr_0 thebb_maxpool2d_B4_sr_0_aunroll_x (
        .in_i_stall(bb_maxpool2d_B4_out_stall_out_0),
        .in_i_valid(bb_maxpool2d_B3_out_valid_out_1),
        .in_i_data_0_tpl(bb_maxpool2d_B3_out_c0_exe11),
        .in_i_data_1_tpl(bb_maxpool2d_B3_out_c0_exe25),
        .in_i_data_2_tpl(bb_maxpool2d_B3_out_c0_exe37),
        .in_i_data_3_tpl(bb_maxpool2d_B3_out_c0_exe410),
        .in_i_data_4_tpl(bb_maxpool2d_B3_out_i_03814),
        .in_i_data_5_tpl(bb_maxpool2d_B3_out_j_03616),
        .in_i_data_6_tpl(bb_maxpool2d_B3_out_c0_exe12819),
        .in_i_data_7_tpl(bb_maxpool2d_B3_out_c1_exe1),
        .out_o_stall(bb_maxpool2d_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_maxpool2d_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_maxpool2d_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_maxpool2d_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_maxpool2d_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_maxpool2d_B4_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_maxpool2d_B4_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_maxpool2d_B4_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_maxpool2d_B4_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_maxpool2d_B4_sr_0_aunroll_x_out_o_data_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // c_float_0_000000e_0032(FLOATCONSTANT,7)
    assign c_float_0_000000e_0032_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_012(CONSTANT,13)
    assign c_i32_012_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_maxpool2d_B3_sr_1_aunroll_x(BLACKBOX,64)
    maxpool2d_bb_B3_sr_1 thebb_maxpool2d_B3_sr_1_aunroll_x (
        .in_i_stall(bb_maxpool2d_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_maxpool2d1_out_o_valid),
        .in_i_data_0_tpl(c_i32_012_q),
        .in_i_data_1_tpl(c_i32_012_q),
        .in_i_data_2_tpl(c_float_0_000000e_0032_q),
        .in_i_data_3_tpl(bb_maxpool2d_B1_out_c0_exe12),
        .in_i_data_4_tpl(bb_maxpool2d_B1_out_c0_exe26),
        .in_i_data_5_tpl(bb_maxpool2d_B1_out_c0_exe38),
        .in_i_data_6_tpl(bb_maxpool2d_B1_out_c0_exe411),
        .in_i_data_7_tpl(bb_maxpool2d_B1_out_i_038),
        .in_i_data_8_tpl(bb_maxpool2d_B1_out_j_036),
        .in_i_data_9_tpl(bb_maxpool2d_B1_out_mul22),
        .in_i_data_10_tpl(bb_maxpool2d_B1_out_c0_exe128),
        .in_i_data_11_tpl(bb_maxpool2d_B1_out_mul24),
        .out_o_stall(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_data_11_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_maxpool2d1(BLACKBOX,40)
    maxpool2d_loop_limiter_1 theloop_limiter_maxpool2d1 (
        .in_i_stall(bb_maxpool2d_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_maxpool2d_B4_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_maxpool2d_B1_out_valid_out_0),
        .in_i_valid_exit(bb_maxpool2d_B3_out_valid_out_1),
        .out_o_stall(loop_limiter_maxpool2d1_out_o_stall),
        .out_o_valid(loop_limiter_maxpool2d1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B0(BLACKBOX,2)
    maxpool2d_bb_B0 thebb_maxpool2d_B0 (
        .in_acl_global_id_0_0(in_arg_acl_global_id_0),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_output_im(in_arg_output_im),
        .in_output_size(in_arg_output_size),
        .in_stall_in_0(loop_limiter_maxpool2d0_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_c0_exe1(bb_maxpool2d_B0_out_c0_exe1),
        .out_c0_exe2(bb_maxpool2d_B0_out_c0_exe2),
        .out_c0_exe3(bb_maxpool2d_B0_out_c0_exe3),
        .out_c0_exe4(bb_maxpool2d_B0_out_c0_exe4),
        .out_stall_out_0(bb_maxpool2d_B0_out_stall_out_0),
        .out_valid_out_0(bb_maxpool2d_B0_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B1_sr_1_aunroll_x(BLACKBOX,61)
    maxpool2d_bb_B1_sr_1 thebb_maxpool2d_B1_sr_1_aunroll_x (
        .in_i_stall(bb_maxpool2d_B1_out_stall_out_1),
        .in_i_valid(loop_limiter_maxpool2d0_out_o_valid),
        .in_i_data_0_tpl(c_i32_012_q),
        .in_i_data_1_tpl(c_i32_012_q),
        .in_i_data_2_tpl(bb_maxpool2d_B0_out_c0_exe1),
        .in_i_data_3_tpl(bb_maxpool2d_B0_out_c0_exe2),
        .in_i_data_4_tpl(bb_maxpool2d_B0_out_c0_exe3),
        .in_i_data_5_tpl(bb_maxpool2d_B0_out_c0_exe4),
        .out_o_stall(bb_maxpool2d_B1_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_maxpool2d_B1_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_maxpool2d_B1_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_maxpool2d_B1_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_maxpool2d_B1_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_maxpool2d_B1_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_maxpool2d_B1_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_maxpool2d_B1_sr_1_aunroll_x_out_o_data_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B1_sr_0_aunroll_x(BLACKBOX,60)
    maxpool2d_bb_B1_sr_0 thebb_maxpool2d_B1_sr_0_aunroll_x (
        .in_i_stall(bb_maxpool2d_B1_out_stall_out_0),
        .in_i_valid(bb_maxpool2d_B4_out_valid_out_0),
        .in_i_data_0_tpl(bb_maxpool2d_B4_out_i_038_LC_OuterPHI),
        .in_i_data_1_tpl(bb_maxpool2d_B4_out_j_036_LC_InnerPHI),
        .in_i_data_2_tpl(bb_maxpool2d_B4_out_c0_exe13),
        .in_i_data_3_tpl(bb_maxpool2d_B4_out_c0_exe24),
        .in_i_data_4_tpl(bb_maxpool2d_B4_out_c0_exe39),
        .in_i_data_5_tpl(bb_maxpool2d_B4_out_c0_exe412),
        .out_o_stall(bb_maxpool2d_B1_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_maxpool2d_B1_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_maxpool2d_B1_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_maxpool2d_B1_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_maxpool2d_B1_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_maxpool2d_B1_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_maxpool2d_B1_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_maxpool2d_B1_sr_0_aunroll_x_out_o_data_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B1(BLACKBOX,3)
    maxpool2d_bb_B1 thebb_maxpool2d_B1 (
        .in_c0_exe12_0(bb_maxpool2d_B1_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe12_1(bb_maxpool2d_B1_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe26_0(bb_maxpool2d_B1_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe26_1(bb_maxpool2d_B1_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe38_0(bb_maxpool2d_B1_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe38_1(bb_maxpool2d_B1_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe411_0(bb_maxpool2d_B1_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe411_1(bb_maxpool2d_B1_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_i_038_0(bb_maxpool2d_B1_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_i_038_1(bb_maxpool2d_B1_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_input_size(in_arg_input_size),
        .in_j_036_0(bb_maxpool2d_B1_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_j_036_1(bb_maxpool2d_B1_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_output_size(in_arg_output_size),
        .in_stall_in_0(loop_limiter_maxpool2d1_out_o_stall),
        .in_valid_in_0(bb_maxpool2d_B1_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_maxpool2d_B1_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe12(bb_maxpool2d_B1_out_c0_exe12),
        .out_c0_exe128(bb_maxpool2d_B1_out_c0_exe128),
        .out_c0_exe26(bb_maxpool2d_B1_out_c0_exe26),
        .out_c0_exe38(bb_maxpool2d_B1_out_c0_exe38),
        .out_c0_exe411(bb_maxpool2d_B1_out_c0_exe411),
        .out_i_038(bb_maxpool2d_B1_out_i_038),
        .out_j_036(bb_maxpool2d_B1_out_j_036),
        .out_mul22(bb_maxpool2d_B1_out_mul22),
        .out_mul24(bb_maxpool2d_B1_out_mul24),
        .out_stall_out_0(bb_maxpool2d_B1_out_stall_out_0),
        .out_stall_out_1(bb_maxpool2d_B1_out_stall_out_1),
        .out_valid_in_0(bb_maxpool2d_B1_out_valid_in_0),
        .out_valid_in_1(bb_maxpool2d_B1_out_valid_in_1),
        .out_valid_out_0(bb_maxpool2d_B1_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B2(BLACKBOX,4)
    maxpool2d_bb_B2 thebb_maxpool2d_B2 (
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(bb_maxpool2d_B2_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_maxpool2d_B2_out_stall_out_0),
        .out_valid_out_0(bb_maxpool2d_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B2_sr_0_aunroll_x(BLACKBOX,62)
    maxpool2d_bb_B2_sr_0 thebb_maxpool2d_B2_sr_0_aunroll_x (
        .in_i_stall(bb_maxpool2d_B2_out_stall_out_0),
        .in_i_valid(bb_maxpool2d_B4_out_valid_out_1),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_maxpool2d_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_maxpool2d_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B4(BLACKBOX,6)
    maxpool2d_bb_B4 thebb_maxpool2d_B4 (
        .in_c0_exe12818_0(bb_maxpool2d_B4_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe13_0(bb_maxpool2d_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe24_0(bb_maxpool2d_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe39_0(bb_maxpool2d_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe412_0(bb_maxpool2d_B4_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c1_exe121_0(bb_maxpool2d_B4_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_flush(in_start),
        .in_i_03813_0(bb_maxpool2d_B4_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_input_size(in_arg_input_size),
        .in_j_03615_0(bb_maxpool2d_B4_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_output_size(in_arg_output_size),
        .in_stall_in_0(bb_maxpool2d_B1_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_maxpool2d_B2_sr_0_aunroll_x_out_o_stall),
        .in_unnamed_maxpool2d1_maxpool2d_avm_readdata(in_unnamed_maxpool2d1_maxpool2d_avm_readdata),
        .in_unnamed_maxpool2d1_maxpool2d_avm_readdatavalid(in_unnamed_maxpool2d1_maxpool2d_avm_readdatavalid),
        .in_unnamed_maxpool2d1_maxpool2d_avm_waitrequest(in_unnamed_maxpool2d1_maxpool2d_avm_waitrequest),
        .in_unnamed_maxpool2d1_maxpool2d_avm_writeack(in_unnamed_maxpool2d1_maxpool2d_avm_writeack),
        .in_valid_in_0(bb_maxpool2d_B4_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe13(bb_maxpool2d_B4_out_c0_exe13),
        .out_c0_exe24(bb_maxpool2d_B4_out_c0_exe24),
        .out_c0_exe39(bb_maxpool2d_B4_out_c0_exe39),
        .out_c0_exe412(bb_maxpool2d_B4_out_c0_exe412),
        .out_i_038_LC_OuterPHI(bb_maxpool2d_B4_out_i_038_LC_OuterPHI),
        .out_j_036_LC_InnerPHI(bb_maxpool2d_B4_out_j_036_LC_InnerPHI),
        .out_lsu_unnamed_maxpool2d1_o_active(bb_maxpool2d_B4_out_lsu_unnamed_maxpool2d1_o_active),
        .out_stall_in_0(bb_maxpool2d_B4_out_stall_in_0),
        .out_stall_out_0(bb_maxpool2d_B4_out_stall_out_0),
        .out_unnamed_maxpool2d1_maxpool2d_avm_address(bb_maxpool2d_B4_out_unnamed_maxpool2d1_maxpool2d_avm_address),
        .out_unnamed_maxpool2d1_maxpool2d_avm_burstcount(bb_maxpool2d_B4_out_unnamed_maxpool2d1_maxpool2d_avm_burstcount),
        .out_unnamed_maxpool2d1_maxpool2d_avm_byteenable(bb_maxpool2d_B4_out_unnamed_maxpool2d1_maxpool2d_avm_byteenable),
        .out_unnamed_maxpool2d1_maxpool2d_avm_enable(bb_maxpool2d_B4_out_unnamed_maxpool2d1_maxpool2d_avm_enable),
        .out_unnamed_maxpool2d1_maxpool2d_avm_read(bb_maxpool2d_B4_out_unnamed_maxpool2d1_maxpool2d_avm_read),
        .out_unnamed_maxpool2d1_maxpool2d_avm_write(bb_maxpool2d_B4_out_unnamed_maxpool2d1_maxpool2d_avm_write),
        .out_unnamed_maxpool2d1_maxpool2d_avm_writedata(bb_maxpool2d_B4_out_unnamed_maxpool2d1_maxpool2d_avm_writedata),
        .out_valid_out_0(bb_maxpool2d_B4_out_valid_out_0),
        .out_valid_out_1(bb_maxpool2d_B4_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_maxpool2d0(BLACKBOX,39)
    maxpool2d_loop_limiter_0 theloop_limiter_maxpool2d0 (
        .in_i_stall(bb_maxpool2d_B1_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_maxpool2d_B2_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_maxpool2d_B0_out_valid_out_0),
        .in_i_valid_exit(bb_maxpool2d_B4_out_valid_out_1),
        .out_o_stall(loop_limiter_maxpool2d0_out_o_stall),
        .out_o_valid(loop_limiter_maxpool2d0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // maxpool2d_B1_x(EXTIFACE,41)
    assign maxpool2d_B1_x_i_capture = GND_q;
    assign maxpool2d_B1_x_i_clear = GND_q;
    assign maxpool2d_B1_x_i_enable = VCC_q;
    assign maxpool2d_B1_x_i_shift = GND_q;
    assign maxpool2d_B1_x_i_stall_pred = loop_limiter_maxpool2d0_out_o_stall;
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

    // maxpool2d_B3_x(EXTIFACE,42)
    assign maxpool2d_B3_x_i_capture = GND_q;
    assign maxpool2d_B3_x_i_clear = GND_q;
    assign maxpool2d_B3_x_i_enable = VCC_q;
    assign maxpool2d_B3_x_i_shift = GND_q;
    assign maxpool2d_B3_x_i_stall_pred = loop_limiter_maxpool2d1_out_o_stall;
    assign maxpool2d_B3_x_i_stall_succ = bb_maxpool2d_B3_out_stall_in_0;
    assign maxpool2d_B3_x_i_valid_loop = bb_maxpool2d_B3_out_valid_in_0;
    assign maxpool2d_B3_x_i_valid_pred = bb_maxpool2d_B3_out_valid_in_1;
    assign maxpool2d_B3_x_i_valid_succ = bb_maxpool2d_B3_out_valid_out_0;
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

    // out_lm_maxpool2d_avm_address(GPOUT,43)
    assign out_lm_maxpool2d_avm_address = bb_maxpool2d_B3_out_lm_maxpool2d_avm_address;

    // out_lm_maxpool2d_avm_burstcount(GPOUT,44)
    assign out_lm_maxpool2d_avm_burstcount = bb_maxpool2d_B3_out_lm_maxpool2d_avm_burstcount;

    // out_lm_maxpool2d_avm_byteenable(GPOUT,45)
    assign out_lm_maxpool2d_avm_byteenable = bb_maxpool2d_B3_out_lm_maxpool2d_avm_byteenable;

    // out_lm_maxpool2d_avm_enable(GPOUT,46)
    assign out_lm_maxpool2d_avm_enable = bb_maxpool2d_B3_out_lm_maxpool2d_avm_enable;

    // out_lm_maxpool2d_avm_read(GPOUT,47)
    assign out_lm_maxpool2d_avm_read = bb_maxpool2d_B3_out_lm_maxpool2d_avm_read;

    // out_lm_maxpool2d_avm_write(GPOUT,48)
    assign out_lm_maxpool2d_avm_write = bb_maxpool2d_B3_out_lm_maxpool2d_avm_write;

    // out_lm_maxpool2d_avm_writedata(GPOUT,49)
    assign out_lm_maxpool2d_avm_writedata = bb_maxpool2d_B3_out_lm_maxpool2d_avm_writedata;

    // out_o_active_unnamed_maxpool2d1(GPOUT,50)
    assign out_o_active_unnamed_maxpool2d1 = bb_maxpool2d_B4_out_lsu_unnamed_maxpool2d1_o_active;

    // out_stall_out(GPOUT,51)
    assign out_stall_out = bb_maxpool2d_B0_out_stall_out_0;

    // out_unnamed_maxpool2d1_maxpool2d_avm_address(GPOUT,52)
    assign out_unnamed_maxpool2d1_maxpool2d_avm_address = bb_maxpool2d_B4_out_unnamed_maxpool2d1_maxpool2d_avm_address;

    // out_unnamed_maxpool2d1_maxpool2d_avm_burstcount(GPOUT,53)
    assign out_unnamed_maxpool2d1_maxpool2d_avm_burstcount = bb_maxpool2d_B4_out_unnamed_maxpool2d1_maxpool2d_avm_burstcount;

    // out_unnamed_maxpool2d1_maxpool2d_avm_byteenable(GPOUT,54)
    assign out_unnamed_maxpool2d1_maxpool2d_avm_byteenable = bb_maxpool2d_B4_out_unnamed_maxpool2d1_maxpool2d_avm_byteenable;

    // out_unnamed_maxpool2d1_maxpool2d_avm_enable(GPOUT,55)
    assign out_unnamed_maxpool2d1_maxpool2d_avm_enable = bb_maxpool2d_B4_out_unnamed_maxpool2d1_maxpool2d_avm_enable;

    // out_unnamed_maxpool2d1_maxpool2d_avm_read(GPOUT,56)
    assign out_unnamed_maxpool2d1_maxpool2d_avm_read = bb_maxpool2d_B4_out_unnamed_maxpool2d1_maxpool2d_avm_read;

    // out_unnamed_maxpool2d1_maxpool2d_avm_write(GPOUT,57)
    assign out_unnamed_maxpool2d1_maxpool2d_avm_write = bb_maxpool2d_B4_out_unnamed_maxpool2d1_maxpool2d_avm_write;

    // out_unnamed_maxpool2d1_maxpool2d_avm_writedata(GPOUT,58)
    assign out_unnamed_maxpool2d1_maxpool2d_avm_writedata = bb_maxpool2d_B4_out_unnamed_maxpool2d1_maxpool2d_avm_writedata;

    // out_valid_out(GPOUT,59)
    assign out_valid_out = bb_maxpool2d_B2_out_valid_out_0;

endmodule
