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

// SystemVerilog created from avgpool2d_function
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpool2d_function (
    input wire [63:0] in_arg_acl_global_size_0,
    input wire [63:0] in_arg_acl_global_size_1,
    input wire [63:0] in_arg_acl_global_size_2,
    input wire [31:0] in_arg_acl_local_size_0,
    input wire [31:0] in_arg_acl_local_size_1,
    input wire [31:0] in_arg_acl_local_size_2,
    input wire [63:0] in_arg_input_im,
    input wire [63:0] in_arg_output_im,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [511:0] in_unnamed_avgpool2d1_avgpool2d_avm_readdata,
    input wire [0:0] in_unnamed_avgpool2d1_avgpool2d_avm_readdatavalid,
    input wire [0:0] in_unnamed_avgpool2d1_avgpool2d_avm_waitrequest,
    input wire [0:0] in_unnamed_avgpool2d1_avgpool2d_avm_writeack,
    input wire [511:0] in_unnamed_avgpool2d2_avgpool2d_avm_readdata,
    input wire [0:0] in_unnamed_avgpool2d2_avgpool2d_avm_readdatavalid,
    input wire [0:0] in_unnamed_avgpool2d2_avgpool2d_avm_waitrequest,
    input wire [0:0] in_unnamed_avgpool2d2_avgpool2d_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_o_active_unnamed_avgpool2d1,
    output wire [0:0] out_stall_out,
    output wire [30:0] out_unnamed_avgpool2d1_avgpool2d_avm_address,
    output wire [4:0] out_unnamed_avgpool2d1_avgpool2d_avm_burstcount,
    output wire [63:0] out_unnamed_avgpool2d1_avgpool2d_avm_byteenable,
    output wire [0:0] out_unnamed_avgpool2d1_avgpool2d_avm_enable,
    output wire [0:0] out_unnamed_avgpool2d1_avgpool2d_avm_read,
    output wire [0:0] out_unnamed_avgpool2d1_avgpool2d_avm_write,
    output wire [511:0] out_unnamed_avgpool2d1_avgpool2d_avm_writedata,
    output wire [30:0] out_unnamed_avgpool2d2_avgpool2d_avm_address,
    output wire [4:0] out_unnamed_avgpool2d2_avgpool2d_avm_burstcount,
    output wire [63:0] out_unnamed_avgpool2d2_avgpool2d_avm_byteenable,
    output wire [0:0] out_unnamed_avgpool2d2_avgpool2d_avm_enable,
    output wire [0:0] out_unnamed_avgpool2d2_avgpool2d_avm_read,
    output wire [0:0] out_unnamed_avgpool2d2_avgpool2d_avm_write,
    output wire [511:0] out_unnamed_avgpool2d2_avgpool2d_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] avgpool2d_B1_x_i_capture;
    wire avgpool2d_B1_x_i_capture_bitsignaltemp;
    wire [0:0] avgpool2d_B1_x_i_clear;
    wire avgpool2d_B1_x_i_clear_bitsignaltemp;
    wire [0:0] avgpool2d_B1_x_i_enable;
    wire avgpool2d_B1_x_i_enable_bitsignaltemp;
    wire [0:0] avgpool2d_B1_x_i_shift;
    wire avgpool2d_B1_x_i_shift_bitsignaltemp;
    wire [0:0] avgpool2d_B1_x_i_stall_pred;
    wire avgpool2d_B1_x_i_stall_pred_bitsignaltemp;
    wire [0:0] avgpool2d_B1_x_i_stall_succ;
    wire avgpool2d_B1_x_i_stall_succ_bitsignaltemp;
    wire [0:0] avgpool2d_B1_x_i_valid_loop;
    wire avgpool2d_B1_x_i_valid_loop_bitsignaltemp;
    wire [0:0] avgpool2d_B1_x_i_valid_pred;
    wire avgpool2d_B1_x_i_valid_pred_bitsignaltemp;
    wire [0:0] avgpool2d_B1_x_i_valid_succ;
    wire avgpool2d_B1_x_i_valid_succ_bitsignaltemp;
    wire [0:0] avgpool2d_B4_x_i_capture;
    wire avgpool2d_B4_x_i_capture_bitsignaltemp;
    wire [0:0] avgpool2d_B4_x_i_clear;
    wire avgpool2d_B4_x_i_clear_bitsignaltemp;
    wire [0:0] avgpool2d_B4_x_i_enable;
    wire avgpool2d_B4_x_i_enable_bitsignaltemp;
    wire [0:0] avgpool2d_B4_x_i_shift;
    wire avgpool2d_B4_x_i_shift_bitsignaltemp;
    wire [0:0] avgpool2d_B4_x_i_stall_pred;
    wire avgpool2d_B4_x_i_stall_pred_bitsignaltemp;
    wire [0:0] avgpool2d_B4_x_i_stall_succ;
    wire avgpool2d_B4_x_i_stall_succ_bitsignaltemp;
    wire [0:0] avgpool2d_B4_x_i_valid_loop;
    wire avgpool2d_B4_x_i_valid_loop_bitsignaltemp;
    wire [0:0] avgpool2d_B4_x_i_valid_pred;
    wire avgpool2d_B4_x_i_valid_pred_bitsignaltemp;
    wire [0:0] avgpool2d_B4_x_i_valid_succ;
    wire avgpool2d_B4_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bb_avgpool2d_B0_out_feedback_stall_out_0;
    wire [0:0] bb_avgpool2d_B0_out_stall_out_0;
    wire [0:0] bb_avgpool2d_B0_out_valid_out_0;
    wire [0:0] bb_avgpool2d_B1_out_c0_exe2;
    wire [31:0] bb_avgpool2d_B1_out_c0_exe3;
    wire [0:0] bb_avgpool2d_B1_out_pipeline_valid_out;
    wire [0:0] bb_avgpool2d_B1_out_stall_out_0;
    wire [0:0] bb_avgpool2d_B1_out_stall_out_1;
    wire [0:0] bb_avgpool2d_B1_out_valid_in_0;
    wire [0:0] bb_avgpool2d_B1_out_valid_in_1;
    wire [0:0] bb_avgpool2d_B1_out_valid_out_0;
    wire [0:0] bb_avgpool2d_B2_out_feedback_out_0;
    wire [0:0] bb_avgpool2d_B2_out_feedback_valid_out_0;
    wire [0:0] bb_avgpool2d_B2_out_stall_out_0;
    wire [0:0] bb_avgpool2d_B2_out_valid_out_0;
    wire [0:0] bb_avgpool2d_B3_out_lsu_unnamed_avgpool2d1_o_active;
    wire [0:0] bb_avgpool2d_B3_out_stall_in_0;
    wire [0:0] bb_avgpool2d_B3_out_stall_out_0;
    wire [30:0] bb_avgpool2d_B3_out_unnamed_avgpool2d1_avgpool2d_avm_address;
    wire [4:0] bb_avgpool2d_B3_out_unnamed_avgpool2d1_avgpool2d_avm_burstcount;
    wire [63:0] bb_avgpool2d_B3_out_unnamed_avgpool2d1_avgpool2d_avm_byteenable;
    wire [0:0] bb_avgpool2d_B3_out_unnamed_avgpool2d1_avgpool2d_avm_enable;
    wire [0:0] bb_avgpool2d_B3_out_unnamed_avgpool2d1_avgpool2d_avm_read;
    wire [0:0] bb_avgpool2d_B3_out_unnamed_avgpool2d1_avgpool2d_avm_write;
    wire [511:0] bb_avgpool2d_B3_out_unnamed_avgpool2d1_avgpool2d_avm_writedata;
    wire [0:0] bb_avgpool2d_B3_out_valid_out_0;
    wire [31:0] bb_avgpool2d_B4_out_c0_exe329;
    wire [0:0] bb_avgpool2d_B4_out_c0_exe7;
    wire [31:0] bb_avgpool2d_B4_out_c1_exe1;
    wire [0:0] bb_avgpool2d_B4_out_exiting_stall_out;
    wire [0:0] bb_avgpool2d_B4_out_exiting_valid_out;
    wire [0:0] bb_avgpool2d_B4_out_pipeline_valid_out;
    wire [0:0] bb_avgpool2d_B4_out_stall_in_0;
    wire [0:0] bb_avgpool2d_B4_out_stall_out_0;
    wire [0:0] bb_avgpool2d_B4_out_stall_out_1;
    wire [30:0] bb_avgpool2d_B4_out_unnamed_avgpool2d2_avgpool2d_avm_address;
    wire [4:0] bb_avgpool2d_B4_out_unnamed_avgpool2d2_avgpool2d_avm_burstcount;
    wire [63:0] bb_avgpool2d_B4_out_unnamed_avgpool2d2_avgpool2d_avm_byteenable;
    wire [0:0] bb_avgpool2d_B4_out_unnamed_avgpool2d2_avgpool2d_avm_enable;
    wire [0:0] bb_avgpool2d_B4_out_unnamed_avgpool2d2_avgpool2d_avm_read;
    wire [0:0] bb_avgpool2d_B4_out_unnamed_avgpool2d2_avgpool2d_avm_write;
    wire [511:0] bb_avgpool2d_B4_out_unnamed_avgpool2d2_avgpool2d_avm_writedata;
    wire [0:0] bb_avgpool2d_B4_out_valid_in_0;
    wire [0:0] bb_avgpool2d_B4_out_valid_in_1;
    wire [0:0] bb_avgpool2d_B4_out_valid_out_0;
    wire [1:0] c_i2_024_q;
    wire [31:0] c_i32_undef20_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going3_avgpool2d2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going3_avgpool2d2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going3_avgpool2d2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going3_avgpool2d2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpool2d6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpool2d6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpool2d6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpool2d6_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_avgpool2d0_out_o_stall;
    wire [0:0] loop_limiter_avgpool2d0_out_o_valid;
    wire [0:0] bb_avgpool2d_B1_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_avgpool2d_B1_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_avgpool2d_B1_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_avgpool2d_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_avgpool2d_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_avgpool2d_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_avgpool2d_B3_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_avgpool2d_B3_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_avgpool2d_B3_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_avgpool2d_B3_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_avgpool2d_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_avgpool2d_B4_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_avgpool2d_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_avgpool2d_B4_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_avgpool2d_B4_sr_1_aunroll_x_out_o_data_2_tpl;


    // c_i2_024(CONSTANT,23)
    assign c_i2_024_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going3_avgpool2d2_valid_fifo(BLACKBOX,27)
    avgpool2d_i_llvm_fpga_pipeline_keep_going3_2_valid_fifo thei_llvm_fpga_pipeline_keep_going3_avgpool2d2_valid_fifo (
        .in_data_in(c_i2_024_q),
        .in_stall_in(bb_avgpool2d_B1_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going3_avgpool2d2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going3_avgpool2d2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going3_avgpool2d2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_avgpool2d6_valid_fifo(BLACKBOX,29)
    avgpool2d_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_avgpool2d6_valid_fifo (
        .in_data_in(c_i2_024_q),
        .in_stall_in(bb_avgpool2d_B4_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_avgpool2d6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_avgpool2d6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_avgpool2d6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpool2d_B3_sr_0_aunroll_x(BLACKBOX,69)
    avgpool2d_bb_B3_sr_0 thebb_avgpool2d_B3_sr_0_aunroll_x (
        .in_i_stall(bb_avgpool2d_B3_out_stall_out_0),
        .in_i_valid(bb_avgpool2d_B4_out_valid_out_0),
        .in_i_data_0_tpl(bb_avgpool2d_B4_out_c0_exe329),
        .in_i_data_1_tpl(bb_avgpool2d_B4_out_c0_exe7),
        .in_i_data_2_tpl(bb_avgpool2d_B4_out_c1_exe1),
        .out_o_stall(bb_avgpool2d_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_avgpool2d_B3_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_avgpool2d_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_avgpool2d_B3_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_avgpool2d_B3_sr_0_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_avgpool2d6_sr(BLACKBOX,28)
    avgpool2d_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_avgpool2d6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_avgpool2d6_valid_fifo_out_stall_out),
        .in_i_valid(bb_avgpool2d_B4_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_avgpool2d6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_avgpool2d6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef20(CONSTANT,25)
    assign c_i32_undef20_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_avgpool2d_B4(BLACKBOX,8)
    avgpool2d_bb_B4 thebb_avgpool2d_B4 (
        .in_class_index_012_pop610_0(c_i32_undef20_q),
        .in_class_index_012_pop610_1(bb_avgpool2d_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_avgpool2d_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_input_im(in_arg_input_im),
        .in_notcmp19_0(GND_q),
        .in_notcmp19_1(bb_avgpool2d_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_output_im(in_arg_output_im),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_avgpool2d6_sr_out_o_stall),
        .in_stall_in_0(bb_avgpool2d_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_avgpool2d2_avgpool2d_avm_readdata(in_unnamed_avgpool2d2_avgpool2d_avm_readdata),
        .in_unnamed_avgpool2d2_avgpool2d_avm_readdatavalid(in_unnamed_avgpool2d2_avgpool2d_avm_readdatavalid),
        .in_unnamed_avgpool2d2_avgpool2d_avm_waitrequest(in_unnamed_avgpool2d2_avgpool2d_avm_waitrequest),
        .in_unnamed_avgpool2d2_avgpool2d_avm_writeack(in_unnamed_avgpool2d2_avgpool2d_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_avgpool2d6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_avgpool2d_B4_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe329(bb_avgpool2d_B4_out_c0_exe329),
        .out_c0_exe7(bb_avgpool2d_B4_out_c0_exe7),
        .out_c1_exe1(bb_avgpool2d_B4_out_c1_exe1),
        .out_exiting_stall_out(bb_avgpool2d_B4_out_exiting_stall_out),
        .out_exiting_valid_out(bb_avgpool2d_B4_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_avgpool2d_B4_out_pipeline_valid_out),
        .out_stall_in_0(bb_avgpool2d_B4_out_stall_in_0),
        .out_stall_out_0(bb_avgpool2d_B4_out_stall_out_0),
        .out_stall_out_1(bb_avgpool2d_B4_out_stall_out_1),
        .out_unnamed_avgpool2d2_avgpool2d_avm_address(bb_avgpool2d_B4_out_unnamed_avgpool2d2_avgpool2d_avm_address),
        .out_unnamed_avgpool2d2_avgpool2d_avm_burstcount(bb_avgpool2d_B4_out_unnamed_avgpool2d2_avgpool2d_avm_burstcount),
        .out_unnamed_avgpool2d2_avgpool2d_avm_byteenable(bb_avgpool2d_B4_out_unnamed_avgpool2d2_avgpool2d_avm_byteenable),
        .out_unnamed_avgpool2d2_avgpool2d_avm_enable(bb_avgpool2d_B4_out_unnamed_avgpool2d2_avgpool2d_avm_enable),
        .out_unnamed_avgpool2d2_avgpool2d_avm_read(bb_avgpool2d_B4_out_unnamed_avgpool2d2_avgpool2d_avm_read),
        .out_unnamed_avgpool2d2_avgpool2d_avm_write(bb_avgpool2d_B4_out_unnamed_avgpool2d2_avgpool2d_avm_write),
        .out_unnamed_avgpool2d2_avgpool2d_avm_writedata(bb_avgpool2d_B4_out_unnamed_avgpool2d2_avgpool2d_avm_writedata),
        .out_valid_in_0(bb_avgpool2d_B4_out_valid_in_0),
        .out_valid_in_1(bb_avgpool2d_B4_out_valid_in_1),
        .out_valid_out_0(bb_avgpool2d_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpool2d_B4_sr_1_aunroll_x(BLACKBOX,70)
    avgpool2d_bb_B4_sr_1 thebb_avgpool2d_B4_sr_1_aunroll_x (
        .in_i_stall(bb_avgpool2d_B4_out_stall_out_1),
        .in_i_valid(loop_limiter_avgpool2d0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_avgpool2d_B1_out_c0_exe2),
        .in_i_data_2_tpl(bb_avgpool2d_B1_out_c0_exe3),
        .out_o_stall(bb_avgpool2d_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_avgpool2d_B4_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_avgpool2d_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_avgpool2d_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_avgpool2d_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_avgpool2d0(BLACKBOX,49)
    avgpool2d_loop_limiter_0 theloop_limiter_avgpool2d0 (
        .in_i_stall(bb_avgpool2d_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_avgpool2d_B4_out_exiting_stall_out),
        .in_i_valid(bb_avgpool2d_B1_out_valid_out_0),
        .in_i_valid_exit(bb_avgpool2d_B4_out_exiting_valid_out),
        .out_o_stall(loop_limiter_avgpool2d0_out_o_stall),
        .out_o_valid(loop_limiter_avgpool2d0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going3_avgpool2d2_sr(BLACKBOX,26)
    avgpool2d_i_llvm_fpga_pipeline_keep_going3_2_sr thei_llvm_fpga_pipeline_keep_going3_avgpool2d2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going3_avgpool2d2_valid_fifo_out_stall_out),
        .in_i_valid(bb_avgpool2d_B1_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going3_avgpool2d2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going3_avgpool2d2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpool2d_B1(BLACKBOX,5)
    avgpool2d_bb_B1 thebb_avgpool2d_B1 (
        .in_forked6_0(GND_q),
        .in_forked6_1(bb_avgpool2d_B1_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_input_im(in_arg_input_im),
        .in_output_im(in_arg_output_im),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going3_avgpool2d2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_avgpool2d0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going3_avgpool2d2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_avgpool2d_B1_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2(bb_avgpool2d_B1_out_c0_exe2),
        .out_c0_exe3(bb_avgpool2d_B1_out_c0_exe3),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_pipeline_valid_out(bb_avgpool2d_B1_out_pipeline_valid_out),
        .out_stall_out_0(bb_avgpool2d_B1_out_stall_out_0),
        .out_stall_out_1(bb_avgpool2d_B1_out_stall_out_1),
        .out_valid_in_0(bb_avgpool2d_B1_out_valid_in_0),
        .out_valid_in_1(bb_avgpool2d_B1_out_valid_in_1),
        .out_valid_out_0(bb_avgpool2d_B1_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpool2d_B0(BLACKBOX,4)
    avgpool2d_bb_B0 thebb_avgpool2d_B0 (
        .in_feedback_in_0(bb_avgpool2d_B2_out_feedback_out_0),
        .in_feedback_valid_in_0(bb_avgpool2d_B2_out_feedback_valid_out_0),
        .in_input_im(in_arg_input_im),
        .in_output_im(in_arg_output_im),
        .in_stall_in_0(bb_avgpool2d_B1_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_feedback_stall_out_0(bb_avgpool2d_B0_out_feedback_stall_out_0),
        .out_stall_out_0(bb_avgpool2d_B0_out_stall_out_0),
        .out_valid_out_0(bb_avgpool2d_B0_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpool2d_B2(BLACKBOX,6)
    avgpool2d_bb_B2 thebb_avgpool2d_B2 (
        .in_feedback_stall_in_0(bb_avgpool2d_B0_out_feedback_stall_out_0),
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(bb_avgpool2d_B2_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_0(bb_avgpool2d_B2_out_feedback_out_0),
        .out_feedback_valid_out_0(bb_avgpool2d_B2_out_feedback_valid_out_0),
        .out_stall_out_0(bb_avgpool2d_B2_out_stall_out_0),
        .out_valid_out_0(bb_avgpool2d_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpool2d_B2_sr_0_aunroll_x(BLACKBOX,68)
    avgpool2d_bb_B2_sr_0 thebb_avgpool2d_B2_sr_0_aunroll_x (
        .in_i_stall(bb_avgpool2d_B2_out_stall_out_0),
        .in_i_valid(bb_avgpool2d_B3_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_avgpool2d_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_avgpool2d_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpool2d_B3(BLACKBOX,7)
    avgpool2d_bb_B3 thebb_avgpool2d_B3 (
        .in_c0_exe3291_0(bb_avgpool2d_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe72_0(bb_avgpool2d_B3_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c1_exe13_0(bb_avgpool2d_B3_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_flush(in_start),
        .in_input_im(in_arg_input_im),
        .in_output_im(in_arg_output_im),
        .in_stall_in_0(bb_avgpool2d_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_avgpool2d1_avgpool2d_avm_readdata(in_unnamed_avgpool2d1_avgpool2d_avm_readdata),
        .in_unnamed_avgpool2d1_avgpool2d_avm_readdatavalid(in_unnamed_avgpool2d1_avgpool2d_avm_readdatavalid),
        .in_unnamed_avgpool2d1_avgpool2d_avm_waitrequest(in_unnamed_avgpool2d1_avgpool2d_avm_waitrequest),
        .in_unnamed_avgpool2d1_avgpool2d_avm_writeack(in_unnamed_avgpool2d1_avgpool2d_avm_writeack),
        .in_valid_in_0(bb_avgpool2d_B3_sr_0_aunroll_x_out_o_valid),
        .out_lsu_unnamed_avgpool2d1_o_active(bb_avgpool2d_B3_out_lsu_unnamed_avgpool2d1_o_active),
        .out_stall_in_0(bb_avgpool2d_B3_out_stall_in_0),
        .out_stall_out_0(bb_avgpool2d_B3_out_stall_out_0),
        .out_unnamed_avgpool2d1_avgpool2d_avm_address(bb_avgpool2d_B3_out_unnamed_avgpool2d1_avgpool2d_avm_address),
        .out_unnamed_avgpool2d1_avgpool2d_avm_burstcount(bb_avgpool2d_B3_out_unnamed_avgpool2d1_avgpool2d_avm_burstcount),
        .out_unnamed_avgpool2d1_avgpool2d_avm_byteenable(bb_avgpool2d_B3_out_unnamed_avgpool2d1_avgpool2d_avm_byteenable),
        .out_unnamed_avgpool2d1_avgpool2d_avm_enable(bb_avgpool2d_B3_out_unnamed_avgpool2d1_avgpool2d_avm_enable),
        .out_unnamed_avgpool2d1_avgpool2d_avm_read(bb_avgpool2d_B3_out_unnamed_avgpool2d1_avgpool2d_avm_read),
        .out_unnamed_avgpool2d1_avgpool2d_avm_write(bb_avgpool2d_B3_out_unnamed_avgpool2d1_avgpool2d_avm_write),
        .out_unnamed_avgpool2d1_avgpool2d_avm_writedata(bb_avgpool2d_B3_out_unnamed_avgpool2d1_avgpool2d_avm_writedata),
        .out_valid_out_0(bb_avgpool2d_B3_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpool2d_B1_sr_1_aunroll_x(BLACKBOX,67)
    avgpool2d_bb_B1_sr_1 thebb_avgpool2d_B1_sr_1_aunroll_x (
        .in_i_stall(bb_avgpool2d_B1_out_stall_out_1),
        .in_i_valid(bb_avgpool2d_B0_out_valid_out_0),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_avgpool2d_B1_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_avgpool2d_B1_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_avgpool2d_B1_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // avgpool2d_B1_x(EXTIFACE,2)
    assign avgpool2d_B1_x_i_capture = GND_q;
    assign avgpool2d_B1_x_i_clear = GND_q;
    assign avgpool2d_B1_x_i_enable = VCC_q;
    assign avgpool2d_B1_x_i_shift = GND_q;
    assign avgpool2d_B1_x_i_stall_pred = bb_avgpool2d_B1_sr_1_aunroll_x_out_o_stall;
    assign avgpool2d_B1_x_i_stall_succ = bb_avgpool2d_B3_out_stall_in_0;
    assign avgpool2d_B1_x_i_valid_loop = bb_avgpool2d_B1_out_valid_in_0;
    assign avgpool2d_B1_x_i_valid_pred = bb_avgpool2d_B1_out_valid_in_1;
    assign avgpool2d_B1_x_i_valid_succ = bb_avgpool2d_B3_out_valid_out_0;
    assign avgpool2d_B1_x_i_capture_bitsignaltemp = avgpool2d_B1_x_i_capture[0];
    assign avgpool2d_B1_x_i_clear_bitsignaltemp = avgpool2d_B1_x_i_clear[0];
    assign avgpool2d_B1_x_i_enable_bitsignaltemp = avgpool2d_B1_x_i_enable[0];
    assign avgpool2d_B1_x_i_shift_bitsignaltemp = avgpool2d_B1_x_i_shift[0];
    assign avgpool2d_B1_x_i_stall_pred_bitsignaltemp = avgpool2d_B1_x_i_stall_pred[0];
    assign avgpool2d_B1_x_i_stall_succ_bitsignaltemp = avgpool2d_B1_x_i_stall_succ[0];
    assign avgpool2d_B1_x_i_valid_loop_bitsignaltemp = avgpool2d_B1_x_i_valid_loop[0];
    assign avgpool2d_B1_x_i_valid_pred_bitsignaltemp = avgpool2d_B1_x_i_valid_pred[0];
    assign avgpool2d_B1_x_i_valid_succ_bitsignaltemp = avgpool2d_B1_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("avgpool2d.B1")
    ) theavgpool2d_B1_x (
        .i_capture(avgpool2d_B1_x_i_capture_bitsignaltemp),
        .i_clear(avgpool2d_B1_x_i_clear_bitsignaltemp),
        .i_enable(avgpool2d_B1_x_i_enable_bitsignaltemp),
        .i_shift(avgpool2d_B1_x_i_shift_bitsignaltemp),
        .i_stall_pred(avgpool2d_B1_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(avgpool2d_B1_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(avgpool2d_B1_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(avgpool2d_B1_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(avgpool2d_B1_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // avgpool2d_B4_x(EXTIFACE,3)
    assign avgpool2d_B4_x_i_capture = GND_q;
    assign avgpool2d_B4_x_i_clear = GND_q;
    assign avgpool2d_B4_x_i_enable = VCC_q;
    assign avgpool2d_B4_x_i_shift = GND_q;
    assign avgpool2d_B4_x_i_stall_pred = loop_limiter_avgpool2d0_out_o_stall;
    assign avgpool2d_B4_x_i_stall_succ = bb_avgpool2d_B4_out_stall_in_0;
    assign avgpool2d_B4_x_i_valid_loop = bb_avgpool2d_B4_out_valid_in_0;
    assign avgpool2d_B4_x_i_valid_pred = bb_avgpool2d_B4_out_valid_in_1;
    assign avgpool2d_B4_x_i_valid_succ = bb_avgpool2d_B4_out_valid_out_0;
    assign avgpool2d_B4_x_i_capture_bitsignaltemp = avgpool2d_B4_x_i_capture[0];
    assign avgpool2d_B4_x_i_clear_bitsignaltemp = avgpool2d_B4_x_i_clear[0];
    assign avgpool2d_B4_x_i_enable_bitsignaltemp = avgpool2d_B4_x_i_enable[0];
    assign avgpool2d_B4_x_i_shift_bitsignaltemp = avgpool2d_B4_x_i_shift[0];
    assign avgpool2d_B4_x_i_stall_pred_bitsignaltemp = avgpool2d_B4_x_i_stall_pred[0];
    assign avgpool2d_B4_x_i_stall_succ_bitsignaltemp = avgpool2d_B4_x_i_stall_succ[0];
    assign avgpool2d_B4_x_i_valid_loop_bitsignaltemp = avgpool2d_B4_x_i_valid_loop[0];
    assign avgpool2d_B4_x_i_valid_pred_bitsignaltemp = avgpool2d_B4_x_i_valid_pred[0];
    assign avgpool2d_B4_x_i_valid_succ_bitsignaltemp = avgpool2d_B4_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("avgpool2d.B4")
    ) theavgpool2d_B4_x (
        .i_capture(avgpool2d_B4_x_i_capture_bitsignaltemp),
        .i_clear(avgpool2d_B4_x_i_clear_bitsignaltemp),
        .i_enable(avgpool2d_B4_x_i_enable_bitsignaltemp),
        .i_shift(avgpool2d_B4_x_i_shift_bitsignaltemp),
        .i_stall_pred(avgpool2d_B4_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(avgpool2d_B4_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(avgpool2d_B4_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(avgpool2d_B4_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(avgpool2d_B4_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_o_active_unnamed_avgpool2d1(GPOUT,50)
    assign out_o_active_unnamed_avgpool2d1 = bb_avgpool2d_B3_out_lsu_unnamed_avgpool2d1_o_active;

    // out_stall_out(GPOUT,51)
    assign out_stall_out = bb_avgpool2d_B0_out_stall_out_0;

    // out_unnamed_avgpool2d1_avgpool2d_avm_address(GPOUT,52)
    assign out_unnamed_avgpool2d1_avgpool2d_avm_address = bb_avgpool2d_B3_out_unnamed_avgpool2d1_avgpool2d_avm_address;

    // out_unnamed_avgpool2d1_avgpool2d_avm_burstcount(GPOUT,53)
    assign out_unnamed_avgpool2d1_avgpool2d_avm_burstcount = bb_avgpool2d_B3_out_unnamed_avgpool2d1_avgpool2d_avm_burstcount;

    // out_unnamed_avgpool2d1_avgpool2d_avm_byteenable(GPOUT,54)
    assign out_unnamed_avgpool2d1_avgpool2d_avm_byteenable = bb_avgpool2d_B3_out_unnamed_avgpool2d1_avgpool2d_avm_byteenable;

    // out_unnamed_avgpool2d1_avgpool2d_avm_enable(GPOUT,55)
    assign out_unnamed_avgpool2d1_avgpool2d_avm_enable = bb_avgpool2d_B3_out_unnamed_avgpool2d1_avgpool2d_avm_enable;

    // out_unnamed_avgpool2d1_avgpool2d_avm_read(GPOUT,56)
    assign out_unnamed_avgpool2d1_avgpool2d_avm_read = bb_avgpool2d_B3_out_unnamed_avgpool2d1_avgpool2d_avm_read;

    // out_unnamed_avgpool2d1_avgpool2d_avm_write(GPOUT,57)
    assign out_unnamed_avgpool2d1_avgpool2d_avm_write = bb_avgpool2d_B3_out_unnamed_avgpool2d1_avgpool2d_avm_write;

    // out_unnamed_avgpool2d1_avgpool2d_avm_writedata(GPOUT,58)
    assign out_unnamed_avgpool2d1_avgpool2d_avm_writedata = bb_avgpool2d_B3_out_unnamed_avgpool2d1_avgpool2d_avm_writedata;

    // out_unnamed_avgpool2d2_avgpool2d_avm_address(GPOUT,59)
    assign out_unnamed_avgpool2d2_avgpool2d_avm_address = bb_avgpool2d_B4_out_unnamed_avgpool2d2_avgpool2d_avm_address;

    // out_unnamed_avgpool2d2_avgpool2d_avm_burstcount(GPOUT,60)
    assign out_unnamed_avgpool2d2_avgpool2d_avm_burstcount = bb_avgpool2d_B4_out_unnamed_avgpool2d2_avgpool2d_avm_burstcount;

    // out_unnamed_avgpool2d2_avgpool2d_avm_byteenable(GPOUT,61)
    assign out_unnamed_avgpool2d2_avgpool2d_avm_byteenable = bb_avgpool2d_B4_out_unnamed_avgpool2d2_avgpool2d_avm_byteenable;

    // out_unnamed_avgpool2d2_avgpool2d_avm_enable(GPOUT,62)
    assign out_unnamed_avgpool2d2_avgpool2d_avm_enable = bb_avgpool2d_B4_out_unnamed_avgpool2d2_avgpool2d_avm_enable;

    // out_unnamed_avgpool2d2_avgpool2d_avm_read(GPOUT,63)
    assign out_unnamed_avgpool2d2_avgpool2d_avm_read = bb_avgpool2d_B4_out_unnamed_avgpool2d2_avgpool2d_avm_read;

    // out_unnamed_avgpool2d2_avgpool2d_avm_write(GPOUT,64)
    assign out_unnamed_avgpool2d2_avgpool2d_avm_write = bb_avgpool2d_B4_out_unnamed_avgpool2d2_avgpool2d_avm_write;

    // out_unnamed_avgpool2d2_avgpool2d_avm_writedata(GPOUT,65)
    assign out_unnamed_avgpool2d2_avgpool2d_avm_writedata = bb_avgpool2d_B4_out_unnamed_avgpool2d2_avgpool2d_avm_writedata;

    // out_valid_out(GPOUT,66)
    assign out_valid_out = bb_avgpool2d_B2_out_valid_out_0;

endmodule
