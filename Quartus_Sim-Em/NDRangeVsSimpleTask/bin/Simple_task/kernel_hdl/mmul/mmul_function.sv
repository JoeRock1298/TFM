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

// SystemVerilog created from mmul_function
// SystemVerilog created on Wed May  3 13:07:53 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_function (
    input wire [63:0] in_arg_A,
    input wire [63:0] in_arg_B,
    input wire [63:0] in_arg_C,
    input wire [31:0] in_arg_N,
    input wire [63:0] in_arg_acl_global_size_0,
    input wire [63:0] in_arg_acl_global_size_1,
    input wire [63:0] in_arg_acl_global_size_2,
    input wire [31:0] in_arg_acl_local_size_0,
    input wire [31:0] in_arg_acl_local_size_1,
    input wire [31:0] in_arg_acl_local_size_2,
    input wire [511:0] in_lm7_mmul_avm_readdata,
    input wire [0:0] in_lm7_mmul_avm_readdatavalid,
    input wire [0:0] in_lm7_mmul_avm_waitrequest,
    input wire [0:0] in_lm7_mmul_avm_writeack,
    input wire [511:0] in_lm_mmul_avm_readdata,
    input wire [0:0] in_lm_mmul_avm_readdatavalid,
    input wire [0:0] in_lm_mmul_avm_waitrequest,
    input wire [0:0] in_lm_mmul_avm_writeack,
    input wire [511:0] in_memdep_mmul_avm_readdata,
    input wire [0:0] in_memdep_mmul_avm_readdatavalid,
    input wire [0:0] in_memdep_mmul_avm_waitrequest,
    input wire [0:0] in_memdep_mmul_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [0:0] in_valid_in,
    output wire [30:0] out_lm7_mmul_avm_address,
    output wire [4:0] out_lm7_mmul_avm_burstcount,
    output wire [63:0] out_lm7_mmul_avm_byteenable,
    output wire [0:0] out_lm7_mmul_avm_enable,
    output wire [0:0] out_lm7_mmul_avm_read,
    output wire [0:0] out_lm7_mmul_avm_write,
    output wire [511:0] out_lm7_mmul_avm_writedata,
    output wire [30:0] out_lm_mmul_avm_address,
    output wire [4:0] out_lm_mmul_avm_burstcount,
    output wire [63:0] out_lm_mmul_avm_byteenable,
    output wire [0:0] out_lm_mmul_avm_enable,
    output wire [0:0] out_lm_mmul_avm_read,
    output wire [0:0] out_lm_mmul_avm_write,
    output wire [511:0] out_lm_mmul_avm_writedata,
    output wire [30:0] out_memdep_mmul_avm_address,
    output wire [4:0] out_memdep_mmul_avm_burstcount,
    output wire [63:0] out_memdep_mmul_avm_byteenable,
    output wire [0:0] out_memdep_mmul_avm_enable,
    output wire [0:0] out_memdep_mmul_avm_read,
    output wire [0:0] out_memdep_mmul_avm_write,
    output wire [511:0] out_memdep_mmul_avm_writedata,
    output wire [0:0] out_o_active_memdep,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_mmul_B0_out_feedback_stall_out_0;
    wire [0:0] bb_mmul_B0_out_intel_reserved_ffwd_0_0;
    wire [32:0] bb_mmul_B0_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_mmul_B0_out_stall_out_0;
    wire [0:0] bb_mmul_B0_out_valid_out_0;
    wire [31:0] bb_mmul_B1_out_c0_exe1;
    wire [0:0] bb_mmul_B1_out_c0_exe2;
    wire [0:0] bb_mmul_B1_out_c0_exe3;
    wire [0:0] bb_mmul_B1_out_feedback_stall_out_9;
    wire [0:0] bb_mmul_B1_out_memdep_phi17_pop9;
    wire [0:0] bb_mmul_B1_out_pipeline_valid_out;
    wire [0:0] bb_mmul_B1_out_stall_out_0;
    wire [0:0] bb_mmul_B1_out_stall_out_1;
    wire [0:0] bb_mmul_B1_out_valid_in_0;
    wire [0:0] bb_mmul_B1_out_valid_in_1;
    wire [0:0] bb_mmul_B1_out_valid_out_0;
    wire [0:0] bb_mmul_B2_out_feedback_out_0;
    wire [0:0] bb_mmul_B2_out_feedback_valid_out_0;
    wire [0:0] bb_mmul_B2_out_stall_out_0;
    wire [0:0] bb_mmul_B2_out_valid_out_0;
    wire [0:0] bb_mmul_B3_out_c0_exe10;
    wire [0:0] bb_mmul_B3_out_c0_exe11;
    wire [0:0] bb_mmul_B3_out_c0_exe12;
    wire [0:0] bb_mmul_B3_out_c0_exe163;
    wire [0:0] bb_mmul_B3_out_c0_exe264;
    wire [31:0] bb_mmul_B3_out_c0_exe365;
    wire [31:0] bb_mmul_B3_out_c0_exe466;
    wire [0:0] bb_mmul_B3_out_c0_exe5;
    wire [0:0] bb_mmul_B3_out_c0_exe6;
    wire [0:0] bb_mmul_B3_out_c0_exe7;
    wire [31:0] bb_mmul_B3_out_c0_exe9;
    wire [0:0] bb_mmul_B3_out_exiting_stall_out;
    wire [0:0] bb_mmul_B3_out_exiting_valid_out;
    wire [0:0] bb_mmul_B3_out_feedback_stall_out_12;
    wire [0:0] bb_mmul_B3_out_memdep_phi_pop12;
    wire [0:0] bb_mmul_B3_out_pipeline_valid_out;
    wire [0:0] bb_mmul_B3_out_stall_out_0;
    wire [0:0] bb_mmul_B3_out_stall_out_1;
    wire [0:0] bb_mmul_B3_out_valid_in_0;
    wire [0:0] bb_mmul_B3_out_valid_in_1;
    wire [0:0] bb_mmul_B3_out_valid_out_0;
    wire [0:0] bb_mmul_B4_out_feedback_out_9;
    wire [0:0] bb_mmul_B4_out_feedback_valid_out_9;
    wire [0:0] bb_mmul_B4_out_stall_in_0;
    wire [0:0] bb_mmul_B4_out_stall_out_0;
    wire [0:0] bb_mmul_B4_out_valid_out_0;
    wire [0:0] bb_mmul_B5_out_c0_exe111016;
    wire [0:0] bb_mmul_B5_out_c0_exe121028;
    wire [0:0] bb_mmul_B5_out_feedback_out_12;
    wire [0:0] bb_mmul_B5_out_feedback_valid_out_12;
    wire [0:0] bb_mmul_B5_out_lsu_memdep_o_active;
    wire [0:0] bb_mmul_B5_out_memdep;
    wire [30:0] bb_mmul_B5_out_memdep_mmul_avm_address;
    wire [4:0] bb_mmul_B5_out_memdep_mmul_avm_burstcount;
    wire [63:0] bb_mmul_B5_out_memdep_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B5_out_memdep_mmul_avm_enable;
    wire [0:0] bb_mmul_B5_out_memdep_mmul_avm_read;
    wire [0:0] bb_mmul_B5_out_memdep_mmul_avm_write;
    wire [511:0] bb_mmul_B5_out_memdep_mmul_avm_writedata;
    wire [0:0] bb_mmul_B5_out_stall_in_0;
    wire [0:0] bb_mmul_B5_out_stall_out_0;
    wire [0:0] bb_mmul_B5_out_valid_out_0;
    wire [0:0] bb_mmul_B6_out_c0_exe11101;
    wire [0:0] bb_mmul_B6_out_c0_exe12102;
    wire [0:0] bb_mmul_B6_out_c0_exe13;
    wire [0:0] bb_mmul_B6_out_c0_exe14;
    wire [0:0] bb_mmul_B6_out_c0_exe292;
    wire [31:0] bb_mmul_B6_out_c0_exe393;
    wire [31:0] bb_mmul_B6_out_c0_exe797;
    wire [31:0] bb_mmul_B6_out_c1_exe1;
    wire [0:0] bb_mmul_B6_out_exiting_stall_out;
    wire [0:0] bb_mmul_B6_out_exiting_valid_out;
    wire [30:0] bb_mmul_B6_out_lm7_mmul_avm_address;
    wire [4:0] bb_mmul_B6_out_lm7_mmul_avm_burstcount;
    wire [63:0] bb_mmul_B6_out_lm7_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B6_out_lm7_mmul_avm_enable;
    wire [0:0] bb_mmul_B6_out_lm7_mmul_avm_read;
    wire [0:0] bb_mmul_B6_out_lm7_mmul_avm_write;
    wire [511:0] bb_mmul_B6_out_lm7_mmul_avm_writedata;
    wire [30:0] bb_mmul_B6_out_lm_mmul_avm_address;
    wire [4:0] bb_mmul_B6_out_lm_mmul_avm_burstcount;
    wire [63:0] bb_mmul_B6_out_lm_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B6_out_lm_mmul_avm_enable;
    wire [0:0] bb_mmul_B6_out_lm_mmul_avm_read;
    wire [0:0] bb_mmul_B6_out_lm_mmul_avm_write;
    wire [511:0] bb_mmul_B6_out_lm_mmul_avm_writedata;
    wire [0:0] bb_mmul_B6_out_pipeline_valid_out;
    wire [0:0] bb_mmul_B6_out_stall_in_0;
    wire [0:0] bb_mmul_B6_out_stall_out_0;
    wire [0:0] bb_mmul_B6_out_stall_out_1;
    wire [0:0] bb_mmul_B6_out_valid_in_0;
    wire [0:0] bb_mmul_B6_out_valid_in_1;
    wire [0:0] bb_mmul_B6_out_valid_out_0;
    wire [1:0] c_i2_066_q;
    wire [31:0] c_i32_undef17_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_mmul2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_mmul2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_mmul2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_mmul2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going17_mmul2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going17_mmul2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going17_mmul2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going17_mmul2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_mmul0_out_o_stall;
    wire [0:0] loop_limiter_mmul0_out_o_valid;
    wire [0:0] loop_limiter_mmul1_out_o_stall;
    wire [0:0] loop_limiter_mmul1_out_o_valid;
    wire [0:0] mmul_B1_x_i_capture;
    wire mmul_B1_x_i_capture_bitsignaltemp;
    wire [0:0] mmul_B1_x_i_clear;
    wire mmul_B1_x_i_clear_bitsignaltemp;
    wire [0:0] mmul_B1_x_i_enable;
    wire mmul_B1_x_i_enable_bitsignaltemp;
    wire [0:0] mmul_B1_x_i_shift;
    wire mmul_B1_x_i_shift_bitsignaltemp;
    wire [0:0] mmul_B1_x_i_stall_pred;
    wire mmul_B1_x_i_stall_pred_bitsignaltemp;
    wire [0:0] mmul_B1_x_i_stall_succ;
    wire mmul_B1_x_i_stall_succ_bitsignaltemp;
    wire [0:0] mmul_B1_x_i_valid_loop;
    wire mmul_B1_x_i_valid_loop_bitsignaltemp;
    wire [0:0] mmul_B1_x_i_valid_pred;
    wire mmul_B1_x_i_valid_pred_bitsignaltemp;
    wire [0:0] mmul_B1_x_i_valid_succ;
    wire mmul_B1_x_i_valid_succ_bitsignaltemp;
    wire [0:0] mmul_B3_x_i_capture;
    wire mmul_B3_x_i_capture_bitsignaltemp;
    wire [0:0] mmul_B3_x_i_clear;
    wire mmul_B3_x_i_clear_bitsignaltemp;
    wire [0:0] mmul_B3_x_i_enable;
    wire mmul_B3_x_i_enable_bitsignaltemp;
    wire [0:0] mmul_B3_x_i_shift;
    wire mmul_B3_x_i_shift_bitsignaltemp;
    wire [0:0] mmul_B3_x_i_stall_pred;
    wire mmul_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] mmul_B3_x_i_stall_succ;
    wire mmul_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] mmul_B3_x_i_valid_loop;
    wire mmul_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] mmul_B3_x_i_valid_pred;
    wire mmul_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] mmul_B3_x_i_valid_succ;
    wire mmul_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] mmul_B6_x_i_capture;
    wire mmul_B6_x_i_capture_bitsignaltemp;
    wire [0:0] mmul_B6_x_i_clear;
    wire mmul_B6_x_i_clear_bitsignaltemp;
    wire [0:0] mmul_B6_x_i_enable;
    wire mmul_B6_x_i_enable_bitsignaltemp;
    wire [0:0] mmul_B6_x_i_shift;
    wire mmul_B6_x_i_shift_bitsignaltemp;
    wire [0:0] mmul_B6_x_i_stall_pred;
    wire mmul_B6_x_i_stall_pred_bitsignaltemp;
    wire [0:0] mmul_B6_x_i_stall_succ;
    wire mmul_B6_x_i_stall_succ_bitsignaltemp;
    wire [0:0] mmul_B6_x_i_valid_loop;
    wire mmul_B6_x_i_valid_loop_bitsignaltemp;
    wire [0:0] mmul_B6_x_i_valid_pred;
    wire mmul_B6_x_i_valid_pred_bitsignaltemp;
    wire [0:0] mmul_B6_x_i_valid_succ;
    wire mmul_B6_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bb_mmul_B1_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_mmul_B1_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_mmul_B1_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_mmul_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_mmul_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_mmul_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_mmul_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_mmul_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_mmul_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_mmul_B3_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_mmul_B3_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_mmul_B3_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_mmul_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_mmul_B4_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_mmul_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_mmul_B4_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_mmul_B4_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_mmul_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_mmul_B5_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_mmul_B5_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_mmul_B5_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_mmul_B5_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_mmul_B5_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_mmul_B5_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_mmul_B5_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_mmul_B5_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_mmul_B5_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_mmul_B6_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_mmul_B6_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_mmul_B6_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_mmul_B6_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_mmul_B6_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_mmul_B6_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_mmul_B6_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_mmul_B6_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_mmul_B6_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_mmul_B6_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_mmul_B6_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_mmul_B6_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_mmul_B6_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_mmul_B6_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_mmul_B6_sr_1_aunroll_x_out_o_data_12_tpl;


    // c_i2_066(CONSTANT,40)
    assign c_i2_066_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going17_mmul2_valid_fifo(BLACKBOX,50)
    mmul_i_llvm_fpga_pipeline_keep_going17_2_valid_fifo thei_llvm_fpga_pipeline_keep_going17_mmul2_valid_fifo (
        .in_data_in(c_i2_066_q),
        .in_stall_in(bb_mmul_B1_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going17_mmul2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going17_mmul2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going17_mmul2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going13_mmul2_valid_fifo(BLACKBOX,48)
    mmul_i_llvm_fpga_pipeline_keep_going13_2_valid_fifo thei_llvm_fpga_pipeline_keep_going13_mmul2_valid_fifo (
        .in_data_in(c_i2_066_q),
        .in_stall_in(bb_mmul_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going13_mmul2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going13_mmul2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going13_mmul2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_mmul6_valid_fifo(BLACKBOX,52)
    mmul_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_mmul6_valid_fifo (
        .in_data_in(c_i2_066_q),
        .in_stall_in(bb_mmul_B6_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_mmul6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_mmul6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_mmul6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B5_sr_0_aunroll_x(BLACKBOX,111)
    mmul_bb_B5_sr_0 thebb_mmul_B5_sr_0_aunroll_x (
        .in_i_stall(bb_mmul_B5_out_stall_out_0),
        .in_i_valid(bb_mmul_B6_out_valid_out_0),
        .in_i_data_0_tpl(bb_mmul_B6_out_c0_exe292),
        .in_i_data_1_tpl(bb_mmul_B6_out_c0_exe393),
        .in_i_data_2_tpl(bb_mmul_B6_out_c0_exe797),
        .in_i_data_3_tpl(bb_mmul_B6_out_c0_exe11101),
        .in_i_data_4_tpl(bb_mmul_B6_out_c0_exe12102),
        .in_i_data_5_tpl(bb_mmul_B6_out_c0_exe13),
        .in_i_data_6_tpl(bb_mmul_B6_out_c0_exe14),
        .in_i_data_7_tpl(bb_mmul_B6_out_c1_exe1),
        .out_o_stall(bb_mmul_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_mmul_B5_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_mmul_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_mmul_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_mmul_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_mmul_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_mmul_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_mmul_B5_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_mmul_B5_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_mmul_B5_sr_0_aunroll_x_out_o_data_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_mmul6_sr(BLACKBOX,51)
    mmul_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_mmul6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_mmul6_valid_fifo_out_stall_out),
        .in_i_valid(bb_mmul_B6_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_mmul6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_mmul6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B6(BLACKBOX,8)
    mmul_bb_B6 thebb_mmul_B6 (
        .in_A(in_arg_A),
        .in_B(in_arg_B),
        .in_C(in_arg_C),
        .in_N(in_arg_N),
        .in_flush(in_start),
        .in_forked10_0(GND_q),
        .in_forked10_1(bb_mmul_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_0_0(bb_mmul_B0_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_mmul_B0_out_intel_reserved_ffwd_1_0),
        .in_j_025_pop1139_0(c_i32_undef17_q),
        .in_j_025_pop1139_1(bb_mmul_B6_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_lm7_mmul_avm_readdata(in_lm7_mmul_avm_readdata),
        .in_lm7_mmul_avm_readdatavalid(in_lm7_mmul_avm_readdatavalid),
        .in_lm7_mmul_avm_waitrequest(in_lm7_mmul_avm_waitrequest),
        .in_lm7_mmul_avm_writeack(in_lm7_mmul_avm_writeack),
        .in_lm_mmul_avm_readdata(in_lm_mmul_avm_readdata),
        .in_lm_mmul_avm_readdatavalid(in_lm_mmul_avm_readdatavalid),
        .in_lm_mmul_avm_waitrequest(in_lm_mmul_avm_waitrequest),
        .in_lm_mmul_avm_writeack(in_lm_mmul_avm_writeack),
        .in_memdep_phi17_pop924_pop1644_0(GND_q),
        .in_memdep_phi17_pop924_pop1644_1(bb_mmul_B6_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_memdep_phi17_pop937_0(GND_q),
        .in_memdep_phi17_pop937_1(bb_mmul_B6_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_memdep_phi_pop1240_0(GND_q),
        .in_memdep_phi_pop1240_1(bb_mmul_B6_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_mul20_pop1341_0(c_i32_undef17_q),
        .in_mul20_pop1341_1(bb_mmul_B6_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_mul31_0(c_i32_undef17_q),
        .in_mul31_1(bb_mmul_B6_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp1238_0(GND_q),
        .in_notcmp1238_1(bb_mmul_B6_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_notcmp1622_pop1543_0(GND_q),
        .in_notcmp1622_pop1543_1(bb_mmul_B6_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_notcmp1634_0(GND_q),
        .in_notcmp1634_1(bb_mmul_B6_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_mmul6_sr_out_o_stall),
        .in_pop1442_0(GND_q),
        .in_pop1442_1(bb_mmul_B6_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_stall_in_0(bb_mmul_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_mmul6_0(GND_q),
        .in_unnamed_mmul6_1(bb_mmul_B6_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_unnamed_mmul7_0(GND_q),
        .in_unnamed_mmul7_1(bb_mmul_B6_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_mmul6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_mmul_B6_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe11101(bb_mmul_B6_out_c0_exe11101),
        .out_c0_exe12102(bb_mmul_B6_out_c0_exe12102),
        .out_c0_exe13(bb_mmul_B6_out_c0_exe13),
        .out_c0_exe14(bb_mmul_B6_out_c0_exe14),
        .out_c0_exe292(bb_mmul_B6_out_c0_exe292),
        .out_c0_exe393(bb_mmul_B6_out_c0_exe393),
        .out_c0_exe797(bb_mmul_B6_out_c0_exe797),
        .out_c1_exe1(bb_mmul_B6_out_c1_exe1),
        .out_exiting_stall_out(bb_mmul_B6_out_exiting_stall_out),
        .out_exiting_valid_out(bb_mmul_B6_out_exiting_valid_out),
        .out_lm7_mmul_avm_address(bb_mmul_B6_out_lm7_mmul_avm_address),
        .out_lm7_mmul_avm_burstcount(bb_mmul_B6_out_lm7_mmul_avm_burstcount),
        .out_lm7_mmul_avm_byteenable(bb_mmul_B6_out_lm7_mmul_avm_byteenable),
        .out_lm7_mmul_avm_enable(bb_mmul_B6_out_lm7_mmul_avm_enable),
        .out_lm7_mmul_avm_read(bb_mmul_B6_out_lm7_mmul_avm_read),
        .out_lm7_mmul_avm_write(bb_mmul_B6_out_lm7_mmul_avm_write),
        .out_lm7_mmul_avm_writedata(bb_mmul_B6_out_lm7_mmul_avm_writedata),
        .out_lm_mmul_avm_address(bb_mmul_B6_out_lm_mmul_avm_address),
        .out_lm_mmul_avm_burstcount(bb_mmul_B6_out_lm_mmul_avm_burstcount),
        .out_lm_mmul_avm_byteenable(bb_mmul_B6_out_lm_mmul_avm_byteenable),
        .out_lm_mmul_avm_enable(bb_mmul_B6_out_lm_mmul_avm_enable),
        .out_lm_mmul_avm_read(bb_mmul_B6_out_lm_mmul_avm_read),
        .out_lm_mmul_avm_write(bb_mmul_B6_out_lm_mmul_avm_write),
        .out_lm_mmul_avm_writedata(bb_mmul_B6_out_lm_mmul_avm_writedata),
        .out_pipeline_valid_out(bb_mmul_B6_out_pipeline_valid_out),
        .out_stall_in_0(bb_mmul_B6_out_stall_in_0),
        .out_stall_out_0(bb_mmul_B6_out_stall_out_0),
        .out_stall_out_1(bb_mmul_B6_out_stall_out_1),
        .out_valid_in_0(bb_mmul_B6_out_valid_in_0),
        .out_valid_in_1(bb_mmul_B6_out_valid_in_1),
        .out_valid_out_0(bb_mmul_B6_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B6_sr_1_aunroll_x(BLACKBOX,112)
    mmul_bb_B6_sr_1 thebb_mmul_B6_sr_1_aunroll_x (
        .in_i_stall(bb_mmul_B6_out_stall_out_1),
        .in_i_valid(loop_limiter_mmul1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_mmul_B3_out_c0_exe9),
        .in_i_data_2_tpl(bb_mmul_B3_out_c0_exe10),
        .in_i_data_3_tpl(bb_mmul_B3_out_c0_exe11),
        .in_i_data_4_tpl(bb_mmul_B3_out_c0_exe12),
        .in_i_data_5_tpl(bb_mmul_B3_out_c0_exe163),
        .in_i_data_6_tpl(bb_mmul_B3_out_c0_exe264),
        .in_i_data_7_tpl(bb_mmul_B3_out_c0_exe365),
        .in_i_data_8_tpl(bb_mmul_B3_out_memdep_phi_pop12),
        .in_i_data_9_tpl(bb_mmul_B3_out_c0_exe466),
        .in_i_data_10_tpl(bb_mmul_B3_out_c0_exe5),
        .in_i_data_11_tpl(bb_mmul_B3_out_c0_exe6),
        .in_i_data_12_tpl(bb_mmul_B3_out_c0_exe7),
        .out_o_stall(bb_mmul_B6_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_mmul_B6_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_mmul_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_mmul_B6_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_mmul_B6_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_mmul_B6_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_mmul_B6_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_mmul_B6_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_mmul_B6_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_mmul_B6_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_mmul_B6_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_mmul_B6_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_mmul_B6_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_mmul_B6_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_mmul_B6_sr_1_aunroll_x_out_o_data_12_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_mmul1(BLACKBOX,79)
    mmul_loop_limiter_1 theloop_limiter_mmul1 (
        .in_i_stall(bb_mmul_B6_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_mmul_B6_out_exiting_stall_out),
        .in_i_valid(bb_mmul_B3_out_valid_out_0),
        .in_i_valid_exit(bb_mmul_B6_out_exiting_valid_out),
        .out_o_stall(loop_limiter_mmul1_out_o_stall),
        .out_o_valid(loop_limiter_mmul1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going13_mmul2_sr(BLACKBOX,47)
    mmul_i_llvm_fpga_pipeline_keep_going13_2_sr thei_llvm_fpga_pipeline_keep_going13_mmul2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going13_mmul2_valid_fifo_out_stall_out),
        .in_i_valid(bb_mmul_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going13_mmul2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going13_mmul2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef17(CONSTANT,43)
    assign c_i32_undef17_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_mmul_B4_sr_0_aunroll_x(BLACKBOX,110)
    mmul_bb_B4_sr_0 thebb_mmul_B4_sr_0_aunroll_x (
        .in_i_stall(bb_mmul_B4_out_stall_out_0),
        .in_i_valid(bb_mmul_B5_out_valid_out_0),
        .in_i_data_0_tpl(bb_mmul_B5_out_memdep),
        .in_i_data_1_tpl(bb_mmul_B5_out_c0_exe111016),
        .in_i_data_2_tpl(bb_mmul_B5_out_c0_exe121028),
        .out_o_stall(bb_mmul_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_mmul_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_mmul_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_mmul_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_mmul_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B5(BLACKBOX,7)
    mmul_bb_B5 thebb_mmul_B5 (
        .in_A(in_arg_A),
        .in_B(in_arg_B),
        .in_C(in_arg_C),
        .in_N(in_arg_N),
        .in_c0_exe111016_0(bb_mmul_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe121028_0(bb_mmul_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe139_0(bb_mmul_B5_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe1410_0(bb_mmul_B5_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe2922_0(bb_mmul_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe3933_0(bb_mmul_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe7974_0(bb_mmul_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c1_exe111_0(bb_mmul_B5_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_feedback_stall_in_12(bb_mmul_B3_out_feedback_stall_out_12),
        .in_flush(in_start),
        .in_memdep_mmul_avm_readdata(in_memdep_mmul_avm_readdata),
        .in_memdep_mmul_avm_readdatavalid(in_memdep_mmul_avm_readdatavalid),
        .in_memdep_mmul_avm_waitrequest(in_memdep_mmul_avm_waitrequest),
        .in_memdep_mmul_avm_writeack(in_memdep_mmul_avm_writeack),
        .in_stall_in_0(bb_mmul_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_mmul_B5_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe111016(bb_mmul_B5_out_c0_exe111016),
        .out_c0_exe121028(bb_mmul_B5_out_c0_exe121028),
        .out_feedback_out_12(bb_mmul_B5_out_feedback_out_12),
        .out_feedback_valid_out_12(bb_mmul_B5_out_feedback_valid_out_12),
        .out_lsu_memdep_o_active(bb_mmul_B5_out_lsu_memdep_o_active),
        .out_memdep(bb_mmul_B5_out_memdep),
        .out_memdep_mmul_avm_address(bb_mmul_B5_out_memdep_mmul_avm_address),
        .out_memdep_mmul_avm_burstcount(bb_mmul_B5_out_memdep_mmul_avm_burstcount),
        .out_memdep_mmul_avm_byteenable(bb_mmul_B5_out_memdep_mmul_avm_byteenable),
        .out_memdep_mmul_avm_enable(bb_mmul_B5_out_memdep_mmul_avm_enable),
        .out_memdep_mmul_avm_read(bb_mmul_B5_out_memdep_mmul_avm_read),
        .out_memdep_mmul_avm_write(bb_mmul_B5_out_memdep_mmul_avm_write),
        .out_memdep_mmul_avm_writedata(bb_mmul_B5_out_memdep_mmul_avm_writedata),
        .out_stall_in_0(bb_mmul_B5_out_stall_in_0),
        .out_stall_out_0(bb_mmul_B5_out_stall_out_0),
        .out_valid_out_0(bb_mmul_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B3(BLACKBOX,5)
    mmul_bb_B3 thebb_mmul_B3 (
        .in_A(in_arg_A),
        .in_B(in_arg_B),
        .in_C(in_arg_C),
        .in_N(in_arg_N),
        .in_feedback_in_12(bb_mmul_B5_out_feedback_out_12),
        .in_feedback_valid_in_12(bb_mmul_B5_out_feedback_valid_out_12),
        .in_forked9_0(GND_q),
        .in_forked9_1(bb_mmul_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_0_0(bb_mmul_B0_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_mmul_B0_out_intel_reserved_ffwd_1_0),
        .in_memdep_phi17_pop935_0(GND_q),
        .in_memdep_phi17_pop935_1(bb_mmul_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_mul29_0(c_i32_undef17_q),
        .in_mul29_1(bb_mmul_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp1632_0(GND_q),
        .in_notcmp1632_1(bb_mmul_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going13_mmul2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_mmul1_out_o_stall),
        .in_unnamed_mmul4_0(GND_q),
        .in_unnamed_mmul4_1(bb_mmul_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going13_mmul2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_mmul_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_mmul_B3_out_c0_exe10),
        .out_c0_exe11(bb_mmul_B3_out_c0_exe11),
        .out_c0_exe12(bb_mmul_B3_out_c0_exe12),
        .out_c0_exe163(bb_mmul_B3_out_c0_exe163),
        .out_c0_exe264(bb_mmul_B3_out_c0_exe264),
        .out_c0_exe365(bb_mmul_B3_out_c0_exe365),
        .out_c0_exe466(bb_mmul_B3_out_c0_exe466),
        .out_c0_exe5(bb_mmul_B3_out_c0_exe5),
        .out_c0_exe6(bb_mmul_B3_out_c0_exe6),
        .out_c0_exe7(bb_mmul_B3_out_c0_exe7),
        .out_c0_exe9(bb_mmul_B3_out_c0_exe9),
        .out_exiting_stall_out(bb_mmul_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_mmul_B3_out_exiting_valid_out),
        .out_feedback_stall_out_12(bb_mmul_B3_out_feedback_stall_out_12),
        .out_memdep_phi_pop12(bb_mmul_B3_out_memdep_phi_pop12),
        .out_pipeline_valid_out(bb_mmul_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_mmul_B3_out_stall_out_0),
        .out_stall_out_1(bb_mmul_B3_out_stall_out_1),
        .out_valid_in_0(bb_mmul_B3_out_valid_in_0),
        .out_valid_in_1(bb_mmul_B3_out_valid_in_1),
        .out_valid_out_0(bb_mmul_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B3_sr_1_aunroll_x(BLACKBOX,109)
    mmul_bb_B3_sr_1 thebb_mmul_B3_sr_1_aunroll_x (
        .in_i_stall(bb_mmul_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_mmul0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_mmul_B1_out_c0_exe1),
        .in_i_data_2_tpl(bb_mmul_B1_out_c0_exe2),
        .in_i_data_3_tpl(bb_mmul_B1_out_c0_exe3),
        .in_i_data_4_tpl(bb_mmul_B1_out_memdep_phi17_pop9),
        .out_o_stall(bb_mmul_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_mmul_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_mmul_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_mmul_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_mmul_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_mmul_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_mmul_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_mmul0(BLACKBOX,78)
    mmul_loop_limiter_0 theloop_limiter_mmul0 (
        .in_i_stall(bb_mmul_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_mmul_B3_out_exiting_stall_out),
        .in_i_valid(bb_mmul_B1_out_valid_out_0),
        .in_i_valid_exit(bb_mmul_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_mmul0_out_o_stall),
        .out_o_valid(loop_limiter_mmul0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going17_mmul2_sr(BLACKBOX,49)
    mmul_i_llvm_fpga_pipeline_keep_going17_2_sr thei_llvm_fpga_pipeline_keep_going17_mmul2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going17_mmul2_valid_fifo_out_stall_out),
        .in_i_valid(bb_mmul_B1_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going17_mmul2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going17_mmul2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B2_sr_0_aunroll_x(BLACKBOX,108)
    mmul_bb_B2_sr_0 thebb_mmul_B2_sr_0_aunroll_x (
        .in_i_stall(bb_mmul_B2_out_stall_out_0),
        .in_i_valid(bb_mmul_B4_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_mmul_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_mmul_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B2(BLACKBOX,4)
    mmul_bb_B2 thebb_mmul_B2 (
        .in_feedback_stall_in_0(bb_mmul_B0_out_feedback_stall_out_0),
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(bb_mmul_B2_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_0(bb_mmul_B2_out_feedback_out_0),
        .out_feedback_valid_out_0(bb_mmul_B2_out_feedback_valid_out_0),
        .out_stall_out_0(bb_mmul_B2_out_stall_out_0),
        .out_valid_out_0(bb_mmul_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B0(BLACKBOX,2)
    mmul_bb_B0 thebb_mmul_B0 (
        .in_A(in_arg_A),
        .in_B(in_arg_B),
        .in_C(in_arg_C),
        .in_N(in_arg_N),
        .in_feedback_in_0(bb_mmul_B2_out_feedback_out_0),
        .in_feedback_valid_in_0(bb_mmul_B2_out_feedback_valid_out_0),
        .in_stall_in_0(bb_mmul_B1_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_feedback_stall_out_0(bb_mmul_B0_out_feedback_stall_out_0),
        .out_intel_reserved_ffwd_0_0(bb_mmul_B0_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_mmul_B0_out_intel_reserved_ffwd_1_0),
        .out_stall_out_0(bb_mmul_B0_out_stall_out_0),
        .out_valid_out_0(bb_mmul_B0_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B1(BLACKBOX,3)
    mmul_bb_B1 thebb_mmul_B1 (
        .in_A(in_arg_A),
        .in_B(in_arg_B),
        .in_C(in_arg_C),
        .in_N(in_arg_N),
        .in_feedback_in_9(bb_mmul_B4_out_feedback_out_9),
        .in_feedback_valid_in_9(bb_mmul_B4_out_feedback_valid_out_9),
        .in_forked_0(GND_q),
        .in_forked_1(bb_mmul_B1_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_0_0(bb_mmul_B0_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_mmul_B0_out_intel_reserved_ffwd_1_0),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going17_mmul2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_mmul0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going17_mmul2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_mmul_B1_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1(bb_mmul_B1_out_c0_exe1),
        .out_c0_exe2(bb_mmul_B1_out_c0_exe2),
        .out_c0_exe3(bb_mmul_B1_out_c0_exe3),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_9(bb_mmul_B1_out_feedback_stall_out_9),
        .out_memdep_phi17_pop9(bb_mmul_B1_out_memdep_phi17_pop9),
        .out_pipeline_valid_out(bb_mmul_B1_out_pipeline_valid_out),
        .out_stall_out_0(bb_mmul_B1_out_stall_out_0),
        .out_stall_out_1(bb_mmul_B1_out_stall_out_1),
        .out_valid_in_0(bb_mmul_B1_out_valid_in_0),
        .out_valid_in_1(bb_mmul_B1_out_valid_in_1),
        .out_valid_out_0(bb_mmul_B1_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B4(BLACKBOX,6)
    mmul_bb_B4 thebb_mmul_B4 (
        .in_A(in_arg_A),
        .in_B(in_arg_B),
        .in_C(in_arg_C),
        .in_N(in_arg_N),
        .in_c0_exe111015_0(bb_mmul_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe121027_0(bb_mmul_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_feedback_stall_in_9(bb_mmul_B1_out_feedback_stall_out_9),
        .in_memdep_1_0(bb_mmul_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_mmul_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_mmul_B4_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_9(bb_mmul_B4_out_feedback_out_9),
        .out_feedback_valid_out_9(bb_mmul_B4_out_feedback_valid_out_9),
        .out_stall_in_0(bb_mmul_B4_out_stall_in_0),
        .out_stall_out_0(bb_mmul_B4_out_stall_out_0),
        .out_valid_out_0(bb_mmul_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B1_sr_1_aunroll_x(BLACKBOX,107)
    mmul_bb_B1_sr_1 thebb_mmul_B1_sr_1_aunroll_x (
        .in_i_stall(bb_mmul_B1_out_stall_out_1),
        .in_i_valid(bb_mmul_B0_out_valid_out_0),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_mmul_B1_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_mmul_B1_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_mmul_B1_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // mmul_B1_x(EXTIFACE,80)
    assign mmul_B1_x_i_capture = GND_q;
    assign mmul_B1_x_i_clear = GND_q;
    assign mmul_B1_x_i_enable = VCC_q;
    assign mmul_B1_x_i_shift = GND_q;
    assign mmul_B1_x_i_stall_pred = bb_mmul_B1_sr_1_aunroll_x_out_o_stall;
    assign mmul_B1_x_i_stall_succ = bb_mmul_B4_out_stall_in_0;
    assign mmul_B1_x_i_valid_loop = bb_mmul_B1_out_valid_in_0;
    assign mmul_B1_x_i_valid_pred = bb_mmul_B1_out_valid_in_1;
    assign mmul_B1_x_i_valid_succ = bb_mmul_B4_out_valid_out_0;
    assign mmul_B1_x_i_capture_bitsignaltemp = mmul_B1_x_i_capture[0];
    assign mmul_B1_x_i_clear_bitsignaltemp = mmul_B1_x_i_clear[0];
    assign mmul_B1_x_i_enable_bitsignaltemp = mmul_B1_x_i_enable[0];
    assign mmul_B1_x_i_shift_bitsignaltemp = mmul_B1_x_i_shift[0];
    assign mmul_B1_x_i_stall_pred_bitsignaltemp = mmul_B1_x_i_stall_pred[0];
    assign mmul_B1_x_i_stall_succ_bitsignaltemp = mmul_B1_x_i_stall_succ[0];
    assign mmul_B1_x_i_valid_loop_bitsignaltemp = mmul_B1_x_i_valid_loop[0];
    assign mmul_B1_x_i_valid_pred_bitsignaltemp = mmul_B1_x_i_valid_pred[0];
    assign mmul_B1_x_i_valid_succ_bitsignaltemp = mmul_B1_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("mmul.B1")
    ) themmul_B1_x (
        .i_capture(mmul_B1_x_i_capture_bitsignaltemp),
        .i_clear(mmul_B1_x_i_clear_bitsignaltemp),
        .i_enable(mmul_B1_x_i_enable_bitsignaltemp),
        .i_shift(mmul_B1_x_i_shift_bitsignaltemp),
        .i_stall_pred(mmul_B1_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(mmul_B1_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(mmul_B1_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(mmul_B1_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(mmul_B1_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // mmul_B3_x(EXTIFACE,81)
    assign mmul_B3_x_i_capture = GND_q;
    assign mmul_B3_x_i_clear = GND_q;
    assign mmul_B3_x_i_enable = VCC_q;
    assign mmul_B3_x_i_shift = GND_q;
    assign mmul_B3_x_i_stall_pred = loop_limiter_mmul0_out_o_stall;
    assign mmul_B3_x_i_stall_succ = bb_mmul_B5_out_stall_in_0;
    assign mmul_B3_x_i_valid_loop = bb_mmul_B3_out_valid_in_0;
    assign mmul_B3_x_i_valid_pred = bb_mmul_B3_out_valid_in_1;
    assign mmul_B3_x_i_valid_succ = bb_mmul_B5_out_valid_out_0;
    assign mmul_B3_x_i_capture_bitsignaltemp = mmul_B3_x_i_capture[0];
    assign mmul_B3_x_i_clear_bitsignaltemp = mmul_B3_x_i_clear[0];
    assign mmul_B3_x_i_enable_bitsignaltemp = mmul_B3_x_i_enable[0];
    assign mmul_B3_x_i_shift_bitsignaltemp = mmul_B3_x_i_shift[0];
    assign mmul_B3_x_i_stall_pred_bitsignaltemp = mmul_B3_x_i_stall_pred[0];
    assign mmul_B3_x_i_stall_succ_bitsignaltemp = mmul_B3_x_i_stall_succ[0];
    assign mmul_B3_x_i_valid_loop_bitsignaltemp = mmul_B3_x_i_valid_loop[0];
    assign mmul_B3_x_i_valid_pred_bitsignaltemp = mmul_B3_x_i_valid_pred[0];
    assign mmul_B3_x_i_valid_succ_bitsignaltemp = mmul_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("mmul.B3")
    ) themmul_B3_x (
        .i_capture(mmul_B3_x_i_capture_bitsignaltemp),
        .i_clear(mmul_B3_x_i_clear_bitsignaltemp),
        .i_enable(mmul_B3_x_i_enable_bitsignaltemp),
        .i_shift(mmul_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(mmul_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(mmul_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(mmul_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(mmul_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(mmul_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // mmul_B6_x(EXTIFACE,82)
    assign mmul_B6_x_i_capture = GND_q;
    assign mmul_B6_x_i_clear = GND_q;
    assign mmul_B6_x_i_enable = VCC_q;
    assign mmul_B6_x_i_shift = GND_q;
    assign mmul_B6_x_i_stall_pred = loop_limiter_mmul1_out_o_stall;
    assign mmul_B6_x_i_stall_succ = bb_mmul_B6_out_stall_in_0;
    assign mmul_B6_x_i_valid_loop = bb_mmul_B6_out_valid_in_0;
    assign mmul_B6_x_i_valid_pred = bb_mmul_B6_out_valid_in_1;
    assign mmul_B6_x_i_valid_succ = bb_mmul_B6_out_valid_out_0;
    assign mmul_B6_x_i_capture_bitsignaltemp = mmul_B6_x_i_capture[0];
    assign mmul_B6_x_i_clear_bitsignaltemp = mmul_B6_x_i_clear[0];
    assign mmul_B6_x_i_enable_bitsignaltemp = mmul_B6_x_i_enable[0];
    assign mmul_B6_x_i_shift_bitsignaltemp = mmul_B6_x_i_shift[0];
    assign mmul_B6_x_i_stall_pred_bitsignaltemp = mmul_B6_x_i_stall_pred[0];
    assign mmul_B6_x_i_stall_succ_bitsignaltemp = mmul_B6_x_i_stall_succ[0];
    assign mmul_B6_x_i_valid_loop_bitsignaltemp = mmul_B6_x_i_valid_loop[0];
    assign mmul_B6_x_i_valid_pred_bitsignaltemp = mmul_B6_x_i_valid_pred[0];
    assign mmul_B6_x_i_valid_succ_bitsignaltemp = mmul_B6_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("mmul.B6")
    ) themmul_B6_x (
        .i_capture(mmul_B6_x_i_capture_bitsignaltemp),
        .i_clear(mmul_B6_x_i_clear_bitsignaltemp),
        .i_enable(mmul_B6_x_i_enable_bitsignaltemp),
        .i_shift(mmul_B6_x_i_shift_bitsignaltemp),
        .i_stall_pred(mmul_B6_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(mmul_B6_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(mmul_B6_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(mmul_B6_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(mmul_B6_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_lm7_mmul_avm_address(GPOUT,83)
    assign out_lm7_mmul_avm_address = bb_mmul_B6_out_lm7_mmul_avm_address;

    // out_lm7_mmul_avm_burstcount(GPOUT,84)
    assign out_lm7_mmul_avm_burstcount = bb_mmul_B6_out_lm7_mmul_avm_burstcount;

    // out_lm7_mmul_avm_byteenable(GPOUT,85)
    assign out_lm7_mmul_avm_byteenable = bb_mmul_B6_out_lm7_mmul_avm_byteenable;

    // out_lm7_mmul_avm_enable(GPOUT,86)
    assign out_lm7_mmul_avm_enable = bb_mmul_B6_out_lm7_mmul_avm_enable;

    // out_lm7_mmul_avm_read(GPOUT,87)
    assign out_lm7_mmul_avm_read = bb_mmul_B6_out_lm7_mmul_avm_read;

    // out_lm7_mmul_avm_write(GPOUT,88)
    assign out_lm7_mmul_avm_write = bb_mmul_B6_out_lm7_mmul_avm_write;

    // out_lm7_mmul_avm_writedata(GPOUT,89)
    assign out_lm7_mmul_avm_writedata = bb_mmul_B6_out_lm7_mmul_avm_writedata;

    // out_lm_mmul_avm_address(GPOUT,90)
    assign out_lm_mmul_avm_address = bb_mmul_B6_out_lm_mmul_avm_address;

    // out_lm_mmul_avm_burstcount(GPOUT,91)
    assign out_lm_mmul_avm_burstcount = bb_mmul_B6_out_lm_mmul_avm_burstcount;

    // out_lm_mmul_avm_byteenable(GPOUT,92)
    assign out_lm_mmul_avm_byteenable = bb_mmul_B6_out_lm_mmul_avm_byteenable;

    // out_lm_mmul_avm_enable(GPOUT,93)
    assign out_lm_mmul_avm_enable = bb_mmul_B6_out_lm_mmul_avm_enable;

    // out_lm_mmul_avm_read(GPOUT,94)
    assign out_lm_mmul_avm_read = bb_mmul_B6_out_lm_mmul_avm_read;

    // out_lm_mmul_avm_write(GPOUT,95)
    assign out_lm_mmul_avm_write = bb_mmul_B6_out_lm_mmul_avm_write;

    // out_lm_mmul_avm_writedata(GPOUT,96)
    assign out_lm_mmul_avm_writedata = bb_mmul_B6_out_lm_mmul_avm_writedata;

    // out_memdep_mmul_avm_address(GPOUT,97)
    assign out_memdep_mmul_avm_address = bb_mmul_B5_out_memdep_mmul_avm_address;

    // out_memdep_mmul_avm_burstcount(GPOUT,98)
    assign out_memdep_mmul_avm_burstcount = bb_mmul_B5_out_memdep_mmul_avm_burstcount;

    // out_memdep_mmul_avm_byteenable(GPOUT,99)
    assign out_memdep_mmul_avm_byteenable = bb_mmul_B5_out_memdep_mmul_avm_byteenable;

    // out_memdep_mmul_avm_enable(GPOUT,100)
    assign out_memdep_mmul_avm_enable = bb_mmul_B5_out_memdep_mmul_avm_enable;

    // out_memdep_mmul_avm_read(GPOUT,101)
    assign out_memdep_mmul_avm_read = bb_mmul_B5_out_memdep_mmul_avm_read;

    // out_memdep_mmul_avm_write(GPOUT,102)
    assign out_memdep_mmul_avm_write = bb_mmul_B5_out_memdep_mmul_avm_write;

    // out_memdep_mmul_avm_writedata(GPOUT,103)
    assign out_memdep_mmul_avm_writedata = bb_mmul_B5_out_memdep_mmul_avm_writedata;

    // out_o_active_memdep(GPOUT,104)
    assign out_o_active_memdep = bb_mmul_B5_out_lsu_memdep_o_active;

    // out_stall_out(GPOUT,105)
    assign out_stall_out = bb_mmul_B0_out_stall_out_0;

    // out_valid_out(GPOUT,106)
    assign out_valid_out = bb_mmul_B2_out_valid_out_0;

endmodule
