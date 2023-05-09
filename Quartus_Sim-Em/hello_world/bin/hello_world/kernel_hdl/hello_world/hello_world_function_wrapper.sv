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

// SystemVerilog created from hello_world_function_wrapper
// SystemVerilog created on Fri May  5 20:45:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module hello_world_function_wrapper (
    input wire [511:0] avm_unnamed_hello_world0_hello_world_readdata,
    input wire [0:0] avm_unnamed_hello_world0_hello_world_readdatavalid,
    input wire [0:0] avm_unnamed_hello_world0_hello_world_waitrequest,
    input wire [0:0] avm_unnamed_hello_world0_hello_world_writeack,
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
    input wire [95:0] kernel_arguments,
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
    output wire [30:0] avm_unnamed_hello_world0_hello_world_address,
    output wire [4:0] avm_unnamed_hello_world0_hello_world_burstcount,
    output wire [63:0] avm_unnamed_hello_world0_hello_world_byteenable,
    output wire [0:0] avm_unnamed_hello_world0_hello_world_enable,
    output wire [0:0] avm_unnamed_hello_world0_hello_world_read,
    output wire [0:0] avm_unnamed_hello_world0_hello_world_write,
    output wire [511:0] avm_unnamed_hello_world0_hello_world_writedata,
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
    wire [63:0] arg_id_select_b;
    wire [31:0] arg_thread_id_from_which_to_print_message_select_b;
    wire [0:0] hello_world_function_out_o_active_unnamed_hello_world0;
    wire [0:0] hello_world_function_out_stall_out;
    wire [30:0] hello_world_function_out_unnamed_hello_world0_hello_world_avm_address;
    wire [4:0] hello_world_function_out_unnamed_hello_world0_hello_world_avm_burstcount;
    wire [63:0] hello_world_function_out_unnamed_hello_world0_hello_world_avm_byteenable;
    wire [0:0] hello_world_function_out_unnamed_hello_world0_hello_world_avm_enable;
    wire [0:0] hello_world_function_out_unnamed_hello_world0_hello_world_avm_read;
    wire [0:0] hello_world_function_out_unnamed_hello_world0_hello_world_avm_write;
    wire [511:0] hello_world_function_out_unnamed_hello_world0_hello_world_avm_writedata;
    wire [0:0] hello_world_function_out_valid_out;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // arg_thread_id_from_which_to_print_message_select(BITSELECT,4)
    assign arg_thread_id_from_which_to_print_message_select_b = kernel_arguments[31:0];

    // arg_id_select(BITSELECT,3)
    assign arg_id_select_b = kernel_arguments[95:32];

    // hello_world_function(BLACKBOX,6)
    hello_world_function thehello_world_function (
        .in_arg_acl_global_id_0(global_id_0),
        .in_arg_acl_global_size_0(global_size_0),
        .in_arg_acl_global_size_1(global_size_1),
        .in_arg_acl_global_size_2(global_size_2),
        .in_arg_acl_local_size_0(local_size_0),
        .in_arg_acl_local_size_1(local_size_1),
        .in_arg_acl_local_size_2(local_size_2),
        .in_arg_id(arg_id_select_b),
        .in_arg_thread_id_from_which_to_print_message(arg_thread_id_from_which_to_print_message_select_b),
        .in_stall_in(GND_q),
        .in_start(start),
        .in_unnamed_hello_world0_hello_world_avm_readdata(avm_unnamed_hello_world0_hello_world_readdata),
        .in_unnamed_hello_world0_hello_world_avm_readdatavalid(avm_unnamed_hello_world0_hello_world_readdatavalid),
        .in_unnamed_hello_world0_hello_world_avm_waitrequest(avm_unnamed_hello_world0_hello_world_waitrequest),
        .in_unnamed_hello_world0_hello_world_avm_writeack(avm_unnamed_hello_world0_hello_world_writeack),
        .in_valid_in(kernel_valid_in),
        .out_o_active_unnamed_hello_world0(hello_world_function_out_o_active_unnamed_hello_world0),
        .out_stall_out(hello_world_function_out_stall_out),
        .out_unnamed_hello_world0_hello_world_avm_address(hello_world_function_out_unnamed_hello_world0_hello_world_avm_address),
        .out_unnamed_hello_world0_hello_world_avm_burstcount(hello_world_function_out_unnamed_hello_world0_hello_world_avm_burstcount),
        .out_unnamed_hello_world0_hello_world_avm_byteenable(hello_world_function_out_unnamed_hello_world0_hello_world_avm_byteenable),
        .out_unnamed_hello_world0_hello_world_avm_enable(hello_world_function_out_unnamed_hello_world0_hello_world_avm_enable),
        .out_unnamed_hello_world0_hello_world_avm_read(hello_world_function_out_unnamed_hello_world0_hello_world_avm_read),
        .out_unnamed_hello_world0_hello_world_avm_write(hello_world_function_out_unnamed_hello_world0_hello_world_avm_write),
        .out_unnamed_hello_world0_hello_world_avm_writedata(hello_world_function_out_unnamed_hello_world0_hello_world_avm_writedata),
        .out_valid_out(hello_world_function_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_unnamed_hello_world0_hello_world_address(GPOUT,44)
    assign avm_unnamed_hello_world0_hello_world_address = hello_world_function_out_unnamed_hello_world0_hello_world_avm_address;

    // avm_unnamed_hello_world0_hello_world_burstcount(GPOUT,45)
    assign avm_unnamed_hello_world0_hello_world_burstcount = hello_world_function_out_unnamed_hello_world0_hello_world_avm_burstcount;

    // avm_unnamed_hello_world0_hello_world_byteenable(GPOUT,46)
    assign avm_unnamed_hello_world0_hello_world_byteenable = hello_world_function_out_unnamed_hello_world0_hello_world_avm_byteenable;

    // avm_unnamed_hello_world0_hello_world_enable(GPOUT,47)
    assign avm_unnamed_hello_world0_hello_world_enable = hello_world_function_out_unnamed_hello_world0_hello_world_avm_enable;

    // avm_unnamed_hello_world0_hello_world_read(GPOUT,48)
    assign avm_unnamed_hello_world0_hello_world_read = hello_world_function_out_unnamed_hello_world0_hello_world_avm_read;

    // avm_unnamed_hello_world0_hello_world_write(GPOUT,49)
    assign avm_unnamed_hello_world0_hello_world_write = hello_world_function_out_unnamed_hello_world0_hello_world_avm_write;

    // avm_unnamed_hello_world0_hello_world_writedata(GPOUT,50)
    assign avm_unnamed_hello_world0_hello_world_writedata = hello_world_function_out_unnamed_hello_world0_hello_world_avm_writedata;

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

    // clock2x_output(GPOUT,51)
    assign clock2x_output = acl_clock2x_dummy_consumer_myout;

    // has_a_lsu_active(GPOUT,52)
    assign has_a_lsu_active = hello_world_function_out_o_active_unnamed_hello_world0;

    // has_a_write_pending(GPOUT,53)
    assign has_a_write_pending = hello_world_function_out_o_active_unnamed_hello_world0;

    // kernel_stall_out(GPOUT,54)
    assign kernel_stall_out = hello_world_function_out_stall_out;

    // kernel_valid_out(GPOUT,55)
    assign kernel_valid_out = hello_world_function_out_valid_out;

endmodule
