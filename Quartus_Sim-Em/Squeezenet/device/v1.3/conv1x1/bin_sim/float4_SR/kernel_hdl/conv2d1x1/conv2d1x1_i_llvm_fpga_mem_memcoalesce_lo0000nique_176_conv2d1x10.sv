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

// SystemVerilog created from conv2d1x1_i_llvm_fpga_mem_memcoalesce_lo0000nique_176_conv2d1x10
// SystemVerilog created on Wed May 24 11:22:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_llvm_fpga_mem_memcoalesce_lo0000nique_176_conv2d1x10 (
    input wire [511:0] in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_readdata,
    input wire [0:0] in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writeack,
    input wire [0:0] in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_readdatavalid,
    output wire [31:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_address,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_enable,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_read,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_write,
    output wire [511:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writedata,
    output wire [63:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_burstcount,
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
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] JoinADDNodeTruncB_q;
    wire [24:0] Or_rsrvd_fix_q;
    wire [31:0] c_i32_03_q;
    wire [2:0] c_i3_074_q;
    wire [511:0] c_i512_069_q;
    wire [63:0] c_i64_070_q;
    wire [511:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_readdata;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_readdatavalid;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_readdatavalid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_waitrequest;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_waitrequest_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_writeack;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_writeack_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_clock2x;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_clock2x_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_flush;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_flush_bitsignaltemp;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_address;
    wire [2:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_atomic_op;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_bitwiseor;
    wire [63:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_byteenable;
    wire [511:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_cmpdata;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_predicate;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_predicate_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_stall;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_valid;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_valid_bitsignaltemp;
    wire [511:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_writedata;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_stream_base_addr;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_stream_reset;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_stream_reset_bitsignaltemp;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_stream_size;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_address;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_burstcount;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_burstcount_bitsignaltemp;
    wire [63:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_enable;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_enable_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_read;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_read_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_write;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_write_bitsignaltemp;
    wire [511:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_writedata;
    wire [4:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_input_fifo_depth;
    wire [511:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_readdata;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_stall;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_valid;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_writeack;
    wire i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_writeack_bitsignaltemp;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_profile_avm_burstcount_total_incr;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_profile_bw_incr;
    wire [24:0] AddrOffsetTrunc_sel_x_b;
    wire [31:0] addr_trunc_sel_x_b;
    reg [0:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_valid_reg_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_0_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_1_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_2_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_3_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_4_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_5_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_6_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_7_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_8_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_9_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_10_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_11_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_12_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_13_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_14_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_15_0_x_q;
    wire [31:0] ip_dsdk_adapt_bitselect13_merged_bit_select_b;
    wire [31:0] ip_dsdk_adapt_bitselect13_merged_bit_select_c;
    wire [31:0] ip_dsdk_adapt_bitselect13_merged_bit_select_d;
    wire [31:0] ip_dsdk_adapt_bitselect13_merged_bit_select_e;
    wire [31:0] ip_dsdk_adapt_bitselect13_merged_bit_select_f;
    wire [31:0] ip_dsdk_adapt_bitselect13_merged_bit_select_g;
    wire [31:0] ip_dsdk_adapt_bitselect13_merged_bit_select_h;
    wire [31:0] ip_dsdk_adapt_bitselect13_merged_bit_select_i;
    wire [31:0] ip_dsdk_adapt_bitselect13_merged_bit_select_j;
    wire [31:0] ip_dsdk_adapt_bitselect13_merged_bit_select_k;
    wire [31:0] ip_dsdk_adapt_bitselect13_merged_bit_select_l;
    wire [31:0] ip_dsdk_adapt_bitselect13_merged_bit_select_m;
    wire [31:0] ip_dsdk_adapt_bitselect13_merged_bit_select_n;
    wire [31:0] ip_dsdk_adapt_bitselect13_merged_bit_select_o;
    wire [31:0] ip_dsdk_adapt_bitselect13_merged_bit_select_p;
    wire [31:0] ip_dsdk_adapt_bitselect13_merged_bit_select_q;
    wire [24:0] SelA_merged_bit_select_b;
    wire [6:0] SelA_merged_bit_select_c;


    // c_i512_069(CONSTANT,15)
    assign c_i512_069_q = $unsigned(512'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);

    // c_i64_070(CONSTANT,17)
    assign c_i64_070_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // c_i32_03(CONSTANT,11)
    assign c_i32_03_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i3_074(CONSTANT,14)
    assign c_i3_074_q = $unsigned(3'b000);

    // AddrOffsetTrunc_sel_x(BITSELECT,73)@1
    assign AddrOffsetTrunc_sel_x_b = in_AddrOffset[24:0];

    // Or_rsrvd_fix(LOGICAL,4)@1
    assign Or_rsrvd_fix_q = AddrOffsetTrunc_sel_x_b | SelA_merged_bit_select_b;

    // addr_trunc_sel_x(BITSELECT,74)@1
    assign addr_trunc_sel_x_b = in_i_address[31:0];

    // SelA_merged_bit_select(BITSELECT,97)@1
    assign SelA_merged_bit_select_b = addr_trunc_sel_x_b[31:7];
    assign SelA_merged_bit_select_c = addr_trunc_sel_x_b[6:0];

    // JoinADDNodeTruncB(BITJOIN,3)@1
    assign JoinADDNodeTruncB_q = {Or_rsrvd_fix_q, SelA_merged_bit_select_c};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11(EXTIFACE,20)@1 + 4
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_readdata = in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_readdata;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_readdatavalid = in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_readdatavalid;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_waitrequest = in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_waitrequest;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_writeack = in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writeack;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_clock2x = GND_q;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_flush = in_flush;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_address = JoinADDNodeTruncB_q;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_atomic_op = c_i3_074_q;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_bitwiseor = c_i32_03_q;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_byteenable = c_i64_070_q;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_cmpdata = c_i512_069_q;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_predicate = GND_q;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_stall = GND_q;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_valid = in_i_valid;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_writedata = c_i512_069_q;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_stream_base_addr = c_i32_03_q;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_stream_reset = GND_q;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_stream_size = c_i32_03_q;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_readdatavalid_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_readdatavalid[0];
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_waitrequest_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_waitrequest[0];
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_writeack_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_writeack[0];
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_clock2x_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_clock2x[0];
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_flush_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_flush[0];
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_predicate_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_predicate[0];
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_stall_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_stall[0];
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_valid_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_valid[0];
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_stream_reset_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_stream_reset[0];
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_burstcount[0] = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_burstcount_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_enable[0] = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_enable_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_read[0] = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_read_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_write[0] = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_write_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_stall[0] = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_stall_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_valid[0] = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_valid_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_writeack[0] = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_writeack_bitsignaltemp;
    lsu_top #(
        .ABITS_PER_LMEM_BANK(8),
        .ADDRSPACE(64),
        .ALIGNMENT_BYTES(64),
        .ALLOW_HIGH_SPEED_FIFO_USAGE(0),
        .ASYNC_RESET(1),
        .ATOMIC(0),
        .ATOMIC_WIDTH(3),
        .AVM_READ_DATA_LATENESS(0),
        .AVM_WRITE_DATA_LATENESS(0),
        .AWIDTH(32),
        .BURSTCOUNT_WIDTH(1),
        .ENABLE_BANKED_MEMORY(1),
        .FORCE_NOP_SUPPORT(1),
        .HIGH_FMAX(1),
        .INPUTFIFO_USEDW_MAXBITS(5),
        .KERNEL_SIDE_MEM_LATENCY(4),
        .LMEM_ADDR_PERMUTATION_STYLE(0),
        .MEMORY_SIDE_MEM_LATENCY(0),
        .MWIDTH_BYTES(64),
        .NUMBER_BANKS(2),
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
        .WIDTH_BYTES(64),
        .WRITEDATAWIDTH_BYTES(64)
    ) thei_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11 (
        .avm_readdata(in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_readdata),
        .avm_readdatavalid(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_readdatavalid_bitsignaltemp),
        .avm_waitrequest(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_waitrequest_bitsignaltemp),
        .avm_writeack(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_writeack_bitsignaltemp),
        .clock2x(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_clock2x_bitsignaltemp),
        .flush(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_flush_bitsignaltemp),
        .i_address(JoinADDNodeTruncB_q),
        .i_atomic_op(c_i3_074_q),
        .i_bitwiseor(c_i32_03_q),
        .i_byteenable(c_i64_070_q),
        .i_cmpdata(c_i512_069_q),
        .i_predicate(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_predicate_bitsignaltemp),
        .i_stall(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_i_valid_bitsignaltemp),
        .i_writedata(c_i512_069_q),
        .stream_base_addr(c_i32_03_q),
        .stream_reset(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_stream_reset_bitsignaltemp),
        .stream_size(c_i32_03_q),
        .avm_address(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_address),
        .avm_burstcount(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_burstcount_bitsignaltemp),
        .avm_byteenable(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_byteenable),
        .avm_enable(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_enable_bitsignaltemp),
        .avm_read(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_read_bitsignaltemp),
        .avm_write(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_write_bitsignaltemp),
        .avm_writedata(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_writedata),
        .o_input_fifo_depth(),
        .o_readdata(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_readdata),
        .o_stall(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_valid_bitsignaltemp),
        .o_writeack(i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_writeack_bitsignaltemp),
        .profile_avm_burstcount_total_incr(),
        .profile_bw_incr(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,19)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_address = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_address;
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_enable = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_enable;
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_read = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_read;
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_write = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_write;
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writedata = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_writedata;
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_byteenable;
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_avm_burstcount;

    // sync_out(GPOUT,71)@5
    assign out_o_stall = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_stall;

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_valid_reg_x(REG,77)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_valid_reg_x_q <= $unsigned(1'b0);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_valid_reg_x_q <= i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_valid;
        end
    end

    // ip_dsdk_adapt_bitselect13_merged_bit_select(BITSELECT,96)@5
    assign ip_dsdk_adapt_bitselect13_merged_bit_select_b = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_readdata[95:64];
    assign ip_dsdk_adapt_bitselect13_merged_bit_select_c = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_readdata[127:96];
    assign ip_dsdk_adapt_bitselect13_merged_bit_select_d = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_readdata[159:128];
    assign ip_dsdk_adapt_bitselect13_merged_bit_select_e = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_readdata[191:160];
    assign ip_dsdk_adapt_bitselect13_merged_bit_select_f = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_readdata[223:192];
    assign ip_dsdk_adapt_bitselect13_merged_bit_select_g = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_readdata[255:224];
    assign ip_dsdk_adapt_bitselect13_merged_bit_select_h = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_readdata[287:256];
    assign ip_dsdk_adapt_bitselect13_merged_bit_select_i = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_readdata[319:288];
    assign ip_dsdk_adapt_bitselect13_merged_bit_select_j = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_readdata[351:320];
    assign ip_dsdk_adapt_bitselect13_merged_bit_select_k = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_readdata[383:352];
    assign ip_dsdk_adapt_bitselect13_merged_bit_select_l = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_readdata[31:0];
    assign ip_dsdk_adapt_bitselect13_merged_bit_select_m = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_readdata[415:384];
    assign ip_dsdk_adapt_bitselect13_merged_bit_select_n = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_readdata[447:416];
    assign ip_dsdk_adapt_bitselect13_merged_bit_select_o = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_readdata[479:448];
    assign ip_dsdk_adapt_bitselect13_merged_bit_select_p = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_readdata[511:480];
    assign ip_dsdk_adapt_bitselect13_merged_bit_select_q = i_llvm_fpga_mem_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_o_readdata[63:32];

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_15_0_x(REG,93)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_15_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_15_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect13_merged_bit_select_p);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_14_0_x(REG,92)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_14_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_14_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect13_merged_bit_select_o);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_13_0_x(REG,91)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_13_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_13_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect13_merged_bit_select_n);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_12_0_x(REG,90)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_12_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_12_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect13_merged_bit_select_m);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_11_0_x(REG,89)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_11_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_11_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect13_merged_bit_select_k);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_10_0_x(REG,88)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_10_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_10_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect13_merged_bit_select_j);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_9_0_x(REG,87)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_9_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_9_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect13_merged_bit_select_i);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_8_0_x(REG,86)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_8_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_8_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect13_merged_bit_select_h);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_7_0_x(REG,85)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_7_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_7_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect13_merged_bit_select_g);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_6_0_x(REG,84)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_6_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_6_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect13_merged_bit_select_f);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_5_0_x(REG,83)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_5_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_5_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect13_merged_bit_select_e);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_4_0_x(REG,82)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_4_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_4_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect13_merged_bit_select_d);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_3_0_x(REG,81)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_3_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_3_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect13_merged_bit_select_c);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_2_0_x(REG,80)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_2_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_2_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect13_merged_bit_select_b);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_1_0_x(REG,79)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_1_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_1_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect13_merged_bit_select_q);
        end
    end

    // readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_0_0_x(REG,78)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_0_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_0_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect13_merged_bit_select_l);
        end
    end

    // dupName_0_sync_out_aunroll_vunroll_x(GPOUT,94)@6
    assign out_o_readdata_0_0_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_0_0_x_q;
    assign out_o_readdata_0_1_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_1_0_x_q;
    assign out_o_readdata_0_2_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_2_0_x_q;
    assign out_o_readdata_0_3_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_3_0_x_q;
    assign out_o_readdata_0_4_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_4_0_x_q;
    assign out_o_readdata_0_5_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_5_0_x_q;
    assign out_o_readdata_0_6_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_6_0_x_q;
    assign out_o_readdata_0_7_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_7_0_x_q;
    assign out_o_readdata_0_8_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_8_0_x_q;
    assign out_o_readdata_0_9_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_9_0_x_q;
    assign out_o_readdata_0_10_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_10_0_x_q;
    assign out_o_readdata_0_11_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_11_0_x_q;
    assign out_o_readdata_0_12_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_12_0_x_q;
    assign out_o_readdata_0_13_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_13_0_x_q;
    assign out_o_readdata_0_14_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_14_0_x_q;
    assign out_o_readdata_0_15_tpl = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_data_reg_15_0_x_q;
    assign out_o_valid = readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_readdata_reg_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x11_valid_reg_x_q;

endmodule
