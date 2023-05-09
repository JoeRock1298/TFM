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

// SystemVerilog created from mmul_i_llvm_fpga_mem_memcoalesce_load_fpgaunique_321_mmul0
// SystemVerilog created on Sat May  6 18:14:24 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_i_llvm_fpga_mem_memcoalesce_load_fpgaunique_321_mmul0 (
    input wire [1023:0] in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_readdata,
    input wire [0:0] in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writeack,
    input wire [0:0] in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_readdatavalid,
    output wire [31:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address,
    output wire [0:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable,
    output wire [0:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read,
    output wire [0:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write,
    output wire [1023:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata,
    output wire [127:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [63:0] in_AddrOffset,
    input wire [63:0] in_i_address,
    input wire [0:0] in_i_dependence,
    input wire [0:0] in_i_predicate,
    input wire [0:0] in_i_valid,
    output wire [31:0] out_o_readdata_0_tpl,
    output wire [31:0] out_o_readdata_1_tpl,
    output wire [31:0] out_o_readdata_2_tpl,
    output wire [31:0] out_o_readdata_3_tpl,
    output wire [31:0] out_o_readdata_4_tpl,
    output wire [31:0] out_o_readdata_5_tpl,
    output wire [31:0] out_o_readdata_6_tpl,
    output wire [31:0] out_o_readdata_7_tpl,
    output wire [31:0] out_o_readdata_8_tpl,
    output wire [31:0] out_o_readdata_9_tpl,
    output wire [31:0] out_o_readdata_10_tpl,
    output wire [31:0] out_o_readdata_11_tpl,
    output wire [31:0] out_o_readdata_12_tpl,
    output wire [31:0] out_o_readdata_13_tpl,
    output wire [31:0] out_o_readdata_14_tpl,
    output wire [31:0] out_o_readdata_15_tpl,
    output wire [31:0] out_o_readdata_16_tpl,
    output wire [31:0] out_o_readdata_17_tpl,
    output wire [31:0] out_o_readdata_18_tpl,
    output wire [31:0] out_o_readdata_19_tpl,
    output wire [31:0] out_o_readdata_20_tpl,
    output wire [31:0] out_o_readdata_21_tpl,
    output wire [31:0] out_o_readdata_22_tpl,
    output wire [31:0] out_o_readdata_23_tpl,
    output wire [31:0] out_o_readdata_24_tpl,
    output wire [31:0] out_o_readdata_25_tpl,
    output wire [31:0] out_o_readdata_26_tpl,
    output wire [31:0] out_o_readdata_27_tpl,
    output wire [31:0] out_o_readdata_28_tpl,
    output wire [31:0] out_o_readdata_29_tpl,
    output wire [31:0] out_o_readdata_30_tpl,
    output wire [31:0] out_o_readdata_31_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] JoinADDNodeTruncB_q;
    wire [24:0] Or_rsrvd_fix_q;
    wire [1023:0] c_i1024_068_q;
    wire [127:0] c_i128_069_q;
    wire [31:0] c_i32_02_q;
    wire [2:0] c_i3_073_q;
    wire [1023:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_readdata;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_readdatavalid;
    wire i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_readdatavalid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_waitrequest;
    wire i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_waitrequest_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_writeack;
    wire i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_writeack_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_clock2x;
    wire i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_clock2x_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_flush;
    wire i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_flush_bitsignaltemp;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_address;
    wire [2:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_atomic_op;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_bitwiseor;
    wire [127:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_byteenable;
    wire [1023:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_cmpdata;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_predicate;
    wire i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_predicate_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_stall;
    wire i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_valid;
    wire i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_valid_bitsignaltemp;
    wire [1023:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_writedata;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_stream_base_addr;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_stream_reset;
    wire i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_stream_reset_bitsignaltemp;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_stream_size;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_address;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_burstcount;
    wire i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_burstcount_bitsignaltemp;
    wire [127:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_enable;
    wire i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_enable_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_read;
    wire i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_read_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_write;
    wire i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_write_bitsignaltemp;
    wire [1023:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_writedata;
    wire [4:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_input_fifo_depth;
    wire [1023:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_stall;
    wire i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_valid;
    wire i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_writeack;
    wire i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_writeack_bitsignaltemp;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_profile_avm_burstcount_total_incr;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_profile_bw_incr;
    wire [24:0] AddrOffsetTrunc_sel_x_b;
    wire [31:0] addr_trunc_sel_x_b;
    reg [0:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_valid_reg_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_1_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_2_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_3_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_4_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_5_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_6_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_7_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_8_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_9_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_10_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_11_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_12_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_13_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_14_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_15_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_16_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_17_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_18_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_19_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_20_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_21_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_22_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_23_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_24_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_25_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_26_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_27_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_28_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_29_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_30_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_31_x_q;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_b;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_c;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_d;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_e;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_f;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_g;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_h;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_i;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_j;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_k;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_l;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_m;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_n;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_p;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_q;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_r;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_s;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_t;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_u;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_v;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_w;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_x;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_y;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_z;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_aa;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_bb;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_cc;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_dd;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_ee;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_ff;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_gg;
    wire [24:0] SelA_merged_bit_select_b;
    wire [6:0] SelA_merged_bit_select_c;


    // c_i1024_068(CONSTANT,8)
    assign c_i1024_068_q = $unsigned(1024'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);

    // c_i128_069(CONSTANT,10)
    assign c_i128_069_q = $unsigned(128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);

    // c_i32_02(CONSTANT,13)
    assign c_i32_02_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i3_073(CONSTANT,16)
    assign c_i3_073_q = $unsigned(3'b000);

    // AddrOffsetTrunc_sel_x(BITSELECT,88)@294
    assign AddrOffsetTrunc_sel_x_b = in_AddrOffset[24:0];

    // Or_rsrvd_fix(LOGICAL,4)@294
    assign Or_rsrvd_fix_q = AddrOffsetTrunc_sel_x_b | SelA_merged_bit_select_b;

    // addr_trunc_sel_x(BITSELECT,89)@294
    assign addr_trunc_sel_x_b = in_i_address[31:0];

    // SelA_merged_bit_select(BITSELECT,128)@294
    assign SelA_merged_bit_select_b = addr_trunc_sel_x_b[31:7];
    assign SelA_merged_bit_select_c = addr_trunc_sel_x_b[6:0];

    // JoinADDNodeTruncB(BITJOIN,3)@294
    assign JoinADDNodeTruncB_q = {Or_rsrvd_fix_q, SelA_merged_bit_select_c};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1(EXTIFACE,19)@294 + 3
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_readdata = in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_readdata;
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_readdatavalid = in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_readdatavalid;
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_waitrequest = in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_waitrequest;
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_writeack = in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writeack;
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_clock2x = GND_q;
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_flush = in_flush;
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_address = JoinADDNodeTruncB_q;
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_atomic_op = c_i3_073_q;
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_bitwiseor = c_i32_02_q;
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_byteenable = c_i128_069_q;
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_cmpdata = c_i1024_068_q;
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_predicate = in_i_predicate;
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_stall = GND_q;
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_valid = in_i_valid;
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_writedata = c_i1024_068_q;
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_stream_base_addr = c_i32_02_q;
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_stream_reset = GND_q;
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_stream_size = c_i32_02_q;
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_readdatavalid_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_readdatavalid[0];
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_waitrequest_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_waitrequest[0];
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_writeack_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_writeack[0];
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_clock2x_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_clock2x[0];
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_flush_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_flush[0];
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_predicate_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_predicate[0];
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_stall_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_stall[0];
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_valid_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_valid[0];
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_stream_reset_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_stream_reset[0];
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_burstcount[0] = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_burstcount_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_enable[0] = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_enable_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_read[0] = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_read_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_write[0] = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_write_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_stall[0] = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_stall_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_valid[0] = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_valid_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_writeack[0] = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_writeack_bitsignaltemp;
    lsu_top #(
        .ABITS_PER_LMEM_BANK(16),
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
        .KERNEL_SIDE_MEM_LATENCY(3),
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
    ) thei_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1 (
        .avm_readdata(in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_readdata),
        .avm_readdatavalid(i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_readdatavalid_bitsignaltemp),
        .avm_waitrequest(i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_waitrequest_bitsignaltemp),
        .avm_writeack(i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_writeack_bitsignaltemp),
        .clock2x(i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_clock2x_bitsignaltemp),
        .flush(i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_flush_bitsignaltemp),
        .i_address(JoinADDNodeTruncB_q),
        .i_atomic_op(c_i3_073_q),
        .i_bitwiseor(c_i32_02_q),
        .i_byteenable(c_i128_069_q),
        .i_cmpdata(c_i1024_068_q),
        .i_predicate(i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_predicate_bitsignaltemp),
        .i_stall(i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_i_valid_bitsignaltemp),
        .i_writedata(c_i1024_068_q),
        .stream_base_addr(c_i32_02_q),
        .stream_reset(i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_stream_reset_bitsignaltemp),
        .stream_size(c_i32_02_q),
        .avm_address(i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_address),
        .avm_burstcount(i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_burstcount_bitsignaltemp),
        .avm_byteenable(i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_byteenable),
        .avm_enable(i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_enable_bitsignaltemp),
        .avm_read(i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_read_bitsignaltemp),
        .avm_write(i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_write_bitsignaltemp),
        .avm_writedata(i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_writedata),
        .o_input_fifo_depth(),
        .o_readdata(i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata),
        .o_stall(i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_valid_bitsignaltemp),
        .o_writeack(i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_writeack_bitsignaltemp),
        .profile_avm_burstcount_total_incr(),
        .profile_bw_incr(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,18)
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_address;
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_enable;
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_read;
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_write;
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_writedata;
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_byteenable;
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_avm_burstcount;

    // sync_out(GPOUT,86)@297
    assign out_o_stall = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_stall;

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_valid_reg_x(REG,92)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_valid_reg_x_q <= $unsigned(1'b0);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_valid_reg_x_q <= i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_valid;
        end
    end

    // ip_dsdk_adapt_bitselect10_merged_bit_select(BITSELECT,127)@297
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_b = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[127:96];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_c = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[159:128];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_d = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[191:160];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_e = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[223:192];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_f = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[255:224];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_g = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[287:256];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_h = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[319:288];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_i = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[351:320];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_j = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[383:352];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_k = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[415:384];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_l = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[447:416];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_m = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[479:448];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_n = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[511:480];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[543:512];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_p = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[575:544];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_q = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[31:0];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_r = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[607:576];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_s = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[639:608];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_t = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[671:640];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_u = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[703:672];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_v = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[735:704];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_w = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[767:736];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_x = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[799:768];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_y = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[831:800];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_z = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[863:832];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_aa = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[895:864];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_bb = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[63:32];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_cc = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[927:896];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_dd = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[959:928];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_ee = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[991:960];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_ff = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[1023:992];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_gg = i_llvm_fpga_mem_memcoalesce_load_mmul_fpgaunique_321_mmul1_o_readdata[95:64];

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_31_x(REG,124)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_31_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_31_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_ff);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_30_x(REG,123)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_30_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_30_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_ee);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_29_x(REG,122)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_29_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_29_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_dd);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_28_x(REG,121)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_28_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_28_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_cc);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_27_x(REG,120)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_27_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_27_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_aa);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_26_x(REG,119)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_26_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_26_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_z);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_25_x(REG,118)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_25_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_25_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_y);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_24_x(REG,117)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_24_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_24_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_x);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_23_x(REG,116)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_23_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_23_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_w);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_22_x(REG,115)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_22_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_22_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_v);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_21_x(REG,114)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_21_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_21_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_u);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_20_x(REG,113)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_20_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_20_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_t);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_19_x(REG,112)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_19_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_19_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_s);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_18_x(REG,111)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_18_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_18_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_r);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_17_x(REG,110)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_17_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_17_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_p);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_16_x(REG,109)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_16_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_16_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_o);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_15_x(REG,108)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_15_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_15_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_n);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_14_x(REG,107)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_14_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_14_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_m);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_13_x(REG,106)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_13_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_13_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_l);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_12_x(REG,105)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_12_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_12_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_k);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_11_x(REG,104)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_11_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_11_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_j);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_10_x(REG,103)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_10_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_10_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_i);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_9_x(REG,102)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_9_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_9_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_h);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_8_x(REG,101)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_8_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_8_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_g);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_7_x(REG,100)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_7_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_7_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_f);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_6_x(REG,99)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_6_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_6_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_e);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_5_x(REG,98)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_5_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_5_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_d);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_4_x(REG,97)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_4_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_4_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_c);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_3_x(REG,96)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_3_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_3_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_b);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_2_x(REG,95)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_2_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_2_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_gg);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_1_x(REG,94)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_1_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_1_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_bb);
        end
    end

    // readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_0_x(REG,93)@297 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_0_x_q <= $unsigned(ip_dsdk_adapt_bitselect10_merged_bit_select_q);
        end
    end

    // dupName_0_sync_out_aunroll_x(GPOUT,125)@298
    assign out_o_readdata_0_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_0_x_q;
    assign out_o_readdata_1_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_1_x_q;
    assign out_o_readdata_2_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_2_x_q;
    assign out_o_readdata_3_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_3_x_q;
    assign out_o_readdata_4_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_4_x_q;
    assign out_o_readdata_5_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_5_x_q;
    assign out_o_readdata_6_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_6_x_q;
    assign out_o_readdata_7_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_7_x_q;
    assign out_o_readdata_8_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_8_x_q;
    assign out_o_readdata_9_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_9_x_q;
    assign out_o_readdata_10_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_10_x_q;
    assign out_o_readdata_11_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_11_x_q;
    assign out_o_readdata_12_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_12_x_q;
    assign out_o_readdata_13_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_13_x_q;
    assign out_o_readdata_14_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_14_x_q;
    assign out_o_readdata_15_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_15_x_q;
    assign out_o_readdata_16_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_16_x_q;
    assign out_o_readdata_17_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_17_x_q;
    assign out_o_readdata_18_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_18_x_q;
    assign out_o_readdata_19_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_19_x_q;
    assign out_o_readdata_20_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_20_x_q;
    assign out_o_readdata_21_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_21_x_q;
    assign out_o_readdata_22_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_22_x_q;
    assign out_o_readdata_23_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_23_x_q;
    assign out_o_readdata_24_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_24_x_q;
    assign out_o_readdata_25_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_25_x_q;
    assign out_o_readdata_26_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_26_x_q;
    assign out_o_readdata_27_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_27_x_q;
    assign out_o_readdata_28_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_28_x_q;
    assign out_o_readdata_29_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_29_x_q;
    assign out_o_readdata_30_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_30_x_q;
    assign out_o_readdata_31_tpl = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_data_reg_31_x_q;
    assign out_o_valid = readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_readdata_reg_memcoalesce_load_mmul_fpgaunique_321_mmul2_valid_reg_x_q;

endmodule
