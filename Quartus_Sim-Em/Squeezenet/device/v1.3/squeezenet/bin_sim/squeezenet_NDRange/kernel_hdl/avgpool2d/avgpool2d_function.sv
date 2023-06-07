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
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpool2d_function (
    input wire [63:0] in_arg_acl_global_id_0,
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
    wire [0:0] avgpool2d_B2_x_i_capture;
    wire avgpool2d_B2_x_i_capture_bitsignaltemp;
    wire [0:0] avgpool2d_B2_x_i_clear;
    wire avgpool2d_B2_x_i_clear_bitsignaltemp;
    wire [0:0] avgpool2d_B2_x_i_enable;
    wire avgpool2d_B2_x_i_enable_bitsignaltemp;
    wire [0:0] avgpool2d_B2_x_i_shift;
    wire avgpool2d_B2_x_i_shift_bitsignaltemp;
    wire [0:0] avgpool2d_B2_x_i_stall_pred;
    wire avgpool2d_B2_x_i_stall_pred_bitsignaltemp;
    wire [0:0] avgpool2d_B2_x_i_stall_succ;
    wire avgpool2d_B2_x_i_stall_succ_bitsignaltemp;
    wire [0:0] avgpool2d_B2_x_i_valid_loop;
    wire avgpool2d_B2_x_i_valid_loop_bitsignaltemp;
    wire [0:0] avgpool2d_B2_x_i_valid_pred;
    wire avgpool2d_B2_x_i_valid_pred_bitsignaltemp;
    wire [0:0] avgpool2d_B2_x_i_valid_succ;
    wire avgpool2d_B2_x_i_valid_succ_bitsignaltemp;
    wire [31:0] bb_avgpool2d_B0_out_c0_exe1;
    wire [63:0] bb_avgpool2d_B0_out_c0_exe2;
    wire [0:0] bb_avgpool2d_B0_out_stall_out_0;
    wire [0:0] bb_avgpool2d_B0_out_valid_out_0;
    wire [0:0] bb_avgpool2d_B1_out_lsu_unnamed_avgpool2d1_o_active;
    wire [0:0] bb_avgpool2d_B1_out_stall_out_0;
    wire [30:0] bb_avgpool2d_B1_out_unnamed_avgpool2d1_avgpool2d_avm_address;
    wire [4:0] bb_avgpool2d_B1_out_unnamed_avgpool2d1_avgpool2d_avm_burstcount;
    wire [63:0] bb_avgpool2d_B1_out_unnamed_avgpool2d1_avgpool2d_avm_byteenable;
    wire [0:0] bb_avgpool2d_B1_out_unnamed_avgpool2d1_avgpool2d_avm_enable;
    wire [0:0] bb_avgpool2d_B1_out_unnamed_avgpool2d1_avgpool2d_avm_read;
    wire [0:0] bb_avgpool2d_B1_out_unnamed_avgpool2d1_avgpool2d_avm_write;
    wire [511:0] bb_avgpool2d_B1_out_unnamed_avgpool2d1_avgpool2d_avm_writedata;
    wire [0:0] bb_avgpool2d_B1_out_valid_out_0;
    wire [31:0] bb_avgpool2d_B2_out_c0_exe116;
    wire [31:0] bb_avgpool2d_B2_out_c0_exe12;
    wire [63:0] bb_avgpool2d_B2_out_c0_exe23;
    wire [31:0] bb_avgpool2d_B2_out_inc;
    wire [0:0] bb_avgpool2d_B2_out_stall_in_0;
    wire [0:0] bb_avgpool2d_B2_out_stall_out_0;
    wire [0:0] bb_avgpool2d_B2_out_stall_out_1;
    wire [30:0] bb_avgpool2d_B2_out_unnamed_avgpool2d2_avgpool2d_avm_address;
    wire [4:0] bb_avgpool2d_B2_out_unnamed_avgpool2d2_avgpool2d_avm_burstcount;
    wire [63:0] bb_avgpool2d_B2_out_unnamed_avgpool2d2_avgpool2d_avm_byteenable;
    wire [0:0] bb_avgpool2d_B2_out_unnamed_avgpool2d2_avgpool2d_avm_enable;
    wire [0:0] bb_avgpool2d_B2_out_unnamed_avgpool2d2_avgpool2d_avm_read;
    wire [0:0] bb_avgpool2d_B2_out_unnamed_avgpool2d2_avgpool2d_avm_write;
    wire [511:0] bb_avgpool2d_B2_out_unnamed_avgpool2d2_avgpool2d_avm_writedata;
    wire [0:0] bb_avgpool2d_B2_out_valid_in_0;
    wire [0:0] bb_avgpool2d_B2_out_valid_in_1;
    wire [0:0] bb_avgpool2d_B2_out_valid_out_0;
    wire [0:0] bb_avgpool2d_B2_out_valid_out_1;
    wire [31:0] c_float_0_000000e_0014_q;
    wire [31:0] c_i32_012_q;
    wire [0:0] loop_limiter_avgpool2d0_out_o_stall;
    wire [0:0] loop_limiter_avgpool2d0_out_o_valid;
    wire [0:0] bb_avgpool2d_B1_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_avgpool2d_B1_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_avgpool2d_B1_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_avgpool2d_B1_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_avgpool2d_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_avgpool2d_B2_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_avgpool2d_B2_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_avgpool2d_B2_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_avgpool2d_B2_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_avgpool2d_B2_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_avgpool2d_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_avgpool2d_B2_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_avgpool2d_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_avgpool2d_B2_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_avgpool2d_B2_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_avgpool2d_B2_sr_1_aunroll_x_out_o_data_3_tpl;


    // bb_avgpool2d_B1(BLACKBOX,4)
    avgpool2d_bb_B1 thebb_avgpool2d_B1 (
        .in_c0_exe1164_0(bb_avgpool2d_B1_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe11_0(bb_avgpool2d_B1_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_flush(in_start),
        .in_output_im(in_arg_output_im),
        .in_stall_in_0(in_stall_in),
        .in_unnamed_avgpool2d1_avgpool2d_avm_readdata(in_unnamed_avgpool2d1_avgpool2d_avm_readdata),
        .in_unnamed_avgpool2d1_avgpool2d_avm_readdatavalid(in_unnamed_avgpool2d1_avgpool2d_avm_readdatavalid),
        .in_unnamed_avgpool2d1_avgpool2d_avm_waitrequest(in_unnamed_avgpool2d1_avgpool2d_avm_waitrequest),
        .in_unnamed_avgpool2d1_avgpool2d_avm_writeack(in_unnamed_avgpool2d1_avgpool2d_avm_writeack),
        .in_valid_in_0(bb_avgpool2d_B1_sr_0_aunroll_x_out_o_valid),
        .out_lsu_unnamed_avgpool2d1_o_active(bb_avgpool2d_B1_out_lsu_unnamed_avgpool2d1_o_active),
        .out_stall_out_0(bb_avgpool2d_B1_out_stall_out_0),
        .out_unnamed_avgpool2d1_avgpool2d_avm_address(bb_avgpool2d_B1_out_unnamed_avgpool2d1_avgpool2d_avm_address),
        .out_unnamed_avgpool2d1_avgpool2d_avm_burstcount(bb_avgpool2d_B1_out_unnamed_avgpool2d1_avgpool2d_avm_burstcount),
        .out_unnamed_avgpool2d1_avgpool2d_avm_byteenable(bb_avgpool2d_B1_out_unnamed_avgpool2d1_avgpool2d_avm_byteenable),
        .out_unnamed_avgpool2d1_avgpool2d_avm_enable(bb_avgpool2d_B1_out_unnamed_avgpool2d1_avgpool2d_avm_enable),
        .out_unnamed_avgpool2d1_avgpool2d_avm_read(bb_avgpool2d_B1_out_unnamed_avgpool2d1_avgpool2d_avm_read),
        .out_unnamed_avgpool2d1_avgpool2d_avm_write(bb_avgpool2d_B1_out_unnamed_avgpool2d1_avgpool2d_avm_write),
        .out_unnamed_avgpool2d1_avgpool2d_avm_writedata(bb_avgpool2d_B1_out_unnamed_avgpool2d1_avgpool2d_avm_writedata),
        .out_valid_out_0(bb_avgpool2d_B1_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpool2d_B1_sr_0_aunroll_x(BLACKBOX,48)
    avgpool2d_bb_B1_sr_0 thebb_avgpool2d_B1_sr_0_aunroll_x (
        .in_i_stall(bb_avgpool2d_B1_out_stall_out_0),
        .in_i_valid(bb_avgpool2d_B2_out_valid_out_1),
        .in_i_data_0_tpl(bb_avgpool2d_B2_out_c0_exe12),
        .in_i_data_1_tpl(bb_avgpool2d_B2_out_c0_exe116),
        .out_o_stall(bb_avgpool2d_B1_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_avgpool2d_B1_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_avgpool2d_B1_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_avgpool2d_B1_sr_0_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpool2d_B0(BLACKBOX,3)
    avgpool2d_bb_B0 thebb_avgpool2d_B0 (
        .in_acl_global_id_0_0(in_arg_acl_global_id_0),
        .in_input_im(in_arg_input_im),
        .in_output_im(in_arg_output_im),
        .in_stall_in_0(loop_limiter_avgpool2d0_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_c0_exe1(bb_avgpool2d_B0_out_c0_exe1),
        .out_c0_exe2(bb_avgpool2d_B0_out_c0_exe2),
        .out_stall_out_0(bb_avgpool2d_B0_out_stall_out_0),
        .out_valid_out_0(bb_avgpool2d_B0_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // c_float_0_000000e_0014(FLOATCONSTANT,6)
    assign c_float_0_000000e_0014_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_012(CONSTANT,9)
    assign c_i32_012_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_avgpool2d_B2_sr_1_aunroll_x(BLACKBOX,50)
    avgpool2d_bb_B2_sr_1 thebb_avgpool2d_B2_sr_1_aunroll_x (
        .in_i_stall(bb_avgpool2d_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_avgpool2d0_out_o_valid),
        .in_i_data_0_tpl(c_i32_012_q),
        .in_i_data_1_tpl(c_float_0_000000e_0014_q),
        .in_i_data_2_tpl(bb_avgpool2d_B0_out_c0_exe1),
        .in_i_data_3_tpl(bb_avgpool2d_B0_out_c0_exe2),
        .out_o_stall(bb_avgpool2d_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_avgpool2d_B2_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_avgpool2d_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_avgpool2d_B2_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_avgpool2d_B2_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_avgpool2d_B2_sr_1_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpool2d_B2_sr_0_aunroll_x(BLACKBOX,49)
    avgpool2d_bb_B2_sr_0 thebb_avgpool2d_B2_sr_0_aunroll_x (
        .in_i_stall(bb_avgpool2d_B2_out_stall_out_0),
        .in_i_valid(bb_avgpool2d_B2_out_valid_out_0),
        .in_i_data_0_tpl(bb_avgpool2d_B2_out_inc),
        .in_i_data_1_tpl(bb_avgpool2d_B2_out_c0_exe116),
        .in_i_data_2_tpl(bb_avgpool2d_B2_out_c0_exe12),
        .in_i_data_3_tpl(bb_avgpool2d_B2_out_c0_exe23),
        .out_o_stall(bb_avgpool2d_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_avgpool2d_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_avgpool2d_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_avgpool2d_B2_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_avgpool2d_B2_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_avgpool2d_B2_sr_0_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpool2d_B2(BLACKBOX,5)
    avgpool2d_bb_B2 thebb_avgpool2d_B2 (
        .in_c0_exe12_0(bb_avgpool2d_B2_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe12_1(bb_avgpool2d_B2_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe23_0(bb_avgpool2d_B2_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe23_1(bb_avgpool2d_B2_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_flush(in_start),
        .in_i_012_0(bb_avgpool2d_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_i_012_1(bb_avgpool2d_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_output_im(in_arg_output_im),
        .in_stall_in_0(bb_avgpool2d_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_avgpool2d_B1_sr_0_aunroll_x_out_o_stall),
        .in_tmp_011_0(bb_avgpool2d_B2_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_tmp_011_1(bb_avgpool2d_B2_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_unnamed_avgpool2d2_avgpool2d_avm_readdata(in_unnamed_avgpool2d2_avgpool2d_avm_readdata),
        .in_unnamed_avgpool2d2_avgpool2d_avm_readdatavalid(in_unnamed_avgpool2d2_avgpool2d_avm_readdatavalid),
        .in_unnamed_avgpool2d2_avgpool2d_avm_waitrequest(in_unnamed_avgpool2d2_avgpool2d_avm_waitrequest),
        .in_unnamed_avgpool2d2_avgpool2d_avm_writeack(in_unnamed_avgpool2d2_avgpool2d_avm_writeack),
        .in_valid_in_0(bb_avgpool2d_B2_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_avgpool2d_B2_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe116(bb_avgpool2d_B2_out_c0_exe116),
        .out_c0_exe12(bb_avgpool2d_B2_out_c0_exe12),
        .out_c0_exe23(bb_avgpool2d_B2_out_c0_exe23),
        .out_inc(bb_avgpool2d_B2_out_inc),
        .out_stall_in_0(bb_avgpool2d_B2_out_stall_in_0),
        .out_stall_out_0(bb_avgpool2d_B2_out_stall_out_0),
        .out_stall_out_1(bb_avgpool2d_B2_out_stall_out_1),
        .out_unnamed_avgpool2d2_avgpool2d_avm_address(bb_avgpool2d_B2_out_unnamed_avgpool2d2_avgpool2d_avm_address),
        .out_unnamed_avgpool2d2_avgpool2d_avm_burstcount(bb_avgpool2d_B2_out_unnamed_avgpool2d2_avgpool2d_avm_burstcount),
        .out_unnamed_avgpool2d2_avgpool2d_avm_byteenable(bb_avgpool2d_B2_out_unnamed_avgpool2d2_avgpool2d_avm_byteenable),
        .out_unnamed_avgpool2d2_avgpool2d_avm_enable(bb_avgpool2d_B2_out_unnamed_avgpool2d2_avgpool2d_avm_enable),
        .out_unnamed_avgpool2d2_avgpool2d_avm_read(bb_avgpool2d_B2_out_unnamed_avgpool2d2_avgpool2d_avm_read),
        .out_unnamed_avgpool2d2_avgpool2d_avm_write(bb_avgpool2d_B2_out_unnamed_avgpool2d2_avgpool2d_avm_write),
        .out_unnamed_avgpool2d2_avgpool2d_avm_writedata(bb_avgpool2d_B2_out_unnamed_avgpool2d2_avgpool2d_avm_writedata),
        .out_valid_in_0(bb_avgpool2d_B2_out_valid_in_0),
        .out_valid_in_1(bb_avgpool2d_B2_out_valid_in_1),
        .out_valid_out_0(bb_avgpool2d_B2_out_valid_out_0),
        .out_valid_out_1(bb_avgpool2d_B2_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_avgpool2d0(BLACKBOX,30)
    avgpool2d_loop_limiter_0 theloop_limiter_avgpool2d0 (
        .in_i_stall(bb_avgpool2d_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_avgpool2d_B1_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_avgpool2d_B0_out_valid_out_0),
        .in_i_valid_exit(bb_avgpool2d_B2_out_valid_out_1),
        .out_o_stall(loop_limiter_avgpool2d0_out_o_stall),
        .out_o_valid(loop_limiter_avgpool2d0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // avgpool2d_B2_x(EXTIFACE,2)
    assign avgpool2d_B2_x_i_capture = GND_q;
    assign avgpool2d_B2_x_i_clear = GND_q;
    assign avgpool2d_B2_x_i_enable = VCC_q;
    assign avgpool2d_B2_x_i_shift = GND_q;
    assign avgpool2d_B2_x_i_stall_pred = loop_limiter_avgpool2d0_out_o_stall;
    assign avgpool2d_B2_x_i_stall_succ = bb_avgpool2d_B2_out_stall_in_0;
    assign avgpool2d_B2_x_i_valid_loop = bb_avgpool2d_B2_out_valid_in_0;
    assign avgpool2d_B2_x_i_valid_pred = bb_avgpool2d_B2_out_valid_in_1;
    assign avgpool2d_B2_x_i_valid_succ = bb_avgpool2d_B2_out_valid_out_0;
    assign avgpool2d_B2_x_i_capture_bitsignaltemp = avgpool2d_B2_x_i_capture[0];
    assign avgpool2d_B2_x_i_clear_bitsignaltemp = avgpool2d_B2_x_i_clear[0];
    assign avgpool2d_B2_x_i_enable_bitsignaltemp = avgpool2d_B2_x_i_enable[0];
    assign avgpool2d_B2_x_i_shift_bitsignaltemp = avgpool2d_B2_x_i_shift[0];
    assign avgpool2d_B2_x_i_stall_pred_bitsignaltemp = avgpool2d_B2_x_i_stall_pred[0];
    assign avgpool2d_B2_x_i_stall_succ_bitsignaltemp = avgpool2d_B2_x_i_stall_succ[0];
    assign avgpool2d_B2_x_i_valid_loop_bitsignaltemp = avgpool2d_B2_x_i_valid_loop[0];
    assign avgpool2d_B2_x_i_valid_pred_bitsignaltemp = avgpool2d_B2_x_i_valid_pred[0];
    assign avgpool2d_B2_x_i_valid_succ_bitsignaltemp = avgpool2d_B2_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("avgpool2d.B2")
    ) theavgpool2d_B2_x (
        .i_capture(avgpool2d_B2_x_i_capture_bitsignaltemp),
        .i_clear(avgpool2d_B2_x_i_clear_bitsignaltemp),
        .i_enable(avgpool2d_B2_x_i_enable_bitsignaltemp),
        .i_shift(avgpool2d_B2_x_i_shift_bitsignaltemp),
        .i_stall_pred(avgpool2d_B2_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(avgpool2d_B2_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(avgpool2d_B2_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(avgpool2d_B2_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(avgpool2d_B2_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_o_active_unnamed_avgpool2d1(GPOUT,31)
    assign out_o_active_unnamed_avgpool2d1 = bb_avgpool2d_B1_out_lsu_unnamed_avgpool2d1_o_active;

    // out_stall_out(GPOUT,32)
    assign out_stall_out = bb_avgpool2d_B0_out_stall_out_0;

    // out_unnamed_avgpool2d1_avgpool2d_avm_address(GPOUT,33)
    assign out_unnamed_avgpool2d1_avgpool2d_avm_address = bb_avgpool2d_B1_out_unnamed_avgpool2d1_avgpool2d_avm_address;

    // out_unnamed_avgpool2d1_avgpool2d_avm_burstcount(GPOUT,34)
    assign out_unnamed_avgpool2d1_avgpool2d_avm_burstcount = bb_avgpool2d_B1_out_unnamed_avgpool2d1_avgpool2d_avm_burstcount;

    // out_unnamed_avgpool2d1_avgpool2d_avm_byteenable(GPOUT,35)
    assign out_unnamed_avgpool2d1_avgpool2d_avm_byteenable = bb_avgpool2d_B1_out_unnamed_avgpool2d1_avgpool2d_avm_byteenable;

    // out_unnamed_avgpool2d1_avgpool2d_avm_enable(GPOUT,36)
    assign out_unnamed_avgpool2d1_avgpool2d_avm_enable = bb_avgpool2d_B1_out_unnamed_avgpool2d1_avgpool2d_avm_enable;

    // out_unnamed_avgpool2d1_avgpool2d_avm_read(GPOUT,37)
    assign out_unnamed_avgpool2d1_avgpool2d_avm_read = bb_avgpool2d_B1_out_unnamed_avgpool2d1_avgpool2d_avm_read;

    // out_unnamed_avgpool2d1_avgpool2d_avm_write(GPOUT,38)
    assign out_unnamed_avgpool2d1_avgpool2d_avm_write = bb_avgpool2d_B1_out_unnamed_avgpool2d1_avgpool2d_avm_write;

    // out_unnamed_avgpool2d1_avgpool2d_avm_writedata(GPOUT,39)
    assign out_unnamed_avgpool2d1_avgpool2d_avm_writedata = bb_avgpool2d_B1_out_unnamed_avgpool2d1_avgpool2d_avm_writedata;

    // out_unnamed_avgpool2d2_avgpool2d_avm_address(GPOUT,40)
    assign out_unnamed_avgpool2d2_avgpool2d_avm_address = bb_avgpool2d_B2_out_unnamed_avgpool2d2_avgpool2d_avm_address;

    // out_unnamed_avgpool2d2_avgpool2d_avm_burstcount(GPOUT,41)
    assign out_unnamed_avgpool2d2_avgpool2d_avm_burstcount = bb_avgpool2d_B2_out_unnamed_avgpool2d2_avgpool2d_avm_burstcount;

    // out_unnamed_avgpool2d2_avgpool2d_avm_byteenable(GPOUT,42)
    assign out_unnamed_avgpool2d2_avgpool2d_avm_byteenable = bb_avgpool2d_B2_out_unnamed_avgpool2d2_avgpool2d_avm_byteenable;

    // out_unnamed_avgpool2d2_avgpool2d_avm_enable(GPOUT,43)
    assign out_unnamed_avgpool2d2_avgpool2d_avm_enable = bb_avgpool2d_B2_out_unnamed_avgpool2d2_avgpool2d_avm_enable;

    // out_unnamed_avgpool2d2_avgpool2d_avm_read(GPOUT,44)
    assign out_unnamed_avgpool2d2_avgpool2d_avm_read = bb_avgpool2d_B2_out_unnamed_avgpool2d2_avgpool2d_avm_read;

    // out_unnamed_avgpool2d2_avgpool2d_avm_write(GPOUT,45)
    assign out_unnamed_avgpool2d2_avgpool2d_avm_write = bb_avgpool2d_B2_out_unnamed_avgpool2d2_avgpool2d_avm_write;

    // out_unnamed_avgpool2d2_avgpool2d_avm_writedata(GPOUT,46)
    assign out_unnamed_avgpool2d2_avgpool2d_avm_writedata = bb_avgpool2d_B2_out_unnamed_avgpool2d2_avgpool2d_avm_writedata;

    // out_valid_out(GPOUT,47)
    assign out_valid_out = bb_avgpool2d_B1_out_valid_out_0;

endmodule
