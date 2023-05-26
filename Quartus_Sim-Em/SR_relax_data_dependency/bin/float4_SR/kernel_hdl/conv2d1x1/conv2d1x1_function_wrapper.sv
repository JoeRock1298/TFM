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

// SystemVerilog created from conv2d1x1_function_wrapper
// SystemVerilog created on Tue May 23 20:43:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_function_wrapper (
    input wire [511:0] avm_lm177_conv2d1x1_readdata,
    input wire [0:0] avm_lm177_conv2d1x1_readdatavalid,
    input wire [0:0] avm_lm177_conv2d1x1_waitrequest,
    input wire [0:0] avm_lm177_conv2d1x1_writeack,
    input wire [511:0] avm_lm178_conv2d1x1_readdata,
    input wire [0:0] avm_lm178_conv2d1x1_readdatavalid,
    input wire [0:0] avm_lm178_conv2d1x1_waitrequest,
    input wire [0:0] avm_lm178_conv2d1x1_writeack,
    input wire [511:0] avm_lm70_conv2d1x1_readdata,
    input wire [0:0] avm_lm70_conv2d1x1_readdatavalid,
    input wire [0:0] avm_lm70_conv2d1x1_waitrequest,
    input wire [0:0] avm_lm70_conv2d1x1_writeack,
    input wire [511:0] avm_lm73_conv2d1x1_readdata,
    input wire [0:0] avm_lm73_conv2d1x1_readdatavalid,
    input wire [0:0] avm_lm73_conv2d1x1_waitrequest,
    input wire [0:0] avm_lm73_conv2d1x1_writeack,
    input wire [511:0] avm_lm96_conv2d1x1_readdata,
    input wire [0:0] avm_lm96_conv2d1x1_readdatavalid,
    input wire [0:0] avm_lm96_conv2d1x1_waitrequest,
    input wire [0:0] avm_lm96_conv2d1x1_writeack,
    input wire [511:0] avm_lm_conv2d1x1_readdata,
    input wire [0:0] avm_lm_conv2d1x1_readdatavalid,
    input wire [0:0] avm_lm_conv2d1x1_waitrequest,
    input wire [0:0] avm_lm_conv2d1x1_writeack,
    input wire [511:0] avm_unnamed_conv2d1x113_conv2d1x1_readdata,
    input wire [0:0] avm_unnamed_conv2d1x113_conv2d1x1_readdatavalid,
    input wire [0:0] avm_unnamed_conv2d1x113_conv2d1x1_waitrequest,
    input wire [0:0] avm_unnamed_conv2d1x113_conv2d1x1_writeack,
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
    input wire [351:0] kernel_arguments,
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
    output wire [30:0] avm_lm177_conv2d1x1_address,
    output wire [4:0] avm_lm177_conv2d1x1_burstcount,
    output wire [63:0] avm_lm177_conv2d1x1_byteenable,
    output wire [0:0] avm_lm177_conv2d1x1_enable,
    output wire [0:0] avm_lm177_conv2d1x1_read,
    output wire [0:0] avm_lm177_conv2d1x1_write,
    output wire [511:0] avm_lm177_conv2d1x1_writedata,
    output wire [30:0] avm_lm178_conv2d1x1_address,
    output wire [4:0] avm_lm178_conv2d1x1_burstcount,
    output wire [63:0] avm_lm178_conv2d1x1_byteenable,
    output wire [0:0] avm_lm178_conv2d1x1_enable,
    output wire [0:0] avm_lm178_conv2d1x1_read,
    output wire [0:0] avm_lm178_conv2d1x1_write,
    output wire [511:0] avm_lm178_conv2d1x1_writedata,
    output wire [30:0] avm_lm70_conv2d1x1_address,
    output wire [4:0] avm_lm70_conv2d1x1_burstcount,
    output wire [63:0] avm_lm70_conv2d1x1_byteenable,
    output wire [0:0] avm_lm70_conv2d1x1_enable,
    output wire [0:0] avm_lm70_conv2d1x1_read,
    output wire [0:0] avm_lm70_conv2d1x1_write,
    output wire [511:0] avm_lm70_conv2d1x1_writedata,
    output wire [30:0] avm_lm73_conv2d1x1_address,
    output wire [4:0] avm_lm73_conv2d1x1_burstcount,
    output wire [63:0] avm_lm73_conv2d1x1_byteenable,
    output wire [0:0] avm_lm73_conv2d1x1_enable,
    output wire [0:0] avm_lm73_conv2d1x1_read,
    output wire [0:0] avm_lm73_conv2d1x1_write,
    output wire [511:0] avm_lm73_conv2d1x1_writedata,
    output wire [30:0] avm_lm96_conv2d1x1_address,
    output wire [4:0] avm_lm96_conv2d1x1_burstcount,
    output wire [63:0] avm_lm96_conv2d1x1_byteenable,
    output wire [0:0] avm_lm96_conv2d1x1_enable,
    output wire [0:0] avm_lm96_conv2d1x1_read,
    output wire [0:0] avm_lm96_conv2d1x1_write,
    output wire [511:0] avm_lm96_conv2d1x1_writedata,
    output wire [30:0] avm_lm_conv2d1x1_address,
    output wire [4:0] avm_lm_conv2d1x1_burstcount,
    output wire [63:0] avm_lm_conv2d1x1_byteenable,
    output wire [0:0] avm_lm_conv2d1x1_enable,
    output wire [0:0] avm_lm_conv2d1x1_read,
    output wire [0:0] avm_lm_conv2d1x1_write,
    output wire [511:0] avm_lm_conv2d1x1_writedata,
    output wire [30:0] avm_unnamed_conv2d1x113_conv2d1x1_address,
    output wire [4:0] avm_unnamed_conv2d1x113_conv2d1x1_burstcount,
    output wire [63:0] avm_unnamed_conv2d1x113_conv2d1x1_byteenable,
    output wire [0:0] avm_unnamed_conv2d1x113_conv2d1x1_enable,
    output wire [0:0] avm_unnamed_conv2d1x113_conv2d1x1_read,
    output wire [0:0] avm_unnamed_conv2d1x113_conv2d1x1_write,
    output wire [511:0] avm_unnamed_conv2d1x113_conv2d1x1_writedata,
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
    wire [63:0] arg_filter_bias_select_b;
    wire [31:0] arg_filter_size_select_b;
    wire [63:0] arg_filter_weight_select_b;
    wire [31:0] arg_input_channels_select_b;
    wire [63:0] arg_input_im_select_b;
    wire [31:0] arg_input_size_select_b;
    wire [63:0] arg_output_im_select_b;
    wire [30:0] conv2d1x1_function_out_lm177_conv2d1x1_avm_address;
    wire [4:0] conv2d1x1_function_out_lm177_conv2d1x1_avm_burstcount;
    wire [63:0] conv2d1x1_function_out_lm177_conv2d1x1_avm_byteenable;
    wire [0:0] conv2d1x1_function_out_lm177_conv2d1x1_avm_enable;
    wire [0:0] conv2d1x1_function_out_lm177_conv2d1x1_avm_read;
    wire [0:0] conv2d1x1_function_out_lm177_conv2d1x1_avm_write;
    wire [511:0] conv2d1x1_function_out_lm177_conv2d1x1_avm_writedata;
    wire [30:0] conv2d1x1_function_out_lm178_conv2d1x1_avm_address;
    wire [4:0] conv2d1x1_function_out_lm178_conv2d1x1_avm_burstcount;
    wire [63:0] conv2d1x1_function_out_lm178_conv2d1x1_avm_byteenable;
    wire [0:0] conv2d1x1_function_out_lm178_conv2d1x1_avm_enable;
    wire [0:0] conv2d1x1_function_out_lm178_conv2d1x1_avm_read;
    wire [0:0] conv2d1x1_function_out_lm178_conv2d1x1_avm_write;
    wire [511:0] conv2d1x1_function_out_lm178_conv2d1x1_avm_writedata;
    wire [30:0] conv2d1x1_function_out_lm70_conv2d1x1_avm_address;
    wire [4:0] conv2d1x1_function_out_lm70_conv2d1x1_avm_burstcount;
    wire [63:0] conv2d1x1_function_out_lm70_conv2d1x1_avm_byteenable;
    wire [0:0] conv2d1x1_function_out_lm70_conv2d1x1_avm_enable;
    wire [0:0] conv2d1x1_function_out_lm70_conv2d1x1_avm_read;
    wire [0:0] conv2d1x1_function_out_lm70_conv2d1x1_avm_write;
    wire [511:0] conv2d1x1_function_out_lm70_conv2d1x1_avm_writedata;
    wire [30:0] conv2d1x1_function_out_lm73_conv2d1x1_avm_address;
    wire [4:0] conv2d1x1_function_out_lm73_conv2d1x1_avm_burstcount;
    wire [63:0] conv2d1x1_function_out_lm73_conv2d1x1_avm_byteenable;
    wire [0:0] conv2d1x1_function_out_lm73_conv2d1x1_avm_enable;
    wire [0:0] conv2d1x1_function_out_lm73_conv2d1x1_avm_read;
    wire [0:0] conv2d1x1_function_out_lm73_conv2d1x1_avm_write;
    wire [511:0] conv2d1x1_function_out_lm73_conv2d1x1_avm_writedata;
    wire [30:0] conv2d1x1_function_out_lm96_conv2d1x1_avm_address;
    wire [4:0] conv2d1x1_function_out_lm96_conv2d1x1_avm_burstcount;
    wire [63:0] conv2d1x1_function_out_lm96_conv2d1x1_avm_byteenable;
    wire [0:0] conv2d1x1_function_out_lm96_conv2d1x1_avm_enable;
    wire [0:0] conv2d1x1_function_out_lm96_conv2d1x1_avm_read;
    wire [0:0] conv2d1x1_function_out_lm96_conv2d1x1_avm_write;
    wire [511:0] conv2d1x1_function_out_lm96_conv2d1x1_avm_writedata;
    wire [30:0] conv2d1x1_function_out_lm_conv2d1x1_avm_address;
    wire [4:0] conv2d1x1_function_out_lm_conv2d1x1_avm_burstcount;
    wire [63:0] conv2d1x1_function_out_lm_conv2d1x1_avm_byteenable;
    wire [0:0] conv2d1x1_function_out_lm_conv2d1x1_avm_enable;
    wire [0:0] conv2d1x1_function_out_lm_conv2d1x1_avm_read;
    wire [0:0] conv2d1x1_function_out_lm_conv2d1x1_avm_write;
    wire [511:0] conv2d1x1_function_out_lm_conv2d1x1_avm_writedata;
    wire [0:0] conv2d1x1_function_out_o_active_unnamed_conv2d1x113;
    wire [0:0] conv2d1x1_function_out_stall_out;
    wire [30:0] conv2d1x1_function_out_unnamed_conv2d1x113_conv2d1x1_avm_address;
    wire [4:0] conv2d1x1_function_out_unnamed_conv2d1x113_conv2d1x1_avm_burstcount;
    wire [63:0] conv2d1x1_function_out_unnamed_conv2d1x113_conv2d1x1_avm_byteenable;
    wire [0:0] conv2d1x1_function_out_unnamed_conv2d1x113_conv2d1x1_avm_enable;
    wire [0:0] conv2d1x1_function_out_unnamed_conv2d1x113_conv2d1x1_avm_read;
    wire [0:0] conv2d1x1_function_out_unnamed_conv2d1x113_conv2d1x1_avm_write;
    wire [511:0] conv2d1x1_function_out_unnamed_conv2d1x113_conv2d1x1_avm_writedata;
    wire [0:0] conv2d1x1_function_out_valid_out;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // arg_output_im_select(BITSELECT,9)
    assign arg_output_im_select_b = kernel_arguments[351:288];

    // arg_input_size_select(BITSELECT,8)
    assign arg_input_size_select_b = kernel_arguments[63:32];

    // arg_input_im_select(BITSELECT,7)
    assign arg_input_im_select_b = kernel_arguments[159:96];

    // arg_input_channels_select(BITSELECT,6)
    assign arg_input_channels_select_b = kernel_arguments[31:0];

    // arg_filter_weight_select(BITSELECT,5)
    assign arg_filter_weight_select_b = kernel_arguments[223:160];

    // arg_filter_size_select(BITSELECT,4)
    assign arg_filter_size_select_b = kernel_arguments[95:64];

    // arg_filter_bias_select(BITSELECT,3)
    assign arg_filter_bias_select_b = kernel_arguments[287:224];

    // conv2d1x1_function(BLACKBOX,11)
    conv2d1x1_function theconv2d1x1_function (
        .in_arg_acl_global_size_0(global_size_0),
        .in_arg_acl_global_size_1(global_size_1),
        .in_arg_acl_global_size_2(global_size_2),
        .in_arg_acl_local_size_0(local_size_0),
        .in_arg_acl_local_size_1(local_size_1),
        .in_arg_acl_local_size_2(local_size_2),
        .in_arg_filter_bias(arg_filter_bias_select_b),
        .in_arg_filter_size(arg_filter_size_select_b),
        .in_arg_filter_weight(arg_filter_weight_select_b),
        .in_arg_input_channels(arg_input_channels_select_b),
        .in_arg_input_im(arg_input_im_select_b),
        .in_arg_input_size(arg_input_size_select_b),
        .in_arg_output_im(arg_output_im_select_b),
        .in_lm177_conv2d1x1_avm_readdata(avm_lm177_conv2d1x1_readdata),
        .in_lm177_conv2d1x1_avm_readdatavalid(avm_lm177_conv2d1x1_readdatavalid),
        .in_lm177_conv2d1x1_avm_waitrequest(avm_lm177_conv2d1x1_waitrequest),
        .in_lm177_conv2d1x1_avm_writeack(avm_lm177_conv2d1x1_writeack),
        .in_lm178_conv2d1x1_avm_readdata(avm_lm178_conv2d1x1_readdata),
        .in_lm178_conv2d1x1_avm_readdatavalid(avm_lm178_conv2d1x1_readdatavalid),
        .in_lm178_conv2d1x1_avm_waitrequest(avm_lm178_conv2d1x1_waitrequest),
        .in_lm178_conv2d1x1_avm_writeack(avm_lm178_conv2d1x1_writeack),
        .in_lm70_conv2d1x1_avm_readdata(avm_lm70_conv2d1x1_readdata),
        .in_lm70_conv2d1x1_avm_readdatavalid(avm_lm70_conv2d1x1_readdatavalid),
        .in_lm70_conv2d1x1_avm_waitrequest(avm_lm70_conv2d1x1_waitrequest),
        .in_lm70_conv2d1x1_avm_writeack(avm_lm70_conv2d1x1_writeack),
        .in_lm73_conv2d1x1_avm_readdata(avm_lm73_conv2d1x1_readdata),
        .in_lm73_conv2d1x1_avm_readdatavalid(avm_lm73_conv2d1x1_readdatavalid),
        .in_lm73_conv2d1x1_avm_waitrequest(avm_lm73_conv2d1x1_waitrequest),
        .in_lm73_conv2d1x1_avm_writeack(avm_lm73_conv2d1x1_writeack),
        .in_lm96_conv2d1x1_avm_readdata(avm_lm96_conv2d1x1_readdata),
        .in_lm96_conv2d1x1_avm_readdatavalid(avm_lm96_conv2d1x1_readdatavalid),
        .in_lm96_conv2d1x1_avm_waitrequest(avm_lm96_conv2d1x1_waitrequest),
        .in_lm96_conv2d1x1_avm_writeack(avm_lm96_conv2d1x1_writeack),
        .in_lm_conv2d1x1_avm_readdata(avm_lm_conv2d1x1_readdata),
        .in_lm_conv2d1x1_avm_readdatavalid(avm_lm_conv2d1x1_readdatavalid),
        .in_lm_conv2d1x1_avm_waitrequest(avm_lm_conv2d1x1_waitrequest),
        .in_lm_conv2d1x1_avm_writeack(avm_lm_conv2d1x1_writeack),
        .in_stall_in(GND_q),
        .in_start(start),
        .in_unnamed_conv2d1x113_conv2d1x1_avm_readdata(avm_unnamed_conv2d1x113_conv2d1x1_readdata),
        .in_unnamed_conv2d1x113_conv2d1x1_avm_readdatavalid(avm_unnamed_conv2d1x113_conv2d1x1_readdatavalid),
        .in_unnamed_conv2d1x113_conv2d1x1_avm_waitrequest(avm_unnamed_conv2d1x113_conv2d1x1_waitrequest),
        .in_unnamed_conv2d1x113_conv2d1x1_avm_writeack(avm_unnamed_conv2d1x113_conv2d1x1_writeack),
        .in_valid_in(kernel_valid_in),
        .out_lm177_conv2d1x1_avm_address(conv2d1x1_function_out_lm177_conv2d1x1_avm_address),
        .out_lm177_conv2d1x1_avm_burstcount(conv2d1x1_function_out_lm177_conv2d1x1_avm_burstcount),
        .out_lm177_conv2d1x1_avm_byteenable(conv2d1x1_function_out_lm177_conv2d1x1_avm_byteenable),
        .out_lm177_conv2d1x1_avm_enable(conv2d1x1_function_out_lm177_conv2d1x1_avm_enable),
        .out_lm177_conv2d1x1_avm_read(conv2d1x1_function_out_lm177_conv2d1x1_avm_read),
        .out_lm177_conv2d1x1_avm_write(conv2d1x1_function_out_lm177_conv2d1x1_avm_write),
        .out_lm177_conv2d1x1_avm_writedata(conv2d1x1_function_out_lm177_conv2d1x1_avm_writedata),
        .out_lm178_conv2d1x1_avm_address(conv2d1x1_function_out_lm178_conv2d1x1_avm_address),
        .out_lm178_conv2d1x1_avm_burstcount(conv2d1x1_function_out_lm178_conv2d1x1_avm_burstcount),
        .out_lm178_conv2d1x1_avm_byteenable(conv2d1x1_function_out_lm178_conv2d1x1_avm_byteenable),
        .out_lm178_conv2d1x1_avm_enable(conv2d1x1_function_out_lm178_conv2d1x1_avm_enable),
        .out_lm178_conv2d1x1_avm_read(conv2d1x1_function_out_lm178_conv2d1x1_avm_read),
        .out_lm178_conv2d1x1_avm_write(conv2d1x1_function_out_lm178_conv2d1x1_avm_write),
        .out_lm178_conv2d1x1_avm_writedata(conv2d1x1_function_out_lm178_conv2d1x1_avm_writedata),
        .out_lm70_conv2d1x1_avm_address(conv2d1x1_function_out_lm70_conv2d1x1_avm_address),
        .out_lm70_conv2d1x1_avm_burstcount(conv2d1x1_function_out_lm70_conv2d1x1_avm_burstcount),
        .out_lm70_conv2d1x1_avm_byteenable(conv2d1x1_function_out_lm70_conv2d1x1_avm_byteenable),
        .out_lm70_conv2d1x1_avm_enable(conv2d1x1_function_out_lm70_conv2d1x1_avm_enable),
        .out_lm70_conv2d1x1_avm_read(conv2d1x1_function_out_lm70_conv2d1x1_avm_read),
        .out_lm70_conv2d1x1_avm_write(conv2d1x1_function_out_lm70_conv2d1x1_avm_write),
        .out_lm70_conv2d1x1_avm_writedata(conv2d1x1_function_out_lm70_conv2d1x1_avm_writedata),
        .out_lm73_conv2d1x1_avm_address(conv2d1x1_function_out_lm73_conv2d1x1_avm_address),
        .out_lm73_conv2d1x1_avm_burstcount(conv2d1x1_function_out_lm73_conv2d1x1_avm_burstcount),
        .out_lm73_conv2d1x1_avm_byteenable(conv2d1x1_function_out_lm73_conv2d1x1_avm_byteenable),
        .out_lm73_conv2d1x1_avm_enable(conv2d1x1_function_out_lm73_conv2d1x1_avm_enable),
        .out_lm73_conv2d1x1_avm_read(conv2d1x1_function_out_lm73_conv2d1x1_avm_read),
        .out_lm73_conv2d1x1_avm_write(conv2d1x1_function_out_lm73_conv2d1x1_avm_write),
        .out_lm73_conv2d1x1_avm_writedata(conv2d1x1_function_out_lm73_conv2d1x1_avm_writedata),
        .out_lm96_conv2d1x1_avm_address(conv2d1x1_function_out_lm96_conv2d1x1_avm_address),
        .out_lm96_conv2d1x1_avm_burstcount(conv2d1x1_function_out_lm96_conv2d1x1_avm_burstcount),
        .out_lm96_conv2d1x1_avm_byteenable(conv2d1x1_function_out_lm96_conv2d1x1_avm_byteenable),
        .out_lm96_conv2d1x1_avm_enable(conv2d1x1_function_out_lm96_conv2d1x1_avm_enable),
        .out_lm96_conv2d1x1_avm_read(conv2d1x1_function_out_lm96_conv2d1x1_avm_read),
        .out_lm96_conv2d1x1_avm_write(conv2d1x1_function_out_lm96_conv2d1x1_avm_write),
        .out_lm96_conv2d1x1_avm_writedata(conv2d1x1_function_out_lm96_conv2d1x1_avm_writedata),
        .out_lm_conv2d1x1_avm_address(conv2d1x1_function_out_lm_conv2d1x1_avm_address),
        .out_lm_conv2d1x1_avm_burstcount(conv2d1x1_function_out_lm_conv2d1x1_avm_burstcount),
        .out_lm_conv2d1x1_avm_byteenable(conv2d1x1_function_out_lm_conv2d1x1_avm_byteenable),
        .out_lm_conv2d1x1_avm_enable(conv2d1x1_function_out_lm_conv2d1x1_avm_enable),
        .out_lm_conv2d1x1_avm_read(conv2d1x1_function_out_lm_conv2d1x1_avm_read),
        .out_lm_conv2d1x1_avm_write(conv2d1x1_function_out_lm_conv2d1x1_avm_write),
        .out_lm_conv2d1x1_avm_writedata(conv2d1x1_function_out_lm_conv2d1x1_avm_writedata),
        .out_o_active_unnamed_conv2d1x113(conv2d1x1_function_out_o_active_unnamed_conv2d1x113),
        .out_stall_out(conv2d1x1_function_out_stall_out),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_address(conv2d1x1_function_out_unnamed_conv2d1x113_conv2d1x1_avm_address),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_burstcount(conv2d1x1_function_out_unnamed_conv2d1x113_conv2d1x1_avm_burstcount),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_byteenable(conv2d1x1_function_out_unnamed_conv2d1x113_conv2d1x1_avm_byteenable),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_enable(conv2d1x1_function_out_unnamed_conv2d1x113_conv2d1x1_avm_enable),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_read(conv2d1x1_function_out_unnamed_conv2d1x113_conv2d1x1_avm_read),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_write(conv2d1x1_function_out_unnamed_conv2d1x113_conv2d1x1_avm_write),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_writedata(conv2d1x1_function_out_unnamed_conv2d1x113_conv2d1x1_avm_writedata),
        .out_valid_out(conv2d1x1_function_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm177_conv2d1x1_address(GPOUT,78)
    assign avm_lm177_conv2d1x1_address = conv2d1x1_function_out_lm177_conv2d1x1_avm_address;

    // avm_lm177_conv2d1x1_burstcount(GPOUT,79)
    assign avm_lm177_conv2d1x1_burstcount = conv2d1x1_function_out_lm177_conv2d1x1_avm_burstcount;

    // avm_lm177_conv2d1x1_byteenable(GPOUT,80)
    assign avm_lm177_conv2d1x1_byteenable = conv2d1x1_function_out_lm177_conv2d1x1_avm_byteenable;

    // avm_lm177_conv2d1x1_enable(GPOUT,81)
    assign avm_lm177_conv2d1x1_enable = conv2d1x1_function_out_lm177_conv2d1x1_avm_enable;

    // avm_lm177_conv2d1x1_read(GPOUT,82)
    assign avm_lm177_conv2d1x1_read = conv2d1x1_function_out_lm177_conv2d1x1_avm_read;

    // avm_lm177_conv2d1x1_write(GPOUT,83)
    assign avm_lm177_conv2d1x1_write = conv2d1x1_function_out_lm177_conv2d1x1_avm_write;

    // avm_lm177_conv2d1x1_writedata(GPOUT,84)
    assign avm_lm177_conv2d1x1_writedata = conv2d1x1_function_out_lm177_conv2d1x1_avm_writedata;

    // avm_lm178_conv2d1x1_address(GPOUT,85)
    assign avm_lm178_conv2d1x1_address = conv2d1x1_function_out_lm178_conv2d1x1_avm_address;

    // avm_lm178_conv2d1x1_burstcount(GPOUT,86)
    assign avm_lm178_conv2d1x1_burstcount = conv2d1x1_function_out_lm178_conv2d1x1_avm_burstcount;

    // avm_lm178_conv2d1x1_byteenable(GPOUT,87)
    assign avm_lm178_conv2d1x1_byteenable = conv2d1x1_function_out_lm178_conv2d1x1_avm_byteenable;

    // avm_lm178_conv2d1x1_enable(GPOUT,88)
    assign avm_lm178_conv2d1x1_enable = conv2d1x1_function_out_lm178_conv2d1x1_avm_enable;

    // avm_lm178_conv2d1x1_read(GPOUT,89)
    assign avm_lm178_conv2d1x1_read = conv2d1x1_function_out_lm178_conv2d1x1_avm_read;

    // avm_lm178_conv2d1x1_write(GPOUT,90)
    assign avm_lm178_conv2d1x1_write = conv2d1x1_function_out_lm178_conv2d1x1_avm_write;

    // avm_lm178_conv2d1x1_writedata(GPOUT,91)
    assign avm_lm178_conv2d1x1_writedata = conv2d1x1_function_out_lm178_conv2d1x1_avm_writedata;

    // avm_lm70_conv2d1x1_address(GPOUT,92)
    assign avm_lm70_conv2d1x1_address = conv2d1x1_function_out_lm70_conv2d1x1_avm_address;

    // avm_lm70_conv2d1x1_burstcount(GPOUT,93)
    assign avm_lm70_conv2d1x1_burstcount = conv2d1x1_function_out_lm70_conv2d1x1_avm_burstcount;

    // avm_lm70_conv2d1x1_byteenable(GPOUT,94)
    assign avm_lm70_conv2d1x1_byteenable = conv2d1x1_function_out_lm70_conv2d1x1_avm_byteenable;

    // avm_lm70_conv2d1x1_enable(GPOUT,95)
    assign avm_lm70_conv2d1x1_enable = conv2d1x1_function_out_lm70_conv2d1x1_avm_enable;

    // avm_lm70_conv2d1x1_read(GPOUT,96)
    assign avm_lm70_conv2d1x1_read = conv2d1x1_function_out_lm70_conv2d1x1_avm_read;

    // avm_lm70_conv2d1x1_write(GPOUT,97)
    assign avm_lm70_conv2d1x1_write = conv2d1x1_function_out_lm70_conv2d1x1_avm_write;

    // avm_lm70_conv2d1x1_writedata(GPOUT,98)
    assign avm_lm70_conv2d1x1_writedata = conv2d1x1_function_out_lm70_conv2d1x1_avm_writedata;

    // avm_lm73_conv2d1x1_address(GPOUT,99)
    assign avm_lm73_conv2d1x1_address = conv2d1x1_function_out_lm73_conv2d1x1_avm_address;

    // avm_lm73_conv2d1x1_burstcount(GPOUT,100)
    assign avm_lm73_conv2d1x1_burstcount = conv2d1x1_function_out_lm73_conv2d1x1_avm_burstcount;

    // avm_lm73_conv2d1x1_byteenable(GPOUT,101)
    assign avm_lm73_conv2d1x1_byteenable = conv2d1x1_function_out_lm73_conv2d1x1_avm_byteenable;

    // avm_lm73_conv2d1x1_enable(GPOUT,102)
    assign avm_lm73_conv2d1x1_enable = conv2d1x1_function_out_lm73_conv2d1x1_avm_enable;

    // avm_lm73_conv2d1x1_read(GPOUT,103)
    assign avm_lm73_conv2d1x1_read = conv2d1x1_function_out_lm73_conv2d1x1_avm_read;

    // avm_lm73_conv2d1x1_write(GPOUT,104)
    assign avm_lm73_conv2d1x1_write = conv2d1x1_function_out_lm73_conv2d1x1_avm_write;

    // avm_lm73_conv2d1x1_writedata(GPOUT,105)
    assign avm_lm73_conv2d1x1_writedata = conv2d1x1_function_out_lm73_conv2d1x1_avm_writedata;

    // avm_lm96_conv2d1x1_address(GPOUT,106)
    assign avm_lm96_conv2d1x1_address = conv2d1x1_function_out_lm96_conv2d1x1_avm_address;

    // avm_lm96_conv2d1x1_burstcount(GPOUT,107)
    assign avm_lm96_conv2d1x1_burstcount = conv2d1x1_function_out_lm96_conv2d1x1_avm_burstcount;

    // avm_lm96_conv2d1x1_byteenable(GPOUT,108)
    assign avm_lm96_conv2d1x1_byteenable = conv2d1x1_function_out_lm96_conv2d1x1_avm_byteenable;

    // avm_lm96_conv2d1x1_enable(GPOUT,109)
    assign avm_lm96_conv2d1x1_enable = conv2d1x1_function_out_lm96_conv2d1x1_avm_enable;

    // avm_lm96_conv2d1x1_read(GPOUT,110)
    assign avm_lm96_conv2d1x1_read = conv2d1x1_function_out_lm96_conv2d1x1_avm_read;

    // avm_lm96_conv2d1x1_write(GPOUT,111)
    assign avm_lm96_conv2d1x1_write = conv2d1x1_function_out_lm96_conv2d1x1_avm_write;

    // avm_lm96_conv2d1x1_writedata(GPOUT,112)
    assign avm_lm96_conv2d1x1_writedata = conv2d1x1_function_out_lm96_conv2d1x1_avm_writedata;

    // avm_lm_conv2d1x1_address(GPOUT,113)
    assign avm_lm_conv2d1x1_address = conv2d1x1_function_out_lm_conv2d1x1_avm_address;

    // avm_lm_conv2d1x1_burstcount(GPOUT,114)
    assign avm_lm_conv2d1x1_burstcount = conv2d1x1_function_out_lm_conv2d1x1_avm_burstcount;

    // avm_lm_conv2d1x1_byteenable(GPOUT,115)
    assign avm_lm_conv2d1x1_byteenable = conv2d1x1_function_out_lm_conv2d1x1_avm_byteenable;

    // avm_lm_conv2d1x1_enable(GPOUT,116)
    assign avm_lm_conv2d1x1_enable = conv2d1x1_function_out_lm_conv2d1x1_avm_enable;

    // avm_lm_conv2d1x1_read(GPOUT,117)
    assign avm_lm_conv2d1x1_read = conv2d1x1_function_out_lm_conv2d1x1_avm_read;

    // avm_lm_conv2d1x1_write(GPOUT,118)
    assign avm_lm_conv2d1x1_write = conv2d1x1_function_out_lm_conv2d1x1_avm_write;

    // avm_lm_conv2d1x1_writedata(GPOUT,119)
    assign avm_lm_conv2d1x1_writedata = conv2d1x1_function_out_lm_conv2d1x1_avm_writedata;

    // avm_unnamed_conv2d1x113_conv2d1x1_address(GPOUT,120)
    assign avm_unnamed_conv2d1x113_conv2d1x1_address = conv2d1x1_function_out_unnamed_conv2d1x113_conv2d1x1_avm_address;

    // avm_unnamed_conv2d1x113_conv2d1x1_burstcount(GPOUT,121)
    assign avm_unnamed_conv2d1x113_conv2d1x1_burstcount = conv2d1x1_function_out_unnamed_conv2d1x113_conv2d1x1_avm_burstcount;

    // avm_unnamed_conv2d1x113_conv2d1x1_byteenable(GPOUT,122)
    assign avm_unnamed_conv2d1x113_conv2d1x1_byteenable = conv2d1x1_function_out_unnamed_conv2d1x113_conv2d1x1_avm_byteenable;

    // avm_unnamed_conv2d1x113_conv2d1x1_enable(GPOUT,123)
    assign avm_unnamed_conv2d1x113_conv2d1x1_enable = conv2d1x1_function_out_unnamed_conv2d1x113_conv2d1x1_avm_enable;

    // avm_unnamed_conv2d1x113_conv2d1x1_read(GPOUT,124)
    assign avm_unnamed_conv2d1x113_conv2d1x1_read = conv2d1x1_function_out_unnamed_conv2d1x113_conv2d1x1_avm_read;

    // avm_unnamed_conv2d1x113_conv2d1x1_write(GPOUT,125)
    assign avm_unnamed_conv2d1x113_conv2d1x1_write = conv2d1x1_function_out_unnamed_conv2d1x113_conv2d1x1_avm_write;

    // avm_unnamed_conv2d1x113_conv2d1x1_writedata(GPOUT,126)
    assign avm_unnamed_conv2d1x113_conv2d1x1_writedata = conv2d1x1_function_out_unnamed_conv2d1x113_conv2d1x1_avm_writedata;

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

    // clock2x_output(GPOUT,127)
    assign clock2x_output = acl_clock2x_dummy_consumer_myout;

    // has_a_lsu_active(GPOUT,128)
    assign has_a_lsu_active = conv2d1x1_function_out_o_active_unnamed_conv2d1x113;

    // has_a_write_pending(GPOUT,129)
    assign has_a_write_pending = conv2d1x1_function_out_o_active_unnamed_conv2d1x113;

    // kernel_stall_out(GPOUT,130)
    assign kernel_stall_out = conv2d1x1_function_out_stall_out;

    // kernel_valid_out(GPOUT,131)
    assign kernel_valid_out = conv2d1x1_function_out_valid_out;

endmodule
