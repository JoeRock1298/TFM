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

// SystemVerilog created from conv2d1x1_bb_B6_stall_region
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B6_stall_region (
    input wire [511:0] in_lm18_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm18_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm18_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm18_conv2d1x1_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_filter_weight,
    input wire [0:0] in_flush,
    input wire [63:0] in_input_im,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [31:0] in_ij_028_pop1055,
    input wire [31:0] in_lm29_pop1459,
    input wire [31:0] in_lm44,
    input wire [31:0] in_mul1331_pop1560,
    input wire [31:0] in_mul1347,
    input wire [31:0] in_mul2333_pop1661,
    input wire [31:0] in_mul2350,
    input wire [31:0] in_mul27_pop1156,
    input wire [31:0] in_mul41,
    input wire [0:0] in_notcmp1754,
    input wire [0:0] in_notcmp2235_pop1762,
    input wire [0:0] in_notcmp2253,
    input wire [0:0] in_pop1257,
    input wire [0:0] in_pop1358,
    input wire [0:0] in_unnamed_conv2d1x111,
    input wire [0:0] in_unnamed_conv2d1x112,
    input wire [32:0] in_unnamed_conv2d1x113,
    input wire [0:0] in_valid_in,
    input wire [511:0] in_lm20_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm20_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm20_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm20_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm18_conv2d1x1_avm_address,
    output wire [0:0] out_lm18_conv2d1x1_avm_enable,
    output wire [0:0] out_lm18_conv2d1x1_avm_read,
    output wire [0:0] out_lm18_conv2d1x1_avm_write,
    output wire [511:0] out_lm18_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm18_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm18_conv2d1x1_avm_burstcount,
    output wire [0:0] out_c0_exe10151,
    output wire [0:0] out_c0_exe11152,
    output wire [31:0] out_c0_exe3144,
    output wire [0:0] out_c0_exe7148,
    output wire [0:0] out_c0_exe8149,
    output wire [31:0] out_c0_exe9150,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_valid_out,
    output wire [30:0] out_lm20_conv2d1x1_avm_address,
    output wire [0:0] out_lm20_conv2d1x1_avm_enable,
    output wire [0:0] out_lm20_conv2d1x1_avm_read,
    output wire [0:0] out_lm20_conv2d1x1_avm_write,
    output wire [511:0] out_lm20_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm20_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm20_conv2d1x1_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [30:0] i_llvm_fpga_mem_lm18_conv2d1x13_out_lm18_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm18_conv2d1x13_out_lm18_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm18_conv2d1x13_out_lm18_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm18_conv2d1x13_out_lm18_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm18_conv2d1x13_out_lm18_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm18_conv2d1x13_out_lm18_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm18_conv2d1x13_out_lm18_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm18_conv2d1x13_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm18_conv2d1x13_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm18_conv2d1x13_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm20_conv2d1x14_out_lm20_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm20_conv2d1x14_out_lm20_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm20_conv2d1x14_out_lm20_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm20_conv2d1x14_out_lm20_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm20_conv2d1x14_out_lm20_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm20_conv2d1x14_out_lm20_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm20_conv2d1x14_out_lm20_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm20_conv2d1x14_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm20_conv2d1x14_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm20_conv2d1x14_out_o_valid;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [32:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [31:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [31:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [31:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [31:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [31:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_17_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_5_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_12_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_21_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x16_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x16_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x16_aunroll_x_out_c1_exit_1_tpl;
    wire [34:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [67:0] join_for_coalesced_delay_1_q;
    wire [31:0] sel_for_coalesced_delay_1_b;
    wire [31:0] sel_for_coalesced_delay_1_c;
    wire [0:0] sel_for_coalesced_delay_1_d;
    wire [0:0] sel_for_coalesced_delay_1_e;
    wire [0:0] sel_for_coalesced_delay_1_f;
    wire [0:0] sel_for_coalesced_delay_1_g;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [34:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [34:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [67:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [67:0] coalesced_delay_1_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm18_conv2d1x13_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm18_conv2d1x13_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm20_conv2d1x14_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm20_conv2d1x14_b;
    wire [328:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [0:0] bubble_select_stall_entry_o;
    wire [0:0] bubble_select_stall_entry_p;
    wire [0:0] bubble_select_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_r;
    wire [32:0] bubble_select_stall_entry_s;
    wire [328:0] bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_e;
    wire [32:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_g;
    wire [31:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_k;
    wire [31:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_l;
    wire [31:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_m;
    wire [0:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_n;
    wire [0:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_o;
    wire [31:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_p;
    wire [31:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_r;
    wire [0:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_s;
    wire [231:0] bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_f;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_m;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_n;
    wire [31:0] bubble_join_i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x16_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x16_aunroll_x_b;
    wire [34:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [34:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [67:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [67:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_conv2d1x1_B6_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv2d1x1_B6_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv2d1x1_B6_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_V3;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;


    // bubble_join_stall_entry(BITJOIN,62)
    assign bubble_join_stall_entry_q = {in_unnamed_conv2d1x113, in_unnamed_conv2d1x112, in_unnamed_conv2d1x111, in_pop1358, in_pop1257, in_notcmp2253, in_notcmp2235_pop1762, in_notcmp1754, in_mul41, in_mul27_pop1156, in_mul2350, in_mul2333_pop1661, in_mul1347, in_mul1331_pop1560, in_lm44, in_lm29_pop1459, in_ij_028_pop1055, in_forked};

    // bubble_select_stall_entry(BITSELECT,63)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[96:65]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[128:97]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[160:129]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[192:161]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[224:193]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[256:225]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[288:257]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[289:289]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[290:290]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[291:291]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[292:292]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[293:293]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[294:294]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[295:295]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[328:296]);

    // SE_stall_entry(STALLENABLE,86)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv2d1x1_B6_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // conv2d1x1_B6_merge_reg_aunroll_x(BLACKBOX,30)@0
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
    conv2d1x1_B6_merge_reg theconv2d1x1_B6_merge_reg_aunroll_x (
        .in_stall_in(SE_out_conv2d1x1_B6_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_k),
        .in_data_in_2_tpl(bubble_select_stall_entry_q),
        .in_data_in_3_tpl(bubble_select_stall_entry_r),
        .in_data_in_4_tpl(bubble_select_stall_entry_s),
        .in_data_in_5_tpl(bubble_select_stall_entry_e),
        .in_data_in_6_tpl(bubble_select_stall_entry_g),
        .in_data_in_7_tpl(bubble_select_stall_entry_i),
        .in_data_in_8_tpl(bubble_select_stall_entry_n),
        .in_data_in_9_tpl(bubble_select_stall_entry_l),
        .in_data_in_10_tpl(bubble_select_stall_entry_c),
        .in_data_in_11_tpl(bubble_select_stall_entry_j),
        .in_data_in_12_tpl(bubble_select_stall_entry_o),
        .in_data_in_13_tpl(bubble_select_stall_entry_p),
        .in_data_in_14_tpl(bubble_select_stall_entry_d),
        .in_data_in_15_tpl(bubble_select_stall_entry_f),
        .in_data_in_16_tpl(bubble_select_stall_entry_h),
        .in_data_in_17_tpl(bubble_select_stall_entry_m),
        .out_stall_out(conv2d1x1_B6_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv2d1x1_B6_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_17_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_conv2d1x1_B6_merge_reg_aunroll_x(BITJOIN,66)
    assign bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q = {conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_17_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_16_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_15_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_14_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_13_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_12_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_11_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_10_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_9_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_8_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_7_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_6_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_5_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_4_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_3_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_2_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_1_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv2d1x1_B6_merge_reg_aunroll_x(BITSELECT,67)
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[33:33]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[34:34]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_f = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[67:35]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_g = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[99:68]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_h = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[131:100]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_i = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[163:132]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_j = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[164:164]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_k = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[165:165]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_l = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[197:166]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_m = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[229:198]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_n = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[230:230]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_o = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[231:231]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_p = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[263:232]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_q = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[295:264]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_r = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[327:296]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_s = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[328:328]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_conv2d1x1_B6_merge_reg_aunroll_x(STALLENABLE,89)
    // Valid signal propagation
    assign SE_out_conv2d1x1_B6_merge_reg_aunroll_x_V0 = SE_out_conv2d1x1_B6_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_conv2d1x1_B6_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_o_stall | ~ (SE_out_conv2d1x1_B6_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_conv2d1x1_B6_merge_reg_aunroll_x_wireValid = conv2d1x1_B6_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x(BITJOIN,70)
    assign bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_q = {i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_21_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_12_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_11_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_10_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_9_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_8_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_7_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_6_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_5_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_4_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_3_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_2_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x(BITSELECT,71)
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_q[33:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_q[97:34]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_q[98:98]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_q[162:99]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_q[163:163]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_q[164:164]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_q[196:165]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_q[197:197]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_q[198:198]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_q[199:199]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_q[231:200]);

    // join_for_coalesced_delay_1(BITJOIN,51)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_l, bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_d};

    // bubble_join_i_llvm_fpga_mem_lm20_conv2d1x14(BITJOIN,59)
    assign bubble_join_i_llvm_fpga_mem_lm20_conv2d1x14_q = i_llvm_fpga_mem_lm20_conv2d1x14_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm20_conv2d1x14(BITSELECT,60)
    assign bubble_select_i_llvm_fpga_mem_lm20_conv2d1x14_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm20_conv2d1x14_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm18_conv2d1x13(BITJOIN,56)
    assign bubble_join_i_llvm_fpga_mem_lm18_conv2d1x13_q = i_llvm_fpga_mem_lm18_conv2d1x13_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm18_conv2d1x13(BITSELECT,57)
    assign bubble_select_i_llvm_fpga_mem_lm18_conv2d1x13_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm18_conv2d1x13_q[31:0]);

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,99)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x16_aunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = i_llvm_fpga_mem_lm20_conv2d1x14_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_lm18_conv2d1x13_out_o_valid & SE_out_coalesced_delay_0_fifo_and1;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,77)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,78)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[34:0]);

    // sel_for_coalesced_delay_0(BITSELECT,49)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[32:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[33:33]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[34:34]);

    // i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x16_aunroll_x(BLACKBOX,36)@186
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@194
    // out out_c1_exit_0_tpl@194
    // out out_c1_exit_1_tpl@194
    conv2d1x1_i_sfc_s_c1_in_for_body8_s_c1_enter_conv2d1x16 thei_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x16_aunroll_x (
        .in_c0_exe1142(sel_for_coalesced_delay_0_c),
        .in_c0_exe12153(sel_for_coalesced_delay_0_e),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .in_c1_eni6_0_tpl(GND_q),
        .in_c1_eni6_1_tpl(sel_for_coalesced_delay_0_b),
        .in_c1_eni6_2_tpl(sel_for_coalesced_delay_0_e),
        .in_c1_eni6_3_tpl(bubble_select_i_llvm_fpga_mem_lm18_conv2d1x13_b),
        .in_c1_eni6_4_tpl(bubble_select_i_llvm_fpga_mem_lm20_conv2d1x14_b),
        .in_c1_eni6_5_tpl(sel_for_coalesced_delay_0_c),
        .in_c1_eni6_6_tpl(sel_for_coalesced_delay_0_d),
        .out_o_stall(i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x16_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x16_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x16_aunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,101)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_wireValid = i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x16_aunroll_x_out_o_valid & SE_out_coalesced_delay_1_fifo_and0;

    // coalesced_delay_1_fifo(STALLFIFO,54)
    assign coalesced_delay_1_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_V3;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(186),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(68),
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

    // join_for_coalesced_delay_0(BITJOIN,48)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_m, bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_n};

    // coalesced_delay_0_fifo(STALLFIFO,53)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_V2;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(178),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(35),
        .IMPL("ram")
    ) thecoalesced_delay_0_fifo (
        .valid_in(coalesced_delay_0_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_0_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_0_q),
        .valid_out(coalesced_delay_0_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_0_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_0_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm20_conv2d1x14(BLACKBOX,8)@9
    // in in_i_stall@20000000
    // out out_lm20_conv2d1x1_avm_address@20000000
    // out out_lm20_conv2d1x1_avm_burstcount@20000000
    // out out_lm20_conv2d1x1_avm_byteenable@20000000
    // out out_lm20_conv2d1x1_avm_enable@20000000
    // out out_lm20_conv2d1x1_avm_read@20000000
    // out out_lm20_conv2d1x1_avm_write@20000000
    // out out_lm20_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@186
    // out out_o_stall@20000000
    // out out_o_valid@186
    conv2d1x1_i_llvm_fpga_mem_lm20_0 thei_llvm_fpga_mem_lm20_conv2d1x14 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_g),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_f),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_V1),
        .in_lm20_conv2d1x1_avm_readdata(in_lm20_conv2d1x1_avm_readdata),
        .in_lm20_conv2d1x1_avm_readdatavalid(in_lm20_conv2d1x1_avm_readdatavalid),
        .in_lm20_conv2d1x1_avm_waitrequest(in_lm20_conv2d1x1_avm_waitrequest),
        .in_lm20_conv2d1x1_avm_writeack(in_lm20_conv2d1x1_avm_writeack),
        .out_lm20_conv2d1x1_avm_address(i_llvm_fpga_mem_lm20_conv2d1x14_out_lm20_conv2d1x1_avm_address),
        .out_lm20_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm20_conv2d1x14_out_lm20_conv2d1x1_avm_burstcount),
        .out_lm20_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm20_conv2d1x14_out_lm20_conv2d1x1_avm_byteenable),
        .out_lm20_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm20_conv2d1x14_out_lm20_conv2d1x1_avm_enable),
        .out_lm20_conv2d1x1_avm_read(i_llvm_fpga_mem_lm20_conv2d1x14_out_lm20_conv2d1x1_avm_read),
        .out_lm20_conv2d1x1_avm_write(i_llvm_fpga_mem_lm20_conv2d1x14_out_lm20_conv2d1x1_avm_write),
        .out_lm20_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm20_conv2d1x14_out_lm20_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm20_conv2d1x14_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm20_conv2d1x14_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm20_conv2d1x14_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm18_conv2d1x13(BLACKBOX,7)@9
    // in in_i_stall@20000000
    // out out_lm18_conv2d1x1_avm_address@20000000
    // out out_lm18_conv2d1x1_avm_burstcount@20000000
    // out out_lm18_conv2d1x1_avm_byteenable@20000000
    // out out_lm18_conv2d1x1_avm_enable@20000000
    // out out_lm18_conv2d1x1_avm_read@20000000
    // out out_lm18_conv2d1x1_avm_write@20000000
    // out out_lm18_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@186
    // out out_o_stall@20000000
    // out out_o_valid@186
    conv2d1x1_i_llvm_fpga_mem_lm18_0 thei_llvm_fpga_mem_lm18_conv2d1x13 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_e),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_f),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_V0),
        .in_lm18_conv2d1x1_avm_readdata(in_lm18_conv2d1x1_avm_readdata),
        .in_lm18_conv2d1x1_avm_readdatavalid(in_lm18_conv2d1x1_avm_readdatavalid),
        .in_lm18_conv2d1x1_avm_waitrequest(in_lm18_conv2d1x1_avm_waitrequest),
        .in_lm18_conv2d1x1_avm_writeack(in_lm18_conv2d1x1_avm_writeack),
        .out_lm18_conv2d1x1_avm_address(i_llvm_fpga_mem_lm18_conv2d1x13_out_lm18_conv2d1x1_avm_address),
        .out_lm18_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm18_conv2d1x13_out_lm18_conv2d1x1_avm_burstcount),
        .out_lm18_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm18_conv2d1x13_out_lm18_conv2d1x1_avm_byteenable),
        .out_lm18_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm18_conv2d1x13_out_lm18_conv2d1x1_avm_enable),
        .out_lm18_conv2d1x1_avm_read(i_llvm_fpga_mem_lm18_conv2d1x13_out_lm18_conv2d1x1_avm_read),
        .out_lm18_conv2d1x1_avm_write(i_llvm_fpga_mem_lm18_conv2d1x13_out_lm18_conv2d1x1_avm_write),
        .out_lm18_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm18_conv2d1x13_out_lm18_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm18_conv2d1x13_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm18_conv2d1x13_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm18_conv2d1x13_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x(STALLENABLE,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_lm18_conv2d1x13_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_consumed1 = (~ (i_llvm_fpga_mem_lm20_conv2d1x14_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_consumed2 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_consumed3 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_or2);
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_wireValid = i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x(BLACKBOX,35)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit141_0_tpl@9
    // out out_c0_exit141_1_tpl@9
    // out out_c0_exit141_2_tpl@9
    // out out_c0_exit141_3_tpl@9
    // out out_c0_exit141_4_tpl@9
    // out out_c0_exit141_5_tpl@9
    // out out_c0_exit141_6_tpl@9
    // out out_c0_exit141_7_tpl@9
    // out out_c0_exit141_8_tpl@9
    // out out_c0_exit141_9_tpl@9
    // out out_c0_exit141_10_tpl@9
    // out out_c0_exit141_11_tpl@9
    // out out_c0_exit141_12_tpl@9
    // out out_c0_exit141_13_tpl@9
    // out out_c0_exit141_14_tpl@9
    // out out_c0_exit141_15_tpl@9
    // out out_c0_exit141_16_tpl@9
    // out out_c0_exit141_17_tpl@9
    // out out_c0_exit141_18_tpl@9
    // out out_c0_exit141_19_tpl@9
    // out out_c0_exit141_20_tpl@9
    // out out_c0_exit141_21_tpl@9
    conv2d1x1_i_sfc_s_c0_in_for_body8_s_c0_enter11310_conv2d1x11 thei_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x (
        .in_filter_weight(in_filter_weight),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_backStall),
        .in_i_valid(SE_out_conv2d1x1_B6_merge_reg_aunroll_x_V0),
        .in_input_im(in_input_im),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni18_0_tpl(GND_q),
        .in_c0_eni18_1_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_b),
        .in_c0_eni18_2_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_n),
        .in_c0_eni18_3_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_m),
        .in_c0_eni18_4_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_l),
        .in_c0_eni18_5_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_q),
        .in_c0_eni18_6_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_o),
        .in_c0_eni18_7_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_r),
        .in_c0_eni18_8_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_s),
        .in_c0_eni18_9_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_k),
        .in_c0_eni18_10_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_c),
        .in_c0_eni18_11_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_d),
        .in_c0_eni18_12_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_e),
        .in_c0_eni18_13_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_f),
        .in_c0_eni18_14_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_g),
        .in_c0_eni18_15_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_h),
        .in_c0_eni18_16_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_i),
        .in_c0_eni18_17_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_j),
        .in_c0_eni18_18_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_p),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit141_0_tpl(),
        .out_c0_exit141_1_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_1_tpl),
        .out_c0_exit141_2_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_2_tpl),
        .out_c0_exit141_3_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_3_tpl),
        .out_c0_exit141_4_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_4_tpl),
        .out_c0_exit141_5_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_5_tpl),
        .out_c0_exit141_6_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_6_tpl),
        .out_c0_exit141_7_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_7_tpl),
        .out_c0_exit141_8_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_8_tpl),
        .out_c0_exit141_9_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_9_tpl),
        .out_c0_exit141_10_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_10_tpl),
        .out_c0_exit141_11_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_11_tpl),
        .out_c0_exit141_12_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_12_tpl),
        .out_c0_exit141_13_tpl(),
        .out_c0_exit141_14_tpl(),
        .out_c0_exit141_15_tpl(),
        .out_c0_exit141_16_tpl(),
        .out_c0_exit141_17_tpl(),
        .out_c0_exit141_18_tpl(),
        .out_c0_exit141_19_tpl(),
        .out_c0_exit141_20_tpl(),
        .out_c0_exit141_21_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_c0_exit141_21_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out = i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out = i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,20)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter11310_conv2d1x11_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,28)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,32)
    assign out_lm18_conv2d1x1_avm_address = i_llvm_fpga_mem_lm18_conv2d1x13_out_lm18_conv2d1x1_avm_address;
    assign out_lm18_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm18_conv2d1x13_out_lm18_conv2d1x1_avm_enable;
    assign out_lm18_conv2d1x1_avm_read = i_llvm_fpga_mem_lm18_conv2d1x13_out_lm18_conv2d1x1_avm_read;
    assign out_lm18_conv2d1x1_avm_write = i_llvm_fpga_mem_lm18_conv2d1x13_out_lm18_conv2d1x1_avm_write;
    assign out_lm18_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm18_conv2d1x13_out_lm18_conv2d1x1_avm_writedata;
    assign out_lm18_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm18_conv2d1x13_out_lm18_conv2d1x1_avm_byteenable;
    assign out_lm18_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm18_conv2d1x13_out_lm18_conv2d1x1_avm_burstcount;

    // bubble_join_i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x16_aunroll_x(BITJOIN,73)
    assign bubble_join_i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x16_aunroll_x_q = i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x16_aunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x16_aunroll_x(BITSELECT,74)
    assign bubble_select_i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x16_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x16_aunroll_x_q[31:0]);

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,80)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,81)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[67:0]);

    // sel_for_coalesced_delay_1(BITSELECT,52)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[31:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:32]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[64:64]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[65:65]);
    assign sel_for_coalesced_delay_1_f = $unsigned(bubble_select_coalesced_delay_1_fifo_b[66:66]);
    assign sel_for_coalesced_delay_1_g = $unsigned(bubble_select_coalesced_delay_1_fifo_b[67:67]);

    // dupName_0_sync_out_x(GPOUT,33)@194
    assign out_c0_exe10151 = sel_for_coalesced_delay_1_f;
    assign out_c0_exe11152 = sel_for_coalesced_delay_1_g;
    assign out_c0_exe3144 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe7148 = sel_for_coalesced_delay_1_d;
    assign out_c0_exe8149 = sel_for_coalesced_delay_1_e;
    assign out_c0_exe9150 = sel_for_coalesced_delay_1_c;
    assign out_c1_exe1 = bubble_select_i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x16_aunroll_x_b;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,34)
    assign out_lm20_conv2d1x1_avm_address = i_llvm_fpga_mem_lm20_conv2d1x14_out_lm20_conv2d1x1_avm_address;
    assign out_lm20_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm20_conv2d1x14_out_lm20_conv2d1x1_avm_enable;
    assign out_lm20_conv2d1x1_avm_read = i_llvm_fpga_mem_lm20_conv2d1x14_out_lm20_conv2d1x1_avm_read;
    assign out_lm20_conv2d1x1_avm_write = i_llvm_fpga_mem_lm20_conv2d1x14_out_lm20_conv2d1x1_avm_write;
    assign out_lm20_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm20_conv2d1x14_out_lm20_conv2d1x1_avm_writedata;
    assign out_lm20_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm20_conv2d1x14_out_lm20_conv2d1x1_avm_byteenable;
    assign out_lm20_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm20_conv2d1x14_out_lm20_conv2d1x1_avm_burstcount;

endmodule
