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

// SystemVerilog created from conv2d1x1_bb_B8_stall_region
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B8_stall_region (
    input wire [511:0] in_lm177_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm177_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm177_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm177_conv2d1x1_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x110_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x110_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_filter_weight,
    input wire [0:0] in_flush,
    input wire [63:0] in_input_im,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_forked17105_pop68312,
    input wire [0:0] in_forked17244,
    input wire [0:0] in_forked59311,
    input wire [0:0] in_forked59_and313,
    input wire [31:0] in_ij_067_pop51318,
    input wire [31:0] in_lm96111_pop73338,
    input wire [31:0] in_lm96253,
    input wire [31:0] in_mul107_pop69335,
    input wire [31:0] in_mul21113_pop74339,
    input wire [31:0] in_mul21256,
    input wire [31:0] in_mul247,
    input wire [31:0] in_mul97115_pop75340,
    input wire [31:0] in_mul97259,
    input wire [0:0] in_notcmp19317,
    input wire [0:0] in_notcmp24117_pop77341,
    input wire [0:0] in_notcmp24262,
    input wire [0:0] in_or316,
    input wire [0:0] in_phi_decision102_xor109_pop72314,
    input wire [0:0] in_phi_decision102_xor250,
    input wire [31:0] in_pop12268,
    input wire [31:0] in_pop53320,
    input wire [0:0] in_pop70336,
    input wire [0:0] in_pop71337,
    input wire [0:0] in_pop76315,
    input wire [31:0] in_spec_select155,
    input wire [31:0] in_spec_select323161,
    input wire [31:0] in_spec_select32363_pop13271,
    input wire [31:0] in_spec_select32364_pop54321,
    input wire [31:0] in_spec_select324167,
    input wire [31:0] in_spec_select32466_pop14274,
    input wire [31:0] in_spec_select32467_pop55322,
    input wire [31:0] in_spec_select325173,
    input wire [31:0] in_spec_select32569_pop15277,
    input wire [31:0] in_spec_select32570_pop56323,
    input wire [31:0] in_spec_select326179,
    input wire [31:0] in_spec_select32672_pop16280,
    input wire [31:0] in_spec_select32673_pop57324,
    input wire [31:0] in_spec_select327185,
    input wire [31:0] in_spec_select32775_pop17283,
    input wire [31:0] in_spec_select32776_pop58325,
    input wire [31:0] in_spec_select328191,
    input wire [31:0] in_spec_select32878_pop18286,
    input wire [31:0] in_spec_select32879_pop59326,
    input wire [31:0] in_spec_select329197,
    input wire [31:0] in_spec_select32981_pop19289,
    input wire [31:0] in_spec_select32982_pop60327,
    input wire [31:0] in_spec_select330203,
    input wire [31:0] in_spec_select33084_pop20292,
    input wire [31:0] in_spec_select33085_pop61328,
    input wire [31:0] in_spec_select331209,
    input wire [31:0] in_spec_select33187_pop21295,
    input wire [31:0] in_spec_select33188_pop62329,
    input wire [31:0] in_spec_select332215,
    input wire [31:0] in_spec_select33290_pop22298,
    input wire [31:0] in_spec_select33291_pop63330,
    input wire [31:0] in_spec_select333221,
    input wire [31:0] in_spec_select33393_pop23301,
    input wire [31:0] in_spec_select33394_pop64331,
    input wire [31:0] in_spec_select334227,
    input wire [31:0] in_spec_select33496_pop24302,
    input wire [31:0] in_spec_select33497_pop65332,
    input wire [31:0] in_spec_select335100_pop66333,
    input wire [31:0] in_spec_select335233,
    input wire [31:0] in_spec_select33599_pop25305,
    input wire [31:0] in_spec_select336102_pop26308,
    input wire [31:0] in_spec_select336103_pop67334,
    input wire [31:0] in_spec_select336239,
    input wire [31:0] in_spec_select60_pop11265,
    input wire [31:0] in_spec_select61_pop52319,
    input wire [31:0] in_unnamed_conv2d1x114,
    input wire [0:0] in_unnamed_conv2d1x115,
    input wire [0:0] in_unnamed_conv2d1x116,
    input wire [32:0] in_unnamed_conv2d1x117,
    input wire [0:0] in_unnamed_conv2d1x118,
    input wire [0:0] in_unnamed_conv2d1x119,
    input wire [0:0] in_valid_in,
    input wire [511:0] in_lm178_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm178_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm178_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm178_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm177_conv2d1x1_avm_address,
    output wire [0:0] out_lm177_conv2d1x1_avm_enable,
    output wire [0:0] out_lm177_conv2d1x1_avm_read,
    output wire [0:0] out_lm177_conv2d1x1_avm_write,
    output wire [511:0] out_lm177_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm177_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm177_conv2d1x1_avm_burstcount,
    output wire [30:0] out_lm178_conv2d1x1_avm_address,
    output wire [0:0] out_lm178_conv2d1x1_avm_enable,
    output wire [0:0] out_lm178_conv2d1x1_avm_read,
    output wire [0:0] out_lm178_conv2d1x1_avm_write,
    output wire [511:0] out_lm178_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm178_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm178_conv2d1x1_avm_burstcount,
    output wire [31:0] out_c0_exe12734,
    output wire [31:0] out_c0_exe13735,
    output wire [0:0] out_c0_exe15737,
    output wire [0:0] out_c0_exe16738,
    output wire [31:0] out_c0_exe17739,
    output wire [31:0] out_c0_exe18740,
    output wire [0:0] out_c0_exe19741,
    output wire [31:0] out_c0_exe20742,
    output wire [31:0] out_c0_exe21743,
    output wire [31:0] out_c0_exe22744,
    output wire [0:0] out_c0_exe23745,
    output wire [0:0] out_c0_exe24746,
    output wire [0:0] out_c0_exe25747,
    output wire [0:0] out_c0_exe7729,
    output wire [0:0] out_c0_exe8730,
    output wire [31:0] out_c0_exe9731,
    output wire [31:0] out_c1_exe10,
    output wire [31:0] out_c1_exe11,
    output wire [31:0] out_c1_exe12,
    output wire [31:0] out_c1_exe13,
    output wire [31:0] out_c1_exe14,
    output wire [31:0] out_c1_exe1847,
    output wire [31:0] out_c1_exe2,
    output wire [31:0] out_c1_exe3,
    output wire [31:0] out_c1_exe4,
    output wire [31:0] out_c1_exe5,
    output wire [31:0] out_c1_exe6,
    output wire [31:0] out_c1_exe7,
    output wire [31:0] out_c1_exe8,
    output wire [31:0] out_c1_exe9,
    output wire [31:0] out_lm177_0_tpl,
    output wire [31:0] out_lm177_1_tpl,
    output wire [31:0] out_lm177_2_tpl,
    output wire [31:0] out_lm177_3_tpl,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [30:0] i_llvm_fpga_mem_lm178_conv2d1x14_out_lm178_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm178_conv2d1x14_out_lm178_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm178_conv2d1x14_out_lm178_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm178_conv2d1x14_out_lm178_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm178_conv2d1x14_out_lm178_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm178_conv2d1x14_out_lm178_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm178_conv2d1x14_out_lm178_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm178_conv2d1x14_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm178_conv2d1x14_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm178_conv2d1x14_out_o_valid;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_17_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_18_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_19_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_20_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_21_tpl;
    wire [32:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_22_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_23_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_24_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_25_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_26_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_27_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_28_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_29_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_30_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_31_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_32_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_33_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_34_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_35_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_36_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_37_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_38_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_39_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_40_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_41_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_42_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_43_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_44_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_45_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_46_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_47_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_48_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_49_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_50_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_51_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_52_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_53_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_54_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_55_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_56_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_57_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_58_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_59_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_60_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_61_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_62_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_63_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_64_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_65_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_66_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_67_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_68_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_69_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_70_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_71_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_72_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_73_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_74_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_75_tpl;
    wire [30:0] i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_lm177_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_lm177_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_lm177_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_lm177_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_lm177_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_lm177_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_lm177_conv2d1x1_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_o_readdata_0_tpl;
    wire [31:0] i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_o_readdata_1_tpl;
    wire [31:0] i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_o_readdata_2_tpl;
    wire [31:0] i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_o_readdata_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x110_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x110_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_9_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_11_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_12_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_13_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_14_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_15_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_16_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_17_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_18_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_19_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_20_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_21_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_22_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_23_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_24_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_25_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_26_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_70_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_71_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_72_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_73_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_74_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_75_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_76_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_77_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_78_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_79_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_80_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_81_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_82_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_1_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_2_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_3_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_4_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_5_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_6_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_7_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_8_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_9_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_10_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_11_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_12_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_13_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_14_tpl;
    wire [127:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [423:0] join_for_coalesced_delay_1_q;
    wire [31:0] sel_for_coalesced_delay_1_b;
    wire [31:0] sel_for_coalesced_delay_1_c;
    wire [31:0] sel_for_coalesced_delay_1_d;
    wire [31:0] sel_for_coalesced_delay_1_e;
    wire [31:0] sel_for_coalesced_delay_1_f;
    wire [31:0] sel_for_coalesced_delay_1_g;
    wire [31:0] sel_for_coalesced_delay_1_h;
    wire [31:0] sel_for_coalesced_delay_1_i;
    wire [31:0] sel_for_coalesced_delay_1_j;
    wire [31:0] sel_for_coalesced_delay_1_k;
    wire [31:0] sel_for_coalesced_delay_1_l;
    wire [31:0] sel_for_coalesced_delay_1_m;
    wire [31:0] sel_for_coalesced_delay_1_n;
    wire [0:0] sel_for_coalesced_delay_1_o;
    wire [0:0] sel_for_coalesced_delay_1_p;
    wire [0:0] sel_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_r;
    wire [0:0] sel_for_coalesced_delay_1_s;
    wire [0:0] sel_for_coalesced_delay_1_t;
    wire [0:0] sel_for_coalesced_delay_1_u;
    wire [0:0] sel_for_coalesced_delay_1_v;
    wire [262:0] join_for_coalesced_delay_2_q;
    wire [31:0] sel_for_coalesced_delay_2_b;
    wire [31:0] sel_for_coalesced_delay_2_c;
    wire [31:0] sel_for_coalesced_delay_2_d;
    wire [31:0] sel_for_coalesced_delay_2_e;
    wire [31:0] sel_for_coalesced_delay_2_f;
    wire [31:0] sel_for_coalesced_delay_2_g;
    wire [31:0] sel_for_coalesced_delay_2_h;
    wire [31:0] sel_for_coalesced_delay_2_i;
    wire [0:0] sel_for_coalesced_delay_2_j;
    wire [0:0] sel_for_coalesced_delay_2_k;
    wire [0:0] sel_for_coalesced_delay_2_l;
    wire [0:0] sel_for_coalesced_delay_2_m;
    wire [0:0] sel_for_coalesced_delay_2_n;
    wire [0:0] sel_for_coalesced_delay_2_o;
    wire [0:0] sel_for_coalesced_delay_2_p;
    reg [0:0] redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_q;
    reg [0:0] redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_q;
    reg [0:0] redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_q;
    reg [0:0] redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_q;
    reg [0:0] redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_q;
    reg [0:0] redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_q;
    reg [127:0] coalesced_delay_0_0_q;
    reg [127:0] coalesced_delay_0_1_q;
    reg [127:0] coalesced_delay_0_2_q;
    reg [127:0] coalesced_delay_0_3_q;
    reg [127:0] coalesced_delay_0_4_q;
    reg [127:0] coalesced_delay_0_5_q;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [423:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [423:0] coalesced_delay_1_fifo_data_out;
    wire [0:0] coalesced_delay_2_fifo_valid_in;
    wire coalesced_delay_2_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_in;
    wire coalesced_delay_2_fifo_stall_in_bitsignaltemp;
    wire [262:0] coalesced_delay_2_fifo_data_in;
    wire [0:0] coalesced_delay_2_fifo_valid_out;
    wire coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_out;
    wire coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    wire [262:0] coalesced_delay_2_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm178_conv2d1x14_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm178_conv2d1x14_b;
    wire [1874:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [31:0] bubble_select_stall_entry_m;
    wire [31:0] bubble_select_stall_entry_n;
    wire [31:0] bubble_select_stall_entry_o;
    wire [0:0] bubble_select_stall_entry_p;
    wire [0:0] bubble_select_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_r;
    wire [0:0] bubble_select_stall_entry_s;
    wire [0:0] bubble_select_stall_entry_t;
    wire [0:0] bubble_select_stall_entry_u;
    wire [31:0] bubble_select_stall_entry_v;
    wire [31:0] bubble_select_stall_entry_w;
    wire [0:0] bubble_select_stall_entry_x;
    wire [0:0] bubble_select_stall_entry_y;
    wire [0:0] bubble_select_stall_entry_z;
    wire [31:0] bubble_select_stall_entry_aa;
    wire [31:0] bubble_select_stall_entry_bb;
    wire [31:0] bubble_select_stall_entry_cc;
    wire [31:0] bubble_select_stall_entry_dd;
    wire [31:0] bubble_select_stall_entry_ee;
    wire [31:0] bubble_select_stall_entry_ff;
    wire [31:0] bubble_select_stall_entry_gg;
    wire [31:0] bubble_select_stall_entry_hh;
    wire [31:0] bubble_select_stall_entry_ii;
    wire [31:0] bubble_select_stall_entry_jj;
    wire [31:0] bubble_select_stall_entry_kk;
    wire [31:0] bubble_select_stall_entry_ll;
    wire [31:0] bubble_select_stall_entry_mm;
    wire [31:0] bubble_select_stall_entry_nn;
    wire [31:0] bubble_select_stall_entry_oo;
    wire [31:0] bubble_select_stall_entry_pp;
    wire [31:0] bubble_select_stall_entry_qq;
    wire [31:0] bubble_select_stall_entry_rr;
    wire [31:0] bubble_select_stall_entry_ss;
    wire [31:0] bubble_select_stall_entry_tt;
    wire [31:0] bubble_select_stall_entry_uu;
    wire [31:0] bubble_select_stall_entry_vv;
    wire [31:0] bubble_select_stall_entry_ww;
    wire [31:0] bubble_select_stall_entry_xx;
    wire [31:0] bubble_select_stall_entry_yy;
    wire [31:0] bubble_select_stall_entry_zz;
    wire [31:0] bubble_select_stall_entry_1;
    wire [31:0] bubble_select_stall_entry_2;
    wire [31:0] bubble_select_stall_entry_3;
    wire [31:0] bubble_select_stall_entry_4;
    wire [31:0] bubble_select_stall_entry_5;
    wire [31:0] bubble_select_stall_entry_6;
    wire [31:0] bubble_select_stall_entry_7;
    wire [31:0] bubble_select_stall_entry_8;
    wire [31:0] bubble_select_stall_entry_9;
    wire [31:0] bubble_select_stall_entry_0;
    wire [31:0] bubble_select_stall_entry_o61;
    wire [31:0] bubble_select_stall_entry_o62;
    wire [31:0] bubble_select_stall_entry_o63;
    wire [31:0] bubble_select_stall_entry_o64;
    wire [31:0] bubble_select_stall_entry_o65;
    wire [31:0] bubble_select_stall_entry_o66;
    wire [31:0] bubble_select_stall_entry_o67;
    wire [31:0] bubble_select_stall_entry_o68;
    wire [31:0] bubble_select_stall_entry_o69;
    wire [31:0] bubble_select_stall_entry_o70;
    wire [0:0] bubble_select_stall_entry_o71;
    wire [0:0] bubble_select_stall_entry_o72;
    wire [32:0] bubble_select_stall_entry_o73;
    wire [0:0] bubble_select_stall_entry_o74;
    wire [0:0] bubble_select_stall_entry_o75;
    wire [1874:0] bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_g;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_i;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_j;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_k;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_l;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_m;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_n;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_p;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_r;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_s;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_t;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_u;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_v;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_w;
    wire [32:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_x;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_y;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_z;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_aa;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_bb;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_cc;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_dd;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ee;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ff;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_gg;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_hh;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ii;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_jj;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_kk;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ll;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_mm;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_nn;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_oo;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_pp;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_qq;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_rr;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ss;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_tt;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_uu;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_vv;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ww;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_xx;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_yy;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_zz;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_1;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_2;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_3;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_4;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_5;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_6;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_7;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_8;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_9;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_0;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o61;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o62;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o63;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o64;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o65;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o66;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o67;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o68;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o69;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o70;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o71;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o72;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o73;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o74;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o75;
    wire [127:0] bubble_join_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_b;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_c;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_d;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_e;
    wire [815:0] bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_j;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_l;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_m;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_n;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_o;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_p;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_r;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_s;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_t;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_u;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_v;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_w;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_x;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_y;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_z;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_aa;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_bb;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_cc;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_dd;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_ee;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_ff;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_gg;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_hh;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_ii;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_jj;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_kk;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_ll;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_mm;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_nn;
    wire [447:0] bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_j;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_k;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_l;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_m;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_n;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_o;
    wire [423:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [423:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [262:0] bubble_join_coalesced_delay_2_fifo_q;
    wire [262:0] bubble_select_coalesced_delay_2_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm178_conv2d1x14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm178_conv2d1x14_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm178_conv2d1x14_and1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm178_conv2d1x14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm178_conv2d1x14_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_conv2d1x1_B8_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv2d1x1_B8_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv2d1x1_B8_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_V3;
    reg [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_R_v_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_v_s_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_s_tv_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_backEN;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_backStall;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_V0;
    reg [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_R_v_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_v_s_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_s_tv_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_backEN;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_backStall;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_V0;
    reg [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_R_v_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_v_s_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_s_tv_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_backEN;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_backStall;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_V0;
    reg [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_R_v_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_v_s_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_s_tv_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_backEN;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_backStall;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_V0;
    reg [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_R_v_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_v_s_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_s_tv_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_backEN;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_backStall;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_V0;
    reg [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_R_v_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_v_s_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_s_tv_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_backEN;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_backStall;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    reg [0:0] SE_coalesced_delay_0_1_R_v_0;
    wire [0:0] SE_coalesced_delay_0_1_v_s_0;
    wire [0:0] SE_coalesced_delay_0_1_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_1_backEN;
    wire [0:0] SE_coalesced_delay_0_1_backStall;
    wire [0:0] SE_coalesced_delay_0_1_V0;
    reg [0:0] SE_coalesced_delay_0_2_R_v_0;
    wire [0:0] SE_coalesced_delay_0_2_v_s_0;
    wire [0:0] SE_coalesced_delay_0_2_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_2_backEN;
    wire [0:0] SE_coalesced_delay_0_2_backStall;
    wire [0:0] SE_coalesced_delay_0_2_V0;
    reg [0:0] SE_coalesced_delay_0_3_R_v_0;
    wire [0:0] SE_coalesced_delay_0_3_v_s_0;
    wire [0:0] SE_coalesced_delay_0_3_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_3_backEN;
    wire [0:0] SE_coalesced_delay_0_3_backStall;
    wire [0:0] SE_coalesced_delay_0_3_V0;
    reg [0:0] SE_coalesced_delay_0_4_R_v_0;
    wire [0:0] SE_coalesced_delay_0_4_v_s_0;
    wire [0:0] SE_coalesced_delay_0_4_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_4_backEN;
    wire [0:0] SE_coalesced_delay_0_4_backStall;
    wire [0:0] SE_coalesced_delay_0_4_V0;
    reg [0:0] SE_coalesced_delay_0_5_R_v_0;
    wire [0:0] SE_coalesced_delay_0_5_v_s_0;
    wire [0:0] SE_coalesced_delay_0_5_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_5_backEN;
    wire [0:0] SE_coalesced_delay_0_5_backStall;
    wire [0:0] SE_coalesced_delay_0_5_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_2_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_2_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_2_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_2_fifo_and2;
    wire [0:0] SE_out_coalesced_delay_2_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_2_fifo_V0;
    wire [0:0] SR_SE_coalesced_delay_0_5_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_5_r_valid;
    reg [127:0] SR_SE_coalesced_delay_0_5_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_5_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_5_V;
    wire [127:0] SR_SE_coalesced_delay_0_5_D0;
    wire [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_i_valid;
    reg [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_r_valid;
    reg [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_r_data0;
    wire [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_backStall;
    wire [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_V;
    wire [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_D0;


    // bubble_join_stall_entry(BITJOIN,105)
    assign bubble_join_stall_entry_q = {in_unnamed_conv2d1x119, in_unnamed_conv2d1x118, in_unnamed_conv2d1x117, in_unnamed_conv2d1x116, in_unnamed_conv2d1x115, in_unnamed_conv2d1x114, in_spec_select61_pop52319, in_spec_select60_pop11265, in_spec_select336239, in_spec_select336103_pop67334, in_spec_select336102_pop26308, in_spec_select33599_pop25305, in_spec_select335233, in_spec_select335100_pop66333, in_spec_select33497_pop65332, in_spec_select33496_pop24302, in_spec_select334227, in_spec_select33394_pop64331, in_spec_select33393_pop23301, in_spec_select333221, in_spec_select33291_pop63330, in_spec_select33290_pop22298, in_spec_select332215, in_spec_select33188_pop62329, in_spec_select33187_pop21295, in_spec_select331209, in_spec_select33085_pop61328, in_spec_select33084_pop20292, in_spec_select330203, in_spec_select32982_pop60327, in_spec_select32981_pop19289, in_spec_select329197, in_spec_select32879_pop59326, in_spec_select32878_pop18286, in_spec_select328191, in_spec_select32776_pop58325, in_spec_select32775_pop17283, in_spec_select327185, in_spec_select32673_pop57324, in_spec_select32672_pop16280, in_spec_select326179, in_spec_select32570_pop56323, in_spec_select32569_pop15277, in_spec_select325173, in_spec_select32467_pop55322, in_spec_select32466_pop14274, in_spec_select324167, in_spec_select32364_pop54321, in_spec_select32363_pop13271, in_spec_select323161, in_spec_select155, in_pop76315, in_pop71337, in_pop70336, in_pop53320, in_pop12268, in_phi_decision102_xor250, in_phi_decision102_xor109_pop72314, in_or316, in_notcmp24262, in_notcmp24117_pop77341, in_notcmp19317, in_mul97259, in_mul97115_pop75340, in_mul247, in_mul21256, in_mul21113_pop74339, in_mul107_pop69335, in_lm96253, in_lm96111_pop73338, in_ij_067_pop51318, in_forked59_and313, in_forked59311, in_forked17244, in_forked17105_pop68312, in_forked};

    // bubble_select_stall_entry(BITSELECT,106)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[3:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[4:4]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[36:5]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[68:37]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[100:69]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[132:101]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[164:133]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[196:165]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[228:197]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[260:229]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[292:261]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[293:293]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[294:294]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[295:295]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[296:296]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[297:297]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[298:298]);
    assign bubble_select_stall_entry_v = $unsigned(bubble_join_stall_entry_q[330:299]);
    assign bubble_select_stall_entry_w = $unsigned(bubble_join_stall_entry_q[362:331]);
    assign bubble_select_stall_entry_x = $unsigned(bubble_join_stall_entry_q[363:363]);
    assign bubble_select_stall_entry_y = $unsigned(bubble_join_stall_entry_q[364:364]);
    assign bubble_select_stall_entry_z = $unsigned(bubble_join_stall_entry_q[365:365]);
    assign bubble_select_stall_entry_aa = $unsigned(bubble_join_stall_entry_q[397:366]);
    assign bubble_select_stall_entry_bb = $unsigned(bubble_join_stall_entry_q[429:398]);
    assign bubble_select_stall_entry_cc = $unsigned(bubble_join_stall_entry_q[461:430]);
    assign bubble_select_stall_entry_dd = $unsigned(bubble_join_stall_entry_q[493:462]);
    assign bubble_select_stall_entry_ee = $unsigned(bubble_join_stall_entry_q[525:494]);
    assign bubble_select_stall_entry_ff = $unsigned(bubble_join_stall_entry_q[557:526]);
    assign bubble_select_stall_entry_gg = $unsigned(bubble_join_stall_entry_q[589:558]);
    assign bubble_select_stall_entry_hh = $unsigned(bubble_join_stall_entry_q[621:590]);
    assign bubble_select_stall_entry_ii = $unsigned(bubble_join_stall_entry_q[653:622]);
    assign bubble_select_stall_entry_jj = $unsigned(bubble_join_stall_entry_q[685:654]);
    assign bubble_select_stall_entry_kk = $unsigned(bubble_join_stall_entry_q[717:686]);
    assign bubble_select_stall_entry_ll = $unsigned(bubble_join_stall_entry_q[749:718]);
    assign bubble_select_stall_entry_mm = $unsigned(bubble_join_stall_entry_q[781:750]);
    assign bubble_select_stall_entry_nn = $unsigned(bubble_join_stall_entry_q[813:782]);
    assign bubble_select_stall_entry_oo = $unsigned(bubble_join_stall_entry_q[845:814]);
    assign bubble_select_stall_entry_pp = $unsigned(bubble_join_stall_entry_q[877:846]);
    assign bubble_select_stall_entry_qq = $unsigned(bubble_join_stall_entry_q[909:878]);
    assign bubble_select_stall_entry_rr = $unsigned(bubble_join_stall_entry_q[941:910]);
    assign bubble_select_stall_entry_ss = $unsigned(bubble_join_stall_entry_q[973:942]);
    assign bubble_select_stall_entry_tt = $unsigned(bubble_join_stall_entry_q[1005:974]);
    assign bubble_select_stall_entry_uu = $unsigned(bubble_join_stall_entry_q[1037:1006]);
    assign bubble_select_stall_entry_vv = $unsigned(bubble_join_stall_entry_q[1069:1038]);
    assign bubble_select_stall_entry_ww = $unsigned(bubble_join_stall_entry_q[1101:1070]);
    assign bubble_select_stall_entry_xx = $unsigned(bubble_join_stall_entry_q[1133:1102]);
    assign bubble_select_stall_entry_yy = $unsigned(bubble_join_stall_entry_q[1165:1134]);
    assign bubble_select_stall_entry_zz = $unsigned(bubble_join_stall_entry_q[1197:1166]);
    assign bubble_select_stall_entry_1 = $unsigned(bubble_join_stall_entry_q[1229:1198]);
    assign bubble_select_stall_entry_2 = $unsigned(bubble_join_stall_entry_q[1261:1230]);
    assign bubble_select_stall_entry_3 = $unsigned(bubble_join_stall_entry_q[1293:1262]);
    assign bubble_select_stall_entry_4 = $unsigned(bubble_join_stall_entry_q[1325:1294]);
    assign bubble_select_stall_entry_5 = $unsigned(bubble_join_stall_entry_q[1357:1326]);
    assign bubble_select_stall_entry_6 = $unsigned(bubble_join_stall_entry_q[1389:1358]);
    assign bubble_select_stall_entry_7 = $unsigned(bubble_join_stall_entry_q[1421:1390]);
    assign bubble_select_stall_entry_8 = $unsigned(bubble_join_stall_entry_q[1453:1422]);
    assign bubble_select_stall_entry_9 = $unsigned(bubble_join_stall_entry_q[1485:1454]);
    assign bubble_select_stall_entry_0 = $unsigned(bubble_join_stall_entry_q[1517:1486]);
    assign bubble_select_stall_entry_o61 = $unsigned(bubble_join_stall_entry_q[1549:1518]);
    assign bubble_select_stall_entry_o62 = $unsigned(bubble_join_stall_entry_q[1581:1550]);
    assign bubble_select_stall_entry_o63 = $unsigned(bubble_join_stall_entry_q[1613:1582]);
    assign bubble_select_stall_entry_o64 = $unsigned(bubble_join_stall_entry_q[1645:1614]);
    assign bubble_select_stall_entry_o65 = $unsigned(bubble_join_stall_entry_q[1677:1646]);
    assign bubble_select_stall_entry_o66 = $unsigned(bubble_join_stall_entry_q[1709:1678]);
    assign bubble_select_stall_entry_o67 = $unsigned(bubble_join_stall_entry_q[1741:1710]);
    assign bubble_select_stall_entry_o68 = $unsigned(bubble_join_stall_entry_q[1773:1742]);
    assign bubble_select_stall_entry_o69 = $unsigned(bubble_join_stall_entry_q[1805:1774]);
    assign bubble_select_stall_entry_o70 = $unsigned(bubble_join_stall_entry_q[1837:1806]);
    assign bubble_select_stall_entry_o71 = $unsigned(bubble_join_stall_entry_q[1838:1838]);
    assign bubble_select_stall_entry_o72 = $unsigned(bubble_join_stall_entry_q[1839:1839]);
    assign bubble_select_stall_entry_o73 = $unsigned(bubble_join_stall_entry_q[1872:1840]);
    assign bubble_select_stall_entry_o74 = $unsigned(bubble_join_stall_entry_q[1873:1873]);
    assign bubble_select_stall_entry_o75 = $unsigned(bubble_join_stall_entry_q[1874:1874]);

    // SE_stall_entry(STALLENABLE,130)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv2d1x1_B8_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // conv2d1x1_B8_merge_reg_aunroll_x(BLACKBOX,29)@0
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
    // out out_data_out_47_tpl@1
    // out out_data_out_48_tpl@1
    // out out_data_out_49_tpl@1
    // out out_data_out_50_tpl@1
    // out out_data_out_51_tpl@1
    // out out_data_out_52_tpl@1
    // out out_data_out_53_tpl@1
    // out out_data_out_54_tpl@1
    // out out_data_out_55_tpl@1
    // out out_data_out_56_tpl@1
    // out out_data_out_57_tpl@1
    // out out_data_out_58_tpl@1
    // out out_data_out_59_tpl@1
    // out out_data_out_60_tpl@1
    // out out_data_out_61_tpl@1
    // out out_data_out_62_tpl@1
    // out out_data_out_63_tpl@1
    // out out_data_out_64_tpl@1
    // out out_data_out_65_tpl@1
    // out out_data_out_66_tpl@1
    // out out_data_out_67_tpl@1
    // out out_data_out_68_tpl@1
    // out out_data_out_69_tpl@1
    // out out_data_out_70_tpl@1
    // out out_data_out_71_tpl@1
    // out out_data_out_72_tpl@1
    // out out_data_out_73_tpl@1
    // out out_data_out_74_tpl@1
    // out out_data_out_75_tpl@1
    conv2d1x1_B8_merge_reg theconv2d1x1_B8_merge_reg_aunroll_x (
        .in_stall_in(SE_out_conv2d1x1_B8_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_aa),
        .in_data_in_2_tpl(bubble_select_stall_entry_o70),
        .in_data_in_3_tpl(bubble_select_stall_entry_bb),
        .in_data_in_4_tpl(bubble_select_stall_entry_ee),
        .in_data_in_5_tpl(bubble_select_stall_entry_hh),
        .in_data_in_6_tpl(bubble_select_stall_entry_kk),
        .in_data_in_7_tpl(bubble_select_stall_entry_nn),
        .in_data_in_8_tpl(bubble_select_stall_entry_qq),
        .in_data_in_9_tpl(bubble_select_stall_entry_tt),
        .in_data_in_10_tpl(bubble_select_stall_entry_ww),
        .in_data_in_11_tpl(bubble_select_stall_entry_zz),
        .in_data_in_12_tpl(bubble_select_stall_entry_3),
        .in_data_in_13_tpl(bubble_select_stall_entry_6),
        .in_data_in_14_tpl(bubble_select_stall_entry_9),
        .in_data_in_15_tpl(bubble_select_stall_entry_o63),
        .in_data_in_16_tpl(bubble_select_stall_entry_o67),
        .in_data_in_17_tpl(bubble_select_stall_entry_d),
        .in_data_in_18_tpl(bubble_select_stall_entry_m),
        .in_data_in_19_tpl(bubble_select_stall_entry_o71),
        .in_data_in_20_tpl(bubble_select_stall_entry_o72),
        .in_data_in_21_tpl(bubble_select_stall_entry_u),
        .in_data_in_22_tpl(bubble_select_stall_entry_o73),
        .in_data_in_23_tpl(bubble_select_stall_entry_i),
        .in_data_in_24_tpl(bubble_select_stall_entry_l),
        .in_data_in_25_tpl(bubble_select_stall_entry_o),
        .in_data_in_26_tpl(bubble_select_stall_entry_o74),
        .in_data_in_27_tpl(bubble_select_stall_entry_r),
        .in_data_in_28_tpl(bubble_select_stall_entry_o68),
        .in_data_in_29_tpl(bubble_select_stall_entry_v),
        .in_data_in_30_tpl(bubble_select_stall_entry_cc),
        .in_data_in_31_tpl(bubble_select_stall_entry_ff),
        .in_data_in_32_tpl(bubble_select_stall_entry_ii),
        .in_data_in_33_tpl(bubble_select_stall_entry_ll),
        .in_data_in_34_tpl(bubble_select_stall_entry_oo),
        .in_data_in_35_tpl(bubble_select_stall_entry_rr),
        .in_data_in_36_tpl(bubble_select_stall_entry_uu),
        .in_data_in_37_tpl(bubble_select_stall_entry_xx),
        .in_data_in_38_tpl(bubble_select_stall_entry_1),
        .in_data_in_39_tpl(bubble_select_stall_entry_4),
        .in_data_in_40_tpl(bubble_select_stall_entry_7),
        .in_data_in_41_tpl(bubble_select_stall_entry_0),
        .in_data_in_42_tpl(bubble_select_stall_entry_o64),
        .in_data_in_43_tpl(bubble_select_stall_entry_o65),
        .in_data_in_44_tpl(bubble_select_stall_entry_e),
        .in_data_in_45_tpl(bubble_select_stall_entry_c),
        .in_data_in_46_tpl(bubble_select_stall_entry_f),
        .in_data_in_47_tpl(bubble_select_stall_entry_t),
        .in_data_in_48_tpl(bubble_select_stall_entry_o75),
        .in_data_in_49_tpl(bubble_select_stall_entry_z),
        .in_data_in_50_tpl(bubble_select_stall_entry_s),
        .in_data_in_51_tpl(bubble_select_stall_entry_p),
        .in_data_in_52_tpl(bubble_select_stall_entry_g),
        .in_data_in_53_tpl(bubble_select_stall_entry_o69),
        .in_data_in_54_tpl(bubble_select_stall_entry_w),
        .in_data_in_55_tpl(bubble_select_stall_entry_dd),
        .in_data_in_56_tpl(bubble_select_stall_entry_gg),
        .in_data_in_57_tpl(bubble_select_stall_entry_jj),
        .in_data_in_58_tpl(bubble_select_stall_entry_mm),
        .in_data_in_59_tpl(bubble_select_stall_entry_pp),
        .in_data_in_60_tpl(bubble_select_stall_entry_ss),
        .in_data_in_61_tpl(bubble_select_stall_entry_vv),
        .in_data_in_62_tpl(bubble_select_stall_entry_yy),
        .in_data_in_63_tpl(bubble_select_stall_entry_2),
        .in_data_in_64_tpl(bubble_select_stall_entry_5),
        .in_data_in_65_tpl(bubble_select_stall_entry_8),
        .in_data_in_66_tpl(bubble_select_stall_entry_o61),
        .in_data_in_67_tpl(bubble_select_stall_entry_o62),
        .in_data_in_68_tpl(bubble_select_stall_entry_o66),
        .in_data_in_69_tpl(bubble_select_stall_entry_j),
        .in_data_in_70_tpl(bubble_select_stall_entry_x),
        .in_data_in_71_tpl(bubble_select_stall_entry_y),
        .in_data_in_72_tpl(bubble_select_stall_entry_h),
        .in_data_in_73_tpl(bubble_select_stall_entry_k),
        .in_data_in_74_tpl(bubble_select_stall_entry_n),
        .in_data_in_75_tpl(bubble_select_stall_entry_q),
        .out_stall_out(conv2d1x1_B8_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv2d1x1_B8_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_21_tpl),
        .out_data_out_22_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_22_tpl),
        .out_data_out_23_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_23_tpl),
        .out_data_out_24_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_24_tpl),
        .out_data_out_25_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_25_tpl),
        .out_data_out_26_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_26_tpl),
        .out_data_out_27_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_27_tpl),
        .out_data_out_28_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_28_tpl),
        .out_data_out_29_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_29_tpl),
        .out_data_out_30_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_30_tpl),
        .out_data_out_31_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_31_tpl),
        .out_data_out_32_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_32_tpl),
        .out_data_out_33_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_33_tpl),
        .out_data_out_34_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_34_tpl),
        .out_data_out_35_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_35_tpl),
        .out_data_out_36_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_36_tpl),
        .out_data_out_37_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_37_tpl),
        .out_data_out_38_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_38_tpl),
        .out_data_out_39_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_39_tpl),
        .out_data_out_40_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_40_tpl),
        .out_data_out_41_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_41_tpl),
        .out_data_out_42_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_42_tpl),
        .out_data_out_43_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_43_tpl),
        .out_data_out_44_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_44_tpl),
        .out_data_out_45_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_45_tpl),
        .out_data_out_46_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_46_tpl),
        .out_data_out_47_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_47_tpl),
        .out_data_out_48_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_48_tpl),
        .out_data_out_49_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_49_tpl),
        .out_data_out_50_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_50_tpl),
        .out_data_out_51_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_51_tpl),
        .out_data_out_52_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_52_tpl),
        .out_data_out_53_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_53_tpl),
        .out_data_out_54_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_54_tpl),
        .out_data_out_55_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_55_tpl),
        .out_data_out_56_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_56_tpl),
        .out_data_out_57_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_57_tpl),
        .out_data_out_58_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_58_tpl),
        .out_data_out_59_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_59_tpl),
        .out_data_out_60_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_60_tpl),
        .out_data_out_61_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_61_tpl),
        .out_data_out_62_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_62_tpl),
        .out_data_out_63_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_63_tpl),
        .out_data_out_64_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_64_tpl),
        .out_data_out_65_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_65_tpl),
        .out_data_out_66_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_66_tpl),
        .out_data_out_67_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_67_tpl),
        .out_data_out_68_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_68_tpl),
        .out_data_out_69_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_69_tpl),
        .out_data_out_70_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_70_tpl),
        .out_data_out_71_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_71_tpl),
        .out_data_out_72_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_72_tpl),
        .out_data_out_73_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_73_tpl),
        .out_data_out_74_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_74_tpl),
        .out_data_out_75_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_75_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_conv2d1x1_B8_merge_reg_aunroll_x(BITJOIN,109)
    assign bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q = {conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_75_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_74_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_73_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_72_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_71_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_70_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_69_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_68_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_67_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_66_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_65_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_64_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_63_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_62_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_61_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_60_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_59_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_58_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_57_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_56_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_55_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_54_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_53_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_52_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_51_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_50_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_49_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_48_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_47_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_46_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_45_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_44_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_43_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_42_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_41_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_40_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_39_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_38_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_37_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_36_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_35_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_34_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_33_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_32_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_31_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_30_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_29_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_28_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_27_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_26_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_25_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_24_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_23_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_22_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_21_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_20_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_19_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_18_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_17_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_16_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_15_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_14_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_13_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_12_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_11_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_10_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_9_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_8_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_7_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_6_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_5_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_4_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_3_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_2_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_1_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv2d1x1_B8_merge_reg_aunroll_x(BITSELECT,110)
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[64:33]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[96:65]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_f = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[128:97]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_g = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[160:129]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_h = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[192:161]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_i = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[224:193]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_j = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[256:225]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_k = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[288:257]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_l = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[320:289]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_m = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[352:321]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_n = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[384:353]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[416:385]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_p = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[448:417]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_q = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[480:449]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_r = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[512:481]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_s = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[513:513]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_t = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[545:514]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_u = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[546:546]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_v = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[547:547]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_w = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[548:548]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_x = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[581:549]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_y = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[613:582]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_z = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[645:614]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_aa = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[677:646]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_bb = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[678:678]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_cc = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[679:679]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_dd = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[711:680]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ee = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[743:712]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ff = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[775:744]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_gg = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[807:776]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_hh = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[839:808]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ii = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[871:840]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_jj = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[903:872]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_kk = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[935:904]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ll = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[967:936]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_mm = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[999:968]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_nn = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1031:1000]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_oo = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1063:1032]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_pp = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1095:1064]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_qq = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1127:1096]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_rr = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1159:1128]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ss = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1191:1160]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_tt = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1192:1192]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_uu = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1193:1193]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_vv = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1194:1194]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ww = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1195:1195]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_xx = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1196:1196]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_yy = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1197:1197]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_zz = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1198:1198]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_1 = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1199:1199]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_2 = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1231:1200]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_3 = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1263:1232]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_4 = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1295:1264]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_5 = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1327:1296]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_6 = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1359:1328]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_7 = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1391:1360]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_8 = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1423:1392]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_9 = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1455:1424]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_0 = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1487:1456]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o61 = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1519:1488]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o62 = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1551:1520]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o63 = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1583:1552]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o64 = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1615:1584]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o65 = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1647:1616]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o66 = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1679:1648]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o67 = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1711:1680]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o68 = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1743:1712]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o69 = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1775:1744]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o70 = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1776:1776]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o71 = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1777:1777]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o72 = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1809:1778]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o73 = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1841:1810]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o74 = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1873:1842]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o75 = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1874:1874]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_conv2d1x1_B8_merge_reg_aunroll_x(STALLENABLE,133)
    // Valid signal propagation
    assign SE_out_conv2d1x1_B8_merge_reg_aunroll_x_V0 = SE_out_conv2d1x1_B8_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_conv2d1x1_B8_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_o_stall | ~ (SE_out_conv2d1x1_B8_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_conv2d1x1_B8_merge_reg_aunroll_x_wireValid = conv2d1x1_B8_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x(BITJOIN,116)
    assign bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q = {i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_82_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_81_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_80_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_79_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_78_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_77_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_76_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_75_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_74_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_73_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_72_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_71_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_70_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_26_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_25_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_24_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_23_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_22_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_21_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_20_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_19_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_18_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_17_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_16_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_15_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_14_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_13_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_12_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_11_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_10_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_9_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_8_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_6_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_5_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_4_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_3_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_2_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x(BITSELECT,117)
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[2:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[3:3]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[4:4]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[5:5]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[6:6]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[7:7]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[39:8]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[103:40]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[104:104]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[136:105]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[168:137]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[232:169]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[233:233]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[234:234]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[266:235]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[298:267]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_t = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[299:299]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_u = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[331:300]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_v = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[363:332]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_w = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[395:364]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_x = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[396:396]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_y = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[397:397]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_z = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[398:398]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_aa = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[399:399]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_bb = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[431:400]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_cc = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[463:432]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_dd = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[495:464]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_ee = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[527:496]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_ff = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[559:528]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_gg = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[591:560]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_hh = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[623:592]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_ii = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[655:624]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_jj = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[687:656]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_kk = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[719:688]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_ll = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[751:720]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_mm = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[783:752]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_nn = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q[815:784]);

    // join_for_coalesced_delay_2(BITJOIN,85)
    assign join_for_coalesced_delay_2_q = {bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_z, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_y, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_x, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_t, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_q, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_p, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_w, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_v, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_u, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_s, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_r, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_n, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_m, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_j};

    // bubble_join_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x(BITJOIN,113)
    assign bubble_join_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_q = {i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_o_readdata_3_tpl, i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_o_readdata_2_tpl, i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_o_readdata_1_tpl, i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_o_readdata_0_tpl};

    // bubble_select_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x(BITSELECT,114)
    assign bubble_select_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_q[31:0]);
    assign bubble_select_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_c = $unsigned(bubble_join_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_q[63:32]);
    assign bubble_select_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_d = $unsigned(bubble_join_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_q[95:64]);
    assign bubble_select_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_e = $unsigned(bubble_join_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_q[127:96]);

    // join_for_coalesced_delay_0(BITJOIN,79)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_e, bubble_select_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_d, bubble_select_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_c, bubble_select_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_b};

    // coalesced_delay_0_0(REG,93)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,94)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(coalesced_delay_0_0_q);
        end
    end

    // coalesced_delay_0_2(REG,95)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_2_q <= $unsigned(128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(coalesced_delay_0_1_q);
        end
    end

    // coalesced_delay_0_3(REG,96)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_3_q <= $unsigned(128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_3_backEN == 1'b1)
        begin
            coalesced_delay_0_3_q <= $unsigned(coalesced_delay_0_2_q);
        end
    end

    // coalesced_delay_0_4(REG,97)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_4_q <= $unsigned(128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_4_backEN == 1'b1)
        begin
            coalesced_delay_0_4_q <= $unsigned(coalesced_delay_0_3_q);
        end
    end

    // SR_SE_coalesced_delay_0_5(STALLREG,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_5_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_5_r_data0 <= 128'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_5_r_valid <= SE_coalesced_delay_0_5_backStall & (SR_SE_coalesced_delay_0_5_r_valid | SR_SE_coalesced_delay_0_5_i_valid);

            if (SR_SE_coalesced_delay_0_5_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_5_r_data0 <= $unsigned(coalesced_delay_0_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_5_i_valid = SE_coalesced_delay_0_4_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_5_backStall = SR_SE_coalesced_delay_0_5_r_valid | ~ (SR_SE_coalesced_delay_0_5_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_5_V = SR_SE_coalesced_delay_0_5_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_5_r_valid : SR_SE_coalesced_delay_0_5_i_valid;

    assign SR_SE_coalesced_delay_0_5_D0 = SR_SE_coalesced_delay_0_5_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_5_r_data0 : coalesced_delay_0_4_q;

    // SE_coalesced_delay_0_4(STALLENABLE,156)
    // Valid signal propagation
    assign SE_coalesced_delay_0_4_V0 = SE_coalesced_delay_0_4_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_4_s_tv_0 = SR_SE_coalesced_delay_0_5_backStall & SE_coalesced_delay_0_4_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_4_backEN = ~ (SE_coalesced_delay_0_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_4_v_s_0 = SE_coalesced_delay_0_4_backEN & SE_coalesced_delay_0_3_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_4_backStall = ~ (SE_coalesced_delay_0_4_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_4_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_4_R_v_0 <= SE_coalesced_delay_0_4_R_v_0 & SE_coalesced_delay_0_4_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_4_R_v_0 <= SE_coalesced_delay_0_4_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_3(STALLENABLE,155)
    // Valid signal propagation
    assign SE_coalesced_delay_0_3_V0 = SE_coalesced_delay_0_3_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_3_s_tv_0 = SE_coalesced_delay_0_4_backStall & SE_coalesced_delay_0_3_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_3_backEN = ~ (SE_coalesced_delay_0_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_3_v_s_0 = SE_coalesced_delay_0_3_backEN & SE_coalesced_delay_0_2_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_3_backStall = ~ (SE_coalesced_delay_0_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_3_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_3_R_v_0 <= SE_coalesced_delay_0_3_R_v_0 & SE_coalesced_delay_0_3_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_3_R_v_0 <= SE_coalesced_delay_0_3_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_2(STALLENABLE,154)
    // Valid signal propagation
    assign SE_coalesced_delay_0_2_V0 = SE_coalesced_delay_0_2_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_2_s_tv_0 = SE_coalesced_delay_0_3_backStall & SE_coalesced_delay_0_2_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_2_backEN = ~ (SE_coalesced_delay_0_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_2_v_s_0 = SE_coalesced_delay_0_2_backEN & SE_coalesced_delay_0_1_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_2_backStall = ~ (SE_coalesced_delay_0_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_2_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_R_v_0 & SE_coalesced_delay_0_2_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_1(STALLENABLE,153)
    // Valid signal propagation
    assign SE_coalesced_delay_0_1_V0 = SE_coalesced_delay_0_1_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_1_s_tv_0 = SE_coalesced_delay_0_2_backStall & SE_coalesced_delay_0_1_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_1_backEN = ~ (SE_coalesced_delay_0_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_1_v_s_0 = SE_coalesced_delay_0_1_backEN & SE_coalesced_delay_0_0_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_1_backStall = ~ (SE_coalesced_delay_0_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_1_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_R_v_0 & SE_coalesced_delay_0_1_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_0(STALLENABLE,152)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_coalesced_delay_0_1_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_V1;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x(STALLENABLE,135)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_fromReg0 <= SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_fromReg1 <= SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_consumed0 = (~ (SE_out_i_llvm_fpga_mem_lm178_conv2d1x14_backStall) & SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_wireValid) | SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_consumed1 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_wireValid) | SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_StallValid = SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_backStall & SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_toReg0 = SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_StallValid & SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_toReg1 = SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_StallValid & SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_or0 = SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_consumed1 & SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_or0);
    assign SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_backStall = SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_V0 = SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_V1 = SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_wireValid = i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_o_valid;

    // SE_out_i_llvm_fpga_mem_lm178_conv2d1x14(STALLENABLE,129)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm178_conv2d1x14_V0 = SE_out_i_llvm_fpga_mem_lm178_conv2d1x14_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm178_conv2d1x14_backStall = i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_lm178_conv2d1x14_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm178_conv2d1x14_and0 = i_llvm_fpga_mem_lm178_conv2d1x14_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_lm178_conv2d1x14_and1 = SE_out_coalesced_delay_1_fifo_V0 & SE_out_i_llvm_fpga_mem_lm178_conv2d1x14_and0;
    assign SE_out_i_llvm_fpga_mem_lm178_conv2d1x14_wireValid = SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_V0 & SE_out_i_llvm_fpga_mem_lm178_conv2d1x14_and1;

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,159)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_1_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_1_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_1_fifo_fromReg0 <= SE_out_coalesced_delay_1_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_1_fifo_fromReg1 <= SE_out_coalesced_delay_1_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_1_fifo_consumed0 = (~ (SE_out_i_llvm_fpga_mem_lm178_conv2d1x14_backStall) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg0;
    assign SE_out_coalesced_delay_1_fifo_consumed1 = (~ (SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_backStall) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg1;
    // Consuming
    assign SE_out_coalesced_delay_1_fifo_StallValid = SE_out_coalesced_delay_1_fifo_backStall & SE_out_coalesced_delay_1_fifo_wireValid;
    assign SE_out_coalesced_delay_1_fifo_toReg0 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed0;
    assign SE_out_coalesced_delay_1_fifo_toReg1 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_or0 = SE_out_coalesced_delay_1_fifo_consumed0;
    assign SE_out_coalesced_delay_1_fifo_wireStall = ~ (SE_out_coalesced_delay_1_fifo_consumed1 & SE_out_coalesced_delay_1_fifo_or0);
    assign SE_out_coalesced_delay_1_fifo_backStall = SE_out_coalesced_delay_1_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg0);
    assign SE_out_coalesced_delay_1_fifo_V1 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_wireValid = coalesced_delay_1_fifo_valid_out;

    // SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0(STALLENABLE,146)
    // Valid signal propagation
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_V0 = SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_R_v_0;
    // Stall signal propagation
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_s_tv_0 = SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_backStall & SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_R_v_0;
    // Backward Enable generation
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_backEN = ~ (SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_v_s_0 = SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_backEN & SE_out_coalesced_delay_1_fifo_V1;
    // Backward Stall generation
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_backStall = ~ (SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_backEN == 1'b0)
            begin
                SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_R_v_0 <= SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_R_v_0 & SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_s_tv_0;
            end
            else
            begin
                SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_R_v_0 <= SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_v_s_0;
            end

        end
    end

    // SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1(STALLENABLE,147)
    // Valid signal propagation
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_V0 = SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_R_v_0;
    // Stall signal propagation
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_s_tv_0 = SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_backStall & SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_R_v_0;
    // Backward Enable generation
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_backEN = ~ (SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_v_s_0 = SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_backEN & SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_V0;
    // Backward Stall generation
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_backStall = ~ (SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_backEN == 1'b0)
            begin
                SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_R_v_0 <= SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_R_v_0 & SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_s_tv_0;
            end
            else
            begin
                SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_R_v_0 <= SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_v_s_0;
            end

        end
    end

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,123)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,124)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[423:0]);

    // sel_for_coalesced_delay_1(BITSELECT,83)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[31:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:32]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[95:64]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[127:96]);
    assign sel_for_coalesced_delay_1_f = $unsigned(bubble_select_coalesced_delay_1_fifo_b[159:128]);
    assign sel_for_coalesced_delay_1_g = $unsigned(bubble_select_coalesced_delay_1_fifo_b[191:160]);
    assign sel_for_coalesced_delay_1_h = $unsigned(bubble_select_coalesced_delay_1_fifo_b[223:192]);
    assign sel_for_coalesced_delay_1_i = $unsigned(bubble_select_coalesced_delay_1_fifo_b[255:224]);
    assign sel_for_coalesced_delay_1_j = $unsigned(bubble_select_coalesced_delay_1_fifo_b[287:256]);
    assign sel_for_coalesced_delay_1_k = $unsigned(bubble_select_coalesced_delay_1_fifo_b[319:288]);
    assign sel_for_coalesced_delay_1_l = $unsigned(bubble_select_coalesced_delay_1_fifo_b[351:320]);
    assign sel_for_coalesced_delay_1_m = $unsigned(bubble_select_coalesced_delay_1_fifo_b[383:352]);
    assign sel_for_coalesced_delay_1_n = $unsigned(bubble_select_coalesced_delay_1_fifo_b[415:384]);
    assign sel_for_coalesced_delay_1_o = $unsigned(bubble_select_coalesced_delay_1_fifo_b[416:416]);
    assign sel_for_coalesced_delay_1_p = $unsigned(bubble_select_coalesced_delay_1_fifo_b[417:417]);
    assign sel_for_coalesced_delay_1_q = $unsigned(bubble_select_coalesced_delay_1_fifo_b[418:418]);
    assign sel_for_coalesced_delay_1_r = $unsigned(bubble_select_coalesced_delay_1_fifo_b[419:419]);
    assign sel_for_coalesced_delay_1_s = $unsigned(bubble_select_coalesced_delay_1_fifo_b[420:420]);
    assign sel_for_coalesced_delay_1_t = $unsigned(bubble_select_coalesced_delay_1_fifo_b[421:421]);
    assign sel_for_coalesced_delay_1_u = $unsigned(bubble_select_coalesced_delay_1_fifo_b[422:422]);
    assign sel_for_coalesced_delay_1_v = $unsigned(bubble_select_coalesced_delay_1_fifo_b[423:423]);

    // redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0(REG,87)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_backEN == 1'b1)
        begin
            redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_q <= $unsigned(sel_for_coalesced_delay_1_q);
        end
    end

    // redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1(REG,88)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_backEN == 1'b1)
        begin
            redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_q <= $unsigned(redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_0_q);
        end
    end

    // redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2(REG,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_backEN == 1'b1)
        begin
            redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_q <= $unsigned(redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_q);
        end
    end

    // SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2(STALLENABLE,148)
    // Valid signal propagation
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_V0 = SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_R_v_0;
    // Stall signal propagation
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_s_tv_0 = SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_backStall & SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_R_v_0;
    // Backward Enable generation
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_backEN = ~ (SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_v_s_0 = SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_backEN & SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_1_V0;
    // Backward Stall generation
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_backStall = ~ (SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_backEN == 1'b0)
            begin
                SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_R_v_0 <= SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_R_v_0 & SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_s_tv_0;
            end
            else
            begin
                SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_R_v_0 <= SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_v_s_0;
            end

        end
    end

    // SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3(STALLREG,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_r_valid <= 1'b0;
            SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_r_valid <= SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_backStall & (SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_r_valid | SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_i_valid);

            if (SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_r_data0 <= $unsigned(redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_i_valid = SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_V0;
    // Stall signal propagation
    assign SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_backStall = SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_r_valid | ~ (SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_i_valid);

    // Valid
    assign SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_V = SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_r_valid == 1'b1 ? SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_r_valid : SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_i_valid;

    assign SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_D0 = SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_r_valid == 1'b1 ? SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_r_data0 : redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_2_q;

    // SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3(STALLENABLE,149)
    // Valid signal propagation
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_V0 = SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_R_v_0;
    // Stall signal propagation
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_s_tv_0 = SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_backStall & SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_R_v_0;
    // Backward Enable generation
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_backEN = ~ (SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_v_s_0 = SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_backEN & SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_V;
    // Backward Stall generation
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_backStall = ~ (SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_backEN == 1'b0)
            begin
                SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_R_v_0 <= SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_R_v_0 & SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_s_tv_0;
            end
            else
            begin
                SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_R_v_0 <= SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_v_s_0;
            end

        end
    end

    // SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4(STALLENABLE,150)
    // Valid signal propagation
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_V0 = SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_R_v_0;
    // Stall signal propagation
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_s_tv_0 = SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_backStall & SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_R_v_0;
    // Backward Enable generation
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_backEN = ~ (SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_v_s_0 = SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_backEN & SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_V0;
    // Backward Stall generation
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_backStall = ~ (SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_backEN == 1'b0)
            begin
                SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_R_v_0 <= SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_R_v_0 & SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_s_tv_0;
            end
            else
            begin
                SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_R_v_0 <= SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_v_s_0;
            end

        end
    end

    // SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5(STALLENABLE,151)
    // Valid signal propagation
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_V0 = SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_R_v_0;
    // Stall signal propagation
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_s_tv_0 = SE_out_coalesced_delay_2_fifo_backStall & SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_R_v_0;
    // Backward Enable generation
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_backEN = ~ (SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_v_s_0 = SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_backEN & SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_V0;
    // Backward Stall generation
    assign SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_backStall = ~ (SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_backEN == 1'b0)
            begin
                SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_R_v_0 <= SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_R_v_0 & SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_s_tv_0;
            end
            else
            begin
                SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_R_v_0 <= SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_5(STALLENABLE,157)
    // Valid signal propagation
    assign SE_coalesced_delay_0_5_V0 = SE_coalesced_delay_0_5_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_5_s_tv_0 = SE_out_coalesced_delay_2_fifo_backStall & SE_coalesced_delay_0_5_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_5_backEN = ~ (SE_coalesced_delay_0_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_5_v_s_0 = SE_coalesced_delay_0_5_backEN & SR_SE_coalesced_delay_0_5_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_5_backStall = ~ (SE_coalesced_delay_0_5_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_5_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_5_R_v_0 <= SE_coalesced_delay_0_5_R_v_0 & SE_coalesced_delay_0_5_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_5_R_v_0 <= SE_coalesced_delay_0_5_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_mem_lm178_conv2d1x14(BITJOIN,102)
    assign bubble_join_i_llvm_fpga_mem_lm178_conv2d1x14_q = i_llvm_fpga_mem_lm178_conv2d1x14_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm178_conv2d1x14(BITSELECT,103)
    assign bubble_select_i_llvm_fpga_mem_lm178_conv2d1x14_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm178_conv2d1x14_q[31:0]);

    // i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x(BLACKBOX,36)@138
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@144
    // out out_c1_exit846_0_tpl@144
    // out out_c1_exit846_1_tpl@144
    // out out_c1_exit846_2_tpl@144
    // out out_c1_exit846_3_tpl@144
    // out out_c1_exit846_4_tpl@144
    // out out_c1_exit846_5_tpl@144
    // out out_c1_exit846_6_tpl@144
    // out out_c1_exit846_7_tpl@144
    // out out_c1_exit846_8_tpl@144
    // out out_c1_exit846_9_tpl@144
    // out out_c1_exit846_10_tpl@144
    // out out_c1_exit846_11_tpl@144
    // out out_c1_exit846_12_tpl@144
    // out out_c1_exit846_13_tpl@144
    // out out_c1_exit846_14_tpl@144
    conv2d1x1_i_sfc_s_c1_in_for_body14_s_c1_enter821_conv2d1x16 thei_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x (
        .in_c0_exe26748(sel_for_coalesced_delay_1_p),
        .in_c0_exe4726(sel_for_coalesced_delay_1_t),
        .in_i_stall(SE_out_coalesced_delay_2_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_lm178_conv2d1x14_V0),
        .in_c1_eni23820_0_tpl(GND_q),
        .in_c1_eni23820_0_18_tpl(bubble_select_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_b),
        .in_c1_eni23820_1_tpl(sel_for_coalesced_delay_1_o),
        .in_c1_eni23820_1_18_tpl(bubble_select_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_c),
        .in_c1_eni23820_2_tpl(sel_for_coalesced_delay_1_v),
        .in_c1_eni23820_2_18_tpl(bubble_select_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_d),
        .in_c1_eni23820_3_tpl(sel_for_coalesced_delay_1_m),
        .in_c1_eni23820_3_18_tpl(bubble_select_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_e),
        .in_c1_eni23820_4_tpl(sel_for_coalesced_delay_1_u),
        .in_c1_eni23820_5_tpl(sel_for_coalesced_delay_1_b),
        .in_c1_eni23820_6_tpl(sel_for_coalesced_delay_1_l),
        .in_c1_eni23820_7_tpl(sel_for_coalesced_delay_1_k),
        .in_c1_eni23820_8_tpl(sel_for_coalesced_delay_1_j),
        .in_c1_eni23820_9_tpl(sel_for_coalesced_delay_1_i),
        .in_c1_eni23820_10_tpl(sel_for_coalesced_delay_1_h),
        .in_c1_eni23820_11_tpl(sel_for_coalesced_delay_1_g),
        .in_c1_eni23820_12_tpl(sel_for_coalesced_delay_1_f),
        .in_c1_eni23820_13_tpl(sel_for_coalesced_delay_1_e),
        .in_c1_eni23820_14_tpl(sel_for_coalesced_delay_1_d),
        .in_c1_eni23820_15_tpl(sel_for_coalesced_delay_1_c),
        .in_c1_eni23820_16_tpl(sel_for_coalesced_delay_1_s),
        .in_c1_eni23820_17_tpl(sel_for_coalesced_delay_1_r),
        .in_c1_eni23820_19_tpl(bubble_select_i_llvm_fpga_mem_lm178_conv2d1x14_b),
        .in_c1_eni23820_20_tpl(sel_for_coalesced_delay_1_p),
        .in_c1_eni23820_21_tpl(sel_for_coalesced_delay_1_t),
        .in_c1_eni23820_22_tpl(sel_for_coalesced_delay_1_q),
        .in_c1_eni23820_23_tpl(sel_for_coalesced_delay_1_n),
        .out_o_stall(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_o_valid),
        .out_c1_exit846_0_tpl(),
        .out_c1_exit846_1_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_1_tpl),
        .out_c1_exit846_2_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_2_tpl),
        .out_c1_exit846_3_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_3_tpl),
        .out_c1_exit846_4_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_4_tpl),
        .out_c1_exit846_5_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_5_tpl),
        .out_c1_exit846_6_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_6_tpl),
        .out_c1_exit846_7_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_7_tpl),
        .out_c1_exit846_8_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_8_tpl),
        .out_c1_exit846_9_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_9_tpl),
        .out_c1_exit846_10_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_10_tpl),
        .out_c1_exit846_11_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_11_tpl),
        .out_c1_exit846_12_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_12_tpl),
        .out_c1_exit846_13_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_13_tpl),
        .out_c1_exit846_14_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_14_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_2_fifo(STALLENABLE,161)
    // Valid signal propagation
    assign SE_out_coalesced_delay_2_fifo_V0 = SE_out_coalesced_delay_2_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_2_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_2_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_2_fifo_and0 = coalesced_delay_2_fifo_valid_out;
    assign SE_out_coalesced_delay_2_fifo_and1 = i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_o_valid & SE_out_coalesced_delay_2_fifo_and0;
    assign SE_out_coalesced_delay_2_fifo_and2 = SE_coalesced_delay_0_5_V0 & SE_out_coalesced_delay_2_fifo_and1;
    assign SE_out_coalesced_delay_2_fifo_wireValid = SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_V0 & SE_out_coalesced_delay_2_fifo_and2;

    // coalesced_delay_2_fifo(STALLFIFO,100)
    assign coalesced_delay_2_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_V3;
    assign coalesced_delay_2_fifo_stall_in = SE_out_coalesced_delay_2_fifo_backStall;
    assign coalesced_delay_2_fifo_data_in = join_for_coalesced_delay_2_q;
    assign coalesced_delay_2_fifo_valid_in_bitsignaltemp = coalesced_delay_2_fifo_valid_in[0];
    assign coalesced_delay_2_fifo_stall_in_bitsignaltemp = coalesced_delay_2_fifo_stall_in[0];
    assign coalesced_delay_2_fifo_valid_out[0] = coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_2_fifo_stall_out[0] = coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(136),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(263),
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

    // join_for_coalesced_delay_1(BITJOIN,82)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_d, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_aa, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_bb, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_cc, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_ee, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_ff, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_gg, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_hh, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_ii, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_jj, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_kk, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_ll, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_mm, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_nn, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_dd};

    // coalesced_delay_1_fifo(STALLFIFO,99)
    assign coalesced_delay_1_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_V2;
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
        .DATA_WIDTH(424),
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

    // i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x(BLACKBOX,33)@9
    // in in_i_stall@20000000
    // out out_lm177_conv2d1x1_avm_address@20000000
    // out out_lm177_conv2d1x1_avm_burstcount@20000000
    // out out_lm177_conv2d1x1_avm_byteenable@20000000
    // out out_lm177_conv2d1x1_avm_enable@20000000
    // out out_lm177_conv2d1x1_avm_read@20000000
    // out out_lm177_conv2d1x1_avm_write@20000000
    // out out_lm177_conv2d1x1_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@138
    // out out_o_readdata_0_tpl@138
    // out out_o_readdata_1_tpl@138
    // out out_o_readdata_2_tpl@138
    // out out_o_readdata_3_tpl@138
    conv2d1x1_i_llvm_fpga_mem_lm177_0 thei_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_k),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_l),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_V1),
        .in_lm177_conv2d1x1_avm_readdata(in_lm177_conv2d1x1_avm_readdata),
        .in_lm177_conv2d1x1_avm_readdatavalid(in_lm177_conv2d1x1_avm_readdatavalid),
        .in_lm177_conv2d1x1_avm_waitrequest(in_lm177_conv2d1x1_avm_waitrequest),
        .in_lm177_conv2d1x1_avm_writeack(in_lm177_conv2d1x1_avm_writeack),
        .out_lm177_conv2d1x1_avm_address(i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_lm177_conv2d1x1_avm_address),
        .out_lm177_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_lm177_conv2d1x1_avm_burstcount),
        .out_lm177_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_lm177_conv2d1x1_avm_byteenable),
        .out_lm177_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_lm177_conv2d1x1_avm_enable),
        .out_lm177_conv2d1x1_avm_read(i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_lm177_conv2d1x1_avm_read),
        .out_lm177_conv2d1x1_avm_write(i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_lm177_conv2d1x1_avm_write),
        .out_lm177_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_lm177_conv2d1x1_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_o_valid),
        .out_o_readdata_0_tpl(i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_o_readdata_0_tpl),
        .out_o_readdata_1_tpl(i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_o_readdata_1_tpl),
        .out_o_readdata_2_tpl(i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_o_readdata_2_tpl),
        .out_o_readdata_3_tpl(i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_o_readdata_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm178_conv2d1x14(BLACKBOX,7)@9
    // in in_i_stall@20000000
    // out out_lm178_conv2d1x1_avm_address@20000000
    // out out_lm178_conv2d1x1_avm_burstcount@20000000
    // out out_lm178_conv2d1x1_avm_byteenable@20000000
    // out out_lm178_conv2d1x1_avm_enable@20000000
    // out out_lm178_conv2d1x1_avm_read@20000000
    // out out_lm178_conv2d1x1_avm_write@20000000
    // out out_lm178_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@138
    // out out_o_stall@20000000
    // out out_o_valid@138
    conv2d1x1_i_llvm_fpga_mem_lm178_0 thei_llvm_fpga_mem_lm178_conv2d1x14 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_o),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_l),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm178_conv2d1x14_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_V0),
        .in_lm178_conv2d1x1_avm_readdata(in_lm178_conv2d1x1_avm_readdata),
        .in_lm178_conv2d1x1_avm_readdatavalid(in_lm178_conv2d1x1_avm_readdatavalid),
        .in_lm178_conv2d1x1_avm_waitrequest(in_lm178_conv2d1x1_avm_waitrequest),
        .in_lm178_conv2d1x1_avm_writeack(in_lm178_conv2d1x1_avm_writeack),
        .out_lm178_conv2d1x1_avm_address(i_llvm_fpga_mem_lm178_conv2d1x14_out_lm178_conv2d1x1_avm_address),
        .out_lm178_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm178_conv2d1x14_out_lm178_conv2d1x1_avm_burstcount),
        .out_lm178_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm178_conv2d1x14_out_lm178_conv2d1x1_avm_byteenable),
        .out_lm178_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm178_conv2d1x14_out_lm178_conv2d1x1_avm_enable),
        .out_lm178_conv2d1x1_avm_read(i_llvm_fpga_mem_lm178_conv2d1x14_out_lm178_conv2d1x1_avm_read),
        .out_lm178_conv2d1x1_avm_write(i_llvm_fpga_mem_lm178_conv2d1x14_out_lm178_conv2d1x1_avm_write),
        .out_lm178_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm178_conv2d1x14_out_lm178_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm178_conv2d1x14_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm178_conv2d1x14_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm178_conv2d1x14_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x(STALLENABLE,137)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_lm178_conv2d1x14_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_consumed1 = (~ (i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_consumed2 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_consumed3 = (~ (coalesced_delay_2_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_or2);
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_wireValid = i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x(BLACKBOX,34)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x110_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x110_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit722_0_tpl@9
    // out out_c0_exit722_1_tpl@9
    // out out_c0_exit722_2_tpl@9
    // out out_c0_exit722_3_tpl@9
    // out out_c0_exit722_4_tpl@9
    // out out_c0_exit722_5_tpl@9
    // out out_c0_exit722_6_tpl@9
    // out out_c0_exit722_7_tpl@9
    // out out_c0_exit722_8_tpl@9
    // out out_c0_exit722_9_tpl@9
    // out out_c0_exit722_10_tpl@9
    // out out_c0_exit722_11_tpl@9
    // out out_c0_exit722_12_tpl@9
    // out out_c0_exit722_13_tpl@9
    // out out_c0_exit722_14_tpl@9
    // out out_c0_exit722_15_tpl@9
    // out out_c0_exit722_16_tpl@9
    // out out_c0_exit722_17_tpl@9
    // out out_c0_exit722_18_tpl@9
    // out out_c0_exit722_19_tpl@9
    // out out_c0_exit722_20_tpl@9
    // out out_c0_exit722_21_tpl@9
    // out out_c0_exit722_22_tpl@9
    // out out_c0_exit722_23_tpl@9
    // out out_c0_exit722_24_tpl@9
    // out out_c0_exit722_25_tpl@9
    // out out_c0_exit722_26_tpl@9
    // out out_c0_exit722_27_tpl@9
    // out out_c0_exit722_28_tpl@9
    // out out_c0_exit722_29_tpl@9
    // out out_c0_exit722_30_tpl@9
    // out out_c0_exit722_31_tpl@9
    // out out_c0_exit722_32_tpl@9
    // out out_c0_exit722_33_tpl@9
    // out out_c0_exit722_34_tpl@9
    // out out_c0_exit722_35_tpl@9
    // out out_c0_exit722_36_tpl@9
    // out out_c0_exit722_37_tpl@9
    // out out_c0_exit722_38_tpl@9
    // out out_c0_exit722_39_tpl@9
    // out out_c0_exit722_40_tpl@9
    // out out_c0_exit722_41_tpl@9
    // out out_c0_exit722_42_tpl@9
    // out out_c0_exit722_43_tpl@9
    // out out_c0_exit722_44_tpl@9
    // out out_c0_exit722_45_tpl@9
    // out out_c0_exit722_46_tpl@9
    // out out_c0_exit722_47_tpl@9
    // out out_c0_exit722_48_tpl@9
    // out out_c0_exit722_49_tpl@9
    // out out_c0_exit722_50_tpl@9
    // out out_c0_exit722_51_tpl@9
    // out out_c0_exit722_52_tpl@9
    // out out_c0_exit722_53_tpl@9
    // out out_c0_exit722_54_tpl@9
    // out out_c0_exit722_55_tpl@9
    // out out_c0_exit722_56_tpl@9
    // out out_c0_exit722_57_tpl@9
    // out out_c0_exit722_58_tpl@9
    // out out_c0_exit722_59_tpl@9
    // out out_c0_exit722_60_tpl@9
    // out out_c0_exit722_61_tpl@9
    // out out_c0_exit722_62_tpl@9
    // out out_c0_exit722_63_tpl@9
    // out out_c0_exit722_64_tpl@9
    // out out_c0_exit722_65_tpl@9
    // out out_c0_exit722_66_tpl@9
    // out out_c0_exit722_67_tpl@9
    // out out_c0_exit722_68_tpl@9
    // out out_c0_exit722_69_tpl@9
    // out out_c0_exit722_70_tpl@9
    // out out_c0_exit722_71_tpl@9
    // out out_c0_exit722_72_tpl@9
    // out out_c0_exit722_73_tpl@9
    // out out_c0_exit722_74_tpl@9
    // out out_c0_exit722_75_tpl@9
    // out out_c0_exit722_76_tpl@9
    // out out_c0_exit722_77_tpl@9
    // out out_c0_exit722_78_tpl@9
    // out out_c0_exit722_79_tpl@9
    // out out_c0_exit722_80_tpl@9
    // out out_c0_exit722_81_tpl@9
    // out out_c0_exit722_82_tpl@9
    conv2d1x1_i_sfc_s_c0_in_for_body14_s_c0_enter60260_conv2d1x11 thei_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x (
        .in_filter_weight(in_filter_weight),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_backStall),
        .in_i_valid(SE_out_conv2d1x1_B8_merge_reg_aunroll_x_V0),
        .in_input_im(in_input_im),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni76_0_tpl(GND_q),
        .in_c0_eni76_1_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_tt),
        .in_c0_eni76_2_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_b),
        .in_c0_eni76_3_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_uu),
        .in_c0_eni76_4_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_xx),
        .in_c0_eni76_5_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_yy),
        .in_c0_eni76_6_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o71),
        .in_c0_eni76_7_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o73),
        .in_c0_eni76_8_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o69),
        .in_c0_eni76_9_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_2),
        .in_c0_eni76_10_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o70),
        .in_c0_eni76_11_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o66),
        .in_c0_eni76_12_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o67),
        .in_c0_eni76_13_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o68),
        .in_c0_eni76_14_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ww),
        .in_c0_eni76_15_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o72),
        .in_c0_eni76_16_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o74),
        .in_c0_eni76_17_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o75),
        .in_c0_eni76_18_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ss),
        .in_c0_eni76_19_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_rr),
        .in_c0_eni76_20_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_qq),
        .in_c0_eni76_21_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_vv),
        .in_c0_eni76_22_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_zz),
        .in_c0_eni76_23_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_1),
        .in_c0_eni76_24_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_c),
        .in_c0_eni76_25_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_d),
        .in_c0_eni76_26_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_e),
        .in_c0_eni76_27_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_f),
        .in_c0_eni76_28_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_g),
        .in_c0_eni76_29_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_h),
        .in_c0_eni76_30_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_i),
        .in_c0_eni76_31_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_j),
        .in_c0_eni76_32_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_k),
        .in_c0_eni76_33_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_l),
        .in_c0_eni76_34_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_m),
        .in_c0_eni76_35_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_n),
        .in_c0_eni76_36_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o),
        .in_c0_eni76_37_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_p),
        .in_c0_eni76_38_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_q),
        .in_c0_eni76_39_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_r),
        .in_c0_eni76_40_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_s),
        .in_c0_eni76_41_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_t),
        .in_c0_eni76_42_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_u),
        .in_c0_eni76_43_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_v),
        .in_c0_eni76_44_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_w),
        .in_c0_eni76_45_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_x),
        .in_c0_eni76_46_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_y),
        .in_c0_eni76_47_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_z),
        .in_c0_eni76_48_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_aa),
        .in_c0_eni76_49_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_bb),
        .in_c0_eni76_50_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_cc),
        .in_c0_eni76_51_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_dd),
        .in_c0_eni76_52_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ee),
        .in_c0_eni76_53_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ff),
        .in_c0_eni76_54_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_gg),
        .in_c0_eni76_55_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_hh),
        .in_c0_eni76_56_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ii),
        .in_c0_eni76_57_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_jj),
        .in_c0_eni76_58_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_kk),
        .in_c0_eni76_59_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ll),
        .in_c0_eni76_60_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_mm),
        .in_c0_eni76_61_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_nn),
        .in_c0_eni76_62_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_oo),
        .in_c0_eni76_63_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_pp),
        .in_c0_eni76_64_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_3),
        .in_c0_eni76_65_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_4),
        .in_c0_eni76_66_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_5),
        .in_c0_eni76_67_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_6),
        .in_c0_eni76_68_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_7),
        .in_c0_eni76_69_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_8),
        .in_c0_eni76_70_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_9),
        .in_c0_eni76_71_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_0),
        .in_c0_eni76_72_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o61),
        .in_c0_eni76_73_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o62),
        .in_c0_eni76_74_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o63),
        .in_c0_eni76_75_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o64),
        .in_c0_eni76_76_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o65),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x110_exiting_stall_out(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x110_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x110_exiting_valid_out(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x110_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit722_0_tpl(),
        .out_c0_exit722_1_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_1_tpl),
        .out_c0_exit722_2_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_2_tpl),
        .out_c0_exit722_3_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_3_tpl),
        .out_c0_exit722_4_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_4_tpl),
        .out_c0_exit722_5_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_5_tpl),
        .out_c0_exit722_6_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_6_tpl),
        .out_c0_exit722_7_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl),
        .out_c0_exit722_8_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_8_tpl),
        .out_c0_exit722_9_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_9_tpl),
        .out_c0_exit722_10_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_10_tpl),
        .out_c0_exit722_11_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_11_tpl),
        .out_c0_exit722_12_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_12_tpl),
        .out_c0_exit722_13_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_13_tpl),
        .out_c0_exit722_14_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_14_tpl),
        .out_c0_exit722_15_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_15_tpl),
        .out_c0_exit722_16_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_16_tpl),
        .out_c0_exit722_17_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_17_tpl),
        .out_c0_exit722_18_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_18_tpl),
        .out_c0_exit722_19_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_19_tpl),
        .out_c0_exit722_20_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_20_tpl),
        .out_c0_exit722_21_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_21_tpl),
        .out_c0_exit722_22_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_22_tpl),
        .out_c0_exit722_23_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_23_tpl),
        .out_c0_exit722_24_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_24_tpl),
        .out_c0_exit722_25_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_25_tpl),
        .out_c0_exit722_26_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_26_tpl),
        .out_c0_exit722_27_tpl(),
        .out_c0_exit722_28_tpl(),
        .out_c0_exit722_29_tpl(),
        .out_c0_exit722_30_tpl(),
        .out_c0_exit722_31_tpl(),
        .out_c0_exit722_32_tpl(),
        .out_c0_exit722_33_tpl(),
        .out_c0_exit722_34_tpl(),
        .out_c0_exit722_35_tpl(),
        .out_c0_exit722_36_tpl(),
        .out_c0_exit722_37_tpl(),
        .out_c0_exit722_38_tpl(),
        .out_c0_exit722_39_tpl(),
        .out_c0_exit722_40_tpl(),
        .out_c0_exit722_41_tpl(),
        .out_c0_exit722_42_tpl(),
        .out_c0_exit722_43_tpl(),
        .out_c0_exit722_44_tpl(),
        .out_c0_exit722_45_tpl(),
        .out_c0_exit722_46_tpl(),
        .out_c0_exit722_47_tpl(),
        .out_c0_exit722_48_tpl(),
        .out_c0_exit722_49_tpl(),
        .out_c0_exit722_50_tpl(),
        .out_c0_exit722_51_tpl(),
        .out_c0_exit722_52_tpl(),
        .out_c0_exit722_53_tpl(),
        .out_c0_exit722_54_tpl(),
        .out_c0_exit722_55_tpl(),
        .out_c0_exit722_56_tpl(),
        .out_c0_exit722_57_tpl(),
        .out_c0_exit722_58_tpl(),
        .out_c0_exit722_59_tpl(),
        .out_c0_exit722_60_tpl(),
        .out_c0_exit722_61_tpl(),
        .out_c0_exit722_62_tpl(),
        .out_c0_exit722_63_tpl(),
        .out_c0_exit722_64_tpl(),
        .out_c0_exit722_65_tpl(),
        .out_c0_exit722_66_tpl(),
        .out_c0_exit722_67_tpl(),
        .out_c0_exit722_68_tpl(),
        .out_c0_exit722_69_tpl(),
        .out_c0_exit722_70_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_70_tpl),
        .out_c0_exit722_71_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_71_tpl),
        .out_c0_exit722_72_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_72_tpl),
        .out_c0_exit722_73_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_73_tpl),
        .out_c0_exit722_74_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_74_tpl),
        .out_c0_exit722_75_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_75_tpl),
        .out_c0_exit722_76_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_76_tpl),
        .out_c0_exit722_77_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_77_tpl),
        .out_c0_exit722_78_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_78_tpl),
        .out_c0_exit722_79_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_79_tpl),
        .out_c0_exit722_80_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_80_tpl),
        .out_c0_exit722_81_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_81_tpl),
        .out_c0_exit722_82_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_82_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x110_exiting_valid_out = i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x110_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x110_exiting_stall_out = i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x110_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,19)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,27)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,31)
    assign out_lm177_conv2d1x1_avm_address = i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_lm177_conv2d1x1_avm_address;
    assign out_lm177_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_lm177_conv2d1x1_avm_enable;
    assign out_lm177_conv2d1x1_avm_read = i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_lm177_conv2d1x1_avm_read;
    assign out_lm177_conv2d1x1_avm_write = i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_lm177_conv2d1x1_avm_write;
    assign out_lm177_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_lm177_conv2d1x1_avm_writedata;
    assign out_lm177_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_lm177_conv2d1x1_avm_byteenable;
    assign out_lm177_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm177_conv2d1x13_vunroll_x_out_lm177_conv2d1x1_avm_burstcount;

    // dupName_1_ext_sig_sync_out_x(GPOUT,32)
    assign out_lm178_conv2d1x1_avm_address = i_llvm_fpga_mem_lm178_conv2d1x14_out_lm178_conv2d1x1_avm_address;
    assign out_lm178_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm178_conv2d1x14_out_lm178_conv2d1x1_avm_enable;
    assign out_lm178_conv2d1x1_avm_read = i_llvm_fpga_mem_lm178_conv2d1x14_out_lm178_conv2d1x1_avm_read;
    assign out_lm178_conv2d1x1_avm_write = i_llvm_fpga_mem_lm178_conv2d1x14_out_lm178_conv2d1x1_avm_write;
    assign out_lm178_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm178_conv2d1x14_out_lm178_conv2d1x1_avm_writedata;
    assign out_lm178_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm178_conv2d1x14_out_lm178_conv2d1x1_avm_byteenable;
    assign out_lm178_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm178_conv2d1x14_out_lm178_conv2d1x1_avm_burstcount;

    // coalesced_delay_0_5(REG,98)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_5_q <= $unsigned(128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_5_backEN == 1'b1)
        begin
            coalesced_delay_0_5_q <= $unsigned(SR_SE_coalesced_delay_0_5_D0);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,80)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_5_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_5_q[63:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_5_q[95:64]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_5_q[127:96]);

    // bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x(BITJOIN,119)
    assign bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_q = {i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_14_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_13_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_12_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_11_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_10_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_9_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_8_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_7_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_6_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_5_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_4_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_3_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_2_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_out_c1_exit846_1_tpl};

    // bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x(BITSELECT,120)
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_c = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_q[63:32]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_d = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_q[95:64]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_e = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_q[127:96]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_f = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_q[159:128]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_g = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_q[191:160]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_h = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_q[223:192]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_i = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_q[255:224]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_j = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_q[287:256]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_k = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_q[319:288]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_l = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_q[351:320]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_m = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_q[383:352]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_n = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_q[415:384]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_o = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_q[447:416]);

    // redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3(REG,90)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_backEN == 1'b1)
        begin
            redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_q <= $unsigned(SR_SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_D0);
        end
    end

    // redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4(REG,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_backEN == 1'b1)
        begin
            redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_q <= $unsigned(redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_3_q);
        end
    end

    // redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5(REG,92)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_q <= $unsigned(1'b0);
        end
        else if (SE_redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_backEN == 1'b1)
        begin
            redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_q <= $unsigned(redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_4_q);
        end
    end

    // bubble_join_coalesced_delay_2_fifo(BITJOIN,126)
    assign bubble_join_coalesced_delay_2_fifo_q = coalesced_delay_2_fifo_data_out;

    // bubble_select_coalesced_delay_2_fifo(BITSELECT,127)
    assign bubble_select_coalesced_delay_2_fifo_b = $unsigned(bubble_join_coalesced_delay_2_fifo_q[262:0]);

    // sel_for_coalesced_delay_2(BITSELECT,86)
    assign sel_for_coalesced_delay_2_b = $unsigned(bubble_select_coalesced_delay_2_fifo_b[31:0]);
    assign sel_for_coalesced_delay_2_c = $unsigned(bubble_select_coalesced_delay_2_fifo_b[63:32]);
    assign sel_for_coalesced_delay_2_d = $unsigned(bubble_select_coalesced_delay_2_fifo_b[95:64]);
    assign sel_for_coalesced_delay_2_e = $unsigned(bubble_select_coalesced_delay_2_fifo_b[127:96]);
    assign sel_for_coalesced_delay_2_f = $unsigned(bubble_select_coalesced_delay_2_fifo_b[159:128]);
    assign sel_for_coalesced_delay_2_g = $unsigned(bubble_select_coalesced_delay_2_fifo_b[191:160]);
    assign sel_for_coalesced_delay_2_h = $unsigned(bubble_select_coalesced_delay_2_fifo_b[223:192]);
    assign sel_for_coalesced_delay_2_i = $unsigned(bubble_select_coalesced_delay_2_fifo_b[255:224]);
    assign sel_for_coalesced_delay_2_j = $unsigned(bubble_select_coalesced_delay_2_fifo_b[256:256]);
    assign sel_for_coalesced_delay_2_k = $unsigned(bubble_select_coalesced_delay_2_fifo_b[257:257]);
    assign sel_for_coalesced_delay_2_l = $unsigned(bubble_select_coalesced_delay_2_fifo_b[258:258]);
    assign sel_for_coalesced_delay_2_m = $unsigned(bubble_select_coalesced_delay_2_fifo_b[259:259]);
    assign sel_for_coalesced_delay_2_n = $unsigned(bubble_select_coalesced_delay_2_fifo_b[260:260]);
    assign sel_for_coalesced_delay_2_o = $unsigned(bubble_select_coalesced_delay_2_fifo_b[261:261]);
    assign sel_for_coalesced_delay_2_p = $unsigned(bubble_select_coalesced_delay_2_fifo_b[262:262]);

    // dupName_0_sync_out_vunroll_x(GPOUT,35)@144
    assign out_c0_exe12734 = sel_for_coalesced_delay_2_c;
    assign out_c0_exe13735 = sel_for_coalesced_delay_2_d;
    assign out_c0_exe15737 = sel_for_coalesced_delay_2_k;
    assign out_c0_exe16738 = sel_for_coalesced_delay_2_l;
    assign out_c0_exe17739 = sel_for_coalesced_delay_2_e;
    assign out_c0_exe18740 = sel_for_coalesced_delay_2_f;
    assign out_c0_exe19741 = sel_for_coalesced_delay_2_m;
    assign out_c0_exe20742 = sel_for_coalesced_delay_2_g;
    assign out_c0_exe21743 = sel_for_coalesced_delay_2_h;
    assign out_c0_exe22744 = sel_for_coalesced_delay_2_i;
    assign out_c0_exe23745 = sel_for_coalesced_delay_2_n;
    assign out_c0_exe24746 = sel_for_coalesced_delay_2_o;
    assign out_c0_exe25747 = sel_for_coalesced_delay_2_p;
    assign out_c0_exe7729 = redist7_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter60260_conv2d1x11_aunroll_x_out_c0_exit722_7_tpl_135_5_q;
    assign out_c0_exe8730 = sel_for_coalesced_delay_2_j;
    assign out_c0_exe9731 = sel_for_coalesced_delay_2_b;
    assign out_c1_exe10 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_k;
    assign out_c1_exe11 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_l;
    assign out_c1_exe12 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_m;
    assign out_c1_exe13 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_n;
    assign out_c1_exe14 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_o;
    assign out_c1_exe1847 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_b;
    assign out_c1_exe2 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_c;
    assign out_c1_exe3 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_d;
    assign out_c1_exe4 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_e;
    assign out_c1_exe5 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_f;
    assign out_c1_exe6 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_g;
    assign out_c1_exe7 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_h;
    assign out_c1_exe8 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_i;
    assign out_c1_exe9 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter821_conv2d1x16_aunroll_vunroll_x_j;
    assign out_lm177_0_tpl = sel_for_coalesced_delay_0_b;
    assign out_lm177_1_tpl = sel_for_coalesced_delay_0_c;
    assign out_lm177_2_tpl = sel_for_coalesced_delay_0_d;
    assign out_lm177_3_tpl = sel_for_coalesced_delay_0_e;
    assign out_valid_out = SE_out_coalesced_delay_2_fifo_V0;

endmodule
