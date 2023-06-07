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

// SystemVerilog created from maxpool2d_bb_B10_stall_region
// SystemVerilog created on Sat Jun  3 13:01:56 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_bb_B10_stall_region (
    input wire [511:0] in_lm_maxpool2d_avm_readdata,
    input wire [0:0] in_lm_maxpool2d_avm_writeack,
    input wire [0:0] in_lm_maxpool2d_avm_waitrequest,
    input wire [0:0] in_lm_maxpool2d_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_maxpool2d9_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_maxpool2d9_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_add19140,
    input wire [0:0] in_forked13,
    input wire [0:0] in_forked31137,
    input wire [63:0] in_input_im_addr_041_replace_phi36_pop17106,
    input wire [63:0] in_input_im_addr_041_replace_phi37_pop22124,
    input wire [63:0] in_input_im_addr_041_replace_phi38_pop30143,
    input wire [63:0] in_input_im_addr_041_replace_phi73,
    input wire [31:0] in_j_034_pop20118,
    input wire [31:0] in_j_034_pop2055_pop36138,
    input wire [31:0] in_mul2547_pop25133,
    input wire [31:0] in_mul2548_pop33145,
    input wire [31:0] in_mul2591,
    input wire [31:0] in_mul44_pop24130,
    input wire [31:0] in_mul45_pop32139,
    input wire [31:0] in_mul86,
    input wire [0:0] in_notcmp14141,
    input wire [0:0] in_notcmp19115,
    input wire [0:0] in_notcmp1953_pop35147,
    input wire [0:0] in_notcmp2350_pop26136,
    input wire [0:0] in_notcmp2351_pop34146,
    input wire [0:0] in_notcmp2396,
    input wire [0:0] in_notcmp2740_pop18111,
    input wire [0:0] in_notcmp2741_pop23127,
    input wire [0:0] in_notcmp2742_pop31144,
    input wire [0:0] in_notcmp2780,
    input wire [63:0] in_output_im_addr_042_replace_phi32_pop16101,
    input wire [63:0] in_output_im_addr_042_replace_phi33_pop21121,
    input wire [63:0] in_output_im_addr_042_replace_phi34_pop29142,
    input wire [63:0] in_output_im_addr_042_replace_phi66,
    input wire [0:0] in_unnamed_maxpool2d14,
    input wire [0:0] in_valid_in,
    output wire [30:0] out_lm_maxpool2d_avm_address,
    output wire [0:0] out_lm_maxpool2d_avm_enable,
    output wire [0:0] out_lm_maxpool2d_avm_read,
    output wire [0:0] out_lm_maxpool2d_avm_write,
    output wire [511:0] out_lm_maxpool2d_avm_writedata,
    output wire [63:0] out_lm_maxpool2d_avm_byteenable,
    output wire [4:0] out_lm_maxpool2d_avm_burstcount,
    output wire [0:0] out_c0_exe10340,
    output wire [31:0] out_c0_exe11341,
    output wire [0:0] out_c0_exe12342,
    output wire [0:0] out_c0_exe13343,
    output wire [31:0] out_c0_exe14344,
    output wire [0:0] out_c0_exe15345,
    output wire [0:0] out_c0_exe5335,
    output wire [0:0] out_c0_exe8338,
    output wire [63:0] out_c0_exe9339,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [30:0] i_llvm_fpga_mem_lm_maxpool2d3_out_lm_maxpool2d_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm_maxpool2d3_out_lm_maxpool2d_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm_maxpool2d3_out_lm_maxpool2d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm_maxpool2d3_out_lm_maxpool2d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm_maxpool2d3_out_lm_maxpool2d_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm_maxpool2d3_out_lm_maxpool2d_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm_maxpool2d3_out_lm_maxpool2d_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm_maxpool2d3_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm_maxpool2d3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm_maxpool2d3_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_maxpool2d9_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_maxpool2d9_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_5_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_8_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_10_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_13_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_14_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_15_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body16_maxpool2ds_c1_enter_maxpool2d5_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body16_maxpool2ds_c1_enter_maxpool2d5_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_for_body16_maxpool2ds_c1_enter_maxpool2d5_aunroll_x_out_c1_exit_1_tpl;
    wire [0:0] maxpool2d_B10_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] maxpool2d_B10_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [63:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [63:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [63:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [63:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [0:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [31:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [63:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [63:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [0:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [31:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [31:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [0:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_17_tpl;
    wire [0:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_18_tpl;
    wire [31:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_19_tpl;
    wire [31:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_20_tpl;
    wire [31:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_21_tpl;
    wire [0:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_22_tpl;
    wire [0:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_23_tpl;
    wire [63:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_24_tpl;
    wire [63:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_25_tpl;
    wire [0:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_26_tpl;
    wire [31:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_27_tpl;
    wire [0:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_28_tpl;
    wire [0:0] maxpool2d_B10_merge_reg_aunroll_x_out_data_out_29_tpl;
    wire [3:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [133:0] join_for_coalesced_delay_1_q;
    wire [63:0] sel_for_coalesced_delay_1_b;
    wire [31:0] sel_for_coalesced_delay_1_c;
    wire [31:0] sel_for_coalesced_delay_1_d;
    wire [0:0] sel_for_coalesced_delay_1_e;
    wire [0:0] sel_for_coalesced_delay_1_f;
    wire [0:0] sel_for_coalesced_delay_1_g;
    wire [0:0] sel_for_coalesced_delay_1_h;
    wire [0:0] sel_for_coalesced_delay_1_i;
    wire [0:0] sel_for_coalesced_delay_1_j;
    wire [0:0] redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_valid_in;
    wire redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_stall_in;
    wire redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_data_in;
    wire [0:0] redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_valid_out;
    wire redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_stall_out;
    wire redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [3:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [3:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [133:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [133:0] coalesced_delay_1_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm_maxpool2d3_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm_maxpool2d3_b;
    wire [812:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [63:0] bubble_select_stall_entry_e;
    wire [63:0] bubble_select_stall_entry_f;
    wire [63:0] bubble_select_stall_entry_g;
    wire [63:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [31:0] bubble_select_stall_entry_m;
    wire [31:0] bubble_select_stall_entry_n;
    wire [31:0] bubble_select_stall_entry_o;
    wire [31:0] bubble_select_stall_entry_p;
    wire [0:0] bubble_select_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_r;
    wire [0:0] bubble_select_stall_entry_s;
    wire [0:0] bubble_select_stall_entry_t;
    wire [0:0] bubble_select_stall_entry_u;
    wire [0:0] bubble_select_stall_entry_v;
    wire [0:0] bubble_select_stall_entry_w;
    wire [0:0] bubble_select_stall_entry_x;
    wire [0:0] bubble_select_stall_entry_y;
    wire [0:0] bubble_select_stall_entry_z;
    wire [63:0] bubble_select_stall_entry_aa;
    wire [63:0] bubble_select_stall_entry_bb;
    wire [63:0] bubble_select_stall_entry_cc;
    wire [63:0] bubble_select_stall_entry_dd;
    wire [0:0] bubble_select_stall_entry_ee;
    wire [202:0] bubble_join_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_f;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_i;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_k;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_m;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_n;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_o;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_p;
    wire [31:0] bubble_join_i_sfc_s_c1_in_for_body16_maxpool2ds_c1_enter_maxpool2d5_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body16_maxpool2ds_c1_enter_maxpool2d5_aunroll_x_b;
    wire [812:0] bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_b;
    wire [63:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_c;
    wire [63:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_h;
    wire [63:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_i;
    wire [63:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_k;
    wire [0:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_l;
    wire [31:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_m;
    wire [63:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_n;
    wire [63:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_o;
    wire [0:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_p;
    wire [31:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_r;
    wire [0:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_s;
    wire [0:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_t;
    wire [31:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_u;
    wire [31:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_v;
    wire [31:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_w;
    wire [0:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_x;
    wire [0:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_y;
    wire [63:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_z;
    wire [63:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_aa;
    wire [0:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_bb;
    wire [31:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_cc;
    wire [0:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_dd;
    wire [0:0] bubble_select_maxpool2d_B10_merge_reg_aunroll_x_ee;
    wire [0:0] bubble_join_redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_q;
    wire [0:0] bubble_select_redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_b;
    wire [3:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [3:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [133:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [133:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_V2;
    wire [0:0] SE_out_maxpool2d_B10_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_maxpool2d_B10_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_maxpool2d_B10_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_maxpool2d_B10_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_maxpool2d_B10_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_maxpool2d_B10_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_maxpool2d_B10_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_maxpool2d_B10_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_maxpool2d_B10_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_maxpool2d_B10_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_maxpool2d_B10_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_maxpool2d_B10_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_maxpool2d_B10_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;


    // bubble_join_stall_entry(BITJOIN,57)
    assign bubble_join_stall_entry_q = {in_unnamed_maxpool2d14, in_output_im_addr_042_replace_phi66, in_output_im_addr_042_replace_phi34_pop29142, in_output_im_addr_042_replace_phi33_pop21121, in_output_im_addr_042_replace_phi32_pop16101, in_notcmp2780, in_notcmp2742_pop31144, in_notcmp2741_pop23127, in_notcmp2740_pop18111, in_notcmp2396, in_notcmp2351_pop34146, in_notcmp2350_pop26136, in_notcmp1953_pop35147, in_notcmp19115, in_notcmp14141, in_mul86, in_mul45_pop32139, in_mul44_pop24130, in_mul2591, in_mul2548_pop33145, in_mul2547_pop25133, in_j_034_pop2055_pop36138, in_j_034_pop20118, in_input_im_addr_041_replace_phi73, in_input_im_addr_041_replace_phi38_pop30143, in_input_im_addr_041_replace_phi37_pop22124, in_input_im_addr_041_replace_phi36_pop17106, in_forked31137, in_forked13, in_add19140};

    // bubble_select_stall_entry(BITSELECT,58)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[97:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[161:98]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[225:162]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[289:226]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[321:290]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[353:322]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[385:354]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[417:386]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[449:418]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[481:450]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[513:482]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[545:514]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[546:546]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[547:547]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[548:548]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[549:549]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[550:550]);
    assign bubble_select_stall_entry_v = $unsigned(bubble_join_stall_entry_q[551:551]);
    assign bubble_select_stall_entry_w = $unsigned(bubble_join_stall_entry_q[552:552]);
    assign bubble_select_stall_entry_x = $unsigned(bubble_join_stall_entry_q[553:553]);
    assign bubble_select_stall_entry_y = $unsigned(bubble_join_stall_entry_q[554:554]);
    assign bubble_select_stall_entry_z = $unsigned(bubble_join_stall_entry_q[555:555]);
    assign bubble_select_stall_entry_aa = $unsigned(bubble_join_stall_entry_q[619:556]);
    assign bubble_select_stall_entry_bb = $unsigned(bubble_join_stall_entry_q[683:620]);
    assign bubble_select_stall_entry_cc = $unsigned(bubble_join_stall_entry_q[747:684]);
    assign bubble_select_stall_entry_dd = $unsigned(bubble_join_stall_entry_q[811:748]);
    assign bubble_select_stall_entry_ee = $unsigned(bubble_join_stall_entry_q[812:812]);

    // SE_stall_entry(STALLENABLE,82)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = maxpool2d_B10_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // maxpool2d_B10_merge_reg_aunroll_x(BLACKBOX,29)@0
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
    // out out_data_out_24_tpl@1
    // out out_data_out_25_tpl@1
    // out out_data_out_26_tpl@1
    // out out_data_out_27_tpl@1
    // out out_data_out_28_tpl@1
    // out out_data_out_29_tpl@1
    maxpool2d_B10_merge_reg themaxpool2d_B10_merge_reg_aunroll_x (
        .in_stall_in(SE_out_maxpool2d_B10_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_dd),
        .in_data_in_2_tpl(bubble_select_stall_entry_h),
        .in_data_in_3_tpl(bubble_select_stall_entry_z),
        .in_data_in_4_tpl(bubble_select_stall_entry_p),
        .in_data_in_5_tpl(bubble_select_stall_entry_m),
        .in_data_in_6_tpl(bubble_select_stall_entry_v),
        .in_data_in_7_tpl(bubble_select_stall_entry_aa),
        .in_data_in_8_tpl(bubble_select_stall_entry_e),
        .in_data_in_9_tpl(bubble_select_stall_entry_w),
        .in_data_in_10_tpl(bubble_select_stall_entry_r),
        .in_data_in_11_tpl(bubble_select_stall_entry_i),
        .in_data_in_12_tpl(bubble_select_stall_entry_bb),
        .in_data_in_13_tpl(bubble_select_stall_entry_f),
        .in_data_in_14_tpl(bubble_select_stall_entry_x),
        .in_data_in_15_tpl(bubble_select_stall_entry_n),
        .in_data_in_16_tpl(bubble_select_stall_entry_k),
        .in_data_in_17_tpl(bubble_select_stall_entry_t),
        .in_data_in_18_tpl(bubble_select_stall_entry_d),
        .in_data_in_19_tpl(bubble_select_stall_entry_j),
        .in_data_in_20_tpl(bubble_select_stall_entry_o),
        .in_data_in_21_tpl(bubble_select_stall_entry_b),
        .in_data_in_22_tpl(bubble_select_stall_entry_ee),
        .in_data_in_23_tpl(bubble_select_stall_entry_q),
        .in_data_in_24_tpl(bubble_select_stall_entry_cc),
        .in_data_in_25_tpl(bubble_select_stall_entry_g),
        .in_data_in_26_tpl(bubble_select_stall_entry_y),
        .in_data_in_27_tpl(bubble_select_stall_entry_l),
        .in_data_in_28_tpl(bubble_select_stall_entry_u),
        .in_data_in_29_tpl(bubble_select_stall_entry_s),
        .out_stall_out(maxpool2d_B10_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(maxpool2d_B10_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_21_tpl),
        .out_data_out_22_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_22_tpl),
        .out_data_out_23_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_23_tpl),
        .out_data_out_24_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_24_tpl),
        .out_data_out_25_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_25_tpl),
        .out_data_out_26_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_26_tpl),
        .out_data_out_27_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_27_tpl),
        .out_data_out_28_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_28_tpl),
        .out_data_out_29_tpl(maxpool2d_B10_merge_reg_aunroll_x_out_data_out_29_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_maxpool2d_B10_merge_reg_aunroll_x(BITJOIN,68)
    assign bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q = {maxpool2d_B10_merge_reg_aunroll_x_out_data_out_29_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_28_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_27_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_26_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_25_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_24_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_23_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_22_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_21_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_20_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_19_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_18_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_17_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_16_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_15_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_14_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_13_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_12_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_11_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_10_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_9_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_8_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_7_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_6_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_5_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_4_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_3_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_2_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_1_tpl, maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_maxpool2d_B10_merge_reg_aunroll_x(BITSELECT,69)
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_b = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_c = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[64:1]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_d = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[128:65]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_e = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[129:129]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_f = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[161:130]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_g = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[193:162]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_h = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[194:194]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_i = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[258:195]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_j = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[322:259]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_k = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[323:323]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_l = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[324:324]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_m = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[356:325]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_n = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[420:357]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_o = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[484:421]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_p = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[485:485]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_q = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[517:486]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_r = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[549:518]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_s = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[550:550]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_t = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[551:551]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_u = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[583:552]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_v = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[615:584]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_w = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[647:616]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_x = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[648:648]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_y = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[649:649]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_z = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[713:650]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_aa = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[777:714]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_bb = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[778:778]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_cc = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[810:779]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_dd = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[811:811]);
    assign bubble_select_maxpool2d_B10_merge_reg_aunroll_x_ee = $unsigned(bubble_join_maxpool2d_B10_merge_reg_aunroll_x_q[812:812]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_llvm_fpga_mem_lm_maxpool2d3(BITJOIN,54)
    assign bubble_join_i_llvm_fpga_mem_lm_maxpool2d3_q = i_llvm_fpga_mem_lm_maxpool2d3_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm_maxpool2d3(BITSELECT,55)
    assign bubble_select_i_llvm_fpga_mem_lm_maxpool2d3_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm_maxpool2d3_q[31:0]);

    // bubble_join_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x(BITJOIN,61)
    assign bubble_join_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_q = {i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_15_tpl, i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_14_tpl, i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_13_tpl, i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_12_tpl, i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_11_tpl, i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_10_tpl, i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_9_tpl, i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_8_tpl, i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_7_tpl, i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_6_tpl, i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_5_tpl, i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_4_tpl, i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_3_tpl, i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_2_tpl, i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x(BITSELECT,62)
    assign bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_q[2:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_q[3:3]);
    assign bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_q[4:4]);
    assign bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_q[68:5]);
    assign bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_q[69:69]);
    assign bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_q[70:70]);
    assign bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_q[134:71]);
    assign bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_q[135:135]);
    assign bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_q[167:136]);
    assign bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_q[168:168]);
    assign bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_q[169:169]);
    assign bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_q[201:170]);
    assign bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_q[202:202]);

    // join_for_coalesced_delay_1(BITJOIN,48)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_p, bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_n, bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_m, bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_o, bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_l, bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_j};

    // coalesced_delay_1_fifo(STALLFIFO,52)
    assign coalesced_delay_1_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_V2;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(149),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(134),
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

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,99)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_wireValid = i_sfc_s_c1_in_for_body16_maxpool2ds_c1_enter_maxpool2d5_aunroll_x_out_o_valid & SE_out_coalesced_delay_1_fifo_and0;

    // bubble_join_redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo(BITJOIN,72)
    assign bubble_join_redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_q = redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_data_out;

    // bubble_select_redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo(BITSELECT,73)
    assign bubble_select_redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_b = $unsigned(bubble_join_redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_q[0:0]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,75)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,76)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[3:0]);

    // sel_for_coalesced_delay_0(BITSELECT,46)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[2:2]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[3:3]);

    // i_sfc_s_c1_in_for_body16_maxpool2ds_c1_enter_maxpool2d5_aunroll_x(BLACKBOX,28)@150
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@154
    // out out_c1_exit_0_tpl@154
    // out out_c1_exit_1_tpl@154
    maxpool2d_i_sfc_s_c1_in_for_body16_s_c1_enter_maxpool2d5 thei_sfc_s_c1_in_for_body16_maxpool2ds_c1_enter_maxpool2d5_aunroll_x (
        .in_c0_exe3333(sel_for_coalesced_delay_0_d),
        .in_forked13(bubble_select_redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_b),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .in_c1_eni4_0_tpl(GND_q),
        .in_c1_eni4_1_tpl(sel_for_coalesced_delay_0_b),
        .in_c1_eni4_2_tpl(sel_for_coalesced_delay_0_c),
        .in_c1_eni4_3_tpl(bubble_select_i_llvm_fpga_mem_lm_maxpool2d3_b),
        .in_c1_eni4_4_tpl(sel_for_coalesced_delay_0_e),
        .out_o_stall(i_sfc_s_c1_in_for_body16_maxpool2ds_c1_enter_maxpool2d5_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body16_maxpool2ds_c1_enter_maxpool2d5_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_for_body16_maxpool2ds_c1_enter_maxpool2d5_aunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm_maxpool2d3(BLACKBOX,7)@6
    // in in_i_stall@20000000
    // out out_lm_maxpool2d_avm_address@20000000
    // out out_lm_maxpool2d_avm_burstcount@20000000
    // out out_lm_maxpool2d_avm_byteenable@20000000
    // out out_lm_maxpool2d_avm_enable@20000000
    // out out_lm_maxpool2d_avm_read@20000000
    // out out_lm_maxpool2d_avm_write@20000000
    // out out_lm_maxpool2d_avm_writedata@20000000
    // out out_o_readdata@150
    // out out_o_stall@20000000
    // out out_o_valid@150
    maxpool2d_i_llvm_fpga_mem_lm_0 thei_llvm_fpga_mem_lm_maxpool2d3 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_g),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_h),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_V0),
        .in_lm_maxpool2d_avm_readdata(in_lm_maxpool2d_avm_readdata),
        .in_lm_maxpool2d_avm_readdatavalid(in_lm_maxpool2d_avm_readdatavalid),
        .in_lm_maxpool2d_avm_waitrequest(in_lm_maxpool2d_avm_waitrequest),
        .in_lm_maxpool2d_avm_writeack(in_lm_maxpool2d_avm_writeack),
        .out_lm_maxpool2d_avm_address(i_llvm_fpga_mem_lm_maxpool2d3_out_lm_maxpool2d_avm_address),
        .out_lm_maxpool2d_avm_burstcount(i_llvm_fpga_mem_lm_maxpool2d3_out_lm_maxpool2d_avm_burstcount),
        .out_lm_maxpool2d_avm_byteenable(i_llvm_fpga_mem_lm_maxpool2d3_out_lm_maxpool2d_avm_byteenable),
        .out_lm_maxpool2d_avm_enable(i_llvm_fpga_mem_lm_maxpool2d3_out_lm_maxpool2d_avm_enable),
        .out_lm_maxpool2d_avm_read(i_llvm_fpga_mem_lm_maxpool2d3_out_lm_maxpool2d_avm_read),
        .out_lm_maxpool2d_avm_write(i_llvm_fpga_mem_lm_maxpool2d3_out_lm_maxpool2d_avm_write),
        .out_lm_maxpool2d_avm_writedata(i_llvm_fpga_mem_lm_maxpool2d3_out_lm_maxpool2d_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm_maxpool2d3_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm_maxpool2d3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm_maxpool2d3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,45)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_d, bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_b};

    // coalesced_delay_0_fifo(STALLFIFO,51)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_V1;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(145),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(4),
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

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,97)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_sfc_s_c1_in_for_body16_maxpool2ds_c1_enter_maxpool2d5_aunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_valid_out & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_lm_maxpool2d3_out_o_valid & SE_out_coalesced_delay_0_fifo_and1;

    // redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo(STALLFIFO,50)
    assign redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_valid_in = SE_out_maxpool2d_B10_merge_reg_aunroll_x_V0;
    assign redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_data_in = bubble_select_maxpool2d_B10_merge_reg_aunroll_x_b;
    assign redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_valid_in_bitsignaltemp = redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_valid_in[0];
    assign redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_stall_in_bitsignaltemp = redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_stall_in[0];
    assign redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_valid_out[0] = redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_valid_out_bitsignaltemp;
    assign redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_stall_out[0] = redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(150),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo (
        .valid_in(redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_b),
        .valid_out(redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_maxpool2d_B10_merge_reg_aunroll_x(STALLENABLE,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_maxpool2d_B10_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_maxpool2d_B10_merge_reg_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_maxpool2d_B10_merge_reg_aunroll_x_fromReg0 <= SE_out_maxpool2d_B10_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_maxpool2d_B10_merge_reg_aunroll_x_fromReg1 <= SE_out_maxpool2d_B10_merge_reg_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_maxpool2d_B10_merge_reg_aunroll_x_consumed0 = (~ (redist0_maxpool2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl_149_fifo_stall_out) & SE_out_maxpool2d_B10_merge_reg_aunroll_x_wireValid) | SE_out_maxpool2d_B10_merge_reg_aunroll_x_fromReg0;
    assign SE_out_maxpool2d_B10_merge_reg_aunroll_x_consumed1 = (~ (i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_o_stall) & SE_out_maxpool2d_B10_merge_reg_aunroll_x_wireValid) | SE_out_maxpool2d_B10_merge_reg_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_maxpool2d_B10_merge_reg_aunroll_x_StallValid = SE_out_maxpool2d_B10_merge_reg_aunroll_x_backStall & SE_out_maxpool2d_B10_merge_reg_aunroll_x_wireValid;
    assign SE_out_maxpool2d_B10_merge_reg_aunroll_x_toReg0 = SE_out_maxpool2d_B10_merge_reg_aunroll_x_StallValid & SE_out_maxpool2d_B10_merge_reg_aunroll_x_consumed0;
    assign SE_out_maxpool2d_B10_merge_reg_aunroll_x_toReg1 = SE_out_maxpool2d_B10_merge_reg_aunroll_x_StallValid & SE_out_maxpool2d_B10_merge_reg_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_maxpool2d_B10_merge_reg_aunroll_x_or0 = SE_out_maxpool2d_B10_merge_reg_aunroll_x_consumed0;
    assign SE_out_maxpool2d_B10_merge_reg_aunroll_x_wireStall = ~ (SE_out_maxpool2d_B10_merge_reg_aunroll_x_consumed1 & SE_out_maxpool2d_B10_merge_reg_aunroll_x_or0);
    assign SE_out_maxpool2d_B10_merge_reg_aunroll_x_backStall = SE_out_maxpool2d_B10_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_maxpool2d_B10_merge_reg_aunroll_x_V0 = SE_out_maxpool2d_B10_merge_reg_aunroll_x_wireValid & ~ (SE_out_maxpool2d_B10_merge_reg_aunroll_x_fromReg0);
    assign SE_out_maxpool2d_B10_merge_reg_aunroll_x_V1 = SE_out_maxpool2d_B10_merge_reg_aunroll_x_wireValid & ~ (SE_out_maxpool2d_B10_merge_reg_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_maxpool2d_B10_merge_reg_aunroll_x_wireValid = maxpool2d_B10_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x(STALLENABLE,85)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_lm_maxpool2d3_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_consumed1 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_consumed2 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_or1);
    assign SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x(BLACKBOX,27)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_maxpool2d9_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_maxpool2d9_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@6
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit330_0_tpl@6
    // out out_c0_exit330_1_tpl@6
    // out out_c0_exit330_2_tpl@6
    // out out_c0_exit330_3_tpl@6
    // out out_c0_exit330_4_tpl@6
    // out out_c0_exit330_5_tpl@6
    // out out_c0_exit330_6_tpl@6
    // out out_c0_exit330_7_tpl@6
    // out out_c0_exit330_8_tpl@6
    // out out_c0_exit330_9_tpl@6
    // out out_c0_exit330_10_tpl@6
    // out out_c0_exit330_11_tpl@6
    // out out_c0_exit330_12_tpl@6
    // out out_c0_exit330_13_tpl@6
    // out out_c0_exit330_14_tpl@6
    // out out_c0_exit330_15_tpl@6
    // out out_c0_exit330_16_tpl@6
    // out out_c0_exit330_17_tpl@6
    // out out_c0_exit330_18_tpl@6
    // out out_c0_exit330_19_tpl@6
    // out out_c0_exit330_20_tpl@6
    // out out_c0_exit330_21_tpl@6
    // out out_c0_exit330_22_tpl@6
    // out out_c0_exit330_23_tpl@6
    // out out_c0_exit330_24_tpl@6
    // out out_c0_exit330_25_tpl@6
    // out out_c0_exit330_26_tpl@6
    // out out_c0_exit330_27_tpl@6
    // out out_c0_exit330_28_tpl@6
    // out out_c0_exit330_29_tpl@6
    // out out_c0_exit330_30_tpl@6
    // out out_c0_exit330_31_tpl@6
    // out out_c0_exit330_32_tpl@6
    maxpool2d_i_sfc_s_c0_in_for_body16_s_c0_enter28225_maxpool2d1 thei_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_backStall),
        .in_i_valid(SE_out_maxpool2d_B10_merge_reg_aunroll_x_V1),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni30_0_tpl(GND_q),
        .in_c0_eni30_1_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_t),
        .in_c0_eni30_2_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_b),
        .in_c0_eni30_3_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_x),
        .in_c0_eni30_4_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_w),
        .in_c0_eni30_5_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_aa),
        .in_c0_eni30_6_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_z),
        .in_c0_eni30_7_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_bb),
        .in_c0_eni30_8_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_v),
        .in_c0_eni30_9_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_cc),
        .in_c0_eni30_10_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_dd),
        .in_c0_eni30_11_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_ee),
        .in_c0_eni30_12_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_u),
        .in_c0_eni30_13_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_y),
        .in_c0_eni30_14_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_c),
        .in_c0_eni30_15_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_d),
        .in_c0_eni30_16_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_e),
        .in_c0_eni30_17_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_f),
        .in_c0_eni30_18_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_g),
        .in_c0_eni30_19_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_h),
        .in_c0_eni30_20_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_i),
        .in_c0_eni30_21_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_j),
        .in_c0_eni30_22_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_k),
        .in_c0_eni30_23_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_l),
        .in_c0_eni30_24_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_m),
        .in_c0_eni30_25_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_n),
        .in_c0_eni30_26_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_o),
        .in_c0_eni30_27_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_p),
        .in_c0_eni30_28_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_q),
        .in_c0_eni30_29_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_r),
        .in_c0_eni30_30_tpl(bubble_select_maxpool2d_B10_merge_reg_aunroll_x_s),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_maxpool2d9_exiting_stall_out(i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_maxpool2d9_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_maxpool2d9_exiting_valid_out(i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_maxpool2d9_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit330_0_tpl(),
        .out_c0_exit330_1_tpl(i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_1_tpl),
        .out_c0_exit330_2_tpl(i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_2_tpl),
        .out_c0_exit330_3_tpl(i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_3_tpl),
        .out_c0_exit330_4_tpl(i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_4_tpl),
        .out_c0_exit330_5_tpl(i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_5_tpl),
        .out_c0_exit330_6_tpl(i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_6_tpl),
        .out_c0_exit330_7_tpl(i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_7_tpl),
        .out_c0_exit330_8_tpl(i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_8_tpl),
        .out_c0_exit330_9_tpl(i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_9_tpl),
        .out_c0_exit330_10_tpl(i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_10_tpl),
        .out_c0_exit330_11_tpl(i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_11_tpl),
        .out_c0_exit330_12_tpl(i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_12_tpl),
        .out_c0_exit330_13_tpl(i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_13_tpl),
        .out_c0_exit330_14_tpl(i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_14_tpl),
        .out_c0_exit330_15_tpl(i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_c0_exit330_15_tpl),
        .out_c0_exit330_16_tpl(),
        .out_c0_exit330_17_tpl(),
        .out_c0_exit330_18_tpl(),
        .out_c0_exit330_19_tpl(),
        .out_c0_exit330_20_tpl(),
        .out_c0_exit330_21_tpl(),
        .out_c0_exit330_22_tpl(),
        .out_c0_exit330_23_tpl(),
        .out_c0_exit330_24_tpl(),
        .out_c0_exit330_25_tpl(),
        .out_c0_exit330_26_tpl(),
        .out_c0_exit330_27_tpl(),
        .out_c0_exit330_28_tpl(),
        .out_c0_exit330_29_tpl(),
        .out_c0_exit330_30_tpl(),
        .out_c0_exit330_31_tpl(),
        .out_c0_exit330_32_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_maxpool2d9_exiting_valid_out = i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_maxpool2d9_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_maxpool2d9_exiting_stall_out = i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_maxpool2d9_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,17)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body16_maxpool2ds_c0_enter28225_maxpool2d1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,23)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,25)
    assign out_lm_maxpool2d_avm_address = i_llvm_fpga_mem_lm_maxpool2d3_out_lm_maxpool2d_avm_address;
    assign out_lm_maxpool2d_avm_enable = i_llvm_fpga_mem_lm_maxpool2d3_out_lm_maxpool2d_avm_enable;
    assign out_lm_maxpool2d_avm_read = i_llvm_fpga_mem_lm_maxpool2d3_out_lm_maxpool2d_avm_read;
    assign out_lm_maxpool2d_avm_write = i_llvm_fpga_mem_lm_maxpool2d3_out_lm_maxpool2d_avm_write;
    assign out_lm_maxpool2d_avm_writedata = i_llvm_fpga_mem_lm_maxpool2d3_out_lm_maxpool2d_avm_writedata;
    assign out_lm_maxpool2d_avm_byteenable = i_llvm_fpga_mem_lm_maxpool2d3_out_lm_maxpool2d_avm_byteenable;
    assign out_lm_maxpool2d_avm_burstcount = i_llvm_fpga_mem_lm_maxpool2d3_out_lm_maxpool2d_avm_burstcount;

    // bubble_join_i_sfc_s_c1_in_for_body16_maxpool2ds_c1_enter_maxpool2d5_aunroll_x(BITJOIN,64)
    assign bubble_join_i_sfc_s_c1_in_for_body16_maxpool2ds_c1_enter_maxpool2d5_aunroll_x_q = i_sfc_s_c1_in_for_body16_maxpool2ds_c1_enter_maxpool2d5_aunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_for_body16_maxpool2ds_c1_enter_maxpool2d5_aunroll_x(BITSELECT,65)
    assign bubble_select_i_sfc_s_c1_in_for_body16_maxpool2ds_c1_enter_maxpool2d5_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_body16_maxpool2ds_c1_enter_maxpool2d5_aunroll_x_q[31:0]);

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,78)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,79)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[133:0]);

    // sel_for_coalesced_delay_1(BITSELECT,49)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[95:64]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[127:96]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[128:128]);
    assign sel_for_coalesced_delay_1_f = $unsigned(bubble_select_coalesced_delay_1_fifo_b[129:129]);
    assign sel_for_coalesced_delay_1_g = $unsigned(bubble_select_coalesced_delay_1_fifo_b[130:130]);
    assign sel_for_coalesced_delay_1_h = $unsigned(bubble_select_coalesced_delay_1_fifo_b[131:131]);
    assign sel_for_coalesced_delay_1_i = $unsigned(bubble_select_coalesced_delay_1_fifo_b[132:132]);
    assign sel_for_coalesced_delay_1_j = $unsigned(bubble_select_coalesced_delay_1_fifo_b[133:133]);

    // dupName_0_sync_out_x(GPOUT,26)@154
    assign out_c0_exe10340 = sel_for_coalesced_delay_1_g;
    assign out_c0_exe11341 = sel_for_coalesced_delay_1_c;
    assign out_c0_exe12342 = sel_for_coalesced_delay_1_h;
    assign out_c0_exe13343 = sel_for_coalesced_delay_1_i;
    assign out_c0_exe14344 = sel_for_coalesced_delay_1_d;
    assign out_c0_exe15345 = sel_for_coalesced_delay_1_j;
    assign out_c0_exe5335 = sel_for_coalesced_delay_1_e;
    assign out_c0_exe8338 = sel_for_coalesced_delay_1_f;
    assign out_c0_exe9339 = sel_for_coalesced_delay_1_b;
    assign out_c1_exe1 = bubble_select_i_sfc_s_c1_in_for_body16_maxpool2ds_c1_enter_maxpool2d5_aunroll_x_b;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V0;

endmodule
