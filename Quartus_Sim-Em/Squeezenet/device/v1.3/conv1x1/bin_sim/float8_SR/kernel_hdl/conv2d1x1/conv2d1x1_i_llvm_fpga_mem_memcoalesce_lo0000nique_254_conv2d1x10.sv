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

// SystemVerilog created from conv2d1x1_i_llvm_fpga_mem_memcoalesce_lo0000nique_254_conv2d1x10
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_llvm_fpga_mem_memcoalesce_lo0000nique_254_conv2d1x10 (
    input wire [1023:0] in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdata,
    input wire [0:0] in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writeack,
    input wire [0:0] in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdatavalid,
    output wire [31:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write,
    output wire [1023:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata,
    output wire [127:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [63:0] in_AddrOffset,
    input wire [63:0] in_i_address,
    input wire [0:0] in_i_predicate,
    input wire [0:0] in_i_valid,
    output wire [31:0] out_o_readdata_0_0_tpl,
    output wire [31:0] out_o_readdata_0_1_tpl,
    output wire [31:0] out_o_readdata_0_2_tpl,
    output wire [31:0] out_o_readdata_0_3_tpl,
    output wire [31:0] out_o_readdata_0_4_tpl,
    output wire [31:0] out_o_readdata_0_5_tpl,
    output wire [31:0] out_o_readdata_0_6_tpl,
    output wire [31:0] out_o_readdata_0_7_tpl,
    output wire [31:0] out_o_readdata_0_8_tpl,
    output wire [31:0] out_o_readdata_0_9_tpl,
    output wire [31:0] out_o_readdata_0_10_tpl,
    output wire [31:0] out_o_readdata_0_11_tpl,
    output wire [31:0] out_o_readdata_0_12_tpl,
    output wire [31:0] out_o_readdata_0_13_tpl,
    output wire [31:0] out_o_readdata_0_14_tpl,
    output wire [31:0] out_o_readdata_0_15_tpl,
    output wire [31:0] out_o_readdata_0_16_tpl,
    output wire [31:0] out_o_readdata_0_17_tpl,
    output wire [31:0] out_o_readdata_0_18_tpl,
    output wire [31:0] out_o_readdata_0_19_tpl,
    output wire [31:0] out_o_readdata_0_20_tpl,
    output wire [31:0] out_o_readdata_0_21_tpl,
    output wire [31:0] out_o_readdata_0_22_tpl,
    output wire [31:0] out_o_readdata_0_23_tpl,
    output wire [63:0] out_o_readdata_24_tpl,
    output wire [63:0] out_o_readdata_25_tpl,
    output wire [63:0] out_o_readdata_26_tpl,
    output wire [63:0] out_o_readdata_27_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] JoinADDNodeTruncB_q;
    wire [24:0] Or_rsrvd_fix_q;
    wire [1023:0] c_i1024_0109_q;
    wire [127:0] c_i128_0110_q;
    wire [31:0] c_i32_0112_q;
    wire [2:0] c_i3_0114_q;
    wire [1023:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_readdata;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_readdatavalid;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_readdatavalid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_waitrequest;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_waitrequest_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_writeack;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_writeack_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_clock2x;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_clock2x_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_flush;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_flush_bitsignaltemp;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_address;
    wire [2:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_atomic_op;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_bitwiseor;
    wire [127:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_byteenable;
    wire [1023:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_cmpdata;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_predicate;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_predicate_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_stall;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_valid;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_valid_bitsignaltemp;
    wire [1023:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_writedata;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_stream_base_addr;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_stream_reset;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_stream_reset_bitsignaltemp;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_stream_size;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_address;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_burstcount;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_burstcount_bitsignaltemp;
    wire [127:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_enable;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_enable_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_read;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_read_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_write;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_write_bitsignaltemp;
    wire [1023:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_writedata;
    wire [4:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_input_fifo_depth;
    wire [1023:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_stall;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_valid;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_writeack;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_writeack_bitsignaltemp;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_profile_avm_burstcount_total_incr;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_profile_bw_incr;
    wire [24:0] AddrOffsetTrunc_sel_x_b;
    wire [31:0] addr_trunc_sel_x_b;
    reg [0:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_valid_reg_x_q;
    reg [63:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_24_x_q;
    reg [63:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_25_x_q;
    reg [63:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_26_x_q;
    reg [63:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_27_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_0_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_1_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_2_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_3_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_4_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_5_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_6_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_7_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_8_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_9_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_10_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_11_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_12_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_13_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_14_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_15_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_16_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_17_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_18_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_19_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_20_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_21_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_22_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_23_0_x_q;
    wire [63:0] ip_dsdk_adapt_bitselect101_merged_bit_select_b;
    wire [63:0] ip_dsdk_adapt_bitselect101_merged_bit_select_c;
    wire [63:0] ip_dsdk_adapt_bitselect101_merged_bit_select_d;
    wire [63:0] ip_dsdk_adapt_bitselect101_merged_bit_select_e;
    wire [31:0] ip_dsdk_adapt_bitselect101_merged_bit_select_f;
    wire [31:0] ip_dsdk_adapt_bitselect101_merged_bit_select_g;
    wire [31:0] ip_dsdk_adapt_bitselect101_merged_bit_select_h;
    wire [31:0] ip_dsdk_adapt_bitselect101_merged_bit_select_i;
    wire [31:0] ip_dsdk_adapt_bitselect101_merged_bit_select_j;
    wire [31:0] ip_dsdk_adapt_bitselect101_merged_bit_select_k;
    wire [31:0] ip_dsdk_adapt_bitselect101_merged_bit_select_l;
    wire [31:0] ip_dsdk_adapt_bitselect101_merged_bit_select_m;
    wire [31:0] ip_dsdk_adapt_bitselect101_merged_bit_select_n;
    wire [31:0] ip_dsdk_adapt_bitselect101_merged_bit_select_o;
    wire [31:0] ip_dsdk_adapt_bitselect101_merged_bit_select_p;
    wire [31:0] ip_dsdk_adapt_bitselect101_merged_bit_select_q;
    wire [31:0] ip_dsdk_adapt_bitselect101_merged_bit_select_r;
    wire [31:0] ip_dsdk_adapt_bitselect101_merged_bit_select_s;
    wire [31:0] ip_dsdk_adapt_bitselect101_merged_bit_select_t;
    wire [31:0] ip_dsdk_adapt_bitselect101_merged_bit_select_u;
    wire [31:0] ip_dsdk_adapt_bitselect101_merged_bit_select_v;
    wire [31:0] ip_dsdk_adapt_bitselect101_merged_bit_select_w;
    wire [31:0] ip_dsdk_adapt_bitselect101_merged_bit_select_x;
    wire [31:0] ip_dsdk_adapt_bitselect101_merged_bit_select_y;
    wire [31:0] ip_dsdk_adapt_bitselect101_merged_bit_select_z;
    wire [31:0] ip_dsdk_adapt_bitselect101_merged_bit_select_aa;
    wire [31:0] ip_dsdk_adapt_bitselect101_merged_bit_select_bb;
    wire [31:0] ip_dsdk_adapt_bitselect101_merged_bit_select_cc;
    wire [24:0] SelA_merged_bit_select_b;
    wire [6:0] SelA_merged_bit_select_c;


    // c_i1024_0109(CONSTANT,8)
    assign c_i1024_0109_q = $unsigned(1024'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);

    // c_i128_0110(CONSTANT,10)
    assign c_i128_0110_q = $unsigned(128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);

    // c_i32_0112(CONSTANT,14)
    assign c_i32_0112_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i3_0114(CONSTANT,17)
    assign c_i3_0114_q = $unsigned(3'b000);

    // AddrOffsetTrunc_sel_x(BITSELECT,105)@1
    assign AddrOffsetTrunc_sel_x_b = in_AddrOffset[24:0];

    // Or_rsrvd_fix(LOGICAL,4)@1
    assign Or_rsrvd_fix_q = AddrOffsetTrunc_sel_x_b | SelA_merged_bit_select_b;

    // addr_trunc_sel_x(BITSELECT,106)@1
    assign addr_trunc_sel_x_b = in_i_address[31:0];

    // SelA_merged_bit_select(BITSELECT,141)@1
    assign SelA_merged_bit_select_b = addr_trunc_sel_x_b[31:7];
    assign SelA_merged_bit_select_c = addr_trunc_sel_x_b[6:0];

    // JoinADDNodeTruncB(BITJOIN,3)@1
    assign JoinADDNodeTruncB_q = {Or_rsrvd_fix_q, SelA_merged_bit_select_c};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11(EXTIFACE,20)@1 + 4
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_readdata = in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdata;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_readdatavalid = in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdatavalid;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_waitrequest = in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_waitrequest;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_writeack = in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writeack;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_clock2x = GND_q;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_flush = in_flush;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_address = JoinADDNodeTruncB_q;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_atomic_op = c_i3_0114_q;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_bitwiseor = c_i32_0112_q;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_byteenable = c_i128_0110_q;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_cmpdata = c_i1024_0109_q;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_predicate = GND_q;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_stall = GND_q;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_valid = in_i_valid;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_writedata = c_i1024_0109_q;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_stream_base_addr = c_i32_0112_q;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_stream_reset = GND_q;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_stream_size = c_i32_0112_q;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_readdatavalid_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_readdatavalid[0];
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_waitrequest_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_waitrequest[0];
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_writeack_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_writeack[0];
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_clock2x_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_clock2x[0];
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_flush_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_flush[0];
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_predicate_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_predicate[0];
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_stall_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_stall[0];
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_valid_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_valid[0];
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_stream_reset_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_stream_reset[0];
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_burstcount[0] = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_burstcount_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_enable[0] = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_enable_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_read[0] = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_read_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_write[0] = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_write_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_stall[0] = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_stall_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_valid[0] = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_valid_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_writeack[0] = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_writeack_bitsignaltemp;
    lsu_top #(
        .ABITS_PER_LMEM_BANK(9),
        .ADDRSPACE(64),
        .ALIGNMENT_BYTES(128),
        .ALLOW_HIGH_SPEED_FIFO_USAGE(0),
        .ASYNC_RESET(1),
        .ATOMIC(0),
        .ATOMIC_WIDTH(3),
        .AVM_READ_DATA_LATENESS(0),
        .AVM_WRITE_DATA_LATENESS(0),
        .AWIDTH(32),
        .BURSTCOUNT_WIDTH(1),
        .ENABLE_BANKED_MEMORY(0),
        .FORCE_NOP_SUPPORT(1),
        .HIGH_FMAX(1),
        .INPUTFIFO_USEDW_MAXBITS(5),
        .KERNEL_SIDE_MEM_LATENCY(4),
        .LMEM_ADDR_PERMUTATION_STYLE(0),
        .MEMORY_SIDE_MEM_LATENCY(0),
        .MWIDTH_BYTES(128),
        .NUMBER_BANKS(1),
        .PROFILE_ADDR_TOGGLE(0),
        .READ(1),
        .STALLFREE(1),
        .STYLE("PIPELINED"),
        .SYNCHRONIZE_RESET(1),
        .USECACHING(0),
        .USEINPUTFIFO(0),
        .USEOUTPUTFIFO(0),
        .USE_BYTE_EN(0),
        .USE_STALL_LATENCY(0),
        .USE_WRITE_ACK(0),
        .WIDE_DATA_SLICING(0),
        .WIDTH_BYTES(128),
        .WRITEDATAWIDTH_BYTES(128)
    ) thei_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11 (
        .avm_readdata(in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdata),
        .avm_readdatavalid(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_readdatavalid_bitsignaltemp),
        .avm_waitrequest(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_waitrequest_bitsignaltemp),
        .avm_writeack(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_writeack_bitsignaltemp),
        .clock2x(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_clock2x_bitsignaltemp),
        .flush(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_flush_bitsignaltemp),
        .i_address(JoinADDNodeTruncB_q),
        .i_atomic_op(c_i3_0114_q),
        .i_bitwiseor(c_i32_0112_q),
        .i_byteenable(c_i128_0110_q),
        .i_cmpdata(c_i1024_0109_q),
        .i_predicate(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_predicate_bitsignaltemp),
        .i_stall(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_i_valid_bitsignaltemp),
        .i_writedata(c_i1024_0109_q),
        .stream_base_addr(c_i32_0112_q),
        .stream_reset(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_stream_reset_bitsignaltemp),
        .stream_size(c_i32_0112_q),
        .avm_address(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_address),
        .avm_burstcount(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_burstcount_bitsignaltemp),
        .avm_byteenable(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_byteenable),
        .avm_enable(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_enable_bitsignaltemp),
        .avm_read(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_read_bitsignaltemp),
        .avm_write(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_write_bitsignaltemp),
        .avm_writedata(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_writedata),
        .o_input_fifo_depth(),
        .o_readdata(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata),
        .o_stall(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_valid_bitsignaltemp),
        .o_writeack(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_writeack_bitsignaltemp),
        .profile_avm_burstcount_total_incr(),
        .profile_bw_incr(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,19)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_address;
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_enable;
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_read;
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_write;
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_writedata;
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_byteenable;
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_avm_burstcount;

    // sync_out(GPOUT,103)@5
    assign out_o_stall = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_stall;

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_valid_reg_x(REG,109)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_valid_reg_x_q <= $unsigned(1'b0);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_valid_reg_x_q <= i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_valid;
        end
    end

    // ip_dsdk_adapt_bitselect101_merged_bit_select(BITSELECT,140)@5
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_b = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[831:768];
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_c = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[895:832];
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_d = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[959:896];
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_e = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[1023:960];
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_f = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[95:64];
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_g = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[127:96];
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_h = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[159:128];
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_i = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[191:160];
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_j = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[223:192];
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_k = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[255:224];
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_l = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[287:256];
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_m = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[319:288];
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_n = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[351:320];
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_o = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[383:352];
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_p = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[31:0];
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_q = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[415:384];
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_r = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[447:416];
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_s = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[479:448];
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_t = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[511:480];
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_u = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[543:512];
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_v = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[575:544];
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_w = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[607:576];
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_x = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[639:608];
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_y = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[671:640];
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_z = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[703:672];
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_aa = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[63:32];
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_bb = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[735:704];
    assign ip_dsdk_adapt_bitselect101_merged_bit_select_cc = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_o_readdata[767:736];

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_27_x(REG,113)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_27_x_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_27_x_q <= ip_dsdk_adapt_bitselect101_merged_bit_select_e;
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_26_x(REG,112)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_26_x_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_26_x_q <= ip_dsdk_adapt_bitselect101_merged_bit_select_d;
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_25_x(REG,111)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_25_x_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_25_x_q <= ip_dsdk_adapt_bitselect101_merged_bit_select_c;
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_24_x(REG,110)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_24_x_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_24_x_q <= ip_dsdk_adapt_bitselect101_merged_bit_select_b;
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_23_0_x(REG,137)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_23_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_23_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect101_merged_bit_select_cc);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_22_0_x(REG,136)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_22_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_22_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect101_merged_bit_select_bb);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_21_0_x(REG,135)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_21_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_21_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect101_merged_bit_select_z);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_20_0_x(REG,134)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_20_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_20_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect101_merged_bit_select_y);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_19_0_x(REG,133)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_19_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_19_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect101_merged_bit_select_x);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_18_0_x(REG,132)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_18_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_18_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect101_merged_bit_select_w);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_17_0_x(REG,131)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_17_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_17_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect101_merged_bit_select_v);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_16_0_x(REG,130)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_16_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_16_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect101_merged_bit_select_u);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_15_0_x(REG,129)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_15_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_15_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect101_merged_bit_select_t);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_14_0_x(REG,128)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_14_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_14_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect101_merged_bit_select_s);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_13_0_x(REG,127)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_13_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_13_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect101_merged_bit_select_r);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_12_0_x(REG,126)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_12_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_12_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect101_merged_bit_select_q);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_11_0_x(REG,125)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_11_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_11_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect101_merged_bit_select_o);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_10_0_x(REG,124)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_10_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_10_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect101_merged_bit_select_n);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_9_0_x(REG,123)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_9_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_9_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect101_merged_bit_select_m);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_8_0_x(REG,122)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_8_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_8_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect101_merged_bit_select_l);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_7_0_x(REG,121)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_7_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_7_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect101_merged_bit_select_k);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_6_0_x(REG,120)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_6_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_6_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect101_merged_bit_select_j);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_5_0_x(REG,119)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_5_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_5_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect101_merged_bit_select_i);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_4_0_x(REG,118)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_4_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_4_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect101_merged_bit_select_h);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_3_0_x(REG,117)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_3_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_3_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect101_merged_bit_select_g);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_2_0_x(REG,116)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_2_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_2_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect101_merged_bit_select_f);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_1_0_x(REG,115)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_1_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_1_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect101_merged_bit_select_aa);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_0_0_x(REG,114)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_0_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_0_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect101_merged_bit_select_p);
        end
    end

    // dupName_0_sync_out_aunroll_vunroll_x(GPOUT,138)@6
    assign out_o_readdata_0_0_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_0_0_x_q;
    assign out_o_readdata_0_1_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_1_0_x_q;
    assign out_o_readdata_0_2_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_2_0_x_q;
    assign out_o_readdata_0_3_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_3_0_x_q;
    assign out_o_readdata_0_4_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_4_0_x_q;
    assign out_o_readdata_0_5_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_5_0_x_q;
    assign out_o_readdata_0_6_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_6_0_x_q;
    assign out_o_readdata_0_7_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_7_0_x_q;
    assign out_o_readdata_0_8_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_8_0_x_q;
    assign out_o_readdata_0_9_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_9_0_x_q;
    assign out_o_readdata_0_10_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_10_0_x_q;
    assign out_o_readdata_0_11_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_11_0_x_q;
    assign out_o_readdata_0_12_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_12_0_x_q;
    assign out_o_readdata_0_13_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_13_0_x_q;
    assign out_o_readdata_0_14_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_14_0_x_q;
    assign out_o_readdata_0_15_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_15_0_x_q;
    assign out_o_readdata_0_16_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_16_0_x_q;
    assign out_o_readdata_0_17_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_17_0_x_q;
    assign out_o_readdata_0_18_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_18_0_x_q;
    assign out_o_readdata_0_19_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_19_0_x_q;
    assign out_o_readdata_0_20_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_20_0_x_q;
    assign out_o_readdata_0_21_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_21_0_x_q;
    assign out_o_readdata_0_22_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_22_0_x_q;
    assign out_o_readdata_0_23_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_23_0_x_q;
    assign out_o_readdata_24_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_24_x_q;
    assign out_o_readdata_25_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_25_x_q;
    assign out_o_readdata_26_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_26_x_q;
    assign out_o_readdata_27_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_data_reg_27_x_q;
    assign out_o_valid = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x11_valid_reg_x_q;

endmodule
