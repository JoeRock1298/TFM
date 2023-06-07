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

// SystemVerilog created from avgpool2d_function_wrapper
// SystemVerilog created on Mon Jun  5 12:30:27 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpool2d_function_wrapper (
    input wire [511:0] avm_unnamed_avgpool2d1_avgpool2d_readdata,
    input wire [0:0] avm_unnamed_avgpool2d1_avgpool2d_readdatavalid,
    input wire [0:0] avm_unnamed_avgpool2d1_avgpool2d_waitrequest,
    input wire [0:0] avm_unnamed_avgpool2d1_avgpool2d_writeack,
    input wire [511:0] avm_unnamed_avgpool2d2_avgpool2d_readdata,
    input wire [0:0] avm_unnamed_avgpool2d2_avgpool2d_readdatavalid,
    input wire [0:0] avm_unnamed_avgpool2d2_avgpool2d_waitrequest,
    input wire [0:0] avm_unnamed_avgpool2d2_avgpool2d_writeack,
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
    input wire [127:0] kernel_arguments,
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
    output wire [30:0] avm_unnamed_avgpool2d1_avgpool2d_address,
    output wire [4:0] avm_unnamed_avgpool2d1_avgpool2d_burstcount,
    output wire [63:0] avm_unnamed_avgpool2d1_avgpool2d_byteenable,
    output wire [0:0] avm_unnamed_avgpool2d1_avgpool2d_enable,
    output wire [0:0] avm_unnamed_avgpool2d1_avgpool2d_read,
    output wire [0:0] avm_unnamed_avgpool2d1_avgpool2d_write,
    output wire [511:0] avm_unnamed_avgpool2d1_avgpool2d_writedata,
    output wire [30:0] avm_unnamed_avgpool2d2_avgpool2d_address,
    output wire [4:0] avm_unnamed_avgpool2d2_avgpool2d_burstcount,
    output wire [63:0] avm_unnamed_avgpool2d2_avgpool2d_byteenable,
    output wire [0:0] avm_unnamed_avgpool2d2_avgpool2d_enable,
    output wire [0:0] avm_unnamed_avgpool2d2_avgpool2d_read,
    output wire [0:0] avm_unnamed_avgpool2d2_avgpool2d_write,
    output wire [511:0] avm_unnamed_avgpool2d2_avgpool2d_writedata,
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
    wire [63:0] arg_input_im_select_b;
    wire [63:0] arg_output_im_select_b;
    wire [0:0] avgpool2d_function_out_o_active_unnamed_avgpool2d1;
    wire [0:0] avgpool2d_function_out_stall_out;
    wire [30:0] avgpool2d_function_out_unnamed_avgpool2d1_avgpool2d_avm_address;
    wire [4:0] avgpool2d_function_out_unnamed_avgpool2d1_avgpool2d_avm_burstcount;
    wire [63:0] avgpool2d_function_out_unnamed_avgpool2d1_avgpool2d_avm_byteenable;
    wire [0:0] avgpool2d_function_out_unnamed_avgpool2d1_avgpool2d_avm_enable;
    wire [0:0] avgpool2d_function_out_unnamed_avgpool2d1_avgpool2d_avm_read;
    wire [0:0] avgpool2d_function_out_unnamed_avgpool2d1_avgpool2d_avm_write;
    wire [511:0] avgpool2d_function_out_unnamed_avgpool2d1_avgpool2d_avm_writedata;
    wire [30:0] avgpool2d_function_out_unnamed_avgpool2d2_avgpool2d_avm_address;
    wire [4:0] avgpool2d_function_out_unnamed_avgpool2d2_avgpool2d_avm_burstcount;
    wire [63:0] avgpool2d_function_out_unnamed_avgpool2d2_avgpool2d_avm_byteenable;
    wire [0:0] avgpool2d_function_out_unnamed_avgpool2d2_avgpool2d_avm_enable;
    wire [0:0] avgpool2d_function_out_unnamed_avgpool2d2_avgpool2d_avm_read;
    wire [0:0] avgpool2d_function_out_unnamed_avgpool2d2_avgpool2d_avm_write;
    wire [511:0] avgpool2d_function_out_unnamed_avgpool2d2_avgpool2d_avm_writedata;
    wire [0:0] avgpool2d_function_out_valid_out;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // arg_output_im_select(BITSELECT,4)
    assign arg_output_im_select_b = kernel_arguments[127:64];

    // arg_input_im_select(BITSELECT,3)
    assign arg_input_im_select_b = kernel_arguments[63:0];

    // avgpool2d_function(BLACKBOX,5)
    avgpool2d_function theavgpool2d_function (
        .in_arg_acl_global_size_0(global_size_0),
        .in_arg_acl_global_size_1(global_size_1),
        .in_arg_acl_global_size_2(global_size_2),
        .in_arg_acl_local_size_0(local_size_0),
        .in_arg_acl_local_size_1(local_size_1),
        .in_arg_acl_local_size_2(local_size_2),
        .in_arg_input_im(arg_input_im_select_b),
        .in_arg_output_im(arg_output_im_select_b),
        .in_stall_in(GND_q),
        .in_start(start),
        .in_unnamed_avgpool2d1_avgpool2d_avm_readdata(avm_unnamed_avgpool2d1_avgpool2d_readdata),
        .in_unnamed_avgpool2d1_avgpool2d_avm_readdatavalid(avm_unnamed_avgpool2d1_avgpool2d_readdatavalid),
        .in_unnamed_avgpool2d1_avgpool2d_avm_waitrequest(avm_unnamed_avgpool2d1_avgpool2d_waitrequest),
        .in_unnamed_avgpool2d1_avgpool2d_avm_writeack(avm_unnamed_avgpool2d1_avgpool2d_writeack),
        .in_unnamed_avgpool2d2_avgpool2d_avm_readdata(avm_unnamed_avgpool2d2_avgpool2d_readdata),
        .in_unnamed_avgpool2d2_avgpool2d_avm_readdatavalid(avm_unnamed_avgpool2d2_avgpool2d_readdatavalid),
        .in_unnamed_avgpool2d2_avgpool2d_avm_waitrequest(avm_unnamed_avgpool2d2_avgpool2d_waitrequest),
        .in_unnamed_avgpool2d2_avgpool2d_avm_writeack(avm_unnamed_avgpool2d2_avgpool2d_writeack),
        .in_valid_in(kernel_valid_in),
        .out_o_active_unnamed_avgpool2d1(avgpool2d_function_out_o_active_unnamed_avgpool2d1),
        .out_stall_out(avgpool2d_function_out_stall_out),
        .out_unnamed_avgpool2d1_avgpool2d_avm_address(avgpool2d_function_out_unnamed_avgpool2d1_avgpool2d_avm_address),
        .out_unnamed_avgpool2d1_avgpool2d_avm_burstcount(avgpool2d_function_out_unnamed_avgpool2d1_avgpool2d_avm_burstcount),
        .out_unnamed_avgpool2d1_avgpool2d_avm_byteenable(avgpool2d_function_out_unnamed_avgpool2d1_avgpool2d_avm_byteenable),
        .out_unnamed_avgpool2d1_avgpool2d_avm_enable(avgpool2d_function_out_unnamed_avgpool2d1_avgpool2d_avm_enable),
        .out_unnamed_avgpool2d1_avgpool2d_avm_read(avgpool2d_function_out_unnamed_avgpool2d1_avgpool2d_avm_read),
        .out_unnamed_avgpool2d1_avgpool2d_avm_write(avgpool2d_function_out_unnamed_avgpool2d1_avgpool2d_avm_write),
        .out_unnamed_avgpool2d1_avgpool2d_avm_writedata(avgpool2d_function_out_unnamed_avgpool2d1_avgpool2d_avm_writedata),
        .out_unnamed_avgpool2d2_avgpool2d_avm_address(avgpool2d_function_out_unnamed_avgpool2d2_avgpool2d_avm_address),
        .out_unnamed_avgpool2d2_avgpool2d_avm_burstcount(avgpool2d_function_out_unnamed_avgpool2d2_avgpool2d_avm_burstcount),
        .out_unnamed_avgpool2d2_avgpool2d_avm_byteenable(avgpool2d_function_out_unnamed_avgpool2d2_avgpool2d_avm_byteenable),
        .out_unnamed_avgpool2d2_avgpool2d_avm_enable(avgpool2d_function_out_unnamed_avgpool2d2_avgpool2d_avm_enable),
        .out_unnamed_avgpool2d2_avgpool2d_avm_read(avgpool2d_function_out_unnamed_avgpool2d2_avgpool2d_avm_read),
        .out_unnamed_avgpool2d2_avgpool2d_avm_write(avgpool2d_function_out_unnamed_avgpool2d2_avgpool2d_avm_write),
        .out_unnamed_avgpool2d2_avgpool2d_avm_writedata(avgpool2d_function_out_unnamed_avgpool2d2_avgpool2d_avm_writedata),
        .out_valid_out(avgpool2d_function_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_unnamed_avgpool2d1_avgpool2d_address(GPOUT,48)
    assign avm_unnamed_avgpool2d1_avgpool2d_address = avgpool2d_function_out_unnamed_avgpool2d1_avgpool2d_avm_address;

    // avm_unnamed_avgpool2d1_avgpool2d_burstcount(GPOUT,49)
    assign avm_unnamed_avgpool2d1_avgpool2d_burstcount = avgpool2d_function_out_unnamed_avgpool2d1_avgpool2d_avm_burstcount;

    // avm_unnamed_avgpool2d1_avgpool2d_byteenable(GPOUT,50)
    assign avm_unnamed_avgpool2d1_avgpool2d_byteenable = avgpool2d_function_out_unnamed_avgpool2d1_avgpool2d_avm_byteenable;

    // avm_unnamed_avgpool2d1_avgpool2d_enable(GPOUT,51)
    assign avm_unnamed_avgpool2d1_avgpool2d_enable = avgpool2d_function_out_unnamed_avgpool2d1_avgpool2d_avm_enable;

    // avm_unnamed_avgpool2d1_avgpool2d_read(GPOUT,52)
    assign avm_unnamed_avgpool2d1_avgpool2d_read = avgpool2d_function_out_unnamed_avgpool2d1_avgpool2d_avm_read;

    // avm_unnamed_avgpool2d1_avgpool2d_write(GPOUT,53)
    assign avm_unnamed_avgpool2d1_avgpool2d_write = avgpool2d_function_out_unnamed_avgpool2d1_avgpool2d_avm_write;

    // avm_unnamed_avgpool2d1_avgpool2d_writedata(GPOUT,54)
    assign avm_unnamed_avgpool2d1_avgpool2d_writedata = avgpool2d_function_out_unnamed_avgpool2d1_avgpool2d_avm_writedata;

    // avm_unnamed_avgpool2d2_avgpool2d_address(GPOUT,55)
    assign avm_unnamed_avgpool2d2_avgpool2d_address = avgpool2d_function_out_unnamed_avgpool2d2_avgpool2d_avm_address;

    // avm_unnamed_avgpool2d2_avgpool2d_burstcount(GPOUT,56)
    assign avm_unnamed_avgpool2d2_avgpool2d_burstcount = avgpool2d_function_out_unnamed_avgpool2d2_avgpool2d_avm_burstcount;

    // avm_unnamed_avgpool2d2_avgpool2d_byteenable(GPOUT,57)
    assign avm_unnamed_avgpool2d2_avgpool2d_byteenable = avgpool2d_function_out_unnamed_avgpool2d2_avgpool2d_avm_byteenable;

    // avm_unnamed_avgpool2d2_avgpool2d_enable(GPOUT,58)
    assign avm_unnamed_avgpool2d2_avgpool2d_enable = avgpool2d_function_out_unnamed_avgpool2d2_avgpool2d_avm_enable;

    // avm_unnamed_avgpool2d2_avgpool2d_read(GPOUT,59)
    assign avm_unnamed_avgpool2d2_avgpool2d_read = avgpool2d_function_out_unnamed_avgpool2d2_avgpool2d_avm_read;

    // avm_unnamed_avgpool2d2_avgpool2d_write(GPOUT,60)
    assign avm_unnamed_avgpool2d2_avgpool2d_write = avgpool2d_function_out_unnamed_avgpool2d2_avgpool2d_avm_write;

    // avm_unnamed_avgpool2d2_avgpool2d_writedata(GPOUT,61)
    assign avm_unnamed_avgpool2d2_avgpool2d_writedata = avgpool2d_function_out_unnamed_avgpool2d2_avgpool2d_avm_writedata;

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

    // clock2x_output(GPOUT,62)
    assign clock2x_output = acl_clock2x_dummy_consumer_myout;

    // has_a_lsu_active(GPOUT,63)
    assign has_a_lsu_active = avgpool2d_function_out_o_active_unnamed_avgpool2d1;

    // has_a_write_pending(GPOUT,64)
    assign has_a_write_pending = avgpool2d_function_out_o_active_unnamed_avgpool2d1;

    // kernel_stall_out(GPOUT,65)
    assign kernel_stall_out = avgpool2d_function_out_stall_out;

    // kernel_valid_out(GPOUT,66)
    assign kernel_valid_out = avgpool2d_function_out_valid_out;

endmodule
