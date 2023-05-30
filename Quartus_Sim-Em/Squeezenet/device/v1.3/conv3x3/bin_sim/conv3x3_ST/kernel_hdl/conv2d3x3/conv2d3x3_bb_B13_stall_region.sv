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

// SystemVerilog created from conv2d3x3_bb_B13_stall_region
// SystemVerilog created on Tue May 30 12:33:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B13_stall_region (
    input wire [511:0] in_lm20_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm20_conv2d3x3_avm_writeack,
    input wire [0:0] in_lm20_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm20_conv2d3x3_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d3x38_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d3x38_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_acl_11462,
    input wire [31:0] in_add112_pop79470,
    input wire [31:0] in_add24189_pop100452,
    input wire [31:0] in_add242,
    input wire [31:0] in_add35_2501,
    input wire [31:0] in_add41_2502,
    input wire [0:0] in_cmp26122_pop81474,
    input wire [0:0] in_cmp26260,
    input wire [0:0] in_cmp26_1137_pop84454,
    input wire [0:0] in_cmp26_1287,
    input wire [0:0] in_cmp26_2152_pop87482,
    input wire [0:0] in_cmp26_2314,
    input wire [0:0] in_cmp27127_pop82476,
    input wire [0:0] in_cmp27269,
    input wire [0:0] in_cmp27_1142_pop85456,
    input wire [0:0] in_cmp27_1296,
    input wire [0:0] in_cmp27_2157_pop88484,
    input wire [0:0] in_cmp27_2323,
    input wire [63:0] in_filter_weight_addr_067_replace_phi199,
    input wire [63:0] in_filter_weight_addr_067_replace_phi85_pop19341,
    input wire [63:0] in_filter_weight_addr_067_replace_phi89_pop75460,
    input wire [0:0] in_forked37,
    input wire [31:0] in_inc50185_pop96497,
    input wire [31:0] in_j_061_pop24177_pop93494,
    input wire [31:0] in_lm25101_pop77466,
    input wire [31:0] in_lm25221,
    input wire [31:0] in_lm2597_pop21359,
    input wire [31:0] in_mul56117_pop80472,
    input wire [31:0] in_mul56251,
    input wire [0:0] in_notcmp73173_pop92492,
    input wire [0:0] in_notcmp77162_pop89486,
    input wire [0:0] in_notcmp77332,
    input wire [0:0] in_notcmp81103_pop22368,
    input wire [0:0] in_notcmp81107_pop78468,
    input wire [0:0] in_notcmp81232,
    input wire [63:0] in_output_im_addr_068_replace_phi210,
    input wire [63:0] in_output_im_addr_068_replace_phi91_pop20350,
    input wire [63:0] in_output_im_addr_068_replace_phi95_pop76464,
    input wire [31:0] in_pad_sync_buffer169_pop91490,
    input wire [0:0] in_pop94458,
    input wire [0:0] in_pop97499,
    input wire [31:0] in_stride_sync_buffer165_pop90488,
    input wire [31:0] in_sub_1132_pop83478,
    input wire [31:0] in_sub_1278,
    input wire [31:0] in_sub_2147_pop86480,
    input wire [31:0] in_sub_2305,
    input wire [0:0] in_valid_in,
    input wire [511:0] in_lm22_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm22_conv2d3x3_avm_writeack,
    input wire [0:0] in_lm22_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm22_conv2d3x3_avm_readdatavalid,
    output wire [30:0] out_lm20_conv2d3x3_avm_address,
    output wire [0:0] out_lm20_conv2d3x3_avm_enable,
    output wire [0:0] out_lm20_conv2d3x3_avm_read,
    output wire [0:0] out_lm20_conv2d3x3_avm_write,
    output wire [511:0] out_lm20_conv2d3x3_avm_writedata,
    output wire [63:0] out_lm20_conv2d3x3_avm_byteenable,
    output wire [4:0] out_lm20_conv2d3x3_avm_burstcount,
    output wire [0:0] out_c0_exe101147,
    output wire [63:0] out_c0_exe111148,
    output wire [63:0] out_c0_exe121149,
    output wire [31:0] out_c0_exe131150,
    output wire [31:0] out_c0_exe141151,
    output wire [0:0] out_c0_exe151152,
    output wire [0:0] out_c0_exe161153,
    output wire [31:0] out_c0_exe171154,
    output wire [31:0] out_c0_exe181155,
    output wire [31:0] out_c0_exe191156,
    output wire [0:0] out_c0_exe201157,
    output wire [0:0] out_c0_exe211158,
    output wire [31:0] out_c0_exe221159,
    output wire [0:0] out_c0_exe231160,
    output wire [0:0] out_c0_exe241161,
    output wire [31:0] out_c0_exe251162,
    output wire [0:0] out_c0_exe261163,
    output wire [0:0] out_c0_exe271164,
    output wire [31:0] out_c0_exe281165,
    output wire [31:0] out_c0_exe291166,
    output wire [0:0] out_c0_exe301167,
    output wire [0:0] out_c0_exe311168,
    output wire [0:0] out_c0_exe31140,
    output wire [31:0] out_c0_exe321169,
    output wire [31:0] out_c0_exe331170,
    output wire [31:0] out_c0_exe341171,
    output wire [0:0] out_c0_exe351172,
    output wire [63:0] out_c0_exe371174,
    output wire [63:0] out_c0_exe381175,
    output wire [31:0] out_c0_exe391176,
    output wire [0:0] out_c0_exe401177,
    output wire [31:0] out_c0_exe411178,
    output wire [0:0] out_c0_exe41141,
    output wire [31:0] out_c0_exe421179,
    output wire [0:0] out_c0_exe431180,
    output wire [0:0] out_c0_exe441181,
    output wire [31:0] out_c0_exe451182,
    output wire [0:0] out_c0_exe461183,
    output wire [0:0] out_c0_exe471184,
    output wire [31:0] out_c0_exe481185,
    output wire [0:0] out_c0_exe491186,
    output wire [0:0] out_c0_exe501187,
    output wire [0:0] out_c0_exe511188,
    output wire [63:0] out_c0_exe521189,
    output wire [63:0] out_c0_exe53,
    output wire [31:0] out_c0_exe54,
    output wire [0:0] out_c0_exe55,
    output wire [0:0] out_c0_exe61143,
    output wire [63:0] out_c0_exe81145,
    output wire [31:0] out_c1_exe11205,
    output wire [31:0] out_c1_exe2,
    output wire [0:0] out_valid_out,
    output wire [30:0] out_lm22_conv2d3x3_avm_address,
    output wire [0:0] out_lm22_conv2d3x3_avm_enable,
    output wire [0:0] out_lm22_conv2d3x3_avm_read,
    output wire [0:0] out_lm22_conv2d3x3_avm_write,
    output wire [511:0] out_lm22_conv2d3x3_avm_writedata,
    output wire [63:0] out_lm22_conv2d3x3_avm_byteenable,
    output wire [4:0] out_lm22_conv2d3x3_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [30:0] i_llvm_fpga_mem_lm20_conv2d3x33_out_lm20_conv2d3x3_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm20_conv2d3x33_out_lm20_conv2d3x3_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm20_conv2d3x33_out_lm20_conv2d3x3_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm20_conv2d3x33_out_lm20_conv2d3x3_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm20_conv2d3x33_out_lm20_conv2d3x3_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm20_conv2d3x33_out_lm20_conv2d3x3_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm20_conv2d3x33_out_lm20_conv2d3x3_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm20_conv2d3x33_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm20_conv2d3x33_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm20_conv2d3x33_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm22_conv2d3x34_out_lm22_conv2d3x3_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm22_conv2d3x34_out_lm22_conv2d3x3_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm22_conv2d3x34_out_lm22_conv2d3x3_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm22_conv2d3x34_out_lm22_conv2d3x3_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm22_conv2d3x34_out_lm22_conv2d3x3_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm22_conv2d3x34_out_lm22_conv2d3x3_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm22_conv2d3x34_out_lm22_conv2d3x3_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm22_conv2d3x34_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm22_conv2d3x34_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm22_conv2d3x34_out_o_valid;
    wire [0:0] conv2d3x3_B13_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv2d3x3_B13_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [63:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [63:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [31:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [0:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [0:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [31:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [0:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [0:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [0:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [63:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [63:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_17_tpl;
    wire [31:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_18_tpl;
    wire [0:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_19_tpl;
    wire [31:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_20_tpl;
    wire [0:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_21_tpl;
    wire [0:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_22_tpl;
    wire [0:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_23_tpl;
    wire [63:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_24_tpl;
    wire [31:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_25_tpl;
    wire [63:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_26_tpl;
    wire [31:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_27_tpl;
    wire [0:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_28_tpl;
    wire [31:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_29_tpl;
    wire [31:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_30_tpl;
    wire [0:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_31_tpl;
    wire [0:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_32_tpl;
    wire [31:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_33_tpl;
    wire [31:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_34_tpl;
    wire [0:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_35_tpl;
    wire [0:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_36_tpl;
    wire [0:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_37_tpl;
    wire [31:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_38_tpl;
    wire [31:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_39_tpl;
    wire [0:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_40_tpl;
    wire [31:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_41_tpl;
    wire [31:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_42_tpl;
    wire [0:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_43_tpl;
    wire [31:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_44_tpl;
    wire [31:0] conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_45_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d3x38_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d3x38_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_7_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_8_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_10_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_11_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_12_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_13_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_14_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_15_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_16_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_17_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_18_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_19_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_20_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_21_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_22_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_23_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_24_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_25_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_26_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_27_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_28_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_29_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_30_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_31_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_32_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_33_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_34_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_35_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_36_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_37_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_38_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_39_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_40_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_41_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_42_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_43_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_44_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_45_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_46_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_47_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_48_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_49_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_50_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_51_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_52_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_53_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_54_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_55_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_56_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body22_2_conv2d3x3s_c1_enter1196_conv2d3x36_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body22_2_conv2d3x3s_c1_enter1196_conv2d3x36_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_for_body22_2_conv2d3x3s_c1_enter1196_conv2d3x36_aunroll_x_out_c1_exit1204_1_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body22_2_conv2d3x3s_c1_enter1196_conv2d3x36_aunroll_x_out_c1_exit1204_2_tpl;
    wire [34:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [1047:0] join_for_coalesced_delay_1_q;
    wire [63:0] sel_for_coalesced_delay_1_b;
    wire [63:0] sel_for_coalesced_delay_1_c;
    wire [63:0] sel_for_coalesced_delay_1_d;
    wire [63:0] sel_for_coalesced_delay_1_e;
    wire [63:0] sel_for_coalesced_delay_1_f;
    wire [63:0] sel_for_coalesced_delay_1_g;
    wire [63:0] sel_for_coalesced_delay_1_h;
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
    wire [31:0] sel_for_coalesced_delay_1_z;
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
    wire [0:0] sel_for_coalesced_delay_1_uu;
    wire [0:0] sel_for_coalesced_delay_1_vv;
    wire [0:0] sel_for_coalesced_delay_1_ww;
    wire [0:0] sel_for_coalesced_delay_1_xx;
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
    wire [1047:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [1047:0] coalesced_delay_1_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm20_conv2d3x33_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm20_conv2d3x33_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm22_conv2d3x34_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm22_conv2d3x34_b;
    wire [1012:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
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
    wire [0:0] bubble_select_stall_entry_s;
    wire [63:0] bubble_select_stall_entry_t;
    wire [63:0] bubble_select_stall_entry_u;
    wire [63:0] bubble_select_stall_entry_v;
    wire [0:0] bubble_select_stall_entry_w;
    wire [31:0] bubble_select_stall_entry_x;
    wire [31:0] bubble_select_stall_entry_y;
    wire [31:0] bubble_select_stall_entry_z;
    wire [31:0] bubble_select_stall_entry_aa;
    wire [31:0] bubble_select_stall_entry_bb;
    wire [31:0] bubble_select_stall_entry_cc;
    wire [31:0] bubble_select_stall_entry_dd;
    wire [0:0] bubble_select_stall_entry_ee;
    wire [0:0] bubble_select_stall_entry_ff;
    wire [0:0] bubble_select_stall_entry_gg;
    wire [0:0] bubble_select_stall_entry_hh;
    wire [0:0] bubble_select_stall_entry_ii;
    wire [0:0] bubble_select_stall_entry_jj;
    wire [63:0] bubble_select_stall_entry_kk;
    wire [63:0] bubble_select_stall_entry_ll;
    wire [63:0] bubble_select_stall_entry_mm;
    wire [31:0] bubble_select_stall_entry_nn;
    wire [0:0] bubble_select_stall_entry_oo;
    wire [0:0] bubble_select_stall_entry_pp;
    wire [31:0] bubble_select_stall_entry_qq;
    wire [31:0] bubble_select_stall_entry_rr;
    wire [31:0] bubble_select_stall_entry_ss;
    wire [31:0] bubble_select_stall_entry_tt;
    wire [31:0] bubble_select_stall_entry_uu;
    wire [1012:0] bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_b;
    wire [63:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_c;
    wire [63:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_g;
    wire [31:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_h;
    wire [0:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_j;
    wire [31:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_k;
    wire [0:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_l;
    wire [0:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_m;
    wire [31:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_n;
    wire [0:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_o;
    wire [0:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_p;
    wire [0:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_q;
    wire [63:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_r;
    wire [63:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_s;
    wire [31:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_t;
    wire [0:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_u;
    wire [31:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_v;
    wire [0:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_w;
    wire [0:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_x;
    wire [0:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_y;
    wire [63:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_z;
    wire [31:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_aa;
    wire [63:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_bb;
    wire [31:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_cc;
    wire [0:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_dd;
    wire [31:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_ee;
    wire [31:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_ff;
    wire [0:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_gg;
    wire [0:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_hh;
    wire [31:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_ii;
    wire [31:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_jj;
    wire [0:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_kk;
    wire [0:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_ll;
    wire [0:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_mm;
    wire [31:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_nn;
    wire [31:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_oo;
    wire [0:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_pp;
    wire [31:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_qq;
    wire [31:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_rr;
    wire [0:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_ss;
    wire [31:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_tt;
    wire [31:0] bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_uu;
    wire [1211:0] bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_h;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_i;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_k;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_l;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_m;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_n;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_o;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_p;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_r;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_s;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_t;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_u;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_v;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_w;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_x;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_y;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_z;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_aa;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_bb;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_cc;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_dd;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_ee;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_ff;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_gg;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_hh;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_ii;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_jj;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_kk;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_ll;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_mm;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_nn;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_oo;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_pp;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_qq;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_rr;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_ss;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_tt;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_uu;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_vv;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_ww;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_xx;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_yy;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_zz;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_1;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_2;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_3;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_4;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_5;
    wire [63:0] bubble_join_i_sfc_s_c1_in_for_body22_2_conv2d3x3s_c1_enter1196_conv2d3x36_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body22_2_conv2d3x3s_c1_enter1196_conv2d3x36_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body22_2_conv2d3x3s_c1_enter1196_conv2d3x36_aunroll_x_c;
    wire [34:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [34:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [1047:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [1047:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_conv2d3x3_B13_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv2d3x3_B13_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv2d3x3_B13_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_V3;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;


    // bubble_join_stall_entry(BITJOIN,104)
    assign bubble_join_stall_entry_q = {in_sub_2305, in_sub_2147_pop86480, in_sub_1278, in_sub_1132_pop83478, in_stride_sync_buffer165_pop90488, in_pop97499, in_pop94458, in_pad_sync_buffer169_pop91490, in_output_im_addr_068_replace_phi95_pop76464, in_output_im_addr_068_replace_phi91_pop20350, in_output_im_addr_068_replace_phi210, in_notcmp81232, in_notcmp81107_pop78468, in_notcmp81103_pop22368, in_notcmp77332, in_notcmp77162_pop89486, in_notcmp73173_pop92492, in_mul56251, in_mul56117_pop80472, in_lm2597_pop21359, in_lm25221, in_lm25101_pop77466, in_j_061_pop24177_pop93494, in_inc50185_pop96497, in_forked37, in_filter_weight_addr_067_replace_phi89_pop75460, in_filter_weight_addr_067_replace_phi85_pop19341, in_filter_weight_addr_067_replace_phi199, in_cmp27_2323, in_cmp27_2157_pop88484, in_cmp27_1296, in_cmp27_1142_pop85456, in_cmp27269, in_cmp27127_pop82476, in_cmp26_2314, in_cmp26_2152_pop87482, in_cmp26_1287, in_cmp26_1137_pop84454, in_cmp26260, in_cmp26122_pop81474, in_add41_2502, in_add35_2501, in_add242, in_add24189_pop100452, in_add112_pop79470, in_acl_11462};

    // bubble_select_stall_entry(BITSELECT,105)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[63:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[95:64]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[127:96]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[159:128]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[191:160]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[192:192]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[193:193]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[194:194]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[195:195]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[196:196]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[197:197]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[198:198]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[199:199]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[200:200]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[201:201]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[202:202]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[203:203]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[267:204]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[331:268]);
    assign bubble_select_stall_entry_v = $unsigned(bubble_join_stall_entry_q[395:332]);
    assign bubble_select_stall_entry_w = $unsigned(bubble_join_stall_entry_q[396:396]);
    assign bubble_select_stall_entry_x = $unsigned(bubble_join_stall_entry_q[428:397]);
    assign bubble_select_stall_entry_y = $unsigned(bubble_join_stall_entry_q[460:429]);
    assign bubble_select_stall_entry_z = $unsigned(bubble_join_stall_entry_q[492:461]);
    assign bubble_select_stall_entry_aa = $unsigned(bubble_join_stall_entry_q[524:493]);
    assign bubble_select_stall_entry_bb = $unsigned(bubble_join_stall_entry_q[556:525]);
    assign bubble_select_stall_entry_cc = $unsigned(bubble_join_stall_entry_q[588:557]);
    assign bubble_select_stall_entry_dd = $unsigned(bubble_join_stall_entry_q[620:589]);
    assign bubble_select_stall_entry_ee = $unsigned(bubble_join_stall_entry_q[621:621]);
    assign bubble_select_stall_entry_ff = $unsigned(bubble_join_stall_entry_q[622:622]);
    assign bubble_select_stall_entry_gg = $unsigned(bubble_join_stall_entry_q[623:623]);
    assign bubble_select_stall_entry_hh = $unsigned(bubble_join_stall_entry_q[624:624]);
    assign bubble_select_stall_entry_ii = $unsigned(bubble_join_stall_entry_q[625:625]);
    assign bubble_select_stall_entry_jj = $unsigned(bubble_join_stall_entry_q[626:626]);
    assign bubble_select_stall_entry_kk = $unsigned(bubble_join_stall_entry_q[690:627]);
    assign bubble_select_stall_entry_ll = $unsigned(bubble_join_stall_entry_q[754:691]);
    assign bubble_select_stall_entry_mm = $unsigned(bubble_join_stall_entry_q[818:755]);
    assign bubble_select_stall_entry_nn = $unsigned(bubble_join_stall_entry_q[850:819]);
    assign bubble_select_stall_entry_oo = $unsigned(bubble_join_stall_entry_q[851:851]);
    assign bubble_select_stall_entry_pp = $unsigned(bubble_join_stall_entry_q[852:852]);
    assign bubble_select_stall_entry_qq = $unsigned(bubble_join_stall_entry_q[884:853]);
    assign bubble_select_stall_entry_rr = $unsigned(bubble_join_stall_entry_q[916:885]);
    assign bubble_select_stall_entry_ss = $unsigned(bubble_join_stall_entry_q[948:917]);
    assign bubble_select_stall_entry_tt = $unsigned(bubble_join_stall_entry_q[980:949]);
    assign bubble_select_stall_entry_uu = $unsigned(bubble_join_stall_entry_q[1012:981]);

    // SE_stall_entry(STALLENABLE,128)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv2d3x3_B13_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // conv2d3x3_B13_merge_reg_aunroll_x(BLACKBOX,29)@0
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
    conv2d3x3_B13_merge_reg theconv2d3x3_B13_merge_reg_aunroll_x (
        .in_stall_in(SE_out_conv2d3x3_B13_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_w),
        .in_data_in_1_tpl(bubble_select_stall_entry_t),
        .in_data_in_2_tpl(bubble_select_stall_entry_kk),
        .in_data_in_3_tpl(bubble_select_stall_entry_aa),
        .in_data_in_4_tpl(bubble_select_stall_entry_jj),
        .in_data_in_5_tpl(bubble_select_stall_entry_e),
        .in_data_in_6_tpl(bubble_select_stall_entry_dd),
        .in_data_in_7_tpl(bubble_select_stall_entry_i),
        .in_data_in_8_tpl(bubble_select_stall_entry_o),
        .in_data_in_9_tpl(bubble_select_stall_entry_ss),
        .in_data_in_10_tpl(bubble_select_stall_entry_k),
        .in_data_in_11_tpl(bubble_select_stall_entry_q),
        .in_data_in_12_tpl(bubble_select_stall_entry_uu),
        .in_data_in_13_tpl(bubble_select_stall_entry_m),
        .in_data_in_14_tpl(bubble_select_stall_entry_s),
        .in_data_in_15_tpl(bubble_select_stall_entry_gg),
        .in_data_in_16_tpl(bubble_select_stall_entry_u),
        .in_data_in_17_tpl(bubble_select_stall_entry_ll),
        .in_data_in_18_tpl(bubble_select_stall_entry_bb),
        .in_data_in_19_tpl(bubble_select_stall_entry_hh),
        .in_data_in_20_tpl(bubble_select_stall_entry_d),
        .in_data_in_21_tpl(bubble_select_stall_entry_j),
        .in_data_in_22_tpl(bubble_select_stall_entry_p),
        .in_data_in_23_tpl(bubble_select_stall_entry_oo),
        .in_data_in_24_tpl(bubble_select_stall_entry_v),
        .in_data_in_25_tpl(bubble_select_stall_entry_b),
        .in_data_in_26_tpl(bubble_select_stall_entry_mm),
        .in_data_in_27_tpl(bubble_select_stall_entry_z),
        .in_data_in_28_tpl(bubble_select_stall_entry_ii),
        .in_data_in_29_tpl(bubble_select_stall_entry_c),
        .in_data_in_30_tpl(bubble_select_stall_entry_cc),
        .in_data_in_31_tpl(bubble_select_stall_entry_h),
        .in_data_in_32_tpl(bubble_select_stall_entry_n),
        .in_data_in_33_tpl(bubble_select_stall_entry_rr),
        .in_data_in_34_tpl(bubble_select_stall_entry_tt),
        .in_data_in_35_tpl(bubble_select_stall_entry_l),
        .in_data_in_36_tpl(bubble_select_stall_entry_r),
        .in_data_in_37_tpl(bubble_select_stall_entry_ff),
        .in_data_in_38_tpl(bubble_select_stall_entry_qq),
        .in_data_in_39_tpl(bubble_select_stall_entry_nn),
        .in_data_in_40_tpl(bubble_select_stall_entry_ee),
        .in_data_in_41_tpl(bubble_select_stall_entry_y),
        .in_data_in_42_tpl(bubble_select_stall_entry_x),
        .in_data_in_43_tpl(bubble_select_stall_entry_pp),
        .in_data_in_44_tpl(bubble_select_stall_entry_f),
        .in_data_in_45_tpl(bubble_select_stall_entry_g),
        .out_stall_out(conv2d3x3_B13_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv2d3x3_B13_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_21_tpl),
        .out_data_out_22_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_22_tpl),
        .out_data_out_23_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_23_tpl),
        .out_data_out_24_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_24_tpl),
        .out_data_out_25_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_25_tpl),
        .out_data_out_26_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_26_tpl),
        .out_data_out_27_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_27_tpl),
        .out_data_out_28_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_28_tpl),
        .out_data_out_29_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_29_tpl),
        .out_data_out_30_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_30_tpl),
        .out_data_out_31_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_31_tpl),
        .out_data_out_32_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_32_tpl),
        .out_data_out_33_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_33_tpl),
        .out_data_out_34_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_34_tpl),
        .out_data_out_35_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_35_tpl),
        .out_data_out_36_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_36_tpl),
        .out_data_out_37_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_37_tpl),
        .out_data_out_38_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_38_tpl),
        .out_data_out_39_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_39_tpl),
        .out_data_out_40_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_40_tpl),
        .out_data_out_41_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_41_tpl),
        .out_data_out_42_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_42_tpl),
        .out_data_out_43_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_43_tpl),
        .out_data_out_44_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_44_tpl),
        .out_data_out_45_tpl(conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_45_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_conv2d3x3_B13_merge_reg_aunroll_x(BITJOIN,108)
    assign bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q = {conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_45_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_44_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_43_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_42_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_41_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_40_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_39_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_38_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_37_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_36_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_35_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_34_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_33_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_32_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_31_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_30_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_29_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_28_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_27_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_26_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_25_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_24_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_23_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_22_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_21_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_20_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_19_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_18_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_17_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_16_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_15_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_14_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_13_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_12_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_11_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_10_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_9_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_8_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_7_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_6_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_5_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_4_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_3_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_2_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_1_tpl, conv2d3x3_B13_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv2d3x3_B13_merge_reg_aunroll_x(BITSELECT,109)
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[64:1]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[128:65]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[160:129]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_f = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[161:161]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_g = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[193:162]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_h = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[225:194]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_i = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[226:226]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_j = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[227:227]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_k = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[259:228]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_l = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[260:260]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_m = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[261:261]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_n = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[293:262]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_o = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[294:294]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_p = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[295:295]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_q = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[296:296]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_r = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[360:297]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_s = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[424:361]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_t = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[456:425]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_u = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[457:457]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_v = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[489:458]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_w = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[490:490]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_x = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[491:491]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_y = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[492:492]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_z = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[556:493]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_aa = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[588:557]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_bb = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[652:589]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_cc = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[684:653]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_dd = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[685:685]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_ee = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[717:686]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_ff = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[749:718]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_gg = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[750:750]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_hh = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[751:751]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_ii = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[783:752]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_jj = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[815:784]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_kk = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[816:816]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_ll = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[817:817]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_mm = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[818:818]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_nn = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[850:819]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_oo = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[882:851]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_pp = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[883:883]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_qq = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[915:884]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_rr = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[947:916]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_ss = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[948:948]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_tt = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[980:949]);
    assign bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_uu = $unsigned(bubble_join_conv2d3x3_B13_merge_reg_aunroll_x_q[1012:981]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_conv2d3x3_B13_merge_reg_aunroll_x(STALLENABLE,131)
    // Valid signal propagation
    assign SE_out_conv2d3x3_B13_merge_reg_aunroll_x_V0 = SE_out_conv2d3x3_B13_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_conv2d3x3_B13_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_o_stall | ~ (SE_out_conv2d3x3_B13_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_conv2d3x3_B13_merge_reg_aunroll_x_wireValid = conv2d3x3_B13_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x(BITJOIN,112)
    assign bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q = {i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_56_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_55_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_54_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_53_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_52_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_51_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_50_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_49_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_48_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_47_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_46_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_45_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_44_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_43_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_42_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_41_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_40_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_39_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_38_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_37_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_36_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_35_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_34_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_33_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_32_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_31_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_30_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_29_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_28_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_27_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_26_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_25_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_24_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_23_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_22_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_21_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_20_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_19_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_18_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_17_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_16_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_15_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_14_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_13_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_12_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_11_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_10_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_9_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_8_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_7_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_6_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_5_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_4_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_3_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_2_tpl, i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x(BITSELECT,113)
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[64:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[65:65]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[66:66]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[67:67]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[68:68]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[69:69]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[133:70]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[197:134]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[198:198]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[262:199]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[326:263]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[358:327]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[390:359]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[391:391]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[392:392]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[424:393]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[456:425]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_t = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[488:457]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_u = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[489:489]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_v = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[490:490]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_w = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[522:491]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_x = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[523:523]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_y = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[524:524]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_z = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[556:525]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_aa = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[557:557]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_bb = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[558:558]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_cc = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[590:559]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_dd = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[622:591]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_ee = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[623:623]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_ff = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[624:624]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_gg = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[656:625]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_hh = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[688:657]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_ii = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[720:689]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_jj = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[721:721]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_kk = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[722:722]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_ll = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[786:723]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_mm = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[850:787]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_nn = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[882:851]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_oo = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[883:883]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_pp = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[915:884]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_qq = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[947:916]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_rr = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[948:948]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_ss = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[949:949]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_tt = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[981:950]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_uu = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[982:982]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_vv = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[983:983]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_ww = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[1015:984]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_xx = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[1016:1016]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_yy = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[1017:1017]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_zz = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[1018:1018]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_1 = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[1082:1019]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_2 = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[1146:1083]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_3 = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[1178:1147]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_4 = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[1179:1179]);
    assign bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_5 = $unsigned(bubble_join_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q[1211:1180]);

    // join_for_coalesced_delay_1(BITJOIN,93)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_p, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_q, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_u, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_v, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_x, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_y, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_aa, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_bb, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_d, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_ff, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_jj, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_oo, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_4, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_zz, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_rr, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_ss, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_yy, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_xx, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_uu, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_ee, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_vv, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_3, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_n, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_o, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_r, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_s, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_t, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_w, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_pp, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_nn, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_qq, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_ii, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_hh, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_gg, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_dd, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_cc, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_tt, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_ww, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_z, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_1, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_ll, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_mm, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_m, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_l, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_2, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_i};

    // bubble_join_i_llvm_fpga_mem_lm22_conv2d3x34(BITJOIN,101)
    assign bubble_join_i_llvm_fpga_mem_lm22_conv2d3x34_q = i_llvm_fpga_mem_lm22_conv2d3x34_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm22_conv2d3x34(BITSELECT,102)
    assign bubble_select_i_llvm_fpga_mem_lm22_conv2d3x34_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm22_conv2d3x34_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm20_conv2d3x33(BITJOIN,98)
    assign bubble_join_i_llvm_fpga_mem_lm20_conv2d3x33_q = i_llvm_fpga_mem_lm20_conv2d3x33_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm20_conv2d3x33(BITSELECT,99)
    assign bubble_select_i_llvm_fpga_mem_lm20_conv2d3x33_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm20_conv2d3x33_q[31:0]);

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,141)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_sfc_s_c1_in_for_body22_2_conv2d3x3s_c1_enter1196_conv2d3x36_aunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = i_llvm_fpga_mem_lm22_conv2d3x34_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_lm20_conv2d3x33_out_o_valid & SE_out_coalesced_delay_0_fifo_and1;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,119)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,120)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[34:0]);

    // sel_for_coalesced_delay_0(BITSELECT,91)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[32:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[33:33]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[34:34]);

    // i_sfc_s_c1_in_for_body22_2_conv2d3x3s_c1_enter1196_conv2d3x36_aunroll_x(BLACKBOX,35)@249
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@257
    // out out_c1_exit1204_0_tpl@257
    // out out_c1_exit1204_1_tpl@257
    // out out_c1_exit1204_2_tpl@257
    conv2d3x3_i_sfc_s_c1_in_for_body22_2_s_c1_enter1196_conv2d3x36 thei_sfc_s_c1_in_for_body22_2_conv2d3x3s_c1_enter1196_conv2d3x36_aunroll_x (
        .in_c0_exe11138(sel_for_coalesced_delay_0_c),
        .in_c0_exe361173(sel_for_coalesced_delay_0_e),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .in_c1_eni61195_0_tpl(GND_q),
        .in_c1_eni61195_1_tpl(sel_for_coalesced_delay_0_b),
        .in_c1_eni61195_2_tpl(sel_for_coalesced_delay_0_e),
        .in_c1_eni61195_3_tpl(bubble_select_i_llvm_fpga_mem_lm20_conv2d3x33_b),
        .in_c1_eni61195_4_tpl(bubble_select_i_llvm_fpga_mem_lm22_conv2d3x34_b),
        .in_c1_eni61195_5_tpl(sel_for_coalesced_delay_0_d),
        .in_c1_eni61195_6_tpl(sel_for_coalesced_delay_0_c),
        .out_o_stall(i_sfc_s_c1_in_for_body22_2_conv2d3x3s_c1_enter1196_conv2d3x36_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body22_2_conv2d3x3s_c1_enter1196_conv2d3x36_aunroll_x_out_o_valid),
        .out_c1_exit1204_0_tpl(),
        .out_c1_exit1204_1_tpl(i_sfc_s_c1_in_for_body22_2_conv2d3x3s_c1_enter1196_conv2d3x36_aunroll_x_out_c1_exit1204_1_tpl),
        .out_c1_exit1204_2_tpl(i_sfc_s_c1_in_for_body22_2_conv2d3x3s_c1_enter1196_conv2d3x36_aunroll_x_out_c1_exit1204_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,143)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_wireValid = i_sfc_s_c1_in_for_body22_2_conv2d3x3s_c1_enter1196_conv2d3x36_aunroll_x_out_o_valid & SE_out_coalesced_delay_1_fifo_and0;

    // coalesced_delay_1_fifo(STALLFIFO,96)
    assign coalesced_delay_1_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_V3;
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
        .DATA_WIDTH(1048),
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

    // join_for_coalesced_delay_0(BITJOIN,90)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_kk, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_5};

    // coalesced_delay_0_fifo(STALLFIFO,95)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_V2;
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

    // i_llvm_fpga_mem_lm22_conv2d3x34(BLACKBOX,8)@8
    // in in_i_stall@20000000
    // out out_lm22_conv2d3x3_avm_address@20000000
    // out out_lm22_conv2d3x3_avm_burstcount@20000000
    // out out_lm22_conv2d3x3_avm_byteenable@20000000
    // out out_lm22_conv2d3x3_avm_enable@20000000
    // out out_lm22_conv2d3x3_avm_read@20000000
    // out out_lm22_conv2d3x3_avm_write@20000000
    // out out_lm22_conv2d3x3_avm_writedata@20000000
    // out out_o_readdata@249
    // out out_o_stall@20000000
    // out out_o_valid@249
    conv2d3x3_i_llvm_fpga_mem_lm22_0 thei_llvm_fpga_mem_lm22_conv2d3x34 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_j),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_h),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_V1),
        .in_lm22_conv2d3x3_avm_readdata(in_lm22_conv2d3x3_avm_readdata),
        .in_lm22_conv2d3x3_avm_readdatavalid(in_lm22_conv2d3x3_avm_readdatavalid),
        .in_lm22_conv2d3x3_avm_waitrequest(in_lm22_conv2d3x3_avm_waitrequest),
        .in_lm22_conv2d3x3_avm_writeack(in_lm22_conv2d3x3_avm_writeack),
        .out_lm22_conv2d3x3_avm_address(i_llvm_fpga_mem_lm22_conv2d3x34_out_lm22_conv2d3x3_avm_address),
        .out_lm22_conv2d3x3_avm_burstcount(i_llvm_fpga_mem_lm22_conv2d3x34_out_lm22_conv2d3x3_avm_burstcount),
        .out_lm22_conv2d3x3_avm_byteenable(i_llvm_fpga_mem_lm22_conv2d3x34_out_lm22_conv2d3x3_avm_byteenable),
        .out_lm22_conv2d3x3_avm_enable(i_llvm_fpga_mem_lm22_conv2d3x34_out_lm22_conv2d3x3_avm_enable),
        .out_lm22_conv2d3x3_avm_read(i_llvm_fpga_mem_lm22_conv2d3x34_out_lm22_conv2d3x3_avm_read),
        .out_lm22_conv2d3x3_avm_write(i_llvm_fpga_mem_lm22_conv2d3x34_out_lm22_conv2d3x3_avm_write),
        .out_lm22_conv2d3x3_avm_writedata(i_llvm_fpga_mem_lm22_conv2d3x34_out_lm22_conv2d3x3_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm22_conv2d3x34_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm22_conv2d3x34_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm22_conv2d3x34_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm20_conv2d3x33(BLACKBOX,7)@8
    // in in_i_stall@20000000
    // out out_lm20_conv2d3x3_avm_address@20000000
    // out out_lm20_conv2d3x3_avm_burstcount@20000000
    // out out_lm20_conv2d3x3_avm_byteenable@20000000
    // out out_lm20_conv2d3x3_avm_enable@20000000
    // out out_lm20_conv2d3x3_avm_read@20000000
    // out out_lm20_conv2d3x3_avm_write@20000000
    // out out_lm20_conv2d3x3_avm_writedata@20000000
    // out out_o_readdata@249
    // out out_o_stall@20000000
    // out out_o_valid@249
    conv2d3x3_i_llvm_fpga_mem_lm20_0 thei_llvm_fpga_mem_lm20_conv2d3x33 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_c),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_h),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_V0),
        .in_lm20_conv2d3x3_avm_readdata(in_lm20_conv2d3x3_avm_readdata),
        .in_lm20_conv2d3x3_avm_readdatavalid(in_lm20_conv2d3x3_avm_readdatavalid),
        .in_lm20_conv2d3x3_avm_waitrequest(in_lm20_conv2d3x3_avm_waitrequest),
        .in_lm20_conv2d3x3_avm_writeack(in_lm20_conv2d3x3_avm_writeack),
        .out_lm20_conv2d3x3_avm_address(i_llvm_fpga_mem_lm20_conv2d3x33_out_lm20_conv2d3x3_avm_address),
        .out_lm20_conv2d3x3_avm_burstcount(i_llvm_fpga_mem_lm20_conv2d3x33_out_lm20_conv2d3x3_avm_burstcount),
        .out_lm20_conv2d3x3_avm_byteenable(i_llvm_fpga_mem_lm20_conv2d3x33_out_lm20_conv2d3x3_avm_byteenable),
        .out_lm20_conv2d3x3_avm_enable(i_llvm_fpga_mem_lm20_conv2d3x33_out_lm20_conv2d3x3_avm_enable),
        .out_lm20_conv2d3x3_avm_read(i_llvm_fpga_mem_lm20_conv2d3x33_out_lm20_conv2d3x3_avm_read),
        .out_lm20_conv2d3x3_avm_write(i_llvm_fpga_mem_lm20_conv2d3x33_out_lm20_conv2d3x3_avm_write),
        .out_lm20_conv2d3x3_avm_writedata(i_llvm_fpga_mem_lm20_conv2d3x33_out_lm20_conv2d3x3_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm20_conv2d3x33_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm20_conv2d3x33_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm20_conv2d3x33_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x(STALLENABLE,133)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_lm20_conv2d3x33_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_consumed1 = (~ (i_llvm_fpga_mem_lm22_conv2d3x34_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_consumed2 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_consumed3 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_or2);
    assign SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_wireValid = i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x(BLACKBOX,34)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d3x38_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d3x38_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit1137_0_tpl@8
    // out out_c0_exit1137_1_tpl@8
    // out out_c0_exit1137_2_tpl@8
    // out out_c0_exit1137_3_tpl@8
    // out out_c0_exit1137_4_tpl@8
    // out out_c0_exit1137_5_tpl@8
    // out out_c0_exit1137_6_tpl@8
    // out out_c0_exit1137_7_tpl@8
    // out out_c0_exit1137_8_tpl@8
    // out out_c0_exit1137_9_tpl@8
    // out out_c0_exit1137_10_tpl@8
    // out out_c0_exit1137_11_tpl@8
    // out out_c0_exit1137_12_tpl@8
    // out out_c0_exit1137_13_tpl@8
    // out out_c0_exit1137_14_tpl@8
    // out out_c0_exit1137_15_tpl@8
    // out out_c0_exit1137_16_tpl@8
    // out out_c0_exit1137_17_tpl@8
    // out out_c0_exit1137_18_tpl@8
    // out out_c0_exit1137_19_tpl@8
    // out out_c0_exit1137_20_tpl@8
    // out out_c0_exit1137_21_tpl@8
    // out out_c0_exit1137_22_tpl@8
    // out out_c0_exit1137_23_tpl@8
    // out out_c0_exit1137_24_tpl@8
    // out out_c0_exit1137_25_tpl@8
    // out out_c0_exit1137_26_tpl@8
    // out out_c0_exit1137_27_tpl@8
    // out out_c0_exit1137_28_tpl@8
    // out out_c0_exit1137_29_tpl@8
    // out out_c0_exit1137_30_tpl@8
    // out out_c0_exit1137_31_tpl@8
    // out out_c0_exit1137_32_tpl@8
    // out out_c0_exit1137_33_tpl@8
    // out out_c0_exit1137_34_tpl@8
    // out out_c0_exit1137_35_tpl@8
    // out out_c0_exit1137_36_tpl@8
    // out out_c0_exit1137_37_tpl@8
    // out out_c0_exit1137_38_tpl@8
    // out out_c0_exit1137_39_tpl@8
    // out out_c0_exit1137_40_tpl@8
    // out out_c0_exit1137_41_tpl@8
    // out out_c0_exit1137_42_tpl@8
    // out out_c0_exit1137_43_tpl@8
    // out out_c0_exit1137_44_tpl@8
    // out out_c0_exit1137_45_tpl@8
    // out out_c0_exit1137_46_tpl@8
    // out out_c0_exit1137_47_tpl@8
    // out out_c0_exit1137_48_tpl@8
    // out out_c0_exit1137_49_tpl@8
    // out out_c0_exit1137_50_tpl@8
    // out out_c0_exit1137_51_tpl@8
    // out out_c0_exit1137_52_tpl@8
    // out out_c0_exit1137_53_tpl@8
    // out out_c0_exit1137_54_tpl@8
    // out out_c0_exit1137_55_tpl@8
    // out out_c0_exit1137_56_tpl@8
    conv2d3x3_i_sfc_s_c0_in_for_body22_2_s_c0000er1038159_conv2d3x31 thei_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_backStall),
        .in_i_valid(SE_out_conv2d3x3_B13_merge_reg_aunroll_x_V0),
        .in_input_im(in_input_im),
        .in_input_size(in_input_size),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni461037_0_tpl(GND_q),
        .in_c0_eni461037_1_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_b),
        .in_c0_eni461037_2_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_v),
        .in_c0_eni461037_3_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_tt),
        .in_c0_eni461037_4_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_kk),
        .in_c0_eni461037_5_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_ll),
        .in_c0_eni461037_6_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_y),
        .in_c0_eni461037_7_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_uu),
        .in_c0_eni461037_8_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_z),
        .in_c0_eni461037_9_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_bb),
        .in_c0_eni461037_10_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_cc),
        .in_c0_eni461037_11_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_dd),
        .in_c0_eni461037_12_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_ee),
        .in_c0_eni461037_13_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_ff),
        .in_c0_eni461037_14_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_gg),
        .in_c0_eni461037_15_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_hh),
        .in_c0_eni461037_16_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_ii),
        .in_c0_eni461037_17_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_w),
        .in_c0_eni461037_18_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_x),
        .in_c0_eni461037_19_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_jj),
        .in_c0_eni461037_20_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_mm),
        .in_c0_eni461037_21_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_nn),
        .in_c0_eni461037_22_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_oo),
        .in_c0_eni461037_23_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_pp),
        .in_c0_eni461037_24_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_qq),
        .in_c0_eni461037_25_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_rr),
        .in_c0_eni461037_26_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_ss),
        .in_c0_eni461037_27_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_c),
        .in_c0_eni461037_28_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_d),
        .in_c0_eni461037_29_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_e),
        .in_c0_eni461037_30_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_f),
        .in_c0_eni461037_31_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_g),
        .in_c0_eni461037_32_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_h),
        .in_c0_eni461037_33_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_i),
        .in_c0_eni461037_34_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_j),
        .in_c0_eni461037_35_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_k),
        .in_c0_eni461037_36_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_l),
        .in_c0_eni461037_37_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_m),
        .in_c0_eni461037_38_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_n),
        .in_c0_eni461037_39_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_o),
        .in_c0_eni461037_40_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_p),
        .in_c0_eni461037_41_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_q),
        .in_c0_eni461037_42_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_r),
        .in_c0_eni461037_43_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_s),
        .in_c0_eni461037_44_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_t),
        .in_c0_eni461037_45_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_u),
        .in_c0_eni461037_46_tpl(bubble_select_conv2d3x3_B13_merge_reg_aunroll_x_aa),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d3x38_exiting_stall_out(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d3x38_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d3x38_exiting_valid_out(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d3x38_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit1137_0_tpl(),
        .out_c0_exit1137_1_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_1_tpl),
        .out_c0_exit1137_2_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_2_tpl),
        .out_c0_exit1137_3_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_3_tpl),
        .out_c0_exit1137_4_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_4_tpl),
        .out_c0_exit1137_5_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_5_tpl),
        .out_c0_exit1137_6_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_6_tpl),
        .out_c0_exit1137_7_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_7_tpl),
        .out_c0_exit1137_8_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_8_tpl),
        .out_c0_exit1137_9_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_9_tpl),
        .out_c0_exit1137_10_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_10_tpl),
        .out_c0_exit1137_11_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_11_tpl),
        .out_c0_exit1137_12_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_12_tpl),
        .out_c0_exit1137_13_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_13_tpl),
        .out_c0_exit1137_14_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_14_tpl),
        .out_c0_exit1137_15_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_15_tpl),
        .out_c0_exit1137_16_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_16_tpl),
        .out_c0_exit1137_17_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_17_tpl),
        .out_c0_exit1137_18_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_18_tpl),
        .out_c0_exit1137_19_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_19_tpl),
        .out_c0_exit1137_20_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_20_tpl),
        .out_c0_exit1137_21_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_21_tpl),
        .out_c0_exit1137_22_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_22_tpl),
        .out_c0_exit1137_23_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_23_tpl),
        .out_c0_exit1137_24_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_24_tpl),
        .out_c0_exit1137_25_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_25_tpl),
        .out_c0_exit1137_26_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_26_tpl),
        .out_c0_exit1137_27_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_27_tpl),
        .out_c0_exit1137_28_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_28_tpl),
        .out_c0_exit1137_29_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_29_tpl),
        .out_c0_exit1137_30_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_30_tpl),
        .out_c0_exit1137_31_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_31_tpl),
        .out_c0_exit1137_32_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_32_tpl),
        .out_c0_exit1137_33_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_33_tpl),
        .out_c0_exit1137_34_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_34_tpl),
        .out_c0_exit1137_35_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_35_tpl),
        .out_c0_exit1137_36_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_36_tpl),
        .out_c0_exit1137_37_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_37_tpl),
        .out_c0_exit1137_38_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_38_tpl),
        .out_c0_exit1137_39_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_39_tpl),
        .out_c0_exit1137_40_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_40_tpl),
        .out_c0_exit1137_41_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_41_tpl),
        .out_c0_exit1137_42_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_42_tpl),
        .out_c0_exit1137_43_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_43_tpl),
        .out_c0_exit1137_44_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_44_tpl),
        .out_c0_exit1137_45_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_45_tpl),
        .out_c0_exit1137_46_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_46_tpl),
        .out_c0_exit1137_47_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_47_tpl),
        .out_c0_exit1137_48_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_48_tpl),
        .out_c0_exit1137_49_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_49_tpl),
        .out_c0_exit1137_50_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_50_tpl),
        .out_c0_exit1137_51_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_51_tpl),
        .out_c0_exit1137_52_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_52_tpl),
        .out_c0_exit1137_53_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_53_tpl),
        .out_c0_exit1137_54_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_54_tpl),
        .out_c0_exit1137_55_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_55_tpl),
        .out_c0_exit1137_56_tpl(i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_c0_exit1137_56_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d3x38_exiting_valid_out = i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d3x38_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d3x38_exiting_stall_out = i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d3x38_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,20)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body22_2_conv2d3x3s_c0_enter1038159_conv2d3x31_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,27)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,31)
    assign out_lm20_conv2d3x3_avm_address = i_llvm_fpga_mem_lm20_conv2d3x33_out_lm20_conv2d3x3_avm_address;
    assign out_lm20_conv2d3x3_avm_enable = i_llvm_fpga_mem_lm20_conv2d3x33_out_lm20_conv2d3x3_avm_enable;
    assign out_lm20_conv2d3x3_avm_read = i_llvm_fpga_mem_lm20_conv2d3x33_out_lm20_conv2d3x3_avm_read;
    assign out_lm20_conv2d3x3_avm_write = i_llvm_fpga_mem_lm20_conv2d3x33_out_lm20_conv2d3x3_avm_write;
    assign out_lm20_conv2d3x3_avm_writedata = i_llvm_fpga_mem_lm20_conv2d3x33_out_lm20_conv2d3x3_avm_writedata;
    assign out_lm20_conv2d3x3_avm_byteenable = i_llvm_fpga_mem_lm20_conv2d3x33_out_lm20_conv2d3x3_avm_byteenable;
    assign out_lm20_conv2d3x3_avm_burstcount = i_llvm_fpga_mem_lm20_conv2d3x33_out_lm20_conv2d3x3_avm_burstcount;

    // bubble_join_i_sfc_s_c1_in_for_body22_2_conv2d3x3s_c1_enter1196_conv2d3x36_aunroll_x(BITJOIN,115)
    assign bubble_join_i_sfc_s_c1_in_for_body22_2_conv2d3x3s_c1_enter1196_conv2d3x36_aunroll_x_q = {i_sfc_s_c1_in_for_body22_2_conv2d3x3s_c1_enter1196_conv2d3x36_aunroll_x_out_c1_exit1204_2_tpl, i_sfc_s_c1_in_for_body22_2_conv2d3x3s_c1_enter1196_conv2d3x36_aunroll_x_out_c1_exit1204_1_tpl};

    // bubble_select_i_sfc_s_c1_in_for_body22_2_conv2d3x3s_c1_enter1196_conv2d3x36_aunroll_x(BITSELECT,116)
    assign bubble_select_i_sfc_s_c1_in_for_body22_2_conv2d3x3s_c1_enter1196_conv2d3x36_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_body22_2_conv2d3x3s_c1_enter1196_conv2d3x36_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c1_in_for_body22_2_conv2d3x3s_c1_enter1196_conv2d3x36_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c1_in_for_body22_2_conv2d3x3s_c1_enter1196_conv2d3x36_aunroll_x_q[63:32]);

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,122)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,123)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[1047:0]);

    // sel_for_coalesced_delay_1(BITSELECT,94)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[127:64]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[191:128]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[255:192]);
    assign sel_for_coalesced_delay_1_f = $unsigned(bubble_select_coalesced_delay_1_fifo_b[319:256]);
    assign sel_for_coalesced_delay_1_g = $unsigned(bubble_select_coalesced_delay_1_fifo_b[383:320]);
    assign sel_for_coalesced_delay_1_h = $unsigned(bubble_select_coalesced_delay_1_fifo_b[447:384]);
    assign sel_for_coalesced_delay_1_i = $unsigned(bubble_select_coalesced_delay_1_fifo_b[479:448]);
    assign sel_for_coalesced_delay_1_j = $unsigned(bubble_select_coalesced_delay_1_fifo_b[511:480]);
    assign sel_for_coalesced_delay_1_k = $unsigned(bubble_select_coalesced_delay_1_fifo_b[543:512]);
    assign sel_for_coalesced_delay_1_l = $unsigned(bubble_select_coalesced_delay_1_fifo_b[575:544]);
    assign sel_for_coalesced_delay_1_m = $unsigned(bubble_select_coalesced_delay_1_fifo_b[607:576]);
    assign sel_for_coalesced_delay_1_n = $unsigned(bubble_select_coalesced_delay_1_fifo_b[639:608]);
    assign sel_for_coalesced_delay_1_o = $unsigned(bubble_select_coalesced_delay_1_fifo_b[671:640]);
    assign sel_for_coalesced_delay_1_p = $unsigned(bubble_select_coalesced_delay_1_fifo_b[703:672]);
    assign sel_for_coalesced_delay_1_q = $unsigned(bubble_select_coalesced_delay_1_fifo_b[735:704]);
    assign sel_for_coalesced_delay_1_r = $unsigned(bubble_select_coalesced_delay_1_fifo_b[767:736]);
    assign sel_for_coalesced_delay_1_s = $unsigned(bubble_select_coalesced_delay_1_fifo_b[799:768]);
    assign sel_for_coalesced_delay_1_t = $unsigned(bubble_select_coalesced_delay_1_fifo_b[831:800]);
    assign sel_for_coalesced_delay_1_u = $unsigned(bubble_select_coalesced_delay_1_fifo_b[863:832]);
    assign sel_for_coalesced_delay_1_v = $unsigned(bubble_select_coalesced_delay_1_fifo_b[895:864]);
    assign sel_for_coalesced_delay_1_w = $unsigned(bubble_select_coalesced_delay_1_fifo_b[927:896]);
    assign sel_for_coalesced_delay_1_x = $unsigned(bubble_select_coalesced_delay_1_fifo_b[959:928]);
    assign sel_for_coalesced_delay_1_y = $unsigned(bubble_select_coalesced_delay_1_fifo_b[991:960]);
    assign sel_for_coalesced_delay_1_z = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1023:992]);
    assign sel_for_coalesced_delay_1_aa = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1024:1024]);
    assign sel_for_coalesced_delay_1_bb = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1025:1025]);
    assign sel_for_coalesced_delay_1_cc = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1026:1026]);
    assign sel_for_coalesced_delay_1_dd = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1027:1027]);
    assign sel_for_coalesced_delay_1_ee = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1028:1028]);
    assign sel_for_coalesced_delay_1_ff = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1029:1029]);
    assign sel_for_coalesced_delay_1_gg = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1030:1030]);
    assign sel_for_coalesced_delay_1_hh = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1031:1031]);
    assign sel_for_coalesced_delay_1_ii = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1032:1032]);
    assign sel_for_coalesced_delay_1_jj = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1033:1033]);
    assign sel_for_coalesced_delay_1_kk = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1034:1034]);
    assign sel_for_coalesced_delay_1_ll = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1035:1035]);
    assign sel_for_coalesced_delay_1_mm = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1036:1036]);
    assign sel_for_coalesced_delay_1_nn = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1037:1037]);
    assign sel_for_coalesced_delay_1_oo = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1038:1038]);
    assign sel_for_coalesced_delay_1_pp = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1039:1039]);
    assign sel_for_coalesced_delay_1_qq = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1040:1040]);
    assign sel_for_coalesced_delay_1_rr = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1041:1041]);
    assign sel_for_coalesced_delay_1_ss = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1042:1042]);
    assign sel_for_coalesced_delay_1_tt = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1043:1043]);
    assign sel_for_coalesced_delay_1_uu = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1044:1044]);
    assign sel_for_coalesced_delay_1_vv = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1045:1045]);
    assign sel_for_coalesced_delay_1_ww = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1046:1046]);
    assign sel_for_coalesced_delay_1_xx = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1047:1047]);

    // dupName_0_sync_out_x(GPOUT,32)@257
    assign out_c0_exe101147 = sel_for_coalesced_delay_1_vv;
    assign out_c0_exe111148 = sel_for_coalesced_delay_1_d;
    assign out_c0_exe121149 = sel_for_coalesced_delay_1_e;
    assign out_c0_exe131150 = sel_for_coalesced_delay_1_y;
    assign out_c0_exe141151 = sel_for_coalesced_delay_1_x;
    assign out_c0_exe151152 = sel_for_coalesced_delay_1_uu;
    assign out_c0_exe161153 = sel_for_coalesced_delay_1_tt;
    assign out_c0_exe171154 = sel_for_coalesced_delay_1_w;
    assign out_c0_exe181155 = sel_for_coalesced_delay_1_v;
    assign out_c0_exe191156 = sel_for_coalesced_delay_1_u;
    assign out_c0_exe201157 = sel_for_coalesced_delay_1_ss;
    assign out_c0_exe211158 = sel_for_coalesced_delay_1_rr;
    assign out_c0_exe221159 = sel_for_coalesced_delay_1_t;
    assign out_c0_exe231160 = sel_for_coalesced_delay_1_qq;
    assign out_c0_exe241161 = sel_for_coalesced_delay_1_pp;
    assign out_c0_exe251162 = sel_for_coalesced_delay_1_i;
    assign out_c0_exe261163 = sel_for_coalesced_delay_1_oo;
    assign out_c0_exe271164 = sel_for_coalesced_delay_1_nn;
    assign out_c0_exe281165 = sel_for_coalesced_delay_1_l;
    assign out_c0_exe291166 = sel_for_coalesced_delay_1_m;
    assign out_c0_exe301167 = sel_for_coalesced_delay_1_bb;
    assign out_c0_exe311168 = sel_for_coalesced_delay_1_ll;
    assign out_c0_exe31140 = sel_for_coalesced_delay_1_mm;
    assign out_c0_exe321169 = sel_for_coalesced_delay_1_n;
    assign out_c0_exe331170 = sel_for_coalesced_delay_1_o;
    assign out_c0_exe341171 = sel_for_coalesced_delay_1_p;
    assign out_c0_exe351172 = sel_for_coalesced_delay_1_kk;
    assign out_c0_exe371174 = sel_for_coalesced_delay_1_g;
    assign out_c0_exe381175 = sel_for_coalesced_delay_1_f;
    assign out_c0_exe391176 = sel_for_coalesced_delay_1_r;
    assign out_c0_exe401177 = sel_for_coalesced_delay_1_jj;
    assign out_c0_exe411178 = sel_for_coalesced_delay_1_s;
    assign out_c0_exe41141 = sel_for_coalesced_delay_1_xx;
    assign out_c0_exe421179 = sel_for_coalesced_delay_1_q;
    assign out_c0_exe431180 = sel_for_coalesced_delay_1_gg;
    assign out_c0_exe441181 = sel_for_coalesced_delay_1_ff;
    assign out_c0_exe451182 = sel_for_coalesced_delay_1_k;
    assign out_c0_exe461183 = sel_for_coalesced_delay_1_cc;
    assign out_c0_exe471184 = sel_for_coalesced_delay_1_aa;
    assign out_c0_exe481185 = sel_for_coalesced_delay_1_j;
    assign out_c0_exe491186 = sel_for_coalesced_delay_1_dd;
    assign out_c0_exe501187 = sel_for_coalesced_delay_1_ee;
    assign out_c0_exe511188 = sel_for_coalesced_delay_1_hh;
    assign out_c0_exe521189 = sel_for_coalesced_delay_1_h;
    assign out_c0_exe53 = sel_for_coalesced_delay_1_c;
    assign out_c0_exe54 = sel_for_coalesced_delay_1_z;
    assign out_c0_exe55 = sel_for_coalesced_delay_1_ii;
    assign out_c0_exe61143 = sel_for_coalesced_delay_1_ww;
    assign out_c0_exe81145 = sel_for_coalesced_delay_1_b;
    assign out_c1_exe11205 = bubble_select_i_sfc_s_c1_in_for_body22_2_conv2d3x3s_c1_enter1196_conv2d3x36_aunroll_x_b;
    assign out_c1_exe2 = bubble_select_i_sfc_s_c1_in_for_body22_2_conv2d3x3s_c1_enter1196_conv2d3x36_aunroll_x_c;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,33)
    assign out_lm22_conv2d3x3_avm_address = i_llvm_fpga_mem_lm22_conv2d3x34_out_lm22_conv2d3x3_avm_address;
    assign out_lm22_conv2d3x3_avm_enable = i_llvm_fpga_mem_lm22_conv2d3x34_out_lm22_conv2d3x3_avm_enable;
    assign out_lm22_conv2d3x3_avm_read = i_llvm_fpga_mem_lm22_conv2d3x34_out_lm22_conv2d3x3_avm_read;
    assign out_lm22_conv2d3x3_avm_write = i_llvm_fpga_mem_lm22_conv2d3x34_out_lm22_conv2d3x3_avm_write;
    assign out_lm22_conv2d3x3_avm_writedata = i_llvm_fpga_mem_lm22_conv2d3x34_out_lm22_conv2d3x3_avm_writedata;
    assign out_lm22_conv2d3x3_avm_byteenable = i_llvm_fpga_mem_lm22_conv2d3x34_out_lm22_conv2d3x3_avm_byteenable;
    assign out_lm22_conv2d3x3_avm_burstcount = i_llvm_fpga_mem_lm22_conv2d3x34_out_lm22_conv2d3x3_avm_burstcount;

endmodule
