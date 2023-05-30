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

// SystemVerilog created from conv2d3x3_bb_B11_stall_region
// SystemVerilog created on Tue May 30 12:33:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B11_stall_region (
    input wire [511:0] in_lm13_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm13_conv2d3x3_avm_writeack,
    input wire [0:0] in_lm13_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm13_conv2d3x3_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv2d3x38_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv2d3x38_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_acl_6417,
    input wire [31:0] in_add111_pop49425,
    input wire [31:0] in_add244,
    input wire [31:0] in_add24407,
    input wire [31:0] in_add35_1398,
    input wire [0:0] in_cmp26121_pop51409,
    input wire [0:0] in_cmp26262,
    input wire [0:0] in_cmp26_1136_pop54431,
    input wire [0:0] in_cmp26_1289,
    input wire [0:0] in_cmp26_2151_pop57437,
    input wire [0:0] in_cmp26_2316,
    input wire [0:0] in_cmp27126_pop52411,
    input wire [0:0] in_cmp27271,
    input wire [0:0] in_cmp27_1141_pop55433,
    input wire [0:0] in_cmp27_1298,
    input wire [0:0] in_cmp27_2156_pop58439,
    input wire [0:0] in_cmp27_2325,
    input wire [63:0] in_filter_weight_addr_067_replace_phi201,
    input wire [63:0] in_filter_weight_addr_067_replace_phi85_pop19343,
    input wire [63:0] in_filter_weight_addr_067_replace_phi88_pop45415,
    input wire [0:0] in_forked40,
    input wire [31:0] in_inc50184_pop68447,
    input wire [31:0] in_j_061_pop24176_pop63403,
    input wire [31:0] in_lm25100_pop47421,
    input wire [31:0] in_lm25223,
    input wire [31:0] in_lm2597_pop21361,
    input wire [31:0] in_mul32181_pop66445,
    input wire [31:0] in_mul39_add4399,
    input wire [31:0] in_mul56116_pop50427,
    input wire [31:0] in_mul56253,
    input wire [0:0] in_notcmp73172_pop62443,
    input wire [0:0] in_notcmp77161_pop59441,
    input wire [0:0] in_notcmp77334,
    input wire [0:0] in_notcmp81103_pop22370,
    input wire [0:0] in_notcmp81106_pop48423,
    input wire [0:0] in_notcmp81234,
    input wire [63:0] in_output_im_addr_068_replace_phi212,
    input wire [63:0] in_output_im_addr_068_replace_phi91_pop20352,
    input wire [63:0] in_output_im_addr_068_replace_phi94_pop46419,
    input wire [31:0] in_pad_sync_buffer168_pop61405,
    input wire [0:0] in_pop65413,
    input wire [0:0] in_pop69449,
    input wire [31:0] in_stride_sync_buffer164_pop60401,
    input wire [31:0] in_sub_1131_pop53429,
    input wire [31:0] in_sub_1280,
    input wire [31:0] in_sub_2146_pop56435,
    input wire [31:0] in_sub_2307,
    input wire [0:0] in_valid_in,
    input wire [511:0] in_lm15_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm15_conv2d3x3_avm_writeack,
    input wire [0:0] in_lm15_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm15_conv2d3x3_avm_readdatavalid,
    output wire [30:0] out_lm13_conv2d3x3_avm_address,
    output wire [0:0] out_lm13_conv2d3x3_avm_enable,
    output wire [0:0] out_lm13_conv2d3x3_avm_read,
    output wire [0:0] out_lm13_conv2d3x3_avm_write,
    output wire [511:0] out_lm13_conv2d3x3_avm_writedata,
    output wire [63:0] out_lm13_conv2d3x3_avm_byteenable,
    output wire [4:0] out_lm13_conv2d3x3_avm_burstcount,
    output wire [63:0] out_c0_exe10925,
    output wire [0:0] out_c0_exe12927,
    output wire [63:0] out_c0_exe13928,
    output wire [31:0] out_c0_exe14929,
    output wire [0:0] out_c0_exe15930,
    output wire [31:0] out_c0_exe16931,
    output wire [31:0] out_c0_exe17932,
    output wire [0:0] out_c0_exe18933,
    output wire [0:0] out_c0_exe19934,
    output wire [31:0] out_c0_exe20935,
    output wire [31:0] out_c0_exe21936,
    output wire [0:0] out_c0_exe22937,
    output wire [0:0] out_c0_exe23938,
    output wire [0:0] out_c0_exe24939,
    output wire [31:0] out_c0_exe25940,
    output wire [31:0] out_c0_exe26941,
    output wire [0:0] out_c0_exe27942,
    output wire [31:0] out_c0_exe28943,
    output wire [31:0] out_c0_exe2917,
    output wire [31:0] out_c0_exe29944,
    output wire [31:0] out_c0_exe30945,
    output wire [0:0] out_c0_exe31946,
    output wire [63:0] out_c0_exe33948,
    output wire [63:0] out_c0_exe34949,
    output wire [31:0] out_c0_exe35950,
    output wire [0:0] out_c0_exe36951,
    output wire [31:0] out_c0_exe37952,
    output wire [31:0] out_c0_exe38953,
    output wire [31:0] out_c0_exe3918,
    output wire [0:0] out_c0_exe39954,
    output wire [0:0] out_c0_exe40955,
    output wire [31:0] out_c0_exe41956,
    output wire [0:0] out_c0_exe42957,
    output wire [0:0] out_c0_exe43958,
    output wire [31:0] out_c0_exe44959,
    output wire [0:0] out_c0_exe45960,
    output wire [0:0] out_c0_exe46961,
    output wire [0:0] out_c0_exe47962,
    output wire [63:0] out_c0_exe48963,
    output wire [63:0] out_c0_exe49964,
    output wire [31:0] out_c0_exe50965,
    output wire [0:0] out_c0_exe51966,
    output wire [0:0] out_c0_exe5920,
    output wire [0:0] out_c0_exe6921,
    output wire [0:0] out_c0_exe8923,
    output wire [31:0] out_c1_exe1983,
    output wire [0:0] out_valid_out,
    output wire [30:0] out_lm15_conv2d3x3_avm_address,
    output wire [0:0] out_lm15_conv2d3x3_avm_enable,
    output wire [0:0] out_lm15_conv2d3x3_avm_read,
    output wire [0:0] out_lm15_conv2d3x3_avm_write,
    output wire [511:0] out_lm15_conv2d3x3_avm_writedata,
    output wire [63:0] out_lm15_conv2d3x3_avm_byteenable,
    output wire [4:0] out_lm15_conv2d3x3_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [30:0] i_llvm_fpga_mem_lm13_conv2d3x33_out_lm13_conv2d3x3_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm13_conv2d3x33_out_lm13_conv2d3x3_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm13_conv2d3x33_out_lm13_conv2d3x3_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm13_conv2d3x33_out_lm13_conv2d3x3_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm13_conv2d3x33_out_lm13_conv2d3x3_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm13_conv2d3x33_out_lm13_conv2d3x3_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm13_conv2d3x33_out_lm13_conv2d3x3_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm13_conv2d3x33_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm13_conv2d3x33_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm13_conv2d3x33_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm15_conv2d3x34_out_lm15_conv2d3x3_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm15_conv2d3x34_out_lm15_conv2d3x3_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm15_conv2d3x34_out_lm15_conv2d3x3_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm15_conv2d3x34_out_lm15_conv2d3x3_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm15_conv2d3x34_out_lm15_conv2d3x3_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm15_conv2d3x34_out_lm15_conv2d3x3_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm15_conv2d3x34_out_lm15_conv2d3x3_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm15_conv2d3x34_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm15_conv2d3x34_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm15_conv2d3x34_out_o_valid;
    wire [0:0] conv2d3x3_B11_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv2d3x3_B11_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [63:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [63:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [31:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [0:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [0:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [31:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [0:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [0:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [0:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [63:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [63:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_17_tpl;
    wire [31:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_18_tpl;
    wire [0:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_19_tpl;
    wire [31:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_20_tpl;
    wire [31:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_21_tpl;
    wire [31:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_22_tpl;
    wire [31:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_23_tpl;
    wire [31:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_24_tpl;
    wire [31:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_25_tpl;
    wire [0:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_26_tpl;
    wire [0:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_27_tpl;
    wire [0:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_28_tpl;
    wire [63:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_29_tpl;
    wire [31:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_30_tpl;
    wire [63:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_31_tpl;
    wire [31:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_32_tpl;
    wire [0:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_33_tpl;
    wire [31:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_34_tpl;
    wire [31:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_35_tpl;
    wire [31:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_36_tpl;
    wire [0:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_37_tpl;
    wire [0:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_38_tpl;
    wire [31:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_39_tpl;
    wire [0:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_40_tpl;
    wire [0:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_41_tpl;
    wire [0:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_42_tpl;
    wire [0:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_43_tpl;
    wire [31:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_44_tpl;
    wire [31:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_45_tpl;
    wire [0:0] conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_46_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv2d3x38_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv2d3x38_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_9_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_10_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_12_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_13_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_14_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_15_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_16_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_17_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_18_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_19_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_20_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_21_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_22_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_23_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_24_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_25_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_26_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_27_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_28_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_29_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_30_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_31_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_32_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_33_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_34_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_35_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_36_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_37_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_38_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_39_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_40_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_41_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_42_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_43_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_44_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_45_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_46_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_47_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_48_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_49_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_50_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_51_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_52_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body22_1_conv2d3x3s_c1_enter974_conv2d3x36_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body22_1_conv2d3x3s_c1_enter974_conv2d3x36_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_for_body22_1_conv2d3x3s_c1_enter974_conv2d3x36_aunroll_x_out_c1_exit982_1_tpl;
    wire [34:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [980:0] join_for_coalesced_delay_1_q;
    wire [63:0] sel_for_coalesced_delay_1_b;
    wire [63:0] sel_for_coalesced_delay_1_c;
    wire [63:0] sel_for_coalesced_delay_1_d;
    wire [63:0] sel_for_coalesced_delay_1_e;
    wire [63:0] sel_for_coalesced_delay_1_f;
    wire [63:0] sel_for_coalesced_delay_1_g;
    wire [31:0] sel_for_coalesced_delay_1_h;
    wire [31:0] sel_for_coalesced_delay_1_i;
    wire [31:0] sel_for_coalesced_delay_1_j;
    wire [31:0] sel_for_coalesced_delay_1_k;
    wire [31:0] sel_for_coalesced_delay_1_l;
    wire [31:0] sel_for_coalesced_delay_1_m;
    wire [31:0] sel_for_coalesced_delay_1_n;
    wire [31:0] sel_for_coalesced_delay_1_o;
    wire [31:0] sel_for_coalesced_delay_1_p;
    wire [31:0] sel_for_coalesced_delay_1_q;
    wire [31:0] sel_for_coalesced_delay_1_r;
    wire [31:0] sel_for_coalesced_delay_1_s;
    wire [31:0] sel_for_coalesced_delay_1_t;
    wire [31:0] sel_for_coalesced_delay_1_u;
    wire [31:0] sel_for_coalesced_delay_1_v;
    wire [31:0] sel_for_coalesced_delay_1_w;
    wire [31:0] sel_for_coalesced_delay_1_x;
    wire [31:0] sel_for_coalesced_delay_1_y;
    wire [0:0] sel_for_coalesced_delay_1_z;
    wire [0:0] sel_for_coalesced_delay_1_aa;
    wire [0:0] sel_for_coalesced_delay_1_bb;
    wire [0:0] sel_for_coalesced_delay_1_cc;
    wire [0:0] sel_for_coalesced_delay_1_dd;
    wire [0:0] sel_for_coalesced_delay_1_ee;
    wire [0:0] sel_for_coalesced_delay_1_ff;
    wire [0:0] sel_for_coalesced_delay_1_gg;
    wire [0:0] sel_for_coalesced_delay_1_hh;
    wire [0:0] sel_for_coalesced_delay_1_ii;
    wire [0:0] sel_for_coalesced_delay_1_jj;
    wire [0:0] sel_for_coalesced_delay_1_kk;
    wire [0:0] sel_for_coalesced_delay_1_ll;
    wire [0:0] sel_for_coalesced_delay_1_mm;
    wire [0:0] sel_for_coalesced_delay_1_nn;
    wire [0:0] sel_for_coalesced_delay_1_oo;
    wire [0:0] sel_for_coalesced_delay_1_pp;
    wire [0:0] sel_for_coalesced_delay_1_qq;
    wire [0:0] sel_for_coalesced_delay_1_rr;
    wire [0:0] sel_for_coalesced_delay_1_ss;
    wire [0:0] sel_for_coalesced_delay_1_tt;
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
    wire [980:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [980:0] coalesced_delay_1_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm13_conv2d3x33_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm13_conv2d3x33_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm15_conv2d3x34_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm15_conv2d3x34_b;
    wire [1044:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [0:0] bubble_select_stall_entry_o;
    wire [0:0] bubble_select_stall_entry_p;
    wire [0:0] bubble_select_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_r;
    wire [63:0] bubble_select_stall_entry_s;
    wire [63:0] bubble_select_stall_entry_t;
    wire [63:0] bubble_select_stall_entry_u;
    wire [0:0] bubble_select_stall_entry_v;
    wire [31:0] bubble_select_stall_entry_w;
    wire [31:0] bubble_select_stall_entry_x;
    wire [31:0] bubble_select_stall_entry_y;
    wire [31:0] bubble_select_stall_entry_z;
    wire [31:0] bubble_select_stall_entry_aa;
    wire [31:0] bubble_select_stall_entry_bb;
    wire [31:0] bubble_select_stall_entry_cc;
    wire [31:0] bubble_select_stall_entry_dd;
    wire [31:0] bubble_select_stall_entry_ee;
    wire [0:0] bubble_select_stall_entry_ff;
    wire [0:0] bubble_select_stall_entry_gg;
    wire [0:0] bubble_select_stall_entry_hh;
    wire [0:0] bubble_select_stall_entry_ii;
    wire [0:0] bubble_select_stall_entry_jj;
    wire [0:0] bubble_select_stall_entry_kk;
    wire [63:0] bubble_select_stall_entry_ll;
    wire [63:0] bubble_select_stall_entry_mm;
    wire [63:0] bubble_select_stall_entry_nn;
    wire [31:0] bubble_select_stall_entry_oo;
    wire [0:0] bubble_select_stall_entry_pp;
    wire [0:0] bubble_select_stall_entry_qq;
    wire [31:0] bubble_select_stall_entry_rr;
    wire [31:0] bubble_select_stall_entry_ss;
    wire [31:0] bubble_select_stall_entry_tt;
    wire [31:0] bubble_select_stall_entry_uu;
    wire [31:0] bubble_select_stall_entry_vv;
    wire [1044:0] bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_b;
    wire [63:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_c;
    wire [63:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_g;
    wire [31:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_h;
    wire [0:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_j;
    wire [31:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_k;
    wire [0:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_l;
    wire [0:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_m;
    wire [31:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_n;
    wire [0:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_o;
    wire [0:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_p;
    wire [0:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_q;
    wire [63:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_r;
    wire [63:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_s;
    wire [31:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_t;
    wire [0:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_u;
    wire [31:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_v;
    wire [31:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_w;
    wire [31:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_x;
    wire [31:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_y;
    wire [31:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_z;
    wire [31:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_aa;
    wire [0:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_bb;
    wire [0:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_cc;
    wire [0:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_dd;
    wire [63:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_ee;
    wire [31:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_ff;
    wire [63:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_gg;
    wire [31:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_hh;
    wire [0:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_ii;
    wire [31:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_jj;
    wire [31:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_kk;
    wire [31:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_ll;
    wire [0:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_mm;
    wire [0:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_nn;
    wire [31:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_oo;
    wire [0:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_pp;
    wire [0:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_qq;
    wire [0:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_rr;
    wire [0:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_ss;
    wire [31:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_tt;
    wire [31:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_uu;
    wire [0:0] bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_vv;
    wire [1144:0] bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_j;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_k;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_m;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_n;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_o;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_p;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_r;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_s;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_t;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_u;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_v;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_w;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_x;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_y;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_z;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_aa;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_bb;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_cc;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_dd;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_ee;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_ff;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_gg;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_hh;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_ii;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_jj;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_kk;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_ll;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_mm;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_nn;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_oo;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_pp;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_qq;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_rr;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_ss;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_tt;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_uu;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_vv;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_ww;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_xx;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_yy;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_zz;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_1;
    wire [31:0] bubble_join_i_sfc_s_c1_in_for_body22_1_conv2d3x3s_c1_enter974_conv2d3x36_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body22_1_conv2d3x3s_c1_enter974_conv2d3x36_aunroll_x_b;
    wire [34:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [34:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [980:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [980:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_conv2d3x3_B11_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv2d3x3_B11_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv2d3x3_B11_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_V3;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;


    // bubble_join_stall_entry(BITJOIN,100)
    assign bubble_join_stall_entry_q = {in_sub_2307, in_sub_2146_pop56435, in_sub_1280, in_sub_1131_pop53429, in_stride_sync_buffer164_pop60401, in_pop69449, in_pop65413, in_pad_sync_buffer168_pop61405, in_output_im_addr_068_replace_phi94_pop46419, in_output_im_addr_068_replace_phi91_pop20352, in_output_im_addr_068_replace_phi212, in_notcmp81234, in_notcmp81106_pop48423, in_notcmp81103_pop22370, in_notcmp77334, in_notcmp77161_pop59441, in_notcmp73172_pop62443, in_mul56253, in_mul56116_pop50427, in_mul39_add4399, in_mul32181_pop66445, in_lm2597_pop21361, in_lm25223, in_lm25100_pop47421, in_j_061_pop24176_pop63403, in_inc50184_pop68447, in_forked40, in_filter_weight_addr_067_replace_phi88_pop45415, in_filter_weight_addr_067_replace_phi85_pop19343, in_filter_weight_addr_067_replace_phi201, in_cmp27_2325, in_cmp27_2156_pop58439, in_cmp27_1298, in_cmp27_1141_pop55433, in_cmp27271, in_cmp27126_pop52411, in_cmp26_2316, in_cmp26_2151_pop57437, in_cmp26_1289, in_cmp26_1136_pop54431, in_cmp26262, in_cmp26121_pop51409, in_add35_1398, in_add24407, in_add244, in_add111_pop49425, in_acl_6417};

    // bubble_select_stall_entry(BITSELECT,101)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[63:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[95:64]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[127:96]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[159:128]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[160:160]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[161:161]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[162:162]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[163:163]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[164:164]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[165:165]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[166:166]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[167:167]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[168:168]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[169:169]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[170:170]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[171:171]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[235:172]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[299:236]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[363:300]);
    assign bubble_select_stall_entry_v = $unsigned(bubble_join_stall_entry_q[364:364]);
    assign bubble_select_stall_entry_w = $unsigned(bubble_join_stall_entry_q[396:365]);
    assign bubble_select_stall_entry_x = $unsigned(bubble_join_stall_entry_q[428:397]);
    assign bubble_select_stall_entry_y = $unsigned(bubble_join_stall_entry_q[460:429]);
    assign bubble_select_stall_entry_z = $unsigned(bubble_join_stall_entry_q[492:461]);
    assign bubble_select_stall_entry_aa = $unsigned(bubble_join_stall_entry_q[524:493]);
    assign bubble_select_stall_entry_bb = $unsigned(bubble_join_stall_entry_q[556:525]);
    assign bubble_select_stall_entry_cc = $unsigned(bubble_join_stall_entry_q[588:557]);
    assign bubble_select_stall_entry_dd = $unsigned(bubble_join_stall_entry_q[620:589]);
    assign bubble_select_stall_entry_ee = $unsigned(bubble_join_stall_entry_q[652:621]);
    assign bubble_select_stall_entry_ff = $unsigned(bubble_join_stall_entry_q[653:653]);
    assign bubble_select_stall_entry_gg = $unsigned(bubble_join_stall_entry_q[654:654]);
    assign bubble_select_stall_entry_hh = $unsigned(bubble_join_stall_entry_q[655:655]);
    assign bubble_select_stall_entry_ii = $unsigned(bubble_join_stall_entry_q[656:656]);
    assign bubble_select_stall_entry_jj = $unsigned(bubble_join_stall_entry_q[657:657]);
    assign bubble_select_stall_entry_kk = $unsigned(bubble_join_stall_entry_q[658:658]);
    assign bubble_select_stall_entry_ll = $unsigned(bubble_join_stall_entry_q[722:659]);
    assign bubble_select_stall_entry_mm = $unsigned(bubble_join_stall_entry_q[786:723]);
    assign bubble_select_stall_entry_nn = $unsigned(bubble_join_stall_entry_q[850:787]);
    assign bubble_select_stall_entry_oo = $unsigned(bubble_join_stall_entry_q[882:851]);
    assign bubble_select_stall_entry_pp = $unsigned(bubble_join_stall_entry_q[883:883]);
    assign bubble_select_stall_entry_qq = $unsigned(bubble_join_stall_entry_q[884:884]);
    assign bubble_select_stall_entry_rr = $unsigned(bubble_join_stall_entry_q[916:885]);
    assign bubble_select_stall_entry_ss = $unsigned(bubble_join_stall_entry_q[948:917]);
    assign bubble_select_stall_entry_tt = $unsigned(bubble_join_stall_entry_q[980:949]);
    assign bubble_select_stall_entry_uu = $unsigned(bubble_join_stall_entry_q[1012:981]);
    assign bubble_select_stall_entry_vv = $unsigned(bubble_join_stall_entry_q[1044:1013]);

    // SE_stall_entry(STALLENABLE,124)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv2d3x3_B11_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // conv2d3x3_B11_merge_reg_aunroll_x(BLACKBOX,29)@0
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
    // out out_data_out_30_tpl@1
    // out out_data_out_31_tpl@1
    // out out_data_out_32_tpl@1
    // out out_data_out_33_tpl@1
    // out out_data_out_34_tpl@1
    // out out_data_out_35_tpl@1
    // out out_data_out_36_tpl@1
    // out out_data_out_37_tpl@1
    // out out_data_out_38_tpl@1
    // out out_data_out_39_tpl@1
    // out out_data_out_40_tpl@1
    // out out_data_out_41_tpl@1
    // out out_data_out_42_tpl@1
    // out out_data_out_43_tpl@1
    // out out_data_out_44_tpl@1
    // out out_data_out_45_tpl@1
    // out out_data_out_46_tpl@1
    conv2d3x3_B11_merge_reg theconv2d3x3_B11_merge_reg_aunroll_x (
        .in_stall_in(SE_out_conv2d3x3_B11_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_v),
        .in_data_in_1_tpl(bubble_select_stall_entry_s),
        .in_data_in_2_tpl(bubble_select_stall_entry_ll),
        .in_data_in_3_tpl(bubble_select_stall_entry_z),
        .in_data_in_4_tpl(bubble_select_stall_entry_kk),
        .in_data_in_5_tpl(bubble_select_stall_entry_d),
        .in_data_in_6_tpl(bubble_select_stall_entry_ee),
        .in_data_in_7_tpl(bubble_select_stall_entry_h),
        .in_data_in_8_tpl(bubble_select_stall_entry_n),
        .in_data_in_9_tpl(bubble_select_stall_entry_tt),
        .in_data_in_10_tpl(bubble_select_stall_entry_j),
        .in_data_in_11_tpl(bubble_select_stall_entry_p),
        .in_data_in_12_tpl(bubble_select_stall_entry_vv),
        .in_data_in_13_tpl(bubble_select_stall_entry_l),
        .in_data_in_14_tpl(bubble_select_stall_entry_r),
        .in_data_in_15_tpl(bubble_select_stall_entry_hh),
        .in_data_in_16_tpl(bubble_select_stall_entry_t),
        .in_data_in_17_tpl(bubble_select_stall_entry_mm),
        .in_data_in_18_tpl(bubble_select_stall_entry_aa),
        .in_data_in_19_tpl(bubble_select_stall_entry_ii),
        .in_data_in_20_tpl(bubble_select_stall_entry_f),
        .in_data_in_21_tpl(bubble_select_stall_entry_cc),
        .in_data_in_22_tpl(bubble_select_stall_entry_rr),
        .in_data_in_23_tpl(bubble_select_stall_entry_x),
        .in_data_in_24_tpl(bubble_select_stall_entry_oo),
        .in_data_in_25_tpl(bubble_select_stall_entry_e),
        .in_data_in_26_tpl(bubble_select_stall_entry_g),
        .in_data_in_27_tpl(bubble_select_stall_entry_m),
        .in_data_in_28_tpl(bubble_select_stall_entry_pp),
        .in_data_in_29_tpl(bubble_select_stall_entry_u),
        .in_data_in_30_tpl(bubble_select_stall_entry_b),
        .in_data_in_31_tpl(bubble_select_stall_entry_nn),
        .in_data_in_32_tpl(bubble_select_stall_entry_y),
        .in_data_in_33_tpl(bubble_select_stall_entry_jj),
        .in_data_in_34_tpl(bubble_select_stall_entry_c),
        .in_data_in_35_tpl(bubble_select_stall_entry_dd),
        .in_data_in_36_tpl(bubble_select_stall_entry_ss),
        .in_data_in_37_tpl(bubble_select_stall_entry_i),
        .in_data_in_38_tpl(bubble_select_stall_entry_o),
        .in_data_in_39_tpl(bubble_select_stall_entry_uu),
        .in_data_in_40_tpl(bubble_select_stall_entry_k),
        .in_data_in_41_tpl(bubble_select_stall_entry_q),
        .in_data_in_42_tpl(bubble_select_stall_entry_gg),
        .in_data_in_43_tpl(bubble_select_stall_entry_ff),
        .in_data_in_44_tpl(bubble_select_stall_entry_bb),
        .in_data_in_45_tpl(bubble_select_stall_entry_w),
        .in_data_in_46_tpl(bubble_select_stall_entry_qq),
        .out_stall_out(conv2d3x3_B11_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv2d3x3_B11_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_21_tpl),
        .out_data_out_22_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_22_tpl),
        .out_data_out_23_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_23_tpl),
        .out_data_out_24_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_24_tpl),
        .out_data_out_25_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_25_tpl),
        .out_data_out_26_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_26_tpl),
        .out_data_out_27_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_27_tpl),
        .out_data_out_28_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_28_tpl),
        .out_data_out_29_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_29_tpl),
        .out_data_out_30_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_30_tpl),
        .out_data_out_31_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_31_tpl),
        .out_data_out_32_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_32_tpl),
        .out_data_out_33_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_33_tpl),
        .out_data_out_34_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_34_tpl),
        .out_data_out_35_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_35_tpl),
        .out_data_out_36_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_36_tpl),
        .out_data_out_37_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_37_tpl),
        .out_data_out_38_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_38_tpl),
        .out_data_out_39_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_39_tpl),
        .out_data_out_40_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_40_tpl),
        .out_data_out_41_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_41_tpl),
        .out_data_out_42_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_42_tpl),
        .out_data_out_43_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_43_tpl),
        .out_data_out_44_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_44_tpl),
        .out_data_out_45_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_45_tpl),
        .out_data_out_46_tpl(conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_46_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_conv2d3x3_B11_merge_reg_aunroll_x(BITJOIN,104)
    assign bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q = {conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_46_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_45_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_44_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_43_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_42_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_41_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_40_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_39_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_38_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_37_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_36_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_35_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_34_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_33_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_32_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_31_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_30_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_29_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_28_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_27_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_26_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_25_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_24_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_23_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_22_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_21_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_20_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_19_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_18_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_17_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_16_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_15_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_14_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_13_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_12_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_11_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_10_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_9_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_8_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_7_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_6_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_5_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_4_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_3_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_2_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_1_tpl, conv2d3x3_B11_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv2d3x3_B11_merge_reg_aunroll_x(BITSELECT,105)
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[64:1]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[128:65]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[160:129]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_f = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[161:161]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_g = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[193:162]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_h = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[225:194]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_i = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[226:226]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_j = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[227:227]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_k = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[259:228]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_l = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[260:260]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_m = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[261:261]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_n = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[293:262]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_o = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[294:294]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_p = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[295:295]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_q = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[296:296]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_r = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[360:297]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_s = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[424:361]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_t = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[456:425]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_u = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[457:457]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_v = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[489:458]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_w = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[521:490]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_x = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[553:522]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_y = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[585:554]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_z = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[617:586]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_aa = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[649:618]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_bb = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[650:650]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_cc = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[651:651]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_dd = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[652:652]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_ee = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[716:653]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_ff = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[748:717]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_gg = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[812:749]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_hh = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[844:813]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_ii = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[845:845]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_jj = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[877:846]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_kk = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[909:878]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_ll = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[941:910]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_mm = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[942:942]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_nn = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[943:943]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_oo = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[975:944]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_pp = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[976:976]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_qq = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[977:977]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_rr = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[978:978]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_ss = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[979:979]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_tt = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[1011:980]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_uu = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[1043:1012]);
    assign bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_vv = $unsigned(bubble_join_conv2d3x3_B11_merge_reg_aunroll_x_q[1044:1044]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_conv2d3x3_B11_merge_reg_aunroll_x(STALLENABLE,127)
    // Valid signal propagation
    assign SE_out_conv2d3x3_B11_merge_reg_aunroll_x_V0 = SE_out_conv2d3x3_B11_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_conv2d3x3_B11_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_o_stall | ~ (SE_out_conv2d3x3_B11_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_conv2d3x3_B11_merge_reg_aunroll_x_wireValid = conv2d3x3_B11_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x(BITJOIN,108)
    assign bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q = {i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_52_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_51_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_50_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_49_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_48_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_47_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_46_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_45_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_44_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_43_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_42_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_41_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_40_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_39_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_38_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_37_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_36_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_35_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_34_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_33_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_32_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_31_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_30_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_29_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_28_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_27_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_26_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_25_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_24_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_23_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_22_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_21_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_20_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_19_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_18_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_17_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_16_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_15_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_14_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_13_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_12_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_11_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_10_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_9_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_8_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_7_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_6_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_5_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_4_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_3_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_2_tpl, i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x(BITSELECT,109)
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[32:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[64:33]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[128:65]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[129:129]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[130:130]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[131:131]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[132:132]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[133:133]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[197:134]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[261:198]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[262:262]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[326:263]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[358:327]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[359:359]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[391:360]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[423:392]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[424:424]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_t = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[425:425]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_u = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[457:426]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_v = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[489:458]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_w = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[490:490]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_x = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[491:491]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_y = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[492:492]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_z = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[524:493]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_aa = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[556:525]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_bb = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[557:557]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_cc = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[589:558]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_dd = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[621:590]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_ee = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[653:622]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_ff = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[654:654]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_gg = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[655:655]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_hh = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[719:656]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_ii = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[783:720]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_jj = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[815:784]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_kk = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[816:816]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_ll = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[848:817]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_mm = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[880:849]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_nn = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[881:881]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_oo = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[882:882]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_pp = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[914:883]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_qq = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[915:915]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_rr = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[916:916]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_ss = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[948:917]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_tt = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[949:949]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_uu = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[950:950]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_vv = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[951:951]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_ww = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[1015:952]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_xx = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[1079:1016]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_yy = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[1111:1080]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_zz = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[1112:1112]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_1 = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q[1144:1113]);

    // join_for_coalesced_delay_1(BITJOIN,89)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_x, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_w, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_bb, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_t, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_ff, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_s, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_kk, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_p, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_nn, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_oo, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_m, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_qq, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_rr, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_tt, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_uu, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_vv, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_y, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_zz, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_o, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_q, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_r, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_u, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_v, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_yy, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_ss, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_pp, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_mm, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_d, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_jj, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_ee, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_dd, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_cc, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_aa, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_z, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_ll, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_ii, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_hh, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_n, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_ww, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_xx};

    // bubble_join_i_llvm_fpga_mem_lm15_conv2d3x34(BITJOIN,97)
    assign bubble_join_i_llvm_fpga_mem_lm15_conv2d3x34_q = i_llvm_fpga_mem_lm15_conv2d3x34_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm15_conv2d3x34(BITSELECT,98)
    assign bubble_select_i_llvm_fpga_mem_lm15_conv2d3x34_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm15_conv2d3x34_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm13_conv2d3x33(BITJOIN,94)
    assign bubble_join_i_llvm_fpga_mem_lm13_conv2d3x33_q = i_llvm_fpga_mem_lm13_conv2d3x33_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm13_conv2d3x33(BITSELECT,95)
    assign bubble_select_i_llvm_fpga_mem_lm13_conv2d3x33_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm13_conv2d3x33_q[31:0]);

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,137)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_sfc_s_c1_in_for_body22_1_conv2d3x3s_c1_enter974_conv2d3x36_aunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = i_llvm_fpga_mem_lm15_conv2d3x34_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_lm13_conv2d3x33_out_o_valid & SE_out_coalesced_delay_0_fifo_and1;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,115)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,116)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[34:0]);

    // sel_for_coalesced_delay_0(BITSELECT,87)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[32:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[33:33]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[34:34]);

    // i_sfc_s_c1_in_for_body22_1_conv2d3x3s_c1_enter974_conv2d3x36_aunroll_x(BLACKBOX,35)@248
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@256
    // out out_c1_exit982_0_tpl@256
    // out out_c1_exit982_1_tpl@256
    conv2d3x3_i_sfc_s_c1_in_for_body22_1_s_c1_enter974_conv2d3x36 thei_sfc_s_c1_in_for_body22_1_conv2d3x3s_c1_enter974_conv2d3x36_aunroll_x (
        .in_c0_exe1916(sel_for_coalesced_delay_0_c),
        .in_c0_exe32947(sel_for_coalesced_delay_0_e),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .in_c1_eni6973_0_tpl(GND_q),
        .in_c1_eni6973_1_tpl(sel_for_coalesced_delay_0_b),
        .in_c1_eni6973_2_tpl(sel_for_coalesced_delay_0_e),
        .in_c1_eni6973_3_tpl(bubble_select_i_llvm_fpga_mem_lm13_conv2d3x33_b),
        .in_c1_eni6973_4_tpl(bubble_select_i_llvm_fpga_mem_lm15_conv2d3x34_b),
        .in_c1_eni6973_5_tpl(sel_for_coalesced_delay_0_d),
        .in_c1_eni6973_6_tpl(sel_for_coalesced_delay_0_c),
        .out_o_stall(i_sfc_s_c1_in_for_body22_1_conv2d3x3s_c1_enter974_conv2d3x36_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body22_1_conv2d3x3s_c1_enter974_conv2d3x36_aunroll_x_out_o_valid),
        .out_c1_exit982_0_tpl(),
        .out_c1_exit982_1_tpl(i_sfc_s_c1_in_for_body22_1_conv2d3x3s_c1_enter974_conv2d3x36_aunroll_x_out_c1_exit982_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,139)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_wireValid = i_sfc_s_c1_in_for_body22_1_conv2d3x3s_c1_enter974_conv2d3x36_aunroll_x_out_o_valid & SE_out_coalesced_delay_1_fifo_and0;

    // coalesced_delay_1_fifo(STALLFIFO,92)
    assign coalesced_delay_1_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_V3;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(250),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(981),
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

    // join_for_coalesced_delay_0(BITJOIN,86)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_gg, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_1};

    // coalesced_delay_0_fifo(STALLFIFO,91)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_V2;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(242),
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

    // i_llvm_fpga_mem_lm15_conv2d3x34(BLACKBOX,8)@7
    // in in_i_stall@20000000
    // out out_lm15_conv2d3x3_avm_address@20000000
    // out out_lm15_conv2d3x3_avm_burstcount@20000000
    // out out_lm15_conv2d3x3_avm_byteenable@20000000
    // out out_lm15_conv2d3x3_avm_enable@20000000
    // out out_lm15_conv2d3x3_avm_read@20000000
    // out out_lm15_conv2d3x3_avm_write@20000000
    // out out_lm15_conv2d3x3_avm_writedata@20000000
    // out out_o_readdata@248
    // out out_o_stall@20000000
    // out out_o_valid@248
    conv2d3x3_i_llvm_fpga_mem_lm15_0 thei_llvm_fpga_mem_lm15_conv2d3x34 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_l),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_j),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_V1),
        .in_lm15_conv2d3x3_avm_readdata(in_lm15_conv2d3x3_avm_readdata),
        .in_lm15_conv2d3x3_avm_readdatavalid(in_lm15_conv2d3x3_avm_readdatavalid),
        .in_lm15_conv2d3x3_avm_waitrequest(in_lm15_conv2d3x3_avm_waitrequest),
        .in_lm15_conv2d3x3_avm_writeack(in_lm15_conv2d3x3_avm_writeack),
        .out_lm15_conv2d3x3_avm_address(i_llvm_fpga_mem_lm15_conv2d3x34_out_lm15_conv2d3x3_avm_address),
        .out_lm15_conv2d3x3_avm_burstcount(i_llvm_fpga_mem_lm15_conv2d3x34_out_lm15_conv2d3x3_avm_burstcount),
        .out_lm15_conv2d3x3_avm_byteenable(i_llvm_fpga_mem_lm15_conv2d3x34_out_lm15_conv2d3x3_avm_byteenable),
        .out_lm15_conv2d3x3_avm_enable(i_llvm_fpga_mem_lm15_conv2d3x34_out_lm15_conv2d3x3_avm_enable),
        .out_lm15_conv2d3x3_avm_read(i_llvm_fpga_mem_lm15_conv2d3x34_out_lm15_conv2d3x3_avm_read),
        .out_lm15_conv2d3x3_avm_write(i_llvm_fpga_mem_lm15_conv2d3x34_out_lm15_conv2d3x3_avm_write),
        .out_lm15_conv2d3x3_avm_writedata(i_llvm_fpga_mem_lm15_conv2d3x34_out_lm15_conv2d3x3_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm15_conv2d3x34_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm15_conv2d3x34_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm15_conv2d3x34_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm13_conv2d3x33(BLACKBOX,7)@7
    // in in_i_stall@20000000
    // out out_lm13_conv2d3x3_avm_address@20000000
    // out out_lm13_conv2d3x3_avm_burstcount@20000000
    // out out_lm13_conv2d3x3_avm_byteenable@20000000
    // out out_lm13_conv2d3x3_avm_enable@20000000
    // out out_lm13_conv2d3x3_avm_read@20000000
    // out out_lm13_conv2d3x3_avm_write@20000000
    // out out_lm13_conv2d3x3_avm_writedata@20000000
    // out out_o_readdata@248
    // out out_o_stall@20000000
    // out out_o_valid@248
    conv2d3x3_i_llvm_fpga_mem_lm13_0 thei_llvm_fpga_mem_lm13_conv2d3x33 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_e),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_j),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_V0),
        .in_lm13_conv2d3x3_avm_readdata(in_lm13_conv2d3x3_avm_readdata),
        .in_lm13_conv2d3x3_avm_readdatavalid(in_lm13_conv2d3x3_avm_readdatavalid),
        .in_lm13_conv2d3x3_avm_waitrequest(in_lm13_conv2d3x3_avm_waitrequest),
        .in_lm13_conv2d3x3_avm_writeack(in_lm13_conv2d3x3_avm_writeack),
        .out_lm13_conv2d3x3_avm_address(i_llvm_fpga_mem_lm13_conv2d3x33_out_lm13_conv2d3x3_avm_address),
        .out_lm13_conv2d3x3_avm_burstcount(i_llvm_fpga_mem_lm13_conv2d3x33_out_lm13_conv2d3x3_avm_burstcount),
        .out_lm13_conv2d3x3_avm_byteenable(i_llvm_fpga_mem_lm13_conv2d3x33_out_lm13_conv2d3x3_avm_byteenable),
        .out_lm13_conv2d3x3_avm_enable(i_llvm_fpga_mem_lm13_conv2d3x33_out_lm13_conv2d3x3_avm_enable),
        .out_lm13_conv2d3x3_avm_read(i_llvm_fpga_mem_lm13_conv2d3x33_out_lm13_conv2d3x3_avm_read),
        .out_lm13_conv2d3x3_avm_write(i_llvm_fpga_mem_lm13_conv2d3x33_out_lm13_conv2d3x3_avm_write),
        .out_lm13_conv2d3x3_avm_writedata(i_llvm_fpga_mem_lm13_conv2d3x33_out_lm13_conv2d3x3_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm13_conv2d3x33_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm13_conv2d3x33_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm13_conv2d3x33_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x(STALLENABLE,129)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_lm13_conv2d3x33_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_consumed1 = (~ (i_llvm_fpga_mem_lm15_conv2d3x34_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_consumed2 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_consumed3 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_or2);
    assign SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_wireValid = i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x(BLACKBOX,34)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv2d3x38_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv2d3x38_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@7
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit915_0_tpl@7
    // out out_c0_exit915_1_tpl@7
    // out out_c0_exit915_2_tpl@7
    // out out_c0_exit915_3_tpl@7
    // out out_c0_exit915_4_tpl@7
    // out out_c0_exit915_5_tpl@7
    // out out_c0_exit915_6_tpl@7
    // out out_c0_exit915_7_tpl@7
    // out out_c0_exit915_8_tpl@7
    // out out_c0_exit915_9_tpl@7
    // out out_c0_exit915_10_tpl@7
    // out out_c0_exit915_11_tpl@7
    // out out_c0_exit915_12_tpl@7
    // out out_c0_exit915_13_tpl@7
    // out out_c0_exit915_14_tpl@7
    // out out_c0_exit915_15_tpl@7
    // out out_c0_exit915_16_tpl@7
    // out out_c0_exit915_17_tpl@7
    // out out_c0_exit915_18_tpl@7
    // out out_c0_exit915_19_tpl@7
    // out out_c0_exit915_20_tpl@7
    // out out_c0_exit915_21_tpl@7
    // out out_c0_exit915_22_tpl@7
    // out out_c0_exit915_23_tpl@7
    // out out_c0_exit915_24_tpl@7
    // out out_c0_exit915_25_tpl@7
    // out out_c0_exit915_26_tpl@7
    // out out_c0_exit915_27_tpl@7
    // out out_c0_exit915_28_tpl@7
    // out out_c0_exit915_29_tpl@7
    // out out_c0_exit915_30_tpl@7
    // out out_c0_exit915_31_tpl@7
    // out out_c0_exit915_32_tpl@7
    // out out_c0_exit915_33_tpl@7
    // out out_c0_exit915_34_tpl@7
    // out out_c0_exit915_35_tpl@7
    // out out_c0_exit915_36_tpl@7
    // out out_c0_exit915_37_tpl@7
    // out out_c0_exit915_38_tpl@7
    // out out_c0_exit915_39_tpl@7
    // out out_c0_exit915_40_tpl@7
    // out out_c0_exit915_41_tpl@7
    // out out_c0_exit915_42_tpl@7
    // out out_c0_exit915_43_tpl@7
    // out out_c0_exit915_44_tpl@7
    // out out_c0_exit915_45_tpl@7
    // out out_c0_exit915_46_tpl@7
    // out out_c0_exit915_47_tpl@7
    // out out_c0_exit915_48_tpl@7
    // out out_c0_exit915_49_tpl@7
    // out out_c0_exit915_50_tpl@7
    // out out_c0_exit915_51_tpl@7
    // out out_c0_exit915_52_tpl@7
    conv2d3x3_i_sfc_s_c0_in_for_body22_1_s_c0_enter816158_conv2d3x31 thei_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_backStall),
        .in_i_valid(SE_out_conv2d3x3_B11_merge_reg_aunroll_x_V0),
        .in_input_im(in_input_im),
        .in_input_size(in_input_size),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni47_0_tpl(GND_q),
        .in_c0_eni47_1_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_b),
        .in_c0_eni47_2_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_w),
        .in_c0_eni47_3_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_aa),
        .in_c0_eni47_4_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_v),
        .in_c0_eni47_5_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_mm),
        .in_c0_eni47_6_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_nn),
        .in_c0_eni47_7_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_dd),
        .in_c0_eni47_8_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_ee),
        .in_c0_eni47_9_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_gg),
        .in_c0_eni47_10_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_hh),
        .in_c0_eni47_11_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_ii),
        .in_c0_eni47_12_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_jj),
        .in_c0_eni47_13_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_kk),
        .in_c0_eni47_14_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_bb),
        .in_c0_eni47_15_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_cc),
        .in_c0_eni47_16_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_ll),
        .in_c0_eni47_17_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_oo),
        .in_c0_eni47_18_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_pp),
        .in_c0_eni47_19_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_qq),
        .in_c0_eni47_20_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_rr),
        .in_c0_eni47_21_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_x),
        .in_c0_eni47_22_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_z),
        .in_c0_eni47_23_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_ss),
        .in_c0_eni47_24_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_y),
        .in_c0_eni47_25_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_tt),
        .in_c0_eni47_26_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_uu),
        .in_c0_eni47_27_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_vv),
        .in_c0_eni47_28_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_c),
        .in_c0_eni47_29_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_d),
        .in_c0_eni47_30_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_e),
        .in_c0_eni47_31_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_f),
        .in_c0_eni47_32_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_g),
        .in_c0_eni47_33_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_h),
        .in_c0_eni47_34_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_i),
        .in_c0_eni47_35_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_j),
        .in_c0_eni47_36_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_k),
        .in_c0_eni47_37_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_l),
        .in_c0_eni47_38_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_m),
        .in_c0_eni47_39_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_n),
        .in_c0_eni47_40_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_o),
        .in_c0_eni47_41_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_p),
        .in_c0_eni47_42_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_q),
        .in_c0_eni47_43_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_r),
        .in_c0_eni47_44_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_s),
        .in_c0_eni47_45_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_t),
        .in_c0_eni47_46_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_u),
        .in_c0_eni47_47_tpl(bubble_select_conv2d3x3_B11_merge_reg_aunroll_x_ff),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv2d3x38_exiting_stall_out(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv2d3x38_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv2d3x38_exiting_valid_out(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv2d3x38_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit915_0_tpl(),
        .out_c0_exit915_1_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_1_tpl),
        .out_c0_exit915_2_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_2_tpl),
        .out_c0_exit915_3_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_3_tpl),
        .out_c0_exit915_4_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_4_tpl),
        .out_c0_exit915_5_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_5_tpl),
        .out_c0_exit915_6_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_6_tpl),
        .out_c0_exit915_7_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_7_tpl),
        .out_c0_exit915_8_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_8_tpl),
        .out_c0_exit915_9_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_9_tpl),
        .out_c0_exit915_10_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_10_tpl),
        .out_c0_exit915_11_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_11_tpl),
        .out_c0_exit915_12_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_12_tpl),
        .out_c0_exit915_13_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_13_tpl),
        .out_c0_exit915_14_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_14_tpl),
        .out_c0_exit915_15_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_15_tpl),
        .out_c0_exit915_16_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_16_tpl),
        .out_c0_exit915_17_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_17_tpl),
        .out_c0_exit915_18_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_18_tpl),
        .out_c0_exit915_19_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_19_tpl),
        .out_c0_exit915_20_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_20_tpl),
        .out_c0_exit915_21_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_21_tpl),
        .out_c0_exit915_22_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_22_tpl),
        .out_c0_exit915_23_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_23_tpl),
        .out_c0_exit915_24_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_24_tpl),
        .out_c0_exit915_25_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_25_tpl),
        .out_c0_exit915_26_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_26_tpl),
        .out_c0_exit915_27_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_27_tpl),
        .out_c0_exit915_28_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_28_tpl),
        .out_c0_exit915_29_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_29_tpl),
        .out_c0_exit915_30_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_30_tpl),
        .out_c0_exit915_31_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_31_tpl),
        .out_c0_exit915_32_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_32_tpl),
        .out_c0_exit915_33_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_33_tpl),
        .out_c0_exit915_34_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_34_tpl),
        .out_c0_exit915_35_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_35_tpl),
        .out_c0_exit915_36_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_36_tpl),
        .out_c0_exit915_37_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_37_tpl),
        .out_c0_exit915_38_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_38_tpl),
        .out_c0_exit915_39_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_39_tpl),
        .out_c0_exit915_40_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_40_tpl),
        .out_c0_exit915_41_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_41_tpl),
        .out_c0_exit915_42_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_42_tpl),
        .out_c0_exit915_43_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_43_tpl),
        .out_c0_exit915_44_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_44_tpl),
        .out_c0_exit915_45_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_45_tpl),
        .out_c0_exit915_46_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_46_tpl),
        .out_c0_exit915_47_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_47_tpl),
        .out_c0_exit915_48_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_48_tpl),
        .out_c0_exit915_49_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_49_tpl),
        .out_c0_exit915_50_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_50_tpl),
        .out_c0_exit915_51_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_51_tpl),
        .out_c0_exit915_52_tpl(i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_c0_exit915_52_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv2d3x38_exiting_valid_out = i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv2d3x38_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv2d3x38_exiting_stall_out = i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv2d3x38_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,20)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body22_1_conv2d3x3s_c0_enter816158_conv2d3x31_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,27)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,31)
    assign out_lm13_conv2d3x3_avm_address = i_llvm_fpga_mem_lm13_conv2d3x33_out_lm13_conv2d3x3_avm_address;
    assign out_lm13_conv2d3x3_avm_enable = i_llvm_fpga_mem_lm13_conv2d3x33_out_lm13_conv2d3x3_avm_enable;
    assign out_lm13_conv2d3x3_avm_read = i_llvm_fpga_mem_lm13_conv2d3x33_out_lm13_conv2d3x3_avm_read;
    assign out_lm13_conv2d3x3_avm_write = i_llvm_fpga_mem_lm13_conv2d3x33_out_lm13_conv2d3x3_avm_write;
    assign out_lm13_conv2d3x3_avm_writedata = i_llvm_fpga_mem_lm13_conv2d3x33_out_lm13_conv2d3x3_avm_writedata;
    assign out_lm13_conv2d3x3_avm_byteenable = i_llvm_fpga_mem_lm13_conv2d3x33_out_lm13_conv2d3x3_avm_byteenable;
    assign out_lm13_conv2d3x3_avm_burstcount = i_llvm_fpga_mem_lm13_conv2d3x33_out_lm13_conv2d3x3_avm_burstcount;

    // bubble_join_i_sfc_s_c1_in_for_body22_1_conv2d3x3s_c1_enter974_conv2d3x36_aunroll_x(BITJOIN,111)
    assign bubble_join_i_sfc_s_c1_in_for_body22_1_conv2d3x3s_c1_enter974_conv2d3x36_aunroll_x_q = i_sfc_s_c1_in_for_body22_1_conv2d3x3s_c1_enter974_conv2d3x36_aunroll_x_out_c1_exit982_1_tpl;

    // bubble_select_i_sfc_s_c1_in_for_body22_1_conv2d3x3s_c1_enter974_conv2d3x36_aunroll_x(BITSELECT,112)
    assign bubble_select_i_sfc_s_c1_in_for_body22_1_conv2d3x3s_c1_enter974_conv2d3x36_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_body22_1_conv2d3x3s_c1_enter974_conv2d3x36_aunroll_x_q[31:0]);

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,118)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,119)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[980:0]);

    // sel_for_coalesced_delay_1(BITSELECT,90)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[127:64]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[191:128]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[255:192]);
    assign sel_for_coalesced_delay_1_f = $unsigned(bubble_select_coalesced_delay_1_fifo_b[319:256]);
    assign sel_for_coalesced_delay_1_g = $unsigned(bubble_select_coalesced_delay_1_fifo_b[383:320]);
    assign sel_for_coalesced_delay_1_h = $unsigned(bubble_select_coalesced_delay_1_fifo_b[415:384]);
    assign sel_for_coalesced_delay_1_i = $unsigned(bubble_select_coalesced_delay_1_fifo_b[447:416]);
    assign sel_for_coalesced_delay_1_j = $unsigned(bubble_select_coalesced_delay_1_fifo_b[479:448]);
    assign sel_for_coalesced_delay_1_k = $unsigned(bubble_select_coalesced_delay_1_fifo_b[511:480]);
    assign sel_for_coalesced_delay_1_l = $unsigned(bubble_select_coalesced_delay_1_fifo_b[543:512]);
    assign sel_for_coalesced_delay_1_m = $unsigned(bubble_select_coalesced_delay_1_fifo_b[575:544]);
    assign sel_for_coalesced_delay_1_n = $unsigned(bubble_select_coalesced_delay_1_fifo_b[607:576]);
    assign sel_for_coalesced_delay_1_o = $unsigned(bubble_select_coalesced_delay_1_fifo_b[639:608]);
    assign sel_for_coalesced_delay_1_p = $unsigned(bubble_select_coalesced_delay_1_fifo_b[671:640]);
    assign sel_for_coalesced_delay_1_q = $unsigned(bubble_select_coalesced_delay_1_fifo_b[703:672]);
    assign sel_for_coalesced_delay_1_r = $unsigned(bubble_select_coalesced_delay_1_fifo_b[735:704]);
    assign sel_for_coalesced_delay_1_s = $unsigned(bubble_select_coalesced_delay_1_fifo_b[767:736]);
    assign sel_for_coalesced_delay_1_t = $unsigned(bubble_select_coalesced_delay_1_fifo_b[799:768]);
    assign sel_for_coalesced_delay_1_u = $unsigned(bubble_select_coalesced_delay_1_fifo_b[831:800]);
    assign sel_for_coalesced_delay_1_v = $unsigned(bubble_select_coalesced_delay_1_fifo_b[863:832]);
    assign sel_for_coalesced_delay_1_w = $unsigned(bubble_select_coalesced_delay_1_fifo_b[895:864]);
    assign sel_for_coalesced_delay_1_x = $unsigned(bubble_select_coalesced_delay_1_fifo_b[927:896]);
    assign sel_for_coalesced_delay_1_y = $unsigned(bubble_select_coalesced_delay_1_fifo_b[959:928]);
    assign sel_for_coalesced_delay_1_z = $unsigned(bubble_select_coalesced_delay_1_fifo_b[960:960]);
    assign sel_for_coalesced_delay_1_aa = $unsigned(bubble_select_coalesced_delay_1_fifo_b[961:961]);
    assign sel_for_coalesced_delay_1_bb = $unsigned(bubble_select_coalesced_delay_1_fifo_b[962:962]);
    assign sel_for_coalesced_delay_1_cc = $unsigned(bubble_select_coalesced_delay_1_fifo_b[963:963]);
    assign sel_for_coalesced_delay_1_dd = $unsigned(bubble_select_coalesced_delay_1_fifo_b[964:964]);
    assign sel_for_coalesced_delay_1_ee = $unsigned(bubble_select_coalesced_delay_1_fifo_b[965:965]);
    assign sel_for_coalesced_delay_1_ff = $unsigned(bubble_select_coalesced_delay_1_fifo_b[966:966]);
    assign sel_for_coalesced_delay_1_gg = $unsigned(bubble_select_coalesced_delay_1_fifo_b[967:967]);
    assign sel_for_coalesced_delay_1_hh = $unsigned(bubble_select_coalesced_delay_1_fifo_b[968:968]);
    assign sel_for_coalesced_delay_1_ii = $unsigned(bubble_select_coalesced_delay_1_fifo_b[969:969]);
    assign sel_for_coalesced_delay_1_jj = $unsigned(bubble_select_coalesced_delay_1_fifo_b[970:970]);
    assign sel_for_coalesced_delay_1_kk = $unsigned(bubble_select_coalesced_delay_1_fifo_b[971:971]);
    assign sel_for_coalesced_delay_1_ll = $unsigned(bubble_select_coalesced_delay_1_fifo_b[972:972]);
    assign sel_for_coalesced_delay_1_mm = $unsigned(bubble_select_coalesced_delay_1_fifo_b[973:973]);
    assign sel_for_coalesced_delay_1_nn = $unsigned(bubble_select_coalesced_delay_1_fifo_b[974:974]);
    assign sel_for_coalesced_delay_1_oo = $unsigned(bubble_select_coalesced_delay_1_fifo_b[975:975]);
    assign sel_for_coalesced_delay_1_pp = $unsigned(bubble_select_coalesced_delay_1_fifo_b[976:976]);
    assign sel_for_coalesced_delay_1_qq = $unsigned(bubble_select_coalesced_delay_1_fifo_b[977:977]);
    assign sel_for_coalesced_delay_1_rr = $unsigned(bubble_select_coalesced_delay_1_fifo_b[978:978]);
    assign sel_for_coalesced_delay_1_ss = $unsigned(bubble_select_coalesced_delay_1_fifo_b[979:979]);
    assign sel_for_coalesced_delay_1_tt = $unsigned(bubble_select_coalesced_delay_1_fifo_b[980:980]);

    // dupName_0_sync_out_x(GPOUT,32)@256
    assign out_c0_exe10925 = sel_for_coalesced_delay_1_d;
    assign out_c0_exe12927 = sel_for_coalesced_delay_1_jj;
    assign out_c0_exe13928 = sel_for_coalesced_delay_1_e;
    assign out_c0_exe14929 = sel_for_coalesced_delay_1_y;
    assign out_c0_exe15930 = sel_for_coalesced_delay_1_mm;
    assign out_c0_exe16931 = sel_for_coalesced_delay_1_x;
    assign out_c0_exe17932 = sel_for_coalesced_delay_1_w;
    assign out_c0_exe18933 = sel_for_coalesced_delay_1_oo;
    assign out_c0_exe19934 = sel_for_coalesced_delay_1_qq;
    assign out_c0_exe20935 = sel_for_coalesced_delay_1_v;
    assign out_c0_exe21936 = sel_for_coalesced_delay_1_u;
    assign out_c0_exe22937 = sel_for_coalesced_delay_1_ss;
    assign out_c0_exe23938 = sel_for_coalesced_delay_1_tt;
    assign out_c0_exe24939 = sel_for_coalesced_delay_1_aa;
    assign out_c0_exe25940 = sel_for_coalesced_delay_1_i;
    assign out_c0_exe26941 = sel_for_coalesced_delay_1_j;
    assign out_c0_exe27942 = sel_for_coalesced_delay_1_rr;
    assign out_c0_exe28943 = sel_for_coalesced_delay_1_k;
    assign out_c0_exe2917 = sel_for_coalesced_delay_1_t;
    assign out_c0_exe29944 = sel_for_coalesced_delay_1_l;
    assign out_c0_exe30945 = sel_for_coalesced_delay_1_m;
    assign out_c0_exe31946 = sel_for_coalesced_delay_1_pp;
    assign out_c0_exe33948 = sel_for_coalesced_delay_1_f;
    assign out_c0_exe34949 = sel_for_coalesced_delay_1_g;
    assign out_c0_exe35950 = sel_for_coalesced_delay_1_n;
    assign out_c0_exe36951 = sel_for_coalesced_delay_1_nn;
    assign out_c0_exe37952 = sel_for_coalesced_delay_1_h;
    assign out_c0_exe38953 = sel_for_coalesced_delay_1_p;
    assign out_c0_exe3918 = sel_for_coalesced_delay_1_o;
    assign out_c0_exe39954 = sel_for_coalesced_delay_1_ll;
    assign out_c0_exe40955 = sel_for_coalesced_delay_1_kk;
    assign out_c0_exe41956 = sel_for_coalesced_delay_1_q;
    assign out_c0_exe42957 = sel_for_coalesced_delay_1_ii;
    assign out_c0_exe43958 = sel_for_coalesced_delay_1_hh;
    assign out_c0_exe44959 = sel_for_coalesced_delay_1_r;
    assign out_c0_exe45960 = sel_for_coalesced_delay_1_ff;
    assign out_c0_exe46961 = sel_for_coalesced_delay_1_ee;
    assign out_c0_exe47962 = sel_for_coalesced_delay_1_dd;
    assign out_c0_exe48963 = sel_for_coalesced_delay_1_c;
    assign out_c0_exe49964 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe50965 = sel_for_coalesced_delay_1_s;
    assign out_c0_exe51966 = sel_for_coalesced_delay_1_z;
    assign out_c0_exe5920 = sel_for_coalesced_delay_1_bb;
    assign out_c0_exe6921 = sel_for_coalesced_delay_1_cc;
    assign out_c0_exe8923 = sel_for_coalesced_delay_1_gg;
    assign out_c1_exe1983 = bubble_select_i_sfc_s_c1_in_for_body22_1_conv2d3x3s_c1_enter974_conv2d3x36_aunroll_x_b;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,33)
    assign out_lm15_conv2d3x3_avm_address = i_llvm_fpga_mem_lm15_conv2d3x34_out_lm15_conv2d3x3_avm_address;
    assign out_lm15_conv2d3x3_avm_enable = i_llvm_fpga_mem_lm15_conv2d3x34_out_lm15_conv2d3x3_avm_enable;
    assign out_lm15_conv2d3x3_avm_read = i_llvm_fpga_mem_lm15_conv2d3x34_out_lm15_conv2d3x3_avm_read;
    assign out_lm15_conv2d3x3_avm_write = i_llvm_fpga_mem_lm15_conv2d3x34_out_lm15_conv2d3x3_avm_write;
    assign out_lm15_conv2d3x3_avm_writedata = i_llvm_fpga_mem_lm15_conv2d3x34_out_lm15_conv2d3x3_avm_writedata;
    assign out_lm15_conv2d3x3_avm_byteenable = i_llvm_fpga_mem_lm15_conv2d3x34_out_lm15_conv2d3x3_avm_byteenable;
    assign out_lm15_conv2d3x3_avm_burstcount = i_llvm_fpga_mem_lm15_conv2d3x34_out_lm15_conv2d3x3_avm_burstcount;

endmodule
