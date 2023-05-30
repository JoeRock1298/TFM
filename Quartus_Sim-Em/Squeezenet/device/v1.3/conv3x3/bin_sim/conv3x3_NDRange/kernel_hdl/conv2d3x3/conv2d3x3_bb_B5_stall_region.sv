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

// SystemVerilog created from conv2d3x3_bb_B5_stall_region
// SystemVerilog created on Tue May 30 12:30:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B5_stall_region (
    input wire [511:0] in_lm_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm_conv2d3x3_avm_writeack,
    input wire [0:0] in_lm_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm_conv2d3x3_avm_readdatavalid,
    output wire [30:0] out_lm_conv2d3x3_avm_address,
    output wire [0:0] out_lm_conv2d3x3_avm_enable,
    output wire [0:0] out_lm_conv2d3x3_avm_read,
    output wire [0:0] out_lm_conv2d3x3_avm_write,
    output wire [511:0] out_lm_conv2d3x3_avm_writedata,
    output wire [63:0] out_lm_conv2d3x3_avm_byteenable,
    output wire [4:0] out_lm_conv2d3x3_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe1081,
    input wire [63:0] in_c0_exe111,
    input wire [31:0] in_c0_exe1186151,
    input wire [0:0] in_c0_exe1190,
    input wire [31:0] in_c0_exe1195167,
    input wire [31:0] in_c0_exe12101,
    input wire [0:0] in_c0_exe13111,
    input wire [0:0] in_c0_exe14120,
    input wire [0:0] in_c0_exe15130,
    input wire [0:0] in_c0_exe16140,
    input wire [31:0] in_c0_exe2196168,
    input wire [63:0] in_c0_exe322,
    input wire [0:0] in_c0_exe431,
    input wire [31:0] in_c0_exe542,
    input wire [31:0] in_c0_exe649,
    input wire [0:0] in_c0_exe752,
    input wire [0:0] in_c0_exe861,
    input wire [31:0] in_c0_exe971,
    input wire [31:0] in_j_062149,
    input wire [31:0] in_k_059163,
    input wire [31:0] in_m_053,
    input wire [31:0] in_mul46_add4172,
    input wire [31:0] in_tmp_252,
    input wire [31:0] in_unnamed_conv2d3x37,
    input wire [0:0] in_valid_in,
    input wire [511:0] in_lm13_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm13_conv2d3x3_avm_writeack,
    input wire [0:0] in_lm13_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm13_conv2d3x3_avm_readdatavalid,
    output wire [30:0] out_lm13_conv2d3x3_avm_address,
    output wire [0:0] out_lm13_conv2d3x3_avm_enable,
    output wire [0:0] out_lm13_conv2d3x3_avm_read,
    output wire [0:0] out_lm13_conv2d3x3_avm_write,
    output wire [511:0] out_lm13_conv2d3x3_avm_writedata,
    output wire [63:0] out_lm13_conv2d3x3_avm_byteenable,
    output wire [4:0] out_lm13_conv2d3x3_avm_burstcount,
    output wire [0:0] out_c0_exe1081,
    output wire [63:0] out_c0_exe111,
    output wire [31:0] out_c0_exe1186151,
    output wire [0:0] out_c0_exe1190,
    output wire [31:0] out_c0_exe1195167,
    output wire [31:0] out_c0_exe12101,
    output wire [31:0] out_c0_exe1214,
    output wire [0:0] out_c0_exe13111,
    output wire [0:0] out_c0_exe14120,
    output wire [0:0] out_c0_exe15130,
    output wire [0:0] out_c0_exe16140,
    output wire [31:0] out_c0_exe2196168,
    output wire [63:0] out_c0_exe322,
    output wire [0:0] out_c0_exe431,
    output wire [31:0] out_c0_exe542,
    output wire [31:0] out_c0_exe649,
    output wire [0:0] out_c0_exe752,
    output wire [0:0] out_c0_exe861,
    output wire [31:0] out_c0_exe971,
    output wire [31:0] out_inc,
    output wire [31:0] out_j_062149,
    output wire [31:0] out_k_059163,
    output wire [31:0] out_mul46_add4172,
    output wire [31:0] out_unnamed_conv2d3x37,
    output wire [0:0] out_unnamed_conv2d3x38,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_127_q;
    wire [31:0] c_i32_328_q;
    wire [32:0] i_add43_conv2d3x310_a;
    wire [32:0] i_add43_conv2d3x310_b;
    logic [32:0] i_add43_conv2d3x310_o;
    wire [32:0] i_add43_conv2d3x310_q;
    wire [32:0] i_add49_conv2d3x34_a;
    wire [32:0] i_add49_conv2d3x34_b;
    logic [32:0] i_add49_conv2d3x34_o;
    wire [32:0] i_add49_conv2d3x34_q;
    wire [1:0] i_arrayidx459_conv2d3x318_vt_const_1_q;
    wire [63:0] i_arrayidx459_conv2d3x318_vt_join_q;
    wire [61:0] i_arrayidx459_conv2d3x318_vt_select_63_b;
    wire [33:0] i_cmp22_conv2d3x35_a;
    wire [33:0] i_cmp22_conv2d3x35_b;
    logic [33:0] i_cmp22_conv2d3x35_o;
    wire [0:0] i_cmp22_conv2d3x35_c;
    wire [33:0] i_cmp34_conv2d3x36_a;
    wire [33:0] i_cmp34_conv2d3x36_b;
    logic [33:0] i_cmp34_conv2d3x36_o;
    wire [0:0] i_cmp34_conv2d3x36_c;
    wire [33:0] i_cmp37_conv2d3x38_a;
    wire [33:0] i_cmp37_conv2d3x38_b;
    logic [33:0] i_cmp37_conv2d3x38_o;
    wire [0:0] i_cmp37_conv2d3x38_c;
    wire [31:0] i_idxprom50_conv2d3x311_vt_const_63_q;
    wire [63:0] i_idxprom50_conv2d3x311_vt_join_q;
    wire [31:0] i_idxprom50_conv2d3x311_vt_select_31_b;
    wire [32:0] i_inc_conv2d3x32_a;
    wire [32:0] i_inc_conv2d3x32_b;
    logic [32:0] i_inc_conv2d3x32_o;
    wire [32:0] i_inc_conv2d3x32_q;
    wire [31:0] i_inc_conv2d3x32_vt_join_q;
    wire [30:0] i_inc_conv2d3x32_vt_select_30_b;
    wire [30:0] i_llvm_fpga_mem_lm13_conv2d3x322_out_lm13_conv2d3x3_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm13_conv2d3x322_out_lm13_conv2d3x3_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm13_conv2d3x322_out_lm13_conv2d3x3_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm13_conv2d3x322_out_lm13_conv2d3x3_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm13_conv2d3x322_out_lm13_conv2d3x3_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm13_conv2d3x322_out_lm13_conv2d3x3_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm13_conv2d3x322_out_lm13_conv2d3x3_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm13_conv2d3x322_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm13_conv2d3x322_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm13_conv2d3x322_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm_conv2d3x321_out_lm_conv2d3x3_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm_conv2d3x321_out_lm_conv2d3x3_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm_conv2d3x321_out_lm_conv2d3x3_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm_conv2d3x321_out_lm_conv2d3x3_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm_conv2d3x321_out_lm_conv2d3x3_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm_conv2d3x321_out_lm_conv2d3x3_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm_conv2d3x321_out_lm_conv2d3x3_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm_conv2d3x321_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm_conv2d3x321_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm_conv2d3x321_out_o_valid;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31_out_valid_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31_vt_select_63_b;
    wire [0:0] i_phi_decision34_and_i0_conv2d3x319_q;
    wire [0:0] i_reduction_conv2d3x3_0_conv2d3x314_q;
    wire [0:0] i_reduction_conv2d3x3_1_conv2d3x313_q;
    wire [0:0] i_reduction_conv2d3x3_2_conv2d3x317_q;
    wire [32:0] i_sub28_conv2d3x33_a;
    wire [32:0] i_sub28_conv2d3x33_b;
    logic [32:0] i_sub28_conv2d3x33_o;
    wire [32:0] i_sub28_conv2d3x33_q;
    wire [0:0] i_unnamed_conv2d3x312_q;
    wire [0:0] i_unnamed_conv2d3x320_q;
    wire [31:0] bgTrunc_i_add43_conv2d3x310_sel_x_b;
    wire [31:0] bgTrunc_i_add49_conv2d3x34_sel_x_b;
    wire [31:0] bgTrunc_i_inc_conv2d3x32_sel_x_b;
    wire [31:0] bgTrunc_i_sub28_conv2d3x33_sel_x_b;
    wire [31:0] c_i32_129_recast_x_q;
    wire [0:0] conv2d3x3_B5_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv2d3x3_B5_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [63:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [63:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [31:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [0:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [0:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [31:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [0:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [0:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [0:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [0:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [31:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_17_tpl;
    wire [31:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_18_tpl;
    wire [31:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_19_tpl;
    wire [31:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_20_tpl;
    wire [31:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_21_tpl;
    wire [31:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_22_tpl;
    wire [31:0] conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_23_tpl;
    wire [64:0] i_arrayidx459_conv2d3x30_add_x_a;
    wire [64:0] i_arrayidx459_conv2d3x30_add_x_b;
    logic [64:0] i_arrayidx459_conv2d3x30_add_x_o;
    wire [64:0] i_arrayidx459_conv2d3x30_add_x_q;
    wire [61:0] i_arrayidx459_conv2d3x30_narrow_x_b;
    wire [63:0] i_arrayidx459_conv2d3x30_shift_join_x_q;
    wire [63:0] i_arrayidx459_conv2d3x30_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx5110_conv2d3x30_add_x_a;
    wire [64:0] i_arrayidx5110_conv2d3x30_add_x_b;
    logic [64:0] i_arrayidx5110_conv2d3x30_add_x_o;
    wire [64:0] i_arrayidx5110_conv2d3x30_add_x_q;
    wire [61:0] i_arrayidx5110_conv2d3x30_narrow_x_b;
    wire [63:0] i_arrayidx5110_conv2d3x30_shift_join_x_q;
    wire [63:0] i_arrayidx5110_conv2d3x30_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom44_conv2d3x315_sel_x_b;
    wire [63:0] i_idxprom50_conv2d3x311_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_for_body25_conv2d3x3s_c0_enter208183_conv2d3x324_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body25_conv2d3x3s_c0_enter208183_conv2d3x324_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_body25_conv2d3x3s_c0_enter208183_conv2d3x324_aunroll_x_out_c0_exit213_1_tpl;
    wire [162:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [0:0] sel_for_coalesced_delay_0_f;
    wire [0:0] sel_for_coalesced_delay_0_g;
    wire [0:0] sel_for_coalesced_delay_0_h;
    wire [357:0] join_for_coalesced_delay_1_q;
    wire [63:0] sel_for_coalesced_delay_1_b;
    wire [31:0] sel_for_coalesced_delay_1_c;
    wire [31:0] sel_for_coalesced_delay_1_d;
    wire [31:0] sel_for_coalesced_delay_1_e;
    wire [31:0] sel_for_coalesced_delay_1_f;
    wire [31:0] sel_for_coalesced_delay_1_g;
    wire [31:0] sel_for_coalesced_delay_1_h;
    wire [31:0] sel_for_coalesced_delay_1_i;
    wire [31:0] sel_for_coalesced_delay_1_j;
    wire [31:0] sel_for_coalesced_delay_1_k;
    wire [0:0] sel_for_coalesced_delay_1_l;
    wire [0:0] sel_for_coalesced_delay_1_m;
    wire [0:0] sel_for_coalesced_delay_1_n;
    wire [0:0] sel_for_coalesced_delay_1_o;
    wire [0:0] sel_for_coalesced_delay_1_p;
    wire [0:0] sel_for_coalesced_delay_1_q;
    wire [129:0] join_for_coalesced_delay_2_q;
    wire [63:0] sel_for_coalesced_delay_2_b;
    wire [31:0] sel_for_coalesced_delay_2_c;
    wire [31:0] sel_for_coalesced_delay_2_d;
    wire [0:0] sel_for_coalesced_delay_2_e;
    wire [0:0] sel_for_coalesced_delay_2_f;
    wire [0:0] redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_valid_in;
    wire redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_stall_in;
    wire redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_data_in;
    wire [0:0] redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_valid_out;
    wire redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_stall_out;
    wire redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_data_out;
    wire [0:0] redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_valid_in;
    wire redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_stall_in;
    wire redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_data_in;
    wire [0:0] redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_valid_out;
    wire redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_stall_out;
    wire redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_data_out;
    reg [31:0] redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_q;
    wire [0:0] redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_valid_in;
    wire redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_stall_in;
    wire redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_data_in;
    wire [0:0] redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_valid_out;
    wire redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_stall_out;
    wire redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_data_out;
    wire [0:0] redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_valid_in;
    wire redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_stall_in;
    wire redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_stall_in_bitsignaltemp;
    wire [30:0] redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_data_in;
    wire [0:0] redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_valid_out;
    wire redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_stall_out;
    wire redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_stall_out_bitsignaltemp;
    wire [30:0] redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_data_out;
    reg [162:0] coalesced_delay_0_0_q;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [357:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [357:0] coalesced_delay_1_fifo_data_out;
    wire [0:0] coalesced_delay_2_fifo_valid_in;
    wire coalesced_delay_2_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_in;
    wire coalesced_delay_2_fifo_stall_in_bitsignaltemp;
    wire [129:0] coalesced_delay_2_fifo_data_in;
    wire [0:0] coalesced_delay_2_fifo_valid_out;
    wire coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_out;
    wire coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    wire [129:0] coalesced_delay_2_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm13_conv2d3x322_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm13_conv2d3x322_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm_conv2d3x321_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm_conv2d3x321_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31_b;
    wire [552:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [63:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [31:0] bubble_select_stall_entry_o;
    wire [31:0] bubble_select_stall_entry_p;
    wire [0:0] bubble_select_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_r;
    wire [31:0] bubble_select_stall_entry_s;
    wire [31:0] bubble_select_stall_entry_t;
    wire [31:0] bubble_select_stall_entry_u;
    wire [31:0] bubble_select_stall_entry_v;
    wire [31:0] bubble_select_stall_entry_w;
    wire [31:0] bubble_select_stall_entry_x;
    wire [31:0] bubble_select_stall_entry_y;
    wire [552:0] bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_c;
    wire [63:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_d;
    wire [63:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_g;
    wire [31:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_h;
    wire [0:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_j;
    wire [31:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_k;
    wire [0:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_l;
    wire [0:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_m;
    wire [31:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_n;
    wire [0:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_o;
    wire [0:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_p;
    wire [0:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_r;
    wire [31:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_s;
    wire [31:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_t;
    wire [31:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_u;
    wire [31:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_v;
    wire [31:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_w;
    wire [31:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_x;
    wire [31:0] bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_y;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_body25_conv2d3x3s_c0_enter208183_conv2d3x324_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body25_conv2d3x3s_c0_enter208183_conv2d3x324_aunroll_x_b;
    wire [31:0] bubble_join_redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_q;
    wire [31:0] bubble_select_redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_b;
    wire [0:0] bubble_join_redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_q;
    wire [0:0] bubble_select_redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_b;
    wire [0:0] bubble_join_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_q;
    wire [0:0] bubble_select_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_b;
    wire [30:0] bubble_join_redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_q;
    wire [30:0] bubble_select_redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_b;
    wire [357:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [357:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [129:0] bubble_join_coalesced_delay_2_fifo_q;
    wire [129:0] bubble_select_coalesced_delay_2_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_conv2d3x321_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_conv2d3x321_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_conv2d3x321_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_conv2d3x321_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm_conv2d3x321_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_conv2d3x321_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_conv2d3x321_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm_conv2d3x321_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_conv2d3x321_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_conv2d3x321_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_conv2d3x321_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_conv2d3x321_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_conv2d3x321_V1;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_or0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_V1;
    wire [0:0] SE_i_phi_decision34_and_i0_conv2d3x319_wireValid;
    wire [0:0] SE_i_phi_decision34_and_i0_conv2d3x319_wireStall;
    wire [0:0] SE_i_phi_decision34_and_i0_conv2d3x319_StallValid;
    wire [0:0] SE_i_phi_decision34_and_i0_conv2d3x319_toReg0;
    reg [0:0] SE_i_phi_decision34_and_i0_conv2d3x319_fromReg0;
    wire [0:0] SE_i_phi_decision34_and_i0_conv2d3x319_consumed0;
    wire [0:0] SE_i_phi_decision34_and_i0_conv2d3x319_toReg1;
    reg [0:0] SE_i_phi_decision34_and_i0_conv2d3x319_fromReg1;
    wire [0:0] SE_i_phi_decision34_and_i0_conv2d3x319_consumed1;
    wire [0:0] SE_i_phi_decision34_and_i0_conv2d3x319_and0;
    wire [0:0] SE_i_phi_decision34_and_i0_conv2d3x319_or0;
    wire [0:0] SE_i_phi_decision34_and_i0_conv2d3x319_backStall;
    wire [0:0] SE_i_phi_decision34_and_i0_conv2d3x319_V0;
    wire [0:0] SE_i_phi_decision34_and_i0_conv2d3x319_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_conv2d3x3_B5_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv2d3x3_B5_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_conv2d3x3_B5_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_conv2d3x3_B5_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_conv2d3x3_B5_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_conv2d3x3_B5_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_conv2d3x3_B5_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_conv2d3x3_B5_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_conv2d3x3_B5_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_conv2d3x3_B5_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_conv2d3x3_B5_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_conv2d3x3_B5_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_conv2d3x3_B5_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_conv2d3x3_B5_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_conv2d3x3_B5_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv2d3x3_B5_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_conv2d3x3_B5_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_conv2d3x3_B5_merge_reg_aunroll_x_V2;
    wire [0:0] SE_i_arrayidx459_conv2d3x30_narrow_x_wireValid;
    wire [0:0] SE_i_arrayidx459_conv2d3x30_narrow_x_and0;
    wire [0:0] SE_i_arrayidx459_conv2d3x30_narrow_x_and1;
    wire [0:0] SE_i_arrayidx459_conv2d3x30_narrow_x_backStall;
    wire [0:0] SE_i_arrayidx459_conv2d3x30_narrow_x_V0;
    wire [0:0] SE_i_arrayidx5110_conv2d3x30_shift_join_x_wireValid;
    wire [0:0] SE_i_arrayidx5110_conv2d3x30_shift_join_x_and0;
    wire [0:0] SE_i_arrayidx5110_conv2d3x30_shift_join_x_backStall;
    wire [0:0] SE_i_arrayidx5110_conv2d3x30_shift_join_x_V0;
    reg [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_1;
    reg [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_2;
    reg [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_3;
    reg [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_4;
    reg [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_5;
    reg [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_6;
    reg [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_7;
    reg [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_8;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_2;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_3;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_4;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_5;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_6;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_7;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_8;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_or0;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_or1;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_or2;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_or3;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_or4;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_or5;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_or6;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_or7;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_V0;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_V1;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_V2;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_V3;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_V4;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_V5;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_V6;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_V7;
    wire [0:0] SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_V8;
    wire [0:0] SE_out_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_wireValid;
    wire [0:0] SE_out_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_and0;
    wire [0:0] SE_out_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_and1;
    wire [0:0] SE_out_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_and2;
    wire [0:0] SE_out_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_backStall;
    wire [0:0] SE_out_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_V0;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm13_conv2d3x322_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_lm13_conv2d3x322_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm13_conv2d3x322_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_lm13_conv2d3x322_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm13_conv2d3x322_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_lm13_conv2d3x322_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm13_conv2d3x322_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_lm13_conv2d3x322_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_reg_stall_out_bitsignaltemp;


    // bubble_join_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo(BITJOIN,183)
    assign bubble_join_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_q = redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_data_out;

    // bubble_select_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo(BITSELECT,184)
    assign bubble_select_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_b = $unsigned(bubble_join_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_mem_lm13_conv2d3x322(BITJOIN,151)
    assign bubble_join_i_llvm_fpga_mem_lm13_conv2d3x322_q = i_llvm_fpga_mem_lm13_conv2d3x322_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm13_conv2d3x322(BITSELECT,152)
    assign bubble_select_i_llvm_fpga_mem_lm13_conv2d3x322_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm13_conv2d3x322_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm_conv2d3x321(BITJOIN,155)
    assign bubble_join_i_llvm_fpga_mem_lm_conv2d3x321_q = i_llvm_fpga_mem_lm_conv2d3x321_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm_conv2d3x321(BITSELECT,156)
    assign bubble_select_i_llvm_fpga_mem_lm_conv2d3x321_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm_conv2d3x321_q[31:0]);

    // bubble_join_redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo(BITJOIN,177)
    assign bubble_join_redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_q = redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_data_out;

    // bubble_select_redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo(BITSELECT,178)
    assign bubble_select_redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_b = $unsigned(bubble_join_redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_q[31:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_stall_entry(BITJOIN,165)
    assign bubble_join_stall_entry_q = {in_unnamed_conv2d3x37, in_tmp_252, in_mul46_add4172, in_m_053, in_k_059163, in_j_062149, in_c0_exe971, in_c0_exe861, in_c0_exe752, in_c0_exe649, in_c0_exe542, in_c0_exe431, in_c0_exe322, in_c0_exe2196168, in_c0_exe16140, in_c0_exe15130, in_c0_exe14120, in_c0_exe13111, in_c0_exe12101, in_c0_exe1195167, in_c0_exe1190, in_c0_exe1186151, in_c0_exe111, in_c0_exe1081};

    // bubble_select_stall_entry(BITSELECT,166)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[96:65]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[97:97]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[129:98]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[161:130]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[162:162]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[163:163]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[164:164]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[165:165]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[197:166]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[261:198]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[262:262]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[294:263]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[326:295]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[327:327]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[328:328]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[360:329]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[392:361]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[424:393]);
    assign bubble_select_stall_entry_v = $unsigned(bubble_join_stall_entry_q[456:425]);
    assign bubble_select_stall_entry_w = $unsigned(bubble_join_stall_entry_q[488:457]);
    assign bubble_select_stall_entry_x = $unsigned(bubble_join_stall_entry_q[520:489]);
    assign bubble_select_stall_entry_y = $unsigned(bubble_join_stall_entry_q[552:521]);

    // SE_stall_entry(STALLENABLE,223)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv2d3x3_B5_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_conv2d3x3_B5_merge_reg_aunroll_x(STALLENABLE,230)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_conv2d3x3_B5_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_conv2d3x3_B5_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_conv2d3x3_B5_merge_reg_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_conv2d3x3_B5_merge_reg_aunroll_x_fromReg0 <= SE_out_conv2d3x3_B5_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_conv2d3x3_B5_merge_reg_aunroll_x_fromReg1 <= SE_out_conv2d3x3_B5_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_conv2d3x3_B5_merge_reg_aunroll_x_fromReg2 <= SE_out_conv2d3x3_B5_merge_reg_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_conv2d3x3_B5_merge_reg_aunroll_x_consumed0 = (~ (redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_stall_out) & SE_out_conv2d3x3_B5_merge_reg_aunroll_x_wireValid) | SE_out_conv2d3x3_B5_merge_reg_aunroll_x_fromReg0;
    assign SE_out_conv2d3x3_B5_merge_reg_aunroll_x_consumed1 = (~ (SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_backStall) & SE_out_conv2d3x3_B5_merge_reg_aunroll_x_wireValid) | SE_out_conv2d3x3_B5_merge_reg_aunroll_x_fromReg1;
    assign SE_out_conv2d3x3_B5_merge_reg_aunroll_x_consumed2 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_conv2d3x3_B5_merge_reg_aunroll_x_wireValid) | SE_out_conv2d3x3_B5_merge_reg_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_conv2d3x3_B5_merge_reg_aunroll_x_StallValid = SE_out_conv2d3x3_B5_merge_reg_aunroll_x_backStall & SE_out_conv2d3x3_B5_merge_reg_aunroll_x_wireValid;
    assign SE_out_conv2d3x3_B5_merge_reg_aunroll_x_toReg0 = SE_out_conv2d3x3_B5_merge_reg_aunroll_x_StallValid & SE_out_conv2d3x3_B5_merge_reg_aunroll_x_consumed0;
    assign SE_out_conv2d3x3_B5_merge_reg_aunroll_x_toReg1 = SE_out_conv2d3x3_B5_merge_reg_aunroll_x_StallValid & SE_out_conv2d3x3_B5_merge_reg_aunroll_x_consumed1;
    assign SE_out_conv2d3x3_B5_merge_reg_aunroll_x_toReg2 = SE_out_conv2d3x3_B5_merge_reg_aunroll_x_StallValid & SE_out_conv2d3x3_B5_merge_reg_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_conv2d3x3_B5_merge_reg_aunroll_x_or0 = SE_out_conv2d3x3_B5_merge_reg_aunroll_x_consumed0;
    assign SE_out_conv2d3x3_B5_merge_reg_aunroll_x_or1 = SE_out_conv2d3x3_B5_merge_reg_aunroll_x_consumed1 & SE_out_conv2d3x3_B5_merge_reg_aunroll_x_or0;
    assign SE_out_conv2d3x3_B5_merge_reg_aunroll_x_wireStall = ~ (SE_out_conv2d3x3_B5_merge_reg_aunroll_x_consumed2 & SE_out_conv2d3x3_B5_merge_reg_aunroll_x_or1);
    assign SE_out_conv2d3x3_B5_merge_reg_aunroll_x_backStall = SE_out_conv2d3x3_B5_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_conv2d3x3_B5_merge_reg_aunroll_x_V0 = SE_out_conv2d3x3_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv2d3x3_B5_merge_reg_aunroll_x_fromReg0);
    assign SE_out_conv2d3x3_B5_merge_reg_aunroll_x_V1 = SE_out_conv2d3x3_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv2d3x3_B5_merge_reg_aunroll_x_fromReg1);
    assign SE_out_conv2d3x3_B5_merge_reg_aunroll_x_V2 = SE_out_conv2d3x3_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv2d3x3_B5_merge_reg_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_conv2d3x3_B5_merge_reg_aunroll_x_wireValid = conv2d3x3_B5_merge_reg_aunroll_x_out_valid_out;

    // conv2d3x3_B5_merge_reg_aunroll_x(BLACKBOX,75)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    // out out_data_out_7_tpl@1
    // out out_data_out_8_tpl@1
    // out out_data_out_9_tpl@1
    // out out_data_out_10_tpl@1
    // out out_data_out_11_tpl@1
    // out out_data_out_12_tpl@1
    // out out_data_out_13_tpl@1
    // out out_data_out_14_tpl@1
    // out out_data_out_15_tpl@1
    // out out_data_out_16_tpl@1
    // out out_data_out_17_tpl@1
    // out out_data_out_18_tpl@1
    // out out_data_out_19_tpl@1
    // out out_data_out_20_tpl@1
    // out out_data_out_21_tpl@1
    // out out_data_out_22_tpl@1
    // out out_data_out_23_tpl@1
    conv2d3x3_B5_merge_reg theconv2d3x3_B5_merge_reg_aunroll_x (
        .in_stall_in(SE_out_conv2d3x3_B5_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_v),
        .in_data_in_1_tpl(bubble_select_stall_entry_x),
        .in_data_in_2_tpl(bubble_select_stall_entry_c),
        .in_data_in_3_tpl(bubble_select_stall_entry_m),
        .in_data_in_4_tpl(bubble_select_stall_entry_n),
        .in_data_in_5_tpl(bubble_select_stall_entry_o),
        .in_data_in_6_tpl(bubble_select_stall_entry_p),
        .in_data_in_7_tpl(bubble_select_stall_entry_q),
        .in_data_in_8_tpl(bubble_select_stall_entry_r),
        .in_data_in_9_tpl(bubble_select_stall_entry_s),
        .in_data_in_10_tpl(bubble_select_stall_entry_b),
        .in_data_in_11_tpl(bubble_select_stall_entry_e),
        .in_data_in_12_tpl(bubble_select_stall_entry_g),
        .in_data_in_13_tpl(bubble_select_stall_entry_h),
        .in_data_in_14_tpl(bubble_select_stall_entry_i),
        .in_data_in_15_tpl(bubble_select_stall_entry_j),
        .in_data_in_16_tpl(bubble_select_stall_entry_k),
        .in_data_in_17_tpl(bubble_select_stall_entry_y),
        .in_data_in_18_tpl(bubble_select_stall_entry_t),
        .in_data_in_19_tpl(bubble_select_stall_entry_d),
        .in_data_in_20_tpl(bubble_select_stall_entry_u),
        .in_data_in_21_tpl(bubble_select_stall_entry_f),
        .in_data_in_22_tpl(bubble_select_stall_entry_l),
        .in_data_in_23_tpl(bubble_select_stall_entry_w),
        .out_stall_out(conv2d3x3_B5_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv2d3x3_B5_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_21_tpl),
        .out_data_out_22_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_22_tpl),
        .out_data_out_23_tpl(conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_23_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_conv2d3x3_B5_merge_reg_aunroll_x(BITJOIN,169)
    assign bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q = {conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_23_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_22_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_21_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_20_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_19_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_18_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_17_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_16_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_14_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_13_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_12_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_11_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_10_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_9_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_8_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_7_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_6_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_5_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_4_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_3_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_2_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl, conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv2d3x3_B5_merge_reg_aunroll_x(BITSELECT,170)
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[31:0]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[63:32]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[127:64]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[191:128]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_f = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[192:192]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_g = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[224:193]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_h = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[256:225]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_i = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[257:257]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_j = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[258:258]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_k = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[290:259]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_l = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[291:291]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_m = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[292:292]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_n = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[324:293]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_o = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[325:325]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_p = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[326:326]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_q = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[327:327]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_r = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[328:328]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_s = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[360:329]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_t = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[392:361]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_u = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[424:393]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_v = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[456:425]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_w = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[488:457]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_x = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[520:489]);
    assign bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_y = $unsigned(bubble_join_conv2d3x3_B5_merge_reg_aunroll_x_q[552:521]);

    // join_for_coalesced_delay_0(BITJOIN,134)
    assign join_for_coalesced_delay_0_q = {bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_q, bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_j, bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_i, bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_y, bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_x, bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_b, bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_d};

    // coalesced_delay_0_0(REG,147)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(163'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,135)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[95:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[127:96]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_0_q[159:128]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_0_q[160:160]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_0_q[161:161]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_0_q[162:162]);

    // redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo(STALLFIFO,143)
    assign redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_valid_in = SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_V5;
    assign redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_backStall;
    assign redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_data_in = sel_for_coalesced_delay_0_h;
    assign redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_valid_in_bitsignaltemp = redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_valid_in[0];
    assign redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_stall_in_bitsignaltemp = redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_stall_in[0];
    assign redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_valid_out[0] = redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_valid_out_bitsignaltemp;
    assign redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_stall_out[0] = redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(249),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo (
        .valid_in(redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_valid_in_bitsignaltemp),
        .stall_in(redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_stall_in_bitsignaltemp),
        .data_in(sel_for_coalesced_delay_0_h),
        .valid_out(redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_valid_out_bitsignaltemp),
        .stall_out(redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_stall_out_bitsignaltemp),
        .data_out(redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_127(CONSTANT,8)
    assign c_i32_127_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_conv2d3x32(ADD,28)@2
    assign i_inc_conv2d3x32_a = {1'b0, sel_for_coalesced_delay_0_c};
    assign i_inc_conv2d3x32_b = {1'b0, c_i32_127_q};
    assign i_inc_conv2d3x32_o = $unsigned(i_inc_conv2d3x32_a) + $unsigned(i_inc_conv2d3x32_b);
    assign i_inc_conv2d3x32_q = i_inc_conv2d3x32_o[32:0];

    // bgTrunc_i_inc_conv2d3x32_sel_x(BITSELECT,72)@2
    assign bgTrunc_i_inc_conv2d3x32_sel_x_b = i_inc_conv2d3x32_q[31:0];

    // i_inc_conv2d3x32_vt_select_30(BITSELECT,31)@2
    assign i_inc_conv2d3x32_vt_select_30_b = bgTrunc_i_inc_conv2d3x32_sel_x_b[30:0];

    // redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo(STALLFIFO,146)
    assign redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_valid_in = SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_V7;
    assign redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_backStall;
    assign redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_data_in = i_inc_conv2d3x32_vt_select_30_b;
    assign redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_valid_in_bitsignaltemp = redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_valid_in[0];
    assign redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_stall_in_bitsignaltemp = redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_stall_in[0];
    assign redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_valid_out[0] = redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_valid_out_bitsignaltemp;
    assign redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_stall_out[0] = redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(249),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(31),
        .IMPL("ram")
    ) theredist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo (
        .valid_in(redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_valid_in_bitsignaltemp),
        .stall_in(redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_stall_in_bitsignaltemp),
        .data_in(i_inc_conv2d3x32_vt_select_30_b),
        .valid_out(redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_valid_out_bitsignaltemp),
        .stall_out(redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_stall_out_bitsignaltemp),
        .data_out(redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_1(BITJOIN,137)
    assign join_for_coalesced_delay_1_q = {bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_r, bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_p, bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_o, bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_m, bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_l, bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_f, bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_w, bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_v, bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_u, bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_t, bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_s, bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_n, bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_k, bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_h, bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_g, bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_e};

    // coalesced_delay_1_fifo(STALLFIFO,148)
    assign coalesced_delay_1_fifo_valid_in = SE_out_conv2d3x3_B5_merge_reg_aunroll_x_V2;
    assign coalesced_delay_1_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(250),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(358),
        .IMPL("ram")
    ) thecoalesced_delay_1_fifo (
        .valid_in(coalesced_delay_1_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_1_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_1_q),
        .valid_out(coalesced_delay_1_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_1_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_1_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_2(BITJOIN,140)
    assign join_for_coalesced_delay_2_q = {sel_for_coalesced_delay_0_g, sel_for_coalesced_delay_0_f, sel_for_coalesced_delay_0_e, sel_for_coalesced_delay_0_d, sel_for_coalesced_delay_0_b};

    // coalesced_delay_2_fifo(STALLFIFO,149)
    assign coalesced_delay_2_fifo_valid_in = SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_V6;
    assign coalesced_delay_2_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_backStall;
    assign coalesced_delay_2_fifo_data_in = join_for_coalesced_delay_2_q;
    assign coalesced_delay_2_fifo_valid_in_bitsignaltemp = coalesced_delay_2_fifo_valid_in[0];
    assign coalesced_delay_2_fifo_stall_in_bitsignaltemp = coalesced_delay_2_fifo_stall_in[0];
    assign coalesced_delay_2_fifo_valid_out[0] = coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_2_fifo_stall_out[0] = coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(249),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(130),
        .IMPL("ram")
    ) thecoalesced_delay_2_fifo (
        .valid_in(coalesced_delay_2_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_2_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_2_q),
        .valid_out(coalesced_delay_2_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_2_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_2_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_reg(STALLFIFO,326)
    assign bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_reg_valid_in = SE_out_i_llvm_fpga_mem_lm_conv2d3x321_V0;
    assign bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(8),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1(STALLENABLE,274)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_V0 = SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_and0 = bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_and1 = bubble_out_i_llvm_fpga_mem_lm13_conv2d3x322_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_and2 = coalesced_delay_2_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_and3 = coalesced_delay_1_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_and4 = redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_and5 = redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_wireValid = i_sfc_s_c0_in_for_body25_conv2d3x3s_c0_enter208183_conv2d3x324_aunroll_x_out_o_valid & SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_and5;

    // i_sfc_s_c0_in_for_body25_conv2d3x3s_c0_enter208183_conv2d3x324_aunroll_x(BLACKBOX,93)@243
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@250
    // out out_c0_exit213_0_tpl@250
    // out out_c0_exit213_1_tpl@250
    conv2d3x3_i_sfc_s_c0_in_for_body25_s_c0_enter208183_conv2d3x324 thei_sfc_s_c0_in_for_body25_conv2d3x3s_c0_enter208183_conv2d3x324_aunroll_x (
        .in_i_stall(SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_backStall),
        .in_i_valid(SE_out_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_V0),
        .in_c0_eni4_0_tpl(GND_q),
        .in_c0_eni4_1_tpl(bubble_select_redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_b),
        .in_c0_eni4_2_tpl(bubble_select_i_llvm_fpga_mem_lm_conv2d3x321_b),
        .in_c0_eni4_3_tpl(bubble_select_i_llvm_fpga_mem_lm13_conv2d3x322_b),
        .in_c0_eni4_4_tpl(bubble_select_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_b),
        .out_o_stall(i_sfc_s_c0_in_for_body25_conv2d3x3s_c0_enter208183_conv2d3x324_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body25_conv2d3x3s_c0_enter208183_conv2d3x324_aunroll_x_out_o_valid),
        .out_c0_exit213_0_tpl(),
        .out_c0_exit213_1_tpl(i_sfc_s_c0_in_for_body25_conv2d3x3s_c0_enter208183_conv2d3x324_aunroll_x_out_c0_exit213_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo(STALLFIFO,142)
    assign redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_valid_in = SE_out_conv2d3x3_B5_merge_reg_aunroll_x_V0;
    assign redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_stall_in = SE_out_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_backStall;
    assign redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_data_in = bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_c;
    assign redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_valid_in_bitsignaltemp = redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_valid_in[0];
    assign redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_stall_in_bitsignaltemp = redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_stall_in[0];
    assign redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_valid_out[0] = redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_valid_out_bitsignaltemp;
    assign redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_stall_out[0] = redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(243),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo (
        .valid_in(redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_valid_in_bitsignaltemp),
        .stall_in(redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_c),
        .valid_out(redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_valid_out_bitsignaltemp),
        .stall_out(redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_stall_out_bitsignaltemp),
        .data_out(redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sub28_conv2d3x33(ADD,43)@1
    assign i_sub28_conv2d3x33_a = {1'b0, bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_u};
    assign i_sub28_conv2d3x33_b = {1'b0, bubble_select_conv2d3x3_B5_merge_reg_aunroll_x_b};
    assign i_sub28_conv2d3x33_o = $unsigned(i_sub28_conv2d3x33_a) + $unsigned(i_sub28_conv2d3x33_b);
    assign i_sub28_conv2d3x33_q = i_sub28_conv2d3x33_o[32:0];

    // bgTrunc_i_sub28_conv2d3x33_sel_x(BITSELECT,73)@1
    assign bgTrunc_i_sub28_conv2d3x33_sel_x_b = i_sub28_conv2d3x33_q[31:0];

    // redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0(REG,144)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_sub28_conv2d3x33_sel_x_b);
        end
    end

    // c_i32_129_recast_x(CONSTANT,74)
    assign c_i32_129_recast_x_q = $unsigned(32'b11111111111111111111111111111111);

    // i_cmp34_conv2d3x36(COMPARE,20)@2
    assign i_cmp34_conv2d3x36_a = $unsigned({{2{c_i32_129_recast_x_q[31]}}, c_i32_129_recast_x_q});
    assign i_cmp34_conv2d3x36_b = $unsigned({{2{redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_q[31]}}, redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_q});
    assign i_cmp34_conv2d3x36_o = $unsigned($signed(i_cmp34_conv2d3x36_a) - $signed(i_cmp34_conv2d3x36_b));
    assign i_cmp34_conv2d3x36_c[0] = i_cmp34_conv2d3x36_o[33];

    // i_reduction_conv2d3x3_1_conv2d3x313(LOGICAL,41)@2
    assign i_reduction_conv2d3x3_1_conv2d3x313_q = sel_for_coalesced_delay_0_g & i_cmp34_conv2d3x36_c;

    // i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30(BLACKBOX,34)@2
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_0 thei_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30 (
        .in_buffer_in(in_input_size),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_backStall),
        .in_valid_in(SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_V3),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30(BITJOIN,159)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_q = i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30(BITSELECT,160)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_q[31:0]);

    // i_cmp37_conv2d3x38(COMPARE,21)@2
    assign i_cmp37_conv2d3x38_a = $unsigned({{2{redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_q[31]}}, redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_q});
    assign i_cmp37_conv2d3x38_b = $unsigned({{2{bubble_select_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_b[31]}}, bubble_select_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_b});
    assign i_cmp37_conv2d3x38_o = $unsigned($signed(i_cmp37_conv2d3x38_a) - $signed(i_cmp37_conv2d3x38_b));
    assign i_cmp37_conv2d3x38_c[0] = i_cmp37_conv2d3x38_o[33];

    // i_reduction_conv2d3x3_0_conv2d3x314(LOGICAL,40)@2
    assign i_reduction_conv2d3x3_0_conv2d3x314_q = sel_for_coalesced_delay_0_f & i_cmp37_conv2d3x38_c;

    // i_reduction_conv2d3x3_2_conv2d3x317(LOGICAL,42)@2
    assign i_reduction_conv2d3x3_2_conv2d3x317_q = i_reduction_conv2d3x3_0_conv2d3x314_q & i_reduction_conv2d3x3_1_conv2d3x313_q;

    // redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo(STALLFIFO,145)
    assign redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_valid_in = SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_V1;
    assign redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_stall_in = SE_out_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_backStall;
    assign redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_data_in = i_reduction_conv2d3x3_2_conv2d3x317_q;
    assign redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_valid_in_bitsignaltemp = redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_valid_in[0];
    assign redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_stall_in_bitsignaltemp = redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_stall_in[0];
    assign redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_valid_out[0] = redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_valid_out_bitsignaltemp;
    assign redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_stall_out[0] = redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(242),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo (
        .valid_in(redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_valid_in_bitsignaltemp),
        .stall_in(redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_stall_in_bitsignaltemp),
        .data_in(i_reduction_conv2d3x3_2_conv2d3x317_q),
        .valid_out(redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_valid_out_bitsignaltemp),
        .stall_out(redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_stall_out_bitsignaltemp),
        .data_out(redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo(STALLENABLE,255)
    // Valid signal propagation
    assign SE_out_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_V0 = SE_out_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_backStall = i_sfc_s_c0_in_for_body25_conv2d3x3s_c0_enter208183_conv2d3x324_aunroll_x_out_o_stall | ~ (SE_out_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_and0 = redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_valid_out;
    assign SE_out_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_and1 = redist1_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_1_tpl_242_fifo_valid_out & SE_out_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_and0;
    assign SE_out_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_and2 = SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_V1 & SE_out_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_and1;
    assign SE_out_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_wireValid = SE_out_i_llvm_fpga_mem_lm_conv2d3x321_V1 & SE_out_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_and2;

    // bubble_out_i_llvm_fpga_mem_lm13_conv2d3x322_1_reg(STALLFIFO,325)
    assign bubble_out_i_llvm_fpga_mem_lm13_conv2d3x322_1_reg_valid_in = SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_V0;
    assign bubble_out_i_llvm_fpga_mem_lm13_conv2d3x322_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_lm13_conv2d3x322_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm13_conv2d3x322_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm13_conv2d3x322_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm13_conv2d3x322_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm13_conv2d3x322_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_lm13_conv2d3x322_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_lm13_conv2d3x322_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_lm13_conv2d3x322_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(8),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_lm13_conv2d3x322_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_lm13_conv2d3x322_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_lm13_conv2d3x322_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_lm13_conv2d3x322_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_lm13_conv2d3x322_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_lm13_conv2d3x322(STALLENABLE,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_fromReg0 <= SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_fromReg1 <= SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_lm13_conv2d3x322_1_reg_stall_out) & SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_wireValid) | SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_consumed1 = (~ (SE_out_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_backStall) & SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_wireValid) | SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_StallValid = SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_backStall & SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_toReg0 = SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_StallValid & SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_toReg1 = SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_StallValid & SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_or0 = SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_consumed1 & SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_or0);
    assign SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_backStall = SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_V0 = SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_V1 = SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_wireValid = i_llvm_fpga_mem_lm13_conv2d3x322_out_o_valid;

    // i_idxprom50_conv2d3x311_vt_const_63(CONSTANT,25)
    assign i_idxprom50_conv2d3x311_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // i_add49_conv2d3x34(ADD,15)@2
    assign i_add49_conv2d3x34_a = {1'b0, sel_for_coalesced_delay_0_e};
    assign i_add49_conv2d3x34_b = {1'b0, sel_for_coalesced_delay_0_c};
    assign i_add49_conv2d3x34_o = $unsigned(i_add49_conv2d3x34_a) + $unsigned(i_add49_conv2d3x34_b);
    assign i_add49_conv2d3x34_q = i_add49_conv2d3x34_o[32:0];

    // bgTrunc_i_add49_conv2d3x34_sel_x(BITSELECT,71)@2
    assign bgTrunc_i_add49_conv2d3x34_sel_x_b = i_add49_conv2d3x34_q[31:0];

    // i_idxprom50_conv2d3x311_sel_x(BITSELECT,92)@2
    assign i_idxprom50_conv2d3x311_sel_x_b = {32'b00000000000000000000000000000000, bgTrunc_i_add49_conv2d3x34_sel_x_b[31:0]};

    // i_idxprom50_conv2d3x311_vt_select_31(BITSELECT,27)@2
    assign i_idxprom50_conv2d3x311_vt_select_31_b = i_idxprom50_conv2d3x311_sel_x_b[31:0];

    // i_idxprom50_conv2d3x311_vt_join(BITJOIN,26)@2
    assign i_idxprom50_conv2d3x311_vt_join_q = {i_idxprom50_conv2d3x311_vt_const_63_q, i_idxprom50_conv2d3x311_vt_select_31_b};

    // i_arrayidx5110_conv2d3x30_narrow_x(BITSELECT,87)@2
    assign i_arrayidx5110_conv2d3x30_narrow_x_b = i_idxprom50_conv2d3x311_vt_join_q[61:0];

    // i_arrayidx459_conv2d3x318_vt_const_1(CONSTANT,16)
    assign i_arrayidx459_conv2d3x318_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx5110_conv2d3x30_shift_join_x(BITJOIN,88)@2
    assign i_arrayidx5110_conv2d3x30_shift_join_x_q = {i_arrayidx5110_conv2d3x30_narrow_x_b, i_arrayidx459_conv2d3x318_vt_const_1_q};

    // i_arrayidx5110_conv2d3x30_add_x(ADD,85)@2
    assign i_arrayidx5110_conv2d3x30_add_x_a = {1'b0, sel_for_coalesced_delay_0_b};
    assign i_arrayidx5110_conv2d3x30_add_x_b = {1'b0, i_arrayidx5110_conv2d3x30_shift_join_x_q};
    assign i_arrayidx5110_conv2d3x30_add_x_o = $unsigned(i_arrayidx5110_conv2d3x30_add_x_a) + $unsigned(i_arrayidx5110_conv2d3x30_add_x_b);
    assign i_arrayidx5110_conv2d3x30_add_x_q = i_arrayidx5110_conv2d3x30_add_x_o[64:0];

    // i_arrayidx5110_conv2d3x30_dupName_0_trunc_sel_x(BITSELECT,90)@2
    assign i_arrayidx5110_conv2d3x30_dupName_0_trunc_sel_x_b = i_arrayidx5110_conv2d3x30_add_x_q[63:0];

    // i_llvm_fpga_mem_lm13_conv2d3x322(BLACKBOX,32)@2
    // in in_i_stall@20000000
    // out out_lm13_conv2d3x3_avm_address@20000000
    // out out_lm13_conv2d3x3_avm_burstcount@20000000
    // out out_lm13_conv2d3x3_avm_byteenable@20000000
    // out out_lm13_conv2d3x3_avm_enable@20000000
    // out out_lm13_conv2d3x3_avm_read@20000000
    // out out_lm13_conv2d3x3_avm_write@20000000
    // out out_lm13_conv2d3x3_avm_writedata@20000000
    // out out_o_readdata@243
    // out out_o_stall@20000000
    // out out_o_valid@243
    conv2d3x3_i_llvm_fpga_mem_lm13_0 thei_llvm_fpga_mem_lm13_conv2d3x322 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx5110_conv2d3x30_dupName_0_trunc_sel_x_b),
        .in_i_predicate(i_unnamed_conv2d3x320_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm13_conv2d3x322_backStall),
        .in_i_valid(SE_i_arrayidx5110_conv2d3x30_shift_join_x_V0),
        .in_lm13_conv2d3x3_avm_readdata(in_lm13_conv2d3x3_avm_readdata),
        .in_lm13_conv2d3x3_avm_readdatavalid(in_lm13_conv2d3x3_avm_readdatavalid),
        .in_lm13_conv2d3x3_avm_waitrequest(in_lm13_conv2d3x3_avm_waitrequest),
        .in_lm13_conv2d3x3_avm_writeack(in_lm13_conv2d3x3_avm_writeack),
        .out_lm13_conv2d3x3_avm_address(i_llvm_fpga_mem_lm13_conv2d3x322_out_lm13_conv2d3x3_avm_address),
        .out_lm13_conv2d3x3_avm_burstcount(i_llvm_fpga_mem_lm13_conv2d3x322_out_lm13_conv2d3x3_avm_burstcount),
        .out_lm13_conv2d3x3_avm_byteenable(i_llvm_fpga_mem_lm13_conv2d3x322_out_lm13_conv2d3x3_avm_byteenable),
        .out_lm13_conv2d3x3_avm_enable(i_llvm_fpga_mem_lm13_conv2d3x322_out_lm13_conv2d3x3_avm_enable),
        .out_lm13_conv2d3x3_avm_read(i_llvm_fpga_mem_lm13_conv2d3x322_out_lm13_conv2d3x3_avm_read),
        .out_lm13_conv2d3x3_avm_write(i_llvm_fpga_mem_lm13_conv2d3x322_out_lm13_conv2d3x3_avm_write),
        .out_lm13_conv2d3x3_avm_writedata(i_llvm_fpga_mem_lm13_conv2d3x322_out_lm13_conv2d3x3_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm13_conv2d3x322_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm13_conv2d3x322_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm13_conv2d3x322_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_arrayidx5110_conv2d3x30_shift_join_x(STALLENABLE,237)
    // Valid signal propagation
    assign SE_i_arrayidx5110_conv2d3x30_shift_join_x_V0 = SE_i_arrayidx5110_conv2d3x30_shift_join_x_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx5110_conv2d3x30_shift_join_x_backStall = i_llvm_fpga_mem_lm13_conv2d3x322_out_o_stall | ~ (SE_i_arrayidx5110_conv2d3x30_shift_join_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx5110_conv2d3x30_shift_join_x_and0 = SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_V2;
    assign SE_i_arrayidx5110_conv2d3x30_shift_join_x_wireValid = SE_i_phi_decision34_and_i0_conv2d3x319_V0 & SE_i_arrayidx5110_conv2d3x30_shift_join_x_and0;

    // SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30(STALLENABLE,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_fromReg0 <= '0;
            SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_fromReg0 <= SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_fromReg1 <= SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_consumed0 = (~ (SE_i_phi_decision34_and_i0_conv2d3x319_backStall) & SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_wireValid) | SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_fromReg0;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_consumed1 = (~ (redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_stall_out) & SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_wireValid) | SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_StallValid = SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_backStall & SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_wireValid;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_toReg0 = SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_StallValid & SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_consumed0;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_toReg1 = SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_StallValid & SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_or0 = SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_consumed0;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_wireStall = ~ (SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_consumed1 & SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_or0);
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_backStall = SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_wireValid & ~ (SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_fromReg0);
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_V1 = SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_wireValid & ~ (SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_and0 = i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_wireValid = SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_V0 & SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_and0;

    // SE_i_phi_decision34_and_i0_conv2d3x319(STALLENABLE,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_phi_decision34_and_i0_conv2d3x319_fromReg0 <= '0;
            SE_i_phi_decision34_and_i0_conv2d3x319_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_phi_decision34_and_i0_conv2d3x319_fromReg0 <= SE_i_phi_decision34_and_i0_conv2d3x319_toReg0;
            // Successor 1
            SE_i_phi_decision34_and_i0_conv2d3x319_fromReg1 <= SE_i_phi_decision34_and_i0_conv2d3x319_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_phi_decision34_and_i0_conv2d3x319_consumed0 = (~ (SE_i_arrayidx5110_conv2d3x30_shift_join_x_backStall) & SE_i_phi_decision34_and_i0_conv2d3x319_wireValid) | SE_i_phi_decision34_and_i0_conv2d3x319_fromReg0;
    assign SE_i_phi_decision34_and_i0_conv2d3x319_consumed1 = (~ (SE_i_arrayidx459_conv2d3x30_narrow_x_backStall) & SE_i_phi_decision34_and_i0_conv2d3x319_wireValid) | SE_i_phi_decision34_and_i0_conv2d3x319_fromReg1;
    // Consuming
    assign SE_i_phi_decision34_and_i0_conv2d3x319_StallValid = SE_i_phi_decision34_and_i0_conv2d3x319_backStall & SE_i_phi_decision34_and_i0_conv2d3x319_wireValid;
    assign SE_i_phi_decision34_and_i0_conv2d3x319_toReg0 = SE_i_phi_decision34_and_i0_conv2d3x319_StallValid & SE_i_phi_decision34_and_i0_conv2d3x319_consumed0;
    assign SE_i_phi_decision34_and_i0_conv2d3x319_toReg1 = SE_i_phi_decision34_and_i0_conv2d3x319_StallValid & SE_i_phi_decision34_and_i0_conv2d3x319_consumed1;
    // Backward Stall generation
    assign SE_i_phi_decision34_and_i0_conv2d3x319_or0 = SE_i_phi_decision34_and_i0_conv2d3x319_consumed0;
    assign SE_i_phi_decision34_and_i0_conv2d3x319_wireStall = ~ (SE_i_phi_decision34_and_i0_conv2d3x319_consumed1 & SE_i_phi_decision34_and_i0_conv2d3x319_or0);
    assign SE_i_phi_decision34_and_i0_conv2d3x319_backStall = SE_i_phi_decision34_and_i0_conv2d3x319_wireStall;
    // Valid signal propagation
    assign SE_i_phi_decision34_and_i0_conv2d3x319_V0 = SE_i_phi_decision34_and_i0_conv2d3x319_wireValid & ~ (SE_i_phi_decision34_and_i0_conv2d3x319_fromReg0);
    assign SE_i_phi_decision34_and_i0_conv2d3x319_V1 = SE_i_phi_decision34_and_i0_conv2d3x319_wireValid & ~ (SE_i_phi_decision34_and_i0_conv2d3x319_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_phi_decision34_and_i0_conv2d3x319_and0 = SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_V0;
    assign SE_i_phi_decision34_and_i0_conv2d3x319_wireValid = SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_V1 & SE_i_phi_decision34_and_i0_conv2d3x319_and0;

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31(BLACKBOX,35)@2
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    conv2d3x3_i_llvm_fpga_sync_buffer_p1024f0000t_im_sync_buffer23_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_i_arrayidx459_conv2d3x30_narrow_x_backStall),
        .in_valid_in(SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_V4),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0(STALLENABLE,253)
    // Valid signal propagation
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_V0 = SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_0;
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_V1 = SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_1;
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_V2 = SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_2;
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_V3 = SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_3;
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_V4 = SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_4;
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_V5 = SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_5;
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_V6 = SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_6;
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_V7 = SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_7;
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_V8 = SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_8;
    // Stall signal propagation
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_0 = SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_backStall & SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_0;
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_1 = SE_i_phi_decision34_and_i0_conv2d3x319_backStall & SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_1;
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_2 = SE_i_arrayidx5110_conv2d3x30_shift_join_x_backStall & SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_2;
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_3 = i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x30_out_stall_out & SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_3;
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_4 = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31_out_stall_out & SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_4;
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_5 = redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_stall_out & SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_5;
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_6 = coalesced_delay_2_fifo_stall_out & SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_6;
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_7 = redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_stall_out & SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_7;
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_8 = SE_i_arrayidx459_conv2d3x30_narrow_x_backStall & SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_8;
    // Backward Enable generation
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_or0 = SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_0;
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_or1 = SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_1 | SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_or0;
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_or2 = SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_2 | SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_or1;
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_or3 = SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_3 | SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_or2;
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_or4 = SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_4 | SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_or3;
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_or5 = SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_5 | SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_or4;
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_or6 = SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_6 | SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_or5;
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_or7 = SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_7 | SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_or6;
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_backEN = ~ (SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_8 | SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_or7);
    // Determine whether to write valid data into the first register stage
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_v_s_0 = SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_backEN & SE_out_conv2d3x3_B5_merge_reg_aunroll_x_V1;
    // Backward Stall generation
    assign SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_backStall = ~ (SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_1 <= 1'b0;
            SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_2 <= 1'b0;
            SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_3 <= 1'b0;
            SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_4 <= 1'b0;
            SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_5 <= 1'b0;
            SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_6 <= 1'b0;
            SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_7 <= 1'b0;
            SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_8 <= 1'b0;
        end
        else
        begin
            if (SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_0 <= SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_0 & SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_0 <= SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_1 <= SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_1 & SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_1 <= SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_2 <= SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_2 & SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_2;
            end
            else
            begin
                SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_2 <= SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_3 <= SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_3 & SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_3;
            end
            else
            begin
                SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_3 <= SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_4 <= SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_4 & SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_4;
            end
            else
            begin
                SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_4 <= SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_5 <= SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_5 & SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_5;
            end
            else
            begin
                SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_5 <= SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_6 <= SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_6 & SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_6;
            end
            else
            begin
                SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_6 <= SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_7 <= SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_7 & SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_7;
            end
            else
            begin
                SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_7 <= SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_8 <= SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_8 & SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_s_tv_8;
            end
            else
            begin
                SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_R_v_8 <= SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_i_arrayidx459_conv2d3x30_narrow_x(STALLENABLE,232)
    // Valid signal propagation
    assign SE_i_arrayidx459_conv2d3x30_narrow_x_V0 = SE_i_arrayidx459_conv2d3x30_narrow_x_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx459_conv2d3x30_narrow_x_backStall = i_llvm_fpga_mem_lm_conv2d3x321_out_o_stall | ~ (SE_i_arrayidx459_conv2d3x30_narrow_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx459_conv2d3x30_narrow_x_and0 = SE_redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_V8;
    assign SE_i_arrayidx459_conv2d3x30_narrow_x_and1 = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31_out_valid_out & SE_i_arrayidx459_conv2d3x30_narrow_x_and0;
    assign SE_i_arrayidx459_conv2d3x30_narrow_x_wireValid = SE_i_phi_decision34_and_i0_conv2d3x319_V1 & SE_i_arrayidx459_conv2d3x30_narrow_x_and1;

    // SE_out_i_llvm_fpga_mem_lm_conv2d3x321(STALLENABLE,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm_conv2d3x321_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm_conv2d3x321_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm_conv2d3x321_fromReg0 <= SE_out_i_llvm_fpga_mem_lm_conv2d3x321_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm_conv2d3x321_fromReg1 <= SE_out_i_llvm_fpga_mem_lm_conv2d3x321_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm_conv2d3x321_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_reg_stall_out) & SE_out_i_llvm_fpga_mem_lm_conv2d3x321_wireValid) | SE_out_i_llvm_fpga_mem_lm_conv2d3x321_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm_conv2d3x321_consumed1 = (~ (SE_out_redist31_i_reduction_conv2d3x3_2_conv2d3x317_q_241_fifo_backStall) & SE_out_i_llvm_fpga_mem_lm_conv2d3x321_wireValid) | SE_out_i_llvm_fpga_mem_lm_conv2d3x321_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm_conv2d3x321_StallValid = SE_out_i_llvm_fpga_mem_lm_conv2d3x321_backStall & SE_out_i_llvm_fpga_mem_lm_conv2d3x321_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm_conv2d3x321_toReg0 = SE_out_i_llvm_fpga_mem_lm_conv2d3x321_StallValid & SE_out_i_llvm_fpga_mem_lm_conv2d3x321_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm_conv2d3x321_toReg1 = SE_out_i_llvm_fpga_mem_lm_conv2d3x321_StallValid & SE_out_i_llvm_fpga_mem_lm_conv2d3x321_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm_conv2d3x321_or0 = SE_out_i_llvm_fpga_mem_lm_conv2d3x321_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm_conv2d3x321_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm_conv2d3x321_consumed1 & SE_out_i_llvm_fpga_mem_lm_conv2d3x321_or0);
    assign SE_out_i_llvm_fpga_mem_lm_conv2d3x321_backStall = SE_out_i_llvm_fpga_mem_lm_conv2d3x321_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm_conv2d3x321_V0 = SE_out_i_llvm_fpga_mem_lm_conv2d3x321_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm_conv2d3x321_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm_conv2d3x321_V1 = SE_out_i_llvm_fpga_mem_lm_conv2d3x321_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm_conv2d3x321_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm_conv2d3x321_wireValid = i_llvm_fpga_mem_lm_conv2d3x321_out_o_valid;

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_phi_decision34_and_i0_conv2d3x319(LOGICAL,39)@2
    assign i_phi_decision34_and_i0_conv2d3x319_q = sel_for_coalesced_delay_0_h & i_reduction_conv2d3x3_2_conv2d3x317_q;

    // i_unnamed_conv2d3x320(LOGICAL,45)@2
    assign i_unnamed_conv2d3x320_q = i_phi_decision34_and_i0_conv2d3x319_q ^ VCC_q;

    // i_add43_conv2d3x310(ADD,14)@2
    assign i_add43_conv2d3x310_a = {1'b0, redist30_bgTrunc_i_sub28_conv2d3x33_sel_x_b_1_0_q};
    assign i_add43_conv2d3x310_b = {1'b0, sel_for_coalesced_delay_0_d};
    assign i_add43_conv2d3x310_o = $unsigned(i_add43_conv2d3x310_a) + $unsigned(i_add43_conv2d3x310_b);
    assign i_add43_conv2d3x310_q = i_add43_conv2d3x310_o[32:0];

    // bgTrunc_i_add43_conv2d3x310_sel_x(BITSELECT,70)@2
    assign bgTrunc_i_add43_conv2d3x310_sel_x_b = i_add43_conv2d3x310_q[31:0];

    // i_idxprom44_conv2d3x315_sel_x(BITSELECT,91)@2
    assign i_idxprom44_conv2d3x315_sel_x_b = $unsigned({{32{bgTrunc_i_add43_conv2d3x310_sel_x_b[31]}}, bgTrunc_i_add43_conv2d3x310_sel_x_b[31:0]});

    // i_arrayidx459_conv2d3x30_narrow_x(BITSELECT,81)@2
    assign i_arrayidx459_conv2d3x30_narrow_x_b = i_idxprom44_conv2d3x315_sel_x_b[61:0];

    // i_arrayidx459_conv2d3x30_shift_join_x(BITJOIN,82)@2
    assign i_arrayidx459_conv2d3x30_shift_join_x_q = {i_arrayidx459_conv2d3x30_narrow_x_b, i_arrayidx459_conv2d3x318_vt_const_1_q};

    // bubble_join_i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31(BITJOIN,162)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31_q = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31(BITSELECT,163)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31_vt_select_63(BITSELECT,38)@2
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31_vt_const_9(CONSTANT,36)
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31_vt_join(BITJOIN,37)@2
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31_vt_const_9_q};

    // i_arrayidx459_conv2d3x30_add_x(ADD,79)@2
    assign i_arrayidx459_conv2d3x30_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer23_conv2d3x31_vt_join_q};
    assign i_arrayidx459_conv2d3x30_add_x_b = {1'b0, i_arrayidx459_conv2d3x30_shift_join_x_q};
    assign i_arrayidx459_conv2d3x30_add_x_o = $unsigned(i_arrayidx459_conv2d3x30_add_x_a) + $unsigned(i_arrayidx459_conv2d3x30_add_x_b);
    assign i_arrayidx459_conv2d3x30_add_x_q = i_arrayidx459_conv2d3x30_add_x_o[64:0];

    // i_arrayidx459_conv2d3x30_dupName_0_trunc_sel_x(BITSELECT,84)@2
    assign i_arrayidx459_conv2d3x30_dupName_0_trunc_sel_x_b = i_arrayidx459_conv2d3x30_add_x_q[63:0];

    // i_arrayidx459_conv2d3x318_vt_select_63(BITSELECT,18)@2
    assign i_arrayidx459_conv2d3x318_vt_select_63_b = i_arrayidx459_conv2d3x30_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx459_conv2d3x318_vt_join(BITJOIN,17)@2
    assign i_arrayidx459_conv2d3x318_vt_join_q = {i_arrayidx459_conv2d3x318_vt_select_63_b, i_arrayidx459_conv2d3x318_vt_const_1_q};

    // i_llvm_fpga_mem_lm_conv2d3x321(BLACKBOX,33)@2
    // in in_i_stall@20000000
    // out out_lm_conv2d3x3_avm_address@20000000
    // out out_lm_conv2d3x3_avm_burstcount@20000000
    // out out_lm_conv2d3x3_avm_byteenable@20000000
    // out out_lm_conv2d3x3_avm_enable@20000000
    // out out_lm_conv2d3x3_avm_read@20000000
    // out out_lm_conv2d3x3_avm_write@20000000
    // out out_lm_conv2d3x3_avm_writedata@20000000
    // out out_o_readdata@243
    // out out_o_stall@20000000
    // out out_o_valid@243
    conv2d3x3_i_llvm_fpga_mem_lm_0 thei_llvm_fpga_mem_lm_conv2d3x321 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx459_conv2d3x318_vt_join_q),
        .in_i_predicate(i_unnamed_conv2d3x320_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm_conv2d3x321_backStall),
        .in_i_valid(SE_i_arrayidx459_conv2d3x30_narrow_x_V0),
        .in_lm_conv2d3x3_avm_readdata(in_lm_conv2d3x3_avm_readdata),
        .in_lm_conv2d3x3_avm_readdatavalid(in_lm_conv2d3x3_avm_readdatavalid),
        .in_lm_conv2d3x3_avm_waitrequest(in_lm_conv2d3x3_avm_waitrequest),
        .in_lm_conv2d3x3_avm_writeack(in_lm_conv2d3x3_avm_writeack),
        .out_lm_conv2d3x3_avm_address(i_llvm_fpga_mem_lm_conv2d3x321_out_lm_conv2d3x3_avm_address),
        .out_lm_conv2d3x3_avm_burstcount(i_llvm_fpga_mem_lm_conv2d3x321_out_lm_conv2d3x3_avm_burstcount),
        .out_lm_conv2d3x3_avm_byteenable(i_llvm_fpga_mem_lm_conv2d3x321_out_lm_conv2d3x3_avm_byteenable),
        .out_lm_conv2d3x3_avm_enable(i_llvm_fpga_mem_lm_conv2d3x321_out_lm_conv2d3x3_avm_enable),
        .out_lm_conv2d3x3_avm_read(i_llvm_fpga_mem_lm_conv2d3x321_out_lm_conv2d3x3_avm_read),
        .out_lm_conv2d3x3_avm_write(i_llvm_fpga_mem_lm_conv2d3x321_out_lm_conv2d3x3_avm_write),
        .out_lm_conv2d3x3_avm_writedata(i_llvm_fpga_mem_lm_conv2d3x321_out_lm_conv2d3x3_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm_conv2d3x321_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm_conv2d3x321_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm_conv2d3x321_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,13)
    assign out_lm_conv2d3x3_avm_address = i_llvm_fpga_mem_lm_conv2d3x321_out_lm_conv2d3x3_avm_address;
    assign out_lm_conv2d3x3_avm_enable = i_llvm_fpga_mem_lm_conv2d3x321_out_lm_conv2d3x3_avm_enable;
    assign out_lm_conv2d3x3_avm_read = i_llvm_fpga_mem_lm_conv2d3x321_out_lm_conv2d3x3_avm_read;
    assign out_lm_conv2d3x3_avm_write = i_llvm_fpga_mem_lm_conv2d3x321_out_lm_conv2d3x3_avm_write;
    assign out_lm_conv2d3x3_avm_writedata = i_llvm_fpga_mem_lm_conv2d3x321_out_lm_conv2d3x3_avm_writedata;
    assign out_lm_conv2d3x3_avm_byteenable = i_llvm_fpga_mem_lm_conv2d3x321_out_lm_conv2d3x3_avm_byteenable;
    assign out_lm_conv2d3x3_avm_burstcount = i_llvm_fpga_mem_lm_conv2d3x321_out_lm_conv2d3x3_avm_burstcount;

    // sync_out(GPOUT,68)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,77)
    assign out_lm13_conv2d3x3_avm_address = i_llvm_fpga_mem_lm13_conv2d3x322_out_lm13_conv2d3x3_avm_address;
    assign out_lm13_conv2d3x3_avm_enable = i_llvm_fpga_mem_lm13_conv2d3x322_out_lm13_conv2d3x3_avm_enable;
    assign out_lm13_conv2d3x3_avm_read = i_llvm_fpga_mem_lm13_conv2d3x322_out_lm13_conv2d3x3_avm_read;
    assign out_lm13_conv2d3x3_avm_write = i_llvm_fpga_mem_lm13_conv2d3x322_out_lm13_conv2d3x3_avm_write;
    assign out_lm13_conv2d3x3_avm_writedata = i_llvm_fpga_mem_lm13_conv2d3x322_out_lm13_conv2d3x3_avm_writedata;
    assign out_lm13_conv2d3x3_avm_byteenable = i_llvm_fpga_mem_lm13_conv2d3x322_out_lm13_conv2d3x3_avm_byteenable;
    assign out_lm13_conv2d3x3_avm_burstcount = i_llvm_fpga_mem_lm13_conv2d3x322_out_lm13_conv2d3x3_avm_burstcount;

    // c_i32_328(CONSTANT,9)
    assign c_i32_328_q = $unsigned(32'b00000000000000000000000000000011);

    // i_cmp22_conv2d3x35(COMPARE,19)@250
    assign i_cmp22_conv2d3x35_a = {2'b00, i_inc_conv2d3x32_vt_join_q};
    assign i_cmp22_conv2d3x35_b = {2'b00, c_i32_328_q};
    assign i_cmp22_conv2d3x35_o = $unsigned(i_cmp22_conv2d3x35_a) - $unsigned(i_cmp22_conv2d3x35_b);
    assign i_cmp22_conv2d3x35_c[0] = i_cmp22_conv2d3x35_o[33];

    // i_unnamed_conv2d3x312(LOGICAL,44)@250
    assign i_unnamed_conv2d3x312_q = bubble_select_redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_b & i_cmp22_conv2d3x35_c;

    // bubble_join_redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo(BITJOIN,186)
    assign bubble_join_redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_q = redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_data_out;

    // bubble_select_redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo(BITSELECT,187)
    assign bubble_select_redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_b = $unsigned(bubble_join_redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_q[30:0]);

    // i_inc_conv2d3x32_vt_join(BITJOIN,30)@250
    assign i_inc_conv2d3x32_vt_join_q = {GND_q, bubble_select_redist32_i_inc_conv2d3x32_vt_select_30_b_248_fifo_b};

    // bubble_join_redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo(BITJOIN,180)
    assign bubble_join_redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_q = redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_data_out;

    // bubble_select_redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo(BITSELECT,181)
    assign bubble_select_redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_b = $unsigned(bubble_join_redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_q[0:0]);

    // bubble_join_i_sfc_s_c0_in_for_body25_conv2d3x3s_c0_enter208183_conv2d3x324_aunroll_x(BITJOIN,174)
    assign bubble_join_i_sfc_s_c0_in_for_body25_conv2d3x3s_c0_enter208183_conv2d3x324_aunroll_x_q = i_sfc_s_c0_in_for_body25_conv2d3x3s_c0_enter208183_conv2d3x324_aunroll_x_out_c0_exit213_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_body25_conv2d3x3s_c0_enter208183_conv2d3x324_aunroll_x(BITSELECT,175)
    assign bubble_select_i_sfc_s_c0_in_for_body25_conv2d3x3s_c0_enter208183_conv2d3x324_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body25_conv2d3x3s_c0_enter208183_conv2d3x324_aunroll_x_q[31:0]);

    // bubble_join_coalesced_delay_2_fifo(BITJOIN,192)
    assign bubble_join_coalesced_delay_2_fifo_q = coalesced_delay_2_fifo_data_out;

    // bubble_select_coalesced_delay_2_fifo(BITSELECT,193)
    assign bubble_select_coalesced_delay_2_fifo_b = $unsigned(bubble_join_coalesced_delay_2_fifo_q[129:0]);

    // sel_for_coalesced_delay_2(BITSELECT,141)
    assign sel_for_coalesced_delay_2_b = $unsigned(bubble_select_coalesced_delay_2_fifo_b[63:0]);
    assign sel_for_coalesced_delay_2_c = $unsigned(bubble_select_coalesced_delay_2_fifo_b[95:64]);
    assign sel_for_coalesced_delay_2_d = $unsigned(bubble_select_coalesced_delay_2_fifo_b[127:96]);
    assign sel_for_coalesced_delay_2_e = $unsigned(bubble_select_coalesced_delay_2_fifo_b[128:128]);
    assign sel_for_coalesced_delay_2_f = $unsigned(bubble_select_coalesced_delay_2_fifo_b[129:129]);

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,189)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,190)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[357:0]);

    // sel_for_coalesced_delay_1(BITSELECT,138)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[95:64]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[127:96]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[159:128]);
    assign sel_for_coalesced_delay_1_f = $unsigned(bubble_select_coalesced_delay_1_fifo_b[191:160]);
    assign sel_for_coalesced_delay_1_g = $unsigned(bubble_select_coalesced_delay_1_fifo_b[223:192]);
    assign sel_for_coalesced_delay_1_h = $unsigned(bubble_select_coalesced_delay_1_fifo_b[255:224]);
    assign sel_for_coalesced_delay_1_i = $unsigned(bubble_select_coalesced_delay_1_fifo_b[287:256]);
    assign sel_for_coalesced_delay_1_j = $unsigned(bubble_select_coalesced_delay_1_fifo_b[319:288]);
    assign sel_for_coalesced_delay_1_k = $unsigned(bubble_select_coalesced_delay_1_fifo_b[351:320]);
    assign sel_for_coalesced_delay_1_l = $unsigned(bubble_select_coalesced_delay_1_fifo_b[352:352]);
    assign sel_for_coalesced_delay_1_m = $unsigned(bubble_select_coalesced_delay_1_fifo_b[353:353]);
    assign sel_for_coalesced_delay_1_n = $unsigned(bubble_select_coalesced_delay_1_fifo_b[354:354]);
    assign sel_for_coalesced_delay_1_o = $unsigned(bubble_select_coalesced_delay_1_fifo_b[355:355]);
    assign sel_for_coalesced_delay_1_p = $unsigned(bubble_select_coalesced_delay_1_fifo_b[356:356]);
    assign sel_for_coalesced_delay_1_q = $unsigned(bubble_select_coalesced_delay_1_fifo_b[357:357]);

    // dupName_0_sync_out_x(GPOUT,78)@250
    assign out_c0_exe1081 = sel_for_coalesced_delay_1_m;
    assign out_c0_exe111 = sel_for_coalesced_delay_2_b;
    assign out_c0_exe1186151 = sel_for_coalesced_delay_1_i;
    assign out_c0_exe1190 = sel_for_coalesced_delay_1_n;
    assign out_c0_exe1195167 = sel_for_coalesced_delay_1_k;
    assign out_c0_exe12101 = sel_for_coalesced_delay_1_f;
    assign out_c0_exe1214 = bubble_select_i_sfc_s_c0_in_for_body25_conv2d3x3s_c0_enter208183_conv2d3x324_aunroll_x_b;
    assign out_c0_exe13111 = sel_for_coalesced_delay_1_o;
    assign out_c0_exe14120 = sel_for_coalesced_delay_1_p;
    assign out_c0_exe15130 = bubble_select_redist19_conv2d3x3_B5_merge_reg_aunroll_x_out_data_out_15_tpl_249_fifo_b;
    assign out_c0_exe16140 = sel_for_coalesced_delay_1_q;
    assign out_c0_exe2196168 = sel_for_coalesced_delay_2_c;
    assign out_c0_exe322 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe431 = sel_for_coalesced_delay_1_l;
    assign out_c0_exe542 = sel_for_coalesced_delay_1_c;
    assign out_c0_exe649 = sel_for_coalesced_delay_1_d;
    assign out_c0_exe752 = sel_for_coalesced_delay_2_e;
    assign out_c0_exe861 = sel_for_coalesced_delay_2_f;
    assign out_c0_exe971 = sel_for_coalesced_delay_1_e;
    assign out_inc = i_inc_conv2d3x32_vt_join_q;
    assign out_j_062149 = sel_for_coalesced_delay_1_h;
    assign out_k_059163 = sel_for_coalesced_delay_1_j;
    assign out_mul46_add4172 = sel_for_coalesced_delay_2_d;
    assign out_unnamed_conv2d3x37 = sel_for_coalesced_delay_1_g;
    assign out_unnamed_conv2d3x38 = i_unnamed_conv2d3x312_q;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_mem_lm_conv2d3x321_1_V0;

endmodule
