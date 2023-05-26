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
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_function_wrapper (
    input wire [511:0] avm_lm220_conv2d1x1_readdata,
    input wire [0:0] avm_lm220_conv2d1x1_readdatavalid,
    input wire [0:0] avm_lm220_conv2d1x1_waitrequest,
    input wire [0:0] avm_lm220_conv2d1x1_writeack,
    input wire [511:0] avm_lm222_conv2d1x1_readdata,
    input wire [0:0] avm_lm222_conv2d1x1_readdatavalid,
    input wire [0:0] avm_lm222_conv2d1x1_waitrequest,
    input wire [0:0] avm_lm222_conv2d1x1_writeack,
    input wire [511:0] avm_lm223_conv2d1x1_readdata,
    input wire [0:0] avm_lm223_conv2d1x1_readdatavalid,
    input wire [0:0] avm_lm223_conv2d1x1_waitrequest,
    input wire [0:0] avm_lm223_conv2d1x1_writeack,
    input wire [511:0] avm_lm225_conv2d1x1_readdata,
    input wire [0:0] avm_lm225_conv2d1x1_readdatavalid,
    input wire [0:0] avm_lm225_conv2d1x1_waitrequest,
    input wire [0:0] avm_lm225_conv2d1x1_writeack,
    input wire [511:0] avm_lm227_conv2d1x1_readdata,
    input wire [0:0] avm_lm227_conv2d1x1_readdatavalid,
    input wire [0:0] avm_lm227_conv2d1x1_waitrequest,
    input wire [0:0] avm_lm227_conv2d1x1_writeack,
    input wire [511:0] avm_lm229_conv2d1x1_readdata,
    input wire [0:0] avm_lm229_conv2d1x1_readdatavalid,
    input wire [0:0] avm_lm229_conv2d1x1_waitrequest,
    input wire [0:0] avm_lm229_conv2d1x1_writeack,
    input wire [511:0] avm_lm231_conv2d1x1_readdata,
    input wire [0:0] avm_lm231_conv2d1x1_readdatavalid,
    input wire [0:0] avm_lm231_conv2d1x1_waitrequest,
    input wire [0:0] avm_lm231_conv2d1x1_writeack,
    input wire [511:0] avm_lm233_conv2d1x1_readdata,
    input wire [0:0] avm_lm233_conv2d1x1_readdatavalid,
    input wire [0:0] avm_lm233_conv2d1x1_waitrequest,
    input wire [0:0] avm_lm233_conv2d1x1_writeack,
    input wire [511:0] avm_lm235_conv2d1x1_readdata,
    input wire [0:0] avm_lm235_conv2d1x1_readdatavalid,
    input wire [0:0] avm_lm235_conv2d1x1_waitrequest,
    input wire [0:0] avm_lm235_conv2d1x1_writeack,
    input wire [511:0] avm_lm_conv2d1x1_readdata,
    input wire [0:0] avm_lm_conv2d1x1_readdatavalid,
    input wire [0:0] avm_lm_conv2d1x1_waitrequest,
    input wire [0:0] avm_lm_conv2d1x1_writeack,
    input wire [1023:0] avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_readdata,
    input wire [0:0] avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_waitrequest,
    input wire [0:0] avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_writeack,
    input wire [1023:0] avm_memdep_13_conv2d1x1_readdata,
    input wire [0:0] avm_memdep_13_conv2d1x1_readdatavalid,
    input wire [0:0] avm_memdep_13_conv2d1x1_waitrequest,
    input wire [0:0] avm_memdep_13_conv2d1x1_writeack,
    input wire [1023:0] avm_unnamed_conv2d1x115_conv2d1x1_readdata,
    input wire [0:0] avm_unnamed_conv2d1x115_conv2d1x1_readdatavalid,
    input wire [0:0] avm_unnamed_conv2d1x115_conv2d1x1_waitrequest,
    input wire [0:0] avm_unnamed_conv2d1x115_conv2d1x1_writeack,
    input wire [511:0] avm_unnamed_conv2d1x116_conv2d1x1_readdata,
    input wire [0:0] avm_unnamed_conv2d1x116_conv2d1x1_readdatavalid,
    input wire [0:0] avm_unnamed_conv2d1x116_conv2d1x1_waitrequest,
    input wire [0:0] avm_unnamed_conv2d1x116_conv2d1x1_writeack,
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
    output wire [30:0] avm_lm220_conv2d1x1_address,
    output wire [4:0] avm_lm220_conv2d1x1_burstcount,
    output wire [63:0] avm_lm220_conv2d1x1_byteenable,
    output wire [0:0] avm_lm220_conv2d1x1_enable,
    output wire [0:0] avm_lm220_conv2d1x1_read,
    output wire [0:0] avm_lm220_conv2d1x1_write,
    output wire [511:0] avm_lm220_conv2d1x1_writedata,
    output wire [30:0] avm_lm222_conv2d1x1_address,
    output wire [4:0] avm_lm222_conv2d1x1_burstcount,
    output wire [63:0] avm_lm222_conv2d1x1_byteenable,
    output wire [0:0] avm_lm222_conv2d1x1_enable,
    output wire [0:0] avm_lm222_conv2d1x1_read,
    output wire [0:0] avm_lm222_conv2d1x1_write,
    output wire [511:0] avm_lm222_conv2d1x1_writedata,
    output wire [30:0] avm_lm223_conv2d1x1_address,
    output wire [4:0] avm_lm223_conv2d1x1_burstcount,
    output wire [63:0] avm_lm223_conv2d1x1_byteenable,
    output wire [0:0] avm_lm223_conv2d1x1_enable,
    output wire [0:0] avm_lm223_conv2d1x1_read,
    output wire [0:0] avm_lm223_conv2d1x1_write,
    output wire [511:0] avm_lm223_conv2d1x1_writedata,
    output wire [30:0] avm_lm225_conv2d1x1_address,
    output wire [4:0] avm_lm225_conv2d1x1_burstcount,
    output wire [63:0] avm_lm225_conv2d1x1_byteenable,
    output wire [0:0] avm_lm225_conv2d1x1_enable,
    output wire [0:0] avm_lm225_conv2d1x1_read,
    output wire [0:0] avm_lm225_conv2d1x1_write,
    output wire [511:0] avm_lm225_conv2d1x1_writedata,
    output wire [30:0] avm_lm227_conv2d1x1_address,
    output wire [4:0] avm_lm227_conv2d1x1_burstcount,
    output wire [63:0] avm_lm227_conv2d1x1_byteenable,
    output wire [0:0] avm_lm227_conv2d1x1_enable,
    output wire [0:0] avm_lm227_conv2d1x1_read,
    output wire [0:0] avm_lm227_conv2d1x1_write,
    output wire [511:0] avm_lm227_conv2d1x1_writedata,
    output wire [30:0] avm_lm229_conv2d1x1_address,
    output wire [4:0] avm_lm229_conv2d1x1_burstcount,
    output wire [63:0] avm_lm229_conv2d1x1_byteenable,
    output wire [0:0] avm_lm229_conv2d1x1_enable,
    output wire [0:0] avm_lm229_conv2d1x1_read,
    output wire [0:0] avm_lm229_conv2d1x1_write,
    output wire [511:0] avm_lm229_conv2d1x1_writedata,
    output wire [30:0] avm_lm231_conv2d1x1_address,
    output wire [4:0] avm_lm231_conv2d1x1_burstcount,
    output wire [63:0] avm_lm231_conv2d1x1_byteenable,
    output wire [0:0] avm_lm231_conv2d1x1_enable,
    output wire [0:0] avm_lm231_conv2d1x1_read,
    output wire [0:0] avm_lm231_conv2d1x1_write,
    output wire [511:0] avm_lm231_conv2d1x1_writedata,
    output wire [30:0] avm_lm233_conv2d1x1_address,
    output wire [4:0] avm_lm233_conv2d1x1_burstcount,
    output wire [63:0] avm_lm233_conv2d1x1_byteenable,
    output wire [0:0] avm_lm233_conv2d1x1_enable,
    output wire [0:0] avm_lm233_conv2d1x1_read,
    output wire [0:0] avm_lm233_conv2d1x1_write,
    output wire [511:0] avm_lm233_conv2d1x1_writedata,
    output wire [30:0] avm_lm235_conv2d1x1_address,
    output wire [4:0] avm_lm235_conv2d1x1_burstcount,
    output wire [63:0] avm_lm235_conv2d1x1_byteenable,
    output wire [0:0] avm_lm235_conv2d1x1_enable,
    output wire [0:0] avm_lm235_conv2d1x1_read,
    output wire [0:0] avm_lm235_conv2d1x1_write,
    output wire [511:0] avm_lm235_conv2d1x1_writedata,
    output wire [30:0] avm_lm_conv2d1x1_address,
    output wire [4:0] avm_lm_conv2d1x1_burstcount,
    output wire [63:0] avm_lm_conv2d1x1_byteenable,
    output wire [0:0] avm_lm_conv2d1x1_enable,
    output wire [0:0] avm_lm_conv2d1x1_read,
    output wire [0:0] avm_lm_conv2d1x1_write,
    output wire [511:0] avm_lm_conv2d1x1_writedata,
    output wire [31:0] avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_address,
    output wire [0:0] avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_burstcount,
    output wire [127:0] avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_byteenable,
    output wire [0:0] avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_enable,
    output wire [0:0] avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_read,
    output wire [0:0] avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_write,
    output wire [1023:0] avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_writedata,
    output wire [31:0] avm_memdep_13_conv2d1x1_address,
    output wire [0:0] avm_memdep_13_conv2d1x1_burstcount,
    output wire [127:0] avm_memdep_13_conv2d1x1_byteenable,
    output wire [0:0] avm_memdep_13_conv2d1x1_enable,
    output wire [0:0] avm_memdep_13_conv2d1x1_read,
    output wire [0:0] avm_memdep_13_conv2d1x1_write,
    output wire [1023:0] avm_memdep_13_conv2d1x1_writedata,
    output wire [31:0] avm_unnamed_conv2d1x115_conv2d1x1_address,
    output wire [0:0] avm_unnamed_conv2d1x115_conv2d1x1_burstcount,
    output wire [127:0] avm_unnamed_conv2d1x115_conv2d1x1_byteenable,
    output wire [0:0] avm_unnamed_conv2d1x115_conv2d1x1_enable,
    output wire [0:0] avm_unnamed_conv2d1x115_conv2d1x1_read,
    output wire [0:0] avm_unnamed_conv2d1x115_conv2d1x1_write,
    output wire [1023:0] avm_unnamed_conv2d1x115_conv2d1x1_writedata,
    output wire [30:0] avm_unnamed_conv2d1x116_conv2d1x1_address,
    output wire [4:0] avm_unnamed_conv2d1x116_conv2d1x1_burstcount,
    output wire [63:0] avm_unnamed_conv2d1x116_conv2d1x1_byteenable,
    output wire [0:0] avm_unnamed_conv2d1x116_conv2d1x1_enable,
    output wire [0:0] avm_unnamed_conv2d1x116_conv2d1x1_read,
    output wire [0:0] avm_unnamed_conv2d1x116_conv2d1x1_write,
    output wire [511:0] avm_unnamed_conv2d1x116_conv2d1x1_writedata,
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
    wire [30:0] conv2d1x1_function_out_lm220_conv2d1x1_avm_address;
    wire [4:0] conv2d1x1_function_out_lm220_conv2d1x1_avm_burstcount;
    wire [63:0] conv2d1x1_function_out_lm220_conv2d1x1_avm_byteenable;
    wire [0:0] conv2d1x1_function_out_lm220_conv2d1x1_avm_enable;
    wire [0:0] conv2d1x1_function_out_lm220_conv2d1x1_avm_read;
    wire [0:0] conv2d1x1_function_out_lm220_conv2d1x1_avm_write;
    wire [511:0] conv2d1x1_function_out_lm220_conv2d1x1_avm_writedata;
    wire [30:0] conv2d1x1_function_out_lm222_conv2d1x1_avm_address;
    wire [4:0] conv2d1x1_function_out_lm222_conv2d1x1_avm_burstcount;
    wire [63:0] conv2d1x1_function_out_lm222_conv2d1x1_avm_byteenable;
    wire [0:0] conv2d1x1_function_out_lm222_conv2d1x1_avm_enable;
    wire [0:0] conv2d1x1_function_out_lm222_conv2d1x1_avm_read;
    wire [0:0] conv2d1x1_function_out_lm222_conv2d1x1_avm_write;
    wire [511:0] conv2d1x1_function_out_lm222_conv2d1x1_avm_writedata;
    wire [30:0] conv2d1x1_function_out_lm223_conv2d1x1_avm_address;
    wire [4:0] conv2d1x1_function_out_lm223_conv2d1x1_avm_burstcount;
    wire [63:0] conv2d1x1_function_out_lm223_conv2d1x1_avm_byteenable;
    wire [0:0] conv2d1x1_function_out_lm223_conv2d1x1_avm_enable;
    wire [0:0] conv2d1x1_function_out_lm223_conv2d1x1_avm_read;
    wire [0:0] conv2d1x1_function_out_lm223_conv2d1x1_avm_write;
    wire [511:0] conv2d1x1_function_out_lm223_conv2d1x1_avm_writedata;
    wire [30:0] conv2d1x1_function_out_lm225_conv2d1x1_avm_address;
    wire [4:0] conv2d1x1_function_out_lm225_conv2d1x1_avm_burstcount;
    wire [63:0] conv2d1x1_function_out_lm225_conv2d1x1_avm_byteenable;
    wire [0:0] conv2d1x1_function_out_lm225_conv2d1x1_avm_enable;
    wire [0:0] conv2d1x1_function_out_lm225_conv2d1x1_avm_read;
    wire [0:0] conv2d1x1_function_out_lm225_conv2d1x1_avm_write;
    wire [511:0] conv2d1x1_function_out_lm225_conv2d1x1_avm_writedata;
    wire [30:0] conv2d1x1_function_out_lm227_conv2d1x1_avm_address;
    wire [4:0] conv2d1x1_function_out_lm227_conv2d1x1_avm_burstcount;
    wire [63:0] conv2d1x1_function_out_lm227_conv2d1x1_avm_byteenable;
    wire [0:0] conv2d1x1_function_out_lm227_conv2d1x1_avm_enable;
    wire [0:0] conv2d1x1_function_out_lm227_conv2d1x1_avm_read;
    wire [0:0] conv2d1x1_function_out_lm227_conv2d1x1_avm_write;
    wire [511:0] conv2d1x1_function_out_lm227_conv2d1x1_avm_writedata;
    wire [30:0] conv2d1x1_function_out_lm229_conv2d1x1_avm_address;
    wire [4:0] conv2d1x1_function_out_lm229_conv2d1x1_avm_burstcount;
    wire [63:0] conv2d1x1_function_out_lm229_conv2d1x1_avm_byteenable;
    wire [0:0] conv2d1x1_function_out_lm229_conv2d1x1_avm_enable;
    wire [0:0] conv2d1x1_function_out_lm229_conv2d1x1_avm_read;
    wire [0:0] conv2d1x1_function_out_lm229_conv2d1x1_avm_write;
    wire [511:0] conv2d1x1_function_out_lm229_conv2d1x1_avm_writedata;
    wire [30:0] conv2d1x1_function_out_lm231_conv2d1x1_avm_address;
    wire [4:0] conv2d1x1_function_out_lm231_conv2d1x1_avm_burstcount;
    wire [63:0] conv2d1x1_function_out_lm231_conv2d1x1_avm_byteenable;
    wire [0:0] conv2d1x1_function_out_lm231_conv2d1x1_avm_enable;
    wire [0:0] conv2d1x1_function_out_lm231_conv2d1x1_avm_read;
    wire [0:0] conv2d1x1_function_out_lm231_conv2d1x1_avm_write;
    wire [511:0] conv2d1x1_function_out_lm231_conv2d1x1_avm_writedata;
    wire [30:0] conv2d1x1_function_out_lm233_conv2d1x1_avm_address;
    wire [4:0] conv2d1x1_function_out_lm233_conv2d1x1_avm_burstcount;
    wire [63:0] conv2d1x1_function_out_lm233_conv2d1x1_avm_byteenable;
    wire [0:0] conv2d1x1_function_out_lm233_conv2d1x1_avm_enable;
    wire [0:0] conv2d1x1_function_out_lm233_conv2d1x1_avm_read;
    wire [0:0] conv2d1x1_function_out_lm233_conv2d1x1_avm_write;
    wire [511:0] conv2d1x1_function_out_lm233_conv2d1x1_avm_writedata;
    wire [30:0] conv2d1x1_function_out_lm235_conv2d1x1_avm_address;
    wire [4:0] conv2d1x1_function_out_lm235_conv2d1x1_avm_burstcount;
    wire [63:0] conv2d1x1_function_out_lm235_conv2d1x1_avm_byteenable;
    wire [0:0] conv2d1x1_function_out_lm235_conv2d1x1_avm_enable;
    wire [0:0] conv2d1x1_function_out_lm235_conv2d1x1_avm_read;
    wire [0:0] conv2d1x1_function_out_lm235_conv2d1x1_avm_write;
    wire [511:0] conv2d1x1_function_out_lm235_conv2d1x1_avm_writedata;
    wire [30:0] conv2d1x1_function_out_lm_conv2d1x1_avm_address;
    wire [4:0] conv2d1x1_function_out_lm_conv2d1x1_avm_burstcount;
    wire [63:0] conv2d1x1_function_out_lm_conv2d1x1_avm_byteenable;
    wire [0:0] conv2d1x1_function_out_lm_conv2d1x1_avm_enable;
    wire [0:0] conv2d1x1_function_out_lm_conv2d1x1_avm_read;
    wire [0:0] conv2d1x1_function_out_lm_conv2d1x1_avm_write;
    wire [511:0] conv2d1x1_function_out_lm_conv2d1x1_avm_writedata;
    wire [31:0] conv2d1x1_function_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address;
    wire [0:0] conv2d1x1_function_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount;
    wire [127:0] conv2d1x1_function_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable;
    wire [0:0] conv2d1x1_function_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable;
    wire [0:0] conv2d1x1_function_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read;
    wire [0:0] conv2d1x1_function_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write;
    wire [1023:0] conv2d1x1_function_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata;
    wire [31:0] conv2d1x1_function_out_memdep_13_conv2d1x1_avm_address;
    wire [0:0] conv2d1x1_function_out_memdep_13_conv2d1x1_avm_burstcount;
    wire [127:0] conv2d1x1_function_out_memdep_13_conv2d1x1_avm_byteenable;
    wire [0:0] conv2d1x1_function_out_memdep_13_conv2d1x1_avm_enable;
    wire [0:0] conv2d1x1_function_out_memdep_13_conv2d1x1_avm_read;
    wire [0:0] conv2d1x1_function_out_memdep_13_conv2d1x1_avm_write;
    wire [1023:0] conv2d1x1_function_out_memdep_13_conv2d1x1_avm_writedata;
    wire [0:0] conv2d1x1_function_out_o_active_unnamed_conv2d1x116;
    wire [0:0] conv2d1x1_function_out_stall_out;
    wire [31:0] conv2d1x1_function_out_unnamed_conv2d1x115_conv2d1x1_avm_address;
    wire [0:0] conv2d1x1_function_out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount;
    wire [127:0] conv2d1x1_function_out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable;
    wire [0:0] conv2d1x1_function_out_unnamed_conv2d1x115_conv2d1x1_avm_enable;
    wire [0:0] conv2d1x1_function_out_unnamed_conv2d1x115_conv2d1x1_avm_read;
    wire [0:0] conv2d1x1_function_out_unnamed_conv2d1x115_conv2d1x1_avm_write;
    wire [1023:0] conv2d1x1_function_out_unnamed_conv2d1x115_conv2d1x1_avm_writedata;
    wire [30:0] conv2d1x1_function_out_unnamed_conv2d1x116_conv2d1x1_avm_address;
    wire [4:0] conv2d1x1_function_out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount;
    wire [63:0] conv2d1x1_function_out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable;
    wire [0:0] conv2d1x1_function_out_unnamed_conv2d1x116_conv2d1x1_avm_enable;
    wire [0:0] conv2d1x1_function_out_unnamed_conv2d1x116_conv2d1x1_avm_read;
    wire [0:0] conv2d1x1_function_out_unnamed_conv2d1x116_conv2d1x1_avm_write;
    wire [511:0] conv2d1x1_function_out_unnamed_conv2d1x116_conv2d1x1_avm_writedata;
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
        .in_lm220_conv2d1x1_avm_readdata(avm_lm220_conv2d1x1_readdata),
        .in_lm220_conv2d1x1_avm_readdatavalid(avm_lm220_conv2d1x1_readdatavalid),
        .in_lm220_conv2d1x1_avm_waitrequest(avm_lm220_conv2d1x1_waitrequest),
        .in_lm220_conv2d1x1_avm_writeack(avm_lm220_conv2d1x1_writeack),
        .in_lm222_conv2d1x1_avm_readdata(avm_lm222_conv2d1x1_readdata),
        .in_lm222_conv2d1x1_avm_readdatavalid(avm_lm222_conv2d1x1_readdatavalid),
        .in_lm222_conv2d1x1_avm_waitrequest(avm_lm222_conv2d1x1_waitrequest),
        .in_lm222_conv2d1x1_avm_writeack(avm_lm222_conv2d1x1_writeack),
        .in_lm223_conv2d1x1_avm_readdata(avm_lm223_conv2d1x1_readdata),
        .in_lm223_conv2d1x1_avm_readdatavalid(avm_lm223_conv2d1x1_readdatavalid),
        .in_lm223_conv2d1x1_avm_waitrequest(avm_lm223_conv2d1x1_waitrequest),
        .in_lm223_conv2d1x1_avm_writeack(avm_lm223_conv2d1x1_writeack),
        .in_lm225_conv2d1x1_avm_readdata(avm_lm225_conv2d1x1_readdata),
        .in_lm225_conv2d1x1_avm_readdatavalid(avm_lm225_conv2d1x1_readdatavalid),
        .in_lm225_conv2d1x1_avm_waitrequest(avm_lm225_conv2d1x1_waitrequest),
        .in_lm225_conv2d1x1_avm_writeack(avm_lm225_conv2d1x1_writeack),
        .in_lm227_conv2d1x1_avm_readdata(avm_lm227_conv2d1x1_readdata),
        .in_lm227_conv2d1x1_avm_readdatavalid(avm_lm227_conv2d1x1_readdatavalid),
        .in_lm227_conv2d1x1_avm_waitrequest(avm_lm227_conv2d1x1_waitrequest),
        .in_lm227_conv2d1x1_avm_writeack(avm_lm227_conv2d1x1_writeack),
        .in_lm229_conv2d1x1_avm_readdata(avm_lm229_conv2d1x1_readdata),
        .in_lm229_conv2d1x1_avm_readdatavalid(avm_lm229_conv2d1x1_readdatavalid),
        .in_lm229_conv2d1x1_avm_waitrequest(avm_lm229_conv2d1x1_waitrequest),
        .in_lm229_conv2d1x1_avm_writeack(avm_lm229_conv2d1x1_writeack),
        .in_lm231_conv2d1x1_avm_readdata(avm_lm231_conv2d1x1_readdata),
        .in_lm231_conv2d1x1_avm_readdatavalid(avm_lm231_conv2d1x1_readdatavalid),
        .in_lm231_conv2d1x1_avm_waitrequest(avm_lm231_conv2d1x1_waitrequest),
        .in_lm231_conv2d1x1_avm_writeack(avm_lm231_conv2d1x1_writeack),
        .in_lm233_conv2d1x1_avm_readdata(avm_lm233_conv2d1x1_readdata),
        .in_lm233_conv2d1x1_avm_readdatavalid(avm_lm233_conv2d1x1_readdatavalid),
        .in_lm233_conv2d1x1_avm_waitrequest(avm_lm233_conv2d1x1_waitrequest),
        .in_lm233_conv2d1x1_avm_writeack(avm_lm233_conv2d1x1_writeack),
        .in_lm235_conv2d1x1_avm_readdata(avm_lm235_conv2d1x1_readdata),
        .in_lm235_conv2d1x1_avm_readdatavalid(avm_lm235_conv2d1x1_readdatavalid),
        .in_lm235_conv2d1x1_avm_waitrequest(avm_lm235_conv2d1x1_waitrequest),
        .in_lm235_conv2d1x1_avm_writeack(avm_lm235_conv2d1x1_writeack),
        .in_lm_conv2d1x1_avm_readdata(avm_lm_conv2d1x1_readdata),
        .in_lm_conv2d1x1_avm_readdatavalid(avm_lm_conv2d1x1_readdatavalid),
        .in_lm_conv2d1x1_avm_waitrequest(avm_lm_conv2d1x1_waitrequest),
        .in_lm_conv2d1x1_avm_writeack(avm_lm_conv2d1x1_writeack),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdata(avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_readdata),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdatavalid(avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_readdatavalid),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_waitrequest(avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_waitrequest),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writeack(avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_writeack),
        .in_memdep_13_conv2d1x1_avm_readdata(avm_memdep_13_conv2d1x1_readdata),
        .in_memdep_13_conv2d1x1_avm_readdatavalid(avm_memdep_13_conv2d1x1_readdatavalid),
        .in_memdep_13_conv2d1x1_avm_waitrequest(avm_memdep_13_conv2d1x1_waitrequest),
        .in_memdep_13_conv2d1x1_avm_writeack(avm_memdep_13_conv2d1x1_writeack),
        .in_stall_in(GND_q),
        .in_start(start),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_readdata(avm_unnamed_conv2d1x115_conv2d1x1_readdata),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_readdatavalid(avm_unnamed_conv2d1x115_conv2d1x1_readdatavalid),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_waitrequest(avm_unnamed_conv2d1x115_conv2d1x1_waitrequest),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_writeack(avm_unnamed_conv2d1x115_conv2d1x1_writeack),
        .in_unnamed_conv2d1x116_conv2d1x1_avm_readdata(avm_unnamed_conv2d1x116_conv2d1x1_readdata),
        .in_unnamed_conv2d1x116_conv2d1x1_avm_readdatavalid(avm_unnamed_conv2d1x116_conv2d1x1_readdatavalid),
        .in_unnamed_conv2d1x116_conv2d1x1_avm_waitrequest(avm_unnamed_conv2d1x116_conv2d1x1_waitrequest),
        .in_unnamed_conv2d1x116_conv2d1x1_avm_writeack(avm_unnamed_conv2d1x116_conv2d1x1_writeack),
        .in_valid_in(kernel_valid_in),
        .out_lm220_conv2d1x1_avm_address(conv2d1x1_function_out_lm220_conv2d1x1_avm_address),
        .out_lm220_conv2d1x1_avm_burstcount(conv2d1x1_function_out_lm220_conv2d1x1_avm_burstcount),
        .out_lm220_conv2d1x1_avm_byteenable(conv2d1x1_function_out_lm220_conv2d1x1_avm_byteenable),
        .out_lm220_conv2d1x1_avm_enable(conv2d1x1_function_out_lm220_conv2d1x1_avm_enable),
        .out_lm220_conv2d1x1_avm_read(conv2d1x1_function_out_lm220_conv2d1x1_avm_read),
        .out_lm220_conv2d1x1_avm_write(conv2d1x1_function_out_lm220_conv2d1x1_avm_write),
        .out_lm220_conv2d1x1_avm_writedata(conv2d1x1_function_out_lm220_conv2d1x1_avm_writedata),
        .out_lm222_conv2d1x1_avm_address(conv2d1x1_function_out_lm222_conv2d1x1_avm_address),
        .out_lm222_conv2d1x1_avm_burstcount(conv2d1x1_function_out_lm222_conv2d1x1_avm_burstcount),
        .out_lm222_conv2d1x1_avm_byteenable(conv2d1x1_function_out_lm222_conv2d1x1_avm_byteenable),
        .out_lm222_conv2d1x1_avm_enable(conv2d1x1_function_out_lm222_conv2d1x1_avm_enable),
        .out_lm222_conv2d1x1_avm_read(conv2d1x1_function_out_lm222_conv2d1x1_avm_read),
        .out_lm222_conv2d1x1_avm_write(conv2d1x1_function_out_lm222_conv2d1x1_avm_write),
        .out_lm222_conv2d1x1_avm_writedata(conv2d1x1_function_out_lm222_conv2d1x1_avm_writedata),
        .out_lm223_conv2d1x1_avm_address(conv2d1x1_function_out_lm223_conv2d1x1_avm_address),
        .out_lm223_conv2d1x1_avm_burstcount(conv2d1x1_function_out_lm223_conv2d1x1_avm_burstcount),
        .out_lm223_conv2d1x1_avm_byteenable(conv2d1x1_function_out_lm223_conv2d1x1_avm_byteenable),
        .out_lm223_conv2d1x1_avm_enable(conv2d1x1_function_out_lm223_conv2d1x1_avm_enable),
        .out_lm223_conv2d1x1_avm_read(conv2d1x1_function_out_lm223_conv2d1x1_avm_read),
        .out_lm223_conv2d1x1_avm_write(conv2d1x1_function_out_lm223_conv2d1x1_avm_write),
        .out_lm223_conv2d1x1_avm_writedata(conv2d1x1_function_out_lm223_conv2d1x1_avm_writedata),
        .out_lm225_conv2d1x1_avm_address(conv2d1x1_function_out_lm225_conv2d1x1_avm_address),
        .out_lm225_conv2d1x1_avm_burstcount(conv2d1x1_function_out_lm225_conv2d1x1_avm_burstcount),
        .out_lm225_conv2d1x1_avm_byteenable(conv2d1x1_function_out_lm225_conv2d1x1_avm_byteenable),
        .out_lm225_conv2d1x1_avm_enable(conv2d1x1_function_out_lm225_conv2d1x1_avm_enable),
        .out_lm225_conv2d1x1_avm_read(conv2d1x1_function_out_lm225_conv2d1x1_avm_read),
        .out_lm225_conv2d1x1_avm_write(conv2d1x1_function_out_lm225_conv2d1x1_avm_write),
        .out_lm225_conv2d1x1_avm_writedata(conv2d1x1_function_out_lm225_conv2d1x1_avm_writedata),
        .out_lm227_conv2d1x1_avm_address(conv2d1x1_function_out_lm227_conv2d1x1_avm_address),
        .out_lm227_conv2d1x1_avm_burstcount(conv2d1x1_function_out_lm227_conv2d1x1_avm_burstcount),
        .out_lm227_conv2d1x1_avm_byteenable(conv2d1x1_function_out_lm227_conv2d1x1_avm_byteenable),
        .out_lm227_conv2d1x1_avm_enable(conv2d1x1_function_out_lm227_conv2d1x1_avm_enable),
        .out_lm227_conv2d1x1_avm_read(conv2d1x1_function_out_lm227_conv2d1x1_avm_read),
        .out_lm227_conv2d1x1_avm_write(conv2d1x1_function_out_lm227_conv2d1x1_avm_write),
        .out_lm227_conv2d1x1_avm_writedata(conv2d1x1_function_out_lm227_conv2d1x1_avm_writedata),
        .out_lm229_conv2d1x1_avm_address(conv2d1x1_function_out_lm229_conv2d1x1_avm_address),
        .out_lm229_conv2d1x1_avm_burstcount(conv2d1x1_function_out_lm229_conv2d1x1_avm_burstcount),
        .out_lm229_conv2d1x1_avm_byteenable(conv2d1x1_function_out_lm229_conv2d1x1_avm_byteenable),
        .out_lm229_conv2d1x1_avm_enable(conv2d1x1_function_out_lm229_conv2d1x1_avm_enable),
        .out_lm229_conv2d1x1_avm_read(conv2d1x1_function_out_lm229_conv2d1x1_avm_read),
        .out_lm229_conv2d1x1_avm_write(conv2d1x1_function_out_lm229_conv2d1x1_avm_write),
        .out_lm229_conv2d1x1_avm_writedata(conv2d1x1_function_out_lm229_conv2d1x1_avm_writedata),
        .out_lm231_conv2d1x1_avm_address(conv2d1x1_function_out_lm231_conv2d1x1_avm_address),
        .out_lm231_conv2d1x1_avm_burstcount(conv2d1x1_function_out_lm231_conv2d1x1_avm_burstcount),
        .out_lm231_conv2d1x1_avm_byteenable(conv2d1x1_function_out_lm231_conv2d1x1_avm_byteenable),
        .out_lm231_conv2d1x1_avm_enable(conv2d1x1_function_out_lm231_conv2d1x1_avm_enable),
        .out_lm231_conv2d1x1_avm_read(conv2d1x1_function_out_lm231_conv2d1x1_avm_read),
        .out_lm231_conv2d1x1_avm_write(conv2d1x1_function_out_lm231_conv2d1x1_avm_write),
        .out_lm231_conv2d1x1_avm_writedata(conv2d1x1_function_out_lm231_conv2d1x1_avm_writedata),
        .out_lm233_conv2d1x1_avm_address(conv2d1x1_function_out_lm233_conv2d1x1_avm_address),
        .out_lm233_conv2d1x1_avm_burstcount(conv2d1x1_function_out_lm233_conv2d1x1_avm_burstcount),
        .out_lm233_conv2d1x1_avm_byteenable(conv2d1x1_function_out_lm233_conv2d1x1_avm_byteenable),
        .out_lm233_conv2d1x1_avm_enable(conv2d1x1_function_out_lm233_conv2d1x1_avm_enable),
        .out_lm233_conv2d1x1_avm_read(conv2d1x1_function_out_lm233_conv2d1x1_avm_read),
        .out_lm233_conv2d1x1_avm_write(conv2d1x1_function_out_lm233_conv2d1x1_avm_write),
        .out_lm233_conv2d1x1_avm_writedata(conv2d1x1_function_out_lm233_conv2d1x1_avm_writedata),
        .out_lm235_conv2d1x1_avm_address(conv2d1x1_function_out_lm235_conv2d1x1_avm_address),
        .out_lm235_conv2d1x1_avm_burstcount(conv2d1x1_function_out_lm235_conv2d1x1_avm_burstcount),
        .out_lm235_conv2d1x1_avm_byteenable(conv2d1x1_function_out_lm235_conv2d1x1_avm_byteenable),
        .out_lm235_conv2d1x1_avm_enable(conv2d1x1_function_out_lm235_conv2d1x1_avm_enable),
        .out_lm235_conv2d1x1_avm_read(conv2d1x1_function_out_lm235_conv2d1x1_avm_read),
        .out_lm235_conv2d1x1_avm_write(conv2d1x1_function_out_lm235_conv2d1x1_avm_write),
        .out_lm235_conv2d1x1_avm_writedata(conv2d1x1_function_out_lm235_conv2d1x1_avm_writedata),
        .out_lm_conv2d1x1_avm_address(conv2d1x1_function_out_lm_conv2d1x1_avm_address),
        .out_lm_conv2d1x1_avm_burstcount(conv2d1x1_function_out_lm_conv2d1x1_avm_burstcount),
        .out_lm_conv2d1x1_avm_byteenable(conv2d1x1_function_out_lm_conv2d1x1_avm_byteenable),
        .out_lm_conv2d1x1_avm_enable(conv2d1x1_function_out_lm_conv2d1x1_avm_enable),
        .out_lm_conv2d1x1_avm_read(conv2d1x1_function_out_lm_conv2d1x1_avm_read),
        .out_lm_conv2d1x1_avm_write(conv2d1x1_function_out_lm_conv2d1x1_avm_write),
        .out_lm_conv2d1x1_avm_writedata(conv2d1x1_function_out_lm_conv2d1x1_avm_writedata),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address(conv2d1x1_function_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount(conv2d1x1_function_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable(conv2d1x1_function_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable(conv2d1x1_function_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read(conv2d1x1_function_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write(conv2d1x1_function_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata(conv2d1x1_function_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata),
        .out_memdep_13_conv2d1x1_avm_address(conv2d1x1_function_out_memdep_13_conv2d1x1_avm_address),
        .out_memdep_13_conv2d1x1_avm_burstcount(conv2d1x1_function_out_memdep_13_conv2d1x1_avm_burstcount),
        .out_memdep_13_conv2d1x1_avm_byteenable(conv2d1x1_function_out_memdep_13_conv2d1x1_avm_byteenable),
        .out_memdep_13_conv2d1x1_avm_enable(conv2d1x1_function_out_memdep_13_conv2d1x1_avm_enable),
        .out_memdep_13_conv2d1x1_avm_read(conv2d1x1_function_out_memdep_13_conv2d1x1_avm_read),
        .out_memdep_13_conv2d1x1_avm_write(conv2d1x1_function_out_memdep_13_conv2d1x1_avm_write),
        .out_memdep_13_conv2d1x1_avm_writedata(conv2d1x1_function_out_memdep_13_conv2d1x1_avm_writedata),
        .out_o_active_unnamed_conv2d1x116(conv2d1x1_function_out_o_active_unnamed_conv2d1x116),
        .out_stall_out(conv2d1x1_function_out_stall_out),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_address(conv2d1x1_function_out_unnamed_conv2d1x115_conv2d1x1_avm_address),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount(conv2d1x1_function_out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable(conv2d1x1_function_out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_enable(conv2d1x1_function_out_unnamed_conv2d1x115_conv2d1x1_avm_enable),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_read(conv2d1x1_function_out_unnamed_conv2d1x115_conv2d1x1_avm_read),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_write(conv2d1x1_function_out_unnamed_conv2d1x115_conv2d1x1_avm_write),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_writedata(conv2d1x1_function_out_unnamed_conv2d1x115_conv2d1x1_avm_writedata),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_address(conv2d1x1_function_out_unnamed_conv2d1x116_conv2d1x1_avm_address),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount(conv2d1x1_function_out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable(conv2d1x1_function_out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_enable(conv2d1x1_function_out_unnamed_conv2d1x116_conv2d1x1_avm_enable),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_read(conv2d1x1_function_out_unnamed_conv2d1x116_conv2d1x1_avm_read),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_write(conv2d1x1_function_out_unnamed_conv2d1x116_conv2d1x1_avm_write),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_writedata(conv2d1x1_function_out_unnamed_conv2d1x116_conv2d1x1_avm_writedata),
        .out_valid_out(conv2d1x1_function_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm220_conv2d1x1_address(GPOUT,106)
    assign avm_lm220_conv2d1x1_address = conv2d1x1_function_out_lm220_conv2d1x1_avm_address;

    // avm_lm220_conv2d1x1_burstcount(GPOUT,107)
    assign avm_lm220_conv2d1x1_burstcount = conv2d1x1_function_out_lm220_conv2d1x1_avm_burstcount;

    // avm_lm220_conv2d1x1_byteenable(GPOUT,108)
    assign avm_lm220_conv2d1x1_byteenable = conv2d1x1_function_out_lm220_conv2d1x1_avm_byteenable;

    // avm_lm220_conv2d1x1_enable(GPOUT,109)
    assign avm_lm220_conv2d1x1_enable = conv2d1x1_function_out_lm220_conv2d1x1_avm_enable;

    // avm_lm220_conv2d1x1_read(GPOUT,110)
    assign avm_lm220_conv2d1x1_read = conv2d1x1_function_out_lm220_conv2d1x1_avm_read;

    // avm_lm220_conv2d1x1_write(GPOUT,111)
    assign avm_lm220_conv2d1x1_write = conv2d1x1_function_out_lm220_conv2d1x1_avm_write;

    // avm_lm220_conv2d1x1_writedata(GPOUT,112)
    assign avm_lm220_conv2d1x1_writedata = conv2d1x1_function_out_lm220_conv2d1x1_avm_writedata;

    // avm_lm222_conv2d1x1_address(GPOUT,113)
    assign avm_lm222_conv2d1x1_address = conv2d1x1_function_out_lm222_conv2d1x1_avm_address;

    // avm_lm222_conv2d1x1_burstcount(GPOUT,114)
    assign avm_lm222_conv2d1x1_burstcount = conv2d1x1_function_out_lm222_conv2d1x1_avm_burstcount;

    // avm_lm222_conv2d1x1_byteenable(GPOUT,115)
    assign avm_lm222_conv2d1x1_byteenable = conv2d1x1_function_out_lm222_conv2d1x1_avm_byteenable;

    // avm_lm222_conv2d1x1_enable(GPOUT,116)
    assign avm_lm222_conv2d1x1_enable = conv2d1x1_function_out_lm222_conv2d1x1_avm_enable;

    // avm_lm222_conv2d1x1_read(GPOUT,117)
    assign avm_lm222_conv2d1x1_read = conv2d1x1_function_out_lm222_conv2d1x1_avm_read;

    // avm_lm222_conv2d1x1_write(GPOUT,118)
    assign avm_lm222_conv2d1x1_write = conv2d1x1_function_out_lm222_conv2d1x1_avm_write;

    // avm_lm222_conv2d1x1_writedata(GPOUT,119)
    assign avm_lm222_conv2d1x1_writedata = conv2d1x1_function_out_lm222_conv2d1x1_avm_writedata;

    // avm_lm223_conv2d1x1_address(GPOUT,120)
    assign avm_lm223_conv2d1x1_address = conv2d1x1_function_out_lm223_conv2d1x1_avm_address;

    // avm_lm223_conv2d1x1_burstcount(GPOUT,121)
    assign avm_lm223_conv2d1x1_burstcount = conv2d1x1_function_out_lm223_conv2d1x1_avm_burstcount;

    // avm_lm223_conv2d1x1_byteenable(GPOUT,122)
    assign avm_lm223_conv2d1x1_byteenable = conv2d1x1_function_out_lm223_conv2d1x1_avm_byteenable;

    // avm_lm223_conv2d1x1_enable(GPOUT,123)
    assign avm_lm223_conv2d1x1_enable = conv2d1x1_function_out_lm223_conv2d1x1_avm_enable;

    // avm_lm223_conv2d1x1_read(GPOUT,124)
    assign avm_lm223_conv2d1x1_read = conv2d1x1_function_out_lm223_conv2d1x1_avm_read;

    // avm_lm223_conv2d1x1_write(GPOUT,125)
    assign avm_lm223_conv2d1x1_write = conv2d1x1_function_out_lm223_conv2d1x1_avm_write;

    // avm_lm223_conv2d1x1_writedata(GPOUT,126)
    assign avm_lm223_conv2d1x1_writedata = conv2d1x1_function_out_lm223_conv2d1x1_avm_writedata;

    // avm_lm225_conv2d1x1_address(GPOUT,127)
    assign avm_lm225_conv2d1x1_address = conv2d1x1_function_out_lm225_conv2d1x1_avm_address;

    // avm_lm225_conv2d1x1_burstcount(GPOUT,128)
    assign avm_lm225_conv2d1x1_burstcount = conv2d1x1_function_out_lm225_conv2d1x1_avm_burstcount;

    // avm_lm225_conv2d1x1_byteenable(GPOUT,129)
    assign avm_lm225_conv2d1x1_byteenable = conv2d1x1_function_out_lm225_conv2d1x1_avm_byteenable;

    // avm_lm225_conv2d1x1_enable(GPOUT,130)
    assign avm_lm225_conv2d1x1_enable = conv2d1x1_function_out_lm225_conv2d1x1_avm_enable;

    // avm_lm225_conv2d1x1_read(GPOUT,131)
    assign avm_lm225_conv2d1x1_read = conv2d1x1_function_out_lm225_conv2d1x1_avm_read;

    // avm_lm225_conv2d1x1_write(GPOUT,132)
    assign avm_lm225_conv2d1x1_write = conv2d1x1_function_out_lm225_conv2d1x1_avm_write;

    // avm_lm225_conv2d1x1_writedata(GPOUT,133)
    assign avm_lm225_conv2d1x1_writedata = conv2d1x1_function_out_lm225_conv2d1x1_avm_writedata;

    // avm_lm227_conv2d1x1_address(GPOUT,134)
    assign avm_lm227_conv2d1x1_address = conv2d1x1_function_out_lm227_conv2d1x1_avm_address;

    // avm_lm227_conv2d1x1_burstcount(GPOUT,135)
    assign avm_lm227_conv2d1x1_burstcount = conv2d1x1_function_out_lm227_conv2d1x1_avm_burstcount;

    // avm_lm227_conv2d1x1_byteenable(GPOUT,136)
    assign avm_lm227_conv2d1x1_byteenable = conv2d1x1_function_out_lm227_conv2d1x1_avm_byteenable;

    // avm_lm227_conv2d1x1_enable(GPOUT,137)
    assign avm_lm227_conv2d1x1_enable = conv2d1x1_function_out_lm227_conv2d1x1_avm_enable;

    // avm_lm227_conv2d1x1_read(GPOUT,138)
    assign avm_lm227_conv2d1x1_read = conv2d1x1_function_out_lm227_conv2d1x1_avm_read;

    // avm_lm227_conv2d1x1_write(GPOUT,139)
    assign avm_lm227_conv2d1x1_write = conv2d1x1_function_out_lm227_conv2d1x1_avm_write;

    // avm_lm227_conv2d1x1_writedata(GPOUT,140)
    assign avm_lm227_conv2d1x1_writedata = conv2d1x1_function_out_lm227_conv2d1x1_avm_writedata;

    // avm_lm229_conv2d1x1_address(GPOUT,141)
    assign avm_lm229_conv2d1x1_address = conv2d1x1_function_out_lm229_conv2d1x1_avm_address;

    // avm_lm229_conv2d1x1_burstcount(GPOUT,142)
    assign avm_lm229_conv2d1x1_burstcount = conv2d1x1_function_out_lm229_conv2d1x1_avm_burstcount;

    // avm_lm229_conv2d1x1_byteenable(GPOUT,143)
    assign avm_lm229_conv2d1x1_byteenable = conv2d1x1_function_out_lm229_conv2d1x1_avm_byteenable;

    // avm_lm229_conv2d1x1_enable(GPOUT,144)
    assign avm_lm229_conv2d1x1_enable = conv2d1x1_function_out_lm229_conv2d1x1_avm_enable;

    // avm_lm229_conv2d1x1_read(GPOUT,145)
    assign avm_lm229_conv2d1x1_read = conv2d1x1_function_out_lm229_conv2d1x1_avm_read;

    // avm_lm229_conv2d1x1_write(GPOUT,146)
    assign avm_lm229_conv2d1x1_write = conv2d1x1_function_out_lm229_conv2d1x1_avm_write;

    // avm_lm229_conv2d1x1_writedata(GPOUT,147)
    assign avm_lm229_conv2d1x1_writedata = conv2d1x1_function_out_lm229_conv2d1x1_avm_writedata;

    // avm_lm231_conv2d1x1_address(GPOUT,148)
    assign avm_lm231_conv2d1x1_address = conv2d1x1_function_out_lm231_conv2d1x1_avm_address;

    // avm_lm231_conv2d1x1_burstcount(GPOUT,149)
    assign avm_lm231_conv2d1x1_burstcount = conv2d1x1_function_out_lm231_conv2d1x1_avm_burstcount;

    // avm_lm231_conv2d1x1_byteenable(GPOUT,150)
    assign avm_lm231_conv2d1x1_byteenable = conv2d1x1_function_out_lm231_conv2d1x1_avm_byteenable;

    // avm_lm231_conv2d1x1_enable(GPOUT,151)
    assign avm_lm231_conv2d1x1_enable = conv2d1x1_function_out_lm231_conv2d1x1_avm_enable;

    // avm_lm231_conv2d1x1_read(GPOUT,152)
    assign avm_lm231_conv2d1x1_read = conv2d1x1_function_out_lm231_conv2d1x1_avm_read;

    // avm_lm231_conv2d1x1_write(GPOUT,153)
    assign avm_lm231_conv2d1x1_write = conv2d1x1_function_out_lm231_conv2d1x1_avm_write;

    // avm_lm231_conv2d1x1_writedata(GPOUT,154)
    assign avm_lm231_conv2d1x1_writedata = conv2d1x1_function_out_lm231_conv2d1x1_avm_writedata;

    // avm_lm233_conv2d1x1_address(GPOUT,155)
    assign avm_lm233_conv2d1x1_address = conv2d1x1_function_out_lm233_conv2d1x1_avm_address;

    // avm_lm233_conv2d1x1_burstcount(GPOUT,156)
    assign avm_lm233_conv2d1x1_burstcount = conv2d1x1_function_out_lm233_conv2d1x1_avm_burstcount;

    // avm_lm233_conv2d1x1_byteenable(GPOUT,157)
    assign avm_lm233_conv2d1x1_byteenable = conv2d1x1_function_out_lm233_conv2d1x1_avm_byteenable;

    // avm_lm233_conv2d1x1_enable(GPOUT,158)
    assign avm_lm233_conv2d1x1_enable = conv2d1x1_function_out_lm233_conv2d1x1_avm_enable;

    // avm_lm233_conv2d1x1_read(GPOUT,159)
    assign avm_lm233_conv2d1x1_read = conv2d1x1_function_out_lm233_conv2d1x1_avm_read;

    // avm_lm233_conv2d1x1_write(GPOUT,160)
    assign avm_lm233_conv2d1x1_write = conv2d1x1_function_out_lm233_conv2d1x1_avm_write;

    // avm_lm233_conv2d1x1_writedata(GPOUT,161)
    assign avm_lm233_conv2d1x1_writedata = conv2d1x1_function_out_lm233_conv2d1x1_avm_writedata;

    // avm_lm235_conv2d1x1_address(GPOUT,162)
    assign avm_lm235_conv2d1x1_address = conv2d1x1_function_out_lm235_conv2d1x1_avm_address;

    // avm_lm235_conv2d1x1_burstcount(GPOUT,163)
    assign avm_lm235_conv2d1x1_burstcount = conv2d1x1_function_out_lm235_conv2d1x1_avm_burstcount;

    // avm_lm235_conv2d1x1_byteenable(GPOUT,164)
    assign avm_lm235_conv2d1x1_byteenable = conv2d1x1_function_out_lm235_conv2d1x1_avm_byteenable;

    // avm_lm235_conv2d1x1_enable(GPOUT,165)
    assign avm_lm235_conv2d1x1_enable = conv2d1x1_function_out_lm235_conv2d1x1_avm_enable;

    // avm_lm235_conv2d1x1_read(GPOUT,166)
    assign avm_lm235_conv2d1x1_read = conv2d1x1_function_out_lm235_conv2d1x1_avm_read;

    // avm_lm235_conv2d1x1_write(GPOUT,167)
    assign avm_lm235_conv2d1x1_write = conv2d1x1_function_out_lm235_conv2d1x1_avm_write;

    // avm_lm235_conv2d1x1_writedata(GPOUT,168)
    assign avm_lm235_conv2d1x1_writedata = conv2d1x1_function_out_lm235_conv2d1x1_avm_writedata;

    // avm_lm_conv2d1x1_address(GPOUT,169)
    assign avm_lm_conv2d1x1_address = conv2d1x1_function_out_lm_conv2d1x1_avm_address;

    // avm_lm_conv2d1x1_burstcount(GPOUT,170)
    assign avm_lm_conv2d1x1_burstcount = conv2d1x1_function_out_lm_conv2d1x1_avm_burstcount;

    // avm_lm_conv2d1x1_byteenable(GPOUT,171)
    assign avm_lm_conv2d1x1_byteenable = conv2d1x1_function_out_lm_conv2d1x1_avm_byteenable;

    // avm_lm_conv2d1x1_enable(GPOUT,172)
    assign avm_lm_conv2d1x1_enable = conv2d1x1_function_out_lm_conv2d1x1_avm_enable;

    // avm_lm_conv2d1x1_read(GPOUT,173)
    assign avm_lm_conv2d1x1_read = conv2d1x1_function_out_lm_conv2d1x1_avm_read;

    // avm_lm_conv2d1x1_write(GPOUT,174)
    assign avm_lm_conv2d1x1_write = conv2d1x1_function_out_lm_conv2d1x1_avm_write;

    // avm_lm_conv2d1x1_writedata(GPOUT,175)
    assign avm_lm_conv2d1x1_writedata = conv2d1x1_function_out_lm_conv2d1x1_avm_writedata;

    // avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_address(GPOUT,176)
    assign avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_address = conv2d1x1_function_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address;

    // avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_burstcount(GPOUT,177)
    assign avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_burstcount = conv2d1x1_function_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount;

    // avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_byteenable(GPOUT,178)
    assign avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_byteenable = conv2d1x1_function_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable;

    // avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_enable(GPOUT,179)
    assign avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_enable = conv2d1x1_function_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable;

    // avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_read(GPOUT,180)
    assign avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_read = conv2d1x1_function_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read;

    // avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_write(GPOUT,181)
    assign avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_write = conv2d1x1_function_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write;

    // avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_writedata(GPOUT,182)
    assign avm_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_writedata = conv2d1x1_function_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata;

    // avm_memdep_13_conv2d1x1_address(GPOUT,183)
    assign avm_memdep_13_conv2d1x1_address = conv2d1x1_function_out_memdep_13_conv2d1x1_avm_address;

    // avm_memdep_13_conv2d1x1_burstcount(GPOUT,184)
    assign avm_memdep_13_conv2d1x1_burstcount = conv2d1x1_function_out_memdep_13_conv2d1x1_avm_burstcount;

    // avm_memdep_13_conv2d1x1_byteenable(GPOUT,185)
    assign avm_memdep_13_conv2d1x1_byteenable = conv2d1x1_function_out_memdep_13_conv2d1x1_avm_byteenable;

    // avm_memdep_13_conv2d1x1_enable(GPOUT,186)
    assign avm_memdep_13_conv2d1x1_enable = conv2d1x1_function_out_memdep_13_conv2d1x1_avm_enable;

    // avm_memdep_13_conv2d1x1_read(GPOUT,187)
    assign avm_memdep_13_conv2d1x1_read = conv2d1x1_function_out_memdep_13_conv2d1x1_avm_read;

    // avm_memdep_13_conv2d1x1_write(GPOUT,188)
    assign avm_memdep_13_conv2d1x1_write = conv2d1x1_function_out_memdep_13_conv2d1x1_avm_write;

    // avm_memdep_13_conv2d1x1_writedata(GPOUT,189)
    assign avm_memdep_13_conv2d1x1_writedata = conv2d1x1_function_out_memdep_13_conv2d1x1_avm_writedata;

    // avm_unnamed_conv2d1x115_conv2d1x1_address(GPOUT,190)
    assign avm_unnamed_conv2d1x115_conv2d1x1_address = conv2d1x1_function_out_unnamed_conv2d1x115_conv2d1x1_avm_address;

    // avm_unnamed_conv2d1x115_conv2d1x1_burstcount(GPOUT,191)
    assign avm_unnamed_conv2d1x115_conv2d1x1_burstcount = conv2d1x1_function_out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount;

    // avm_unnamed_conv2d1x115_conv2d1x1_byteenable(GPOUT,192)
    assign avm_unnamed_conv2d1x115_conv2d1x1_byteenable = conv2d1x1_function_out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable;

    // avm_unnamed_conv2d1x115_conv2d1x1_enable(GPOUT,193)
    assign avm_unnamed_conv2d1x115_conv2d1x1_enable = conv2d1x1_function_out_unnamed_conv2d1x115_conv2d1x1_avm_enable;

    // avm_unnamed_conv2d1x115_conv2d1x1_read(GPOUT,194)
    assign avm_unnamed_conv2d1x115_conv2d1x1_read = conv2d1x1_function_out_unnamed_conv2d1x115_conv2d1x1_avm_read;

    // avm_unnamed_conv2d1x115_conv2d1x1_write(GPOUT,195)
    assign avm_unnamed_conv2d1x115_conv2d1x1_write = conv2d1x1_function_out_unnamed_conv2d1x115_conv2d1x1_avm_write;

    // avm_unnamed_conv2d1x115_conv2d1x1_writedata(GPOUT,196)
    assign avm_unnamed_conv2d1x115_conv2d1x1_writedata = conv2d1x1_function_out_unnamed_conv2d1x115_conv2d1x1_avm_writedata;

    // avm_unnamed_conv2d1x116_conv2d1x1_address(GPOUT,197)
    assign avm_unnamed_conv2d1x116_conv2d1x1_address = conv2d1x1_function_out_unnamed_conv2d1x116_conv2d1x1_avm_address;

    // avm_unnamed_conv2d1x116_conv2d1x1_burstcount(GPOUT,198)
    assign avm_unnamed_conv2d1x116_conv2d1x1_burstcount = conv2d1x1_function_out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount;

    // avm_unnamed_conv2d1x116_conv2d1x1_byteenable(GPOUT,199)
    assign avm_unnamed_conv2d1x116_conv2d1x1_byteenable = conv2d1x1_function_out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable;

    // avm_unnamed_conv2d1x116_conv2d1x1_enable(GPOUT,200)
    assign avm_unnamed_conv2d1x116_conv2d1x1_enable = conv2d1x1_function_out_unnamed_conv2d1x116_conv2d1x1_avm_enable;

    // avm_unnamed_conv2d1x116_conv2d1x1_read(GPOUT,201)
    assign avm_unnamed_conv2d1x116_conv2d1x1_read = conv2d1x1_function_out_unnamed_conv2d1x116_conv2d1x1_avm_read;

    // avm_unnamed_conv2d1x116_conv2d1x1_write(GPOUT,202)
    assign avm_unnamed_conv2d1x116_conv2d1x1_write = conv2d1x1_function_out_unnamed_conv2d1x116_conv2d1x1_avm_write;

    // avm_unnamed_conv2d1x116_conv2d1x1_writedata(GPOUT,203)
    assign avm_unnamed_conv2d1x116_conv2d1x1_writedata = conv2d1x1_function_out_unnamed_conv2d1x116_conv2d1x1_avm_writedata;

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

    // clock2x_output(GPOUT,204)
    assign clock2x_output = acl_clock2x_dummy_consumer_myout;

    // has_a_lsu_active(GPOUT,205)
    assign has_a_lsu_active = conv2d1x1_function_out_o_active_unnamed_conv2d1x116;

    // has_a_write_pending(GPOUT,206)
    assign has_a_write_pending = conv2d1x1_function_out_o_active_unnamed_conv2d1x116;

    // kernel_stall_out(GPOUT,207)
    assign kernel_stall_out = conv2d1x1_function_out_stall_out;

    // kernel_valid_out(GPOUT,208)
    assign kernel_valid_out = conv2d1x1_function_out_valid_out;

endmodule
