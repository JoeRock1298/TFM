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
// SystemVerilog created on Wed May  3 13:18:59 2023


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
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [511:0] in_unnamed_mmul5_mmul_avm_readdata,
    input wire [0:0] in_unnamed_mmul5_mmul_avm_readdatavalid,
    input wire [0:0] in_unnamed_mmul5_mmul_avm_waitrequest,
    input wire [0:0] in_unnamed_mmul5_mmul_avm_writeack,
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
    output wire [0:0] out_o_active_unnamed_mmul5,
    output wire [0:0] out_stall_out,
    output wire [30:0] out_unnamed_mmul5_mmul_avm_address,
    output wire [4:0] out_unnamed_mmul5_mmul_avm_burstcount,
    output wire [63:0] out_unnamed_mmul5_mmul_avm_byteenable,
    output wire [0:0] out_unnamed_mmul5_mmul_avm_enable,
    output wire [0:0] out_unnamed_mmul5_mmul_avm_read,
    output wire [0:0] out_unnamed_mmul5_mmul_avm_write,
    output wire [511:0] out_unnamed_mmul5_mmul_avm_writedata,
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
    wire [0:0] bb_mmul_B1_out_c0_exe3;
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
    wire [0:0] bb_mmul_B3_out_c0_exe250;
    wire [31:0] bb_mmul_B3_out_c0_exe351;
    wire [31:0] bb_mmul_B3_out_c0_exe4;
    wire [0:0] bb_mmul_B3_out_c0_exe5;
    wire [31:0] bb_mmul_B3_out_c0_exe6;
    wire [0:0] bb_mmul_B3_out_c0_exe7;
    wire [0:0] bb_mmul_B3_out_exiting_stall_out;
    wire [0:0] bb_mmul_B3_out_exiting_valid_out;
    wire [0:0] bb_mmul_B3_out_pipeline_valid_out;
    wire [0:0] bb_mmul_B3_out_stall_out_0;
    wire [0:0] bb_mmul_B3_out_stall_out_1;
    wire [0:0] bb_mmul_B3_out_valid_in_0;
    wire [0:0] bb_mmul_B3_out_valid_in_1;
    wire [0:0] bb_mmul_B3_out_valid_out_0;
    wire [0:0] bb_mmul_B4_out_stall_in_0;
    wire [0:0] bb_mmul_B4_out_stall_out_0;
    wire [0:0] bb_mmul_B4_out_valid_out_0;
    wire [0:0] bb_mmul_B5_out_c0_exe105;
    wire [0:0] bb_mmul_B5_out_lsu_unnamed_mmul5_o_active;
    wire [0:0] bb_mmul_B5_out_stall_in_0;
    wire [0:0] bb_mmul_B5_out_stall_out_0;
    wire [30:0] bb_mmul_B5_out_unnamed_mmul5_mmul_avm_address;
    wire [4:0] bb_mmul_B5_out_unnamed_mmul5_mmul_avm_burstcount;
    wire [63:0] bb_mmul_B5_out_unnamed_mmul5_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B5_out_unnamed_mmul5_mmul_avm_enable;
    wire [0:0] bb_mmul_B5_out_unnamed_mmul5_mmul_avm_read;
    wire [0:0] bb_mmul_B5_out_unnamed_mmul5_mmul_avm_write;
    wire [511:0] bb_mmul_B5_out_unnamed_mmul5_mmul_avm_writedata;
    wire [0:0] bb_mmul_B5_out_valid_out_0;
    wire [0:0] bb_mmul_B6_out_c0_exe10;
    wire [0:0] bb_mmul_B6_out_c0_exe11;
    wire [0:0] bb_mmul_B6_out_c0_exe268;
    wire [31:0] bb_mmul_B6_out_c0_exe369;
    wire [31:0] bb_mmul_B6_out_c0_exe672;
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
    wire [1:0] c_i2_046_q;
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
    wire [0:0] bb_mmul_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_mmul_B4_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_mmul_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_mmul_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_mmul_B5_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_mmul_B5_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_mmul_B5_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_mmul_B5_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_mmul_B5_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_mmul_B5_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_mmul_B5_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_mmul_B6_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_mmul_B6_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_mmul_B6_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_mmul_B6_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_mmul_B6_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_mmul_B6_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_mmul_B6_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_mmul_B6_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_mmul_B6_sr_1_aunroll_x_out_o_data_6_tpl;


    // c_i2_046(CONSTANT,32)
    assign c_i2_046_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going17_mmul2_valid_fifo(BLACKBOX,42)
    mmul_i_llvm_fpga_pipeline_keep_going17_2_valid_fifo thei_llvm_fpga_pipeline_keep_going17_mmul2_valid_fifo (
        .in_data_in(c_i2_046_q),
        .in_stall_in(bb_mmul_B1_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going17_mmul2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going17_mmul2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going17_mmul2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going13_mmul2_valid_fifo(BLACKBOX,40)
    mmul_i_llvm_fpga_pipeline_keep_going13_2_valid_fifo thei_llvm_fpga_pipeline_keep_going13_mmul2_valid_fifo (
        .in_data_in(c_i2_046_q),
        .in_stall_in(bb_mmul_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going13_mmul2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going13_mmul2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going13_mmul2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_mmul6_valid_fifo(BLACKBOX,44)
    mmul_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_mmul6_valid_fifo (
        .in_data_in(c_i2_046_q),
        .in_stall_in(bb_mmul_B6_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_mmul6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_mmul6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_mmul6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B4_sr_0_aunroll_x(BLACKBOX,102)
    mmul_bb_B4_sr_0 thebb_mmul_B4_sr_0_aunroll_x (
        .in_i_stall(bb_mmul_B4_out_stall_out_0),
        .in_i_valid(bb_mmul_B5_out_valid_out_0),
        .in_i_data_0_tpl(bb_mmul_B5_out_c0_exe105),
        .out_o_stall(bb_mmul_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_mmul_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_mmul_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B5(BLACKBOX,7)
    mmul_bb_B5 thebb_mmul_B5 (
        .in_A(in_arg_A),
        .in_B(in_arg_B),
        .in_C(in_arg_C),
        .in_N(in_arg_N),
        .in_c0_exe105_0(bb_mmul_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe116_0(bb_mmul_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe2681_0(bb_mmul_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe3692_0(bb_mmul_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe6723_0(bb_mmul_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c1_exe17_0(bb_mmul_B5_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_flush(in_start),
        .in_stall_in_0(bb_mmul_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_mmul5_mmul_avm_readdata(in_unnamed_mmul5_mmul_avm_readdata),
        .in_unnamed_mmul5_mmul_avm_readdatavalid(in_unnamed_mmul5_mmul_avm_readdatavalid),
        .in_unnamed_mmul5_mmul_avm_waitrequest(in_unnamed_mmul5_mmul_avm_waitrequest),
        .in_unnamed_mmul5_mmul_avm_writeack(in_unnamed_mmul5_mmul_avm_writeack),
        .in_valid_in_0(bb_mmul_B5_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe105(bb_mmul_B5_out_c0_exe105),
        .out_lsu_unnamed_mmul5_o_active(bb_mmul_B5_out_lsu_unnamed_mmul5_o_active),
        .out_stall_in_0(bb_mmul_B5_out_stall_in_0),
        .out_stall_out_0(bb_mmul_B5_out_stall_out_0),
        .out_unnamed_mmul5_mmul_avm_address(bb_mmul_B5_out_unnamed_mmul5_mmul_avm_address),
        .out_unnamed_mmul5_mmul_avm_burstcount(bb_mmul_B5_out_unnamed_mmul5_mmul_avm_burstcount),
        .out_unnamed_mmul5_mmul_avm_byteenable(bb_mmul_B5_out_unnamed_mmul5_mmul_avm_byteenable),
        .out_unnamed_mmul5_mmul_avm_enable(bb_mmul_B5_out_unnamed_mmul5_mmul_avm_enable),
        .out_unnamed_mmul5_mmul_avm_read(bb_mmul_B5_out_unnamed_mmul5_mmul_avm_read),
        .out_unnamed_mmul5_mmul_avm_write(bb_mmul_B5_out_unnamed_mmul5_mmul_avm_write),
        .out_unnamed_mmul5_mmul_avm_writedata(bb_mmul_B5_out_unnamed_mmul5_mmul_avm_writedata),
        .out_valid_out_0(bb_mmul_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B5_sr_0_aunroll_x(BLACKBOX,103)
    mmul_bb_B5_sr_0 thebb_mmul_B5_sr_0_aunroll_x (
        .in_i_stall(bb_mmul_B5_out_stall_out_0),
        .in_i_valid(bb_mmul_B6_out_valid_out_0),
        .in_i_data_0_tpl(bb_mmul_B6_out_c0_exe268),
        .in_i_data_1_tpl(bb_mmul_B6_out_c0_exe369),
        .in_i_data_2_tpl(bb_mmul_B6_out_c0_exe672),
        .in_i_data_3_tpl(bb_mmul_B6_out_c0_exe10),
        .in_i_data_4_tpl(bb_mmul_B6_out_c0_exe11),
        .in_i_data_5_tpl(bb_mmul_B6_out_c1_exe1),
        .out_o_stall(bb_mmul_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_mmul_B5_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_mmul_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_mmul_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_mmul_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_mmul_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_mmul_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_mmul_B5_sr_0_aunroll_x_out_o_data_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_mmul6_sr(BLACKBOX,43)
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
        .in_j_025_pop1033_0(c_i32_undef17_q),
        .in_j_025_pop1033_1(bb_mmul_B6_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_lm7_mmul_avm_readdata(in_lm7_mmul_avm_readdata),
        .in_lm7_mmul_avm_readdatavalid(in_lm7_mmul_avm_readdatavalid),
        .in_lm7_mmul_avm_waitrequest(in_lm7_mmul_avm_waitrequest),
        .in_lm7_mmul_avm_writeack(in_lm7_mmul_avm_writeack),
        .in_lm_mmul_avm_readdata(in_lm_mmul_avm_readdata),
        .in_lm_mmul_avm_readdatavalid(in_lm_mmul_avm_readdatavalid),
        .in_lm_mmul_avm_waitrequest(in_lm_mmul_avm_waitrequest),
        .in_lm_mmul_avm_writeack(in_lm_mmul_avm_writeack),
        .in_mul20_pop1134_0(c_i32_undef17_q),
        .in_mul20_pop1134_1(bb_mmul_B6_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_mul28_0(c_i32_undef17_q),
        .in_mul28_1(bb_mmul_B6_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp1232_0(GND_q),
        .in_notcmp1232_1(bb_mmul_B6_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_notcmp1622_pop1235_0(GND_q),
        .in_notcmp1622_pop1235_1(bb_mmul_B6_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_notcmp1631_0(GND_q),
        .in_notcmp1631_1(bb_mmul_B6_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_mmul6_sr_out_o_stall),
        .in_stall_in_0(bb_mmul_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_mmul6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_mmul_B6_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_mmul_B6_out_c0_exe10),
        .out_c0_exe11(bb_mmul_B6_out_c0_exe11),
        .out_c0_exe268(bb_mmul_B6_out_c0_exe268),
        .out_c0_exe369(bb_mmul_B6_out_c0_exe369),
        .out_c0_exe672(bb_mmul_B6_out_c0_exe672),
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

    // bb_mmul_B6_sr_1_aunroll_x(BLACKBOX,104)
    mmul_bb_B6_sr_1 thebb_mmul_B6_sr_1_aunroll_x (
        .in_i_stall(bb_mmul_B6_out_stall_out_1),
        .in_i_valid(loop_limiter_mmul1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_mmul_B3_out_c0_exe6),
        .in_i_data_2_tpl(bb_mmul_B3_out_c0_exe7),
        .in_i_data_3_tpl(bb_mmul_B3_out_c0_exe250),
        .in_i_data_4_tpl(bb_mmul_B3_out_c0_exe351),
        .in_i_data_5_tpl(bb_mmul_B3_out_c0_exe4),
        .in_i_data_6_tpl(bb_mmul_B3_out_c0_exe5),
        .out_o_stall(bb_mmul_B6_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_mmul_B6_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_mmul_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_mmul_B6_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_mmul_B6_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_mmul_B6_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_mmul_B6_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_mmul_B6_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_mmul_B6_sr_1_aunroll_x_out_o_data_6_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_mmul1(BLACKBOX,71)
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

    // i_llvm_fpga_pipeline_keep_going13_mmul2_sr(BLACKBOX,39)
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

    // c_i32_undef17(CONSTANT,35)
    assign c_i32_undef17_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_mmul_B3(BLACKBOX,5)
    mmul_bb_B3 thebb_mmul_B3 (
        .in_A(in_arg_A),
        .in_B(in_arg_B),
        .in_C(in_arg_C),
        .in_N(in_arg_N),
        .in_forked9_0(GND_q),
        .in_forked9_1(bb_mmul_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_0_0(bb_mmul_B0_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_mmul_B0_out_intel_reserved_ffwd_1_0),
        .in_mul26_0(c_i32_undef17_q),
        .in_mul26_1(bb_mmul_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp1629_0(GND_q),
        .in_notcmp1629_1(bb_mmul_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going13_mmul2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_mmul1_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going13_mmul2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_mmul_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe250(bb_mmul_B3_out_c0_exe250),
        .out_c0_exe351(bb_mmul_B3_out_c0_exe351),
        .out_c0_exe4(bb_mmul_B3_out_c0_exe4),
        .out_c0_exe5(bb_mmul_B3_out_c0_exe5),
        .out_c0_exe6(bb_mmul_B3_out_c0_exe6),
        .out_c0_exe7(bb_mmul_B3_out_c0_exe7),
        .out_exiting_stall_out(bb_mmul_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_mmul_B3_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_mmul_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_mmul_B3_out_stall_out_0),
        .out_stall_out_1(bb_mmul_B3_out_stall_out_1),
        .out_valid_in_0(bb_mmul_B3_out_valid_in_0),
        .out_valid_in_1(bb_mmul_B3_out_valid_in_1),
        .out_valid_out_0(bb_mmul_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B3_sr_1_aunroll_x(BLACKBOX,101)
    mmul_bb_B3_sr_1 thebb_mmul_B3_sr_1_aunroll_x (
        .in_i_stall(bb_mmul_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_mmul0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_mmul_B1_out_c0_exe1),
        .in_i_data_2_tpl(bb_mmul_B1_out_c0_exe3),
        .out_o_stall(bb_mmul_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_mmul_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_mmul_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_mmul_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_mmul_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_mmul0(BLACKBOX,70)
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

    // i_llvm_fpga_pipeline_keep_going17_mmul2_sr(BLACKBOX,41)
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

    // bb_mmul_B2_sr_0_aunroll_x(BLACKBOX,100)
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
        .in_forked_0(GND_q),
        .in_forked_1(bb_mmul_B1_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_0_0(bb_mmul_B0_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_mmul_B0_out_intel_reserved_ffwd_1_0),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going17_mmul2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_mmul0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going17_mmul2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_mmul_B1_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1(bb_mmul_B1_out_c0_exe1),
        .out_c0_exe3(bb_mmul_B1_out_c0_exe3),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
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
        .in_c0_exe104_0(bb_mmul_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_mmul_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_mmul_B4_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_mmul_B4_out_stall_in_0),
        .out_stall_out_0(bb_mmul_B4_out_stall_out_0),
        .out_valid_out_0(bb_mmul_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B1_sr_1_aunroll_x(BLACKBOX,99)
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

    // mmul_B1_x(EXTIFACE,72)
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

    // mmul_B3_x(EXTIFACE,73)
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

    // mmul_B6_x(EXTIFACE,74)
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

    // out_lm7_mmul_avm_address(GPOUT,75)
    assign out_lm7_mmul_avm_address = bb_mmul_B6_out_lm7_mmul_avm_address;

    // out_lm7_mmul_avm_burstcount(GPOUT,76)
    assign out_lm7_mmul_avm_burstcount = bb_mmul_B6_out_lm7_mmul_avm_burstcount;

    // out_lm7_mmul_avm_byteenable(GPOUT,77)
    assign out_lm7_mmul_avm_byteenable = bb_mmul_B6_out_lm7_mmul_avm_byteenable;

    // out_lm7_mmul_avm_enable(GPOUT,78)
    assign out_lm7_mmul_avm_enable = bb_mmul_B6_out_lm7_mmul_avm_enable;

    // out_lm7_mmul_avm_read(GPOUT,79)
    assign out_lm7_mmul_avm_read = bb_mmul_B6_out_lm7_mmul_avm_read;

    // out_lm7_mmul_avm_write(GPOUT,80)
    assign out_lm7_mmul_avm_write = bb_mmul_B6_out_lm7_mmul_avm_write;

    // out_lm7_mmul_avm_writedata(GPOUT,81)
    assign out_lm7_mmul_avm_writedata = bb_mmul_B6_out_lm7_mmul_avm_writedata;

    // out_lm_mmul_avm_address(GPOUT,82)
    assign out_lm_mmul_avm_address = bb_mmul_B6_out_lm_mmul_avm_address;

    // out_lm_mmul_avm_burstcount(GPOUT,83)
    assign out_lm_mmul_avm_burstcount = bb_mmul_B6_out_lm_mmul_avm_burstcount;

    // out_lm_mmul_avm_byteenable(GPOUT,84)
    assign out_lm_mmul_avm_byteenable = bb_mmul_B6_out_lm_mmul_avm_byteenable;

    // out_lm_mmul_avm_enable(GPOUT,85)
    assign out_lm_mmul_avm_enable = bb_mmul_B6_out_lm_mmul_avm_enable;

    // out_lm_mmul_avm_read(GPOUT,86)
    assign out_lm_mmul_avm_read = bb_mmul_B6_out_lm_mmul_avm_read;

    // out_lm_mmul_avm_write(GPOUT,87)
    assign out_lm_mmul_avm_write = bb_mmul_B6_out_lm_mmul_avm_write;

    // out_lm_mmul_avm_writedata(GPOUT,88)
    assign out_lm_mmul_avm_writedata = bb_mmul_B6_out_lm_mmul_avm_writedata;

    // out_o_active_unnamed_mmul5(GPOUT,89)
    assign out_o_active_unnamed_mmul5 = bb_mmul_B5_out_lsu_unnamed_mmul5_o_active;

    // out_stall_out(GPOUT,90)
    assign out_stall_out = bb_mmul_B0_out_stall_out_0;

    // out_unnamed_mmul5_mmul_avm_address(GPOUT,91)
    assign out_unnamed_mmul5_mmul_avm_address = bb_mmul_B5_out_unnamed_mmul5_mmul_avm_address;

    // out_unnamed_mmul5_mmul_avm_burstcount(GPOUT,92)
    assign out_unnamed_mmul5_mmul_avm_burstcount = bb_mmul_B5_out_unnamed_mmul5_mmul_avm_burstcount;

    // out_unnamed_mmul5_mmul_avm_byteenable(GPOUT,93)
    assign out_unnamed_mmul5_mmul_avm_byteenable = bb_mmul_B5_out_unnamed_mmul5_mmul_avm_byteenable;

    // out_unnamed_mmul5_mmul_avm_enable(GPOUT,94)
    assign out_unnamed_mmul5_mmul_avm_enable = bb_mmul_B5_out_unnamed_mmul5_mmul_avm_enable;

    // out_unnamed_mmul5_mmul_avm_read(GPOUT,95)
    assign out_unnamed_mmul5_mmul_avm_read = bb_mmul_B5_out_unnamed_mmul5_mmul_avm_read;

    // out_unnamed_mmul5_mmul_avm_write(GPOUT,96)
    assign out_unnamed_mmul5_mmul_avm_write = bb_mmul_B5_out_unnamed_mmul5_mmul_avm_write;

    // out_unnamed_mmul5_mmul_avm_writedata(GPOUT,97)
    assign out_unnamed_mmul5_mmul_avm_writedata = bb_mmul_B5_out_unnamed_mmul5_mmul_avm_writedata;

    // out_valid_out(GPOUT,98)
    assign out_valid_out = bb_mmul_B2_out_valid_out_0;

endmodule
