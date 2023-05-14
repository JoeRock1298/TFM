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

// SystemVerilog created from mmul_function_wrapper
// SystemVerilog created on Tue May  9 13:46:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_function_wrapper (
    input wire [511:0] avm_lm9_mmul_readdata,
    input wire [0:0] avm_lm9_mmul_readdatavalid,
    input wire [0:0] avm_lm9_mmul_waitrequest,
    input wire [0:0] avm_lm9_mmul_writeack,
    input wire [511:0] avm_lm_mmul_readdata,
    input wire [0:0] avm_lm_mmul_readdatavalid,
    input wire [0:0] avm_lm_mmul_waitrequest,
    input wire [0:0] avm_lm_mmul_writeack,
    input wire [511:0] avm_unnamed_mmul9_mmul_readdata,
    input wire [0:0] avm_unnamed_mmul9_mmul_readdatavalid,
    input wire [0:0] avm_unnamed_mmul9_mmul_waitrequest,
    input wire [0:0] avm_unnamed_mmul9_mmul_writeack,
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
    output wire [30:0] avm_lm9_mmul_address,
    output wire [4:0] avm_lm9_mmul_burstcount,
    output wire [63:0] avm_lm9_mmul_byteenable,
    output wire [0:0] avm_lm9_mmul_enable,
    output wire [0:0] avm_lm9_mmul_read,
    output wire [0:0] avm_lm9_mmul_write,
    output wire [511:0] avm_lm9_mmul_writedata,
    output wire [30:0] avm_lm_mmul_address,
    output wire [4:0] avm_lm_mmul_burstcount,
    output wire [63:0] avm_lm_mmul_byteenable,
    output wire [0:0] avm_lm_mmul_enable,
    output wire [0:0] avm_lm_mmul_read,
    output wire [0:0] avm_lm_mmul_write,
    output wire [511:0] avm_lm_mmul_writedata,
    output wire [30:0] avm_unnamed_mmul9_mmul_address,
    output wire [4:0] avm_unnamed_mmul9_mmul_burstcount,
    output wire [63:0] avm_unnamed_mmul9_mmul_byteenable,
    output wire [0:0] avm_unnamed_mmul9_mmul_enable,
    output wire [0:0] avm_unnamed_mmul9_mmul_read,
    output wire [0:0] avm_unnamed_mmul9_mmul_write,
    output wire [511:0] avm_unnamed_mmul9_mmul_writedata,
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
    wire [63:0] arg_A_select_b;
    wire [63:0] arg_B_select_b;
    wire [63:0] arg_C_select_b;
    wire [31:0] arg_N_select_b;
    wire [30:0] mmul_function_out_lm9_mmul_avm_address;
    wire [4:0] mmul_function_out_lm9_mmul_avm_burstcount;
    wire [63:0] mmul_function_out_lm9_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm9_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm9_mmul_avm_read;
    wire [0:0] mmul_function_out_lm9_mmul_avm_write;
    wire [511:0] mmul_function_out_lm9_mmul_avm_writedata;
    wire [30:0] mmul_function_out_lm_mmul_avm_address;
    wire [4:0] mmul_function_out_lm_mmul_avm_burstcount;
    wire [63:0] mmul_function_out_lm_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_lm_mmul_avm_enable;
    wire [0:0] mmul_function_out_lm_mmul_avm_read;
    wire [0:0] mmul_function_out_lm_mmul_avm_write;
    wire [511:0] mmul_function_out_lm_mmul_avm_writedata;
    wire [0:0] mmul_function_out_o_active_unnamed_mmul9;
    wire [0:0] mmul_function_out_stall_out;
    wire [30:0] mmul_function_out_unnamed_mmul9_mmul_avm_address;
    wire [4:0] mmul_function_out_unnamed_mmul9_mmul_avm_burstcount;
    wire [63:0] mmul_function_out_unnamed_mmul9_mmul_avm_byteenable;
    wire [0:0] mmul_function_out_unnamed_mmul9_mmul_avm_enable;
    wire [0:0] mmul_function_out_unnamed_mmul9_mmul_avm_read;
    wire [0:0] mmul_function_out_unnamed_mmul9_mmul_avm_write;
    wire [511:0] mmul_function_out_unnamed_mmul9_mmul_avm_writedata;
    wire [0:0] mmul_function_out_valid_out;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // arg_N_select(BITSELECT,6)
    assign arg_N_select_b = kernel_arguments[31:0];

    // arg_C_select(BITSELECT,5)
    assign arg_C_select_b = kernel_arguments[223:160];

    // arg_B_select(BITSELECT,4)
    assign arg_B_select_b = kernel_arguments[159:96];

    // arg_A_select(BITSELECT,3)
    assign arg_A_select_b = kernel_arguments[95:32];

    // mmul_function(BLACKBOX,55)
    mmul_function themmul_function (
        .in_arg_A(arg_A_select_b),
        .in_arg_B(arg_B_select_b),
        .in_arg_C(arg_C_select_b),
        .in_arg_N(arg_N_select_b),
        .in_arg_acl_global_size_0(global_size_0),
        .in_arg_acl_global_size_1(global_size_1),
        .in_arg_acl_global_size_2(global_size_2),
        .in_arg_acl_local_size_0(local_size_0),
        .in_arg_acl_local_size_1(local_size_1),
        .in_arg_acl_local_size_2(local_size_2),
        .in_lm9_mmul_avm_readdata(avm_lm9_mmul_readdata),
        .in_lm9_mmul_avm_readdatavalid(avm_lm9_mmul_readdatavalid),
        .in_lm9_mmul_avm_waitrequest(avm_lm9_mmul_waitrequest),
        .in_lm9_mmul_avm_writeack(avm_lm9_mmul_writeack),
        .in_lm_mmul_avm_readdata(avm_lm_mmul_readdata),
        .in_lm_mmul_avm_readdatavalid(avm_lm_mmul_readdatavalid),
        .in_lm_mmul_avm_waitrequest(avm_lm_mmul_waitrequest),
        .in_lm_mmul_avm_writeack(avm_lm_mmul_writeack),
        .in_stall_in(GND_q),
        .in_start(start),
        .in_unnamed_mmul9_mmul_avm_readdata(avm_unnamed_mmul9_mmul_readdata),
        .in_unnamed_mmul9_mmul_avm_readdatavalid(avm_unnamed_mmul9_mmul_readdatavalid),
        .in_unnamed_mmul9_mmul_avm_waitrequest(avm_unnamed_mmul9_mmul_waitrequest),
        .in_unnamed_mmul9_mmul_avm_writeack(avm_unnamed_mmul9_mmul_writeack),
        .in_valid_in(kernel_valid_in),
        .out_lm9_mmul_avm_address(mmul_function_out_lm9_mmul_avm_address),
        .out_lm9_mmul_avm_burstcount(mmul_function_out_lm9_mmul_avm_burstcount),
        .out_lm9_mmul_avm_byteenable(mmul_function_out_lm9_mmul_avm_byteenable),
        .out_lm9_mmul_avm_enable(mmul_function_out_lm9_mmul_avm_enable),
        .out_lm9_mmul_avm_read(mmul_function_out_lm9_mmul_avm_read),
        .out_lm9_mmul_avm_write(mmul_function_out_lm9_mmul_avm_write),
        .out_lm9_mmul_avm_writedata(mmul_function_out_lm9_mmul_avm_writedata),
        .out_lm_mmul_avm_address(mmul_function_out_lm_mmul_avm_address),
        .out_lm_mmul_avm_burstcount(mmul_function_out_lm_mmul_avm_burstcount),
        .out_lm_mmul_avm_byteenable(mmul_function_out_lm_mmul_avm_byteenable),
        .out_lm_mmul_avm_enable(mmul_function_out_lm_mmul_avm_enable),
        .out_lm_mmul_avm_read(mmul_function_out_lm_mmul_avm_read),
        .out_lm_mmul_avm_write(mmul_function_out_lm_mmul_avm_write),
        .out_lm_mmul_avm_writedata(mmul_function_out_lm_mmul_avm_writedata),
        .out_o_active_unnamed_mmul9(mmul_function_out_o_active_unnamed_mmul9),
        .out_stall_out(mmul_function_out_stall_out),
        .out_unnamed_mmul9_mmul_avm_address(mmul_function_out_unnamed_mmul9_mmul_avm_address),
        .out_unnamed_mmul9_mmul_avm_burstcount(mmul_function_out_unnamed_mmul9_mmul_avm_burstcount),
        .out_unnamed_mmul9_mmul_avm_byteenable(mmul_function_out_unnamed_mmul9_mmul_avm_byteenable),
        .out_unnamed_mmul9_mmul_avm_enable(mmul_function_out_unnamed_mmul9_mmul_avm_enable),
        .out_unnamed_mmul9_mmul_avm_read(mmul_function_out_unnamed_mmul9_mmul_avm_read),
        .out_unnamed_mmul9_mmul_avm_write(mmul_function_out_unnamed_mmul9_mmul_avm_write),
        .out_unnamed_mmul9_mmul_avm_writedata(mmul_function_out_unnamed_mmul9_mmul_avm_writedata),
        .out_valid_out(mmul_function_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm9_mmul_address(GPOUT,56)
    assign avm_lm9_mmul_address = mmul_function_out_lm9_mmul_avm_address;

    // avm_lm9_mmul_burstcount(GPOUT,57)
    assign avm_lm9_mmul_burstcount = mmul_function_out_lm9_mmul_avm_burstcount;

    // avm_lm9_mmul_byteenable(GPOUT,58)
    assign avm_lm9_mmul_byteenable = mmul_function_out_lm9_mmul_avm_byteenable;

    // avm_lm9_mmul_enable(GPOUT,59)
    assign avm_lm9_mmul_enable = mmul_function_out_lm9_mmul_avm_enable;

    // avm_lm9_mmul_read(GPOUT,60)
    assign avm_lm9_mmul_read = mmul_function_out_lm9_mmul_avm_read;

    // avm_lm9_mmul_write(GPOUT,61)
    assign avm_lm9_mmul_write = mmul_function_out_lm9_mmul_avm_write;

    // avm_lm9_mmul_writedata(GPOUT,62)
    assign avm_lm9_mmul_writedata = mmul_function_out_lm9_mmul_avm_writedata;

    // avm_lm_mmul_address(GPOUT,63)
    assign avm_lm_mmul_address = mmul_function_out_lm_mmul_avm_address;

    // avm_lm_mmul_burstcount(GPOUT,64)
    assign avm_lm_mmul_burstcount = mmul_function_out_lm_mmul_avm_burstcount;

    // avm_lm_mmul_byteenable(GPOUT,65)
    assign avm_lm_mmul_byteenable = mmul_function_out_lm_mmul_avm_byteenable;

    // avm_lm_mmul_enable(GPOUT,66)
    assign avm_lm_mmul_enable = mmul_function_out_lm_mmul_avm_enable;

    // avm_lm_mmul_read(GPOUT,67)
    assign avm_lm_mmul_read = mmul_function_out_lm_mmul_avm_read;

    // avm_lm_mmul_write(GPOUT,68)
    assign avm_lm_mmul_write = mmul_function_out_lm_mmul_avm_write;

    // avm_lm_mmul_writedata(GPOUT,69)
    assign avm_lm_mmul_writedata = mmul_function_out_lm_mmul_avm_writedata;

    // avm_unnamed_mmul9_mmul_address(GPOUT,70)
    assign avm_unnamed_mmul9_mmul_address = mmul_function_out_unnamed_mmul9_mmul_avm_address;

    // avm_unnamed_mmul9_mmul_burstcount(GPOUT,71)
    assign avm_unnamed_mmul9_mmul_burstcount = mmul_function_out_unnamed_mmul9_mmul_avm_burstcount;

    // avm_unnamed_mmul9_mmul_byteenable(GPOUT,72)
    assign avm_unnamed_mmul9_mmul_byteenable = mmul_function_out_unnamed_mmul9_mmul_avm_byteenable;

    // avm_unnamed_mmul9_mmul_enable(GPOUT,73)
    assign avm_unnamed_mmul9_mmul_enable = mmul_function_out_unnamed_mmul9_mmul_avm_enable;

    // avm_unnamed_mmul9_mmul_read(GPOUT,74)
    assign avm_unnamed_mmul9_mmul_read = mmul_function_out_unnamed_mmul9_mmul_avm_read;

    // avm_unnamed_mmul9_mmul_write(GPOUT,75)
    assign avm_unnamed_mmul9_mmul_write = mmul_function_out_unnamed_mmul9_mmul_avm_write;

    // avm_unnamed_mmul9_mmul_writedata(GPOUT,76)
    assign avm_unnamed_mmul9_mmul_writedata = mmul_function_out_unnamed_mmul9_mmul_avm_writedata;

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

    // clock2x_output(GPOUT,77)
    assign clock2x_output = acl_clock2x_dummy_consumer_myout;

    // has_a_lsu_active(GPOUT,78)
    assign has_a_lsu_active = mmul_function_out_o_active_unnamed_mmul9;

    // has_a_write_pending(GPOUT,79)
    assign has_a_write_pending = mmul_function_out_o_active_unnamed_mmul9;

    // kernel_stall_out(GPOUT,80)
    assign kernel_stall_out = mmul_function_out_stall_out;

    // kernel_valid_out(GPOUT,81)
    assign kernel_valid_out = mmul_function_out_valid_out;

endmodule
