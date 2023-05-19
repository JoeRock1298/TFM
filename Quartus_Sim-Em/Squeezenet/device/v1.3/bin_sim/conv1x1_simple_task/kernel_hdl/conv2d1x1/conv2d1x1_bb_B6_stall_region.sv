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
// SystemVerilog created on Wed May 17 13:49:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B6_stall_region (
    input wire [511:0] in_lm19_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm19_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm19_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm19_conv2d1x1_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_input_im,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_filter_weight_addr_053_replace_phi37_pop1474,
    input wire [63:0] in_filter_weight_addr_053_replace_phi61,
    input wire [0:0] in_forked,
    input wire [31:0] in_ij_049_pop1272,
    input wire [31:0] in_lm42_pop1878,
    input wire [31:0] in_lm67,
    input wire [31:0] in_mul39_pop1575,
    input wire [31:0] in_mul64,
    input wire [0:0] in_notcmp2571,
    input wire [0:0] in_notcmp3044_pop1979,
    input wire [0:0] in_notcmp3070,
    input wire [63:0] in_output_im_addr_054_replace_phi35_pop1373,
    input wire [63:0] in_output_im_addr_054_replace_phi58,
    input wire [0:0] in_pop1676,
    input wire [0:0] in_pop1777,
    input wire [0:0] in_unnamed_conv2d1x113,
    input wire [0:0] in_unnamed_conv2d1x114,
    input wire [32:0] in_unnamed_conv2d1x115,
    input wire [0:0] in_valid_in,
    input wire [511:0] in_lm21_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm21_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm21_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm21_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm19_conv2d1x1_avm_address,
    output wire [0:0] out_lm19_conv2d1x1_avm_enable,
    output wire [0:0] out_lm19_conv2d1x1_avm_read,
    output wire [0:0] out_lm19_conv2d1x1_avm_write,
    output wire [511:0] out_lm19_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm19_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm19_conv2d1x1_avm_burstcount,
    output wire [0:0] out_c0_exe10168,
    output wire [63:0] out_c0_exe11169,
    output wire [0:0] out_c0_exe12170,
    output wire [0:0] out_c0_exe13171,
    output wire [0:0] out_c0_exe14172,
    output wire [31:0] out_c0_exe3161,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_valid_out,
    input wire [511:0] in_lm22_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm22_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm22_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm22_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm21_conv2d1x1_avm_address,
    output wire [0:0] out_lm21_conv2d1x1_avm_enable,
    output wire [0:0] out_lm21_conv2d1x1_avm_read,
    output wire [0:0] out_lm21_conv2d1x1_avm_write,
    output wire [511:0] out_lm21_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm21_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm21_conv2d1x1_avm_burstcount,
    input wire [511:0] in_lm24_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm24_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm24_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm24_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm22_conv2d1x1_avm_address,
    output wire [0:0] out_lm22_conv2d1x1_avm_enable,
    output wire [0:0] out_lm22_conv2d1x1_avm_read,
    output wire [0:0] out_lm22_conv2d1x1_avm_write,
    output wire [511:0] out_lm22_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm22_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm22_conv2d1x1_avm_burstcount,
    input wire [511:0] in_lm26_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm26_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm26_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm26_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm24_conv2d1x1_avm_address,
    output wire [0:0] out_lm24_conv2d1x1_avm_enable,
    output wire [0:0] out_lm24_conv2d1x1_avm_read,
    output wire [0:0] out_lm24_conv2d1x1_avm_write,
    output wire [511:0] out_lm24_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm24_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm24_conv2d1x1_avm_burstcount,
    output wire [30:0] out_lm26_conv2d1x1_avm_address,
    output wire [0:0] out_lm26_conv2d1x1_avm_enable,
    output wire [0:0] out_lm26_conv2d1x1_avm_read,
    output wire [0:0] out_lm26_conv2d1x1_avm_write,
    output wire [511:0] out_lm26_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm26_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm26_conv2d1x1_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [30:0] i_llvm_fpga_mem_lm19_conv2d1x13_out_lm19_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm19_conv2d1x13_out_lm19_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm19_conv2d1x13_out_lm19_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm19_conv2d1x13_out_lm19_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm19_conv2d1x13_out_lm19_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm19_conv2d1x13_out_lm19_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm19_conv2d1x13_out_lm19_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm19_conv2d1x13_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm19_conv2d1x13_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm19_conv2d1x13_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm22_conv2d1x15_out_lm22_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm22_conv2d1x15_out_lm22_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm22_conv2d1x15_out_lm22_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm22_conv2d1x15_out_lm22_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm22_conv2d1x15_out_lm22_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm22_conv2d1x15_out_lm22_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm22_conv2d1x15_out_lm22_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm22_conv2d1x15_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm22_conv2d1x15_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm22_conv2d1x15_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm24_conv2d1x16_out_lm24_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm24_conv2d1x16_out_lm24_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm24_conv2d1x16_out_lm24_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm24_conv2d1x16_out_lm24_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm24_conv2d1x16_out_lm24_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm24_conv2d1x16_out_lm24_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm24_conv2d1x16_out_lm24_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm24_conv2d1x16_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm24_conv2d1x16_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm24_conv2d1x16_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm26_conv2d1x17_out_lm26_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm26_conv2d1x17_out_lm26_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm26_conv2d1x17_out_lm26_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm26_conv2d1x17_out_lm26_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm26_conv2d1x17_out_lm26_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm26_conv2d1x17_out_lm26_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm26_conv2d1x17_out_lm26_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm26_conv2d1x17_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm26_conv2d1x17_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm26_conv2d1x17_out_o_valid;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [63:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [63:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [32:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [31:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [63:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [63:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [31:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [31:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [0:0] conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_17_tpl;
    wire [30:0] i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_lm21_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_lm21_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_lm21_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_lm21_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_lm21_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_lm21_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_lm21_conv2d1x1_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_o_readdata_0_tpl;
    wire [31:0] i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_o_readdata_1_tpl;
    wire [31:0] i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_o_readdata_2_tpl;
    wire [31:0] i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_o_readdata_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_5_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_6_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_7_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_8_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_10_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_13_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_14_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_15_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_24_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_1_tpl;
    wire [64:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [34:0] join_for_coalesced_delay_1_q;
    wire [31:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] sel_for_coalesced_delay_1_d;
    wire [0:0] sel_for_coalesced_delay_1_e;
    wire [99:0] join_for_coalesced_delay_2_q;
    wire [63:0] sel_for_coalesced_delay_2_b;
    wire [31:0] sel_for_coalesced_delay_2_c;
    wire [0:0] sel_for_coalesced_delay_2_d;
    wire [0:0] sel_for_coalesced_delay_2_e;
    wire [0:0] sel_for_coalesced_delay_2_f;
    wire [0:0] sel_for_coalesced_delay_2_g;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [64:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [64:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [34:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [34:0] coalesced_delay_1_fifo_data_out;
    wire [0:0] coalesced_delay_2_fifo_valid_in;
    wire coalesced_delay_2_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_in;
    wire coalesced_delay_2_fifo_stall_in_bitsignaltemp;
    wire [99:0] coalesced_delay_2_fifo_data_in;
    wire [0:0] coalesced_delay_2_fifo_valid_out;
    wire coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_out;
    wire coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    wire [99:0] coalesced_delay_2_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm19_conv2d1x13_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm19_conv2d1x13_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm22_conv2d1x15_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm22_conv2d1x15_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm24_conv2d1x16_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm24_conv2d1x16_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm26_conv2d1x17_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm26_conv2d1x17_b;
    wire [456:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [63:0] bubble_select_stall_entry_m;
    wire [63:0] bubble_select_stall_entry_n;
    wire [0:0] bubble_select_stall_entry_o;
    wire [0:0] bubble_select_stall_entry_p;
    wire [0:0] bubble_select_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_r;
    wire [32:0] bubble_select_stall_entry_s;
    wire [456:0] bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_b;
    wire [63:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_c;
    wire [63:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_g;
    wire [32:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_k;
    wire [31:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_l;
    wire [63:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_m;
    wire [63:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_n;
    wire [31:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_o;
    wire [0:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_p;
    wire [0:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_r;
    wire [0:0] bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_s;
    wire [127:0] bubble_join_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_b;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_c;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_d;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_e;
    wire [455:0] bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_f;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_g;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_h;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_i;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_k;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_m;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_n;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_o;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_p;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_q;
    wire [31:0] bubble_join_i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_b;
    wire [64:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [64:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [34:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [34:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [99:0] bubble_join_coalesced_delay_2_fifo_q;
    wire [99:0] bubble_select_coalesced_delay_2_fifo_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_conv2d1x1_B6_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv2d1x1_B6_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv2d1x1_B6_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_toReg4;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_toReg5;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_toReg6;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg6;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed6;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_or3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_or4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_or5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_V3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_V4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_V5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_V6;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and2;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and3;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and4;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_2_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_2_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_2_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_2_fifo_V0;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_stall_in_bitsignaltemp;
    wire [127:0] bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_data_in;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_stall_out_bitsignaltemp;
    wire [127:0] bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_data_out;


    // bubble_join_stall_entry(BITJOIN,88)
    assign bubble_join_stall_entry_q = {in_unnamed_conv2d1x115, in_unnamed_conv2d1x114, in_unnamed_conv2d1x113, in_pop1777, in_pop1676, in_output_im_addr_054_replace_phi58, in_output_im_addr_054_replace_phi35_pop1373, in_notcmp3070, in_notcmp3044_pop1979, in_notcmp2571, in_mul64, in_mul39_pop1575, in_lm67, in_lm42_pop1878, in_ij_049_pop1272, in_forked, in_filter_weight_addr_053_replace_phi61, in_filter_weight_addr_053_replace_phi37_pop1474};

    // bubble_select_stall_entry(BITSELECT,89)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[127:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[128:128]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[160:129]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[192:161]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[224:193]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[256:225]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[288:257]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[289:289]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[290:290]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[291:291]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[355:292]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[419:356]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[420:420]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[421:421]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[422:422]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[423:423]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[456:424]);

    // SE_stall_entry(STALLENABLE,122)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv2d1x1_B6_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // conv2d1x1_B6_merge_reg_aunroll_x(BLACKBOX,37)@0
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
        .in_data_in_0_tpl(bubble_select_stall_entry_d),
        .in_data_in_1_tpl(bubble_select_stall_entry_n),
        .in_data_in_2_tpl(bubble_select_stall_entry_c),
        .in_data_in_3_tpl(bubble_select_stall_entry_i),
        .in_data_in_4_tpl(bubble_select_stall_entry_q),
        .in_data_in_5_tpl(bubble_select_stall_entry_r),
        .in_data_in_6_tpl(bubble_select_stall_entry_s),
        .in_data_in_7_tpl(bubble_select_stall_entry_g),
        .in_data_in_8_tpl(bubble_select_stall_entry_l),
        .in_data_in_9_tpl(bubble_select_stall_entry_j),
        .in_data_in_10_tpl(bubble_select_stall_entry_e),
        .in_data_in_11_tpl(bubble_select_stall_entry_m),
        .in_data_in_12_tpl(bubble_select_stall_entry_b),
        .in_data_in_13_tpl(bubble_select_stall_entry_h),
        .in_data_in_14_tpl(bubble_select_stall_entry_o),
        .in_data_in_15_tpl(bubble_select_stall_entry_p),
        .in_data_in_16_tpl(bubble_select_stall_entry_f),
        .in_data_in_17_tpl(bubble_select_stall_entry_k),
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

    // bubble_join_conv2d1x1_B6_merge_reg_aunroll_x(BITJOIN,92)
    assign bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q = {conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_17_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_16_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_15_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_14_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_13_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_12_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_11_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_10_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_9_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_8_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_7_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_6_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_5_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_4_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_3_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_2_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_1_tpl, conv2d1x1_B6_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv2d1x1_B6_merge_reg_aunroll_x(BITSELECT,93)
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[64:1]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[128:65]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[160:129]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_f = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[161:161]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_g = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[162:162]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_h = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[195:163]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_i = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[227:196]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_j = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[228:228]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_k = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[229:229]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_l = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[261:230]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_m = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[325:262]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_n = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[389:326]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_o = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[421:390]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_p = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[422:422]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_q = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[423:423]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_r = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[455:424]);
    assign bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_s = $unsigned(bubble_join_conv2d1x1_B6_merge_reg_aunroll_x_q[456:456]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_conv2d1x1_B6_merge_reg_aunroll_x(STALLENABLE,125)
    // Valid signal propagation
    assign SE_out_conv2d1x1_B6_merge_reg_aunroll_x_V0 = SE_out_conv2d1x1_B6_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_conv2d1x1_B6_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_o_stall | ~ (SE_out_conv2d1x1_B6_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_conv2d1x1_B6_merge_reg_aunroll_x_wireValid = conv2d1x1_B6_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x(BITJOIN,99)
    assign bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_q = {i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_24_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_15_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_14_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_13_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_12_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_11_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_10_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_9_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_8_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_7_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_6_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_5_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_4_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_3_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_2_tpl, i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x(BITSELECT,100)
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_q[33:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_q[97:34]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_q[98:98]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_q[162:99]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_q[226:163]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_q[290:227]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_q[354:291]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_q[355:355]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_q[419:356]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_q[420:420]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_q[421:421]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_q[422:422]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_q[423:423]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_q[455:424]);

    // join_for_coalesced_delay_2(BITJOIN,70)
    assign join_for_coalesced_delay_2_q = {bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_o, bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_n, bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_m, bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_d, bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_l};

    // bubble_join_i_llvm_fpga_mem_lm24_conv2d1x16(BITJOIN,82)
    assign bubble_join_i_llvm_fpga_mem_lm24_conv2d1x16_q = i_llvm_fpga_mem_lm24_conv2d1x16_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm24_conv2d1x16(BITSELECT,83)
    assign bubble_select_i_llvm_fpga_mem_lm24_conv2d1x16_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm24_conv2d1x16_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm26_conv2d1x17(BITJOIN,85)
    assign bubble_join_i_llvm_fpga_mem_lm26_conv2d1x17_q = i_llvm_fpga_mem_lm26_conv2d1x17_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm26_conv2d1x17(BITSELECT,86)
    assign bubble_select_i_llvm_fpga_mem_lm26_conv2d1x17_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm26_conv2d1x17_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm19_conv2d1x13(BITJOIN,76)
    assign bubble_join_i_llvm_fpga_mem_lm19_conv2d1x13_q = i_llvm_fpga_mem_lm19_conv2d1x13_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm19_conv2d1x13(BITSELECT,77)
    assign bubble_select_i_llvm_fpga_mem_lm19_conv2d1x13_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm19_conv2d1x13_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm22_conv2d1x15(BITJOIN,79)
    assign bubble_join_i_llvm_fpga_mem_lm22_conv2d1x15_q = i_llvm_fpga_mem_lm22_conv2d1x15_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm22_conv2d1x15(BITSELECT,80)
    assign bubble_select_i_llvm_fpga_mem_lm22_conv2d1x15_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm22_conv2d1x15_q[31:0]);

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,139)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_wireValid = coalesced_delay_0_fifo_valid_out;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,106)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,107)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[64:0]);

    // sel_for_coalesced_delay_0(BITSELECT,65)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[64:64]);

    // i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x(BLACKBOX,48)@135
    // in in_i_stall@20000000
    // out out_lm21_conv2d1x1_avm_address@20000000
    // out out_lm21_conv2d1x1_avm_burstcount@20000000
    // out out_lm21_conv2d1x1_avm_byteenable@20000000
    // out out_lm21_conv2d1x1_avm_enable@20000000
    // out out_lm21_conv2d1x1_avm_read@20000000
    // out out_lm21_conv2d1x1_avm_write@20000000
    // out out_lm21_conv2d1x1_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@138
    // out out_o_readdata_0_tpl@138
    // out out_o_readdata_1_tpl@138
    // out out_o_readdata_2_tpl@138
    // out out_o_readdata_3_tpl@138
    conv2d1x1_i_llvm_fpga_mem_lm21_0 thei_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_b),
        .in_i_predicate(sel_for_coalesced_delay_0_c),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .in_lm21_conv2d1x1_avm_readdata(in_lm21_conv2d1x1_avm_readdata),
        .in_lm21_conv2d1x1_avm_readdatavalid(in_lm21_conv2d1x1_avm_readdatavalid),
        .in_lm21_conv2d1x1_avm_waitrequest(in_lm21_conv2d1x1_avm_waitrequest),
        .in_lm21_conv2d1x1_avm_writeack(in_lm21_conv2d1x1_avm_writeack),
        .out_lm21_conv2d1x1_avm_address(i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_lm21_conv2d1x1_avm_address),
        .out_lm21_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_lm21_conv2d1x1_avm_burstcount),
        .out_lm21_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_lm21_conv2d1x1_avm_byteenable),
        .out_lm21_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_lm21_conv2d1x1_avm_enable),
        .out_lm21_conv2d1x1_avm_read(i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_lm21_conv2d1x1_avm_read),
        .out_lm21_conv2d1x1_avm_write(i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_lm21_conv2d1x1_avm_write),
        .out_lm21_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_lm21_conv2d1x1_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_o_valid),
        .out_o_readdata_0_tpl(i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_o_readdata_0_tpl),
        .out_o_readdata_1_tpl(i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_o_readdata_1_tpl),
        .out_o_readdata_2_tpl(i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_o_readdata_2_tpl),
        .out_o_readdata_3_tpl(i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_o_readdata_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x(BITJOIN,96)
    assign bubble_join_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_q = {i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_o_readdata_3_tpl, i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_o_readdata_2_tpl, i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_o_readdata_1_tpl, i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_o_readdata_0_tpl};

    // SE_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x(STALLENABLE,127)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_V0 = SE_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_backStall = bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_stall_out | ~ (SE_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_wireValid = i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_o_valid;

    // bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg(STALLFIFO,198)
    assign bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_valid_in = SE_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_V0;
    assign bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_data_in = bubble_join_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_q;
    assign bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(128),
        .IMPL("zl_reg")
    ) thebubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_q),
        .valid_out(bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_select_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x(BITSELECT,97)
    assign bubble_select_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_b = $unsigned(bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_data_out[31:0]);
    assign bubble_select_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_c = $unsigned(bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_data_out[63:32]);
    assign bubble_select_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_d = $unsigned(bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_data_out[95:64]);
    assign bubble_select_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_e = $unsigned(bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_data_out[127:96]);

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,141)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_and1 = i_llvm_fpga_mem_lm26_conv2d1x17_out_o_valid & SE_out_coalesced_delay_1_fifo_and0;
    assign SE_out_coalesced_delay_1_fifo_and2 = i_llvm_fpga_mem_lm24_conv2d1x16_out_o_valid & SE_out_coalesced_delay_1_fifo_and1;
    assign SE_out_coalesced_delay_1_fifo_and3 = i_llvm_fpga_mem_lm22_conv2d1x15_out_o_valid & SE_out_coalesced_delay_1_fifo_and2;
    assign SE_out_coalesced_delay_1_fifo_and4 = i_llvm_fpga_mem_lm19_conv2d1x13_out_o_valid & SE_out_coalesced_delay_1_fifo_and3;
    assign SE_out_coalesced_delay_1_fifo_wireValid = bubble_out_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_data_reg_valid_out & SE_out_coalesced_delay_1_fifo_and4;

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,109)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,110)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[34:0]);

    // sel_for_coalesced_delay_1(BITSELECT,68)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[31:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[32:32]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[33:33]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[34:34]);

    // i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x(BLACKBOX,50)@138
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@155
    // out out_c1_exit_0_tpl@155
    // out out_c1_exit_1_tpl@155
    conv2d1x1_i_sfc_s_c1_in_for_body8_s_c1_enter_conv2d1x19 thei_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x (
        .in_c0_exe1159(sel_for_coalesced_delay_1_c),
        .in_c0_exe15173(sel_for_coalesced_delay_1_e),
        .in_i_stall(SE_out_coalesced_delay_2_fifo_backStall),
        .in_i_valid(SE_out_coalesced_delay_1_fifo_V0),
        .in_c1_eni9_0_tpl(GND_q),
        .in_c1_eni9_0_1_tpl(bubble_select_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_b),
        .in_c1_eni9_1_1_tpl(bubble_select_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_c),
        .in_c1_eni9_2_tpl(bubble_select_i_llvm_fpga_mem_lm22_conv2d1x15_b),
        .in_c1_eni9_2_1_tpl(bubble_select_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_d),
        .in_c1_eni9_3_tpl(bubble_select_i_llvm_fpga_mem_lm19_conv2d1x13_b),
        .in_c1_eni9_3_1_tpl(bubble_select_i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_e),
        .in_c1_eni9_4_tpl(bubble_select_i_llvm_fpga_mem_lm26_conv2d1x17_b),
        .in_c1_eni9_5_tpl(bubble_select_i_llvm_fpga_mem_lm24_conv2d1x16_b),
        .in_c1_eni9_6_tpl(sel_for_coalesced_delay_1_b),
        .in_c1_eni9_7_tpl(sel_for_coalesced_delay_1_e),
        .in_c1_eni9_8_tpl(sel_for_coalesced_delay_1_c),
        .in_c1_eni9_9_tpl(sel_for_coalesced_delay_1_d),
        .out_o_stall(i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_2_fifo(STALLENABLE,143)
    // Valid signal propagation
    assign SE_out_coalesced_delay_2_fifo_V0 = SE_out_coalesced_delay_2_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_2_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_2_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_2_fifo_and0 = coalesced_delay_2_fifo_valid_out;
    assign SE_out_coalesced_delay_2_fifo_wireValid = i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_o_valid & SE_out_coalesced_delay_2_fifo_and0;

    // coalesced_delay_2_fifo(STALLFIFO,74)
    assign coalesced_delay_2_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_V6;
    assign coalesced_delay_2_fifo_stall_in = SE_out_coalesced_delay_2_fifo_backStall;
    assign coalesced_delay_2_fifo_data_in = join_for_coalesced_delay_2_q;
    assign coalesced_delay_2_fifo_valid_in_bitsignaltemp = coalesced_delay_2_fifo_valid_in[0];
    assign coalesced_delay_2_fifo_stall_in_bitsignaltemp = coalesced_delay_2_fifo_stall_in[0];
    assign coalesced_delay_2_fifo_valid_out[0] = coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_2_fifo_stall_out[0] = coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(147),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(100),
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

    // join_for_coalesced_delay_1(BITJOIN,67)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_p, bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_q};

    // coalesced_delay_1_fifo(STALLFIFO,73)
    assign coalesced_delay_1_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_V5;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(130),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(35),
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

    // join_for_coalesced_delay_0(BITJOIN,64)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_g};

    // coalesced_delay_0_fifo(STALLFIFO,72)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_V4;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(127),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(65),
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

    // i_llvm_fpga_mem_lm26_conv2d1x17(BLACKBOX,10)@9
    // in in_i_stall@20000000
    // out out_lm26_conv2d1x1_avm_address@20000000
    // out out_lm26_conv2d1x1_avm_burstcount@20000000
    // out out_lm26_conv2d1x1_avm_byteenable@20000000
    // out out_lm26_conv2d1x1_avm_enable@20000000
    // out out_lm26_conv2d1x1_avm_read@20000000
    // out out_lm26_conv2d1x1_avm_write@20000000
    // out out_lm26_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@138
    // out out_o_stall@20000000
    // out out_o_valid@138
    conv2d1x1_i_llvm_fpga_mem_lm26_0 thei_llvm_fpga_mem_lm26_conv2d1x17 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_j),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_f),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_V3),
        .in_lm26_conv2d1x1_avm_readdata(in_lm26_conv2d1x1_avm_readdata),
        .in_lm26_conv2d1x1_avm_readdatavalid(in_lm26_conv2d1x1_avm_readdatavalid),
        .in_lm26_conv2d1x1_avm_waitrequest(in_lm26_conv2d1x1_avm_waitrequest),
        .in_lm26_conv2d1x1_avm_writeack(in_lm26_conv2d1x1_avm_writeack),
        .out_lm26_conv2d1x1_avm_address(i_llvm_fpga_mem_lm26_conv2d1x17_out_lm26_conv2d1x1_avm_address),
        .out_lm26_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm26_conv2d1x17_out_lm26_conv2d1x1_avm_burstcount),
        .out_lm26_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm26_conv2d1x17_out_lm26_conv2d1x1_avm_byteenable),
        .out_lm26_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm26_conv2d1x17_out_lm26_conv2d1x1_avm_enable),
        .out_lm26_conv2d1x1_avm_read(i_llvm_fpga_mem_lm26_conv2d1x17_out_lm26_conv2d1x1_avm_read),
        .out_lm26_conv2d1x1_avm_write(i_llvm_fpga_mem_lm26_conv2d1x17_out_lm26_conv2d1x1_avm_write),
        .out_lm26_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm26_conv2d1x17_out_lm26_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm26_conv2d1x17_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm26_conv2d1x17_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm26_conv2d1x17_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm24_conv2d1x16(BLACKBOX,9)@9
    // in in_i_stall@20000000
    // out out_lm24_conv2d1x1_avm_address@20000000
    // out out_lm24_conv2d1x1_avm_burstcount@20000000
    // out out_lm24_conv2d1x1_avm_byteenable@20000000
    // out out_lm24_conv2d1x1_avm_enable@20000000
    // out out_lm24_conv2d1x1_avm_read@20000000
    // out out_lm24_conv2d1x1_avm_write@20000000
    // out out_lm24_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@138
    // out out_o_stall@20000000
    // out out_o_valid@138
    conv2d1x1_i_llvm_fpga_mem_lm24_0 thei_llvm_fpga_mem_lm24_conv2d1x16 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_i),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_f),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_V2),
        .in_lm24_conv2d1x1_avm_readdata(in_lm24_conv2d1x1_avm_readdata),
        .in_lm24_conv2d1x1_avm_readdatavalid(in_lm24_conv2d1x1_avm_readdatavalid),
        .in_lm24_conv2d1x1_avm_waitrequest(in_lm24_conv2d1x1_avm_waitrequest),
        .in_lm24_conv2d1x1_avm_writeack(in_lm24_conv2d1x1_avm_writeack),
        .out_lm24_conv2d1x1_avm_address(i_llvm_fpga_mem_lm24_conv2d1x16_out_lm24_conv2d1x1_avm_address),
        .out_lm24_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm24_conv2d1x16_out_lm24_conv2d1x1_avm_burstcount),
        .out_lm24_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm24_conv2d1x16_out_lm24_conv2d1x1_avm_byteenable),
        .out_lm24_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm24_conv2d1x16_out_lm24_conv2d1x1_avm_enable),
        .out_lm24_conv2d1x1_avm_read(i_llvm_fpga_mem_lm24_conv2d1x16_out_lm24_conv2d1x1_avm_read),
        .out_lm24_conv2d1x1_avm_write(i_llvm_fpga_mem_lm24_conv2d1x16_out_lm24_conv2d1x1_avm_write),
        .out_lm24_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm24_conv2d1x16_out_lm24_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm24_conv2d1x16_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm24_conv2d1x16_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm24_conv2d1x16_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm22_conv2d1x15(BLACKBOX,8)@9
    // in in_i_stall@20000000
    // out out_lm22_conv2d1x1_avm_address@20000000
    // out out_lm22_conv2d1x1_avm_burstcount@20000000
    // out out_lm22_conv2d1x1_avm_byteenable@20000000
    // out out_lm22_conv2d1x1_avm_enable@20000000
    // out out_lm22_conv2d1x1_avm_read@20000000
    // out out_lm22_conv2d1x1_avm_write@20000000
    // out out_lm22_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@138
    // out out_o_stall@20000000
    // out out_o_valid@138
    conv2d1x1_i_llvm_fpga_mem_lm22_0 thei_llvm_fpga_mem_lm22_conv2d1x15 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_h),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_f),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_V1),
        .in_lm22_conv2d1x1_avm_readdata(in_lm22_conv2d1x1_avm_readdata),
        .in_lm22_conv2d1x1_avm_readdatavalid(in_lm22_conv2d1x1_avm_readdatavalid),
        .in_lm22_conv2d1x1_avm_waitrequest(in_lm22_conv2d1x1_avm_waitrequest),
        .in_lm22_conv2d1x1_avm_writeack(in_lm22_conv2d1x1_avm_writeack),
        .out_lm22_conv2d1x1_avm_address(i_llvm_fpga_mem_lm22_conv2d1x15_out_lm22_conv2d1x1_avm_address),
        .out_lm22_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm22_conv2d1x15_out_lm22_conv2d1x1_avm_burstcount),
        .out_lm22_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm22_conv2d1x15_out_lm22_conv2d1x1_avm_byteenable),
        .out_lm22_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm22_conv2d1x15_out_lm22_conv2d1x1_avm_enable),
        .out_lm22_conv2d1x1_avm_read(i_llvm_fpga_mem_lm22_conv2d1x15_out_lm22_conv2d1x1_avm_read),
        .out_lm22_conv2d1x1_avm_write(i_llvm_fpga_mem_lm22_conv2d1x15_out_lm22_conv2d1x1_avm_write),
        .out_lm22_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm22_conv2d1x15_out_lm22_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm22_conv2d1x15_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm22_conv2d1x15_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm22_conv2d1x15_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm19_conv2d1x13(BLACKBOX,7)@9
    // in in_i_stall@20000000
    // out out_lm19_conv2d1x1_avm_address@20000000
    // out out_lm19_conv2d1x1_avm_burstcount@20000000
    // out out_lm19_conv2d1x1_avm_byteenable@20000000
    // out out_lm19_conv2d1x1_avm_enable@20000000
    // out out_lm19_conv2d1x1_avm_read@20000000
    // out out_lm19_conv2d1x1_avm_write@20000000
    // out out_lm19_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@138
    // out out_o_stall@20000000
    // out out_o_valid@138
    conv2d1x1_i_llvm_fpga_mem_lm19_0 thei_llvm_fpga_mem_lm19_conv2d1x13 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_e),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_f),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_V0),
        .in_lm19_conv2d1x1_avm_readdata(in_lm19_conv2d1x1_avm_readdata),
        .in_lm19_conv2d1x1_avm_readdatavalid(in_lm19_conv2d1x1_avm_readdatavalid),
        .in_lm19_conv2d1x1_avm_waitrequest(in_lm19_conv2d1x1_avm_waitrequest),
        .in_lm19_conv2d1x1_avm_writeack(in_lm19_conv2d1x1_avm_writeack),
        .out_lm19_conv2d1x1_avm_address(i_llvm_fpga_mem_lm19_conv2d1x13_out_lm19_conv2d1x1_avm_address),
        .out_lm19_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm19_conv2d1x13_out_lm19_conv2d1x1_avm_burstcount),
        .out_lm19_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm19_conv2d1x13_out_lm19_conv2d1x1_avm_byteenable),
        .out_lm19_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm19_conv2d1x13_out_lm19_conv2d1x1_avm_enable),
        .out_lm19_conv2d1x1_avm_read(i_llvm_fpga_mem_lm19_conv2d1x13_out_lm19_conv2d1x1_avm_read),
        .out_lm19_conv2d1x1_avm_write(i_llvm_fpga_mem_lm19_conv2d1x13_out_lm19_conv2d1x1_avm_write),
        .out_lm19_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm19_conv2d1x13_out_lm19_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm19_conv2d1x13_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm19_conv2d1x13_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm19_conv2d1x13_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x(STALLENABLE,129)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg3 <= '0;
            SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg4 <= '0;
            SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg5 <= '0;
            SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg6 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_toReg3;
            // Successor 4
            SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg4 <= SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_toReg4;
            // Successor 5
            SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg5 <= SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_toReg5;
            // Successor 6
            SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg6 <= SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_toReg6;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_lm19_conv2d1x13_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed1 = (~ (i_llvm_fpga_mem_lm22_conv2d1x15_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed2 = (~ (i_llvm_fpga_mem_lm24_conv2d1x16_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed3 = (~ (i_llvm_fpga_mem_lm26_conv2d1x17_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg3;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed4 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg4;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed5 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg5;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed6 = (~ (coalesced_delay_2_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg6;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed3;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_toReg4 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed4;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_toReg5 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed5;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_toReg6 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed6;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_or3 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_or2;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_or4 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed4 & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_or3;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_or5 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed5 & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_or4;
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_consumed6 & SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_or5);
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg3);
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_V4 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg4);
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_V5 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg5);
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_V6 = SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_fromReg6);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_wireValid = i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x(BLACKBOX,49)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit158_0_tpl@9
    // out out_c0_exit158_1_tpl@9
    // out out_c0_exit158_2_tpl@9
    // out out_c0_exit158_3_tpl@9
    // out out_c0_exit158_4_tpl@9
    // out out_c0_exit158_5_tpl@9
    // out out_c0_exit158_6_tpl@9
    // out out_c0_exit158_7_tpl@9
    // out out_c0_exit158_8_tpl@9
    // out out_c0_exit158_9_tpl@9
    // out out_c0_exit158_10_tpl@9
    // out out_c0_exit158_11_tpl@9
    // out out_c0_exit158_12_tpl@9
    // out out_c0_exit158_13_tpl@9
    // out out_c0_exit158_14_tpl@9
    // out out_c0_exit158_15_tpl@9
    // out out_c0_exit158_16_tpl@9
    // out out_c0_exit158_17_tpl@9
    // out out_c0_exit158_18_tpl@9
    // out out_c0_exit158_19_tpl@9
    // out out_c0_exit158_20_tpl@9
    // out out_c0_exit158_21_tpl@9
    // out out_c0_exit158_22_tpl@9
    // out out_c0_exit158_23_tpl@9
    // out out_c0_exit158_24_tpl@9
    conv2d1x1_i_sfc_s_c0_in_for_body8_s_c0_enter13010_conv2d1x11 thei_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_backStall),
        .in_i_valid(SE_out_conv2d1x1_B6_merge_reg_aunroll_x_V0),
        .in_input_im(in_input_im),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni18_0_tpl(GND_q),
        .in_c0_eni18_1_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_b),
        .in_c0_eni18_2_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_p),
        .in_c0_eni18_3_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_o),
        .in_c0_eni18_4_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_l),
        .in_c0_eni18_5_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_n),
        .in_c0_eni18_6_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_m),
        .in_c0_eni18_7_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_q),
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
        .in_c0_eni18_18_tpl(bubble_select_conv2d1x1_B6_merge_reg_aunroll_x_r),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit158_0_tpl(),
        .out_c0_exit158_1_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_1_tpl),
        .out_c0_exit158_2_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_2_tpl),
        .out_c0_exit158_3_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_3_tpl),
        .out_c0_exit158_4_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_4_tpl),
        .out_c0_exit158_5_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_5_tpl),
        .out_c0_exit158_6_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_6_tpl),
        .out_c0_exit158_7_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_7_tpl),
        .out_c0_exit158_8_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_8_tpl),
        .out_c0_exit158_9_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_9_tpl),
        .out_c0_exit158_10_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_10_tpl),
        .out_c0_exit158_11_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_11_tpl),
        .out_c0_exit158_12_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_12_tpl),
        .out_c0_exit158_13_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_13_tpl),
        .out_c0_exit158_14_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_14_tpl),
        .out_c0_exit158_15_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_15_tpl),
        .out_c0_exit158_16_tpl(),
        .out_c0_exit158_17_tpl(),
        .out_c0_exit158_18_tpl(),
        .out_c0_exit158_19_tpl(),
        .out_c0_exit158_20_tpl(),
        .out_c0_exit158_21_tpl(),
        .out_c0_exit158_22_tpl(),
        .out_c0_exit158_23_tpl(),
        .out_c0_exit158_24_tpl(i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_c0_exit158_24_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out = i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out = i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,28)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body8_conv2d1x1s_c0_enter13010_conv2d1x11_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,35)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,39)
    assign out_lm19_conv2d1x1_avm_address = i_llvm_fpga_mem_lm19_conv2d1x13_out_lm19_conv2d1x1_avm_address;
    assign out_lm19_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm19_conv2d1x13_out_lm19_conv2d1x1_avm_enable;
    assign out_lm19_conv2d1x1_avm_read = i_llvm_fpga_mem_lm19_conv2d1x13_out_lm19_conv2d1x1_avm_read;
    assign out_lm19_conv2d1x1_avm_write = i_llvm_fpga_mem_lm19_conv2d1x13_out_lm19_conv2d1x1_avm_write;
    assign out_lm19_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm19_conv2d1x13_out_lm19_conv2d1x1_avm_writedata;
    assign out_lm19_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm19_conv2d1x13_out_lm19_conv2d1x1_avm_byteenable;
    assign out_lm19_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm19_conv2d1x13_out_lm19_conv2d1x1_avm_burstcount;

    // bubble_join_i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x(BITJOIN,102)
    assign bubble_join_i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q = i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x(BITSELECT,103)
    assign bubble_select_i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_q[31:0]);

    // bubble_join_coalesced_delay_2_fifo(BITJOIN,112)
    assign bubble_join_coalesced_delay_2_fifo_q = coalesced_delay_2_fifo_data_out;

    // bubble_select_coalesced_delay_2_fifo(BITSELECT,113)
    assign bubble_select_coalesced_delay_2_fifo_b = $unsigned(bubble_join_coalesced_delay_2_fifo_q[99:0]);

    // sel_for_coalesced_delay_2(BITSELECT,71)
    assign sel_for_coalesced_delay_2_b = $unsigned(bubble_select_coalesced_delay_2_fifo_b[63:0]);
    assign sel_for_coalesced_delay_2_c = $unsigned(bubble_select_coalesced_delay_2_fifo_b[95:64]);
    assign sel_for_coalesced_delay_2_d = $unsigned(bubble_select_coalesced_delay_2_fifo_b[96:96]);
    assign sel_for_coalesced_delay_2_e = $unsigned(bubble_select_coalesced_delay_2_fifo_b[97:97]);
    assign sel_for_coalesced_delay_2_f = $unsigned(bubble_select_coalesced_delay_2_fifo_b[98:98]);
    assign sel_for_coalesced_delay_2_g = $unsigned(bubble_select_coalesced_delay_2_fifo_b[99:99]);

    // dupName_0_sync_out_x(GPOUT,40)@155
    assign out_c0_exe10168 = sel_for_coalesced_delay_2_d;
    assign out_c0_exe11169 = sel_for_coalesced_delay_2_b;
    assign out_c0_exe12170 = sel_for_coalesced_delay_2_e;
    assign out_c0_exe13171 = sel_for_coalesced_delay_2_f;
    assign out_c0_exe14172 = sel_for_coalesced_delay_2_g;
    assign out_c0_exe3161 = sel_for_coalesced_delay_2_c;
    assign out_c1_exe1 = bubble_select_i_sfc_s_c1_in_for_body8_conv2d1x1s_c1_enter_conv2d1x19_aunroll_vunroll_x_b;
    assign out_valid_out = SE_out_coalesced_delay_2_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,42)
    assign out_lm21_conv2d1x1_avm_address = i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_lm21_conv2d1x1_avm_address;
    assign out_lm21_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_lm21_conv2d1x1_avm_enable;
    assign out_lm21_conv2d1x1_avm_read = i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_lm21_conv2d1x1_avm_read;
    assign out_lm21_conv2d1x1_avm_write = i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_lm21_conv2d1x1_avm_write;
    assign out_lm21_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_lm21_conv2d1x1_avm_writedata;
    assign out_lm21_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_lm21_conv2d1x1_avm_byteenable;
    assign out_lm21_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm21_conv2d1x14_vunroll_x_out_lm21_conv2d1x1_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,44)
    assign out_lm22_conv2d1x1_avm_address = i_llvm_fpga_mem_lm22_conv2d1x15_out_lm22_conv2d1x1_avm_address;
    assign out_lm22_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm22_conv2d1x15_out_lm22_conv2d1x1_avm_enable;
    assign out_lm22_conv2d1x1_avm_read = i_llvm_fpga_mem_lm22_conv2d1x15_out_lm22_conv2d1x1_avm_read;
    assign out_lm22_conv2d1x1_avm_write = i_llvm_fpga_mem_lm22_conv2d1x15_out_lm22_conv2d1x1_avm_write;
    assign out_lm22_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm22_conv2d1x15_out_lm22_conv2d1x1_avm_writedata;
    assign out_lm22_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm22_conv2d1x15_out_lm22_conv2d1x1_avm_byteenable;
    assign out_lm22_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm22_conv2d1x15_out_lm22_conv2d1x1_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,46)
    assign out_lm24_conv2d1x1_avm_address = i_llvm_fpga_mem_lm24_conv2d1x16_out_lm24_conv2d1x1_avm_address;
    assign out_lm24_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm24_conv2d1x16_out_lm24_conv2d1x1_avm_enable;
    assign out_lm24_conv2d1x1_avm_read = i_llvm_fpga_mem_lm24_conv2d1x16_out_lm24_conv2d1x1_avm_read;
    assign out_lm24_conv2d1x1_avm_write = i_llvm_fpga_mem_lm24_conv2d1x16_out_lm24_conv2d1x1_avm_write;
    assign out_lm24_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm24_conv2d1x16_out_lm24_conv2d1x1_avm_writedata;
    assign out_lm24_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm24_conv2d1x16_out_lm24_conv2d1x1_avm_byteenable;
    assign out_lm24_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm24_conv2d1x16_out_lm24_conv2d1x1_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,47)
    assign out_lm26_conv2d1x1_avm_address = i_llvm_fpga_mem_lm26_conv2d1x17_out_lm26_conv2d1x1_avm_address;
    assign out_lm26_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm26_conv2d1x17_out_lm26_conv2d1x1_avm_enable;
    assign out_lm26_conv2d1x1_avm_read = i_llvm_fpga_mem_lm26_conv2d1x17_out_lm26_conv2d1x1_avm_read;
    assign out_lm26_conv2d1x1_avm_write = i_llvm_fpga_mem_lm26_conv2d1x17_out_lm26_conv2d1x1_avm_write;
    assign out_lm26_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm26_conv2d1x17_out_lm26_conv2d1x1_avm_writedata;
    assign out_lm26_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm26_conv2d1x17_out_lm26_conv2d1x1_avm_byteenable;
    assign out_lm26_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm26_conv2d1x17_out_lm26_conv2d1x1_avm_burstcount;

endmodule
