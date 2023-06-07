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

// SystemVerilog created from maxpool2d_function_wrapper
// SystemVerilog created on Tue Jun  6 18:48:21 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_function_wrapper (
    input wire [511:0] avm_lm_maxpool2d_readdata,
    input wire [0:0] avm_lm_maxpool2d_readdatavalid,
    input wire [0:0] avm_lm_maxpool2d_waitrequest,
    input wire [0:0] avm_lm_maxpool2d_writeack,
    input wire [511:0] avm_unnamed_maxpool2d13_maxpool2d_readdata,
    input wire [0:0] avm_unnamed_maxpool2d13_maxpool2d_readdatavalid,
    input wire [0:0] avm_unnamed_maxpool2d13_maxpool2d_waitrequest,
    input wire [0:0] avm_unnamed_maxpool2d13_maxpool2d_writeack,
    input wire [0:0] clock2x,
    input wire [63:0] global_id_0,
    input wire [63:0] global_id_1,
    input wire [63:0] global_id_2,
    input wire [63:0] global_offset_0,
    input wire [63:0] global_offset_1,
    input wire [63:0] global_offset_2,
    input wire [63:0] global_size_0,
    input wire [63:0] global_size_1,
    input wire [63:0] global_size_2,
    input wire [31:0] group_id_0,
    input wire [31:0] group_id_1,
    input wire [31:0] group_id_2,
    input wire [223:0] kernel_arguments,
    input wire [0:0] kernel_stall_in,
    input wire [0:0] kernel_valid_in,
    input wire [31:0] local_id_0,
    input wire [31:0] local_id_1,
    input wire [31:0] local_id_2,
    input wire [0:0] local_router_hang,
    input wire [31:0] local_size_0,
    input wire [31:0] local_size_1,
    input wire [31:0] local_size_2,
    input wire [31:0] num_groups_0,
    input wire [31:0] num_groups_1,
    input wire [31:0] num_groups_2,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    input wire [31:0] work_dim,
    input wire [31:0] workgroup_size,
    output wire [30:0] avm_lm_maxpool2d_address,
    output wire [4:0] avm_lm_maxpool2d_burstcount,
    output wire [63:0] avm_lm_maxpool2d_byteenable,
    output wire [0:0] avm_lm_maxpool2d_enable,
    output wire [0:0] avm_lm_maxpool2d_read,
    output wire [0:0] avm_lm_maxpool2d_write,
    output wire [511:0] avm_lm_maxpool2d_writedata,
    output wire [30:0] avm_unnamed_maxpool2d13_maxpool2d_address,
    output wire [4:0] avm_unnamed_maxpool2d13_maxpool2d_burstcount,
    output wire [63:0] avm_unnamed_maxpool2d13_maxpool2d_byteenable,
    output wire [0:0] avm_unnamed_maxpool2d13_maxpool2d_enable,
    output wire [0:0] avm_unnamed_maxpool2d13_maxpool2d_read,
    output wire [0:0] avm_unnamed_maxpool2d13_maxpool2d_write,
    output wire [511:0] avm_unnamed_maxpool2d13_maxpool2d_writedata,
    output wire [0:0] clock2x_output,
    output wire [0:0] has_a_lsu_active,
    output wire [0:0] has_a_write_pending,
    output wire [0:0] kernel_stall_out,
    output wire [0:0] kernel_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] acl_clock2x_dummy_consumer_clock2x;
    wire acl_clock2x_dummy_consumer_clock2x_bitsignaltemp;
    wire [0:0] acl_clock2x_dummy_consumer_myout;
    wire acl_clock2x_dummy_consumer_myout_bitsignaltemp;
    wire [31:0] arg_channel_size_select_b;
    wire [63:0] arg_input_im_select_b;
    wire [31:0] arg_input_size_select_b;
    wire [63:0] arg_output_im_select_b;
    wire [31:0] arg_output_size_select_b;
    wire [30:0] maxpool2d_function_out_lm_maxpool2d_avm_address;
    wire [4:0] maxpool2d_function_out_lm_maxpool2d_avm_burstcount;
    wire [63:0] maxpool2d_function_out_lm_maxpool2d_avm_byteenable;
    wire [0:0] maxpool2d_function_out_lm_maxpool2d_avm_enable;
    wire [0:0] maxpool2d_function_out_lm_maxpool2d_avm_read;
    wire [0:0] maxpool2d_function_out_lm_maxpool2d_avm_write;
    wire [511:0] maxpool2d_function_out_lm_maxpool2d_avm_writedata;
    wire [0:0] maxpool2d_function_out_o_active_unnamed_maxpool2d13;
    wire [0:0] maxpool2d_function_out_stall_out;
    wire [30:0] maxpool2d_function_out_unnamed_maxpool2d13_maxpool2d_avm_address;
    wire [4:0] maxpool2d_function_out_unnamed_maxpool2d13_maxpool2d_avm_burstcount;
    wire [63:0] maxpool2d_function_out_unnamed_maxpool2d13_maxpool2d_avm_byteenable;
    wire [0:0] maxpool2d_function_out_unnamed_maxpool2d13_maxpool2d_avm_enable;
    wire [0:0] maxpool2d_function_out_unnamed_maxpool2d13_maxpool2d_avm_read;
    wire [0:0] maxpool2d_function_out_unnamed_maxpool2d13_maxpool2d_avm_write;
    wire [511:0] maxpool2d_function_out_unnamed_maxpool2d13_maxpool2d_avm_writedata;
    wire [0:0] maxpool2d_function_out_valid_out;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // arg_output_size_select(BITSELECT,7)
    assign arg_output_size_select_b = kernel_arguments[63:32];

    // arg_output_im_select(BITSELECT,6)
    assign arg_output_im_select_b = kernel_arguments[223:160];

    // arg_input_size_select(BITSELECT,5)
    assign arg_input_size_select_b = kernel_arguments[31:0];

    // arg_input_im_select(BITSELECT,4)
    assign arg_input_im_select_b = kernel_arguments[159:96];

    // arg_channel_size_select(BITSELECT,3)
    assign arg_channel_size_select_b = kernel_arguments[95:64];

    // maxpool2d_function(BLACKBOX,53)
    maxpool2d_function themaxpool2d_function (
        .in_arg_acl_global_size_0(global_size_0),
        .in_arg_acl_global_size_1(global_size_1),
        .in_arg_acl_global_size_2(global_size_2),
        .in_arg_acl_local_size_0(local_size_0),
        .in_arg_acl_local_size_1(local_size_1),
        .in_arg_acl_local_size_2(local_size_2),
        .in_arg_channel_size(arg_channel_size_select_b),
        .in_arg_input_im(arg_input_im_select_b),
        .in_arg_input_size(arg_input_size_select_b),
        .in_arg_output_im(arg_output_im_select_b),
        .in_arg_output_size(arg_output_size_select_b),
        .in_lm_maxpool2d_avm_readdata(avm_lm_maxpool2d_readdata),
        .in_lm_maxpool2d_avm_readdatavalid(avm_lm_maxpool2d_readdatavalid),
        .in_lm_maxpool2d_avm_waitrequest(avm_lm_maxpool2d_waitrequest),
        .in_lm_maxpool2d_avm_writeack(avm_lm_maxpool2d_writeack),
        .in_stall_in(GND_q),
        .in_start(start),
        .in_unnamed_maxpool2d13_maxpool2d_avm_readdata(avm_unnamed_maxpool2d13_maxpool2d_readdata),
        .in_unnamed_maxpool2d13_maxpool2d_avm_readdatavalid(avm_unnamed_maxpool2d13_maxpool2d_readdatavalid),
        .in_unnamed_maxpool2d13_maxpool2d_avm_waitrequest(avm_unnamed_maxpool2d13_maxpool2d_waitrequest),
        .in_unnamed_maxpool2d13_maxpool2d_avm_writeack(avm_unnamed_maxpool2d13_maxpool2d_writeack),
        .in_valid_in(kernel_valid_in),
        .out_lm_maxpool2d_avm_address(maxpool2d_function_out_lm_maxpool2d_avm_address),
        .out_lm_maxpool2d_avm_burstcount(maxpool2d_function_out_lm_maxpool2d_avm_burstcount),
        .out_lm_maxpool2d_avm_byteenable(maxpool2d_function_out_lm_maxpool2d_avm_byteenable),
        .out_lm_maxpool2d_avm_enable(maxpool2d_function_out_lm_maxpool2d_avm_enable),
        .out_lm_maxpool2d_avm_read(maxpool2d_function_out_lm_maxpool2d_avm_read),
        .out_lm_maxpool2d_avm_write(maxpool2d_function_out_lm_maxpool2d_avm_write),
        .out_lm_maxpool2d_avm_writedata(maxpool2d_function_out_lm_maxpool2d_avm_writedata),
        .out_o_active_unnamed_maxpool2d13(maxpool2d_function_out_o_active_unnamed_maxpool2d13),
        .out_stall_out(maxpool2d_function_out_stall_out),
        .out_unnamed_maxpool2d13_maxpool2d_avm_address(maxpool2d_function_out_unnamed_maxpool2d13_maxpool2d_avm_address),
        .out_unnamed_maxpool2d13_maxpool2d_avm_burstcount(maxpool2d_function_out_unnamed_maxpool2d13_maxpool2d_avm_burstcount),
        .out_unnamed_maxpool2d13_maxpool2d_avm_byteenable(maxpool2d_function_out_unnamed_maxpool2d13_maxpool2d_avm_byteenable),
        .out_unnamed_maxpool2d13_maxpool2d_avm_enable(maxpool2d_function_out_unnamed_maxpool2d13_maxpool2d_avm_enable),
        .out_unnamed_maxpool2d13_maxpool2d_avm_read(maxpool2d_function_out_unnamed_maxpool2d13_maxpool2d_avm_read),
        .out_unnamed_maxpool2d13_maxpool2d_avm_write(maxpool2d_function_out_unnamed_maxpool2d13_maxpool2d_avm_write),
        .out_unnamed_maxpool2d13_maxpool2d_avm_writedata(maxpool2d_function_out_unnamed_maxpool2d13_maxpool2d_avm_writedata),
        .out_valid_out(maxpool2d_function_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm_maxpool2d_address(GPOUT,54)
    assign avm_lm_maxpool2d_address = maxpool2d_function_out_lm_maxpool2d_avm_address;

    // avm_lm_maxpool2d_burstcount(GPOUT,55)
    assign avm_lm_maxpool2d_burstcount = maxpool2d_function_out_lm_maxpool2d_avm_burstcount;

    // avm_lm_maxpool2d_byteenable(GPOUT,56)
    assign avm_lm_maxpool2d_byteenable = maxpool2d_function_out_lm_maxpool2d_avm_byteenable;

    // avm_lm_maxpool2d_enable(GPOUT,57)
    assign avm_lm_maxpool2d_enable = maxpool2d_function_out_lm_maxpool2d_avm_enable;

    // avm_lm_maxpool2d_read(GPOUT,58)
    assign avm_lm_maxpool2d_read = maxpool2d_function_out_lm_maxpool2d_avm_read;

    // avm_lm_maxpool2d_write(GPOUT,59)
    assign avm_lm_maxpool2d_write = maxpool2d_function_out_lm_maxpool2d_avm_write;

    // avm_lm_maxpool2d_writedata(GPOUT,60)
    assign avm_lm_maxpool2d_writedata = maxpool2d_function_out_lm_maxpool2d_avm_writedata;

    // avm_unnamed_maxpool2d13_maxpool2d_address(GPOUT,61)
    assign avm_unnamed_maxpool2d13_maxpool2d_address = maxpool2d_function_out_unnamed_maxpool2d13_maxpool2d_avm_address;

    // avm_unnamed_maxpool2d13_maxpool2d_burstcount(GPOUT,62)
    assign avm_unnamed_maxpool2d13_maxpool2d_burstcount = maxpool2d_function_out_unnamed_maxpool2d13_maxpool2d_avm_burstcount;

    // avm_unnamed_maxpool2d13_maxpool2d_byteenable(GPOUT,63)
    assign avm_unnamed_maxpool2d13_maxpool2d_byteenable = maxpool2d_function_out_unnamed_maxpool2d13_maxpool2d_avm_byteenable;

    // avm_unnamed_maxpool2d13_maxpool2d_enable(GPOUT,64)
    assign avm_unnamed_maxpool2d13_maxpool2d_enable = maxpool2d_function_out_unnamed_maxpool2d13_maxpool2d_avm_enable;

    // avm_unnamed_maxpool2d13_maxpool2d_read(GPOUT,65)
    assign avm_unnamed_maxpool2d13_maxpool2d_read = maxpool2d_function_out_unnamed_maxpool2d13_maxpool2d_avm_read;

    // avm_unnamed_maxpool2d13_maxpool2d_write(GPOUT,66)
    assign avm_unnamed_maxpool2d13_maxpool2d_write = maxpool2d_function_out_unnamed_maxpool2d13_maxpool2d_avm_write;

    // avm_unnamed_maxpool2d13_maxpool2d_writedata(GPOUT,67)
    assign avm_unnamed_maxpool2d13_maxpool2d_writedata = maxpool2d_function_out_unnamed_maxpool2d13_maxpool2d_avm_writedata;

    // acl_clock2x_dummy_consumer(EXTIFACE,2)
    assign acl_clock2x_dummy_consumer_clock2x = clock2x;
    assign acl_clock2x_dummy_consumer_clock2x_bitsignaltemp = acl_clock2x_dummy_consumer_clock2x[0];
    assign acl_clock2x_dummy_consumer_myout[0] = acl_clock2x_dummy_consumer_myout_bitsignaltemp;
    acl_clock2x_holder theacl_clock2x_dummy_consumer (
        .clock2x(acl_clock2x_dummy_consumer_clock2x_bitsignaltemp),
        .myout(acl_clock2x_dummy_consumer_myout_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // clock2x_output(GPOUT,68)
    assign clock2x_output = acl_clock2x_dummy_consumer_myout;

    // has_a_lsu_active(GPOUT,69)
    assign has_a_lsu_active = maxpool2d_function_out_o_active_unnamed_maxpool2d13;

    // has_a_write_pending(GPOUT,70)
    assign has_a_write_pending = maxpool2d_function_out_o_active_unnamed_maxpool2d13;

    // kernel_stall_out(GPOUT,71)
    assign kernel_stall_out = maxpool2d_function_out_stall_out;

    // kernel_valid_out(GPOUT,72)
    assign kernel_valid_out = maxpool2d_function_out_valid_out;

endmodule
